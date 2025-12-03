@interface HostCoordinator
- (_TtC17NFCUISceneService15HostCoordinator)init;
- (void)dismissScene;
- (void)hostViewControllerDidActivate:(id)activate;
- (void)hostViewControllerWillDeactivate:(id)deactivate error:(id)error;
- (void)invalidate;
@end

@implementation HostCoordinator

- (void)invalidate
{
  selfCopy = self;
  sub_1000024A4();
}

- (void)hostViewControllerDidActivate:(id)activate
{
  activateCopy = activate;
  selfCopy = self;
  sub_100002504(activateCopy);
}

- (void)hostViewControllerWillDeactivate:(id)deactivate error:(id)error
{
  deactivateCopy = deactivate;
  selfCopy = self;
  errorCopy = error;
  sub_100003110(deactivateCopy, error);
}

- (void)dismissScene
{
  selfCopy = self;
  sub_100003608();
}

- (_TtC17NFCUISceneService15HostCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end