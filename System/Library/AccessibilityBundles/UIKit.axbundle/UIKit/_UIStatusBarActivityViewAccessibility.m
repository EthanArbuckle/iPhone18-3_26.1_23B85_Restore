@interface _UIStatusBarActivityViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation _UIStatusBarActivityViewAccessibility

- (unint64_t)accessibilityTraits
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = _UIStatusBarActivityViewAccessibility;
  return [(_UIStatusBarActivityViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7580] | *MEMORY[0x29EDC74F8];
}

@end