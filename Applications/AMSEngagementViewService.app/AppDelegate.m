@interface AppDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
- (void)application:(id)a3 didDiscardSceneSessions:(id)a4;
@end

@implementation AppDelegate

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  if (a4)
  {
    type metadata accessor for LaunchOptionsKey();
    sub_1000020DC(&qword_1000218D0, type metadata accessor for LaunchOptionsKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return 1;
}

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_100001870(v11, v9);

  return v12;
}

- (void)application:(id)a3 didDiscardSceneSessions:(id)a4
{
  sub_100001BAC();
  sub_1000020DC(&qword_1000218C8, sub_100001BAC);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
}

@end