@interface SafariPageZoomPerSitePreferenceSettingsController
- (id)preference;
@end

@implementation SafariPageZoomPerSitePreferenceSettingsController

- (id)preference
{
  v2 = +[_SFPageZoomPreferenceManager sharedManager];
  v3 = [v2 pageZoomPreference];

  return v3;
}

@end