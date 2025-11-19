@interface LockScreenSceneDelegate
- (_TtC17SequoiaTranslator23LockScreenSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:;
- (void)setWindow:(id)a3;
@end

@implementation LockScreenSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC17SequoiaTranslator23LockScreenSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC17SequoiaTranslator23LockScreenSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100173D58(v8);
}

- (_TtC17SequoiaTranslator23LockScreenSceneDelegate)init
{
  *(&self->super.isa + OBJC_IVAR____TtC17SequoiaTranslator23LockScreenSceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for LockScreenSceneDelegate();
  return [(LockScreenSceneDelegate *)&v3 init];
}

- (void)sceneDidBecomeActive:
{
  if (qword_1003A9248 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000078E8(v0, qword_1003D27E8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Lock screen scene did become active", v3, 2u);
  }

  sub_100174454();
  v4 = sub_10000B55C();
  if (v4)
  {
    v5 = v4;
    sub_10000ADA0();

    sub_1001D7E14();
  }

  else
  {
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "LockScreenSceneDelegate couldn't access personalTranslatorViewModel during didBecomeActive", v7, 2u);
    }
  }
}

@end