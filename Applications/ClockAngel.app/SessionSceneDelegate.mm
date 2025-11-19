@interface SessionSceneDelegate
- (id)scene:(id)a3 handleActions:(id)a4;
- (void)dealloc;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
@end

@implementation SessionSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_10004D49C(v8, v9);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10004D708();
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100049400(v4);
}

- (void)sceneWillResignActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10004D854();
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10004D94C();
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100049794(v4);
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [(SessionSceneDelegate *)v4 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v12 = v6;
  v13 = v8;
  v9._countAndFlagsBits = 0x74696E696564203ALL;
  v9._object = 0xE800000000000000;
  String.append(_:)(v9);
  v10 = String._bridgeToObjectiveC()();

  [v3 logInfo:v10];

  v11.receiver = v4;
  v11.super_class = type metadata accessor for SessionSceneDelegate();
  [(SessionSceneDelegate *)&v11 dealloc];
}

- (id)scene:(id)a3 handleActions:(id)a4
{
  sub_10002BB3C(0, &qword_100115DD0, BSAction_ptr);
  sub_10004DE88(&qword_100115DD8, &qword_100115DD0, BSAction_ptr);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  v9 = sub_10004DA44(v6);

  if (v9)
  {
    v10.super.isa = Set._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  return v10.super.isa;
}

@end