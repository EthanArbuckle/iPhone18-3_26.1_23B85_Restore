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
    v7 = [v6 profileServerIDToWebExtensionsControllers];
    v8 = [v7 objectForKeyedSubscript:WBSDefaultProfileIdentifier];
    v9 = [v4 initWithPerSitePreferencesStore:v5 extensionsController:v8];
    v10 = self->_contentBlockersPreferenceManager;
    self->_contentBlockersPreferenceManager = v9;

    contentBlockersPreferenceManager = self->_contentBlockersPreferenceManager;
  }

  return contentBlockersPreferenceManager;
}

- (id)preference
{
  v2 = [(SafariContentBlockersPerSitePreferenceSettingsController *)self preferenceManager];
  v3 = [v2 contentBlockersPreference];

  return v3;
}

@end