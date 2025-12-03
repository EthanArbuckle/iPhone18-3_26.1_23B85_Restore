@interface VocalsAttenuationSliderAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
@end

@implementation VocalsAttenuationSliderAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicVocalsAttenuationSlider" isKindOfClass:@"MusicCoreUI.VerticalToggleSlider"];
  [validationsCopy validateClass:@"MusicCoreUI.VerticalToggleSlider" hasInstanceMethod:@"accessibilityToggleIsOn" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MusicVocalsAttenuationSlider" hasInstanceMethod:@"accessibilitySliderCurrentPercentageValue" withFullSignature:{"f", 0}];
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