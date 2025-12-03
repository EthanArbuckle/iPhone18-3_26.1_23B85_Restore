@interface CARBluetoothLEDiscoverer
- (BOOL)pairBluetoothDevice:(id)device;
- (CARBluetoothLEDiscoverer)init;
- (CARBluetoothLEDiscovery)bluetoothDiscoveryDelegate;
- (id)_deviceForPeripheral:(id)peripheral;
- (void)_startDiscovery;
- (void)_stopDiscovery;
- (void)_transitionToState:(int64_t)state;
- (void)_updateConnectionStatusForPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didUpdateANCSAuthorizationForPeripheral:(id)peripheral;
- (void)centralManagerDidUpdateState:(id)state;
- (void)pauseDiscovery;
- (void)peripheralDidUpdateName:(id)name;
- (void)startDiscovery;
- (void)stopDiscovery;
@end

@implementation CARBluetoothLEDiscoverer

- (CARBluetoothLEDiscoverer)init
{
  v12.receiver = self;
  v12.super_class = CARBluetoothLEDiscoverer;
  v2 = [(CARBluetoothLEDiscoverer *)&v12 init];
  if (v2)
  {
    v3 = CarPairingLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "CARBluetoothLEDiscoverer init", v11, 2u);
    }

    v2->_state = 1;
    v4 = [CBCentralManager alloc];
    v13 = CBCentralManagerOptionShowPowerAlertKey;
    v14 = &__kCFBooleanTrue;
    v5 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v6 = [v4 initWithDelegate:v2 queue:&_dispatch_main_q options:v5];
    bluetoothManager = v2->_bluetoothManager;
    v2->_bluetoothManager = v6;

    v8 = objc_alloc_init(NSMutableDictionary);
    devicesForIdentifiers = v2->_devicesForIdentifiers;
    v2->_devicesForIdentifiers = v8;
  }

  return v2;
}

- (void)startDiscovery
{
  v3 = CarPairingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "CARBluetoothLEDiscoverer startDiscovery", v4, 2u);
  }

  [(CARBluetoothLEDiscoverer *)self _transitionToState:8];
}

- (void)pauseDiscovery
{
  v3 = CarPairingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "CARBluetoothLEDiscoverer pauseDiscovery", v4, 2u);
  }

  [(CARBluetoothLEDiscoverer *)self _transitionToState:1];
}

- (void)stopDiscovery
{
  v3 = CarPairingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "CARBluetoothLEDiscoverer stopDiscovery", v4, 2u);
  }

  [(CARBluetoothLEDiscoverer *)self _transitionToState:1];
}

- (BOOL)pairBluetoothDevice:(id)device
{
  deviceCopy = device;
  peripheral = [deviceCopy peripheral];
  if (peripheral)
  {
    identifier = [deviceCopy identifier];
    uUIDString = [identifier UUIDString];
    name = [deviceCopy name];
    CRConnectBluetoothLE();
  }

  else
  {
    identifier = CarPairingLogging();
    if (os_log_type_enabled(identifier, OS_LOG_TYPE_ERROR))
    {
      sub_4A164(deviceCopy, identifier);
    }
  }

  return peripheral != 0;
}

- (void)_startDiscovery
{
  v3 = CarPairingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "CARBluetoothLEDiscoverer _startDiscovery", v7, 2u);
  }

  bluetoothManager = [(CARBluetoothLEDiscoverer *)self bluetoothManager];
  v5 = [CBUUID UUIDWithString:CBUUIDLECarPlayServiceString];
  v8 = v5;
  v6 = [NSArray arrayWithObjects:&v8 count:1];
  [bluetoothManager scanForPeripheralsWithServices:v6 options:0];
}

- (void)_stopDiscovery
{
  v3 = CarPairingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "CARBluetoothLEDiscoverer _stopDiscovery", v5, 2u);
  }

  bluetoothManager = [(CARBluetoothLEDiscoverer *)self bluetoothManager];
  [bluetoothManager stopScan];
}

- (void)_transitionToState:(int64_t)state
{
  state = [(CARBluetoothLEDiscoverer *)self state];
  if (state != state)
  {
    if (state == 8)
    {
      bluetoothManager = [(CARBluetoothLEDiscoverer *)self bluetoothManager];
      state2 = [bluetoothManager state];

      if (state2 == &dword_4 + 1)
      {
        [(CARBluetoothLEDiscoverer *)self _startDiscovery];
        state = 8;
      }

      else
      {
        state = 2;
      }
    }

    else if (state == 1)
    {
      if (state == 8)
      {
        [(CARBluetoothLEDiscoverer *)self _stopDiscovery];
      }

      state = 1;
    }

    [(CARBluetoothLEDiscoverer *)self setState:state];
    bluetoothDiscoveryDelegate = [(CARBluetoothLEDiscoverer *)self bluetoothDiscoveryDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      bluetoothDiscoveryDelegate2 = [(CARBluetoothLEDiscoverer *)self bluetoothDiscoveryDelegate];
      [bluetoothDiscoveryDelegate2 bluetoothLEDiscoverer:self changedDiscoveryState:state == 8];
    }
  }
}

- (id)_deviceForPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  devicesForIdentifiers = [(CARBluetoothLEDiscoverer *)self devicesForIdentifiers];
  identifier = [peripheralCopy identifier];
  v7 = [devicesForIdentifiers objectForKey:identifier];

  if (!v7)
  {
    v7 = [[CARBluetoothLEDevice alloc] initWithPeripheral:peripheralCopy];
    devicesForIdentifiers2 = [(CARBluetoothLEDiscoverer *)self devicesForIdentifiers];
    identifier2 = [peripheralCopy identifier];
    [devicesForIdentifiers2 setObject:v7 forKey:identifier2];
  }

  return v7;
}

- (void)_updateConnectionStatusForPeripheral:(id)peripheral
{
  v7 = [(CARBluetoothLEDiscoverer *)self _deviceForPeripheral:peripheral];
  bluetoothDiscoveryDelegate = [(CARBluetoothLEDiscoverer *)self bluetoothDiscoveryDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    bluetoothDiscoveryDelegate2 = [(CARBluetoothLEDiscoverer *)self bluetoothDiscoveryDelegate];
    [bluetoothDiscoveryDelegate2 bluetoothLEDiscoverer:self didUpdateDevice:v7];
  }
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  v5 = CarPairingLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    state = [stateCopy state];
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "CARBluetoothLEDiscoverer centralManagerDidUpdateState, state is now: %ld", &v6, 0xCu);
  }

  if ([stateCopy state] == &dword_4 + 1 && -[CARBluetoothLEDiscoverer state](self, "state") == &dword_0 + 2)
  {
    [(CARBluetoothLEDiscoverer *)self _transitionToState:8];
  }
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  peripheralCopy = peripheral;
  dataCopy = data;
  iCopy = i;
  v12 = CarPairingLogging();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412802;
    v18 = peripheralCopy;
    v19 = 2112;
    v20 = dataCopy;
    v21 = 2112;
    v22 = iCopy;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "CARBluetoothLEDiscoverer didDiscoverPeripheral %@ advertisementData: %@, RSSI: %@", &v17, 0x20u);
  }

  [peripheralCopy setDelegate:self];
  v13 = [(CARBluetoothLEDiscoverer *)self _deviceForPeripheral:peripheralCopy];
  bluetoothDiscoveryDelegate = [(CARBluetoothLEDiscoverer *)self bluetoothDiscoveryDelegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    bluetoothDiscoveryDelegate2 = [(CARBluetoothLEDiscoverer *)self bluetoothDiscoveryDelegate];
    [bluetoothDiscoveryDelegate2 bluetoothLEDiscoverer:self didDiscoverDevice:v13];
  }
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  v6 = CarPairingLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = peripheralCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "CARBluetoothLEDiscoverer didConnectPeripheral %@", &v7, 0xCu);
  }

  [(CARBluetoothLEDiscoverer *)self _updateConnectionStatusForPeripheral:peripheralCopy];
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  peripheralCopy = peripheral;
  errorCopy = error;
  v9 = CarPairingLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = peripheralCopy;
    v12 = 2112;
    v13 = errorCopy;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "CARBluetoothLEDiscoverer didFailToConnectPeripheral %@: %@", &v10, 0x16u);
  }

  [(CARBluetoothLEDiscoverer *)self _updateConnectionStatusForPeripheral:peripheralCopy];
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  peripheralCopy = peripheral;
  errorCopy = error;
  v9 = CarPairingLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = peripheralCopy;
    v12 = 2112;
    v13 = errorCopy;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "CARBluetoothLEDiscoverer didDisconnectPeripheral %@: %@", &v10, 0x16u);
  }

  [(CARBluetoothLEDiscoverer *)self _updateConnectionStatusForPeripheral:peripheralCopy];
}

- (void)centralManager:(id)manager didUpdateANCSAuthorizationForPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  v5 = CarPairingLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = peripheralCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "CARBluetoothLEDiscoverer didUpdateANCSAuthorizationForPeripheral %@", &v6, 0xCu);
  }
}

- (void)peripheralDidUpdateName:(id)name
{
  nameCopy = name;
  v5 = CarPairingLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_4A1DC(nameCopy, v5);
  }

  [(CARBluetoothLEDiscoverer *)self _updateConnectionStatusForPeripheral:nameCopy];
}

- (CARBluetoothLEDiscovery)bluetoothDiscoveryDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_bluetoothDiscoveryDelegate);

  return WeakRetained;
}

@end