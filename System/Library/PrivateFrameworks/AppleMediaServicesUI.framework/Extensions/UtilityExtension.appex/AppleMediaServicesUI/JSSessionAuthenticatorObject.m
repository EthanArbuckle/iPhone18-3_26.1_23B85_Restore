@interface JSSessionAuthenticatorObject
- (id)getCredentials;
- (id)refreshBillingPlan;
- (id)signOut;
- (id)startSignInSession:(id)a3;
@end

@implementation JSSessionAuthenticatorObject

- (id)refreshBillingPlan
{
  v2 = self;
  v3 = sub_10002B218();

  return v3;
}

- (id)getCredentials
{
  v2 = self;
  v3 = sub_10002BEC0();

  return v3;
}

- (id)startSignInSession:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10002C488();

  return v6;
}

- (id)signOut
{
  v2 = self;
  v3 = sub_10002CB30();

  return v3;
}

@end