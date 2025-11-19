@interface AAUIAchievementsDataProvider
- (AAUIAchievementsDataProvider)initWithHealthStore:(id)a3 layoutMode:(unint64_t)a4;
- (BOOL)_achievementBelongsInRecents:(id)a3 replacingRecent:(id *)a4;
- (BOOL)_achievementBelongsInRelevants:(id)a3 replacingRelevant:(id *)a4;
- (BOOL)_builtInBelongsInRelevants:(id)a3;
- (BOOL)_monthlyChallengeBelongsInRelevants:(id)a3;
- (BOOL)_remoteAchievementBelongsInRelevants:(id)a3;
- (BOOL)_shouldShowAchievement:(id)a3 activityMoveMode:(int64_t)a4 experienceType:(unint64_t)a5;
- (NSMutableArray)allAchievementsSortedByEarnedDate;
- (_TtC22ActivityAchievementsUI15AAUIAwardsQuery)awardsQuery;
- (double)queryRetryDelay;
- (id)_achievementsRespectingOverrideDisplayState:(id)a3;
- (id)_mainSectionIndexPathForAchievement:(id)a3;
- (id)_oldestRecentAchievement;
- (id)_recentAndRelevantSectionIndexPathForAchievement:(id)a3;
- (id)achievementAtIndexPath:(id)a3;
- (id)achievementForTemplateUniqueName:(id)a3;
- (id)achievementsForDateComponents:(id)a3;
- (id)headerStringForSection:(int64_t)a3 isRecentAndRelevant:(BOOL)a4;
- (id)recentAndRelevantAchievementAtIndexPath:(id)a3;
- (id)trophyCaseAchievementForTemplateUniqueName:(id)a3;
- (int64_t)_deleteAchievement:(id)a3 fromUnfiltered:(BOOL)a4;
- (int64_t)_updateAchievement:(id)a3 activityMoveMode:(int64_t)a4 experienceType:(unint64_t)a5;
- (int64_t)numberOfItemsInRecentAndRelevantSection:(int64_t)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
- (int64_t)numberOfSections;
- (void)_deepCopyClientFacingModel;
- (void)_deleteAchievementsByEarnedDateWithAchievement:(id)a3 earnedInstance:(id)a4;
- (void)_handleDeletedAchievements:(id)a3;
- (void)_handleUpdatedAchievements:(id)a3;
- (void)_reload;
- (void)_updateAchievementsByEarnedDateComponentsWithAchievement:(id)a3 earnedInstance:(id)a4;
- (void)addInitialLoadObserver:(id)a3;
- (void)addMainSectionObserver:(id)a3;
- (void)addRecentAndRelevantSectionObserver:(id)a3;
- (void)cycleQuery;
- (void)removeInitialLoadObserver:(id)a3;
- (void)removeMainSectionObserver:(id)a3;
- (void)removeRecentAndRelevantSectionObserver:(id)a3;
- (void)setDidFinishInitialLoad:(BOOL)a3;
- (void)startFetching;
- (void)stopFetching;
@end

@implementation AAUIAchievementsDataProvider

- (void)startFetching
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_23E4A3000, v0, OS_LOG_TYPE_ERROR, "Error starting awards query: %@", v1, 0xCu);
}

- (_TtC22ActivityAchievementsUI15AAUIAwardsQuery)awardsQuery
{
  awardsQuery = self->_awardsQuery;
  if (!awardsQuery)
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __43__AAUIAchievementsDataProvider_awardsQuery__block_invoke;
    aBlock[3] = &unk_278C43788;
    objc_copyWeak(&v12, &location);
    v4 = _Block_copy(aBlock);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __43__AAUIAchievementsDataProvider_awardsQuery__block_invoke_2;
    v9[3] = &unk_278C43788;
    objc_copyWeak(&v10, &location);
    v5 = _Block_copy(v9);
    v6 = [[_TtC22ActivityAchievementsUI15AAUIAwardsQuery alloc] initWithInitialAwardsHandler:v4 addedAwardsHandler:v4 removedAwardsHandler:v5 updatedAwardsHandler:v4];
    v7 = self->_awardsQuery;
    self->_awardsQuery = v6;

    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    awardsQuery = self->_awardsQuery;
  }

  return awardsQuery;
}

void __43__AAUIAchievementsDataProvider_awardsQuery__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CBEB98] setWithArray:a2];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleUpdatedAchievements:v4];
}

- (void)_reload
{
  v2 = self;
  v99 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_modelLock);
  v3 = [(AAUIAchievementsDataProvider *)v2 recentAchievements];
  v94 = MEMORY[0x277D85DD0];
  v95 = 3221225472;
  v96 = __AAUISortAchievementsByMostRecentEarnedDate_block_invoke;
  v97 = &__block_descriptor_33_e43_q24__0__ACHAchievement_8__ACHAchievement_16l;
  v98 = 0;
  [v3 sortUsingComparator:&v94];

  v4 = [(AAUIAchievementsDataProvider *)v2 relevantAchievements];
  [v4 sortUsingComparator:&__block_literal_global_736];

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v5 = [(AAUIAchievementsDataProvider *)v2 achievementsBySection];
  v6 = [v5 allKeys];

  v69 = [v6 countByEnumeratingWithState:&v79 objects:v92 count:16];
  if (v69)
  {
    v7 = *v80;
    v8 = *MEMORY[0x277CE8AA0];
    v68 = *MEMORY[0x277CE8A88];
    v64 = v6;
    v65 = v2;
    v62 = *MEMORY[0x277CE8AA0];
    v63 = *v80;
    do
    {
      for (i = 0; i != v69; ++i)
      {
        if (*v80 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v79 + 1) + 8 * i);
        v11 = [(AAUIAchievementsDataProvider *)v2 achievementsBySection:v62];
        v12 = [v11 objectForKeyedSubscript:v10];

        if ([v10 isEqualToString:v8])
        {
          v13 = v12;
          [v13 hk_filter:&__block_literal_global_739];
          v70 = v12;
          v14 = v72 = i;
          v15 = [v13 hk_filter:&__block_literal_global_741];

          v16 = AAUISortSubAchievementsByActivityType(v14);
          AAUISortSubAchievementsByActivityType(v15);
          v17 = v8;
          v19 = v18 = v7;
          [v16 arrayByAddingObjectsFromArray:v19];
          v21 = v20 = v2;

          v7 = v18;
          v8 = v17;

          v22 = [MEMORY[0x277CBEB18] arrayWithArray:v21];

          v2 = v20;
          v23 = [(AAUIAchievementsDataProvider *)v20 achievementsBySection];
          [v23 setObject:v22 forKeyedSubscript:v10];

          v12 = v70;
          i = v72;
        }

        else if ([v10 isEqualToString:v68])
        {
          v67 = v10;
          v71 = v12;
          v73 = i;
          v24 = v12;
          v66 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v87 = 0u;
          v88 = 0u;
          v89 = 0u;
          v90 = 0u;
          v26 = v24;
          v27 = [v26 countByEnumeratingWithState:&v87 objects:&v94 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v88;
            do
            {
              for (j = 0; j != v28; ++j)
              {
                if (*v88 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v87 + 1) + 8 * j);
                v32 = MEMORY[0x277CCABB0];
                v33 = [v31 template];
                v34 = [v32 numberWithUnsignedInteger:{objc_msgSend(v33, "displayOrder")}];
                v35 = [v25 objectForKeyedSubscript:v34];

                if (!v35)
                {
                  v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  v37 = MEMORY[0x277CCABB0];
                  v38 = [v31 template];
                  v39 = [v37 numberWithUnsignedInteger:{objc_msgSend(v38, "displayOrder")}];
                  [v25 setObject:v36 forKeyedSubscript:v39];
                }

                v40 = MEMORY[0x277CCABB0];
                v41 = [v31 template];
                v42 = [v40 numberWithUnsignedInteger:{objc_msgSend(v41, "displayOrder")}];
                v43 = [v25 objectForKeyedSubscript:v42];
                [v43 addObject:v31];
              }

              v28 = [v26 countByEnumeratingWithState:&v87 objects:&v94 count:16];
            }

            while (v28);
          }

          v44 = [v25 allKeys];
          v45 = [v44 sortedArrayUsingSelector:sel_compare_];

          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v46 = v45;
          v47 = [v46 countByEnumeratingWithState:&v83 objects:v93 count:16];
          if (v47)
          {
            v48 = v47;
            v49 = *v84;
            do
            {
              for (k = 0; k != v48; ++k)
              {
                if (*v84 != v49)
                {
                  objc_enumerationMutation(v46);
                }

                v51 = [v25 objectForKeyedSubscript:*(*(&v83 + 1) + 8 * k)];
                if ([v26 count] < 2)
                {
                  [v66 addObjectsFromArray:v51];
                }

                else
                {
                  v52 = [v51 sortedArrayUsingComparator:&__block_literal_global_745];
                  [v66 addObjectsFromArray:v52];
                }
              }

              v48 = [v46 countByEnumeratingWithState:&v83 objects:v93 count:16];
            }

            while (v48);
          }

          v2 = v65;
          v53 = [(AAUIAchievementsDataProvider *)v65 achievementsBySection];
          [v53 setObject:v66 forKeyedSubscript:v67];

          v7 = v63;
          v6 = v64;
          v8 = v62;
          v12 = v71;
          i = v73;
        }

        else
        {
          [v12 sortUsingComparator:&__block_literal_global_736];
        }
      }

      v69 = [v6 countByEnumeratingWithState:&v79 objects:v92 count:16];
    }

    while (v69);
  }

  v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v55 = [(AAUIAchievementsDataProvider *)v2 achievementsByEarnedDateComponents];
  v56 = [v55 allValues];

  v57 = [v56 countByEnumeratingWithState:&v75 objects:v91 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v76;
    do
    {
      for (m = 0; m != v58; ++m)
      {
        if (*v76 != v59)
        {
          objc_enumerationMutation(v56);
        }

        v61 = [*(*(&v75 + 1) + 8 * m) allObjects];
        [v54 addObjectsFromArray:v61];
      }

      v58 = [v56 countByEnumeratingWithState:&v75 objects:v91 count:16];
    }

    while (v58);
  }

  v94 = MEMORY[0x277D85DD0];
  v95 = 3221225472;
  v96 = __AAUISortAchievementsByMostRecentEarnedDate_block_invoke;
  v97 = &__block_descriptor_33_e43_q24__0__ACHAchievement_8__ACHAchievement_16l;
  v98 = 0;
  [v54 sortUsingComparator:&v94];
  [(AAUIAchievementsDataProvider *)v2 setAllAchievementsSortedByEarnedDate:v54];
  os_unfair_lock_unlock(&v2->_modelLock);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__AAUIAchievementsDataProvider__reload__block_invoke;
  block[3] = &unk_278C43800;
  block[4] = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (AAUIAchievementsDataProvider)initWithHealthStore:(id)a3 layoutMode:(unint64_t)a4
{
  v116 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v97.receiver = self;
  v97.super_class = AAUIAchievementsDataProvider;
  v8 = [(AAUIAchievementsDataProvider *)&v97 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_healthStore, a3);
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    achievementsBySection = v9->_achievementsBySection;
    v9->_achievementsBySection = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    recentAchievements = v9->_recentAchievements;
    v9->_recentAchievements = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    relevantAchievements = v9->_relevantAchievements;
    v9->_relevantAchievements = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    filteredAchievementsByTemplateUniqueName = v9->_filteredAchievementsByTemplateUniqueName;
    v9->_filteredAchievementsByTemplateUniqueName = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    achievementsByTemplateUniqueName = v9->_achievementsByTemplateUniqueName;
    v9->_achievementsByTemplateUniqueName = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    achievementsByEarnedDateComponents = v9->_achievementsByEarnedDateComponents;
    v9->_achievementsByEarnedDateComponents = v20;

    [(NSMutableDictionary *)v9->_achievementsBySection setObject:v9->_relevantAchievements forKeyedSubscript:@"GO_FOR_IT"];
    if (a4 == 1)
    {
      v96 = v7;
      v100[0] = @"RECENT";
      v100[1] = @"CURRENT_MONTHLY_CHALLENGE";
      v43 = *MEMORY[0x277CE8A88];
      v101 = *MEMORY[0x277CE8A78];
      v42 = v101;
      v102 = v43;
      v44 = *MEMORY[0x277CE8A98];
      v103 = *MEMORY[0x277CE8A90];
      v104 = v44;
      v79 = *MEMORY[0x277CE8A80];
      v105 = *MEMORY[0x277CE8AA0];
      v45 = v105;
      v106 = v79;
      v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:8];
      orderedSections = v9->_orderedSections;
      v9->_orderedSections = v46;

      v99[0] = &stru_2850CB9E8;
      v99[1] = &stru_2850CB9E8;
      v95 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v93 = [v95 localizedStringForKey:v42 value:&stru_2850CB9E8 table:?];
      v91 = [v93 localizedUppercaseString];
      v99[2] = v91;
      v89 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v87 = [v89 localizedStringForKey:v43 value:&stru_2850CB9E8 table:@"Localizable"];
      v85 = [v87 localizedUppercaseString];
      v99[3] = v85;
      v83 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v81 = [v83 localizedStringForKey:@"LIMITED_EDITION_WATCH" value:&stru_2850CB9E8 table:@"Localizable"];
      v77 = [v81 localizedUppercaseString];
      v99[4] = v77;
      v75 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v48 = [v75 localizedStringForKey:v44 value:&stru_2850CB9E8 table:@"Localizable"];
      v49 = [v48 localizedUppercaseString];
      v99[5] = v49;
      v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v51 = [v50 localizedStringForKey:v45 value:&stru_2850CB9E8 table:@"Localizable"];
      v52 = [v51 localizedUppercaseString];
      v99[6] = v52;
      v53 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v54 = [v53 localizedStringForKey:v79 value:&stru_2850CB9E8 table:@"Localizable"];
      v55 = [v54 localizedUppercaseString];
      v99[7] = v55;
      v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v99 count:8];
      orderedMainSectionHeaderStrings = v9->_orderedMainSectionHeaderStrings;
      v9->_orderedMainSectionHeaderStrings = v56;

      v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v39 = [v38 localizedStringForKey:@"RECENT" value:&stru_2850CB9E8 table:@"Localizable"];
      v41 = [v39 localizedUppercaseString];
      v98 = v41;
      v58 = [MEMORY[0x277CBEA60] arrayWithObjects:&v98 count:1];
      orderedRecentAndRelevantHeaderStrings = v9->_orderedRecentAndRelevantHeaderStrings;
      v9->_orderedRecentAndRelevantHeaderStrings = v58;
    }

    else
    {
      if (a4)
      {
LABEL_7:
        v60 = objc_alloc_init(MEMORY[0x277CE8D58]);
        visibilityEvaluator = v9->_visibilityEvaluator;
        v9->_visibilityEvaluator = v60;

        v62 = HKCreateSerialDispatchQueueWithQOSClass();
        achievementsDataQueue = v9->_achievementsDataQueue;
        v9->_achievementsDataQueue = v62;

        v64 = HKCreateSerialDispatchQueueWithQOSClass();
        observerQueue = v9->_observerQueue;
        v9->_observerQueue = v64;

        v66 = [MEMORY[0x277CCA8D8] mainBundle];
        AppIntegerValue = CFPreferencesGetAppIntegerValue(@"ACHAchievementDisplayOverrideState", [v66 bundleIdentifier], 0);

        v9->_overrideDisplayState = AppIntegerValue;
        v9->_queryRetryDelay = 0.1;
        v9->_modelLock._os_unfair_lock_opaque = 0;
        v68 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
        initialLoadObservers = v9->_initialLoadObservers;
        v9->_initialLoadObservers = v68;

        v70 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
        recentAndRelevantSectionObservers = v9->_recentAndRelevantSectionObservers;
        v9->_recentAndRelevantSectionObservers = v70;

        v72 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
        mainSectionObservers = v9->_mainSectionObservers;
        v9->_mainSectionObservers = v72;

        goto LABEL_8;
      }

      v96 = v7;
      v109[0] = @"RECENT";
      v109[1] = @"GO_FOR_IT";
      v23 = *MEMORY[0x277CE8A88];
      v110 = *MEMORY[0x277CE8A78];
      v22 = v110;
      v111 = v23;
      v78 = *MEMORY[0x277CE8A98];
      v25 = *MEMORY[0x277CE8A98];
      v112 = *MEMORY[0x277CE8A90];
      v24 = v112;
      v113 = v25;
      v88 = *MEMORY[0x277CE8A80];
      v26 = *MEMORY[0x277CE8A80];
      v114 = *MEMORY[0x277CE8AA0];
      v82 = v114;
      v115 = v26;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v109 count:8];
      v28 = v9->_orderedSections;
      v9->_orderedSections = v27;

      v108[0] = &stru_2850CB9E8;
      v94 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v92 = [v94 localizedStringForKey:@"GO_FOR_IT" value:&stru_2850CB9E8 table:@"Localizable"];
      v108[1] = v92;
      v90 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v86 = [v90 localizedStringForKey:v22 value:&stru_2850CB9E8 table:@"Localizable"];
      v108[2] = v86;
      v84 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v80 = [v84 localizedStringForKey:v23 value:&stru_2850CB9E8 table:@"Localizable"];
      v108[3] = v80;
      v76 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v29 = [v76 localizedStringForKey:v24 value:&stru_2850CB9E8 table:@"Localizable"];
      v108[4] = v29;
      v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v31 = [v30 localizedStringForKey:v78 value:&stru_2850CB9E8 table:@"Localizable"];
      v108[5] = v31;
      v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v33 = [v32 localizedStringForKey:v82 value:&stru_2850CB9E8 table:@"Localizable"];
      v108[6] = v33;
      v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v35 = [v34 localizedStringForKey:v88 value:&stru_2850CB9E8 table:@"Localizable"];
      v108[7] = v35;
      v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:8];
      v37 = v9->_orderedMainSectionHeaderStrings;
      v9->_orderedMainSectionHeaderStrings = v36;

      v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v39 = [v38 localizedStringForKey:@"RECENT" value:&stru_2850CB9E8 table:@"Localizable"];
      v107 = v39;
      v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v107 count:1];
      v41 = v9->_orderedRecentAndRelevantHeaderStrings;
      v9->_orderedRecentAndRelevantHeaderStrings = v40;
    }

    v7 = v96;
    goto LABEL_7;
  }

LABEL_8:

  return v9;
}

- (double)queryRetryDelay
{
  result = fmin(self->_queryRetryDelay + 0.2, 5.0);
  self->_queryRetryDelay = result;
  return result;
}

void __43__AAUIAchievementsDataProvider_awardsQuery__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CBEB98] setWithArray:a2];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDeletedAchievements:v4];
}

- (void)cycleQuery
{
  v3 = [(AAUIAchievementsDataProvider *)self awardsQuery];
  [v3 deactivate];

  awardsQuery = self->_awardsQuery;
  self->_awardsQuery = 0;

  [(AAUIAchievementsDataProvider *)self setQueryRetryCount:[(AAUIAchievementsDataProvider *)self queryRetryCount]+ 1];
  if ([(AAUIAchievementsDataProvider *)self queryRetryCount]< 100)
  {

    [(AAUIAchievementsDataProvider *)self startFetching];
  }

  else
  {
    v5 = ACHLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(AAUIAchievementsDataProvider *)v5 cycleQuery];
    }
  }
}

- (void)addInitialLoadObserver:(id)a3
{
  v4 = a3;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__AAUIAchievementsDataProvider_addInitialLoadObserver___block_invoke;
  v7[3] = &unk_278C437B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(observerQueue, v7);
}

uint64_t __55__AAUIAchievementsDataProvider_addInitialLoadObserver___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) didFinishInitialLoad])
  {
    [*(a1 + 40) achievementsDataProviderDidFinishInitialLoad:*(a1 + 32)];
  }

  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 216);

  return [v3 addObject:v2];
}

- (void)removeInitialLoadObserver:(id)a3
{
  v4 = a3;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__AAUIAchievementsDataProvider_removeInitialLoadObserver___block_invoke;
  v7[3] = &unk_278C437B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(observerQueue, v7);
}

- (void)addRecentAndRelevantSectionObserver:(id)a3
{
  v4 = a3;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__AAUIAchievementsDataProvider_addRecentAndRelevantSectionObserver___block_invoke;
  v7[3] = &unk_278C437B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(observerQueue, v7);
}

- (void)removeRecentAndRelevantSectionObserver:(id)a3
{
  v4 = a3;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__AAUIAchievementsDataProvider_removeRecentAndRelevantSectionObserver___block_invoke;
  v7[3] = &unk_278C437B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(observerQueue, v7);
}

- (void)addMainSectionObserver:(id)a3
{
  v4 = a3;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__AAUIAchievementsDataProvider_addMainSectionObserver___block_invoke;
  v7[3] = &unk_278C437B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(observerQueue, v7);
}

- (void)removeMainSectionObserver:(id)a3
{
  v4 = a3;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__AAUIAchievementsDataProvider_removeMainSectionObserver___block_invoke;
  v7[3] = &unk_278C437B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(observerQueue, v7);
}

- (void)stopFetching
{
  v3 = [(AAUIAchievementsDataProvider *)self awardsQuery];
  [v3 deactivate];

  awardsQuery = self->_awardsQuery;
  self->_awardsQuery = 0;
}

- (void)setDidFinishInitialLoad:(BOOL)a3
{
  observerQueue = self->_observerQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__AAUIAchievementsDataProvider_setDidFinishInitialLoad___block_invoke;
  v4[3] = &unk_278C437D8;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(observerQueue, v4);
}

void __56__AAUIAchievementsDataProvider_setDidFinishInitialLoad___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 8) & 1) == 0)
  {
    *(v1 + 8) = *(a1 + 40);
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = *(*(a1 + 32) + 216);
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v7++) achievementsDataProviderDidFinishInitialLoad:{*(a1 + 32), v8}];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_1);
  }
}

void __56__AAUIAchievementsDataProvider_setDidFinishInitialLoad___block_invoke_2()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"AAUIAchievementsDataProviderDidFinishInitialLoad" object:0];
}

- (id)headerStringForSection:(int64_t)a3 isRecentAndRelevant:(BOOL)a4
{
  if (a4)
  {
    [(AAUIAchievementsDataProvider *)self orderedRecentAndRelevantHeaderStrings];
  }

  else
  {
    [(AAUIAchievementsDataProvider *)self orderedMainSectionHeaderStrings];
  }
  v5 = ;
  v6 = [v5 objectAtIndexedSubscript:a3];

  return v6;
}

- (int64_t)numberOfItemsInRecentAndRelevantSection:(int64_t)a3
{
  v3 = [(AAUIAchievementsDataProvider *)self clientRecentAchievements];
  v4 = [v3 count];

  return v4;
}

- (id)recentAndRelevantAchievementAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(AAUIAchievementsDataProvider *)self clientRecentAchievements];
  v6 = [v4 item];

  v7 = [v5 objectAtIndexedSubscript:v6];

  return v7;
}

- (int64_t)numberOfSections
{
  v2 = [(AAUIAchievementsDataProvider *)self orderedSections];
  v3 = [v2 count];

  return v3;
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  if (a3)
  {
    v5 = [(AAUIAchievementsDataProvider *)self orderedSections];
    v6 = [v5 objectAtIndexedSubscript:a3];

    v7 = [(AAUIAchievementsDataProvider *)self clientAchievementsBySection];
    v8 = [v7 objectForKeyedSubscript:v6];

    v9 = [v8 count];
    return v9;
  }

  else
  {
    v11 = [(AAUIAchievementsDataProvider *)self clientRecentAchievements];
    v12 = [v11 count] != 0;

    return v12;
  }
}

- (id)achievementAtIndexPath:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [(AAUIAchievementsDataProvider *)self orderedSections];
  v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(v4, "section")}];

  v7 = [(AAUIAchievementsDataProvider *)self clientAchievementsBySection];
  v8 = [v7 objectForKeyedSubscript:v6];

  v9 = [v4 item];
  v10 = [v8 objectAtIndexedSubscript:v9];

  return v10;
}

- (id)trophyCaseAchievementForTemplateUniqueName:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [(AAUIAchievementsDataProvider *)self clientFilteredAchievementsByTemplateUniqueName];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)achievementForTemplateUniqueName:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [(AAUIAchievementsDataProvider *)self clientAchievementsByTemplateUniqueName];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)achievementsForDateComponents:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [(AAUIAchievementsDataProvider *)self clientAchievementsByEarnedDateComponents];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB98]);
  }

  v8 = v7;

  return v8;
}

- (NSMutableArray)allAchievementsSortedByEarnedDate
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = [(AAUIAchievementsDataProvider *)self clientAllAchievementsSortedByEarnedDate];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

- (void)_deepCopyClientFacingModel
{
  os_unfair_lock_lock(&self->_modelLock);
  v3 = [(AAUIAchievementsDataProvider *)self recentAchievements];
  v4 = [v3 copy];
  [(AAUIAchievementsDataProvider *)self setClientRecentAchievements:v4];

  v5 = [(AAUIAchievementsDataProvider *)self relevantAchievements];
  v6 = [v5 copy];
  [(AAUIAchievementsDataProvider *)self setClientRelevantAchievements:v6];

  v7 = [(AAUIAchievementsDataProvider *)self filteredAchievementsByTemplateUniqueName];
  v8 = [v7 copy];
  [(AAUIAchievementsDataProvider *)self setClientFilteredAchievementsByTemplateUniqueName:v8];

  v9 = [(AAUIAchievementsDataProvider *)self achievementsByTemplateUniqueName];
  v10 = [v9 copy];
  [(AAUIAchievementsDataProvider *)self setClientAchievementsByTemplateUniqueName:v10];

  v11 = objc_alloc(MEMORY[0x277CBEAC0]);
  v12 = [(AAUIAchievementsDataProvider *)self achievementsBySection];
  v13 = [v11 initWithDictionary:v12 copyItems:1];
  [(AAUIAchievementsDataProvider *)self setClientAchievementsBySection:v13];

  v14 = objc_alloc(MEMORY[0x277CBEAC0]);
  v15 = [(AAUIAchievementsDataProvider *)self achievementsByEarnedDateComponents];
  v16 = [v14 initWithDictionary:v15 copyItems:1];
  [(AAUIAchievementsDataProvider *)self setClientAchievementsByEarnedDateComponents:v16];

  v17 = [(NSMutableArray *)self->_allAchievementsSortedByEarnedDate copy];
  [(AAUIAchievementsDataProvider *)self setClientAllAchievementsSortedByEarnedDate:v17];

  os_unfair_lock_unlock(&self->_modelLock);
}

- (id)_achievementsRespectingOverrideDisplayState:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AAUIAchievementsDataProvider *)self overrideDisplayState];
  if (v5 == 2)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v24 = v4;
    v25 = [v24 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v35;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v35 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [*(*(&v34 + 1) + 8 * i) shallowCopyWithRelevantEarnedInstance:0];
          [v6 addObject:v29];
        }

        v26 = [v24 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v26);
    }
  }

  else
  {
    if (v5 != 1)
    {
      goto LABEL_21;
    }

    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v4;
    v7 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v7)
    {
      v8 = v7;
      v32 = v4;
      v9 = *v39;
      do
      {
        for (j = 0; j != v8; ++j)
        {
          if (*v39 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v38 + 1) + 8 * j);
          v12 = objc_alloc_init(MEMORY[0x277CE8D38]);
          v13 = [v11 template];
          v14 = [v13 canonicalUnit];

          if (v14)
          {
            v15 = MEMORY[0x277CCD7E8];
            v16 = [v11 template];
            v17 = [v16 canonicalUnit];
            v18 = [v15 quantityWithUnit:v17 doubleValue:20.0];

            [v12 setValue:v18];
          }

          v19 = ACHDateComponentsForYearMonthDay();
          [v12 setEarnedDateComponents:v19];

          v20 = [MEMORY[0x277CBEAA8] date];
          [v12 setCreatedDate:v20];

          [v12 setCreatorDevice:2];
          v21 = [v11 template];
          v22 = [v21 uniqueName];
          [v12 setTemplateUniqueName:v22];

          v23 = [v11 shallowCopyWithRelevantEarnedInstance:v12];
          [v6 addObject:v23];
        }

        v8 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v8);
      v4 = v32;
    }
  }

  v30 = [MEMORY[0x277CBEB98] setWithArray:v6];

  v4 = v30;
LABEL_21:

  return v4;
}

- (void)_handleUpdatedAchievements:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    [(AAUIAchievementsDataProvider *)self setDidFinishInitialLoad:1];
  }

  v5 = [(AAUIAchievementsDataProvider *)self _achievementsRespectingOverrideDisplayState:v4];

  v6 = [(AAUIAchievementsDataProvider *)self achievementsDataQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__AAUIAchievementsDataProvider__handleUpdatedAchievements___block_invoke;
  v8[3] = &unk_278C437B0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __59__AAUIAchievementsDataProvider__handleUpdatedAchievements___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 16);
  v27 = 0;
  v3 = [v2 activityMoveModeWithError:&v27];
  v4 = v27;
  if (v4)
  {
    v5 = ACHLogUI();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __59__AAUIAchievementsDataProvider__handleUpdatedAchievements___block_invoke_cold_1();
    }
  }

  if (v3)
  {
    v6 = [v3 activityMoveMode];
  }

  else
  {
    v6 = 1;
  }

  v7 = FIExperienceTypeWithHealthStore();
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = 3;
  }

  os_unfair_lock_lock((*(a1 + 32) + 12));
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = *(a1 + 40);
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v21 = v3;
    obj = v9;
    v20 = v4;
    v12 = 0;
    v13 = 0;
    v14 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        v18 = [*(a1 + 32) _updateAchievement:v16 activityMoveMode:v6 experienceType:v8];
        v13 |= (v18 & 0x15) != 0;
        v12 |= (v18 & 0x2A) != 0;
        objc_autoreleasePoolPop(v17);
      }

      v11 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v11);
    v19 = v13 | v12;

    os_unfair_lock_unlock((*(a1 + 32) + 12));
    v4 = v20;
    v3 = v21;
    if (v19)
    {
      [*(a1 + 32) _reload];
    }
  }

  else
  {

    os_unfair_lock_unlock((*(a1 + 32) + 12));
  }
}

- (void)_handleDeletedAchievements:(id)a3
{
  v4 = a3;
  v5 = [(AAUIAchievementsDataProvider *)self achievementsDataQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__AAUIAchievementsDataProvider__handleDeletedAchievements___block_invoke;
  v7[3] = &unk_278C437B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __59__AAUIAchievementsDataProvider__handleDeletedAchievements___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = [*(a1 + 32) _deleteAchievement:*(*(&v10 + 1) + 8 * v8) fromUnfiltered:{1, v10}];
        v6 |= (v9 >> 3) & 1;
        v5 |= (v9 >> 2) & 1;
        ++v8;
      }

      while (v4 != v8);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);

    os_unfair_lock_unlock((*(a1 + 32) + 12));
    if ((v5 | v6))
    {
      [*(a1 + 32) _reload];
    }
  }

  else
  {

    os_unfair_lock_unlock((*(a1 + 32) + 12));
  }
}

void __39__AAUIAchievementsDataProvider__reload__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _deepCopyClientFacingModel];
  v2 = *(a1 + 32);
  v3 = *(v2 + 184);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__AAUIAchievementsDataProvider__reload__block_invoke_2;
  block[3] = &unk_278C43800;
  block[4] = v2;
  dispatch_sync(v3, block);
  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_441);
}

void __39__AAUIAchievementsDataProvider__reload__block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(*(a1 + 32) + 224);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v16 + 1) + 8 * v6++) achievementsDataProviderDidUpdate:*(a1 + 32)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v4);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(*(a1 + 32) + 232);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) achievementsDataProviderDidUpdate:{*(a1 + 32), v12}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v9);
  }
}

void __39__AAUIAchievementsDataProvider__reload__block_invoke_3()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"AAUIAchievementsDataProviderDidUpdateAchievement" object:0];
}

- (BOOL)_shouldShowAchievement:(id)a3 activityMoveMode:(int64_t)a4 experienceType:(unint64_t)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if ([v8 hasClientRequiredURLs])
  {
    v9 = [v8 template];
    v10 = [v9 uniqueName];
    if ([v10 containsString:@"MonthlyChallenge"])
    {
      v11 = [v8 unearned];

      if (!v11)
      {
        IsEarnable = 1;
        goto LABEL_11;
      }

      v9 = [MEMORY[0x277CBEAA8] date];
      IsEarnable = AAUIMonthlyChallengeIsEarnable(v8, v9);
    }

    else
    {

      IsEarnable = 1;
    }

LABEL_11:
    v17 = [v8 unearned];
    v16 = IsEarnable & (v17 ^ 1);
    if (IsEarnable && v17)
    {
      v18 = [(AAUIAchievementsDataProvider *)self visibilityEvaluator];
      v16 = [v18 unearnedAchievementIsVisibleNow:v8 activityMoveMode:a4 experienceType:a5];
    }

    goto LABEL_14;
  }

  v13 = ACHLogAssets();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v8 template];
    v15 = [v14 uniqueName];
    v20 = 138543362;
    v21 = v15;
    _os_log_impl(&dword_23E4A3000, v13, OS_LOG_TYPE_DEFAULT, "AAUIAchievmentsProvider Filtering achievement from UI due to missing URLS: %{public}@", &v20, 0xCu);
  }

  v16 = 0;
LABEL_14:

  return v16;
}

- (id)_oldestRecentAchievement
{
  v3 = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [(AAUIAchievementsDataProvider *)self recentAchievements];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__AAUIAchievementsDataProvider__oldestRecentAchievement__block_invoke;
  v9[3] = &unk_278C43828;
  v10 = v3;
  v5 = v3;
  v6 = [v4 sortedArrayUsingComparator:v9];

  v7 = [v6 firstObject];

  return v7;
}

uint64_t __56__AAUIAchievementsDataProvider__oldestRecentAchievement__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 relevantEarnedInstance];
  v7 = [v5 relevantEarnedInstance];

  v8 = *(a1 + 32);
  v9 = [v6 earnedDateComponents];
  v10 = [v8 dateFromComponents:v9];

  v11 = *(a1 + 32);
  v12 = [v7 earnedDateComponents];
  v13 = [v11 dateFromComponents:v12];

  v14 = [v10 compare:v13];
  return v14;
}

- (BOOL)_achievementBelongsInRecents:(id)a3 replacingRecent:(id *)a4
{
  v6 = a3;
  if (([v6 unearned] & 1) == 0)
  {
    v8 = [MEMORY[0x277CBEA80] currentCalendar];
    v9 = [v6 relevantEarnedInstance];
    v10 = [v9 earnedDateComponents];
    v11 = [v8 dateFromComponents:v10];

    v12 = [MEMORY[0x277CBEAA8] date];
    v13 = [v8 dateByAddingUnit:16 value:-7 toDate:v12 options:0];

    if ([v11 compare:v13] == -1)
    {
      v7 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v31 = a4;
    v14 = [(AAUIAchievementsDataProvider *)self recentAchievements];
    v15 = [v6 template];
    v16 = [v15 uniqueName];
    v17 = AAUIAchievementInArrayWithUniqueName(v14, v16);

    if (v17)
    {
      if (AAUICompareAchievements(v17, v6) != -1)
      {
        v7 = 0;
LABEL_17:

        goto LABEL_18;
      }

      v26 = v17;
      *v31 = v17;
    }

    else
    {
      v18 = [(AAUIAchievementsDataProvider *)self recentAchievements];
      v19 = [v18 count];

      if (v19 >= 5)
      {
        v20 = [(AAUIAchievementsDataProvider *)self _oldestRecentAchievement];
        v21 = [v20 relevantEarnedInstance];
        v22 = [v21 earnedDateComponents];
        v23 = [v8 dateFromComponents:v22];

        if ([v23 compare:v11] != -1 && (objc_msgSend(v23, "compare:", v11) || (objc_msgSend(v6, "template"), v30 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v30, "displayOrder"), objc_msgSend(v20, "template"), v24 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v24, "displayOrder"), v24, v30, v29 <= v28)))
        {
          v7 = 0;
        }

        else
        {
          v25 = v20;
          *v31 = v20;
          v7 = 1;
        }

        goto LABEL_17;
      }
    }

    v7 = 1;
    goto LABEL_17;
  }

  v7 = 0;
LABEL_19:

  return v7;
}

- (BOOL)_remoteAchievementBelongsInRelevants:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v4 template];
  v7 = [v6 availabilityStart];
  v8 = [v5 dateFromComponents:v7];
  v9 = [v5 startOfDayForDate:v8];

  v10 = [v4 template];

  v11 = [v10 availabilityEnd];
  v12 = [v5 dateFromComponents:v11];
  v13 = [v5 dateByAddingUnit:16 value:1 toDate:v12 options:0];
  v14 = [v5 startOfDayForDate:v13];

  v15 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 endDate:v14];
  v16 = [MEMORY[0x277CBEAA8] date];
  LOBYTE(v12) = [v15 containsDate:v16];

  return v12;
}

- (BOOL)_monthlyChallengeBelongsInRelevants:(id)a3
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a3;
  v5 = [v3 date];
  IsEarnable = AAUIMonthlyChallengeIsEarnable(v4, v5);

  return IsEarnable;
}

- (BOOL)_builtInBelongsInRelevants:(id)a3
{
  v3 = a3;
  v4 = [v3 template];
  v5 = [v4 canonicalUnit];

  if (v5)
  {
    v6 = [v3 template];
    v7 = [v6 canonicalUnit];

    v8 = [v3 progress];
    [v8 doubleValueForUnit:v7];
    v10 = v9;

    v11 = [v3 goal];
    [v11 doubleValueForUnit:v7];
    v13 = v12;

    v14 = [v3 template];
    v15 = [v14 uniqueName];

    if (([v15 isEqualToString:@"NewMoveRecord"] & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"NewMoveTimeRecord") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"NewExerciseRecord") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"MoveGoal200Percent") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"MoveGoal300Percent") & 1) != 0 || objc_msgSend(v15, "isEqualToString:", @"MoveGoal400Percent"))
    {
      v16 = v13 > 2.22044605e-16 && (v13 - v10) / v13 < 0.1;
      v17 = v13 > v10 && v16;
    }

    else
    {
      v17 = 0;
    }

    if (([v15 isEqualToString:@"PerfectWeekMove"] & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"PerfectWeekExercise") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"PerfectWeekStand") & 1) != 0 || objc_msgSend(v15, "isEqualToString:", @"PerfectWeekAll"))
    {
      v18 = [MEMORY[0x277CBEA80] currentCalendar];
      v19 = [MEMORY[0x277CBEAA8] date];
      v17 |= AAUITrophyCaseShouldShowPerfectWeekAchievement(v18, v19, v10);
    }

    v20 = llround(v10);
    if ([v15 isEqualToString:@"LongestMoveStreak"])
    {
      v21 = [v3 relevantEarnedInstance];
      v22 = [v21 value];
      v23 = [v3 template];
      v24 = [v23 canonicalUnit];
      [v22 doubleValueForUnit:v24];
      v26 = llround(v25);

      LOBYTE(v17) = (v20 - v26 > 0xFFFFFFFFFFFFFFFDLL) | v17;
    }

    if (([v15 isEqualToString:@"100MoveGoals"] & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"365MoveGoals") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"500MoveGoals") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"1000MoveGoals") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"1250MoveGoals") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"1500MoveGoals") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"1750MoveGoals") & 1) != 0 || objc_msgSend(v15, "isEqualToString:", @"2000MoveGoals"))
    {
      LOBYTE(v17) = (v20 - llround(v13) > 0xFFFFFFFFFFFFFFF6) | v17;
    }
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  return v17 & 1;
}

- (BOOL)_achievementBelongsInRelevants:(id)a3 replacingRelevant:(id *)a4
{
  v6 = a3;
  v7 = [v6 relevantEarnedInstance];
  v8 = [v7 earnedDateComponents];
  v9 = [MEMORY[0x277CBEA80] currentCalendar];
  v10 = [MEMORY[0x277CBEAA8] date];
  v11 = [v9 components:28 fromDate:v10];

  if (v8)
  {
    v12 = ACHCompareYearMonthDayDateComponents();
    v13 = v12 != 0;
    if ([v6 unearned])
    {
      if (!v12)
      {
        goto LABEL_26;
      }

LABEL_9:
      v16 = [v6 template];
      v17 = [v16 sourceName];
      v18 = [v17 isEqualToString:*MEMORY[0x277CE8CA0]];

      if (v18)
      {
        if (![(AAUIAchievementsDataProvider *)self _remoteAchievementBelongsInRelevants:v6])
        {
LABEL_22:
          LOBYTE(v12) = 0;
          goto LABEL_26;
        }
      }

      else
      {
        v19 = [v6 template];
        v20 = [v19 sourceName];
        v21 = [v20 isEqualToString:*MEMORY[0x277CE8C90]];

        if (v21)
        {
          if (![(AAUIAchievementsDataProvider *)self _monthlyChallengeBelongsInRelevants:v6])
          {
            goto LABEL_22;
          }
        }

        else
        {
          v22 = [v6 template];
          v23 = [v22 sourceName];
          v24 = [v23 isEqualToString:*MEMORY[0x277CE8C88]];

          if (!v24 || ![(AAUIAchievementsDataProvider *)self _builtInBelongsInRelevants:v6])
          {
            goto LABEL_22;
          }
        }
      }

      v25 = [(AAUIAchievementsDataProvider *)self relevantAchievements];
      v26 = [v6 template];
      v27 = [v26 uniqueName];
      v28 = AAUIAchievementInArrayWithUniqueName(v25, v27);

      if (v28)
      {
        if ((![v28 unearned] || (objc_msgSend(v6, "unearned") & 1) == 0) && AAUICompareAchievements(v28, v6) != -1)
        {
          LOBYTE(v12) = 0;
LABEL_25:

          goto LABEL_26;
        }

        v29 = v28;
        *a4 = v28;
      }

      LOBYTE(v12) = 1;
      goto LABEL_25;
    }
  }

  else
  {
    if ([v6 unearned])
    {
      goto LABEL_9;
    }

    v13 = 1;
  }

  v12 = [v6 template];
  v14 = [v12 earnLimit];
  v15 = *MEMORY[0x277CE8C58];

  LOBYTE(v12) = 0;
  if (v15 == v14 && v13)
  {
    goto LABEL_9;
  }

LABEL_26:

  return v12;
}

- (void)_updateAchievementsByEarnedDateComponentsWithAchievement:(id)a3 earnedInstance:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [(AAUIAchievementsDataProvider *)self achievementsByEarnedDateComponents];
  v8 = [v6 earnedDateComponents];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  v10 = [v9 allObjects];
  v11 = [v16 template];
  v12 = [v11 uniqueName];
  v13 = AAUIAchievementInArrayWithUniqueName(v10, v12);

  if (v13)
  {
    if (AAUICompareAchievementsByMostRecentEarnedDate(v13, v16) == 1)
    {
      goto LABEL_7;
    }

    [v9 removeObject:v13];
  }

  [v9 addObject:v16];
LABEL_7:
  v14 = [(AAUIAchievementsDataProvider *)self achievementsByEarnedDateComponents];
  v15 = [v6 earnedDateComponents];
  [v14 setObject:v9 forKeyedSubscript:v15];
}

- (int64_t)_updateAchievement:(id)a3 activityMoveMode:(int64_t)a4 experienceType:(unint64_t)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(AAUIAchievementsDataProvider *)self achievementsByTemplateUniqueName];
  v10 = [v8 template];
  v11 = [v10 uniqueName];
  [v9 setObject:v8 forKeyedSubscript:v11];

  if ([(AAUIAchievementsDataProvider *)self _shouldShowAchievement:v8 activityMoveMode:a4 experienceType:a5])
  {
    v12 = [v8 relevantEarnedInstance];
    if (v12)
    {
      [(AAUIAchievementsDataProvider *)self _updateAchievementsByEarnedDateComponentsWithAchievement:v8 earnedInstance:v12];
    }

    v13 = [(AAUIAchievementsDataProvider *)self filteredAchievementsByTemplateUniqueName];
    v14 = [v8 template];
    v15 = [v14 uniqueName];
    [v13 setObject:v8 forKeyedSubscript:v15];

    v16 = [v8 section];
    if (!v16)
    {
      v17 = ACHLogDefault();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v8 template];
        v19 = [v18 uniqueName];
        *buf = 138412290;
        v50 = v19;
        _os_log_impl(&dword_23E4A3000, v17, OS_LOG_TYPE_DEFAULT, "SECTION NOT FOUND FOR ACHIEVEMENT %@", buf, 0xCu);
      }

      v16 = @"NOT_FOUND";
    }

    v20 = [(AAUIAchievementsDataProvider *)self achievementsBySection];
    v21 = [v20 objectForKeyedSubscript:v16];

    if (!v21)
    {
      v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v22 = [(AAUIAchievementsDataProvider *)self achievementsBySection];
      [v22 setObject:v21 forKeyedSubscript:v16];
    }

    v23 = [v8 template];
    v24 = [v23 uniqueName];
    v25 = AAUIAchievementInArrayWithUniqueName(v21, v24);

    if (v25)
    {
      if (AAUICompareAchievements(v25, v8) == 1)
      {
        v26 = 0;
        goto LABEL_17;
      }

      [v21 removeObject:v25];
      v26 = 1;
    }

    else
    {
      v26 = 16;
    }

    [v21 addObject:v8];
LABEL_17:

    v48 = 0;
    v27 = [(AAUIAchievementsDataProvider *)self _achievementBelongsInRecents:v8 replacingRecent:&v48];
    v28 = v48;
    if (v27)
    {
      v29 = [(AAUIAchievementsDataProvider *)self recentAchievements];
      v30 = v29;
      if (v28)
      {
        v26 |= 2uLL;
        [v29 removeObject:v28];

        v30 = [(AAUIAchievementsDataProvider *)self recentAchievements];
      }

      else
      {
        v26 |= 0x20uLL;
      }

      [v30 addObject:v8];
    }

    v31 = [v8 shallowCopyWithRelevantEarnedInstance:0];
    v47 = 0;
    v32 = [(AAUIAchievementsDataProvider *)self _achievementBelongsInRelevants:v8 replacingRelevant:&v47];
    v33 = v47;
    v46 = v12;
    if (v32)
    {
      v34 = [(AAUIAchievementsDataProvider *)self relevantAchievements];
      v35 = v34;
      if (v33)
      {
        v26 |= 2uLL;
        [v34 removeObject:v33];

        v34 = [(AAUIAchievementsDataProvider *)self relevantAchievements];
        v35 = v34;
      }

      else
      {
        v26 |= 0x20uLL;
      }

      [v34 addObject:v31];
    }

    else
    {
      v45 = v31;
      v36 = v16;
      v37 = [(AAUIAchievementsDataProvider *)self relevantAchievements];
      v38 = [v8 template];
      v39 = [v38 uniqueName];
      v35 = AAUIAchievementInArrayWithUniqueName(v37, v39);

      if (v35)
      {
        v40 = [(AAUIAchievementsDataProvider *)self relevantAchievements];
        [v40 removeObject:v35];

        v26 |= 8uLL;
      }

      v16 = v36;
      v31 = v45;
    }

    v41 = [v8 template];
    v42 = [v41 sourceName];
    if ([v42 isEqualToString:*MEMORY[0x277CE8C90]])
    {
      v43 = [(AAUIAchievementsDataProvider *)self _monthlyChallengeBelongsInRelevants:v8];

      if (!v43)
      {
LABEL_34:

        goto LABEL_35;
      }

      v41 = [MEMORY[0x277CBEB18] arrayWithObject:v8];
      v42 = [(AAUIAchievementsDataProvider *)self achievementsBySection];
      [v42 setObject:v41 forKeyedSubscript:@"CURRENT_MONTHLY_CHALLENGE"];
    }

    goto LABEL_34;
  }

  v26 = [(AAUIAchievementsDataProvider *)self _deleteAchievement:v8 fromUnfiltered:0];
LABEL_35:

  return v26;
}

- (void)_deleteAchievementsByEarnedDateWithAchievement:(id)a3 earnedInstance:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(AAUIAchievementsDataProvider *)self achievementsByEarnedDateComponents];
  v8 = [v6 earnedDateComponents];

  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    [v9 removeObject:v10];
  }
}

- (int64_t)_deleteAchievement:(id)a3 fromUnfiltered:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(AAUIAchievementsDataProvider *)self filteredAchievementsByTemplateUniqueName];
  v8 = [v6 template];
  v9 = [v8 uniqueName];
  [v7 setObject:0 forKeyedSubscript:v9];

  if (v4)
  {
    v10 = [(AAUIAchievementsDataProvider *)self achievementsByTemplateUniqueName];
    v11 = [v6 template];
    v12 = [v11 uniqueName];
    [v10 setObject:0 forKeyedSubscript:v12];
  }

  v13 = [v6 relevantEarnedInstance];
  if (v13)
  {
    [(AAUIAchievementsDataProvider *)self _deleteAchievementsByEarnedDateWithAchievement:v6 earnedInstance:v13];
  }

  v14 = [v6 section];
  v15 = [(AAUIAchievementsDataProvider *)self achievementsBySection];
  v33 = v14;
  v16 = [v15 objectForKeyedSubscript:v14];

  if (v16)
  {
    v17 = [v6 template];
    v18 = [v17 uniqueName];
    v19 = AAUIAchievementInArrayWithUniqueName(v16, v18);

    if (v19)
    {
      [v16 removeObject:v19];
      v20 = 4;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = [(AAUIAchievementsDataProvider *)self recentAchievements];
  v22 = [v6 template];
  v23 = [v22 uniqueName];
  v24 = AAUIAchievementInArrayWithUniqueName(v21, v23);

  if (v24)
  {
    v25 = [(AAUIAchievementsDataProvider *)self recentAchievements];
    [v25 removeObject:v24];
  }

  v26 = [(AAUIAchievementsDataProvider *)self relevantAchievements];
  v27 = [v6 template];
  v28 = [v27 uniqueName];
  v29 = AAUIAchievementInArrayWithUniqueName(v26, v28);

  if (v29)
  {
    v30 = [(AAUIAchievementsDataProvider *)self relevantAchievements];
    [v30 removeObject:v29];
  }

  if (v24 | v29)
  {
    v31 = v20 | 8;
  }

  else
  {
    v31 = v20;
  }

  return v31;
}

- (id)_recentAndRelevantSectionIndexPathForAchievement:(id)a3
{
  v4 = a3;
  v5 = [(AAUIAchievementsDataProvider *)self recentAchievements];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CCAA70] indexPathForItem:v6 inSection:0];
  }

  return v7;
}

- (id)_mainSectionIndexPathForAchievement:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [(AAUIAchievementsDataProvider *)self orderedSections];
  v7 = [v6 indexOfObject:v5];

  v8 = [(AAUIAchievementsDataProvider *)self achievementsBySection];
  v9 = [v8 objectForKeyedSubscript:v5];

  v10 = [v9 indexOfObject:v4];
  v11 = 0;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL && v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [MEMORY[0x277CCAA70] indexPathForItem:v10 inSection:v7];
  }

  return v11;
}

void __59__AAUIAchievementsDataProvider__handleUpdatedAchievements___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_23E4A3000, v0, OS_LOG_TYPE_ERROR, "Error reading activity move mode characteristic while updating achievements. error=%@", v1, 0xCu);
}

@end