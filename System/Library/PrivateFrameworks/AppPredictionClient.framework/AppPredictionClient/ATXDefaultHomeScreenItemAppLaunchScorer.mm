@interface ATXDefaultHomeScreenItemAppLaunchScorer
- (ATXDefaultHomeScreenItemAppLaunchScorer)initWithWidget:(id)widget appLaunchHistogram:(id)histogram;
- (BOOL)_isAppPredictionsWidget;
- (BOOL)_isContactsWidget;
- (BOOL)_isSleepWidget;
- (BOOL)isWidgetSpecialCase;
- (double)_contactsWidgetiCloudFamilyScore;
- (id)_appLaunchScoreForContactsWidget;
- (id)_appLaunchScoreForSleepWidget;
- (id)_dateOfSleepOnboardingCompletion;
- (id)_rawLaunchCountAndNumberOfUniqueDaysParentAppWasLaunchedWithCachedAppLaunchData:(id)data;
- (id)scoreWithCachedAppLaunchData:(id)data;
- (void)_appLaunchScoreForContactsWidget;
- (void)_appLaunchScoreForSleepWidget;
@end

@implementation ATXDefaultHomeScreenItemAppLaunchScorer

- (ATXDefaultHomeScreenItemAppLaunchScorer)initWithWidget:(id)widget appLaunchHistogram:(id)histogram
{
  widgetCopy = widget;
  histogramCopy = histogram;
  v12.receiver = self;
  v12.super_class = ATXDefaultHomeScreenItemAppLaunchScorer;
  v9 = [(ATXDefaultHomeScreenItemAppLaunchScorer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_widget, widget);
    objc_storeStrong(&v10->_spotlightLaunchesHistogram, histogram);
  }

  return v10;
}

- (id)_dateOfSleepOnboardingCompletion
{
  v2 = objc_autoreleasePoolPush();
  hksp_sleepdUserDefaults = [MEMORY[0x1E695E000] hksp_sleepdUserDefaults];
  if ([hksp_sleepdUserDefaults integerForKey:*MEMORY[0x1E69D3678]] < 1)
  {
    v6 = 0;
  }

  else
  {
    v4 = [hksp_sleepdUserDefaults objectForKey:*MEMORY[0x1E69D3680]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  objc_autoreleasePoolPop(v2);

  return v6;
}

- (id)_appLaunchScoreForSleepWidget
{
  avocadoDescriptor = [(ATXHomeScreenWidgetDescriptor *)self->_widget avocadoDescriptor];
  extensionBundleIdentifier = [avocadoDescriptor extensionBundleIdentifier];
  v6 = [extensionBundleIdentifier isEqualToString:@"com.apple.Health.Sleep.SleepWidgetExtension"];

  if ((v6 & 1) == 0)
  {
    [(ATXDefaultHomeScreenItemAppLaunchScorer *)a2 _appLaunchScoreForSleepWidget];
  }

  avocadoDescriptor2 = [(ATXHomeScreenWidgetDescriptor *)self->_widget avocadoDescriptor];
  kind = [avocadoDescriptor2 kind];
  v9 = [kind isEqualToString:@"com.apple.health.SleepWidget"];

  if ((v9 & 1) == 0)
  {
    [(ATXDefaultHomeScreenItemAppLaunchScorer *)a2 _appLaunchScoreForSleepWidget];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__ATXDefaultHomeScreenItemAppLaunchScorer__appLaunchScoreForSleepWidget__block_invoke;
  block[3] = &unk_1E80C0C90;
  block[4] = self;
  if (_appLaunchScoreForSleepWidget_onceToken != -1)
  {
    dispatch_once(&_appLaunchScoreForSleepWidget_onceToken, block);
  }

  v10 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(ATXDefaultHomeScreenItemAppLaunchScorer *)v10 _appLaunchScoreForSleepWidget];
  }

  v11 = _appLaunchScoreForSleepWidget_dateOfSleepOnboardingCompletion;
  v12 = [ATXAggregatedAppLaunchData alloc];
  if (v11)
  {
    v13 = [(ATXAggregatedAppLaunchData *)v12 initWithRawLaunchCount:5 uniqueDaysLaunched:5];
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v15 = [MEMORY[0x1E695DF00] now];
    v16 = [currentCalendar dateByAddingUnit:16 value:-7 toDate:v15 options:0];

    if ([v16 compare:_appLaunchScoreForSleepWidget_dateOfSleepOnboardingCompletion] == -1)
    {
      v17 = [[ATXAggregatedAppLaunchData alloc] initWithRawLaunchCount:2 * [(ATXAggregatedAppLaunchData *)v13 rawLaunchCount] uniqueDaysLaunched:2 * [(ATXAggregatedAppLaunchData *)v13 uniqueDaysLaunched]];
    }

    else
    {
      v17 = v13;
    }

    v18 = v17;
  }

  else
  {
    v18 = [(ATXAggregatedAppLaunchData *)v12 initWithRawLaunchCount:0 uniqueDaysLaunched:0];
  }

  return v18;
}

uint64_t __72__ATXDefaultHomeScreenItemAppLaunchScorer__appLaunchScoreForSleepWidget__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _dateOfSleepOnboardingCompletion];
  v2 = _appLaunchScoreForSleepWidget_dateOfSleepOnboardingCompletion;
  _appLaunchScoreForSleepWidget_dateOfSleepOnboardingCompletion = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (id)_appLaunchScoreForContactsWidget
{
  avocadoDescriptor = [(ATXHomeScreenWidgetDescriptor *)self->_widget avocadoDescriptor];
  extensionBundleIdentifier = [avocadoDescriptor extensionBundleIdentifier];
  v6 = [extensionBundleIdentifier isEqualToString:@"com.apple.PeopleViewService.PeopleWidget-iOS"];

  if ((v6 & 1) == 0)
  {
    [(ATXDefaultHomeScreenItemAppLaunchScorer *)a2 _appLaunchScoreForContactsWidget];
  }

  avocadoDescriptor2 = [(ATXHomeScreenWidgetDescriptor *)self->_widget avocadoDescriptor];
  kind = [avocadoDescriptor2 kind];
  if ([kind isEqualToString:@"SingleContactWidget_iOS"])
  {
  }

  else
  {
    avocadoDescriptor3 = [(ATXHomeScreenWidgetDescriptor *)self->_widget avocadoDescriptor];
    kind2 = [avocadoDescriptor3 kind];
    v11 = [kind2 isEqualToString:@"MultipleContactWidget_iOS"];

    if (v11)
    {
      goto LABEL_8;
    }

    avocadoDescriptor2 = [MEMORY[0x1E696AAA8] currentHandler];
    [avocadoDescriptor2 handleFailureInMethod:a2 object:self file:@"ATXDefaultHomeScreenItemAppLaunchScorer.m" lineNumber:102 description:{@"Widget kind must belong to that of the contacts widget: %@ or %@", @"SingleContactWidget_iOS", @"MultipleContactWidget_iOS"}];
  }

LABEL_8:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__ATXDefaultHomeScreenItemAppLaunchScorer__appLaunchScoreForContactsWidget__block_invoke;
  block[3] = &unk_1E80C0C90;
  block[4] = self;
  if (_appLaunchScoreForContactsWidget_onceToken != -1)
  {
    dispatch_once(&_appLaunchScoreForContactsWidget_onceToken, block);
  }

  v12 = [ATXAggregatedAppLaunchData alloc];
  v13 = [(ATXAggregatedAppLaunchData *)v12 initWithRawLaunchCount:*&_appLaunchScoreForContactsWidget_iCloudScore uniqueDaysLaunched:*&_appLaunchScoreForContactsWidget_iCloudScore];

  return v13;
}

uint64_t __75__ATXDefaultHomeScreenItemAppLaunchScorer__appLaunchScoreForContactsWidget__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _contactsWidgetiCloudFamilyScore];
  _appLaunchScoreForContactsWidget_iCloudScore = v2;
  return result;
}

- (double)_contactsWidgetiCloudFamilyScore
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  fetchFamilyCircle = [v3 fetchFamilyCircle];
  v5 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = *&fetchFamilyCircle;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "Fetched family circle during scoring: %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  members = [fetchFamilyCircle members];
  v7 = [members countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(members);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (([v12 isMe] & 1) == 0)
        {
          v10 = v10 + 5.0;
          if ([v12 isChildAccount])
          {
            v10 = v10 + 5.0;
          }
        }
      }

      v8 = [members countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  v13 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = v10;
    _os_log_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEFAULT, "Scored family circle: %f", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  return v10;
}

- (id)_rawLaunchCountAndNumberOfUniqueDaysParentAppWasLaunchedWithCachedAppLaunchData:(id)data
{
  v31 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  appBundleId = [(ATXHomeScreenWidgetDescriptor *)self->_widget appBundleId];

  if (appBundleId)
  {
    v6 = objc_opt_new();
    appBundleId2 = [(ATXHomeScreenWidgetDescriptor *)self->_widget appBundleId];
    [v6 addObject:appBundleId2];

    appBundleId3 = [(ATXHomeScreenWidgetDescriptor *)self->_widget appBundleId];
    LODWORD(appBundleId2) = [appBundleId3 isEqualToString:@"com.apple.mobileslideshow"];

    if (appBundleId2)
    {
      [v6 addObject:@"com.apple.camera"];
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v10)
    {
      v12 = *v25;
      v13 = 0.0;
      *&v11 = 138412290;
      v23 = v11;
      v14 = 0.0;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          v17 = [dataCopy objectForKeyedSubscript:{v16, v23, v24}];
          v18 = v17;
          if (v17)
          {
            v14 = v14 + [v17 rawLaunchCount];
            v13 = v13 + [v18 uniqueDaysLaunched];
          }

          else
          {
            v19 = __atxlog_handle_home_screen();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v23;
              v29 = v16;
              _os_log_impl(&dword_1BF549000, v19, OS_LOG_TYPE_DEFAULT, "ATXDefaultHomeScreenItemAppLaunchScorer: No launch info for key: %@", buf, 0xCu);
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v10);
      v20 = v14;
      v10 = v13;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v10 = 0;
    v20 = 0;
  }

  v21 = [[ATXAggregatedAppLaunchData alloc] initWithRawLaunchCount:v20 uniqueDaysLaunched:v10];

  return v21;
}

- (BOOL)_isAppPredictionsWidget
{
  avocadoDescriptor = [(ATXHomeScreenWidgetDescriptor *)self->_widget avocadoDescriptor];
  if (avocadoDescriptor)
  {
    avocadoDescriptor2 = [(ATXHomeScreenWidgetDescriptor *)self->_widget avocadoDescriptor];
    v5 = +[ATXDefaultHomeScreenItemProducer appPredictionsWidgetDescriptor];
    v6 = [avocadoDescriptor2 isEqual:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isSleepWidget
{
  avocadoDescriptor = [(ATXHomeScreenWidgetDescriptor *)self->_widget avocadoDescriptor];
  extensionBundleIdentifier = [avocadoDescriptor extensionBundleIdentifier];
  if ([extensionBundleIdentifier isEqualToString:@"com.apple.Health.Sleep.SleepWidgetExtension"])
  {
    avocadoDescriptor2 = [(ATXHomeScreenWidgetDescriptor *)self->_widget avocadoDescriptor];
    kind = [avocadoDescriptor2 kind];
    v7 = [kind isEqualToString:@"com.apple.health.SleepWidget"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isContactsWidget
{
  avocadoDescriptor = [(ATXHomeScreenWidgetDescriptor *)self->_widget avocadoDescriptor];
  extensionBundleIdentifier = [avocadoDescriptor extensionBundleIdentifier];
  v5 = [extensionBundleIdentifier isEqualToString:@"com.apple.PeopleViewService.PeopleWidget-iOS"];

  if (v5)
  {
    avocadoDescriptor2 = [(ATXHomeScreenWidgetDescriptor *)self->_widget avocadoDescriptor];
    kind = [avocadoDescriptor2 kind];
    if ([kind isEqualToString:@"SingleContactWidget_iOS"])
    {
      v8 = 1;
    }

    else
    {
      avocadoDescriptor3 = [(ATXHomeScreenWidgetDescriptor *)self->_widget avocadoDescriptor];
      kind2 = [avocadoDescriptor3 kind];
      v8 = [kind2 isEqualToString:@"MultipleContactWidget_iOS"];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (id)scoreWithCachedAppLaunchData:(id)data
{
  dataCopy = data;
  if ([(ATXDefaultHomeScreenItemAppLaunchScorer *)self _isAppPredictionsWidget])
  {
    spotlightLaunchesHistogram = self->_spotlightLaunchesHistogram;
    if (spotlightLaunchesHistogram)
    {
      [(ATXCategoricalHistogramProtocol *)spotlightLaunchesHistogram totalLaunches];
      v7 = v6;
      v8 = [ATXAggregatedAppLaunchData alloc];
      v9 = v7;
      v10 = (v7 * 0.2);
    }

    else
    {
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      processName = [processInfo processName];
      v14 = [processName isEqualToString:@"duetexpertd"];

      if (v14)
      {
        v15 = __atxlog_handle_home_screen();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          [ATXDefaultHomeScreenItemAppLaunchScorer scoreWithCachedAppLaunchData:v15];
        }
      }

      v8 = [ATXAggregatedAppLaunchData alloc];
      v9 = 0;
      v10 = 0;
    }

    _appLaunchScoreForSleepWidget = [(ATXAggregatedAppLaunchData *)v8 initWithRawLaunchCount:v9 uniqueDaysLaunched:v10];
  }

  else if ([(ATXDefaultHomeScreenItemAppLaunchScorer *)self _isSleepWidget])
  {
    _appLaunchScoreForSleepWidget = [(ATXDefaultHomeScreenItemAppLaunchScorer *)self _appLaunchScoreForSleepWidget];
  }

  else
  {
    if ([(ATXDefaultHomeScreenItemAppLaunchScorer *)self _isContactsWidget])
    {
      [(ATXDefaultHomeScreenItemAppLaunchScorer *)self _appLaunchScoreForContactsWidget];
    }

    else
    {
      [(ATXDefaultHomeScreenItemAppLaunchScorer *)self _rawLaunchCountAndNumberOfUniqueDaysParentAppWasLaunchedWithCachedAppLaunchData:dataCopy];
    }
    _appLaunchScoreForSleepWidget = ;
  }

  v16 = _appLaunchScoreForSleepWidget;

  return v16;
}

- (BOOL)isWidgetSpecialCase
{
  if ([(ATXDefaultHomeScreenItemAppLaunchScorer *)self _isAppPredictionsWidget]|| [(ATXDefaultHomeScreenItemAppLaunchScorer *)self _isSleepWidget]|| [(ATXDefaultHomeScreenItemAppLaunchScorer *)self _isContactsWidget])
  {
    return 1;
  }

  appBundleId = [(ATXHomeScreenWidgetDescriptor *)self->_widget appBundleId];
  v5 = [appBundleId isEqualToString:@"com.apple.mobileslideshow"];

  return v5;
}

- (void)_appLaunchScoreForSleepWidget
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 67109120;
  v1[1] = _appLaunchScoreForSleepWidget_dateOfSleepOnboardingCompletion != 0;
  _os_log_debug_impl(&dword_1BF549000, log, OS_LOG_TYPE_DEBUG, "ATXDefaultHomeScreenItemAppLaunchScorer: is sleep set up: %{BOOL}d", v1, 8u);
}

- (void)_appLaunchScoreForContactsWidget
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"ATXDefaultHomeScreenItemAppLaunchScorer.m" lineNumber:101 description:{@"Widget extension bundle id must belong to that of the contacts widget: %@", @"com.apple.PeopleViewService.PeopleWidget-iOS"}];
}

@end