@interface AKAuthorizationButtonAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation AKAuthorizationButtonAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = AKAuthorizationButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(AKAuthorizationButtonAccessibility *)&v3 accessibilityTraits];
}

@end