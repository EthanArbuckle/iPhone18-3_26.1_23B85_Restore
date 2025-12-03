@interface MapsUISwitchAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation MapsUISwitchAccessibility

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = MapsUISwitchAccessibility;
  accessibilityTraits = [(MapsUISwitchAccessibility *)&v7 accessibilityTraits];
  _accessibilityIsInSettingsTableViewCell = [(MapsUISwitchAccessibility *)self _accessibilityIsInSettingsTableViewCell];
  v5 = *MEMORY[0x29EDC7578];
  if (!_accessibilityIsInSettingsTableViewCell)
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

@end