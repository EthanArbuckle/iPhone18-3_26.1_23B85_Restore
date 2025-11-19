@interface UITransitionViewAccessibility
@end

@implementation UITransitionViewAccessibility

void __89__UITransitionViewAccessibility__MusicUI__UIKit__accessibilityObscuredScreenAllowedViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  objc_opt_isKindOfClass();
}

uint64_t __86__UITransitionViewAccessibility__MusicUI__UIKit__foundNowPlayingViewControllerForIPad__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2E2910](@"UIDropShadowView");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __86__UITransitionViewAccessibility__MusicUI__UIKit__foundNowPlayingViewControllerForIPad__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2E2910](@"_UIRoundedRectShadowView");
  if (objc_opt_isKindOfClass())
  {
    v3 = 0;
  }

  else
  {
    MEMORY[0x29C2E2910](@"UIDropShadowView");
    v3 = objc_opt_isKindOfClass() ^ 1;
  }

  return v3 & 1;
}

uint64_t __105__UITransitionViewAccessibility__MusicUI__UIKit__accessibilityView_hasDescendantWithViewControllerClass___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _accessibilityViewController];
  MEMORY[0x29C2E2910](*(a1 + 32));
  LOBYTE(a1) = objc_opt_isKindOfClass();

  return a1 & 1;
}

void __91__UITransitionViewAccessibility__MusicUI__UIKit__accessibilitylastTransitionViewForWindow___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

@end