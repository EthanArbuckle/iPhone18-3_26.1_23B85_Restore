@interface CPUIMutableTemplateApplicationSceneSettings
- (NSNumber)frameRateLimit;
- (OS_xpc_object)endpoint;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)mapStyle;
- (void)setEndpoint:(id)a3;
- (void)setFrameRateLimit:(id)a3;
- (void)setMapStyle:(int64_t)a3;
@end

@implementation CPUIMutableTemplateApplicationSceneSettings

- (OS_xpc_object)endpoint
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1893182282];

  return v3;
}

- (void)setEndpoint:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:1893182282];
}

- (int64_t)mapStyle
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1893182283];

  v4 = [v3 integerValue];
  return v4;
}

- (void)setMapStyle:(int64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:1893182283];
}

- (NSNumber)frameRateLimit
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1893182284];

  return v3;
}

- (void)setFrameRateLimit:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:1893182284];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CPUITemplateApplicationSceneSettings allocWithZone:a3];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end