@interface NTKMonogramCircularSmallComplicationViewAccessibility
- (id)accessibilityLabel;
@end

@implementation NTKMonogramCircularSmallComplicationViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(NTKMonogramCircularSmallComplicationViewAccessibility *)self safeValueForKey:@"_label"];
  v3 = __UIAXStringForVariables();

  return v3;
}

@end