@interface AVTColorSliderAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
@end

@implementation AVTColorSliderAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVTColorSlider" isKindOfClass:@"UISlider"];
  [validationsCopy validateClass:@"UISlider" hasInstanceMethod:@"minimumValue" withFullSignature:{"f", 0}];
  [validationsCopy validateClass:@"UISlider" hasInstanceMethod:@"maximumValue" withFullSignature:{"f", 0}];
  [validationsCopy validateClass:@"UISlider" hasInstanceMethod:@"value" withFullSignature:{"f", 0}];
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