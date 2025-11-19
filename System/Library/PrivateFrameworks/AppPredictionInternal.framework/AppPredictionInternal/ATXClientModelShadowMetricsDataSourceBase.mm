@interface ATXClientModelShadowMetricsDataSourceBase
@end

@implementation ATXClientModelShadowMetricsDataSourceBase

uint64_t __84___ATXClientModelShadowMetricsDataSourceBase_predictionCachePublisherFromStartDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 clientModelId];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

uint64_t __144___ATXClientModelShadowMetricsDataSourceBase_replayHistoryWithShadowEventPublisher_startDate_endDate_shadowEventHandler_predictionCacheHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 _eventBodyDateForEvent:a2];
  v8 = [*(a1 + 32) _eventBodyDateForEvent:v6];

  v9 = [v7 compare:v8];
  return v9;
}

void __144___ATXClientModelShadowMetricsDataSourceBase_replayHistoryWithShadowEventPublisher_startDate_endDate_shadowEventHandler_predictionCacheHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __144___ATXClientModelShadowMetricsDataSourceBase_replayHistoryWithShadowEventPublisher_startDate_endDate_shadowEventHandler_predictionCacheHandler___block_invoke_2_cold_1(v2, v4);
    }
  }
}

BOOL __144___ATXClientModelShadowMetricsDataSourceBase_replayHistoryWithShadowEventPublisher_startDate_endDate_shadowEventHandler_predictionCacheHandler___block_invoke_73(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _eventBodyDateForEvent:v3];
  v5 = [v4 laterDate:*(a1 + 40)];

  if (v5 != v4)
  {
    v6 = [v3 eventBody];
    v7 = [v6 conformsToProtocol:&unk_283AF6CC8];

    if (v7)
    {
      v8 = *(a1 + 48);
LABEL_6:
      v11 = [v3 eventBody];
      (*(v8 + 16))(v8, v11);

      goto LABEL_10;
    }

    v9 = [v3 eventBody];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = *(a1 + 56);
      goto LABEL_6;
    }

    v12 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      __144___ATXClientModelShadowMetricsDataSourceBase_replayHistoryWithShadowEventPublisher_startDate_endDate_shadowEventHandler_predictionCacheHandler___block_invoke_73_cold_1(v3, v12);
    }
  }

LABEL_10:

  return v5 != v4;
}

void __92___ATXClientModelShadowMetricsDataSourceBase_enumeratePredictionsInCache_ofType_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 executableType] == *(a1 + 40))
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __144___ATXClientModelShadowMetricsDataSourceBase_replayHistoryWithShadowEventPublisher_startDate_endDate_shadowEventHandler_predictionCacheHandler___block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXClientModelShadowMetricsDataSourceBase: Biome query completed with error %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __144___ATXClientModelShadowMetricsDataSourceBase_replayHistoryWithShadowEventPublisher_startDate_endDate_shadowEventHandler_predictionCacheHandler___block_invoke_73_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 eventBody];
  v5 = 138412290;
  v6 = objc_opt_class();
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "ATXClientModelShadowMetricsDataSourceBase: unexpected event of class %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end