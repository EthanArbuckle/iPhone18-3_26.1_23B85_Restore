@interface SearchHintCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation SearchHintCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SearchHintCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SearchHintCellAccessibility *)&v3 accessibilityTraits];
}

@end