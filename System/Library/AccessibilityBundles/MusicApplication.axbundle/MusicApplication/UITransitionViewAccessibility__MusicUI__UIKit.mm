@interface UITransitionViewAccessibility__MusicUI__UIKit
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_foundNowPlayingViewControllerForIPad;
- (BOOL)accessibilityViewIsModal;
@end

@implementation UITransitionViewAccessibility__MusicUI__UIKit

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicApplication.SearchResultsViewController"];
  [v3 validateClass:@"UITransitionView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_UISearchPresentationController" isKindOfClass:@"UIPresentationController"];
  [v3 validateClass:@"_UIFormSheetPresentationController" isKindOfClass:@"UIPresentationController"];
  [v3 validateClass:@"UIPresentationController" hasInstanceMethod:@"presentedViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.SearchResultsViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"MusicApplication.NowPlayingViewController" isKindOfClass:@"UIViewController"];
}

- (BOOL)accessibilityViewIsModal
{
  v3 = [(UITransitionViewAccessibility__MusicUI__UIKit *)self safeValueForKey:@"delegate"];
  MEMORY[0x29C2E2DD0](@"_UISearchPresentationController");
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v4 = [v3 safeValueForKey:@"presentedViewController"];
    v5 = __UIAccessibilityCastAsClass();
    v6 = [v5 searchResultsController];
    MEMORY[0x29C2E2DD0](@"MusicApplication.SearchResultsViewController");
    isKindOfClass = objc_opt_isKindOfClass();

    v8 = 0;
    if (isKindOfClass)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  MEMORY[0x29C2E2DD0](@"_UIFormSheetPresentationController");
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v3 safeValueForKey:@"presentedViewController"], v9 = objc_claimAutoreleasedReturnValue(), MEMORY[0x29C2E2DD0](@"MusicApplication.NowPlayingViewController"), v10 = objc_opt_isKindOfClass(), v9, (v10 & 1) == 0))
  {
    if (v3 || ![(UITransitionViewAccessibility__MusicUI__UIKit *)self _foundNowPlayingViewControllerForIPad])
    {
LABEL_9:
      v12.receiver = self;
      v12.super_class = UITransitionViewAccessibility__MusicUI__UIKit;
      v8 = [(UITransitionViewAccessibility__MusicUI__UIKit *)&v12 accessibilityViewIsModal];
      goto LABEL_10;
    }
  }

  v8 = 1;
LABEL_10:

  return v8;
}

- (BOOL)_foundNowPlayingViewControllerForIPad
{
  if (AXDeviceIsPad())
  {
    v3 = [(UITransitionViewAccessibility__MusicUI__UIKit *)self _accessibilityFindSubviewDescendant:&__block_literal_global_6];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 _accessibilityFindSubviewDescendant:&__block_literal_global_318];
      v6 = v5;
      if (v5)
      {
        v7 = [v5 safeValueForKey:@"subviews"];
        v8 = [v7 firstObject];

        if (v8)
        {
          v9 = [v8 safeValueForKey:@"subviews"];
          v10 = [v9 firstObject];

          if (v10)
          {
            v11 = [v10 _accessibilityViewController];
            MEMORY[0x29C2E2DD0](@"MusicApplication.NowPlayingViewController");
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v13 = 1;
            }

            else
            {
              v14 = [v10 safeValueForKey:@"subviews"];
              v15 = [v14 firstObject];

              v16 = [v15 safeValueForKey:@"subviews"];
              v17 = [v16 firstObject];

              v18 = [v17 _accessibilityViewController];
              MEMORY[0x29C2E2DD0](@"MusicApplication.NowPlayingViewController");
              v13 = objc_opt_isKindOfClass();
            }
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

@end