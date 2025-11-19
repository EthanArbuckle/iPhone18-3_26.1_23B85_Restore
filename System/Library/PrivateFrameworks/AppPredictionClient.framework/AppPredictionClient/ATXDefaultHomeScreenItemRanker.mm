@interface ATXDefaultHomeScreenItemRanker
+ (BOOL)_shouldDownrankWidget:(id)a3;
+ (id)stringForAlgorithmType:(int)a3;
+ (int64_t)_downrankComparator:(id)a3 widget2:(id)a4;
+ (void)filterOutDuplicateWidgetsFromSameAppBundleId:(id)a3;
- (ATXDefaultHomeScreenItemRanker)initWithCachedWidgetPersonalityToAppScore:(id)a3 spotlightAppLaunchHistogram:(id)a4 appLaunchCounts:(id)a5;
- (double)_rawLaunchScoreForWidget:(id)a3;
- (double)_uniqueDaysLaunchedScoreForWidget:(id)a3;
- (id)_globalPopularityPlistStringKey:(int)a3;
- (id)_rankerPlistToDictionary:(int)a3;
- (id)_scoreForWidget:(id)a3 withGlobalPopularityDictionary:(id)a4;
- (id)_timelineRelevanceAdoptionHelper:(int)a3;
- (id)_widgetsBySortingAndFilteringWidgets:(id)a3 byAppLaunchAndRankerPlist:(int)a4 regularlyUsedThreshold:(double)a5;
- (id)widgetsBySortingAndFilteringWidgetsUsingOnboardingStacksAlgorithm:(id)a3 algorithm:(int)a4 regularlyUsedThreshold:(double)a5;
- (id)widgetsBySortingAndFilteringWidgetsUsingPersonalizedGalleryAlgorithm:(id)a3 rankerPlistType:(int)a4 regularlyUsedThreshold:(double)a5 limit:(id)a6;
- (id)widgetsBySortingWidgetsUsingDayZeroGalleryAlgorithm:(id)a3;
- (int64_t)_rankerDictionaryComparator:(id)a3 timelineRelevanceAdoptionHelper:(id)a4 widget1:(id)a5 widget2:(id)a6;
- (int64_t)_uniqueDaysLaunchedComparatorForWidget1:(id)a3 widget2:(id)a4;
- (unint64_t)_appUsageFrequencyForWidget:(id)a3 regularlyUsedThreshold:(double)a4;
- (void)_filterOutWidgetsFromProtectedApps:(id)a3;
- (void)_filterOutWidgetsNotFromTopLaunchedApps:(id)a3;
- (void)_filterOutWidgetsThatAreNotRegularlyUsed:(id)a3 regularlyUsedThreshold:(double)a4;
- (void)_sortWidgets:(id)a3 byRankerPlist:(int)a4 shouldDownRankAlreadyInstalledWidgets:(BOOL)a5;
- (void)_sortWidgetsByDistinctDaysAppWasLaunched:(id)a3 shouldDownRankAlreadyInstalledWidgets:(BOOL)a4;
- (void)_sortWidgetsByRawLaunchCounts:(id)a3 shouldDownRankAlreadyInstalledWidgets:(BOOL)a4;
@end

@implementation ATXDefaultHomeScreenItemRanker

- (ATXDefaultHomeScreenItemRanker)initWithCachedWidgetPersonalityToAppScore:(id)a3 spotlightAppLaunchHistogram:(id)a4 appLaunchCounts:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ATXDefaultHomeScreenItemRanker;
  v12 = [(ATXDefaultHomeScreenItemRanker *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_cachedWidgetPersonalityToAppScore, a3);
    objc_storeStrong(&v13->_spotlightAppLaunchHistogram, a4);
    objc_storeStrong(&v13->_appLaunchCounts, a5);
  }

  return v13;
}

+ (int64_t)_downrankComparator:(id)a3 widget2:(id)a4
{
  v6 = a4;
  v7 = [a1 _shouldDownrankWidget:a3];
  v8 = [a1 _shouldDownrankWidget:v6];

  if ((v7 ^ 1 | v8))
  {
    return (((v7 ^ 1) & v8) << 63) >> 63;
  }

  else
  {
    return 1;
  }
}

+ (BOOL)_shouldDownrankWidget:(id)a3
{
  v3 = a3;
  v4 = [v3 rankType] == 4 || objc_msgSend(v3, "rankType") == 6;

  return v4;
}

- (int64_t)_rankerDictionaryComparator:(id)a3 timelineRelevanceAdoptionHelper:(id)a4 widget1:(id)a5 widget2:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!(v10 | v11))
  {
    v26 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [ATXDefaultHomeScreenItemRanker _rankerDictionaryComparator:v26 timelineRelevanceAdoptionHelper:? widget1:? widget2:?];
    }

    goto LABEL_9;
  }

  if (v11)
  {
    v14 = [v12 avocadoDescriptor];
    v15 = [v14 extensionBundleIdentifier];
    v28 = v12;
    v16 = [v12 avocadoDescriptor];
    v17 = [v16 kind];
    v18 = [v11 globalDiverseSchemaRawNumber:v15 kind:v17];

    v19 = [v13 avocadoDescriptor];
    v20 = [v19 extensionBundleIdentifier];
    v21 = [v13 avocadoDescriptor];
    [v21 kind];
    v23 = v22 = self;
    v24 = [v11 globalDiverseSchemaRawNumber:v20 kind:v23];

    self = v22;
    if (v18)
    {
      goto LABEL_4;
    }

LABEL_19:
    v12 = v28;
    goto LABEL_10;
  }

  if (!v10)
  {
LABEL_9:
    v24 = 0;
    v18 = 0;
    goto LABEL_10;
  }

  v28 = v12;
  v18 = [(ATXDefaultHomeScreenItemRanker *)self _scoreForWidget:v12 withGlobalPopularityDictionary:v10];
  v24 = [(ATXDefaultHomeScreenItemRanker *)self _scoreForWidget:v13 withGlobalPopularityDictionary:v10];
  if (!v18)
  {
    goto LABEL_19;
  }

LABEL_4:
  v12 = v28;
  if (v24)
  {
    v25 = [v24 compare:v18];
LABEL_15:

    goto LABEL_16;
  }

LABEL_10:
  if (v18 | v24)
  {
    if (v18)
    {
      v25 = -1;
    }

    else
    {
      v25 = 1;
    }

    goto LABEL_15;
  }

  v25 = [(ATXDefaultHomeScreenItemRanker *)self _uniqueDaysLaunchedComparatorForWidget1:v12 widget2:v13];
LABEL_16:

  return v25;
}

- (id)_scoreForWidget:(id)a3 withGlobalPopularityDictionary:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 avocadoDescriptor];
  v8 = [v7 extensionBundleIdentifier];
  v9 = [v6 avocadoDescriptor];

  v10 = [v9 kind];
  v11 = [ATXWidgetPersonality stringRepresentationForExtensionBundleId:v8 kind:v10];

  v12 = [v5 objectForKeyedSubscript:v11];

  return v12;
}

- (double)_uniqueDaysLaunchedScoreForWidget:(id)a3
{
  v4 = a3;
  v5 = [v4 avocadoDescriptor];
  v6 = [v5 extensionBundleIdentifier];
  v7 = [v4 avocadoDescriptor];
  v8 = [v7 kind];
  v9 = [ATXWidgetPersonality stringRepresentationForExtensionBundleId:v6 kind:v8];

  v10 = [(NSMutableDictionary *)self->_cachedWidgetPersonalityToAppScore objectForKeyedSubscript:v9];

  if (!v10)
  {
    v11 = [[ATXDefaultHomeScreenItemAppLaunchScorer alloc] initWithWidget:v4 appLaunchHistogram:self->_spotlightAppLaunchHistogram];
    v12 = [(ATXDefaultHomeScreenItemAppLaunchScorer *)v11 scoreWithCachedAppLaunchData:self->_appLaunchCounts];
    [(NSMutableDictionary *)self->_cachedWidgetPersonalityToAppScore setObject:v12 forKeyedSubscript:v9];
  }

  v13 = [(NSMutableDictionary *)self->_cachedWidgetPersonalityToAppScore objectForKeyedSubscript:v9];
  v14 = [v13 uniqueDaysLaunched];

  return v14;
}

- (double)_rawLaunchScoreForWidget:(id)a3
{
  v4 = a3;
  v5 = [v4 avocadoDescriptor];
  v6 = [v5 extensionBundleIdentifier];
  v7 = [v4 avocadoDescriptor];
  v8 = [v7 kind];
  v9 = [ATXWidgetPersonality stringRepresentationForExtensionBundleId:v6 kind:v8];

  v10 = [(NSMutableDictionary *)self->_cachedWidgetPersonalityToAppScore objectForKeyedSubscript:v9];

  if (!v10)
  {
    v11 = [[ATXDefaultHomeScreenItemAppLaunchScorer alloc] initWithWidget:v4 appLaunchHistogram:self->_spotlightAppLaunchHistogram];
    v12 = [(ATXDefaultHomeScreenItemAppLaunchScorer *)v11 scoreWithCachedAppLaunchData:self->_appLaunchCounts];
    [(NSMutableDictionary *)self->_cachedWidgetPersonalityToAppScore setObject:v12 forKeyedSubscript:v9];
  }

  v13 = [(NSMutableDictionary *)self->_cachedWidgetPersonalityToAppScore objectForKeyedSubscript:v9];
  v14 = [v13 rawLaunchCount];

  return v14;
}

- (int64_t)_uniqueDaysLaunchedComparatorForWidget1:(id)a3 widget2:(id)a4
{
  v6 = a4;
  [(ATXDefaultHomeScreenItemRanker *)self _uniqueDaysLaunchedScoreForWidget:a3];
  v8 = v7;
  [(ATXDefaultHomeScreenItemRanker *)self _uniqueDaysLaunchedScoreForWidget:v6];
  v10 = v9;

  v11 = -1;
  if (v8 <= v10)
  {
    v11 = 1;
  }

  if (v8 == v10)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

- (void)_sortWidgetsByRawLaunchCounts:(id)a3 shouldDownRankAlreadyInstalledWidgets:(BOOL)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __102__ATXDefaultHomeScreenItemRanker__sortWidgetsByRawLaunchCounts_shouldDownRankAlreadyInstalledWidgets___block_invoke;
  v4[3] = &unk_1E80C58F0;
  v5 = a4;
  v4[4] = self;
  [a3 sortWithOptions:16 usingComparator:v4];
}

uint64_t __102__ATXDefaultHomeScreenItemRanker__sortWidgetsByRawLaunchCounts_shouldDownRankAlreadyInstalledWidgets___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 40) != 1 || (v7 = [objc_opt_class() _downrankComparator:v5 widget2:v6]) == 0)
  {
    [*(a1 + 32) _rawLaunchScoreForWidget:v5];
    v9 = v8;
    [*(a1 + 32) _rawLaunchScoreForWidget:v6];
    v11 = -1;
    if (v9 <= v10)
    {
      v11 = 1;
    }

    if (v9 == v10)
    {
      v7 = 0;
    }

    else
    {
      v7 = v11;
    }
  }

  return v7;
}

- (void)_sortWidgetsByDistinctDaysAppWasLaunched:(id)a3 shouldDownRankAlreadyInstalledWidgets:(BOOL)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __113__ATXDefaultHomeScreenItemRanker__sortWidgetsByDistinctDaysAppWasLaunched_shouldDownRankAlreadyInstalledWidgets___block_invoke;
  v4[3] = &unk_1E80C58F0;
  v5 = a4;
  v4[4] = self;
  [a3 sortWithOptions:16 usingComparator:v4];
}

uint64_t __113__ATXDefaultHomeScreenItemRanker__sortWidgetsByDistinctDaysAppWasLaunched_shouldDownRankAlreadyInstalledWidgets___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 40) != 1 || (v7 = [objc_opt_class() _downrankComparator:v5 widget2:v6]) == 0)
  {
    v7 = [*(a1 + 32) _uniqueDaysLaunchedComparatorForWidget1:v5 widget2:v6];
  }

  return v7;
}

- (void)_sortWidgets:(id)a3 byRankerPlist:(int)a4 shouldDownRankAlreadyInstalledWidgets:(BOOL)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = [(ATXDefaultHomeScreenItemRanker *)self _rankerPlistToDictionary:v6];
  v10 = [(ATXDefaultHomeScreenItemRanker *)self _timelineRelevanceAdoptionHelper:v6];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __99__ATXDefaultHomeScreenItemRanker__sortWidgets_byRankerPlist_shouldDownRankAlreadyInstalledWidgets___block_invoke;
  v13[3] = &unk_1E80C5918;
  v16 = a5;
  v13[4] = self;
  v14 = v9;
  v15 = v10;
  v11 = v10;
  v12 = v9;
  [v8 sortWithOptions:16 usingComparator:v13];
}

uint64_t __99__ATXDefaultHomeScreenItemRanker__sortWidgets_byRankerPlist_shouldDownRankAlreadyInstalledWidgets___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 56) != 1 || (v7 = [objc_opt_class() _downrankComparator:v5 widget2:v6]) == 0)
  {
    v7 = [*(a1 + 32) _rankerDictionaryComparator:*(a1 + 40) timelineRelevanceAdoptionHelper:*(a1 + 48) widget1:v5 widget2:v6];
  }

  return v7;
}

- (id)_timelineRelevanceAdoptionHelper:(int)a3
{
  if (a3 == 6)
  {
    v4 = objc_opt_new();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_rankerPlistToDictionary:(int)a3
{
  if (a3 <= 5 && ((v3 = *&a3, (v5 = self->_cachedRankerDictionary) != 0) || ([ATXAssets2 dictionaryFromLazyPlistForClass:objc_opt_class()], v6 = objc_claimAutoreleasedReturnValue(), cachedRankerDictionary = self->_cachedRankerDictionary, self->_cachedRankerDictionary = v6, cachedRankerDictionary, (v5 = self->_cachedRankerDictionary) != 0)))
  {
    v8 = v5;
    v9 = [(ATXDefaultHomeScreenItemRanker *)self _globalPopularityPlistStringKey:v3];
    v10 = [(NSDictionary *)v8 objectForKeyedSubscript:v9];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)widgetsBySortingWidgetsUsingDayZeroGalleryAlgorithm:(id)a3
{
  v4 = [a3 mutableCopy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86__ATXDefaultHomeScreenItemRanker_widgetsBySortingWidgetsUsingDayZeroGalleryAlgorithm___block_invoke;
  v6[3] = &unk_1E80C5940;
  v6[4] = self;
  [v4 sortWithOptions:16 usingComparator:v6];

  return v4;
}

uint64_t __86__ATXDefaultHomeScreenItemRanker_widgetsBySortingWidgetsUsingDayZeroGalleryAlgorithm___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [objc_opt_class() _downrankComparator:v5 widget2:v4];

  return v6;
}

- (id)widgetsBySortingAndFilteringWidgetsUsingPersonalizedGalleryAlgorithm:(id)a3 rankerPlistType:(int)a4 regularlyUsedThreshold:(double)a5 limit:(id)a6
{
  v7 = *&a4;
  v31 = *MEMORY[0x1E69E9840];
  v10 = a6;
  v11 = [a3 mutableCopy];
  v12 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = [v11 copy];
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        if ([v18 rankType] == 2)
        {
          [v12 addObject:v18];
          [v11 removeObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  v19 = [(ATXDefaultHomeScreenItemRanker *)self _widgetsBySortingAndFilteringWidgets:v11 byAppLaunchAndRankerPlist:v7 regularlyUsedThreshold:a5];
  v20 = [(ATXDefaultHomeScreenItemRanker *)self _widgetsBySortingAndFilteringWidgets:v12 byAppLaunchAndRankerPlist:v7 regularlyUsedThreshold:a5];
  v21 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(v20, "count")}];
  [v19 insertObjects:v20 atIndexes:v21];
  if (v10 && (v22 = [v10 integerValue], v22 < objc_msgSend(v19, "count")))
  {
    v23 = [v19 subarrayWithRange:{0, objc_msgSend(v10, "integerValue")}];
  }

  else
  {
    v23 = v19;
  }

  v24 = v23;

  return v24;
}

- (id)widgetsBySortingAndFilteringWidgetsUsingOnboardingStacksAlgorithm:(id)a3 algorithm:(int)a4 regularlyUsedThreshold:(double)a5
{
  v8 = [a3 mutableCopy];
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        goto LABEL_12;
      }

      [(ATXDefaultHomeScreenItemRanker *)self _sortWidgets:v8 byRankerPlist:6 shouldDownRankAlreadyInstalledWidgets:0];
    }

    else
    {
      [(ATXDefaultHomeScreenItemRanker *)self _sortWidgetsByRawLaunchCounts:v8 shouldDownRankAlreadyInstalledWidgets:0];
    }

    [(ATXDefaultHomeScreenItemRanker *)self _sortWidgetsByDistinctDaysAppWasLaunched:v8 shouldDownRankAlreadyInstalledWidgets:0];
LABEL_10:
    [(ATXDefaultHomeScreenItemRanker *)self _filterOutWidgetsThatAreNotRegularlyUsed:v8 regularlyUsedThreshold:a5];
    goto LABEL_12;
  }

  if (a4 != 2)
  {
    if (a4 != 3)
    {
      goto LABEL_12;
    }

    [(ATXDefaultHomeScreenItemRanker *)self _sortWidgetsByDistinctDaysAppWasLaunched:v8 shouldDownRankAlreadyInstalledWidgets:0];
    [(ATXDefaultHomeScreenItemRanker *)self _sortWidgets:v8 byRankerPlist:6 shouldDownRankAlreadyInstalledWidgets:0];
    goto LABEL_10;
  }

  [(ATXDefaultHomeScreenItemRanker *)self _sortWidgets:v8 byRankerPlist:6 shouldDownRankAlreadyInstalledWidgets:0];
  [(ATXDefaultHomeScreenItemRanker *)self _sortWidgetsByDistinctDaysAppWasLaunched:v8 shouldDownRankAlreadyInstalledWidgets:0];
LABEL_12:
  [(ATXDefaultHomeScreenItemRanker *)self _filterOutWidgetsFromProtectedApps:v8];

  return v8;
}

- (void)_filterOutWidgetsFromProtectedApps:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v28 = a3;
  v3 = objc_opt_new();
  v4 = objc_alloc(MEMORY[0x1E695DFD8]);
  v5 = CFPreferencesCopyAppValue(@"SBSearchDisabledShortcuts", @"com.apple.spotlightui");
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  v9 = [v4 initWithArray:v8];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = [v28 copy];
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v30;
    *&v12 = 136315394;
    v27 = v12;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        v17 = [v16 appBundleId];

        if (v17)
        {
          v18 = [v16 appBundleId];
          v19 = [v9 containsObject:v18];

          if (v19)
          {
            v20 = __atxlog_handle_home_screen();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [v16 appBundleId];
              *buf = 136315650;
              v34 = "[ATXDefaultHomeScreenItemRanker _filterOutWidgetsFromProtectedApps:]";
              v35 = 2112;
              v36 = v16;
              v37 = 2112;
              v38 = v21;
              _os_log_impl(&dword_1BF549000, v20, OS_LOG_TYPE_DEFAULT, "%s: filtering out widget descriptor: %@. Reason: Show on Homescreen is disabled for the parent bundleId %@", buf, 0x20u);
            }

            [v28 removeObject:v16];
          }

          v22 = [v16 appBundleId];
          v23 = [v3 bundleIdIsLockedOrHiddenByUserPreference:v22];

          if (v23)
          {
            v24 = __atxlog_handle_home_screen();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = [v16 appBundleId];
              *buf = 136315650;
              v34 = "[ATXDefaultHomeScreenItemRanker _filterOutWidgetsFromProtectedApps:]";
              v35 = 2112;
              v36 = v16;
              v37 = 2112;
              v38 = v25;
              _os_log_impl(&dword_1BF549000, v24, OS_LOG_TYPE_DEFAULT, "%s: filtering out widget descriptor: %@. Reason: the parent bundleId %@ is locked or hidden by user preference", buf, 0x20u);
            }

            [v28 removeObject:v16];
          }
        }

        else
        {
          v26 = __atxlog_handle_home_screen();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v27;
            v34 = "[ATXDefaultHomeScreenItemRanker _filterOutWidgetsFromProtectedApps:]";
            v35 = 2112;
            v36 = v16;
            _os_log_impl(&dword_1BF549000, v26, OS_LOG_TYPE_DEFAULT, "%s: No parent bundleId for Widget descriptor: %@", buf, 0x16u);
          }
        }
      }

      v13 = [v10 countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v13);
  }
}

- (void)_filterOutWidgetsThatAreNotRegularlyUsed:(id)a3 regularlyUsedThreshold:(double)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [v6 copy];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v19;
    *&v9 = 136315650;
    v17 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        [(ATXDefaultHomeScreenItemRanker *)self _uniqueDaysLaunchedScoreForWidget:v13, v17];
        if (v14 < a4)
        {
          v15 = v14;
          v16 = __atxlog_handle_home_screen();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v17;
            v23 = "[ATXDefaultHomeScreenItemRanker _filterOutWidgetsThatAreNotRegularlyUsed:regularlyUsedThreshold:]";
            v24 = 2048;
            v25 = v15;
            v26 = 2112;
            v27 = v13;
            _os_log_impl(&dword_1BF549000, v16, OS_LOG_TYPE_DEFAULT, "%s: filtering out 3P widget because it is not regularly used (days launched: %f): %@", buf, 0x20u);
          }

          [v6 removeObject:v13];
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v10);
  }
}

- (void)_filterOutWidgetsNotFromTopLaunchedApps:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __74__ATXDefaultHomeScreenItemRanker__filterOutWidgetsNotFromTopLaunchedApps___block_invoke;
  v11 = &unk_1E80C5968;
  v5 = v4;
  v12 = v5;
  v13 = &v14;
  [v3 enumerateObjectsUsingBlock:&v8];
  v6 = v15[3];
  if (v6)
  {
    v7 = [v3 count];
    [v3 removeObjectsInRange:{v6, v7 - v15[3]}];
  }

  _Block_object_dispose(&v14, 8);
}

void __74__ATXDefaultHomeScreenItemRanker__filterOutWidgetsNotFromTopLaunchedApps___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [v10 appBundleId];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [v10 appBundleId];
    [v8 addObject:v9];
  }

  if ([*(a1 + 32) count] >= 0x15)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

+ (void)filterOutDuplicateWidgetsFromSameAppBundleId:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v3 copy];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 appBundleId];

        if (v11)
        {
          v12 = [v10 appBundleId];
          v13 = [v4 containsObject:v12];

          if (v13)
          {
            [v3 removeObject:v10];
          }

          else
          {
            v14 = [v10 appBundleId];
            [v4 addObject:v14];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (id)_widgetsBySortingAndFilteringWidgets:(id)a3 byAppLaunchAndRankerPlist:(int)a4 regularlyUsedThreshold:(double)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      v16 = 0;
      do
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v29 + 1) + 8 * v16);
        v18 = [objc_opt_class() _shouldDownrankWidget:v17];
        v19 = v11;
        if (v18)
        {
          goto LABEL_7;
        }

        v20 = [(ATXDefaultHomeScreenItemRanker *)self _appUsageFrequencyForWidget:v17 regularlyUsedThreshold:a5];
        if (!v20)
        {
          v19 = v10;
LABEL_7:
          [v19 addObject:v17];
          goto LABEL_8;
        }

        v21 = v20;
        v19 = v8;
        if (v21 == 2)
        {
          goto LABEL_7;
        }

        v19 = v9;
        if (v21 == 1)
        {
          goto LABEL_7;
        }

LABEL_8:
        ++v16;
      }

      while (v14 != v16);
      v22 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
      v14 = v22;
    }

    while (v22);
  }

  [(ATXDefaultHomeScreenItemRanker *)self _sortWidgets:v8 byRankerPlist:a4 shouldDownRankAlreadyInstalledWidgets:1];
  [(ATXDefaultHomeScreenItemRanker *)self _sortWidgets:v9 byRankerPlist:a4 shouldDownRankAlreadyInstalledWidgets:1];
  [(ATXDefaultHomeScreenItemRanker *)self _sortWidgets:v10 byRankerPlist:a4 shouldDownRankAlreadyInstalledWidgets:1];
  [(ATXDefaultHomeScreenItemRanker *)self _sortWidgets:v11 byRankerPlist:a4 shouldDownRankAlreadyInstalledWidgets:1];
  v23 = [v8 arrayByAddingObjectsFromArray:v9];
  v24 = [v23 arrayByAddingObjectsFromArray:v10];
  v25 = [v24 arrayByAddingObjectsFromArray:v11];
  v26 = [v25 mutableCopy];

  [objc_opt_class() filterOutDuplicateWidgetsFromSameAppBundleId:v26];
  [(ATXDefaultHomeScreenItemRanker *)self _filterOutWidgetsFromProtectedApps:v26];

  return v26;
}

- (unint64_t)_appUsageFrequencyForWidget:(id)a3 regularlyUsedThreshold:(double)a4
{
  [(ATXDefaultHomeScreenItemRanker *)self _uniqueDaysLaunchedScoreForWidget:a3];
  if (v5 >= a4)
  {
    return 2;
  }

  else
  {
    return v5 >= 1.0;
  }
}

- (id)_globalPopularityPlistStringKey:(int)a3
{
  if (a3 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E80C5988[a3];
  }
}

+ (id)stringForAlgorithmType:(int)a3
{
  if (a3 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E80C59B8[a3];
  }
}

- (void)_rankerDictionaryComparator:(os_log_t)log timelineRelevanceAdoptionHelper:widget1:widget2:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[ATXDefaultHomeScreenItemRanker _rankerDictionaryComparator:timelineRelevanceAdoptionHelper:widget1:widget2:]";
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "%s: please pass in either a non-nil ranker dictionary or non-nil timeline relevance adoption helper", &v1, 0xCu);
}

@end