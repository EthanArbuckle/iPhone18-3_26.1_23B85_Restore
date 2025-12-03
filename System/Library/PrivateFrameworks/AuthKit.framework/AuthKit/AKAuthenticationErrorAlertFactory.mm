@interface AKAuthenticationErrorAlertFactory
- (AKAuthenticationErrorAlertFactory)init;
- (id)createAlertDetailsWithError:(id)error username:(id)username;
@end

@implementation AKAuthenticationErrorAlertFactory

- (id)createAlertDetailsWithError:(id)error username:(id)username
{
  if (username)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  errorCopy = error;
  selfCopy = self;
  v11 = sub_1002289E0(errorCopy, v6, v8);

  return v11;
}

- (AKAuthenticationErrorAlertFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AuthenticationErrorAlertFactory();
  return [(AKAuthenticationErrorAlertFactory *)&v3 init];
}

@end