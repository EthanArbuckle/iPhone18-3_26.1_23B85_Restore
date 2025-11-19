@interface ATXPOICategoryVisitDuetDataProvider
+ (id)sharedInstance;
- (ATXPOICategoryVisitDuetDataProvider)init;
- (id)fetchEventsBetweenStartDate:(id)a3 andEndDate:(id)a4 withPredicates:(id)a5 limit:(unint64_t)a6 ascending:(BOOL)a7;
- (id)getCurrentVisit;
@end

@implementation ATXPOICategoryVisitDuetDataProvider

- (ATXPOICategoryVisitDuetDataProvider)init
{
  v8.receiver = self;
  v8.super_class = ATXPOICategoryVisitDuetDataProvider;
  v2 = [(ATXPOICategoryVisitDuetDataProvider *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    streamAggregator = v2->_streamAggregator;
    v2->_streamAggregator = v3;

    v5 = objc_opt_new();
    dataProvider = v2->_dataProvider;
    v2->_dataProvider = v5;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_13 != -1)
  {
    +[ATXPOICategoryVisitDuetDataProvider sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_16;

  return v3;
}

void __53__ATXPOICategoryVisitDuetDataProvider_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_16;
  sharedInstance__pasExprOnceResult_16 = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)fetchEventsBetweenStartDate:(id)a3 andEndDate:(id)a4 withPredicates:(id)a5 limit:(unint64_t)a6 ascending:(BOOL)a7
{
  v44 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  [v9 timeIntervalSinceReferenceDate];
  v12 = v11;
  v36 = v10;
  [v10 timeIntervalSinceReferenceDate];
  v14 = v13;
  v15 = BiomeLibrary();
  v16 = [v15 Location];
  v17 = [v16 PointOfInterest];
  v18 = [v17 Category];
  v37 = v9;
  v19 = [v18 atx_publisherFromStartDate:v9];

  v35 = v19;
  v20 = [(ATXPOICategoryEventAggregator *)self->_streamAggregator groupVisitsFromPublisher:v19 startTimestamp:v12 endTimestamp:v14];
  v21 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v34 = v20;
  obj = [v20 events];
  v22 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v40;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v40 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v39 + 1) + 8 * i);
        v27 = [ATXPOICategoryVisitDuetEvent alloc];
        v28 = [v26 possibleCategoryNames];
        v29 = [v26 startDate];
        v30 = [v26 endDate];
        v31 = -[ATXPOICategoryVisitDuetEvent initWithPossibleCategoryNames:startDate:endDate:hasExited:](v27, "initWithPossibleCategoryNames:startDate:endDate:hasExited:", v28, v29, v30, [v26 hasExited]);

        [v21 addObject:v31];
      }

      v23 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v23);
  }

  v32 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)getCurrentVisit
{
  v2 = [(ATXPOICategoryVisitDataProvider *)self->_dataProvider getCurrentVisit];
  v3 = [ATXPOICategoryVisitDuetEvent alloc];
  v4 = [v2 possibleCategoryNames];
  v5 = [v2 startDate];
  v6 = [v2 endDate];
  v7 = [(ATXPOICategoryVisitDuetEvent *)v3 initWithPossibleCategoryNames:v4 startDate:v5 endDate:v6];

  return v7;
}

void __108__ATXPOICategoryVisitDuetDataProvider_subscribeToPOIChangesForCategory_observer_enterSelector_exitSelector___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __108__ATXPOICategoryVisitDuetDataProvider_subscribeToPOIChangesForCategory_observer_enterSelector_exitSelector___block_invoke_cold_1(v2, v4);
    }
  }
}

void __108__ATXPOICategoryVisitDuetDataProvider_subscribeToPOIChangesForCategory_observer_enterSelector_exitSelector___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXPOICategoryVisitDuetDataProvider: error subscribing to stream: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end