@interface ATXHeuristicUpcomingEvent
- (id)heuristicResultWithEnvironment:(id)environment;
- (id)permanentRefreshTriggers;
@end

@implementation ATXHeuristicUpcomingEvent

- (id)permanentRefreshTriggers
{
  v2 = [ATXInformationHeuristicRefreshNotitifcationTrigger alloc];
  v3 = [(ATXInformationHeuristicRefreshNotitifcationTrigger *)v2 initWithNotification:*MEMORY[0x277CC5948] type:0];
  v4 = [[ATXInformationHeuristicRefreshNotitifcationTrigger alloc] initWithNotification:@"ATXTravelTimeUpdated" type:0];
  v5 = objc_autoreleasePoolPush();
  v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v3, v4, 0}];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (id)heuristicResultWithEnvironment:(id)environment
{
  v96 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v3 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E3EA000, v3, OS_LOG_TYPE_DEFAULT, "+[ATXHeuristicUpcomingEvent produceSuggestions]", buf, 2u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  v5 = [date dateByAddingTimeInterval:7200.0];
  v6 = [ATXCalendarEventsDataSource alloc];
  heuristicDevice = [environmentCopy heuristicDevice];
  v8 = [(ATXCalendarEventsDataSource *)v6 initWithDevice:heuristicDevice];

  v65 = v8;
  v9 = [(ATXCalendarEventsDataSource *)v8 eventsFromStartDate:date endDate:v5 reason:@"upcoming event heuristic"];
  v10 = MEMORY[0x277CCAC30];
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __60__ATXHeuristicUpcomingEvent_heuristicResultWithEnvironment___block_invoke;
  v83[3] = &unk_278C3D340;
  v63 = date;
  v84 = v63;
  v66 = v5;
  v85 = v66;
  v11 = [v10 predicateWithBlock:v83];
  v64 = v9;
  v12 = [v9 filteredArrayUsingPredicate:v11];

  v62 = v12;
  v13 = [v12 sortedArrayUsingComparator:&__block_literal_global_7];
  v14 = objc_opt_new();
  v67 = objc_opt_new();
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = v13;
  v15 = [obj countByEnumeratingWithState:&v79 objects:v95 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0x278C3C000uLL;
    v18 = *v80;
    v73 = *v80;
    do
    {
      v19 = 0;
      v68 = v16;
      do
      {
        if (*v80 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v79 + 1) + 8 * v19);
        v21 = [*(v17 + 856) allowSuggestionsForEvent:v20];
        v22 = __atxlog_handle_context_heuristic();
        v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
        if (v21)
        {
          if (v23)
          {
            eventIdentifier = [v20 eventIdentifier];
            title = [v20 title];
            v26 = [title hash];
            startDate = [v20 startDate];
            organizer = [v20 organizer];
            *buf = 138413058;
            v88 = eventIdentifier;
            v89 = 2048;
            v90 = v26;
            v18 = v73;
            v91 = 2112;
            v92 = startDate;
            v93 = 1024;
            v94 = organizer != 0;
            _os_log_impl(&dword_23E3EA000, v22, OS_LOG_TYPE_DEFAULT, "Event id: %@ title.hash: %lu start:%@ has organizer:%{BOOL}i", buf, 0x26u);
          }

          startDate2 = [v20 startDate];
          v22 = [startDate2 dateByAddingTimeInterval:-1800.0];

          startDate3 = [v20 startDate];
          if ([v22 compare:startDate3]== 1)
          {
            v31 = __atxlog_handle_context_heuristic();
            if (os_log_type_enabled(&v31->super, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v88 = v22;
              v89 = 2112;
              v90 = startDate3;
              _os_log_fault_impl(&dword_23E3EA000, &v31->super, OS_LOG_TYPE_FAULT, "ATXHeuristicUpcomingEvent: validStartDate %@ is after validEndDate %@. Skipping event", buf, 0x16u);
            }
          }

          else
          {
            v31 = [[ATXContextEventSuggestionProducer alloc] initWithEvent:v20 validFromStartDate:v22 validToEndDate:startDate3 environment:environmentCopy];
            v32 = [(ATXContextEventSuggestionProducer *)v31 suggestionForConferenceWithScore:0x100000 predictionReasons:80.0];
            v33 = __atxlog_handle_context_heuristic();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v88 = v32;
              _os_log_impl(&dword_23E3EA000, v33, OS_LOG_TYPE_DEFAULT, "conferenceSuggestion: %@", buf, 0xCu);
            }

            if (v32)
            {
              [v14 addObject:v32];
            }

            v34 = [(ATXContextEventSuggestionProducer *)v31 suggestionForEventOrganizerWithScore:0x100000 predictionReasons:50.0];
            v35 = __atxlog_handle_context_heuristic();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v88 = v34;
              _os_log_impl(&dword_23E3EA000, v35, OS_LOG_TYPE_DEFAULT, "Suggestion: %@", buf, 0xCu);
            }

            if (v34)
            {
              [v14 addObject:v34];
            }

            v70 = v34;
            v36 = [(ATXContextEventSuggestionProducer *)v31 suggestionForEventParticipantWithScore:0x100000 predictionReasons:50.0];
            v37 = __atxlog_handle_context_heuristic();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v88 = v36;
              _os_log_impl(&dword_23E3EA000, v37, OS_LOG_TYPE_DEFAULT, "Suggestion: %@", buf, 0xCu);
            }

            v71 = v32;

            if (v36)
            {
              [v14 addObject:v36];
            }

            v38 = v14;
            v39 = [ATXHeuristicNavigationUtilities locationFromEvent:v20 schemaType:2];
            v40 = [ATXHeuristicNavigationUtilities allowNavigationSuggestionForLocation:v39 maxDistance:250000];
            v41 = __atxlog_handle_context_heuristic();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              LODWORD(v88) = v40;
              _os_log_impl(&dword_23E3EA000, v41, OS_LOG_TYPE_DEFAULT, "ATXHeuristicUpcomingEvent: For upcoming event, can we navigate to event: (%{BOOL}d)", buf, 8u);
            }

            if (v40)
            {
              heuristicDevice2 = [environmentCopy heuristicDevice];
              v43 = [ATXHeuristicNavigationUtilities navigationSuggestionActionForEvent:v20 schemaForEvent:0 transportType:@"AUTOMOBILE" predictionReasons:0x100000 heuristicDevice:heuristicDevice2 score:v22 validStartDate:80.0 validEndDate:startDate3];

              if (v43)
              {
                [v38 addObject:v43];
                v44 = [ATXInformationHeuristicRefreshLocationTrigger alloc];
                [v39 coordinate];
                v45 = [ATXInformationHeuristicRefreshLocationTrigger initWithEnteringLocation:v44 radiusInMeters:"initWithEnteringLocation:radiusInMeters:"];
                [v67 addObject:v45];
              }
            }

            v14 = v38;
            if ([v38 count])
            {
              v46 = [(ATXContextEventSuggestionProducer *)v31 suggestionForDNDWithScore:0x100000 predictionReasons:30.0];
              v47 = __atxlog_handle_context_heuristic();
              v18 = v73;
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v88 = v46;
                _os_log_impl(&dword_23E3EA000, v47, OS_LOG_TYPE_DEFAULT, "DND Suggestion: %@", buf, 0xCu);
              }

              [v14 addObject:v46];
            }

            else
            {
              v46 = __atxlog_handle_context_heuristic();
              v18 = v73;
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_23E3EA000, v46, OS_LOG_TYPE_DEFAULT, "Skipping DND Suggestion: No other event suggestions", buf, 2u);
              }
            }

            v16 = v68;
          }

          v17 = 0x278C3C000;
        }

        else if (v23)
        {
          *buf = 0;
          _os_log_impl(&dword_23E3EA000, v22, OS_LOG_TYPE_DEFAULT, "Upcoming Event: Skipping event suggestions, event is unsupported", buf, 2u);
        }

        ++v19;
      }

      while (v16 != v19);
      v16 = [obj countByEnumeratingWithState:&v79 objects:v95 count:16];
    }

    while (v16);
  }

  v72 = [[ATXInformationHeuristicRefreshTimeTrigger alloc] initWithFireDate:v66];
  [v67 addObject:?];
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v48 = v14;
  v49 = [v48 countByEnumeratingWithState:&v75 objects:v86 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v76;
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v76 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = *(*(&v75 + 1) + 8 * i);
        v54 = __atxlog_handle_context_heuristic();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          uiSpecification = [v53 uiSpecification];
          contextStartDate = [uiSpecification contextStartDate];
          uiSpecification2 = [v53 uiSpecification];
          contextEndDate = [uiSpecification2 contextEndDate];
          *buf = 138412546;
          v88 = contextStartDate;
          v89 = 2112;
          v90 = contextEndDate;
          _os_log_impl(&dword_23E3EA000, v54, OS_LOG_TYPE_DEFAULT, "Suggestion: context from %@ to %@", buf, 0x16u);
        }
      }

      v50 = [v48 countByEnumeratingWithState:&v75 objects:v86 count:16];
    }

    while (v50);
  }

  v59 = [[ATXContextHeuristicResult alloc] initWithSuggestions:v48 additionalRefreshTriggers:v67];
  v60 = *MEMORY[0x277D85DE8];

  return v59;
}

BOOL __60__ATXHeuristicUpcomingEvent_heuristicResultWithEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isAllDay])
  {
    v4 = 0;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [v3 startDate];
    if ([v5 compare:v6] == -1)
    {
      v7 = [v3 startDate];
      v4 = [v7 compare:*(a1 + 40)] == -1;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

uint64_t __60__ATXHeuristicUpcomingEvent_heuristicResultWithEnvironment___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

  v10 = [v4 startDate];
  v11 = [v5 startDate];
  v12 = [v10 compare:v11];

LABEL_9:
  return v12;
}

@end