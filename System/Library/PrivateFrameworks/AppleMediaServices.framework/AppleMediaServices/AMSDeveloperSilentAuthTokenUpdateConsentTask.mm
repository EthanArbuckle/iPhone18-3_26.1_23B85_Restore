@interface AMSDeveloperSilentAuthTokenUpdateConsentTask
- (AMSDeveloperSilentAuthTokenUpdateConsentTask)initWithBundleId:(id)a3 account:(id)a4 mediaType:(id)a5 bag:(id)a6;
- (id)performUpdateConsent:(BOOL)a3;
@end

@implementation AMSDeveloperSilentAuthTokenUpdateConsentTask

- (AMSDeveloperSilentAuthTokenUpdateConsentTask)initWithBundleId:(id)a3 account:(id)a4 mediaType:(id)a5 bag:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = AMSDeveloperSilentAuthTokenUpdateConsentTask;
  v14 = [(AMSTask *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_account, a4);
    objc_storeStrong(&v15->_mediaType, a5);
    v16 = [v10 copy];
    bundleId = v15->_bundleId;
    v15->_bundleId = v16;

    objc_storeStrong(&v15->_bag, a6);
  }

  return v15;
}

- (id)performUpdateConsent:(BOOL)a3
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__AMSDeveloperSilentAuthTokenUpdateConsentTask_performUpdateConsent___block_invoke;
  v6[3] = &unk_1E73B6A80;
  v6[4] = self;
  v7 = a3;
  v3 = [(AMSTask *)self performTaskWithPromiseBlock:v6];
  v4 = [v3 binaryPromiseAdapter];

  return v4;
}

id __69__AMSDeveloperSilentAuthTokenUpdateConsentTask_performUpdateConsent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) bundleId];

  if (v2)
  {
    v3 = [AMSDeveloperSilentAuthTokenPerformer alloc];
    v4 = [*(a1 + 32) bundleId];
    v5 = [*(a1 + 32) account];
    v6 = [*(a1 + 32) mediaType];
    v7 = [*(a1 + 32) bag];
    v8 = [(AMSDeveloperSilentAuthTokenPerformer *)v3 initWithBundleId:v4 account:v5 mediaType:v6 bag:v7];

    v9 = [(AMSDeveloperSilentAuthTokenPerformer *)v8 performUpdateConsentWithStatus:*(a1 + 40)];
    v10 = [v9 promiseAdapter];
  }

  else
  {
    v8 = AMSError(2, @"Missing bundleId", @"In order to fetch a token a bundleId is required", 0);
    v10 = [AMSPromise promiseWithError:v8];
  }

  return v10;
}

@end