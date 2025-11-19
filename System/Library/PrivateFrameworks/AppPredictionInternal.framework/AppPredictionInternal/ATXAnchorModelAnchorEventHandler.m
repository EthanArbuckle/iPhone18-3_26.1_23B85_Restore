@interface ATXAnchorModelAnchorEventHandler
- (ATXAnchorModelAnchorEventHandler)initWithAnchor:(id)a3 anchorEvent:(id)a4;
- (ATXAnchorModelAnchorEventHandler)initWithAnchor:(id)a3 anchorEvent:(id)a4 dataStoreWrapper:(id)a5 hyperParameters:(id)a6 tracker:(id)a7;
- (BOOL)predictionIsHighConfidence:(id)a3;
- (BOOL)predictionIsMediumConfidence:(id)a3;
- (double)predictionScoreFromTrainingResult:(id)a3;
- (id)anchorModelPredictionFromTrainingResult:(id)a3 classificationResult:(id)a4;
- (id)dateIntervalFromTrainingResult:(id)a3;
- (id)predictionForCandidateFromTrainingResult:(id)a3;
- (id)predictionsForAnchorEvent;
- (void)_logPhaseFilteredMetricFromTrainingResults:(id)a3 anchorModelPredictions:(id)a4;
@end

@implementation ATXAnchorModelAnchorEventHandler

- (ATXAnchorModelAnchorEventHandler)initWithAnchor:(id)a3 anchorEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = +[ATXAnchorModelHyperParameters sharedInstance];
  v10 = objc_opt_new();
  v11 = [(ATXAnchorModelAnchorEventHandler *)self initWithAnchor:v7 anchorEvent:v6 dataStoreWrapper:v8 hyperParameters:v9 tracker:v10];

  return v11;
}

- (ATXAnchorModelAnchorEventHandler)initWithAnchor:(id)a3 anchorEvent:(id)a4 dataStoreWrapper:(id)a5 hyperParameters:(id)a6 tracker:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v28.receiver = self;
  v28.super_class = ATXAnchorModelAnchorEventHandler;
  v17 = [(ATXAnchorModelAnchorEventHandler *)&v28 init];
  if (v17)
  {
    v18 = [v12 copy];
    anchor = v17->_anchor;
    v17->_anchor = v18;

    [v13 identifier];
    obj = a6;
    v20 = v16;
    v21 = v15;
    v23 = v22 = v14;
    [(ATXAnchor *)v17->_anchor setAnchorEventIdentifier:v23];

    v14 = v22;
    v15 = v21;
    v16 = v20;
    objc_storeStrong(&v17->_anchorEvent, a4);
    objc_storeStrong(&v17->_dataStoreWrapper, a5);
    objc_storeStrong(&v17->_tracker, a7);
    v24 = [objc_opt_class() anchorOccurenceDateFromDuetEvent:v13];
    baseDate = v17->_baseDate;
    v17->_baseDate = v24;

    objc_storeStrong(&v17->_hyperParameters, obj);
  }

  return v17;
}

- (id)predictionsForAnchorEvent
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [(ATXAnchorModelDataStoreWrapperProtocol *)self->_dataStoreWrapper trainingResultsForAnchor:self->_anchor];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = [(ATXAnchorModelAnchorEventHandler *)self predictionForCandidateFromTrainingResult:v9];
        if ([v11 shouldPredictCandidate])
        {
          v12 = [(ATXAnchorModelAnchorEventHandler *)self anchorModelPredictionFromTrainingResult:v9 classificationResult:v11];
          [v3 addObject:v12];
          v13 = __atxlog_handle_anchor();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v21 = v12;
            _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "Inference: Will predict candidate: %@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v10);
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v6);
  }

  [(ATXAnchorModelAnchorEventHandler *)self _logPhaseFilteredMetricFromTrainingResults:v4 anchorModelPredictions:v3];
  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)predictionForCandidateFromTrainingResult:(id)a3
{
  v4 = a3;
  v5 = [v4 candidateClassifier];
  v6 = [v5 classifyCandidateForAnchorOccurrence:self->_anchorEvent trainingResult:v4];

  return v6;
}

- (id)anchorModelPredictionFromTrainingResult:(id)a3 classificationResult:(id)a4
{
  v5 = a3;
  [(ATXAnchorModelAnchorEventHandler *)self predictionScoreFromTrainingResult:v5];
  v7 = v6;
  v8 = [ATXAnchorModelPrediction alloc];
  v32 = [(ATXAnchor *)self->_anchor anchorTypeString];
  anchorEvent = self->_anchorEvent;
  v10 = [v5 candidateType];
  v11 = [v5 candidateId];
  v31 = [(ATXAnchorModelAnchorEventHandler *)self dateIntervalFromTrainingResult:v5];
  v34 = [v5 phase1TrainingResult];
  v29 = [v34 numUniqueAnchorOccurrencesWithUniqueCandidateOccurrence];
  v33 = [v5 phase1TrainingResult];
  [v33 posteriorProbability];
  v13 = v12;
  v30 = [v5 phase1TrainingResult];
  [v30 classConditionalProbability];
  v15 = v14;
  v16 = [v5 phase1TrainingResult];
  [v16 standardDeviationOfOffsetFromAnchor];
  v18 = v17;
  v19 = [v5 phase1TrainingResult];
  [v19 anchorPopularity];
  v21 = v20;
  v22 = [v5 phase1TrainingResult];
  [v22 globalPopularity];
  v24 = v23;
  v25 = [v5 offsetFromAnchorToShowPrediction];
  v26 = [v5 candidateClassifier];

  v27 = [(ATXAnchorModelPrediction *)v8 initWithAnchorType:v32 anchorEvent:anchorEvent candidateType:v10 candidateId:v11 dateIntervalForPrediction:v31 score:v29 numUniqueOccurrencesAfterAnchor:v7 posteriorProbability:v13 classConditionalProbability:v15 standardDeviationOfOffsetFromAnchor:v18 anchorPopularity:v21 globalPopularity:v24 offsetFromAnchorToShowPrediction:v25 candidateClassifier:v26];

  return v27;
}

- (double)predictionScoreFromTrainingResult:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  [v4 scoreForTrainingResult:v3];
  v6 = v5;
  v7 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218242;
    v11 = v6;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "Score for training result: %.2f, training result: %@", &v10, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)predictionIsHighConfidence:(id)a3
{
  v4 = a3;
  hyperParameters = self->_hyperParameters;
  v6 = [v4 anchor];
  v7 = [(ATXAnchorModelHyperParameters *)hyperParameters minNumUniqueAnchorOccurrencesWithUniqueCandidateOccurrencesForHighConfidencePredictionForAnchor:v6];

  v8 = [v4 phase1TrainingResult];
  v9 = [v8 numUniqueAnchorOccurrencesWithUniqueCandidateOccurrence];

  if (v9 >= v7)
  {
    v11 = self->_hyperParameters;
    v12 = [v4 anchor];
    [(ATXAnchorModelHyperParameters *)v11 minClassConditionalProbabilityForHighConfidencePredictionForAnchor:v12];
    v14 = v13;

    v15 = self->_hyperParameters;
    v16 = [v4 anchor];
    [(ATXAnchorModelHyperParameters *)v15 minPosteriorProbabilityForHighConfidencePredictionForAnchor:v16];
    v18 = v17;

    v19 = [v4 phase1TrainingResult];
    [v19 classConditionalProbability];
    v21 = v20;
    if (v20 >= v14 && ([v4 phase1TrainingResult], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "classConditionalProbability"), v22 <= 1.0))
    {
      v10 = 1;
    }

    else
    {
      v23 = [v4 phase1TrainingResult];
      [v23 posteriorProbability];
      v10 = v24 >= v18;

      if (v21 < v14)
      {
        goto LABEL_9;
      }
    }

LABEL_9:
    goto LABEL_10;
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (BOOL)predictionIsMediumConfidence:(id)a3
{
  v4 = a3;
  hyperParameters = self->_hyperParameters;
  v6 = [v4 anchor];
  v7 = [(ATXAnchorModelHyperParameters *)hyperParameters minNumUniqueAnchorOccurrencesWithUniqueCandidateOccurrencesForMediumConfidencePredictionForAnchor:v6];

  v8 = [v4 phase1TrainingResult];
  v9 = [v8 numUniqueAnchorOccurrencesWithUniqueCandidateOccurrence];

  if (v9 >= v7)
  {
    v11 = self->_hyperParameters;
    v12 = [v4 anchor];
    [(ATXAnchorModelHyperParameters *)v11 minClassConditionalProbabilityForMediumConfidencePredictionForAnchor:v12];
    v14 = v13;

    v15 = self->_hyperParameters;
    v16 = [v4 anchor];
    [(ATXAnchorModelHyperParameters *)v15 minPosteriorProbabilityForMediumConfidencePredictionForAnchor:v16];
    v18 = v17;

    v19 = [v4 phase1TrainingResult];
    [v19 classConditionalProbability];
    v21 = v20;
    if (v20 >= v14 && ([v4 phase1TrainingResult], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "classConditionalProbability"), v22 <= 1.0))
    {
      v10 = 1;
    }

    else
    {
      v23 = [v4 phase1TrainingResult];
      [v23 posteriorProbability];
      v10 = v24 >= v18;

      if (v21 < v14)
      {
        goto LABEL_9;
      }
    }

LABEL_9:
    goto LABEL_10;
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (id)dateIntervalFromTrainingResult:(id)a3
{
  v4 = [a3 offsetFromAnchorToShowPrediction];
  [v4 startSecondsAfterAnchor];
  v6 = v5;
  [(ATXAnchorModelHyperParameters *)self->_hyperParameters secondsBeforeHistoricalStartDateToPredictCandidate];
  v8 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:self->_baseDate sinceDate:v6 - v7];
  v9 = objc_alloc(MEMORY[0x277CBEAA8]);
  [v4 endSecondsAfterAnchor];
  v10 = [v9 initWithTimeInterval:self->_baseDate sinceDate:?];
  v11 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v8 endDate:v10];

  return v11;
}

- (void)_logPhaseFilteredMetricFromTrainingResults:(id)a3 anchorModelPredictions:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [v6 firstObject];
    v9 = [v8 candidateClassifierType];

    v10 = objc_opt_new();
    [v10 setPhaseDescription:2];
    if ((v9 - 1) > 2)
    {
      v11 = @"unknown";
    }

    else
    {
      v11 = off_278598338[v9 - 1];
    }

    [v10 setPhaseType:v11];
    [v10 setNumStartingCandidates:{objc_msgSend(v6, "count")}];
    [v10 setNumEndingCandidates:{objc_msgSend(v7, "count")}];
    v12 = [(ATXAnchor *)self->_anchor anchorTypeString];
    [v10 setAnchorType:v12];

    v13 = [(ATXAnchorModelHyperParameters *)self->_hyperParameters abGroup];
    [v10 setAbGroup:v13];

    [(ATXPETEventTracker2Protocol *)self->_tracker logMessage:v10];
    v14 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [(ATXAnchorModelAnchorEventHandler *)self _logPhaseFilteredMetricFromTrainingResults:v10 anchorModelPredictions:v14];
    }
  }
}

- (void)_logPhaseFilteredMetricFromTrainingResults:(NSObject *)a3 anchorModelPredictions:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a2 numStartingCandidates];
  v8 = [a2 numEndingCandidates];
  v9 = [a2 anchorType];
  v10 = [a2 abGroup];
  v12 = 138413314;
  v13 = v6;
  v14 = 1024;
  v15 = v7;
  v16 = 1024;
  v17 = v8;
  v18 = 2112;
  v19 = v9;
  v20 = 2112;
  v21 = v10;
  _os_log_debug_impl(&dword_2263AA000, a3, OS_LOG_TYPE_DEBUG, "LOGGED: %@ - ATXMPBAnchorModelPhaseFilterTracker for phase 2 with starting candidates: %u ending candidates: %u, anchorType: %@ abGroup: %@", &v12, 0x2Cu);

  v11 = *MEMORY[0x277D85DE8];
}

@end