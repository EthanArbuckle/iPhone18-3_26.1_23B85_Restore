@interface NTKWellnessCircularSmallComplicationViewAccessibility
- (id)accessibilityLabel;
@end

@implementation NTKWellnessCircularSmallComplicationViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(NTKWellnessCircularSmallComplicationViewAccessibility *)self safeValueForKey:@"_ringsView"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end