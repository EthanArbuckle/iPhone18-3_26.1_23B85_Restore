@interface SafariProfilePerSitePreferenceSettingsController
- (id)preference;
- (id)preferenceManager;
@end

@implementation SafariProfilePerSitePreferenceSettingsController

- (id)preferenceManager
{
  profilePreferenceManager = self->_profilePreferenceManager;
  if (!profilePreferenceManager)
  {
    v4 = [WBSProfilePreferenceManager alloc];
    v5 = +[WBSPerSitePreferencesSQLiteStore sharedStore];
    v6 = +[SafariSettingsController profileProvider];
    v7 = [v4 initWithPerSitePreferencesStore:v5 profileProvider:v6];
    v8 = self->_profilePreferenceManager;
    self->_profilePreferenceManager = v7;

    profilePreferenceManager = self->_profilePreferenceManager;
  }

  return profilePreferenceManager;
}

- (id)preference
{
  v2 = [(SafariProfilePerSitePreferenceSettingsController *)self preferenceManager];
  v3 = [v2 profilePreference];

  return v3;
}

@end