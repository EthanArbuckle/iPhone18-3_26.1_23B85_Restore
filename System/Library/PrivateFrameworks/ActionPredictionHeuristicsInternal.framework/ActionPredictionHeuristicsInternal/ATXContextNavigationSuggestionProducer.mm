@interface ATXContextNavigationSuggestionProducer
- (ATXContextNavigationSuggestionProducer)initWithTitle:(id)title event:(id)event schemaForEvent:(id)forEvent alternateDestinationTitle:(id)destinationTitle;
- (id)_contextTitleWithReasons:(unint64_t)reasons;
- (id)_dateInterval;
- (id)_stringsWithPredictionReasons:(unint64_t)reasons;
- (id)suggestionForNavigationToDestination:(id)destination transportType:(unint64_t)type destinationName:(id)name subtitle:(id)subtitle predictionReasons:(unint64_t)reasons score:(double)score shouldClearOnEngagement:(BOOL)engagement validStartDate:(id)self0 validEndDate:(id)self1;
@end

@implementation ATXContextNavigationSuggestionProducer

- (id)_contextTitleWithReasons:(unint64_t)reasons
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
    firstObject = [v9 objectForKeyedSubscript:@"address"];
    v11 = [firstObject objectForKeyedSubscript:@"addressLocality"];
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
    firstObject = [v9 firstObject];
    v13 = [firstObject objectForKeyedSubscript:@"reservationFor"];
    v14 = [v13 objectForKeyedSubscript:@"arrivalAirport"];
    v15 = [v14 objectForKeyedSubscript:@"address"];
    v11 = [v15 objectForKeyedSubscript:@"addressLocality"];
  }

  if (v11)
  {
    if ((reasons & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    v16 = MEMORY[0x277CCACA8];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    title = v17;
    v19 = @"CONTEXT_UPCOMING_FLIGHT_TITLE";
    goto LABEL_26;
  }

LABEL_12:
  if ((reasons & 0x380000000) != 0 || (alternateDestinationTitle = self->_alternateDestinationTitle) == 0)
  {
    if ((reasons & 0x80000000) != 0)
    {
      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      title = v25;
      v26 = @"CONTEXT_UPCOMING_FLIGHT_NO_ARRIVAL_CITY_TITLE";
    }

    else if ((reasons & 0x100000000) != 0)
    {
      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      title = v25;
      v26 = @"CONTEXT_ONGOING_FLIGHT_NO_ARRIVAL_CITY_TITLE";
    }

    else
    {
      if ((reasons & 0x200000000) == 0)
      {
        v11 = 0;
        goto LABEL_20;
      }

      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      title = v25;
      v26 = @"CONTEXT_CONCLUDED_FLIGHT_NO_ARRIVAL_CITY_TITLE";
    }

    v23 = [v25 localizedStringForKey:v26 value:&stru_2850AD368 table:0];
    v11 = 0;
    goto LABEL_37;
  }

  v11 = alternateDestinationTitle;
  if ((reasons & 0x80000000) != 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  if ((reasons & 0x100000000) != 0)
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    title = v17;
    v19 = @"CONTEXT_ONGOING_FLIGHT_TITLE";
    goto LABEL_26;
  }

  if ((reasons & 0x200000000) != 0)
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    title = v17;
    v19 = @"CONTEXT_CONCLUDED_FLIGHT_TITLE";
LABEL_26:
    v24 = [v17 localizedStringForKey:v19 value:&stru_2850AD368 table:0];
    v23 = [v16 localizedStringWithFormat:v24, v11];

LABEL_37:
    goto LABEL_38;
  }

LABEL_20:
  if ((reasons & 0x300000) != 0)
  {
    v21 = self->_event;
    if (v21)
    {
      title = [(EKEvent *)v21 title];
      v22 = title;
      if (!title)
      {
        v22 = self->_title;
      }

      v23 = v22;
      goto LABEL_37;
    }
  }

  if ((reasons & 0x1000000000) != 0)
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

  if ((reasons & 0x2000000000) != 0)
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
    [(ATXContextNavigationSuggestionProducer *)self _contextTitleWithReasons:reasons, v27];
  }

  v23 = self->_title;
LABEL_38:

  v32 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)_stringsWithPredictionReasons:(unint64_t)reasons
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

- (ATXContextNavigationSuggestionProducer)initWithTitle:(id)title event:(id)event schemaForEvent:(id)forEvent alternateDestinationTitle:(id)destinationTitle
{
  titleCopy = title;
  eventCopy = event;
  forEventCopy = forEvent;
  destinationTitleCopy = destinationTitle;
  v18.receiver = self;
  v18.super_class = ATXContextNavigationSuggestionProducer;
  v15 = [(ATXContextNavigationSuggestionProducer *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_title, title);
    objc_storeStrong(&v16->_event, event);
    objc_storeStrong(&v16->_schemaForEvent, forEvent);
    objc_storeStrong(&v16->_alternateDestinationTitle, destinationTitle);
  }

  return v16;
}

- (id)suggestionForNavigationToDestination:(id)destination transportType:(unint64_t)type destinationName:(id)name subtitle:(id)subtitle predictionReasons:(unint64_t)reasons score:(double)score shouldClearOnEngagement:(BOOL)engagement validStartDate:(id)self0 validEndDate:(id)self1
{
  endDateCopy = endDate;
  dateCopy = date;
  subtitleCopy = subtitle;
  nameCopy = name;
  destinationCopy = destination;
  v22 = [(ATXContextNavigationSuggestionProducer *)self _contextTitleWithReasons:reasons];
  title = self->_title;
  _dateInterval = [(ATXContextNavigationSuggestionProducer *)self _dateInterval];
  LOBYTE(v27) = engagement;
  v25 = [ATXContextHeuristicSuggestionProducer navigationToDestination:destinationCopy title:title subtitle:subtitleCopy transportType:type destinationName:nameCopy predictionReasons:reasons localizedReason:score score:v22 shouldClearOnEngagement:v27 validStartDate:dateCopy validEndDate:endDateCopy dateInterval:_dateInterval];

  return v25;
}

- (id)_dateInterval
{
  startDate = [(EKEvent *)self->_event startDate];
  if (startDate && (v4 = startDate, [(EKEvent *)self->_event endDate], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = objc_alloc(MEMORY[0x277CCA970]);
    startDate2 = [(EKEvent *)self->_event startDate];
    endDate = [(EKEvent *)self->_event endDate];
    v9 = [v6 initWithStartDate:startDate2 endDate:endDate];
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