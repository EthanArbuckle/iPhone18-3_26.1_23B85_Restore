@interface AKAuthenticationErrorAlertFactory
- (AKAuthenticationErrorAlertFactory)init;
- (id)createAlertDetailsWithError:(id)a3 username:(id)a4;
@end

@implementation AKAuthenticationErrorAlertFactory

- (id)createAlertDetailsWithError:(id)a3 username:(id)a4
{
  if (a4)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v10 = self;
  v11 = sub_1002289E0(v9, v6, v8);

  return v11;
}

- (AKAuthenticationErrorAlertFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AuthenticationErrorAlertFactory();
  return [(AKAuthenticationErrorAlertFactory *)&v3 init];
}

@end