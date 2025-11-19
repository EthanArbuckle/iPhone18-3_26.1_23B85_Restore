@interface RemoteAlertSceneDelegate
- (_TtC16AccessorySetupUI24RemoteAlertSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
@end

@implementation RemoteAlertSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100033140(v8, v9);
}

- (void)sceneDidBecomeActive:(id)a3
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC16AccessorySetupUI24RemoteAlertSceneDelegate_window);
  if (v3)
  {
    v7 = self;
    v4 = [v3 rootViewController];
    if (v4)
    {
      v5 = v4;
      type metadata accessor for ASUIRootViewController();
      if (swift_dynamicCastClass())
      {
        sub_10000230C();
        v6 = v5;
      }

      else
      {
        v6 = v7;
        v7 = v5;
      }
    }
  }
}

- (_TtC16AccessorySetupUI24RemoteAlertSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC16AccessorySetupUI24RemoteAlertSceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for RemoteAlertSceneDelegate();
  return [(RemoteAlertSceneDelegate *)&v3 init];
}

@end