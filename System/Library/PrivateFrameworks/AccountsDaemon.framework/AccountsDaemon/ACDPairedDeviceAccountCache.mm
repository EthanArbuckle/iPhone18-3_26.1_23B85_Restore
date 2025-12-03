@interface ACDPairedDeviceAccountCache
+ (ACDPairedDeviceAccountCache)sharedInstance;
- (ACDPairedDeviceAccountCache)init;
- (void)_didFetchAccounts:(id)accounts error:(id)error;
- (void)accountsFromRemoteDeviceProxy:(id)proxy ignoreCache:(BOOL)cache options:(id)options completion:(id)completion;
- (void)invalidate;
@end

@implementation ACDPairedDeviceAccountCache

+ (ACDPairedDeviceAccountCache)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[ACDPairedDeviceAccountCache sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __45__ACDPairedDeviceAccountCache_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(ACDPairedDeviceAccountCache);

  return MEMORY[0x2821F96F8]();
}

- (ACDPairedDeviceAccountCache)init
{
  v11.receiver = self;
  v11.super_class = ACDPairedDeviceAccountCache;
  v2 = [(ACDPairedDeviceAccountCache *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_accountsIsValid = 0;
    accounts = v2->_accounts;
    v2->_accounts = 0;

    completions = v3->_completions;
    v3->_completions = 0;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_USER_INITIATED, 0);
    v8 = dispatch_queue_create("com.apple.accounts.ACDPairedDeviceAccountCache", v7);
    synchronizationQueue = v3->_synchronizationQueue;
    v3->_synchronizationQueue = v8;
  }

  return v3;
}

- (void)accountsFromRemoteDeviceProxy:(id)proxy ignoreCache:(BOOL)cache options:(id)options completion:(id)completion
{
  proxyCopy = proxy;
  optionsCopy = options;
  completionCopy = completion;
  synchronizationQueue = self->_synchronizationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__ACDPairedDeviceAccountCache_accountsFromRemoteDeviceProxy_ignoreCache_options_completion___block_invoke;
  block[3] = &unk_27848CE80;
  cacheCopy = cache;
  block[4] = self;
  v18 = proxyCopy;
  v19 = optionsCopy;
  v20 = completionCopy;
  v14 = optionsCopy;
  v15 = proxyCopy;
  v16 = completionCopy;
  dispatch_async(synchronizationQueue, block);
}

void __92__ACDPairedDeviceAccountCache_accountsFromRemoteDeviceProxy_ignoreCache_options_completion___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = _ACDLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x277CCABB0] numberWithBool:*(*(a1 + 32) + 16)];
    v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 64)];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(a1 + 32) + 24), "count")}];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(a1 + 32) + 32), "count")}];
    v19 = 138413058;
    v20 = v3;
    v21 = 2112;
    v22 = v4;
    v23 = 2112;
    v24 = v5;
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_221D2F000, v2, OS_LOG_TYPE_DEFAULT, "_accountsIsValid %@ ignoreCache %@ _accounts.count %@ _completions.count %@", &v19, 0x2Au);
  }

  v7 = *(a1 + 32);
  if (*(v7 + 16) == 1 && (*(a1 + 64) & 1) == 0)
  {
    v17 = *(a1 + 56);
    if (v17)
    {
      (*(v17 + 16))(v17, *(v7 + 24), 0);
    }
  }

  else
  {
    v8 = *(v7 + 32);
    if (v8)
    {
      v9 = _Block_copy(*(a1 + 56));
      [v8 addObject:v9];
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v11 = *(a1 + 32);
      v12 = *(v11 + 32);
      *(v11 + 32) = v10;

      v13 = *(a1 + 56);
      if (v13)
      {
        v14 = *(*(a1 + 32) + 32);
        v15 = _Block_copy(v13);
        [v14 addObject:v15];
      }

      v16 = _ACDLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_221D2F000, v16, OS_LOG_TYPE_DEFAULT, "will fetch from remote device", &v19, 2u);
      }

      [*(a1 + 40) sendCommand:*MEMORY[0x277CB8EB8] withAccount:0 options:*(a1 + 48) completion:&__block_literal_global_7_0];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __92__ACDPairedDeviceAccountCache_accountsFromRemoteDeviceProxy_ignoreCache_options_completion___block_invoke_4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v5 = a4;
  v6 = +[ACDPairedDeviceAccountCache sharedInstance];
  [v6 _didFetchAccounts:v7 error:v5];
}

- (void)_didFetchAccounts:(id)accounts error:(id)error
{
  v34 = *MEMORY[0x277D85DE8];
  accountsCopy = accounts;
  errorCopy = error;
  v8 = _ACDLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(accountsCopy, "count")}];
    *buf = 138412546;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = errorCopy;
    _os_log_impl(&dword_221D2F000, v8, OS_LOG_TYPE_DEFAULT, "fetched accounts.count %@ error %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v31 = __Block_byref_object_copy__7;
  v32 = __Block_byref_object_dispose__7;
  v33 = 0;
  synchronizationQueue = self->_synchronizationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__ACDPairedDeviceAccountCache__didFetchAccounts_error___block_invoke;
  block[3] = &unk_27848BF28;
  block[4] = self;
  v11 = accountsCopy;
  v25 = v11;
  v26 = buf;
  dispatch_sync(synchronizationQueue, block);
  v12 = _ACDLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*&buf[8] + 40), "count")}];
    *v28 = 138412290;
    v29 = v13;
    _os_log_impl(&dword_221D2F000, v12, OS_LOG_TYPE_DEFAULT, "calling %@ completions", v28, 0xCu);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = *(*&buf[8] + 40);
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (v15)
  {
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v20 + 1) + 8 * v17);
        if (v18)
        {
          (*(v18 + 16))(v18, v11, errorCopy);
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v14 countByEnumeratingWithState:&v20 objects:v27 count:16];
    }

    while (v15);
  }

  _Block_object_dispose(buf, 8);
  v19 = *MEMORY[0x277D85DE8];
}

void __55__ACDPairedDeviceAccountCache__didFetchAccounts_error___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 16) = *(a1 + 40) != 0;
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(*(a1 + 32) + 32));
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;
}

- (void)invalidate
{
  synchronizationQueue = self->_synchronizationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ACDPairedDeviceAccountCache_invalidate__block_invoke;
  block[3] = &unk_27848BF78;
  block[4] = self;
  dispatch_async(synchronizationQueue, block);
}

void __41__ACDPairedDeviceAccountCache_invalidate__block_invoke(uint64_t a1)
{
  v2 = _ACDLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_221D2F000, v2, OS_LOG_TYPE_DEFAULT, "will invalidate", v5, 2u);
  }

  *(*(a1 + 32) + 16) = 0;
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = 0;
}

@end