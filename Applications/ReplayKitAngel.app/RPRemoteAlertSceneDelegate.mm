@interface RPRemoteAlertSceneDelegate
- (UIWindow)window;
- (_TtC14ReplayKitAngel26RPRemoteAlertSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)setWindow:(id)window;
@end

@implementation RPRemoteAlertSceneDelegate

- (UIWindow)window
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel26RPRemoteAlertSceneDelegate_window;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setWindow:(id)window
{
  v5 = OBJC_IVAR____TtC14ReplayKitAngel26RPRemoteAlertSceneDelegate_window;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1000419DC(sceneCopy);
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_10004228C();
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_100042604();
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_10004280C();
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  sub_100042A14();
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
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