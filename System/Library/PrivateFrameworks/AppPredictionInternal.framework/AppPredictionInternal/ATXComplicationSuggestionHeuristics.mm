@interface ATXComplicationSuggestionHeuristics
+ (id)_countedHomeAccessoryEvents;
+ (int64_t)scoreFromConfidence:(unsigned __int8)confidence;
+ (unint64_t)_fetchNumberOfCalendarEventsForStartDate:(id)date endDate:(id)endDate;
+ (unint64_t)_numBluetoothConnectionsOverLastWeek;
+ (unint64_t)_numCalendarEventsOverLastAndNextWeek;
+ (unint64_t)_numRemindersOverLastWeek;
+ (unint64_t)getClimateCountGivenHomeCounts:(id)counts;
+ (unint64_t)getLightCountGivenHomeCounts:(id)counts;
+ (unint64_t)getSecurityCountGivenHomeCounts:(id)counts;
+ (unint64_t)numberOfRemindersSinceDate:(id)date;
- (ATXComplicationSuggestionHeuristics)init;
- (id)_homeHeuristics;
- (id)complicationHeuristicsDictionary;
- (id)description;
- (unsigned)_batteryHeuristic;
- (unsigned)_calendarHeuristic;
- (unsigned)_reminderHeuristic;
- (void)flushCache;
@end

@implementation ATXComplicationSuggestionHeuristics

- (ATXComplicationSuggestionHeuristics)init
{
  v5.receiver = self;
  v5.super_class = ATXComplicationSuggestionHeuristics;
  v2 = [(ATXComplicationSuggestionHeuristics *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ATXComplicationSuggestionHeuristics *)v2 flushCache];
  }

  return v3;
}

- (void)flushCache
{
  v3 = [objc_alloc(MEMORY[0x277D425E8]) initWithBlock:&__block_literal_global_8 idleTimeout:3600.0];
  cache = self->_cache;
  self->_cache = v3;

  MEMORY[0x2821F96F8]();
}

ATXComplicationSuggestionHeuristicsCache *__49__ATXComplicationSuggestionHeuristics_flushCache__block_invoke()
{
  v0 = objc_alloc_init(ATXComplicationSuggestionHeuristicsCache);
  [(ATXComplicationSuggestionHeuristicsCache *)v0 setNumBluetoothConnectionsOverLastWeek:+[ATXComplicationSuggestionHeuristics _numBluetoothConnectionsOverLastWeek]];
  [(ATXComplicationSuggestionHeuristicsCache *)v0 setNumCalendarEventsOverLastAndNextWeek:+[ATXComplicationSuggestionHeuristics _numCalendarEventsOverLastAndNextWeek]];
  [(ATXComplicationSuggestionHeuristicsCache *)v0 setNumRemindersOverLastWeek:+[ATXComplicationSuggestionHeuristics _numRemindersOverLastWeek]];

  return v0;
}

- (id)complicationHeuristicsDictionary
{
  v3 = objc_opt_new();
  _batteryHeuristic = [(ATXComplicationSuggestionHeuristics *)self _batteryHeuristic];
  if ([(ATXComplicationSuggestionHeuristics *)self _confidenceIsValidForPrediction:_batteryHeuristic])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:_batteryHeuristic];
    v6 = +[ATXComplicationWidgetPersonalities batteryComplicationWidgetPersonality];
    [v3 setObject:v5 forKeyedSubscript:v6];
  }

  _calendarHeuristic = [(ATXComplicationSuggestionHeuristics *)self _calendarHeuristic];
  if ([(ATXComplicationSuggestionHeuristics *)self _confidenceIsValidForPrediction:_calendarHeuristic])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:_calendarHeuristic];
    v9 = +[ATXComplicationWidgetPersonalities calendarNextEventComplicationWidgetPersonality];
    [v3 setObject:v8 forKeyedSubscript:v9];
  }

  _reminderHeuristic = [(ATXComplicationSuggestionHeuristics *)self _reminderHeuristic];
  if ([(ATXComplicationSuggestionHeuristics *)self _confidenceIsValidForPrediction:_reminderHeuristic])
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:_reminderHeuristic];
    v12 = +[ATXComplicationWidgetPersonalities remindersComplicationWidgetPersonality];
    [v3 setObject:v11 forKeyedSubscript:v12];
  }

  v13 = +[ATXComplicationWidgetPersonalities weatherConditionsComplicationWidgetPersonality];
  [v3 setObject:&unk_283A551D8 forKeyedSubscript:v13];

  _homeHeuristics = [(ATXComplicationSuggestionHeuristics *)self _homeHeuristics];
  [v3 addEntriesFromDictionary:_homeHeuristics];

  return v3;
}

- (id)description
{
  v72 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 appendString:@"\nHeurstics scores:\n\n"];
  v4 = +[ATXComplicationWidgetPersonalities batteryComplicationWidgetPersonality];
  v5 = [objc_opt_class() scoreFromConfidence:{-[ATXComplicationSuggestionHeuristics _batteryHeuristic](self, "_batteryHeuristic")}];
  result = [(_PASLazyPurgeableResult *)self->_cache result];
  numBluetoothConnectionsOverLastWeek = [result numBluetoothConnectionsOverLastWeek];

  v8 = MEMORY[0x277CCACA8];
  extensionBundleId = [v4 extensionBundleId];
  v66 = v4;
  kind = [v4 kind];
  v11 = [v8 stringWithFormat:@"Extension BundleId: %@\nKind: %@\nScore: %lu\nBluetooth connections over last week: %lu\n\n", extensionBundleId, kind, v5, numBluetoothConnectionsOverLastWeek];

  v65 = v11;
  [v3 appendString:v11];
  v12 = +[ATXComplicationWidgetPersonalities calendarNextEventComplicationWidgetPersonality];
  v13 = [objc_opt_class() scoreFromConfidence:{-[ATXComplicationSuggestionHeuristics _calendarHeuristic](self, "_calendarHeuristic")}];
  result2 = [(_PASLazyPurgeableResult *)self->_cache result];
  numCalendarEventsOverLastAndNextWeek = [result2 numCalendarEventsOverLastAndNextWeek];

  v16 = MEMORY[0x277CCACA8];
  extensionBundleId2 = [v12 extensionBundleId];
  v64 = v12;
  kind2 = [v12 kind];
  v19 = [v16 stringWithFormat:@"Extension BundleId: %@\nKind: %@\nScore: %lu\nCalendar events over last and next week: %lu\n\n", extensionBundleId2, kind2, v13, numCalendarEventsOverLastAndNextWeek];

  v63 = v19;
  [v3 appendString:v19];
  v20 = +[ATXComplicationWidgetPersonalities remindersComplicationWidgetPersonality];
  _reminderHeuristic = [(ATXComplicationSuggestionHeuristics *)self _reminderHeuristic];
  result3 = [(_PASLazyPurgeableResult *)self->_cache result];
  numRemindersOverLastWeek = [result3 numRemindersOverLastWeek];

  v24 = [objc_opt_class() scoreFromConfidence:_reminderHeuristic];
  v25 = MEMORY[0x277CCACA8];
  extensionBundleId3 = [v20 extensionBundleId];
  v62 = v20;
  kind3 = [v20 kind];
  v28 = [v25 stringWithFormat:@"Extension BundleId: %@\nKind: %@\nScore: %lu\nReminders over last week: %lu\n\n", extensionBundleId3, kind3, v24, numRemindersOverLastWeek];

  v61 = v28;
  [v3 appendString:v28];
  v29 = +[ATXComplicationWidgetPersonalities weatherConditionsComplicationWidgetPersonality];
  v30 = [objc_opt_class() scoreFromConfidence:4];
  v31 = MEMORY[0x277CCACA8];
  extensionBundleId4 = [v29 extensionBundleId];
  v60 = v29;
  kind4 = [v29 kind];
  v34 = [v31 stringWithFormat:@"Extension BundleId: %@\nKind: %@\nScore: %lu\n\n", extensionBundleId4, kind4, v30];

  v59 = v34;
  [v3 appendString:v34];
  _countedHomeAccessoryEvents = [objc_opt_class() _countedHomeAccessoryEvents];
  v36 = [objc_opt_class() getClimateCountGivenHomeCounts:_countedHomeAccessoryEvents];
  v37 = [objc_opt_class() getLightCountGivenHomeCounts:_countedHomeAccessoryEvents];
  v58 = _countedHomeAccessoryEvents;
  v38 = [objc_opt_class() getSecurityCountGivenHomeCounts:_countedHomeAccessoryEvents];
  [v3 appendString:@"Home Heuristics \n"];
  v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"Climate Count: %lu\n", v36];
  [v3 appendString:v39];

  v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"Security Count: %lu\n", v38];
  [v3 appendString:v40];

  v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"Lights Count: %lu\n", v37];
  [v3 appendString:v41];

  v42 = v3;
  [v3 appendString:@"Scores: \n"];
  _homeHeuristics = [(ATXComplicationSuggestionHeuristics *)self _homeHeuristics];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v44 = [_homeHeuristics countByEnumeratingWithState:&v67 objects:v71 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v68;
    do
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v68 != v46)
        {
          objc_enumerationMutation(_homeHeuristics);
        }

        v48 = *(*(&v67 + 1) + 8 * i);
        v49 = objc_opt_class();
        v50 = [_homeHeuristics objectForKeyedSubscript:v48];
        v51 = [v49 scoreFromConfidence:{objc_msgSend(v50, "unsignedIntegerValue")}];

        v52 = MEMORY[0x277CCACA8];
        kind5 = [v48 kind];
        v54 = [v52 stringWithFormat:@"%@: %ld\n", kind5, v51];
        [v42 appendString:v54];
      }

      v45 = [_homeHeuristics countByEnumeratingWithState:&v67 objects:v71 count:16];
    }

    while (v45);
  }

  [v42 appendString:@"\n"];
  v55 = [v42 copy];

  v56 = *MEMORY[0x277D85DE8];

  return v55;
}

+ (int64_t)scoreFromConfidence:(unsigned __int8)confidence
{
  if (confidence > 5u)
  {
    return -10000;
  }

  else
  {
    return qword_226871D90[confidence];
  }
}

- (unsigned)_batteryHeuristic
{
  v3 = objc_autoreleasePoolPush();
  result = [(_PASLazyPurgeableResult *)self->_cache result];
  numBluetoothConnectionsOverLastWeek = [result numBluetoothConnectionsOverLastWeek];

  if (numBluetoothConnectionsOverLastWeek <= 0x14)
  {
    if (numBluetoothConnectionsOverLastWeek <= 5)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    if (numBluetoothConnectionsOverLastWeek <= 0xA)
    {
      v6 = v7;
    }

    else
    {
      v6 = 4;
    }
  }

  else
  {
    v6 = 5;
  }

  objc_autoreleasePoolPop(v3);
  return v6;
}

- (unsigned)_calendarHeuristic
{
  v3 = objc_autoreleasePoolPush();
  result = [(_PASLazyPurgeableResult *)self->_cache result];
  numCalendarEventsOverLastAndNextWeek = [result numCalendarEventsOverLastAndNextWeek];

  if (numCalendarEventsOverLastAndNextWeek <= 0x32)
  {
    if (numCalendarEventsOverLastAndNextWeek <= 8)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    if (numCalendarEventsOverLastAndNextWeek <= 0x14)
    {
      v6 = v7;
    }

    else
    {
      v6 = 4;
    }
  }

  else
  {
    v6 = 5;
  }

  objc_autoreleasePoolPop(v3);
  return v6;
}

- (unsigned)_reminderHeuristic
{
  v3 = objc_autoreleasePoolPush();
  result = [(_PASLazyPurgeableResult *)self->_cache result];
  numRemindersOverLastWeek = [result numRemindersOverLastWeek];

  if (numRemindersOverLastWeek <= 0xA)
  {
    if (numRemindersOverLastWeek <= 1)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    if (numRemindersOverLastWeek <= 5)
    {
      v6 = v7;
    }

    else
    {
      v6 = 4;
    }
  }

  else
  {
    v6 = 5;
  }

  objc_autoreleasePoolPop(v3);
  return v6;
}

- (id)_homeHeuristics
{
  _countedHomeAccessoryEvents = [objc_opt_class() _countedHomeAccessoryEvents];
  v4 = [objc_opt_class() getClimateCountGivenHomeCounts:_countedHomeAccessoryEvents];
  v5 = [objc_opt_class() getLightCountGivenHomeCounts:_countedHomeAccessoryEvents];
  v6 = [objc_opt_class() getSecurityCountGivenHomeCounts:_countedHomeAccessoryEvents];
  v7 = objc_opt_new();
  if (v4 && v5 && v6)
  {
    v8 = v5 + v4 + v6;
    if (v8)
    {
      v9 = 3;
    }

    else
    {
      v9 = 1;
    }

    if (v8 <= 5)
    {
      v10 = v9;
    }

    else
    {
      v10 = 4;
    }

    v11 = 1;
    v12 = 1;
    v13 = 1;
    if (v8 <= 0xF)
    {
      v14 = v10;
    }

    else
    {
      v14 = 5;
    }
  }

  else
  {
    if (v4)
    {
      v15 = 3;
    }

    else
    {
      v15 = 1;
    }

    if (v4 > 5)
    {
      v15 = 4;
    }

    if (v4 <= 0xF)
    {
      v11 = v15;
    }

    else
    {
      v11 = 5;
    }

    if (v5)
    {
      v16 = 3;
    }

    else
    {
      v16 = 1;
    }

    if (v5 > 5)
    {
      v16 = 4;
    }

    if (v5 <= 0xF)
    {
      v12 = v16;
    }

    else
    {
      v12 = 5;
    }

    if (v6)
    {
      v17 = 3;
    }

    else
    {
      v17 = 1;
    }

    if (v6 > 5)
    {
      v17 = 4;
    }

    if (v6 <= 0xF)
    {
      v13 = v17;
    }

    else
    {
      v13 = 5;
    }

    v14 = 1;
  }

  if ([(ATXComplicationSuggestionHeuristics *)self _confidenceIsValidForPrediction:v14])
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v14];
    v19 = +[ATXComplicationWidgetPersonalities homeSummaryComplicationWidgetPersonality];
    [v7 setObject:v18 forKeyedSubscript:v19];
  }

  if ([(ATXComplicationSuggestionHeuristics *)self _confidenceIsValidForPrediction:v11])
  {
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v11];
    v21 = +[ATXComplicationWidgetPersonalities homeClimateComplicationWidgetPersonality];
    [v7 setObject:v20 forKeyedSubscript:v21];
  }

  if ([(ATXComplicationSuggestionHeuristics *)self _confidenceIsValidForPrediction:v13])
  {
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v13];
    v23 = +[ATXComplicationWidgetPersonalities homeSecurityComplicationWidgetPersonality];
    [v7 setObject:v22 forKeyedSubscript:v23];
  }

  if ([(ATXComplicationSuggestionHeuristics *)self _confidenceIsValidForPrediction:v12])
  {
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v12];
    v25 = +[ATXComplicationWidgetPersonalities homeLightsComplicationWidgetPersonality];
    [v7 setObject:v24 forKeyedSubscript:v25];
  }

  v26 = +[ATXComplicationWidgetPersonalities homeSecuritySingleSensorComplicationWidgetPersonality];
  [v7 setObject:&unk_283A551F0 forKeyedSubscript:v26];

  v27 = +[ATXComplicationWidgetPersonalities homeClimateSingleSensorComplicationWidgetPersonality];
  [v7 setObject:&unk_283A551F0 forKeyedSubscript:v27];

  return v7;
}

+ (unint64_t)getClimateCountGivenHomeCounts:(id)counts
{
  countsCopy = counts;
  v4 = [countsCopy countForObject:@"0000008A-0000-1000-8000-0026BB765291"];
  v5 = [countsCopy countForObject:@"0000004A-0000-1000-8000-0026BB765291"] + v4;
  v6 = [countsCopy countForObject:@"000000BC-0000-1000-8000-0026BB765291"];
  v7 = v5 + v6 + [countsCopy countForObject:@"000000BD-0000-1000-8000-0026BB765291"];
  v8 = [countsCopy countForObject:@"0000008D-0000-1000-8000-0026BB765291"];
  v9 = [countsCopy countForObject:@"00000082-0000-1000-8000-0026BB765291"];

  return v7 + v8 + v9;
}

+ (unint64_t)getSecurityCountGivenHomeCounts:(id)counts
{
  countsCopy = counts;
  v4 = [countsCopy countForObject:@"00000041-0000-1000-8000-0026BB765291"];
  v5 = [countsCopy countForObject:@"00000081-0000-1000-8000-0026BB765291"] + v4;
  v6 = [countsCopy countForObject:@"0000008B-0000-1000-8000-0026BB765291"];
  v7 = v5 + v6 + [countsCopy countForObject:@"00000080-0000-1000-8000-0026BB765291"];
  v8 = [countsCopy countForObject:@"00000045-0000-1000-8000-0026BB765291"];
  v9 = [countsCopy countForObject:@"0000007E-0000-1000-8000-0026BB765291"];

  return v7 + v8 + v9;
}

+ (unint64_t)getLightCountGivenHomeCounts:(id)counts
{
  countsCopy = counts;
  v4 = [countsCopy countForObject:@"00000043-0000-1000-8000-0026BB765291"];
  v5 = [countsCopy countForObject:@"00000049-0000-1000-8000-0026BB765291"] + v4;
  v6 = [countsCopy countForObject:@"00000047-0000-1000-8000-0026BB765291"];

  return v5 + v6;
}

+ (unint64_t)_numBluetoothConnectionsOverLastWeek
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-604800.0];
  v4 = objc_opt_new();
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v5 = BiomeLibrary();
  device = [v5 Device];
  wireless = [device Wireless];
  bluetooth = [wireless Bluetooth];
  v9 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:v3 endDate:0 maxEvents:0 lastN:0 reversed:0];
  v10 = [bluetooth publisherWithUseCase:*MEMORY[0x277CEBB48] options:v9];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__ATXComplicationSuggestionHeuristics__numBluetoothConnectionsOverLastWeek__block_invoke_139;
  v15[3] = &unk_278596F10;
  v11 = v4;
  v16 = v11;
  v17 = &v18;
  v12 = [v10 sinkWithCompletion:&__block_literal_global_138 receiveInput:v15];

  v13 = v19[3];
  _Block_object_dispose(&v18, 8);

  objc_autoreleasePoolPop(v2);
  return v13;
}

void __75__ATXComplicationSuggestionHeuristics__numBluetoothConnectionsOverLastWeek__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __75__ATXComplicationSuggestionHeuristics__numBluetoothConnectionsOverLastWeek__block_invoke_cold_1(v2);
    }
  }
}

void __75__ATXComplicationSuggestionHeuristics__numBluetoothConnectionsOverLastWeek__block_invoke_139(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 eventBody];
  v4 = [v3 address];

  if ([v4 length])
  {
    v5 = [v13 eventBody];
    v6 = [v5 starting];

    if (v6)
    {
      v7 = MEMORY[0x277CCABB0];
      [v13 timestamp];
      v8 = [v7 numberWithDouble:?];
      [*(a1 + 32) setObject:v8 forKeyedSubscript:v4];
    }

    else
    {
      v9 = [*(a1 + 32) objectForKeyedSubscript:v4];
      [v9 doubleValue];
      v11 = v10;

      if (v11 != 0.0)
      {
        [v13 timestamp];
        if (v12 - v11 >= 60.0)
        {
          ++*(*(*(a1 + 40) + 8) + 24);
        }

        [*(a1 + 32) setObject:0 forKeyedSubscript:v4];
      }
    }
  }
}

+ (unint64_t)_numRemindersOverLastWeek
{
  v3 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-604800.0];
  v4 = [self numberOfRemindersSinceDate:v3];

  return v4;
}

+ (unint64_t)numberOfRemindersSinceDate:(id)date
{
  dateCopy = date;
  v4 = +[_ATXDataStore sharedInstance];
  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = [v4 numBundleIdOccurrencesForBundleId:@"com.apple.reminders" startDate:dateCopy endDate:v5];

  return v6;
}

+ (unint64_t)_numCalendarEventsOverLastAndNextWeek
{
  v2 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-604800.0];
  v3 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:604800.0];
  v4 = [objc_opt_class() _fetchNumberOfCalendarEventsForStartDate:v2 endDate:v3];

  return v4;
}

+ (unint64_t)_fetchNumberOfCalendarEventsForStartDate:(id)date endDate:(id)endDate
{
  v35 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  v7 = objc_autoreleasePoolPush();
  v8 = [objc_alloc(MEMORY[0x277CC5A40]) initWithEKOptions:128];
  v9 = [objc_alloc(MEMORY[0x277CF77A0]) initWithStartDate:dateCopy endDate:endDateCopy];
  v10 = dispatch_semaphore_create(0);
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__3;
  v32 = __Block_byref_object_dispose__3;
  v33 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __88__ATXComplicationSuggestionHeuristics__fetchNumberOfCalendarEventsForStartDate_endDate___block_invoke;
  v25[3] = &unk_278596F38;
  v27 = &v28;
  v11 = v10;
  v26 = v11;
  [v8 fetchEventCountsInRange:v9 inCalendars:0 exclusionOptions:0 completion:v25];
  [MEMORY[0x277D425A0] waitForSemaphore:v11 timeoutSeconds:5.0];
  v12 = v29[5];
  if (!v12)
  {
    v13 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXComplicationSuggestionHeuristics _fetchNumberOfCalendarEventsForStartDate:v13 endDate:?];
    }

    goto LABEL_12;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v34 count:16];
  if (!v14)
  {
LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  v20 = v7;
  v15 = 0;
  v16 = *v22;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v22 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v15 += [v29[5] countForObject:*(*(&v21 + 1) + 8 * i)];
    }

    v14 = [v13 countByEnumeratingWithState:&v21 objects:v34 count:16];
  }

  while (v14);
  v7 = v20;
LABEL_13:

  _Block_object_dispose(&v28, 8);
  objc_autoreleasePoolPop(v7);

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

void __88__ATXComplicationSuggestionHeuristics__fetchNumberOfCalendarEventsForStartDate_endDate___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (id)_countedHomeAccessoryEvents
{
  v2 = objc_opt_new();
  v3 = BiomeLibrary();
  homeKit = [v3 HomeKit];
  client = [homeKit Client];
  accessoryControl = [client AccessoryControl];

  v7 = [accessoryControl atx_publisherFromStartDate:0];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__ATXComplicationSuggestionHeuristics__countedHomeAccessoryEvents__block_invoke_152;
  v11[3] = &unk_278596F60;
  v8 = v2;
  v12 = v8;
  v9 = [v7 sinkWithCompletion:&__block_literal_global_151 receiveInput:v11];

  return v8;
}

void __66__ATXComplicationSuggestionHeuristics__countedHomeAccessoryEvents__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__ATXComplicationSuggestionHeuristics__countedHomeAccessoryEvents__block_invoke_cold_1(v2);
    }
  }
}

void __66__ATXComplicationSuggestionHeuristics__countedHomeAccessoryEvents__block_invoke_152(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 eventBody];
    v7 = [v6 serviceType];

    if (v7)
    {
      v8 = *(a1 + 32);
      v9 = [v6 serviceType];
      [v8 addObject:v9];
    }
  }

  else
  {
    v10 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __66__ATXComplicationSuggestionHeuristics__countedHomeAccessoryEvents__block_invoke_152_cold_1(v3);
    }
  }
}

void __75__ATXComplicationSuggestionHeuristics__numBluetoothConnectionsOverLastWeek__block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v2, v3, "Could not query Bluetooth connected events for complication heuristics: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __66__ATXComplicationSuggestionHeuristics__countedHomeAccessoryEvents__block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v2, v3, "Could not fetch Home accessory events: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __66__ATXComplicationSuggestionHeuristics__countedHomeAccessoryEvents__block_invoke_152_cold_1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 eventBody];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v4, v5, "Incorrect class received while fetching home accessory events: %@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

@end