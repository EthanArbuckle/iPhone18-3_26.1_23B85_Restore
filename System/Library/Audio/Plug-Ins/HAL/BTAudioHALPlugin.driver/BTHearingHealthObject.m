@interface BTHearingHealthObject
- (float)getRegionalDosimetryVolumeCurve:(unsigned __int8)a3 productID:(unsigned int)a4;
- (id)centralManagerStateString;
- (void)centralManager:(id)a3 connectionEventDidOccur:(int64_t)a4 forPeripheral:(id)a5;
- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4;
- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)connectPeripheral:(id)a3;
- (void)dealloc;
- (void)disconnectPeripheral:(id)a3 force:(BOOL)a4;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverServices:(id)a4;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)readData:(id)a3;
- (void)registerService;
- (void)writeData:(id)a3 forCharacteristic:(id)a4;
@end

@implementation BTHearingHealthObject

- (void)dealloc
{
  self->_audioDevice = 0;

  self->_centralManager = 0;
  self->_peripheral = 0;

  self->_uuid = 0;
  self->_dosimetrySensitivityCharacteristic = 0;

  self->_dosimetryVolumeCurveCharacteristic = 0;
  self->_characteristics = 0;
  v3.receiver = self;
  v3.super_class = BTHearingHealthObject;
  [(BTHearingHealthObject *)&v3 dealloc];
}

- (void)registerService
{
  if ([(BTHearingHealthObject *)self centralManager]&& [(CBCentralManager *)[(BTHearingHealthObject *)self centralManager] state]== &dword_4 + 1)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v3 = objc_alloc_init(NSMutableArray);
    [v3 addObject:{+[CBUUID UUIDWithString:](CBUUID, "UUIDWithString:", CBUUIDAppleHeadsetPropertyServiceString)}];
    [v4 setObject:v3 forKeyedSubscript:CBConnectionEventMatchingOptionServiceUUIDs];
    [(CBCentralManager *)[(BTHearingHealthObject *)self centralManager] registerForConnectionEventsWithOptions:v4];
  }
}

- (void)connectPeripheral:(id)a3
{
  if ([(CBCentralManager *)[(BTHearingHealthObject *)self centralManager] state]== &dword_4 + 1)
  {
    v5 = [(BTHearingHealthObject *)self centralManager];

    [(CBCentralManager *)v5 connectPeripheral:a3 options:0];
  }
}

- (void)disconnectPeripheral:(id)a3 force:(BOOL)a4
{
  v4 = a4;
  if (-[CBCentralManager state](-[BTHearingHealthObject centralManager](self, "centralManager"), "state") == &dword_4 + 1 && [a3 state])
  {
    v7 = &__kCFBooleanTrue;
    if (!v4)
    {
      v7 = &__kCFBooleanFalse;
    }

    v8[0] = CBCancelPeripheralConnectionOptionForce;
    v8[1] = CBCancelPeripheralConnectionOptionDoNotAutoConnectBuiltInServices;
    v9[0] = v7;
    v9[1] = &__kCFBooleanFalse;
    [(CBCentralManager *)[(BTHearingHealthObject *)self centralManager] cancelPeripheralConnection:a3 options:[NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2]];
  }
}

- (void)centralManagerDidUpdateState:(id)a3
{
  if ([(CBCentralManager *)[(BTHearingHealthObject *)self centralManager] state]== &dword_4 + 1)
  {

    [(BTHearingHealthObject *)self registerService];
  }

  else if ([(CBCentralManager *)[(BTHearingHealthObject *)self centralManager] state]== &dword_4 || [(CBCentralManager *)[(BTHearingHealthObject *)self centralManager] state]== &dword_0 + 1)
  {

    [(BTHearingHealthObject *)self setPeripheral:0];
  }
}

- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4
{
  if ([objc_msgSend(a4 identifier])
  {
    v6 = qword_D8510;
    if (os_log_type_enabled(qword_D8510, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = [(BTHearingHealthObject *)self uuid];
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Connected AHPS peripheral - UUID=%@", &v7, 0xCu);
    }

    [a4 setDelegate:self];
    [(CBPeripheral *)[(BTHearingHealthObject *)self peripheral] discoverServices:0];
  }
}

- (void)peripheral:(id)a3 didDiscoverServices:(id)a4
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [a3 services];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v9 = CBUUIDAppleHeadsetPropertyServiceString;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([objc_msgSend(v11 "UUID")])
        {
          v12 = qword_D8510;
          if (os_log_type_enabled(qword_D8510, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [(BTHearingHealthObject *)self uuid];
            *buf = 138412290;
            v19 = v13;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Discovered AHPS - UUID=%@", buf, 0xCu);
          }

          [(CBPeripheral *)[(BTHearingHealthObject *)self peripheral] discoverCharacteristics:0 forService:v11];
          return;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a4 characteristics];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    v10 = CBUUIDDosimetrySensitivityCharacteristicString;
    v11 = CBUUIDDosimetryVolumeCurveCharacteristicString;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if ([objc_msgSend(v13 "UUID")])
        {
          [(BTHearingHealthObject *)self setDosimetrySensitivityCharacteristic:v13];
        }

        else if ([objc_msgSend(v13 "UUID")])
        {
          [(BTHearingHealthObject *)self setDosimetryVolumeCurveCharacteristic:v13];
        }

        if (-[NSMutableArray containsObject:](-[BTHearingHealthObject characteristics](self, "characteristics"), "containsObject:", [v13 UUID]))
        {
          [(BTHearingHealthObject *)self readData:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5
{
  v6 = qword_D8510;
  if (os_log_type_enabled(qword_D8510, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = [(BTHearingHealthObject *)self uuid];
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Failed to connect AHPS peripheral - UUID=%@", &v7, 0xCu);
  }

  [(BTHearingHealthObject *)self setPeripheral:0];
}

- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5
{
  v6 = qword_D8510;
  if (os_log_type_enabled(qword_D8510, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = [(BTHearingHealthObject *)self uuid];
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Disconnected AHPS peripheral - UUID=%@", &v7, 0xCu);
  }

  [(BTHearingHealthObject *)self setPeripheral:0];
}

- (void)centralManager:(id)a3 connectionEventDidOccur:(int64_t)a4 forPeripheral:(id)a5
{
  if (a4)
  {
    if (a4 == 1 && [objc_msgSend(a5 identifier] && !-[BTHearingHealthObject peripheral](self, "peripheral"))
    {
      [(BTHearingHealthObject *)self setPeripheral:a5];

      [(BTHearingHealthObject *)self connectPeripheral:a5];
    }
  }

  else
  {

    [(BTHearingHealthObject *)self disconnectPeripheral:a5 force:?];
  }
}

- (id)centralManagerStateString
{
  v2 = [(CBCentralManager *)[(BTHearingHealthObject *)self centralManager] state];
  if ((v2 - 1) > 9)
  {
    return @"unknown";
  }

  else
  {
    return off_AF9D8[(v2 - 1)];
  }
}

- (void)writeData:(id)a3 forCharacteristic:(id)a4
{
  v6 = [(BTHearingHealthObject *)self peripheral];

  [(CBPeripheral *)v6 writeValue:a3 forCharacteristic:a4 type:1];
}

- (void)readData:(id)a3
{
  v4 = [(BTHearingHealthObject *)self peripheral];

  [(CBPeripheral *)v4 readValueForCharacteristic:a3];
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  if ([(BTHearingHealthObject *)self audioDevice])
  {
    v9 = [a4 UUID];
    if ([v9 isEqual:{+[CBUUID UUIDWithString:](CBUUID, "UUIDWithString:", CBUUIDDosimetrySensitivityCharacteristicString)}])
    {
      if (a5)
      {
        if (os_log_type_enabled(qword_D8510, OS_LOG_TYPE_ERROR))
        {
          sub_7C04C(a3);
        }
      }

      else if ([objc_msgSend(a4 "value")] < 4)
      {
        if (os_log_type_enabled(qword_D8510, OS_LOG_TYPE_ERROR))
        {
          sub_7C0D0(a3);
        }
      }

      else
      {
        LODWORD(v18) = 0;
        [objc_msgSend(a4 "value")];
        v11 = [(BTHearingHealthObject *)self audioDevice];
        v12.n128_u32[0] = v18;
        (*(*v11 + 1392))(v12);
      }
    }

    else
    {
      v10 = [a4 UUID];
      if ([v10 isEqual:{+[CBUUID UUIDWithString:](CBUUID, "UUIDWithString:", CBUUIDDosimetryVolumeCurveCharacteristicString)}])
      {
        if (a5)
        {
          if (os_log_type_enabled(qword_D8510, OS_LOG_TYPE_ERROR))
          {
            sub_7BF24(a3);
          }
        }

        else if ([objc_msgSend(a4 "value")] < 0x44)
        {
          if (os_log_type_enabled(qword_D8510, OS_LOG_TYPE_ERROR))
          {
            sub_7BFA8(a3);
          }
        }

        else
        {
          v28 = 0;
          memset(v27, 0, sizeof(v27));
          v13 = v27;
          [objc_msgSend(a4 "value")];
          v14 = 0;
          v26 = 0;
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v18 = 0u;
          v19 = 0u;
          do
          {
            *(&v18 + v14) = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloat32Type, v13);
            v14 += 8;
            v13 = (v13 + 4);
          }

          while (v14 != 136);
          v15 = CFArrayCreate(kCFAllocatorDefault, &v18, 17, &kCFTypeArrayCallBacks);
          (*(*[(BTHearingHealthObject *)self audioDevice:v18]+ 1400))();
          for (i = 0; i != 136; i += 8)
          {
            v17 = *(&v18 + i);
            if (v17)
            {
              CFRelease(v17);
            }
          }

          if (v15)
          {
            CFRelease(v15);
          }
        }
      }
    }
  }
}

- (float)getRegionalDosimetryVolumeCurve:(unsigned __int8)a3 productID:(unsigned int)a4
{
  v4 = &dword_B73A0;
  v5 = &unk_B74B0;
  v6 = &unk_B73E4;
  if (a4 <= 8197)
  {
    if (a3)
    {
      v6 = &unk_B74B0;
    }

    if (a4 == 8197)
    {
      v4 = v6;
    }

    if (a4 == 8195)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v7 = &unk_B746C;
    if (a3)
    {
      v6 = &unk_B7428;
    }

    else
    {
      v7 = &unk_B73E4;
      v5 = &unk_B73E4;
    }

    if (a4 == 8201)
    {
      v4 = v6;
    }

    if (a4 == 8208)
    {
      v4 = v5;
    }

    if (a4 == 8198)
    {
      return v7;
    }

    else
    {
      return v4;
    }
  }
}

@end