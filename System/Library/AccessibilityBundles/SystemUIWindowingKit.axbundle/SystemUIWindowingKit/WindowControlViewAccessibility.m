@interface WindowControlViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation WindowControlViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = WindowControlViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(WindowControlViewAccessibility *)&v3 accessibilityTraits];
}

@end