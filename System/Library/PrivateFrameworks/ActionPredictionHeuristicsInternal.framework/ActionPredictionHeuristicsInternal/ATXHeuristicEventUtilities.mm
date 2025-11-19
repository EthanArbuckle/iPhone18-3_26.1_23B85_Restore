@interface ATXHeuristicEventUtilities
+ (BOOL)allowSuggestionsForEvent:(id)a3;
+ (BOOL)isEventAtOneWithDate:(id)a3;
+ (BOOL)isEventAtOneWithTimestamp:(id)a3;
@end

@implementation ATXHeuristicEventUtilities

+ (BOOL)allowSuggestionsForEvent:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = [v3 title];
  v6 = [v5 hash];
  v7 = [v3 startDate];
  v8 = [v3 endDate];
  v9 = [v3 eventIdentifier];
  v10 = [v4 initWithFormat:@"title.hash: %lu, start: %@, end: %@, id: %@", v6, v7, v8, v9];

  v11 = [v3 calendar];
  if ([v11 isSubscribed])
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

  if ([v3 status] == 3)
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

  if ([v3 participationStatus] != 2 && objc_msgSend(v3, "participationStatus") != 4)
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

  v14 = [v3 endDate];
  v15 = [v3 startDate];
  [v14 timeIntervalSinceDate:v15];
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

  v12 = [v3 customObjectForKey:@"SGEventMetadataKey"];
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

+ (BOOL)isEventAtOneWithTimestamp:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = MEMORY[0x277CBEAA8];
  [a3 doubleValue];
  v5 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
  LOBYTE(a1) = [a1 isEventAtOneWithDate:v5];

  return a1;
}

+ (BOOL)isEventAtOneWithDate:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v5 components:32 fromDate:v4];

  v7 = [v6 hour];
  v8 = [MEMORY[0x277CBEAF8] atx_usesTwelveHourClock];
  v10 = v7 == 13 || v7 == 1;
  if (v8)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7 == 1;
  }

  return v11;
}

@end