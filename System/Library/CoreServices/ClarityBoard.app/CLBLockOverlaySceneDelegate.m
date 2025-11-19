@interface CLBLockOverlaySceneDelegate
- (BOOL)handleEvent:(id)a3;
- (CLBLockOverlaySceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)setWindow:(id)a3;
@end

@implementation CLBLockOverlaySceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___CLBLockOverlaySceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR___CLBLockOverlaySceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100080FC8();
}

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_10007FD54(v4);

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