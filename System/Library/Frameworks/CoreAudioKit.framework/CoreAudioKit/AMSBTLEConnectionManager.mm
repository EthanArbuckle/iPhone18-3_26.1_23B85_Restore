@interface AMSBTLEConnectionManager
- (AMSBTLEConnectionManager)initWithUIController:(id)controller;
- (BOOL)isLECapableHardware;
- (BOOL)peripheralIsConnectedCentral:(id)central;
- (id)amsPeripheralForCBPeripheral:(id)peripheral;
- (unsigned)midiDeviceForUUID:(id)d;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManagerDidUpdateState:(id)state;
- (void)checkAlreadyConnectedPeripherals;
- (void)createPeripheralList;
- (void)dealloc;
- (void)killTimer;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)removeAMSPeripheralForCBPeripheral:(id)peripheral;
- (void)startScan;
- (void)startTimer;
- (void)timerFired:(id)fired;
@end

@implementation AMSBTLEConnectionManager

- (AMSBTLEConnectionManager)initWithUIController:(id)controller
{
  v9.receiver = self;
  v9.super_class = AMSBTLEConnectionManager;
  v4 = [(AMSBTLEConnectionManager *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->controller = controller;
    v6 = [objc_alloc(MEMORY[0x277CBDFF8]) initWithDelegate:v4 queue:0];
    v5->centralManager = v6;
    v5->centralState = [(CBCentralManager *)v6 state];
    v5->peripheralList = objc_opt_new();
    v5->connectedBTPeripherals = objc_opt_new();
    v5->connectedAMSPeripherals = objc_opt_new();
    [(AMSBTLEConnectionManager *)v5 createPeripheralList];
    [(AMSBTLEConnectionManager *)v5 startTimer];
    if (!gNotificationClient)
    {
      MIDIClientCreate(&stru_284A3B338, NotifyProc, v5, &gNotificationClient);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel_updateAdvertisingState_ name:kAdvertisementNotification object:0];
  }

  return v5;
}

- (void)dealloc
{
  if (gNotificationClient)
  {
    MIDIClientDispose(gNotificationClient);
    gNotificationClient = 0;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:kAdvertisementNotification];

  self->peripheralList = 0;
  centralManager = self->centralManager;
  if (centralManager)
  {

    self->centralManager = 0;
  }

  v5.receiver = self;
  v5.super_class = AMSBTLEConnectionManager;
  [(AMSBTLEConnectionManager *)&v5 dealloc];
}

- (void)createPeripheralList
{
  v3 = MIDIGetNumberOfDevices();
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *MEMORY[0x277CBFD08];
    propertyID = *MEMORY[0x277CBFD10];
    v7 = *MEMORY[0x277CBFD18];
    do
    {
      v8 = MIDIGetDevice(v5);
      if (v8)
      {
        v9 = v8;
        str = 0;
        MIDIObjectGetStringProperty(v8, v6, &str);
        if (str)
        {
          if (CFEqual(str, @"com.apple.AppleMIDIBluetoothDriver"))
          {
            CFRelease(str);
            outValue = 0;
            if (([MEMORY[0x277CBFD00] deviceIsNullDevice:v9] & 1) == 0 && (objc_msgSend(MEMORY[0x277CBFD00], "deviceIsLocalPeripheral:", v9) & 1) == 0)
            {
              v16 = 0;
              MIDIObjectGetStringProperty(v9, @"BLE MIDI Device UUID", &v16);
              if (v16)
              {
                v15 = 0;
                MIDIObjectGetStringProperty(v9, propertyID, &v15);
                MIDIObjectGetIntegerProperty(v9, v7, &outValue);
                v10 = [AMSBTLEPeripheral alloc];
                v11 = [(AMSBTLEPeripheral *)v10 initWithID:v16 name:v15 manager:self->centralManager];
                CFRelease(v16);
                CFRelease(v15);
                *v14 = 0;
                MIDIObjectGetIntegerProperty(v9, @"MIDI Input Supported", &v14[1]);
                MIDIObjectGetIntegerProperty(v9, @"MIDI Output Supported", v14);
                [(AMSBTLEPeripheral *)v11 setInputAvailable:v14[1] != 0];
                [(AMSBTLEPeripheral *)v11 setOutputAvailable:v14[0] != 0];
                [(AMSBTLEPeripheral *)v11 setOnline:outValue == 0];
                [(AMSBTLEPeripheral *)v11 updateAvailableStateChanged];
                controller = self->controller;
                objc_sync_enter(controller);
                [(NSMutableArray *)self->peripheralList addObject:v11];
                objc_sync_exit(controller);
              }
            }
          }

          else if (str)
          {
            CFRelease(str);
          }
        }
      }

      ++v5;
    }

    while (v4 != v5);
  }

  [(BTLEConnectionTable *)self->controller updatePeripheralTable];
}

- (void)checkAlreadyConnectedPeripherals
{
  v32[1] = *MEMORY[0x277D85DE8];
  if (!self->isAdvertising)
  {
    v3 = objc_opt_new();
    centralManager = self->centralManager;
    v32[0] = [MEMORY[0x277CBE0A0] UUIDWithString:@"03B80E5A-EDE8-4B33-A751-6CE34EC4C700"];
    v5 = -[CBCentralManager retrieveConnectedPeripheralsWithServices:](centralManager, "retrieveConnectedPeripheralsWithServices:", [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1]);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v6)
    {
      v7 = *v27;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v27 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v26 + 1) + 8 * i);
          v10 = [MEMORY[0x277CBFD00] midiDeviceForUUID:{objc_msgSend(objc_msgSend(v9, "identifier"), "UUIDString")}];
          if (v10 && ![MEMORY[0x277CBFD00] deviceIsOnline:v10] || !objc_msgSend(MEMORY[0x277CBFD00], "midiDeviceForUUID:", objc_msgSend(objc_msgSend(v9, "identifier", v10), "UUIDString")))
          {
            [v3 addObject:v9];
          }
        }

        v6 = [(NSArray *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v6);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = [v3 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (!v11)
    {

      return;
    }

    v12 = 0;
    v13 = *v23;
    while (1)
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v3);
        }

        v15 = *(*(&v22 + 1) + 8 * j);
        v16 = [MEMORY[0x277CBFD00] midiDeviceForUUID:{objc_msgSend(objc_msgSend(v15, "identifier"), "UUIDString")}];
        if (v16)
        {
          name = [MEMORY[0x277CBFD00] nameForMIDIDevice:v16];
        }

        else
        {
          name = [v15 name];
        }

        v18 = name;
        v19 = [(AMSBTLEConnectionManager *)self amsPeripheralForCBPeripheral:v15];
        if (v19)
        {
          [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
          [v19 setLastSeen:?];
          if (![v19 updateAvailableStateChanged])
          {
            continue;
          }

          NSLog(&cfstr_PeripheralIsav.isa, [v19 isAvailable]);
        }

        else
        {
          NSLog(&cfstr_RetrievedANewM.isa, v18, [objc_msgSend(v15 "identifier")]);
          v20 = -[AMSBTLEPeripheral initWithID:name:manager:]([AMSBTLEPeripheral alloc], "initWithID:name:manager:", [objc_msgSend(v15 "identifier")], v18, self->centralManager);
          [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
          [(AMSBTLEPeripheral *)v20 setLastSeen:?];
          [(AMSBTLEPeripheral *)v20 updateAvailableStateChanged];
          controller = self->controller;
          objc_sync_enter(controller);
          [(NSMutableArray *)self->peripheralList addObject:v20];
          objc_sync_exit(controller);
        }

        v12 = 1;
      }

      v11 = [v3 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (!v11)
      {

        if (v12)
        {
          [(BTLEConnectionTable *)self->controller updatePeripheralTable];
        }

        return;
      }
    }
  }
}

- (void)timerFired:(id)fired
{
  v20 = *MEMORY[0x277D85DE8];
  [(AMSBTLEConnectionManager *)self checkAlreadyConnectedPeripherals];
  [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
  v5 = v4;
  v6 = [(NSMutableArray *)self->peripheralList copy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = 0;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        [v11 lastSeen];
        if (v5 - v12 <= 7.0 || -[AMSBTLEConnectionManager midiDeviceForUUID:](self, "midiDeviceForUUID:", [v11 uuid]))
        {
          v8 |= [v11 updateAvailableStateChanged];
        }

        else
        {
          controller = self->controller;
          objc_sync_enter(controller);
          [v11 setOnline:0];
          [(NSMutableArray *)self->peripheralList removeObject:v11];
          objc_sync_exit(controller);
          v8 = 1;
        }

        ++v10;
      }

      while (v7 != v10);
      v14 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v7 = v14;
    }

    while (v14);
    if (v8)
    {
      [(BTLEConnectionTable *)self->controller updatePeripheralTable];
    }
  }
}

- (BOOL)isLECapableHardware
{
  state = [(CBCentralManager *)self->centralManager state];
  v3 = 0;
  if (state > 3)
  {
    if (state == 4)
    {
      v4 = @"Bluetooth is currently powered off.";
      goto LABEL_10;
    }

    if (state == 5)
    {
      v3 = 1;
      v4 = @"Bluetooth is powered on and LE capable.";
LABEL_11:
      NSLog(&cfstr_CentralManager.isa, v4);
    }
  }

  else
  {
    if (state == 2)
    {
      v4 = @"The platform/hardware doesn't support Bluetooth Low Energy.";
      goto LABEL_10;
    }

    if (state == 3)
    {
      v4 = @"The app is not authorized to use Bluetooth Low Energy.";
LABEL_10:
      v3 = 0;
      goto LABEL_11;
    }
  }

  return v3;
}

- (void)startScan
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CBDDB0];
  v6[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  NSLog(&cfstr_ScanningForMid.isa, "03B80E5A-EDE8-4B33-A751-6CE34EC4C700");
  v4 = [MEMORY[0x277CBE0A0] UUIDWithString:@"03B80E5A-EDE8-4B33-A751-6CE34EC4C700"];
  -[CBCentralManager scanForPeripheralsWithServices:options:](self->centralManager, "scanForPeripheralsWithServices:options:", [MEMORY[0x277CBEA60] arrayWithObjects:&v4 count:1], v3);
}

- (void)killTimer
{
  refreshTimer = self->refreshTimer;
  if (refreshTimer)
  {
    [(NSTimer *)refreshTimer invalidate];

    self->refreshTimer = 0;
  }

  connectionTimer = self->connectionTimer;
  if (connectionTimer)
  {
    [(NSTimer *)connectionTimer invalidate];

    self->connectionTimer = 0;
  }
}

- (void)startTimer
{
  if (!self->refreshTimer)
  {
    v3 = objc_alloc(MEMORY[0x277CBEBB8]);
    self->refreshTimer = [v3 initWithFireDate:objc_msgSend(MEMORY[0x277CBEAA8] interval:"dateWithTimeIntervalSinceNow:" target:1.0) selector:self userInfo:sel_timerFired_ repeats:{0, 1, 1.0}];
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [currentRunLoop addTimer:self->refreshTimer forMode:*MEMORY[0x277CBE738]];
    [(NSTimer *)self->refreshTimer setTolerance:0.1];
  }

  if (!self->connectionTimer)
  {
    v5 = objc_alloc(MEMORY[0x277CBEBB8]);
    self->connectionTimer = [v5 initWithFireDate:objc_msgSend(MEMORY[0x277CBEAA8] interval:"dateWithTimeIntervalSinceNow:" target:5.0) selector:self userInfo:sel_connectionTimerFired_ repeats:{0, 1, 5.0}];
    currentRunLoop2 = [MEMORY[0x277CBEB88] currentRunLoop];
    [currentRunLoop2 addTimer:self->connectionTimer forMode:*MEMORY[0x277CBE738]];
    connectionTimer = self->connectionTimer;

    [(NSTimer *)connectionTimer setTolerance:0.25];
  }
}

- (void)centralManagerDidUpdateState:(id)state
{
  centralManager = self->centralManager;
  if (centralManager != state)
  {
    return;
  }

  state = [(CBCentralManager *)centralManager state];
  if (state == self->centralState)
  {
    return;
  }

  v6 = state;
  self->centralState = state;
  controller = self->controller;
  if (v6)
  {
    if (v6 == 5)
    {
      [(BTLEConnectionTable *)controller setUIEnabled:1];

      [(AMSBTLEConnectionManager *)self startScan];
      return;
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  [(BTLEConnectionTable *)controller setUIEnabled:v8];
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  if ([(AMSBTLEConnectionManager *)self peripheralIsConnectedCentral:peripheral])
  {
    return;
  }

  v9 = [data objectForKeyedSubscript:*MEMORY[0x277CBDD08]];
  name = v9;
  if (!v9)
  {
    name = [peripheral name];
  }

  v11 = [(AMSBTLEConnectionManager *)self amsPeripheralForCBPeripheral:peripheral];
  if (v11)
  {
    v12 = v11;
    v13 = [data objectForKeyedSubscript:*MEMORY[0x277CBDD30]];
    if ([v13 containsObject:{objc_msgSend(MEMORY[0x277CBE0A0], "UUIDWithString:", @"03B80E5A-EDE8-4B33-A751-6CE34EC4C700"}] && (objc_msgSend(objc_msgSend(MEMORY[0x277CBEAA8], "date"), "timeIntervalSince1970"), objc_msgSend(v12, "setLastSeen:"), objc_msgSend(v12, "updateAvailableStateChanged")))
    {
      NSLog(&cfstr_PeripheralIsav_0.isa, [v12 isAvailable]);
      v14 = 1;
      if (!v9)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v14 = 0;
      if (!v9)
      {
        goto LABEL_12;
      }
    }

    if (([objc_msgSend(v12 "name")] & 1) == 0)
    {
      [v12 setName:name];
LABEL_16:
      p_controller = &self->controller;
      goto LABEL_17;
    }

LABEL_12:
    if (!v14)
    {
      return;
    }

    goto LABEL_16;
  }

  NSLog(&cfstr_DiscoveredANew.isa, name, [objc_msgSend(peripheral "identifier")]);
  v15 = -[AMSBTLEPeripheral initWithID:name:manager:]([AMSBTLEPeripheral alloc], "initWithID:name:manager:", [objc_msgSend(peripheral "identifier")], name, self->centralManager);
  [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
  [(AMSBTLEPeripheral *)v15 setLastSeen:?];
  [(AMSBTLEPeripheral *)v15 updateAvailableStateChanged];
  controller = self->controller;
  p_controller = &self->controller;
  objc_sync_enter(controller);
  [(BTLEConnectionTable *)*(p_controller - 5) addObject:v15];
  objc_sync_exit(controller);

LABEL_17:
  v18 = *p_controller;

  [(BTLEConnectionTable *)v18 updatePeripheralTable];
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->centralManager == manager)
  {
    v6 = [(AMSBTLEConnectionManager *)self amsPeripheralForCBPeripheral:peripheral];
    if (v6)
    {
      v7 = v6;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      connectedAMSPeripherals = self->connectedAMSPeripherals;
      v9 = [(NSMutableArray *)connectedAMSPeripherals countByEnumeratingWithState:&v14 objects:v19 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v15;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v15 != v11)
            {
              objc_enumerationMutation(connectedAMSPeripherals);
            }

            v13 = *(*(&v14 + 1) + 8 * i);
            if ([objc_msgSend(v13 "uuid")])
            {
              [(NSMutableArray *)self->connectedAMSPeripherals removeObject:v13];
              goto LABEL_13;
            }
          }

          v10 = [(NSMutableArray *)connectedAMSPeripherals countByEnumeratingWithState:&v14 objects:v19 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
      [(NSMutableArray *)self->connectedAMSPeripherals addObject:v7];
      if (([(NSMutableArray *)self->connectedBTPeripherals containsObject:peripheral]& 1) == 0)
      {
        [(NSMutableArray *)self->connectedBTPeripherals addObject:peripheral];
      }

      [peripheral setDelegate:self];
      v18 = [MEMORY[0x277CBE0A0] UUIDWithString:@"03B80E5A-EDE8-4B33-A751-6CE34EC4C700"];
      [peripheral discoverServices:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v18, 1)}];
    }

    else
    {
      NSLog(&cfstr_StoredPeripher.isa);
    }
  }
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->centralManager == manager)
  {
    if (error)
    {
      NSLog(&cfstr_Centralmanager.isa, a2, error);
    }

    [peripheral setDelegate:0];
    [(NSMutableArray *)self->connectedBTPeripherals removeObject:peripheral];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    connectedAMSPeripherals = self->connectedAMSPeripherals;
    v8 = [(NSMutableArray *)connectedAMSPeripherals countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(connectedAMSPeripherals);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          if ([objc_msgSend(v12 "uuid")])
          {
            [(NSMutableArray *)self->connectedAMSPeripherals removeObject:v12];
            return;
          }
        }

        v9 = [(NSMutableArray *)connectedAMSPeripherals countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  NSLog(&cfstr_ErrorFailedToC.isa, peripheral, [error localizedDescription]);
  if (peripheral)
  {

    [peripheral setDelegate:0];
  }
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  v21 = *MEMORY[0x277D85DE8];
  if (services)
  {
    NSLog(&cfstr_PeripheralDidd.isa, a2, services);
    centralManager = self->centralManager;

    [(CBCentralManager *)centralManager cancelPeripheralConnection:peripheral];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    services = [peripheral services];
    v8 = [services countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (!v8)
    {
      goto LABEL_15;
    }

    v9 = v8;
    selfCopy = self;
    v10 = 0;
    v11 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(services);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        uUID = [v13 UUID];
        if ([uUID isEqual:{objc_msgSend(MEMORY[0x277CBE0A0], "UUIDWithString:", @"03B80E5A-EDE8-4B33-A751-6CE34EC4C700"}])
        {
          [peripheral discoverCharacteristics:0 forService:v13];
          v10 = 1;
        }
      }

      v9 = [services countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
    self = selfCopy;
    if ((v10 & 1) == 0)
    {
LABEL_15:
      NSLog(&cfstr_MidiServiceNot.isa, [objc_msgSend(peripheral "identifier")]);
      [(CBCentralManager *)self->centralManager cancelPeripheralConnection:peripheral];
    }
  }
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = [(AMSBTLEConnectionManager *)self amsPeripheralForCBPeripheral:?];
  if (error || !v9)
  {
    if (error)
    {
      NSLog(&cfstr_PeripheralDidd_0.isa, error);
    }

    centralManager = self->centralManager;

    [(CBCentralManager *)centralManager cancelPeripheralConnection:peripheral];
  }

  else
  {
    uUID = [service UUID];
    if ([uUID isEqual:{objc_msgSend(MEMORY[0x277CBE0A0], "UUIDWithString:", @"03B80E5A-EDE8-4B33-A751-6CE34EC4C700"}])
    {
      NSLog(&cfstr_SettingMidiLow.isa, peripheral);
      [(CBCentralManager *)self->centralManager setDesiredConnectionLatency:-12 forPeripheral:peripheral];
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      characteristics = [service characteristics];
      v12 = [characteristics countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v20;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v20 != v14)
            {
              objc_enumerationMutation(characteristics);
            }

            v16 = *(*(&v19 + 1) + 8 * i);
            uUID2 = [v16 UUID];
            if ([uUID2 isEqual:{objc_msgSend(MEMORY[0x277CBE0A0], "UUIDWithString:", @"7772E5DB-3868-4112-A1A9-F2669D106BF3"}])
            {
              if (([v16 properties] & 2) != 0)
              {
                NSLog(&cfstr_CheckingPairin.isa);
                [peripheral readValueForCharacteristic:v16];
              }
            }
          }

          v13 = [characteristics countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v13);
      }
    }
  }
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  v26 = *MEMORY[0x277D85DE8];
  uUID = [characteristic UUID];
  if ([uUID isEqual:{objc_msgSend(MEMORY[0x277CBE0A0], "UUIDWithString:", @"7772E5DB-3868-4112-A1A9-F2669D106BF3"}])
  {
    if (error)
    {
      NSLog(&cfstr_ErrorEncounter.isa, error);
      centralManager = self->centralManager;

      [(CBCentralManager *)centralManager cancelPeripheralConnection:peripheral];
    }

    else
    {
      NSLog(&cfstr_PairingAuthent.isa);
      v10 = [(AMSBTLEConnectionManager *)self amsPeripheralForCBPeripheral:peripheral];
      if (([v10 isOnline] & 1) == 0)
      {
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        connectedAMSPeripherals = self->connectedAMSPeripherals;
        v12 = [(NSMutableArray *)connectedAMSPeripherals countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v22;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v22 != v14)
              {
                objc_enumerationMutation(connectedAMSPeripherals);
              }

              v16 = *(*(&v21 + 1) + 8 * i);
              if ([objc_msgSend(v16 "uuid")])
              {
                v10 = v16;
                goto LABEL_17;
              }
            }

            v13 = [(NSMutableArray *)connectedAMSPeripherals countByEnumeratingWithState:&v21 objects:v25 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

LABEL_17:
        nullDevice = [MEMORY[0x277CBFD00] nullDevice];
        if (nullDevice)
        {
          if (v10)
          {
            v18 = nullDevice;
            v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
            [v19 setValue:objc_msgSend(objc_msgSend(peripheral forKey:{"identifier"), "UUIDString"), @"BLE MIDI Device UUID"}];
            name = [v10 name];
            [v19 setValue:name forKey:*MEMORY[0x277CBFD10]];
            [v19 setValue:&unk_284A43770 forKey:@"MIDI Local Peripheral"];
            [v19 setValue:&unk_284A43788 forKey:@"MIDI Remote Peripheral"];
            if ([(AMSBTLEConnectionManager *)self peripheralIsConnectedCentral:peripheral])
            {
              NSLog(&cfstr_AlreadyActingA.isa);
            }

            else
            {
              NSLog(&cfstr_InstructingThe.isa, [objc_msgSend(peripheral "identifier")]);
              MIDIObjectSetDictionaryProperty(v18, @"BLE MIDI Remote Peripheral", v19);
              sleep(1u);
              NSLog(&cfstr_DisconnectingF.isa, peripheral);
              [(CBCentralManager *)self->centralManager cancelPeripheralConnection:peripheral];
            }
          }

          else
          {
            NSLog(&cfstr_CouldNotLocate.isa);
          }
        }

        else
        {
          NSLog(&cfstr_CouldNotCommun.isa);
        }
      }
    }
  }
}

- (id)amsPeripheralForCBPeripheral:(id)peripheral
{
  v17 = *MEMORY[0x277D85DE8];
  if (!peripheral)
  {
    return 0;
  }

  v4 = [objc_msgSend(peripheral "identifier")];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  peripheralList = self->peripheralList;
  v6 = [(NSMutableArray *)peripheralList countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v13;
LABEL_4:
  v9 = 0;
  while (1)
  {
    if (*v13 != v8)
    {
      objc_enumerationMutation(peripheralList);
    }

    v10 = *(*(&v12 + 1) + 8 * v9);
    if ([objc_msgSend(v10 "uuid")])
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = [(NSMutableArray *)peripheralList countByEnumeratingWithState:&v12 objects:v16 count:16];
      v10 = 0;
      if (v7)
      {
        goto LABEL_4;
      }

      return v10;
    }
  }
}

- (void)removeAMSPeripheralForCBPeripheral:(id)peripheral
{
  NSLog(&cfstr_Removeamsperip.isa, a2, peripheral);
  v5 = [(AMSBTLEConnectionManager *)self amsPeripheralForCBPeripheral:peripheral];
  if (v5)
  {
    v6 = v5;
    controller = self->controller;
    objc_sync_enter(controller);
    [(NSMutableArray *)self->peripheralList removeObject:v6];
    objc_sync_exit(controller);
    v8 = self->controller;

    [(BTLEConnectionTable *)v8 updatePeripheralTable];
  }
}

- (unsigned)midiDeviceForUUID:(id)d
{
  if (d)
  {
    v4 = MIDIGetNumberOfDevices();
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *MEMORY[0x277CBFD08];
      do
      {
        v8 = MIDIGetDevice(v6);
        if (v8)
        {
          v9 = v8;
          str = 0;
          MIDIObjectGetStringProperty(v8, v7, &str);
          if (str)
          {
            if (CFEqual(str, @"com.apple.AppleMIDIBluetoothDriver"))
            {
              CFRelease(str);
              if (([MEMORY[0x277CBFD00] deviceIsNullDevice:v9] & 1) == 0 && (objc_msgSend(MEMORY[0x277CBFD00], "deviceIsLocalPeripheral:", v9) & 1) == 0)
              {
                cf1 = 0;
                MIDIObjectGetStringProperty(v9, @"BLE MIDI Device UUID", &cf1);
                if (cf1)
                {
                  v10 = CFEqual(cf1, d);
                  CFRelease(cf1);
                  if (v10)
                  {
                    return v9;
                  }
                }
              }
            }

            else if (str)
            {
              CFRelease(str);
            }
          }
        }

        ++v6;
      }

      while (v5 != v6);
    }
  }

  LODWORD(v9) = 0;
  return v9;
}

- (BOOL)peripheralIsConnectedCentral:(id)central
{
  localPeripheral = [MEMORY[0x277CBFD00] localPeripheral];
  str = 0;
  if (!localPeripheral)
  {
    return 0;
  }

  MIDIObjectGetStringProperty(localPeripheral, @"BLE MIDI Device UUID", &str);
  if (!str)
  {
    return 0;
  }

  v5 = [objc_msgSend(central "identifier")];
  v6 = [v5 isEqualToString:str];
  CFRelease(str);
  return v6;
}

@end