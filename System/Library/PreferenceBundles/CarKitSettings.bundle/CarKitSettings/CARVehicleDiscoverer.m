@interface CARVehicleDiscoverer
+ (BOOL)isBluetoothLEEnabled;
- (BOOL)_removeVehicleForAccessory:(id)a3 removedVehicle:(id *)a4;
- (BOOL)bluetoothPairVehicle:(id)a3;
- (CARVehicleDiscoverer)init;
- (CARVehicleDiscovery)discoveryDelegate;
- (NSSet)discoveredVehicles;
- (id)_removeVehicleForBluetoothDevice:(id)a3;
- (id)_removeVehicleForBluetoothLEDevice:(id)a3;
- (id)_vehicleForAccessory:(id)a3;
- (id)_vehicleForBluetoothAddress:(id)a3;
- (id)_vehicleForBluetoothDevice:(id)a3;
- (id)_vehicleForBluetoothLEDevice:(id)a3;
- (id)_vehicleForBluetoothLEIdentifier:(id)a3;
- (id)viewControllerPresentingPairingForBluetoothDiscoverer:(id)a3;
- (void)accessoryManager:(id)a3 didConnectVehicleAccessory:(id)a4;
- (void)accessoryManager:(id)a3 didDisconnectVehicleAccessory:(id)a4;
- (void)bluetoothDiscoverer:(id)a3 didDiscoverDevice:(id)a4;
- (void)bluetoothDiscoverer:(id)a3 didRemoveDevice:(id)a4;
- (void)bluetoothDiscoverer:(id)a3 didUpdateDevice:(id)a4;
- (void)bluetoothLEDiscoverer:(id)a3 didDiscoverDevice:(id)a4;
- (void)bluetoothLEDiscoverer:(id)a3 didRemoveDevice:(id)a4;
- (void)bluetoothLEDiscoverer:(id)a3 didUpdateDevice:(id)a4;
- (void)cancelledConnectionAttemptOnTransport:(unint64_t)a3;
- (void)dealloc;
- (void)handleDiscoveredVehicle:(id)a3;
- (void)handleRemovedVehicle:(id)a3;
- (void)handleUpdatedVehicle:(id)a3;
- (void)sessionDidConnect:(id)a3;
- (void)startWirelessDiscovery;
- (void)startedConnectionAttemptOnTransport:(unint64_t)a3;
- (void)stopWirelessDiscovery;
@end

@implementation CARVehicleDiscoverer

+ (BOOL)isBluetoothLEEnabled
{
  v2 = CFPreferencesCopyValue(@"EnableBLE", @"com.apple.carplay", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  v5 = v4 == CFBooleanGetTypeID() && CFBooleanGetValue(v3) != 0;
  CFRelease(v3);
  return v5;
}

- (CARVehicleDiscoverer)init
{
  v15.receiver = self;
  v15.super_class = CARVehicleDiscoverer;
  v2 = [(CARVehicleDiscoverer *)&v15 init];
  v3 = v2;
  if (v2)
  {
    [(CARVehicleDiscoverer *)v2 setWirelessDiscovering:0];
    v4 = objc_alloc_init(NSMutableDictionary);
    [(CARVehicleDiscoverer *)v3 setVehicleForBluetoothAddress:v4];

    v5 = objc_alloc_init(CARBluetoothClassicDiscoverer);
    [(CARVehicleDiscoverer *)v3 setBluetoothClassicDiscoverer:v5];

    v6 = [(CARVehicleDiscoverer *)v3 bluetoothClassicDiscoverer];
    [v6 setBluetoothDiscoveryDelegate:v3];

    if ([objc_opt_class() isBluetoothLEEnabled])
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      [(CARVehicleDiscoverer *)v3 setVehicleForBluetoothLEIdentifier:v7];

      v8 = objc_alloc_init(CARBluetoothLEDiscoverer);
      [(CARVehicleDiscoverer *)v3 setBluetoothLEDiscoverer:v8];

      v9 = [(CARVehicleDiscoverer *)v3 bluetoothLEDiscoverer];
      [v9 setBluetoothDiscoveryDelegate:v3];
    }

    v10 = objc_alloc_init(CRVehicleAccessoryManager);
    [(CARVehicleDiscoverer *)v3 setAccessoryManager:v10];

    v11 = [(CARVehicleDiscoverer *)v3 accessoryManager];
    [v11 addObserver:v3];

    v12 = objc_alloc_init(CARSessionStatus);
    [(CARVehicleDiscoverer *)v3 setSessionStatus:v12];

    v13 = [(CARVehicleDiscoverer *)v3 sessionStatus];
    [v13 addSessionObserver:v3];
  }

  return v3;
}

- (void)dealloc
{
  [(CARVehicleDiscoverer *)self stopWirelessDiscovery];
  v3 = [(CARVehicleDiscoverer *)self accessoryManager];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CARVehicleDiscoverer;
  [(CARVehicleDiscoverer *)&v4 dealloc];
}

- (void)startWirelessDiscovery
{
  [(CARVehicleDiscoverer *)self setWirelessDiscovering:1];
  v3 = [(CARVehicleDiscoverer *)self bluetoothClassicDiscoverer];
  [v3 startDiscovery];

  v4 = [(CARVehicleDiscoverer *)self bluetoothLEDiscoverer];
  [v4 startDiscovery];
}

- (void)stopWirelessDiscovery
{
  [(CARVehicleDiscoverer *)self setWirelessDiscovering:0];
  v3 = [(CARVehicleDiscoverer *)self bluetoothClassicDiscoverer];
  [v3 stopDiscovery];

  v4 = [(CARVehicleDiscoverer *)self bluetoothLEDiscoverer];
  [v4 stopDiscovery];
}

- (void)handleDiscoveredVehicle:(id)a3
{
  v7 = a3;
  v4 = [(CARVehicleDiscoverer *)self discoveryDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CARVehicleDiscoverer *)self discoveryDelegate];
    [v6 vehicleDiscoverer:self didDiscoverVehicle:v7];
  }
}

- (void)handleUpdatedVehicle:(id)a3
{
  v7 = a3;
  v4 = [(CARVehicleDiscoverer *)self discoveryDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CARVehicleDiscoverer *)self discoveryDelegate];
    [v6 vehicleDiscoverer:self didUpdateVehicle:v7];
  }
}

- (void)handleRemovedVehicle:(id)a3
{
  v7 = a3;
  v4 = [(CARVehicleDiscoverer *)self discoveryDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CARVehicleDiscoverer *)self discoveryDelegate];
    [v6 vehicleDiscoverer:self didRemoveVehicle:v7];
  }
}

- (id)_vehicleForBluetoothAddress:(id)a3
{
  v4 = a3;
  v5 = [(CARVehicleDiscoverer *)self vehicleForBluetoothAddress];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v6 = objc_alloc_init(CARDiscoveredVehicle);
    v7 = [(CARVehicleDiscoverer *)self vehicleForBluetoothAddress];
    [v7 setObject:v6 forKey:v4];
  }

  return v6;
}

- (id)_vehicleForBluetoothDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 bluetoothAddress];
  if (v5)
  {
    v6 = [(CARVehicleDiscoverer *)self _vehicleForBluetoothAddress:v5];
    [v6 setBluetoothDevice:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_vehicleForAccessory:(id)a3
{
  v4 = a3;
  v5 = [v4 bluetoothAddress];
  if (v5)
  {
    v6 = [(CARVehicleDiscoverer *)self _vehicleForBluetoothAddress:v5];
  }

  else
  {
    v6 = objc_alloc_init(CARDiscoveredVehicle);
  }

  v7 = v6;
  [(CARDiscoveredVehicle *)v6 setAccessory:v4];

  return v7;
}

- (id)_removeVehicleForBluetoothDevice:(id)a3
{
  v4 = [a3 bluetoothAddress];
  v5 = [(CARVehicleDiscoverer *)self vehicleForBluetoothAddress];
  v6 = [v5 objectForKey:v4];

  [v6 setBluetoothDevice:0];
  if (v6 && ([v6 accessory], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v9 = [(CARVehicleDiscoverer *)self vehicleForBluetoothAddress];
    [v9 removeObjectForKey:v4];

    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_vehicleForBluetoothLEIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CARVehicleDiscoverer *)self vehicleForBluetoothLEIdentifier];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v6 = objc_alloc_init(CARDiscoveredVehicle);
    v7 = [(CARVehicleDiscoverer *)self vehicleForBluetoothLEIdentifier];
    [v7 setObject:v6 forKey:v4];
  }

  return v6;
}

- (id)_vehicleForBluetoothLEDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  if (v5)
  {
    v6 = [(CARVehicleDiscoverer *)self _vehicleForBluetoothLEIdentifier:v5];
    [v6 setBluetoothLEDevice:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_removeVehicleForBluetoothLEDevice:(id)a3
{
  v4 = [a3 identifier];
  v5 = [(CARVehicleDiscoverer *)self vehicleForBluetoothLEIdentifier];
  v6 = [v5 objectForKey:v4];

  [v6 setBluetoothLEDevice:0];
  if (v6 && ([v6 accessory], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v9 = [(CARVehicleDiscoverer *)self vehicleForBluetoothLEIdentifier];
    [v9 removeObjectForKey:v4];

    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_removeVehicleForAccessory:(id)a3 removedVehicle:(id *)a4
{
  v6 = [a3 bluetoothAddress];
  v7 = [(CARVehicleDiscoverer *)self vehicleForBluetoothAddress];
  v8 = [v7 objectForKey:v6];

  [v8 setAccessory:0];
  if (a4)
  {
    v9 = v8;
    *a4 = v8;
  }

  if (v8)
  {
    v10 = [v8 bluetoothDevice];
    v11 = v10 == 0;

    if (!v10 && v6)
    {
      v12 = [(CARVehicleDiscoverer *)self vehicleForBluetoothAddress];
      [v12 removeObjectForKey:v6];

      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)bluetoothPairVehicle:(id)a3
{
  v4 = a3;
  v5 = [v4 bluetoothLEDevice];

  if (v5)
  {
    v6 = [(CARVehicleDiscoverer *)self bluetoothLEDiscoverer];
    v7 = [v4 bluetoothLEDevice];
LABEL_5:
    v9 = v7;
    LOBYTE(v8) = [v6 pairBluetoothDevice:v7];

    goto LABEL_6;
  }

  v8 = [v4 bluetoothDevice];

  if (v8)
  {
    v6 = [(CARVehicleDiscoverer *)self bluetoothClassicDiscoverer];
    v7 = [v4 bluetoothDevice];
    goto LABEL_5;
  }

LABEL_6:

  return v8;
}

- (NSSet)discoveredVehicles
{
  v3 = [(CARVehicleDiscoverer *)self vehicleForBluetoothAddress];
  v4 = [v3 allValues];
  v5 = [NSSet setWithArray:v4];
  v6 = [v5 mutableCopy];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [(CARVehicleDiscoverer *)self accessoryManager];
  v8 = [v7 connectedVehicleAccessories];

  v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(CARVehicleDiscoverer *)self _vehicleForAccessory:*(*(&v26 + 1) + 8 * i)];
        [v6 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = [(CARVehicleDiscoverer *)self bluetoothClassicDiscoverer];
  v15 = [v14 discoveredBluetoothDevices];

  v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [(CARVehicleDiscoverer *)self _vehicleForBluetoothDevice:*(*(&v22 + 1) + 8 * j)];
        [v6 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }

  return v6;
}

- (void)bluetoothDiscoverer:(id)a3 didDiscoverDevice:(id)a4
{
  v5 = a4;
  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "bluetooth discovered %@", &v8, 0xCu);
  }

  v7 = [(CARVehicleDiscoverer *)self _vehicleForBluetoothDevice:v5];
  [(CARVehicleDiscoverer *)self handleDiscoveredVehicle:v7];
}

- (void)bluetoothDiscoverer:(id)a3 didUpdateDevice:(id)a4
{
  v5 = a4;
  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "bluetooth updated %@", &v8, 0xCu);
  }

  v7 = [(CARVehicleDiscoverer *)self _vehicleForBluetoothDevice:v5];
  [(CARVehicleDiscoverer *)self handleUpdatedVehicle:v7];
}

- (void)bluetoothDiscoverer:(id)a3 didRemoveDevice:(id)a4
{
  v5 = a4;
  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "bluetooth removed %@", &v8, 0xCu);
  }

  v7 = [(CARVehicleDiscoverer *)self _removeVehicleForBluetoothDevice:v5];
  if (v7)
  {
    [(CARVehicleDiscoverer *)self handleRemovedVehicle:v7];
  }
}

- (id)viewControllerPresentingPairingForBluetoothDiscoverer:(id)a3
{
  v4 = [(CARVehicleDiscoverer *)self discoveryDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CARVehicleDiscoverer *)self discoveryDelegate];
    v7 = [v6 viewControllerPresentingPairingForVehicleDiscoverer:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)bluetoothLEDiscoverer:(id)a3 didDiscoverDevice:(id)a4
{
  v5 = a4;
  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "bluetooth LE discovered %@", &v8, 0xCu);
  }

  v7 = [(CARVehicleDiscoverer *)self _vehicleForBluetoothLEDevice:v5];
  [(CARVehicleDiscoverer *)self handleDiscoveredVehicle:v7];
}

- (void)bluetoothLEDiscoverer:(id)a3 didUpdateDevice:(id)a4
{
  v5 = a4;
  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "bluetooth LE updated %@", &v8, 0xCu);
  }

  v7 = [(CARVehicleDiscoverer *)self _vehicleForBluetoothLEDevice:v5];
  [(CARVehicleDiscoverer *)self handleUpdatedVehicle:v7];
}

- (void)bluetoothLEDiscoverer:(id)a3 didRemoveDevice:(id)a4
{
  v5 = a4;
  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "bluetooth LE removed %@", &v8, 0xCu);
  }

  v7 = [(CARVehicleDiscoverer *)self _removeVehicleForBluetoothLEDevice:v5];
  if (v7)
  {
    [(CARVehicleDiscoverer *)self handleRemovedVehicle:v7];
  }
}

- (void)accessoryManager:(id)a3 didConnectVehicleAccessory:(id)a4
{
  v5 = a4;
  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "accessory connected %@", &v11, 0xCu);
  }

  v7 = [v5 bluetoothAddress];
  if (!v7)
  {
    v10 = [(CARVehicleDiscoverer *)self _vehicleForAccessory:v5];
LABEL_7:
    [(CARVehicleDiscoverer *)self handleDiscoveredVehicle:v10];
    goto LABEL_8;
  }

  v8 = [(CARVehicleDiscoverer *)self vehicleForBluetoothAddress];
  v9 = [v8 objectForKey:v7];

  v10 = [(CARVehicleDiscoverer *)self _vehicleForAccessory:v5];
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (void)accessoryManager:(id)a3 didDisconnectVehicleAccessory:(id)a4
{
  v5 = a4;
  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "accessory disconnected %@", buf, 0xCu);
  }

  v9 = 0;
  v7 = [(CARVehicleDiscoverer *)self _removeVehicleForAccessory:v5 removedVehicle:&v9];
  v8 = v9;
  if (v7)
  {
    [(CARVehicleDiscoverer *)self handleRemovedVehicle:v8];
  }

  else
  {
    [(CARVehicleDiscoverer *)self handleUpdatedVehicle:v8];
  }
}

- (void)startedConnectionAttemptOnTransport:(unint64_t)a3
{
  if (a3 == 3)
  {
    block[5] = v3;
    block[6] = v4;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_12388;
    block[3] = &unk_6E2C0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)cancelledConnectionAttemptOnTransport:(unint64_t)a3
{
  if (a3 == 3)
  {
    block[5] = v3;
    block[6] = v4;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1244C;
    block[3] = &unk_6E2C0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)sessionDidConnect:(id)a3
{
  v4 = [a3 configuration];
  v5 = [v4 transportType];

  if (v5 == &dword_0 + 3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1253C;
    block[3] = &unk_6E2C0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (CARVehicleDiscovery)discoveryDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_discoveryDelegate);

  return WeakRetained;
}

@end