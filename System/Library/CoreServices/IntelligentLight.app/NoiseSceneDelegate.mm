@interface NoiseSceneDelegate
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)setWindow:(id)a3;
@end

@implementation NoiseSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1000077C0(v8, v9);
}

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC16IntelligentLight18NoiseSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC16IntelligentLight18NoiseSceneDelegate_window) = a3;
  v3 = a3;
}

@end