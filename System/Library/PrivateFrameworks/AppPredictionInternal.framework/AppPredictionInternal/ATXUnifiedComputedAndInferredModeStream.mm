@interface ATXUnifiedComputedAndInferredModeStream
+ (id)currentUnifiedModeEventAtGivenTime:(id)a3;
- (ATXUnifiedComputedAndInferredModeStream)initWithComputedModePublisher:(id)a3 inferredModePublisher:(id)a4 startTime:(id)a5 endTime:(id)a6;
- (ATXUnifiedComputedAndInferredModeStream)initWithStartTime:(id)a3 toEndTime:(id)a4;
- (BOOL)checkForOverlappingTimeRanges:(id)a3;
- (void)addComputedModeEventToArrayStream:(id)a3 withStartTime:(double)a4 endTime:(double)a5;
- (void)addInferredModeEventToArrayStream:(id)a3 withStartTime:(double)a4 endTime:(double)a5;
- (void)computeUnifiedModeEventsFromStartTime:(id)a3 toEndTime:(id)a4;
@end

@implementation ATXUnifiedComputedAndInferredModeStream

- (ATXUnifiedComputedAndInferredModeStream)initWithStartTime:(id)a3 toEndTime:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = BiomeLibrary();
  v9 = [v8 UserFocus];
  v10 = [v9 ComputedMode];
  v11 = [v10 atx_publisherWithStartDate:v7 endDate:v6 maxEvents:0 lastN:0 reversed:0];

  v12 = BiomeLibrary();
  v13 = [v12 UserFocus];
  v14 = [v13 InferredMode];
  v15 = [v14 atx_publisherWithStartDate:v7 endDate:v6 maxEvents:0 lastN:0 reversed:0];

  v16 = [(ATXUnifiedComputedAndInferredModeStream *)self initWithComputedModePublisher:v11 inferredModePublisher:v15 startTime:v7 endTime:v6];
  return v16;
}

- (ATXUnifiedComputedAndInferredModeStream)initWithComputedModePublisher:(id)a3 inferredModePublisher:(id)a4 startTime:(id)a5 endTime:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = ATXUnifiedComputedAndInferredModeStream;
  v15 = [(ATXUnifiedComputedAndInferredModeStream *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_computedModePublisher, a3);
    objc_storeStrong(&v16->_inferredModePublisher, a4);
    v17 = objc_opt_new();
    modeEvents = v16->_modeEvents;
    v16->_modeEvents = v17;

    [(ATXUnifiedComputedAndInferredModeStream *)v16 computeUnifiedModeEventsFromStartTime:v13 toEndTime:v14];
  }

  return v16;
}

- (void)computeUnifiedModeEventsFromStartTime:(id)a3 toEndTime:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__36;
  v19[4] = __Block_byref_object_dispose__36;
  v20 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__36;
  v17[4] = __Block_byref_object_dispose__36;
  v18 = 0;
  v8 = [(BPSPublisher *)self->_computedModePublisher orderedMergeWithOther:self->_inferredModePublisher comparator:&__block_literal_global_73];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __91__ATXUnifiedComputedAndInferredModeStream_computeUnifiedModeEventsFromStartTime_toEndTime___block_invoke_2;
  v13[3] = &unk_27859AB00;
  v15 = v19;
  v13[4] = self;
  v9 = v7;
  v14 = v9;
  v16 = v17;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __91__ATXUnifiedComputedAndInferredModeStream_computeUnifiedModeEventsFromStartTime_toEndTime___block_invoke_40;
  v12[3] = &unk_27859AB28;
  v12[4] = self;
  v12[5] = v17;
  v12[6] = v19;
  v10 = [v8 sinkWithCompletion:v13 receiveInput:v12];
  [(NSMutableArray *)self->_modeEvents sortUsingComparator:&__block_literal_global_47];
  if ([(ATXUnifiedComputedAndInferredModeStream *)self checkForOverlappingTimeRanges:self->_modeEvents])
  {
    v11 = __atxlog_handle_notification_categorization();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [ATXUnifiedComputedAndInferredModeStream computeUnifiedModeEventsFromStartTime:v11 toEndTime:?];
    }
  }

  objc_storeStrong(&self->_unifiedModeEventsInTimeRange, self->_modeEvents);

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);
}

uint64_t __91__ATXUnifiedComputedAndInferredModeStream_computeUnifiedModeEventsFromStartTime_toEndTime___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __91__ATXUnifiedComputedAndInferredModeStream_computeUnifiedModeEventsFromStartTime_toEndTime___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = __atxlog_handle_notification_categorization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __91__ATXUnifiedComputedAndInferredModeStream_computeUnifiedModeEventsFromStartTime_toEndTime___block_invoke_2_cold_1(v3, v5);
    }
  }

  v6 = [v3 error];
  if (v6 || !*(*(*(a1 + 48) + 8) + 40))
  {
  }

  else
  {
    v8 = [*(*(*(a1 + 48) + 8) + 40) eventBody];
    v9 = [v8 starting];

    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = *(*(*(a1 + 48) + 8) + 40);
      [v11 timestamp];
      v13 = v12;
      [*(a1 + 40) timeIntervalSinceReferenceDate];
      [v10 addComputedModeEventToArrayStream:v11 withStartTime:v13 endTime:v14];
      goto LABEL_9;
    }
  }

  v7 = [v3 error];
  if (v7 || !*(*(*(a1 + 56) + 8) + 40))
  {
  }

  else
  {
    v15 = [*(*(*(a1 + 56) + 8) + 40) eventBody];
    v16 = [v15 isStart];

    if (v16)
    {
      v17 = *(a1 + 32);
      v18 = *(*(*(a1 + 56) + 8) + 40);
      [v18 timestamp];
      v20 = v19;
      [*(a1 + 40) timeIntervalSinceReferenceDate];
      [v17 addInferredModeEventToArrayStream:v18 withStartTime:v20 endTime:v21];
    }
  }

LABEL_9:
}

void __91__ATXUnifiedComputedAndInferredModeStream_computeUnifiedModeEventsFromStartTime_toEndTime___block_invoke_40(void *a1, void *a2)
{
  v48 = a2;
  v3 = [v48 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [v48 eventBody];
  v6 = v5;
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    v18 = objc_opt_isKindOfClass();

    if ((v18 & 1) == 0)
    {
      goto LABEL_27;
    }

    v6 = [v48 eventBody];
    if ([v6 isStart])
    {
      if (!*(*(a1[6] + 8) + 40))
      {
        v17 = a1[5];
        goto LABEL_11;
      }

      goto LABEL_26;
    }

    v34 = *(*(a1[5] + 8) + 40);
    if (v34)
    {
      v35 = [v34 eventBody];
      v36 = [v35 modeType];
      if (v36 == [v6 modeType])
      {
        [v48 timestamp];
        v38 = v37;
        [*(*(a1[5] + 8) + 40) timestamp];
        v40 = v39;

        if (v38 > v40)
        {
          v41 = a1[4];
          v42 = *(*(a1[5] + 8) + 40);
          [v42 timestamp];
          v44 = v43;
          [v48 timestamp];
          [v41 addInferredModeEventToArrayStream:v42 withStartTime:v44 endTime:v45];
        }
      }

      else
      {
      }
    }

    v46 = a1[5];
LABEL_24:
    v47 = *(v46 + 8);
    v21 = *(v47 + 40);
    *(v47 + 40) = 0;
    goto LABEL_25;
  }

  if (![v5 starting])
  {
    v22 = *(*(a1[6] + 8) + 40);
    if (v22)
    {
      v23 = [v22 eventBody];
      v24 = [v23 semanticType];
      if (v24 == [v6 semanticType])
      {
        [v48 timestamp];
        v26 = v25;
        [*(*(a1[6] + 8) + 40) timestamp];
        v28 = v27;

        if (v26 > v28)
        {
          v29 = a1[4];
          v30 = *(*(a1[6] + 8) + 40);
          [v30 timestamp];
          v32 = v31;
          [v48 timestamp];
          [v29 addComputedModeEventToArrayStream:v30 withStartTime:v32 endTime:v33];
        }
      }

      else
      {
      }
    }

    v46 = a1[6];
    goto LABEL_24;
  }

  if (!*(*(a1[5] + 8) + 40))
  {
LABEL_6:
    v17 = a1[6];
LABEL_11:
    v19 = *(v17 + 8);
    v20 = v48;
    v21 = *(v19 + 40);
    *(v19 + 40) = v20;
LABEL_25:

    goto LABEL_26;
  }

  [v6 semanticType];
  v7 = BMUserFocusInferredModeTypeFromBMUserFocusModeComputedSemanticType();
  v8 = [*(*(a1[5] + 8) + 40) eventBody];
  v9 = [v8 modeType];

  if (v9 != v7)
  {
    v10 = a1[4];
    v11 = *(*(a1[5] + 8) + 40);
    [v11 timestamp];
    v13 = v12;
    [v48 timestamp];
    [v10 addInferredModeEventToArrayStream:v11 withStartTime:v13 endTime:v14];
    v15 = *(a1[5] + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = 0;

    goto LABEL_6;
  }

LABEL_26:

LABEL_27:
}

uint64_t __91__ATXUnifiedComputedAndInferredModeStream_computeUnifiedModeEventsFromStartTime_toEndTime___block_invoke_2_44(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startTime];
  v6 = [v4 startTime];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)addComputedModeEventToArrayStream:(id)a3 withStartTime:(double)a4 endTime:(double)a5
{
  v8 = [a3 eventBody];
  v9 = [v8 atx_dndModeSemanticType];

  v10 = [MEMORY[0x277CEB440] sharedInstance];
  v11 = [v10 atxModeForDNDSemanticType:v9];

  v14 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:a4];
  v12 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:a5];
  v13 = [[ATXUnifiedModeEvent alloc] initWithMode:v11 startTime:v14 endTime:v12];
  [(NSMutableArray *)self->_modeEvents addObject:v13];
}

- (void)addInferredModeEventToArrayStream:(id)a3 withStartTime:(double)a4 endTime:(double)a5
{
  v8 = [a3 eventBody];
  [v8 modeType];
  BMUserFocusInferredModeTypeToActivity();
  v9 = ATXModeFromActivityType();

  v12 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:a4];
  v10 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:a5];
  v11 = [[ATXUnifiedModeEvent alloc] initWithMode:v9 startTime:v12 endTime:v10];
  [(NSMutableArray *)self->_modeEvents addObject:v11];
}

- (BOOL)checkForOverlappingTimeRanges:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEAA8] distantPast];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    do
    {
      v8 = 0;
      v9 = v4;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v8);
        v11 = [v10 startTime];
        if ([v9 compare:v11] == -1)
        {
        }

        else
        {
          v12 = [v10 startTime];
          v13 = [v9 compare:v12];

          if (v13)
          {
            LOBYTE(v6) = 1;
            v4 = v9;
            goto LABEL_12;
          }
        }

        v4 = [v10 endTime];

        ++v8;
        v9 = v4;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

LABEL_12:

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)currentUnifiedModeEventAtGivenTime:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D41C60] currrentModeEventAtGivenTime:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 eventBody];
    [v6 atx_dndModeSemanticType];
    v7 = ATXModeForDNDSemanticType();

    v8 = MEMORY[0x277CBEAA8];
    [v5 timestamp];
    v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
    v10 = [[ATXUnifiedModeEvent alloc] initWithMode:v7 startTime:v9 endTime:0];
  }

  else
  {
    v9 = [MEMORY[0x277D41C68] currentModeEventAtGivenTime:v3];
    v11 = [v9 eventBody];
    [v11 modeType];
    BMUserFocusInferredModeTypeToActivity();
    v12 = ATXModeFromActivityType();

    v13 = MEMORY[0x277CBEAA8];
    [v9 timestamp];
    v14 = [v13 dateWithTimeIntervalSinceReferenceDate:?];
    v10 = [[ATXUnifiedModeEvent alloc] initWithMode:v12 startTime:v14 endTime:0];
  }

  return v10;
}

void __91__ATXUnifiedComputedAndInferredModeStream_computeUnifiedModeEventsFromStartTime_toEndTime___block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXUnifiedComputedAndInferredModeStream: Error fetching mode streams: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end