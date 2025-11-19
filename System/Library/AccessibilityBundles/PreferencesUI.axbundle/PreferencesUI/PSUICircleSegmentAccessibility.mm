@interface PSUICircleSegmentAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation PSUICircleSegmentAccessibility

- (unint64_t)accessibilityTraits
{
  v4.receiver = self;
  v4.super_class = PSUICircleSegmentAccessibility;
  [(PSUICircleSegmentAccessibility *)&v4 accessibilityTraits];
  v2 = *MEMORY[0x29EDBDB18];
  return _AXTraitsRemoveTrait();
}

@end