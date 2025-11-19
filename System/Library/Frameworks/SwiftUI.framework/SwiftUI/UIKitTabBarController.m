@interface UIKitTabBarController
- (_TtC7SwiftUI21UIKitTabBarController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC7SwiftUI21UIKitTabBarController)initWithTabs:(id)a3;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
@end

@implementation UIKitTabBarController

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v7 = a3;
  v8 = self;
  UIKitTabBarController.viewDidMove(to:shouldAppearOrDisappear:)(a3, a4);
}

- (_TtC7SwiftUI21UIKitTabBarController)initWithTabs:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7SwiftUI21UIKitTabBarController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end