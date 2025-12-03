@interface AMSDeveloperSilentAuthTokenConsentTask
- (AMSDeveloperSilentAuthTokenConsentTask)initWithBundleId:(id)id account:(id)account mediaType:(id)type bag:(id)bag;
- (id)performPresentation;
@end

@implementation AMSDeveloperSilentAuthTokenConsentTask

- (AMSDeveloperSilentAuthTokenConsentTask)initWithBundleId:(id)id account:(id)account mediaType:(id)type bag:(id)bag
{
  idCopy = id;
  accountCopy = account;
  typeCopy = type;
  bagCopy = bag;
  v19.receiver = self;
  v19.super_class = AMSDeveloperSilentAuthTokenConsentTask;
  v14 = [(AMSTask *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_account, account);
    objc_storeStrong(&v15->_mediaType, type);
    v16 = [idCopy copy];
    bundleId = v15->_bundleId;
    v15->_bundleId = v16;

    objc_storeStrong(&v15->_bag, bag);
  }

  return v15;
}

- (id)performPresentation
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__AMSDeveloperSilentAuthTokenConsentTask_performPresentation__block_invoke;
  v4[3] = &unk_1E73B3588;
  v4[4] = self;
  v2 = [(AMSTask *)self performTaskWithPromiseBlock:v4];

  return v2;
}

id __61__AMSDeveloperSilentAuthTokenConsentTask_performPresentation__block_invoke(uint64_t a1)
{
  v2 = [AMSDeveloperSilentAuthTokenPerformer alloc];
  v3 = [*(a1 + 32) bundleId];
  v4 = [*(a1 + 32) account];
  v5 = [*(a1 + 32) mediaType];
  v6 = [*(a1 + 32) bag];
  v7 = [(AMSDeveloperSilentAuthTokenPerformer *)v2 initWithBundleId:v3 account:v4 mediaType:v5 bag:v6];

  v8 = [(AMSDeveloperSilentAuthTokenPerformer *)v7 presentConsent];

  return v8;
}

@end