@interface SafariReaderPerSitePreferenceSettingsController
- (id)preference;
- (id)preferenceManager;
@end

@implementation SafariReaderPerSitePreferenceSettingsController

- (id)preferenceManager
{
  automaticReaderActivationManager = self->_automaticReaderActivationManager;
  if (!automaticReaderActivationManager)
  {
    v4 = [WBSAutomaticReaderActivationManager alloc];
    v5 = +[WBSPerSitePreferencesSQLiteStore sharedStore];
    v6 = [v4 initWithPerSitePreferencesStore:v5];
    v7 = self->_automaticReaderActivationManager;
    self->_automaticReaderActivationManager = v6;

    automaticReaderActivationManager = self->_automaticReaderActivationManager;
  }

  return automaticReaderActivationManager;
}

- (id)preference
{
  preferenceManager = [(SafariReaderPerSitePreferenceSettingsController *)self preferenceManager];
  readerPreference = [preferenceManager readerPreference];

  return readerPreference;
}

@end