@interface ATXMultiHotCategoricalFeatureCandidatesLaunchedInLastTenMinutes
- (id)categoricalFeatureValuesForContext:(id)a3 candidate:(id)a4;
@end

@implementation ATXMultiHotCategoricalFeatureCandidatesLaunchedInLastTenMinutes

- (id)categoricalFeatureValuesForContext:(id)a3 candidate:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 timeContext];
  v6 = [v5 date];

  if (v6)
  {
    v7 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = [v4 candidateIdentifiersLaunchAge];
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = [v4 candidateIdentifiersLaunchAge];
          v15 = [v14 objectForKeyedSubscript:v13];

          if (v15)
          {
            v16 = [v4 timeContext];
            v17 = [v16 date];
            [v17 timeIntervalSinceDate:v15];
            v19 = v18;

            if (v19 > 0.0 && v19 <= 600.0)
            {
              [v7 addObject:v13];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = objc_opt_new();
  }

  v20 = *MEMORY[0x277D85DE8];

  return v7;
}

@end