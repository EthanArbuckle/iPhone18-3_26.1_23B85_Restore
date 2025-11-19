@interface SK
@end

@implementation SK

uint64_t __53__SK_UIBarButtonItemAccessibility_accessibilityLabel__block_invoke(uint64_t a1)
{
  v2 = NSStringFromSelector([*(a1 + 32) action]);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

void __82__SK_UICollectionViewAccessibility__accessibilitySortedElementsWithinWithOptions___block_invoke()
{
  v1 = [MEMORY[0x29EDB9F48] mainBundle];
  v0 = [v1 bundleIdentifier];
  _accessibilitySortedElementsWithinWithOptions__IsIBooks = [v0 isEqualToString:*MEMORY[0x29EDBD680]];
}

uint64_t __82__SK_UICollectionViewAccessibility__accessibilitySortedElementsWithinWithOptions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 frame];
  v6 = v5;
  [v4 frame];
  v8 = v7;

  if (v6 >= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t __82__SK_UICollectionViewAccessibility__accessibilitySortedElementsWithinWithOptions___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = [*(a1 + 32) _accessibilityIndexPathOfDirectSubviewForDescendantElement:a2 withElementKind:0];
  LODWORD(v2) = [*(v2 + 32) _accessibilityDescendantElementAtIndexPathIsValid:v3];

  return v2 ^ 1;
}

@end