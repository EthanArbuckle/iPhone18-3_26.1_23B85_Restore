@interface VSIdentityProviderInfoCenter
+ (id)sharedCenter;
- (VSIdentityProviderInfoCenter)init;
- (id)_value:(id)a3 withDefault:(id)a4;
- (void)_fetch:(id)a3;
- (void)_identityProviderForSetTopBoxProfile:(id)a3 completion:(id)a4;
- (void)_postdentityProviderInfoDidChangeNotification;
- (void)dealloc;
- (void)enqueueIdentityProviderAppsQueryWithCompletion:(id)a3;
- (void)enqueueInfoQueryWithCompletion:(id)a3;
- (void)enqueueManagedSetTopBoxInfoQueryWithCompletion:(id)a3;
- (void)enqueueSetTopBoxInfoQueryWithCompletion:(id)a3;
- (void)enqueueSetTopBoxProfileProviderQueryWithCompletion:(id)a3;
- (void)fetchAccountAndIdentityProvider:(id)a3;
- (void)fetchIdentityProviderAppBundleIdFromDeveloperSettings:(id)a3;
@end

@implementation VSIdentityProviderInfoCenter

+ (id)sharedCenter
{
  if (sharedCenter___vs_lazy_init_predicate != -1)
  {
    +[VSIdentityProviderInfoCenter sharedCenter];
  }

  v3 = sharedCenter___vs_lazy_init_variable;

  return v3;
}

uint64_t __44__VSIdentityProviderInfoCenter_sharedCenter__block_invoke()
{
  sharedCenter___vs_lazy_init_variable = objc_alloc_init(VSIdentityProviderInfoCenter);

  return MEMORY[0x2821F96F8]();
}

- (VSIdentityProviderInfoCenter)init
{
  v20.receiver = self;
  v20.super_class = VSIdentityProviderInfoCenter;
  v2 = [(VSIdentityProviderInfoCenter *)&v20 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel__accountStoreDidChange name:@"VSAccountStoreDidChangeNotification" object:0];

    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    privateQueue = v2->_privateQueue;
    v2->_privateQueue = v4;

    v6 = v2->_privateQueue;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [(NSOperationQueue *)v6 setName:v8];

    v9 = objc_alloc_init(VSPreferences);
    preferences = v2->_preferences;
    v2->_preferences = v9;

    v11 = +[VSDevice currentDevice];
    device = v2->_device;
    v2->_device = v11;

    v13 = +[VSAccountStore sharedAccountStore];
    accountStore = v2->_accountStore;
    v2->_accountStore = v13;

    newIdentityProviderFetchAllOperationBlock = v2->_newIdentityProviderFetchAllOperationBlock;
    v2->_newIdentityProviderFetchAllOperationBlock = &__block_literal_global_48;

    newIdentityProviderFetchOperationBlock = v2->_newIdentityProviderFetchOperationBlock;
    v2->_newIdentityProviderFetchOperationBlock = &__block_literal_global_55;

    v17 = [[VSRemoteNotifier alloc] initWithNotificationName:@"VSDeveloperServiceDidChangeNotification"];
    remoteNotifier = v2->_remoteNotifier;
    v2->_remoteNotifier = v17;

    [(VSRemoteNotifier *)v2->_remoteNotifier setDelegate:v2];
  }

  return v2;
}

id __36__VSIdentityProviderInfoCenter_init__block_invoke()
{
  v5 = 0;
  v0 = VSLoadInterfaceFramework(&v5);
  v1 = v5;
  if (v0)
  {
    v2 = objc_alloc_init(NSClassFromString(@"VSIdentityProviderFetchAllOperation"));
  }

  else
  {
    v3 = VSErrorLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __36__VSIdentityProviderInfoCenter_init__block_invoke_cold_1();
    }

    v2 = 0;
  }

  return v2;
}

id __36__VSIdentityProviderInfoCenter_init__block_invoke_52(uint64_t a1, void *a2)
{
  v2 = a2;
  v8 = 0;
  v3 = VSLoadInterfaceFramework(&v8);
  v4 = v8;
  if (v3)
  {
    v5 = [objc_alloc(NSClassFromString(@"VSIdentityProviderFetchOperation")) initWithIdentityProviderID:v2];
  }

  else
  {
    v6 = VSErrorLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __36__VSIdentityProviderInfoCenter_init__block_invoke_cold_1();
    }

    v5 = 0;
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"VSAccountStoreDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = VSIdentityProviderInfoCenter;
  [(VSIdentityProviderInfoCenter *)&v4 dealloc];
}

- (void)enqueueInfoQueryWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__VSIdentityProviderInfoCenter_enqueueInfoQueryWithCompletion___block_invoke;
  v6[3] = &unk_278B74420;
  v7 = v4;
  v5 = v4;
  [(VSIdentityProviderInfoCenter *)self _fetch:v6];
}

- (void)enqueueSetTopBoxProfileProviderQueryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(VSIdentityProviderInfoCenter *)self device];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__VSIdentityProviderInfoCenter_enqueueSetTopBoxProfileProviderQueryWithCompletion___block_invoke;
  v7[3] = &unk_278B74470;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 fetchSetTopBoxProfileWithCompletion:v7];
}

void __83__VSIdentityProviderInfoCenter_enqueueSetTopBoxProfileProviderQueryWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __83__VSIdentityProviderInfoCenter_enqueueSetTopBoxProfileProviderQueryWithCompletion___block_invoke_2;
    v5[3] = &unk_278B74448;
    v4 = *(a1 + 32);
    v6 = *(a1 + 40);
    [v4 _identityProviderForSetTopBoxProfile:v3 completion:v5];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)enqueueIdentityProviderAppsQueryWithCompletion:(id)a3
{
  v4 = a3;
  v17 = 0;
  v5 = VSLoadInterfaceFramework(&v17);
  v6 = v17;
  if (v5)
  {
    v7 = objc_alloc_init(NSClassFromString(@"VSIdentityProviderFetchAllOperation"));
    v8 = MEMORY[0x277CCA8C8];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __79__VSIdentityProviderInfoCenter_enqueueIdentityProviderAppsQueryWithCompletion___block_invoke;
    v14[3] = &unk_278B73758;
    v15 = v7;
    v16 = v4;
    v9 = v7;
    v10 = [v8 blockOperationWithBlock:v14];
    [v10 addDependency:v9];
    v11 = [(VSIdentityProviderInfoCenter *)self privateQueue];
    [v11 addOperation:v9];

    v12 = [(VSIdentityProviderInfoCenter *)self privateQueue];
    [v12 addOperation:v10];
  }

  else
  {
    v13 = VSErrorLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [VSIdentityProviderInfoCenter enqueueIdentityProviderAppsQueryWithCompletion:];
    }

    (*(v4 + 2))(v4, 0, v6);
  }
}

void __79__VSIdentityProviderInfoCenter_enqueueIdentityProviderAppsQueryWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  v3 = [v2 forceUnwrapObject];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__VSIdentityProviderInfoCenter_enqueueIdentityProviderAppsQueryWithCompletion___block_invoke_2;
  v6[3] = &unk_278B739D8;
  v7 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __79__VSIdentityProviderInfoCenter_enqueueIdentityProviderAppsQueryWithCompletion___block_invoke_3;
  v4[3] = &unk_278B73910;
  v5 = *(a1 + 40);
  [v3 unwrapObject:v6 error:v4];
}

void __79__VSIdentityProviderInfoCenter_enqueueIdentityProviderAppsQueryWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = a1;
  v28 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v9 = [v8 nonChannelAppDescriptions];
        v10 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v19;
          do
          {
            v13 = 0;
            do
            {
              if (*v19 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = [*(*(&v18 + 1) + 8 * v13) adamID];
              v15 = [v14 stringValue];

              if (v15)
              {
                [v3 addObject:v15];
              }

              ++v13;
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v11);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  (*(*(v16 + 32) + 16))();
}

void __79__VSIdentityProviderInfoCenter_enqueueIdentityProviderAppsQueryWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __79__VSIdentityProviderInfoCenter_enqueueIdentityProviderAppsQueryWithCompletion___block_invoke_3_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)enqueueSetTopBoxInfoQueryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(VSIdentityProviderInfoCenter *)self device];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__VSIdentityProviderInfoCenter_enqueueSetTopBoxInfoQueryWithCompletion___block_invoke;
  v7[3] = &unk_278B74470;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 fetchSetTopBoxProfileWithCompletion:v7];
}

void __72__VSIdentityProviderInfoCenter_enqueueSetTopBoxInfoQueryWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!v5 || a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = v5;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __72__VSIdentityProviderInfoCenter_enqueueSetTopBoxInfoQueryWithCompletion___block_invoke_2;
    v9[3] = &unk_278B74498;
    v10 = v7;
    v8 = *(a1 + 32);
    v11 = *(a1 + 40);
    [v8 _identityProviderForSetTopBoxProfile:v7 completion:v9];
  }
}

void __72__VSIdentityProviderInfoCenter_enqueueSetTopBoxInfoQueryWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(VSSetTopBoxInfoQueryResult);
  [(VSSetTopBoxInfoQueryResult *)v4 setSetTopBoxProvider:v3];

  [(VSSetTopBoxInfoQueryResult *)v4 setProfile:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

- (void)enqueueManagedSetTopBoxInfoQueryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(VSIdentityProviderInfoCenter *)self device];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__VSIdentityProviderInfoCenter_enqueueManagedSetTopBoxInfoQueryWithCompletion___block_invoke;
  v7[3] = &unk_278B744C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 fetchDeviceManagedSetTopBoxProfileWithCompletion:v7];
}

void __79__VSIdentityProviderInfoCenter_enqueueManagedSetTopBoxInfoQueryWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __79__VSIdentityProviderInfoCenter_enqueueManagedSetTopBoxInfoQueryWithCompletion___block_invoke_2;
    v7[3] = &unk_278B74498;
    v8 = v5;
    v6 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v6 _identityProviderForSetTopBoxProfile:v5 completion:v7];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __79__VSIdentityProviderInfoCenter_enqueueManagedSetTopBoxInfoQueryWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(VSSetTopBoxInfoQueryResult);
  [(VSSetTopBoxInfoQueryResult *)v4 setSetTopBoxProvider:v3];

  [(VSSetTopBoxInfoQueryResult *)v4 setProfile:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

- (void)_identityProviderForSetTopBoxProfile:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 providerID];
  v9 = [(VSIdentityProviderInfoCenter *)self newIdentityProviderFetchAllOperationBlock];
  v10 = v9[2]();

  if (v10)
  {
    v11 = v10;
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __80__VSIdentityProviderInfoCenter__identityProviderForSetTopBoxProfile_completion___block_invoke;
    v17 = &unk_278B74510;
    v18 = v11;
    v19 = v8;
    v20 = v6;
    v21 = v7;
    v12 = VSMainThreadOperationWithBlock(&v14);
    [v12 addDependency:{v11, v14, v15, v16, v17}];
    v13 = [(VSIdentityProviderInfoCenter *)self privateQueue];
    [v13 addOperation:v11];

    VSEnqueueCompletionOperation(v12);
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

void __80__VSIdentityProviderInfoCenter__identityProviderForSetTopBoxProfile_completion___block_invoke(id *a1)
{
  v2 = [a1[4] result];
  v3 = [v2 forceUnwrapObject];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__VSIdentityProviderInfoCenter__identityProviderForSetTopBoxProfile_completion___block_invoke_2;
  v6[3] = &unk_278B744E8;
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __80__VSIdentityProviderInfoCenter__identityProviderForSetTopBoxProfile_completion___block_invoke_3;
  v4[3] = &unk_278B73910;
  v5 = a1[7];
  [v3 unwrapObject:v6 error:v4];
}

void __80__VSIdentityProviderInfoCenter__identityProviderForSetTopBoxProfile_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 uniqueID];
        v9 = [v8 forceUnwrapObject];
        v10 = [v9 isEqual:*(a1 + 32)];

        if (v10)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if ([*(a1 + 40) isDeveloper])
  {
    [v4 setIsSetTopBoxSupported:1];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_postdentityProviderInfoDidChangeNotification
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"VSIdentityProviderInfoDidChangeNotification" object:0];
}

- (void)_fetch:(id)a3
{
  v4 = a3;
  v5 = [(VSIdentityProviderInfoCenter *)self device];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__VSIdentityProviderInfoCenter__fetch___block_invoke;
  v8[3] = &unk_278B74588;
  v10 = self;
  v11 = v4;
  v9 = v5;
  v6 = v5;
  v7 = v4;
  [(VSIdentityProviderInfoCenter *)self fetchAccountAndIdentityProvider:v8];
}

void __39__VSIdentityProviderInfoCenter__fetch___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    if (v7)
    {
      v12 = v7;
      v13 = [v12 isDeveloper];
      v14 = *(a1 + 32);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __39__VSIdentityProviderInfoCenter__fetch___block_invoke_2;
      v18[3] = &unk_278B74560;
      v23 = *(a1 + 48);
      v24 = v13;
      v15 = *(a1 + 40);
      v19 = v12;
      v20 = v15;
      v21 = v8;
      v22 = *(a1 + 32);
      v16 = v12;
      [v14 fetchSetTopBoxProfileWithCompletion:v18];

      goto LABEL_7;
    }

    v17 = *(a1 + 48);
    if (!v17)
    {
      goto LABEL_7;
    }

    v11 = *(v17 + 16);
    goto LABEL_4;
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = *(v10 + 16);
LABEL_4:
    v11();
  }

LABEL_7:
}

void __39__VSIdentityProviderInfoCenter__fetch___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __39__VSIdentityProviderInfoCenter__fetch___block_invoke_3;
    aBlock[3] = &unk_278B74538;
    v21 = *(a1 + 64);
    v20 = *(a1 + 32);
    v6 = _Block_copy(aBlock);
    if (*(a1 + 72) == 1)
    {
      if (a2)
      {
        [*(a1 + 40) fetchIdentityProviderAppBundleIdFromDeveloperSettings:v6];
        [*(a1 + 32) setIsSetTopBoxSupported:1];
LABEL_20:

        return;
      }
    }

    else
    {
      v7 = [*(a1 + 32) nonChannelAppDescriptions];

      if (v7)
      {
        v8 = [*(a1 + 32) nonChannelAppDescriptions];

        if (!v8)
        {
          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [identityProvider nonChannelAppDescriptions] parameter must not be nil."];
        }

        v9 = [*(a1 + 32) nonChannelAppDescriptions];
        v18 = 0;
        v10 = VSLoadInterfaceFramework(&v18);
        v11 = v18;
        if (v10)
        {
          v12 = objc_alloc_init(NSClassFromString(@"VSNonChannelAppDecider"));
          [v12 setAppDescriptions:v9];
          [v12 setPreferredAppBundleOrAdamID:*(a1 + 48)];
          v13 = [*(a1 + 56) stringForAMSDeviceFamilies];
          [v12 setPreferredDeviceFamily:v13];

          v14 = [v12 decidedNonChannelApps];
          v15 = [v14 firstObject];
          v16 = [v15 bundleID];

          (*(v6 + 2))(v6, v16, 0);
        }

        else
        {
          if (v11)
          {
            v17 = v11;
          }

          else
          {
            v17 = 0;
          }

          (*(v6 + 2))(v6, 0, v17);
        }

        goto LABEL_20;
      }
    }

    if (*(a1 + 64))
    {
      (*(v6 + 2))(v6, 0, 0);
    }

    goto LABEL_20;
  }

  v4 = *(*(a1 + 64) + 16);

  v4();
}

void __39__VSIdentityProviderInfoCenter__fetch___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40))
  {
    v5 = a3;
    v6 = a2;
    v7 = objc_alloc_init(VSIdentityProviderInfoQueryResult);
    [(VSIdentityProviderInfoQueryResult *)v7 setIdentityProvider:*(a1 + 32)];
    [(VSIdentityProviderInfoQueryResult *)v7 setDesignatedAppBundleIdentifier:v6];

    v8 = VSDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_23AB8E000, v8, OS_LOG_TYPE_DEFAULT, "will return identity provider info result: %@", &v9, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)fetchAccountAndIdentityProvider:(id)a3
{
  v4 = a3;
  v5 = [(VSIdentityProviderInfoCenter *)self accountStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__VSIdentityProviderInfoCenter_fetchAccountAndIdentityProvider___block_invoke;
  v7[3] = &unk_278B73988;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 fetchAccountsWithCompletionHandler:v7];
}

void __64__VSIdentityProviderInfoCenter_fetchAccountAndIdentityProvider___block_invoke(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__VSIdentityProviderInfoCenter_fetchAccountAndIdentityProvider___block_invoke_2;
  v7[3] = &unk_278B73960;
  v4 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v4;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__VSIdentityProviderInfoCenter_fetchAccountAndIdentityProvider___block_invoke_99;
  v5[3] = &unk_278B73910;
  v6 = *(a1 + 40);
  [a2 unwrapObject:v7 error:v5];
}

void __64__VSIdentityProviderInfoCenter_fetchAccountAndIdentityProvider___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = [v5 preferredAppID];
    v7 = [v5 identityProviderID];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __64__VSIdentityProviderInfoCenter_fetchAccountAndIdentityProvider___block_invoke_3;
    v16[3] = &unk_278B745D8;
    v8 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v17 = v6;
    v18 = v8;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __64__VSIdentityProviderInfoCenter_fetchAccountAndIdentityProvider___block_invoke_98;
    v13[3] = &unk_278B73758;
    v14 = v5;
    v15 = *(a1 + 40);
    v9 = v5;
    v10 = v6;
    [v7 conditionallyUnwrapObject:v16 otherwise:v13];
  }

  else
  {
    v11 = VSDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_23AB8E000, v11, OS_LOG_TYPE_DEFAULT, "Account store returned no accounts", v12, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __64__VSIdentityProviderInfoCenter_fetchAccountAndIdentityProvider___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 newIdentityProviderFetchOperationBlock];
  v6 = (v5)[2](v5, v4);

  if (v6)
  {
    v7 = v6;
    [v7 start];
    [v7 waitUntilFinished];
    v8 = [v7 result];

    v9 = [v8 forceUnwrapObject];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __64__VSIdentityProviderInfoCenter_fetchAccountAndIdentityProvider___block_invoke_4;
    v13[3] = &unk_278B745B0;
    v15 = *(a1 + 48);
    v14 = *(a1 + 40);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __64__VSIdentityProviderInfoCenter_fetchAccountAndIdentityProvider___block_invoke_5;
    v11[3] = &unk_278B73910;
    v12 = *(a1 + 48);
    [v9 unwrapObject:v13 error:v11];
  }

  else
  {
    v10 = VSErrorLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __64__VSIdentityProviderInfoCenter_fetchAccountAndIdentityProvider___block_invoke_3_cold_1(v10);
    }

    (*(*(a1 + 48) + 16))();
  }
}

uint64_t __64__VSIdentityProviderInfoCenter_fetchAccountAndIdentityProvider___block_invoke_98(uint64_t a1)
{
  v2 = VSErrorLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __64__VSIdentityProviderInfoCenter_fetchAccountAndIdentityProvider___block_invoke_98_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  return (*(*(a1 + 40) + 16))();
}

void __64__VSIdentityProviderInfoCenter_fetchAccountAndIdentityProvider___block_invoke_99(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __64__VSIdentityProviderInfoCenter_fetchAccountAndIdentityProvider___block_invoke_99_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchIdentityProviderAppBundleIdFromDeveloperSettings:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(VSDeveloperSettingsFetchOperation);
  objc_initWeak(&location, v5);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __86__VSIdentityProviderInfoCenter_fetchIdentityProviderAppBundleIdFromDeveloperSettings___block_invoke;
  v8[3] = &unk_278B74628;
  objc_copyWeak(&v10, &location);
  v6 = v4;
  v9 = v6;
  [(VSDeveloperSettingsFetchOperation *)v5 setCompletionBlock:v8];
  v7 = [(VSIdentityProviderInfoCenter *)self privateQueue];
  [v7 addOperation:v5];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __86__VSIdentityProviderInfoCenter_fetchIdentityProviderAppBundleIdFromDeveloperSettings___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained result];
  v4 = [v3 forceUnwrapObject];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __86__VSIdentityProviderInfoCenter_fetchIdentityProviderAppBundleIdFromDeveloperSettings___block_invoke_2;
  v7[3] = &unk_278B74600;
  v8 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __86__VSIdentityProviderInfoCenter_fetchIdentityProviderAppBundleIdFromDeveloperSettings___block_invoke_3;
  v5[3] = &unk_278B73910;
  v6 = *(a1 + 32);
  [v4 unwrapObject:v7 error:v5];
}

void __86__VSIdentityProviderInfoCenter_fetchIdentityProviderAppBundleIdFromDeveloperSettings___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 setTopBoxBundleIdentifier];
  (*(*(a1 + 32) + 16))();
}

void __86__VSIdentityProviderInfoCenter_fetchIdentityProviderAppBundleIdFromDeveloperSettings___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __86__VSIdentityProviderInfoCenter_fetchIdentityProviderAppBundleIdFromDeveloperSettings___block_invoke_3_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (id)_value:(id)a3 withDefault:(id)a4
{
  if (a3)
  {
    return a3;
  }

  else
  {
    return a4;
  }
}

@end