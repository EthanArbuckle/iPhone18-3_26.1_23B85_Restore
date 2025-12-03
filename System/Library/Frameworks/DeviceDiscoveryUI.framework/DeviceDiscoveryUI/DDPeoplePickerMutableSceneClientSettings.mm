@interface DDPeoplePickerMutableSceneClientSettings
- (id)copyWithZone:(_NSZone *)zone;
- (void)setConnectedDeviceUUID:(id)d;
@end

@implementation DDPeoplePickerMutableSceneClientSettings

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DDPeoplePickerSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (void)setConnectedDeviceUUID:(id)d
{
  dCopy = d;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:dCopy forSetting:18492847];
}

@end