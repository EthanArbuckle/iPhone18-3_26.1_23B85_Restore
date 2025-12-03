@interface CPUIMutableTemplateApplicationSceneSettings
- (NSNumber)frameRateLimit;
- (OS_xpc_object)endpoint;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)mapStyle;
- (void)setEndpoint:(id)endpoint;
- (void)setFrameRateLimit:(id)limit;
- (void)setMapStyle:(int64_t)style;
@end

@implementation CPUIMutableTemplateApplicationSceneSettings

- (OS_xpc_object)endpoint
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1893182282];

  return v3;
}

- (void)setEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:endpointCopy forSetting:1893182282];
}

- (int64_t)mapStyle
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1893182283];

  integerValue = [v3 integerValue];
  return integerValue;
}

- (void)setMapStyle:(int64_t)style
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:style];
  [otherSettings setObject:v4 forSetting:1893182283];
}

- (NSNumber)frameRateLimit
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1893182284];

  return v3;
}

- (void)setFrameRateLimit:(id)limit
{
  limitCopy = limit;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:limitCopy forSetting:1893182284];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CPUITemplateApplicationSceneSettings allocWithZone:zone];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end