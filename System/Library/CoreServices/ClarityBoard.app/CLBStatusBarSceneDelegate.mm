@interface CLBStatusBarSceneDelegate
- (BOOL)handleEvent:(id)a3;
- (CLBStatusBarSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)setWindow:(id)a3;
@end

@implementation CLBStatusBarSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___CLBStatusBarSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR___CLBStatusBarSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1000AEEE0();
}

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1000AB99C(v4);

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