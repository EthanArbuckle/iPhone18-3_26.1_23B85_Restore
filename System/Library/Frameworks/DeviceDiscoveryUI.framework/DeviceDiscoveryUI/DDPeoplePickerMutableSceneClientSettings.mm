@interface DDPeoplePickerMutableSceneClientSettings
- (id)copyWithZone:(_NSZone *)a3;
- (void)setConnectedDeviceUUID:(id)a3;
@end

@implementation DDPeoplePickerMutableSceneClientSettings

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DDPeoplePickerSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (void)setConnectedDeviceUUID:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:18492847];
}

@end