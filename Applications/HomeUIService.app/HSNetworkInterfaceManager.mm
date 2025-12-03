@interface HSNetworkInterfaceManager
- (HSNetworkInterfaceManager)initWithAlertHostViewController:(id)controller;
- (UIViewController)alertHostViewController;
- (id)_alertBaseLocalizationKeyForRequestBluetooth:(BOOL)bluetooth Wifi:(BOOL)wifi;
- (unint64_t)_wiFiInterfaceStatus;
- (void)_setBluetoothPowerState:(BOOL)state;
- (void)_updateAlertForBluetooth:(BOOL)bluetooth Wifi:(BOOL)wifi;
- (void)_updateBluetoothInterfaceStatusWithCompletion:(id)completion;
- (void)dealloc;
@end

@implementation HSNetworkInterfaceManager

- (HSNetworkInterfaceManager)initWithAlertHostViewController:(id)controller
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = HSNetworkInterfaceManager;
  v5 = [(HSNetworkInterfaceManager *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_bluetoothInterfaceStatus = 0;
    v7 = objc_alloc_init(CBController);
    bluetoothController = v6->_bluetoothController;
    v6->_bluetoothController = v7;

    v9 = objc_alloc_init(CWFInterface);
    wifiInterface = v6->_wifiInterface;
    v6->_wifiInterface = v9;

    objc_storeWeak(&v6->_alertHostViewController, controllerCopy);
  }

  return v6;
}

- (void)dealloc
{
  [(CWFInterface *)self->_wifiInterface invalidate];
  v3.receiver = self;
  v3.super_class = HSNetworkInterfaceManager;
  [(HSNetworkInterfaceManager *)&v3 dealloc];
}

- (void)_updateBluetoothInterfaceStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  bluetoothController = [(HSNetworkInterfaceManager *)self bluetoothController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100049660;
  v7[3] = &unk_1000C7708;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [bluetoothController getPowerStateWithCompletion:v7];
}

- (void)_setBluetoothPowerState:(BOOL)state
{
  stateCopy = state;
  bluetoothController = [(HSNetworkInterfaceManager *)self bluetoothController];
  v6 = bluetoothController;
  if (stateCopy)
  {
    v5 = 5;
  }

  else
  {
    v5 = 4;
  }

  [bluetoothController setPowerState:v5 completion:&stru_1000C7748];
}

- (unint64_t)_wiFiInterfaceStatus
{
  wifiInterface = [(HSNetworkInterfaceManager *)self wifiInterface];
  if ([wifiInterface powerOn])
  {
    wifiInterface2 = [(HSNetworkInterfaceManager *)self wifiInterface];
    if ([wifiInterface2 userAutoJoinDisabled])
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)_updateAlertForBluetooth:(BOOL)bluetooth Wifi:(BOOL)wifi
{
  wifiCopy = wifi;
  bluetoothCopy = bluetooth;
  v7 = [(HSNetworkInterfaceManager *)self bluetoothInterfaceStatus]== 1 && bluetoothCopy;
  v8 = [(HSNetworkInterfaceManager *)self _wiFiInterfaceStatus]== 1 && wifiCopy;
  v9 = [(HSNetworkInterfaceManager *)self _alertLocalizedTitleForRequestBluetooth:v7 Wifi:v8];
  v10 = [(HSNetworkInterfaceManager *)self _alertLocalizedDescriptionForRequestBluetooth:v7 Wifi:v8];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100049D28;
  v34[3] = &unk_1000C5E98;
  v11 = v9;
  v35 = v11;
  selfCopy = self;
  v12 = v10;
  v37 = v12;
  v13 = objc_retainBlock(v34);
  enableBluetoothAndWiFiAlertController = [(HSNetworkInterfaceManager *)self enableBluetoothAndWiFiAlertController];
  if (enableBluetoothAndWiFiAlertController)
  {
    v15 = enableBluetoothAndWiFiAlertController;
    alertHostViewController = [(HSNetworkInterfaceManager *)self alertHostViewController];
    presentedViewController = [alertHostViewController presentedViewController];
    enableBluetoothAndWiFiAlertController2 = [(HSNetworkInterfaceManager *)self enableBluetoothAndWiFiAlertController];

    if (presentedViewController == enableBluetoothAndWiFiAlertController2)
    {
      if (v7 || v8)
      {
        (v13[2])(v13);
        if (!v11 || !v12)
        {
          goto LABEL_21;
        }

        enableBluetoothAndWiFiAlertController3 = [(HSNetworkInterfaceManager *)self enableBluetoothAndWiFiAlertController];
        [enableBluetoothAndWiFiAlertController3 setTitle:v11];

        enableBluetoothAndWiFiAlertController4 = [(HSNetworkInterfaceManager *)self enableBluetoothAndWiFiAlertController];
        [enableBluetoothAndWiFiAlertController4 setMessage:v12];
      }

      else
      {
        enableBluetoothAndWiFiAlertController4 = [(HSNetworkInterfaceManager *)self alertHostViewController];
        [enableBluetoothAndWiFiAlertController4 dismissViewControllerAnimated:1 completion:0];
      }

      goto LABEL_21;
    }
  }

  enableBluetoothAndWiFiAlertController5 = [(HSNetworkInterfaceManager *)self enableBluetoothAndWiFiAlertController];
  if (enableBluetoothAndWiFiAlertController5)
  {
  }

  else if (v7 || v8)
  {
    (v13[2])(v13);
    if (v11)
    {
      if (v12)
      {
        v20 = [UIAlertController alertControllerWithTitle:v11 message:v12 preferredStyle:1];
        [(HSNetworkInterfaceManager *)self setEnableBluetoothAndWiFiAlertController:v20];

        enableBluetoothAndWiFiAlertController6 = [(HSNetworkInterfaceManager *)self enableBluetoothAndWiFiAlertController];
        v22 = sub_100063A44(@"HSBluetoothAndWiFiAlertDontTurnOnAction");
        v23 = [UIAlertAction actionWithTitle:v22 style:1 handler:&stru_1000C7768];
        [enableBluetoothAndWiFiAlertController6 addAction:v23];

        objc_initWeak(&location, self);
        enableBluetoothAndWiFiAlertController7 = [(HSNetworkInterfaceManager *)self enableBluetoothAndWiFiAlertController];
        v25 = sub_100063A44(@"HSBluetoothAndWiFiAlertTurnOnAction");
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_100049DAC;
        v31[3] = &unk_1000C7790;
        objc_copyWeak(&v32, &location);
        v26 = [UIAlertAction actionWithTitle:v25 style:0 handler:v31];
        [enableBluetoothAndWiFiAlertController7 addAction:v26];

        alertHostViewController2 = [(HSNetworkInterfaceManager *)self alertHostViewController];
        enableBluetoothAndWiFiAlertController8 = [(HSNetworkInterfaceManager *)self enableBluetoothAndWiFiAlertController];
        [alertHostViewController2 presentViewController:enableBluetoothAndWiFiAlertController8 animated:1 completion:0];

        objc_destroyWeak(&v32);
        objc_destroyWeak(&location);
      }
    }
  }

LABEL_21:
}

- (id)_alertBaseLocalizationKeyForRequestBluetooth:(BOOL)bluetooth Wifi:(BOOL)wifi
{
  wifiCopy = wifi;
  bluetoothCopy = bluetooth;
  v6 = +[HFUtilities useWLANInsteadOfWiFi];
  if (bluetoothCopy && wifiCopy)
  {
    v7 = @"HSBluetoothAndWiFiAlertTurnOnWiFiAndBluetooth";
    v8 = @"HSBluetoothAndWiFiAlertTurnOnWLANAndBluetooth";
  }

  else
  {
    if (!wifiCopy)
    {
      if (bluetoothCopy)
      {
        v9 = @"HSBluetoothAndWiFiAlertTurnOnBluetooth";
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_12;
    }

    v7 = @"HSBluetoothAndWiFiAlertTurnOnWiFi";
    v8 = @"HSBluetoothAndWiFiAlertTurnOnWLAN";
  }

  if (v6)
  {
    v7 = v8;
  }

  v9 = v7;
LABEL_12:

  return v9;
}

- (UIViewController)alertHostViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_alertHostViewController);

  return WeakRetained;
}

@end