@interface LimitedAccessPromptSceneDelegate
- (void)scene:(id)a3 willContinueUserActivityWithType:(id)a4;
- (void)scene:willConnectToSession:options:;
@end

@implementation LimitedAccessPromptSceneDelegate

- (void)scene:(id)a3 willContinueUserActivityWithType:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_100018338(v6, v8);
}

- (void)scene:willConnectToSession:options:
{
  if (qword_10002DA20 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005590(v0, qword_10002F570);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "LimitedAccessPromptSceneDelegate willConnectToWithOptions", v2, 2u);
  }
}

@end