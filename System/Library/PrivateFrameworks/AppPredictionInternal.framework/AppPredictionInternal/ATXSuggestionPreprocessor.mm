@interface ATXSuggestionPreprocessor
+ (id)bundleIdAssociatedWithSuggestion:(id)suggestion;
+ (id)contactIdsAssociatedWithContactsWidgetIntent:(id)intent;
+ (id)contactIdsAssociatedWithSuggestion:(id)suggestion;
- (ATXSuggestionPreprocessor)init;
- (ATXSuggestionPreprocessor)initWithEngagementRecordManager:(id)manager notificationsLoggingServer:(id)server lockscreenBlacklist:(id)blacklist actionToWidgetConverter:(id)converter;
- (BOOL)_bundleSupportsINPlayMediaIntentForBundleId:(id)id fromUnitTest:(BOOL)test;
- (BOOL)shouldFilterOutSuggestion:(id)suggestion withBundleId:(id)id fromAppsThatCannotBeSuggested:(id)suggested fromAppsWhoseContentsCannotBeSuggested:(id)beSuggested;
- (id)filterOutRecentlyEngagedSuggestions:(id)suggestions;
- (id)filterOutSuggestionsForUninstalledOrRestrictedApps:(id)apps;
- (id)preprocessedSuggestionsForAppSwitcherConsumer:(id)consumer;
- (id)suggestionsWithInvalidSuggestionsRemoved:(id)removed;
@end

@implementation ATXSuggestionPreprocessor

- (ATXSuggestionPreprocessor)init
{
  mEMORY[0x277CEB500] = [MEMORY[0x277CEB500] sharedInstance];
  v4 = +[ATXNotificationsLoggingServer sharedInstance];
  v5 = +[ATXLockscreenBlacklist sharedInstance];
  v6 = objc_opt_new();
  v7 = [(ATXSuggestionPreprocessor *)self initWithEngagementRecordManager:mEMORY[0x277CEB500] notificationsLoggingServer:v4 lockscreenBlacklist:v5 actionToWidgetConverter:v6];

  return v7;
}

- (ATXSuggestionPreprocessor)initWithEngagementRecordManager:(id)manager notificationsLoggingServer:(id)server lockscreenBlacklist:(id)blacklist actionToWidgetConverter:(id)converter
{
  managerCopy = manager;
  serverCopy = server;
  blacklistCopy = blacklist;
  converterCopy = converter;
  v22.receiver = self;
  v22.super_class = ATXSuggestionPreprocessor;
  v15 = [(ATXSuggestionPreprocessor *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_converter, converter);
    objc_storeStrong(&v16->_notificationsLoggingServer, server);
    objc_storeStrong(&v16->_lockscreenBlacklist, blacklist);
    objc_storeStrong(&v16->_engagementRecordManager, manager);
    mEMORY[0x277D41B98] = [MEMORY[0x277D41B98] sharedInstance];
    hyperParameters = v16->_hyperParameters;
    v16->_hyperParameters = mEMORY[0x277D41B98];

    v19 = +[ATXSuggestionModeFilter sharedInstance];
    modeFilter = v16->_modeFilter;
    v16->_modeFilter = v19;

    [(ATXSuggestionModeFilter *)v16->_modeFilter registerObserver:v16];
    [(ATXSuggestionModeFilter *)v16->_modeFilter registerForModeChanges];
  }

  return v16;
}

- (id)suggestionsWithInvalidSuggestionsRemoved:(id)removed
{
  v4 = [(ATXSuggestionPreprocessor *)self filterOutSuggestionsForUninstalledOrRestrictedApps:removed];
  v5 = [(ATXSuggestionPreprocessor *)self filterOutRecentlyEngagedSuggestions:v4];

  return v5;
}

- (id)filterOutRecentlyEngagedSuggestions:(id)suggestions
{
  v23 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  v5 = __atxlog_handle_blending();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v22 = [suggestionsCopy count];
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Blending: Blending Layer is removing recently engaged suggestions. # suggestions at start: %lu", buf, 0xCu);
  }

  v6 = [(ATXEngagementRecordManager *)self->_engagementRecordManager engagedExecutablesOfType:3 queryOptions:1];
  v7 = [(ATXEngagementRecordManager *)self->_engagementRecordManager engagedExecutablesOfType:120 queryOptions:2];
  v8 = [v6 mutableCopy];
  [v8 unionSet:v7];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __65__ATXSuggestionPreprocessor_filterOutRecentlyEngagedSuggestions___block_invoke;
  v18 = &unk_278599660;
  selfCopy = self;
  v20 = v8;
  v9 = v8;
  v10 = [suggestionsCopy _pas_filteredArrayWithTest:&v15];
  v11 = __atxlog_handle_blending();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 count];
    *buf = 134217984;
    v22 = v12;
    _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "Blending: Blending Layer is done removing recently engaged suggestions. # suggestions at end: %lu", buf, 0xCu);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __65__ATXSuggestionPreprocessor_filterOutRecentlyEngagedSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 16) hasEngagedWithSuggestion:v3 engagedExecutables:*(a1 + 40)];
  if (v4)
  {
    v5 = __atxlog_handle_blending();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Blending: Blending layer has filtered out recently engaged suggestion: %@", &v8, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4 ^ 1u;
}

- (id)filterOutSuggestionsForUninstalledOrRestrictedApps:(id)apps
{
  v36 = *MEMORY[0x277D85DE8];
  appsCopy = apps;
  v5 = __atxlog_handle_blending();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v35 = [appsCopy count];
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Blending: Blending Layer is removing suggestions for unsupported apps. # suggestions at start: %lu", buf, 0xCu);
  }

  v6 = objc_alloc(MEMORY[0x277CBEB98]);
  v7 = CFPreferencesCopyValue(@"SBSearchSuggestAppDisabled", @"com.apple.spotlightui", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;

  v11 = [v6 initWithArray:v10];
  v12 = objc_opt_new();
  hiddenOrLockedBundleIDs = [v12 hiddenOrLockedBundleIDs];

  v14 = objc_alloc(MEMORY[0x277CBEB98]);
  v15 = +[_ATXAppIconState sharedInstance];
  allInstalledAppsKnownToSpringBoard = [v15 allInstalledAppsKnownToSpringBoard];
  v17 = [v14 initWithArray:allInstalledAppsKnownToSpringBoard];

  v18 = +[ATXDigitalHealthBlacklist sharedInstance];
  blacklistedBundleIds = [v18 blacklistedBundleIds];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __80__ATXSuggestionPreprocessor_filterOutSuggestionsForUninstalledOrRestrictedApps___block_invoke;
  v29[3] = &unk_27859D9E0;
  v29[4] = self;
  v30 = blacklistedBundleIds;
  v31 = v11;
  v32 = hiddenOrLockedBundleIDs;
  v33 = v17;
  v20 = v17;
  v21 = hiddenOrLockedBundleIDs;
  v22 = v11;
  v23 = blacklistedBundleIds;
  v24 = [appsCopy _pas_filteredArrayWithTest:v29];
  v25 = __atxlog_handle_blending();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [v24 count];
    *buf = 134217984;
    v35 = v26;
    _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "Blending: Blending Layer is done removing suggestions for unsupported apps. # suggestions at end: %lu", buf, 0xCu);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v24;
}

uint64_t __80__ATXSuggestionPreprocessor_filterOutSuggestionsForUninstalledOrRestrictedApps___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() bundleIdAssociatedWithSuggestion:v3];
  v6 = ATXBundleIdReplacementForBundleId();

  if (!v6 || (ATXBundleIdIsFakeContainerBundleId() & 1) != 0)
  {
    goto LABEL_3;
  }

  if ([MEMORY[0x277CEB3B8] isAppClipWebClipBundleId:v6])
  {
    v7 = [MEMORY[0x277CEB3B8] isWebClipInstalledWithBundleId:v6];
    goto LABEL_4;
  }

  if ([MEMORY[0x277CEB3B8] isSwiftPlaygroundsBundle:v6])
  {
LABEL_19:
    v7 = 0;
    goto LABEL_4;
  }

  if ([*(a1 + 40) containsObject:v6])
  {
    v10 = __atxlog_handle_blending();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v6;
      v11 = "Removed suggestion for %@ because it is blocked by ScreenTime";
LABEL_17:
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, v11, &v12, 0xCu);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if ([*(a1 + 32) shouldFilterOutSuggestion:v3 withBundleId:v6 fromAppsThatCannotBeSuggested:*(a1 + 48) fromAppsWhoseContentsCannotBeSuggested:*(a1 + 56)])
  {
    v10 = __atxlog_handle_blending();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v6;
      v11 = "Removed suggestion for %@ because it is locked or hidden by user preference";
      goto LABEL_17;
    }

LABEL_18:

    goto LABEL_19;
  }

  if (([*(a1 + 64) containsObject:v6] & 1) == 0)
  {
    v10 = __atxlog_handle_blending();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v6;
      v11 = "Removed suggestion for %@ because app is no longer installed.";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

LABEL_3:
  v7 = 1;
LABEL_4:

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)bundleIdAssociatedWithSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  executableSpecification = [suggestionCopy executableSpecification];
  executableType = [executableSpecification executableType];

  executableSpecification2 = [suggestionCopy executableSpecification];
  v7 = executableSpecification2;
  if (executableType == 1)
  {
    executableObject = [executableSpecification2 executableObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_11;
    }

    goto LABEL_3;
  }

  executableType2 = [executableSpecification2 executableType];

  if (executableType2 == 2)
  {
    atxActionExecutableObject = [suggestionCopy atxActionExecutableObject];
LABEL_6:
    executableObject = atxActionExecutableObject;
    bundleId = [atxActionExecutableObject bundleId];
    goto LABEL_9;
  }

  executableSpecification3 = [suggestionCopy executableSpecification];
  executableType3 = [executableSpecification3 executableType];

  if (executableType3 == 3)
  {
    executableObject = [suggestionCopy atxInfoSuggestionExecutableObject];
    bundleId = [executableObject appBundleIdentifier];
    goto LABEL_9;
  }

  executableSpecification4 = [suggestionCopy executableSpecification];
  executableType4 = [executableSpecification4 executableType];

  executableSpecification5 = [suggestionCopy executableSpecification];
  v19 = executableSpecification5;
  if (executableType4 == 6)
  {
    executableObject = [executableSpecification5 executableObject];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_3:
      v9 = 0;
LABEL_10:

      executableObject = v9;
      goto LABEL_11;
    }

    bundleId = [executableObject bundleID];
LABEL_9:
    v9 = bundleId;
    goto LABEL_10;
  }

  executableType5 = [executableSpecification5 executableType];

  if (executableType5 == 10)
  {
    atxActionExecutableObject = [suggestionCopy linkActionExecutableObject];
    goto LABEL_6;
  }

  executableObject = 0;
LABEL_11:

  return executableObject;
}

+ (id)contactIdsAssociatedWithSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  executableSpecification = [suggestionCopy executableSpecification];
  executableType = [executableSpecification executableType];

  if (executableType == 2)
  {
    atxActionExecutableObject = [suggestionCopy atxActionExecutableObject];
    intent = [atxActionExecutableObject intent];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    intent2 = [atxActionExecutableObject intent];
    intent3 = intent2;
    if (isKindOfClass)
    {
      recipients = [intent2 recipients];
      v13 = recipients;
      v14 = &__block_literal_global_123;
LABEL_10:
      v20 = [recipients _pas_mappedArrayWithTransform:v14];

      v18 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v20];
      goto LABEL_14;
    }

    objc_opt_class();
    v19 = objc_opt_isKindOfClass();

    if (v19)
    {
      intent3 = [atxActionExecutableObject intent];
      recipients = [intent3 contacts];
      v13 = recipients;
      v14 = &__block_literal_global_36_2;
      goto LABEL_10;
    }
  }

  else
  {
    executableSpecification2 = [suggestionCopy executableSpecification];
    executableType2 = [executableSpecification2 executableType];

    if (executableType2 != 3)
    {
      v18 = 0;
      goto LABEL_16;
    }

    atxActionExecutableObject = [suggestionCopy atxInfoSuggestionExecutableObject];
    intent3 = [atxActionExecutableObject widgetBundleIdentifier];
    if (![intent3 isEqualToString:@"com.apple.PeopleViewService.PeopleWidget-iOS"])
    {
      v18 = 0;
      goto LABEL_14;
    }

    intent4 = [atxActionExecutableObject intent];

    if (intent4)
    {
      intent3 = [atxActionExecutableObject intent];
      v18 = [self contactIdsAssociatedWithContactsWidgetIntent:intent3];
LABEL_14:

      goto LABEL_15;
    }
  }

  v18 = 0;
LABEL_15:

LABEL_16:

  return v18;
}

+ (id)contactIdsAssociatedWithContactsWidgetIntent:(id)intent
{
  v30 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  v4 = objc_opt_new();
  atx_nonNilParametersByName = [intentCopy atx_nonNilParametersByName];
  v6 = [atx_nonNilParametersByName objectForKeyedSubscript:@"person"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    identifier = [v7 identifier];

    if (identifier)
    {
      identifier2 = [v7 identifier];
      [v4 addObject:identifier2];
    }
  }

  v10 = [atx_nonNilParametersByName objectForKeyedSubscript:@"people"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v6;
    v24 = intentCopy;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = v16;
            identifier3 = [v17 identifier];

            if (identifier3)
            {
              identifier4 = [v17 identifier];
              [v4 addObject:identifier4];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v13);
    }

    v6 = v23;
    intentCopy = v24;
  }

  v20 = [v4 copy];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (BOOL)shouldFilterOutSuggestion:(id)suggestion withBundleId:(id)id fromAppsThatCannotBeSuggested:(id)suggested fromAppsWhoseContentsCannotBeSuggested:(id)beSuggested
{
  suggestionCopy = suggestion;
  idCopy = id;
  suggestedCopy = suggested;
  beSuggestedCopy = beSuggested;
  executableSpecification = [suggestionCopy executableSpecification];
  executableType = [executableSpecification executableType];

  if (executableType == 1)
  {
    v15 = suggestedCopy;
    goto LABEL_10;
  }

  executableSpecification2 = [suggestionCopy executableSpecification];
  if ([executableSpecification2 executableType] != 3)
  {
    executableSpecification3 = [suggestionCopy executableSpecification];
    if ([executableSpecification3 executableType] != 2)
    {
      executableSpecification4 = [suggestionCopy executableSpecification];
      if ([executableSpecification4 executableType] != 6)
      {
        executableSpecification5 = [suggestionCopy executableSpecification];
        executableType2 = [executableSpecification5 executableType];

        if (executableType2 != 10)
        {
          goto LABEL_13;
        }

        goto LABEL_9;
      }
    }
  }

LABEL_9:
  v15 = beSuggestedCopy;
LABEL_10:
  if (([v15 containsObject:idCopy] & 1) == 0)
  {
LABEL_13:
    v19 = 0;
    goto LABEL_14;
  }

  v19 = 1;
LABEL_14:

  return v19;
}

uint64_t __92__ATXSuggestionPreprocessor_suggestionsByPreprocessingRankedSuggestions_forConsumerSubType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 executableSpecification];
  if ([v4 executableType] != 1)
  {
    goto LABEL_8;
  }

  v5 = [v3 scoreSpecification];
  if ([v5 suggestedConfidenceCategory] <= 2)
  {

LABEL_8:
    goto LABEL_9;
  }

  v6 = [v3 bundleIdExecutableObject];
  v7 = [v6 isEqualToString:@"com.apple.mobilesafari"];

  if (!v7)
  {
LABEL_9:
    if ([*(*(a1 + 32) + 40) uiSupportsSuggestion:v3 consumerSubType:34] & 1) != 0 || (objc_msgSend(*(*(a1 + 32) + 40), "uiSupportsSuggestion:consumerSubType:", v3, 37))
    {
      v9 = 1;
    }

    else
    {
      v9 = [*(*(a1 + 32) + 40) uiSupportsSuggestion:v3 consumerSubType:36];
    }

    goto LABEL_13;
  }

  v8 = __atxlog_handle_blending();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "Blending: Disallowing medium or high confidence Safari app prediction on Home Screen", v11, 2u);
  }

  v9 = 0;
LABEL_13:

  return v9;
}

uint64_t __92__ATXSuggestionPreprocessor_suggestionsByPreprocessingRankedSuggestions_forConsumerSubType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![*(*(a1 + 32) + 40) uiSupportsSuggestion:v3 consumerSubType:42])
  {
    goto LABEL_8;
  }

  v4 = [v3 executableSpecification];
  v5 = [v4 executableClassString];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 isEqualToString:v7];

  if (v8)
  {
    v9 = [v3 executableSpecification];
    v10 = [v9 executableObject];

    v11 = [v10 bundleID];
    v12 = [v11 isEqualToString:@"com.apple.facetime"];

    if ((v12 & 1) == 0)
    {
      v13 = __atxlog_handle_blending();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __92__ATXSuggestionPreprocessor_suggestionsByPreprocessingRankedSuggestions_forConsumerSubType___block_invoke_2_cold_1(a1, v3, v13);
      }
    }
  }

  else
  {
LABEL_8:
    v12 = 0;
  }

  return v12;
}

uint64_t __92__ATXSuggestionPreprocessor_suggestionsByPreprocessingRankedSuggestions_forConsumerSubType___block_invoke_58(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(*(a1 + 32) + 40) uiSupportsSuggestion:v3 consumerSubType:22])
  {
    v4 = [v3 atxActionExecutableObject];
    v5 = [v4 bundleId];
    if (!v5)
    {
      v6 = __atxlog_handle_blending();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __92__ATXSuggestionPreprocessor_suggestionsByPreprocessingRankedSuggestions_forConsumerSubType___block_invoke_58_cold_1(v3, v6);
      }

      goto LABEL_19;
    }

    if ([*(a1 + 40) containsObject:v5])
    {
      v6 = __atxlog_handle_blending();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v3;
        v7 = "Blending: Filtering out lockscreen suggestion because a notification from that app is already on the lockscreen: %@";
LABEL_18:
        _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, v7, &v13, 0xCu);
      }
    }

    else if ([*(a1 + 48) containsObject:v5])
    {
      v6 = __atxlog_handle_blending();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v3;
        v7 = "Blending: Filtering out lockscreen suggestion because the app is in the lockscreen blacklist: %@";
        goto LABEL_18;
      }
    }

    else
    {
      v9 = [*(*(a1 + 32) + 48) currentModeConfigurationAllowsSuggestion:v3];
      v6 = __atxlog_handle_blending();
      v10 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v10)
        {
          v13 = 138412290;
          v14 = v3;
          _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Blending: Preprocessing allowing suggestion on lockscreen: %@", &v13, 0xCu);
        }

        v8 = 1;
        goto LABEL_20;
      }

      if (v10)
      {
        v13 = 138412290;
        v14 = v3;
        v7 = "Blending: Filtering out lockscreen suggestion because the app is not allowed in the current mode: %@";
        goto LABEL_18;
      }
    }

LABEL_19:
    v8 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v8 = 0;
LABEL_21:

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t __77__ATXSuggestionPreprocessor_preprocessedSuggestionsForMediaControlsConsumer___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 executableSpecification];
  v4 = [v3 executableType];

  if (v4 == 2)
  {
    v5 = [v2 executableSpecification];
    v6 = [v5 executableObject];

    v7 = [v6 intent];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)preprocessedSuggestionsForAppSwitcherConsumer:(id)consumer
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__ATXSuggestionPreprocessor_preprocessedSuggestionsForAppSwitcherConsumer___block_invoke;
  v5[3] = &unk_2785996B0;
  v5[4] = self;
  v3 = [consumer _pas_filteredArrayWithTest:v5];

  return v3;
}

uint64_t __75__ATXSuggestionPreprocessor_preprocessedSuggestionsForAppSwitcherConsumer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 executableSpecification];
  v5 = [v4 executableObject];

  v6 = [v3 uiSpecification];
  v7 = [v6 predictionReasons];

  v8 = 0;
  if (v7 && v7 != 1024 && v7 != 0x20000)
  {
    v9 = [v3 scoreSpecification];
    v10 = [v9 suggestedConfidenceCategory];

    if (v10 > 3)
    {
      v8 = 1;
    }

    else if ((v7 & 0x54) != 0)
    {
      v8 = [*(a1 + 32) _bundleSupportsINPlayMediaIntentForBundleId:v5 fromUnitTest:0];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)_bundleSupportsINPlayMediaIntentForBundleId:(id)id fromUnitTest:(BOOL)test
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CEB3B8] appInfoForBundle:id];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  supportedActions = [v5 supportedActions];
  v9 = [supportedActions containsObject:v7];

  if (v9)
  {
    if (test || ([v5 actionsRestrictedWhileLocked], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "containsObject:", v7), v10, !v11))
    {
      v14 = 1;
      goto LABEL_11;
    }

    v12 = __atxlog_handle_pmm();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v7;
      v13 = "Prediction does not support %@ handling while device is locked.";
LABEL_8:
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, v13, &v17, 0xCu);
    }
  }

  else
  {
    v12 = __atxlog_handle_pmm();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v7;
      v13 = "Prediction does not support %@.";
      goto LABEL_8;
    }
  }

  v14 = 0;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void __92__ATXSuggestionPreprocessor_suggestionsByPreprocessingRankedSuggestions_forConsumerSubType___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:*(a1 + 40)];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_debug_impl(&dword_2263AA000, a3, OS_LOG_TYPE_DEBUG, "Suppressing people suggestion for %@ because the bundleId isn't FaceTime. Suggestion: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void __92__ATXSuggestionPreprocessor_suggestionsByPreprocessingRankedSuggestions_forConsumerSubType___block_invoke_58_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Blending: Filtering out lockscreen suggestion because unable to get actionBundleId: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end