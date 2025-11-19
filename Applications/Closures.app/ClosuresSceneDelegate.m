@interface ClosuresSceneDelegate
- (_TtC8Closures21ClosuresSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
@end

@implementation ClosuresSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100001E10(v8, v9);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100001B64(v4);
}

- (void)sceneWillEnterForeground:(id)a3
{
  v5 = a3;
  v3 = [v5 session];
  v4 = [v3 role];

  CAFSignpostEmit_SceneWillEnterForeground();
}

- (_TtC8Closures21ClosuresSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC8Closures21ClosuresSceneDelegate_windowManager) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ClosuresSceneDelegate();
  return [(ClosuresSceneDelegate *)&v3 init];
}

@end