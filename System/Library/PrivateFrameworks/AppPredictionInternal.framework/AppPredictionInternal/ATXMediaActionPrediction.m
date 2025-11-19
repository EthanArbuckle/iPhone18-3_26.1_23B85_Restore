@interface ATXMediaActionPrediction
+ (BOOL)upcomingMediaPreferenceForINPlayMediaIntent:(id)a3 withINUpcomingMediaManagerReturnValueForTests:(id)a4;
+ (id)findTopRankedINPlayMediaIntentFromArray:(id)a3;
+ (id)resolveBucketLevelPrediction:(id)a3 withUpcomingMedia:(id)a4;
+ (id)resolveContainerLevelPrediction:(id)a3 withUpcomingMedia:(id)a4;
+ (id)resolveItemLevelPrediction:(id)a3 withUpcomingMedia:(id)a4;
+ (id)resolvePlayMediaIntent:(id)a3 withUpcomingMedia:(id)a4;
+ (id)updatePlayMediaActionPredictions:(id)a3 withUpcomingMedia:(id)a4 forActionKey:(id)a5 appActionPredictionItem:(const ATXPredictionItem *)a6 appActionLogProbability:(double)a7 statistics:(id)a8;
+ (id)updatedPlayMediaAction:(id)a3;
+ (id)updatedPlayMediaAction:(id)a3 withUpcomingMedia:(id)a4;
@end

@implementation ATXMediaActionPrediction

+ (id)updatedPlayMediaAction:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277CEB3B8];
  v5 = [v3 bundleId];
  v6 = [v4 isSystemAppForBundleId:v5];

  v7 = MEMORY[0x277CEB8F0];
  v8 = [v3 bundleId];
  v9 = [v7 getUpcomingMediaForBundle:v8 isInternalApplication:v6];

  v10 = [objc_opt_class() updatedPlayMediaAction:v3 withUpcomingMedia:v9];

  return v10;
}

+ (id)updatedPlayMediaAction:(id)a3 withUpcomingMedia:(id)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x277CEB7F0]) initWithPredictedItem:v5 score:0.0];
    v8 = [ATXActionPredictionContainer alloc];
    v9 = [v5 slotSet];
    v10 = [v5 actionKey];
    v11 = [(ATXActionPredictionContainer *)v8 initWithScoredAction:v7 slotSet:v9 actionKey:v10];

    v20[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v13 = [v5 actionKey];
    v14 = [ATXMediaActionPrediction updatePlayMediaActionPredictions:v12 withUpcomingMedia:v6 forActionKey:v13 appActionPredictionItem:0 appActionLogProbability:0 statistics:0.0];

    if ([v14 count])
    {
      v15 = [v14 objectAtIndexedSubscript:0];
      v16 = [v15 scoredAction];
      v17 = [v16 predictedItem];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)updatePlayMediaActionPredictions:(id)a3 withUpcomingMedia:(id)a4 forActionKey:(id)a5 appActionPredictionItem:(const ATXPredictionItem *)a6 appActionLogProbability:(double)a7 statistics:(id)a8
{
  v95 = *MEMORY[0x277D85DE8];
  v73 = a3;
  v78 = a4;
  v13 = a5;
  v76 = a8;
  v74 = v13;
  v75 = objc_opt_new();
  v82 = [_ATXActionUtils getBundleIdFromActionKey:v13];
  if ([v73 count])
  {
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    obj = v73;
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
        v17 = [v16 scoredAction];
        v18 = [v17 predictedItem];
        v19 = [v18 bundleId];
        v20 = [v82 isEqualToString:v19];

        if (v20)
        {
          v21 = [v16 scoredAction];
          v22 = [v21 predictedItem];
          v23 = [v22 intent];
          v24 = [a1 resolvePlayMediaIntent:v23 withUpcomingMedia:v78];

          if (!v24)
          {
            goto LABEL_30;
          }

          v25 = [v24 first];
          v26 = [v24 second];
          v27 = [v26 BOOLValue];

          if (v25)
          {
            if (v27)
            {
              v28 = __atxlog_handle_default();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v89 = v82;
                _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_INFO, "Media prediction for bundle %@ did use upcoming media. Creating new prediction, and setting isFutureMedia flag.", buf, 0xCu);
              }

              [v25 _setLaunchId:v82];
              v29 = objc_alloc(MEMORY[0x277CEB2C8]);
              v30 = [MEMORY[0x277CCAD78] UUID];
              LOBYTE(v72) = 1;
              v31 = [v29 initWithIntent:v25 actionUUID:v30 bundleId:v82 heuristic:0 heuristicMetadata:0 criteria:0 isFutureMedia:v72 title:0 subtitle:0];

              v32 = [ATXMinimalSlotResolutionParameters alloc];
              v33 = [v16 scoredAction];
              v34 = [v33 predictedItem];
              v35 = [v16 slotSet];
              v36 = [(ATXMinimalSlotResolutionParameters *)v32 initWithAction:v34 slots:v35];

              v37 = [ATXMinimalSlotResolutionParameters alloc];
              v38 = [v16 slotSet];
              v39 = [(ATXMinimalSlotResolutionParameters *)v37 initWithAction:v31 slots:v38];

              v40 = [(ATXMinimalSlotResolutionParameters *)v36 isEqual:v39];
              if (v76)
              {
                v41 = v40;
              }

              else
              {
                v41 = 1;
              }

              if ((v41 & 1) == 0)
              {
                v42 = [v76[2] objectForKeyedSubscript:v36];
                [v76[2] setObject:v42 forKeyedSubscript:v39];

                [v76[2] removeObjectForKey:v36];
              }

              v43 = objc_alloc(MEMORY[0x277CEB7F0]);
              [v16 score];
              v44 = [v43 initWithPredictedItem:v31 score:?];
              v45 = [ATXActionPredictionContainer alloc];
              v46 = [v16 slotSet];
              v47 = [(ATXActionPredictionContainer *)v45 initWithScoredAction:v44 slotSet:v46 actionKey:v74];

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
          v48 = [v16 scoredAction];
          v49 = [v48 predictedItem];
          v50 = [v49 bundleId];
          *buf = 138412802;
          v89 = v82;
          v90 = 2112;
          v91 = v74;
          v92 = 2112;
          v93 = v50;
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

  v52 = [a1 resolvePlayMediaIntent:0 withUpcomingMedia:v78];
  v53 = v52;
  if (!v52)
  {
    goto LABEL_41;
  }

  obj = v52;
  v54 = [v52 first];
  v55 = [v53 second];
  v56 = [v55 BOOLValue];

  if (v54)
  {
    v57 = __atxlog_handle_default();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v89 = v82;
      _os_log_impl(&dword_2263AA000, v57, OS_LOG_TYPE_INFO, "There were originally no media predictions returned for bundle %@. Used upcoming media to generate a prediction.", buf, 0xCu);
    }

    [v54 _setLaunchId:v82];
    v58 = objc_alloc(MEMORY[0x277CEB2C8]);
    v59 = [MEMORY[0x277CCAD78] UUID];
    LOBYTE(v72) = v56;
    v60 = [v58 initWithIntent:v54 actionUUID:v59 bundleId:v82 heuristic:0 heuristicMetadata:0 criteria:0 isFutureMedia:v72 title:0 subtitle:0];

    v61 = objc_alloc(MEMORY[0x277CEB7F0]);
    LODWORD(v62) = 1.0;
    v63 = [v61 initWithPredictedItem:v60 score:v62];
    v64 = [ATXActionPredictionContainer alloc];
    v65 = [v60 slotSet];
    v66 = [(ATXActionPredictionContainer *)v64 initWithScoredAction:v63 slotSet:v65 actionKey:v74];

    [ATXSlotResolution setSlotResolutionPredictionItemForTopUpcomingMediaActionContainer:v66 appActionPredictionItem:a6 appActionLogProbability:a7];
    [v75 addObject:v66];
  }

LABEL_39:
  if ([v75 count])
  {
    v67 = +[_ATXAppIconState sharedInstance];
    v68 = [v67 allInstalledAppsKnownToSpringBoard];
    v69 = [v75 atx_filterPlayMediaIntentsWithUnavailableAppDestinationGivenSBAppList:v68];
  }

  else
  {
LABEL_41:
    v69 = v75;
  }

  v70 = *MEMORY[0x277D85DE8];

  return v69;
}

+ (BOOL)upcomingMediaPreferenceForINPlayMediaIntent:(id)a3 withINUpcomingMediaManagerReturnValueForTests:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [v5 launchId];

    if (v7)
    {
      v8 = [v5 mediaItems];
      if (v8 && ([v5 mediaItems], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v8, v10))
      {
        v11 = [v5 mediaItems];
        v12 = [v11 firstObject];
        v13 = [v12 type];
      }

      else
      {
        v15 = [v5 mediaContainer];

        if (!v15)
        {
          v23 = __atxlog_handle_default();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            [ATXMediaActionPrediction upcomingMediaPreferenceForINPlayMediaIntent:v5 withINUpcomingMediaManagerReturnValueForTests:v23];
          }

          v24 = [v5 launchId];
          v25 = [&unk_283A58970 containsObject:v24];

          if (v25)
          {
            v20 = __atxlog_handle_default();
            LOBYTE(v14) = 1;
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              v26 = [v5 launchId];
              *buf = 138412290;
              v31 = v26;
              _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_INFO, "Logged error when getting upcomingMediaPreference, but since app is %@, we will prefer upcoming media for predictions.", buf, 0xCu);
            }
          }

          else
          {
            v20 = __atxlog_handle_default();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              v27 = [v5 launchId];
              *buf = 138412290;
              v31 = v27;
              _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_INFO, "Logged error when getting upcomingMediaPreference, and since app is %@ (not Podcasts or TV), we will not prefer upcoming media for predictions.", buf, 0xCu);
            }

            LOBYTE(v14) = 0;
          }

          goto LABEL_14;
        }

        v11 = [v5 mediaContainer];
        v13 = [v11 type];
      }

      if (v6)
      {
        v14 = [v6 isEqualToNumber:&unk_283A57008];
      }

      else
      {
        v16 = [MEMORY[0x277CD42A0] sharedManager];
        v17 = [v5 launchId];
        v29 = 0;
        v18 = [v16 _predictionModeForBundleId:v17 type:v13 error:&v29];
        v19 = v29;

        v14 = v18 == 1;
      }

      v20 = __atxlog_handle_default();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v28 = [v5 launchId];
        *buf = 138412802;
        v31 = v28;
        v32 = 2048;
        v33 = v13;
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

+ (id)resolvePlayMediaIntent:(id)a3 withUpcomingMedia:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v7 preferenceForUpcomingMediaIsSet] & 1) == 0)
  {
    [v7 setPreferUpcomingMediaForPredictions:{+[ATXMediaActionPrediction upcomingMediaPreferenceForINPlayMediaIntent:](ATXMediaActionPrediction, "upcomingMediaPreferenceForINPlayMediaIntent:", v6)}];
  }

  v8 = [v7 sortedUpcomingMedia];
  v9 = [v8 count];

  if (!v9)
  {
    if (([v7 preferUpcomingMediaForPredictions] & 1) == 0)
    {
      v12 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:v6 second:&unk_283A57020];
LABEL_27:
      v18 = v12;
      goto LABEL_28;
    }

LABEL_20:
    v18 = 0;
    goto LABEL_28;
  }

  if (v6)
  {
    v10 = [v6 buckets];
    if (v10)
    {
      v11 = [v6 mediaContainer];
      if (v11)
      {
      }

      else
      {
        v19 = [v6 mediaItems];

        if (!v19)
        {
          v25 = __atxlog_handle_default();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            +[ATXMediaActionPrediction resolvePlayMediaIntent:withUpcomingMedia:];
          }

          v12 = [a1 resolveBucketLevelPrediction:v6 withUpcomingMedia:v7];
          goto LABEL_27;
        }
      }
    }

    v20 = [v6 mediaContainer];
    if (v20)
    {
      v21 = [v6 mediaItems];

      if (!v21)
      {
        v24 = __atxlog_handle_default();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          +[ATXMediaActionPrediction resolvePlayMediaIntent:withUpcomingMedia:];
        }

        v12 = [a1 resolveContainerLevelPrediction:v6 withUpcomingMedia:v7];
        goto LABEL_27;
      }
    }

    v22 = [v6 mediaItems];

    if (v22)
    {
      v23 = __atxlog_handle_default();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        +[ATXMediaActionPrediction resolvePlayMediaIntent:withUpcomingMedia:];
      }

      v12 = [a1 resolveItemLevelPrediction:v6 withUpcomingMedia:v7];
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
  v15 = [v7 sortedUpcomingMedia];
  v16 = [v15 firstObject];
  v17 = [v16 first];
  v18 = [v14 initWithFirst:v17 second:&unk_283A57008];

LABEL_28:

  return v18;
}

+ (id)resolveBucketLevelPrediction:(id)a3 withUpcomingMedia:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 buckets];
  v9 = [v8 firstObject];
  v10 = [v9 vocabularyIdentifier];

  if (v10)
  {
    v11 = [v7 bucketValidUpcomingMedia];
    v12 = [v11 objectForKeyedSubscript:v10];
  }

  else
  {
    v12 = 0;
  }

  if ([v12 count])
  {
    v13 = objc_alloc(MEMORY[0x277D42648]);
    v14 = [a1 findTopRankedINPlayMediaIntentFromArray:v12];
    v15 = [v13 initWithFirst:v14 second:&unk_283A57008];
LABEL_8:

    goto LABEL_9;
  }

  if ([v7 preferUpcomingMediaForPredictions])
  {
    v16 = objc_alloc(MEMORY[0x277D42648]);
    v14 = [v7 sortedUpcomingMedia];
    v17 = [v14 firstObject];
    v18 = [v17 first];
    v15 = [v16 initWithFirst:v18 second:&unk_283A57008];

    goto LABEL_8;
  }

  v15 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:v6 second:&unk_283A57020];
LABEL_9:

  return v15;
}

+ (id)resolveContainerLevelPrediction:(id)a3 withUpcomingMedia:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 mediaContainer];
  v9 = [v8 identifier];

  if (v9)
  {
    v10 = [v7 containerValidUpcomingMedia];
    v11 = [v10 objectForKeyedSubscript:v9];

    v12 = [v7 containerExpiredUpcomingMedia];
    v13 = [v12 objectForKeyedSubscript:v9];
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  if ([v11 count])
  {
    v14 = objc_alloc(MEMORY[0x277D42648]);
    v15 = [a1 findTopRankedINPlayMediaIntentFromArray:v11];
    v16 = [v14 initWithFirst:v15 second:&unk_283A57008];
LABEL_6:

    goto LABEL_13;
  }

  if ([v7 preferUpcomingMediaForPredictions])
  {
    if (![v7 isInternalApplication])
    {
      v19 = objc_alloc(MEMORY[0x277D42648]);
      v15 = [v7 sortedUpcomingMedia];
      v20 = [v15 firstObject];
      v21 = [v20 first];
      v16 = [v19 initWithFirst:v21 second:&unk_283A57008];

      goto LABEL_6;
    }

    if ([v13 count])
    {
      v16 = 0;
      goto LABEL_13;
    }

    v17 = [a1 resolveBucketLevelPrediction:v6 withUpcomingMedia:v7];
  }

  else
  {
    v17 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:v6 second:&unk_283A57020];
  }

  v16 = v17;
LABEL_13:

  return v16;
}

+ (id)resolveItemLevelPrediction:(id)a3 withUpcomingMedia:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 mediaContainer];

  if (v8)
  {
    v9 = [a1 resolveContainerLevelPrediction:v6 withUpcomingMedia:v7];
    goto LABEL_15;
  }

  v10 = [v6 mediaItems];
  v11 = [v10 firstObject];
  v12 = [v11 identifier];

  if (v12)
  {
    v13 = [v7 itemValidUpcomingMedia];
    v14 = [v13 objectForKeyedSubscript:v12];
  }

  else
  {
    v14 = 0;
  }

  if (![v14 count])
  {
    if ([v7 preferUpcomingMediaForPredictions])
    {
      if (![v7 isInternalApplication])
      {
        v19 = objc_alloc(MEMORY[0x277D42648]);
        v16 = [v7 sortedUpcomingMedia];
        v20 = [v16 firstObject];
        v21 = [v20 first];
        v9 = [v19 initWithFirst:v21 second:&unk_283A57008];

        goto LABEL_8;
      }

      v17 = [a1 resolveBucketLevelPrediction:v6 withUpcomingMedia:v7];
    }

    else
    {
      v17 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:v6 second:&unk_283A57020];
    }

    v9 = v17;
    goto LABEL_14;
  }

  v15 = objc_alloc(MEMORY[0x277D42648]);
  v16 = [a1 findTopRankedINPlayMediaIntentFromArray:v14];
  v9 = [v15 initWithFirst:v16 second:&unk_283A57008];
LABEL_8:

LABEL_14:
LABEL_15:

  return v9;
}

+ (id)findTopRankedINPlayMediaIntentFromArray:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = a3;
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = *v17;
    v7 = 0x8000000000000000;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 second];
        v11 = [v10 longValue] < v7;

        if (!v11)
        {
          v12 = [v9 second];
          v7 = [v12 longValue];

          v13 = [v9 first];

          v4 = v13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
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