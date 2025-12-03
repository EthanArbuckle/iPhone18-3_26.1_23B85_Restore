@interface EXRemoteSceneDelegate
- (EXRemoteSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)setWindow:(id)window;
@end

@implementation EXRemoteSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___EXRemoteSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR___EXRemoteSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1D29EE718(sceneCopy, sessionCopy);
}

- (EXRemoteSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR___EXRemoteSceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for EXRemoteSceneDelegate();
  return [(EXRemoteSceneDelegate *)&v3 init];
}

@end