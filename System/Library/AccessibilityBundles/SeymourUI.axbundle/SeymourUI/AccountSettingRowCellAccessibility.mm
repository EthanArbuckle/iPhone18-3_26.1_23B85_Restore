@interface AccountSettingRowCellAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation AccountSettingRowCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(AccountSettingRowCellAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = AccountSettingRowCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(AccountSettingRowCellAccessibility *)&v3 accessibilityTraits];
}

@end