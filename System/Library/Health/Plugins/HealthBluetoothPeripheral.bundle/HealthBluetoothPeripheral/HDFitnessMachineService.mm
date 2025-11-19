@interface HDFitnessMachineService
+ (id)implementedProperties;
+ (unint64_t)typeFromAdvertisementData:(id)a3;
- (BOOL)processAdvertisementData:(id)a3;
- (id)servicesInProfile;
- (void)peripheral:(id)a3 didDiscoverCharacteristic:(id)a4;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 updateTime:(id)a5 error:(id)a6;
- (void)readProperty:(id)a3;
@end

@implementation HDFitnessMachineService

+ (id)implementedProperties
{
  v4 = @"fitnessMachineType";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)readProperty:(id)a3
{
  v6 = a3;
  if ([v6 isEqual:@"fitnessMachineType"])
  {
    v4 = [(HDHealthService *)self healthPeripheral];
    v5 = [NSNumber numberWithUnsignedInteger:self->_machineType];
    [v4 service:self didReadProperty:v6 value:v5 error:0];
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

- (void)peripheral:(id)a3 didDiscoverCharacteristic:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = sub_9A04();
  v7 = [v5 UUID];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8 && ([v5 properties] & 0x10) != 0)
  {
    [v9 setNotifyValue:1 forCharacteristic:v5];
  }
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 updateTime:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    _HKInitializeLogging();
    v14 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      v28 = 2114;
      v29 = v13;
      _os_log_error_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "Error on characteristic update for peripheral: %@ characteristic: %@; %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v15 = sub_9A04();
    v16 = [v11 UUID];
    v17 = [v15 objectForKeyedSubscript:v16];

    if (v17)
    {
      v18 = [v11 value];
      v23 = 0;
      v19 = [v17 buildWithBinaryValue:v18 updateTime:v12 error:&v23];
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
          v25 = v10;
          v26 = 2112;
          v27 = v11;
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
        sub_2BCE0(v21, v11);
      }
    }
  }
}

+ (unint64_t)typeFromAdvertisementData:(id)a3
{
  v3 = a3;
  v10 = 0;
  if ([v3 length] >= 3)
  {
    v4 = 1;
    [v3 getBytes:&v10 range:{1, 2}];
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

- (BOOL)processAdvertisementData:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() typeFromAdvertisementData:v4];
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
      sub_2BD88(v4, v7);
    }
  }

  return v6 != 0;
}

@end