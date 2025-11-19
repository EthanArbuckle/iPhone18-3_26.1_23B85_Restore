@interface ACSettingsNoiseCancellation
- (ACSettingsNoiseCancellation)init;
@end

@implementation ACSettingsNoiseCancellation

- (ACSettingsNoiseCancellation)init
{
  v6.receiver = self;
  v6.super_class = ACSettingsNoiseCancellation;
  v2 = [(ACSettingsNoiseCancellation *)&v6 init];
  if (v2)
  {
    v3 = ACSettingsLocalizedStringWithTable(@"SETTING_NOISE_CANCELLATION", @"Localizable-b298");
    name = v2->super.super._name;
    v2->super.super._name = v3;

    v2->super._settingsDetailClass = objc_opt_class();
  }

  return v2;
}

@end