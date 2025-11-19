@interface ATXAnchorModelPhase1Trainer
- (BOOL)candidateSatisfiesAllThresholds:(id)a3 trainingResult:(id)a4;
- (BOOL)candidateUniqueAnchorOccurrencesIsAtLeastMinimum:(int64_t)a3 candidateId:(id)a4 trainingResult:(id)a5;
- (BOOL)classConditionalProbabilityOfAnchorIsAtLeastMinimum:(double)a3 candidateId:(id)a4 trainingResult:(id)a5;
- (BOOL)posteriorProbabilityConditionedOnAnchorIsAtLeastMinimum:(double)a3 candidateId:(id)a4 trainingResult:(id)a5;
- (double)anchorPopularityForCandidate:(id)a3;
- (double)classConditionalProbabilityOfAnchorForCandidate:(id)a3;
- (double)globalPopularityForCandidate:(id)a3;
- (double)posteriorProbabilityConditionedOnAnchorForCandidate:(id)a3;
- (double)standardDeviationOfNumbers:(id)a3;
- (double)standardDeviationOfSecondsAfterAnchorForFirstOccurrenceOfCandidateId:(id)a3;
- (id)initForAnchor:(id)a3;
- (id)initForAnchor:(id)a3 anchorModelDataStoreWrapper:(id)a4;
- (id)initForAnchor:(id)a3 anchorModelDataStoreWrapper:(id)a4 hyperParameters:(id)a5 tracker:(id)a6;
- (id)selectedPredictionCandidates;
- (id)uniqueCandidateIdsThatOccurredAfterAnchor;
- (void)_logPredictionsFilteredDuringPhase1WithCandidateIdsToConsider:(id)a3 selectedCandidates:(id)a4;
- (void)uniqueCandidateIdsThatOccurredAfterAnchor;
@end

@implementation ATXAnchorModelPhase1Trainer

- (id)initForAnchor:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(ATXAnchorModelPhase1Trainer *)self initForAnchor:v4 anchorModelDataStoreWrapper:v5];

  return v6;
}

- (id)initForAnchor:(id)a3 anchorModelDataStoreWrapper:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[ATXAnchorModelHyperParameters sharedInstance];
  v9 = objc_opt_new();
  v10 = [(ATXAnchorModelPhase1Trainer *)self initForAnchor:v7 anchorModelDataStoreWrapper:v6 hyperParameters:v8 tracker:v9];

  return v10;
}

- (id)initForAnchor:(id)a3 anchorModelDataStoreWrapper:(id)a4 hyperParameters:(id)a5 tracker:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ATXAnchorModelPhase1Trainer;
  v15 = [(ATXAnchorModelPhase1Trainer *)&v18 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_anchor, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
    objc_storeStrong(p_isa + 4, a6);
  }

  return p_isa;
}

- (id)selectedPredictionCandidates
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(ATXAnchorModelPhase1Trainer *)self uniqueCandidateIdsThatOccurredAfterAnchor];
  v5 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Phase 1: Starting training...", buf, 2u);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v6 = v4;
  v68 = [v6 countByEnumeratingWithState:&v70 objects:v77 count:16];
  if (v68)
  {
    v7 = *v71;
    v8 = 0x278592000uLL;
    v66 = *v71;
    do
    {
      v9 = 0;
      do
      {
        if (*v71 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v70 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        if ([(ATXBackgroundActivityProtocol *)self->_runningTask didDefer])
        {
          v59 = __atxlog_handle_anchor();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            anchor = self->_anchor;
            *buf = 138412290;
            v76 = anchor;
            _os_log_impl(&dword_2263AA000, v59, OS_LOG_TYPE_DEFAULT, "Phase 1: Deferring training of additional anchors in the middle of training anchor model for anchor %@ because XPC activity asked for deferral. Not going to process any other anchors for now.", buf, 0xCu);
          }

          goto LABEL_59;
        }

        v12 = *(v8 + 3936);
        v13 = objc_opt_new();
        if ([(ATXAnchorModelPhase1Trainer *)self candidateSatisfiesAllThresholds:v10 trainingResult:v13])
        {
          v69 = v13;
          v14 = [(ATXBackgroundActivityProtocol *)self->_runningTask didDefer];
          v15 = __atxlog_handle_anchor();
          v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
          if (v14)
          {
            if (v16)
            {
LABEL_57:
              v62 = self->_anchor;
              *buf = 138412290;
              v76 = v62;
              _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "Deferring training of additional anchors in the middle of training anchor model for anchor %@ because XPC activity asked for deferral. Not going to process any other anchors for now.", buf, 0xCu);
            }

LABEL_58:

            v59 = v69;
LABEL_59:

            objc_autoreleasePoolPop(v11);
            goto LABEL_60;
          }

          if (v16)
          {
            *buf = 138412290;
            v76 = v10;
            _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "Phase 1: Candidate: %@ satisfies all thresholds.", buf, 0xCu);
          }

          v17 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_storeWrapper candidateTypeForCandidateId:v10];
          v18 = [v17 isEqualToString:@"app"];

          storeWrapper = self->_storeWrapper;
          if (v18)
          {
            v67 = v11;
            v20 = objc_opt_new();
            v65 = [(ATXAnchorModelDataStoreWrapperProtocol *)storeWrapper appLaunchDuetEventFromCandidateId:v10 date:v20];

            v21 = objc_opt_new();
            v74 = v65;
            v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v74 count:1];
            v23 = objc_opt_new();
            v24 = [v21 historyForAppLaunchDuetEvents:v22 anchorOccurrenceDate:v23];
            [v24 objectAtIndexedSubscript:0];
            v25 = self;
            v26 = v6;
            v28 = v27 = v3;
            [v69 setLaunchHistory:v28];

            v3 = v27;
            v6 = v26;
            self = v25;

            v29 = v65;
            goto LABEL_28;
          }

          v31 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_storeWrapper candidateTypeForCandidateId:v10];
          v32 = [v31 isEqualToString:@"action"];

          v33 = self->_storeWrapper;
          v13 = v69;
          if (v32)
          {
            v34 = objc_opt_new();
            v35 = [(ATXAnchorModelDataStoreWrapperProtocol *)v33 appIntentDuetEventFromCandidateId:v10 date:v34];

            if (v35)
            {
              v29 = v35;
              v67 = v11;
              v21 = objc_opt_new();
              v22 = objc_opt_new();
              v36 = [v21 historyForActionUUIDWithAppIntentDuetEvent:v29 anchorOccurrenceDate:v22];
LABEL_27:
              v23 = v36;
              [v69 setLaunchHistory:v36];
LABEL_28:

              v11 = v67;
LABEL_29:
              v47 = [(ATXBackgroundActivityProtocol *)self->_runningTask didDefer];
              v15 = __atxlog_handle_anchor();
              v48 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
              if (v47)
              {
                if (v48)
                {
                  goto LABEL_57;
                }

                goto LABEL_58;
              }

              if (v48)
              {
                *buf = 138412290;
                v76 = v10;
                _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "Phase 1: ✅ (YES) Candidate: %@ selected to pass Phase 1.", buf, 0xCu);
              }

              v13 = v69;
              [v69 setCandidateId:v10];
              v49 = self->_storeWrapper;
              v50 = [(ATXAnchor *)self->_anchor anchorTypeString];
              v51 = [(ATXAnchor *)self->_anchor anchorEventIdentifier];
              [(ATXAnchorModelDataStoreWrapperProtocol *)v49 assignMetricsForTrainingResult:v69 anchorType:v50 anchorEventIdentifier:v51 candidateId:v10];

              [v3 addObject:v69];
              v7 = v66;
LABEL_33:
              v8 = 0x278592000;
              goto LABEL_34;
            }

            v52 = __atxlog_handle_anchor();
            v7 = v66;
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v76 = v10;
              v53 = v52;
              v54 = "Skipping candidate because we were unable to access the DuetEvent for the candidate. candidateId: %@";
              goto LABEL_42;
            }
          }

          else
          {
            v37 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_storeWrapper candidateTypeForCandidateId:v10];
            v38 = [v37 isEqualToString:@"mode"];

            v39 = self->_storeWrapper;
            if (v38)
            {
              v40 = objc_opt_new();
              v41 = [(ATXAnchorModelDataStoreWrapperProtocol *)v39 modeBiomeEventFromCandidateId:v10 date:v40];

              if (v41)
              {
                v29 = v41;
                v67 = v11;
                v21 = objc_opt_new();
                v22 = objc_opt_new();
                v36 = [v21 historyForModeChangeEvent:v29 anchorOccurrenceDate:v22];
                goto LABEL_27;
              }

              v52 = __atxlog_handle_anchor();
              v7 = v66;
              if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_43;
              }
            }

            else
            {
              v42 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_storeWrapper candidateTypeForCandidateId:v10];
              v43 = [v42 isEqualToString:@"linkaction"];

              if (!v43)
              {
                goto LABEL_29;
              }

              v44 = self->_storeWrapper;
              v45 = objc_opt_new();
              v46 = [(ATXAnchorModelDataStoreWrapperProtocol *)v44 linkActionBiomeEventFromCandidateId:v10 date:v45];

              if (v46)
              {
                v29 = v46;
                v67 = v11;
                v21 = objc_opt_new();
                v22 = objc_opt_new();
                v36 = [v21 historyForLinkActionChangeEvent:v29 anchorOccurrenceDate:v22];
                goto LABEL_27;
              }

              v52 = __atxlog_handle_anchor();
              v7 = v66;
              if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_43;
              }
            }

            *buf = 138412290;
            v76 = v10;
            v53 = v52;
            v54 = "Skipping candidate because we were unable to access the BMStoreEvent for the candidate. candidateId: %@";
LABEL_42:
            _os_log_impl(&dword_2263AA000, v53, OS_LOG_TYPE_DEFAULT, v54, buf, 0xCu);
          }

LABEL_43:

          goto LABEL_33;
        }

        v30 = __atxlog_handle_anchor();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v76 = v10;
          _os_log_impl(&dword_2263AA000, v30, OS_LOG_TYPE_DEFAULT, "Phase 1: ❌ (NO) Candidate: %@ rejected in Phase 1.", buf, 0xCu);
        }

LABEL_34:
        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v68 != v9);
      v55 = [v6 countByEnumeratingWithState:&v70 objects:v77 count:16];
      v68 = v55;
    }

    while (v55);
  }

  v56 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v56, OS_LOG_TYPE_DEFAULT, "Phase 1: Done training.", buf, 2u);
  }

  if ([(ATXBackgroundActivityProtocol *)self->_runningTask didDefer])
  {
    v57 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v58 = self->_anchor;
      *buf = 138412290;
      v76 = v58;
      _os_log_impl(&dword_2263AA000, v57, OS_LOG_TYPE_DEFAULT, "Deferring training of additional anchors in the middle of training anchor model for anchor %@ because XPC activity asked for deferral. Not going to process any other anchors for now.", buf, 0xCu);
    }

LABEL_60:
    v61 = MEMORY[0x277CBEBF8];
  }

  else
  {
    [(ATXAnchorModelPhase1Trainer *)self _logPredictionsFilteredDuringPhase1WithCandidateIdsToConsider:v6 selectedCandidates:v3];
    v61 = v3;
  }

  v63 = *MEMORY[0x277D85DE8];

  return v61;
}

- (BOOL)candidateSatisfiesAllThresholds:(id)a3 trainingResult:(id)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_storeWrapper numUniqueAnchorOccurrencesWithUniqueCandidateOccurrenceForCandidate:v6 anchor:self->_anchor];
  if (![(ATXBackgroundActivityProtocol *)self->_runningTask didDefer])
  {
    [v7 setNumUniqueAnchorOccurrencesWithUniqueCandidateOccurrence:v8];
    v11 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v47) = 0;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "Phase 1: calculated unique anchor occurrences", &v47, 2u);
    }

    if (![(ATXAnchorModelPhase1Trainer *)self candidateUniqueAnchorOccurrencesIsAtLeastMinimum:[(ATXAnchorModelHyperParameters *)self->_hyperParameters minUniqueAnchorOccurrencesForAnchorForPhase1] candidateId:v6 trainingResult:v7])
    {
      goto LABEL_34;
    }

    if ([(ATXBackgroundActivityProtocol *)self->_runningTask didDefer])
    {
      v9 = __atxlog_handle_anchor();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }

      anchor = self->_anchor;
      v47 = 138412290;
      v48 = anchor;
      goto LABEL_4;
    }

    [(ATXAnchorModelPhase1Trainer *)self classConditionalProbabilityOfAnchorForCandidate:v6];
    v14 = v13;
    [v7 setClassConditionalProbability:?];
    v15 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v47) = 0;
      _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "Phase 1: calculated class conditional probability", &v47, 2u);
    }

    if ([(ATXBackgroundActivityProtocol *)self->_runningTask didDefer])
    {
      v9 = __atxlog_handle_anchor();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }

      v16 = self->_anchor;
      v47 = 138412290;
      v48 = v16;
      goto LABEL_4;
    }

    [(ATXAnchorModelPhase1Trainer *)self posteriorProbabilityConditionedOnAnchorForCandidate:v6];
    v18 = v17;
    [v7 setPosteriorProbability:?];
    v19 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v47) = 0;
      _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "Phase 1: calculated posterior probability", &v47, 2u);
    }

    if ([(ATXBackgroundActivityProtocol *)self->_runningTask didDefer])
    {
      v9 = __atxlog_handle_anchor();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }

      v20 = self->_anchor;
      v47 = 138412290;
      v48 = v20;
      goto LABEL_4;
    }

    [(ATXAnchorModelHyperParameters *)self->_hyperParameters minClassConditionalProbabilityForCandidateForPhase1];
    if (![(ATXAnchorModelPhase1Trainer *)self classConditionalProbabilityOfAnchorIsAtLeastMinimum:v6 candidateId:v7 trainingResult:?])
    {
      [(ATXAnchorModelHyperParameters *)self->_hyperParameters minPosteriorProbabilityToIgnoreClassConditionalProbabilityForCandidateForPhase1];
      if (v18 <= v21)
      {
        goto LABEL_34;
      }

      v22 = __atxlog_handle_anchor();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        [(ATXAnchorModelHyperParameters *)self->_hyperParameters minPosteriorProbabilityToIgnoreClassConditionalProbabilityForCandidateForPhase1];
        v47 = 138412802;
        v48 = v6;
        v49 = 2048;
        v50 = v18;
        v51 = 2048;
        v52 = v23;
        _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, "Phase 1: Candidate %@ posterior probability (%.2f) is high enough to proceed even though the class conditional probability requirement is not met. High threshold: %.2f", &v47, 0x20u);
      }
    }

    if ([(ATXBackgroundActivityProtocol *)self->_runningTask didDefer])
    {
      v9 = __atxlog_handle_anchor();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }

      v24 = self->_anchor;
      v47 = 138412290;
      v48 = v24;
      goto LABEL_4;
    }

    [(ATXAnchorModelHyperParameters *)self->_hyperParameters minPosteriorProbabilityForCandidateForPhase1];
    if (![(ATXAnchorModelPhase1Trainer *)self posteriorProbabilityConditionedOnAnchorIsAtLeastMinimum:v6 candidateId:v7 trainingResult:?])
    {
      goto LABEL_34;
    }

    if ([(ATXBackgroundActivityProtocol *)self->_runningTask didDefer])
    {
      v9 = __atxlog_handle_anchor();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }

      v25 = self->_anchor;
      v47 = 138412290;
      v48 = v25;
      goto LABEL_4;
    }

    [(ATXAnchorModelPhase1Trainer *)self standardDeviationOfSecondsAfterAnchorForFirstOccurrenceOfCandidateId:v6];
    v30 = v29;
    [v7 setStandardDeviationOfOffsetFromAnchor:?];
    v31 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v47) = 0;
      _os_log_impl(&dword_2263AA000, v31, OS_LOG_TYPE_DEFAULT, "Phase 1: calculated standard deviation of offset from anchor", &v47, 2u);
    }

    if ([(ATXBackgroundActivityProtocol *)self->_runningTask didDefer])
    {
      v9 = __atxlog_handle_anchor();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }

      v32 = self->_anchor;
      v47 = 138412290;
      v48 = v32;
      goto LABEL_4;
    }

    [(ATXAnchorModelPhase1Trainer *)self anchorPopularityForCandidate:v6];
    v34 = v33;
    [v7 setAnchorPopularity:?];
    v35 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v47) = 0;
      _os_log_impl(&dword_2263AA000, v35, OS_LOG_TYPE_DEFAULT, "Phase 1: calculated anchor popularity", &v47, 2u);
    }

    if ([(ATXBackgroundActivityProtocol *)self->_runningTask didDefer])
    {
      v9 = __atxlog_handle_anchor();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }

      v36 = self->_anchor;
      v47 = 138412290;
      v48 = v36;
      goto LABEL_4;
    }

    [(ATXAnchorModelPhase1Trainer *)self globalPopularityForCandidate:v6];
    v38 = v37;
    [v7 setGlobalPopularity:?];
    v39 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v47) = 0;
      _os_log_impl(&dword_2263AA000, v39, OS_LOG_TYPE_DEFAULT, "Phase 1: calculated global popularity", &v47, 2u);
    }

    v40 = [(ATXBackgroundActivityProtocol *)self->_runningTask didDefer];
    v41 = __atxlog_handle_anchor();
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
    if (v40)
    {
      if (v42)
      {
        v43 = self->_anchor;
        v47 = 138412290;
        v48 = v43;
        v44 = "Deferring training of additional anchors in the middle of training anchor model for anchor %@ because XPC activity asked for deferral. Not going to process any other anchors for now.";
        v45 = v41;
        v46 = 12;
LABEL_53:
        _os_log_impl(&dword_2263AA000, v45, OS_LOG_TYPE_DEFAULT, v44, &v47, v46);
      }
    }

    else if (v42)
    {
      v47 = 138413826;
      v48 = v6;
      v49 = 2048;
      v50 = *&v8;
      v51 = 2048;
      v52 = v14;
      v53 = 2048;
      v54 = v18;
      v55 = 2048;
      v56 = v30;
      v57 = 2048;
      v58 = v34;
      v59 = 2048;
      v60 = v38;
      v44 = "Phase 1: Candidate %@ unique anchor occurrence count: %ld, class-conditional probability: %.2f, posterior probability: %.2f, standard deviation in offset from anchor: %.2f, anchorProbability: %.2f, globalPopularity: %.2f";
      v45 = v41;
      v46 = 72;
      goto LABEL_53;
    }

    v26 = v40 ^ 1;
    goto LABEL_35;
  }

  v9 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_anchor;
    v47 = 138412290;
    v48 = v10;
LABEL_4:
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Deferring training of additional anchors in the middle of training anchor model for anchor %@ because XPC activity asked for deferral. Not going to process any other anchors for now.", &v47, 0xCu);
  }

LABEL_5:

LABEL_34:
  v26 = 0;
LABEL_35:

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

- (BOOL)candidateUniqueAnchorOccurrencesIsAtLeastMinimum:(int64_t)a3 candidateId:(id)a4 trainingResult:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [v8 numUniqueAnchorOccurrencesWithUniqueCandidateOccurrence];
  if (v9 < a3)
  {
    v10 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412802;
      v14 = v7;
      v15 = 2048;
      v16 = a3;
      v17 = 2048;
      v18 = [v8 numUniqueAnchorOccurrencesWithUniqueCandidateOccurrence];
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "Phase 1: Candidate %@ failed unique anchor occurrence count requirement. Req: %ld, Actual: %ld", &v13, 0x20u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9 >= a3;
}

- (BOOL)classConditionalProbabilityOfAnchorIsAtLeastMinimum:(double)a3 candidateId:(id)a4 trainingResult:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  [v8 classConditionalProbability];
  v10 = v9;
  if (v9 < a3)
  {
    v11 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      [v8 classConditionalProbability];
      v15 = 138412802;
      v16 = v7;
      v17 = 2048;
      v18 = a3;
      v19 = 2048;
      v20 = v12;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "Phase 1: Candidate %@ failed class conditional probability requirement. Req: %.2f, Actual: %.2f", &v15, 0x20u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10 >= a3;
}

- (double)classConditionalProbabilityOfAnchorForCandidate:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_storeWrapper numCandidateOccurrencesInAnchorContextForCandidate:v4 anchor:self->_anchor];
  v6 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_storeWrapper numCandidateOccurrencesInAllContextsForCandidate:v4];
  v7 = v6;
  if (v6)
  {
    v8 = v5 / v6;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v12 = 138413058;
    v13 = v4;
    v14 = 2048;
    v15 = v5;
    v16 = 2048;
    v17 = v7;
    v18 = 2048;
    v19 = v8;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "Phase 1: Candidate: %@. anchorContextCount = %ld, allContextCount = %ld ==> p(anchor | candidate) = %.3f", &v12, 0x2Au);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)posteriorProbabilityConditionedOnAnchorIsAtLeastMinimum:(double)a3 candidateId:(id)a4 trainingResult:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  [v8 posteriorProbability];
  v10 = v9;
  if (v9 < a3)
  {
    v11 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      [v8 posteriorProbability];
      v15 = 138412802;
      v16 = v7;
      v17 = 2048;
      v18 = a3;
      v19 = 2048;
      v20 = v12;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "Phase 1: Candidate %@ failed posterior probability requirement. Req: %.2f, Actual: %.2f", &v15, 0x20u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10 >= a3;
}

- (double)posteriorProbabilityConditionedOnAnchorForCandidate:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_storeWrapper numUniqueAnchorOccurrencesForCandidate:v4 anchor:self->_anchor];
  v6 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_storeWrapper numUniqueAnchorOccurrencesForAnchor:self->_anchor candidateId:v4];
  v7 = v6;
  if (v6)
  {
    v8 = v5 / v6;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v12 = 138413058;
    v13 = v4;
    v14 = 2048;
    v15 = v5;
    v16 = 2048;
    v17 = v7;
    v18 = 2048;
    v19 = v8;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "Phase 1: Candidate: %@. uniqueOccurrencesInAnchorContext = %ld, uniqueAnchorOccurrences = %ld ==> p(candidate | anchor) = %.3f", &v12, 0x2Au);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (double)standardDeviationOfSecondsAfterAnchorForFirstOccurrenceOfCandidateId:(id)a3
{
  v4 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_storeWrapper secondsAfterAnchorWhenCandidateOccurredForAnchor:self->_anchor candidateId:a3 onlyConsiderFirstOccurrencePerAnchor:1];
  [(ATXAnchorModelPhase1Trainer *)self standardDeviationOfNumbers:v4];
  v6 = v5;

  return v6;
}

- (double)standardDeviationOfNumbers:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v4 = MEMORY[0x277CCA9C0];
    v5 = [MEMORY[0x277CCA9C0] expressionForConstantValue:v3];
    v13[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v7 = [v4 expressionForFunction:@"stddev:" arguments:v6];

    v8 = [v7 expressionValueWithObject:0 context:0];
    [v8 doubleValue];
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)uniqueCandidateIdsThatOccurredAfterAnchor
{
  p_anchor = &self->_anchor;
  v3 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_storeWrapper uniqueCandidateIdsThatOccurredAfterAnchor:self->_anchor];
  v4 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(ATXAnchorModelPhase1Trainer *)p_anchor uniqueCandidateIdsThatOccurredAfterAnchor];
  }

  return v3;
}

- (double)anchorPopularityForCandidate:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_storeWrapper numCandidateOccurrencesInAnchorContextForCandidate:v4 anchor:self->_anchor];
  storeWrapper = self->_storeWrapper;
  v7 = [(ATXAnchorModelDataStoreWrapperProtocol *)storeWrapper candidateTypeForCandidateId:v4];
  v8 = [(ATXAnchorModelDataStoreWrapperProtocol *)storeWrapper numCandidateOccurrencesInAnchorContextForCandidateType:v7 anchor:self->_anchor];

  if (v8)
  {
    v9 = v5 / v8;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = 138413058;
    v14 = v4;
    v15 = 2048;
    v16 = v5;
    v17 = 2048;
    v18 = v8;
    v19 = 2048;
    v20 = v9;
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_INFO, "Phase 1: Candidate: %@. occurencesInAnchorContextForCandidate = %ld, occurencesInAnchorContextForAllCandidatesOfSameType = %ld ==> anchorProbability = %.3f", &v13, 0x2Au);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (double)globalPopularityForCandidate:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_storeWrapper numCandidateOccurrencesInAllContextsForCandidate:v4];
  storeWrapper = self->_storeWrapper;
  v7 = [(ATXAnchorModelDataStoreWrapperProtocol *)storeWrapper candidateTypeForCandidateId:v4];
  v8 = [(ATXAnchorModelDataStoreWrapperProtocol *)storeWrapper numCandidateOccurrencesInAllContextsForCandidateType:v7];

  if (v8)
  {
    v9 = v5 / v8;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = 138413058;
    v14 = v4;
    v15 = 2048;
    v16 = v5;
    v17 = 2048;
    v18 = v8;
    v19 = 2048;
    v20 = v9;
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_INFO, "Phase 1: Candidate: %@. occurencesInAllContextsForCandidate = %ld, occurencesInAllContextsForCandidatesOfSameType = %ld ==> globalPopularity = %.3f", &v13, 0x2Au);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_logPredictionsFilteredDuringPhase1WithCandidateIdsToConsider:(id)a3 selectedCandidates:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  [v8 setPhaseDescription:1];
  [v8 setPhaseType:0];
  v9 = [v7 count];

  [v8 setNumStartingCandidates:v9];
  v10 = [v6 count];

  [v8 setNumEndingCandidates:v10];
  v11 = [(ATXAnchor *)self->_anchor anchorTypeString];
  [v8 setAnchorType:v11];

  v12 = [(ATXAnchorModelHyperParameters *)self->_hyperParameters abGroup];
  [v8 setAbGroup:v12];

  [(ATXPETEventTracker2Protocol *)self->_tracker logMessage:v8];
  v13 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [(ATXAnchorModelPhase1Trainer *)self _logPredictionsFilteredDuringPhase1WithCandidateIdsToConsider:v8 selectedCandidates:v13];
  }
}

- (void)uniqueCandidateIdsThatOccurredAfterAnchor
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_2263AA000, log, OS_LOG_TYPE_DEBUG, "Phase 1: Unique candidates found after anchor (%@): %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_logPredictionsFilteredDuringPhase1WithCandidateIdsToConsider:(NSObject *)a3 selectedCandidates:.cold.1(uint64_t a1, void *a2, NSObject *a3)
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
  _os_log_debug_impl(&dword_2263AA000, a3, OS_LOG_TYPE_DEBUG, "LOGGED: %@ - ATXMPBAnchorModelPhaseFilterTracker for phase 1 with starting candidates: %u ending candidates: %u, anchorType: %@ abGroup: %@", &v12, 0x2Cu);

  v11 = *MEMORY[0x277D85DE8];
}

@end