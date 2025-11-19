@interface AXBluetoothDevicesController
- (AXBluetoothDevicesController)init;
- (BOOL)_brailleConfigMatch:(id)a3 withConfig:(id)a4;
- (BOOL)_isBluetoothPowerFooterShowing;
- (BOOL)peripheralMatchesUnadvertisedService:(id)a3;
- (id)allowedServices;
- (id)getDeviceForPeripheral:(id)a3;
- (id)pairedDeviceSpecifiers;
- (id)specifierForDevice:(id)a3;
- (id)specifierImmediatelyPrecedingDevices;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)window;
- (void)_addDevice:(id)a3;
- (void)_cleanupPairing;
- (void)_peripheralDidCompletePairing:(id)a3;
- (void)_pinRequestHandler:(id)a3;
- (void)_removeDevice:(id)a3;
- (void)_setDeviceState:(int)a3 forSpecifier:(id)a4;
- (void)_setupCentralScanning:(BOOL)a3;
- (void)_showBluetoothPowerFooter:(BOOL)a3;
- (void)_showScanningUI:(BOOL)a3;
- (void)_sspConfirmationHandler:(id)a3;
- (void)_sspNumericComparisonHandler:(id)a3;
- (void)_sspPasskeyDisplayHandler:(id)a3;
- (void)_startConnectable;
- (void)_startDiscoverable;
- (void)_startScanning;
- (void)_stopConnectable;
- (void)_stopDiscoverable;
- (void)_stopScanning;
- (void)_updateDevicePosition:(id)a3;
- (void)alertSheetDismissed:(id)a3;
- (void)applicationDidBecomeActive:(id)a3;
- (void)applicationWillResignActive:(id)a3;
- (void)applicationWillTerminate:(id)a3;
- (void)authenticationRequestHandler:(id)a3;
- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6;
- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManager:(id)a3 didUpdatePeripheralConnectionState:(id)a4;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)dealloc;
- (void)deviceConnectedHandler:(id)a3;
- (void)deviceDisconnectedHandler:(id)a3;
- (void)deviceDiscoveredHandler:(id)a3;
- (void)devicePairedHandler:(id)a3;
- (void)deviceRemovedHandler:(id)a3;
- (void)deviceUnpairedHandler:(id)a3;
- (void)deviceUpdatedHandler:(id)a3;
- (void)pairingAgent:(id)a3 peerDidCompletePairing:(id)a4;
- (void)pairingAgent:(id)a3 peerDidFailToCompletePairing:(id)a4 error:(id)a5;
- (void)pairingAgent:(id)a3 peerDidUnpair:(id)a4;
- (void)peripheralConnectionTimeout:(id)a3;
- (void)peripheralDidUpdateName:(id)a3;
- (void)powerChangedHandler:(id)a3;
- (void)reloadSpecifiers;
- (void)setBluetoothIsBusy:(BOOL)a3;
- (void)setMainSpecifiersGroup:(id)a3;
- (void)setScanningEnabled:(BOOL)a3;
- (void)showBluetoothPowerAlert:(BOOL)a3;
- (void)showPairingAlertForPairingAgent:(id)a3 peerDidRequestPairing:(id)a4 type:(int64_t)a5 passkey:(id)a6;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updatePairedDevices;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation AXBluetoothDevicesController

- (AXBluetoothDevicesController)init
{
  v29.receiver = self;
  v29.super_class = AXBluetoothDevicesController;
  v2 = [(AXBluetoothDevicesController *)&v29 init];
  if (v2)
  {
    v3 = +[NSDate date];
    [v3 timeIntervalSince1970];
    srandom(v4);

    v5 = [objc_allocWithZone(NSMutableDictionary) init];
    devicesDict = v2->_devicesDict;
    v2->_devicesDict = v5;

    v7 = [[CBCentralManager alloc] initWithDelegate:v2 queue:&_dispatch_main_q options:0];
    centralManager = v2->_centralManager;
    v2->_centralManager = v7;

    v9 = [(CBCentralManager *)v2->_centralManager sharedPairingAgent];
    [v9 setDelegate:v2];

    [(AXBluetoothDevicesController *)v2 setAuthorizedServices:0];
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v2 selector:"applicationWillResignActive:" name:UIApplicationWillResignActiveNotification object:0];

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v2 selector:"applicationWillTerminate:" name:UIApplicationWillTerminateNotification object:0];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v2 selector:"applicationDidBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v2 selector:"powerChangedHandler:" name:VOSBluetoothPowerChangedNotification object:0];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v2 selector:"powerChangedHandler:" name:VOSBluetoothAvailabilityChangedNotification object:0];

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v2 selector:"deviceUpdatedHandler:" name:VOSBluetoothDeviceUpdatedNotification object:0];

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v2 selector:"deviceDiscoveredHandler:" name:VOSBluetoothDeviceDiscoveredNotification object:0];

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v2 selector:"deviceRemovedHandler:" name:VOSBluetoothDeviceRemovedNotification object:0];

    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:v2 selector:"deviceUnpairedHandler:" name:VOSBluetoothDeviceUnpairedNotification object:0];

    v19 = +[NSNotificationCenter defaultCenter];
    [v19 addObserver:v2 selector:"deviceConnectedHandler:" name:VOSBluetoothDeviceConnectSuccessNotification object:0];

    v20 = +[NSNotificationCenter defaultCenter];
    [v20 addObserver:v2 selector:"deviceConnectedHandler:" name:VOSBluetoothDeviceConnectFailedNotification object:0];

    v21 = +[NSNotificationCenter defaultCenter];
    [v21 addObserver:v2 selector:"deviceDisconnectedHandler:" name:VOSBluetoothDeviceDisconnectSuccessNotification object:0];

    v22 = +[NSNotificationCenter defaultCenter];
    [v22 addObserver:v2 selector:"devicePairedHandler:" name:VOSBluetoothPairingPINResultFailedNotification object:0];

    v23 = +[NSNotificationCenter defaultCenter];
    [v23 addObserver:v2 selector:"devicePairedHandler:" name:VOSBluetoothPairingPINResultSuccessNotification object:0];

    v24 = +[NSNotificationCenter defaultCenter];
    [v24 addObserver:v2 selector:"authenticationRequestHandler:" name:VOSBluetoothPairingPINRequestNotification object:0];

    v25 = +[NSNotificationCenter defaultCenter];
    [v25 addObserver:v2 selector:"authenticationRequestHandler:" name:VOSBluetoothPairingUserConfirmationNotification object:0];

    v26 = +[NSNotificationCenter defaultCenter];
    [v26 addObserver:v2 selector:"authenticationRequestHandler:" name:VOSBluetoothPairingUserNumericComparisionNotification object:0];

    v27 = +[NSNotificationCenter defaultCenter];
    [v27 addObserver:v2 selector:"authenticationRequestHandler:" name:VOSBluetoothPairingPassKeyDisplayNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = [(AXBluetoothDevicesController *)self centralManager];
  v5 = [v4 sharedPairingAgent];
  [v5 setDelegate:0];

  v6 = [(AXBluetoothDevicesController *)self centralManager];
  [v6 setDelegate:0];

  [(AXBluetoothDevicesController *)self _stopScanning];
  [(AXBluetoothDevicesController *)self _stopDiscoverable];
  [(AXBluetoothDevicesController *)self _stopConnectable];
  [(VoiceOverBluetoothAlert *)self->_alert dismiss];
  v7.receiver = self;
  v7.super_class = AXBluetoothDevicesController;
  [(AXBluetoothDevicesController *)&v7 dealloc];
}

- (id)allowedServices
{
  v2 = [CBUUID UUIDWithString:CBUUIDHumanInterfaceDeviceServiceString];
  v6[0] = v2;
  v3 = [CBUUID UUIDWithString:@"49535343-FE7D-4AE5-8FA9-9FAFD205E455"];
  v6[1] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:2];

  return v4;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AXBluetoothDevicesController;
  [(AXBluetoothDevicesController *)&v4 viewDidAppear:a3];
  if (!self->_bluetoothInitialized)
  {
    self->_bluetoothInitialized = 1;
    [(AXBluetoothDevicesController *)self _startScanning];
    [(AXBluetoothDevicesController *)self _startDiscoverable];
    [(AXBluetoothDevicesController *)self _startConnectable];
  }
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = AXBluetoothDevicesController;
  [(AXBluetoothDevicesController *)&v6 viewDidLoad];
  v3 = [(AXBluetoothDevicesController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXUIVoiceOverBluetoothDeviceTableCell cellReuseIdentifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];
}

- (void)applicationWillTerminate:(id)a3
{
  [(AXBluetoothDevicesController *)self _stopScanning];
  [(AXBluetoothDevicesController *)self _stopDiscoverable];

  [(AXBluetoothDevicesController *)self _stopConnectable];
}

- (void)applicationWillResignActive:(id)a3
{
  [(AXBluetoothDevicesController *)self _stopScanning];
  [(AXBluetoothDevicesController *)self _stopDiscoverable];
  [(AXBluetoothDevicesController *)self _stopConnectable];
  self->_togglingPower = 0;
  [*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__table] setUserInteractionEnabled:1];
  [(AXBluetoothDevicesController *)self setBluetoothIsBusy:0];

  [(AXBluetoothDevicesController *)self _cleanupPairing];
}

- (void)applicationDidBecomeActive:(id)a3
{
  [(AXBluetoothDevicesController *)self reloadSpecifiers];
  [(AXBluetoothDevicesController *)self _startScanning];
  [(AXBluetoothDevicesController *)self _startDiscoverable];

  [(AXBluetoothDevicesController *)self _startConnectable];
}

- (void)powerChangedHandler:(id)a3
{
  v5 = a3;
  v6 = +[VOSBluetoothManager sharedInstance];
  v7 = [v6 enabled];

  v8 = +[AXSubsystemBrailleHardware sharedInstance];
  v9 = [v8 ignoreLogging];

  if ((v9 & 1) == 0)
  {
    v10 = +[AXSubsystemBrailleHardware identifier];
    v11 = AXLoggerForFacility();

    v12 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = AXColorizeFormatLog();
      v14 = NSStringFromSelector(a2);
      v17 = [v5 name];
      v15 = _AXStringForArgs();

      if (os_log_type_enabled(v11, v12))
      {
        *buf = 138543362;
        v19 = v15;
        _os_log_impl(&dword_0, v11, v12, "%{public}@", buf, 0xCu);
      }
    }
  }

  if (self->_power != v7)
  {
    self->_power = v7;
    self->_togglingPower = 0;
    [*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__table] setUserInteractionEnabled:1];
    [(AXBluetoothDevicesController *)self setBluetoothIsBusy:0];
    power = self->_power;
    [(AXBluetoothDevicesController *)self _showScanningUI:self->_power];
    [(AXBluetoothDevicesController *)self showBluetoothPowerAlert:!power];
  }
}

- (void)deviceUpdatedHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_power && !self->_togglingPower)
  {
    v13 = v4;
    v4 = [(AXBluetoothDevicesController *)self scanningEnabled];
    v5 = v13;
    if (v4)
    {
      v6 = [v13 object];
      devicesDict = self->_devicesDict;
      v8 = [v6 identifier];
      v9 = [(NSMutableDictionary *)devicesDict objectForKey:v8];

      if (v9)
      {
        v10 = [v6 identifier];
        v11 = [(AXBluetoothDevicesController *)self specifierForID:v10];

        v12 = [v6 name];
        [v11 setName:v12];
        [v11 setProperty:v12 forKey:PSTitleKey];
        [(AXBluetoothDevicesController *)self _updateDevicePosition:v6];
      }

      else
      {
        [(AXBluetoothDevicesController *)self _addDevice:v6];
      }

      v5 = v13;
    }
  }

  _objc_release_x1(v4, v5);
}

- (void)deviceDiscoveredHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_power && !self->_togglingPower)
  {
    v7 = v4;
    v4 = [(AXBluetoothDevicesController *)self scanningEnabled];
    v5 = v7;
    if (v4)
    {
      v6 = [v7 object];
      if ([v6 isNameCached])
      {
        [(AXBluetoothDevicesController *)self _addDevice:v6];
      }

      v5 = v7;
    }
  }

  _objc_release_x1(v4, v5);
}

- (void)deviceRemovedHandler:(id)a3
{
  v5 = a3;
  v6 = [v5 object];
  v7 = +[AXSubsystemBrailleHardware sharedInstance];
  v8 = [v7 ignoreLogging];

  if ((v8 & 1) == 0)
  {
    v9 = +[AXSubsystemBrailleHardware identifier];
    v10 = AXLoggerForFacility();

    v11 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = AXColorizeFormatLog();
      v13 = NSStringFromSelector(a2);
      v14 = [v5 name];
      v19 = [v6 name];
      v15 = _AXStringForArgs();

      if (os_log_type_enabled(v10, v11))
      {
        *buf = 138543362;
        v21 = v15;
        _os_log_impl(&dword_0, v10, v11, "%{public}@", buf, 0xCu);
      }
    }
  }

  if (self->_power && !self->_togglingPower)
  {
    if ([(AXBluetoothDevicesController *)self scanningEnabled])
    {
      if (([v6 paired] & 1) == 0)
      {
        v16 = +[VOSBluetoothManager sharedInstance];
        v17 = [v16 connectingDevices];
        v18 = [v17 containsObject:v6];

        if ((v18 & 1) == 0)
        {
          [(AXBluetoothDevicesController *)self _removeDevice:v6];
        }
      }
    }
  }
}

- (void)deviceUnpairedHandler:(id)a3
{
  v5 = a3;
  v6 = [v5 object];
  v7 = AXLogBrailleHW();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v9 = [v5 name];
    v10 = [v6 name];
    v15 = 138543874;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ received %{public}@ for device %{public}@", &v15, 0x20u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (+[VOSBluetoothManager sharedInstance](VOSBluetoothManager, "sharedInstance"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 wasDeviceDiscovered:v6], v11, (v12))
  {
    v13 = AXLogBrailleHW();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = v6;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Device %{public}@ was unpaired and was discovered - updating position", &v15, 0xCu);
    }

    [(AXBluetoothDevicesController *)self _updateDevicePosition:v6];
  }

  else
  {
    v14 = AXLogBrailleHW();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = v6;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Device %{public}@ was unpaired and wasn't discovered - removing", &v15, 0xCu);
    }

    [(AXBluetoothDevicesController *)self _removeDevice:v6];
  }
}

- (void)deviceConnectedHandler:(id)a3
{
  v5 = a3;
  v6 = [v5 object];
  v7 = AXLogBrailleHW();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v9 = [v5 name];
    v10 = [v6 name];
    v26 = 138543874;
    v27 = v8;
    v28 = 2114;
    v29 = v9;
    v30 = 2114;
    v31 = v10;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ received %{public}@ for device %{public}@", &v26, 0x20u);
  }

  if (self->_power && !self->_togglingPower && -[AXBluetoothDevicesController scanningEnabled](self, "scanningEnabled") || [v6 isBTLEDevice])
  {
    v11 = [v6 address];
    v12 = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
    v13 = [v11 isEqualToString:v12];

    if (!v13)
    {
LABEL_19:
      v25 = [(AXBluetoothDevicesController *)self specifierForID:v11];
      [(AXBluetoothDevicesController *)self _setDeviceState:5 forSpecifier:v25];
      [(AXBluetoothDevicesController *)self reloadSpecifierID:v11];

      goto LABEL_20;
    }

    v14 = [v5 name];
    v15 = [v14 isEqualToString:VOSBluetoothDeviceConnectSuccessNotification];

    if (v15)
    {
      [(AXBluetoothDevicesController *)self deviceConnected:v6];
LABEL_16:
      v24 = AXLogBrailleHW();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Setting BT busy back to no on device connect", &v26, 2u);
      }

      [(AXBluetoothDevicesController *)self setBluetoothIsBusy:0];
      goto LABEL_19;
    }

    [(AXBluetoothDevicesController *)self _cleanupPairing];
    v16 = [(PSSpecifier *)self->_currentDeviceSpecifier userInfo];
    v17 = [v16 objectForKey:@"PIN-ended"];

    v18 = [v5 name];
    if ([v18 isEqualToString:VOSBluetoothDeviceConnectFailedNotification] && !self->_alert)
    {
      v19 = [v17 isEqualToString:@"cancelled"];

      if (v19)
      {
LABEL_15:

        goto LABEL_16;
      }

      v20 = [objc_allocWithZone(VoiceOverBluetoothAlert) initWithDevice:v6];
      alert = self->_alert;
      self->_alert = v20;

      [(VoiceOverBluetoothAlert *)self->_alert setDelegate:self];
      v22 = self->_alert;
      v18 = [v5 userInfo];
      v23 = [v18 objectForKey:VOSBluetoothErrorKey];
      [(VoiceOverBluetoothAlert *)v22 showAlertWithResult:v23];
    }

    goto LABEL_15;
  }

LABEL_20:
}

- (id)window
{
  v2 = [(AXBluetoothDevicesController *)self view];
  v3 = [v2 window];

  return v3;
}

- (void)deviceDisconnectedHandler:(id)a3
{
  v5 = a3;
  v6 = [v5 object];
  v7 = +[AXSubsystemBrailleHardware sharedInstance];
  v8 = [v7 ignoreLogging];

  if ((v8 & 1) == 0)
  {
    v9 = +[AXSubsystemBrailleHardware identifier];
    v10 = AXLoggerForFacility();

    v11 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = AXColorizeFormatLog();
      v13 = NSStringFromSelector(a2);
      v14 = [v5 name];
      v20 = [v6 name];
      v15 = _AXStringForArgs();

      if (os_log_type_enabled(v10, v11))
      {
        *buf = 138543362;
        v22 = v15;
        _os_log_impl(&dword_0, v10, v11, "%{public}@", buf, 0xCu);
      }
    }
  }

  if (self->_power && !self->_togglingPower)
  {
    if ([(AXBluetoothDevicesController *)self scanningEnabled])
    {
      devicesDict = self->_devicesDict;
      v17 = [v6 identifier];
      v18 = [(NSMutableDictionary *)devicesDict objectForKey:v17];

      if (v18)
      {
        v19 = [v6 identifier];
        [(AXBluetoothDevicesController *)self reloadSpecifierID:v19];
      }
    }
  }
}

- (void)devicePairedHandler:(id)a3
{
  v5 = a3;
  v6 = [v5 object];
  v7 = +[AXSubsystemBrailleHardware sharedInstance];
  v8 = [v7 ignoreLogging];

  if ((v8 & 1) == 0)
  {
    v9 = +[AXSubsystemBrailleHardware identifier];
    v10 = AXLoggerForFacility();

    v11 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = AXColorizeFormatLog();
      v13 = NSStringFromSelector(a2);
      v14 = [v5 name];
      [v6 name];
      v42 = v41 = v14;
      v40 = v13;
      v15 = _AXStringForArgs();

      if (os_log_type_enabled(v10, v11))
      {
        *buf = 138543362;
        v44 = v15;
        _os_log_impl(&dword_0, v10, v11, "%{public}@", buf, 0xCu);
      }
    }
  }

  v16 = [(PSSpecifier *)self->_currentDeviceSpecifier userInfo:v40];
  v17 = [v16 objectForKey:@"PIN-ended"];

  if (self->_power && !self->_togglingPower && [(AXBluetoothDevicesController *)self scanningEnabled])
  {
    v18 = [v6 address];
    v19 = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
    v20 = [v18 isEqualToString:v19];

    if (v20)
    {
      [(AXBluetoothDevicesController *)self _cleanupPairing];
      v21 = [(PSSpecifier *)self->_currentDeviceSpecifier userInfo];
      v22 = [v21 objectForKey:@"reverse-pairing"];
      v23 = [v22 BOOLValue];

      if (v23)
      {
        [(AXBluetoothDevicesController *)self setBluetoothIsBusy:0];
      }

      v24 = [v5 name];
      v25 = [v24 isEqualToString:VOSBluetoothPairingPINResultFailedNotification];

      if (!v25)
      {
        [(AXBluetoothDevicesController *)self _updateDevicePosition:v6];
        goto LABEL_34;
      }

      if (self->_alert || ([v17 isEqualToString:@"cancelled"] & 1) != 0)
      {
LABEL_29:
        v35 = +[VOSBluetoothManager sharedInstance];
        if ([v35 wasDeviceDiscovered:v6])
        {
        }

        else
        {
          v36 = [v6 paired];

          if ((v36 & 1) == 0)
          {
            [(AXBluetoothDevicesController *)self _removeDevice:v6];
            goto LABEL_34;
          }
        }

        v37 = [v6 address];
        [(AXBluetoothDevicesController *)self reloadSpecifierID:v37];

LABEL_34:
        v38 = [v6 address];
        v39 = [(AXBluetoothDevicesController *)self specifierForID:v38];

        [(AXBluetoothDevicesController *)self _setDeviceState:2 forSpecifier:v39];
        goto LABEL_35;
      }

      v26 = [objc_allocWithZone(VoiceOverBluetoothAlert) initWithDevice:v6];
      alert = self->_alert;
      self->_alert = v26;

      [(VoiceOverBluetoothAlert *)self->_alert setDelegate:self];
      if (v17 || ((sspAlert = self->_sspAlert) == 0 || -[VOSBluetoothSSPPairingRequest pairingStyle](sspAlert, "pairingStyle") == 2 || -[VOSBluetoothSSPPairingRequest pairingStyle](self->_sspAlert, "pairingStyle") == 3) && (-[AXBluetoothDevicesController rootController](self, "rootController"), v29 = objc_claimAutoreleasedReturnValue(), [v29 visibleViewController], v30 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v30, v29, (isKindOfClass & 1) == 0))
      {
        if (![v17 isEqualToString:@"entered"])
        {
          v34 = [v5 userInfo];
          v33 = [v34 objectForKey:VOSBluetoothErrorKey];

          goto LABEL_28;
        }

        v32 = 156;
      }

      else
      {
        v32 = 1;
      }

      v33 = [NSNumber numberWithUnsignedInt:v32];
LABEL_28:
      [(VoiceOverBluetoothAlert *)self->_alert showAlertWithResult:v33];

      goto LABEL_29;
    }

    [(AXBluetoothDevicesController *)self _addDevice:v6];
    [(AXBluetoothDevicesController *)self _updateDevicePosition:v6];
  }

LABEL_35:
}

- (void)authenticationRequestHandler:(id)a3
{
  v5 = a3;
  if (!self->_power || self->_togglingPower || ![(AXBluetoothDevicesController *)self scanningEnabled])
  {
    goto LABEL_13;
  }

  v6 = [(AXBluetoothDevicesController *)self rootController];
  v7 = [v6 visibleViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || self->_sspAlert)
  {

    goto LABEL_7;
  }

  alert = self->_alert;

  if (!alert)
  {
    v16 = [v5 name];
    v108 = VOSBluetoothPairingUserNumericComparisionNotification;
    if ([v16 isEqualToString:?])
    {
    }

    else
    {
      v17 = [v5 name];
      v18 = [v17 isEqualToString:VOSBluetoothPairingPassKeyDisplayNotification];

      if (!v18)
      {
        v11 = [v5 object];
LABEL_20:
        v20 = +[AXSubsystemBrailleHardware sharedInstance];
        v21 = [v20 ignoreLogging];

        if ((v21 & 1) == 0)
        {
          v22 = +[AXSubsystemBrailleHardware identifier];
          v23 = AXLoggerForFacility();

          v24 = AXOSLogLevelFromAXLogLevel();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = AXColorizeFormatLog();
            NSStringFromSelector(a2);
            v26 = oslog = v23;
            [v5 name];
            v27 = v105 = v24;
            [v11 name];
            v98 = v96 = v27;
            v93 = v26;
            type = v25;
            v28 = _AXStringForArgs();

            v23 = oslog;
            if (os_log_type_enabled(oslog, v105))
            {
              *buf = 138543362;
              v110 = v28;
              _os_log_impl(&dword_0, oslog, v105, "%{public}@", buf, 0xCu);
            }
          }
        }

        [(AXBluetoothDevicesController *)self setBluetoothIsBusy:1, v93, v96, v98];
        currentDeviceSpecifier = self->_currentDeviceSpecifier;
        if (currentDeviceSpecifier)
        {
          v30 = [(PSSpecifier *)currentDeviceSpecifier userInfo];
          [v30 removeObjectForKey:@"reverse-pairing"];
        }

        else
        {
          if ([v11 majorClass]== 256)
          {
            v31 = [v5 userInfo];
            v32 = [v31 valueForKey:@"delayedPairingForNR"];

            if (!v32)
            {
              v78 = +[AXSubsystemBrailleHardware sharedInstance];
              v79 = [v78 ignoreLogging];

              if ((v79 & 1) == 0)
              {
                v80 = +[AXSubsystemBrailleHardware identifier];
                v81 = AXLoggerForFacility();

                v82 = AXOSLogLevelFromAXLogLevel();
                if (os_log_type_enabled(v81, v82))
                {
                  v83 = AXColorizeFormatLog();
                  v84 = _AXStringForArgs();
                  if (os_log_type_enabled(v81, v82))
                  {
                    *buf = 138543362;
                    v110 = v84;
                    _os_log_impl(&dword_0, v81, v82, "%{public}@", buf, 0xCu);
                  }
                }
              }

              v85 = [v5 userInfo];
              v61 = [NSMutableDictionary dictionaryWithDictionary:v85];

              [v61 setValue:&stru_25D420 forKey:@"delayedPairingForNR"];
              v86 = [v5 name];
              v87 = [v5 object];
              v88 = [NSNotification notificationWithName:v86 object:v87 userInfo:v61];
              [(AXBluetoothDevicesController *)self performSelector:"authenticationRequestHandler:" withObject:v88 afterDelay:1.0];

              goto LABEL_75;
            }
          }

          v33 = [v11 address];
          v30 = [(AXBluetoothDevicesController *)self specifierForID:v33];

          v34 = +[AXSubsystemBrailleHardware sharedInstance];
          v35 = [v34 ignoreLogging];

          if (v30)
          {
            if ((v35 & 1) == 0)
            {
              v36 = +[AXSubsystemBrailleHardware identifier];
              v37 = AXLoggerForFacility();

              v38 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v37, v38))
              {
                AXColorizeFormatLog();
                v39 = v99 = v37;
                v94 = NSStringFromSelector(a2);
                v97 = v30;
                osloga = v39;
                v37 = v99;
                v106 = _AXStringForArgs();

                if (os_log_type_enabled(v99, v38))
                {
                  *buf = 138543362;
                  v110 = v106;
                  _os_log_impl(&dword_0, v99, v38, "%{public}@", buf, 0xCu);
                }
              }
            }

            objc_storeStrong(&self->_currentDeviceSpecifier, v30);
            [(AXBluetoothDevicesController *)self reloadSpecifier:self->_currentDeviceSpecifier];
          }

          else
          {
            if ((v35 & 1) == 0)
            {
              v40 = +[AXSubsystemBrailleHardware identifier];
              v41 = AXLoggerForFacility();

              v42 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v41, v42))
              {
                AXColorizeFormatLog();
                v43 = v100 = v41;
                v94 = NSStringFromSelector(a2);
                oslogb = v43;
                v41 = v100;
                v107 = _AXStringForArgs();

                if (os_log_type_enabled(v100, v42))
                {
                  *buf = 138543362;
                  v110 = v107;
                  _os_log_impl(&dword_0, v100, v42, "%{public}@", buf, 0xCu);
                }
              }
            }

            v44 = [(AXBluetoothDevicesController *)self specifierForDevice:v11, v94];
            v45 = self->_currentDeviceSpecifier;
            self->_currentDeviceSpecifier = v44;

            [(AXBluetoothDevicesController *)self _addDevice:v11];
          }

          v46 = [(PSSpecifier *)self->_currentDeviceSpecifier userInfo:v94];
          [v46 setObject:kCFBooleanTrue forKey:@"reverse-pairing"];
        }

        v47 = [(PSSpecifier *)self->_currentDeviceSpecifier userInfo];
        [v47 removeObjectForKey:@"PIN-ended"];

        if (!self->_currentDeviceSpecifier || (-[NSObject address](v11, "address"), v48 = objc_claimAutoreleasedReturnValue(), -[PSSpecifier identifier](self->_currentDeviceSpecifier, "identifier"), v49 = objc_claimAutoreleasedReturnValue(), v50 = [v48 isEqualToString:v49], v49, v48, !v50))
        {
          v67 = +[AXSubsystemBrailleHardware sharedInstance];
          v68 = [v67 ignoreLogging];

          if ((v68 & 1) == 0)
          {
            v69 = +[AXSubsystemBrailleHardware identifier];
            v70 = AXLoggerForFacility();

            v71 = AXOSLogLevelFromAXLogLevel();
            if (os_log_type_enabled(v70, v71))
            {
              v72 = AXColorizeFormatLog();
              v95 = NSStringFromSelector(a2);
              v73 = _AXStringForArgs();

              if (os_log_type_enabled(v70, v71))
              {
                *buf = 138543362;
                v110 = v73;
                _os_log_impl(&dword_0, v70, v71, "%{public}@", buf, 0xCu);
              }
            }
          }

          goto LABEL_12;
        }

        if ([v11 type]== 24)
        {
          v51 = [v5 name];
          v52 = VOSBluetoothPairingPINRequestNotification;
          v53 = [v51 isEqualToString:VOSBluetoothPairingPINRequestNotification];

          if (v53)
          {
            v54 = +[AXSubsystemBrailleHardware sharedInstance];
            v55 = [v54 ignoreLogging];

            if ((v55 & 1) == 0)
            {
              v56 = +[AXSubsystemBrailleHardware identifier];
              v57 = AXLoggerForFacility();

              v58 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v57, v58))
              {
                v59 = AXColorizeFormatLog();
                v60 = _AXStringForArgs();
                if (os_log_type_enabled(v57, v58))
                {
                  *buf = 138543362;
                  v110 = v60;
                  _os_log_impl(&dword_0, v57, v58, "%{public}@", buf, 0xCu);
                }
              }
            }

            v61 = [NSNumber numberWithInt:(random() % 10000)];
            v62 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%04u", [v61 unsignedIntValue]);
            [v11 setPIN:v62];

            v63 = [objc_allocWithZone(VOSBluetoothSSPPairingRequest) initWithDevice:v11 andSpecifier:self->_currentDeviceSpecifier];
            sspAlert = self->_sspAlert;
            self->_sspAlert = v63;

            [(VOSBluetoothSSPPairingRequest *)self->_sspAlert setPairingStyle:3 andPasskey:v61];
            v65 = self->_sspAlert;
            v66 = [(AXBluetoothDevicesController *)self window];
            [(VOSBluetoothSSPPairingRequest *)v65 showWithWindow:v66];

LABEL_75:
LABEL_12:

            goto LABEL_13;
          }
        }

        else
        {
          v52 = VOSBluetoothPairingPINRequestNotification;
        }

        v74 = [v5 name];
        v75 = [v74 isEqualToString:v52];

        if (v75)
        {
          [(AXBluetoothDevicesController *)self _pinRequestHandler:v5];
        }

        else
        {
          v76 = [v5 name];
          v77 = [v76 isEqualToString:VOSBluetoothPairingUserConfirmationNotification];

          if (v77)
          {
            [(AXBluetoothDevicesController *)self _sspConfirmationHandler:v5];
          }

          else
          {
            v89 = [v5 name];
            v90 = [v89 isEqualToString:v108];

            if (v90)
            {
              [(AXBluetoothDevicesController *)self _sspNumericComparisonHandler:v5];
            }

            else
            {
              v91 = [v5 name];
              v92 = [v91 isEqualToString:VOSBluetoothPairingPassKeyDisplayNotification];

              if (v92)
              {
                [(AXBluetoothDevicesController *)self _sspPasskeyDisplayHandler:v5];
              }
            }
          }
        }

        goto LABEL_12;
      }
    }

    v19 = [v5 object];
    v11 = [v19 valueForKey:@"device"];

    goto LABEL_20;
  }

LABEL_7:
  v8 = +[AXSubsystemBrailleHardware sharedInstance];
  v9 = [v8 ignoreLogging];

  if ((v9 & 1) == 0)
  {
    v10 = +[AXSubsystemBrailleHardware identifier];
    v11 = AXLoggerForFacility();

    v12 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = AXColorizeFormatLog();
      v14 = _AXStringForArgs();
      if (os_log_type_enabled(v11, v12))
      {
        *buf = 138543362;
        v110 = v14;
        _os_log_impl(&dword_0, v11, v12, "%{public}@", buf, 0xCu);
      }
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (void)_pinRequestHandler:(id)a3
{
  v5 = a3;
  v6 = [v5 object];
  v7 = +[AXSubsystemBrailleHardware sharedInstance];
  v8 = [v7 ignoreLogging];

  if ((v8 & 1) == 0)
  {
    v9 = +[AXSubsystemBrailleHardware identifier];
    v10 = AXLoggerForFacility();

    v11 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = AXColorizeFormatLog();
      v13 = NSStringFromSelector(a2);
      v14 = [v5 name];
      v18 = [v6 name];
      v15 = _AXStringForArgs();

      if (os_log_type_enabled(v10, v11))
      {
        *buf = 138543362;
        v20 = v15;
        _os_log_impl(&dword_0, v10, v11, "%{public}@", buf, 0xCu);
      }
    }
  }

  v16 = [objc_allocWithZone(AXUIVoiceOverBluetoothPairSetup) init];
  [(AXBluetoothDevicesController *)self setShowingSetupController:1];
  v17 = [(AXBluetoothDevicesController *)self rootController];
  [v16 setRootController:v17];

  [v16 setParentController:self];
  [v16 setSpecifier:self->_currentDeviceSpecifier];
  [(PSSpecifier *)self->_currentDeviceSpecifier setTarget:self];
  [(AXBluetoothDevicesController *)self showController:v16 animate:1];
}

- (void)_sspConfirmationHandler:(id)a3
{
  v5 = a3;
  v6 = [v5 object];
  v7 = +[AXSubsystemBrailleHardware sharedInstance];
  v8 = [v7 ignoreLogging];

  if ((v8 & 1) == 0)
  {
    v9 = +[AXSubsystemBrailleHardware identifier];
    v10 = AXLoggerForFacility();

    v11 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = AXColorizeFormatLog();
      v13 = NSStringFromSelector(a2);
      v14 = [v5 name];
      v20 = [v6 name];
      v15 = _AXStringForArgs();

      if (os_log_type_enabled(v10, v11))
      {
        *buf = 138543362;
        v22 = v15;
        _os_log_impl(&dword_0, v10, v11, "%{public}@", buf, 0xCu);
      }
    }
  }

  v16 = [objc_allocWithZone(VOSBluetoothSSPPairingRequest) initWithDevice:v6 andSpecifier:self->_currentDeviceSpecifier];
  sspAlert = self->_sspAlert;
  self->_sspAlert = v16;

  [(VOSBluetoothSSPPairingRequest *)self->_sspAlert setPairingStyle:1 andPasskey:0];
  v18 = self->_sspAlert;
  v19 = [(AXBluetoothDevicesController *)self window];
  [(VOSBluetoothSSPPairingRequest *)v18 showWithWindow:v19];
}

- (void)_sspNumericComparisonHandler:(id)a3
{
  v5 = a3;
  v6 = [v5 object];
  v7 = [v6 valueForKey:@"device"];
  v8 = [v6 valueForKey:@"value"];
  v9 = +[AXSubsystemBrailleHardware sharedInstance];
  v10 = [v9 ignoreLogging];

  if ((v10 & 1) == 0)
  {
    v11 = +[AXSubsystemBrailleHardware identifier];
    v12 = AXLoggerForFacility();

    v13 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v12, v13))
    {
      AXColorizeFormatLog();
      v14 = v23 = v13;
      v15 = NSStringFromSelector(a2);
      v16 = [v5 name];
      v22 = [v7 name];
      v24 = v14;
      v17 = _AXStringForArgs();

      if (os_log_type_enabled(v12, v23))
      {
        *buf = 138543362;
        v26 = v17;
        _os_log_impl(&dword_0, v12, v23, "%{public}@", buf, 0xCu);
      }
    }
  }

  v18 = [objc_allocWithZone(VOSBluetoothSSPPairingRequest) initWithDevice:v7 andSpecifier:self->_currentDeviceSpecifier];
  sspAlert = self->_sspAlert;
  self->_sspAlert = v18;

  [(VOSBluetoothSSPPairingRequest *)self->_sspAlert setPairingStyle:0 andPasskey:v8];
  v20 = self->_sspAlert;
  v21 = [(AXBluetoothDevicesController *)self window];
  [(VOSBluetoothSSPPairingRequest *)v20 showWithWindow:v21];
}

- (void)_sspPasskeyDisplayHandler:(id)a3
{
  v5 = a3;
  v6 = [v5 object];
  v7 = [v6 valueForKey:@"device"];
  v8 = [v6 valueForKey:@"value"];
  v9 = +[AXSubsystemBrailleHardware sharedInstance];
  v10 = [v9 ignoreLogging];

  if ((v10 & 1) == 0)
  {
    v11 = +[AXSubsystemBrailleHardware identifier];
    v12 = AXLoggerForFacility();

    v13 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v12, v13))
    {
      AXColorizeFormatLog();
      v14 = v23 = v13;
      v15 = NSStringFromSelector(a2);
      v16 = [v5 name];
      v22 = [v7 name];
      v24 = v14;
      v17 = _AXStringForArgs();

      if (os_log_type_enabled(v12, v23))
      {
        *buf = 138543362;
        v26 = v17;
        _os_log_impl(&dword_0, v12, v23, "%{public}@", buf, 0xCu);
      }
    }
  }

  v18 = [objc_allocWithZone(VOSBluetoothSSPPairingRequest) initWithDevice:v7 andSpecifier:self->_currentDeviceSpecifier];
  sspAlert = self->_sspAlert;
  self->_sspAlert = v18;

  [(VOSBluetoothSSPPairingRequest *)self->_sspAlert setPairingStyle:2 andPasskey:v8];
  v20 = self->_sspAlert;
  v21 = [(AXBluetoothDevicesController *)self window];
  [(VOSBluetoothSSPPairingRequest *)v20 showWithWindow:v21];
}

- (void)_addDevice:(id)a3
{
  v4 = a3;
  if ([v4 isClassicDevice]&& ![(AXBluetoothDevicesController *)self shouldAddClassicDevice:v4])
  {
    v8 = AXLogBrailleHW();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v4;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Not addding classic device: %@", buf, 0xCu);
    }

    goto LABEL_31;
  }

  v5 = [v4 isBTLEDevice];
  if (!v5 || (-[NSObject name](v4, "name"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 containsString:@"Apple Pencil"], v6, (v7 & 1) == 0))
  {
    v8 = [v4 identifier];
    v9 = AXLogBrailleHW();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v39 = v8;
      v40 = 2112;
      v41 = v4;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Device id: %@ %@", buf, 0x16u);
    }

    if ([v8 length])
    {
      v10 = [(NSMutableDictionary *)self->_devicesDict objectForKey:v8];

      if (!v10)
      {
        v11 = [(AXBluetoothDevicesController *)self specifierForDevice:v4];
        v12 = AXLogBrailleHW();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v39 = v11;
          v40 = 2112;
          v41 = v4;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Spec: %@ %@", buf, 0x16u);
        }

        v13 = [(NSMutableDictionary *)self->_devicesDict count];
        [(NSMutableDictionary *)self->_devicesDict setObject:v4 forKey:v8];
        if (v13)
        {
          v14 = [*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers] count];
          v15 = [objc_allocWithZone(NSMutableArray) init];
          v16 = v15;
          if (v14)
          {
            v35 = v15;
            v34 = v11;
            v17 = 0;
            v18 = 0;
            do
            {
              v19 = [(AXBluetoothDevicesController *)self specifierAtIndex:v17];
              v20 = [v19 userInfo];
              v21 = [v20 objectForKey:@"bt-device"];

              if (v21)
              {
                if ([v21 paired])
                {
                  ++v18;
                }

                else
                {
                  [v35 addObject:v21];
                }
              }

              ++v17;
            }

            while (v14 != v17);
            v22 = v18 + 1;
            v11 = v34;
            v16 = v35;
          }

          else
          {
            v22 = 1;
          }

          [v16 addObject:v4];
          [v16 sortUsingSelector:"compare:"];
          v28 = [(NSMutableArray *)self->_deviceSpecifiersGroup objectAtIndex:0];
          v29 = [(AXBluetoothDevicesController *)self indexOfSpecifier:v28];
          v30 = [v16 indexOfObject:v4]+ v22;

          v31 = AXLogBrailleHW();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = [NSNumber numberWithUnsignedInteger:&v29[v30]];
            *buf = 138412546;
            v39 = v32;
            v40 = 2112;
            v41 = v16;
            _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "Insert device: %@ : %@", buf, 0x16u);
          }

          [(AXBluetoothDevicesController *)self insertSpecifier:v11 atIndex:&v29[v30] animated:1];
        }

        else
        {
          v23 = [(AXBluetoothDevicesController *)self specifierForID:@"PLACEHOLDER"];
          v16 = v23;
          if (v23)
          {
            v37 = v23;
            v24 = [NSArray arrayWithObjects:&v37 count:1];
            v36 = v11;
            v25 = [NSArray arrayWithObjects:&v36 count:1];
            [(AXBluetoothDevicesController *)self replaceContiguousSpecifiers:v24 withSpecifiers:v25 animated:1];

            v26 = [(AXBluetoothDevicesController *)self specifierForID:@"DEVICES"];
            v27 = [v26 propertyForKey:@"VoiceOverTextSpinnerView"];
            [v27 showSpinner];
          }
        }

        if (v5)
        {
          v33 = +[VOSBluetoothManager sharedInstance];
          [v33 postNotificationName:VOSBluetoothDeviceConnectSuccessNotification object:v4];
        }
      }
    }

LABEL_31:
  }
}

- (void)_removeDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(NSMutableDictionary *)self->_devicesDict objectForKey:v5];

  if (v6)
  {
    v7 = [(AXBluetoothDevicesController *)self specifierForID:v5, 0, 0];
    v8 = [(AXBluetoothDevicesController *)self indexOfSpecifierID:v5];
    if (v7 && v7 == self->_currentDeviceSpecifier)
    {
      [v4 disconnect];
      [(AXBluetoothDevicesController *)self setBluetoothIsBusy:0];
    }

    [(AXBluetoothDevicesController *)self getGroup:&v15 row:&v14 ofSpecifierAtIndex:v8];
    [(NSMutableDictionary *)self->_devicesDict removeObjectForKey:v5];
    if ([(NSMutableDictionary *)self->_devicesDict count])
    {
      [(AXBluetoothDevicesController *)self removeSpecifierAtIndex:v8 animated:1];
    }

    else
    {
      if (v7)
      {
        v9 = [NSArray arrayWithObject:v7];
        v10 = [(NSMutableArray *)self->_deviceSpecifiersGroup objectAtIndex:1];
        v11 = [NSArray arrayWithObject:v10];
        [(AXBluetoothDevicesController *)self replaceContiguousSpecifiers:v9 withSpecifiers:v11 animated:1];
      }

      v12 = [(AXBluetoothDevicesController *)self specifierForID:@"DEVICES"];
      v13 = [v12 propertyForKey:@"VoiceOverTextSpinnerView"];
      [v13 hideSpinner];
    }
  }
}

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v7 = +[VOSBluetoothManager sharedInstance];
    [(NSMutableDictionary *)self->_devicesDict removeAllObjects];
    v60 = v7;
    v8 = [v7 enabled];
    self->_power = v8;
    if (!self->_deviceSpecifiersGroup)
    {
      [(AXBluetoothDevicesController *)self _showBluetoothPowerFooter:v8 ^ 1];
      v9 = [objc_allocWithZone(NSMutableDictionary) initWithCapacity:4];
      pairingPINDict = self->_pairingPINDict;
      self->_pairingPINDict = v9;

      v11 = self->_pairingPINDict;
      v12 = objc_opt_class();
      v13 = PSCellClassKey;
      [(NSMutableDictionary *)v11 setObject:v12 forKey:PSCellClassKey];
      v14 = self->_pairingPINDict;
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      [(NSMutableDictionary *)v14 setObject:v16 forKey:PSDetailControllerClassKey];

      v17 = self->_pairingPINDict;
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      [(NSMutableDictionary *)v17 setObject:v19 forKey:PSSetupCustomClassKey];

      [(NSMutableDictionary *)self->_pairingPINDict setObject:@"PSLinkCell" forKey:PSTableCellClassKey];
      v20 = [objc_allocWithZone(NSMutableArray) init];
      deviceSpecifiersGroup = self->_deviceSpecifiersGroup;
      self->_deviceSpecifiersGroup = v20;

      v22 = [(AXBluetoothDevicesController *)self devicesGroupName];
      v23 = [PSSpecifier preferenceSpecifierNamed:v22 target:0 set:0 get:0 detail:0 cell:0 edit:0];

      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      [v23 setProperty:v25 forKey:PSHeaderCellClassGroupKey];

      v26 = PSIDKey;
      [v23 setProperty:@"DEVICES" forKey:PSIDKey];
      [(NSMutableArray *)self->_deviceSpecifiersGroup addObject:v23];
      v27 = settingsLocString(@"SEARCHING", @"VoiceOverBluetoothDevices");
      v28 = [PSSpecifier preferenceSpecifierNamed:v27 target:0 set:0 get:0 detail:0 cell:4 edit:0];

      [v28 setProperty:objc_opt_class() forKey:v13];
      [v28 setProperty:kCFBooleanFalse forKey:PSEnabledKey];
      [v28 setProperty:@"PLACEHOLDER" forKey:v26];
      [(NSMutableArray *)self->_deviceSpecifiersGroup addObject:v28];
    }

    v29 = objc_allocWithZone(NSMutableArray);
    v30 = [(AXBluetoothDevicesController *)self mainSpecifiersGroup];
    v31 = [v29 initWithArray:v30];

    if (self->_power)
    {
      v32 = [(AXBluetoothDevicesController *)self scanningEnabled];
    }

    else
    {
      v32 = 0;
    }

    v33 = [(NSMutableArray *)self->_deviceSpecifiersGroup objectAtIndex:0];
    [v31 addObject:v33];

    v34 = 0;
    if (v32)
    {
      v34 = [(AXBluetoothDevicesController *)self pairedDeviceSpecifiers];
    }

    if ([v34 count])
    {
      [v31 addObjectsFromArray:v34];
      v35 = [v31 specifierForID:@"DEVICES"];
      [v35 setProperty:kCFBooleanTrue forKey:@"VoiceOverTextSpinnerViewEnabled"];
    }

    else
    {
      v35 = [(NSMutableArray *)self->_deviceSpecifiersGroup objectAtIndex:1];
      [v31 addObject:v35];
    }

    if (v32)
    {
      v36 = [v7 connectingDevices];
      v37 = +[AXSubsystemBrailleHardware sharedInstance];
      v38 = [v37 ignoreLogging];

      if ((v38 & 1) == 0)
      {
        v39 = +[AXSubsystemBrailleHardware identifier];
        v40 = AXLoggerForFacility();

        v41 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = AXColorizeFormatLog();
          v43 = NSStringFromSelector(a2);
          v57 = [v36 count];
          v58 = v36;
          v56 = v43;
          v44 = _AXStringForArgs();

          if (os_log_type_enabled(v40, v41))
          {
            *buf = 138543362;
            v67 = v44;
            _os_log_impl(&dword_0, v40, v41, "%{public}@", buf, 0xCu);
          }
        }
      }

      v59 = v34;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v45 = v36;
      v46 = [v45 countByEnumeratingWithState:&v61 objects:v65 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v62;
        do
        {
          for (i = 0; i != v47; i = i + 1)
          {
            if (*v62 != v48)
            {
              objc_enumerationMutation(v45);
            }

            v50 = [*(*(&v61 + 1) + 8 * i) address];
            v51 = [v31 specifierForID:v50];

            if (v51)
            {
              [(AXBluetoothDevicesController *)self setBluetoothIsBusy:1];
              objc_storeStrong(&self->_currentDeviceSpecifier, v51);
            }
          }

          v47 = [v45 countByEnumeratingWithState:&v61 objects:v65 count:16];
        }

        while (v47);
      }

      v34 = v59;
    }

    v52 = [(AXBluetoothDevicesController *)self postDevicesSpecifiersGroup];
    [v31 addObjectsFromArray:v52];

    v53 = *&self->AXUISettingsBaseListController_opaque[v2];
    *&self->AXUISettingsBaseListController_opaque[v2] = v31;
    v54 = v31;

    v4 = *&self->AXUISettingsBaseListController_opaque[v2];
  }

  return v4;
}

- (id)specifierImmediatelyPrecedingDevices
{
  v2 = [(AXBluetoothDevicesController *)self mainSpecifiersGroup];
  v3 = [v2 lastObject];

  return v3;
}

- (BOOL)_isBluetoothPowerFooterShowing
{
  v2 = [(AXBluetoothDevicesController *)self mainSpecifiersGroup];
  v3 = [v2 objectAtIndex:0];

  v4 = [v3 propertyForKey:PSFooterTextGroupKey];
  LOBYTE(v2) = v4 != 0;

  return v2;
}

- (void)_showBluetoothPowerFooter:(BOOL)a3
{
  v3 = a3;
  v5 = [(AXBluetoothDevicesController *)self mainSpecifiersGroup];
  v7 = [v5 objectAtIndex:0];

  if (v3)
  {
    v6 = [(AXBluetoothDevicesController *)self bluetoothPoweredOffFooter];
    [v7 setProperty:v6 forKey:PSFooterTextGroupKey];
  }

  else
  {
    [v7 removePropertyForKey:PSFooterTextGroupKey];
  }
}

- (void)setScanningEnabled:(BOOL)a3
{
  if (self->_scanningEnabled != a3)
  {
    self->_scanningEnabled = a3;
    [(AXBluetoothDevicesController *)self _showScanningUI:?];
  }
}

- (void)updatePairedDevices
{
  v35 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  v4 = [(NSMutableArray *)self->_deviceSpecifiersGroup objectAtIndex:0];
  v5 = [v3 indexOfObject:v4];

  v33 = v5;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v34 = [objc_allocWithZone(NSMutableArray) initWithArray:self->_deviceSpecifiersGroup];
    v6 = [v34 specifierForID:@"DEVICES"];
    v7 = [v6 propertyForKey:@"VoiceOverTextSpinnerView"];
    [v7 hideSpinner];
  }

  else
  {
    v34 = +[NSMutableArray array];
  }

  v36 = self;
  v37 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v8 = *&self->AXUISettingsBaseListController_opaque[v35];
  v9 = [v8 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v44;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v44 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v43 + 1) + 8 * i);
        v14 = [v13 userInfo];
        v15 = [v14 objectForKeyedSubscript:@"bt-device"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          [v37 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v10);
  }

  v17 = self;
  [(AXBluetoothDevicesController *)self removeContiguousSpecifiers:v37];
  v18 = [(AXBluetoothDevicesController *)self pairedDeviceSpecifiers];
  v19 = v34;
  if ([v18 count])
  {
    v20 = [(NSMutableArray *)v36->_deviceSpecifiersGroup objectAtIndex:1];
    v21 = [v34 indexOfObject:v20];

    if (v21 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v22 = v18;
      v23 = [v22 countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v40;
        do
        {
          for (j = 0; j != v24; j = j + 1)
          {
            if (*v40 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v39 + 1) + 8 * j);
            v28 = *&v36->AXUISettingsBaseListController_opaque[v35];
            v38[0] = _NSConcreteStackBlock;
            v38[1] = 3221225472;
            v38[2] = __51__AXBluetoothDevicesController_updatePairedDevices__block_invoke;
            v38[3] = &unk_2575C0;
            v38[4] = v27;
            if (([v28 ax_containsObjectUsingBlock:v38] & 1) == 0)
            {
              [v34 addObject:v27];
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v39 objects:v47 count:16];
        }

        while (v24);
      }

      v17 = v36;
      v19 = v34;
    }

    else
    {
      [v34 replaceObjectsInRange:v21 withObjectsFromArray:{1, v18}];
    }

    v29 = [v19 specifierForID:@"DEVICES"];
    [v29 setProperty:kCFBooleanTrue forKey:@"VoiceOverTextSpinnerViewEnabled"];

    v30 = [v19 specifierForID:@"DEVICES"];
    v31 = [v30 propertyForKey:@"VoiceOverTextSpinnerView"];
    [v31 showSpinner];
  }

  if (v33 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v32 = [(AXBluetoothDevicesController *)v17 specifierImmediatelyPrecedingDevices];
    [(AXBluetoothDevicesController *)v17 insertContiguousSpecifiers:v19 afterSpecifier:v32 animated:1];
  }

  else
  {
    [(AXBluetoothDevicesController *)v17 insertContiguousSpecifiers:v19 atIndex:v33 + 1];
  }
}

id __51__AXBluetoothDevicesController_updatePairedDevices__block_invoke(uint64_t a1, void *a2)
{
  v3 = PSIDKey;
  v4 = [a2 propertyForKey:PSIDKey];
  v5 = [*(a1 + 32) propertyForKey:v3];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (void)_showScanningUI:(BOOL)a3
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  if (!*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    return;
  }

  v4 = a3;
  currentDeviceSpecifier = self->_currentDeviceSpecifier;
  self->_currentDeviceSpecifier = 0;

  [(AXBluetoothDevicesController *)self beginUpdates];
  if (v4)
  {
    if (self->_power && [(AXBluetoothDevicesController *)self _isBluetoothPowerFooterShowing])
    {
      [(AXBluetoothDevicesController *)self _showBluetoothPowerFooter:0];
      v7 = [(AXBluetoothDevicesController *)self mainSpecifiersGroup];
      v8 = [v7 objectAtIndex:0];

      [(AXBluetoothDevicesController *)self reloadSpecifier:v8 animated:1];
    }

    if (self->_power && [(AXBluetoothDevicesController *)self scanningEnabled])
    {
      [(AXBluetoothDevicesController *)self updatePairedDevices];
    }

    [(AXBluetoothDevicesController *)self endUpdates];
    [(AXBluetoothDevicesController *)self setBluetoothIsBusy:0];
    if (self->_power)
    {
      v9 = +[UIApplication sharedApplication];
      v10 = [v9 applicationState];

      if (!v10)
      {
        [(AXBluetoothDevicesController *)self _startScanning];
        [(AXBluetoothDevicesController *)self _startDiscoverable];

        [(AXBluetoothDevicesController *)self _startConnectable];
      }
    }

    return;
  }

  v11 = *&self->AXUISettingsBaseListController_opaque[v3];
  v12 = [(NSMutableArray *)self->_deviceSpecifiersGroup objectAtIndex:0];
  if ([v11 indexOfObject:v12] != 0x7FFFFFFFFFFFFFFFLL && -[NSMutableArray count](self->_deviceSpecifiersGroup, "count") >= 2)
  {
    v13 = [(AXBluetoothDevicesController *)self numberOfGroups];

    if (v13 < 2)
    {
      goto LABEL_17;
    }

    v12 = [(AXBluetoothDevicesController *)self specifiersInGroup:1];
    v14 = [NSArray arrayWithArray:v12];
    [(AXBluetoothDevicesController *)self removeContiguousSpecifiers:v14 animated:1];
  }

LABEL_17:
  [(AXBluetoothDevicesController *)self _cleanupPairing];
  if (!self->_power && ![(AXBluetoothDevicesController *)self _isBluetoothPowerFooterShowing])
  {
    [(AXBluetoothDevicesController *)self _showBluetoothPowerFooter:1];
    v15 = [(AXBluetoothDevicesController *)self mainSpecifiersGroup];
    v16 = [v15 objectAtIndex:0];

    [(AXBluetoothDevicesController *)self reloadSpecifier:v16 animated:1];
  }

  [(AXBluetoothDevicesController *)self endUpdates];
  [(AXBluetoothDevicesController *)self popToViewController:self animated:1 destinationClass:objc_opt_class()];
  [(NSMutableDictionary *)self->_devicesDict removeAllObjects];
  [(AXBluetoothDevicesController *)self _stopScanning];
  [(AXBluetoothDevicesController *)self _stopDiscoverable];

  [(AXBluetoothDevicesController *)self _stopConnectable];
}

- (void)setMainSpecifiersGroup:(id)a3
{
  if (self->_mainSpecifiersGroup != a3)
  {
    v4 = [a3 mutableCopyWithZone:0];
    mainSpecifiersGroup = self->_mainSpecifiersGroup;
    self->_mainSpecifiersGroup = v4;

    _objc_release_x1(v4, mainSpecifiersGroup);
  }
}

- (void)reloadSpecifiers
{
  pairingPINDict = self->_pairingPINDict;
  self->_pairingPINDict = 0;

  deviceSpecifiersGroup = self->_deviceSpecifiersGroup;
  self->_deviceSpecifiersGroup = 0;

  currentDeviceSpecifier = self->_currentDeviceSpecifier;
  self->_currentDeviceSpecifier = 0;

  v6.receiver = self;
  v6.super_class = AXBluetoothDevicesController;
  [(AXBluetoothDevicesController *)&v6 reloadSpecifiers];
}

- (id)pairedDeviceSpecifiers
{
  v3 = +[NSMutableArray array];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v4 = +[VOSBluetoothManager sharedInstance];
  v5 = [v4 pairedDevices];

  v6 = [v5 countByEnumeratingWithState:&v49 objects:v56 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v50;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v50 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v49 + 1) + 8 * i);
        if (-[AXBluetoothDevicesController shouldAddClassicDevice:](self, "shouldAddClassicDevice:", v10) && ([v3 containsObject:v10] & 1) == 0)
        {
          [v3 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v49 objects:v56 count:16];
    }

    while (v7);
  }

  v11 = +[VOSBluetoothManager sharedInstance];
  v12 = [v11 pairedBTLEDevices];
  [v3 axSafelyAddObjectsFromArray:v12];

  v13 = [(AXBluetoothDevicesController *)self centralManager];
  v14 = [v13 state];

  if (v14 == &dword_4 + 1)
  {
    v15 = v3;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v16 = [(AXBluetoothDevicesController *)self centralManager];
    v17 = [v16 retrieveConnectedPeripheralsWithServices:0 allowAll:1];

    v18 = [v17 countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v46;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v46 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v45 + 1) + 8 * j);
          v23 = [v22 name];
          v24 = v23;
          if (!v23 || ([v23 containsString:@"Apple Pencil"] & 1) == 0)
          {
            v25 = [(AXBluetoothDevicesController *)self getDeviceForPeripheral:v22];
            if (v25 && ([v15 containsObject:v25] & 1) == 0 && -[AXBluetoothDevicesController shouldAddBTLEDevice:](self, "shouldAddBTLEDevice:", v25))
            {
              [v15 addObject:v25];
            }
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v45 objects:v55 count:16];
      }

      while (v19);
    }

    v3 = v15;
  }

  v26 = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:1];
  v54 = v26;
  v27 = [NSArray arrayWithObjects:&v54 count:1];
  v39 = v3;
  v28 = [v3 sortedArrayUsingDescriptors:v27];

  v29 = +[NSMutableArray array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v28;
  v30 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v42;
    do
    {
      for (k = 0; k != v31; k = k + 1)
      {
        if (*v42 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v41 + 1) + 8 * k);
        v35 = [(AXBluetoothDevicesController *)self specifierForDevice:v34];
        [v29 addObject:v35];
        devicesDict = self->_devicesDict;
        v37 = [v34 identifier];
        [(NSMutableDictionary *)devicesDict setObject:v34 forKey:v37];
      }

      v31 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v31);
  }

  return v29;
}

- (id)specifierForDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  if (![(__CFString *)v5 length])
  {

    v5 = &stru_25D420;
  }

  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
  v7 = [objc_allocWithZone(NSMutableDictionary) initWithDictionary:self->_pairingPINDict];
  [v7 setObject:v5 forKey:PSTitleKey];
  v8 = [NSNumber numberWithInteger:[(AXBluetoothDevicesController *)self axDeviceControllerType]];
  [v7 setObject:v8 forKey:@"axDeviceControllerType"];

  v9 = [v4 identifier];
  [v7 setObject:v9 forKey:PSIDKey];

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v7 setObject:v11 forKey:PSDetailControllerClassKey];

  [v6 setProperties:v7];
  v12 = [objc_allocWithZone(NSMutableDictionary) init];
  [v12 setObject:v4 forKey:@"bt-device"];

  [v6 setUserInfo:v12];

  return v6;
}

- (void)_updateDevicePosition:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(AXBluetoothDevicesController *)self specifierForID:v5];

  v7 = AXLogBrailleHW();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [AXBluetoothDevicesController _updateDevicePosition:];
  }

  if (v6)
  {
    v8 = [(AXBluetoothDevicesController *)self indexOfSpecifier:v6];
    v9 = [(AXBluetoothDevicesController *)self specifierAtIndex:v8 - 1];
    v10 = [v9 userInfo];
    v11 = [v10 objectForKey:@"bt-device"];

    v12 = [(AXBluetoothDevicesController *)self specifierAtIndex:v8 + 1];
    v13 = [v12 userInfo];
    v14 = [v13 objectForKey:@"bt-device"];

    if (v11)
    {
      v15 = [v11 paired];
      if (v15 != [v4 paired])
      {
        v16 = 1;
        if (!v14)
        {
          goto LABEL_12;
        }

LABEL_9:
        v17 = [v14 paired];
        if (v17 != [v4 paired])
        {
          goto LABEL_14;
        }

        v18 = [v14 name];
        [v4 name];
        v20 = v19 = v14;
        v21 = [v18 caseInsensitiveCompare:v20] != &dword_0 + 1;

        v14 = v19;
LABEL_13:
        if (!v16 && !v21)
        {
          [(AXBluetoothDevicesController *)self reloadSpecifier:v6 animated:0];
LABEL_35:

          goto LABEL_36;
        }

LABEL_14:
        v51 = v11;
        v52 = 0;
        v53 = 0;
        [(AXBluetoothDevicesController *)self getGroup:&v53 row:&v52 ofSpecifierAtIndex:v8, v14];
        [(AXBluetoothDevicesController *)self removeSpecifierAtIndex:v8 animated:1];
        v25 = [(AXBluetoothDevicesController *)self specifierAtIndex:0];
        if (v25)
        {
          v26 = v25;
          v27 = 0;
          v28 = 0;
          while (1)
          {
            v29 = [(AXBluetoothDevicesController *)self specifierAtIndex:v27];
            v30 = [v29 userInfo];
            v31 = [v30 objectForKey:@"bt-device"];

            if (v31)
            {
              break;
            }

            v27 = (v28 + 1);
            v26 = [(AXBluetoothDevicesController *)self specifierAtIndex:v27];
            ++v28;
            if (!v26)
            {
              goto LABEL_22;
            }
          }

          LODWORD(v27) = v28;
        }

        else
        {
          LODWORD(v27) = 0;
        }

LABEL_22:
        if (([v4 paired] & 1) == 0)
        {
          v32 = v27;
          v33 = [(AXBluetoothDevicesController *)self specifierAtIndex:v27];
          if (v33)
          {
            v34 = v33;
            while (1)
            {
              v35 = [(AXBluetoothDevicesController *)self specifierAtIndex:v32];
              v36 = [v35 userInfo];
              v37 = [v36 objectForKey:@"bt-device"];
              v38 = [v37 paired];

              if (!v38)
              {
                break;
              }

              v32 = (v27 + 1);
              v34 = [(AXBluetoothDevicesController *)self specifierAtIndex:v32];
              LODWORD(v27) = v27 + 1;
              if (!v34)
              {
                goto LABEL_29;
              }
            }
          }
        }

        LODWORD(v32) = v27;
LABEL_29:
        v39 = v32;
        v40 = [(AXBluetoothDevicesController *)self specifierAtIndex:v32];
        v41 = [v40 userInfo];
        v42 = [v41 objectForKey:@"bt-device"];

        v11 = v51;
        if (v42)
        {
          do
          {
            v43 = [v4 paired];
            if (v43 != [v42 paired])
            {
              break;
            }

            v44 = [v4 name];
            v45 = [v42 name];
            v46 = [v44 compare:v45 options:1];

            if (v46 == -1)
            {
              break;
            }

            v32 = (v32 + 1);
            v47 = [(AXBluetoothDevicesController *)self specifierAtIndex:v32];
            v48 = [v47 userInfo];
            v49 = [v48 objectForKey:@"bt-device"];

            v42 = v49;
          }

          while (v49);
          v39 = v32;
        }

        [(AXBluetoothDevicesController *)self insertSpecifier:v6 atIndex:v39 animated:1];
        v14 = v50;
        goto LABEL_35;
      }

      v22 = [v11 name];
      [v4 name];
      v24 = v23 = v14;
      v16 = [v22 caseInsensitiveCompare:v24] != -1;

      v14 = v23;
      if (v23)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v16 = 0;
      if (v14)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v21 = 0;
    goto LABEL_13;
  }

LABEL_36:
}

- (void)_setDeviceState:(int)a3 forSpecifier:(id)a4
{
  v4 = *&a3;
  v5 = a4;
  v6 = [NSMutableDictionary alloc];
  v7 = [v5 userInfo];
  v9 = [v6 initWithDictionary:v7];

  v8 = [NSNumber numberWithUnsignedInt:v4];
  [v9 setObject:v8 forKey:@"bt-state"];

  [v5 setUserInfo:v9];
}

- (void)_startDiscoverable
{
  v2 = +[AXSubsystemBrailleHardware sharedInstance];
  v3 = [v2 ignoreLogging];

  if ((v3 & 1) == 0)
  {
    v4 = +[AXSubsystemBrailleHardware identifier];
    v5 = AXLoggerForFacility();

    v6 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = AXColorizeFormatLog();
      v8 = _AXStringForArgs();
      if (os_log_type_enabled(v5, v6))
      {
        v10 = 138543362;
        v11 = v8;
        _os_log_impl(&dword_0, v5, v6, "%{public}@", &v10, 0xCu);
      }
    }
  }

  v9 = +[VOSBluetoothManager sharedInstance];
  [v9 setDiscoverable:1];
}

- (void)_stopDiscoverable
{
  v2 = +[AXSubsystemBrailleHardware sharedInstance];
  v3 = [v2 ignoreLogging];

  if ((v3 & 1) == 0)
  {
    v4 = +[AXSubsystemBrailleHardware identifier];
    v5 = AXLoggerForFacility();

    v6 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = AXColorizeFormatLog();
      v8 = _AXStringForArgs();
      if (os_log_type_enabled(v5, v6))
      {
        v10 = 138543362;
        v11 = v8;
        _os_log_impl(&dword_0, v5, v6, "%{public}@", &v10, 0xCu);
      }
    }
  }

  v9 = +[VOSBluetoothManager sharedInstance];
  [v9 setDiscoverable:0];
}

- (void)_startConnectable
{
  v2 = +[AXSubsystemBrailleHardware sharedInstance];
  v3 = [v2 ignoreLogging];

  if ((v3 & 1) == 0)
  {
    v4 = +[AXSubsystemBrailleHardware identifier];
    v5 = AXLoggerForFacility();

    v6 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = AXColorizeFormatLog();
      v8 = _AXStringForArgs();
      if (os_log_type_enabled(v5, v6))
      {
        v10 = 138543362;
        v11 = v8;
        _os_log_impl(&dword_0, v5, v6, "%{public}@", &v10, 0xCu);
      }
    }
  }

  v9 = +[VOSBluetoothManager sharedInstance];
  [v9 setConnectable:1];
}

- (void)_stopConnectable
{
  v2 = +[AXSubsystemBrailleHardware sharedInstance];
  v3 = [v2 ignoreLogging];

  if ((v3 & 1) == 0)
  {
    v4 = +[AXSubsystemBrailleHardware identifier];
    v5 = AXLoggerForFacility();

    v6 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = AXColorizeFormatLog();
      v8 = _AXStringForArgs();
      if (os_log_type_enabled(v5, v6))
      {
        v10 = 138543362;
        v11 = v8;
        _os_log_impl(&dword_0, v5, v6, "%{public}@", &v10, 0xCu);
      }
    }
  }

  v9 = +[VOSBluetoothManager sharedInstance];
  [v9 setConnectable:0];
}

- (void)_startScanning
{
  v3 = +[AXSubsystemBrailleHardware sharedInstance];
  v4 = [v3 ignoreLogging];

  if ((v4 & 1) == 0)
  {
    v5 = +[AXSubsystemBrailleHardware identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        v11 = 138543362;
        v12 = v9;
        _os_log_impl(&dword_0, v6, v7, "%{public}@", &v11, 0xCu);
      }
    }
  }

  v10 = +[VOSBluetoothManager sharedInstance];
  [v10 setAuthorizedServices:{-[AXBluetoothDevicesController authorizedServices](self, "authorizedServices")}];
  [v10 setDeviceScanningEnabled:1];
  [(AXBluetoothDevicesController *)self _setupCentralScanning:1];
}

- (void)_stopScanning
{
  v3 = +[AXSubsystemBrailleHardware sharedInstance];
  v4 = [v3 ignoreLogging];

  if ((v4 & 1) == 0)
  {
    v5 = +[AXSubsystemBrailleHardware identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        v12 = 138543362;
        v13 = v9;
        _os_log_impl(&dword_0, v6, v7, "%{public}@", &v12, 0xCu);
      }
    }
  }

  v10 = +[VOSBluetoothManager sharedInstance];
  [v10 setDeviceScanningEnabled:0];

  v11 = +[VOSBluetoothManager sharedInstance];
  [v11 resetDeviceScanning];

  [(AXBluetoothDevicesController *)self _setupCentralScanning:0];
}

- (BOOL)_brailleConfigMatch:(id)a3 withConfig:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:kSCROBrailleDisplayBluetoothAddress];
  v8 = [v6 objectForKeyedSubscript:kSCROBrailleDisplayBluetoothAddress];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v11 = [v5 objectForKeyedSubscript:kSCROBrailleDisplayBrailleVendorProductId];
    v12 = [v6 objectForKeyedSubscript:kSCROBrailleDisplayBrailleVendorProductId];
    v10 = [v11 isEqualToString:v12];
  }

  return v10;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v31.receiver = self;
  v31.super_class = AXBluetoothDevicesController;
  v7 = [(AXBluetoothDevicesController *)&v31 tableView:a3 cellForRowAtIndexPath:v6];
  if ([v7 tag] == &dword_0 + 1)
  {
    v8 = [(AXBluetoothDevicesController *)self indexForIndexPath:v6];
    v9 = [*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
    v10 = [v9 userInfo];
    v11 = [v10 objectForKey:@"bt-device"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_23:

      goto LABEL_24;
    }

    v12 = +[AXSubsystemBrailleHardware sharedInstance];
    v13 = [v12 ignoreLogging];

    if ((v13 & 1) == 0)
    {
      v14 = +[AXSubsystemBrailleHardware identifier];
      v15 = AXLoggerForFacility();

      v16 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = AXColorizeFormatLog();
        v18 = [v7 title];
        v19 = [v11 paired];
        v29 = [v11 connected];
        v30 = v11;
        v27 = v18;
        v28 = v19;
        v26 = v11;
        v20 = _AXStringForArgs();

        if (os_log_type_enabled(v15, v16))
        {
          *buf = 138543362;
          v33 = v20;
          _os_log_impl(&dword_0, v15, v16, "%{public}@", buf, 0xCu);
        }
      }
    }

    if ([(AXBluetoothDevicesController *)self bluetoothIsBusy:v26])
    {
      v21 = [v11 identifier];
      v22 = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
      if ([v21 isEqualToString:v22])
      {
        v23 = [v11 connected];

        if ((v23 & 1) == 0)
        {
          if ([v11 paired])
          {
            v24 = 3;
          }

          else
          {
            v24 = 1;
          }

LABEL_22:
          [v7 setDeviceState:v24];
          [(AXBluetoothDevicesController *)self _setDeviceState:v24 forSpecifier:v9];
          goto LABEL_23;
        }
      }

      else
      {
      }
    }

    if ([v11 paired] && (objc_msgSend(v11, "connected") & 1) != 0)
    {
      v24 = 5;
    }

    else if ([v11 paired])
    {
      v24 = 2;
    }

    else
    {
      v24 = 0;
    }

    goto LABEL_22;
  }

LABEL_24:

  return v7;
}

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  v7 = [*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:{-[AXBluetoothDevicesController indexForIndexPath:](self, "indexForIndexPath:", a4)}];
  v5 = [objc_allocWithZone(*&v7[OBJC_IVAR___PSSpecifier_detailControllerClass]) init];
  [(AXBluetoothDevicesController *)self setShowingSetupController:0];
  v6 = [(AXBluetoothDevicesController *)self rootController];
  [v5 setRootController:v6];

  [v5 setParentController:self];
  [v5 setSpecifier:v7];
  [(AXBluetoothDevicesController *)self showController:v5 animate:1];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AXBluetoothDevicesController *)self specifierAtIndex:[(AXBluetoothDevicesController *)self indexForIndexPath:v7]];
  v9 = [v8 userInfo];
  v10 = [v9 objectForKey:@"bt-device"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17.receiver = self;
    v17.super_class = AXBluetoothDevicesController;
    [(AXBluetoothDevicesController *)&v17 tableView:v6 didSelectRowAtIndexPath:v7, v15.receiver, v15.super_class];
  }

  else if (v10)
  {
    if (![(AXBluetoothDevicesController *)self bluetoothIsBusy])
    {
      objc_storeStrong(&self->_currentDeviceSpecifier, v8);
      [(AXBluetoothDevicesController *)self setBluetoothIsBusy:1];
      [v10 connectWithServices:{-[AXBluetoothDevicesController authorizedServices](self, "authorizedServices")}];
      v11 = [v10 identifier];
      v12 = [(AXBluetoothDevicesController *)self indexOfSpecifierID:v11];

      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v16.receiver = self;
        v16.super_class = AXBluetoothDevicesController;
        v13 = [(AXBluetoothDevicesController *)&v16 tableView:v6 cellForRowAtIndexPath:v7];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v10 connected])
          {
            v14 = 4;
          }

          else if ([v10 paired])
          {
            v14 = 3;
          }

          else
          {
            v14 = 1;
          }

          [v13 setDeviceState:v14];
          [(AXBluetoothDevicesController *)self _setDeviceState:v14 forSpecifier:v8];
        }
      }
    }

    [*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__table] selectRowAtIndexPath:0 animated:1 scrollPosition:0];
  }

  else
  {
    [(AXBluetoothDevicesController *)&v15 tableView:v6 didSelectRowAtIndexPath:v7, self, AXBluetoothDevicesController];
  }
}

- (void)showBluetoothPowerAlert:(BOOL)a3
{
  if (a3)
  {
    v19 = +[VOSBluetoothManager sharedInstance];
    if (([v19 available] & 1) == 0)
    {
LABEL_5:

      return;
    }

    v4 = +[VOSBluetoothManager sharedInstance];
    if ([v4 enabled])
    {

      goto LABEL_5;
    }

    v6 = [(AXBluetoothDevicesController *)self view];
    v7 = [v6 window];
    v8 = [v7 isKeyWindow];

    if (v8)
    {
      v9 = settingsLocString(@"BLUETOOTH_POWER_TITLE", @"VoiceOverBluetoothDevices");
      v10 = [(AXBluetoothDevicesController *)self bluetoothPowerAlertMessage];
      v11 = [UIAlertController alertControllerWithTitle:v9 message:v10 preferredStyle:1];
      powerAlert = self->_powerAlert;
      self->_powerAlert = v11;

      v13 = settingsLocString(@"YES", @"VoiceOverBluetoothDevices");
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = __56__AXBluetoothDevicesController_showBluetoothPowerAlert___block_invoke;
      v21[3] = &unk_2557A8;
      v21[4] = self;
      v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:v21];

      [(UIAlertController *)self->_powerAlert addAction:v14];
      v15 = settingsLocString(@"NO", @"VoiceOverBluetoothDevices");
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = __56__AXBluetoothDevicesController_showBluetoothPowerAlert___block_invoke_2;
      v20[3] = &unk_2557A8;
      v20[4] = self;
      v16 = [UIAlertAction actionWithTitle:v15 style:1 handler:v20];

      [(UIAlertController *)self->_powerAlert addAction:v16];
      v17 = [(AXBluetoothDevicesController *)self window];
      v18 = [v17 rootViewController];
      [v18 presentViewController:self->_powerAlert animated:1 completion:0];
    }
  }

  else
  {
    v5 = self->_powerAlert;

    [(UIAlertController *)v5 dismissViewControllerAnimated:1 completion:0];
  }
}

void __56__AXBluetoothDevicesController_showBluetoothPowerAlert___block_invoke(uint64_t a1)
{
  v2 = +[VOSBluetoothManager sharedInstance];
  [v2 setEnabled:1];

  *(*(a1 + 32) + 208) = 1;
}

- (void)setBluetoothIsBusy:(BOOL)a3
{
  v3 = a3;
  v5 = +[AXSubsystemBrailleHardware sharedInstance];
  v6 = [v5 ignoreLogging];

  if ((v6 & 1) == 0)
  {
    v7 = +[AXSubsystemBrailleHardware identifier];
    v8 = AXLoggerForFacility();

    v9 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = AXColorizeFormatLog();
      v14 = [NSNumber numberWithBool:v3];
      v11 = _AXStringForArgs();

      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138543362;
        v16 = v11;
        _os_log_impl(&dword_0, v8, v9, "%{public}@", buf, 0xCu);
      }
    }
  }

  if (v3)
  {
    v12 = 1;
  }

  else
  {
    currentDeviceSpecifier = self->_currentDeviceSpecifier;
    self->_currentDeviceSpecifier = 0;

    v12 = 0;
  }

  self->_bluetoothIsBusy = v12;
}

- (void)alertSheetDismissed:(id)a3
{
  alert = self->_alert;
  self->_alert = 0;

  v5 = [(AXBluetoothDevicesController *)self rootController];
  v6 = [v5 visibleViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [(AXBluetoothDevicesController *)self rootController];
    v8 = [v10 visibleViewController];
    v9 = [v8 parentViewController];
    [v9 dismiss];
  }
}

- (void)_cleanupPairing
{
  [(VOSBluetoothSSPPairingRequest *)self->_sspAlert dismiss];
  sspAlert = self->_sspAlert;
  self->_sspAlert = 0;

  v4 = [(AXBluetoothDevicesController *)self rootController];
  v5 = [v4 visibleViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [(AXBluetoothDevicesController *)self rootController];
    v7 = [v9 visibleViewController];
    v8 = [v7 parentViewController];
    [v8 dismiss];
  }
}

- (void)centralManagerDidUpdateState:(id)a3
{
  if ([a3 state] == &dword_4 + 1 && self->_power && *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    v4 = +[NSMutableArray array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v5 = [(AXBluetoothDevicesController *)self centralManager];
    v6 = [v5 retrieveConnectedPeripheralsWithServices:0 allowAll:1];

    v7 = [v6 countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v35;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v35 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v34 + 1) + 8 * i);
          v12 = AXLogBrailleHW();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v40 = v11;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Retrieved periperal (all): %@", buf, 0xCu);
          }

          if ([(AXBluetoothDevicesController *)self peripheralMatchesUnadvertisedService:v11])
          {
            v13 = [(AXBluetoothDevicesController *)self getDeviceForPeripheral:v11];
            v14 = [v11 identifier];
            v15 = [v14 UUIDString];
            [v4 addObject:v15];

            v16 = AXLogBrailleHW();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v40 = v13;
              _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Adding device: %@", buf, 0xCu);
            }

            if (v13)
            {
              [(AXBluetoothDevicesController *)self _addDevice:v13];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v34 objects:v41 count:16];
      }

      while (v8);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v17 = [(AXBluetoothDevicesController *)self centralManager];
    v18 = [(AXBluetoothDevicesController *)self allowedServices];
    v19 = [v17 retrieveConnectedPeripheralsWithServices:v18 allowAll:0];

    v20 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v31;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v30 + 1) + 8 * j);
          v25 = AXLogBrailleHW();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v40 = v24;
            _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "Retrieved periperal (some): %@", buf, 0xCu);
          }

          v26 = [v24 identifier];
          v27 = [v26 UUIDString];
          v28 = [v4 containsObject:v27];

          if ((v28 & 1) == 0)
          {
            v29 = [(AXBluetoothDevicesController *)self getDeviceForPeripheral:v24];
            if (v29)
            {
              [(AXBluetoothDevicesController *)self _addDevice:v29];
            }
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v21);
    }

    [(AXBluetoothDevicesController *)self _setupCentralScanning:1];
  }
}

- (BOOL)peripheralMatchesUnadvertisedService:(id)a3
{
  v3 = a3;
  v4 = [v3 name];
  if ([v4 hasPrefix:@"DotPad"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 name];
    v5 = [v6 hasPrefix:@"DotPocket"];
  }

  return v5;
}

- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6
{
  v8 = a4;
  [a5 objectForKeyedSubscript:CBAdvertisementDataServiceUUIDsKey];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = v31 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v28 + 1) + 8 * v13);
        v15 = [(AXBluetoothDevicesController *)self allowedServices];
        LOBYTE(v14) = [v15 containsObject:v14];

        if (v14)
        {

          v16 = 1;
          goto LABEL_11;
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v16 = [(AXBluetoothDevicesController *)self peripheralMatchesUnadvertisedService:v8];
LABEL_11:
  v17 = AXLogBrailleHW();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [NSNumber numberWithBool:v16];
    *buf = 138412546;
    v33 = v8;
    v34 = 2112;
    v35 = v18;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Discovered periperal: %@, allowed %@", buf, 0x16u);
  }

  if (v16)
  {
    v19 = [(AXBluetoothDevicesController *)self getDeviceForPeripheral:v8];
    if (v19)
    {
      v20 = AXLogBrailleHW();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        devicesDict = self->_devicesDict;
        v22 = [v19 identifier];
        v23 = [(NSMutableDictionary *)devicesDict objectForKey:v22];
        *buf = 138412546;
        v33 = v19;
        v34 = 2112;
        v35 = v23;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Adding device: %@ in cache? %@", buf, 0x16u);
      }

      v24 = self->_devicesDict;
      v25 = [v19 identifier];
      v26 = [(NSMutableDictionary *)v24 objectForKey:v25];

      if (v26)
      {
        [(AXBluetoothDevicesController *)self _updateDevicePosition:v19];
        v27 = [v19 identifier];
        [(AXBluetoothDevicesController *)self reloadSpecifierID:v27 animated:0];
      }

      else
      {
        [(AXBluetoothDevicesController *)self _addDevice:v19];
      }
    }
  }
}

- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(AXBluetoothDevicesController *)self getDeviceForPeripheral:v7];
  v10 = AXLogBrailleHW();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [AXBluetoothDevicesController centralManager:didFailToConnectPeripheral:error:];
  }

  if (v9)
  {
    v11 = [v9 identifier];
    v12 = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
    v13 = [v11 isEqualToString:v12];

    if (v13)
    {
      [(AXBluetoothDevicesController *)self setBluetoothIsBusy:0];
    }

    v14 = [v9 identifier];
    [(AXBluetoothDevicesController *)self reloadSpecifierID:v14];
  }
}

- (void)centralManager:(id)a3 didUpdatePeripheralConnectionState:(id)a4
{
  v5 = [(AXBluetoothDevicesController *)self getDeviceForPeripheral:a4];
  if (v5)
  {
    v10 = v5;
    if ([v5 connected])
    {
      [(AXBluetoothDevicesController *)self deviceConnected:v10];
    }

    else
    {
      v6 = [v10 identifier];
      v7 = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
      v8 = [v6 isEqualToString:v7];

      if (v8)
      {
        [(AXBluetoothDevicesController *)self setBluetoothIsBusy:0];
      }
    }

    [(AXBluetoothDevicesController *)self _updateDevicePosition:v10];
    v9 = [v10 identifier];
    [(AXBluetoothDevicesController *)self reloadSpecifierID:v9];

    v5 = v10;
  }
}

- (void)_peripheralDidCompletePairing:(id)a3
{
  v4 = a3;
  v5 = AXLogBrailleHW();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Completed pairing to %@", &v10, 0xCu);
  }

  v6 = [v4 identifier];
  v7 = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    [(AXBluetoothDevicesController *)self setBluetoothIsBusy:0];
  }

  [(AXBluetoothDevicesController *)self _updateDevicePosition:v4];
  v9 = [v4 identifier];
  [(AXBluetoothDevicesController *)self reloadSpecifierID:v9];
}

- (void)pairingAgent:(id)a3 peerDidCompletePairing:(id)a4
{
  v5 = [(AXBluetoothDevicesController *)self getDeviceForPeripheral:a4];
  v6 = v5;
  if (v5)
  {
    v8 = v5;
    [(AXBluetoothDevicesController *)self _peripheralDidCompletePairing:v5];
    v7 = +[VOSBluetoothManager sharedInstance];
    [v7 postNotificationName:VOSBluetoothDeviceConnectSuccessNotification object:v8];

    v6 = v8;
  }

  _objc_release_x1(v5, v6);
}

- (void)pairingAgent:(id)a3 peerDidFailToCompletePairing:(id)a4 error:(id)a5
{
  v13 = a4;
  v6 = [(AXBluetoothDevicesController *)self getDeviceForPeripheral:v13];
  if ([v13 state])
  {
    v7 = [(AXBluetoothDevicesController *)self centralManager];
    [v7 cancelPeripheralConnection:v13];
  }

  if (v6)
  {
    v8 = [v6 identifier];
    v9 = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {
      v11 = [objc_allocWithZone(VoiceOverBluetoothAlert) initWithDevice:v6];
      alert = self->_alert;
      self->_alert = v11;

      [(VoiceOverBluetoothAlert *)self->_alert setDelegate:self];
      [(VoiceOverBluetoothAlert *)self->_alert showAlertWithResult:&off_27A428];
    }

    [(AXBluetoothDevicesController *)self _peripheralDidCompletePairing:v6];
  }
}

- (void)pairingAgent:(id)a3 peerDidUnpair:(id)a4
{
  v5 = [(AXBluetoothDevicesController *)self getDeviceForPeripheral:a4];
  v6 = v5;
  if (v5)
  {
    v9 = v5;
    [(AXBluetoothDevicesController *)self _updateDevicePosition:v5];
    v7 = [v9 identifier];
    [(AXBluetoothDevicesController *)self reloadSpecifierID:v7];

    v8 = +[VOSBluetoothManager sharedInstance];
    [v8 postNotificationName:VOSBluetoothDeviceDisconnectSuccessNotification object:v9];

    v6 = v9;
  }

  _objc_release_x1(v5, v6);
}

- (void)peripheralDidUpdateName:(id)a3
{
  v4 = [(AXBluetoothDevicesController *)self getDeviceForPeripheral:a3];
  if (v4)
  {
    v9 = v4;
    v5 = [v4 identifier];
    v6 = [(AXBluetoothDevicesController *)self specifierForID:v5];

    v7 = [v9 name];
    [v6 setName:v7];

    v8 = [v9 name];
    [v6 setProperty:v8 forKey:PSTitleKey];

    [(AXBluetoothDevicesController *)self _updateDevicePosition:v9];
    v4 = v9;
  }
}

- (void)peripheralConnectionTimeout:(id)a3
{
  v10 = [a3 userInfo];
  v4 = [v10 identifier];
  v5 = [(PSSpecifier *)self->_currentDeviceSpecifier identifier];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    if (([v10 connected] & 1) == 0)
    {
      v7 = [objc_allocWithZone(VoiceOverBluetoothAlert) initWithDevice:v10];
      alert = self->_alert;
      self->_alert = v7;

      [(VoiceOverBluetoothAlert *)self->_alert setDelegate:self];
      [(VoiceOverBluetoothAlert *)self->_alert showAlertWithResult:&off_27A440];
      [v10 disconnect];
    }

    [(AXBluetoothDevicesController *)self setBluetoothIsBusy:0];
    v9 = [v10 identifier];
    [(AXBluetoothDevicesController *)self reloadSpecifierID:v9];
  }
}

- (id)getDeviceForPeripheral:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v5 UUIDString];

  v7 = [(NSMutableDictionary *)self->_devicesDict objectForKey:v6];
  v8 = AXLogBrailleHW();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Get device: %@", &v14, 0xCu);
  }

  if (!v7)
  {
    v9 = [v4 name];
    if ([v9 length])
    {
      v10 = [v4 visibleInSettings];

      if (v10)
      {
        v11 = [AXUIBluetoothDevice alloc];
        v12 = +[VOSBluetoothManager sharedInstance];
        v7 = [v11 initWithPeripheral:v4 helper:v12];

        [v4 setDelegate:self];
        goto LABEL_9;
      }
    }

    else
    {
    }

    v7 = 0;
  }

LABEL_9:

  return v7;
}

- (void)_setupCentralScanning:(BOOL)a3
{
  v3 = a3;
  v5 = [(AXBluetoothDevicesController *)self centralManager];
  v6 = [v5 state];

  if (v6 == &dword_4 + 1)
  {
    v7 = [(AXBluetoothDevicesController *)self centralManager];
    v8 = v7;
    if (v3)
    {
      [v7 scanForPeripheralsWithServices:0 options:0];
    }

    else
    {
      [v7 stopScan];
    }
  }
}

- (void)showPairingAlertForPairingAgent:(id)a3 peerDidRequestPairing:(id)a4 type:(int64_t)a5 passkey:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v11;
    v14 = [(AXBluetoothDevicesController *)self getDeviceForPeripheral:v13];
    v15 = v14;
    if (v14)
    {
      v16 = a5 == 4 || a5 == 1;
      if (a5 == 1 || a5 == 4 || !a5)
      {
        v24 = v14;
        objc_initWeak(location, self);
        v23 = objc_allocWithZone(VOSBluetoothSSPPairingRequest);
        currentDeviceSpecifier = self->_currentDeviceSpecifier;
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = __99__AXBluetoothDevicesController_showPairingAlertForPairingAgent_peerDidRequestPairing_type_passkey___block_invoke;
        v29[3] = &unk_257B20;
        v34 = v16;
        v30 = v10;
        v31 = v13;
        v33[1] = a5;
        v19 = v12;
        v32 = v19;
        v35 = a5 == 0;
        objc_copyWeak(v33, location);
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = __99__AXBluetoothDevicesController_showPairingAlertForPairingAgent_peerDidRequestPairing_type_passkey___block_invoke_3;
        v25[3] = &unk_257B48;
        v26 = v30;
        v27 = v31;
        v28[1] = a5;
        objc_copyWeak(v28, location);
        v15 = v24;
        v20 = [v23 initWithDevice:v24 andSpecifier:currentDeviceSpecifier acceptPairingBlock:v29 cancelPairingBlock:v25];
        sspAlert = self->_sspAlert;
        self->_sspAlert = v20;

        [(VOSBluetoothSSPPairingRequest *)self->_sspAlert setPairingStyle:a5 == 0 andPasskey:v19];
        [(VOSBluetoothSSPPairingRequest *)self->_sspAlert showWithViewController:self];
        objc_destroyWeak(v28);

        objc_destroyWeak(v33);
        objc_destroyWeak(location);
      }

      else
      {
        [v10 respondToPairingRequest:v13 type:a5 accept:0 data:0];
        v17 = [(AXBluetoothDevicesController *)self centralManager];
        [v17 cancelPeripheralConnection:v13];

        v18 = self->_sspAlert;
        self->_sspAlert = 0;
      }
    }
  }
}

void __99__AXBluetoothDevicesController_showPairingAlertForPairingAgent_peerDidRequestPairing_type_passkey___block_invoke(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 64);
    v5 = *(a1 + 48);
    v8 = CBPairingAgentPairingDataPasskeyKey;
    v9 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    [v2 respondToPairingRequest:v3 type:v4 accept:1 data:v6];
  }

  else if (*(a1 + 73) == 1)
  {
    [*(a1 + 32) respondToPairingRequest:*(a1 + 40) type:*(a1 + 64) accept:1 data:0];
  }

  objc_copyWeak(&v7, (a1 + 56));
  AXPerformBlockAsynchronouslyOnMainThread();
  objc_destroyWeak(&v7);
}

void __99__AXBluetoothDevicesController_showPairingAlertForPairingAgent_peerDidRequestPairing_type_passkey___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cleanupPairing];
}

void __99__AXBluetoothDevicesController_showPairingAlertForPairingAgent_peerDidRequestPairing_type_passkey___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) respondToPairingRequest:*(a1 + 40) type:*(a1 + 56) accept:0 data:0];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained centralManager];
  [v3 cancelPeripheralConnection:*(a1 + 40)];

  objc_copyWeak(&v4, (a1 + 48));
  AXPerformBlockAsynchronouslyOnMainThread();
  objc_destroyWeak(&v4);
}

void __99__AXBluetoothDevicesController_showPairingAlertForPairingAgent_peerDidRequestPairing_type_passkey___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cleanupPairing];
}

@end