@interface ATXContextNavigationSuggestionProducer
- (ATXContextNavigationSuggestionProducer)initWithTitle:(id)a3 event:(id)a4 schemaForEvent:(id)a5 alternateDestinationTitle:(id)a6;
- (id)_contextTitleWithReasons:(unint64_t)a3;
- (id)_dateInterval;
- (id)_stringsWithPredictionReasons:(unint64_t)a3;
- (id)suggestionForNavigationToDestination:(id)a3 transportType:(unint64_t)a4 destinationName:(id)a5 subtitle:(id)a6 predictionReasons:(unint64_t)a7 score:(double)a8 shouldClearOnEngagement:(BOOL)a9 validStartDate:(id)a10 validEndDate:(id)a11;
@end

@implementation ATXContextNavigationSuggestionProducer

- (id)_contextTitleWithReasons:(unint64_t)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    title = self->_title;
    *buf = 136446466;
    v36 = "[ATXContextNavigationSuggestionProducer _contextTitleWithReasons:]";
    v37 = 2112;
    v38 = title;
    _os_log_impl(&dword_23E3EA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s _eventTitle:%@", buf, 0x16u);
  }

  schemaForEvent = self->_schemaForEvent;
  if (schemaForEvent)
  {
    v8 = [(NSDictionary *)schemaForEvent objectForKeyedSubscript:@"reservationFor"];
    v9 = [v8 objectForKeyedSubscript:@"arrivalAirport"];
    v10 = [v9 objectForKeyedSubscript:@"address"];
    v11 = [v10 objectForKeyedSubscript:@"addressLocality"];
  }

  else
  {
    event = self->_event;
    if (!event)
    {
      goto LABEL_12;
    }

    v8 = [(EKEvent *)event customObjectForKey:@"SGEventMetadataKey"];
    v9 = [v8 objectForKeyedSubscript:@"SGEventMetadataSchemaOrgKey"];
    v10 = [v9 firstObject];
    v13 = [v10 objectForKeyedSubscript:@"reservationFor"];
    v14 = [v13 objectForKeyedSubscript:@"arrivalAirport"];
    v15 = [v14 objectForKeyedSubscript:@"address"];
    v11 = [v15 objectForKeyedSubscript:@"addressLocality"];
  }

  if (v11)
  {
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    v16 = MEMORY[0x277CCACA8];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = v17;
    v19 = @"CONTEXT_UPCOMING_FLIGHT_TITLE";
    goto LABEL_26;
  }

LABEL_12:
  if ((a3 & 0x380000000) != 0 || (alternateDestinationTitle = self->_alternateDestinationTitle) == 0)
  {
    if ((a3 & 0x80000000) != 0)
    {
      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v18 = v25;
      v26 = @"CONTEXT_UPCOMING_FLIGHT_NO_ARRIVAL_CITY_TITLE";
    }

    else if ((a3 & 0x100000000) != 0)
    {
      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v18 = v25;
      v26 = @"CONTEXT_ONGOING_FLIGHT_NO_ARRIVAL_CITY_TITLE";
    }

    else
    {
      if ((a3 & 0x200000000) == 0)
      {
        v11 = 0;
        goto LABEL_20;
      }

      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v18 = v25;
      v26 = @"CONTEXT_CONCLUDED_FLIGHT_NO_ARRIVAL_CITY_TITLE";
    }

    v23 = [v25 localizedStringForKey:v26 value:&stru_2850AD368 table:0];
    v11 = 0;
    goto LABEL_37;
  }

  v11 = alternateDestinationTitle;
  if ((a3 & 0x80000000) != 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  if ((a3 & 0x100000000) != 0)
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = v17;
    v19 = @"CONTEXT_ONGOING_FLIGHT_TITLE";
    goto LABEL_26;
  }

  if ((a3 & 0x200000000) != 0)
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = v17;
    v19 = @"CONTEXT_CONCLUDED_FLIGHT_TITLE";
LABEL_26:
    v24 = [v17 localizedStringForKey:v19 value:&stru_2850AD368 table:0];
    v23 = [v16 localizedStringWithFormat:v24, v11];

LABEL_37:
    goto LABEL_38;
  }

LABEL_20:
  if ((a3 & 0x300000) != 0)
  {
    v21 = self->_event;
    if (v21)
    {
      v18 = [(EKEvent *)v21 title];
      v22 = v18;
      if (!v18)
      {
        v22 = self->_title;
      }

      v23 = v22;
      goto LABEL_37;
    }
  }

  if ((a3 & 0x1000000000) != 0)
  {
    v28 = MEMORY[0x277CCACA8];
    v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v30 = v29;
    v31 = @"CONTEXT_TITLE_UPCOMING_TO_WORK_COMMUTE";
LABEL_42:
    v34 = [v29 localizedStringForKey:v31 value:&stru_2850AD368 table:0];
    v23 = [v28 localizedStringWithFormat:v34];

    goto LABEL_38;
  }

  if ((a3 & 0x2000000000) != 0)
  {
    v28 = MEMORY[0x277CCACA8];
    v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v30 = v29;
    v31 = @"CONTEXT_TITLE_UPCOMING_FROM_WORK_COMMUTE";
    goto LABEL_42;
  }

  v27 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
  {
    [(ATXContextNavigationSuggestionProducer *)self _contextTitleWithReasons:a3, v27];
  }

  v23 = self->_title;
LABEL_38:

  v32 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)_stringsWithPredictionReasons:(unint64_t)a3
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__2;
  v9 = __Block_byref_object_dispose__2;
  v10 = objc_opt_new();
  ATXSuggestionPredictionReasonEnumerateReasonCodes();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __72__ATXContextNavigationSuggestionProducer__stringsWithPredictionReasons___block_invoke(uint64_t a1)
{
  v2 = stringForATXSuggestionPredictionReasonCode();
  [*(*(*(a1 + 32) + 8) + 40) addObject:v2];
}

- (ATXContextNavigationSuggestionProducer)initWithTitle:(id)a3 event:(id)a4 schemaForEvent:(id)a5 alternateDestinationTitle:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ATXContextNavigationSuggestionProducer;
  v15 = [(ATXContextNavigationSuggestionProducer *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_title, a3);
    objc_storeStrong(&v16->_event, a4);
    objc_storeStrong(&v16->_schemaForEvent, a5);
    objc_storeStrong(&v16->_alternateDestinationTitle, a6);
  }

  return v16;
}

- (id)suggestionForNavigationToDestination:(id)a3 transportType:(unint64_t)a4 destinationName:(id)a5 subtitle:(id)a6 predictionReasons:(unint64_t)a7 score:(double)a8 shouldClearOnEngagement:(BOOL)a9 validStartDate:(id)a10 validEndDate:(id)a11
{
  v17 = a11;
  v18 = a10;
  v19 = a6;
  v20 = a5;
  v21 = a3;
  v22 = [(ATXContextNavigationSuggestionProducer *)self _contextTitleWithReasons:a7];
  title = self->_title;
  v24 = [(ATXContextNavigationSuggestionProducer *)self _dateInterval];
  LOBYTE(v27) = a9;
  v25 = [ATXContextHeuristicSuggestionProducer navigationToDestination:v21 title:title subtitle:v19 transportType:a4 destinationName:v20 predictionReasons:a7 localizedReason:a8 score:v22 shouldClearOnEngagement:v27 validStartDate:v18 validEndDate:v17 dateInterval:v24];

  return v25;
}

- (id)_dateInterval
{
  v3 = [(EKEvent *)self->_event startDate];
  if (v3 && (v4 = v3, [(EKEvent *)self->_event endDate], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = objc_alloc(MEMORY[0x277CCA970]);
    v7 = [(EKEvent *)self->_event startDate];
    v8 = [(EKEvent *)self->_event endDate];
    v9 = [v6 initWithStartDate:v7 endDate:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_contextTitleWithReasons:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a1[1];
  v5 = [a1 _stringsWithPredictionReasons:a2];
  v7 = 136446722;
  v8 = "[ATXContextNavigationSuggestionProducer _contextTitleWithReasons:]";
  v9 = 2112;
  v10 = v4;
  v11 = 2112;
  v12 = v5;
  _os_log_fault_impl(&dword_23E3EA000, a3, OS_LOG_TYPE_FAULT, "%{public}s The predictionReasons for the suggestion for event %@ :%@ was not one of UpcomingFlight, OngoingFlight, ConcludedFlight, CommuteToWork and CommuteFromWork. Falling back on the title", &v7, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

@end