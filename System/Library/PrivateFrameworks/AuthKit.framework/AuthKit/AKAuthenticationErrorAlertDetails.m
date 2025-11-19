@interface AKAuthenticationErrorAlertDetails
- (AKAuthenticationErrorAlertDetails)init;
- (AKAuthenticationErrorAlertDetails)initWithError:(id)a3 title:(id)a4 message:(id)a5;
@end

@implementation AKAuthenticationErrorAlertDetails

- (AKAuthenticationErrorAlertDetails)initWithError:(id)a3 title:(id)a4 message:(id)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(self + OBJC_IVAR___AKAuthenticationErrorAlertDetails_error) = a3;
  v11 = (self + OBJC_IVAR___AKAuthenticationErrorAlertDetails_title);
  *v11 = v7;
  v11[1] = v9;
  v12 = (self + OBJC_IVAR___AKAuthenticationErrorAlertDetails_message);
  *v12 = v10;
  v12[1] = v13;
  v16.receiver = self;
  v16.super_class = type metadata accessor for AuthenticationErrorAlertDetails();
  v14 = a3;
  return [(AKAuthenticationErrorAlertDetails *)&v16 init];
}

- (AKAuthenticationErrorAlertDetails)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end