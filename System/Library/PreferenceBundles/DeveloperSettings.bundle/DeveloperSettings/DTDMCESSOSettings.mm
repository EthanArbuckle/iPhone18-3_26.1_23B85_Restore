@interface DTDMCESSOSettings
+ (BOOL)isAvailable;
- (DTDMCESSOSettings)init;
@end

@implementation DTDMCESSOSettings

+ (BOOL)isAvailable
{
  v2 = sub_19F4C();
  v3 = v2 != 0;

  return v3;
}

- (DTDMCESSOSettings)init
{
  v3 = sub_19F4C();
  v4 = [v3 classNamed:@"DMCESSOSettingsViewController"];

  v5 = objc_alloc_init(v4);
  return v5;
}

@end