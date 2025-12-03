@interface CCUISensorAttributionSensorButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation CCUISensorAttributionSensorButtonAccessibility

- (id)accessibilityLabel
{
  v2 = [(CCUISensorAttributionSensorButtonAccessibility *)self safeValueForKey:@"descriptionLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end