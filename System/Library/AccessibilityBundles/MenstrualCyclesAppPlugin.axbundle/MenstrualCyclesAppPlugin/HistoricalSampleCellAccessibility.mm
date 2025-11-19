@interface HistoricalSampleCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation HistoricalSampleCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = HistoricalSampleCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(HistoricalSampleCellAccessibility *)&v3 accessibilityTraits];
}

@end