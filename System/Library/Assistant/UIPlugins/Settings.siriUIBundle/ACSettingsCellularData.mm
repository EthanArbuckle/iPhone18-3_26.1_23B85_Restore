@interface ACSettingsCellularData
- (ACSettingsCellularData)init;
@end

@implementation ACSettingsCellularData

- (ACSettingsCellularData)init
{
  v7.receiver = self;
  v7.super_class = ACSettingsCellularData;
  v3 = [(ACSettingsCellularData *)&v7 init];
  if (v3)
  {
    v4 = ACSettingsLocalizedString(@"SETTING_CELLULAR_DATA");
    name = v3->super.super._name;
    v3->super.super._name = v4;

    v3->super._settingsDetailClass = objc_opt_class();
  }

  if ((+[PSCellularDataSettingsDetail deviceSupportsCellularData]& 1) == 0)
  {
    sub_41D0(a2, v3);
  }

  return v3;
}

@end