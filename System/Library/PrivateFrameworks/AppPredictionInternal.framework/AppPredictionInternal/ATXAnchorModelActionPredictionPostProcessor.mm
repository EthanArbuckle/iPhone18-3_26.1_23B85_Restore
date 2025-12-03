@interface ATXAnchorModelActionPredictionPostProcessor
+ (id)anchorPredictionScoredActionTuplesFromPredictions:(id)predictions;
+ (void)inPlaceDeduplicateAnchorPredictionScoredActionTuples:(id)tuples;
- (ATXAnchorModelActionPredictionPostProcessor)initWithAnchorModelPrediction:(id)prediction;
- (ATXAnchorModelActionPredictionPostProcessor)initWithAnchorModelPrediction:(id)prediction blacklist:(id)blacklist;
- (BOOL)scoredActionIsBlacklisted:(id)blacklisted;
- (BOOL)shouldCheckUpcomingMediaForIntent:(id)intent;
- (id)postProcessScoredAction:(id)action;
- (id)recoverATXScoredAction;
- (id)replaceActionWithUpcomingMediaIfNeeded:(id)needed;
- (id)replacementActionWithResolvedMediaIntentContainer:(id)container originalAction:(id)action;
- (id)replacementIntentFromUpcomingMediaForBundleId:(id)id intent:(id)intent;
- (void)recoverATXScoredAction;
@end

@implementation ATXAnchorModelActionPredictionPostProcessor

- (ATXAnchorModelActionPredictionPostProcessor)initWithAnchorModelPrediction:(id)prediction
{
  predictionCopy = prediction;
  v5 = +[ATXActionPredictionBlacklist sharedInstanceWithAppPredictionBlacklist];
  v6 = [(ATXAnchorModelActionPredictionPostProcessor *)self initWithAnchorModelPrediction:predictionCopy blacklist:v5];

  return v6;
}

- (ATXAnchorModelActionPredictionPostProcessor)initWithAnchorModelPrediction:(id)prediction blacklist:(id)blacklist
{
  predictionCopy = prediction;
  blacklistCopy = blacklist;
  v14.receiver = self;
  v14.super_class = ATXAnchorModelActionPredictionPostProcessor;
  v9 = [(ATXAnchorModelActionPredictionPostProcessor *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_anchorModelPrediction, prediction);
    v11 = objc_opt_new();
    storeWrapper = v10->_storeWrapper;
    v10->_storeWrapper = v11;

    objc_storeStrong(&v10->_blacklist, blacklist);
  }

  return v10;
}

- (id)recoverATXScoredAction
{
  p_anchorModelPrediction = &self->_anchorModelPrediction;
  candidateType = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction candidateType];
  v5 = [candidateType isEqualToString:@"action"];

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

- (id)postProcessScoredAction:(id)action
{
  v21 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  if (!actionCopy)
  {
    goto LABEL_12;
  }

  v5 = actionCopy;
  predictedItem = [actionCopy predictedItem];
  intent = [predictedItem intent];

  if (!intent)
  {
    goto LABEL_7;
  }

  v8 = objc_opt_new();
  predictedItem2 = [v5 predictedItem];
  intent2 = [predictedItem2 intent];
  v11 = [v8 shouldPredictIntent:intent2];

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

- (BOOL)scoredActionIsBlacklisted:(id)blacklisted
{
  blacklistedCopy = blacklisted;
  predictedItem = [blacklistedCopy predictedItem];
  actionKey = [predictedItem actionKey];

  if (actionKey)
  {
    v7 = [_ATXActionUtils getBundleIdAndActionTypeFromActionKey:actionKey];
    predictedItem2 = v7;
    if (!v7)
    {
      LOBYTE(self) = 1;
      goto LABEL_7;
    }

    first = [v7 first];
    second = [predictedItem2 second];
    LODWORD(self) = ![(ATXActionPredictionBlacklist *)self->_blacklist shouldPredictBundleId:first action:second];
  }

  else
  {
    self = self->_blacklist;
    predictedItem2 = [blacklistedCopy predictedItem];
    first = [predictedItem2 bundleId];
    LOBYTE(self) = [(ATXAnchorModelActionPredictionPostProcessor *)self isBundleIdBlacklisted:first];
  }

LABEL_7:
  return self;
}

- (id)replaceActionWithUpcomingMediaIfNeeded:(id)needed
{
  v33 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  predictedItem = [neededCopy predictedItem];
  intent = [predictedItem intent];
  v7 = [(ATXAnchorModelActionPredictionPostProcessor *)self shouldCheckUpcomingMediaForIntent:intent];

  if (v7)
  {
    v8 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "Checking Upcoming Media for Anchor Model prediction...", &v29, 2u);
    }

    predictedItem2 = [neededCopy predictedItem];
    bundleId = [predictedItem2 bundleId];
    predictedItem3 = [neededCopy predictedItem];
    intent2 = [predictedItem3 intent];
    v13 = [(ATXAnchorModelActionPredictionPostProcessor *)self replacementIntentFromUpcomingMediaForBundleId:bundleId intent:intent2];

    if (v13)
    {
      v14 = [(ATXAnchorModelActionPredictionPostProcessor *)self replacementActionWithResolvedMediaIntentContainer:v13 originalAction:neededCopy];
      v15 = __atxlog_handle_anchor();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_INFO, "Updating Anchor Model prediction with Upcoming Media...", &v29, 2u);
      }

      v16 = __atxlog_handle_anchor();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        predictedItem4 = [neededCopy predictedItem];
        actionTitle = [predictedItem4 actionTitle];
        predictedItem5 = [neededCopy predictedItem];
        actionSubtitle = [predictedItem5 actionSubtitle];
        v29 = 138412546;
        v30 = actionTitle;
        v31 = 2112;
        v32 = actionSubtitle;
        _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_INFO, "Old action title: %@, subtitle: %@", &v29, 0x16u);
      }

      v21 = __atxlog_handle_anchor();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        predictedItem6 = [v14 predictedItem];
        actionTitle2 = [predictedItem6 actionTitle];
        predictedItem7 = [v14 predictedItem];
        actionSubtitle2 = [predictedItem7 actionSubtitle];
        v29 = 138412546;
        v30 = actionTitle2;
        v31 = 2112;
        v32 = actionSubtitle2;
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
    v14 = neededCopy;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)shouldCheckUpcomingMediaForIntent:(id)intent
{
  intentCopy = intent;
  if (!intentCopy)
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

- (id)replacementIntentFromUpcomingMediaForBundleId:(id)id intent:(id)intent
{
  v5 = MEMORY[0x277CEB3B8];
  intentCopy = intent;
  idCopy = id;
  v8 = [v5 isSystemAppForBundleId:idCopy];
  v9 = [MEMORY[0x277CEB8F0] getUpcomingMediaForBundle:idCopy isInternalApplication:v8];

  v10 = [ATXMediaActionPrediction resolvePlayMediaIntent:intentCopy withUpcomingMedia:v9];

  return v10;
}

- (id)replacementActionWithResolvedMediaIntentContainer:(id)container originalAction:(id)action
{
  v29 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  containerCopy = container;
  first = [containerCopy first];
  second = [containerCopy second];

  bOOLValue = [second BOOLValue];
  if (first)
  {
    if (bOOLValue)
    {
      predictedItem = [actionCopy predictedItem];
      bundleId = [predictedItem bundleId];
      [first _setLaunchId:bundleId];

      v13 = objc_alloc(MEMORY[0x277CEB2C8]);
      uUID = [MEMORY[0x277CCAD78] UUID];
      predictedItem2 = [actionCopy predictedItem];
      bundleId2 = [predictedItem2 bundleId];
      LOBYTE(v26) = 1;
      v17 = [v13 initWithIntent:first actionUUID:uUID bundleId:bundleId2 heuristic:0 heuristicMetadata:0 criteria:0 isFutureMedia:v26 title:0 subtitle:0];

      v18 = objc_alloc(MEMORY[0x277CEB7F0]);
      [actionCopy score];
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

      v19 = actionCopy;
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

+ (id)anchorPredictionScoredActionTuplesFromPredictions:(id)predictions
{
  v58 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
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
    v6 = [predictionsCopy count];
    *buf = 134217984;
    v54 = v6;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_INFO, "Action prediction post processor STARTING processing anchor model %lu predictions", buf, 0xCu);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = predictionsCopy;
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

        candidateType = [v14 candidateType];
        v19 = [candidateType isEqualToString:v12];

        if (v19)
        {
          v48 = v15;
          v20 = v12;
          v21 = v9;
          v22 = v11;
          v23 = v10;
          v24 = [[ATXAnchorModelActionPredictionPostProcessor alloc] initWithAnchorModelPrediction:v14];
          recoverATXScoredAction = [(ATXAnchorModelActionPredictionPostProcessor *)v24 recoverATXScoredAction];
          v26 = [(ATXAnchorModelActionPredictionPostProcessor *)v24 postProcessScoredAction:recoverATXScoredAction];

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

  [self inPlaceDeduplicateAnchorPredictionScoredActionTuples:v45];
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

+ (void)inPlaceDeduplicateAnchorPredictionScoredActionTuples:(id)tuples
{
  v13 = *MEMORY[0x277D85DE8];
  tuplesCopy = tuples;
  v4 = [tuplesCopy _pas_mappedArrayWithTransform:&__block_literal_global_33];
  v5 = [ATXActionPredictionsProcessor indicesOfNonDuplicateScoredActions:v4];
  v6 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = 134217984;
    v12 = [tuplesCopy count];
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "Deduplicating action predictions. Number of original predictions: %lu...", &v11, 0xCu);
  }

  v7 = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndexesInRange:{0, objc_msgSend(tuplesCopy, "count")}];
  [v7 removeIndexes:v5];
  [tuplesCopy removeObjectsAtIndexes:v7];
  v8 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [tuplesCopy count];
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
  v2 = *self;
  v4 = 138412290;
  v5 = v2;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Unable to retrieve ATXScoredAction for Anchor Model prediction. Skipping this prediction. %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end