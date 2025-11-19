@interface IconCustomizationModel
- (_TtC15CarPlaySettings22IconCustomizationModel)init;
- (id)defaultIconStateForIconManager:(id)a3;
- (void)clusterThemeManagerDidFinishLoading:(id)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation IconCustomizationModel

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = self;
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v5, v4);

  v6.receiver = v4;
  v6.super_class = ObjectType;
  [(IconCustomizationModel *)&v6 dealloc];
}

- (_TtC15CarPlaySettings22IconCustomizationModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)defaultIconStateForIconManager:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100039188();

  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)clusterThemeManagerDidFinishLoading:(id)a3
{
  v4 = a3;
  v9 = self;
  v5 = [v4 displays];
  sub_1000317B8(0, &qword_1000FF320);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = [v4 themeData];
  sub_1000317B8(0, &qword_1000FF328);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100036DA0(v6, v8);
}

- (void)invalidate
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel_clusterThemeManager);
  v3 = self;
  [v2 invalidate];
  swift_getKeyPath();
  sub_100031B0C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  [*(&v3->super.isa + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconLayoutController) invalidate];
}

@end