@interface SafariMicrophonePerSitePreferenceSettingsController
- (id)preference;
@end

@implementation SafariMicrophonePerSitePreferenceSettingsController

- (id)preference
{
  preferenceManager = [(SafariMediaCapturePerSitePreferenceSettingsController *)self preferenceManager];
  microphoneMediaCapturePreference = [preferenceManager microphoneMediaCapturePreference];

  return microphoneMediaCapturePreference;
}

@end