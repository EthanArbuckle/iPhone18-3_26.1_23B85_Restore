@interface ATXDefaultHomeScreenItemUpdater
+ (NSDictionary)assets;
+ (id)atxHomeScreenStackConfigFromATXWidgetStack:(id)stack;
+ (id)atxHomeScreenWidgetIdentifierFromATXWidget:(id)widget;
- (ATXDefaultHomeScreenItemUpdater)initWithSpotlightAppLaunchHistogram:(id)histogram;
- (BOOL)_isDayZeroExperience;
- (id)_retrieveLastUpdateDate;
- (void)_updateAllDefaultsOnQueueWithReason:(id)reason updateCarPlayDefaults:(BOOL)defaults;
- (void)_updateAmbientDefaultsOnQueueWithReason:(id)reason appLaunchCounts:(id)counts;
- (void)_updateCarPlayDefaultsOnQueueWithReason:(id)reason appLaunchCounts:(id)counts;
- (void)_updateHomeScreenDefaultsOnQueueWithReason:(id)reason appLaunchCounts:(id)counts;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)updateDefaultsDueToAmbientConfigUpdate;
- (void)updateDefaultsDueToCarPlayConfigUpdate;
- (void)updateDefaultsDueToRelevantHomeScreenConfigUpdate;
- (void)updateDefaultsIfNeededWithSystemDescriptors:(id)descriptors installDatesCache:(id)cache reason:(id)reason;
- (void)updateDefaultsWithSystemDescriptors:(id)descriptors updateCarPlayDefaults:(BOOL)defaults installDatesCache:(id)cache reason:(id)reason;
@end

@implementation ATXDefaultHomeScreenItemUpdater

- (ATXDefaultHomeScreenItemUpdater)initWithSpotlightAppLaunchHistogram:(id)histogram
{
  histogramCopy = histogram;
  v14.receiver = self;
  v14.super_class = ATXDefaultHomeScreenItemUpdater;
  v6 = [(ATXDefaultHomeScreenItemUpdater *)&v14 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("ATXDefaultHomeScreenItemUpdater", v7);
    internalQueue = v6->_internalQueue;
    v6->_internalQueue = v8;

    objc_storeStrong(&v6->_spotlightAppLaunchHistogram, histogram);
    if ([MEMORY[0x1E69C5CF8] isInternalBuild])
    {
      v10 = objc_alloc(MEMORY[0x1E695E000]);
      v11 = [v10 initWithSuiteName:*MEMORY[0x1E698B030]];
      userDefaults = v6->_userDefaults;
      v6->_userDefaults = v11;

      [(NSUserDefaults *)v6->_userDefaults addObserver:v6 forKeyPath:@"ATXWidgetsForceDayZeroAddSheet" options:0 context:0];
    }
  }

  return v6;
}

- (void)dealloc
{
  if ([MEMORY[0x1E69C5CF8] isInternalBuild])
  {
    [(NSUserDefaults *)self->_userDefaults removeObserver:self forKeyPath:@"ATXWidgetsForceDayZeroAddSheet"];
  }

  v3.receiver = self;
  v3.super_class = ATXDefaultHomeScreenItemUpdater;
  [(ATXDefaultHomeScreenItemUpdater *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"ATXWidgetsForceDayZeroAddSheet"])
  {
    v13 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEFAULT, "ATXDefaultHomeScreenItemUpdater: force day zero add sheet toggled, refreshing suggestions", buf, 2u);
    }

    [(ATXDefaultHomeScreenItemUpdater *)self updateDefaultsDueToRelevantHomeScreenConfigUpdate];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = ATXDefaultHomeScreenItemUpdater;
    [(ATXDefaultHomeScreenItemUpdater *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

+ (NSDictionary)assets
{
  v2 = objc_opt_class();

  return [ATXAssets2 dictionaryForClass:v2];
}

- (void)updateDefaultsIfNeededWithSystemDescriptors:(id)descriptors installDatesCache:(id)cache reason:(id)reason
{
  v19 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  cacheCopy = cache;
  reasonCopy = reason;
  if (descriptorsCopy)
  {
    _retrieveLastUpdateDate = [(ATXDefaultHomeScreenItemUpdater *)self _retrieveLastUpdateDate];
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v13 = [MEMORY[0x1E695DF00] now];
    v14 = [currentCalendar dateByAddingUnit:16 value:-1 toDate:v13 options:0];

    if (!_retrieveLastUpdateDate || ([v14 earlierDate:_retrieveLastUpdateDate], v15 = objc_claimAutoreleasedReturnValue(), v15, v15 == _retrieveLastUpdateDate))
    {
      [(ATXDefaultHomeScreenItemUpdater *)self updateDefaultsWithSystemDescriptors:descriptorsCopy updateCarPlayDefaults:1 installDatesCache:cacheCopy reason:reasonCopy];
    }

    else
    {
      v16 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = _retrieveLastUpdateDate;
        _os_log_impl(&dword_1BF549000, v16, OS_LOG_TYPE_DEFAULT, "ATXDefaultHomeScreenItemUpdater: Not updating stack and widget suggestions because last update was recent (%@)", &v17, 0xCu);
      }
    }
  }
}

- (void)updateDefaultsWithSystemDescriptors:(id)descriptors updateCarPlayDefaults:(BOOL)defaults installDatesCache:(id)cache reason:(id)reason
{
  descriptorsCopy = descriptors;
  cacheCopy = cache;
  reasonCopy = reason;
  if (descriptorsCopy)
  {
    v13 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEFAULT, "ATXDefaultHomeScreenItemUpdater: Updating default stack and widget suggestions", buf, 2u);
    }

    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __118__ATXDefaultHomeScreenItemUpdater_updateDefaultsWithSystemDescriptors_updateCarPlayDefaults_installDatesCache_reason___block_invoke;
    block[3] = &unk_1E80C41E8;
    block[4] = self;
    v16 = descriptorsCopy;
    v17 = cacheCopy;
    v18 = reasonCopy;
    defaultsCopy = defaults;
    dispatch_async(internalQueue, block);
  }
}

uint64_t __118__ATXDefaultHomeScreenItemUpdater_updateDefaultsWithSystemDescriptors_updateCarPlayDefaults_installDatesCache_reason___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 48));
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);

  return [v2 _updateAllDefaultsOnQueueWithReason:v3 updateCarPlayDefaults:v4];
}

- (void)updateDefaultsDueToRelevantHomeScreenConfigUpdate
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__ATXDefaultHomeScreenItemUpdater_updateDefaultsDueToRelevantHomeScreenConfigUpdate__block_invoke;
  block[3] = &unk_1E80C0C90;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __84__ATXDefaultHomeScreenItemUpdater_updateDefaultsDueToRelevantHomeScreenConfigUpdate__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) count])
  {
    v2 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_DEFAULT, "ATXDefaultHomeScreenItemUpdater: updating defaults due to relevant home screen config update", v5, 2u);
    }

    v3 = objc_opt_new();
    v4 = [v3 rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps];

    [*(a1 + 32) _updateHomeScreenDefaultsOnQueueWithReason:@"Home Screen config update" appLaunchCounts:v4];
  }
}

- (void)updateDefaultsDueToAmbientConfigUpdate
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__ATXDefaultHomeScreenItemUpdater_updateDefaultsDueToAmbientConfigUpdate__block_invoke;
  block[3] = &unk_1E80C0C90;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __73__ATXDefaultHomeScreenItemUpdater_updateDefaultsDueToAmbientConfigUpdate__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) count])
  {
    v2 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_DEFAULT, "ATXDefaultHomeScreenItemUpdater: updating defaults due to ambient config update", v5, 2u);
    }

    v3 = objc_opt_new();
    v4 = [v3 rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps];

    [*(a1 + 32) _updateAmbientDefaultsOnQueueWithReason:@"Ambient config update" appLaunchCounts:v4];
  }
}

- (void)updateDefaultsDueToCarPlayConfigUpdate
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__ATXDefaultHomeScreenItemUpdater_updateDefaultsDueToCarPlayConfigUpdate__block_invoke;
  block[3] = &unk_1E80C0C90;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __73__ATXDefaultHomeScreenItemUpdater_updateDefaultsDueToCarPlayConfigUpdate__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) count])
  {
    v2 = __atxlog_handle_carPlay_widgets();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_DEFAULT, "ATXDefaultHomeScreenItemUpdater: updating defaults due to CarPlay config update", v5, 2u);
    }

    v3 = objc_opt_new();
    v4 = [v3 rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps];

    [*(a1 + 32) _updateCarPlayDefaultsOnQueueWithReason:@"CarPlay config update" appLaunchCounts:v4];
  }
}

- (void)_updateAllDefaultsOnQueueWithReason:(id)reason updateCarPlayDefaults:(BOOL)defaults
{
  defaultsCopy = defaults;
  v12 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  dispatch_assert_queue_V2(self->_internalQueue);
  v7 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = reasonCopy;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "ATXDefaultHomeScreenItemUpdater: updating defaults with reason: %{public}@", &v10, 0xCu);
  }

  if ([(NSSet *)self->_descriptors count])
  {
    v8 = objc_opt_new();
    rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps = [v8 rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps];

    [(ATXDefaultHomeScreenItemUpdater *)self _updateHomeScreenDefaultsOnQueueWithReason:reasonCopy appLaunchCounts:rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps];
    [(ATXDefaultHomeScreenItemUpdater *)self _updateAmbientDefaultsOnQueueWithReason:reasonCopy appLaunchCounts:rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps];
    if (defaultsCopy)
    {
      [(ATXDefaultHomeScreenItemUpdater *)self _updateCarPlayDefaultsOnQueueWithReason:reasonCopy appLaunchCounts:rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps];
    }
  }
}

- (void)_updateHomeScreenDefaultsOnQueueWithReason:(id)reason appLaunchCounts:(id)counts
{
  v28 = *MEMORY[0x1E69E9840];
  countsCopy = counts;
  v6 = os_transaction_create();
  v7 = objc_alloc_init(ATXHomeScreenConfigCache);
  v23 = 0;
  v8 = [(ATXHomeScreenConfigCache *)v7 loadHomeScreenPageConfigurationsWithError:&v23];
  v9 = v23;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;

  if (v9)
  {
    v12 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v25 = "[ATXDefaultHomeScreenItemUpdater _updateHomeScreenDefaultsOnQueueWithReason:appLaunchCounts:]";
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&dword_1BF549000, v12, OS_LOG_TYPE_DEFAULT, "ATXDefaultHomeScreenItemUpdater: %s error fetching home screen config: %@", buf, 0x16u);
    }
  }

  v13 = [ATXDefaultHomeScreenItemProducer alloc];
  descriptors = self->_descriptors;
  descriptorInstallDates = self->_descriptorInstallDates;
  _isDayZeroExperience = [(ATXDefaultHomeScreenItemUpdater *)self _isDayZeroExperience];
  v17 = -[ATXDefaultHomeScreenItemProducer initWithDescriptors:descriptorInstallDates:homeScreenConfig:isDayZeroExperience:isiPad:spotlightAppLaunchHistogram:appLaunchCounts:](v13, "initWithDescriptors:descriptorInstallDates:homeScreenConfig:isDayZeroExperience:isiPad:spotlightAppLaunchHistogram:appLaunchCounts:", descriptors, descriptorInstallDates, v11, _isDayZeroExperience, [MEMORY[0x1E69C5CF8] isiPad], self->_spotlightAppLaunchHistogram, countsCopy);

  update = [(ATXDefaultHomeScreenItemProducer *)v17 update];
  v19 = +[ATXDefaultHomeScreenItemManager sharedInstance];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __94__ATXDefaultHomeScreenItemUpdater__updateHomeScreenDefaultsOnQueueWithReason_appLaunchCounts___block_invoke;
  v21[3] = &unk_1E80C2AF8;
  v22 = v6;
  v20 = v6;
  [v19 writeHomeScreenUpdate:update completionHandler:v21];
}

void __94__ATXDefaultHomeScreenItemUpdater__updateHomeScreenDefaultsOnQueueWithReason_appLaunchCounts___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __94__ATXDefaultHomeScreenItemUpdater__updateHomeScreenDefaultsOnQueueWithReason_appLaunchCounts___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x1E695E000]);
    v3 = [v10 initWithSuiteName:*MEMORY[0x1E698B030]];
    v11 = [MEMORY[0x1E695DF00] now];
    [v3 setObject:v11 forKey:@"AddWidgetSuggestionsLastUpdateDate"];
  }

  v12 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1BF549000, v12, OS_LOG_TYPE_DEFAULT, "ATXDefaultHomeScreenItemUpdater: Finished updating home screen default stack and widget suggestions", v13, 2u);
  }
}

- (void)_updateAmbientDefaultsOnQueueWithReason:(id)reason appLaunchCounts:(id)counts
{
  countsCopy = counts;
  v6 = os_transaction_create();
  v7 = objc_opt_new();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __91__ATXDefaultHomeScreenItemUpdater__updateAmbientDefaultsOnQueueWithReason_appLaunchCounts___block_invoke;
  v10[3] = &unk_1E80C4258;
  v10[4] = self;
  v11 = countsCopy;
  v12 = v6;
  v8 = v6;
  v9 = countsCopy;
  [v7 readStacksWithCompletion:v10];
}

void __91__ATXDefaultHomeScreenItemUpdater__updateAmbientDefaultsOnQueueWithReason_appLaunchCounts___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__ATXDefaultHomeScreenItemUpdater__updateAmbientDefaultsOnQueueWithReason_appLaunchCounts___block_invoke_2;
  block[3] = &unk_1E80C4230;
  v13 = v6;
  v14 = v5;
  v15 = v8;
  v16 = v7;
  v17 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  dispatch_async(v9, block);
}

void __91__ATXDefaultHomeScreenItemUpdater__updateAmbientDefaultsOnQueueWithReason_appLaunchCounts___block_invoke_2(uint64_t a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = a1 + 32;
  if (*(a1 + 32))
  {
    v3 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __91__ATXDefaultHomeScreenItemUpdater__updateAmbientDefaultsOnQueueWithReason_appLaunchCounts___block_invoke_2_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = objc_opt_new();
  v11 = [*(a1 + 40) _pas_mappedArrayWithTransform:&__block_literal_global_54];
  [v10 setStacks:v11];

  v19[0] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v13 = [ATXDefaultHomeScreenItemProducer alloc];
  v14 = -[ATXDefaultHomeScreenItemProducer initWithDescriptors:descriptorInstallDates:homeScreenConfig:isDayZeroExperience:isiPad:spotlightAppLaunchHistogram:appLaunchCounts:](v13, "initWithDescriptors:descriptorInstallDates:homeScreenConfig:isDayZeroExperience:isiPad:spotlightAppLaunchHistogram:appLaunchCounts:", *(*(a1 + 48) + 16), *(*(a1 + 48) + 24), v12, 0, [MEMORY[0x1E69C5CF8] isiPad], *(*(a1 + 48) + 40), *(a1 + 56));
  v15 = [(ATXDefaultHomeScreenItemProducer *)v14 update];
  v16 = +[ATXDefaultHomeScreenItemManager sharedInstance];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __91__ATXDefaultHomeScreenItemUpdater__updateAmbientDefaultsOnQueueWithReason_appLaunchCounts___block_invoke_2_56;
  v17[3] = &unk_1E80C2AF8;
  v18 = *(a1 + 64);
  [v16 writeAmbientUpdate:v15 completionHandler:v17];
}

void __91__ATXDefaultHomeScreenItemUpdater__updateAmbientDefaultsOnQueueWithReason_appLaunchCounts___block_invoke_2_56(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __91__ATXDefaultHomeScreenItemUpdater__updateAmbientDefaultsOnQueueWithReason_appLaunchCounts___block_invoke_2_56_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "ATXDefaultHomeScreenItemUpdater: Finished updating ambient default stack and widget suggestions", v11, 2u);
  }
}

- (void)_updateCarPlayDefaultsOnQueueWithReason:(id)reason appLaunchCounts:(id)counts
{
  countsCopy = counts;
  v6 = os_transaction_create();
  v7 = [ATXDefaultHomeScreenItemProducer alloc];
  v8 = [(ATXDefaultHomeScreenItemProducer *)v7 initWithDescriptors:self->_descriptors descriptorInstallDates:self->_descriptorInstallDates homeScreenConfig:MEMORY[0x1E695E0F0] isDayZeroExperience:0 isiPad:0 spotlightAppLaunchHistogram:self->_spotlightAppLaunchHistogram appLaunchCounts:countsCopy];

  update = [(ATXDefaultHomeScreenItemProducer *)v8 update];
  v10 = +[ATXDefaultHomeScreenItemManager sharedInstance];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __91__ATXDefaultHomeScreenItemUpdater__updateCarPlayDefaultsOnQueueWithReason_appLaunchCounts___block_invoke;
  v12[3] = &unk_1E80C2AF8;
  v13 = v6;
  v11 = v6;
  [v10 writeCarPlayUpdate:update completionHandler:v12];
}

void __91__ATXDefaultHomeScreenItemUpdater__updateCarPlayDefaultsOnQueueWithReason_appLaunchCounts___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = __atxlog_handle_carPlay_widgets();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __91__ATXDefaultHomeScreenItemUpdater__updateCarPlayDefaultsOnQueueWithReason_appLaunchCounts___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = __atxlog_handle_carPlay_widgets();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "ATXDefaultHomeScreenItemUpdater: Finished updating CarPlay default stack and widget suggestions", v11, 2u);
  }
}

- (BOOL)_isDayZeroExperience
{
  if ([MEMORY[0x1E69C5CF8] isInternalBuild] && -[NSUserDefaults BOOLForKey:](self->_userDefaults, "BOOLForKey:", @"ATXWidgetsForceDayZeroAddSheet"))
  {
    v3 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1BF549000, v3, OS_LOG_TYPE_DEFAULT, "ATXDefaultHomeScreenItemUpdater: on day zero path because of user default to force day zero preference", v8, 2u);
    }

    return 1;
  }

  else
  {
    v5 = objc_opt_new();
    [v5 uniqueAppsLaunchedOverLast28Days];
    v4 = v6 < 15.0;
  }

  return v4;
}

- (id)_retrieveLastUpdateDate
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x1E698B030]];
  v4 = [v3 objectForKey:@"AddWidgetSuggestionsLastUpdateDate"];

  return v4;
}

+ (id)atxHomeScreenStackConfigFromATXWidgetStack:(id)stack
{
  stackCopy = stack;
  v4 = objc_opt_new();
  widgets = [stackCopy widgets];

  v6 = [widgets _pas_mappedArrayWithTransform:&__block_literal_global_62];
  [v4 setWidgets:v6];

  return v4;
}

+ (id)atxHomeScreenWidgetIdentifierFromATXWidget:(id)widget
{
  widgetCopy = widget;
  v4 = objc_opt_new();
  chsWidget = [widgetCopy chsWidget];
  extensionIdentity = [chsWidget extensionIdentity];
  extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];
  [v4 setExtensionBundleId:extensionBundleIdentifier];

  chsWidget2 = [widgetCopy chsWidget];
  kind = [chsWidget2 kind];
  [v4 setWidgetKind:kind];

  chsWidget3 = [widgetCopy chsWidget];

  extensionIdentity2 = [chsWidget3 extensionIdentity];
  containerBundleIdentifier = [extensionIdentity2 containerBundleIdentifier];
  [v4 setAppBundleId:containerBundleIdentifier];

  return v4;
}

@end