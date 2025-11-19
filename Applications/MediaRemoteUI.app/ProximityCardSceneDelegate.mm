@interface ProximityCardSceneDelegate
- (_TtC13MediaRemoteUI26ProximityCardSceneDelegate)init;
- (void)proxCardFlowDidDismiss;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation ProximityCardSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13MediaRemoteUI26ProximityCardSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC13MediaRemoteUI26ProximityCardSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100017E24(v8);
}

- (void)sceneDidDisconnect:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC13MediaRemoteUI26ProximityCardSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC13MediaRemoteUI26ProximityCardSceneDelegate_window) = 0;
  v4 = self;

  v5 = *(&v4->super.isa + OBJC_IVAR____TtC13MediaRemoteUI26ProximityCardSceneDelegate_navigationController);
  *(&v4->super.isa + OBJC_IVAR____TtC13MediaRemoteUI26ProximityCardSceneDelegate_navigationController) = 0;
}

- (void)proxCardFlowDidDismiss
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC13MediaRemoteUI26ProximityCardSceneDelegate_window);
  if (v2)
  {
    v3 = self;
    v4 = [v2 windowScene];
    if (v4)
    {
      v7 = v4;
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        [v5 invalidate];
      }

      v6 = v7;
    }

    else
    {
      v6 = v3;
    }
  }
}

- (_TtC13MediaRemoteUI26ProximityCardSceneDelegate)init
{
  *(&self->super.isa + OBJC_IVAR____TtC13MediaRemoteUI26ProximityCardSceneDelegate_window) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC13MediaRemoteUI26ProximityCardSceneDelegate_navigationController) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ProximityCardSceneDelegate();
  return [(ProximityCardSceneDelegate *)&v3 init];
}

@end