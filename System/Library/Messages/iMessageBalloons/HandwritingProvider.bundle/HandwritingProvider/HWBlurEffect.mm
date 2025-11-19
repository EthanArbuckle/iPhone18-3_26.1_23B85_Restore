@interface HWBlurEffect
+ (int64_t)_backdropStyleForCurrentDevice;
- (id)effectSettings;
@end

@implementation HWBlurEffect

- (id)effectSettings
{
  v2 = [objc_opt_class() _backdropStyleForCurrentDevice];

  return [_UIBackdropViewSettings settingsForPrivateStyle:v2];
}

+ (int64_t)_backdropStyleForCurrentDevice
{
  if (qword_32260 != -1)
  {
    sub_1392C();
  }

  return qword_32258;
}

@end