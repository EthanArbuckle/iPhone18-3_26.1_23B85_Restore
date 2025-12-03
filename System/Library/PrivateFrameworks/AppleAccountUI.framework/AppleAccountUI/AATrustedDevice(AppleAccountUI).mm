@interface AATrustedDevice(AppleAccountUI)
- (id)_deviceLocatorKey;
- (id)aaui_localizedDeviceLocatorLabel;
@end

@implementation AATrustedDevice(AppleAccountUI)

- (id)_deviceLocatorKey
{
  v1 = MEMORY[0x1E696AEC0];
  deviceQualifiedClass = [self deviceQualifiedClass];
  uppercaseString = [deviceQualifiedClass uppercaseString];
  v4 = [v1 stringWithFormat:@"DEVICE_LOCATOR_%@", uppercaseString];

  return v4;
}

- (id)aaui_localizedDeviceLocatorLabel
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  _deviceLocatorKey = [self _deviceLocatorKey];
  v4 = [v2 localizedStringForKey:@"DEVICE_LOCATOR_UNKNOWN" value:0 table:0];
  v5 = [v2 localizedStringForKey:_deviceLocatorKey value:v4 table:0];

  return v5;
}

@end