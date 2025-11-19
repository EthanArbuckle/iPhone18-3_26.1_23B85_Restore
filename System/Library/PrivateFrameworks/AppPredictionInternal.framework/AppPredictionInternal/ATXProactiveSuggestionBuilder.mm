@interface ATXProactiveSuggestionBuilder
+ (BOOL)_isHeroAppForPredictionItem:(ATXPredictionItem *)a3;
+ (BOOL)_isHeuristicActionForActionResult:(id)a3;
+ (BOOL)_isInstalledAppClipForPredictionItem:(ATXPredictionItem *)a3;
+ (BOOL)_isMagicalMomentForPredictionItem:(ATXPredictionItem *)a3;
+ (BOOL)isMMAnchorWhitelistedForHomeScreen:(int64_t)a3;
+ (id)_actionPredictionReasonForActionResult:(id)a3 reasons:(id)a4;
+ (id)_appPredictionReasonForPredictionItem:(ATXPredictionItem *)a3 reasons:(id)a4;
+ (id)_executableSpecForAppClipWithHeroAppPrediction:(id)a3;
+ (id)_executableSpecForAppWithBundleId:(id)a3;
+ (id)_executableSpecForScoredAction:(id)a3;
+ (id)_executableSpecForSpotlightAction:(id)a3;
+ (id)_proactiveSuggestionForSpotlightPOIFromHeroAppPrediction:(id)a3 clientModelSpec:(id)a4;
+ (id)_proactiveSuggestionFromAppPredictionItem:(ATXPredictionItem *)a3 clientModelSpec:(id)a4 reasons:(id)a5;
+ (id)_proactiveSuggestionFromHeroAppPrediction:(id)a3 clientModelSpec:(id)a4 reasons:(id)a5;
+ (id)_proactiveSuggestionFromMagicalMomentsPredictionBundleId:(id)a3 mmSignals:(id)a4 clientModelSpec:(id)a5 reasons:(id)a6;
+ (id)_proactiveSuggestionsFromActionResult:(id)a3 clientModelSpec:(id)a4 reasons:(id)a5;
+ (id)_scoreSpecForAppClipWithScore:(double)a3 mediumThreshold:(double)a4 highThreshold:(double)a5;
+ (id)_scoreSpecForHeroAppPrediction:(id)a3;
+ (id)_scoreSpecForMagicalMomentsPredictionWithMmSignals:(id)a3;
+ (id)_scoreSpecForPredictionItem:(ATXPredictionItem *)a3;
+ (id)_scoreSpecForScore:(double)a3 highThreshold:(double)a4 mediumThreshold:(double)a5;
+ (id)_uiSpecForAppClipWithBundleId:(id)a3 title:(id)a4 subtitle:(id)a5 predictionReason:(id)a6;
+ (id)_uiSpecForAppWithBundleId:(id)a3 scoreSpec:(id)a4 predictionReason:(id)a5 allowedOnHomescreen:(BOOL)a6;
+ (id)_uiSpecForHeroAppPrediction:(id)a3 scoreSpec:(id)a4 predictionReason:(id)a5;
+ (id)_uiSpecForMMAppWithBundleId:(id)a3 scoreSpec:(id)a4 predictionReasonString:(id)a5 anchor:(int64_t)a6 predictionReasons:(unint64_t)a7;
+ (id)_uiSpecForScoredAction:(id)a3 scoreSpec:(id)a4 clientModelSpec:(id)a5 predictionReason:(id)a6 allowedOnLockscreen:(BOOL)a7 allowedOnHomescreen:(BOOL)a8 predictionReasons:(unint64_t)a9;
+ (id)_uiSpecForScoredAction:(id)a3 scoreSpec:(id)a4 clientModelSpec:(id)a5 predictionReason:(id)a6 shouldClearOnEngagement:(BOOL)a7 allowedOnLockscreen:(BOOL)a8 allowedOnHomescreen:(BOOL)a9 predictionReasons:(unint64_t)a10;
+ (id)_uiSpecForSpotlightPOIPrediction:(id)a3 predictionReasons:(unint64_t)a4;
+ (id)cachedTitleAndSubtitleForAction:(id)a3;
+ (id)executableIdForAction:(id)a3;
+ (id)predictionReasonForAnchorModelPrediction:(id)a3;
+ (id)proactiveSuggestionForAppClipFromHeroAppPrediction:(id)a3 clientModelSpec:(id)a4 mediumThreshold:(double)a5 highThreshold:(double)a6 reasons:(id)a7;
+ (id)proactiveSuggestionForAppClipsFromHeroAppPredictions:(id)a3 clientModelSpec:(id)a4 mediumThreshold:(double)a5 highThreshold:(double)a6;
+ (id)proactiveSuggestionForLinkActionPrediction:(id)a3 score:(double)a4 clientModelSpec:(id)a5 mediumThreshold:(double)a6 highThreshold:(double)a7 predictionReason:(id)a8 allowedOnHomescreen:(BOOL)a9;
+ (id)proactiveSuggestionForLockscreenAction:(id)a3 clientModelSpec:(id)a4;
+ (id)proactiveSuggestionsForAppsWithHeroAppPredictions:(id)a3 clientModelSpec:(id)a4;
+ (id)proactiveSuggestionsForAppsWithMagicalMomentsMap:(id)a3 clientModelSpec:(id)a4;
+ (id)proactiveSuggestionsForLockscreenActions:(id)a3 clientModelSpec:(id)a4;
+ (id)proactiveSuggestionsForSpotlightPOIWithHeroAppPredictions:(id)a3 clientModelSpec:(id)a4;
+ (id)proactiveSuggestionsFromActionResults:(id)a3 clientModelSpec:(id)a4;
+ (id)proactiveSuggestionsFromAppPredictionItems:(const void *)a3 clientModelSpec:(id)a4 maxSuggestionsToSendToBlendingLayer:(int)a5;
+ (id)proactiveSuggestionsFromHeuristicActionResults:(id)a3 clientModelSpec:(id)a4;
+ (int64_t)_confidenceCategoryForPredictionItem:(ATXPredictionItem *)a3;
+ (int64_t)_confidenceCategoryForScore:(double)a3 highThreshold:(double)a4 mediumThreshold:(double)a5;
+ (int64_t)_confidenceCategoryGivenIsHighConfidence:(BOOL)a3;
+ (unint64_t)_actionPredictionReasonsForActionResult:(id)a3 reasons:(id)a4;
+ (unint64_t)predictionReasonsForAnchorModelPrediction:(id)a3;
@end

@implementation ATXProactiveSuggestionBuilder

+ (id)predictionReasonForAnchorModelPrediction:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 anchorType];
  v6 = [ATXAnchor anchorClassFromAnchorTypeString:v5];

  if (!v6)
  {
    v7 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(ATXProactiveSuggestionBuilder *)v3 predictionReasonForAnchorModelPrediction:v7];
    }
  }

  v8 = [v3 anchorEvent];
  v9 = [(objc_class *)v6 anchorOccurenceDateFromDuetEvent:v8];

  v10 = [v4 actionAnchorReasonForAnchorType:@"Generic"];
  v11 = [v3 candidateType];
  v12 = [v11 isEqualToString:@"app"];

  if (!v12)
  {
    v20 = [v3 candidateType];
    if ([v20 isEqualToString:@"action"])
    {
    }

    else
    {
      v22 = [v3 candidateType];
      v23 = [v22 isEqualToString:@"linkaction"];

      if (!v23)
      {
        goto LABEL_18;
      }
    }

    v24 = objc_opt_new();
    [v24 timeIntervalSince1970];
    v26 = v25;
    [v9 timeIntervalSince1970];
    v28 = v26 - v27;

    if (v28 < 480.0)
    {
      v18 = [v3 anchorType];
      v19 = [v4 actionAnchorReasonForAnchorType:v18];
      goto LABEL_14;
    }

    v21 = [v4 actionAnchorReasonForAnchorType:@"Generic"];
LABEL_16:
    v29 = v21;
    goto LABEL_17;
  }

  v13 = objc_opt_new();
  [v13 timeIntervalSince1970];
  v15 = v14;
  [v9 timeIntervalSince1970];
  v17 = v15 - v16;

  if (v17 >= 480.0)
  {
    v21 = [v4 appAnchorReasonForAnchorType:@"Generic"];
    goto LABEL_16;
  }

  v18 = [v3 anchorType];
  v19 = [v4 appAnchorReasonForAnchorType:v18];
LABEL_14:
  v29 = v19;

  v10 = v18;
LABEL_17:

  v10 = v29;
LABEL_18:

  return v10;
}

+ (unint64_t)predictionReasonsForAnchorModelPrediction:(id)a3
{
  v3 = [a3 anchorType];
  v4 = [ATXAnchor stringToAnchorType:v3];

  if (v4 == 20)
  {
    return 0x1000000000;
  }

  else
  {
    return (v4 == 21) << 37;
  }
}

+ (id)proactiveSuggestionForLinkActionPrediction:(id)a3 score:(double)a4 clientModelSpec:(id)a5 mediumThreshold:(double)a6 highThreshold:(double)a7 predictionReason:(id)a8 allowedOnHomescreen:(BOOL)a9
{
  v50 = a9;
  v15 = a3;
  v16 = a5;
  v17 = a8;
  v51 = [a1 _scoreSpecForScore:a4 highThreshold:a7 mediumThreshold:a6];
  v18 = objc_alloc(MEMORY[0x277CCACA8]);
  v19 = [v15 bundleId];
  v20 = [v15 action];
  v21 = [v20 identifier];
  v52 = [v18 initWithFormat:@"%@:%@", v19, v21];

  v22 = objc_opt_new();
  v23 = [v15 bundleId];
  v24 = [v15 action];
  v25 = [v24 identifier];
  v53 = 0;
  v26 = [v22 actionForBundleIdentifier:v23 andActionIdentifier:v25 error:&v53];
  v27 = v53;

  v28 = v27;
  if (v27)
  {
    v29 = v26;
    v30 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v32 = v52;
      +[ATXProactiveSuggestionBuilder proactiveSuggestionForLinkActionPrediction:score:clientModelSpec:mediumThreshold:highThreshold:predictionReason:allowedOnHomescreen:];
      v31 = 0;
      v33 = v51;
    }

    else
    {
      v31 = 0;
      v33 = v51;
      v32 = v52;
    }
  }

  else
  {
    v34 = [v26 title];
    v35 = [v34 key];
    v36 = v35;
    v29 = v26;
    v49 = v22;
    if (v35)
    {
      v30 = v35;
    }

    else
    {
      v37 = [v15 action];
      v30 = [v37 identifier];

      v29 = v26;
    }

    v38 = [v29 descriptionMetadata];
    v39 = [v38 descriptionText];
    v40 = [v39 key];

    v47 = v40;
    v48 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ | %@", v30, v40];
    v41 = [objc_alloc(MEMORY[0x277D42080]) initWithExecutableObject:v15 executableDescription:v48 executableIdentifier:v52 suggestionExecutableType:10];
    if ([v51 suggestedConfidenceCategory] <= 2)
    {
      v42 = 44;
    }

    else
    {
      v42 = 40;
    }

    v43 = [MEMORY[0x277D42088] layoutConfigurationsForLayoutOptions:v42];
    LOWORD(v46) = 256;
    v44 = [objc_alloc(MEMORY[0x277D420A0]) initWithTitle:v30 subtitle:v40 predictionReason:v17 preferredLayoutConfigs:v43 allowedOnLockscreen:0 allowedOnHomeScreen:v50 allowedOnSpotlight:v46 shouldClearOnEngagement:?];
    v31 = [objc_alloc(MEMORY[0x277D42068]) initWithClientModelSpecification:v16 executableSpecification:v41 uiSpecification:v44 scoreSpecification:v51];

    v33 = v51;
    v32 = v52;

    v28 = 0;
    v22 = v49;
  }

  return v31;
}

+ (id)proactiveSuggestionsForAppsWithMagicalMomentsMap:(id)a3 clientModelSpec:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = [v10 objectForKeyedSubscript:{v15, v20}];
        v17 = [a1 _proactiveSuggestionFromMagicalMomentsPredictionBundleId:v15 mmSignals:v16 clientModelSpec:v7 reasons:v8];
        if (v17)
        {
          [v9 addObject:v17];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)_proactiveSuggestionFromMagicalMomentsPredictionBundleId:(id)a3 mmSignals:(id)a4 clientModelSpec:(id)a5 reasons:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v11 predictionIndex] <= 2)
  {
    v15 = [a1 _executableSpecForAppWithBundleId:v10];
    v16 = [a1 _scoreSpecForMagicalMomentsPredictionWithMmSignals:v11];
    v17 = [v13 appMagicalMomentReasonForAnchorType:{objc_msgSend(v11, "anchorType")}];
    v18 = [a1 _uiSpecForMMAppWithBundleId:v10 scoreSpec:v16 predictionReasonString:v17 anchor:objc_msgSend(v11 predictionReasons:{"anchorType"), objc_msgSend(v11, "atxReason")}];
    if (v18)
    {
      v14 = [objc_alloc(MEMORY[0x277D42068]) initWithClientModelSpecification:v12 executableSpecification:v15 uiSpecification:v18 scoreSpecification:v16];
    }

    else
    {
      v19 = __atxlog_handle_default();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        +[ATXProactiveSuggestionBuilder _proactiveSuggestionFromMagicalMomentsPredictionBundleId:mmSignals:clientModelSpec:reasons:];
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)_uiSpecForMMAppWithBundleId:(id)a3 scoreSpec:(id)a4 predictionReasonString:(id)a5 anchor:(int64_t)a6 predictionReasons:(unint64_t)a7
{
  v12 = a5;
  v13 = a3;
  if ([a4 suggestedConfidenceCategory] <= 2)
  {
    v14 = 2;
  }

  else
  {
    v14 = 42;
  }

  v15 = [MEMORY[0x277D42088] layoutConfigurationsForLayoutOptions:v14];
  LOWORD(v18) = 1;
  v16 = [objc_alloc(MEMORY[0x277D420A0]) initWithTitle:v13 subtitle:0 predictionReason:v12 preferredLayoutConfigs:v15 allowedOnLockscreen:0 allowedOnHomeScreen:objc_msgSend(a1 allowedOnSpotlight:"isMMAnchorWhitelistedForHomeScreen:" shouldClearOnEngagement:a6) predictionReasons:{v18, a7}];

  return v16;
}

+ (id)_scoreSpecForMagicalMomentsPredictionWithMmSignals:(id)a3
{
  v3 = a3;
  if ([v3 predictionIndex])
  {
    v4 = 2;
  }

  else
  {
    [v3 confidence];
    if (v5 > 0.25)
    {
      v4 = 4;
    }

    else
    {
      v4 = 2;
    }
  }

  v6 = objc_alloc(MEMORY[0x277D42090]);
  [v3 confidence];
  v7 = [v6 initWithRawScore:v4 suggestedConfidenceCategory:?];

  return v7;
}

+ (BOOL)isMMAnchorWhitelistedForHomeScreen:(int64_t)a3
{
  v4 = +[_ATXGlobals sharedInstance];
  v5 = [v4 whitelistedAnchorsForMagicalMomentsOnHomeScreen];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  LOBYTE(v4) = [v5 containsObject:v6];

  return v4;
}

+ (id)proactiveSuggestionsForLockscreenActions:(id)a3 clientModelSpec:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __90__ATXProactiveSuggestionBuilder_proactiveSuggestionsForLockscreenActions_clientModelSpec___block_invoke;
  v10[3] = &unk_2785985A0;
  v11 = v6;
  v12 = a1;
  v7 = v6;
  v8 = [a3 _pas_mappedArrayWithTransform:v10];

  return v8;
}

id __90__ATXProactiveSuggestionBuilder_proactiveSuggestionsForLockscreenActions_clientModelSpec___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __atxlog_handle_blending();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "lockscreen: converting action to proactive suggestion: %@", &v9, 0xCu);
  }

  v5 = [*(a1 + 40) proactiveSuggestionForLockscreenAction:v3 clientModelSpec:*(a1 + 32)];
  v6 = __atxlog_handle_blending();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __90__ATXProactiveSuggestionBuilder_proactiveSuggestionsForLockscreenActions_clientModelSpec___block_invoke_cold_1();
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)proactiveSuggestionForLockscreenAction:(id)a3 clientModelSpec:(id)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v7 = [v6 predictedItem];
  v8 = objc_alloc(MEMORY[0x277D42090]);
  [v6 score];
  v10 = v9;

  v11 = [v8 initWithRawScore:4 suggestedConfidenceCategory:v10];
  v12 = objc_alloc(MEMORY[0x277D42080]);
  v13 = [v7 description];
  v14 = [v7 actionUUID];
  v15 = [v14 UUIDString];
  v16 = [v12 initWithExecutableObject:v7 executableDescription:v13 executableIdentifier:v15 suggestionExecutableType:2];

  v17 = [objc_alloc(MEMORY[0x277D42088]) initWithApplicableSuggestionLayout:5];
  v18 = objc_alloc(MEMORY[0x277D420A0]);
  v19 = [v7 actionTitle];
  v20 = [v7 actionSubtitle];
  v26[0] = v17;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v22 = [v18 initWithTitle:v19 subtitle:v20 preferredLayoutConfigs:v21 allowedOnLockscreen:1 allowedOnHomeScreen:0 allowedOnSpotlight:0];

  v23 = [objc_alloc(MEMORY[0x277D42068]) initWithClientModelSpecification:v5 executableSpecification:v16 uiSpecification:v22 scoreSpecification:v11];
  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)proactiveSuggestionsForAppsWithHeroAppPredictions:(id)a3 clientModelSpec:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __99__ATXProactiveSuggestionBuilder_proactiveSuggestionsForAppsWithHeroAppPredictions_clientModelSpec___block_invoke;
  v12[3] = &unk_2785985C8;
  v13 = v5;
  v14 = v7;
  v8 = v7;
  v9 = v5;
  v10 = [v6 _pas_mappedArrayWithTransform:v12];

  return v10;
}

+ (id)_proactiveSuggestionFromHeroAppPrediction:(id)a3 clientModelSpec:(id)a4 reasons:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 bundleId];
  v12 = [a1 _executableSpecForAppWithBundleId:v11];
  v13 = [a1 _scoreSpecForHeroAppPrediction:v8];
  v14 = [v10 appHeroAppReason];

  v15 = [a1 _uiSpecForHeroAppPrediction:v8 scoreSpec:v13 predictionReason:v14];
  if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x277D42068]) initWithClientModelSpecification:v9 executableSpecification:v12 uiSpecification:v15 scoreSpecification:v13];
  }

  else
  {
    v17 = __atxlog_handle_default();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      +[ATXProactiveSuggestionBuilder _proactiveSuggestionFromHeroAppPrediction:clientModelSpec:reasons:];
    }

    v16 = 0;
  }

  return v16;
}

+ (id)_scoreSpecForHeroAppPrediction:(id)a3
{
  if ([a3 rank] == 1)
  {
    v3 = 4;
  }

  else
  {
    v3 = 3;
  }

  v4 = [objc_alloc(MEMORY[0x277D42090]) initWithRawScore:v3 suggestedConfidenceCategory:1.0];

  return v4;
}

+ (id)_uiSpecForHeroAppPrediction:(id)a3 scoreSpec:(id)a4 predictionReason:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v9 bundleId];
  v11 = [v8 suggestedConfidenceCategory];

  if (v11 <= 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = 42;
  }

  v13 = [MEMORY[0x277D42088] layoutConfigurationsForLayoutOptions:v12];
  v14 = objc_alloc(MEMORY[0x277D420A0]);
  v15 = [v9 rank] < 3;
  v16 = [v9 rank];

  BYTE1(v19) = 0;
  LOBYTE(v19) = v16 > 2;
  v17 = [v14 initWithTitle:v10 subtitle:0 predictionReason:v7 preferredLayoutConfigs:v13 allowedOnLockscreen:0 allowedOnHomeScreen:v15 allowedOnSpotlight:v19 shouldClearOnEngagement:?];

  return v17;
}

+ (id)proactiveSuggestionsForSpotlightPOIWithHeroAppPredictions:(id)a3 clientModelSpec:(id)a4
{
  v5 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __107__ATXProactiveSuggestionBuilder_proactiveSuggestionsForSpotlightPOIWithHeroAppPredictions_clientModelSpec___block_invoke;
  v9[3] = &unk_2785985F0;
  v10 = v5;
  v6 = v5;
  v7 = [a3 _pas_mappedArrayWithTransform:v9];

  return v7;
}

+ (id)_proactiveSuggestionForSpotlightPOIFromHeroAppPrediction:(id)a3 clientModelSpec:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 rank] < 3)
  {
    v8 = [v6 bundleId];
    v11 = [v6 poiMuid];
    v12 = v11;
    if (v8 && v11)
    {
      v13 = [objc_alloc(MEMORY[0x277CEB860]) initWithPOIName:v8 muid:v11 criteria:0];
      v14 = [a1 _executableSpecForSpotlightAction:v13];
      v15 = [a1 _scoreSpecForHeroAppPrediction:v6];
      v16 = [a1 _uiSpecForSpotlightPOIPrediction:v8 predictionReasons:0x800000];
      v10 = [objc_alloc(MEMORY[0x277D42068]) initWithClientModelSpecification:v7 executableSpecification:v14 uiSpecification:v16 scoreSpecification:v15];
    }

    else
    {
      v17 = __atxlog_handle_default();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        +[ATXProactiveSuggestionBuilder _proactiveSuggestionForSpotlightPOIFromHeroAppPrediction:clientModelSpec:];
      }

      v10 = 0;
    }
  }

  else
  {
    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromClass(a1);
      v20 = 138412546;
      v21 = v9;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%@ - _proactiveSuggestionForSpotlightPOIFromHeroAppPrediction: %@ not included on Spotlight, returning nil", &v20, 0x16u);
    }

    v10 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

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

+ (id)_uiSpecForSpotlightPOIPrediction:(id)a3 predictionReasons:(unint64_t)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D42088];
  v6 = a3;
  v7 = [[v5 alloc] initWithApplicableSuggestionLayout:5];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  LOWORD(v12) = 1;
  v9 = [objc_alloc(MEMORY[0x277D420A0]) initWithTitle:v6 subtitle:0 predictionReason:0 preferredLayoutConfigs:v8 allowedOnLockscreen:0 allowedOnHomeScreen:0 allowedOnSpotlight:v12 shouldClearOnEngagement:a4 predictionReasons:?];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)proactiveSuggestionForAppClipsFromHeroAppPredictions:(id)a3 clientModelSpec:(id)a4 mediumThreshold:(double)a5 highThreshold:(double)a6
{
  v10 = a4;
  v11 = a3;
  v12 = objc_opt_new();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __132__ATXProactiveSuggestionBuilder_proactiveSuggestionForAppClipsFromHeroAppPredictions_clientModelSpec_mediumThreshold_highThreshold___block_invoke;
  v17[3] = &unk_278598618;
  v19 = v12;
  v20 = a1;
  v21 = a5;
  v22 = a6;
  v18 = v10;
  v13 = v12;
  v14 = v10;
  v15 = [v11 _pas_mappedArrayWithTransform:v17];

  return v15;
}

id __132__ATXProactiveSuggestionBuilder_proactiveSuggestionForAppClipsFromHeroAppPredictions_clientModelSpec_mediumThreshold_highThreshold___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 48) proactiveSuggestionForAppClipFromHeroAppPrediction:a2 clientModelSpec:*(a1 + 32) mediumThreshold:*(a1 + 40) highThreshold:*(a1 + 56) reasons:*(a1 + 64)];
  v3 = __atxlog_handle_blending();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __132__ATXProactiveSuggestionBuilder_proactiveSuggestionForAppClipsFromHeroAppPredictions_clientModelSpec_mediumThreshold_highThreshold___block_invoke_cold_1();
  }

  return v2;
}

+ (id)proactiveSuggestionForAppClipFromHeroAppPrediction:(id)a3 clientModelSpec:(id)a4 mediumThreshold:(double)a5 highThreshold:(double)a6 reasons:(id)a7
{
  v12 = a7;
  v13 = a4;
  v14 = a3;
  v15 = [v14 bundleId];
  v16 = [v14 clipMetadata];
  v17 = [v16 clipName];

  v18 = [v14 clipMetadata];
  v19 = [v18 clipCaption];

  [v14 score];
  v21 = v20;
  v22 = [a1 _executableSpecForAppClipWithHeroAppPrediction:v14];

  v23 = [v12 appLocationBasedAppClipReason];

  v24 = [a1 _uiSpecForAppClipWithBundleId:v15 title:v17 subtitle:v19 predictionReason:v23];
  v25 = [a1 _scoreSpecForAppClipWithScore:v21 mediumThreshold:a5 highThreshold:a6];
  v26 = [objc_alloc(MEMORY[0x277D42068]) initWithClientModelSpecification:v13 executableSpecification:v22 uiSpecification:v24 scoreSpecification:v25];

  return v26;
}

+ (id)_executableSpecForAppClipWithHeroAppPrediction:(id)a3
{
  v3 = a3;
  v4 = [v3 bundleId];
  v5 = objc_alloc(MEMORY[0x277D42080]);
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@:CLIP", v4];
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@:CLIP", v4];
  v8 = [v5 initWithExecutableObject:v3 executableDescription:v6 executableIdentifier:v7 suggestionExecutableType:5];

  return v8;
}

+ (id)_uiSpecForAppClipWithBundleId:(id)a3 title:(id)a4 subtitle:(id)a5 predictionReason:(id)a6
{
  v8 = MEMORY[0x277D420A0];
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [v8 alloc];
  v13 = [MEMORY[0x277D42088] layoutConfigurationsForLayoutOptions:40];
  LOWORD(v16) = 1;
  v14 = [v12 initWithTitle:v11 subtitle:v10 predictionReason:v9 preferredLayoutConfigs:v13 allowedOnLockscreen:0 allowedOnHomeScreen:1 allowedOnSpotlight:v16 shouldClearOnEngagement:0x800000 predictionReasons:?];

  return v14;
}

+ (id)_scoreSpecForAppClipWithScore:(double)a3 mediumThreshold:(double)a4 highThreshold:(double)a5
{
  v6 = [a1 _confidenceCategoryForScore:a3 highThreshold:a5 mediumThreshold:a4];
  v7 = [objc_alloc(MEMORY[0x277D42090]) initWithRawScore:v6 suggestedConfidenceCategory:a3];

  return v7;
}

+ (id)executableIdForAction:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 actionKey];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v4 paramHash];

  v9 = [v7 numberWithUnsignedInteger:v8];
  v10 = [v5 initWithFormat:@"%@:%lld", v6, objc_msgSend(v9, "longLongValue")];

  return v10;
}

+ (id)cachedTitleAndSubtitleForAction:(id)a3
{
  v3 = a3;
  v4 = [v3 intent];
  if (v4 && (v5 = v4, [v3 intent], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, v5, (isKindOfClass & 1) == 0))
  {
    v10 = +[ATXIntentMetadataCache sharedInstance];
    v11 = [MEMORY[0x277CBEAF8] currentLocale];
    v12 = [v11 localeIdentifier];

    v13 = [v3 intent];
    v8 = [v10 titleForIntent:v13 localeIdentifier:v12];

    v14 = [v3 intent];
    v9 = [v10 subtitleForIntent:v14 localeIdentifier:v12];
  }

  else
  {
    v8 = [v3 actionTitle];
    v9 = [v3 actionSubtitle];
  }

  v15 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:v8 second:v9];

  return v15;
}

+ (id)_executableSpecForScoredAction:(id)a3
{
  v4 = [a3 predictedItem];
  v5 = [objc_opt_class() cachedTitleAndSubtitleForAction:v4];
  v6 = [v5 first];
  v7 = [v5 second];
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ | %@", v6, v7];
  v9 = [a1 executableIdForAction:v4];
  v10 = [objc_alloc(MEMORY[0x277D42080]) initWithExecutableObject:v4 executableDescription:v8 executableIdentifier:v9 suggestionExecutableType:2];

  return v10;
}

+ (id)_uiSpecForScoredAction:(id)a3 scoreSpec:(id)a4 clientModelSpec:(id)a5 predictionReason:(id)a6 shouldClearOnEngagement:(BOOL)a7 allowedOnLockscreen:(BOOL)a8 allowedOnHomescreen:(BOOL)a9 predictionReasons:(unint64_t)a10
{
  v10 = a8;
  v14 = a9;
  v15 = a6;
  v16 = a5;
  v17 = a3;
  if ([a4 suggestedConfidenceCategory] <= 2)
  {
    v18 = 44;
  }

  else
  {
    v18 = 40;
  }

  v19 = [MEMORY[0x277D42088] layoutConfigurationsForLayoutOptions:v18];
  v20 = [v16 clientModelId];

  v21 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:3];
  v22 = [v20 isEqualToString:v21];

  if (v22)
  {
    v23 = [MEMORY[0x277D42088] layoutConfigurationsForLayoutOptions:40];

    v19 = v23;
  }

  v24 = [v17 predictedItem];
  v25 = [v24 actionType];

  v26 = MEMORY[0x277CEB7F8];
  v27 = [v17 predictedItem];
  v28 = [v26 isActionEligibleForAnySettingsSuggestions:v27];

  v29 = v28 ^ 1;
  if (v10)
  {
    v30 = (v25 != 5) & (v28 ^ 1u);
  }

  else
  {
    v30 = 0;
  }

  if (v25 == 5)
  {
    v14 = 0;
  }

  v31 = [v17 predictedItem];

  v32 = [objc_opt_class() cachedTitleAndSubtitleForAction:v31];
  v33 = [v32 first];
  v34 = [v32 second];
  BYTE1(v37) = a7;
  LOBYTE(v37) = v29;
  v35 = [objc_alloc(MEMORY[0x277D420A0]) initWithTitle:v33 subtitle:v34 predictionReason:v15 preferredLayoutConfigs:v19 allowedOnLockscreen:v30 allowedOnHomeScreen:v14 & v29 allowedOnSpotlight:v37 shouldClearOnEngagement:a10 predictionReasons:?];

  return v35;
}

+ (id)_uiSpecForScoredAction:(id)a3 scoreSpec:(id)a4 clientModelSpec:(id)a5 predictionReason:(id)a6 allowedOnLockscreen:(BOOL)a7 allowedOnHomescreen:(BOOL)a8 predictionReasons:(unint64_t)a9
{
  v29 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [v15 predictedItem];
  v17 = [v16 intent];
  if (v17)
  {
    v18 = +[ATXIntentMetadataCache sharedInstance];
    v19 = [v18 supportsBackgroundExecutionForIntent:v17];
  }

  else
  {
    v19 = 0;
  }

  v20 = [v16 userActivityWebpageURL];
  v21 = [v20 atx_isOpenableFaceTimeURL];

  v22 = [v17 _className];
  v23 = [v22 isEqualToString:@"MTCreateAlarmIntent"];

  LOBYTE(v26) = a8;
  v24 = [a1 _uiSpecForScoredAction:v15 scoreSpec:v14 clientModelSpec:v13 predictionReason:v12 shouldClearOnEngagement:(v23 | (v21 | v19)) & 1 allowedOnLockscreen:v29 allowedOnHomescreen:v26 predictionReasons:a9];

  return v24;
}

+ (id)_scoreSpecForScore:(double)a3 highThreshold:(double)a4 mediumThreshold:(double)a5
{
  v6 = [a1 _confidenceCategoryForScore:a3 highThreshold:a4 mediumThreshold:a5];
  v7 = [objc_alloc(MEMORY[0x277D42090]) initWithRawScore:v6 suggestedConfidenceCategory:a3];

  return v7;
}

+ (id)_uiSpecForAppWithBundleId:(id)a3 scoreSpec:(id)a4 predictionReason:(id)a5 allowedOnHomescreen:(BOOL)a6
{
  LODWORD(v6) = a6;
  v9 = a5;
  v10 = a3;
  v11 = [a4 suggestedConfidenceCategory];
  if (v11 >= 3)
  {
    v12 = 42;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v6;
  }

  v13 = [MEMORY[0x277D42088] layoutConfigurationsForLayoutOptions:v12];
  LOWORD(v16) = 1;
  v14 = [objc_alloc(MEMORY[0x277D420A0]) initWithTitle:v10 subtitle:0 predictionReason:v9 preferredLayoutConfigs:v13 allowedOnLockscreen:0 allowedOnHomeScreen:v6 allowedOnSpotlight:v16 shouldClearOnEngagement:?];

  return v14;
}

+ (id)_executableSpecForAppWithBundleId:(id)a3
{
  v3 = MEMORY[0x277D42080];
  v4 = a3;
  v5 = [[v3 alloc] initWithExecutableObject:v4 executableDescription:v4 executableIdentifier:v4 suggestionExecutableType:1];

  return v5;
}

+ (int64_t)_confidenceCategoryGivenIsHighConfidence:(BOOL)a3
{
  if (a3)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

+ (int64_t)_confidenceCategoryForScore:(double)a3 highThreshold:(double)a4 mediumThreshold:(double)a5
{
  v5 = 3;
  if (a3 < a5)
  {
    v5 = 2;
  }

  if (a3 >= a4)
  {
    return 4;
  }

  else
  {
    return v5;
  }
}

+ (id)proactiveSuggestionsFromHeuristicActionResults:(id)a3 clientModelSpec:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 atx_actionsFromActionResults];
  v9 = [ATXDisplayCacheLockscreenFilter indicesOfLockScreenActionsForActionPredictions:v8 criteria:0];
  v10 = objc_opt_new();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __112__ATXProactiveSuggestionBuilder_PredictionItem__proactiveSuggestionsFromHeuristicActionResults_clientModelSpec___block_invoke;
  v16[3] = &unk_2785A1BE8;
  v20 = a1;
  v11 = v7;
  v17 = v11;
  v18 = v10;
  v12 = v9;
  v19 = v12;
  v13 = v10;
  v14 = [v6 _pas_mappedArrayWithIndexedTransform:v16];

  return v14;
}

id __112__ATXProactiveSuggestionBuilder_PredictionItem__proactiveSuggestionsFromHeuristicActionResults_clientModelSpec___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 56) _proactiveSuggestionsFromHeuristicActionResult:v5 clientModelSpec:*(a1 + 32) reasons:*(a1 + 40) allowedOnLockscreen:{objc_msgSend(*(a1 + 48), "containsIndex:", a3)}];

  return v6;
}

+ (id)proactiveSuggestionsFromActionResults:(id)a3 clientModelSpec:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __103__ATXProactiveSuggestionBuilder_PredictionItem__proactiveSuggestionsFromActionResults_clientModelSpec___block_invoke;
  v13[3] = &unk_2785A1C10;
  v16 = a1;
  v9 = v7;
  v14 = v9;
  v15 = v8;
  v10 = v8;
  v11 = [v6 _pas_mappedArrayWithTransform:v13];

  return v11;
}

id __103__ATXProactiveSuggestionBuilder_PredictionItem__proactiveSuggestionsFromActionResults_clientModelSpec___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 48) _proactiveSuggestionsFromActionResult:a2 clientModelSpec:*(a1 + 32) reasons:*(a1 + 40)];

  return v2;
}

+ (id)_proactiveSuggestionsFromActionResult:(id)a3 clientModelSpec:(id)a4 reasons:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 scoredAction];

  if (v11)
  {
    v12 = [v8 predictionItem];
    v13 = v12 + 1;
    v14 = *v12;
    v24 = v14;
    memcpy(v25, v13, sizeof(v25));
    if (a1)
    {
      v15 = [a1 _scoreSpecForPredictionItem:&v24];
    }

    else
    {

      v15 = 0;
    }

    v17 = [v8 scoredAction];
    v18 = [a1 _executableSpecForScoredAction:v17];

    if (v18)
    {
      v19 = [a1 _actionPredictionReasonForActionResult:v8 reasons:v10];
      v20 = [v8 scoredAction];
      v21 = [a1 _uiSpecForScoredAction:v20 scoreSpec:v15 clientModelSpec:v9 predictionReason:v19 allowedOnLockscreen:1 allowedOnHomescreen:1 predictionReasons:{0, v24}];

      v16 = [objc_alloc(MEMORY[0x277D42068]) initWithClientModelSpecification:v9 executableSpecification:v18 uiSpecification:v21 scoreSpecification:v15];
    }

    else
    {
      v19 = __atxlog_handle_default();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        NSStringFromClass(a1);
        objc_claimAutoreleasedReturnValue();
        +[ATXProactiveSuggestionBuilder(PredictionItem) _proactiveSuggestionsFromHeuristicActionResult:clientModelSpec:reasons:allowedOnLockscreen:];
      }

      v16 = 0;
    }
  }

  else
  {
    v15 = __atxlog_handle_default();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      NSStringFromClass(a1);
      objc_claimAutoreleasedReturnValue();
      +[ATXProactiveSuggestionBuilder(PredictionItem) _proactiveSuggestionsFromActionResult:clientModelSpec:reasons:];
    }

    v16 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_actionPredictionReasonForActionResult:(id)a3 reasons:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 _isHeuristicActionForActionResult:v6])
  {
    v8 = [v6 scoredAction];
    v9 = [v8 predictedItem];
    v10 = [v9 heuristic];

    v11 = [v7 actionHeuristicReasonForHeuristicName:v10];
  }

  else
  {
    v11 = [v7 actionBehavioralReason];
  }

  return v11;
}

+ (unint64_t)_actionPredictionReasonsForActionResult:(id)a3 reasons:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([a1 _isHeuristicActionForActionResult:v5])
  {
    v6 = [v5 scoredAction];
    v7 = [v6 predictedItem];
    v8 = [v7 heuristic];

    if ([v8 hasPrefix:@"changeAlarmBeforeHoliday"])
    {
      v9 = 0x800000000;
    }

    else
    {
      v10 = __atxlog_handle_default();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = NSStringFromClass(a1);
        v12 = [v5 scoredAction];
        v13 = [v12 predictedItem];
        v14 = [v13 heuristic];
        v17 = 138412546;
        v18 = v11;
        v19 = 2112;
        v20 = v14;
        _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "%@ - _actionPredictionReasonsForActionResult: heuristic %@ reason bit set to Unknown", &v17, 0x16u);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (BOOL)_isHeuristicActionForActionResult:(id)a3
{
  v3 = a3;
  v4 = [v3 scoredAction];
  v5 = [v4 predictedItem];
  if ([v5 isHeuristic])
  {
    v6 = [v3 scoredAction];
    v7 = [v6 predictedItem];
    v8 = [v7 heuristic];
    v9 = v8 != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)proactiveSuggestionsFromAppPredictionItems:(const void *)a3 clientModelSpec:(id)a4 maxSuggestionsToSendToBlendingLayer:(int)a5
{
  v17 = a4;
  v16 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = 0;
  v9 = 0;
  v10 = a5;
  while ([v7 count] <= v10 && 0x13A524387AC82261 * ((*(a3 + 1) - *a3) >> 3) > v9)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = ATXProactiveSuggestionBuilder;
    v13 = (*a3 + v8);
    v14 = *v13;
    v18 = v14;
    memcpy(v19, v13 + 1, sizeof(v19));
    if (ATXProactiveSuggestionBuilder)
    {
      v12 = [ATXProactiveSuggestionBuilder _proactiveSuggestionFromAppPredictionItem:&v18 clientModelSpec:v17 reasons:v16];
      if (v12)
      {
        [v7 addObject:v12];
      }
    }

    else
    {
    }

    objc_autoreleasePoolPop(v11);
    ++v9;
    v8 += 3336;
  }

  return v7;
}

+ (id)_proactiveSuggestionFromAppPredictionItem:(ATXPredictionItem *)a3 clientModelSpec:(id)a4 reasons:(id)a5
{
  MEMORY[0x28223BE20](a1, a2);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v27 = *MEMORY[0x277D85DE8];
  v12 = v11;
  v13 = v6;
  v14 = [v10 _executableSpecForAppWithBundleId:*v8];
  v15 = *v8;
  v25 = v15;
  memcpy(v26, v8 + 1, sizeof(v26));
  if (v10)
  {
    v16 = [v10 _scoreSpecForPredictionItem:&v25];
    v23 = *v8;
    memcpy(v24, v8 + 1, sizeof(v24));
    v17 = [v10 _appPredictionReasonForPredictionItem:&v23 reasons:v13];
  }

  else
  {

    v23 = *v8;
    memcpy(v24, v8 + 1, sizeof(v24));

    v16 = 0;
    v17 = 0;
  }

  v18 = [v10 _uiSpecForAppWithBundleId:*v8 scoreSpec:v16 predictionReason:{v17, v23}];
  if (v18)
  {
    v19 = [objc_alloc(MEMORY[0x277D42068]) initWithClientModelSpecification:v12 executableSpecification:v14 uiSpecification:v18 scoreSpecification:v16];
  }

  else
  {
    v20 = __atxlog_handle_default();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      NSStringFromClass(v10);
      objc_claimAutoreleasedReturnValue();
      +[ATXProactiveSuggestionBuilder(PredictionItem) _proactiveSuggestionFromAppPredictionItem:clientModelSpec:reasons:];
    }

    v19 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)_appPredictionReasonForPredictionItem:(ATXPredictionItem *)a3 reasons:(id)a4
{
  MEMORY[0x28223BE20](a1, a2);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v5;
  v18 = v10;
  memcpy(v19, (v5 + 8), sizeof(v19));
  if (!v7)
  {

    v16 = *v5;
    memcpy(v17, (v5 + 8), sizeof(v17));

    v14 = *v5;
    memcpy(v15, (v5 + 8), sizeof(v15));

    goto LABEL_5;
  }

  if ([v7 _isInstalledAppClipForPredictionItem:&v18])
  {
    v11 = [v9 appInstalledAppClipReason];
    goto LABEL_10;
  }

  v16 = *v5;
  memcpy(v17, (v5 + 8), sizeof(v17));
  if ([v7 _isHeroAppForPredictionItem:&v16])
  {
    v11 = [v9 appHeroAppReason];
    goto LABEL_10;
  }

  v14 = *v5;
  memcpy(v15, (v5 + 8), sizeof(v15));
  if (![v7 _isMagicalMomentForPredictionItem:&v14])
  {
LABEL_5:
    v11 = [v9 appBehavioralReason];
    goto LABEL_10;
  }

  v11 = [v9 appMagicalMomentReasonForAnchorType:*(v5 + 304)];
LABEL_10:
  v12 = v11;

  return v12;
}

+ (BOOL)_isHeroAppForPredictionItem:(ATXPredictionItem *)a3
{
  v3 = a3->inputSignals[75] == 0.0 && a3->inputSignals[73] > 0.0;

  return v3;
}

+ (BOOL)_isInstalledAppClipForPredictionItem:(ATXPredictionItem *)a3
{
  v3 = a3->inputSignals[769] == 1.0;

  return v3;
}

+ (BOOL)_isMagicalMomentForPredictionItem:(ATXPredictionItem *)a3
{
  v3 = a3->inputSignals[75] == 0.0 && a3->inputSignals[73] <= 0.0;

  return v3;
}

+ (id)_scoreSpecForPredictionItem:(ATXPredictionItem *)a3
{
  p_actionHash = &a3->actionHash;
  v6 = a3->key;
  v9 = v6;
  memcpy(v10, p_actionHash, sizeof(v10));
  if (a1)
  {
    a1 = [a1 _confidenceCategoryForPredictionItem:&v9];
  }

  else
  {
  }

  v7 = [objc_alloc(MEMORY[0x277D42090]) initWithRawScore:a1 suggestedConfidenceCategory:a3->score];

  return v7;
}

+ (int64_t)_confidenceCategoryForPredictionItem:(ATXPredictionItem *)a3
{
  if (a3->isHighConfidenceForBlendingLayer)
  {
    v3 = 4;
  }

  else if (a3->isMediumConfidenceForBlendingLayer)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

+ (void)predictionReasonForAnchorModelPrediction:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 anchorType];
  v5 = 138412290;
  v6 = v3;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Failed to retrieve Anchor Class Name from Anchor Type: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)proactiveSuggestionForLinkActionPrediction:score:clientModelSpec:mediumThreshold:highThreshold:predictionReason:allowedOnHomescreen:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_12();
  v4 = v0;
  _os_log_error_impl(&dword_2263AA000, v1, OS_LOG_TYPE_ERROR, "Suggestion Builder: Unable to retrieve Link metadata for action %@. Error: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_proactiveSuggestionFromMagicalMomentsPredictionBundleId:mmSignals:clientModelSpec:reasons:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v10 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_0(&dword_2263AA000, v2, v3, "%@ - _proactiveSuggestionFromMagicalMomentsPredictionBundleId: %@ could not generate uiSpec, returning nil", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __90__ATXProactiveSuggestionBuilder_proactiveSuggestionsForLockscreenActions_clientModelSpec___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*v0 clientModelId];
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "<<%@>> produced an Action Proactive Suggestion: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_proactiveSuggestionFromHeroAppPrediction:clientModelSpec:reasons:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v10 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_0(&dword_2263AA000, v2, v3, "%@ - _proactiveSuggestionFromHeroAppPrediction: %@ could not generate uiSpec, returning nil", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_proactiveSuggestionForSpotlightPOIFromHeroAppPrediction:clientModelSpec:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v10 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_0(&dword_2263AA000, v2, v3, "%@ - _proactiveSuggestionForSpotlightPOIFromHeroAppPrediction: %@ no poiMuid found, returning nil", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __132__ATXProactiveSuggestionBuilder_proactiveSuggestionForAppClipsFromHeroAppPredictions_clientModelSpec_mediumThreshold_highThreshold___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*v0 clientModelId];
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "<<%@>> produced an App Clip Prediction Proactive Suggestion: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)proactiveSuggestionsFromScoredAction:clientModelSpec:mediumThreshold:highThreshold:predictionReason:allowedOnHomescreen:predictionReasons:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v10 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_0(&dword_2263AA000, v2, v3, "%@ - proactiveSuggestionsFromScoredAction: %@ could not generate executableSpec, returning nil", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)proactiveSuggestionsFromScoredAction:(objc_class *)a1 clientModelSpec:mediumThreshold:highThreshold:predictionReason:allowedOnHomescreen:predictionReasons:.cold.2(objc_class *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromClass(a1);
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1_0(&dword_2263AA000, v2, v3, "%@ - proactiveSuggestionsFromScoredAction: %@ had no scoredAction, returning nil", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)proactiveSuggestionForAppWithBundleId:score:clientModelSpec:mediumThreshold:highThreshold:predictionReason:allowedOnHomescreen:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v10 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_0(&dword_2263AA000, v2, v3, "%@ - proactiveSuggestionForAppWithBundleId: %@ could not generate uiSpec, returning nil", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end