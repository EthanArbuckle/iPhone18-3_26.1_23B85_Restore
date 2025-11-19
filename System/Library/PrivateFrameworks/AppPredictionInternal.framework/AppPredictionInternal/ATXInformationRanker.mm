@interface ATXInformationRanker
- (id)sortFeaturizedSuggestions:(id)a3 withFeatureWeights:(id)a4;
@end

@implementation ATXInformationRanker

- (id)sortFeaturizedSuggestions:(id)a3 withFeatureWeights:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        [v13 scoreWithFeatureWeights:{v6, v23}];
        v15 = v14;
        v16 = [ATXScoredInfoSuggestion alloc];
        v17 = [v13 suggestion];
        v18 = [v13 featureSet];
        v19 = [(ATXScoredInfoSuggestion *)v16 initWithSuggestion:v17 featureSet:v18 score:v15];
        [v7 addObject:v19];
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v20 = [v7 sortedArrayUsingComparator:&__block_literal_global_76];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

uint64_t __69__ATXInformationRanker_sortFeaturizedSuggestions_withFeatureWeights___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 score];
  v7 = v6;
  [v5 score];
  if (v7 <= v8)
  {
    [v4 score];
    v11 = v10;
    [v5 score];
    v9 = v11 < v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

@end