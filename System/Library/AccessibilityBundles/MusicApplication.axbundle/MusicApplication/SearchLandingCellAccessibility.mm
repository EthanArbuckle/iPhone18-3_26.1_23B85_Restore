@interface SearchLandingCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation SearchLandingCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SearchLandingCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SearchLandingCellAccessibility *)&v3 accessibilityTraits];
}

@end