@interface SceneDelegate
- (BOOL)tabBarController:(id)a3 shouldSelectViewController:(id)a4;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
- (void)setWindow:(id)a3;
- (void)tabBarController:(id)a3 didSelectViewController:(id)a4;
- (void)windowScene:(id)a3 didUpdateCoordinateSpace:(id)a4 interfaceOrientation:(int64_t)a5 traitCollection:(id)a6;
@end

@implementation SceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_10021EAF0(v8, v10);
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10021FB6C();
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10021FE08();
}

- (void)sceneWillResignActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100220024();
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  sub_10000A2CC(0, &qword_1003B8CC8);
  sub_1000819A8(&unk_1003B8CD0, &qword_1003B8CC8);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_10022026C(v6);
}

- (void)windowScene:(id)a3 didUpdateCoordinateSpace:(id)a4 interfaceOrientation:(int64_t)a5 traitCollection:(id)a6
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a6;
  v10 = self;
  sub_10022043C(v8);

  swift_unknownObjectRelease();
}

- (BOOL)tabBarController:(id)a3 shouldSelectViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100219D24(v6, v7);

  return 1;
}

- (void)tabBarController:(id)a3 didSelectViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100220500(v6);
}

- (void)sceneDidDisconnect:
{
  if (qword_1003A9200 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000078E8(v0, qword_1003D2710);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Scene did disconnect", v3, 2u);
  }

  sub_10000A2CC(0, &qword_1003BB780);
  v4 = sub_10000B55C();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate_interruptionController);
    v6 = v4;

    if (v5)
    {
      *(v5 + 24) = 0;
      swift_unknownObjectWeakAssign();
    }
  }
}

@end