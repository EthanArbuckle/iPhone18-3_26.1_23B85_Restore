@interface ARPHomeControlMicrolocationCorrelationTask
- (ARPHomeControlMicrolocationCorrelationTask)initWithCorrelationsFile:(id)a3 knowledgeStore:(id)a4;
- (id)queryForMicroLocationsOverlappingEvents:(id)a3 maxEvents:(unint64_t)a4;
- (void)execute;
@end

@implementation ARPHomeControlMicrolocationCorrelationTask

- (ARPHomeControlMicrolocationCorrelationTask)initWithCorrelationsFile:(id)a3 knowledgeStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ARPHomeControlMicrolocationCorrelationTask;
  v8 = [(ARPHomeControlMicrolocationCorrelationTask *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    file = v8->_file;
    v8->_file = v9;

    objc_storeStrong(&v8->_knowledgeStore, a4);
    v11 = [[ARPHomeControlCorrelationUtilities alloc] initWithKnowledgeStore:v7];
    utilities = v8->_utilities;
    v8->_utilities = v11;
  }

  return v8;
}

- (id)queryForMicroLocationsOverlappingEvents:(id)a3 maxEvents:(unint64_t)a4
{
  v5 = a3;
  if ([v5 count])
  {
    v6 = [v5 firstObject];
    v7 = [v6 startDate];
    v8 = [v7 dateByAddingTimeInterval:2.0];

    v9 = [v5 lastObject];
    v10 = [v9 startDate];
    v11 = [v10 dateByAddingTimeInterval:-2.0];

    if ([v8 compare:v11] == 1)
    {
      v12 = objc_alloc(getBMDKEventStreamClass());
      v13 = [MEMORY[0x277CFE298] microLocationVisitStream];
      v14 = [v13 name];
      v15 = [v12 initWithDKStreamIdentifier:v14 contentProtection:*MEMORY[0x277CCA1A0]];

      v16 = MEMORY[0x277CCABB0];
      [v8 timeIntervalSinceReferenceDate];
      v17 = [v16 numberWithDouble:?];
      v18 = MEMORY[0x277CCABB0];
      [v11 timeIntervalSinceReferenceDate];
      v19 = [v18 numberWithDouble:?];
      v20 = [v15 publisherWithStartTime:v17 endTime:v19 maxEvents:0 lastN:0 reversed:1];

      v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v37[0] = 0;
      v37[1] = v37;
      v37[2] = 0x2020000000;
      v37[3] = 0;
      v35[0] = 0;
      v35[1] = v35;
      v35[2] = 0x3032000000;
      v35[3] = __Block_byref_object_copy__1;
      v35[4] = __Block_byref_object_dispose__1;
      v36 = [v5 objectAtIndexedSubscript:0];
      v34[0] = 0;
      v34[1] = v34;
      v34[2] = 0x2020000000;
      v34[3] = 0;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __96__ARPHomeControlMicrolocationCorrelationTask_queryForMicroLocationsOverlappingEvents_maxEvents___block_invoke_2;
      v27[3] = &unk_278C64718;
      v30 = v35;
      v31 = v37;
      v28 = v5;
      v22 = v21;
      v29 = v22;
      v32 = v34;
      v33 = a4;
      v23 = [v20 sinkWithCompletion:&__block_literal_global_4 shouldContinue:v27];
      v24 = v29;
      v25 = v22;

      _Block_object_dispose(v34, 8);
      _Block_object_dispose(v35, 8);

      _Block_object_dispose(v37, 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        [ARPHomeControlMicrolocationCorrelationTask queryForMicroLocationsOverlappingEvents:maxEvents:];
      }

      v25 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v25 = MEMORY[0x277CBEBF8];
  }

  return v25;
}

BOOL __96__ARPHomeControlMicrolocationCorrelationTask_queryForMicroLocationsOverlappingEvents_maxEvents___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 dkEvent];
  while (1)
  {
    v6 = [*(*(*(a1 + 48) + 8) + 40) startDate];
    v7 = [v5 endDate];
    [v6 timeIntervalSinceDate:v7];
    v9 = v8;

    if (v9 <= 2.0)
    {
      break;
    }

    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 24) + 1;
    *(v10 + 24) = v11;
    if (v11 == [*(a1 + 32) count])
    {
      v19 = 0;
      goto LABEL_9;
    }

    v12 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 56) + 8) + 24)];
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  v15 = [v5 startDate];
  v16 = [*(*(*(a1 + 48) + 8) + 40) startDate];
  [v15 timeIntervalSinceDate:v16];
  v18 = v17;

  if (v18 <= 2.0)
  {
    [*(a1 + 40) addObject:v5];
    v20 = *(*(a1 + 64) + 8);
    v21 = *(v20 + 24) + 1;
    *(v20 + 24) = v21;
    v19 = v21 < *(a1 + 72);
  }

  else
  {
    v19 = 1;
  }

LABEL_9:

  return v19;
}

- (void)execute
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23EB15000, a2, OS_LOG_TYPE_ERROR, "Error reading persisted microlocation home controls archive file: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t __53__ARPHomeControlMicrolocationCorrelationTask_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __53__ARPHomeControlMicrolocationCorrelationTask_execute__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __53__ARPHomeControlMicrolocationCorrelationTask_execute__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

void __84__ARPHomeControlMicrolocationCorrelationTask_registerARPHomeControlNotificationTask__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = a2;
  state = xpc_activity_get_state(v2);
  if (state)
  {
    if (state == 2)
    {
      notify_post([@"com.apple.AirPlayRoutePrediction.ARPHomeControlSuggester.ReQuery" UTF8String]);
      v4 = ARPLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23EB15000, v4, OS_LOG_TYPE_DEFAULT, "ARPHomeControl Suggester Notification After MicroLocations Correlation Notification", buf, 2u);
      }
    }
  }

  else
  {
    v5 = *MEMORY[0x277D86360];
    *buf = *MEMORY[0x277D86250];
    v16 = v5;
    v6 = *MEMORY[0x277D86230];
    v17 = *MEMORY[0x277D86340];
    v18 = v6;
    v14[0] = xpc_int64_create(2 * *MEMORY[0x277D862C0]);
    v7 = MEMORY[0x277D863E0];
    v8 = MEMORY[0x277D863E0];
    v14[1] = v7;
    v14[2] = xpc_string_create(*MEMORY[0x277D86350]);
    v9 = MEMORY[0x277D863E8];
    v10 = MEMORY[0x277D863E8];
    v14[3] = v9;
    v11 = xpc_dictionary_create(buf, v14, 4uLL);
    xpc_activity_set_criteria(v2, v11);

    for (i = 3; i != -1; --i)
    {
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end