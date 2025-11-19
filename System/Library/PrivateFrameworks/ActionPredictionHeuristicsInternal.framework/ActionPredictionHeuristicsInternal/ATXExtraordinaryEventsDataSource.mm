@interface ATXExtraordinaryEventsDataSource
+ (id)_endOfDayAfterDate:(id)a3 numberOfDays:(int64_t)a4;
- (ATXExtraordinaryEventsDataSource)initWithDevice:(id)a3;
- (id)_ekEventForHighlight:(id)a3 eventStore:(id)a4;
- (id)_fetchExtraordinaryEvents;
- (void)_fetchExtraordinaryEvents;
- (void)getEventsWithProminentFeature:(id)a3 callback:(id)a4;
@end

@implementation ATXExtraordinaryEventsDataSource

- (ATXExtraordinaryEventsDataSource)initWithDevice:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ATXExtraordinaryEventsDataSource;
  v6 = [(ATXExtraordinaryEventsDataSource *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = objc_opt_new();
    extraordinaryEventStore = v7->_extraordinaryEventStore;
    v7->_extraordinaryEventStore = v8;
  }

  return v7;
}

- (id)_ekEventForHighlight:(id)a3 eventStore:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 eventIdentifier];
  v8 = [v6 eventWithIdentifier:v7];

  if (!v8)
  {
    v9 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ATXExtraordinaryEventsDataSource _ekEventForHighlight:v5 eventStore:v9];
    }
  }

  return v8;
}

- (id)_fetchExtraordinaryEvents
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [objc_opt_class() _endOfDayAfterDate:v4 numberOfDays:2];
  extraordinaryEventStore = self->_extraordinaryEventStore;
  v21 = 0;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __61__ATXExtraordinaryEventsDataSource__fetchExtraordinaryEvents__block_invoke;
  v19 = &unk_278C3CEB0;
  v7 = v3;
  v20 = v7;
  [(PPEventStore *)extraordinaryEventStore iterEventHighlightsFrom:v4 to:v5 options:0 error:&v21 block:&v16];
  v8 = v21;
  v9 = __atxlog_handle_heuristic();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ATXExtraordinaryEventsDataSource *)v8 _fetchExtraordinaryEvents];
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = [v7 count];
    *buf = 134217984;
    v23 = v11;
    _os_log_impl(&dword_23E3EA000, v10, OS_LOG_TYPE_INFO, "Got %tu event highlights from PersonalPortrait.", buf, 0xCu);
  }

  v12 = v20;
  v13 = v7;

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)getEventsWithProminentFeature:(id)a3 callback:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (ATXHeuristicCanLearnFromApp(&unk_2850BA2C0))
  {
    v30 = v7;
    v32 = objc_opt_new();
    v8 = [(ATXExtraordinaryEventsDataSource *)self _fetchExtraordinaryEvents];
    v35 = [(ATXHeuristicDevice *)self->_device eventStore];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v37;
      v31 = v6;
      do
      {
        v12 = 0;
        v33 = v10;
        do
        {
          if (*v37 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v36 + 1) + 8 * v12);
          v14 = objc_autoreleasePoolPush();
          if (!v6 || (v15 = [v13 prominentFeature], v15 == objc_msgSend(v6, "unsignedIntegerValue")))
          {
            v16 = [(ATXExtraordinaryEventsDataSource *)self _ekEventForHighlight:v13 eventStore:v35, v30];
            if (v16)
            {
              v17 = self;
              v18 = [(ATXHeuristicDevice *)self->_device dictForEvent:v16];
              v19 = [v18 mutableCopy];

              if (v19)
              {
                v20 = [v19 objectForKeyedSubscript:@"contacts"];

                if (v20)
                {
                  v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "isExtraordinary")}];
                  [v19 setObject:v21 forKeyedSubscript:@"isExtraordinary"];

                  [v13 score];
                  if (v22 != 0.0)
                  {
                    v23 = MEMORY[0x277CCABB0];
                    [v13 score];
                    v24 = [v23 numberWithDouble:?];
                    [v19 setObject:v24 forKeyedSubscript:@"extraordinaryScore"];

                    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "prominentFeature")}];
                    [v19 setObject:v25 forKeyedSubscript:@"extraordinaryProminentFeature"];
                  }

                  [v32 addObject:v19];
                  v6 = v31;
                }
              }

              self = v17;
              v10 = v33;
            }
          }

          objc_autoreleasePoolPop(v14);
          ++v12;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v10);
    }

    v26 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDateTimestamp" ascending:1];
    v40[0] = v26;
    v27 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"extraordinaryScore" ascending:1];
    v40[1] = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
    [v32 sortUsingDescriptors:v28];

    v7 = v30;
    (*(v30 + 2))(v30, v32, 0);
  }

  else
  {
    (*(v7 + 2))(v7, MEMORY[0x277CBEBF8], 0);
  }

  v29 = *MEMORY[0x277D85DE8];
}

+ (id)_endOfDayAfterDate:(id)a3 numberOfDays:(int64_t)a4
{
  if (a3)
  {
    v5 = MEMORY[0x277CBEA80];
    v6 = a3;
    v7 = [v5 currentCalendar];
    v8 = [v7 components:28 fromDate:v6];

    [v8 setHour:23];
    [v8 setMinute:59];
    [v8 setSecond:59];
    [v8 setNanosecond:999999999];
    v9 = [v7 dateFromComponents:v8];
    v10 = objc_opt_new();
    [v10 setDay:a4];
    v11 = [v7 dateByAddingComponents:v10 toDate:v9 options:0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_ekEventForHighlight:(void *)a1 eventStore:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 eventIdentifier];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_23E3EA000, a2, OS_LOG_TYPE_ERROR, "Failed to get event with identifier %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_fetchExtraordinaryEvents
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23E3EA000, a2, OS_LOG_TYPE_ERROR, "Error when fetching event highlights from PersonalPortrait: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end