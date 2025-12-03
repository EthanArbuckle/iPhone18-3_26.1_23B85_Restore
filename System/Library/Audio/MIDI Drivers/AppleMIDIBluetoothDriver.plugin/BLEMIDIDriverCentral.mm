@interface BLEMIDIDriverCentral
- (BLEMIDIDriverCentral)init;
- (BLEMIDIDriverCentral)initWithDriver:(MIDIDriverInterface *)driver;
- (BOOL)isAlreadyConnectedAsCentral:(id)central;
- (BOOL)verifyBLEDevice:(id)device;
- (id)deviceForEP:(unsigned int)p;
- (id)deviceForMIDIDevice:(unsigned int)device;
- (id)deviceForPeripheral:(id)peripheral;
- (id)deviceForUUID:(id)d;
- (id)midiCharacteristicForPeripheral:(id)peripheral;
- (id)peripheralWithUUID:(id)d;
- (id)validatePeripheral:(void *)peripheral;
- (id)verifyUUIDDiscovery:(id)discovery;
- (unsigned)createDevice:(id)device;
- (void)activateConnectedUUIDs;
- (void)activateUUID:(id)d withName:(id)name;
- (void)cancelAllConnections;
- (void)cancelConnectionForPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didUpdateConnectionParameters:(id)parameters interval:(id)interval latency:(id)latency supervisionTimeout:(id)timeout;
- (void)centralManagerDidUpdateState:(id)state;
- (void)checkChangeDeviceName:(unsigned int)name withName:(id)withName;
- (void)dealloc;
- (void)disconnectDevice:(unsigned int)device;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didModifyServices:(id)services;
- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
- (void)removeDeviceForPeripheral:(id)peripheral;
- (void)removeDeviceForUUID:(id)d;
- (void)resetAllConnectedDevices;
- (void)resetDevice:(unsigned int)device;
- (void)startScan;
- (void)xpcReceiveUUID:(id)d withName:(id)name;
@end

@implementation BLEMIDIDriverCentral

- (BLEMIDIDriverCentral)init
{
  sub_4A64();
  v2 = qword_1D968;
  if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "BTLEMIDIDriverCentral.mm";
    v6 = 1024;
    v7 = 40;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: Do not use init. Use initWitDriver instead.", &v4, 0x12u);
  }

  return 0;
}

- (BLEMIDIDriverCentral)initWithDriver:(MIDIDriverInterface *)driver
{
  v8.receiver = self;
  v8.super_class = BLEMIDIDriverCentral;
  v4 = [(BLEMIDIDriverCentral *)&v8 init];
  if (v4)
  {
    v5 = [CBCentralManager alloc];
    v6 = [NSNumber numberWithBool:1];
    v4->centralManager = [v5 initWithDelegate:v4 queue:0 options:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", v6, CBCentralManagerOptionReceiveSystemEvents, +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 0), CBCentralManagerOptionShowPowerAlertKey, 0)}];
    v4->connectedDevices = [[NSMutableArray alloc] initWithCapacity:0];
    v4->connectedPeripherals = [[NSMutableArray alloc] initWithCapacity:0];
    v4->peripheralsToConnect = [[NSMutableArray alloc] initWithCapacity:0];
    v4->xpcUUIDs = [[NSMutableArray alloc] initWithCapacity:0];
    v4->xpcNames = [[NSMutableArray alloc] initWithCapacity:0];
    v4->driver = driver;
    v4->connectionIntervalNanos = 11250000;
  }

  return v4;
}

- (void)dealloc
{
  [(CBCentralManager *)self->centralManager setDelegate:0];

  self->centralManager = 0;
  v3.receiver = self;
  v3.super_class = BLEMIDIDriverCentral;
  [(BLEMIDIDriverCentral *)&v3 dealloc];
}

- (void)startScan
{
  sub_4A64();
  v3 = qword_1D968;
  if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v6 = "BTLEMIDIDriverCentral.mm";
    v7 = 1024;
    v8 = 117;
    v9 = 2080;
    v10 = "03B80E5A-EDE8-4B33-A751-6CE34EC4C700";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%25s:%-5d Driver scanning for service %s", buf, 0x1Cu);
  }

  v4 = [CBUUID UUIDWithString:@"03B80E5A-EDE8-4B33-A751-6CE34EC4C700"];
  [(CBCentralManager *)self->centralManager scanForPeripheralsWithServices:[NSArray options:"arrayWithObjects:count:" arrayWithObjects:1 count:?], 0];
}

- (void)activateConnectedUUIDs
{
  v3 = objc_opt_new();
  centralManager = self->centralManager;
  v27 = [CBUUID UUIDWithString:@"03B80E5A-EDE8-4B33-A751-6CE34EC4C700"];
  v5 = [(CBCentralManager *)centralManager retrieveConnectedPeripheralsWithServices:[NSArray arrayWithObjects:&v27 count:1]];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        if (!+[BLEMIDIAccessor midiDeviceForUUID:isLocalPeripheral:isRemotePeripheral:](BLEMIDIAccessor, "midiDeviceForUUID:isLocalPeripheral:isRemotePeripheral:", [objc_msgSend(v10 "identifier")], 1, 0))
        {
          [v3 addObject:{objc_msgSend(objc_msgSend(v10, "identifier"), "UUIDString")}];
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v3);
        }

        v15 = *(*(&v17 + 1) + 8 * j);
        if ([(NSMutableArray *)self->xpcUUIDs containsObject:v15])
        {
          v16 = [(NSMutableArray *)self->xpcNames objectAtIndex:[(NSMutableArray *)self->xpcUUIDs indexOfObject:v15]];
        }

        else
        {
          v16 = 0;
        }

        [(BLEMIDIDriverCentral *)self activateUUID:v15 withName:v16];
      }

      v12 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  [(NSMutableArray *)self->xpcUUIDs removeAllObjects];
  [(NSMutableArray *)self->xpcNames removeAllObjects];
}

- (void)activateUUID:(id)d withName:(id)name
{
  sub_4A64();
  v7 = qword_1D968;
  if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v40 = "BTLEMIDIDriverCentral.mm";
    v41 = 1024;
    v42 = 162;
    v43 = 2112;
    dCopy7 = d;
    v45 = 2112;
    nameCopy = name;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%25s:%-5d activateUUID: %@ withName: %@", buf, 0x26u);
  }

  v8 = [BLEMIDIAccessor midiDeviceForUUID:d isLocalPeripheral:0 isRemotePeripheral:1];
  sub_4A64();
  v9 = qword_1D968;
  v10 = os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v10)
    {
      *buf = 136315650;
      v40 = "BTLEMIDIDriverCentral.mm";
      v41 = 1024;
      v42 = 165;
      v43 = 1024;
      LODWORD(dCopy7) = v8;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d found device: %d", buf, 0x18u);
    }

    [(BLEMIDIDriverCentral *)self checkChangeDeviceName:v8 withName:name];
    if (([BLEMIDIAccessor deviceIsOnline:v8]& 1) != 0)
    {
      return;
    }

    goto LABEL_14;
  }

  if (v10)
  {
    *buf = 136315394;
    v40 = "BTLEMIDIDriverCentral.mm";
    v41 = 1024;
    v42 = 170;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d No remote device found. Checking local devices ...", buf, 0x12u);
  }

  v8 = [BLEMIDIAccessor midiDeviceForUUID:d];
  sub_4A64();
  v11 = qword_1D968;
  v12 = os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v12)
    {
      *buf = 136315650;
      v40 = "BTLEMIDIDriverCentral.mm";
      v41 = 1024;
      v42 = 173;
      v43 = 1024;
      LODWORD(dCopy7) = v8;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%25s:%-5d Resetting local device: %d", buf, 0x18u);
    }

    [(BLEMIDIDriverCentral *)self resetDevice:v8];
LABEL_14:
    [(BLEMIDIDriverCentral *)self checkChangeDeviceName:v8 withName:name];
    v13 = [(BLEMIDIDriverCentral *)self verifyUUIDDiscovery:d];
    if (v13)
    {
      v14 = v13;
      -[BLEMIDIDriverCentral connectDevice:withMTU:](self, "connectDevice:withMTU:", v8, [v13 mtuLength] - 3);
LABEL_16:
      [(CBCentralManager *)self->centralManager setDesiredConnectionLatency:-12 forPeripheral:v14];
      return;
    }

    sub_4A64();
    v15 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v40 = "BTLEMIDIDriverCentral.mm";
      v41 = 1024;
      v42 = 182;
      v43 = 2112;
      dCopy7 = d;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "%25s:%-5d Will perform discovery for UUID %@", buf, 0x1Cu);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    connectedPeripherals = self->connectedPeripherals;
    v17 = [(NSMutableArray *)connectedPeripherals countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v33;
LABEL_21:
      v20 = 0;
      while (1)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(connectedPeripherals);
        }

        v21 = *(*(&v32 + 1) + 8 * v20);
        if ([objc_msgSend(objc_msgSend(v21 "identifier")])
        {
          break;
        }

        if (v18 == ++v20)
        {
          v18 = [(NSMutableArray *)connectedPeripherals countByEnumeratingWithState:&v32 objects:v38 count:16];
          if (v18)
          {
            goto LABEL_21;
          }

          goto LABEL_39;
        }
      }

      sub_4A64();
      v25 = qword_1D968;
      if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v40 = "BTLEMIDIDriverCentral.mm";
        v41 = 1024;
        v42 = 188;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "%25s:%-5d Peripheral is already in connectedPeripherals", buf, 0x12u);
      }

      if (!v21 || [v21 state] == &dword_0 + 2)
      {
        goto LABEL_39;
      }

      sub_4A64();
      v29 = qword_1D968;
      if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v40 = "BTLEMIDIDriverCentral.mm";
        v41 = 1024;
        v42 = 194;
        v43 = 2112;
        dCopy7 = v21;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "%25s:%-5d %@ needs to be reconnected.", buf, 0x1Cu);
      }

      v26 = v21;
      [(NSMutableArray *)self->connectedPeripherals removeObject:v21];
      if (v26)
      {
        goto LABEL_40;
      }
    }

    else
    {
LABEL_39:
      v26 = [(BLEMIDIDriverCentral *)self peripheralWithUUID:d];
      if (v26)
      {
LABEL_40:
        [(NSMutableArray *)self->peripheralsToConnect addObject:v26];

        sub_4A64();
        v27 = qword_1D968;
        if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v40 = "BTLEMIDIDriverCentral.mm";
          v41 = 1024;
          v42 = 204;
          v43 = 2112;
          dCopy7 = d;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "%25s:%-5d connectPeripheral: UUID %@ (MIDI low latency)", buf, 0x1Cu);
        }

        centralManager = self->centralManager;
        v36 = CBConnectPeripheralOptionConnectionUseCase;
        v37 = &off_18EA8;
        [(CBCentralManager *)centralManager connectPeripheral:v26 options:[NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1]];
        return;
      }
    }

    sub_4A64();
    v30 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v40 = "BTLEMIDIDriverCentral.mm";
      v41 = 1024;
      v42 = 207;
      v43 = 2112;
      dCopy7 = d;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: Found the device, but couldn't locate a peripheral with UUID %@", buf, 0x1Cu);
    }

    return;
  }

  if (v12)
  {
    *buf = 136315650;
    v40 = "BTLEMIDIDriverCentral.mm";
    v41 = 1024;
    v42 = 222;
    v43 = 2112;
    dCopy7 = d;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%25s:%-5d Creating a new MIDI device for peripheral with UUID %@.", buf, 0x1Cu);
  }

  v22 = [(BLEMIDIDriverCentral *)self createDevice:d];
  if (v22)
  {
    [(BLEMIDIDriverCentral *)self checkChangeDeviceName:v22 withName:name];
    v14 = [(BLEMIDIDriverCentral *)self peripheralWithUUID:d];
    if (v14)
    {
      [(NSMutableArray *)self->peripheralsToConnect addObject:v14];

      sub_4A64();
      v23 = qword_1D968;
      if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v40 = "BTLEMIDIDriverCentral.mm";
        v41 = 1024;
        v42 = 232;
        v43 = 2112;
        dCopy7 = d;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "%25s:%-5d connectPeripheral: UUID %@ (MIDI low latency)", buf, 0x1Cu);
      }

      v24 = +[NSMutableDictionary dictionary];
      [v24 setObject:&off_18EA8 forKey:CBConnectPeripheralOptionConnectionUseCase];
      [(CBCentralManager *)self->centralManager connectPeripheral:v14 options:v24];
    }

    else
    {
      sub_4A64();
      v31 = qword_1D968;
      if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v40 = "BTLEMIDIDriverCentral.mm";
        v41 = 1024;
        v42 = 237;
        v43 = 2112;
        dCopy7 = d;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "%25s:%-5d WARNING: Created a device, but couldn't locate a peripheral with UUID %@", buf, 0x1Cu);
      }
    }

    goto LABEL_16;
  }
}

- (void)cancelAllConnections
{
  centralManager = self->centralManager;
  v13 = [CBUUID UUIDWithString:@"03B80E5A-EDE8-4B33-A751-6CE34EC4C700"];
  v4 = [(CBCentralManager *)centralManager retrieveConnectedPeripheralsWithServices:[NSArray arrayWithObjects:&v13 count:1]];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [(BLEMIDIDriverCentral *)self cancelConnectionForPeripheral:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)checkChangeDeviceName:(unsigned int)name withName:(id)withName
{
  if (name)
  {
    if (withName)
    {
      MIDIObjectSetStringProperty(name, kMIDIPropertyName, withName);
    }
  }
}

- (unsigned)createDevice:(id)device
{
  outDevice = 0;
  driver = self->driver;
  v5 = sub_F714();
  v6 = sub_F720();
  v7 = sub_F72C();
  v8 = MIDIDeviceCreate(driver, v5, v6, v7, &outDevice);
  if (v8)
  {
    v9 = v8;
    sub_4A64();
    v10 = qword_1D968;
    result = os_log_type_enabled(qword_1D968, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136315650;
      v15 = "BTLEMIDIDriverCentral.mm";
      v16 = 1024;
      v17 = 271;
      v18 = 1024;
      LODWORD(deviceCopy) = v9;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: MIDIDeviceCreate failed with error %d", buf, 0x18u);
      return 0;
    }
  }

  else
  {
    MIDIObjectSetIntegerProperty(outDevice, @"MIDI Input Supported", 0);
    MIDIObjectSetIntegerProperty(outDevice, @"MIDI Output Supported", 0);
    MIDIObjectSetStringProperty(outDevice, @"BLE MIDI Device UUID", device);
    MIDIObjectSetIntegerProperty(outDevice, @"MIDI Local Peripheral", 0);
    MIDIObjectSetIntegerProperty(outDevice, @"MIDI Remote Peripheral", 1);
    MIDIObjectSetIntegerProperty(outDevice, kMIDIPropertyOffline, 1);
    MIDISetupAddDevice(outDevice);
    sub_4A64();
    v12 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v15 = "BTLEMIDIDriverCentral.mm";
      v16 = 1024;
      v17 = 290;
      v18 = 2112;
      deviceCopy = device;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "%25s:%-5d Created device with Bluetooth UUID %@", buf, 0x1Cu);
    }

    return outDevice;
  }

  return result;
}

- (void)disconnectDevice:(unsigned int)device
{
  if (!device)
  {
    sub_4A64();
    v7 = qword_1D968;
    if (!os_log_type_enabled(qword_1D968, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v12 = 136315394;
    v13 = "BTLEMIDIDriverCentral.mm";
    v14 = 1024;
    v15 = 384;
    v8 = "%25s:%-5d Called disconnectDevice with a 0 MIDIDeviceRef. Please file a bug report for CoreMIDI.";
    v9 = v7;
    v10 = OS_LOG_TYPE_ERROR;
LABEL_10:
    _os_log_impl(&dword_0, v9, v10, v8, &v12, 0x12u);
    return;
  }

  v4 = [(BLEMIDIDriverCentral *)self deviceForMIDIDevice:?];
  if (!v4)
  {
    sub_4A64();
    v11 = qword_1D968;
    if (!os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v12 = 136315394;
    v13 = "BTLEMIDIDriverCentral.mm";
    v14 = 1024;
    v15 = 394;
    v8 = "%25s:%-5d The central doesn't know anything about this device (was connectDevice called?).";
    v9 = v11;
    v10 = OS_LOG_TYPE_INFO;
    goto LABEL_10;
  }

  v5 = v4;
  MIDIObjectSetIntegerProperty([v4 dev], kMIDIPropertyOffline, 1);
  peripheral = [v5 peripheral];

  [(BLEMIDIDriverCentral *)self removeDeviceForPeripheral:peripheral];
}

- (void)resetDevice:(unsigned int)device
{
  MIDIObjectSetIntegerProperty(device, @"MIDI Remote Peripheral", 1);
  MIDIObjectSetIntegerProperty(device, @"MIDI Local Peripheral", 0);
  MIDIObjectSetIntegerProperty(device, @"MIDI Input Supported", 0);

  MIDIObjectSetIntegerProperty(device, @"MIDI Output Supported", 0);
}

- (id)verifyUUIDDiscovery:(id)discovery
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  connectedPeripherals = self->connectedPeripherals;
  v5 = [(NSMutableArray *)connectedPeripherals countByEnumeratingWithState:&v14 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(connectedPeripherals);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([objc_msgSend(objc_msgSend(v9 "identifier")])
        {
          if (v9 && [v9 state] == &dword_0 + 2)
          {
            sub_4A64();
            v10 = qword_1D968;
            if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_DEBUG))
            {
              services = [v9 services];
              *buf = 136315906;
              v20 = "BTLEMIDIDriverCentral.mm";
              v21 = 1024;
              v22 = 423;
              v23 = 2112;
              v24 = v9;
              v25 = 2112;
              v26 = services;
              _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempting to verify discovery for %@, services = %@", buf, 0x26u);
            }

            memset(v13, 0, sizeof(v13));
            if ([objc_msgSend(v9 services])
            {
              [objc_msgSend(**(&v13[0] + 1) "UUID")];
            }
          }

          return 0;
        }
      }

      v6 = [(NSMutableArray *)connectedPeripherals countByEnumeratingWithState:&v14 objects:v27 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

- (id)validatePeripheral:(void *)peripheral
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  connectedPeripherals = self->connectedPeripherals;
  result = [(NSMutableArray *)connectedPeripherals countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v10;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v10 != v7)
      {
        objc_enumerationMutation(connectedPeripherals);
      }

      result = *(*(&v9 + 1) + 8 * v8);
      if (result == peripheral)
      {
        break;
      }

      if (v6 == ++v8)
      {
        result = [(NSMutableArray *)connectedPeripherals countByEnumeratingWithState:&v9 objects:v13 count:16];
        v6 = result;
        if (result)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

- (BOOL)verifyBLEDevice:(id)device
{
  uuid = [(BLEMIDIDriverCentral *)self deviceForPeripheral:[(BLEMIDIDriverCentral *)self peripheralWithUUID:device]];
  if (uuid)
  {
    v4 = uuid;
    LODWORD(uuid) = [uuid dev];
    if (uuid)
    {
      uuid = [v4 uuid];
      if (uuid)
      {
        if ([v4 usage])
        {
          LOBYTE(uuid) = 0;
        }

        else
        {
          *outValue = 0;
          MIDIObjectGetIntegerProperty([v4 dev], @"MIDI Output Supported", outValue);
          MIDIObjectGetIntegerProperty([v4 dev], @"MIDI Input Supported", &outValue[1]);
          if (!outValue[0] || (LODWORD(uuid) = [v4 outEndpoint], uuid) && (uuid = objc_msgSend(v4, "dataReceiver")) != 0)
          {
            if (!outValue[1] || (LODWORD(uuid) = [v4 inEndpoint], uuid))
            {
              LOBYTE(uuid) = 1;
            }
          }
        }
      }
    }
  }

  return uuid;
}

- (id)midiCharacteristicForPeripheral:(id)peripheral
{
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  services = [peripheral services];
  v4 = [services countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *v26;
  v7 = @"03B80E5A-EDE8-4B33-A751-6CE34EC4C700";
  while (2)
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v26 != v6)
      {
        objc_enumerationMutation(services);
      }

      v9 = *(*(&v25 + 1) + 8 * i);
      if ([objc_msgSend(objc_msgSend(v9 "UUID")])
      {
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        characteristics = [v9 characteristics];
        v11 = [characteristics countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v22;
          v20 = v5;
LABEL_9:
          v14 = services;
          v15 = v6;
          v16 = v7;
          v17 = 0;
          while (1)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(characteristics);
            }

            v18 = *(*(&v21 + 1) + 8 * v17);
            if ([objc_msgSend(objc_msgSend(v18 "UUID")])
            {
              return v18;
            }

            if (v12 == ++v17)
            {
              v12 = [characteristics countByEnumeratingWithState:&v21 objects:v29 count:16];
              v7 = v16;
              v6 = v15;
              services = v14;
              v5 = v20;
              if (v12)
              {
                goto LABEL_9;
              }

              break;
            }
          }
        }
      }
    }

    v5 = [services countByEnumeratingWithState:&v25 objects:v30 count:16];
    v18 = 0;
    if (v5)
    {
      continue;
    }

    return v18;
  }
}

- (void)cancelConnectionForPeripheral:(id)peripheral
{
  v5 = [(BLEMIDIDriverCentral *)self midiCharacteristicForPeripheral:?];
  if (v5 && (v6 = v5, ([v5 properties] & 0x10) != 0))
  {

    [peripheral setNotifyValue:0 forCharacteristic:v6];
  }

  else
  {
    centralManager = self->centralManager;

    [(CBCentralManager *)centralManager cancelPeripheralConnection:peripheral];
  }
}

- (void)xpcReceiveUUID:(id)d withName:(id)name
{
  if (([(NSMutableArray *)self->xpcUUIDs containsObject:?]& 1) != 0)
  {
    sub_4A64();
    v7 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315906;
      v9 = "BTLEMIDIDriverCentral.mm";
      v10 = 1024;
      v11 = 516;
      v12 = 2112;
      dCopy = d;
      v14 = 2112;
      nameCopy = name;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d xpcReceiveUUID:%@ withName:%@ already contains UUID (skipping)", &v8, 0x26u);
    }
  }

  else
  {
    [(NSMutableArray *)self->xpcUUIDs addObject:d];
    [(NSMutableArray *)self->xpcNames addObject:name];
    if ([(BLEMIDIDriverCentral *)self isLECapableHardware])
    {

      [(BLEMIDIDriverCentral *)self activateConnectedUUIDs];
    }
  }
}

- (void)centralManagerDidUpdateState:(id)state
{
  isLECapableHardware = [(BLEMIDIDriverCentral *)self isLECapableHardware];
  if (self->leCapable != isLECapableHardware)
  {
    v6 = isLECapableHardware;
    sub_4A64();
    v7 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
    {
      v8 = "NO";
      leCapable = self->leCapable;
      *&v12[4] = "BTLEMIDIDriverCentral.mm";
      *&v12[12] = 1024;
      *&v12[14] = 529;
      if (leCapable)
      {
        v10 = "YES";
      }

      else
      {
        v10 = "NO";
      }

      *v12 = 136315906;
      if (v6)
      {
        v8 = "YES";
      }

      *&v12[18] = 2080;
      *&v12[20] = v10;
      v13 = 2080;
      v14 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%25s:%-5d Central Manager LE Available State: %s -> %s", v12, 0x26u);
    }

    self->leCapable = v6;
    if (v6)
    {
      [(BLEMIDIDriverCentral *)self activateConnectedUUIDs];
    }

    else if ([state state] == &dword_0 + 1 || objc_msgSend(state, "state") == &dword_4)
    {
      sub_4A64();
      v11 = qword_1D968;
      if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
      {
        *v12 = 136315394;
        *&v12[4] = "BTLEMIDIDriverCentral.mm";
        *&v12[12] = 1024;
        *&v12[14] = 537;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%25s:%-5d   Setting all BLE MIDI devices to offline.", v12, 0x12u);
      }

      [(BLEMIDIDriverCentral *)self resetAllConnectedDevices:*v12];
    }
  }
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  if (self->centralManager == manager)
  {
    sub_4A64();
    v7 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v11 = "BTLEMIDIDriverCentral.mm";
      v12 = 1024;
      v13 = 568;
      v14 = 2112;
      managerCopy = manager;
      v16 = 2112;
      peripheralCopy = peripheral;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%25s:%-5d centralManager: %@ didConnectPeripheral: %@", buf, 0x26u);
    }

    [(NSMutableArray *)self->connectedPeripherals addObject:peripheral];
    [(NSMutableArray *)self->peripheralsToConnect removeObject:peripheral];
    if (-[BLEMIDIDriverCentral isAlreadyConnectedAsCentral:](self, "isAlreadyConnectedAsCentral:", [objc_msgSend(peripheral "identifier")]))
    {
      sub_4A64();
      v8 = qword_1D968;
      if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v11 = "BTLEMIDIDriverCentral.mm";
        v12 = 1024;
        v13 = 574;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%25s:%-5d Already connected as central. Canceling this connection.", buf, 0x12u);
      }

      [(BLEMIDIDriverCentral *)self cancelConnectionForPeripheral:peripheral];
    }

    [peripheral setDelegate:self];
    v9[1] = [CBUUID UUIDWithString:@"180A", [CBUUID UUIDWithString:@"03B80E5A-EDE8-4B33-A751-6CE34EC4C700"]];
    [peripheral discoverServices:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v9, 2)}];
  }
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  if (self->centralManager == manager)
  {
    sub_4A64();
    v9 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
    {
      v10 = 136316162;
      v11 = "BTLEMIDIDriverCentral.mm";
      v12 = 1024;
      v13 = 592;
      v14 = 2112;
      managerCopy = manager;
      v16 = 2112;
      peripheralCopy = peripheral;
      v18 = 2112;
      errorCopy = error;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d centralManager: %@ didDisconnectPeripheral: %@ error: %@", &v10, 0x30u);
    }

    sub_D928((self->driver + 15), peripheral);
    [(NSMutableArray *)self->connectedPeripherals removeObject:peripheral];
    [peripheral setDelegate:0];
    -[BLEMIDIDriverCentral disconnectDevice:](self, "disconnectDevice:", +[BLEMIDIAccessor midiDeviceForUUID:](BLEMIDIAccessor, "midiDeviceForUUID:", [objc_msgSend(peripheral "identifier")]));
  }
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  if (self->centralManager == manager)
  {
    sub_4A64();
    v8 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315906;
      v10 = "BTLEMIDIDriverCentral.mm";
      v11 = 1024;
      v12 = 607;
      v13 = 2112;
      peripheralCopy = peripheral;
      v15 = 2112;
      errorCopy = error;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: Failed to connect to peripheral: %@ with error = %@", &v9, 0x26u);
    }

    [(NSMutableArray *)self->peripheralsToConnect removeObject:peripheral];
    if (peripheral)
    {
      [peripheral setDelegate:0];
    }
  }
}

- (void)centralManager:(id)manager didUpdateConnectionParameters:(id)parameters interval:(id)interval latency:(id)latency supervisionTimeout:(id)timeout
{
  if (self->centralManager == manager && [(BLEMIDIDriverCentral *)self deviceForPeripheral:parameters])
  {
    sub_4A64();
    v9 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
    {
      [interval doubleValue];
      v14 = 136315650;
      v15 = "BTLEMIDIDriverCentral.mm";
      v16 = 1024;
      v17 = 623;
      v18 = 2048;
      v19 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d Updated connection parameters: interval = %f ms", &v14, 0x1Cu);
    }

    [interval doubleValue];
    v12 = (v11 * 1000000.0);
    sub_4A64();
    v13 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
    {
      v14 = 136315650;
      v15 = "BTLEMIDIDriverCentral.mm";
      v16 = 1024;
      v17 = 626;
      v18 = 2048;
      v19 = v12;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "%25s:%-5d Changing connection interval = %llu ns", &v14, 0x1Cu);
    }

    *(self->driver + 32) = v12;
  }
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [peripheral services];
  v7 = [obj countByEnumeratingWithState:&v19 objects:v31 count:16];
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = v7;
  servicesCopy = services;
  selfCopy = self;
  v9 = 0;
  v17 = 0;
  v10 = *v20;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v20 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v19 + 1) + 8 * i);
      if ([objc_msgSend(v12 UUID])
      {
        [peripheral discoverCharacteristics:0 forService:v12];
        v17 = 1;
      }

      if ([objc_msgSend(v12 "UUID")])
      {
        sub_4A64();
        v13 = qword_1D968;
        if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v24 = "BTLEMIDIDriverCentral.mm";
          v25 = 1024;
          v26 = 656;
          v27 = 2112;
          peripheralCopy2 = peripheral;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Discovered device information service for peripheral: %@", buf, 0x1Cu);
        }

        v9 = v12;
      }
    }

    v8 = [obj countByEnumeratingWithState:&v19 objects:v31 count:16];
  }

  while (v8);
  services = servicesCopy;
  self = selfCopy;
  if (v17)
  {
    if (v9)
    {
      [peripheral discoverCharacteristics:0 forService:v9];
    }
  }

  else
  {
LABEL_17:
    sub_4A64();
    v14 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v24 = "BTLEMIDIDriverCentral.mm";
      v25 = 1024;
      v26 = 660;
      v27 = 2112;
      peripheralCopy2 = peripheral;
      v29 = 2112;
      servicesCopy2 = services;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "%25s:%-5d MIDI service not discovered on peripheral: %@ (error: %@). Disconnecting ...", buf, 0x26u);
    }

    [(CBCentralManager *)self->centralManager cancelPeripheralConnection:peripheral];
  }
}

- (void)peripheral:(id)peripheral didModifyServices:(id)services
{
  if ([(BLEMIDIDriverCentral *)self deviceForPeripheral:?])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [services countByEnumeratingWithState:&v12 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(services);
          }

          if ([objc_msgSend(*(*(&v12 + 1) + 8 * i) "UUID")])
          {
            sub_4A64();
            v11 = qword_1D968;
            if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
            {
              *buf = 136315650;
              v17 = "BTLEMIDIDriverCentral.mm";
              v18 = 1024;
              v19 = 674;
              v20 = 2112;
              peripheralCopy = peripheral;
              _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%25s:%-5d NOTICE: %@ has invalidated the MIDI service. Disconnecting ...", buf, 0x1Cu);
            }

            [(CBCentralManager *)self->centralManager cancelPeripheralConnection:peripheral];
            return;
          }
        }

        v8 = [services countByEnumeratingWithState:&v12 objects:v22 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  if (![objc_msgSend(service "UUID")])
  {
    if (![objc_msgSend(service "UUID")])
    {
      return;
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    characteristics = [service characteristics];
    v15 = [characteristics countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (!v15)
    {
      return;
    }

    v17 = v15;
    v18 = *v34;
    *&v16 = 136315650;
    v32 = v16;
LABEL_16:
    v19 = 0;
    while (1)
    {
      if (*v34 != v18)
      {
        objc_enumerationMutation(characteristics);
      }

      v20 = *(*(&v33 + 1) + 8 * v19);
      if (![objc_msgSend(v20 UUID])
      {
        break;
      }

      [peripheral readValueForCharacteristic:v20];
      sub_4A64();
      v21 = qword_1D968;
      if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_DEBUG))
      {
        *buf = v32;
        v43 = "BTLEMIDIDriverCentral.mm";
        v44 = 1024;
        v45 = 737;
        v46 = 2112;
        *v47 = peripheral;
        v22 = v21;
        v23 = "%25s:%-5d Discovered manufacturer name for %@";
LABEL_25:
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEBUG, v23, buf, 0x1Cu);
      }

LABEL_26:
      if (v17 == ++v19)
      {
        v17 = [characteristics countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (!v17)
        {
          return;
        }

        goto LABEL_16;
      }
    }

    if (![objc_msgSend(v20 "UUID")])
    {
      goto LABEL_26;
    }

    [peripheral readValueForCharacteristic:v20];
    sub_4A64();
    v24 = qword_1D968;
    if (!os_log_type_enabled(qword_1D968, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_26;
    }

    *buf = v32;
    v43 = "BTLEMIDIDriverCentral.mm";
    v44 = 1024;
    v45 = 741;
    v46 = 2112;
    *v47 = peripheral;
    v22 = v24;
    v23 = "%25s:%-5d Discovered model number for %@";
    goto LABEL_25;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  characteristics2 = [service characteristics];
  v9 = [characteristics2 countByEnumeratingWithState:&v37 objects:v48 count:16];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v11 = *v38;
  while (2)
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v38 != v11)
      {
        objc_enumerationMutation(characteristics2);
      }

      if ([objc_msgSend(*(*(&v37 + 1) + 8 * i) "UUID")])
      {
        sub_4A64();
        v25 = qword_1D968;
        if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v43 = "BTLEMIDIDriverCentral.mm";
          v44 = 1024;
          v45 = 702;
          v46 = 2112;
          *v47 = peripheral;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "%25s:%-5d Setting MIDI low latency for peripheral: %@", buf, 0x1Cu);
        }

        [(CBCentralManager *)self->centralManager setDesiredConnectionLatency:-12 forPeripheral:peripheral];
        v26 = [peripheral mtuLength] - 3;
        sub_4A64();
        v27 = qword_1D968;
        v28 = os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO);
        if (v26 < 21)
        {
          v26 = 20;
          if (!v28)
          {
            goto LABEL_37;
          }

          *buf = 136315906;
          v43 = "BTLEMIDIDriverCentral.mm";
          v44 = 1024;
          v45 = 710;
          v46 = 1024;
          *v47 = 20;
          *&v47[4] = 2112;
          *&v47[6] = peripheral;
          v29 = "%25s:%-5d Keeping mtu value of %d bytes for peripheral: %@";
        }

        else
        {
          if (!v28)
          {
            goto LABEL_37;
          }

          *buf = 136315906;
          v43 = "BTLEMIDIDriverCentral.mm";
          v44 = 1024;
          v45 = 708;
          v46 = 1024;
          *v47 = v26;
          *&v47[4] = 2112;
          *&v47[6] = peripheral;
          v29 = "%25s:%-5d Updating packet size to mtu value of %d bytes for peripheral: %@";
        }

        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, v29, buf, 0x22u);
LABEL_37:
        v30 = +[BLEMIDIAccessor midiDeviceForUUID:](BLEMIDIAccessor, "midiDeviceForUUID:", [objc_msgSend(peripheral "identifier")]);
        if (v30)
        {
          [(BLEMIDIDriverCentral *)self connectDevice:v30 withMTU:v26];
        }

        else
        {
          sub_4A64();
          v31 = qword_1D968;
          if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
          {
            *buf = 136315650;
            v43 = "BTLEMIDIDriverCentral.mm";
            v44 = 1024;
            v45 = 726;
            v46 = 2112;
            *v47 = peripheral;
            _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "%25s:%-5d Can't find a MIDI device for %@. Was activateUUID called?", buf, 0x1Cu);
          }
        }

        return;
      }
    }

    v10 = [characteristics2 countByEnumeratingWithState:&v37 objects:v48 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_10:
  sub_4A64();
  v13 = qword_1D968;
  if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v43 = "BTLEMIDIDriverCentral.mm";
    v44 = 1024;
    v45 = 717;
    v46 = 2112;
    *v47 = peripheral;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "%25s:%-5d MIDI Service not discovered on %@. Disconnecting ...", buf, 0x1Cu);
  }

  [(CBCentralManager *)self->centralManager cancelPeripheralConnection:peripheral];
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  if ([objc_msgSend(characteristic "UUID")])
  {
    value = [characteristic value];
    if (!error || value)
    {
      v10 = [(BLEMIDIDriverCentral *)self deviceForPeripheral:peripheral];
      if (v10 && (v11 = v10, [v10 outEndpoint]))
      {
        if ([v11 dataReceiver])
        {
          dataReceiver = [v11 dataReceiver];
          value2 = [characteristic value];

          [dataReceiver unpackValue:value2];
        }
      }

      else
      {
        sub_4A64();
        v23 = qword_1D968;
        if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_ERROR))
        {
          v24 = 136315394;
          v25 = "BTLEMIDIDriverCentral.mm";
          v26 = 1024;
          v27 = 759;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: No endpoint found for MIDI output!", &v24, 0x12u);
        }
      }
    }

    return;
  }

  if ([objc_msgSend(characteristic "UUID")])
  {
    v14 = [[NSString alloc] initWithData:objc_msgSend(characteristic encoding:{"value"), 4}];
    sub_4A64();
    v15 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
    {
      v24 = 136315650;
      v25 = "BTLEMIDIDriverCentral.mm";
      v26 = 1024;
      v27 = 779;
      v28 = 2112;
      v29 = v14;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "%25s:%-5d Discovered manufacturer name: %@", &v24, 0x1Cu);
    }

    v16 = [(BLEMIDIDriverCentral *)self deviceForPeripheral:peripheral];
    if (v16)
    {
      v17 = v16;
      if ([v16 dev])
      {
        v18 = [v17 dev];
        v19 = &kMIDIPropertyManufacturer;
LABEL_22:
        MIDIObjectSetStringProperty(v18, *v19, v14);
      }
    }
  }

  else if ([objc_msgSend(characteristic "UUID")])
  {
    v14 = [[NSString alloc] initWithData:objc_msgSend(characteristic encoding:{"value"), 4}];
    sub_4A64();
    v20 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
    {
      v24 = 136315650;
      v25 = "BTLEMIDIDriverCentral.mm";
      v26 = 1024;
      v27 = 788;
      v28 = 2112;
      v29 = v14;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "%25s:%-5d Discovered model number: %@", &v24, 0x1Cu);
    }

    v21 = [(BLEMIDIDriverCentral *)self deviceForPeripheral:peripheral];
    if (v21)
    {
      v22 = v21;
      if ([v21 dev])
      {
        v18 = [v22 dev];
        v19 = &kMIDIPropertyModel;
        goto LABEL_22;
      }
    }
  }
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  if (error)
  {
    sub_4A64();
    v8 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_ERROR))
    {
      v9 = 136316162;
      v10 = "BTLEMIDIDriverCentral.mm";
      v11 = 1024;
      v12 = 811;
      v13 = 2112;
      peripheralCopy = peripheral;
      v15 = 2112;
      characteristicCopy = characteristic;
      v17 = 2112;
      errorCopy = error;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d peripheral: %@ didWriteValueForCharacteristic: %@ error:%@", &v9, 0x30u);
    }
  }
}

- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error
{
  sub_4A64();
  v9 = qword_1D968;
  if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136316162;
    v14 = "BTLEMIDIDriverCentral.mm";
    v15 = 1024;
    v16 = 816;
    v17 = 2112;
    errorCopy2 = peripheral;
    v19 = 2112;
    characteristicCopy = characteristic;
    v21 = 2112;
    errorCopy = error;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d peripheral:%@ didUpdateNotificationStateForCharacteristic:%@ error:%@", &v13, 0x30u);
  }

  if (error)
  {
    sub_4A64();
    v10 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315650;
      v14 = "BTLEMIDIDriverCentral.mm";
      v15 = 1024;
      v16 = 818;
      v17 = 2112;
      errorCopy2 = error;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", &v13, 0x1Cu);
    }
  }

  else
  {
    v11 = [(BLEMIDIDriverCentral *)self midiCharacteristicForPeripheral:peripheral];
    if (v11 && ([v11 isNotifying] & 1) == 0)
    {
      sub_4A64();
      v12 = qword_1D968;
      if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_DEBUG))
      {
        v13 = 136315394;
        v14 = "BTLEMIDIDriverCentral.mm";
        v15 = 1024;
        v16 = 822;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d      canceling peripheral connection since notify was removed.", &v13, 0x12u);
      }

      [(CBCentralManager *)self->centralManager cancelPeripheralConnection:peripheral];
    }
  }
}

- (id)deviceForMIDIDevice:(unsigned int)device
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  connectedDevices = self->connectedDevices;
  v5 = [(NSMutableArray *)connectedDevices countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(connectedDevices);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([v9 dev] == device)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)connectedDevices countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)deviceForUUID:(id)d
{
  if (d && (v14 = 0u, v15 = 0u, v12 = 0u, v13 = 0u, connectedDevices = self->connectedDevices, (v5 = [(NSMutableArray *)connectedDevices countByEnumeratingWithState:&v12 objects:v22 count:16]) != 0))
  {
    v6 = v5;
    v7 = *v13;
LABEL_4:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(connectedDevices);
      }

      v9 = *(*(&v12 + 1) + 8 * v8);
      if ([objc_msgSend(v9 "uuid")])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSMutableArray *)connectedDevices countByEnumeratingWithState:&v12 objects:v22 count:16];
        if (v6)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    sub_4A64();
    v10 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v17 = "BTLEMIDIDriverCentral.mm";
      v18 = 1024;
      v19 = 847;
      v20 = 2112;
      dCopy = d;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d no device found with UUID %@", buf, 0x1Cu);
    }

    return 0;
  }

  return v9;
}

- (id)deviceForPeripheral:(id)peripheral
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  connectedDevices = self->connectedDevices;
  v5 = [(NSMutableArray *)connectedDevices countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(connectedDevices);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([v9 peripheral] == peripheral)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)connectedDevices countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)deviceForEP:(unsigned int)p
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  connectedDevices = self->connectedDevices;
  v5 = [(NSMutableArray *)connectedDevices countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(connectedDevices);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([v9 inEndpoint] == p || objc_msgSend(v9, "outEndpoint") == p)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)connectedDevices countByEnumeratingWithState:&v11 objects:v15 count:16];
      v9 = 0;
      if (v6)
      {
        goto LABEL_3;
      }

      return v9;
    }
  }
}

- (void)removeDeviceForPeripheral:(id)peripheral
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  connectedDevices = self->connectedDevices;
  v6 = [(NSMutableArray *)connectedDevices countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(connectedDevices);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([v10 peripheral] == peripheral)
        {
          [(NSMutableArray *)self->connectedDevices removeObject:v10];
          return;
        }
      }

      v7 = [(NSMutableArray *)connectedDevices countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }
}

- (void)removeDeviceForUUID:(id)d
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  connectedDevices = self->connectedDevices;
  v6 = [(NSMutableArray *)connectedDevices countByEnumeratingWithState:&v12 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(connectedDevices);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([objc_msgSend(v10 "uuid")])
        {
          [(NSMutableArray *)self->connectedDevices removeObject:v10];
          return;
        }
      }

      v7 = [(NSMutableArray *)connectedDevices countByEnumeratingWithState:&v12 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  sub_4A64();
  v11 = qword_1D968;
  if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v17 = "BTLEMIDIDriverCentral.mm";
    v18 = 1024;
    v19 = 887;
    v20 = 2112;
    dCopy = d;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%25s:%-5d removeDeviceForPeripheral: no device found with UUID %@", buf, 0x1Cu);
  }
}

- (void)resetAllConnectedDevices
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  connectedDevices = self->connectedDevices;
  v4 = [(NSMutableArray *)connectedDevices countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(connectedDevices);
        }

        MIDIObjectSetIntegerProperty([*(*(&v8 + 1) + 8 * i) dev], kMIDIPropertyOffline, 1);
      }

      v5 = [(NSMutableArray *)connectedDevices countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->connectedPeripherals removeAllObjects];
  [(NSMutableArray *)self->connectedDevices removeAllObjects];
}

- (id)peripheralWithUUID:(id)d
{
  v5 = [[NSUUID alloc] initWithUUIDString:d];
  centralManager = self->centralManager;
  v21 = v5;
  v7 = [(CBCentralManager *)centralManager retrievePeripheralsWithIdentifiers:[NSArray arrayWithObjects:&v21 count:1]];
  if (v7)
  {
    v8 = v7;
    if ([(NSArray *)v7 count]== &dword_0 + 1)
    {
      return [(NSArray *)v8 objectAtIndex:0];
    }

    sub_4A64();
    v14 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315650;
      v16 = "BTLEMIDIDriverCentral.mm";
      v17 = 1024;
      v18 = 911;
      v19 = 2048;
      dCopy = [(NSArray *)v8 count];
      v11 = "%25s:%-5d Unexpected peripheral count (%lu)";
      v12 = v14;
      v13 = OS_LOG_TYPE_ERROR;
      goto LABEL_8;
    }
  }

  else
  {
    sub_4A64();
    v10 = qword_1D968;
    if (os_log_type_enabled(qword_1D968, OS_LOG_TYPE_INFO))
    {
      v15 = 136315650;
      v16 = "BTLEMIDIDriverCentral.mm";
      v17 = 1024;
      v18 = 909;
      v19 = 2112;
      dCopy = d;
      v11 = "%25s:%-5d No peripheral with UUID %@";
      v12 = v10;
      v13 = OS_LOG_TYPE_INFO;
LABEL_8:
      _os_log_impl(&dword_0, v12, v13, v11, &v15, 0x1Cu);
    }
  }

  return 0;
}

- (BOOL)isAlreadyConnectedAsCentral:(id)central
{
  v3 = [BLEMIDIAccessor midiDeviceForUUID:central isLocalPeripheral:1 isRemotePeripheral:0];
  if (v3)
  {

    LOBYTE(v3) = [BLEMIDIAccessor deviceIsOnline:v3];
  }

  return v3;
}

@end