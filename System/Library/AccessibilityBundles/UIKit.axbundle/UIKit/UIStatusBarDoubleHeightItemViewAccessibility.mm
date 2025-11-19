@interface UIStatusBarDoubleHeightItemViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation UIStatusBarDoubleHeightItemViewAccessibility

- (unint64_t)accessibilityTraits
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIStatusBarDoubleHeightItemViewAccessibility;
  return [(UIStatusBarDoubleHeightItemViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7580];
}

@end