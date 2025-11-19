@interface UITransitionViewAccessibility
@end

@implementation UITransitionViewAccessibility

void __84__UITransitionViewAccessibility__Podcasts__UIKit__isSuperviewOfSearchControllerView__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  MEMORY[0x29C2E7850](@"_UISearchControllerView");
  isKindOfClass = objc_opt_isKindOfClass();

  *(*(*(a1 + 32) + 8) + 24) = isKindOfClass & 1;
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

uint64_t __83__UITransitionViewAccessibility__Podcasts__UIKit__foundSearchControllerDimmingView__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 accessibilityIdentification];
  v3 = [v2 isEqualToString:@"AXUISearchControllerDimmingView"];

  return v3;
}

@end