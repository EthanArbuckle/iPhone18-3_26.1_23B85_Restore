@interface HKRemoteFeatureAvailabilityDeviceClassEqualsRule
- (BOOL)evaluate;
- (void)processUserInfo:(id)a3;
@end

@implementation HKRemoteFeatureAvailabilityDeviceClassEqualsRule

- (void)processUserInfo:(id)a3
{
  v4 = [a3 hk_safeStringIfExistsForKeyPath:@"DeviceClass" error:0];
  deviceClass = self->_deviceClass;
  self->_deviceClass = v4;

  MEMORY[0x1EEE66BB8](v4, deviceClass);
}

- (BOOL)evaluate
{
  if (!self->_deviceClass)
  {
    return 0;
  }

  v2 = self;
  v3 = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  v4 = [v3 currentDeviceClass];
  LOBYTE(v2) = [v4 isEqualToString:v2->_deviceClass];

  return v2;
}

@end