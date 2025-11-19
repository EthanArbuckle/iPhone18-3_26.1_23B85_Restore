@interface AccessibilityNodeAccessibility
@end

@implementation AccessibilityNodeAccessibility

__CFString *__81__AccessibilityNodeAccessibility__VideosUI__SwiftUI_accessibilityAttributedLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 accessibilityLabel];
  if (!v2)
  {
    v2 = &stru_2A23A0858;
  }

  return v2;
}

uint64_t __72__AccessibilityNodeAccessibility__VideosUI__SwiftUI_accessibilityTraits__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _accessibilityViewController];
  v4 = *(a1 + 32);
  LOBYTE(a1) = objc_opt_isKindOfClass();

  return a1 & 1;
}

uint64_t __77__AccessibilityNodeAccessibility__VideosUI__SwiftUI__axEpisodeViewController__block_invoke()
{
  result = MEMORY[0x29ED3FF70](@"VideosUI.EpisodeCollectionViewController");
  _axEpisodeViewController_targetClass = result;
  return result;
}

uint64_t __101__AccessibilityNodeAccessibility__VideosUI__SwiftUI__axSeasonIndexForCurrentEpisodeInViewController___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __101__AccessibilityNodeAccessibility__VideosUI__SwiftUI__axSeasonIndexForCurrentEpisodeInViewController___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __101__AccessibilityNodeAccessibility__VideosUI__SwiftUI__axSeasonIndexForCurrentEpisodeInViewController___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = [*(a1 + 32) objectForKey:a2];
  if (v7)
  {
    v10 = v7;
    v8 = [*(a1 + 40) item];
    v9 = v8 < [v10 integerValue];
    v7 = v10;
    if (!v9)
    {
      *(*(*(a1 + 48) + 8) + 24) = a3;
      *a4 = 1;
    }
  }
}

@end