@interface FTRemoteRecentsContainerViewController
- (FTRemoteRecentsContainerViewController)initWithCoder:(id)a3;
- (FTRemoteRecentsContainerViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (FTRemoteRecentsContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (FTRemoteRecentsContainerViewController)initWithRootViewController:(id)a3;
- (void)viewDidLoad;
@end

@implementation FTRemoteRecentsContainerViewController

- (void)viewDidLoad
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4.receiver = self;
  v4.super_class = type metadata accessor for RemoteRecentsContainerViewController();
  v3 = self;
  [(FTRemoteRecentsContainerViewController *)&v4 viewDidLoad];
  sub_100007864();
}

- (FTRemoteRecentsContainerViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for RemoteRecentsContainerViewController();
  v7 = [(FTRecentsContainerViewController *)&v9 initWithNavigationBarClass:a3 toolbarClass:a4];

  return v7;
}

- (FTRemoteRecentsContainerViewController)initWithRootViewController:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for RemoteRecentsContainerViewController();
  v5 = [(FTRecentsContainerViewController *)&v7 initWithRootViewController:a3];

  return v5;
}

- (FTRemoteRecentsContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
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
    v7 = a4;
    a3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = a4;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for RemoteRecentsContainerViewController();
  v9 = [(FTRecentsContainerViewController *)&v11 initWithNibName:a3 bundle:a4];

  return v9;
}

- (FTRemoteRecentsContainerViewController)initWithCoder:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for RemoteRecentsContainerViewController();
  v5 = a3;
  v6 = [(FTRecentsContainerViewController *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end