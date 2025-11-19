@interface ACSettingsBluetoothSetting
- (ACSettingsBluetoothSetting)init;
@end

@implementation ACSettingsBluetoothSetting

- (ACSettingsBluetoothSetting)init
{
  v6.receiver = self;
  v6.super_class = ACSettingsBluetoothSetting;
  v2 = [(ACSettingsBluetoothSetting *)&v6 init];
  if (v2)
  {
    v3 = ACSettingsLocalizedString(@"SETTING_BLUETOOTH");
    name = v2->super.super._name;
    v2->super.super._name = v3;

    v2->super._settingsDetailClass = objc_opt_class();
  }

  return v2;
}

@end