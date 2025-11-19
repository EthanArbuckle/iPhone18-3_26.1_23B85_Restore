@interface ATXHeuristicOngoingEvent
- (id)heuristicResultWithEnvironment:(id)a3;
- (id)permanentRefreshTriggers;
@end

@implementation ATXHeuristicOngoingEvent

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

- (id)heuristicResultWithEnvironment:(id)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v58 = a3;
  v3 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E3EA000, v3, OS_LOG_TYPE_DEFAULT, "+[ATXHeuristicOngoingEvent produceSuggestions]", buf, 2u);
  }

  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [v4 dateByAddingTimeInterval:7200.0];
  v6 = [ATXCalendarEventsDataSource alloc];
  v7 = [v58 heuristicDevice];
  v8 = [(ATXCalendarEventsDataSource *)v6 initWithDevice:v7];

  v52 = v8;
  v53 = v5;
  v54 = v4;
  v9 = [(ATXCalendarEventsDataSource *)v8 eventsFromStartDate:v4 endDate:v5 reason:@"ongoing event heuristic"];
  v10 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_15];
  v51 = v9;
  v11 = [v9 filteredArrayUsingPredicate:v10];

  v50 = v11;
  v12 = [v11 sortedArrayUsingComparator:&__block_literal_global_23_0];
  v13 = objc_opt_new();
  v55 = objc_opt_new();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v61 objects:v73 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0x278C3C000uLL;
    v18 = *v62;
    v56 = v14;
    v57 = v13;
    v59 = *v62;
    do
    {
      v19 = 0;
      v60 = v16;
      do
      {
        if (*v62 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v61 + 1) + 8 * v19);
        v21 = [*(v17 + 856) allowSuggestionsForEvent:v20];
        v22 = __atxlog_handle_context_heuristic();
        v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
        if (v21)
        {
          if (v23)
          {
            v24 = [v20 eventIdentifier];
            v25 = [v20 title];
            v26 = [v25 hash];
            v27 = [v20 startDate];
            v28 = [v20 organizer];
            *buf = 138413058;
            v66 = v24;
            v67 = 2048;
            v68 = v26;
            v17 = 0x278C3C000;
            v69 = 2112;
            v70 = v27;
            v71 = 1024;
            v72 = v28 != 0;
            _os_log_impl(&dword_23E3EA000, v22, OS_LOG_TYPE_DEFAULT, "Event id: %@ title.hash: %lu start:%@ has organizer:%{BOOL}i", buf, 0x26u);

            v16 = v60;
          }

          v22 = [v20 startDate];
          v29 = [v20 endDate];
          if ([v22 compare:v29]== 1)
          {
            v30 = __atxlog_handle_context_heuristic();
            if (os_log_type_enabled(&v30->super, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v66 = v22;
              v67 = 2112;
              v68 = v29;
              _os_log_fault_impl(&dword_23E3EA000, &v30->super, OS_LOG_TYPE_FAULT, "ATXHeuristicOngoingEvent: validStartDate %@ is after validEndDate %@. Skipping event", buf, 0x16u);
            }
          }

          else
          {
            v30 = [[ATXContextEventSuggestionProducer alloc] initWithEvent:v20 validFromStartDate:v22 validToEndDate:v29 environment:v58];
            v31 = [(ATXContextEventSuggestionProducer *)v30 suggestionForConferenceWithScore:0x200000 predictionReasons:80.0];
            v32 = __atxlog_handle_context_heuristic();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v66 = v31;
              _os_log_impl(&dword_23E3EA000, v32, OS_LOG_TYPE_DEFAULT, "conferenceSuggestion: %@", buf, 0xCu);
            }

            if (v31)
            {
              [v13 addObject:v31];
            }

            v33 = [ATXHeuristicNavigationUtilities locationFromEvent:v20 schemaType:2];
            v34 = [ATXHeuristicNavigationUtilities allowNavigationSuggestionForLocation:v33 maxDistance:250000];
            v35 = __atxlog_handle_context_heuristic();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              LODWORD(v66) = v34;
              _os_log_impl(&dword_23E3EA000, v35, OS_LOG_TYPE_DEFAULT, "ATXHeuristicOngoingEvent: can we navigate to event: (%{BOOL}d)", buf, 8u);
            }

            if (v34)
            {
              v36 = [v58 heuristicDevice];
              v37 = [ATXHeuristicNavigationUtilities navigationSuggestionActionForEvent:v20 schemaForEvent:0 transportType:@"AUTOMOBILE" predictionReasons:0x200000 heuristicDevice:v36 score:v22 validStartDate:80.0 validEndDate:v29];

              v13 = v57;
              if (v37)
              {
                [v57 addObject:v37];
                v38 = [ATXInformationHeuristicRefreshLocationTrigger alloc];
                [v33 coordinate];
                v39 = [ATXInformationHeuristicRefreshLocationTrigger initWithEnteringLocation:v38 radiusInMeters:"initWithEnteringLocation:radiusInMeters:"];
                [v55 addObject:v39];
              }
            }

            v40 = [(ATXContextEventSuggestionProducer *)v30 suggestionForEventOrganizerWithScore:0x200000 predictionReasons:50.0];
            v41 = __atxlog_handle_context_heuristic();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v66 = v40;
              _os_log_impl(&dword_23E3EA000, v41, OS_LOG_TYPE_DEFAULT, "Suggestion: %@", buf, 0xCu);
            }

            if (v40)
            {
              [v13 addObject:v40];
            }

            v42 = [(ATXContextEventSuggestionProducer *)v30 suggestionForEventParticipantWithScore:0x200000 predictionReasons:50.0];
            v43 = __atxlog_handle_context_heuristic();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v66 = v42;
              _os_log_impl(&dword_23E3EA000, v43, OS_LOG_TYPE_DEFAULT, "Suggestion: %@", buf, 0xCu);
            }

            if (v42)
            {
              [v13 addObject:v42];
            }

            if ([v13 count])
            {
              v44 = [(ATXContextEventSuggestionProducer *)v30 suggestionForDNDWithScore:0x200000 predictionReasons:30.0];
              v45 = __atxlog_handle_context_heuristic();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v66 = v44;
                _os_log_impl(&dword_23E3EA000, v45, OS_LOG_TYPE_DEFAULT, "DND Suggestion: %@", buf, 0xCu);
              }

              v13 = v57;
              [v57 addObject:v44];
            }

            else
            {
              v44 = __atxlog_handle_context_heuristic();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_23E3EA000, v44, OS_LOG_TYPE_DEFAULT, "Skipping DND Suggestion: No other event suggestions", buf, 2u);
              }
            }

            v14 = v56;
            v16 = v60;
            v17 = 0x278C3C000;
          }

          v18 = v59;
        }

        else if (v23)
        {
          *buf = 0;
          _os_log_impl(&dword_23E3EA000, v22, OS_LOG_TYPE_DEFAULT, "Ongoing Event: Skipping event suggestions, event is a Unsupported", buf, 2u);
        }

        ++v19;
      }

      while (v16 != v19);
      v16 = [v14 countByEnumeratingWithState:&v61 objects:v73 count:16];
    }

    while (v16);
  }

  v46 = [[ATXInformationHeuristicRefreshTimeTrigger alloc] initWithFireDate:v53];
  [v55 addObject:v46];
  v47 = [[ATXContextHeuristicResult alloc] initWithSuggestions:v13 additionalRefreshTriggers:v55];

  v48 = *MEMORY[0x277D85DE8];

  return v47;
}

uint64_t __59__ATXHeuristicOngoingEvent_heuristicResultWithEnvironment___block_invoke_2(uint64_t a1, void *a2, void *a3)
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