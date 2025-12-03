@interface HearingSessionSceneDelegate
- (_TtC10HearingApp27HearingSessionSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
@end

@implementation HearingSessionSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100006E80(sceneCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_100007144("SessionSceneDelegate: sceneDidDisconnect");
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_100007144("SessionSceneDelegate: sceneDidBecomeActive");
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_100007144("SessionSceneDelegate: sceneWillResignActive");
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_100007144("SessionSceneDelegate: sceneWillEnterForeground");
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
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