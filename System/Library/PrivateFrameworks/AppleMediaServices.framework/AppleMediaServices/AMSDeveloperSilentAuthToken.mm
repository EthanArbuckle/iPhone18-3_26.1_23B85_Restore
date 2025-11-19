@interface AMSDeveloperSilentAuthToken
- (AMSDeveloperSilentAuthToken)initWithConsentStatus:(unint64_t)a3 token:(id)a4;
- (BOOL)hasConsented;
- (NSString)token;
@end

@implementation AMSDeveloperSilentAuthToken

- (NSString)token
{
  sub_192C92E08();
  if (v2)
  {
    v3 = sub_192F9679C();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (AMSDeveloperSilentAuthToken)initWithConsentStatus:(unint64_t)a3 token:(id)a4
{
  if (a4)
  {
    a4 = sub_192F967CC();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_192C92E78(a3, a4, v6);
}

- (BOOL)hasConsented
{
  v2 = self;
  v3 = AMSDeveloperSilentAuthToken.hasConsented.getter();

  return v3;
}

@end