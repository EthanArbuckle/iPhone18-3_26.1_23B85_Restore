@interface ATXCarPlayConnectedStream
- (void)_enumerateEventsConnected:(BOOL)connected startDate:(id)date endDate:(id)endDate filterBlock:(id)block limit:(unint64_t)limit ascending:(BOOL)ascending shouldContinue:(id)continue block:(id)self0;
@end

@implementation ATXCarPlayConnectedStream

- (void)_enumerateEventsConnected:(BOOL)connected startDate:(id)date endDate:(id)endDate filterBlock:(id)block limit:(unint64_t)limit ascending:(BOOL)ascending shouldContinue:(id)continue block:(id)self0
{
  ascendingCopy = ascending;
  dateCopy = date;
  endDateCopy = endDate;
  blockCopy = block;
  continueCopy = continue;
  v19 = a10;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__2;
  v34[4] = __Block_byref_object_dispose__2;
  v35 = 0;
  v20 = !ascendingCopy;
  v21 = [(ATXCarPlayConnectedStream *)self _carPlayPublisherWithStartDate:dateCopy endDate:endDateCopy limit:limit shouldReverse:!ascendingCopy];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __122__ATXCarPlayConnectedStream__enumerateEventsConnected_startDate_endDate_filterBlock_limit_ascending_shouldContinue_block___block_invoke_1;
  v27[3] = &unk_2785903F0;
  v32 = v20;
  connectedCopy = connected;
  v31 = v34;
  v22 = blockCopy;
  v28 = v22;
  v23 = v19;
  v29 = v23;
  v24 = continueCopy;
  v30 = v24;
  v25 = [v21 sinkWithCompletion:&__block_literal_global_5 shouldContinue:v27];

  _Block_object_dispose(v34, 8);
}

void __122__ATXCarPlayConnectedStream__enumerateEventsConnected_startDate_endDate_filterBlock_limit_ascending_shouldContinue_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 state])
  {
    v3 = __atxlog_handle_default();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __122__ATXCarPlayConnectedStream__enumerateEventsConnected_startDate_endDate_filterBlock_limit_ascending_shouldContinue_block___block_invoke_cold_1(v2, v3);
    }
  }
}

uint64_t __122__ATXCarPlayConnectedStream__enumerateEventsConnected_startDate_endDate_filterBlock_limit_ascending_shouldContinue_block___block_invoke_1(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 64);
  v6 = *(a1 + 65);
  v7 = [v4 eventBody];
  v8 = [v7 starting];

  if (v6 == v5)
  {
    if ((v8 & 1) == 0)
    {
LABEL_3:
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
      goto LABEL_21;
    }
  }

  else if (v8)
  {
    goto LABEL_3;
  }

  v9 = a1 + 56;
  if (v4 && *(*(*(a1 + 56) + 8) + 40))
  {
    v10 = objc_alloc(MEMORY[0x277CBEAA8]);
    [*(*(*(a1 + 56) + 8) + 40) timestamp];
    v11 = [v10 initWithTimeIntervalSinceReferenceDate:?];
    v12 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v4 timestamp];
    v13 = [v12 initWithTimeIntervalSinceReferenceDate:?];
    v14 = [ATXCarPlayConnectedEvent alloc];
    if (*(a1 + 64))
    {
      v15 = v13;
    }

    else
    {
      v15 = v11;
    }

    if (*(a1 + 64))
    {
      v16 = v11;
    }

    else
    {
      v16 = v13;
    }

    v17 = [(ATXCarPlayConnectedEvent *)v14 initWithStartTime:v15 endTime:v16 connected:*(a1 + 65)];
    v18 = *(*(a1 + 56) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = 0;

    v20 = *(a1 + 32);
    if (!v20 || (*(v20 + 16))(v20, v17))
    {
      (*(*(a1 + 40) + 16))();
      v21 = *(a1 + 48);
      if (v21)
      {
        if (!(*(v21 + 16))())
        {

          v23 = 0;
          goto LABEL_22;
        }
      }
    }
  }

  else
  {
    v22 = __atxlog_handle_default();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __122__ATXCarPlayConnectedStream__enumerateEventsConnected_startDate_endDate_filterBlock_limit_ascending_shouldContinue_block___block_invoke_1_cold_1(v9, v4, v22);
    }
  }

LABEL_21:
  v23 = 1;
LABEL_22:

  return v23;
}

void __122__ATXCarPlayConnectedStream__enumerateEventsConnected_startDate_endDate_filterBlock_limit_ascending_shouldContinue_block___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v5 = 136315394;
  v6 = "[ATXCarPlayConnectedStream _enumerateEventsConnected:startDate:endDate:filterBlock:limit:ascending:shouldContinue:block:]_block_invoke";
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_226368000, a2, OS_LOG_TYPE_ERROR, "%s: error fetching latest CarPlay.Connected event from biome %@", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

void __122__ATXCarPlayConnectedStream__enumerateEventsConnected_startDate_endDate_filterBlock_limit_ascending_shouldContinue_block___block_invoke_1_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(*(*a1 + 8) + 40);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_226368000, log, OS_LOG_TYPE_ERROR, "Skipping event: %@ %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end