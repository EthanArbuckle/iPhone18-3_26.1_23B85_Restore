@interface ATXCandidateRelevanceModelDatasetGenerator
+ (BOOL)isContextMismatchForPreviousContext:(id)a3 currentContext:(id)a4;
+ (id)candidateDataPointsForSession:(id)a3 candidate:(id)a4;
+ (id)candidateDataPointsForSessions:(id)a3 candidate:(id)a4;
+ (id)dataPointPublisher:(id)a3;
+ (id)eventAndRecentContextPublisher:(id)a3;
- (ATXCandidateRelevanceModelDatasetGenerator)initWithConfig:(id)a3;
- (ATXCandidateRelevanceModelDatasetGenerator)initWithConfig:(id)a3 contextPublisher:(id)a4 modePublisher:(id)a5 poiCategoryPublisher:(id)a6 bluetoothPublisher:(id)a7 userFocusComputedModePublisher:(id)a8 microlocationVisitPublisher:(id)a9;
- (ATXCandidateRelevanceModelDatasetGenerator)initWithConfig:(id)a3 inferredModeStream:(id)a4 computedModeStream:(id)a5 pointOfInterestStream:(id)a6;
- (id)candidateDatasetStream;
- (void)candidateDatasetStream;
- (void)receiveCandidateDataPoint:(id)a3 completion:(id)a4 candidate:(id)a5;
- (void)receiveDataPoint:(id)a3 completion:(id)a4;
- (void)receiveDatasetSession:(id)a3 completion:(id)a4;
@end

@implementation ATXCandidateRelevanceModelDatasetGenerator

- (ATXCandidateRelevanceModelDatasetGenerator)initWithConfig:(id)a3
{
  v4 = a3;
  v16 = BiomeLibrary();
  v15 = [v16 UserFocus];
  v5 = [v15 InferredMode];
  v6 = BiomeLibrary();
  v7 = [v6 UserFocus];
  v8 = [v7 ComputedMode];
  v9 = BiomeLibrary();
  v10 = [v9 Location];
  v11 = [v10 PointOfInterest];
  v12 = [v11 Category];
  v13 = [(ATXCandidateRelevanceModelDatasetGenerator *)self initWithConfig:v4 inferredModeStream:v5 computedModeStream:v8 pointOfInterestStream:v12];

  return v13;
}

- (ATXCandidateRelevanceModelDatasetGenerator)initWithConfig:(id)a3 inferredModeStream:(id)a4 computedModeStream:(id)a5 pointOfInterestStream:(id)a6
{
  v9 = MEMORY[0x277CBEAA8];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v35 = a3;
  v13 = [[v9 alloc] initWithTimeIntervalSinceNow:-2592000.0];
  v14 = objc_opt_new();
  [v13 timeIntervalSinceReferenceDate];
  v34 = [v14 publisherFromStartTime:?];

  v15 = [v12 atx_publisherFromStartDate:v13];

  v33 = [v15 filterWithIsIncluded:&__block_literal_global_117_0];

  v16 = [v10 atx_publisherFromStartDate:v13];

  v17 = [v16 filterWithIsIncluded:&__block_literal_global_119];

  v18 = objc_opt_new();
  v19 = objc_opt_new();
  v20 = [MEMORY[0x277CBEAA8] now];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __121__ATXCandidateRelevanceModelDatasetGenerator_initWithConfig_inferredModeStream_computedModeStream_pointOfInterestStream___block_invoke_4;
  v37[3] = &unk_2785991A0;
  v38 = v18;
  v21 = v18;
  [v19 enumerateConnectedEventsFromStartDate:v13 endDate:v20 filterBlock:&__block_literal_global_123 limit:1000000 ascending:1 block:v37];

  v22 = [v21 bpsPublisher];
  v23 = [v22 mapWithTransform:&__block_literal_global_127];

  v24 = [v11 atx_publisherFromStartDate:v13];

  v25 = [v24 filterWithIsIncluded:&__block_literal_global_130];

  v26 = objc_opt_new();
  v27 = [MEMORY[0x277CBEAA8] now];
  v28 = [v26 fetchEventsBetweenStartDate:v13 andEndDate:v27 withPredicates:0];
  v29 = [v28 bpsPublisher];
  v30 = [v29 mapWithTransform:&__block_literal_global_134];

  v31 = [(ATXCandidateRelevanceModelDatasetGenerator *)self initWithConfig:v35 contextPublisher:v34 modePublisher:v33 poiCategoryPublisher:v17 bluetoothPublisher:v23 userFocusComputedModePublisher:v25 microlocationVisitPublisher:v30];
  return v31;
}

uint64_t __121__ATXCandidateRelevanceModelDatasetGenerator_initWithConfig_inferredModeStream_computedModeStream_pointOfInterestStream___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = [v2 isStart];

  return v3;
}

BOOL __121__ATXCandidateRelevanceModelDatasetGenerator_initWithConfig_inferredModeStream_computedModeStream_pointOfInterestStream___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = [v2 rank] == 0;

  return v3;
}

BOOL __121__ATXCandidateRelevanceModelDatasetGenerator_initWithConfig_inferredModeStream_computedModeStream_pointOfInterestStream___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 endTime];
  v4 = [v2 startTime];

  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  return v6 >= 60.0;
}

id __121__ATXCandidateRelevanceModelDatasetGenerator_initWithConfig_inferredModeStream_computedModeStream_pointOfInterestStream___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ATXBluetoothDuetEvent alloc] initWithATXEvent:v2];

  v4 = objc_alloc(MEMORY[0x277CEBC00]);
  v5 = [(ATXDuetEvent *)v3 startDate];
  [v5 timeIntervalSinceReferenceDate];
  v6 = [v4 initWithEventBody:v3 timestamp:?];

  return v6;
}

uint64_t __121__ATXCandidateRelevanceModelDatasetGenerator_initWithConfig_inferredModeStream_computedModeStream_pointOfInterestStream___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = [v2 starting];

  return v3;
}

id __121__ATXCandidateRelevanceModelDatasetGenerator_initWithConfig_inferredModeStream_computedModeStream_pointOfInterestStream___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CEBC00];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 startDate];
  [v5 timeIntervalSinceReferenceDate];
  v6 = [v4 initWithEventBody:v3 timestamp:?];

  return v6;
}

- (ATXCandidateRelevanceModelDatasetGenerator)initWithConfig:(id)a3 contextPublisher:(id)a4 modePublisher:(id)a5 poiCategoryPublisher:(id)a6 bluetoothPublisher:(id)a7 userFocusComputedModePublisher:(id)a8 microlocationVisitPublisher:(id)a9
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v16 = a8;
  v17 = a9;
  v26.receiver = self;
  v26.super_class = ATXCandidateRelevanceModelDatasetGenerator;
  v18 = [(ATXCandidateRelevanceModelDatasetGenerator *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_config, a3);
    objc_storeStrong(&v19->_contextPublisher, a4);
    objc_storeStrong(&v19->_modePublisher, a5);
    objc_storeStrong(&v19->_poiCategoryPublisher, a6);
    objc_storeStrong(&v19->_bluetoothPublisher, a7);
    objc_storeStrong(&v19->_userFocusComputedModePublisher, a8);
    objc_storeStrong(&v19->_microlocationVisitPublisher, a9);
  }

  return v19;
}

- (void)receiveDataPoint:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ATXCandidateRelevanceModelDatasetGenerator *)self candidateDatasetStream];
  if (v8)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __74__ATXCandidateRelevanceModelDatasetGenerator_receiveDataPoint_completion___block_invoke;
    v12[3] = &unk_27859D720;
    v12[4] = &v13;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__ATXCandidateRelevanceModelDatasetGenerator_receiveDataPoint_completion___block_invoke_2;
    v10[3] = &unk_27859E198;
    v11 = v6;
    v9 = [v8 sinkWithBookmark:0 completion:v12 receiveInput:v10];
    v7[2](v7, *(v14 + 24));

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v7[2](v7, 0);
  }
}

uint64_t __74__ATXCandidateRelevanceModelDatasetGenerator_receiveDataPoint_completion___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 state];
  *(*(*(a1 + 32) + 8) + 24) = result == 0;
  return result;
}

void __74__ATXCandidateRelevanceModelDatasetGenerator_receiveDataPoint_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 candidate];

  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)receiveDatasetSession:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__61;
  v23[4] = __Block_byref_object_dispose__61;
  v24 = objc_opt_new();
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__61;
  v17[4] = __Block_byref_object_dispose__61;
  v18 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__ATXCandidateRelevanceModelDatasetGenerator_receiveDatasetSession_completion___block_invoke;
  v13[3] = &unk_27859E1C0;
  v15 = v17;
  v14 = v6;
  v16 = v23;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__ATXCandidateRelevanceModelDatasetGenerator_receiveDatasetSession_completion___block_invoke_2;
  v9[3] = &unk_27859E1E8;
  v8 = v14;
  v10 = v8;
  v11 = v23;
  v12 = &v19;
  [(ATXCandidateRelevanceModelDatasetGenerator *)self receiveDataPoint:v13 completion:v9];
  v7[2](v7, *(v20 + 24));

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v23, 8);
}

void __79__ATXCandidateRelevanceModelDatasetGenerator_receiveDatasetSession_completion___block_invoke(void *a1, void *a2)
{
  v11 = a2;
  v3 = [v11 contextDefinedSessionId];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  if (v5)
  {
    if ([v5 isEqual:v3])
    {
      goto LABEL_6;
    }

    v6 = *(*(a1[6] + 8) + 40);
    (*(a1[4] + 16))();
    objc_storeStrong((*(a1[5] + 8) + 40), v3);
    v7 = objc_opt_new();
    v8 = *(a1[6] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v10 = v3;
    v9 = *(v4 + 40);
    *(v4 + 40) = v10;
  }

LABEL_6:
  [*(*(a1[6] + 8) + 40) addObject:v11];
}

uint64_t __79__ATXCandidateRelevanceModelDatasetGenerator_receiveDatasetSession_completion___block_invoke_2(uint64_t result, int a2)
{
  v2 = a2;
  v3 = result;
  if (a2)
  {
    v4 = *(result + 32);
    v5 = *(*(v3[5] + 8) + 40);
    result = (*(v3[4] + 16))();
  }

  *(*(v3[6] + 8) + 24) = v2;
  return result;
}

- (void)receiveCandidateDataPoint:(id)a3 completion:(id)a4 candidate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __93__ATXCandidateRelevanceModelDatasetGenerator_receiveCandidateDataPoint_completion_candidate___block_invoke;
  v14[3] = &unk_27859E210;
  v14[4] = self;
  v11 = v10;
  v15 = v11;
  v12 = v8;
  v16 = v12;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __93__ATXCandidateRelevanceModelDatasetGenerator_receiveCandidateDataPoint_completion_candidate___block_invoke_2;
  v13[3] = &unk_27859E238;
  v13[4] = &v17;
  [(ATXCandidateRelevanceModelDatasetGenerator *)self receiveDatasetSession:v14 completion:v13];
  v9[2](v9, *(v18 + 24));

  _Block_object_dispose(&v17, 8);
}

void __93__ATXCandidateRelevanceModelDatasetGenerator_receiveCandidateDataPoint_completion_candidate___block_invoke(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[4];
  v5 = [objc_opt_class() candidateDataPointsForSession:v3 candidate:a1[5]];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        (*(a1[6] + 16))();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (id)candidateDataPointsForSessions:(id)a3 candidate:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [objc_opt_class() candidateDataPointsForSession:*(*(&v24 + 1) + 8 * i) candidate:v6];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v21;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v21 != v15)
              {
                objc_enumerationMutation(v12);
              }

              [v7 addObject:*(*(&v20 + 1) + 8 * j)];
            }

            v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v14);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)candidateDataPointsForSession:(id)a3 candidate:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v9)
  {

LABEL_13:
    if ([v8 count])
    {
      v17 = [v8 objectAtIndexedSubscript:0];
      [v17 setCandidate:v6];
      [v17 setEngaged:0];
      [v7 addObject:v17];
    }

    goto LABEL_15;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v21;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v21 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v20 + 1) + 8 * i);
      v15 = [v14 candidate];
      v16 = [v15 isEqual:v6];

      if (v16)
      {
        [v7 addObject:v14];
        v11 = 1;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v10);

  if ((v11 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_15:

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)candidateDatasetStream
{
  v16[6] = *MEMORY[0x277D85DE8];
  config = self->_config;
  v4 = [objc_opt_class() candidatePublisher];
  if (v4 && self->_contextPublisher && (modePublisher = self->_modePublisher) != 0 && (poiCategoryPublisher = self->_poiCategoryPublisher) != 0 && (bluetoothPublisher = self->_bluetoothPublisher) != 0 && (userFocusComputedModePublisher = self->_userFocusComputedModePublisher) != 0 && (microlocationVisitPublisher = self->_microlocationVisitPublisher) != 0)
  {
    v16[0] = self->_contextPublisher;
    v16[1] = modePublisher;
    v16[2] = poiCategoryPublisher;
    v16[3] = bluetoothPublisher;
    v16[4] = userFocusComputedModePublisher;
    v16[5] = microlocationVisitPublisher;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:6];
    v11 = [v4 orderedMergeWithOthers:v10 comparator:&__block_literal_global_142];

    v12 = [objc_opt_class() eventAndRecentContextPublisher:v11];
    v13 = [objc_opt_class() dataPointPublisher:v12];
  }

  else
  {
    v11 = __atxlog_handle_relevance_model();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(ATXCandidateRelevanceModelDatasetGenerator *)self candidateDatasetStream];
    }

    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __68__ATXCandidateRelevanceModelDatasetGenerator_candidateDatasetStream__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 timestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

+ (id)eventAndRecentContextPublisher:(id)a3
{
  v4 = MEMORY[0x277D42648];
  v5 = a3;
  v6 = [v4 tupleWithFirst:0 second:0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__ATXCandidateRelevanceModelDatasetGenerator_eventAndRecentContextPublisher___block_invoke;
  v9[3] = &__block_descriptor_40_e70____PASTuple2_24__0___PASTuple2_8__NSObject_ATXBMStoreEventProtocol__16l;
  v9[4] = a1;
  v7 = [v5 scanWithInitial:v6 nextPartialResult:v9];

  return v7;
}

id __77__ATXCandidateRelevanceModelDatasetGenerator_eventAndRecentContextPublisher___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [v6 eventBody];
  if (v8)
  {
    v9 = [v5 second];
    v10 = [v9 inferredModeEvent];
    v11 = [v9 userFocusComputedModeEvent];
    v12 = [v9 poiCategory];
    v13 = [v9 bluetoothEvent];
    v14 = [v9 microlocationVisitEvent];
    objc_opt_class();
    v21 = v7;
    if (objc_opt_isKindOfClass())
    {
      v15 = v10;
      v16 = v8;

      [v16 setInferredModeEvent:v15];
      [v16 setPoiCategory:v12];
      [v16 setBluetoothEvent:v13];
      [v16 setUserFocusComputedModeEvent:v11];
      [v16 setMicrolocationVisitEvent:v14];
      v9 = v16;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v9 setInferredModeEvent:v8];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 setUserFocusComputedModeEvent:v8];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v8 poiCategory];
            v20 = v15 = v10;
            [v9 setPoiCategory:v20];

            goto LABEL_12;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v15 = v10;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v9 setMicrolocationVisitEvent:v8];
            }

            goto LABEL_12;
          }

          [v9 setBluetoothEvent:v8];
        }
      }

      v15 = v10;
    }

LABEL_12:
    v18 = [MEMORY[0x277D42648] tupleWithFirst:v6 second:v9];

    v7 = v21;
    goto LABEL_13;
  }

  v17 = __atxlog_handle_relevance_model();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    __77__ATXCandidateRelevanceModelDatasetGenerator_eventAndRecentContextPublisher___block_invoke_cold_1(a1, v17);
  }

  v18 = v5;
LABEL_13:

  objc_autoreleasePoolPop(v7);

  return v18;
}

+ (id)dataPointPublisher:(id)a3
{
  v4 = a3;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__61;
  v17[4] = __Block_byref_object_dispose__61;
  v18 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__61;
  v15[4] = __Block_byref_object_dispose__61;
  v16 = 0;
  v5 = objc_opt_new();
  v6 = [v4 filterWithIsIncluded:&__block_literal_global_154];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__ATXCandidateRelevanceModelDatasetGenerator_dataPointPublisher___block_invoke_2;
  v10[3] = &unk_27859E260;
  v14 = a1;
  v7 = v5;
  v11 = v7;
  v12 = v17;
  v13 = v15;
  v8 = [v6 mapWithTransform:v10];

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v17, 8);

  return v8;
}

uint64_t __65__ATXCandidateRelevanceModelDatasetGenerator_dataPointPublisher___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 first];
  v4 = [v3 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = [v2 second];

  return isKindOfClass & (v6 != 0);
}

ATXCandidateRelevanceModelDataPoint *__65__ATXCandidateRelevanceModelDatasetGenerator_dataPointPublisher___block_invoke_2(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 second];
  v5 = [v4 copy];

  v6 = MEMORY[0x277CBEAA8];
  v7 = [v3 first];
  [v7 timestamp];
  v8 = [v6 dateWithTimeIntervalSinceReferenceDate:?];

  v9 = __atxlog_handle_relevance_model();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v23 = *(a1 + 56);
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    [v8 timeIntervalSinceReferenceDate];
    v27 = v26;
    v28 = [v5 timeContext];
    v29 = [v28 date];
    [v29 timeIntervalSinceReferenceDate];
    v31 = 138412546;
    v32 = v25;
    v33 = 2048;
    v34 = v27 - v30;
    _os_log_debug_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEBUG, "%@ - New time context for candidate is %f seconds newer", &v31, 0x16u);
  }

  v10 = [[ATXPredictionTimeContext alloc] initWithDate:v8];
  [v5 setTimeContext:v10];
  v11 = [*(a1 + 32) copy];
  [v5 setCandidateIdentifiersLaunchAge:v11];

  v12 = *(a1 + 56);
  if ([objc_opt_class() isContextMismatchForPreviousContext:*(*(*(a1 + 40) + 8) + 40) currentContext:v5])
  {
    v13 = objc_opt_new();
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
  }

  v16 = [v3 first];
  v17 = [v16 eventBody];

  v18 = [[ATXCandidateRelevanceModelDataPoint alloc] initWithContext:v5 candidate:v17 engaged:1 contextDefinedSessionId:*(*(*(a1 + 48) + 8) + 40)];
  v19 = *(a1 + 32);
  v20 = [v17 identifier];
  [v19 setObject:v8 forKeyedSubscript:v20];

  v21 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (BOOL)isContextMismatchForPreviousContext:(id)a3 currentContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 1;
  if (v5 && v6)
  {
    v9 = [v6 timeContext];
    v10 = [v9 date];
    v11 = [v5 timeContext];
    v12 = [v11 date];
    [v10 timeIntervalSinceDate:v12];
    v14 = v13;

    if (v14 > 1800.0)
    {
      v15 = __atxlog_handle_relevance_model();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        +[ATXCandidateRelevanceModelDatasetGenerator isContextMismatchForPreviousContext:currentContext:];
      }

LABEL_54:

      v8 = 1;
      goto LABEL_55;
    }

    v16 = [v7 timeContext];
    v17 = [v16 dayOfWeek];
    v18 = [v5 timeContext];
    v19 = [v18 dayOfWeek];

    if (v17 != v19)
    {
      v15 = __atxlog_handle_relevance_model();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        +[ATXCandidateRelevanceModelDatasetGenerator isContextMismatchForPreviousContext:currentContext:];
      }

      goto LABEL_54;
    }

    v20 = [v7 deviceStateContext];
    v21 = [v20 wifiSSID];
    v22 = [v5 deviceStateContext];
    v23 = [v22 wifiSSID];
    v24 = v21;
    v25 = v23;
    v26 = v25;
    if (v24 == v25)
    {
    }

    else
    {
      if (!v24 || !v25)
      {

        goto LABEL_19;
      }

      v27 = [v24 isEqualToString:v25];

      if ((v27 & 1) == 0)
      {
LABEL_19:
        v15 = __atxlog_handle_relevance_model();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          +[ATXCandidateRelevanceModelDatasetGenerator isContextMismatchForPreviousContext:currentContext:];
        }

        goto LABEL_54;
      }
    }

    v28 = [v7 deviceStateContext];
    v29 = [v28 inAirplaneMode];
    v30 = [v5 deviceStateContext];
    v31 = [v30 inAirplaneMode];

    if (v29 != v31)
    {
      v15 = __atxlog_handle_relevance_model();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        +[ATXCandidateRelevanceModelDatasetGenerator isContextMismatchForPreviousContext:currentContext:];
      }

      goto LABEL_54;
    }

    v32 = [v7 locationMotionContext];
    v33 = [v32 currentLOI];
    v34 = [v5 locationMotionContext];
    v35 = [v34 currentLOI];
    v36 = v33;
    v37 = v35;
    v38 = v37;
    if (v36 == v37)
    {
    }

    else
    {
      if (!v36 || !v37)
      {

        goto LABEL_31;
      }

      v39 = [v36 isEqual:v37];

      if ((v39 & 1) == 0)
      {
LABEL_31:
        v15 = __atxlog_handle_relevance_model();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          +[ATXCandidateRelevanceModelDatasetGenerator isContextMismatchForPreviousContext:currentContext:];
        }

        goto LABEL_54;
      }
    }

    v40 = [v7 locationMotionContext];
    v41 = [v40 locationEnabled];
    v42 = [v5 locationMotionContext];
    v43 = [v42 locationEnabled];

    if (v41 != v43)
    {
      v15 = __atxlog_handle_relevance_model();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        +[ATXCandidateRelevanceModelDatasetGenerator isContextMismatchForPreviousContext:currentContext:];
      }

      goto LABEL_54;
    }

    v44 = [v7 locationMotionContext];
    v45 = [v44 geohash];
    v46 = [v5 locationMotionContext];
    v47 = [v46 geohash];

    if (v45 != v47)
    {
      v15 = __atxlog_handle_relevance_model();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        +[ATXCandidateRelevanceModelDatasetGenerator isContextMismatchForPreviousContext:currentContext:];
      }

      goto LABEL_54;
    }

    v48 = [v7 locationMotionContext];
    v49 = [v48 motionType];
    v50 = [v5 locationMotionContext];
    v51 = [v50 motionType];

    if (v49 != v51)
    {
      v15 = __atxlog_handle_relevance_model();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        +[ATXCandidateRelevanceModelDatasetGenerator isContextMismatchForPreviousContext:currentContext:];
      }

      goto LABEL_54;
    }

    v52 = [v7 ambientLightContext];
    v53 = [v52 ambientLightType];
    v54 = [v5 ambientLightContext];
    v55 = [v54 ambientLightType];

    if (v53 != v55)
    {
      v15 = __atxlog_handle_relevance_model();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        +[ATXCandidateRelevanceModelDatasetGenerator isContextMismatchForPreviousContext:currentContext:];
      }

      goto LABEL_54;
    }

    v56 = [v7 bluetoothEvent];
    v57 = [v5 bluetoothEvent];
    v58 = v57;
    if (v56 == v57)
    {
    }

    else
    {
      v59 = [v7 bluetoothEvent];
      v60 = [v5 bluetoothEvent];
      v61 = [v59 isEqual:v60];

      if ((v61 & 1) == 0)
      {
        v15 = __atxlog_handle_relevance_model();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          +[ATXCandidateRelevanceModelDatasetGenerator isContextMismatchForPreviousContext:currentContext:];
        }

        goto LABEL_54;
      }
    }

    v62 = [v7 inferredModeEvent];
    v63 = [v62 modeType];
    v64 = [v5 inferredModeEvent];
    v65 = [v64 modeType];

    if (v63 != v65)
    {
      v15 = __atxlog_handle_relevance_model();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        +[ATXCandidateRelevanceModelDatasetGenerator isContextMismatchForPreviousContext:currentContext:];
      }

      goto LABEL_54;
    }

    v66 = [v7 userFocusComputedModeEvent];
    v67 = [v66 semanticType];
    v68 = [v5 userFocusComputedModeEvent];
    v69 = [v68 semanticType];

    if (v67 == v69)
    {
      v70 = [v7 poiCategory];
      v71 = [v5 poiCategory];

      if (v70 != v71)
      {
        v15 = __atxlog_handle_relevance_model();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          +[ATXCandidateRelevanceModelDatasetGenerator isContextMismatchForPreviousContext:currentContext:];
        }

        goto LABEL_54;
      }

      v73 = [v7 microlocationVisitEvent];
      v74 = [v5 microlocationVisitEvent];
      v75 = v74;
      if (v73 != v74)
      {
        v76 = [v7 microlocationVisitEvent];
        v77 = [v5 microlocationVisitEvent];
        v78 = [v76 isEqual:v77];

        if ((v78 & 1) == 0)
        {
          v15 = __atxlog_handle_relevance_model();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            +[ATXCandidateRelevanceModelDatasetGenerator isContextMismatchForPreviousContext:currentContext:];
          }

          goto LABEL_54;
        }

LABEL_59:
        v8 = 0;
        goto LABEL_55;
      }
    }

    else
    {
      v73 = __atxlog_handle_relevance_model();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
      {
        +[ATXCandidateRelevanceModelDatasetGenerator isContextMismatchForPreviousContext:currentContext:];
      }
    }

    goto LABEL_59;
  }

LABEL_55:

  return v8;
}

- (void)candidateDatasetStream
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = 138412290;
  v7 = v4;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "%@ - Could not create candidateDatasetStream because one of the biome publishers needed is nil.", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

void __77__ATXCandidateRelevanceModelDatasetGenerator_eventAndRecentContextPublisher___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = 138412290;
  v8 = v5;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%@ - Event can't be deserialized in eventAndRecentContextPublisher", &v7, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

@end