@interface UISheetPresentationController(SwiftUI_BackgroundEffect)
- (id)_swiftui_backgroundEffect;
- (void)set_swiftui_backgroundEffect:()SwiftUI_BackgroundEffect;
@end

@implementation UISheetPresentationController(SwiftUI_BackgroundEffect)

- (id)_swiftui_backgroundEffect
{
  if (objc_opt_respondsToSelector())
  {
    backgroundEffect = [self backgroundEffect];
  }

  else
  {
    backgroundEffect = 0;
  }

  return backgroundEffect;
}

- (void)set_swiftui_backgroundEffect:()SwiftUI_BackgroundEffect
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [self setBackgroundEffect:v4];
  }
}

@end