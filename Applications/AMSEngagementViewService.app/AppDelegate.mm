@interface AppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (void)application:(id)application didDiscardSceneSessions:(id)sessions;
@end

@implementation AppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  if (options)
  {
    type metadata accessor for LaunchOptionsKey();
    sub_1000020DC(&qword_1000218D0, type metadata accessor for LaunchOptionsKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return 1;
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  applicationCopy = application;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  v12 = sub_100001870(selfCopy, sessionCopy);

  return v12;
}

- (void)application:(id)application didDiscardSceneSessions:(id)sessions
{
  sub_100001BAC();
  sub_1000020DC(&qword_1000218C8, sub_100001BAC);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
}

@end