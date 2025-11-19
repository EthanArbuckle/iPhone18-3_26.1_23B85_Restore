@interface UIStatusBarNotChargingItemViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation UIStatusBarNotChargingItemViewAccessibility

- (unint64_t)accessibilityTraits
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIStatusBarNotChargingItemViewAccessibility;
  return [(UIStatusBarNotChargingItemViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7580];
}

@end