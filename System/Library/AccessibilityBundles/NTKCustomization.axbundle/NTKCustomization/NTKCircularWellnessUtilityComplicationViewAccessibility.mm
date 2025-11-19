@interface NTKCircularWellnessUtilityComplicationViewAccessibility
- (id)accessibilityLabel;
@end

@implementation NTKCircularWellnessUtilityComplicationViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(NTKCircularWellnessUtilityComplicationViewAccessibility *)self safeValueForKey:@"_ringsView"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end