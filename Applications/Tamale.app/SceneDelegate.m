@interface SceneDelegate
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation SceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC6Tamale13SceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC6Tamale13SceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100018194(v8);
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001620C(v4);
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100018BF0();
}

@end