@interface AppDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4;
- (void)applicationDidBecomeActive:(id)a3;
- (void)applicationDidEnterBackground:(id)a3;
- (void)applicationWillTerminate:(id)a3;
- (void)sidecarServicePresenterServiceExtensionReady:(id)a3;
- (void)sidecarServicePresenterStartServiceExtension:(id)a3 completion:(id)a4;
- (void)sidecarServicePresenterTerminate;
@end

@implementation AppDelegate

- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4
{
  if (a4)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_100003AB8(&qword_100025F90, type metadata accessor for LaunchOptionsKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  sub_100001918();

  return 1;
}

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v4 = a4;
  if (a4)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_100003AB8(&qword_100025F90, type metadata accessor for LaunchOptionsKey);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v8 = self;
  sub_100001A10(v8, v4);

  return 1;
}

- (void)applicationDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100001DE8(v5);
}

- (void)applicationDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100001E48(v5);
}

- (void)applicationWillTerminate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100001F00();
}

- (void)sidecarServicePresenterStartServiceExtension:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  sub_100002068(v6, v8, sub_100003850, v9);
}

- (void)sidecarServicePresenterServiceExtensionReady:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_100002864(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)sidecarServicePresenterTerminate
{
  v2 = self;
  sub_100002C9C();
}

@end