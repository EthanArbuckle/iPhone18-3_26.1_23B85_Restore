@interface RemoteAlertSceneDelegate
- (_TtC20MediaRemoteUIService24RemoteAlertSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
@end

@implementation RemoteAlertSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100004864(v8, v9, v10);
}

- (_TtC20MediaRemoteUIService24RemoteAlertSceneDelegate)init
{
  *(&self->super.isa + OBJC_IVAR____TtC20MediaRemoteUIService24RemoteAlertSceneDelegate_underlyingSceneDelegate) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for RemoteAlertSceneDelegate();
  return [(RemoteAlertSceneDelegate *)&v3 init];
}

@end