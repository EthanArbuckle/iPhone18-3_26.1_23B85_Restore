@interface CoreTelephonyService
- (_TtC11FTMInternal20CoreTelephonyService)init;
- (void)applicationForeground;
- (void)applicationInBackground;
- (void)cellMonitorUpdate:(id)a3 info:(id)a4;
- (void)connectionAvailability:(id)a3 availableConnections:(id)a4;
- (void)dealloc;
- (void)signalStrengthChanged:(id)a3 info:(id)a4;
- (void)systemConfigurationChanged:(id)a3 withConfiguration:(id)a4;
@end

@implementation CoreTelephonyService

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  v5 = self;
  v6 = [v4 defaultCenter];
  [v6 removeObserver:UIApplicationDidBecomeActiveNotification];

  v7.receiver = v5;
  v7.super_class = ObjectType;
  [(CoreTelephonyService *)&v7 dealloc];
}

- (void)applicationForeground
{
  v2 = self;
  sub_1001E3FF8();
}

- (void)applicationInBackground
{
  v2 = qword_100374FD8;
  v3 = self;
  if (v2 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  *(&v3->super.isa + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_isApplicationForeground) = 0;
  [*(&v3->super.isa + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_updateNetworkValueTimer) invalidate];
}

- (_TtC11FTMInternal20CoreTelephonyService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)systemConfigurationChanged:(id)a3 withConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100204394(v7);
}

- (void)cellMonitorUpdate:(id)a3 info:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_1001F3B94(a3, a4);
}

- (void)signalStrengthChanged:(id)a3 info:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_1001F449C(a3, a4);
}

- (void)connectionAvailability:(id)a3 availableConnections:(id)a4
{
  if (a4)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  sub_1002049CC();
}

@end