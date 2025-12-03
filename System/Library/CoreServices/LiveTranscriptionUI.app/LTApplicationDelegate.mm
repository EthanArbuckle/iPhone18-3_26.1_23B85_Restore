@interface LTApplicationDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (_TtC19LiveTranscriptionUI21LTApplicationDelegate)init;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (void)applicationWillTerminate:(id)terminate;
- (void)setWindow:(id)window;
@end

@implementation LTApplicationDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC19LiveTranscriptionUI21LTApplicationDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC19LiveTranscriptionUI21LTApplicationDelegate_window) = window;
  windowCopy = window;
}

- (_TtC19LiveTranscriptionUI21LTApplicationDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC19LiveTranscriptionUI21LTApplicationDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for LTApplicationDelegate();
  return [(LTApplicationDelegate *)&v3 init];
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  static os_log_type_t.debug.getter();
  if (qword_1000626F0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  return 1;
}

- (void)applicationWillTerminate:(id)terminate
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

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  sessionCopy = session;
  role = [sessionCopy role];
  v7 = objc_allocWithZone(UISceneConfiguration);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithName:v8 sessionRole:role];

  return v9;
}

@end