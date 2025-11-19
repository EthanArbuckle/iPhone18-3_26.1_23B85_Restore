@interface HKCurrentActivitySummaryQuery
@end

@implementation HKCurrentActivitySummaryQuery

void __76___HKCurrentActivitySummaryQuery_client_deliverActivitySummaries_queryUUID___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 152));
  v3 = [*(a1 + 40) lastObject];
  v4 = v3;
  if (v2)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __76___HKCurrentActivitySummaryQuery_client_deliverActivitySummaries_queryUUID___block_invoke_2;
    v9[3] = &unk_1E7378458;
    v10 = v3;
    v7 = v2;
    v11 = *(a1 + 32);
    v12 = v7;
    [v5 queue_dispatchToClientForUUID:v6 shouldDeactivate:0 block:v9];
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKLogQuery;
    if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_DEBUG))
    {
      __76___HKCurrentActivitySummaryQuery_client_deliverActivitySummaries_queryUUID___block_invoke_cold_1(v4, v8);
    }
  }
}

uint64_t __76___HKCurrentActivitySummaryQuery_client_deliverActivitySummaries_queryUUID___block_invoke_2(void *a1)
{
  _HKInitializeLogging();
  v2 = HKLogQuery;
  if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_DEBUG))
  {
    __76___HKCurrentActivitySummaryQuery_client_deliverActivitySummaries_queryUUID___block_invoke_2_cold_1(a1, v2);
  }

  v3 = a1[5];
  v4 = a1[4];
  return (*(a1[6] + 16))();
}

void __76___HKCurrentActivitySummaryQuery_client_deliverActivitySummaries_queryUUID___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_19197B000, a2, OS_LOG_TYPE_DEBUG, "No update handler set. newActivitySummary: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __76___HKCurrentActivitySummaryQuery_client_deliverActivitySummaries_queryUUID___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_19197B000, a2, OS_LOG_TYPE_DEBUG, "Calling update handler with activitySummary: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end