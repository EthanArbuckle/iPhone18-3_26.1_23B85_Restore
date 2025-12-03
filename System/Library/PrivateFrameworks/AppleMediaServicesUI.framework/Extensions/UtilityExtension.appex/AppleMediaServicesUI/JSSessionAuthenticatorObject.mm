@interface JSSessionAuthenticatorObject
- (id)getCredentials;
- (id)refreshBillingPlan;
- (id)signOut;
- (id)startSignInSession:(id)session;
@end

@implementation JSSessionAuthenticatorObject

- (id)refreshBillingPlan
{
  selfCopy = self;
  v3 = sub_10002B218();

  return v3;
}

- (id)getCredentials
{
  selfCopy = self;
  v3 = sub_10002BEC0();

  return v3;
}

- (id)startSignInSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  v6 = sub_10002C488();

  return v6;
}

- (id)signOut
{
  selfCopy = self;
  v3 = sub_10002CB30();

  return v3;
}

@end