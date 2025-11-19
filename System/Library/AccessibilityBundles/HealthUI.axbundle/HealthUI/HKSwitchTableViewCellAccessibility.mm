@interface HKSwitchTableViewCellAccessibility
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation HKSwitchTableViewCellAccessibility

- (unint64_t)accessibilityTraits
{
  v2 = [(HKSwitchTableViewCellAccessibility *)self safeValueForKey:@"_switch"];
  v3 = [v2 accessibilityTraits];

  return v3;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(HKSwitchTableViewCellAccessibility *)self safeValueForKey:@"_switch"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (id)accessibilityValue
{
  v2 = [(HKSwitchTableViewCellAccessibility *)self safeValueForKey:@"_switch"];
  v3 = [v2 accessibilityValue];

  return v3;
}

@end