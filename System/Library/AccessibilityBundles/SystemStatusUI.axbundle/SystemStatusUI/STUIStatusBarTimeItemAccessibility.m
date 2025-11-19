@interface STUIStatusBarTimeItemAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (STUIStatusBarTimeItemAccessibility)init;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation STUIStatusBarTimeItemAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STUIStatusBarTimeItem" hasInstanceMethod:@"applyUpdate:toDisplayItem:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"STUIStatusBarTimeItem" hasInstanceMethod:@"timeView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STUIStatusBarTimeItem" hasInstanceMethod:@"pillTimeView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STUIStatusBarTimeItem" hasInstanceMethod:@"shortTimeView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STUIStatusBarTimeItem" hasInstanceMethod:@"dateView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = STUIStatusBarTimeItemAccessibility;
  [(STUIStatusBarTimeItemAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(STUIStatusBarTimeItemAccessibility *)self safeUIViewForKey:@"timeView"];
  [v3 _accessibilitySetBoolValue:1 forKey:@"AccessibilityStatusBarStringIsTime"];
  v4 = [(STUIStatusBarTimeItemAccessibility *)self safeUIViewForKey:@"shortTimeView"];
  [v4 _accessibilitySetBoolValue:1 forKey:@"AccessibilityStatusBarStringIsTime"];
  v5 = [(STUIStatusBarTimeItemAccessibility *)self safeUIViewForKey:@"pillTimeView"];
  [v5 _accessibilitySetBoolValue:1 forKey:@"AccessibilityStatusBarStringIsPillTime"];
  v6 = [(STUIStatusBarTimeItemAccessibility *)self safeUIViewForKey:@"dateView"];
  [v6 _accessibilitySetBoolValue:1 forKey:@"AccessibilityStatusBarStringIsDate"];
}

- (STUIStatusBarTimeItemAccessibility)init
{
  v5.receiver = self;
  v5.super_class = STUIStatusBarTimeItemAccessibility;
  v2 = [(STUIStatusBarTimeItemAccessibility *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(STUIStatusBarTimeItemAccessibility *)v2 _accessibilityLoadAccessibilityInformation];
  }

  return v3;
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v7.receiver = self;
  v7.super_class = STUIStatusBarTimeItemAccessibility;
  v5 = [(STUIStatusBarTimeItemAccessibility *)&v7 applyUpdate:a3 toDisplayItem:a4];
  [(STUIStatusBarTimeItemAccessibility *)self _accessibilityLoadAccessibilityInformation];

  return v5;
}

@end