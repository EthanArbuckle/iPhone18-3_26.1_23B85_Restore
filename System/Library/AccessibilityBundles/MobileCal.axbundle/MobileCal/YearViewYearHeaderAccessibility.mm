@interface YearViewYearHeaderAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateYearNumber;
- (void)_reloadYearNumberLabel;
@end

@implementation YearViewYearHeaderAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"YearViewYearHeader" hasInstanceVariable:@"_yearNumber" withType:"UILabel"];
  [validationsCopy validateClass:@"YearViewYearHeader" hasInstanceMethod:@"_reloadYearNumberLabel" withFullSignature:{"v", 0}];
}

- (void)_axAnnotateYearNumber
{
  v3 = [(YearViewYearHeaderAccessibility *)self safeValueForKey:@"_yearNumber"];
  accessibilityTraits = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | accessibilityTraits];
  [v3 _accessibilitySetIsSpeakThisElement:0];
}

- (void)_reloadYearNumberLabel
{
  v3.receiver = self;
  v3.super_class = YearViewYearHeaderAccessibility;
  [(YearViewYearHeaderAccessibility *)&v3 _reloadYearNumberLabel];
  [(YearViewYearHeaderAccessibility *)self _axAnnotateYearNumber];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = YearViewYearHeaderAccessibility;
  [(YearViewYearHeaderAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(YearViewYearHeaderAccessibility *)self _axAnnotateYearNumber];
}

@end