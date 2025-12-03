@interface SBAppSwitcherPeopleContactViewAccessibility
- (id)accessibilityHint;
@end

@implementation SBAppSwitcherPeopleContactViewAccessibility

- (id)accessibilityHint
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = accessibilityLocalizedString(@"people.picker.hint");
  accessibilityLabel = [(SBAppSwitcherPeopleContactViewAccessibility *)self accessibilityLabel];
  v6 = [v3 stringWithFormat:v4, accessibilityLabel];

  return v6;
}

@end