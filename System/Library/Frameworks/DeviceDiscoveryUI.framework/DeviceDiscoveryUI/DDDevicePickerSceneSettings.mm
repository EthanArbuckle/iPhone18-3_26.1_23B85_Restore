@interface DDDevicePickerSceneSettings
- (NSString)serviceIdentifier;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation DDDevicePickerSceneSettings

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DDDevicePickerMutableSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (NSString)serviceIdentifier
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:18492849];

  return v3;
}

@end