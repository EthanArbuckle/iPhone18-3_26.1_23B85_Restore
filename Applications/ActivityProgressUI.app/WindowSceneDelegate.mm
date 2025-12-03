@interface WindowSceneDelegate
- (_TtC18ActivityProgressUI19WindowSceneDelegate)init;
- (void)eventResultReceivedForActivity:(id)activity event:(id)event result:(id)result;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)setWindow:(id)window;
@end

@implementation WindowSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC18ActivityProgressUI19WindowSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC18ActivityProgressUI19WindowSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100030204(sceneCopy);
}

- (_TtC18ActivityProgressUI19WindowSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC18ActivityProgressUI19WindowSceneDelegate_window) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC18ActivityProgressUI19WindowSceneDelegate_testAppView) = 1;
  v3.receiver = self;
  v3.super_class = type metadata accessor for WindowSceneDelegate();
  return [(WindowSceneDelegate *)&v3 init];
}

- (void)eventResultReceivedForActivity:(id)activity event:(id)event result:(id)result
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v6 + 8))(v9, v5);
}

@end