@interface ATXInformationDescendingStartDateRanker
- (id)sortFeaturizedSuggestions:(id)a3 withFeatureWeights:(id)a4;
@end

@implementation ATXInformationDescendingStartDateRanker

- (id)sortFeaturizedSuggestions:(id)a3 withFeatureWeights:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v5;
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
        [v13 scoreWithFeatureWeights:{v6, v22}];
        v15 = v14;
        v16 = [ATXScoredInfoSuggestion alloc];
        v17 = [v13 suggestion];
        v18 = [v13 featureSet];
        v19 = [(ATXScoredInfoSuggestion *)v16 initWithSuggestion:v17 featureSet:v18 score:v15];

        [v7 addObject:v19];
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  [v7 sortWithOptions:16 usingComparator:&__block_literal_global_25_1];
  v20 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t __88__ATXInformationDescendingStartDateRanker_sortFeaturizedSuggestions_withFeatureWeights___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 suggestion];
  v7 = [v6 confidenceLevel];
  v8 = [v5 suggestion];
  v9 = [v8 confidenceLevel];

  if (v7 > v9)
  {
    goto LABEL_2;
  }

  v11 = [v4 suggestion];
  v12 = [v11 confidenceLevel];
  v13 = [v5 suggestion];
  v14 = [v13 confidenceLevel];

  if (v12 < v14)
  {
LABEL_4:
    v10 = 1;
    goto LABEL_5;
  }

  v16 = [v4 suggestion];
  v17 = [v16 startDate];
  [v17 timeIntervalSinceReferenceDate];
  v19 = v18;

  v20 = [v5 suggestion];
  v21 = [v20 startDate];
  [v21 timeIntervalSinceReferenceDate];
  v23 = v22;

  if (v19 <= v23)
  {
    if (v19 >= v23)
    {
      [v4 score];
      v25 = v24;
      [v5 score];
      if (v25 <= v26)
      {
        [v4 score];
        v28 = v27;
        [v5 score];
        v10 = v28 < v29;
        goto LABEL_5;
      }

      goto LABEL_2;
    }

    goto LABEL_4;
  }

LABEL_2:
  v10 = -1;
LABEL_5:

  return v10;
}

@end