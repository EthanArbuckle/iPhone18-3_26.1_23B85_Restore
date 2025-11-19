@interface WDMedicalRecordSectionHeaderCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation WDMedicalRecordSectionHeaderCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = WDMedicalRecordSectionHeaderCellAccessibility;
  return *MEMORY[0x29EDC7F80] | [(WDMedicalRecordSectionHeaderCellAccessibility *)&v3 accessibilityTraits];
}

@end