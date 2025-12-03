@interface AppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (_TtC5Files11AppDelegate)init;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (void)application:(id)application didDiscardSceneSessions:(id)sessions;
- (void)buildMenuWithBuilder:(id)builder;
- (void)observedApplicationDidEnterBackgroundWithSender:(id)sender;
@end

@implementation AppDelegate

- (_TtC5Files11AppDelegate)init
{
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for AppDelegate();
  return [(AppDelegate *)&v4 init];
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_100002CB4(&unk_1000941D0, type metadata accessor for LaunchOptionsKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  applicationCopy = application;
  selfCopy = self;
  v8 = sub_100002FFC();

  return v8 & 1;
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  applicationCopy = application;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  v12 = sub_100003738(sessionCopy, optionsCopy);

  return v12;
}

- (void)application:(id)application didDiscardSceneSessions:(id)sessions
{
  sub_100002B84(0, &unk_1000941A0, UISceneSession_ptr);
  sub_100003A30(&qword_100093C50, &unk_1000941A0, UISceneSession_ptr);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  applicationCopy = application;
  selfCopy = self;
  sub_100009318(applicationCopy, v6);
}

- (void)buildMenuWithBuilder:(id)builder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100062DEC(builder);
  swift_unknownObjectRelease();
}

- (void)observedApplicationDidEnterBackgroundWithSender:(id)sender
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100063280();
  (*(v4 + 8))(v7, v3);
}

@end