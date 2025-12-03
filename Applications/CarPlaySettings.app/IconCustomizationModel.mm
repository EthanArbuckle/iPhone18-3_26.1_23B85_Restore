@interface IconCustomizationModel
- (_TtC15CarPlaySettings22IconCustomizationModel)init;
- (id)defaultIconStateForIconManager:(id)manager;
- (void)clusterThemeManagerDidFinishLoading:(id)loading;
- (void)dealloc;
- (void)invalidate;
@end

@implementation IconCustomizationModel

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v5, selfCopy);

  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(IconCustomizationModel *)&v6 dealloc];
}

- (_TtC15CarPlaySettings22IconCustomizationModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)defaultIconStateForIconManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  sub_100039188();

  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)clusterThemeManagerDidFinishLoading:(id)loading
{
  loadingCopy = loading;
  selfCopy = self;
  displays = [loadingCopy displays];
  sub_1000317B8(0, &qword_1000FF320);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  themeData = [loadingCopy themeData];
  sub_1000317B8(0, &qword_1000FF328);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100036DA0(v6, v8);
}

- (void)invalidate
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel_clusterThemeManager);
  selfCopy = self;
  [v2 invalidate];
  swift_getKeyPath();
  sub_100031B0C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  [*(&selfCopy->super.isa + OBJC_IVAR____TtC15CarPlaySettings22IconCustomizationModel__iconLayoutController) invalidate];
}

@end