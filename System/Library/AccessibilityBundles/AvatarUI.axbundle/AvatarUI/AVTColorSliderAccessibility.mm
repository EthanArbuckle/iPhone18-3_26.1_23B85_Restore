@interface AVTColorSliderAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
@end

@implementation AVTColorSliderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVTColorSlider" isKindOfClass:@"UISlider"];
  [v3 validateClass:@"UISlider" hasInstanceMethod:@"minimumValue" withFullSignature:{"f", 0}];
  [v3 validateClass:@"UISlider" hasInstanceMethod:@"maximumValue" withFullSignature:{"f", 0}];
  [v3 validateClass:@"UISlider" hasInstanceMethod:@"value" withFullSignature:{"f", 0}];
}

- (id)accessibilityValue
{
  [(AVTColorSliderAccessibility *)self safeFloatForKey:@"minimumValue"];
  [(AVTColorSliderAccessibility *)self safeFloatForKey:@"maximumValue"];
  [(AVTColorSliderAccessibility *)self safeFloatForKey:@"value"];
  v3 = [(AVTColorSliderAccessibility *)self _accessibilityValueForKey:@"AccessibilityMinColorNameKey"];
  v4 = [(AVTColorSliderAccessibility *)self _accessibilityValueForKey:@"AccessibilityMaxColorNameKey"];
  v5 = AXFormatFloatWithPercentage();
  v6 = __UIAXStringForVariables();

  v7 = AXFormatFloatWithPercentage();
  v8 = __UIAXStringForVariables();

  v9 = __UIAXStringForVariables();

  return v9;
}

@end