@interface TTRISegmentedNavigationController
- (_TtC9Reminders33TTRISegmentedNavigationController)initWithCoder:(id)a3;
- (_TtC9Reminders33TTRISegmentedNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC9Reminders33TTRISegmentedNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC9Reminders33TTRISegmentedNavigationController)initWithRootViewController:(id)a3;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TTRISegmentedNavigationController

- (_TtC9Reminders33TTRISegmentedNavigationController)initWithCoder:(id)a3
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
  v2 = self;
  sub_100407900();
}

- (_TtC9Reminders33TTRISegmentedNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9Reminders33TTRISegmentedNavigationController)initWithRootViewController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9Reminders33TTRISegmentedNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_1004089B8(v8);
}

@end