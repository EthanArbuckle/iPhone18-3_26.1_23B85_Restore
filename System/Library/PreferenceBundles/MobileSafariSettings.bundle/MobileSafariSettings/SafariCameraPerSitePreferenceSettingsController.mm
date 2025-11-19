@interface SafariCameraPerSitePreferenceSettingsController
- (id)preference;
@end

@implementation SafariCameraPerSitePreferenceSettingsController

- (id)preference
{
  v2 = [(SafariMediaCapturePerSitePreferenceSettingsController *)self preferenceManager];
  v3 = [v2 cameraMediaCapturePreference];

  return v3;
}

@end