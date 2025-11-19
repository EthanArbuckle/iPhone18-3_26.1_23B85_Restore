@interface SBFluidSwitcherButtonAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation SBFluidSwitcherButtonAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SBFluidSwitcherButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SBFluidSwitcherButtonAccessibility *)&v3 accessibilityTraits];
}

@end