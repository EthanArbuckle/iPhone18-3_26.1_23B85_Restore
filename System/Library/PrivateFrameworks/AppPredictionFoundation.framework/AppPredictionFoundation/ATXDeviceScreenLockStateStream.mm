@interface ATXDeviceScreenLockStateStream
- (void)_enumerateEventsForLockedState:(BOOL)state startDate:(id)date endDate:(id)endDate filterBlock:(id)block limit:(unint64_t)limit ascending:(BOOL)ascending block:(id)a9;
@end

@implementation ATXDeviceScreenLockStateStream

- (void)_enumerateEventsForLockedState:(BOOL)state startDate:(id)date endDate:(id)endDate filterBlock:(id)block limit:(unint64_t)limit ascending:(BOOL)ascending block:(id)a9
{
  ascendingCopy = ascending;
  dateCopy = date;
  endDateCopy = endDate;
  blockCopy = block;
  v18 = a9;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__6;
  v30[4] = __Block_byref_object_dispose__6;
  v31 = 0;
  v19 = !ascendingCopy;
  v20 = [(ATXDeviceScreenLockStateStream *)self _deviceScreenLockedPublisherWithStartDate:dateCopy endDate:endDateCopy limit:limit shouldReverse:!ascendingCopy];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __117__ATXDeviceScreenLockStateStream__enumerateEventsForLockedState_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_11;
  v24[3] = &unk_2785907E0;
  v28 = v19;
  stateCopy = state;
  v27 = v30;
  v21 = blockCopy;
  v25 = v21;
  v22 = v18;
  v26 = v22;
  v23 = [v20 sinkWithCompletion:&__block_literal_global_17 shouldContinue:v24];

  _Block_object_dispose(v30, 8);
}

void __117__ATXDeviceScreenLockStateStream__enumerateEventsForLockedState_startDate_endDate_filterBlock_limit_ascending_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 state])
  {
    v3 = __atxlog_handle_default();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __117__ATXDeviceScreenLockStateStream__enumerateEventsForLockedState_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_cold_1(v2, v3);
    }
  }
}

uint64_t __117__ATXDeviceScreenLockStateStream__enumerateEventsForLockedState_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_11(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 56);
  v6 = *(a1 + 57);
  v7 = [v4 eventBody];
  v8 = [v7 starting];

  if (v6 == v5)
  {
    if ((v8 & 1) == 0)
    {
LABEL_3:
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
      goto LABEL_20;
    }
  }

  else if (v8)
  {
    goto LABEL_3;
  }

  v9 = a1 + 48;
  if (v4 && *(*(*(a1 + 48) + 8) + 40))
  {
    v10 = objc_alloc(MEMORY[0x277CBEAA8]);
    [*(*(*(a1 + 48) + 8) + 40) timestamp];
    v11 = [v10 initWithTimeIntervalSinceReferenceDate:?];
    v12 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v4 timestamp];
    v13 = [v12 initWithTimeIntervalSinceReferenceDate:?];
    v14 = [ATXDeviceScreenLockStateEvent alloc];
    if (*(a1 + 56))
    {
      v15 = v13;
    }

    else
    {
      v15 = v11;
    }

    if (*(a1 + 56))
    {
      v16 = v11;
    }

    else
    {
      v16 = v13;
    }

    v17 = [(ATXDeviceScreenLockStateEvent *)v14 initWithStartTime:v15 endTime:v16 isLocked:*(a1 + 57)];
    v18 = *(*(a1 + 48) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = 0;

    v20 = *(a1 + 32);
    if (!v20 || (*(v20 + 16))(v20, v17))
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v21 = __atxlog_handle_default();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __122__ATXCarPlayConnectedStream__enumerateEventsConnected_startDate_endDate_filterBlock_limit_ascending_shouldContinue_block___block_invoke_1_cold_1(v9, v4, v21);
    }
  }

LABEL_20:

  return 1;
}

void __117__ATXDeviceScreenLockStateStream__enumerateEventsForLockedState_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v5 = 136315394;
  v6 = "[ATXDeviceScreenLockStateStream _enumerateEventsForLockedState:startDate:endDate:filterBlock:limit:ascending:block:]_block_invoke";
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_226368000, a2, OS_LOG_TYPE_ERROR, "%s: error fetching latest Device.ScreenLocked event from biome %@", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end