@interface CLBStatusBarSceneDelegate
- (BOOL)handleEvent:(id)event;
- (CLBStatusBarSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)setWindow:(id)window;
@end

@implementation CLBStatusBarSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.isa + OBJC_IVAR___CLBStatusBarSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR___CLBStatusBarSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1000AEEE0();
}

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  LOBYTE(self) = sub_1000AB99C(eventCopy);

  return self & 1;
}

- (CLBStatusBarSceneDelegate)init
{
  *(&self->super.isa + OBJC_IVAR___CLBStatusBarSceneDelegate_window) = 0;
  *(&self->super.isa + OBJC_IVAR___CLBStatusBarSceneDelegate_viewController) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for StatusBarSceneDelegate();
  return [(CLBStatusBarSceneDelegate *)&v3 init];
}

@end