@interface CARBluetoothPairingPrompt
- (CARBluetoothPairingPrompt)initWithPairingStyle:(unint64_t)a3 deviceName:(id)a4 passKey:(id)a5;
- (UIAlertController)presentedAlertController;
- (id)_alertController;
- (void)dealloc;
- (void)presentFromViewController:(id)a3;
@end

@implementation CARBluetoothPairingPrompt

- (CARBluetoothPairingPrompt)initWithPairingStyle:(unint64_t)a3 deviceName:(id)a4 passKey:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = CARBluetoothPairingPrompt;
  v10 = [(CARBluetoothPairingPrompt *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(CARBluetoothPairingPrompt *)v10 setPairingStyle:a3];
    [(CARBluetoothPairingPrompt *)v11 setDeviceName:v8];
    [(CARBluetoothPairingPrompt *)v11 setPassKey:v9];
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

  v7 = [(CARBluetoothPairingPrompt *)self deviceName];
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
    v13 = [v12 localizedModel];
    v14 = [(CARBluetoothPairingPrompt *)self passKey];
    v9 = [NSString stringWithFormat:v11, v7, v13, v14, v7];

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

- (void)presentFromViewController:(id)a3
{
  v4 = a3;
  v5 = [(CARBluetoothPairingPrompt *)self _alertController];
  [v4 presentViewController:v5 animated:1 completion:0];

  [(CARBluetoothPairingPrompt *)self setPresentedAlertController:v5];
}

- (UIAlertController)presentedAlertController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedAlertController);

  return WeakRetained;
}

@end