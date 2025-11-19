@interface CCUISensorAttributionSensorButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation CCUISensorAttributionSensorButtonAccessibility

- (id)accessibilityLabel
{
  v2 = [(CCUISensorAttributionSensorButtonAccessibility *)self safeValueForKey:@"descriptionLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end