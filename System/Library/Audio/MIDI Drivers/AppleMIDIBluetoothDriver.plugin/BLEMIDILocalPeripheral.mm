@interface BLEMIDILocalPeripheral
- (BLEMIDILocalPeripheral)init;
- (BLEMIDILocalPeripheral)initWithDriver:(MIDIDriverInterface *)a3;
- (BLEMIDILocalPeripheral)peripheralWithUUID:(id)a3;
- (BOOL)isAlreadyConnectedAsPeripheral:(id)a3;
- (id)connectedCentralUUID;
- (id)subscribedCentral;
- (void)activateConnectedUUID;
- (void)activateUUID:(id)a3;
- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4;
- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)checkAddMIDIService;
- (void)dealloc;
- (void)enqueue:(id)a3;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverServices:(id)a4;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheralManager:(id)a3 _didReceiveWriteRequests:(id)a4;
- (void)peripheralManager:(id)a3 central:(id)a4 didSubscribeToCharacteristic:(id)a5;
- (void)peripheralManager:(id)a3 central:(id)a4 didUnsubscribeFromCharacteristic:(id)a5;
- (void)peripheralManager:(id)a3 didAddService:(id)a4 error:(id)a5;
- (void)peripheralManager:(id)a3 didReceiveReadRequest:(id)a4;
- (void)peripheralManagerDidStartAdvertising:(id)a3 error:(id)a4;
- (void)peripheralManagerDidUpdateState:(id)a3;
- (void)peripheralManagerIsReadyToUpdateSubscribers:(id)a3;
- (void)removeMIDIService;
- (void)resetDevice:(unsigned int)a3;
- (void)sendIfReady;
@end

@implementation BLEMIDILocalPeripheral

- (BLEMIDILocalPeripheral)init
{
  sub_8EB0();
  v2 = qword_1D978;
  if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "BTLEMIDILocalPeripheral.mm";
    v6 = 1024;
    v7 = 38;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: Do not use init. Use initWithDriver instead.", &v4, 0x12u);
  }

  return 0;
}

- (BLEMIDILocalPeripheral)initWithDriver:(MIDIDriverInterface *)a3
{
  v8.receiver = self;
  v8.super_class = BLEMIDILocalPeripheral;
  v4 = [(BLEMIDILocalPeripheral *)&v8 init];
  if (v4)
  {
    v4->peripheralManager = [[CBPeripheralManager alloc] initWithDelegate:v4 queue:0 options:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 0), CBPeripheralManagerOptionShowPowerAlertKey, 0)}];
    v5 = [CBCentralManager alloc];
    v6 = [NSNumber numberWithBool:0];
    v4->centralManager = [v5 initWithDelegate:v4 queue:0 options:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", v6, CBCentralManagerOptionReceiveSystemEvents, +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 0), CBCentralManagerOptionShowPowerAlertKey, 0)}];
    v4->driver = a3;
    v4->commandQueue = dispatch_queue_create("BLEMIDILocalPeripheral_CommandQueue", 0);
    v4->outgoingPackets = [[NSMutableArray alloc] initWithCapacity:0];
    v4->readyToSend = 1;
  }

  return v4;
}

- (void)dealloc
{
  dispatch_release(self->commandQueue);

  [(CBCentralManager *)self->centralManager setDelegate:0];
  [(CBPeripheralManager *)self->peripheralManager setDelegate:0];

  v3.receiver = self;
  v3.super_class = BLEMIDILocalPeripheral;
  [(BLEMIDILocalPeripheral *)&v3 dealloc];
}

- (id)subscribedCentral
{
  result = self->midiChar;
  if (result)
  {
    if ([objc_msgSend(result "subscribedCentrals")] == &dword_0 + 1)
    {
      v4 = [(CBMutableCharacteristic *)self->midiChar subscribedCentrals];

      return [(NSArray *)v4 objectAtIndex:0];
    }

    else
    {
      return self->connectedCentral;
    }
  }

  return result;
}

- (id)connectedCentralUUID
{
  v2 = [-[BLEMIDILocalPeripheral subscribedCentral](self "subscribedCentral")];

  return [v2 UUIDString];
}

- (void)activateConnectedUUID
{
  v3 = [(BLEMIDILocalPeripheral *)self subscribedCentral];
  if (v3)
  {
    v4 = [objc_msgSend(v3 "identifier")];

    [(BLEMIDILocalPeripheral *)self activateUUID:v4];
  }
}

- (void)activateUUID:(id)a3
{
  v5 = +[BLEMIDIAccessor localPeripheral];
  str = 0;
  HIDWORD(obj) = 0;
  if (!v5)
  {
    if (!self->connectedCentral)
    {
      v9 = [(BLEMIDILocalPeripheral *)self subscribedCentral];
      if (!v9)
      {
        sub_8EB0();
        v12 = qword_1D978;
        if (!os_log_type_enabled(qword_1D978, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        *buf = 136315650;
        v33 = "BTLEMIDILocalPeripheral.mm";
        v34 = 1024;
        v35 = 160;
        v36 = 2112;
        *v37 = a3;
        v13 = "%25s:%-5d Received a request to activate connected central with UUID %@, but there is no subscribed central.";
        v14 = v12;
        v15 = 28;
        goto LABEL_34;
      }

      self->connectedCentral = v9;
    }

    v10 = [BLEMIDIAccessor midiDeviceForUUID:a3 isLocalPeripheral:1 isRemotePeripheral:0];
    if (v10)
    {
      if (([BLEMIDIAccessor deviceIsOnline:v10]& 1) != 0)
      {
        return;
      }

LABEL_16:
      [(BLEMIDILocalPeripheral *)self connectDevice:v10, obj];
      return;
    }

    v11 = [BLEMIDIAccessor midiDeviceForUUID:a3];
    LODWORD(obj) = v11;
    if (v11)
    {
      v10 = v11;
      [(BLEMIDILocalPeripheral *)self resetDevice:v11];
      goto LABEL_16;
    }

    sub_8EB0();
    v16 = qword_1D978;
    if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v33 = "BTLEMIDILocalPeripheral.mm";
      v34 = 1024;
      v35 = 180;
      v36 = 2112;
      *v37 = a3;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "%25s:%-5d Received a request to activate connected central with UUID %@. This will create a new MIDI device.", buf, 0x1Cu);
    }

    driver = self->driver;
    v18 = sub_F738();
    v19 = sub_F720();
    v20 = sub_F72C();
    v21 = MIDIDeviceCreate(driver, v18, v19, v20, &obj);
    sub_8EB0();
    v22 = qword_1D978;
    if (v21)
    {
      if (!os_log_type_enabled(qword_1D978, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 136315650;
      v33 = "BTLEMIDILocalPeripheral.mm";
      v34 = 1024;
      v35 = 184;
      v36 = 1024;
      *v37 = v21;
      v13 = "%25s:%-5d ERROR: %d creating local peripheral device.";
      v14 = v22;
    }

    else
    {
      if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_INFO))
      {
        connectedCentral = self->connectedCentral;
        *buf = 136315906;
        v33 = "BTLEMIDILocalPeripheral.mm";
        v34 = 1024;
        v35 = 188;
        v36 = 1024;
        *v37 = obj;
        *&v37[4] = 2112;
        *&v37[6] = connectedCentral;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "%25s:%-5d Remote central device connected with MIDIDeviceRef %u, %@", buf, 0x22u);
      }

      MIDIObjectSetStringProperty(obj, @"BLE MIDI Device UUID", a3);
      v24 = [(BLEMIDILocalPeripheral *)self peripheralWithUUID:a3];
      if (v24)
      {
        v25 = v24;
        self->connectedPeripheral = v24;
        sub_8EB0();
        v26 = qword_1D978;
        if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v33 = "BTLEMIDILocalPeripheral.mm";
          v34 = 1024;
          v35 = 196;
          v36 = 2112;
          *v37 = a3;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "%25s:%-5d [device info] connectPeripheral: UUID %@", buf, 0x1Cu);
        }

        [(CBCentralManager *)self->centralManager connectPeripheral:v25 options:0, obj];
      }

      v27 = MIDISetupAddDevice(obj);
      if (!v27)
      {
        v10 = obj;
        goto LABEL_16;
      }

      v28 = v27;
      sub_8EB0();
      v29 = qword_1D978;
      if (!os_log_type_enabled(qword_1D978, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 136315650;
      v33 = "BTLEMIDILocalPeripheral.mm";
      v34 = 1024;
      v35 = 202;
      v36 = 1024;
      *v37 = v28;
      v13 = "%25s:%-5d ERROR: %d adding remote central device";
      v14 = v29;
    }

    v15 = 24;
LABEL_34:
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
    return;
  }

  v6 = v5;
  sub_8EB0();
  v7 = qword_1D978;
  if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v33 = "BTLEMIDILocalPeripheral.mm";
    v34 = 1024;
    v35 = 145;
    v36 = 2112;
    *v37 = a3;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Received a request to activate connected central with UUID %@, but there is an online local peripheral. Please file a bug report for CoreMIDI.", buf, 0x1Cu);
  }

  MIDIObjectGetStringProperty(v6, @"BLE MIDI Device UUID", &str);
  MIDIObjectGetIntegerProperty(v6, kMIDIPropertyOffline, &obj + 1);
  if (str)
  {
    sub_8EB0();
    v8 = qword_1D978;
    if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v33 = "BTLEMIDILocalPeripheral.mm";
      v34 = 1024;
      v35 = 149;
      v36 = 2112;
      *v37 = str;
      *&v37[8] = 1024;
      *&v37[10] = HIDWORD(obj);
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Local peripheral UUID: %@ Offline: %d", buf, 0x22u);
    }

    CFRelease(str);
  }
}

- (void)checkAddMIDIService
{
  if (!self->midiServiceAdded && [(BLEMIDILocalPeripheral *)self isLECapableHardware])
  {
    sub_8EB0();
    v3 = qword_1D978;
    if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v10 = "BTLEMIDILocalPeripheral.mm";
      v11 = 1024;
      v12 = 302;
      v13 = 2080;
      v14 = "03B80E5A-EDE8-4B33-A751-6CE34EC4C700";
      v15 = 2080;
      v16 = "7772E5DB-3868-4112-A1A9-F2669D106BF3";
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%25s:%-5d Driver adding MIDI Service %s with MIDI I/O characteristic %s to the peripheral manager.", buf, 0x26u);
    }

    v4 = [CBUUID UUIDWithString:@"03B80E5A-EDE8-4B33-A751-6CE34EC4C700"];
    v5 = [CBUUID UUIDWithString:@"7772E5DB-3868-4112-A1A9-F2669D106BF3"];
    self->midiService = [[CBMutableService alloc] initWithType:v4 primary:1];
    v6 = [[CBMutableCharacteristic alloc] initWithType:v5 properties:262 value:0 permissions:12];
    self->midiChar = v6;
    midiService = self->midiService;
    v8 = v6;
    [(CBMutableService *)midiService setCharacteristics:[NSArray arrayWithObjects:&v8 count:1]];
    [(CBPeripheralManager *)self->peripheralManager addService:self->midiService];
  }
}

- (void)removeMIDIService
{
  if (self->midiService)
  {
    [(CBPeripheralManager *)self->peripheralManager removeService:?];

    self->midiChar = 0;
    self->midiService = 0;
    self->midiServiceAdded = 0;
  }
}

- (void)resetDevice:(unsigned int)a3
{
  MIDIObjectSetIntegerProperty(a3, @"MIDI Remote Peripheral", 0);
  MIDIObjectSetIntegerProperty(a3, @"MIDI Local Peripheral", 1);
  MIDIObjectSetIntegerProperty(a3, @"MIDI Input Supported", 1);

  MIDIObjectSetIntegerProperty(a3, @"MIDI Output Supported", 1);
}

- (void)peripheralManagerDidUpdateState:(id)a3
{
  v4 = [(BLEMIDILocalPeripheral *)self isLECapableHardware];
  if (self->leCapable != v4)
  {
    v5 = v4;
    sub_8EB0();
    v6 = qword_1D978;
    if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_INFO))
    {
      v7 = "NO";
      leCapable = self->leCapable;
      v12 = "BTLEMIDILocalPeripheral.mm";
      v13 = 1024;
      v14 = 358;
      if (leCapable)
      {
        v9 = "YES";
      }

      else
      {
        v9 = "NO";
      }

      v11 = 136315906;
      if (v5)
      {
        v7 = "YES";
      }

      v15 = 2080;
      v16 = v9;
      v17 = 2080;
      v18 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%25s:%-5d Peripheral Manager LE Available State: %s -> %s", &v11, 0x26u);
    }

    self->leCapable = v5;
    if (v5)
    {
      [(BLEMIDILocalPeripheral *)self checkAddMIDIService];
      [(BLEMIDILocalPeripheral *)self activateConnectedUUID];
    }

    else if ([(CBPeripheralManager *)self->peripheralManager state]== &dword_0 + 1)
    {
      sub_8EB0();
      v10 = qword_1D978;
      if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_INFO))
      {
        v11 = 136315394;
        v12 = "BTLEMIDILocalPeripheral.mm";
        v13 = 1024;
        v14 = 366;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%25s:%-5d CBManagerStateResetting received. The MIDI service has been removed by CoreBluetooth.", &v11, 0x12u);
      }

      self->midiServiceAdded = 0;
    }
  }
}

- (void)peripheralManagerDidStartAdvertising:(id)a3 error:(id)a4
{
  if (a4)
  {
    sub_8EB0();
    v5 = qword_1D978;
    if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = "BTLEMIDILocalPeripheral.mm";
      v8 = 1024;
      v9 = 375;
      v10 = 2112;
      v11 = a4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", &v6, 0x1Cu);
    }
  }
}

- (void)peripheralManager:(id)a3 didAddService:(id)a4 error:(id)a5
{
  sub_8EB0();
  v8 = qword_1D978;
  if (a5)
  {
    if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315650;
      v10 = "BTLEMIDILocalPeripheral.mm";
      v11 = 1024;
      v12 = 381;
      v13 = 2112;
      v14 = a5;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Error publishing service: %@", &v9, 0x1Cu);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_INFO))
    {
      v9 = 136315650;
      v10 = "BTLEMIDILocalPeripheral.mm";
      v11 = 1024;
      v12 = 383;
      v13 = 2112;
      v14 = a4;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%25s:%-5d Added service: %@", &v9, 0x1Cu);
    }

    self->midiServiceAdded = 1;
  }
}

- (void)peripheralManager:(id)a3 central:(id)a4 didSubscribeToCharacteristic:(id)a5
{
  sub_8EB0();
  v8 = qword_1D978;
  if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_INFO))
  {
    v10 = 136315906;
    v11 = "BTLEMIDILocalPeripheral.mm";
    v12 = 1024;
    v13 = 390;
    v14 = 2112;
    v15 = a4;
    v16 = 2112;
    v17 = a5;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%25s:%-5d %@ subscribed to MIDI characteristic %@. This will bring the device online.", &v10, 0x26u);
  }

  if (-[BLEMIDILocalPeripheral isAlreadyConnectedAsPeripheral:](self, "isAlreadyConnectedAsPeripheral:", [objc_msgSend(a4 "identifier")]))
  {
    sub_8EB0();
    v9 = qword_1D978;
    if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_INFO))
    {
      v10 = 136315650;
      v11 = "BTLEMIDILocalPeripheral.mm";
      v12 = 1024;
      v13 = 393;
      v14 = 2112;
      v15 = a4;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d %@ is already connected as a peripheral to this central. It will now be disconnected to reverse roles.", &v10, 0x1Cu);
    }

    sub_F538((self->driver - 1), [objc_msgSend(a4 "identifier")]);
    usleep(0xC350u);
  }

  self->connectedCentral = a4;
  -[BLEMIDILocalPeripheral activateUUID:](self, "activateUUID:", [objc_msgSend(a4 "identifier")]);
}

- (void)peripheralManager:(id)a3 central:(id)a4 didUnsubscribeFromCharacteristic:(id)a5
{
  sub_8EB0();
  v8 = qword_1D978;
  if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_INFO))
  {
    v12 = 136315906;
    v13 = "BTLEMIDILocalPeripheral.mm";
    v14 = 1024;
    v15 = 405;
    v16 = 2112;
    v17 = a4;
    v18 = 2112;
    v19 = a5;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%25s:%-5d %@ unsubscribed from MIDI characteristic %@. This will take the device offline.", &v12, 0x26u);
  }

  v9 = +[BLEMIDIAccessor midiDeviceForUUID:isLocalPeripheral:isRemotePeripheral:](BLEMIDIAccessor, "midiDeviceForUUID:isLocalPeripheral:isRemotePeripheral:", [objc_msgSend(a4 "identifier")], 1, 0);
  if (v9)
  {
    v10 = v9;

    self->connectedCentral = 0;
    [(BLEMIDILocalPeripheral *)self disconnectDevice:v10];
  }

  else
  {
    sub_8EB0();
    v11 = qword_1D978;
    if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "BTLEMIDILocalPeripheral.mm";
      v14 = 1024;
      v15 = 408;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: A central attempted to unsubscribe from a characteristic on a nonexistent MIDI device.", &v12, 0x12u);
    }
  }
}

- (void)peripheralManager:(id)a3 didReceiveReadRequest:(id)a4
{
  sub_8EB0();
  v6 = qword_1D978;
  if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "BTLEMIDILocalPeripheral.mm";
    v9 = 1024;
    v10 = 418;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%25s:%-5d peripheralManager:didReceiveReadRequest: returning CBATTErrorSuccess.", &v7, 0x12u);
  }

  [a3 respondToRequest:a4 withResult:0];
}

- (void)peripheralManager:(id)a3 _didReceiveWriteRequests:(id)a4
{
  v4 = a4;
  v7 = [a4 count];
  if (v7)
  {
    v9 = v7;
    v10 = 0;
    v11 = &CFBooleanGetTypeID_ptr;
    v12 = @"7772E5DB-3868-4112-A1A9-F2669D106BF3";
    *&v8 = 136315906;
    v25 = v8;
    v26 = v7;
    do
    {
      v13 = [v4 objectAtIndex:{v10, v25}];
      if ([objc_msgSend(objc_msgSend(v13 "characteristic")])
      {
        v14 = [v13 value];
        if ([(BLEMIDIDevice *)self->bleDevice dataReceiver]&& v14)
        {
          sub_8EB0();
          v15 = qword_1D978;
          if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_DEBUG))
          {
            v16 = v4;
            v17 = v12;
            v18 = v11;
            v19 = a3;
            v20 = [(BLEMIDIDataReceiver *)[(BLEMIDIDevice *)self->bleDevice dataReceiver] nowInMS];
            v21 = [v14 length];
            *buf = v25;
            v28 = "BTLEMIDILocalPeripheral.mm";
            v29 = 1024;
            v30 = 448;
            v31 = 2048;
            v32 = v20;
            a3 = v19;
            v11 = v18;
            v12 = v17;
            v4 = v16;
            v9 = v26;
            v33 = 2048;
            v34 = v21;
            _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d %llu ms: Received value of length %lu", buf, 0x26u);
          }

          [(BLEMIDIDataReceiver *)[(BLEMIDIDevice *)self->bleDevice dataReceiver] unpackValue:v14];
        }

        peripheralManager = self->peripheralManager;
        v23 = v13;
        v24 = 0;
      }

      else
      {
        peripheralManager = a3;
        v23 = v13;
        v24 = 10;
      }

      [peripheralManager respondToRequest:v23 withResult:v24];
      ++v10;
    }

    while (v9 != v10);
  }
}

- (void)peripheralManagerIsReadyToUpdateSubscribers:(id)a3
{
  self->readyToSend = 1;
  commandQueue = self->commandQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A8CC;
  block[3] = &unk_18858;
  block[4] = self;
  dispatch_sync(commandQueue, block);
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = [(BLEMIDILocalPeripheral *)self isLECapableHardware];
  if (self->leCapable != v4)
  {
    self->leCapable = v4;
  }
}

- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4
{
  if (self->centralManager == a3)
  {
    sub_8EB0();
    v6 = qword_1D978;
    if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v10 = "BTLEMIDILocalPeripheral.mm";
      v11 = 1024;
      v12 = 505;
      v13 = 2112;
      v14 = a4;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%25s:%-5d [device info] didConnectPeripheral: %@", buf, 0x1Cu);
    }

    if (([objc_msgSend(objc_msgSend(a4 "identifier")] & 1) == 0)
    {
      sub_8EB0();
      v7 = qword_1D978;
      if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v10 = "BTLEMIDILocalPeripheral.mm";
        v11 = 1024;
        v12 = 508;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: This central is only allowed to connect to a previously connected central.", buf, 0x12u);
      }

      [(CBCentralManager *)self->centralManager cancelPeripheralConnection:a4];
    }

    [a4 setDelegate:self];
    v8 = [CBUUID UUIDWithString:@"180A"];
    [a4 discoverServices:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v8, 1)}];
  }
}

- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5
{
  if (self->centralManager == a3)
  {
    sub_8EB0();
    v8 = qword_1D978;
    if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_INFO))
    {
      v9 = 136315906;
      v10 = "BTLEMIDILocalPeripheral.mm";
      v11 = 1024;
      v12 = 526;
      v13 = 2112;
      v14 = a4;
      v15 = 2112;
      v16 = a5;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%25s:%-5d [device info] didDisconnectPeripheral: %@ error: %@", &v9, 0x26u);
    }

    self->connectedPeripheral = 0;
    *&self->centralManufacturerOutstanding = 0;
  }
}

- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5
{
  if (self->centralManager == a3)
  {
    sub_8EB0();
    v7 = qword_1D978;
    if (os_log_type_enabled(qword_1D978, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315906;
      v9 = "BTLEMIDILocalPeripheral.mm";
      v10 = 1024;
      v11 = 541;
      v12 = 2112;
      v13 = a4;
      v14 = 2112;
      v15 = a5;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: Failed to connect to peripheral: %@ with error: %@", &v8, 0x26u);
    }

    if (a4)
    {
      [a4 setDelegate:0];
    }
  }
}

- (void)peripheral:(id)a3 didDiscoverServices:(id)a4
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a3 services];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v13 = self;
  v9 = 0;
  v10 = *v15;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v15 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v14 + 1) + 8 * i);
      if ([objc_msgSend(v12 "UUID")])
      {
        [a3 discoverCharacteristics:0 forService:v12];
        v9 = 1;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v8);
  self = v13;
  if ((v9 & 1) == 0)
  {
LABEL_11:
    [(CBCentralManager *)self->centralManager cancelPeripheralConnection:a3];
  }
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  if (![objc_msgSend(a4 "UUID")])
  {
    goto LABEL_13;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [a4 characteristics];
  v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v20;
  v16 = self;
  p_centralModelOutstanding = &self->centralModelOutstanding;
  p_centralManufacturerOutstanding = &self->centralManufacturerOutstanding;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v19 + 1) + 8 * i);
      v15 = p_centralManufacturerOutstanding;
      if (([objc_msgSend(v14 "UUID")] & 1) == 0)
      {
        v15 = p_centralModelOutstanding;
        if (![objc_msgSend(v14 "UUID")])
        {
          continue;
        }
      }

      [a3 readValueForCharacteristic:v14];
      v10 = 1;
      *v15 = 1;
    }

    v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v9);
  self = v16;
  if ((v10 & 1) == 0)
  {
LABEL_13:
    [(CBCentralManager *)self->centralManager cancelPeripheralConnection:a3];
  }
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  if ([objc_msgSend(a4 "UUID")])
  {
    v8 = [[NSString alloc] initWithData:objc_msgSend(a4 encoding:{"value"), 4}];
    v9 = +[BLEMIDIAccessor localPeripheral];
    if (v9)
    {
      MIDIObjectSetStringProperty(v9, kMIDIPropertyManufacturer, v8);
    }

    v10 = 91;
LABEL_9:
    *(&self->super.isa + v10) = 0;
    goto LABEL_10;
  }

  if ([objc_msgSend(a4 "UUID")])
  {
    v11 = [[NSString alloc] initWithData:objc_msgSend(a4 encoding:{"value"), 4}];
    v12 = +[BLEMIDIAccessor localPeripheral];
    if (v12)
    {
      MIDIObjectSetStringProperty(v12, kMIDIPropertyModel, v11);
    }

    v10 = 92;
    goto LABEL_9;
  }

LABEL_10:
  if (!self->centralManufacturerOutstanding && !self->centralModelOutstanding)
  {
    centralManager = self->centralManager;

    [(CBCentralManager *)centralManager cancelPeripheralConnection:a3];
  }
}

- (void)enqueue:(id)a3
{
  if (a3)
  {
    commandQueue = self->commandQueue;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_B204;
    v4[3] = &unk_18880;
    v4[4] = self;
    v4[5] = a3;
    dispatch_sync(commandQueue, v4);
  }
}

- (void)sendIfReady
{
  v3 = objc_alloc_init(NSAutoreleasePool);
  if (self->readyToSend)
  {
    v4 = 0;
    driver = self->driver;
    do
    {
      if (![(NSMutableArray *)self->outgoingPackets count])
      {
        break;
      }

      if (v4 >= 0x64)
      {
        [v3 drain];
        v3 = objc_alloc_init(NSAutoreleasePool);
        v4 = 0;
      }

      else
      {
        ++v4;
      }

      v6 = [(CBPeripheralManager *)self->peripheralManager updateValue:[(NSMutableArray *)self->outgoingPackets objectAtIndex:0] forCharacteristic:self->midiChar onSubscribedCentrals:0];
      self->readyToSend = v6;
      if (!v6)
      {
        break;
      }

      [(NSMutableArray *)self->outgoingPackets removeObjectAtIndex:0];
      [-[MIDIDriverInterface bleDevice](driver[14] "bleDevice")];
    }

    while (self->readyToSend);
  }

  [v3 drain];
}

- (BOOL)isAlreadyConnectedAsPeripheral:(id)a3
{
  v3 = [BLEMIDIAccessor midiDeviceForUUID:a3 isLocalPeripheral:0 isRemotePeripheral:1];
  if (v3)
  {

    LOBYTE(v3) = [BLEMIDIAccessor deviceIsOnline:v3];
  }

  return v3;
}

- (BLEMIDILocalPeripheral)peripheralWithUUID:(id)a3
{
  v4 = [[NSUUID alloc] initWithUUIDString:a3];
  centralManager = self->centralManager;
  v8 = v4;
  result = [(CBCentralManager *)centralManager retrievePeripheralsWithIdentifiers:[NSArray arrayWithObjects:&v8 count:1]];
  if (result)
  {
    v7 = result;
    if ([(BLEMIDILocalPeripheral *)result count]== &dword_0 + 1)
    {
      return [(BLEMIDILocalPeripheral *)v7 objectAtIndex:0];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

@end