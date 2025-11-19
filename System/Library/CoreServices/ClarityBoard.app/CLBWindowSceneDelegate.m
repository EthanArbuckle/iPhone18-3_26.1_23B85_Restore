@interface CLBWindowSceneDelegate
- (BOOL)handleEvent:(id)a3;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)setCurrentApplication:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation CLBWindowSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___CLBWindowSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR___CLBWindowSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)setCurrentApplication:(id)a3
{
  v6 = *(&self->super.isa + OBJC_IVAR___CLBWindowSceneDelegate_currentApplication);
  *(&self->super.isa + OBJC_IVAR___CLBWindowSceneDelegate_currentApplication) = a3;
  v4 = a3;
  v5 = self;
  sub_100040F28(v6);
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100042510();
}

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_100041308(v4);

  return self & 1;
}

@end