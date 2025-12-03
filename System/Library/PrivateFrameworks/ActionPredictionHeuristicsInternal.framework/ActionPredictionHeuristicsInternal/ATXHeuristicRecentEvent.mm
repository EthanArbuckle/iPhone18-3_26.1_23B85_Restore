@interface ATXHeuristicRecentEvent
- (id)heuristicResultWithEnvironment:(id)environment;
- (id)permanentRefreshTriggers;
@end

@implementation ATXHeuristicRecentEvent

- (id)permanentRefreshTriggers
{
  v2 = [ATXInformationHeuristicRefreshNotitifcationTrigger alloc];
  v3 = [(ATXInformationHeuristicRefreshNotitifcationTrigger *)v2 initWithNotification:*MEMORY[0x277CC5948] type:0];
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v3, 0}];
  objc_autoreleasePoolPop(v4);

  return v5;
}

- (id)heuristicResultWithEnvironment:(id)environment
{
  v73 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v4 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E3EA000, v4, OS_LOG_TYPE_DEFAULT, "+[ATXHeuristicRecentEvent produceSuggestions]", buf, 2u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  v6 = [date dateByAddingTimeInterval:-600.0];
  v54 = date;
  v7 = [date dateByAddingTimeInterval:7200.0];
  v8 = [ATXCalendarEventsDataSource alloc];
  heuristicDevice = [environmentCopy heuristicDevice];
  v10 = [(ATXCalendarEventsDataSource *)v8 initWithDevice:heuristicDevice];

  v52 = v10;
  v53 = v6;
  v11 = [(ATXCalendarEventsDataSource *)v10 eventsFromStartDate:v6 endDate:v7 reason:@"recent event heuristic"];
  v12 = MEMORY[0x277CCAC30];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __58__ATXHeuristicRecentEvent_heuristicResultWithEnvironment___block_invoke;
  v62[3] = &unk_278C3CE60;
  v50 = v7;
  v63 = v50;
  v13 = [v12 predicateWithBlock:v62];
  v51 = v11;
  v14 = [v11 filteredArrayUsingPredicate:v13];

  v49 = v14;
  v15 = [v14 sortedArrayUsingComparator:&__block_literal_global_11];
  v16 = objc_opt_new();
  v48 = objc_opt_new();
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v17 = v15;
  v18 = [v17 countByEnumeratingWithState:&v58 objects:v72 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v59;
    v21 = 0x278C3C000uLL;
    v56 = *v59;
    v55 = v17;
    do
    {
      v22 = 0;
      v57 = v19;
      do
      {
        if (*v59 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v58 + 1) + 8 * v22);
        v24 = [*(v21 + 856) allowSuggestionsForEvent:{v23, v48}];
        endDate = __atxlog_handle_context_heuristic();
        v26 = os_log_type_enabled(endDate, OS_LOG_TYPE_DEFAULT);
        if (v24)
        {
          if (v26)
          {
            eventIdentifier = [v23 eventIdentifier];
            title = [v23 title];
            v29 = [title hash];
            startDate = [v23 startDate];
            [v23 organizer];
            v31 = v16;
            v33 = v32 = environmentCopy;
            *buf = 138413058;
            v65 = eventIdentifier;
            v66 = 2048;
            v67 = v29;
            v68 = 2112;
            v69 = startDate;
            v70 = 1024;
            v71 = v33 != 0;
            _os_log_impl(&dword_23E3EA000, endDate, OS_LOG_TYPE_DEFAULT, "Event id: %@ title.hash: %lu start:%@ has organizer:%{BOOL}i", buf, 0x26u);

            environmentCopy = v32;
            v16 = v31;
            v17 = v55;
          }

          endDate = [v23 endDate];
          endDate2 = [v23 endDate];
          v35 = [endDate2 dateByAddingTimeInterval:600.0];

          v36 = [[ATXContextEventSuggestionProducer alloc] initWithEvent:v23 validFromStartDate:endDate validToEndDate:v35 environment:environmentCopy];
          v37 = [(ATXContextEventSuggestionProducer *)v36 suggestionForEventOrganizerWithScore:0x400000 predictionReasons:50.0];
          v38 = __atxlog_handle_context_heuristic();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v65 = v37;
            _os_log_impl(&dword_23E3EA000, v38, OS_LOG_TYPE_DEFAULT, "Suggestion: %@", buf, 0xCu);
          }

          if (v37)
          {
            [v16 addObject:v37];
          }

          v39 = [(ATXContextEventSuggestionProducer *)v36 suggestionForEventParticipantWithScore:0x400000 predictionReasons:50.0];
          v40 = __atxlog_handle_context_heuristic();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v65 = v39;
            _os_log_impl(&dword_23E3EA000, v40, OS_LOG_TYPE_DEFAULT, "Suggestion: %@", buf, 0xCu);
          }

          if (v39)
          {
            [v16 addObject:v39];
          }

          v20 = v56;
          v19 = v57;
          v21 = 0x278C3C000;
        }

        else if (v26)
        {
          *buf = 0;
          _os_log_impl(&dword_23E3EA000, endDate, OS_LOG_TYPE_DEFAULT, "Recent Event: Skipping event suggestions, event is unsupported", buf, 2u);
        }

        ++v22;
      }

      while (v19 != v22);
      v19 = [v17 countByEnumeratingWithState:&v58 objects:v72 count:16];
    }

    while (v19);
  }

  v41 = [[ATXInformationHeuristicRefreshTimeTrigger alloc] initWithFireDate:v50];
  [v48 addObject:v41];
  v42 = [ATXContextHeuristicResult alloc];
  [MEMORY[0x277CBEB98] set];
  v44 = v43 = v17;
  v45 = [(ATXContextHeuristicResult *)v42 initWithSuggestions:v16 additionalRefreshTriggers:v44];

  v46 = *MEMORY[0x277D85DE8];

  return v45;
}

BOOL __58__ATXHeuristicRecentEvent_heuristicResultWithEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isAllDay])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 endDate];
    v4 = [v5 compare:*(a1 + 32)] == -1;
  }

  return v4;
}

uint64_t __58__ATXHeuristicRecentEvent_heuristicResultWithEnvironment___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 organizer];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 organizer];

    if (!v8)
    {
      v12 = -1;
      goto LABEL_9;
    }
  }

  v9 = [v4 organizer];
  if (v9)
  {
  }

  else
  {
    v13 = [v5 organizer];

    if (v13)
    {
      v12 = 1;
      goto LABEL_9;
    }
  }

  v10 = [v4 endDate];
  v11 = [v5 endDate];
  v12 = [v10 compare:v11];

LABEL_9:
  return v12;
}

@end