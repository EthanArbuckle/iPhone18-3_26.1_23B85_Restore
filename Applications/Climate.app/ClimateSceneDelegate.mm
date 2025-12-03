@interface ClimateSceneDelegate
- (void)scene:(id)scene didUpdateSettings:(id)settings;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)setWindow:(id)window;
@end

@implementation ClimateSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1000C73F8(sceneCopy, sessionCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_1000C61B0(disconnectCopy);
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_1000C7EF0();
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_1000C6548(activeCopy);
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_1000C7FD8(foregroundCopy);
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  selfCopy = self;
  sub_1000C80E0(sceneCopy);
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sub_10000827C(0, &qword_100118408);
  sub_10002879C(&unk_100118410, &qword_100118408);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  selfCopy = self;
  sub_1000C86F4(v6);
}

@end