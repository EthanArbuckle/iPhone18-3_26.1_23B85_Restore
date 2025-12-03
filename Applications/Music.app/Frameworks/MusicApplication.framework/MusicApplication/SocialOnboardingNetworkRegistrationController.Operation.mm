@interface SocialOnboardingNetworkRegistrationController.Operation
- (_TtCC16MusicApplication45SocialOnboardingNetworkRegistrationControllerP33_A38BE87C3BD3A87290E3ECE22270D9819Operation)init;
- (void)execute;
- (void)finishWithError:(id)error;
@end

@implementation SocialOnboardingNetworkRegistrationController.Operation

- (void)execute
{
  selfCopy = self;
  sub_E9F68();
}

- (void)finishWithError:(id)error
{
  v4 = error == 0;
  v5 = *&self->responseHandler[OBJC_IVAR____TtCC16MusicApplication45SocialOnboardingNetworkRegistrationControllerP33_A38BE87C3BD3A87290E3ECE22270D9819Operation_responseHandler];
  selfCopy = self;
  errorCopy = error;
  v5(v4, error);
  if (error)
  {
    v8 = sub_AB3040();
  }

  else
  {
    v8 = 0;
  }

  v9.receiver = selfCopy;
  v9.super_class = type metadata accessor for SocialOnboardingNetworkRegistrationController.Operation(0);
  [(SocialOnboardingNetworkRegistrationController.Operation *)&v9 finishWithError:v8];
}

- (_TtCC16MusicApplication45SocialOnboardingNetworkRegistrationControllerP33_A38BE87C3BD3A87290E3ECE22270D9819Operation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end