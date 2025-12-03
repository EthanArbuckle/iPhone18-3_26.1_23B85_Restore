@interface ATXSpotlightClient
+ (BOOL)_isAutoShortcutEnabledForSpotlight:(id)spotlight;
+ (BOOL)_isEqualRecentTopics:(id)topics otherRecentTopics:(id)recentTopics;
+ (BOOL)_isValidSuggestion:(id)suggestion forWorldState:(id)state;
+ (BOOL)isAutoShortcutEnabledForSpotlightForBundleId:(id)id signature:(id)signature;
+ (BOOL)isAutoShortcutsEnabledForSpotlightForBundleId:(id)id;
+ (BOOL)isValidSuggestion:(id)suggestion forScope:(id)scope;
+ (BOOL)topic:(id)topic isDuplicateComparingTopics:(id)topics;
+ (id)_accessoryImageWithContextualAction:(id)action;
+ (id)_contextualActionIconFromLNImage:(id)image;
+ (id)_fetchSpotlightRecentTopics:(int64_t)topics;
+ (id)_fetchSpotlightRecentTopicsWithAlternateRanking:(int64_t)ranking limit:(int64_t)limit;
+ (id)_iconForParameterizedAutoShortcutContextualAction:(id)action provider:(id)provider;
+ (id)_imageWithContextualActionIcon:(id)icon;
+ (id)_imageWithDirectionsContextualAction:(id)action;
+ (id)_imageWithLinkImage:(id)image;
+ (id)_responseWithSpotlightLayout:(id)layout andSpotlightRecentTopics:(id)topics actionScope:(id)scope limit:(int64_t)limit;
+ (id)_responseWithUpcomingMedia;
+ (id)_resultWithATXAction:(id)action;
+ (id)_resultWithActionSuggestion:(id)suggestion;
+ (id)_resultWithAppBundleId:(id)id;
+ (id)_resultWithAppClipSuggestion:(id)suggestion;
+ (id)_resultWithContextualAction:(id)action title:(id)title subtitle:(id)subtitle;
+ (id)_resultWithIntent:(id)intent title:(id)title subtitle:(id)subtitle bundleIdForDisplay:(id)display appIcon:(id)icon;
+ (id)_resultWithLinkActionContainer:(id)container;
+ (id)_resultWithLinkActionSuggestion:(id)suggestion;
+ (id)_resultWithShortcutsActionSuggestion:(id)suggestion;
+ (id)_resultWithSuggestion:(id)suggestion;
+ (id)_suggestedResultResponseWithLimit:(int64_t)limit andSpotlightRecentTopics:(id)topics actionScope:(id)scope;
+ (id)_symbolImageForName:(id)name;
+ (id)_topicWithSuggestion:(id)suggestion layoutUUID:(id)d;
+ (id)descriptionForTopic:(id)topic;
+ (id)detailedRowCardSectionWithTitle:(id)title subtitles:(id)subtitles thumbnail:(id)thumbnail trailingImage:(id)image;
+ (id)recentUpcomingMediaActionsWithLimit:(unint64_t)limit;
+ (id)rerankRecents:(id)recents withAlternateRanking:(unint64_t)ranking;
+ (id)rerankRecents_Filter:(id)filter removingType:(int)type;
+ (id)rerankRecents_LimitCount:(id)count oneCountDays:(double)days twoCountDays:(double)countDays;
+ (id)rerankRecents_Normal:(id)normal;
+ (id)suggestedResultResponseWithLimit:(int64_t)limit;
+ (id)suggestedResultResponseWithLimit:(int64_t)limit andSpotlightRecentTopics:(id)topics;
+ (id)zkwPredictionsForRequest:(id)request error:(id *)error;
+ (void)_responseWithUpcomingMedia;
+ (void)predictionsForRequest:(id)request withCompletion:(id)completion;
@end

@implementation ATXSpotlightClient

+ (void)predictionsForRequest:(id)request withCompletion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__ATXSpotlightClient_predictionsForRequest_withCompletion___block_invoke;
  block[3] = &unk_1E80C4548;
  v13 = completionCopy;
  selfCopy = self;
  v12 = requestCopy;
  v9 = completionCopy;
  v10 = requestCopy;
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

+ (id)zkwPredictionsForRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v5 = objc_opt_class();
  limit = [requestCopy limit];
  spotlightRecentTopics = [requestCopy spotlightRecentTopics];
  scope = [requestCopy scope];

  v9 = [v5 _suggestedResultResponseWithLimit:limit andSpotlightRecentTopics:spotlightRecentTopics actionScope:scope];

  return v9;
}

+ (id)suggestedResultResponseWithLimit:(int64_t)limit
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = +[ATXSpotlightZKWTrialClientWrapper sharedInstance];
  alternateRecentsRanking = [v5 alternateRecentsRanking];
  v7 = CFPreferencesCopyAppValue(@"SuggestionsSpotlightZKWRecentsEnabled", @"com.apple.suggestions");
  if (!v7 || (v8 = v7, v9 = [v7 BOOLValue], v8, v9))
  {
    v10 = [self _fetchSpotlightRecentTopics:4];
    v11 = __atxlog_handle_ui();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (!alternateRecentsRanking)
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
      v39 = alternateRecentsRanking;
      _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: [Recents] AB match: YES, Test ranking %lu", buf, 0xCu);
    }

    matchesAlternateRecentsControlCodePath = [v5 matchesAlternateRecentsControlCodePath];
    matchesAlternateRecentsTreatmentCodePath = [v5 matchesAlternateRecentsTreatmentCodePath];
    v15 = __atxlog_handle_ui();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = &stru_1F3E050C8;
      v17 = @"control";
      if (!matchesAlternateRecentsControlCodePath)
      {
        v17 = &stru_1F3E050C8;
      }

      *buf = 134218498;
      v39 = alternateRecentsRanking;
      v41 = v17;
      v40 = 2112;
      if (matchesAlternateRecentsTreatmentCodePath)
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

    v11 = [self _fetchSpotlightRecentTopicsWithAlternateRanking:alternateRecentsRanking limit:4];
    v22 = __atxlog_handle_metrics();
    v23 = v22;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 134349056;
      v39 = alternateRecentsRanking;
      _os_signpost_emit_with_name_impl(&dword_1BF549000, v23, OS_SIGNPOST_INTERVAL_END, v19, "ATXSpotlightClient.SpotlightRecentsAlternate", "alt=%{public, signpost.telemetry:number1}ld enableTelemetry=YES ", buf, 0xCu);
    }

    v24 = [self _isEqualRecentTopics:v10 otherRecentTopics:v11];
    if ((matchesAlternateRecentsControlCodePath & matchesAlternateRecentsTreatmentCodePath) == 1)
    {
      v25 = __atxlog_handle_ui();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        +[ATXSpotlightClient suggestedResultResponseWithLimit:];
      }
    }

    else
    {
      if (matchesAlternateRecentsControlCodePath)
      {
        if ((v24 & 1) == 0)
        {
          codePathForAlternateRecentsControl = [v5 codePathForAlternateRecentsControl];
LABEL_33:

          v27 = [self _extractTopicsFromRecentTopics:v10];
          goto LABEL_34;
        }

LABEL_32:
        codePathForAlternateRecentsControl = 0;
        goto LABEL_33;
      }

      if (matchesAlternateRecentsTreatmentCodePath)
      {
        if ((v24 & 1) == 0)
        {
          codePathForAlternateRecentsControl = [v5 codePathForAlternateRecentsTreatment];
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

  codePathForAlternateRecentsControl = 0;
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

  v32 = [self suggestedResultResponseWithLimit:limit andSpotlightRecentTopics:v27];
  v33 = __atxlog_handle_metrics();
  v34 = v33;
  if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF549000, v34, OS_SIGNPOST_INTERVAL_END, v29, "ATXSpotlightClient.SuggestedActions", " enableTelemetry=YES ", buf, 2u);
  }

  v35 = __atxlog_handle_ui();
  v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
  if (codePathForAlternateRecentsControl)
  {
    if (v36)
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v35, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: [Recents] send code path trigger", buf, 2u);
    }

    [v32 addCodePathId:codePathForAlternateRecentsControl];
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

+ (id)suggestedResultResponseWithLimit:(int64_t)limit andSpotlightRecentTopics:(id)topics
{
  topicsCopy = topics;
  v6 = [objc_opt_class() _suggestedResultResponseWithLimit:limit andSpotlightRecentTopics:topicsCopy actionScope:0];

  return v6;
}

+ (id)_suggestedResultResponseWithLimit:(int64_t)limit andSpotlightRecentTopics:(id)topics actionScope:(id)scope
{
  v21 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  topicsCopy = topics;
  v10 = CFPreferencesCopyAppValue(@"SuggestionsSpotlightZKWEnabled", @"com.apple.suggestions");
  if (v10 && (v11 = v10, v12 = [v10 BOOLValue], v11, !v12))
  {
    v14 = __atxlog_handle_ui();
    if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1BF549000, &v14->super, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: suggestedResultResponseWithLimit: Siri setting 'Show Suggestions' turned off. spotlightLayout = nil", &v19, 2u);
    }

    spotlightSuggestionLayoutFromCache = 0;
  }

  else
  {
    v13 = __atxlog_handle_ui();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134217984;
      limitCopy = limit;
      _os_log_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: suggestedResultResponseWithLimit: %ld", &v19, 0xCu);
    }

    v14 = [[ATXProactiveSuggestionClient alloc] initWithConsumerSubType:21];
    spotlightSuggestionLayoutFromCache = [(ATXProactiveSuggestionClient *)v14 spotlightSuggestionLayoutFromCache];
    v16 = __atxlog_handle_ui();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      limitCopy = spotlightSuggestionLayoutFromCache;
      _os_log_impl(&dword_1BF549000, v16, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: Blending retrieved a spotlightLayout %@.", &v19, 0xCu);
    }
  }

  v17 = [self _responseWithSpotlightLayout:spotlightSuggestionLayoutFromCache andSpotlightRecentTopics:topicsCopy actionScope:scopeCopy limit:limit];

  return v17;
}

+ (id)descriptionForTopic:(id)topic
{
  topicCopy = topic;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = topicCopy;
      v15 = [v13 alloc];
      query = [v14 query];
      date = [v14 date];

      v17 = [v15 initWithFormat:@"SFFlightTopic: %@, %@", query, date];
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
          v27 = topicCopy;
          v28 = [v26 alloc];
          query = [v27 query];
          queryType = [v27 queryType];
          identifier = [v27 identifier];

          v17 = [v28 initWithFormat:@"SFQueryTopic: %@, type: %d, id: %@", query, queryType, identifier];
        }

        else
        {
          v34 = objc_alloc(MEMORY[0x1E696AEC0]);
          v35 = objc_opt_class();
          query = NSStringFromClass(v35);
          v17 = [v34 initWithFormat:@"unhandled of type %@", query];
        }

        goto LABEL_19;
      }

      v18 = MEMORY[0x1E696AEC0];
      v19 = topicCopy;
      v20 = [v18 alloc];
      query = [v19 query];
      date = [v19 location];
      [date lat];
      v22 = v21;
      location = [v19 location];

      [location lng];
      v17 = [v20 initWithFormat:@"SFWeatherTopic: %@, lat %f, lng %f", query, v22, v24];
    }

    goto LABEL_19;
  }

  query = topicCopy;
  result = [query result];
  title = [result title];
  text = [title text];

  if (!text)
  {
    result2 = [query result];
    inlineCard = [result2 inlineCard];
    cardSections = [inlineCard cardSections];
    firstObject = [cardSections firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      title2 = [firstObject title];
      text = [title2 text];
    }

    else
    {
      text = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      suggestionText = [firstObject suggestionText];
      text2 = [suggestionText text];

      text = text2;
    }

    if (!text)
    {
      text = [query identifier];
    }
  }

  v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SFLocalTopic %@, %@", text, query];

LABEL_19:

  return v17;
}

+ (BOOL)_isValidSuggestion:(id)suggestion forWorldState:(id)state
{
  v22 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  stateCopy = state;
  atxActionCriteria = [suggestionCopy atxActionCriteria];
  v8 = [atxActionCriteria isRelevant:stateCopy];

  if ((v8 & 1) == 0)
  {
    v12 = __atxlog_handle_ui();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uiSpecification = [suggestionCopy uiSpecification];
      title = [uiSpecification title];
      executableSpecification = [suggestionCopy executableSpecification];
      executableClassString = [executableSpecification executableClassString];
      v18 = 138412546;
      v19 = title;
      v20 = 2112;
      v21 = executableClassString;
      _os_log_impl(&dword_1BF549000, v12, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: Not valid for device state, hiding: %@, type %@", &v18, 0x16u);
    }

    goto LABEL_8;
  }

  uiSpecification2 = [suggestionCopy uiSpecification];
  predictionReasons = [uiSpecification2 predictionReasons];

  if ((predictionReasons & 0x1000000) != 0)
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

+ (BOOL)isValidSuggestion:(id)suggestion forScope:(id)scope
{
  suggestionCopy = suggestion;
  scopeCopy = scope;
  v7 = scopeCopy;
  if (scopeCopy)
  {
    appIdentifier = [scopeCopy appIdentifier];
    appEntityKeyValueMapping = [v7 appEntityKeyValueMapping];
    actionType = [v7 actionType];
    intentClassName = [v7 intentClassName];
    atxActionExecutableObject = [suggestionCopy atxActionExecutableObject];
    bundleId = [atxActionExecutableObject bundleId];
    v14 = bundleId;
    if (atxActionExecutableObject)
    {
      if (!appIdentifier || bundleId && ([appIdentifier bundleIdentifier], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "isEqualToString:", v15), v15, v16))
      {
        v30 = appEntityKeyValueMapping;
        if (intentClassName && ([atxActionExecutableObject intent], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "_className"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", intentClassName), v18, v17, !v19) || (objc_msgSend(suggestionCopy, "atxActionExecutableObject"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "actionType"), v20, actionType != 8) && v21 != actionType)
        {
          v22 = 0;
          appEntityKeyValueMapping = v30;
LABEL_18:

          goto LABEL_19;
        }

        appEntityKeyValueMapping = v30;
        if (!v30 || v21 || ([atxActionExecutableObject intent], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "atx_nonNilParametersByName"), v24 = objc_claimAutoreleasedReturnValue(), v23, v34 = 0, v35 = &v34, v36 = 0x2020000000, v37 = 0, v31[0] = MEMORY[0x1E69E9820], v31[1] = 3221225472, v31[2] = __49__ATXSpotlightClient_isValidSuggestion_forScope___block_invoke, v31[3] = &unk_1E80C6228, v25 = v24, v32 = v25, v33 = &v34, objc_msgSend(v30, "enumerateKeysAndObjectsUsingBlock:", v31), v26 = objc_msgSend(v30, "count"), v27 = v35[3], v32, _Block_object_dispose(&v34, 8), v25, v28 = v26 == v27, appEntityKeyValueMapping = v30, v28))
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

+ (BOOL)topic:(id)topic isDuplicateComparingTopics:(id)topics
{
  v26 = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  topicsCopy = topics;
  v7 = [topicsCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = *v22;
    v20 = topicsCopy;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(topicsCopy);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        if ([MEMORY[0x1E69D3DF0] topic:topicCopy isSameAsTopic:v10])
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
            v11 = topicCopy;
            v12 = v10;
            identifier = [v11 identifier];
            if ([identifier length])
            {
              identifier2 = [v12 identifier];
              v15 = [identifier2 length];

              if (v15)
              {
                identifier3 = [v11 identifier];
                identifier4 = [v12 identifier];
                v18 = [identifier3 isEqualToString:identifier4];

                if (v18)
                {

                  LOBYTE(v7) = 1;
                  topicsCopy = v20;
                  goto LABEL_19;
                }
              }
            }

            else
            {
            }

            topicsCopy = v20;
          }
        }
      }

      v7 = [topicsCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
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

+ (id)_responseWithSpotlightLayout:(id)layout andSpotlightRecentTopics:(id)topics actionScope:(id)scope limit:(int64_t)limit
{
  v112 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  topicsCopy = topics;
  scopeCopy = scope;
  if ([self _shouldDisplayUpcomingMediaForTesting])
  {
    _responseWithUpcomingMedia = [self _responseWithUpcomingMedia];
    goto LABEL_67;
  }

  v69 = topicsCopy;
  uuid = [layoutCopy uuid];
  v82 = layoutCopy;
  collections = [layoutCopy collections];
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
  obj = collections;
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
        suggestions = [v16 suggestions];
        firstObject = [suggestions firstObject];
        uiSpecification = [firstObject uiSpecification];
        predictionReasons = [uiSpecification predictionReasons];

        v21 = __atxlog_handle_ui();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          contextTitle = [v16 contextTitle];
          v23 = [contextTitle hash];
          suggestions2 = [v16 suggestions];
          v25 = [suggestions2 count];
          *buf = 134218496;
          v106 = v23;
          v107 = 2048;
          v108 = predictionReasons;
          v109 = 2048;
          v110 = v25;
          _os_log_impl(&dword_1BF549000, v21, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: Section.hash: %lu, type: %llu, count: %lu", buf, 0x20u);
        }

        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v74 = v16;
        suggestions3 = [v16 suggestions];
        v27 = [suggestions3 countByEnumeratingWithState:&v94 objects:v104 count:16];
        if (v27)
        {
          v28 = v27;
          v84 = 0;
          v29 = *v95;
          v30 = scopeCopy;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v95 != v29)
              {
                objc_enumerationMutation(suggestions3);
              }

              v32 = *(*(&v94 + 1) + 8 * i);
              if ([objc_opt_class() isValidSuggestion:v32 forScope:v30])
              {
                if ([objc_opt_class() _isValidSuggestion:v32 forWorldState:v85])
                {
                  v33 = [self _topicWithSuggestion:v32 layoutUUID:uuid];
                  scores = [v82 scores];
                  v35 = [scores objectAtIndexedSubscript:v14];

                  v36 = __atxlog_handle_ui();
                  v37 = v36;
                  if (v33)
                  {
                    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                    {
                      v38 = [self descriptionForTopic:v33];
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
                      uiSpecification2 = [v32 uiSpecification];
                      title = [uiSpecification2 title];
                      executableSpecification = [v32 executableSpecification];
                      executableClassString = [executableSpecification executableClassString];
                      *buf = 138412546;
                      v106 = title;
                      v107 = 2112;
                      v108 = executableClassString;
                      _os_log_error_impl(&dword_1BF549000, v37, OS_LOG_TYPE_ERROR, "ATXSpotlightClient: Topic: nil: %@, type %@", buf, 0x16u);
                    }
                  }

                  v30 = scopeCopy;
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

            v28 = [suggestions3 countByEnumeratingWithState:&v94 objects:v104 count:16];
          }

          while (v28);
        }

        else
        {
          v84 = 0;
        }

        contextTitle2 = [v74 contextTitle];
        v42 = objc_opt_new();
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        suggestions4 = [v74 suggestions];
        v44 = [suggestions4 countByEnumeratingWithState:&v90 objects:v103 count:16];
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
                objc_enumerationMutation(suggestions4);
              }

              v48 = [v42 contextTitleWithSuggestion:*(*(&v90 + 1) + 8 * j) eventTitle:contextTitle2];
              if ([v48 length])
              {

                goto LABEL_45;
              }
            }

            v45 = [suggestions4 countByEnumeratingWithState:&v90 objects:v103 count:16];
            if (v45)
            {
              continue;
            }

            break;
          }
        }

        v48 = contextTitle2;
LABEL_45:

        sectionIdentifier = __atxlog_handle_ui();
        v50 = os_log_type_enabled(sectionIdentifier, OS_LOG_TYPE_DEFAULT);
        if (v84)
        {
          if (v50)
          {
            contextTitle3 = [v74 contextTitle];
            v52 = [contextTitle3 hash];
            *buf = 134218240;
            v106 = v52;
            v107 = 2048;
            v108 = v84;
            _os_log_impl(&dword_1BF549000, sectionIdentifier, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: Creating Section [%lu] with suggestions count %lu", buf, 0x16u);
          }

          sectionIdentifier = [v74 sectionIdentifier];
          contextTitle4 = [ATXSpotlightClientResponse createSectionWithTitle:v48 sectionBundleIdentifier:sectionIdentifier resultCount:v84];
          [v71 addObject:contextTitle4];
        }

        else
        {
          if (!v50)
          {
            goto LABEL_52;
          }

          contextTitle4 = [v74 contextTitle];
          v54 = [contextTitle4 hash];
          *buf = 134217984;
          v106 = v54;
          _os_log_impl(&dword_1BF549000, sectionIdentifier, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: Skipping Section [%lu] no longer has valid suggestions", buf, 0xCu);
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
  topicsCopy = v69;
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

    topicsCopy = v69;
  }

  else
  {
    v67 = v71;
  }

  _responseWithUpcomingMedia = [[ATXSpotlightClientResponse alloc] initWithTopics:v80 scores:v79 sections:v67];
  layoutCopy = v82;
LABEL_67:

  return _responseWithUpcomingMedia;
}

+ (id)_topicWithSuggestion:(id)suggestion layoutUUID:(id)d
{
  suggestionCopy = suggestion;
  dCopy = d;
  executableSpecification = [suggestionCopy executableSpecification];
  executableType = [executableSpecification executableType];

  if (executableType == 8)
  {
    atxSpotlightActionExecutableObject = [suggestionCopy atxSpotlightActionExecutableObject];
    topic = [atxSpotlightActionExecutableObject topic];
LABEL_9:
    v20 = topic;
    goto LABEL_10;
  }

  v12 = [self _resultWithSuggestion:suggestionCopy];
  atxSpotlightActionExecutableObject = v12;
  if (v12)
  {
    identifier = [v12 identifier];
    v14 = [identifier length];

    if (!v14)
    {
      v15 = __atxlog_handle_ui();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        +[ATXSpotlightClient _topicWithSuggestion:layoutUUID:];
      }

      v16 = objc_opt_new();
      uUIDString = [v16 UUIDString];
      [atxSpotlightActionExecutableObject setIdentifier:uUIDString];
    }

    v18 = [suggestionCopy copy];
    [atxSpotlightActionExecutableObject setProactiveSuggestion:v18];

    v19 = [dCopy copy];
    [atxSpotlightActionExecutableObject setBlendingModelUICacheUpdateUUID:v19];

    topic = [MEMORY[0x1E69D3DE8] proactiveTopicWithResult:atxSpotlightActionExecutableObject];
    goto LABEL_9;
  }

  v20 = 0;
LABEL_10:

  return v20;
}

+ (id)_fetchSpotlightRecentTopics:(int64_t)topics
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = __atxlog_handle_metrics();
  v5 = os_signpost_id_generate(v4);

  v6 = __atxlog_handle_ui();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134217984;
    topicsCopy = topics;
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
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:topics];
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
    topicsCopy = v16;
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

+ (id)_fetchSpotlightRecentTopicsWithAlternateRanking:(int64_t)ranking limit:(int64_t)limit
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69D3DF0];
  v12 = *MEMORY[0x1E69D3DF8];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:limit];
  v13[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__ATXSpotlightClient__fetchSpotlightRecentTopicsWithAlternateRanking_limit___block_invoke;
  v11[3] = &__block_descriptor_48_e26___NSArray_16__0__NSArray_8l;
  v11[4] = self;
  v11[5] = ranking;
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

+ (id)rerankRecents:(id)recents withAlternateRanking:(unint64_t)ranking
{
  recentsCopy = recents;
  v7 = __atxlog_handle_ui();
  v8 = v7;
  if (ranking > 1)
  {
    if (ranking == 2)
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
      if (ranking != 3)
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

    v9 = [self rerankRecents_LimitCount:recentsCopy oneCountDays:v10 twoCountDays:v11];
    goto LABEL_21;
  }

  if (!ranking)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: [Recents] rerankRecents_Normal", v18, 2u);
    }

    goto LABEL_16;
  }

  if (ranking != 1)
  {
LABEL_12:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      +[ATXSpotlightClient rerankRecents:withAlternateRanking:];
    }

LABEL_16:

    v9 = [self rerankRecents_Normal:recentsCopy];
    goto LABEL_21;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: [Recents] rerankRecents_Filter UserTyped", buf, 2u);
  }

  v9 = [self rerankRecents_Filter:recentsCopy removingType:30];
LABEL_21:
  v12 = v9;
  v13 = __atxlog_handle_ui();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [ATXSpotlightClient rerankRecents:v12 withAlternateRanking:?];
  }

  return v12;
}

+ (id)rerankRecents_Normal:(id)normal
{
  v46 = *MEMORY[0x1E69E9840];
  normalCopy = normal;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v6 = [v5 dateByAddingTimeInterval:-604800.0];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v7 = normalCopy;
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

      engagementTime = [v12 engagementTime];
      [engagementTime timeIntervalSinceReferenceDate];
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
        engagementTime2 = [v21 engagementTime];
        [engagementTime2 timeIntervalSinceReferenceDate];
        v24 = v23;
        engagementTime3 = [v12 engagementTime];
        [engagementTime3 timeIntervalSinceReferenceDate];
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

+ (id)rerankRecents_Filter:(id)filter removingType:(int)type
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__ATXSpotlightClient_rerankRecents_Filter_removingType___block_invoke;
  v8[3] = &__block_descriptor_36_e27_B16__0___SFEngagedResult__8l;
  typeCopy = type;
  v5 = [filter _pas_filteredArrayWithTest:v8];
  v6 = [self rerankRecents_Normal:v5];

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

+ (id)rerankRecents_LimitCount:(id)count oneCountDays:(double)days twoCountDays:(double)countDays
{
  v56 = *MEMORY[0x1E69E9840];
  countCopy = count;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v37 = [v10 dateByAddingTimeInterval:days * -86400.0];
  v38 = v10;
  v36 = [v10 dateByAddingTimeInterval:countDays * -86400.0];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = countCopy;
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
          engagementTime = [v21 engagementTime];
          [engagementTime timeIntervalSinceReferenceDate];
          v24 = v23;
          engagementTime2 = [v15 engagementTime];
          [engagementTime2 timeIntervalSinceReferenceDate];
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

+ (BOOL)_isEqualRecentTopics:(id)topics otherRecentTopics:(id)recentTopics
{
  topicsCopy = topics;
  recentTopicsCopy = recentTopics;
  v7 = [topicsCopy count];
  if (v7 != [recentTopicsCopy count])
  {
LABEL_10:
    v18 = 0;
    goto LABEL_11;
  }

  if ([topicsCopy count])
  {
    v8 = 0;
    while (1)
    {
      v9 = [topicsCopy objectAtIndexedSubscript:v8];
      v10 = [recentTopicsCopy objectAtIndexedSubscript:v8];
      engagementDate = [v9 engagementDate];
      engagementDate2 = [v10 engagementDate];
      v13 = [engagementDate isEqualToDate:engagementDate2];

      if (!v13)
      {
        break;
      }

      topic = [v9 topic];
      identifier = [topic identifier];
      topic2 = [v10 topic];
      identifier2 = [topic2 identifier];
      v18 = [identifier isEqualToString:identifier2];

      if ((v18 & 1) != 0 && [topicsCopy count] > ++v8)
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

+ (id)_resultWithSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  executableSpecification = [suggestionCopy executableSpecification];
  executableType = [executableSpecification executableType];

  if (executableType == 2)
  {
    v7 = __atxlog_handle_ui();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: _resultWithSuggestion is ATXSuggestionExecutableTypeAction", buf, 2u);
    }

    v8 = [self _resultWithActionSuggestion:suggestionCopy];
LABEL_17:
    v19 = v8;
    goto LABEL_18;
  }

  executableSpecification2 = [suggestionCopy executableSpecification];
  executableType2 = [executableSpecification2 executableType];

  if (executableType2 == 5)
  {
    v11 = __atxlog_handle_ui();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: _resultWithSuggestion is ATXSuggestionExecutableTypeAppClip", v23, 2u);
    }

    v8 = [self _resultWithAppClipSuggestion:suggestionCopy];
    goto LABEL_17;
  }

  executableSpecification3 = [suggestionCopy executableSpecification];
  executableType3 = [executableSpecification3 executableType];

  if (executableType3 == 9)
  {
    v14 = __atxlog_handle_ui();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_1BF549000, v14, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: _resultWithSuggestion is ATXSuggestionExecutableTypeShortcutsAction", v22, 2u);
    }

    v8 = [self _resultWithShortcutsActionSuggestion:suggestionCopy];
    goto LABEL_17;
  }

  executableSpecification4 = [suggestionCopy executableSpecification];
  executableType4 = [executableSpecification4 executableType];

  v17 = __atxlog_handle_ui();
  v18 = v17;
  if (executableType4 == 10)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_1BF549000, v18, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: _resultWithSuggestion is ATXSuggestionExecutableTypeLinkAction", v21, 2u);
    }

    v8 = [self _resultWithLinkActionSuggestion:suggestionCopy];
    goto LABEL_17;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [ATXSpotlightClient _resultWithSuggestion:suggestionCopy];
  }

  v19 = 0;
LABEL_18:

  return v19;
}

+ (id)_resultWithLinkActionSuggestion:(id)suggestion
{
  v13 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  v5 = __atxlog_handle_ui();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uiSpecification = [suggestionCopy uiSpecification];
    title = [uiSpecification title];
    v11 = 138412290;
    v12 = title;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: _resultWithLinkActionSuggestion %@", &v11, 0xCu);
  }

  linkActionExecutableObject = [suggestionCopy linkActionExecutableObject];
  if (linkActionExecutableObject)
  {
    v9 = [self _resultWithLinkActionContainer:linkActionExecutableObject];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_resultWithLinkActionContainer:(id)container
{
  v33[1] = *MEMORY[0x1E69E9840];
  containerCopy = container;
  image = [containerCopy image];

  if (image)
  {
    image2 = [containerCopy image];
    v7 = [self _imageWithLinkImage:image2];
  }

  else
  {
    v7 = objc_opt_new();
    image2 = [containerCopy bundleId];
    [v7 setBundleIdentifier:image2];
  }

  v8 = objc_alloc(MEMORY[0x1E69E0BC0]);
  action = [containerCopy action];
  bundleId = [containerCopy bundleId];
  v11 = [v8 initWithAction:action appBundleIdentifier:bundleId extensionBundleIdentifier:0 authenticationPolicy:0];

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
    subtitle = [v11 subtitle];
    if (subtitle)
    {
      subtitle2 = [v11 subtitle];
      v33[0] = subtitle2;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
    }

    else
    {
      v14 = MEMORY[0x1E695E0F0];
    }

    title = [v11 title];
    v19 = [self _accessoryImageWithContextualAction:v11];
    v20 = [self detailedRowCardSectionWithTitle:title subtitles:v14 thumbnail:v7 trailingImage:v19];

    v21 = objc_opt_new();
    [v21 setIsRunnableWorkflow:1];
    [v21 setIntentMessageData:v12];
    identifier = [v11 identifier];
    [v21 setIntentMessageName:identifier];

    [v20 setCommand:v21];
    identifier2 = [v11 identifier];
    [v20 setCommandDetail:identifier2];

    v15 = objc_opt_new();
    [v11 uniqueIdentifier];
    v24 = v30 = v7;
    [v15 setIdentifier:v24];

    associatedAppBundleIdentifier = [v11 associatedAppBundleIdentifier];
    [v15 setApplicationBundleIdentifier:associatedAppBundleIdentifier];

    applicationBundleIdentifier = [v15 applicationBundleIdentifier];
    [v15 setResultBundleId:applicationBundleIdentifier];

    v27 = objc_opt_new();
    v32 = v20;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
    [v27 setCardSections:v28];

    [v15 setInlineCard:v27];
    v7 = v30;
  }

  return v15;
}

+ (id)_resultWithShortcutsActionSuggestion:(id)suggestion
{
  v19 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  v5 = __atxlog_handle_ui();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uiSpecification = [suggestionCopy uiSpecification];
    title = [uiSpecification title];
    v17 = 138412290;
    v18 = title;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: _resultWithShortcutsActionSuggestion %@", &v17, 0xCu);
  }

  atxShortcutsActionExecutableObject = [suggestionCopy atxShortcutsActionExecutableObject];
  v9 = atxShortcutsActionExecutableObject;
  if (atxShortcutsActionExecutableObject)
  {
    contextualAction = [atxShortcutsActionExecutableObject contextualAction];
    uiSpecification2 = [suggestionCopy uiSpecification];
    subtitle = [uiSpecification2 subtitle];

    uiSpecification3 = [suggestionCopy uiSpecification];
    title2 = [uiSpecification3 title];
    v15 = [self _resultWithContextualAction:contextualAction title:title2 subtitle:subtitle];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)_resultWithContextualAction:(id)action title:(id)title subtitle:(id)subtitle
{
  v63[1] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  titleCopy = title;
  subtitleCopy = subtitle;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = actionCopy;
    v12 = objc_alloc_init(MEMORY[0x1E69ACDC8]);
    if (![self _isAutoShortcutEnabledForSpotlight:v11])
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
    if (!subtitleCopy)
    {
LABEL_9:
      v21 = 0;
      goto LABEL_33;
    }

    v58 = v12;
    integerValue = [subtitleCopy integerValue];
    v14 = [MEMORY[0x1E695DF00] now];
    [v14 timeIntervalSinceReferenceDate];
    v16 = integerValue - v15;

    v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    alarmName = [actionCopy alarmName];
    v19 = alarmName;
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
      v28 = v27 = titleCopy;
      v20 = [v25 localizedStringWithFormat:v28, v19, v24];

      titleCopy = v27;
      v11 = v26;
      v17 = v56;

      subtitleCopy = v22;
    }

    else
    {
      v20 = alarmName;
    }

    subtitleCopy = v20;
    v12 = v58;
  }

  v29 = objc_autoreleasePoolPush();
  v61 = 0;
  v30 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:actionCopy requiringSecureCoding:1 error:&v61];
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
    icon = [actionCopy icon];

    if (icon)
    {
      icon2 = [actionCopy icon];
      v35 = [self _imageWithContextualActionIcon:icon2];
    }

    else
    {
      icon2 = __atxlog_handle_ui();
      if (os_log_type_enabled(icon2, OS_LOG_TYPE_FAULT))
      {
        +[ATXSpotlightClient _resultWithContextualAction:title:subtitle:];
      }

      v35 = 0;
    }

    v38 = [self _iconForParameterizedAutoShortcutContextualAction:v11 provider:v12];
    v59 = v12;
    if (v38)
    {
      v39 = __atxlog_handle_ui();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BF549000, v39, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: using icon from parameterized app shortcut", buf, 2u);
      }

      v40 = [self _imageWithContextualActionIcon:v38];
    }

    else
    {
      v40 = [self _accessoryImageWithContextualAction:actionCopy];
    }

    v57 = titleCopy;
    v54 = v40;
    v55 = v38;
    if (subtitleCopy)
    {
      v63[0] = subtitleCopy;
      v41 = v40;
      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:1];
      v43 = [self detailedRowCardSectionWithTitle:titleCopy subtitles:v42 thumbnail:v35 trailingImage:v41];
    }

    else
    {
      v43 = [self detailedRowCardSectionWithTitle:titleCopy subtitles:MEMORY[0x1E695E0F0] thumbnail:v35 trailingImage:v40];
    }

    v44 = objc_opt_new();
    [v44 setIsRunnableWorkflow:1];
    [v44 setIntentMessageData:v30];
    identifier = [actionCopy identifier];
    [v44 setIntentMessageName:identifier];

    settingBiomeStreamIdentifier = [actionCopy settingBiomeStreamIdentifier];
    [v44 setBiomeStreamIdentifier:settingBiomeStreamIdentifier];

    [v43 setCommand:v44];
    identifier2 = [actionCopy identifier];
    [v43 setCommandDetail:identifier2];

    v34 = v30;
    v21 = objc_opt_new();
    uniqueIdentifier = [actionCopy uniqueIdentifier];
    [v21 setIdentifier:uniqueIdentifier];

    associatedAppBundleIdentifier = [actionCopy associatedAppBundleIdentifier];
    [v21 setApplicationBundleIdentifier:associatedAppBundleIdentifier];

    applicationBundleIdentifier = [v21 applicationBundleIdentifier];
    [v21 setResultBundleId:applicationBundleIdentifier];

    v51 = objc_opt_new();
    v62 = v43;
    v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
    [v51 setCardSections:v52];

    [v21 setInlineCard:v51];
    titleCopy = v57;
    v12 = v59;
    v33 = 0;
  }

LABEL_33:

  return v21;
}

+ (id)_accessoryImageWithContextualAction:(id)action
{
  actionCopy = action;
  accessoryIcon = [actionCopy accessoryIcon];
  if (accessoryIcon)
  {
    v6 = [self _imageWithContextualActionIcon:accessoryIcon];
LABEL_5:
    v7 = v6;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [self _imageWithDirectionsContextualAction:actionCopy];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

+ (id)_imageWithLinkImage:(id)image
{
  imageCopy = image;
  v4 = objc_alloc(getINUISearchFoundationImageAdapterClass());
  inImage = [imageCopy inImage];

  v6 = [v4 initWithIntentsImage:inImage];

  return v6;
}

+ (id)_imageWithContextualActionIcon:(id)icon
{
  v19 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  applicationBundleIdentifier = [iconCopy applicationBundleIdentifier];
  if (applicationBundleIdentifier)
  {
    v6 = __atxlog_handle_ui();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = applicationBundleIdentifier;
      _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: using contextualAction.icon.applicationBundleIdentifier %@", &v17, 0xCu);
    }

    v7 = objc_opt_new();
    if ([applicationBundleIdentifier isEqualToString:@"com.apple.mobilesafari"])
    {
      [v7 setIconType:1];
    }

    else
    {
      [v7 setBundleIdentifier:applicationBundleIdentifier];
    }
  }

  else
  {
    imageData = [iconCopy imageData];

    if (imageData)
    {
      v9 = __atxlog_handle_ui();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: using icon.imageData ", &v17, 2u);
      }

      v7 = objc_alloc_init(MEMORY[0x1E69CA138]);
      imageData2 = [iconCopy imageData];
      [v7 setImageData:imageData2];

      [iconCopy imageScale];
      [v7 setScale:?];
    }

    else
    {
      systemName = [iconCopy systemName];

      v12 = __atxlog_handle_ui();
      v13 = v12;
      if (systemName)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          systemName2 = [iconCopy systemName];
          v17 = 138412290;
          v18 = systemName2;
          _os_log_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: using icon.systemName %@", &v17, 0xCu);
        }

        v7 = objc_alloc_init(MEMORY[0x1E69CA4C8]);
        systemName3 = [iconCopy systemName];
        [v7 setSymbolName:systemName3];

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

  [v7 setCornerRoundingStyle:{objc_msgSend(self, "_imageCornerRoundingStyleForIconDisplayStyle:", objc_msgSend(iconCopy, "displayStyle"))}];

  return v7;
}

+ (id)_imageWithDirectionsContextualAction:(id)action
{
  navigationType = [action navigationType];
  if (navigationType > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&off_1E80C6328 + navigationType);
  }

  v5 = objc_alloc_init(MEMORY[0x1E69CA4C8]);
  [v5 setSymbolName:v4];
  [v5 setIsTemplate:1];

  return v5;
}

+ (id)_resultWithActionSuggestion:(id)suggestion
{
  v16 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  executableSpecification = [suggestionCopy executableSpecification];
  executableClassString = [executableSpecification executableClassString];

  v7 = __atxlog_handle_ui();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = executableClassString;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: _resultWithActionSuggestion executableClassString:%@", &v14, 0xCu);
  }

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [executableClassString isEqualToString:v9];

  if (v10)
  {
    atxActionExecutableObject = [suggestionCopy atxActionExecutableObject];
    if (atxActionExecutableObject)
    {
      v12 = [self _resultWithATXAction:atxActionExecutableObject];
      goto LABEL_9;
    }
  }

  else
  {
    atxActionExecutableObject = __atxlog_handle_ui();
    if (os_log_type_enabled(atxActionExecutableObject, OS_LOG_TYPE_ERROR))
    {
      +[ATXSpotlightClient _resultWithActionSuggestion:];
    }
  }

  v12 = 0;
LABEL_9:

  return v12;
}

+ (id)_resultWithIntent:(id)intent title:(id)title subtitle:(id)subtitle bundleIdForDisplay:(id)display appIcon:(id)icon
{
  v60 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  titleCopy = title;
  subtitleCopy = subtitle;
  displayCopy = display;
  iconCopy = icon;
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];
  LODWORD(subtitle) = [processName isEqualToString:@"duetexpertd"];

  if (subtitle)
  {
    [ATXSpotlightClient _resultWithIntent:a2 title:self subtitle:? bundleIdForDisplay:? appIcon:?];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [iconCopy setBundleIdentifier:@"com.apple.mobilephone"];
  }

  v19 = __atxlog_handle_ui();
  v20 = displayCopy;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v57 = titleCopy;
    v58 = 2112;
    v59 = intentCopy;
    _os_log_impl(&dword_1BF549000, v19, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: _resultWithIntent [%@] intent:%@", buf, 0x16u);
  }

  INUISearchFoundationImageAdapterClass = getINUISearchFoundationImageAdapterClass();
  if (intentCopy && (v22 = INUISearchFoundationImageAdapterClass, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {

    v23 = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:intentCopy response:0];
    _keyImage = [v23 _keyImage];
    v25 = __atxlog_handle_ui();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      _identifier = [_keyImage _identifier];
      *buf = 138412290;
      v57 = _identifier;
      _os_log_impl(&dword_1BF549000, v25, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: _resultWithIntent intentsImage._identifier:%@", buf, 0xCu);
    }

    if (_keyImage)
    {
      subtitleCopy = [[v22 alloc] initWithIntentsImage:_keyImage];
      [subtitleCopy setSize:{32.0, 32.0}];
    }

    else
    {
      subtitleCopy = 0;
    }

    v49 = 0;
    v27 = MEMORY[0x1E695E0F0];
    v20 = displayCopy;
  }

  else if (subtitleCopy)
  {
    v49 = subtitleCopy;
    v55 = subtitleCopy;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
    subtitleCopy = 0;
  }

  else
  {
    v49 = 0;
    v27 = MEMORY[0x1E695E0F0];
  }

  v50 = iconCopy;
  v51 = titleCopy;
  v28 = [self detailedRowCardSectionWithTitle:titleCopy subtitles:v27 thumbnail:iconCopy trailingImage:subtitleCopy];
  v29 = objc_opt_new();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    backingStore = [intentCopy backingStore];
    data = [backingStore data];
    [v29 setIntentMessageData:data];

LABEL_25:
    _intentInstanceDescription = [intentCopy _intentInstanceDescription];
    type = [_intentInstanceDescription type];
    [v29 setIntentMessageName:type];

    [v29 setApplicationBundleIdentifier:v20];
    [v28 setCommand:v29];
    v42 = objc_opt_new();
    v43 = objc_opt_new();
    uUIDString = [v43 UUIDString];
    [v42 setIdentifier:uUIDString];

    [v42 setApplicationBundleIdentifier:v20];
    applicationBundleIdentifier = [v42 applicationBundleIdentifier];
    [v42 setResultBundleId:applicationBundleIdentifier];

    v46 = objc_opt_new();
    v54 = v28;
    v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
    [v46 setCardSections:v47];

    [v42 setInlineCard:v46];
    goto LABEL_26;
  }

  v30 = intentCopy;
  v31 = objc_alloc(MEMORY[0x1E69E0BC0]);
  linkAction = [v30 linkAction];
  v33 = [v31 initWithAction:linkAction appBundleIdentifier:v20 extensionBundleIdentifier:0 authenticationPolicy:0];

  v53 = 0;
  v34 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v33 requiringSecureCoding:1 error:&v53];
  v35 = v53;
  if (v34)
  {
    [v29 setIsRunnableWorkflow:1];
    [v29 setIntentMessageData:v34];
    identifier = [v33 identifier];
    [v29 setIntentMessageName:identifier];

    identifier2 = [v33 identifier];
    [v28 setCommandDetail:identifier2];
  }

  else
  {
    identifier2 = __atxlog_handle_ui();
    if (os_log_type_enabled(identifier2, OS_LOG_TYPE_ERROR))
    {
      +[ATXSpotlightClient _resultWithLinkActionContainer:];
    }
  }

  v20 = displayCopy;
  if (v34)
  {
    goto LABEL_25;
  }

  v42 = 0;
LABEL_26:

  return v42;
}

+ (id)_resultWithAppBundleId:(id)id
{
  v15[1] = *MEMORY[0x1E69E9840];
  idCopy = id;
  v4 = [ATXApplicationRecord localizedNameForBundle:idCopy];
  if (![v4 length])
  {
    v5 = __atxlog_handle_ui();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      +[ATXSpotlightClient _resultWithAppBundleId:];
    }
  }

  v6 = objc_opt_new();
  [v6 setBundleIdentifier:idCopy];
  v7 = objc_alloc_init(MEMORY[0x1E69CA1A0]);
  [v7 setApplicationBundleIdentifier:idCopy];
  v8 = objc_opt_new();
  [v8 setShouldUseCompactDisplay:1];
  [v8 setThumbnail:v6];
  v9 = [MEMORY[0x1E69CA3A0] textWithString:v4];
  [v8 setTitle:v9];

  [v8 setCommand:v7];
  v10 = objc_alloc_init(ATXSuggestionSearchResult);
  [(ATXSuggestionSearchResult *)v10 setIdentifier:idCopy];
  [(ATXSuggestionSearchResult *)v10 setApplicationBundleIdentifier:idCopy];
  applicationBundleIdentifier = [(ATXSuggestionSearchResult *)v10 applicationBundleIdentifier];
  [(ATXSuggestionSearchResult *)v10 setResultBundleId:applicationBundleIdentifier];

  v12 = objc_alloc_init(MEMORY[0x1E69C9F00]);
  v15[0] = v8;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [v12 setCardSections:v13];

  [(ATXSuggestionSearchResult *)v10 setInlineCard:v12];

  return v10;
}

+ (id)_resultWithATXAction:(id)action
{
  v63 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  actionTitle = [actionCopy actionTitle];
  _bundleIdForDisplay = [actionCopy _bundleIdForDisplay];
  actionSubtitle = [actionCopy actionSubtitle];
  v8 = +[ATXSpotlightZKWTrialClientWrapper sharedInstance];
  keyExistsAndHasValidFormat[0] = 0;
  if (CFPreferencesGetAppBooleanValue(@"zkwShowNSUAApp", *MEMORY[0x1E698B030], keyExistsAndHasValidFormat) || [v8 showNSUASuggestionsAsAppLaunches])
  {
    v9 = [self _resultWithAppBundleId:_bundleIdForDisplay];
    goto LABEL_4;
  }

  v11 = objc_opt_new();
  if ([_bundleIdForDisplay isEqualToString:@"com.apple.mobilesafari"])
  {
    [v11 setIconType:1];
  }

  else
  {
    userActivity = [actionCopy userActivity];
    webpageURL = [userActivity webpageURL];
    v14 = ATXBundleIdReplacementForBundleIdWithWebpageURLHint();

    [v11 setBundleIdentifier:v14];
    _bundleIdForDisplay = v14;
  }

  v15 = __atxlog_handle_ui();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    bundleId = [actionCopy bundleId];
    *keyExistsAndHasValidFormat = 138412546;
    v60 = actionTitle;
    v61 = 2112;
    v62 = bundleId;
    _os_log_impl(&dword_1BF549000, v15, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: _resultWithATXAction [%@] action.bundleId=%@", keyExistsAndHasValidFormat, 0x16u);
  }

  intent = [actionCopy intent];

  if (!intent)
  {
    userActivity2 = [actionCopy userActivity];
    webpageURL2 = [userActivity2 webpageURL];

    if (webpageURL2)
    {
      userActivity3 = [actionCopy userActivity];
      webpageURL3 = [userActivity3 webpageURL];

      host = [webpageURL3 host];
      v24 = [host isEqualToString:@"trackingshipment.apple.com"];

      if (v24)
      {
        v25 = 0;
      }

      else
      {
        absoluteString = [webpageURL3 absoluteString];

        if (absoluteString)
        {
          schemelessAbsoluteString = [webpageURL3 schemelessAbsoluteString];

          actionSubtitle = schemelessAbsoluteString;
        }

        v25 = [self _symbolImageForName:@"link"];
      }

      v28 = __atxlog_handle_ui();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *keyExistsAndHasValidFormat = 138412546;
        v60 = actionTitle;
        v61 = 2112;
        v62 = webpageURL3;
        _os_log_impl(&dword_1BF549000, v28, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: _resultWithATXAction [%@] userActivity webpageURL:%@", keyExistsAndHasValidFormat, 0x16u);
      }
    }

    else
    {
      v25 = 0;
    }

    if (actionSubtitle)
    {
      v58 = actionSubtitle;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
    }

    else
    {
      v29 = MEMORY[0x1E695E0F0];
    }

    v55 = v29;
    v56 = v11;
    v54 = v25;
    v30 = [self detailedRowCardSectionWithTitle:actionTitle subtitles:v29 thumbnail:v11 trailingImage:v25];
    userActivity4 = [actionCopy userActivity];
    webpageURL4 = [userActivity4 webpageURL];

    if (webpageURL4)
    {
      v33 = objc_opt_new();
      v34 = MEMORY[0x1E69CA320];
      userActivity5 = [actionCopy userActivity];
      webpageURL5 = [userActivity5 webpageURL];
      v37 = [v34 punchoutWithURL:webpageURL5];
      [v33 setPunchout:v37];

      [v30 setCommand:v33];
      v38 = v30;
    }

    else
    {
      userActivity6 = [actionCopy userActivity];

      if (userActivity6)
      {
        v33 = objc_alloc_init(MEMORY[0x1E69CA158]);
        userActivityString = [actionCopy userActivityString];
        [v33 setUserActivityRequiredString:userActivityString];

        [v33 setApplicationBundleIdentifier:_bundleIdForDisplay];
        v38 = v30;
        v41 = v30;
      }

      else
      {
        if ([actionCopy actionType] == 6)
        {
          v33 = objc_opt_new();
          menuItemPath = [actionCopy menuItemPath];
          lastObject = [menuItemPath lastObject];
          [v33 setMenuItemIdentifier:lastObject];

          [v33 setApplicationBundleIdentifier:_bundleIdForDisplay];
          v44 = [self _symbolImageForName:@"filemenu.and.selection"];
          [v44 setSize:{36.0, 36.0}];
          [v44 setBadgingImage:v56];
          v38 = v30;
          [v30 setThumbnail:v44];
          [v30 setCommand:v33];

          goto LABEL_40;
        }

        if ([actionCopy actionType] != 7)
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
        parameterKeysForToolInvocation = [actionCopy parameterKeysForToolInvocation];
        v46 = [parameterKeysForToolInvocation count];

        v38 = v30;
        if (v46)
        {
          encodedToolInvocation = [actionCopy encodedToolInvocation];
          [v33 setToolInvocationData:encodedToolInvocation];
        }

        toolInvocationID = [actionCopy toolInvocationID];
        [v33 setToolIdentifier:toolInvocationID];

        v41 = v30;
      }

      [v41 setCommand:v33];
    }

LABEL_40:
    intent2 = v54;

    v9 = objc_opt_new();
    v49 = objc_opt_new();
    uUIDString = [v49 UUIDString];
    [v9 setIdentifier:uUIDString];

    [v9 setApplicationBundleIdentifier:_bundleIdForDisplay];
    applicationBundleIdentifier = [v9 applicationBundleIdentifier];
    [v9 setResultBundleId:applicationBundleIdentifier];

    v52 = objc_opt_new();
    v57 = v38;
    v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
    [v52 setCardSections:v53];

    [v9 setInlineCard:v52];
    v11 = v56;
    goto LABEL_41;
  }

  intent2 = [actionCopy intent];
  v9 = [self _resultWithIntent:intent2 title:actionTitle subtitle:actionSubtitle bundleIdForDisplay:_bundleIdForDisplay appIcon:v11];
LABEL_41:

LABEL_4:

  return v9;
}

+ (id)_symbolImageForName:(id)name
{
  nameCopy = name;
  v4 = objc_opt_new();
  [v4 setSymbolName:nameCopy];

  [v4 setIsTemplate:1];

  return v4;
}

+ (id)_resultWithAppClipSuggestion:(id)suggestion
{
  v54[1] = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  appClipHeroAppPredictionExecutableObject = [suggestionCopy appClipHeroAppPredictionExecutableObject];
  v6 = appClipHeroAppPredictionExecutableObject;
  if (!appClipHeroAppPredictionExecutableObject)
  {
    v21 = 0;
    goto LABEL_26;
  }

  clipMetadata = [appClipHeroAppPredictionExecutableObject clipMetadata];
  if (clipMetadata)
  {
    uiSpecification = [suggestionCopy uiSpecification];
    subtitle = [uiSpecification subtitle];

    localizedSubtitleForClipSuggestion = [clipMetadata localizedSubtitleForClipSuggestion];
    if ([localizedSubtitleForClipSuggestion isEqualToString:subtitle])
    {
      uiSpecification2 = [suggestionCopy uiSpecification];
      title = [uiSpecification2 title];

      uiSpecification3 = [suggestionCopy uiSpecification];
      subtitle2 = [uiSpecification3 subtitle];

      localizedSubtitleForClipSuggestion = subtitle2;
      subtitle = title;
    }

    fullAppCachedIconFilePath = [clipMetadata fullAppCachedIconFilePath];

    if (fullAppCachedIconFilePath)
    {
      v16 = objc_alloc(MEMORY[0x1E69CA548]);
      v17 = MEMORY[0x1E695DFF8];
      fullAppCachedIconFilePath2 = [clipMetadata fullAppCachedIconFilePath];
      v19 = [v17 fileURLWithPath:fullAppCachedIconFilePath2];
      fullAppIconURL = [v16 initWithURL:v19];
    }

    else
    {
      clipBusinessIconURL = [clipMetadata clipBusinessIconURL];

      if (clipBusinessIconURL)
      {
        v23 = objc_alloc(MEMORY[0x1E69CA548]);
        clipBusinessIconURL2 = [clipMetadata clipBusinessIconURL];
      }

      else
      {
        fullAppIconURL = [clipMetadata fullAppIconURL];

        if (!fullAppIconURL)
        {
LABEL_15:
          [fullAppIconURL setCornerRoundingStyle:3];
          v50 = fullAppIconURL;
          if (localizedSubtitleForClipSuggestion)
          {
            v54[0] = localizedSubtitleForClipSuggestion;
            v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
            v26 = [self detailedRowCardSectionWithTitle:subtitle subtitles:v25 thumbnail:fullAppIconURL trailingImage:0];
          }

          else
          {
            v26 = [self detailedRowCardSectionWithTitle:subtitle subtitles:MEMORY[0x1E695E0F0] thumbnail:fullAppIconURL trailingImage:0];
          }

          v48 = subtitle;
          v49 = localizedSubtitleForClipSuggestion;
          v27 = objc_alloc_init(MEMORY[0x1E69CA320]);
          clipMetadata2 = [v6 clipMetadata];
          clipURL = [clipMetadata2 clipURL];
          if (clipURL)
          {
            clipMetadata3 = [v6 clipMetadata];
            clipURL2 = [clipMetadata3 clipURL];
            v53 = clipURL2;
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

          clipOpenButtonTitle = [clipMetadata clipOpenButtonTitle];
          uppercaseString = [clipOpenButtonTitle uppercaseString];
          action = [v26 action];
          [action setLabel:uppercaseString];

          v21 = objc_opt_new();
          [v21 setType:23];
          [v21 setApplicationBundleIdentifier:@"com.apple.application"];
          applicationBundleIdentifier = [v21 applicationBundleIdentifier];
          [v21 setResultBundleId:applicationBundleIdentifier];

          v39 = MEMORY[0x1E696AEC0];
          clipMetadata4 = [v6 clipMetadata];
          webClipID = [clipMetadata4 webClipID];
          v42 = webClipID;
          if (webClipID)
          {
            v43 = webClipID;
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
        clipBusinessIconURL2 = [clipMetadata fullAppIconURL];
      }

      fullAppCachedIconFilePath2 = clipBusinessIconURL2;
      fullAppIconURL = [v23 initWithURL:clipBusinessIconURL2];
    }

    goto LABEL_15;
  }

  v21 = 0;
LABEL_25:

LABEL_26:

  return v21;
}

+ (id)detailedRowCardSectionWithTitle:(id)title subtitles:(id)subtitles thumbnail:(id)thumbnail trailingImage:(id)image
{
  v29 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  subtitlesCopy = subtitles;
  thumbnailCopy = thumbnail;
  imageCopy = image;
  v13 = objc_opt_new();
  [v13 setShouldUseCompactDisplay:1];
  [v13 setThumbnail:thumbnailCopy];
  [v13 setTrailingThumbnail:imageCopy];
  v23 = titleCopy;
  v14 = [MEMORY[0x1E69CA3A0] textWithString:titleCopy];
  [v13 setTitle:v14];

  v15 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = subtitlesCopy;
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

+ (BOOL)_isAutoShortcutEnabledForSpotlight:(id)spotlight
{
  v25 = *MEMORY[0x1E69E9840];
  spotlightCopy = spotlight;
  bundleIdentifier = [spotlightCopy bundleIdentifier];
  v6 = [self isAutoShortcutsEnabledForSpotlightForBundleId:bundleIdentifier];

  if ((v6 & 1) == 0)
  {
    v11 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier2 = [spotlightCopy bundleIdentifier];
      v21 = 138412290;
      v22 = bundleIdentifier2;
      _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "ATXSFL: All auto shortcuts are disabled for app: %@", &v21, 0xCu);
LABEL_10:
    }

LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  bundleIdentifier3 = [spotlightCopy bundleIdentifier];
  phrase = [spotlightCopy phrase];
  signature = [phrase signature];
  v10 = [self isAutoShortcutEnabledForSpotlightForBundleId:bundleIdentifier3 signature:signature];

  v11 = __atxlog_handle_zkw_hide();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if ((v10 & 1) == 0)
  {
    if (v12)
    {
      bundleIdentifier2 = [spotlightCopy phrase];
      signature2 = [bundleIdentifier2 signature];
      bundleIdentifier4 = [spotlightCopy bundleIdentifier];
      v21 = 138412546;
      v22 = signature2;
      v23 = 2112;
      v24 = bundleIdentifier4;
      _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "ATXSFL: Auto shortcut is hidden for shortcut with signature: %@ from app: %@", &v21, 0x16u);

      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v12)
  {
    bundleIdentifier5 = [spotlightCopy bundleIdentifier];
    phrase2 = [spotlightCopy phrase];
    signature3 = [phrase2 signature];
    v21 = 138412546;
    v22 = bundleIdentifier5;
    v23 = 2112;
    v24 = signature3;
    _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "ATXSFL: Can display auto shortcut for app: %@ with shortcut signature: %@", &v21, 0x16u);
  }

  v16 = 1;
LABEL_12:

  return v16;
}

+ (BOOL)isAutoShortcutsEnabledForSpotlightForBundleId:(id)id
{
  idCopy = id;
  v4 = objc_alloc(MEMORY[0x1E695DFD8]);
  v5 = CFPreferencesCopyValue(@"SBSearchDisabledBundles", @"com.apple.spotlightui", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v6 = v5;
  if (v5)
  {
    array = v5;
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  v8 = array;

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
  if ([v11 containsObject:idCopy])
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    v13 = objc_opt_new();
    v12 = [v13 autoShortcutHasBeenHiddenForIdentifier:idCopy] ^ 1;
  }

  return v12;
}

+ (BOOL)isAutoShortcutEnabledForSpotlightForBundleId:(id)id signature:(id)signature
{
  signatureCopy = signature;
  idCopy = id;
  v7 = objc_opt_new();
  v8 = [idCopy stringByAppendingString:signatureCopy];

  LOBYTE(idCopy) = [v7 autoShortcutHasBeenHiddenForIdentifier:v8];
  return idCopy ^ 1;
}

+ (id)_iconForParameterizedAutoShortcutContextualAction:(id)action provider:(id)provider
{
  v30 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  providerCopy = provider;
  if (actionCopy)
  {
    phrase = [actionCopy phrase];
    parameterIdentifier = [phrase parameterIdentifier];

    if (!parameterIdentifier)
    {
      v12 = __atxlog_handle_blending();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        bundleIdentifier = [actionCopy bundleIdentifier];
        actionIdentifier = [actionCopy actionIdentifier];
        *buf = 138412546;
        v27 = bundleIdentifier;
        v28 = 2112;
        v29 = actionIdentifier;
        _os_log_impl(&dword_1BF549000, v12, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: [AutoShortcut] not a phrase with parameters, use contextualAction icon %@, %@", buf, 0x16u);
      }

      v14 = 0;
      goto LABEL_23;
    }

    v25 = parameterIdentifier;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    v24 = 0;
    v11 = [providerCopy propertiesForIdentifiers:v10 error:&v24];
    v12 = v24;

    if (v12)
    {
      v13 = __atxlog_handle_blending();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ATXSpotlightClient _iconForParameterizedAutoShortcutContextualAction:actionCopy provider:?];
      }
    }

    else
    {
      if (v11)
      {
        v19 = [v11 objectForKeyedSubscript:parameterIdentifier];
        v13 = v19;
        if (v19)
        {
          value = [v19 value];
          displayRepresentation = [value displayRepresentation];

          image = [displayRepresentation image];
          v14 = [self _contextualActionIconFromLNImage:image];
        }

        else
        {
          displayRepresentation = __atxlog_handle_blending();
          if (os_log_type_enabled(displayRepresentation, OS_LOG_TYPE_ERROR))
          {
            [ATXSpotlightClient _iconForParameterizedAutoShortcutContextualAction:actionCopy provider:?];
          }

          v14 = 0;
        }

        goto LABEL_22;
      }

      v13 = __atxlog_handle_blending();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ATXSpotlightClient _iconForParameterizedAutoShortcutContextualAction:actionCopy provider:?];
      }
    }

    v14 = 0;
LABEL_22:

LABEL_23:
    goto LABEL_24;
  }

  parameterIdentifier = __atxlog_handle_blending();
  if (os_log_type_enabled(parameterIdentifier, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier2 = [0 bundleIdentifier];
    actionIdentifier2 = [0 actionIdentifier];
    *buf = 138412546;
    v27 = bundleIdentifier2;
    v28 = 2112;
    v29 = actionIdentifier2;
    _os_log_impl(&dword_1BF549000, parameterIdentifier, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: [AutoShortcut] is not an Auto Shortcut, use contextualAction icon %@, %@", buf, 0x16u);
  }

  v14 = 0;
LABEL_24:

  return v14;
}

+ (id)_contextualActionIconFromLNImage:(id)image
{
  v28 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];
  lowercaseString = [processName lowercaseString];
  v7 = [lowercaseString isEqualToString:@"duetexpertd"];

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

    wf_image = [imageCopy wf_image];
    v8 = wf_image;
    if (wf_image)
    {
      v11 = [wf_image URL];

      if (v11)
      {
        v12 = MEMORY[0x1E69E0A40];
        data2 = [v8 URL];
        [imageCopy displayStyle];
        v14 = [v12 iconWithImageURL:data2 displayStyle:WFContextualActionIconDisplayStyleForLNImageDisplayStyle()];
LABEL_20:
        v9 = v14;
        goto LABEL_21;
      }

      data = [v8 data];

      if (data)
      {
        v16 = MEMORY[0x1E69E0A40];
        data2 = [v8 data];
        [imageCopy displayStyle];
        v14 = [v16 iconWithImageData:data2 scale:WFContextualActionIconDisplayStyleForLNImageDisplayStyle() displayStyle:0.0];
        goto LABEL_20;
      }

      symbolName = [v8 symbolName];

      if (symbolName)
      {
        v18 = MEMORY[0x1E69E0A40];
        data2 = [v8 symbolName];
        v14 = [v18 iconWithSystemName:data2];
        goto LABEL_20;
      }

      data2 = __atxlog_handle_ui();
      if (os_log_type_enabled(data2, OS_LOG_TYPE_FAULT))
      {
        +[ATXSpotlightClient _contextualActionIconFromLNImage:];
      }
    }

    else
    {
      data2 = __atxlog_handle_blending();
      if (os_log_type_enabled(data2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BF549000, data2, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: [AutoShortcut] wfimage nil", buf, 2u);
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
  v5 = [self recentUpcomingMediaActionsWithLimit:4];
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
        v14 = [self _resultWithATXAction:v13];
        if (v14 && ([*(v11 + 3560) proactiveTopicWithResult:v14], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v16 = v15;
          v17 = __atxlog_handle_ui();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            [self descriptionForTopic:v16];
            v18 = v10;
            selfCopy = self;
            v20 = v7;
            v21 = v11;
            v23 = v22 = v3;
            *buf = 138412290;
            v36 = v23;
            _os_log_impl(&dword_1BF549000, v17, OS_LOG_TYPE_DEFAULT, "ATXSpotlightClient: Topic: %@", buf, 0xCu);

            v3 = v22;
            v11 = v21;
            v7 = v20;
            self = selfCopy;
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

+ (id)recentUpcomingMediaActionsWithLimit:(unint64_t)limit
{
  v43 = *MEMORY[0x1E69E9840];
  v30 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:limit];
  v29 = +[ATXUpcomingMediaQuery getAllUpcomingMedia];
  sortedUpcomingMedia = [v29 sortedUpcomingMedia];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:limit];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = sortedUpcomingMedia;
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

        first = [*(*(&v35 + 1) + 8 * i) first];
        [v5 addObject:first];
      }

      v8 = [v6 countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v8);
  }

  v12 = [v5 count];
  if (v12 >= limit)
  {
    limitCopy = limit;
  }

  else
  {
    limitCopy = v12;
  }

  v14 = [v5 subarrayWithRange:{0, limitCopy}];
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
        launchId = [v19 launchId];

        if (launchId)
        {
          v21 = [ATXAction alloc];
          v22 = objc_opt_new();
          launchId2 = [v19 launchId];
          LOBYTE(v28) = 0;
          v24 = [(ATXAction *)v21 initWithIntent:v19 actionUUID:v22 bundleId:launchId2 heuristic:0 heuristicMetadata:0 criteria:0 isFutureMedia:v28 title:0 subtitle:0];

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
  actionTitle = [a2 actionTitle];
  *self = 138412290;
  *a3 = actionTitle;
  _os_log_error_impl(&dword_1BF549000, a4, OS_LOG_TYPE_ERROR, "ATXSpotlightClient: Topic: nil: %@", self, 0xCu);
}

@end