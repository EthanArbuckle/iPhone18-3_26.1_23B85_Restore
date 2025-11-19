@interface _ASPasswordManagerIconController
+ (CGSize)_minimumIconSize;
+ (CGSize)_preferredIconSize;
+ (CGSize)tableViewIconSize;
- (_ASPasswordManagerIconController)initWithAllowNetworkFetchingBlock:(id)a3;
- (_ASPasswordManagerIconController)initWithMetadataManager:(id)a3 allowNetworkFetchingBlock:(id)a4;
- (_ASPasswordManagerIconControllerDelegate)delegate;
- (id)_mobileSafariContainerPath;
- (id)appIconForAppID:(id)a3;
- (id)backgroundColorForDomain:(id)a3;
- (id)cachedIconForDomain:(id)a3 resizedToSize:(CGSize)a4;
- (void)_checkForLocalVisitToDomain:(id)a3 withCompletion:(id)a4;
- (void)_fetchHistory;
- (void)_fetchIconInHistoryWithBlock:(id)a3;
- (void)_fetchTouchIconForDomain:(id)a3 requestID:(id)a4 responseHandler:(id)a5;
- (void)_handleIconFetchFailureWithDomain:(id)a3 options:(unint64_t)a4 requestID:(id)a5 response:(id)a6 responseHandler:(id)a7;
- (void)_iconDidUpdateForDomain:(id)a3;
- (void)_populateDomainToAppIDWithCompletion:(id)a3;
- (void)_privacyProxyStateInitialized;
- (void)_requestTouchIconForDomain:(id)a3 options:(unint64_t)a4 requestID:(id)a5 responseHandler:(id)a6;
- (void)bundleIDForDomain:(id)a3 completionHandler:(id)a4;
- (void)cancelRequest:(id)a3;
- (void)clearIconFetchingState;
- (void)dealloc;
- (void)fetchAppIconForDomain:(id)a3 responseHandler:(id)a4;
- (void)iconForDomain:(id)a3 requestID:(id)a4 responseHandler:(id)a5;
- (void)performMaintenanceWork;
- (void)prepareForApplicationTermination;
@end

@implementation _ASPasswordManagerIconController

- (_ASPasswordManagerIconController)initWithAllowNetworkFetchingBlock:(id)a3
{
  v4 = a3;
  v5 = [(_ASPasswordManagerIconController *)self _mobileSafariContainerPath];
  v6 = [v5 stringByAppendingPathComponent:@"Library/Image Cache"];

  if ([v6 length])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v7 = get_SFSiteMetadataManagerClass_softClass;
    v20 = get_SFSiteMetadataManagerClass_softClass;
    if (!get_SFSiteMetadataManagerClass_softClass)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __get_SFSiteMetadataManagerClass_block_invoke;
      v16[3] = &unk_1E7AF7948;
      v16[4] = &v17;
      __get_SFSiteMetadataManagerClass_block_invoke(v16);
      v7 = v18[3];
    }

    v8 = v7;
    _Block_object_dispose(&v17, 8);
    v9 = [v7 alloc];
    v10 = [MEMORY[0x1E696AAE8] safari_safariInjectedBundleURL];
    v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6 isDirectory:1];
    v12 = [v9 initWithInjectedBundleURL:v10 imageCacheDirectoryURL:v11 cacheIsReadOnly:1 metadataType:4];

    self = [(_ASPasswordManagerIconController *)self initWithMetadataManager:v12 allowNetworkFetchingBlock:v4];
    v13 = self;
  }

  else
  {
    v14 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [_ASPasswordManagerIconController initWithAllowNetworkFetchingBlock:];
    }

    v13 = 0;
  }

  return v13;
}

- (_ASPasswordManagerIconController)initWithMetadataManager:(id)a3 allowNetworkFetchingBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v41.receiver = self;
  v41.super_class = _ASPasswordManagerIconController;
  v9 = [(_ASPasswordManagerIconController *)&v41 init];
  if (v9)
  {
    v47 = 0;
    v48 = &v47;
    v49 = 0x2050000000;
    v10 = getWBSCacheClass_softClass;
    v50 = getWBSCacheClass_softClass;
    if (!getWBSCacheClass_softClass)
    {
      v42 = MEMORY[0x1E69E9820];
      v43 = 3221225472;
      v44 = __getWBSCacheClass_block_invoke;
      v45 = &unk_1E7AF7948;
      v46 = &v47;
      __getWBSCacheClass_block_invoke(&v42);
      v10 = v48[3];
    }

    v11 = v10;
    _Block_object_dispose(&v47, 8);
    v12 = objc_alloc_init(v10);
    iconCache = v9->_iconCache;
    v9->_iconCache = v12;

    v14 = [MEMORY[0x1E695DF90] dictionary];
    domainsToExtractedBackgroundColors = v9->_domainsToExtractedBackgroundColors;
    v9->_domainsToExtractedBackgroundColors = v14;

    v16 = [MEMORY[0x1E695DF90] dictionary];
    activeRequestIDToRequestToken = v9->_activeRequestIDToRequestToken;
    v9->_activeRequestIDToRequestToken = v16;

    v18 = [MEMORY[0x1E695DFA8] set];
    touchIconRequests = v9->_touchIconRequests;
    v9->_touchIconRequests = v18;

    v20 = [MEMORY[0x1E695DFA8] set];
    domainsThatHaveRequestedIcon = v9->_domainsThatHaveRequestedIcon;
    v9->_domainsThatHaveRequestedIcon = v20;

    v22 = MEMORY[0x1E696AEC0];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = [v22 stringWithFormat:@"com.apple.SafariServices.%@.%p", v24, v9];
    v26 = dispatch_queue_create([v25 UTF8String], 0);
    queue = v9->_queue;
    v9->_queue = v26;

    objc_storeStrong(&v9->_metadataManager, a3);
    v28 = _Block_copy(v8);
    allowNetworkFetchingBlock = v9->_allowNetworkFetchingBlock;
    v9->_allowNetworkFetchingBlock = v28;

    v47 = 0;
    v48 = &v47;
    v49 = 0x2050000000;
    v30 = getWBSPrivacyProxyAvailabilityManagerClass_softClass;
    v50 = getWBSPrivacyProxyAvailabilityManagerClass_softClass;
    if (!getWBSPrivacyProxyAvailabilityManagerClass_softClass)
    {
      v42 = MEMORY[0x1E69E9820];
      v43 = 3221225472;
      v44 = __getWBSPrivacyProxyAvailabilityManagerClass_block_invoke;
      v45 = &unk_1E7AF7948;
      v46 = &v47;
      __getWBSPrivacyProxyAvailabilityManagerClass_block_invoke(&v42);
      v30 = v48[3];
    }

    v31 = v30;
    _Block_object_dispose(&v47, 8);
    v32 = objc_alloc_init(v30);
    availabilityManager = v9->_availabilityManager;
    v9->_availabilityManager = v32;

    v34 = getWBSPrivacyProxyChangeNotification();

    if (v34)
    {
      v35 = [MEMORY[0x1E696AD88] defaultCenter];
      v36 = getWBSPrivacyProxyChangeNotification();
      [v35 addObserver:v9 selector:sel__privacyProxyStateInitialized name:v36 object:v9->_availabilityManager];
    }

    v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
    domainToNextIconDownloadRetryDate = v9->_domainToNextIconDownloadRetryDate;
    v9->_domainToNextIconDownloadRetryDate = v37;

    v39 = v9;
  }

  return v9;
}

- (void)_privacyProxyStateInitialized
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = getWBSPrivacyProxyChangeNotification();
  if (v3)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 removeObserver:self name:v3 object:0];
  }

  v5 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    availabilityManager = self->_availabilityManager;
    v7 = v5;
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = [(WBSPrivacyProxyAvailabilityManager *)availabilityManager shouldFetchPasswordManagerWebsiteDataUsingPrivacyProxy];
    _os_log_impl(&dword_1B1C8D000, v7, OS_LOG_TYPE_DEFAULT, "Starting to fetch touch icon; enablePrivateRelay=%{BOOL}d", &buf, 8u);
  }

  objc_initWeak(&buf, self);
  if ([(WBSPrivacyProxyAvailabilityManager *)self->_availabilityManager shouldFetchPasswordManagerWebsiteDataUsingPrivacyProxy])
  {
    self->_canEnableIconDownload = 1;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65___ASPasswordManagerIconController__privacyProxyStateInitialized__block_invoke;
    block[3] = &unk_1E7AF75E0;
    objc_copyWeak(&v13, &buf);
    dispatch_async(queue, block);
    objc_destroyWeak(&v13);
  }

  else
  {
    v9 = self->_queue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65___ASPasswordManagerIconController__privacyProxyStateInitialized__block_invoke_2;
    v11[3] = &unk_1E7AF7608;
    v11[4] = self;
    dispatch_sync(v9, v11);
    [(_ASPasswordManagerIconController *)self _fetchHistory];
  }

  objc_destroyWeak(&buf);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_fetchHistory
{
  v3 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1B1C8D000, v3, OS_LOG_TYPE_DEFAULT, "Starting to fetch history", buf, 2u);
  }

  v4 = [getWBUHistoryClass() existingSharedHistory];
  if (!v4)
  {
    v4 = [objc_alloc(getWBUHistoryClass()) initWithDatabaseID:0];
    [v4 setShouldScheduleMaintenance:0];
    self->_initializedHistory = 1;
  }

  objc_initWeak(buf, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49___ASPasswordManagerIconController__fetchHistory__block_invoke;
  v6[3] = &unk_1E7AF7680;
  v5 = v4;
  v7 = v5;
  v8 = self;
  objc_copyWeak(&v9, buf);
  [v5 performBlockAfterHistoryHasLoaded:v6];
  objc_destroyWeak(&v9);

  objc_destroyWeak(buf);
}

+ (CGSize)tableViewIconSize
{
  [get_SFAccountManagerAppearanceValuesClass() chicletSize];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

+ (CGSize)_preferredIconSize
{
  v2 = 64.0;
  v3 = 64.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)_minimumIconSize
{
  v2 = 48.0;
  v3 = 48.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)clearIconFetchingState
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58___ASPasswordManagerIconController_clearIconFetchingState__block_invoke;
  block[3] = &unk_1E7AF7608;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)cancelRequest:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50___ASPasswordManagerIconController_cancelRequest___block_invoke;
  v7[3] = &unk_1E7AF76A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)iconForDomain:(id)a3 requestID:(id)a4 responseHandler:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![v8 length])
  {
    v10[2](v10, 0);
    goto LABEL_13;
  }

  v11 = [(WBSCache *)self->_iconCache objectForKey:v8];
  v12 = [MEMORY[0x1E695DFB0] null];
  v13 = [v11 isEqual:v12];

  if (v13)
  {
    goto LABEL_8;
  }

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 141558275;
        v23 = 1752392040;
        v24 = 2117;
        v25 = v8;
        _os_log_impl(&dword_1B1C8D000, v14, OS_LOG_TYPE_DEFAULT, "Account icon found in _ASPasswordManagerIconController's in-memory cache; domain=%{sensitive, mask.hash}@", buf, 0x16u);
      }

      (v10)[2](v10, v11);
      goto LABEL_11;
    }

LABEL_8:
    v15 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 141558275;
      v23 = 1752392040;
      v24 = 2117;
      v25 = v8;
      _os_log_impl(&dword_1B1C8D000, v15, OS_LOG_TYPE_DEFAULT, "Icon is nil or not an UIImage; domain=%{sensitive, mask.hash}@", buf, 0x16u);
    }

    v10[2](v10, 0);
    goto LABEL_11;
  }

  queue = self->_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __76___ASPasswordManagerIconController_iconForDomain_requestID_responseHandler___block_invoke;
  v18[3] = &unk_1E7AF76D0;
  v18[4] = self;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  dispatch_async(queue, v18);

LABEL_11:
LABEL_13:

  v16 = *MEMORY[0x1E69E9840];
}

- (id)cachedIconForDomain:(id)a3 resizedToSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = [(WBSCache *)self->_iconCache objectForKey:a3];
  if (v6)
  {
    v7 = [getWBSImageUtilitiesClass() resizedImage:v6 withSize:{width, height}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)backgroundColorForDomain:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61___ASPasswordManagerIconController_backgroundColorForDomain___block_invoke;
  block[3] = &unk_1E7AF76F8;
  v13 = &v14;
  block[4] = self;
  v6 = v4;
  v12 = v6;
  dispatch_sync(queue, block);
  v7 = v15[5];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [get_SFAccountManagerAppearanceValuesClass() defaultMonogramBackgroundColor];
  }

  v9 = v8;

  _Block_object_dispose(&v14, 8);

  return v9;
}

- (void)_iconDidUpdateForDomain:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained iconDidUpdateForDomain:v5 iconController:self];
  }
}

- (id)_mobileSafariContainerPath
{
  if (_mobileSafariContainerPath_onceToken != -1)
  {
    [_ASPasswordManagerIconController _mobileSafariContainerPath];
  }

  v3 = _mobileSafariContainerPath_mobileSafariContainerPath;

  return v3;
}

- (void)dealloc
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = self->_touchIconRequests;
  v4 = self->_domainsThatHaveRequestedIcon;
  v5 = self->_metadataManager;
  if (self->_queue)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      *buf = 134218240;
      v16 = self;
      v17 = 1024;
      v18 = [(NSMutableSet *)v3 count];
      _os_log_impl(&dword_1B1C8D000, v7, OS_LOG_TYPE_DEFAULT, "Deallocating ASPasswordManagerIconController instance %p; cancelling %d pending requests", buf, 0x12u);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43___ASPasswordManagerIconController_dealloc__block_invoke;
    block[3] = &unk_1E7AF7740;
    v12 = v5;
    v13 = v3;
    v14 = v4;
    dispatch_async(queue, block);
  }

  [(_ASPasswordManagerIconController *)self prepareForApplicationTermination];

  v10.receiver = self;
  v10.super_class = _ASPasswordManagerIconController;
  [(_ASPasswordManagerIconController *)&v10 dealloc];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)performMaintenanceWork
{
  v3 = [MEMORY[0x1E696AE30] processInfo];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58___ASPasswordManagerIconController_performMaintenanceWork__block_invoke;
  v4[3] = &unk_1E7AF7768;
  v4[4] = self;
  [v3 performExpiringActivityWithReason:@"Perform maintenance work" usingBlock:v4];
}

- (void)prepareForApplicationTermination
{
  v2 = self->_metadataManager;
  v3 = [MEMORY[0x1E696AE30] processInfo];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68___ASPasswordManagerIconController_prepareForApplicationTermination__block_invoke;
  v5[3] = &unk_1E7AF7768;
  v6 = v2;
  v4 = v2;
  [v3 performExpiringActivityWithReason:@"Save pending changes before termination" usingBlock:v5];
}

- (void)bundleIDForDomain:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72___ASPasswordManagerIconController_bundleIDForDomain_completionHandler___block_invoke;
  block[3] = &unk_1E7AF7790;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)_checkForLocalVisitToDomain:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695E000] pm_defaults];
  v9 = [v8 BOOLForKey:*MEMORY[0x1E69C8B70]];

  if (v9)
  {
    v7[2](v7, 1);
  }

  else
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79___ASPasswordManagerIconController__checkForLocalVisitToDomain_withCompletion___block_invoke;
    block[3] = &unk_1E7AF7790;
    block[4] = self;
    v12 = v6;
    v13 = v7;
    dispatch_async(queue, block);
  }
}

- (void)_fetchTouchIconForDomain:(id)a3 requestID:(id)a4 responseHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ((*(self->_allowNetworkFetchingBlock + 2))())
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __87___ASPasswordManagerIconController__fetchTouchIconForDomain_requestID_responseHandler___block_invoke;
    aBlock[3] = &unk_1E7AF76D0;
    aBlock[4] = self;
    v11 = v8;
    v23 = v11;
    v12 = v9;
    v24 = v12;
    v13 = v10;
    v25 = v13;
    v14 = _Block_copy(aBlock);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87___ASPasswordManagerIconController__fetchTouchIconForDomain_requestID_responseHandler___block_invoke_3;
    block[3] = &unk_1E7AF77E0;
    block[4] = self;
    v18 = v11;
    v19 = v12;
    v20 = v13;
    v21 = v14;
    v16 = v14;
    dispatch_async(queue, block);
  }
}

- (void)_fetchIconInHistoryWithBlock:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (self->_hasLoadedHistory)
  {
    v4[2]();
  }

  else
  {
    blocksAwaitingHistoryItems = self->_blocksAwaitingHistoryItems;
    if (blocksAwaitingHistoryItems)
    {
      v6 = _Block_copy(v4);
      [(NSMutableArray *)blocksAwaitingHistoryItems addObject:v6];
    }

    else
    {
      v7 = MEMORY[0x1E695DF70];
      v8 = _Block_copy(v4);
      v9 = [v7 arrayWithObject:v8];
      v10 = self->_blocksAwaitingHistoryItems;
      self->_blocksAwaitingHistoryItems = v9;
    }
  }
}

- (void)_requestTouchIconForDomain:(id)a3 options:(unint64_t)a4 requestID:(id)a5 responseHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([v10 length])
  {
    if ([v10 safari_looksLikeIPAddress])
    {
      v13 = (a4 & 0xFFFFFFFFFFFFFFF5);
    }

    else
    {
      v13 = a4;
    }

    objc_initWeak(&location, self);
    queue = self->_queue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __97___ASPasswordManagerIconController__requestTouchIconForDomain_options_requestID_responseHandler___block_invoke;
    v15[3] = &unk_1E7AF78A8;
    objc_copyWeak(v19, &location);
    v16 = v10;
    v19[1] = v13;
    v17 = v11;
    v18 = v12;
    dispatch_async(queue, v15);

    objc_destroyWeak(v19);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(v12 + 2))(v12, 0);
  }
}

- (void)_handleIconFetchFailureWithDomain:(id)a3 options:(unint64_t)a4 requestID:(id)a5 response:(id)a6 responseHandler:(id)a7
{
  v10 = a3;
  v11 = a6;
  [(_ASPasswordManagerIconController *)self fetchAppIconForDomain:v10 responseHandler:a7];
  if ([v11 isGenerated])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __113___ASPasswordManagerIconController__handleIconFetchFailureWithDomain_options_requestID_response_responseHandler___block_invoke;
    block[3] = &unk_1E7AF7740;
    block[4] = self;
    v14 = v11;
    v15 = v10;
    dispatch_async(queue, block);
  }
}

- (void)_populateDomainToAppIDWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_domainToAppID)
  {
    v4[2](v4);
  }

  else
  {
    v6 = [v4 copy];

    blocksAwaitingSharedWebCredentialsInformation = self->_blocksAwaitingSharedWebCredentialsInformation;
    if (blocksAwaitingSharedWebCredentialsInformation)
    {
      v8 = _Block_copy(v6);
      [(NSMutableArray *)blocksAwaitingSharedWebCredentialsInformation addObject:v8];
    }

    else
    {
      objc_initWeak(&location, self);
      v9 = objc_alloc(MEMORY[0x1E695DF70]);
      v10 = _Block_copy(v6);
      v11 = [v9 initWithObjects:{v10, 0}];
      v12 = self->_blocksAwaitingSharedWebCredentialsInformation;
      self->_blocksAwaitingSharedWebCredentialsInformation = v11;

      v13 = MEMORY[0x1E69C8E18];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __73___ASPasswordManagerIconController__populateDomainToAppIDWithCompletion___block_invoke;
      v14[3] = &unk_1E7AF78D0;
      objc_copyWeak(&v15, &location);
      [v13 getAllApprovedSharedWebCredentialsEntries:v14];
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    v5 = v6;
  }
}

- (void)fetchAppIconForDomain:(id)a3 responseHandler:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558275;
    v19 = 1752392040;
    v20 = 2117;
    v21 = v6;
    _os_log_impl(&dword_1B1C8D000, v8, OS_LOG_TYPE_DEFAULT, "Fetching app icon; domain=%{sensitive, mask.hash}@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74___ASPasswordManagerIconController_fetchAppIconForDomain_responseHandler___block_invoke;
  block[3] = &unk_1E7AF7920;
  block[4] = self;
  objc_copyWeak(&v16, &location);
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
  v12 = *MEMORY[0x1E69E9840];
}

- (id)appIconForAppID:(id)a3
{
  v3 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:a3];
  v4 = [v3 appState];
  v5 = [v4 isValid];

  if (v5)
  {
    WBSImageUtilitiesClass = getWBSImageUtilitiesClass();
    v7 = iconForApplicationProxy(v3);
    +[_ASPasswordManagerIconController _preferredIconSize];
    v8 = [WBSImageUtilitiesClass resizedImage:v7 withSize:?];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (_ASPasswordManagerIconControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end