@interface _UIStaticScrollBarAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)willMoveToWindow:(id)a3;
@end

@implementation _UIStaticScrollBarAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"_UIStaticScrollBar";
  [location[0] validateClass:"@" hasInstanceMethod:0 withFullSignature:?];
  v4 = "UIButton";
  [location[0] validateClass:v3 hasInstanceVariable:@"_upButton" withType:?];
  [location[0] validateClass:v3 hasInstanceVariable:@"_downButton" withType:v4];
  objc_storeStrong(v6, obj);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = _UIStaticScrollBarAccessibility;
  [(_UIStaticScrollBarAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(_UIStaticScrollBarAccessibility *)v7 safeValueForKey:@"_upButton"];
  [v3 setAccessibilityIdentifier:@"ScrollUp"];
  *&v2 = MEMORY[0x29EDC9740](v3).n128_u64[0];
  v4 = [(_UIStaticScrollBarAccessibility *)v7 safeValueForKey:@"_downButton", v2];
  [v4 setAccessibilityIdentifier:@"ScrollDown"];
  MEMORY[0x29EDC9740](v4);
}

- (void)willMoveToWindow:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = _UIStaticScrollBarAccessibility;
  [(_UIStaticScrollBarAccessibility *)&v3 willMoveToWindow:location[0]];
  [(_UIStaticScrollBarAccessibility *)v5 _accessibilityLoadAccessibilityInformation];
  objc_storeStrong(location, 0);
}

@end