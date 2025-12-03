@interface CustomSplitViewController
- (_TtC11MobilePhone25CustomSplitViewController)init;
- (_TtC11MobilePhone25CustomSplitViewController)initWithCoder:(id)coder;
- (_TtC11MobilePhone25CustomSplitViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC11MobilePhone25CustomSplitViewController)initWithStyle:(int64_t)style;
- (void)setViewController:(id)controller forColumn:(int64_t)column;
- (void)showDetailViewController:(id)controller sender:(id)sender;
- (void)splitViewControllerDidCollapse:(id)collapse;
- (void)splitViewControllerDidExpand:(id)expand;
- (void)viewDidAppear:(BOOL)appear;
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

- (_TtC11MobilePhone25CustomSplitViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  CustomSplitViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  CustomSplitViewController.viewDidAppear(_:)(appear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  CustomSplitViewController.viewWillLayoutSubviews()();
}

- (void)setViewController:(id)controller forColumn:(int64_t)column
{
  columnCopy = column;
  controllerCopy = controller;
  selfCopy = self;
  v10.value.super.super.isa = controller;
  v10.is_nil = columnCopy;
  CustomSplitViewController.setViewController(_:for:)(v10, selfCopy);
}

- (void)showDetailViewController:(id)controller sender:(id)sender
{
  if (sender)
  {
    controllerCopy = controller;
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    controllerCopy2 = controller;
    selfCopy2 = self;
  }

  CustomSplitViewController.showDetailViewController(_:sender:)(controller, v10);

  outlined destroy of Any?(v10);
}

- (_TtC11MobilePhone25CustomSplitViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11MobilePhone25CustomSplitViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)splitViewControllerDidExpand:(id)expand
{
  expandCopy = expand;
  selfCopy = self;
  specialized CustomSplitViewController.splitViewControllerDidExpand(_:)();
}

- (void)splitViewControllerDidCollapse:(id)collapse
{
  selfCopy = self;
  v3 = CustomSplitViewController.trailingBarButtonMigrator.getter();
  (*(*v3 + 128))(1);
}

@end