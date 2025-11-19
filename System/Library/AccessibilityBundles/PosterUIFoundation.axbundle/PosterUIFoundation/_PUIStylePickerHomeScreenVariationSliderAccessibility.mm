@interface _PUIStylePickerHomeScreenVariationSliderAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsGradientSlider;
- (BOOL)_axIsLumaSlider;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation _PUIStylePickerHomeScreenVariationSliderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_PUIStylePickerHomeScreenVariationSlider" isKindOfClass:@"PUIStyleVariationSlider"];
  [v3 validateClass:@"PUIStyleVariationSlider" hasInstanceMethod:@"styleCoordinator" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUIStyleVariationSlider" hasInstanceMethod:@"contextIdentifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUIStyleVariationSlider" hasInstanceMethod:@"value" withFullSignature:{"d", 0}];
  [v3 validateClass:@"PUIStyleUICoordinator" hasInstanceVariable:@"_coordinatorImpl" withType:"<PUIStyleUICoordinatorImpl>"];
  [v3 validateClass:@"_PUIStylePickerHomeScreenGradientSliderUICoordinatorImpl" hasInstanceMethod:@"effectiveColor" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUIStyleVariationSlider" hasInstanceMethod:@"_setSliderValue:layout:fireActions:" withFullSignature:{"v", "d", "B", "B", 0}];
}

- (id)accessibilityLabel
{
  if ([(_PUIStylePickerHomeScreenVariationSliderAccessibility *)self _axIsGradientSlider])
  {
    v3 = @"home.screen.gradient.slider";
LABEL_5:
    v4 = accessibilityLocalizedString(v3);
    goto LABEL_7;
  }

  if ([(_PUIStylePickerHomeScreenVariationSliderAccessibility *)self _axIsLumaSlider])
  {
    v3 = @"home.screen.luma.slider";
    goto LABEL_5;
  }

  v6.receiver = self;
  v6.super_class = _PUIStylePickerHomeScreenVariationSliderAccessibility;
  v4 = [(_PUIStylePickerHomeScreenVariationSliderAccessibility *)&v6 accessibilityLabel];
LABEL_7:

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = _PUIStylePickerHomeScreenVariationSliderAccessibility;
  return *MEMORY[0x29EDC7F60] | [(_PUIStylePickerHomeScreenVariationSliderAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityValue
{
  if ([(_PUIStylePickerHomeScreenVariationSliderAccessibility *)self _axIsLumaSlider])
  {
    [(_PUIStylePickerHomeScreenVariationSliderAccessibility *)self _axSliderValue];
    v3 = AXFormatFloatWithPercentage();
  }

  else
  {
    if ([(_PUIStylePickerHomeScreenVariationSliderAccessibility *)self _axIsGradientSlider])
    {
      v4 = [(_PUIStylePickerHomeScreenVariationSliderAccessibility *)self safeValueForKeyPath:@"styleCoordinator._coordinatorImpl.effectiveColor"];
      v5 = AXColorStringForColor();

      goto LABEL_7;
    }

    v7.receiver = self;
    v7.super_class = _PUIStylePickerHomeScreenVariationSliderAccessibility;
    v3 = [(_PUIStylePickerHomeScreenVariationSliderAccessibility *)&v7 accessibilityValue];
  }

  v5 = v3;
LABEL_7:

  return v5;
}

- (BOOL)_axIsGradientSlider
{
  v2 = [(_PUIStylePickerHomeScreenVariationSliderAccessibility *)self safeStringForKey:@"contextIdentifier"];
  v3 = [v2 isEqualToString:@"_gradientColorSlider"];

  return v3;
}

- (BOOL)_axIsLumaSlider
{
  v2 = [(_PUIStylePickerHomeScreenVariationSliderAccessibility *)self safeStringForKey:@"contextIdentifier"];
  v3 = [v2 isEqualToString:@"_lumaSlider"];

  return v3;
}

@end