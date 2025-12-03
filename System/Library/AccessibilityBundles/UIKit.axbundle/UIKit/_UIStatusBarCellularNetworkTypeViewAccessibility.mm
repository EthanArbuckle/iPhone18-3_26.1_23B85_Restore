@interface _UIStatusBarCellularNetworkTypeViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation _UIStatusBarCellularNetworkTypeViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:? isKindOfClass:?];
  [location[0] validateClass:@"_UIStatusBarCellularNetworkTypeView" hasProperty:@"type" withType:"q"];
  objc_storeStrong(location, 0);
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v6 = a2;
  v5 = [(_UIStatusBarCellularNetworkTypeViewAccessibility *)self safeIntegerForKey:@"type"];
  obj = axAnnotateDataNetworkViewWithType(v5);
  v3 = accessibilityLocalizedString(obj);
  objc_storeStrong(&obj, 0);

  return v3;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = _UIStatusBarCellularNetworkTypeViewAccessibility;
  return [(_UIStatusBarCellularNetworkTypeViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7580];
}

@end