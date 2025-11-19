@interface AppDelegate
- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5;
- (_TtC18DKPairingUIService11AppDelegate)init;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
@end

@implementation AppDelegate

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v5 = a4;
  v6 = [v5 role];
  v7 = objc_allocWithZone(UISceneConfiguration);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithName:v8 sessionRole:v6];

  return v9;
}

- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = sub_10000E6BC(v9);
  (*(v6 + 8))(v9, v5);
  return v10 & 1;
}

- (_TtC18DKPairingUIService11AppDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppDelegate();
  return [(AppDelegate *)&v3 init];
}

@end