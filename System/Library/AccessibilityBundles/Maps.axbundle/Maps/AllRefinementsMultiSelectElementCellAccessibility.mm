@interface AllRefinementsMultiSelectElementCellAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation AllRefinementsMultiSelectElementCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(AllRefinementsMultiSelectElementCellAccessibility *)self _axRefinementMultiSelectButton];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(AllRefinementsMultiSelectElementCellAccessibility *)self _axRefinementMultiSelectButton];
  v3 = [v2 accessibilityTraits];

  return v3;
}

uint64_t __83__AllRefinementsMultiSelectElementCellAccessibility__axRefinementMultiSelectButton__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_SwiftuiAccessi.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = [v2 accessibilityIdentifier];

  LODWORD(v2) = [v4 isEqualToString:@"RefinementMultiSelectButton"];
  return isKindOfClass & v2 & 1;
}

@end