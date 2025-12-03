@interface ATXHeuristicWindDown
- (id)_contextDateInterval;
- (id)heuristicResultWithEnvironment:(id)environment;
- (id)permanentRefreshTriggers;
- (void)_addRefreshTimeTriggerWithHour:(unint64_t)hour refreshTriggers:(id)triggers;
@end

@implementation ATXHeuristicWindDown

- (id)permanentRefreshTriggers
{
  v17 = *MEMORY[0x277D85DE8];
  _contextDateInterval = [(ATXHeuristicWindDown *)self _contextDateInterval];
  v3 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    startDate = [_contextDateInterval startDate];
    endDate = [_contextDateInterval endDate];
    *buf = 138412546;
    v14 = startDate;
    v15 = 2112;
    v16 = endDate;
    _os_log_impl(&dword_23E3EA000, v3, OS_LOG_TYPE_DEFAULT, "ATXHeuristicWindDown permanentRefreshTriggers, context valid from %@ to %@", buf, 0x16u);
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
  v31 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v5 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E3EA000, v5, OS_LOG_TYPE_DEFAULT, "ATXHeuristicWindDown heuristicResultWithEnvironment", buf, 2u);
  }

  if (_os_feature_enabled_impl())
  {
    v6 = objc_opt_new();
    _contextDateInterval = [(ATXHeuristicWindDown *)self _contextDateInterval];
    v8 = [MEMORY[0x277CBEAA8] now];
    v9 = [_contextDateInterval containsDate:v8];

    if (v9)
    {
      v10 = [[ATXContextAlarmSuggestionProducer alloc] initWithValidDateInterval:_contextDateInterval reasonCode:41 score:40.0];
      v11 = [(ATXContextAlarmSuggestionProducer *)v10 editNextAlarmSuggestionsWithEnvironment:environmentCopy];
      [v6 addObjectsFromArray:v11];

      v12 = [[ATXContextWebsiteSuggestionProducer alloc] initWithValidDateInterval:_contextDateInterval reasonCode:41 score:40.0];
      websiteSuggestions = [(ATXContextWebsiteSuggestionProducer *)v12 websiteSuggestions];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v14 = [websiteSuggestions countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v26;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v26 != v16)
            {
              objc_enumerationMutation(websiteSuggestions);
            }

            [v6 addObject:*(*(&v25 + 1) + 8 * i)];
          }

          v15 = [websiteSuggestions countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v15);
      }

      v18 = [[ATXContextWeatherSuggestionProducer alloc] initWithValidDateInterval:_contextDateInterval reasonCode:41 score:40.0];
      dummySuggestion = [(ATXContextWeatherSuggestionProducer *)v18 dummySuggestion];
      if (dummySuggestion)
      {
        [v6 addObject:dummySuggestion];
      }
    }

    v20 = objc_opt_new();
    [(ATXHeuristicWindDown *)self _addRefreshTimeTriggerWithHour:21 refreshTriggers:v20];
    [(ATXHeuristicWindDown *)self _addRefreshTimeTriggerWithHour:23 refreshTriggers:v20];
    v21 = [[ATXContextHeuristicResult alloc] initWithSuggestions:v6 additionalRefreshTriggers:v20];
  }

  else
  {
    v22 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v22, OS_LOG_TYPE_DEFAULT, "ATXHeuristicWindDown heuristicResultWithEnvironment feature: zkw_routines is off. Dropping", buf, 2u);
    }

    v21 = objc_opt_new();
  }

  v23 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)_addRefreshTimeTriggerWithHour:(unint64_t)hour refreshTriggers:(id)triggers
{
  v12 = *MEMORY[0x277D85DE8];
  triggersCopy = triggers;
  v6 = [ATXHeuristicGoodMorning nextDateWithHour:hour];
  v7 = [[ATXInformationHeuristicRefreshTimeTrigger alloc] initWithFireDate:v6];
  v8 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_23E3EA000, v8, OS_LOG_TYPE_DEFAULT, "ATXHeuristicWindDown _addRefreshTimeTriggerWithHour adding a trigger at %@", &v10, 0xCu);
  }

  [triggersCopy addObject:v7];
  v9 = *MEMORY[0x277D85DE8];
}

- (id)_contextDateInterval
{
  date = [MEMORY[0x277CBEAA8] date];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [currentCalendar dateBySettingHour:21 minute:0 second:0 ofDate:date options:0];
  v5 = [currentCalendar dateBySettingHour:23 minute:0 second:0 ofDate:date options:0];
  v6 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v4 endDate:v5];

  return v6;
}

@end