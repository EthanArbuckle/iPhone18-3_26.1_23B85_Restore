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
  v3 = [v2 integerValue];

  return v3 != &dword_0 + 2;
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
  v3 = [v2 stringValue];

  v4 = ![v3 caseInsensitiveCompare:{@"watch3, 1"}] || !objc_msgSend(v3, "caseInsensitiveCompare:", @"watch3,2");
  return v4;
}

+ (id)activeDevice
{
  v2 = +[PDRRegistry sharedInstance];
  v3 = [v2 getDevicesExcluding:4];
  v4 = [v3 firstObject];

  return v4;
}

@end