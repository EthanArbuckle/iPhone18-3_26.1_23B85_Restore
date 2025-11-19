@interface UICollectionViewOutlineCellAccessibility
@end

@implementation UICollectionViewOutlineCellAccessibility

uint64_t __64___UICollectionViewOutlineCellAccessibility_accessibilityTraits__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    *a3 = 1;
  }

  return isKindOfClass & 1;
}

void __64___UICollectionViewOutlineCellAccessibility_accessibilityTraits__block_invoke_310(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) _accessibilityIndexPath];
  v3 = [v2 itemIdentifierForIndexPath:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

@end