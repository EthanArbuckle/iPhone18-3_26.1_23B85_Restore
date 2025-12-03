@interface AXUIBluetoothHelper
- (AXUIBluetoothHelper)init;
- (BOOL)_onlySensorsConnected;
- (BOOL)_setup:(BTSessionImpl *)_setup;
- (BOOL)attach:(id)attach;
- (BOOL)btleDeviceIsPaired:(id)paired;
- (BOOL)connectAddress:(id)address;
- (BOOL)connectDevice:(id)device;
- (BOOL)connectDevice:(id)device withServices:(unsigned int)services;
- (BOOL)connectable;
- (BOOL)connected;
- (BOOL)disconnectAddress:(id)address;
- (BOOL)disconnectDevice:(id)device;
- (BOOL)isAnyoneScanning;
- (BOOL)isDiscoverable;
- (BOOL)isServiceSupported:(unsigned int)supported;
- (BOOL)peripheralMatchesUnadvertisedService:(id)service;
- (BOOL)setEnabled:(BOOL)enabled;
- (BOOL)setPowered:(BOOL)powered;
- (BOOL)unpairAddress:(id)address;
- (BOOL)unpairDevice:(id)device;
- (BOOL)wasDeviceDiscovered:(id)discovered;
- (NSArray)pairedBTLEDevices;
- (id)addDeviceIfNeeded:(BTDeviceImpl *)needed;
- (id)allowedServices;
- (id)connectingDevices;
- (id)deviceForPeripheral:(id)peripheral;
- (id)pairedDevices;
- (int64_t)powerState;
- (unsigned)authorizedServicesForDevice:(id)device;
- (void)_addDiscoveredDevice:(id)device;
- (void)_cleanup:(BOOL)_cleanup;
- (void)_peripheralDidCompletePairing:(id)pairing;
- (void)_postNotification:(id)notification;
- (void)_postNotificationWithArray:(id)array;
- (void)_powerChanged;
- (void)_removeDevice:(id)device;
- (void)_restartScan;
- (void)_setDiscoveryAgentScanning:(BOOL)scanning;
- (void)_setupCentralScanning:(BOOL)scanning;
- (void)_updateCentralManagerScan;
- (void)acceptSSP:(int)p forDevice:(id)device;
- (void)cancelPairing;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didUpdatePeripheralConnectionState:(id)state;
- (void)centralManagerDidUpdateState:(id)state;
- (void)dealloc;
- (void)deviceDiscovered:(id)discovered;
- (void)deviceRemoved:(id)removed;
- (void)deviceUpdated:(id)updated;
- (void)isAnyoneScanning;
- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing;
- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error;
- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair;
- (void)peripheralDidUpdateName:(id)name;
- (void)postNotification:(id)notification;
- (void)postNotificationName:(id)name object:(id)object;
- (void)postNotificationName:(id)name object:(id)object error:(id)error;
- (void)resetDeviceScanning;
- (void)setConnectable:(BOOL)connectable;
- (void)setDevicePairingEnabled:(BOOL)enabled;
- (void)setDeviceScanningEnabled:(BOOL)enabled;
- (void)setDiscoverable:(BOOL)discoverable;
- (void)setPincode:(id)pincode forDevice:(id)device;
- (void)unpairBTLEDevice:(id)device;
@end

@implementation AXUIBluetoothHelper

- (AXUIBluetoothHelper)init
{
  v11.receiver = self;
  v11.super_class = AXUIBluetoothHelper;
  v2 = [(AXUIBluetoothHelper *)&v11 init];
  v3 = v2;
  if (v2 && ![(AXUIBluetoothHelper *)v2 attach:&unk_1EFE963B8])
  {
    v3->_authorizedServices = 0;
    [(AXUIBluetoothHelper *)v3 _cleanup:1];
    v9 = 0;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    discoveredDevices = v3->_discoveredDevices;
    v3->_discoveredDevices = dictionary;

    v6 = objc_alloc(MEMORY[0x1E695D258]);
    v7 = [v6 initWithDelegate:v3 queue:MEMORY[0x1E69E96A0] options:0];
    [(AXUIBluetoothHelper *)v3 setCentralManager:v7];

    sharedPairingAgent = [(CBCentralManager *)v3->_centralManager sharedPairingAgent];
    [sharedPairingAgent setDelegate:v3];

    v9 = v3;
  }

  return v9;
}

- (BOOL)attach:(id)attach
{
  v21 = *MEMORY[0x1E69E9840];
  attachCopy = attach;
  if ([attachCopy integerValue] >= 1)
  {
    v5 = AXLogBluetooth();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v18) = [attachCopy intValue];
      _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_DEFAULT, "VOTBTM: attemping to re-attach in %d seconds", buf, 8u);
    }

    -[AXUIBluetoothHelper performSelector:withObject:afterDelay:](self, "performSelector:withObject:afterDelay:", sel_attach_, 0, [attachCopy intValue]);
    goto LABEL_6;
  }

  if (self->_available)
  {
LABEL_6:
    v6 = 1;
    goto LABEL_7;
  }

  v8 = AXLogBluetooth();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B15E000, v8, OS_LOG_TYPE_DEFAULT, "VOTBTM: attaching to BTServer", buf, 2u);
  }

  v9 = MEMORY[0x1E696AEC0];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v12 = [v9 stringWithFormat:@"VOBTM%@-%u", bundleIdentifier, getpid()];

  [v12 cStringUsingEncoding:4];
  v13 = BTSessionAttachWithQueue();
  v14 = AXLogBluetooth();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      *buf = 67109120;
      LODWORD(v18) = v13;
      _os_log_impl(&dword_18B15E000, v14, OS_LOG_TYPE_DEFAULT, "VOTBTM: BTSessionAttachWithRunLoopAsync failed with error %d", buf, 8u);
    }

    _lastInitError = v13;
    v6 = 0;
  }

  else
  {
    if (v15)
    {
      v16 = [MEMORY[0x1E696AD98] numberWithInt:0];
      *buf = 138412546;
      v18 = v12;
      v19 = 2112;
      v20 = v16;
      _os_log_impl(&dword_18B15E000, v14, OS_LOG_TYPE_DEFAULT, "VOTBTM: Did request attach to session with id: %@. result:%@", buf, 0x16u);
    }

    v6 = 1;
    self->_available = 1;
  }

LABEL_7:

  return v6;
}

- (BOOL)_setup:(BTSessionImpl *)_setup
{
  v18 = *MEMORY[0x1E69E9840];
  self->_session = _setup;
  v4 = BTServiceAddCallbacks();
  if (v4)
  {
    v5 = v4;
    v6 = AXLogBluetooth();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 67109120;
      v17 = v5;
      v7 = "VOTBTM: BTServiceAddCallbacks failed with error %d";
LABEL_10:
      _os_log_impl(&dword_18B15E000, v6, OS_LOG_TYPE_DEFAULT, v7, &v16, 8u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  Default = BTLocalDeviceGetDefault();
  if (Default)
  {
    v5 = Default;
    v6 = AXLogBluetooth();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 67109120;
      v17 = v5;
      v7 = "VOTBTM: BTLocalDeviceGetDefault failed with error %d";
      goto LABEL_10;
    }

LABEL_11:

    v10 = 0;
    _lastInitError = v5;
    return v10;
  }

  v9 = BTLocalDeviceAddCallbacks();
  if (v9)
  {
    v5 = v9;
    v6 = AXLogBluetooth();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 67109120;
      v17 = v5;
      v7 = "VOTBTM: BTLocalDeviceAddCallbacks failed with %d";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v12 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
  btAddrDict = self->_btAddrDict;
  self->_btAddrDict = v12;

  v14 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
  btDeviceDict = self->_btDeviceDict;
  self->_btDeviceDict = v14;

  _lastInitError = 0;
  self->_available = 2;
  if (self->_wantsScanningEnabled)
  {
    [(AXUIBluetoothHelper *)self setDeviceScanningEnabled:1];
  }

  v10 = 1;
  if (self->_wantsDiscoveryEnabled)
  {
    [(AXUIBluetoothHelper *)self setDevicePairingEnabled:1];
  }

  return v10;
}

- (void)resetDeviceScanning
{
  p_discoveryAgent = &self->_discoveryAgent;
  if (self->_discoveryAgent)
  {
    BTDiscoveryAgentDestroy();
    *p_discoveryAgent = 0;
  }
}

- (void)setDeviceScanningEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v11 = *MEMORY[0x1E69E9840];
  if (self->_session)
  {
    v5 = AXLogBluetooth();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "disabled";
      if (enabledCopy)
      {
        v6 = "enabled";
      }

      v9 = 136446210;
      v10 = v6;
      _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_DEFAULT, "VOTBTM: setting device scanning %{public}s", &v9, 0xCu);
    }

    [(AXUIBluetoothHelper *)self _setDiscoveryAgentScanning:enabledCopy];
    v7 = 0;
    self->_scanningEnabled = enabledCopy;
  }

  else
  {
    if (!enabled)
    {
      return;
    }

    v8 = AXLogBluetooth();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_18B15E000, v8, OS_LOG_TYPE_DEFAULT, "VOTBTM: attempted to start scanning, but there is not yet an active session", &v9, 2u);
    }

    v7 = 1;
  }

  self->_wantsScanningEnabled = v7;
}

- (void)_setDiscoveryAgentScanning:(BOOL)scanning
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_session)
  {
    p_discoveryAgent = &self->_discoveryAgent;
    discoveryAgent = self->_discoveryAgent;
    if (scanning)
    {
      if (!discoveryAgent)
      {
        v12 = BTDiscoveryAgentCreate();
        if (v12)
        {
          v13 = v12;
          v8 = AXLogBluetooth();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v14 = 67109120;
            v15 = v13;
            v9 = "VOTBTM: discovery agent creation failed with error %d";
            goto LABEL_19;
          }

          goto LABEL_20;
        }
      }

      started = BTDiscoveryAgentStartScan();
      if (started)
      {
        v7 = started;
        v8 = AXLogBluetooth();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 67109120;
          v15 = v7;
          v9 = "VOTBTM: failed to start scanning with error %d";
LABEL_19:
          _os_log_impl(&dword_18B15E000, v8, OS_LOG_TYPE_DEFAULT, v9, &v14, 8u);
        }

LABEL_20:

        return;
      }
    }

    else if (discoveryAgent)
    {
      v11 = AXLogBluetooth();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_18B15E000, v11, OS_LOG_TYPE_DEFAULT, "VOTBTM: stopping discovery agent", &v14, 2u);
      }

      BTDiscoveryAgentStopScan();
      BTDiscoveryAgentDestroy();
      *p_discoveryAgent = 0;
    }

    self->_wantsDiscoveryEnabled = 0;
    return;
  }

  if (scanning)
  {
    v10 = AXLogBluetooth();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_18B15E000, v10, OS_LOG_TYPE_DEFAULT, "VOTBTM: Could not enable DiscoveryAgentScanning. session is nil", &v14, 2u);
    }

    self->_wantsDiscoveryEnabled = 1;
  }
}

- (void)_restartScan
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_scanningEnabled)
  {
    [(AXUIBluetoothHelper *)self _setDiscoveryAgentScanning:0];
    [(AXUIBluetoothHelper *)self _setDiscoveryAgentScanning:1];
    started = BTDiscoveryAgentStartScan();
    if (started)
    {
      v4 = started;
      v5 = AXLogBluetooth();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6[0] = 67109120;
        v6[1] = v4;
        _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_DEFAULT, "VOTBTM: failed to restart scanning with error %d", v6, 8u);
      }

      self->_scanningEnabled = 0;
    }
  }
}

- (void)_cleanup:(BOOL)_cleanup
{
  v9 = *MEMORY[0x1E69E9840];
  self->_available = 0;
  if (!_cleanup)
  {
    if (self->_discoveryAgent)
    {
      BTDiscoveryAgentStopScan();
      BTDiscoveryAgentDestroy();
    }

    if (self->_pairingAgent)
    {
      BTPairingAgentStop();
      BTPairingAgentDestroy();
    }

    if (self->_localDevice)
    {
      BTLocalDeviceRemoveCallbacks();
    }

    if (self->_session)
    {
      BTServiceRemoveCallbacks();
      BTSessionDetachWithQueue();
    }
  }

  *&self->_audioConnected = 0;
  self->_localDevice = 0;
  self->_session = 0;
  self->_discoveryAgent = 0;
  self->_pairingAgent = 0;
  btAddrDict = self->_btAddrDict;
  self->_btAddrDict = 0;

  btDeviceDict = self->_btDeviceDict;
  self->_btDeviceDict = 0;

  v6 = AXLogBluetooth();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_18B15E000, v6, OS_LOG_TYPE_DEFAULT, "Cleaning up BT helper: %@", &v7, 0xCu);
  }
}

- (void)dealloc
{
  centralManager = [(AXUIBluetoothHelper *)self centralManager];
  sharedPairingAgent = [centralManager sharedPairingAgent];
  [sharedPairingAgent setDelegate:0];

  centralManager2 = [(AXUIBluetoothHelper *)self centralManager];
  [centralManager2 setDelegate:0];

  [(AXUIBluetoothHelper *)self _cleanup:0];
  v6.receiver = self;
  v6.super_class = AXUIBluetoothHelper;
  [(AXUIBluetoothHelper *)&v6 dealloc];
}

- (void)_postNotificationWithArray:(id)array
{
  v12 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v4 = [arrayCopy count];
  if (!v4)
  {
    v6 = 0;
    v5 = &stru_1EFE6D570;
    goto LABEL_8;
  }

  v5 = [arrayCopy objectAtIndex:0];
  if (v4 == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = [arrayCopy objectAtIndex:1];
    if (v4 >= 3)
    {
      v7 = [arrayCopy objectAtIndex:2];
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v7, @"VOSBluetoothErrorKey", v5, @"VOSBluetoothNotificationNameKey", 0}];

      goto LABEL_8;
    }
  }

  v4 = 0;
LABEL_8:
  v8 = AXLogBluetooth();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v5;
    _os_log_impl(&dword_18B15E000, v8, OS_LOG_TYPE_DEFAULT, "VOTBTM: posting notification %{public}@", buf, 0xCu);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:v5 object:v6 userInfo:v4];
}

- (void)_postNotification:(id)notification
{
  v9 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = AXLogBluetooth();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = notificationCopy;
    _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_DEFAULT, "VOTBTM: posting notification %{public}@", &v7, 0xCu);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:notificationCopy object:self];
}

- (void)postNotification:(id)notification
{
  notificationCopy = notification;
  v3 = notificationCopy;
  AXPerformBlockAsynchronouslyOnMainThread();
}

- (void)postNotificationName:(id)name object:(id)object
{
  nameCopy = name;
  objectCopy = object;
  v7 = objectCopy;
  if (nameCopy && objectCopy)
  {
    v8 = nameCopy;
    v9 = v7;
    AXPerformBlockAsynchronouslyOnMainThread();
  }
}

void __51__AXUIBluetoothHelper_postNotificationName_object___block_invoke(void *a1)
{
  v4[2] = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  v2 = a1[6];
  v4[0] = a1[5];
  v4[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  [v1 _postNotificationWithArray:v3];
}

- (void)postNotificationName:(id)name object:(id)object error:(id)error
{
  nameCopy = name;
  objectCopy = object;
  errorCopy = error;
  v10 = errorCopy;
  if (nameCopy && objectCopy && errorCopy)
  {
    v11 = nameCopy;
    v12 = objectCopy;
    v13 = v10;
    AXPerformBlockAsynchronouslyOnMainThread();
  }
}

void __57__AXUIBluetoothHelper_postNotificationName_object_error___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v3 count:3];
  [v1 _postNotificationWithArray:v2];
}

- (int64_t)powerState
{
  result = self->_localDevice;
  if (result)
  {
    BTLocalDeviceGetModulePower();
    return 0;
  }

  return result;
}

- (BOOL)setPowered:(BOOL)powered
{
  v15 = *MEMORY[0x1E69E9840];
  localDevice = self->_localDevice;
  if (localDevice)
  {
    poweredCopy = powered;
    v6 = BTLocalDeviceSetModulePower();
    if (v6)
    {
      v7 = v6;
      v8 = AXLogBluetooth();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = @"OFF";
        if (poweredCopy)
        {
          v9 = @"ON";
        }

        v11 = 138543618;
        v12 = v9;
        v13 = 1024;
        v14 = v7;
        _os_log_impl(&dword_18B15E000, v8, OS_LOG_TYPE_DEFAULT, "VOBTM: BTLocalDeviceSetModulePower with power %{public}@ failed with error %d", &v11, 0x12u);
      }

      LOBYTE(localDevice) = 0;
    }

    else
    {
      [(AXUIBluetoothHelper *)self postNotification:@"VOSBluetoothPowerChangedNotification"];
      LOBYTE(localDevice) = 1;
    }
  }

  return localDevice;
}

- (void)_powerChanged
{
  if ([(AXUIBluetoothHelper *)self powerState]!= 1)
  {
    [(AXUIBluetoothHelper *)self postNotification:@"VOSBluetoothPowerChangedNotification"];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.bluetooth.power-changed", 0, 0, 1u);
  }
}

- (BOOL)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (!enabled)
  {
    [(AXUIBluetoothHelper *)self setDeviceScanningEnabled:0];
  }

  return [(AXUIBluetoothHelper *)self setPowered:enabledCopy];
}

- (BOOL)btleDeviceIsPaired:(id)paired
{
  pairedCopy = paired;
  centralManager = [(AXUIBluetoothHelper *)self centralManager];
  sharedPairingAgent = [centralManager sharedPairingAgent];
  peripheral = [pairedCopy peripheral];

  LOBYTE(pairedCopy) = [sharedPairingAgent isPeerPaired:peripheral];
  return pairedCopy;
}

- (void)unpairBTLEDevice:(id)device
{
  v11 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v5 = AXLogBluetooth();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = deviceCopy;
    _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_DEFAULT, "Unpairing BTLE device: %@", &v9, 0xCu);
  }

  centralManager = [(AXUIBluetoothHelper *)self centralManager];
  sharedPairingAgent = [centralManager sharedPairingAgent];
  peripheral = [deviceCopy peripheral];
  [sharedPairingAgent unpairPeer:peripheral];
}

- (BOOL)unpairAddress:(id)address
{
  *&v14[5] = *MEMORY[0x1E69E9840];
  addressCopy = address;
  [addressCopy UTF8String];
  BTDeviceAddressFromString();
  v5 = BTDeviceFromAddress();
  if (v5)
  {
    v6 = AXLogBluetooth();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(AXUIBluetoothHelper *)addressCopy unpairAddress:v5, v6];
    }
  }

  else
  {
    v7 = BTPairingAgentDeletePairedDevice();
    if (v7)
    {
      v8 = v7;
      v9 = AXLogBluetooth();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        v14[0] = v8;
        LOWORD(v14[1]) = 2112;
        *(&v14[1] + 2) = addressCopy;
        _os_log_impl(&dword_18B15E000, v9, OS_LOG_TYPE_DEFAULT, "VOTBTM: failed to unpair from device with error %d (address: %@)", buf, 0x12u);
      }
    }

    deviceUpdated = self->_deviceUpdated;
    if (deviceUpdated)
    {
      v11 = [[AXUIBluetoothDevice alloc] initWithDevice:0 address:addressCopy helper:self];
      deviceUpdated[2](deviceUpdated, v11);
    }

    v6 = AXLogBluetooth();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v14 = addressCopy;
      _os_log_impl(&dword_18B15E000, v6, OS_LOG_TYPE_DEFAULT, "VOTBTM: Unpaired device address: %@", buf, 0xCu);
    }
  }

  return v5 == 0;
}

- (BOOL)unpairDevice:(id)device
{
  v16 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v5 = AXLogBluetooth();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = deviceCopy;
    _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_DEFAULT, "VOTBTM: Unpairing device: %@", &v12, 0xCu);
  }

  if (deviceCopy)
  {
    if ([deviceCopy isBTLEDevice])
    {
      [(AXUIBluetoothHelper *)self unpairBTLEDevice:deviceCopy];
      v6 = 1;
    }

    else
    {
      if (!self->_pairingAgent)
      {
        [(AXUIBluetoothHelper *)self setDevicePairingEnabled:1];
      }

      [(AXUIBluetoothHelper *)self cancelPairing];
      [deviceCopy device];
      v7 = BTPairingAgentDeletePairedDevice();
      v6 = v7 == 0;
      if (v7)
      {
        v8 = v7;
        v9 = AXLogBluetooth();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138543618;
          v13 = deviceCopy;
          v14 = 1024;
          v15 = v8;
          _os_log_impl(&dword_18B15E000, v9, OS_LOG_TYPE_DEFAULT, "VOTBTM: failed to unpair from device %{public}@ with error %d", &v12, 0x12u);
        }
      }

      deviceUpdated = self->_deviceUpdated;
      if (deviceUpdated)
      {
        deviceUpdated[2](deviceUpdated, deviceCopy);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setDevicePairingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v20 = *MEMORY[0x1E69E9840];
  v5 = AXLogBluetooth();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "disabled";
    if (enabledCopy)
    {
      v6 = "enabled";
    }

    v18 = 136446210;
    v19 = v6;
    _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_DEFAULT, "VOTBTM: trying setting device pairing %{public}s", &v18, 0xCu);
  }

  if (!self->_session || [(AXUIBluetoothHelper *)self devicePairingEnabled]== enabledCopy)
  {
    self->_wantsDiscoveryEnabled = 1;
    return;
  }

  v7 = AXLogBluetooth();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "disabled";
    if (enabledCopy)
    {
      v8 = "enabled";
    }

    v18 = 136446210;
    v19 = v8;
    _os_log_impl(&dword_18B15E000, v7, OS_LOG_TYPE_DEFAULT, "VOTBTM: setting device pairing %{public}s", &v18, 0xCu);
  }

  p_pairingAgent = &self->_pairingAgent;
  pairingAgent = self->_pairingAgent;
  if (!enabledCopy)
  {
    if (!pairingAgent)
    {
      return;
    }

    v14 = AXLogBluetooth();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_18B15E000, v14, OS_LOG_TYPE_DEFAULT, "VOTBTM: stopping pairing agent", &v18, 2u);
    }

    BTPairingAgentStop();
LABEL_22:
    BTPairingAgentDestroy();
    *p_pairingAgent = 0;
    return;
  }

  if (!pairingAgent)
  {
    v15 = BTPairingAgentCreate();
    if (v15)
    {
      v16 = v15;
      v17 = AXLogBluetooth();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 67109120;
        LODWORD(v19) = v16;
        _os_log_impl(&dword_18B15E000, v17, OS_LOG_TYPE_DEFAULT, "VOTBTM: pairing agent creation failed with error %d", &v18, 8u);
      }

      return;
    }
  }

  v11 = BTPairingAgentStart();
  v12 = AXLogBluetooth();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v18 = 67109120;
      LODWORD(v19) = v11;
      _os_log_impl(&dword_18B15E000, v12, OS_LOG_TYPE_DEFAULT, "VOTBTM: failed to start pairing agent with error %d", &v18, 8u);
    }

    goto LABEL_22;
  }

  if (v13)
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_18B15E000, v12, OS_LOG_TYPE_DEFAULT, "VOTBTM: started pairing agent ", &v18, 2u);
  }
}

- (void)cancelPairing
{
  v6 = *MEMORY[0x1E69E9840];
  if (self->_pairingAgent)
  {
    v2 = BTPairingAgentCancelPairing();
    if (v2)
    {
      v3 = v2;
      v4 = AXLogBluetooth();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5[0] = 67109120;
        v5[1] = v3;
        _os_log_impl(&dword_18B15E000, v4, OS_LOG_TYPE_DEFAULT, "VOTBTM: failed to cancel pairing with error %d", v5, 8u);
      }
    }
  }
}

- (id)deviceForPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  btleDevices = self->_btleDevices;
  identifier = [peripheralCopy identifier];
  uUIDString = [identifier UUIDString];
  v8 = [(NSMutableDictionary *)btleDevices objectForKey:uUIDString];

  if (!v8)
  {
    v8 = [[AXUIBluetoothDevice alloc] initWithPeripheral:peripheralCopy helper:self];
    v9 = self->_btleDevices;
    identifier2 = [(AXUIBluetoothDevice *)v8 identifier];
    [(NSMutableDictionary *)v9 setObject:v8 forKeyedSubscript:identifier2];
  }

  v11 = v8;

  return v11;
}

- (NSArray)pairedBTLEDevices
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  centralManager = [(AXUIBluetoothHelper *)self centralManager];
  state = [centralManager state];

  if (state == 5)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    centralManager2 = [(AXUIBluetoothHelper *)self centralManager];
    v7 = [centralManager2 retrieveConnectedPeripheralsWithServices:0 allowAll:1];

    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          name = [v12 name];
          v14 = name;
          if (!name || ([name containsString:@"Apple Pencil"] & 1) == 0)
          {
            v15 = [(AXUIBluetoothHelper *)self deviceForPeripheral:v12];
            if (v15 && ([v3 containsObject:v15] & 1) == 0 && -[AXUIBluetoothHelper isPairedDeviceBrailleDisplay:](self, "isPairedDeviceBrailleDisplay:", v15))
            {
              [v3 addObject:v15];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }
  }

  return v3;
}

- (id)pairedDevices
{
  v43 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  if (self->_localDevice)
  {
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    PairedDevices = BTLocalDeviceGetPairedDevices();
    v5 = AXLogBluetooth();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (PairedDevices)
    {
      if (v6)
      {
        *buf = 67109120;
        LODWORD(v42) = PairedDevices;
        _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_DEFAULT, "VOTBTM: failed to get paired devices with error %d", buf, 8u);
      }
    }

    else if (v6)
    {
      *buf = 134217984;
      v42 = v40;
      _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_DEFAULT, "VOTBTM: BTLocalDeviceGetPairedDevices returned %zd devices", buf, 0xCu);
    }
  }

  return array;
}

- (void)setPincode:(id)pincode forDevice:(id)device
{
  v12 = *MEMORY[0x1E69E9840];
  pincodeCopy = pincode;
  deviceCopy = device;
  v7 = AXLogBluetooth();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = pincodeCopy;
    v10 = 2114;
    v11 = deviceCopy;
    _os_log_impl(&dword_18B15E000, v7, OS_LOG_TYPE_DEFAULT, "VOTBTM: setting pincode %{public}@ for device %{public}@", &v8, 0x16u);
  }

  if (pincodeCopy)
  {
    [deviceCopy device];
    [pincodeCopy UTF8String];
    BTPairingAgentSetPincode();
  }

  else
  {
    BTPairingAgentCancelPairing();
  }
}

- (BOOL)isAnyoneScanning
{
  localDevice = self->_localDevice;
  if (localDevice)
  {
    Scanning = BTLocalDeviceGetScanning();
    if (Scanning)
    {
      v4 = Scanning;
      v5 = AXLogBluetooth();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(AXUIBluetoothHelper *)v4 isAnyoneScanning];
      }
    }

    LOBYTE(localDevice) = 0;
  }

  return localDevice;
}

- (BOOL)isDiscoverable
{
  v9 = *MEMORY[0x1E69E9840];
  localDevice = self->_localDevice;
  if (localDevice)
  {
    Discoverable = BTLocalDeviceGetDiscoverable();
    if (Discoverable)
    {
      v4 = Discoverable;
      v5 = AXLogBluetooth();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v8 = v4;
        _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_DEFAULT, "VOTBTM: BTLocalDeviceGetDiscoverable returned error %d", buf, 8u);
      }
    }

    LOBYTE(localDevice) = 0;
  }

  return localDevice;
}

- (void)setDiscoverable:(BOOL)discoverable
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_localDevice)
  {
    discoverableCopy = discoverable;
    v5 = AXLogBluetooth();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "disabled";
      if (discoverableCopy)
      {
        v6 = "enabled";
      }

      v7 = 136446210;
      v8 = v6;
      _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_DEFAULT, "VOTBTM: setting discoverable status %{public}s", &v7, 0xCu);
    }

    if (!BTLocalDeviceSetDiscoverable())
    {
      [(AXUIBluetoothHelper *)self setDevicePairingEnabled:discoverableCopy];
    }
  }
}

- (BOOL)wasDeviceDiscovered:(id)discovered
{
  v40 = *MEMORY[0x1E69E9840];
  discoveredCopy = discovered;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  if (!BTDiscoveryAgentGetDevices())
  {
    v5 = AXLogBluetooth();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v39 = 0;
      _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_DEFAULT, "VOTBTM: BTDiscoveryAgentGetDevices returned %zd devices", buf, 0xCu);
    }
  }

  return 0;
}

- (id)addDeviceIfNeeded:(BTDeviceImpl *)needed
{
  v17 = *MEMORY[0x1E69E9840];
  btDeviceDict = self->_btDeviceDict;
  v6 = [MEMORY[0x1E696B098] valueWithPointer:?];
  v7 = [(NSMutableDictionary *)btDeviceDict objectForKey:v6];

  if (v7)
  {
LABEL_2:
    v8 = 0;
    goto LABEL_3;
  }

  v8 = VOSAddressForBTDevice();
  v10 = [(NSMutableDictionary *)self->_btAddrDict objectForKey:v8];
  if (v10)
  {
    v7 = v10;
    if ([(BTDeviceImpl *)v10 device]!= needed)
    {
      [(BTDeviceImpl *)v7 setDevice:needed];
    }
  }

  else
  {
    if (!v8)
    {
      v14 = AXLogBluetooth();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 134217984;
        neededCopy = needed;
        _os_log_impl(&dword_18B15E000, v14, OS_LOG_TYPE_DEFAULT, "VOTBTM: Failed to retrieve address for BTDevice %p. VOSBluetoothManager may be thoroughly confused.", &v15, 0xCu);
      }

      v7 = 0;
      goto LABEL_2;
    }

    v7 = [objc_allocWithZone(AXUIBluetoothDevice) initWithDevice:needed address:v8 helper:self];
    v11 = AXLogBluetooth();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      neededCopy = v7;
      _os_log_impl(&dword_18B15E000, v11, OS_LOG_TYPE_DEFAULT, "VOTBTM: Adding new device %{public}@", &v15, 0xCu);
    }

    [(NSMutableDictionary *)self->_btAddrDict setObject:v7 forKey:v8];
    v12 = self->_btDeviceDict;
    v13 = [MEMORY[0x1E696B098] valueWithPointer:needed];
    [(NSMutableDictionary *)v12 setObject:v7 forKey:v13];
  }

LABEL_3:

  return v7;
}

- (void)acceptSSP:(int)p forDevice:(id)device
{
  v14 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v6 = AXLogBluetooth();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218242;
    pCopy = p;
    v12 = 2114;
    v13 = deviceCopy;
    _os_log_impl(&dword_18B15E000, v6, OS_LOG_TYPE_DEFAULT, "VOTBTM: accepting SSP with error code %ld for device %{public}@", &v10, 0x16u);
  }

  [deviceCopy device];
  v7 = BTPairingAgentAcceptSSP();
  if (v7)
  {
    v8 = v7;
    v9 = AXLogBluetooth();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 67109120;
      LODWORD(pCopy) = v8;
      _os_log_impl(&dword_18B15E000, v9, OS_LOG_TYPE_DEFAULT, "VOTBTM: BTPairingAgentAcceptSSP returned error %d", &v10, 8u);
    }
  }
}

- (BOOL)connectAddress:(id)address
{
  v15 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  v5 = [(NSMutableDictionary *)self->_discoveredDevices objectForKeyedSubscript:addressCopy];
  if (!v5)
  {
    v6 = AXLogBluetooth();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      discoveredDevices = [(AXUIBluetoothHelper *)self discoveredDevices];
      v9 = 138412802;
      selfCopy = self;
      v11 = 2112;
      v12 = addressCopy;
      v13 = 2112;
      v14 = discoveredDevices;
      _os_log_impl(&dword_18B15E000, v6, OS_LOG_TYPE_DEFAULT, "%@ Could not find device with address: %@ %@", &v9, 0x20u);
    }
  }

  [(AXUIBluetoothHelper *)self connectDevice:v5];

  return 1;
}

- (BOOL)disconnectAddress:(id)address
{
  v4 = [(NSMutableDictionary *)self->_discoveredDevices objectForKeyedSubscript:address];
  if (v4)
  {
    [(AXUIBluetoothHelper *)self disconnectDevice:v4];
  }

  else
  {
    v5 = AXLogBluetooth();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_DEFAULT, "Could not find device with address, making new one", v7, 2u);
    }
  }

  return v4 != 0;
}

- (BOOL)disconnectDevice:(id)device
{
  v17 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  isBTLEDevice = [deviceCopy isBTLEDevice];
  v6 = AXLogBluetooth();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (isBTLEDevice)
  {
    if (v7)
    {
      v13 = 138412290;
      v14 = deviceCopy;
      _os_log_impl(&dword_18B15E000, v6, OS_LOG_TYPE_DEFAULT, "VOTBTM: Disconnecting periperhal: %@", &v13, 0xCu);
    }

    centralManager = [(AXUIBluetoothHelper *)self centralManager];
    peripheral = [deviceCopy peripheral];
    [centralManager cancelPeripheralConnection:peripheral options:0];
  }

  else
  {
    if (v7)
    {
      v13 = 138543362;
      v14 = deviceCopy;
      _os_log_impl(&dword_18B15E000, v6, OS_LOG_TYPE_DEFAULT, "VOTBTM: disconnecting services to device %{public}@", &v13, 0xCu);
    }

    [deviceCopy device];
    v10 = BTDeviceDisconnect();
    if (!v10)
    {
      LOBYTE(isBTLEDevice) = 1;
      goto LABEL_11;
    }

    v11 = v10;
    centralManager = AXLogBluetooth();
    if (os_log_type_enabled(centralManager, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543618;
      v14 = deviceCopy;
      v15 = 1024;
      v16 = v11;
      _os_log_impl(&dword_18B15E000, centralManager, OS_LOG_TYPE_DEFAULT, "VOTBTM: disconnecting to device %{public}@ failed with error %d", &v13, 0x12u);
    }
  }

LABEL_11:
  return isBTLEDevice;
}

- (BOOL)connectDevice:(id)device withServices:(unsigned int)services
{
  v22 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  isBTLEDevice = [deviceCopy isBTLEDevice];
  if (!isBTLEDevice)
  {
    v16 = AXLogBluetooth();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 67109378;
      *v21 = services;
      *&v21[4] = 2114;
      *&v21[6] = deviceCopy;
      _os_log_impl(&dword_18B15E000, v16, OS_LOG_TYPE_DEFAULT, "VOTBTM: connecting services 0x%08x to device %{public}@", &v20, 0x12u);
    }

    [deviceCopy device];
    v17 = BTDeviceConnectServices();
    if (v17)
    {
      v18 = v17;
      peripheral4 = AXLogBluetooth();
      if (os_log_type_enabled(peripheral4, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138543618;
        *v21 = deviceCopy;
        *&v21[8] = 1024;
        *&v21[10] = v18;
        _os_log_impl(&dword_18B15E000, peripheral4, OS_LOG_TYPE_DEFAULT, "VOTBTM: connecting to device %{public}@ failed with error %d", &v20, 0x12u);
      }

      goto LABEL_13;
    }

LABEL_14:
    LOBYTE(isBTLEDevice) = 1;
    goto LABEL_15;
  }

  v8 = AXLogBrailleHW();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    peripheral = [deviceCopy peripheral];
    v20 = 138412290;
    *v21 = peripheral;
    _os_log_impl(&dword_18B15E000, v8, OS_LOG_TYPE_DEFAULT, "Attempt connect: Current peripheral state: %@", &v20, 0xCu);
  }

  peripheral2 = [deviceCopy peripheral];
  isConnectedToSystem = [peripheral2 isConnectedToSystem];

  if (isConnectedToSystem)
  {
    goto LABEL_14;
  }

  v12 = AXLogBrailleHW();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    peripheral3 = [deviceCopy peripheral];
    v20 = 138412290;
    *v21 = peripheral3;
    _os_log_impl(&dword_18B15E000, v12, OS_LOG_TYPE_DEFAULT, "Connecting: %@", &v20, 0xCu);
  }

  centralManager = self->_centralManager;
  peripheral4 = [deviceCopy peripheral];
  [(CBCentralManager *)centralManager connectPeripheral:peripheral4 options:0];
LABEL_13:

LABEL_15:
  return isBTLEDevice;
}

- (BOOL)connectDevice:(id)device
{
  deviceCopy = device;
  LOBYTE(self) = [(AXUIBluetoothHelper *)self connectDevice:deviceCopy withServices:[(AXUIBluetoothHelper *)self authorizedServices]];

  return self;
}

- (BOOL)connectable
{
  v9 = *MEMORY[0x1E69E9840];
  localDevice = self->_localDevice;
  if (localDevice)
  {
    Connectable = BTLocalDeviceGetConnectable();
    if (Connectable)
    {
      v4 = Connectable;
      v5 = AXLogBluetooth();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v8 = v4;
        _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_DEFAULT, "BT: BTLocalDeviceGetConnectable returned error %d", buf, 8u);
      }
    }

    LOBYTE(localDevice) = 0;
  }

  return localDevice;
}

- (void)setConnectable:(BOOL)connectable
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_localDevice)
  {
    connectableCopy = connectable;
    v4 = AXLogBluetooth();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "disabled";
      if (connectableCopy)
      {
        v5 = "enabled";
      }

      v6 = 136446210;
      v7 = v5;
      _os_log_impl(&dword_18B15E000, v4, OS_LOG_TYPE_DEFAULT, "VOTBTM: setting connectable status %{public}s", &v6, 0xCu);
    }

    BTLocalDeviceSetConnectable();
  }
}

- (id)connectingDevices
{
  v43 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  if (self->_localDevice)
  {
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    ConnectingDevices = BTLocalDeviceGetConnectingDevices();
    v5 = AXLogBluetooth();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (ConnectingDevices)
    {
      if (v6)
      {
        *buf = 67109120;
        LODWORD(v42) = ConnectingDevices;
        _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_DEFAULT, "VOTBTM: failed to get connecting devices with error %d", buf, 8u);
      }
    }

    else if (v6)
    {
      *buf = 134217984;
      v42 = v40;
      _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_DEFAULT, "VOTBTM: BTLocalDeviceGetConnectingDevices returned %zd devices", buf, 0xCu);
    }
  }

  return array;
}

- (BOOL)_onlySensorsConnected
{
  v8 = *MEMORY[0x1E69E9840];
  if (!self->_localDevice)
  {
    return 0;
  }

  ConnectedDevices = BTLocalDeviceGetConnectedDevices();
  if (ConnectedDevices)
  {
    v3 = ConnectedDevices;
    v4 = AXLogBluetooth();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v7 = v3;
      _os_log_impl(&dword_18B15E000, v4, OS_LOG_TYPE_DEFAULT, "VOTBTM: BTLocalDeviceGetConnectedDevices failed with error %d", buf, 8u);
    }
  }

  return 0;
}

- (BOOL)connected
{
  v9 = *MEMORY[0x1E69E9840];
  localDevice = self->_localDevice;
  if (localDevice)
  {
    ConnectionStatus = BTLocalDeviceGetConnectionStatus();
    if (ConnectionStatus)
    {
      v4 = ConnectionStatus;
      v5 = AXLogBluetooth();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v8 = v4;
        _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_DEFAULT, "VOBTM: BTLocalDeviceGetConnectionStatus failed with error %d", buf, 8u);
      }
    }

    LOBYTE(localDevice) = 0;
  }

  return localDevice;
}

- (BOOL)isServiceSupported:(unsigned int)supported
{
  localDevice = self->_localDevice;
  if (localDevice)
  {
    BTLocalDeviceSupportsService();
    LOBYTE(localDevice) = 0;
  }

  return localDevice;
}

- (unsigned)authorizedServicesForDevice:(id)device
{
  [device device];
  AuthorizedServices = BTDeviceGetAuthorizedServices();
  if (!AuthorizedServices)
  {
    return 0;
  }

  v4 = AuthorizedServices;
  v5 = AXLogBluetooth();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(AXUIBluetoothHelper *)v4 authorizedServicesForDevice:v5];
  }

  return 0;
}

- (void)_updateCentralManagerScan
{
  if ([(CBCentralManager *)self->_centralManager state]== 5)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"VOSBluetoothCoreBluetoothManagerReadyNotification" object:0];
  }
}

- (void)centralManagerDidUpdateState:(id)state
{
  v23 = *MEMORY[0x1E69E9840];
  [(AXUIBluetoothHelper *)self _updateCentralManagerScan];
  v4 = AXLogBluetooth();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CBCentralManager state](self->_centralManager, "state")}];
    *buf = 138412290;
    v22 = v5;
    _os_log_impl(&dword_18B15E000, v4, OS_LOG_TYPE_DEFAULT, "Center manager did updated state: %@", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  centralManager = [(AXUIBluetoothHelper *)self centralManager];
  v7 = [centralManager retrieveConnectedPeripheralsWithServices:MEMORY[0x1E695E0F0]];

  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v17;
    *&v9 = 138412290;
    v15 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [(AXUIBluetoothHelper *)self deviceForPeripheral:*(*(&v16 + 1) + 8 * v12), v15];
        v14 = AXLogBrailleHW();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v15;
          v22 = v13;
          _os_log_impl(&dword_18B15E000, v14, OS_LOG_TYPE_DEFAULT, "Adding BTLE discovered device: %@", buf, 0xCu);
        }

        [(AXUIBluetoothHelper *)self _addDiscoveredDevice:v13];
        ++v12;
      }

      while (v10 != v12);
      v10 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  [(AXUIBluetoothHelper *)self _setupCentralScanning:1];
}

- (void)_setupCentralScanning:(BOOL)scanning
{
  scanningCopy = scanning;
  centralManager = [(AXUIBluetoothHelper *)self centralManager];
  state = [centralManager state];

  if (state == 5)
  {
    centralManager2 = [(AXUIBluetoothHelper *)self centralManager];
    v9 = centralManager2;
    if (scanningCopy)
    {
      [centralManager2 scanForPeripheralsWithServices:0 options:0];

      v8 = AXLogBrailleHW();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18B15E000, v8, OS_LOG_TYPE_DEFAULT, "Scanning for peripherals: ", buf, 2u);
      }
    }

    else
    {
      [centralManager2 stopScan];
    }
  }
}

- (void)_removeDevice:(id)device
{
  v12 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  if (([deviceCopy paired] & 1) == 0)
  {
    v5 = AXLogBluetooth();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = deviceCopy;
      _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_DEFAULT, "VOTBTM: Removing device %{public}@", &v10, 0xCu);
    }

    btAddrDict = self->_btAddrDict;
    address = [deviceCopy address];
    [(NSMutableDictionary *)btAddrDict removeObjectForKey:address];

    btDeviceDict = self->_btDeviceDict;
    v9 = [MEMORY[0x1E696B098] valueWithPointer:{objc_msgSend(deviceCopy, "device")}];
    [(NSMutableDictionary *)btDeviceDict removeObjectForKey:v9];
  }
}

- (void)deviceDiscovered:(id)discovered
{
  self->_deviceDiscovered = _Block_copy(discovered);

  MEMORY[0x1EEE66BB8]();
}

- (void)deviceRemoved:(id)removed
{
  self->_deviceRemoved = _Block_copy(removed);

  MEMORY[0x1EEE66BB8]();
}

- (void)deviceUpdated:(id)updated
{
  self->_deviceUpdated = _Block_copy(updated);

  MEMORY[0x1EEE66BB8]();
}

- (id)allowedServices
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695D2A0] UUIDWithString:*MEMORY[0x1E695D248]];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695D2A0] UUIDWithString:@"49535343-FE7D-4AE5-8FA9-9FAFD205E455"];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

- (BOOL)peripheralMatchesUnadvertisedService:(id)service
{
  serviceCopy = service;
  name = [serviceCopy name];
  if ([name hasPrefix:@"DotPad"])
  {
    v5 = 1;
  }

  else
  {
    name2 = [serviceCopy name];
    v5 = [name2 hasPrefix:@"DotPocket"];
  }

  return v5;
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  v32 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  [data objectForKeyedSubscript:*MEMORY[0x1E695D1F8]];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v24 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * v13);
        allowedServices = [(AXUIBluetoothHelper *)self allowedServices];
        LOBYTE(v14) = [allowedServices containsObject:v14];

        if (v14)
        {

          v16 = 1;
          goto LABEL_11;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v21 objects:v31 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v16 = [(AXUIBluetoothHelper *)self peripheralMatchesUnadvertisedService:peripheralCopy];
LABEL_11:
  v17 = AXLogBrailleHW();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:v16];
    *buf = 138412802;
    v26 = peripheralCopy;
    v27 = 2112;
    v28 = v18;
    v29 = 2112;
    v30 = v9;
    _os_log_impl(&dword_18B15E000, v17, OS_LOG_TYPE_INFO, "Discovered periperal: %@, allowed %@ %@", buf, 0x20u);
  }

  if (v16)
  {
    v19 = [(AXUIBluetoothHelper *)self deviceForPeripheral:peripheralCopy];
    v20 = AXLogBrailleHW();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v19;
      _os_log_impl(&dword_18B15E000, v20, OS_LOG_TYPE_DEFAULT, "Adding BTLE discovered device: %@", buf, 0xCu);
    }

    [(AXUIBluetoothHelper *)self _addDiscoveredDevice:v19];
  }
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  v19 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  errorCopy = error;
  v9 = [(AXUIBluetoothHelper *)self deviceForPeripheral:peripheralCopy];
  v10 = AXLogBrailleHW();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v13 = 138412802;
    v14 = peripheralCopy;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = errorCopy;
    _os_log_error_impl(&dword_18B15E000, v10, OS_LOG_TYPE_ERROR, "Failed to connected: %@, device: %@ error %@", &v13, 0x20u);
  }

  if (v9)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"VOSBluetoothDeviceConnectFailedNotification" object:v9];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:@"VOSBluetoothDeviceUpdatedNotification" object:v9];
  }
}

- (void)centralManager:(id)manager didUpdatePeripheralConnectionState:(id)state
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [(AXUIBluetoothHelper *)self deviceForPeripheral:state];
  v5 = AXLogBrailleHW();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_DEFAULT, "Updated periperhal state for %@", &v7, 0xCu);
  }

  if (v4)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"VOSBluetoothDeviceUpdatedNotification" object:v4];
  }
}

- (void)_peripheralDidCompletePairing:(id)pairing
{
  v10 = *MEMORY[0x1E69E9840];
  pairingCopy = pairing;
  v5 = AXLogBrailleHW();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = pairingCopy;
    _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_DEFAULT, "Completed pairing to %@", &v8, 0xCu);
  }

  if (pairingCopy)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"VOSBluetoothDevicePairedNotification" object:pairingCopy];

    deviceUpdated = self->_deviceUpdated;
    if (deviceUpdated)
    {
      deviceUpdated[2](deviceUpdated, pairingCopy);
    }
  }
}

- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing
{
  v5 = [(AXUIBluetoothHelper *)self deviceForPeripheral:pairing];
  if (v5)
  {
    v8 = v5;
    [(AXUIBluetoothHelper *)self _peripheralDidCompletePairing:v5];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"VOSBluetoothDeviceConnectSuccessNotification" object:v8];

    deviceUpdated = self->_deviceUpdated;
    if (deviceUpdated)
    {
      deviceUpdated[2](deviceUpdated, v8);
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error
{
  pairingCopy = pairing;
  v6 = [(AXUIBluetoothHelper *)self deviceForPeripheral:pairingCopy];
  if ([pairingCopy state])
  {
    centralManager = [(AXUIBluetoothHelper *)self centralManager];
    [centralManager cancelPeripheralConnection:pairingCopy];
  }

  if (v6)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"VOSBluetoothDeviceUnpairedNotification" object:v6];

    deviceUpdated = self->_deviceUpdated;
    if (deviceUpdated)
    {
      deviceUpdated[2](deviceUpdated, v6);
    }
  }
}

- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair
{
  v7 = [(AXUIBluetoothHelper *)self deviceForPeripheral:unpair];
  if (v7)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"VOSBluetoothDeviceDisconnectSuccessNotification" object:v7];

    deviceUpdated = self->_deviceUpdated;
    if (deviceUpdated)
    {
      deviceUpdated[2](deviceUpdated, v7);
    }
  }
}

- (void)peripheralDidUpdateName:(id)name
{
  v6 = [(AXUIBluetoothHelper *)self deviceForPeripheral:name];
  if (v6)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"VOSBluetoothDeviceUpdatedNotification" object:v6];
  }

  deviceUpdated = self->_deviceUpdated;
  if (deviceUpdated)
  {
    deviceUpdated[2](deviceUpdated, v6);
  }
}

- (void)_addDiscoveredDevice:(id)device
{
  v18 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v5 = deviceCopy;
  if (deviceCopy && ([(AXUIBluetoothHelper *)deviceCopy address], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    discoveredDevices = self->_discoveredDevices;
    address = [(AXUIBluetoothHelper *)v5 address];
    [(NSMutableDictionary *)discoveredDevices setObject:v5 forKeyedSubscript:address];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"VOSBluetoothDeviceDiscoveredNotification" object:v5];

    v10 = AXLogBluetooth();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_discoveredDevices;
      v14 = 138412546;
      selfCopy = self;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_18B15E000, v10, OS_LOG_TYPE_DEFAULT, "%@ Discovered devices: %@", &v14, 0x16u);
    }

    deviceDiscovered = self->_deviceDiscovered;
    if (deviceDiscovered)
    {
      deviceDiscovered[2](deviceDiscovered, v5);
    }
  }

  else
  {
    v13 = AXLogBluetooth();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      selfCopy = v5;
      _os_log_impl(&dword_18B15E000, v13, OS_LOG_TYPE_DEFAULT, "Invalid discovered device: %@", &v14, 0xCu);
    }
  }
}

- (void)unpairAddress:(os_log_t)log .cold.1(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&dword_18B15E000, log, OS_LOG_TYPE_ERROR, "In sending control message, failed to look up BT address %@: %d", &v3, 0x12u);
}

- (void)isAnyoneScanning
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = self;
  _os_log_error_impl(&dword_18B15E000, a2, OS_LOG_TYPE_ERROR, "VOTBTM: BTLocalDeviceGetScanning returned error %d", v2, 8u);
}

- (void)authorizedServicesForDevice:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_18B15E000, a2, OS_LOG_TYPE_ERROR, "VOBTM: failed to get authorized services with error %d", v2, 8u);
}

@end