@interface SafariRequestDesktopSitePerSitePreferenceSettingsController
- (id)preference;
- (id)preferenceManager;
- (void)notifyPerSitePreferenceValueDidChange;
@end

@implementation SafariRequestDesktopSitePerSitePreferenceSettingsController

- (id)preferenceManager
{
  requestDesktopSitePreferenceManager = self->_requestDesktopSitePreferenceManager;
  if (!requestDesktopSitePreferenceManager)
  {
    v4 = [_SFRequestDesktopSitePreferenceManager alloc];
    v5 = +[WBSPerSitePreferencesSQLiteStore sharedStore];
    v6 = +[_SFRequestDesktopSiteQuirksManager sharedManager];
    v7 = [v4 initWithPerSitePreferencesStore:v5 quirksManager:v6];
    v8 = self->_requestDesktopSitePreferenceManager;
    self->_requestDesktopSitePreferenceManager = v7;

    requestDesktopSitePreferenceManager = self->_requestDesktopSitePreferenceManager;
  }

  return requestDesktopSitePreferenceManager;
}

- (id)preference
{
  v2 = [(SafariRequestDesktopSitePerSitePreferenceSettingsController *)self preferenceManager];
  v3 = [v2 requestDesktopSitePreference];

  return v3;
}

- (void)notifyPerSitePreferenceValueDidChange
{
  v3.receiver = self;
  v3.super_class = SafariRequestDesktopSitePerSitePreferenceSettingsController;
  [(SafariRequestDesktopSitePerSitePreferenceSettingsController *)&v3 notifyPerSitePreferenceValueDidChange];
  v2 = +[NSDistributedNotificationCenter defaultCenter];
  [v2 postNotificationName:_SFRequestDesktopSitePreferenceDidChangeDistributedNotification object:0];
}

@end