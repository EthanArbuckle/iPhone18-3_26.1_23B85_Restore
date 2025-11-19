@interface ActionPillCollectionViewCellAccessibility
- (id)accessibilityLabel;
@end

@implementation ActionPillCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(ActionPillCollectionViewCellAccessibility *)self _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_1];
  v3 = MEMORY[0x29C2E7870]();

  return v3;
}

uint64_t __63__ActionPillCollectionViewCellAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end