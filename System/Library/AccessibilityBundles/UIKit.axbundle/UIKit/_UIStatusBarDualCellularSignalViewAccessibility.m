@interface _UIStatusBarDualCellularSignalViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_commonInit;
@end

@implementation _UIStatusBarDualCellularSignalViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"_UIStatusBarDualCellularSignalView";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  v4 = "_UIStatusBarCellularSignalView";
  [location[0] validateClass:v3 hasInstanceVariable:@"_topSignalView" withType:?];
  [location[0] validateClass:v3 hasInstanceVariable:@"_bottomSignalView" withType:v4];
  objc_storeStrong(v6, obj);
}

- (void)_commonInit
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = _UIStatusBarDualCellularSignalViewAccessibility;
  [(_UIStatusBarDualCellularSignalViewAccessibility *)&v2 _commonInit];
  [(_UIStatusBarDualCellularSignalViewAccessibility *)v4 _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = _UIStatusBarDualCellularSignalViewAccessibility;
  [(_UIStatusBarDualCellularSignalViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(_UIStatusBarDualCellularSignalViewAccessibility *)v7 safeValueForKey:@"_topSignalView"];
  [v3 _accessibilitySetBoolValue:1 forKey:@"PrimaryCellular"];
  *&v2 = MEMORY[0x29EDC9740](v3).n128_u64[0];
  v4 = [(_UIStatusBarDualCellularSignalViewAccessibility *)v7 safeValueForKey:@"_bottomSignalView", v2];
  [v4 _accessibilitySetBoolValue:1 forKey:@"SecondaryCellular"];
  MEMORY[0x29EDC9740](v4);
}

@end