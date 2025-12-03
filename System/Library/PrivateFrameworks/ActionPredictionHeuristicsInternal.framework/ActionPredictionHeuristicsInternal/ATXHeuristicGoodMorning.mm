@interface ATXHeuristicGoodMorning
+ (id)contextDateInterval;
+ (id)nextDateWithHour:(unint64_t)hour;
- (id)heuristicResultWithEnvironment:(id)environment;
- (id)permanentRefreshTriggers;
- (void)_addRefreshTimeTriggerWithHour:(unint64_t)hour refreshTriggers:(id)triggers;
@end

@implementation ATXHeuristicGoodMorning

- (id)permanentRefreshTriggers
{
  v17 = *MEMORY[0x277D85DE8];
  contextDateInterval = [objc_opt_class() contextDateInterval];
  v3 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    startDate = [contextDateInterval startDate];
    endDate = [contextDateInterval endDate];
    *buf = 138412546;
    v14 = startDate;
    v15 = 2112;
    v16 = endDate;
    _os_log_impl(&dword_23E3EA000, v3, OS_LOG_TYPE_DEFAULT, "ATXHeuristicGoodMorning permanentRefreshTriggers, context valid from %@ to %@", buf, 0x16u);
  }

  v6 = +[ATXHeuristicAlarmUtilities alarmTrigger];
  v7 = [ATXInformationHeuristicRefreshNotitifcationTrigger alloc];
  v8 = [(ATXInformationHeuristicRefreshNotitifcationTrigger *)v7 initWithNotification:*MEMORY[0x277CBE780] type:0];
  v9 = objc_autoreleasePoolPush();
  v10 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v6, v8, 0}];
  objc_autoreleasePoolPop(v9);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)heuristicResultWithEnvironment:(id)environment
{
  v32 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v5 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E3EA000, v5, OS_LOG_TYPE_DEFAULT, "ATXHeuristicGoodMorning heuristicResultWithEnvironment", buf, 2u);
  }

  if (_os_feature_enabled_impl())
  {
    v6 = objc_opt_new();
    [(ATXHeuristicGoodMorning *)self _addRefreshTimeTriggerWithHour:6 refreshTriggers:v6];
    [(ATXHeuristicGoodMorning *)self _addRefreshTimeTriggerWithHour:10 refreshTriggers:v6];
    v7 = objc_opt_new();
    contextDateInterval = [objc_opt_class() contextDateInterval];
    v9 = [MEMORY[0x277CBEAA8] now];
    v10 = [contextDateInterval containsDate:v9];

    if (v10)
    {
      v11 = [[ATXContextWeatherSuggestionProducer alloc] initWithValidDateInterval:contextDateInterval reasonCode:40 score:50.0];
      dummySuggestion = [(ATXContextWeatherSuggestionProducer *)v11 weatherSuggestionWithRefreshTriggers:v6];
      if (!dummySuggestion)
      {
        dummySuggestion = [(ATXContextWeatherSuggestionProducer *)v11 dummySuggestion];
      }

      v25 = v11;
      [v7 addObject:dummySuggestion];
      v24 = [[ATXContextAlarmSuggestionProducer alloc] initWithValidDateInterval:contextDateInterval reasonCode:40 score:45.0];
      v13 = [(ATXContextAlarmSuggestionProducer *)v24 morningAlarmToggleSuggestionsWithEnvironment:environmentCopy];
      [v7 addObjectsFromArray:v13];

      v14 = [[ATXContextWebsiteSuggestionProducer alloc] initWithValidDateInterval:contextDateInterval reasonCode:40 score:40.0];
      websiteSuggestions = [(ATXContextWebsiteSuggestionProducer *)v14 websiteSuggestions];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v16 = [websiteSuggestions countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v27;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v27 != v18)
            {
              objc_enumerationMutation(websiteSuggestions);
            }

            [v7 addObject:*(*(&v26 + 1) + 8 * i)];
          }

          v17 = [websiteSuggestions countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v17);
      }
    }

    v20 = [[ATXContextHeuristicResult alloc] initWithSuggestions:v7 additionalRefreshTriggers:v6];
  }

  else
  {
    v21 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v21, OS_LOG_TYPE_DEFAULT, "ATXHeuristicGoodMorning heuristicResultWithEnvironment feature: zkw_routines is off. Dropping", buf, 2u);
    }

    v20 = objc_opt_new();
  }

  v22 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)_addRefreshTimeTriggerWithHour:(unint64_t)hour refreshTriggers:(id)triggers
{
  v12 = *MEMORY[0x277D85DE8];
  triggersCopy = triggers;
  v6 = [objc_opt_class() nextDateWithHour:hour];
  v7 = [[ATXInformationHeuristicRefreshTimeTrigger alloc] initWithFireDate:v6];
  v8 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_23E3EA000, v8, OS_LOG_TYPE_DEFAULT, "ATXHeuristicGoodMorning _addRefreshTimeTriggerWithHour adding a trigger at %@", &v10, 0xCu);
  }

  [triggersCopy addObject:v7];
  v9 = *MEMORY[0x277D85DE8];
}

+ (id)contextDateInterval
{
  date = [MEMORY[0x277CBEAA8] date];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [currentCalendar dateBySettingHour:6 minute:0 second:0 ofDate:date options:0];
  v5 = [currentCalendar dateBySettingHour:10 minute:0 second:0 ofDate:date options:0];
  v6 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v4 endDate:v5];

  return v6;
}

+ (id)nextDateWithHour:(unint64_t)hour
{
  date = [MEMORY[0x277CBEAA8] date];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [currentCalendar dateBySettingHour:hour minute:0 second:0 ofDate:date options:0];
  if ([v6 compare:date] == -1)
  {
    do
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      [v8 setDay:1];
      v7 = [currentCalendar dateByAddingComponents:v8 toDate:v6 options:0];

      v6 = v7;
    }

    while ([v7 compare:date] == -1);
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

@end