@interface MTAWorldClockMapCityViewAccessibility
- (id)accessibilityLabel;
@end

@implementation MTAWorldClockMapCityViewAccessibility

- (id)accessibilityLabel
{
  v3 = [(MTAWorldClockMapCityViewAccessibility *)self safeValueForKey:@"_nameLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(MTAWorldClockMapCityViewAccessibility *)self safeValueForKey:@"_timeLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];

  v7 = __UIAXStringForVariables();

  return v7;
}

@end