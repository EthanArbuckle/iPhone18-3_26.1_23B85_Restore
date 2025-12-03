@interface MSSPhotoStreamInAccountSettingsController
- (void)navigationEventParameters:(id)parameters;
@end

@implementation MSSPhotoStreamInAccountSettingsController

- (void)navigationEventParameters:(id)parameters
{
  parametersCopy = parameters;
  v4 = SettingsBaseControllerLocalizedStringResource(@"NAVIGATION_COMPONENT_APPLE_ACCOUNT");
  v8[0] = v4;
  v5 = SettingsBaseControllerLocalizedStringResource(@"NAVIGATION_COMPONENT_ICLOUD");
  v8[1] = v5;
  v6 = [NSArray arrayWithObjects:v8 count:2];

  v7 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.AppleAccount/ICLOUD_SERVICE/com.apple.Dataclass.CloudPhotos"];
  parametersCopy[2](parametersCopy, v6, v7);
}

@end