@interface GeoRequestResponseLogBundleIdAlertController
+ (id)alertControllerWithBundleId:(id)a3 completionHandler:(id)a4;
- (void)_textFieldValueDidChange:(id)a3;
@end

@implementation GeoRequestResponseLogBundleIdAlertController

- (void)_textFieldValueDidChange:(id)a3
{
  v4 = [a3 text];
  -[UIAlertAction setEnabled:](self->_action, "setEnabled:", [v4 length] != 0);
}

+ (id)alertControllerWithBundleId:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 alertControllerWithTitle:@"Edit" message:0 preferredStyle:1];
  objc_initWeak(&location, v8);
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = sub_1005C606C;
  v23[4] = sub_1005C607C;
  v24 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1005C6084;
  v19[3] = &unk_101631A30;
  objc_copyWeak(&v22, &location);
  v9 = v6;
  v20 = v9;
  v21 = v23;
  [v8 addTextFieldWithConfigurationHandler:v19];
  v10 = [UIAlertAction actionWithTitle:@"Cancel" style:1 handler:0];
  [v8 addAction:v10];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1005C612C;
  v15[3] = &unk_101631A58;
  objc_copyWeak(&v18, &location);
  v11 = v7;
  v16 = v11;
  v17 = v23;
  v12 = [UIAlertAction actionWithTitle:@"Save" style:0 handler:v15];
  v13 = v8[1];
  v8[1] = v12;

  [v8[1] setEnabled:0];
  [v8 addAction:v8[1]];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v22);
  _Block_object_dispose(v23, 8);

  objc_destroyWeak(&location);

  return v8;
}

@end