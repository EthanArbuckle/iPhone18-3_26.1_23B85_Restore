@interface ATXDailyRoutinesPersonalizationManager
+ (id)_filterActions:(id)a3 havingCounts:(id)a4 includeBundleIds:(id)a5 excludeBundleIds:(id)a6 includeActionTypes:(id)a7 excludeActionTypes:(id)a8 havingMinOccurrences:(unint64_t)a9;
+ (id)_filterUnpackedActions:(id)a3;
+ (id)_rankActions:(id)a3 havingCounts:(id)a4;
+ (id)_unpackMostFrequentActionParameters:(id)a3 havingCounts:(id)a4 limit:(unint64_t)a5;
+ (id)sharedInstance;
- (ATXDailyRoutinesPersonalizationManager)init;
- (ATXDailyRoutinesPersonalizationManager)initWithFakeActions:(id)a3 loiManager:(id)a4;
- (BOOL)_allRequiredActionTypesPresent:(id)a3 minOccurrences:(unint64_t)a4 forContext:(id)a5;
- (BOOL)_enoughActionHistory;
- (BOOL)shouldDisplayDailyRoutineForContext:(id)a3;
- (id)_getMostFrequentActionsForContext:(id)a3 includeBundleIds:(id)a4 excludeBundleIds:(id)a5 includeActionTypes:(id)a6 excludeActionTypes:(id)a7 minOccurrences:(unint64_t)a8 limit:(unint64_t)a9;
- (id)getActionPredictionsForContext:(id)a3 includeBundleIds:(id)a4 excludeBundleIds:(id)a5 includeActionTypes:(id)a6 excludeActionTypes:(id)a7 limit:(unint64_t)a8;
@end

@implementation ATXDailyRoutinesPersonalizationManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ATXDailyRoutinesPersonalizationManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (BOOL)shouldDisplayDailyRoutineForContext:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __atxlog_handle_dailyroutines();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    v15 = [v4 contextType];
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

  v6 = [v4 contextType];
  if (v6)
  {
    if (v6 == 1)
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
      if (v6 == 2)
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
  v10 = -[ATXDailyRoutinesPersonalizationManager _allRequiredActionTypesPresent:minOccurrences:forContext:](self, "_allRequiredActionTypesPresent:minOccurrences:forContext:", v7, [v11 personalizationRequiredCountForRelevance], v4);

  v8 = __atxlog_handle_dailyroutines();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 67109120;
    LODWORD(v15) = v10;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "Action requirements met: %{BOOL}d", &v14, 8u);
  }

LABEL_21:

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)getActionPredictionsForContext:(id)a3 includeBundleIds:(id)a4 excludeBundleIds:(id)a5 includeActionTypes:(id)a6 excludeActionTypes:(id)a7 limit:(unint64_t)a8
{
  v34 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = __atxlog_handle_dailyroutines();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v33 = [v12 contextType];
    _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_INFO, "Predictions for context type %lu requested", buf, 0xCu);
  }

  if (v13)
  {
    v18 = [MEMORY[0x277CBEB98] setWithArray:v13];
    if (v14)
    {
LABEL_5:
      v19 = [MEMORY[0x277CBEB98] setWithArray:v14];
      goto LABEL_8;
    }
  }

  else
  {
    v18 = 0;
    if (v14)
    {
      goto LABEL_5;
    }
  }

  v19 = 0;
LABEL_8:
  v31 = v14;
  if (v15)
  {
    v20 = [MEMORY[0x277CBEB98] setWithArray:v15];
  }

  else
  {
    v20 = 0;
  }

  v21 = v13;
  v22 = v12;
  if (v16)
  {
    v23 = [MEMORY[0x277CBEB98] setWithArray:v16];
  }

  else
  {
    v23 = 0;
  }

  v24 = +[_ATXGlobals sharedInstance];
  v25 = -[ATXDailyRoutinesPersonalizationManager _getMostFrequentActionsForContext:includeBundleIds:excludeBundleIds:includeActionTypes:excludeActionTypes:minOccurrences:limit:](self, "_getMostFrequentActionsForContext:includeBundleIds:excludeBundleIds:includeActionTypes:excludeActionTypes:minOccurrences:limit:", v22, v18, v19, v20, v23, [v24 personalizationRequiredCountForRelevance], a8);

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

    v5 = [MEMORY[0x277D41BF8] sharedInstance];
    loiManager = v2->_loiManager;
    v2->_loiManager = v5;
  }

  return v2;
}

- (ATXDailyRoutinesPersonalizationManager)initWithFakeActions:(id)a3 loiManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = ATXDailyRoutinesPersonalizationManager;
  v8 = [(ATXDailyRoutinesPersonalizationManager *)&v12 init];
  if (v8)
  {
    v9 = [[ATXContextualActionManager alloc] initWithStaticActions:v6];
    actionManager = v8->_actionManager;
    v8->_actionManager = v9;

    objc_storeStrong(&v8->_loiManager, a4);
  }

  return v8;
}

- (id)_getMostFrequentActionsForContext:(id)a3 includeBundleIds:(id)a4 excludeBundleIds:(id)a5 includeActionTypes:(id)a6 excludeActionTypes:(id)a7 minOccurrences:(unint64_t)a8 limit:(unint64_t)a9
{
  v56 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v51 = a5;
  v17 = a6;
  v18 = a7;
  v19 = [v15 timeWindow];

  if (v19)
  {
    v20 = __atxlog_handle_dailyroutines();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [ATXDailyRoutinesPersonalizationManager _getMostFrequentActionsForContext:v20 includeBundleIds:? excludeBundleIds:? includeActionTypes:? excludeActionTypes:? minOccurrences:? limit:?];
    }
  }

  v21 = [(ATXContextualActionManager *)self->_actionManager getCountsForContext:v15];
  v22 = objc_opt_class();
  v23 = [v21 allObjects];
  v50 = v16;
  v24 = [v22 _filterActions:v23 havingCounts:v21 includeBundleIds:v16 excludeBundleIds:v51 includeActionTypes:v17 excludeActionTypes:v18 havingMinOccurrences:a8];

  v25 = [objc_opt_class() _unpackMostFrequentActionParameters:v24 havingCounts:v21 limit:a9];
  v26 = __atxlog_handle_dailyroutines();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v55 = [v25 count];
    _os_log_impl(&dword_2263AA000, v26, OS_LOG_TYPE_INFO, "Found %lu actions for requested context", buf, 0xCu);
  }

  if ([v15 contextType] && objc_msgSend(v25, "count") < a9)
  {
    v47 = a9 - [v25 count];
    [(ATXContextualActionManager *)self->_actionManager getAllCounts];
    v28 = v27 = v24;
    v29 = [v28 allObjects];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __169__ATXDailyRoutinesPersonalizationManager__getMostFrequentActionsForContext_includeBundleIds_excludeBundleIds_includeActionTypes_excludeActionTypes_minOccurrences_limit___block_invoke;
    v52[3] = &unk_27859D2D8;
    v48 = v27;
    v53 = v27;
    [v29 _pas_filteredArrayWithTest:v52];
    v30 = v18;
    v32 = v31 = v17;

    v33 = objc_opt_class();
    v49 = v32;
    v34 = v32;
    v17 = v31;
    v18 = v30;
    v35 = [v33 _filterActions:v34 havingCounts:v28 includeBundleIds:v50 excludeBundleIds:v51 includeActionTypes:v17 excludeActionTypes:v30 havingMinOccurrences:a8];
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

+ (id)_filterActions:(id)a3 havingCounts:(id)a4 includeBundleIds:(id)a5 excludeBundleIds:(id)a6 includeActionTypes:(id)a7 excludeActionTypes:(id)a8 havingMinOccurrences:(unint64_t)a9
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = MEMORY[0x277CBEB98];
  v20 = a3;
  v21 = +[_ATXGlobals sharedInstance];
  v22 = [v21 personalizationBlacklistedBundleIds];
  v23 = [v19 setWithArray:v22];

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __163__ATXDailyRoutinesPersonalizationManager__filterActions_havingCounts_includeBundleIds_excludeBundleIds_includeActionTypes_excludeActionTypes_havingMinOccurrences___block_invoke;
  v32[3] = &unk_27859D300;
  v33 = v15;
  v34 = v23;
  v35 = v16;
  v36 = v17;
  v37 = v18;
  v38 = v14;
  v39 = a9;
  v24 = v14;
  v25 = v18;
  v26 = v17;
  v27 = v16;
  v28 = v23;
  v29 = v15;
  v30 = [v20 _pas_filteredArrayWithTest:v32];

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

+ (id)_unpackMostFrequentActionParameters:(id)a3 havingCounts:(id)a4 limit:(unint64_t)a5
{
  v53 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v37 = v7;
  v9 = [objc_opt_class() _rankActions:v7 havingCounts:v8];
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
        *&v17 = [v8 countForObject:v15];
        v18 = [v15 getContainerWithScore:v17];
        v19 = v18;
        if (v18)
        {
          v20 = [v18 scoredAction];
          v21 = [v20 predictedItem];

          [_ATXActionUtils fetchDataAndUpdateContentAttributeSetForAction:v21];
          [v10 addObject:v19];
        }

        if ([v10 count] >= a5)
        {
          v22 = [objc_opt_class() _filterUnpackedActions:v10];

          v23 = __atxlog_handle_dailyroutines();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v24 = [v22 count];
            *buf = 134218240;
            v49 = v24;
            v50 = 2048;
            v51 = a5;
            _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_INFO, "Recovered action data for %lu out of up to %lu entries", buf, 0x16u);
          }

          if ([v22 count] >= a5)
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
    v51 = a5;
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

        v34 = [*(*(&v39 + 1) + 8 * j) scoredAction];
        [v28 addObject:v34];
      }

      v31 = [v29 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v31);
  }

  v35 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (id)_rankActions:(id)a3 havingCounts:(id)a4
{
  v5 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__ATXDailyRoutinesPersonalizationManager__rankActions_havingCounts___block_invoke;
  v9[3] = &unk_278597CB8;
  v10 = v5;
  v6 = v5;
  v7 = [a3 sortedArrayUsingComparator:v9];

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

+ (id)_filterUnpackedActions:(id)a3
{
  v3 = [ATXActionPredictionsProcessor removeDuplicateActionPredictions:a3];
  v4 = [ATXActionPredictionsProcessor removeMissingOrBlockedRecipientPredictions:v3];

  v5 = [MEMORY[0x277CBEB18] arrayWithArray:v4];

  return v5;
}

- (BOOL)_enoughActionHistory
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = +[_ATXGlobals sharedInstance];
  v4 = [v3 personalizationRequiredActionHistorySeconds];

  [(ATXContextualActionManager *)self->_actionManager getIntervalSinceOldestEvent];
  v6 = v5;
  v7 = __atxlog_handle_dailyroutines();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6 < v4)
  {
    if (v8)
    {
      v12 = 134218240;
      v13 = v6;
      v14 = 2048;
      v15 = v4;
      v9 = "Not enough action history for requested context (got %lu (s) < %lu (s))";
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    v12 = 134218240;
    v13 = v6;
    v14 = 2048;
    v15 = v4;
    v9 = "Action history is old enough (got %lu (s) >= %lu (s))";
LABEL_6:
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, v9, &v12, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6 >= v4;
}

- (BOOL)_allRequiredActionTypesPresent:(id)a3 minOccurrences:(unint64_t)a4 forContext:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 count];
  v8 = __atxlog_handle_dailyroutines();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v9)
    {
      *buf = 138412290;
      v42 = v6;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_INFO, "Action types required: %@", buf, 0xCu);
    }

    v8 = [MEMORY[0x277CBEB58] setWithArray:v6];
    v10 = [(ATXContextualActionManager *)self->_actionManager getAllCounts];
    v11 = MEMORY[0x277CBEB98];
    v12 = +[_ATXGlobals sharedInstance];
    v13 = [v12 personalizationBlacklistedBundleIds];
    v14 = [v11 setWithArray:v13];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v15 = v10;
    v16 = [v15 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v16)
    {
      v17 = v16;
      v34 = v6;
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
            v22 = [v20 bundleId];
            *buf = 138412290;
            v42 = v22;
            _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_INFO, "Processing action for %@", buf, 0xCu);
          }

          v23 = [v20 bundleId];
          v24 = [v14 containsObject:v23];

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
            if ([v15 countForObject:v20] >= a4)
            {
              v26 = [v20 actionType];
              v27 = [v8 containsObject:v26];

              if (v27)
              {
                v28 = __atxlog_handle_dailyroutines();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
                {
                  v29 = [v20 actionType];
                  *buf = 138412290;
                  v42 = v29;
                  _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_INFO, "Action type count requirement met: %@", buf, 0xCu);
                }
              }

              v30 = [v20 actionType];
              [v8 removeObject:v30];
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
      v6 = v34;
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