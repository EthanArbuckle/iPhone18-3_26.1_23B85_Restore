@interface HKRemoteFeatureAvailabilityDeviceClassEqualsRule
- (BOOL)evaluate;
- (void)processUserInfo:(id)info;
@end

@implementation HKRemoteFeatureAvailabilityDeviceClassEqualsRule

- (void)processUserInfo:(id)info
{
  v4 = [info hk_safeStringIfExistsForKeyPath:@"DeviceClass" error:0];
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

  selfCopy = self;
  dataSource = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  currentDeviceClass = [dataSource currentDeviceClass];
  LOBYTE(selfCopy) = [currentDeviceClass isEqualToString:selfCopy->_deviceClass];

  return selfCopy;
}

@end