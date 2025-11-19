@interface VSTestSetupPreparationOperation
- (VSTestSetupPreparationOperation)init;
- (void)addError:(id)a3;
- (void)executionDidBegin;
@end

@implementation VSTestSetupPreparationOperation

- (VSTestSetupPreparationOperation)init
{
  v11.receiver = self;
  v11.super_class = VSTestSetupPreparationOperation;
  v2 = [(VSTestSetupPreparationOperation *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    privateQueue = v2->_privateQueue;
    v2->_privateQueue = v3;

    [(NSOperationQueue *)v2->_privateQueue setMaxConcurrentOperationCount:1];
    v5 = v2->_privateQueue;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(NSOperationQueue *)v5 setName:v7];

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    errors = v2->_errors;
    v2->_errors = v8;
  }

  return v2;
}

- (void)executionDidBegin
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__VSTestSetupPreparationOperation_executionDidBegin__block_invoke;
  v9[3] = &unk_278B733D8;
  v9[4] = self;
  v3 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v9];
  v4 = [(VSTestSetupPreparationOperation *)self privateQueue];
  [v4 addOperation:v3];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__VSTestSetupPreparationOperation_executionDidBegin__block_invoke_16;
  v8[3] = &unk_278B733D8;
  v8[4] = self;
  v5 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__VSTestSetupPreparationOperation_executionDidBegin__block_invoke_23;
  v7[3] = &unk_278B733D8;
  v7[4] = self;
  [v5 setCompletionBlock:v7];
  v6 = [(VSTestSetupPreparationOperation *)self privateQueue];
  [v6 addOperation:v5];
}

void __52__VSTestSetupPreparationOperation_executionDidBegin__block_invoke(uint64_t a1)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = +[VSAccountStore sharedAccountStore];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__12;
  v22 = __Block_byref_object_dispose__12;
  v23 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__VSTestSetupPreparationOperation_executionDidBegin__block_invoke_4;
  block[3] = &unk_278B74C78;
  v17 = &v18;
  v3 = v2;
  v16 = v3;
  dispatch_sync(MEMORY[0x277D85CD0], block);
  v4 = objc_alloc_init(VSSemaphore);
  v5 = v4;
  v6 = v19[5];
  if (v6)
  {
    v7 = v6;
    v24[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __52__VSTestSetupPreparationOperation_executionDidBegin__block_invoke_2;
    v11[3] = &unk_278B74D98;
    v9 = v7;
    v10 = *(a1 + 32);
    v12 = v9;
    v13 = v10;
    v14 = v5;
    [v3 removeAccounts:v8 withCompletionHandler:v11];
  }

  else
  {
    [(VSSemaphore *)v4 signal];
  }

  [(VSSemaphore *)v5 wait];

  _Block_object_dispose(&v18, 8);
}

uint64_t __52__VSTestSetupPreparationOperation_executionDidBegin__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) firstAccount];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

void __52__VSTestSetupPreparationOperation_executionDidBegin__block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = VSDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "Successfully removed account %@ from account store.", &v10, 0xCu);
    }
  }

  else
  {
    v9 = *(a1 + 40);
    if (!v5)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The error parameter must not be nil."];
    }

    [v9 addError:v6];
    v7 = VSErrorLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __52__VSTestSetupPreparationOperation_executionDidBegin__block_invoke_2_cold_1(v6, v7);
    }
  }

  [*(a1 + 48) signal];
}

void __52__VSTestSetupPreparationOperation_executionDidBegin__block_invoke_16(uint64_t a1)
{
  v2 = +[VSDevice currentDevice];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__VSTestSetupPreparationOperation_executionDidBegin__block_invoke_2_18;
  v3[3] = &unk_278B732E0;
  v3[4] = *(a1 + 32);
  [v2 refreshSetTopBoxProfile:v3];
}

void __52__VSTestSetupPreparationOperation_executionDidBegin__block_invoke_2_18(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = VSErrorLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52__VSTestSetupPreparationOperation_executionDidBegin__block_invoke_2_18_cold_1(v3, v4);
    }

    [*(a1 + 32) addError:v3];
  }
}

uint64_t __52__VSTestSetupPreparationOperation_executionDidBegin__block_invoke_23(uint64_t a1)
{
  v2 = [*(a1 + 32) errors];
  v3 = [v2 count];

  if (v3)
  {
    v4 = VSErrorLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52__VSTestSetupPreparationOperation_executionDidBegin__block_invoke_23_cold_1(v4);
    }
  }

  else
  {
    v5 = VSDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "No errors preparting for OOB testing, clearing buddy defaults.", v7, 2u);
    }

    v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.purplebuddy"];
    [v4 removeObjectForKey:@"TVBuddyCompletedSuccessfully"];
    [v4 removeObjectForKey:@"SetupDone"];
    [v4 removeObjectForKey:@"VSSkipSetup"];
  }

  return [*(a1 + 32) finishExecutionIfPossible];
}

- (void)addError:(id)a3
{
  v12 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(VSTestSetupPreparationOperation *)v4 errors];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = [(VSTestSetupPreparationOperation *)v4 errors];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v7 raise:*MEMORY[0x277CBE660] format:{@"Unexpectedly, [self errors] was %@, instead of NSMutableArray.", v10}];
  }

  v11 = [(VSTestSetupPreparationOperation *)v4 errors];
  [v11 addObject:v12];

  objc_sync_exit(v4);
}

void __52__VSTestSetupPreparationOperation_executionDidBegin__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Error removing account for setup testing preparation: %@", &v2, 0xCu);
}

void __52__VSTestSetupPreparationOperation_executionDidBegin__block_invoke_2_18_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Error refreshing profile for testing: %@", &v2, 0xCu);
}

@end