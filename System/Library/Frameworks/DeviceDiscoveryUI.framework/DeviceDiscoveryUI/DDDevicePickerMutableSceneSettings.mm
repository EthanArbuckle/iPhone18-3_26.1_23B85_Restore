@interface DDDevicePickerMutableSceneSettings
- (NSString)serviceIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setServiceIdentifier:(id)a3;
@end

@implementation DDDevicePickerMutableSceneSettings

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DDDevicePickerSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (NSString)serviceIdentifier
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:18492849];

  return v3;
}

- (void)setServiceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:18492849];
}

@end