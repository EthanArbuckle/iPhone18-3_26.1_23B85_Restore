@interface JSExternalAuthenticatorObject
- (NSString)defaultConfigurationIdentifier;
- (id)getCredentials:(id)credentials;
- (id)getUserInfo:(id)info;
- (id)refreshBillingPlan:(id)plan;
- (id)signOut:(id)out;
@end

@implementation JSExternalAuthenticatorObject

- (NSString)defaultConfigurationIdentifier
{
  selfCopy = self;
  sub_100018F28();

  v3 = sub_10004491C();

  return v3;
}

- (id)refreshBillingPlan:(id)plan
{
  planCopy = plan;
  selfCopy = self;
  v6 = sub_100018F94();

  return v6;
}

- (id)getCredentials:(id)credentials
{
  credentialsCopy = credentials;
  selfCopy = self;
  v6 = sub_10001A644();

  return v6;
}

- (id)getUserInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  v6 = sub_10001AC60();

  return v6;
}

- (id)signOut:(id)out
{
  outCopy = out;
  selfCopy = self;
  v6 = sub_10001BA14();

  return v6;
}

@end