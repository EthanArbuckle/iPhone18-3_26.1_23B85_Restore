@interface ATXChangeAlarmBeforeHolidayDataSource
- (ATXChangeAlarmBeforeHolidayDataSource)initWithDevice:(id)a3;
- (void)predictedBedTimeWithCallback:(id)a3;
- (void)scheduledBedTimeWithCallback:(id)a3;
@end

@implementation ATXChangeAlarmBeforeHolidayDataSource

- (ATXChangeAlarmBeforeHolidayDataSource)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXChangeAlarmBeforeHolidayDataSource;
  v6 = [(ATXChangeAlarmBeforeHolidayDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
  }

  return v7;
}

- (void)scheduledBedTimeWithCallback:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[ATXHeuristicDevice sharedAlarmManager];
  v5 = [v4 sleepAlarmSync];
  v6 = [v5 isEnabled];
  v7 = __atxlog_handle_heuristic();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v11 = 134218240;
      v12 = [v5 bedtimeHour];
      v13 = 2048;
      v14 = [v5 bedtimeMinute];
      _os_log_impl(&dword_23E3EA000, v7, OS_LOG_TYPE_DEFAULT, "changeAlarmBeforeHoliday: Found scheduled bed time: %ld:%ld", &v11, 0x16u);
    }

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{3600 * objc_msgSend(v5, "bedtimeHour") + 60 * objc_msgSend(v5, "bedtimeMinute")}];
    v3[2](v3, v9, 0);

    v3 = v9;
  }

  else
  {
    if (v8)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_23E3EA000, v7, OS_LOG_TYPE_DEFAULT, "changeAlarmBeforeHoliday: No scheduled bed time", &v11, 2u);
    }

    v3[2](v3, &unk_2850BA470, 0);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)predictedBedTimeWithCallback:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CBEBD0]);
  v5 = [v4 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v6 = [v5 integerForKey:*MEMORY[0x277CEBDD8]];
  if (v6)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    v3[2](v3, v7, 0);
  }

  else
  {
    v8 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v8, OS_LOG_TYPE_DEFAULT, "changeAlarmBeforeHoliday: No cached predicted bed time; getting predicted bed time", buf, 2u);
    }

    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v9 = getATXSleepSuggestionServerClass_softClass;
    v22 = getATXSleepSuggestionServerClass_softClass;
    if (!getATXSleepSuggestionServerClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __getATXSleepSuggestionServerClass_block_invoke;
      v17 = &unk_278C3CC98;
      v18 = &v19;
      __getATXSleepSuggestionServerClass_block_invoke(buf);
      v9 = v20[3];
    }

    v10 = v9;
    _Block_object_dispose(&v19, 8);
    v11 = [v9 sharedInstance];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __70__ATXChangeAlarmBeforeHolidayDataSource_predictedBedTimeWithCallback___block_invoke;
    v12[3] = &unk_278C3CC70;
    v13 = v3;
    [v11 predictedSleepSuggestionWithCompletionHandler:v12];
  }
}

void __70__ATXChangeAlarmBeforeHolidayDataSource_predictedBedTimeWithCallback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 occurrence];
  v7 = [v6 bedtimeComponents];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{3600 * objc_msgSend(v7, "hour") + 60 * objc_msgSend(v7, "minute")}];
    (*(v8 + 16))(v8, v9, 0);
  }

  else
  {
    v10 = __atxlog_handle_heuristic();
    v11 = v10;
    if (v5)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __70__ATXChangeAlarmBeforeHolidayDataSource_predictedBedTimeWithCallback___block_invoke_cold_1(v5, v11);
      }

      v12 = *(*(a1 + 32) + 16);
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_23E3EA000, v11, OS_LOG_TYPE_DEFAULT, "changeAlarmBeforeHoliday: No suggested sleep schedule available", v13, 2u);
      }

      v12 = *(*(a1 + 32) + 16);
    }

    v12();
  }
}

void __70__ATXChangeAlarmBeforeHolidayDataSource_predictedBedTimeWithCallback___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23E3EA000, a2, OS_LOG_TYPE_ERROR, "changeAlarmBeforeHoliday: Failed to get suggested sleep schedule with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end