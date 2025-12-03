@interface ATXDailyRoutinesPersonalizationManager
+ (id)_filterActions:(id)actions havingCounts:(id)counts includeBundleIds:(id)ids excludeBundleIds:(id)bundleIds includeActionTypes:(id)types excludeActionTypes:(id)actionTypes havingMinOccurrences:(unint64_t)occurrences;
+ (id)_filterUnpackedActions:(id)actions;
+ (id)_rankActions:(id)actions havingCounts:(id)counts;
+ (id)_unpackMostFrequentActionParameters:(id)parameters havingCounts:(id)counts limit:(unint64_t)limit;
+ (id)sharedInstance;
- (ATXDailyRoutinesPersonalizationManager)init;
- (ATXDailyRoutinesPersonalizationManager)initWithFakeActions:(id)actions loiManager:(id)manager;
- (BOOL)_allRequiredActionTypesPresent:(id)present minOccurrences:(unint64_t)occurrences forContext:(id)context;
- (BOOL)_enoughActionHistory;
- (BOOL)shouldDisplayDailyRoutineForContext:(id)context;
- (id)_getMostFrequentActionsForContext:(id)context includeBundleIds:(id)ids excludeBundleIds:(id)bundleIds includeActionTypes:(id)types excludeActionTypes:(id)actionTypes minOccurrences:(unint64_t)occurrences limit:(unint64_t)limit;
- (id)getActionPredictionsForContext:(id)context includeBundleIds:(id)ids excludeBundleIds:(id)bundleIds includeActionTypes:(id)types excludeActionTypes:(id)actionTypes limit:(unint64_t)limit;
@end

@implementation ATXDailyRoutinesPersonalizationManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ATXDailyRoutinesPersonalizationManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__pasOnceToken7_17 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken7_17, block);
  }

  v2 = sharedInstance__pasExprOnceResult_21;

  return v2;
}

void __56__ATXDailyRoutinesPersonalizationManager_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = sharedInstance__pasExprOnceResult_21;
  sharedInstance__pasExprOnceResult_21 = v4;

  objc_autoreleasePoolPop(v2);
}

- (BOOL)shouldDisplayDailyRoutineForContext:(id)context
{
  v16 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = __atxlog_handle_dailyroutines();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    contextType = [contextCopy contextType];
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Daily routines feasibility for context type %lu requested", &v14, 0xCu);
  }

  if (![(ATXDailyRoutinesPersonalizationManager *)self _enoughActionHistory])
  {
    v8 = __atxlog_handle_dailyroutines();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_12:
      LOBYTE(v10) = 0;
      goto LABEL_21;
    }

    LOWORD(v14) = 0;
    v9 = "Not enough action history for requested context";
LABEL_11:
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, v9, &v14, 2u);
    goto LABEL_12;
  }

  contextType2 = [contextCopy contextType];
  if (contextType2)
  {
    if (contextType2 == 1)
    {
      if (([(ATXLocationOfInterestManagerProtocol *)self->_loiManager isAvailableLocationOfInterestType:0]& 1) == 0)
      {
LABEL_15:
        v8 = __atxlog_handle_dailyroutines();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_12;
        }

        LOWORD(v14) = 0;
        v9 = "LOI does not exist for requested context";
        goto LABEL_11;
      }

      v7 = &unk_283A58868;
    }

    else
    {
      if (contextType2 == 2)
      {
        if (([(ATXLocationOfInterestManagerProtocol *)self->_loiManager isAvailableLocationOfInterestType:1]& 1) != 0)
        {
          v7 = &unk_283A58880;
          goto LABEL_19;
        }

        goto LABEL_15;
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = &unk_283A58898;
  }

LABEL_19:
  v11 = +[_ATXGlobals sharedInstance];
  v10 = -[ATXDailyRoutinesPersonalizationManager _allRequiredActionTypesPresent:minOccurrences:forContext:](self, "_allRequiredActionTypesPresent:minOccurrences:forContext:", v7, [v11 personalizationRequiredCountForRelevance], contextCopy);

  v8 = __atxlog_handle_dailyroutines();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 67109120;
    LODWORD(contextType) = v10;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "Action requirements met: %{BOOL}d", &v14, 8u);
  }

LABEL_21:

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)getActionPredictionsForContext:(id)context includeBundleIds:(id)ids excludeBundleIds:(id)bundleIds includeActionTypes:(id)types excludeActionTypes:(id)actionTypes limit:(unint64_t)limit
{
  v34 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  idsCopy = ids;
  bundleIdsCopy = bundleIds;
  typesCopy = types;
  actionTypesCopy = actionTypes;
  v17 = __atxlog_handle_dailyroutines();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    contextType = [contextCopy contextType];
    _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_INFO, "Predictions for context type %lu requested", buf, 0xCu);
  }

  if (idsCopy)
  {
    v18 = [MEMORY[0x277CBEB98] setWithArray:idsCopy];
    if (bundleIdsCopy)
    {
LABEL_5:
      v19 = [MEMORY[0x277CBEB98] setWithArray:bundleIdsCopy];
      goto LABEL_8;
    }
  }

  else
  {
    v18 = 0;
    if (bundleIdsCopy)
    {
      goto LABEL_5;
    }
  }

  v19 = 0;
LABEL_8:
  v31 = bundleIdsCopy;
  if (typesCopy)
  {
    v20 = [MEMORY[0x277CBEB98] setWithArray:typesCopy];
  }

  else
  {
    v20 = 0;
  }

  v21 = idsCopy;
  v22 = contextCopy;
  if (actionTypesCopy)
  {
    v23 = [MEMORY[0x277CBEB98] setWithArray:actionTypesCopy];
  }

  else
  {
    v23 = 0;
  }

  v24 = +[_ATXGlobals sharedInstance];
  v25 = -[ATXDailyRoutinesPersonalizationManager _getMostFrequentActionsForContext:includeBundleIds:excludeBundleIds:includeActionTypes:excludeActionTypes:minOccurrences:limit:](self, "_getMostFrequentActionsForContext:includeBundleIds:excludeBundleIds:includeActionTypes:excludeActionTypes:minOccurrences:limit:", v22, v18, v19, v20, v23, [v24 personalizationRequiredCountForRelevance], limit);

  v26 = [objc_alloc(MEMORY[0x277CEB2F0]) initWithScoredActions:v25 cacheFileData:0 consumerSubType:0 error:0];
  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (ATXDailyRoutinesPersonalizationManager)init
{
  v8.receiver = self;
  v8.super_class = ATXDailyRoutinesPersonalizationManager;
  v2 = [(ATXDailyRoutinesPersonalizationManager *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    actionManager = v2->_actionManager;
    v2->_actionManager = v3;

    mEMORY[0x277D41BF8] = [MEMORY[0x277D41BF8] sharedInstance];
    loiManager = v2->_loiManager;
    v2->_loiManager = mEMORY[0x277D41BF8];
  }

  return v2;
}

- (ATXDailyRoutinesPersonalizationManager)initWithFakeActions:(id)actions loiManager:(id)manager
{
  actionsCopy = actions;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = ATXDailyRoutinesPersonalizationManager;
  v8 = [(ATXDailyRoutinesPersonalizationManager *)&v12 init];
  if (v8)
  {
    v9 = [[ATXContextualActionManager alloc] initWithStaticActions:actionsCopy];
    actionManager = v8->_actionManager;
    v8->_actionManager = v9;

    objc_storeStrong(&v8->_loiManager, manager);
  }

  return v8;
}

- (id)_getMostFrequentActionsForContext:(id)context includeBundleIds:(id)ids excludeBundleIds:(id)bundleIds includeActionTypes:(id)types excludeActionTypes:(id)actionTypes minOccurrences:(unint64_t)occurrences limit:(unint64_t)limit
{
  v56 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  idsCopy = ids;
  bundleIdsCopy = bundleIds;
  typesCopy = types;
  actionTypesCopy = actionTypes;
  timeWindow = [contextCopy timeWindow];

  if (timeWindow)
  {
    v20 = __atxlog_handle_dailyroutines();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [ATXDailyRoutinesPersonalizationManager _getMostFrequentActionsForContext:v20 includeBundleIds:? excludeBundleIds:? includeActionTypes:? excludeActionTypes:? minOccurrences:? limit:?];
    }
  }

  v21 = [(ATXContextualActionManager *)self->_actionManager getCountsForContext:contextCopy];
  v22 = objc_opt_class();
  allObjects = [v21 allObjects];
  v50 = idsCopy;
  v24 = [v22 _filterActions:allObjects havingCounts:v21 includeBundleIds:idsCopy excludeBundleIds:bundleIdsCopy includeActionTypes:typesCopy excludeActionTypes:actionTypesCopy havingMinOccurrences:occurrences];

  v25 = [objc_opt_class() _unpackMostFrequentActionParameters:v24 havingCounts:v21 limit:limit];
  v26 = __atxlog_handle_dailyroutines();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v55 = [v25 count];
    _os_log_impl(&dword_2263AA000, v26, OS_LOG_TYPE_INFO, "Found %lu actions for requested context", buf, 0xCu);
  }

  if ([contextCopy contextType] && objc_msgSend(v25, "count") < limit)
  {
    v47 = limit - [v25 count];
    [(ATXContextualActionManager *)self->_actionManager getAllCounts];
    v28 = v27 = v24;
    allObjects2 = [v28 allObjects];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __169__ATXDailyRoutinesPersonalizationManager__getMostFrequentActionsForContext_includeBundleIds_excludeBundleIds_includeActionTypes_excludeActionTypes_minOccurrences_limit___block_invoke;
    v52[3] = &unk_27859D2D8;
    v48 = v27;
    v53 = v27;
    [allObjects2 _pas_filteredArrayWithTest:v52];
    v30 = actionTypesCopy;
    v32 = v31 = typesCopy;

    v33 = objc_opt_class();
    v49 = v32;
    v34 = v32;
    typesCopy = v31;
    actionTypesCopy = v30;
    v35 = [v33 _filterActions:v34 havingCounts:v28 includeBundleIds:v50 excludeBundleIds:bundleIdsCopy includeActionTypes:typesCopy excludeActionTypes:v30 havingMinOccurrences:occurrences];
    v36 = [objc_opt_class() _unpackMostFrequentActionParameters:v35 havingCounts:v28 limit:v47];
    v37 = __atxlog_handle_dailyroutines();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = [v36 count];
      *buf = 134217984;
      v55 = v38;
      _os_log_impl(&dword_2263AA000, v37, OS_LOG_TYPE_INFO, "Found %lu additional actions to suggest", buf, 0xCu);
    }

    v39 = [v25 arrayByAddingObjectsFromArray:v36];

    v25 = v39;
    v24 = v48;
  }

  if ([v25 count])
  {
    v40 = 0;
    v41 = 0;
    do
    {
      v42 = ([v25 count] + v40);
      v43 = [v25 objectAtIndexedSubscript:v41];
      *&v44 = v42;
      [v43 setScore:v44];

      ++v41;
      --v40;
    }

    while (v41 < [v25 count]);
  }

  v45 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)_filterActions:(id)actions havingCounts:(id)counts includeBundleIds:(id)ids excludeBundleIds:(id)bundleIds includeActionTypes:(id)types excludeActionTypes:(id)actionTypes havingMinOccurrences:(unint64_t)occurrences
{
  countsCopy = counts;
  idsCopy = ids;
  bundleIdsCopy = bundleIds;
  typesCopy = types;
  actionTypesCopy = actionTypes;
  v19 = MEMORY[0x277CBEB98];
  actionsCopy = actions;
  v21 = +[_ATXGlobals sharedInstance];
  personalizationBlacklistedBundleIds = [v21 personalizationBlacklistedBundleIds];
  v23 = [v19 setWithArray:personalizationBlacklistedBundleIds];

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __163__ATXDailyRoutinesPersonalizationManager__filterActions_havingCounts_includeBundleIds_excludeBundleIds_includeActionTypes_excludeActionTypes_havingMinOccurrences___block_invoke;
  v32[3] = &unk_27859D300;
  v33 = idsCopy;
  v34 = v23;
  v35 = bundleIdsCopy;
  v36 = typesCopy;
  v37 = actionTypesCopy;
  v38 = countsCopy;
  occurrencesCopy = occurrences;
  v24 = countsCopy;
  v25 = actionTypesCopy;
  v26 = typesCopy;
  v27 = bundleIdsCopy;
  v28 = v23;
  v29 = idsCopy;
  v30 = [actionsCopy _pas_filteredArrayWithTest:v32];

  return v30;
}

BOOL __163__ATXDailyRoutinesPersonalizationManager__filterActions_havingCounts_includeBundleIds_excludeBundleIds_includeActionTypes_excludeActionTypes_havingMinOccurrences___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bundleId];
  v5 = [v3 actionType];
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = [v6 containsObject:v4] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  if ([*(a1 + 40) containsObject:v4])
  {
    v8 = 1;
  }

  else
  {
    v9 = *(a1 + 48);
    if (v9)
    {
      v8 = [v9 containsObject:v4];
    }

    else
    {
      v8 = 0;
    }
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    v11 = [v10 containsObject:v5];
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a1 + 64);
  if (v12)
  {
    v13 = [v12 containsObject:v5] ^ 1;
  }

  else
  {
    v13 = 1;
  }

  v14 = 0;
  if ((v11 & ~(v7 | v8) & 1) != 0 && v13)
  {
    v14 = [*(a1 + 72) countForObject:v3] >= *(a1 + 80);
  }

  return v14;
}

+ (id)_unpackMostFrequentActionParameters:(id)parameters havingCounts:(id)counts limit:(unint64_t)limit
{
  v53 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  countsCopy = counts;
  v37 = parametersCopy;
  v9 = [objc_opt_class() _rankActions:parametersCopy havingCounts:countsCopy];
  v10 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v44;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v44 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v43 + 1) + 8 * i);
        v16 = objc_autoreleasePoolPush();
        *&v17 = [countsCopy countForObject:v15];
        v18 = [v15 getContainerWithScore:v17];
        v19 = v18;
        if (v18)
        {
          scoredAction = [v18 scoredAction];
          predictedItem = [scoredAction predictedItem];

          [_ATXActionUtils fetchDataAndUpdateContentAttributeSetForAction:predictedItem];
          [v10 addObject:v19];
        }

        if ([v10 count] >= limit)
        {
          v22 = [objc_opt_class() _filterUnpackedActions:v10];

          v23 = __atxlog_handle_dailyroutines();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v24 = [v22 count];
            *buf = 134218240;
            v49 = v24;
            v50 = 2048;
            limitCopy2 = limit;
            _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_INFO, "Recovered action data for %lu out of up to %lu entries", buf, 0x16u);
          }

          if ([v22 count] >= limit)
          {

            objc_autoreleasePoolPop(v16);
            v10 = v22;
            goto LABEL_17;
          }

          v10 = v22;
        }

        objc_autoreleasePoolPop(v16);
      }

      v12 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  v25 = [objc_opt_class() _filterUnpackedActions:v10];

  v26 = __atxlog_handle_dailyroutines();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = [v25 count];
    *buf = 134218240;
    v49 = v27;
    v50 = 2048;
    limitCopy2 = limit;
    _os_log_impl(&dword_2263AA000, v26, OS_LOG_TYPE_INFO, "Recovered action data for %lu out of up to %lu entries", buf, 0x16u);
  }

  v28 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v29 = v25;
  v30 = [v29 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v40;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v40 != v32)
        {
          objc_enumerationMutation(v29);
        }

        scoredAction2 = [*(*(&v39 + 1) + 8 * j) scoredAction];
        [v28 addObject:scoredAction2];
      }

      v31 = [v29 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v31);
  }

  v35 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (id)_rankActions:(id)actions havingCounts:(id)counts
{
  countsCopy = counts;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__ATXDailyRoutinesPersonalizationManager__rankActions_havingCounts___block_invoke;
  v9[3] = &unk_278597CB8;
  v10 = countsCopy;
  v6 = countsCopy;
  v7 = [actions sortedArrayUsingComparator:v9];

  return v7;
}

uint64_t __68__ATXDailyRoutinesPersonalizationManager__rankActions_havingCounts___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 countForObject:a2];
  v8 = [*(a1 + 32) countForObject:v6];

  if (v7 > v8)
  {
    return -1;
  }

  else
  {
    return v7 < v8;
  }
}

+ (id)_filterUnpackedActions:(id)actions
{
  v3 = [ATXActionPredictionsProcessor removeDuplicateActionPredictions:actions];
  v4 = [ATXActionPredictionsProcessor removeMissingOrBlockedRecipientPredictions:v3];

  v5 = [MEMORY[0x277CBEB18] arrayWithArray:v4];

  return v5;
}

- (BOOL)_enoughActionHistory
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = +[_ATXGlobals sharedInstance];
  personalizationRequiredActionHistorySeconds = [v3 personalizationRequiredActionHistorySeconds];

  [(ATXContextualActionManager *)self->_actionManager getIntervalSinceOldestEvent];
  v6 = v5;
  v7 = __atxlog_handle_dailyroutines();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6 < personalizationRequiredActionHistorySeconds)
  {
    if (v8)
    {
      v12 = 134218240;
      v13 = v6;
      v14 = 2048;
      v15 = personalizationRequiredActionHistorySeconds;
      v9 = "Not enough action history for requested context (got %lu (s) < %lu (s))";
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    v12 = 134218240;
    v13 = v6;
    v14 = 2048;
    v15 = personalizationRequiredActionHistorySeconds;
    v9 = "Action history is old enough (got %lu (s) >= %lu (s))";
LABEL_6:
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, v9, &v12, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6 >= personalizationRequiredActionHistorySeconds;
}

- (BOOL)_allRequiredActionTypesPresent:(id)present minOccurrences:(unint64_t)occurrences forContext:(id)context
{
  v43 = *MEMORY[0x277D85DE8];
  presentCopy = present;
  v7 = [presentCopy count];
  v8 = __atxlog_handle_dailyroutines();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v9)
    {
      *buf = 138412290;
      v42 = presentCopy;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_INFO, "Action types required: %@", buf, 0xCu);
    }

    v8 = [MEMORY[0x277CBEB58] setWithArray:presentCopy];
    getAllCounts = [(ATXContextualActionManager *)self->_actionManager getAllCounts];
    v11 = MEMORY[0x277CBEB98];
    v12 = +[_ATXGlobals sharedInstance];
    personalizationBlacklistedBundleIds = [v12 personalizationBlacklistedBundleIds];
    v14 = [v11 setWithArray:personalizationBlacklistedBundleIds];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v15 = getAllCounts;
    v16 = [v15 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v16)
    {
      v17 = v16;
      v34 = presentCopy;
      v18 = *v37;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v37 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v36 + 1) + 8 * i);
          v21 = __atxlog_handle_dailyroutines();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            bundleId = [v20 bundleId];
            *buf = 138412290;
            v42 = bundleId;
            _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_INFO, "Processing action for %@", buf, 0xCu);
          }

          bundleId2 = [v20 bundleId];
          v24 = [v14 containsObject:bundleId2];

          if (v24)
          {
            v25 = __atxlog_handle_dailyroutines();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_INFO, "Skipping this blacklisted action", buf, 2u);
            }
          }

          else
          {
            if ([v15 countForObject:v20] >= occurrences)
            {
              actionType = [v20 actionType];
              v27 = [v8 containsObject:actionType];

              if (v27)
              {
                v28 = __atxlog_handle_dailyroutines();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
                {
                  actionType2 = [v20 actionType];
                  *buf = 138412290;
                  v42 = actionType2;
                  _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_INFO, "Action type count requirement met: %@", buf, 0xCu);
                }
              }

              actionType3 = [v20 actionType];
              [v8 removeObject:actionType3];
            }

            if (![v8 count])
            {
              v31 = 1;
              goto LABEL_28;
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }

      v31 = 0;
LABEL_28:
      presentCopy = v34;
    }

    else
    {
      v31 = 0;
    }
  }

  else if (v9)
  {
    *buf = 0;
    v31 = 1;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_INFO, "No action types required", buf, 2u);
  }

  else
  {
    v31 = 1;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

@end