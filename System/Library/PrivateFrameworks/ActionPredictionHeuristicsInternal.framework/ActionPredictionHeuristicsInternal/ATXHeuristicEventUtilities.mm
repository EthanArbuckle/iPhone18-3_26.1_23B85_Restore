@interface ATXHeuristicEventUtilities
+ (BOOL)allowSuggestionsForEvent:(id)event;
+ (BOOL)isEventAtOneWithDate:(id)date;
+ (BOOL)isEventAtOneWithTimestamp:(id)timestamp;
@end

@implementation ATXHeuristicEventUtilities

+ (BOOL)allowSuggestionsForEvent:(id)event
{
  v26 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  title = [eventCopy title];
  v6 = [title hash];
  startDate = [eventCopy startDate];
  endDate = [eventCopy endDate];
  eventIdentifier = [eventCopy eventIdentifier];
  v10 = [v4 initWithFormat:@"title.hash: %lu, start: %@, end: %@, id: %@", v6, startDate, endDate, eventIdentifier];

  calendar = [eventCopy calendar];
  if ([calendar isSubscribed])
  {
    v12 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v10;
      v13 = "Skipping Event: from a calendar subscription [%@]";
LABEL_22:
      _os_log_impl(&dword_23E3EA000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  if ([eventCopy status] == 3)
  {
    v12 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v10;
      v13 = "Skipping Event: is cancelled [%@]";
      goto LABEL_22;
    }

LABEL_23:
    v20 = 0;
    goto LABEL_24;
  }

  if ([eventCopy participationStatus] != 2 && objc_msgSend(eventCopy, "participationStatus") != 4)
  {
    v12 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v10;
      v13 = "Skipping Event: is not accepted [%@]";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  endDate2 = [eventCopy endDate];
  startDate2 = [eventCopy startDate];
  [endDate2 timeIntervalSinceDate:startDate2];
  v17 = v16;

  if (v17 > 54000.0)
  {
    v12 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v10;
      v13 = "Skipping Event: is more than 15 hour long [%@]";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v12 = [eventCopy customObjectForKey:@"SGEventMetadataKey"];
  v18 = [v12 objectForKeyedSubscript:@"SGEventMetadataCategoryDescriptionKey"];
  v19 = v18;
  v20 = 1;
  if (v12 && v18 && (([v18 isEqualToString:@"Lodging"] & 1) != 0 || objc_msgSend(v19, "isEqualToString:", @"Flight")))
  {
    v21 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v10;
      _os_log_impl(&dword_23E3EA000, v21, OS_LOG_TYPE_DEFAULT, "Skipping Event: is hotel or flight [%@]", buf, 0xCu);
    }

    v20 = 0;
  }

LABEL_24:
  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

+ (BOOL)isEventAtOneWithTimestamp:(id)timestamp
{
  if (!timestamp)
  {
    return 0;
  }

  v4 = MEMORY[0x277CBEAA8];
  [timestamp doubleValue];
  v5 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
  LOBYTE(self) = [self isEventAtOneWithDate:v5];

  return self;
}

+ (BOOL)isEventAtOneWithDate:(id)date
{
  if (!date)
  {
    return 0;
  }

  v3 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar components:32 fromDate:dateCopy];

  hour = [v6 hour];
  atx_usesTwelveHourClock = [MEMORY[0x277CBEAF8] atx_usesTwelveHourClock];
  v10 = hour == 13 || hour == 1;
  if (atx_usesTwelveHourClock)
  {
    v11 = v10;
  }

  else
  {
    v11 = hour == 1;
  }

  return v11;
}

@end