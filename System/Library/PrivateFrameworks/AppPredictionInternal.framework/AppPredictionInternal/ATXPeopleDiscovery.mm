@interface ATXPeopleDiscovery
- (ATXPeopleDiscovery)init;
- (id)fetchPeopleWithProximityFromStartDate:(id)date toEndDate:(id)endDate;
@end

@implementation ATXPeopleDiscovery

- (ATXPeopleDiscovery)init
{
  v6.receiver = self;
  v6.super_class = ATXPeopleDiscovery;
  v2 = [(ATXPeopleDiscovery *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    routineManager = v2->_routineManager;
    v2->_routineManager = v3;
  }

  return v2;
}

- (id)fetchPeopleWithProximityFromStartDate:(id)date toEndDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__92;
  v32 = __Block_byref_object_dispose__92;
  v33 = objc_opt_new();
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__92;
  v26 = __Block_byref_object_dispose__92;
  v27 = 0;
  v8 = dispatch_semaphore_create(0);
  routineManager = self->_routineManager;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __70__ATXPeopleDiscovery_fetchPeopleWithProximityFromStartDate_toEndDate___block_invoke;
  v18[3] = &unk_27859E3B0;
  v20 = &v22;
  v21 = &v28;
  v10 = v8;
  v19 = v10;
  [(RTRoutineManager *)routineManager fetchProximityHistoryFromStartDate:dateCopy endDate:endDateCopy completionHandler:v18];
  if (v23[5])
  {
    v11 = __atxlog_handle_usage_insights();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXPeopleDiscovery fetchPeopleWithProximityFromStartDate:v11 toEndDate:?];
    }
  }

  v12 = v10;
  v13 = dispatch_time(0, 5000000000);
  v14 = dispatch_semaphore_wait(v12, v13);

  if (v14)
  {
    v15 = __atxlog_handle_usage_insights();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ATXPeopleDiscovery fetchPeopleWithProximityFromStartDate:v15 toEndDate:?];
    }

    bpsPublisher = 0;
  }

  else
  {
    bpsPublisher = [v29[5] bpsPublisher];
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return bpsPublisher;
}

void __70__ATXPeopleDiscovery_fetchPeopleWithProximityFromStartDate_toEndDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)fetchPeopleWithProximityFromStartDate:(os_log_t)log toEndDate:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[ATXPeopleDiscovery fetchPeopleWithProximityFromStartDate:toEndDate:]";
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "%s: Error fetching nearby people", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)fetchPeopleWithProximityFromStartDate:(os_log_t)log toEndDate:.cold.2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[ATXPeopleDiscovery fetchPeopleWithProximityFromStartDate:toEndDate:]";
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "%s: Timed out waiting for proximity history semaphore", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end