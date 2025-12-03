@interface AMSDeveloperSilentAuthTokenPerformer
- (AMSDeveloperSilentAuthTokenPerformer)initWithBundleId:(id)id account:(id)account mediaType:(id)type bag:(id)bag;
- (id)performFetchToken;
- (id)performUpdateConsentWithStatus:(BOOL)status;
- (id)performUpdateWithToken:(id)token;
- (id)presentConsent;
@end

@implementation AMSDeveloperSilentAuthTokenPerformer

- (AMSDeveloperSilentAuthTokenPerformer)initWithBundleId:(id)id account:(id)account mediaType:(id)type bag:(id)bag
{
  v9 = sub_192F967CC();
  v11 = v10;
  accountCopy = account;
  typeCopy = type;
  swift_unknownObjectRetain();
  return DeveloperSilentAuthTokenPerformer.init(withBundleId:account:mediaType:bag:)(v9, v11, account, type, bag);
}

- (id)performUpdateWithToken:(id)token
{
  if (token)
  {
    v4 = sub_192F967CC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8.value._countAndFlagsBits = v4;
  v8.value._object = v6;
  v9 = DeveloperSilentAuthTokenPerformer.performUpdate(withToken:)(v8);

  return v9;
}

- (id)performFetchToken
{
  selfCopy = self;
  v3 = DeveloperSilentAuthTokenPerformer.performFetchToken()();

  return v3;
}

- (id)performUpdateConsentWithStatus:(BOOL)status
{
  selfCopy = self;
  v5 = DeveloperSilentAuthTokenPerformer.performUpdateConsent(withStatus:)(status);

  return v5;
}

- (id)presentConsent
{
  selfCopy = self;
  v3 = DeveloperSilentAuthTokenPerformer.presentConsent()();

  return v3;
}

@end