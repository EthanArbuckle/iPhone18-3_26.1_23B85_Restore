@interface HDEurotasService
- (id)servicesInProfile;
- (void)peripheral:(id)a3 didDiscoverCharacteristic:(id)a4;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 updateTime:(id)a5 error:(id)a6;
@end

@implementation HDEurotasService

- (id)servicesInProfile
{
  v2 = +[HDDeviceInformationService serviceUUID];
  v6[0] = v2;
  v3 = +[HDFitnessMachineService serviceUUID];
  v6[1] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:2];

  return v4;
}

- (void)peripheral:(id)a3 didDiscoverCharacteristic:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 UUID];
  v9 = +[HDEurotasData uuid];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    if (([v7 properties] & 4) != 0)
    {
      [(HDHealthService *)self setWritableCharacteristic:v7];
    }

    else
    {
      _HKInitializeLogging();
      v11 = HKLogServices;
      if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_ERROR))
      {
        sub_3A328(v7, v11);
      }
    }
  }

  else
  {
    v12 = +[HDEnhancedFTMSData uuid];
    v13 = [v8 isEqual:v12];

    if (v13)
    {
      [v6 setNotifyValue:1 forCharacteristic:v7];
    }
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
    v15 = [v11 UUID];
    v16 = +[HDEnhancedFTMSData uuid];
    v17 = [v15 isEqual:v16];

    if (v17)
    {
      v18 = [v11 value];
      v23 = 0;
      v19 = [(HDHealthServiceCharacteristic *)HDEnhancedFTMSData buildWithBinaryValue:v18 updateTime:v12 error:&v23];
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
      if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_ERROR))
      {
        sub_3A3A0(v21, v11);
      }
    }
  }
}

@end