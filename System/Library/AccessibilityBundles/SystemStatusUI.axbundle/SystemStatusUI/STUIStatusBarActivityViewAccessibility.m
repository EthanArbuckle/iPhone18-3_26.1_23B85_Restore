@interface STUIStatusBarActivityViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation STUIStatusBarActivityViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = STUIStatusBarActivityViewAccessibility;
  return *MEMORY[0x29EDC7580] | [(STUIStatusBarActivityViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC74F8];
}

@end