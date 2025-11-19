@interface SOAsynchronousLDAPOperation
- (void)main;
@end

@implementation SOAsynchronousLDAPOperation

- (void)main
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 host];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __35__SOAsynchronousLDAPOperation_main__block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = SO_LOG_SOAsynchronousLDAPOperation();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (a2)
  {
    if (v7)
    {
      __35__SOAsynchronousLDAPOperation_main__block_invoke_cold_2(a1);
    }

    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __35__SOAsynchronousLDAPOperation_main__block_invoke_8;
    v13[3] = &unk_278C93040;
    v10 = v8;
    v11 = *(a1 + 32);
    v14 = v10;
    v15 = v11;
    [v10 queryforBaseDN:&stru_285206D08 andScope:0 andAttributes:&unk_28520B928 withFilter:v9 completion:v13];
  }

  else
  {
    if (v7)
    {
      __35__SOAsynchronousLDAPOperation_main__block_invoke_cold_1(a1);
    }

    v12 = [*(a1 + 32) completion];
    v12[2](v12, 0, 0);

    [*(a1 + 40) disconnect];
    [*(a1 + 32) finish];
  }
}

void __35__SOAsynchronousLDAPOperation_main__block_invoke_8(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  [*(a1 + 32) disconnect];
  if (a2)
  {
    v9 = [v8 objectForKeyedSubscript:@"netlogon"];
    v10 = [v9 firstObject];
    v11 = [v10 base64EncodedStringWithOptions:32];
    v12 = SO_LOG_SOAsynchronousLDAPOperation();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __35__SOAsynchronousLDAPOperation_main__block_invoke_8_cold_2();
    }

    v13 = [SONetLogonParser parseNetLoginUsingData:v10];
    v14 = [MEMORY[0x277CCABB0] numberWithShort:8];
    v15 = [v13 objectForKeyedSubscript:v14];

    v16 = SO_LOG_SOAsynchronousLDAPOperation();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      __35__SOAsynchronousLDAPOperation_main__block_invoke_8_cold_3();
    }

    v17 = [*(a1 + 40) completion];
    (v17)[2](v17, 1, v15);
  }

  else
  {
    v18 = SO_LOG_SOAsynchronousLDAPOperation();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      __35__SOAsynchronousLDAPOperation_main__block_invoke_8_cold_1(a1);
    }

    v9 = [*(a1 + 40) completion];
    v9[2](v9, 0, 0);
  }

  [*(a1 + 40) finish];
}

void __35__SOAsynchronousLDAPOperation_main__block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) host];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __35__SOAsynchronousLDAPOperation_main__block_invoke_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) host];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __35__SOAsynchronousLDAPOperation_main__block_invoke_8_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 40) host];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __35__SOAsynchronousLDAPOperation_main__block_invoke_8_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_24006C000, v0, OS_LOG_TYPE_DEBUG, "response from ldap: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __35__SOAsynchronousLDAPOperation_main__block_invoke_8_cold_3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_24006C000, v0, OS_LOG_TYPE_DEBUG, "netlogon response: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end