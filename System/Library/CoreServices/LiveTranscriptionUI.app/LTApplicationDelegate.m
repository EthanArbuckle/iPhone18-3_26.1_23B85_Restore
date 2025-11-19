@interface LTApplicationDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (_TtC19LiveTranscriptionUI21LTApplicationDelegate)init;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
- (void)applicationWillTerminate:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation LTApplicationDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC19LiveTranscriptionUI21LTApplicationDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC19LiveTranscriptionUI21LTApplicationDelegate_window) = a3;
  v3 = a3;
}

- (_TtC19LiveTranscriptionUI21LTApplicationDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC19LiveTranscriptionUI21LTApplicationDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for LTApplicationDelegate();
  return [(LTApplicationDelegate *)&v3 init];
}

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  static os_log_type_t.debug.getter();
  if (qword_1000626F0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  return 1;
}

- (void)applicationWillTerminate:(id)a3
{
  static os_log_type_t.debug.getter();
  if (qword_1000626F0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  if (qword_100062790 != -1)
  {
    swift_once();
  }

  AXLTCaptionsProvider.stopTranscribing()();
}

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v5 = a4;
  v6 = [v5 role];
  v7 = objc_allocWithZone(UISceneConfiguration);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithName:v8 sessionRole:v6];

  return v9;
}

@end