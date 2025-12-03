@interface ATXMultiHotCategoricalFeatureCandidatesLaunchedInLastTenMinutes
- (id)categoricalFeatureValuesForContext:(id)context candidate:(id)candidate;
@end

@implementation ATXMultiHotCategoricalFeatureCandidatesLaunchedInLastTenMinutes

- (id)categoricalFeatureValuesForContext:(id)context candidate:(id)candidate
{
  v27 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  timeContext = [contextCopy timeContext];
  date = [timeContext date];

  if (date)
  {
    v7 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    candidateIdentifiersLaunchAge = [contextCopy candidateIdentifiersLaunchAge];
    v9 = [candidateIdentifiersLaunchAge countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(candidateIdentifiersLaunchAge);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          candidateIdentifiersLaunchAge2 = [contextCopy candidateIdentifiersLaunchAge];
          v15 = [candidateIdentifiersLaunchAge2 objectForKeyedSubscript:v13];

          if (v15)
          {
            timeContext2 = [contextCopy timeContext];
            date2 = [timeContext2 date];
            [date2 timeIntervalSinceDate:v15];
            v19 = v18;

            if (v19 > 0.0 && v19 <= 600.0)
            {
              [v7 addObject:v13];
            }
          }
        }

        v10 = [candidateIdentifiersLaunchAge countByEnumeratingWithState:&v22 objects:v26 count:16];
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