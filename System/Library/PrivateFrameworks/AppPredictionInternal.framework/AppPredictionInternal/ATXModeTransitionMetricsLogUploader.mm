@interface ATXModeTransitionMetricsLogUploader
- (ATXModeTransitionMetricsLogUploader)init;
- (ATXModeTransitionMetricsLogUploader)initWithComputedModeStream:(id)a3 inferredModeStream:(id)a4;
- (BOOL)_previousModeEndEvent:(id)a3 isContiguousWithModeStartEvent:(id)a4;
- (id)_modeTransitionBookmark;
- (id)_timeBasedMergedPublisher;
- (id)matchingInferredModeEvent:(id)a3 inferredModeEvents:(id)a4;
- (id)processInferredModeEvents:(id)a3 beforeTimestamp:(double)a4;
- (void)_logModeTransitionMetricWithPreviousModeStart:(id)a3 previousModeEnd:(id)a4 currentModeStart:(id)a5 matchingPreviousInferredModeEvent:(id)a6 matchingCurrentInferredModeEvent:(id)a7;
- (void)_logWithPreviousInferredModeEvent:(id)a3 currentInferredModeEvent:(id)a4 withDuration:(id)a5;
- (void)_populateInferredModeFieldsOnTheModeTransitionMetric:(id)a3 withPreviousInferredModeEvent:(id)a4 currentInferredModeEvent:(id)a5 duration:(id)a6;
- (void)uploadLogsToCoreAnalyticsWithXPCActivity:(id)a3;
@end

@implementation ATXModeTransitionMetricsLogUploader

- (ATXModeTransitionMetricsLogUploader)init
{
  v3 = BiomeLibrary();
  v4 = [v3 UserFocus];
  v5 = [v4 ComputedMode];
  v6 = BiomeLibrary();
  v7 = [v6 UserFocus];
  v8 = [v7 InferredMode];
  v9 = [(ATXModeTransitionMetricsLogUploader *)self initWithComputedModeStream:v5 inferredModeStream:v8];

  return v9;
}

- (ATXModeTransitionMetricsLogUploader)initWithComputedModeStream:(id)a3 inferredModeStream:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = ATXModeTransitionMetricsLogUploader;
  v9 = [(ATXModeTransitionMetricsLogUploader *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_computedModeStream, a3);
    objc_storeStrong(&v10->_inferredModeStream, a4);
    v11 = [MEMORY[0x277CEB440] sharedInstance];
    client = v10->_client;
    v10->_client = v11;

    v13 = [(ATXDNDModeConfigurationClient *)v10->_client getAllModeConfigurationsWithoutCache];
    modeConfigurations = v10->_modeConfigurations;
    v10->_modeConfigurations = v13;
  }

  return v10;
}

- (void)uploadLogsToCoreAnalyticsWithXPCActivity:(id)a3
{
  v4 = a3;
  v5 = [(ATXModeTransitionMetricsLogUploader *)self _timeBasedMergedPublisher];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__2;
  v32 = __Block_byref_object_dispose__2;
  v33 = objc_opt_new();
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__2;
  v26[4] = __Block_byref_object_dispose__2;
  v27 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__2;
  v24[4] = __Block_byref_object_dispose__2;
  v25 = 0;
  v6 = [(ATXModeTransitionMetricsLogUploader *)self _modeTransitionBookmark];
  v7 = [v6 bookmark];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __80__ATXModeTransitionMetricsLogUploader_uploadLogsToCoreAnalyticsWithXPCActivity___block_invoke;
  v22[3] = &unk_278596E58;
  v8 = v6;
  v23 = v8;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __80__ATXModeTransitionMetricsLogUploader_uploadLogsToCoreAnalyticsWithXPCActivity___block_invoke_2;
  v17[3] = &unk_278596E80;
  v19 = v26;
  v20 = v24;
  v17[4] = self;
  v21 = &v28;
  v9 = v4;
  v18 = v9;
  v10 = [v5 drivableSinkWithBookmark:v7 completion:v22 shouldContinue:v17];

  v11 = v29[5];
  v12 = [MEMORY[0x277CBEAA8] now];
  [v12 timeIntervalSinceReferenceDate];
  v13 = [(ATXModeTransitionMetricsLogUploader *)self processInferredModeEvents:v11 beforeTimestamp:?];

  v16 = 0;
  [v8 saveBookmarkWithError:&v16];
  v14 = v16;
  if (v14)
  {
    v15 = __atxlog_handle_modes();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(ATXModeTransitionMetricsLogUploader *)v14 uploadLogsToCoreAnalyticsWithXPCActivity:v15];
    }
  }

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v26, 8);

  _Block_object_dispose(&v28, 8);
}

uint64_t __80__ATXModeTransitionMetricsLogUploader_uploadLogsToCoreAnalyticsWithXPCActivity___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = [v4 eventBody];
  v8 = v7;
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    v10 = objc_opt_isKindOfClass();

    if (v10)
    {
      [*(*(*(a1 + 64) + 8) + 40) addObject:v4];
    }

    goto LABEL_18;
  }

  if (!v7)
  {
LABEL_21:

    v29 = 1;
    goto LABEL_22;
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v11 = [v7 starting];
    v12 = (*(*(a1 + 48) + 8) + 40);
    if (v11)
    {
LABEL_20:
      objc_storeStrong(v12, a2);
      goto LABEL_21;
    }

    if (!*v12)
    {
      goto LABEL_11;
    }
  }

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    if ([v8 starting])
    {
      v9 = *(*(*(a1 + 48) + 8) + 40);
      goto LABEL_11;
    }

    v12 = (*(*(a1 + 56) + 8) + 40);
    goto LABEL_20;
  }

LABEL_11:
  v13 = *(*(*(a1 + 64) + 8) + 40);
  v14 = [*(a1 + 32) matchingInferredModeEvent:? inferredModeEvents:?];
  if (v14)
  {
    [*(*(*(a1 + 64) + 8) + 40) removeObject:v14];
  }

  v15 = MEMORY[0x277CBEB18];
  v16 = *(a1 + 32);
  v17 = *(*(*(a1 + 64) + 8) + 40);
  [*(*(*(a1 + 48) + 8) + 40) timestamp];
  v18 = [v16 processInferredModeEvents:v17 beforeTimestamp:?];
  v19 = [v15 arrayWithArray:v18];
  v20 = *(*(a1 + 64) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  if (*(*(*(a1 + 48) + 8) + 40) && *(*(*(a1 + 56) + 8) + 40) && [v8 starting])
  {
    v31 = [*(a1 + 32) matchingInferredModeEvent:v4 inferredModeEvents:*(*(*(a1 + 64) + 8) + 40)];
    v22 = *(a1 + 32);
    v23 = *(*(*(a1 + 48) + 8) + 40);
    v24 = *(*(*(a1 + 56) + 8) + 40);
    v25 = [v14 eventBody];
    v26 = [v31 eventBody];
    [v22 _logModeTransitionMetricWithPreviousModeStart:v23 previousModeEnd:v24 currentModeStart:v4 matchingPreviousInferredModeEvent:v25 matchingCurrentInferredModeEvent:v26];

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    v27 = *(*(a1 + 56) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = 0;
  }

LABEL_18:
  v29 = [*(a1 + 40) didDefer] ^ 1;
LABEL_22:

  return v29;
}

- (id)matchingInferredModeEvent:(id)a3 inferredModeEvents:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 eventBody];
  [v7 semanticType];
  v8 = BMUserFocusInferredModeTypeFromBMUserFocusModeComputedSemanticType();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [v14 eventBody];
        if ([v15 isStart])
        {
          if ([v15 modeType] == v8)
          {
            [v5 timestamp];
            v17 = v16;
            [v14 timestamp];
            if (v17 - v18 <= 1.0 && [v7 updateReason] == 3)
            {
              v19 = v14;

              goto LABEL_14;
            }
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_14:

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)processInferredModeEvents:(id)a3 beforeTimestamp:(double)a4
{
  v6 = a3;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__2;
  v12[4] = __Block_byref_object_dispose__2;
  v13 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__2;
  v10[4] = __Block_byref_object_dispose__2;
  v11 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__ATXModeTransitionMetricsLogUploader_processInferredModeEvents_beforeTimestamp___block_invoke;
  v9[3] = &unk_278596EA8;
  *&v9[7] = a4;
  v9[5] = v12;
  v9[6] = v10;
  v9[4] = self;
  v7 = [v6 _pas_filteredArrayWithTest:v9];
  _Block_object_dispose(v10, 8);

  _Block_object_dispose(v12, 8);

  return v7;
}

BOOL __81__ATXModeTransitionMetricsLogUploader_processInferredModeEvents_beforeTimestamp___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 eventBody];
  [v4 timestamp];
  v7 = v6;
  v8 = *(a1 + 56);
  if (v6 < v8)
  {
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v20 = [v5 isStart];
      v21 = *(*(a1 + 40) + 8);
      if (v20)
      {
        v22 = v4;
        v17 = *(v21 + 40);
        *(v21 + 40) = v22;
        goto LABEL_16;
      }

      if (!*(v21 + 40))
      {
        goto LABEL_17;
      }
    }

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      if (([v5 isStart] & 1) == 0)
      {
        v23 = *(*(a1 + 48) + 8);
        v24 = v4;
        v17 = *(v23 + 40);
        *(v23 + 40) = v24;
        goto LABEL_16;
      }

      if (!*(*(*(a1 + 40) + 8) + 40))
      {
        goto LABEL_17;
      }
    }

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      if ([v5 isStart])
      {
        v9 = [*(*(*(a1 + 40) + 8) + 40) eventBody];
        v10 = [v9 modeType];
        v11 = [*(*(*(a1 + 48) + 8) + 40) eventBody];
        v12 = [v11 modeType];

        if (v10 == v12)
        {
          v13 = MEMORY[0x277CCABB0];
          [*(*(*(a1 + 48) + 8) + 40) timestamp];
          v15 = v14;
          [*(*(*(a1 + 40) + 8) + 40) timestamp];
          v17 = [v13 numberWithDouble:v15 - v16];
          [*(a1 + 32) _logWithPreviousInferredModeEvent:*(*(*(a1 + 40) + 8) + 40) currentInferredModeEvent:v4 withDuration:v17];
          objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
          v18 = *(*(a1 + 48) + 8);
          v19 = *(v18 + 40);
          *(v18 + 40) = 0;

LABEL_16:
        }
      }
    }
  }

LABEL_17:

  return v7 >= v8;
}

- (void)_logWithPreviousInferredModeEvent:(id)a3 currentInferredModeEvent:(id)a4 withDuration:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_new();
  v12 = [v10 eventBody];

  v13 = [v9 eventBody];

  [(ATXModeTransitionMetricsLogUploader *)self _populateInferredModeFieldsOnTheModeTransitionMetric:v11 withPreviousInferredModeEvent:v12 currentInferredModeEvent:v13 duration:v8];
  v14 = __atxlog_handle_modes();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v11 coreAnalyticsDictionary];
    v17 = 138412290;
    v18 = v15;
    _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "ATXModeTransitionMetricsLogUploader: Uploading inferred mode metric to CA: %@", &v17, 0xCu);
  }

  [v11 logToCoreAnalytics];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_populateInferredModeFieldsOnTheModeTransitionMetric:(id)a3 withPreviousInferredModeEvent:(id)a4 currentInferredModeEvent:(id)a5 duration:(id)a6
{
  v9 = MEMORY[0x277CCABB0];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  [v12 confidenceScore];
  v14 = [v9 numberWithDouble:?];
  [v13 setInferredModeConfidenceScore:v14];

  [v13 setInferredModeDuration:v10];
  v15 = [v12 originAnchorType];
  [v13 setInferredModeOriginAnchorType:v15];

  [v12 modeType];
  v16 = BMUserFocusInferredModeTypeAsString();
  [v13 setInferredModeType:v16];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v12, "uiLocation")}];
  [v13 setInferredModeUILocation:v17];

  [v12 origin];
  v18 = BMUserFocusInferredModeOriginAsString();
  [v13 setPreviousModeOrigin:v18];

  [v11 origin];
  v19 = BMUserFocusInferredModeOriginAsString();
  [v13 setCurrentModeOrigin:v19];
}

- (id)_timeBasedMergedPublisher
{
  v3 = [(BMStream *)self->_inferredModeStream atx_publisherFromStartTime:0];
  v4 = [(BMStream *)self->_computedModeStream atx_publisherFromStartTime:0];
  v5 = [v4 orderedMergeWithOther:v3 comparator:&__block_literal_global_7];

  return v5;
}

uint64_t __64__ATXModeTransitionMetricsLogUploader__timeBasedMergedPublisher__block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)_logModeTransitionMetricWithPreviousModeStart:(id)a3 previousModeEnd:(id)a4 currentModeStart:(id)a5 matchingPreviousInferredModeEvent:(id)a6 matchingCurrentInferredModeEvent:(id)a7
{
  v76 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v61 = a6;
  v63 = a7;
  v15 = [v13 eventBody];
  v16 = [v14 eventBody];
  v66 = [v15 modeSemanticTypeAsString];
  [v13 timestamp];
  v18 = v17;
  [v12 timestamp];
  v20 = v18 - v19;
  v21 = [v15 updateReason];
  v65 = [v15 modeUpdateReasonAsString];
  v22 = [v15 modeUpdateSourceAsString];
  v23 = [v16 modeSemanticTypeAsString];
  v24 = [v16 modeUpdateReasonAsString];
  v64 = self;
  v60 = v12;
  v67 = v14;
  v68 = v13;
  v55 = [(ATXModeTransitionMetricsLogUploader *)self _previousModeEndEvent:v13 isContiguousWithModeStartEvent:v14];
  if (!v55)
  {

    v23 = @"No Mode";
    v24 = @"Fallback";
  }

  v56 = v24;
  v57 = v23;
  v58 = v22;
  v25 = [[ATXModeTransitionMetric alloc] initWithPreviousModeSemanticType:v66 previousModeDuration:v21 == 2 previousModeHadScheduledExit:v65 exitReason:v24 enterReason:0 transitionDeviceType:v22 transitionSource:v20 nextModeSemanticType:v23];
  modeConfigurations = self->_modeConfigurations;
  v62 = v16;
  v27 = [v16 semanticModeIdentifier];
  v28 = [(NSDictionary *)modeConfigurations objectForKeyedSubscript:v27];

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v59 = v28;
  v29 = [v28 triggers];
  v30 = [v29 countByEnumeratingWithState:&v69 objects:v75 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v70;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v70 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v69 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v34 isEnabled])
        {
          [(ATXModeTransitionMetric *)v25 setLocationBasedSchedulingEnabled:1];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v34 isEnabled])
          {
            [(ATXModeTransitionMetric *)v25 setTimeBasedSchedulingEnabled:1];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v34 isEnabled])
            {
              [(ATXModeTransitionMetric *)v25 setAppBasedSchedulingEnabled:1];
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v34 isEnabled])
              {
                [(ATXModeTransitionMetric *)v25 setSmartActivationEnabled:1];
              }
            }
          }
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v69 objects:v75 count:16];
    }

    while (v31);
  }

  v35 = v63;
  v36 = v61;
  [(ATXModeTransitionMetricsLogUploader *)v64 _populateInferredModeFieldsOnTheModeTransitionMetric:v25 withPreviousInferredModeEvent:v61 currentInferredModeEvent:v63 duration:0];
  v37 = __atxlog_handle_modes();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = [(ATXModeTransitionMetric *)v25 coreAnalyticsDictionary];
    *buf = 138412290;
    v74 = v38;
    _os_log_impl(&dword_2263AA000, v37, OS_LOG_TYPE_DEFAULT, "ATXModeTransitionMetricsLogUploader: Uploading mode transition metric to CA: %@", buf, 0xCu);
  }

  [(_ATXCoreAnalyticsMetric *)v25 logToCoreAnalytics];
  v39 = v66;
  if (v55)
  {
    v40 = v25;
    v41 = v60;
    v43 = v58;
    v42 = v59;
    v44 = v56;
    v45 = v57;
    v46 = v65;
  }

  else
  {

    [v67 timestamp];
    v48 = v47;
    [v68 timestamp];
    v50 = v48 - v49;
    v46 = [v62 modeUpdateReasonAsString];

    v44 = [v62 modeUpdateReasonAsString];

    v43 = [v62 modeUpdateSourceAsString];

    v51 = [v62 modeSemanticTypeAsString];

    v40 = [[ATXModeTransitionMetric alloc] initWithPreviousModeSemanticType:@"No Mode" previousModeDuration:0 previousModeHadScheduledExit:v46 exitReason:v44 enterReason:0 transitionDeviceType:v43 transitionSource:v50 nextModeSemanticType:v51];
    v52 = __atxlog_handle_modes();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = [(ATXModeTransitionMetric *)v40 coreAnalyticsDictionary];
      *buf = 138412290;
      v74 = v53;
      _os_log_impl(&dword_2263AA000, v52, OS_LOG_TYPE_DEFAULT, "ATXModeTransitionMetricsLogUploader: Uploading mode transition metric to CA: %@", buf, 0xCu);

      v36 = v61;
    }

    [(_ATXCoreAnalyticsMetric *)v40 logToCoreAnalytics];
    v45 = v51;
    v39 = @"No Mode";
    v41 = v60;
    v35 = v63;
    v42 = v59;
  }

  v54 = *MEMORY[0x277D85DE8];
}

- (BOOL)_previousModeEndEvent:(id)a3 isContiguousWithModeStartEvent:(id)a4
{
  v5 = a3;
  [a4 timestamp];
  v7 = v6;
  [v5 timestamp];
  v9 = v8;

  return v7 - v9 < 10.0;
}

- (id)_modeTransitionBookmark
{
  v2 = objc_alloc(MEMORY[0x277CBEBC0]);
  v3 = [MEMORY[0x277CEBCB0] bookmarksPathFile:@"kModeTransitionMetricsBookmarkFile"];
  v4 = [v2 initFileURLWithPath:v3];

  v5 = [MEMORY[0x277CEBBF8] bookmarkFromURLPath:v4 maxFileSize:1000000 versionNumber:&unk_283A551C0];
  if (!v5)
  {
    v5 = [objc_alloc(MEMORY[0x277CEBBF8]) initWithURLPath:v4 versionNumber:&unk_283A551C0 bookmark:0 metadata:0];
  }

  return v5;
}

- (void)uploadLogsToCoreAnalyticsWithXPCActivity:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXModeTransitionMetricsLogUploader: Unable to save activity suggestion bookmark, error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end