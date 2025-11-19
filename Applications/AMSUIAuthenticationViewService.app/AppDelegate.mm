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
    sub_100001FF8(&qword_100015218, type metadata accessor for LaunchOptionsKey);
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
  v12 = sub_100001708(v11, v9);

  return v12;
}

- (void)application:(id)a3 didDiscardSceneSessions:(id)a4
{
  sub_100001A44();
  sub_100001FF8(&qword_100015210, sub_100001A44);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
}

@end