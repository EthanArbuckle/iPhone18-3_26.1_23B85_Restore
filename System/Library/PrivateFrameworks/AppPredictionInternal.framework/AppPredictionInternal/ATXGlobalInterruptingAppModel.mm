@interface ATXGlobalInterruptingAppModel
+ (ATXGlobalInterruptingAppModel)modelWithAllInstalledAppsKnownToSpringBoard;
- (ATXGlobalInterruptingAppModel)initWithBundleIds:(id)ids;
- (double)scoreForBundleId:(id)id scalingFactor:(double)factor;
- (id)_computePriors;
- (id)loadGlobalPriorsAsset;
- (void)dealloc;
- (void)loadGlobalPriorsAsset;
- (void)unloadGlobalPriorsAsset;
@end

@implementation ATXGlobalInterruptingAppModel

+ (ATXGlobalInterruptingAppModel)modelWithAllInstalledAppsKnownToSpringBoard
{
  v2 = objc_alloc(MEMORY[0x277CBEB58]);
  v3 = +[_ATXAppIconState sharedInstance];
  allInstalledAppsKnownToSpringBoard = [v3 allInstalledAppsKnownToSpringBoard];
  v5 = [v2 initWithArray:allInstalledAppsKnownToSpringBoard];

  v6 = [objc_alloc(objc_opt_class()) initWithBundleIds:v5];

  return v6;
}

- (ATXGlobalInterruptingAppModel)initWithBundleIds:(id)ids
{
  idsCopy = ids;
  v15.receiver = self;
  v15.super_class = ATXGlobalInterruptingAppModel;
  v5 = [(ATXGlobalInterruptingAppModel *)&v15 init];
  if (v5)
  {
    v6 = [idsCopy copy];
    bundleIds = v5->_bundleIds;
    v5->_bundleIds = v6;

    v8 = [ATXGlobalAppScoresUtil initializeTrieAtPath:@"ATXGlobalAppSignalsIndex"];
    index = v5->_index;
    v5->_index = v8;

    _computePriors = [(ATXGlobalInterruptingAppModel *)v5 _computePriors];
    priors = v5->_priors;
    v5->_priors = _computePriors;

    mEMORY[0x277CEBC88] = [MEMORY[0x277CEBC88] sharedInstance];
    memoryPressureMonitor = v5->_memoryPressureMonitor;
    v5->_memoryPressureMonitor = mEMORY[0x277CEBC88];

    [(ATXMemoryPressureMonitor *)v5->_memoryPressureMonitor registerObserver:v5];
  }

  return v5;
}

- (void)dealloc
{
  [(ATXMemoryPressureMonitor *)self->_memoryPressureMonitor unregisterObserver:self];
  memoryPressureMonitor = self->_memoryPressureMonitor;
  self->_memoryPressureMonitor = 0;

  v4.receiver = self;
  v4.super_class = ATXGlobalInterruptingAppModel;
  [(ATXGlobalInterruptingAppModel *)&v4 dealloc];
}

- (id)loadGlobalPriorsAsset
{
  v2 = [MEMORY[0x277CEB3C0] pathForResource:@"ATXGlobalInterruptingApp_v0" ofType:@"dat" isDirectory:0];
  if (v2)
  {
    v8 = 0;
    v3 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v2 options:1 error:&v8];
    v4 = v8;
    if (v4)
    {
      v5 = __atxlog_handle_modes();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(ATXGlobalInterruptingAppModel *)v4 loadGlobalPriorsAsset];
      }
    }

    else
    {
      if (v3)
      {
        v6 = v3;
        goto LABEL_11;
      }

      v5 = __atxlog_handle_modes();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(ATXGlobalInterruptingAppModel *)v5 loadGlobalPriorsAsset];
      }
    }

    v6 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v4 = __atxlog_handle_modes();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(ATXGlobalInterruptingAppModel *)v4 loadGlobalPriorsAsset];
  }

  v6 = 0;
LABEL_12:

  return v6;
}

- (id)_computePriors
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_modes();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v19 = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_INFO, "ATXGlobalInterruptingAppModel: _computePriors", v19, 2u);
  }

  loadGlobalPriorsAsset = [(ATXGlobalInterruptingAppModel *)self loadGlobalPriorsAsset];
  if (loadGlobalPriorsAsset)
  {
    v5 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = self->_bundleIds;
    v7 = [(NSSet *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(ATXGlobalInterruptingAppModel *)self indexForBundleId:*(*(&v20 + 1) + 8 * i)];
          if (v11)
          {
            v12 = v11;
            *v19 = 0;
            [loadGlobalPriorsAsset getBytes:v19 range:{(4 * v11 - 4), 4}];
            LODWORD(v13) = *v19;
            v14 = [MEMORY[0x277CCABB0] numberWithDouble:v13 / 4294967300.0];
            v15 = [MEMORY[0x277CCABB0] numberWithInt:v12];
            [v5 setObject:v14 forKeyedSubscript:v15];
          }
        }

        v8 = [(NSSet *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    v16 = [v5 copy];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)unloadGlobalPriorsAsset
{
  obj = self;
  objc_sync_enter(obj);
  priors = obj->_priors;
  obj->_priors = 0;

  obj->_assetOffloadedDueToMemoryPressure = 1;
  objc_sync_exit(obj);
}

- (double)scoreForBundleId:(id)id scalingFactor:(double)factor
{
  idCopy = id;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_priors && selfCopy->_assetOffloadedDueToMemoryPressure)
  {
    v8 = __atxlog_handle_modes();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_INFO, "ATXGlobalInterruptingAppModel: loading global priors after it was previously offloaded due to memory pressure.", v18, 2u);
    }

    _computePriors = [(ATXGlobalInterruptingAppModel *)selfCopy _computePriors];
    priors = selfCopy->_priors;
    selfCopy->_priors = _computePriors;

    selfCopy->_assetOffloadedDueToMemoryPressure = 0;
  }

  v11 = [(ATXGlobalInterruptingAppModel *)selfCopy indexForBundleId:idCopy];
  v12 = selfCopy->_priors;
  v13 = [MEMORY[0x277CCABB0] numberWithInt:v11];
  v14 = [(NSDictionary *)v12 objectForKeyedSubscript:v13];
  [v14 doubleValue];
  v16 = v15 * factor;

  objc_sync_exit(selfCopy);
  return v16;
}

- (void)loadGlobalPriorsAsset
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = @"ATXGlobalInterruptingApp_v0";
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "ATXGlobalAppModeAffinityModel: Unable to find path for %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end