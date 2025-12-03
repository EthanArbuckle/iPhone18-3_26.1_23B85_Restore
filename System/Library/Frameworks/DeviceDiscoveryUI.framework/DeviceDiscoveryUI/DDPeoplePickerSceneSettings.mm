@interface DDPeoplePickerSceneSettings
- (BOOL)isDedicatedDevicePicker;
- (BOOL)isMicOnlyDevicePicker;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation DDPeoplePickerSceneSettings

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DDPeoplePickerMutableSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (BOOL)isDedicatedDevicePicker
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:18492850];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)isMicOnlyDevicePicker
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:18492851];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

@end