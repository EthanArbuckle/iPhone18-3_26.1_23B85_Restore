@interface ATXLocationVisitDuetDataProvider
- (id)fetchEventsBetweenStartDate:(id)a3 andEndDate:(id)a4 withPredicates:(id)a5 limit:(unint64_t)a6 ascending:(BOOL)a7;
@end

@implementation ATXLocationVisitDuetDataProvider

- (id)fetchEventsBetweenStartDate:(id)a3 andEndDate:(id)a4 withPredicates:(id)a5 limit:(unint64_t)a6 ascending:(BOOL)a7
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x277D41BF8] sharedInstance];
  v13 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 endDate:v10];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__43;
  v31 = __Block_byref_object_dispose__43;
  v32 = 0;
  v14 = dispatch_semaphore_create(0);
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __106__ATXLocationVisitDuetDataProvider_fetchEventsBetweenStartDate_andEndDate_withPredicates_limit_ascending___block_invoke;
  v24 = &unk_278597EC0;
  v26 = &v27;
  v15 = v14;
  v25 = v15;
  [v12 fetchLocationsOfInterestVisitedDuring:v13 handler:&v21];
  [MEMORY[0x277D425A0] waitForSemaphore:v15 timeoutSeconds:{10.0, v21, v22, v23, v24}];
  v16 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v28[5];
    *buf = 138412290;
    v34 = v17;
    _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "SortedLoiEvents: %@", buf, 0xCu);
  }

  v18 = v28[5];
  _Block_object_dispose(&v27, 8);

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void __106__ATXLocationVisitDuetDataProvider_fetchEventsBetweenStartDate_andEndDate_withPredicates_limit_ascending___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v30 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v2;
  v28 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v28)
  {
    v27 = *v36;
    do
    {
      v3 = 0;
      do
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v3;
        v4 = *(*(&v35 + 1) + 8 * v3);
        v5 = __atxlog_handle_anchor();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v42 = v4;
          _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "LOI: %@", buf, 0xCu);
        }

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v6 = [v4 visits];
        v7 = [v6 countByEnumeratingWithState:&v31 objects:v40 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v32;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v32 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = [*(*(&v31 + 1) + 8 * i) rangeValue];
              v13 = v12;
              v14 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:v11];
              v15 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:(v11 + v13)];
              v16 = [ATXLocationVisitDuetEvent alloc];
              v17 = [v4 uuid];
              v18 = [(ATXLocationVisitDuetEvent *)v16 initWithLocationOfInterestIdentifier:v17 startDate:v14 endDate:v15];

              [v30 addObject:v18];
            }

            v8 = [v6 countByEnumeratingWithState:&v31 objects:v40 count:16];
          }

          while (v8);
        }

        v3 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v28);
  }

  v19 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
  v39 = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
  v21 = [v30 sortedArrayUsingDescriptors:v20];
  v22 = *(*(a1 + 40) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v21;

  dispatch_semaphore_signal(*(a1 + 32));
  v24 = *MEMORY[0x277D85DE8];
}

@end