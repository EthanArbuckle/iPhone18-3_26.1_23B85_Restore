@interface ATXAppPredictorAssetMapping
+ (id)assetMappingWithCachedAssets;
+ (id)sharedInstanceWithMobileAssets;
- (ATXAppPredictorAssetMapping)initWithUseMobileAssets:(BOOL)a3;
- (id)getAssetFileAndSubscoreForConsumerSubType:(unsigned __int8)a3;
- (id)getAtxToolDescription;
- (id)getFullCachePathWithBaseCachePath:(id)a3 consumerSubType:(unsigned __int8)a4;
- (id)getFullDefaultCachePathWithConsumerSubType:(unsigned __int8)a3;
@end

@implementation ATXAppPredictorAssetMapping

+ (id)assetMappingWithCachedAssets
{
  v2 = [[ATXAppPredictorAssetMapping alloc] initWithUseMobileAssets:0];

  return v2;
}

- (ATXAppPredictorAssetMapping)initWithUseMobileAssets:(BOOL)a3
{
  v3 = a3;
  v6 = [MEMORY[0x1E698B010] appPredictionDirectory];
  v7 = [v6 stringByAppendingPathComponent:@"caches/assetMapping"];

  v46.receiver = self;
  v46.super_class = ATXAppPredictorAssetMapping;
  v8 = [(ATXAppPredictorAssetMapping *)&v46 init];
  if (!v8)
  {
    v17 = 0;
    goto LABEL_20;
  }

  if (!v3)
  {
    v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v7];
    if (v9)
    {
      v10 = v9;
      v11 = objc_autoreleasePoolPush();
      v12 = objc_alloc(MEMORY[0x1E695DFD8]);
      v13 = objc_opt_class();
      v14 = [v12 initWithObjects:{v13, objc_opt_class(), 0}];
      objc_autoreleasePoolPop(v11);
      v15 = objc_autoreleasePoolPush();
      v45 = 0;
      v16 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v14 fromData:v10 error:&v45];
      v17 = v45;
      consumerSubTypeAssetMappings = v8->_consumerSubTypeAssetMappings;
      v8->_consumerSubTypeAssetMappings = v16;

      objc_autoreleasePoolPop(v15);
      if (v8->_consumerSubTypeAssetMappings)
      {
        v19 = v17;
LABEL_19:

        v17 = v19;
        goto LABEL_20;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [(ATXAppPredictorAssetMapping *)v17 initWithUseMobileAssets:v37, v38, v39, v40, v41, v42, v43];
      }

      goto LABEL_10;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [ATXAppPredictorAssetMapping initWithUseMobileAssets:];
    }
  }

  v17 = 0;
LABEL_10:
  v20 = [ATXAssetsABHelper alloc];
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  v23 = [(ATXAssetsABHelper *)v20 initWithAssetsForResource:v22 ofType:@"plist" specifiedABGroup:0];

  v24 = [(ATXAssetsABHelper *)v23 abGroupContents];
  v25 = [v24 objectForKeyedSubscript:@"consumerSubTypeToAssetFileMapping"];
  v26 = v8->_consumerSubTypeAssetMappings;
  v8->_consumerSubTypeAssetMappings = v25;

  if (v3)
  {
    if (!v8->_consumerSubTypeAssetMappings)
    {
      [(ATXAppPredictorAssetMapping *)a2 initWithUseMobileAssets:v8];
    }

    v27 = objc_autoreleasePoolPush();
    v28 = v8->_consumerSubTypeAssetMappings;
    v44 = v17;
    v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v28 requiringSecureCoding:1 error:&v44];
    v19 = v44;

    objc_autoreleasePoolPop(v27);
    if (!v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [(ATXAppPredictorAssetMapping *)v19 initWithUseMobileAssets:v29, v30, v31, v32, v33, v34, v35];
    }

    v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v7];
    if (!v14 || ([v10 isEqual:v14] & 1) == 0)
    {
      [v10 writeToFile:v7 atomically:1];
    }

    goto LABEL_19;
  }

LABEL_20:

  return v8;
}

+ (id)sharedInstanceWithMobileAssets
{
  if (sharedInstanceWithMobileAssets__pasOnceToken12 != -1)
  {
    +[ATXAppPredictorAssetMapping sharedInstanceWithMobileAssets];
  }

  v3 = sharedInstanceWithMobileAssets__pasExprOnceResult;

  return v3;
}

void __61__ATXAppPredictorAssetMapping_sharedInstanceWithMobileAssets__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [[ATXAppPredictorAssetMapping alloc] initWithUseMobileAssets:1];
  v2 = sharedInstanceWithMobileAssets__pasExprOnceResult;
  sharedInstanceWithMobileAssets__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)getAssetFileAndSubscoreForConsumerSubType:(unsigned __int8)a3
{
  v5 = [MEMORY[0x1E698B028] stringForConsumerSubtype:a3];
  v6 = [(NSDictionary *)self->_consumerSubTypeAssetMappings objectForKeyedSubscript:v5];
  if (v6)
  {
    goto LABEL_7;
  }

  if (!v5)
  {
    [(ATXAppPredictorAssetMapping *)a2 getAssetFileAndSubscoreForConsumerSubType:?];
  }

  v7 = __atxlog_handle_default();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(ATXAppPredictorAssetMapping *)v5 getAssetFileAndSubscoreForConsumerSubType:v7, v8, v9, v10, v11, v12, v13];
  }

  v6 = [(NSDictionary *)self->_consumerSubTypeAssetMappings objectForKeyedSubscript:@"__Default"];
  if (v6)
  {
LABEL_7:
    v14 = v6;
    v15 = [v6 objectForKeyedSubscript:@"assetFile"];
    v16 = [v14 objectForKeyedSubscript:@"subscore"];
  }

  else
  {
    v14 = __atxlog_handle_default();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(ATXAppPredictorAssetMapping *)v14 getAssetFileAndSubscoreForConsumerSubType:v19, v20, v21, v22, v23, v24, v25];
    }

    v15 = @"_ATXAppPredictor";
    v16 = @"TotalScore";
  }

  v17 = [MEMORY[0x1E69C5D98] tupleWithFirst:v15 second:v16];

  return v17;
}

- (id)getFullDefaultCachePathWithConsumerSubType:(unsigned __int8)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E698B010] appPredictionDirectory];
  v6 = [v5 stringByAppendingPathComponent:@"caches/ATXCacheFile"];
  v7 = [(ATXAppPredictorAssetMapping *)self getFullCachePathWithBaseCachePath:v6 consumerSubType:v3];

  return v7;
}

- (id)getFullCachePathWithBaseCachePath:(id)a3 consumerSubType:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(ATXAppPredictorAssetMapping *)self getAssetFileAndSubscoreForConsumerSubType:v4];
  v8 = [v7 first];
  v9 = [v7 second];
  v10 = [ATXAppPredictorAssetMapping getFullCachePathWithBaseCachePath:v6 cacheFileBaseName:v8 subScoreName:v9];

  return v10;
}

- (id)getAtxToolDescription
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = 0;
  do
  {
    v4 = v3;
    v5 = [MEMORY[0x1E698B028] stringForConsumerSubtype:v3];
    [v2 addObject:v5];

    ++v3;
  }

  while (v4 < 0x31);
  v32 = v2;
  v39 = objc_opt_new();
  v34 = objc_opt_new();
  v36 = objc_opt_new();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = self->_consumerSubTypeAssetMappings;
  v38 = [(NSDictionary *)obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v38)
  {
    v35 = *v46;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v46 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v45 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v8 = [v7 isEqualToString:@"__Default"];
        v9 = &stru_1F3E050C8;
        if ((v8 & 1) == 0)
        {
          v10 = [v32 containsObject:v7];
          v11 = @" (INVALID SUBTYPE)";
          if (v10)
          {
            v11 = &stru_1F3E050C8;
          }

          v9 = v11;
        }

        v43 = v9;
        v41 = v7;
        v12 = [(NSDictionary *)self->_consumerSubTypeAssetMappings objectForKeyedSubscript:v7];
        v13 = [v12 objectForKeyedSubscript:@"assetFile"];
        v14 = v13;
        v15 = @" (ASSET FILE NAME MISSING)";
        if (v13)
        {
          v15 = v13;
        }

        v16 = v15;

        v42 = v12;
        v17 = [v12 objectForKeyedSubscript:@"subscore"];
        v18 = v17;
        v19 = @" (FINAL SUBSCORE NAME MISSING)";
        if (v17)
        {
          v19 = v17;
        }

        v20 = v19;

        if ([v39 containsObject:v16])
        {
          v40 = [[ATXAssetsABHelper alloc] initWithAssetsForResource:v16 ofType:@"plist" specifiedABGroup:0];
          v21 = [(ATXAssetsABHelper *)v40 abGroupContents];
LABEL_22:
          v23 = &stru_1F3E050C8;
          goto LABEL_25;
        }

        if ([v34 containsObject:v16])
        {
          v21 = 0;
          v40 = 0;
        }

        else
        {
          v22 = [[ATXAssetsABHelper alloc] initWithAssetsForResource:v16 ofType:@"plist" specifiedABGroup:0];
          v21 = [(ATXAssetsABHelper *)v22 abGroupContents];
          v40 = v22;
          if (v21)
          {
            [v39 addObject:v16];
            goto LABEL_22;
          }

          [v34 addObject:v16];
        }

        v23 = @"(INVALID ASSET FILE)";
LABEL_25:
        v24 = [v21 objectForKeyedSubscript:@"Scorer"];
        v25 = [v24 objectForKeyedSubscript:v20];
        v26 = @" (MISSING FROM ASSET FILE)";
        if (v25)
        {
          v26 = &stru_1F3E050C8;
        }

        v27 = v26;

        v28 = [MEMORY[0x1E698B010] appPredictionDirectory];
        v29 = [v28 stringByAppendingPathComponent:@"caches/ATXCacheFile"];
        v30 = [ATXAppPredictorAssetMapping getFullCachePathWithBaseCachePath:v29 cacheFileBaseName:v16 subScoreName:v20];

        [v36 appendFormat:@"%@%@\n", v41, v43];
        [v36 appendFormat:@"    assetFile=%@%@\n", v16, v23];
        [v36 appendFormat:@"    subscore=%@%@\n", v20, v27];

        [v36 appendFormat:@"    cacheFilePath=%@\n", v30];
        objc_autoreleasePoolPop(context);
      }

      v38 = [(NSDictionary *)obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v38);
  }

  return v36;
}

- (void)initWithUseMobileAssets:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXAppPredictorAssetMapping.m" lineNumber:61 description:@"Could not load ATXAppPredictorAssetMapping data"];
}

- (void)getAssetFileAndSubscoreForConsumerSubType:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXAppPredictorAssetMapping.m" lineNumber:101 description:@"Could not find a consumerSubType mapping because an empty consumerSubTypeString was nil"];
}

@end