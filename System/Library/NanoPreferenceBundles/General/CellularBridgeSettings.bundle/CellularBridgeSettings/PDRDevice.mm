@interface PDRDevice
+ (id)activeDevice;
- (BOOL)hasHomeButton;
- (BOOL)isCellularSeries3;
- (BOOL)isRunningInternalBuild;
@end

@implementation PDRDevice

- (BOOL)hasHomeButton
{
  v2 = [(PDRDevice *)self valueForProperty:PDRDevicePropertyKeyHomeButtonType];
  integerValue = [v2 integerValue];

  return integerValue != &dword_0 + 2;
}

- (BOOL)isRunningInternalBuild
{
  if (qword_22B38 != -1)
  {
    sub_E120();
  }

  return byte_22B30;
}

- (BOOL)isCellularSeries3
{
  v2 = [(PDRDevice *)self valueForProperty:PDRDevicePropertyKeyProductType];
  stringValue = [v2 stringValue];

  v4 = ![stringValue caseInsensitiveCompare:{@"watch3, 1"}] || !objc_msgSend(stringValue, "caseInsensitiveCompare:", @"watch3,2");
  return v4;
}

+ (id)activeDevice
{
  v2 = +[PDRRegistry sharedInstance];
  v3 = [v2 getDevicesExcluding:4];
  firstObject = [v3 firstObject];

  return firstObject;
}

@end