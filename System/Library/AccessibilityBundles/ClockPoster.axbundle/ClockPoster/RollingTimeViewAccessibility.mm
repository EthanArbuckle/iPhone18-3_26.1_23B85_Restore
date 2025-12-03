@interface RollingTimeViewAccessibility
- (id)accessibilityLabel;
@end

@implementation RollingTimeViewAccessibility

- (id)accessibilityLabel
{
  date = [MEMORY[0x29EDB8DB0] date];
  v3 = AXClockTimeStringForDate();

  return v3;
}

@end