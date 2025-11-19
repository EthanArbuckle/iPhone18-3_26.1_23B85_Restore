@interface ATXWebSuggestionsGenerator
- (ATXWebSuggestionsGenerator)init;
- (id)dedupedUrlsFromUrls:(id)a3 limit:(unint64_t)a4;
- (id)rootUrlFromUrl:(id)a3;
- (id)urlToDatesGivenWebpageHistory:(id)a3;
- (id)webpageHistory;
- (id)webpageTitlesAndSubtitlesGivenWebpageHistory:(id)a3;
- (id)websitePredictionsForAllContexts;
- (id)websitePredictionsForContextType:(id)a3 limit:(unint64_t)a4;
- (void)overwriteWebsitePredictionsCacheWithWebsiteString:(id)a3 contextType:(id)a4;
- (void)refreshWebsitePredictions;
@end

@implementation ATXWebSuggestionsGenerator

- (ATXWebSuggestionsGenerator)init
{
  v6.receiver = self;
  v6.super_class = ATXWebSuggestionsGenerator;
  v2 = [(ATXWebSuggestionsGenerator *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cache = v2->_cache;
    v2->_cache = v3;
  }

  return v2;
}

- (void)refreshWebsitePredictions
{
  v55 = *MEMORY[0x277D85DE8];
  v23 = [(ATXWebSuggestionsGenerator *)self webpageHistory];
  v24 = [(ATXWebSuggestionsGenerator *)self urlToDatesGivenWebpageHistory:v23];
  if ([v24 count])
  {
    v22 = objc_alloc_init(ATXContextHeuristicsBiomeStream);
    v52[0] = 0;
    v52[1] = v52;
    v52[2] = 0x2020000000;
    v52[3] = 0;
    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy__24;
    v50 = __Block_byref_object_dispose__24;
    v51 = objc_opt_new();
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x3032000000;
    v44[3] = __Block_byref_object_copy__24;
    v44[4] = __Block_byref_object_dispose__24;
    v45 = objc_opt_new();
    v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
    [v2 timeIntervalSinceReferenceDate];
    v3 = [(ATXContextHeuristicsBiomeStream *)v22 publisherFromStartTime:?];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __55__ATXWebSuggestionsGenerator_refreshWebsitePredictions__block_invoke_2;
    v38[3] = &unk_2785997A0;
    v39 = v24;
    v40 = self;
    v41 = v52;
    v42 = v44;
    v43 = &v46;
    v4 = [v3 sinkWithCompletion:&__block_literal_global_52 shouldContinue:v38];

    v28 = objc_opt_new();
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v47[5];
    v5 = [obj countByEnumeratingWithState:&v34 objects:v54 count:16];
    if (v5)
    {
      v27 = *v35;
      do
      {
        v29 = v5;
        for (i = 0; i != v29; ++i)
        {
          if (*v35 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v34 + 1) + 8 * i);
          v8 = objc_opt_new();
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v9 = [v47[5] objectForKeyedSubscript:v7];
          v10 = [v9 countByEnumeratingWithState:&v30 objects:v53 count:16];
          if (v10)
          {
            v11 = *v31;
            do
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v31 != v11)
                {
                  objc_enumerationMutation(v9);
                }

                v13 = *(*(&v30 + 1) + 8 * j);
                v14 = [v47[5] objectForKeyedSubscript:{v7, v22}];
                v15 = [v14 countForObject:v13];

                if (v15 >= 5)
                {
                  do
                  {
                    [v8 addObject:v13];
                    --v15;
                  }

                  while (v15);
                }
              }

              v10 = [v9 countByEnumeratingWithState:&v30 objects:v53 count:16];
            }

            while (v10);
          }

          [v28 setObject:v8 forKeyedSubscript:v7];
        }

        v5 = [obj countByEnumeratingWithState:&v34 objects:v54 count:16];
      }

      while (v5);
    }

    cache = self->_cache;
    v17 = [v28 copy];
    [(ATXVerticalModelsCache *)cache writeWebsiteSuggestionsCache:v17];

    v18 = self->_cache;
    v19 = [(ATXWebSuggestionsGenerator *)self webpageTitlesAndSubtitlesGivenWebpageHistory:v23];
    [(ATXVerticalModelsCache *)v18 writeWebsiteTitlesAndSubtitlesCache:v19];

    _Block_object_dispose(v44, 8);
    _Block_object_dispose(&v46, 8);

    _Block_object_dispose(v52, 8);
  }

  else
  {
    v20 = MEMORY[0x277CBEC10];
    [(ATXVerticalModelsCache *)self->_cache writeWebsiteSuggestionsCache:MEMORY[0x277CBEC10]];
    [(ATXVerticalModelsCache *)self->_cache writeWebsiteTitlesAndSubtitlesCache:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __55__ATXWebSuggestionsGenerator_refreshWebsitePredictions__block_invoke_2(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 contextType];

  if (v5)
  {
    v35 = v5;
    v36 = v3;
    v6 = MEMORY[0x277CBEAA8];
    [v3 timestamp];
    v7 = [v6 dateWithTimeIntervalSinceReferenceDate:?];
    v8 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 48) + 8) + 24)];
    v9 = [v8 allKeys];
    v10 = [v9 objectAtIndexedSubscript:0];

    v11 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 48) + 8) + 24)];
    v12 = [v11 objectForKeyedSubscript:v10];

    v37 = v7;
    if ([v12 compare:v7] == -1)
    {
      while (1)
      {
        v38 = v12;
        v16 = [*(a1 + 40) rootUrlFromUrl:v10];
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v17 = *(*(*(a1 + 56) + 8) + 40);
        v18 = [v17 countByEnumeratingWithState:&v39 objects:v43 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v40;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v40 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v39 + 1) + 8 * i);
              v23 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:v22];

              if (!v23)
              {
                v24 = objc_opt_new();
                [*(*(*(a1 + 64) + 8) + 40) setObject:v24 forKeyedSubscript:v22];
              }

              v25 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:v22];
              if (v10 && ([v16 isEqual:v10] & 1) == 0)
              {
                [v25 addObject:v10];
                [v25 addObject:v10];
              }

              if (v16)
              {
                [v25 addObject:v16];
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v39 objects:v43 count:16];
          }

          while (v19);
        }

        v26 = ++*(*(*(a1 + 48) + 8) + 24);
        if (v26 == [*(a1 + 32) count])
        {
          break;
        }

        v27 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 48) + 8) + 24)];
        v28 = [v27 allKeys];
        v14 = [v28 objectAtIndexedSubscript:0];

        v29 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 48) + 8) + 24)];
        v13 = [v29 objectForKeyedSubscript:v14];

        v10 = v14;
        v12 = v13;
        if ([v13 compare:v7] != -1)
        {
          goto LABEL_21;
        }
      }

      v15 = 0;
      v5 = v35;
      v3 = v36;
      v13 = v38;
    }

    else
    {
      v13 = v12;
      v14 = v10;
LABEL_21:
      v3 = v36;
      v30 = [v36 eventBody];
      v31 = [v30 isStart];

      v32 = *(*(*(a1 + 56) + 8) + 40);
      if (v31)
      {
        v5 = v35;
        [v32 addObject:v35];
      }

      else
      {
        v5 = v35;
        if ([v32 containsObject:v35])
        {
          [*(*(*(a1 + 56) + 8) + 40) removeObject:v35];
        }
      }

      v15 = 1;
      v10 = v14;
    }
  }

  else
  {
    v15 = 1;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)websitePredictionsForAllContexts
{
  v3 = [(ATXVerticalModelsCache *)self->_cache fetchWebsiteSuggestionsCache];
  if (![v3 count])
  {
    [(ATXWebSuggestionsGenerator *)self refreshWebsitePredictions];
    v4 = [(ATXVerticalModelsCache *)self->_cache fetchWebsiteSuggestionsCache];

    v3 = v4;
  }

  return v3;
}

- (id)websitePredictionsForContextType:(id)a3 limit:(unint64_t)a4
{
  v6 = a3;
  v7 = [(ATXWebSuggestionsGenerator *)self websitePredictionsForAllContexts];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = [v8 allObjects];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __69__ATXWebSuggestionsGenerator_websitePredictionsForContextType_limit___block_invoke;
    v13[3] = &unk_278597CB8;
    v14 = v8;
    v10 = [v9 sortedArrayUsingComparator:v13];

    v11 = [(ATXWebSuggestionsGenerator *)self dedupedUrlsFromUrls:v10 limit:a4];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

uint64_t __69__ATXWebSuggestionsGenerator_websitePredictionsForContextType_limit___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 countForObject:a2];
  v8 = [*(a1 + 32) countForObject:v6];

  if (v7 > v8)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

- (void)overwriteWebsitePredictionsCacheWithWebsiteString:(id)a3 contextType:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(ATXWebSuggestionsGenerator *)self refreshWebsitePredictions];
  v8 = objc_opt_new();
  v9 = [MEMORY[0x277CBEBC0] URLWithString:v6];
  v10 = 10;
  do
  {
    [v8 addObject:v9];
    --v10;
  }

  while (v10);
  cache = self->_cache;
  v14 = v7;
  v15[0] = v8;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  [(ATXVerticalModelsCache *)cache writeWebsiteSuggestionsCache:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (id)urlToDatesGivenWebpageHistory:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v10 action];
        v12 = [v11 userActivity];

        v13 = [v10 dateInterval];
        v14 = [v13 startDate];

        v15 = [v12 webpageURL];
        v16 = v15;
        if (v14)
        {
          v17 = v15 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (!v17)
        {
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v14 forKey:v15];
          [v4 addObject:v18];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)webpageHistory
{
  v2 = objc_alloc_init(MEMORY[0x277CEB918]);
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  v4 = [MEMORY[0x277CBEAA8] now];
  v5 = [v2 getActivityIntentEventsBetweenStartDate:v3 endDate:v4 bundleIdFilter:@"com.apple.mobilesafari"];

  return v5;
}

- (id)rootUrlFromUrl:(id)a3
{
  v3 = MEMORY[0x277CCACE0];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 scheme];
  [v5 setScheme:v6];

  v7 = [v4 host];

  [v5 setHost:v7];
  v8 = [v5 URL];

  return v8;
}

- (id)dedupedUrlsFromUrls:(id)a3 limit:(unint64_t)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v19 = objc_opt_new();
  v7 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v21;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v21 != v12)
      {
        objc_enumerationMutation(v8);
      }

      if (v11 == a4)
      {
        break;
      }

      v14 = *(*(&v20 + 1) + 8 * v13);
      v15 = [(ATXWebSuggestionsGenerator *)self rootUrlFromUrl:v14];
      if (v15 && ([v7 containsObject:v15] & 1) == 0)
      {
        [v7 addObject:v15];
        [v19 addObject:v14];
        ++v11;
      }

      if (v10 == ++v13)
      {
        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v16 = [v19 copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)webpageTitlesAndSubtitlesGivenWebpageHistory:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v22 + 1) + 8 * i) action];
        v11 = [v10 userActivity];
        v12 = [v11 webpageURL];

        v13 = [v10 actionTitle];
        v14 = [v10 actionSubtitle];
        v15 = v14;
        if (v12)
        {
          v16 = v13 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (!v16 && v14 != 0)
        {
          v26[0] = v13;
          v26[1] = v14;
          v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
          [v4 setObject:v18 forKeyedSubscript:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v19 = [v4 copy];
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

@end