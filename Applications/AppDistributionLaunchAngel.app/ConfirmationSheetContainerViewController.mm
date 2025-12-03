@interface ConfirmationSheetContainerViewController
- (_TtC26AppDistributionLaunchAngel40ConfirmationSheetContainerViewController)initWithCoder:(id)coder;
- (_TtC26AppDistributionLaunchAngel40ConfirmationSheetContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation ConfirmationSheetContainerViewController

- (_TtC26AppDistributionLaunchAngel40ConfirmationSheetContainerViewController)initWithCoder:(id)coder
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
  currentDevice = [objc_opt_self() currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  *(&self->super.super.super.isa + v5) = userInterfaceIdiom == 1;
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
  selfCopy = self;
  [(ConfirmationSheetContainerViewController *)&v7 viewDidLoad];
  v4 = [(ConfirmationSheetContainerViewController *)selfCopy view:v7.receiver];
  if (v4)
  {
    v5 = v4;
    clearColor = [objc_opt_self() clearColor];
    [v5 setBackgroundColor:clearColor];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_10005FEC8(appear);
}

- (_TtC26AppDistributionLaunchAngel40ConfirmationSheetContainerViewController)initWithNibName:(id)name bundle:(id)bundle
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