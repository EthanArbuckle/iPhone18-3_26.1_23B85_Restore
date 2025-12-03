@interface ATXGlobalAppModeAffinityModel
+ (ATXGlobalAppModeAffinityModel)modelWithAllInstalledAppsKnownToSpringBoard;
- (ATXGlobalAppModeAffinityModel)initWithBundleIds:(id)ids;
- (double)_priorForMode:(unint64_t)mode bundleIdIndex:(int)index priors:(id)priors;
- (double)scoreForMode:(unint64_t)mode bundleId:(id)id scalingFactor:(double)factor;
- (id)_computePriors;
- (id)loadGlobalPriorsAsset;
- (unint64_t)modeIndexForMode:(unint64_t)mode;
- (void)_normalizePriors:(id)priors maximumPrior:(double)prior;
- (void)dealloc;
- (void)loadGlobalPriorsAsset;
- (void)unloadGlobalPriorsAsset;
@end

@implementation ATXGlobalAppModeAffinityModel

+ (ATXGlobalAppModeAffinityModel)modelWithAllInstalledAppsKnownToSpringBoard
{
  v2 = objc_alloc(MEMORY[0x277CBEB58]);
  v3 = +[_ATXAppIconState sharedInstance];
  allInstalledAppsKnownToSpringBoard = [v3 allInstalledAppsKnownToSpringBoard];
  v5 = [v2 initWithArray:allInstalledAppsKnownToSpringBoard];

  v6 = [objc_alloc(objc_opt_class()) initWithBundleIds:v5];

  return v6;
}

- (ATXGlobalAppModeAffinityModel)initWithBundleIds:(id)ids
{
  idsCopy = ids;
  v15.receiver = self;
  v15.super_class = ATXGlobalAppModeAffinityModel;
  v5 = [(ATXGlobalAppModeAffinityModel *)&v15 init];
  if (v5)
  {
    v6 = [idsCopy copy];
    bundleIds = v5->_bundleIds;
    v5->_bundleIds = v6;

    v8 = [ATXGlobalAppScoresUtil initializeTrieAtPath:@"ATXGlobalAppSignalsIndex"];
    index = v5->_index;
    v5->_index = v8;

    _computePriors = [(ATXGlobalAppModeAffinityModel *)v5 _computePriors];
    normalizedPriors = v5->_normalizedPriors;
    v5->_normalizedPriors = _computePriors;

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
  v4.super_class = ATXGlobalAppModeAffinityModel;
  [(ATXGlobalAppModeAffinityModel *)&v4 dealloc];
}

- (id)loadGlobalPriorsAsset
{
  v2 = [MEMORY[0x277CEB3C0] pathForResource:@"ATXGlobalAppModeAffinity_v0" ofType:@"dat" isDirectory:0];
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
        [(ATXGlobalAppModeAffinityModel *)v4 loadGlobalPriorsAsset];
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
        [(ATXGlobalAppModeAffinityModel *)v5 loadGlobalPriorsAsset];
      }
    }

    v6 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v4 = __atxlog_handle_modes();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(ATXGlobalAppModeAffinityModel *)v4 loadGlobalPriorsAsset];
  }

  v6 = 0;
LABEL_12:

  return v6;
}

- (id)_computePriors
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_modes();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_INFO, "ATXGlobalAppModeAffinityModel: _computePriors", buf, 2u);
  }

  loadGlobalPriorsAsset = [(ATXGlobalAppModeAffinityModel *)self loadGlobalPriorsAsset];
  if (loadGlobalPriorsAsset)
  {
    v30 = objc_opt_new();
    supportedModeTypes = [objc_opt_class() supportedModeTypes];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = self->_bundleIds;
    v27 = [(NSSet *)obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v27)
    {
      v26 = *v37;
      v4 = 0.0;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v37 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v36 + 1) + 8 * i);
          v7 = [(ATXGlobalAppModeAffinityModel *)self indexForBundleId:v6];
          if (v7)
          {
            v8 = v7;
            v28 = i;
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            v29 = supportedModeTypes;
            v9 = [v29 countByEnumeratingWithState:&v32 objects:v41 count:16];
            if (v9)
            {
              v10 = v9;
              v11 = *v33;
              do
              {
                for (j = 0; j != v10; ++j)
                {
                  if (*v33 != v11)
                  {
                    objc_enumerationMutation(v29);
                  }

                  v13 = *(*(&v32 + 1) + 8 * j);
                  integerValue = [v13 integerValue];
                  [(ATXGlobalAppModeAffinityModel *)self _priorForMode:integerValue bundleIdIndex:v8 priors:loadGlobalPriorsAsset];
                  v16 = v15;
                  v17 = [[ATXGlobalAppModeAffinityPrior alloc] initWithMode:integerValue prior:v6 bundleId:v15];
                  v18 = MEMORY[0x277D42648];
                  v19 = [MEMORY[0x277CCABB0] numberWithInt:v8];
                  v20 = [v18 tupleWithFirst:v19 second:v13];

                  [v30 setObject:v17 forKeyedSubscript:v20];
                  if (v4 < v16)
                  {
                    v4 = v16;
                  }
                }

                v10 = [v29 countByEnumeratingWithState:&v32 objects:v41 count:16];
              }

              while (v10);
            }

            i = v28;
          }
        }

        v27 = [(NSSet *)obj countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v27);
    }

    else
    {
      v4 = 0.0;
    }

    [(ATXGlobalAppModeAffinityModel *)self _normalizePriors:v30 maximumPrior:v4];
    v21 = [v30 copy];
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)unloadGlobalPriorsAsset
{
  obj = self;
  objc_sync_enter(obj);
  normalizedPriors = obj->_normalizedPriors;
  obj->_normalizedPriors = 0;

  obj->_assetOffloadedDueToMemoryPressure = 1;
  objc_sync_exit(obj);
}

- (void)_normalizePriors:(id)priors maximumPrior:(double)prior
{
  v42 = *MEMORY[0x277D85DE8];
  priorsCopy = priors;
  v6 = __atxlog_handle_modes();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "ATXGlobalAppModeAffinityModel: _normalizePriors:maximumPrior", buf, 2u);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = self->_bundleIds;
  v29 = [(NSSet *)obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v29)
  {
    v7 = fmin(prior, 500.0);
    v27 = *v36;
    do
    {
      v8 = 0;
      do
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v8;
        v9 = [(ATXGlobalAppModeAffinityModel *)self indexForBundleId:*(*(&v35 + 1) + 8 * v8)];
        supportedModeTypes = [objc_opt_class() supportedModeTypes];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v11 = [supportedModeTypes countByEnumeratingWithState:&v31 objects:v40 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v32;
          do
          {
            v14 = 0;
            do
            {
              if (*v32 != v13)
              {
                objc_enumerationMutation(supportedModeTypes);
              }

              v15 = *(*(&v31 + 1) + 8 * v14);
              v16 = MEMORY[0x277D42648];
              v17 = [MEMORY[0x277CCABB0] numberWithInt:v9];
              v18 = [v16 tupleWithFirst:v17 second:v15];

              v19 = [priorsCopy objectForKeyedSubscript:v18];

              if (v19)
              {
                v20 = [priorsCopy objectForKeyedSubscript:v18];
                [v20 prior];
                v22 = fmin(v21, 500.0);
                if (v22 < -500.0)
                {
                  v22 = -500.0;
                }

                v23 = v22 / v7;
                v24 = [priorsCopy objectForKeyedSubscript:v18];
                [v24 setPrior:v23];
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = [supportedModeTypes countByEnumeratingWithState:&v31 objects:v40 count:16];
          }

          while (v12);
        }

        v8 = v30 + 1;
      }

      while (v30 + 1 != v29);
      v29 = [(NSSet *)obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v29);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (double)scoreForMode:(unint64_t)mode bundleId:(id)id scalingFactor:(double)factor
{
  idCopy = id;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_normalizedPriors && selfCopy->_assetOffloadedDueToMemoryPressure)
  {
    v10 = __atxlog_handle_modes();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v22 = 0;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_INFO, "ATXGlobalAppModeAffinityModel: loading global priors after it was previously offloaded due to memory pressure.", v22, 2u);
    }

    _computePriors = [(ATXGlobalAppModeAffinityModel *)selfCopy _computePriors];
    normalizedPriors = selfCopy->_normalizedPriors;
    selfCopy->_normalizedPriors = _computePriors;

    selfCopy->_assetOffloadedDueToMemoryPressure = 0;
  }

  v13 = [(ATXGlobalAppModeAffinityModel *)selfCopy indexForBundleId:idCopy];
  v14 = MEMORY[0x277D42648];
  v15 = [MEMORY[0x277CCABB0] numberWithInt:v13];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mode];
  v17 = [v14 tupleWithFirst:v15 second:v16];

  v18 = [(NSDictionary *)selfCopy->_normalizedPriors objectForKeyedSubscript:v17];
  [v18 prior];
  v20 = v19 * factor;

  objc_sync_exit(selfCopy);
  return v20;
}

- (double)_priorForMode:(unint64_t)mode bundleIdIndex:(int)index priors:(id)priors
{
  priorsCopy = priors;
  if (priorsCopy)
  {
    v15 = 0;
    v9 = [(ATXGlobalAppModeAffinityModel *)self modeIndexForMode:mode];
    v10 = 0.0;
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = v9;
      supportedModeTypes = [objc_opt_class() supportedModeTypes];
      v13 = 4 * (v11 + (index - 1) * [supportedModeTypes count]);

      [priorsCopy getBytes:&v15 range:{v13, 4}];
      v10 = v15 / 10000.0;
    }
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (unint64_t)modeIndexForMode:(unint64_t)mode
{
  supportedModeTypes = [objc_opt_class() supportedModeTypes];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mode];
  v6 = [supportedModeTypes indexOfObject:v5];

  return v6;
}

- (void)loadGlobalPriorsAsset
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = @"ATXGlobalAppModeAffinity_v0";
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "ATXGlobalAppModeAffinityModel: Unable to find path for %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end