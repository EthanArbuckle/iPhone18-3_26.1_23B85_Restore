@interface PREditingColorSliderAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
- (void)_axAdjustSliderValue:(BOOL)a3;
@end

@implementation PREditingColorSliderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PREditingColorSlider" isKindOfClass:@"UIControl"];
  [v3 validateClass:@"PREditingColorSlider" hasProperty:@"value" withType:"d"];
  [v3 validateClass:@"PREditingColorSlider" hasProperty:@"displayCurrentColor" withType:"@"];
  [v3 validateClass:@"PRPosterColor" hasProperty:@"color" withType:"@"];
  [v3 validateClass:@"PREditingColorSlider" hasInstanceMethod:@"_setSliderValue:" withFullSignature:{"v", "d", 0}];
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

- (void)_axAdjustSliderValue:(BOOL)a3
{
  v3 = a3;
  [(PREditingColorSliderAccessibility *)self safeCGFloatForKey:@"value"];
  v5 = -0.1;
  if (v3)
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