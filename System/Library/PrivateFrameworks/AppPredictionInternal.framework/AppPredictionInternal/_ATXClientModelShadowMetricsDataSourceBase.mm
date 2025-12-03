@interface _ATXClientModelShadowMetricsDataSourceBase
- (BOOL)isPrediction:(id)prediction equalToPrediction:(id)toPrediction;
- (_ATXClientModelShadowMetricsDataSourceBase)initWithClientModelType:(int64_t)type;
- (id)_eventBodyDateForEvent:(id)event;
- (id)predictionCachePublisherFromStartDate:(id)date;
- (unint64_t)numberOfPredictionsInCache:(id)cache ofType:(int64_t)type;
- (void)enumeratePredictionsInCache:(id)cache ofType:(int64_t)type usingBlock:(id)block;
- (void)replayHistoryWithShadowEventPublisher:(id)publisher startDate:(id)date endDate:(id)endDate shadowEventHandler:(id)handler predictionCacheHandler:(id)cacheHandler;
@end

@implementation _ATXClientModelShadowMetricsDataSourceBase

- (_ATXClientModelShadowMetricsDataSourceBase)initWithClientModelType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = _ATXClientModelShadowMetricsDataSourceBase;
  result = [(_ATXClientModelShadowMetricsDataSourceBase *)&v5 init];
  if (result)
  {
    result->_clientModelType = type;
  }

  return result;
}

- (id)predictionCachePublisherFromStartDate:(id)date
{
  v3 = MEMORY[0x277D42070];
  clientModelType = self->_clientModelType;
  dateCopy = date;
  v6 = [v3 clientModelIdFromClientModelType:clientModelType];
  v7 = objc_opt_new();
  [dateCopy timeIntervalSinceReferenceDate];
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

- (void)replayHistoryWithShadowEventPublisher:(id)publisher startDate:(id)date endDate:(id)endDate shadowEventHandler:(id)handler predictionCacheHandler:(id)cacheHandler
{
  endDateCopy = endDate;
  handlerCopy = handler;
  cacheHandlerCopy = cacheHandler;
  publisherCopy = publisher;
  v16 = [(_ATXClientModelShadowMetricsDataSourceBase *)self predictionCachePublisherFromStartDate:date];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __144___ATXClientModelShadowMetricsDataSourceBase_replayHistoryWithShadowEventPublisher_startDate_endDate_shadowEventHandler_predictionCacheHandler___block_invoke;
  v26[3] = &unk_27859DB08;
  v26[4] = self;
  v17 = [v16 orderedMergeWithOther:publisherCopy comparator:v26];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __144___ATXClientModelShadowMetricsDataSourceBase_replayHistoryWithShadowEventPublisher_startDate_endDate_shadowEventHandler_predictionCacheHandler___block_invoke_73;
  v22[3] = &unk_27859DB30;
  v22[4] = self;
  v23 = endDateCopy;
  v24 = handlerCopy;
  v25 = cacheHandlerCopy;
  v18 = cacheHandlerCopy;
  v19 = handlerCopy;
  v20 = endDateCopy;
  v21 = [v17 sinkWithCompletion:&__block_literal_global_125 shouldContinue:v22];
}

- (id)_eventBodyDateForEvent:(id)event
{
  eventCopy = event;
  eventBody = [eventCopy eventBody];
  v5 = [eventBody conformsToProtocol:&unk_283AF6CC8];

  eventBody2 = [eventCopy eventBody];
  eventBody3 = eventBody2;
  if (v5)
  {
    absoluteTimestamp = [eventBody2 absoluteTimestamp];
LABEL_5:
    v10 = absoluteTimestamp;

    goto LABEL_7;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    eventBody3 = [eventCopy eventBody];
    absoluteTimestamp = [eventBody3 date];
    goto LABEL_5;
  }

  v11 = MEMORY[0x277CBEAA8];
  [eventCopy timestamp];
  v10 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
LABEL_7:

  return v10;
}

- (BOOL)isPrediction:(id)prediction equalToPrediction:(id)toPrediction
{
  predictionCopy = prediction;
  toPredictionCopy = toPrediction;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = predictionCopy;
    v8 = toPredictionCopy;
    executableType = [v7 executableType];
    if (executableType != [v8 executableType])
    {
      goto LABEL_8;
    }

    predictionReasons = [v7 predictionReasons];
    if (predictionReasons != [v8 predictionReasons])
    {
      goto LABEL_8;
    }

    scoreSpecification = [v7 scoreSpecification];
    scoreSpecification2 = [v8 scoreSpecification];
    v13 = [scoreSpecification isEqual:scoreSpecification2];

    if (v13)
    {
      executableIdentifier = [v7 executableIdentifier];
      executableIdentifier2 = [v8 executableIdentifier];
      v16 = [executableIdentifier isEqualToString:executableIdentifier2];
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

- (unint64_t)numberOfPredictionsInCache:(id)cache ofType:(int64_t)type
{
  v19 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    suggestions = [cacheCopy suggestions];
    v7 = [suggestions countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(suggestions);
          }

          if ([*(*(&v14 + 1) + 8 * i) executableType] == type)
          {
            ++v9;
          }
        }

        v8 = [suggestions countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)enumeratePredictionsInCache:(id)cache ofType:(int64_t)type usingBlock:(id)block
{
  cacheCopy = cache;
  blockCopy = block;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    suggestions = [cacheCopy suggestions];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __92___ATXClientModelShadowMetricsDataSourceBase_enumeratePredictionsInCache_ofType_usingBlock___block_invoke;
    v10[3] = &unk_27859DB58;
    typeCopy = type;
    v11 = blockCopy;
    [suggestions enumerateObjectsUsingBlock:v10];
  }
}

@end