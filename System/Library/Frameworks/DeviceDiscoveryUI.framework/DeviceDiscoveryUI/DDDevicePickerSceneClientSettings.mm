@interface DDDevicePickerSceneClientSettings
- (NSUUID)agentUUID;
- (NSUUID)endpointUUID;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation DDDevicePickerSceneClientSettings

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DDDevicePickerMutableSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (NSUUID)endpointUUID
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:18492847];

  return v3;
}

- (NSUUID)agentUUID
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:18492848];

  return v3;
}

@end