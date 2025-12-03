@interface PKSettingTableCellAccessibility
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityElements;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation PKSettingTableCellAccessibility

- (id)accessibilityElements
{
  v4.receiver = self;
  v4.super_class = PKSettingTableCellAccessibility;
  accessibilityElements = [(PKSettingTableCellAccessibility *)&v4 accessibilityElements];

  return accessibilityElements;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(PKSettingTableCellAccessibility *)self safeValueForKey:@"_settingSwitch"];
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
  v2 = [(PKSettingTableCellAccessibility *)self safeValueForKey:@"_settingSwitch"];
  accessibilityValue = [v2 accessibilityValue];

  return accessibilityValue;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(PKSettingTableCellAccessibility *)self safeValueForKey:@"_settingSwitch"];
  accessibilityTraits = [v2 accessibilityTraits];

  return accessibilityTraits;
}

@end