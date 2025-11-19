@interface AlertActionTrailingImageViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation AlertActionTrailingImageViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = AlertActionTrailingImageViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(AlertActionTrailingImageViewAccessibility *)&v3 accessibilityTraits];
}

@end