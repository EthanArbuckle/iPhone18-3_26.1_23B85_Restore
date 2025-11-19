@interface SocialOnboardingNetworkCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation SocialOnboardingNetworkCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SocialOnboardingNetworkCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SocialOnboardingNetworkCellAccessibility *)&v3 accessibilityTraits];
}

@end