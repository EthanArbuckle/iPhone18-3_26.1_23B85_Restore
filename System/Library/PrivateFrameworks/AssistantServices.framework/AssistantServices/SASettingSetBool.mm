@interface SASettingSetBool
- (id)_ad_setting;
- (id)_ad_settingsRequestRepresentation;
@end

@implementation SASettingSetBool

- (id)_ad_settingsRequestRepresentation
{
  v3 = objc_alloc_init(AFSetSettingsRequest);
  _ad_setting = [(SASettingSetBool *)self _ad_setting];
  v7 = _ad_setting;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  [v3 _setSettings:v5];

  [v3 _setApplyChanges:{-[SASettingSetBool dryRun](self, "dryRun") ^ 1}];

  return v3;
}

- (id)_ad_setting
{
  v3 = objc_alloc_init(STSetting);
  [v3 setType:{-[SASettingSetBool _ad_settingType](self, "_ad_settingType")}];
  v4 = [NSNumber numberWithBool:[(SASettingSetBool *)self value]];
  [v3 setValue:v4];

  return v3;
}

@end