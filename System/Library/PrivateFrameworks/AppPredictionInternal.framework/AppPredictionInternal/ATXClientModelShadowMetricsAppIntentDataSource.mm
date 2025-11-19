@interface ATXClientModelShadowMetricsAppIntentDataSource
- (BOOL)isPrediction:(id)a3 equalToPrediction:(id)a4;
- (unint64_t)cacheHitIndexForShadowEvent:(id)a3 predictionCache:(id)a4;
- (void)replayHistoryBetweenStartDate:(id)a3 endDate:(id)a4 shadowEventHandler:(id)a5 predictionCacheHandler:(id)a6;
@end

@implementation ATXClientModelShadowMetricsAppIntentDataSource

- (void)replayHistoryBetweenStartDate:(id)a3 endDate:(id)a4 shadowEventHandler:(id)a5 predictionCacheHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = BiomeLibrary();
  v15 = [v14 App];
  v16 = [v15 Intent];
  v17 = [v16 atx_publisherFromStartDate:v13];

  [(_ATXClientModelShadowMetricsDataSourceBase *)self replayHistoryWithShadowEventPublisher:v17 startDate:v13 endDate:v12 shadowEventHandler:v11 predictionCacheHandler:v10];
}

- (unint64_t)cacheHitIndexForShadowEvent:(id)a3 predictionCache:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = v5;
    v8 = [v7 atxAction];
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    if (v8)
    {
      v10 = [ATXProactiveSuggestionBuilder executableIdForAction:v8];
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v20 = 0x7FFFFFFFFFFFFFFFLL;
      v11 = [v6 suggestions];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __94__ATXClientModelShadowMetricsAppIntentDataSource_cacheHitIndexForShadowEvent_predictionCache___block_invoke;
      v14[3] = &unk_27859DB80;
      v12 = v10;
      v15 = v12;
      v16 = &v17;
      [v11 enumerateObjectsUsingBlock:v14];

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

- (BOOL)isPrediction:(id)a3 equalToPrediction:(id)a4
{
  v5.receiver = self;
  v5.super_class = ATXClientModelShadowMetricsAppIntentDataSource;
  return [(_ATXClientModelShadowMetricsDataSourceBase *)&v5 isPrediction:a3 equalToPrediction:a4];
}

@end