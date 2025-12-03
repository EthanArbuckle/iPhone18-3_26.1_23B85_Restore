@interface CARBluetoothClassicDiscoverer
+ (id)_sanitizeName:(id)name;
- (BOOL)pairBluetoothDevice:(id)device;
- (CARBluetoothClassicDiscoverer)init;
- (CARBluetoothClassicDiscovery)bluetoothDiscoveryDelegate;
- (NSSet)discoveredBluetoothDevices;
- (id)_presentingViewController;
- (id)_vehicleDeviceFromBluetoothDevice:(id)device;
- (void)_handleRemovedDevice:(id)device;
- (void)_handleUpdatedDevice:(id)device;
- (void)_presentPairingFailedForDevice:(id)device error:(int)error;
- (void)_saveVehicleForDevice:(id)device;
- (void)_shouldListenToBluetoothNotifications:(BOOL)notifications;
- (void)dealloc;
- (void)deviceAuthenticationRequestHandler:(id)handler;
- (void)deviceConnectedHandler:(id)handler;
- (void)deviceDisconnectedHandler:(id)handler;
- (void)deviceDiscoveredHandler:(id)handler;
- (void)devicePairingFailureHandler:(id)handler;
- (void)devicePairingSuccessHandler:(id)handler;
- (void)deviceRemovedHandler:(id)handler;
- (void)deviceUnpairedHandler:(id)handler;
- (void)deviceUpdatedHandler:(id)handler;
- (void)handleDiscoveredVehicle:(id)vehicle;
- (void)handlePowerChangedNotification:(id)notification;
- (void)handleRemovedVehicle:(id)vehicle;
- (void)handleUpdatedVehicle:(id)vehicle;
- (void)pauseDiscoveryForApplicationNotification:(id)notification;
- (void)restartDiscoveryForApplicationNotification:(id)notification;
- (void)setPairing:(BOOL)pairing;
- (void)startDiscovery;
- (void)stopDiscovery;
@end

@implementation CARBluetoothClassicDiscoverer

+ (id)_sanitizeName:(id)name
{
  nameCopy = name;
  v4 = [NSScanner scannerWithString:nameCopy];
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
    isCarPlaySetupEnabled = [v7 isCarPlaySetupEnabled];
    v2->_carPlaySetupEnabled = [isCarPlaySetupEnabled BOOLValue];

    v2->_pairing = 0;
  }

  return v2;
}

- (void)_shouldListenToBluetoothNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  canAddObservers = [(CARBluetoothClassicDiscoverer *)self canAddObservers];
  if (notificationsCopy)
  {
    if (canAddObservers)
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

  else if ((canAddObservers & 1) == 0)
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

- (void)restartDiscoveryForApplicationNotification:(id)notification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_DAD8;
  block[3] = &unk_6E2C0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)pauseDiscoveryForApplicationNotification:(id)notification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_DB98;
  block[3] = &unk_6E2C0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)handlePowerChangedNotification:(id)notification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_DC14;
  block[3] = &unk_6E2C0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)handleDiscoveredVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  bluetoothDiscoveryDelegate = [(CARBluetoothClassicDiscoverer *)self bluetoothDiscoveryDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    bluetoothDiscoveryDelegate2 = [(CARBluetoothClassicDiscoverer *)self bluetoothDiscoveryDelegate];
    [bluetoothDiscoveryDelegate2 bluetoothDiscoverer:self didDiscoverDevice:vehicleCopy];
  }
}

- (void)handleUpdatedVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  bluetoothDiscoveryDelegate = [(CARBluetoothClassicDiscoverer *)self bluetoothDiscoveryDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    bluetoothDiscoveryDelegate2 = [(CARBluetoothClassicDiscoverer *)self bluetoothDiscoveryDelegate];
    [bluetoothDiscoveryDelegate2 bluetoothDiscoverer:self didUpdateDevice:vehicleCopy];
  }
}

- (void)handleRemovedVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  bluetoothDiscoveryDelegate = [(CARBluetoothClassicDiscoverer *)self bluetoothDiscoveryDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    bluetoothDiscoveryDelegate2 = [(CARBluetoothClassicDiscoverer *)self bluetoothDiscoveryDelegate];
    [bluetoothDiscoveryDelegate2 bluetoothDiscoverer:self didRemoveDevice:vehicleCopy];
  }
}

- (NSSet)discoveredBluetoothDevices
{
  deviceForAddress = [(CARBluetoothClassicDiscoverer *)self deviceForAddress];
  allValues = [deviceForAddress allValues];
  v4 = [NSSet setWithArray:allValues];

  return v4;
}

- (id)_vehicleDeviceFromBluetoothDevice:(id)device
{
  deviceCopy = device;
  address = [deviceCopy address];
  if ([(CARBluetoothClassicDiscoverer *)self _supportsCarPlay:deviceCopy])
  {
    deviceForAddress = [(CARBluetoothClassicDiscoverer *)self deviceForAddress];
    v7 = [deviceForAddress objectForKey:address];

    if (!v7)
    {
      v7 = objc_alloc_init(CARBluetoothClassicDevice);
      address2 = [deviceCopy address];
      [(CARBluetoothClassicDevice *)v7 setBluetoothAddress:address2];

      deviceForAddress2 = [(CARBluetoothClassicDiscoverer *)self deviceForAddress];
      [deviceForAddress2 setObject:v7 forKey:address];
    }

    name = [deviceCopy name];
    [(CARBluetoothClassicDevice *)v7 setName:name];

    -[CARBluetoothClassicDevice setPaired:](v7, "setPaired:", [deviceCopy paired]);
    if ([deviceCopy connected])
    {
      v11 = 4;
    }

    else
    {
      v11 = 1;
    }

    [(CARBluetoothClassicDevice *)v7 setConnectionStatus:v11];
    [(CARBluetoothClassicDevice *)v7 setBtDevice:deviceCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setPairing:(BOOL)pairing
{
  pairingCopy = pairing;
  self->_pairing = pairing;
  v4 = CarPairingLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (pairingCopy)
    {
      v5 = @"YES";
    }

    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "is pairing: %{public}@", &v6, 0xCu);
  }
}

- (BOOL)pairBluetoothDevice:(id)device
{
  deviceCopy = device;
  if ([(CARBluetoothClassicDiscoverer *)self isCarPlaySetupEnabled])
  {
    bluetoothAddress = [deviceCopy bluetoothAddress];
    v6 = CarPairingLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 141558275;
      v15 = 1752392040;
      v16 = 2113;
      v17 = bluetoothAddress;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "starting pairing for  %{private, mask.hash}@", buf, 0x16u);
    }

    [(CARBluetoothClassicDiscoverer *)self setPairing:1];
    [(CARBluetoothClassicDiscoverer *)self pauseDiscovery];
    v12 = bluetoothAddress;
    v13 = deviceCopy;
    v7 = bluetoothAddress;
    CRStartBluetoothClassicPairing();

    v8 = 0;
  }

  else
  {
    btDevice = [deviceCopy btDevice];
    v10 = btDevice;
    v8 = btDevice != 0;
    if (btDevice)
    {
      [btDevice connect];
    }
  }

  [deviceCopy setConnectionStatus:2];
  [(CARBluetoothClassicDiscoverer *)self handleUpdatedVehicle:deviceCopy];

  return v8;
}

- (void)deviceDiscoveredHandler:(id)handler
{
  object = [handler object];
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    address = [object address];
    v8 = 138412290;
    v9 = address;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "discovered %@", &v8, 0xCu);
  }

  v7 = [(CARBluetoothClassicDiscoverer *)self _vehicleDeviceFromBluetoothDevice:object];
  if (v7)
  {
    [(CARBluetoothClassicDiscoverer *)self handleDiscoveredVehicle:v7];
  }
}

- (void)_handleUpdatedDevice:(id)device
{
  v4 = [(CARBluetoothClassicDiscoverer *)self _vehicleDeviceFromBluetoothDevice:device];
  if (v4)
  {
    v5 = v4;
    [(CARBluetoothClassicDiscoverer *)self handleUpdatedVehicle:v4];
    v4 = v5;
  }
}

- (void)_handleRemovedDevice:(id)device
{
  deviceCopy = device;
  v4 = [(CARBluetoothClassicDiscoverer *)self _vehicleDeviceFromBluetoothDevice:?];
  if (v4)
  {
    [(CARBluetoothClassicDiscoverer *)self handleRemovedVehicle:v4];
    deviceForAddress = [(CARBluetoothClassicDiscoverer *)self deviceForAddress];
    address = [deviceCopy address];
    [deviceForAddress removeObjectForKey:address];
  }
}

- (void)deviceUpdatedHandler:(id)handler
{
  object = [handler object];
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    address = [object address];
    v7 = 138412290;
    v8 = address;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "updated %@", &v7, 0xCu);
  }

  [(CARBluetoothClassicDiscoverer *)self _handleUpdatedDevice:object];
}

- (void)devicePairingFailureHandler:(id)handler
{
  handlerCopy = handler;
  object = [handlerCopy object];
  userInfo = [handlerCopy userInfo];
  v7 = [userInfo objectForKey:BluetoothErrorKey];

  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    intValue = [v7 intValue];
  }

  else
  {
    intValue = 0;
  }

  v9 = CarGeneralLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_4A3F0(handlerCopy, v9);
  }

  [(CARBluetoothClassicDiscoverer *)self _presentPairingFailedForDevice:object error:intValue];
  [(CARBluetoothClassicDiscoverer *)self _handleUpdatedDevice:object];
}

- (void)devicePairingSuccessHandler:(id)handler
{
  handlerCopy = handler;
  if ([(CARBluetoothClassicDiscoverer *)self isCarPlaySetupEnabled])
  {
    object = CarGeneralLogging();
    if (os_log_type_enabled(object, OS_LOG_TYPE_ERROR))
    {
      sub_4A468(object, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  else
  {
    object = [handlerCopy object];
    v13 = CarGeneralLogging();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      address = [object address];
      v15 = 138412290;
      v16 = address;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "paired %@", &v15, 0xCu);
    }

    [(CARBluetoothClassicDiscoverer *)self setPairing:0];
    [(CARBluetoothClassicDiscoverer *)self _saveVehicleForDevice:object];
    [(CARBluetoothClassicDiscoverer *)self _handleUpdatedDevice:object];
  }
}

- (void)deviceRemovedHandler:(id)handler
{
  object = [handler object];
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    address = [object address];
    v7 = 138412290;
    v8 = address;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "removed %@", &v7, 0xCu);
  }

  [(CARBluetoothClassicDiscoverer *)self _handleUpdatedDevice:object];
}

- (void)deviceUnpairedHandler:(id)handler
{
  object = [handler object];
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    address = [object address];
    v7 = 138412290;
    v8 = address;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "unpaired %@", &v7, 0xCu);
  }

  [(CARBluetoothClassicDiscoverer *)self _handleUpdatedDevice:object];
}

- (void)deviceConnectedHandler:(id)handler
{
  object = [handler object];
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    address = [object address];
    v7 = 138412290;
    v8 = address;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "connected %@", &v7, 0xCu);
  }

  [(CARBluetoothClassicDiscoverer *)self _handleUpdatedDevice:object];
}

- (void)deviceDisconnectedHandler:(id)handler
{
  object = [handler object];
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    address = [object address];
    v7 = 138412290;
    v8 = address;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "disconnected %@", &v7, 0xCu);
  }

  [(CARBluetoothClassicDiscoverer *)self _handleUpdatedDevice:object];
}

- (void)deviceAuthenticationRequestHandler:(id)handler
{
  handlerCopy = handler;
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [handlerCopy name];
    object = [handlerCopy object];
    *buf = 138412546;
    v28 = name;
    v29 = 2112;
    v30 = object;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "deviceAuthenticationRequestHandler received %@ for %@", buf, 0x16u);
  }

  name2 = [handlerCopy name];
  v9 = [name2 isEqualToString:BluetoothPairingUserNumericComparisionNotification];

  if (v9)
  {
    object2 = [handlerCopy object];
    v11 = [object2 valueForKey:@"device"];

    object3 = [handlerCopy object];
    v13 = [object3 valueForKey:@"value"];

    address = [v11 address];
    v15 = objc_opt_class();
    name3 = [v11 name];
    v17 = [v15 _sanitizeName:name3];

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
        v26 = address;
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
      selfCopy = self;
      [(CARBluetoothPairingPrompt *)v20 setConfirmationCompletion:v22];
      _presentingViewController = [(CARBluetoothClassicDiscoverer *)self _presentingViewController];
      [(CARBluetoothPairingPrompt *)v20 presentFromViewController:_presentingViewController];

      objc_destroyWeak(v25);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v11 = CarGeneralLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_4A4A0(handlerCopy, v11);
    }
  }
}

- (void)_presentPairingFailedForDevice:(id)device error:(int)error
{
  deviceCopy = device;
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
      address = [deviceCopy address];
      v15 = objc_opt_class();
      name = [deviceCopy name];
      v17 = [v15 _sanitizeName:name];

      _presentingViewController = [(CARBluetoothClassicDiscoverer *)self _presentingViewController];
      if (_presentingViewController)
      {
        outstandingPairingPrompt = [(CARBluetoothClassicDiscoverer *)self outstandingPairingPrompt];

        if (outstandingPairingPrompt || ([(CARBluetoothClassicDiscoverer *)self outstandingContactsPrompt], v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
        {
          [_presentingViewController dismissViewControllerAnimated:1 completion:0];
        }

        [CARBluetoothPairingFailedPrompt presentPairingFailure:outstandingPairingPrompt != 0 forDeviceName:v17 fromViewController:_presentingViewController completion:0];
      }

      [(CARBluetoothClassicDiscoverer *)self setOutstandingPairingPrompt:0];
      [(CARBluetoothClassicDiscoverer *)self setOutstandingContactsPrompt:0];
    }

    [(CARBluetoothClassicDiscoverer *)self setPairing:0];
  }
}

- (void)_saveVehicleForDevice:(id)device
{
  deviceCopy = device;
  address = [deviceCopy address];
  v5 = objc_opt_class();
  name = [deviceCopy name];

  v7 = [v5 _sanitizeName:name];

  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = address;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "telling carkitd to handle the pairing for %@ (%@)", &v9, 0x16u);
  }

  CRHandleBluetoothClassicPairingCompleted();
}

- (id)_presentingViewController
{
  bluetoothDiscoveryDelegate = [(CARBluetoothClassicDiscoverer *)self bluetoothDiscoveryDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    bluetoothDiscoveryDelegate2 = [(CARBluetoothClassicDiscoverer *)self bluetoothDiscoveryDelegate];
    v6 = [bluetoothDiscoveryDelegate2 viewControllerPresentingPairingForBluetoothDiscoverer:self];
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