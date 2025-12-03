@interface ATXPOICategoryVisitDuetDataProvider
+ (id)sharedInstance;
- (ATXPOICategoryVisitDuetDataProvider)init;
- (id)fetchEventsBetweenStartDate:(id)date andEndDate:(id)endDate withPredicates:(id)predicates limit:(unint64_t)limit ascending:(BOOL)ascending;
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

- (id)fetchEventsBetweenStartDate:(id)date andEndDate:(id)endDate withPredicates:(id)predicates limit:(unint64_t)limit ascending:(BOOL)ascending
{
  v44 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  [dateCopy timeIntervalSinceReferenceDate];
  v12 = v11;
  v36 = endDateCopy;
  [endDateCopy timeIntervalSinceReferenceDate];
  v14 = v13;
  v15 = BiomeLibrary();
  location = [v15 Location];
  pointOfInterest = [location PointOfInterest];
  category = [pointOfInterest Category];
  v37 = dateCopy;
  v19 = [category atx_publisherFromStartDate:dateCopy];

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
        possibleCategoryNames = [v26 possibleCategoryNames];
        startDate = [v26 startDate];
        endDate = [v26 endDate];
        v31 = -[ATXPOICategoryVisitDuetEvent initWithPossibleCategoryNames:startDate:endDate:hasExited:](v27, "initWithPossibleCategoryNames:startDate:endDate:hasExited:", possibleCategoryNames, startDate, endDate, [v26 hasExited]);

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
  getCurrentVisit = [(ATXPOICategoryVisitDataProvider *)self->_dataProvider getCurrentVisit];
  v3 = [ATXPOICategoryVisitDuetEvent alloc];
  possibleCategoryNames = [getCurrentVisit possibleCategoryNames];
  startDate = [getCurrentVisit startDate];
  endDate = [getCurrentVisit endDate];
  v7 = [(ATXPOICategoryVisitDuetEvent *)v3 initWithPossibleCategoryNames:possibleCategoryNames startDate:startDate endDate:endDate];

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