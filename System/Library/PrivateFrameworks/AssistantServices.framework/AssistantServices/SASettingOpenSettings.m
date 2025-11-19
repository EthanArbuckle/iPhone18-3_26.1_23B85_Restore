@interface SASettingOpenSettings
- (id)_ad_settingsRequestRepresentation;
@end

@implementation SASettingOpenSettings

- (id)_ad_settingsRequestRepresentation
{
  v2 = [[AFShowSettingRequest alloc] _initWithSettingType:{-[SASettingOpenSettings _ad_settingType](self, "_ad_settingType")}];

  return v2;
}

@end