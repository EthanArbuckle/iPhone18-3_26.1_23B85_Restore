@interface UIKitTabBarController
- (_TtC7SwiftUI21UIKitTabBarController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC7SwiftUI21UIKitTabBarController)initWithTabs:(id)tabs;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
@end

@implementation UIKitTabBarController

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  windowCopy = window;
  selfCopy = self;
  UIKitTabBarController.viewDidMove(to:shouldAppearOrDisappear:)(window, disappear);
}

- (_TtC7SwiftUI21UIKitTabBarController)initWithTabs:(id)tabs
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7SwiftUI21UIKitTabBarController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end