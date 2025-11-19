@interface OrdinalListCellAccessibility
- (id)accessibilityLabel;
@end

@implementation OrdinalListCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(OrdinalListCellAccessibility *)self _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_8];
  v3 = AXLabelForElements();

  return v3;
}

uint64_t __50__OrdinalListCellAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29ED3FF70](@"VideosUI.OrdinalListCell");
  if (objc_opt_isKindOfClass())
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 isAccessibilityElement];
  }

  return v3;
}

@end