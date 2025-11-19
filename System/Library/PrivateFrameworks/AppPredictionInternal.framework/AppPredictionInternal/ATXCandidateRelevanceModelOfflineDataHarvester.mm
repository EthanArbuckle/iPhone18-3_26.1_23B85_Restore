@interface ATXCandidateRelevanceModelOfflineDataHarvester
+ (id)candidateMetricsFromConfig:(id)a3;
+ (id)evaluationMetricsFromConfig:(id)a3 startTime:(id)a4 endTime:(id)a5;
+ (id)metricsForConfig:(id)a3;
+ (id)modelMetricsForConfig:(id)a3;
+ (unsigned)daysBetweenStartDate:(id)a3 endDate:(id)a4;
+ (void)harvestDataUsingConfig:(id)a3;
- (ATXCandidateRelevanceModelOfflineDataHarvester)init;
- (ATXCandidateRelevanceModelOfflineDataHarvester)initWithConfigs:(id)a3;
- (void)harvestData;
@end

@implementation ATXCandidateRelevanceModelOfflineDataHarvester

- (ATXCandidateRelevanceModelOfflineDataHarvester)init
{
  v3 = allRelevanceModelConfigs();
  v4 = [(ATXCandidateRelevanceModelOfflineDataHarvester *)self initWithConfigs:v3];

  return v4;
}

- (ATXCandidateRelevanceModelOfflineDataHarvester)initWithConfigs:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXCandidateRelevanceModelOfflineDataHarvester;
  v6 = [(ATXCandidateRelevanceModelOfflineDataHarvester *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configs, a3);
  }

  return v7;
}

- (void)harvestData
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_relevance_model();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412290;
    v18 = v5;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "%@ - Beginning data harvesting for all configs.", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_configs;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [objc_opt_class() harvestDataUsingConfig:{*(*(&v12 + 1) + 8 * v10++), v12}];
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)harvestDataUsingConfig:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  [v3 dataHarvestingSamplingRate];
  v5 = [_ATXAggregateLogger yesWithProbability:v4];
  v6 = __atxlog_handle_relevance_model();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [v3 clientModel];
      v11 = [v10 clientModelId];
      v18 = 138412546;
      v19 = v9;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "%@ - Harvesting data for config with client model id %@.", &v18, 0x16u);
    }

    v6 = [objc_opt_class() metricsForConfig:v3];
    v12 = [MEMORY[0x277D41DA8] sharedInstance];
    [v12 logMessage:v6];
    goto LABEL_7;
  }

  if (v7)
  {
    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    v14 = [v3 clientModel];
    v15 = [v14 clientModelId];
    [v3 dataHarvestingSamplingRate];
    v18 = 138412802;
    v19 = v12;
    v20 = 2112;
    v21 = v15;
    v22 = 2048;
    v23 = v16;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "%@ - Not harvesting data for config with client model id %@. We failed to sample a value between 0 and 1 that is less than %f.", &v18, 0x20u);

LABEL_7:
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (id)metricsForConfig:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [objc_opt_class() candidateMetricsFromConfig:v3];
  [v4 setCandidateMetrics:v5];

  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = objc_opt_class();
  v8 = MEMORY[0x277CCABB0];
  v9 = [v6 dateByAddingTimeInterval:-604800.0];
  [v9 timeIntervalSinceReferenceDate];
  v10 = [v8 numberWithDouble:?];
  v11 = MEMORY[0x277CCABB0];
  [v6 timeIntervalSinceReferenceDate];
  v12 = [v11 numberWithDouble:?];
  v13 = [v7 evaluationMetricsFromConfig:v3 startTime:v10 endTime:v12];
  [v4 setEvaluationMetricsOneWeekAgo:v13];

  v14 = objc_opt_class();
  v15 = MEMORY[0x277CCABB0];
  v16 = [v6 dateByAddingTimeInterval:-1209600.0];
  [v16 timeIntervalSinceReferenceDate];
  v17 = [v15 numberWithDouble:?];
  v18 = MEMORY[0x277CCABB0];
  v19 = [v6 dateByAddingTimeInterval:-604800.0];
  [v19 timeIntervalSinceReferenceDate];
  v20 = [v18 numberWithDouble:?];
  v21 = [v14 evaluationMetricsFromConfig:v3 startTime:v17 endTime:v20];
  [v4 setEvaluationMetricsTwoWeeksAgo:v21];

  v22 = objc_opt_class();
  v23 = MEMORY[0x277CCABB0];
  v24 = [v6 dateByAddingTimeInterval:-1814400.0];
  [v24 timeIntervalSinceReferenceDate];
  v25 = [v23 numberWithDouble:?];
  v26 = MEMORY[0x277CCABB0];
  v27 = [v6 dateByAddingTimeInterval:-1209600.0];
  [v27 timeIntervalSinceReferenceDate];
  v28 = [v26 numberWithDouble:?];
  v29 = [v22 evaluationMetricsFromConfig:v3 startTime:v25 endTime:v28];
  [v4 setEvaluationMetricsThreeWeeksAgo:v29];

  v30 = objc_opt_class();
  v31 = MEMORY[0x277CCABB0];
  v32 = [v6 dateByAddingTimeInterval:-2419200.0];
  [v32 timeIntervalSinceReferenceDate];
  v33 = [v31 numberWithDouble:?];
  v34 = MEMORY[0x277CCABB0];
  v35 = [v6 dateByAddingTimeInterval:-1814400.0];
  [v35 timeIntervalSinceReferenceDate];
  v36 = [v34 numberWithDouble:?];
  v37 = [v30 evaluationMetricsFromConfig:v3 startTime:v33 endTime:v36];
  [v4 setEvaluationMetricsFourWeeksAgo:v37];

  v38 = objc_opt_class();
  v39 = MEMORY[0x277CCABB0];
  v40 = [v6 dateByAddingTimeInterval:-2419200.0];
  [v40 timeIntervalSinceReferenceDate];
  v41 = [v39 numberWithDouble:?];
  v42 = MEMORY[0x277CCABB0];
  [v6 timeIntervalSinceReferenceDate];
  v43 = [v42 numberWithDouble:?];
  v44 = [v38 evaluationMetricsFromConfig:v3 startTime:v41 endTime:v43];
  [v4 setEvaluationMetricsLastFourWeeks:v44];

  v45 = [objc_opt_class() modelMetricsForConfig:v3];

  [v4 setModelMetrics:v45];

  return v4;
}

+ (id)candidateMetricsFromConfig:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [v4 clientModel];
  v8 = [v7 clientModelId];
  v9 = [v5 resultForClientModelName:v8 suggestionExecutableType:1 sessionType:0 removeDockedApps:0];

  v10 = [v4 clientModel];
  v11 = [v10 clientModelId];
  v12 = [v5 resultForClientModelName:v11 suggestionExecutableType:1 sessionType:1 removeDockedApps:0];

  v13 = [v4 datastore];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __77__ATXCandidateRelevanceModelOfflineDataHarvester_candidateMetricsFromConfig___block_invoke;
  v31[3] = &unk_2785A11E8;
  v32 = v9;
  v33 = v12;
  v34 = v6;
  v35 = a1;
  v14 = v6;
  v15 = v12;
  v16 = v9;
  v17 = [v4 clientModel];
  v18 = [v17 clientModelId];
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __77__ATXCandidateRelevanceModelOfflineDataHarvester_candidateMetricsFromConfig___block_invoke_2;
  v28 = &unk_2785A1210;
  v29 = v4;
  v30 = a1;
  v19 = v4;
  [v13 receiveMostRecentVerifiedTrainedModelTrainingResults:v31 clientModelName:v18 completion:&v25];

  v20 = [v14 sortedArrayUsingComparator:{&__block_literal_global_234, v25, v26, v27, v28}];
  v21 = [v20 count];
  if (v21 >= 0x19)
  {
    v22 = 25;
  }

  else
  {
    v22 = v21;
  }

  v23 = [v20 subarrayWithRange:{0, v22}];

  return v23;
}

void __77__ATXCandidateRelevanceModelOfflineDataHarvester_candidateMetricsFromConfig___block_invoke(uint64_t a1, void *a2)
{
  v77 = a2;
  v3 = objc_opt_new();
  v4 = [v77 candidate];
  v5 = [v4 identifier];

  v6 = [v77 datasetMetadata];
  v7 = [v6 numberOfPositiveSamples];
  if (v7 >= 0x65)
  {
    v8 = 10 * (v7 / 0xA);
  }

  else
  {
    v8 = v7;
  }

  [v3 setCandidateNumberOfPositiveSamples:v8];

  v9 = [v77 datasetMetadata];
  v10 = [v9 numberOfSamples];
  if (v10 >= 0x65)
  {
    v11 = 10 * (v10 / 0xA);
  }

  else
  {
    v11 = v10;
  }

  [v3 setCandidateNumberOfSamples:v11];

  v12 = [v77 datasetMetadata];
  [v3 setCandidateNumberOfDaysWithPositiveSamples:{objc_msgSend(v12, "numberOfDaysWithPositiveSamples")}];

  v13 = [v77 model];
  v14 = [v13 numberOfModelWeights];
  if (v14 >= 0x65)
  {
    v15 = 10 * (v14 / 0xA);
  }

  else
  {
    v15 = v14;
  }

  [v3 setCandidateNumberOfModelWeights:v15];

  v16 = [v77 model];
  v17 = [v16 numberOfNonZeroModelWeights];
  if (v17 >= 0x65)
  {
    v18 = 10 * (v17 / 0xA);
  }

  else
  {
    v18 = v17;
  }

  [v3 setCandidateNumberOfNonZeroModelWeights:v18];

  v19 = [*(a1 + 32) engagedPerCandidate];
  v20 = [v19 objectForKeyedSubscript:v5];
  [v20 floatValue];
  v22 = v21 / ([*(a1 + 32) numberOfSessions] + 0.000001);
  *&v22 = v22;
  *&v22 = roundf(*&v22 * 100.0) / 100.0;
  [v3 setCandidateShadowLaunchPercentage:v22];

  v23 = [*(a1 + 32) shownInTop8PerCandidate];
  v24 = [v23 objectForKeyedSubscript:v5];
  [v24 floatValue];
  v26 = v25 / ([*(a1 + 32) numberOfSessions] + 0.000001);
  *&v26 = v26;
  *&v26 = roundf(*&v26 * 100.0) / 100.0;
  [v3 setCandidateShadowShownPercentage:v26];

  v27 = [*(a1 + 32) engagedInTop8PerCandidate];
  v28 = [v27 objectForKeyedSubscript:v5];
  [v28 floatValue];
  v30 = v29;
  v31 = [*(a1 + 32) shownInTop8PerCandidate];
  v32 = [v31 objectForKeyedSubscript:v5];
  [v32 floatValue];
  v34 = v30 / (v33 + 0.000001);
  *&v34 = v34;
  *&v34 = roundf(*&v34 * 100.0) / 100.0;
  [v3 setCandidateShadowPrecision:v34];

  v35 = [*(a1 + 32) engagedInTop8PerCandidate];
  v36 = [v35 objectForKeyedSubscript:v5];
  [v36 floatValue];
  v38 = v37;
  v39 = [*(a1 + 32) engagedPerCandidate];
  v40 = [v39 objectForKeyedSubscript:v5];
  [v40 floatValue];
  v42 = v38 / (v41 + 0.000001);
  *&v42 = v42;
  *&v42 = roundf(*&v42 * 100.0) / 100.0;
  [v3 setCandidateShadowRecall:v42];

  v43 = *(a1 + 56);
  [v3 candidateShadowPrecision];
  LODWORD(v38) = v44;
  [v3 candidateShadowRecall];
  LODWORD(v46) = v45;
  LODWORD(v47) = LODWORD(v38);
  [v43 calculateF1ScoreWithPrecision:v47 recall:v46];
  [v3 setCandidateShadowF1:?];
  v48 = [*(a1 + 40) engagedPerCandidate];
  v49 = [v48 objectForKeyedSubscript:v5];
  [v49 floatValue];
  v51 = v50 / ([*(a1 + 40) numberOfSessions] + 0.000001);
  *&v51 = v51;
  *&v51 = roundf(*&v51 * 100.0) / 100.0;
  [v3 setCandidateUILaunchPercentage:v51];

  v52 = [*(a1 + 40) shownInTop8PerCandidate];
  v53 = [v52 objectForKeyedSubscript:v5];
  [v53 floatValue];
  v55 = v54 / ([*(a1 + 40) numberOfSessions] + 0.000001);
  *&v55 = v55;
  *&v55 = roundf(*&v55 * 100.0) / 100.0;
  [v3 setCandidateUIShownPercentage:v55];

  v56 = [*(a1 + 40) engagedInTop8PerCandidate];
  v57 = [v56 objectForKeyedSubscript:v5];
  [v57 floatValue];
  v59 = v58;
  v60 = [*(a1 + 40) shownInTop8PerCandidate];
  v61 = [v60 objectForKeyedSubscript:v5];
  [v61 floatValue];
  v63 = v59 / (v62 + 0.000001);
  *&v63 = v63;
  *&v63 = roundf(*&v63 * 100.0) / 100.0;
  [v3 setCandidateUIPrecision:v63];

  v64 = [*(a1 + 40) engagedInTop8PerCandidate];
  v65 = [v64 objectForKeyedSubscript:v5];
  [v65 floatValue];
  v67 = v66;
  v68 = [*(a1 + 40) engagedPerCandidate];
  v69 = [v68 objectForKeyedSubscript:v5];
  [v69 floatValue];
  v71 = v67 / (v70 + 0.000001);
  *&v71 = v71;
  *&v71 = roundf(*&v71 * 100.0) / 100.0;
  [v3 setCandidateUIRecall:v71];

  v72 = *(a1 + 56);
  [v3 candidateUIPrecision];
  LODWORD(v67) = v73;
  [v3 candidateUIRecall];
  LODWORD(v75) = v74;
  LODWORD(v76) = LODWORD(v67);
  [v72 calculateF1ScoreWithPrecision:v76 recall:v75];
  [v3 setCandidateUIF1:?];
  [v3 setCandidateIdentifier:v5];
  [*(a1 + 48) addObject:v3];
}

void __77__ATXCandidateRelevanceModelOfflineDataHarvester_candidateMetricsFromConfig___block_invoke_2(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = __atxlog_handle_relevance_model();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __77__ATXCandidateRelevanceModelOfflineDataHarvester_candidateMetricsFromConfig___block_invoke_2_cold_1(a1);
    }
  }
}

uint64_t __77__ATXCandidateRelevanceModelOfflineDataHarvester_candidateMetricsFromConfig___block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v5, "candidateNumberOfPositiveSamples")}];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v4, "candidateNumberOfPositiveSamples")}];
  v8 = [v6 compare:v7];

  if (!v8)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v5, "candidateNumberOfPositiveSamples")}];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v4, "candidateNumberOfPositiveSamples")}];
    v8 = [v9 compare:v10];
  }

  return v8;
}

+ (id)evaluationMetricsFromConfig:(id)a3 startTime:(id)a4 endTime:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [[ATXProactiveSuggestionClientModelEvaluator alloc] initWithStartTime:v9 endTime:v8];

  v11 = objc_opt_new();
  v12 = [v7 clientModel];
  v13 = [v12 clientModelId];
  v14 = [(ATXProactiveSuggestionClientModelEvaluator *)v10 resultForClientModelName:v13 suggestionExecutableType:1 sessionType:0 removeDockedApps:0];

  v15 = [v14 engagedInTop1];
  v16 = v15 / ([v14 numberOfSessionsWithPredictions] + 0.000001);
  *&v16 = v16;
  *&v16 = roundf(*&v16 * 100.0) / 100.0;
  [v11 setShadowEvaluationSuccessAt1:v16];
  v17 = [v14 engagedInTop2];
  v18 = v17 / ([v14 numberOfSessionsWithPredictions] + 0.000001);
  *&v18 = v18;
  *&v18 = roundf(*&v18 * 100.0) / 100.0;
  [v11 setShadowEvaluationSuccessAt2:v18];
  v19 = [v14 engagedInTop4];
  v20 = v19 / ([v14 numberOfSessionsWithPredictions] + 0.000001);
  *&v20 = v20;
  *&v20 = roundf(*&v20 * 100.0) / 100.0;
  [v11 setShadowEvaluationSuccessAt4:v20];
  v21 = [v14 engagedInTop8];
  v22 = v21 / ([v14 numberOfSessionsWithPredictions] + 0.000001);
  *&v22 = v22;
  *&v22 = roundf(*&v22 * 100.0) / 100.0;
  [v11 setShadowEvaluationSuccessAt8:v22];
  [v14 reciprocalRank];
  v24 = v23 / ([v14 numberOfSessionsWithPredictions] + 0.000001);
  *&v24 = v24;
  *&v24 = roundf(*&v24 * 100.0) / 100.0;
  [v11 setShadowEvaluationMRR:v24];
  v25 = [v14 numberOfSessionsWithPredictions];
  v26 = v25;
  if (v25 >= 0x65)
  {
    v26 = 10 * (v25 / 0xA);
  }

  [v11 setShadowEvaluationNumberOfSessionsWithPredictions:v26];
  v27 = [v14 numberOfSessions];
  v28 = v27;
  if (v27 >= 0x65)
  {
    v28 = 10 * (v27 / 0xA);
  }

  [v11 setShadowEvaluationNumberOfSessions:v28];
  v29 = [v7 clientModel];
  v30 = [v29 clientModelId];
  v31 = [(ATXProactiveSuggestionClientModelEvaluator *)v10 resultForClientModelName:v30 suggestionExecutableType:1 sessionType:1 removeDockedApps:0];

  v32 = [v31 engagedInTop1];
  v33 = v32 / ([v31 numberOfSessionsWithPredictions] + 0.000001);
  *&v33 = v33;
  *&v33 = roundf(*&v33 * 100.0) / 100.0;
  [v11 setUiEvaluationSuccessAt1:v33];
  v34 = [v31 engagedInTop2];
  v35 = v34 / ([v31 numberOfSessionsWithPredictions] + 0.000001);
  *&v35 = v35;
  *&v35 = roundf(*&v35 * 100.0) / 100.0;
  [v11 setUiEvaluationSuccessAt2:v35];
  v36 = [v31 engagedInTop4];
  v37 = v36 / ([v31 numberOfSessionsWithPredictions] + 0.000001);
  *&v37 = v37;
  *&v37 = roundf(*&v37 * 100.0) / 100.0;
  [v11 setUiEvaluationSuccessAt4:v37];
  v38 = [v31 engagedInTop8];
  v39 = v38 / ([v31 numberOfSessionsWithPredictions] + 0.000001);
  *&v39 = v39;
  *&v39 = roundf(*&v39 * 100.0) / 100.0;
  [v11 setUiEvaluationSuccessAt8:v39];
  [v31 reciprocalRank];
  v41 = v40 / ([v31 numberOfSessionsWithPredictions] + 0.000001);
  *&v41 = v41;
  *&v41 = roundf(*&v41 * 100.0) / 100.0;
  [v11 setUiEvaluationMRR:v41];
  v42 = [v31 numberOfSessionsWithPredictions];
  v43 = v42;
  if (v42 >= 0x65)
  {
    v43 = 10 * (v42 / 0xA);
  }

  [v11 setUiEvaluationNumberOfSessionsWithPredictions:v43];
  v44 = [v31 numberOfSessions];
  v45 = v44;
  if (v44 >= 0x65)
  {
    v45 = 10 * (v44 / 0xA);
  }

  [v11 setUiEvaluationNumberOfSessions:v45];
  v46 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:15];
  v47 = [(ATXProactiveSuggestionClientModelEvaluator *)v10 resultForClientModelName:v46 suggestionExecutableType:1 sessionType:0 removeDockedApps:0];
  v48 = [v47 engagedInTop1];
  v49 = v48 / ([v47 numberOfSessionsWithPredictions] + 0.000001);
  *&v49 = v49;
  *&v49 = roundf(*&v49 * 100.0) / 100.0;
  [v11 setProdShadowEvaluationSuccessAt1:v49];
  v50 = [v47 engagedInTop2];
  v51 = v50 / ([v47 numberOfSessionsWithPredictions] + 0.000001);
  *&v51 = v51;
  *&v51 = roundf(*&v51 * 100.0) / 100.0;
  [v11 setProdShadowEvaluationSuccessAt2:v51];
  v52 = [v47 engagedInTop4];
  v53 = v52 / ([v47 numberOfSessionsWithPredictions] + 0.000001);
  *&v53 = v53;
  *&v53 = roundf(*&v53 * 100.0) / 100.0;
  [v11 setProdShadowEvaluationSuccessAt4:v53];
  v54 = [v47 engagedInTop8];
  v55 = v54 / ([v47 numberOfSessionsWithPredictions] + 0.000001);
  *&v55 = v55;
  *&v55 = roundf(*&v55 * 100.0) / 100.0;
  [v11 setProdShadowEvaluationSuccessAt8:v55];
  [v47 reciprocalRank];
  v57 = v56 / ([v47 numberOfSessionsWithPredictions] + 0.000001);
  *&v57 = v57;
  *&v57 = roundf(*&v57 * 100.0) / 100.0;
  [v11 setProdShadowEvaluationMRR:v57];
  v58 = [v47 numberOfSessionsWithPredictions];
  v59 = v58;
  if (v58 >= 0x65)
  {
    v59 = 10 * (v58 / 0xA);
  }

  [v11 setProdShadowEvaluationNumberOfSessionsWithPredictions:v59];
  v60 = [v47 numberOfSessions];
  v61 = v60;
  if (v60 >= 0x65)
  {
    v61 = 10 * (v60 / 0xA);
  }

  [v11 setProdShadowEvaluationNumberOfSessions:v61];
  v62 = [(ATXProactiveSuggestionClientModelEvaluator *)v10 resultForClientModelName:v46 suggestionExecutableType:1 sessionType:1 removeDockedApps:0];
  v63 = [v62 engagedInTop1];
  v64 = v63 / ([v62 numberOfSessionsWithPredictions] + 0.000001);
  *&v64 = v64;
  *&v64 = roundf(*&v64 * 100.0) / 100.0;
  [v11 setProdUIEvaluationSuccessAt1:v64];
  v65 = [v62 engagedInTop2];
  v66 = v65 / ([v62 numberOfSessionsWithPredictions] + 0.000001);
  *&v66 = v66;
  *&v66 = roundf(*&v66 * 100.0) / 100.0;
  [v11 setProdUIEvaluationSuccessAt2:v66];
  v67 = [v62 engagedInTop4];
  v68 = v67 / ([v62 numberOfSessionsWithPredictions] + 0.000001);
  *&v68 = v68;
  *&v68 = roundf(*&v68 * 100.0) / 100.0;
  [v11 setProdUIEvaluationSuccessAt4:v68];
  v69 = [v62 engagedInTop8];
  v70 = v69 / ([v62 numberOfSessionsWithPredictions] + 0.000001);
  *&v70 = v70;
  *&v70 = roundf(*&v70 * 100.0) / 100.0;
  [v11 setProdUIEvaluationSuccessAt8:v70];
  [v62 reciprocalRank];
  v72 = v71 / ([v62 numberOfSessionsWithPredictions] + 0.000001);
  *&v72 = v72;
  *&v72 = roundf(*&v72 * 100.0) / 100.0;
  [v11 setProdUIEvaluationMRR:v72];
  v73 = [v62 numberOfSessionsWithPredictions];
  v74 = v73;
  if (v73 >= 0x65)
  {
    v74 = 10 * (v73 / 0xA);
  }

  [v11 setProdUIEvaluationNumberOfSessionsWithPredictions:v74];
  v75 = [v62 numberOfSessions];
  v76 = v75;
  if (v75 >= 0x65)
  {
    v76 = 10 * (v75 / 0xA);
  }

  [v11 setProdUIEvaluationNumberOfSessions:v76];

  return v11;
}

+ (id)modelMetricsForConfig:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277D41B98] sharedInstance];
  v6 = [v5 abGroup];
  [v4 setBlendingABGroup:v6];

  v7 = [v3 abGroupIdentifier];
  [v4 setAbGroup:v7];

  v8 = [v3 clientModel];
  v9 = [v8 clientModelId];
  [v4 setClientModelId:v9];

  [v4 setPipelineEnabled:{objc_msgSend(v3, "isEnabled")}];
  [v4 setHasDefaultHyperParams:1];
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = 0;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__97;
  v72 = __Block_byref_object_dispose__97;
  v73 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v10 = [v3 datastore];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __72__ATXCandidateRelevanceModelOfflineDataHarvester_modelMetricsForConfig___block_invoke;
  v47[3] = &unk_2785A1258;
  v47[4] = &v86;
  v47[5] = &v82;
  v47[6] = &v78;
  v47[7] = &v74;
  v47[8] = &v68;
  v47[9] = &v64;
  v47[10] = &v60;
  v47[11] = &v56;
  v47[12] = &v52;
  v47[13] = &v48;
  v11 = [v3 clientModel];
  v12 = [v11 clientModelId];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __72__ATXCandidateRelevanceModelOfflineDataHarvester_modelMetricsForConfig___block_invoke_2;
  v44[3] = &unk_2785A1210;
  v46 = a1;
  v13 = v3;
  v45 = v13;
  [v10 receiveMostRecentVerifiedTrainedModelTrainingResults:v47 clientModelName:v12 completion:v44];

  [v4 setHasTrainedModel:*(v65 + 24)];
  v14 = v75[3];
  if (v14)
  {
    if (v14 == 1)
    {
      v15 = @"LogisticRegression";
    }

    else
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %lu)", v75[3]];
    }
  }

  else
  {
    v15 = @"Unknown";
  }

  [v4 setModelType:v15];

  LODWORD(v16) = *(v61 + 6);
  v17 = (v53[6] / (v16 + 0.0001));
  if (v17 >= 0x65)
  {
    v17 = 10 * (v17 / 0xA);
  }

  [v4 setAvgNumberOfModelWeights:v17];
  LODWORD(v18) = *(v61 + 6);
  v19 = (v57[6] / (v18 + 0.0001));
  if (v19 >= 0x65)
  {
    v19 = 10 * (v19 / 0xA);
  }

  [v4 setAvgNumberOfNonZeroModelWeights:v19];
  v20 = *(v61 + 6);
  if (v20 >= 0x65)
  {
    v20 = 10 * (v20 / 0xA);
  }

  [v4 setNumberOfCandidateModels:v20];
  v21 = objc_opt_class();
  v22 = v69[5];
  v23 = [MEMORY[0x277CBEAA8] now];
  [v4 setModelAgeInDays:{objc_msgSend(v21, "daysBetweenStartDate:endDate:", v22, v23)}];

  v24 = *(v83 + 6);
  if (v24 >= 0x65)
  {
    v24 = 10 * (v24 / 0xA);
  }

  [v4 setTrainDataNumberOfPositiveSamples:v24];
  v25 = *(v87 + 6);
  if (v25 >= 0x65)
  {
    v25 = 10 * (v25 / 0xA);
  }

  [v4 setTrainDataNumberOfSamples:v25];
  v26 = *(v79 + 6);
  if (v26 >= 0x65)
  {
    v26 = 10 * (v26 / 0xA);
  }

  [v4 setTrainDataNumberOfDaysWithPositiveSamples:v26];
  v27 = *(v61 + 6);
  if (v27 >= 0x65)
  {
    v27 = 10 * (v27 / 0xA);
  }

  [v4 setTrainDataNumberOfCandidates:v27];
  v28 = v49[3];
  if (v28 >= 0xC)
  {
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %li)", v49[3]];
  }

  else
  {
    v29 = off_2785A1278[v28];
  }

  [v4 setExecutableType:v29];

  v30 = [v13 modelTrainingPlan];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v32 = [v13 modelTrainingPlan];
    v33 = +[ATXCandidateRelevanceLogisticRegressionModelTrainingPlan stringForPMLRegularizationStrategy:](ATXCandidateRelevanceLogisticRegressionModelTrainingPlan, "stringForPMLRegularizationStrategy:", [v32 regularizationStrategy]);
    [v4 setLogisticRegressionRegularizationStrategy:v33];

    [v32 regularizationRate];
    *&v35 = roundf(v34 * 100.0) / 100.0;
    [v4 setLogisticRegressionRegularizationRate:v35];
    [v32 regularizationL1Ratio];
    *&v37 = roundf(v36 * 100.0) / 100.0;
    [v4 setLogisticRegressionRegularizationL1Ratio:v37];
    [v32 learningRate];
    *&v39 = roundf(v38 * 100.0) / 100.0;
    [v4 setLearningRate:v39];
    v40 = [v32 minIterations];
    v41 = v40;
    if (v40 >= 0x65)
    {
      v41 = 10 * (v40 / 0xA);
    }

    [v4 setMinIterations:v41];
    [v32 stoppingThreshold];
    [v4 setStoppingThreshold:?];
  }

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v68, 8);

  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v82, 8);
  _Block_object_dispose(&v86, 8);

  return v4;
}

void __72__ATXCandidateRelevanceModelOfflineDataHarvester_modelMetricsForConfig___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 datasetMetadata];
  *(*(a1[4] + 8) + 24) += [v4 numberOfSamples];

  v5 = [v3 datasetMetadata];
  *(*(a1[5] + 8) + 24) += [v5 numberOfPositiveSamples];

  v6 = [v3 datasetMetadata];
  *(*(a1[6] + 8) + 24) = [v6 numberOfDaysWithSamples];

  v7 = [v3 model];
  *(*(a1[7] + 8) + 24) = [v7 modelType];

  v8 = [v3 trainDate];
  v9 = *(a1[8] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  *(*(a1[9] + 8) + 24) = 1;
  ++*(*(a1[10] + 8) + 24);
  v11 = [v3 model];
  *(*(a1[11] + 8) + 24) += [v11 numberOfNonZeroModelWeights];

  v12 = [v3 model];
  *(*(a1[12] + 8) + 24) += [v12 numberOfModelWeights];

  v13 = [v3 candidate];

  *(*(a1[13] + 8) + 24) = [v13 suggestionExecutableType];
}

void __72__ATXCandidateRelevanceModelOfflineDataHarvester_modelMetricsForConfig___block_invoke_2(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = __atxlog_handle_relevance_model();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __77__ATXCandidateRelevanceModelOfflineDataHarvester_candidateMetricsFromConfig___block_invoke_2_cold_1(a1);
    }
  }
}

+ (unsigned)daysBetweenStartDate:(id)a3 endDate:(id)a4
{
  v4 = -1;
  if (a3 && a4)
  {
    v6 = MEMORY[0x277CBEA80];
    v7 = a4;
    v8 = a3;
    v9 = [v6 currentCalendar];
    v10 = [v9 components:16 fromDate:v8 toDate:v7 options:0];

    v4 = [v10 day];
  }

  return v4;
}

void __77__ATXCandidateRelevanceModelOfflineDataHarvester_candidateMetricsFromConfig___block_invoke_2_cold_1(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [*(a1 + 32) clientModel];
  v6 = [v5 clientModelId];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0(&dword_2263AA000, v7, v8, "%@ - Error retrieving most recent verified trained model for %@.", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

@end