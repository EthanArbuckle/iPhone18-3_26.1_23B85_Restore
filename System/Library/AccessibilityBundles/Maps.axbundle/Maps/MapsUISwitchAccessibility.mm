@interface MapsUISwitchAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation MapsUISwitchAccessibility

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = MapsUISwitchAccessibility;
  v3 = [(MapsUISwitchAccessibility *)&v7 accessibilityTraits];
  v4 = [(MapsUISwitchAccessibility *)self _accessibilityIsInSettingsTableViewCell];
  v5 = *MEMORY[0x29EDC7578];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v3;
}

@end