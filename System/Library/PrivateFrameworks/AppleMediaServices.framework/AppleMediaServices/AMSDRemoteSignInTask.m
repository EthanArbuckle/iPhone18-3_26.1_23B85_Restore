@interface AMSDRemoteSignInTask
- (_TtC12amsaccountsd20AMSDRemoteSignInTask)initWithAuthenticationResults:(id)a3 signInContext:(id)a4 serviceTypes:(id)a5 clientInfo:(id)a6;
- (id)perform;
@end

@implementation AMSDRemoteSignInTask

- (_TtC12amsaccountsd20AMSDRemoteSignInTask)initWithAuthenticationResults:(id)a3 signInContext:(id)a4 serviceTypes:(id)a5 clientInfo:(id)a6
{
  sub_10013CD24();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a4;
  return AMSDRemoteSignInTask.init(authenticationResults:signInContext:serviceTypes:clientInfo:)(v10, a4, v9, a6);
}

- (id)perform
{
  v2 = self;
  v3 = AMSDRemoteSignInTask.perform()();

  return v3;
}

@end