@interface ACSettingAssistiveTouchSetting
- (ACSettingAssistiveTouchSetting)init;
@end

@implementation ACSettingAssistiveTouchSetting

- (ACSettingAssistiveTouchSetting)init
{
  v6.receiver = self;
  v6.super_class = ACSettingAssistiveTouchSetting;
  v2 = [(ACSettingAssistiveTouchSetting *)&v6 init];
  if (v2)
  {
    v3 = ACSettingsLocalizedString(@"SETTING_ASSISTIVETOUCH");
    name = v2->super.super._name;
    v2->super.super._name = v3;

    v2->super._settingsDetailClass = objc_opt_class();
  }

  return v2;
}

@end