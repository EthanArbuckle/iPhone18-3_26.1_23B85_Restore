@interface AMSDRemoteSignInTask
- (_TtC12amsaccountsd20AMSDRemoteSignInTask)initWithAuthenticationResults:(id)results signInContext:(id)context serviceTypes:(id)types clientInfo:(id)info;
- (id)perform;
@end

@implementation AMSDRemoteSignInTask

- (_TtC12amsaccountsd20AMSDRemoteSignInTask)initWithAuthenticationResults:(id)results signInContext:(id)context serviceTypes:(id)types clientInfo:(id)info
{
  sub_10013CD24();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  resultsCopy = results;
  contextCopy = context;
  return AMSDRemoteSignInTask.init(authenticationResults:signInContext:serviceTypes:clientInfo:)(resultsCopy, context, v9, info);
}

- (id)perform
{
  selfCopy = self;
  v3 = AMSDRemoteSignInTask.perform()();

  return v3;
}

@end