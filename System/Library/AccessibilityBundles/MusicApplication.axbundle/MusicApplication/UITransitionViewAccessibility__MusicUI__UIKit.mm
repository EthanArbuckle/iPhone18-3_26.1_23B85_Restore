@interface UITransitionViewAccessibility__MusicUI__UIKit
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_foundNowPlayingViewControllerForIPad;
- (BOOL)accessibilityViewIsModal;
@end

@implementation UITransitionViewAccessibility__MusicUI__UIKit

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.SearchResultsViewController"];
  [validationsCopy validateClass:@"UITransitionView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_UISearchPresentationController" isKindOfClass:@"UIPresentationController"];
  [validationsCopy validateClass:@"_UIFormSheetPresentationController" isKindOfClass:@"UIPresentationController"];
  [validationsCopy validateClass:@"UIPresentationController" hasInstanceMethod:@"presentedViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.SearchResultsViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"MusicApplication.NowPlayingViewController" isKindOfClass:@"UIViewController"];
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
    searchResultsController = [v5 searchResultsController];
    MEMORY[0x29C2E2DD0](@"MusicApplication.SearchResultsViewController");
    isKindOfClass = objc_opt_isKindOfClass();

    accessibilityViewIsModal = 0;
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
      accessibilityViewIsModal = [(UITransitionViewAccessibility__MusicUI__UIKit *)&v12 accessibilityViewIsModal];
      goto LABEL_10;
    }
  }

  accessibilityViewIsModal = 1;
LABEL_10:

  return accessibilityViewIsModal;
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
        firstObject = [v7 firstObject];

        if (firstObject)
        {
          v9 = [firstObject safeValueForKey:@"subviews"];
          firstObject2 = [v9 firstObject];

          if (firstObject2)
          {
            _accessibilityViewController = [firstObject2 _accessibilityViewController];
            MEMORY[0x29C2E2DD0](@"MusicApplication.NowPlayingViewController");
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v13 = 1;
            }

            else
            {
              v14 = [firstObject2 safeValueForKey:@"subviews"];
              firstObject3 = [v14 firstObject];

              v16 = [firstObject3 safeValueForKey:@"subviews"];
              firstObject4 = [v16 firstObject];

              _accessibilityViewController2 = [firstObject4 _accessibilityViewController];
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