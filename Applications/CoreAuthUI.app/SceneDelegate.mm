@interface SceneDelegate
- (_TtC10CoreAuthUI13SceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
@end

@implementation SceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_10005D3A0(v8, v9);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10005D6B4(v4);
}

- (_TtC10CoreAuthUI13SceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC10CoreAuthUI13SceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SceneDelegate();
  return [(SceneDelegate *)&v3 init];
}

@end