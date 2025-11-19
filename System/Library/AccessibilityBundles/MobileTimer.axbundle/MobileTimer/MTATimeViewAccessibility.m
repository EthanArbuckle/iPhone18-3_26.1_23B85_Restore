@interface MTATimeViewAccessibility
- (id)accessibilityLabel;
@end

@implementation MTATimeViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(MTATimeViewAccessibility *)self safeValueForKey:@"_timeLabel"];
  v3 = [v2 accessibilityLabel];

  v4 = AXLocalizeDurationTime();

  return v4;
}

@end