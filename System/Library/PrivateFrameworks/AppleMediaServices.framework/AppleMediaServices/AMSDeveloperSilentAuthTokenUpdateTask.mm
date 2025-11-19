@interface AMSDeveloperSilentAuthTokenUpdateTask
- (AMSDeveloperSilentAuthTokenUpdateTask)initWithBundleId:(id)a3 account:(id)a4 mediaType:(id)a5 bag:(id)a6;
- (id)performWithToken:(id)a3;
@end

@implementation AMSDeveloperSilentAuthTokenUpdateTask

- (AMSDeveloperSilentAuthTokenUpdateTask)initWithBundleId:(id)a3 account:(id)a4 mediaType:(id)a5 bag:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = AMSDeveloperSilentAuthTokenUpdateTask;
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

- (id)performWithToken:(id)a3
{
  v4 = a3;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __58__AMSDeveloperSilentAuthTokenUpdateTask_performWithToken___block_invoke;
  v12 = &unk_1E73B6AA8;
  v13 = self;
  v14 = v4;
  v5 = v4;
  v6 = [(AMSTask *)self performTaskWithPromiseBlock:&v9];
  v7 = [v6 binaryPromiseAdapter];

  return v7;
}

id __58__AMSDeveloperSilentAuthTokenUpdateTask_performWithToken___block_invoke(uint64_t a1)
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

    v9 = [(AMSDeveloperSilentAuthTokenPerformer *)v8 performUpdateWithToken:*(a1 + 40)];
    v10 = [v9 promiseAdapter];
  }

  else
  {
    v8 = AMSError(2, @"Missing bundleId", @"In order to update a token, a bundleId is required", 0);
    v10 = [AMSPromise promiseWithError:v8];
  }

  return v10;
}

@end