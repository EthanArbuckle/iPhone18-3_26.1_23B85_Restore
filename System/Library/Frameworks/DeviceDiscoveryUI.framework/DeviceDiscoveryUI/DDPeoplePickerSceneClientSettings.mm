@interface DDPeoplePickerSceneClientSettings
- (NSUUID)connectedDeviceUUID;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation DDPeoplePickerSceneClientSettings

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DDPeoplePickerMutableSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (NSUUID)connectedDeviceUUID
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:18492847];

  return v3;
}

@end