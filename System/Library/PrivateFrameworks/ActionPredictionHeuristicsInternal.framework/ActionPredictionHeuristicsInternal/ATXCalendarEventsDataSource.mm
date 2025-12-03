@interface ATXCalendarEventsDataSource
- (ATXCalendarEventsDataSource)initWithDevice:(id)device;
- (id)eventsFromStartDate:(id)date endDate:(id)endDate category:(id)category reason:(id)reason;
- (id)eventsFromStartDate:(id)date endDate:(id)endDate reason:(id)reason;
- (void)calendarEventsFromStartDate:(id)date toEndDate:(id)endDate callback:(id)callback;
- (void)visibleCalendarsWithCallback:(id)callback;
@end

@implementation ATXCalendarEventsDataSource

- (ATXCalendarEventsDataSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = ATXCalendarEventsDataSource;
  v6 = [(ATXCalendarEventsDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- (void)calendarEventsFromStartDate:(id)date toEndDate:(id)endDate callback:(id)callback
{
  v39 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  callbackCopy = callback;
  if (ATXHeuristicCanLearnFromApp(&unk_2850BA428))
  {
    eventStore = [(ATXHeuristicDevice *)self->_device eventStore];
    visibleCalendarsInCurrentFocus = [(ATXHeuristicDevice *)self->_device visibleCalendarsInCurrentFocus];
    v25 = [visibleCalendarsInCurrentFocus _pas_filteredArrayWithTest:&__block_literal_global_16];
    v24 = [eventStore predicateForEventsWithStartDate:dateCopy endDate:endDateCopy calendars:?];
    v13 = [eventStore eventsMatchingPredicate:?];
    [endDateCopy timeIntervalSinceDate:dateCopy];
    v15 = vcvtpd_u64_f64(v14 / 86400.0 * 50.0);
    v16 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218752;
      v32 = v15;
      v33 = 2048;
      v34 = [v13 count];
      v35 = 2048;
      v36 = eventStore;
      v37 = 2048;
      v38 = [visibleCalendarsInCurrentFocus count];
      _os_log_impl(&dword_23E3EA000, v16, OS_LOG_TYPE_DEFAULT, "Fetching calendar events with limit count of: %ld; actual count: %ld; event store: %p; visible calendars: %ld", buf, 0x2Au);
    }

    v17 = objc_opt_new();
    v18 = objc_autoreleasePoolPush();
    v26 = visibleCalendarsInCurrentFocus;
    if (_ContactCache_onceToken != -1)
    {
      [ATXCalendarEventsDataSource calendarEventsFromStartDate:toEndDate:callback:];
    }

    v19 = _ContactCache_contactCache;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __78__ATXCalendarEventsDataSource_calendarEventsFromStartDate_toEndDate_callback___block_invoke_24;
    v27[3] = &unk_278C3D708;
    v30 = v15;
    v27[4] = self;
    v28 = v19;
    v20 = v17;
    v29 = v20;
    v21 = v19;
    [v13 enumerateObjectsUsingBlock:v27];

    objc_autoreleasePoolPop(v18);
    callbackCopy[2](callbackCopy, v20, 0);
  }

  else
  {
    v22 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v32 = @"com.apple.mobilecal";
      _os_log_impl(&dword_23E3EA000, v22, OS_LOG_TYPE_DEFAULT, "Events data source is not learnable for %{public}@", buf, 0xCu);
    }

    callbackCopy[2](callbackCopy, MEMORY[0x277CBEBF8], 0);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __78__ATXCalendarEventsDataSource_calendarEventsFromStartDate_toEndDate_callback___block_invoke_24(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = objc_autoreleasePoolPush();
  if (a4 && *(a1 + 56) <= a3)
  {
    v9 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134217984;
      v17 = a3;
      _os_log_impl(&dword_23E3EA000, v9, OS_LOG_TYPE_DEFAULT, "Stopped iterating events early after index: %ld", &v16, 0xCu);
    }

    *a4 = 1;
  }

  else
  {
    v10 = [*(*(a1 + 32) + 8) dictForEvent:v7 contactCache:*(a1 + 40)];
    v11 = __atxlog_handle_heuristic();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v13 = [v7 eventIdentifier];
        v16 = 138412547;
        v17 = v13;
        v18 = 2117;
        v19 = v7;
        _os_log_impl(&dword_23E3EA000, v11, OS_LOG_TYPE_DEFAULT, "Considering event: %@ %{sensitive}@", &v16, 0x16u);
      }

      [*(a1 + 48) addObject:v10];
    }

    else
    {
      if (v12)
      {
        v14 = [v7 eventIdentifier];
        v16 = 138412547;
        v17 = v14;
        v18 = 2117;
        v19 = v7;
        _os_log_impl(&dword_23E3EA000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring event: %@ %{sensitive}@", &v16, 0x16u);
      }
    }
  }

  objc_autoreleasePoolPop(v8);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)visibleCalendarsWithCallback:(id)callback
{
  callbackCopy = callback;
  if (ATXHeuristicCanLearnFromApp(&unk_2850BA440))
  {
    visibleCalendarsInCurrentFocus = [(ATXHeuristicDevice *)self->_device visibleCalendarsInCurrentFocus];
    v5 = [visibleCalendarsInCurrentFocus _pas_mappedArrayWithTransform:&__block_literal_global_31];
    callbackCopy[2](callbackCopy, v5, 0);
  }

  else
  {
    callbackCopy[2](callbackCopy, MEMORY[0x277CBEBF8], 0);
  }
}

id __60__ATXCalendarEventsDataSource_visibleCalendarsWithCallback___block_invoke(uint64_t a1, void *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (![v2 atx_isAllowedCalendar])
  {
    v6 = 0;
    goto LABEL_12;
  }

  v3 = [v2 title];
  v4 = [v2 calendarIdentifier];
  v5 = v4;
  if (!v3)
  {
    v7 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __60__ATXCalendarEventsDataSource_visibleCalendarsWithCallback___block_invoke_cold_2(v7);
    }

    goto LABEL_10;
  }

  if (!v4)
  {
    v7 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __60__ATXCalendarEventsDataSource_visibleCalendarsWithCallback___block_invoke_cold_1(v7);
    }

LABEL_10:

    v6 = 0;
    goto LABEL_11;
  }

  v10[0] = @"title";
  v10[1] = @"identifier";
  v11[0] = v3;
  v11[1] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
LABEL_11:

LABEL_12:
  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)eventsFromStartDate:(id)date endDate:(id)endDate reason:(id)reason
{
  v27 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  reasonCopy = reason;
  if (ATXHeuristicCanLearnFromApp(&unk_2850BA458))
  {
    eventStore = [(ATXHeuristicDevice *)self->_device eventStore];
    visibleCalendarsRegardlessOfFocus = [(ATXHeuristicDevice *)self->_device visibleCalendarsRegardlessOfFocus];
    v13 = [visibleCalendarsRegardlessOfFocus _pas_filteredArrayWithTest:&__block_literal_global_43_0];
    v14 = [eventStore predicateForEventsWithStartDate:dateCopy endDate:endDateCopy calendars:v13];
    v15 = [eventStore eventsMatchingPredicate:v14];
    v16 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138413058;
      v20 = dateCopy;
      v21 = 2112;
      v22 = endDateCopy;
      v23 = 2048;
      v24 = [v15 count];
      v25 = 2114;
      v26 = reasonCopy;
      _os_log_impl(&dword_23E3EA000, v16, OS_LOG_TYPE_DEFAULT, "Fetching calendar events start: %@, end: %@ count: %ld reason: %{public}@", &v19, 0x2Au);
    }
  }

  else
  {
    eventStore = __atxlog_handle_heuristic();
    if (os_log_type_enabled(eventStore, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = @"com.apple.mobilecal";
      _os_log_impl(&dword_23E3EA000, eventStore, OS_LOG_TYPE_DEFAULT, "Events data source is not learnable for %{public}@", &v19, 0xCu);
    }

    v15 = MEMORY[0x277CBEBF8];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __44__ATXCalendarEventsDataSource_sortEkEvents___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)eventsFromStartDate:(id)date endDate:(id)endDate category:(id)category reason:(id)reason
{
  dateCopy = date;
  categoryCopy = category;
  v12 = [(ATXCalendarEventsDataSource *)self eventsFromStartDate:dateCopy endDate:endDate reason:reason];
  v13 = MEMORY[0x277CCAC30];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __75__ATXCalendarEventsDataSource_eventsFromStartDate_endDate_category_reason___block_invoke;
  v22 = &unk_278C3D340;
  v23 = categoryCopy;
  v24 = dateCopy;
  v14 = dateCopy;
  v15 = categoryCopy;
  v16 = [v13 predicateWithBlock:&v19];
  v17 = [v12 filteredArrayUsingPredicate:{v16, v19, v20, v21, v22}];

  return v17;
}

BOOL __75__ATXCalendarEventsDataSource_eventsFromStartDate_endDate_category_reason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 customObjectForKey:@"SGEventMetadataKey"];
  v5 = v4;
  if (v4 && ([v4 objectForKeyedSubscript:@"SGEventMetadataCategoryDescriptionKey"], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", *(a1 + 32)), v6, v7))
  {
    if ([*(a1 + 32) isEqualToString:@"Lodging"])
    {
      v8 = 1;
    }

    else
    {
      v10 = *(a1 + 40);
      v11 = [v3 startDate];
      v8 = [v10 compare:v11] == -1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end