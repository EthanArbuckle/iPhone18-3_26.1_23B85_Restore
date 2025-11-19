@interface ATXAnchorModelPredictionScorer
+ (double)normalizeValue:(double)a3 parameterKey:(id)a4;
+ (double)predictedProbabilityFromNormalizedClassConditionalProbability:(double)a3 posteriorProbability:(double)a4 minutesAfterAnchor:(double)a5 standardDeviation:(double)a6 uniqueOccurrences:(double)a7;
- (double)scoreForTrainingResult:(id)a3;
@end

@implementation ATXAnchorModelPredictionScorer

- (double)scoreForTrainingResult:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 phase1TrainingResult];
  [v4 classConditionalProbability];
  v6 = v5;

  v7 = [v3 phase1TrainingResult];
  [v7 posteriorProbability];
  v9 = v8;

  v10 = [v3 offsetFromAnchorToShowPrediction];
  [v10 startSecondsAfterAnchor];
  v12 = v11 / 60.0;

  v13 = [v3 phase1TrainingResult];
  [v13 standardDeviationOfOffsetFromAnchor];
  v15 = v14;

  v16 = [v3 phase1TrainingResult];
  v17 = [v16 numUniqueAnchorOccurrencesWithUniqueCandidateOccurrence];

  [ATXAnchorModelPredictionScorer normalizeValue:@"classConditionalProbability" parameterKey:v6];
  v19 = v18;
  [ATXAnchorModelPredictionScorer normalizeValue:@"posteriorProbability" parameterKey:v9];
  v21 = v20;
  [ATXAnchorModelPredictionScorer normalizeValue:@"minutesAfterAnchor" parameterKey:v12];
  v23 = v22;
  [ATXAnchorModelPredictionScorer normalizeValue:@"standardDeviation" parameterKey:v15];
  v25 = v24;
  [ATXAnchorModelPredictionScorer normalizeValue:@"uniqueOccurrences" parameterKey:v17];
  [ATXAnchorModelPredictionScorer predictedProbabilityFromNormalizedClassConditionalProbability:v19 posteriorProbability:v21 minutesAfterAnchor:v23 standardDeviation:v25 uniqueOccurrences:v26];
  v28 = v27;
  v29 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v41 = 134218242;
    v42 = v28;
    v43 = 2112;
    v44 = *&v3;
    _os_log_impl(&dword_2263AA000, v29, OS_LOG_TYPE_DEFAULT, "Predicted probability for trainingResult was %.2f. Training result: %@", &v41, 0x16u);
  }

  v30 = [v3 phase1TrainingResult];
  v31 = [v30 numRejectedSuggestion];

  v32 = [v3 phase1TrainingResult];
  v33 = [v32 numShownSuggestions];

  v34 = [v3 phase1TrainingResult];
  v35 = [v34 numEngagedSuggestions];

  if (v31)
  {
    if (v28 + v31 * -0.25 >= 0.0)
    {
      v28 = v28 + v31 * -0.25;
    }

    else
    {
      v28 = 0.0;
    }

    v36 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v41 = 134218498;
      v42 = *&v31;
      v43 = 2048;
      v44 = v28;
      v45 = 2112;
      v46 = v3;
      _os_log_impl(&dword_2263AA000, v36, OS_LOG_TYPE_DEFAULT, "Predicted probability after taking into account %ld rejections was %.2f. Training result: %@", &v41, 0x20u);
    }
  }

  if (v33)
  {
    if (v28 + v33 * -0.025 >= 0.1)
    {
      v28 = v28 + v33 * -0.025;
    }

    else
    {
      v28 = 0.1;
    }

    v37 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v41 = 134218498;
      v42 = *&v33;
      v43 = 2048;
      v44 = v28;
      v45 = 2112;
      v46 = v3;
      _os_log_impl(&dword_2263AA000, v37, OS_LOG_TYPE_DEFAULT, "Predicted probability after taking into account %ld abandons was %.2f. Training result: %@", &v41, 0x20u);
    }
  }

  if (v35)
  {
    v28 = fmin(v28 + v35 * 0.1, 1.0);
    v38 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v41 = 134218498;
      v42 = *&v35;
      v43 = 2048;
      v44 = v28;
      v45 = 2112;
      v46 = v3;
      _os_log_impl(&dword_2263AA000, v38, OS_LOG_TYPE_DEFAULT, "Predicted probability after taking into account %ld engagements was %.2f. Training result: %@", &v41, 0x20u);
    }
  }

  v39 = *MEMORY[0x277D85DE8];
  return v28;
}

+ (double)normalizeValue:(double)a3 parameterKey:(id)a4
{
  v5 = a4;
  v6 = +[ATXAnchorModelHyperParameters sharedInstance];
  [v6 minValueForParameterKey:v5];
  v8 = v7;

  v9 = +[ATXAnchorModelHyperParameters sharedInstance];
  [v9 maxValueForParameterKey:v5];
  v11 = v10;

  v12 = (a3 - v8) / (v11 - v8);
  result = 1.0;
  if (v12 <= 1.0)
  {
    result = (a3 - v8) / (v11 - v8);
    if (v12 < 0.0)
    {
      return 0.0;
    }
  }

  return result;
}

+ (double)predictedProbabilityFromNormalizedClassConditionalProbability:(double)a3 posteriorProbability:(double)a4 minutesAfterAnchor:(double)a5 standardDeviation:(double)a6 uniqueOccurrences:(double)a7
{
  v12 = +[ATXAnchorModelHyperParameters sharedInstance];
  [v12 modelWeightForParameterKey:@"classConditionalProbability"];
  v14 = v13 * a3;

  v15 = +[ATXAnchorModelHyperParameters sharedInstance];
  [v15 modelWeightForParameterKey:@"posteriorProbability"];
  v17 = v16 * a4;

  v18 = +[ATXAnchorModelHyperParameters sharedInstance];
  [v18 modelWeightForParameterKey:@"minutesAfterAnchor"];
  v20 = v19 * a5;

  v21 = +[ATXAnchorModelHyperParameters sharedInstance];
  [v21 modelWeightForParameterKey:@"standardDeviation"];
  v23 = v22 * a6;

  v24 = +[ATXAnchorModelHyperParameters sharedInstance];
  [v24 modelWeightForParameterKey:@"uniqueOccurrences"];
  v26 = v25 * a7;

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