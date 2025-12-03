@interface SplitViewNavigationController
- (_TtC7SwiftUI29SplitViewNavigationController)initWithCoder:(id)coder;
- (_TtC7SwiftUI29SplitViewNavigationController)initWithRootViewController:(id)controller;
@end

@implementation SplitViewNavigationController

- (_TtC7SwiftUI29SplitViewNavigationController)initWithRootViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SplitViewNavigationController();
  return [(UIKitNavigationController *)&v5 initWithRootViewController:controller];
}

- (_TtC7SwiftUI29SplitViewNavigationController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SplitViewNavigationController();
  coderCopy = coder;
  v5 = [(UIKitNavigationController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end