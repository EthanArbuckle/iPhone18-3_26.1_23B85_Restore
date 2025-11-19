@interface _ATXAppLaunchCategoricalHistogramWithPersistentBackup
- (BOOL)removeHistoryForBundleId:(id)a3;
- (BOOL)removeHistoryForCategory:(id)a3;
- (_ATXAppLaunchCategoricalHistogramWithPersistentBackup)initWithDataStore:(id)a3 histogramType:(int64_t)a4;
- (int)removeHistoryForBundleIds:(id)a3;
- (void)addLaunchWithBundleId:(id)a3 date:(id)a4 category:(id)a5;
- (void)addLaunchWithBundleId:(id)a3 date:(id)a4 category:(id)a5 weight:(float)a6;
- (void)flush;
- (void)resetData;
- (void)resetHistogram:(id)a3;
@end

@implementation _ATXAppLaunchCategoricalHistogramWithPersistentBackup

- (void)flush
{
  v3 = objc_autoreleasePoolPush();
  v4 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  v5 = objc_autoreleasePoolPush();
  [(_ATXAppLaunchCategoricalHistogram *)self encodeWithCoder:v4];
  objc_autoreleasePoolPop(v5);
  datastore = self->_datastore;
  v7 = [v4 encodedData];
  [(_ATXDataStore *)datastore addCategoricalHistogramData:v7 forHistogramOfType:self->_histogramType];

  objc_autoreleasePoolPop(v3);
}

- (_ATXAppLaunchCategoricalHistogramWithPersistentBackup)initWithDataStore:(id)a3 histogramType:(int64_t)a4
{
  v6 = a3;
  v7 = dispatch_queue_create("com.apple.duetexpertd.histogramSaver", 0);
  v8 = [(_ATXAppLaunchCategoricalHistogramWithPersistentBackup *)self initWithDataStore:v6 histogramType:a4 saveOnBackgroundQueue:v7 maxCategoryCount:30 pruningMethod:1];

  return v8;
}

- (void)addLaunchWithBundleId:(id)a3 date:(id)a4 category:(id)a5
{
  v6.receiver = self;
  v6.super_class = _ATXAppLaunchCategoricalHistogramWithPersistentBackup;
  [(_ATXAppLaunchCategoricalHistogram *)&v6 addLaunchWithBundleId:a3 date:a4 category:a5];
  [(ATXBackgroundSaver *)self->_saver scheduleSave];
}

- (void)addLaunchWithBundleId:(id)a3 date:(id)a4 category:(id)a5 weight:(float)a6
{
  v7.receiver = self;
  v7.super_class = _ATXAppLaunchCategoricalHistogramWithPersistentBackup;
  [(_ATXAppLaunchCategoricalHistogram *)&v7 addLaunchWithBundleId:a3 date:a4 category:a5 weight:?];
  [(ATXBackgroundSaver *)self->_saver scheduleSave];
}

- (BOOL)removeHistoryForBundleId:(id)a3
{
  v6.receiver = self;
  v6.super_class = _ATXAppLaunchCategoricalHistogramWithPersistentBackup;
  v4 = [(_ATXAppLaunchCategoricalHistogram *)&v6 removeHistoryForBundleId:a3];
  if (v4)
  {
    [(ATXBackgroundSaver *)self->_saver scheduleSaveImmediately];
  }

  return v4;
}

- (int)removeHistoryForBundleIds:(id)a3
{
  v6.receiver = self;
  v6.super_class = _ATXAppLaunchCategoricalHistogramWithPersistentBackup;
  v4 = [(_ATXAppLaunchCategoricalHistogram *)&v6 removeHistoryForBundleIds:a3];
  if (v4)
  {
    [(ATXBackgroundSaver *)self->_saver scheduleSaveImmediately];
  }

  return v4;
}

- (BOOL)removeHistoryForCategory:(id)a3
{
  v6.receiver = self;
  v6.super_class = _ATXAppLaunchCategoricalHistogramWithPersistentBackup;
  v4 = [(_ATXAppLaunchCategoricalHistogram *)&v6 removeHistoryForCategory:a3];
  if (v4)
  {
    [(ATXBackgroundSaver *)self->_saver scheduleSaveImmediately];
  }

  return v4;
}

- (void)resetData
{
  v3.receiver = self;
  v3.super_class = _ATXAppLaunchCategoricalHistogramWithPersistentBackup;
  [(_ATXAppLaunchCategoricalHistogram *)&v3 resetData];
  [(ATXBackgroundSaver *)self->_saver scheduleSave];
}

- (void)resetHistogram:(id)a3
{
  v4.receiver = self;
  v4.super_class = _ATXAppLaunchCategoricalHistogramWithPersistentBackup;
  [(_ATXAppLaunchCategoricalHistogram *)&v4 resetHistogram:a3];
  [(ATXBackgroundSaver *)self->_saver scheduleSave];
}

- (void)initWithDataStore:histogramType:saveOnBackgroundQueue:maxCategoryCount:pruningMethod:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Unable to decode data with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end