@interface AFUIMutableSceneClientSettings
- (id)copyWithZone:(_NSZone *)a3;
- (unsigned)clientWindowContextID;
- (void)setClientWindowContextID:(unsigned int)a3;
@end

@implementation AFUIMutableSceneClientSettings

- (void)setClientWindowContextID:(unsigned int)a3
{
  v3 = *&a3;
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  [v5 setObject:v4 forSetting:2000];
}

- (unsigned)clientWindowContextID
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:2000];
  v4 = [v3 intValue];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AFUISceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end