@interface AMSDeveloperSilentAuthTokenFetchTask
- (AMSDeveloperSilentAuthTokenFetchTask)initWithBundleId:(id)a3 account:(id)a4 mediaType:(id)a5 bag:(id)a6;
- (id)perform;
@end

@implementation AMSDeveloperSilentAuthTokenFetchTask

- (AMSDeveloperSilentAuthTokenFetchTask)initWithBundleId:(id)a3 account:(id)a4 mediaType:(id)a5 bag:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = AMSDeveloperSilentAuthTokenFetchTask;
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

- (id)perform
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__AMSDeveloperSilentAuthTokenFetchTask_perform__block_invoke;
  v4[3] = &unk_1E73B3588;
  v4[4] = self;
  v2 = [(AMSTask *)self performTaskWithPromiseBlock:v4];

  return v2;
}

id __47__AMSDeveloperSilentAuthTokenFetchTask_perform__block_invoke(uint64_t a1)
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

    [(AMSDeveloperSilentAuthTokenPerformer *)v8 performFetchToken];
  }

  else
  {
    v8 = AMSError(2, @"Missing bundleId", @"In order to fetch a token a bundleId is required", 0);
    [AMSPromise promiseWithError:v8];
  }
  v9 = ;

  return v9;
}

@end