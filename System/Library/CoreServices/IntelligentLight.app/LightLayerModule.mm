@interface LightLayerModule
- (void)dealloc;
- (void)displayMonitor:(id)a3 willDisconnectIdentity:(id)a4;
- (void)thermalStateDidChangeWithNotification:(id)a3;
@end

@implementation LightLayerModule

- (void)thermalStateDidChangeWithNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_1000046BC();

  (*(v5 + 8))(v8, v4);
}

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC16IntelligentLight16LightLayerModule_displayMonitor);
  v3 = self;
  [v2 removeObserver:v3];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for LightLayerModule();
  [(LightLayerModule *)&v4 dealloc];
}

- (void)displayMonitor:(id)a3 willDisconnectIdentity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10000C680(v7);
}

@end