@interface LightSceneDelegate
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation LightSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1000028F0(v8, v9, v10);
}

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC16IntelligentLight18LightSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC16IntelligentLight18LightSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000B1FC(v4);
}

@end