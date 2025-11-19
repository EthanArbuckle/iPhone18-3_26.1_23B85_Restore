@interface SFContentBlockerManager
+ (WKContentRuleListStore)contentBlockerStore;
+ (id)_contentBlockerLoaderConnection;
+ (void)_createContentExtensionsDirectoryWithURL:(id)a3;
+ (void)_loadContentBlockerWithIdentifier:(id)a3 completionHandler:(id)a4;
+ (void)getStateOfContentBlockerWithIdentifier:(NSString *)identifier completionHandler:(void *)completionHandler;
+ (void)reloadContentBlockerWithIdentifier:(NSString *)identifier completionHandler:(void *)completionHandler;
- (BOOL)_hasRecompilationBeenAttemptedForExtension:(id)a3;
- (BOOL)_isManagingDefaultProfile;
- (BOOL)extensionIsEnabled:(id)a3;
- (BOOL)hasExtensionWithComposedIdentifier:(id)a3;
- (BOOL)isContentBlockerAllowedInPrivateBrowsing:(id)a3;
- (NSSet)enabledExtensions;
- (NSSet)extensions;
- (NSString)debugDescription;
- (SFContentBlockerManager)init;
- (SFContentBlockerManager)initWithUserContentController:(id)a3 webExtensionsController:(id)a4;
- (SFContentBlockerManagerDelegate)delegate;
- (id)_contentBlockerManagerForDefaultProfile;
- (id)_contentBlockerStateURL;
- (id)_contentBlockerWithComposedIdentifier:(id)a3;
- (id)_contentBlockersWithAdamID:(id)a3;
- (id)_createContentBlockerStateStore;
- (id)_extensionsDataForExportFromContentBlockerStateStore:(id)a3 useContentBlockerWithComposedIdentifier:(BOOL)a4;
- (id)_findNewExtensionsAdded:(id)a3 toExistingExtensions:(id)a4;
- (id)_installationDateForExtension:(id)a3;
- (id)cloudExtensionStateForStateManager:(id)a3;
- (id)displayNameForExtension:(id)a3;
- (id)extensionStateKeysToCopy;
- (id)extensionsDataForExport;
- (unint64_t)recentlyInstalledExtensionCount;
- (void)_applyContentBlockerInPrivateBrowsing:(id)a3;
- (void)_beginContentBlockerDiscovery;
- (void)_commonInit;
- (void)_contentBlockerDiscoveryHasNewResults:(id)a3 error:(id)a4;
- (void)_contentBlockerEnabledStateDidChange:(id)a3;
- (void)_contentBlockerStateInPrivateBrowsingDidChange:(id)a3;
- (void)_didDiscoverExtensions:(id)a3;
- (void)_loadBuiltInContentBlockers;
- (void)_loadContentBlockerRecompilationInformationIfNeeded;
- (void)_loadContentBlockerStateFromDisk;
- (void)_noteRecompilationWasAttemptedForExtension:(id)a3;
- (void)_populateExtensionsIfNecessaryUsingManagerForDefaultProfile;
- (void)_recompileEnabledContentBlockersIfNeeded:(id)a3;
- (void)_removeAllContentRuleLists;
- (void)_removeContentBlockerInPrivateBrowsing:(id)a3;
- (void)_saveContentBlockerRecompilationInformation;
- (void)_updateContentBlockerStateFromDiscoveredContentBlockers:(id)a3;
- (void)addContentRuleList:(id)a3 forExtension:(id)a4;
- (void)addObserver:(id)a3;
- (void)copyEnabledExtensionStateFromContentBlockerManager:(id)a3;
- (void)informObserversThatContentBlockerManagerExtensionListDidChange;
- (void)queryControllerDidUpdate:(id)a3 resultDifference:(id)a4;
- (void)reloadUserContentControllerReadingStateFromDisk:(BOOL)a3;
- (void)setExtension:(id)a3 isEnabled:(BOOL)a4 byUserGesture:(BOOL)a5;
- (void)setExtension:(id)a3 isEnabledInPrivateBrowsing:(BOOL)a4 updateUserContentController:(BOOL)a5;
- (void)setExtensionWithComposedIdentifier:(id)a3 isEnabledInCloud:(BOOL)a4;
@end

@implementation SFContentBlockerManager

- (void)_removeAllContentRuleLists
{
  [(WKUserContentController *)self->_userContentController removeAllContentRuleLists];
  if ([(SFContentBlockerManager *)self _isManagingDefaultProfile])
  {
    v3 = [MEMORY[0x1E6985350] safari_privateBrowsingUserContentController];
    [v3 removeAllContentRuleLists];
  }

  v4 = [MEMORY[0x1E6985350] safari_readerUserContentController];
  [v4 removeAllContentRuleLists];

  v5 = [MEMORY[0x1E6985350] safari_readingListFetcherUserContentController];
  [v5 removeAllContentRuleLists];
}

id __57__SFContentBlockerManager_SFPrivate__contentBlockerStore__block_invoke()
{
  v0 = _SFContentBlockerStoreURL();
  [SFContentBlockerManager _createContentExtensionsDirectoryWithURL:v0];
  v1 = [MEMORY[0x1E6985310] storeWithURL:v0];

  return v1;
}

- (void)_commonInit
{
  v3 = dispatch_queue_create("com.apple.SafariServices.SFContentBlockerManager.internal", 0);
  recompilationInformationAccessQueue = self->_recompilationInformationAccessQueue;
  self->_recompilationInformationAccessQueue = v3;

  [(SFContentBlockerManager *)self _loadContentBlockerStateFromDisk];
  v5 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v5 addObserver:self selector:sel__contentBlockerEnabledStateDidChange_ name:@"com.apple.SafariServices.ContentBlockerEnabledStateDidChange" object:0];

  v6 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v6 addObserver:self selector:sel__contentBlockerStateInPrivateBrowsingDidChange_ name:*MEMORY[0x1E69C9138] object:0];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__SFContentBlockerManager_SFPrivate___commonInit__block_invoke;
  v9[3] = &unk_1E8490438;
  v9[4] = self;
  v7 = [MEMORY[0x1E69C8868] registeredStateCollectorWithLogLabel:@"Safari Extensions State (Content Blockers)" payloadProvider:v9];
  diagnosticStateCollector = self->_diagnosticStateCollector;
  self->_diagnosticStateCollector = v7;

  [(SFContentBlockerManager *)self _beginContentBlockerDiscovery];
}

- (void)_loadContentBlockerStateFromDisk
{
  contentBlockerStateStore = self->_contentBlockerStateStore;
  if (contentBlockerStateStore)
  {
    [(WBSPersistentPropertyListStore *)contentBlockerStateStore saveAndCloseStoreSynchronously];
    v4 = self->_contentBlockerStateStore;
    self->_contentBlockerStateStore = 0;
  }

  v5 = [(SFContentBlockerManager *)self webExtensionsController];
  v6 = [(SFContentBlockerManager *)self _createContentBlockerStateStore];
  v7 = self->_contentBlockerStateStore;
  self->_contentBlockerStateStore = v6;

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__SFContentBlockerManager_SFPrivate___loadContentBlockerStateFromDisk__block_invoke;
  v9[3] = &unk_1E8490438;
  v8 = v5;
  v10 = v8;
  [(WBSPersistentPropertyListStore *)self->_contentBlockerStateStore setCreateEmptyStoreHandler:v9];
}

- (id)_createContentBlockerStateStore
{
  v2 = [(SFContentBlockerManager *)self _contentBlockerStateURL];
  v3 = [objc_alloc(MEMORY[0x1E69C89C8]) initWithBackingStoreURL:v2];

  return v3;
}

- (id)_contentBlockerStateURL
{
  v3 = _SFSafariGroupContainerURL();
  if ([MEMORY[0x1E69C98E0] isProfileServerIDForDefaultProfile:self->_profileServerID])
  {
    v4 = [v3 URLByAppendingPathComponent:@"Library/Safari" isDirectory:1];
  }

  else
  {
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [v5 safari_profileDirectoryURLWithID:self->_profileServerID createIfNeeded:1];

    if (!v6)
    {
      goto LABEL_6;
    }

    v4 = [v6 URLByAppendingPathComponent:@"ContentBlockers" isDirectory:1];
    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [v7 safari_ensureDirectoryExists:v4];
  }

  v6 = [v4 URLByAppendingPathComponent:@"ContentBlockers.plist" isDirectory:0];

LABEL_6:

  return v6;
}

- (void)_beginContentBlockerDiscovery
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (!self->_extensionKitQueryController)
  {
    if ([(SFContentBlockerManager *)self _supportsExtensionDiscovery])
    {
      v3 = [objc_alloc(MEMORY[0x1E6966CE0]) initWithExtensionPointIdentifier:@"com.apple.Safari.content-blocker"];
      [v3 setExcludeLockedApps:1];
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.SafariServices.SFContentBlockerManager.%@.%p.discoveryQueue", objc_opt_class(), self];
      v5 = [v4 UTF8String];
      v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v7 = dispatch_queue_create(v5, v6);
      discoveryNotificationQueue = self->_discoveryNotificationQueue;
      self->_discoveryNotificationQueue = v7;

      dispatch_suspend(self->_discoveryNotificationQueue);
      v9 = objc_alloc(MEMORY[0x1E6966CF8]);
      v17[0] = v3;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
      v11 = [v9 initWithQueries:v10 delegate:self];
      extensionKitQueryController = self->_extensionKitQueryController;
      self->_extensionKitQueryController = v11;

      objc_initWeak(&location, self);
      v13 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67__SFContentBlockerManager_SFPrivate___beginContentBlockerDiscovery__block_invoke;
      block[3] = &unk_1E84905C0;
      objc_copyWeak(&v15, &location);
      dispatch_async(v13, block);

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    else
    {

      [(SFContentBlockerManager *)self _populateExtensionsIfNecessaryUsingManagerForDefaultProfile];
    }
  }
}

- (BOOL)_isManagingDefaultProfile
{
  v2 = MEMORY[0x1E69C98E0];
  v3 = [(WBSWebExtensionsController *)self->_webExtensionsController profileServerID];
  LOBYTE(v2) = [v2 isProfileServerIDForDefaultProfile:v3];

  return v2;
}

void __67__SFContentBlockerManager_SFPrivate___beginContentBlockerDiscovery__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[12] resume];
    dispatch_resume(v2[13]);
    WeakRetained = v2;
  }
}

+ (WKContentRuleListStore)contentBlockerStore
{
  {
    +[SFContentBlockerManager(SFPrivate) contentBlockerStore]::contentBlockerStore = __57__SFContentBlockerManager_SFPrivate__contentBlockerStore__block_invoke();
  }

  v2 = +[SFContentBlockerManager(SFPrivate) contentBlockerStore]::contentBlockerStore;

  return v2;
}

- (void)_loadBuiltInContentBlockers
{
  v2 = [objc_opt_class() contentBlockerStore];
  WBSLoadBuiltInContentBlockersWithStore();
}

- (SFContentBlockerManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_loadContentBlockerRecompilationInformationIfNeeded
{
  recompilationInformationAccessQueue = self->_recompilationInformationAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__SFContentBlockerManager_SFPrivate___loadContentBlockerRecompilationInformationIfNeeded__block_invoke;
  block[3] = &unk_1E8490658;
  block[4] = self;
  dispatch_async(recompilationInformationAccessQueue, block);
}

void __89__SFContentBlockerManager_SFPrivate___loadContentBlockerRecompilationInformationIfNeeded__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 32))
  {
    v2 = pathToRecompilationInformation();

    if (v2)
    {
      v3 = MEMORY[0x1E695DEF0];
      v4 = pathToRecompilationInformation();
      v5 = [v3 dataWithContentsOfURL:v4];

      if (v5)
      {
        v18 = 0;
        v19 = 200;
        v6 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:0 format:&v19 error:&v18];
        v7 = v18;
        if (v7)
        {
          v8 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v9 = [v7 safari_privacyPreservingDescription];
            __89__SFContentBlockerManager_SFPrivate___loadContentBlockerRecompilationInformationIfNeeded__block_invoke_cold_1(v9, buf, v8);
          }

          v10 = [MEMORY[0x1E695DF90] dictionary];
        }

        else
        {
          v15 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v21 = v6;
            _os_log_impl(&dword_1D4644000, v15, OS_LOG_TYPE_INFO, "Found recompilation information: %{public}@", buf, 0xCu);
          }

          v10 = [v6 mutableCopy];
        }

        v16 = *(a1 + 32);
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      else
      {
        v12 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1D4644000, v12, OS_LOG_TYPE_INFO, "Did not find any information on previously recompiled Content Blockers", buf, 2u);
        }

        v13 = [MEMORY[0x1E695DF90] dictionary];
        v14 = *(a1 + 32);
        v7 = *(v14 + 32);
        *(v14 + 32) = v13;
      }
    }

    else
    {
      v11 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1D4644000, v11, OS_LOG_TYPE_INFO, "Did not find path to recompilation information", buf, 2u);
      }
    }
  }
}

- (void)informObserversThatContentBlockerManagerExtensionListDidChange
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableSet *)self->_observers copy];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v8 + 1) + 8 * v7++) contentBlockerManagerExtensionListDidChange:{self, v8}];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void __65__SFContentBlockerManager_SFPrivate___loadBuiltInContentBlockers__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [MEMORY[0x1E6985350] safari_privateBrowsingUserContentController];
    [v3 addContentRuleList:v4];

    [*(*(a1 + 32) + 72) addContentRuleList:v4];
  }
}

- (NSSet)extensions
{
  if (self->_lastExtensionDiscoveryHadError)
  {
    extensionKitQueryController = self->_extensionKitQueryController;
    self->_extensionKitQueryController = 0;

    [(SFContentBlockerManager *)self _beginContentBlockerDiscovery];
  }

  extensions = self->_extensions;

  return extensions;
}

+ (id)_contentBlockerLoaderConnection
{
  if (+[SFContentBlockerManager _contentBlockerLoaderConnection]::connection)
  {
    v2 = +[SFContentBlockerManager _contentBlockerLoaderConnection]::connection;
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.SafariServices.ContentBlockerLoader"];
    v4 = +[SFContentBlockerManager _contentBlockerLoaderConnection]::connection;
    +[SFContentBlockerManager _contentBlockerLoaderConnection]::connection = v3;

    [+[SFContentBlockerManager _contentBlockerLoaderConnection]::connection setInvalidationHandler:&__block_literal_global_6];
    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F50FE6E8];
    [+[SFContentBlockerManager _contentBlockerLoaderConnection]::connection setRemoteObjectInterface:v5];
    [+[SFContentBlockerManager _contentBlockerLoaderConnection]::connection resume];
    v2 = +[SFContentBlockerManager _contentBlockerLoaderConnection]::connection;
  }

  return v2;
}

void __58__SFContentBlockerManager__contentBlockerLoaderConnection__block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1D4644000, v0, OS_LOG_TYPE_DEFAULT, "XPC connection for 'com.apple.SafariServices.ContentBlockerLoader' was invalidated", v2, 2u);
  }

  v1 = +[SFContentBlockerManager _contentBlockerLoaderConnection]::connection;
  +[SFContentBlockerManager _contentBlockerLoaderConnection]::connection = 0;
}

+ (void)_loadContentBlockerWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() _contentBlockerLoaderConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__SFContentBlockerManager__loadContentBlockerWithIdentifier_completionHandler___block_invoke;
  v13[3] = &unk_1E84903E8;
  v8 = v6;
  v14 = v8;
  v9 = [v7 remoteObjectProxyWithErrorHandler:v13];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__SFContentBlockerManager__loadContentBlockerWithIdentifier_completionHandler___block_invoke_2;
  v11[3] = &unk_1E84903E8;
  v10 = v8;
  v12 = v10;
  [v9 loadContentBlockerWithIdentifier:v5 reply:v11];
}

void __79__SFContentBlockerManager__loadContentBlockerWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void __79__SFContentBlockerManager__loadContentBlockerWithIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v5);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.SafariServices.ContentBlockerDidChange", 0, 0, 0);
}

+ (void)reloadContentBlockerWithIdentifier:(NSString *)identifier completionHandler:(void *)completionHandler
{
  v6 = identifier;
  v7 = completionHandler;
  v8 = v7;
  if (v6)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __80__SFContentBlockerManager_reloadContentBlockerWithIdentifier_completionHandler___block_invoke;
    v18[3] = &unk_1E84903E8;
    v19 = v7;
    [a1 _loadContentBlockerWithIdentifier:v6 completionHandler:v18];
    v9 = v19;
LABEL_6:

    goto LABEL_7;
  }

  v10 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [(SFContentBlockerManager *)v10 reloadContentBlockerWithIdentifier:v11 completionHandler:v12, v13, v14, v15, v16, v17];
    if (!v8)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v8)
  {
LABEL_5:
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SFErrorDomain" code:1 userInfo:0];
    (v8)[2](v8, v9);
    goto LABEL_6;
  }

LABEL_7:
}

void __80__SFContentBlockerManager_reloadContentBlockerWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

+ (void)getStateOfContentBlockerWithIdentifier:(NSString *)identifier completionHandler:(void *)completionHandler
{
  v6 = identifier;
  v7 = completionHandler;
  if (v7)
  {
    if ([(NSString *)v6 length])
    {
      v8 = [a1 _contentBlockerLoaderConnection];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __84__SFContentBlockerManager_getStateOfContentBlockerWithIdentifier_completionHandler___block_invoke;
      v20[3] = &unk_1E84903E8;
      v9 = v7;
      v21 = v9;
      v10 = [v8 remoteObjectProxyWithErrorHandler:v20];

      [v10 getStateOfContentBlockerWithIdentifier:v6 reply:v9];
      v11 = v21;
    }

    else
    {
      v12 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(SFContentBlockerManager *)v12 getStateOfContentBlockerWithIdentifier:v13 completionHandler:v14, v15, v16, v17, v18, v19];
      }

      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SFErrorDomain" code:1 userInfo:0];
      (*(v7 + 2))(v7, 0, v11);
    }
  }
}

- (SFContentBlockerManager)initWithUserContentController:(id)a3 webExtensionsController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = SFContentBlockerManager;
  v9 = [(SFContentBlockerManager *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userContentController, a3);
    v11 = [v8 profileServerID];
    profileServerID = v10->_profileServerID;
    v10->_profileServerID = v11;

    objc_storeStrong(&v10->_webExtensionsController, a4);
    [(SFContentBlockerManager *)v10 _commonInit];
    v13 = v10;
  }

  return v10;
}

- (SFContentBlockerManager)init
{
  v7.receiver = self;
  v7.super_class = SFContentBlockerManager;
  v2 = [(SFContentBlockerManager *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E6985350] safari_userContentController];
    userContentController = v2->_userContentController;
    v2->_userContentController = v3;

    [(SFContentBlockerManager *)v2 _commonInit];
    v5 = v2;
  }

  return v2;
}

id __49__SFContentBlockerManager_SFPrivate___commonInit__block_invoke(uint64_t a1)
{
  v22[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 64) == 1)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D4644000, v3, OS_LOG_TYPE_INFO, "Loading content blocker state from disk since it was changed by another process", buf, 2u);
    }

    [*(a1 + 32) _loadContentBlockerStateFromDisk];
    *(*(a1 + 32) + 64) = 0;
    v2 = *(a1 + 32);
  }

  v4 = [*(v2 + 56) allKeys];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __49__SFContentBlockerManager_SFPrivate___commonInit__block_invoke_133;
  v19[3] = &unk_1E8490410;
  v19[4] = *(a1 + 32);
  v5 = [v4 safari_mapAndFilterObjectsUsingBlock:v19];

  v6 = *(*(a1 + 32) + 120);
  if (!v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXExtensions();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __49__SFContentBlockerManager_SFPrivate___commonInit__block_invoke_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    v6 = @"Unknown";
  }

  v15 = *MEMORY[0x1E69C9290];
  v21[0] = *MEMORY[0x1E69C9298];
  v21[1] = v15;
  v16 = MEMORY[0x1E695E0F0];
  if (v5)
  {
    v16 = v5;
  }

  v22[0] = v6;
  v22[1] = v16;
  v21[2] = *MEMORY[0x1E69C92A0];
  v22[2] = @"Content Blockers";
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];

  return v17;
}

id __49__SFContentBlockerManager_SFPrivate___commonInit__block_invoke_133(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 56) objectForKey:v3];
  v5 = [v4 safari_BOOLForKey:*MEMORY[0x1E69C95F0]];
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  if (!v5)
  {
    v3 = 0;
  }

  return v3;
}

id __70__SFContentBlockerManager_SFPrivate___loadContentBlockerStateFromDisk__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v16 = [objc_alloc(MEMORY[0x1E6966CE0]) initWithExtensionPointIdentifier:@"com.apple.Safari.content-blocker"];
  [v16 setExcludeLockedApps:1];
  v17 = [MEMORY[0x1E6966CF8] executeQuery:v16];
  v18 = [v17 safari_mapObjectsUsingBlock:&__block_literal_global_149];
  v22 = [MEMORY[0x1E695DF90] dictionary];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v18;
  v1 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v1)
  {
    v20 = *v24;
    v2 = *MEMORY[0x1E69C95F0];
    v3 = *MEMORY[0x1E69C9610];
    v4 = *MEMORY[0x1E69C95E8];
    do
    {
      for (i = 0; i != v1; ++i)
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v23 + 1) + 8 * i);
        v7 = [*(a1 + 32) composedIdentifierForExtensionStateForExtension:v6];
        v8 = [v6 _plugIn];
        v9 = [v8 userElection] & 0xFFFFFFFFFFFF00FFLL;

        v27[0] = v2;
        v10 = [MEMORY[0x1E696AD98] numberWithBool:v9 == 1];
        v28[0] = v10;
        v27[1] = v3;
        v11 = [MEMORY[0x1E695DF00] now];
        v12 = v11;
        v27[2] = v4;
        v13 = MEMORY[0x1E695E110];
        if (v9 == 1)
        {
          v13 = MEMORY[0x1E695E118];
        }

        v28[1] = v11;
        v28[2] = v13;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];
        [v22 setObject:v14 forKeyedSubscript:v7];
      }

      v1 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v1);
  }

  return v22;
}

id __70__SFContentBlockerManager_SFPrivate___loadContentBlockerStateFromDisk__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696ABD0] extensionWithIdentity:a2 error:0];

  return v2;
}

- (void)addContentRuleList:(id)a3 forExtension:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v7 identifier];
    v15 = 138477827;
    v16 = v9;
    _os_log_impl(&dword_1D4644000, v8, OS_LOG_TYPE_INFO, "Adding content blocker rules from %{private}@", &v15, 0xCu);
  }

  [(WKUserContentController *)self->_userContentController addContentRuleList:v6];
  if ([(SFContentBlockerManager *)self isContentBlockerAllowedInPrivateBrowsing:v7]&& [(SFContentBlockerManager *)self _isManagingDefaultProfile])
  {
    v10 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v7 identifier];
      v15 = 138477827;
      v16 = v11;
      _os_log_impl(&dword_1D4644000, v10, OS_LOG_TYPE_INFO, "Adding content blocker rules from %{private}@ in private browsing", &v15, 0xCu);
    }

    v12 = [MEMORY[0x1E6985350] safari_privateBrowsingUserContentController];
    [v12 addContentRuleList:v6];
  }

  v13 = [MEMORY[0x1E6985350] safari_readerUserContentController];
  [v13 addContentRuleList:v6];

  v14 = [MEMORY[0x1E6985350] safari_readingListFetcherUserContentController];
  [v14 addContentRuleList:v6];
}

- (void)reloadUserContentControllerReadingStateFromDisk:(BOOL)a3
{
  v3 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1D4644000, v5, OS_LOG_TYPE_INFO, "Reloading content blockers in SFContentBlockerManager reloadUserContentControllerReadingStateFromDisk", buf, 2u);
  }

  [(SFContentBlockerManager *)self _removeAllContentRuleLists];
  if (v3)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D4644000, v6, OS_LOG_TYPE_INFO, "Reload requested from notification, reloading content blocker state from disk", buf, 2u);
    }

    [(SFContentBlockerManager *)self _loadContentBlockerStateFromDisk];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__SFContentBlockerManager_SFPrivate__reloadUserContentControllerReadingStateFromDisk___block_invoke;
  aBlock[3] = &unk_1E84904D0;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  v8 = [objc_alloc(MEMORY[0x1E6966CE0]) initWithExtensionPointIdentifier:@"com.apple.Safari.content-blocker"];
  [v8 setExcludeLockedApps:1];
  v9 = MEMORY[0x1E6966CF8];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __86__SFContentBlockerManager_SFPrivate__reloadUserContentControllerReadingStateFromDisk___block_invoke_167;
  v14 = &unk_1E8490520;
  v10 = v7;
  v15 = v10;
  [v9 executeQuery:v8 completionHandler:&v11];
  [(SFContentBlockerManager *)self _loadBuiltInContentBlockers:v11];
}

void __86__SFContentBlockerManager_SFPrivate__reloadUserContentControllerReadingStateFromDisk___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        if ([*(a1 + 32) extensionIsEnabled:v7])
        {
          v8 = [v7 identifier];
          v9 = [objc_opt_class() contentBlockerStore];
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __86__SFContentBlockerManager_SFPrivate__reloadUserContentControllerReadingStateFromDisk___block_invoke_2;
          v12[3] = &unk_1E84904A8;
          v10 = v8;
          v11 = *(a1 + 32);
          v13 = v10;
          v14 = v11;
          v15 = v7;
          [v9 lookUpContentRuleListForIdentifier:v10 completionHandler:v12];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }
}

void __86__SFContentBlockerManager_SFPrivate__reloadUserContentControllerReadingStateFromDisk___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    [*(a1 + 40) addContentRuleList:v5 forExtension:*(a1 + 48)];
  }

  else if ([v6 safari_matchesErrorDomain:*MEMORY[0x1E6985438] andCode:9])
  {
    v8 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138477827;
      v16 = v9;
      _os_log_impl(&dword_1D4644000, v8, OS_LOG_TYPE_DEFAULT, "Content Blocker '%{private}@' is compiled with old version of bytecode; recompiling blocker", buf, 0xCu);
    }

    v10 = [objc_opt_class() contentBlockerStore];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __86__SFContentBlockerManager_SFPrivate__reloadUserContentControllerReadingStateFromDisk___block_invoke_164;
    v13[3] = &unk_1E8490480;
    v12 = *(a1 + 32);
    v14 = vextq_s8(v12, v12, 8uLL);
    [v10 removeContentRuleListForIdentifier:v12.i64[0] completionHandler:v13];
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [v7 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __86__SFContentBlockerManager_SFPrivate__reloadUserContentControllerReadingStateFromDisk___block_invoke_2_cold_1();
    }
  }
}

void __86__SFContentBlockerManager_SFPrivate__reloadUserContentControllerReadingStateFromDisk___block_invoke_164(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    [objc_opt_class() _loadContentBlockerWithIdentifier:*(a1 + 40) completionHandler:0];
    v3 = 0;
  }
}

void __86__SFContentBlockerManager_SFPrivate__reloadUserContentControllerReadingStateFromDisk___block_invoke_167(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 safari_mapObjectsUsingBlock:&__block_literal_global_170];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__SFContentBlockerManager_SFPrivate__reloadUserContentControllerReadingStateFromDisk___block_invoke_3;
  v7[3] = &unk_1E84904F8;
  v5 = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

id __86__SFContentBlockerManager_SFPrivate__reloadUserContentControllerReadingStateFromDisk___block_invoke_2_168(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696ABD0] extensionWithIdentity:a2 error:0];

  return v2;
}

- (void)_applyContentBlockerInPrivateBrowsing:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() contentBlockerStore];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__SFContentBlockerManager_SFPrivate___applyContentBlockerInPrivateBrowsing___block_invoke;
  v6[3] = &unk_1E8490570;
  v5 = v3;
  v7 = v5;
  [v4 lookUpContentRuleListForIdentifier:v5 completionHandler:v6];
}

void __76__SFContentBlockerManager_SFPrivate___applyContentBlockerInPrivateBrowsing___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4)
  {
    v6 = [MEMORY[0x1E6985350] safari_privateBrowsingUserContentController];
    [v6 addContentRuleList:v4];
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v5 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __86__SFContentBlockerManager_SFPrivate__reloadUserContentControllerReadingStateFromDisk___block_invoke_2_cold_1();
    }
  }
}

- (void)_removeContentBlockerInPrivateBrowsing:(id)a3
{
  v4 = a3;
  v3 = [MEMORY[0x1E6985350] safari_privateBrowsingUserContentController];
  [v3 _removeUserContentFilter:v4];
}

+ (void)_createContentExtensionsDirectoryWithURL:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  [v4 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:0];

  v5 = *MEMORY[0x1E695DB80];
  v10 = 0;
  v6 = [v3 setResourceValue:MEMORY[0x1E695E118] forKey:v5 error:&v10];
  v7 = v10;
  if ((v6 & 1) == 0)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v7 safari_privacyPreservingDescription];
      [(SFContentBlockerManager(SFPrivate) *)v9 _createContentExtensionsDirectoryWithURL:v11, v8];
    }
  }
}

- (NSSet)enabledExtensions
{
  extensions = self->_extensions;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__SFContentBlockerManager_SFPrivate__enabledExtensions__block_invoke;
  v5[3] = &unk_1E8490598;
  v5[4] = self;
  v3 = [(NSSet *)extensions safari_mapAndFilterObjectsUsingBlock:v5];

  return v3;
}

void *__55__SFContentBlockerManager_SFPrivate__enabledExtensions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) extensionIsEnabled:v3])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    v7 = self->_observers;
    self->_observers = v6;

    observers = self->_observers;
    v4 = v8;
  }

  [(NSMutableSet *)observers addObject:v4];
}

- (void)queryControllerDidUpdate:(id)a3 resultDifference:(id)a4
{
  v5 = a3;
  discoveryNotificationQueue = self->_discoveryNotificationQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__SFContentBlockerManager_SFPrivate__queryControllerDidUpdate_resultDifference___block_invoke;
  v8[3] = &unk_1E848F9B0;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(discoveryNotificationQueue, v8);
}

void __80__SFContentBlockerManager_SFPrivate__queryControllerDidUpdate_resultDifference___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) extensionIdentities];
  v3 = [v2 safari_mapObjectsUsingBlock:&__block_literal_global_185];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __80__SFContentBlockerManager_SFPrivate__queryControllerDidUpdate_resultDifference___block_invoke_3;
  v5[3] = &unk_1E848F9B0;
  v5[4] = *(a1 + 40);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

id __80__SFContentBlockerManager_SFPrivate__queryControllerDidUpdate_resultDifference___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696ABD0] extensionWithIdentity:a2 error:0];

  return v2;
}

- (void)_contentBlockerDiscoveryHasNewResults:(id)a3 error:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v13 = v6;
    _os_log_impl(&dword_1D4644000, v8, OS_LOG_TYPE_INFO, "Discovered content blockers: %{private}@", buf, 0xCu);
  }

  self->_lastExtensionDiscoveryHadError = v7 != 0;
  v9 = [(SFContentBlockerManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __82__SFContentBlockerManager_SFPrivate___contentBlockerDiscoveryHasNewResults_error___block_invoke;
    v10[3] = &unk_1E84905E8;
    v11 = v6;
    [v9 enumerateContentBlockerManagersUsingBlock:v10];
  }

  else
  {
    [(SFContentBlockerManager *)self _didDiscoverExtensions:v6];
  }
}

- (id)_contentBlockerManagerForDefaultProfile
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__SFContentBlockerManager_SFPrivate___contentBlockerManagerForDefaultProfile__block_invoke;
  v5[3] = &unk_1E8490610;
  v5[4] = &v6;
  [WeakRetained enumerateContentBlockerManagersUsingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __77__SFContentBlockerManager_SFPrivate___contentBlockerManagerForDefaultProfile__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v7 = MEMORY[0x1E69C98E0];
  v9 = v6;
  v8 = [v6 profileServerID];
  LODWORD(v7) = [v7 isProfileServerIDForDefaultProfile:v8];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (void)_populateExtensionsIfNecessaryUsingManagerForDefaultProfile
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __97__SFContentBlockerManager_SFPrivate___populateExtensionsIfNecessaryUsingManagerForDefaultProfile__block_invoke;
  v2[3] = &unk_1E84905C0;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __97__SFContentBlockerManager_SFPrivate___populateExtensionsIfNecessaryUsingManagerForDefaultProfile__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[112] & 1) == 0)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained _contentBlockerManagerForDefaultProfile];
    if ([v2 hasPopulatedExtensionsFromExtensionDiscoveryAtLeastOnce])
    {
      v3 = [v2 extensions];
      v4 = [v3 safari_arrayByMappingObjectsUsingBlock:&__block_literal_global_190];

      [v5 _didDiscoverExtensions:v4];
    }

    WeakRetained = v5;
  }
}

- (void)_didDiscoverExtensions:(id)a3
{
  v6 = a3;
  v4 = [SFContentBlockerManager _findNewExtensionsAdded:"_findNewExtensionsAdded:toExistingExtensions:" toExistingExtensions:?];
  [(SFContentBlockerManager *)self _recompileEnabledContentBlockersIfNeeded:v4];

  v5 = [MEMORY[0x1E695DFD8] setWithArray:v6];
  [(SFContentBlockerManager *)self _updateContentBlockerStateFromDiscoveredContentBlockers:v5];
  objc_storeStrong(&self->_extensions, v5);
  self->_hasPopulatedExtensionsFromExtensionDiscoveryAtLeastOnce = 1;
  [(SFContentBlockerManager *)self informObserversThatContentBlockerManagerExtensionListDidChange];
}

- (void)_contentBlockerEnabledStateDidChange:(id)a3
{
  v4 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D4644000, v4, OS_LOG_TYPE_INFO, "In _contentBlockerEnabledStateDidChange, indicating state reload was requested", v5, 2u);
  }

  self->_contentBlockerStateStoreRequiresReload = 1;
}

- (void)_contentBlockerStateInPrivateBrowsingDidChange:(id)a3
{
  v8 = a3;
  v4 = [v8 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C9140]];

  v6 = [v8 userInfo];
  v7 = [v6 safari_BOOLForKey:*MEMORY[0x1E69C9218]];

  if (v7)
  {
    [(SFContentBlockerManager *)self _applyContentBlockerInPrivateBrowsing:v5];
  }

  else
  {
    [(SFContentBlockerManager *)self _removeContentBlockerInPrivateBrowsing:v5];
  }
}

- (id)_findNewExtensionsAdded:(id)a3 toExistingExtensions:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (([v6 containsObject:{v12, v14}] & 1) == 0)
        {
          [v7 addObject:v12];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v7;
}

- (void)_saveContentBlockerRecompilationInformation
{
  v11 = *MEMORY[0x1E69E9840];
  if ([(NSMutableDictionary *)self->_extensionsRecompiledAfterBackup count])
  {
    extensionsRecompiledAfterBackup = self->_extensionsRecompiledAfterBackup;
    v9 = 0;
    v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:extensionsRecompiledAfterBackup format:200 options:0 error:&v9];
    v5 = v9;
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4 == 0;
    }

    if (v6)
    {
      v8 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v7 = [v5 safari_privacyPreservingDescription];
        [(SFContentBlockerManager(SFPrivate) *)v7 _saveContentBlockerRecompilationInformation];
      }
    }

    else
    {
      v8 = pathToRecompilationInformation();
      [v4 writeToURL:v8 atomically:1];
    }
  }
}

- (BOOL)_hasRecompilationBeenAttemptedForExtension:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  recompilationInformationAccessQueue = self->_recompilationInformationAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__SFContentBlockerManager_SFPrivate___hasRecompilationBeenAttemptedForExtension___block_invoke;
  block[3] = &unk_1E8490680;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(recompilationInformationAccessQueue, block);
  LOBYTE(recompilationInformationAccessQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return recompilationInformationAccessQueue;
}

void __81__SFContentBlockerManager_SFPrivate___hasRecompilationBeenAttemptedForExtension___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [*(a1 + 40) identifier];
  *(*(*(a1 + 48) + 8) + 24) = [v2 safari_BOOLForKey:?];
}

- (void)_noteRecompilationWasAttemptedForExtension:(id)a3
{
  v4 = a3;
  recompilationInformationAccessQueue = self->_recompilationInformationAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__SFContentBlockerManager_SFPrivate___noteRecompilationWasAttemptedForExtension___block_invoke;
  v7[3] = &unk_1E848F9B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(recompilationInformationAccessQueue, v7);
}

uint64_t __81__SFContentBlockerManager_SFPrivate___noteRecompilationWasAttemptedForExtension___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [*(a1 + 40) identifier];
  [v2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v3];

  v4 = *(a1 + 32);

  return [v4 _saveContentBlockerRecompilationInformation];
}

- (void)_recompileEnabledContentBlockersIfNeeded:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v15 = a3;
  [(SFContentBlockerManager *)self _loadContentBlockerRecompilationInformationIfNeeded];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = v15;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v5)
  {
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [v8 identifier];
        if ([(SFContentBlockerManager *)self _hasRecompilationBeenAttemptedForExtension:v8])
        {
          v10 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
          if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            goto LABEL_14;
          }

          *buf = 138543362;
          v25 = v9;
          v11 = v10;
          v12 = "Already attempted to re-compile Content Blocker '%{public}@' once, no need to re-compile";
          goto LABEL_13;
        }

        if ([(SFContentBlockerManager *)self extensionIsEnabled:v8])
        {
          v13 = [objc_opt_class() contentBlockerStore];
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __79__SFContentBlockerManager_SFPrivate___recompileEnabledContentBlockersIfNeeded___block_invoke;
          v16[3] = &unk_1E84904A8;
          v17 = v9;
          v18 = self;
          v19 = v8;
          [v13 lookUpContentRuleListForIdentifier:v17 completionHandler:v16];

          goto LABEL_14;
        }

        v14 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v25 = v9;
          v11 = v14;
          v12 = "Content Blocker '%{public}@' was disabled, no need to re-compile";
LABEL_13:
          _os_log_impl(&dword_1D4644000, v11, OS_LOG_TYPE_INFO, v12, buf, 0xCu);
        }

LABEL_14:
      }

      v5 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v5);
  }
}

void __79__SFContentBlockerManager_SFPrivate___recompileEnabledContentBlockersIfNeeded___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = [v6 safari_privacyPreservingDescription];
      *buf = 138543618;
      v16 = v8;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&dword_1D4644000, v7, OS_LOG_TYPE_INFO, "Re-compiling Content Blocker '%{public}@' because it was not found due to lookup error: %{public}@", buf, 0x16u);
    }

    v10 = objc_opt_class();
    v11 = *(a1 + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __79__SFContentBlockerManager_SFPrivate___recompileEnabledContentBlockersIfNeeded___block_invoke_195;
    v12[3] = &unk_1E84906A8;
    v13 = *(a1 + 40);
    v14 = v11;
    [v10 _loadContentBlockerWithIdentifier:v14 completionHandler:v12];
  }
}

void __79__SFContentBlockerManager_SFPrivate___recompileEnabledContentBlockersIfNeeded___block_invoke_195(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) _noteRecompilationWasAttemptedForExtension:*(a1 + 40)];
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [v3 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __79__SFContentBlockerManager_SFPrivate___recompileEnabledContentBlockersIfNeeded___block_invoke_195_cold_1();
    }
  }

  else
  {
    v5 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 48);
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_1D4644000, v5, OS_LOG_TYPE_INFO, "Successfully loaded enabled Content Blocker '%{public}@'", &v7, 0xCu);
    }
  }
}

- (void)_updateContentBlockerStateFromDiscoveredContentBlockers:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v34 = a3;
  if (!v34)
  {
    goto LABEL_42;
  }

  v40 = [(SFContentBlockerManager *)self webExtensionsController];
  v42 = [MEMORY[0x1E695DF90] dictionary];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v34;
  v4 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v4)
  {
    v41 = 0;
    v38 = *v48;
    v5 = *MEMORY[0x1E69C9280];
    v6 = *MEMORY[0x1E69C9288];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v48 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v47 + 1) + 8 * i);
        v9 = [v40 composedIdentifierForExtensionStateForExtension:v8];
        [v42 setObject:v8 forKeyedSubscript:v9];
        v10 = [(WBSPersistentPropertyListStore *)self->_contentBlockerStateStore dictionaryForKey:v9];
        if (!v10)
        {
          v11 = [MEMORY[0x1E69C9778] sharedManager];
          v12 = [v11 isExtensionEnabledInCloudWithComposedIdentifier:v9 forProfileServerID:self->_profileServerID];

          if (v12)
          {
            v13 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = 138477827;
              v55 = v9;
              _os_log_impl(&dword_1D4644000, v13, OS_LOG_TYPE_INFO, "Automatically enabling content blocker %{private}@ due to cloud state", buf, 0xCu);
            }

            [(SFContentBlockerManager *)self setExtension:v8 isEnabled:1 byUserGesture:0];
          }
        }

        v14 = [v10 safari_dateForKey:v5];
        if (!v14)
        {
          v15 = [v10 mutableCopy];
          if (!v15)
          {
            v15 = [MEMORY[0x1E695DF90] dictionary];
          }

          v16 = [MEMORY[0x1E695DF00] now];
          [v15 setObject:v16 forKeyedSubscript:v5];

          [(WBSPersistentPropertyListStore *)self->_contentBlockerStateStore setObject:v15 forKey:v9];
          v41 = 1;
        }

        v17 = [v10 safari_dateForKey:v6];
        v18 = v17 == 0;

        if (!v18)
        {
          v19 = [v10 mutableCopy];
          [v19 setObject:0 forKeyedSubscript:v6];
          [(WBSPersistentPropertyListStore *)self->_contentBlockerStateStore setObject:v19 forKey:v9];

          v41 = 1;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v4);
  }

  else
  {
    v41 = 0;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v20 = [(WBSPersistentPropertyListStore *)self->_contentBlockerStateStore allKeys];
  v21 = [v20 countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (!v21)
  {

    goto LABEL_39;
  }

  v35 = 0;
  v39 = *v44;
  obja = *MEMORY[0x1E69C9288];
  do
  {
    for (j = 0; j != v21; ++j)
    {
      if (*v44 != v39)
      {
        objc_enumerationMutation(v20);
      }

      v23 = *(*(&v43 + 1) + 8 * j);
      v24 = [v42 objectForKeyedSubscript:v23];
      v25 = v24 == 0;

      if (v25)
      {
        v26 = [(WBSPersistentPropertyListStore *)self->_contentBlockerStateStore dictionaryForKey:v23];
        v27 = [v26 safari_dateForKey:obja];
        v28 = v27;
        if (v27)
        {
          v29 = [v27 dateByAddingTimeInterval:3600.0];
          [v29 timeIntervalSinceNow];
          if (v30 < 0.0)
          {
            [(WBSPersistentPropertyListStore *)self->_contentBlockerStateStore setObject:0 forKey:v23];
            v35 = 1;
            goto LABEL_32;
          }
        }

        else
        {
          contentBlockerStateStore = self->_contentBlockerStateStore;
          v51 = obja;
          v28 = [MEMORY[0x1E695DF00] now];
          v52 = v28;
          v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
          v32 = [v29 safari_dictionaryByMergingWithDictionary:v26];
          [(WBSPersistentPropertyListStore *)contentBlockerStateStore setObject:v32 forKey:v23];

LABEL_32:
          v41 = 1;
        }

        continue;
      }
    }

    v21 = [v20 countByEnumeratingWithState:&v43 objects:v53 count:16];
  }

  while (v21);

  if (v35)
  {
    v33 = [MEMORY[0x1E69C9778] sharedManager];
    [v33 localExtensionStateDidChange];
  }

LABEL_39:
  if (v41)
  {
    [(WBSPersistentPropertyListStore *)self->_contentBlockerStateStore saveStoreSynchronously];
  }

LABEL_42:
}

- (BOOL)extensionIsEnabled:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_contentBlockerStateStoreRequiresReload)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_1D4644000, v5, OS_LOG_TYPE_INFO, "Loading content blocker state from disk since it was changed from another process", &v15, 2u);
    }

    [(SFContentBlockerManager *)self _loadContentBlockerStateFromDisk];
    self->_contentBlockerStateStoreRequiresReload = 0;
  }

  v6 = [(SFContentBlockerManager *)self webExtensionsController];
  v7 = [v6 composedIdentifierForExtensionStateForExtension:v4];

  v8 = [(WBSPersistentPropertyListStore *)self->_contentBlockerStateStore dictionaryForKey:v7];
  v9 = [v8 safari_BOOLForKey:*MEMORY[0x1E69C95F0]];

  v10 = [MEMORY[0x1E69C88C8] sharedController];
  v11 = [v10 managedExtensionStateForComposedIdentifier:v7];

  if ((v11 != 1) | v9 & 1)
  {
    if (((v11 == 2) & v9) == 1)
    {
      v12 = WBS_LOG_CHANNEL_PREFIXManagedExtensions();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v15 = 138477827;
        v16 = v7;
        _os_log_impl(&dword_1D4644000, v12, OS_LOG_TYPE_INFO, "Disabling content blocker %{private}@ due to managed extension configuration", &v15, 0xCu);
      }

      [(SFContentBlockerManager *)self setExtension:v4 isEnabled:0 byUserGesture:0];
      v9 = 0;
    }
  }

  else
  {
    v13 = WBS_LOG_CHANNEL_PREFIXManagedExtensions();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = 138477827;
      v16 = v7;
      _os_log_impl(&dword_1D4644000, v13, OS_LOG_TYPE_INFO, "Enabling content blocker %{private}@ due to managed extension configuration", &v15, 0xCu);
    }

    v9 = 1;
    [(SFContentBlockerManager *)self setExtension:v4 isEnabled:1 byUserGesture:0];
  }

  return v9;
}

- (void)setExtension:(id)a3 isEnabled:(BOOL)a4 byUserGesture:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(SFContentBlockerManager *)self webExtensionsController];
  v10 = [v9 composedIdentifierForExtensionStateForExtension:v8];

  v11 = [(WBSPersistentPropertyListStore *)self->_contentBlockerStateStore dictionaryForKey:v10];
  v12 = [v11 mutableCopy];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [MEMORY[0x1E695DF90] dictionary];
  }

  v15 = v14;

  v16 = [MEMORY[0x1E696AD98] numberWithBool:v6];
  [v15 setObject:v16 forKeyedSubscript:*MEMORY[0x1E69C95F0]];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:v5];
  [v15 setObject:v17 forKeyedSubscript:*MEMORY[0x1E69C95E8]];

  v18 = [MEMORY[0x1E695DF00] now];
  [v15 setObject:v18 forKeyedSubscript:*MEMORY[0x1E69C9610]];

  [(WBSPersistentPropertyListStore *)self->_contentBlockerStateStore setObject:v15 forKey:v10];
  [(WBSPersistentPropertyListStore *)self->_contentBlockerStateStore saveStoreSynchronously];
  v19 = [MEMORY[0x1E696AD88] defaultCenter];
  [v19 postNotificationName:*MEMORY[0x1E69C9220] object:v8];

  v20 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v20 postNotificationName:@"com.apple.SafariServices.ContentBlockerEnabledStateDidChange" object:0 userInfo:0 deliverImmediately:1];

  v21 = [MEMORY[0x1E69C9778] sharedManager];
  [v21 localExtensionStateDidChange];

  v22 = [v8 identifier];
  v23 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v32 = v22;
    v33 = 1024;
    v34 = v6;
    _os_log_impl(&dword_1D4644000, v23, OS_LOG_TYPE_DEFAULT, "Setting content blocker (%{public}@) to state: %d", buf, 0x12u);
  }

  if (v6)
  {
    v24 = [objc_opt_class() contentBlockerStore];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __75__SFContentBlockerManager_SFPrivate__setExtension_isEnabled_byUserGesture___block_invoke;
    v28[3] = &unk_1E84906F8;
    v29 = v22;
    v30 = self;
    [v24 lookUpContentRuleListForIdentifier:v29 completionHandler:v28];
  }

  else
  {
    v25 = [objc_opt_class() _contentBlockerLoaderConnection];
    v26 = [v25 remoteObjectProxy];
    [v26 removeContentBlockerWithIdentifierIfNecessary:v22];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.SafariServices.ContentBlockerDidChange", 0, 0, 0);
  }
}

void __75__SFContentBlockerManager_SFPrivate__setExtension_isEnabled_byUserGesture___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543362;
      v15 = v8;
      _os_log_impl(&dword_1D4644000, v7, OS_LOG_TYPE_DEFAULT, "Skipping compiling content blocker %{public}@ because it's already compiled", buf, 0xCu);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.SafariServices.ContentBlockerDidChange", 0, 0, 0);
  }

  else
  {
    v10 = objc_opt_class();
    v11 = *(a1 + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __75__SFContentBlockerManager_SFPrivate__setExtension_isEnabled_byUserGesture___block_invoke_199;
    v12[3] = &unk_1E84906D0;
    v13 = v11;
    [v10 _loadContentBlockerWithIdentifier:v13 completionHandler:v12];
  }
}

void __75__SFContentBlockerManager_SFPrivate__setExtension_isEnabled_byUserGesture___block_invoke_199(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [v2 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __75__SFContentBlockerManager_SFPrivate__setExtension_isEnabled_byUserGesture___block_invoke_199_cold_1();
    }
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.SafariServices.ContentBlockerDidChange", 0, 0, 0);
}

- (BOOL)isContentBlockerAllowedInPrivateBrowsing:(id)a3
{
  v4 = a3;
  if ([(SFContentBlockerManager *)self _isManagingDefaultProfile])
  {
    if (self->_contentBlockerStateStoreRequiresReload)
    {
      v5 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v16 = 0;
        _os_log_impl(&dword_1D4644000, v5, OS_LOG_TYPE_INFO, "Loading content blocker state from disk since it was changed from another process", v16, 2u);
      }

      [(SFContentBlockerManager *)self _loadContentBlockerStateFromDisk];
      self->_contentBlockerStateStoreRequiresReload = 0;
    }

    v6 = [(SFContentBlockerManager *)self webExtensionsController];
    v7 = [v6 composedIdentifierForExtensionStateForExtension:v4];

    v8 = [(WBSPersistentPropertyListStore *)self->_contentBlockerStateStore dictionaryForKey:v7];
    v9 = [v8 safari_numberForKey:@"AllowInPrivateBrowsing"];

    if (v9)
    {
      v10 = [v9 BOOLValue];
    }

    else
    {
      v10 = 1;
    }

    v11 = [MEMORY[0x1E69C88C8] sharedController];
    v12 = [v11 managedExtensionPrivateBrowsingStateForComposedIdentifier:v7];

    if (v12 == 2)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0;
    }

    if (v13 == 1)
    {
      [(SFContentBlockerManager *)self setExtension:v4 isEnabledInPrivateBrowsing:0 updateUserContentController:0];
      LOBYTE(v10) = 0;
    }

    else
    {
      if (v12 == 1)
      {
        v14 = v10;
      }

      else
      {
        v14 = 1;
      }

      if ((v14 & 1) == 0)
      {
        LOBYTE(v10) = 1;
        [(SFContentBlockerManager *)self setExtension:v4 isEnabledInPrivateBrowsing:1 updateUserContentController:0];
      }
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)setExtension:(id)a3 isEnabledInPrivateBrowsing:(BOOL)a4 updateUserContentController:(BOOL)a5
{
  v6 = a4;
  v17 = a3;
  if ([(SFContentBlockerManager *)self _isManagingDefaultProfile])
  {
    v8 = [(SFContentBlockerManager *)self webExtensionsController];
    v9 = [v8 composedIdentifierForExtensionStateForExtension:v17];

    v10 = [(WBSPersistentPropertyListStore *)self->_contentBlockerStateStore dictionaryForKey:v9];
    v11 = [v10 mutableCopy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [MEMORY[0x1E695DF90] dictionary];
    }

    v14 = v13;

    v15 = [MEMORY[0x1E696AD98] numberWithBool:v6];
    [v14 setObject:v15 forKeyedSubscript:@"AllowInPrivateBrowsing"];

    [(WBSPersistentPropertyListStore *)self->_contentBlockerStateStore setObject:v14 forKey:v9];
    [(WBSPersistentPropertyListStore *)self->_contentBlockerStateStore saveStoreSynchronously];
    if (a5)
    {
      [v17 identifier];
      if (v6)
        v16 = {;
        [(SFContentBlockerManager *)self _applyContentBlockerInPrivateBrowsing:v16];
      }

      else
        v16 = {;
        [(SFContentBlockerManager *)self _removeContentBlockerInPrivateBrowsing:v16];
      }
    }
  }
}

- (id)displayNameForExtension:(id)a3
{
  v4 = a3;
  v5 = [v4 _plugIn];
  v6 = [v5 containingUrl];

  v7 = [v4 _plugIn];
  v8 = [v7 localizedContainingName];

  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  extensions = self->_extensions;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __62__SFContentBlockerManager_SFPrivate__displayNameForExtension___block_invoke;
  v20 = &unk_1E8490720;
  v10 = v6;
  v21 = v10;
  v22 = v23;
  v11 = [(NSSet *)extensions objectsPassingTest:&v17];
  if ([v11 count] != 1)
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = _WBSLocalizedString();
    v14 = [v4 objectForInfoDictionaryKey:*MEMORY[0x1E695E120]];
    v15 = [v12 localizedStringWithFormat:v13, v8, v14, v17, v18, v19, v20];

    v8 = v15;
  }

  _Block_object_dispose(v23, 8);

  return v8;
}

uint64_t __62__SFContentBlockerManager_SFPrivate__displayNameForExtension___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 _plugIn];
  v6 = [v5 containingUrl];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    v8 = *(*(a1 + 40) + 8);
    if (*(v8 + 24) == 1)
    {
      *a3 = 1;
    }

    else
    {
      *(v8 + 24) = 1;
    }
  }

  return v7;
}

- (id)_contentBlockerWithComposedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SFContentBlockerManager *)self webExtensionsController];
  v6 = [(SFContentBlockerManager *)self extensions];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__SFContentBlockerManager_SFPrivate___contentBlockerWithComposedIdentifier___block_invoke;
  v11[3] = &unk_1E8490748;
  v7 = v5;
  v12 = v7;
  v8 = v4;
  v13 = v8;
  v9 = [v6 safari_anyObjectPassingTest:v11];

  return v9;
}

uint64_t __76__SFContentBlockerManager_SFPrivate___contentBlockerWithComposedIdentifier___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) composedIdentifierForExtensionStateForExtension:a2];
  v4 = [v3 isEqualToString:*(a1 + 40)];

  return v4;
}

- (id)_contentBlockersWithAdamID:(id)a3
{
  v4 = a3;
  v5 = [(SFContentBlockerManager *)self extensions];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__SFContentBlockerManager_SFPrivate___contentBlockersWithAdamID___block_invoke;
  v10[3] = &unk_1E8490598;
  v6 = v4;
  v11 = v6;
  v7 = [v5 safari_mapAndFilterObjectsUsingBlock:v10];
  v8 = [v7 allObjects];

  return v8;
}

id __65__SFContentBlockerManager_SFPrivate___contentBlockersWithAdamID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 safari_containingAppAdamID];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3;
  }

  return v6;
}

- (id)cloudExtensionStateForStateManager:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v23 = [MEMORY[0x1E695DF90] dictionary];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(SFContentBlockerManager *)self extensions];
  v4 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v4)
  {
    v24 = *v26;
    v21 = *MEMORY[0x1E69C95A8];
    v20 = *MEMORY[0x1E69C95E0];
    v19 = *MEMORY[0x1E69C9620];
    v18 = *MEMORY[0x1E69C9618];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v26 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v25 + 1) + 8 * i);
        v7 = [(SFContentBlockerManager *)self webExtensionsController];
        v8 = [v7 composedIdentifierForExtensionStateForExtension:v6];

        v9 = [(WBSPersistentPropertyListStore *)self->_contentBlockerStateStore dictionaryForKey:v8];
        v10 = [v6 safari_containingAppAdamID];
        if (v10 || ([v6 safari_containingAppIsTestFlightApp] & 1) != 0)
        {
          v11 = [(SFContentBlockerManager *)self displayNameForExtension:v6];
          v12 = [MEMORY[0x1E695DF90] dictionary];
          v13 = v12;
          if (v10)
          {
            [v12 setObject:v10 forKeyedSubscript:v21];
          }

          if (v11)
          {
            [v13 setObject:v11 forKeyedSubscript:v20];
          }

          v14 = [v6 safari_correspondingMacOSExtensionBundleIdentifier];
          if (v14)
          {
            [v13 setObject:v14 forKeyedSubscript:v19];
          }

          v15 = [v6 safari_correspondingMacOSContainingAppBundleIdentifier];
          if (v15)
          {
            [v13 setObject:v15 forKeyedSubscript:v18];
          }

          v16 = [v13 safari_dictionaryByMergingWithDictionary:v9];
          [v23 setObject:v16 forKeyedSubscript:v8];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v4);
  }

  return v23;
}

- (void)setExtensionWithComposedIdentifier:(id)a3 isEnabledInCloud:(BOOL)a4
{
  v4 = a4;
  v6 = [(SFContentBlockerManager *)self _contentBlockerWithComposedIdentifier:a3];
  if ([(SFContentBlockerManager *)self extensionIsEnabled:?]!= v4)
  {
    [(SFContentBlockerManager *)self setExtension:v6 isEnabled:v4 byUserGesture:0];
  }
}

- (BOOL)hasExtensionWithComposedIdentifier:(id)a3
{
  v3 = [(SFContentBlockerManager *)self _contentBlockerWithComposedIdentifier:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)_installationDateForExtension:(id)a3
{
  v4 = a3;
  v5 = [(SFContentBlockerManager *)self webExtensionsController];
  v6 = [v5 composedIdentifierForExtensionStateForExtension:v4];

  v7 = [(WBSPersistentPropertyListStore *)self->_contentBlockerStateStore dictionaryForKey:v6];
  v8 = [v7 safari_dateForKey:*MEMORY[0x1E69C9280]];

  return v8;
}

- (unint64_t)recentlyInstalledExtensionCount
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 safari_dateForKey:*MEMORY[0x1E69C9390]];

  v5 = [(NSSet *)self->_extensions allObjects];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __69__SFContentBlockerManager_SFPrivate__recentlyInstalledExtensionCount__block_invoke;
  v13 = &unk_1E8490748;
  v14 = self;
  v6 = v4;
  v15 = v6;
  v7 = [v5 safari_filterObjectsUsingBlock:&v10];
  v8 = [v7 count];

  return v8;
}

BOOL __69__SFContentBlockerManager_SFPrivate__recentlyInstalledExtensionCount__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) extensionIsEnabled:v3])
  {
    v4 = 0;
  }

  else if (*(a1 + 40))
  {
    v5 = [*(a1 + 32) _installationDateForExtension:v3];
    v4 = [*(a1 + 40) compare:v5] == -1;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)extensionStateKeysToCopy
{
  v8[5] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = *MEMORY[0x1E69C9280];
  v8[0] = *MEMORY[0x1E69C95F0];
  v8[1] = v3;
  v4 = *MEMORY[0x1E69C95E8];
  v8[2] = *MEMORY[0x1E69C9288];
  v8[3] = v4;
  v8[4] = *MEMORY[0x1E69C9610];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:5];
  v6 = [v2 setWithArray:v5];

  return v6;
}

- (void)copyEnabledExtensionStateFromContentBlockerManager:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v3 = [(SFContentBlockerManager *)self extensionStateKeysToCopy];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [v18[7] allKeys];
  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v5)
  {
    v17 = *v27;
    do
    {
      v19 = v5;
      for (i = 0; i != v19; ++i)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        v20 = [v18[7] dictionaryForKey:v7];
        v8 = [(WBSPersistentPropertyListStore *)self->_contentBlockerStateStore dictionaryForKey:v7];
        v9 = [v8 mutableCopy];

        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = v20;
        v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v11)
        {
          v12 = *v23;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v23 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v22 + 1) + 8 * j);
              if ([v3 containsObject:v14])
              {
                v15 = [v10 objectForKeyedSubscript:v14];
                [v9 setObject:v15 forKeyedSubscript:v14];
              }
            }

            v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v11);
        }

        [(WBSPersistentPropertyListStore *)self->_contentBlockerStateStore setObject:v9 forKey:v7];
      }

      v4 = obj;
      v5 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v5);
  }

  [(WBSPersistentPropertyListStore *)self->_contentBlockerStateStore saveStoreSynchronously];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p profile server ID = %@", v5, self, self->_profileServerID];;

  return v6;
}

- (id)_extensionsDataForExportFromContentBlockerStateStore:(id)a3 useContentBlockerWithComposedIdentifier:(BOOL)a4
{
  v20 = a4;
  v31 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  obj = [v25 allKeys];
  v4 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v4)
  {
    v24 = *v27;
    v23 = *MEMORY[0x1E69C95F0];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v26 + 1) + 8 * i);
        v7 = [v25 dictionaryForKey:v6];
        v8 = [v7 safari_BOOLForKey:v23];

        if (v8)
        {
          if (v20)
          {
            [(SFContentBlockerManager *)self _contentBlockerWithComposedIdentifier:v6];
          }

          else
          {
            [MEMORY[0x1E69C9798] _extensionFromComposedIdentifier:v6];
          }
          v9 = ;
          if (v9)
          {
            v10 = MEMORY[0x1E69C97A0];
            v11 = [(SFContentBlockerManager *)self displayNameForExtension:v9];
            v12 = [v9 safari_launchServicesDeveloperName];
            v13 = [v9 safari_containingAppAdamID];
            v14 = [v9 safari_correspondingMacOSExtensionBundleIdentifier];
            v15 = [v9 safari_correspondingMacOSContainingAppBundleIdentifier];
            v16 = [v10 extensionDataWithDisplayName:v11 developerName:v12 composedIdentifier:v6 adamIdentifier:v13 alternatePlatformExtensionBundleIdentifier:v14 alternatePlatformAppBundleIdentifier:v15];

            [v19 addObject:v16];
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v4);
  }

  v17 = [v19 copy];

  return v17;
}

- (id)extensionsDataForExport
{
  if (self->_contentBlockerStateStoreRequiresReload)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1D4644000, v3, OS_LOG_TYPE_INFO, "Loading content blocker state from disk since it was changed from another process", v6, 2u);
    }

    [(SFContentBlockerManager *)self _loadContentBlockerStateFromDisk];
    self->_contentBlockerStateStoreRequiresReload = 0;
  }

  v4 = [(SFContentBlockerManager *)self _extensionsDataForExportFromContentBlockerStateStore:self->_contentBlockerStateStore useContentBlockerWithComposedIdentifier:1];

  return v4;
}

void __86__SFContentBlockerManager_SFPrivate__reloadUserContentControllerReadingStateFromDisk___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, 5.8081e-34);
  OUTLINED_FUNCTION_2_0(&dword_1D4644000, "Failed to look up content blocker '%{private}@' with error %{public}@", v4, v5);
}

void __89__SFContentBlockerManager_SFPrivate___loadContentBlockerRecompilationInformationIfNeeded__block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_3_0(&dword_1D4644000, a2, a3, "Failed to read recompilation information: %{public}@", a2);
}

void __79__SFContentBlockerManager_SFPrivate___recompileEnabledContentBlockersIfNeeded___block_invoke_195_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_0(&dword_1D4644000, "Previously enabled Content Blocker '%{public}@' failed to load: %{public}@", v4, v5);
}

void __75__SFContentBlockerManager_SFPrivate__setExtension_isEnabled_byUserGesture___block_invoke_199_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_0(&dword_1D4644000, "Error loading content blocker (%{public}@): %{public}@", v4, v5);
}

@end