@interface DMCEnrollmentAuthenticationCoordinator
- (_TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38DMCEnrollmentAuthenticationCoordinator)init;
- (void)authenticationViewController:(id)a3 didReceivePassword:(id)a4 forUsername:(id)a5;
- (void)authenticationViewController:(id)a3 didReceiveUsername:(id)a4;
- (void)authenticationViewControllerDidCancel:(id)a3;
@end

@implementation DMCEnrollmentAuthenticationCoordinator

- (_TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38DMCEnrollmentAuthenticationCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)authenticationViewController:(id)a3 didReceiveUsername:(id)a4
{
  v6 = sub_10008DBDC();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_100021A20(v9, v6, v8);
}

- (void)authenticationViewController:(id)a3 didReceivePassword:(id)a4 forUsername:(id)a5
{
  v7 = sub_10008DBDC();
  v9 = v8;
  v10 = sub_10008DBDC();
  v12 = v11;
  v13 = a3;
  v14 = self;
  sub_100022250(v13, v7, v9, v10, v12);
}

- (void)authenticationViewControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000224E8();
}

@end