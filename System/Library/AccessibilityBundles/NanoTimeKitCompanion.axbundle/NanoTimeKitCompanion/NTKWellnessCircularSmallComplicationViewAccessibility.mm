@interface NTKWellnessCircularSmallComplicationViewAccessibility
- (id)accessibilityLabel;
@end

@implementation NTKWellnessCircularSmallComplicationViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(NTKWellnessCircularSmallComplicationViewAccessibility *)self safeValueForKey:@"_ringsView"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end