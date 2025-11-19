@interface ATXBatteryDrainBehavior
+ (id)sharedInstance;
- (NSDate)lastCachedDate;
- (unint64_t)fetchADBLDrainClassification;
- (unint64_t)lastCachedClassification;
- (void)fetchADBLDrainClassification;
- (void)setLastCachedClassification:(unint64_t)a3;
- (void)setLastCachedDate:(id)a3;
@end

@implementation ATXBatteryDrainBehavior

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[ATXBatteryDrainBehavior sharedInstance];
  }

  v3 = sharedInstance_predictor;

  return v3;
}

uint64_t __41__ATXBatteryDrainBehavior_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(ATXBatteryDrainBehavior);
  v1 = sharedInstance_predictor;
  sharedInstance_predictor = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (NSDate)lastCachedDate
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x1E698B030]];
  v4 = [v3 objectForKey:@"lastCachedDrainBehaviorDate"];

  return v4;
}

- (void)setLastCachedDate:(id)a3
{
  v3 = MEMORY[0x1E695E000];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithSuiteName:*MEMORY[0x1E698B030]];
  [v6 setObject:v4 forKey:@"lastCachedDrainBehaviorDate"];
}

- (unint64_t)lastCachedClassification
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x1E698B030]];
  v4 = [v3 integerForKey:@"lastCachedDrainBehaviorClassification"];

  return v4;
}

- (void)setLastCachedClassification:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E695E000]);
  v5 = [v4 initWithSuiteName:*MEMORY[0x1E698B030]];
  [v5 setInteger:a3 forKey:@"lastCachedDrainBehaviorClassification"];
}

- (unint64_t)fetchADBLDrainClassification
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [MEMORY[0x1E695DF00] now];
  v4 = [(ATXBatteryDrainBehavior *)v2 lastCachedDate];
  v5 = [(ATXBatteryDrainBehavior *)v2 lastCachedClassification];
  if (v4 && (v6 = v5, [MEMORY[0x1E695DEE8] currentCalendar], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isDate:inSameDayAsDate:", v4, v3), v7, v8))
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_DEFAULT, "ATXBatteryDrainBehavior: returning cached drain classification: %lu", &buf, 0xCu);
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v11 = get_OSBatteryDrainPredictorClass_softClass;
    v20 = get_OSBatteryDrainPredictorClass_softClass;
    if (!get_OSBatteryDrainPredictorClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v22 = __get_OSBatteryDrainPredictorClass_block_invoke;
      v23 = &unk_1E80C0758;
      v24 = &v17;
      __get_OSBatteryDrainPredictorClass_block_invoke(&buf);
      v11 = v18[3];
    }

    v12 = v11;
    _Block_object_dispose(&v17, 8);
    v13 = [v11 predictor];
    v6 = [v13 historicalClassification];
    if (v6 >= 4)
    {
      v14 = __atxlog_handle_default();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [(ATXBatteryDrainBehavior *)v6 fetchADBLDrainClassification];
      }

      v6 = 0;
    }

    v15 = __atxlog_handle_default();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_1BF549000, v15, OS_LOG_TYPE_DEFAULT, "ATXBatteryDrainBehavior: drain classification: %lu", &buf, 0xCu);
    }

    [(ATXBatteryDrainBehavior *)v2 setLastCachedDate:v3];
    [(ATXBatteryDrainBehavior *)v2 setLastCachedClassification:v6];

    objc_autoreleasePoolPop(v10);
  }

  objc_sync_exit(v2);
  return v6;
}

- (void)fetchADBLDrainClassification
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "Unknown drain behavior: %lu", &v2, 0xCu);
}

@end