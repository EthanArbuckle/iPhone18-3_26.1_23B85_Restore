@interface ATXClientModelShadowMetricsAppLaunchDataSource
- (BOOL)isPrediction:(id)prediction equalToPrediction:(id)toPrediction;
- (unint64_t)cacheHitIndexForShadowEvent:(id)event predictionCache:(id)cache;
- (void)replayHistoryBetweenStartDate:(id)date endDate:(id)endDate shadowEventHandler:(id)handler predictionCacheHandler:(id)cacheHandler;
@end

@implementation ATXClientModelShadowMetricsAppLaunchDataSource

- (void)replayHistoryBetweenStartDate:(id)date endDate:(id)endDate shadowEventHandler:(id)handler predictionCacheHandler:(id)cacheHandler
{
  cacheHandlerCopy = cacheHandler;
  handlerCopy = handler;
  endDateCopy = endDate;
  dateCopy = date;
  v14 = BiomeLibrary();
  v15 = [v14 App];
  inFocus = [v15 InFocus];
  v17 = [inFocus atx_publisherFromStartDate:dateCopy];

  v18 = [v17 filterWithIsIncluded:&__block_literal_global_96];

  [(_ATXClientModelShadowMetricsDataSourceBase *)self replayHistoryWithShadowEventPublisher:v18 startDate:dateCopy endDate:endDateCopy shadowEventHandler:handlerCopy predictionCacheHandler:cacheHandlerCopy];
}

uint64_t __130__ATXClientModelShadowMetricsAppLaunchDataSource_replayHistoryBetweenStartDate_endDate_shadowEventHandler_predictionCacheHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = [v2 starting];

  return v3;
}

- (unint64_t)cacheHitIndexForShadowEvent:(id)event predictionCache:(id)cache
{
  eventCopy = event;
  cacheCopy = cache;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    if (objc_opt_isKindOfClass())
    {
      bundleID = [eventCopy bundleID];
      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      v18 = 0x7FFFFFFFFFFFFFFFLL;
      suggestions = [cacheCopy suggestions];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __94__ATXClientModelShadowMetricsAppLaunchDataSource_cacheHitIndexForShadowEvent_predictionCache___block_invoke;
      v12[3] = &unk_27859DB80;
      v10 = bundleID;
      v13 = v10;
      v14 = &v15;
      [suggestions enumerateObjectsUsingBlock:v12];

      v7 = v16[3];
      _Block_object_dispose(&v15, 8);
    }
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

void __94__ATXClientModelShadowMetricsAppLaunchDataSource_cacheHitIndexForShadowEvent_predictionCache___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([v9 executableType] == 1)
  {
    v7 = *(a1 + 32);
    v8 = [v9 executableIdentifier];
    LODWORD(v7) = [v7 isEqualToString:v8];

    if (v7)
    {
      *(*(*(a1 + 40) + 8) + 24) = a3;
      *a4 = 1;
    }
  }
}

- (BOOL)isPrediction:(id)prediction equalToPrediction:(id)toPrediction
{
  v5.receiver = self;
  v5.super_class = ATXClientModelShadowMetricsAppLaunchDataSource;
  return [(_ATXClientModelShadowMetricsDataSourceBase *)&v5 isPrediction:prediction equalToPrediction:toPrediction];
}

@end