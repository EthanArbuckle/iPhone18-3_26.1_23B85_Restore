@interface AXAuditAssetManager
+ (AXAuditAssetManager)shared;
- (AXAuditAssetManager)init;
- (void)assetController:(id)a3 didFinishDownloadingAsset:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6 hasRemainingDownloads:(BOOL)a7;
- (void)assetController:(id)a3 didFinishRefreshingAssets:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6;
- (void)downloadAssetsIfNecessary;
@end

@implementation AXAuditAssetManager

+ (AXAuditAssetManager)shared
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__AXAuditAssetManager_shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (shared_onceToken != -1)
  {
    dispatch_once(&shared_onceToken, block);
  }

  v2 = shared_instance;

  return v2;
}

uint64_t __29__AXAuditAssetManager_shared__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  shared_instance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (AXAuditAssetManager)init
{
  v8.receiver = self;
  v8.super_class = AXAuditAssetManager;
  v2 = [(AXAuditAssetManager *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CE6690] policy];
    iconVisionModelAssetPolicy = v2->__iconVisionModelAssetPolicy;
    v2->__iconVisionModelAssetPolicy = v3;

    v5 = [MEMORY[0x277CE6688] policy];
    elementVisionModelAssetPolicy = v2->__elementVisionModelAssetPolicy;
    v2->__elementVisionModelAssetPolicy = v5;
  }

  return v2;
}

- (void)downloadAssetsIfNecessary
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[AXAuditAssetManager downloadAssetsIfNecessary]";
  _os_log_debug_impl(&dword_23D6FE000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s", &v1, 0xCu);
  v0 = *MEMORY[0x277D85DE8];
}

- (void)assetController:(id)a3 didFinishRefreshingAssets:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = [v9 assetPolicy];
    *buf = 136315394;
    v31 = "[AXAuditAssetManager assetController:didFinishRefreshingAssets:wasSuccessful:error:]";
    v32 = 2112;
    v33 = v12;
    _os_log_impl(&dword_23D6FE000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: for policy: %@", buf, 0x16u);
  }

  if (a5)
  {
    if ([v10 count])
    {
      v23 = v9;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v31 = "[AXAuditAssetManager assetController:didFinishRefreshingAssets:wasSuccessful:error:]";
        v32 = 2112;
        v33 = v10;
        _os_log_impl(&dword_23D6FE000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: Found assets: %@", buf, 0x16u);
      }

      v24 = [MEMORY[0x277CBEB18] array];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v22 = v10;
      v13 = v10;
      v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v26;
        v17 = MEMORY[0x277D86220];
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v26 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v19 = *(*(&v25 + 1) + 8 * i);
            if ([v19 isInstalled])
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                v31 = "[AXAuditAssetManager assetController:didFinishRefreshingAssets:wasSuccessful:error:]";
                v32 = 2112;
                v33 = v19;
                _os_log_impl(&dword_23D6FE000, v17, OS_LOG_TYPE_INFO, "%s: Asset already downloaded! Asset: %@", buf, 0x16u);
              }
            }

            else if (([v19 isInstalled] & 1) == 0 && (objc_msgSend(v19, "isDownloading") & 1) == 0)
            {
              [v24 addObject:v19];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v15);
      }

      v9 = v23;
      v11 = v21;
      if ([v24 count])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v31 = "[AXAuditAssetManager assetController:didFinishRefreshingAssets:wasSuccessful:error:]";
          v32 = 2112;
          v33 = v24;
          _os_log_impl(&dword_23D6FE000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: Need to download assets: %@", buf, 0x16u);
        }

        [v23 downloadAssets:v24 successStartBlock:&__block_literal_global_21];
      }

      v10 = v22;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AXAuditAssetManager assetController:didFinishRefreshingAssets:wasSuccessful:error:];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [AXAuditAssetManager assetController:didFinishRefreshingAssets:wasSuccessful:error:];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __85__AXAuditAssetManager_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v3 = 136315138;
      v4 = "[AXAuditAssetManager assetController:didFinishRefreshingAssets:wasSuccessful:error:]_block_invoke";
      _os_log_impl(&dword_23D6FE000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: Successfully downloaded assets!", &v3, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __85__AXAuditAssetManager_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke_cold_1();
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)assetController:(id)a3 didFinishDownloadingAsset:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6 hasRemainingDownloads:(BOOL)a7
{
  v18 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (a5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v14 = 136315394;
      v15 = "[AXAuditAssetManager assetController:didFinishDownloadingAsset:wasSuccessful:error:hasRemainingDownloads:]";
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_23D6FE000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: asset successfully installed! %@", &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [AXAuditAssetManager assetController:didFinishDownloadingAsset:wasSuccessful:error:hasRemainingDownloads:];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)assetController:didFinishRefreshingAssets:wasSuccessful:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)assetController:didFinishRefreshingAssets:wasSuccessful:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __85__AXAuditAssetManager_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)assetController:didFinishDownloadingAsset:wasSuccessful:error:hasRemainingDownloads:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

@end