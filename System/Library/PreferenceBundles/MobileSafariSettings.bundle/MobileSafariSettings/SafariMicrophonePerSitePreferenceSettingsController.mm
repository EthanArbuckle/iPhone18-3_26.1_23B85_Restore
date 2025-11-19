@interface SafariMicrophonePerSitePreferenceSettingsController
- (id)preference;
@end

@implementation SafariMicrophonePerSitePreferenceSettingsController

- (id)preference
{
  v2 = [(SafariMediaCapturePerSitePreferenceSettingsController *)self preferenceManager];
  v3 = [v2 microphoneMediaCapturePreference];

  return v3;
}

@end