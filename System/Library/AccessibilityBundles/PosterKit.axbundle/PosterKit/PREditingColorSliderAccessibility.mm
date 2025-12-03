@interface PREditingColorSliderAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
- (void)_axAdjustSliderValue:(BOOL)value;
@end

@implementation PREditingColorSliderAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PREditingColorSlider" isKindOfClass:@"UIControl"];
  [validationsCopy validateClass:@"PREditingColorSlider" hasProperty:@"value" withType:"d"];
  [validationsCopy validateClass:@"PREditingColorSlider" hasProperty:@"displayCurrentColor" withType:"@"];
  [validationsCopy validateClass:@"PRPosterColor" hasProperty:@"color" withType:"@"];
  [validationsCopy validateClass:@"PREditingColorSlider" hasInstanceMethod:@"_setSliderValue:" withFullSignature:{"v", "d", 0}];
}

- (id)accessibilityValue
{
  v3 = [(PREditingColorSliderAccessibility *)self safeValueForKeyPath:@"displayCurrentColor.color"];
  v4 = AXColorStringForColor();

  [(PREditingColorSliderAccessibility *)self safeCGFloatForKey:@"value"];
  v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%.1f", v5];
  v7 = __UIAXStringForVariables();

  return v7;
}

- (void)_axAdjustSliderValue:(BOOL)value
{
  valueCopy = value;
  [(PREditingColorSliderAccessibility *)self safeCGFloatForKey:@"value"];
  v5 = -0.1;
  if (valueCopy)
  {
    v5 = 0.1;
  }

  if (fabs(v5 + v4) <= 1.0)
  {
    AXPerformSafeBlock();
    objc_opt_class();
    v6 = __UIAccessibilityCastAsClass();
    [v6 sendActionsForControlEvents:4096];
  }
}

@end