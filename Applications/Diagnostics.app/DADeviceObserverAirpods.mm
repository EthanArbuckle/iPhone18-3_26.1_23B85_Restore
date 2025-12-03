@interface DADeviceObserverAirpods
+ (id)primarySerialNumberForAirpodsDevice:(id)device;
- (BOOL)_isBeatsDevice:(id)device;
- (BOOL)_isBluetoothDeviceServicableAirpods:(id)airpods;
- (DADeviceObserverAirpods)init;
- (id)_airpodsDeviceFromDevice:(id)device;
- (id)beginDiscoveringDevicesWithHandler:(id)handler;
- (void)_addAirpodsDevice:(id)device;
- (void)_beginObserving;
- (void)_bluetoothPairingStatusChanged:(id)changed;
- (void)_btManagerAvailable;
- (void)_endObserving;
- (void)_ensureInitialDevicesFetched;
- (void)_forceDiscoverAllDevices;
- (void)_purgeUnpairedDevices;
- (void)_updateHandlers;
- (void)discoverAllDevicesWithCompletionHandler:(id)handler;
- (void)endDiscoveringDevicesWithIdentifier:(id)identifier;
@end

@implementation DADeviceObserverAirpods

+ (id)primarySerialNumberForAirpodsDevice:(id)device
{
  deviceCopy = device;
  accessoryInfo = [deviceCopy accessoryInfo];
  v5 = [accessoryInfo objectForKeyedSubscript:@"AACPVersionInfo"];

  v6 = [v5 objectAtIndexedSubscript:3];
  v7 = v6;
  if (!v6 || ![v6 length] || objc_msgSend(v7, "isEqualToString:", @"?"))
  {
    v8 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Case serial number is missing for airpods device. Falling back to left bud", buf, 2u);
    }

    v9 = [v5 objectAtIndexedSubscript:8];

    if (v9 && [v9 length] && !objc_msgSend(v9, "isEqualToString:", @"?"))
    {
      v7 = v9;
    }

    else
    {
      v10 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Left bud serial number is missing for airpods device. Falling back to right bud", v13, 2u);
      }

      v7 = [v5 objectAtIndexedSubscript:9];

      if (!v7 || ![v7 length] || objc_msgSend(v7, "isEqualToString:", @"?"))
      {
        v11 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100157BEC(deviceCopy, v11);
        }
      }
    }
  }

  return v7;
}

- (DADeviceObserverAirpods)init
{
  v24.receiver = self;
  v24.super_class = DADeviceObserverAirpods;
  v2 = [(DADeviceObserverAirpods *)&v24 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.Diagnostics.airpodsRegistrationQueue", 0);
    airpodsRegistrationQueue = v2->_airpodsRegistrationQueue;
    v2->_airpodsRegistrationQueue = v3;

    v2->_isObserving = 0;
    v5 = +[NSMutableSet set];
    devices = v2->_devices;
    v2->_devices = v5;

    v7 = +[NSMutableDictionary dictionary];
    handlers = v2->_handlers;
    v2->_handlers = v7;

    v9 = dispatch_semaphore_create(0);
    btManagerAvailableSemaphore = v2->_btManagerAvailableSemaphore;
    v2->_btManagerAvailableSemaphore = v9;

    v2->_initialDevicesFetched = 0;
    v11 = [NSSet setWithArray:&off_1001CCD08];
    supportedDeviceAllowList = v2->_supportedDeviceAllowList;
    v2->_supportedDeviceAllowList = v11;

    v13 = +[NSBundle mainBundle];
    bundleIdentifier = [v13 bundleIdentifier];
    v15 = [bundleIdentifier isEqualToString:@"com.apple.Diagnostics"];

    if (v15)
    {
      v16 = +[NSUserDefaults standardUserDefaults];
    }

    else
    {
      v16 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.Diagnostics"];
    }

    v17 = v16;
    v18 = [v16 objectForKey:@"ShowAllBluetoothAudioAccessories"];
    v2->_useSupportedDeviceAllowList = [v18 BOOLValue] ^ 1;
    v19 = +[NSNotificationCenter defaultCenter];
    [v19 addObserver:v2 selector:"_btManagerAvailable" name:BluetoothAvailabilityChangedNotification object:0];

    if (qword_100202D00 != -1)
    {
      sub_100157C64();
    }

    v20 = qword_100202D08;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003F90;
    block[3] = &unk_1001BC580;
    v23 = v2;
    dispatch_sync(v20, block);
  }

  return v2;
}

- (void)discoverAllDevicesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = qword_100202D08;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100004088;
  v7[3] = &unk_1001BC5A8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, v7);
}

- (id)beginDiscoveringDevicesWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[NSUUID UUID];
  airpodsRegistrationQueue = [(DADeviceObserverAirpods *)self airpodsRegistrationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004254;
  block[3] = &unk_1001BC5D0;
  block[4] = self;
  v7 = v5;
  v13 = v7;
  v14 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(airpodsRegistrationQueue, block);

  v9 = v14;
  v10 = v7;

  return v7;
}

- (void)endDiscoveringDevicesWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  airpodsRegistrationQueue = [(DADeviceObserverAirpods *)self airpodsRegistrationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100004380;
  v7[3] = &unk_1001BC5F8;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(airpodsRegistrationQueue, v7);
}

- (void)_beginObserving
{
  if (!self->_isObserving)
  {
    self->_isObserving = 1;
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:self selector:"_bluetoothPairingStatusChanged:" name:BluetoothPairedStatusChangedNotification object:0];
  }

  btManager = [(DADeviceObserverAirpods *)self btManager];
  if (!btManager || (v5 = btManager, -[DADeviceObserverAirpods btManager](self, "btManager"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 available], v6, v5, (v7 & 1) == 0))
  {
    btManagerAvailableSemaphore = [(DADeviceObserverAirpods *)self btManagerAvailableSemaphore];
    v9 = dispatch_time(0, 3000000000);
    dispatch_semaphore_wait(btManagerAvailableSemaphore, v9);
  }

  [(DADeviceObserverAirpods *)self _ensureInitialDevicesFetched];

  [(DADeviceObserverAirpods *)self _updateHandlers];
}

- (void)_endObserving
{
  if (self->_isObserving)
  {
    self->_isObserving = 0;
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self name:BluetoothPairedStatusChangedNotification object:0];
  }
}

- (void)_updateHandlers
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  handlers = [(DADeviceObserverAirpods *)self handlers];
  v4 = [handlers copy];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        handlers2 = [(DADeviceObserverAirpods *)self handlers];
        v11 = [handlers2 objectForKeyedSubscript:v9];

        if (v11)
        {
          devices = [(DADeviceObserverAirpods *)self devices];
          (v11)[2](v11, devices);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)_btManagerAvailable
{
  [(DADeviceObserverAirpods *)self _ensureInitialDevicesFetched];
  btManagerAvailableSemaphore = [(DADeviceObserverAirpods *)self btManagerAvailableSemaphore];
  dispatch_semaphore_signal(btManagerAvailableSemaphore);
}

- (BOOL)_isBluetoothDeviceServicableAirpods:(id)airpods
{
  airpodsCopy = airpods;
  if ([airpodsCopy isAppleAudioDevice])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(DADeviceObserverAirpods *)self _isBeatsDevice:airpodsCopy];
  }

  isTemporaryPaired = [airpodsCopy isTemporaryPaired];
  if ([(DADeviceObserverAirpods *)self useSupportedDeviceAllowList])
  {
    supportedDeviceAllowList = [(DADeviceObserverAirpods *)self supportedDeviceAllowList];
    v8 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [airpodsCopy productId]);
    v9 = [supportedDeviceAllowList containsObject:v8];
  }

  else
  {
    v10 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Supported device allow list is disabled.", &v13, 2u);
    }

    v9 = 1;
  }

  v11 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138413314;
    v14 = airpodsCopy;
    v15 = 1024;
    v16 = v5 & (isTemporaryPaired ^ 1) & v9;
    v17 = 1024;
    v18 = v5;
    v19 = 1024;
    v20 = isTemporaryPaired;
    v21 = 1024;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "BluetoothDevice (%@) is servicable: (%d) appleAudioDevice: (%d) tempPaired: (%d) allowed: (%d)", &v13, 0x24u);
  }

  return v5 & (isTemporaryPaired ^ 1) & v9;
}

- (BOOL)_isBeatsDevice:(id)device
{
  deviceCopy = device;
  productId = [deviceCopy productId];
  if (productId == 8209)
  {
    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = deviceCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device (%@) is a AirPods-like Beats device that does not report as an Apple Audio Device", &v7, 0xCu);
    }
  }

  return productId == 8209;
}

- (void)_bluetoothPairingStatusChanged:(id)changed
{
  v4 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DADeviceObserverAirpods recieved notification that bluetooth statuses have changed. Looking for any new devices...", v5, 2u);
  }

  [(DADeviceObserverAirpods *)self _purgeUnpairedDevices];
  [(DADeviceObserverAirpods *)self _forceDiscoverAllDevices];
  [(DADeviceObserverAirpods *)self _updateHandlers];
}

- (void)_forceDiscoverAllDevices
{
  devices = [(DADeviceObserverAirpods *)self devices];
  objc_sync_enter(devices);
  btManager = [(DADeviceObserverAirpods *)self btManager];
  pairedDevices = [btManager pairedDevices];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = pairedDevices;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v7)
  {
    v9 = *v15;
    *&v8 = 138412290;
    v13 = v8;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([(DADeviceObserverAirpods *)self _isBluetoothDeviceServicableAirpods:v11, v13, v14])
        {
          v12 = DiagnosticLogHandleForCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v13;
            v19 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "DADeviceObserverAirpods found an AppleAudioDevice: %@", buf, 0xCu);
          }

          [(DADeviceObserverAirpods *)self _addAirpodsDevice:v11];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }

  objc_sync_exit(devices);
}

- (void)_purgeUnpairedDevices
{
  obj = [(DADeviceObserverAirpods *)self devices];
  objc_sync_enter(obj);
  devices = [(DADeviceObserverAirpods *)self devices];
  v4 = [devices copy];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        airpodsDevice = [v9 airpodsDevice];
        paired = [airpodsDevice paired];

        if ((paired & 1) == 0)
        {
          v12 = DiagnosticLogHandleForCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v20 = v9;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Removing Airpods device %@", buf, 0xCu);
          }

          devices2 = [(DADeviceObserverAirpods *)self devices];
          [devices2 removeObject:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }

  objc_sync_exit(obj);
}

- (void)_ensureInitialDevicesFetched
{
  if (![(DADeviceObserverAirpods *)self initialDevicesFetched])
  {
    [(DADeviceObserverAirpods *)self _forceDiscoverAllDevices];

    [(DADeviceObserverAirpods *)self setInitialDevicesFetched:1];
  }
}

- (void)_addAirpodsDevice:(id)device
{
  deviceCopy = device;
  v5 = [(DADeviceObserverAirpods *)self _airpodsDeviceFromDevice:deviceCopy];
  v6 = DiagnosticLogHandleForCategory();
  devices2 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = deviceCopy;
      _os_log_impl(&_mh_execute_header, devices2, OS_LOG_TYPE_DEFAULT, "Adding Bluetooth device: %@", &v10, 0xCu);
    }

    devices = [(DADeviceObserverAirpods *)self devices];
    v9 = [devices containsObject:v5];

    if (v9)
    {
      devices2 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(devices2, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = deviceCopy;
        _os_log_impl(&_mh_execute_header, devices2, OS_LOG_TYPE_DEFAULT, "Connected bluetooth device %@ is already in device list", &v10, 0xCu);
      }
    }

    else
    {
      devices2 = [(DADeviceObserverAirpods *)self devices];
      [devices2 addObject:v5];
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100157C8C(deviceCopy, devices2);
  }
}

- (id)_airpodsDeviceFromDevice:(id)device
{
  deviceCopy = device;
  v4 = NSClassFromString(@"DADeviceAirpods");
  if (v4)
  {
    v5 = [[v4 alloc] initWithBluetoothDevice:deviceCopy];
    if (v5)
    {
      v6 = NSClassFromString(@"DADeviceDecoratorWithUI");
      if (v6)
      {
        v7 = [(objc_class *)v6 performSelector:"decorateWithDevice:" withObject:v5];
      }

      else
      {
        v9 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100157D04(v9);
        }

        v7 = v5;
      }

      goto LABEL_11;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_12;
  }

  v5 = [DADeviceObserverAirpods primarySerialNumberForAirpodsDevice:deviceCopy];
  if (!v5)
  {
    goto LABEL_7;
  }

  v7 = [[DADeviceRepresentation alloc] initWithSerialNumber:v5 isLocal:1 attributes:&__NSDictionary0__struct];
LABEL_11:
  v8 = v7;
LABEL_12:

  return v8;
}

@end