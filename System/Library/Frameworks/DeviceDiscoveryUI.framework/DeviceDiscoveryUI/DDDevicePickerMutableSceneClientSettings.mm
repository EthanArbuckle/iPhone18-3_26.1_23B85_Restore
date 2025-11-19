@interface DDDevicePickerMutableSceneClientSettings
- (NSUUID)agentUUID;
- (NSUUID)endpointUUID;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAgentUUID:(id)a3;
- (void)setEndpointUUID:(id)a3;
@end

@implementation DDDevicePickerMutableSceneClientSettings

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DDDevicePickerSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (NSUUID)endpointUUID
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:18492847];

  return v3;
}

- (void)setEndpointUUID:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:18492847];
}

- (NSUUID)agentUUID
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:18492848];

  return v3;
}

- (void)setAgentUUID:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:18492848];
}

@end