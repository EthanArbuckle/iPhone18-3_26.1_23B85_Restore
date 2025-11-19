@interface BuddyAppleIDTableHeaderViewAccessibility
- (BuddyAppleIDTableHeaderViewAccessibility)initWithFrame:(CGRect)a3;
@end

@implementation BuddyAppleIDTableHeaderViewAccessibility

- (BuddyAppleIDTableHeaderViewAccessibility)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = BuddyAppleIDTableHeaderViewAccessibility;
  v3 = [(BuddyAppleIDTableHeaderViewAccessibility *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [(BuddyAppleIDTableHeaderViewAccessibility *)v3 safeValueForKey:@"_textLabel"];
  v5 = [(BuddyAppleIDTableHeaderViewAccessibility *)v3 safeValueForKey:@"_textLabel"];
  v6 = [v5 accessibilityTraits];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | v6];

  return v3;
}

@end