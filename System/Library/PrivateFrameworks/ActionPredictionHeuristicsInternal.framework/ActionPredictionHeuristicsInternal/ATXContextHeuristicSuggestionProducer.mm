@interface ATXContextHeuristicSuggestionProducer
+ (id)_bundleIDWithURL:(id)a3;
+ (id)_clientModelSpecForSpotlightRecents;
+ (id)_clientModelSpectForContextHeuristics;
+ (id)_dummyUiSpecWithTitle:(id)a3 subtitle:(id)a4 predictionReason:(id)a5 shouldClearOnEngagement:(BOOL)a6 predictionReasons:(unint64_t)a7;
+ (id)_executableSpecForShortcutsAction:(id)a3;
+ (id)_executableSpecForSpotlightAction:(id)a3;
+ (id)_mediaWithName:(id)a3 type:(int64_t)a4 adamIdentifier:(int64_t)a5 umcIdentifier:(id)a6 predictionReasons:(unint64_t)a7 localizedReason:(id)a8 score:(double)a9 expirationDate:(id)a10;
+ (id)_suggestionWithSpotlightAction:(id)a3 predictionReasons:(unint64_t)a4 localizedReason:(id)a5 score:(double)a6 uiSpec:(id)a7 dateInterval:(id)a8;
+ (id)_suggestionWithSpotlightRecentAction:(id)a3 score:(double)a4;
+ (id)_uiSpecWithTitle:(id)a3 subtitle:(id)a4 predictionReason:(id)a5 shouldClearOnEngagement:(BOOL)a6 predictionReasons:(unint64_t)a7 dateInterval:(id)a8;
+ (id)createSuggestionFromShortcutsAction:(id)a3 predictionReasons:(unint64_t)a4 localizedReason:(id)a5 title:(id)a6 subtitle:(id)a7 score:(double)a8 shouldClearOnEngagement:(BOOL)a9 dateInterval:(id)a10;
+ (id)dummySuggestionWithSpotlightAction:(id)a3 predictionReasons:(unint64_t)a4 localizedReason:(id)a5 score:(double)a6;
+ (id)flightCheckInActivityWithSubtitle:(id)a3 url:(id)a4 teamIdentifier:(id)a5 predictionReasons:(unint64_t)a6 localizedReason:(id)a7 score:(double)a8 validStartDate:(id)a9 validEndDate:(id)a10;
+ (id)navigationToDestination:(id)a3 title:(id)a4 subtitle:(id)a5 transportType:(unint64_t)a6 destinationName:(id)a7 predictionReasons:(unint64_t)a8 localizedReason:(id)a9 score:(double)a10 shouldClearOnEngagement:(BOOL)a11 validStartDate:(id)a12 validEndDate:(id)a13 dateInterval:(id)a14;
+ (id)rideshareAppActionForDestination:(id)a3 preferredBundleId:(id)a4 predictionReasons:(unint64_t)a5 title:(id)a6 localizedReason:(id)a7 score:(double)a8 validFromStartDate:(id)a9 validToEndDate:(id)a10 dateInterval:(id)a11;
+ (id)suggestionForConferenceWithURL:(id)a3 score:(double)a4 predictionReasons:(unint64_t)a5 localizedReason:(id)a6 criteria:(id)a7 dateInterval:(id)a8;
+ (id)suggestionForDNDWithTitle:(id)a3 eventUniqueID:(id)a4 identifier:(id)a5 until:(id)a6 score:(double)a7 predictionReasons:(unint64_t)a8 localizedReason:(id)a9 validFromStartDate:(id)a10 validToEndDate:(id)a11 dateInterval:(id)a12;
+ (id)suggestionWithAction:(id)a3 predictionReasons:(unint64_t)a4 localizedReason:(id)a5 score:(double)a6 dateInterval:(id)a7;
+ (id)suggestionWithExecutableSpecification:(id)a3 title:(id)a4 subtitle:(id)a5 predictionReasons:(unint64_t)a6 localizedReason:(id)a7 score:(double)a8;
+ (id)suggestionWithShortcutAction:(id)a3 predictionReasons:(unint64_t)a4 localizedReason:(id)a5 title:(id)a6 subtitle:(id)a7 score:(double)a8 dateInterval:(id)a9;
+ (id)suggestionWithURL:(id)a3 actionTitle:(id)a4 subtitle:(id)a5 bundleID:(id)a6 score:(double)a7 predictionReasons:(unint64_t)a8 criteria:(id)a9 dateInterval:(id)a10;
+ (id)toggleAirplaneModeWithPredictionReasons:(unint64_t)a3 localizedReason:(id)a4 score:(double)a5 validFromStartDate:(id)a6 validToEndDate:(id)a7 dateInterval:(id)a8;
@end

@implementation ATXContextHeuristicSuggestionProducer

+ (id)createSuggestionFromShortcutsAction:(id)a3 predictionReasons:(unint64_t)a4 localizedReason:(id)a5 title:(id)a6 subtitle:(id)a7 score:(double)a8 shouldClearOnEngagement:(BOOL)a9 dateInterval:(id)a10
{
  v15 = MEMORY[0x277D42080];
  v16 = a10;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a3;
  v21 = [v15 alloc];
  v22 = [v20 contextualAction];
  v23 = [v22 displayString];
  v24 = [v20 contextualAction];
  v25 = [v24 identifier];
  v26 = [v21 initWithExecutableObject:v20 executableDescription:v23 executableIdentifier:v25 suggestionExecutableType:9];

  v27 = [a1 _uiSpecWithTitle:v18 subtitle:v17 predictionReason:v19 shouldClearOnEngagement:0 predictionReasons:a4 dateInterval:v16];

  v28 = [objc_alloc(MEMORY[0x277D42090]) initWithRawScore:4 suggestedConfidenceCategory:a8];
  v29 = objc_alloc(MEMORY[0x277D42068]);
  v30 = [a1 _clientModelSpectForContextHeuristics];
  v31 = [v29 initWithClientModelSpecification:v30 executableSpecification:v26 uiSpecification:v27 scoreSpecification:v28];

  return v31;
}

+ (id)suggestionWithExecutableSpecification:(id)a3 title:(id)a4 subtitle:(id)a5 predictionReasons:(unint64_t)a6 localizedReason:(id)a7 score:(double)a8
{
  v34 = *MEMORY[0x277D85DE8];
  v13 = a7;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v33 = a6;
    _os_log_impl(&dword_23E3EA000, v17, OS_LOG_TYPE_DEFAULT, "ATXProactiveSuggestion: suggestionWithExecutableSpecification predictionReasons:%llu", buf, 0xCu);
  }

  v18 = objc_alloc(MEMORY[0x277D42080]);
  v19 = [v16 executableObject];
  v20 = [v16 executableDescription];
  v21 = [v16 executableIdentifier];
  v22 = [v16 executableType];

  v23 = [v18 initWithExecutableObject:v19 executableDescription:v20 executableIdentifier:v21 suggestionExecutableType:v22];
  v24 = [a1 _uiSpecWithTitle:v15 subtitle:v14 predictionReason:v13 shouldClearOnEngagement:0 predictionReasons:a6 dateInterval:0];

  v25 = [objc_alloc(MEMORY[0x277D42090]) initWithRawScore:4 suggestedConfidenceCategory:a8];
  v26 = objc_alloc(MEMORY[0x277D42068]);
  v27 = [a1 _clientModelSpectForContextHeuristics];
  v28 = [v26 initWithClientModelSpecification:v27 executableSpecification:v23 uiSpecification:v24 scoreSpecification:v25];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (id)dummySuggestionWithSpotlightAction:(id)a3 predictionReasons:(unint64_t)a4 localizedReason:(id)a5 score:(double)a6
{
  v10 = a5;
  v11 = a3;
  v12 = [v11 actionDescription];
  v13 = [a1 _dummyUiSpecWithTitle:v12 subtitle:0 predictionReason:v10 shouldClearOnEngagement:0 predictionReasons:a4];
  v14 = [a1 _suggestionWithSpotlightAction:v11 predictionReasons:a4 localizedReason:v10 score:v13 uiSpec:0 dateInterval:a6];

  return v14;
}

+ (id)_suggestionWithSpotlightAction:(id)a3 predictionReasons:(unint64_t)a4 localizedReason:(id)a5 score:(double)a6 uiSpec:(id)a7 dateInterval:(id)a8
{
  v33 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v18 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v15 hash];
    v20 = [v14 actionDescription];
    v29 = 134218242;
    v30 = v19;
    v31 = 2112;
    v32 = v20;
    _os_log_impl(&dword_23E3EA000, v18, OS_LOG_TYPE_DEFAULT, "ATXProactiveSuggestion: suggestionWithSpotlightAction reason.hash:%lu description:%@", &v29, 0x16u);
  }

  v21 = [a1 _executableSpecForSpotlightAction:v14];
  if (!v16)
  {
    v22 = [v14 actionDescription];
    v16 = [a1 _uiSpecWithTitle:v22 subtitle:0 predictionReason:v15 shouldClearOnEngagement:0 predictionReasons:a4 dateInterval:v17];
  }

  v23 = [objc_alloc(MEMORY[0x277D42090]) initWithRawScore:4 suggestedConfidenceCategory:a6];
  v24 = objc_alloc(MEMORY[0x277D42068]);
  v25 = [a1 _clientModelSpectForContextHeuristics];
  v26 = [v24 initWithClientModelSpecification:v25 executableSpecification:v21 uiSpecification:v16 scoreSpecification:v23];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)suggestionWithShortcutAction:(id)a3 predictionReasons:(unint64_t)a4 localizedReason:(id)a5 title:(id)a6 subtitle:(id)a7 score:(double)a8 dateInterval:(id)a9
{
  v42 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v37 = a5;
  v16 = a6;
  v17 = a7;
  v36 = a9;
  v18 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v15 contextualAction];
    *buf = 134218242;
    v39 = a4;
    v40 = 2112;
    v41 = v19;
    _os_log_impl(&dword_23E3EA000, v18, OS_LOG_TYPE_DEFAULT, "ATXProactiveSuggestion: suggestionWithShortcutAction predictionReasons:%llu shortcutsAction.contextualAction:%@", buf, 0x16u);
  }

  v20 = objc_alloc(MEMORY[0x277D42080]);
  v21 = [v15 contextualAction];
  v22 = [v21 identifier];
  v23 = [v15 contextualAction];
  v24 = [v23 uniqueIdentifier];
  v25 = [v20 initWithExecutableObject:v15 executableDescription:v22 executableIdentifier:v24 suggestionExecutableType:9];

  if (!v16)
  {
    v26 = [v15 contextualAction];
    v16 = [v26 displayString];
  }

  v27 = [a1 _uiSpecWithTitle:v16 subtitle:v17 predictionReason:v37 shouldClearOnEngagement:0 predictionReasons:a4 dateInterval:{v36, v16}];
  v28 = [objc_alloc(MEMORY[0x277D42090]) initWithRawScore:4 suggestedConfidenceCategory:a8];
  v29 = objc_alloc(MEMORY[0x277D42068]);
  v30 = [a1 _clientModelSpectForContextHeuristics];
  v31 = [v29 initWithClientModelSpecification:v30 executableSpecification:v25 uiSpecification:v27 scoreSpecification:v28];

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

+ (id)suggestionWithAction:(id)a3 predictionReasons:(unint64_t)a4 localizedReason:(id)a5 score:(double)a6 dateInterval:(id)a7
{
  v35 = *MEMORY[0x277D85DE8];
  v12 = a7;
  v13 = a5;
  v14 = a3;
  v15 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v34 = a4;
    _os_log_impl(&dword_23E3EA000, v15, OS_LOG_TYPE_DEFAULT, "ATXProactiveSuggestion: _suggestionWithAction predictionReasons:%llu", buf, 0xCu);
  }

  v16 = objc_alloc(MEMORY[0x277CCACA8]);
  v17 = [v14 actionTitle];
  v18 = [v14 actionSubtitle];
  v19 = [v16 initWithFormat:@"%@ | %@", v17, v18];

  v20 = objc_alloc(MEMORY[0x277CCACA8]);
  v21 = [v14 actionKey];
  v22 = [v20 initWithFormat:@"%@:%tu", v21, objc_msgSend(v14, "paramHash")];

  v23 = [objc_alloc(MEMORY[0x277D42080]) initWithExecutableObject:v14 executableDescription:v19 executableIdentifier:v22 suggestionExecutableType:2];
  v24 = [v14 actionTitle];
  v25 = [v14 actionSubtitle];

  v26 = [a1 _uiSpecWithTitle:v24 subtitle:v25 predictionReason:v13 shouldClearOnEngagement:0 predictionReasons:a4 dateInterval:v12];

  v27 = [objc_alloc(MEMORY[0x277D42090]) initWithRawScore:4 suggestedConfidenceCategory:a6];
  v28 = objc_alloc(MEMORY[0x277D42068]);
  v29 = [a1 _clientModelSpectForContextHeuristics];
  v30 = [v28 initWithClientModelSpecification:v29 executableSpecification:v23 uiSpecification:v26 scoreSpecification:v27];

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

+ (id)_executableSpecForShortcutsAction:(id)a3
{
  v3 = MEMORY[0x277D42080];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 contextualAction];
  v7 = [v6 displayString];
  v8 = [v4 contextualAction];
  v9 = [v8 identifier];
  v10 = [v5 initWithExecutableObject:v4 executableDescription:v7 executableIdentifier:v9 suggestionExecutableType:9];

  return v10;
}

+ (id)_executableSpecForSpotlightAction:(id)a3
{
  v3 = MEMORY[0x277D42080];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 actionDescription];
  v7 = [v4 actionIdentifier];
  v8 = [v5 initWithExecutableObject:v4 executableDescription:v6 executableIdentifier:v7 suggestionExecutableType:8];

  return v8;
}

+ (id)_suggestionWithSpotlightRecentAction:(id)a3 score:(double)a4
{
  v6 = [a1 _executableSpecForSpotlightAction:a3];
  v7 = [a1 _uiSpecWithTitle:0 subtitle:0 predictionReason:0 shouldClearOnEngagement:0 predictionReasons:0x1000000 dateInterval:0];
  v8 = [objc_alloc(MEMORY[0x277D42090]) initWithRawScore:4 suggestedConfidenceCategory:a4];
  v9 = objc_alloc(MEMORY[0x277D42068]);
  v10 = [a1 _clientModelSpecForSpotlightRecents];
  v11 = [v9 initWithClientModelSpecification:v10 executableSpecification:v6 uiSpecification:v7 scoreSpecification:v8];

  return v11;
}

+ (id)suggestionForDNDWithTitle:(id)a3 eventUniqueID:(id)a4 identifier:(id)a5 until:(id)a6 score:(double)a7 predictionReasons:(unint64_t)a8 localizedReason:(id)a9 validFromStartDate:(id)a10 validToEndDate:(id)a11 dateInterval:(id)a12
{
  v48 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a12;
  v20 = a11;
  v21 = a10;
  v22 = a9;
  v23 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v41 = "+[ATXContextHeuristicSuggestionProducer suggestionForDNDWithTitle:eventUniqueID:identifier:until:score:predictionReasons:localizedReason:validFromStartDate:validToEndDate:dateInterval:]";
    v42 = 2048;
    v43 = [v16 hash];
    v44 = 2112;
    v45 = v17;
    v46 = 2112;
    v47 = v18;
    _os_log_impl(&dword_23E3EA000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s title.hash:%lu eventUniqueID:%@, until:%@", buf, 0x2Au);
  }

  [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v36 = v17;
  v24 = v37 = v16;
  v35 = v18;
  v25 = [v24 localizedStringForKey:@"SUGGESTION_DND_TITLE" value:&stru_2850AD368 table:0];
  v26 = objc_alloc(MEMORY[0x277D7A190]);
  v27 = [v26 initWithIdentifier:*MEMORY[0x277D7A7C8] name:v25 symbolName:@"moon.fill" colorName:@"systemIndigoColor"];
  v28 = [MEMORY[0x277D7A188] toggle:v27];
  v29 = [v24 localizedStringForKey:@"SUGGESTION_DND_TITLE" value:&stru_2850AD368 table:0];
  v30 = [objc_alloc(MEMORY[0x277CEB2D0]) initWithStartDate:v21 endDate:v20 lockScreenEligible:0 predicate:0];

  v31 = [objc_alloc(MEMORY[0x277CEB820]) initWithContextualAction:v28 criteria:v30];
  v32 = [a1 suggestionWithShortcutAction:v31 predictionReasons:a8 localizedReason:v22 title:v29 subtitle:0 score:v19 dateInterval:a7];

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

+ (id)suggestionForConferenceWithURL:(id)a3 score:(double)a4 predictionReasons:(unint64_t)a5 localizedReason:(id)a6 criteria:(id)a7 dateInterval:(id)a8
{
  v38 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v31 = a6;
  v15 = a7;
  v16 = a8;
  v17 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v14;
    _os_log_impl(&dword_23E3EA000, v17, OS_LOG_TYPE_DEFAULT, "ATXProactiveSuggestion: ***** suggestionForConferenceWithURL:%@", buf, 0xCu);
  }

  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"SUGGESTION_JOIN_TITLE" value:&stru_2850AD368 table:0];
  v20 = [a1 _bundleIDWithURL:v14];
  if ([v20 isEqualToString:@"com.apple.mobilephone"] && objc_msgSend(MEMORY[0x277D42590], "isiPad"))
  {
    v21 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v21, OS_LOG_TYPE_DEFAULT, "suggestionForConferenceWithURL: no Phone application on iPad. Skipping suggestion", buf, 2u);
    }

    v22 = 0;
    v23 = v31;
  }

  else
  {
    v24 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      [v14 absoluteString];
      v26 = v25 = a5;
      *buf = 138412802;
      v33 = v26;
      v34 = 2112;
      v35 = v20;
      v36 = 2112;
      v37 = v19;
      _os_log_impl(&dword_23E3EA000, v24, OS_LOG_TYPE_DEFAULT, "[[WFOpenURLContextualAction alloc] initWithURL:%@ bundleIdentifier:%@ actionTitle:%@", buf, 0x20u);

      a5 = v25;
    }

    v21 = [objc_alloc(MEMORY[0x277D7A078]) initWithURL:v14 bundleIdentifier:v20 actionTitle:v19];
    v27 = [objc_alloc(MEMORY[0x277CEB820]) initWithContextualAction:v21 criteria:v15];
    v28 = a1;
    v23 = v31;
    v22 = [v28 suggestionWithShortcutAction:v27 predictionReasons:a5 localizedReason:v31 title:0 subtitle:0 score:v16 dateInterval:a4];
  }

  v29 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)suggestionWithURL:(id)a3 actionTitle:(id)a4 subtitle:(id)a5 bundleID:(id)a6 score:(double)a7 predictionReasons:(unint64_t)a8 criteria:(id)a9 dateInterval:(id)a10
{
  v36 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  v19 = a6;
  v20 = a10;
  v21 = a9;
  v22 = a5;
  v23 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v17 absoluteString];
    v30 = 138412802;
    v31 = v24;
    v32 = 2112;
    v33 = v19;
    v34 = 2112;
    v35 = v18;
    _os_log_impl(&dword_23E3EA000, v23, OS_LOG_TYPE_DEFAULT, "[[WFOpenURLContextualAction alloc] initWithURL:%@ bundleIdentifier:%@ actionTitle:%@", &v30, 0x20u);
  }

  v25 = [objc_alloc(MEMORY[0x277D7A078]) initWithURL:v17 bundleIdentifier:v19 actionTitle:v18];
  v26 = [objc_alloc(MEMORY[0x277CEB820]) initWithContextualAction:v25 criteria:v21];

  v27 = [a1 suggestionWithShortcutAction:v26 predictionReasons:a8 localizedReason:0 title:0 subtitle:v22 score:v20 dateInterval:a7];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (id)_bundleIDWithURL:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  if (v3)
  {
    v16 = 0;
    v5 = [MEMORY[0x277CC1E48] appLinksWithURL:v3 limit:1 error:&v16];
    v6 = v16;
    v7 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&dword_23E3EA000, v7, OS_LOG_TYPE_DEFAULT, "ATXProactiveSuggestion: appLinksWithURL links:%@", buf, 0xCu);
    }

    if ([v5 count])
    {
      v8 = [v5 firstObject];
      v9 = [v8 targetApplicationRecord];
      v10 = __atxlog_handle_context_heuristic();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v9;
        _os_log_impl(&dword_23E3EA000, v10, OS_LOG_TYPE_DEFAULT, "ATXProactiveSuggestion: appLinksWithURL record:%@", buf, 0xCu);
      }

      v11 = [v9 bundleIdentifier];

      if (v11)
      {
        v11 = [v9 bundleIdentifier];
      }
    }

    else
    {
      v8 = __atxlog_handle_context_heuristic();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(ATXContextHeuristicSuggestionProducer *)v6 _bundleIDWithURL:v8];
      }

      v11 = 0;
    }

    v13 = INDisplayableOrLaunchableBundleIdForBundleIdFromUserActivity();
    v12 = ATXBundleIdReplacementForBundleIdWithWebpageURLHint();
  }

  else
  {
    v12 = 0;
    v6 = 0;
  }

  objc_autoreleasePoolPop(v4);
  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)_clientModelSpectForContextHeuristics
{
  v2 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:44];
  v3 = [objc_alloc(MEMORY[0x277D42078]) initWithClientModelId:v2 clientModelVersion:@"1.0" engagementResetPolicy:1];

  return v3;
}

+ (id)_clientModelSpecForSpotlightRecents
{
  v2 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:46];
  v3 = [objc_alloc(MEMORY[0x277D42078]) initWithClientModelId:v2 clientModelVersion:@"1.0" engagementResetPolicy:1];

  return v3;
}

+ (id)_uiSpecWithTitle:(id)a3 subtitle:(id)a4 predictionReason:(id)a5 shouldClearOnEngagement:(BOOL)a6 predictionReasons:(unint64_t)a7 dateInterval:(id)a8
{
  v27[1] = *MEMORY[0x277D85DE8];
  v13 = MEMORY[0x277D42088];
  v14 = a8;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [[v13 alloc] initWithApplicableSuggestionLayout:5];
  v27[0] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];

  v20 = objc_alloc(MEMORY[0x277D420A0]);
  v21 = [v14 startDate];
  v22 = [v14 endDate];

  BYTE1(v26) = a6;
  LOBYTE(v26) = 1;
  v23 = [v20 initWithTitle:v17 subtitle:v16 predictionReason:v15 preferredLayoutConfigs:v19 allowedOnLockscreen:0 allowedOnHomeScreen:0 allowedOnSpotlight:v26 shouldClearOnEngagement:a7 predictionReasons:v21 contextStartDate:v22 contextEndDate:?];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)_dummyUiSpecWithTitle:(id)a3 subtitle:(id)a4 predictionReason:(id)a5 shouldClearOnEngagement:(BOOL)a6 predictionReasons:(unint64_t)a7
{
  v21[1] = *MEMORY[0x277D85DE8];
  v11 = MEMORY[0x277D42088];
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [[v11 alloc] initWithApplicableSuggestionLayout:5];
  v21[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];

  BYTE1(v20) = a6;
  LOBYTE(v20) = 0;
  v17 = [objc_alloc(MEMORY[0x277D420A0]) initWithTitle:v14 subtitle:v13 predictionReason:v12 preferredLayoutConfigs:v16 allowedOnLockscreen:0 allowedOnHomeScreen:0 allowedOnSpotlight:v20 shouldClearOnEngagement:a7 predictionReasons:?];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)toggleAirplaneModeWithPredictionReasons:(unint64_t)a3 localizedReason:(id)a4 score:(double)a5 validFromStartDate:(id)a6 validToEndDate:(id)a7 dateInterval:(id)a8
{
  v14 = MEMORY[0x277D7A198];
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a4;
  v19 = [[v14 alloc] initWithSetting:0 operation:2];
  v20 = [objc_alloc(MEMORY[0x277CEB2D0]) initWithStartDate:v17 endDate:v16 lockScreenEligible:0 predicate:0];

  v21 = [objc_alloc(MEMORY[0x277CEB820]) initWithContextualAction:v19 criteria:v20];
  v22 = [a1 suggestionWithShortcutAction:v21 predictionReasons:a3 localizedReason:v18 title:0 subtitle:0 score:v15 dateInterval:a5];

  return v22;
}

+ (id)rideshareAppActionForDestination:(id)a3 preferredBundleId:(id)a4 predictionReasons:(unint64_t)a5 title:(id)a6 localizedReason:(id)a7 score:(double)a8 validFromStartDate:(id)a9 validToEndDate:(id)a10 dateInterval:(id)a11
{
  v17 = MEMORY[0x277D7A0B0];
  v18 = a11;
  v19 = a10;
  v20 = a9;
  v21 = a7;
  v22 = a6;
  v23 = a4;
  v24 = a3;
  v25 = [v17 alloc];
  v26 = [v24 location];
  v27 = [v24 name];

  v28 = [v25 initWithApplicationBundleIdentifier:v23 destination:v26 name:v27];
  v29 = [objc_alloc(MEMORY[0x277CEB2D0]) initWithStartDate:v20 endDate:v19 lockScreenEligible:0 predicate:0];

  v30 = [objc_alloc(MEMORY[0x277CEB820]) initWithContextualAction:v28 criteria:v29];
  v31 = [a1 createSuggestionFromShortcutsAction:v30 predictionReasons:a5 localizedReason:v21 title:v22 subtitle:0 score:0 shouldClearOnEngagement:a8 dateInterval:v18];

  return v31;
}

+ (id)flightCheckInActivityWithSubtitle:(id)a3 url:(id)a4 teamIdentifier:(id)a5 predictionReasons:(unint64_t)a6 localizedReason:(id)a7 score:(double)a8 validStartDate:(id)a9 validEndDate:(id)a10
{
  v18 = MEMORY[0x277CEB2D0];
  v19 = a10;
  v20 = a9;
  v21 = a7;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = [[v18 alloc] initWithStartDate:v20 endDate:v19 lockScreenEligible:0 predicate:0];

  v26 = [MEMORY[0x277CEB2C8] atx_showCheckInActionWithTeamId:v22 userActivityString:v23 subtitle:v24 overrideBundleId:0 suggestedEventUniqueKey:0 heuristicName:v21 criteria:v25];

  v27 = [a1 suggestionWithAction:v26 predictionReasons:a6 localizedReason:v21 score:0 dateInterval:a8];

  return v27;
}

+ (id)_mediaWithName:(id)a3 type:(int64_t)a4 adamIdentifier:(int64_t)a5 umcIdentifier:(id)a6 predictionReasons:(unint64_t)a7 localizedReason:(id)a8 score:(double)a9 expirationDate:(id)a10
{
  v17 = a3;
  v18 = a6;
  v19 = a8;
  v20 = a10;
  if ((a5 == 0) == (v18 != 0))
  {
    if (v18)
    {
LABEL_3:
      v21 = v18;
      goto LABEL_6;
    }
  }

  else
  {
    [ATXContextHeuristicSuggestionProducer _mediaWithName:a2 type:a1 adamIdentifier:a5 umcIdentifier:v18 predictionReasons:? localizedReason:? score:? expirationDate:?];
    if (v18)
    {
      goto LABEL_3;
    }
  }

  v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%lld", a5];
LABEL_6:
  v22 = v21;
  v23 = [objc_alloc(MEMORY[0x277CEB2D0]) initWithStartDate:0 endDate:v20 lockScreenEligible:0 predicate:0];
  v24 = [objc_alloc(MEMORY[0x277CEB860]) initWithMediaName:v17 identifier:v22 criteria:v23];

  v25 = [a1 suggestionWithSpotlightAction:v24 predictionReasons:a7 localizedReason:v19 score:0 dateInterval:a9];

  return v25;
}

+ (id)navigationToDestination:(id)a3 title:(id)a4 subtitle:(id)a5 transportType:(unint64_t)a6 destinationName:(id)a7 predictionReasons:(unint64_t)a8 localizedReason:(id)a9 score:(double)a10 shouldClearOnEngagement:(BOOL)a11 validStartDate:(id)a12 validEndDate:(id)a13 dateInterval:(id)a14
{
  v20 = MEMORY[0x277D79F90];
  v35 = a14;
  v21 = a13;
  v22 = a12;
  v23 = a9;
  v24 = a7;
  v25 = a5;
  v26 = a4;
  v27 = a3;
  v28 = [v20 alloc];
  v29 = [v27 location];

  v30 = [v28 initWithDestination:v29 name:v24 type:a6];
  v31 = [objc_alloc(MEMORY[0x277CEB2D0]) initWithStartDate:v22 endDate:v21 lockScreenEligible:0 predicate:0];

  v32 = [objc_alloc(MEMORY[0x277CEB820]) initWithContextualAction:v30 criteria:v31];
  v33 = [a1 createSuggestionFromShortcutsAction:v32 predictionReasons:a8 localizedReason:v23 title:v26 subtitle:v25 score:0 shouldClearOnEngagement:a10 dateInterval:v35];

  return v33;
}

+ (void)_bundleIDWithURL:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23E3EA000, a2, OS_LOG_TYPE_ERROR, "ATXProactiveSuggestion: LSAppLink error:%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_mediaWithName:(uint64_t)a3 type:(uint64_t)a4 adamIdentifier:umcIdentifier:predictionReasons:localizedReason:score:expirationDate:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"ATXContextHeuristicSuggestionProducer.m" lineNumber:568 description:{@"Expected either adamIdentifier (%lld) or umcIdentifier (%@) but not both", a3, a4}];
}

@end