@interface DDDevicePickerSceneSettings
- (NSString)serviceIdentifier;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation DDDevicePickerSceneSettings

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DDDevicePickerMutableSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (NSString)serviceIdentifier
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:18492849];

  return v3;
}

@end