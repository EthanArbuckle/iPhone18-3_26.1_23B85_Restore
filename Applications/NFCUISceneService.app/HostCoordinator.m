@interface HostCoordinator
- (_TtC17NFCUISceneService15HostCoordinator)init;
- (void)dismissScene;
- (void)hostViewControllerDidActivate:(id)a3;
- (void)hostViewControllerWillDeactivate:(id)a3 error:(id)a4;
- (void)invalidate;
@end

@implementation HostCoordinator

- (void)invalidate
{
  v2 = self;
  sub_1000024A4();
}

- (void)hostViewControllerDidActivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100002504(v4);
}

- (void)hostViewControllerWillDeactivate:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_100003110(v6, a4);
}

- (void)dismissScene
{
  v2 = self;
  sub_100003608();
}

- (_TtC17NFCUISceneService15HostCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end