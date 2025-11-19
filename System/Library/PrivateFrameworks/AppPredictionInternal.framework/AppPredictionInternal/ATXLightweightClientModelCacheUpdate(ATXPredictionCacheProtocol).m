@interface ATXLightweightClientModelCacheUpdate(ATXPredictionCacheProtocol)
- (id)identifierForPredictionAtIndex:()ATXPredictionCacheProtocol;
- (uint64_t)confidenceCategoryForPredictionAtIndex:()ATXPredictionCacheProtocol;
- (uint64_t)numberOfPredictionsWithConfidence:()ATXPredictionCacheProtocol;
@end

@implementation ATXLightweightClientModelCacheUpdate(ATXPredictionCacheProtocol)

- (id)identifierForPredictionAtIndex:()ATXPredictionCacheProtocol
{
  v5 = [a1 suggestions];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v9 = 0;
  }

  else
  {
    v7 = [a1 suggestions];
    v8 = [v7 objectAtIndexedSubscript:a3];
    v9 = [v8 executableIdentifier];
  }

  return v9;
}

- (uint64_t)confidenceCategoryForPredictionAtIndex:()ATXPredictionCacheProtocol
{
  v5 = [a1 suggestions];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    return 0;
  }

  v7 = [a1 suggestions];
  v8 = [v7 objectAtIndexedSubscript:a3];
  v9 = [v8 scoreSpecification];
  v10 = [v9 suggestedConfidenceCategory];

  return v10;
}

- (uint64_t)numberOfPredictionsWithConfidence:()ATXPredictionCacheProtocol
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [a1 suggestions];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) scoreSpecification];
        v11 = [v10 suggestedConfidenceCategory];

        if (v11 == a3)
        {
          ++v7;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

@end