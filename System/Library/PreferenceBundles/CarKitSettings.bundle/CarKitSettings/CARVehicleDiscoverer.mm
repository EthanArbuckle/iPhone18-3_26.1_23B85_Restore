@interface CARVehicleDiscoverer
+ (BOOL)isBluetoothLEEnabled;
- (BOOL)_removeVehicleForAccessory:(id)accessory removedVehicle:(id *)vehicle;
- (BOOL)bluetoothPairVehicle:(id)vehicle;
- (CARVehicleDiscoverer)init;
- (CARVehicleDiscovery)discoveryDelegate;
- (NSSet)discoveredVehicles;
- (id)_removeVehicleForBluetoothDevice:(id)device;
- (id)_removeVehicleForBluetoothLEDevice:(id)device;
- (id)_vehicleForAccessory:(id)accessory;
- (id)_vehicleForBluetoothAddress:(id)address;
- (id)_vehicleForBluetoothDevice:(id)device;
- (id)_vehicleForBluetoothLEDevice:(id)device;
- (id)_vehicleForBluetoothLEIdentifier:(id)identifier;
- (id)viewControllerPresentingPairingForBluetoothDiscoverer:(id)discoverer;
- (void)accessoryManager:(id)manager didConnectVehicleAccessory:(id)accessory;
- (void)accessoryManager:(id)manager didDisconnectVehicleAccessory:(id)accessory;
- (void)bluetoothDiscoverer:(id)discoverer didDiscoverDevice:(id)device;
- (void)bluetoothDiscoverer:(id)discoverer didRemoveDevice:(id)device;
- (void)bluetoothDiscoverer:(id)discoverer didUpdateDevice:(id)device;
- (void)bluetoothLEDiscoverer:(id)discoverer didDiscoverDevice:(id)device;
- (void)bluetoothLEDiscoverer:(id)discoverer didRemoveDevice:(id)device;
- (void)bluetoothLEDiscoverer:(id)discoverer didUpdateDevice:(id)device;
- (void)cancelledConnectionAttemptOnTransport:(unint64_t)transport;
- (void)dealloc;
- (void)handleDiscoveredVehicle:(id)vehicle;
- (void)handleRemovedVehicle:(id)vehicle;
- (void)handleUpdatedVehicle:(id)vehicle;
- (void)sessionDidConnect:(id)connect;
- (void)startWirelessDiscovery;
- (void)startedConnectionAttemptOnTransport:(unint64_t)transport;
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

    bluetoothClassicDiscoverer = [(CARVehicleDiscoverer *)v3 bluetoothClassicDiscoverer];
    [bluetoothClassicDiscoverer setBluetoothDiscoveryDelegate:v3];

    if ([objc_opt_class() isBluetoothLEEnabled])
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      [(CARVehicleDiscoverer *)v3 setVehicleForBluetoothLEIdentifier:v7];

      v8 = objc_alloc_init(CARBluetoothLEDiscoverer);
      [(CARVehicleDiscoverer *)v3 setBluetoothLEDiscoverer:v8];

      bluetoothLEDiscoverer = [(CARVehicleDiscoverer *)v3 bluetoothLEDiscoverer];
      [bluetoothLEDiscoverer setBluetoothDiscoveryDelegate:v3];
    }

    v10 = objc_alloc_init(CRVehicleAccessoryManager);
    [(CARVehicleDiscoverer *)v3 setAccessoryManager:v10];

    accessoryManager = [(CARVehicleDiscoverer *)v3 accessoryManager];
    [accessoryManager addObserver:v3];

    v12 = objc_alloc_init(CARSessionStatus);
    [(CARVehicleDiscoverer *)v3 setSessionStatus:v12];

    sessionStatus = [(CARVehicleDiscoverer *)v3 sessionStatus];
    [sessionStatus addSessionObserver:v3];
  }

  return v3;
}

- (void)dealloc
{
  [(CARVehicleDiscoverer *)self stopWirelessDiscovery];
  accessoryManager = [(CARVehicleDiscoverer *)self accessoryManager];
  [accessoryManager removeObserver:self];

  v4.receiver = self;
  v4.super_class = CARVehicleDiscoverer;
  [(CARVehicleDiscoverer *)&v4 dealloc];
}

- (void)startWirelessDiscovery
{
  [(CARVehicleDiscoverer *)self setWirelessDiscovering:1];
  bluetoothClassicDiscoverer = [(CARVehicleDiscoverer *)self bluetoothClassicDiscoverer];
  [bluetoothClassicDiscoverer startDiscovery];

  bluetoothLEDiscoverer = [(CARVehicleDiscoverer *)self bluetoothLEDiscoverer];
  [bluetoothLEDiscoverer startDiscovery];
}

- (void)stopWirelessDiscovery
{
  [(CARVehicleDiscoverer *)self setWirelessDiscovering:0];
  bluetoothClassicDiscoverer = [(CARVehicleDiscoverer *)self bluetoothClassicDiscoverer];
  [bluetoothClassicDiscoverer stopDiscovery];

  bluetoothLEDiscoverer = [(CARVehicleDiscoverer *)self bluetoothLEDiscoverer];
  [bluetoothLEDiscoverer stopDiscovery];
}

- (void)handleDiscoveredVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  discoveryDelegate = [(CARVehicleDiscoverer *)self discoveryDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    discoveryDelegate2 = [(CARVehicleDiscoverer *)self discoveryDelegate];
    [discoveryDelegate2 vehicleDiscoverer:self didDiscoverVehicle:vehicleCopy];
  }
}

- (void)handleUpdatedVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  discoveryDelegate = [(CARVehicleDiscoverer *)self discoveryDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    discoveryDelegate2 = [(CARVehicleDiscoverer *)self discoveryDelegate];
    [discoveryDelegate2 vehicleDiscoverer:self didUpdateVehicle:vehicleCopy];
  }
}

- (void)handleRemovedVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  discoveryDelegate = [(CARVehicleDiscoverer *)self discoveryDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    discoveryDelegate2 = [(CARVehicleDiscoverer *)self discoveryDelegate];
    [discoveryDelegate2 vehicleDiscoverer:self didRemoveVehicle:vehicleCopy];
  }
}

- (id)_vehicleForBluetoothAddress:(id)address
{
  addressCopy = address;
  vehicleForBluetoothAddress = [(CARVehicleDiscoverer *)self vehicleForBluetoothAddress];
  v6 = [vehicleForBluetoothAddress objectForKey:addressCopy];

  if (!v6)
  {
    v6 = objc_alloc_init(CARDiscoveredVehicle);
    vehicleForBluetoothAddress2 = [(CARVehicleDiscoverer *)self vehicleForBluetoothAddress];
    [vehicleForBluetoothAddress2 setObject:v6 forKey:addressCopy];
  }

  return v6;
}

- (id)_vehicleForBluetoothDevice:(id)device
{
  deviceCopy = device;
  bluetoothAddress = [deviceCopy bluetoothAddress];
  if (bluetoothAddress)
  {
    v6 = [(CARVehicleDiscoverer *)self _vehicleForBluetoothAddress:bluetoothAddress];
    [v6 setBluetoothDevice:deviceCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_vehicleForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  bluetoothAddress = [accessoryCopy bluetoothAddress];
  if (bluetoothAddress)
  {
    v6 = [(CARVehicleDiscoverer *)self _vehicleForBluetoothAddress:bluetoothAddress];
  }

  else
  {
    v6 = objc_alloc_init(CARDiscoveredVehicle);
  }

  v7 = v6;
  [(CARDiscoveredVehicle *)v6 setAccessory:accessoryCopy];

  return v7;
}

- (id)_removeVehicleForBluetoothDevice:(id)device
{
  bluetoothAddress = [device bluetoothAddress];
  vehicleForBluetoothAddress = [(CARVehicleDiscoverer *)self vehicleForBluetoothAddress];
  v6 = [vehicleForBluetoothAddress objectForKey:bluetoothAddress];

  [v6 setBluetoothDevice:0];
  if (v6 && ([v6 accessory], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    vehicleForBluetoothAddress2 = [(CARVehicleDiscoverer *)self vehicleForBluetoothAddress];
    [vehicleForBluetoothAddress2 removeObjectForKey:bluetoothAddress];

    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_vehicleForBluetoothLEIdentifier:(id)identifier
{
  identifierCopy = identifier;
  vehicleForBluetoothLEIdentifier = [(CARVehicleDiscoverer *)self vehicleForBluetoothLEIdentifier];
  v6 = [vehicleForBluetoothLEIdentifier objectForKey:identifierCopy];

  if (!v6)
  {
    v6 = objc_alloc_init(CARDiscoveredVehicle);
    vehicleForBluetoothLEIdentifier2 = [(CARVehicleDiscoverer *)self vehicleForBluetoothLEIdentifier];
    [vehicleForBluetoothLEIdentifier2 setObject:v6 forKey:identifierCopy];
  }

  return v6;
}

- (id)_vehicleForBluetoothLEDevice:(id)device
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (identifier)
  {
    v6 = [(CARVehicleDiscoverer *)self _vehicleForBluetoothLEIdentifier:identifier];
    [v6 setBluetoothLEDevice:deviceCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_removeVehicleForBluetoothLEDevice:(id)device
{
  identifier = [device identifier];
  vehicleForBluetoothLEIdentifier = [(CARVehicleDiscoverer *)self vehicleForBluetoothLEIdentifier];
  v6 = [vehicleForBluetoothLEIdentifier objectForKey:identifier];

  [v6 setBluetoothLEDevice:0];
  if (v6 && ([v6 accessory], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    vehicleForBluetoothLEIdentifier2 = [(CARVehicleDiscoverer *)self vehicleForBluetoothLEIdentifier];
    [vehicleForBluetoothLEIdentifier2 removeObjectForKey:identifier];

    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_removeVehicleForAccessory:(id)accessory removedVehicle:(id *)vehicle
{
  bluetoothAddress = [accessory bluetoothAddress];
  vehicleForBluetoothAddress = [(CARVehicleDiscoverer *)self vehicleForBluetoothAddress];
  v8 = [vehicleForBluetoothAddress objectForKey:bluetoothAddress];

  [v8 setAccessory:0];
  if (vehicle)
  {
    v9 = v8;
    *vehicle = v8;
  }

  if (v8)
  {
    bluetoothDevice = [v8 bluetoothDevice];
    v11 = bluetoothDevice == 0;

    if (!bluetoothDevice && bluetoothAddress)
    {
      vehicleForBluetoothAddress2 = [(CARVehicleDiscoverer *)self vehicleForBluetoothAddress];
      [vehicleForBluetoothAddress2 removeObjectForKey:bluetoothAddress];

      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)bluetoothPairVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  bluetoothLEDevice = [vehicleCopy bluetoothLEDevice];

  if (bluetoothLEDevice)
  {
    bluetoothLEDiscoverer = [(CARVehicleDiscoverer *)self bluetoothLEDiscoverer];
    bluetoothLEDevice2 = [vehicleCopy bluetoothLEDevice];
LABEL_5:
    v9 = bluetoothLEDevice2;
    LOBYTE(bluetoothDevice) = [bluetoothLEDiscoverer pairBluetoothDevice:bluetoothLEDevice2];

    goto LABEL_6;
  }

  bluetoothDevice = [vehicleCopy bluetoothDevice];

  if (bluetoothDevice)
  {
    bluetoothLEDiscoverer = [(CARVehicleDiscoverer *)self bluetoothClassicDiscoverer];
    bluetoothLEDevice2 = [vehicleCopy bluetoothDevice];
    goto LABEL_5;
  }

LABEL_6:

  return bluetoothDevice;
}

- (NSSet)discoveredVehicles
{
  vehicleForBluetoothAddress = [(CARVehicleDiscoverer *)self vehicleForBluetoothAddress];
  allValues = [vehicleForBluetoothAddress allValues];
  v5 = [NSSet setWithArray:allValues];
  v6 = [v5 mutableCopy];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  accessoryManager = [(CARVehicleDiscoverer *)self accessoryManager];
  connectedVehicleAccessories = [accessoryManager connectedVehicleAccessories];

  v9 = [connectedVehicleAccessories countByEnumeratingWithState:&v26 objects:v31 count:16];
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
          objc_enumerationMutation(connectedVehicleAccessories);
        }

        v13 = [(CARVehicleDiscoverer *)self _vehicleForAccessory:*(*(&v26 + 1) + 8 * i)];
        [v6 addObject:v13];
      }

      v10 = [connectedVehicleAccessories countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  bluetoothClassicDiscoverer = [(CARVehicleDiscoverer *)self bluetoothClassicDiscoverer];
  discoveredBluetoothDevices = [bluetoothClassicDiscoverer discoveredBluetoothDevices];

  v16 = [discoveredBluetoothDevices countByEnumeratingWithState:&v22 objects:v30 count:16];
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
          objc_enumerationMutation(discoveredBluetoothDevices);
        }

        v20 = [(CARVehicleDiscoverer *)self _vehicleForBluetoothDevice:*(*(&v22 + 1) + 8 * j)];
        [v6 addObject:v20];
      }

      v17 = [discoveredBluetoothDevices countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }

  return v6;
}

- (void)bluetoothDiscoverer:(id)discoverer didDiscoverDevice:(id)device
{
  deviceCopy = device;
  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = deviceCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "bluetooth discovered %@", &v8, 0xCu);
  }

  v7 = [(CARVehicleDiscoverer *)self _vehicleForBluetoothDevice:deviceCopy];
  [(CARVehicleDiscoverer *)self handleDiscoveredVehicle:v7];
}

- (void)bluetoothDiscoverer:(id)discoverer didUpdateDevice:(id)device
{
  deviceCopy = device;
  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = deviceCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "bluetooth updated %@", &v8, 0xCu);
  }

  v7 = [(CARVehicleDiscoverer *)self _vehicleForBluetoothDevice:deviceCopy];
  [(CARVehicleDiscoverer *)self handleUpdatedVehicle:v7];
}

- (void)bluetoothDiscoverer:(id)discoverer didRemoveDevice:(id)device
{
  deviceCopy = device;
  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = deviceCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "bluetooth removed %@", &v8, 0xCu);
  }

  v7 = [(CARVehicleDiscoverer *)self _removeVehicleForBluetoothDevice:deviceCopy];
  if (v7)
  {
    [(CARVehicleDiscoverer *)self handleRemovedVehicle:v7];
  }
}

- (id)viewControllerPresentingPairingForBluetoothDiscoverer:(id)discoverer
{
  discoveryDelegate = [(CARVehicleDiscoverer *)self discoveryDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    discoveryDelegate2 = [(CARVehicleDiscoverer *)self discoveryDelegate];
    v7 = [discoveryDelegate2 viewControllerPresentingPairingForVehicleDiscoverer:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)bluetoothLEDiscoverer:(id)discoverer didDiscoverDevice:(id)device
{
  deviceCopy = device;
  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = deviceCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "bluetooth LE discovered %@", &v8, 0xCu);
  }

  v7 = [(CARVehicleDiscoverer *)self _vehicleForBluetoothLEDevice:deviceCopy];
  [(CARVehicleDiscoverer *)self handleDiscoveredVehicle:v7];
}

- (void)bluetoothLEDiscoverer:(id)discoverer didUpdateDevice:(id)device
{
  deviceCopy = device;
  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = deviceCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "bluetooth LE updated %@", &v8, 0xCu);
  }

  v7 = [(CARVehicleDiscoverer *)self _vehicleForBluetoothLEDevice:deviceCopy];
  [(CARVehicleDiscoverer *)self handleUpdatedVehicle:v7];
}

- (void)bluetoothLEDiscoverer:(id)discoverer didRemoveDevice:(id)device
{
  deviceCopy = device;
  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = deviceCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "bluetooth LE removed %@", &v8, 0xCu);
  }

  v7 = [(CARVehicleDiscoverer *)self _removeVehicleForBluetoothLEDevice:deviceCopy];
  if (v7)
  {
    [(CARVehicleDiscoverer *)self handleRemovedVehicle:v7];
  }
}

- (void)accessoryManager:(id)manager didConnectVehicleAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = accessoryCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "accessory connected %@", &v11, 0xCu);
  }

  bluetoothAddress = [accessoryCopy bluetoothAddress];
  if (!bluetoothAddress)
  {
    v10 = [(CARVehicleDiscoverer *)self _vehicleForAccessory:accessoryCopy];
LABEL_7:
    [(CARVehicleDiscoverer *)self handleDiscoveredVehicle:v10];
    goto LABEL_8;
  }

  vehicleForBluetoothAddress = [(CARVehicleDiscoverer *)self vehicleForBluetoothAddress];
  v9 = [vehicleForBluetoothAddress objectForKey:bluetoothAddress];

  v10 = [(CARVehicleDiscoverer *)self _vehicleForAccessory:accessoryCopy];
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (void)accessoryManager:(id)manager didDisconnectVehicleAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = accessoryCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "accessory disconnected %@", buf, 0xCu);
  }

  v9 = 0;
  v7 = [(CARVehicleDiscoverer *)self _removeVehicleForAccessory:accessoryCopy removedVehicle:&v9];
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

- (void)startedConnectionAttemptOnTransport:(unint64_t)transport
{
  if (transport == 3)
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

- (void)cancelledConnectionAttemptOnTransport:(unint64_t)transport
{
  if (transport == 3)
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

- (void)sessionDidConnect:(id)connect
{
  configuration = [connect configuration];
  transportType = [configuration transportType];

  if (transportType == &dword_0 + 3)
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