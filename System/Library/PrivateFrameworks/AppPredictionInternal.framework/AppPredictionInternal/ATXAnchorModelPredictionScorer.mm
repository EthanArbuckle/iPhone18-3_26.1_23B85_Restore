@interface ATXAnchorModelPredictionScorer
+ (double)normalizeValue:(double)value parameterKey:(id)key;
+ (double)predictedProbabilityFromNormalizedClassConditionalProbability:(double)probability posteriorProbability:(double)posteriorProbability minutesAfterAnchor:(double)anchor standardDeviation:(double)deviation uniqueOccurrences:(double)occurrences;
- (double)scoreForTrainingResult:(id)result;
@end

@implementation ATXAnchorModelPredictionScorer

- (double)scoreForTrainingResult:(id)result
{
  v47 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  phase1TrainingResult = [resultCopy phase1TrainingResult];
  [phase1TrainingResult classConditionalProbability];
  v6 = v5;

  phase1TrainingResult2 = [resultCopy phase1TrainingResult];
  [phase1TrainingResult2 posteriorProbability];
  v9 = v8;

  offsetFromAnchorToShowPrediction = [resultCopy offsetFromAnchorToShowPrediction];
  [offsetFromAnchorToShowPrediction startSecondsAfterAnchor];
  v12 = v11 / 60.0;

  phase1TrainingResult3 = [resultCopy phase1TrainingResult];
  [phase1TrainingResult3 standardDeviationOfOffsetFromAnchor];
  v15 = v14;

  phase1TrainingResult4 = [resultCopy phase1TrainingResult];
  numUniqueAnchorOccurrencesWithUniqueCandidateOccurrence = [phase1TrainingResult4 numUniqueAnchorOccurrencesWithUniqueCandidateOccurrence];

  [ATXAnchorModelPredictionScorer normalizeValue:@"classConditionalProbability" parameterKey:v6];
  v19 = v18;
  [ATXAnchorModelPredictionScorer normalizeValue:@"posteriorProbability" parameterKey:v9];
  v21 = v20;
  [ATXAnchorModelPredictionScorer normalizeValue:@"minutesAfterAnchor" parameterKey:v12];
  v23 = v22;
  [ATXAnchorModelPredictionScorer normalizeValue:@"standardDeviation" parameterKey:v15];
  v25 = v24;
  [ATXAnchorModelPredictionScorer normalizeValue:@"uniqueOccurrences" parameterKey:numUniqueAnchorOccurrencesWithUniqueCandidateOccurrence];
  [ATXAnchorModelPredictionScorer predictedProbabilityFromNormalizedClassConditionalProbability:v19 posteriorProbability:v21 minutesAfterAnchor:v23 standardDeviation:v25 uniqueOccurrences:v26];
  v28 = v27;
  v29 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v41 = 134218242;
    v42 = v28;
    v43 = 2112;
    v44 = *&resultCopy;
    _os_log_impl(&dword_2263AA000, v29, OS_LOG_TYPE_DEFAULT, "Predicted probability for trainingResult was %.2f. Training result: %@", &v41, 0x16u);
  }

  phase1TrainingResult5 = [resultCopy phase1TrainingResult];
  numRejectedSuggestion = [phase1TrainingResult5 numRejectedSuggestion];

  phase1TrainingResult6 = [resultCopy phase1TrainingResult];
  numShownSuggestions = [phase1TrainingResult6 numShownSuggestions];

  phase1TrainingResult7 = [resultCopy phase1TrainingResult];
  numEngagedSuggestions = [phase1TrainingResult7 numEngagedSuggestions];

  if (numRejectedSuggestion)
  {
    if (v28 + numRejectedSuggestion * -0.25 >= 0.0)
    {
      v28 = v28 + numRejectedSuggestion * -0.25;
    }

    else
    {
      v28 = 0.0;
    }

    v36 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v41 = 134218498;
      v42 = *&numRejectedSuggestion;
      v43 = 2048;
      v44 = v28;
      v45 = 2112;
      v46 = resultCopy;
      _os_log_impl(&dword_2263AA000, v36, OS_LOG_TYPE_DEFAULT, "Predicted probability after taking into account %ld rejections was %.2f. Training result: %@", &v41, 0x20u);
    }
  }

  if (numShownSuggestions)
  {
    if (v28 + numShownSuggestions * -0.025 >= 0.1)
    {
      v28 = v28 + numShownSuggestions * -0.025;
    }

    else
    {
      v28 = 0.1;
    }

    v37 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v41 = 134218498;
      v42 = *&numShownSuggestions;
      v43 = 2048;
      v44 = v28;
      v45 = 2112;
      v46 = resultCopy;
      _os_log_impl(&dword_2263AA000, v37, OS_LOG_TYPE_DEFAULT, "Predicted probability after taking into account %ld abandons was %.2f. Training result: %@", &v41, 0x20u);
    }
  }

  if (numEngagedSuggestions)
  {
    v28 = fmin(v28 + numEngagedSuggestions * 0.1, 1.0);
    v38 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v41 = 134218498;
      v42 = *&numEngagedSuggestions;
      v43 = 2048;
      v44 = v28;
      v45 = 2112;
      v46 = resultCopy;
      _os_log_impl(&dword_2263AA000, v38, OS_LOG_TYPE_DEFAULT, "Predicted probability after taking into account %ld engagements was %.2f. Training result: %@", &v41, 0x20u);
    }
  }

  v39 = *MEMORY[0x277D85DE8];
  return v28;
}

+ (double)normalizeValue:(double)value parameterKey:(id)key
{
  keyCopy = key;
  v6 = +[ATXAnchorModelHyperParameters sharedInstance];
  [v6 minValueForParameterKey:keyCopy];
  v8 = v7;

  v9 = +[ATXAnchorModelHyperParameters sharedInstance];
  [v9 maxValueForParameterKey:keyCopy];
  v11 = v10;

  v12 = (value - v8) / (v11 - v8);
  result = 1.0;
  if (v12 <= 1.0)
  {
    result = (value - v8) / (v11 - v8);
    if (v12 < 0.0)
    {
      return 0.0;
    }
  }

  return result;
}

+ (double)predictedProbabilityFromNormalizedClassConditionalProbability:(double)probability posteriorProbability:(double)posteriorProbability minutesAfterAnchor:(double)anchor standardDeviation:(double)deviation uniqueOccurrences:(double)occurrences
{
  v12 = +[ATXAnchorModelHyperParameters sharedInstance];
  [v12 modelWeightForParameterKey:@"classConditionalProbability"];
  v14 = v13 * probability;

  v15 = +[ATXAnchorModelHyperParameters sharedInstance];
  [v15 modelWeightForParameterKey:@"posteriorProbability"];
  v17 = v16 * posteriorProbability;

  v18 = +[ATXAnchorModelHyperParameters sharedInstance];
  [v18 modelWeightForParameterKey:@"minutesAfterAnchor"];
  v20 = v19 * anchor;

  v21 = +[ATXAnchorModelHyperParameters sharedInstance];
  [v21 modelWeightForParameterKey:@"standardDeviation"];
  v23 = v22 * deviation;

  v24 = +[ATXAnchorModelHyperParameters sharedInstance];
  [v24 modelWeightForParameterKey:@"uniqueOccurrences"];
  v26 = v25 * occurrences;

  v27 = +[ATXAnchorModelHyperParameters sharedInstance];
  [v27 modelWeightForParameterKey:@"bias"];
  v29 = v28;

  v30 = v14 + v17 + v20 + v23 + v26 + v29;
  v31 = 1.0 / (expf(-v30) + 1.0);
  v32 = v31;
  if (v31 > 1.0)
  {
    v33 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      [ATXAnchorModelPredictionScorer predictedProbabilityFromNormalizedClassConditionalProbability:v33 posteriorProbability:v32 minutesAfterAnchor:? standardDeviation:? uniqueOccurrences:?];
    }

    return 1.0;
  }

  return v32;
}

+ (void)predictedProbabilityFromNormalizedClassConditionalProbability:(os_log_t)log posteriorProbability:(double)a2 minutesAfterAnchor:standardDeviation:uniqueOccurrences:.cold.1(os_log_t log, double a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a2;
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "Predicted probability in anchor model scoring function was above 1.0. Predicted probability: %.2f", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end