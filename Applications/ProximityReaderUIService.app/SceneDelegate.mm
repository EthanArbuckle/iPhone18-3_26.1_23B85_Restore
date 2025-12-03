@interface SceneDelegate
- (UIWindow)window;
- (_TtC24ProximityReaderUIService13SceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)setWindow:(id)window;
@end

@implementation SceneDelegate

- (UIWindow)window
{
  v3 = OBJC_IVAR____TtC24ProximityReaderUIService13SceneDelegate_window;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setWindow:(id)window
{
  v5 = OBJC_IVAR____TtC24ProximityReaderUIService13SceneDelegate_window;
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
  sub_1000017D0(sceneCopy);
}

- (_TtC24ProximityReaderUIService13SceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC24ProximityReaderUIService13SceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SceneDelegate();
  return [(SceneDelegate *)&v3 init];
}

@end