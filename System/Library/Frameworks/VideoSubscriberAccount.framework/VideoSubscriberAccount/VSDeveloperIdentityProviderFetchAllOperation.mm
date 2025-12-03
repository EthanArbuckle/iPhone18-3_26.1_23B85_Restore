@interface VSDeveloperIdentityProviderFetchAllOperation
- (VSDeveloperServiceConnection)connection;
- (void)executionDidBegin;
@end

@implementation VSDeveloperIdentityProviderFetchAllOperation

- (VSDeveloperServiceConnection)connection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_connection;
  if (!v3)
  {
    v3 = objc_alloc_init(VSDeveloperServiceConnection);
    objc_storeStrong(&selfCopy->_connection, v3);
  }

  objc_sync_exit(selfCopy);

  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The __orNil parameter must not be nil."];
  }

  return v3;
}

- (void)executionDidBegin
{
  objc_initWeak(&location, self);
  connection = [(VSDeveloperIdentityProviderFetchAllOperation *)self connection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__VSDeveloperIdentityProviderFetchAllOperation_executionDidBegin__block_invoke;
  v9[3] = &unk_278B73358;
  objc_copyWeak(&v10, &location);
  v4 = [connection serviceWithErrorHandler:v9];

  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Will fetch developer identity providers.", buf, 2u);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__VSDeveloperIdentityProviderFetchAllOperation_executionDidBegin__block_invoke_5;
  v6[3] = &unk_278B748C0;
  objc_copyWeak(&v7, &location);
  [v4 fetchDeveloperIdentityProvidersWithCompletionHandler:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __65__VSDeveloperIdentityProviderFetchAllOperation_executionDidBegin__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__VSDeveloperIdentityProviderChangeOperation_executionDidBegin__block_invoke_cold_1(v3, v4);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [VSFailable failableWithError:v3];
  v7 = [VSOptional optionalWithObject:v6];
  [WeakRetained setResult:v7];

  [WeakRetained finishExecutionIfPossible];
}

void __65__VSDeveloperIdentityProviderFetchAllOperation_executionDidBegin__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 unwrapObject:&__block_literal_global_32 error:&__block_literal_global_10_0];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [VSOptional optionalWithObject:v3];

  [WeakRetained setResult:v4];
  [WeakRetained finishExecutionIfPossible];
}

void __65__VSDeveloperIdentityProviderFetchAllOperation_executionDidBegin__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "count")}];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Did fetch developer %@ identity providers.", &v5, 0xCu);
  }
}

void __65__VSDeveloperIdentityProviderFetchAllOperation_executionDidBegin__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = VSErrorLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __65__VSDeveloperIdentityProviderFetchAllOperation_executionDidBegin__block_invoke_8_cold_1(v2, v3);
  }
}

void __65__VSDeveloperIdentityProviderFetchAllOperation_executionDidBegin__block_invoke_8_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch developer identity providers: %@", &v2, 0xCu);
}

@end