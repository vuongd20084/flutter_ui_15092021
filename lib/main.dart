import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter UI",
        theme: ThemeData(primarySwatch: Colors.blue),
        debugShowCheckedModeBanner: false,
        home: MyAppContainer2());
  }
}

class MyAppContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "My app page",
            style: TextStyle(fontSize: 20),
          ),
        ),
        body: SafeArea(
          child: Container(
            constraints: BoxConstraints.expand(),
            color: Colors.teal,
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                          child: Container(
                        color: Colors.yellow,
                        alignment: Alignment.center,
                        child: Text('A'),
                      )),
                      Expanded(
                          child: Container(
                        color: Colors.red,
                        alignment: Alignment.center,
                        child: Text('B'),
                      )),
                      Expanded(
                          child: Container(
                        color: Colors.yellowAccent,
                        alignment: Alignment.center,
                        child: Text('C'),
                      )),
                      Expanded(
                          child: Container(
                        color: Colors.greenAccent,
                        alignment: Alignment.center,
                        child: Text('D'),
                      )),
                    ],
                  ),
                )),
                Expanded(
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(child: Container(color: Colors.white, alignment: Alignment.center, child: Text("A"),)),
                          Expanded(child: Container(color: Colors.lightGreenAccent, alignment: Alignment.center, child: Text("B"),)),
                          Expanded(child: Container(color: Colors.yellowAccent, alignment: Alignment.center, child: Text("C"),)),
                          Expanded(child: Container(color: Colors.brown, alignment: Alignment.center, child: Text("D"),)),
                        ],
                    ),
                )),
              ],
            ),
          ),
        ));
  }
}

class MyAppContainer2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My app page", style: TextStyle(fontSize: 20)),
      ),
      body: SafeArea(
        child: Container(
          constraints: BoxConstraints.expand(),
          child: Column(
            children: [
              Expanded(child: Container(
                  color: Colors.green,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(flex: 1,child: Container(color: Colors.lightGreenAccent, child: Text("1"), alignment: Alignment.center,)),
                      Expanded(flex: 3 ,child: Column(
                        children: [
                          Expanded(child: Container(color: Colors.red, child: Text("3"), alignment: Alignment.center)),
                          Expanded(child: Container(color: Colors.redAccent, child: Text("4"), alignment: Alignment.center)),
                        ],
                      ))
                    ],
                  ),
              )),
              Expanded(child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(flex: 1,child: Container(color: Colors.limeAccent, child: Text("2"), alignment: Alignment.center,)),
                    Expanded(flex: 2,child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(child: Container(color: Colors.blue, child: Text("5"), alignment: Alignment.center,)),
                        Expanded(child: Container(color: Colors.deepPurple, child: Text("6"), alignment: Alignment.center,)),
                      ],
                    )),
                    Expanded(flex: 1,child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(child: Container(color: Colors.purple, child: Text("7"), alignment: Alignment.center,)),
                        Expanded(child: Container(color: Colors.orange, child: Text("8"), alignment: Alignment.center,)),
                        Expanded(child: Container(color: Colors.grey, child: Text("9"), alignment: Alignment.center,)),
                      ],
                    ))
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }

}
