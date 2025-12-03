@interface DDPeoplePickerSceneClientSettings
- (NSUUID)connectedDeviceUUID;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation DDPeoplePickerSceneClientSettings

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DDPeoplePickerMutableSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (NSUUID)connectedDeviceUUID
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:18492847];

  return v3;
}

@end