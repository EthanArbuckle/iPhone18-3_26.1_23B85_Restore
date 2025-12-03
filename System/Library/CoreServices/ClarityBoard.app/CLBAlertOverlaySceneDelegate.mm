@interface CLBAlertOverlaySceneDelegate
- (CLBAlertOverlaySceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)setWindow:(id)window;
@end

@implementation CLBAlertOverlaySceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.isa + OBJC_IVAR___CLBAlertOverlaySceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR___CLBAlertOverlaySceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    sceneCopy = scene;
  }

  v8 = objc_opt_self();
  v9 = objc_allocWithZone(CLBAlertPresenter);
  sceneCopy2 = scene;
  v10 = [v9 initWithWindowScene:v6];

  [v8 startWithAlertPresenter:v10];
}

- (CLBAlertOverlaySceneDelegate)init
{
  *(&self->super.isa + OBJC_IVAR___CLBAlertOverlaySceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AlertOverlaySceneDelegate();
  return [(CLBAlertOverlaySceneDelegate *)&v3 init];
}

@end