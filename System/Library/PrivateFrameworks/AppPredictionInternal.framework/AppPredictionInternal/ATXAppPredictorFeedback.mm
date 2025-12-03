@interface ATXAppPredictorFeedback
+ (double)_bucketize:(double)result bucketSize:(double)size;
+ (id)_appDictionaryForFeedbackItem:(id)item;
+ (id)_getLastAppIntentsWithEngagedAction:(id)action combinedIntentStream:(id)stream limit:(int)limit;
+ (id)_getLastAppsWithEngagedApp:(id)app limit:(int)limit;
+ (id)constructFeatureDictionaryWithFeedbackItems:(id)items engagedItem:(id)item shownItemIndexes:(id)indexes consumerType:(unint64_t)type histogramBundleIdTable:(id)table;
+ (int64_t)getEngagedItemIndexWithFeedbackItems:(id)items engagedItem:(id)item;
+ (unint64_t)_outcomeForEngagementType:(unint64_t)type;
+ (void)checkFeedbackContainsUninstalledApps:(id)apps consumerSubType:(unsigned __int8)type aggregateLogger:(id)logger;
+ (void)logEngagedMMMetricsEntryForBundle:(id)bundle anchorType:(int64_t)type consumerSubType:(unsigned __int8)subType score:(double)score;
+ (void)logShownMMMetricsEntryForBundle:(id)bundle anchorType:(int64_t)type consumerSubType:(unsigned __int8)subType score:(double)score;
+ (void)receiveFeedbackForConsumerType:(unint64_t)type consumerSubType:(unsigned __int8)subType feedbackItemsForResponse:(id)response engagementType:(unint64_t)engagementType engagedBundleId:(id)id bundleIdsShown:(id)shown explicitlyRejectedBundleIds:(id)ids abGroupIdentifier:(id)self0 context:(id)self1;
- (ATXAppPredictorFeedback)init;
- (ATXAppPredictorFeedback)initWithPredictionContextBuilder:(id)builder feedbackInstance:(id)instance aggregateLogger:(id)logger petTracker:(id)tracker;
- (id)_engagedBundleIdFromEngagedSuggestion:(id)suggestion feedbackSession:(id)session;
- (id)clientModelIds;
- (unint64_t)_engagementTypeFromEngagedSuggestion:(id)suggestion engagedBundleId:(id)id shownBundleIds:(id)ids didSearchDuringSession:(BOOL)session;
- (unint64_t)_engagementTypeFromUIFeedbackResult:(id)result engagedSuggestion:(id)suggestion engagedBundleId:(id)id shownBundleIds:(id)ids;
- (void)receiveUIFeedbackResult:(id)result;
@end

@implementation ATXAppPredictorFeedback

+ (void)checkFeedbackContainsUninstalledApps:(id)apps consumerSubType:(unsigned __int8)type aggregateLogger:(id)logger
{
  appsCopy = apps;
  loggerCopy = logger;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__ATXAppPredictorFeedback_checkFeedbackContainsUninstalledApps_consumerSubType_aggregateLogger___block_invoke;
  aBlock[3] = &unk_278598A00;
  v17 = appsCopy;
  v18 = loggerCopy;
  typeCopy = type;
  v9 = loggerCopy;
  v10 = appsCopy;
  v11 = _Block_copy(aBlock);
  v12 = dispatch_get_global_queue(9, 0);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __96__ATXAppPredictorFeedback_checkFeedbackContainsUninstalledApps_consumerSubType_aggregateLogger___block_invoke_2;
  v14[3] = &unk_2785969B8;
  v15 = v11;
  v13 = v11;
  dispatch_async(v12, v14);
}

void __96__ATXAppPredictorFeedback_checkFeedbackContainsUninstalledApps_consumerSubType_aggregateLogger___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = +[_ATXAppIconState sharedInstance];
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  v4 = [v2 allInstalledAppsKnownToSpringBoard];
  v5 = [v3 initWithArray:v4];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) bundleId];
        v13 = [v5 containsObject:v12];

        v9 += v13 ^ 1u;
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);

    if (v9)
    {
      [*(a1 + 40) logPredictUninstalledApps:v9 consumerSubType:*(a1 + 48)];
    }
  }

  else
  {
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (ATXAppPredictorFeedback)init
{
  v3 = +[ATXPredictionContextBuilder sharedInstance];
  v4 = +[_ATXFeedback sharedInstance];
  v5 = +[_ATXAggregateLogger sharedInstance];
  v6 = objc_opt_new();
  v7 = [(ATXAppPredictorFeedback *)self initWithPredictionContextBuilder:v3 feedbackInstance:v4 aggregateLogger:v5 petTracker:v6];

  return v7;
}

- (ATXAppPredictorFeedback)initWithPredictionContextBuilder:(id)builder feedbackInstance:(id)instance aggregateLogger:(id)logger petTracker:(id)tracker
{
  instanceCopy = instance;
  loggerCopy = logger;
  trackerCopy = tracker;
  v21.receiver = self;
  v21.super_class = ATXAppPredictorFeedback;
  v13 = [(ATXAppPredictorFeedback *)&v21 init];
  if (v13)
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    uTF8String = [v15 UTF8String];
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create(uTF8String, v17);
    queue = v13->_queue;
    v13->_queue = v18;

    objc_storeStrong(&v13->_feedbackInstance, instance);
    objc_storeStrong(&v13->_aggregateLogger, logger);
    objc_storeStrong(&v13->_petTracker, tracker);
  }

  return v13;
}

- (unint64_t)_engagementTypeFromEngagedSuggestion:(id)suggestion engagedBundleId:(id)id shownBundleIds:(id)ids didSearchDuringSession:(BOOL)session
{
  sessionCopy = session;
  suggestionCopy = suggestion;
  idCopy = id;
  idsCopy = ids;
  v12 = idsCopy;
  if (idCopy)
  {
    v13 = [idsCopy containsObject:idCopy];
    v14 = v13;
    if (suggestionCopy)
    {
      if (v13)
      {
        v15 = 1;
        goto LABEL_13;
      }

LABEL_12:
      v15 = 2;
      goto LABEL_13;
    }

    if ([v12 containsObject:idCopy])
    {
      v15 = 3;
    }

    else
    {
      v15 = 1;
    }

    if ((v14 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (sessionCopy)
  {
    v15 = 4;
  }

  else
  {
    v15 = 5;
  }

LABEL_13:

  return v15;
}

- (unint64_t)_engagementTypeFromUIFeedbackResult:(id)result engagedSuggestion:(id)suggestion engagedBundleId:(id)id shownBundleIds:(id)ids
{
  suggestionCopy = suggestion;
  idCopy = id;
  idsCopy = ids;
  session = [result session];
  sessionMetadata = [session sessionMetadata];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  sessionMetadata2 = [session sessionMetadata];
  if (isKindOfClass)
  {
    goto LABEL_2;
  }

  objc_opt_class();
  v18 = objc_opt_isKindOfClass();

  if (v18)
  {
    v17 = [(ATXAppPredictorFeedback *)self _engagementTypeFromEngagedSuggestion:suggestionCopy engagedBundleId:idCopy shownBundleIds:idsCopy didSearchDuringSession:0];
    goto LABEL_11;
  }

  sessionMetadata3 = [session sessionMetadata];
  objc_opt_class();
  v20 = objc_opt_isKindOfClass();

  if ((v20 & 1) == 0)
  {
    v17 = 0;
    goto LABEL_11;
  }

  sessionMetadata2 = [session sessionMetadata];
  engagedBundleId = [sessionMetadata2 engagedBundleId];

  if (!engagedBundleId)
  {
    goto LABEL_2;
  }

  engagedBundleIdInTopAppsVisible = [sessionMetadata2 engagedBundleIdInTopAppsVisible];
  bOOLValue = [engagedBundleIdInTopAppsVisible BOOLValue];

  if (bOOLValue)
  {
    v17 = 6;
  }

  else
  {
LABEL_2:
    v17 = -[ATXAppPredictorFeedback _engagementTypeFromEngagedSuggestion:engagedBundleId:shownBundleIds:didSearchDuringSession:](self, "_engagementTypeFromEngagedSuggestion:engagedBundleId:shownBundleIds:didSearchDuringSession:", suggestionCopy, idCopy, idsCopy, [sessionMetadata2 didSearchDuringSession]);
  }

LABEL_11:
  return v17;
}

- (id)_engagedBundleIdFromEngagedSuggestion:(id)suggestion feedbackSession:(id)session
{
  sessionCopy = session;
  bundleIdExecutableObject = [suggestion bundleIdExecutableObject];
  v7 = bundleIdExecutableObject;
  if (bundleIdExecutableObject)
  {
    v8 = bundleIdExecutableObject;
    goto LABEL_10;
  }

  sessionMetadata = [sessionCopy sessionMetadata];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    engagedAppString = [sessionMetadata engagedAppString];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = 0;
      goto LABEL_9;
    }

    engagedAppString = [sessionMetadata engagedBundleId];
  }

  v8 = engagedAppString;
LABEL_9:

LABEL_10:

  return v8;
}

- (id)clientModelIds
{
  v2 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:15];
  v3 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:16];
  v4 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:17];
  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v2, v3, v4, 0}];

  return v5;
}

- (void)receiveUIFeedbackResult:(id)result
{
  resultCopy = result;
  v6 = __atxlog_handle_feedback();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ATXAppPredictorFeedback *)resultCopy receiveUIFeedbackResult:v6];
  }

  shownSuggestions = [resultCopy shownSuggestions];
  v8 = [shownSuggestions count];

  if (v8)
  {
    consumerSubType = [resultCopy consumerSubType];
    v10 = [MEMORY[0x277CEBCF0] consumerTypeForSubType:consumerSubType];
    if (!consumerSubType || (v11 = v10) == 0)
    {
      firstObject = __atxlog_handle_feedback();
      if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
      {
        [ATXAppPredictorFeedback receiveUIFeedbackResult:firstObject];
      }

      goto LABEL_24;
    }

    engagedSuggestions = [resultCopy engagedSuggestions];
    firstObject = [engagedSuggestions firstObject];

    session = [resultCopy session];
    v15 = [(ATXAppPredictorFeedback *)self _engagedBundleIdFromEngagedSuggestion:firstObject feedbackSession:session];

    shownSuggestions2 = [resultCopy shownSuggestions];
    v17 = [(ATXAppPredictorFeedback *)self _bundleIdsFromProactiveSuggestions:shownSuggestions2];

    rejectedSuggestions = [resultCopy rejectedSuggestions];
    v19 = [(ATXAppPredictorFeedback *)self _bundleIdsFromProactiveSuggestions:rejectedSuggestions];

    v20 = [(ATXAppPredictorFeedback *)self _engagementTypeFromUIFeedbackResult:resultCopy engagedSuggestion:firstObject engagedBundleId:v15 shownBundleIds:v17];
    if (!v20)
    {
LABEL_23:

LABEL_24:
      goto LABEL_25;
    }

    v21 = v20;
    v36 = v15;
    v37 = v19;
    v35 = v17;
    clientCacheUpdate = [resultCopy clientCacheUpdate];
    feedbackMetadata = [clientCacheUpdate feedbackMetadata];
    v24 = [ATXAppPredictionFeedbackItem feedbackItemsForCacheFileData:feedbackMetadata];

    v34 = v24;
    if (![v24 count])
    {
      v30 = __atxlog_handle_feedback();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        [ATXAppPredictorFeedback receiveUIFeedbackResult:v30];
      }

      v17 = v35;
      v15 = v36;
      v19 = v37;
      v29 = v34;
      goto LABEL_22;
    }

    v25 = +[_ATXAppPredictor sharedInstance];
    abGroupIdentifiers = [v25 abGroupIdentifiers];
    v33 = [abGroupIdentifiers objectAtIndexedSubscript:consumerSubType];

    context = [resultCopy context];
    if (context)
    {
      objc_opt_class();
      v17 = v35;
      v15 = v36;
      if (objc_opt_isKindOfClass())
      {
        sel_getName(a2);
        v28 = os_transaction_create();
        queue = self->_queue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __51__ATXAppPredictorFeedback_receiveUIFeedbackResult___block_invoke;
        block[3] = &unk_27859BF10;
        block[4] = self;
        v46 = v11;
        v48 = consumerSubType;
        v29 = v34;
        v39 = v34;
        v47 = v21;
        v40 = v36;
        v41 = v35;
        v42 = v37;
        v30 = v33;
        v43 = v33;
        v44 = context;
        v45 = v28;
        v31 = v28;
        dispatch_sync(queue, block);

LABEL_21:
        v19 = v37;
LABEL_22:

        goto LABEL_23;
      }

      v31 = __atxlog_handle_feedback();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        [(ATXAppPredictorFeedback *)context receiveUIFeedbackResult:v31];
      }
    }

    else
    {
      v31 = __atxlog_handle_feedback();
      v17 = v35;
      v15 = v36;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [ATXAppPredictorFeedback receiveUIFeedbackResult:v31];
      }
    }

    v30 = v33;
    v29 = v34;
    goto LABEL_21;
  }

LABEL_25:
}

id __51__ATXAppPredictorFeedback_receiveUIFeedbackResult___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  [objc_opt_class() receiveFeedbackForConsumerType:*(a1 + 96) consumerSubType:*(a1 + 112) feedbackItemsForResponse:*(a1 + 40) engagementType:*(a1 + 104) engagedBundleId:*(a1 + 48) bundleIdsShown:*(a1 + 56) explicitlyRejectedBundleIds:*(a1 + 64) abGroupIdentifier:*(a1 + 72) context:*(a1 + 80) feedbackInstance:v3[2] aggregateLogger:v3[3] petTracker:v3[4]];
  objc_autoreleasePoolPop(v2);
  v4 = *(a1 + 88);
  return objc_opt_self();
}

+ (void)receiveFeedbackForConsumerType:(unint64_t)type consumerSubType:(unsigned __int8)subType feedbackItemsForResponse:(id)response engagementType:(unint64_t)engagementType engagedBundleId:(id)id bundleIdsShown:(id)shown explicitlyRejectedBundleIds:(id)ids abGroupIdentifier:(id)self0 context:(id)self1
{
  subTypeCopy = subType;
  contextCopy = context;
  identifierCopy = identifier;
  idsCopy = ids;
  shownCopy = shown;
  idCopy = id;
  responseCopy = response;
  v21 = objc_opt_class();
  v26 = +[_ATXFeedback sharedInstance];
  v22 = +[_ATXAggregateLogger sharedInstance];
  v23 = objc_opt_new();
  [v21 receiveFeedbackForConsumerType:type consumerSubType:subTypeCopy feedbackItemsForResponse:responseCopy engagementType:engagementType engagedBundleId:idCopy bundleIdsShown:shownCopy explicitlyRejectedBundleIds:idsCopy abGroupIdentifier:identifierCopy context:contextCopy feedbackInstance:v26 aggregateLogger:v22 petTracker:v23];
}

+ (void)logShownMMMetricsEntryForBundle:(id)bundle anchorType:(int64_t)type consumerSubType:(unsigned __int8)subType score:(double)score
{
  if (subType == 35)
  {
    bundleCopy = bundle;
    v15 = objc_opt_new();
    [v15 setBundleId:bundleCopy];

    [v15 setAnchor:{+[ATXMMAppPredictionExpert mmAnchorTypeToMMProtobufAnchor:](ATXMMAppPredictionExpert, "mmAnchorTypeToMMProtobufAnchor:", type)}];
    v10 = +[_ATXAppPredictor sharedInstance];
    abGroupIdentifiers = [v10 abGroupIdentifiers];
    v12 = [abGroupIdentifiers objectAtIndexedSubscript:16];

    [v15 setAbGroup:v12];
    v13 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:35];
    [v15 setConsumerSubType:v13];

    mEMORY[0x277D41DA8] = [MEMORY[0x277D41DA8] sharedInstance];
    [mEMORY[0x277D41DA8] trackDistributionForMessage:v15 value:score];
  }
}

+ (void)logEngagedMMMetricsEntryForBundle:(id)bundle anchorType:(int64_t)type consumerSubType:(unsigned __int8)subType score:(double)score
{
  if (subType == 35)
  {
    bundleCopy = bundle;
    v15 = objc_opt_new();
    [v15 setAnchor:{+[ATXMMAppPredictionExpert mmAnchorTypeToMMProtobufAnchor:](ATXMMAppPredictionExpert, "mmAnchorTypeToMMProtobufAnchor:", type)}];
    [v15 setBundleId:bundleCopy];

    v10 = +[_ATXAppPredictor sharedInstance];
    abGroupIdentifiers = [v10 abGroupIdentifiers];
    v12 = [abGroupIdentifiers objectAtIndexedSubscript:16];

    [v15 setAbGroup:v12];
    v13 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:35];
    [v15 setConsumerSubType:v13];

    mEMORY[0x277D41DA8] = [MEMORY[0x277D41DA8] sharedInstance];
    [mEMORY[0x277D41DA8] trackDistributionForMessage:v15 value:score];
  }
}

+ (unint64_t)_outcomeForEngagementType:(unint64_t)type
{
  result = 0;
  if (type <= 3)
  {
    switch(type)
    {
      case 2uLL:
        return 3;
      case 3uLL:
        return 2;
      case 0uLL:
LABEL_18:
        v5 = __atxlog_handle_default();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          [(ATXAppPredictorFeedback *)type _outcomeForEngagementType:v5];
        }

        result = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Invalid ATXEngagementType value of %lu received in feedback", type}];
        __break(1u);
        break;
    }
  }

  else
  {
    if (type <= 5)
    {
      if (type == 5)
      {
        v4 = 5;
      }

      else
      {
        v4 = 0;
      }

      if (type == 4)
      {
        return 4;
      }

      else
      {
        return v4;
      }
    }

    if (type == 6)
    {
      return 6;
    }

    if (type == 7)
    {
      goto LABEL_18;
    }
  }

  return result;
}

+ (int64_t)getEngagedItemIndexWithFeedbackItems:(id)items engagedItem:(id)item
{
  itemsCopy = items;
  itemCopy = item;
  if ([itemsCopy count])
  {
    v7 = 0;
    while (1)
    {
      v8 = [itemsCopy objectAtIndexedSubscript:v7];
      bundleId = [v8 bundleId];
      v10 = [itemCopy isEqualToString:bundleId];

      if (v10)
      {
        break;
      }

      if (++v7 >= [itemsCopy count])
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v7 = -1;
  }

  return v7;
}

+ (id)constructFeatureDictionaryWithFeedbackItems:(id)items engagedItem:(id)item shownItemIndexes:(id)indexes consumerType:(unint64_t)type histogramBundleIdTable:(id)table
{
  v97 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  itemCopy = item;
  indexesCopy = indexes;
  tableCopy = table;
  v15 = [itemsCopy count];
  if (v15)
  {
    v16 = [indexesCopy count];
    v17 = +[_ATXGlobals sharedInstance];
    v18 = v17;
    v71 = indexesCopy;
    v72 = itemCopy;
    v70 = tableCopy;
    typeCopy = type;
    if (type == 8)
    {
      extraIntentsToLog = [v17 extraIntentsToLog];
    }

    else
    {
      extraIntentsToLog = [v17 extraAppsToLog];
    }

    v20 = extraIntentsToLog;

    if (v16 + v20 >= v15)
    {
      v21 = v15;
    }

    else
    {
      v21 = v16 + v20;
    }

    v22 = objc_opt_new();
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v23 = itemsCopy;
    v24 = [v23 countByEnumeratingWithState:&v90 objects:v96 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v91;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v91 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v90 + 1) + 8 * i);
          bundleId = [v28 bundleId];
          [v22 setObject:v28 forKeyedSubscript:bundleId];
        }

        v25 = [v23 countByEnumeratingWithState:&v90 objects:v96 count:16];
      }

      while (v25);
    }

    v68 = itemsCopy;

    v30 = objc_opt_new();
    v31 = objc_alloc(MEMORY[0x277CBEB58]);
    allKeys = [v22 allKeys];
    v33 = [v31 initWithArray:allKeys];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __136__ATXAppPredictorFeedback_constructFeatureDictionaryWithFeedbackItems_engagedItem_shownItemIndexes_consumerType_histogramBundleIdTable___block_invoke;
    aBlock[3] = &unk_27859BF38;
    v34 = v33;
    v87 = v34;
    v73 = v30;
    v88 = v73;
    v89 = v21;
    v35 = _Block_copy(aBlock);
    v36 = [ATXAppPredictorFeedback getEngagedItemIndexWithFeedbackItems:v23 engagedItem:v72];
    if (v36 != -1)
    {
      v37 = [v23 objectAtIndexedSubscript:v36];
      v35[2](v35, v37);
    }

    v64 = v36;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v82 = 0u;
    v38 = [v23 objectsAtIndexes:v71];
    v39 = [v38 countByEnumeratingWithState:&v82 objects:v95 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v83;
      do
      {
        for (j = 0; j != v40; ++j)
        {
          if (*v83 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v35[2](v35, *(*(&v82 + 1) + 8 * j));
        }

        v40 = [v38 countByEnumeratingWithState:&v82 objects:v95 count:16];
      }

      while (v40);
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v69 = v34;
    v43 = [MEMORY[0x277CEBCF8] shuffle:v34];
    v44 = [v43 countByEnumeratingWithState:&v78 objects:v94 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v79;
LABEL_26:
      v47 = 0;
      while (1)
      {
        if (*v79 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = *(*(&v78 + 1) + 8 * v47);
        if ([v73 count] >= v21)
        {
          break;
        }

        v49 = [v22 objectForKeyedSubscript:v48];
        v35[2](v35, v49);

        if (v45 == ++v47)
        {
          v45 = [v43 countByEnumeratingWithState:&v78 objects:v94 count:16];
          if (v45)
          {
            goto LABEL_26;
          }

          break;
        }
      }
    }

    v50 = v69;
    if (typeCopy == 8 && v64 != -1)
    {
      v74[0] = MEMORY[0x277D85DD0];
      v74[1] = 3221225472;
      v74[2] = __136__ATXAppPredictorFeedback_constructFeatureDictionaryWithFeedbackItems_engagedItem_shownItemIndexes_consumerType_histogramBundleIdTable___block_invoke_2;
      v74[3] = &unk_27859BF60;
      v75 = v22;
      v76 = v69;
      v77 = v73;
      v51 = _Block_copy(v74);
      v52 = [v23 objectAtIndexedSubscript:v64];
      bundleId2 = [v52 bundleId];
      v54 = [_ATXActionUtils getBundleIdAndActionTypeFromActionKey:bundleId2];

      if (v54)
      {
        first = [v54 first];
        [v54 second];
        v55 = v67 = v52;
        v56 = [MEMORY[0x277CBEB58] setWithObject:first];
        v57 = [_ATXActionUtils actionKeyFilterForCandidateBundleIds:v56 candidateActionTypes:0 blacklist:0];
        v58 = [v70 allKeysFilteredBy:v57];

        v51[2](v51, v58);
        v59 = [MEMORY[0x277CBEB58] setWithObject:v55];
        v60 = [_ATXActionUtils actionKeyFilterForCandidateBundleIds:0 candidateActionTypes:v59 blacklist:0];
        v61 = [v70 allKeysFilteredBy:v60];

        v51[2](v51, v61);
        v50 = v69;

        v52 = v67;
      }
    }

    v15 = v73;

    itemsCopy = v68;
    indexesCopy = v71;
    itemCopy = v72;
    tableCopy = v70;
  }

  v62 = *MEMORY[0x277D85DE8];

  return v15;
}

void __136__ATXAppPredictorFeedback_constructFeatureDictionaryWithFeedbackItems_engagedItem_shownItemIndexes_consumerType_histogramBundleIdTable___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 bundleId];
  if ([*(a1 + 32) containsObject:v3] && objc_msgSend(*(a1 + 40), "count") < *(a1 + 48))
  {
    v4 = *(a1 + 40);
    v5 = [ATXAppPredictorFeedback _appDictionaryForFeedbackItem:v6];
    [v4 addObject:v5];

    [*(a1 + 32) removeObject:v3];
  }
}

void __136__ATXAppPredictorFeedback_constructFeatureDictionaryWithFeedbackItems_engagedItem_shownItemIndexes_consumerType_histogramBundleIdTable___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [*(a1 + 32) objectForKeyedSubscript:{v8, v14}];
        if ([*(a1 + 40) containsObject:v8])
        {
          v11 = *(a1 + 48);
          v12 = [ATXAppPredictorFeedback _appDictionaryForFeedbackItem:v10];
          [v11 addObject:v12];

          [*(a1 + 40) removeObject:v8];
        }

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (double)_bucketize:(double)result bucketSize:(double)size
{
  if (result >= 0.0)
  {
    return (result / size) * size;
  }

  return result;
}

+ (id)_getLastAppsWithEngagedApp:(id)app limit:(int)limit
{
  v45 = *MEMORY[0x277D85DE8];
  appCopy = app;
  v6 = objc_opt_new();
  v7 = [v6 dateByAddingTimeInterval:-7200.0];
  v8 = objc_opt_new();
  v9 = objc_alloc_init(MEMORY[0x277CEBBE0]);
  v10 = objc_autoreleasePoolPush();
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __60__ATXAppPredictorFeedback__getLastAppsWithEngagedApp_limit___block_invoke;
  v42[3] = &unk_278596DC8;
  v11 = v8;
  v43 = v11;
  [v9 enumerateAppLaunchSessionsBetweenStartDate:v7 endDate:v6 shouldReverse:0 bundleIDFilter:0 block:v42];

  objc_autoreleasePoolPop(v10);
  if (!appCopy || ([(__CFString *)appCopy isEqualToString:&stru_2839A6058]& 1) != 0)
  {
    v12 = appCopy;
    appCopy = @"NONE";
LABEL_4:

    goto LABEL_5;
  }

  if (![v11 count])
  {
    goto LABEL_5;
  }

  v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v11, "count") - 1}];
  bundleID = [v12 bundleID];
  v21 = [bundleID isEqualToString:appCopy];

  if (!v21)
  {
    goto LABEL_4;
  }

  appSessionEndTime = [v12 appSessionEndTime];

  if (!appSessionEndTime)
  {
    goto LABEL_6;
  }

  appSessionEndTime2 = [v12 appSessionEndTime];
  [v6 timeIntervalSinceDate:appSessionEndTime2];
  v25 = v24;

  if (v25 > 300.0)
  {
LABEL_5:
    v12 = [objc_alloc(MEMORY[0x277CEBBD8]) initWithBundleId:appCopy type:1 parentBundleID:0 extensionHostID:0 appSessionStartTime:v6 appSessionEndTime:v6 launchReason:0];
    [v11 addObject:v12];
LABEL_6:
  }

  v13 = objc_autoreleasePoolPush();
  v14 = [v11 count];
  v15 = [v11 count];
  v36 = v9;
  v37 = v7;
  if (v14 <= limit)
  {
    if (v15 >= limit)
    {
      v17 = v11;
    }

    else
    {
      v17 = objc_opt_new();
      if ([v11 count] != limit)
      {
        v18 = 0;
        do
        {
          v19 = [objc_alloc(MEMORY[0x277CEBBD8]) initWithBundleId:@"NONE" type:1 parentBundleID:0 extensionHostID:0 appSessionStartTime:v6 appSessionEndTime:v6 launchReason:0];
          [v17 addObject:v19];

          ++v18;
        }

        while (limit - [v11 count] > v18);
      }

      [v17 addObjectsFromArray:v11];
    }
  }

  else
  {
    v16 = [v11 subarrayWithRange:{v15 - limit, limit}];
    v17 = [v16 mutableCopy];
  }

  objc_autoreleasePoolPop(v13);
  v26 = objc_opt_new();
  v27 = objc_autoreleasePoolPush();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v28 = v17;
  v29 = [v28 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v39;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v39 != v31)
        {
          objc_enumerationMutation(v28);
        }

        bundleID2 = [*(*(&v38 + 1) + 8 * i) bundleID];
        [v26 addObject:bundleID2];
      }

      v30 = [v28 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v30);
  }

  objc_autoreleasePoolPop(v27);
  v34 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)_getLastAppIntentsWithEngagedAction:(id)action combinedIntentStream:(id)stream limit:(int)limit
{
  v66 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  streamCopy = stream;
  v9 = objc_opt_new();
  v57 = [v9 dateByAddingTimeInterval:-14400.0];
  v10 = [streamCopy getCombinedIntentEventsBetweenStartDate:? endDate:? ascending:?];
  v11 = [v10 mutableCopy];

  actionKey = [actionCopy actionKey];
  if (actionKey)
  {
    v13 = actionKey;
    actionKey2 = [actionCopy actionKey];
    v15 = [actionKey2 isEqualToString:&stru_2839A6058];

    if ((v15 & 1) == 0)
    {
      if ([v11 count])
      {
        v55 = v9;
        v16 = [v11 objectAtIndexedSubscript:0];
        action = [v16 action];
        actionKey3 = [action actionKey];
        actionKey4 = [actionCopy actionKey];
        v20 = [actionKey3 isEqualToString:actionKey4];

        if (v20)
        {
          endDate = [v16 endDate];
          v9 = v55;
          [v55 timeIntervalSinceDate:endDate];
          v23 = v22;

          if (v23 <= 30.0)
          {
            goto LABEL_9;
          }
        }

        else
        {

          v9 = v55;
        }
      }

      v24 = [objc_alloc(MEMORY[0x277CEB5D8]) initWithBundleId:@"NONE" intentType:@"NONE" dateInterval:0 action:actionCopy];
      [v11 insertObject:v24 atIndex:0];
    }
  }

LABEL_9:
  v58 = objc_opt_new();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v25 = v11;
  v26 = [v25 countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (v26)
  {
    v27 = v26;
    v54 = actionCopy;
    v56 = v9;
    v53 = streamCopy;
    v28 = 0;
    v29 = 0;
    v30 = *v62;
    limitCopy = limit;
    v32 = &stru_2839A6058;
    obj = v25;
    v60 = limitCopy;
    while (2)
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v62 != v30)
        {
          objc_enumerationMutation(obj);
        }

        if (v28 == limitCopy)
        {
          v43 = obj;

          streamCopy = v53;
          actionCopy = v54;
          v9 = v56;
          v44 = v57;
          v46 = v58;
          goto LABEL_30;
        }

        v34 = *(*(&v61 + 1) + 8 * i);
        action2 = [v34 action];
        actionKey5 = [action2 actionKey];

        if (actionKey5)
        {
          action3 = [v34 action];
          actionKey6 = [action3 actionKey];
          v39 = [actionKey6 isEqualToString:v32];

          if (v39)
          {
            ++v29;
            limitCopy = v60;
          }

          else
          {
            if (([(__CFString *)v32 isEqualToString:&stru_2839A6058]& 1) == 0)
            {
              v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%ld", v32, v29];
              [v58 addObject:v40];

              ++v28;
            }

            limitCopy = v60;
            action4 = [v34 action];
            actionKey7 = [action4 actionKey];

            v32 = actionKey7;
            v29 = 1;
          }
        }
      }

      v27 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
      if (v27)
      {
        continue;
      }

      break;
    }

    v43 = obj;

    if (v29)
    {
      v44 = v57;
      if (v28 == limitCopy)
      {
        streamCopy = v53;
        actionCopy = v54;
        v9 = v56;
        v46 = v58;
      }

      else
      {
        v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%ld", v32, v29];
        v46 = v58;
        [v58 addObject:v45];

        ++v28;
        streamCopy = v53;
        actionCopy = v54;
        v9 = v56;
      }

      limitCopy2 = v60;
    }

    else
    {
      limitCopy2 = limitCopy;
      streamCopy = v53;
      actionCopy = v54;
      v9 = v56;
      v44 = v57;
      v46 = v58;
    }
  }

  else
  {

    v28 = 0;
    limitCopy2 = limit;
    v32 = &stru_2839A6058;
    v44 = v57;
    v46 = v58;
    v43 = v25;
  }

  v48 = limitCopy2 - v28;
  if (limitCopy2 > v28)
  {
    do
    {
      [v46 addObject:@"NONE"];
      --v48;
    }

    while (v48);
  }

LABEL_30:
  reverseObjectEnumerator = [v46 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  v51 = *MEMORY[0x277D85DE8];

  return allObjects;
}

+ (id)_appDictionaryForFeedbackItem:(id)item
{
  itemCopy = item;
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:829];
  for (i = 0; i != 828; ++i)
  {
    v6 = *([itemCopy scoreInputs] + 4 * i);
    if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v6 = -31337.0;
    }

    v7 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
    v8 = [_ATXScoreTypes aggdStringForScoreInput:i];
    [v4 setObject:v7 forKeyedSubscript:v8];
  }

  v9 = +[_ATXAppInfoManager sharedInstance];
  bundleId = [itemCopy bundleId];
  v11 = [v9 genreIdForBundleId:bundleId];
  [v4 setObject:v11 forKeyedSubscript:@"GenreId"];

  bundleId2 = [itemCopy bundleId];
  v13 = [v9 subGenreIdsForBundleId:bundleId2];
  [v4 setObject:v13 forKeyedSubscript:@"SubGenreIds"];

  [itemCopy totalScore];
  v15 = v14;
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v15 = -31337.0;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
  [v4 setObject:v16 forKeyedSubscript:@"Score"];

  bundleId3 = [itemCopy bundleId];
  [v4 setObject:bundleId3 forKeyedSubscript:@"BundleId"];

  return v4;
}

- (void)receiveUIFeedbackResult:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "ATXAppPredictorFeedback receiveUIFeedbackResult got result - %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)receiveUIFeedbackResult:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = 138543362;
  v7 = v4;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Unexpected type of context: %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_tryLogInstalledAppClipSessionEngagementMetricWithConsumerSubType:(NSObject *)a3 engagedBundleId:bundleIdsShown:explicitlyRejectedBundleIds:abGroupIdentifier:tracker:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a2 consumerSubType];
  v8 = [a2 engagementType];
  if (v8 > 2)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v8];
  }

  else
  {
    v9 = off_27859BF80[v8];
  }

  v10 = [a2 numSuggestionsShown];
  v11 = [a2 abGroup];
  *buf = 138413314;
  v14 = v6;
  v15 = 2112;
  v16 = v7;
  v17 = 2112;
  v18 = v9;
  v19 = 1024;
  v20 = v10;
  v21 = 2112;
  v22 = v11;
  _os_log_debug_impl(&dword_2263AA000, a3, OS_LOG_TYPE_DEBUG, "LOGGED: %@ - ATXMPBInstalledAppClipSessionEngagementTracker with consumerSubType: %@ and engagementType: %@ numSuggestionsShown: %u abGroup: %@", buf, 0x30u);

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)_outcomeForEngagementType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Invalid ATXEngagementType value of %lu received in feedback", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end