@interface CLBAdminSceneDelegate
- (BOOL)handleEvent:(id)event;
- (CLBAdminSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)setIsShowingAdminSettings:(BOOL)settings;
- (void)setIsShowingModalView:(BOOL)view;
- (void)setWindow:(id)window;
@end

@implementation CLBAdminSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.isa + OBJC_IVAR___CLBAdminSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR___CLBAdminSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)setIsShowingModalView:(BOOL)view
{
  *(&self->super.isa + OBJC_IVAR___CLBAdminSceneDelegate_isShowingModalView) = view;
  v3 = *(&self->super.isa + OBJC_IVAR___CLBAdminSceneDelegate_window);
  if (v3)
  {
    [v3 setAccessibilityViewIsModal:?];
  }
}

- (void)setIsShowingAdminSettings:(BOOL)settings
{
  selfCopy = self;
  sub_1000870E4(settings);
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100088A7C();
}

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  type = [(CLBAdminSceneDelegate *)eventCopy type];
  if (type == 6)
  {
    sub_10002B6CC(&qword_10032D0B8);
    sub_1000812EC();
    Subject<>.send()();
    v7 = selfCopy;
  }

  else
  {
    v7 = eventCopy;
    eventCopy = selfCopy;
  }

  return type == 6;
}

- (CLBAdminSceneDelegate)init
{
  *(&self->super.isa + OBJC_IVAR___CLBAdminSceneDelegate_window) = 0;
  *(&self->super.isa + OBJC_IVAR___CLBAdminSceneDelegate_isShowingModalView) = 0;
  *(&self->super.isa + OBJC_IVAR___CLBAdminSceneDelegate_isShowingAdminSettings) = 0;
  v3 = OBJC_IVAR___CLBAdminSceneDelegate_showAdminViewPublisher;
  sub_10002B6CC(&qword_10032D0B8);
  swift_allocObject();
  *(&self->super.isa + v3) = PassthroughSubject.init()();
  v5.receiver = self;
  v5.super_class = type metadata accessor for AdminSceneDelegate();
  return [(CLBAdminSceneDelegate *)&v5 init];
}

@end