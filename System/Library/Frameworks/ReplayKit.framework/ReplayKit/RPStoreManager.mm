@interface RPStoreManager
+ (id)sharedManager;
- (void)loadItemDetailsForBundleIdentifier:(id)identifier completionHandler:(id)handler;
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

- (void)loadItemDetailsForBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v43[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v42 = 0;
  v7 = objc_alloc_init(RPStoreInfo);
  v8 = MEMORY[0x277CEE3F8];
  bagSubProfile = [MEMORY[0x277CEE510] bagSubProfile];
  bagSubProfileVersion = [MEMORY[0x277CEE510] bagSubProfileVersion];
  v11 = [v8 bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];

  v12 = MEMORY[0x277CEE408];
  bagKeySet = [MEMORY[0x277CEE510] bagKeySet];
  bagSubProfile2 = [MEMORY[0x277CEE510] bagSubProfile];
  bagSubProfileVersion2 = [MEMORY[0x277CEE510] bagSubProfileVersion];
  [v12 registerBagKeySet:bagKeySet forProfile:bagSubProfile2 profileVersion:bagSubProfileVersion2];

  v16 = objc_alloc(MEMORY[0x277CEE510]);
  v17 = [v16 initWithBag:v11 caller:@"com.apple.replayd" keyProfile:*MEMORY[0x277CEE1F0]];
  v43[0] = identifierCopy;
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
    v38 = identifierCopy;
    allItems = [v20 allItems];
    firstObject = [allItems firstObject];

    bundleIdentifier = [firstObject bundleIdentifier];
    if (bundleIdentifier)
    {
      bundleIdentifier2 = [firstObject bundleIdentifier];
      [(RPStoreInfo *)v7 setBundleID:bundleIdentifier2];
    }

    else
    {
      [(RPStoreInfo *)v7 setBundleID:&stru_284D763F8];
    }

    displayName = [firstObject displayName];
    if (displayName)
    {
      [firstObject displayName];
    }

    else
    {
      [MEMORY[0x277CCA8D8] _rpLocalizedAppNameFromBundleID:v38];
    }
    v27 = ;
    [(RPStoreInfo *)v7 setAppName:v27];

    artistName = [firstObject artistName];
    if (artistName)
    {
      artistName2 = [firstObject artistName];
      [(RPStoreInfo *)v7 setAuthor:artistName2];
    }

    else
    {
      [(RPStoreInfo *)v7 setAuthor:&stru_284D763F8];
    }

    productPageURL = [firstObject productPageURL];
    [(RPStoreInfo *)v7 setItemURL:productPageURL];

    artwork = [firstObject artwork];
    firstObject2 = [artwork firstObject];
    v33 = [firstObject2 URLWithHeight:128 width:128 cropStyle:*MEMORY[0x277CEE1C8] format:*MEMORY[0x277CEE1D8]];
    [(RPStoreInfo *)v7 setAppArtworkURL:v33];

    appArtworkURL = [(RPStoreInfo *)v7 appArtworkURL];

    if (!appArtworkURL && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPStoreManager loadItemDetailsForBundleIdentifier:completionHandler:];
    }

    identifierCopy = v38;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__RPStoreManager_loadItemDetailsForBundleIdentifier_completionHandler___block_invoke;
  block[3] = &unk_278B61CF8;
  v40 = v7;
  v41 = handlerCopy;
  v35 = v7;
  v36 = handlerCopy;
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