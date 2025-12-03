@interface HDEurotasService
- (id)servicesInProfile;
- (void)peripheral:(id)peripheral didDiscoverCharacteristic:(id)characteristic;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic updateTime:(id)time error:(id)error;
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

- (void)peripheral:(id)peripheral didDiscoverCharacteristic:(id)characteristic
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  uUID = [characteristicCopy UUID];
  v9 = +[HDEurotasData uuid];
  v10 = [uUID isEqual:v9];

  if (v10)
  {
    if (([characteristicCopy properties] & 4) != 0)
    {
      [(HDHealthService *)self setWritableCharacteristic:characteristicCopy];
    }

    else
    {
      _HKInitializeLogging();
      v11 = HKLogServices;
      if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_ERROR))
      {
        sub_3A328(characteristicCopy, v11);
      }
    }
  }

  else
  {
    v12 = +[HDEnhancedFTMSData uuid];
    v13 = [uUID isEqual:v12];

    if (v13)
    {
      [peripheralCopy setNotifyValue:1 forCharacteristic:characteristicCopy];
    }
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
    uUID = [characteristicCopy UUID];
    v16 = +[HDEnhancedFTMSData uuid];
    v17 = [uUID isEqual:v16];

    if (v17)
    {
      value = [characteristicCopy value];
      v23 = 0;
      v19 = [(HDHealthServiceCharacteristic *)HDEnhancedFTMSData buildWithBinaryValue:value updateTime:timeCopy error:&v23];
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
      if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_ERROR))
      {
        sub_3A3A0(v21, characteristicCopy);
      }
    }
  }
}

@end