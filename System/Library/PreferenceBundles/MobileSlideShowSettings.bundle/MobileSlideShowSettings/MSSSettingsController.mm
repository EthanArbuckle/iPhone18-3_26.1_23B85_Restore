@interface MSSSettingsController
- (id)deepLinkURL;
- (id)pathComponentsLocalizedResource;
@end

@implementation MSSSettingsController

- (id)pathComponentsLocalizedResource
{
  v2 = +[MSSSettingsUtilities photosMainPaneLocalizedResource];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (id)deepLinkURL
{
  v2 = [NSString stringWithFormat:@"%@/%@", @"settings-navigation://com.apple.Settings.Apps", @"com.apple.mobileslideshow"];
  v3 = [NSURL URLWithString:v2];

  return v3;
}

@end