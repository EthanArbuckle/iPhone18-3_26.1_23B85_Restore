@interface BuddyAppleIDTableHeaderViewAccessibility
- (BuddyAppleIDTableHeaderViewAccessibility)initWithFrame:(CGRect)frame;
@end

@implementation BuddyAppleIDTableHeaderViewAccessibility

- (BuddyAppleIDTableHeaderViewAccessibility)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = BuddyAppleIDTableHeaderViewAccessibility;
  v3 = [(BuddyAppleIDTableHeaderViewAccessibility *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = [(BuddyAppleIDTableHeaderViewAccessibility *)v3 safeValueForKey:@"_textLabel"];
  v5 = [(BuddyAppleIDTableHeaderViewAccessibility *)v3 safeValueForKey:@"_textLabel"];
  accessibilityTraits = [v5 accessibilityTraits];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | accessibilityTraits];

  return v3;
}

@end