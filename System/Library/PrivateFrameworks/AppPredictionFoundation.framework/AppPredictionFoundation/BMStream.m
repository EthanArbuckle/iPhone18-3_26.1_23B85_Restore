@interface BMStream
@end

@implementation BMStream

void __42__BMStream_ATXExtras__atx_dateOfLastEvent__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __42__BMStream_ATXExtras__atx_dateOfLastEvent__block_invoke_cold_1(a1, v3, v5);
    }
  }
}

uint64_t __42__BMStream_ATXExtras__atx_dateOfLastEvent__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a2;
  v5 = [v3 alloc];
  [v4 timestamp];
  v7 = v6;

  v8 = [v5 initWithTimeIntervalSinceReferenceDate:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return 0;
}

void __42__BMStream_ATXExtras__atx_dateOfLastEvent__block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 32) identifier];
  v6 = [a2 error];
  v8 = 138543618;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_226368000, a3, OS_LOG_TYPE_ERROR, "Could not retrieve the last modified date of the %{public}@ stream: %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end