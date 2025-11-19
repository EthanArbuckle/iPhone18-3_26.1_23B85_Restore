@interface RootPaneNavigationController
- (BOOL)accessibilityPerformMagicTap;
- (_TtC7JournalP33_0B5A9489AD304442B8967D815815566E28RootPaneNavigationController)init;
- (_TtC7JournalP33_0B5A9489AD304442B8967D815815566E28RootPaneNavigationController)initWithCoder:(id)a3;
- (_TtC7JournalP33_0B5A9489AD304442B8967D815815566E28RootPaneNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC7JournalP33_0B5A9489AD304442B8967D815815566E28RootPaneNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC7JournalP33_0B5A9489AD304442B8967D815815566E28RootPaneNavigationController)initWithRootViewController:(id)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation RootPaneNavigationController

- (_TtC7JournalP33_0B5A9489AD304442B8967D815815566E28RootPaneNavigationController)init
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for RootPaneNavigationController();
  v2 = [(RootPaneNavigationController *)&v6 initWithNibName:0 bundle:0];
  v3 = [(RootPaneNavigationController *)v2 navigationBar];
  [v3 setPrefersLargeTitles:1];

  v4 = [(RootPaneNavigationController *)v2 navigationBar];
  [v4 setMaximumContentSizeCategory:UIContentSizeCategoryLarge];

  return v2;
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_10002DBE0();
}

- (_TtC7JournalP33_0B5A9489AD304442B8967D815815566E28RootPaneNavigationController)initWithCoder:(id)a3
{
  type metadata accessor for RootPaneNavigationController();
  swift_deallocPartialClassInstance();
  return 0;
}

- (BOOL)accessibilityPerformMagicTap
{
  v2 = self;
  v3 = [(RootPaneNavigationController *)v2 topViewController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 accessibilityPerformMagicTap];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_TtC7JournalP33_0B5A9489AD304442B8967D815815566E28RootPaneNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7JournalP33_0B5A9489AD304442B8967D815815566E28RootPaneNavigationController)initWithRootViewController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7JournalP33_0B5A9489AD304442B8967D815815566E28RootPaneNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end