@interface QLItemPresenterViewController
- (BOOL)_currentPreviewControllerIsErrorViewController;
- (BOOL)_processIsEntitledToCheckScreenTimePolicy;
- (BOOL)_processIsEntitledToConfigureScreenTime;
- (BOOL)_shouldApplyScreenTimeMoviePolicyForItem:(id)item;
- (BOOL)downloadingItemViewControllerShouldForceAutodownloadFile:(id)file;
- (BOOL)isLoaded;
- (BOOL)isLoading;
- (BOOL)loadingFailed;
- (CGSize)preferredContentSize;
- (QLDownloadingItemViewController)downloadingController;
- (QLErrorItemViewController)errorViewController;
- (QLItemPresenterViewController)init;
- (QLItemPresenterViewController)initWithHostApplicationBundleIdentifier:(id)identifier parentApplicationDisplayIdentifier:(id)displayIdentifier;
- (QLItemViewController)previewProvider;
- (QLLoadingItemViewController)loadingViewController;
- (QLScreenTimeItemViewController)screenTimeController;
- (id)additionalItemViewControllerDescription;
- (id)initForPrinting:(BOOL)printing;
- (id)screenTimePolicyBundleIdentifier;
- (void)_didReceiveNewScreenTimeApplicationPolicies:(id)policies error:(id)error;
- (void)_didReceiveNewScreenTimeCategoryPolicy:(id)policy error:(id)error;
- (void)_didReceiveNewScreenTimePolicy:(int64_t)policy;
- (void)_hideScreenTimeViewControllerIfNeeded;
- (void)_performLoadingCompletionHandlerWithError:(id)error;
- (void)_performReadyBlockIfNedded;
- (void)_queryScreenTimeCategoryPolicy;
- (void)_queryScreenTimePolicyForBundleIdentifier:(id)identifier;
- (void)_setupScreenTimeApplicationHandling;
- (void)_setupScreenTimeCategoryHandling;
- (void)_setupScreenTimeHandling;
- (void)_showLoadingViewControllerDeferredIfNeeded;
- (void)_showReadyToDisplayPreviewViewControllerDeferredIfNeeded:(id)needed;
- (void)_showScreenTimeViewControllerWithPolicy:(int64_t)policy;
- (void)_startLoadingPreviewWithContents:(id)contents;
- (void)downloadingItemViewControllerDidFinishLoadingPreviewItem:(id)item withContents:(id)contents;
- (void)isReadyForDisplayWithCompletionHandler:(id)handler;
- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler;
- (void)showErrorViewController;
- (void)showPreviewProviderViewController;
- (void)updatePreviewItemDisplayState:(id)state;
@end

@implementation QLItemPresenterViewController

- (QLItemPresenterViewController)init
{
  v9.receiver = self;
  v9.super_class = QLItemPresenterViewController;
  v2 = [(QLItemViewController *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(QLItemViewController *)v2 setPresentingDelegate:v2];
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v5 = dispatch_queue_create("com.apple.quicklook.preview-loading.serial-queue", v4);
    previewLoadingQueue = v3->previewLoadingQueue;
    v3->previewLoadingQueue = v5;

    v7 = v3;
  }

  return v3;
}

- (QLItemPresenterViewController)initWithHostApplicationBundleIdentifier:(id)identifier parentApplicationDisplayIdentifier:(id)displayIdentifier
{
  identifierCopy = identifier;
  displayIdentifierCopy = displayIdentifier;
  v9 = [(QLItemPresenterViewController *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parentApplicationDisplayIdentifier, displayIdentifier);
    objc_storeStrong(&v10->_hostApplicationBundleIdentifier, identifier);
    v11 = v10;
  }

  return v10;
}

- (id)initForPrinting:(BOOL)printing
{
  v4 = [(QLItemPresenterViewController *)self init];
  v5 = v4;
  if (v4)
  {
    v4->_printing = printing;
    v6 = v4;
  }

  return v5;
}

- (void)_showLoadingViewControllerDeferredIfNeeded
{
  previewProvider = [(QLItemPresenterViewController *)self previewProvider];
  v4 = [previewProvider presenterShouldHandleLoadingView:self->_previewItem readyToDisplay:0];

  if (v4)
  {
    v5 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__QLItemPresenterViewController__showLoadingViewControllerDeferredIfNeeded__block_invoke;
    block[3] = &unk_278B57190;
    block[4] = self;
    dispatch_after(v5, MEMORY[0x277D85CD0], block);
  }
}

void __75__QLItemPresenterViewController__showLoadingViewControllerDeferredIfNeeded__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) previewProvider];
  if (([v4 isLoaded] & 1) == 0)
  {
    v2 = *(*(a1 + 32) + 1163);

    if (v2)
    {
      return;
    }

    v3 = *(a1 + 32);
    v4 = [v3 loadingViewController];
    [v3 showPreviewViewController:?];
  }
}

- (void)_showReadyToDisplayPreviewViewControllerDeferredIfNeeded:(id)needed
{
  previewItem = self->_previewItem;
  neededCopy = needed;
  v6 = maxLoadingItemForItem(previewItem);
  [neededCopy timeIntervalSinceNow];
  v8 = v7;

  v9 = dispatch_time(0, (fmax(v6 + v8, 0.0) * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__QLItemPresenterViewController__showReadyToDisplayPreviewViewControllerDeferredIfNeeded___block_invoke;
  block[3] = &unk_278B57190;
  block[4] = self;
  dispatch_after(v9, MEMORY[0x277D85CD0], block);
}

void __90__QLItemPresenterViewController__showReadyToDisplayPreviewViewControllerDeferredIfNeeded___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) _currentPreviewControllerIsErrorViewController] & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = [v2 previewProvider];
    [v2 showPreviewViewController:v3 animatingWithCrossfade:0];
  }
}

- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler
{
  v43 = *MEMORY[0x277D85DE8];
  contentsCopy = contents;
  contextCopy = context;
  handlerCopy = handler;
  [(QLItemPresenterViewController *)self setContents:contentsCopy];
  objc_storeStrong(&self->_previewItem, contents);
  createPreviewContext = [(QLItem *)self->_previewItem createPreviewContext];
  [(QLItemPresenterViewController *)self setContext:createPreviewContext];

  if ([(QLItem *)self->_previewItem previewItemType]== 15)
  {
    v13 = MEMORY[0x277D43EF8];
    v14 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      previewItem = self->_previewItem;
      *buf = 138412290;
      v42 = previewItem;
      _os_log_impl(&dword_23A714000, v14, OS_LOG_TYPE_DEBUG, "Will show error view controller because can't preview item: %@. #PreviewController", buf, 0xCu);
    }

    [(QLItemPresenterViewController *)self setLoadingCompletionHandler:handlerCopy];
    errorViewController = [(QLItemPresenterViewController *)self errorViewController];
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.quicklook.QLErrorItemViewController" code:1 userInfo:0];
    [errorViewController setError:v17];

    [(QLItemPresenterViewController *)self showPreviewViewController:errorViewController];
    goto LABEL_26;
  }

  fetcher = [(QLItem *)self->_previewItem fetcher];

  if (fetcher)
  {
    objc_initWeak(buf, self);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __93__QLItemPresenterViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke;
    v38[3] = &unk_278B57740;
    v39 = handlerCopy;
    objc_copyWeak(&v40, buf);
    [(QLItemPresenterViewController *)self setLoadingCompletionHandler:v38];
    date = [MEMORY[0x277CBEAA8] date];
    previewProvider = [(QLItemPresenterViewController *)self previewProvider];
    v21 = self->_previewItem;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __93__QLItemPresenterViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke_2;
    v36[3] = &unk_278B56E50;
    v36[4] = self;
    v22 = date;
    v37 = v22;
    self->_shouldHandleLoadingView = [previewProvider presenterShouldHandleLoadingView:v21 readyToDisplay:v36];

    fetcher2 = [(QLItem *)self->_previewItem fetcher];
    if ([fetcher2 isLongFetchOperation])
    {
      shouldHandleLoadingView = self->_shouldHandleLoadingView;

      if (shouldHandleLoadingView)
      {
        downloadingController = [(QLItemPresenterViewController *)self downloadingController];
        [(QLItemPresenterViewController *)self showPreviewViewController:downloadingController];
LABEL_25:

        objc_destroyWeak(&v40);
        objc_destroyWeak(buf);
        goto LABEL_26;
      }
    }

    else
    {
    }

    if (!self->_shouldHandleLoadingView)
    {
      loadingViewController = [(QLItemPresenterViewController *)self loadingViewController];
      [(QLItemPresenterViewController *)self showPreviewViewController:loadingViewController animatingWithCrossfade:1 updatingIsReadyForDisplay:0];
    }

    if ([(QLItem *)self->_previewItem previewItemType]!= 13)
    {
      previewProvider2 = [(QLItemPresenterViewController *)self previewProvider];
      createPreviewContext2 = [(QLItem *)self->_previewItem createPreviewContext];
      [previewProvider2 preloadViewControllerForContext:createPreviewContext2];
    }

    [(QLItemPresenterViewController *)self _showLoadingViewControllerDeferredIfNeeded];
    downloadingController = objc_opt_new();
    [(QLItem *)self->_previewItem transformerClass];
    v30 = objc_opt_new();
    if (objc_opt_respondsToSelector())
    {
      [downloadingController addObject:objc_opt_class()];
    }

    if (objc_opt_respondsToSelector())
    {
      [downloadingController addObject:objc_opt_class()];
    }

    if (objc_opt_respondsToSelector())
    {
      [downloadingController addObject:objc_opt_class()];
    }

    fetcher3 = [(QLItem *)self->_previewItem fetcher];
    v32 = objc_opt_new();
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __93__QLItemPresenterViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke_3;
    v34[3] = &unk_278B57768;
    objc_copyWeak(&v35, buf);
    [fetcher3 fetchContentWithAllowedOutputClasses:downloadingController inQueue:v32 updateBlock:0 completionBlock:v34];

    objc_destroyWeak(&v35);
    goto LABEL_25;
  }

  loadingViewController2 = [(QLItemPresenterViewController *)self loadingViewController];
  [(QLItemPresenterViewController *)self showPreviewViewController:loadingViewController2];

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

LABEL_26:

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t __93__QLItemPresenterViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v3 = v7;
  }

  if (!v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _setupScreenTimeHandling];
  }

  return MEMORY[0x2821F96F8]();
}

void __93__QLItemPresenterViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__QLItemPresenterViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke_4;
  aBlock[3] = &unk_278B57768;
  objc_copyWeak(&v22, (a1 + 32));
  v7 = _Block_copy(aBlock);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained previewItem];

  if ([v9 previewItemType] == 13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = objc_alloc(MEMORY[0x277D43F40]);
    v11 = [v9 previewItemContentType];
    v12 = [v10 initWithURL:v5 contentType:v11];
    [v9 setGenerationFetcher:v12];

    v13 = MEMORY[0x277CBEB58];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v9 generationFetcher];
    v17 = objc_opt_new();
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __93__QLItemPresenterViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke_17;
    v18[3] = &unk_278B57790;
    objc_copyWeak(&v20, (a1 + 32));
    v19 = v7;
    [v16 fetchContentWithAllowedOutputClasses:v15 inQueue:v17 updateBlock:0 completionBlock:v18];

    objc_destroyWeak(&v20);
  }

  else
  {
    (*(v7 + 2))(v7, v5, v6);
  }

  objc_destroyWeak(&v22);
}

void __93__QLItemPresenterViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&v9, (a1 + 32));
  v7 = v6;
  v8 = v5;
  QLRunInMainThread();

  objc_destroyWeak(&v9);
}

void __93__QLItemPresenterViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke_5(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (*(a1 + 32) || !*(a1 + 40))
    {
      v3 = MEMORY[0x277D43EF8];
      v4 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v4 = *v3;
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = v4;
        v6 = [WeakRetained previewItem];
        v7 = *(a1 + 32);
        v8 = *(a1 + 40);
        v16 = 138412802;
        v17 = v6;
        v18 = 2112;
        v19 = v7;
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&dword_23A714000, v5, OS_LOG_TYPE_ERROR, "Will show error view because presenter could not successfully fetch content of preview item: %@, contents: %@, error: %@. #PreviewController", &v16, 0x20u);
      }

      v9 = [WeakRetained errorViewController];
      [WeakRetained showPreviewViewController:v9];
    }

    else
    {
      v10 = MEMORY[0x277D43EF8];
      v11 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v11 = *v10;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = v11;
        v13 = [WeakRetained previewItem];
        v14 = *(a1 + 40);
        v16 = 138412546;
        v17 = v13;
        v18 = 2112;
        v19 = v14;
        _os_log_impl(&dword_23A714000, v12, OS_LOG_TYPE_DEBUG, "Will _startLoadingPreviewWithContents because presenter successfully fetched content of preview item: %@, contents: %@. #PreviewController", &v16, 0x16u);
      }

      [WeakRetained _startLoadingPreviewWithContents:*(a1 + 40)];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __93__QLItemPresenterViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke_17(uint64_t a1, void *a2, void *a3)
{
  v24 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained previewItem];
    v9 = v24;
    v10 = [v9 fileURLHandler];
    [v8 setGeneratedURLHandler:v10];

    v11 = [v9 contentType];
    v12 = [v11 identifier];
    [v8 setGeneratedItemContentType:v12];

    [v8 setStringEncoding:{objc_msgSend(v9, "stringEncoding")}];
    v13 = [v9 attachments];
    [v8 setAttachments:v13];

    v14 = [v9 bitmapFormat];
    [v8 setBitmapFormat:v14];

    [v8 setCanBeEdited:0];
    [v8 setEditingMode:0];
    v15 = v7[149];
    v7[149] = 0;

    v16 = [v9 replyType];
    if (v16 < 3 || v16 == 4)
    {
      v20 = *(a1 + 32);
      v18 = [v9 data];
      (*(v20 + 16))(v20, v18, v5);
    }

    else
    {
      if (v16 != 3)
      {
        (*(*(a1 + 32) + 16))();
        goto LABEL_8;
      }

      v17 = *(a1 + 32);
      v18 = [v9 fileURLHandler];
      v19 = [v18 fileURL];
      (*(v17 + 16))(v17, v19, v5);
    }

LABEL_8:
    goto LABEL_10;
  }

  v21 = MEMORY[0x277CCA9B8];
  v22 = *MEMORY[0x277D43EF0];
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"QLItemPresenterVC (weakself) is nil when fetchContentWithAllowedOutputClasses calls back" forKey:*MEMORY[0x277CCA450]];
  v8 = [v21 errorWithDomain:v22 code:0 userInfo:v23];

  (*(*(a1 + 32) + 16))();
LABEL_10:
}

- (CGSize)preferredContentSize
{
  currentPreviewViewController = [(QLItemAggregatedViewController *)self currentPreviewViewController];
  isLoaded = [currentPreviewViewController isLoaded];

  if (isLoaded)
  {
    currentPreviewViewController2 = [(QLItemAggregatedViewController *)self currentPreviewViewController];
    [currentPreviewViewController2 preferredContentSize];
  }

  else
  {
    currentPreviewViewController2 = [(QLItemPresenterViewController *)self previewItem];
    [currentPreviewViewController2 predictedPreferredContentSizeForOrbPlatter];
  }

  v8 = v6;
  v9 = v7;

  v10 = v8;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)_performReadyBlockIfNedded
{
  if (self->_isReadyForDisplay)
  {
    readyBlock = self->_readyBlock;
    if (readyBlock)
    {
      readyBlock[2](readyBlock, a2);
      v4 = self->_readyBlock;
      self->_readyBlock = 0;
    }
  }
}

- (void)_performLoadingCompletionHandlerWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  loadingCompletionHandler = selfCopy->_loadingCompletionHandler;
  if (loadingCompletionHandler)
  {
    loadingCompletionHandler[2](loadingCompletionHandler, errorCopy);
    v6 = selfCopy->_loadingCompletionHandler;
    selfCopy->_loadingCompletionHandler = 0;
  }

  objc_sync_exit(selfCopy);
}

- (void)showErrorViewController
{
  errorViewController = [(QLItemPresenterViewController *)self errorViewController];
  [(QLItemPresenterViewController *)self showPreviewViewController:errorViewController];
}

- (void)showPreviewProviderViewController
{
  previewProvider = [(QLItemPresenterViewController *)self previewProvider];
  [(QLItemPresenterViewController *)self showPreviewViewController:previewProvider];
}

- (void)isReadyForDisplayWithCompletionHandler:(id)handler
{
  aBlock = handler;
  if (self->_readyBlock)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"The presenter (%@) already has a block for isReadyForDisplayWithCompletionHandler:. Only one observer at a time is supported.", self];
    NSLog(&cfstr_SError.isa, "[QLItemPresenterViewController isReadyForDisplayWithCompletionHandler:]", v4);
  }

  v5 = _Block_copy(aBlock);
  readyBlock = self->_readyBlock;
  self->_readyBlock = v5;

  [(QLItemPresenterViewController *)self _performReadyBlockIfNedded];
}

- (void)_startLoadingPreviewWithContents:(id)contents
{
  contentsCopy = contents;
  traitCollection = [(QLItemPresenterViewController *)self traitCollection];
  imageDynamicRange = [traitCollection imageDynamicRange];

  previewLoadingQueue = self->previewLoadingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__QLItemPresenterViewController__startLoadingPreviewWithContents___block_invoke;
  block[3] = &unk_278B57480;
  v10 = contentsCopy;
  v11 = imageDynamicRange;
  block[4] = self;
  v8 = contentsCopy;
  dispatch_async(previewLoadingQueue, block);
}

void __66__QLItemPresenterViewController__startLoadingPreviewWithContents___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2[152])
  {
    v3 = [v2 currentPreviewViewController];
    v4 = v3 == *(*(a1 + 32) + 1216);

    v2 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = __Block_byref_object_copy__1;
  v40[4] = __Block_byref_object_dispose__1;
  v41 = 0;
  objc_initWeak(&location, v2[152]);
  objc_initWeak(&from, *(a1 + 32));
  v5 = maxLoadingItemForItem(*(*(a1 + 32) + 1240));
  v6 = *(a1 + 32);
  if (*(v6 + 1165) == 1)
  {
    v7 = dispatch_time(0, (v5 * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__QLItemPresenterViewController__startLoadingPreviewWithContents___block_invoke_29;
    block[3] = &unk_278B577B8;
    v37 = v4;
    objc_copyWeak(&v35, &from);
    objc_copyWeak(&v36, &location);
    block[4] = v40;
    dispatch_after(v7, MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v36);
    objc_destroyWeak(&v35);
    v6 = *(a1 + 32);
  }

  [*(v6 + 1240) transformerClass];
  v8 = objc_opt_new();
  v9 = [*(*(a1 + 32) + 1240) createPreviewContext];
  [v9 setViewDynamicRange:*(a1 + 48)];
  v10 = *(a1 + 40);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v12 = *(a1 + 40);
  if (isKindOfClass)
  {
    v33 = 0;
    v13 = &v33;
    v14 = [v8 transformedContentsFromData:v12 context:v9 error:&v33];
  }

  else
  {
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();
    v16 = *(a1 + 40);
    if (v15)
    {
      v32 = 0;
      v13 = &v32;
      v14 = [v8 transformedContentsFromURL:v16 context:v9 error:&v32];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_20;
      }

      v17 = *(a1 + 40);
      v31 = 0;
      v13 = &v31;
      v14 = [v8 transformedContentsFromSpotlightSearchableItemInfo:v17 context:v9 error:&v31];
    }
  }

  v18 = v14;
  v19 = *v13;
  if (!v19)
  {
    if (v18)
    {
      v27 = *(a1 + 32);
      v18 = v18;
      v28 = v9;
      objc_copyWeak(&v29, &location);
      objc_copyWeak(v30, &from);
      QLRunInMainThread();
      objc_destroyWeak(v30);
      objc_destroyWeak(&v29);

LABEL_25:
      v20 = 0;
      goto LABEL_26;
    }

LABEL_20:
    v23 = MEMORY[0x277D43EF8];
    v24 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v24 = *v23;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = *(*(a1 + 32) + 1240);
      *buf = 138412290;
      v43 = v25;
      _os_log_impl(&dword_23A714000, v24, OS_LOG_TYPE_ERROR, "Cancelled loading view controller because transformedContent is nil for item: %@. #ItemPresenter", buf, 0xCu);
    }

    v30[1] = MEMORY[0x277D85DD0];
    v30[2] = 3221225472;
    v30[3] = __66__QLItemPresenterViewController__startLoadingPreviewWithContents___block_invoke_31;
    v30[4] = &unk_278B57190;
    v30[5] = *(a1 + 32);
    QLRunInMainThread();
    v18 = 0;
    goto LABEL_25;
  }

  v20 = v19;
  v21 = MEMORY[0x277D43EF8];
  v22 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v22 = *v21;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v43 = v20;
    _os_log_impl(&dword_23A714000, v22, OS_LOG_TYPE_ERROR, "Error while attempting to load preview item: %@ #ItemPresenter", buf, 0xCu);
  }

  v30[6] = MEMORY[0x277D85DD0];
  v30[7] = 3221225472;
  v30[8] = __66__QLItemPresenterViewController__startLoadingPreviewWithContents___block_invoke_30;
  v30[9] = &unk_278B57190;
  v30[10] = *(a1 + 32);
  QLRunInMainThread();
LABEL_26:

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  _Block_object_dispose(v40, 8);

  v26 = *MEMORY[0x277D85DE8];
}

void __66__QLItemPresenterViewController__startLoadingPreviewWithContents___block_invoke_29(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (([WeakRetained isLoaded] & 1) == 0)
    {
      v2 = objc_loadWeakRetained((a1 + 48));

      if (!v2)
      {
        return;
      }

      v3 = objc_loadWeakRetained((a1 + 48));
      [v3 setShowsLoadingPreviewSpinner:1];

      v4 = [MEMORY[0x277CBEAA8] date];
      v5 = *(*(a1 + 32) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;
    }

    MEMORY[0x2821F96F8]();
  }
}

void __66__QLItemPresenterViewController__startLoadingPreviewWithContents___block_invoke_30(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 errorViewController];
  [v1 showPreviewViewController:v2];
}

void __66__QLItemPresenterViewController__startLoadingPreviewWithContents___block_invoke_31(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 errorViewController];
  [v1 showPreviewViewController:v2];
}

void __66__QLItemPresenterViewController__startLoadingPreviewWithContents___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) previewProvider];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__QLItemPresenterViewController__startLoadingPreviewWithContents___block_invoke_3;
  v5[3] = &unk_278B57808;
  v5[5] = *(a1 + 56);
  objc_copyWeak(&v6, (a1 + 64));
  objc_copyWeak(&v7, (a1 + 72));
  v5[4] = *(a1 + 32);
  [v2 loadPreviewControllerIfNeededWithContents:v3 context:v4 completionHandler:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&v6);
}

void __66__QLItemPresenterViewController__startLoadingPreviewWithContents___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (v4)
  {
    [v4 timeIntervalSinceNow];
    v6 = (fmax(v5 + 0.4, 0.0) * 1000000000.0);
  }

  else
  {
    v6 = 0;
  }

  v7 = dispatch_time(0, v6);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__QLItemPresenterViewController__startLoadingPreviewWithContents___block_invoke_4;
  block[3] = &unk_278B577E0;
  v12 = *(a1 + 40);
  objc_copyWeak(&v13, (a1 + 48));
  v10 = v3;
  v8 = v3;
  objc_copyWeak(&v14, (a1 + 56));
  v11 = *(a1 + 32);
  dispatch_after(v7, MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v14);

  objc_destroyWeak(&v13);
}

void __66__QLItemPresenterViewController__startLoadingPreviewWithContents___block_invoke_4(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained setShowsLoadingPreviewSpinner:0];
  }

  if (*(a1 + 32))
  {
    v3 = MEMORY[0x277D43EF8];
    v4 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v4 = *v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v14 = 138412290;
      v15 = v5;
      _os_log_impl(&dword_23A714000, v4, OS_LOG_TYPE_ERROR, "Error while attempting to load preview item: %@ #ItemPresenter", &v14, 0xCu);
    }

    v6 = objc_loadWeakRetained((a1 + 64));
    v7 = [v6 errorViewController];
    [v6 showPreviewViewController:v7];
  }

  else
  {
    v8 = *(*(a1 + 40) + 1165);
    v9 = objc_loadWeakRetained((a1 + 64));
    v10 = [v9 previewProvider];
    [v9 showPreviewViewController:v10 animatingWithCrossfade:v8];

    v6 = objc_loadWeakRetained((a1 + 64));
    v7 = [v6 previewProvider];
    v11 = [v7 view];
    [v11 becomeFirstResponder];
  }

  v12 = objc_loadWeakRetained((a1 + 64));
  [v12 _performLoadingCompletionHandlerWithError:0];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)downloadingItemViewControllerDidFinishLoadingPreviewItem:(id)item withContents:(id)contents
{
  contentsCopy = contents;
  v4 = contentsCopy;
  QLRunInMainThread();
}

- (BOOL)downloadingItemViewControllerShouldForceAutodownloadFile:(id)file
{
  selfCopy = self;
  delegate = [(QLItemAggregatedViewController *)self delegate];
  LOBYTE(selfCopy) = [delegate itemPresenterViewControllerShouldForceAutodownloadFile:selfCopy];

  return selfCopy;
}

- (BOOL)isLoaded
{
  if (!self->_previewProvider)
  {
    return 0;
  }

  previewProvider = [(QLItemPresenterViewController *)self previewProvider];
  isLoaded = [previewProvider isLoaded];

  return isLoaded;
}

- (BOOL)isLoading
{
  if (!self->_previewProvider)
  {
    return 1;
  }

  previewProvider = [(QLItemPresenterViewController *)self previewProvider];
  isLoading = [previewProvider isLoading];

  return isLoading;
}

- (BOOL)loadingFailed
{
  if (!self->_previewProvider)
  {
    return 0;
  }

  previewProvider = [(QLItemPresenterViewController *)self previewProvider];
  loadingFailed = [previewProvider loadingFailed];

  return loadingFailed;
}

- (QLErrorItemViewController)errorViewController
{
  errorViewController = self->_errorViewController;
  if (!errorViewController)
  {
    v4 = objc_opt_new();
    v5 = self->_errorViewController;
    self->_errorViewController = v4;

    [(QLItemViewController *)self->_errorViewController setIsContentManaged:[(QLItemViewController *)self isContentManaged]];
    v6 = self->_errorViewController;
    createPreviewContext = [(QLItem *)self->_previewItem createPreviewContext];
    [(QLItemViewController *)v6 loadPreviewControllerIfNeededWithContents:0 context:createPreviewContext completionHandler:0];

    self->_failureOccurred = 1;
    errorViewController = self->_errorViewController;
  }

  v8 = errorViewController;

  return v8;
}

- (BOOL)_currentPreviewControllerIsErrorViewController
{
  currentPreviewViewController = [(QLItemAggregatedViewController *)self currentPreviewViewController];
  if (currentPreviewViewController)
  {
    currentPreviewViewController2 = [(QLItemAggregatedViewController *)self currentPreviewViewController];
    v5 = currentPreviewViewController2 == self->_errorViewController;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (QLLoadingItemViewController)loadingViewController
{
  loadingViewController = self->_loadingViewController;
  if (!loadingViewController)
  {
    v4 = objc_opt_new();
    v5 = self->_loadingViewController;
    self->_loadingViewController = v4;

    [(QLItemViewController *)self->_loadingViewController setIsContentManaged:[(QLItemViewController *)self isContentManaged]];
    v6 = self->_loadingViewController;
    createPreviewContext = [(QLItem *)self->_previewItem createPreviewContext];
    [(QLLoadingItemViewController *)v6 loadPreviewControllerWithContents:0 context:createPreviewContext completionHandler:0];

    loadingViewController = self->_loadingViewController;
  }

  v8 = loadingViewController;

  return v8;
}

- (QLDownloadingItemViewController)downloadingController
{
  downloadingController = self->_downloadingController;
  if (!downloadingController)
  {
    v4 = objc_opt_new();
    v5 = self->_downloadingController;
    self->_downloadingController = v4;

    [(QLDownloadingItemViewController *)self->_downloadingController setDownloadingDelegate:self];
    [(QLItemViewController *)self->_downloadingController setIsContentManaged:[(QLItemViewController *)self isContentManaged]];
    v6 = self->_downloadingController;
    previewItem = self->_previewItem;
    createPreviewContext = [(QLItem *)previewItem createPreviewContext];
    [(QLDownloadingItemViewController *)v6 loadPreviewControllerWithContents:previewItem context:createPreviewContext completionHandler:0];

    downloadingController = self->_downloadingController;
  }

  v9 = downloadingController;

  return v9;
}

- (QLItemViewController)previewProvider
{
  previewProvider = self->_previewProvider;
  if (!previewProvider)
  {
    printing = self->_printing;
    previewItem = self->_previewItem;
    if (printing)
    {
      [(QLItem *)previewItem previewItemPrintingViewControllerClassName];
    }

    else
    {
      [(QLItem *)previewItem previewItemViewControllerClassName];
    }
    v6 = ;
    NSClassFromString(v6);
    v7 = objc_opt_new();
    v8 = self->_previewProvider;
    self->_previewProvider = v7;

    if (self->_previewControllerMissedTransitionDidStart)
    {
      v9 = self->_previewProvider;
      if (objc_opt_respondsToSelector())
      {
        [(QLItemViewController *)self->_previewProvider transitionDidStart:1];
      }
    }

    presentingDelegate = [(QLItemViewController *)self presentingDelegate];
    [(QLItemViewController *)self->_previewProvider setPresentingDelegate:presentingDelegate];

    delegate = [(QLItemAggregatedViewController *)self delegate];
    [(QLItemViewController *)self->_previewProvider setDelegate:delegate];

    [(QLItemViewController *)self->_previewProvider setIsContentManaged:[(QLItemViewController *)self isContentManaged]];
    previewProvider = self->_previewProvider;
  }

  v12 = previewProvider;

  return v12;
}

- (id)additionalItemViewControllerDescription
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = QLItemPresenterViewController;
  additionalItemViewControllerDescription = [(QLItemViewController *)&v7 additionalItemViewControllerDescription];
  v5 = [v3 stringWithFormat:@"%@\n\tPreview item: %@", additionalItemViewControllerDescription, self->_previewItem];

  return v5;
}

- (void)updatePreviewItemDisplayState:(id)state
{
  stateCopy = state;
  currentPreviewViewController = [(QLItemAggregatedViewController *)self currentPreviewViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    currentPreviewViewController2 = [(QLItemAggregatedViewController *)self currentPreviewViewController];
    [currentPreviewViewController2 updatePreviewItemDisplayState:stateCopy];
  }
}

- (void)_setupScreenTimeHandling
{
  v16 = *MEMORY[0x277D85DE8];
  if (![(QLItemPresenterViewController *)self _processIsEntitledToCheckScreenTimePolicy])
  {
    v6 = MEMORY[0x277D43EF8];
    v7 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v7 = *v6;
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    v14 = 138412290;
    selfCopy3 = self;
    v8 = "Can't set up screen time management because process is not entitled to check screen time policy. %@ #PreviewController";
    goto LABEL_15;
  }

  if (![(QLItemPresenterViewController *)self _processIsEntitledToConfigureScreenTime])
  {
    v9 = MEMORY[0x277D43EF8];
    v7 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v7 = *v9;
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    v14 = 138412290;
    selfCopy3 = self;
    v8 = "Can't set up screen time management because process is not entitled to configure screen time. %@ #PreviewController";
    goto LABEL_15;
  }

  previewItem = [(QLItemPresenterViewController *)self previewItem];
  v4 = [(QLItemPresenterViewController *)self _shouldApplyScreenTimeMoviePolicyForItem:previewItem];

  if (v4)
  {
    v5 = *MEMORY[0x277D85DE8];

    [(QLItemPresenterViewController *)self _setupScreenTimeCategoryHandling];
    return;
  }

  screenTimePolicyBundleIdentifier = [(QLItemPresenterViewController *)self screenTimePolicyBundleIdentifier];

  if (!screenTimePolicyBundleIdentifier)
  {
    v13 = MEMORY[0x277D43EF8];
    v7 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v7 = *v13;
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    v14 = 138412290;
    selfCopy3 = self;
    v8 = "No need to set up screen time management for preview controller: %@. #PreviewController";
LABEL_15:
    _os_log_impl(&dword_23A714000, v7, OS_LOG_TYPE_INFO, v8, &v14, 0xCu);
LABEL_16:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  v12 = *MEMORY[0x277D85DE8];

  [(QLItemPresenterViewController *)self _setupScreenTimeApplicationHandling];
}

- (void)_setupScreenTimeCategoryHandling
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277D04BE0]);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __65__QLItemPresenterViewController__setupScreenTimeCategoryHandling__block_invoke;
  v9 = &unk_278B57858;
  objc_copyWeak(&v10, &location);
  v4 = [v3 initWithPolicyChangeHandler:&v6];
  screenTimeCategoryMonitor = self->_screenTimeCategoryMonitor;
  self->_screenTimeCategoryMonitor = v4;

  [(QLItemPresenterViewController *)self _queryScreenTimeCategoryPolicy:v6];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __65__QLItemPresenterViewController__setupScreenTimeCategoryHandling__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queryScreenTimeCategoryPolicy];
}

- (void)_setupScreenTimeApplicationHandling
{
  screenTimePolicyBundleIdentifier = [(QLItemPresenterViewController *)self screenTimePolicyBundleIdentifier];
  objc_initWeak(&location, self);
  v4 = objc_alloc(MEMORY[0x277D04BD8]);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __68__QLItemPresenterViewController__setupScreenTimeApplicationHandling__block_invoke;
  v10 = &unk_278B57858;
  objc_copyWeak(&v11, &location);
  v5 = [v4 initWithPolicyChangeHandler:&v7];
  screenTimeApplicationMonitor = self->_screenTimeApplicationMonitor;
  self->_screenTimeApplicationMonitor = v5;

  [(QLItemPresenterViewController *)self _queryScreenTimePolicyForBundleIdentifier:screenTimePolicyBundleIdentifier, v7, v8, v9, v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __68__QLItemPresenterViewController__setupScreenTimeApplicationHandling__block_invoke(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 screenTimePolicyBundleIdentifier];
  [v2 _queryScreenTimePolicyForBundleIdentifier:v1];
}

- (void)_queryScreenTimePolicyForBundleIdentifier:(id)identifier
{
  v11[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  screenTimeApplicationMonitor = self->_screenTimeApplicationMonitor;
  v11[0] = identifierCopy;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__QLItemPresenterViewController__queryScreenTimePolicyForBundleIdentifier___block_invoke;
  v8[3] = &unk_278B57880;
  objc_copyWeak(&v9, &location);
  [(DMFApplicationPolicyMonitor *)screenTimeApplicationMonitor requestPoliciesForBundleIdentifiers:v6 completionHandler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  v7 = *MEMORY[0x277D85DE8];
}

void __75__QLItemPresenterViewController__queryScreenTimePolicyForBundleIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&v9, (a1 + 32));
  v7 = v5;
  v8 = v6;
  QLRunInMainThread();

  objc_destroyWeak(&v9);
}

void __75__QLItemPresenterViewController__queryScreenTimePolicyForBundleIdentifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _didReceiveNewScreenTimeApplicationPolicies:*(a1 + 32) error:*(a1 + 40)];
}

- (void)_queryScreenTimeCategoryPolicy
{
  v9[1] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  screenTimeCategoryMonitor = self->_screenTimeCategoryMonitor;
  v9[0] = *MEMORY[0x277CF95D0];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__QLItemPresenterViewController__queryScreenTimeCategoryPolicy__block_invoke;
  v6[3] = &unk_278B57880;
  objc_copyWeak(&v7, &location);
  [(DMFCategoryPolicyMonitor *)screenTimeCategoryMonitor requestPoliciesForCategoryIdentifiers:v4 completionHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
  v5 = *MEMORY[0x277D85DE8];
}

void __63__QLItemPresenterViewController__queryScreenTimeCategoryPolicy__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&v9, (a1 + 32));
  v7 = v5;
  v8 = v6;
  QLRunInMainThread();

  objc_destroyWeak(&v9);
}

void __63__QLItemPresenterViewController__queryScreenTimeCategoryPolicy__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _didReceiveNewScreenTimeCategoryPolicy:*(a1 + 32) error:*(a1 + 40)];
}

- (void)_didReceiveNewScreenTimeCategoryPolicy:(id)policy error:(id)error
{
  policyCopy = policy;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (!error)
  {
    v6 = [policyCopy objectForKeyedSubscript:*MEMORY[0x277CF95D0]];
    -[QLItemPresenterViewController _didReceiveNewScreenTimePolicy:](self, "_didReceiveNewScreenTimePolicy:", [v6 integerValue]);
  }
}

- (void)_didReceiveNewScreenTimeApplicationPolicies:(id)policies error:(id)error
{
  policiesCopy = policies;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (!error)
  {
    screenTimePolicyBundleIdentifier = [(QLItemPresenterViewController *)self screenTimePolicyBundleIdentifier];
    v7 = [policiesCopy objectForKeyedSubscript:screenTimePolicyBundleIdentifier];

    -[QLItemPresenterViewController _didReceiveNewScreenTimePolicy:](self, "_didReceiveNewScreenTimePolicy:", [v7 integerValue]);
  }
}

- (void)_didReceiveNewScreenTimePolicy:(int64_t)policy
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (policy)
  {

    [(QLItemPresenterViewController *)self _showScreenTimeViewControllerWithPolicy:policy];
  }

  else
  {

    [(QLItemPresenterViewController *)self _hideScreenTimeViewControllerIfNeeded];
  }
}

- (void)_showScreenTimeViewControllerWithPolicy:(int64_t)policy
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  screenTimeController = [(QLItemPresenterViewController *)self screenTimeController];
  [(QLItemPresenterViewController *)self showPreviewViewController:screenTimeController];
  [screenTimeController showBlockingViewControllerWithPolicy:policy];
}

- (void)_hideScreenTimeViewControllerIfNeeded
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentPreviewViewController = [(QLItemAggregatedViewController *)self currentPreviewViewController];
  screenTimeController = [(QLItemPresenterViewController *)self screenTimeController];

  if (currentPreviewViewController == screenTimeController)
  {
    screenTimeController2 = [(QLItemPresenterViewController *)self screenTimeController];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __70__QLItemPresenterViewController__hideScreenTimeViewControllerIfNeeded__block_invoke;
    v6[3] = &unk_278B57190;
    v6[4] = self;
    [screenTimeController2 hideBlockingViewControllerWithCompletionHandler:v6];
  }
}

void __70__QLItemPresenterViewController__hideScreenTimeViewControllerIfNeeded__block_invoke(uint64_t a1)
{
  [*(a1 + 32) showPreviewProviderViewController];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1224);
  *(v2 + 1224) = 0;
}

- (QLScreenTimeItemViewController)screenTimeController
{
  v23 = *MEMORY[0x277D85DE8];
  screenTimeController = self->_screenTimeController;
  if (!screenTimeController)
  {
    previewItem = [(QLItemPresenterViewController *)self previewItem];
    v5 = [(QLItemPresenterViewController *)self _shouldApplyScreenTimeMoviePolicyForItem:previewItem];

    if (v5)
    {
      v6 = [QLScreenTimeItemViewController alloc];
      v7 = [(QLScreenTimeItemViewController *)v6 initWithCategoryIdentifier:*MEMORY[0x277CF95D0]];
      v8 = self->_screenTimeController;
      self->_screenTimeController = v7;
    }

    else
    {
      screenTimePolicyBundleIdentifier = [(QLItemPresenterViewController *)self screenTimePolicyBundleIdentifier];

      if (screenTimePolicyBundleIdentifier)
      {
        v10 = [QLScreenTimeItemViewController alloc];
        screenTimePolicyBundleIdentifier2 = [(QLItemPresenterViewController *)self screenTimePolicyBundleIdentifier];
        v12 = [(QLScreenTimeItemViewController *)v10 initWithBundleIdentifier:screenTimePolicyBundleIdentifier2];
        v13 = self->_screenTimeController;
        self->_screenTimeController = v12;
      }

      else
      {
        v14 = MEMORY[0x277D43EF8];
        v15 = *MEMORY[0x277D43EF8];
        if (!*MEMORY[0x277D43EF8])
        {
          QLSInitLogging();
          v15 = *v14;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v21 = 138412290;
          selfCopy = self;
          _os_log_impl(&dword_23A714000, v15, OS_LOG_TYPE_ERROR, "Cannot set up screen time preview controller: %@. #PreviewController", &v21, 0xCu);
        }
      }
    }

    [(QLItemViewController *)self->_screenTimeController setIsContentManaged:[(QLItemViewController *)self isContentManaged]];
    v16 = self->_screenTimeController;
    createPreviewContext = [(QLItem *)self->_previewItem createPreviewContext];
    [(QLItemViewController *)v16 loadPreviewControllerIfNeededWithContents:0 context:createPreviewContext completionHandler:0];

    screenTimeController = self->_screenTimeController;
  }

  v18 = screenTimeController;
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)screenTimePolicyBundleIdentifier
{
  previewItem = [(QLItemPresenterViewController *)self previewItem];
  previewItemType = [previewItem previewItemType];

  if (previewItemType == 12)
  {
    v5 = MEMORY[0x277D43E98];
    previewItem2 = [(QLItemPresenterViewController *)self previewItem];
    v7 = [v5 ql_applicationBundleIdentifierOfExtensionForItem:previewItem2];
LABEL_5:

    goto LABEL_7;
  }

  v8 = MEMORY[0x277D43F90];
  previewItem3 = [(QLItemPresenterViewController *)self previewItem];
  previewItemContentType = [previewItem3 previewItemContentType];
  LODWORD(v8) = [v8 isIWorkDocumentType:previewItemContentType];

  if (v8)
  {
    v11 = MEMORY[0x277D43EE0];
    previewItem2 = [(QLItemPresenterViewController *)self previewItem];
    previewItemContentType2 = [previewItem2 previewItemContentType];
    v7 = [v11 screentimeiWorkBundleForUTI:previewItemContentType2];

    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (BOOL)_shouldApplyScreenTimeMoviePolicyForItem:(id)item
{
  previewItem = [(QLItemPresenterViewController *)self previewItem];
  if ([previewItem previewItemType] == 1)
  {
    v5 = MEMORY[0x277CDAB20];
    previewItem2 = [(QLItemPresenterViewController *)self previewItem];
    previewItemContentType = [previewItem2 previewItemContentType];
    v8 = [v5 isTypeAudioOnly:previewItemContentType] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  hostApplicationBundleIdentifier = [(QLItemPresenterViewController *)self hostApplicationBundleIdentifier];
  v10 = [hostApplicationBundleIdentifier isEqualToString:@"com.apple.DocumentsApp"];

  return v8 & v10;
}

- (BOOL)_processIsEntitledToCheckScreenTimePolicy
{
  if (_processIsEntitledToCheckScreenTimePolicy_onceToken != -1)
  {
    [QLItemPresenterViewController _processIsEntitledToCheckScreenTimePolicy];
  }

  return _processIsEntitledToCheckScreenTimePolicy_entitled;
}

BOOL __74__QLItemPresenterViewController__processIsEntitledToCheckScreenTimePolicy__block_invoke()
{
  result = _QLGetBoolEntitlement(@"com.apple.private.dmd.policy");
  _processIsEntitledToCheckScreenTimePolicy_entitled = result;
  return result;
}

- (BOOL)_processIsEntitledToConfigureScreenTime
{
  if (_processIsEntitledToConfigureScreenTime_onceToken != -1)
  {
    [QLItemPresenterViewController _processIsEntitledToConfigureScreenTime];
  }

  return _processIsEntitledToConfigureScreenTime_entitled;
}

BOOL __72__QLItemPresenterViewController__processIsEntitledToConfigureScreenTime__block_invoke()
{
  result = _QLGetBoolEntitlement(@"com.apple.private.screen-time");
  _processIsEntitledToConfigureScreenTime_entitled = result;
  return result;
}

@end