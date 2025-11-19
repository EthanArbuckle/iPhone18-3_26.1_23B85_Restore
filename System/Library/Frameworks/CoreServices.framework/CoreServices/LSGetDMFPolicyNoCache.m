@interface LSGetDMFPolicyNoCache
@end

@implementation LSGetDMFPolicyNoCache

void ___LSGetDMFPolicyNoCache_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = LaunchServices::DMFSupport::getLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      ___LSGetDMFPolicyNoCache_block_invoke_cold_1(a1, v8, v9);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }
}

void ___LSGetDMFPolicyNoCache_block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138478083;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "Error requesting DMF policy for bundle ID %{private}@: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end