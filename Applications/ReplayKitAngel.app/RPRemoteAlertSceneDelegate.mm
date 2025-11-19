@interface RPRemoteAlertSceneDelegate
- (UIWindow)window;
- (_TtC14ReplayKitAngel26RPRemoteAlertSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation RPRemoteAlertSceneDelegate

- (UIWindow)window
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel26RPRemoteAlertSceneDelegate_window;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setWindow:(id)a3
{
  v5 = OBJC_IVAR____TtC14ReplayKitAngel26RPRemoteAlertSceneDelegate_window;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1000419DC(v8);
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10004228C();
}

- (void)sceneWillResignActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100042604();
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10004280C();
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100042A14();
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100042C1C();
}

- (_TtC14ReplayKitAngel26RPRemoteAlertSceneDelegate)init
{
  *(&self->super.isa + OBJC_IVAR____TtC14ReplayKitAngel26RPRemoteAlertSceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for RPRemoteAlertSceneDelegate();
  return [(RPRemoteAlertSceneDelegate *)&v3 init];
}

@end