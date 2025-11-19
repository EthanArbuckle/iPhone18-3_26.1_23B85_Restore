@interface CPUITemplateApplicationSceneSettings
- (NSNumber)frameRateLimit;
- (OS_xpc_object)endpoint;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)mapStyle;
@end

@implementation CPUITemplateApplicationSceneSettings

- (OS_xpc_object)endpoint
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1893182282];

  return v3;
}

- (int64_t)mapStyle
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1893182283];

  v4 = [v3 integerValue];
  return v4;
}

- (NSNumber)frameRateLimit
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1893182284];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CPUIMutableTemplateApplicationSceneSettings allocWithZone:a3];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end