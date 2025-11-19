@interface UISheetPresentationController(SwiftUI_BackgroundEffect)
- (id)_swiftui_backgroundEffect;
- (void)set_swiftui_backgroundEffect:()SwiftUI_BackgroundEffect;
@end

@implementation UISheetPresentationController(SwiftUI_BackgroundEffect)

- (id)_swiftui_backgroundEffect
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 backgroundEffect];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)set_swiftui_backgroundEffect:()SwiftUI_BackgroundEffect
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [a1 setBackgroundEffect:v4];
  }
}

@end