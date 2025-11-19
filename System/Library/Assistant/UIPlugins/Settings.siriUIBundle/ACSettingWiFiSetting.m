@interface ACSettingWiFiSetting
- (ACSettingWiFiSetting)init;
@end

@implementation ACSettingWiFiSetting

- (ACSettingWiFiSetting)init
{
  v7.receiver = self;
  v7.super_class = ACSettingWiFiSetting;
  v2 = [(ACSettingWiFiSetting *)&v7 init];
  if (v2)
  {
    if (MGGetBoolAnswer())
    {
      v3 = @"SETTING_WLAN";
    }

    else
    {
      v3 = @"SETTING_WIFI";
    }

    v4 = ACSettingsLocalizedString(v3);
    name = v2->super.super._name;
    v2->super.super._name = v4;

    v2->super._settingsDetailClass = objc_opt_class();
  }

  return v2;
}

@end