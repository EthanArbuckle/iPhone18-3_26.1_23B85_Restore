@interface STUIStatusBarCellularNetworkTypeViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation STUIStatusBarCellularNetworkTypeViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STUIStatusBarCellularNetworkTypeView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"STUIStatusBarCellularNetworkTypeView" hasProperty:@"type" withType:"q"];
}

- (id)accessibilityLabel
{
  v2 = AXAnnotateDataNetworkViewWithType([(STUIStatusBarCellularNetworkTypeViewAccessibility *)self safeIntegerForKey:@"type"]);
  v3 = accessibilityLocalizedString(v2);

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = STUIStatusBarCellularNetworkTypeViewAccessibility;
  return *MEMORY[0x29EDC7580] | [(STUIStatusBarCellularNetworkTypeViewAccessibility *)&v3 accessibilityTraits];
}

@end