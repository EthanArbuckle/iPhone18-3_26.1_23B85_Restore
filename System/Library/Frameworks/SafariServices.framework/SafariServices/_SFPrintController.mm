@interface _SFPrintController
- (BOOL)_isContentManaged;
- (BOOL)setUpPrintController;
- (NSString)suggestedPDFFileName;
- (SFDialogPresenting)dialogPresenter;
- (SFPrintPageRenderer)printRenderer;
- (UIPrintInfo)printInfo;
- (WKWebView)webView;
- (_SFPrintController)init;
- (_SFPrintControllerDelegate)delegate;
- (_SFReaderController)readerController;
- (id)_dequeuePrintItem;
- (id)presentingViewControllerForPrintPageRenderer:(id)renderer;
- (id)printInteractionControllerParentViewController:(id)controller;
- (void)_didFinishPrintingCurrentItemWithResult:(int64_t)result fromPrintInteractionControllerCompletion:(BOOL)completion;
- (void)_enqueuePrintItem:(id)item;
- (void)_preparePrintInteractionControllerForUsage:(int64_t)usage onlyIfLoaded:(BOOL)loaded completion:(id)completion;
- (void)_printCurrentItem;
- (void)_shouldAllowBlockedPrintWithCompletionHandler:(id)handler;
- (void)_shouldPrintWhileLoadingForUsage:(int64_t)usage completionHandler:(id)handler;
- (void)clearQueue;
- (void)dealloc;
- (void)getPDFDataForUsage:(int64_t)usage withCompletion:(id)completion;
- (void)handleNextPrintRequest;
- (void)preparePrintInteractionControllerForUsage:(int64_t)usage completion:(id)completion;
- (void)printFrame:(id)frame initiatedByWebContent:(BOOL)content completion:(id)completion;
- (void)printInteractionControllerDidFinish;
- (void)updatePrintInfo;
@end

@implementation _SFPrintController

- (_SFPrintController)init
{
  v8.receiver = self;
  v8.super_class = _SFPrintController;
  v2 = [(_SFPrintController *)&v8 init];
  array = [MEMORY[0x1E695DF70] array];
  printQueue = v2->_printQueue;
  v2->_printQueue = array;

  v5 = objc_alloc_init(MEMORY[0x1E69C5A18]);
  printInteractionController = v2->_printInteractionController;
  v2->_printInteractionController = v5;

  return v2;
}

- (void)clearQueue
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = self->_printQueue;
  array = [MEMORY[0x1E695DF70] array];
  printQueue = self->_printQueue;
  self->_printQueue = array;

  if (self->_hasSetupPrintController)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v3;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v20 + 1) + 8 * i) completeWithResult:2];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v8);
    }
  }

  else
  {
    if (self->_currentItem)
    {
      if (!self->_isDisplayingPrintInteractionController || ([(UIPrintInteractionController *)self->_printInteractionController dismissAnimated:1], self->_currentItem))
      {
        [(_SFPrintController *)self _didFinishPrintingCurrentItemWithResult:2 fromPrintInteractionControllerCompletion:0];
      }
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = v3;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v16 + 1) + 8 * j) completeWithResult:{2, v16}];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v13);
    }
  }
}

- (void)dealloc
{
  [(_SFPrintController *)self clearQueue];
  v3.receiver = self;
  v3.super_class = _SFPrintController;
  [(_SFPrintController *)&v3 dealloc];
}

- (void)_preparePrintInteractionControllerForUsage:(int64_t)usage onlyIfLoaded:(BOOL)loaded completion:(id)completion
{
  loadedCopy = loaded;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [WeakRetained printControllerPageIsLoading:self];
  v11 = [WeakRetained printControllerShouldPrintReader:self];
  v12 = objc_loadWeakRetained(&self->_readerController);
  v13 = v12;
  if (!loadedCopy || (v10 & 1) == 0 && (!v11 || ![v12 isLoadingNextPage]))
  {
    v14 = objc_loadWeakRetained(&self->_webView);
    v15 = v14;
    if (usage == 3 && ([v14 _isDisplayingPDF] & 1) == 0)
    {
      completionCopy[2](completionCopy, 1);
      goto LABEL_18;
    }

    [(UIPrintInteractionController *)self->_printInteractionController setShowsPaperSelectionForLoadedPapers:1];
    [(UIPrintInteractionController *)self->_printInteractionController setIsContentManaged:[(_SFPrintController *)self _isContentManaged]];
    if ([v15 _isDisplayingPDF])
    {
      [(UIPrintInteractionController *)self->_printInteractionController setDelegate:self];
      [(UIPrintInteractionController *)self->_printInteractionController setPrintPageRenderer:0];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __89___SFPrintController__preparePrintInteractionControllerForUsage_onlyIfLoaded_completion___block_invoke_2;
      v33[3] = &unk_1E8490CE0;
      v33[4] = self;
      v34 = completionCopy;
      [v15 _getMainResourceDataWithCompletionHandler:v33];

LABEL_18:
      goto LABEL_19;
    }

    printRenderer = [(_SFPrintController *)self printRenderer];
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __89___SFPrintController__preparePrintInteractionControllerForUsage_onlyIfLoaded_completion___block_invoke_3;
    v25 = &unk_1E8490D08;
    v17 = printRenderer;
    v26 = v17;
    selfCopy = self;
    v32 = v11;
    v18 = v13;
    v28 = v18;
    v29 = v15;
    v30 = completionCopy;
    usageCopy = usage;
    v19 = _Block_copy(&v22);
    if (usage != 2)
    {
      v20 = [(SFPrintQueueItem *)self->_currentItem frameHandle:v22];

      if (v20)
      {
        frameHandle = [(SFPrintQueueItem *)self->_currentItem frameHandle];
        v19[2](v19, frameHandle);

        goto LABEL_17;
      }

      if (v11)
      {
        [v18 prepareReaderPrintingIFrameWithCompletion:v19];
        goto LABEL_17;
      }
    }

    v19[2](v19, 0);
LABEL_17:

    goto LABEL_18;
  }

  objc_initWeak(location, self);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __89___SFPrintController__preparePrintInteractionControllerForUsage_onlyIfLoaded_completion___block_invoke;
  v35[3] = &unk_1E8490CB8;
  v36 = completionCopy;
  objc_copyWeak(v37, location);
  v37[1] = usage;
  [(_SFPrintController *)self _shouldPrintWhileLoadingForUsage:usage completionHandler:v35];
  objc_destroyWeak(v37);

  objc_destroyWeak(location);
LABEL_19:
}

- (void)_printCurrentItem
{
  objc_initWeak(&location, self);
  [(_SFPrintController *)self updatePrintInfo];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39___SFPrintController__printCurrentItem__block_invoke;
  v3[3] = &unk_1E8490D58;
  v3[4] = self;
  objc_copyWeak(&v4, &location);
  [(_SFPrintController *)self preparePrintInteractionControllerForUsage:0 completion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)_didFinishPrintingCurrentItemWithResult:(int64_t)result fromPrintInteractionControllerCompletion:(BOOL)completion
{
  completionCopy = completion;
  if (completion && !self->_currentItem)
  {
    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __103___SFPrintController__didFinishPrintingCurrentItemWithResult_fromPrintInteractionControllerCompletion___block_invoke;
    v14[3] = &unk_1E848F8F0;
    objc_copyWeak(&v15, &location);
    dispatch_async(MEMORY[0x1E69E96A0], v14);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    if (!result)
    {
      self->_suppressingPrintUI = 0;
    }

    v7 = self->_currentItem;
    currentItem = self->_currentItem;
    self->_currentItem = 0;

    cachedPrintPageRenderer = self->_cachedPrintPageRenderer;
    self->_cachedPrintPageRenderer = 0;

    if (completionCopy)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __103___SFPrintController__didFinishPrintingCurrentItemWithResult_fromPrintInteractionControllerCompletion___block_invoke_2;
      block[3] = &unk_1E8490D80;
      selfCopy = self;
      resultCopy = result;
      v11 = v7;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      [(SFPrintQueueItem *)v7 completeWithResult:result];
      [(_SFPrintController *)self handleNextPrintRequest];
    }
  }
}

- (BOOL)_isContentManaged
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v5 = [WeakRetained URL];
  safari_URLByNormalizingBlobURL = [v5 safari_URLByNormalizingBlobURL];
  v7 = [mEMORY[0x1E69ADFB8] isURLManaged:safari_URLByNormalizingBlobURL];

  return v7;
}

- (void)_shouldPrintWhileLoadingForUsage:(int64_t)usage completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = 0;
  if (usage <= 1)
  {
    if (usage)
    {
      v8 = 0;
      if (usage != 1)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_10;
  }

  if (usage == 2)
  {
LABEL_10:
    v10 = MEMORY[0x1E696AEC0];
    v11 = _WBSLocalizedString();
    v8 = [v10 stringWithFormat:v11, self->_loadingDialogTitle];

    v7 = _WBSLocalizedString();
    goto LABEL_11;
  }

  v8 = 0;
  if (usage != 3)
  {
LABEL_11:
    WeakRetained = objc_loadWeakRetained(&self->_dialogPresenter);
    v13 = [MEMORY[0x1E69B1B00] continuePrintingDialogWithTitle:v8 message:v7 applicationModal:self->_hasSetupPrintController completionHandler:handlerCopy];
    [WeakRetained presentDialog:v13 sender:self];

    goto LABEL_12;
  }

  v9 = WBS_LOG_CHANNEL_PREFIXPrinting();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D4644000, v9, OS_LOG_TYPE_DEFAULT, "Converting webpage to PDF when it's loading", buf, 2u);
  }

  handlerCopy[2](handlerCopy, 1);
LABEL_12:
}

- (void)_shouldAllowBlockedPrintWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_dialogPresenter);
  v5 = [MEMORY[0x1E69B1B00] printBlockedDialogWithCompletionHandler:handlerCopy];

  [WeakRetained presentDialog:v5 sender:self];
}

- (void)_enqueuePrintItem:(id)item
{
  printQueue = self->_printQueue;
  itemCopy = item;
  if ([(NSMutableArray *)printQueue count]< 0xA)
  {
    [(NSMutableArray *)self->_printQueue addObject:itemCopy];

    [(_SFPrintController *)self handleNextPrintRequest];
  }

  else
  {
    [itemCopy completeWithResult:2];
  }
}

- (id)_dequeuePrintItem
{
  if ([(NSMutableArray *)self->_printQueue count])
  {
    firstObject = [(NSMutableArray *)self->_printQueue firstObject];
    [(NSMutableArray *)self->_printQueue removeObjectAtIndex:0];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (void)printFrame:(id)frame initiatedByWebContent:(BOOL)content completion:(id)completion
{
  contentCopy = content;
  completionCopy = completion;
  frameCopy = frame;
  v10 = [[SFPrintQueueItem alloc] initWithFrameHandle:frameCopy initiatedByWebContent:contentCopy completionHandler:completionCopy];

  [(_SFPrintController *)self _enqueuePrintItem:v10];
}

- (void)getPDFDataForUsage:(int64_t)usage withCompletion:(id)completion
{
  completionCopy = completion;
  hasSetupPrintController = self->_hasSetupPrintController;
  if (hasSetupPrintController || [(_SFPrintController *)self setUpPrintController])
  {
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x2020000000;
    v23 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __56___SFPrintController_getPDFDataForUsage_withCompletion___block_invoke;
    aBlock[3] = &unk_1E8490DA8;
    v19 = completionCopy;
    v20 = v22;
    v21 = !hasSetupPrintController;
    aBlock[4] = self;
    v8 = _Block_copy(aBlock);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __56___SFPrintController_getPDFDataForUsage_withCompletion___block_invoke_29;
    v15[3] = &unk_1E8490E20;
    v9 = v8;
    v15[4] = self;
    v16 = v9;
    usageCopy = usage;
    [(_SFPrintController *)self preparePrintInteractionControllerForUsage:usage completion:v15];
    v10 = dispatch_time(0, 5000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56___SFPrintController_getPDFDataForUsage_withCompletion___block_invoke_34;
    block[3] = &unk_1E8490E48;
    v14 = v22;
    completionCopy = v9;
    v13 = completionCopy;
    dispatch_after(v10, MEMORY[0x1E69E96A0], block);

    _Block_object_dispose(v22, 8);
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXPrinting();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_SFPrintController getPDFDataForUsage:v11 withCompletion:?];
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)handleNextPrintRequest
{
  if (!self->_isDisplayingPrintInteractionController && !self->_currentItem)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = [WeakRetained printControllerCanPresentPrintUI:self];

    if (v4)
    {
      _dequeuePrintItem = [(_SFPrintController *)self _dequeuePrintItem];
      currentItem = self->_currentItem;
      self->_currentItem = _dequeuePrintItem;

      v7 = self->_currentItem;
      if (v7)
      {
        if ([(SFPrintQueueItem *)v7 initiatedByWebContent])
        {
          if (self->_suppressingPrintUI)
          {
            objc_initWeak(&location, self);
            v8[0] = MEMORY[0x1E69E9820];
            v8[1] = 3221225472;
            v8[2] = __44___SFPrintController_handleNextPrintRequest__block_invoke;
            v8[3] = &unk_1E8490E70;
            objc_copyWeak(&v9, &location);
            [(_SFPrintController *)self _shouldAllowBlockedPrintWithCompletionHandler:v8];
            objc_destroyWeak(&v9);
            objc_destroyWeak(&location);
            return;
          }

          self->_suppressingPrintUI = 1;
        }

        [(_SFPrintController *)self _printCurrentItem];
      }
    }
  }
}

- (SFPrintPageRenderer)printRenderer
{
  cachedPrintPageRenderer = self->_cachedPrintPageRenderer;
  if (!cachedPrintPageRenderer)
  {
    v4 = objc_alloc_init(SFPrintPageRenderer);
    v5 = self->_cachedPrintPageRenderer;
    self->_cachedPrintPageRenderer = v4;

    [(SFPrintPageRenderer *)self->_cachedPrintPageRenderer setDelegate:self];
    cachedPrintPageRenderer = self->_cachedPrintPageRenderer;
  }

  v6 = cachedPrintPageRenderer;

  return v6;
}

- (NSString)suggestedPDFFileName
{
  [(_SFPrintController *)self updatePrintInfo];
  pageTitle = self->_pageTitle;

  return pageTitle;
}

- (UIPrintInfo)printInfo
{
  [(_SFPrintController *)self updatePrintInfo];
  cachedPrintInfo = self->_cachedPrintInfo;

  return cachedPrintInfo;
}

- (void)updatePrintInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v3 = objc_loadWeakRetained(&self->_delegate);
  urlString = self->_urlString;
  self->_urlString = 0;

  if (objc_opt_respondsToSelector())
  {
    v5 = [v3 URLStringForPrintController:self];
    v6 = self->_urlString;
    self->_urlString = v5;
  }

  v7 = self->_urlString;
  if (v7)
  {
    v8 = v7;
    v9 = self->_urlString;
    self->_urlString = v8;
  }

  else
  {
    v9 = [WeakRetained URL];
    safari_userVisibleString = [v9 safari_userVisibleString];
    v11 = self->_urlString;
    self->_urlString = safari_userVisibleString;
  }

  pageTitle = self->_pageTitle;
  self->_pageTitle = 0;

  if (objc_opt_respondsToSelector())
  {
    v13 = [v3 pageTitleForPrintController:self];
    v14 = self->_pageTitle;
    self->_pageTitle = v13;
  }

  v15 = self->_pageTitle;
  if (v15)
  {
    title = v15;
  }

  else
  {
    title = [WeakRetained title];
  }

  v17 = self->_pageTitle;
  self->_pageTitle = title;

  safari_filenameByFixingIllegalCharacters = [(NSString *)self->_pageTitle safari_filenameByFixingIllegalCharacters];
  v19 = self->_pageTitle;
  self->_pageTitle = safari_filenameByFixingIllegalCharacters;

  loadingDialogTitle = self->_loadingDialogTitle;
  self->_loadingDialogTitle = 0;

  if (objc_opt_respondsToSelector())
  {
    v21 = [v3 loadingDialogPageTitleForPrintController:self];
    v22 = self->_loadingDialogTitle;
    self->_loadingDialogTitle = v21;
  }

  v23 = self->_loadingDialogTitle;
  if (v23 || (v23 = self->_pageTitle) != 0)
  {
    title2 = v23;
  }

  else
  {
    title2 = [WeakRetained title];
  }

  v25 = self->_loadingDialogTitle;
  self->_loadingDialogTitle = title2;

  printInfo = [MEMORY[0x1E69C5A10] printInfo];
  cachedPrintInfo = self->_cachedPrintInfo;
  self->_cachedPrintInfo = printInfo;

  [(UIPrintInfo *)self->_cachedPrintInfo setJobName:self->_pageTitle];
  if (objc_opt_respondsToSelector())
  {
    [v3 printController:self didCreatePrintInfo:self->_cachedPrintInfo];
  }
}

- (BOOL)setUpPrintController
{
  if (self->_isDisplayingPrintInteractionController)
  {
    return 0;
  }

  if (self->_currentItem)
  {
    return 0;
  }

  v4 = [[SFPrintQueueItem alloc] initWithFrameHandle:0 initiatedByWebContent:0 completionHandler:0];
  currentItem = self->_currentItem;
  self->_currentItem = v4;

  result = 1;
  self->_hasSetupPrintController = 1;
  return result;
}

- (void)preparePrintInteractionControllerForUsage:(int64_t)usage completion:(id)completion
{
  completionCopy = completion;
  printInfo = [(_SFPrintController *)self printInfo];
  [(UIPrintInteractionController *)self->_printInteractionController setPrintInfo:printInfo];

  [(_SFPrintController *)self _preparePrintInteractionControllerForUsage:usage onlyIfLoaded:1 completion:completionCopy];
}

- (void)printInteractionControllerDidFinish
{
  self->_hasSetupPrintController = 0;
  suppressingPrintUI = self->_suppressingPrintUI;
  if (self->_isDisplayingPrintInteractionController)
  {
    self->_isDisplayingPrintInteractionController = 0;
  }

  [(_SFPrintController *)self _didFinishPrintingCurrentItemWithResult:0 fromPrintInteractionControllerCompletion:?];
  self->_suppressingPrintUI = suppressingPrintUI;
}

- (id)presentingViewControllerForPrintPageRenderer:(id)renderer
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained presentingViewControllerForPrintController:self];

  return v5;
}

- (id)printInteractionControllerParentViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained presentingViewControllerForPrintController:self];

  return v5;
}

- (WKWebView)webView
{
  WeakRetained = objc_loadWeakRetained(&self->_webView);

  return WeakRetained;
}

- (_SFReaderController)readerController
{
  WeakRetained = objc_loadWeakRetained(&self->_readerController);

  return WeakRetained;
}

- (SFDialogPresenting)dialogPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_dialogPresenter);

  return WeakRetained;
}

- (_SFPrintControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end