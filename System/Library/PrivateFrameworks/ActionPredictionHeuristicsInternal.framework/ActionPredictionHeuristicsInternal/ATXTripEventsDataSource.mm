@interface ATXTripEventsDataSource
- (ATXTripEventsDataSource)initWithDevice:(id)device;
- (id)fetchTripEventsFromStartDate:(id)date endDate:(id)endDate error:(id *)error;
- (void)getLocationForMostRelevantTripInRangeFrom:(id)from to:(id)to callback:(id)callback;
@end

@implementation ATXTripEventsDataSource

- (ATXTripEventsDataSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = ATXTripEventsDataSource;
  v6 = [(ATXTripEventsDataSource *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v8 = objc_opt_new();
    eventStore = v7->_eventStore;
    v7->_eventStore = v8;
  }

  return v7;
}

- (id)fetchTripEventsFromStartDate:(id)date endDate:(id)endDate error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  if (ATXHeuristicCanLearnFromApp(&unk_2850BA290))
  {
    *buf = 0;
    v25 = buf;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__0;
    v28 = __Block_byref_object_dispose__0;
    v29 = objc_opt_new();
    v10 = objc_alloc_init(MEMORY[0x277D3A568]);
    [v10 setFromDate:dateCopy];
    [v10 setToDate:endDateCopy];
    [v10 setTripOptions:0];
    eventStore = self->_eventStore;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __70__ATXTripEventsDataSource_fetchTripEventsFromStartDate_endDate_error___block_invoke;
    v22[3] = &unk_278C3CC48;
    v22[4] = buf;
    v23 = 0;
    [(PPEventStore *)eventStore iterScoredEventsWithQuery:v10 error:&v23 block:v22];
    v12 = v23;
    if (v12)
    {
      v13 = __atxlog_handle_heuristic();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v30 = 138412802;
        v31 = v12;
        v32 = 2114;
        v33 = dateCopy;
        v34 = 2114;
        v35 = endDateCopy;
        _os_log_error_impl(&dword_23E3EA000, v13, OS_LOG_TYPE_ERROR, "Error when fetching trip events from PersonalPortrait: %@ from %{public}@ to %{public}@", v30, 0x20u);
      }

      if (error)
      {
        v14 = v12;
        v15 = 0;
        *error = v12;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v17 = __atxlog_handle_heuristic();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [*(v25 + 5) count];
        v19 = *(v25 + 5);
        *v30 = 134218754;
        v31 = v18;
        v32 = 2114;
        v33 = dateCopy;
        v34 = 2114;
        v35 = endDateCopy;
        v36 = 2112;
        v37 = v19;
        _os_log_impl(&dword_23E3EA000, v17, OS_LOG_TYPE_DEFAULT, "Got %tu trip events from PersonalPortrait from %{public}@ to %{public}@: %@", v30, 0x2Au);
      }

      v15 = *(v25 + 5);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v16 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v16, OS_LOG_TYPE_DEFAULT, "Calendar is not learnable for trip event fetching", buf, 2u);
    }

    v15 = MEMORY[0x277CBEBF8];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v15;
}

void __70__ATXTripEventsDataSource_fetchTripEventsFromStartDate_endDate_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }

  else
  {
    v4 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __70__ATXTripEventsDataSource_fetchTripEventsFromStartDate_endDate_error___block_invoke_cold_1(v3, v4);
    }
  }
}

- (void)getLocationForMostRelevantTripInRangeFrom:(id)from to:(id)to callback:(id)callback
{
  v73 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  toCopy = to;
  callbackCopy = callback;
  v63 = 0;
  v11 = [(ATXTripEventsDataSource *)self fetchTripEventsFromStartDate:fromCopy endDate:toCopy error:&v63];
  v12 = v63;
  if (v11 && [v11 count])
  {
    v50 = v12;
    v53 = fromCopy;
    v54 = callbackCopy;
    v52 = toCopy;
    v13 = objc_opt_new();
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v51 = v11;
    v14 = v11;
    v15 = [v14 countByEnumeratingWithState:&v59 objects:v72 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v60;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v60 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v59 + 1) + 8 * i);
          startDate = [v19 startDate];
          v21 = [MEMORY[0x277CBEAA8] now];
          v22 = [startDate compare:v21];

          if (v22 == 1)
          {
            [v13 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v59 objects:v72 count:16];
      }

      while (v16);
    }

    v23 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v13 count];
      *buf = 134217984;
      v71 = v24;
      _os_log_impl(&dword_23E3EA000, v23, OS_LOG_TYPE_DEFAULT, "Got %tu trip events after discarding old trips.", buf, 0xCu);
    }

    v25 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
    v69 = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
    v27 = [v13 sortedArrayUsingDescriptors:v26];

    if ([v27 count])
    {
      v49 = v27;
      v28 = [v27 objectAtIndexedSubscript:0];
      v29 = __atxlog_handle_heuristic();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v71 = v28;
        _os_log_impl(&dword_23E3EA000, v29, OS_LOG_TYPE_DEFAULT, "Considering first trip: %@", buf, 0xCu);
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      tripParts = [v28 tripParts];
      v31 = [tripParts countByEnumeratingWithState:&v55 objects:v68 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = 0;
        v34 = *v56;
        do
        {
          for (j = 0; j != v32; ++j)
          {
            if (*v56 != v34)
            {
              objc_enumerationMutation(tripParts);
            }

            v36 = *(*(&v55 + 1) + 8 * j);
            if ([v36 tripMode] == 2)
            {
              mainLocation = [v36 mainLocation];

              v33 = mainLocation;
            }
          }

          v32 = [tripParts countByEnumeratingWithState:&v55 objects:v68 count:16];
        }

        while (v32);

        v27 = v49;
        if (v33)
        {
          name = [v33 name];
          if (name)
          {

            toCopy = v52;
            fromCopy = v53;
            callbackCopy = v54;
          }

          else
          {
            locality = [v33 locality];

            toCopy = v52;
            fromCopy = v53;
            callbackCopy = v54;
            if (!locality)
            {
              v64 = @"location";
              v65 = v33;
              v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
              (*(v54 + 2))(v54, v48, 0);

              v12 = v50;
              v11 = v51;
LABEL_43:

              goto LABEL_44;
            }
          }

          v42 = v25;
          v66[0] = @"location";
          v66[1] = @"locality";
          v67[0] = v33;
          [v33 locality];
          v44 = v43 = callbackCopy;
          name2 = v44;
          if (!v44)
          {
            name2 = [v33 name];
          }

          v67[1] = name2;
          v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:2];
          v43[2](v43, v46, 0);

          if (!v44)
          {
          }

          callbackCopy = v54;
          v12 = v50;
          v11 = v51;
          v25 = v42;
          v27 = v49;
          goto LABEL_43;
        }
      }

      else
      {
      }
    }

    v40 = __atxlog_handle_heuristic();
    toCopy = v52;
    fromCopy = v53;
    v12 = v50;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v40, OS_LOG_TYPE_DEFAULT, "No selected placemark for trips", buf, 2u);
    }

    callbackCopy = v54;
    (*(v54 + 2))(v54, 0, 0);
    v33 = 0;
    v11 = v51;
    goto LABEL_43;
  }

  if (v12)
  {
    v39 = v12;
  }

  else
  {
    v39 = 0;
  }

  (*(callbackCopy + 2))(callbackCopy, 0, v39);
LABEL_44:

  v47 = *MEMORY[0x277D85DE8];
}

void __70__ATXTripEventsDataSource_fetchTripEventsFromStartDate_endDate_error___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = 138543362;
  v7 = v4;
  _os_log_fault_impl(&dword_23E3EA000, a2, OS_LOG_TYPE_FAULT, "Expect trip event for trip query but got %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end