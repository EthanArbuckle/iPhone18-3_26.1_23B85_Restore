@interface ACUILocalDeviceSettingsController
- (void)setDefaultPollIntervalIfNeeded;
@end

@implementation ACUILocalDeviceSettingsController

- (void)setDefaultPollIntervalIfNeeded
{
  if (![(ACUILocalDeviceSettingsController *)self fetchSettingSet])
  {
    [(ACUILocalDeviceSettingsController *)self setPollInterval:1800];
  }
}

@end