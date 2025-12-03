@interface ATXBatteryDrainBehavior
+ (id)sharedInstance;
- (NSDate)lastCachedDate;
- (unint64_t)fetchADBLDrainClassification;
- (unint64_t)lastCachedClassification;
- (void)fetchADBLDrainClassification;
- (void)setLastCachedClassification:(unint64_t)classification;
- (void)setLastCachedDate:(id)date;
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

- (void)setLastCachedDate:(id)date
{
  v3 = MEMORY[0x1E695E000];
  dateCopy = date;
  v5 = [v3 alloc];
  v6 = [v5 initWithSuiteName:*MEMORY[0x1E698B030]];
  [v6 setObject:dateCopy forKey:@"lastCachedDrainBehaviorDate"];
}

- (unint64_t)lastCachedClassification
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x1E698B030]];
  v4 = [v3 integerForKey:@"lastCachedDrainBehaviorClassification"];

  return v4;
}

- (void)setLastCachedClassification:(unint64_t)classification
{
  v4 = objc_alloc(MEMORY[0x1E695E000]);
  v5 = [v4 initWithSuiteName:*MEMORY[0x1E698B030]];
  [v5 setInteger:classification forKey:@"lastCachedDrainBehaviorClassification"];
}

- (unint64_t)fetchADBLDrainClassification
{
  v25 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [MEMORY[0x1E695DF00] now];
  lastCachedDate = [(ATXBatteryDrainBehavior *)selfCopy lastCachedDate];
  lastCachedClassification = [(ATXBatteryDrainBehavior *)selfCopy lastCachedClassification];
  if (lastCachedDate && (historicalClassification = lastCachedClassification, [MEMORY[0x1E695DEE8] currentCalendar], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isDate:inSameDayAsDate:", lastCachedDate, v3), v7, v8))
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = historicalClassification;
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
    predictor = [v11 predictor];
    historicalClassification = [predictor historicalClassification];
    if (historicalClassification >= 4)
    {
      v14 = __atxlog_handle_default();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [(ATXBatteryDrainBehavior *)historicalClassification fetchADBLDrainClassification];
      }

      historicalClassification = 0;
    }

    v15 = __atxlog_handle_default();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = historicalClassification;
      _os_log_impl(&dword_1BF549000, v15, OS_LOG_TYPE_DEFAULT, "ATXBatteryDrainBehavior: drain classification: %lu", &buf, 0xCu);
    }

    [(ATXBatteryDrainBehavior *)selfCopy setLastCachedDate:v3];
    [(ATXBatteryDrainBehavior *)selfCopy setLastCachedClassification:historicalClassification];

    objc_autoreleasePoolPop(v10);
  }

  objc_sync_exit(selfCopy);
  return historicalClassification;
}

- (void)fetchADBLDrainClassification
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  selfCopy = self;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "Unknown drain behavior: %lu", &v2, 0xCu);
}

@end