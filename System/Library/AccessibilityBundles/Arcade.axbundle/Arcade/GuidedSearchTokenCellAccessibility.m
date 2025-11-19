@interface GuidedSearchTokenCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation GuidedSearchTokenCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = GuidedSearchTokenCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(GuidedSearchTokenCellAccessibility *)&v3 accessibilityTraits];
}

@end