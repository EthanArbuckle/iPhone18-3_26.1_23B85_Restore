@interface CLBAlertOverlaySceneDelegate
- (CLBAlertOverlaySceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)setWindow:(id)a3;
@end

@implementation CLBAlertOverlaySceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___CLBAlertOverlaySceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR___CLBAlertOverlaySceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = a3;
  }

  v8 = objc_opt_self();
  v9 = objc_allocWithZone(CLBAlertPresenter);
  v11 = a3;
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