@interface CarPlaySceneDelegate
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)setWindow:(id)window;
@end

@implementation CarPlaySceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5Music20CarPlaySceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC5Music20CarPlaySceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100298794(sceneCopy, optionsCopy);
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sub_100009F78(0, &qword_101189758);
  sub_10001C070(&qword_101189760, &qword_101189758);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  selfCopy = self;
  sub_100298990(v6);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC5Music20CarPlaySceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC5Music20CarPlaySceneDelegate_window) = 0;
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_100298A40(foregroundCopy);
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  sub_100298C70(backgroundCopy);
}

@end