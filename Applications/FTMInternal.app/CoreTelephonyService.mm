@interface CoreTelephonyService
- (_TtC11FTMInternal20CoreTelephonyService)init;
- (void)applicationForeground;
- (void)applicationInBackground;
- (void)cellMonitorUpdate:(id)update info:(id)info;
- (void)connectionAvailability:(id)availability availableConnections:(id)connections;
- (void)dealloc;
- (void)signalStrengthChanged:(id)changed info:(id)info;
- (void)systemConfigurationChanged:(id)changed withConfiguration:(id)configuration;
@end

@implementation CoreTelephonyService

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter removeObserver:UIApplicationDidBecomeActiveNotification];

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(CoreTelephonyService *)&v7 dealloc];
}

- (void)applicationForeground
{
  selfCopy = self;
  sub_1001E3FF8();
}

- (void)applicationInBackground
{
  v2 = qword_100374FD8;
  selfCopy = self;
  if (v2 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  *(&selfCopy->super.isa + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_isApplicationForeground) = 0;
  [*(&selfCopy->super.isa + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_updateNetworkValueTimer) invalidate];
}

- (_TtC11FTMInternal20CoreTelephonyService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)systemConfigurationChanged:(id)changed withConfiguration:(id)configuration
{
  changedCopy = changed;
  configurationCopy = configuration;
  selfCopy = self;
  sub_100204394(configurationCopy);
}

- (void)cellMonitorUpdate:(id)update info:(id)info
{
  updateCopy = update;
  infoCopy = info;
  selfCopy = self;
  sub_1001F3B94(update, info);
}

- (void)signalStrengthChanged:(id)changed info:(id)info
{
  changedCopy = changed;
  infoCopy = info;
  selfCopy = self;
  sub_1001F449C(changed, info);
}

- (void)connectionAvailability:(id)availability availableConnections:(id)connections
{
  if (connections)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  availabilityCopy = availability;
  selfCopy = self;
  sub_1002049CC();
}

@end