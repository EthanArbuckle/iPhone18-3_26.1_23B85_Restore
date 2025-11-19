@interface ATXAlarmsDataSource
- (ATXAlarmsDataSource)initWithDevice:(id)a3;
- (void)alarmsFromDate:(id)a3 toDate:(id)a4 completionHandler:(id)a5;
@end

@implementation ATXAlarmsDataSource

- (ATXAlarmsDataSource)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXAlarmsDataSource;
  v6 = [(ATXAlarmsDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
  }

  return v7;
}

- (void)alarmsFromDate:(id)a3 toDate:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ((ATXHeuristicCanLearnFromApp(&unk_2850BA2F0) & 1) == 0)
  {
    v20 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v20, OS_LOG_TYPE_DEFAULT, "Learn from Clock is disabled. Can't fetch alarms", buf, 2u);
    }

    goto LABEL_7;
  }

  [v7 timeIntervalSinceReferenceDate];
  v11 = v10;
  [v8 timeIntervalSinceReferenceDate];
  if (v11 > v12)
  {
LABEL_7:
    (*(v9 + 2))(v9, MEMORY[0x277CBEBF8], 0);
    goto LABEL_8;
  }

  v13 = +[ATXHeuristicDevice sharedAlarmManager];
  v14 = dispatch_semaphore_create(0);
  *buf = 0;
  v30 = buf;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__8;
  v33 = __Block_byref_object_dispose__8;
  v34 = 0;
  v15 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v7 endDate:v8];
  v16 = [v13 nextAlarmsInRange:v15 maxCount:100 includeSleepAlarm:1];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __63__ATXAlarmsDataSource_alarmsFromDate_toDate_completionHandler___block_invoke;
  v26[3] = &unk_278C3D180;
  v28 = buf;
  v17 = v14;
  v27 = v17;
  v18 = [v16 addCompletionBlock:v26];

  v19 = MEMORY[0x277D425A0];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __63__ATXAlarmsDataSource_alarmsFromDate_toDate_completionHandler___block_invoke_16;
  v23[3] = &unk_278C3D1A8;
  v24 = v9;
  v25 = buf;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __63__ATXAlarmsDataSource_alarmsFromDate_toDate_completionHandler___block_invoke_2;
  v21[3] = &unk_278C3D1D0;
  v22 = v24;
  [v19 waitForSemaphore:v17 timeoutSeconds:v23 onAcquire:v21 onTimeout:5.0];

  _Block_object_dispose(buf, 8);
LABEL_8:
}

void __63__ATXAlarmsDataSource_alarmsFromDate_toDate_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __63__ATXAlarmsDataSource_alarmsFromDate_toDate_completionHandler___block_invoke_cold_1(v6, v7);
    }
  }

  else
  {
    v23 = 0;
    v24 = a1;
    v25 = v5;
    v8 = v5;
    v28 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v8;
    v29 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v29)
    {
      v27 = *v36;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v36 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v35 + 1) + 8 * i);
          v40[0] = v10;
          v39[0] = @"MTAlarm";
          v39[1] = @"alarmID";
          v34 = [v10 alarmID];
          v33 = [v34 UUIDString];
          v40[1] = v33;
          v39[2] = @"displayTitle";
          v32 = [v10 displayTitle];
          v40[2] = v32;
          v39[3] = @"lastModifiedTS";
          v11 = MEMORY[0x277CCABB0];
          v31 = [v10 lastModifiedDate];
          [v31 timeIntervalSinceReferenceDate];
          v30 = [v11 numberWithDouble:?];
          v40[3] = v30;
          v39[4] = @"hour";
          v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "hour")}];
          v40[4] = v12;
          v39[5] = @"minute";
          v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "minute")}];
          v40[5] = v13;
          v39[6] = @"isEnabled";
          v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10, "isEnabled")}];
          v40[6] = v14;
          v39[7] = @"isRepeating";
          v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10, "repeats")}];
          v40[7] = v15;
          v40[8] = MEMORY[0x277CBEC38];
          v39[8] = @"playsOnThisDevice";
          v39[9] = @"isSleepAlarm";
          v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10, "isSleepAlarm")}];
          v40[9] = v16;
          v39[10] = @"bedtimeHour";
          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "bedtimeHour")}];
          v40[10] = v17;
          v39[11] = @"bedtimeMinute";
          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "bedtimeMinute")}];
          v40[11] = v18;
          v39[12] = @"bedtimeReminderMinutes";
          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "bedtimeReminderMinutes")}];
          v40[12] = v19;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:13];
          [v28 addObject:v20];
        }

        v29 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v29);
    }

    a1 = v24;
    v5 = v25;
    v21 = *(*(v24 + 40) + 8);
    v7 = *(v21 + 40);
    *(v21 + 40) = v28;
    v6 = v23;
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v22 = *MEMORY[0x277D85DE8];
}

void __63__ATXAlarmsDataSource_alarmsFromDate_toDate_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __63__ATXAlarmsDataSource_alarmsFromDate_toDate_completionHandler___block_invoke_2_cold_1(v2);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:1 userInfo:MEMORY[0x277CBEC10]];
  (*(v3 + 16))(v3, 0, v4);
}

void __63__ATXAlarmsDataSource_alarmsFromDate_toDate_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23E3EA000, a2, OS_LOG_TYPE_ERROR, "Fetching alarms failed: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end