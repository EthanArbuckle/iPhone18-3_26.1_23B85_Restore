@interface PlatformAccessibilitySettingsDefinition
- (void)settingsValueDidChange:(id)change;
@end

@implementation PlatformAccessibilitySettingsDefinition

- (void)settingsValueDidChange:(id)change
{
  changeCopy = change;

  PlatformAccessibilitySettingsDefinition.settingsValueDidChange(_:)(changeCopy);
}

@end