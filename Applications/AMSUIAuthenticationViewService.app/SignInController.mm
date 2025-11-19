@interface SignInController
- (SignInController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)performRemoteSignInTaskWithRequest:(id)a3 completion:(id)a4;
@end

@implementation SignInController

- (void)performRemoteSignInTaskWithRequest:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_1000056AC(v8, sub_1000073EC, v7);
}

- (SignInController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_100006E24(v5, v7, a4);
}

@end