import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  Future _exitDialog(context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Are You Sure Want to Exit'),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade100,
                    ),
                    onPressed: () => SystemNavigator.pop(),
                    child: Text(
                      'Yes',
                      style: TextStyle(color: Colors.red),
                    )),
                SizedBox(
                  width: 20,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade100,
                    ),
                    onPressed: () => Get.back(),
                    child: Text(
                      'No',
                      style: TextStyle(color: Colors.blue),
                    )),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        _exitDialog(context);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Exit Dialog'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple[100],
        ),
        body: Center(),
      ),
    );
  }
}
