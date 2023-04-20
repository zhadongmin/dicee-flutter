import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dicee',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DiceeApp(),
    );
  }
}

class DiceeApp extends StatefulWidget {
  const DiceeApp({Key? key}) : super(key: key);

  @override
  State<DiceeApp> createState() => _DiceeAppState();
}

class _DiceeAppState extends State<DiceeApp> {
  var leftDiceeNum = 2;
  var rightDiceeNum = 1;
  final nums = [1, 2, 3, 4, 5, 6];
  void onPressed() {
    setState(() {
      leftDiceeNum = Random().nextInt(6) + 1;
      rightDiceeNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Dicee'),
      ),
      body: Center(
        // color: Colors.grey,
        child: Row(
          children: [
            Expanded(
              child: CupertinoButton(
                onPressed: () {
                  onPressed();
                },
                child: Image(
                  // color: Colors.teal,
                  image: AssetImage('images/dice$leftDiceeNum.png'),
                ),
              ),
            ),
            Expanded(
              child: CupertinoButton(
                onPressed: () {
                  onPressed();
                },
                child: Image(
                  // color: Colors.teal,
                  image: AssetImage('images/dice$rightDiceeNum.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
