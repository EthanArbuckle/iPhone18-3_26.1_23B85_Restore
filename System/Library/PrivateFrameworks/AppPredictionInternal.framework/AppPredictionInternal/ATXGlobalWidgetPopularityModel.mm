@interface ATXGlobalWidgetPopularityModel
+ (ATXGlobalWidgetPopularityModel)modelWithAllAvailableWidgets;
- (ATXGlobalWidgetPopularityModel)initWithBundleIdAndKinds:(id)a3;
- (double)scoreForBundleIdAndKind:(id)a3 scalingFactor:(double)a4;
- (id)_computePriors;
- (void)dealloc;
- (void)unloadGlobalPriorsAsset;
@end

@implementation ATXGlobalWidgetPopularityModel

+ (ATXGlobalWidgetPopularityModel)modelWithAllAvailableWidgets
{
  v2 = objc_alloc(MEMORY[0x277CBEB58]);
  v3 = +[ATXWidgetModeModel fetchAvailableWidgets];
  v4 = [v3 allValues];
  v5 = [v4 _pas_mappedArrayWithTransform:&__block_literal_global_34];
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

- (ATXGlobalWidgetPopularityModel)initWithBundleIdAndKinds:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ATXGlobalWidgetPopularityModel;
  v5 = [(ATXGlobalWidgetPopularityModel *)&v15 init];
  if (v5)
  {
    v6 = [v4 copy];
    bundleIdAndKinds = v5->_bundleIdAndKinds;
    v5->_bundleIdAndKinds = v6;

    v8 = [ATXGlobalAppScoresUtil initializeTrieAtPath:@"ATXGlobalWidgetPopularity_v0"];
    priorsTrie = v5->_priorsTrie;
    v5->_priorsTrie = v8;

    v10 = [(ATXGlobalWidgetPopularityModel *)v5 _computePriors];
    priors = v5->_priors;
    v5->_priors = v10;

    v12 = [MEMORY[0x277CEBC88] sharedInstance];
    memoryPressureMonitor = v5->_memoryPressureMonitor;
    v5->_memoryPressureMonitor = v12;

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

- (double)scoreForBundleIdAndKind:(id)a3 scalingFactor:(double)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  priors = v7->_priors;
  if (!priors)
  {
    if (v7->_assetOffloadedDueToMemoryPressure)
    {
      v9 = __atxlog_handle_modes();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v16 = 0;
        _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "ATXGlobalWidgetPopularityModel: loading global priors after it was previously offloaded due to memory pressure.", v16, 2u);
      }

      v10 = [(ATXGlobalWidgetPopularityModel *)v7 _computePriors];
      v11 = v7->_priors;
      v7->_priors = v10;

      v7->_assetOffloadedDueToMemoryPressure = 0;
      priors = v7->_priors;
    }

    else
    {
      priors = 0;
    }
  }

  v12 = [(NSDictionary *)priors objectForKeyedSubscript:v6];
  [v12 doubleValue];
  v14 = v13 * a4;

  objc_sync_exit(v7);
  return v14;
}

@end