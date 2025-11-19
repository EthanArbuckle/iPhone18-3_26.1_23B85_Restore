@interface ConfirmationSheetContainerViewController
- (_TtC26AppDistributionLaunchAngel40ConfirmationSheetContainerViewController)initWithCoder:(id)a3;
- (_TtC26AppDistributionLaunchAngel40ConfirmationSheetContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation ConfirmationSheetContainerViewController

- (_TtC26AppDistributionLaunchAngel40ConfirmationSheetContainerViewController)initWithCoder:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC26AppDistributionLaunchAngel40ConfirmationSheetContainerViewController_dismissAction);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC26AppDistributionLaunchAngel40ConfirmationSheetContainerViewController_isIPad;
  v6 = [objc_opt_self() currentDevice];
  v7 = [v6 userInterfaceIdiom];

  *(&self->super.super.super.isa + v5) = v7 == 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for ConfirmationSheetContainerViewController();
  v3 = self;
  [(ConfirmationSheetContainerViewController *)&v7 viewDidLoad];
  v4 = [(ConfirmationSheetContainerViewController *)v3 view:v7.receiver];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() clearColor];
    [v5 setBackgroundColor:v6];
  }

  else
  {
    __break(1u);
  }
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
  sub_10005FEC8(a3);
}

- (_TtC26AppDistributionLaunchAngel40ConfirmationSheetContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
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