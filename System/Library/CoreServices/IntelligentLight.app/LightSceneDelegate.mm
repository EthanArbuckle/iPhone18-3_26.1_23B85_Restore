@interface LightSceneDelegate
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)setWindow:(id)window;
@end

@implementation LightSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1000028F0(sceneCopy, sessionCopy, optionsCopy);
}

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC16IntelligentLight18LightSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC16IntelligentLight18LightSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_10000B1FC(disconnectCopy);
}

@end