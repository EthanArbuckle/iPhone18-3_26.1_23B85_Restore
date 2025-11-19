@interface EnvironmentsCreationAlertController
+ (id)alertControllerWithTitle:(id)a3 message:(id)a4 confirmActionTitle:(id)a5 placeholderText:(id)a6 nameSelectionHandler:(id)a7;
- (void)_textFieldValueDidChange:(id)a3;
@end

@implementation EnvironmentsCreationAlertController

+ (id)alertControllerWithTitle:(id)a3 message:(id)a4 confirmActionTitle:(id)a5 placeholderText:(id)a6 nameSelectionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [a1 alertControllerWithTitle:v12 message:v13 preferredStyle:1];
  objc_initWeak(&location, v17);
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = sub_1009FA22C;
  v32[4] = sub_1009FA23C;
  v33 = 0;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1009FA244;
  v28[3] = &unk_101631A30;
  objc_copyWeak(&v31, &location);
  v18 = v15;
  v29 = v18;
  v30 = v32;
  [v17 addTextFieldWithConfigurationHandler:v28];
  v19 = [UIAlertAction actionWithTitle:@"Cancel" style:1 handler:0];
  [v17 addAction:v19];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1009FA2EC;
  v24[3] = &unk_101631A58;
  objc_copyWeak(&v27, &location);
  v20 = v16;
  v25 = v20;
  v26 = v32;
  v21 = [UIAlertAction actionWithTitle:v14 style:0 handler:v24];
  v22 = v17[1];
  v17[1] = v21;

  [v17[1] setEnabled:0];
  [v17 addAction:v17[1]];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&v31);
  _Block_object_dispose(v32, 8);

  objc_destroyWeak(&location);

  return v17;
}

- (void)_textFieldValueDidChange:(id)a3
{
  v4 = [a3 text];
  -[UIAlertAction setEnabled:](self->_createAction, "setEnabled:", [v4 length] != 0);
}

@end