@interface UITransitionViewAccessibility__MusicUI__UIKit
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityView:(id)view hasDescendantWithViewControllerClass:(id)class;
- (BOOL)_foundNowPlayingViewControllerForIPad;
- (BOOL)accessibilityViewIsModal;
- (id)_accessibilityObscuredScreenAllowedViews;
- (id)_accessibilitylastTransitionViewForWindow:(id)window;
@end

@implementation UITransitionViewAccessibility__MusicUI__UIKit

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UITransitionView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_UISearchPresentationController" isKindOfClass:@"UIPresentationController"];
  [validationsCopy validateClass:@"_UIFormSheetPresentationController" isKindOfClass:@"UIPresentationController"];
  [validationsCopy validateClass:@"UIPresentationController" hasInstanceMethod:@"presentedViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Music.NowPlayingViewController" isKindOfClass:@"UIViewController"];
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
    accessibilityViewIsModal = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UITransitionViewAccessibility__MusicUI__UIKit;
    accessibilityViewIsModal = [(UITransitionViewAccessibility__MusicUI__UIKit *)&v9 accessibilityViewIsModal];
  }

  return accessibilityViewIsModal;
}

- (id)_accessibilityObscuredScreenAllowedViews
{
  v11.receiver = self;
  v11.super_class = UITransitionViewAccessibility__MusicUI__UIKit;
  _accessibilityObscuredScreenAllowedViews = [(UITransitionViewAccessibility__MusicUI__UIKit *)&v11 _accessibilityObscuredScreenAllowedViews];
  v4 = [_accessibilityObscuredScreenAllowedViews mutableCopy];

  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  objc_opt_class();
  superview = [v5 superview];
  v7 = __UIAccessibilityCastAsClass();

  if (v7)
  {
    v8 = [(UITransitionViewAccessibility__MusicUI__UIKit *)self _accessibilitylastTransitionViewForWindow:v7];

    if (v8 != v5)
    {
      subviews = [v7 subviews];
      [subviews enumerateObjectsUsingBlock:&__block_literal_global_3];
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
        firstObject = [v7 firstObject];

        if (firstObject)
        {
          v9 = [firstObject safeValueForKey:@"subviews"];
          firstObject2 = [v9 firstObject];

          if (firstObject2)
          {
            _accessibilityViewController = [firstObject2 _accessibilityViewController];
            MEMORY[0x29C2E2910](@"Music.NowPlayingViewController");
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

- (BOOL)_accessibilityView:(id)view hasDescendantWithViewControllerClass:(id)class
{
  classCopy = class;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __105__UITransitionViewAccessibility__MusicUI__UIKit__accessibilityView_hasDescendantWithViewControllerClass___block_invoke;
  v9[3] = &unk_29F2DC8B8;
  v10 = classCopy;
  v6 = classCopy;
  v7 = [view _accessibilityFindSubviewDescendant:v9];
  LOBYTE(view) = v7 != 0;

  return view;
}

- (id)_accessibilitylastTransitionViewForWindow:(id)window
{
  windowCopy = window;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  subviews = [windowCopy subviews];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __91__UITransitionViewAccessibility__MusicUI__UIKit__accessibilitylastTransitionViewForWindow___block_invoke;
  v7[3] = &unk_29F2DC8E0;
  v7[4] = &v8;
  [subviews enumerateObjectsWithOptions:2 usingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

@end