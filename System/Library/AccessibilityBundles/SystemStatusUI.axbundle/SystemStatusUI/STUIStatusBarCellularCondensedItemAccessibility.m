@interface STUIStatusBarCellularCondensedItemAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (STUIStatusBarCellularCondensedItemAccessibility)init;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation STUIStatusBarCellularCondensedItemAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STUIStatusBarCellularCondensedItem" hasInstanceMethod:@"applyUpdate:toDisplayItem:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"STUIStatusBarCellularCondensedItem" hasInstanceMethod:@"dualSignalView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STUIStatusBarDualCellularSignalView" hasInstanceMethod:@"topSignalView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STUIStatusBarDualCellularSignalView" hasInstanceMethod:@"bottomSignalView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = STUIStatusBarCellularCondensedItemAccessibility;
  [(STUIStatusBarCellularCondensedItemAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(STUIStatusBarCellularCondensedItemAccessibility *)self safeValueForKey:@"dualSignalView"];
  v4 = [v3 safeUIViewForKey:@"topSignalView"];
  v5 = [v3 safeUIViewForKey:@"bottomSignalView"];
  [v4 _accessibilitySetRetainedValue:@"status.signal.bars" forKey:@"AccessibilityStatusBarSignalViewLabelKey"];
  [v5 _accessibilitySetRetainedValue:@"status.signal.bars" forKey:@"AccessibilityStatusBarSignalViewLabelKey"];
}

- (STUIStatusBarCellularCondensedItemAccessibility)init
{
  v5.receiver = self;
  v5.super_class = STUIStatusBarCellularCondensedItemAccessibility;
  v2 = [(STUIStatusBarCellularCondensedItemAccessibility *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(STUIStatusBarCellularCondensedItemAccessibility *)v2 _accessibilityLoadAccessibilityInformation];
  }

  return v3;
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v7.receiver = self;
  v7.super_class = STUIStatusBarCellularCondensedItemAccessibility;
  v5 = [(STUIStatusBarCellularCondensedItemAccessibility *)&v7 applyUpdate:a3 toDisplayItem:a4];
  [(STUIStatusBarCellularCondensedItemAccessibility *)self _accessibilityLoadAccessibilityInformation];

  return v5;
}

@end