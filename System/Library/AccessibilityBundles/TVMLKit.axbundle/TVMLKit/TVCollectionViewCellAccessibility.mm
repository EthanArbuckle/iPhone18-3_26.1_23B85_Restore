@interface TVCollectionViewCellAccessibility
@end

@implementation TVCollectionViewCellAccessibility

Class __71___TVCollectionViewCellAccessibility__accessibilityAncestorFocusParcel__block_invoke()
{
  result = NSClassFromString(&cfstr_Tvshelfview.isa);
  _accessibilityAncestorFocusParcel__TVShelfViewClass = result;
  return result;
}

uint64_t __88___TVCollectionViewCellAccessibility__atvaccessibilityCollectionViewCellSemanticContext__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Tvcardfloating.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end