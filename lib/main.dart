import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:simple_form_builder/formbuilder.dart';
import 'package:simple_form_builder/global/checklistModel.dart';
import 'package:simple_form_builder/global/constant.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FormBuilder Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Víctor de Moliní'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              FormBuilder(
                initialData: sampleData,
                title: "Víctor de Moliní",
                titleStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                description: "description",
                widgetCrossAxisAlignment: CrossAxisAlignment.center,
                index: 0,
                showIndex: false,
                descriptionTextDecoration: TextStyle(color: Colors.grey),
                submitButtonWidth: 1,
                submitButtonDecoration: BoxDecoration(
                  color: Colors.blue,
                ),
                showIcon: false,
                onSubmit: (ChecklistModel val) {
                  if (val == null) {
                    print("no data");
                  } else {
                    var json = jsonEncode(val.toJson());
                    print(json);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}