@interface RemoteAlertRootViewController
- (_TtC19CoreServicesUIAgent29RemoteAlertRootViewController)initWithNibName:(id)name bundle:(id)bundle;
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
  selfCopy = self;
  v4 = [v3 init];
  [(RemoteAlertRootViewController *)selfCopy setView:v4];
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

- (_TtC19CoreServicesUIAgent29RemoteAlertRootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC19CoreServicesUIAgent29RemoteAlertRootViewController_remoteAlertContentViewController) = 0;
    bundleCopy = bundle;
    name = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC19CoreServicesUIAgent29RemoteAlertRootViewController_remoteAlertContentViewController) = 0;
    bundleCopy2 = bundle;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for RemoteAlertRootViewController();
  v9 = [(RemoteAlertRootViewController *)&v11 initWithNibName:name bundle:bundle];

  return v9;
}

@end