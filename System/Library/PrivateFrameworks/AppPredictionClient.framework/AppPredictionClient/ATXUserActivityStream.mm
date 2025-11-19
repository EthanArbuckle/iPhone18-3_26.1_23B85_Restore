@interface ATXUserActivityStream
- (id)_getActivityEventFromBMAppActivity:(id)a3 bundleIdFilter:(id)a4;
- (id)getActivityIntentEventsBetweenStartDate:(id)a3 endDate:(id)a4 bundleIdFilter:(id)a5 limit:(unint64_t)a6;
- (unint64_t)numberOfActivityEventsBetweenStartDate:(id)a3 endDate:(id)a4;
- (void)_enumerateActivityIntentEventsBetweenStartDate:(id)a3 endDate:(id)a4 bundleIdFilter:(id)a5 reversed:(BOOL)a6 block:(id)a7;
@end

@implementation ATXUserActivityStream

- (id)getActivityIntentEventsBetweenStartDate:(id)a3 endDate:(id)a4 bundleIdFilter:(id)a5 limit:(unint64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __94__ATXUserActivityStream_getActivityIntentEventsBetweenStartDate_endDate_bundleIdFilter_limit___block_invoke;
  v21 = &unk_1E80C1A58;
  v22 = v13;
  v23 = a6;
  v14 = v13;
  [(ATXUserActivityStream *)self _enumerateActivityIntentEventsBetweenStartDate:v12 endDate:v11 bundleIdFilter:v10 reversed:1 block:&v18];

  v15 = [v14 reverseObjectEnumerator];
  v16 = [v15 allObjects];

  return v16;
}

- (unint64_t)numberOfActivityEventsBetweenStartDate:(id)a3 endDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__ATXUserActivityStream_numberOfActivityEventsBetweenStartDate_endDate___block_invoke;
  v10[3] = &unk_1E80C1A80;
  v10[4] = &v11;
  [(ATXUserActivityStream *)self _enumerateActivityIntentEventsBetweenStartDate:v6 endDate:v7 bundleIdFilter:0 reversed:0 block:v10];
  v8 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (void)_enumerateActivityIntentEventsBetweenStartDate:(id)a3 endDate:(id)a4 bundleIdFilter:(id)a5 reversed:(BOOL)a6 block:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = objc_autoreleasePoolPush();
  v17 = BiomeLibrary();
  v18 = [v17 App];
  v19 = [v18 Activity];
  v20 = v19;
  if (v8)
  {
    v21 = v13;
  }

  else
  {
    v21 = v12;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = v13;
  }

  v23 = [v19 atx_publisherWithStartDate:v21 endDate:v22 maxEvents:0 lastN:0 reversed:v8];

  v24 = +[ATXIntentGlobals sharedInstance];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __110__ATXUserActivityStream__enumerateActivityIntentEventsBetweenStartDate_endDate_bundleIdFilter_reversed_block___block_invoke_13;
  v29[3] = &unk_1E80C5BF8;
  v30 = v24;
  v31 = self;
  v25 = v14;
  v32 = v25;
  v26 = v15;
  v33 = v26;
  v27 = v24;
  v28 = [v23 sinkWithCompletion:&__block_literal_global_92 shouldContinue:v29];

  objc_autoreleasePoolPop(v16);
}

void __110__ATXUserActivityStream__enumerateActivityIntentEventsBetweenStartDate_endDate_bundleIdFilter_reversed_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __110__ATXUserActivityStream__enumerateActivityIntentEventsBetweenStartDate_endDate_bundleIdFilter_reversed_block___block_invoke_cold_1(v2);
    }
  }
}

uint64_t __110__ATXUserActivityStream__enumerateActivityIntentEventsBetweenStartDate_endDate_bundleIdFilter_reversed_block___block_invoke_13(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((![*(a1 + 32) onlyUseEligibleForPrediction] || (objc_msgSend(v3, "eventBody"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEligibleForPrediction"), v4, v5)) && (objc_msgSend(*(a1 + 40), "_getActivityEventFromBMAppActivity:bundleIdFilter:", v3, *(a1 + 48)), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = (*(*(a1 + 56) + 16))();
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)_getActivityEventFromBMAppActivity:(id)a3 bundleIdFilter:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 eventBody];
  v8 = objc_alloc(MEMORY[0x1E696AFB0]);
  v9 = [v7 userActivityUUID];
  v10 = [v8 initWithUUIDString:v9];

  if (v10)
  {
    v11 = [v7 bundleID];
    if ([v11 length])
    {
      if (v6 && ([v6 isEqualToString:v11] & 1) == 0)
      {
        v17 = __atxlog_handle_default();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [ATXUserActivityStream _getActivityEventFromBMAppActivity:bundleIdFilter:];
        }
      }

      else
      {
        v12 = +[ATXIntentGlobals sharedInstance];
        v13 = [v12 onlyAcceptBecomeCurrentNSUAs];

        if (!v13 || ([v7 beginningOfActivity] & 1) != 0 || (-[NSObject isEqualToString:](v11, "isEqualToString:", @"com.apple.mobilesafari") & 1) != 0)
        {
          v14 = [v7 userActivityRequiredString];

          if (v14)
          {
            v15 = objc_alloc(MEMORY[0x1E69636A8]);
            v16 = [v7 userActivityRequiredString];
            v17 = [v15 _initWithUserActivityStrings:v16 secondaryString:0 optionalData:0];

            v18 = [v17 activityType];
            if (!v18)
            {
              v33 = __atxlog_handle_default();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                [ATXUserActivityStream _getActivityEventFromBMAppActivity:bundleIdFilter:];
              }

              v32 = 0;
              goto LABEL_40;
            }

            v19 = MEMORY[0x1E695DF00];
            [v5 timestamp];
            v39 = [v19 dateWithTimeIntervalSinceReferenceDate:?];
            v40 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v39 endDate:v39];
            v20 = [v7 itemIdentifier];

            if (!v20)
            {
              v23 = __atxlog_handle_default();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                [ATXUserActivityStream _getActivityEventFromBMAppActivity:bundleIdFilter:];
              }

              v32 = 0;
              goto LABEL_39;
            }

            v21 = [v7 itemRelatedContentURL];
            v38 = v18;
            if (v21 || ([v7 itemRelatedUniqueIdentifier], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
            {
            }

            else
            {
              v36 = [v7 contentDescription];

              if (!v36)
              {
                v23 = 0;
                goto LABEL_15;
              }
            }

            v22 = objc_alloc(MEMORY[0x1E6964E90]);
            v23 = [v22 initWithContentType:*MEMORY[0x1E6982D50]];
            v24 = [v7 itemRelatedUniqueIdentifier];
            [v23 setRelatedUniqueIdentifier:v24];

            v25 = [v7 itemRelatedContentURL];
            [v23 setContentURL:v25];

            v26 = [v7 contentDescription];
            [v23 setContentDescription:v26];

LABEL_15:
            v27 = [ATXAction alloc];
            v28 = [v7 userActivityRequiredString];
            v29 = [v7 itemIdentifier];
            LOBYTE(v37) = 0;
            v30 = [(ATXAction *)v27 initWithNSUserActivityString:v28 actionUUID:v10 bundleId:v11 itemIdentifier:v29 contentAttributeSet:v23 heuristic:0 heuristicMetadata:0 isFutureMedia:v37 title:0 subtitle:0];

            if ([(ATXAction *)v30 hasActionTitle])
            {
              v31 = [ATXAction getNSUATypefromActivityType:v38];
              v32 = [[ATXIntentEvent alloc] initWithBundleId:v11 intentType:v31 dateInterval:v40 action:v30];

              v18 = v38;
            }

            else
            {
              v34 = __atxlog_handle_default();
              v18 = v38;
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                [ATXUserActivityStream _getActivityEventFromBMAppActivity:bundleIdFilter:];
              }

              v32 = 0;
            }

LABEL_39:
            v33 = v39;

LABEL_40:
            goto LABEL_41;
          }

          v17 = __atxlog_handle_default();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [ATXUserActivityStream _getActivityEventFromBMAppActivity:bundleIdFilter:];
          }
        }

        else
        {
          v17 = __atxlog_handle_default();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v42 = v11;
            _os_log_impl(&dword_1BF549000, v17, OS_LOG_TYPE_INFO, "Donation Processing (NSUA) - skipping non-beginning activity for bundleId: %@", buf, 0xCu);
          }
        }
      }
    }

    else
    {
      v17 = __atxlog_handle_default();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [ATXUserActivityStream _getActivityEventFromBMAppActivity:v7 bundleIdFilter:?];
      }
    }

    v32 = 0;
LABEL_41:

    goto LABEL_42;
  }

  v11 = __atxlog_handle_default();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [ATXUserActivityStream _getActivityEventFromBMAppActivity:v11 bundleIdFilter:?];
  }

  v32 = 0;
LABEL_42:

  return v32;
}

void __110__ATXUserActivityStream__enumerateActivityIntentEventsBetweenStartDate_endDate_bundleIdFilter_reversed_block___block_invoke_cold_1(void *a1)
{
  v1 = [a1 error];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_4(&dword_1BF549000, v2, v3, "ATXUserActivityStream: Can't read App.Activity stream with error: %@", v4, v5, v6, v7, v8);
}

- (void)_getActivityEventFromBMAppActivity:bundleIdFilter:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_1BF549000, v1, OS_LOG_TYPE_DEBUG, "Donation Processing (NSUA) - Rejected: filtered out bundle id %@ that doesn't match %@", v2, 0x16u);
}

- (void)_getActivityEventFromBMAppActivity:(void *)a1 bundleIdFilter:.cold.6(void *a1)
{
  v1 = [a1 userActivityUUID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_4(&dword_1BF549000, v2, v3, "Donation Processing (NSUA) - No bundleId found for eventUUID: %@", v4, v5, v6, v7, v8);
}

@end