@interface VMPlayerTimelineSliderAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_axUpdateSliderValue;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation VMPlayerTimelineSliderAccessibility

- (void)_axUpdateSliderValue
{
  v3 = [(VMPlayerTimelineSliderAccessibility *)self safeValueForKey:@"_slider"];
  v4 = __UIAccessibilitySafeClass();

  [v4 safeTimeIntervalForKey:@"maximumTime"];
  [v4 safeFloatForKey:@"value"];
  v5 = [(VMPlayerTimelineSliderAccessibility *)self safeValueForKey:@"delegate"];
  v6 = __UIAccessibilityCastAsProtocol();

  v9 = v6;
  v10 = v4;
  v7 = v4;
  v8 = v6;
  AXPerformSafeBlock();
}

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VMPlayerTimelineSlider" hasInstanceVariable:@"_slider" withType:"VMDetailSlider"];
  [validationsCopy validateClass:@"VMDetailSlider" hasInstanceMethod:@"maximumTime" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"VMDetailSlider" hasInstanceMethod:@"elapsedTime" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"VMPlayerTimelineSlider" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"VMPlayerTimelineSliderDelegate" hasOptionalInstanceMethod:@"playerTimelineSlider:didChangeElapsedTime:"];
}

- (id)accessibilityLabel
{
  v3 = accessibilityLocalizedString(@"voicemail.playback.slider");
  accessibilityIdentification = [(VMPlayerTimelineSliderAccessibility *)self accessibilityIdentification];
  v5 = [accessibilityIdentification isEqualToString:@"GreetingSlider"];

  if (v5)
  {
    v6 = accessibilityLocalizedString(@"greeting.playback.slider");

    v3 = v6;
  }

  return v3;
}

- (id)accessibilityValue
{
  v3 = [(VMPlayerTimelineSliderAccessibility *)self safeValueForKey:@"_slider"];
  v4 = __UIAccessibilitySafeClass();

  [v4 safeTimeIntervalForKey:@"maximumTime"];
  v5 = MEMORY[0x29C2DFF00](1);
  v6 = [(VMPlayerTimelineSliderAccessibility *)self safeValueForKey:@"elapsedTimeLabel"];
  v7 = __UIAccessibilitySafeClass();

  text = [v7 text];
  AXDurationForDurationString();
  v10 = v9;

  v11 = MEMORY[0x29C2DFF00](1, v10);
  v12 = MEMORY[0x29EDBA0F8];
  v13 = accessibilityLocalizedString(@"voicemail.progress");
  v14 = [v12 stringWithFormat:v13, v11, v5];

  return v14;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(VMPlayerTimelineSliderAccessibility *)self safeValueForKey:@"_slider"];
  v9 = 0;
  v4 = __UIAccessibilitySafeClass();

  v8.receiver = self;
  v8.super_class = VMPlayerTimelineSliderAccessibility;
  accessibilityTraits = [(VMPlayerTimelineSliderAccessibility *)&v8 accessibilityTraits];
  accessibilityTraits2 = [v4 accessibilityTraits];

  return accessibilityTraits2 | accessibilityTraits;
}

- (void)accessibilityIncrement
{
  v3 = [(VMPlayerTimelineSliderAccessibility *)self safeValueForKey:@"_slider"];
  v4 = __UIAccessibilitySafeClass();

  [v4 accessibilityIncrement];
  [(VMPlayerTimelineSliderAccessibility *)self _axUpdateSliderValue];
}

- (void)accessibilityDecrement
{
  v3 = [(VMPlayerTimelineSliderAccessibility *)self safeValueForKey:@"_slider"];
  v4 = __UIAccessibilitySafeClass();

  [v4 accessibilityDecrement];
  [(VMPlayerTimelineSliderAccessibility *)self _axUpdateSliderValue];
}

@end