@interface RPStoreManager
+ (id)sharedManager;
- (void)loadItemDetailsForBundleIdentifier:(id)a3 completionHandler:(id)a4;
@end

@implementation RPStoreManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[RPStoreManager sharedManager];
  }

  v3 = sStoreManager;

  return v3;
}

uint64_t __31__RPStoreManager_sharedManager__block_invoke()
{
  sStoreManager = objc_alloc_init(RPStoreManager);

  return MEMORY[0x2821F96F8]();
}

- (void)loadItemDetailsForBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v43[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v42 = 0;
  v7 = objc_alloc_init(RPStoreInfo);
  v8 = MEMORY[0x277CEE3F8];
  v9 = [MEMORY[0x277CEE510] bagSubProfile];
  v10 = [MEMORY[0x277CEE510] bagSubProfileVersion];
  v11 = [v8 bagForProfile:v9 profileVersion:v10];

  v12 = MEMORY[0x277CEE408];
  v13 = [MEMORY[0x277CEE510] bagKeySet];
  v14 = [MEMORY[0x277CEE510] bagSubProfile];
  v15 = [MEMORY[0x277CEE510] bagSubProfileVersion];
  [v12 registerBagKeySet:v13 forProfile:v14 profileVersion:v15];

  v16 = objc_alloc(MEMORY[0x277CEE510]);
  v17 = [v16 initWithBag:v11 caller:@"com.apple.replayd" keyProfile:*MEMORY[0x277CEE1F0]];
  v43[0] = v5;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
  v19 = [v17 performLookupWithBundleIdentifiers:v18 itemIdentifiers:0];

  v20 = [v19 resultWithError:&v42];
  v21 = v20;
  if (v42)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPStoreManager loadItemDetailsForBundleIdentifier:? completionHandler:?];
    }
  }

  else
  {
    v38 = v5;
    v22 = [v20 allItems];
    v23 = [v22 firstObject];

    v24 = [v23 bundleIdentifier];
    if (v24)
    {
      v25 = [v23 bundleIdentifier];
      [(RPStoreInfo *)v7 setBundleID:v25];
    }

    else
    {
      [(RPStoreInfo *)v7 setBundleID:&stru_284D763F8];
    }

    v26 = [v23 displayName];
    if (v26)
    {
      [v23 displayName];
    }

    else
    {
      [MEMORY[0x277CCA8D8] _rpLocalizedAppNameFromBundleID:v38];
    }
    v27 = ;
    [(RPStoreInfo *)v7 setAppName:v27];

    v28 = [v23 artistName];
    if (v28)
    {
      v29 = [v23 artistName];
      [(RPStoreInfo *)v7 setAuthor:v29];
    }

    else
    {
      [(RPStoreInfo *)v7 setAuthor:&stru_284D763F8];
    }

    v30 = [v23 productPageURL];
    [(RPStoreInfo *)v7 setItemURL:v30];

    v31 = [v23 artwork];
    v32 = [v31 firstObject];
    v33 = [v32 URLWithHeight:128 width:128 cropStyle:*MEMORY[0x277CEE1C8] format:*MEMORY[0x277CEE1D8]];
    [(RPStoreInfo *)v7 setAppArtworkURL:v33];

    v34 = [(RPStoreInfo *)v7 appArtworkURL];

    if (!v34 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPStoreManager loadItemDetailsForBundleIdentifier:completionHandler:];
    }

    v5 = v38;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__RPStoreManager_loadItemDetailsForBundleIdentifier_completionHandler___block_invoke;
  block[3] = &unk_278B61CF8;
  v40 = v7;
  v41 = v6;
  v35 = v7;
  v36 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v37 = *MEMORY[0x277D85DE8];
}

- (void)loadItemDetailsForBundleIdentifier:(uint64_t *)a1 completionHandler:.cold.1(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v3 = 138412290;
  v4 = v1;
  _os_log_error_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "RPStoreManager::performLookupWithBundleIdentifiers could not complete lookup with error:%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end