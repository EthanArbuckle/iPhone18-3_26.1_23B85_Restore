@interface Calculator_UIApplicationAccessibility
- (id)_accessibilityActiveKeyboard;
@end

@implementation Calculator_UIApplicationAccessibility

- (id)_accessibilityActiveKeyboard
{
  v2 = [(Calculator_UIApplicationAccessibility *)self _accessibilityWindow];
  v3 = [v2 accessibilityViewWithIdentifier:@"CalculatorKeypadView"];

  return v3;
}

@end