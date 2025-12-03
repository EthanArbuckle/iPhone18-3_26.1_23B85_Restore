@interface DMCEnrollmentAuthenticationCoordinator
- (_TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38DMCEnrollmentAuthenticationCoordinator)init;
- (void)authenticationViewController:(id)controller didReceivePassword:(id)password forUsername:(id)username;
- (void)authenticationViewController:(id)controller didReceiveUsername:(id)username;
- (void)authenticationViewControllerDidCancel:(id)cancel;
@end

@implementation DMCEnrollmentAuthenticationCoordinator

- (_TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38DMCEnrollmentAuthenticationCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)authenticationViewController:(id)controller didReceiveUsername:(id)username
{
  v6 = sub_10008DBDC();
  v8 = v7;
  controllerCopy = controller;
  selfCopy = self;
  sub_100021A20(controllerCopy, v6, v8);
}

- (void)authenticationViewController:(id)controller didReceivePassword:(id)password forUsername:(id)username
{
  v7 = sub_10008DBDC();
  v9 = v8;
  v10 = sub_10008DBDC();
  v12 = v11;
  controllerCopy = controller;
  selfCopy = self;
  sub_100022250(controllerCopy, v7, v9, v10, v12);
}

- (void)authenticationViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_1000224E8();
}

@end