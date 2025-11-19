@interface PlatformAccessibilitySettingsDefinition
- (void)settingsValueDidChange:(id)a3;
@end

@implementation PlatformAccessibilitySettingsDefinition

- (void)settingsValueDidChange:(id)a3
{
  v3 = a3;

  PlatformAccessibilitySettingsDefinition.settingsValueDidChange(_:)(v3);
}

@end