@interface TextItemCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation TextItemCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = TextItemCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(TextItemCellAccessibility *)&v3 accessibilityTraits];
}

@end