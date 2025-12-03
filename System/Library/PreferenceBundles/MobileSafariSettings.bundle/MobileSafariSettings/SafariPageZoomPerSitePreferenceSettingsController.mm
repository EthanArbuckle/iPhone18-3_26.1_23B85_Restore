@interface SafariPageZoomPerSitePreferenceSettingsController
- (id)preference;
@end

@implementation SafariPageZoomPerSitePreferenceSettingsController

- (id)preference
{
  v2 = +[_SFPageZoomPreferenceManager sharedManager];
  pageZoomPreference = [v2 pageZoomPreference];

  return pageZoomPreference;
}

@end