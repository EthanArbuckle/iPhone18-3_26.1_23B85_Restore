@interface STUIStatusBarDualCellularSignalViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_commonInit;
@end

@implementation STUIStatusBarDualCellularSignalViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STUIStatusBarDualCellularSignalView" hasInstanceMethod:@"_commonInit" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"STUIStatusBarDualCellularSignalView" hasInstanceVariable:@"_topSignalView" withType:"STUIStatusBarCellularSignalView"];
  [validationsCopy validateClass:@"STUIStatusBarDualCellularSignalView" hasInstanceVariable:@"_bottomSignalView" withType:"STUIStatusBarCellularSignalView"];
}

- (void)_commonInit
{
  v3.receiver = self;
  v3.super_class = STUIStatusBarDualCellularSignalViewAccessibility;
  [(STUIStatusBarDualCellularSignalViewAccessibility *)&v3 _commonInit];
  [(STUIStatusBarDualCellularSignalViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = STUIStatusBarDualCellularSignalViewAccessibility;
  [(STUIStatusBarDualCellularSignalViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(STUIStatusBarDualCellularSignalViewAccessibility *)self safeValueForKey:@"_topSignalView"];
  [v3 _accessibilitySetBoolValue:1 forKey:@"PrimaryCellular"];

  v4 = [(STUIStatusBarDualCellularSignalViewAccessibility *)self safeValueForKey:@"_bottomSignalView"];
  [v4 _accessibilitySetBoolValue:1 forKey:@"SecondaryCellular"];
}

@end