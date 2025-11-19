@interface SleepStageWidgetCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation SleepStageWidgetCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SleepStageWidgetCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SleepStageWidgetCellAccessibility *)&v3 accessibilityTraits];
}

@end