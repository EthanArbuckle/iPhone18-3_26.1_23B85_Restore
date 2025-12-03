@interface SignInController
- (SignInController)initWithNibName:(id)name bundle:(id)bundle;
- (void)performRemoteSignInTaskWithRequest:(id)request completion:(id)completion;
@end

@implementation SignInController

- (void)performRemoteSignInTaskWithRequest:(id)request completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  requestCopy = request;
  selfCopy = self;
  sub_1000056AC(requestCopy, sub_1000073EC, v7);
}

- (SignInController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_100006E24(v5, v7, bundle);
}

@end