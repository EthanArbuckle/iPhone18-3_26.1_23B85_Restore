@interface LSClientSettingsStore
@end

@implementation LSClientSettingsStore

void __65___LSClientSettingsStore___internalQueue_xpcConnectionWithError___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _LSExtensionsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __65___LSClientSettingsStore___internalQueue_xpcConnectionWithError___block_invoke_cold_1(v8, [v3 code], v4);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void __65___LSClientSettingsStore___internalQueue_xpcConnectionWithError___block_invoke_217(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 32), a2);
  }

  else
  {
    v8 = _LSExtensionsLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __65___LSClientSettingsStore___internalQueue_xpcConnectionWithError___block_invoke_cold_1(v10, [v7 code], v8);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __65___LSClientSettingsStore___internalQueue_xpcConnectionWithError___block_invoke_219(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;
}

void __54___LSClientSettingsStore_userElectionForExtensionKey___block_invoke(void *a1)
{
  v2 = a1[4];
  v9 = 0;
  v3 = [v2 __internalQueue_xpcConnectionWithError:&v9];
  v4 = v9;
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;
}

void __54___LSClientSettingsStore_userElectionForExtensionKey___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LSExtensionsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54___LSClientSettingsStore_userElectionForExtensionKey___block_invoke_2_cold_1(a1);
  }
}

void __54___LSClientSettingsStore_userElectionForExtensionKey___block_invoke_220(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = _LSExtensionsLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __54___LSClientSettingsStore_userElectionForExtensionKey___block_invoke_220_cold_1(a1);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

void __64___LSClientSettingsStore_setUserElection_forExtensionKey_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v9 = 0;
  v3 = [v2 __internalQueue_xpcConnectionWithError:&v9];
  v4 = v9;
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;
}

void __64___LSClientSettingsStore_setUserElection_forExtensionKey_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LSExtensionsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54___LSClientSettingsStore_userElectionForExtensionKey___block_invoke_2_cold_1(a1);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 48) + 8) + 24) = 0;
}

void __64___LSClientSettingsStore_setUserElection_forExtensionKey_error___block_invoke_222(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = _LSExtensionsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __54___LSClientSettingsStore_userElectionForExtensionKey___block_invoke_2_cold_1(a1);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v6;
}

void __54___LSClientSettingsStore_resetUserElectionsWithError___block_invoke(void *a1)
{
  v2 = a1[4];
  v9 = 0;
  v3 = [v2 __internalQueue_xpcConnectionWithError:&v9];
  v4 = v9;
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;
}

void __54___LSClientSettingsStore_resetUserElectionsWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LSExtensionsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54___LSClientSettingsStore_resetUserElectionsWithError___block_invoke_2_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __54___LSClientSettingsStore_resetUserElectionsWithError___block_invoke_223(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = _LSExtensionsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __54___LSClientSettingsStore_resetUserElectionsWithError___block_invoke_2_cold_1();
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v6;
}

void __65___LSClientSettingsStore___internalQueue_xpcConnectionWithError___block_invoke_cold_1(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_fault_impl(&dword_18162D000, log, OS_LOG_TYPE_FAULT, "Failed to get settings store from 'lsd' with error code: %ld", buf, 0xCu);
}

void __54___LSClientSettingsStore_userElectionForExtensionKey___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __54___LSClientSettingsStore_userElectionForExtensionKey___block_invoke_220_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __54___LSClientSettingsStore_resetUserElectionsWithError___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_7(&dword_18162D000, v0, v1, "Failed to reset user elections error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end