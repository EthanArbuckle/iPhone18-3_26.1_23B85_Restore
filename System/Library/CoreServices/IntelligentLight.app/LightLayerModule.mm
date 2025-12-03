@interface LightLayerModule
- (void)dealloc;
- (void)displayMonitor:(id)monitor willDisconnectIdentity:(id)identity;
- (void)thermalStateDidChangeWithNotification:(id)notification;
@end

@implementation LightLayerModule

- (void)thermalStateDidChangeWithNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1000046BC();

  (*(v5 + 8))(v8, v4);
}

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC16IntelligentLight16LightLayerModule_displayMonitor);
  selfCopy = self;
  [v2 removeObserver:selfCopy];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for LightLayerModule();
  [(LightLayerModule *)&v4 dealloc];
}

- (void)displayMonitor:(id)monitor willDisconnectIdentity:(id)identity
{
  monitorCopy = monitor;
  identityCopy = identity;
  selfCopy = self;
  sub_10000C680(identityCopy);
}

@end