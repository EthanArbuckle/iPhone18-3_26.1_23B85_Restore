@interface LiveActivitySceneDelegate
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation LiveActivitySceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivitySceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivitySceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_10000D2B0(v7);
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000DDD8("%@,sceneDidBecomeActive,requesting resize");
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000DDD8("%@,sceneWillEnterForeground,requesting resize");
}

@end