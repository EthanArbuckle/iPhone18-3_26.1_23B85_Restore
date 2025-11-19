@interface InstallConfirmationViewController
- (_TtC26AppDistributionLaunchAngel33InstallConfirmationViewController)initWithCoder:(id)a3;
- (_TtC26AppDistributionLaunchAngel33InstallConfirmationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (int64_t)preferredStatusBarStyle;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation InstallConfirmationViewController

- (_TtC26AppDistributionLaunchAngel33InstallConfirmationViewController)initWithCoder:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  sub_10005F84C();
}

- (void)viewDidAppear:(BOOL)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = self;
  sub_10005AA10(a3);
}

- (int64_t)preferredStatusBarStyle
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_isIPad);

  return ~v3 & 1;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for InstallConfirmationViewController();
  swift_unknownObjectRetain();
  v8 = self;
  [(InstallConfirmationViewController *)&v10 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  v9 = *(&v8->super.super.super.isa + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_installSheetConfirmationViewModel);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();

  swift_unknownObjectRelease();
}

- (_TtC26AppDistributionLaunchAngel33InstallConfirmationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end