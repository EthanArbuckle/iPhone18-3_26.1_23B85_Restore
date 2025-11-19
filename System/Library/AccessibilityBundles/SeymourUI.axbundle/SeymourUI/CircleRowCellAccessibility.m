@interface CircleRowCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation CircleRowCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CircleRowCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CircleRowCellAccessibility *)&v3 accessibilityTraits];
}

@end