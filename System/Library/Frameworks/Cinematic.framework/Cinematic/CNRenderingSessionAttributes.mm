@interface CNRenderingSessionAttributes
+ (id)_PTGlobalRenderingMetadataFromItems:(id)a3;
+ (void)_loadPTGlobalRenderingMetadataFromAsset:(id)a3 completionHandler:(id)a4;
+ (void)loadFromAsset:(AVAsset *)asset completionHandler:(void *)completionHandler;
- (CNRenderingSessionAttributes)initWithPTGlobalRenderingMetadata:(id)a3;
@end

@implementation CNRenderingSessionAttributes

- (CNRenderingSessionAttributes)initWithPTGlobalRenderingMetadata:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CNRenderingSessionAttributes;
  v6 = [(CNRenderingSessionAttributes *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internalMetadata, a3);
  }

  return v7;
}

+ (void)loadFromAsset:(AVAsset *)asset completionHandler:(void *)completionHandler
{
  v6 = asset;
  v7 = completionHandler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__CNRenderingSessionAttributes_loadFromAsset_completionHandler___block_invoke;
  v10[3] = &unk_278A16268;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [a1 _loadPTGlobalRenderingMetadataFromAsset:v9 completionHandler:v10];
}

void __64__CNRenderingSessionAttributes_loadFromAsset_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _CNLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __64__CNRenderingSessionAttributes_loadFromAsset_completionHandler___block_invoke_cold_1(v6, a1, v7);
    }

    v8 = _CNCinematicError(2, v6);
    v9 = *(*(a1 + 40) + 16);
  }

  else
  {
    v8 = [[CNRenderingSessionAttributes alloc] initWithPTGlobalRenderingMetadata:v5];
    v9 = *(*(a1 + 40) + 16);
  }

  v9();
}

+ (void)_loadPTGlobalRenderingMetadataFromAsset:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__CNRenderingSessionAttributes__loadPTGlobalRenderingMetadataFromAsset_completionHandler___block_invoke;
  v8[3] = &unk_278A16290;
  v9 = v6;
  v10 = a1;
  v7 = v6;
  [a3 loadMetadataForFormat:0x284A052C0 completionHandler:v8];
}

void __90__CNRenderingSessionAttributes__loadPTGlobalRenderingMetadataFromAsset_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    v6 = [*(a1 + 40) _PTGlobalRenderingMetadataFromItems:a2];
    (*(*(a1 + 32) + 16))();
  }
}

+ (id)_PTGlobalRenderingMetadataFromItems:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 key];
        v10 = [v9 isEqualToString:0x284A052E0];

        if (v10)
        {
          v12 = [v8 value];
          v15 = 0;
          v11 = [MEMORY[0x277D3E890] deserializeMetadataWithType:2 fromGlobalMetadata:v12 error:&v15];

          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

void __64__CNRenderingSessionAttributes_loadFromAsset_completionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 32);
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_236F52000, log, OS_LOG_TYPE_ERROR, "Error: (%@) Unable to load cinematic global rendering metadata from asset %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end