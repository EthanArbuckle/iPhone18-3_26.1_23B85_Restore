@interface CycleHistoryFilterSectionHeaderReusableViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation CycleHistoryFilterSectionHeaderReusableViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CycleHistoryFilterSectionHeaderReusableViewAccessibility;
  return *MEMORY[0x29EDC7F80] | [(CycleHistoryFilterSectionHeaderReusableViewAccessibility *)&v3 accessibilityTraits];
}

@end