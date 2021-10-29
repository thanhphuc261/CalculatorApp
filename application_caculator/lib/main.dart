import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  dynamic displaytxt = 20;

  Widget calcbutton(String btntxt, Color btncolor, Color txtcolor) {
    return Container(
      child: SizedBox(
        width: 90,
        height: 90,
        child: ElevatedButton(
          onPressed: () {
            calculation(btntxt);
          },
          child: Text(
            '$btntxt',
            style: TextStyle(
              fontSize: 35,
              color: txtcolor,
            ),
          ),
          style: ElevatedButton.styleFrom(primary: btncolor),
        ),
      ),
    );
  }

  Widget calcbutton2(String btntxt, Color btncolor, Color txtcolor) {
    return Container(
      child: SizedBox(
        width: 210,
        height: 90,
        child: ElevatedButton(
          onPressed: () {
            calculation(btntxt);
          },
          child: Text(
            '$btntxt',
            style: TextStyle(
              fontSize: 35,
              color: txtcolor,
            ),
          ),
          style: ElevatedButton.styleFrom(primary: btncolor),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: Text(
          'Calculator',
        ),
        backgroundColor: Colors.grey.shade900,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Text(
                      '$text',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 100,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calcbutton('AC', Colors.grey.shade400, Colors.black),
                calcbutton('+/-', Colors.grey.shade400, Colors.black),
                calcbutton('%', Colors.grey.shade400, Colors.black),
                calcbutton('/', Colors.amber.shade800, Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calcbutton('7', Colors.grey.shade300, Colors.black),
                calcbutton('8', Colors.grey.shade300, Colors.black),
                calcbutton('9', Colors.grey.shade300, Colors.black),
                calcbutton('x', Colors.amber.shade800, Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calcbutton('4', Colors.grey.shade300, Colors.black),
                calcbutton('5', Colors.grey.shade300, Colors.black),
                calcbutton('6', Colors.grey.shade300, Colors.black),
                calcbutton('-', Colors.amber.shade800, Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calcbutton('1', Colors.grey.shade300, Colors.black),
                calcbutton('2', Colors.grey.shade300, Colors.black),
                calcbutton('3', Colors.grey.shade300, Colors.black),
                calcbutton('+', Colors.amber.shade800, Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calcbutton2('0', Colors.grey.shade300, Colors.black),
                calcbutton('.', Colors.grey.shade300, Colors.black),
                calcbutton('=', Colors.amber.shade800, Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
