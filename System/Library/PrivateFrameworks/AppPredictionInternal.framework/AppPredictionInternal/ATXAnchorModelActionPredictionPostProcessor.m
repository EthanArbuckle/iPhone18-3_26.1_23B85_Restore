@interface ATXAnchorModelActionPredictionPostProcessor
+ (id)anchorPredictionScoredActionTuplesFromPredictions:(id)a3;
+ (void)inPlaceDeduplicateAnchorPredictionScoredActionTuples:(id)a3;
- (ATXAnchorModelActionPredictionPostProcessor)initWithAnchorModelPrediction:(id)a3;
- (ATXAnchorModelActionPredictionPostProcessor)initWithAnchorModelPrediction:(id)a3 blacklist:(id)a4;
- (BOOL)scoredActionIsBlacklisted:(id)a3;
- (BOOL)shouldCheckUpcomingMediaForIntent:(id)a3;
- (id)postProcessScoredAction:(id)a3;
- (id)recoverATXScoredAction;
- (id)replaceActionWithUpcomingMediaIfNeeded:(id)a3;
- (id)replacementActionWithResolvedMediaIntentContainer:(id)a3 originalAction:(id)a4;
- (id)replacementIntentFromUpcomingMediaForBundleId:(id)a3 intent:(id)a4;
- (void)recoverATXScoredAction;
@end

@implementation ATXAnchorModelActionPredictionPostProcessor

- (ATXAnchorModelActionPredictionPostProcessor)initWithAnchorModelPrediction:(id)a3
{
  v4 = a3;
  v5 = +[ATXActionPredictionBlacklist sharedInstanceWithAppPredictionBlacklist];
  v6 = [(ATXAnchorModelActionPredictionPostProcessor *)self initWithAnchorModelPrediction:v4 blacklist:v5];

  return v6;
}

- (ATXAnchorModelActionPredictionPostProcessor)initWithAnchorModelPrediction:(id)a3 blacklist:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ATXAnchorModelActionPredictionPostProcessor;
  v9 = [(ATXAnchorModelActionPredictionPostProcessor *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_anchorModelPrediction, a3);
    v11 = objc_opt_new();
    storeWrapper = v10->_storeWrapper;
    v10->_storeWrapper = v11;

    objc_storeStrong(&v10->_blacklist, a4);
  }

  return v10;
}

- (id)recoverATXScoredAction
{
  p_anchorModelPrediction = &self->_anchorModelPrediction;
  v4 = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction candidateType];
  v5 = [v4 isEqualToString:@"action"];

  if (v5)
  {
    v6 = [(ATXAnchorModelDataStoreWrapper *)self->_storeWrapper scoredActionFromAnchorModelPrediction:self->_anchorModelPrediction];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v9 = __atxlog_handle_anchor();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [(ATXAnchorModelActionPredictionPostProcessor *)p_anchorModelPrediction recoverATXScoredAction];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)postProcessScoredAction:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  v6 = [v4 predictedItem];
  v7 = [v6 intent];

  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = objc_opt_new();
  v9 = [v5 predictedItem];
  v10 = [v9 intent];
  v11 = [v8 shouldPredictIntent:v10];

  if (v11)
  {
    if ([(ATXAnchorModelActionPredictionPostProcessor *)self scoredActionIsBlacklisted:v5])
    {
      v12 = __atxlog_handle_anchor();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        anchorModelPrediction = self->_anchorModelPrediction;
        v19 = 138412290;
        v20 = anchorModelPrediction;
        v14 = "Suppresing anchor model prediction because scoredAction is blacklisted. Prediction: %@";
LABEL_10:
        _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, v14, &v19, 0xCu);
        goto LABEL_11;
      }

      goto LABEL_11;
    }

LABEL_7:
    v15 = [(ATXAnchorModelActionPredictionPostProcessor *)self replaceActionWithUpcomingMediaIfNeeded:v5];

    goto LABEL_13;
  }

  v12 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = self->_anchorModelPrediction;
    v19 = 138412290;
    v20 = v16;
    v14 = "Suppresing anchor model prediction because action valuation says we shouldn't predict the intent. Prediction: %@";
    goto LABEL_10;
  }

LABEL_11:

LABEL_12:
  v15 = 0;
LABEL_13:
  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)scoredActionIsBlacklisted:(id)a3
{
  v4 = a3;
  v5 = [v4 predictedItem];
  v6 = [v5 actionKey];

  if (v6)
  {
    v7 = [_ATXActionUtils getBundleIdAndActionTypeFromActionKey:v6];
    v8 = v7;
    if (!v7)
    {
      LOBYTE(self) = 1;
      goto LABEL_7;
    }

    v9 = [v7 first];
    v10 = [v8 second];
    LODWORD(self) = ![(ATXActionPredictionBlacklist *)self->_blacklist shouldPredictBundleId:v9 action:v10];
  }

  else
  {
    self = self->_blacklist;
    v8 = [v4 predictedItem];
    v9 = [v8 bundleId];
    LOBYTE(self) = [(ATXAnchorModelActionPredictionPostProcessor *)self isBundleIdBlacklisted:v9];
  }

LABEL_7:
  return self;
}

- (id)replaceActionWithUpcomingMediaIfNeeded:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 predictedItem];
  v6 = [v5 intent];
  v7 = [(ATXAnchorModelActionPredictionPostProcessor *)self shouldCheckUpcomingMediaForIntent:v6];

  if (v7)
  {
    v8 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "Checking Upcoming Media for Anchor Model prediction...", &v29, 2u);
    }

    v9 = [v4 predictedItem];
    v10 = [v9 bundleId];
    v11 = [v4 predictedItem];
    v12 = [v11 intent];
    v13 = [(ATXAnchorModelActionPredictionPostProcessor *)self replacementIntentFromUpcomingMediaForBundleId:v10 intent:v12];

    if (v13)
    {
      v14 = [(ATXAnchorModelActionPredictionPostProcessor *)self replacementActionWithResolvedMediaIntentContainer:v13 originalAction:v4];
      v15 = __atxlog_handle_anchor();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_INFO, "Updating Anchor Model prediction with Upcoming Media...", &v29, 2u);
      }

      v16 = __atxlog_handle_anchor();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [v4 predictedItem];
        v18 = [v17 actionTitle];
        v19 = [v4 predictedItem];
        v20 = [v19 actionSubtitle];
        v29 = 138412546;
        v30 = v18;
        v31 = 2112;
        v32 = v20;
        _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_INFO, "Old action title: %@, subtitle: %@", &v29, 0x16u);
      }

      v21 = __atxlog_handle_anchor();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v14 predictedItem];
        v23 = [v22 actionTitle];
        v24 = [v14 predictedItem];
        v25 = [v24 actionSubtitle];
        v29 = 138412546;
        v30 = v23;
        v31 = 2112;
        v32 = v25;
        _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEFAULT, "New action title: %@, subtitle: %@", &v29, 0x16u);
      }
    }

    else
    {
      v21 = __atxlog_handle_anchor();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        anchorModelPrediction = self->_anchorModelPrediction;
        v29 = 138412290;
        v30 = anchorModelPrediction;
        _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEFAULT, "Suppresing Anchor Model prediction because of Upcoming Media. Prediction: %@", &v29, 0xCu);
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = v4;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)shouldCheckUpcomingMediaForIntent:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v5 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [ATXAnchorModelActionPredictionPostProcessor shouldCheckUpcomingMediaForIntent:v5];
    }

    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [ATXAnchorModelActionPredictionPostProcessor shouldCheckUpcomingMediaForIntent:v5];
    }

LABEL_8:

    v4 = 0;
    goto LABEL_9;
  }

  v4 = 1;
LABEL_9:

  return v4;
}

- (id)replacementIntentFromUpcomingMediaForBundleId:(id)a3 intent:(id)a4
{
  v5 = MEMORY[0x277CEB3B8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 isSystemAppForBundleId:v7];
  v9 = [MEMORY[0x277CEB8F0] getUpcomingMediaForBundle:v7 isInternalApplication:v8];

  v10 = [ATXMediaActionPrediction resolvePlayMediaIntent:v6 withUpcomingMedia:v9];

  return v10;
}

- (id)replacementActionWithResolvedMediaIntentContainer:(id)a3 originalAction:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [v7 first];
  v9 = [v7 second];

  v10 = [v9 BOOLValue];
  if (v8)
  {
    if (v10)
    {
      v11 = [v6 predictedItem];
      v12 = [v11 bundleId];
      [v8 _setLaunchId:v12];

      v13 = objc_alloc(MEMORY[0x277CEB2C8]);
      v14 = [MEMORY[0x277CCAD78] UUID];
      v15 = [v6 predictedItem];
      v16 = [v15 bundleId];
      LOBYTE(v26) = 1;
      v17 = [v13 initWithIntent:v8 actionUUID:v14 bundleId:v16 heuristic:0 heuristicMetadata:0 criteria:0 isFutureMedia:v26 title:0 subtitle:0];

      v18 = objc_alloc(MEMORY[0x277CEB7F0]);
      [v6 score];
      v19 = [v18 initWithPredictedItem:v17 score:?];
    }

    else
    {
      v22 = __atxlog_handle_anchor();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        anchorModelPrediction = self->_anchorModelPrediction;
        *buf = 138412290;
        v28 = anchorModelPrediction;
        _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_INFO, "Returning original Anchor Model prediction because we didn't use Upcoming Media to update the prediction. Prediction: \n%@", buf, 0xCu);
      }

      v19 = v6;
    }
  }

  else
  {
    v20 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = self->_anchorModelPrediction;
      *buf = 138412290;
      v28 = v21;
      _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_INFO, "Suppresing Anchor Model prediction because intent returned by Upcoming Media was nil. Prediction: \n%@", buf, 0xCu);
    }

    v19 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)anchorPredictionScoredActionTuplesFromPredictions:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v45 = objc_opt_new();
  v4 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_INFO, "============================================================================\n", buf, 2u);
  }

  v5 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v3 count];
    *buf = 134217984;
    v54 = v6;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_INFO, "Action prediction post processor STARTING processing anchor model %lu predictions", buf, 0xCu);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v3;
  v7 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = &dword_2263AA000;
    v11 = *v50;
    v12 = @"action";
    do
    {
      v13 = 0;
      v46 = v8;
      do
      {
        if (*v50 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v49 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        v16 = __atxlog_handle_anchor();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(v10, v16, OS_LOG_TYPE_INFO, "====\n", buf, 2u);
        }

        v17 = __atxlog_handle_anchor();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v54 = v9;
          _os_log_impl(v10, v17, OS_LOG_TYPE_INFO, "Action prediction post processor STARTING processing anchor model prediction %lu.", buf, 0xCu);
        }

        v18 = [v14 candidateType];
        v19 = [v18 isEqualToString:v12];

        if (v19)
        {
          v48 = v15;
          v20 = v12;
          v21 = v9;
          v22 = v11;
          v23 = v10;
          v24 = [[ATXAnchorModelActionPredictionPostProcessor alloc] initWithAnchorModelPrediction:v14];
          v25 = [(ATXAnchorModelActionPredictionPostProcessor *)v24 recoverATXScoredAction];
          v26 = [(ATXAnchorModelActionPredictionPostProcessor *)v24 postProcessScoredAction:v25];

          v27 = [ATXProactiveSuggestionBuilder predictionReasonForAnchorModelPrediction:v14];
          v28 = v27;
          v29 = &stru_2839A6058;
          if (v27)
          {
            v29 = v27;
          }

          v30 = v29;

          if (v26)
          {
            v31 = [[ATXScoredActionWithReason alloc] initWithScoredAction:v26 predictionReason:v30];
            v32 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:v14 second:v31];
            [v45 addObject:v32];
          }

          v33 = __atxlog_handle_anchor();
          v10 = v23;
          v34 = v21;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v54 = v21;
            _os_log_impl(v10, v33, OS_LOG_TYPE_INFO, "Action prediction post processor DONE processing anchor model prediction %lu. \n====\n", buf, 0xCu);
          }

          v35 = __atxlog_handle_anchor();
          v12 = v20;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(v10, v35, OS_LOG_TYPE_INFO, "====\n", buf, 2u);
          }

          v9 = v34 + 1;
          v11 = v22;
          v8 = v46;
          v15 = v48;
        }

        else
        {
          v36 = __atxlog_handle_anchor();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v54 = v9;
            _os_log_impl(v10, v36, OS_LOG_TYPE_INFO, "Prediction was not an action. Action prediction post processor DONE processing anchor model prediction %lu.", buf, 0xCu);
          }

          v24 = __atxlog_handle_anchor();
          if (os_log_type_enabled(&v24->super, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(v10, &v24->super, OS_LOG_TYPE_INFO, "====\n", buf, 2u);
          }
        }

        objc_autoreleasePoolPop(v15);
        ++v13;
      }

      while (v8 != v13);
      v8 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v8);
  }

  [a1 inPlaceDeduplicateAnchorPredictionScoredActionTuples:v45];
  v37 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = [obj count];
    v39 = [v45 count];
    *buf = 134218240;
    v54 = v38;
    v55 = 2048;
    v56 = v39;
    _os_log_impl(&dword_2263AA000, v37, OS_LOG_TYPE_DEFAULT, "Action prediction post processor DONE processing anchor model %lu predictions. Left with %lu predictions.", buf, 0x16u);
  }

  v40 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v40, OS_LOG_TYPE_DEFAULT, "============================================================================\n", buf, 2u);
  }

  v41 = [v45 copy];
  v42 = *MEMORY[0x277D85DE8];

  return v41;
}

+ (void)inPlaceDeduplicateAnchorPredictionScoredActionTuples:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 _pas_mappedArrayWithTransform:&__block_literal_global_33];
  v5 = [ATXActionPredictionsProcessor indicesOfNonDuplicateScoredActions:v4];
  v6 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = 134217984;
    v12 = [v3 count];
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "Deduplicating action predictions. Number of original predictions: %lu...", &v11, 0xCu);
  }

  v7 = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndexesInRange:{0, objc_msgSend(v3, "count")}];
  [v7 removeIndexes:v5];
  [v3 removeObjectsAtIndexes:v7];
  v8 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v3 count];
    v11 = 134217984;
    v12 = v9;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_INFO, "After deduplicating, number of action predictions: %lu. Done.", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

id __100__ATXAnchorModelActionPredictionPostProcessor_inPlaceDeduplicateAnchorPredictionScoredActionTuples___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 second];
  v3 = [v2 scoredAction];

  return v3;
}

- (void)recoverATXScoredAction
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Unable to retrieve ATXScoredAction for Anchor Model prediction. Skipping this prediction. %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end