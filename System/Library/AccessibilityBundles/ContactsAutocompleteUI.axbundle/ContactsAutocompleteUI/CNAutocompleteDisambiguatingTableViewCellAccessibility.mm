@interface CNAutocompleteDisambiguatingTableViewCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation CNAutocompleteDisambiguatingTableViewCellAccessibility

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = CNAutocompleteDisambiguatingTableViewCellAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(CNAutocompleteDisambiguatingTableViewCellAccessibility *)&v7 accessibilityTraits];
  v4 = [(CNAutocompleteDisambiguatingTableViewCellAccessibility *)self safeBoolForKey:@"isCheckmarkVisible"];
  v5 = *MEMORY[0x29EDC7FC0];
  if (!v4)
  {
    v5 = 0;
  }

  return v3 | v5;
}

@end