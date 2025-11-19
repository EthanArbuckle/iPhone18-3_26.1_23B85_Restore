@interface JSExternalAuthenticatorObject
- (NSString)defaultConfigurationIdentifier;
- (id)getCredentials:(id)a3;
- (id)getUserInfo:(id)a3;
- (id)refreshBillingPlan:(id)a3;
- (id)signOut:(id)a3;
@end

@implementation JSExternalAuthenticatorObject

- (NSString)defaultConfigurationIdentifier
{
  v2 = self;
  sub_100018F28();

  v3 = sub_10004491C();

  return v3;
}

- (id)refreshBillingPlan:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100018F94();

  return v6;
}

- (id)getCredentials:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10001A644();

  return v6;
}

- (id)getUserInfo:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10001AC60();

  return v6;
}

- (id)signOut:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10001BA14();

  return v6;
}

@end