@interface AMSDeveloperSilentAuthTokenPerformer
- (AMSDeveloperSilentAuthTokenPerformer)initWithBundleId:(id)a3 account:(id)a4 mediaType:(id)a5 bag:(id)a6;
- (id)performFetchToken;
- (id)performUpdateConsentWithStatus:(BOOL)a3;
- (id)performUpdateWithToken:(id)a3;
- (id)presentConsent;
@end

@implementation AMSDeveloperSilentAuthTokenPerformer

- (AMSDeveloperSilentAuthTokenPerformer)initWithBundleId:(id)a3 account:(id)a4 mediaType:(id)a5 bag:(id)a6
{
  v9 = sub_192F967CC();
  v11 = v10;
  v12 = a4;
  v13 = a5;
  swift_unknownObjectRetain();
  return DeveloperSilentAuthTokenPerformer.init(withBundleId:account:mediaType:bag:)(v9, v11, a4, a5, a6);
}

- (id)performUpdateWithToken:(id)a3
{
  if (a3)
  {
    v4 = sub_192F967CC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8.value._countAndFlagsBits = v4;
  v8.value._object = v6;
  v9 = DeveloperSilentAuthTokenPerformer.performUpdate(withToken:)(v8);

  return v9;
}

- (id)performFetchToken
{
  v2 = self;
  v3 = DeveloperSilentAuthTokenPerformer.performFetchToken()();

  return v3;
}

- (id)performUpdateConsentWithStatus:(BOOL)a3
{
  v4 = self;
  v5 = DeveloperSilentAuthTokenPerformer.performUpdateConsent(withStatus:)(a3);

  return v5;
}

- (id)presentConsent
{
  v2 = self;
  v3 = DeveloperSilentAuthTokenPerformer.presentConsent()();

  return v3;
}

@end