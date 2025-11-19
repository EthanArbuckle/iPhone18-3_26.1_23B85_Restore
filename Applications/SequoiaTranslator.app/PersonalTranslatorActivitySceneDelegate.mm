@interface PersonalTranslatorActivitySceneDelegate
- (_TtC17SequoiaTranslator39PersonalTranslatorActivitySceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:;
- (void)setWindow:(id)a3;
@end

@implementation PersonalTranslatorActivitySceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC17SequoiaTranslator39PersonalTranslatorActivitySceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC17SequoiaTranslator39PersonalTranslatorActivitySceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1001A6E7C(v8, v9);
}

- (_TtC17SequoiaTranslator39PersonalTranslatorActivitySceneDelegate)init
{
  *(&self->super.isa + OBJC_IVAR____TtC17SequoiaTranslator39PersonalTranslatorActivitySceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for PersonalTranslatorActivitySceneDelegate();
  return [(PersonalTranslatorActivitySceneDelegate *)&v3 init];
}

- (void)sceneDidBecomeActive:
{
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000078E8(v0, qword_1003D2920);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "sceneDidBecomeActive", v3, 2u);
  }

  if (qword_1003A92D8 != -1)
  {
    swift_once();
  }

  if (*(qword_1003D2990 + OBJC_IVAR____TtC17SequoiaTranslator34PersonalTranslationActivityManager_currentViewModel))
  {

    sub_1001D7E14();
  }

  else
  {
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_10028D78C(0xD000000000000018, 0x80000001002F8500, &v8);
      _os_log_impl(&_mh_execute_header, oslog, v4, "%s Unable to find view model", v5, 0xCu);
      sub_100008664(v6);
    }
  }
}

@end