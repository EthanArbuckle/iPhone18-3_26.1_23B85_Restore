@interface AppStore
@end

@implementation AppStore

uint64_t __122__AppStore_UINavigationControllerAccessibility__navigationBarSizeForViewController_proposedHeight_allowRubberBandStretch___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) getValue:*(*(a1 + 40) + 8) + 32 size:24];
  *(*(*(a1 + 48) + 8) + 24) = 1;
  return result;
}

void __76__AppStore_UITransitionViewAccessibility__isSuperviewOfSearchControllerView__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  MEMORY[0x29C2E9430](@"_UISearchControllerView");
  isKindOfClass = objc_opt_isKindOfClass();

  *(*(*(a1 + 32) + 8) + 24) = isKindOfClass & 1;
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

@end