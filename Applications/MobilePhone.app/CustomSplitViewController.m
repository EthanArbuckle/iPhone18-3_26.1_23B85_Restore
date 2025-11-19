@interface CustomSplitViewController
- (_TtC11MobilePhone25CustomSplitViewController)init;
- (_TtC11MobilePhone25CustomSplitViewController)initWithCoder:(id)a3;
- (_TtC11MobilePhone25CustomSplitViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC11MobilePhone25CustomSplitViewController)initWithStyle:(int64_t)a3;
- (void)setViewController:(id)a3 forColumn:(int64_t)a4;
- (void)showDetailViewController:(id)a3 sender:(id)a4;
- (void)splitViewControllerDidCollapse:(id)a3;
- (void)splitViewControllerDidExpand:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CustomSplitViewController

- (_TtC11MobilePhone25CustomSplitViewController)init
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11MobilePhone25CustomSplitViewController____lazy_storage___detailsContainer) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11MobilePhone25CustomSplitViewController____lazy_storage___detailsNavigationController) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11MobilePhone25CustomSplitViewController____lazy_storage___trailingBarButtonMigrator) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for CustomSplitViewController();
  return [(CustomSplitViewController *)&v3 initWithStyle:2];
}

- (_TtC11MobilePhone25CustomSplitViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11MobilePhone25CustomSplitViewController____lazy_storage___detailsContainer) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11MobilePhone25CustomSplitViewController____lazy_storage___detailsNavigationController) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11MobilePhone25CustomSplitViewController____lazy_storage___trailingBarButtonMigrator) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  CustomSplitViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  CustomSplitViewController.viewDidAppear(_:)(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  CustomSplitViewController.viewWillLayoutSubviews()();
}

- (void)setViewController:(id)a3 forColumn:(int64_t)a4
{
  v4 = a4;
  v7 = a3;
  v8 = self;
  v10.value.super.super.isa = a3;
  v10.is_nil = v4;
  CustomSplitViewController.setViewController(_:for:)(v10, v8);
}

- (void)showDetailViewController:(id)a3 sender:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = a3;
    v9 = self;
  }

  CustomSplitViewController.showDetailViewController(_:sender:)(a3, v10);

  outlined destroy of Any?(v10);
}

- (_TtC11MobilePhone25CustomSplitViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11MobilePhone25CustomSplitViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)splitViewControllerDidExpand:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized CustomSplitViewController.splitViewControllerDidExpand(_:)();
}

- (void)splitViewControllerDidCollapse:(id)a3
{
  v4 = self;
  v3 = CustomSplitViewController.trailingBarButtonMigrator.getter();
  (*(*v3 + 128))(1);
}

@end