@interface PHAssetAnalysisStateProperties
- (PHAssetAnalysisStateProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched;
- (int)analysisStateForWorkerType:(signed __int16)type outLastIgnoreDate:(id *)date outIgnoreUntilDate:(id *)untilDate;
@end

@implementation PHAssetAnalysisStateProperties

- (int)analysisStateForWorkerType:(signed __int16)type outLastIgnoreDate:(id *)date outIgnoreUntilDate:(id *)untilDate
{
  fetchDictionariesByWorkerType = self->_fetchDictionariesByWorkerType;
  v8 = [MEMORY[0x1E696AD98] numberWithShort:type];
  v9 = [(NSMutableDictionary *)fetchDictionariesByWorkerType objectForKeyedSubscript:v8];

  v10 = [v9 objectForKeyedSubscript:@"analysisState"];
  integerValue = [v10 integerValue];

  if (date)
  {
    *date = [v9 objectForKeyedSubscript:@"lastIgnoredDate"];
  }

  if (untilDate)
  {
    *untilDate = [v9 objectForKeyedSubscript:@"ignoreUntilDate"];
  }

  return integerValue;
}

- (PHAssetAnalysisStateProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched
{
  v30 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  assetCopy = asset;
  v28.receiver = self;
  v28.super_class = PHAssetAnalysisStateProperties;
  v9 = [(PHAssetAnalysisStateProperties *)&v28 init];
  v10 = v9;
  if (v9)
  {
    v22 = assetCopy;
    objc_storeWeak(&v9->super._asset, assetCopy);
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    fetchDictionariesByWorkerType = v10->_fetchDictionariesByWorkerType;
    v10->_fetchDictionariesByWorkerType = v11;

    v23 = dictionaryCopy;
    v13 = [dictionaryCopy objectForKey:@"assetAnalysisStates"];
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

    assetCopy = v22;
    dictionaryCopy = v23;
  }

  return v10;
}

@end