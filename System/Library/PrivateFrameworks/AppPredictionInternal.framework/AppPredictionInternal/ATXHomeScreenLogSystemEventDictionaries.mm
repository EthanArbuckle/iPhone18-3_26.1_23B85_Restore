@interface ATXHomeScreenLogSystemEventDictionaries
+ (id)_suggestionReasonToWidgetEventDictionariesProactiveWidgetRotationsKey:(int)a3;
+ (id)systemLevelDictionaryAccumulatorKeys;
+ (id)systemLevelDictionaryAccumulatorSplitByLocationKeys;
- (ATXHomeScreenLogSystemEventDictionaries)init;
- (id)_createNewSystemLevelDictionary;
- (id)_getOnboardingResultStringAndUpdateStackRemovedDateIfNeededWithDefaults:(id)a3;
- (id)dryRunResult;
- (void)_addKey:(id)a3 splitByLocation:(unint64_t)a4 toAggregateKey:(id)a5;
- (void)_populateSystemLevelDictionaryWithWidgetCohortAdoptionMetrics:(id)a3;
- (void)populateHasBehavioralData;
- (void)populateLifetimeNPlusOneStatistics;
- (void)populateUnlockSessionEngagementSummaryFromManager:(id)a3;
- (void)populateUsedKettle;
- (void)sendToCoreAnalytics;
- (void)updateNPlusOneLifetimeMetricsWithRotationSession:(id)a3;
- (void)updateSystemLevelSummaryForHomeScreenEvent:(id)a3;
- (void)updateSystemLevelSummaryForHomeScreenPages:(id)a3 startDate:(id)a4;
- (void)updateSystemLevelSummaryForWidgetPseudoTapWithStackShownEvent:(id)a3;
- (void)updateSystemLevelSummaryTotalUnlockSessions:(unint64_t)a3;
- (void)updateSystemLevelSummaryWithRotationSession:(id)a3;
- (void)updateSystemLevelUnlockSessionsWithWidgetDwell:(id)a3;
@end

@implementation ATXHomeScreenLogSystemEventDictionaries

- (ATXHomeScreenLogSystemEventDictionaries)init
{
  v8.receiver = self;
  v8.super_class = ATXHomeScreenLogSystemEventDictionaries;
  v2 = [(ATXHomeScreenLogSystemEventDictionaries *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    unique3PWidgetsOnHS = v2->_unique3PWidgetsOnHS;
    v2->_unique3PWidgetsOnHS = v3;

    v5 = [(ATXHomeScreenLogSystemEventDictionaries *)v2 _createNewSystemLevelDictionary];
    systemLevelEventDictionary = v2->_systemLevelEventDictionary;
    v2->_systemLevelEventDictionary = v5;
  }

  return v2;
}

+ (id)systemLevelDictionaryAccumulatorKeys
{
  if (systemLevelDictionaryAccumulatorKeys_onceToken != -1)
  {
    +[ATXHomeScreenLogSystemEventDictionaries systemLevelDictionaryAccumulatorKeys];
  }

  v3 = systemLevelDictionaryAccumulatorKeys_array;

  return v3;
}

void __79__ATXHomeScreenLogSystemEventDictionaries_systemLevelDictionaryAccumulatorKeys__block_invoke()
{
  v3[13] = *MEMORY[0x277D85DE8];
  v3[0] = @"MeanWidgetsPerStack";
  v3[1] = @"NumberOfFirstPartyWidgets";
  v3[2] = @"NumberOfThirdPartyWidgets";
  v3[3] = @"NumberOfLockUnlockSessions";
  v3[4] = @"NumberOfLockUnlockSessionsWithWidgetDwell";
  v3[5] = @"NumberOfProactiveWidgetRotationsDueToShortcutConversion";
  v3[6] = @"NumberOfProactiveWidgetRotationsDueToWidgetHeuristic";
  v3[7] = @"NumberOfProactiveWidgetRotationsDueToStalenessRotation";
  v3[8] = @"NumberOfProactiveWidgetRotationsDueToTimelineDonationNonStaleness";
  v3[9] = @"NumberOfProactiveWidgetRotationsDueToTimelineDonationStaleness";
  v3[10] = @"NumberOfProactiveWidgetRotationsDueToSuggestionWidget";
  v3[11] = @"NumberOfProactiveWidgetRotationsDueToOtherReasons";
  v3[12] = @"NumberOfHomeScreenPages";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:13];
  v1 = systemLevelDictionaryAccumulatorKeys_array;
  systemLevelDictionaryAccumulatorKeys_array = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)systemLevelDictionaryAccumulatorSplitByLocationKeys
{
  if (systemLevelDictionaryAccumulatorSplitByLocationKeys_onceToken != -1)
  {
    +[ATXHomeScreenLogSystemEventDictionaries systemLevelDictionaryAccumulatorSplitByLocationKeys];
  }

  v3 = systemLevelDictionaryAccumulatorSplitByLocationKeys_array;

  return v3;
}

void __94__ATXHomeScreenLogSystemEventDictionaries_systemLevelDictionaryAccumulatorSplitByLocationKeys__block_invoke()
{
  v3[22] = *MEMORY[0x277D85DE8];
  v3[0] = @"NumberOfSmartStacksOn";
  v3[1] = @"NumberOfDegenerateSmartStacksOn";
  v3[2] = @"NumberOfRegularStacksOn";
  v3[3] = @"NumberOfPinnedWidgetsOn";
  v3[4] = @"NumberOfUserScrollsOn";
  v3[5] = @"NumberOfUserScrollPseudoTappedRotationsOn";
  v3[6] = @"NumberOfUserScrollTappedRotationsOn";
  v3[7] = @"NumberOfUserScrollFinalOutcomePseudoTappedOn";
  v3[8] = @"NumberOfProactiveRotationsOn";
  v3[9] = @"NumberOfProactiveViewedRotationsOn";
  v3[10] = @"NumberOfProactivePseudoTappedRotationsOn";
  v3[11] = @"NumberOfProactiveTappedRotationsOn";
  v3[12] = @"NumberOfProactiveViewsOn";
  v3[13] = @"NumberOfProactivePseudoTapsOn";
  v3[14] = @"NumberOfProactiveTapsByLocationOn";
  v3[15] = @"NumberOfViewsForStackWidgetsOn";
  v3[16] = @"NumberOfPseudoTapsForStackWidgetsOn";
  v3[17] = @"NumberOfTapsForStackWidgetsOn";
  v3[18] = @"NumberOfViewsForPinnedWidgetsOn";
  v3[19] = @"NumberOfPseudoTapsForPinnedWidgetsOn";
  v3[20] = @"NumberOfTapsForPinnedWidgetsOn";
  v3[21] = @"NumberOfLockUnlockSessionsWithWidgetDwellOn";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:22];
  v1 = systemLevelDictionaryAccumulatorSplitByLocationKeys_array;
  systemLevelDictionaryAccumulatorSplitByLocationKeys_array = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (id)_createNewSystemLevelDictionary
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = +[ATXHomeScreenLogUploaderUtilities abGroup];
  [v3 setObject:v4 forKeyedSubscript:@"ABGroup"];

  [(ATXHomeScreenLogSystemEventDictionaries *)self _populateSystemLevelDictionaryWithWidgetCohortAdoptionMetrics:v3];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [objc_opt_class() systemLevelDictionaryAccumulatorKeys];
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v3 setObject:&unk_283A55EE0 forKeyedSubscript:*(*(&v24 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [objc_opt_class() systemLevelDictionaryAccumulatorSplitByLocationKeys];
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = 0;
        v16 = *(*(&v20 + 1) + 8 * j);
        do
        {
          v17 = [ATXHomeScreenLogUploaderUtilities keyByConcatenatingAccumulatorKey:v16 withLocation:v15];
          [v3 setObject:&unk_283A55EE0 forKeyedSubscript:v17];

          ++v15;
        }

        while (v15 != 6);
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v12);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_getOnboardingResultStringAndUpdateStackRemovedDateIfNeededWithDefaults:(id)a3
{
  v3 = a3;
  if (![v3 BOOLForKey:*MEMORY[0x277CEBD70]])
  {
    v8 = 0;
    goto LABEL_11;
  }

  v4 = objc_alloc_init(MEMORY[0x277CEB568]);
  v5 = [v4 numOnboardingStacksOnTheHomeScreen];

  if (v5 == 1)
  {
    v11 = [v3 stringForKey:*MEMORY[0x277CEBD90]];
    v10 = v11;
    v12 = @"_One";
  }

  else
  {
    if (!v5)
    {
      v6 = *MEMORY[0x277CEBD10];
      v7 = [v3 objectForKey:*MEMORY[0x277CEBD10]];
      v8 = @"rejected";
      v9 = [v7 isEqualToString:@"rejected"];

      if (v9)
      {
        goto LABEL_11;
      }

      [v3 setObject:@"rejected" forKey:v6];
      v10 = [MEMORY[0x277CBEAA8] now];
      [v3 setObject:v10 forKey:*MEMORY[0x277CEBD88]];
      goto LABEL_10;
    }

    v11 = [v3 stringForKey:*MEMORY[0x277CEBD90]];
    v10 = v11;
    v12 = @"_Multiple";
  }

  v8 = [v11 stringByAppendingString:v12];
LABEL_10:

LABEL_11:

  return v8;
}

- (void)_populateSystemLevelDictionaryWithWidgetCohortAdoptionMetrics:(id)a3
{
  v26 = a3;
  v4 = objc_alloc(MEMORY[0x277CBEBD0]);
  v5 = [v4 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v6 = [v5 objectForKey:*MEMORY[0x277CEBD78]];
  v7 = [v5 objectForKey:*MEMORY[0x277CEBD18]];
  v8 = [v5 objectForKey:*MEMORY[0x277CEBD88]];
  v9 = objc_opt_new();
  v10 = v9;
  if (!v6)
  {
    [v26 setObject:0 forKeyedSubscript:@"skyUpdateDate"];
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    [v26 setObject:0 forKeyedSubscript:@"becameActiveDate"];
    goto LABEL_6;
  }

  v11 = MEMORY[0x277CCABB0];
  v12 = [v9 reduceGranularityToWeekOfYear:v6];
  [v12 timeIntervalSinceReferenceDate];
  v13 = [v11 numberWithDouble:?];
  [v26 setObject:v13 forKeyedSubscript:@"skyUpdateDate"];

  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = MEMORY[0x277CCABB0];
  v15 = [v10 reduceGranularityToWeekOfYear:v7];
  [v15 timeIntervalSinceReferenceDate];
  v16 = [v14 numberWithDouble:?];
  [v26 setObject:v16 forKeyedSubscript:@"becameActiveDate"];

LABEL_6:
  v17 = [(ATXHomeScreenLogSystemEventDictionaries *)self _getOnboardingResultStringAndUpdateStackRemovedDateIfNeededWithDefaults:v5];
  [v26 setObject:v17 forKeyedSubscript:@"onboardingResult"];

  if (v6 && v8)
  {
    v18 = MEMORY[0x277CCABB0];
    [v10 convertDate:v8 toDeltaFromSkyUpdateDate:v6];
    v19 = [v18 numberWithDouble:?];
    [v26 setObject:v19 forKeyedSubscript:@"dateRemovedOnboardingStacks"];
  }

  else
  {
    [v26 setObject:0 forKeyedSubscript:@"dateRemovedOnboardingStacks"];
  }

  v20 = [v5 objectForKey:*MEMORY[0x277CEBD10]];
  [v26 setObject:v20 forKeyedSubscript:@"azulUsageStatus"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "BOOLForKey:", *MEMORY[0x277CEBD70])}];
  [v26 setObject:v21 forKeyedSubscript:@"sawOnboarding"];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "BOOLForKey:", *MEMORY[0x277CEBD98])}];
  [v26 setObject:v22 forKeyedSubscript:@"onboardingWasPersonalized"];

  if ([v5 BOOLForKey:*MEMORY[0x277CEBD20]])
  {
    v23 = objc_alloc_init(MEMORY[0x277CEB568]);
    v24 = [v23 hasWidgetsOnTheHomeScreen];

    if (v24)
    {
      v25 = @"active";
    }

    else
    {
      v25 = @"abandoned";
    }
  }

  else
  {
    v25 = @"neverUsed";
  }

  [v26 setObject:v25 forKeyedSubscript:@"currentUsageStatus"];
}

- (void)sendToCoreAnalytics
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    systemLevelEventDictionary = self->_systemLevelEventDictionary;
    v10 = 138412290;
    v11 = systemLevelEventDictionary;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_INFO, "ATXHomeScreenLogUploader: System level dictionary: %@", &v10, 0xCu);
  }

  v5 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    unlockSessionEngagementDictionary = self->_unlockSessionEngagementDictionary;
    v10 = 138412290;
    v11 = unlockSessionEngagementDictionary;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_INFO, "ATXHomeScreenLogUploader: Engagement summary dictionary: %@", &v10, 0xCu);
  }

  v7 = self->_systemLevelEventDictionary;
  AnalyticsSendEvent();
  v8 = self->_unlockSessionEngagementDictionary;
  AnalyticsSendEvent();
  v9 = *MEMORY[0x277D85DE8];
}

- (id)dryRunResult
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"System Level Dictionary";
  v6[1] = @"Engagement Summary Dictionary";
  unlockSessionEngagementDictionary = self->_unlockSessionEngagementDictionary;
  v7[0] = self->_systemLevelEventDictionary;
  v7[1] = unlockSessionEngagementDictionary;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)populateUnlockSessionEngagementSummaryFromManager:(id)a3
{
  v4 = [a3 summarizeCompletedSessions];
  v5 = [v4 mutableCopy];
  unlockSessionEngagementDictionary = self->_unlockSessionEngagementDictionary;
  self->_unlockSessionEngagementDictionary = v5;

  v7 = [(NSMutableDictionary *)self->_systemLevelEventDictionary objectForKeyedSubscript:@"NumberOfLockUnlockSessionsWithWidgetDwell"];
  [(NSMutableDictionary *)self->_unlockSessionEngagementDictionary setObject:v7 forKeyedSubscript:@"NumberOfLockUnlockSessionsWithWidgetDwell"];

  v8 = +[ATXHomeScreenLogUploaderUtilities abGroup];
  [(NSMutableDictionary *)self->_unlockSessionEngagementDictionary setObject:v8 forKeyedSubscript:@"ABGroup"];
}

- (void)updateSystemLevelSummaryTotalUnlockSessions:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)self->_systemLevelEventDictionary setObject:v4 forKeyedSubscript:@"NumberOfLockUnlockSessions"];
}

- (void)updateSystemLevelUnlockSessionsWithWidgetDwell:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = self;
  [ATXHomeScreenLogUploaderUtilities incrementDictionary:self->_systemLevelEventDictionary forKey:@"NumberOfLockUnlockSessionsWithWidgetDwell"];
  v5 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v19 + 1) + 8 * v10) stackLocation];
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
        v13 = [v5 containsObject:v12];

        if ((v13 & 1) == 0)
        {
          systemLevelEventDictionary = v18->_systemLevelEventDictionary;
          v15 = [ATXHomeScreenLogUploaderUtilities keyByConcatenatingAccumulatorKey:@"NumberOfLockUnlockSessionsWithWidgetDwellOn" withLocation:v11];
          [ATXHomeScreenLogUploaderUtilities incrementDictionary:systemLevelEventDictionary forKey:v15];

          v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
          [v5 addObject:v16];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)updateSystemLevelSummaryForHomeScreenEvent:(id)a3
{
  v9 = a3;
  if ([v9 stackKind] == 1)
  {
    v4 = [v9 eventTypeString];
    if ([v4 isEqualToString:@"Unknown"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"HomeScreenPageShown") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"HomeScreenDisappeared") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"StackChanged"))
    {
      goto LABEL_6;
    }

    if ([v4 isEqualToString:@"WidgetTapped"])
    {

      v5 = [v9 stackLocation];
      systemLevelEventDictionary = self->_systemLevelEventDictionary;
      v7 = @"NumberOfTapsForPinnedWidgetsOn";
    }

    else
    {
      if ([v4 isEqualToString:@"WidgetLongLook"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"WidgetUserFeedback") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"UserStackConfigChanged") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"DeviceLocked") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"DeviceUnlocked") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"PinnedWidgetAdded") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"PinnedWidgetDeleted") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"SpecialPageAppeared") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"SpecialPageDisappeared"))
      {
LABEL_6:

        [v9 stackLocation];
        goto LABEL_7;
      }

      if (([v4 isEqualToString:@"StackShown"] & 1) == 0)
      {
        if (([v4 isEqualToString:@"StackDisappeared"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"StackCreated") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"StackDeleted") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"WidgetAddedToStack") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"WidgetRemovedFromStack") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"StackVisibilityChanged") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"AppAdded") & 1) == 0)
        {
          [v4 isEqualToString:@"AppRemoved"];
        }

        goto LABEL_6;
      }

      v5 = [v9 stackLocation];
      systemLevelEventDictionary = self->_systemLevelEventDictionary;
      v7 = @"NumberOfViewsForPinnedWidgetsOn";
    }

    v8 = [ATXHomeScreenLogUploaderUtilities keyByConcatenatingAccumulatorKey:v7 withLocation:v5];
    [ATXHomeScreenLogUploaderUtilities incrementDictionary:systemLevelEventDictionary forKey:v8];
  }

LABEL_7:
}

- (void)updateSystemLevelSummaryForHomeScreenPages:(id)a3 startDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(ATXDegenerateStackAnalyzer);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __96__ATXHomeScreenLogSystemEventDictionaries_updateSystemLevelSummaryForHomeScreenPages_startDate___block_invoke;
  v13[3] = &unk_27859B130;
  v13[4] = self;
  v16 = &v22;
  v17 = &v18;
  v9 = v8;
  v14 = v9;
  v10 = v7;
  v15 = v10;
  [v6 enumerateObjectsUsingBlock:v13];
  v11 = v23[3];
  if (v11)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:v19[3] / v11];
    [(NSMutableDictionary *)self->_systemLevelEventDictionary setObject:v12 forKeyedSubscript:@"MeanWidgetsPerStack"];
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
}

void __96__ATXHomeScreenLogSystemEventDictionaries_updateSystemLevelSummaryForHomeScreenPages_startDate___block_invoke(uint64_t a1, void *a2)
{
  v60 = *MEMORY[0x277D85DE8];
  v43 = a2;
  v3 = ATXStackLocationForPageAndIndex();
  v4 = off_278593000;
  if (ATXStackLocationIsHomeScreen())
  {
    [ATXHomeScreenLogUploaderUtilities incrementDictionary:*(*(a1 + 32) + 8) forKey:@"NumberOfHomeScreenPages"];
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v5 = v43;
  v6 = [v43 stacks];
  v7 = [v5 panels];
  v8 = [v6 arrayByAddingObjectsFromArray:v7];

  obj = v8;
  v47 = [v8 countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v47)
  {
    v46 = *v55;
    do
    {
      v9 = 0;
      do
      {
        if (*v55 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v54 + 1) + 8 * v9);
        v11 = [v10 widgets];
        v12 = [v11 count];

        v48 = v9;
        if (v12 == 1)
        {
          v13 = v4[277];
          v14 = *(*(a1 + 32) + 8);
          v15 = v13;
          v16 = @"NumberOfPinnedWidgetsOn";
        }

        else
        {
          ++*(*(*(a1 + 56) + 8) + 24);
          v20 = [v10 widgets];
          *(*(*(a1 + 64) + 8) + 24) += [v20 count];

          v21 = [v10 allowsSmartRotate];
          v22 = v4[277];
          v23 = *(*(a1 + 32) + 8);
          if (!v21)
          {
            v17 = [(__objc2_class *)v4[277] keyByConcatenatingAccumulatorKey:@"NumberOfRegularStacksOn" withLocation:v3];
            v18 = v22;
            v19 = v23;
            goto LABEL_15;
          }

          v24 = [(__objc2_class *)v4[277] keyByConcatenatingAccumulatorKey:@"NumberOfSmartStacksOn" withLocation:v3];
          [(__objc2_class *)v22 incrementDictionary:v23 forKey:v24];

          if (![*(a1 + 40) isSmartStackPossiblyDegenerate:v10 onPage:v44 usingTimelineEntriesSinceDate:*(a1 + 48)])
          {
            goto LABEL_16;
          }

          v13 = v4[277];
          v14 = *(*(a1 + 32) + 8);
          v15 = v13;
          v16 = @"NumberOfDegenerateSmartStacksOn";
        }

        v17 = [(__objc2_class *)v15 keyByConcatenatingAccumulatorKey:v16 withLocation:v3];
        v18 = v13;
        v19 = v14;
LABEL_15:
        [(__objc2_class *)v18 incrementDictionary:v19 forKey:v17];

LABEL_16:
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v49 = [v10 widgets];
        v25 = [v49 countByEnumeratingWithState:&v50 objects:v58 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v51;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v51 != v27)
              {
                objc_enumerationMutation(v49);
              }

              v29 = *(*(&v50 + 1) + 8 * i);
              v30 = v4[277];
              v31 = [v29 extensionBundleId];
              LOBYTE(v30) = [(__objc2_class *)v30 isFirstPartyApp:v31];

              v32 = @"NumberOfFirstPartyWidgets";
              if ((v30 & 1) == 0)
              {
                IsHomeScreen = ATXStackLocationIsHomeScreen();
                v32 = @"NumberOfThirdPartyWidgets";
                if (IsHomeScreen)
                {
                  v34 = *(*(a1 + 32) + 24);
                  v35 = MEMORY[0x277CEB9B0];
                  [v29 extensionBundleId];
                  v36 = v4;
                  v38 = v37 = v3;
                  v39 = [v29 widgetKind];
                  v40 = [v35 stringRepresentationForExtensionBundleId:v38 kind:v39];
                  [v34 addObject:v40];

                  v3 = v37;
                  v4 = v36;
                  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(a1 + 32) + 24), "count")}];
                  [*(*(a1 + 32) + 8) setObject:v41 forKeyedSubscript:@"Num3PWidgetsOnHS"];

                  v32 = @"NumberOfThirdPartyWidgets";
                }
              }

              [(__objc2_class *)v4[277] incrementDictionary:*(*(a1 + 32) + 8) forKey:v32];
            }

            v26 = [v49 countByEnumeratingWithState:&v50 objects:v58 count:16];
          }

          while (v26);
        }

        v9 = v48 + 1;
      }

      while (v48 + 1 != v47);
      v47 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
    }

    while (v47);
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)updateNPlusOneLifetimeMetricsWithRotationSession:(id)a3
{
  v6 = a3;
  if ([v6 engagementStatus] == 5)
  {
    v3 = objc_alloc(MEMORY[0x277CBEBD0]);
    v4 = *MEMORY[0x277CEBD00];
    v5 = [v3 initWithSuiteName:*MEMORY[0x277CEBD00]];
    [v5 setInteger:objc_msgSend(v5 forKey:{"integerForKey:", @"LifetimeNPlusOnesDismissed", @"LifetimeNPlusOnesDismissed"}];
    if ([v6 engagementStatus] != 6)
    {
      goto LABEL_9;
    }

    if (v5)
    {
LABEL_8:
      [v5 setInteger:objc_msgSend(v5 forKey:{"integerForKey:", @"LifetimeNPlusOnesNeverShown", @"LifetimeNPlusOnesNeverShown"}];
LABEL_9:
      if ([v6 engagementStatus] != 7)
      {
        goto LABEL_16;
      }

      if (v5)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

LABEL_7:
    v5 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:v4];
    goto LABEL_8;
  }

  if ([v6 engagementStatus] == 6)
  {
    v4 = *MEMORY[0x277CEBD00];
    goto LABEL_7;
  }

  if ([v6 engagementStatus] == 7)
  {
    v4 = *MEMORY[0x277CEBD00];
LABEL_14:
    v5 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:v4];
LABEL_15:
    [v5 setInteger:objc_msgSend(v5 forKey:{"integerForKey:", @"LifetimeNPlusOnesAddedToStack", @"LifetimeNPlusOnesAddedToStack"}];
    goto LABEL_16;
  }

  v5 = 0;
LABEL_16:
}

- (void)populateLifetimeNPlusOneStatistics
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v7 = [v3 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "integerForKey:", @"LifetimeNPlusOnesDismissed"}];
  [(NSMutableDictionary *)self->_systemLevelEventDictionary setObject:v4 forKeyedSubscript:@"LifetimeNPlusOnesDismissed"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "integerForKey:", @"LifetimeNPlusOnesNeverShown"}];
  [(NSMutableDictionary *)self->_systemLevelEventDictionary setObject:v5 forKeyedSubscript:@"LifetimeNPlusOnesNeverShown"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "integerForKey:", @"LifetimeNPlusOnesAddedToStack"}];
  [(NSMutableDictionary *)self->_systemLevelEventDictionary setObject:v6 forKeyedSubscript:@"LifetimeNPlusOnesAddedToStack"];
}

- (void)updateSystemLevelSummaryWithRotationSession:(id)a3
{
  v4 = a3;
  v5 = [v4 startingStackChangeEvent];
  v6 = [v5 stackLocation];

  v7 = [ATXHomeScreenLogUploaderUtilities isRotationSessionDueToProactive:v4];
  v8 = [ATXHomeScreenLogUploaderUtilities isRotationSessionDueToUserScroll:v4];
  v21 = v8;
  if (v7)
  {
    systemLevelEventDictionary = self->_systemLevelEventDictionary;
    v10 = [ATXHomeScreenLogUploaderUtilities keyByConcatenatingAccumulatorKey:@"NumberOfProactiveRotationsOn" withLocation:v6];
    [ATXHomeScreenLogUploaderUtilities incrementDictionary:systemLevelEventDictionary forKey:v10];

    v11 = objc_opt_class();
    v12 = [v4 systemSuggestSuggestionLayout];
    v13 = [v11 _suggestionReasonToWidgetEventDictionariesProactiveWidgetRotationsKey:{+[ATXHomeScreenLogUploaderUtilities suggestionReasonForSuggestionLayout:](ATXHomeScreenLogUploaderUtilities, "suggestionReasonForSuggestionLayout:", v12)}];

    v14 = self->_systemLevelEventDictionary;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_6;
    }

    v15 = self->_systemLevelEventDictionary;
    v13 = [ATXHomeScreenLogUploaderUtilities keyByConcatenatingAccumulatorKey:@"NumberOfUserScrollsOn" withLocation:v6];
    v14 = v15;
  }

  [ATXHomeScreenLogUploaderUtilities incrementDictionary:v14 forKey:v13];

LABEL_6:
  if ([v4 isNPlusOneRotation])
  {
    [(ATXHomeScreenLogSystemEventDictionaries *)self updateNPlusOneLifetimeMetricsWithRotationSession:v4];
  }

  v16 = +[ATXHomeScreenLogSystemEventRotationSessionEngagementKeyTracker keyTrackerForRotationSessionStackEngagementStatus:](ATXHomeScreenLogSystemEventRotationSessionEngagementKeyTracker, "keyTrackerForRotationSessionStackEngagementStatus:", [v4 engagementStatus]);
  v17 = self->_systemLevelEventDictionary;
  v18 = [v16 userScrollFinalOutcomeKey];
  v19 = [ATXHomeScreenLogUploaderUtilities keyByConcatenatingAccumulatorKey:v18 withLocation:v6];
  [ATXHomeScreenLogUploaderUtilities incrementDictionary:v17 forKey:v19];

  v20 = [ATXHomeScreenLogUploaderUtilities countsForRotationEngagementStatusHistory:v4];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __87__ATXHomeScreenLogSystemEventDictionaries_updateSystemLevelSummaryWithRotationSession___block_invoke;
  v22[3] = &unk_27859B158;
  v22[4] = self;
  v22[5] = v6;
  v23 = v7;
  v24 = v21;
  [v20 enumerateKeysAndObjectsUsingBlock:v22];
}

void __87__ATXHomeScreenLogSystemEventDictionaries_updateSystemLevelSummaryWithRotationSession___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 unsignedIntValue];
  v7 = [v5 unsignedIntValue];

  v8 = [ATXHomeScreenLogSystemEventRotationSessionEngagementKeyTracker keyTrackerForRotationSessionStackEngagementStatus:v6];
  if (v8)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = *(*(a1 + 32) + 8);
    v20 = v8;
    v11 = [v8 statusAggregationKey];
    v12 = [ATXHomeScreenLogUploaderUtilities keyByConcatenatingAccumulatorKey:v11 withLocation:*(a1 + 40)];
    [ATXHomeScreenLogUploaderUtilities add:v7 toDictionary:v10 forKey:v12];

    if (*(a1 + 48) == 1)
    {
      v13 = *(*(a1 + 32) + 8);
      v14 = [v20 proactiveStatusAggregationKey];
      v15 = [ATXHomeScreenLogUploaderUtilities keyByConcatenatingAccumulatorKey:v14 withLocation:*(a1 + 40)];
      [ATXHomeScreenLogUploaderUtilities add:v7 toDictionary:v13 forKey:v15];

      v16 = *(*(a1 + 32) + 8);
      v17 = [v20 proactiveStatusBooleanKey];
    }

    else
    {
      v8 = v20;
      if (*(a1 + 49) != 1)
      {
        goto LABEL_10;
      }

      v16 = *(*(a1 + 32) + 8);
      v17 = [v20 userScrollStatusBooleanKey];
    }

    v18 = v17;
    v19 = [ATXHomeScreenLogUploaderUtilities keyByConcatenatingAccumulatorKey:v17 withLocation:*(a1 + 40)];
    [ATXHomeScreenLogUploaderUtilities incrementDictionary:v16 forKey:v19];

    v8 = v20;
  }

LABEL_10:
}

- (void)updateSystemLevelSummaryForWidgetPseudoTapWithStackShownEvent:(id)a3
{
  v7 = a3;
  if ([v7 stackKind] == 1)
  {
    v4 = [v7 stackLocation];
    systemLevelEventDictionary = self->_systemLevelEventDictionary;
    v6 = [ATXHomeScreenLogUploaderUtilities keyByConcatenatingAccumulatorKey:@"NumberOfPseudoTapsForPinnedWidgetsOn" withLocation:v4];
    [ATXHomeScreenLogUploaderUtilities incrementDictionary:systemLevelEventDictionary forKey:v6];
  }
}

+ (id)_suggestionReasonToWidgetEventDictionariesProactiveWidgetRotationsKey:(int)a3
{
  if ((a3 - 1) > 7)
  {
    return @"NumberOfProactiveWidgetRotationsDueToStalenessRotation";
  }

  else
  {
    return off_27859B178[a3 - 1];
  }
}

- (void)_addKey:(id)a3 splitByLocation:(unint64_t)a4 toAggregateKey:(id)a5
{
  systemLevelEventDictionary = self->_systemLevelEventDictionary;
  v9 = a5;
  v10 = [ATXHomeScreenLogUploaderUtilities keyByConcatenatingAccumulatorKey:a3 withLocation:a4];
  v11 = [(NSMutableDictionary *)systemLevelEventDictionary objectForKeyedSubscript:v10];

  +[ATXHomeScreenLogUploaderUtilities add:toDictionary:forKey:](ATXHomeScreenLogUploaderUtilities, "add:toDictionary:forKey:", [v11 unsignedIntValue], self->_systemLevelEventDictionary, v9);
}

- (void)populateHasBehavioralData
{
  v3 = MEMORY[0x277CCABB0];
  v6 = objc_opt_new();
  [v6 uniqueAppsLaunchedOverLast28Days];
  v5 = [v3 numberWithInt:v4 > 15.0];
  [(NSMutableDictionary *)self->_systemLevelEventDictionary setObject:v5 forKeyedSubscript:@"HasBehavioralData"];
}

- (void)populateUsedKettle
{
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = [v4 dateByAddingUnit:16 value:-28 toDate:v5 options:0];

  v7 = BiomeLibrary();
  v8 = [v7 UserFocus];
  v9 = [v8 ComputedMode];
  v10 = [v9 atx_publisherFromStartDate:v6];

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__ATXHomeScreenLogSystemEventDictionaries_populateUsedKettle__block_invoke_2;
  v13[3] = &unk_278597E00;
  v13[4] = &v14;
  v11 = [v10 sinkWithCompletion:&__block_literal_global_256 shouldContinue:v13];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:*(v15 + 24)];
  [(NSMutableDictionary *)self->_systemLevelEventDictionary setObject:v12 forKeyedSubscript:@"UsedKettle"];

  _Block_object_dispose(&v14, 8);
  objc_autoreleasePoolPop(v3);
}

uint64_t __61__ATXHomeScreenLogSystemEventDictionaries_populateUsedKettle__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  if ([v3 semanticType] == 2 || !objc_msgSend(v3, "updateReason"))
  {
    v4 = 1;
  }

  else
  {
    v4 = 1;
    if ([v3 updateSource])
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      v4 = 0;
    }
  }

  return v4;
}

@end