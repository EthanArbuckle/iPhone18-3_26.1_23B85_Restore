@interface _UIStatusBarTimeItemAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (_UIStatusBarTimeItemAccessibility)init;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation _UIStatusBarTimeItemAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"_UIStatusBarTimeItem";
  v4 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"pillTimeView" withFullSignature:{v4, 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"shortTimeView" withFullSignature:{v4, 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"dateView" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, obj);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8 = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = _UIStatusBarTimeItemAccessibility;
  [(_UIStatusBarTimeItemAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v5 = [(_UIStatusBarTimeItemAccessibility *)v8 safeUIViewForKey:@"timeView"];
  [v5 _accessibilitySetBoolValue:1 forKey:?];
  v4 = [(_UIStatusBarTimeItemAccessibility *)v8 safeUIViewForKey:@"shortTimeView"];
  [v4 _accessibilitySetBoolValue:1 forKey:@"AccessibilityStatusBarStringIsTime"];
  v3 = [(_UIStatusBarTimeItemAccessibility *)v8 safeUIViewForKey:@"pillTimeView"];
  [v3 _accessibilitySetBoolValue:1 forKey:@"AccessibilityStatusBarStringIsPillTime"];
  v2 = [(_UIStatusBarTimeItemAccessibility *)v8 safeUIViewForKey:@"dateView"];
  [v2 _accessibilitySetBoolValue:1 forKey:@"AccessibilityStatusBarStringIsDate"];
  objc_storeStrong(&v2, 0);
  objc_storeStrong(&v3, 0);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&v5, 0);
}

- (_UIStatusBarTimeItemAccessibility)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = _UIStatusBarTimeItemAccessibility;
  v6 = [(_UIStatusBarTimeItemAccessibility *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    [(_UIStatusBarTimeItemAccessibility *)v6 _accessibilityLoadAccessibilityInformation];
  }

  v3 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

@end