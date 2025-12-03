@interface SafariContentBlockersPerSitePreferenceSettingsController
- (id)preference;
- (id)preferenceManager;
@end

@implementation SafariContentBlockersPerSitePreferenceSettingsController

- (id)preferenceManager
{
  contentBlockersPreferenceManager = self->_contentBlockersPreferenceManager;
  if (!contentBlockersPreferenceManager)
  {
    v4 = [_SFContentBlockersPreferenceManager alloc];
    v5 = +[WBSPerSitePreferencesSQLiteStore sharedStore];
    v6 = +[SafariSettingsController extensionsProfilesDataSource];
    profileServerIDToWebExtensionsControllers = [v6 profileServerIDToWebExtensionsControllers];
    v8 = [profileServerIDToWebExtensionsControllers objectForKeyedSubscript:WBSDefaultProfileIdentifier];
    v9 = [v4 initWithPerSitePreferencesStore:v5 extensionsController:v8];
    v10 = self->_contentBlockersPreferenceManager;
    self->_contentBlockersPreferenceManager = v9;

    contentBlockersPreferenceManager = self->_contentBlockersPreferenceManager;
  }

  return contentBlockersPreferenceManager;
}

- (id)preference
{
  preferenceManager = [(SafariContentBlockersPerSitePreferenceSettingsController *)self preferenceManager];
  contentBlockersPreference = [preferenceManager contentBlockersPreference];

  return contentBlockersPreference;
}

@end