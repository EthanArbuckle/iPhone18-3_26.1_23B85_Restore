@interface _UIStatusBarCellularCondensedItemAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (_UIStatusBarCellularCondensedItemAccessibility)init;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation _UIStatusBarCellularCondensedItemAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v7 = location;
  v6 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v5 = "@";
  v3 = @"_UIStatusBarCellularCondensedItem";
  [location[0] validateClass:"@" hasInstanceMethod:"@" withFullSignature:0];
  [location[0] validateClass:v3 hasInstanceMethod:@"dualSignalView" withFullSignature:{v5, 0}];
  v4 = @"_UIStatusBarDualCellularSignalView";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"bottomSignalView" withFullSignature:{v5, 0}];
  objc_storeStrong(v7, v6);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = _UIStatusBarCellularCondensedItemAccessibility;
  [(_UIStatusBarCellularCondensedItemAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v4 = [(_UIStatusBarCellularCondensedItemAccessibility *)selfCopy safeValueForKey:@"dualSignalView"];
  v3 = [v4 safeUIViewForKey:@"topSignalView"];
  v2 = [v4 safeUIViewForKey:@"bottomSignalView"];
  [v3 _accessibilitySetRetainedValue:? forKey:?];
  [v2 _accessibilitySetRetainedValue:@"status.signal.bars" forKey:@"AccessibilityStatusBarSignalViewLabelKey"];
  objc_storeStrong(&v2, 0);
  objc_storeStrong(&v3, 0);
  objc_storeStrong(&v4, 0);
}

- (_UIStatusBarCellularCondensedItemAccessibility)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = _UIStatusBarCellularCondensedItemAccessibility;
  v6 = [(_UIStatusBarCellularCondensedItemAccessibility *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    [(_UIStatusBarCellularCondensedItemAccessibility *)v6 _accessibilityLoadAccessibilityInformation];
  }

  v3 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  v9 = 0;
  objc_storeStrong(&v9, item);
  v7.receiver = selfCopy;
  v7.super_class = _UIStatusBarCellularCondensedItemAccessibility;
  v8 = [(_UIStatusBarCellularCondensedItemAccessibility *)&v7 applyUpdate:location[0] toDisplayItem:v9];
  [(_UIStatusBarCellularCondensedItemAccessibility *)selfCopy _accessibilityLoadAccessibilityInformation];
  v6 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v6;
}

@end