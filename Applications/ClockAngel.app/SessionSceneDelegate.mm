@interface SessionSceneDelegate
- (id)scene:(id)scene handleActions:(id)actions;
- (void)dealloc;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
@end

@implementation SessionSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_10004D49C(sceneCopy, sessionCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_10004D708();
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_100049400(activeCopy);
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_10004D854();
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_10004D94C();
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  sub_100049794(backgroundCopy);
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  v5 = [(SessionSceneDelegate *)selfCopy description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v12 = v6;
  v13 = v8;
  v9._countAndFlagsBits = 0x74696E696564203ALL;
  v9._object = 0xE800000000000000;
  String.append(_:)(v9);
  v10 = String._bridgeToObjectiveC()();

  [v3 logInfo:v10];

  v11.receiver = selfCopy;
  v11.super_class = type metadata accessor for SessionSceneDelegate();
  [(SessionSceneDelegate *)&v11 dealloc];
}

- (id)scene:(id)scene handleActions:(id)actions
{
  sub_10002BB3C(0, &qword_100115DD0, BSAction_ptr);
  sub_10004DE88(&qword_100115DD8, &qword_100115DD0, BSAction_ptr);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  selfCopy = self;
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