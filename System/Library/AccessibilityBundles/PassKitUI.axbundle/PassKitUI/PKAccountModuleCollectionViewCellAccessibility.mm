@interface PKAccountModuleCollectionViewCellAccessibility
- (id)accessibilityLabel;
@end

@implementation PKAccountModuleCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  array = [MEMORY[0x29EDB8DE8] array];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __68__PKAccountModuleCollectionViewCellAccessibility_accessibilityLabel__block_invoke;
  v8[3] = &unk_29F2E1B70;
  v8[4] = self;
  v9 = array;
  v4 = array;
  v5 = [(PKAccountModuleCollectionViewCellAccessibility *)self _accessibilityFindDescendant:v8];
  v6 = AXLabelForElements();

  return v6;
}

uint64_t __68__PKAccountModuleCollectionViewCellAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) != v3)
  {
    if ([v3 isAccessibilityElement])
    {
      v5 = [v4 accessibilityTraits];
      if ((*MEMORY[0x29EDC7F88] & v5) == 0)
      {
        [*(a1 + 40) addObject:v4];
      }
    }
  }

  return 0;
}

@end