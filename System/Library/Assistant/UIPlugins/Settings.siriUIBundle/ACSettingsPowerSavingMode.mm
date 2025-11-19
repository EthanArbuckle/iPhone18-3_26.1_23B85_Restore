@interface ACSettingsPowerSavingMode
- (ACSettingsPowerSavingMode)init;
@end

@implementation ACSettingsPowerSavingMode

- (ACSettingsPowerSavingMode)init
{
  v6.receiver = self;
  v6.super_class = ACSettingsPowerSavingMode;
  v2 = [(ACSettingsPowerSavingMode *)&v6 init];
  if (v2)
  {
    v3 = ACSettingsLocalizedString(@"SETTING_POWERSAVING");
    name = v2->super.super._name;
    v2->super.super._name = v3;

    v2->super._settingsDetailClass = objc_opt_class();
  }

  return v2;
}

@end