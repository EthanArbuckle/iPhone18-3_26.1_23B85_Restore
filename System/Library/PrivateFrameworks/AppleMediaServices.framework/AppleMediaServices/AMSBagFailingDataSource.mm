@interface AMSBagFailingDataSource
- (AMSBagFailingDataSource)initWithProfile:(id)profile profileVersion:(id)version error:(id)error delay:(double)delay;
- (void)loadWithCompletion:(id)completion;
@end

@implementation AMSBagFailingDataSource

- (AMSBagFailingDataSource)initWithProfile:(id)profile profileVersion:(id)version error:(id)error delay:(double)delay
{
  profileCopy = profile;
  versionCopy = version;
  errorCopy = error;
  v18.receiver = self;
  v18.super_class = AMSBagFailingDataSource;
  v14 = [(AMSBagFailingDataSource *)&v18 init];
  v15 = v14;
  if (v14)
  {
    v14->_delay = delay;
    objc_storeStrong(&v14->_error, error);
    expirationDate = v15->_expirationDate;
    v15->_expirationDate = 0;

    objc_storeStrong(&v15->_profile, profile);
    objc_storeStrong(&v15->_profileVersion, version);
  }

  return v15;
}

- (void)loadWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  [(AMSBagFailingDataSource *)self delay];
  v6 = dispatch_time(0, (v5 * 1000000000.0));
  v7 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__AMSBagFailingDataSource_loadWithCompletion___block_invoke;
  block[3] = &unk_1E73BA198;
  objc_copyWeak(&v11, &location);
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_after(v6, v7, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __46__AMSBagFailingDataSource_loadWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  v3 = [WeakRetained error];
  (*(v2 + 16))(v2, 0, v3);
}

@end