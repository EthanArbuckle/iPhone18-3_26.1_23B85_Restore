@interface AMUIDateTimeViewAccessibility
- (id)accessibilityLabel;
@end

@implementation AMUIDateTimeViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(AMUIDateTimeViewAccessibility *)self safeValueForKey:@"_dateLabel"];
  if ([v2 isHidden])
  {
    date = [MEMORY[0x29EDB8DB0] date];
    v4 = AXClockTimeStringForDate();
  }

  else
  {
    date = [v2 accessibilityLabel];
    date2 = [MEMORY[0x29EDB8DB0] date];
    v7 = AXClockTimeStringForDate();
    v4 = __UIAXStringForVariables();
  }

  return v4;
}

@end