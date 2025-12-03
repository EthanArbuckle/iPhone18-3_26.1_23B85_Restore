@interface AAUIAchievementsDataProvider
- (AAUIAchievementsDataProvider)initWithHealthStore:(id)store layoutMode:(unint64_t)mode;
- (BOOL)_achievementBelongsInRecents:(id)recents replacingRecent:(id *)recent;
- (BOOL)_achievementBelongsInRelevants:(id)relevants replacingRelevant:(id *)relevant;
- (BOOL)_builtInBelongsInRelevants:(id)relevants;
- (BOOL)_monthlyChallengeBelongsInRelevants:(id)relevants;
- (BOOL)_remoteAchievementBelongsInRelevants:(id)relevants;
- (BOOL)_shouldShowAchievement:(id)achievement activityMoveMode:(int64_t)mode experienceType:(unint64_t)type;
- (NSMutableArray)allAchievementsSortedByEarnedDate;
- (_TtC22ActivityAchievementsUI15AAUIAwardsQuery)awardsQuery;
- (double)queryRetryDelay;
- (id)_achievementsRespectingOverrideDisplayState:(id)state;
- (id)_mainSectionIndexPathForAchievement:(id)achievement;
- (id)_oldestRecentAchievement;
- (id)_recentAndRelevantSectionIndexPathForAchievement:(id)achievement;
- (id)achievementAtIndexPath:(id)path;
- (id)achievementForTemplateUniqueName:(id)name;
- (id)achievementsForDateComponents:(id)components;
- (id)headerStringForSection:(int64_t)section isRecentAndRelevant:(BOOL)relevant;
- (id)recentAndRelevantAchievementAtIndexPath:(id)path;
- (id)trophyCaseAchievementForTemplateUniqueName:(id)name;
- (int64_t)_deleteAchievement:(id)achievement fromUnfiltered:(BOOL)unfiltered;
- (int64_t)_updateAchievement:(id)achievement activityMoveMode:(int64_t)mode experienceType:(unint64_t)type;
- (int64_t)numberOfItemsInRecentAndRelevantSection:(int64_t)section;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSections;
- (void)_deepCopyClientFacingModel;
- (void)_deleteAchievementsByEarnedDateWithAchievement:(id)achievement earnedInstance:(id)instance;
- (void)_handleDeletedAchievements:(id)achievements;
- (void)_handleUpdatedAchievements:(id)achievements;
- (void)_reload;
- (void)_updateAchievementsByEarnedDateComponentsWithAchievement:(id)achievement earnedInstance:(id)instance;
- (void)addInitialLoadObserver:(id)observer;
- (void)addMainSectionObserver:(id)observer;
- (void)addRecentAndRelevantSectionObserver:(id)observer;
- (void)cycleQuery;
- (void)removeInitialLoadObserver:(id)observer;
- (void)removeMainSectionObserver:(id)observer;
- (void)removeRecentAndRelevantSectionObserver:(id)observer;
- (void)setDidFinishInitialLoad:(BOOL)load;
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
  selfCopy = self;
  v99 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_modelLock);
  recentAchievements = [(AAUIAchievementsDataProvider *)selfCopy recentAchievements];
  v94 = MEMORY[0x277D85DD0];
  v95 = 3221225472;
  v96 = __AAUISortAchievementsByMostRecentEarnedDate_block_invoke;
  v97 = &__block_descriptor_33_e43_q24__0__ACHAchievement_8__ACHAchievement_16l;
  v98 = 0;
  [recentAchievements sortUsingComparator:&v94];

  relevantAchievements = [(AAUIAchievementsDataProvider *)selfCopy relevantAchievements];
  [relevantAchievements sortUsingComparator:&__block_literal_global_736];

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  achievementsBySection = [(AAUIAchievementsDataProvider *)selfCopy achievementsBySection];
  allKeys = [achievementsBySection allKeys];

  v69 = [allKeys countByEnumeratingWithState:&v79 objects:v92 count:16];
  if (v69)
  {
    v7 = *v80;
    v8 = *MEMORY[0x277CE8AA0];
    v68 = *MEMORY[0x277CE8A88];
    v64 = allKeys;
    v65 = selfCopy;
    v62 = *MEMORY[0x277CE8AA0];
    v63 = *v80;
    do
    {
      for (i = 0; i != v69; ++i)
      {
        if (*v80 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v79 + 1) + 8 * i);
        v11 = [(AAUIAchievementsDataProvider *)selfCopy achievementsBySection:v62];
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
          v21 = v20 = selfCopy;

          v7 = v18;
          v8 = v17;

          v22 = [MEMORY[0x277CBEB18] arrayWithArray:v21];

          selfCopy = v20;
          achievementsBySection2 = [(AAUIAchievementsDataProvider *)v20 achievementsBySection];
          [achievementsBySection2 setObject:v22 forKeyedSubscript:v10];

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
                template = [v31 template];
                v34 = [v32 numberWithUnsignedInteger:{objc_msgSend(template, "displayOrder")}];
                v35 = [v25 objectForKeyedSubscript:v34];

                if (!v35)
                {
                  v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  v37 = MEMORY[0x277CCABB0];
                  template2 = [v31 template];
                  v39 = [v37 numberWithUnsignedInteger:{objc_msgSend(template2, "displayOrder")}];
                  [v25 setObject:v36 forKeyedSubscript:v39];
                }

                v40 = MEMORY[0x277CCABB0];
                template3 = [v31 template];
                v42 = [v40 numberWithUnsignedInteger:{objc_msgSend(template3, "displayOrder")}];
                v43 = [v25 objectForKeyedSubscript:v42];
                [v43 addObject:v31];
              }

              v28 = [v26 countByEnumeratingWithState:&v87 objects:&v94 count:16];
            }

            while (v28);
          }

          allKeys2 = [v25 allKeys];
          v45 = [allKeys2 sortedArrayUsingSelector:sel_compare_];

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

          selfCopy = v65;
          achievementsBySection3 = [(AAUIAchievementsDataProvider *)v65 achievementsBySection];
          [achievementsBySection3 setObject:v66 forKeyedSubscript:v67];

          v7 = v63;
          allKeys = v64;
          v8 = v62;
          v12 = v71;
          i = v73;
        }

        else
        {
          [v12 sortUsingComparator:&__block_literal_global_736];
        }
      }

      v69 = [allKeys countByEnumeratingWithState:&v79 objects:v92 count:16];
    }

    while (v69);
  }

  v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  achievementsByEarnedDateComponents = [(AAUIAchievementsDataProvider *)selfCopy achievementsByEarnedDateComponents];
  allValues = [achievementsByEarnedDateComponents allValues];

  v57 = [allValues countByEnumeratingWithState:&v75 objects:v91 count:16];
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
          objc_enumerationMutation(allValues);
        }

        allObjects = [*(*(&v75 + 1) + 8 * m) allObjects];
        [v54 addObjectsFromArray:allObjects];
      }

      v58 = [allValues countByEnumeratingWithState:&v75 objects:v91 count:16];
    }

    while (v58);
  }

  v94 = MEMORY[0x277D85DD0];
  v95 = 3221225472;
  v96 = __AAUISortAchievementsByMostRecentEarnedDate_block_invoke;
  v97 = &__block_descriptor_33_e43_q24__0__ACHAchievement_8__ACHAchievement_16l;
  v98 = 0;
  [v54 sortUsingComparator:&v94];
  [(AAUIAchievementsDataProvider *)selfCopy setAllAchievementsSortedByEarnedDate:v54];
  os_unfair_lock_unlock(&selfCopy->_modelLock);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__AAUIAchievementsDataProvider__reload__block_invoke;
  block[3] = &unk_278C43800;
  block[4] = selfCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (AAUIAchievementsDataProvider)initWithHealthStore:(id)store layoutMode:(unint64_t)mode
{
  v116 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  v97.receiver = self;
  v97.super_class = AAUIAchievementsDataProvider;
  v8 = [(AAUIAchievementsDataProvider *)&v97 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_healthStore, store);
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
    if (mode == 1)
    {
      v96 = storeCopy;
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
      localizedUppercaseString = [v93 localizedUppercaseString];
      v99[2] = localizedUppercaseString;
      v89 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v87 = [v89 localizedStringForKey:v43 value:&stru_2850CB9E8 table:@"Localizable"];
      localizedUppercaseString2 = [v87 localizedUppercaseString];
      v99[3] = localizedUppercaseString2;
      v83 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v81 = [v83 localizedStringForKey:@"LIMITED_EDITION_WATCH" value:&stru_2850CB9E8 table:@"Localizable"];
      localizedUppercaseString3 = [v81 localizedUppercaseString];
      v99[4] = localizedUppercaseString3;
      v75 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v48 = [v75 localizedStringForKey:v44 value:&stru_2850CB9E8 table:@"Localizable"];
      localizedUppercaseString4 = [v48 localizedUppercaseString];
      v99[5] = localizedUppercaseString4;
      v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v51 = [v50 localizedStringForKey:v45 value:&stru_2850CB9E8 table:@"Localizable"];
      localizedUppercaseString5 = [v51 localizedUppercaseString];
      v99[6] = localizedUppercaseString5;
      v53 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v54 = [v53 localizedStringForKey:v79 value:&stru_2850CB9E8 table:@"Localizable"];
      localizedUppercaseString6 = [v54 localizedUppercaseString];
      v99[7] = localizedUppercaseString6;
      v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v99 count:8];
      orderedMainSectionHeaderStrings = v9->_orderedMainSectionHeaderStrings;
      v9->_orderedMainSectionHeaderStrings = v56;

      v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v39 = [v38 localizedStringForKey:@"RECENT" value:&stru_2850CB9E8 table:@"Localizable"];
      localizedUppercaseString7 = [v39 localizedUppercaseString];
      v98 = localizedUppercaseString7;
      v58 = [MEMORY[0x277CBEA60] arrayWithObjects:&v98 count:1];
      orderedRecentAndRelevantHeaderStrings = v9->_orderedRecentAndRelevantHeaderStrings;
      v9->_orderedRecentAndRelevantHeaderStrings = v58;
    }

    else
    {
      if (mode)
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

        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        AppIntegerValue = CFPreferencesGetAppIntegerValue(@"ACHAchievementDisplayOverrideState", [mainBundle bundleIdentifier], 0);

        v9->_overrideDisplayState = AppIntegerValue;
        v9->_queryRetryDelay = 0.1;
        v9->_modelLock._os_unfair_lock_opaque = 0;
        weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
        initialLoadObservers = v9->_initialLoadObservers;
        v9->_initialLoadObservers = weakObjectsHashTable;

        weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
        recentAndRelevantSectionObservers = v9->_recentAndRelevantSectionObservers;
        v9->_recentAndRelevantSectionObservers = weakObjectsHashTable2;

        weakObjectsHashTable3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
        mainSectionObservers = v9->_mainSectionObservers;
        v9->_mainSectionObservers = weakObjectsHashTable3;

        goto LABEL_8;
      }

      v96 = storeCopy;
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
      localizedUppercaseString7 = v9->_orderedRecentAndRelevantHeaderStrings;
      v9->_orderedRecentAndRelevantHeaderStrings = v40;
    }

    storeCopy = v96;
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
  awardsQuery = [(AAUIAchievementsDataProvider *)self awardsQuery];
  [awardsQuery deactivate];

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

- (void)addInitialLoadObserver:(id)observer
{
  observerCopy = observer;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__AAUIAchievementsDataProvider_addInitialLoadObserver___block_invoke;
  v7[3] = &unk_278C437B0;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
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

- (void)removeInitialLoadObserver:(id)observer
{
  observerCopy = observer;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__AAUIAchievementsDataProvider_removeInitialLoadObserver___block_invoke;
  v7[3] = &unk_278C437B0;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(observerQueue, v7);
}

- (void)addRecentAndRelevantSectionObserver:(id)observer
{
  observerCopy = observer;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__AAUIAchievementsDataProvider_addRecentAndRelevantSectionObserver___block_invoke;
  v7[3] = &unk_278C437B0;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(observerQueue, v7);
}

- (void)removeRecentAndRelevantSectionObserver:(id)observer
{
  observerCopy = observer;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__AAUIAchievementsDataProvider_removeRecentAndRelevantSectionObserver___block_invoke;
  v7[3] = &unk_278C437B0;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(observerQueue, v7);
}

- (void)addMainSectionObserver:(id)observer
{
  observerCopy = observer;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__AAUIAchievementsDataProvider_addMainSectionObserver___block_invoke;
  v7[3] = &unk_278C437B0;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(observerQueue, v7);
}

- (void)removeMainSectionObserver:(id)observer
{
  observerCopy = observer;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__AAUIAchievementsDataProvider_removeMainSectionObserver___block_invoke;
  v7[3] = &unk_278C437B0;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(observerQueue, v7);
}

- (void)stopFetching
{
  awardsQuery = [(AAUIAchievementsDataProvider *)self awardsQuery];
  [awardsQuery deactivate];

  awardsQuery = self->_awardsQuery;
  self->_awardsQuery = 0;
}

- (void)setDidFinishInitialLoad:(BOOL)load
{
  observerQueue = self->_observerQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__AAUIAchievementsDataProvider_setDidFinishInitialLoad___block_invoke;
  v4[3] = &unk_278C437D8;
  v4[4] = self;
  loadCopy = load;
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

- (id)headerStringForSection:(int64_t)section isRecentAndRelevant:(BOOL)relevant
{
  if (relevant)
  {
    [(AAUIAchievementsDataProvider *)self orderedRecentAndRelevantHeaderStrings];
  }

  else
  {
    [(AAUIAchievementsDataProvider *)self orderedMainSectionHeaderStrings];
  }
  v5 = ;
  v6 = [v5 objectAtIndexedSubscript:section];

  return v6;
}

- (int64_t)numberOfItemsInRecentAndRelevantSection:(int64_t)section
{
  clientRecentAchievements = [(AAUIAchievementsDataProvider *)self clientRecentAchievements];
  v4 = [clientRecentAchievements count];

  return v4;
}

- (id)recentAndRelevantAchievementAtIndexPath:(id)path
{
  pathCopy = path;
  clientRecentAchievements = [(AAUIAchievementsDataProvider *)self clientRecentAchievements];
  item = [pathCopy item];

  v7 = [clientRecentAchievements objectAtIndexedSubscript:item];

  return v7;
}

- (int64_t)numberOfSections
{
  orderedSections = [(AAUIAchievementsDataProvider *)self orderedSections];
  v3 = [orderedSections count];

  return v3;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  if (section)
  {
    orderedSections = [(AAUIAchievementsDataProvider *)self orderedSections];
    v6 = [orderedSections objectAtIndexedSubscript:section];

    clientAchievementsBySection = [(AAUIAchievementsDataProvider *)self clientAchievementsBySection];
    v8 = [clientAchievementsBySection objectForKeyedSubscript:v6];

    v9 = [v8 count];
    return v9;
  }

  else
  {
    clientRecentAchievements = [(AAUIAchievementsDataProvider *)self clientRecentAchievements];
    v12 = [clientRecentAchievements count] != 0;

    return v12;
  }
}

- (id)achievementAtIndexPath:(id)path
{
  pathCopy = path;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  orderedSections = [(AAUIAchievementsDataProvider *)self orderedSections];
  v6 = [orderedSections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  clientAchievementsBySection = [(AAUIAchievementsDataProvider *)self clientAchievementsBySection];
  v8 = [clientAchievementsBySection objectForKeyedSubscript:v6];

  item = [pathCopy item];
  v10 = [v8 objectAtIndexedSubscript:item];

  return v10;
}

- (id)trophyCaseAchievementForTemplateUniqueName:(id)name
{
  nameCopy = name;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  clientFilteredAchievementsByTemplateUniqueName = [(AAUIAchievementsDataProvider *)self clientFilteredAchievementsByTemplateUniqueName];
  v6 = [clientFilteredAchievementsByTemplateUniqueName objectForKeyedSubscript:nameCopy];

  return v6;
}

- (id)achievementForTemplateUniqueName:(id)name
{
  nameCopy = name;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  clientAchievementsByTemplateUniqueName = [(AAUIAchievementsDataProvider *)self clientAchievementsByTemplateUniqueName];
  v6 = [clientAchievementsByTemplateUniqueName objectForKeyedSubscript:nameCopy];

  return v6;
}

- (id)achievementsForDateComponents:(id)components
{
  componentsCopy = components;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  clientAchievementsByEarnedDateComponents = [(AAUIAchievementsDataProvider *)self clientAchievementsByEarnedDateComponents];
  v6 = [clientAchievementsByEarnedDateComponents objectForKeyedSubscript:componentsCopy];

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
  clientAllAchievementsSortedByEarnedDate = [(AAUIAchievementsDataProvider *)self clientAllAchievementsSortedByEarnedDate];
  v4 = clientAllAchievementsSortedByEarnedDate;
  if (clientAllAchievementsSortedByEarnedDate)
  {
    v5 = clientAllAchievementsSortedByEarnedDate;
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
  recentAchievements = [(AAUIAchievementsDataProvider *)self recentAchievements];
  v4 = [recentAchievements copy];
  [(AAUIAchievementsDataProvider *)self setClientRecentAchievements:v4];

  relevantAchievements = [(AAUIAchievementsDataProvider *)self relevantAchievements];
  v6 = [relevantAchievements copy];
  [(AAUIAchievementsDataProvider *)self setClientRelevantAchievements:v6];

  filteredAchievementsByTemplateUniqueName = [(AAUIAchievementsDataProvider *)self filteredAchievementsByTemplateUniqueName];
  v8 = [filteredAchievementsByTemplateUniqueName copy];
  [(AAUIAchievementsDataProvider *)self setClientFilteredAchievementsByTemplateUniqueName:v8];

  achievementsByTemplateUniqueName = [(AAUIAchievementsDataProvider *)self achievementsByTemplateUniqueName];
  v10 = [achievementsByTemplateUniqueName copy];
  [(AAUIAchievementsDataProvider *)self setClientAchievementsByTemplateUniqueName:v10];

  v11 = objc_alloc(MEMORY[0x277CBEAC0]);
  achievementsBySection = [(AAUIAchievementsDataProvider *)self achievementsBySection];
  v13 = [v11 initWithDictionary:achievementsBySection copyItems:1];
  [(AAUIAchievementsDataProvider *)self setClientAchievementsBySection:v13];

  v14 = objc_alloc(MEMORY[0x277CBEAC0]);
  achievementsByEarnedDateComponents = [(AAUIAchievementsDataProvider *)self achievementsByEarnedDateComponents];
  v16 = [v14 initWithDictionary:achievementsByEarnedDateComponents copyItems:1];
  [(AAUIAchievementsDataProvider *)self setClientAchievementsByEarnedDateComponents:v16];

  v17 = [(NSMutableArray *)self->_allAchievementsSortedByEarnedDate copy];
  [(AAUIAchievementsDataProvider *)self setClientAllAchievementsSortedByEarnedDate:v17];

  os_unfair_lock_unlock(&self->_modelLock);
}

- (id)_achievementsRespectingOverrideDisplayState:(id)state
{
  v44 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  overrideDisplayState = [(AAUIAchievementsDataProvider *)self overrideDisplayState];
  if (overrideDisplayState == 2)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v24 = stateCopy;
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
    if (overrideDisplayState != 1)
    {
      goto LABEL_21;
    }

    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = stateCopy;
    v7 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v7)
    {
      v8 = v7;
      v32 = stateCopy;
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
          template = [v11 template];
          canonicalUnit = [template canonicalUnit];

          if (canonicalUnit)
          {
            v15 = MEMORY[0x277CCD7E8];
            template2 = [v11 template];
            canonicalUnit2 = [template2 canonicalUnit];
            v18 = [v15 quantityWithUnit:canonicalUnit2 doubleValue:20.0];

            [v12 setValue:v18];
          }

          v19 = ACHDateComponentsForYearMonthDay();
          [v12 setEarnedDateComponents:v19];

          date = [MEMORY[0x277CBEAA8] date];
          [v12 setCreatedDate:date];

          [v12 setCreatorDevice:2];
          template3 = [v11 template];
          uniqueName = [template3 uniqueName];
          [v12 setTemplateUniqueName:uniqueName];

          v23 = [v11 shallowCopyWithRelevantEarnedInstance:v12];
          [v6 addObject:v23];
        }

        v8 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v8);
      stateCopy = v32;
    }
  }

  v30 = [MEMORY[0x277CBEB98] setWithArray:v6];

  stateCopy = v30;
LABEL_21:

  return stateCopy;
}

- (void)_handleUpdatedAchievements:(id)achievements
{
  achievementsCopy = achievements;
  if ([achievementsCopy count])
  {
    [(AAUIAchievementsDataProvider *)self setDidFinishInitialLoad:1];
  }

  v5 = [(AAUIAchievementsDataProvider *)self _achievementsRespectingOverrideDisplayState:achievementsCopy];

  achievementsDataQueue = [(AAUIAchievementsDataProvider *)self achievementsDataQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__AAUIAchievementsDataProvider__handleUpdatedAchievements___block_invoke;
  v8[3] = &unk_278C437B0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(achievementsDataQueue, v8);
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

- (void)_handleDeletedAchievements:(id)achievements
{
  achievementsCopy = achievements;
  achievementsDataQueue = [(AAUIAchievementsDataProvider *)self achievementsDataQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__AAUIAchievementsDataProvider__handleDeletedAchievements___block_invoke;
  v7[3] = &unk_278C437B0;
  v7[4] = self;
  v8 = achievementsCopy;
  v6 = achievementsCopy;
  dispatch_async(achievementsDataQueue, v7);
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

- (BOOL)_shouldShowAchievement:(id)achievement activityMoveMode:(int64_t)mode experienceType:(unint64_t)type
{
  v22 = *MEMORY[0x277D85DE8];
  achievementCopy = achievement;
  if ([achievementCopy hasClientRequiredURLs])
  {
    template = [achievementCopy template];
    uniqueName = [template uniqueName];
    if ([uniqueName containsString:@"MonthlyChallenge"])
    {
      unearned = [achievementCopy unearned];

      if (!unearned)
      {
        IsEarnable = 1;
        goto LABEL_11;
      }

      template = [MEMORY[0x277CBEAA8] date];
      IsEarnable = AAUIMonthlyChallengeIsEarnable(achievementCopy, template);
    }

    else
    {

      IsEarnable = 1;
    }

LABEL_11:
    unearned2 = [achievementCopy unearned];
    v16 = IsEarnable & (unearned2 ^ 1);
    if (IsEarnable && unearned2)
    {
      visibilityEvaluator = [(AAUIAchievementsDataProvider *)self visibilityEvaluator];
      v16 = [visibilityEvaluator unearnedAchievementIsVisibleNow:achievementCopy activityMoveMode:mode experienceType:type];
    }

    goto LABEL_14;
  }

  v13 = ACHLogAssets();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    template2 = [achievementCopy template];
    uniqueName2 = [template2 uniqueName];
    v20 = 138543362;
    v21 = uniqueName2;
    _os_log_impl(&dword_23E4A3000, v13, OS_LOG_TYPE_DEFAULT, "AAUIAchievmentsProvider Filtering achievement from UI due to missing URLS: %{public}@", &v20, 0xCu);
  }

  v16 = 0;
LABEL_14:

  return v16;
}

- (id)_oldestRecentAchievement
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  recentAchievements = [(AAUIAchievementsDataProvider *)self recentAchievements];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__AAUIAchievementsDataProvider__oldestRecentAchievement__block_invoke;
  v9[3] = &unk_278C43828;
  v10 = currentCalendar;
  v5 = currentCalendar;
  v6 = [recentAchievements sortedArrayUsingComparator:v9];

  firstObject = [v6 firstObject];

  return firstObject;
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

- (BOOL)_achievementBelongsInRecents:(id)recents replacingRecent:(id *)recent
{
  recentsCopy = recents;
  if (([recentsCopy unearned] & 1) == 0)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    relevantEarnedInstance = [recentsCopy relevantEarnedInstance];
    earnedDateComponents = [relevantEarnedInstance earnedDateComponents];
    v11 = [currentCalendar dateFromComponents:earnedDateComponents];

    date = [MEMORY[0x277CBEAA8] date];
    v13 = [currentCalendar dateByAddingUnit:16 value:-7 toDate:date options:0];

    if ([v11 compare:v13] == -1)
    {
      v7 = 0;
LABEL_18:

      goto LABEL_19;
    }

    recentCopy = recent;
    recentAchievements = [(AAUIAchievementsDataProvider *)self recentAchievements];
    template = [recentsCopy template];
    uniqueName = [template uniqueName];
    v17 = AAUIAchievementInArrayWithUniqueName(recentAchievements, uniqueName);

    if (v17)
    {
      if (AAUICompareAchievements(v17, recentsCopy) != -1)
      {
        v7 = 0;
LABEL_17:

        goto LABEL_18;
      }

      v26 = v17;
      *recentCopy = v17;
    }

    else
    {
      recentAchievements2 = [(AAUIAchievementsDataProvider *)self recentAchievements];
      v19 = [recentAchievements2 count];

      if (v19 >= 5)
      {
        _oldestRecentAchievement = [(AAUIAchievementsDataProvider *)self _oldestRecentAchievement];
        relevantEarnedInstance2 = [_oldestRecentAchievement relevantEarnedInstance];
        earnedDateComponents2 = [relevantEarnedInstance2 earnedDateComponents];
        v23 = [currentCalendar dateFromComponents:earnedDateComponents2];

        if ([v23 compare:v11] != -1 && (objc_msgSend(v23, "compare:", v11) || (objc_msgSend(recentsCopy, "template"), v30 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v30, "displayOrder"), objc_msgSend(_oldestRecentAchievement, "template"), v24 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v24, "displayOrder"), v24, v30, v29 <= v28)))
        {
          v7 = 0;
        }

        else
        {
          v25 = _oldestRecentAchievement;
          *recentCopy = _oldestRecentAchievement;
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

- (BOOL)_remoteAchievementBelongsInRelevants:(id)relevants
{
  v3 = MEMORY[0x277CBEA80];
  relevantsCopy = relevants;
  currentCalendar = [v3 currentCalendar];
  template = [relevantsCopy template];
  availabilityStart = [template availabilityStart];
  v8 = [currentCalendar dateFromComponents:availabilityStart];
  v9 = [currentCalendar startOfDayForDate:v8];

  template2 = [relevantsCopy template];

  availabilityEnd = [template2 availabilityEnd];
  v12 = [currentCalendar dateFromComponents:availabilityEnd];
  v13 = [currentCalendar dateByAddingUnit:16 value:1 toDate:v12 options:0];
  v14 = [currentCalendar startOfDayForDate:v13];

  v15 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 endDate:v14];
  date = [MEMORY[0x277CBEAA8] date];
  LOBYTE(v12) = [v15 containsDate:date];

  return v12;
}

- (BOOL)_monthlyChallengeBelongsInRelevants:(id)relevants
{
  v3 = MEMORY[0x277CBEAA8];
  relevantsCopy = relevants;
  date = [v3 date];
  IsEarnable = AAUIMonthlyChallengeIsEarnable(relevantsCopy, date);

  return IsEarnable;
}

- (BOOL)_builtInBelongsInRelevants:(id)relevants
{
  relevantsCopy = relevants;
  template = [relevantsCopy template];
  canonicalUnit = [template canonicalUnit];

  if (canonicalUnit)
  {
    template2 = [relevantsCopy template];
    canonicalUnit2 = [template2 canonicalUnit];

    progress = [relevantsCopy progress];
    [progress doubleValueForUnit:canonicalUnit2];
    v10 = v9;

    goal = [relevantsCopy goal];
    [goal doubleValueForUnit:canonicalUnit2];
    v13 = v12;

    template3 = [relevantsCopy template];
    uniqueName = [template3 uniqueName];

    if (([uniqueName isEqualToString:@"NewMoveRecord"] & 1) != 0 || (objc_msgSend(uniqueName, "isEqualToString:", @"NewMoveTimeRecord") & 1) != 0 || (objc_msgSend(uniqueName, "isEqualToString:", @"NewExerciseRecord") & 1) != 0 || (objc_msgSend(uniqueName, "isEqualToString:", @"MoveGoal200Percent") & 1) != 0 || (objc_msgSend(uniqueName, "isEqualToString:", @"MoveGoal300Percent") & 1) != 0 || objc_msgSend(uniqueName, "isEqualToString:", @"MoveGoal400Percent"))
    {
      v16 = v13 > 2.22044605e-16 && (v13 - v10) / v13 < 0.1;
      v17 = v13 > v10 && v16;
    }

    else
    {
      v17 = 0;
    }

    if (([uniqueName isEqualToString:@"PerfectWeekMove"] & 1) != 0 || (objc_msgSend(uniqueName, "isEqualToString:", @"PerfectWeekExercise") & 1) != 0 || (objc_msgSend(uniqueName, "isEqualToString:", @"PerfectWeekStand") & 1) != 0 || objc_msgSend(uniqueName, "isEqualToString:", @"PerfectWeekAll"))
    {
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      date = [MEMORY[0x277CBEAA8] date];
      v17 |= AAUITrophyCaseShouldShowPerfectWeekAchievement(currentCalendar, date, v10);
    }

    v20 = llround(v10);
    if ([uniqueName isEqualToString:@"LongestMoveStreak"])
    {
      relevantEarnedInstance = [relevantsCopy relevantEarnedInstance];
      value = [relevantEarnedInstance value];
      template4 = [relevantsCopy template];
      canonicalUnit3 = [template4 canonicalUnit];
      [value doubleValueForUnit:canonicalUnit3];
      v26 = llround(v25);

      LOBYTE(v17) = (v20 - v26 > 0xFFFFFFFFFFFFFFFDLL) | v17;
    }

    if (([uniqueName isEqualToString:@"100MoveGoals"] & 1) != 0 || (objc_msgSend(uniqueName, "isEqualToString:", @"365MoveGoals") & 1) != 0 || (objc_msgSend(uniqueName, "isEqualToString:", @"500MoveGoals") & 1) != 0 || (objc_msgSend(uniqueName, "isEqualToString:", @"1000MoveGoals") & 1) != 0 || (objc_msgSend(uniqueName, "isEqualToString:", @"1250MoveGoals") & 1) != 0 || (objc_msgSend(uniqueName, "isEqualToString:", @"1500MoveGoals") & 1) != 0 || (objc_msgSend(uniqueName, "isEqualToString:", @"1750MoveGoals") & 1) != 0 || objc_msgSend(uniqueName, "isEqualToString:", @"2000MoveGoals"))
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

- (BOOL)_achievementBelongsInRelevants:(id)relevants replacingRelevant:(id *)relevant
{
  relevantsCopy = relevants;
  relevantEarnedInstance = [relevantsCopy relevantEarnedInstance];
  earnedDateComponents = [relevantEarnedInstance earnedDateComponents];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  v11 = [currentCalendar components:28 fromDate:date];

  if (earnedDateComponents)
  {
    template5 = ACHCompareYearMonthDayDateComponents();
    v13 = template5 != 0;
    if ([relevantsCopy unearned])
    {
      if (!template5)
      {
        goto LABEL_26;
      }

LABEL_9:
      template = [relevantsCopy template];
      sourceName = [template sourceName];
      v18 = [sourceName isEqualToString:*MEMORY[0x277CE8CA0]];

      if (v18)
      {
        if (![(AAUIAchievementsDataProvider *)self _remoteAchievementBelongsInRelevants:relevantsCopy])
        {
LABEL_22:
          LOBYTE(template5) = 0;
          goto LABEL_26;
        }
      }

      else
      {
        template2 = [relevantsCopy template];
        sourceName2 = [template2 sourceName];
        v21 = [sourceName2 isEqualToString:*MEMORY[0x277CE8C90]];

        if (v21)
        {
          if (![(AAUIAchievementsDataProvider *)self _monthlyChallengeBelongsInRelevants:relevantsCopy])
          {
            goto LABEL_22;
          }
        }

        else
        {
          template3 = [relevantsCopy template];
          sourceName3 = [template3 sourceName];
          v24 = [sourceName3 isEqualToString:*MEMORY[0x277CE8C88]];

          if (!v24 || ![(AAUIAchievementsDataProvider *)self _builtInBelongsInRelevants:relevantsCopy])
          {
            goto LABEL_22;
          }
        }
      }

      relevantAchievements = [(AAUIAchievementsDataProvider *)self relevantAchievements];
      template4 = [relevantsCopy template];
      uniqueName = [template4 uniqueName];
      v28 = AAUIAchievementInArrayWithUniqueName(relevantAchievements, uniqueName);

      if (v28)
      {
        if ((![v28 unearned] || (objc_msgSend(relevantsCopy, "unearned") & 1) == 0) && AAUICompareAchievements(v28, relevantsCopy) != -1)
        {
          LOBYTE(template5) = 0;
LABEL_25:

          goto LABEL_26;
        }

        v29 = v28;
        *relevant = v28;
      }

      LOBYTE(template5) = 1;
      goto LABEL_25;
    }
  }

  else
  {
    if ([relevantsCopy unearned])
    {
      goto LABEL_9;
    }

    v13 = 1;
  }

  template5 = [relevantsCopy template];
  earnLimit = [template5 earnLimit];
  v15 = *MEMORY[0x277CE8C58];

  LOBYTE(template5) = 0;
  if (v15 == earnLimit && v13)
  {
    goto LABEL_9;
  }

LABEL_26:

  return template5;
}

- (void)_updateAchievementsByEarnedDateComponentsWithAchievement:(id)achievement earnedInstance:(id)instance
{
  achievementCopy = achievement;
  instanceCopy = instance;
  achievementsByEarnedDateComponents = [(AAUIAchievementsDataProvider *)self achievementsByEarnedDateComponents];
  earnedDateComponents = [instanceCopy earnedDateComponents];
  v9 = [achievementsByEarnedDateComponents objectForKeyedSubscript:earnedDateComponents];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  allObjects = [v9 allObjects];
  template = [achievementCopy template];
  uniqueName = [template uniqueName];
  v13 = AAUIAchievementInArrayWithUniqueName(allObjects, uniqueName);

  if (v13)
  {
    if (AAUICompareAchievementsByMostRecentEarnedDate(v13, achievementCopy) == 1)
    {
      goto LABEL_7;
    }

    [v9 removeObject:v13];
  }

  [v9 addObject:achievementCopy];
LABEL_7:
  achievementsByEarnedDateComponents2 = [(AAUIAchievementsDataProvider *)self achievementsByEarnedDateComponents];
  earnedDateComponents2 = [instanceCopy earnedDateComponents];
  [achievementsByEarnedDateComponents2 setObject:v9 forKeyedSubscript:earnedDateComponents2];
}

- (int64_t)_updateAchievement:(id)achievement activityMoveMode:(int64_t)mode experienceType:(unint64_t)type
{
  v51 = *MEMORY[0x277D85DE8];
  achievementCopy = achievement;
  achievementsByTemplateUniqueName = [(AAUIAchievementsDataProvider *)self achievementsByTemplateUniqueName];
  template = [achievementCopy template];
  uniqueName = [template uniqueName];
  [achievementsByTemplateUniqueName setObject:achievementCopy forKeyedSubscript:uniqueName];

  if ([(AAUIAchievementsDataProvider *)self _shouldShowAchievement:achievementCopy activityMoveMode:mode experienceType:type])
  {
    relevantEarnedInstance = [achievementCopy relevantEarnedInstance];
    if (relevantEarnedInstance)
    {
      [(AAUIAchievementsDataProvider *)self _updateAchievementsByEarnedDateComponentsWithAchievement:achievementCopy earnedInstance:relevantEarnedInstance];
    }

    filteredAchievementsByTemplateUniqueName = [(AAUIAchievementsDataProvider *)self filteredAchievementsByTemplateUniqueName];
    template2 = [achievementCopy template];
    uniqueName2 = [template2 uniqueName];
    [filteredAchievementsByTemplateUniqueName setObject:achievementCopy forKeyedSubscript:uniqueName2];

    section = [achievementCopy section];
    if (!section)
    {
      v17 = ACHLogDefault();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        template3 = [achievementCopy template];
        uniqueName3 = [template3 uniqueName];
        *buf = 138412290;
        v50 = uniqueName3;
        _os_log_impl(&dword_23E4A3000, v17, OS_LOG_TYPE_DEFAULT, "SECTION NOT FOUND FOR ACHIEVEMENT %@", buf, 0xCu);
      }

      section = @"NOT_FOUND";
    }

    achievementsBySection = [(AAUIAchievementsDataProvider *)self achievementsBySection];
    v21 = [achievementsBySection objectForKeyedSubscript:section];

    if (!v21)
    {
      v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
      achievementsBySection2 = [(AAUIAchievementsDataProvider *)self achievementsBySection];
      [achievementsBySection2 setObject:v21 forKeyedSubscript:section];
    }

    template4 = [achievementCopy template];
    uniqueName4 = [template4 uniqueName];
    v25 = AAUIAchievementInArrayWithUniqueName(v21, uniqueName4);

    if (v25)
    {
      if (AAUICompareAchievements(v25, achievementCopy) == 1)
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

    [v21 addObject:achievementCopy];
LABEL_17:

    v48 = 0;
    v27 = [(AAUIAchievementsDataProvider *)self _achievementBelongsInRecents:achievementCopy replacingRecent:&v48];
    v28 = v48;
    if (v27)
    {
      recentAchievements = [(AAUIAchievementsDataProvider *)self recentAchievements];
      recentAchievements2 = recentAchievements;
      if (v28)
      {
        v26 |= 2uLL;
        [recentAchievements removeObject:v28];

        recentAchievements2 = [(AAUIAchievementsDataProvider *)self recentAchievements];
      }

      else
      {
        v26 |= 0x20uLL;
      }

      [recentAchievements2 addObject:achievementCopy];
    }

    v31 = [achievementCopy shallowCopyWithRelevantEarnedInstance:0];
    v47 = 0;
    v32 = [(AAUIAchievementsDataProvider *)self _achievementBelongsInRelevants:achievementCopy replacingRelevant:&v47];
    v33 = v47;
    v46 = relevantEarnedInstance;
    if (v32)
    {
      relevantAchievements = [(AAUIAchievementsDataProvider *)self relevantAchievements];
      v35 = relevantAchievements;
      if (v33)
      {
        v26 |= 2uLL;
        [relevantAchievements removeObject:v33];

        relevantAchievements = [(AAUIAchievementsDataProvider *)self relevantAchievements];
        v35 = relevantAchievements;
      }

      else
      {
        v26 |= 0x20uLL;
      }

      [relevantAchievements addObject:v31];
    }

    else
    {
      v45 = v31;
      v36 = section;
      relevantAchievements2 = [(AAUIAchievementsDataProvider *)self relevantAchievements];
      template5 = [achievementCopy template];
      uniqueName5 = [template5 uniqueName];
      v35 = AAUIAchievementInArrayWithUniqueName(relevantAchievements2, uniqueName5);

      if (v35)
      {
        relevantAchievements3 = [(AAUIAchievementsDataProvider *)self relevantAchievements];
        [relevantAchievements3 removeObject:v35];

        v26 |= 8uLL;
      }

      section = v36;
      v31 = v45;
    }

    template6 = [achievementCopy template];
    sourceName = [template6 sourceName];
    if ([sourceName isEqualToString:*MEMORY[0x277CE8C90]])
    {
      v43 = [(AAUIAchievementsDataProvider *)self _monthlyChallengeBelongsInRelevants:achievementCopy];

      if (!v43)
      {
LABEL_34:

        goto LABEL_35;
      }

      template6 = [MEMORY[0x277CBEB18] arrayWithObject:achievementCopy];
      sourceName = [(AAUIAchievementsDataProvider *)self achievementsBySection];
      [sourceName setObject:template6 forKeyedSubscript:@"CURRENT_MONTHLY_CHALLENGE"];
    }

    goto LABEL_34;
  }

  v26 = [(AAUIAchievementsDataProvider *)self _deleteAchievement:achievementCopy fromUnfiltered:0];
LABEL_35:

  return v26;
}

- (void)_deleteAchievementsByEarnedDateWithAchievement:(id)achievement earnedInstance:(id)instance
{
  achievementCopy = achievement;
  instanceCopy = instance;
  achievementsByEarnedDateComponents = [(AAUIAchievementsDataProvider *)self achievementsByEarnedDateComponents];
  earnedDateComponents = [instanceCopy earnedDateComponents];

  v9 = [achievementsByEarnedDateComponents objectForKeyedSubscript:earnedDateComponents];

  if (v9)
  {
    [v9 removeObject:achievementCopy];
  }
}

- (int64_t)_deleteAchievement:(id)achievement fromUnfiltered:(BOOL)unfiltered
{
  unfilteredCopy = unfiltered;
  achievementCopy = achievement;
  filteredAchievementsByTemplateUniqueName = [(AAUIAchievementsDataProvider *)self filteredAchievementsByTemplateUniqueName];
  template = [achievementCopy template];
  uniqueName = [template uniqueName];
  [filteredAchievementsByTemplateUniqueName setObject:0 forKeyedSubscript:uniqueName];

  if (unfilteredCopy)
  {
    achievementsByTemplateUniqueName = [(AAUIAchievementsDataProvider *)self achievementsByTemplateUniqueName];
    template2 = [achievementCopy template];
    uniqueName2 = [template2 uniqueName];
    [achievementsByTemplateUniqueName setObject:0 forKeyedSubscript:uniqueName2];
  }

  relevantEarnedInstance = [achievementCopy relevantEarnedInstance];
  if (relevantEarnedInstance)
  {
    [(AAUIAchievementsDataProvider *)self _deleteAchievementsByEarnedDateWithAchievement:achievementCopy earnedInstance:relevantEarnedInstance];
  }

  section = [achievementCopy section];
  achievementsBySection = [(AAUIAchievementsDataProvider *)self achievementsBySection];
  v33 = section;
  v16 = [achievementsBySection objectForKeyedSubscript:section];

  if (v16)
  {
    template3 = [achievementCopy template];
    uniqueName3 = [template3 uniqueName];
    v19 = AAUIAchievementInArrayWithUniqueName(v16, uniqueName3);

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

  recentAchievements = [(AAUIAchievementsDataProvider *)self recentAchievements];
  template4 = [achievementCopy template];
  uniqueName4 = [template4 uniqueName];
  v24 = AAUIAchievementInArrayWithUniqueName(recentAchievements, uniqueName4);

  if (v24)
  {
    recentAchievements2 = [(AAUIAchievementsDataProvider *)self recentAchievements];
    [recentAchievements2 removeObject:v24];
  }

  relevantAchievements = [(AAUIAchievementsDataProvider *)self relevantAchievements];
  template5 = [achievementCopy template];
  uniqueName5 = [template5 uniqueName];
  v29 = AAUIAchievementInArrayWithUniqueName(relevantAchievements, uniqueName5);

  if (v29)
  {
    relevantAchievements2 = [(AAUIAchievementsDataProvider *)self relevantAchievements];
    [relevantAchievements2 removeObject:v29];
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

- (id)_recentAndRelevantSectionIndexPathForAchievement:(id)achievement
{
  achievementCopy = achievement;
  recentAchievements = [(AAUIAchievementsDataProvider *)self recentAchievements];
  v6 = [recentAchievements indexOfObject:achievementCopy];

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

- (id)_mainSectionIndexPathForAchievement:(id)achievement
{
  achievementCopy = achievement;
  section = [achievementCopy section];
  orderedSections = [(AAUIAchievementsDataProvider *)self orderedSections];
  v7 = [orderedSections indexOfObject:section];

  achievementsBySection = [(AAUIAchievementsDataProvider *)self achievementsBySection];
  v9 = [achievementsBySection objectForKeyedSubscript:section];

  v10 = [v9 indexOfObject:achievementCopy];
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