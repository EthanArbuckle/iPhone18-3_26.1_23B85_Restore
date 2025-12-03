@interface TTRISegmentedNavigationController
- (_TtC9Reminders33TTRISegmentedNavigationController)initWithCoder:(id)coder;
- (_TtC9Reminders33TTRISegmentedNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC9Reminders33TTRISegmentedNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC9Reminders33TTRISegmentedNavigationController)initWithRootViewController:(id)controller;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TTRISegmentedNavigationController

- (_TtC9Reminders33TTRISegmentedNavigationController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_segmentedControl) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_palette) = 0;
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_selectedTabID);
  *v3 = 0;
  v3[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TTRISegmentedNavigationController();
  v2 = v3.receiver;
  [(TTRISegmentedNavigationController *)&v3 viewDidLoad];
  sub_100406EE8();
  [v2 setDelegate:{v2, v3.receiver, v3.super_class}];
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_100407900();
}

- (_TtC9Reminders33TTRISegmentedNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9Reminders33TTRISegmentedNavigationController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9Reminders33TTRISegmentedNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_1004089B8(viewControllerCopy);
}

@end