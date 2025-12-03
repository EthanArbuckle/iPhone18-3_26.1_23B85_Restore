@interface ATXHeuristicOngoingFlightEventUtilities
+ (id)suggestionsForFlightsWithHeuristicDevice:(id)device;
@end

@implementation ATXHeuristicOngoingFlightEventUtilities

+ (id)suggestionsForFlightsWithHeuristicDevice:(id)device
{
  v56 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  date = [MEMORY[0x277CBEAA8] date];
  v5 = [date dateByAddingTimeInterval:64800.0];
  v6 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E3EA000, v6, OS_LOG_TYPE_DEFAULT, "Ongoing flight event search", buf, 2u);
  }

  v7 = [[ATXCalendarEventsDataSource alloc] initWithDevice:deviceCopy];
  v8 = [(ATXCalendarEventsDataSource *)v7 flightEventsFromStartDate:date endDate:v5 reason:@"ongoing flight heuristic"];
  v9 = [(ATXCalendarEventsDataSource *)v7 sortEkEvents:v8];
  if ([v9 count])
  {
    v37 = v8;
    v38 = v7;
    v39 = v5;
    v40 = date;
    v41 = deviceCopy;
    v43 = objc_opt_new();
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v36 = v9;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (!v10)
    {
      goto LABEL_24;
    }

    v11 = v10;
    v12 = *v48;
    v13 = 0x278C3C000uLL;
    v42 = *v48;
    while (1)
    {
      v14 = 0;
      v44 = v11;
      do
      {
        if (*v48 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v47 + 1) + 8 * v14);
        startDate = [v15 startDate];
        endDate = [v15 endDate];
        if ([startDate compare:endDate] != 1)
        {
          v18 = [*(v13 + 864) flightInformationSchemaForEvent:v15];
          v19 = [*(v13 + 864) flightInformationSpotlightSuggestionForEvent:v15 schemaForFlight:v18 predictionReasons:0x100000000 score:startDate validStartDate:endDate validEndDate:70.0];
          if (v19)
          {
            [*(v13 + 864) logSuggestion:v19 description:@"ATXHeuristicOngoingFlightEventUtilities: FlightInfo suggestion"];
            [v43 addObject:v19];
          }

          v46 = v19;
          v20 = v13;
          v21 = [v18 objectForKeyedSubscript:@"reservationFor"];
          v22 = [v21 objectForKeyedSubscript:@"arrivalAirport"];
          v23 = [v22 objectForKeyedSubscript:@"address"];
          v24 = [v23 objectForKeyedSubscript:@"addressLocality"];

          if ([v24 length])
          {
            v25 = [*(v20 + 864) _dateIntervalWithEvent:v15];
            v26 = [ATXContextFlightEventSuggestionProducer alloc];
            title = [v15 title];
            v28 = [(ATXContextFlightEventSuggestionProducer *)v26 initWithTitle:title flightInformationSchema:v18 urlString:0 teamIdentifier:0 validFromStartDate:startDate validToEndDate:endDate alternateDestinationTitle:0 dateInterval:v25];

            v13 = v20;
            v29 = [(ATXContextFlightEventSuggestionProducer *)v28 suggestionForAirplaneModeWithPredictionReasons:0x100000000 score:80.0];
            if (v29)
            {
              [*(v20 + 864) logSuggestion:v29 description:@"ATXHeuristicOngoingFlightEventUtilities: Airplane Mode suggestion"];
              [v43 addObject:v29];
            }

LABEL_20:
            v30 = v24;
          }

          else
          {
            v25 = __atxlog_handle_context_heuristic();
            v13 = v20;
            if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_20;
            }

            *buf = 138412290;
            v30 = v24;
            v52 = v24;
            _os_log_impl(&dword_23E3EA000, v25, OS_LOG_TYPE_DEFAULT, "ATXHeuristicOngoingFlightEventUtilities: Airplane mode: Missing information: Arrival City %@. Skipping airplane mode suggestion", buf, 0xCu);
          }

          v11 = v44;
          v12 = v42;
          goto LABEL_22;
        }

        v18 = __atxlog_handle_context_heuristic();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412546;
          v52 = startDate;
          v53 = 2112;
          v54 = endDate;
          _os_log_fault_impl(&dword_23E3EA000, v18, OS_LOG_TYPE_FAULT, "ATXHeuristicOngoingFlightEventUtilities: start %@ is after end %@", buf, 0x16u);
        }

LABEL_22:

        ++v14;
      }

      while (v11 != v14);
      v11 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
      if (!v11)
      {
LABEL_24:

        v31 = [ATXContextHeuristicResult alloc];
        v32 = [MEMORY[0x277CBEB98] set];
        v33 = [(ATXContextHeuristicResult *)v31 initWithSuggestions:v43 additionalRefreshTriggers:v32];

        date = v40;
        deviceCopy = v41;
        v7 = v38;
        v5 = v39;
        v9 = v36;
        v8 = v37;
        goto LABEL_26;
      }
    }
  }

  v33 = objc_opt_new();
LABEL_26:

  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

@end