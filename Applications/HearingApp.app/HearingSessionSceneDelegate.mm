@interface HearingSessionSceneDelegate
- (_TtC10HearingApp27HearingSessionSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
@end

@implementation HearingSessionSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100006E80(v8);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100007144("SessionSceneDelegate: sceneDidDisconnect");
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100007144("SessionSceneDelegate: sceneDidBecomeActive");
}

- (void)sceneWillResignActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100007144("SessionSceneDelegate: sceneWillResignActive");
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100007144("SessionSceneDelegate: sceneWillEnterForeground");
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100007144("SessionSceneDelegate: sceneDidEnterBackground");
}

- (_TtC10HearingApp27HearingSessionSceneDelegate)init
{
  v3 = OBJC_IVAR____TtC10HearingApp27HearingSessionSceneDelegate_systemApertureElementProvider;
  type metadata accessor for LiveListenSystemApertureViewController();
  *(&self->super.isa + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  Logger.init(subsystem:category:)();
  v5.receiver = self;
  v5.super_class = type metadata accessor for HearingSessionSceneDelegate();
  return [(HearingSessionSceneDelegate *)&v5 init];
}

@end