@interface Calculator_UIApplicationAccessibility
- (id)_accessibilityActiveKeyboard;
@end

@implementation Calculator_UIApplicationAccessibility

- (id)_accessibilityActiveKeyboard
{
  _accessibilityWindow = [(Calculator_UIApplicationAccessibility *)self _accessibilityWindow];
  v3 = [_accessibilityWindow accessibilityViewWithIdentifier:@"CalculatorKeypadView"];

  return v3;
}

@end