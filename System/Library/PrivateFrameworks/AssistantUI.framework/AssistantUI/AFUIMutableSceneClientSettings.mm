@interface AFUIMutableSceneClientSettings
- (id)copyWithZone:(_NSZone *)zone;
- (unsigned)clientWindowContextID;
- (void)setClientWindowContextID:(unsigned int)d;
@end

@implementation AFUIMutableSceneClientSettings

- (void)setClientWindowContextID:(unsigned int)d
{
  v3 = *&d;
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  [otherSettings setObject:v4 forSetting:2000];
}

- (unsigned)clientWindowContextID
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2000];
  intValue = [v3 intValue];

  return intValue;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AFUISceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end