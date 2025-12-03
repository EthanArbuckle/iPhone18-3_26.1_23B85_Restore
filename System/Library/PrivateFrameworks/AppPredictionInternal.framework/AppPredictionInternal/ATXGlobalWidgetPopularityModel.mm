@interface ATXGlobalWidgetPopularityModel
+ (ATXGlobalWidgetPopularityModel)modelWithAllAvailableWidgets;
- (ATXGlobalWidgetPopularityModel)initWithBundleIdAndKinds:(id)kinds;
- (double)scoreForBundleIdAndKind:(id)kind scalingFactor:(double)factor;
- (id)_computePriors;
- (void)dealloc;
- (void)unloadGlobalPriorsAsset;
@end

@implementation ATXGlobalWidgetPopularityModel

+ (ATXGlobalWidgetPopularityModel)modelWithAllAvailableWidgets
{
  v2 = objc_alloc(MEMORY[0x277CBEB58]);
  v3 = +[ATXWidgetModeModel fetchAvailableWidgets];
  allValues = [v3 allValues];
  v5 = [allValues _pas_mappedArrayWithTransform:&__block_literal_global_34];
  v6 = [v2 initWithArray:v5];

  v7 = [objc_alloc(objc_opt_class()) initWithBundleIdAndKinds:v6];

  return v7;
}

id __62__ATXGlobalWidgetPopularityModel_modelWithAllAvailableWidgets__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 extensionBundleIdentifier];
  v6 = [v3 kind];

  v7 = [v4 initWithFormat:@"%@:%@", v5, v6];

  return v7;
}

- (ATXGlobalWidgetPopularityModel)initWithBundleIdAndKinds:(id)kinds
{
  kindsCopy = kinds;
  v15.receiver = self;
  v15.super_class = ATXGlobalWidgetPopularityModel;
  v5 = [(ATXGlobalWidgetPopularityModel *)&v15 init];
  if (v5)
  {
    v6 = [kindsCopy copy];
    bundleIdAndKinds = v5->_bundleIdAndKinds;
    v5->_bundleIdAndKinds = v6;

    v8 = [ATXGlobalAppScoresUtil initializeTrieAtPath:@"ATXGlobalWidgetPopularity_v0"];
    priorsTrie = v5->_priorsTrie;
    v5->_priorsTrie = v8;

    _computePriors = [(ATXGlobalWidgetPopularityModel *)v5 _computePriors];
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
  v4.super_class = ATXGlobalWidgetPopularityModel;
  [(ATXGlobalWidgetPopularityModel *)&v4 dealloc];
}

- (id)_computePriors
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_modes();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_INFO, "ATXGlobalWidgetPopularityModel: _computePriors", buf, 2u);
  }

  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_bundleIdAndKinds;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(_PASCFBurstTrie *)self->_priorsTrie payloadForString:v10, v16];
        if (v11)
        {
          v12 = [MEMORY[0x277CCABB0] numberWithDouble:(v11 - 1) / 4294967300.0];
          [v4 setObject:v12 forKeyedSubscript:v10];
        }
      }

      v7 = [(NSSet *)v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
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

- (double)scoreForBundleIdAndKind:(id)kind scalingFactor:(double)factor
{
  kindCopy = kind;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  priors = selfCopy->_priors;
  if (!priors)
  {
    if (selfCopy->_assetOffloadedDueToMemoryPressure)
    {
      v9 = __atxlog_handle_modes();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v16 = 0;
        _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "ATXGlobalWidgetPopularityModel: loading global priors after it was previously offloaded due to memory pressure.", v16, 2u);
      }

      _computePriors = [(ATXGlobalWidgetPopularityModel *)selfCopy _computePriors];
      v11 = selfCopy->_priors;
      selfCopy->_priors = _computePriors;

      selfCopy->_assetOffloadedDueToMemoryPressure = 0;
      priors = selfCopy->_priors;
    }

    else
    {
      priors = 0;
    }
  }

  v12 = [(NSDictionary *)priors objectForKeyedSubscript:kindCopy];
  [v12 doubleValue];
  v14 = v13 * factor;

  objc_sync_exit(selfCopy);
  return v14;
}

@end