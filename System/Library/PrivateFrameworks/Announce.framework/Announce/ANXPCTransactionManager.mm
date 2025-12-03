@interface ANXPCTransactionManager
+ (id)sharedManager;
- (ANXPCTransactionManager)init;
- (NSArray)activeTransactions;
- (id)_createTransaction:(id)transaction;
- (id)_overview;
- (id)description;
- (id)transaction:(id)transaction forEndpointUUID:(id)d;
- (unint64_t)_currentStatus;
- (unint64_t)status;
- (void)_createTransaction:(id)transaction expiration:(double)expiration;
- (void)_removeTransaction:(id)transaction;
- (void)_resetTimer:(id)timer expiration:(double)expiration;
- (void)_startTimer:(id)timer expiration:(double)expiration;
- (void)_transaction:(id)_transaction setActive:(BOOL)active;
- (void)_transaction:(id)_transaction setActiveForTimeInterval:(double)interval;
- (void)transaction:(id)transaction setActive:(BOOL)active;
- (void)transaction:(id)transaction setActiveForTimeInterval:(double)interval;
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
  block[4] = self;
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
  queue = [(ANXPCTransactionManager *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__ANXPCTransactionManager_description__block_invoke;
  v6[3] = &unk_2784E1F98;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

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
  queue = [(ANXPCTransactionManager *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__ANXPCTransactionManager_status__block_invoke;
  v6[3] = &unk_2784E1F98;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

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
  queue = [(ANXPCTransactionManager *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__ANXPCTransactionManager_activeTransactions__block_invoke;
  v6[3] = &unk_2784E1F98;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

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

- (id)transaction:(id)transaction forEndpointUUID:(id)d
{
  dCopy = d;
  v6 = [MEMORY[0x277CCAB68] stringWithString:transaction];
  if (dCopy)
  {
    uUIDString = [dCopy UUIDString];
    [v6 appendFormat:@".%@", uUIDString];
  }

  v8 = [v6 copy];

  return v8;
}

- (void)transaction:(id)transaction setActive:(BOOL)active
{
  transactionCopy = transaction;
  queue = [(ANXPCTransactionManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ANXPCTransactionManager_transaction_setActive___block_invoke;
  block[3] = &unk_2784E23A8;
  block[4] = self;
  v10 = transactionCopy;
  activeCopy = active;
  v8 = transactionCopy;
  dispatch_async(queue, block);
}

- (void)transaction:(id)transaction setActiveForTimeInterval:(double)interval
{
  transactionCopy = transaction;
  queue = [(ANXPCTransactionManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__ANXPCTransactionManager_transaction_setActiveForTimeInterval___block_invoke;
  block[3] = &unk_2784E23D0;
  block[4] = self;
  v10 = transactionCopy;
  intervalCopy = interval;
  v8 = transactionCopy;
  dispatch_async(queue, block);
}

- (unint64_t)_currentStatus
{
  queue = [(ANXPCTransactionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  transactions = [(ANXPCTransactionManager *)self transactions];
  v5 = [transactions count] != 0;

  return v5;
}

- (id)_overview
{
  queue = [(ANXPCTransactionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = [MEMORY[0x277CCAB68] stringWithString:@"\n===== Active Transactions =====\n"];
  transactions = [(ANXPCTransactionManager *)self transactions];
  allKeys = [transactions allKeys];
  v7 = [allKeys componentsJoinedByString:@"\n"];
  [v4 appendString:v7];

  [v4 appendString:@"\n==============================="];
  v8 = [v4 copy];

  return v8;
}

- (void)_transaction:(id)_transaction setActive:(BOOL)active
{
  activeCopy = active;
  v17 = *MEMORY[0x277D85DE8];
  _transactionCopy = _transaction;
  queue = [(ANXPCTransactionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if (activeCopy)
  {
    transactions = [(ANXPCTransactionManager *)self transactions];
    v9 = [transactions valueForKey:_transactionCopy];

    if (v9)
    {
      v10 = ANLogHandleXPCTransactionManager();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412546;
        v14 = &stru_2836DAA20;
        v15 = 2112;
        v16 = _transactionCopy;
        _os_log_impl(&dword_2237C8000, v10, OS_LOG_TYPE_DEFAULT, "%@Request to set transaction active but already active: %@", &v13, 0x16u);
      }
    }

    else
    {
      v11 = [(ANXPCTransactionManager *)self _createTransaction:_transactionCopy];
    }
  }

  else
  {
    [(ANXPCTransactionManager *)self _removeTransaction:_transactionCopy];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_transaction:(id)_transaction setActiveForTimeInterval:(double)interval
{
  v17 = *MEMORY[0x277D85DE8];
  _transactionCopy = _transaction;
  queue = [(ANXPCTransactionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  transactions = [(ANXPCTransactionManager *)self transactions];
  v9 = [transactions valueForKey:_transactionCopy];

  if (v9)
  {
    v10 = ANLogHandleXPCTransactionManager();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = &stru_2836DAA20;
      v15 = 2112;
      v16 = _transactionCopy;
      _os_log_impl(&dword_2237C8000, v10, OS_LOG_TYPE_DEFAULT, "%@Request to set transaction active but already active: %@", &v13, 0x16u);
    }

    timer = [v9 timer];
    if (timer)
    {
      [v9 expiration];
      [(ANXPCTransactionManager *)self _resetTimer:timer expiration:?];
    }
  }

  else
  {
    [(ANXPCTransactionManager *)self _createTransaction:_transactionCopy expiration:interval];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_createTransaction:(id)transaction
{
  v20 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  [transactionCopy UTF8String];
  v5 = os_transaction_create();
  if (v5)
  {
    v6 = [ANTransactionInfo infoWithTransaction:v5];
    transactions = [(ANXPCTransactionManager *)self transactions];
    [transactions setValue:v6 forKey:transactionCopy];
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

    v17 = transactionCopy;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_2237C8000, v8, OS_LOG_TYPE_DEFAULT, "%@Created Transaction %@: %@", &v14, 0x20u);
  }

  v10 = ANLogHandleXPCTransactionManager();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    _overview = [(ANXPCTransactionManager *)self _overview];
    v14 = 138412546;
    v15 = &stru_2836DAA20;
    v16 = 2112;
    v17 = _overview;
    _os_log_impl(&dword_2237C8000, v10, OS_LOG_TYPE_DEFAULT, "%@%@", &v14, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_createTransaction:(id)transaction expiration:(double)expiration
{
  v26 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  queue = [(ANXPCTransactionManager *)self queue];
  v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);

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
      v25 = transactionCopy;
      _os_log_impl(&dword_2237C8000, v10, OS_LOG_TYPE_DEFAULT, "%@Created Transaction Timer %@ for %@", buf, 0x20u);
    }

    v11 = [(ANXPCTransactionManager *)self _createTransaction:transactionCopy];
    v10 = v11;
    if (v11)
    {
      [v11 setTimer:v8];
      [v10 setExpiration:expiration];
      objc_initWeak(buf, self);
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __57__ANXPCTransactionManager__createTransaction_expiration___block_invoke;
      v17 = &unk_2784E2038;
      objc_copyWeak(&v19, buf);
      v18 = transactionCopy;
      dispatch_source_set_event_handler(v8, &v14);
      [(ANXPCTransactionManager *)self _startTimer:v8 expiration:expiration, v14, v15, v16, v17];

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
        v23 = transactionCopy;
        _os_log_impl(&dword_2237C8000, v12, OS_LOG_TYPE_ERROR, "%@Failed to create transaction: %@", buf, 0x16u);
      }
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v21 = &stru_2836DAA20;
    v22 = 2112;
    v23 = transactionCopy;
    _os_log_impl(&dword_2237C8000, v10, OS_LOG_TYPE_ERROR, "%@Failed to create timer for transaction. Transaction not created: %@", buf, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __57__ANXPCTransactionManager__createTransaction_expiration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeTransaction:*(a1 + 32)];
}

- (void)_removeTransaction:(id)transaction
{
  v23 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  transactions = [(ANXPCTransactionManager *)self transactions];
  v6 = [transactions valueForKey:transactionCopy];

  if (v6)
  {
    _currentStatus = [(ANXPCTransactionManager *)self _currentStatus];
    timer = [v6 timer];
    if (timer)
    {
      [(ANXPCTransactionManager *)self _cancelTimer:timer];
    }

    transactions2 = [(ANXPCTransactionManager *)self transactions];
    [transactions2 removeObjectForKey:transactionCopy];

    _currentStatus2 = [(ANXPCTransactionManager *)self _currentStatus];
    if (_currentStatus == 1 && !_currentStatus2)
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
    v20 = transactionCopy;
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
    _overview = [(ANXPCTransactionManager *)self _overview];
    v17 = 138412546;
    v18 = &stru_2836DAA20;
    v19 = 2112;
    v20 = _overview;
    _os_log_impl(&dword_2237C8000, v14, OS_LOG_TYPE_DEFAULT, "%@%@", &v17, 0x16u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_startTimer:(id)timer expiration:(double)expiration
{
  v16 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  v6 = ANLogHandleXPCTransactionManager();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    v11 = &stru_2836DAA20;
    v12 = 2112;
    v13 = timerCopy;
    v14 = 2048;
    expirationCopy = expiration;
    _os_log_impl(&dword_2237C8000, v6, OS_LOG_TYPE_DEFAULT, "%@Starting Transaction Timer (%@) for %f seconds", &v10, 0x20u);
  }

  v7 = expiration * 1000000000.0;
  v8 = dispatch_time(0, v7);
  dispatch_source_set_timer(timerCopy, v8, v7, 0);
  dispatch_resume(timerCopy);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_resetTimer:(id)timer expiration:(double)expiration
{
  v13 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  v7 = ANLogHandleXPCTransactionManager();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = &stru_2836DAA20;
    v11 = 2112;
    v12 = timerCopy;
    _os_log_impl(&dword_2237C8000, v7, OS_LOG_TYPE_DEFAULT, "%@Restarting Transaction Timer %@", &v9, 0x16u);
  }

  dispatch_suspend(timerCopy);
  [(ANXPCTransactionManager *)self _startTimer:timerCopy expiration:expiration];

  v8 = *MEMORY[0x277D85DE8];
}

@end