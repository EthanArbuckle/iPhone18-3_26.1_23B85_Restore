@interface CARBluetoothPairingFailedPrompt
+ (void)presentPairingFailure:(unint64_t)failure forDeviceName:(id)name fromViewController:(id)controller completion:(id)completion;
@end

@implementation CARBluetoothPairingFailedPrompt

+ (void)presentPairingFailure:(unint64_t)failure forDeviceName:(id)name fromViewController:(id)controller completion:(id)completion
{
  nameCopy = name;
  controllerCopy = controller;
  completionCopy = completion;
  v22 = nameCopy;
  if (failure == 1)
  {
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    nameCopy = [v12 localizedStringForKey:@"PAIRING_FAILED_MESSAGE_TIMEOUT" value:&stru_6FD90 table:@"Alerts"];
  }

  else
  {
    if (failure)
    {
      nameCopy = 0;
      goto LABEL_7;
    }

    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"PAIRING_FAILED_MESSAGE_GENERIC" value:&stru_6FD90 table:@"Alerts"];
    nameCopy = [NSString stringWithFormat:v13, nameCopy];
  }

LABEL_7:
  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"PAIRING_FAILED_TITLE" value:&stru_6FD90 table:@"Alerts"];
  v17 = [UIAlertController alertControllerWithTitle:v16 message:nameCopy preferredStyle:1];

  v18 = [NSBundle bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"PAIRING_FAILED_OK" value:&stru_6FD90 table:@"Alerts"];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_103A4;
  v23[3] = &unk_6E7F8;
  v24 = completionCopy;
  v20 = completionCopy;
  v21 = [UIAlertAction actionWithTitle:v19 style:0 handler:v23];
  [v17 addAction:v21];

  [controllerCopy presentViewController:v17 animated:1 completion:0];
}

@end