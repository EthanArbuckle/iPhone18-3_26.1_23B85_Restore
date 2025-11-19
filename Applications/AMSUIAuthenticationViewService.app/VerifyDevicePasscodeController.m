@interface VerifyDevicePasscodeController
- (_TtC30AMSUIAuthenticationViewService30VerifyDevicePasscodeController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)performDevicePasscodeVerificationWithCompletion:(id)a3;
@end

@implementation VerifyDevicePasscodeController

- (void)performDevicePasscodeVerificationWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1000077DC(sub_10000921C, v5);
}

- (_TtC30AMSUIAuthenticationViewService30VerifyDevicePasscodeController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1000088F0(v5, v7, a4);
}

@end