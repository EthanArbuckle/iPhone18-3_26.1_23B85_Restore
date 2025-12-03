@interface CPUITemplateApplicationSceneSettings
- (NSNumber)frameRateLimit;
- (OS_xpc_object)endpoint;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)mapStyle;
@end

@implementation CPUITemplateApplicationSceneSettings

- (OS_xpc_object)endpoint
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1893182282];

  return v3;
}

- (int64_t)mapStyle
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1893182283];

  integerValue = [v3 integerValue];
  return integerValue;
}

- (NSNumber)frameRateLimit
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1893182284];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CPUIMutableTemplateApplicationSceneSettings allocWithZone:zone];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end