import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListCar extends StatelessWidget {
  final carpic;
  final cartext;
  final cartext1;
  final cartext2;
  final double sizedbox;

  const ListCar(
      {super.key,
      required this.carpic,
      required this.cartext,
      required this.cartext1,
      required this.cartext2,
      this.sizedbox = 0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(13)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(child: Text(cartext,style: TextStyle(color: Colors.white),)),
                  ),
                  Icon(Icons.favorite_border_outlined)
                ],
              ),
              Image(
                  image: NetworkImage(
                carpic,
              )),
              SizedBox(
                height: sizedbox,
              ),
              Text(cartext1,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              Text(cartext2,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ),
    );
  }
}
