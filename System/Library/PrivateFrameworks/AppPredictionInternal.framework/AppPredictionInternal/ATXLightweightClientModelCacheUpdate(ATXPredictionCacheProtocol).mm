@interface ATXLightweightClientModelCacheUpdate(ATXPredictionCacheProtocol)
- (id)identifierForPredictionAtIndex:()ATXPredictionCacheProtocol;
- (uint64_t)confidenceCategoryForPredictionAtIndex:()ATXPredictionCacheProtocol;
- (uint64_t)numberOfPredictionsWithConfidence:()ATXPredictionCacheProtocol;
@end

@implementation ATXLightweightClientModelCacheUpdate(ATXPredictionCacheProtocol)

- (id)identifierForPredictionAtIndex:()ATXPredictionCacheProtocol
{
  suggestions = [self suggestions];
  v6 = [suggestions count];

  if (v6 <= a3)
  {
    executableIdentifier = 0;
  }

  else
  {
    suggestions2 = [self suggestions];
    v8 = [suggestions2 objectAtIndexedSubscript:a3];
    executableIdentifier = [v8 executableIdentifier];
  }

  return executableIdentifier;
}

- (uint64_t)confidenceCategoryForPredictionAtIndex:()ATXPredictionCacheProtocol
{
  suggestions = [self suggestions];
  v6 = [suggestions count];

  if (v6 <= a3)
  {
    return 0;
  }

  suggestions2 = [self suggestions];
  v8 = [suggestions2 objectAtIndexedSubscript:a3];
  scoreSpecification = [v8 scoreSpecification];
  suggestedConfidenceCategory = [scoreSpecification suggestedConfidenceCategory];

  return suggestedConfidenceCategory;
}

- (uint64_t)numberOfPredictionsWithConfidence:()ATXPredictionCacheProtocol
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  suggestions = [self suggestions];
  v5 = [suggestions countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(suggestions);
        }

        scoreSpecification = [*(*(&v14 + 1) + 8 * i) scoreSpecification];
        suggestedConfidenceCategory = [scoreSpecification suggestedConfidenceCategory];

        if (suggestedConfidenceCategory == a3)
        {
          ++v7;
        }
      }

      v6 = [suggestions countByEnumeratingWithState:&v14 objects:v18 count:16];
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