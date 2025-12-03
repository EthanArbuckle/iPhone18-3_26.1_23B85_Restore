@interface GeoRequestResponseLogBundleIdAlertController
+ (id)alertControllerWithBundleId:(id)id completionHandler:(id)handler;
- (void)_textFieldValueDidChange:(id)change;
@end

@implementation GeoRequestResponseLogBundleIdAlertController

- (void)_textFieldValueDidChange:(id)change
{
  text = [change text];
  -[UIAlertAction setEnabled:](self->_action, "setEnabled:", [text length] != 0);
}

+ (id)alertControllerWithBundleId:(id)id completionHandler:(id)handler
{
  idCopy = id;
  handlerCopy = handler;
  v8 = [self alertControllerWithTitle:@"Edit" message:0 preferredStyle:1];
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
  v9 = idCopy;
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
  v11 = handlerCopy;
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