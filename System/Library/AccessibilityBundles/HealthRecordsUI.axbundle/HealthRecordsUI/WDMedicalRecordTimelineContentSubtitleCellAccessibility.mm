@interface WDMedicalRecordTimelineContentSubtitleCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation WDMedicalRecordTimelineContentSubtitleCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = WDMedicalRecordTimelineContentSubtitleCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(WDMedicalRecordTimelineContentSubtitleCellAccessibility *)&v3 accessibilityTraits];
}

@end