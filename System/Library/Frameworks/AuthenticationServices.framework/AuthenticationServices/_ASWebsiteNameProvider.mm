@interface _ASWebsiteNameProvider
+ (BOOL)_candidateWebsiteNameHasObviousFlaw:(id)a3;
+ (id)_bestTitleFromCandidateTitles:(id)a3;
+ (id)_candidateWebsiteNameForLinkMetadata:(id)a3;
+ (id)_siteNameFromOpenGraphSiteName:(id)a3 withURL:(id)a4;
+ (id)_siteNameFromTitle:(id)a3 withURL:(id)a4;
+ (id)_siteNameFromTitleLikeString:(id)a3 withURL:(id)a4 useHostAndTitlePrefixMatch:(BOOL)a5;
+ (id)_trimErrantLeadingAndTrailingCharacters:(id)a3;
+ (id)_undesirableCharactersCharacterSet;
+ (id)siteNameForDomain:(id)a3 fromBusinessName:(id)a4 title:(id)a5 openGraphSiteName:(id)a6 applicationName:(id)a7;
+ (id)websiteNameForLinkMetadata:(id)a3;
+ (uint64_t)_undesirableCharactersCharacterSet;
+ (void)fetchWebsiteNameForDomain:(id)a3 completionHandler:(id)a4;
- (BOOL)_canRefreshDataForDateLastRefreshed:(id)a3;
- (BOOL)_openDatabaseIfNeeded;
- (id)_initWithShouldLoadQuirksList:(BOOL)a3;
- (id)knownWebsiteNameForDomain:(id)a3;
- (id)test_initWithWebsiteNameDictionary:(id)a3;
- (void)_cacheDatabaseBackedWebsiteName:(id)a3 forDomain:(id)a4;
- (void)_cacheFetchedAndKeychainBackedWebsiteName:(id)a3 forDomain:(id)a4 dateLastRefreshed:(id)a5;
- (void)_fetchDataForDomainIfNeeded:(id)a3 metadataEntry:(id)a4;
- (void)_processMetadataEntryFetchedFromKeychain:(id)a3 forDomain:(id)a4 allowRefreshingDataFromNetwork:(BOOL)a5;
- (void)_suspendOrResumeWebsiteFetchingOperationQueue;
- (void)beginLoadingBuiltInAndRemotelyUpdatableWebsiteNames;
- (void)dealloc;
- (void)debug_fetchWebsiteNamesForDomains:(id)a3 completionHandler:(id)a4;
- (void)fetchOperation:(id)a3 finishedWithResult:(id)a4 completion:(id)a5;
- (void)prewarm;
- (void)setIsForTesting:(BOOL)a3;
- (void)setWebsiteNameConsumer:(id)a3 completion:(id)a4;
- (void)test_waitUntilBuiltInAndRemotelyUpdatableWebsiteNamesAreLoaded;
@end

@implementation _ASWebsiteNameProvider

- (void)_suspendOrResumeWebsiteFetchingOperationQueue
{
  v12 = *MEMORY[0x1E69E9840];
  if (!self->_isForTesting)
  {
    v3 = [(WBSPrivacyProxyAvailabilityManager *)self->_availabilityManager shouldFetchPasswordManagerWebsiteDataUsingPrivacyProxy];
    v4 = WBS_LOG_CHANNEL_PREFIXWebsiteNameProvider();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v10 = 67109120;
      v11 = v3;
      _os_log_impl(&dword_1B1C8D000, v4, OS_LOG_TYPE_INFO, "_ASWebsiteNameProvider shouldFetchPasswordManagerWebsiteDataUsingPrivacyProxy: %d", &v10, 8u);
    }

    websiteNameConsumer = self->_websiteNameConsumer;
    v6 = WBS_LOG_CHANNEL_PREFIXWebsiteNameProvider();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 67109120;
      v11 = websiteNameConsumer != 0;
      _os_log_impl(&dword_1B1C8D000, v6, OS_LOG_TYPE_INFO, "_ASWebsiteNameProvider consumerExists: %d", &v10, 8u);
    }

    v7 = (websiteNameConsumer != 0) & v3;
    v8 = WBS_LOG_CHANNEL_PREFIXWebsiteNameProvider();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 67109120;
      v11 = v7;
      _os_log_impl(&dword_1B1C8D000, v8, OS_LOG_TYPE_INFO, "_ASWebsiteNameProvider allowing fetching: %d", &v10, 8u);
    }

    [(NSOperationQueue *)self->_websiteFetchingQueue setSuspended:v7 ^ 1u];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)beginLoadingBuiltInAndRemotelyUpdatableWebsiteNames
{
  remotelyUpdatableDataController = self->_remotelyUpdatableDataController;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __77___ASWebsiteNameProvider_beginLoadingBuiltInAndRemotelyUpdatableWebsiteNames__block_invoke;
  v3[3] = &unk_1E7AF8188;
  v3[4] = self;
  [(WBSRemotelyUpdatableDataController *)remotelyUpdatableDataController accessSnapshotLoadingItIfNeeded:v3];
}

- (void)prewarm
{
  websiteMetadataStore = self->_websiteMetadataStore;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33___ASWebsiteNameProvider_prewarm__block_invoke;
  v3[3] = &unk_1E7AF8138;
  v3[4] = self;
  [(WBSPasswordManagerWebsiteMetadataStore *)websiteMetadataStore allMetadataWithCompletionHandler:v3];
}

- (id)test_initWithWebsiteNameDictionary:(id)a3
{
  v4 = a3;
  v5 = [(_ASWebsiteNameProvider *)self _initWithShouldLoadQuirksList:0];
  v6 = v5[2];
  v5[2] = v4;

  return v5;
}

- (id)_initWithShouldLoadQuirksList:(BOOL)a3
{
  v3 = a3;
  v46.receiver = self;
  v46.super_class = _ASWebsiteNameProvider;
  v4 = [(_ASWebsiteNameProvider *)&v46 init];
  if (!v4)
  {
    goto LABEL_16;
  }

  if (v3)
  {
    v5 = objc_alloc(MEMORY[0x1E69C89E0]);
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v7 = [v6 safari_autoFillQuirksDownloadDirectoryURL];
    v8 = objc_opt_class();
    v9 = [v5 initWithDataFormat:1 builtInListURL:0 downloadsDirectoryURL:v7 resourceName:@"WebsiteNamesForPasswordManager" resourceVersion:@"1" updateDateDefaultsKey:@"WebsiteNameProviderLastUpdateTime" updateInterval:86400.0 snapshotClass:v8 snapshotTransformerClass:objc_opt_class()];
    remotelyUpdatableDataController = v4->_remotelyUpdatableDataController;
    v4->_remotelyUpdatableDataController = v9;

    [(WBSRemotelyUpdatableDataController *)v4->_remotelyUpdatableDataController setDelegate:v4];
    [(WBSRemotelyUpdatableDataController *)v4->_remotelyUpdatableDataController setShouldAttemptToUpdateConfiguration:1];
    v11 = dispatch_get_global_queue(17, 0);
    v12 = dispatch_queue_create_with_target_V2("com.apple.AuthenticationServices._ASWebsiteNameProvider._databaseQueue", 0, v11);
    databaseQueue = v4->_databaseQueue;
    v4->_databaseQueue = v12;

    v14 = v4->_databaseQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56___ASWebsiteNameProvider__initWithShouldLoadQuirksList___block_invoke;
    block[3] = &unk_1E7AF80E8;
    v45 = v4;
    dispatch_async(v14, block);
  }

  v15 = objc_opt_new();
  websiteFetchingQueue = v4->_websiteFetchingQueue;
  v4->_websiteFetchingQueue = v15;

  [(NSOperationQueue *)v4->_websiteFetchingQueue setQualityOfService:17];
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.%@.%p.websiteFetchingQueue", objc_opt_class(), v4];
  [(NSOperationQueue *)v4->_websiteFetchingQueue setName:v17];

  [(NSOperationQueue *)v4->_websiteFetchingQueue setMaxConcurrentOperationCount:3];
  v18 = [objc_alloc(MEMORY[0x1E69C8988]) initWithMetadataEntryClass:objc_opt_class()];
  websiteMetadataStore = v4->_websiteMetadataStore;
  v4->_websiteMetadataStore = v18;

  v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
  cachedWebsiteNamesFromDatabase = v4->_cachedWebsiteNamesFromDatabase;
  v4->_cachedWebsiteNamesFromDatabase = v20;

  v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
  cachedWebsiteNamesFromKeychain = v4->_cachedWebsiteNamesFromKeychain;
  v4->_cachedWebsiteNamesFromKeychain = v22;

  v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
  cachedDomainToDateLastRefreshed = v4->_cachedDomainToDateLastRefreshed;
  v4->_cachedDomainToDateLastRefreshed = v24;

  if (isProcessAllowedToFetchWebsiteNames(void)::onceToken != -1)
  {
    [_ASWebsiteNameProvider _initWithShouldLoadQuirksList:];
  }

  if (isProcessAllowedToFetchWebsiteNames(void)::isProcessAllowedToFetchWebsiteNames != 1)
  {
LABEL_15:
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __56___ASWebsiteNameProvider__initWithShouldLoadQuirksList___block_invoke_2;
    v42[3] = &unk_1E7AF80E8;
    v35 = v4;
    v43 = v35;
    dispatch_async(MEMORY[0x1E69E96A0], v42);
    v36 = dispatch_queue_create("com.apple.AuthenticationServices._ASWebsiteNameProvider", 0);
    internalQueueForCachedWebsiteNames = v35->_internalQueueForCachedWebsiteNames;
    v35->_internalQueueForCachedWebsiteNames = v36;

    v38 = v35;
LABEL_16:

    return v4;
  }

  v52 = 0;
  v53 = &v52;
  v54 = 0x2050000000;
  v26 = getWBSPrivacyProxyAvailabilityManagerClass(void)::softClass;
  v55 = getWBSPrivacyProxyAvailabilityManagerClass(void)::softClass;
  if (!getWBSPrivacyProxyAvailabilityManagerClass(void)::softClass)
  {
    v47 = MEMORY[0x1E69E9820];
    v48 = 3221225472;
    v49 = ___ZL42getWBSPrivacyProxyAvailabilityManagerClassv_block_invoke;
    v50 = &unk_1E7AF8438;
    v51 = &v52;
    ___ZL42getWBSPrivacyProxyAvailabilityManagerClassv_block_invoke(&v47);
    v26 = v53[3];
  }

  v27 = v26;
  _Block_object_dispose(&v52, 8);
  v28 = [v26 sharedManager];
  availabilityManager = v4->_availabilityManager;
  v4->_availabilityManager = v28;

  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v30 = getWBSPrivacyProxyChangeNotificationSymbolLoc(void)::ptr;
  v55 = getWBSPrivacyProxyChangeNotificationSymbolLoc(void)::ptr;
  if (!getWBSPrivacyProxyChangeNotificationSymbolLoc(void)::ptr)
  {
    v47 = MEMORY[0x1E69E9820];
    v48 = 3221225472;
    v49 = ___ZL45getWBSPrivacyProxyChangeNotificationSymbolLocv_block_invoke;
    v50 = &unk_1E7AF8438;
    v51 = &v52;
    v31 = SafariSharedUILibrary();
    v32 = dlsym(v31, "WBSPrivacyProxyChangeNotification");
    *(v51[1] + 24) = v32;
    getWBSPrivacyProxyChangeNotificationSymbolLoc(void)::ptr = *(v51[1] + 24);
    v30 = v53[3];
  }

  _Block_object_dispose(&v52, 8);
  if (v30)
  {
    v33 = *v30;
    if (v33)
    {
      v34 = [MEMORY[0x1E696AD88] defaultCenter];
      [v34 addObserver:v4 selector:sel__privacyProxyDidChange_ name:v33 object:v4->_availabilityManager];
    }

    goto LABEL_15;
  }

  v40 = [MEMORY[0x1E696AAA8] currentHandler];
  v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSNotificationName getWBSPrivacyProxyChangeNotification()"];
  [v40 handleFailureInFunction:v41 file:@"_ASSafariSharedUISoftLinking.h" lineNumber:24 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (void)dealloc
{
  [(WBSRemotelyUpdatableDataController *)self->_remotelyUpdatableDataController prepareForTermination];
  v3 = self->_database;
  v4 = v3;
  if (v3)
  {
    databaseQueue = self->_databaseQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33___ASWebsiteNameProvider_dealloc__block_invoke;
    block[3] = &unk_1E7AF80E8;
    v8 = v3;
    dispatch_async(databaseQueue, block);
  }

  v6.receiver = self;
  v6.super_class = _ASWebsiteNameProvider;
  [(_ASWebsiteNameProvider *)&v6 dealloc];
}

- (void)test_waitUntilBuiltInAndRemotelyUpdatableWebsiteNamesAreLoaded
{
  [(WBSRemotelyUpdatableDataController *)self->_remotelyUpdatableDataController accessCurrentSnapshot:&__block_literal_global_11];
  databaseQueue = self->_databaseQueue;

  dispatch_sync(databaseQueue, &__block_literal_global_102);
}

- (void)debug_fetchWebsiteNamesForDomains:(id)a3 completionHandler:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(NSOperationQueue *)self->_websiteFetchingQueue setSuspended:0];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [[_ASWebsiteNameFetchOperation alloc] initWithDomain:*(*(&v20 + 1) + 8 * v11) metadataEntry:0 provider:self];
        [(NSOperationQueue *)self->_websiteFetchingQueue addOperation:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  objc_initWeak(&location, self);
  websiteFetchingQueue = self->_websiteFetchingQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78___ASWebsiteNameProvider_debug_fetchWebsiteNamesForDomains_completionHandler___block_invoke;
  v16[3] = &unk_1E7AF81D0;
  objc_copyWeak(&v18, &location);
  v14 = v7;
  v17 = v14;
  [(NSOperationQueue *)websiteFetchingQueue addBarrierBlock:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  v15 = *MEMORY[0x1E69E9840];
}

- (void)setIsForTesting:(BOOL)a3
{
  if (self->_isForTesting != a3)
  {
    self->_isForTesting = a3;
    if (a3)
    {
      [(NSOperationQueue *)self->_websiteFetchingQueue setSuspended:0];
    }
  }
}

+ (id)_undesirableCharactersCharacterSet
{
  if (_MergedGlobals == 1)
  {
    v4 = qword_1EB7761F0;
  }

  else
  {
    v6[1] = v2;
    v7 = v3;
    +[(_ASWebsiteNameProvider *)v6];
    v4 = v6[0];
  }

  return v4;
}

+ (id)_bestTitleFromCandidateTitles:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56___ASWebsiteNameProvider__bestTitleFromCandidateTitles___block_invoke;
  aBlock[3] = &__block_descriptor_40_e18_q16__0__NSString_8l;
  aBlock[4] = a1;
  v5 = _Block_copy(aBlock);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56___ASWebsiteNameProvider__bestTitleFromCandidateTitles___block_invoke_2;
  v9[3] = &unk_1E7AF8238;
  v10 = v5;
  v6 = v5;
  v7 = [v4 safari_maximumUsingComparator:v9];

  return v7;
}

+ (id)siteNameForDomain:(id)a3 fromBusinessName:(id)a4 title:(id)a5 openGraphSiteName:(id)a6 applicationName:(id)a7
{
  v12 = a4;
  v29 = a5;
  v13 = a6;
  v14 = a7;
  v15 = MEMORY[0x1E695DFF8];
  v28 = v12;
  v16 = [@"https://" stringByAppendingString:a3];
  v17 = [v15 URLWithString:v16];

  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = [a1 _siteNameFromTitle:v12 withURL:v17];
  if (([a1 _candidateWebsiteNameHasObviousFlaw:v19] & 1) == 0)
  {
    v20 = [a1 _trimErrantLeadingAndTrailingCharacters:v19];
    [v18 addObject:v20];
  }

  v21 = objc_alloc_init(MEMORY[0x1E696ECA0]);
  [v21 setOriginalURL:v17];
  [v21 setTitle:v29];
  [v21 setSiteName:v13];
  v22 = [a1 _candidateWebsiteNameForLinkMetadata:v21];
  if (([a1 _candidateWebsiteNameHasObviousFlaw:v22] & 1) == 0)
  {
    v23 = [a1 _trimErrantLeadingAndTrailingCharacters:v22];
    [v18 addObject:v23];
  }

  v24 = [a1 _siteNameFromTitle:v14 withURL:v17];
  if (([a1 _candidateWebsiteNameHasObviousFlaw:v24] & 1) == 0)
  {
    v25 = [a1 _trimErrantLeadingAndTrailingCharacters:v24];
    [v18 addObject:v25];
  }

  v26 = [a1 _bestTitleFromCandidateTitles:v18];

  return v26;
}

+ (void)fetchWebsiteNameForDomain:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E696ECE0]);
  [v8 setTimeout:5.0];
  [v8 setShouldFetchSubresources:0];
  if (objc_opt_respondsToSelector())
  {
    [v8 setSourceApplicationSecondaryIdentifierForRequiringPrivacyProxyFailingClosed:@"com.apple.Passwords.PRIconFetching"];
    v9 = MEMORY[0x1E695DFF8];
    v10 = [@"https://" stringByAppendingString:v6];
    v11 = [v9 URLWithString:v10];

    v12 = WBS_LOG_CHANNEL_PREFIXWebsiteNameProvider();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [_ASWebsiteNameProvider fetchWebsiteNameForDomain:v6 completionHandler:v12];
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __70___ASWebsiteNameProvider_fetchWebsiteNameForDomain_completionHandler___block_invoke;
    v14[3] = &unk_1E7AF8260;
    v15 = v6;
    v16 = v7;
    v17 = a1;
    [v8 startFetchingMetadataForURL:v11 completionHandler:v14];
  }

  else
  {
    v13 = WBS_LOG_CHANNEL_PREFIXWebsiteNameProvider();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_ASWebsiteNameProvider fetchWebsiteNameForDomain:v6 completionHandler:v13];
    }

    (*(v7 + 2))(v7, 0);
  }
}

+ (id)_candidateWebsiteNameForLinkMetadata:(id)a3
{
  v4 = a3;
  v5 = [v4 siteName];
  if (v5)
  {
    v6 = [v4 originalURL];
    v7 = [a1 _siteNameFromOpenGraphSiteName:v5 withURL:v6];

    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    v9 = v8;
  }

  else
  {
    v7 = [v4 originalTitle];
    if (!v7 && ([v4 title], (v7 = objc_claimAutoreleasedReturnValue()) == 0) || (objc_msgSend(v4, "originalURL"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(a1, "_siteNameFromTitle:withURL:", v7, v10), v9 = objc_claimAutoreleasedReturnValue(), v10, !v9))
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (BOOL)_candidateWebsiteNameHasObviousFlaw:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 length];
  if (v4 - 33 >= 0xFFFFFFFFFFFFFFE0)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [&unk_1F28F04B8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (!v8)
    {
      v5 = 0;
      goto LABEL_3;
    }

    v9 = *v17;
LABEL_6:
    v10 = 0;
    while (1)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(&unk_1F28F04B8);
      }

      v11 = *(*(&v16 + 1) + 8 * v10);
      v12 = [v11 length];
      if (v4 >= v12)
      {
        v13 = [v3 substringToIndex:v12];
        v14 = [v13 lowercaseString];
        v15 = [v11 isEqualToString:v14];

        if (v15)
        {
          break;
        }
      }

      if (v8 == ++v10)
      {
        v8 = [&unk_1F28F04B8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        v5 = 0;
        if (v8)
        {
          goto LABEL_6;
        }

        goto LABEL_3;
      }
    }
  }

  v5 = 1;
LABEL_3:

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)_trimErrantLeadingAndTrailingCharacters:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = [a3 safari_stringByTrimmingWhitespace];
  v5 = [a1 _commonTitleDelimiters];
  v6 = v5;
  v7 = +[_ASWebsiteNameProvider _trimErrantLeadingAndTrailingCharacters:]::prefixesToRemove;
  if (!+[_ASWebsiteNameProvider _trimErrantLeadingAndTrailingCharacters:]::prefixesToRemove)
  {
    v8 = [v5 safari_mapObjectsUsingBlock:&__block_literal_global_144];
    v9 = [v8 arrayByAddingObjectsFromArray:v6];
    v10 = +[_ASWebsiteNameProvider _trimErrantLeadingAndTrailingCharacters:]::prefixesToRemove;
    +[_ASWebsiteNameProvider _trimErrantLeadingAndTrailingCharacters:]::prefixesToRemove = v9;

    v7 = +[_ASWebsiteNameProvider _trimErrantLeadingAndTrailingCharacters:]::prefixesToRemove;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v12)
  {
    v13 = *v41;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = [v4 safari_substringFromPrefix:*(*(&v40 + 1) + 8 * i)];
        if (v15)
        {

          v4 = v15;
          goto LABEL_13;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  if (!+[_ASWebsiteNameProvider _trimErrantLeadingAndTrailingCharacters:]::suffixesToRemove)
  {
    v16 = [a1 _commonTitleDelimiters];
    v17 = [v16 safari_mapObjectsUsingBlock:&__block_literal_global_146];
    v18 = [v17 arrayByAddingObjectsFromArray:v6];
    v19 = +[_ASWebsiteNameProvider _trimErrantLeadingAndTrailingCharacters:]::suffixesToRemove;
    +[_ASWebsiteNameProvider _trimErrantLeadingAndTrailingCharacters:]::suffixesToRemove = v18;

    v20 = [+[_ASWebsiteNameProvider _trimErrantLeadingAndTrailingCharacters:]::suffixesToRemove arrayByAddingObjectsFromArray:&unk_1F28F04D0];
    v21 = +[_ASWebsiteNameProvider _trimErrantLeadingAndTrailingCharacters:]::suffixesToRemove;
    +[_ASWebsiteNameProvider _trimErrantLeadingAndTrailingCharacters:]::suffixesToRemove = v20;
  }

  v22 = [v4 length];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v23 = +[_ASWebsiteNameProvider _trimErrantLeadingAndTrailingCharacters:]::suffixesToRemove;
  v24 = [v23 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v24)
  {
    v25 = *v37;
    while (2)
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v37 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = *(*(&v36 + 1) + 8 * j);
        v28 = [v27 length];
        v29 = v22 - v28;
        if (v22 > v28)
        {
          v30 = [v4 substringFromIndex:v29];
          v31 = [v27 isEqualToString:v30];

          if (v31)
          {
            v32 = [v4 substringWithRange:{0, v29}];
            v33 = [v32 safari_stringByTrimmingWhitespace];

            v4 = v33;
            goto LABEL_26;
          }
        }
      }

      v24 = [v23 countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }
  }

LABEL_26:

  v34 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)websiteNameForLinkMetadata:(id)a3
{
  v4 = [a1 _candidateWebsiteNameForLinkMetadata:a3];
  if ([a1 _candidateWebsiteNameHasObviousFlaw:v4])
  {
    v5 = 0;
  }

  else
  {
    v5 = [a1 _trimErrantLeadingAndTrailingCharacters:v4];
  }

  return v5;
}

+ (id)_siteNameFromOpenGraphSiteName:(id)a3 withURL:(id)a4
{
  v4 = [a1 _siteNameFromTitleLikeString:a3 withURL:a4 useHostAndTitlePrefixMatch:0];

  return v4;
}

+ (id)_siteNameFromTitle:(id)a3 withURL:(id)a4
{
  v4 = [a1 _siteNameFromTitleLikeString:a3 withURL:a4 useHostAndTitlePrefixMatch:1];

  return v4;
}

+ (id)_siteNameFromTitleLikeString:(id)a3 withURL:(id)a4 useHostAndTitlePrefixMatch:(BOOL)a5
{
  v60 = a5;
  v72 = *MEMORY[0x1E69E9840];
  v65 = a3;
  v61 = a4;
  v7 = [v61 _lp_highLevelDomain];
  v8 = v7;
  if (!v7)
  {
    v8 = [v61 _lp_simplifiedStringForDisplayOnly:0];
  }

  v66 = [v8 lowercaseString];
  if (!v7)
  {
  }

  v9 = [v66 _lp_hostByStrippingTopLevelDomain];
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v10 = [a1 _commonTitleDelimiters];
  obj = v10;
  v11 = [v10 countByEnumeratingWithState:&v67 objects:v71 count:16];
  if (v11)
  {
    v62 = 0;
    v64 = *v68;
    v12 = 0.0;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v68 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [v65 componentsSeparatedByString:*(*(&v67 + 1) + 8 * i)];
        v15 = [v14 count];
        if (v15 >= 3)
        {
          v16 = [v14 objectAtIndexedSubscript:0];
          v17 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
          v18 = [v16 stringByTrimmingCharactersInSet:v17];

          v19 = [v18 lowercaseString];
          LOBYTE(v17) = [v19 isEqualToString:v9];

          if (v17)
          {
            goto LABEL_57;
          }

          v20 = [v14 objectAtIndexedSubscript:v15 - 1];
          v21 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
          v22 = [v20 stringByTrimmingCharactersInSet:v21];

          v23 = [v22 lowercaseString];
          v24 = [v23 isEqualToString:v9];

          v25 = v24 ? 0 : v22;
          if (v24)
          {
            v48 = v65;
            v18 = v22;
            goto LABEL_58;
          }
        }

        if ([v14 count] == 2)
        {
          v26 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
          v27 = [v14 objectAtIndexedSubscript:0];
          v28 = [v27 stringByTrimmingCharactersInSet:v26];

          v29 = [v14 objectAtIndexedSubscript:1];
          v30 = [v29 stringByTrimmingCharactersInSet:v26];

          v31 = [v28 lowercaseString];
          v32 = [v30 lowercaseString];
          [v31 _lp_similarityToString:v66];
          v34 = v33;
          [v31 _lp_similarityToString:v9];
          if (v34 <= v35)
          {
            v36 = v9;
          }

          else
          {
            v36 = v66;
          }

          [v31 _lp_similarityToString:v36];
          v38 = v37;
          [v32 _lp_similarityToString:v66];
          v40 = v39;
          [v32 _lp_similarityToString:v9];
          if (v40 <= v41)
          {
            v42 = v9;
          }

          else
          {
            v42 = v66;
          }

          [v32 _lp_similarityToString:v42];
          if (v38 <= v43)
          {
            v44 = v43;
          }

          else
          {
            v44 = v38;
          }

          if (v44 <= v12)
          {
            v44 = v12;
          }

          else
          {
            if (v38 <= v43)
            {
              v45 = v30;
            }

            else
            {
              v45 = v28;
            }

            v46 = v45;

            v62 = v46;
          }

          v12 = v44;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v67 objects:v71 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    if (v62 && v12 >= 0.6)
    {
      v18 = v62;
      goto LABEL_60;
    }
  }

  else
  {

    v62 = 0;
  }

  v47 = [v66 uppercaseString];
  if ([v47 isEqualToString:v65] & 1) != 0 || (objc_msgSend(v66, "isEqualToString:", v65))
  {
    v18 = 0;
  }

  else
  {
    v49 = [v65 length];
    obj = v47;
    if (v49 < [v66 length])
    {
      goto LABEL_48;
    }

    v18 = [v65 substringToIndex:{objc_msgSend(v66, "length")}];
    v50 = [v18 lowercaseString];
    v51 = [v50 isEqualToString:v66];

    v52 = v51 ? 0 : v18;
    if ((v51 & 1) == 0)
    {
LABEL_48:
      v53 = [v65 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F28DE020];
      v14 = [v53 lowercaseString];

      if ([v14 isEqualToString:v9])
      {
        v48 = 0;
        v18 = v65;
      }

      else
      {
        if (!v60)
        {
          goto LABEL_56;
        }

        v54 = [v65 length];
        if (v54 < [v9 length])
        {
          goto LABEL_56;
        }

        v18 = [v65 substringToIndex:{objc_msgSend(v9, "length")}];
        v55 = [v18 lowercaseString];
        v56 = [v55 isEqualToString:v9];

        v57 = v56 ? 0 : v18;
        if ((v56 & 1) == 0)
        {
LABEL_56:
          v18 = 0;
        }

LABEL_57:
        v48 = v65;
      }

LABEL_58:

      v65 = v48;
      v47 = obj;
    }
  }

LABEL_60:
  v58 = *MEMORY[0x1E69E9840];

  return v18;
}

- (BOOL)_openDatabaseIfNeeded
{
  if (self->_database)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    databaseQueue = self->_databaseQueue;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __47___ASWebsiteNameProvider__openDatabaseIfNeeded__block_invoke;
    v5[3] = &unk_1E7AF82A8;
    v5[4] = self;
    v5[5] = &v6;
    dispatch_sync(databaseQueue, v5);
    v3 = *(v7 + 24);
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (void)setWebsiteNameConsumer:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60___ASWebsiteNameProvider_setWebsiteNameConsumer_completion___block_invoke;
  block[3] = &unk_1E7AF82D0;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)knownWebsiteNameForDomain:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(_ASWebsiteNameDictionary *)self->_websiteNameDictionary websiteNameForDomain:v4];
    if (v5)
    {
      goto LABEL_21;
    }

    v48 = 0;
    v49 = &v48;
    v50 = 0x3032000000;
    v51 = __Block_byref_object_copy__0;
    v52 = __Block_byref_object_dispose__0;
    v53 = 0;
    internalQueueForCachedWebsiteNames = self->_internalQueueForCachedWebsiteNames;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52___ASWebsiteNameProvider_knownWebsiteNameForDomain___block_invoke;
    block[3] = &unk_1E7AF82F8;
    v47 = &v48;
    block[4] = self;
    v7 = v4;
    v46 = v7;
    dispatch_sync(internalQueueForCachedWebsiteNames, block);
    v8 = v49[5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v49[5];
LABEL_20:

      _Block_object_dispose(&v48, 8);
      goto LABEL_21;
    }

    if ([(_ASWebsiteNameProvider *)self _openDatabaseIfNeeded])
    {
      v39 = 0;
      v40 = &v39;
      v41 = 0x3032000000;
      v42 = __Block_byref_object_copy__0;
      v43 = __Block_byref_object_dispose__0;
      v44 = 0;
      databaseQueue = self->_databaseQueue;
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __52___ASWebsiteNameProvider_knownWebsiteNameForDomain___block_invoke_2;
      v36[3] = &unk_1E7AF8320;
      v36[4] = self;
      v11 = v7;
      v37 = v11;
      v38 = &v39;
      dispatch_sync(databaseQueue, v36);
      [(_ASWebsiteNameProvider *)self _cacheDatabaseBackedWebsiteName:v40[5] forDomain:v11];
      v12 = v40[5];
      if (v12)
      {
        v5 = v12;
        v13 = v37;
LABEL_19:

        _Block_object_dispose(&v39, 8);
        goto LABEL_20;
      }

      _Block_object_dispose(&v39, 8);
    }

    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__0;
    v43 = __Block_byref_object_dispose__0;
    v44 = 0;
    v14 = self->_internalQueueForCachedWebsiteNames;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __52___ASWebsiteNameProvider_knownWebsiteNameForDomain___block_invoke_3;
    v33[3] = &unk_1E7AF82F8;
    v35 = &v39;
    v33[4] = self;
    v15 = v7;
    v34 = v15;
    dispatch_sync(v14, v33);
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__0;
    v31 = __Block_byref_object_dispose__0;
    v32 = 0;
    v16 = self->_internalQueueForCachedWebsiteNames;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __52___ASWebsiteNameProvider_knownWebsiteNameForDomain___block_invoke_4;
    v24[3] = &unk_1E7AF82F8;
    v26 = &v27;
    v24[4] = self;
    v17 = v15;
    v25 = v17;
    dispatch_sync(v16, v24);
    if (!v28[5] || [(_ASWebsiteNameProvider *)self _canRefreshDataForDateLastRefreshed:?])
    {
      websiteMetadataStore = self->_websiteMetadataStore;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __52___ASWebsiteNameProvider_knownWebsiteNameForDomain___block_invoke_5;
      v22[3] = &unk_1E7AF8348;
      v22[4] = self;
      v23 = v17;
      [(WBSPasswordManagerWebsiteMetadataStore *)websiteMetadataStore metadataForDomain:v23 completionHandler:v22];
    }

    v19 = v40[5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v40[5];
    }

    else
    {
      v20 = 0;
    }

    v5 = v20;

    _Block_object_dispose(&v27, 8);
    v13 = v34;
    goto LABEL_19;
  }

  v9 = WBS_LOG_CHANNEL_PREFIXWebsiteNameProvider();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [_ASWebsiteNameProvider knownWebsiteNameForDomain:v9];
  }

  v5 = 0;
LABEL_21:

  return v5;
}

- (void)fetchOperation:(id)a3 finishedWithResult:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71___ASWebsiteNameProvider_fetchOperation_finishedWithResult_completion___block_invoke;
  v14[3] = &unk_1E7AF8398;
  v15 = v8;
  v16 = v9;
  v17 = self;
  v18 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

- (void)_processMetadataEntryFetchedFromKeychain:(id)a3 forDomain:(id)a4 allowRefreshingDataFromNetwork:(BOOL)a5
{
  v11 = a3;
  v8 = a4;
  v9 = [v11 websiteName];
  v10 = [v11 websiteNameDateLastRefreshed];
  [(_ASWebsiteNameProvider *)self _cacheFetchedAndKeychainBackedWebsiteName:v9 forDomain:v8 dateLastRefreshed:v10];

  if (isProcessAllowedToFetchWebsiteNames(void)::onceToken != -1)
  {
    [_ASWebsiteNameProvider _processMetadataEntryFetchedFromKeychain:forDomain:allowRefreshingDataFromNetwork:];
  }

  if (isProcessAllowedToFetchWebsiteNames(void)::isProcessAllowedToFetchWebsiteNames == 1 && a5 && [MEMORY[0x1E69C8880] isNetworkFetchingForPasswordsEnabled])
  {
    [(_ASWebsiteNameProvider *)self _fetchDataForDomainIfNeeded:v8 metadataEntry:v11];
  }
}

- (BOOL)_canRefreshDataForDateLastRefreshed:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [MEMORY[0x1E695DF00] now];
  v6 = [v4 dateByAddingUnit:16 value:-7 toDate:v5 options:0];

  if (v3)
  {
    v7 = [v3 safari_isEarlierThanDate:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)_fetchDataForDomainIfNeeded:(id)a3 metadataEntry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 websiteNameDateLastRefreshed];
  v9 = [(_ASWebsiteNameProvider *)self _canRefreshDataForDateLastRefreshed:v8];

  if (v9)
  {
    v10 = [(NSOperationQueue *)self->_websiteFetchingQueue operations];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __68___ASWebsiteNameProvider__fetchDataForDomainIfNeeded_metadataEntry___block_invoke;
    v14[3] = &unk_1E7AF83C0;
    v11 = v6;
    v15 = v11;
    v12 = [v10 safari_containsObjectPassingTest:v14];

    if ((v12 & 1) == 0 && ([v11 safari_looksLikeIPAddress] & 1) == 0)
    {
      v13 = [[_ASWebsiteNameFetchOperation alloc] initWithDomain:v11 metadataEntry:v7 provider:self];
      [(NSOperationQueue *)self->_websiteFetchingQueue addOperation:v13];
    }
  }
}

- (void)_cacheDatabaseBackedWebsiteName:(id)a3 forDomain:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueueForCachedWebsiteNames = self->_internalQueueForCachedWebsiteNames;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68___ASWebsiteNameProvider__cacheDatabaseBackedWebsiteName_forDomain___block_invoke;
  block[3] = &unk_1E7AF83E8;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(internalQueueForCachedWebsiteNames, block);
}

- (void)_cacheFetchedAndKeychainBackedWebsiteName:(id)a3 forDomain:(id)a4 dateLastRefreshed:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  internalQueueForCachedWebsiteNames = self->_internalQueueForCachedWebsiteNames;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __96___ASWebsiteNameProvider__cacheFetchedAndKeychainBackedWebsiteName_forDomain_dateLastRefreshed___block_invoke;
  v15[3] = &unk_1E7AF8410;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(internalQueueForCachedWebsiteNames, v15);
}

+ (uint64_t)_undesirableCharactersCharacterSet
{
  result = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"©®™℠"];
  *a1 = result;
  qword_1EB7761F0 = result;
  _MergedGlobals = 1;
  return result;
}

+ (void)fetchWebsiteNameForDomain:(uint64_t)a1 completionHandler:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138739971;
  v4 = a1;
  _os_log_error_impl(&dword_1B1C8D000, a2, OS_LOG_TYPE_ERROR, "Fetch for %{sensitive}@ intentionally failed due to absence of underlying platform support.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)fetchWebsiteNameForDomain:(uint64_t)a1 completionHandler:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138739971;
  v4 = a1;
  _os_log_debug_impl(&dword_1B1C8D000, a2, OS_LOG_TYPE_DEBUG, "Starting fetch for %{sensitive}@\n", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end