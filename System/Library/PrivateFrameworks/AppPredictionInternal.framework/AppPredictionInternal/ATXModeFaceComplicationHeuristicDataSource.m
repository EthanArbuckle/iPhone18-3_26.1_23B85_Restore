@interface ATXModeFaceComplicationHeuristicDataSource
- (ATXModeFaceComplicationHeuristicDataSource)init;
- (BOOL)_hasSignificantHomeAccessoryEvents;
- (BOOL)_hasSignificantRemindersEvents;
- (BOOL)_hasSignificantStocksEvents;
- (BOOL)_hasTVInterest;
- (id)_complicationsForExerciseMode;
- (id)_complicationsForPersonalMode;
- (id)_complicationsForWorkMode;
- (id)_landscapeComplicationsForExerciseMode;
- (id)_landscapeComplicationsForPersonalMode;
- (id)_landscapeComplicationsForReadingMode;
- (id)_landscapeComplicationsForWorkMode;
- (id)provideComplicationsForSuggestedFaceType:(int64_t)a3 environment:(id)a4;
- (id)provideLandscapeComplicationsForSuggestedFaceType:(int64_t)a3 environment:(id)a4;
- (void)_addComplicationWithFamily:(int64_t)a3 extension:(id)a4 kind:(id)a5 container:(id)a6 score:(double)a7 to:(id)a8;
- (void)_addSystemSmallWidgetWithExtension:(id)a3 kind:(id)a4 container:(id)a5 score:(double)a6 to:(id)a7;
@end

@implementation ATXModeFaceComplicationHeuristicDataSource

- (ATXModeFaceComplicationHeuristicDataSource)init
{
  v13.receiver = self;
  v13.super_class = ATXModeFaceComplicationHeuristicDataSource;
  v2 = [(ATXModeFaceComplicationHeuristicDataSource *)&v13 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CEB998] sharedInstance];
    v4 = [v3 complicationWidgetDescriptors];
    allComplicationDescriptors = v2->_allComplicationDescriptors;
    v2->_allComplicationDescriptors = v4;

    v6 = [MEMORY[0x277CEB998] sharedInstance];
    v7 = [v6 homeScreenDescriptors];
    allWidgetDescriptors = v2->_allWidgetDescriptors;
    v2->_allWidgetDescriptors = v7;

    v9 = objc_opt_new();
    suggestedPagesTunableConstants = v2->_suggestedPagesTunableConstants;
    v2->_suggestedPagesTunableConstants = v9;

    if (![(NSSet *)v2->_allComplicationDescriptors count])
    {
      v11 = __atxlog_handle_lock_screen();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [(ATXModeFaceComplicationHeuristicDataSource *)v11 init];
      }
    }
  }

  return v2;
}

- (id)provideComplicationsForSuggestedFaceType:(int64_t)a3 environment:(id)a4
{
  v6 = a4;
  if (a3 > 5)
  {
    if (a3 > 8)
    {
      switch(a3)
      {
        case 9:
          v7 = [(ATXModeFaceComplicationHeuristicDataSource *)self _complicationsForGamingMode];
          break;
        case 10:
          v7 = [(ATXModeFaceComplicationHeuristicDataSource *)self _complicationsForMindfulnessMode];
          break;
        case 11:
          v7 = [(ATXModeFaceComplicationHeuristicDataSource *)self _complicationsForReduceInterruptions];
          break;
        default:
LABEL_24:
          v9 = __atxlog_handle_lock_screen();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
          {
            [ATXModeFaceComplicationHeuristicDataSource provideComplicationsForSuggestedFaceType:environment:];
          }

          goto LABEL_27;
      }

LABEL_23:
      v8 = v7;
      goto LABEL_28;
    }

    if (a3 == 6)
    {
      v7 = [(ATXModeFaceComplicationHeuristicDataSource *)self _complicationsForWorkMode];
      goto LABEL_23;
    }

    if (a3 == 7)
    {
      [(ATXModeFaceComplicationHeuristicDataSource *)self _complicationsForPersonalMode];
    }

    else
    {
      [(ATXModeFaceComplicationHeuristicDataSource *)self _complicationsForReadingMode];
    }

    v7 = LABEL_9:;
    goto LABEL_23;
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v7 = [(ATXModeFaceComplicationHeuristicDataSource *)self _complicationsForSleepMode];
      goto LABEL_23;
    }

    if (a3 == 4)
    {
      [(ATXModeFaceComplicationHeuristicDataSource *)self _complicationsForDrivingMode];
    }

    else
    {
      [(ATXModeFaceComplicationHeuristicDataSource *)self _complicationsForExerciseMode];
    }

    goto LABEL_9;
  }

  if (a3 >= 3)
  {
    goto LABEL_24;
  }

LABEL_27:
  v8 = 0;
LABEL_28:

  return v8;
}

- (id)_complicationsForExerciseMode
{
  v3 = objc_opt_new();
  [(ATXModeFaceComplicationHeuristicDataSource *)self _addComplicationWithFamily:11 extension:@"com.apple.Fitness.FitnessWidget" kind:@"com.apple.Fitness.Complication" container:@"com.apple.Fitness" score:v3 to:0.8];
  [(ATXModeFaceComplicationHeuristicDataSource *)self _addComplicationWithFamily:10 extension:@"com.apple.Fitness.FitnessWidget" kind:@"com.apple.Fitness.Complication" container:@"com.apple.Fitness" score:v3 to:0.8];
  [(ATXModeFaceComplicationHeuristicDataSource *)self _addComplicationWithFamily:12 extension:@"com.apple.Fitness.FitnessWidget" kind:@"com.apple.Fitness.Complication" container:@"com.apple.Fitness" score:v3 to:0.8];
  [(ATXModeFaceComplicationHeuristicDataSource *)self _addComplicationWithFamily:11 extension:@"com.apple.weather.widget" kind:@"com.apple.weather.complication.conditions" container:@"com.apple.weather" score:v3 to:0.6];
  [(ATXModeFaceComplicationHeuristicDataSource *)self _addComplicationWithFamily:10 extension:@"com.apple.weather.widget" kind:@"com.apple.weather.complication.temperature" container:@"com.apple.weather" score:v3 to:0.6];
  [(ATXModeFaceComplicationHeuristicDataSource *)self _addComplicationWithFamily:10 extension:@"com.apple.Batteries.BatteriesWidget" kind:@"com.apple.Batteries.complication" container:@"com.apple.Batteries" score:v3 to:0.4];
  [(ATXModeFaceComplicationHeuristicDataSource *)self _addComplicationWithFamily:11 extension:@"com.apple.Batteries.BatteriesWidget" kind:@"com.apple.Batteries.complication" container:@"com.apple.Batteries" score:v3 to:0.4];

  return v3;
}

- (id)_complicationsForWorkMode
{
  v3 = objc_opt_new();
  [(ATXModeFaceComplicationHeuristicDataSource *)self _addComplicationWithFamily:12 extension:@"com.apple.mobilecal.CalendarWidgetExtension" kind:@"com.apple.CalendarWidget.CalendarNextEventComplication" container:@"com.apple.mobilecal" score:v3 to:0.8];
  [(ATXModeFaceComplicationHeuristicDataSource *)self _addComplicationWithFamily:10 extension:@"com.apple.mobilecal.CalendarWidgetExtension" kind:@"com.apple.CalendarWidget.CalendarNextEventComplication" container:@"com.apple.mobilecal" score:v3 to:0.8];
  [(ATXModeFaceComplicationHeuristicDataSource *)self _addComplicationWithFamily:11 extension:@"com.apple.mobilecal.CalendarWidgetExtension" kind:@"com.apple.CalendarWidget.CalendarNextEventComplication" container:@"com.apple.mobilecal" score:v3 to:0.8];
  if ([(ATXModeFaceComplicationHeuristicDataSource *)self _hasSignificantRemindersEvents])
  {
    [(ATXModeFaceComplicationHeuristicDataSource *)self _addComplicationWithFamily:12 extension:@"com.apple.reminders.WidgetExtension" kind:@"com.apple.reminders.widget.today" container:@"com.apple.reminders" score:v3 to:0.8];
    [(ATXModeFaceComplicationHeuristicDataSource *)self _addComplicationWithFamily:11 extension:@"com.apple.reminders.WidgetExtension" kind:@"com.apple.reminders.widget" container:@"com.apple.reminders" score:v3 to:0.8];
  }

  if ([(ATXModeFaceComplicationHeuristicDataSource *)self _hasSignificantStocksEvents])
  {
    [(ATXModeFaceComplicationHeuristicDataSource *)self _addComplicationWithFamily:11 extension:@"com.apple.stocks.widget" kind:@"overview" container:@"com.apple.stocks" score:v3 to:0.6];
  }

  [(ATXModeFaceComplicationHeuristicDataSource *)self _addComplicationWithFamily:11 extension:@"com.apple.weather.widget" kind:@"com.apple.weather.complication.conditions" container:@"com.apple.weather" score:v3 to:0.5];
  [(ATXModeFaceComplicationHeuristicDataSource *)self _addComplicationWithFamily:10 extension:@"com.apple.weather.widget" kind:@"com.apple.weather.complication.temperature" container:@"com.apple.weather" score:v3 to:0.5];
  [(ATXModeFaceComplicationHeuristicDataSource *)self _addComplicationWithFamily:10 extension:@"com.apple.Batteries.BatteriesWidget" kind:@"com.apple.Batteries.complication" container:@"com.apple.Batteries" score:v3 to:0.4];
  [(ATXModeFaceComplicationHeuristicDataSource *)self _addComplicationWithFamily:11 extension:@"com.apple.Batteries.BatteriesWidget" kind:@"com.apple.Batteries.complication" container:@"com.apple.Batteries" score:v3 to:0.4];

  return v3;
}

- (id)_complicationsForPersonalMode
{
  v3 = objc_opt_new();
  if ([(ATXModeFaceComplicationHeuristicDataSource *)self _hasSignificantHomeAccessoryEvents])
  {
    [(ATXModeFaceComplicationHeuristicDataSource *)self _addComplicationWithFamily:11 extension:@"com.apple.Home.HomeWidget" kind:@"com.apple.Home.widget.summary.category" container:@"com.apple.Home" score:v3 to:0.8];
  }

  [(ATXModeFaceComplicationHeuristicDataSource *)self _addComplicationWithFamily:12 extension:@"com.apple.weather.widget" kind:@"com.apple.weather.complication.conditions" container:@"com.apple.weather" score:v3 to:0.4];
  [(ATXModeFaceComplicationHeuristicDataSource *)self _addComplicationWithFamily:11 extension:@"com.apple.weather.widget" kind:@"com.apple.weather.complication.conditions" container:@"com.apple.weather" score:v3 to:0.4];
  [(ATXModeFaceComplicationHeuristicDataSource *)self _addComplicationWithFamily:10 extension:@"com.apple.weather.widget" kind:@"com.apple.weather.complication.temperature" container:@"com.apple.weather" score:v3 to:0.4];
  [(ATXModeFaceComplicationHeuristicDataSource *)self _addComplicationWithFamily:11 extension:@"com.apple.news.widget" kind:@"today" container:@"com.apple.news" score:v3 to:0.6];

  return v3;
}

- (void)_addComplicationWithFamily:(int64_t)a3 extension:(id)a4 kind:(id)a5 container:(id)a6 score:(double)a7 to:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  allComplicationDescriptors = self->_allComplicationDescriptors;
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __107__ATXModeFaceComplicationHeuristicDataSource__addComplicationWithFamily_extension_kind_container_score_to___block_invoke;
  v29 = &unk_2785A19E0;
  v19 = v14;
  v30 = v19;
  v20 = v15;
  v31 = v20;
  v33 = a3;
  v21 = v16;
  v32 = v21;
  v22 = [(NSSet *)allComplicationDescriptors objectsPassingTest:&v26];
  if ([v22 count])
  {
    v23 = objc_alloc(MEMORY[0x277CEB410]);
    v24 = [v22 anyObject];
    v25 = [v23 initWithWidgetDescriptor:v24 widgetFamily:a3 intent:0 source:4];

    [v25 setScore:a7];
    [v25 setPredictionSource:@"Heuristic"];
    [v17 addObject:v25];
  }

  else if ([v21 length] && objc_msgSend(MEMORY[0x277CEB3B8], "isInstalledAndNotRestrictedForBundle:", v21))
  {
    v25 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      [ATXModeFaceComplicationHeuristicDataSource _addComplicationWithFamily:extension:kind:container:score:to:];
    }
  }

  else
  {
    v25 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [ATXModeFaceComplicationHeuristicDataSource _addComplicationWithFamily:extension:kind:container:score:to:];
    }
  }
}

uint64_t __107__ATXModeFaceComplicationHeuristicDataSource__addComplicationWithFamily_extension_kind_container_score_to___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 extensionBundleIdentifier];
  v5 = [v4 isEqualToString:a1[4]];

  if (v5 && ([v3 kind], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", a1[5]), v6, v7) && (objc_msgSend(v3, "supportedFamilies"), v8 = a1[7], CHSWidgetFamilyMaskContainsFamily()))
  {
    v9 = [v3 extensionIdentity];
    v10 = [v9 containerBundleIdentifier];
    if (v10 == a1[6])
    {
      v13 = 1;
    }

    else
    {
      v11 = [v3 extensionIdentity];
      v12 = [v11 containerBundleIdentifier];
      v13 = [v12 isEqualToString:a1[6]];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)provideLandscapeComplicationsForSuggestedFaceType:(int64_t)a3 environment:(id)a4
{
  v6 = a4;
  if (a3 > 5)
  {
    if (a3 > 8)
    {
      switch(a3)
      {
        case 9:
          v7 = [(ATXModeFaceComplicationHeuristicDataSource *)self _landscapeComplicationsForGamingMode];
          break;
        case 10:
          v7 = [(ATXModeFaceComplicationHeuristicDataSource *)self _landscapeComplicationsForMindfulnessMode];
          break;
        case 11:
          v7 = [(ATXModeFaceComplicationHeuristicDataSource *)self _landscapeComplicationsForReduceInterruptions];
          break;
        default:
LABEL_24:
          v9 = __atxlog_handle_lock_screen();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
          {
            [ATXModeFaceComplicationHeuristicDataSource provideComplicationsForSuggestedFaceType:environment:];
          }

          goto LABEL_27;
      }

LABEL_23:
      v8 = v7;
      goto LABEL_28;
    }

    if (a3 == 6)
    {
      v7 = [(ATXModeFaceComplicationHeuristicDataSource *)self _landscapeComplicationsForWorkMode];
      goto LABEL_23;
    }

    if (a3 == 7)
    {
      [(ATXModeFaceComplicationHeuristicDataSource *)self _landscapeComplicationsForPersonalMode];
    }

    else
    {
      [(ATXModeFaceComplicationHeuristicDataSource *)self _landscapeComplicationsForReadingMode];
    }

    v7 = LABEL_9:;
    goto LABEL_23;
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v7 = [(ATXModeFaceComplicationHeuristicDataSource *)self _landscapeComplicationsForSleepMode];
      goto LABEL_23;
    }

    if (a3 == 4)
    {
      [(ATXModeFaceComplicationHeuristicDataSource *)self _landscapeComplicationsForDrivingMode];
    }

    else
    {
      [(ATXModeFaceComplicationHeuristicDataSource *)self _landscapeComplicationsForExerciseMode];
    }

    goto LABEL_9;
  }

  if (a3 >= 3)
  {
    goto LABEL_24;
  }

LABEL_27:
  v8 = 0;
LABEL_28:

  return v8;
}

- (id)_landscapeComplicationsForExerciseMode
{
  v3 = objc_opt_new();
  [(ATXModeFaceComplicationHeuristicDataSource *)self _addSystemSmallWidgetWithExtension:@"com.apple.Fitness.FitnessWidget" kind:@"com.apple.Fitness" container:@"com.apple.Fitness" score:v3 to:0.8];
  [(ATXModeFaceComplicationHeuristicDataSource *)self _addSystemSmallWidgetWithExtension:@"com.apple.weather.widget" kind:@"com.apple.weather" container:@"com.apple.weather" score:v3 to:0.8];
  [(ATXModeFaceComplicationHeuristicDataSource *)self _addComplicationWithFamily:11 extension:@"com.apple.Batteries.BatteriesWidget" kind:@"com.apple.Batteries.complication" container:@"com.apple.Batteries" score:v3 to:0.4];

  return v3;
}

- (id)_landscapeComplicationsForWorkMode
{
  v3 = objc_opt_new();
  [(ATXModeFaceComplicationHeuristicDataSource *)self _addSystemSmallWidgetWithExtension:@"com.apple.mobilecal.CalendarWidgetExtension" kind:@"com.apple.CalendarWidget.CalendarUpNextWidget" container:@"com.apple.mobilecal" score:v3 to:0.8];
  if ([(ATXModeFaceComplicationHeuristicDataSource *)self _hasSignificantRemindersEvents])
  {
    [(ATXModeFaceComplicationHeuristicDataSource *)self _addSystemSmallWidgetWithExtension:@"com.apple.reminders.WidgetExtension" kind:@"com.apple.reminders.widget" container:@"com.apple.reminders" score:v3 to:0.8];
  }

  if ([(ATXModeFaceComplicationHeuristicDataSource *)self _hasSignificantStocksEvents])
  {
    [(ATXModeFaceComplicationHeuristicDataSource *)self _addSystemSmallWidgetWithExtension:@"com.apple.stocks.widget" kind:@"overview" container:@"com.apple.stocks" score:v3 to:0.6];
  }

  [(ATXModeFaceComplicationHeuristicDataSource *)self _addComplicationWithFamily:11 extension:@"com.apple.weather.widget" kind:@"com.apple.weather.complication.conditions" container:@"com.apple.weather" score:v3 to:0.5];
  [(ATXModeFaceComplicationHeuristicDataSource *)self _addComplicationWithFamily:11 extension:@"com.apple.Batteries.BatteriesWidget" kind:@"com.apple.Batteries.complication" container:@"com.apple.Batteries" score:v3 to:0.4];

  return v3;
}

- (id)_landscapeComplicationsForPersonalMode
{
  v3 = objc_opt_new();
  [(ATXModeFaceComplicationHeuristicDataSource *)self _addSystemSmallWidgetWithExtension:@"com.apple.weather.widget" kind:@"com.apple.weather" container:@"com.apple.weather" score:v3 to:0.8];
  if ([(ATXModeFaceComplicationHeuristicDataSource *)self _hasSignificantHomeAccessoryEvents])
  {
    [(ATXModeFaceComplicationHeuristicDataSource *)self _addComplicationWithFamily:11 extension:@"com.apple.Home.HomeWidget" kind:@"com.apple.Home.widget.summary.category" container:@"com.apple.Home" score:v3 to:0.7];
  }

  [(ATXModeFaceComplicationHeuristicDataSource *)self _addComplicationWithFamily:11 extension:@"com.apple.news.widget" kind:@"today" container:@"com.apple.news" score:v3 to:0.6];

  return v3;
}

- (id)_landscapeComplicationsForReadingMode
{
  v3 = objc_opt_new();
  [(ATXModeFaceComplicationHeuristicDataSource *)self _addSystemSmallWidgetWithExtension:@"com.apple.news.widget" kind:@"today" container:@"com.apple.news" score:v3 to:0.8];

  return v3;
}

- (void)_addSystemSmallWidgetWithExtension:(id)a3 kind:(id)a4 container:(id)a5 score:(double)a6 to:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  allWidgetDescriptors = self->_allWidgetDescriptors;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __105__ATXModeFaceComplicationHeuristicDataSource__addSystemSmallWidgetWithExtension_kind_container_score_to___block_invoke;
  v24[3] = &unk_2785A1A08;
  v17 = v12;
  v25 = v17;
  v18 = v13;
  v26 = v18;
  v19 = v14;
  v27 = v19;
  v20 = [(NSSet *)allWidgetDescriptors objectsPassingTest:v24];
  if ([v20 count])
  {
    v21 = objc_alloc(MEMORY[0x277CEB410]);
    v22 = [v20 anyObject];
    v23 = [v21 initWithWidgetDescriptor:v22 widgetFamily:1 intent:0 source:4];

    [v23 setScore:a6];
    [v23 setPredictionSource:@"Heuristic"];
    [v15 addObject:v23];
  }

  else if ([v19 length] && objc_msgSend(MEMORY[0x277CEB3B8], "isInstalledAndNotRestrictedForBundle:", v19))
  {
    v23 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      [ATXModeFaceComplicationHeuristicDataSource _addComplicationWithFamily:extension:kind:container:score:to:];
    }
  }

  else
  {
    v23 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [ATXModeFaceComplicationHeuristicDataSource _addComplicationWithFamily:extension:kind:container:score:to:];
    }
  }
}

uint64_t __105__ATXModeFaceComplicationHeuristicDataSource__addSystemSmallWidgetWithExtension_kind_container_score_to___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 extensionBundleIdentifier];
  v5 = [v4 isEqualToString:a1[4]];

  if (v5 && ([v3 kind], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", a1[5]), v6, v7) && (objc_msgSend(v3, "supportedFamilies"), CHSWidgetFamilyMaskContainsFamily()))
  {
    v8 = [v3 extensionIdentity];
    v9 = [v8 containerBundleIdentifier];
    if (v9 == a1[6])
    {
      v12 = 1;
    }

    else
    {
      v10 = [v3 extensionIdentity];
      v11 = [v10 containerBundleIdentifier];
      v12 = [v11 isEqualToString:a1[6]];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_hasTVInterest
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CEB8F0] getUpcomingMediaForBundle:@"com.apple.tv" isInternalApplication:1];
  v3 = [v2 sortedUpcomingMedia];
  v4 = [v3 count];

  v5 = [MEMORY[0x277CEB2C8] getActionKeyForBundleId:@"com.apple.tv" actionType:@"INPlayMediaIntent"];
  v6 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v7 = [v6 histogramForLaunchType:17];

  v13[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [v7 totalLaunchesForBundleIds:v8];
  v10 = v9;

  v11 = *MEMORY[0x277D85DE8];
  return v10 + v4 > 0.0;
}

- (BOOL)_hasSignificantRemindersEvents
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  v4 = [ATXComplicationSuggestionHeuristics numberOfRemindersSinceDate:v3];
  LOBYTE(self) = v4 >= [(ATXSuggestedPagesTunableConstants *)self->_suggestedPagesTunableConstants faceComplicationsSignificantRemindersEventCount];

  return self;
}

- (BOOL)_hasSignificantHomeAccessoryEvents
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v3 = BiomeLibrary();
  v4 = [v3 HomeKit];
  v5 = [v4 Client];
  v6 = [v5 AccessoryControl];

  v7 = [v6 atx_publisherFromStartDate:0];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__ATXModeFaceComplicationHeuristicDataSource__hasSignificantHomeAccessoryEvents__block_invoke_121;
  v11[3] = &unk_278597BA8;
  v11[4] = &v12;
  v8 = [v7 sinkWithCompletion:&__block_literal_global_248 receiveInput:v11];

  v9 = v13[3];
  LOBYTE(self) = v9 > [(ATXSuggestedPagesTunableConstants *)self->_suggestedPagesTunableConstants faceComplicationsSignificantHomeAccessoryEventCount];

  _Block_object_dispose(&v12, 8);
  return self;
}

void __80__ATXModeFaceComplicationHeuristicDataSource__hasSignificantHomeAccessoryEvents__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __80__ATXModeFaceComplicationHeuristicDataSource__hasSignificantHomeAccessoryEvents__block_invoke_cold_1(v2);
    }
  }
}

void __80__ATXModeFaceComplicationHeuristicDataSource__hasSignificantHomeAccessoryEvents__block_invoke_121(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];

  if (v3)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

- (BOOL)_hasSignificantStocksEvents
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v3 = BiomeLibrary();
  v4 = [v3 App];
  v5 = [v4 Intent];

  v6 = [v5 atx_publisherFromStartDate:0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__ATXModeFaceComplicationHeuristicDataSource__hasSignificantStocksEvents__block_invoke_125;
  v10[3] = &unk_278597BA8;
  v10[4] = &v11;
  v7 = [v6 sinkWithCompletion:&__block_literal_global_124 receiveInput:v10];

  v8 = v12[3];
  LOBYTE(self) = v8 > [(ATXSuggestedPagesTunableConstants *)self->_suggestedPagesTunableConstants faceComplicationsSignificantStocksEventCount];

  _Block_object_dispose(&v11, 8);
  return self;
}

void __73__ATXModeFaceComplicationHeuristicDataSource__hasSignificantStocksEvents__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __73__ATXModeFaceComplicationHeuristicDataSource__hasSignificantStocksEvents__block_invoke_cold_1(v2);
    }
  }
}

void __73__ATXModeFaceComplicationHeuristicDataSource__hasSignificantStocksEvents__block_invoke_125(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 bundleID];
  v5 = [v4 isEqualToString:@"com.apple.stocks"];

  if (v5)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

- (void)provideComplicationsForSuggestedFaceType:environment:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, v0, v1, "ATXModeFaceComplicationHeuristicDataSource: unhandled face type: %ld", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_addComplicationWithFamily:extension:kind:container:score:to:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, v0, v1, "ATXModeFaceComplicationHeuristicDataSource: could not find descriptor for: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_addComplicationWithFamily:extension:kind:container:score:to:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_2263AA000, v0, OS_LOG_TYPE_ERROR, "ATXModeFaceComplicationHeuristicDataSource: could not find descriptor for: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __80__ATXModeFaceComplicationHeuristicDataSource__hasSignificantHomeAccessoryEvents__block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v2, v3, "Could not fetch Home accessory events: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __73__ATXModeFaceComplicationHeuristicDataSource__hasSignificantStocksEvents__block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v2, v3, "Could not fetch Stocks events: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end