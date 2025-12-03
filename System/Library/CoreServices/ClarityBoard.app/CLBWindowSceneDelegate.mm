@interface CLBWindowSceneDelegate
- (BOOL)handleEvent:(id)event;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)setCurrentApplication:(id)application;
- (void)setWindow:(id)window;
@end

@implementation CLBWindowSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.isa + OBJC_IVAR___CLBWindowSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR___CLBWindowSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)setCurrentApplication:(id)application
{
  v6 = *(&self->super.isa + OBJC_IVAR___CLBWindowSceneDelegate_currentApplication);
  *(&self->super.isa + OBJC_IVAR___CLBWindowSceneDelegate_currentApplication) = application;
  applicationCopy = application;
  selfCopy = self;
  sub_100040F28(v6);
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100042510();
}

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  LOBYTE(self) = sub_100041308(eventCopy);

  return self & 1;
}

@end