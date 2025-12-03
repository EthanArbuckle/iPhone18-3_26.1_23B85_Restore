@interface HUAlarmTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityValue;
@end

@implementation HUAlarmTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUAlarmTableViewCell" hasInstanceMethod:@"enabledSwitch" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUAlarmTableViewCell" hasInstanceMethod:@"timeLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUAlarmTableViewCell" hasInstanceMethod:@"nameAndDescriptionLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityValue
{
  v2 = [(HUAlarmTableViewCellAccessibility *)self safeUIViewForKey:@"enabledSwitch"];
  accessibilityValue = [v2 accessibilityValue];

  return accessibilityValue;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(HUAlarmTableViewCellAccessibility *)self safeUIViewForKey:@"enabledSwitch"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

@end