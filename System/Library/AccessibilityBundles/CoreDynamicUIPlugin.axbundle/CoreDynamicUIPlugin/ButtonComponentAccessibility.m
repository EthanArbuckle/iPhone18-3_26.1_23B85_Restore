@interface ButtonComponentAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation ButtonComponentAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = ButtonComponentAccessibility;
  return *MEMORY[0x29EDC7F70] | [(ButtonComponentAccessibility *)&v3 accessibilityTraits];
}

@end