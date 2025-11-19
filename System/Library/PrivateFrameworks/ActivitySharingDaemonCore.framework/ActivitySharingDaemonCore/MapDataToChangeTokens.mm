@interface MapDataToChangeTokens
@end

@implementation MapDataToChangeTokens

void ___MapDataToChangeTokens_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [objc_alloc(MEMORY[0x277CBC670]) initWithData:v6];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v5];
  }

  else
  {
    ASLoggingInitialize();
    v8 = *MEMORY[0x277CE8FD0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
    {
      ___MapDataToChangeTokens_block_invoke_cold_1(v6, v8);
    }
  }
}

void ___MapDataToChangeTokens_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23E5E3000, a2, OS_LOG_TYPE_ERROR, "Found a change token with an unexpected type: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end