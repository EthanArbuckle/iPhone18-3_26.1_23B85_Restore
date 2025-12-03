@interface SHSHeadphoneLevelLimitSliderCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
@end

@implementation SHSHeadphoneLevelLimitSliderCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SHSHeadphoneLevelLimitSliderCell" isKindOfClass:@"PSControlTableCell"];
  [validationsCopy validateClass:@"PSControlTableCell" hasInstanceMethod:@"controlValue" withFullSignature:{"@", 0}];
}

- (id)accessibilityValue
{
  objc_opt_class();
  v3 = [(SHSHeadphoneLevelLimitSliderCellAccessibility *)self safeValueForKey:@"controlValue"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = MEMORY[0x29EDBA0F8];
  v6 = accessibilityLocalizedString(@"decibel.value");
  v7 = [v5 stringWithFormat:v6, v4];

  return v7;
}

@end