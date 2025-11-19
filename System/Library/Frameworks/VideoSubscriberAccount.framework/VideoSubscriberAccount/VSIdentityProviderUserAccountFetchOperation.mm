@interface VSIdentityProviderUserAccountFetchOperation
- (VSIdentityProviderUserAccountFetchOperation)initWithIdentityProvider:(id)a3;
- (void)executionDidBegin;
@end

@implementation VSIdentityProviderUserAccountFetchOperation

- (VSIdentityProviderUserAccountFetchOperation)initWithIdentityProvider:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = VSIdentityProviderUserAccountFetchOperation;
  v6 = [(VSIdentityProviderUserAccountFetchOperation *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_provider, a3);
    v8 = MEMORY[0x277CCABD8];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 queueWithName:v10];
    privateQueue = v7->_privateQueue;
    v7->_privateQueue = v11;

    [(NSOperationQueue *)v7->_privateQueue setMaxConcurrentOperationCount:1];
  }

  return v7;
}

- (void)executionDidBegin
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [(VSIdentityProviderUserAccountFetchOperation *)self provider];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [v2 nonChannelAppDescriptions];
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    v8 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [v10 bundleID];

        if (!v11)
        {
          [MEMORY[0x277CBEAD8] raise:v8 format:@"The [appDescription bundleID] parameter must not be nil."];
        }

        v12 = [v10 bundleID];
        [v3 addObject:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  v13 = objc_alloc_init(VSUserAccountServiceConnection);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __64__VSIdentityProviderUserAccountFetchOperation_executionDidBegin__block_invoke;
  v21[3] = &unk_278B732E0;
  v21[4] = self;
  v14 = [(VSUserAccountServiceConnection *)v13 serviceWithErrorHandler:v21];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __64__VSIdentityProviderUserAccountFetchOperation_executionDidBegin__block_invoke_5;
  v18[3] = &unk_278B74C00;
  v18[4] = self;
  v19 = v2;
  v20 = v3;
  v15 = v3;
  v16 = v2;
  [v14 queryUserAccountsWithOptions:0 completion:v18];
}

void __64__VSIdentityProviderUserAccountFetchOperation_executionDidBegin__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65__VSIdentityProviderUserAccountUpdateOperation_executionDidBegin__block_invoke_cold_1(v3, v4);
  }

  [*(a1 + 32) setError:v3];
  [*(a1 + 32) finishExecutionIfPossible];
}

void __64__VSIdentityProviderUserAccountFetchOperation_executionDidBegin__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = VSErrorLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __64__VSIdentityProviderUserAccountFetchOperation_executionDidBegin__block_invoke_5_cold_1(v6, v7);
    }

    [*(a1 + 32) setError:v6];
    [*(a1 + 32) finishExecutionIfPossible];
  }

  else
  {
    v23 = a1;
    v8 = [*(a1 + 40) providerID];
    v9 = [v8 forceUnwrapObject];

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v22 = v5;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          if ([v16 sourceType] == 2)
          {
            v17 = [v16 sourceIdentifier];
            v18 = [v17 isEqual:v9];
          }

          else
          {
            v18 = 0;
          }

          if ([v16 sourceType])
          {
            v19 = 0;
          }

          else
          {
            v20 = *(v23 + 48);
            v21 = [v16 sourceIdentifier];
            v19 = [v20 containsObject:v21];
          }

          if ((v18 | v19))
          {
            [v10 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v13);
    }

    [*(v23 + 32) setResults:v10];
    [*(v23 + 32) finishExecutionIfPossible];

    v6 = 0;
    v5 = v22;
  }
}

void __64__VSIdentityProviderUserAccountFetchOperation_executionDidBegin__block_invoke_5_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Error fetching user accounts: %@", &v2, 0xCu);
}

@end