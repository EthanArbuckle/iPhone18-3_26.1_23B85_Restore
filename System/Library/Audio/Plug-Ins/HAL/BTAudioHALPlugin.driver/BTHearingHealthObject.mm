@interface BTHearingHealthObject
- (float)getRegionalDosimetryVolumeCurve:(unsigned __int8)curve productID:(unsigned int)d;
- (id)centralManagerStateString;
- (void)centralManager:(id)manager connectionEventDidOccur:(int64_t)occur forPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManagerDidUpdateState:(id)state;
- (void)connectPeripheral:(id)peripheral;
- (void)dealloc;
- (void)disconnectPeripheral:(id)peripheral force:(BOOL)force;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)readData:(id)data;
- (void)registerService;
- (void)writeData:(id)data forCharacteristic:(id)characteristic;
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

- (void)connectPeripheral:(id)peripheral
{
  if ([(CBCentralManager *)[(BTHearingHealthObject *)self centralManager] state]== &dword_4 + 1)
  {
    centralManager = [(BTHearingHealthObject *)self centralManager];

    [(CBCentralManager *)centralManager connectPeripheral:peripheral options:0];
  }
}

- (void)disconnectPeripheral:(id)peripheral force:(BOOL)force
{
  forceCopy = force;
  if (-[CBCentralManager state](-[BTHearingHealthObject centralManager](self, "centralManager"), "state") == &dword_4 + 1 && [peripheral state])
  {
    v7 = &__kCFBooleanTrue;
    if (!forceCopy)
    {
      v7 = &__kCFBooleanFalse;
    }

    v8[0] = CBCancelPeripheralConnectionOptionForce;
    v8[1] = CBCancelPeripheralConnectionOptionDoNotAutoConnectBuiltInServices;
    v9[0] = v7;
    v9[1] = &__kCFBooleanFalse;
    [(CBCentralManager *)[(BTHearingHealthObject *)self centralManager] cancelPeripheralConnection:peripheral options:[NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2]];
  }
}

- (void)centralManagerDidUpdateState:(id)state
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

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  if ([objc_msgSend(peripheral identifier])
  {
    v6 = qword_D8510;
    if (os_log_type_enabled(qword_D8510, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      uuid = [(BTHearingHealthObject *)self uuid];
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Connected AHPS peripheral - UUID=%@", &v7, 0xCu);
    }

    [peripheral setDelegate:self];
    [(CBPeripheral *)[(BTHearingHealthObject *)self peripheral] discoverServices:0];
  }
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  services = [peripheral services];
  v6 = [services countByEnumeratingWithState:&v14 objects:v20 count:16];
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
          objc_enumerationMutation(services);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([objc_msgSend(v11 "UUID")])
        {
          v12 = qword_D8510;
          if (os_log_type_enabled(qword_D8510, OS_LOG_TYPE_DEFAULT))
          {
            uuid = [(BTHearingHealthObject *)self uuid];
            *buf = 138412290;
            v19 = uuid;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Discovered AHPS - UUID=%@", buf, 0xCu);
          }

          [(CBPeripheral *)[(BTHearingHealthObject *)self peripheral] discoverCharacteristics:0 forService:v11];
          return;
        }
      }

      v7 = [services countByEnumeratingWithState:&v14 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  characteristics = [service characteristics];
  v7 = [characteristics countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(characteristics);
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

      v8 = [characteristics countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  v6 = qword_D8510;
  if (os_log_type_enabled(qword_D8510, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    uuid = [(BTHearingHealthObject *)self uuid];
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Failed to connect AHPS peripheral - UUID=%@", &v7, 0xCu);
  }

  [(BTHearingHealthObject *)self setPeripheral:0];
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  v6 = qword_D8510;
  if (os_log_type_enabled(qword_D8510, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    uuid = [(BTHearingHealthObject *)self uuid];
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Disconnected AHPS peripheral - UUID=%@", &v7, 0xCu);
  }

  [(BTHearingHealthObject *)self setPeripheral:0];
}

- (void)centralManager:(id)manager connectionEventDidOccur:(int64_t)occur forPeripheral:(id)peripheral
{
  if (occur)
  {
    if (occur == 1 && [objc_msgSend(peripheral identifier] && !-[BTHearingHealthObject peripheral](self, "peripheral"))
    {
      [(BTHearingHealthObject *)self setPeripheral:peripheral];

      [(BTHearingHealthObject *)self connectPeripheral:peripheral];
    }
  }

  else
  {

    [(BTHearingHealthObject *)self disconnectPeripheral:peripheral force:?];
  }
}

- (id)centralManagerStateString
{
  state = [(CBCentralManager *)[(BTHearingHealthObject *)self centralManager] state];
  if ((state - 1) > 9)
  {
    return @"unknown";
  }

  else
  {
    return off_AF9D8[(state - 1)];
  }
}

- (void)writeData:(id)data forCharacteristic:(id)characteristic
{
  peripheral = [(BTHearingHealthObject *)self peripheral];

  [(CBPeripheral *)peripheral writeValue:data forCharacteristic:characteristic type:1];
}

- (void)readData:(id)data
{
  peripheral = [(BTHearingHealthObject *)self peripheral];

  [(CBPeripheral *)peripheral readValueForCharacteristic:data];
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  if ([(BTHearingHealthObject *)self audioDevice])
  {
    uUID = [characteristic UUID];
    if ([uUID isEqual:{+[CBUUID UUIDWithString:](CBUUID, "UUIDWithString:", CBUUIDDosimetrySensitivityCharacteristicString)}])
    {
      if (error)
      {
        if (os_log_type_enabled(qword_D8510, OS_LOG_TYPE_ERROR))
        {
          sub_7C04C(peripheral);
        }
      }

      else if ([objc_msgSend(characteristic "value")] < 4)
      {
        if (os_log_type_enabled(qword_D8510, OS_LOG_TYPE_ERROR))
        {
          sub_7C0D0(peripheral);
        }
      }

      else
      {
        LODWORD(v18) = 0;
        [objc_msgSend(characteristic "value")];
        audioDevice = [(BTHearingHealthObject *)self audioDevice];
        v12.n128_u32[0] = v18;
        (*(*audioDevice + 1392))(v12);
      }
    }

    else
    {
      uUID2 = [characteristic UUID];
      if ([uUID2 isEqual:{+[CBUUID UUIDWithString:](CBUUID, "UUIDWithString:", CBUUIDDosimetryVolumeCurveCharacteristicString)}])
      {
        if (error)
        {
          if (os_log_type_enabled(qword_D8510, OS_LOG_TYPE_ERROR))
          {
            sub_7BF24(peripheral);
          }
        }

        else if ([objc_msgSend(characteristic "value")] < 0x44)
        {
          if (os_log_type_enabled(qword_D8510, OS_LOG_TYPE_ERROR))
          {
            sub_7BFA8(peripheral);
          }
        }

        else
        {
          v28 = 0;
          memset(v27, 0, sizeof(v27));
          v13 = v27;
          [objc_msgSend(characteristic "value")];
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

- (float)getRegionalDosimetryVolumeCurve:(unsigned __int8)curve productID:(unsigned int)d
{
  v4 = &dword_B73A0;
  v5 = &unk_B74B0;
  v6 = &unk_B73E4;
  if (d <= 8197)
  {
    if (curve)
    {
      v6 = &unk_B74B0;
    }

    if (d == 8197)
    {
      v4 = v6;
    }

    if (d == 8195)
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
    if (curve)
    {
      v6 = &unk_B7428;
    }

    else
    {
      v7 = &unk_B73E4;
      v5 = &unk_B73E4;
    }

    if (d == 8201)
    {
      v4 = v6;
    }

    if (d == 8208)
    {
      v4 = v5;
    }

    if (d == 8198)
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