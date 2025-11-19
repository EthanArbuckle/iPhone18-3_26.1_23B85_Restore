@interface AFUISceneClientSettings
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unsigned)clientWindowContextID;
@end

@implementation AFUISceneClientSettings

- (unsigned)clientWindowContextID
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:2000];
  v4 = [v3 intValue];

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [AFUIMutableSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end