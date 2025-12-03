@interface VSIdentityProviderUserAccountUpdateOperation
- (VSIdentityProviderUserAccountUpdateOperation)initWithIdentityProvider:(id)provider userAccounts:(id)accounts;
- (id)_allowedBundleIDs;
- (void)executionDidBegin;
@end

@implementation VSIdentityProviderUserAccountUpdateOperation

- (VSIdentityProviderUserAccountUpdateOperation)initWithIdentityProvider:(id)provider userAccounts:(id)accounts
{
  providerCopy = provider;
  accountsCopy = accounts;
  v12.receiver = self;
  v12.super_class = VSIdentityProviderUserAccountUpdateOperation;
  v9 = [(VSIdentityProviderUserAccountUpdateOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_provider, provider);
    objc_storeStrong(&v10->_userAccounts, accounts);
  }

  return v10;
}

- (void)executionDidBegin
{
  v30 = *MEMORY[0x277D85DE8];
  userAccounts = [(VSIdentityProviderUserAccountUpdateOperation *)self userAccounts];
  if ([userAccounts count])
  {
    v3 = VSDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [userAccounts count];
      provider = [(VSIdentityProviderUserAccountUpdateOperation *)self provider];
      *buf = 134218242;
      v27 = v4;
      v28 = 2112;
      v29 = provider;
      _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "%lu user accounts to write for provider %@", buf, 0x16u);
    }

    v6 = objc_alloc_init(VSUserAccountServiceConnection);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __65__VSIdentityProviderUserAccountUpdateOperation_executionDidBegin__block_invoke;
    v24[3] = &unk_278B732E0;
    v24[4] = self;
    v15 = v6;
    v7 = [(VSUserAccountServiceConnection *)v6 serviceWithErrorHandler:v24];
    v8 = objc_alloc_init(VSWaitGroup);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v16 = userAccounts;
    v9 = userAccounts;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        v13 = 0;
        do
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * v13);
          [(VSWaitGroup *)v8 enter];
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __65__VSIdentityProviderUserAccountUpdateOperation_executionDidBegin__block_invoke_2;
          v18[3] = &unk_278B74DC0;
          v18[4] = self;
          v18[5] = v14;
          v19 = v8;
          [v7 updateUserAccount:v14 completion:v18];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v11);
    }

    [(VSWaitGroup *)v8 waitWithMilliseconds:0];
    [(VSAsyncOperation *)self finishExecutionIfPossible];

    userAccounts = v16;
  }
}

void __65__VSIdentityProviderUserAccountUpdateOperation_executionDidBegin__block_invoke(uint64_t a1, void *a2)
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

void __65__VSIdentityProviderUserAccountUpdateOperation_executionDidBegin__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = VSErrorLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __65__VSIdentityProviderUserAccountUpdateOperation_executionDidBegin__block_invoke_2_cold_1(v3, v4);
    }

    [*(a1 + 32) setError:v3];
  }

  else
  {
    v5 = VSDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Successfully updated user account for provider: %@", &v7, 0xCu);
    }
  }

  [*(a1 + 48) leave];
}

- (id)_allowedBundleIDs
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  provider = [(VSIdentityProviderUserAccountUpdateOperation *)self provider];
  nonChannelAppDescriptions = [provider nonChannelAppDescriptions];

  v6 = [nonChannelAppDescriptions countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(nonChannelAppDescriptions);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        bundleID = [v11 bundleID];

        if (!bundleID)
        {
          [MEMORY[0x277CBEAD8] raise:v9 format:@"The [appDescription bundleID] parameter must not be nil."];
        }

        bundleID2 = [v11 bundleID];
        [v3 addObject:bundleID2];
      }

      v7 = [nonChannelAppDescriptions countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v3;
}

void __65__VSIdentityProviderUserAccountUpdateOperation_executionDidBegin__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Error with user account service connection: %@", &v2, 0xCu);
}

void __65__VSIdentityProviderUserAccountUpdateOperation_executionDidBegin__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Error updating user account for provider: %@", &v2, 0xCu);
}

@end