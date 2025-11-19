@interface ATXHeuristicConcludedFlightEventUtilities
+ (id)suggestionsForFlightsWithHeuristicDevice:(id)a3;
@end

@implementation ATXHeuristicConcludedFlightEventUtilities

+ (id)suggestionsForFlightsWithHeuristicDevice:(id)a3
{
  v92 = *MEMORY[0x277D85DE8];
  v66 = a3;
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [v3 dateByAddingTimeInterval:-64800.0];
  v5 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E3EA000, v5, OS_LOG_TYPE_DEFAULT, "Concluded flights event search", buf, 2u);
  }

  v6 = [[ATXCalendarEventsDataSource alloc] initWithDevice:v66];
  v7 = [(ATXCalendarEventsDataSource *)v6 flightEventsFromStartDate:v4 endDate:v3 reason:@"concluded flights heuristic"];
  v8 = [(ATXCalendarEventsDataSource *)v6 sortEkEvents:v7];
  if ([v8 count])
  {
    v64 = v7;
    v65 = v4;
    v74 = v6;
    v69 = objc_opt_new();
    v82 = objc_opt_new();
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v63 = v8;
    obj = v8;
    v84 = [obj countByEnumeratingWithState:&v85 objects:v91 count:16];
    if (!v84)
    {
      goto LABEL_44;
    }

    v9 = 0x278C3C000uLL;
    v83 = *v86;
    v73 = v3;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v86 != v83)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v85 + 1) + 8 * v10);
        v12 = [v11 endDate];
        v13 = [v12 dateByAddingTimeInterval:14400.0];

        v14 = [*(v9 + 864) flightInformationSchemaForEvent:v11];
        v15 = [v11 endLocation];
        v16 = [v15 geoLocation];

        if (v16)
        {
          v17 = [*(v9 + 864) currentLocationIsWithinAirportForEvent:v11];
          v18 = [ATXInformationHeuristicRefreshLocationTrigger alloc];
          [v16 coordinate];
          if ((v17 & 1) == 0)
          {
            v52 = [ATXInformationHeuristicRefreshLocationTrigger initWithEnteringLocation:v18 radiusInMeters:"initWithEnteringLocation:radiusInMeters:"];
            [v82 addObject:v52];
            goto LABEL_40;
          }

          v79 = [ATXInformationHeuristicRefreshLocationTrigger initWithExitingLocation:v18 radiusInMeters:"initWithExitingLocation:radiusInMeters:"];
          [v82 addObject:?];
          v19 = [v14 objectForKeyedSubscript:@"reservationFor"];
          v20 = [v19 objectForKeyedSubscript:@"arrivalAirport"];
          v21 = [v20 objectForKeyedSubscript:@"address"];
          [v21 objectForKeyedSubscript:@"addressLocality"];
          v23 = v22 = v3;

          v81 = v23;
          v24 = v23;
          v25 = v22;
          if (![v24 length])
          {
            v26 = __atxlog_handle_context_heuristic();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v90 = v81;
              _os_log_impl(&dword_23E3EA000, v26, OS_LOG_TYPE_DEFAULT, "ATXHeuristicConcludedFlightEventUtilities: Airplane mode: Missing information: Arrival City %@.", buf, 0xCu);
            }
          }

          v27 = [ATXHeuristicFlightEventUtilities _dateIntervalWithEvent:v11];
          v28 = [ATXContextFlightEventSuggestionProducer alloc];
          v29 = [v11 title];
          v76 = v27;
          v80 = v14;
          v30 = [(ATXContextFlightEventSuggestionProducer *)v28 initWithTitle:v29 flightInformationSchema:v14 urlString:0 teamIdentifier:0 validFromStartDate:0 validToEndDate:v13 alternateDestinationTitle:0 dateInterval:v27];

          v31 = [(ATXContextFlightEventSuggestionProducer *)v30 suggestionForAirplaneModeWithPredictionReasons:0x200000000 score:80.0];
          if (v31)
          {
            [ATXHeuristicFlightEventUtilities logSuggestion:v31 description:@"ATXHeuristicConcludedFlightEventUtilities: Airplane Modesuggestion"];
            [v69 addObject:v31];
          }

          v78 = [v25 dateByAddingTimeInterval:-43200.0];
          v32 = [ATXCalendarEventsDataSource hotelEventsFromStartDate:v74 endDate:"hotelEventsFromStartDate:endDate:reason:" reason:?];
          if (![v32 count])
          {
            [v25 dateByAddingTimeInterval:43200.0];
            v34 = v33 = v30;
            v35 = [(ATXCalendarEventsDataSource *)v74 hotelEventsFromStartDate:v25 endDate:v34 reason:@"lodging for concluded flights"];

            v30 = v33;
            v32 = v35;
          }

          v77 = v32;
          if ([v32 count])
          {
            v36 = [(ATXCalendarEventsDataSource *)v74 sortEkEvents:v32];
            if ([v36 count])
            {
              v72 = v36;
              v37 = [v36 firstObject];
              v38 = [v37 endDate];
              v39 = [v38 dateByAddingTimeInterval:14400.0];

              v40 = [v11 endDate];
              [v40 timeIntervalSinceDate:v73];
              v42 = v41;

              v14 = v80;
              v9 = 0x278C3C000uLL;
              if (v42 <= 14400.0)
              {
                v43 = [ATXHeuristicFlightEventUtilities flightInformationSchemaForEvent:v37];
                v67 = v39;
                v68 = v37;
                v44 = v37;
                v45 = v43;
                v46 = [ATXHeuristicNavigationUtilities navigationSuggestionActionForEvent:v44 schemaForEvent:v43 transportType:@"AUTOMOBILE" predictionReasons:0x200000000 heuristicDevice:v66 score:0 validStartDate:65.0 validEndDate:v39];
                if (v46)
                {
                  v70 = v30;
                  [ATXHeuristicFlightEventUtilities logSuggestion:v46 description:@"ATXHeuristicConcludedFlightEventUtilities: Navigation Suggestion"];
                  [v69 addObject:v46];
                  v47 = [v46 atxShortcutsActionExecutableObject];
                  v48 = [v47 contextualActionGetDirections];
                  v49 = [v48 destination];

                  if (v49)
                  {
                    v50 = [ATXInformationHeuristicRefreshLocationTrigger alloc];
                    [v49 coordinate];
                    v51 = [ATXInformationHeuristicRefreshLocationTrigger initWithEnteringLocation:v50 radiusInMeters:"initWithEnteringLocation:radiusInMeters:"];
                    [v82 addObject:v51];
                  }

                  v9 = 0x278C3C000;
                  v30 = v70;
                }

LABEL_35:
                v39 = v67;
                v37 = v68;
              }

              goto LABEL_36;
            }

            v9 = 0x278C3C000;
            v14 = v80;
          }

          else
          {
            v71 = v30;
            v36 = [ATXHeuristicNavigationUtilities fetchLocationForLOI:0];
            v53 = [ATXHeuristicNavigationUtilities allowNavigationSuggestionForLocation:v36 maxDistance:250000];
            v54 = __atxlog_handle_context_heuristic();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              LODWORD(v90) = v53;
              _os_log_impl(&dword_23E3EA000, v54, OS_LOG_TYPE_DEFAULT, "ATXHeursiticFlightEventUtilities: Can we navigate to home (%{BOOL}d)", buf, 8u);
            }

            v14 = v80;
            if (v53)
            {
              v72 = v36;
              v55 = MEMORY[0x277CCACA8];
              v56 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v57 = [v56 localizedStringForKey:@"HOME_NAVIGATION_TITLE" value:&stru_2850AD368 table:0];
              v37 = [v55 localizedStringWithFormat:v57];

              v39 = [ATXHeuristicNavigationUtilities navigationSuggestionActionForLOI:0 destinationName:v37 schemaForEvent:v80 withScore:@"AUTOMOBILE" transportType:0x200000000 predictionReason:0 validStartDate:65.0 validEndDate:v13 heuristicDevice:v66];
              if (v39)
              {
                v68 = v37;
                v9 = 0x278C3C000uLL;
                [ATXHeuristicFlightEventUtilities logSuggestion:v39 description:@"ATXHeuristicConcludedFlightEventUtilities: Navigation Suggestion"];
                v67 = v39;
                [v69 addObject:v39];
                v58 = [ATXInformationHeuristicRefreshLocationTrigger alloc];
                [v72 coordinate];
                v45 = [ATXInformationHeuristicRefreshLocationTrigger initWithEnteringLocation:v58 radiusInMeters:"initWithEnteringLocation:radiusInMeters:"];
                [v82 addObject:v45];
                v30 = v71;
                goto LABEL_35;
              }

              v9 = 0x278C3C000;
              v30 = v71;
LABEL_36:

              v36 = v72;
            }

            else
            {
              v9 = 0x278C3C000;
              v30 = v71;
            }
          }

          v3 = v73;
          v52 = v79;
          goto LABEL_40;
        }

        v52 = __atxlog_handle_context_heuristic();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23E3EA000, v52, OS_LOG_TYPE_DEFAULT, "ATXHeuristicConcludedFlightEventUtilities: No destination location, skipping Flight landed suggestions", buf, 2u);
        }

LABEL_40:

        ++v10;
      }

      while (v84 != v10);
      v59 = [obj countByEnumeratingWithState:&v85 objects:v91 count:16];
      v84 = v59;
      if (!v59)
      {
LABEL_44:

        v60 = [[ATXContextHeuristicResult alloc] initWithSuggestions:v69 additionalRefreshTriggers:v82];
        v7 = v64;
        v4 = v65;
        v6 = v74;
        v8 = v63;
        goto LABEL_46;
      }
    }
  }

  v60 = objc_opt_new();
LABEL_46:

  v61 = *MEMORY[0x277D85DE8];

  return v60;
}

@end