@interface ATXContextHeuristicSuggestionProducer
+ (id)_bundleIDWithURL:(id)l;
+ (id)_clientModelSpecForSpotlightRecents;
+ (id)_clientModelSpectForContextHeuristics;
+ (id)_dummyUiSpecWithTitle:(id)title subtitle:(id)subtitle predictionReason:(id)reason shouldClearOnEngagement:(BOOL)engagement predictionReasons:(unint64_t)reasons;
+ (id)_executableSpecForShortcutsAction:(id)action;
+ (id)_executableSpecForSpotlightAction:(id)action;
+ (id)_mediaWithName:(id)name type:(int64_t)type adamIdentifier:(int64_t)identifier umcIdentifier:(id)umcIdentifier predictionReasons:(unint64_t)reasons localizedReason:(id)reason score:(double)score expirationDate:(id)self0;
+ (id)_suggestionWithSpotlightAction:(id)action predictionReasons:(unint64_t)reasons localizedReason:(id)reason score:(double)score uiSpec:(id)spec dateInterval:(id)interval;
+ (id)_suggestionWithSpotlightRecentAction:(id)action score:(double)score;
+ (id)_uiSpecWithTitle:(id)title subtitle:(id)subtitle predictionReason:(id)reason shouldClearOnEngagement:(BOOL)engagement predictionReasons:(unint64_t)reasons dateInterval:(id)interval;
+ (id)createSuggestionFromShortcutsAction:(id)action predictionReasons:(unint64_t)reasons localizedReason:(id)reason title:(id)title subtitle:(id)subtitle score:(double)score shouldClearOnEngagement:(BOOL)engagement dateInterval:(id)self0;
+ (id)dummySuggestionWithSpotlightAction:(id)action predictionReasons:(unint64_t)reasons localizedReason:(id)reason score:(double)score;
+ (id)flightCheckInActivityWithSubtitle:(id)subtitle url:(id)url teamIdentifier:(id)identifier predictionReasons:(unint64_t)reasons localizedReason:(id)reason score:(double)score validStartDate:(id)date validEndDate:(id)self0;
+ (id)navigationToDestination:(id)destination title:(id)title subtitle:(id)subtitle transportType:(unint64_t)type destinationName:(id)name predictionReasons:(unint64_t)reasons localizedReason:(id)reason score:(double)self0 shouldClearOnEngagement:(BOOL)self1 validStartDate:(id)self2 validEndDate:(id)self3 dateInterval:(id)self4;
+ (id)rideshareAppActionForDestination:(id)destination preferredBundleId:(id)id predictionReasons:(unint64_t)reasons title:(id)title localizedReason:(id)reason score:(double)score validFromStartDate:(id)date validToEndDate:(id)self0 dateInterval:(id)self1;
+ (id)suggestionForConferenceWithURL:(id)l score:(double)score predictionReasons:(unint64_t)reasons localizedReason:(id)reason criteria:(id)criteria dateInterval:(id)interval;
+ (id)suggestionForDNDWithTitle:(id)title eventUniqueID:(id)d identifier:(id)identifier until:(id)until score:(double)score predictionReasons:(unint64_t)reasons localizedReason:(id)reason validFromStartDate:(id)self0 validToEndDate:(id)self1 dateInterval:(id)self2;
+ (id)suggestionWithAction:(id)action predictionReasons:(unint64_t)reasons localizedReason:(id)reason score:(double)score dateInterval:(id)interval;
+ (id)suggestionWithExecutableSpecification:(id)specification title:(id)title subtitle:(id)subtitle predictionReasons:(unint64_t)reasons localizedReason:(id)reason score:(double)score;
+ (id)suggestionWithShortcutAction:(id)action predictionReasons:(unint64_t)reasons localizedReason:(id)reason title:(id)title subtitle:(id)subtitle score:(double)score dateInterval:(id)interval;
+ (id)suggestionWithURL:(id)l actionTitle:(id)title subtitle:(id)subtitle bundleID:(id)d score:(double)score predictionReasons:(unint64_t)reasons criteria:(id)criteria dateInterval:(id)self0;
+ (id)toggleAirplaneModeWithPredictionReasons:(unint64_t)reasons localizedReason:(id)reason score:(double)score validFromStartDate:(id)date validToEndDate:(id)endDate dateInterval:(id)interval;
@end

@implementation ATXContextHeuristicSuggestionProducer

+ (id)createSuggestionFromShortcutsAction:(id)action predictionReasons:(unint64_t)reasons localizedReason:(id)reason title:(id)title subtitle:(id)subtitle score:(double)score shouldClearOnEngagement:(BOOL)engagement dateInterval:(id)self0
{
  v15 = MEMORY[0x277D42080];
  intervalCopy = interval;
  subtitleCopy = subtitle;
  titleCopy = title;
  reasonCopy = reason;
  actionCopy = action;
  v21 = [v15 alloc];
  contextualAction = [actionCopy contextualAction];
  displayString = [contextualAction displayString];
  contextualAction2 = [actionCopy contextualAction];
  identifier = [contextualAction2 identifier];
  v26 = [v21 initWithExecutableObject:actionCopy executableDescription:displayString executableIdentifier:identifier suggestionExecutableType:9];

  v27 = [self _uiSpecWithTitle:titleCopy subtitle:subtitleCopy predictionReason:reasonCopy shouldClearOnEngagement:0 predictionReasons:reasons dateInterval:intervalCopy];

  v28 = [objc_alloc(MEMORY[0x277D42090]) initWithRawScore:4 suggestedConfidenceCategory:score];
  v29 = objc_alloc(MEMORY[0x277D42068]);
  _clientModelSpectForContextHeuristics = [self _clientModelSpectForContextHeuristics];
  v31 = [v29 initWithClientModelSpecification:_clientModelSpectForContextHeuristics executableSpecification:v26 uiSpecification:v27 scoreSpecification:v28];

  return v31;
}

+ (id)suggestionWithExecutableSpecification:(id)specification title:(id)title subtitle:(id)subtitle predictionReasons:(unint64_t)reasons localizedReason:(id)reason score:(double)score
{
  v34 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  subtitleCopy = subtitle;
  titleCopy = title;
  specificationCopy = specification;
  v17 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    reasonsCopy = reasons;
    _os_log_impl(&dword_23E3EA000, v17, OS_LOG_TYPE_DEFAULT, "ATXProactiveSuggestion: suggestionWithExecutableSpecification predictionReasons:%llu", buf, 0xCu);
  }

  v18 = objc_alloc(MEMORY[0x277D42080]);
  executableObject = [specificationCopy executableObject];
  executableDescription = [specificationCopy executableDescription];
  executableIdentifier = [specificationCopy executableIdentifier];
  executableType = [specificationCopy executableType];

  v23 = [v18 initWithExecutableObject:executableObject executableDescription:executableDescription executableIdentifier:executableIdentifier suggestionExecutableType:executableType];
  v24 = [self _uiSpecWithTitle:titleCopy subtitle:subtitleCopy predictionReason:reasonCopy shouldClearOnEngagement:0 predictionReasons:reasons dateInterval:0];

  v25 = [objc_alloc(MEMORY[0x277D42090]) initWithRawScore:4 suggestedConfidenceCategory:score];
  v26 = objc_alloc(MEMORY[0x277D42068]);
  _clientModelSpectForContextHeuristics = [self _clientModelSpectForContextHeuristics];
  v28 = [v26 initWithClientModelSpecification:_clientModelSpectForContextHeuristics executableSpecification:v23 uiSpecification:v24 scoreSpecification:v25];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (id)dummySuggestionWithSpotlightAction:(id)action predictionReasons:(unint64_t)reasons localizedReason:(id)reason score:(double)score
{
  reasonCopy = reason;
  actionCopy = action;
  actionDescription = [actionCopy actionDescription];
  v13 = [self _dummyUiSpecWithTitle:actionDescription subtitle:0 predictionReason:reasonCopy shouldClearOnEngagement:0 predictionReasons:reasons];
  v14 = [self _suggestionWithSpotlightAction:actionCopy predictionReasons:reasons localizedReason:reasonCopy score:v13 uiSpec:0 dateInterval:score];

  return v14;
}

+ (id)_suggestionWithSpotlightAction:(id)action predictionReasons:(unint64_t)reasons localizedReason:(id)reason score:(double)score uiSpec:(id)spec dateInterval:(id)interval
{
  v33 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  reasonCopy = reason;
  specCopy = spec;
  intervalCopy = interval;
  v18 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [reasonCopy hash];
    actionDescription = [actionCopy actionDescription];
    v29 = 134218242;
    v30 = v19;
    v31 = 2112;
    v32 = actionDescription;
    _os_log_impl(&dword_23E3EA000, v18, OS_LOG_TYPE_DEFAULT, "ATXProactiveSuggestion: suggestionWithSpotlightAction reason.hash:%lu description:%@", &v29, 0x16u);
  }

  v21 = [self _executableSpecForSpotlightAction:actionCopy];
  if (!specCopy)
  {
    actionDescription2 = [actionCopy actionDescription];
    specCopy = [self _uiSpecWithTitle:actionDescription2 subtitle:0 predictionReason:reasonCopy shouldClearOnEngagement:0 predictionReasons:reasons dateInterval:intervalCopy];
  }

  v23 = [objc_alloc(MEMORY[0x277D42090]) initWithRawScore:4 suggestedConfidenceCategory:score];
  v24 = objc_alloc(MEMORY[0x277D42068]);
  _clientModelSpectForContextHeuristics = [self _clientModelSpectForContextHeuristics];
  v26 = [v24 initWithClientModelSpecification:_clientModelSpectForContextHeuristics executableSpecification:v21 uiSpecification:specCopy scoreSpecification:v23];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)suggestionWithShortcutAction:(id)action predictionReasons:(unint64_t)reasons localizedReason:(id)reason title:(id)title subtitle:(id)subtitle score:(double)score dateInterval:(id)interval
{
  v42 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  reasonCopy = reason;
  titleCopy = title;
  subtitleCopy = subtitle;
  intervalCopy = interval;
  v18 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    contextualAction = [actionCopy contextualAction];
    *buf = 134218242;
    reasonsCopy = reasons;
    v40 = 2112;
    v41 = contextualAction;
    _os_log_impl(&dword_23E3EA000, v18, OS_LOG_TYPE_DEFAULT, "ATXProactiveSuggestion: suggestionWithShortcutAction predictionReasons:%llu shortcutsAction.contextualAction:%@", buf, 0x16u);
  }

  v20 = objc_alloc(MEMORY[0x277D42080]);
  contextualAction2 = [actionCopy contextualAction];
  identifier = [contextualAction2 identifier];
  contextualAction3 = [actionCopy contextualAction];
  uniqueIdentifier = [contextualAction3 uniqueIdentifier];
  v25 = [v20 initWithExecutableObject:actionCopy executableDescription:identifier executableIdentifier:uniqueIdentifier suggestionExecutableType:9];

  if (!titleCopy)
  {
    contextualAction4 = [actionCopy contextualAction];
    titleCopy = [contextualAction4 displayString];
  }

  v27 = [self _uiSpecWithTitle:titleCopy subtitle:subtitleCopy predictionReason:reasonCopy shouldClearOnEngagement:0 predictionReasons:reasons dateInterval:{intervalCopy, titleCopy}];
  v28 = [objc_alloc(MEMORY[0x277D42090]) initWithRawScore:4 suggestedConfidenceCategory:score];
  v29 = objc_alloc(MEMORY[0x277D42068]);
  _clientModelSpectForContextHeuristics = [self _clientModelSpectForContextHeuristics];
  v31 = [v29 initWithClientModelSpecification:_clientModelSpectForContextHeuristics executableSpecification:v25 uiSpecification:v27 scoreSpecification:v28];

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

+ (id)suggestionWithAction:(id)action predictionReasons:(unint64_t)reasons localizedReason:(id)reason score:(double)score dateInterval:(id)interval
{
  v35 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  reasonCopy = reason;
  actionCopy = action;
  v15 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    reasonsCopy = reasons;
    _os_log_impl(&dword_23E3EA000, v15, OS_LOG_TYPE_DEFAULT, "ATXProactiveSuggestion: _suggestionWithAction predictionReasons:%llu", buf, 0xCu);
  }

  v16 = objc_alloc(MEMORY[0x277CCACA8]);
  actionTitle = [actionCopy actionTitle];
  actionSubtitle = [actionCopy actionSubtitle];
  v19 = [v16 initWithFormat:@"%@ | %@", actionTitle, actionSubtitle];

  v20 = objc_alloc(MEMORY[0x277CCACA8]);
  actionKey = [actionCopy actionKey];
  v22 = [v20 initWithFormat:@"%@:%tu", actionKey, objc_msgSend(actionCopy, "paramHash")];

  v23 = [objc_alloc(MEMORY[0x277D42080]) initWithExecutableObject:actionCopy executableDescription:v19 executableIdentifier:v22 suggestionExecutableType:2];
  actionTitle2 = [actionCopy actionTitle];
  actionSubtitle2 = [actionCopy actionSubtitle];

  v26 = [self _uiSpecWithTitle:actionTitle2 subtitle:actionSubtitle2 predictionReason:reasonCopy shouldClearOnEngagement:0 predictionReasons:reasons dateInterval:intervalCopy];

  v27 = [objc_alloc(MEMORY[0x277D42090]) initWithRawScore:4 suggestedConfidenceCategory:score];
  v28 = objc_alloc(MEMORY[0x277D42068]);
  _clientModelSpectForContextHeuristics = [self _clientModelSpectForContextHeuristics];
  v30 = [v28 initWithClientModelSpecification:_clientModelSpectForContextHeuristics executableSpecification:v23 uiSpecification:v26 scoreSpecification:v27];

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

+ (id)_executableSpecForShortcutsAction:(id)action
{
  v3 = MEMORY[0x277D42080];
  actionCopy = action;
  v5 = [v3 alloc];
  contextualAction = [actionCopy contextualAction];
  displayString = [contextualAction displayString];
  contextualAction2 = [actionCopy contextualAction];
  identifier = [contextualAction2 identifier];
  v10 = [v5 initWithExecutableObject:actionCopy executableDescription:displayString executableIdentifier:identifier suggestionExecutableType:9];

  return v10;
}

+ (id)_executableSpecForSpotlightAction:(id)action
{
  v3 = MEMORY[0x277D42080];
  actionCopy = action;
  v5 = [v3 alloc];
  actionDescription = [actionCopy actionDescription];
  actionIdentifier = [actionCopy actionIdentifier];
  v8 = [v5 initWithExecutableObject:actionCopy executableDescription:actionDescription executableIdentifier:actionIdentifier suggestionExecutableType:8];

  return v8;
}

+ (id)_suggestionWithSpotlightRecentAction:(id)action score:(double)score
{
  v6 = [self _executableSpecForSpotlightAction:action];
  v7 = [self _uiSpecWithTitle:0 subtitle:0 predictionReason:0 shouldClearOnEngagement:0 predictionReasons:0x1000000 dateInterval:0];
  v8 = [objc_alloc(MEMORY[0x277D42090]) initWithRawScore:4 suggestedConfidenceCategory:score];
  v9 = objc_alloc(MEMORY[0x277D42068]);
  _clientModelSpecForSpotlightRecents = [self _clientModelSpecForSpotlightRecents];
  v11 = [v9 initWithClientModelSpecification:_clientModelSpecForSpotlightRecents executableSpecification:v6 uiSpecification:v7 scoreSpecification:v8];

  return v11;
}

+ (id)suggestionForDNDWithTitle:(id)title eventUniqueID:(id)d identifier:(id)identifier until:(id)until score:(double)score predictionReasons:(unint64_t)reasons localizedReason:(id)reason validFromStartDate:(id)self0 validToEndDate:(id)self1 dateInterval:(id)self2
{
  v48 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  dCopy = d;
  untilCopy = until;
  intervalCopy = interval;
  endDateCopy = endDate;
  dateCopy = date;
  reasonCopy = reason;
  v23 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v41 = "+[ATXContextHeuristicSuggestionProducer suggestionForDNDWithTitle:eventUniqueID:identifier:until:score:predictionReasons:localizedReason:validFromStartDate:validToEndDate:dateInterval:]";
    v42 = 2048;
    v43 = [titleCopy hash];
    v44 = 2112;
    v45 = dCopy;
    v46 = 2112;
    v47 = untilCopy;
    _os_log_impl(&dword_23E3EA000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s title.hash:%lu eventUniqueID:%@, until:%@", buf, 0x2Au);
  }

  [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v36 = dCopy;
  v24 = v37 = titleCopy;
  v35 = untilCopy;
  v25 = [v24 localizedStringForKey:@"SUGGESTION_DND_TITLE" value:&stru_2850AD368 table:0];
  v26 = objc_alloc(MEMORY[0x277D7A190]);
  v27 = [v26 initWithIdentifier:*MEMORY[0x277D7A7C8] name:v25 symbolName:@"moon.fill" colorName:@"systemIndigoColor"];
  v28 = [MEMORY[0x277D7A188] toggle:v27];
  v29 = [v24 localizedStringForKey:@"SUGGESTION_DND_TITLE" value:&stru_2850AD368 table:0];
  v30 = [objc_alloc(MEMORY[0x277CEB2D0]) initWithStartDate:dateCopy endDate:endDateCopy lockScreenEligible:0 predicate:0];

  v31 = [objc_alloc(MEMORY[0x277CEB820]) initWithContextualAction:v28 criteria:v30];
  v32 = [self suggestionWithShortcutAction:v31 predictionReasons:reasons localizedReason:reasonCopy title:v29 subtitle:0 score:intervalCopy dateInterval:score];

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

+ (id)suggestionForConferenceWithURL:(id)l score:(double)score predictionReasons:(unint64_t)reasons localizedReason:(id)reason criteria:(id)criteria dateInterval:(id)interval
{
  v38 = *MEMORY[0x277D85DE8];
  lCopy = l;
  reasonCopy = reason;
  criteriaCopy = criteria;
  intervalCopy = interval;
  v17 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = lCopy;
    _os_log_impl(&dword_23E3EA000, v17, OS_LOG_TYPE_DEFAULT, "ATXProactiveSuggestion: ***** suggestionForConferenceWithURL:%@", buf, 0xCu);
  }

  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"SUGGESTION_JOIN_TITLE" value:&stru_2850AD368 table:0];
  v20 = [self _bundleIDWithURL:lCopy];
  if ([v20 isEqualToString:@"com.apple.mobilephone"] && objc_msgSend(MEMORY[0x277D42590], "isiPad"))
  {
    v21 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v21, OS_LOG_TYPE_DEFAULT, "suggestionForConferenceWithURL: no Phone application on iPad. Skipping suggestion", buf, 2u);
    }

    v22 = 0;
    v23 = reasonCopy;
  }

  else
  {
    v24 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      [lCopy absoluteString];
      v26 = v25 = reasons;
      *buf = 138412802;
      v33 = v26;
      v34 = 2112;
      v35 = v20;
      v36 = 2112;
      v37 = v19;
      _os_log_impl(&dword_23E3EA000, v24, OS_LOG_TYPE_DEFAULT, "[[WFOpenURLContextualAction alloc] initWithURL:%@ bundleIdentifier:%@ actionTitle:%@", buf, 0x20u);

      reasons = v25;
    }

    v21 = [objc_alloc(MEMORY[0x277D7A078]) initWithURL:lCopy bundleIdentifier:v20 actionTitle:v19];
    v27 = [objc_alloc(MEMORY[0x277CEB820]) initWithContextualAction:v21 criteria:criteriaCopy];
    selfCopy = self;
    v23 = reasonCopy;
    v22 = [selfCopy suggestionWithShortcutAction:v27 predictionReasons:reasons localizedReason:reasonCopy title:0 subtitle:0 score:intervalCopy dateInterval:score];
  }

  v29 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)suggestionWithURL:(id)l actionTitle:(id)title subtitle:(id)subtitle bundleID:(id)d score:(double)score predictionReasons:(unint64_t)reasons criteria:(id)criteria dateInterval:(id)self0
{
  v36 = *MEMORY[0x277D85DE8];
  lCopy = l;
  titleCopy = title;
  dCopy = d;
  intervalCopy = interval;
  criteriaCopy = criteria;
  subtitleCopy = subtitle;
  v23 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    absoluteString = [lCopy absoluteString];
    v30 = 138412802;
    v31 = absoluteString;
    v32 = 2112;
    v33 = dCopy;
    v34 = 2112;
    v35 = titleCopy;
    _os_log_impl(&dword_23E3EA000, v23, OS_LOG_TYPE_DEFAULT, "[[WFOpenURLContextualAction alloc] initWithURL:%@ bundleIdentifier:%@ actionTitle:%@", &v30, 0x20u);
  }

  v25 = [objc_alloc(MEMORY[0x277D7A078]) initWithURL:lCopy bundleIdentifier:dCopy actionTitle:titleCopy];
  v26 = [objc_alloc(MEMORY[0x277CEB820]) initWithContextualAction:v25 criteria:criteriaCopy];

  v27 = [self suggestionWithShortcutAction:v26 predictionReasons:reasons localizedReason:0 title:0 subtitle:subtitleCopy score:intervalCopy dateInterval:score];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (id)_bundleIDWithURL:(id)l
{
  v19 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v4 = objc_autoreleasePoolPush();
  if (lCopy)
  {
    v16 = 0;
    v5 = [MEMORY[0x277CC1E48] appLinksWithURL:lCopy limit:1 error:&v16];
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
      firstObject = [v5 firstObject];
      targetApplicationRecord = [firstObject targetApplicationRecord];
      v10 = __atxlog_handle_context_heuristic();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = targetApplicationRecord;
        _os_log_impl(&dword_23E3EA000, v10, OS_LOG_TYPE_DEFAULT, "ATXProactiveSuggestion: appLinksWithURL record:%@", buf, 0xCu);
      }

      bundleIdentifier = [targetApplicationRecord bundleIdentifier];

      if (bundleIdentifier)
      {
        bundleIdentifier = [targetApplicationRecord bundleIdentifier];
      }
    }

    else
    {
      firstObject = __atxlog_handle_context_heuristic();
      if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
      {
        [(ATXContextHeuristicSuggestionProducer *)v6 _bundleIDWithURL:firstObject];
      }

      bundleIdentifier = 0;
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

+ (id)_uiSpecWithTitle:(id)title subtitle:(id)subtitle predictionReason:(id)reason shouldClearOnEngagement:(BOOL)engagement predictionReasons:(unint64_t)reasons dateInterval:(id)interval
{
  v27[1] = *MEMORY[0x277D85DE8];
  v13 = MEMORY[0x277D42088];
  intervalCopy = interval;
  reasonCopy = reason;
  subtitleCopy = subtitle;
  titleCopy = title;
  v18 = [[v13 alloc] initWithApplicableSuggestionLayout:5];
  v27[0] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];

  v20 = objc_alloc(MEMORY[0x277D420A0]);
  startDate = [intervalCopy startDate];
  endDate = [intervalCopy endDate];

  BYTE1(v26) = engagement;
  LOBYTE(v26) = 1;
  v23 = [v20 initWithTitle:titleCopy subtitle:subtitleCopy predictionReason:reasonCopy preferredLayoutConfigs:v19 allowedOnLockscreen:0 allowedOnHomeScreen:0 allowedOnSpotlight:v26 shouldClearOnEngagement:reasons predictionReasons:startDate contextStartDate:endDate contextEndDate:?];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)_dummyUiSpecWithTitle:(id)title subtitle:(id)subtitle predictionReason:(id)reason shouldClearOnEngagement:(BOOL)engagement predictionReasons:(unint64_t)reasons
{
  v21[1] = *MEMORY[0x277D85DE8];
  v11 = MEMORY[0x277D42088];
  reasonCopy = reason;
  subtitleCopy = subtitle;
  titleCopy = title;
  v15 = [[v11 alloc] initWithApplicableSuggestionLayout:5];
  v21[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];

  BYTE1(v20) = engagement;
  LOBYTE(v20) = 0;
  v17 = [objc_alloc(MEMORY[0x277D420A0]) initWithTitle:titleCopy subtitle:subtitleCopy predictionReason:reasonCopy preferredLayoutConfigs:v16 allowedOnLockscreen:0 allowedOnHomeScreen:0 allowedOnSpotlight:v20 shouldClearOnEngagement:reasons predictionReasons:?];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)toggleAirplaneModeWithPredictionReasons:(unint64_t)reasons localizedReason:(id)reason score:(double)score validFromStartDate:(id)date validToEndDate:(id)endDate dateInterval:(id)interval
{
  v14 = MEMORY[0x277D7A198];
  intervalCopy = interval;
  endDateCopy = endDate;
  dateCopy = date;
  reasonCopy = reason;
  v19 = [[v14 alloc] initWithSetting:0 operation:2];
  v20 = [objc_alloc(MEMORY[0x277CEB2D0]) initWithStartDate:dateCopy endDate:endDateCopy lockScreenEligible:0 predicate:0];

  v21 = [objc_alloc(MEMORY[0x277CEB820]) initWithContextualAction:v19 criteria:v20];
  v22 = [self suggestionWithShortcutAction:v21 predictionReasons:reasons localizedReason:reasonCopy title:0 subtitle:0 score:intervalCopy dateInterval:score];

  return v22;
}

+ (id)rideshareAppActionForDestination:(id)destination preferredBundleId:(id)id predictionReasons:(unint64_t)reasons title:(id)title localizedReason:(id)reason score:(double)score validFromStartDate:(id)date validToEndDate:(id)self0 dateInterval:(id)self1
{
  v17 = MEMORY[0x277D7A0B0];
  intervalCopy = interval;
  endDateCopy = endDate;
  dateCopy = date;
  reasonCopy = reason;
  titleCopy = title;
  idCopy = id;
  destinationCopy = destination;
  v25 = [v17 alloc];
  location = [destinationCopy location];
  name = [destinationCopy name];

  v28 = [v25 initWithApplicationBundleIdentifier:idCopy destination:location name:name];
  v29 = [objc_alloc(MEMORY[0x277CEB2D0]) initWithStartDate:dateCopy endDate:endDateCopy lockScreenEligible:0 predicate:0];

  v30 = [objc_alloc(MEMORY[0x277CEB820]) initWithContextualAction:v28 criteria:v29];
  v31 = [self createSuggestionFromShortcutsAction:v30 predictionReasons:reasons localizedReason:reasonCopy title:titleCopy subtitle:0 score:0 shouldClearOnEngagement:score dateInterval:intervalCopy];

  return v31;
}

+ (id)flightCheckInActivityWithSubtitle:(id)subtitle url:(id)url teamIdentifier:(id)identifier predictionReasons:(unint64_t)reasons localizedReason:(id)reason score:(double)score validStartDate:(id)date validEndDate:(id)self0
{
  v18 = MEMORY[0x277CEB2D0];
  endDateCopy = endDate;
  dateCopy = date;
  reasonCopy = reason;
  identifierCopy = identifier;
  urlCopy = url;
  subtitleCopy = subtitle;
  v25 = [[v18 alloc] initWithStartDate:dateCopy endDate:endDateCopy lockScreenEligible:0 predicate:0];

  v26 = [MEMORY[0x277CEB2C8] atx_showCheckInActionWithTeamId:identifierCopy userActivityString:urlCopy subtitle:subtitleCopy overrideBundleId:0 suggestedEventUniqueKey:0 heuristicName:reasonCopy criteria:v25];

  v27 = [self suggestionWithAction:v26 predictionReasons:reasons localizedReason:reasonCopy score:0 dateInterval:score];

  return v27;
}

+ (id)_mediaWithName:(id)name type:(int64_t)type adamIdentifier:(int64_t)identifier umcIdentifier:(id)umcIdentifier predictionReasons:(unint64_t)reasons localizedReason:(id)reason score:(double)score expirationDate:(id)self0
{
  nameCopy = name;
  umcIdentifierCopy = umcIdentifier;
  reasonCopy = reason;
  dateCopy = date;
  if ((identifier == 0) == (umcIdentifierCopy != 0))
  {
    if (umcIdentifierCopy)
    {
LABEL_3:
      identifier = umcIdentifierCopy;
      goto LABEL_6;
    }
  }

  else
  {
    [ATXContextHeuristicSuggestionProducer _mediaWithName:a2 type:self adamIdentifier:identifier umcIdentifier:umcIdentifierCopy predictionReasons:? localizedReason:? score:? expirationDate:?];
    if (umcIdentifierCopy)
    {
      goto LABEL_3;
    }
  }

  identifier = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%lld", identifier];
LABEL_6:
  v22 = identifier;
  v23 = [objc_alloc(MEMORY[0x277CEB2D0]) initWithStartDate:0 endDate:dateCopy lockScreenEligible:0 predicate:0];
  v24 = [objc_alloc(MEMORY[0x277CEB860]) initWithMediaName:nameCopy identifier:v22 criteria:v23];

  v25 = [self suggestionWithSpotlightAction:v24 predictionReasons:reasons localizedReason:reasonCopy score:0 dateInterval:score];

  return v25;
}

+ (id)navigationToDestination:(id)destination title:(id)title subtitle:(id)subtitle transportType:(unint64_t)type destinationName:(id)name predictionReasons:(unint64_t)reasons localizedReason:(id)reason score:(double)self0 shouldClearOnEngagement:(BOOL)self1 validStartDate:(id)self2 validEndDate:(id)self3 dateInterval:(id)self4
{
  v20 = MEMORY[0x277D79F90];
  intervalCopy = interval;
  endDateCopy = endDate;
  dateCopy = date;
  reasonCopy = reason;
  nameCopy = name;
  subtitleCopy = subtitle;
  titleCopy = title;
  destinationCopy = destination;
  v28 = [v20 alloc];
  location = [destinationCopy location];

  v30 = [v28 initWithDestination:location name:nameCopy type:type];
  v31 = [objc_alloc(MEMORY[0x277CEB2D0]) initWithStartDate:dateCopy endDate:endDateCopy lockScreenEligible:0 predicate:0];

  v32 = [objc_alloc(MEMORY[0x277CEB820]) initWithContextualAction:v30 criteria:v31];
  v33 = [self createSuggestionFromShortcutsAction:v32 predictionReasons:reasons localizedReason:reasonCopy title:titleCopy subtitle:subtitleCopy score:0 shouldClearOnEngagement:score dateInterval:intervalCopy];

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