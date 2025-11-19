@interface SafariLocationPerSitePreferenceSettingsController
- (id)preference;
- (id)preferenceManager;
@end

@implementation SafariLocationPerSitePreferenceSettingsController

- (id)preferenceManager
{
  geolocationPermissionManager = self->_geolocationPermissionManager;
  if (!geolocationPermissionManager)
  {
    v4 = +[_SFGeolocationPermissionManager sharedManager];
    v5 = self->_geolocationPermissionManager;
    self->_geolocationPermissionManager = v4;

    geolocationPermissionManager = self->_geolocationPermissionManager;
  }

  return geolocationPermissionManager;
}

- (id)preference
{
  v2 = [(SafariLocationPerSitePreferenceSettingsController *)self preferenceManager];
  v3 = [v2 geolocationPreference];

  return v3;
}

@end