@interface _ATXAppLaunchCategoricalHistogramWithPersistentBackup
- (BOOL)removeHistoryForBundleId:(id)id;
- (BOOL)removeHistoryForCategory:(id)category;
- (_ATXAppLaunchCategoricalHistogramWithPersistentBackup)initWithDataStore:(id)store histogramType:(int64_t)type;
- (int)removeHistoryForBundleIds:(id)ids;
- (void)addLaunchWithBundleId:(id)id date:(id)date category:(id)category;
- (void)addLaunchWithBundleId:(id)id date:(id)date category:(id)category weight:(float)weight;
- (void)flush;
- (void)resetData;
- (void)resetHistogram:(id)histogram;
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
  encodedData = [v4 encodedData];
  [(_ATXDataStore *)datastore addCategoricalHistogramData:encodedData forHistogramOfType:self->_histogramType];

  objc_autoreleasePoolPop(v3);
}

- (_ATXAppLaunchCategoricalHistogramWithPersistentBackup)initWithDataStore:(id)store histogramType:(int64_t)type
{
  storeCopy = store;
  v7 = dispatch_queue_create("com.apple.duetexpertd.histogramSaver", 0);
  v8 = [(_ATXAppLaunchCategoricalHistogramWithPersistentBackup *)self initWithDataStore:storeCopy histogramType:type saveOnBackgroundQueue:v7 maxCategoryCount:30 pruningMethod:1];

  return v8;
}

- (void)addLaunchWithBundleId:(id)id date:(id)date category:(id)category
{
  v6.receiver = self;
  v6.super_class = _ATXAppLaunchCategoricalHistogramWithPersistentBackup;
  [(_ATXAppLaunchCategoricalHistogram *)&v6 addLaunchWithBundleId:id date:date category:category];
  [(ATXBackgroundSaver *)self->_saver scheduleSave];
}

- (void)addLaunchWithBundleId:(id)id date:(id)date category:(id)category weight:(float)weight
{
  v7.receiver = self;
  v7.super_class = _ATXAppLaunchCategoricalHistogramWithPersistentBackup;
  [(_ATXAppLaunchCategoricalHistogram *)&v7 addLaunchWithBundleId:id date:date category:category weight:?];
  [(ATXBackgroundSaver *)self->_saver scheduleSave];
}

- (BOOL)removeHistoryForBundleId:(id)id
{
  v6.receiver = self;
  v6.super_class = _ATXAppLaunchCategoricalHistogramWithPersistentBackup;
  v4 = [(_ATXAppLaunchCategoricalHistogram *)&v6 removeHistoryForBundleId:id];
  if (v4)
  {
    [(ATXBackgroundSaver *)self->_saver scheduleSaveImmediately];
  }

  return v4;
}

- (int)removeHistoryForBundleIds:(id)ids
{
  v6.receiver = self;
  v6.super_class = _ATXAppLaunchCategoricalHistogramWithPersistentBackup;
  v4 = [(_ATXAppLaunchCategoricalHistogram *)&v6 removeHistoryForBundleIds:ids];
  if (v4)
  {
    [(ATXBackgroundSaver *)self->_saver scheduleSaveImmediately];
  }

  return v4;
}

- (BOOL)removeHistoryForCategory:(id)category
{
  v6.receiver = self;
  v6.super_class = _ATXAppLaunchCategoricalHistogramWithPersistentBackup;
  v4 = [(_ATXAppLaunchCategoricalHistogram *)&v6 removeHistoryForCategory:category];
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

- (void)resetHistogram:(id)histogram
{
  v4.receiver = self;
  v4.super_class = _ATXAppLaunchCategoricalHistogramWithPersistentBackup;
  [(_ATXAppLaunchCategoricalHistogram *)&v4 resetHistogram:histogram];
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