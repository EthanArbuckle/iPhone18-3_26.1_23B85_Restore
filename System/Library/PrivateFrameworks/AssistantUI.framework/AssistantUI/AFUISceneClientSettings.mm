@interface AFUISceneClientSettings
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unsigned)clientWindowContextID;
@end

@implementation AFUISceneClientSettings

- (unsigned)clientWindowContextID
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2000];
  intValue = [v3 intValue];

  return intValue;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [AFUIMutableSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end