@interface TwoLinesContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation TwoLinesContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TwoLinesContentView" hasInstanceVariable:@"_mainTitleLabel" withType:"UILabel"];
  [v3 validateClass:@"TwoLinesContentView" hasInstanceVariable:@"_secondTitleLabel" withType:"UILabel"];
  [v3 validateClass:@"TwoLinesContentView" hasInstanceVariable:@"_thirdTitleLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(TwoLinesContentViewAccessibility *)self safeValueForKey:@"_mainTitleLabel"];
  v4 = [v3 accessibilityLabel];

  v5 = [(TwoLinesContentViewAccessibility *)self safeValueForKey:@"_secondTitleLabel"];
  v6 = [v5 accessibilityLabel];

  v15 = -4;
  v7 = [MEMORY[0x29EDBA0F8] stringWithCharacters:&v15 length:1];
  v8 = [v4 stringByReplacingOccurrencesOfString:v7 withString:&stru_2A21E4020];

  v9 = __UIAXStringForVariables();
  v10 = [(TwoLinesContentViewAccessibility *)self safeValueForKey:@"_thirdTitleLabel", v6, @"__AXStringForVariablesSentinel"];
  if ([v10 _accessibilityViewIsVisible])
  {
    v14 = [v10 accessibilityLabel];
    v11 = __UIAXStringForVariables();

    v9 = v11;
  }

  v12 = AXStringByReplacingMiddleDots(v9);

  return v12;
}

@end