@interface SplitViewNavigationController
- (_TtC7SwiftUI29SplitViewNavigationController)initWithCoder:(id)a3;
- (_TtC7SwiftUI29SplitViewNavigationController)initWithRootViewController:(id)a3;
@end

@implementation SplitViewNavigationController

- (_TtC7SwiftUI29SplitViewNavigationController)initWithRootViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SplitViewNavigationController();
  return [(UIKitNavigationController *)&v5 initWithRootViewController:a3];
}

- (_TtC7SwiftUI29SplitViewNavigationController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SplitViewNavigationController();
  v4 = a3;
  v5 = [(UIKitNavigationController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end