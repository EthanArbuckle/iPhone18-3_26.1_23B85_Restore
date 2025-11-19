@interface ATXActionFeedback
+ (id)sharedInstance;
- (ATXActionFeedback)init;
- (ATXActionFeedback)initWithPredictionContextBuilder:(id)a3 actionFeedbackWeights:(id)a4 appLaunchHistogramManager:(id)a5 actionNotificationServer:(id)a6 recentEngagmentCache:(id)a7 appIntentMonitor:(id)a8 dataStore:(id)a9 blendingHyperParameters:(id)a10;
- (id)_actionResponseFromUIFeedbackResult:(id)a3 shownActions:(id)a4 rejectedActions:(id)a5 engagedAction:(id)a6 engagedSuggestion:(id)a7;
- (id)clientModelIds;
- (unint64_t)_feedbackStageForUIFeedbackResult:(id)a3 engagedSuggestion:(id)a4;
- (void)_assertHistogram:(id)a3 weight:(float)a4;
- (void)_updateAppLaunchCategoricalHistogram:(int64_t)a3 bundleId:(id)a4 category:(id)a5 context:(id)a6 weight:(float)a7;
- (void)_updateAppLaunchHistogram:(int64_t)a3 bundleId:(id)a4 context:(id)a5 weight:(float)a6;
- (void)applyFinalFeedbackForActionResponse:(id)a3 engagementType:(unint64_t)a4 context:(id)a5;
- (void)decayCounts;
- (void)logHeuristicFeedback:(id)a3;
- (void)receiveFeedbackWithActionResponse:(id)a3 context:(id)a4;
- (void)receiveLockscreenFeedbackWithAction:(id)a3 actionResponse:(id)a4 engagement:(BOOL)a5 triggeredByUserInteraction:(BOOL)a6 currentDate:(id)a7;
- (void)receiveUIFeedbackResult:(id)a3;
- (void)resetData;
- (void)sessionLogWithActionResponse:(id)a3 engagementType:(unint64_t)a4 context:(id)a5;
- (void)unloadCachedHistograms;
@end

@implementation ATXActionFeedback

- (ATXActionFeedback)init
{
  v3 = +[ATXPredictionContextBuilder sharedInstance];
  v4 = +[ATXActionFeedbackWeights sharedInstance];
  v5 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v6 = +[ATXActionNotificationServer sharedInstance];
  v7 = [MEMORY[0x277CEB7E0] sharedInstance];
  v8 = +[_ATXAppPredictor sharedInstance];
  v9 = [v8 appIntentMonitor];
  v10 = +[_ATXDataStore sharedInstance];
  v11 = [MEMORY[0x277D41B98] sharedInstance];
  v12 = [(ATXActionFeedback *)self initWithPredictionContextBuilder:v3 actionFeedbackWeights:v4 appLaunchHistogramManager:v5 actionNotificationServer:v6 recentEngagmentCache:v7 appIntentMonitor:v9 dataStore:v10 blendingHyperParameters:v11];

  return v12;
}

- (ATXActionFeedback)initWithPredictionContextBuilder:(id)a3 actionFeedbackWeights:(id)a4 appLaunchHistogramManager:(id)a5 actionNotificationServer:(id)a6 recentEngagmentCache:(id)a7 appIntentMonitor:(id)a8 dataStore:(id)a9 blendingHyperParameters:(id)a10
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a8;
  v17 = a9;
  v18 = a10;
  v28.receiver = self;
  v28.super_class = ATXActionFeedback;
  v19 = [(ATXActionFeedback *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_predictionContextBuilder, a3);
    objc_storeStrong(&v20->_actionFeedbackWeights, a4);
    objc_storeStrong(&v20->_appLaunchHistogramManager, a5);
    objc_storeStrong(&v20->_notificationServer, a6);
    objc_storeStrong(&v20->_recentEngagementCache, a7);
    objc_storeStrong(&v20->_appIntentMonitor, a8);
    objc_storeStrong(&v20->_dataStore, a9);
    objc_storeStrong(&v20->_blendingHyperParameters, a10);
  }

  return v20;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_21 != -1)
  {
    +[ATXActionFeedback sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_26;

  return v3;
}

void __35__ATXActionFeedback_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(ATXActionFeedback);
  v2 = sharedInstance__pasExprOnceResult_26;
  sharedInstance__pasExprOnceResult_26 = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)clientModelIds
{
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v3 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:6];
  v4 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:7];
  v5 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:3];
  v6 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:9];
  v7 = [v2 initWithObjects:{v3, v4, v5, v6, 0}];

  return v7;
}

id __60__ATXActionFeedback__scoredActionsFromProactiveSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 atxActionExecutableObject];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CEB7F0]);
    v5 = [v2 scoreSpecification];
    [v5 rawScore];
    *&v6 = v6;
    v7 = [v4 initWithPredictedItem:v3 score:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)_feedbackStageForUIFeedbackResult:(id)a3 engagedSuggestion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [_ATXActionUtils atxActionFromProactiveSuggestion:v6];
    v8 = [v7 intent];
    if (v8)
    {
      v9 = v8;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v11 = 3;
LABEL_13:

        goto LABEL_17;
      }
    }

    v12 = [v7 intent];
    if (v12)
    {
      v13 = v12;
      objc_opt_class();
      v14 = objc_opt_isKindOfClass();

      if ((v14 & 1) == 0)
      {
        v11 = 5;
        goto LABEL_13;
      }
    }
  }

  v15 = [v5 engagedSuggestions];
  if ([v15 count])
  {
    goto LABEL_11;
  }

  v16 = [v5 rejectedSuggestions];
  if ([v16 count])
  {

LABEL_11:
    v11 = 2;
    goto LABEL_17;
  }

  v17 = [v5 consumerSubType];

  if (v17 == 22)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

LABEL_17:

  return v11;
}

- (id)_actionResponseFromUIFeedbackResult:(id)a3 shownActions:(id)a4 rejectedActions:(id)a5 engagedAction:(id)a6 engagedSuggestion:(id)a7
{
  v12 = a3;
  v13 = a7;
  v37 = a6;
  v36 = a5;
  v35 = a4;
  v14 = [v12 session];
  v15 = [v12 shownSuggestions];
  v16 = [(ATXActionFeedback *)self _scoredActionsFromProactiveSuggestions:v15];

  v17 = objc_alloc(MEMORY[0x277CEB2F0]);
  v18 = [v12 clientCacheUpdate];
  v19 = [v18 feedbackMetadata];
  v20 = [v12 shownSuggestions];
  v21 = [v14 blendingUICacheUpdateUUID];
  v22 = [v14 sessionStartDate];
  v38 = v16;
  v23 = [v17 initWithScoredActions:v16 cacheFileData:v19 proactiveSuggestions:v20 blendingModelUICacheUpdateUUID:v21 consumerSubType:0 predictionDate:v22 error:0];

  v24 = [v12 consumerSubType];
  v25 = [(ATXActionFeedback *)self _feedbackStageForUIFeedbackResult:v12 engagedSuggestion:v13];

  v26 = [v14 sessionEndDate];
  [v23 updateConsumerSubType:v24 engagedAction:v37 shownActions:v35 feedbackStage:v25 explicitlyDismissedActions:v36 searchedActionType:4 engagedAppString:0 uiFeedbackDate:v26];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = v12;
    v28 = [v27 partialEngagementWasCompleteMatch];

    if (v28)
    {
      v29 = [v27 partialEngagementWasCompleteMatch];
      v30 = [v29 BOOLValue];

      v31 = [v27 matchingIntentDonatedAction];
      v32 = [v27 matchingIntentDonationDate];
      [v23 updateWithMatchingIntentDonatedAction:v31 intentDonationDate:v32 matchingIntentWasCompleteMatch:v30 != 0];
    }

    else
    {
      [v23 updateWithMatchingIntentDonatedAction:0 intentDonationDate:0 matchingIntentWasCompleteMatch:0];
    }
  }

  return v23;
}

- (void)receiveUIFeedbackResult:(id)a3
{
  v4 = a3;
  v5 = [v4 shownSuggestions];
  v6 = [_ATXActionUtils atxActionsFromProactiveSuggestions:v5];

  v7 = [v4 rejectedSuggestions];
  v8 = [_ATXActionUtils atxActionsFromProactiveSuggestions:v7];

  v9 = [v4 engagedSuggestions];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [v4 engagedSuggestions];
    v12 = [_ATXActionUtils atxActionsFromProactiveSuggestions:v11];

    if ([v12 count])
    {
      v13 = [v12 objectAtIndex:0];
      v14 = [v4 engagedSuggestions];
      v10 = [v14 objectAtIndex:0];
    }

    else
    {
      v10 = 0;
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = [(ATXActionFeedback *)self _actionResponseFromUIFeedbackResult:v4 shownActions:v6 rejectedActions:v8 engagedAction:v13 engagedSuggestion:v10];
  v16 = [v4 context];

  if (!v16)
  {
    v20 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [ATXActionFeedback receiveUIFeedbackResult:];
    }

    goto LABEL_14;
  }

  v17 = [v4 context];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v20 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [ATXActionFeedback receiveUIFeedbackResult:];
    }

LABEL_14:

    goto LABEL_15;
  }

  v19 = [v4 context];
  [(ATXActionFeedback *)self receiveFeedbackWithActionResponse:v15 context:v19];

LABEL_15:
}

- (void)decayCounts
{
  v10 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager categoricalHistogramForLaunchType:33];
  v3 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager categoricalHistogramForLaunchType:34];
  v4 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager histogramForLaunchType:35];
  v5 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager histogramForLaunchType:36];
  +[_ATXFeedbackConstants actionDecayHalfLifeSeconds];
  [v10 decayWithHalfLifeInDays:v6 / 86400.0];
  +[_ATXFeedbackConstants actionDecayHalfLifeSeconds];
  [v3 decayWithHalfLifeInDays:v7 / 86400.0];
  +[_ATXFeedbackConstants actionDecayHalfLifeSeconds];
  [v4 decayWithHalfLifeInDays:v8 / 86400.0];
  +[_ATXFeedbackConstants actionDecayHalfLifeSeconds];
  [v5 decayWithHalfLifeInDays:v9 / 86400.0];
}

- (void)_assertHistogram:(id)a3 weight:(float)a4
{
  v5 = a3;
  if (!v5)
  {
    v6 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ATXActionFeedback _assertHistogram:weight:];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"attempted to update a nil histogram in action feedback"];
  }

  if (a4 < 0.0)
  {
    v7 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ATXActionFeedback _assertHistogram:weight:];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"attempted to update a histogram with a negative weight in action feedback"];
  }
}

- (void)_updateAppLaunchHistogram:(int64_t)a3 bundleId:(id)a4 context:(id)a5 weight:(float)a6
{
  v17 = a4;
  v10 = a5;
  v11 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager histogramForLaunchType:a3];
  *&v12 = a6;
  [(ATXActionFeedback *)self _assertHistogram:v11 weight:v12];
  v13 = a6;
  if (a6 >= 1)
  {
    do
    {
      v14 = [v10 timeContext];
      v15 = [v14 date];
      LODWORD(v16) = 1.0;
      [v11 addLaunchWithBundleId:v17 date:v15 timeZone:0 weight:v16];

      --v13;
    }

    while (v13);
  }
}

- (void)_updateAppLaunchCategoricalHistogram:(int64_t)a3 bundleId:(id)a4 category:(id)a5 context:(id)a6 weight:(float)a7
{
  v20 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager categoricalHistogramForLaunchType:a3];
  *&v15 = a7;
  [(ATXActionFeedback *)self _assertHistogram:v14 weight:v15];
  v16 = a7;
  if (a7 >= 1)
  {
    do
    {
      v17 = [v13 timeContext];
      v18 = [v17 date];
      LODWORD(v19) = 1.0;
      [v14 addLaunchWithBundleId:v20 date:v18 category:v12 weight:v19];

      --v16;
    }

    while (v16);
  }
}

- (void)applyFinalFeedbackForActionResponse:(id)a3 engagementType:(unint64_t)a4 context:(id)a5
{
  v138 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = __atxlog_handle_feedback();
  v111 = v8;
  v107 = self;
  v108 = v9;
  v102 = a4;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    [MEMORY[0x277CEB2E8] engagementTypeToString:a4];
    v11 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v12 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:{objc_msgSend(v8, "consumerSubType")}];
    v13 = [MEMORY[0x277CEB2E8] actionFeedbackStageToString:{objc_msgSend(v8, "feedbackStage")}];
    v14 = [v8 shownActions];
    v15 = [v8 engagedAction];
    v16 = [v8 explicitlyDismissedActions];
    *buf = 138413570;
    v127 = v11;
    v128 = 2112;
    v129 = v12;
    v130 = 2112;
    v131 = v13;
    v132 = 2112;
    v133 = v14;
    v134 = 2112;
    v135 = v15;
    v136 = 2112;
    v137 = v16;
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "applyFinalFeedbackForActionResponse called with engagement type: %@, consumerSubType: %@, feedbackStage: %@, shownActions:%@, engagedAction:%@, explicitlyRejectedActions:%@", buf, 0x3Eu);

    self = v107;
    v9 = v108;

    a4 = v102;
  }

  -[ATXActionFeedbackWeights confirmWeightForFeedbackStage:consumerSubType:](self->_actionFeedbackWeights, "confirmWeightForFeedbackStage:consumerSubType:", [v8 feedbackStage], objc_msgSend(v8, "consumerSubType"));
  v18 = v17;
  -[ATXActionFeedbackWeights rejectWeightForFeedbackStage:consumerSubType:](self->_actionFeedbackWeights, "rejectWeightForFeedbackStage:consumerSubType:", [v8 feedbackStage], objc_msgSend(v8, "consumerSubType"));
  v20 = v19;
  v21 = [v9 locationMotionContext];
  v104 = [v21 geohash];

  v22 = [v9 locationMotionContext];
  v103 = [v22 coarseGeohash];

  v23 = [v8 engagedAction];
  if (v23)
  {
    v24 = [v8 engagedAction];
    v25 = [v24 actionKey];
  }

  else
  {
    v25 = 0;
  }

  v26 = [v9 timeContext];
  v106 = [v26 date];

  v113 = v25;
  if (v25)
  {
    v27 = 0;
    if (a4 > 4)
    {
      if (a4 - 7 >= 4)
      {
        if (a4 != 5)
        {
          goto LABEL_10;
        }

        goto LABEL_43;
      }

      goto LABEL_37;
    }

    if (a4 - 2 >= 3)
    {
      if (a4 >= 2)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    v28 = [v8 engagedAction];
    v29 = [v28 isHeuristic];

    v30 = __atxlog_handle_feedback();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_INFO);
    if (v29)
    {
      if (v31)
      {
        *buf = 134218242;
        v127 = v18;
        v128 = 2112;
        v129 = v25;
        _os_log_impl(&dword_2263AA000, v30, OS_LOG_TYPE_INFO, "Final engagement of weight %f feedback for heuristic action prediction: %@", buf, 0x16u);
      }

      v32 = [v8 engagedAction];
      v33 = [v32 heuristic];
      *&v34 = v18;
      [(ATXActionFeedback *)self _updateAppLaunchHistogram:35 bundleId:v33 context:v9 weight:v34];
    }

    else
    {
      if (v31)
      {
        *buf = 134218242;
        v127 = v18;
        v128 = 2112;
        v129 = v25;
        _os_log_impl(&dword_2263AA000, v30, OS_LOG_TYPE_INFO, "Final engagement feedback of weight %f for model-based action prediction: %@", buf, 0x16u);
      }

      v32 = [v8 engagedAction];
      v33 = [v32 bundleId];
      v35 = [_ATXActionUtils getActionTypeFromActionKey:v25];
      *&v36 = v18;
      [(ATXActionFeedback *)self _updateAppLaunchCategoricalHistogram:33 bundleId:v33 category:v35 context:v9 weight:v36];
    }

    v37 = [v8 engagedAction];
    v38 = [v37 slotSet];

    v39 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      [ATXActionFeedback applyFinalFeedbackForActionResponse:engagementType:context:];
    }

    if (v18 == 0.0)
    {
      v40 = __atxlog_handle_feedback();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        [MEMORY[0x277CEB2E8] actionFeedbackStageToString:{objc_msgSend(v8, "feedbackStage")}];
        v41 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v42 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:{objc_msgSend(v8, "consumerSubType")}];
        *buf = 138412546;
        v127 = v41;
        v128 = 2112;
        v129 = v42;
        _os_log_impl(&dword_2263AA000, v40, OS_LOG_TYPE_DEFAULT, "Encountered confirmation feedback with a weight of 0 for feedbackStage=%@ and consumerSubType=%@", buf, 0x16u);
      }
    }

    else
    {
      dataStore = self->_dataStore;
      v40 = [_ATXActionUtils getActionTypeFromActionKey:v25];
      v44 = [v8 engagedAction];
      v45 = [v44 bundleId];
      v46 = [v8 engagedAction];
      v47 = [v8 engagedAction];
      v48 = [v47 actionUUID];
      LOBYTE(v101) = [v8 consumerSubType];
      [(_ATXDataStore *)dataStore recordConfirms:2 rejects:v40 forFeedbackType:v45 forActionType:v46 bundleId:v38 action:v48 slotSet:v18 actionUUID:0.0 date:v106 consumerSubType:v101 geohash:v104 coarseGeohash:v103];

      a4 = v102;
    }
  }

  v27 = 0;
  if (a4 > 3)
  {
    if (a4 - 7 >= 4)
    {
      if (a4 - 4 >= 2)
      {
LABEL_10:
        if (a4 != 6)
        {
          goto LABEL_38;
        }

        goto LABEL_41;
      }

LABEL_43:
      v56 = __atxlog_handle_feedback();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        [MEMORY[0x277CEB2E8] engagementTypeToString:a4];
        v57 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138412290;
        v127 = v57;
        _os_log_impl(&dword_2263AA000, v56, OS_LOG_TYPE_INFO, "Exact slot match required on non-rejected items for engagement type %@", buf, 0xCu);
      }

      v55 = [v8 engagedAction];
      goto LABEL_46;
    }

    goto LABEL_37;
  }

  if (a4 < 2)
  {
LABEL_37:
    v27 = 1;
    goto LABEL_38;
  }

  if (a4 == 2)
  {
LABEL_41:
    v55 = [v8 matchingIntentDonatedAction];
LABEL_46:
    v112 = v55;
    v27 = 1;
    goto LABEL_47;
  }

  if (a4 != 3)
  {
LABEL_38:
    v51 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      [ATXActionFeedback applyFinalFeedbackForActionResponse:a4 engagementType:? context:?];
    }

    v52 = MEMORY[0x277CBEAD8];
    v53 = *MEMORY[0x277CBE658];
    v54 = [MEMORY[0x277CEB2E8] engagementTypeToString:a4];
    [v52 raise:v53 format:{@"Invalid engagement type of %@ encountered", v54}];

    v112 = 0;
    goto LABEL_47;
  }

  v49 = __atxlog_handle_feedback();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
  {
    [MEMORY[0x277CEB2E8] engagementTypeToString:3];
    v50 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 138412290;
    v127 = v50;
    _os_log_impl(&dword_2263AA000, v49, OS_LOG_TYPE_INFO, "Only actionKey match required on non-rejected items for engagement type %@", buf, 0xCu);
  }

  v112 = [v8 matchingIntentDonatedAction];
  v27 = 0;
LABEL_47:
  v58 = __atxlog_handle_feedback();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
  {
    [ATXActionFeedback applyFinalFeedbackForActionResponse:v8 engagementType:? context:?];
  }

  v114 = objc_opt_new();
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v59 = [v8 shownActions];
  v60 = [v59 countByEnumeratingWithState:&v120 objects:v125 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v121;
    v63 = 1;
    do
    {
      for (i = 0; i != v61; ++i)
      {
        if (*v121 != v62)
        {
          objc_enumerationMutation(v59);
        }

        v65 = *(*(&v120 + 1) + 8 * i);
        if (v27)
        {
          if ([_ATXActionUtils isContainmentBetweenAction:v112 other:*(*(&v120 + 1) + 8 * i)])
          {
            goto LABEL_61;
          }
        }

        else
        {
          v66 = [*(*(&v120 + 1) + 8 * i) actionKey];
          v67 = [v113 isEqualToString:v66];

          if (v67)
          {
            goto LABEL_61;
          }
        }

        v68 = __atxlog_handle_feedback();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218498;
          v127 = v20;
          v128 = 2048;
          v129 = v63;
          v130 = 2112;
          v131 = v65;
          _os_log_debug_impl(&dword_2263AA000, v68, OS_LOG_TYPE_DEBUG, "Rejecting (with weight %f at rank %lu) action: %@", buf, 0x20u);
        }

        [v114 addObject:v65];
LABEL_61:
        ++v63;
      }

      v61 = [v59 countByEnumeratingWithState:&v120 objects:v125 count:16];
    }

    while (v61);
  }

  v69 = __atxlog_handle_feedback();
  v70 = v114;
  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
  {
    [ATXActionFeedback applyFinalFeedbackForActionResponse:v114 engagementType:? context:?];
  }

  v71 = v111;
  v73 = v107;
  v72 = v108;
  if ([v114 count])
  {
    v74 = objc_alloc(MEMORY[0x277CBEB98]);
    v75 = [v111 explicitlyDismissedActions];
    v105 = [v74 initWithArray:v75];

    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    obj = v114;
    v76 = [obj countByEnumeratingWithState:&v116 objects:v124 count:16];
    if (v76)
    {
      v77 = v76;
      v115 = *v117;
      v78 = off_278594000;
      do
      {
        v79 = 0;
        v109 = v77;
        do
        {
          if (*v117 != v115)
          {
            objc_enumerationMutation(obj);
          }

          v80 = *(*(&v116 + 1) + 8 * v79);
          v81 = [v80 heuristic];
          v82 = [v81 length];

          if (v82)
          {
            v83 = [v80 heuristic];
            *&v84 = v20;
            [(ATXActionFeedback *)v73 _updateAppLaunchHistogram:36 bundleId:v83 context:v72 weight:v84];
          }

          else
          {
            v83 = [v80 bundleId];
            v85 = v78[204];
            v86 = [v80 actionKey];
            v87 = [(__objc2_class *)v85 getActionTypeFromActionKey:v86];
            *&v88 = v20;
            [(ATXActionFeedback *)v73 _updateAppLaunchCategoricalHistogram:34 bundleId:v83 category:v87 context:v72 weight:v88];
          }

          if (v20 == 0.0)
          {
            v89 = __atxlog_handle_feedback();
            if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
            {
              [MEMORY[0x277CEB2E8] actionFeedbackStageToString:{objc_msgSend(v111, "feedbackStage")}];
              v90 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v91 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:{objc_msgSend(v111, "consumerSubType")}];
              *buf = 138412546;
              v127 = v90;
              v128 = 2112;
              v129 = v91;
              _os_log_impl(&dword_2263AA000, v89, OS_LOG_TYPE_DEFAULT, "Encountered rejection feedback with a weight of 0 for feedbackStage=%@ and consumerSubType=%@", buf, 0x16u);
            }
          }

          else
          {
            v89 = [v80 slotSet];
            v92 = v73->_dataStore;
            if ([v105 containsObject:v80])
            {
              v93 = 2;
            }

            else
            {
              v93 = 1;
            }

            v94 = v78;
            v95 = v78[204];
            v96 = [v80 actionKey];
            v97 = [(__objc2_class *)v95 getActionTypeFromActionKey:v96];
            v98 = [v80 bundleId];
            v99 = [v80 actionUUID];
            LOBYTE(v101) = [v111 consumerSubType];
            [(_ATXDataStore *)v92 recordConfirms:v93 rejects:v97 forFeedbackType:v98 forActionType:v80 bundleId:v89 action:v99 slotSet:0.0 actionUUID:v20 date:v106 consumerSubType:v101 geohash:v104 coarseGeohash:v103];

            v73 = v107;
            v72 = v108;

            v78 = v94;
            v77 = v109;
          }

          ++v79;
        }

        while (v77 != v79);
        v77 = [obj countByEnumeratingWithState:&v116 objects:v124 count:16];
      }

      while (v77);
    }

    v71 = v111;
    v70 = v114;
  }

  [(ATXActionFeedback *)v73 sessionLogWithActionResponse:v71 engagementType:v102 context:v72];
  [(ATXActionFeedback *)v73 logHeuristicFeedback:v71];
  ATXUpdatePredictionsDefaultInterval(3);

  v100 = *MEMORY[0x277D85DE8];
}

- (void)sessionLogWithActionResponse:(id)a3 engagementType:(unint64_t)a4 context:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = __atxlog_handle_feedback();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [ATXActionFeedback sessionLogWithActionResponse:engagementType:context:];
  }

  [ATXActionSessionLog performSessionLoggingWithActionResponse:v8 engagementType:a4 context:v7 isShadowLog:0 forTestingMode:0];
}

- (void)receiveFeedbackWithActionResponse:(id)a3 context:(id)a4
{
  v80 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v65 = a4;
  obj = self;
  objc_sync_enter(obj);
  v7 = __atxlog_handle_feedback();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v79 = v6;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_INFO, "receiveFeedbackWithActionResponse called with actionResponse of %@", buf, 0xCu);
  }

  v8 = [v6 feedbackStage];
  if (v8 > 4)
  {
    if ((v8 - 7) >= 2)
    {
      if (v8 == 5)
      {
        v23 = [v6 engagedAction];
        v24 = v23 == 0;

        if (!v24)
        {
          v25 = [v6 engagedAction];
          v26 = [v25 actionType] == 1;

          if (v26)
          {
            v27 = __atxlog_handle_feedback();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              [ATXActionFeedback receiveFeedbackWithActionResponse:context:];
            }

            [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"NSUA with background execution"];
            goto LABEL_45;
          }

          v28 = [v6 engagedAction];
          [(ATXRecentActionEngagementCache *)obj->_recentEngagementCache addEngagedAction:v28];
          if ([v28 isHeuristic])
          {
            v32 = __atxlog_handle_feedback();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              [ATXActionFeedback receiveFeedbackWithActionResponse:context:];
            }
          }

          else
          {
            v33 = [v28 intent];
            if (v33 && (v34 = [v28 isHeuristic], v33, (v34 & 1) == 0))
            {
              v35 = [v28 actionKey];
              v32 = [_ATXActionUtils getActionTypeFromActionKey:v35];

              v36 = objc_alloc(MEMORY[0x277CCA970]);
              v37 = [v65 timeContext];
              v38 = [v37 date];
              v39 = [v65 timeContext];
              v40 = [v39 date];
              v41 = [v36 initWithStartDate:v38 endDate:v40];

              v42 = objc_alloc(MEMORY[0x277CEB5D8]);
              v43 = [v28 bundleId];
              v44 = [v42 initWithBundleId:v43 intentType:v32 dateInterval:v41 action:v28];

              LODWORD(v45) = 1.0;
              [(ATXAppIntentMonitor *)obj->_appIntentMonitor updateActionPredictionPipelineForIntentEvent:v44 weight:0 appSessionStartDate:0 appSessionEndDate:v45];
            }

            else
            {
              v32 = __atxlog_handle_feedback();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
              {
                [ATXActionFeedback receiveFeedbackWithActionResponse:context:];
              }
            }
          }

          goto LABEL_44;
        }

        goto LABEL_25;
      }

      if (v8 != 6)
      {
        goto LABEL_45;
      }

LABEL_16:
      v17 = [v6 engagedAction];
      v18 = v17 == 0;

      if (!v18)
      {
        v19 = __atxlog_handle_feedback();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = [v6 engagedAction];
          [(ATXActionFeedback *)v20 receiveFeedbackWithActionResponse:buf context:v19];
        }

        v21 = MEMORY[0x277CBEAD8];
        v22 = [v6 engagedAction];
        [v21 raise:*MEMORY[0x277CBE658] format:{@"non-nil engagedAction in lock screen expiration feedback: %@", v22}];
      }

LABEL_25:
      [(ATXActionFeedback *)obj applyFinalFeedbackForActionResponse:v6 engagementType:5 context:v65];
      goto LABEL_45;
    }
  }

  else if (v8 >= 2)
  {
    if ((v8 - 2) < 2)
    {
      v9 = [v6 engagedAction];
      v10 = v9 == 0;

      if (v10)
      {
        [(ATXActionFeedback *)obj applyFinalFeedbackForActionResponse:v6 engagementType:5 context:v65];
      }

      else
      {
        recentEngagementCache = obj->_recentEngagementCache;
        v12 = [v6 engagedAction];
        [(ATXRecentActionEngagementCache *)recentEngagementCache addEngagedAction:v12];
      }

      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v28 = [v6 explicitlyDismissedActions];
      v29 = [v28 countByEnumeratingWithState:&v72 objects:v77 count:16];
      if (v29)
      {
        v30 = *v73;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v73 != v30)
            {
              objc_enumerationMutation(v28);
            }

            [(ATXRecentActionEngagementCache *)obj->_recentEngagementCache addEngagedAction:*(*(&v72 + 1) + 8 * i)];
          }

          v29 = [v28 countByEnumeratingWithState:&v72 objects:v77 count:16];
        }

        while (v29);
      }

LABEL_44:

      goto LABEL_45;
    }

    if (v8 != 4)
    {
LABEL_45:
      v46 = [v6 consumerSubType];
      v16 = [MEMORY[0x277CEBCF0] uiTypeForActionConsumerSubType:v46];
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v47 = [v6 shownActions];
      v48 = [v47 countByEnumeratingWithState:&v68 objects:v76 count:16];
      if (!v48)
      {
        goto LABEL_70;
      }

      v49 = *v69;
      while (1)
      {
        v50 = 0;
        do
        {
          if (*v69 != v49)
          {
            objc_enumerationMutation(v47);
          }

          v51 = *(*(&v68 + 1) + 8 * v50);
          v52 = [v51 actionKey];
          v53 = [v6 engagedAction];
          v54 = [v53 isEqual:v51];

          if (v54)
          {
            v55 = [v6 engagedAction];
            if ([v55 actionType] == 1)
            {

              goto LABEL_54;
            }

            v56 = [v6 feedbackStage] == 5;

            if (v56)
            {
LABEL_54:
              v57 = __atxlog_handle_feedback();
              if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
              {
                *v67 = 0;
                _os_log_impl(&dword_2263AA000, v57, OS_LOG_TYPE_INFO, "logging direct engagement on NSUserActivity-based UI or background-executable intent interaction", v67, 2u);
              }

LABEL_57:
              v58 = 4;
            }

            else
            {
              if ([v6 feedbackStage] != 3)
              {
                goto LABEL_57;
              }

              v59 = [v6 matchingIntentDonatedAction];
              if (v59 && (v60 = [v6 matchingIntentWasCompleteMatch], v59, (v60 & 1) != 0))
              {
                v58 = 2;
              }

              else
              {
                v61 = [v6 matchingIntentDonatedAction];
                if (v61 && (v62 = [v6 matchingIntentWasCompleteMatch], v61, !v62))
                {
                  v58 = 3;
                }

                else
                {
                  v58 = 6;
                }
              }
            }

            [(ATXActionFeedback *)obj applyFinalFeedbackForActionResponse:v6 engagementType:v58 context:v65];
          }

          [(_ATXDataStore *)obj->_dataStore updateOrInsertPredictionsAndFeedbackForAppAction:v52 feedbackReceived:v54 forUIType:v16];

          ++v50;
        }

        while (v48 != v50);
        v63 = [v47 countByEnumeratingWithState:&v68 objects:v76 count:16];
        v48 = v63;
        if (!v63)
        {
LABEL_70:

          goto LABEL_71;
        }
      }
    }

    goto LABEL_16;
  }

  v13 = __atxlog_handle_feedback();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = [MEMORY[0x277CEB2E8] actionFeedbackStageToString:{objc_msgSend(v6, "feedbackStage")}];
    [(ATXActionFeedback *)v14 receiveFeedbackWithActionResponse:buf context:v13];
  }

  v15 = MEMORY[0x277CBEAD8];
  v16 = [MEMORY[0x277CEB2E8] actionFeedbackStageToString:{objc_msgSend(v6, "feedbackStage")}];
  [v15 raise:*MEMORY[0x277CBE658] format:{@"invalid feedbackStage of %@ on ATXActionResponse", v16}];
LABEL_71:

  objc_sync_exit(obj);
  v64 = *MEMORY[0x277D85DE8];
}

- (void)receiveLockscreenFeedbackWithAction:(id)a3 actionResponse:(id)a4 engagement:(BOOL)a5 triggeredByUserInteraction:(BOOL)a6 currentDate:(id)a7
{
  v8 = a6;
  v9 = a5;
  v50 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a7;
  sel_getName(a2);
  v16 = os_transaction_create();
  v17 = __atxlog_handle_feedback();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v13 actionKey];
    v19 = v18;
    v20 = @"NO";
    if (v9)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    *buf = 138412802;
    v45 = v18;
    v47 = v21;
    v46 = 2112;
    if (v8)
    {
      v20 = @"YES";
    }

    v48 = 2112;
    v49 = v20;
    _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "received lockscreen feedback for actionKey: %@ with engagment: %@ and triggeredByUserInteraction: %@", buf, 0x20u);
  }

  buf[0] = 0;
  v22 = *MEMORY[0x277CEBD00];
  if (CFPreferencesGetAppBooleanValue(@"displayDonationsOnLockscreen", *MEMORY[0x277CEBD00], buf))
  {
    v23 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v24 = "Developer mode detected -- skipping lock screen action feedback for notification";
LABEL_14:
      _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 2u);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  buf[0] = 0;
  if (CFPreferencesGetAppBooleanValue(@"zkwActionsDemoModeEnabled", v22, buf))
  {
    v23 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v24 = "Demo mode detected -- skipping lock screen action feedback for notification";
      goto LABEL_14;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (!v9 || v8)
  {
    v27 = [(ATXPredictionContextBuilderProtocol *)self->_predictionContextBuilder predictionContextForCurrentContext];
    if (!v27)
    {
      v29 = __atxlog_handle_feedback();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [ATXActionFeedback receiveLockscreenFeedbackWithAction:actionResponse:engagement:triggeredByUserInteraction:currentDate:];
      }

      goto LABEL_33;
    }

    if (v9 || v8)
    {
      if (!v8 || v9)
      {
        if (!v9 || !v8)
        {
          v31 = __atxlog_handle_feedback();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            [ATXActionFeedback receiveLockscreenFeedbackWithAction:actionResponse:engagement:triggeredByUserInteraction:currentDate:];
          }

          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"reached end of receiveLockscreenFeedbackWithAction"];
          goto LABEL_33;
        }

        v32 = [v13 userActivity];

        if (v32)
        {
          v40 = v13;
          v33 = MEMORY[0x277CBEA60];
          v34 = &v40;
        }

        else
        {
          v35 = [v13 intent];
          v36 = [v35 atx_supportsBackgroundExecution];

          if (v36)
          {
            v39 = v13;
            v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
            [v14 updateConsumerSubType:22 engagedAction:v13 shownActions:v28 feedbackStage:5 explicitlyDismissedActions:0 searchedActionType:4 engagedAppString:0 uiFeedbackDate:{v15, v38}];
            goto LABEL_32;
          }

          v37 = __atxlog_handle_feedback();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v45 = v13;
            _os_log_impl(&dword_2263AA000, v37, OS_LOG_TYPE_DEFAULT, "received lockscreen feedback for action with non-background executable Intent: %@", buf, 0xCu);
          }

          v38 = v13;
          v33 = MEMORY[0x277CBEA60];
          v34 = &v38;
        }

        v28 = [v33 arrayWithObjects:v34 count:1];
        [v14 updateConsumerSubType:22 engagedAction:v13 shownActions:v28 feedbackStage:2 explicitlyDismissedActions:0 searchedActionType:4 engagedAppString:0 uiFeedbackDate:{v15, v38}];
        goto LABEL_32;
      }

      v42 = v13;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
      v41 = v13;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
      [v14 updateConsumerSubType:22 engagedAction:0 shownActions:v28 feedbackStage:2 explicitlyDismissedActions:v30 searchedActionType:4 engagedAppString:0 uiFeedbackDate:v15];
    }

    else
    {
      v43 = v13;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
      [v14 updateConsumerSubType:22 engagedAction:0 shownActions:v28 feedbackStage:4 explicitlyDismissedActions:0 searchedActionType:4 engagedAppString:0 uiFeedbackDate:{v15, v38}];
    }

LABEL_32:

    [(ATXActionFeedback *)self receiveFeedbackWithActionResponse:v14 context:v27];
LABEL_33:

    goto LABEL_16;
  }

  v26 = __atxlog_handle_feedback();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [ATXActionFeedback receiveLockscreenFeedbackWithAction:actionResponse:engagement:triggeredByUserInteraction:currentDate:];
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"received lockscreen feedback with triggeredByUserInteraction: NO and engagement: YES"];
LABEL_16:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)unloadCachedHistograms
{
  [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager purgeHistogramForLaunchType:33];
  [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager purgeHistogramForLaunchType:34];
  [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager purgeHistogramForLaunchType:35];
  appLaunchHistogramManager = self->_appLaunchHistogramManager;

  [(_ATXAppLaunchHistogramManager *)appLaunchHistogramManager purgeHistogramForLaunchType:36];
}

- (void)resetData
{
  v6 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager categoricalHistogramForLaunchType:33];
  v3 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager categoricalHistogramForLaunchType:34];
  v4 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager histogramForLaunchType:35];
  v5 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager histogramForLaunchType:36];
  [v6 resetData];
  [v3 resetData];
  [v4 resetData];
  [v5 resetData];
}

- (void)logHeuristicFeedback:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 engagedAction];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 engagedAction];
    v8 = [v7 heuristic];

    if (v8)
    {
      v9 = [v4 engagedAction];
      [(ATXActionFeedback *)self logHeuristicFeedbackToPortraitForAction:v9 withActionType:2];

      v10 = [v4 engagedAction];
      [(ATXActionFeedback *)self logHeuristicFeedbackToSuggestionsForAction:v10 withActionType:5];
    }
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = [v4 shownActions];
  v12 = [v11 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        v17 = [v16 heuristic];

        if (v17)
        {
          [(ATXActionFeedback *)self logHeuristicFeedbackToPortraitForAction:v16 withActionType:1];
          [(ATXActionFeedback *)self logHeuristicFeedbackToSuggestionsForAction:v16 withActionType:4];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v13);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = [v4 explicitlyDismissedActions];
  v19 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v26 + 1) + 8 * j);
        v24 = [v23 heuristic];

        if (v24)
        {
          [(ATXActionFeedback *)self logHeuristicFeedbackToSuggestionsForAction:v23 withActionType:8];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v20);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)applyFinalFeedbackForActionResponse:(uint64_t)a1 engagementType:(uint64_t)a2 context:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXActionFeedback.m" lineNumber:281 description:{@"Invalid parameter not satisfying: %@", @"!isnan(confirmWeight)"}];
}

- (void)applyFinalFeedbackForActionResponse:(uint64_t)a1 engagementType:(uint64_t)a2 context:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXActionFeedback.m" lineNumber:282 description:{@"Invalid parameter not satisfying: %@", @"!isnan(rejectWeight)"}];
}

- (void)applyFinalFeedbackForActionResponse:engagementType:context:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_2263AA000, v0, OS_LOG_TYPE_DEBUG, "Final slot set in engagment feedback for action prediction: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)applyFinalFeedbackForActionResponse:(uint64_t)a1 engagementType:context:.cold.4(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CEB2E8] engagementTypeToString:a1];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5_1(v2, v3, v4, v5, v6);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)applyFinalFeedbackForActionResponse:(void *)a1 engagementType:context:.cold.5(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [a1 shownActions];
  [v1 count];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)applyFinalFeedbackForActionResponse:(void *)a1 engagementType:context:.cold.6(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)receiveFeedbackWithActionResponse:(NSObject *)a3 context:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_5_1(&dword_2263AA000, a3, a3, "invalid feedbackStage of %@ on ATXActionResponse", a2);
}

- (void)receiveFeedbackWithActionResponse:(NSObject *)a3 context:.cold.5(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_5_1(&dword_2263AA000, a3, a3, "non-nil engagedAction in lock screen expiration feedback: %@", a2);
}

- (void)logHeuristicFeedbackToSuggestionsForAction:withActionType:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[ATXActionFeedback logHeuristicFeedbackToSuggestionsForAction:withActionType:]"];
  [v0 handleFailureInFunction:v1 file:@"ATXActionFeedback.m" lineNumber:769 description:@"Failed to dyload SGSuggestionService"];
}

- (void)logHeuristicFeedbackToPortraitForAction:(void *)a1 withActionType:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 heuristic];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5_1(v2, v3, v4, v5, v6);

  v7 = *MEMORY[0x277D85DE8];
}

@end