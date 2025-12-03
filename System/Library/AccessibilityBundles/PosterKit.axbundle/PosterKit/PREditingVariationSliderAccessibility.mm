@interface PREditingVariationSliderAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
- (void)_axAdjustSliderValue:(BOOL)value;
@end

@implementation PREditingVariationSliderAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PREditingVariationSlider" hasProperty:@"value" withType:"d"];
  [validationsCopy validateClass:@"PREditingVariationSlider" hasInstanceMethod:@"_setSliderValue:" withFullSignature:{"v", "d", 0}];
}

- (id)accessibilityValue
{
  [(PREditingVariationSliderAccessibility *)self safeCGFloatForKey:@"value"];
  v2.n128_f64[0] = (v2.n128_f64[0] + 1.0) * 0.5;
  v2.n128_f32[0] = v2.n128_f64[0];

  return MEMORY[0x2A1C5E4D0](0, v2);
}

- (void)_axAdjustSliderValue:(BOOL)value
{
  valueCopy = value;
  [(PREditingVariationSliderAccessibility *)self safeCGFloatForKey:@"value"];
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