@interface STUIStatusBarNavigationItemAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (STUIStatusBarNavigationItemAccessibility)init;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation STUIStatusBarNavigationItemAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STUIStatusBarNavigationItem" hasInstanceMethod:@"nameView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarNavigationItem" hasInstanceMethod:@"applyUpdate:toDisplayItem:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarItemUpdate" hasInstanceMethod:@"data" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STStatusBarData" hasInstanceMethod:@"backNavigationEntry" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STStatusBarDataStringEntry" hasInstanceMethod:@"stringValue" withFullSignature:{"@", 0}];
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

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  v16.receiver = self;
  v16.super_class = STUIStatusBarNavigationItemAccessibility;
  updateCopy = update;
  v7 = [(STUIStatusBarNavigationItemAccessibility *)&v16 applyUpdate:updateCopy toDisplayItem:item];
  v8 = [updateCopy safeValueForKey:@"data"];

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