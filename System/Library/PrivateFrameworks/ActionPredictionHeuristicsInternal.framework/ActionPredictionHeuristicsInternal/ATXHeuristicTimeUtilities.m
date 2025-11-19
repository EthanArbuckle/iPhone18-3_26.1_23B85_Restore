@interface ATXHeuristicTimeUtilities
+ (double)timestampByOffsettingDays:(double)a3 dayOffset:(int64_t)a4;
+ (double)timestampByOffsettingStartOfTodayByNumberOfDays:(int64_t)a3;
+ (double)timestampWithHour:(unint64_t)a3 minute:(unint64_t)a4 atDayOfTimestamp:(double)a5;
+ (id)enabledAlarmsFromTS:(double)a3 toTS:(double)a4 environment:(id)a5;
+ (id)usualAlarmTimeOfDayDataSourceWithEnvironment:(id)a3;
@end

@implementation ATXHeuristicTimeUtilities

+ (double)timestampByOffsettingStartOfTodayByNumberOfDays:(int64_t)a3
{
  v4 = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [v4 startOfDayForDate:v5];

  if (a3)
  {
    v7 = [v4 dateByAddingUnit:16 value:a3 toDate:v6 options:0];
    [v7 timeIntervalSinceReferenceDate];
    v9 = v8;
  }

  else
  {
    [v6 timeIntervalSinceReferenceDate];
    v9 = v10;
  }

  return v9;
}

+ (double)timestampWithHour:(unint64_t)a3 minute:(unint64_t)a4 atDayOfTimestamp:(double)a5
{
  v8 = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:a5];
  v10 = [v8 dateBySettingHour:a3 minute:a4 second:0 ofDate:v9 options:0];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;

  return v12;
}

+ (double)timestampByOffsettingDays:(double)a3 dayOffset:(int64_t)a4
{
  v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:a3];
  v6 = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [v6 dateByAddingUnit:16 value:a4 toDate:v5 options:0];
  [v7 timeIntervalSinceReferenceDate];
  v9 = v8;

  return v9;
}

+ (id)usualAlarmTimeOfDayDataSourceWithEnvironment:(id)a3
{
  v3 = a3;
  v4 = [ATXSetAlarmTimeOfDayDataSource alloc];
  v5 = [v3 heuristicDevice];
  v6 = [(ATXSetAlarmTimeOfDayDataSource *)v4 initWithDevice:v5];

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__16;
  v21 = __Block_byref_object_dispose__16;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__16;
  v15 = __Block_byref_object_dispose__16;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__ATXHeuristicTimeUtilities_usualAlarmTimeOfDayDataSourceWithEnvironment___block_invoke;
  v10[3] = &unk_278C3CDD0;
  v10[4] = &v17;
  v10[5] = &v11;
  [(ATXSetAlarmTimeOfDayDataSource *)v6 alarmTimeOfDay:v10];
  if (v12[5])
  {
    v7 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ATXHeuristicTimeUtilities usualAlarmTimeOfDayDataSourceWithEnvironment:v7];
    }

    v8 = 0;
  }

  else
  {
    v8 = v18[5];
  }

  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v8;
}

void __74__ATXHeuristicTimeUtilities_usualAlarmTimeOfDayDataSourceWithEnvironment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

+ (id)enabledAlarmsFromTS:(double)a3 toTS:(double)a4 environment:(id)a5
{
  v7 = a5;
  v8 = [ATXAlarmsDataSource alloc];
  v9 = [v7 heuristicDevice];
  v10 = [(ATXAlarmsDataSource *)v8 initWithDevice:v9];

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__16;
  v27 = __Block_byref_object_dispose__16;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__16;
  v21 = __Block_byref_object_dispose__16;
  v22 = 0;
  v11 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:a3];
  v12 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:a4];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __66__ATXHeuristicTimeUtilities_enabledAlarmsFromTS_toTS_environment___block_invoke;
  v16[3] = &unk_278C3CDA8;
  v16[4] = &v23;
  v16[5] = &v17;
  [(ATXAlarmsDataSource *)v10 alarmsFromDate:v11 toDate:v12 completionHandler:v16];
  if (v18[5])
  {
    v13 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXHeuristicTimeUtilities enabledAlarmsFromTS:v13 toTS:? environment:?];
    }

    v14 = 0;
  }

  else
  {
    v14 = v24[5];
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v14;
}

void __66__ATXHeuristicTimeUtilities_enabledAlarmsFromTS_toTS_environment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

+ (void)usualAlarmTimeOfDayDataSourceWithEnvironment:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136446210;
  v3 = "+[ATXHeuristicTimeUtilities usualAlarmTimeOfDayDataSourceWithEnvironment:]";
  _os_log_error_impl(&dword_23E3EA000, log, OS_LOG_TYPE_ERROR, "Error querying data source %{public}s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)enabledAlarmsFromTS:(os_log_t)log toTS:environment:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136446210;
  v3 = "+[ATXHeuristicTimeUtilities enabledAlarmsFromTS:toTS:environment:]";
  _os_log_error_impl(&dword_23E3EA000, log, OS_LOG_TYPE_ERROR, "Error querying data source %{public}s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end