@interface UITransitionViewAccessibility
@end

@implementation UITransitionViewAccessibility

uint64_t __86__UITransitionViewAccessibility__MusicUI__UIKit__foundNowPlayingViewControllerForIPad__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2E2DD0](@"UIDropShadowView");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __86__UITransitionViewAccessibility__MusicUI__UIKit__foundNowPlayingViewControllerForIPad__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2E2DD0](@"_UIRoundedRectShadowView");
  if (objc_opt_isKindOfClass())
  {
    v3 = 0;
  }

  else
  {
    MEMORY[0x29C2E2DD0](@"UIDropShadowView");
    v3 = objc_opt_isKindOfClass() ^ 1;
  }

  return v3 & 1;
}

@end