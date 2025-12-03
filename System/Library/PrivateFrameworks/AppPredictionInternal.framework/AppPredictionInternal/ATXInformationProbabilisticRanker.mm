@interface ATXInformationProbabilisticRanker
- (double)_tieBreakingScoreForSuggestion:(id)suggestion;
- (id)_groupSuggestionsByConfidenceLevel:(id)level;
- (id)_rankNumbersProbabilistically:(id)probabilistically;
- (id)_rankSuggestionsProbabilistically:(id)probabilistically;
- (id)_smooth:(id)_smooth;
- (id)_tieBreakingScoresForSuggestions:(id)suggestions;
- (id)sortFeaturizedSuggestions:(id)suggestions withFeatureWeights:(id)weights;
@end

@implementation ATXInformationProbabilisticRanker

- (id)sortFeaturizedSuggestions:(id)suggestions withFeatureWeights:(id)weights
{
  v90 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  weightsCopy = weights;
  v7 = __atxlog_handle_gi();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *v86 = "[ATXInformationProbabilisticRanker sortFeaturizedSuggestions:withFeatureWeights:]";
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_INFO, "ATXInformationProbabilisticRanker %s", buf, 0xCu);
  }

  context = objc_autoreleasePoolPush();
  v8 = [(ATXInformationProbabilisticRanker *)self _groupSuggestionsByConfidenceLevel:suggestionsCopy];
  v65 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:19];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v61 = v8;
  v9 = [v8 objectForKeyedSubscript:&unk_283A55E08];
  v10 = [v9 countByEnumeratingWithState:&v79 objects:v89 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v80;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v80 != v12)
        {
          objc_enumerationMutation(v9);
        }

        suggestion = [*(*(&v79 + 1) + 8 * i) suggestion];
        [suggestion setClientModelId:v65];
      }

      v11 = [v9 countByEnumeratingWithState:&v79 objects:v89 count:16];
    }

    while (v11);
  }

  v58 = suggestionsCopy;
  v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(suggestionsCopy, "count")}];
  allKeys = [v61 allKeys];
  v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:0];
  v88 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v88 count:1];
  v19 = [allKeys sortedArrayUsingDescriptors:v18];

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = v19;
  v62 = [obj countByEnumeratingWithState:&v75 objects:v87 count:16];
  if (v62)
  {
    v60 = *v76;
    do
    {
      v20 = 0;
      do
      {
        if (*v76 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v75 + 1) + 8 * v20);
        v22 = [v61 objectForKeyedSubscript:v21];
        v63 = v20;
        if ([v22 count] >= 2)
        {
          v23 = __atxlog_handle_gi();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [v22 count];
            *buf = 67109378;
            *v86 = v24;
            *&v86[4] = 2112;
            *&v86[6] = v21;
            _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEFAULT, "ATXInformationProbabilisticRanker: %d candidates at the same level %@. Rank probabilistically.", buf, 0x12u);
          }

          v25 = [(ATXInformationProbabilisticRanker *)self _rankSuggestionsProbabilistically:v22];

          v22 = v25;
        }

        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v26 = v22;
        v27 = [v26 countByEnumeratingWithState:&v71 objects:v84 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v72;
          do
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v72 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v71 + 1) + 8 * j);
              [v31 scoreWithFeatureWeights:weightsCopy];
              v33 = v32;
              [(ATXInformationProbabilisticRanker *)self _tieBreakingScoreForSuggestion:v31];
              v35 = v33 + v34;
              v36 = [ATXScoredInfoSuggestion alloc];
              suggestion2 = [v31 suggestion];
              featureSet = [v31 featureSet];
              v39 = [(ATXScoredInfoSuggestion *)v36 initWithSuggestion:suggestion2 featureSet:featureSet score:v35];
              [v15 addObject:v39];
            }

            v28 = [v26 countByEnumeratingWithState:&v71 objects:v84 count:16];
          }

          while (v28);
        }

        v20 = v63 + 1;
      }

      while (v63 + 1 != v62);
      v62 = [obj countByEnumeratingWithState:&v75 objects:v87 count:16];
    }

    while (v62);
  }

  v40 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(suggestionsCopy, "count")}];
  v64 = objc_opt_new();
  v41 = objc_opt_new();
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v42 = v15;
  v43 = [v42 countByEnumeratingWithState:&v67 objects:v83 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v68;
    do
    {
      for (k = 0; k != v44; ++k)
      {
        if (*v68 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v67 + 1) + 8 * k);
        suggestion3 = [v47 suggestion];
        clientModelId = [suggestion3 clientModelId];
        v50 = [clientModelId isEqualToString:v65];

        v51 = v40;
        if (v50)
        {
          suggestion4 = [v47 suggestion];
          confidenceLevel = [suggestion4 confidenceLevel];

          if (confidenceLevel == 1)
          {
            v51 = v64;
          }

          else
          {
            v51 = v41;
          }
        }

        [v51 addObject:v47];
      }

      v44 = [v42 countByEnumeratingWithState:&v67 objects:v83 count:16];
    }

    while (v44);
  }

  v54 = [v41 sortedArrayUsingComparator:&__block_literal_global_38];
  [v40 addObjectsFromArray:v54];

  [v40 addObjectsFromArray:v64];
  objc_autoreleasePoolPop(context);

  v55 = *MEMORY[0x277D85DE8];

  return v40;
}

uint64_t __82__ATXInformationProbabilisticRanker_sortFeaturizedSuggestions_withFeatureWeights___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 suggestion];
  v6 = [v5 startDate];
  v7 = [v4 suggestion];

  v8 = [v7 startDate];
  [v6 timeIntervalSinceDate:v8];
  v10 = v9;

  if (v10 > 0.0)
  {
    return -1;
  }

  else
  {
    return v10 < 0.0;
  }
}

- (id)_groupSuggestionsByConfidenceLevel:(id)level
{
  v24 = *MEMORY[0x277D85DE8];
  levelCopy = level;
  v4 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = levelCopy;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = MEMORY[0x277CCABB0];
        featureSet = [v10 featureSet];
        [featureSet valueForFeature:4];
        LODWORD(v14) = llround(v13);
        v15 = [v11 numberWithInt:v14];

        v16 = [v4 objectForKeyedSubscript:v15];
        if (!v16)
        {
          v16 = objc_opt_new();
          [v4 setObject:v16 forKeyedSubscript:v15];
        }

        [v16 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_rankSuggestionsProbabilistically:(id)probabilistically
{
  v21 = *MEMORY[0x277D85DE8];
  probabilisticallyCopy = probabilistically;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(probabilisticallyCopy, "count")}];
  v6 = [(ATXInformationProbabilisticRanker *)self _tieBreakingScoresForSuggestions:probabilisticallyCopy];
  v7 = [(ATXInformationProbabilisticRanker *)self _rankNumbersProbabilistically:v6];
  v8 = v7;
  if (v7)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [probabilisticallyCopy objectAtIndexedSubscript:{objc_msgSend(*(*(&v16 + 1) + 8 * i), "intValue")}];
          [v5 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_tieBreakingScoresForSuggestions:(id)suggestions
{
  v21 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(suggestionsCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = suggestionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = MEMORY[0x277CCABB0];
        [(ATXInformationProbabilisticRanker *)self _tieBreakingScoreForSuggestion:*(*(&v16 + 1) + 8 * i), v16];
        v12 = [v11 numberWithDouble:?];
        [v5 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [(ATXInformationProbabilisticRanker *)self _smooth:v5];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (double)_tieBreakingScoreForSuggestion:(id)suggestion
{
  featureSet = [suggestion featureSet];
  [featureSet valueForFeature:2];
  v5 = v4;

  return v5 + 0.00001;
}

- (id)_smooth:(id)_smooth
{
  v35 = *MEMORY[0x277D85DE8];
  _smoothCopy = _smooth;
  if ([_smoothCopy count])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v4 = _smoothCopy;
    v5 = [v4 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v30;
      v8 = 0.0;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v30 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v29 + 1) + 8 * i) doubleValue];
          v8 = v8 + v10;
        }

        v6 = [v4 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = 0.0;
    }

    v12 = [v4 count];
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = v4;
    v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = v8 / v12;
      v17 = *v26;
      v18 = v8 + v8;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v20 = MEMORY[0x277CCABB0];
          [*(*(&v25 + 1) + 8 * j) doubleValue];
          v22 = [v20 numberWithDouble:(v16 + v21) / v18];
          [v11 addObject:v22];
        }

        v15 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v15);
    }
  }

  else
  {
    v11 = _smoothCopy;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_rankNumbersProbabilistically:(id)probabilistically
{
  probabilisticallyCopy = probabilistically;
  v5 = [probabilisticallyCopy valueForKeyPath:@"@sum.self"];
  [v5 doubleValue];
  v7 = v6;

  if (v7 <= 0.0)
  {
    v34 = __atxlog_handle_gi();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      [(ATXInformationProbabilisticRanker *)v34 _rankNumbersProbabilistically:v7];
    }

    v12 = 0;
  }

  else
  {
    v8 = [probabilisticallyCopy count];
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v8];
    if (v8 >= 1)
    {
      v10 = 0;
      do
      {
        v11 = [MEMORY[0x277CCABB0] numberWithInt:v10];
        [v9 addObject:v11];

        v10 = (v10 + 1);
      }

      while (v8 != v10);
    }

    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v8];
    if (v8 > 1)
    {
      v13 = 0;
      v14 = v8 - 2;
      do
      {
        [(ATXInformationProbabilisticRanker *)self _standardUniformDistribution];
        v16 = v15;
        v17 = [v9 count];
        if (v17 < 2)
        {
          v27 = 0;
        }

        else
        {
          v18 = 0;
          v19 = v7 * v16;
          v20 = (v17 - 1);
          v21 = 0.0;
          while (1)
          {
            v22 = v21;
            v23 = [v9 objectAtIndexedSubscript:v18];
            v24 = [probabilisticallyCopy objectAtIndexedSubscript:{objc_msgSend(v23, "intValue")}];
            [v24 doubleValue];
            v26 = v25;

            v21 = v22 + v26;
            if (v19 >= v22 && v19 < v21)
            {
              break;
            }

            if (v20 == ++v18)
            {
              goto LABEL_15;
            }
          }

          LODWORD(v20) = v18;
LABEL_15:
          v27 = v20;
        }

        v28 = [v9 objectAtIndexedSubscript:v27];
        [v12 addObject:v28];

        v29 = [v9 objectAtIndexedSubscript:v27];
        v30 = [probabilisticallyCopy objectAtIndexedSubscript:{objc_msgSend(v29, "intValue")}];
        [v30 doubleValue];
        v7 = v7 - v31;

        [v9 removeObjectAtIndex:v27];
      }

      while (v13++ != v14);
    }

    if ([v9 count] != 1)
    {
      [ATXInformationProbabilisticRanker _rankNumbersProbabilistically:];
    }

    firstObject = [v9 firstObject];
    [v12 addObject:firstObject];
  }

  return v12;
}

- (void)_rankNumbersProbabilistically:(os_log_t)log .cold.1(os_log_t log, double a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[ATXInformationProbabilisticRanker _rankNumbersProbabilistically:]";
  v5 = 2048;
  v6 = a2;
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "ATXInformationProbabilisticRanker %s: sum of nums == %lf <= 0 is invalid", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end