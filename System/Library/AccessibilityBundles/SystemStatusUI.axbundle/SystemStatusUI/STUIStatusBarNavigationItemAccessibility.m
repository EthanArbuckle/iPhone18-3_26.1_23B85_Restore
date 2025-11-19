@interface STUIStatusBarNavigationItemAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (STUIStatusBarNavigationItemAccessibility)init;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation STUIStatusBarNavigationItemAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STUIStatusBarNavigationItem" hasInstanceMethod:@"nameView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STUIStatusBarNavigationItem" hasInstanceMethod:@"applyUpdate:toDisplayItem:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"STUIStatusBarItemUpdate" hasInstanceMethod:@"data" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STStatusBarData" hasInstanceMethod:@"backNavigationEntry" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STStatusBarDataStringEntry" hasInstanceMethod:@"stringValue" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = STUIStatusBarNavigationItemAccessibility;
  [(STUIStatusBarNavigationItemAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(STUIStatusBarNavigationItemAccessibility *)self safeUIViewForKey:@"nameView"];
  [v3 _accessibilitySetBoolValue:1 forKey:@"AccessibilityStatusBarStringIsBreadcrumb"];
  [v3 setAccessibilityRespondsToUserInteraction:1];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F70] | *MEMORY[0x29EDC7580]];
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v16.receiver = self;
  v16.super_class = STUIStatusBarNavigationItemAccessibility;
  v6 = a3;
  v7 = [(STUIStatusBarNavigationItemAccessibility *)&v16 applyUpdate:v6 toDisplayItem:a4];
  v8 = [v6 safeValueForKey:@"data"];

  v9 = [v8 safeValueForKey:@"backNavigationEntry"];
  v10 = [v9 safeStringForKey:@"stringValue"];

  v11 = [(STUIStatusBarNavigationItemAccessibility *)self safeUIViewForKey:@"nameView"];
  v12 = MEMORY[0x29EDBA0F8];
  v13 = accessibilityLocalizedString(@"breadcrumb.return.to.app");
  v14 = [v12 stringWithFormat:v13, v10];
  [v11 setAccessibilityLabel:v14];

  return v7;
}

- (STUIStatusBarNavigationItemAccessibility)init
{
  v5.receiver = self;
  v5.super_class = STUIStatusBarNavigationItemAccessibility;
  v2 = [(STUIStatusBarNavigationItemAccessibility *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(STUIStatusBarNavigationItemAccessibility *)v2 _accessibilityLoadAccessibilityInformation];
  }

  return v3;
}

@end