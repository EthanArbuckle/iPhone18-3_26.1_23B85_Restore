@interface VolumeSliderAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)canBecomeFocused;
- (id)accessibilityValue;
- (void)_accessibilityIncreaseVolume:(BOOL)volume;
@end

@implementation VolumeSliderAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"Music.VolumeSlider" hasInstanceMethod:@"accessibilityUpdateWithVolume:" withFullSignature:{"v", "f", 0}];
  [validationsCopy validateClass:@"Music.VolumeSlider" hasSwiftField:@"volumeController" withSwiftType:"MPVolumeController"];
  [validationsCopy validateClass:@"MPVolumeController" hasInstanceMethod:@"volumeValue" withFullSignature:{"f", 0}];
}

- (id)accessibilityValue
{
  v2 = [(VolumeSliderAccessibility *)self safeSwiftValueForKey:@"volumeController"];
  [v2 safeFloatForKey:@"volumeValue"];
  v3 = AXFormatFloatWithPercentage();

  return v3;
}

- (void)_accessibilityIncreaseVolume:(BOOL)volume
{
  v3 = [(VolumeSliderAccessibility *)self safeSwiftValueForKey:@"volumeController"];
  [v3 safeFloatForKey:@"volumeValue"];
  AXPerformSafeBlock();
}

- (BOOL)canBecomeFocused
{
  v5.receiver = self;
  v5.super_class = VolumeSliderAccessibility;
  canBecomeFocused = [(VolumeSliderAccessibility *)&v5 canBecomeFocused];
  return ([(VolumeSliderAccessibility *)self _accessibilityIsFKARunningForFocusItem]| canBecomeFocused) & 1;
}

@end