@interface CircleItemCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation CircleItemCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CircleItemCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CircleItemCellAccessibility *)&v3 accessibilityTraits];
}

@end