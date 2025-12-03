@interface SessionSceneDelegate
- (_TtC18ActivityProgressUI20SessionSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)setWindow:(id)window;
@end

@implementation SessionSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC18ActivityProgressUI20SessionSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC18ActivityProgressUI20SessionSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100004F50(sceneCopy, sessionCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_100005A8C(disconnectCopy, "SessionSceneDelegate: sceneDidDisconnect with role: %s, activity identifier: %s");
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_1000057D8(activeCopy);
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_100005A8C(activeCopy, "SessionSceneDelegate: sceneWillResignActive with role: %s, activity identifier: %s");
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_100005A8C(foregroundCopy, "SessionSceneDelegate: sceneWillEnterForeground with role: %s, activity identifier: %s");
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  sub_100005A8C(backgroundCopy, "SessionSceneDelegate: sceneDidEnterBackground with role: %s, activity identifier: %s");
}

- (_TtC18ActivityProgressUI20SessionSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC18ActivityProgressUI20SessionSceneDelegate_window) = 0;
  v3 = OBJC_IVAR____TtC18ActivityProgressUI20SessionSceneDelegate_systemApertureElementProvidersByID;
  *(&self->super.super.isa + v3) = sub_100004490(&_swiftEmptyArrayStorage);
  v5.receiver = self;
  v5.super_class = type metadata accessor for SessionSceneDelegate();
  return [(SessionSceneDelegate *)&v5 init];
}

@end