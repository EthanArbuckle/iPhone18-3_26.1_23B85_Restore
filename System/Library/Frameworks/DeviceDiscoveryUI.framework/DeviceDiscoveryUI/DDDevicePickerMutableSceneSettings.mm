@interface DDDevicePickerMutableSceneSettings
- (NSString)serviceIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setServiceIdentifier:(id)identifier;
@end

@implementation DDDevicePickerMutableSceneSettings

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DDDevicePickerSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (NSString)serviceIdentifier
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:18492849];

  return v3;
}

- (void)setServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:identifierCopy forSetting:18492849];
}

@end