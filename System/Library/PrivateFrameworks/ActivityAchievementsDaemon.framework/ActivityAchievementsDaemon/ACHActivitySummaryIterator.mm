@interface ACHActivitySummaryIterator
- (ACHActivitySummaryIterator)initWithHealthStore:(id)a3 shouldIncludePrivateProperties:(BOOL)a4;
- (id)newEmptyActivitySummaryFromSummary:(id)a3;
- (id)remoteInterface;
- (void)_enumerateActivitySummariesIncludingEmptySummariesForDateComponentInterval:(id)a3 handler:(id)a4 errorHandler:(id)a5;
- (void)enumerateActivitySummariesForDateComponentInterval:(id)a3 handler:(id)a4 errorHandler:(id)a5;
- (void)enumerateActivitySummariesForDateComponentInterval:(id)a3 includeNilSummaries:(BOOL)a4 handler:(id)a5 errorHandler:(id)a6;
@end

@implementation ACHActivitySummaryIterator

- (ACHActivitySummaryIterator)initWithHealthStore:(id)a3 shouldIncludePrivateProperties:(BOOL)a4
{
  v7 = a3;
  v19.receiver = self;
  v19.super_class = ACHActivitySummaryIterator;
  v8 = [(ACHActivitySummaryIterator *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_healthStore, a3);
    v10 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    calendar = v9->_calendar;
    v9->_calendar = v10;

    v12 = objc_alloc(MEMORY[0x277CCDAA0]);
    healthStore = v9->_healthStore;
    v14 = *MEMORY[0x277CE8AD0];
    v15 = [MEMORY[0x277CCAD78] UUID];
    v16 = [v12 initWithHealthStore:healthStore taskIdentifier:v14 exportedObject:v9 taskUUID:v15];
    proxyProvider = v9->_proxyProvider;
    v9->_proxyProvider = v16;

    v9->_includePrivateProperties = a4;
  }

  return v9;
}

- (void)enumerateActivitySummariesForDateComponentInterval:(id)a3 handler:(id)a4 errorHandler:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v8 = a4;
  v24 = a5;
  v9 = [(ACHActivitySummaryIterator *)self calendar];
  v10 = [v22 chunked:100 calendar:v9];
  v11 = [v10 mutableCopy];

  v26 = [(ACHActivitySummaryIterator *)self includePrivateProperties];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v12)
  {
    v25 = *v47;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v47 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v46 + 1) + 8 * i);
        v40 = 0;
        v41 = &v40;
        v42 = 0x3032000000;
        v43 = __Block_byref_object_copy__3;
        v44 = __Block_byref_object_dispose__3;
        v45 = 0;
        v34 = 0;
        v35 = &v34;
        v36 = 0x3032000000;
        v37 = __Block_byref_object_copy__3;
        v38 = __Block_byref_object_dispose__3;
        v39 = MEMORY[0x277CBEBF8];
        v15 = objc_autoreleasePoolPush();
        v16 = [(ACHActivitySummaryIterator *)self proxyProvider];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __102__ACHActivitySummaryIterator_enumerateActivitySummariesForDateComponentInterval_handler_errorHandler___block_invoke;
        v32[3] = &unk_278491148;
        v33 = v26;
        v32[4] = v14;
        v32[5] = &v34;
        v32[6] = &v40;
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __102__ACHActivitySummaryIterator_enumerateActivitySummariesForDateComponentInterval_handler_errorHandler___block_invoke_3;
        v31[3] = &unk_278490958;
        v31[4] = &v40;
        [v16 getSynchronousProxyWithHandler:v32 errorHandler:v31];

        objc_autoreleasePoolPop(v15);
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v17 = v35[5];
        v18 = [v17 countByEnumeratingWithState:&v27 objects:v50 count:16];
        if (v18)
        {
          v19 = *v28;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v28 != v19)
              {
                objc_enumerationMutation(v17);
              }

              v8[2](v8, *(*(&v27 + 1) + 8 * j));
            }

            v18 = [v17 countByEnumeratingWithState:&v27 objects:v50 count:16];
          }

          while (v18);
        }

        if (v41[5])
        {
          v24[2]();
        }

        _Block_object_dispose(&v34, 8);

        _Block_object_dispose(&v40, 8);
      }

      v12 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v12);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __102__ACHActivitySummaryIterator_enumerateActivitySummariesForDateComponentInterval_handler_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 startDateComponents];
  v6 = [*(a1 + 32) endDateComponents];
  v7 = *(a1 + 56);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __102__ACHActivitySummaryIterator_enumerateActivitySummariesForDateComponentInterval_handler_errorHandler___block_invoke_2;
  v8[3] = &unk_278491120;
  v9 = *(a1 + 40);
  [v4 remote_activitySummariesForStartDateComponents:v5 endDateComponents:v6 includePrivateProperties:v7 completion:v8];
}

void __102__ACHActivitySummaryIterator_enumerateActivitySummariesForDateComponentInterval_handler_errorHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)enumerateActivitySummariesForDateComponentInterval:(id)a3 includeNilSummaries:(BOOL)a4 handler:(id)a5 errorHandler:(id)a6
{
  v7 = a4;
  v10 = a5;
  v11 = v10;
  if (v7)
  {
    v12 = a6;
    v13 = a3;
    [(ACHActivitySummaryIterator *)self _enumerateActivitySummariesIncludingEmptySummariesForDateComponentInterval:v13 handler:v11 errorHandler:v12];
  }

  else
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __122__ACHActivitySummaryIterator_enumerateActivitySummariesForDateComponentInterval_includeNilSummaries_handler_errorHandler___block_invoke;
    aBlock[3] = &unk_278491170;
    v18 = v10;
    v14 = a6;
    v15 = a3;
    v16 = _Block_copy(aBlock);
    [(ACHActivitySummaryIterator *)self enumerateActivitySummariesForDateComponentInterval:v15 handler:v16 errorHandler:v14];

    v13 = v18;
  }
}

void __122__ACHActivitySummaryIterator_enumerateActivitySummariesForDateComponentInterval_includeNilSummaries_handler_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 _gregorianDateComponents];
  (*(v2 + 16))(v2, v3, v4);
}

- (void)_enumerateActivitySummariesIncludingEmptySummariesForDateComponentInterval:(id)a3 handler:(id)a4 errorHandler:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v8 = a4;
  v27 = a5;
  v9 = [(ACHActivitySummaryIterator *)self calendar];
  v10 = [v25 chunked:100 calendar:v9];
  v11 = [v10 mutableCopy];

  v29 = [(ACHActivitySummaryIterator *)self includePrivateProperties];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v11;
  v30 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v30)
  {
    v28 = *v48;
    v12 = *MEMORY[0x277CE8B28];
    do
    {
      v13 = 0;
      do
      {
        if (*v48 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v47 + 1) + 8 * v13);
        context = objc_autoreleasePoolPush();
        v41 = 0;
        v42 = &v41;
        v43 = 0x3032000000;
        v44 = __Block_byref_object_copy__3;
        v45 = __Block_byref_object_dispose__3;
        v46 = 0;
        v35 = 0;
        v36 = &v35;
        v37 = 0x3032000000;
        v38 = __Block_byref_object_copy__3;
        v39 = __Block_byref_object_dispose__3;
        v40 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v15 = [(ACHActivitySummaryIterator *)self proxyProvider];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __126__ACHActivitySummaryIterator__enumerateActivitySummariesIncludingEmptySummariesForDateComponentInterval_handler_errorHandler___block_invoke;
        v33[3] = &unk_2784911C0;
        v34 = v29;
        v33[4] = v14;
        v33[5] = self;
        v33[6] = &v35;
        v33[7] = &v41;
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __126__ACHActivitySummaryIterator__enumerateActivitySummariesIncludingEmptySummariesForDateComponentInterval_handler_errorHandler___block_invoke_3;
        v32[3] = &unk_278490958;
        v32[4] = &v41;
        [v15 getSynchronousProxyWithHandler:v33 errorHandler:v32];

        calendar = self->_calendar;
        v17 = [v14 startDateComponents];
        v18 = [(NSCalendar *)calendar dateFromComponents:v17];

        v19 = self->_calendar;
        v20 = [v14 endDateComponents];
        v21 = [(NSCalendar *)v19 dateFromComponents:v20];
        while (1)
        {

          if (![v18 hk_isBeforeOrEqualToDate:v21])
          {
            break;
          }

          v20 = [(NSCalendar *)self->_calendar components:v12 fromDate:v18];
          v22 = [v36[5] objectForKeyedSubscript:v20];
          v8[2](v8, v22, v20);
          v23 = [(NSCalendar *)self->_calendar hk_startOfDateByAddingDays:1 toDate:v18];

          v18 = v23;
        }

        if (v42[5])
        {
          v27[2]();
        }

        _Block_object_dispose(&v35, 8);
        _Block_object_dispose(&v41, 8);

        objc_autoreleasePoolPop(context);
        ++v13;
      }

      while (v13 != v30);
      v30 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v30);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __126__ACHActivitySummaryIterator__enumerateActivitySummariesIncludingEmptySummariesForDateComponentInterval_handler_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 startDateComponents];
  v6 = [*(a1 + 32) endDateComponents];
  v7 = *(a1 + 64);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __126__ACHActivitySummaryIterator__enumerateActivitySummariesIncludingEmptySummariesForDateComponentInterval_handler_errorHandler___block_invoke_2;
  v8[3] = &unk_278491198;
  v9 = *(a1 + 40);
  v10 = *(a1 + 56);
  [v4 remote_activitySummariesForStartDateComponents:v5 endDateComponents:v6 includePrivateProperties:v7 completion:v8];
}

void __126__ACHActivitySummaryIterator__enumerateActivitySummariesIncludingEmptySummariesForDateComponentInterval_handler_errorHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    v10 = *MEMORY[0x277CE8B28];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = *(a1[4] + 24);
        v14 = [v12 _startDate];
        v15 = [v13 components:v10 fromDate:v14];

        [*(*(a1[5] + 8) + 40) setObject:v12 forKeyedSubscript:v15];
      }

      v8 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v16 = *(a1[6] + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v6;

  v18 = *MEMORY[0x277D85DE8];
}

- (id)newEmptyActivitySummaryFromSummary:(id)a3
{
  v3 = MEMORY[0x277CCCFB0];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 _setActivitySummaryIndex:{objc_msgSend(v4, "_activitySummaryIndex")}];
  [v5 setActivityMoveMode:{objc_msgSend(v4, "activityMoveMode")}];
  v6 = [v4 activeEnergyBurnedGoal];
  [v5 setActiveEnergyBurnedGoal:v6];

  v7 = [v4 appleMoveTimeGoal];
  [v5 setAppleMoveTimeGoal:v7];

  v8 = [v4 appleStandHoursGoal];
  [v5 setAppleStandHoursGoal:v8];

  v9 = [v4 appleExerciseTimeGoal];

  [v5 setAppleExerciseTimeGoal:v9];
  return v5;
}

- (id)remoteInterface
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2835643F8];
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v5 = [v3 initWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_remote_activitySummariesForStartDateComponents_endDateComponents_includePrivateProperties_completion_ argumentIndex:0 ofReply:1];

  v6 = *MEMORY[0x277D85DE8];

  return v2;
}

@end