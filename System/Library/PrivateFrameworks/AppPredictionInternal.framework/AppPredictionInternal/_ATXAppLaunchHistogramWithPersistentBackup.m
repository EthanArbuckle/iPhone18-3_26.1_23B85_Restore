@interface _ATXAppLaunchHistogramWithPersistentBackup
- (BOOL)removeHistoryForBundleId:(id)a3;
- (_ATXAppLaunchHistogramWithPersistentBackup)initWithDataStore:(id)a3 histogramType:(int64_t)a4 loadFromDataStore:(BOOL)a5 saveOnBackgroundQueue:(id)a6;
- (int)removeHistoryForBundleIds:(id)a3;
- (void)addLaunchWithBundleId:(id)a3 date:(id)a4 timeZone:(id)a5;
- (void)addLaunchWithBundleId:(id)a3 date:(id)a4 timeZone:(id)a5 weight:(float)a6;
- (void)addLaunchWithBundleId:(id)a3 elapsedTime:(double)a4;
- (void)addLaunchWithBundleId:(id)a3 elapsedTime:(double)a4 weight:(float)a5;
- (void)decayByFactor:(double)a3;
- (void)decayWithHalfLifeInDays:(double)a3;
- (void)flush;
- (void)removeLaunchWithBundleId:(id)a3 date:(id)a4 timeZone:(id)a5 weight:(float)a6;
- (void)resetData;
@end

@implementation _ATXAppLaunchHistogramWithPersistentBackup

- (void)flush
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [(_ATXAppLaunchHistogram *)self encodeWithCoder:v5];
  v6 = [v5 encodedData];

  objc_autoreleasePoolPop(v4);
  [(_ATXDataStore *)self->_datastore addHistogramData:v6 forHistogramOfType:self->_histogramType];

  objc_autoreleasePoolPop(v3);
}

- (_ATXAppLaunchHistogramWithPersistentBackup)initWithDataStore:(id)a3 histogramType:(int64_t)a4 loadFromDataStore:(BOOL)a5 saveOnBackgroundQueue:(id)a6
{
  v7 = a5;
  v11 = a3;
  v12 = a6;
  if (v7 && ([v11 histogramDataForHistogramType:a4], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = v13;
    v15 = objc_autoreleasePoolPush();
    v32 = 0;
    v16 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v14 error:&v32];
    v17 = v32;
    if (v16)
    {
      v31.receiver = self;
      v31.super_class = _ATXAppLaunchHistogramWithPersistentBackup;
      v18 = [(_ATXAppLaunchHistogram *)&v31 initWithCoder:v16];
    }

    else
    {
      v23 = __atxlog_handle_default();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [_ATXAppLaunchHistogramWithPersistentBackup initWithDataStore:histogramType:loadFromDataStore:saveOnBackgroundQueue:];
      }

      v30.receiver = self;
      v30.super_class = _ATXAppLaunchHistogramWithPersistentBackup;
      v18 = [(_ATXAppLaunchHistogram *)&v30 initWithType:a4];
    }

    v19 = v18;

    objc_autoreleasePoolPop(v15);
    if (!v19)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v29.receiver = self;
    v29.super_class = _ATXAppLaunchHistogramWithPersistentBackup;
    v19 = [(_ATXAppLaunchHistogram *)&v29 initWithType:a4];
    v14 = 0;
    if (!v19)
    {
LABEL_12:
      v24 = __atxlog_handle_default();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        [_ATXAppLaunchHistogramWithPersistentBackup initWithDataStore:histogramType:loadFromDataStore:saveOnBackgroundQueue:];
      }

      goto LABEL_15;
    }
  }

  objc_storeStrong(&v19->_datastore, a3);
  v19->_histogramType = a4;
  if (v12)
  {
    objc_initWeak(&location, v19);
    v20 = [ATXBackgroundSaver alloc];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __118___ATXAppLaunchHistogramWithPersistentBackup_initWithDataStore_histogramType_loadFromDataStore_saveOnBackgroundQueue___block_invoke;
    v26[3] = &unk_2785977B0;
    objc_copyWeak(&v27, &location);
    v21 = [(ATXBackgroundSaver *)v20 initWithQueue:v12 block:v26];
    saver = v19->_saver;
    v19->_saver = v21;

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

LABEL_15:

  return v19;
}

- (void)addLaunchWithBundleId:(id)a3 date:(id)a4 timeZone:(id)a5
{
  v6.receiver = self;
  v6.super_class = _ATXAppLaunchHistogramWithPersistentBackup;
  [(_ATXAppLaunchHistogram *)&v6 addLaunchWithBundleId:a3 date:a4 timeZone:a5];
  [(ATXBackgroundSaver *)self->_saver scheduleSave];
}

- (void)addLaunchWithBundleId:(id)a3 date:(id)a4 timeZone:(id)a5 weight:(float)a6
{
  v7.receiver = self;
  v7.super_class = _ATXAppLaunchHistogramWithPersistentBackup;
  [(_ATXAppLaunchHistogram *)&v7 addLaunchWithBundleId:a3 date:a4 timeZone:a5 weight:?];
  [(ATXBackgroundSaver *)self->_saver scheduleSave];
}

- (void)addLaunchWithBundleId:(id)a3 elapsedTime:(double)a4
{
  v5.receiver = self;
  v5.super_class = _ATXAppLaunchHistogramWithPersistentBackup;
  [(_ATXAppLaunchHistogram *)&v5 addLaunchWithBundleId:a3 elapsedTime:a4];
  [(ATXBackgroundSaver *)self->_saver scheduleSave];
}

- (void)addLaunchWithBundleId:(id)a3 elapsedTime:(double)a4 weight:(float)a5
{
  v6.receiver = self;
  v6.super_class = _ATXAppLaunchHistogramWithPersistentBackup;
  [(_ATXAppLaunchHistogram *)&v6 addLaunchWithBundleId:a3 elapsedTime:a4 weight:?];
  [(ATXBackgroundSaver *)self->_saver scheduleSave];
}

- (void)removeLaunchWithBundleId:(id)a3 date:(id)a4 timeZone:(id)a5 weight:(float)a6
{
  v7.receiver = self;
  v7.super_class = _ATXAppLaunchHistogramWithPersistentBackup;
  [(_ATXAppLaunchHistogram *)&v7 removeLaunchWithBundleId:a3 date:a4 timeZone:a5 weight:?];
  [(ATXBackgroundSaver *)self->_saver scheduleSave];
}

- (BOOL)removeHistoryForBundleId:(id)a3
{
  v6.receiver = self;
  v6.super_class = _ATXAppLaunchHistogramWithPersistentBackup;
  v4 = [(_ATXAppLaunchHistogram *)&v6 removeHistoryForBundleId:a3];
  if (v4)
  {
    [(ATXBackgroundSaver *)self->_saver scheduleSaveImmediately];
  }

  return v4;
}

- (int)removeHistoryForBundleIds:(id)a3
{
  v6.receiver = self;
  v6.super_class = _ATXAppLaunchHistogramWithPersistentBackup;
  v4 = [(_ATXAppLaunchHistogram *)&v6 removeHistoryForBundleIds:a3];
  if (v4 >= 1)
  {
    [(ATXBackgroundSaver *)self->_saver scheduleSaveImmediately];
  }

  return v4;
}

- (void)decayByFactor:(double)a3
{
  v4.receiver = self;
  v4.super_class = _ATXAppLaunchHistogramWithPersistentBackup;
  [(_ATXAppLaunchHistogram *)&v4 decayByFactor:a3];
  [(ATXBackgroundSaver *)self->_saver scheduleSave];
}

- (void)decayWithHalfLifeInDays:(double)a3
{
  v4.receiver = self;
  v4.super_class = _ATXAppLaunchHistogramWithPersistentBackup;
  [(_ATXAppLaunchHistogram *)&v4 decayWithHalfLifeInDays:a3];
  [(ATXBackgroundSaver *)self->_saver scheduleSave];
}

- (void)resetData
{
  v3.receiver = self;
  v3.super_class = _ATXAppLaunchHistogramWithPersistentBackup;
  [(_ATXAppLaunchHistogram *)&v3 resetData];
  [(ATXBackgroundSaver *)self->_saver scheduleSave];
}

- (void)initWithDataStore:histogramType:loadFromDataStore:saveOnBackgroundQueue:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Error unarchiving AppLaunchHistogram. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithDataStore:histogramType:loadFromDataStore:saveOnBackgroundQueue:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_2263AA000, v0, OS_LOG_TYPE_FAULT, "Failed to create App Launch Histogram with type: %ld", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end