@interface CARBluetoothClassicDiscoverer
+ (id)_sanitizeName:(id)a3;
- (BOOL)pairBluetoothDevice:(id)a3;
- (CARBluetoothClassicDiscoverer)init;
- (CARBluetoothClassicDiscovery)bluetoothDiscoveryDelegate;
- (NSSet)discoveredBluetoothDevices;
- (id)_presentingViewController;
- (id)_vehicleDeviceFromBluetoothDevice:(id)a3;
- (void)_handleRemovedDevice:(id)a3;
- (void)_handleUpdatedDevice:(id)a3;
- (void)_presentPairingFailedForDevice:(id)a3 error:(int)a4;
- (void)_saveVehicleForDevice:(id)a3;
- (void)_shouldListenToBluetoothNotifications:(BOOL)a3;
- (void)dealloc;
- (void)deviceAuthenticationRequestHandler:(id)a3;
- (void)deviceConnectedHandler:(id)a3;
- (void)deviceDisconnectedHandler:(id)a3;
- (void)deviceDiscoveredHandler:(id)a3;
- (void)devicePairingFailureHandler:(id)a3;
- (void)devicePairingSuccessHandler:(id)a3;
- (void)deviceRemovedHandler:(id)a3;
- (void)deviceUnpairedHandler:(id)a3;
- (void)deviceUpdatedHandler:(id)a3;
- (void)handleDiscoveredVehicle:(id)a3;
- (void)handlePowerChangedNotification:(id)a3;
- (void)handleRemovedVehicle:(id)a3;
- (void)handleUpdatedVehicle:(id)a3;
- (void)pauseDiscoveryForApplicationNotification:(id)a3;
- (void)restartDiscoveryForApplicationNotification:(id)a3;
- (void)setPairing:(BOOL)a3;
- (void)startDiscovery;
- (void)stopDiscovery;
@end

@implementation CARBluetoothClassicDiscoverer

+ (id)_sanitizeName:(id)a3
{
  v3 = a3;
  v4 = [NSScanner scannerWithString:v3];
  v5 = +[NSCharacterSet illegalCharacterSet];
  [v4 setCharactersToBeSkipped:v5];

  v6 = +[NSMutableString string];
  v7 = +[NSMutableString string];
  while (1)
  {
    v8 = v7;
    v9 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v16 = v7;
    v10 = [v4 scanUpToCharactersFromSet:v9 intoString:&v16];
    v7 = v16;

    if (!v10)
    {
      break;
    }

    [v6 appendString:v7];
    v11 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v12 = [v4 scanCharactersFromSet:v11 intoString:0];

    if (v12)
    {
      [v6 appendString:@" "];
    }
  }

  if ([v6 length] < 0x33)
  {
    v13 = v6;
  }

  else
  {
    v13 = [v6 substringToIndex:50];
  }

  v14 = v13;

  return v14;
}

- (CARBluetoothClassicDiscoverer)init
{
  v10.receiver = self;
  v10.super_class = CARBluetoothClassicDiscoverer;
  v2 = [(CARBluetoothClassicDiscoverer *)&v10 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    [(CARBluetoothClassicDiscoverer *)v2 setDeviceForAddress:v3];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"restartDiscoveryForApplicationNotification:" name:UIApplicationDidBecomeActiveNotification object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"pauseDiscoveryForApplicationNotification:" name:UIApplicationWillResignActiveNotification object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"pauseDiscoveryForApplicationNotification:" name:UIApplicationWillTerminateNotification object:0];

    [(CARBluetoothClassicDiscoverer *)v2 setCanAddObservers:1];
    [(CARBluetoothClassicDiscoverer *)v2 _shouldListenToBluetoothNotifications:1];
    v7 = objc_alloc_init(CRCarPlayPreferences);
    v8 = [v7 isCarPlaySetupEnabled];
    v2->_carPlaySetupEnabled = [v8 BOOLValue];

    v2->_pairing = 0;
  }

  return v2;
}

- (void)_shouldListenToBluetoothNotifications:(BOOL)a3
{
  v3 = a3;
  v5 = [(CARBluetoothClassicDiscoverer *)self canAddObservers];
  if (v3)
  {
    if (v5)
    {
      [(CARBluetoothClassicDiscoverer *)self setCanAddObservers:0];
      v6 = +[NSNotificationCenter defaultCenter];
      [v6 addObserver:self selector:"handlePowerChangedNotification:" name:BluetoothAvailabilityChangedNotification object:0];

      v7 = +[NSNotificationCenter defaultCenter];
      [v7 addObserver:self selector:"handlePowerChangedNotification:" name:BluetoothPowerChangedNotification object:0];

      v8 = +[NSNotificationCenter defaultCenter];
      [v8 addObserver:self selector:"deviceDiscoveredHandler:" name:BluetoothDeviceDiscoveredNotification object:0];

      v9 = +[NSNotificationCenter defaultCenter];
      [v9 addObserver:self selector:"deviceUpdatedHandler:" name:BluetoothDeviceUpdatedNotification object:0];

      v10 = +[NSNotificationCenter defaultCenter];
      [v10 addObserver:self selector:"deviceRemovedHandler:" name:BluetoothDeviceRemovedNotification object:0];

      v11 = +[NSNotificationCenter defaultCenter];
      [v11 addObserver:self selector:"deviceUnpairedHandler:" name:BluetoothDeviceUnpairedNotification object:0];

      v12 = +[NSNotificationCenter defaultCenter];
      [v12 addObserver:self selector:"deviceConnectedHandler:" name:BluetoothDeviceConnectSuccessNotification object:0];

      v13 = +[NSNotificationCenter defaultCenter];
      [v13 addObserver:self selector:"deviceConnectedHandler:" name:BluetoothDeviceConnectFailedNotification object:0];

      v14 = +[NSNotificationCenter defaultCenter];
      [v14 addObserver:self selector:"deviceDisconnectedHandler:" name:BluetoothDeviceDisconnectSuccessNotification object:0];

      v15 = +[NSNotificationCenter defaultCenter];
      [v15 addObserver:self selector:"devicePairingFailureHandler:" name:BluetoothPairingPINResultFailedNotification object:0];

      v16 = +[NSNotificationCenter defaultCenter];
      [v16 addObserver:self selector:"devicePairingSuccessHandler:" name:BluetoothPairingPINResultSuccessNotification object:0];

      v29 = +[NSNotificationCenter defaultCenter];
      [v29 addObserver:self selector:"deviceAuthenticationRequestHandler:" name:BluetoothPairingUserNumericComparisionNotification object:0];
    }
  }

  else if ((v5 & 1) == 0)
  {
    v17 = +[NSNotificationCenter defaultCenter];
    [v17 removeObserver:self name:BluetoothAvailabilityChangedNotification object:0];

    v18 = +[NSNotificationCenter defaultCenter];
    [v18 removeObserver:self name:BluetoothPowerChangedNotification object:0];

    v19 = +[NSNotificationCenter defaultCenter];
    [v19 removeObserver:self name:BluetoothDeviceDiscoveredNotification object:0];

    v20 = +[NSNotificationCenter defaultCenter];
    [v20 removeObserver:self name:BluetoothDeviceUpdatedNotification object:0];

    v21 = +[NSNotificationCenter defaultCenter];
    [v21 removeObserver:self name:BluetoothDeviceRemovedNotification object:0];

    v22 = +[NSNotificationCenter defaultCenter];
    [v22 removeObserver:self name:BluetoothDeviceUnpairedNotification object:0];

    v23 = +[NSNotificationCenter defaultCenter];
    [v23 removeObserver:self name:BluetoothDeviceConnectSuccessNotification object:0];

    v24 = +[NSNotificationCenter defaultCenter];
    [v24 removeObserver:self name:BluetoothDeviceConnectFailedNotification object:0];

    v25 = +[NSNotificationCenter defaultCenter];
    [v25 removeObserver:self name:BluetoothDeviceDisconnectSuccessNotification object:0];

    v26 = +[NSNotificationCenter defaultCenter];
    [v26 removeObserver:self name:BluetoothPairingPINResultFailedNotification object:0];

    v27 = +[NSNotificationCenter defaultCenter];
    [v27 removeObserver:self name:BluetoothPairingPINResultSuccessNotification object:0];

    v28 = +[NSNotificationCenter defaultCenter];
    [v28 removeObserver:self name:BluetoothPairingUserNumericComparisionNotification object:0];

    [(CARBluetoothClassicDiscoverer *)self setCanAddObservers:1];
  }
}

- (void)dealloc
{
  [(CARBluetoothClassicDiscoverer *)self stopDiscovery];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CARBluetoothClassicDiscoverer;
  [(CARBluetoothClassicDiscoverer *)&v4 dealloc];
}

- (void)startDiscovery
{
  [(CARBluetoothClassicDiscoverer *)self _shouldListenToBluetoothNotifications:1];
  [(CARBluetoothClassicDiscoverer *)self setDiscoveryEnabled:1];

  [(CARBluetoothClassicDiscoverer *)self _allowBluetoothConnections:1];
}

- (void)stopDiscovery
{
  [(CARBluetoothClassicDiscoverer *)self setDiscoveryEnabled:0];
  [(CARBluetoothClassicDiscoverer *)self _allowBluetoothConnections:0];

  [(CARBluetoothClassicDiscoverer *)self _shouldListenToBluetoothNotifications:0];
}

- (void)restartDiscoveryForApplicationNotification:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_DAD8;
  block[3] = &unk_6E2C0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)pauseDiscoveryForApplicationNotification:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_DB98;
  block[3] = &unk_6E2C0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)handlePowerChangedNotification:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_DC14;
  block[3] = &unk_6E2C0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)handleDiscoveredVehicle:(id)a3
{
  v7 = a3;
  v4 = [(CARBluetoothClassicDiscoverer *)self bluetoothDiscoveryDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CARBluetoothClassicDiscoverer *)self bluetoothDiscoveryDelegate];
    [v6 bluetoothDiscoverer:self didDiscoverDevice:v7];
  }
}

- (void)handleUpdatedVehicle:(id)a3
{
  v7 = a3;
  v4 = [(CARBluetoothClassicDiscoverer *)self bluetoothDiscoveryDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CARBluetoothClassicDiscoverer *)self bluetoothDiscoveryDelegate];
    [v6 bluetoothDiscoverer:self didUpdateDevice:v7];
  }
}

- (void)handleRemovedVehicle:(id)a3
{
  v7 = a3;
  v4 = [(CARBluetoothClassicDiscoverer *)self bluetoothDiscoveryDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CARBluetoothClassicDiscoverer *)self bluetoothDiscoveryDelegate];
    [v6 bluetoothDiscoverer:self didRemoveDevice:v7];
  }
}

- (NSSet)discoveredBluetoothDevices
{
  v2 = [(CARBluetoothClassicDiscoverer *)self deviceForAddress];
  v3 = [v2 allValues];
  v4 = [NSSet setWithArray:v3];

  return v4;
}

- (id)_vehicleDeviceFromBluetoothDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 address];
  if ([(CARBluetoothClassicDiscoverer *)self _supportsCarPlay:v4])
  {
    v6 = [(CARBluetoothClassicDiscoverer *)self deviceForAddress];
    v7 = [v6 objectForKey:v5];

    if (!v7)
    {
      v7 = objc_alloc_init(CARBluetoothClassicDevice);
      v8 = [v4 address];
      [(CARBluetoothClassicDevice *)v7 setBluetoothAddress:v8];

      v9 = [(CARBluetoothClassicDiscoverer *)self deviceForAddress];
      [v9 setObject:v7 forKey:v5];
    }

    v10 = [v4 name];
    [(CARBluetoothClassicDevice *)v7 setName:v10];

    -[CARBluetoothClassicDevice setPaired:](v7, "setPaired:", [v4 paired]);
    if ([v4 connected])
    {
      v11 = 4;
    }

    else
    {
      v11 = 1;
    }

    [(CARBluetoothClassicDevice *)v7 setConnectionStatus:v11];
    [(CARBluetoothClassicDevice *)v7 setBtDevice:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setPairing:(BOOL)a3
{
  v3 = a3;
  self->_pairing = a3;
  v4 = CarPairingLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (v3)
    {
      v5 = @"YES";
    }

    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "is pairing: %{public}@", &v6, 0xCu);
  }
}

- (BOOL)pairBluetoothDevice:(id)a3
{
  v4 = a3;
  if ([(CARBluetoothClassicDiscoverer *)self isCarPlaySetupEnabled])
  {
    v5 = [v4 bluetoothAddress];
    v6 = CarPairingLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 141558275;
      v15 = 1752392040;
      v16 = 2113;
      v17 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "starting pairing for  %{private, mask.hash}@", buf, 0x16u);
    }

    [(CARBluetoothClassicDiscoverer *)self setPairing:1];
    [(CARBluetoothClassicDiscoverer *)self pauseDiscovery];
    v12 = v5;
    v13 = v4;
    v7 = v5;
    CRStartBluetoothClassicPairing();

    v8 = 0;
  }

  else
  {
    v9 = [v4 btDevice];
    v10 = v9;
    v8 = v9 != 0;
    if (v9)
    {
      [v9 connect];
    }
  }

  [v4 setConnectionStatus:2];
  [(CARBluetoothClassicDiscoverer *)self handleUpdatedVehicle:v4];

  return v8;
}

- (void)deviceDiscoveredHandler:(id)a3
{
  v4 = [a3 object];
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 address];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "discovered %@", &v8, 0xCu);
  }

  v7 = [(CARBluetoothClassicDiscoverer *)self _vehicleDeviceFromBluetoothDevice:v4];
  if (v7)
  {
    [(CARBluetoothClassicDiscoverer *)self handleDiscoveredVehicle:v7];
  }
}

- (void)_handleUpdatedDevice:(id)a3
{
  v4 = [(CARBluetoothClassicDiscoverer *)self _vehicleDeviceFromBluetoothDevice:a3];
  if (v4)
  {
    v5 = v4;
    [(CARBluetoothClassicDiscoverer *)self handleUpdatedVehicle:v4];
    v4 = v5;
  }
}

- (void)_handleRemovedDevice:(id)a3
{
  v7 = a3;
  v4 = [(CARBluetoothClassicDiscoverer *)self _vehicleDeviceFromBluetoothDevice:?];
  if (v4)
  {
    [(CARBluetoothClassicDiscoverer *)self handleRemovedVehicle:v4];
    v5 = [(CARBluetoothClassicDiscoverer *)self deviceForAddress];
    v6 = [v7 address];
    [v5 removeObjectForKey:v6];
  }
}

- (void)deviceUpdatedHandler:(id)a3
{
  v4 = [a3 object];
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 address];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "updated %@", &v7, 0xCu);
  }

  [(CARBluetoothClassicDiscoverer *)self _handleUpdatedDevice:v4];
}

- (void)devicePairingFailureHandler:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [v4 userInfo];
  v7 = [v6 objectForKey:BluetoothErrorKey];

  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [v7 intValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = CarGeneralLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_4A3F0(v4, v9);
  }

  [(CARBluetoothClassicDiscoverer *)self _presentPairingFailedForDevice:v5 error:v8];
  [(CARBluetoothClassicDiscoverer *)self _handleUpdatedDevice:v5];
}

- (void)devicePairingSuccessHandler:(id)a3
{
  v4 = a3;
  if ([(CARBluetoothClassicDiscoverer *)self isCarPlaySetupEnabled])
  {
    v5 = CarGeneralLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_4A468(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  else
  {
    v5 = [v4 object];
    v13 = CarGeneralLogging();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v5 address];
      v15 = 138412290;
      v16 = v14;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "paired %@", &v15, 0xCu);
    }

    [(CARBluetoothClassicDiscoverer *)self setPairing:0];
    [(CARBluetoothClassicDiscoverer *)self _saveVehicleForDevice:v5];
    [(CARBluetoothClassicDiscoverer *)self _handleUpdatedDevice:v5];
  }
}

- (void)deviceRemovedHandler:(id)a3
{
  v4 = [a3 object];
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 address];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "removed %@", &v7, 0xCu);
  }

  [(CARBluetoothClassicDiscoverer *)self _handleUpdatedDevice:v4];
}

- (void)deviceUnpairedHandler:(id)a3
{
  v4 = [a3 object];
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 address];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "unpaired %@", &v7, 0xCu);
  }

  [(CARBluetoothClassicDiscoverer *)self _handleUpdatedDevice:v4];
}

- (void)deviceConnectedHandler:(id)a3
{
  v4 = [a3 object];
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 address];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "connected %@", &v7, 0xCu);
  }

  [(CARBluetoothClassicDiscoverer *)self _handleUpdatedDevice:v4];
}

- (void)deviceDisconnectedHandler:(id)a3
{
  v4 = [a3 object];
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 address];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "disconnected %@", &v7, 0xCu);
  }

  [(CARBluetoothClassicDiscoverer *)self _handleUpdatedDevice:v4];
}

- (void)deviceAuthenticationRequestHandler:(id)a3
{
  v4 = a3;
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v7 = [v4 object];
    *buf = 138412546;
    v28 = v6;
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "deviceAuthenticationRequestHandler received %@ for %@", buf, 0x16u);
  }

  v8 = [v4 name];
  v9 = [v8 isEqualToString:BluetoothPairingUserNumericComparisionNotification];

  if (v9)
  {
    v10 = [v4 object];
    v11 = [v10 valueForKey:@"device"];

    v12 = [v4 object];
    v13 = [v12 valueForKey:@"value"];

    v14 = [v11 address];
    v15 = objc_opt_class();
    v16 = [v11 name];
    v17 = [v15 _sanitizeName:v16];

    v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%06u", [v13 unsignedIntValue]);
    if ([(CARBluetoothClassicDiscoverer *)self isCarPlaySetupEnabled])
    {
      if ([(CARBluetoothClassicDiscoverer *)self isPairing])
      {
        v19 = CarPairingLogging();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "not handling authentication request, already pairing using CarPlay Setup", buf, 2u);
        }
      }

      else
      {
        v25[1] = _NSConcreteStackBlock;
        v25[2] = 3221225472;
        v25[3] = sub_F20C;
        v25[4] = &unk_6E738;
        v25[5] = self;
        v26 = v14;
        CRConfirmAndContinueBluetoothClassicPairing();
      }
    }

    else
    {
      [(CARBluetoothClassicDiscoverer *)self setPairing:1];
      v20 = [[CARBluetoothPairingPrompt alloc] initWithPairingStyle:0 deviceName:v17 passKey:v18];
      [(CARBluetoothClassicDiscoverer *)self setOutstandingPairingPrompt:v20];
      objc_initWeak(buf, self);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_F404;
      v22[3] = &unk_6E788;
      objc_copyWeak(v25, buf);
      v23 = v11;
      v24 = self;
      [(CARBluetoothPairingPrompt *)v20 setConfirmationCompletion:v22];
      v21 = [(CARBluetoothClassicDiscoverer *)self _presentingViewController];
      [(CARBluetoothPairingPrompt *)v20 presentFromViewController:v21];

      objc_destroyWeak(v25);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v11 = CarGeneralLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_4A4A0(v4, v11);
    }
  }
}

- (void)_presentPairingFailedForDevice:(id)a3 error:(int)a4
{
  v5 = a3;
  if ([(CARBluetoothClassicDiscoverer *)self isCarPlaySetupEnabled])
  {
    v6 = CarGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_4A53C(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else
  {
    if ([(CARBluetoothClassicDiscoverer *)self isPairing])
    {
      v14 = [v5 address];
      v15 = objc_opt_class();
      v16 = [v5 name];
      v17 = [v15 _sanitizeName:v16];

      v18 = [(CARBluetoothClassicDiscoverer *)self _presentingViewController];
      if (v18)
      {
        v19 = [(CARBluetoothClassicDiscoverer *)self outstandingPairingPrompt];

        if (v19 || ([(CARBluetoothClassicDiscoverer *)self outstandingContactsPrompt], v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
        {
          [v18 dismissViewControllerAnimated:1 completion:0];
        }

        [CARBluetoothPairingFailedPrompt presentPairingFailure:v19 != 0 forDeviceName:v17 fromViewController:v18 completion:0];
      }

      [(CARBluetoothClassicDiscoverer *)self setOutstandingPairingPrompt:0];
      [(CARBluetoothClassicDiscoverer *)self setOutstandingContactsPrompt:0];
    }

    [(CARBluetoothClassicDiscoverer *)self setPairing:0];
  }
}

- (void)_saveVehicleForDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 address];
  v5 = objc_opt_class();
  v6 = [v3 name];

  v7 = [v5 _sanitizeName:v6];

  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "telling carkitd to handle the pairing for %@ (%@)", &v9, 0x16u);
  }

  CRHandleBluetoothClassicPairingCompleted();
}

- (id)_presentingViewController
{
  v3 = [(CARBluetoothClassicDiscoverer *)self bluetoothDiscoveryDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CARBluetoothClassicDiscoverer *)self bluetoothDiscoveryDelegate];
    v6 = [v5 viewControllerPresentingPairingForBluetoothDiscoverer:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CARBluetoothClassicDiscovery)bluetoothDiscoveryDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_bluetoothDiscoveryDelegate);

  return WeakRetained;
}

@end