@interface CLBOpenApplicationVerifierResultError
- (CLBOpenApplicationVerifierResultError)init;
- (NSString)errorDescription;
- (void)setErrorDescription:(id)description;
@end

@implementation CLBOpenApplicationVerifierResultError

- (NSString)errorDescription
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setErrorDescription:(id)description
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR___CLBOpenApplicationVerifierResultError_errorDescription);
  *v5 = v4;
  v5[1] = v6;
}

- (CLBOpenApplicationVerifierResultError)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end