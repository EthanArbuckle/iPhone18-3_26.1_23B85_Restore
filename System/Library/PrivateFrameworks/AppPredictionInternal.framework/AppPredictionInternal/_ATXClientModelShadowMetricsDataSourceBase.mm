@interface _ATXClientModelShadowMetricsDataSourceBase
- (BOOL)isPrediction:(id)a3 equalToPrediction:(id)a4;
- (_ATXClientModelShadowMetricsDataSourceBase)initWithClientModelType:(int64_t)a3;
- (id)_eventBodyDateForEvent:(id)a3;
- (id)predictionCachePublisherFromStartDate:(id)a3;
- (unint64_t)numberOfPredictionsInCache:(id)a3 ofType:(int64_t)a4;
- (void)enumeratePredictionsInCache:(id)a3 ofType:(int64_t)a4 usingBlock:(id)a5;
- (void)replayHistoryWithShadowEventPublisher:(id)a3 startDate:(id)a4 endDate:(id)a5 shadowEventHandler:(id)a6 predictionCacheHandler:(id)a7;
@end

@implementation _ATXClientModelShadowMetricsDataSourceBase

- (_ATXClientModelShadowMetricsDataSourceBase)initWithClientModelType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = _ATXClientModelShadowMetricsDataSourceBase;
  result = [(_ATXClientModelShadowMetricsDataSourceBase *)&v5 init];
  if (result)
  {
    result->_clientModelType = a3;
  }

  return result;
}

- (id)predictionCachePublisherFromStartDate:(id)a3
{
  v3 = MEMORY[0x277D42070];
  clientModelType = self->_clientModelType;
  v5 = a3;
  v6 = [v3 clientModelIdFromClientModelType:clientModelType];
  v7 = objc_opt_new();
  [v5 timeIntervalSinceReferenceDate];
  v9 = v8;

  v10 = [v7 publisherFromStartTime:v9];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84___ATXClientModelShadowMetricsDataSourceBase_predictionCachePublisherFromStartDate___block_invoke;
  v14[3] = &unk_27859A798;
  v15 = v6;
  v11 = v6;
  v12 = [v10 filterWithIsIncluded:v14];

  return v12;
}

- (void)replayHistoryWithShadowEventPublisher:(id)a3 startDate:(id)a4 endDate:(id)a5 shadowEventHandler:(id)a6 predictionCacheHandler:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a3;
  v16 = [(_ATXClientModelShadowMetricsDataSourceBase *)self predictionCachePublisherFromStartDate:a4];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __144___ATXClientModelShadowMetricsDataSourceBase_replayHistoryWithShadowEventPublisher_startDate_endDate_shadowEventHandler_predictionCacheHandler___block_invoke;
  v26[3] = &unk_27859DB08;
  v26[4] = self;
  v17 = [v16 orderedMergeWithOther:v15 comparator:v26];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __144___ATXClientModelShadowMetricsDataSourceBase_replayHistoryWithShadowEventPublisher_startDate_endDate_shadowEventHandler_predictionCacheHandler___block_invoke_73;
  v22[3] = &unk_27859DB30;
  v22[4] = self;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  v21 = [v17 sinkWithCompletion:&__block_literal_global_125 shouldContinue:v22];
}

- (id)_eventBodyDateForEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 eventBody];
  v5 = [v4 conformsToProtocol:&unk_283AF6CC8];

  v6 = [v3 eventBody];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 absoluteTimestamp];
LABEL_5:
    v10 = v8;

    goto LABEL_7;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v3 eventBody];
    v8 = [v7 date];
    goto LABEL_5;
  }

  v11 = MEMORY[0x277CBEAA8];
  [v3 timestamp];
  v10 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
LABEL_7:

  return v10;
}

- (BOOL)isPrediction:(id)a3 equalToPrediction:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = v5;
    v8 = v6;
    v9 = [v7 executableType];
    if (v9 != [v8 executableType])
    {
      goto LABEL_8;
    }

    v10 = [v7 predictionReasons];
    if (v10 != [v8 predictionReasons])
    {
      goto LABEL_8;
    }

    v11 = [v7 scoreSpecification];
    v12 = [v8 scoreSpecification];
    v13 = [v11 isEqual:v12];

    if (v13)
    {
      v14 = [v7 executableIdentifier];
      v15 = [v8 executableIdentifier];
      v16 = [v14 isEqualToString:v15];
    }

    else
    {
LABEL_8:
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (unint64_t)numberOfPredictionsInCache:(id)a3 ofType:(int64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v5 suggestions];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v14 + 1) + 8 * i) executableType] == a4)
          {
            ++v9;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)enumeratePredictionsInCache:(id)a3 ofType:(int64_t)a4 usingBlock:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v7 suggestions];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __92___ATXClientModelShadowMetricsDataSourceBase_enumeratePredictionsInCache_ofType_usingBlock___block_invoke;
    v10[3] = &unk_27859DB58;
    v12 = a4;
    v11 = v8;
    [v9 enumerateObjectsUsingBlock:v10];
  }
}

@end