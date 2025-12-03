@interface _UIOverlayViewController
- (UIWindow)window;
- (UIWindowScene)windowScene;
@end

@implementation _UIOverlayViewController

- (UIWindow)window
{
  view = [(_UIOverlayViewController *)self view];
  window = [view window];

  return window;
}

- (UIWindowScene)windowScene
{
  window = [(_UIOverlayViewController *)self window];
  windowScene = [window windowScene];

  return windowScene;
}

@end