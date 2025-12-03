@interface CLBLockOverlaySceneDelegate
- (BOOL)handleEvent:(id)event;
- (CLBLockOverlaySceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)setWindow:(id)window;
@end

@implementation CLBLockOverlaySceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.isa + OBJC_IVAR___CLBLockOverlaySceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR___CLBLockOverlaySceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100080FC8();
}

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  LOBYTE(self) = sub_10007FD54(eventCopy);

  return self & 1;
}

- (CLBLockOverlaySceneDelegate)init
{
  *(&self->super.isa + OBJC_IVAR___CLBLockOverlaySceneDelegate_window) = 0;
  *(&self->super.isa + OBJC_IVAR___CLBLockOverlaySceneDelegate_lockOverlayViewController) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for LockOverlaySceneDelegate();
  return [(CLBLockOverlaySceneDelegate *)&v3 init];
}

@end