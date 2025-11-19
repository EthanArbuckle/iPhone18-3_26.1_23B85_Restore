@interface ANXPCTransactionManager
+ (id)sharedManager;
- (ANXPCTransactionManager)init;
- (NSArray)activeTransactions;
- (id)_createTransaction:(id)a3;
- (id)_overview;
- (id)description;
- (id)transaction:(id)a3 forEndpointUUID:(id)a4;
- (unint64_t)_currentStatus;
- (unint64_t)status;
- (void)_createTransaction:(id)a3 expiration:(double)a4;
- (void)_removeTransaction:(id)a3;
- (void)_resetTimer:(id)a3 expiration:(double)a4;
- (void)_startTimer:(id)a3 expiration:(double)a4;
- (void)_transaction:(id)a3 setActive:(BOOL)a4;
- (void)_transaction:(id)a3 setActiveForTimeInterval:(double)a4;
- (void)transaction:(id)a3 setActive:(BOOL)a4;
- (void)transaction:(id)a3 setActiveForTimeInterval:(double)a4;
@end

@implementation ANXPCTransactionManager

- (ANXPCTransactionManager)init
{
  v9.receiver = self;
  v9.super_class = ANXPCTransactionManager;
  v2 = [(ANXPCTransactionManager *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_new();
    transactions = v2->_transactions;
    v2->_transactions = v3;

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("com.apple.announce.transaction-manager.queue", v5);
    queue = v2->_queue;
    v2->_queue = v6;
  }

  return v2;
}

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ANXPCTransactionManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_sharedManager;

  return v2;
}

uint64_t __40__ANXPCTransactionManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedManager_sharedManager = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (id)description
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = &stru_2836DAA20;
  v3 = [(ANXPCTransactionManager *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__ANXPCTransactionManager_description__block_invoke;
  v6[3] = &unk_2784E1F98;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __38__ANXPCTransactionManager_description__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _overview];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (unint64_t)status
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(ANXPCTransactionManager *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__ANXPCTransactionManager_status__block_invoke;
  v6[3] = &unk_2784E1F98;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __33__ANXPCTransactionManager_status__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _currentStatus];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (NSArray)activeTransactions
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = MEMORY[0x277CBEBF8];
  v3 = [(ANXPCTransactionManager *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__ANXPCTransactionManager_activeTransactions__block_invoke;
  v6[3] = &unk_2784E1F98;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __45__ANXPCTransactionManager_activeTransactions__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) transactions];
  v2 = [v5 allKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)transaction:(id)a3 forEndpointUUID:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277CCAB68] stringWithString:a3];
  if (v5)
  {
    v7 = [v5 UUIDString];
    [v6 appendFormat:@".%@", v7];
  }

  v8 = [v6 copy];

  return v8;
}

- (void)transaction:(id)a3 setActive:(BOOL)a4
{
  v6 = a3;
  v7 = [(ANXPCTransactionManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ANXPCTransactionManager_transaction_setActive___block_invoke;
  block[3] = &unk_2784E23A8;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)transaction:(id)a3 setActiveForTimeInterval:(double)a4
{
  v6 = a3;
  v7 = [(ANXPCTransactionManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__ANXPCTransactionManager_transaction_setActiveForTimeInterval___block_invoke;
  block[3] = &unk_2784E23D0;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(v7, block);
}

- (unint64_t)_currentStatus
{
  v3 = [(ANXPCTransactionManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(ANXPCTransactionManager *)self transactions];
  v5 = [v4 count] != 0;

  return v5;
}

- (id)_overview
{
  v3 = [(ANXPCTransactionManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [MEMORY[0x277CCAB68] stringWithString:@"\n===== Active Transactions =====\n"];
  v5 = [(ANXPCTransactionManager *)self transactions];
  v6 = [v5 allKeys];
  v7 = [v6 componentsJoinedByString:@"\n"];
  [v4 appendString:v7];

  [v4 appendString:@"\n==============================="];
  v8 = [v4 copy];

  return v8;
}

- (void)_transaction:(id)a3 setActive:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(ANXPCTransactionManager *)self queue];
  dispatch_assert_queue_V2(v7);

  if (v4)
  {
    v8 = [(ANXPCTransactionManager *)self transactions];
    v9 = [v8 valueForKey:v6];

    if (v9)
    {
      v10 = ANLogHandleXPCTransactionManager();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412546;
        v14 = &stru_2836DAA20;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&dword_2237C8000, v10, OS_LOG_TYPE_DEFAULT, "%@Request to set transaction active but already active: %@", &v13, 0x16u);
      }
    }

    else
    {
      v11 = [(ANXPCTransactionManager *)self _createTransaction:v6];
    }
  }

  else
  {
    [(ANXPCTransactionManager *)self _removeTransaction:v6];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_transaction:(id)a3 setActiveForTimeInterval:(double)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(ANXPCTransactionManager *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = [(ANXPCTransactionManager *)self transactions];
  v9 = [v8 valueForKey:v6];

  if (v9)
  {
    v10 = ANLogHandleXPCTransactionManager();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = &stru_2836DAA20;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_2237C8000, v10, OS_LOG_TYPE_DEFAULT, "%@Request to set transaction active but already active: %@", &v13, 0x16u);
    }

    v11 = [v9 timer];
    if (v11)
    {
      [v9 expiration];
      [(ANXPCTransactionManager *)self _resetTimer:v11 expiration:?];
    }
  }

  else
  {
    [(ANXPCTransactionManager *)self _createTransaction:v6 expiration:a4];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_createTransaction:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 UTF8String];
  v5 = os_transaction_create();
  if (v5)
  {
    v6 = [ANTransactionInfo infoWithTransaction:v5];
    v7 = [(ANXPCTransactionManager *)self transactions];
    [v7 setValue:v6 forKey:v4];
  }

  else
  {
    v6 = 0;
  }

  v8 = ANLogHandleXPCTransactionManager();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"TRUE";
    v14 = 138412802;
    v15 = &stru_2836DAA20;
    v16 = 2112;
    if (!v5)
    {
      v9 = @"FALSE";
    }

    v17 = v4;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_2237C8000, v8, OS_LOG_TYPE_DEFAULT, "%@Created Transaction %@: %@", &v14, 0x20u);
  }

  v10 = ANLogHandleXPCTransactionManager();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(ANXPCTransactionManager *)self _overview];
    v14 = 138412546;
    v15 = &stru_2836DAA20;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&dword_2237C8000, v10, OS_LOG_TYPE_DEFAULT, "%@%@", &v14, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_createTransaction:(id)a3 expiration:(double)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(ANXPCTransactionManager *)self queue];
  v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v7);

  v9 = ANLogHandleXPCTransactionManager();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v21 = &stru_2836DAA20;
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_2237C8000, v10, OS_LOG_TYPE_DEFAULT, "%@Created Transaction Timer %@ for %@", buf, 0x20u);
    }

    v11 = [(ANXPCTransactionManager *)self _createTransaction:v6];
    v10 = v11;
    if (v11)
    {
      [v11 setTimer:v8];
      [v10 setExpiration:a4];
      objc_initWeak(buf, self);
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __57__ANXPCTransactionManager__createTransaction_expiration___block_invoke;
      v17 = &unk_2784E2038;
      objc_copyWeak(&v19, buf);
      v18 = v6;
      dispatch_source_set_event_handler(v8, &v14);
      [(ANXPCTransactionManager *)self _startTimer:v8 expiration:a4, v14, v15, v16, v17];

      objc_destroyWeak(&v19);
      objc_destroyWeak(buf);
    }

    else
    {
      v12 = ANLogHandleXPCTransactionManager();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v21 = &stru_2836DAA20;
        v22 = 2112;
        v23 = v6;
        _os_log_impl(&dword_2237C8000, v12, OS_LOG_TYPE_ERROR, "%@Failed to create transaction: %@", buf, 0x16u);
      }
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v21 = &stru_2836DAA20;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_2237C8000, v10, OS_LOG_TYPE_ERROR, "%@Failed to create timer for transaction. Transaction not created: %@", buf, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __57__ANXPCTransactionManager__createTransaction_expiration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeTransaction:*(a1 + 32)];
}

- (void)_removeTransaction:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ANXPCTransactionManager *)self transactions];
  v6 = [v5 valueForKey:v4];

  if (v6)
  {
    v7 = [(ANXPCTransactionManager *)self _currentStatus];
    v8 = [v6 timer];
    if (v8)
    {
      [(ANXPCTransactionManager *)self _cancelTimer:v8];
    }

    v9 = [(ANXPCTransactionManager *)self transactions];
    [v9 removeObjectForKey:v4];

    v10 = [(ANXPCTransactionManager *)self _currentStatus];
    if (v7 == 1 && !v10)
    {
      v11 = ANLogHandleXPCTransactionManager();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412802;
        v18 = &stru_2836DAA20;
        v19 = 2048;
        v20 = 1;
        v21 = 2048;
        v22 = 0;
        _os_log_impl(&dword_2237C8000, v11, OS_LOG_TYPE_DEFAULT, "%@Transaction Status: %lu -> %lu", &v17, 0x20u);
      }
    }
  }

  v12 = ANLogHandleXPCTransactionManager();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"TRUE";
    v17 = 138412802;
    v18 = &stru_2836DAA20;
    v19 = 2112;
    v20 = v4;
    if (!v6)
    {
      v13 = @"FALSE";
    }

    v21 = 2112;
    v22 = v13;
    _os_log_impl(&dword_2237C8000, v12, OS_LOG_TYPE_DEFAULT, "%@Removed Transaction %@: %@", &v17, 0x20u);
  }

  v14 = ANLogHandleXPCTransactionManager();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(ANXPCTransactionManager *)self _overview];
    v17 = 138412546;
    v18 = &stru_2836DAA20;
    v19 = 2112;
    v20 = v15;
    _os_log_impl(&dword_2237C8000, v14, OS_LOG_TYPE_DEFAULT, "%@%@", &v17, 0x16u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_startTimer:(id)a3 expiration:(double)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = ANLogHandleXPCTransactionManager();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    v11 = &stru_2836DAA20;
    v12 = 2112;
    v13 = v5;
    v14 = 2048;
    v15 = a4;
    _os_log_impl(&dword_2237C8000, v6, OS_LOG_TYPE_DEFAULT, "%@Starting Transaction Timer (%@) for %f seconds", &v10, 0x20u);
  }

  v7 = a4 * 1000000000.0;
  v8 = dispatch_time(0, v7);
  dispatch_source_set_timer(v5, v8, v7, 0);
  dispatch_resume(v5);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_resetTimer:(id)a3 expiration:(double)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = ANLogHandleXPCTransactionManager();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = &stru_2836DAA20;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_2237C8000, v7, OS_LOG_TYPE_DEFAULT, "%@Restarting Transaction Timer %@", &v9, 0x16u);
  }

  dispatch_suspend(v6);
  [(ANXPCTransactionManager *)self _startTimer:v6 expiration:a4];

  v8 = *MEMORY[0x277D85DE8];
}

@end