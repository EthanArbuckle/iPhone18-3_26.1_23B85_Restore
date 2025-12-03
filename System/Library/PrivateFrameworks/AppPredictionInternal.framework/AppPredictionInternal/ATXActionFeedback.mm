@interface ATXActionFeedback
+ (id)sharedInstance;
- (ATXActionFeedback)init;
- (ATXActionFeedback)initWithPredictionContextBuilder:(id)builder actionFeedbackWeights:(id)weights appLaunchHistogramManager:(id)manager actionNotificationServer:(id)server recentEngagmentCache:(id)cache appIntentMonitor:(id)monitor dataStore:(id)store blendingHyperParameters:(id)self0;
- (id)_actionResponseFromUIFeedbackResult:(id)result shownActions:(id)actions rejectedActions:(id)rejectedActions engagedAction:(id)action engagedSuggestion:(id)suggestion;
- (id)clientModelIds;
- (unint64_t)_feedbackStageForUIFeedbackResult:(id)result engagedSuggestion:(id)suggestion;
- (void)_assertHistogram:(id)histogram weight:(float)weight;
- (void)_updateAppLaunchCategoricalHistogram:(int64_t)histogram bundleId:(id)id category:(id)category context:(id)context weight:(float)weight;
- (void)_updateAppLaunchHistogram:(int64_t)histogram bundleId:(id)id context:(id)context weight:(float)weight;
- (void)applyFinalFeedbackForActionResponse:(id)response engagementType:(unint64_t)type context:(id)context;
- (void)decayCounts;
- (void)logHeuristicFeedback:(id)feedback;
- (void)receiveFeedbackWithActionResponse:(id)response context:(id)context;
- (void)receiveLockscreenFeedbackWithAction:(id)action actionResponse:(id)response engagement:(BOOL)engagement triggeredByUserInteraction:(BOOL)interaction currentDate:(id)date;
- (void)receiveUIFeedbackResult:(id)result;
- (void)resetData;
- (void)sessionLogWithActionResponse:(id)response engagementType:(unint64_t)type context:(id)context;
- (void)unloadCachedHistograms;
@end

@implementation ATXActionFeedback

- (ATXActionFeedback)init
{
  v3 = +[ATXPredictionContextBuilder sharedInstance];
  v4 = +[ATXActionFeedbackWeights sharedInstance];
  v5 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v6 = +[ATXActionNotificationServer sharedInstance];
  mEMORY[0x277CEB7E0] = [MEMORY[0x277CEB7E0] sharedInstance];
  v8 = +[_ATXAppPredictor sharedInstance];
  appIntentMonitor = [v8 appIntentMonitor];
  v10 = +[_ATXDataStore sharedInstance];
  mEMORY[0x277D41B98] = [MEMORY[0x277D41B98] sharedInstance];
  v12 = [(ATXActionFeedback *)self initWithPredictionContextBuilder:v3 actionFeedbackWeights:v4 appLaunchHistogramManager:v5 actionNotificationServer:v6 recentEngagmentCache:mEMORY[0x277CEB7E0] appIntentMonitor:appIntentMonitor dataStore:v10 blendingHyperParameters:mEMORY[0x277D41B98]];

  return v12;
}

- (ATXActionFeedback)initWithPredictionContextBuilder:(id)builder actionFeedbackWeights:(id)weights appLaunchHistogramManager:(id)manager actionNotificationServer:(id)server recentEngagmentCache:(id)cache appIntentMonitor:(id)monitor dataStore:(id)store blendingHyperParameters:(id)self0
{
  builderCopy = builder;
  weightsCopy = weights;
  managerCopy = manager;
  serverCopy = server;
  cacheCopy = cache;
  monitorCopy = monitor;
  storeCopy = store;
  parametersCopy = parameters;
  v28.receiver = self;
  v28.super_class = ATXActionFeedback;
  v19 = [(ATXActionFeedback *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_predictionContextBuilder, builder);
    objc_storeStrong(&v20->_actionFeedbackWeights, weights);
    objc_storeStrong(&v20->_appLaunchHistogramManager, manager);
    objc_storeStrong(&v20->_notificationServer, server);
    objc_storeStrong(&v20->_recentEngagementCache, cache);
    objc_storeStrong(&v20->_appIntentMonitor, monitor);
    objc_storeStrong(&v20->_dataStore, store);
    objc_storeStrong(&v20->_blendingHyperParameters, parameters);
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

- (unint64_t)_feedbackStageForUIFeedbackResult:(id)result engagedSuggestion:(id)suggestion
{
  resultCopy = result;
  suggestionCopy = suggestion;
  if (suggestionCopy)
  {
    v7 = [_ATXActionUtils atxActionFromProactiveSuggestion:suggestionCopy];
    intent = [v7 intent];
    if (intent)
    {
      v9 = intent;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v11 = 3;
LABEL_13:

        goto LABEL_17;
      }
    }

    intent2 = [v7 intent];
    if (intent2)
    {
      v13 = intent2;
      objc_opt_class();
      v14 = objc_opt_isKindOfClass();

      if ((v14 & 1) == 0)
      {
        v11 = 5;
        goto LABEL_13;
      }
    }
  }

  engagedSuggestions = [resultCopy engagedSuggestions];
  if ([engagedSuggestions count])
  {
    goto LABEL_11;
  }

  rejectedSuggestions = [resultCopy rejectedSuggestions];
  if ([rejectedSuggestions count])
  {

LABEL_11:
    v11 = 2;
    goto LABEL_17;
  }

  consumerSubType = [resultCopy consumerSubType];

  if (consumerSubType == 22)
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

- (id)_actionResponseFromUIFeedbackResult:(id)result shownActions:(id)actions rejectedActions:(id)rejectedActions engagedAction:(id)action engagedSuggestion:(id)suggestion
{
  resultCopy = result;
  suggestionCopy = suggestion;
  actionCopy = action;
  rejectedActionsCopy = rejectedActions;
  actionsCopy = actions;
  session = [resultCopy session];
  shownSuggestions = [resultCopy shownSuggestions];
  v16 = [(ATXActionFeedback *)self _scoredActionsFromProactiveSuggestions:shownSuggestions];

  v17 = objc_alloc(MEMORY[0x277CEB2F0]);
  clientCacheUpdate = [resultCopy clientCacheUpdate];
  feedbackMetadata = [clientCacheUpdate feedbackMetadata];
  shownSuggestions2 = [resultCopy shownSuggestions];
  blendingUICacheUpdateUUID = [session blendingUICacheUpdateUUID];
  sessionStartDate = [session sessionStartDate];
  v38 = v16;
  v23 = [v17 initWithScoredActions:v16 cacheFileData:feedbackMetadata proactiveSuggestions:shownSuggestions2 blendingModelUICacheUpdateUUID:blendingUICacheUpdateUUID consumerSubType:0 predictionDate:sessionStartDate error:0];

  consumerSubType = [resultCopy consumerSubType];
  v25 = [(ATXActionFeedback *)self _feedbackStageForUIFeedbackResult:resultCopy engagedSuggestion:suggestionCopy];

  sessionEndDate = [session sessionEndDate];
  [v23 updateConsumerSubType:consumerSubType engagedAction:actionCopy shownActions:actionsCopy feedbackStage:v25 explicitlyDismissedActions:rejectedActionsCopy searchedActionType:4 engagedAppString:0 uiFeedbackDate:sessionEndDate];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = resultCopy;
    partialEngagementWasCompleteMatch = [v27 partialEngagementWasCompleteMatch];

    if (partialEngagementWasCompleteMatch)
    {
      partialEngagementWasCompleteMatch2 = [v27 partialEngagementWasCompleteMatch];
      bOOLValue = [partialEngagementWasCompleteMatch2 BOOLValue];

      matchingIntentDonatedAction = [v27 matchingIntentDonatedAction];
      matchingIntentDonationDate = [v27 matchingIntentDonationDate];
      [v23 updateWithMatchingIntentDonatedAction:matchingIntentDonatedAction intentDonationDate:matchingIntentDonationDate matchingIntentWasCompleteMatch:bOOLValue != 0];
    }

    else
    {
      [v23 updateWithMatchingIntentDonatedAction:0 intentDonationDate:0 matchingIntentWasCompleteMatch:0];
    }
  }

  return v23;
}

- (void)receiveUIFeedbackResult:(id)result
{
  resultCopy = result;
  shownSuggestions = [resultCopy shownSuggestions];
  v6 = [_ATXActionUtils atxActionsFromProactiveSuggestions:shownSuggestions];

  rejectedSuggestions = [resultCopy rejectedSuggestions];
  v8 = [_ATXActionUtils atxActionsFromProactiveSuggestions:rejectedSuggestions];

  engagedSuggestions = [resultCopy engagedSuggestions];
  v10 = [engagedSuggestions count];

  if (v10)
  {
    engagedSuggestions2 = [resultCopy engagedSuggestions];
    v12 = [_ATXActionUtils atxActionsFromProactiveSuggestions:engagedSuggestions2];

    if ([v12 count])
    {
      v13 = [v12 objectAtIndex:0];
      engagedSuggestions3 = [resultCopy engagedSuggestions];
      v10 = [engagedSuggestions3 objectAtIndex:0];
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

  v15 = [(ATXActionFeedback *)self _actionResponseFromUIFeedbackResult:resultCopy shownActions:v6 rejectedActions:v8 engagedAction:v13 engagedSuggestion:v10];
  context = [resultCopy context];

  if (!context)
  {
    v20 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [ATXActionFeedback receiveUIFeedbackResult:];
    }

    goto LABEL_14;
  }

  context2 = [resultCopy context];
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

  context3 = [resultCopy context];
  [(ATXActionFeedback *)self receiveFeedbackWithActionResponse:v15 context:context3];

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

- (void)_assertHistogram:(id)histogram weight:(float)weight
{
  histogramCopy = histogram;
  if (!histogramCopy)
  {
    v6 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ATXActionFeedback _assertHistogram:weight:];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"attempted to update a nil histogram in action feedback"];
  }

  if (weight < 0.0)
  {
    v7 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ATXActionFeedback _assertHistogram:weight:];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"attempted to update a histogram with a negative weight in action feedback"];
  }
}

- (void)_updateAppLaunchHistogram:(int64_t)histogram bundleId:(id)id context:(id)context weight:(float)weight
{
  idCopy = id;
  contextCopy = context;
  v11 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager histogramForLaunchType:histogram];
  *&v12 = weight;
  [(ATXActionFeedback *)self _assertHistogram:v11 weight:v12];
  weightCopy = weight;
  if (weight >= 1)
  {
    do
    {
      timeContext = [contextCopy timeContext];
      date = [timeContext date];
      LODWORD(v16) = 1.0;
      [v11 addLaunchWithBundleId:idCopy date:date timeZone:0 weight:v16];

      --weightCopy;
    }

    while (weightCopy);
  }
}

- (void)_updateAppLaunchCategoricalHistogram:(int64_t)histogram bundleId:(id)id category:(id)category context:(id)context weight:(float)weight
{
  idCopy = id;
  categoryCopy = category;
  contextCopy = context;
  v14 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager categoricalHistogramForLaunchType:histogram];
  *&v15 = weight;
  [(ATXActionFeedback *)self _assertHistogram:v14 weight:v15];
  weightCopy = weight;
  if (weight >= 1)
  {
    do
    {
      timeContext = [contextCopy timeContext];
      date = [timeContext date];
      LODWORD(v19) = 1.0;
      [v14 addLaunchWithBundleId:idCopy date:date category:categoryCopy weight:v19];

      --weightCopy;
    }

    while (weightCopy);
  }
}

- (void)applyFinalFeedbackForActionResponse:(id)response engagementType:(unint64_t)type context:(id)context
{
  v138 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  contextCopy = context;
  v10 = __atxlog_handle_feedback();
  v111 = responseCopy;
  selfCopy = self;
  v108 = contextCopy;
  typeCopy = type;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    [MEMORY[0x277CEB2E8] engagementTypeToString:type];
    v11 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v12 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:{objc_msgSend(responseCopy, "consumerSubType")}];
    v13 = [MEMORY[0x277CEB2E8] actionFeedbackStageToString:{objc_msgSend(responseCopy, "feedbackStage")}];
    shownActions = [responseCopy shownActions];
    engagedAction = [responseCopy engagedAction];
    explicitlyDismissedActions = [responseCopy explicitlyDismissedActions];
    *buf = 138413570;
    v127 = v11;
    v128 = 2112;
    v129 = v12;
    v130 = 2112;
    v131 = v13;
    v132 = 2112;
    v133 = shownActions;
    v134 = 2112;
    v135 = engagedAction;
    v136 = 2112;
    v137 = explicitlyDismissedActions;
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "applyFinalFeedbackForActionResponse called with engagement type: %@, consumerSubType: %@, feedbackStage: %@, shownActions:%@, engagedAction:%@, explicitlyRejectedActions:%@", buf, 0x3Eu);

    self = selfCopy;
    contextCopy = v108;

    type = typeCopy;
  }

  -[ATXActionFeedbackWeights confirmWeightForFeedbackStage:consumerSubType:](self->_actionFeedbackWeights, "confirmWeightForFeedbackStage:consumerSubType:", [responseCopy feedbackStage], objc_msgSend(responseCopy, "consumerSubType"));
  v18 = v17;
  -[ATXActionFeedbackWeights rejectWeightForFeedbackStage:consumerSubType:](self->_actionFeedbackWeights, "rejectWeightForFeedbackStage:consumerSubType:", [responseCopy feedbackStage], objc_msgSend(responseCopy, "consumerSubType"));
  v20 = v19;
  locationMotionContext = [contextCopy locationMotionContext];
  geohash = [locationMotionContext geohash];

  locationMotionContext2 = [contextCopy locationMotionContext];
  coarseGeohash = [locationMotionContext2 coarseGeohash];

  engagedAction2 = [responseCopy engagedAction];
  if (engagedAction2)
  {
    engagedAction3 = [responseCopy engagedAction];
    actionKey = [engagedAction3 actionKey];
  }

  else
  {
    actionKey = 0;
  }

  timeContext = [contextCopy timeContext];
  date = [timeContext date];

  v113 = actionKey;
  if (actionKey)
  {
    v27 = 0;
    if (type > 4)
    {
      if (type - 7 >= 4)
      {
        if (type != 5)
        {
          goto LABEL_10;
        }

        goto LABEL_43;
      }

      goto LABEL_37;
    }

    if (type - 2 >= 3)
    {
      if (type >= 2)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    engagedAction4 = [responseCopy engagedAction];
    isHeuristic = [engagedAction4 isHeuristic];

    v30 = __atxlog_handle_feedback();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_INFO);
    if (isHeuristic)
    {
      if (v31)
      {
        *buf = 134218242;
        v127 = v18;
        v128 = 2112;
        v129 = actionKey;
        _os_log_impl(&dword_2263AA000, v30, OS_LOG_TYPE_INFO, "Final engagement of weight %f feedback for heuristic action prediction: %@", buf, 0x16u);
      }

      engagedAction5 = [responseCopy engagedAction];
      heuristic = [engagedAction5 heuristic];
      *&v34 = v18;
      [(ATXActionFeedback *)self _updateAppLaunchHistogram:35 bundleId:heuristic context:contextCopy weight:v34];
    }

    else
    {
      if (v31)
      {
        *buf = 134218242;
        v127 = v18;
        v128 = 2112;
        v129 = actionKey;
        _os_log_impl(&dword_2263AA000, v30, OS_LOG_TYPE_INFO, "Final engagement feedback of weight %f for model-based action prediction: %@", buf, 0x16u);
      }

      engagedAction5 = [responseCopy engagedAction];
      heuristic = [engagedAction5 bundleId];
      v35 = [_ATXActionUtils getActionTypeFromActionKey:actionKey];
      *&v36 = v18;
      [(ATXActionFeedback *)self _updateAppLaunchCategoricalHistogram:33 bundleId:heuristic category:v35 context:contextCopy weight:v36];
    }

    engagedAction6 = [responseCopy engagedAction];
    slotSet = [engagedAction6 slotSet];

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
        [MEMORY[0x277CEB2E8] actionFeedbackStageToString:{objc_msgSend(responseCopy, "feedbackStage")}];
        v41 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v42 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:{objc_msgSend(responseCopy, "consumerSubType")}];
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
      v40 = [_ATXActionUtils getActionTypeFromActionKey:actionKey];
      engagedAction7 = [responseCopy engagedAction];
      bundleId = [engagedAction7 bundleId];
      engagedAction8 = [responseCopy engagedAction];
      engagedAction9 = [responseCopy engagedAction];
      actionUUID = [engagedAction9 actionUUID];
      LOBYTE(v101) = [responseCopy consumerSubType];
      [(_ATXDataStore *)dataStore recordConfirms:2 rejects:v40 forFeedbackType:bundleId forActionType:engagedAction8 bundleId:slotSet action:actionUUID slotSet:v18 actionUUID:0.0 date:date consumerSubType:v101 geohash:geohash coarseGeohash:coarseGeohash];

      type = typeCopy;
    }
  }

  v27 = 0;
  if (type > 3)
  {
    if (type - 7 >= 4)
    {
      if (type - 4 >= 2)
      {
LABEL_10:
        if (type != 6)
        {
          goto LABEL_38;
        }

        goto LABEL_41;
      }

LABEL_43:
      v56 = __atxlog_handle_feedback();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        [MEMORY[0x277CEB2E8] engagementTypeToString:type];
        v57 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138412290;
        v127 = v57;
        _os_log_impl(&dword_2263AA000, v56, OS_LOG_TYPE_INFO, "Exact slot match required on non-rejected items for engagement type %@", buf, 0xCu);
      }

      engagedAction10 = [responseCopy engagedAction];
      goto LABEL_46;
    }

    goto LABEL_37;
  }

  if (type < 2)
  {
LABEL_37:
    v27 = 1;
    goto LABEL_38;
  }

  if (type == 2)
  {
LABEL_41:
    engagedAction10 = [responseCopy matchingIntentDonatedAction];
LABEL_46:
    matchingIntentDonatedAction = engagedAction10;
    v27 = 1;
    goto LABEL_47;
  }

  if (type != 3)
  {
LABEL_38:
    v51 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      [ATXActionFeedback applyFinalFeedbackForActionResponse:type engagementType:? context:?];
    }

    v52 = MEMORY[0x277CBEAD8];
    v53 = *MEMORY[0x277CBE658];
    v54 = [MEMORY[0x277CEB2E8] engagementTypeToString:type];
    [v52 raise:v53 format:{@"Invalid engagement type of %@ encountered", v54}];

    matchingIntentDonatedAction = 0;
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

  matchingIntentDonatedAction = [responseCopy matchingIntentDonatedAction];
  v27 = 0;
LABEL_47:
  v58 = __atxlog_handle_feedback();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
  {
    [ATXActionFeedback applyFinalFeedbackForActionResponse:responseCopy engagementType:? context:?];
  }

  v114 = objc_opt_new();
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  shownActions2 = [responseCopy shownActions];
  v60 = [shownActions2 countByEnumeratingWithState:&v120 objects:v125 count:16];
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
          objc_enumerationMutation(shownActions2);
        }

        v65 = *(*(&v120 + 1) + 8 * i);
        if (v27)
        {
          if ([_ATXActionUtils isContainmentBetweenAction:matchingIntentDonatedAction other:*(*(&v120 + 1) + 8 * i)])
          {
            goto LABEL_61;
          }
        }

        else
        {
          actionKey2 = [*(*(&v120 + 1) + 8 * i) actionKey];
          v67 = [v113 isEqualToString:actionKey2];

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

      v61 = [shownActions2 countByEnumeratingWithState:&v120 objects:v125 count:16];
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
  v73 = selfCopy;
  v72 = v108;
  if ([v114 count])
  {
    v74 = objc_alloc(MEMORY[0x277CBEB98]);
    explicitlyDismissedActions2 = [v111 explicitlyDismissedActions];
    v105 = [v74 initWithArray:explicitlyDismissedActions2];

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
          heuristic2 = [v80 heuristic];
          v82 = [heuristic2 length];

          if (v82)
          {
            heuristic3 = [v80 heuristic];
            *&v84 = v20;
            [(ATXActionFeedback *)v73 _updateAppLaunchHistogram:36 bundleId:heuristic3 context:v72 weight:v84];
          }

          else
          {
            heuristic3 = [v80 bundleId];
            v85 = v78[204];
            actionKey3 = [v80 actionKey];
            v87 = [(__objc2_class *)v85 getActionTypeFromActionKey:actionKey3];
            *&v88 = v20;
            [(ATXActionFeedback *)v73 _updateAppLaunchCategoricalHistogram:34 bundleId:heuristic3 category:v87 context:v72 weight:v88];
          }

          if (v20 == 0.0)
          {
            slotSet2 = __atxlog_handle_feedback();
            if (os_log_type_enabled(slotSet2, OS_LOG_TYPE_DEFAULT))
            {
              [MEMORY[0x277CEB2E8] actionFeedbackStageToString:{objc_msgSend(v111, "feedbackStage")}];
              v90 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v91 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:{objc_msgSend(v111, "consumerSubType")}];
              *buf = 138412546;
              v127 = v90;
              v128 = 2112;
              v129 = v91;
              _os_log_impl(&dword_2263AA000, slotSet2, OS_LOG_TYPE_DEFAULT, "Encountered rejection feedback with a weight of 0 for feedbackStage=%@ and consumerSubType=%@", buf, 0x16u);
            }
          }

          else
          {
            slotSet2 = [v80 slotSet];
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
            actionKey4 = [v80 actionKey];
            v97 = [(__objc2_class *)v95 getActionTypeFromActionKey:actionKey4];
            bundleId2 = [v80 bundleId];
            actionUUID2 = [v80 actionUUID];
            LOBYTE(v101) = [v111 consumerSubType];
            [(_ATXDataStore *)v92 recordConfirms:v93 rejects:v97 forFeedbackType:bundleId2 forActionType:v80 bundleId:slotSet2 action:actionUUID2 slotSet:0.0 actionUUID:v20 date:date consumerSubType:v101 geohash:geohash coarseGeohash:coarseGeohash];

            v73 = selfCopy;
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

  [(ATXActionFeedback *)v73 sessionLogWithActionResponse:v71 engagementType:typeCopy context:v72];
  [(ATXActionFeedback *)v73 logHeuristicFeedback:v71];
  ATXUpdatePredictionsDefaultInterval(3);

  v100 = *MEMORY[0x277D85DE8];
}

- (void)sessionLogWithActionResponse:(id)response engagementType:(unint64_t)type context:(id)context
{
  contextCopy = context;
  responseCopy = response;
  v9 = __atxlog_handle_feedback();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [ATXActionFeedback sessionLogWithActionResponse:engagementType:context:];
  }

  [ATXActionSessionLog performSessionLoggingWithActionResponse:responseCopy engagementType:type context:contextCopy isShadowLog:0 forTestingMode:0];
}

- (void)receiveFeedbackWithActionResponse:(id)response context:(id)context
{
  v80 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  contextCopy = context;
  obj = self;
  objc_sync_enter(obj);
  v7 = __atxlog_handle_feedback();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v79 = responseCopy;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_INFO, "receiveFeedbackWithActionResponse called with actionResponse of %@", buf, 0xCu);
  }

  feedbackStage = [responseCopy feedbackStage];
  if (feedbackStage > 4)
  {
    if ((feedbackStage - 7) >= 2)
    {
      if (feedbackStage == 5)
      {
        engagedAction = [responseCopy engagedAction];
        v24 = engagedAction == 0;

        if (!v24)
        {
          engagedAction2 = [responseCopy engagedAction];
          v26 = [engagedAction2 actionType] == 1;

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

          engagedAction3 = [responseCopy engagedAction];
          [(ATXRecentActionEngagementCache *)obj->_recentEngagementCache addEngagedAction:engagedAction3];
          if ([engagedAction3 isHeuristic])
          {
            v32 = __atxlog_handle_feedback();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              [ATXActionFeedback receiveFeedbackWithActionResponse:context:];
            }
          }

          else
          {
            intent = [engagedAction3 intent];
            if (intent && (v34 = [engagedAction3 isHeuristic], intent, (v34 & 1) == 0))
            {
              actionKey = [engagedAction3 actionKey];
              v32 = [_ATXActionUtils getActionTypeFromActionKey:actionKey];

              v36 = objc_alloc(MEMORY[0x277CCA970]);
              timeContext = [contextCopy timeContext];
              date = [timeContext date];
              timeContext2 = [contextCopy timeContext];
              date2 = [timeContext2 date];
              v41 = [v36 initWithStartDate:date endDate:date2];

              v42 = objc_alloc(MEMORY[0x277CEB5D8]);
              bundleId = [engagedAction3 bundleId];
              v44 = [v42 initWithBundleId:bundleId intentType:v32 dateInterval:v41 action:engagedAction3];

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

      if (feedbackStage != 6)
      {
        goto LABEL_45;
      }

LABEL_16:
      engagedAction4 = [responseCopy engagedAction];
      v18 = engagedAction4 == 0;

      if (!v18)
      {
        v19 = __atxlog_handle_feedback();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          engagedAction5 = [responseCopy engagedAction];
          [(ATXActionFeedback *)engagedAction5 receiveFeedbackWithActionResponse:buf context:v19];
        }

        v21 = MEMORY[0x277CBEAD8];
        engagedAction6 = [responseCopy engagedAction];
        [v21 raise:*MEMORY[0x277CBE658] format:{@"non-nil engagedAction in lock screen expiration feedback: %@", engagedAction6}];
      }

LABEL_25:
      [(ATXActionFeedback *)obj applyFinalFeedbackForActionResponse:responseCopy engagementType:5 context:contextCopy];
      goto LABEL_45;
    }
  }

  else if (feedbackStage >= 2)
  {
    if ((feedbackStage - 2) < 2)
    {
      engagedAction7 = [responseCopy engagedAction];
      v10 = engagedAction7 == 0;

      if (v10)
      {
        [(ATXActionFeedback *)obj applyFinalFeedbackForActionResponse:responseCopy engagementType:5 context:contextCopy];
      }

      else
      {
        recentEngagementCache = obj->_recentEngagementCache;
        engagedAction8 = [responseCopy engagedAction];
        [(ATXRecentActionEngagementCache *)recentEngagementCache addEngagedAction:engagedAction8];
      }

      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      engagedAction3 = [responseCopy explicitlyDismissedActions];
      v29 = [engagedAction3 countByEnumeratingWithState:&v72 objects:v77 count:16];
      if (v29)
      {
        v30 = *v73;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v73 != v30)
            {
              objc_enumerationMutation(engagedAction3);
            }

            [(ATXRecentActionEngagementCache *)obj->_recentEngagementCache addEngagedAction:*(*(&v72 + 1) + 8 * i)];
          }

          v29 = [engagedAction3 countByEnumeratingWithState:&v72 objects:v77 count:16];
        }

        while (v29);
      }

LABEL_44:

      goto LABEL_45;
    }

    if (feedbackStage != 4)
    {
LABEL_45:
      consumerSubType = [responseCopy consumerSubType];
      v16 = [MEMORY[0x277CEBCF0] uiTypeForActionConsumerSubType:consumerSubType];
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      shownActions = [responseCopy shownActions];
      v48 = [shownActions countByEnumeratingWithState:&v68 objects:v76 count:16];
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
            objc_enumerationMutation(shownActions);
          }

          v51 = *(*(&v68 + 1) + 8 * v50);
          actionKey2 = [v51 actionKey];
          engagedAction9 = [responseCopy engagedAction];
          v54 = [engagedAction9 isEqual:v51];

          if (v54)
          {
            engagedAction10 = [responseCopy engagedAction];
            if ([engagedAction10 actionType] == 1)
            {

              goto LABEL_54;
            }

            v56 = [responseCopy feedbackStage] == 5;

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
              if ([responseCopy feedbackStage] != 3)
              {
                goto LABEL_57;
              }

              matchingIntentDonatedAction = [responseCopy matchingIntentDonatedAction];
              if (matchingIntentDonatedAction && (v60 = [responseCopy matchingIntentWasCompleteMatch], matchingIntentDonatedAction, (v60 & 1) != 0))
              {
                v58 = 2;
              }

              else
              {
                matchingIntentDonatedAction2 = [responseCopy matchingIntentDonatedAction];
                if (matchingIntentDonatedAction2 && (v62 = [responseCopy matchingIntentWasCompleteMatch], matchingIntentDonatedAction2, !v62))
                {
                  v58 = 3;
                }

                else
                {
                  v58 = 6;
                }
              }
            }

            [(ATXActionFeedback *)obj applyFinalFeedbackForActionResponse:responseCopy engagementType:v58 context:contextCopy];
          }

          [(_ATXDataStore *)obj->_dataStore updateOrInsertPredictionsAndFeedbackForAppAction:actionKey2 feedbackReceived:v54 forUIType:v16];

          ++v50;
        }

        while (v48 != v50);
        v63 = [shownActions countByEnumeratingWithState:&v68 objects:v76 count:16];
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
    v14 = [MEMORY[0x277CEB2E8] actionFeedbackStageToString:{objc_msgSend(responseCopy, "feedbackStage")}];
    [(ATXActionFeedback *)v14 receiveFeedbackWithActionResponse:buf context:v13];
  }

  v15 = MEMORY[0x277CBEAD8];
  v16 = [MEMORY[0x277CEB2E8] actionFeedbackStageToString:{objc_msgSend(responseCopy, "feedbackStage")}];
  [v15 raise:*MEMORY[0x277CBE658] format:{@"invalid feedbackStage of %@ on ATXActionResponse", v16}];
LABEL_71:

  objc_sync_exit(obj);
  v64 = *MEMORY[0x277D85DE8];
}

- (void)receiveLockscreenFeedbackWithAction:(id)action actionResponse:(id)response engagement:(BOOL)engagement triggeredByUserInteraction:(BOOL)interaction currentDate:(id)date
{
  interactionCopy = interaction;
  engagementCopy = engagement;
  v50 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  responseCopy = response;
  dateCopy = date;
  sel_getName(a2);
  v16 = os_transaction_create();
  v17 = __atxlog_handle_feedback();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    actionKey = [actionCopy actionKey];
    v19 = actionKey;
    v20 = @"NO";
    if (engagementCopy)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    *buf = 138412802;
    v45 = actionKey;
    v47 = v21;
    v46 = 2112;
    if (interactionCopy)
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

  if (!engagementCopy || interactionCopy)
  {
    predictionContextForCurrentContext = [(ATXPredictionContextBuilderProtocol *)self->_predictionContextBuilder predictionContextForCurrentContext];
    if (!predictionContextForCurrentContext)
    {
      v29 = __atxlog_handle_feedback();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [ATXActionFeedback receiveLockscreenFeedbackWithAction:actionResponse:engagement:triggeredByUserInteraction:currentDate:];
      }

      goto LABEL_33;
    }

    if (engagementCopy || interactionCopy)
    {
      if (!interactionCopy || engagementCopy)
      {
        if (!engagementCopy || !interactionCopy)
        {
          v31 = __atxlog_handle_feedback();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            [ATXActionFeedback receiveLockscreenFeedbackWithAction:actionResponse:engagement:triggeredByUserInteraction:currentDate:];
          }

          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"reached end of receiveLockscreenFeedbackWithAction"];
          goto LABEL_33;
        }

        userActivity = [actionCopy userActivity];

        if (userActivity)
        {
          v40 = actionCopy;
          v33 = MEMORY[0x277CBEA60];
          v34 = &v40;
        }

        else
        {
          intent = [actionCopy intent];
          atx_supportsBackgroundExecution = [intent atx_supportsBackgroundExecution];

          if (atx_supportsBackgroundExecution)
          {
            v39 = actionCopy;
            v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
            [responseCopy updateConsumerSubType:22 engagedAction:actionCopy shownActions:v28 feedbackStage:5 explicitlyDismissedActions:0 searchedActionType:4 engagedAppString:0 uiFeedbackDate:{dateCopy, v38}];
            goto LABEL_32;
          }

          v37 = __atxlog_handle_feedback();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v45 = actionCopy;
            _os_log_impl(&dword_2263AA000, v37, OS_LOG_TYPE_DEFAULT, "received lockscreen feedback for action with non-background executable Intent: %@", buf, 0xCu);
          }

          v38 = actionCopy;
          v33 = MEMORY[0x277CBEA60];
          v34 = &v38;
        }

        v28 = [v33 arrayWithObjects:v34 count:1];
        [responseCopy updateConsumerSubType:22 engagedAction:actionCopy shownActions:v28 feedbackStage:2 explicitlyDismissedActions:0 searchedActionType:4 engagedAppString:0 uiFeedbackDate:{dateCopy, v38}];
        goto LABEL_32;
      }

      v42 = actionCopy;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
      v41 = actionCopy;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
      [responseCopy updateConsumerSubType:22 engagedAction:0 shownActions:v28 feedbackStage:2 explicitlyDismissedActions:v30 searchedActionType:4 engagedAppString:0 uiFeedbackDate:dateCopy];
    }

    else
    {
      v43 = actionCopy;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
      [responseCopy updateConsumerSubType:22 engagedAction:0 shownActions:v28 feedbackStage:4 explicitlyDismissedActions:0 searchedActionType:4 engagedAppString:0 uiFeedbackDate:{dateCopy, v38}];
    }

LABEL_32:

    [(ATXActionFeedback *)self receiveFeedbackWithActionResponse:responseCopy context:predictionContextForCurrentContext];
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

- (void)logHeuristicFeedback:(id)feedback
{
  v36 = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  engagedAction = [feedbackCopy engagedAction];
  if (engagedAction)
  {
    v6 = engagedAction;
    engagedAction2 = [feedbackCopy engagedAction];
    heuristic = [engagedAction2 heuristic];

    if (heuristic)
    {
      engagedAction3 = [feedbackCopy engagedAction];
      [(ATXActionFeedback *)self logHeuristicFeedbackToPortraitForAction:engagedAction3 withActionType:2];

      engagedAction4 = [feedbackCopy engagedAction];
      [(ATXActionFeedback *)self logHeuristicFeedbackToSuggestionsForAction:engagedAction4 withActionType:5];
    }
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  shownActions = [feedbackCopy shownActions];
  v12 = [shownActions countByEnumeratingWithState:&v30 objects:v35 count:16];
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
          objc_enumerationMutation(shownActions);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        heuristic2 = [v16 heuristic];

        if (heuristic2)
        {
          [(ATXActionFeedback *)self logHeuristicFeedbackToPortraitForAction:v16 withActionType:1];
          [(ATXActionFeedback *)self logHeuristicFeedbackToSuggestionsForAction:v16 withActionType:4];
        }
      }

      v13 = [shownActions countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v13);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  explicitlyDismissedActions = [feedbackCopy explicitlyDismissedActions];
  v19 = [explicitlyDismissedActions countByEnumeratingWithState:&v26 objects:v34 count:16];
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
          objc_enumerationMutation(explicitlyDismissedActions);
        }

        v23 = *(*(&v26 + 1) + 8 * j);
        heuristic3 = [v23 heuristic];

        if (heuristic3)
        {
          [(ATXActionFeedback *)self logHeuristicFeedbackToSuggestionsForAction:v23 withActionType:8];
        }
      }

      v20 = [explicitlyDismissedActions countByEnumeratingWithState:&v26 objects:v34 count:16];
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