@interface SessionSceneDelegate
- (_TtC9AirDropUI20SessionSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation SessionSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC9AirDropUI20SessionSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC9AirDropUI20SessionSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_10001D5E8(v8, v9);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001E7CC(v4);
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001EC68(v4, "SessionSceneDelegate: sceneDidBecomeActive with role: %s");
}

- (void)sceneWillResignActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001EC68(v4, "SessionSceneDelegate: sceneWillResignActive with role: %s");
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001EC68(v4, "SessionSceneDelegate: sceneWillEnterForeground with role: %s");
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001EC68(v4, "SessionSceneDelegate: sceneDidEnterBackground with role: %s");
}

- (_TtC9AirDropUI20SessionSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC9AirDropUI20SessionSceneDelegate_window) = 0;
  v3 = OBJC_IVAR____TtC9AirDropUI20SessionSceneDelegate_systemApertureElementProvidersByID;
  *(&self->super.super.isa + v3) = sub_1000A8264(&_swiftEmptyArrayStorage);
  v5.receiver = self;
  v5.super_class = type metadata accessor for SessionSceneDelegate();
  return [(SessionSceneDelegate *)&v5 init];
}

@end