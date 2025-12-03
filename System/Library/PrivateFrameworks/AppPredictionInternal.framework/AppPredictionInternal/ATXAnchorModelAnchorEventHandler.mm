@interface ATXAnchorModelAnchorEventHandler
- (ATXAnchorModelAnchorEventHandler)initWithAnchor:(id)anchor anchorEvent:(id)event;
- (ATXAnchorModelAnchorEventHandler)initWithAnchor:(id)anchor anchorEvent:(id)event dataStoreWrapper:(id)wrapper hyperParameters:(id)parameters tracker:(id)tracker;
- (BOOL)predictionIsHighConfidence:(id)confidence;
- (BOOL)predictionIsMediumConfidence:(id)confidence;
- (double)predictionScoreFromTrainingResult:(id)result;
- (id)anchorModelPredictionFromTrainingResult:(id)result classificationResult:(id)classificationResult;
- (id)dateIntervalFromTrainingResult:(id)result;
- (id)predictionForCandidateFromTrainingResult:(id)result;
- (id)predictionsForAnchorEvent;
- (void)_logPhaseFilteredMetricFromTrainingResults:(id)results anchorModelPredictions:(id)predictions;
@end

@implementation ATXAnchorModelAnchorEventHandler

- (ATXAnchorModelAnchorEventHandler)initWithAnchor:(id)anchor anchorEvent:(id)event
{
  eventCopy = event;
  anchorCopy = anchor;
  v8 = objc_opt_new();
  v9 = +[ATXAnchorModelHyperParameters sharedInstance];
  v10 = objc_opt_new();
  v11 = [(ATXAnchorModelAnchorEventHandler *)self initWithAnchor:anchorCopy anchorEvent:eventCopy dataStoreWrapper:v8 hyperParameters:v9 tracker:v10];

  return v11;
}

- (ATXAnchorModelAnchorEventHandler)initWithAnchor:(id)anchor anchorEvent:(id)event dataStoreWrapper:(id)wrapper hyperParameters:(id)parameters tracker:(id)tracker
{
  anchorCopy = anchor;
  eventCopy = event;
  wrapperCopy = wrapper;
  parametersCopy = parameters;
  trackerCopy = tracker;
  v28.receiver = self;
  v28.super_class = ATXAnchorModelAnchorEventHandler;
  v17 = [(ATXAnchorModelAnchorEventHandler *)&v28 init];
  if (v17)
  {
    v18 = [anchorCopy copy];
    anchor = v17->_anchor;
    v17->_anchor = v18;

    [eventCopy identifier];
    obj = parameters;
    v20 = trackerCopy;
    v21 = parametersCopy;
    v23 = v22 = wrapperCopy;
    [(ATXAnchor *)v17->_anchor setAnchorEventIdentifier:v23];

    wrapperCopy = v22;
    parametersCopy = v21;
    trackerCopy = v20;
    objc_storeStrong(&v17->_anchorEvent, event);
    objc_storeStrong(&v17->_dataStoreWrapper, wrapper);
    objc_storeStrong(&v17->_tracker, tracker);
    v24 = [objc_opt_class() anchorOccurenceDateFromDuetEvent:eventCopy];
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

- (id)predictionForCandidateFromTrainingResult:(id)result
{
  resultCopy = result;
  candidateClassifier = [resultCopy candidateClassifier];
  v6 = [candidateClassifier classifyCandidateForAnchorOccurrence:self->_anchorEvent trainingResult:resultCopy];

  return v6;
}

- (id)anchorModelPredictionFromTrainingResult:(id)result classificationResult:(id)classificationResult
{
  resultCopy = result;
  [(ATXAnchorModelAnchorEventHandler *)self predictionScoreFromTrainingResult:resultCopy];
  v7 = v6;
  v8 = [ATXAnchorModelPrediction alloc];
  anchorTypeString = [(ATXAnchor *)self->_anchor anchorTypeString];
  anchorEvent = self->_anchorEvent;
  candidateType = [resultCopy candidateType];
  candidateId = [resultCopy candidateId];
  v31 = [(ATXAnchorModelAnchorEventHandler *)self dateIntervalFromTrainingResult:resultCopy];
  phase1TrainingResult = [resultCopy phase1TrainingResult];
  numUniqueAnchorOccurrencesWithUniqueCandidateOccurrence = [phase1TrainingResult numUniqueAnchorOccurrencesWithUniqueCandidateOccurrence];
  phase1TrainingResult2 = [resultCopy phase1TrainingResult];
  [phase1TrainingResult2 posteriorProbability];
  v13 = v12;
  phase1TrainingResult3 = [resultCopy phase1TrainingResult];
  [phase1TrainingResult3 classConditionalProbability];
  v15 = v14;
  phase1TrainingResult4 = [resultCopy phase1TrainingResult];
  [phase1TrainingResult4 standardDeviationOfOffsetFromAnchor];
  v18 = v17;
  phase1TrainingResult5 = [resultCopy phase1TrainingResult];
  [phase1TrainingResult5 anchorPopularity];
  v21 = v20;
  phase1TrainingResult6 = [resultCopy phase1TrainingResult];
  [phase1TrainingResult6 globalPopularity];
  v24 = v23;
  offsetFromAnchorToShowPrediction = [resultCopy offsetFromAnchorToShowPrediction];
  candidateClassifier = [resultCopy candidateClassifier];

  v27 = [(ATXAnchorModelPrediction *)v8 initWithAnchorType:anchorTypeString anchorEvent:anchorEvent candidateType:candidateType candidateId:candidateId dateIntervalForPrediction:v31 score:numUniqueAnchorOccurrencesWithUniqueCandidateOccurrence numUniqueOccurrencesAfterAnchor:v7 posteriorProbability:v13 classConditionalProbability:v15 standardDeviationOfOffsetFromAnchor:v18 anchorPopularity:v21 globalPopularity:v24 offsetFromAnchorToShowPrediction:offsetFromAnchorToShowPrediction candidateClassifier:candidateClassifier];

  return v27;
}

- (double)predictionScoreFromTrainingResult:(id)result
{
  v14 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v4 = objc_opt_new();
  [v4 scoreForTrainingResult:resultCopy];
  v6 = v5;
  v7 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218242;
    v11 = v6;
    v12 = 2112;
    v13 = resultCopy;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "Score for training result: %.2f, training result: %@", &v10, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)predictionIsHighConfidence:(id)confidence
{
  confidenceCopy = confidence;
  hyperParameters = self->_hyperParameters;
  anchor = [confidenceCopy anchor];
  v7 = [(ATXAnchorModelHyperParameters *)hyperParameters minNumUniqueAnchorOccurrencesWithUniqueCandidateOccurrencesForHighConfidencePredictionForAnchor:anchor];

  phase1TrainingResult = [confidenceCopy phase1TrainingResult];
  numUniqueAnchorOccurrencesWithUniqueCandidateOccurrence = [phase1TrainingResult numUniqueAnchorOccurrencesWithUniqueCandidateOccurrence];

  if (numUniqueAnchorOccurrencesWithUniqueCandidateOccurrence >= v7)
  {
    v11 = self->_hyperParameters;
    anchor2 = [confidenceCopy anchor];
    [(ATXAnchorModelHyperParameters *)v11 minClassConditionalProbabilityForHighConfidencePredictionForAnchor:anchor2];
    v14 = v13;

    v15 = self->_hyperParameters;
    anchor3 = [confidenceCopy anchor];
    [(ATXAnchorModelHyperParameters *)v15 minPosteriorProbabilityForHighConfidencePredictionForAnchor:anchor3];
    v18 = v17;

    phase1TrainingResult2 = [confidenceCopy phase1TrainingResult];
    [phase1TrainingResult2 classConditionalProbability];
    v21 = v20;
    if (v20 >= v14 && ([confidenceCopy phase1TrainingResult], anchor3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(anchor3, "classConditionalProbability"), v22 <= 1.0))
    {
      v10 = 1;
    }

    else
    {
      phase1TrainingResult3 = [confidenceCopy phase1TrainingResult];
      [phase1TrainingResult3 posteriorProbability];
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

- (BOOL)predictionIsMediumConfidence:(id)confidence
{
  confidenceCopy = confidence;
  hyperParameters = self->_hyperParameters;
  anchor = [confidenceCopy anchor];
  v7 = [(ATXAnchorModelHyperParameters *)hyperParameters minNumUniqueAnchorOccurrencesWithUniqueCandidateOccurrencesForMediumConfidencePredictionForAnchor:anchor];

  phase1TrainingResult = [confidenceCopy phase1TrainingResult];
  numUniqueAnchorOccurrencesWithUniqueCandidateOccurrence = [phase1TrainingResult numUniqueAnchorOccurrencesWithUniqueCandidateOccurrence];

  if (numUniqueAnchorOccurrencesWithUniqueCandidateOccurrence >= v7)
  {
    v11 = self->_hyperParameters;
    anchor2 = [confidenceCopy anchor];
    [(ATXAnchorModelHyperParameters *)v11 minClassConditionalProbabilityForMediumConfidencePredictionForAnchor:anchor2];
    v14 = v13;

    v15 = self->_hyperParameters;
    anchor3 = [confidenceCopy anchor];
    [(ATXAnchorModelHyperParameters *)v15 minPosteriorProbabilityForMediumConfidencePredictionForAnchor:anchor3];
    v18 = v17;

    phase1TrainingResult2 = [confidenceCopy phase1TrainingResult];
    [phase1TrainingResult2 classConditionalProbability];
    v21 = v20;
    if (v20 >= v14 && ([confidenceCopy phase1TrainingResult], anchor3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(anchor3, "classConditionalProbability"), v22 <= 1.0))
    {
      v10 = 1;
    }

    else
    {
      phase1TrainingResult3 = [confidenceCopy phase1TrainingResult];
      [phase1TrainingResult3 posteriorProbability];
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

- (id)dateIntervalFromTrainingResult:(id)result
{
  offsetFromAnchorToShowPrediction = [result offsetFromAnchorToShowPrediction];
  [offsetFromAnchorToShowPrediction startSecondsAfterAnchor];
  v6 = v5;
  [(ATXAnchorModelHyperParameters *)self->_hyperParameters secondsBeforeHistoricalStartDateToPredictCandidate];
  v8 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:self->_baseDate sinceDate:v6 - v7];
  v9 = objc_alloc(MEMORY[0x277CBEAA8]);
  [offsetFromAnchorToShowPrediction endSecondsAfterAnchor];
  v10 = [v9 initWithTimeInterval:self->_baseDate sinceDate:?];
  v11 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v8 endDate:v10];

  return v11;
}

- (void)_logPhaseFilteredMetricFromTrainingResults:(id)results anchorModelPredictions:(id)predictions
{
  resultsCopy = results;
  predictionsCopy = predictions;
  if ([resultsCopy count])
  {
    firstObject = [resultsCopy firstObject];
    candidateClassifierType = [firstObject candidateClassifierType];

    v10 = objc_opt_new();
    [v10 setPhaseDescription:2];
    if ((candidateClassifierType - 1) > 2)
    {
      v11 = @"unknown";
    }

    else
    {
      v11 = off_278598338[candidateClassifierType - 1];
    }

    [v10 setPhaseType:v11];
    [v10 setNumStartingCandidates:{objc_msgSend(resultsCopy, "count")}];
    [v10 setNumEndingCandidates:{objc_msgSend(predictionsCopy, "count")}];
    anchorTypeString = [(ATXAnchor *)self->_anchor anchorTypeString];
    [v10 setAnchorType:anchorTypeString];

    abGroup = [(ATXAnchorModelHyperParameters *)self->_hyperParameters abGroup];
    [v10 setAbGroup:abGroup];

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