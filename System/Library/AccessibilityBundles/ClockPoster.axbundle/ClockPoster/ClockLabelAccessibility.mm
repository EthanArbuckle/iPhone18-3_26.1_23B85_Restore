@interface ClockLabelAccessibility
- (id)accessibilityLabel;
@end

@implementation ClockLabelAccessibility

- (id)accessibilityLabel
{
  v2 = [MEMORY[0x29EDB8DB0] date];
  v3 = AXClockTimeStringForDate();

  return v3;
}

@end