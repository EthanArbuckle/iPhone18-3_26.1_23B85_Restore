@interface VSDeveloperSettingsFetchOperation
- (VSDeveloperServiceConnection)connection;
- (VSDeveloperSettingsFetchOperation)init;
- (void)executionDidBegin;
@end

@implementation VSDeveloperSettingsFetchOperation

- (VSDeveloperSettingsFetchOperation)init
{
  v6.receiver = self;
  v6.super_class = VSDeveloperSettingsFetchOperation;
  v2 = [(VSDeveloperSettingsFetchOperation *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(VSOptional);
    v4 = v2->_result;
    v2->_result = v3;
  }

  return v2;
}

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
  connection = [(VSDeveloperSettingsFetchOperation *)self connection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__VSDeveloperSettingsFetchOperation_executionDidBegin__block_invoke;
  v8[3] = &unk_278B732E0;
  v8[4] = self;
  v4 = [connection serviceWithErrorHandler:v8];

  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Will fetch developer settings.", buf, 2u);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__VSDeveloperSettingsFetchOperation_executionDidBegin__block_invoke_5;
  v6[3] = &unk_278B73308;
  v6[4] = self;
  [v4 fetchDeveloperSettingsWithCompletionHandler:v6];
}

uint64_t __54__VSDeveloperSettingsFetchOperation_executionDidBegin__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [VSFailable failableWithError:a2];
  v5 = [VSOptional optionalWithObject:v4];
  [v3 setResult:v5];

  v6 = *(a1 + 32);

  return [v6 finishExecutionIfPossible];
}

uint64_t __54__VSDeveloperSettingsFetchOperation_executionDidBegin__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 unwrapObject:&__block_literal_global_14 error:&__block_literal_global_9_0];
  v4 = *(a1 + 32);
  v5 = [VSOptional optionalWithObject:v3];

  [v4 setResult:v5];
  v6 = *(a1 + 32);

  return [v6 finishExecutionIfPossible];
}

void __54__VSDeveloperSettingsFetchOperation_executionDidBegin__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Did fetch developer settings %@", &v4, 0xCu);
  }
}

void __54__VSDeveloperSettingsFetchOperation_executionDidBegin__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = VSErrorLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __54__VSDeveloperSettingsFetchOperation_executionDidBegin__block_invoke_7_cold_1(v2, v3);
  }
}

void __54__VSDeveloperSettingsFetchOperation_executionDidBegin__block_invoke_7_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch developer settings: %@", &v2, 0xCu);
}

@end