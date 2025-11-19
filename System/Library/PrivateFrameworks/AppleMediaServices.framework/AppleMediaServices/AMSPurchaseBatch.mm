@interface AMSPurchaseBatch
- (AMSPurchaseBatch)initWithPurchases:(id)a3 weakPromise:(id)a4;
- (BOOL)finishPurchase:(id)a3 withError:(id)a4;
- (BOOL)finishPurchase:(id)a3 withResult:(id)a4;
- (id)nextPurchase;
- (id)purchaseForPurchaseId:(id)a3;
@end

@implementation AMSPurchaseBatch

- (AMSPurchaseBatch)initWithPurchases:(id)a3 weakPromise:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v32.receiver = self;
  v32.super_class = AMSPurchaseBatch;
  v8 = [(AMSPurchaseBatch *)&v32 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v8->_lock;
    v8->_lock = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    results = v8->_results;
    v8->_results = v11;

    objc_storeStrong(&v8->_promise, a4);
    v13 = [v6 mutableCopy];
    purchases = v8->_purchases;
    v8->_purchases = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    purchaseMap = v8->_purchaseMap;
    v8->_purchaseMap = v15;

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v17 = v8->_purchases;
    v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v29;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v28 + 1) + 8 * i);
          v23 = v8->_purchaseMap;
          v24 = [v22 uniqueIdentifier];
          [(NSMutableDictionary *)v23 setObject:v22 forKey:v24];
        }

        v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v19);
    }

    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    returnedPurchaseIDs = v8->_returnedPurchaseIDs;
    v8->_returnedPurchaseIDs = v25;
  }

  return v8;
}

- (id)purchaseForPurchaseId:(id)a3
{
  v4 = a3;
  v5 = [(AMSPurchaseBatch *)self lock];
  [v5 lock];

  v6 = [(NSMutableDictionary *)self->_purchaseMap objectForKey:v4];

  v7 = [(AMSPurchaseBatch *)self lock];
  [v7 unlock];

  return v6;
}

- (BOOL)finishPurchase:(id)a3 withError:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 logUUID];
      *buf = 138543618;
      v30 = v10;
      v31 = 2114;
      v32 = v7;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "AMSPurchaseQueue: [%{public}@] Finished purchase with error: %{public}@", buf, 0x16u);
    }

    v11 = [(AMSPurchaseBatch *)self lock];
    [v11 lock];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = self->_purchases;
    v12 = [(NSMutableArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          v17 = objc_alloc_init(AMSPurchaseResult);
          [(AMSPurchaseResult *)v17 setError:v7];
          [(NSMutableArray *)self->_results addObject:v17];
          v18 = +[AMSLogConfig sharedConfig];
          if (!v18)
          {
            v18 = +[AMSLogConfig sharedConfig];
          }

          v19 = [v18 OSLogObject];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [v16 logUUID];
            *buf = 138543618;
            v30 = v20;
            v31 = 2114;
            v32 = v7;
            _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_DEFAULT, "AMSPurchaseQueue: [%{public}@] Finished batch item purchase with error: %{public}@", buf, 0x16u);
          }
        }

        v13 = [(NSMutableArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v13);
    }

    [(NSMutableArray *)self->_purchases removeAllObjects];
    [(NSMutableDictionary *)self->_purchaseMap removeAllObjects];
    [(AMSMutableLazyPromise *)self->_promise finishWithError:v7];
    self->_isComplete = 1;
    v21 = [(AMSPurchaseBatch *)self lock];
    [v21 unlock];
  }

  return v6 != 0;
}

- (BOOL)finishPurchase:(id)a3 withResult:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 logUUID];
      v20 = 138543618;
      v21 = v10;
      v22 = 2114;
      v23 = v7;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "AMSPurchaseQueue: [%{public}@] Finished purchase with result: %{public}@", &v20, 0x16u);
    }

    v11 = [(AMSPurchaseBatch *)self lock];
    [v11 lock];

    [(NSMutableArray *)self->_results addObject:v7];
    [(NSMutableArray *)self->_purchases removeObject:v6];
    purchaseMap = self->_purchaseMap;
    v13 = [v6 uniqueIdentifier];
    [(NSMutableDictionary *)purchaseMap removeObjectForKey:v13];

    if (![(NSMutableArray *)self->_purchases count])
    {
      v14 = +[AMSLogConfig sharedConfig];
      if (!v14)
      {
        v14 = +[AMSLogConfig sharedConfig];
      }

      v15 = [v14 OSLogObject];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v6 logUUID];
        results = self->_results;
        v20 = 138543618;
        v21 = v16;
        v22 = 2114;
        v23 = results;
        _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "AMSPurchaseQueue: [%{public}@] Finished promise with results: %{public}@", &v20, 0x16u);
      }

      [(AMSMutableLazyPromise *)self->_promise finishWithResult:self->_results];
      self->_isComplete = 1;
    }

    v18 = [(AMSPurchaseBatch *)self lock];
    [v18 unlock];
  }

  return v6 != 0;
}

- (id)nextPurchase
{
  v3 = [(AMSPurchaseBatch *)self lock];
  [v3 lock];

  v4 = [(AMSPurchaseBatch *)self purchases];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __32__AMSPurchaseBatch_nextPurchase__block_invoke;
  v10[3] = &unk_1E73BB030;
  v10[4] = self;
  v5 = [v4 ams_firstObjectPassingTest:v10];

  if (v5)
  {
    v6 = [(AMSPurchaseBatch *)self returnedPurchaseIDs];
    v7 = [v5 uniqueIdentifier];
    [v6 addObject:v7];
  }

  v8 = [(AMSPurchaseBatch *)self lock];
  [v8 unlock];

  return v5;
}

uint64_t __32__AMSPurchaseBatch_nextPurchase__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 returnedPurchaseIDs];
  v5 = [v3 uniqueIdentifier];

  LODWORD(v3) = [v4 containsObject:v5];
  return v3 ^ 1;
}

@end