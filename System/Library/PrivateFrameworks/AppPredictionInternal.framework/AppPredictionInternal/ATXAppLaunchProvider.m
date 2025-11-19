@interface ATXAppLaunchProvider
- (ATXAppLaunchProvider)initWithLastNDays:(unint64_t)a3;
- (double)modeWeightedAppLaunchPriorsBasedOnGlobalPriorsWithinLast1DayForMode:(unint64_t)a3;
- (double)modeWeightedAppLaunchPriorsBasedOnGlobalPriorsWithinLastNDaysForMode:(unint64_t)a3;
- (unint64_t)modeAppLaunchCountBasedOnGlobalPriorsWithinLast1DayForMode:(unint64_t)a3;
- (unint64_t)modeAppLaunchCountBasedOnGlobalPriorsWithinLastNDaysForMode:(unint64_t)a3;
- (void)cacheAppLaunchStreamIfNecessary;
@end

@implementation ATXAppLaunchProvider

- (ATXAppLaunchProvider)initWithLastNDays:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = ATXAppLaunchProvider;
  v4 = [(ATXAppLaunchProvider *)&v8 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:(-86400 * a3)];
    thresholdDateLastNDays = v4->_thresholdDateLastNDays;
    v4->_thresholdDateLastNDays = v5;
  }

  return v4;
}

- (void)cacheAppLaunchStreamIfNecessary
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXAppLaunchProvider: could not fetch app launch stream with error: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

uint64_t __55__ATXAppLaunchProvider_cacheAppLaunchStreamIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

void __55__ATXAppLaunchProvider_cacheAppLaunchStreamIfNecessary__block_invoke_2(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v41 = a2;
  v3 = [v41 eventBody];
  if ([v3 starting])
  {
    v4 = *(a1 + 32);
    v5 = [v3 bundleID];
    LODWORD(v4) = [v4 containsObject:v5];

    if (v4)
    {
      ++*(*(*(a1 + 80) + 8) + 24);
      [v41 timestamp];
      if (v6 > *(a1 + 96))
      {
        ++*(*(*(a1 + 88) + 8) + 24);
      }

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v7 = allModesForTraining();
      v8 = [v7 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = 0;
        obj = v7;
        v40 = *v43;
        v11 = 0.0;
        v12 = 1;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v43 != v40)
            {
              objc_enumerationMutation(obj);
            }

            v14 = [*(*(&v42 + 1) + 8 * i) unsignedIntegerValue];
            v15 = ATXModeToString();
            v16 = *(a1 + 40);
            v17 = v3;
            v18 = [v3 bundleID];
            [v16 scoreForMode:v14 bundleId:v18 scalingFactor:1.0];
            v20 = v19;

            if ((v12 & (v20 >= 0.0)) == 1)
            {
              v21 = v15;

              v12 = 0;
              v11 = v20;
              v10 = v21;
            }

            v22 = MEMORY[0x277CCABB0];
            v23 = [*(a1 + 48) objectForKeyedSubscript:v15];
            [v23 doubleValue];
            v25 = [v22 numberWithDouble:v20 + v24];
            [*(a1 + 48) setObject:v25 forKeyedSubscript:v15];

            [v41 timestamp];
            v3 = v17;
            if (v26 > *(a1 + 96))
            {
              v27 = MEMORY[0x277CCABB0];
              v28 = [*(a1 + 56) objectForKeyedSubscript:v15];
              [v28 doubleValue];
              v30 = [v27 numberWithDouble:v20 + v29];
              [*(a1 + 56) setObject:v30 forKeyedSubscript:v15];
            }

            if (v20 > v11)
            {
              v31 = v15;

              v11 = v20;
              v10 = v31;
            }
          }

          v9 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
        }

        while (v9);

        if (!v10)
        {
          goto LABEL_23;
        }

        v32 = MEMORY[0x277CCABB0];
        v33 = [*(a1 + 64) objectForKeyedSubscript:v10];
        v34 = [v32 numberWithInt:{objc_msgSend(v33, "intValue") + 1}];
        [*(a1 + 64) setObject:v34 forKeyedSubscript:v10];

        [v41 timestamp];
        if (v35 <= *(a1 + 96))
        {
          goto LABEL_23;
        }

        v36 = MEMORY[0x277CCABB0];
        v7 = [*(a1 + 72) objectForKeyedSubscript:v10];
        v37 = [v36 numberWithInt:{objc_msgSend(v7, "intValue") + 1}];
        [*(a1 + 72) setObject:v37 forKeyedSubscript:v10];
      }

      else
      {
        v10 = 0;
      }

LABEL_23:
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (unint64_t)modeAppLaunchCountBasedOnGlobalPriorsWithinLastNDaysForMode:(unint64_t)a3
{
  [(ATXAppLaunchProvider *)self cacheAppLaunchStreamIfNecessary];
  v4 = ATXModeToString();
  v5 = [(NSDictionary *)self->_modeAppLaunchCountBasedOnGlobalPriorsInLastNDays objectForKeyedSubscript:v4];
  v6 = [v5 intValue];

  return v6;
}

- (unint64_t)modeAppLaunchCountBasedOnGlobalPriorsWithinLast1DayForMode:(unint64_t)a3
{
  [(ATXAppLaunchProvider *)self cacheAppLaunchStreamIfNecessary];
  v4 = ATXModeToString();
  v5 = [(NSDictionary *)self->_modeAppLaunchCountBasedOnGlobalPriorsInLast1Day objectForKeyedSubscript:v4];
  v6 = [v5 intValue];

  return v6;
}

- (double)modeWeightedAppLaunchPriorsBasedOnGlobalPriorsWithinLastNDaysForMode:(unint64_t)a3
{
  [(ATXAppLaunchProvider *)self cacheAppLaunchStreamIfNecessary];
  v4 = ATXModeToString();
  v5 = [(NSDictionary *)self->_modeWeightedAppLaunchPriorsBasedOnGlobalPriorsInLastNDays objectForKeyedSubscript:v4];
  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (double)modeWeightedAppLaunchPriorsBasedOnGlobalPriorsWithinLast1DayForMode:(unint64_t)a3
{
  [(ATXAppLaunchProvider *)self cacheAppLaunchStreamIfNecessary];
  v4 = ATXModeToString();
  v5 = [(NSDictionary *)self->_modeWeightedAppLaunchPriorsBasedOnGlobalPriorsInLast1Day objectForKeyedSubscript:v4];
  [v5 doubleValue];
  v7 = v6;

  return v7;
}

@end