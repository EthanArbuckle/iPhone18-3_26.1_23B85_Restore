@interface STUIStatusBarImageViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation STUIStatusBarImageViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = STUIStatusBarImageViewAccessibility;
  return *MEMORY[0x29EDC7580] | [(STUIStatusBarImageViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC74F8];
}

@end