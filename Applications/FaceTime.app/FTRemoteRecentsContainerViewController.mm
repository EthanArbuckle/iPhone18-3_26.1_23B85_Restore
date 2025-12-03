@interface FTRemoteRecentsContainerViewController
- (FTRemoteRecentsContainerViewController)initWithCoder:(id)coder;
- (FTRemoteRecentsContainerViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (FTRemoteRecentsContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (FTRemoteRecentsContainerViewController)initWithRootViewController:(id)controller;
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
  selfCopy = self;
  [(FTRemoteRecentsContainerViewController *)&v4 viewDidLoad];
  sub_100007864();
}

- (FTRemoteRecentsContainerViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
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
  v7 = [(FTRecentsContainerViewController *)&v9 initWithNavigationBarClass:class toolbarClass:toolbarClass];

  return v7;
}

- (FTRemoteRecentsContainerViewController)initWithRootViewController:(id)controller
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
  v5 = [(FTRecentsContainerViewController *)&v7 initWithRootViewController:controller];

  return v5;
}

- (FTRemoteRecentsContainerViewController)initWithNibName:(id)name bundle:(id)bundle
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
    bundleCopy = bundle;
    name = String._bridgeToObjectiveC()();
  }

  else
  {
    bundleCopy2 = bundle;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for RemoteRecentsContainerViewController();
  v9 = [(FTRecentsContainerViewController *)&v11 initWithNibName:name bundle:bundle];

  return v9;
}

- (FTRemoteRecentsContainerViewController)initWithCoder:(id)coder
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
  coderCopy = coder;
  v6 = [(FTRecentsContainerViewController *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end