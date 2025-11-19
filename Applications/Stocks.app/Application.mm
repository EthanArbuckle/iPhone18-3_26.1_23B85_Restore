@interface Application
- (_TtC9StocksApp11Application)init;
- (id)_extendLaunchTest;
- (void)sendEvent:(id)a3;
@end

@implementation Application

- (_TtC9StocksApp11Application)init
{
  ObjectType = swift_getObjectType();
  v4 = self + OBJC_IVAR____TtC9StocksApp11Application_keyboardInputMonitor;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9StocksApp11Application_shouldChangeWindowFrameSize) = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(Application *)&v6 init];
}

- (id)_extendLaunchTest
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)sendEvent:(id)a3
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v8.receiver;
  [(Application *)&v8 sendEvent:v4];
  v6 = v5 + OBJC_IVAR____TtC9StocksApp11Application_keyboardInputMonitor;
  swift_beginAccess();
  if (*(v6 + 24))
  {
    sub_100006580(v6, v7);
    sub_1000045D8(v7, v7[3]);
    dispatch thunk of KeyboardInputMonitorType.handle(_:)();

    sub_10000461C(v7);
  }

  else
  {
  }
}

@end