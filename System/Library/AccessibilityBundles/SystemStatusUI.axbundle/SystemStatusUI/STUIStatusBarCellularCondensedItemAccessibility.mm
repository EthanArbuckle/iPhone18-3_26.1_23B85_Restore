@interface STUIStatusBarCellularCondensedItemAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (STUIStatusBarCellularCondensedItemAccessibility)init;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation STUIStatusBarCellularCondensedItemAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STUIStatusBarCellularCondensedItem" hasInstanceMethod:@"applyUpdate:toDisplayItem:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarCellularCondensedItem" hasInstanceMethod:@"dualSignalView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarDualCellularSignalView" hasInstanceMethod:@"topSignalView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarDualCellularSignalView" hasInstanceMethod:@"bottomSignalView" withFullSignature:{"@", 0}];
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

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  v7.receiver = self;
  v7.super_class = STUIStatusBarCellularCondensedItemAccessibility;
  v5 = [(STUIStatusBarCellularCondensedItemAccessibility *)&v7 applyUpdate:update toDisplayItem:item];
  [(STUIStatusBarCellularCondensedItemAccessibility *)self _accessibilityLoadAccessibilityInformation];

  return v5;
}

@end