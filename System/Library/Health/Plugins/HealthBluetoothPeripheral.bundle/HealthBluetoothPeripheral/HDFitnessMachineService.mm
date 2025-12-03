@interface HDFitnessMachineService
+ (id)implementedProperties;
+ (unint64_t)typeFromAdvertisementData:(id)data;
- (BOOL)processAdvertisementData:(id)data;
- (id)servicesInProfile;
- (void)peripheral:(id)peripheral didDiscoverCharacteristic:(id)characteristic;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic updateTime:(id)time error:(id)error;
- (void)readProperty:(id)property;
@end

@implementation HDFitnessMachineService

+ (id)implementedProperties
{
  v4 = @"fitnessMachineType";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)readProperty:(id)property
{
  propertyCopy = property;
  if ([propertyCopy isEqual:@"fitnessMachineType"])
  {
    healthPeripheral = [(HDHealthService *)self healthPeripheral];
    v5 = [NSNumber numberWithUnsignedInteger:self->_machineType];
    [healthPeripheral service:self didReadProperty:propertyCopy value:v5 error:0];
  }
}

- (id)servicesInProfile
{
  v2 = +[HDDeviceInformationService serviceUUID];
  v6[0] = v2;
  v3 = +[HDEurotasService serviceUUID];
  v6[1] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:2];

  return v4;
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristic:(id)characteristic
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  v6 = sub_9A04();
  uUID = [characteristicCopy UUID];
  v8 = [v6 objectForKeyedSubscript:uUID];

  if (v8 && ([characteristicCopy properties] & 0x10) != 0)
  {
    [peripheralCopy setNotifyValue:1 forCharacteristic:characteristicCopy];
  }
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic updateTime:(id)time error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  timeCopy = time;
  errorCopy = error;
  if (errorCopy)
  {
    _HKInitializeLogging();
    v14 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v25 = peripheralCopy;
      v26 = 2112;
      v27 = characteristicCopy;
      v28 = 2114;
      v29 = errorCopy;
      _os_log_error_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "Error on characteristic update for peripheral: %@ characteristic: %@; %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v15 = sub_9A04();
    uUID = [characteristicCopy UUID];
    v17 = [v15 objectForKeyedSubscript:uUID];

    if (v17)
    {
      value = [characteristicCopy value];
      v23 = 0;
      v19 = [v17 buildWithBinaryValue:value updateTime:timeCopy error:&v23];
      v20 = v23;

      if (v19)
      {
        [(HDHealthService *)self characteristicDataReceived:v19];
      }

      else
      {
        _HKInitializeLogging();
        v22 = HKLogServices;
        if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v25 = peripheralCopy;
          v26 = 2112;
          v27 = characteristicCopy;
          v28 = 2114;
          v29 = v20;
          _os_log_error_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "Error handling characteristic update for peripheral: %@ characteristic: %@; %{public}@", buf, 0x20u);
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v21 = HKLogServices;
      if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEBUG))
      {
        sub_2BCE0(v21, characteristicCopy);
      }
    }
  }
}

+ (unint64_t)typeFromAdvertisementData:(id)data
{
  dataCopy = data;
  v10 = 0;
  if ([dataCopy length] >= 3)
  {
    v4 = 1;
    [dataCopy getBytes:&v10 range:{1, 2}];
    if ((v10 & 1) == 0)
    {
      v5 = 3;
      v6 = 4;
      v7 = 5;
      v8 = 6;
      if ((v10 & 0x20) == 0)
      {
        v8 = 0;
      }

      if ((v10 & 0x10) == 0)
      {
        v7 = v8;
      }

      if ((v10 & 8) == 0)
      {
        v6 = v7;
      }

      if ((v10 & 4) == 0)
      {
        v5 = v6;
      }

      if ((v10 & 2) != 0)
      {
        v4 = 2;
      }

      else
      {
        v4 = v5;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)processAdvertisementData:(id)data
{
  dataCopy = data;
  v5 = [objc_opt_class() typeFromAdvertisementData:dataCopy];
  v6 = v5;
  if (v5)
  {
    self->_machineType = v5;
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_ERROR))
    {
      sub_2BD88(dataCopy, v7);
    }
  }

  return v6 != 0;
}

@end