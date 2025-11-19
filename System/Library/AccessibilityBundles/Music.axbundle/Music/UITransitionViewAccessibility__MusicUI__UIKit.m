@interface UITransitionViewAccessibility__MusicUI__UIKit
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityView:(id)a3 hasDescendantWithViewControllerClass:(id)a4;
- (BOOL)_foundNowPlayingViewControllerForIPad;
- (BOOL)accessibilityViewIsModal;
- (id)_accessibilityObscuredScreenAllowedViews;
- (id)_accessibilitylastTransitionViewForWindow:(id)a3;
@end

@implementation UITransitionViewAccessibility__MusicUI__UIKit

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UITransitionView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_UISearchPresentationController" isKindOfClass:@"UIPresentationController"];
  [v3 validateClass:@"_UIFormSheetPresentationController" isKindOfClass:@"UIPresentationController"];
  [v3 validateClass:@"UIPresentationController" hasInstanceMethod:@"presentedViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Music.NowPlayingViewController" isKindOfClass:@"UIViewController"];
}

- (BOOL)accessibilityViewIsModal
{
  v10 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [(UITransitionViewAccessibility__MusicUI__UIKit *)self safeValueForKey:@"delegate"];
  MEMORY[0x29C2E2910](@"_UIFormSheetPresentationController");
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v4 safeValueForKey:@"presentedViewController"], v5 = objc_claimAutoreleasedReturnValue(), MEMORY[0x29C2E2910](@"Music.NowPlayingViewController"), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass) || !v4 && -[UITransitionViewAccessibility__MusicUI__UIKit _foundNowPlayingViewControllerForIPad](self, "_foundNowPlayingViewControllerForIPad"))
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UITransitionViewAccessibility__MusicUI__UIKit;
    v7 = [(UITransitionViewAccessibility__MusicUI__UIKit *)&v9 accessibilityViewIsModal];
  }

  return v7;
}

- (id)_accessibilityObscuredScreenAllowedViews
{
  v11.receiver = self;
  v11.super_class = UITransitionViewAccessibility__MusicUI__UIKit;
  v3 = [(UITransitionViewAccessibility__MusicUI__UIKit *)&v11 _accessibilityObscuredScreenAllowedViews];
  v4 = [v3 mutableCopy];

  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  objc_opt_class();
  v6 = [v5 superview];
  v7 = __UIAccessibilityCastAsClass();

  if (v7)
  {
    v8 = [(UITransitionViewAccessibility__MusicUI__UIKit *)self _accessibilitylastTransitionViewForWindow:v7];

    if (v8 != v5)
    {
      v9 = [v7 subviews];
      [v9 enumerateObjectsUsingBlock:&__block_literal_global_3];
    }
  }

  return v4;
}

- (BOOL)_foundNowPlayingViewControllerForIPad
{
  if (AXDeviceIsPad())
  {
    v3 = [(UITransitionViewAccessibility__MusicUI__UIKit *)self _accessibilityFindSubviewDescendant:&__block_literal_global_316];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 _accessibilityFindSubviewDescendant:&__block_literal_global_321];
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
            MEMORY[0x29C2E2910](@"Music.NowPlayingViewController");
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
              MEMORY[0x29C2E2910](@"Music.NowPlayingViewController");
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

- (BOOL)_accessibilityView:(id)a3 hasDescendantWithViewControllerClass:(id)a4
{
  v5 = a4;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __105__UITransitionViewAccessibility__MusicUI__UIKit__accessibilityView_hasDescendantWithViewControllerClass___block_invoke;
  v9[3] = &unk_29F2DC8B8;
  v10 = v5;
  v6 = v5;
  v7 = [a3 _accessibilityFindSubviewDescendant:v9];
  LOBYTE(a3) = v7 != 0;

  return a3;
}

- (id)_accessibilitylastTransitionViewForWindow:(id)a3
{
  v3 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  v4 = [v3 subviews];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __91__UITransitionViewAccessibility__MusicUI__UIKit__accessibilitylastTransitionViewForWindow___block_invoke;
  v7[3] = &unk_29F2DC8E0;
  v7[4] = &v8;
  [v4 enumerateObjectsWithOptions:2 usingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

@end