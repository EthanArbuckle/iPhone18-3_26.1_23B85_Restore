@interface DefaultSceneDelegate
- (UIWindow)window;
- (_TtC22ProximityReaderSceneUI20DefaultSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)setWindow:(id)window;
@end

@implementation DefaultSceneDelegate

- (UIWindow)window
{
  v3 = OBJC_IVAR____TtC22ProximityReaderSceneUI20DefaultSceneDelegate_window;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setWindow:(id)window
{
  v5 = OBJC_IVAR____TtC22ProximityReaderSceneUI20DefaultSceneDelegate_window;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100011BC0(sceneCopy, sessionCopy);
}

- (_TtC22ProximityReaderSceneUI20DefaultSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC22ProximityReaderSceneUI20DefaultSceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DefaultSceneDelegate();
  return [(DefaultSceneDelegate *)&v3 init];
}

@end