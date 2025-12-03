@interface ATXClientModelShadowMetricsAppIntentDataSource
- (BOOL)isPrediction:(id)prediction equalToPrediction:(id)toPrediction;
- (unint64_t)cacheHitIndexForShadowEvent:(id)event predictionCache:(id)cache;
- (void)replayHistoryBetweenStartDate:(id)date endDate:(id)endDate shadowEventHandler:(id)handler predictionCacheHandler:(id)cacheHandler;
@end

@implementation ATXClientModelShadowMetricsAppIntentDataSource

- (void)replayHistoryBetweenStartDate:(id)date endDate:(id)endDate shadowEventHandler:(id)handler predictionCacheHandler:(id)cacheHandler
{
  cacheHandlerCopy = cacheHandler;
  handlerCopy = handler;
  endDateCopy = endDate;
  dateCopy = date;
  v14 = BiomeLibrary();
  v15 = [v14 App];
  intent = [v15 Intent];
  v17 = [intent atx_publisherFromStartDate:dateCopy];

  [(_ATXClientModelShadowMetricsDataSourceBase *)self replayHistoryWithShadowEventPublisher:v17 startDate:dateCopy endDate:endDateCopy shadowEventHandler:handlerCopy predictionCacheHandler:cacheHandlerCopy];
}

- (unint64_t)cacheHitIndexForShadowEvent:(id)event predictionCache:(id)cache
{
  eventCopy = event;
  cacheCopy = cache;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = eventCopy;
    atxAction = [v7 atxAction];
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    if (atxAction)
    {
      v10 = [ATXProactiveSuggestionBuilder executableIdForAction:atxAction];
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v20 = 0x7FFFFFFFFFFFFFFFLL;
      suggestions = [cacheCopy suggestions];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __94__ATXClientModelShadowMetricsAppIntentDataSource_cacheHitIndexForShadowEvent_predictionCache___block_invoke;
      v14[3] = &unk_27859DB80;
      v12 = v10;
      v15 = v12;
      v16 = &v17;
      [suggestions enumerateObjectsUsingBlock:v14];

      v9 = v18[3];
      _Block_object_dispose(&v17, 8);
    }
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v9;
}

void __94__ATXClientModelShadowMetricsAppIntentDataSource_cacheHitIndexForShadowEvent_predictionCache___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([v9 executableType] == 2)
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
  v5.super_class = ATXClientModelShadowMetricsAppIntentDataSource;
  return [(_ATXClientModelShadowMetricsDataSourceBase *)&v5 isPrediction:prediction equalToPrediction:toPrediction];
}

@end