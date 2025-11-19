@interface TTRIAppDelegate
- (BOOL)application:(id)a3 continueUserActivity:(id)a4 restorationHandler:(id)a5;
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5;
- (BOOL)application:(id)a3 willContinueUserActivityWithType:(id)a4;
- (void)application:(id)a3 didUpdateUserActivity:(id)a4;
- (void)application:(id)a3 userDidAcceptCloudKitShareWithMetadata:(id)a4;
- (void)buildMenuWithBuilder:(id)a3;
- (void)userNotificationCenter:(id)a3 openSettingsForNotification:(id)a4;
@end

@implementation TTRIAppDelegate

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v4 = a4;
  if (a4)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_100007284(&qword_100767FE8, type metadata accessor for LaunchOptionsKey);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v8 = self;
  v9 = sub_10000364C(v4);

  return v9 & 1;
}

- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for OpenURLOptionsKey(0);
  sub_100007284(&qword_100767FF8, type metadata accessor for OpenURLOptionsKey);
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = self;
  v14 = sub_1003274F4(v10, v11);

  (*(v8 + 8))(v10, v7);
  return v14 & 1;
}

- (BOOL)application:(id)a3 willContinueUserActivityWithType:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a3;
  v10 = self;
  LOBYTE(v6) = sub_100327974(v6, v8);

  return v6 & 1;
}

- (void)application:(id)a3 didUpdateUserActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100327AC0(v7);
}

- (BOOL)application:(id)a3 continueUserActivity:(id)a4 restorationHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = a3;
  v10 = a4;
  v11 = self;
  v12 = sub_100327C20(v10);
  _Block_release(v8);

  return v12 & 1;
}

- (void)application:(id)a3 userDidAcceptCloudKitShareWithMetadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100327D74(v7);
}

- (void)buildMenuWithBuilder:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1003269BC(a3);
  swift_unknownObjectRelease();
}

- (void)userNotificationCenter:(id)a3 openSettingsForNotification:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100328668(a4);
}

@end