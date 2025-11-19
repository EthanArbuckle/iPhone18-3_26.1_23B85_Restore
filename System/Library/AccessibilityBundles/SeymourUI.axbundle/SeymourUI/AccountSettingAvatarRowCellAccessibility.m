@interface AccountSettingAvatarRowCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation AccountSettingAvatarRowCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = AccountSettingAvatarRowCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(AccountSettingAvatarRowCellAccessibility *)&v3 accessibilityTraits];
}

@end