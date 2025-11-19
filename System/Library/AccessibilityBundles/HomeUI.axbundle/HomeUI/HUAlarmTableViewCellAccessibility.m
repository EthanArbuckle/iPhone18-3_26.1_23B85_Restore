@interface HUAlarmTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityValue;
@end

@implementation HUAlarmTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUAlarmTableViewCell" hasInstanceMethod:@"enabledSwitch" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUAlarmTableViewCell" hasInstanceMethod:@"timeLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUAlarmTableViewCell" hasInstanceMethod:@"nameAndDescriptionLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityValue
{
  v2 = [(HUAlarmTableViewCellAccessibility *)self safeUIViewForKey:@"enabledSwitch"];
  v3 = [v2 accessibilityValue];

  return v3;
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