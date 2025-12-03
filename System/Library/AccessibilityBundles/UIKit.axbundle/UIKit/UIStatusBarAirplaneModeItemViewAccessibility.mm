@interface UIStatusBarAirplaneModeItemViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation UIStatusBarAirplaneModeItemViewAccessibility

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIStatusBarAirplaneModeItemViewAccessibility;
  return [(UIStatusBarAirplaneModeItemViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7580];
}

@end