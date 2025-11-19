@interface PHAssetAnalysisStateProperties
- (PHAssetAnalysisStateProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5;
- (int)analysisStateForWorkerType:(signed __int16)a3 outLastIgnoreDate:(id *)a4 outIgnoreUntilDate:(id *)a5;
@end

@implementation PHAssetAnalysisStateProperties

- (int)analysisStateForWorkerType:(signed __int16)a3 outLastIgnoreDate:(id *)a4 outIgnoreUntilDate:(id *)a5
{
  fetchDictionariesByWorkerType = self->_fetchDictionariesByWorkerType;
  v8 = [MEMORY[0x1E696AD98] numberWithShort:a3];
  v9 = [(NSMutableDictionary *)fetchDictionariesByWorkerType objectForKeyedSubscript:v8];

  v10 = [v9 objectForKeyedSubscript:@"analysisState"];
  v11 = [v10 integerValue];

  if (a4)
  {
    *a4 = [v9 objectForKeyedSubscript:@"lastIgnoredDate"];
  }

  if (a5)
  {
    *a5 = [v9 objectForKeyedSubscript:@"ignoreUntilDate"];
  }

  return v11;
}

- (PHAssetAnalysisStateProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v28.receiver = self;
  v28.super_class = PHAssetAnalysisStateProperties;
  v9 = [(PHAssetAnalysisStateProperties *)&v28 init];
  v10 = v9;
  if (v9)
  {
    v22 = v8;
    objc_storeWeak(&v9->super._asset, v8);
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    fetchDictionariesByWorkerType = v10->_fetchDictionariesByWorkerType;
    v10->_fetchDictionariesByWorkerType = v11;

    v23 = v7;
    v13 = [v7 objectForKey:@"assetAnalysisStates"];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v24 + 1) + 8 * i);
          v19 = v10->_fetchDictionariesByWorkerType;
          v20 = [v18 objectForKeyedSubscript:{@"workerType", v22}];
          [(NSMutableDictionary *)v19 setObject:v18 forKeyedSubscript:v20];
        }

        v15 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v15);
    }

    v8 = v22;
    v7 = v23;
  }

  return v10;
}

@end