@interface VolumeSliderAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)canBecomeFocused;
- (id)accessibilityValue;
- (void)_accessibilityIncreaseVolume:(BOOL)a3;
@end

@implementation VolumeSliderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"Music.VolumeSlider" hasInstanceMethod:@"accessibilityUpdateWithVolume:" withFullSignature:{"v", "f", 0}];
  [v3 validateClass:@"Music.VolumeSlider" hasSwiftField:@"volumeController" withSwiftType:"MPVolumeController"];
  [v3 validateClass:@"MPVolumeController" hasInstanceMethod:@"volumeValue" withFullSignature:{"f", 0}];
}

- (id)accessibilityValue
{
  v2 = [(VolumeSliderAccessibility *)self safeSwiftValueForKey:@"volumeController"];
  [v2 safeFloatForKey:@"volumeValue"];
  v3 = AXFormatFloatWithPercentage();

  return v3;
}

- (void)_accessibilityIncreaseVolume:(BOOL)a3
{
  v3 = [(VolumeSliderAccessibility *)self safeSwiftValueForKey:@"volumeController"];
  [v3 safeFloatForKey:@"volumeValue"];
  AXPerformSafeBlock();
}

- (BOOL)canBecomeFocused
{
  v5.receiver = self;
  v5.super_class = VolumeSliderAccessibility;
  v3 = [(VolumeSliderAccessibility *)&v5 canBecomeFocused];
  return ([(VolumeSliderAccessibility *)self _accessibilityIsFKARunningForFocusItem]| v3) & 1;
}

@end