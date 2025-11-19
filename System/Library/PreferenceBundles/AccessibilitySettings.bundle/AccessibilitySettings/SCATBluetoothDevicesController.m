@interface SCATBluetoothDevicesController
- (BOOL)shouldAddClassicDevice:(id)a3;
- (SCATBluetoothDevicesController)init;
- (id)allowedServices;
- (void)powerAlertCancelled;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation SCATBluetoothDevicesController

- (SCATBluetoothDevicesController)init
{
  v5.receiver = self;
  v5.super_class = SCATBluetoothDevicesController;
  v2 = [(AXBluetoothDevicesController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AXBluetoothDevicesController *)v2 setAuthorizedServices:32];
  }

  return v3;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SCATBluetoothDevicesController;
  [(AXBluetoothDevicesController *)&v4 viewDidAppear:a3];
  [(AXBluetoothDevicesController *)self setScanningEnabled:1];
  [(AXBluetoothDevicesController *)self showBluetoothPowerAlert:1];
}

- (void)powerAlertCancelled
{
  v3 = [(SCATBluetoothDevicesController *)self rootController];
  v2 = [v3 popViewControllerAnimated:1];
}

- (id)allowedServices
{
  v2 = [CBUUID UUIDWithString:CBUUIDHumanInterfaceDeviceServiceString];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (BOOL)shouldAddClassicDevice:(id)a3
{
  v3 = a3;
  if ([v3 isAppleHIDDevice])
  {
    v4 = +[AXSettings sharedInstance];
    v5 = [v4 assistiveTouchMouseAllowAppleBluetoothDevicesPairing];

    if ((v5 & 1) == 0)
    {
      v6 = SWCHLogHW();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v3;
LABEL_11:
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Not allowing device: %@", &v12, 0xCu);
      }

LABEL_12:
      v7 = 0;
      goto LABEL_13;
    }
  }

  if ([v3 type] != 25 && objc_msgSend(v3, "type") != 24)
  {
    if ([v3 type] != 29 || (+[AXSettings sharedInstance](AXSettings, "sharedInstance"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "assistiveTouchMouseAllowAppleBluetoothDevicesPairing"), v9, !v10))
    {
      v11 = [v3 type];
      if (v11 == 26 || v11 == 4)
      {
        v6 = SWCHLogHW();
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_8;
        }

        v12 = 138412290;
        v13 = v3;
        goto LABEL_7;
      }

      v6 = SWCHLogHW();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v3;
        goto LABEL_11;
      }

      goto LABEL_12;
    }
  }

  v6 = SWCHLogHW();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v3;
LABEL_7:
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Allowing device: %@", &v12, 0xCu);
  }

LABEL_8:
  v7 = 1;
LABEL_13:

  return v7;
}

@end