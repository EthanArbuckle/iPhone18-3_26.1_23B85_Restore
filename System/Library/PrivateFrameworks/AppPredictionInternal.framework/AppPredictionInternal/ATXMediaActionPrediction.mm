@interface ATXMediaActionPrediction
+ (BOOL)upcomingMediaPreferenceForINPlayMediaIntent:(id)intent withINUpcomingMediaManagerReturnValueForTests:(id)tests;
+ (id)findTopRankedINPlayMediaIntentFromArray:(id)array;
+ (id)resolveBucketLevelPrediction:(id)prediction withUpcomingMedia:(id)media;
+ (id)resolveContainerLevelPrediction:(id)prediction withUpcomingMedia:(id)media;
+ (id)resolveItemLevelPrediction:(id)prediction withUpcomingMedia:(id)media;
+ (id)resolvePlayMediaIntent:(id)intent withUpcomingMedia:(id)media;
+ (id)updatePlayMediaActionPredictions:(id)predictions withUpcomingMedia:(id)media forActionKey:(id)key appActionPredictionItem:(const ATXPredictionItem *)item appActionLogProbability:(double)probability statistics:(id)statistics;
+ (id)updatedPlayMediaAction:(id)action;
+ (id)updatedPlayMediaAction:(id)action withUpcomingMedia:(id)media;
@end

@implementation ATXMediaActionPrediction

+ (id)updatedPlayMediaAction:(id)action
{
  actionCopy = action;
  v4 = MEMORY[0x277CEB3B8];
  bundleId = [actionCopy bundleId];
  v6 = [v4 isSystemAppForBundleId:bundleId];

  v7 = MEMORY[0x277CEB8F0];
  bundleId2 = [actionCopy bundleId];
  v9 = [v7 getUpcomingMediaForBundle:bundleId2 isInternalApplication:v6];

  v10 = [objc_opt_class() updatedPlayMediaAction:actionCopy withUpcomingMedia:v9];

  return v10;
}

+ (id)updatedPlayMediaAction:(id)action withUpcomingMedia:(id)media
{
  v20[1] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  mediaCopy = media;
  if (actionCopy)
  {
    v7 = [objc_alloc(MEMORY[0x277CEB7F0]) initWithPredictedItem:actionCopy score:0.0];
    v8 = [ATXActionPredictionContainer alloc];
    slotSet = [actionCopy slotSet];
    actionKey = [actionCopy actionKey];
    v11 = [(ATXActionPredictionContainer *)v8 initWithScoredAction:v7 slotSet:slotSet actionKey:actionKey];

    v20[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    actionKey2 = [actionCopy actionKey];
    v14 = [ATXMediaActionPrediction updatePlayMediaActionPredictions:v12 withUpcomingMedia:mediaCopy forActionKey:actionKey2 appActionPredictionItem:0 appActionLogProbability:0 statistics:0.0];

    if ([v14 count])
    {
      v15 = [v14 objectAtIndexedSubscript:0];
      scoredAction = [v15 scoredAction];
      predictedItem = [scoredAction predictedItem];
    }

    else
    {
      predictedItem = 0;
    }
  }

  else
  {
    predictedItem = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return predictedItem;
}

+ (id)updatePlayMediaActionPredictions:(id)predictions withUpcomingMedia:(id)media forActionKey:(id)key appActionPredictionItem:(const ATXPredictionItem *)item appActionLogProbability:(double)probability statistics:(id)statistics
{
  v95 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  mediaCopy = media;
  keyCopy = key;
  statisticsCopy = statistics;
  v74 = keyCopy;
  v75 = objc_opt_new();
  v82 = [_ATXActionUtils getBundleIdFromActionKey:keyCopy];
  if ([predictionsCopy count])
  {
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    obj = predictionsCopy;
    v14 = [obj countByEnumeratingWithState:&v84 objects:v94 count:16];
    if (!v14)
    {
      goto LABEL_39;
    }

    v80 = *v85;
    while (1)
    {
      v81 = v14;
      for (i = 0; i != v81; ++i)
      {
        if (*v85 != v80)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v84 + 1) + 8 * i);
        scoredAction = [v16 scoredAction];
        predictedItem = [scoredAction predictedItem];
        bundleId = [predictedItem bundleId];
        v20 = [v82 isEqualToString:bundleId];

        if (v20)
        {
          scoredAction2 = [v16 scoredAction];
          predictedItem2 = [scoredAction2 predictedItem];
          intent = [predictedItem2 intent];
          v24 = [self resolvePlayMediaIntent:intent withUpcomingMedia:mediaCopy];

          if (!v24)
          {
            goto LABEL_30;
          }

          first = [v24 first];
          second = [v24 second];
          bOOLValue = [second BOOLValue];

          if (first)
          {
            if (bOOLValue)
            {
              v28 = __atxlog_handle_default();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v89 = v82;
                _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_INFO, "Media prediction for bundle %@ did use upcoming media. Creating new prediction, and setting isFutureMedia flag.", buf, 0xCu);
              }

              [first _setLaunchId:v82];
              v29 = objc_alloc(MEMORY[0x277CEB2C8]);
              uUID = [MEMORY[0x277CCAD78] UUID];
              LOBYTE(v72) = 1;
              v31 = [v29 initWithIntent:first actionUUID:uUID bundleId:v82 heuristic:0 heuristicMetadata:0 criteria:0 isFutureMedia:v72 title:0 subtitle:0];

              v32 = [ATXMinimalSlotResolutionParameters alloc];
              scoredAction3 = [v16 scoredAction];
              predictedItem3 = [scoredAction3 predictedItem];
              slotSet = [v16 slotSet];
              v36 = [(ATXMinimalSlotResolutionParameters *)v32 initWithAction:predictedItem3 slots:slotSet];

              v37 = [ATXMinimalSlotResolutionParameters alloc];
              slotSet2 = [v16 slotSet];
              v39 = [(ATXMinimalSlotResolutionParameters *)v37 initWithAction:v31 slots:slotSet2];

              v40 = [(ATXMinimalSlotResolutionParameters *)v36 isEqual:v39];
              if (statisticsCopy)
              {
                v41 = v40;
              }

              else
              {
                v41 = 1;
              }

              if ((v41 & 1) == 0)
              {
                v42 = [statisticsCopy[2] objectForKeyedSubscript:v36];
                [statisticsCopy[2] setObject:v42 forKeyedSubscript:v39];

                [statisticsCopy[2] removeObjectForKey:v36];
              }

              v43 = objc_alloc(MEMORY[0x277CEB7F0]);
              [v16 score];
              v44 = [v43 initWithPredictedItem:v31 score:?];
              v45 = [ATXActionPredictionContainer alloc];
              slotSet3 = [v16 slotSet];
              v47 = [(ATXActionPredictionContainer *)v45 initWithScoredAction:v44 slotSet:slotSet3 actionKey:v74];

              if (v16)
              {
                [v16 predictionItem];
                if (v47)
                {
                  goto LABEL_20;
                }

LABEL_27:
              }

              else
              {
                bzero(v83, 0xD08uLL);
                if (!v47)
                {
                  goto LABEL_27;
                }

LABEL_20:
                [(ATXActionPredictionContainer *)v47 setPredictionItem:v83];
              }

              [v75 addObject:v47];
            }

            else
            {
              v51 = __atxlog_handle_default();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v89 = v82;
                _os_log_impl(&dword_2263AA000, v51, OS_LOG_TYPE_INFO, "Media prediction for bundle %@ did not need to use upcoming media. Returning original prediction.", buf, 0xCu);
              }

              [v75 addObject:v16];
            }
          }

          goto LABEL_30;
        }

        v24 = __atxlog_handle_default();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          scoredAction4 = [v16 scoredAction];
          predictedItem4 = [scoredAction4 predictedItem];
          bundleId2 = [predictedItem4 bundleId];
          *buf = 138412802;
          v89 = v82;
          v90 = 2112;
          v91 = v74;
          v92 = 2112;
          v93 = bundleId2;
          _os_log_fault_impl(&dword_2263AA000, v24, OS_LOG_TYPE_FAULT, "ERROR: bundleId extracted from actionKey (bundleId: %@, actionKey: %@) does not equal to bundleId in ATXActionPredictionContainer (bundleId in prediction: %@).", buf, 0x20u);
        }

LABEL_30:
      }

      v14 = [obj countByEnumeratingWithState:&v84 objects:v94 count:16];
      if (!v14)
      {
        goto LABEL_39;
      }
    }
  }

  v52 = [self resolvePlayMediaIntent:0 withUpcomingMedia:mediaCopy];
  v53 = v52;
  if (!v52)
  {
    goto LABEL_41;
  }

  obj = v52;
  first2 = [v52 first];
  second2 = [v53 second];
  bOOLValue2 = [second2 BOOLValue];

  if (first2)
  {
    v57 = __atxlog_handle_default();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v89 = v82;
      _os_log_impl(&dword_2263AA000, v57, OS_LOG_TYPE_INFO, "There were originally no media predictions returned for bundle %@. Used upcoming media to generate a prediction.", buf, 0xCu);
    }

    [first2 _setLaunchId:v82];
    v58 = objc_alloc(MEMORY[0x277CEB2C8]);
    uUID2 = [MEMORY[0x277CCAD78] UUID];
    LOBYTE(v72) = bOOLValue2;
    v60 = [v58 initWithIntent:first2 actionUUID:uUID2 bundleId:v82 heuristic:0 heuristicMetadata:0 criteria:0 isFutureMedia:v72 title:0 subtitle:0];

    v61 = objc_alloc(MEMORY[0x277CEB7F0]);
    LODWORD(v62) = 1.0;
    v63 = [v61 initWithPredictedItem:v60 score:v62];
    v64 = [ATXActionPredictionContainer alloc];
    slotSet4 = [v60 slotSet];
    v66 = [(ATXActionPredictionContainer *)v64 initWithScoredAction:v63 slotSet:slotSet4 actionKey:v74];

    [ATXSlotResolution setSlotResolutionPredictionItemForTopUpcomingMediaActionContainer:v66 appActionPredictionItem:item appActionLogProbability:probability];
    [v75 addObject:v66];
  }

LABEL_39:
  if ([v75 count])
  {
    v67 = +[_ATXAppIconState sharedInstance];
    allInstalledAppsKnownToSpringBoard = [v67 allInstalledAppsKnownToSpringBoard];
    v69 = [v75 atx_filterPlayMediaIntentsWithUnavailableAppDestinationGivenSBAppList:allInstalledAppsKnownToSpringBoard];
  }

  else
  {
LABEL_41:
    v69 = v75;
  }

  v70 = *MEMORY[0x277D85DE8];

  return v69;
}

+ (BOOL)upcomingMediaPreferenceForINPlayMediaIntent:(id)intent withINUpcomingMediaManagerReturnValueForTests:(id)tests
{
  v36 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  testsCopy = tests;
  if (intentCopy)
  {
    launchId = [intentCopy launchId];

    if (launchId)
    {
      mediaItems = [intentCopy mediaItems];
      if (mediaItems && ([intentCopy mediaItems], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, mediaItems, v10))
      {
        mediaItems2 = [intentCopy mediaItems];
        firstObject = [mediaItems2 firstObject];
        type = [firstObject type];
      }

      else
      {
        mediaContainer = [intentCopy mediaContainer];

        if (!mediaContainer)
        {
          v23 = __atxlog_handle_default();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            [ATXMediaActionPrediction upcomingMediaPreferenceForINPlayMediaIntent:intentCopy withINUpcomingMediaManagerReturnValueForTests:v23];
          }

          launchId2 = [intentCopy launchId];
          v25 = [&unk_283A58970 containsObject:launchId2];

          if (v25)
          {
            v20 = __atxlog_handle_default();
            LOBYTE(v14) = 1;
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              launchId3 = [intentCopy launchId];
              *buf = 138412290;
              v31 = launchId3;
              _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_INFO, "Logged error when getting upcomingMediaPreference, but since app is %@, we will prefer upcoming media for predictions.", buf, 0xCu);
            }
          }

          else
          {
            v20 = __atxlog_handle_default();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              launchId4 = [intentCopy launchId];
              *buf = 138412290;
              v31 = launchId4;
              _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_INFO, "Logged error when getting upcomingMediaPreference, and since app is %@ (not Podcasts or TV), we will not prefer upcoming media for predictions.", buf, 0xCu);
            }

            LOBYTE(v14) = 0;
          }

          goto LABEL_14;
        }

        mediaItems2 = [intentCopy mediaContainer];
        type = [mediaItems2 type];
      }

      if (testsCopy)
      {
        v14 = [testsCopy isEqualToNumber:&unk_283A57008];
      }

      else
      {
        mEMORY[0x277CD42A0] = [MEMORY[0x277CD42A0] sharedManager];
        launchId5 = [intentCopy launchId];
        v29 = 0;
        v18 = [mEMORY[0x277CD42A0] _predictionModeForBundleId:launchId5 type:type error:&v29];
        v19 = v29;

        v14 = v18 == 1;
      }

      v20 = __atxlog_handle_default();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        launchId6 = [intentCopy launchId];
        *buf = 138412802;
        v31 = launchId6;
        v32 = 2048;
        v33 = type;
        v34 = 1024;
        v35 = v14;
        _os_log_debug_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEBUG, "Checked upcoming media preference for %@ for media type %ld. Should prefer upcoming media for predictions? %d", buf, 0x1Cu);
      }

LABEL_14:

      goto LABEL_15;
    }
  }

  LOBYTE(v14) = 0;
LABEL_15:

  v21 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (id)resolvePlayMediaIntent:(id)intent withUpcomingMedia:(id)media
{
  intentCopy = intent;
  mediaCopy = media;
  if (([mediaCopy preferenceForUpcomingMediaIsSet] & 1) == 0)
  {
    [mediaCopy setPreferUpcomingMediaForPredictions:{+[ATXMediaActionPrediction upcomingMediaPreferenceForINPlayMediaIntent:](ATXMediaActionPrediction, "upcomingMediaPreferenceForINPlayMediaIntent:", intentCopy)}];
  }

  sortedUpcomingMedia = [mediaCopy sortedUpcomingMedia];
  v9 = [sortedUpcomingMedia count];

  if (!v9)
  {
    if (([mediaCopy preferUpcomingMediaForPredictions] & 1) == 0)
    {
      v12 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:intentCopy second:&unk_283A57020];
LABEL_27:
      v18 = v12;
      goto LABEL_28;
    }

LABEL_20:
    v18 = 0;
    goto LABEL_28;
  }

  if (intentCopy)
  {
    buckets = [intentCopy buckets];
    if (buckets)
    {
      mediaContainer = [intentCopy mediaContainer];
      if (mediaContainer)
      {
      }

      else
      {
        mediaItems = [intentCopy mediaItems];

        if (!mediaItems)
        {
          v25 = __atxlog_handle_default();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            +[ATXMediaActionPrediction resolvePlayMediaIntent:withUpcomingMedia:];
          }

          v12 = [self resolveBucketLevelPrediction:intentCopy withUpcomingMedia:mediaCopy];
          goto LABEL_27;
        }
      }
    }

    mediaContainer2 = [intentCopy mediaContainer];
    if (mediaContainer2)
    {
      mediaItems2 = [intentCopy mediaItems];

      if (!mediaItems2)
      {
        v24 = __atxlog_handle_default();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          +[ATXMediaActionPrediction resolvePlayMediaIntent:withUpcomingMedia:];
        }

        v12 = [self resolveContainerLevelPrediction:intentCopy withUpcomingMedia:mediaCopy];
        goto LABEL_27;
      }
    }

    mediaItems3 = [intentCopy mediaItems];

    if (mediaItems3)
    {
      v23 = __atxlog_handle_default();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        +[ATXMediaActionPrediction resolvePlayMediaIntent:withUpcomingMedia:];
      }

      v12 = [self resolveItemLevelPrediction:intentCopy withUpcomingMedia:mediaCopy];
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  v13 = __atxlog_handle_default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    +[ATXMediaActionPrediction resolvePlayMediaIntent:withUpcomingMedia:];
  }

  v14 = objc_alloc(MEMORY[0x277D42648]);
  sortedUpcomingMedia2 = [mediaCopy sortedUpcomingMedia];
  firstObject = [sortedUpcomingMedia2 firstObject];
  first = [firstObject first];
  v18 = [v14 initWithFirst:first second:&unk_283A57008];

LABEL_28:

  return v18;
}

+ (id)resolveBucketLevelPrediction:(id)prediction withUpcomingMedia:(id)media
{
  predictionCopy = prediction;
  mediaCopy = media;
  buckets = [predictionCopy buckets];
  firstObject = [buckets firstObject];
  vocabularyIdentifier = [firstObject vocabularyIdentifier];

  if (vocabularyIdentifier)
  {
    bucketValidUpcomingMedia = [mediaCopy bucketValidUpcomingMedia];
    v12 = [bucketValidUpcomingMedia objectForKeyedSubscript:vocabularyIdentifier];
  }

  else
  {
    v12 = 0;
  }

  if ([v12 count])
  {
    v13 = objc_alloc(MEMORY[0x277D42648]);
    sortedUpcomingMedia = [self findTopRankedINPlayMediaIntentFromArray:v12];
    v15 = [v13 initWithFirst:sortedUpcomingMedia second:&unk_283A57008];
LABEL_8:

    goto LABEL_9;
  }

  if ([mediaCopy preferUpcomingMediaForPredictions])
  {
    v16 = objc_alloc(MEMORY[0x277D42648]);
    sortedUpcomingMedia = [mediaCopy sortedUpcomingMedia];
    firstObject2 = [sortedUpcomingMedia firstObject];
    first = [firstObject2 first];
    v15 = [v16 initWithFirst:first second:&unk_283A57008];

    goto LABEL_8;
  }

  v15 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:predictionCopy second:&unk_283A57020];
LABEL_9:

  return v15;
}

+ (id)resolveContainerLevelPrediction:(id)prediction withUpcomingMedia:(id)media
{
  predictionCopy = prediction;
  mediaCopy = media;
  mediaContainer = [predictionCopy mediaContainer];
  identifier = [mediaContainer identifier];

  if (identifier)
  {
    containerValidUpcomingMedia = [mediaCopy containerValidUpcomingMedia];
    v11 = [containerValidUpcomingMedia objectForKeyedSubscript:identifier];

    containerExpiredUpcomingMedia = [mediaCopy containerExpiredUpcomingMedia];
    v13 = [containerExpiredUpcomingMedia objectForKeyedSubscript:identifier];
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  if ([v11 count])
  {
    v14 = objc_alloc(MEMORY[0x277D42648]);
    sortedUpcomingMedia = [self findTopRankedINPlayMediaIntentFromArray:v11];
    v16 = [v14 initWithFirst:sortedUpcomingMedia second:&unk_283A57008];
LABEL_6:

    goto LABEL_13;
  }

  if ([mediaCopy preferUpcomingMediaForPredictions])
  {
    if (![mediaCopy isInternalApplication])
    {
      v19 = objc_alloc(MEMORY[0x277D42648]);
      sortedUpcomingMedia = [mediaCopy sortedUpcomingMedia];
      firstObject = [sortedUpcomingMedia firstObject];
      first = [firstObject first];
      v16 = [v19 initWithFirst:first second:&unk_283A57008];

      goto LABEL_6;
    }

    if ([v13 count])
    {
      v16 = 0;
      goto LABEL_13;
    }

    v17 = [self resolveBucketLevelPrediction:predictionCopy withUpcomingMedia:mediaCopy];
  }

  else
  {
    v17 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:predictionCopy second:&unk_283A57020];
  }

  v16 = v17;
LABEL_13:

  return v16;
}

+ (id)resolveItemLevelPrediction:(id)prediction withUpcomingMedia:(id)media
{
  predictionCopy = prediction;
  mediaCopy = media;
  mediaContainer = [predictionCopy mediaContainer];

  if (mediaContainer)
  {
    v9 = [self resolveContainerLevelPrediction:predictionCopy withUpcomingMedia:mediaCopy];
    goto LABEL_15;
  }

  mediaItems = [predictionCopy mediaItems];
  firstObject = [mediaItems firstObject];
  identifier = [firstObject identifier];

  if (identifier)
  {
    itemValidUpcomingMedia = [mediaCopy itemValidUpcomingMedia];
    v14 = [itemValidUpcomingMedia objectForKeyedSubscript:identifier];
  }

  else
  {
    v14 = 0;
  }

  if (![v14 count])
  {
    if ([mediaCopy preferUpcomingMediaForPredictions])
    {
      if (![mediaCopy isInternalApplication])
      {
        v19 = objc_alloc(MEMORY[0x277D42648]);
        sortedUpcomingMedia = [mediaCopy sortedUpcomingMedia];
        firstObject2 = [sortedUpcomingMedia firstObject];
        first = [firstObject2 first];
        v9 = [v19 initWithFirst:first second:&unk_283A57008];

        goto LABEL_8;
      }

      v17 = [self resolveBucketLevelPrediction:predictionCopy withUpcomingMedia:mediaCopy];
    }

    else
    {
      v17 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:predictionCopy second:&unk_283A57020];
    }

    v9 = v17;
    goto LABEL_14;
  }

  v15 = objc_alloc(MEMORY[0x277D42648]);
  sortedUpcomingMedia = [self findTopRankedINPlayMediaIntentFromArray:v14];
  v9 = [v15 initWithFirst:sortedUpcomingMedia second:&unk_283A57008];
LABEL_8:

LABEL_14:
LABEL_15:

  return v9;
}

+ (id)findTopRankedINPlayMediaIntentFromArray:(id)array
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  arrayCopy = array;
  v4 = 0;
  v5 = [arrayCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = *v17;
    longValue = 0x8000000000000000;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        second = [v9 second];
        v11 = [second longValue] < longValue;

        if (!v11)
        {
          second2 = [v9 second];
          longValue = [second2 longValue];

          first = [v9 first];

          v4 = first;
        }
      }

      v5 = [arrayCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (void)upcomingMediaPreferenceForINPlayMediaIntent:(uint64_t)a1 withINUpcomingMediaManagerReturnValueForTests:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Attempted to get upcoming media preference, but prediction did not contain mediaContainer or any mediaItems. Prediction was %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end