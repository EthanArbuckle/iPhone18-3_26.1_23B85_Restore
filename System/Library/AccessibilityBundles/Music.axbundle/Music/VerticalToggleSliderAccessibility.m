@interface VerticalToggleSliderAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityAnnounceNewValue;
- (void)_accessibilityIncreaseSlider:(BOOL)a3;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)dragged:(id)a3;
@end

@implementation VerticalToggleSliderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicCoreUI.VerticalToggleSlider" hasInstanceMethod:@"accessibilitySliderValue" withFullSignature:{"f", 0}];
  [v3 validateClass:@"MusicCoreUI.VerticalToggleSlider" hasInstanceMethod:@"accessibilityMinValue" withFullSignature:{"f", 0}];
  [v3 validateClass:@"MusicCoreUI.VerticalToggleSlider" hasInstanceMethod:@"accessibilityMaxValue" withFullSignature:{"f", 0}];
  [v3 validateClass:@"MusicCoreUI.VerticalToggleSlider" hasInstanceMethod:@"accessibilityToggleIsOn" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MusicCoreUI.VerticalToggleSlider" hasInstanceMethod:@"accessibilityAutomaticallyDisablesOnMaxValue" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MusicCoreUI.VerticalToggleSlider" hasInstanceMethod:@"accessibilitySetSliderValue:" withFullSignature:{"v", "d", 0}];
  [v3 validateClass:@"MusicCoreUI.VerticalToggleSlider" hasInstanceMethod:@"dragged:" withFullSignature:{"v", "@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F70];
  v3 = [(VerticalToggleSliderAccessibility *)self safeBoolForKey:@"accessibilityToggleIsOn"];
  v4 = *MEMORY[0x29EDC7F60];
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | v2;
}

- (id)accessibilityValue
{
  v3 = [(VerticalToggleSliderAccessibility *)self safeBoolForKey:@"accessibilityToggleIsOn"];
  [(VerticalToggleSliderAccessibility *)self safeFloatForKey:@"accessibilitySliderValue"];
  v4 = [MEMORY[0x29EDBA070] numberWithFloat:?];
  if (v3)
  {
    AXFormatNumberWithOptions();
  }

  else
  {
    accessibilityMusicLocalizedString(@"vertical.toggle.slider.off");
  }
  v5 = ;

  return v5;
}

- (void)accessibilityIncrement
{
  if ([(VerticalToggleSliderAccessibility *)self safeBoolForKey:@"accessibilityToggleIsOn"])
  {

    [(VerticalToggleSliderAccessibility *)self _accessibilityIncreaseSlider:1];
  }
}

- (void)accessibilityDecrement
{
  if ([(VerticalToggleSliderAccessibility *)self safeBoolForKey:@"accessibilityToggleIsOn"])
  {

    [(VerticalToggleSliderAccessibility *)self _accessibilityIncreaseSlider:0];
  }
}

- (void)_accessibilityIncreaseSlider:(BOOL)a3
{
  [(VerticalToggleSliderAccessibility *)self safeFloatForKey:@"accessibilityMinValue"];
  [(VerticalToggleSliderAccessibility *)self safeFloatForKey:@"accessibilityMaxValue"];
  [(VerticalToggleSliderAccessibility *)self safeFloatForKey:@"accessibilitySliderValue"];
  AXPerformSafeBlock();
}

void __66__VerticalToggleSliderAccessibility__accessibilityIncreaseSlider___block_invoke(uint64_t a1)
{
  [*(a1 + 32) accessibilitySetSliderValue:*(a1 + 40)];
  if (*(a1 + 40) == *(a1 + 44) && [*(a1 + 32) safeBoolForKey:@"accessibilityAutomaticallyDisablesOnMaxValue"])
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *(a1 + 32));
    v2 = *MEMORY[0x29EDC7EA8];
    v6 = [*(a1 + 32) accessibilityLabel];
    v3 = accessibilityMusicLocalizedString(@"vertical.toggle.slider.off");
    v5 = accessibilityMusicLocalizedString(@"vertical.toggle.button");
    v4 = __UIAXStringForVariables();
    UIAccessibilityPostNotification(v2, v4);
  }
}

- (void)_accessibilityAnnounceNewValue
{
  if (CFAbsoluteTimeGetCurrent() - *&_accessibilityAnnounceNewValue_LastOutput > 1.0)
  {
    v3 = *MEMORY[0x29EDC7EA8];
    v4 = [(VerticalToggleSliderAccessibility *)self _accessibilityAXAttributedValue];
    UIAccessibilityPostNotification(v3, v4);

    _accessibilityAnnounceNewValue_LastOutput = CFAbsoluteTimeGetCurrent();
  }
}

- (void)dragged:(id)a3
{
  v4.receiver = self;
  v4.super_class = VerticalToggleSliderAccessibility;
  [(VerticalToggleSliderAccessibility *)&v4 dragged:a3];
  [(VerticalToggleSliderAccessibility *)self _accessibilityAnnounceNewValue];
}

@end