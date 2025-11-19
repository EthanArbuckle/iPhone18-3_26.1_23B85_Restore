@interface HSNetworkInterfaceManager
- (HSNetworkInterfaceManager)initWithAlertHostViewController:(id)a3;
- (UIViewController)alertHostViewController;
- (id)_alertBaseLocalizationKeyForRequestBluetooth:(BOOL)a3 Wifi:(BOOL)a4;
- (unint64_t)_wiFiInterfaceStatus;
- (void)_setBluetoothPowerState:(BOOL)a3;
- (void)_updateAlertForBluetooth:(BOOL)a3 Wifi:(BOOL)a4;
- (void)_updateBluetoothInterfaceStatusWithCompletion:(id)a3;
- (void)dealloc;
@end

@implementation HSNetworkInterfaceManager

- (HSNetworkInterfaceManager)initWithAlertHostViewController:(id)a3
{
  v4 = a3;
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

    objc_storeWeak(&v6->_alertHostViewController, v4);
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

- (void)_updateBluetoothInterfaceStatusWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HSNetworkInterfaceManager *)self bluetoothController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100049660;
  v7[3] = &unk_1000C7708;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 getPowerStateWithCompletion:v7];
}

- (void)_setBluetoothPowerState:(BOOL)a3
{
  v3 = a3;
  v4 = [(HSNetworkInterfaceManager *)self bluetoothController];
  v6 = v4;
  if (v3)
  {
    v5 = 5;
  }

  else
  {
    v5 = 4;
  }

  [v4 setPowerState:v5 completion:&stru_1000C7748];
}

- (unint64_t)_wiFiInterfaceStatus
{
  v3 = [(HSNetworkInterfaceManager *)self wifiInterface];
  if ([v3 powerOn])
  {
    v4 = [(HSNetworkInterfaceManager *)self wifiInterface];
    if ([v4 userAutoJoinDisabled])
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

- (void)_updateAlertForBluetooth:(BOOL)a3 Wifi:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(HSNetworkInterfaceManager *)self bluetoothInterfaceStatus]== 1 && v5;
  v8 = [(HSNetworkInterfaceManager *)self _wiFiInterfaceStatus]== 1 && v4;
  v9 = [(HSNetworkInterfaceManager *)self _alertLocalizedTitleForRequestBluetooth:v7 Wifi:v8];
  v10 = [(HSNetworkInterfaceManager *)self _alertLocalizedDescriptionForRequestBluetooth:v7 Wifi:v8];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100049D28;
  v34[3] = &unk_1000C5E98;
  v11 = v9;
  v35 = v11;
  v36 = self;
  v12 = v10;
  v37 = v12;
  v13 = objc_retainBlock(v34);
  v14 = [(HSNetworkInterfaceManager *)self enableBluetoothAndWiFiAlertController];
  if (v14)
  {
    v15 = v14;
    v16 = [(HSNetworkInterfaceManager *)self alertHostViewController];
    v17 = [v16 presentedViewController];
    v18 = [(HSNetworkInterfaceManager *)self enableBluetoothAndWiFiAlertController];

    if (v17 == v18)
    {
      if (v7 || v8)
      {
        (v13[2])(v13);
        if (!v11 || !v12)
        {
          goto LABEL_21;
        }

        v29 = [(HSNetworkInterfaceManager *)self enableBluetoothAndWiFiAlertController];
        [v29 setTitle:v11];

        v30 = [(HSNetworkInterfaceManager *)self enableBluetoothAndWiFiAlertController];
        [v30 setMessage:v12];
      }

      else
      {
        v30 = [(HSNetworkInterfaceManager *)self alertHostViewController];
        [v30 dismissViewControllerAnimated:1 completion:0];
      }

      goto LABEL_21;
    }
  }

  v19 = [(HSNetworkInterfaceManager *)self enableBluetoothAndWiFiAlertController];
  if (v19)
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

        v21 = [(HSNetworkInterfaceManager *)self enableBluetoothAndWiFiAlertController];
        v22 = sub_100063A44(@"HSBluetoothAndWiFiAlertDontTurnOnAction");
        v23 = [UIAlertAction actionWithTitle:v22 style:1 handler:&stru_1000C7768];
        [v21 addAction:v23];

        objc_initWeak(&location, self);
        v24 = [(HSNetworkInterfaceManager *)self enableBluetoothAndWiFiAlertController];
        v25 = sub_100063A44(@"HSBluetoothAndWiFiAlertTurnOnAction");
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_100049DAC;
        v31[3] = &unk_1000C7790;
        objc_copyWeak(&v32, &location);
        v26 = [UIAlertAction actionWithTitle:v25 style:0 handler:v31];
        [v24 addAction:v26];

        v27 = [(HSNetworkInterfaceManager *)self alertHostViewController];
        v28 = [(HSNetworkInterfaceManager *)self enableBluetoothAndWiFiAlertController];
        [v27 presentViewController:v28 animated:1 completion:0];

        objc_destroyWeak(&v32);
        objc_destroyWeak(&location);
      }
    }
  }

LABEL_21:
}

- (id)_alertBaseLocalizationKeyForRequestBluetooth:(BOOL)a3 Wifi:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[HFUtilities useWLANInsteadOfWiFi];
  if (v5 && v4)
  {
    v7 = @"HSBluetoothAndWiFiAlertTurnOnWiFiAndBluetooth";
    v8 = @"HSBluetoothAndWiFiAlertTurnOnWLANAndBluetooth";
  }

  else
  {
    if (!v4)
    {
      if (v5)
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