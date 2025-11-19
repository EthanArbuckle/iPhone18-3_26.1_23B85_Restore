@interface ATXHeuristicAlarmUtilities
+ (BOOL)isValidNonRecentlyModifiedAlarm:(id)a3 duringInterval:(id)a4;
+ (id)alarmDataWithAlarmDict:(id)a3;
+ (id)alarmTrigger;
+ (id)fireDateWithAlarmDict:(id)a3;
+ (id)firstFiringAmongAlarms:(id)a3;
+ (id)localizedTimeWithAlarmDict:(id)a3;
@end

@implementation ATXHeuristicAlarmUtilities

+ (id)alarmTrigger
{
  v2 = +[ATXHeuristicDevice sharedAlarmManager];
  [v2 checkIn];

  v3 = [ATXInformationHeuristicRefreshNotitifcationTrigger alloc];
  v4 = [(ATXInformationHeuristicRefreshNotitifcationTrigger *)v3 initWithNotification:*MEMORY[0x277D29598] type:0];

  return v4;
}

+ (id)localizedTimeWithAlarmDict:(id)a3
{
  v3 = [a1 fireDateWithAlarmDict:a3];
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateStyle:0];
  [v4 setTimeStyle:1];
  v5 = [v4 stringFromDate:v3];

  return v5;
}

+ (BOOL)isValidNonRecentlyModifiedAlarm:(id)a3 duringInterval:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:@"playsOnThisDevice"];
  v8 = [v5 objectForKeyedSubscript:@"lastModifiedTS"];
  v9 = [v6 startDate];
  [v9 timeIntervalSinceReferenceDate];
  v11 = v10;

  v12 = [v6 endDate];

  [v12 timeIntervalSinceReferenceDate];
  v14 = v13;

  [v8 doubleValue];
  if (v15 >= v11)
  {
    [v8 doubleValue];
    v16 = v17 <= v14;
  }

  else
  {
    v16 = 0;
  }

  v18 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [ATXHeuristicAlarmUtilities localizedTimeWithAlarmDict:v5];
    v20 = MEMORY[0x277CBEAA8];
    [v8 doubleValue];
    v21 = [v20 dateWithTimeIntervalSinceReferenceDate:?];
    if (v21)
    {
      v22 = [MEMORY[0x277CCA968] localizedStringFromDate:v21 dateStyle:1 timeStyle:1];
    }

    else
    {
      v22 = 0;
    }

    v26 = 138412802;
    v27 = v19;
    v28 = 2112;
    v29 = v22;
    v30 = 1024;
    v31 = v16;
    _os_log_impl(&dword_23E3EA000, v18, OS_LOG_TYPE_DEFAULT, "ATXHeuristicAlarmUtilities: alarm at %@ was modified at %@ recently? %{BOOL}d", &v26, 0x1Cu);
  }

  v23 = [v7 BOOLValue];
  v24 = *MEMORY[0x277D85DE8];
  return v23 & !v16;
}

+ (id)firstFiringAmongAlarms:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if (v7)
        {
          v11 = [ATXHeuristicAlarmUtilities fireDateWithAlarmDict:*(*(&v15 + 1) + 8 * i)];
          if ([v11 compare:v6] == -1)
          {
            v11 = v11;

            v12 = v10;
            v6 = v11;
            v7 = v12;
          }
        }

        else
        {
          v7 = v10;
          [ATXHeuristicAlarmUtilities fireDateWithAlarmDict:v7];
          v6 = v11 = v6;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)fireDateWithAlarmDict:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"MTAlarm"];
  v4 = [v3 nextFireDate];

  return v4;
}

+ (id)alarmDataWithAlarmDict:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"MTAlarm"];
  v4 = [v3 intentAlarm];
  v5 = objc_alloc_init(MEMORY[0x277CD3D68]);
  v6 = [v5 encodeObject:v4];

  return v6;
}

@end