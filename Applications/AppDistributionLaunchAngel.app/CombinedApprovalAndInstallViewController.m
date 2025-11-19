@interface CombinedApprovalAndInstallViewController
- (_TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController)initWithCoder:(id)a3;
- (_TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (int64_t)preferredStatusBarStyle;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation CombinedApprovalAndInstallViewController

- (_TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController)initWithCoder:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  sub_1000222CC();
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
  sub_10001EB10(a3);
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

  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_isIPad);

  return ~v3 & 1;
}

- (_TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController)initWithNibName:(id)a3 bundle:(id)a4
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