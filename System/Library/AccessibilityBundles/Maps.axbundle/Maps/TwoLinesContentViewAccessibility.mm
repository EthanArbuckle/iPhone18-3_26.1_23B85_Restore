@interface TwoLinesContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation TwoLinesContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TwoLinesContentView" hasInstanceVariable:@"_mainTitleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"TwoLinesContentView" hasInstanceVariable:@"_secondTitleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"TwoLinesContentView" hasInstanceVariable:@"_thirdTitleLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(TwoLinesContentViewAccessibility *)self safeValueForKey:@"_mainTitleLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(TwoLinesContentViewAccessibility *)self safeValueForKey:@"_secondTitleLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];

  v15 = -4;
  v7 = [MEMORY[0x29EDBA0F8] stringWithCharacters:&v15 length:1];
  v8 = [accessibilityLabel stringByReplacingOccurrencesOfString:v7 withString:&stru_2A21E4020];

  v9 = __UIAXStringForVariables();
  v10 = [(TwoLinesContentViewAccessibility *)self safeValueForKey:@"_thirdTitleLabel", accessibilityLabel2, @"__AXStringForVariablesSentinel"];
  if ([v10 _accessibilityViewIsVisible])
  {
    accessibilityLabel3 = [v10 accessibilityLabel];
    v11 = __UIAXStringForVariables();

    v9 = v11;
  }

  v12 = AXStringByReplacingMiddleDots(v9);

  return v12;
}

@end