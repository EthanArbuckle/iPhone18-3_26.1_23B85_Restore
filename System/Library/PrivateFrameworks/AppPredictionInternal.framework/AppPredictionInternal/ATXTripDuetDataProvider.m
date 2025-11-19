@interface ATXTripDuetDataProvider
- (id)fetchEventsBetweenStartDate:(id)a3 andEndDate:(id)a4 withPredicates:(id)a5 limit:(unint64_t)a6 ascending:(BOOL)a7;
- (id)groupTripsFromPublisher:(id)a3 startTimestamp:(double)a4 endTimestamp:(double)a5;
@end

@implementation ATXTripDuetDataProvider

- (id)fetchEventsBetweenStartDate:(id)a3 andEndDate:(id)a4 withPredicates:(id)a5 limit:(unint64_t)a6 ascending:(BOOL)a7
{
  v9 = a4;
  [a3 timeIntervalSinceReferenceDate];
  v11 = v10;
  [v9 timeIntervalSinceReferenceDate];
  v13 = v12;

  v14 = BiomeLibrary();
  v15 = [v14 Location];
  v16 = [v15 Semantic];
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
  v18 = [v16 atx_publisherFromStartTime:v17];

  v19 = [(ATXTripDuetDataProvider *)self groupTripsFromPublisher:v18 startTimestamp:v11 endTimestamp:v13];

  return v19;
}

- (id)groupTripsFromPublisher:(id)a3 startTimestamp:(double)a4 endTimestamp:(double)a5
{
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [MEMORY[0x277D42648] tupleWithFirst:0 second:0];
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__88;
  v29[4] = __Block_byref_object_dispose__88;
  v30 = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __79__ATXTripDuetDataProvider_groupTripsFromPublisher_startTimestamp_endTimestamp___block_invoke;
  v28[3] = &__block_descriptor_48_e22_B16__0__BMStoreEvent_8l;
  *&v28[4] = a4;
  *&v28[5] = a5;
  v10 = [v7 filterWithIsIncluded:v28];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __79__ATXTripDuetDataProvider_groupTripsFromPublisher_startTimestamp_endTimestamp___block_invoke_2;
  v27[3] = &unk_27859FEA0;
  v27[4] = v29;
  v11 = [v10 scanWithInitial:v9 nextPartialResult:v27];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __79__ATXTripDuetDataProvider_groupTripsFromPublisher_startTimestamp_endTimestamp___block_invoke_3;
  v26[3] = &unk_27859FEC8;
  v26[4] = v29;
  v12 = [v11 filterWithIsIncluded:v26];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __79__ATXTripDuetDataProvider_groupTripsFromPublisher_startTimestamp_endTimestamp___block_invoke_4;
  v25[3] = &unk_27859FEF0;
  v25[4] = v29;
  v13 = [v12 mapWithTransform:v25];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __79__ATXTripDuetDataProvider_groupTripsFromPublisher_startTimestamp_endTimestamp___block_invoke_5;
  v21[3] = &unk_27859FF18;
  v22 = v8;
  v23 = a4;
  v24 = a5;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __79__ATXTripDuetDataProvider_groupTripsFromPublisher_startTimestamp_endTimestamp___block_invoke_19;
  v19[3] = &unk_27859FF40;
  v14 = v22;
  v20 = v14;
  v15 = [v13 sinkWithCompletion:v21 receiveInput:v19];

  v16 = v20;
  v17 = v14;

  _Block_object_dispose(v29, 8);

  return v17;
}

BOOL __79__ATXTripDuetDataProvider_groupTripsFromPublisher_startTimestamp_endTimestamp___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 timestamp];
  if (v4 >= *(a1 + 32))
  {
    [v3 timestamp];
    v5 = v6 <= *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __79__ATXTripDuetDataProvider_groupTripsFromPublisher_startTimestamp_endTimestamp___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 eventBody];
  v8 = [v7 starting];

  if (!v8)
  {
    v10 = MEMORY[0x277D42648];
    v11 = v6;
    goto LABEL_5;
  }

  v9 = [v5 second];

  if (v9)
  {
    v10 = MEMORY[0x277D42648];
    v11 = 0;
LABEL_5:
    v12 = [v10 tupleWithFirst:v11 second:0];
    goto LABEL_6;
  }

  v14 = [v5 first];

  if (!v14)
  {
    v15 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v6 timestamp];
    v16 = [v15 initWithTimeIntervalSinceReferenceDate:?];
    v17 = *(*(a1 + 32) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  v19 = MEMORY[0x277D42648];
  v20 = [v5 first];
  v12 = [v19 tupleWithFirst:v20 second:v6];

LABEL_6:

  return v12;
}

uint64_t __79__ATXTripDuetDataProvider_groupTripsFromPublisher_startTimestamp_endTimestamp___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 first];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = [v3 second];

  if (!v6)
  {
    goto LABEL_6;
  }

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v8 = objc_alloc(MEMORY[0x277CBEAA8]);
    v9 = [v3 second];
    [v9 timestamp];
    v10 = [v8 initWithTimeIntervalSinceReferenceDate:?];
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v7 = 1;
LABEL_7:

  return v7;
}

ATXTripDuetEvent *__79__ATXTripDuetDataProvider_groupTripsFromPublisher_startTimestamp_endTimestamp___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 first];
  [v6 timestamp];
  v7 = [v5 initWithTimeIntervalSinceReferenceDate:?];

  v8 = objc_alloc(MEMORY[0x277CBEAA8]);
  v9 = [v4 second];
  [v9 timestamp];
  v10 = [v8 initWithTimeIntervalSinceReferenceDate:?];

  [v7 timeIntervalSinceDate:*(*(*(a1 + 32) + 8) + 40)];
  v12 = v11;
  v13 = objc_alloc(MEMORY[0x277CBEAA8]);
  v14 = [v4 second];
  [v14 timestamp];
  v15 = [v13 initWithTimeIntervalSinceReferenceDate:?];
  v16 = *(*(a1 + 32) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  v18 = [ATXTripDuetEvent alloc];
  v19 = [v4 first];
  v20 = [v19 eventBody];
  v21 = [v20 userSpecificPlaceType];
  v22 = [v4 second];

  v23 = [v22 eventBody];
  v24 = -[ATXTripDuetEvent initWithOrigin:destination:durationAtOrigin:startDate:endDate:](v18, "initWithOrigin:destination:durationAtOrigin:startDate:endDate:", v21, [v23 userSpecificPlaceType], v7, v10, v12);

  return v24;
}

void __79__ATXTripDuetDataProvider_groupTripsFromPublisher_startTimestamp_endTimestamp___block_invoke_5(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 state];
  v5 = __atxlog_handle_anchor();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __79__ATXTripDuetDataProvider_groupTripsFromPublisher_startTimestamp_endTimestamp___block_invoke_5_cold_1(a1, v3, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = 138412802;
    v12 = v7;
    v13 = 2048;
    v14 = v8;
    v15 = 2048;
    v16 = v9;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "Successfully fetched %@ Biome events for semantic location between %f and %f", &v11, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __79__ATXTripDuetDataProvider_groupTripsFromPublisher_startTimestamp_endTimestamp___block_invoke_19(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v7 = v3;
    v5 = [v3 origin];
    v3 = [v7 destination];
    v4 = v7;
    if (v5 != v3)
    {
      v3 = [*(a1 + 32) addObject:v7];
      v4 = v7;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

void __79__ATXTripDuetDataProvider_groupTripsFromPublisher_startTimestamp_endTimestamp___block_invoke_5_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = [a2 error];
  v8 = 134218498;
  v9 = v4;
  v10 = 2048;
  v11 = v5;
  v12 = 2112;
  v13 = v6;
  _os_log_error_impl(&dword_2263AA000, a3, OS_LOG_TYPE_ERROR, "Error encountered while fetching events from Biome for semantic location between %f and %f: %@", &v8, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

@end