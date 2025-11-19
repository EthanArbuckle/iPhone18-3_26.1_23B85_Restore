@interface MTUIAlarmViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation MTUIAlarmViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MTUIAlarmView" hasInstanceMethod:@"enabledSwitch" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTUIAlarmView" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTUIAlarmView" hasInstanceMethod:@"timeLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTUIAlarmView" hasInstanceMethod:@"repeatText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTUIAlarmView" hasInstanceMethod:@"detailLabel" withFullSignature:{"@", 0}];
}

- (BOOL)isAccessibilityElement
{
  v3 = [(MTUIAlarmViewAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];

  if (v3)
  {
    return 0;
  }

  v5 = [(MTUIAlarmViewAccessibility *)self isAccessibilityUserDefinedElement];

  if (!v5)
  {
    return 1;
  }

  v6 = [(MTUIAlarmViewAccessibility *)self isAccessibilityUserDefinedElement];
  v7 = [v6 BOOLValue];

  return v7;
}

- (id)accessibilityLabel
{
  v3 = [(MTUIAlarmViewAccessibility *)self safeValueForKey:@"name"];
  v4 = [(MTUIAlarmViewAccessibility *)self safeValueForKey:@"timeLabel"];
  v5 = [v4 accessibilityLabel];
  v6 = [(MTUIAlarmViewAccessibility *)self safeValueForKey:@"repeatText"];
  v7 = [(MTUIAlarmViewAccessibility *)self safeValueForKey:@"detailLabel"];
  v10 = [v7 accessibilityLabel];
  v8 = __UIAXStringForVariables();

  return v8;
}

- (id)accessibilityValue
{
  v2 = [(MTUIAlarmViewAccessibility *)self safeValueForKey:@"enabledSwitch"];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(MTUIAlarmViewAccessibility *)self safeValueForKey:@"enabledSwitch"];
  v3 = [v2 accessibilityTraits];

  return v3;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(MTUIAlarmViewAccessibility *)self safeValueForKey:@"enabledSwitch"];
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