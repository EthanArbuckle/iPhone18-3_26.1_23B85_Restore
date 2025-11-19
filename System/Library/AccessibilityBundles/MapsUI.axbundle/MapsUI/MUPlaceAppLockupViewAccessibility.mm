@interface MUPlaceAppLockupViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
@end

@implementation MUPlaceAppLockupViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MUPlaceAppLockupView" hasInstanceMethod:@"viewModel" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"MUAppLockupViewModel" hasRequiredInstanceMethod:@"titleText"];
  [v3 validateClass:@"MUPlaceAppLockupView" hasInstanceVariable:@"_punchoutButton" withType:"UIButton"];
}

- (id)accessibilityLabel
{
  v2 = [(MUPlaceAppLockupViewAccessibility *)self safeValueForKey:@"viewModel"];
  v3 = [v2 safeStringForKey:@"titleText"];

  return v3;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(MUPlaceAppLockupViewAccessibility *)self safeUIViewForKey:@"_punchoutButton"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

@end