@interface NikeSettingsControllerAccessibility
- (void)showPowerSongPicker:(id)a3;
@end

@implementation NikeSettingsControllerAccessibility

- (void)showPowerSongPicker:(id)a3
{
  v3.receiver = self;
  v3.super_class = NikeSettingsControllerAccessibility;
  [(NikeSettingsControllerAccessibility *)&v3 showPowerSongPicker:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end