@interface VerifyDevicePasscodeController
- (_TtC30AMSUIAuthenticationViewService30VerifyDevicePasscodeController)initWithNibName:(id)name bundle:(id)bundle;
- (void)performDevicePasscodeVerificationWithCompletion:(id)completion;
@end

@implementation VerifyDevicePasscodeController

- (void)performDevicePasscodeVerificationWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1000077DC(sub_10000921C, v5);
}

- (_TtC30AMSUIAuthenticationViewService30VerifyDevicePasscodeController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1000088F0(v5, v7, bundle);
}

@end