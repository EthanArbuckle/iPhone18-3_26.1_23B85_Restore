@interface FIUIHealthSettingsTableViewCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation FIUIHealthSettingsTableViewCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = FIUIHealthSettingsTableViewCellAccessibility;
  return UIAccessibilityTraitButton | [(FIUIHealthSettingsTableViewCellAccessibility *)&v3 accessibilityTraits];
}

@end