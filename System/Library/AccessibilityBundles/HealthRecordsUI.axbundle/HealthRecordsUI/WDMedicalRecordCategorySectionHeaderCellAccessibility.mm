@interface WDMedicalRecordCategorySectionHeaderCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation WDMedicalRecordCategorySectionHeaderCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = WDMedicalRecordCategorySectionHeaderCellAccessibility;
  return *MEMORY[0x29EDC7F80] | [(WDMedicalRecordCategorySectionHeaderCellAccessibility *)&v3 accessibilityTraits];
}

@end