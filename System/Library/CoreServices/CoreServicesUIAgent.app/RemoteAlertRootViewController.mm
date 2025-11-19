@interface RemoteAlertRootViewController
- (_TtC19CoreServicesUIAgent29RemoteAlertRootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation RemoteAlertRootViewController

- (void)loadView
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = objc_allocWithZone(UIView);
  v5 = self;
  v4 = [v3 init];
  [(RemoteAlertRootViewController *)v5 setView:v4];
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

  v3.receiver = self;
  v3.super_class = type metadata accessor for RemoteAlertRootViewController();
  [(RemoteAlertRootViewController *)&v3 viewDidLoad];
}

- (_TtC19CoreServicesUIAgent29RemoteAlertRootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC19CoreServicesUIAgent29RemoteAlertRootViewController_remoteAlertContentViewController) = 0;
    v7 = a4;
    a3 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC19CoreServicesUIAgent29RemoteAlertRootViewController_remoteAlertContentViewController) = 0;
    v8 = a4;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for RemoteAlertRootViewController();
  v9 = [(RemoteAlertRootViewController *)&v11 initWithNibName:a3 bundle:a4];

  return v9;
}

@end