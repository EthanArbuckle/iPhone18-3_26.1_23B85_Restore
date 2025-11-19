@interface ATXClientModelShadowMetricsAppLaunchDataSource
- (BOOL)isPrediction:(id)a3 equalToPrediction:(id)a4;
- (unint64_t)cacheHitIndexForShadowEvent:(id)a3 predictionCache:(id)a4;
- (void)replayHistoryBetweenStartDate:(id)a3 endDate:(id)a4 shadowEventHandler:(id)a5 predictionCacheHandler:(id)a6;
@end

@implementation ATXClientModelShadowMetricsAppLaunchDataSource

- (void)replayHistoryBetweenStartDate:(id)a3 endDate:(id)a4 shadowEventHandler:(id)a5 predictionCacheHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = BiomeLibrary();
  v15 = [v14 App];
  v16 = [v15 InFocus];
  v17 = [v16 atx_publisherFromStartDate:v13];

  v18 = [v17 filterWithIsIncluded:&__block_literal_global_96];

  [(_ATXClientModelShadowMetricsDataSourceBase *)self replayHistoryWithShadowEventPublisher:v18 startDate:v13 endDate:v12 shadowEventHandler:v11 predictionCacheHandler:v10];
}

uint64_t __130__ATXClientModelShadowMetricsAppLaunchDataSource_replayHistoryBetweenStartDate_endDate_shadowEventHandler_predictionCacheHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = [v2 starting];

  return v3;
}

- (unint64_t)cacheHitIndexForShadowEvent:(id)a3 predictionCache:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    if (objc_opt_isKindOfClass())
    {
      v8 = [v5 bundleID];
      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      v18 = 0x7FFFFFFFFFFFFFFFLL;
      v9 = [v6 suggestions];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __94__ATXClientModelShadowMetricsAppLaunchDataSource_cacheHitIndexForShadowEvent_predictionCache___block_invoke;
      v12[3] = &unk_27859DB80;
      v10 = v8;
      v13 = v10;
      v14 = &v15;
      [v9 enumerateObjectsUsingBlock:v12];

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

- (BOOL)isPrediction:(id)a3 equalToPrediction:(id)a4
{
  v5.receiver = self;
  v5.super_class = ATXClientModelShadowMetricsAppLaunchDataSource;
  return [(_ATXClientModelShadowMetricsDataSourceBase *)&v5 isPrediction:a3 equalToPrediction:a4];
}

@end