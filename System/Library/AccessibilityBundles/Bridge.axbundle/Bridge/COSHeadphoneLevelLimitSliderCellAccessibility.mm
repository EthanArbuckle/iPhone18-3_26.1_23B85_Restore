@interface COSHeadphoneLevelLimitSliderCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
@end

@implementation COSHeadphoneLevelLimitSliderCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"COSHeadphoneLevelLimitSliderCell" isKindOfClass:@"PSControlTableCell"];
  [v3 validateClass:@"PSControlTableCell" hasInstanceMethod:@"controlValue" withFullSignature:{"@", 0}];
}

- (id)accessibilityValue
{
  objc_opt_class();
  v3 = [(COSHeadphoneLevelLimitSliderCellAccessibility *)self safeValueForKey:@"controlValue"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = MEMORY[0x29EDBA0F8];
  v6 = accessibilityLocalizedString(@"decibel.value");
  v7 = [v5 stringWithFormat:v6, v4];

  return v7;
}

@end