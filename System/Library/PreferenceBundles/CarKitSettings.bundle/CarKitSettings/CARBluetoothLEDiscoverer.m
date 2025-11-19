@interface CARBluetoothLEDiscoverer
- (BOOL)pairBluetoothDevice:(id)a3;
- (CARBluetoothLEDiscoverer)init;
- (CARBluetoothLEDiscovery)bluetoothDiscoveryDelegate;
- (id)_deviceForPeripheral:(id)a3;
- (void)_startDiscovery;
- (void)_stopDiscovery;
- (void)_transitionToState:(int64_t)a3;
- (void)_updateConnectionStatusForPeripheral:(id)a3;
- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4;
- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6;
- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManager:(id)a3 didUpdateANCSAuthorizationForPeripheral:(id)a4;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)pauseDiscovery;
- (void)peripheralDidUpdateName:(id)a3;
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

- (BOOL)pairBluetoothDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 peripheral];
  if (v4)
  {
    v5 = [v3 identifier];
    v6 = [v5 UUIDString];
    v7 = [v3 name];
    CRConnectBluetoothLE();
  }

  else
  {
    v5 = CarPairingLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_4A164(v3, v5);
    }
  }

  return v4 != 0;
}

- (void)_startDiscovery
{
  v3 = CarPairingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "CARBluetoothLEDiscoverer _startDiscovery", v7, 2u);
  }

  v4 = [(CARBluetoothLEDiscoverer *)self bluetoothManager];
  v5 = [CBUUID UUIDWithString:CBUUIDLECarPlayServiceString];
  v8 = v5;
  v6 = [NSArray arrayWithObjects:&v8 count:1];
  [v4 scanForPeripheralsWithServices:v6 options:0];
}

- (void)_stopDiscovery
{
  v3 = CarPairingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "CARBluetoothLEDiscoverer _stopDiscovery", v5, 2u);
  }

  v4 = [(CARBluetoothLEDiscoverer *)self bluetoothManager];
  [v4 stopScan];
}

- (void)_transitionToState:(int64_t)a3
{
  v5 = [(CARBluetoothLEDiscoverer *)self state];
  if (v5 != a3)
  {
    if (a3 == 8)
    {
      v6 = [(CARBluetoothLEDiscoverer *)self bluetoothManager];
      v7 = [v6 state];

      if (v7 == &dword_4 + 1)
      {
        [(CARBluetoothLEDiscoverer *)self _startDiscovery];
        a3 = 8;
      }

      else
      {
        a3 = 2;
      }
    }

    else if (a3 == 1)
    {
      if (v5 == 8)
      {
        [(CARBluetoothLEDiscoverer *)self _stopDiscovery];
      }

      a3 = 1;
    }

    [(CARBluetoothLEDiscoverer *)self setState:a3];
    v8 = [(CARBluetoothLEDiscoverer *)self bluetoothDiscoveryDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(CARBluetoothLEDiscoverer *)self bluetoothDiscoveryDelegate];
      [v10 bluetoothLEDiscoverer:self changedDiscoveryState:a3 == 8];
    }
  }
}

- (id)_deviceForPeripheral:(id)a3
{
  v4 = a3;
  v5 = [(CARBluetoothLEDiscoverer *)self devicesForIdentifiers];
  v6 = [v4 identifier];
  v7 = [v5 objectForKey:v6];

  if (!v7)
  {
    v7 = [[CARBluetoothLEDevice alloc] initWithPeripheral:v4];
    v8 = [(CARBluetoothLEDiscoverer *)self devicesForIdentifiers];
    v9 = [v4 identifier];
    [v8 setObject:v7 forKey:v9];
  }

  return v7;
}

- (void)_updateConnectionStatusForPeripheral:(id)a3
{
  v7 = [(CARBluetoothLEDiscoverer *)self _deviceForPeripheral:a3];
  v4 = [(CARBluetoothLEDiscoverer *)self bluetoothDiscoveryDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CARBluetoothLEDiscoverer *)self bluetoothDiscoveryDelegate];
    [v6 bluetoothLEDiscoverer:self didUpdateDevice:v7];
  }
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  v5 = CarPairingLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = [v4 state];
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "CARBluetoothLEDiscoverer centralManagerDidUpdateState, state is now: %ld", &v6, 0xCu);
  }

  if ([v4 state] == &dword_4 + 1 && -[CARBluetoothLEDiscoverer state](self, "state") == &dword_0 + 2)
  {
    [(CARBluetoothLEDiscoverer *)self _transitionToState:8];
  }
}

- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = CarPairingLogging();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412802;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "CARBluetoothLEDiscoverer didDiscoverPeripheral %@ advertisementData: %@, RSSI: %@", &v17, 0x20u);
  }

  [v9 setDelegate:self];
  v13 = [(CARBluetoothLEDiscoverer *)self _deviceForPeripheral:v9];
  v14 = [(CARBluetoothLEDiscoverer *)self bluetoothDiscoveryDelegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = [(CARBluetoothLEDiscoverer *)self bluetoothDiscoveryDelegate];
    [v16 bluetoothLEDiscoverer:self didDiscoverDevice:v13];
  }
}

- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4
{
  v5 = a4;
  v6 = CarPairingLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "CARBluetoothLEDiscoverer didConnectPeripheral %@", &v7, 0xCu);
  }

  [(CARBluetoothLEDiscoverer *)self _updateConnectionStatusForPeripheral:v5];
}

- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = CarPairingLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "CARBluetoothLEDiscoverer didFailToConnectPeripheral %@: %@", &v10, 0x16u);
  }

  [(CARBluetoothLEDiscoverer *)self _updateConnectionStatusForPeripheral:v7];
}

- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = CarPairingLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "CARBluetoothLEDiscoverer didDisconnectPeripheral %@: %@", &v10, 0x16u);
  }

  [(CARBluetoothLEDiscoverer *)self _updateConnectionStatusForPeripheral:v7];
}

- (void)centralManager:(id)a3 didUpdateANCSAuthorizationForPeripheral:(id)a4
{
  v4 = a4;
  v5 = CarPairingLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "CARBluetoothLEDiscoverer didUpdateANCSAuthorizationForPeripheral %@", &v6, 0xCu);
  }
}

- (void)peripheralDidUpdateName:(id)a3
{
  v4 = a3;
  v5 = CarPairingLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_4A1DC(v4, v5);
  }

  [(CARBluetoothLEDiscoverer *)self _updateConnectionStatusForPeripheral:v4];
}

- (CARBluetoothLEDiscovery)bluetoothDiscoveryDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_bluetoothDiscoveryDelegate);

  return WeakRetained;
}

@end