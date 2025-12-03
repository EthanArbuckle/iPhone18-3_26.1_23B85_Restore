@interface ATXInformationFilter
+ (int64_t)chsFamilyForTimelineRelevanceSuggestionLayoutOptions:(unint64_t)options;
- (ATXInformationFilter)initWithStore:(id)store abuseControlConfig:(id)config;
- (ATXInformationFilter)initWithStore:(id)store abuseControlConfig:(id)config histogram:(id)histogram digitalHealthBlockList:(id)list;
- (BOOL)_canSuggestionPassAppLaunchCheck:(id)check;
- (BOOL)_isFirstPartyApp:(id)app;
- (BOOL)_isSuggestionBlockedByDismiss:(id)dismiss withGuardedData:(id)data;
- (BOOL)_shouldBlockTimelineSuggestion:(id)suggestion updatingAbuseControlOutcomes:(id)outcomes;
- (BOOL)shouldDisableRandomization:(id)randomization;
- (BOOL)stalenessRotationsAreEnabled:(id)enabled;
- (id)_fetchAppLaunchCountForBundleId:(id)id;
- (id)filterInfoSuggestions:(id)suggestions;
- (int64_t)_numberOfSeenRotationsForSuggestion:(id)suggestion;
- (int64_t)numberOfSeenRotationsForWidget:(id)widget kind:(id)kind intent:(id)intent filterByClientModelId:(id)id;
- (void)_demoteFirstPartyDonatedSuggestionIfNecessary:(id)necessary;
- (void)_populateDismissRecordsCacheAsynchronously;
- (void)recordDismissOfSuggestion:(id)suggestion isDismissalLongTerm:(BOOL)term completionHandler:(id)handler;
@end

@implementation ATXInformationFilter

- (ATXInformationFilter)initWithStore:(id)store abuseControlConfig:(id)config
{
  configCopy = config;
  storeCopy = store;
  v8 = +[ATXDigitalHealthBlacklist sharedInstance];
  v9 = [(ATXInformationFilter *)self initWithStore:storeCopy abuseControlConfig:configCopy histogram:0 digitalHealthBlockList:v8];

  return v9;
}

- (ATXInformationFilter)initWithStore:(id)store abuseControlConfig:(id)config histogram:(id)histogram digitalHealthBlockList:(id)list
{
  storeCopy = store;
  configCopy = config;
  histogramCopy = histogram;
  listCopy = list;
  v33.receiver = self;
  v33.super_class = ATXInformationFilter;
  v15 = [(ATXInformationFilter *)&v33 init];
  if (v15)
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v32 = storeCopy;
    uTF8String = [v17 UTF8String];
    dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    obj = list;
    v19 = listCopy;
    v20 = histogramCopy;
    v22 = v21 = configCopy;
    v23 = dispatch_queue_create(uTF8String, v22);
    queue = v15->_queue;
    v15->_queue = v23;

    configCopy = v21;
    histogramCopy = v20;
    listCopy = v19;

    v25 = objc_opt_new();
    appLaunchCountsByBundleId = v15->_appLaunchCountsByBundleId;
    v15->_appLaunchCountsByBundleId = v25;

    objc_storeStrong(&v15->_store, store);
    objc_storeStrong(&v15->_abuseControlConfig, config);
    objc_storeStrong(&v15->_histogram, histogram);
    objc_storeStrong(&v15->_digitalHealthBlockList, obj);
    v27 = objc_opt_new();
    v28 = [objc_alloc(MEMORY[0x277D42610]) initWithGuardedData:v27 serialQueue:v15->_queue];
    lock = v15->_lock;
    v15->_lock = v28;

    [(ATXInformationFilter *)v15 _populateDismissRecordsCacheAsynchronously];
    storeCopy = v32;
  }

  return v15;
}

- (void)recordDismissOfSuggestion:(id)suggestion isDismissalLongTerm:(BOOL)term completionHandler:(id)handler
{
  suggestionCopy = suggestion;
  handlerCopy = handler;
  lock = self->_lock;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__ATXInformationFilter_recordDismissOfSuggestion_isDismissalLongTerm_completionHandler___block_invoke;
  v13[3] = &unk_278596FB0;
  termCopy = term;
  v14 = suggestionCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v11 = handlerCopy;
  v12 = suggestionCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v13];
}

void __88__ATXInformationFilter_recordDismissOfSuggestion_isDismissalLongTerm_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 56))
  {
    v4 = 5184000.0;
  }

  else
  {
    v4 = 3600.0;
  }

  v5 = objc_alloc(MEMORY[0x277CEB5C0]);
  v6 = (a1 + 32);
  v7 = [*(a1 + 32) widgetBundleIdentifier];
  v8 = [*(a1 + 32) criterion];
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v4];
  v10 = [*(a1 + 32) endDate];
  v11 = [v5 initWithWidgetBundleId:v7 criterion:v8 blockWidgetUntilDate:v9 blockCriterionUntilDate:v10];

  if ([*(*(a1 + 40) + 32) appendDismissRecord:v11])
  {
    v12 = v3[1];
    v13 = [*v6 widgetBundleIdentifier];
    v14 = [v12 objectForKeyedSubscript:v13];

    if (!v14)
    {
      v15 = objc_opt_new();
      v16 = v3[1];
      v17 = [*v6 widgetBundleIdentifier];
      [v16 setObject:v15 forKeyedSubscript:v17];
    }

    v18 = v3[1];
    v19 = [*v6 widgetBundleIdentifier];
    v20 = [v18 objectForKeyedSubscript:v19];
    [v20 addObject:v11];

    v21 = 0;
  }

  else
  {
    v22 = __atxlog_handle_gi();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __88__ATXInformationFilter_recordDismissOfSuggestion_isDismissalLongTerm_completionHandler___block_invoke_cold_1((a1 + 32), v22);
    }

    v23 = objc_alloc(MEMORY[0x277CCA9B8]);
    v32 = *MEMORY[0x277CCA450];
    v33[0] = @"failed to insert dismiss record into DB.";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v21 = [v23 initWithDomain:@"ATXInformationFilterError" code:-1 userInfo:v24];
  }

  v25 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__ATXInformationFilter_recordDismissOfSuggestion_isDismissalLongTerm_completionHandler___block_invoke_41;
  block[3] = &unk_278596F88;
  v26 = *(a1 + 48);
  v30 = v21;
  v31 = v26;
  v27 = v21;
  dispatch_async(v25, block);

  v28 = *MEMORY[0x277D85DE8];
}

- (id)filterInfoSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v5 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ATXInformationFilter *)self filterInfoSuggestions:v5];
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  lock = self->_lock;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __46__ATXInformationFilter_filterInfoSuggestions___block_invoke;
  v18 = &unk_278596FD8;
  selfCopy = self;
  v20 = suggestionsCopy;
  v9 = v6;
  v21 = v9;
  v22 = v7;
  v10 = v7;
  v11 = suggestionsCopy;
  [(_PASQueueLock *)lock runWithLockAcquired:&v15];
  [(ATXInformationFilter *)self _removeExpiredDismissRecordsAsynchronously:v15];
  [(ATXInformationStore *)self->_store updateEndDateForInfoSuggestions:v10];
  v12 = v22;
  v13 = v9;

  return v9;
}

void __46__ATXInformationFilter_filterInfoSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v164 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v133 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:19];
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v5 = [*(*(a1 + 32) + 40) denyList];
  v117 = [v4 initWithArray:v5];

  v132 = [*(*(a1 + 32) + 56) blacklistedBundleIds];
  v123 = objc_opt_new();
  v119 = objc_opt_new();
  context = objc_opt_new();
  v136 = a1;
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v145 objects:v163 count:16];
  v118 = v3;
  if (v7)
  {
    v8 = v7;
    v9 = *v146;
    v128 = v6;
    v130 = *v146;
    do
    {
      v10 = 0;
      do
      {
        if (*v146 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v145 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 appBundleIdentifier];
        v14 = [v132 containsObject:v13];

        if (v14)
        {
          v15 = MEMORY[0x277D42100];
          [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
          v16 = v15;
          v17 = v11;
          v18 = 22;
LABEL_10:
          v20 = [v16 outcomeWithSuggestion:v17 timestamp:v18 abuseControlOutcome:?];
          [context addObject:v20];
          goto LABEL_11;
        }

        if ([*(v136 + 32) _isSuggestionBlockedByDismiss:v11 withGuardedData:v3])
        {
          v19 = MEMORY[0x277D42100];
          [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
          v16 = v19;
          v17 = v11;
          v18 = 1;
          goto LABEL_10;
        }

        v21 = [v11 clientModelId];
        v22 = [v21 isEqualToString:v133];

        if (v22)
        {
          v23 = objc_alloc(MEMORY[0x277CCACA8]);
          v24 = [v11 widgetBundleIdentifier];
          v25 = [v11 widgetKind];
          v20 = [v23 initWithFormat:@"%@.%@", v24, v25];

          v26 = [v11 widgetBundleIdentifier];
          if ([v117 containsObject:v26])
          {

            v9 = v130;
LABEL_20:
            v36 = MEMORY[0x277D42100];
            [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
            v37 = [v36 outcomeWithSuggestion:v11 timestamp:2 abuseControlOutcome:?];
            [context addObject:v37];

            goto LABEL_11;
          }

          v35 = [v117 containsObject:v20];

          v9 = v130;
          if (v35)
          {
            goto LABEL_20;
          }

          v38 = [v11 sourceIdentifier];
          v39 = [v123 objectForKeyedSubscript:v38];

          v126 = v39;
          if (v39)
          {
            v40 = *(*(v136 + 32) + 32);
            v41 = [v39 suggestionIdentifier];
            v42 = [v40 rotationExistsForSuggestionWithId:v41 considerStalenessRotation:0];

            v43 = *(v136 + 32);
            v44 = *(v43 + 32);
            if (v42)
            {
              v45 = [v39 suggestionIdentifier];
              v46 = [v44 didSuggestionReachDurationLimit:v45];

              v47 = MEMORY[0x277D42100];
              [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
              v9 = v130;
              v3 = v118;
              if (v46)
              {
                v48 = v126;
                v49 = [v47 outcomeWithSuggestion:v126 timestamp:3 abuseControlOutcome:?];
                [context addObject:v49];

                v50 = [v11 sourceIdentifier];
                [v123 setObject:v11 forKeyedSubscript:v50];
              }

              else
              {
                v50 = [v47 outcomeWithSuggestion:v11 timestamp:4 abuseControlOutcome:?];
                [context addObject:v50];
                v48 = v126;
              }

              v6 = v128;
            }

            else
            {
              v48 = v39;
              v51 = [*(v43 + 32) firstTimeAtWhichSuggestionPassedTimelineFilters:v39];

              v6 = v128;
              v9 = v130;
              v3 = v118;
              if (v51)
              {
                v52 = MEMORY[0x277D42100];
                [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
                v53 = v52;
                v54 = v11;
                v55 = 4;
              }

              else
              {
                v56 = [v11 sourceIdentifier];
                [v123 setObject:v11 forKeyedSubscript:v56];

                v57 = MEMORY[0x277D42100];
                [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
                v53 = v57;
                v54 = v126;
                v55 = 5;
              }

              v50 = [v53 outcomeWithSuggestion:v54 timestamp:v55 abuseControlOutcome:?];
              [context addObject:v50];
            }
          }

          else
          {
            v50 = [v11 sourceIdentifier];
            [v123 setObject:v11 forKeyedSubscript:v50];
            v48 = 0;
            v3 = v118;
          }
        }

        else
        {
          [*(v136 + 32) _demoteFirstPartyDonatedSuggestionIfNecessary:v11];
          v27 = objc_alloc(MEMORY[0x277CCACA8]);
          v28 = [v11 widgetBundleIdentifier];
          v29 = [v11 widgetKind];
          v30 = [v11 layouts];
          v31 = [v11 intent];
          v20 = [v27 initWithFormat:@"%@.%@.%lu.%lld.%ld", v28, v29, v30, objc_msgSend(v31, "atx_indexingHash"), objc_msgSend(v11, "confidenceLevel")];

          v32 = [v119 objectForKeyedSubscript:v20];
          if (v32)
          {
            v33 = MEMORY[0x277D42100];
            [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
            v34 = [v33 outcomeWithSuggestion:v32 timestamp:5 abuseControlOutcome:?];
            [context addObject:v34];
          }

          [v119 setObject:v11 forKeyedSubscript:v20];

          v3 = v118;
          v6 = v128;
          v9 = v130;
        }

LABEL_11:

        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v8 != v10);
      v58 = [v6 countByEnumeratingWithState:&v145 objects:v163 count:16];
      v8 = v58;
    }

    while (v58);
  }

  v59 = *(v136 + 48);
  v60 = [v119 allValues];
  [v59 addObjectsFromArray:v60];

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v61 = [v123 allValues];
  v62 = [v61 countByEnumeratingWithState:&v141 objects:v162 count:16];
  if (!v62)
  {
    goto LABEL_60;
  }

  v63 = v62;
  v64 = *v142;
  v65 = *MEMORY[0x277CEBD00];
  do
  {
    v66 = 0;
    do
    {
      if (*v142 != v64)
      {
        objc_enumerationMutation(v61);
      }

      v67 = *(*(&v141 + 1) + 8 * v66);
      v68 = objc_autoreleasePoolPush();
      v69 = [v67 widgetBundleIdentifier];
      if (CFPreferencesGetAppBooleanValue(@"widgetKitDeveloperModeEnabled", @"com.apple.duetexpertd", 0))
      {
        keyExistsAndHasValidFormat[0] = 0;
        if (CFPreferencesGetAppBooleanValue(@"ATXWidgetKitDeveloperModeSkipEntitlementCheck", v65, keyExistsAndHasValidFormat))
        {

LABEL_44:
          v71 = __atxlog_handle_timeline();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
          {
            *keyExistsAndHasValidFormat = 0;
            _os_log_impl(&dword_2263AA000, v71, OS_LOG_TYPE_DEFAULT, "ATXInformationFilter: WidgetKit Developer Mode is enabled and debug is allowed for widget; bypassing abuse control", keyExistsAndHasValidFormat, 2u);
          }

          [*(v136 + 48) addObject:v67];
          v72 = MEMORY[0x277D42100];
          [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
          v73 = [v72 outcomeWithSuggestion:v67 timestamp:14 abuseControlOutcome:?];
          [context addObject:v73];

          goto LABEL_54;
        }

        v70 = [MEMORY[0x277CEB3B0] isDebuggingAllowedForExtensionBundleId:v69];

        if (v70)
        {
          goto LABEL_44;
        }
      }

      else
      {
      }

      if (([*(v136 + 32) _shouldBlockTimelineSuggestion:v67 updatingAbuseControlOutcomes:context] & 1) == 0)
      {
        v76 = [v67 endDate];
        v77 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:3153600000.0];
        v78 = [v76 isEqualToDate:v77];

        if (v78)
        {
          v79 = [v67 startDate];
          v80 = v136;
          v81 = [*(*(v136 + 32) + 40) defaultDurationForTimelineSuggestions];
          goto LABEL_52;
        }

LABEL_53:
        [*(v136 + 48) addObject:v67];
        goto LABEL_54;
      }

      v74 = [v67 relevanceScore];
      [v74 doubleValue];
      if (v75 < 2.22044605e-16)
      {

        goto LABEL_54;
      }

      v83 = [*(v136 + 32) stalenessRotationsAreEnabled:v67];

      if (v83)
      {
        [v67 setConfidenceLevel:1];
        v84 = [v67 endDate];
        v85 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:3153600000.0];
        v86 = [v84 isEqualToDate:v85];

        if (v86)
        {
          v79 = [v67 startDate];
          v80 = v136;
          v81 = [*(*(v136 + 32) + 40) defaultDurationForFallbackTimelineSuggestions];
LABEL_52:
          v82 = [v79 dateByAddingTimeInterval:v81];
          [v67 setEndDate:v82];

          [*(v80 + 56) addObject:v67];
        }

        goto LABEL_53;
      }

LABEL_54:
      objc_autoreleasePoolPop(v68);
      ++v66;
    }

    while (v63 != v66);
    v87 = [v61 countByEnumeratingWithState:&v141 objects:v162 count:16];
    v63 = v87;
  }

  while (v87);
LABEL_60:

  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  obj = context;
  v88 = [obj countByEnumeratingWithState:&v137 objects:v161 count:16];
  v89 = v117;
  v90 = v123;
  if (v88)
  {
    v91 = v88;
    v92 = 0;
    v93 = *v138;
    v120 = *v138;
    while (1)
    {
      v94 = 0;
      v121 = v91;
      do
      {
        if (*v138 != v93)
        {
          objc_enumerationMutation(obj);
        }

        v95 = *(*(&v137 + 1) + 8 * v94);
        contexta = objc_autoreleasePoolPush();
        v96 = [v95 suggestion];
        v97 = [v96 clientModelId];
        v98 = [v97 isEqualToString:v133];

        if (v98)
        {
          v99 = __atxlog_handle_timeline();

          v100 = *(*(v136 + 32) + 32);
          v101 = [v95 suggestion];
          v102 = [v101 suggestionIdentifier];
          v103 = [v100 mostRecentAbuseControlOutcomeForSuggestionId:v102];

          if (v103 == [v95 abuseControlOutcome])
          {
            goto LABEL_72;
          }

          v104 = __atxlog_handle_timeline();
          if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
          {
            *keyExistsAndHasValidFormat = 0;
            _os_log_impl(&dword_2263AA000, v104, OS_LOG_TYPE_DEFAULT, "ATXInformationFilter: Abuse Control Outcome for timeline suggestion has changed", keyExistsAndHasValidFormat, 2u);
          }

          v105 = *(*(v136 + 32) + 32);
          v92 = [v95 suggestion];
          v106 = [v92 suggestionIdentifier];
          [v95 timestamp];
          [v105 addAbuseControlOutcomeForSuggestion:v106 forTimestamp:v107 outcome:{objc_msgSend(v95, "abuseControlOutcome")}];
        }

        else
        {
          v99 = __atxlog_handle_gi();
        }

LABEL_72:
        v92 = v99;
        if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
        {
          v108 = v99;
          v129 = [v95 suggestion];
          v124 = [v129 suggestionIdentifier];
          v127 = [v95 suggestion];
          v109 = [v127 sourceIdentifier];
          v125 = [v95 suggestion];
          v110 = [v125 widgetBundleIdentifier];
          v111 = [v95 suggestion];
          [v111 startDate];
          v112 = v131 = v92;
          v113 = [v95 suggestion];
          v114 = [v113 endDate];
          v115 = [MEMORY[0x277D42100] descriptionForOutcome:{objc_msgSend(v95, "abuseControlOutcome")}];
          *keyExistsAndHasValidFormat = 138544642;
          v150 = v124;
          v151 = 2112;
          v152 = v109;
          v153 = 2112;
          v154 = v110;
          v155 = 2112;
          v156 = v112;
          v157 = 2112;
          v158 = v114;
          v159 = 2114;
          v160 = v115;
          _os_log_impl(&dword_2263AA000, v108, OS_LOG_TYPE_DEFAULT, "ATXInformationFilter: Abuse Control Outcome for timeline suggestion [suggestionId: %{public}@, src:%@, widget:%@, startDate:%@, endDate:%@] with reason: %{public}@.", keyExistsAndHasValidFormat, 0x3Eu);

          v91 = v121;
          v90 = v123;

          v92 = v131;
          v93 = v120;
        }

        objc_autoreleasePoolPop(contexta);
        ++v94;
      }

      while (v91 != v94);
      v91 = [obj countByEnumeratingWithState:&v137 objects:v161 count:16];
      if (!v91)
      {

        v89 = v117;
        break;
      }
    }
  }

  v116 = *MEMORY[0x277D85DE8];
}

- (BOOL)_canSuggestionPassAppLaunchCheck:(id)check
{
  appBundleIdentifier = [check appBundleIdentifier];
  v5 = [(NSCache *)self->_appLaunchCountsByBundleId objectForKey:appBundleIdentifier];
  if ([(ATXInformationFilter *)self _isFirstPartyApp:appBundleIdentifier])
  {
    v6 = 3.0;
  }

  else
  {
    v6 = 8.0;
  }

  if (v5 && ([v5 doubleValue], v7 >= v6) || (-[ATXInformationFilter _fetchAppLaunchCountForBundleId:](self, "_fetchAppLaunchCountForBundleId:", appBundleIdentifier), v8 = objc_claimAutoreleasedReturnValue(), v5, -[NSCache setObject:forKey:](self->_appLaunchCountsByBundleId, "setObject:forKey:", v8, appBundleIdentifier), (v5 = v8) != 0))
  {
    [v5 doubleValue];
    v10 = v9 >= v6;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_fetchAppLaunchCountForBundleId:(id)id
{
  v14[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  histogram = self->_histogram;
  if (!histogram)
  {
    v6 = +[_ATXAppLaunchHistogramManager sharedInstance];
    v7 = [v6 histogramForLaunchType:0];
    v8 = self->_histogram;
    self->_histogram = v7;

    histogram = self->_histogram;
  }

  v9 = MEMORY[0x277CCABB0];
  v14[0] = idCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [(_ATXAppLaunchHistogram *)histogram totalLaunchesForBundleIds:v10];
  v11 = [v9 numberWithDouble:?];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)_isFirstPartyApp:(id)app
{
  lowercaseString = [app lowercaseString];
  if ([MEMORY[0x277CEB3B8] isSystemAppForBundleId:lowercaseString])
  {
    v4 = 1;
  }

  else
  {
    v4 = [lowercaseString hasPrefix:@"com.apple."];
  }

  return v4;
}

- (void)_populateDismissRecordsCacheAsynchronously
{
  lock = self->_lock;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __66__ATXInformationFilter__populateDismissRecordsCacheAsynchronously__block_invoke;
  v3[3] = &unk_278597000;
  v3[4] = self;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v3];
}

void __66__ATXInformationFilter__populateDismissRecordsCacheAsynchronously__block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 32) readAllDismissRecords];
  v5 = v4;
  if (v4)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v22 + 1) + 8 * i);
          v11 = v3[1];
          v12 = [v10 widgetBundleId];
          v13 = [v11 objectForKeyedSubscript:v12];

          if (!v13)
          {
            v14 = objc_opt_new();
            v15 = v3[1];
            v16 = [v10 widgetBundleId];
            [v15 setObject:v14 forKeyedSubscript:v16];
          }

          v17 = v3[1];
          v18 = [v10 widgetBundleId];
          v19 = [v17 objectForKeyedSubscript:v18];
          [v19 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v20 = __atxlog_handle_gi();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __66__ATXInformationFilter__populateDismissRecordsCacheAsynchronously__block_invoke_cold_1();
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __66__ATXInformationFilter__removeExpiredDismissRecordsAsynchronously__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = v2[1];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__ATXInformationFilter__removeExpiredDismissRecordsAsynchronously__block_invoke_2;
  v6[3] = &unk_278597070;
  v7 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void __66__ATXInformationFilter__removeExpiredDismissRecordsAsynchronously__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_opt_new();
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __66__ATXInformationFilter__removeExpiredDismissRecordsAsynchronously__block_invoke_3;
  v10 = &unk_278597048;
  v11 = *(a1 + 32);
  v12 = v5;
  v6 = v5;
  [v4 enumerateObjectsUsingBlock:&v7];
  [v4 removeObjectsAtIndexes:{v6, v7, v8, v9, v10}];
}

void __66__ATXInformationFilter__removeExpiredDismissRecordsAsynchronously__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v14 = v5;
  v7 = [v5 blockWidgetUntilDate];
  v8 = [v6 laterDate:v7];
  v9 = v8;
  v10 = *(a1 + 32);
  if (v8 == v10)
  {
    v11 = [v14 blockCriterionUntilDate];
    v12 = [v10 laterDate:v11];
    v13 = *(a1 + 32);

    if (v12 == v13)
    {
      [*(a1 + 40) addIndex:a3];
    }
  }

  else
  {
  }
}

- (BOOL)_isSuggestionBlockedByDismiss:(id)dismiss withGuardedData:(id)data
{
  v32 = *MEMORY[0x277D85DE8];
  dismissCopy = dismiss;
  v6 = *(data + 1);
  v26 = dismissCopy;
  widgetBundleIdentifier = [dismissCopy widgetBundleIdentifier];
  v8 = [v6 objectForKeyedSubscript:widgetBundleIdentifier];

  if (v8)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v11)
    {
      v25 = v8;
      v12 = *v28;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          blockWidgetUntilDate = [v14 blockWidgetUntilDate];
          v16 = [date earlierDate:blockWidgetUntilDate];

          if (v16 == date)
          {
LABEL_14:
            LOBYTE(v11) = 1;
            goto LABEL_15;
          }

          blockCriterionUntilDate = [v14 blockCriterionUntilDate];
          v18 = [date earlierDate:blockCriterionUntilDate];
          v19 = v18;
          if (v18 == date)
          {
            criterion = [v26 criterion];
            criterion2 = [v14 criterion];
            v22 = [criterion isEqualToString:criterion2];

            if (v22)
            {
              goto LABEL_14;
            }
          }

          else
          {
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

LABEL_15:
      v8 = v25;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)_demoteFirstPartyDonatedSuggestionIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  appBundleIdentifier = [necessaryCopy appBundleIdentifier];
  if ([appBundleIdentifier isEqualToString:@"com.apple.mobileslideshow"])
  {
  }

  else
  {
    appBundleIdentifier2 = [necessaryCopy appBundleIdentifier];
    v6 = [appBundleIdentifier2 isEqualToString:@"com.apple.news"];

    if (!v6)
    {
      goto LABEL_6;
    }
  }

  store = self->_store;
  suggestionIdentifier = [necessaryCopy suggestionIdentifier];
  LODWORD(store) = [(ATXInformationStore *)store didSuggestionReachDurationLimit:suggestionIdentifier];

  if (store)
  {
    [necessaryCopy setConfidenceLevel:1];
  }

LABEL_6:
}

- (BOOL)shouldDisableRandomization:(id)randomization
{
  randomizationCopy = randomization;
  abuseControlConfig = self->_abuseControlConfig;
  widgetBundleIdentifier = [randomizationCopy widgetBundleIdentifier];
  widgetKind = [randomizationCopy widgetKind];
  v8 = [(ATXTimelineAbuseControlConfig *)abuseControlConfig randomizationDisabledForWidgetWithIdentifier:widgetBundleIdentifier kind:widgetKind];

  if (v8)
  {
    store = self->_store;
    widgetBundleIdentifier2 = [randomizationCopy widgetBundleIdentifier];
    widgetKind2 = [randomizationCopy widgetKind];
    v12 = [(ATXInformationStore *)store distinctScoresForWidget:widgetBundleIdentifier2 kind:widgetKind2];

    if ([v12 count] < 2)
    {
      LOBYTE(v8) = 0;
    }

    else
    {
      relevanceScore = [randomizationCopy relevanceScore];
      v14 = [v12 objectAtIndexedSubscript:0];
      v8 = [relevanceScore isEqualToNumber:v14] ^ 1;
    }
  }

  return v8;
}

- (BOOL)stalenessRotationsAreEnabled:(id)enabled
{
  v18 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  abuseControlConfig = self->_abuseControlConfig;
  widgetBundleIdentifier = [enabledCopy widgetBundleIdentifier];
  widgetKind = [enabledCopy widgetKind];
  v8 = [(ATXTimelineAbuseControlConfig *)abuseControlConfig stalenessDisabledForWidgetWithIdentifier:widgetBundleIdentifier kind:widgetKind];

  if (v8)
  {
    v9 = __atxlog_handle_timeline();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      widgetBundleIdentifier2 = [enabledCopy widgetBundleIdentifier];
      widgetKind2 = [enabledCopy widgetKind];
      v14 = 138412546;
      v15 = widgetBundleIdentifier2;
      v16 = 2112;
      v17 = widgetKind2;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "ATXInformationFilter: Staleness rotations are not enabled for widget with bundleId: %@, widget kind: %@", &v14, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return !v8;
}

- (int64_t)_numberOfSeenRotationsForSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  widgetBundleIdentifier = [suggestionCopy widgetBundleIdentifier];
  widgetKind = [suggestionCopy widgetKind];
  intent = [suggestionCopy intent];

  v8 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:19];
  v9 = [(ATXInformationFilter *)self numberOfSeenRotationsForWidget:widgetBundleIdentifier kind:widgetKind intent:intent filterByClientModelId:v8];

  return v9;
}

- (int64_t)numberOfSeenRotationsForWidget:(id)widget kind:(id)kind intent:(id)intent filterByClientModelId:(id)id
{
  v41 = *MEMORY[0x277D85DE8];
  widgetCopy = widget;
  kindCopy = kind;
  intentCopy = intent;
  idCopy = id;
  v14 = [(ATXInformationStore *)self->_store engagementTimestampsForExtensionBundleId:widgetCopy kind:kindCopy intent:intentCopy engagementType:3];
  if ([v14 count])
  {
    v32 = kindCopy;
    v33 = widgetCopy;
    v30 = idCopy;
    v31 = intentCopy;
    [(ATXInformationStore *)self->_store proactiveRotationsForWidgetInThePastDay:widgetCopy kind:kindCopy intent:intentCopy filterByClientModelId:idCopy];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v39 = 0u;
    v15 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v34 = 0;
      v18 = *v37;
LABEL_4:
      v19 = 0;
      while (1)
      {
        if (*v37 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v36 + 1) + 8 * v19);
        if (v17 >= [v14 count])
        {
          break;
        }

        rotationDate = [v20 rotationDate];
        [v20 durationLimit];
        v22 = [rotationDate dateByAddingTimeInterval:?];
        while (1)
        {

          if (v17 >= [v14 count])
          {
            break;
          }

          rotationDate = [v14 objectAtIndexedSubscript:v17];
          rotationDate2 = [v20 rotationDate];
          v24 = [rotationDate2 earlierDate:rotationDate];

          if (v24 != rotationDate)
          {
            v25 = [rotationDate earlierDate:v22];

            v26 = v34;
            if (v25 == rotationDate)
            {
              v26 = v34 + 1;
            }

            v34 = v26;

            break;
          }

          ++v17;
        }

        if (++v19 == v16)
        {
          v16 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
          if (v16)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      v34 = 0;
    }

    kindCopy = v32;
    widgetCopy = v33;
    idCopy = v30;
    intentCopy = v31;
    v27 = v34;
  }

  else
  {
    v27 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (BOOL)_shouldBlockTimelineSuggestion:(id)suggestion updatingAbuseControlOutcomes:(id)outcomes
{
  v164 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  outcomesCopy = outcomes;
  relevanceScore = [suggestionCopy relevanceScore];

  if (!relevanceScore)
  {
    v17 = __atxlog_handle_timeline();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [ATXInformationFilter _shouldBlockTimelineSuggestion:updatingAbuseControlOutcomes:];
    }

    v18 = MEMORY[0x277D42100];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v19 = [v18 outcomeWithSuggestion:suggestionCopy timestamp:7 abuseControlOutcome:?];
    [outcomesCopy addObject:v19];

    goto LABEL_12;
  }

  relevanceScore2 = [suggestionCopy relevanceScore];
  [relevanceScore2 doubleValue];
  v9 = v8;

  if (v9 <= 0.0)
  {
    v20 = __atxlog_handle_timeline();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [ATXInformationFilter _shouldBlockTimelineSuggestion:updatingAbuseControlOutcomes:];
    }

    v21 = MEMORY[0x277D42100];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v22 = [v21 outcomeWithSuggestion:suggestionCopy timestamp:8 abuseControlOutcome:?];
    [outcomesCopy addObject:v22];

    goto LABEL_12;
  }

  store = self->_store;
  suggestionIdentifier = [suggestionCopy suggestionIdentifier];
  LODWORD(store) = [(ATXInformationStore *)store rotationExistsForSuggestionWithId:suggestionIdentifier considerStalenessRotation:0];

  v12 = self->_store;
  if (!store)
  {
    v26 = [(ATXInformationStore *)self->_store firstTimeAtWhichSuggestionPassedTimelineFilters:suggestionCopy];

    if (v26)
    {
      v27 = __atxlog_handle_timeline();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        suggestionIdentifier2 = [suggestionCopy suggestionIdentifier];
        *buf = 138412290;
        *&buf[4] = suggestionIdentifier2;
        _os_log_impl(&dword_2263AA000, v27, OS_LOG_TYPE_DEFAULT, "TimelineFilter: suggestion %@ passed (suggestion has passed before and haven't been rotated to)", buf, 0xCu);
      }

      v29 = MEMORY[0x277D42100];
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v30 = [v29 outcomeWithSuggestion:suggestionCopy timestamp:17 abuseControlOutcome:?];
      [outcomesCopy addObject:v30];

      goto LABEL_21;
    }

    v137 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:19];
    widgetBundleIdentifier = [suggestionCopy widgetBundleIdentifier];
    widgetKind = [suggestionCopy widgetKind];
    intent = [suggestionCopy intent];
    v135 = [(ATXInformationFilter *)self numberOfSeenRotationsForWidget:widgetBundleIdentifier kind:widgetKind intent:intent filterByClientModelId:v137];

    abuseControlConfig = self->_abuseControlConfig;
    widgetBundleIdentifier2 = [suggestionCopy widgetBundleIdentifier];
    widgetKind2 = [suggestionCopy widgetKind];
    v41 = [(ATXTimelineAbuseControlConfig *)abuseControlConfig hardRotationQuotaForWidgetWithIdentifier:widgetBundleIdentifier2 kind:widgetKind2];

    if ((v41 & 0x8000000000000000) == 0 && v135 >= v41)
    {
      v42 = MEMORY[0x277D42100];
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v43 = [v42 outcomeWithSuggestion:suggestionCopy timestamp:9 abuseControlOutcome:?];
      [outcomesCopy addObject:v43];

      v23 = 1;
LABEL_78:

      goto LABEL_13;
    }

    v44 = self->_store;
    widgetBundleIdentifier3 = [suggestionCopy widgetBundleIdentifier];
    widgetKind3 = [suggestionCopy widgetKind];
    intent2 = [suggestionCopy intent];
    v136 = [(ATXInformationStore *)v44 mostRecentRotationRecordForWidget:widgetBundleIdentifier3 kind:widgetKind3 intent:intent2 considerStalenessRotation:0 filterByClientModelId:v137];

    if (v136)
    {
      v48 = [MEMORY[0x277CBEAA8] now];
      rotationDate = [v136 rotationDate];
      [v48 timeIntervalSinceDate:rotationDate];
      v51 = v50;

      criterion = [suggestionCopy criterion];
      criterion2 = [v136 criterion];
      v54 = [criterion isEqualToString:criterion2];

      if (v54)
      {
        [v136 durationLimit];
        if (v55 < v51)
        {
          [v136 coolDownInterval];
          if (v51 < v56)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        [v136 coolDownInterval];
        if (v51 < v57)
        {
LABEL_31:
          v58 = MEMORY[0x277D42100];
          [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
          v59 = [v58 outcomeWithSuggestion:suggestionCopy timestamp:10 abuseControlOutcome:?];
          [outcomesCopy addObject:v59];

          v23 = 1;
LABEL_77:

          goto LABEL_78;
        }
      }
    }

    v60 = self->_abuseControlConfig;
    widgetBundleIdentifier4 = [suggestionCopy widgetBundleIdentifier];
    widgetKind4 = [suggestionCopy widgetKind];
    v63 = [(ATXTimelineAbuseControlConfig *)v60 softRotationQuotaForWidgetWithIdentifier:widgetBundleIdentifier4 kind:widgetKind4];

    if (v63 < 0)
    {
      v71 = __atxlog_handle_timeline();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        suggestionIdentifier3 = [suggestionCopy suggestionIdentifier];
        *buf = 138412290;
        *&buf[4] = suggestionIdentifier3;
        _os_log_impl(&dword_2263AA000, v71, OS_LOG_TYPE_DEFAULT, "TimelineFilter: suggestion %@ passed (unlimited soft rotation quota)", buf, 0xCu);
      }

      [(ATXInformationStore *)self->_store recordSuggestionPassedTimelineFiltersForTheFirstTime:suggestionCopy];
      v73 = MEMORY[0x277D42100];
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v74 = [v73 outcomeWithSuggestion:suggestionCopy timestamp:15 abuseControlOutcome:?];
      [outcomesCopy addObject:v74];

      v23 = 0;
      goto LABEL_77;
    }

    v133 = v63;
    v64 = self->_store;
    widgetBundleIdentifier5 = [suggestionCopy widgetBundleIdentifier];
    widgetKind5 = [suggestionCopy widgetKind];
    v67 = [objc_opt_class() chsFamilyForTimelineRelevanceSuggestionLayoutOptions:{objc_msgSend(suggestionCopy, "layouts")}];
    intent3 = [suggestionCopy intent];
    v134 = [(ATXInformationStore *)v64 recentRelevantTimelineEntriesOrderedByDescendingScoreForWidget:widgetBundleIdentifier5 kind:widgetKind5 family:v67 intent:intent3];

    if ([v134 count] <= 9)
    {
      v69 = MEMORY[0x277D42100];
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v70 = [v69 outcomeWithSuggestion:suggestionCopy timestamp:11 abuseControlOutcome:?];
      [outcomesCopy addObject:v70];

      v23 = 1;
LABEL_76:

      goto LABEL_77;
    }

    firstObject = [v134 firstObject];
    date = [firstObject date];

    v77 = date;
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    v78 = v134;
    v79 = [v78 countByEnumeratingWithState:&v149 objects:v163 count:16];
    if (v79)
    {
      v80 = *v150;
      v81 = v77;
      do
      {
        v82 = 0;
        v83 = v77;
        v84 = v81;
        do
        {
          if (*v150 != v80)
          {
            objc_enumerationMutation(v78);
          }

          v85 = *(*(&v149 + 1) + 8 * v82);
          date2 = [v85 date];
          v81 = [date2 earlierDate:v84];

          date3 = [v85 date];
          v77 = [date3 laterDate:v83];

          ++v82;
          v83 = v77;
          v84 = v81;
        }

        while (v79 != v82);
        v79 = [v78 countByEnumeratingWithState:&v149 objects:v163 count:16];
      }

      while (v79);
    }

    else
    {
      v81 = v77;
    }

    [v77 timeIntervalSinceDate:v81];
    v89 = v88 / 86400.0;
    v90 = v88 / 86400.0 < 1.0;
    v91 = [v78 count];
    if (v90)
    {
      v92 = 1.0;
    }

    else
    {
      v92 = v89;
    }

    v93 = v91 / v92;
    v94 = v133 / v93;
    if (v94 >= 1.0)
    {
      v108 = __atxlog_handle_timeline();
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
      {
        suggestionIdentifier4 = [suggestionCopy suggestionIdentifier];
        *buf = 138412802;
        *&buf[4] = suggestionIdentifier4;
        *&buf[12] = 2048;
        *&buf[14] = v93;
        *&buf[22] = 2048;
        v160 = v133;
        _os_log_impl(&dword_2263AA000, v108, OS_LOG_TYPE_DEFAULT, "TimelineFilter: suggestion %@ passed (avgNumEntryPerDay %f < softRotationQuota %ld)", buf, 0x20u);
      }

      v110 = MEMORY[0x277D42100];
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v111 = [v110 outcomeWithSuggestion:suggestionCopy timestamp:16 abuseControlOutcome:?];
      [outcomesCopy addObject:v111];

      [(ATXInformationStore *)self->_store recordSuggestionPassedTimelineFiltersForTheFirstTime:suggestionCopy];
    }

    else
    {
      v95 = [v78 count];
      relevanceScore3 = [suggestionCopy relevanceScore];
      [relevanceScore3 doubleValue];
      v98 = v97;

      v99 = (v94 * v95);
      v100 = [v78 objectAtIndexedSubscript:v99];
      relevance = [v100 relevance];
      [relevance score];
      v103 = v102;

      if (v98 - v103 <= 2.22044605e-16)
      {
        if (v103 - v98 <= 2.22044605e-16)
        {
          if ([(ATXInformationFilter *)self shouldDisableRandomization:suggestionCopy, v103 - v98])
          {
            v116 = MEMORY[0x277D42100];
            [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
            v117 = [v116 outcomeWithSuggestion:suggestionCopy timestamp:23 abuseControlOutcome:?];
            [outcomesCopy addObject:v117];
          }

          else
          {
            if (v135 < v133)
            {
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2020000000;
              v160 = [v78 count];
              v145 = 0;
              v146 = &v145;
              v147 = 0x2020000000;
              v148 = 0;
              v140[0] = MEMORY[0x277D85DD0];
              v140[1] = 3221225472;
              v140[2] = __84__ATXInformationFilter__shouldBlockTimelineSuggestion_updatingAbuseControlOutcomes___block_invoke;
              v140[3] = &unk_278597098;
              v144 = v103;
              v142 = &v145;
              v143 = buf;
              v141 = v78;
              [v141 enumerateObjectsUsingBlock:v140];
              v118 = (v99 - *(*&buf[8] + 24) + 1) / v146[3];
              v119 = v118 + arc4random_uniform(0xFFFFFFFF) / -4294967300.0;
              v23 = v119 <= 2.22044605e-16;
              if (v119 <= 2.22044605e-16)
              {
                v120 = __atxlog_handle_timeline();
                if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
                {
                  suggestionIdentifier5 = [suggestionCopy suggestionIdentifier];
                  *v153 = 138412802;
                  v154 = suggestionIdentifier5;
                  v155 = 2048;
                  v156 = v98;
                  v157 = 2048;
                  v158 = v118;
                  _os_log_impl(&dword_2263AA000, v120, OS_LOG_TYPE_DEFAULT, "Suggestion %@ failed relevance score test (score == threshold == %f, bad luck with probability %f)", v153, 0x20u);
                }

                v122 = MEMORY[0x277D42100];
                [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
                v123 = [v122 outcomeWithSuggestion:suggestionCopy timestamp:13 abuseControlOutcome:?];
                [outcomesCopy addObject:v123];
              }

              else
              {
                v128 = __atxlog_handle_timeline();
                if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
                {
                  suggestionIdentifier6 = [suggestionCopy suggestionIdentifier];
                  *v153 = 138412802;
                  v154 = suggestionIdentifier6;
                  v155 = 2048;
                  v156 = v98;
                  v157 = 2048;
                  v158 = v118;
                  _os_log_impl(&dword_2263AA000, v128, OS_LOG_TYPE_DEFAULT, "TimelineFilter: suggestion %@ passed (score == threshold == %f, good luck with probability %f)", v153, 0x20u);
                }

                v131 = MEMORY[0x277D42100];
                [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
                v132 = [v131 outcomeWithSuggestion:suggestionCopy timestamp:20 abuseControlOutcome:?];
                [outcomesCopy addObject:v132];

                [(ATXInformationStore *)self->_store recordSuggestionPassedTimelineFiltersForTheFirstTime:suggestionCopy];
              }

              _Block_object_dispose(&v145, 8);
              _Block_object_dispose(buf, 8);
              goto LABEL_75;
            }

            v124 = __atxlog_handle_timeline();
            if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
            {
              suggestionIdentifier7 = [suggestionCopy suggestionIdentifier];
              *buf = 138413058;
              *&buf[4] = suggestionIdentifier7;
              *&buf[12] = 2048;
              *&buf[14] = v98;
              *&buf[22] = 2048;
              v160 = v135;
              v161 = 2048;
              v162 = v133;
              _os_log_impl(&dword_2263AA000, v124, OS_LOG_TYPE_DEFAULT, "Suggestion %@ failed relevance score test (score == threshold == %f, but numRotation %ld >= softRotationQuota %ld)", buf, 0x2Au);
            }

            v126 = MEMORY[0x277D42100];
            [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
            v127 = [v126 outcomeWithSuggestion:suggestionCopy timestamp:6 abuseControlOutcome:?];
            [outcomesCopy addObject:v127];
          }
        }

        else
        {
          v112 = __atxlog_handle_timeline();
          if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
          {
            suggestionIdentifier8 = [suggestionCopy suggestionIdentifier];
            *buf = 138412802;
            *&buf[4] = suggestionIdentifier8;
            *&buf[12] = 2048;
            *&buf[14] = v98;
            *&buf[22] = 2048;
            v160 = *&v103;
            _os_log_impl(&dword_2263AA000, v112, OS_LOG_TYPE_DEFAULT, "Suggestion %@ failed relevance score test (score %f < threshold %f)", buf, 0x20u);
          }

          v114 = MEMORY[0x277D42100];
          [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
          v115 = [v114 outcomeWithSuggestion:suggestionCopy timestamp:12 abuseControlOutcome:?];
          [outcomesCopy addObject:v115];
        }

        v23 = 1;
LABEL_75:

        goto LABEL_76;
      }

      v104 = __atxlog_handle_timeline();
      if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
      {
        suggestionIdentifier9 = [suggestionCopy suggestionIdentifier];
        *buf = 138412802;
        *&buf[4] = suggestionIdentifier9;
        *&buf[12] = 2048;
        *&buf[14] = v98;
        *&buf[22] = 2048;
        v160 = *&v103;
        _os_log_impl(&dword_2263AA000, v104, OS_LOG_TYPE_DEFAULT, "TimelineFilter: suggestion %@ passed (score %f > threshold %f)", buf, 0x20u);
      }

      v106 = MEMORY[0x277D42100];
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v107 = [v106 outcomeWithSuggestion:suggestionCopy timestamp:19 abuseControlOutcome:?];
      [outcomesCopy addObject:v107];

      [(ATXInformationStore *)self->_store recordSuggestionPassedTimelineFiltersForTheFirstTime:suggestionCopy];
    }

    v23 = 0;
    goto LABEL_75;
  }

  suggestionIdentifier10 = [suggestionCopy suggestionIdentifier];
  v14 = [(ATXInformationStore *)v12 didSuggestionReachDurationLimit:suggestionIdentifier10];

  if (!v14)
  {
    v31 = __atxlog_handle_timeline();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      suggestionIdentifier11 = [suggestionCopy suggestionIdentifier];
      *buf = 138412290;
      *&buf[4] = suggestionIdentifier11;
      _os_log_impl(&dword_2263AA000, v31, OS_LOG_TYPE_DEFAULT, "TimelineFilter: suggestion %@ passed (rotation for this suggestion exists and is within duration limit)", buf, 0xCu);
    }

    v33 = MEMORY[0x277D42100];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v34 = [v33 outcomeWithSuggestion:suggestionCopy timestamp:18 abuseControlOutcome:?];
    [outcomesCopy addObject:v34];

LABEL_21:
    v23 = 0;
    goto LABEL_13;
  }

  v15 = MEMORY[0x277D42100];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v16 = [v15 outcomeWithSuggestion:suggestionCopy timestamp:3 abuseControlOutcome:?];
  [outcomesCopy addObject:v16];

LABEL_12:
  v23 = 1;
LABEL_13:

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

void __84__ATXInformationFilter__shouldBlockTimelineSuggestion_updatingAbuseControlOutcomes___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  v7 = [v16 relevance];
  [v7 score];
  v9 = v8;
  v10 = *(a1 + 56);

  if (v9 == v10)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
    v11 = *(*(*(a1 + 48) + 8) + 24);
    if (v11 == [*(a1 + 32) count])
    {
      *(*(*(a1 + 48) + 8) + 24) = a3;
    }
  }

  v12 = [v16 relevance];
  [v12 score];
  v14 = v13;
  v15 = *(a1 + 56);

  if (v14 < v15)
  {
    *a4 = 1;
  }
}

+ (int64_t)chsFamilyForTimelineRelevanceSuggestionLayoutOptions:(unint64_t)options
{
  if (options > 63)
  {
    if (options == 64)
    {
      return 3;
    }

    if (options == 128)
    {
      return 4;
    }
  }

  else
  {
    if (options == 8)
    {
      return 1;
    }

    if (options == 16)
    {
      return 2;
    }
  }

  v4 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    +[ATXInformationFilter chsFamilyForTimelineRelevanceSuggestionLayoutOptions:];
  }

  return 0;
}

void __88__ATXInformationFilter_recordDismissOfSuggestion_isDismissalLongTerm_completionHandler___block_invoke_cold_1(id *a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [*a1 widgetBundleIdentifier];
  v5 = [*a1 criterion];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXInformationFilter: failed to insert dismiss record (widget %@, criterion %@) into DB.", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)filterInfoSuggestions:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 40) timelineRelevanceABGroup];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "ATXInformationFilter: Enrolled in AB group '%@'", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end