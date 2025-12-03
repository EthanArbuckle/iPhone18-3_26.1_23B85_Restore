@interface ATXHeroClipManager
+ (BOOL)clipsSupported;
+ (id)addPredictionLocationToHeroAppPredictions:(id)predictions location:(id)location;
+ (id)sortPredictionsOnFeedback:(id)feedback;
+ (void)openAppClipWithHeroAppPrediction:(id)prediction completion:(id)completion;
- (ATXHeroClipManager)init;
- (ATXHeroClipManager)initWithFeedback:(id)feedback;
- (ATXHeroClipManager)initWithFeedback:(id)feedback tracker:(id)tracker;
- (id)_populateMetadataInHeroAppPrediction:(id)prediction;
- (void)donateAppClipsWithHeroAppPredictions:(id)predictions;
@end

@implementation ATXHeroClipManager

+ (BOOL)clipsSupported
{
  v2 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277CFA6B8] isSupported])
  {
    v3 = CFPreferencesCopyAppValue(@"SuggestionsSuggestAppClips", @"com.apple.suggestions");
    v4 = v3;
    if (v3)
    {
      bOOLValue = [v3 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  objc_autoreleasePoolPop(v2);
  return bOOLValue;
}

- (ATXHeroClipManager)init
{
  v3 = objc_opt_new();
  v4 = [(ATXHeroClipManager *)self initWithFeedback:v3];

  return v4;
}

- (ATXHeroClipManager)initWithFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v5 = objc_opt_new();
  v6 = [(ATXHeroClipManager *)self initWithFeedback:feedbackCopy tracker:v5];

  return v6;
}

- (ATXHeroClipManager)initWithFeedback:(id)feedback tracker:(id)tracker
{
  feedbackCopy = feedback;
  trackerCopy = tracker;
  v12.receiver = self;
  v12.super_class = ATXHeroClipManager;
  v9 = [(ATXHeroClipManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_feedback, feedback);
    objc_storeStrong(&v10->_tracker, tracker);
  }

  return v10;
}

- (void)donateAppClipsWithHeroAppPredictions:(id)predictions
{
  v59 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  if (([objc_opt_class() clipsSupported] & 1) == 0)
  {
    v5 = __atxlog_handle_hero();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Clearing App Clips Suggestions, since ClipServices are not supported on this device.", buf, 2u);
    }

    predictionsCopy = MEMORY[0x277CBEBF8];
  }

  if (![(ATXAppClipsFeedback *)self->_feedback shouldShowAppClips])
  {

    predictionsCopy = MEMORY[0x277CBEBF8];
  }

  v6 = 0x277CBE000uLL;
  v7 = objc_opt_new();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v8 = predictionsCopy;
  v9 = [v8 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v51;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v51 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v50 + 1) + 8 * i);
        if ([(ATXAppClipsFeedback *)self->_feedback shouldShowAppClipWithHeroAppPrediction:v13])
        {
          [v7 addObject:v13];
        }

        else
        {
          [(ATXHeroClipManager *)self logSuppressionMetricWithHeroAppPrediction:v13 suppresionType:1];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    v14 = [MEMORY[0x277CBEAA8] now];
    mEMORY[0x277D41BF8] = [MEMORY[0x277D41BF8] sharedInstance];
    getCurrentPreciseLocation = [mEMORY[0x277D41BF8] getCurrentPreciseLocation];

    v17 = __atxlog_handle_hero();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      [v14 timeIntervalSinceNow];
      *buf = 134217984;
      v57 = -v18;
      _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "Took %f seconds to fetch precise location", buf, 0xCu);
    }

    if (getCurrentPreciseLocation)
    {
      v19 = [v7 copy];
      v20 = [ATXHeroDataServerHelper inRadiusPredictionsFrom:v7 currentLocation:getCurrentPreciseLocation];
      v21 = [v20 mutableCopy];

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v7 = v19;
      v22 = [v7 countByEnumeratingWithState:&v46 objects:v55 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v47;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v47 != v24)
            {
              objc_enumerationMutation(v7);
            }

            v26 = *(*(&v46 + 1) + 8 * j);
            if (([v21 containsObject:v26] & 1) == 0)
            {
              [(ATXHeroClipManager *)self logSuppressionMetricWithHeroAppPrediction:v26 suppresionType:0];
            }
          }

          v23 = [v7 countByEnumeratingWithState:&v46 objects:v55 count:16];
        }

        while (v23);
      }

      v6 = 0x277CBE000;
    }

    else
    {
      v27 = __atxlog_handle_hero();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [ATXHeroClipManager donateAppClipsWithHeroAppPredictions:];
      }

      v21 = objc_opt_new();
    }

    v28 = [objc_opt_class() addPredictionLocationToHeroAppPredictions:v21 location:getCurrentPreciseLocation];
    v7 = [v28 mutableCopy];
  }

  v29 = *(v6 + 2840);
  v30 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v31 = v7;
  v32 = [v31 countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v43;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v43 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v42 + 1) + 8 * k);
        v37 = [(ATXHeroClipManager *)self _populateMetadataInHeroAppPrediction:v36, v42];
        if (v37)
        {
          [v30 addObject:v37];
        }

        else
        {
          [(ATXHeroClipManager *)self logSuppressionMetricWithHeroAppPrediction:v36 suppresionType:2];
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v42 objects:v54 count:16];
    }

    while (v33);
  }

  v38 = [objc_opt_class() sortPredictionsOnFeedback:v30];
  v39 = __atxlog_handle_hero();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = [v38 description];
    *buf = 138412290;
    v57 = *&v40;
    _os_log_impl(&dword_2263AA000, v39, OS_LOG_TYPE_DEFAULT, "Sending app clips predictions to blending layer. Predictions: %@", buf, 0xCu);
  }

  [ATXAppClipsBlendingUpdater updateBlendingLayerWithHeroAppPredictions:v38];
  v41 = *MEMORY[0x277D85DE8];
}

- (id)_populateMetadataInHeroAppPrediction:(id)prediction
{
  predictionCopy = prediction;
  [(ATXAppClipsFeedback *)self->_feedback feedbackScoreForAppClipWithHeroAppPrediction:predictionCopy];
  [predictionCopy setScore:?];
  urlHash = [predictionCopy urlHash];

  if (urlHash)
  {
    v6 = objc_alloc(MEMORY[0x277CFA6A8]);
    urlHash2 = [predictionCopy urlHash];
    v8 = [v6 initWithURLHash:urlHash2];

    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__79;
    v37 = __Block_byref_object_dispose__79;
    v38 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__79;
    v31 = __Block_byref_object_dispose__79;
    v32 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v9 = dispatch_semaphore_create(0);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __59__ATXHeroClipManager__populateMetadataInHeroAppPrediction___block_invoke;
    v17[3] = &unk_27859F728;
    v20 = &v23;
    v10 = v9;
    v18 = v10;
    v21 = &v33;
    v11 = v8;
    v19 = v11;
    v22 = &v27;
    [v11 requestMetadataWithCompletion:v17];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __59__ATXHeroClipManager__populateMetadataInHeroAppPrediction___block_invoke_2;
    v16[3] = &unk_2785967D8;
    v16[4] = &v23;
    [MEMORY[0x277D425A0] waitForSemaphore:v10 timeoutSeconds:&__block_literal_global_178 onAcquire:v16 onTimeout:30.0];
    if (v24[3])
    {
      v12 = 0;
    }

    else
    {
      clipBundleID = [v34[5] clipBundleID];
      [predictionCopy setBundleId:clipBundleID];

      [predictionCopy setClipMetadata:v34[5]];
      path = [v28[5] path];
      [v34[5] setFullAppCachedIconFilePath:path];

      v12 = predictionCopy;
    }

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v27, 8);

    _Block_object_dispose(&v33, 8);
  }

  else
  {
    v11 = __atxlog_handle_hero();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXHeroClipManager _populateMetadataInHeroAppPrediction:];
    }

    v12 = 0;
  }

  return v12;
}

void __59__ATXHeroClipManager__populateMetadataInHeroAppPrediction___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = __atxlog_handle_hero();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __59__ATXHeroClipManager__populateMetadataInHeroAppPrediction___block_invoke_cold_1();
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else if (v6)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    v9 = *(*(*(a1 + 56) + 8) + 40);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__ATXHeroClipManager__populateMetadataInHeroAppPrediction___block_invoke_34;
    v13[3] = &unk_27859F700;
    v10 = *(a1 + 40);
    v11 = *(a1 + 64);
    v15 = *(a1 + 48);
    v16 = v11;
    v14 = *(a1 + 32);
    [v10 requestDownloadedIconWithMetadata:v9 completion:v13];
  }

  else
  {
    v12 = __atxlog_handle_hero();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __59__ATXHeroClipManager__populateMetadataInHeroAppPrediction___block_invoke_cold_2();
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

void __59__ATXHeroClipManager__populateMetadataInHeroAppPrediction___block_invoke_34(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = __atxlog_handle_hero();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = [v4 absoluteString];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "Got clip icon! %@", &v9, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __59__ATXHeroClipManager__populateMetadataInHeroAppPrediction___block_invoke_34_cold_1();
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v8 = *MEMORY[0x277D85DE8];
}

void __59__ATXHeroClipManager__populateMetadataInHeroAppPrediction___block_invoke_2(uint64_t a1)
{
  v2 = __atxlog_handle_hero();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __59__ATXHeroClipManager__populateMetadataInHeroAppPrediction___block_invoke_2_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
}

+ (id)sortPredictionsOnFeedback:(id)feedback
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAC98];
  feedbackCopy = feedback;
  v5 = [[v3 alloc] initWithKey:@"score" ascending:0];
  v6 = __atxlog_handle_hero();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Sorting clip predictions based on score.", v11, 2u);
  }

  v12[0] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v8 = [feedbackCopy sortedArrayUsingDescriptors:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)addPredictionLocationToHeroAppPredictions:(id)predictions location:(id)location
{
  v22 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  locationCopy = location;
  v7 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = predictionsCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        [locationCopy coordinate];
        [v13 setLatitudeAtPredictionTime:?];
        [locationCopy coordinate];
        [v13 setLongitudeAtPredictionTime:v14];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (void)openAppClipWithHeroAppPrediction:(id)prediction completion:(id)completion
{
  predictionCopy = prediction;
  completionCopy = completion;
  if ([self clipsSupported])
  {
    clipMetadata = [predictionCopy clipMetadata];
    clipURL = [clipMetadata clipURL];

    if (clipURL)
    {
      clipMetadata2 = [predictionCopy clipMetadata];
      clipURL2 = [clipMetadata2 clipURL];

      v12 = [objc_alloc(MEMORY[0x277CFA6B0]) initWithURL:clipURL2];
      [v12 setShouldReturnErrorOnUserCancellation:1];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __66__ATXHeroClipManager_openAppClipWithHeroAppPrediction_completion___block_invoke;
      v17[3] = &unk_278596990;
      v18 = clipURL2;
      v19 = completionCopy;
      v13 = clipURL2;
      [v12 requestClipWithCompletion:v17];

      goto LABEL_10;
    }

    v14 = __atxlog_handle_hero();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[ATXHeroClipManager openAppClipWithHeroAppPrediction:completion:];
    }
  }

  else
  {
    v14 = __atxlog_handle_hero();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "Ignoring App Clips Suggestions, since ClipServices are not supported on this device.", buf, 2u);
    }
  }

  v12 = +[ATXHeroAndClipConstants sharedInstance];
  v15 = MEMORY[0x277CCA9B8];
  appClipsErrorDomain = [v12 appClipsErrorDomain];
  v13 = [v15 errorWithDomain:appClipsErrorDomain code:objc_msgSend(v12 userInfo:{"appClipsLaunchErrorCode"), 0}];

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, v13);
  }

LABEL_10:
}

void __66__ATXHeroClipManager_openAppClipWithHeroAppPrediction_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = __atxlog_handle_hero();
  v7 = v6;
  if (v5 || (a2 & 1) == 0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __66__ATXHeroClipManager_openAppClipWithHeroAppPrediction_completion___block_invoke_cold_1();
    }

    if ([v5 code] != 8)
    {
      v11 = [MEMORY[0x277CC1E80] defaultWorkspace];
      [v11 openURL:*(a1 + 32) withOptions:0];
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      v10 = *(v12 + 16);
      goto LABEL_13;
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_INFO, "Request succeeded for app clip with url: %@", &v14, 0xCu);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = *(v9 + 16);
LABEL_13:
      v10();
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)donateAppClipsWithHeroAppPredictions:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_populateMetadataInHeroAppPrediction:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __59__ATXHeroClipManager__populateMetadataInHeroAppPrediction___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __59__ATXHeroClipManager__populateMetadataInHeroAppPrediction___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__ATXHeroClipManager__populateMetadataInHeroAppPrediction___block_invoke_34_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__ATXHeroClipManager__populateMetadataInHeroAppPrediction___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)openAppClipWithHeroAppPrediction:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __66__ATXHeroClipManager_openAppClipWithHeroAppPrediction_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end