@interface ATXAnchorModelPhase3Trainer
- (double)endSecondsAfterAnchorGivenHistoricalOffsets:(id)a3;
- (double)endSecondsAfterAnchorGivenHistoricalOffsets:(id)a3 startSecondsAfterAnchor:(double)a4;
- (double)startSecondsAfterAnchorGivenHistoricalOffsets:(id)a3;
- (id)initForAnchor:(id)a3;
- (id)initForAnchor:(id)a3 anchorModelDataStoreWrapper:(id)a4;
- (id)trainPhase3ForCandidate:(id)a3;
- (unint64_t)indexOfPercentile:(double)a3 array:(id)a4;
@end

@implementation ATXAnchorModelPhase3Trainer

- (id)initForAnchor:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(ATXAnchorModelPhase3Trainer *)self initForAnchor:v4 anchorModelDataStoreWrapper:v5];

  return v6;
}

- (id)initForAnchor:(id)a3 anchorModelDataStoreWrapper:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ATXAnchorModelPhase3Trainer;
  v9 = [(ATXAnchorModelPhase3Trainer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_anchor, a3);
    objc_storeStrong(&v10->_storeWrapper, a4);
    v11 = +[ATXAnchorModelHyperParameters sharedInstance];
    hyperParameters = v10->_hyperParameters;
    v10->_hyperParameters = v11;
  }

  return v10;
}

- (id)trainPhase3ForCandidate:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ATXAnchorModelPhase3Trainer *)v4 trainPhase3ForCandidate:v6, v7, v8, v9, v10, v11, v12];
  }

  v13 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_storeWrapper secondsAfterAnchorWhenCandidateOccurredForAnchor:self->_anchor candidateId:v4 onlyConsiderFirstOccurrencePerAnchor:1];
  if ([(ATXBackgroundActivityProtocol *)self->_runningTask didDefer])
  {
    v14 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      anchor = self->_anchor;
      v32 = 138412290;
      v33 = anchor;
      _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "Deferring training of additional anchors in the middle of training anchor model for anchor %@ because XPC activity asked for deferral. Not going to process any other anchors for now.", &v32, 0xCu);
    }

    goto LABEL_15;
  }

  v14 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_storeWrapper secondsAfterAnchorWhenCandidateOccurredForAnchor:self->_anchor candidateId:v4 onlyConsiderFirstOccurrencePerAnchor:0];
  if ([(ATXBackgroundActivityProtocol *)self->_runningTask didDefer])
  {
    v16 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_anchor;
      v32 = 138412290;
      v33 = v17;
      _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "Deferring training of additional anchors in the middle of training anchor model for anchor %@ because XPC activity asked for deferral. Not going to process any other anchors for now.", &v32, 0xCu);
    }

    goto LABEL_15;
  }

  if (!v13 || ![v13 count])
  {
LABEL_15:
    v29 = 0;
    goto LABEL_16;
  }

  [(ATXAnchorModelPhase3Trainer *)self startSecondsAfterAnchorGivenHistoricalOffsets:v13];
  v19 = v18;
  [(ATXAnchorModelPhase3Trainer *)self endSecondsAfterAnchorGivenHistoricalOffsets:v14 startSecondsAfterAnchor:?];
  v21 = v20;
  v22 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [(ATXAnchorModelPhase3Trainer *)v4 trainPhase3ForCandidate:v22, v23, v24, v25, v26, v27, v28];
  }

  v29 = [[ATXAnchorModelPredictionOffsetFromAnchorOccurrence alloc] initWithStartSecondsAfterAnchor:v19 endSecondsAfterAnchor:v21];
LABEL_16:

  objc_autoreleasePoolPop(v5);
  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

- (double)startSecondsAfterAnchorGivenHistoricalOffsets:(id)a3
{
  hyperParameters = self->_hyperParameters;
  v5 = a3;
  [(ATXAnchorModelHyperParameters *)hyperParameters percentileForStartOffsetFromAnchorForPhase3];
  v6 = [v5 objectAtIndexedSubscript:{-[ATXAnchorModelPhase3Trainer indexOfPercentile:array:](self, "indexOfPercentile:array:", v5)}];

  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (double)endSecondsAfterAnchorGivenHistoricalOffsets:(id)a3 startSecondsAfterAnchor:(double)a4
{
  [(ATXAnchorModelPhase3Trainer *)self endSecondsAfterAnchorGivenHistoricalOffsets:a3];
  v7 = v6;
  v8 = v6 - a4;
  [(ATXAnchorModelHyperParameters *)self->_hyperParameters maxDurationForAnchorModelPredictionInSecondsForPhase3];
  if (v8 > v9)
  {
    v10 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(ATXAnchorModelPhase3Trainer *)v10 endSecondsAfterAnchorGivenHistoricalOffsets:v11 startSecondsAfterAnchor:v12, v13, v14, v15, v16, v17];
    }

    [(ATXAnchorModelHyperParameters *)self->_hyperParameters maxDurationForAnchorModelPredictionInSecondsForPhase3];
    return v18 + a4;
  }

  [(ATXAnchorModelHyperParameters *)self->_hyperParameters minDurationForAnchorModelPredictionInSecondsForPhase3];
  if (v8 < v19)
  {
    v20 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [(ATXAnchorModelPhase3Trainer *)v20 endSecondsAfterAnchorGivenHistoricalOffsets:v21 startSecondsAfterAnchor:v22, v23, v24, v25, v26, v27];
    }

    [(ATXAnchorModelHyperParameters *)self->_hyperParameters minDurationForAnchorModelPredictionInSecondsForPhase3];
    return v18 + a4;
  }

  return v7;
}

- (double)endSecondsAfterAnchorGivenHistoricalOffsets:(id)a3
{
  hyperParameters = self->_hyperParameters;
  v5 = a3;
  [(ATXAnchorModelHyperParameters *)hyperParameters percentileForEndOffsetFromAnchorForPhase3];
  v6 = [v5 objectAtIndexedSubscript:{-[ATXAnchorModelPhase3Trainer indexOfPercentile:array:](self, "indexOfPercentile:array:", v5)}];

  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (unint64_t)indexOfPercentile:(double)a3 array:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (v5 && [v5 count])
  {
    v7 = (ceil([v6 count] * a3) + -1.0);
  }

  else
  {
    v8 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [ATXAnchorModelPhase3Trainer indexOfPercentile:v8 array:a3];
    }

    v7 = 0;
  }

  return v7;
}

- (void)trainPhase3ForCandidate:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_4(&dword_2263AA000, a2, a3, "Training Phase 3 (Time) for candidate: %@...", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)trainPhase3ForCandidate:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_4(&dword_2263AA000, a2, a3, "Done with Training Phase 3 (Time) for candidate: %@.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)endSecondsAfterAnchorGivenHistoricalOffsets:(uint64_t)a3 startSecondsAfterAnchor:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_4(&dword_2263AA000, a1, a3, "Computed duration for candidate prediction is too short %.2f. Replacing with globally specified min duaration.", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)endSecondsAfterAnchorGivenHistoricalOffsets:(uint64_t)a3 startSecondsAfterAnchor:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_4(&dword_2263AA000, a1, a3, "Computed duration for candidate prediction is too long %.2f. Replacing with globally specified max duaration.", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)indexOfPercentile:(os_log_t)log array:(double)a2 .cold.1(os_log_t log, double a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a2;
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "Tried to compute the %.2f percentile from an empty array.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end