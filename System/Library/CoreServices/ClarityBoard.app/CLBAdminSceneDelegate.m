@interface CLBAdminSceneDelegate
- (BOOL)handleEvent:(id)a3;
- (CLBAdminSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)setIsShowingAdminSettings:(BOOL)a3;
- (void)setIsShowingModalView:(BOOL)a3;
- (void)setWindow:(id)a3;
@end

@implementation CLBAdminSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___CLBAdminSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR___CLBAdminSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)setIsShowingModalView:(BOOL)a3
{
  *(&self->super.isa + OBJC_IVAR___CLBAdminSceneDelegate_isShowingModalView) = a3;
  v3 = *(&self->super.isa + OBJC_IVAR___CLBAdminSceneDelegate_window);
  if (v3)
  {
    [v3 setAccessibilityViewIsModal:?];
  }
}

- (void)setIsShowingAdminSettings:(BOOL)a3
{
  v4 = self;
  sub_1000870E4(a3);
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100088A7C();
}

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(CLBAdminSceneDelegate *)v4 type];
  if (v6 == 6)
  {
    sub_10002B6CC(&qword_10032D0B8);
    sub_1000812EC();
    Subject<>.send()();
    v7 = v5;
  }

  else
  {
    v7 = v4;
    v4 = v5;
  }

  return v6 == 6;
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