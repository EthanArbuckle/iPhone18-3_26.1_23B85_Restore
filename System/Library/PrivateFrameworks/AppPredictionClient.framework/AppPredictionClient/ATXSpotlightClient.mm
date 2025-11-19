@interface ATXSpotlightClient
+ (BOOL)_isAutoShortcutEnabledForSpotlight:(id)a3;
+ (BOOL)_isEqualRecentTopics:(id)a3 otherRecentTopics:(id)a4;
+ (BOOL)_isValidSuggestion:(id)a3 forWorldState:(id)a4;
+ (BOOL)isAutoShortcutEnabledForSpotlightForBundleId:(id)a3 signature:(id)a4;
+ (BOOL)isAutoShortcutsEnabledForSpotlightForBundleId:(id)a3;
+ (BOOL)isValidSuggestion:(id)a3 forScope:(id)a4;
+ (BOOL)topic:(id)a3 isDuplicateComparingTopics:(id)a4;
+ (id)_accessoryImageWithContextualAction:(id)a3;
+ (id)_contextualActionIconFromLNImage:(id)a3;
+ (id)_fetchSpotlightRecentTopics:(int64_t)a3;
+ (id)_fetchSpotlightRecentTopicsWithAlternateRanking:(int64_t)a3 limit:(int64_t)a4;
+ (id)_iconForParameterizedAutoShortcutContextualAction:(id)a3 provider:(id)a4;
+ (id)_imageWithContextualActionIcon:(id)a3;
+ (id)_imageWithDirectionsContextualAction:(id)a3;
+ (id)_imageWithLinkImage:(id)a3;
+ (id)_responseWithSpotlightLayout:(id)a3 andSpotlightRecentTopics:(id)a4 actionScope:(id)a5 limit:(int64_t)a6;
+ (id)_responseWithUpcomingMedia;
+ (id)_resultWithATXAction:(id)a3;
+ (id)_resultWithActionSuggestion:(id)a3;
+ (id)_resultWithAppBundleId:(id)a3;
+ (id)_resultWithAppClipSuggestion:(id)a3;
+ (id)_resultWithContextualAction:(id)a3 title:(id)a4 subtitle:(id)a5;
+ (id)_resultWithIntent:(id)a3 title:(id)a4 subtitle:(id)a5 bundleIdForDisplay:(id)a6 appIcon:(id)a7;
+ (id)_resultWithLinkActionContainer:(id)a3;
+ (id)_resultWithLinkActionSuggestion:(id)a3;
+ (id)_resultWithShortcutsActionSuggestion:(id)a3;
+ (id)_resultWithSuggestion:(id)a3;
+ (id)_suggestedResultResponseWithLimit:(int64_t)a3 andSpotlightRecentTopics:(id)a4 actionScope:(id)a5;
+ (id)_symbolImageForName:(id)a3;
+ (id)_topicWithSuggestion:(id)a3 layoutUUID:(id)a4;
+ (id)descriptionForTopic:(id)a3;
+ (id)detailedRowCardSectionWithTitle:(id)a3 subtitles:(id)a4 thumbnail:(id)a5 trailingImage:(id)a6;
+ (id)recentUpcomingMediaActionsWithLimit:(unint64_t)a3;
+ (id)rerankRecents:(id)a3 withAlternateRanking:(unint64_t)a4;
+ (id)rerankRecents_Filter:(id)a3 removingType:(int)a4;
+ (id)rerankRecents_LimitCount:(id)a3 oneCountDays:(double)a4 twoCountDays:(double)a5;
+ (id)rerankRecents_Normal:(id)a3;
+ (id)suggestedResultResponseWithLimit:(int64_t)a3;
+ (id)suggestedResultResponseWithLimit:(int64_t)a3 andSpotlightRecentTopics:(id)a4;
+ (id)zkwPredictionsForRequest:(id)a3 error:(id *)a4;
+ (void)_responseWithUpcomingMedia;
+ (void)predictionsForRequest:(id)a3 withCompletion:(id)a4;
@end

@implementation ATXSpotlightClient

+ (void)predictionsForRequest:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__ATXSpotlightClient_predictionsForRequest_withCompletion___block_invoke;
  block[3] = &unk_1E80C4548;
  v13 = v7;
  v14 = a1;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __59__ATXSpotlightClient_predictionsForRequest_withCompletion___block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  v7 = 0;
  v4 = [v2 zkwPredictionsForRequest:v3 error:&v7];
  v5 = v7;
  v6 = a1[5];
  if (v6)
  {
    (*(v6 + 16))(v6, v4, v5);
  }
}

+ (id)zkwPredictionsForRequest:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 limit];
  v7 = [v4 spotlightRecentTopics];
  v8 = [v4 scope];

  v9 = [v5 _suggestedResultResponseWithLimit:v6 andSpotlightRecentTopics:v7 actionScope:v8];

  return v9;
}

+ (id)suggestedResultResponseWithLimit:(int64_t)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = +[ATXSpotlightZKWTrialClientWrapper sharedInstance];
  v6 = [v5 alternateRecentsRanking];
  v7 = CFPreferencesCopyAppValue(@"SuggestionsSpotlightZKWRecentsEnabled", @"com.apple.suggestions");
  if (!v7 || (v8 = v7, v9 = [v7 BOOLValue], v8, v9))
  {
    v10 = [a1 _fetchSpotlightRecentTopics:4];
    v11 = __atxlog_handle_ui();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (!v6)
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: [Recents] AB match: NO", buf, 2u);
      }

      goto LABEL_32;
    }

    if (v12)
    {
      *buf = 134217984;
      v39 = v6;
      _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: [Recents] AB match: YES, Test ranking %lu", buf, 0xCu);
    }

    v13 = [v5 matchesAlternateRecentsControlCodePath];
    v14 = [v5 matchesAlternateRecentsTreatmentCodePath];
    v15 = __atxlog_handle_ui();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = &stru_1F3E050C8;
      v17 = @"control";
      if (!v13)
      {
        v17 = &stru_1F3E050C8;
      }

      *buf = 134218498;
      v39 = v6;
      v41 = v17;
      v40 = 2112;
      if (v14)
      {
        v16 = @"treatment";
      }

      v42 = 2112;
      v43 = v16;
      _os_log_impl(&dword_1BF549000, v15, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: [Recents] Test ranking %lu, %@%@", buf, 0x20u);
    }

    v18 = __atxlog_handle_metrics();
    v19 = os_signpost_id_generate(v18);

    v20 = __atxlog_handle_metrics();
    v21 = v20;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BF549000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "ATXSpotlightClient.SpotlightRecentsAlternate", " enableTelemetry=YES ", buf, 2u);
    }

    v11 = [a1 _fetchSpotlightRecentTopicsWithAlternateRanking:v6 limit:4];
    v22 = __atxlog_handle_metrics();
    v23 = v22;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 134349056;
      v39 = v6;
      _os_signpost_emit_with_name_impl(&dword_1BF549000, v23, OS_SIGNPOST_INTERVAL_END, v19, "ATXSpotlightClient.SpotlightRecentsAlternate", "alt=%{public, signpost.telemetry:number1}ld enableTelemetry=YES ", buf, 0xCu);
    }

    v24 = [a1 _isEqualRecentTopics:v10 otherRecentTopics:v11];
    if ((v13 & v14) == 1)
    {
      v25 = __atxlog_handle_ui();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        +[ATXSpotlightClient suggestedResultResponseWithLimit:];
      }
    }

    else
    {
      if (v13)
      {
        if ((v24 & 1) == 0)
        {
          v26 = [v5 codePathForAlternateRecentsControl];
LABEL_33:

          v27 = [a1 _extractTopicsFromRecentTopics:v10];
          goto LABEL_34;
        }

LABEL_32:
        v26 = 0;
        goto LABEL_33;
      }

      if (v14)
      {
        if ((v24 & 1) == 0)
        {
          v26 = [v5 codePathForAlternateRecentsTreatment];
          v11 = v11;

          v10 = v11;
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      v25 = __atxlog_handle_ui();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        +[ATXSpotlightClient suggestedResultResponseWithLimit:];
      }
    }

    goto LABEL_32;
  }

  v10 = __atxlog_handle_ui();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: suggestedResultResponseWithLimit: Siri setting 'Show Recents' turned off. spotlightRecentTopics = @[]", buf, 2u);
  }

  v26 = 0;
  v27 = MEMORY[0x1E695E0F0];
LABEL_34:

  v28 = __atxlog_handle_metrics();
  v29 = os_signpost_id_generate(v28);

  v30 = __atxlog_handle_metrics();
  v31 = v30;
  if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF549000, v31, OS_SIGNPOST_INTERVAL_BEGIN, v29, "ATXSpotlightClient.SuggestedActions", " enableTelemetry=YES ", buf, 2u);
  }

  v32 = [a1 suggestedResultResponseWithLimit:a3 andSpotlightRecentTopics:v27];
  v33 = __atxlog_handle_metrics();
  v34 = v33;
  if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF549000, v34, OS_SIGNPOST_INTERVAL_END, v29, "ATXSpotlightClient.SuggestedActions", " enableTelemetry=YES ", buf, 2u);
  }

  v35 = __atxlog_handle_ui();
  v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
  if (v26)
  {
    if (v36)
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v35, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: [Recents] send code path trigger", buf, 2u);
    }

    [v32 addCodePathId:v26];
  }

  else
  {
    if (v36)
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v35, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: [Recents] Alternate ranking did not change results", buf, 2u);
    }
  }

  return v32;
}

+ (id)suggestedResultResponseWithLimit:(int64_t)a3 andSpotlightRecentTopics:(id)a4
{
  v5 = a4;
  v6 = [objc_opt_class() _suggestedResultResponseWithLimit:a3 andSpotlightRecentTopics:v5 actionScope:0];

  return v6;
}

+ (id)_suggestedResultResponseWithLimit:(int64_t)a3 andSpotlightRecentTopics:(id)a4 actionScope:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a4;
  v10 = CFPreferencesCopyAppValue(@"SuggestionsSpotlightZKWEnabled", @"com.apple.suggestions");
  if (v10 && (v11 = v10, v12 = [v10 BOOLValue], v11, !v12))
  {
    v14 = __atxlog_handle_ui();
    if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1BF549000, &v14->super, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: suggestedResultResponseWithLimit: Siri setting 'Show Suggestions' turned off. spotlightLayout = nil", &v19, 2u);
    }

    v15 = 0;
  }

  else
  {
    v13 = __atxlog_handle_ui();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134217984;
      v20 = a3;
      _os_log_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: suggestedResultResponseWithLimit: %ld", &v19, 0xCu);
    }

    v14 = [[ATXProactiveSuggestionClient alloc] initWithConsumerSubType:21];
    v15 = [(ATXProactiveSuggestionClient *)v14 spotlightSuggestionLayoutFromCache];
    v16 = __atxlog_handle_ui();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v15;
      _os_log_impl(&dword_1BF549000, v16, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: Blending retrieved a spotlightLayout %@.", &v19, 0xCu);
    }
  }

  v17 = [a1 _responseWithSpotlightLayout:v15 andSpotlightRecentTopics:v9 actionScope:v8 limit:a3];

  return v17;
}

+ (id)descriptionForTopic:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = v3;
      v15 = [v13 alloc];
      v4 = [v14 query];
      v16 = [v14 date];

      v17 = [v15 initWithFormat:@"SFFlightTopic: %@, %@", v4, v16];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v26 = MEMORY[0x1E696AEC0];
        if (isKindOfClass)
        {
          v27 = v3;
          v28 = [v26 alloc];
          v4 = [v27 query];
          v29 = [v27 queryType];
          v30 = [v27 identifier];

          v17 = [v28 initWithFormat:@"SFQueryTopic: %@, type: %d, id: %@", v4, v29, v30];
        }

        else
        {
          v34 = objc_alloc(MEMORY[0x1E696AEC0]);
          v35 = objc_opt_class();
          v4 = NSStringFromClass(v35);
          v17 = [v34 initWithFormat:@"unhandled of type %@", v4];
        }

        goto LABEL_19;
      }

      v18 = MEMORY[0x1E696AEC0];
      v19 = v3;
      v20 = [v18 alloc];
      v4 = [v19 query];
      v16 = [v19 location];
      [v16 lat];
      v22 = v21;
      v23 = [v19 location];

      [v23 lng];
      v17 = [v20 initWithFormat:@"SFWeatherTopic: %@, lat %f, lng %f", v4, v22, v24];
    }

    goto LABEL_19;
  }

  v4 = v3;
  v5 = [v4 result];
  v6 = [v5 title];
  v7 = [v6 text];

  if (!v7)
  {
    v8 = [v4 result];
    v9 = [v8 inlineCard];
    v10 = [v9 cardSections];
    v11 = [v10 firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 title];
      v7 = [v12 text];
    }

    else
    {
      v7 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [v11 suggestionText];
      v32 = [v31 text];

      v7 = v32;
    }

    if (!v7)
    {
      v7 = [v4 identifier];
    }
  }

  v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SFLocalTopic %@, %@", v7, v4];

LABEL_19:

  return v17;
}

+ (BOOL)_isValidSuggestion:(id)a3 forWorldState:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 atxActionCriteria];
  v8 = [v7 isRelevant:v6];

  if ((v8 & 1) == 0)
  {
    v12 = __atxlog_handle_ui();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v5 uiSpecification];
      v14 = [v13 title];
      v15 = [v5 executableSpecification];
      v16 = [v15 executableClassString];
      v18 = 138412546;
      v19 = v14;
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_1BF549000, v12, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: Not valid for device state, hiding: %@, type %@", &v18, 0x16u);
    }

    goto LABEL_8;
  }

  v9 = [v5 uiSpecification];
  v10 = [v9 predictionReasons];

  if ((v10 & 0x1000000) != 0)
  {
    v12 = __atxlog_handle_ui();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[ATXSpotlightClient _isValidSuggestion:forWorldState:];
    }

LABEL_8:

    v11 = 0;
    goto LABEL_9;
  }

  v11 = 1;
LABEL_9:

  return v11;
}

+ (BOOL)isValidSuggestion:(id)a3 forScope:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 appIdentifier];
    v9 = [v7 appEntityKeyValueMapping];
    v10 = [v7 actionType];
    v11 = [v7 intentClassName];
    v12 = [v5 atxActionExecutableObject];
    v13 = [v12 bundleId];
    v14 = v13;
    if (v12)
    {
      if (!v8 || v13 && ([v8 bundleIdentifier], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "isEqualToString:", v15), v15, v16))
      {
        v30 = v9;
        if (v11 && ([v12 intent], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "_className"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", v11), v18, v17, !v19) || (objc_msgSend(v5, "atxActionExecutableObject"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "actionType"), v20, v10 != 8) && v21 != v10)
        {
          v22 = 0;
          v9 = v30;
LABEL_18:

          goto LABEL_19;
        }

        v9 = v30;
        if (!v30 || v21 || ([v12 intent], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "atx_nonNilParametersByName"), v24 = objc_claimAutoreleasedReturnValue(), v23, v34 = 0, v35 = &v34, v36 = 0x2020000000, v37 = 0, v31[0] = MEMORY[0x1E69E9820], v31[1] = 3221225472, v31[2] = __49__ATXSpotlightClient_isValidSuggestion_forScope___block_invoke, v31[3] = &unk_1E80C6228, v25 = v24, v32 = v25, v33 = &v34, objc_msgSend(v30, "enumerateKeysAndObjectsUsingBlock:", v31), v26 = objc_msgSend(v30, "count"), v27 = v35[3], v32, _Block_object_dispose(&v34, 8), v25, v28 = v26 == v27, v9 = v30, v28))
        {
          v22 = 1;
          goto LABEL_18;
        }
      }
    }

    v22 = 0;
    goto LABEL_18;
  }

  v22 = 1;
LABEL_19:

  return v22;
}

void __49__ATXSpotlightClient_isValidSuggestion_forScope___block_invoke(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v10 = [v7 objectForKeyedSubscript:a2];
  LODWORD(a2) = [v10 isEqual:v8];

  if (a2)
  {
    v9 = 0;
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v9 = 1;
  }

  *a4 = v9;
}

+ (BOOL)topic:(id)a3 isDuplicateComparingTopics:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = *v22;
    v20 = v6;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        if ([MEMORY[0x1E69D3DF0] topic:v5 isSameAsTopic:v10])
        {
          LOBYTE(v7) = 1;
          goto LABEL_19;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = v5;
            v12 = v10;
            v13 = [v11 identifier];
            if ([v13 length])
            {
              v14 = [v12 identifier];
              v15 = [v14 length];

              if (v15)
              {
                v16 = [v11 identifier];
                v17 = [v12 identifier];
                v18 = [v16 isEqualToString:v17];

                if (v18)
                {

                  LOBYTE(v7) = 1;
                  v6 = v20;
                  goto LABEL_19;
                }
              }
            }

            else
            {
            }

            v6 = v20;
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  return v7;
}

+ (id)_responseWithSpotlightLayout:(id)a3 andSpotlightRecentTopics:(id)a4 actionScope:(id)a5 limit:(int64_t)a6
{
  v112 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v83 = a5;
  if ([a1 _shouldDisplayUpcomingMediaForTesting])
  {
    v11 = [a1 _responseWithUpcomingMedia];
    goto LABEL_67;
  }

  v69 = v10;
  v81 = [v9 uuid];
  v82 = v9;
  v12 = [v9 collections];
  v80 = objc_opt_new();
  v79 = objc_opt_new();
  v71 = objc_opt_new();
  v85 = objc_opt_new();
  v13 = __atxlog_handle_ui();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: Response: create sections and topics ", buf, 2u);
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = v12;
  v73 = [obj countByEnumeratingWithState:&v98 objects:v111 count:16];
  if (v73)
  {
    v14 = 0;
    v72 = *v99;
    do
    {
      v15 = 0;
      do
      {
        if (*v99 != v72)
        {
          objc_enumerationMutation(obj);
        }

        v75 = v15;
        v16 = *(*(&v98 + 1) + 8 * v15);
        v17 = [v16 suggestions];
        v18 = [v17 firstObject];
        v19 = [v18 uiSpecification];
        v20 = [v19 predictionReasons];

        v21 = __atxlog_handle_ui();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v16 contextTitle];
          v23 = [v22 hash];
          v24 = [v16 suggestions];
          v25 = [v24 count];
          *buf = 134218496;
          v106 = v23;
          v107 = 2048;
          v108 = v20;
          v109 = 2048;
          v110 = v25;
          _os_log_impl(&dword_1BF549000, v21, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: Section.hash: %lu, type: %llu, count: %lu", buf, 0x20u);
        }

        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v74 = v16;
        v26 = [v16 suggestions];
        v27 = [v26 countByEnumeratingWithState:&v94 objects:v104 count:16];
        if (v27)
        {
          v28 = v27;
          v84 = 0;
          v29 = *v95;
          v30 = v83;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v95 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v32 = *(*(&v94 + 1) + 8 * i);
              if ([objc_opt_class() isValidSuggestion:v32 forScope:v30])
              {
                if ([objc_opt_class() _isValidSuggestion:v32 forWorldState:v85])
                {
                  v33 = [a1 _topicWithSuggestion:v32 layoutUUID:v81];
                  v34 = [v82 scores];
                  v35 = [v34 objectAtIndexedSubscript:v14];

                  v36 = __atxlog_handle_ui();
                  v37 = v36;
                  if (v33)
                  {
                    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                    {
                      v38 = [a1 descriptionForTopic:v33];
                      *buf = 138740227;
                      v106 = v38;
                      v107 = 2112;
                      v108 = v35;
                      _os_log_impl(&dword_1BF549000, v37, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: Topic: %{sensitive}@ Score: %@, ", buf, 0x16u);
                    }

                    ++v84;
                    [v80 addObject:v33];
                    [v79 addObject:v35];
                  }

                  else
                  {
                    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                    {
                      v77 = [v32 uiSpecification];
                      v78 = [v77 title];
                      v76 = [v32 executableSpecification];
                      v40 = [v76 executableClassString];
                      *buf = 138412546;
                      v106 = v78;
                      v107 = 2112;
                      v108 = v40;
                      _os_log_error_impl(&dword_1BF549000, v37, OS_LOG_TYPE_ERROR, "ATXSpotlightClient: Topic: nil: %@, type %@", buf, 0x16u);
                    }
                  }

                  v30 = v83;
                }

                ++v14;
              }

              else
              {
                v39 = __atxlog_handle_ui();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v106 = v32;
                  v107 = 2112;
                  v108 = v30;
                  _os_log_impl(&dword_1BF549000, v39, OS_LOG_TYPE_INFO, "Filtering %@ as it doesn't meet the scope: %@", buf, 0x16u);
                }
              }
            }

            v28 = [v26 countByEnumeratingWithState:&v94 objects:v104 count:16];
          }

          while (v28);
        }

        else
        {
          v84 = 0;
        }

        v41 = [v74 contextTitle];
        v42 = objc_opt_new();
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        v43 = [v74 suggestions];
        v44 = [v43 countByEnumeratingWithState:&v90 objects:v103 count:16];
        if (v44)
        {
          v45 = v44;
          v46 = *v91;
          while (2)
          {
            for (j = 0; j != v45; ++j)
            {
              if (*v91 != v46)
              {
                objc_enumerationMutation(v43);
              }

              v48 = [v42 contextTitleWithSuggestion:*(*(&v90 + 1) + 8 * j) eventTitle:v41];
              if ([v48 length])
              {

                goto LABEL_45;
              }
            }

            v45 = [v43 countByEnumeratingWithState:&v90 objects:v103 count:16];
            if (v45)
            {
              continue;
            }

            break;
          }
        }

        v48 = v41;
LABEL_45:

        v49 = __atxlog_handle_ui();
        v50 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
        if (v84)
        {
          if (v50)
          {
            v51 = [v74 contextTitle];
            v52 = [v51 hash];
            *buf = 134218240;
            v106 = v52;
            v107 = 2048;
            v108 = v84;
            _os_log_impl(&dword_1BF549000, v49, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: Creating Section [%lu] with suggestions count %lu", buf, 0x16u);
          }

          v49 = [v74 sectionIdentifier];
          v53 = [ATXSpotlightClientResponse createSectionWithTitle:v48 sectionBundleIdentifier:v49 resultCount:v84];
          [v71 addObject:v53];
        }

        else
        {
          if (!v50)
          {
            goto LABEL_52;
          }

          v53 = [v74 contextTitle];
          v54 = [v53 hash];
          *buf = 134217984;
          v106 = v54;
          _os_log_impl(&dword_1BF549000, v49, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: Skipping Section [%lu] no longer has valid suggestions", buf, 0xCu);
        }

LABEL_52:
        v15 = v75 + 1;
      }

      while (v75 + 1 != v73);
      v73 = [obj countByEnumeratingWithState:&v98 objects:v111 count:16];
    }

    while (v73);
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v10 = v69;
  v55 = v69;
  v56 = [v55 countByEnumeratingWithState:&v86 objects:v102 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = 0;
    v59 = *v87;
    v60 = 10.0;
LABEL_56:
    v61 = 0;
    if (v58 <= 3)
    {
      v62 = 3 - v58;
    }

    else
    {
      v62 = 0;
    }

    while (1)
    {
      v63 = v58;
      if (*v87 != v59)
      {
        objc_enumerationMutation(v55);
      }

      [v80 addObject:*(*(&v86 + 1) + 8 * v61)];
      v64 = [MEMORY[0x1E696AD98] numberWithDouble:v60];
      [v79 addObject:v64];

      if (v62 == v61)
      {
        break;
      }

      v60 = v60 + -1.0;
      ++v61;
      v58 = v63 + 1;
      if (v57 == v61)
      {
        v57 = [v55 countByEnumeratingWithState:&v86 objects:v102 count:16];
        if (v57)
        {
          goto LABEL_56;
        }

        break;
      }
    }

    v55 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v65 = [v55 localizedStringForKey:@"SPOTLIGHT_SECTION_RECENTS" value:&stru_1F3E050C8 table:0];
    v66 = [ATXSpotlightClientResponse createSectionWithTitle:v65 sectionBundleIdentifier:@"com.apple.spotlight.dec.zkw.recents" resultCount:v63 + 1];
    v67 = v71;
    [v71 addObject:v66];

    v10 = v69;
  }

  else
  {
    v67 = v71;
  }

  v11 = [[ATXSpotlightClientResponse alloc] initWithTopics:v80 scores:v79 sections:v67];
  v9 = v82;
LABEL_67:

  return v11;
}

+ (id)_topicWithSuggestion:(id)a3 layoutUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 executableSpecification];
  v9 = [v8 executableType];

  if (v9 == 8)
  {
    v10 = [v6 atxSpotlightActionExecutableObject];
    v11 = [v10 topic];
LABEL_9:
    v20 = v11;
    goto LABEL_10;
  }

  v12 = [a1 _resultWithSuggestion:v6];
  v10 = v12;
  if (v12)
  {
    v13 = [v12 identifier];
    v14 = [v13 length];

    if (!v14)
    {
      v15 = __atxlog_handle_ui();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        +[ATXSpotlightClient _topicWithSuggestion:layoutUUID:];
      }

      v16 = objc_opt_new();
      v17 = [v16 UUIDString];
      [v10 setIdentifier:v17];
    }

    v18 = [v6 copy];
    [v10 setProactiveSuggestion:v18];

    v19 = [v7 copy];
    [v10 setBlendingModelUICacheUpdateUUID:v19];

    v11 = [MEMORY[0x1E69D3DE8] proactiveTopicWithResult:v10];
    goto LABEL_9;
  }

  v20 = 0;
LABEL_10:

  return v20;
}

+ (id)_fetchSpotlightRecentTopics:(int64_t)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = __atxlog_handle_metrics();
  v5 = os_signpost_id_generate(v4);

  v6 = __atxlog_handle_ui();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134217984;
    v19 = a3;
    _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "spotlight recents request: %ld", &v18, 0xCu);
  }

  v7 = __atxlog_handle_metrics();
  v8 = v7;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v18) = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF549000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "ATXSpotlightClient.SpotlightRecents", " enableTelemetry=YES ", &v18, 2u);
  }

  v9 = MEMORY[0x1E69D3DF0];
  v22 = *MEMORY[0x1E69D3DF8];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v23[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v12 = [v9 recentResultsWithOptions:v11];

  v13 = __atxlog_handle_metrics();
  v14 = v13;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(v18) = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF549000, v14, OS_SIGNPOST_INTERVAL_END, v5, "ATXSpotlightClient.SpotlightRecents", " enableTelemetry=YES ", &v18, 2u);
  }

  v15 = __atxlog_handle_ui();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v12 count];
    v18 = 134218243;
    v19 = v16;
    v20 = 2117;
    v21 = v12;
    _os_log_impl(&dword_1BF549000, v15, OS_LOG_TYPE_DEFAULT, "spotlight recents results: %ld %{sensitive}@", &v18, 0x16u);
  }

  return v12;
}

id __53__ATXSpotlightClient__extractTopicsFromRecentTopics___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 topic];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v5 = __atxlog_handle_ui();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v10 = objc_opt_class();
    v6 = NSStringFromClass(v10);
    v8 = [v2 topic];
    v13 = 138412547;
    v14 = v6;
    v15 = 2117;
    v16 = v8;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "spotlight recent %@: %{sensitive}@", &v13, 0x16u);
    goto LABEL_6;
  }

  v5 = [v2 topic];
  v6 = __atxlog_handle_ui();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v5 query];
    v13 = 138412803;
    v14 = v8;
    v15 = 2117;
    v16 = v9;
    v17 = 1024;
    v18 = [v5 queryType];
    _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "spotlight recent %@: %{sensitive}@, %d", &v13, 0x1Cu);

LABEL_6:
  }

LABEL_8:
  v11 = [v2 topic];

  return v11;
}

+ (id)_fetchSpotlightRecentTopicsWithAlternateRanking:(int64_t)a3 limit:(int64_t)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69D3DF0];
  v12 = *MEMORY[0x1E69D3DF8];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v13[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__ATXSpotlightClient__fetchSpotlightRecentTopicsWithAlternateRanking_limit___block_invoke;
  v11[3] = &__block_descriptor_48_e26___NSArray_16__0__NSArray_8l;
  v11[4] = a1;
  v11[5] = a3;
  v9 = [v6 recentResultsWithOptions:v8 rankAndDeduplicate:v11];

  return v9;
}

id __76__ATXSpotlightClient__fetchSpotlightRecentTopicsWithAlternateRanking_limit___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) rerankRecents:a2 withAlternateRanking:*(a1 + 40)];
  v3 = [v2 count];
  if (v3 >= 0xA)
  {
    v4 = 10;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 subarrayWithRange:{0, v4}];

  return v5;
}

+ (id)rerankRecents:(id)a3 withAlternateRanking:(unint64_t)a4
{
  v6 = a3;
  v7 = __atxlog_handle_ui();
  v8 = v7;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: [Recents] rerankRecentsLimitCount 2.5, 7.5", v16, 2u);
      }

      v10 = 2.5;
      v11 = 7.5;
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_12;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: [Recents] rerankRecentsLimitCount 7.5, 14.5", v15, 2u);
      }

      v10 = 7.5;
      v11 = 14.5;
    }

    v9 = [a1 rerankRecents_LimitCount:v6 oneCountDays:v10 twoCountDays:v11];
    goto LABEL_21;
  }

  if (!a4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: [Recents] rerankRecents_Normal", v18, 2u);
    }

    goto LABEL_16;
  }

  if (a4 != 1)
  {
LABEL_12:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      +[ATXSpotlightClient rerankRecents:withAlternateRanking:];
    }

LABEL_16:

    v9 = [a1 rerankRecents_Normal:v6];
    goto LABEL_21;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: [Recents] rerankRecents_Filter UserTyped", buf, 2u);
  }

  v9 = [a1 rerankRecents_Filter:v6 removingType:30];
LABEL_21:
  v12 = v9;
  v13 = __atxlog_handle_ui();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [ATXSpotlightClient rerankRecents:v12 withAlternateRanking:?];
  }

  return v12;
}

+ (id)rerankRecents_Normal:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v6 = [v5 dateByAddingTimeInterval:-604800.0];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (!v8)
  {
    goto LABEL_28;
  }

  v9 = v8;
  v10 = *v42;
  v32 = v5;
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v42 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v41 + 1) + 8 * i);
      if ([v4 count] >= 0xA)
      {
        v29 = __atxlog_handle_ui();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v30 = "[Recents]: V0 only considers first 10";
LABEL_26:
          _os_log_impl(&dword_1BF549000, v29, OS_LOG_TYPE_DEFAULT, v30, buf, 2u);
        }

LABEL_27:
        v5 = v32;

        goto LABEL_28;
      }

      v13 = [v12 engagementTime];
      [v13 timeIntervalSinceReferenceDate];
      v15 = v14;
      [v6 timeIntervalSinceReferenceDate];
      v17 = v16;

      if (v15 < v17)
      {
        v29 = __atxlog_handle_ui();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v30 = "[Recents]: V0 no need to consider more past max date";
          goto LABEL_26;
        }

        goto LABEL_27;
      }

      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __43__ATXSpotlightClient_rerankRecents_Normal___block_invoke;
      v39[3] = &unk_1E80C6290;
      v39[4] = v12;
      v18 = [v4 indexOfObjectPassingTest:v39];
      v19 = __atxlog_handle_ui();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
      if (v18 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v20)
        {
          [(ATXSpotlightClient *)&v37 rerankRecents_Normal:v38];
        }

        [v4 addObject:v12];
      }

      else
      {
        if (v20)
        {
          [(ATXSpotlightClient *)&v35 rerankRecents_Normal:v36];
        }

        v21 = [v4 objectAtIndexedSubscript:v18];
        v22 = [v21 engagementTime];
        [v22 timeIntervalSinceReferenceDate];
        v24 = v23;
        v25 = [v12 engagementTime];
        [v25 timeIntervalSinceReferenceDate];
        v27 = v26;

        if (v24 < v27)
        {
          v28 = __atxlog_handle_ui();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
          {
            [(ATXSpotlightClient *)&v33 rerankRecents_Normal:v34];
          }
        }
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v41 objects:v45 count:16];
    v5 = v32;
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_28:

  return v4;
}

uint64_t __43__ATXSpotlightClient_rerankRecents_Normal___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) title];
  v5 = [v3 title];
  if ([v4 isEqualToString:v5])
  {
    v6 = [*(a1 + 32) encodedNormalizedTopic];
    v7 = [v3 encodedNormalizedTopic];
    v8 = [v6 isEqualToData:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)rerankRecents_Filter:(id)a3 removingType:(int)a4
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__ATXSpotlightClient_rerankRecents_Filter_removingType___block_invoke;
  v8[3] = &__block_descriptor_36_e27_B16__0___SFEngagedResult__8l;
  v9 = a4;
  v5 = [a3 _pas_filteredArrayWithTest:v8];
  v6 = [a1 rerankRecents_Normal:v5];

  return v6;
}

BOOL __56__ATXSpotlightClient_rerankRecents_Filter_removingType___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 type];
  v6 = *(a1 + 32);
  v4 = (a1 + 32);
  v5 = v6;
  if (v3 == v6)
  {
    v7 = __atxlog_handle_ui();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __56__ATXSpotlightClient_rerankRecents_Filter_removingType___block_invoke_cold_1(v4, v7);
    }
  }

  return v3 != v5;
}

+ (id)rerankRecents_LimitCount:(id)a3 oneCountDays:(double)a4 twoCountDays:(double)a5
{
  v56 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v37 = [v10 dateByAddingTimeInterval:a4 * -86400.0];
  v38 = v10;
  v36 = [v10 dateByAddingTimeInterval:a5 * -86400.0];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v7;
  v11 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v52;
    do
    {
      v14 = 0;
      do
      {
        if (*v52 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v51 + 1) + 8 * v14);
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __73__ATXSpotlightClient_rerankRecents_LimitCount_oneCountDays_twoCountDays___block_invoke;
        v50[3] = &unk_1E80C6290;
        v50[4] = v15;
        v16 = [v8 indexOfObjectPassingTest:v50];
        v17 = __atxlog_handle_ui();
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
        if (v16 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v18)
          {
            [(ATXSpotlightClient *)&v48 rerankRecents_Normal:v49];
          }

          [v8 addObject:v15];
          [v9 addObject:&unk_1F3E60600];
        }

        else
        {
          if (v18)
          {
            [ATXSpotlightClient rerankRecents_LimitCount:v47 oneCountDays:? twoCountDays:?];
          }

          v19 = [v9 objectAtIndexedSubscript:v16];
          v20 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v19, "integerValue") + 1}];
          [v9 replaceObjectAtIndex:v16 withObject:v20];

          v21 = [v8 objectAtIndexedSubscript:v16];
          v22 = [v21 engagementTime];
          [v22 timeIntervalSinceReferenceDate];
          v24 = v23;
          v25 = [v15 engagementTime];
          [v25 timeIntervalSinceReferenceDate];
          v27 = v26;

          if (v24 < v27)
          {
            v28 = __atxlog_handle_ui();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
            {
              [(ATXSpotlightClient *)&v44 rerankRecents_Normal:v45];
            }
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v12);
  }

  v29 = __atxlog_handle_ui();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    [ATXSpotlightClient rerankRecents_LimitCount:v8 oneCountDays:? twoCountDays:?];
  }

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __73__ATXSpotlightClient_rerankRecents_LimitCount_oneCountDays_twoCountDays___block_invoke_339;
  v40[3] = &unk_1E80C62D8;
  v41 = v9;
  v42 = v37;
  v43 = v36;
  v30 = v36;
  v31 = v37;
  v32 = v9;
  v33 = [v8 _pas_filteredArrayWithIndexedTest:v40];
  v34 = __atxlog_handle_ui();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    [ATXSpotlightClient rerankRecents_LimitCount:v33 oneCountDays:? twoCountDays:?];
  }

  return v33;
}

uint64_t __73__ATXSpotlightClient_rerankRecents_LimitCount_oneCountDays_twoCountDays___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) title];
  v5 = [v3 title];
  if ([v4 isEqualToString:v5])
  {
    v6 = [*(a1 + 32) encodedNormalizedTopic];
    v7 = [v3 encodedNormalizedTopic];
    v8 = [v6 isEqualToData:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __73__ATXSpotlightClient_rerankRecents_LimitCount_oneCountDays_twoCountDays___block_invoke_339(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [a1[4] objectAtIndexedSubscript:a3];
  v7 = [v6 unsignedIntegerValue];

  if (v7 == 2)
  {
    v14 = [v5 engagementTime];
    [v14 timeIntervalSinceReferenceDate];
    v16 = v15;
    [a1[6] timeIntervalSinceReferenceDate];
    v18 = v17;

    if (v16 < v18)
    {
      v13 = __atxlog_handle_ui();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __73__ATXSpotlightClient_rerankRecents_LimitCount_oneCountDays_twoCountDays___block_invoke_339_cold_1(v5);
      }

      goto LABEL_9;
    }

LABEL_10:
    v19 = 1;
    goto LABEL_11;
  }

  if (v7 != 1)
  {
    goto LABEL_10;
  }

  v8 = [v5 engagementTime];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;
  [a1[5] timeIntervalSinceReferenceDate];
  v12 = v11;

  if (v10 >= v12)
  {
    goto LABEL_10;
  }

  v13 = __atxlog_handle_ui();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __73__ATXSpotlightClient_rerankRecents_LimitCount_oneCountDays_twoCountDays___block_invoke_339_cold_2(v5);
  }

LABEL_9:

  v19 = 0;
LABEL_11:

  return v19;
}

+ (BOOL)_isEqualRecentTopics:(id)a3 otherRecentTopics:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  if (v7 != [v6 count])
  {
LABEL_10:
    v18 = 0;
    goto LABEL_11;
  }

  if ([v5 count])
  {
    v8 = 0;
    while (1)
    {
      v9 = [v5 objectAtIndexedSubscript:v8];
      v10 = [v6 objectAtIndexedSubscript:v8];
      v11 = [v9 engagementDate];
      v12 = [v10 engagementDate];
      v13 = [v11 isEqualToDate:v12];

      if (!v13)
      {
        break;
      }

      v14 = [v9 topic];
      v15 = [v14 identifier];
      v16 = [v10 topic];
      v17 = [v16 identifier];
      v18 = [v15 isEqualToString:v17];

      if ((v18 & 1) != 0 && [v5 count] > ++v8)
      {
        continue;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v18 = 1;
LABEL_11:

  return v18;
}

+ (id)_resultWithSuggestion:(id)a3
{
  v4 = a3;
  v5 = [v4 executableSpecification];
  v6 = [v5 executableType];

  if (v6 == 2)
  {
    v7 = __atxlog_handle_ui();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: _resultWithSuggestion is ATXSuggestionExecutableTypeAction", buf, 2u);
    }

    v8 = [a1 _resultWithActionSuggestion:v4];
LABEL_17:
    v19 = v8;
    goto LABEL_18;
  }

  v9 = [v4 executableSpecification];
  v10 = [v9 executableType];

  if (v10 == 5)
  {
    v11 = __atxlog_handle_ui();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: _resultWithSuggestion is ATXSuggestionExecutableTypeAppClip", v23, 2u);
    }

    v8 = [a1 _resultWithAppClipSuggestion:v4];
    goto LABEL_17;
  }

  v12 = [v4 executableSpecification];
  v13 = [v12 executableType];

  if (v13 == 9)
  {
    v14 = __atxlog_handle_ui();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_1BF549000, v14, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: _resultWithSuggestion is ATXSuggestionExecutableTypeShortcutsAction", v22, 2u);
    }

    v8 = [a1 _resultWithShortcutsActionSuggestion:v4];
    goto LABEL_17;
  }

  v15 = [v4 executableSpecification];
  v16 = [v15 executableType];

  v17 = __atxlog_handle_ui();
  v18 = v17;
  if (v16 == 10)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_1BF549000, v18, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: _resultWithSuggestion is ATXSuggestionExecutableTypeLinkAction", v21, 2u);
    }

    v8 = [a1 _resultWithLinkActionSuggestion:v4];
    goto LABEL_17;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [ATXSpotlightClient _resultWithSuggestion:v4];
  }

  v19 = 0;
LABEL_18:

  return v19;
}

+ (id)_resultWithLinkActionSuggestion:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = __atxlog_handle_ui();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uiSpecification];
    v7 = [v6 title];
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: _resultWithLinkActionSuggestion %@", &v11, 0xCu);
  }

  v8 = [v4 linkActionExecutableObject];
  if (v8)
  {
    v9 = [a1 _resultWithLinkActionContainer:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_resultWithLinkActionContainer:(id)a3
{
  v33[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 image];

  if (v5)
  {
    v6 = [v4 image];
    v7 = [a1 _imageWithLinkImage:v6];
  }

  else
  {
    v7 = objc_opt_new();
    v6 = [v4 bundleId];
    [v7 setBundleIdentifier:v6];
  }

  v8 = objc_alloc(MEMORY[0x1E69E0BC0]);
  v9 = [v4 action];
  v10 = [v4 bundleId];
  v11 = [v8 initWithAction:v9 appBundleIdentifier:v10 extensionBundleIdentifier:0 authenticationPolicy:0];

  v31 = 0;
  v12 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v31];
  v13 = v31;
  if (v13)
  {
    v14 = __atxlog_handle_ui();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[ATXSpotlightClient _resultWithLinkActionContainer:];
    }

    v15 = 0;
  }

  else
  {
    v16 = [v11 subtitle];
    if (v16)
    {
      v17 = [v11 subtitle];
      v33[0] = v17;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
    }

    else
    {
      v14 = MEMORY[0x1E695E0F0];
    }

    v18 = [v11 title];
    v19 = [a1 _accessoryImageWithContextualAction:v11];
    v20 = [a1 detailedRowCardSectionWithTitle:v18 subtitles:v14 thumbnail:v7 trailingImage:v19];

    v21 = objc_opt_new();
    [v21 setIsRunnableWorkflow:1];
    [v21 setIntentMessageData:v12];
    v22 = [v11 identifier];
    [v21 setIntentMessageName:v22];

    [v20 setCommand:v21];
    v23 = [v11 identifier];
    [v20 setCommandDetail:v23];

    v15 = objc_opt_new();
    [v11 uniqueIdentifier];
    v24 = v30 = v7;
    [v15 setIdentifier:v24];

    v25 = [v11 associatedAppBundleIdentifier];
    [v15 setApplicationBundleIdentifier:v25];

    v26 = [v15 applicationBundleIdentifier];
    [v15 setResultBundleId:v26];

    v27 = objc_opt_new();
    v32 = v20;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
    [v27 setCardSections:v28];

    [v15 setInlineCard:v27];
    v7 = v30;
  }

  return v15;
}

+ (id)_resultWithShortcutsActionSuggestion:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = __atxlog_handle_ui();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uiSpecification];
    v7 = [v6 title];
    v17 = 138412290;
    v18 = v7;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: _resultWithShortcutsActionSuggestion %@", &v17, 0xCu);
  }

  v8 = [v4 atxShortcutsActionExecutableObject];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 contextualAction];
    v11 = [v4 uiSpecification];
    v12 = [v11 subtitle];

    v13 = [v4 uiSpecification];
    v14 = [v13 title];
    v15 = [a1 _resultWithContextualAction:v10 title:v14 subtitle:v12];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)_resultWithContextualAction:(id)a3 title:(id)a4 subtitle:(id)a5
{
  v63[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v8;
    v12 = objc_alloc_init(MEMORY[0x1E69ACDC8]);
    if (![a1 _isAutoShortcutEnabledForSpotlight:v11])
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v10)
    {
LABEL_9:
      v21 = 0;
      goto LABEL_33;
    }

    v58 = v12;
    v13 = [v10 integerValue];
    v14 = [MEMORY[0x1E695DF00] now];
    [v14 timeIntervalSinceReferenceDate];
    v16 = v13 - v15;

    v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v18 = [v8 alarmName];
    v19 = v18;
    if (v16 <= 3600.0)
    {
      v22 = objc_opt_new();
      [v22 setUnitsStyle:2];
      [v22 setAllowedUnits:64];
      v23 = 60.0;
      if (v16 > 60.0)
      {
        v23 = v16;
      }

      v24 = [v22 stringFromTimeInterval:v23];
      v25 = MEMORY[0x1E696AEC0];
      [v17 localizedStringForKey:@"SPOTLIGHT_TIME_TO_ALARM" value:&stru_1F3E050C8 table:0];
      v56 = v17;
      v26 = v11;
      v28 = v27 = v9;
      v20 = [v25 localizedStringWithFormat:v28, v19, v24];

      v9 = v27;
      v11 = v26;
      v17 = v56;

      v10 = v22;
    }

    else
    {
      v20 = v18;
    }

    v10 = v20;
    v12 = v58;
  }

  v29 = objc_autoreleasePoolPush();
  v61 = 0;
  v30 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v61];
  v31 = v61;
  v32 = v29;
  v33 = v31;
  objc_autoreleasePoolPop(v32);
  if (v33)
  {
    v34 = v30;
    v35 = __atxlog_handle_ui();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      +[ATXSpotlightClient _resultWithContextualAction:title:subtitle:];
    }

    v21 = 0;
  }

  else
  {
    v36 = [v8 icon];

    if (v36)
    {
      v37 = [v8 icon];
      v35 = [a1 _imageWithContextualActionIcon:v37];
    }

    else
    {
      v37 = __atxlog_handle_ui();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        +[ATXSpotlightClient _resultWithContextualAction:title:subtitle:];
      }

      v35 = 0;
    }

    v38 = [a1 _iconForParameterizedAutoShortcutContextualAction:v11 provider:v12];
    v59 = v12;
    if (v38)
    {
      v39 = __atxlog_handle_ui();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BF549000, v39, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: using icon from parameterized app shortcut", buf, 2u);
      }

      v40 = [a1 _imageWithContextualActionIcon:v38];
    }

    else
    {
      v40 = [a1 _accessoryImageWithContextualAction:v8];
    }

    v57 = v9;
    v54 = v40;
    v55 = v38;
    if (v10)
    {
      v63[0] = v10;
      v41 = v40;
      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:1];
      v43 = [a1 detailedRowCardSectionWithTitle:v9 subtitles:v42 thumbnail:v35 trailingImage:v41];
    }

    else
    {
      v43 = [a1 detailedRowCardSectionWithTitle:v9 subtitles:MEMORY[0x1E695E0F0] thumbnail:v35 trailingImage:v40];
    }

    v44 = objc_opt_new();
    [v44 setIsRunnableWorkflow:1];
    [v44 setIntentMessageData:v30];
    v45 = [v8 identifier];
    [v44 setIntentMessageName:v45];

    v46 = [v8 settingBiomeStreamIdentifier];
    [v44 setBiomeStreamIdentifier:v46];

    [v43 setCommand:v44];
    v47 = [v8 identifier];
    [v43 setCommandDetail:v47];

    v34 = v30;
    v21 = objc_opt_new();
    v48 = [v8 uniqueIdentifier];
    [v21 setIdentifier:v48];

    v49 = [v8 associatedAppBundleIdentifier];
    [v21 setApplicationBundleIdentifier:v49];

    v50 = [v21 applicationBundleIdentifier];
    [v21 setResultBundleId:v50];

    v51 = objc_opt_new();
    v62 = v43;
    v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
    [v51 setCardSections:v52];

    [v21 setInlineCard:v51];
    v9 = v57;
    v12 = v59;
    v33 = 0;
  }

LABEL_33:

  return v21;
}

+ (id)_accessoryImageWithContextualAction:(id)a3
{
  v4 = a3;
  v5 = [v4 accessoryIcon];
  if (v5)
  {
    v6 = [a1 _imageWithContextualActionIcon:v5];
LABEL_5:
    v7 = v6;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [a1 _imageWithDirectionsContextualAction:v4];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

+ (id)_imageWithLinkImage:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(getINUISearchFoundationImageAdapterClass());
  v5 = [v3 inImage];

  v6 = [v4 initWithIntentsImage:v5];

  return v6;
}

+ (id)_imageWithContextualActionIcon:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 applicationBundleIdentifier];
  if (v5)
  {
    v6 = __atxlog_handle_ui();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v5;
      _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: using contextualAction.icon.applicationBundleIdentifier %@", &v17, 0xCu);
    }

    v7 = objc_opt_new();
    if ([v5 isEqualToString:@"com.apple.mobilesafari"])
    {
      [v7 setIconType:1];
    }

    else
    {
      [v7 setBundleIdentifier:v5];
    }
  }

  else
  {
    v8 = [v4 imageData];

    if (v8)
    {
      v9 = __atxlog_handle_ui();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: using icon.imageData ", &v17, 2u);
      }

      v7 = objc_alloc_init(MEMORY[0x1E69CA138]);
      v10 = [v4 imageData];
      [v7 setImageData:v10];

      [v4 imageScale];
      [v7 setScale:?];
    }

    else
    {
      v11 = [v4 systemName];

      v12 = __atxlog_handle_ui();
      v13 = v12;
      if (v11)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v4 systemName];
          v17 = 138412290;
          v18 = v14;
          _os_log_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: using icon.systemName %@", &v17, 0xCu);
        }

        v7 = objc_alloc_init(MEMORY[0x1E69CA4C8]);
        v15 = [v4 systemName];
        [v7 setSymbolName:v15];

        [v7 setIsTemplate:1];
      }

      else
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          +[ATXSpotlightClient _imageWithContextualActionIcon:];
        }

        v7 = 0;
      }
    }
  }

  [v7 setCornerRoundingStyle:{objc_msgSend(a1, "_imageCornerRoundingStyleForIconDisplayStyle:", objc_msgSend(v4, "displayStyle"))}];

  return v7;
}

+ (id)_imageWithDirectionsContextualAction:(id)a3
{
  v3 = [a3 navigationType];
  if (v3 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&off_1E80C6328 + v3);
  }

  v5 = objc_alloc_init(MEMORY[0x1E69CA4C8]);
  [v5 setSymbolName:v4];
  [v5 setIsTemplate:1];

  return v5;
}

+ (id)_resultWithActionSuggestion:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 executableSpecification];
  v6 = [v5 executableClassString];

  v7 = __atxlog_handle_ui();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v6;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: _resultWithActionSuggestion executableClassString:%@", &v14, 0xCu);
  }

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v6 isEqualToString:v9];

  if (v10)
  {
    v11 = [v4 atxActionExecutableObject];
    if (v11)
    {
      v12 = [a1 _resultWithATXAction:v11];
      goto LABEL_9;
    }
  }

  else
  {
    v11 = __atxlog_handle_ui();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[ATXSpotlightClient _resultWithActionSuggestion:];
    }
  }

  v12 = 0;
LABEL_9:

  return v12;
}

+ (id)_resultWithIntent:(id)a3 title:(id)a4 subtitle:(id)a5 bundleIdForDisplay:(id)a6 appIcon:(id)a7
{
  v60 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v52 = a6;
  v16 = a7;
  v17 = [MEMORY[0x1E696AE30] processInfo];
  v18 = [v17 processName];
  LODWORD(a5) = [v18 isEqualToString:@"duetexpertd"];

  if (a5)
  {
    [ATXSpotlightClient _resultWithIntent:a2 title:a1 subtitle:? bundleIdForDisplay:? appIcon:?];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v16 setBundleIdentifier:@"com.apple.mobilephone"];
  }

  v19 = __atxlog_handle_ui();
  v20 = v52;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v57 = v14;
    v58 = 2112;
    v59 = v13;
    _os_log_impl(&dword_1BF549000, v19, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: _resultWithIntent [%@] intent:%@", buf, 0x16u);
  }

  INUISearchFoundationImageAdapterClass = getINUISearchFoundationImageAdapterClass();
  if (v13 && (v22 = INUISearchFoundationImageAdapterClass, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {

    v23 = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:v13 response:0];
    v24 = [v23 _keyImage];
    v25 = __atxlog_handle_ui();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v24 _identifier];
      *buf = 138412290;
      v57 = v26;
      _os_log_impl(&dword_1BF549000, v25, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: _resultWithIntent intentsImage._identifier:%@", buf, 0xCu);
    }

    if (v24)
    {
      v15 = [[v22 alloc] initWithIntentsImage:v24];
      [v15 setSize:{32.0, 32.0}];
    }

    else
    {
      v15 = 0;
    }

    v49 = 0;
    v27 = MEMORY[0x1E695E0F0];
    v20 = v52;
  }

  else if (v15)
  {
    v49 = v15;
    v55 = v15;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
    v15 = 0;
  }

  else
  {
    v49 = 0;
    v27 = MEMORY[0x1E695E0F0];
  }

  v50 = v16;
  v51 = v14;
  v28 = [a1 detailedRowCardSectionWithTitle:v14 subtitles:v27 thumbnail:v16 trailingImage:v15];
  v29 = objc_opt_new();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v38 = [v13 backingStore];
    v39 = [v38 data];
    [v29 setIntentMessageData:v39];

LABEL_25:
    v40 = [v13 _intentInstanceDescription];
    v41 = [v40 type];
    [v29 setIntentMessageName:v41];

    [v29 setApplicationBundleIdentifier:v20];
    [v28 setCommand:v29];
    v42 = objc_opt_new();
    v43 = objc_opt_new();
    v44 = [v43 UUIDString];
    [v42 setIdentifier:v44];

    [v42 setApplicationBundleIdentifier:v20];
    v45 = [v42 applicationBundleIdentifier];
    [v42 setResultBundleId:v45];

    v46 = objc_opt_new();
    v54 = v28;
    v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
    [v46 setCardSections:v47];

    [v42 setInlineCard:v46];
    goto LABEL_26;
  }

  v30 = v13;
  v31 = objc_alloc(MEMORY[0x1E69E0BC0]);
  v32 = [v30 linkAction];
  v33 = [v31 initWithAction:v32 appBundleIdentifier:v20 extensionBundleIdentifier:0 authenticationPolicy:0];

  v53 = 0;
  v34 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v33 requiringSecureCoding:1 error:&v53];
  v35 = v53;
  if (v34)
  {
    [v29 setIsRunnableWorkflow:1];
    [v29 setIntentMessageData:v34];
    v36 = [v33 identifier];
    [v29 setIntentMessageName:v36];

    v37 = [v33 identifier];
    [v28 setCommandDetail:v37];
  }

  else
  {
    v37 = __atxlog_handle_ui();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      +[ATXSpotlightClient _resultWithLinkActionContainer:];
    }
  }

  v20 = v52;
  if (v34)
  {
    goto LABEL_25;
  }

  v42 = 0;
LABEL_26:

  return v42;
}

+ (id)_resultWithAppBundleId:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [ATXApplicationRecord localizedNameForBundle:v3];
  if (![v4 length])
  {
    v5 = __atxlog_handle_ui();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      +[ATXSpotlightClient _resultWithAppBundleId:];
    }
  }

  v6 = objc_opt_new();
  [v6 setBundleIdentifier:v3];
  v7 = objc_alloc_init(MEMORY[0x1E69CA1A0]);
  [v7 setApplicationBundleIdentifier:v3];
  v8 = objc_opt_new();
  [v8 setShouldUseCompactDisplay:1];
  [v8 setThumbnail:v6];
  v9 = [MEMORY[0x1E69CA3A0] textWithString:v4];
  [v8 setTitle:v9];

  [v8 setCommand:v7];
  v10 = objc_alloc_init(ATXSuggestionSearchResult);
  [(ATXSuggestionSearchResult *)v10 setIdentifier:v3];
  [(ATXSuggestionSearchResult *)v10 setApplicationBundleIdentifier:v3];
  v11 = [(ATXSuggestionSearchResult *)v10 applicationBundleIdentifier];
  [(ATXSuggestionSearchResult *)v10 setResultBundleId:v11];

  v12 = objc_alloc_init(MEMORY[0x1E69C9F00]);
  v15[0] = v8;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [v12 setCardSections:v13];

  [(ATXSuggestionSearchResult *)v10 setInlineCard:v12];

  return v10;
}

+ (id)_resultWithATXAction:(id)a3
{
  v63 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 actionTitle];
  v6 = [v4 _bundleIdForDisplay];
  v7 = [v4 actionSubtitle];
  v8 = +[ATXSpotlightZKWTrialClientWrapper sharedInstance];
  keyExistsAndHasValidFormat[0] = 0;
  if (CFPreferencesGetAppBooleanValue(@"zkwShowNSUAApp", *MEMORY[0x1E698B030], keyExistsAndHasValidFormat) || [v8 showNSUASuggestionsAsAppLaunches])
  {
    v9 = [a1 _resultWithAppBundleId:v6];
    goto LABEL_4;
  }

  v11 = objc_opt_new();
  if ([v6 isEqualToString:@"com.apple.mobilesafari"])
  {
    [v11 setIconType:1];
  }

  else
  {
    v12 = [v4 userActivity];
    v13 = [v12 webpageURL];
    v14 = ATXBundleIdReplacementForBundleIdWithWebpageURLHint();

    [v11 setBundleIdentifier:v14];
    v6 = v14;
  }

  v15 = __atxlog_handle_ui();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v4 bundleId];
    *keyExistsAndHasValidFormat = 138412546;
    v60 = v5;
    v61 = 2112;
    v62 = v16;
    _os_log_impl(&dword_1BF549000, v15, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: _resultWithATXAction [%@] action.bundleId=%@", keyExistsAndHasValidFormat, 0x16u);
  }

  v17 = [v4 intent];

  if (!v17)
  {
    v19 = [v4 userActivity];
    v20 = [v19 webpageURL];

    if (v20)
    {
      v21 = [v4 userActivity];
      v22 = [v21 webpageURL];

      v23 = [v22 host];
      v24 = [v23 isEqualToString:@"trackingshipment.apple.com"];

      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v26 = [v22 absoluteString];

        if (v26)
        {
          v27 = [v22 schemelessAbsoluteString];

          v7 = v27;
        }

        v25 = [a1 _symbolImageForName:@"link"];
      }

      v28 = __atxlog_handle_ui();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *keyExistsAndHasValidFormat = 138412546;
        v60 = v5;
        v61 = 2112;
        v62 = v22;
        _os_log_impl(&dword_1BF549000, v28, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: _resultWithATXAction [%@] userActivity webpageURL:%@", keyExistsAndHasValidFormat, 0x16u);
      }
    }

    else
    {
      v25 = 0;
    }

    if (v7)
    {
      v58 = v7;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
    }

    else
    {
      v29 = MEMORY[0x1E695E0F0];
    }

    v55 = v29;
    v56 = v11;
    v54 = v25;
    v30 = [a1 detailedRowCardSectionWithTitle:v5 subtitles:v29 thumbnail:v11 trailingImage:v25];
    v31 = [v4 userActivity];
    v32 = [v31 webpageURL];

    if (v32)
    {
      v33 = objc_opt_new();
      v34 = MEMORY[0x1E69CA320];
      v35 = [v4 userActivity];
      v36 = [v35 webpageURL];
      v37 = [v34 punchoutWithURL:v36];
      [v33 setPunchout:v37];

      [v30 setCommand:v33];
      v38 = v30;
    }

    else
    {
      v39 = [v4 userActivity];

      if (v39)
      {
        v33 = objc_alloc_init(MEMORY[0x1E69CA158]);
        v40 = [v4 userActivityString];
        [v33 setUserActivityRequiredString:v40];

        [v33 setApplicationBundleIdentifier:v6];
        v38 = v30;
        v41 = v30;
      }

      else
      {
        if ([v4 actionType] == 6)
        {
          v33 = objc_opt_new();
          v42 = [v4 menuItemPath];
          v43 = [v42 lastObject];
          [v33 setMenuItemIdentifier:v43];

          [v33 setApplicationBundleIdentifier:v6];
          v44 = [a1 _symbolImageForName:@"filemenu.and.selection"];
          [v44 setSize:{36.0, 36.0}];
          [v44 setBadgingImage:v56];
          v38 = v30;
          [v30 setThumbnail:v44];
          [v30 setCommand:v33];

          goto LABEL_40;
        }

        if ([v4 actionType] != 7)
        {
          v33 = __atxlog_handle_ui();
          v38 = v30;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
          {
            +[ATXSpotlightClient _resultWithATXAction:];
          }

          goto LABEL_40;
        }

        v33 = objc_opt_new();
        v45 = [v4 parameterKeysForToolInvocation];
        v46 = [v45 count];

        v38 = v30;
        if (v46)
        {
          v47 = [v4 encodedToolInvocation];
          [v33 setToolInvocationData:v47];
        }

        v48 = [v4 toolInvocationID];
        [v33 setToolIdentifier:v48];

        v41 = v30;
      }

      [v41 setCommand:v33];
    }

LABEL_40:
    v18 = v54;

    v9 = objc_opt_new();
    v49 = objc_opt_new();
    v50 = [v49 UUIDString];
    [v9 setIdentifier:v50];

    [v9 setApplicationBundleIdentifier:v6];
    v51 = [v9 applicationBundleIdentifier];
    [v9 setResultBundleId:v51];

    v52 = objc_opt_new();
    v57 = v38;
    v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
    [v52 setCardSections:v53];

    [v9 setInlineCard:v52];
    v11 = v56;
    goto LABEL_41;
  }

  v18 = [v4 intent];
  v9 = [a1 _resultWithIntent:v18 title:v5 subtitle:v7 bundleIdForDisplay:v6 appIcon:v11];
LABEL_41:

LABEL_4:

  return v9;
}

+ (id)_symbolImageForName:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setSymbolName:v3];

  [v4 setIsTemplate:1];

  return v4;
}

+ (id)_resultWithAppClipSuggestion:(id)a3
{
  v54[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 appClipHeroAppPredictionExecutableObject];
  v6 = v5;
  if (!v5)
  {
    v21 = 0;
    goto LABEL_26;
  }

  v7 = [v5 clipMetadata];
  if (v7)
  {
    v8 = [v4 uiSpecification];
    v9 = [v8 subtitle];

    v10 = [v7 localizedSubtitleForClipSuggestion];
    if ([v10 isEqualToString:v9])
    {
      v11 = [v4 uiSpecification];
      v12 = [v11 title];

      v13 = [v4 uiSpecification];
      v14 = [v13 subtitle];

      v10 = v14;
      v9 = v12;
    }

    v15 = [v7 fullAppCachedIconFilePath];

    if (v15)
    {
      v16 = objc_alloc(MEMORY[0x1E69CA548]);
      v17 = MEMORY[0x1E695DFF8];
      v18 = [v7 fullAppCachedIconFilePath];
      v19 = [v17 fileURLWithPath:v18];
      v20 = [v16 initWithURL:v19];
    }

    else
    {
      v22 = [v7 clipBusinessIconURL];

      if (v22)
      {
        v23 = objc_alloc(MEMORY[0x1E69CA548]);
        v24 = [v7 clipBusinessIconURL];
      }

      else
      {
        v20 = [v7 fullAppIconURL];

        if (!v20)
        {
LABEL_15:
          [v20 setCornerRoundingStyle:3];
          v50 = v20;
          if (v10)
          {
            v54[0] = v10;
            v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
            v26 = [a1 detailedRowCardSectionWithTitle:v9 subtitles:v25 thumbnail:v20 trailingImage:0];
          }

          else
          {
            v26 = [a1 detailedRowCardSectionWithTitle:v9 subtitles:MEMORY[0x1E695E0F0] thumbnail:v20 trailingImage:0];
          }

          v48 = v9;
          v49 = v10;
          v27 = objc_alloc_init(MEMORY[0x1E69CA320]);
          v28 = [v6 clipMetadata];
          v29 = [v28 clipURL];
          if (v29)
          {
            v30 = [v6 clipMetadata];
            v31 = [v30 clipURL];
            v53 = v31;
            v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
            [v27 setUrls:v32];
          }

          else
          {
            [v27 setUrls:MEMORY[0x1E695E0F0]];
          }

          [v27 setHasClip:1];
          v52 = v27;
          v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
          [v26 setPunchoutOptions:v33];

          [v26 setThumbnail:v50];
          v34 = objc_alloc_init(MEMORY[0x1E69C9E68]);
          [v26 setAction:v34];

          v35 = [v7 clipOpenButtonTitle];
          v36 = [v35 uppercaseString];
          v37 = [v26 action];
          [v37 setLabel:v36];

          v21 = objc_opt_new();
          [v21 setType:23];
          [v21 setApplicationBundleIdentifier:@"com.apple.application"];
          v38 = [v21 applicationBundleIdentifier];
          [v21 setResultBundleId:v38];

          v39 = MEMORY[0x1E696AEC0];
          v40 = [v6 clipMetadata];
          v41 = [v40 webClipID];
          v42 = v41;
          if (v41)
          {
            v43 = v41;
          }

          else
          {
            v43 = &stru_1F3E050C8;
          }

          v44 = [v39 stringWithFormat:@"com.apple.appclip-%@", v43];
          [v21 setIdentifier:v44];

          [v21 setNearbyBusinessesString:&stru_1F3E050C8];
          v45 = objc_opt_new();
          v51 = v26;
          v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
          [v45 setCardSections:v46];

          [v21 setInlineCard:v45];
          goto LABEL_25;
        }

        v23 = objc_alloc(MEMORY[0x1E69CA548]);
        v24 = [v7 fullAppIconURL];
      }

      v18 = v24;
      v20 = [v23 initWithURL:v24];
    }

    goto LABEL_15;
  }

  v21 = 0;
LABEL_25:

LABEL_26:

  return v21;
}

+ (id)detailedRowCardSectionWithTitle:(id)a3 subtitles:(id)a4 thumbnail:(id)a5 trailingImage:(id)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_opt_new();
  [v13 setShouldUseCompactDisplay:1];
  [v13 setThumbnail:v11];
  [v13 setTrailingThumbnail:v12];
  v23 = v9;
  v14 = [MEMORY[0x1E69CA3A0] textWithString:v9];
  [v13 setTitle:v14];

  v15 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = v10;
  v17 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [MEMORY[0x1E69CA3A0] textWithString:*(*(&v24 + 1) + 8 * i)];
        [v15 addObject:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v18);
  }

  [v13 setDescriptions:v15];

  return v13;
}

+ (BOOL)_isAutoShortcutEnabledForSpotlight:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 bundleIdentifier];
  v6 = [a1 isAutoShortcutsEnabledForSpotlightForBundleId:v5];

  if ((v6 & 1) == 0)
  {
    v11 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v4 bundleIdentifier];
      v21 = 138412290;
      v22 = v17;
      _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "ATXSFL: All auto shortcuts are disabled for app: %@", &v21, 0xCu);
LABEL_10:
    }

LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  v7 = [v4 bundleIdentifier];
  v8 = [v4 phrase];
  v9 = [v8 signature];
  v10 = [a1 isAutoShortcutEnabledForSpotlightForBundleId:v7 signature:v9];

  v11 = __atxlog_handle_zkw_hide();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if ((v10 & 1) == 0)
  {
    if (v12)
    {
      v17 = [v4 phrase];
      v18 = [v17 signature];
      v19 = [v4 bundleIdentifier];
      v21 = 138412546;
      v22 = v18;
      v23 = 2112;
      v24 = v19;
      _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "ATXSFL: Auto shortcut is hidden for shortcut with signature: %@ from app: %@", &v21, 0x16u);

      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v12)
  {
    v13 = [v4 bundleIdentifier];
    v14 = [v4 phrase];
    v15 = [v14 signature];
    v21 = 138412546;
    v22 = v13;
    v23 = 2112;
    v24 = v15;
    _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "ATXSFL: Can display auto shortcut for app: %@ with shortcut signature: %@", &v21, 0x16u);
  }

  v16 = 1;
LABEL_12:

  return v16;
}

+ (BOOL)isAutoShortcutsEnabledForSpotlightForBundleId:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E695DFD8]);
  v5 = CFPreferencesCopyValue(@"SBSearchDisabledBundles", @"com.apple.spotlightui", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E695DEC8] array];
  }

  v8 = v7;

  v9 = [MEMORY[0x1E695DF70] arrayWithArray:v8];
  [v9 removeObject:@"com.apple.CloudDocs.MobileDocumentsFileProvider"];
  [v9 removeObject:@"com.apple.CloudDocs.iCloudDriveFileProvider"];
  [v9 removeObject:@"com.apple.CloudDocs.iCloudDriveFileProviderManaged"];
  if ([v8 containsObject:@"com.apple.DocumentsApp"])
  {
    [v9 addObject:@"com.apple.CloudDocs.MobileDocumentsFileProvider"];
    [v9 addObject:@"com.apple.CloudDocs.iCloudDriveFileProvider"];
    [v9 addObject:@"com.apple.CloudDocs.iCloudDriveFileProviderManaged"];
    [v9 addObject:@"com.apple.FileProvider.LocalStorage"];
  }

  v10 = [MEMORY[0x1E695DFA8] setWithArray:v9];

  v11 = [v4 initWithSet:v10];
  if ([v11 containsObject:v3])
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    v13 = objc_opt_new();
    v12 = [v13 autoShortcutHasBeenHiddenForIdentifier:v3] ^ 1;
  }

  return v12;
}

+ (BOOL)isAutoShortcutEnabledForSpotlightForBundleId:(id)a3 signature:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [v6 stringByAppendingString:v5];

  LOBYTE(v6) = [v7 autoShortcutHasBeenHiddenForIdentifier:v8];
  return v6 ^ 1;
}

+ (id)_iconForParameterizedAutoShortcutContextualAction:(id)a3 provider:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 phrase];
    v9 = [v8 parameterIdentifier];

    if (!v9)
    {
      v12 = __atxlog_handle_blending();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v6 bundleIdentifier];
        v18 = [v6 actionIdentifier];
        *buf = 138412546;
        v27 = v17;
        v28 = 2112;
        v29 = v18;
        _os_log_impl(&dword_1BF549000, v12, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: [AutoShortcut] not a phrase with parameters, use contextualAction icon %@, %@", buf, 0x16u);
      }

      v14 = 0;
      goto LABEL_23;
    }

    v25 = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    v24 = 0;
    v11 = [v7 propertiesForIdentifiers:v10 error:&v24];
    v12 = v24;

    if (v12)
    {
      v13 = __atxlog_handle_blending();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ATXSpotlightClient _iconForParameterizedAutoShortcutContextualAction:v6 provider:?];
      }
    }

    else
    {
      if (v11)
      {
        v19 = [v11 objectForKeyedSubscript:v9];
        v13 = v19;
        if (v19)
        {
          v20 = [v19 value];
          v21 = [v20 displayRepresentation];

          v22 = [v21 image];
          v14 = [a1 _contextualActionIconFromLNImage:v22];
        }

        else
        {
          v21 = __atxlog_handle_blending();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            [ATXSpotlightClient _iconForParameterizedAutoShortcutContextualAction:v6 provider:?];
          }

          v14 = 0;
        }

        goto LABEL_22;
      }

      v13 = __atxlog_handle_blending();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ATXSpotlightClient _iconForParameterizedAutoShortcutContextualAction:v6 provider:?];
      }
    }

    v14 = 0;
LABEL_22:

LABEL_23:
    goto LABEL_24;
  }

  v9 = __atxlog_handle_blending();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [0 bundleIdentifier];
    v16 = [0 actionIdentifier];
    *buf = 138412546;
    v27 = v15;
    v28 = 2112;
    v29 = v16;
    _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: [AutoShortcut] is not an Auto Shortcut, use contextualAction icon %@, %@", buf, 0x16u);
  }

  v14 = 0;
LABEL_24:

  return v14;
}

+ (id)_contextualActionIconFromLNImage:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AE30] processInfo];
  v5 = [v4 processName];
  v6 = [v5 lowercaseString];
  v7 = [v6 isEqualToString:@"duetexpertd"];

  if (!v7)
  {
    v20 = 0;
    if (!WorkflowKitLibraryCore_frameworkLibrary)
    {
      *buf = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __WorkflowKitLibraryCore_block_invoke;
      v24 = &__block_descriptor_40_e5_v8__0l;
      v25 = &v20;
      v26 = xmmword_1E80C6310;
      v27 = 0;
      WorkflowKitLibraryCore_frameworkLibrary = _sl_dlopen();
    }

    if (!WorkflowKitLibraryCore_frameworkLibrary)
    {
      [ATXSpotlightClient _contextualActionIconFromLNImage:?];
    }

    if (v20)
    {
      free(v20);
    }

    v10 = [v3 wf_image];
    v8 = v10;
    if (v10)
    {
      v11 = [v10 URL];

      if (v11)
      {
        v12 = MEMORY[0x1E69E0A40];
        v13 = [v8 URL];
        [v3 displayStyle];
        v14 = [v12 iconWithImageURL:v13 displayStyle:WFContextualActionIconDisplayStyleForLNImageDisplayStyle()];
LABEL_20:
        v9 = v14;
        goto LABEL_21;
      }

      v15 = [v8 data];

      if (v15)
      {
        v16 = MEMORY[0x1E69E0A40];
        v13 = [v8 data];
        [v3 displayStyle];
        v14 = [v16 iconWithImageData:v13 scale:WFContextualActionIconDisplayStyleForLNImageDisplayStyle() displayStyle:0.0];
        goto LABEL_20;
      }

      v17 = [v8 symbolName];

      if (v17)
      {
        v18 = MEMORY[0x1E69E0A40];
        v13 = [v8 symbolName];
        v14 = [v18 iconWithSystemName:v13];
        goto LABEL_20;
      }

      v13 = __atxlog_handle_ui();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        +[ATXSpotlightClient _contextualActionIconFromLNImage:];
      }
    }

    else
    {
      v13 = __atxlog_handle_blending();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: [AutoShortcut] wfimage nil", buf, 2u);
      }
    }

    v9 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v8 = __atxlog_handle_ui();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    +[ATXSpotlightClient _contextualActionIconFromLNImage:];
  }

  v9 = 0;
LABEL_22:

  return v9;
}

+ (id)_responseWithUpcomingMedia
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v28 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [a1 recentUpcomingMediaActionsWithLimit:4];
  v6 = +[ATXSpotlightClientResponse createSectionWithTitle:sectionBundleIdentifier:resultCount:](ATXSpotlightClientResponse, "createSectionWithTitle:sectionBundleIdentifier:resultCount:", 0, &stru_1F3E050C8, [v5 count]);
  v26 = v4;
  [v4 addObject:v6];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    v11 = 0x1E69D3000uLL;
    do
    {
      v12 = 0;
      v27 = v9;
      do
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v29 + 1) + 8 * v12);
        v14 = [a1 _resultWithATXAction:v13];
        if (v14 && ([*(v11 + 3560) proactiveTopicWithResult:v14], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v16 = v15;
          v17 = __atxlog_handle_ui();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            [a1 descriptionForTopic:v16];
            v18 = v10;
            v19 = a1;
            v20 = v7;
            v21 = v11;
            v23 = v22 = v3;
            *buf = 138412290;
            v36 = v23;
            _os_log_impl(&dword_1BF549000, v17, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: Topic: %@", buf, 0xCu);

            v3 = v22;
            v11 = v21;
            v7 = v20;
            a1 = v19;
            v10 = v18;
            v9 = v27;
          }

          [v3 addObject:v16];
          [v28 addObject:&unk_1F3E60618];
        }

        else
        {
          v16 = __atxlog_handle_ui();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [(ATXSpotlightClient *)v33 _responseWithUpcomingMedia:v13];
          }
        }

        ++v12;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v9);
  }

  v24 = [[ATXSpotlightClientResponse alloc] initWithTopics:v3 scores:v28 sections:v26];

  return v24;
}

+ (id)recentUpcomingMediaActionsWithLimit:(unint64_t)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v30 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a3];
  v29 = +[ATXUpcomingMediaQuery getAllUpcomingMedia];
  v4 = [v29 sortedUpcomingMedia];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a3];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v35 + 1) + 8 * i) first];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v8);
  }

  v12 = [v5 count];
  if (v12 >= a3)
  {
    v13 = a3;
  }

  else
  {
    v13 = v12;
  }

  v14 = [v5 subarrayWithRange:{0, v13}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v32;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v31 + 1) + 8 * j);
        v20 = [v19 launchId];

        if (v20)
        {
          v21 = [ATXAction alloc];
          v22 = objc_opt_new();
          v23 = [v19 launchId];
          LOBYTE(v28) = 0;
          v24 = [(ATXAction *)v21 initWithIntent:v19 actionUUID:v22 bundleId:v23 heuristic:0 heuristicMetadata:0 criteria:0 isFutureMedia:v28 title:0 subtitle:0];

          if (v24)
          {
            v25 = __atxlog_handle_context_heuristic();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v40 = v24;
              _os_log_impl(&dword_1BF549000, v25, OS_LOG_TYPE_DEFAULT, "recentUpcomingMediaActionsWithLimit action:%@", buf, 0xCu);
            }

            [v30 addObject:v24];
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v31 objects:v41 count:16];
    }

    while (v16);
  }

  v26 = [v30 copy];

  return v26;
}

+ (void)rerankRecents:(void *)a1 withAlternateRanking:.cold.2(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_23();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __56__ATXSpotlightClient_rerankRecents_Filter_removingType___block_invoke_cold_1(int *a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&dword_1BF549000, a2, OS_LOG_TYPE_DEBUG, "[Recents]: Removing result with type %d", v3, 8u);
}

+ (void)rerankRecents_LimitCount:(void *)a1 oneCountDays:twoCountDays:.cold.4(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_23();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

+ (void)rerankRecents_LimitCount:(void *)a1 oneCountDays:twoCountDays:.cold.5(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_23();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __73__ATXSpotlightClient_rerankRecents_LimitCount_oneCountDays_twoCountDays___block_invoke_339_cold_1(void *a1)
{
  v1 = [a1 engagementTime];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_23();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __73__ATXSpotlightClient_rerankRecents_LimitCount_oneCountDays_twoCountDays___block_invoke_339_cold_2(void *a1)
{
  v1 = [a1 engagementTime];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_23();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

+ (void)_resultWithSuggestion:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 executableSpecification];
  v2 = [v1 executableClassString];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0xCu);
}

+ (void)_resultWithIntent:(uint64_t)a1 title:(uint64_t)a2 subtitle:bundleIdForDisplay:appIcon:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXSpotlightClient.m" lineNumber:1384 description:@"We should not be pulling in UIKit in duetexpertd"];
}

+ (void)_iconForParameterizedAutoShortcutContextualAction:(void *)a1 provider:.cold.1(void *a1)
{
  v2 = [a1 bundleIdentifier];
  v3 = [a1 actionIdentifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x20u);
}

+ (void)_iconForParameterizedAutoShortcutContextualAction:(void *)a1 provider:.cold.2(void *a1)
{
  v2 = [a1 bundleIdentifier];
  v3 = [a1 actionIdentifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x16u);
}

+ (void)_iconForParameterizedAutoShortcutContextualAction:(void *)a1 provider:.cold.3(void *a1)
{
  v2 = [a1 bundleIdentifier];
  v3 = [a1 actionIdentifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x16u);
}

+ (void)_contextualActionIconFromLNImage:(void *)a1 .cold.2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *WorkflowKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ATXSpotlightClient.m" lineNumber:55 description:{@"%s", *a1}];

  __break(1u);
}

+ (void)_responseWithUpcomingMedia
{
  v7 = [a2 actionTitle];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_1BF549000, a4, OS_LOG_TYPE_ERROR, "ATXSpotlightClient: Topic: nil: %@", a1, 0xCu);
}

@end