@interface _ATXAppDailyDose
+ (void)deleteCurrentDoseFile;
- (BOOL)_loadHistoricalDoseFrom:(id)from;
- (_ATXAppDailyDose)init;
- (_ATXAppDailyDose)initWithAppInFocusStream:(id)stream;
- (_ATXAppDailyDose)initWithAppInFocusStream:(id)stream timeZone:(id)zone today:(id)today alpha:(double)alpha historicalDosePath:(id)path completion:(id)completion;
- (double)getCurrentDoseForApp:(id)app;
- (id)getDoseForApp:(id)app;
- (id)previousBundleId;
- (void)_asyncStopAppUsageAtDate:(id)date completion:(id)completion;
- (void)_backfillAppDurationMapDBForToday;
- (void)_doTrainingOn:(id)on timeZone:(id)zone completion:(id)completion;
- (void)_recordAppDurationForApp:(id)app withStartTime:(id)time andEndTime:(id)endTime;
- (void)_writeHistoricalDoseWithCompletion:(id)completion;
- (void)addLaunchForBundleId:(id)id date:(id)date completion:(id)completion;
- (void)stopAppUsageAtDate:(id)date;
- (void)train;
@end

@implementation _ATXAppDailyDose

- (_ATXAppDailyDose)init
{
  v3 = objc_opt_new();
  v4 = [(_ATXAppDailyDose *)self initWithAppInFocusStream:v3];

  return v4;
}

- (_ATXAppDailyDose)initWithAppInFocusStream:(id)stream
{
  streamCopy = stream;
  if (!streamCopy)
  {
    [_ATXAppDailyDose initWithAppInFocusStream:];
  }

  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  v6 = [MEMORY[0x277CEB3C0] dictionaryWithLegacyPathForClass:objc_opt_class()];
  v7 = [v6 objectForKeyedSubscript:@"SmoothingAlpha"];
  if (!v7)
  {
    [_ATXAppDailyDose initWithAppInFocusStream:];
  }

  [v7 doubleValue];
  v9 = v8;
  v10 = [(_ATXAppDailyDose *)self todayWithTimeZone:systemTimeZone];
  v11 = [(_ATXAppDailyDose *)self initWithAppInFocusStream:streamCopy timeZone:systemTimeZone today:v10 alpha:0 historicalDosePath:0 completion:v9];

  return v11;
}

- (_ATXAppDailyDose)initWithAppInFocusStream:(id)stream timeZone:(id)zone today:(id)today alpha:(double)alpha historicalDosePath:(id)path completion:(id)completion
{
  streamCopy = stream;
  zoneCopy = zone;
  todayCopy = today;
  pathCopy = path;
  completionCopy = completion;
  if (!streamCopy)
  {
    [_ATXAppDailyDose initWithAppInFocusStream:timeZone:today:alpha:historicalDosePath:completion:];
  }

  v40.receiver = self;
  v40.super_class = _ATXAppDailyDose;
  v20 = [(_ATXAppDailyDose *)&v40 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_appInFocusStream, stream);
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    uTF8String = [v23 UTF8String];
    v25 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v26 = dispatch_queue_create(uTF8String, v25);
    queue = v21->_queue;
    v21->_queue = v26;

    v28 = [_ATXAppDailyDoseCurrentStore alloc];
    v29 = +[_ATXAppDailyDose _defaultCurrentDosePath];
    v30 = [(_ATXAppDailyDoseCurrentStore *)v28 initWithPath:v29];
    currentDoseStore = v21->_currentDoseStore;
    v21->_currentDoseStore = v30;

    v21->_alpha = alpha;
    v32 = MEMORY[0x277D42598];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __96___ATXAppDailyDose_initWithAppInFocusStream_timeZone_today_alpha_historicalDosePath_completion___block_invoke;
    v34[3] = &unk_27859A888;
    v35 = v21;
    v36 = pathCopy;
    v37 = todayCopy;
    v38 = zoneCopy;
    v39 = completionCopy;
    [v32 runBlockWhenDeviceIsClassCUnlocked:v34];
  }

  return v21;
}

- (id)getDoseForApp:(id)app
{
  appCopy = app;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__34;
  v16 = __Block_byref_object_dispose__34;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34___ATXAppDailyDose_getDoseForApp___block_invoke;
  block[3] = &unk_27859A8B0;
  v10 = appCopy;
  v11 = &v12;
  block[4] = self;
  v6 = appCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (double)getCurrentDoseForApp:(id)app
{
  appCopy = app;
  v5 = appCopy;
  if (appCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41___ATXAppDailyDose_getCurrentDoseForApp___block_invoke;
    block[3] = &unk_27859A8B0;
    v11 = &v12;
    block[4] = self;
    v10 = appCopy;
    dispatch_sync(queue, block);
    v7 = v13[3];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (void)train
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25___ATXAppDailyDose_train__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_doTrainingOn:(id)on timeZone:(id)zone completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  onCopy = on;
  zoneCopy = zone;
  completionCopy = completion;
  v11 = __atxlog_handle_default();
  v12 = os_signpost_id_generate(v11);

  v13 = __atxlog_handle_default();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 136446210;
    v31 = "_ATXAppDailyDose";
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "Train", "Component=%{public,signpost.telemetry:string1}s  enableTelemetry=YES ", buf, 0xCu);
  }

  v15 = os_transaction_create();
  v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v17 = dispatch_queue_attr_make_with_qos_class(v16, QOS_CLASS_BACKGROUND, 0);

  v18 = dispatch_queue_create("ATXAppDailyDose-train", v17);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __54___ATXAppDailyDose__doTrainingOn_timeZone_completion___block_invoke;
  v24[3] = &unk_27859A928;
  v24[4] = self;
  v25 = onCopy;
  v28 = completionCopy;
  v29 = v12;
  v26 = zoneCopy;
  v27 = v15;
  v19 = v15;
  v20 = completionCopy;
  v21 = zoneCopy;
  v22 = onCopy;
  dispatch_async(v18, v24);

  v23 = *MEMORY[0x277D85DE8];
}

- (void)addLaunchForBundleId:(id)id date:(id)date completion:(id)completion
{
  idCopy = id;
  dateCopy = date;
  completionCopy = completion;
  if (!idCopy)
  {
    [_ATXAppDailyDose addLaunchForBundleId:date:completion:];
    if (dateCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    [_ATXAppDailyDose addLaunchForBundleId:date:completion:];
    goto LABEL_3;
  }

  if (!dateCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57___ATXAppDailyDose_addLaunchForBundleId_date_completion___block_invoke;
  v15[3] = &unk_27859A860;
  v15[4] = self;
  v16 = dateCopy;
  v17 = idCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = idCopy;
  v14 = dateCopy;
  dispatch_async(queue, v15);
}

- (void)_recordAppDurationForApp:(id)app withStartTime:(id)time andEndTime:(id)endTime
{
  appCopy = app;
  queue = self->_queue;
  endTimeCopy = endTime;
  timeCopy = time;
  dispatch_assert_queue_V2(queue);
  [endTimeCopy timeIntervalSinceDate:timeCopy];
  v12 = v11;

  currentDoseStore = self->_currentDoseStore;
  v14 = [(_ATXAppDailyDose *)self now];
  LODWORD(currentDoseStore) = [(_ATXAppDailyDoseCurrentStore *)currentDoseStore isExpiredAt:v14];

  if (currentDoseStore)
  {
    [(_ATXAppDailyDose *)self _backfillAppDurationMapDBForToday];
  }

  [(_ATXAppDailyDoseCurrentStore *)self->_currentDoseStore increaseDoseFor:appCopy by:v12];
}

- (void)stopAppUsageAtDate:(id)date
{
  dateCopy = date;
  v5 = dateCopy;
  if (!dateCopy)
  {
    [_ATXAppDailyDose stopAppUsageAtDate:];
    dateCopy = 0;
  }

  [(_ATXAppDailyDose *)self _asyncStopAppUsageAtDate:dateCopy completion:0];
}

- (void)_asyncStopAppUsageAtDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56___ATXAppDailyDose__asyncStopAppUsageAtDate_completion___block_invoke;
  block[3] = &unk_27859A950;
  block[4] = self;
  v12 = dateCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dateCopy;
  dispatch_sync(queue, block);
}

+ (void)deleteCurrentDoseFile
{
  v4 = objc_opt_new();
  _defaultCurrentDosePath = [self _defaultCurrentDosePath];
  [v4 writeToFile:_defaultCurrentDosePath atomically:0];
}

- (void)_writeHistoricalDoseWithCompletion:(id)completion
{
  v22[3] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  v6 = objc_autoreleasePoolPush();
  v21[0] = @"appAverageDurationMapKey";
  v21[1] = @"duetHistoryTimestamp";
  duetHistoryTimestamp = self->_duetHistoryTimestamp;
  v22[0] = self->_appHistoricalDoseMap;
  v22[1] = duetHistoryTimestamp;
  v21[2] = @"modelVersion";
  v22[2] = &unk_283A55910;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v20 = 0;
  v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v20];
  v10 = v20;
  if (!v9)
  {
    [(_ATXAppDailyDose *)a2 _writeHistoricalDoseWithCompletion:v10];
  }

  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_BACKGROUND, 0);
  v13 = dispatch_queue_create("daily-dose-write", v12);

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __55___ATXAppDailyDose__writeHistoricalDoseWithCompletion___block_invoke;
  v17[3] = &unk_2785968C8;
  v18 = v9;
  v14 = completionCopy;
  v19 = v14;
  v15 = v9;
  dispatch_async(v13, v17);

  objc_autoreleasePoolPop(v6);
  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)_loadHistoricalDoseFrom:(id)from
{
  fromCopy = from;
  if (!fromCopy)
  {
    fromCopy = +[_ATXAppDailyDose _defaultHistoricalDosePath];
  }

  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_autoreleasePoolPush();
  v28 = 0;
  v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:fromCopy options:0 error:&v28];
  v7 = v28;
  v8 = v7;
  if (v6)
  {
    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v9 setWithObjects:{v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = objc_autoreleasePoolPush();
    v27 = v8;
    v16 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v14 fromData:v6 error:&v27];
    v17 = v27;

    objc_autoreleasePoolPop(v15);
    if (v16)
    {
      v18 = [v16 objectForKeyedSubscript:@"modelVersion"];
      integerValue = [v18 integerValue];

      if (integerValue < 1)
      {
        v23 = 0;
        goto LABEL_18;
      }

      v20 = [v16 objectForKeyedSubscript:@"duetHistoryTimestamp"];
      v21 = [(_ATXAppDailyDose *)self now];
      v22 = [v20 compare:v21];

      v23 = v22 != 1;
      if (v22 != 1)
      {
        v24 = [v16 objectForKeyedSubscript:@"appAverageDurationMapKey"];
        appHistoricalDoseMap = self->_appHistoricalDoseMap;
        self->_appHistoricalDoseMap = v24;

        objc_storeStrong(&self->_duetHistoryTimestamp, v20);
        v23 = 1;
      }
    }

    else
    {
      v20 = __atxlog_handle_default();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        [_ATXAppDailyDose _loadHistoricalDoseFrom:];
      }

      v23 = 0;
    }

LABEL_18:
LABEL_19:

    v8 = v17;
    goto LABEL_20;
  }

  if ([v7 code] != 260)
  {
    v14 = __atxlog_handle_default();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [_ATXAppDailyDose _loadHistoricalDoseFrom:];
    }

    v23 = 0;
    v17 = v8;
    goto LABEL_19;
  }

  v23 = 0;
LABEL_20:

  objc_autoreleasePoolPop(v5);
  return v23;
}

- (void)_backfillAppDurationMapDBForToday
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_opt_new();
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  v5 = [(_ATXAppDailyDose *)self todayWithTimeZone:systemTimeZone];

  v6 = [(_ATXAppDailyDose *)self now];
  if ([v5 compare:v6] == -1)
  {
    appInFocusStream = self->_appInFocusStream;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53___ATXAppDailyDose__backfillAppDurationMapDBForToday__block_invoke;
    v8[3] = &unk_278596DC8;
    v9 = v3;
    [(ATXAppInFocusStream *)appInFocusStream enumerateAppLaunchSessionsBetweenStartDate:v5 endDate:v6 shouldReverse:0 bundleIDFilter:0 block:v8];
  }

  [(_ATXAppDailyDoseCurrentStore *)self->_currentDoseStore resetWithDurationMap:v3 on:v5];
}

- (id)previousBundleId
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__34;
  v10 = __Block_byref_object_dispose__34;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36___ATXAppDailyDose_previousBundleId__block_invoke;
  v5[3] = &unk_2785980E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)initWithAppInFocusStream:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"appInFocusStream" object:? file:? lineNumber:? description:?];
}

- (void)initWithAppInFocusStream:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initWithAppInFocusStream:timeZone:today:alpha:historicalDosePath:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"appInFocusStream" object:? file:? lineNumber:? description:?];
}

- (void)addLaunchForBundleId:date:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"bundleId" object:? file:? lineNumber:? description:?];
}

- (void)addLaunchForBundleId:date:completion:.cold.2()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"date" object:? file:? lineNumber:? description:?];
}

- (void)stopAppUsageAtDate:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_18();
  [v0 handleFailureInMethod:@"date" object:? file:? lineNumber:? description:?];
}

- (void)_writeHistoricalDoseWithCompletion:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"_ATXAppDailyDose.m" lineNumber:399 description:{@"Archiver error: %@", a3}];
}

- (void)_loadHistoricalDoseFrom:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, v0, v1, "Failed to load historical usage: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end