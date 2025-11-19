@interface _UIOverlayViewController
- (UIWindow)window;
- (UIWindowScene)windowScene;
@end

@implementation _UIOverlayViewController

- (UIWindow)window
{
  v2 = [(_UIOverlayViewController *)self view];
  v3 = [v2 window];

  return v3;
}

- (UIWindowScene)windowScene
{
  v2 = [(_UIOverlayViewController *)self window];
  v3 = [v2 windowScene];

  return v3;
}

@end