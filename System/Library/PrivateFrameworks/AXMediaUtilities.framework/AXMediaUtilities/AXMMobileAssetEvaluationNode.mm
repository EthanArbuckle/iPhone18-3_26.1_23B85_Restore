@interface AXMMobileAssetEvaluationNode
- (AXMMobileAssetEvaluationNode)initWithIdentifier:(id)a3;
- (id)mlModelClasses;
- (id)mobileAssetType;
- (id)modelResourceNames;
- (id)modelURLs;
- (unint64_t)maxSupportedFormatVersion;
- (unint64_t)minSupportedFormatVersion;
- (void)_downloadAssetsIfNecessary;
- (void)evaluate:(id)a3 metrics:(id)a4;
- (void)setModelURLs:(id)a3;
@end

@implementation AXMMobileAssetEvaluationNode

- (AXMMobileAssetEvaluationNode)initWithIdentifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = AXMMobileAssetEvaluationNode;
  v3 = [(AXMVisionEngineNode *)&v5 initWithIdentifier:a3];
  [(AXMMobileAssetEvaluationNode *)v3 _downloadAssetsIfNecessary];
  return v3;
}

- (id)mlModelClasses
{
  v2 = AXMediaLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    [AXMMobileAssetEvaluationNode mlModelClasses];
  }

  return MEMORY[0x1E695E0F0];
}

- (id)mobileAssetType
{
  v2 = AXMediaLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    [AXMMobileAssetEvaluationNode mobileAssetType];
  }

  return &stru_1F23EA908;
}

- (id)modelResourceNames
{
  v2 = AXMediaLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    [AXMMobileAssetEvaluationNode modelResourceNames];
  }

  return MEMORY[0x1E695E0F0];
}

- (unint64_t)minSupportedFormatVersion
{
  v2 = AXMediaLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    [AXMMobileAssetEvaluationNode minSupportedFormatVersion];
  }

  return 1;
}

- (unint64_t)maxSupportedFormatVersion
{
  v2 = AXMediaLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    [AXMMobileAssetEvaluationNode minSupportedFormatVersion];
  }

  return -1;
}

- (id)modelURLs
{
  if (modelURLs_onceToken != -1)
  {
    [AXMMobileAssetEvaluationNode modelURLs];
  }

  v2 = objc_opt_class();
  objc_sync_enter(v2);
  v3 = __ModelURLs;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = objc_opt_new();
    v8 = __ModelURLs;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v8 setObject:v7 forKeyedSubscript:v10];
  }

  v11 = __ModelURLs;
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v11 objectForKeyedSubscript:v13];

  objc_sync_exit(v2);

  return v14;
}

void __41__AXMMobileAssetEvaluationNode_modelURLs__block_invoke()
{
  v0 = objc_opt_new();
  v1 = __ModelURLs;
  __ModelURLs = v0;
}

- (void)setModelURLs:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  objc_sync_enter(v5);
  v6 = AXLogAssetLoader();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(AXMMobileAssetEvaluationNode *)self modelURLs];
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_1AE37B000, v6, OS_LOG_TYPE_INFO, "Setting new model URLs: %@. Replacing old modelURLs: %@", &v10, 0x16u);
  }

  v8 = [(AXMMobileAssetEvaluationNode *)self modelURLs];
  [v8 removeAllObjects];

  v9 = [(AXMMobileAssetEvaluationNode *)self modelURLs];
  [v9 addObjectsFromArray:v4];

  objc_sync_exit(v5);
}

- (void)_downloadAssetsIfNecessary
{
  v3 = [(AXMMobileAssetEvaluationNode *)self modelURLs];
  if ([v3 count])
  {
    mobileAssetBaseURL = self->_mobileAssetBaseURL;

    if (mobileAssetBaseURL)
    {
      return;
    }
  }

  else
  {
  }

  v5 = objc_alloc(MEMORY[0x1E69B18E8]);
  v6 = [(AXMMobileAssetEvaluationNode *)self mobileAssetType];
  v7 = [v5 initWithType:v6];

  [v7 returnTypes:2];
  [v7 setDoNotBlockBeforeFirstUnlock:1];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__AXMMobileAssetEvaluationNode__downloadAssetsIfNecessary__block_invoke;
  v9[3] = &unk_1E7A1CC68;
  v10 = v7;
  v11 = self;
  v8 = v7;
  [v8 queryMetaData:v9];
}

void __58__AXMMobileAssetEvaluationNode__downloadAssetsIfNecessary__block_invoke(uint64_t a1, uint64_t a2)
{
  v57 = *MEMORY[0x1E69E9840];
  if (a2 == 2)
  {
    v33 = MEMORY[0x1E69B18D8];
    v38 = [*(a1 + 40) mobileAssetType];
    [v33 startCatalogDownload:v38 then:&__block_literal_global_334];
  }

  else if (!a2)
  {
    v37 = [*(a1 + 32) results];
    v3 = AXLogAssetLoader();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v52 = v37;
      _os_log_impl(&dword_1AE37B000, v3, OS_LOG_TYPE_INFO, "Retrieved assets: %@", buf, 0xCu);
    }

    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __58__AXMMobileAssetEvaluationNode__downloadAssetsIfNecessary__block_invoke_317;
    v48[3] = &unk_1E7A1CBF8;
    v48[4] = *(a1 + 40);
    v36 = [v37 ax_filteredArrayUsingBlock:v48];
    v4 = AXLogAssetLoader();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "minSupportedFormatVersion")}];
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "maxSupportedFormatVersion")}];
      *buf = 138412802;
      v52 = v36;
      v53 = 2112;
      v54 = v5;
      v55 = 2112;
      v56 = v6;
      _os_log_impl(&dword_1AE37B000, v4, OS_LOG_TYPE_INFO, "Supported assets: %@ %@ %@", buf, 0x20u);
    }

    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __58__AXMMobileAssetEvaluationNode__downloadAssetsIfNecessary__block_invoke_323;
    v47[3] = &unk_1E7A1CC20;
    v47[4] = *(a1 + 40);
    v7 = [v36 sortedArrayUsingComparator:v47];
    v8 = [v7 lastObject];
    v9 = AXLogAssetLoader();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v52 = v8;
      _os_log_impl(&dword_1AE37B000, v9, OS_LOG_TYPE_INFO, "Found download node asset: %@", buf, 0xCu);
    }

    if (v8)
    {
      v10 = [v8 attributes];
      v35 = [v10 objectForKeyedSubscript:@"FormatVersion"];

      v11 = [v8 attributes];
      v12 = [v11 objectForKeyedSubscript:@"FormatVersion"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        *(*(a1 + 40) + 64) = [v35 unsignedIntegerValue];
      }

      [v8 logAsset];
      if ([v8 state] == 2 || objc_msgSend(v8, "state") == 4 || objc_msgSend(v8, "state") == 3)
      {
        if ([v8 state] == 2 || objc_msgSend(v8, "state") == 3)
        {
          obj = objc_opt_class();
          objc_sync_enter(obj);
          v14 = [MEMORY[0x1E695DF70] array];
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v15 = [*(a1 + 40) modelResourceNames];
          v16 = [v15 countByEnumeratingWithState:&v43 objects:v50 count:16];
          if (v16)
          {
            v17 = *v44;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v44 != v17)
                {
                  objc_enumerationMutation(v15);
                }

                v19 = *(*(&v43 + 1) + 8 * i);
                v20 = [v8 getLocalFileUrl];
                v21 = [v20 URLByAppendingPathComponent:v19];
                [v14 addObject:v21];
              }

              v16 = [v15 countByEnumeratingWithState:&v43 objects:v50 count:16];
            }

            while (v16);
          }

          [*(a1 + 40) setModelURLs:v14];
          v22 = AXMediaLogCommon();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v52 = v14;
            _os_log_impl(&dword_1AE37B000, v22, OS_LOG_TYPE_INFO, "Adding model URLS: %@", buf, 0xCu);
          }

          v23 = [v8 getLocalFileUrl];
          v24 = *(a1 + 40);
          v25 = *(v24 + 80);
          *(v24 + 80) = v23;

          v26 = AXMediaLogCommon();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v27 = *(*(a1 + 40) + 80);
            *buf = 138412546;
            v52 = v27;
            v53 = 2112;
            v54 = v8;
            _os_log_impl(&dword_1AE37B000, v26, OS_LOG_TYPE_INFO, "Adding base URLS: %@ -> %@", buf, 0x16u);
          }

          if (!*(*(a1 + 40) + 80))
          {
            v28 = AXMediaLogCommon();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1AE37B000, v28, OS_LOG_TYPE_INFO, "No base URL, resetting model URLs", buf, 2u);
            }

            [*(a1 + 40) setModelURLs:0];
          }

          objc_sync_exit(obj);
          if ([v7 count] >= 2)
          {
            v29 = [v7 subarrayWithRange:{0, objc_msgSend(v7, "count") - 1}];
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v30 = [v29 countByEnumeratingWithState:&v39 objects:v49 count:16];
            if (v30)
            {
              v31 = *v40;
              do
              {
                for (j = 0; j != v30; ++j)
                {
                  if (*v40 != v31)
                  {
                    objc_enumerationMutation(v29);
                  }

                  [*(*(&v39 + 1) + 8 * j) purge:{&__block_literal_global_331, obj}];
                }

                v30 = [v29 countByEnumeratingWithState:&v39 objects:v49 count:16];
              }

              while (v30);
            }
          }
        }
      }

      else
      {
        [v8 startDownload:&__block_literal_global_328];
      }
    }
  }
}

BOOL __58__AXMMobileAssetEvaluationNode__downloadAssetsIfNecessary__block_invoke_317(uint64_t a1, void *a2)
{
  v3 = [a2 attributes];
  v4 = [v3 objectForKeyedSubscript:@"FormatVersion"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 unsignedIntegerValue];
  }

  else
  {
    v5 = 1;
  }

  v6 = v5 >= [*(a1 + 32) minSupportedFormatVersion] && v5 <= objc_msgSend(*(a1 + 32), "maxSupportedFormatVersion");

  return v6;
}

uint64_t __58__AXMMobileAssetEvaluationNode__downloadAssetsIfNecessary__block_invoke_323(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 attributes];
  v7 = [*(a1 + 32) contentVersionKey];
  v8 = [v6 objectForKeyedSubscript:v7];

  v9 = [v5 attributes];

  v10 = [*(a1 + 32) contentVersionKey];
  v11 = [v9 objectForKeyedSubscript:v10];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v12 = [v8 compare:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)evaluate:(id)a3 metrics:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = AXMMobileAssetEvaluationNode;
  v27 = a3;
  v28 = a4;
  [(AXMEvaluationNode *)&v30 evaluate:v27 metrics:?];
  [(AXMMobileAssetEvaluationNode *)self _downloadAssetsIfNecessary];
  if (!self->_mlModels)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    obj = objc_opt_class();
    objc_sync_enter(obj);
    v7 = [(AXMMobileAssetEvaluationNode *)self modelURLs];
    v8 = [v7 count];
    v9 = [(AXMMobileAssetEvaluationNode *)self mlModelClasses];
    v10 = [v9 count];

    v11 = 0;
    *&v12 = 138412290;
    v25 = v12;
    while (1)
    {
      v13 = [(AXMMobileAssetEvaluationNode *)self mlModelClasses];
      v14 = [v13 count] > v11;

      if (!v14)
      {
        break;
      }

      v15 = [(AXMMobileAssetEvaluationNode *)self mlModelClasses];
      v16 = [v15 objectAtIndexedSubscript:v11];

      if (v8 == v10)
      {
        v17 = [(AXMMobileAssetEvaluationNode *)self modelURLs];
        v18 = [v17 objectAtIndexedSubscript:v11];

        if (v18)
        {
          v19 = [v16 alloc];
          v29 = 0;
          v20 = [v19 initWithContentsOfURL:v18 error:&v29];
          v21 = v29;
          if (v21)
          {
            v22 = AXMediaLogCommon();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = v25;
              v32 = v21;
              _os_log_error_impl(&dword_1AE37B000, v22, OS_LOG_TYPE_ERROR, "Can't load model: %@", buf, 0xCu);
            }
          }

          else
          {
            v22 = AXMediaLogCommon();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v32 = v18;
              v33 = 2112;
              v34 = v20;
              _os_log_impl(&dword_1AE37B000, v22, OS_LOG_TYPE_INFO, "Made model: %@ %@", buf, 0x16u);
            }
          }

          if (v20)
          {
            goto LABEL_13;
          }
        }
      }

      v20 = objc_alloc_init(v16);
      if (v20)
      {
LABEL_13:
        [v6 addObject:v20];
      }

      ++v11;
    }

    objc_sync_exit(obj);

    v23 = [v6 count];
    v24 = [(AXMMobileAssetEvaluationNode *)self mlModelClasses];
    LOBYTE(v23) = v23 == [v24 count];

    if (v23)
    {
      objc_storeStrong(&self->_mlModels, v6);
    }
  }
}

@end