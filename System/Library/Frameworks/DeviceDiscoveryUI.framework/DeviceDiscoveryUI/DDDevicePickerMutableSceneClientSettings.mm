@interface DDDevicePickerMutableSceneClientSettings
- (NSUUID)agentUUID;
- (NSUUID)endpointUUID;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAgentUUID:(id)d;
- (void)setEndpointUUID:(id)d;
@end

@implementation DDDevicePickerMutableSceneClientSettings

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DDDevicePickerSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (NSUUID)endpointUUID
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:18492847];

  return v3;
}

- (void)setEndpointUUID:(id)d
{
  dCopy = d;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:dCopy forSetting:18492847];
}

- (NSUUID)agentUUID
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:18492848];

  return v3;
}

- (void)setAgentUUID:(id)d
{
  dCopy = d;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:dCopy forSetting:18492848];
}

@end