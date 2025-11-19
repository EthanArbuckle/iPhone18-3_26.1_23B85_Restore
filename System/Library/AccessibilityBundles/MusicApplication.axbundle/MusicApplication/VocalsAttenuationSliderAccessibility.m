@interface VocalsAttenuationSliderAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
@end

@implementation VocalsAttenuationSliderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicVocalsAttenuationSlider" isKindOfClass:@"MusicCoreUI.VerticalToggleSlider"];
  [v3 validateClass:@"MusicCoreUI.VerticalToggleSlider" hasInstanceMethod:@"accessibilityToggleIsOn" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MusicVocalsAttenuationSlider" hasInstanceMethod:@"accessibilitySliderCurrentPercentageValue" withFullSignature:{"f", 0}];
}

- (id)accessibilityValue
{
  v3 = [(VocalsAttenuationSliderAccessibility *)self safeBoolForKey:@"accessibilityToggleIsOn"];
  [(VocalsAttenuationSliderAccessibility *)self safeFloatForKey:@"accessibilitySliderCurrentPercentageValue"];
  if (v3)
  {
    AXFormatFloatWithPercentage();
  }

  else
  {
    accessibilityMusicLocalizedString(@"vertical.toggle.slider.off");
  }
  v4 = ;

  return v4;
}

@end