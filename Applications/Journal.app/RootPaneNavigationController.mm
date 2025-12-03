@interface RootPaneNavigationController
- (BOOL)accessibilityPerformMagicTap;
- (_TtC7JournalP33_0B5A9489AD304442B8967D815815566E28RootPaneNavigationController)init;
- (_TtC7JournalP33_0B5A9489AD304442B8967D815815566E28RootPaneNavigationController)initWithCoder:(id)coder;
- (_TtC7JournalP33_0B5A9489AD304442B8967D815815566E28RootPaneNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC7JournalP33_0B5A9489AD304442B8967D815815566E28RootPaneNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC7JournalP33_0B5A9489AD304442B8967D815815566E28RootPaneNavigationController)initWithRootViewController:(id)controller;
- (void)viewWillLayoutSubviews;
@end

@implementation RootPaneNavigationController

- (_TtC7JournalP33_0B5A9489AD304442B8967D815815566E28RootPaneNavigationController)init
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for RootPaneNavigationController();
  v2 = [(RootPaneNavigationController *)&v6 initWithNibName:0 bundle:0];
  navigationBar = [(RootPaneNavigationController *)v2 navigationBar];
  [navigationBar setPrefersLargeTitles:1];

  navigationBar2 = [(RootPaneNavigationController *)v2 navigationBar];
  [navigationBar2 setMaximumContentSizeCategory:UIContentSizeCategoryLarge];

  return v2;
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_10002DBE0();
}

- (_TtC7JournalP33_0B5A9489AD304442B8967D815815566E28RootPaneNavigationController)initWithCoder:(id)coder
{
  type metadata accessor for RootPaneNavigationController();
  swift_deallocPartialClassInstance();
  return 0;
}

- (BOOL)accessibilityPerformMagicTap
{
  selfCopy = self;
  topViewController = [(RootPaneNavigationController *)selfCopy topViewController];
  if (topViewController)
  {
    v4 = topViewController;
    accessibilityPerformMagicTap = [topViewController accessibilityPerformMagicTap];
  }

  else
  {
    accessibilityPerformMagicTap = 0;
  }

  return accessibilityPerformMagicTap;
}

- (_TtC7JournalP33_0B5A9489AD304442B8967D815815566E28RootPaneNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7JournalP33_0B5A9489AD304442B8967D815815566E28RootPaneNavigationController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7JournalP33_0B5A9489AD304442B8967D815815566E28RootPaneNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end