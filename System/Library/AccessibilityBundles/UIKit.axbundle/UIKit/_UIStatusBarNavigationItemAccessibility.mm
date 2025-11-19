@interface _UIStatusBarNavigationItemAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (_UIStatusBarNavigationItemAccessibility)init;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation _UIStatusBarNavigationItemAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  v5 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"_UIStatusBarNavigationItem";
  v4 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"applyUpdate:toDisplayItem:" withFullSignature:{v4, v4, 0}];
  [location[0] validateClass:@"_UIStatusBarItemUpdate" hasInstanceMethod:@"data" withFullSignature:{v4, 0}];
  [location[0] validateClass:@"_UIStatusBarData" hasInstanceMethod:@"backNavigationEntry" withFullSignature:{v4, 0}];
  [location[0] validateClass:@"_UIStatusBarDataStringEntry" hasInstanceMethod:@"stringValue" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, v5);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = _UIStatusBarNavigationItemAccessibility;
  [(_UIStatusBarNavigationItemAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  v2 = [(_UIStatusBarNavigationItemAccessibility *)v5 safeUIViewForKey:@"nameView"];
  [v2 _accessibilitySetBoolValue:1 forKey:@"AccessibilityStatusBarStringIsBreadcrumb"];
  [v2 setAccessibilityRespondsToUserInteraction:1];
  [v2 setAccessibilityTraits:*MEMORY[0x29EDC7580] | *MEMORY[0x29EDC7F70]];
  objc_storeStrong(&v2, 0);
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v15.receiver = v19;
  v15.super_class = _UIStatusBarNavigationItemAccessibility;
  v16 = [(_UIStatusBarNavigationItemAccessibility *)&v15 applyUpdate:location[0] toDisplayItem:v17];
  v8 = [location[0] safeValueForKey:@"data"];
  v7 = [v8 safeValueForKey:@"backNavigationEntry"];
  v14 = [v7 safeStringForKey:@"stringValue"];
  MEMORY[0x29EDC9740](v7);
  *&v4 = MEMORY[0x29EDC9740](v8).n128_u64[0];
  v12 = [(_UIStatusBarNavigationItemAccessibility *)v19 safeUIViewForKey:@"nameView", v4];
  v9 = MEMORY[0x29EDBA0F8];
  v11 = accessibilityLocalizedString(@"breadcrumb.return.to.app");
  v10 = [v9 stringWithFormat:v14];
  [v12 setAccessibilityLabel:?];
  MEMORY[0x29EDC9740](v10);
  MEMORY[0x29EDC9740](v11);
  MEMORY[0x29EDC9740](v12);
  v13 = MEMORY[0x29EDC9748](v16);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);

  return v13;
}

- (_UIStatusBarNavigationItemAccessibility)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = _UIStatusBarNavigationItemAccessibility;
  v6 = [(_UIStatusBarNavigationItemAccessibility *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    [(_UIStatusBarNavigationItemAccessibility *)v6 _accessibilityLoadAccessibilityInformation];
  }

  v3 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

@end