@interface AppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (_TtC7Preview11AppDelegate)init;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (void)buildMenuWithBuilder:(id)builder;
- (void)newFromPasteboard:(id)pasteboard;
@end

@implementation AppDelegate

- (void)newFromPasteboard:(id)pasteboard
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (pasteboard)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    selfCopy2 = self;
  }

  sub_100007D00();

  sub_100007710(v7, &qword_100206500);
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    selfCopy2 = self;
  }

  v9 = sub_100007FD8(action, v11);

  sub_100007710(v11, &qword_100206500);

  return v9 & 1;
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_10008A478(&unk_10020A0E0, type metadata accessor for LaunchOptionsKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  applicationCopy = application;
  selfCopy = self;
  v9 = sub_10008CB38();

  return v9 & 1;
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  applicationCopy = application;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  v13 = sub_10008CEE8(sessionCopy, optionsCopy);

  return v13;
}

- (void)buildMenuWithBuilder:(id)builder
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for AppDelegate(0);
  swift_unknownObjectRetain();
  selfCopy = self;
  [(AppDelegate *)&v6 buildMenuWithBuilder:builder];
  swift_getObjectType();
  sub_10000792C();
  sub_1000082A4();

  swift_unknownObjectRelease();
}

- (_TtC7Preview11AppDelegate)init
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_100089024();

  return v2;
}

@end