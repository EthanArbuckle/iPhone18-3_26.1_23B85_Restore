@interface NikeSettingsControllerAccessibility
- (void)showPowerSongPicker:(id)picker;
@end

@implementation NikeSettingsControllerAccessibility

- (void)showPowerSongPicker:(id)picker
{
  v3.receiver = self;
  v3.super_class = NikeSettingsControllerAccessibility;
  [(NikeSettingsControllerAccessibility *)&v3 showPowerSongPicker:picker];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end