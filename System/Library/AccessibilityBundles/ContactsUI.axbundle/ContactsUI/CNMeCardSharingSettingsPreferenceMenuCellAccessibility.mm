@interface CNMeCardSharingSettingsPreferenceMenuCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation CNMeCardSharingSettingsPreferenceMenuCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CNMeCardSharingSettingsPreferenceMenuCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CNMeCardSharingSettingsPreferenceMenuCellAccessibility *)&v3 accessibilityTraits];
}

@end