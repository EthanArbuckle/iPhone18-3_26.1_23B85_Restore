@interface CircularProgressViewAccessibility
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation CircularProgressViewAccessibility

- (id)accessibilityValue
{
  [(CircularProgressViewAccessibility *)self safeCGFloatForKey:@"accessibilityProgressValue"];

  return AXFormatFloatWithPercentage();
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CircularProgressViewAccessibility;
  return *MEMORY[0x29EDC7FF0] | [(CircularProgressViewAccessibility *)&v3 accessibilityTraits];
}

@end