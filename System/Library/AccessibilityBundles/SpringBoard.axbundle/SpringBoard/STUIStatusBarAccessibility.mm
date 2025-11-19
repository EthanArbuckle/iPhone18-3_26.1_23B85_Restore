@interface STUIStatusBarAccessibility
@end

@implementation STUIStatusBarAccessibility

uint64_t __109__STUIStatusBarAccessibility__SpringBoardFramework__SystemStatusUI__accessibilityMultitaskingButtonContainer__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  NSClassFromString(&cfstr_Sbtopaffordanc_3.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __130__STUIStatusBarAccessibility__SpringBoardFramework__SystemStatusUI__updateDisplayedItemsWithData_styleAttributes_extraAnimations___block_invoke()
{
  v0 = [MEMORY[0x29EDBDFA8] server];
  [v0 didPotentiallyDismissNonExclusiveSystemUI];
}

@end