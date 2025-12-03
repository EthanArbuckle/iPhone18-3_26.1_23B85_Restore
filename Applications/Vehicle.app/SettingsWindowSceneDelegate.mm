@interface SettingsWindowSceneDelegate
- (_TtC7Vehicle27SettingsWindowSceneDelegate)init;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:;
- (void)sceneWillEnterForeground:(id)foreground;
@end

@implementation SettingsWindowSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_10001071C(sceneCopy, sessionCopy, optionsCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_100010DBC(disconnectCopy);
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sub_1000043C8(0, &qword_100038470, UIOpenURLContext_ptr);
  sub_100011798();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  selfCopy = self;
  sub_1000110A8(v6);
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_100011428(foregroundCopy);
}

- (_TtC7Vehicle27SettingsWindowSceneDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SettingsWindowSceneDelegate();
  return [(SettingsWindowSceneDelegate *)&v3 init];
}

- (void)sceneDidEnterBackground:
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.debug.getter();
  if (qword_100037840 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  sharedApplication = [objc_opt_self() sharedApplication];
  delegate = [sharedApplication delegate];

  if (delegate)
  {
    type metadata accessor for AppDelegate();
    v7 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7Vehicle11AppDelegate_settingsCarManager);
    if (v7)
    {
      v8 = v7;
      Date.init()();
      swift_unknownObjectRelease();
      v9 = OBJC_IVAR____TtC7Vehicle18SettingsCarManager_lastBackgroundTime;
      swift_beginAccess();
      (*(v1 + 40))(&v8[v9], v4, v0);
      swift_endAccess();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

@end