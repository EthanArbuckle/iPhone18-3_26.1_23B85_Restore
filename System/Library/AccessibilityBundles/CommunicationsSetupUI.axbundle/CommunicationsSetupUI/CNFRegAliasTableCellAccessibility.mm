@interface CNFRegAliasTableCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation CNFRegAliasTableCellAccessibility

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = CNFRegAliasTableCellAccessibility;
  accessibilityTraits = [(CNFRegAliasTableCellAccessibility *)&v7 accessibilityTraits];
  v4 = [(CNFRegAliasTableCellAccessibility *)self safeBoolForKey:@"hasCheckmark"];
  v5 = *MEMORY[0x29EDC7FC0];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

@end