@interface MTAWorldClockMapCityViewAccessibility
- (id)accessibilityLabel;
@end

@implementation MTAWorldClockMapCityViewAccessibility

- (id)accessibilityLabel
{
  v3 = [(MTAWorldClockMapCityViewAccessibility *)self safeValueForKey:@"_nameLabel"];
  v4 = [v3 accessibilityLabel];

  v5 = [(MTAWorldClockMapCityViewAccessibility *)self safeValueForKey:@"_timeLabel"];
  v6 = [v5 accessibilityLabel];

  v7 = __UIAXStringForVariables();

  return v7;
}

@end