@interface NTKCircularWellnessUtilityComplicationViewAccessibility
- (id)accessibilityLabel;
@end

@implementation NTKCircularWellnessUtilityComplicationViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(NTKCircularWellnessUtilityComplicationViewAccessibility *)self safeValueForKey:@"_ringsView"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end