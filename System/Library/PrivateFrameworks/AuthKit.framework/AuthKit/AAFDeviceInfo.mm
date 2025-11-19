@interface AAFDeviceInfo
+ (BOOL)isDeviceInDiagnosticMode;
@end

@implementation AAFDeviceInfo

+ (BOOL)isDeviceInDiagnosticMode
{
  v4 = &unk_100374978;
  location = 0;
  objc_storeStrong(&location, &stru_1003258E0);
  if (*v4 != -1)
  {
    dispatch_once(v4, location);
  }

  objc_storeStrong(&location, 0);
  return byte_100374970 & 1;
}

@end