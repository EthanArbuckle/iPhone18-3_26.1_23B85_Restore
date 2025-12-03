@interface MKPitchControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
@end

@implementation MKPitchControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MKPitchControl" hasInstanceMethod:@"sliderPercent" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"MKPitchControl" hasInstanceMethod:@"setSliderPercent:" withFullSignature:{"v", "d", 0}];
  [validationsCopy validateClass:@"MKPitchControl" hasInstanceMethod:@"degreesForPercent:" withFullSignature:{"d", "d", 0}];
}

- (id)accessibilityValue
{
  [(MKPitchControlAccessibility *)self safeDoubleForKey:@"sliderPercent"];
  v2 = AXFormatFloatWithPercentage();
  v3 = MEMORY[0x29EDBA0F8];
  v4 = AXLocalizedString();
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  AXPerformSafeBlock();
  v5 = v11[3];
  _Block_object_dispose(&v10, 8);
  LODWORD(v6) = llround(v5);
  v9 = [v3 localizedStringWithFormat:v4, v6];
  v7 = __AXStringForVariables();

  return v7;
}

uint64_t __49__MKPitchControlAccessibility_accessibilityValue__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 safeDoubleForKey:@"sliderPercent"];
  result = [v2 degreesForPercent:?];
  *(*(*(a1 + 40) + 8) + 24) = v4;
  return result;
}

@end