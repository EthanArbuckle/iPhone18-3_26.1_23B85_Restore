@interface _UIStatusBarImageViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation _UIStatusBarImageViewAccessibility

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = _UIStatusBarImageViewAccessibility;
  return [(_UIStatusBarImageViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7580] | *MEMORY[0x29EDC74F8];
}

@end