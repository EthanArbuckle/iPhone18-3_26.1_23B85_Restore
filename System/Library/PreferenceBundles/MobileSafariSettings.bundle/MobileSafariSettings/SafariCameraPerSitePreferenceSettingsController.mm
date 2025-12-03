@interface SafariCameraPerSitePreferenceSettingsController
- (id)preference;
@end

@implementation SafariCameraPerSitePreferenceSettingsController

- (id)preference
{
  preferenceManager = [(SafariMediaCapturePerSitePreferenceSettingsController *)self preferenceManager];
  cameraMediaCapturePreference = [preferenceManager cameraMediaCapturePreference];

  return cameraMediaCapturePreference;
}

@end