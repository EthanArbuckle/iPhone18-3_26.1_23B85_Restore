@interface PSStaticTextTableCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation PSStaticTextTableCellAccessibility

- (unint64_t)accessibilityTraits
{
  v5.receiver = self;
  v5.super_class = PSStaticTextTableCellAccessibility;
  accessibilityTraits = [(PSStaticTextTableCellAccessibility *)&v5 accessibilityTraits];
  v3 = *MEMORY[0x29EDC7F70];
  if ((*MEMORY[0x29EDC7F70] & accessibilityTraits) == 0)
  {
    v3 = 0;
  }

  return v3 ^ accessibilityTraits;
}

@end