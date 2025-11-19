@interface ATXMagicalMomentsPredictionScorer
- (ATXMagicalMomentsPredictionScorer)initWithCorrelatedEvents:(id)a3 andGlobalAppLaunchCountedSet:(id)a4;
- (BOOL)subExpertCanMakeHighConfidencePredictions;
- (BOOL)subExpertCanMakeHighConfidencePredictionsForBundleId:(id)a3;
- (BOOL)subExpertHasObservedEnoughLaunchesForMultipleAppsToMakePredictions;
- (BOOL)subExpertHasObservedEnoughLaunchesForOneAppToMakePredictions;
- (BOOL)subExpertHasWitnessedEnoughRelevantAppLaunches;
- (double)scalingFactorFromTopPrediction;
- (id)generatePredictions;
- (id)getPredictionsFromFinalConfidences;
- (id)relevanceScoreForBundleId:(id)a3;
- (id)startOfDayForDate:(id)a3;
- (void)computeModelConfidences;
- (void)computeRelevanceScoresForAllRelevantBundleIds;
- (void)computeTimeDecayedCumulativeScores;
- (void)getRelevantAppLaunchCountsAndDateSetFromCorrelationData;
- (void)scaleAllScoresWithTopScoringFactor;
- (void)subExpertHasObservedEnoughLaunchesForMultipleAppsToMakePredictions;
- (void)subExpertHasObservedEnoughLaunchesForOneAppToMakePredictions;
@end

@implementation ATXMagicalMomentsPredictionScorer

- (ATXMagicalMomentsPredictionScorer)initWithCorrelatedEvents:(id)a3 andGlobalAppLaunchCountedSet:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7 && v8 && [v7 count] && objc_msgSend(v9, "count"))
  {
    v15.receiver = self;
    v15.super_class = ATXMagicalMomentsPredictionScorer;
    v10 = [(ATXMagicalMomentsPredictionScorer *)&v15 init];
    p_isa = &v10->super.isa;
    if (v10)
    {
      objc_storeStrong(&v10->_globalAppLaunches, a4);
      objc_storeStrong(p_isa + 1, a3);
    }

    self = p_isa;
    v12 = self;
  }

  else
  {
    v13 = __atxlog_handle_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_INFO, "Attempted to initialize a Magical Moments Prediction Scorer without passing global app launch counts or relevant correlated events. Nothing to predict for this sub-expert!", buf, 2u);
    }

    v12 = 0;
  }

  return v12;
}

- (void)computeRelevanceScoresForAllRelevantBundleIds
{
  v30 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = self->_relevantAppLaunches;
  v4 = [(NSCountedSet *)v3 countByEnumeratingWithState:&v17 objects:v29 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v18;
    *&v5 = 138413058;
    v16 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [(ATXMagicalMomentsPredictionScorer *)self relevanceScoreForBundleId:v9, v16, v17];
        [(NSMutableDictionary *)self->_relevanceWeightsByIdentifier setObject:v10 forKeyedSubscript:v9];

        self->_totalRelevantLaunchesForAllBundleIds += [(NSCountedSet *)self->_relevantAppLaunches countForObject:v9];
        v11 = __atxlog_handle_default();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = [(NSCountedSet *)self->_relevantAppLaunches countForObject:v9];
          v13 = [(NSCountedSet *)self->_globalAppLaunches countForObject:v9];
          v14 = [(NSMutableDictionary *)self->_relevanceWeightsByIdentifier objectForKeyedSubscript:v9];
          *buf = v16;
          v22 = v9;
          v23 = 2048;
          v24 = v12;
          v25 = 2048;
          v26 = v13;
          v27 = 2112;
          v28 = v14;
          _os_log_debug_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEBUG, "ATXMM: ==> bundleId: %@, relevant launches: %lu, global launches: %lu, relevance weight: %@", buf, 0x2Au);
        }
      }

      v6 = [(NSCountedSet *)v3 countByEnumeratingWithState:&v17 objects:v29 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)getRelevantAppLaunchCountsAndDateSetFromCorrelationData
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  dateSetForDecay = self->_dateSetForDecay;
  self->_dateSetForDecay = v3;

  v5 = objc_opt_new();
  relevantAppLaunches = self->_relevantAppLaunches;
  self->_relevantAppLaunches = v5;

  v7 = objc_opt_new();
  relevanceWeightsByIdentifier = self->_relevanceWeightsByIdentifier;
  self->_relevanceWeightsByIdentifier = v7;

  self->_totalRelevantLaunchesForAllBundleIds = 0;
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  numUniqueAnchorOccurrencesPerCandidate = self->_numUniqueAnchorOccurrencesPerCandidate;
  self->_numUniqueAnchorOccurrencesPerCandidate = v10;

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = self->_correlatedEvents;
  v12 = [(NSArray *)obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v12)
  {
    v13 = v12;
    v35 = *v38;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v38 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v37 + 1) + 8 * i);
        v16 = [v15 firstEvent];
        v17 = [v16 startDate];
        v18 = [(ATXMagicalMomentsPredictionScorer *)self startOfDayForDate:v17];

        [(NSMutableOrderedSet *)self->_dateSetForDecay addObject:v18];
        v19 = self->_relevantAppLaunches;
        v20 = [v15 secondEvent];
        v21 = [v20 identifier];
        [(NSCountedSet *)v19 addObject:v21];

        v22 = [v15 secondEvent];
        v23 = [v22 identifier];
        v24 = [v9 objectForKeyedSubscript:v23];

        if (!v24)
        {
          v25 = objc_opt_new();
          v26 = [v15 secondEvent];
          v27 = [v26 identifier];
          [v9 setObject:v25 forKeyedSubscript:v27];
        }

        v28 = [v15 secondEvent];
        v29 = [v28 identifier];
        v30 = [v9 objectForKeyedSubscript:v29];
        v31 = [v15 firstEvent];
        v32 = [v31 startDate];
        [v30 addObject:v32];
      }

      v13 = [(NSArray *)obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v13);
  }

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __92__ATXMagicalMomentsPredictionScorer_getRelevantAppLaunchCountsAndDateSetFromCorrelationData__block_invoke;
  v36[3] = &unk_27859B318;
  v36[4] = self;
  [v9 enumerateKeysAndObjectsUsingBlock:v36];
  [(NSMutableOrderedSet *)self->_dateSetForDecay sortUsingComparator:&__block_literal_global_83];
  [(ATXMagicalMomentsPredictionScorer *)self computeRelevanceScoresForAllRelevantBundleIds];

  v33 = *MEMORY[0x277D85DE8];
}

void __92__ATXMagicalMomentsPredictionScorer_getRelevantAppLaunchCountsAndDateSetFromCorrelationData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(a3, "count")}];
  [*(*(a1 + 32) + 40) setObject:v7 forKeyedSubscript:v6];
}

- (BOOL)subExpertHasObservedEnoughLaunchesForOneAppToMakePredictions
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_relevantAppLaunches;
  v4 = [(NSCountedSet *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([(NSCountedSet *)self->_relevantAppLaunches countForObject:*(*(&v12 + 1) + 8 * i), v12]>= 7)
        {
          v9 = __atxlog_handle_default();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            [ATXMagicalMomentsPredictionScorer subExpertHasObservedEnoughLaunchesForOneAppToMakePredictions];
          }

          v8 = 1;
          goto LABEL_15;
        }
      }

      v5 = [(NSCountedSet *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(&v3->super.super.super, OS_LOG_TYPE_DEBUG))
  {
    [ATXMagicalMomentsPredictionScorer subExpertHasObservedEnoughLaunchesForOneAppToMakePredictions];
  }

  v8 = 0;
LABEL_15:

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)subExpertHasObservedEnoughLaunchesForMultipleAppsToMakePredictions
{
  p_totalRelevantLaunchesForAllBundleIds = &self->_totalRelevantLaunchesForAllBundleIds;
  if (self->_totalRelevantLaunchesForAllBundleIds < 0xF || [(NSCountedSet *)self->_relevantAppLaunches count]< 3)
  {
    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(ATXMagicalMomentsPredictionScorer *)self subExpertHasObservedEnoughLaunchesForMultipleAppsToMakePredictions];
    }

    v5 = 0;
  }

  else
  {
    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(ATXMagicalMomentsPredictionScorer *)&self->_relevantAppLaunches subExpertHasObservedEnoughLaunchesForMultipleAppsToMakePredictions];
    }

    v5 = 1;
  }

  return v5;
}

- (BOOL)subExpertHasWitnessedEnoughRelevantAppLaunches
{
  if ([(ATXMagicalMomentsPredictionScorer *)self subExpertHasObservedEnoughLaunchesForOneAppToMakePredictions])
  {
    v3 = __atxlog_handle_default();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [ATXMagicalMomentsPredictionScorer subExpertHasWitnessedEnoughRelevantAppLaunches];
    }

LABEL_7:

    LOBYTE(v4) = 1;
    return v4;
  }

  v4 = [(ATXMagicalMomentsPredictionScorer *)self subExpertHasObservedEnoughLaunchesForMultipleAppsToMakePredictions];
  if (v4)
  {
    v3 = __atxlog_handle_default();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [ATXMagicalMomentsPredictionScorer subExpertHasWitnessedEnoughRelevantAppLaunches];
    }

    goto LABEL_7;
  }

  return v4;
}

- (BOOL)subExpertCanMakeHighConfidencePredictions
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableOrderedSet *)self->_dateSetForDecay count];
  if (v3 < [(ATXMagicalMomentsPredictionScorer *)self minimumNumberOfDaysOfObservationsRequiredForSubExpertToMakePredictions])
  {
    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(NSMutableOrderedSet *)self->_dateSetForDecay count];
      v11 = 134218240;
      v12 = v5;
      v13 = 2048;
      v14 = [(ATXMagicalMomentsPredictionScorer *)self minimumNumberOfDaysOfObservationsRequiredForSubExpertToMakePredictions];
      v6 = "ATXMM: Subexpert has only been observed on %lu unique days. Minimum days required is %lu.";
      v7 = v4;
      v8 = 22;
LABEL_8:
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, v6, &v11, v8);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (![(ATXMagicalMomentsPredictionScorer *)self subExpertHasWitnessedEnoughRelevantAppLaunches])
  {
    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      v6 = "ATXMM: Subexpert has not observed enough relevant app launches to confidently make predictions.";
      v7 = v4;
      v8 = 2;
      goto LABEL_8;
    }

LABEL_9:

    result = 0;
    goto LABEL_10;
  }

  result = 1;
LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)subExpertCanMakeHighConfidencePredictionsForBundleId:(id)a3
{
  relevantAppLaunches = self->_relevantAppLaunches;
  v5 = a3;
  v6 = [(NSCountedSet *)relevantAppLaunches countForObject:v5];
  v7 = [(NSCountedSet *)self->_globalAppLaunches countForObject:v5];
  v8 = [(NSMutableDictionary *)self->_numUniqueAnchorOccurrencesPerCandidate objectForKey:v5];

  v9 = [v8 unsignedIntegerValue];
  if (v7 < [(ATXMagicalMomentsPredictionScorer *)self minimumNumberOfGlobalObservationsOfBundleIdForMMScoring])
  {
    v10 = __atxlog_handle_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ATXMagicalMomentsPredictionScorer subExpertCanMakeHighConfidencePredictionsForBundleId:];
    }

LABEL_10:

    return 0;
  }

  if (v6 < [(ATXMagicalMomentsPredictionScorer *)self minimumNumberOfRelevantObservationsOfBundleIdForMMScoring])
  {
    v10 = __atxlog_handle_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ATXMagicalMomentsPredictionScorer subExpertCanMakeHighConfidencePredictionsForBundleId:];
    }

    goto LABEL_10;
  }

  if (v9 < [(ATXMagicalMomentsPredictionScorer *)self minimumNumberOfUniqueAnchorOccurrencesForBundleIdForMMScoring])
  {
    v10 = __atxlog_handle_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ATXMagicalMomentsPredictionScorer subExpertCanMakeHighConfidencePredictionsForBundleId:];
    }

    goto LABEL_10;
  }

  return 1;
}

- (id)relevanceScoreForBundleId:(id)a3
{
  relevantAppLaunches = self->_relevantAppLaunches;
  v5 = a3;
  v6 = [(NSCountedSet *)relevantAppLaunches countForObject:v5];
  v7 = v6 / [(NSCountedSet *)self->_globalAppLaunches countForObject:v5];
  v8 = [(ATXMagicalMomentsPredictionScorer *)self subExpertCanMakeHighConfidencePredictionsForBundleId:v5];

  if (!v8)
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [ATXMagicalMomentsPredictionScorer relevanceScoreForBundleId:];
    }

    [(ATXMagicalMomentsPredictionScorer *)self minimumRelevanceWeightForMMScoring];
    v7 = v7 * v10;
  }

  [(ATXMagicalMomentsPredictionScorer *)self maximumRelevanceWeightForMMScoring];
  if (v7 > v11)
  {
    [(ATXMagicalMomentsPredictionScorer *)self maximumRelevanceWeightForMMScoring];
    v7 = v12;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithDouble:v7];

  return v13;
}

- (id)generatePredictions
{
  if (self->_finalPredictionConfidences)
  {
LABEL_16:
    v11 = [(ATXMagicalMomentsPredictionScorer *)self getPredictionsFromFinalConfidences];
    goto LABEL_17;
  }

  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [ATXMagicalMomentsPredictionScorer generatePredictions];
  }

  [(ATXMagicalMomentsPredictionScorer *)self getRelevantAppLaunchCountsAndDateSetFromCorrelationData];
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [ATXMagicalMomentsPredictionScorer generatePredictions];
  }

  v5 = [(ATXMagicalMomentsPredictionScorer *)self subExpertCanMakeHighConfidencePredictions];
  v6 = __atxlog_handle_default();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [ATXMagicalMomentsPredictionScorer generatePredictions];
    }

    [(ATXMagicalMomentsPredictionScorer *)self computeTimeDecayedCumulativeScores];
    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [ATXMagicalMomentsPredictionScorer generatePredictions];
    }

    [(ATXMagicalMomentsPredictionScorer *)self scaleAllScoresWithTopScoringFactor];
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [ATXMagicalMomentsPredictionScorer generatePredictions];
    }

    [(ATXMagicalMomentsPredictionScorer *)self computeModelConfidences];
    v10 = __atxlog_handle_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ATXMagicalMomentsPredictionScorer generatePredictions];
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_INFO, "ATXMM: Failed to meet quality control criteria. Nothing to predict for this sub-expert!", v13, 2u);
  }

  v11 = MEMORY[0x277CBEBF8];
LABEL_17:

  return v11;
}

- (void)computeTimeDecayedCumulativeScores
{
  v77 = *MEMORY[0x277D85DE8];
  if (!self->_cumulativeScoresWithDecayedWeightsByIdentifier)
  {
    v3 = objc_opt_new();
    cumulativeScoresWithDecayedWeightsByIdentifier = self->_cumulativeScoresWithDecayedWeightsByIdentifier;
    self->_cumulativeScoresWithDecayedWeightsByIdentifier = v3;

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = self->_correlatedEvents;
    v5 = [(NSArray *)obj countByEnumeratingWithState:&v61 objects:v76 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v62;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v62 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v61 + 1) + 8 * i);
          v10 = [v9 firstEvent];
          v11 = [v10 startDate];
          v12 = [(ATXMagicalMomentsPredictionScorer *)self startOfDayForDate:v11];

          v13 = [(NSMutableOrderedSet *)self->_dateSetForDecay indexOfObject:v12];
          relevanceWeightsByIdentifier = self->_relevanceWeightsByIdentifier;
          v15 = [v9 secondEvent];
          v16 = [v15 identifier];
          v17 = [(NSMutableDictionary *)relevanceWeightsByIdentifier objectForKeyedSubscript:v16];
          [v17 doubleValue];
          v19 = v18;
          v20 = pow(0.99, v13);

          v21 = self->_cumulativeScoresWithDecayedWeightsByIdentifier;
          v22 = [v9 secondEvent];
          v23 = [v22 identifier];
          v24 = [(NSMutableDictionary *)v21 objectForKeyedSubscript:v23];

          if (!v24)
          {
            v25 = self->_cumulativeScoresWithDecayedWeightsByIdentifier;
            v26 = [v9 secondEvent];
            v27 = [v26 identifier];
            [(NSMutableDictionary *)v25 setObject:&unk_283A55F10 forKeyedSubscript:v27];
          }

          v28 = self->_cumulativeScoresWithDecayedWeightsByIdentifier;
          v29 = [v9 secondEvent];
          v30 = [v29 identifier];
          v31 = [(NSMutableDictionary *)v28 objectForKeyedSubscript:v30];
          [v31 doubleValue];
          v33 = v20 * v19 + v32;

          v34 = [MEMORY[0x277CCABB0] numberWithDouble:v33];
          v35 = self->_cumulativeScoresWithDecayedWeightsByIdentifier;
          v36 = [v9 secondEvent];
          v37 = [v36 identifier];
          [(NSMutableDictionary *)v35 setObject:v34 forKeyedSubscript:v37];

          if (!self->_topScoringIdentifier || (-[NSMutableDictionary objectForKeyedSubscript:](self->_cumulativeScoresWithDecayedWeightsByIdentifier, "objectForKeyedSubscript:"), v38 = objc_claimAutoreleasedReturnValue(), [v38 doubleValue], v40 = v39, v38, v33 > v40))
          {
            v41 = [v9 secondEvent];
            v42 = [v41 identifier];
            topScoringIdentifier = self->_topScoringIdentifier;
            self->_topScoringIdentifier = v42;
          }
        }

        v6 = [(NSArray *)obj countByEnumeratingWithState:&v61 objects:v76 count:16];
      }

      while (v6);
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v44 = self->_cumulativeScoresWithDecayedWeightsByIdentifier;
    v45 = [(NSMutableDictionary *)v44 countByEnumeratingWithState:&v57 objects:v75 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v58;
      do
      {
        for (j = 0; j != v46; ++j)
        {
          if (*v58 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = *(*(&v57 + 1) + 8 * j);
          v50 = __atxlog_handle_default();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            obja = [(NSCountedSet *)self->_relevantAppLaunches countForObject:v49];
            v51 = [(NSCountedSet *)self->_globalAppLaunches countForObject:v49];
            v52 = [(NSMutableDictionary *)self->_relevanceWeightsByIdentifier objectForKeyedSubscript:v49];
            v53 = [(NSMutableDictionary *)self->_cumulativeScoresWithDecayedWeightsByIdentifier objectForKeyedSubscript:v49];
            *buf = 138413314;
            v66 = v49;
            v67 = 2048;
            v68 = obja;
            v69 = 2048;
            v70 = v51;
            v71 = 2112;
            v72 = v52;
            v73 = 2112;
            v74 = v53;
            _os_log_debug_impl(&dword_2263AA000, v50, OS_LOG_TYPE_DEBUG, "ATXMM: ==> bundleId: %@, relevant launches: %lu, global launches: %lu, relevance weight: %@, decayed cumulative score: %@", buf, 0x34u);
          }
        }

        v46 = [(NSMutableDictionary *)v44 countByEnumeratingWithState:&v57 objects:v75 count:16];
      }

      while (v46);
    }
  }

  v54 = *MEMORY[0x277D85DE8];
}

- (double)scalingFactorFromTopPrediction
{
  v3 = [(NSMutableDictionary *)self->_cumulativeScoresWithDecayedWeightsByIdentifier objectForKeyedSubscript:self->_topScoringIdentifier];
  [v3 doubleValue];
  v5 = v4;

  return [(NSCountedSet *)self->_relevantAppLaunches countForObject:self->_topScoringIdentifier]/ v5;
}

- (void)scaleAllScoresWithTopScoringFactor
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a2;
  _os_log_debug_impl(&dword_2263AA000, log, OS_LOG_TYPE_DEBUG, "ATXMM: Scaling Factor: %f", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)computeModelConfidences
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  finalPredictionConfidences = self->_finalPredictionConfidences;
  self->_finalPredictionConfidences = v3;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = self->_cumulativeScoresWithDecayedWeightsByIdentifier;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v26;
    *&v7 = 134218498;
    v24 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_cumulativeScoresWithDecayedWeightsByIdentifier objectForKeyedSubscript:*&v11, v24];
        [v12 doubleValue];
        v14 = v13;

        v15 = v14 + 1.0;
        v16 = self->_totalScaledCumulativeScoresForAllBundleIds + 1.0 - v14;
        if (v14 + 1.0 < 1.0 && fabs(v15 + -1.0) >= 0.00001 || v16 < 1.0 && fabs(v16 + -1.0) >= 0.00001)
        {
          v19 = __atxlog_handle_default();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            totalScaledCumulativeScoresForAllBundleIds = self->_totalScaledCumulativeScoresForAllBundleIds;
            *buf = v24;
            v30 = totalScaledCumulativeScoresForAllBundleIds;
            v31 = 2048;
            v32 = v14;
            v33 = 2112;
            v34 = v11;
            _os_log_error_impl(&dword_2263AA000, v19, OS_LOG_TYPE_ERROR, "ERROR: Wrong weight in the model: {totalWeight=%f, appWeight=%f, app=%@}", buf, 0x20u);
          }

          v18 = 0.0;
        }

        else
        {
          [ATXMagicalMomentsStatistics calculateModelConfidenceWithCorrectPredictions:v14 + 1.0 incorrectPredictions:self->_totalScaledCumulativeScoresForAllBundleIds + 1.0 - v14];
          v18 = v17;
        }

        v20 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
        [(NSMutableDictionary *)self->_finalPredictionConfidences setObject:v20 forKeyedSubscript:*&v11];

        v21 = __atxlog_handle_default();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138413058;
          v30 = v11;
          v31 = 2048;
          v32 = v15;
          v33 = 2048;
          v34 = v16;
          v35 = 2048;
          v36 = v18;
          _os_log_debug_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEBUG, "ATXMM: ==> bundleId: %@, alpha: %f, beta: %f, confidence: %f", buf, 0x2Au);
        }
      }

      v8 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v8);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)getPredictionsFromFinalConfidences
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = self->_finalPredictionConfidences;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v21;
    *&v6 = 138412802;
    v19 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_relevanceWeightsByIdentifier objectForKeyedSubscript:v10, v19, v20];
        [v11 doubleValue];
        v13 = v12;

        if (v13 >= 0.0)
        {
          v15 = [ATXMagicalMomentsPrediction alloc];
          v16 = [(NSMutableDictionary *)self->_finalPredictionConfidences objectForKeyedSubscript:v10];
          [v16 doubleValue];
          v14 = [(ATXMagicalMomentsPrediction *)v15 initWithConfidence:v10 predictionIdentifier:?];

          [v3 addObject:v14];
        }

        else
        {
          v14 = __atxlog_handle_default();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = v19;
            v25 = v10;
            v26 = 2048;
            v27 = v13;
            v28 = 2048;
            v29 = 0;
            _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_INFO, "FILTER: A globally used app would not be suggested. (%@: %f < %f)", buf, 0x20u);
          }
        }
      }

      v7 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v7);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)startOfDayForDate:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v7 = [v6 startOfDayForDate:v4];

  return v7;
}

- (void)subExpertHasObservedEnoughLaunchesForOneAppToMakePredictions
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_3_1(&dword_2263AA000, v0, v1, "ATXMM: bundleId: %@ has %lu relevantLaunchesForBundleId launches, and makes the expert eligible for training/prediction.");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)subExpertHasObservedEnoughLaunchesForMultipleAppsToMakePredictions
{
  v12 = *MEMORY[0x277D85DE8];
  [*a1 count];
  v3 = *a2;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v4, v5, "ATXMM: %lu bundleIds observed for this subexpert with %lu total relevant launches, making the expert eligible for training/prediction.", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)relevanceScoreForBundleId:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_3_1(&dword_2263AA000, v0, v1, "ATXMM: Can't make a confident prediction for the bundleId with relevantLaunchCount: %lu globalLaunchCount: %lu", v3, v4);
  v2 = *MEMORY[0x277D85DE8];
}

@end