@interface SceneDelegate
- (_TtC17PeopleViewService13SceneDelegate)init;
- (uint64_t)sceneDidBecomeActive:;
- (uint64_t)sceneWillResignActive:;
- (void)scene:(id)a3 continueUserActivity:(id)a4;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation SceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC17PeopleViewService13SceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC17PeopleViewService13SceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_10000D014(v8, v10);
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000D76C();
}

- (void)sceneWillEnterForeground:(id)a3
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC17PeopleViewService13SceneDelegate_peopleView);
  if (v3)
  {
    v6 = self;
    v4 = v3;
    v5 = sub_10000EED8();
    sub_10000BC9C(v5);
  }
}

- (void)scene:(id)a3 continueUserActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10000DAF8(v7);
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  sub_10000C0C0();
  sub_10000CFCC(&qword_1000261A0, sub_10000C0C0);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_10000C10C(v6);
}

- (_TtC17PeopleViewService13SceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC17PeopleViewService13SceneDelegate_window) = 0;
  v3 = OBJC_IVAR____TtC17PeopleViewService13SceneDelegate_rootViewController;
  type metadata accessor for RootContainerViewController();
  *(&self->super.super.isa + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(&self->super.super.isa + OBJC_IVAR____TtC17PeopleViewService13SceneDelegate_peopleView) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SceneDelegate();
  return [(SceneDelegate *)&v5 init];
}

- (uint64_t)sceneDidBecomeActive:
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.viewService.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000141EC(0xD000000000000018, 0x8000000100019F00, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s -- app reloading all widget timeline", v7, 0xCu);
    sub_100004208(v8);
  }

  (*(v1 + 8))(v4, v0);
  type metadata accessor for WidgetCenter();
  static WidgetCenter.shared.getter();
  dispatch thunk of WidgetCenter.reloadAllTimelines()();
}

- (uint64_t)sceneWillResignActive:
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.viewService.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000141EC(0xD000000000000019, 0x8000000100019EC0, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    sub_100004208(v8);
  }

  return (*(v1 + 8))(v4, v0);
}

@end