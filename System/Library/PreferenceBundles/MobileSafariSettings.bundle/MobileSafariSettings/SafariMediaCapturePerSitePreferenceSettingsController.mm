@interface SafariMediaCapturePerSitePreferenceSettingsController
- (id)preferenceManager;
- (void)perSitePreferenceValueDidChange;
@end

@implementation SafariMediaCapturePerSitePreferenceSettingsController

- (id)preferenceManager
{
  userMediaPermissionController = self->_userMediaPermissionController;
  if (!userMediaPermissionController)
  {
    v4 = +[_SFUserMediaPermissionController sharedController];
    v5 = self->_userMediaPermissionController;
    self->_userMediaPermissionController = v4;

    userMediaPermissionController = self->_userMediaPermissionController;
  }

  return userMediaPermissionController;
}

- (void)perSitePreferenceValueDidChange
{
  [(_SFUserMediaPermissionController *)self->_userMediaPermissionController reloadPreferences];
  v3.receiver = self;
  v3.super_class = SafariMediaCapturePerSitePreferenceSettingsController;
  [(SafariPerSitePreferenceSettingsController *)&v3 perSitePreferenceValueDidChange];
}

@end