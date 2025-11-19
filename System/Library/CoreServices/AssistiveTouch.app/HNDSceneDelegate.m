@interface HNDSceneDelegate
- (HNDSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
@end

@implementation HNDSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1000FEDA4(v8);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = objc_opt_self();
  v7 = a3;
  v5 = [v4 sharedManager];
  if (v5)
  {
    v6 = v5;
    [v5 sceneDidDisconnect:v7];
  }

  else
  {
    __break(1u);
  }
}

- (HNDSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR___HNDSceneDelegate_window) = 0;
  *(&self->super.super.isa + OBJC_IVAR___HNDSceneDelegate_ignoredWindow) = 0;
  *(&self->super.super.isa + OBJC_IVAR___HNDSceneDelegate_trackpadWindow) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SceneDelegate();
  return [(HNDSceneDelegate *)&v3 init];
}

@end