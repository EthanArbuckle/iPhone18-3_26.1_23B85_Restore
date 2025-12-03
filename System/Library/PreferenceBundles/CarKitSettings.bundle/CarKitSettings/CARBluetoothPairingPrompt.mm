@interface CARBluetoothPairingPrompt
- (CARBluetoothPairingPrompt)initWithPairingStyle:(unint64_t)style deviceName:(id)name passKey:(id)key;
- (UIAlertController)presentedAlertController;
- (id)_alertController;
- (void)dealloc;
- (void)presentFromViewController:(id)controller;
@end

@implementation CARBluetoothPairingPrompt

- (CARBluetoothPairingPrompt)initWithPairingStyle:(unint64_t)style deviceName:(id)name passKey:(id)key
{
  nameCopy = name;
  keyCopy = key;
  v13.receiver = self;
  v13.super_class = CARBluetoothPairingPrompt;
  v10 = [(CARBluetoothPairingPrompt *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(CARBluetoothPairingPrompt *)v10 setPairingStyle:style];
    [(CARBluetoothPairingPrompt *)v11 setDeviceName:nameCopy];
    [(CARBluetoothPairingPrompt *)v11 setPassKey:keyCopy];
  }

  return v11;
}

- (void)dealloc
{
  [(CARBluetoothPairingPrompt *)self setConfirmationCompletion:0];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CARBluetoothPairingPrompt;
  [(CARBluetoothPairingPrompt *)&v4 dealloc];
}

- (id)_alertController
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PAIRING_TITLE" value:&stru_6FD90 table:@"Alerts"];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"CANCEL_BUTTON" value:&stru_6FD90 table:@"Alerts"];

  deviceName = [(CARBluetoothPairingPrompt *)self deviceName];
  if ([(CARBluetoothPairingPrompt *)self pairingStyle])
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"NUMERIC_MESSAGE" value:&stru_6FD90 table:@"Alerts"];
    v12 = +[UIDevice currentDevice];
    localizedModel = [v12 localizedModel];
    passKey = [(CARBluetoothPairingPrompt *)self passKey];
    v9 = [NSString stringWithFormat:v11, deviceName, localizedModel, passKey, deviceName];

    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v15 localizedStringForKey:@"PAIR_BUTTON" value:&stru_6FD90 table:@"Alerts"];
  }

  v16 = [UIAlertController alertControllerWithTitle:v4 message:v9 preferredStyle:1];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_FF38;
  v21[3] = &unk_6E7D0;
  v21[4] = self;
  v17 = [UIAlertAction actionWithTitle:v6 style:1 handler:v21];
  [v16 addAction:v17];

  if (v8)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_FF44;
    v20[3] = &unk_6E7D0;
    v20[4] = self;
    v18 = [UIAlertAction actionWithTitle:v8 style:0 handler:v20];
    [v16 addAction:v18];
  }

  return v16;
}

- (void)presentFromViewController:(id)controller
{
  controllerCopy = controller;
  _alertController = [(CARBluetoothPairingPrompt *)self _alertController];
  [controllerCopy presentViewController:_alertController animated:1 completion:0];

  [(CARBluetoothPairingPrompt *)self setPresentedAlertController:_alertController];
}

- (UIAlertController)presentedAlertController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedAlertController);

  return WeakRetained;
}

@end