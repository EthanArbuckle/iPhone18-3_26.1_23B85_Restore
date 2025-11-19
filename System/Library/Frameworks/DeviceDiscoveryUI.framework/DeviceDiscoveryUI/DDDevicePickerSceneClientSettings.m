@interface DDDevicePickerSceneClientSettings
- (NSUUID)agentUUID;
- (NSUUID)endpointUUID;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation DDDevicePickerSceneClientSettings

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DDDevicePickerMutableSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (NSUUID)endpointUUID
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:18492847];

  return v3;
}

- (NSUUID)agentUUID
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:18492848];

  return v3;
}

@end