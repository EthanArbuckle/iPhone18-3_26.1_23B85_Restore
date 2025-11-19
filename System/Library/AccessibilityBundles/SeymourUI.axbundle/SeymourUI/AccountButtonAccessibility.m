@interface AccountButtonAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation AccountButtonAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = AccountButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(AccountButtonAccessibility *)&v3 accessibilityTraits];
}

@end