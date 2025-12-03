@interface LiveActivitySceneDelegate
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)setWindow:(id)window;
@end

@implementation LiveActivitySceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivitySceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivitySceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  selfCopy = self;
  sub_10000D2B0(sceneCopy);
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_10000DDD8("%@,sceneDidBecomeActive,requesting resize");
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_10000DDD8("%@,sceneWillEnterForeground,requesting resize");
}

@end