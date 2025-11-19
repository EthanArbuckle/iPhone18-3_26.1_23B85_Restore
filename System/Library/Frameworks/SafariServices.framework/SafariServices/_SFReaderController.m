@interface _SFReaderController
- (BOOL)_readerWebViewIsReady;
- (BOOL)_webView:(id)a3 performDataInteractionOperationWithItemProviders:(id)a4;
- (NSString)readerLanguageTag;
- (NSURL)readerURL;
- (WBSReaderFontManager)fontManager;
- (WKUIDelegatePrivate)webViewUIDelegate;
- (WKWebView)readerWebView;
- (WKWebView)webView;
- (_SFReaderController)initWithWebView:(id)a3;
- (_SFReaderControllerDelegate)delegate;
- (_SFReaderTestController)testController;
- (id)_webView:(id)a3 actionsForElement:(id)a4 defaultActions:(id)a5;
- (id)readerControllerProxy;
- (id)webViewForSummarizationAnimationCoordinator:(id)a3;
- (unint64_t)_webView:(id)a3 willUpdateDataInteractionOperationToOperation:(unint64_t)a4 forSession:(id)a5;
- (void)_collectReaderContentForMailWithCompletion:(id)a3;
- (void)_performActionsDelayedUntilReaderWebViewIsReady;
- (void)_saveConfigurationAndSendToWebProcess;
- (void)_sendReaderAvailabilityNotificationForState:(id)a3 reason:(int64_t)a4;
- (void)_setUpReaderActivityListener;
- (void)_updateJavaScriptEnabled;
- (void)_webView:(id)a3 contextMenuConfigurationForElement:(id)a4 completionHandler:(id)a5;
- (void)_webView:(id)a3 contextMenuDidEndForElement:(id)a4;
- (void)_webView:(id)a3 contextMenuForElement:(id)a4 willCommitWithAnimator:(id)a5;
- (void)_webView:(id)a3 contextMenuWillPresentForElement:(id)a4;
- (void)_webView:(id)a3 dataInteraction:(id)a4 session:(id)a5 didEndWithOperation:(unint64_t)a6;
- (void)_webView:(id)a3 dataInteraction:(id)a4 sessionWillBegin:(id)a5;
- (void)_webView:(id)a3 dataInteractionOperationWasHandled:(BOOL)a4 forSession:(id)a5 itemProviders:(id)a6;
- (void)_webView:(id)a3 getAlternateURLFromImage:(id)a4 completionHandler:(id)a5;
- (void)activateFont:(id)a3;
- (void)checkReaderAvailability;
- (void)collectArticleContent;
- (void)collectReaderContentForMailWithCompletion:(id)a3;
- (void)collectReadingListInfoWithBookmarkID:(int)a3 completionHandler:(id)a4;
- (void)contentDidBecomeReadyWithArticleText:(id)a3;
- (void)createArticleFinder;
- (void)deactivateReaderNow:(unint64_t)a3;
- (void)dealloc;
- (void)decreaseReaderTextSize;
- (void)didCollectArticleContent:(id)a3;
- (void)didCollectReaderContentForMail:(id)a3;
- (void)didCollectReadingListItemInfo:(id)a3 bookmarkID:(id)a4;
- (void)didCreateReaderWebView:(id)a3;
- (void)didDetermineAdditionalTextSamples:(id)a3;
- (void)didDetermineReaderAvailability:(id)a3;
- (void)didDetermineReaderAvailabilityForDynamicCheck:(id)a3;
- (void)didEncounterErrorForSummarization:(id)a3;
- (void)didFinishPresentationUpdateAfterTransitioningToReader;
- (void)didFinishSummarization:(id)a3;
- (void)didPrepareReaderContentForPrinting:(id)a3;
- (void)didRequestOnDeviceSummary;
- (void)didSetReaderConfiguration:(id)a3;
- (void)getReaderArticleTitleWithCompletion:(id)a3;
- (void)increaseReaderTextSize;
- (void)insertSummaryTextPlaceholder;
- (void)insertSummaryTextPlaceholderForSummarizationAnimationCoordinator:(id)a3 completionHandler:(id)a4;
- (void)invalidate;
- (void)loadNewArticle;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)owningWebViewDidCommitNavigation;
- (void)prepareReaderPrintingIFrameWithCompletion:(id)a3;
- (void)previewReaderImageURLWithCompletion:(id)a3;
- (void)readerTextWasExtracted:(id)a3 withMetadata:(id)a4 wasDeterminingAvailabilility:(BOOL)a5;
- (void)replacePlaceholderWithSummaryForSummarizationAnimationCoordinator:(id)a3;
- (void)reportReaderEvent:(int64_t)a3 dataToReport:(id)a4;
- (void)resetReaderTextSize;
- (void)sendConfigurationToWebProcess;
- (void)setArticleSummary:(id)a3 withSummaryHeader:(id)a4 tableOfContentsHeader:(id)a5 readerURLString:(id)a6 titles:(id)a7 paths:(id)a8 trailingText:(id)a9 tableOfContentsType:(int)a10 attribution:(id)a11;
- (void)setOnDeviceSummaryButtonWithTitle:(id)a3;
- (void)setReaderFont:(id)a3;
- (void)setReaderInitialTopScrollOffset:(int64_t)a3 configuration:(id)a4 isViewingArchive:(BOOL)a5 scrollOffsetDictionary:(id)a6;
- (void)setReaderIsActive:(BOOL)a3;
- (void)setReaderLanguageTag:(id)a3;
- (void)setReaderTheme:(int64_t)a3 forAppearance:(int64_t)a4;
- (void)setTextVisibilityForSummarizationAnimationCoordinator:(id)a3 isVisible:(BOOL)a4;
- (void)setUpReaderWebViewIfNeededAndPerformBlock:(id)a3;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
@end

@implementation _SFReaderController

- (void)_setUpReaderActivityListener
{
  v3 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F506EB00];
  eventsListenerInterface = self->_eventsListenerInterface;
  self->_eventsListenerInterface = v3;

  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v6 = [WeakRetained _remoteObjectRegistry];

  [v6 registerExportedObject:self interface:self->_eventsListenerInterface];
}

- (void)_updateJavaScriptEnabled
{
  v3 = [MEMORY[0x1E695E000] safari_browserDefaults];
  -[WBSReaderConfigurationManager setJavaScriptEnabled:](self->_configurationManager, "setJavaScriptEnabled:", [v3 safari_isJavaScriptEnabled]);
}

- (NSURL)readerURL
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([WeakRetained readerURLForReaderController:self], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = objc_loadWeakRetained(&self->_webView);
    v6 = [v5 _committedURL];
    v4 = [v6 safari_URLByReplacingSchemeWithString:@"safari-reader"];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E695E000] safari_browserDefaults];
  [v3 removeObserver:self forKeyPath:*MEMORY[0x1E69B1F00] context:kvoContext_0];

  [(_SFReaderController *)self invalidate];
  v4.receiver = self;
  v4.super_class = _SFReaderController;
  [(_SFReaderController *)&v4 dealloc];
}

- (void)invalidate
{
  if (self->_eventsListenerInterface)
  {
    WeakRetained = objc_loadWeakRetained(&self->_webView);
    v4 = [WeakRetained _remoteObjectRegistry];

    [v4 unregisterExportedObject:self interface:self->_eventsListenerInterface];
    eventsListenerInterface = self->_eventsListenerInterface;
    self->_eventsListenerInterface = 0;
  }

  objc_storeWeak(&self->_readerControllerProxy, 0);
}

- (_SFReaderController)initWithWebView:(id)a3
{
  v13.receiver = self;
  v13.super_class = _SFReaderController;
  v3 = a3;
  v4 = [(_SFReaderController *)&v13 init];
  objc_storeWeak(&v4->_webView, v3);

  [(_SFReaderController *)v4 _setUpReaderActivityListener:v13.receiver];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  bookmarkIdentifierToReadingListItemInfoCompletionMap = v4->_bookmarkIdentifierToReadingListItemInfoCompletionMap;
  v4->_bookmarkIdentifierToReadingListItemInfoCompletionMap = v5;

  v7 = objc_alloc_init(MEMORY[0x1E69C9018]);
  v8 = [MEMORY[0x1E695E000] safari_browserDefaults];
  [v8 addObserver:v4 forKeyPath:*MEMORY[0x1E69B1F00] options:3 context:kvoContext_0];
  v9 = [v8 dictionaryForKey:*MEMORY[0x1E69B1F48]];
  v10 = [objc_alloc(MEMORY[0x1E69C9000]) initWithPersistedSettingsAsDictionaryRepresentation:v9 fontManager:v7 prefersLargerDefaultFontSize:_SFDeviceIsPad()];
  configurationManager = v4->_configurationManager;
  v4->_configurationManager = v10;

  objc_storeWeak(&v4->_fontManager, v7);
  [(WBSReaderConfigurationManager *)v4->_configurationManager setIsOLEDDisplay:MGGetBoolAnswer()];
  [(_SFReaderController *)v4 _updateJavaScriptEnabled];

  return v4;
}

- (id)readerControllerProxy
{
  WeakRetained = objc_loadWeakRetained(&self->_readerControllerProxy);
  if (!WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_webView);
    v5 = [v4 _remoteObjectRegistry];

    v6 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F5098000];
    WeakRetained = [v5 remoteObjectProxyWithInterface:v6];
  }

  objc_storeWeak(&self->_readerControllerProxy, WeakRetained);

  return WeakRetained;
}

- (void)setReaderInitialTopScrollOffset:(int64_t)a3 configuration:(id)a4 isViewingArchive:(BOOL)a5 scrollOffsetDictionary:(id)a6
{
  v6 = a5;
  v13 = a6;
  v10 = a4;
  v11 = [(_SFReaderController *)self readerControllerProxy];
  [v11 setReaderInitialTopScrollOffset:a3 configuration:v10 isViewingArchive:v6];

  if (v13)
  {
    v12 = [(_SFReaderController *)self readerControllerProxy];
    [v12 setInitalArticleScrollPositionAsDictionary:v13];
  }
}

- (void)collectReadingListInfoWithBookmarkID:(int)a3 completionHandler:(id)a4
{
  v4 = *&a3;
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v11 = [v6 numberWithInt:v4];
  bookmarkIdentifierToReadingListItemInfoCompletionMap = self->_bookmarkIdentifierToReadingListItemInfoCompletionMap;
  v9 = [v7 copy];

  [(NSMutableDictionary *)bookmarkIdentifierToReadingListItemInfoCompletionMap setObject:v9 forKey:v11];
  v10 = [(_SFReaderController *)self readerControllerProxy];
  [v10 collectReadingListItemInfoWithBookmarkID:v11];
}

- (void)prepareReaderPrintingIFrameWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [v4 copy];
  readerPrintContentCompletionHandler = self->_readerPrintContentCompletionHandler;
  self->_readerPrintContentCompletionHandler = v5;

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65___SFReaderController_prepareReaderPrintingIFrameWithCompletion___block_invoke;
  v8[3] = &unk_1E8491000;
  objc_copyWeak(&v10, &location);
  v7 = v4;
  v9 = v7;
  [(_SFReaderController *)self setUpReaderWebViewIfNeededAndPerformBlock:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (BOOL)_readerWebViewIsReady
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  v5 = objc_loadWeakRetained(&self->_readerWebView);
  contentIsReady = v5 != 0;
  if (v5 && (v4 & 1) != 0)
  {
    contentIsReady = self->_contentIsReady;
  }

  return contentIsReady;
}

- (void)_performActionsDelayedUntilReaderWebViewIsReady
{
  [(NSTimer *)self->_actionsDelayedUntilReaderWebViewIsReadyTimer invalidate];
  actionsDelayedUntilReaderWebViewIsReadyTimer = self->_actionsDelayedUntilReaderWebViewIsReadyTimer;
  self->_actionsDelayedUntilReaderWebViewIsReadyTimer = 0;

  actionsDelayedUntilReaderWebViewIsReady = self->_actionsDelayedUntilReaderWebViewIsReady;
  if (actionsDelayedUntilReaderWebViewIsReady)
  {
    actionsDelayedUntilReaderWebViewIsReady[2](actionsDelayedUntilReaderWebViewIsReady, [(_SFReaderController *)self _readerWebViewIsReady]);
    v5 = self->_actionsDelayedUntilReaderWebViewIsReady;
  }

  else
  {
    v5 = 0;
  }

  self->_actionsDelayedUntilReaderWebViewIsReady = 0;
}

- (void)setUpReaderWebViewIfNeededAndPerformBlock:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [(_SFReaderController *)self _readerWebViewIsReady];
  if (v6 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    if (v4)
    {
      v4[2](v4, v6);
    }
  }

  else
  {
    actionsDelayedUntilReaderWebViewIsReady = self->_actionsDelayedUntilReaderWebViewIsReady;
    if (actionsDelayedUntilReaderWebViewIsReady)
    {
      v8 = _Block_copy(actionsDelayedUntilReaderWebViewIsReady);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __65___SFReaderController_setUpReaderWebViewIfNeededAndPerformBlock___block_invoke;
      v17[3] = &unk_1E8491028;
      v18 = v8;
      v19 = v4;
      v9 = v8;
      v10 = _Block_copy(v17);
      v11 = self->_actionsDelayedUntilReaderWebViewIsReady;
      self->_actionsDelayedUntilReaderWebViewIsReady = v10;
    }

    else
    {
      v12 = _Block_copy(v4);
      v13 = self->_actionsDelayedUntilReaderWebViewIsReady;
      self->_actionsDelayedUntilReaderWebViewIsReady = v12;

      v14 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__performActionsDelayedUntilReaderWebViewIsReadyDidTimeout_ selector:0 userInfo:0 repeats:1.0];
      actionsDelayedUntilReaderWebViewIsReadyTimer = self->_actionsDelayedUntilReaderWebViewIsReadyTimer;
      self->_actionsDelayedUntilReaderWebViewIsReadyTimer = v14;

      v16 = objc_loadWeakRetained(&self->_readerWebView);
      if (!v16)
      {
        [WeakRetained createReaderWebViewForReaderController:self];
      }
    }
  }
}

- (void)deactivateReaderNow:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained readerController:self didDeactivateReaderWithMode:a3];
  }
}

- (void)createArticleFinder
{
  v2 = [(_SFReaderController *)self readerControllerProxy];
  [v2 prepareToTransitionToReader];
}

- (void)didFinishPresentationUpdateAfterTransitioningToReader
{
  v2 = [(_SFReaderController *)self readerControllerProxy];
  [v2 didFinishPresentationUpdateAfterTransitioningToReader];
}

- (void)didCreateReaderWebView:(id)a3
{
  self->_contentIsReady = 0;
  v4 = a3;
  objc_storeWeak(&self->_readerWebView, v4);
  v5 = [v4 configuration];
  v6 = [v5 preferences];
  [v6 _setShouldAllowUserInstalledFonts:1];

  v8 = [v4 _handle];

  [(_SFReaderController *)self createArticleFinder];
  v7 = [(_SFReaderController *)self readerControllerProxy];
  [v7 didCreateReaderPageContextHandle:v8];
}

- (void)loadNewArticle
{
  v2 = [(_SFReaderController *)self readerControllerProxy];
  [v2 loadNewReaderArticle];
}

- (void)collectReaderContentForMailWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65___SFReaderController_collectReaderContentForMailWithCompletion___block_invoke;
  v6[3] = &unk_1E8491000;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(_SFReaderController *)self setUpReaderWebViewIfNeededAndPerformBlock:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_collectReaderContentForMailWithCompletion:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  p_readerMailContentCompletionHandlers = &self->_readerMailContentCompletionHandlers;
  readerMailContentCompletionHandlers = self->_readerMailContentCompletionHandlers;
  v7 = _Block_copy(v4);
  v8 = [(NSArray *)readerMailContentCompletionHandlers arrayByAddingObject:v7];
  if (v8)
  {
    objc_storeStrong(&self->_readerMailContentCompletionHandlers, v8);
  }

  else
  {
    v9 = _Block_copy(v4);
    v13[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v11 = *p_readerMailContentCompletionHandlers;
    *p_readerMailContentCompletionHandlers = v10;
  }

  v12 = [(_SFReaderController *)self readerControllerProxy];
  [v12 collectReaderContentForMail];
}

- (void)setReaderLanguageTag:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_fontManager);
  [WeakRetained updateLanguageTag:v4];

  v6 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44___SFReaderController_setReaderLanguageTag___block_invoke;
  block[3] = &unk_1E8491078;
  block[4] = self;
  objc_copyWeak(&v8, &location);
  dispatch_async(v6, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (NSString)readerLanguageTag
{
  WeakRetained = objc_loadWeakRetained(&self->_fontManager);
  v3 = [WeakRetained languageTag];

  return v3;
}

- (void)setReaderFont:(id)a3
{
  v4 = MEMORY[0x1E69C9008];
  v5 = a3;
  v6 = [v5 familyName];
  [v4 postActivateNotification:v6];

  configurationManager = self->_configurationManager;
  WeakRetained = objc_loadWeakRetained(&self->_fontManager);
  v9 = [WeakRetained languageTag];
  [(WBSReaderConfigurationManager *)configurationManager setFont:v5 forLanguageTag:v9];

  [(_SFReaderController *)self _saveConfigurationAndSendToWebProcess];
}

- (void)setReaderTheme:(int64_t)a3 forAppearance:(int64_t)a4
{
  [(WBSReaderConfigurationManager *)self->_configurationManager setTheme:a3 forAppearance:a4];

  [(_SFReaderController *)self _saveConfigurationAndSendToWebProcess];
}

- (void)increaseReaderTextSize
{
  [(WBSReaderConfigurationManager *)self->_configurationManager makeTextBigger];

  [(_SFReaderController *)self _saveConfigurationAndSendToWebProcess];
}

- (void)decreaseReaderTextSize
{
  [(WBSReaderConfigurationManager *)self->_configurationManager makeTextSmaller];

  [(_SFReaderController *)self _saveConfigurationAndSendToWebProcess];
}

- (void)resetReaderTextSize
{
  [(WBSReaderConfigurationManager *)self->_configurationManager resetTextSize];

  [(_SFReaderController *)self _saveConfigurationAndSendToWebProcess];
}

- (void)_saveConfigurationAndSendToWebProcess
{
  v3 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v4 = [(WBSReaderConfigurationManager *)self->_configurationManager configurationToSave];
  [v3 setObject:v4 forKey:*MEMORY[0x1E69B1F48]];

  [(_SFReaderController *)self sendConfigurationToWebProcess];
}

- (void)sendConfigurationToWebProcess
{
  v4 = [(_SFReaderController *)self readerControllerProxy];
  v3 = [(WBSReaderConfigurationManager *)self->_configurationManager configurationToSendToWebPage];
  [v4 setConfiguration:v3];
}

- (void)activateFont:(id)a3
{
  v4 = MEMORY[0x1E69C9008];
  v5 = a3;
  [v4 postActivateNotification:v5];
  v6 = [(_SFReaderController *)self readerControllerProxy];
  [v6 activateFont:v5];
}

- (void)setReaderIsActive:(BOOL)a3
{
  v3 = a3;
  v4 = [(_SFReaderController *)self readerControllerProxy];
  [v4 setReaderIsActive:v3];
}

- (WBSReaderFontManager)fontManager
{
  WeakRetained = objc_loadWeakRetained(&self->_fontManager);

  return WeakRetained;
}

- (void)didDetermineReaderAvailability:(id)a3
{
  v6 = a3;
  self->_readerAvailable = [v6 isReaderAvailable];
  self->_doesPageUseSearchEngineOptimizationMetadata = [v6 doesPageUseSearchEngineOptimizationMetadata];
  if (!self->_readerAvailable)
  {
    unfilteredArticleText = self->_unfilteredArticleText;
    self->_unfilteredArticleText = 0;

    readerTextForSummarization = self->_readerTextForSummarization;
    self->_readerTextForSummarization = 0;
  }

  -[_SFReaderController _sendReaderAvailabilityNotificationForState:reason:](self, "_sendReaderAvailabilityNotificationForState:reason:", v6, [v6 isSameDocumentNavigation]);
  [(_SFReaderController *)self _didCollectReaderAvailabilityResultForTesting:v6];
}

- (void)_sendReaderAvailabilityNotificationForState:(id)a3 reason:(int64_t)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained readerController:self didDetermineReaderAvailability:v6 dueTo:a4];
  }

  v8 = [v6 isReaderAvailable];
  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  v12 = @"isAvailable";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:v8];
  v13[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [v9 postNotificationName:@"readerAvailabilityDidChange" object:self userInfo:v11];
}

- (void)didSetReaderConfiguration:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained readerController:self didSetReaderConfiguration:v5];
  }
}

- (void)didCollectReadingListItemInfo:(id)a3 bookmarkID:(id)a4
{
  v9 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained readerController:self didCollectReadingListItemInfo:v9 bookmarkID:v6];
  }

  v8 = [(NSMutableDictionary *)self->_bookmarkIdentifierToReadingListItemInfoCompletionMap objectForKey:v6];
  if (v8)
  {
    [(NSMutableDictionary *)self->_bookmarkIdentifierToReadingListItemInfoCompletionMap removeObjectForKey:v6];
    (v8)[2](v8, v9, [v6 unsignedIntValue]);
  }
}

- (void)didCollectReaderContentForMail:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained readerController:self didCollectReaderContentForMail:v4];
  }

  v6 = self->_readerMailContentCompletionHandlers;
  readerMailContentCompletionHandlers = self->_readerMailContentCompletionHandlers;
  self->_readerMailContentCompletionHandlers = 0;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v6;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v13 + 1) + 8 * v12) + 16))(*(*(&v13 + 1) + 8 * v12));
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)collectArticleContent
{
  v2 = [(_SFReaderController *)self readerControllerProxy];
  [v2 collectArticleContent];
}

- (void)didCollectArticleContent:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained readerController:self didCollectArticleContent:v5];
  }
}

- (void)didDetermineAdditionalTextSamples:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained readerController:self didDetermineAdditionalTextSamples:v5 dueTo:{objc_msgSend(v5, "isSameDocumentNavigation")}];
  }
}

- (void)didPrepareReaderContentForPrinting:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained readerController:self didPrepareReaderContentForPrinting:v7];
  }

  v5 = _Block_copy(self->_readerPrintContentCompletionHandler);
  if (v5)
  {
    readerPrintContentCompletionHandler = self->_readerPrintContentCompletionHandler;
    self->_readerPrintContentCompletionHandler = 0;

    v5[2](v5, v7);
  }
}

- (void)contentDidBecomeReadyWithArticleText:(id)a3
{
  v8 = a3;
  self->_contentIsReady = 1;
  [(_SFReaderController *)self _performActionsDelayedUntilReaderWebViewIsReady];
  v4 = v8;
  if (v8)
  {
    v5 = [v8 safari_bestKnownLanguageTag];
    [(_SFReaderController *)self setReaderLanguageTag:v5];
    v6 = [(_SFReaderController *)self readerControllerProxy];
    [v6 setArticleLocale:v5];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained readerController:self contentDidBecomeReadyWithDetectedLanguage:v5];
    }

    if (objc_opt_respondsToSelector())
    {
      [WeakRetained filteredArticleTextDidBecomeReadyForReaderController:self];
    }

    v4 = v8;
  }
}

- (void)readerTextWasExtracted:(id)a3 withMetadata:(id)a4 wasDeterminingAvailabilility:(BOOL)a5
{
  v12 = a3;
  v8 = a4;
  if (v12 || v8 || !a5)
  {
    v9 = [v12 copy];
    unfilteredArticleText = self->_unfilteredArticleText;
    self->_unfilteredArticleText = v9;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained readerController:self didExtractArticleText:v12 withMetadata:v8];
    }
  }
}

- (void)didRequestOnDeviceSummary
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([MEMORY[0x1E69B1B50] isRestricted])
  {
    [WeakRetained didFindSummarizationRestrictionsForReaderController:self];
  }

  else
  {
    if (!self->_summarizer)
    {
      v4 = objc_alloc_init(MEMORY[0x1E69B1B50]);
      summarizer = self->_summarizer;
      self->_summarizer = v4;

      [(SFOnDeviceSummarization *)self->_summarizer setDelegate:self];
    }

    summarizationAnimationCoordinator = self->_summarizationAnimationCoordinator;
    if (!summarizationAnimationCoordinator)
    {
      v7 = objc_alloc_init(MEMORY[0x1E69B1BB8]);
      v8 = self->_summarizationAnimationCoordinator;
      self->_summarizationAnimationCoordinator = v7;

      [(SFSummarizationAnimationCoordinator *)self->_summarizationAnimationCoordinator setDelegate:self];
      summarizationAnimationCoordinator = self->_summarizationAnimationCoordinator;
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48___SFReaderController_didRequestOnDeviceSummary__block_invoke;
    v9[3] = &unk_1E848F810;
    v9[4] = self;
    [(SFSummarizationAnimationCoordinator *)summarizationAnimationCoordinator startPlaceholderAnimationWithCompletionHandler:v9];
  }
}

- (void)reportReaderEvent:(int64_t)a3 dataToReport:(id)a4
{
  v6 = MEMORY[0x1E69C8EB0];
  v7 = a4;
  v8 = [v6 sharedManager];
  [v8 donateBrowsingAssistantReaderEventWithWebPageID:self->_webpageIdentifier eventType:a3 dataToReport:v7];
}

- (void)owningWebViewDidCommitNavigation
{
  unfilteredArticleText = self->_unfilteredArticleText;
  self->_unfilteredArticleText = 0;

  readerTextForSummarization = self->_readerTextForSummarization;
  self->_readerTextForSummarization = 0;
}

- (void)checkReaderAvailability
{
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v4 = [WeakRetained _unreachableURL];

  if (!v4)
  {
    v5 = [(_SFReaderController *)self readerControllerProxy];
    [v5 checkReaderAvailability];
  }
}

- (void)setArticleSummary:(id)a3 withSummaryHeader:(id)a4 tableOfContentsHeader:(id)a5 readerURLString:(id)a6 titles:(id)a7 paths:(id)a8 trailingText:(id)a9 tableOfContentsType:(int)a10 attribution:(id)a11
{
  v18 = a11;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  v27 = [(_SFReaderController *)self readerControllerProxy];
  LODWORD(v26) = a10;
  [v27 setArticleSummary:v25 withSummaryHeader:v24 tableOfContentsHeader:v23 readerURLString:v22 titles:v21 paths:v20 trailingText:v19 tableOfContentsType:v26 attribution:v18];
}

- (void)previewReaderImageURLWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(_SFReaderController *)self readerControllerProxy];
  [v5 previewReaderImageURLWithReply:v4];
}

- (void)setOnDeviceSummaryButtonWithTitle:(id)a3
{
  v4 = a3;
  v5 = [(_SFReaderController *)self readerControllerProxy];
  [v5 setOnDeviceSummaryButtonWithTitle:v4];
}

- (void)getReaderArticleTitleWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(_SFReaderController *)self readerControllerProxy];
  [v5 getReaderArticleTitleWithReply:v4];
}

- (void)insertSummaryTextPlaceholder
{
  v2 = [(_SFReaderController *)self readerControllerProxy];
  [v2 insertSummaryTextPlaceholder];
}

- (id)webViewForSummarizationAnimationCoordinator:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_readerWebView);

  return WeakRetained;
}

- (void)setTextVisibilityForSummarizationAnimationCoordinator:(id)a3 isVisible:(BOOL)a4
{
  v4 = a4;
  v5 = [(_SFReaderController *)self readerControllerProxy];
  [v5 updateSummaryTextVisibility:v4];
}

- (void)insertSummaryTextPlaceholderForSummarizationAnimationCoordinator:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained insertSummaryTextPlaceholderForReaderController:self];
  v5[2](v5);
}

- (void)replacePlaceholderWithSummaryForSummarizationAnimationCoordinator:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained readerController:self didFinishOnDemandSummarization:self->_summarizer];
  }
}

- (void)didFinishSummarization:(id)a3
{
  if (self->_summarizer == a3)
  {
    v4 = [a3 summary];
    v5 = [v4 length];

    if (v5)
    {
      summarizationAnimationCoordinator = self->_summarizationAnimationCoordinator;

      [(SFSummarizationAnimationCoordinator *)summarizationAnimationCoordinator beginPlaceholderReplacement];
    }
  }
}

- (void)didEncounterErrorForSummarization:(id)a3
{
  v4 = a3;
  if (self->_summarizer == v4)
  {
    v6 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained readerController:self didEncounterErrorForSummarization:v6];
    }

    [(SFSummarizationAnimationCoordinator *)self->_summarizationAnimationCoordinator endAnimations];

    v4 = v6;
  }
}

- (void)didDetermineReaderAvailabilityForDynamicCheck:(id)a3
{
  if (!self->_readerAvailable)
  {
    v5 = a3;
    self->_readerAvailable = [v5 isReaderAvailable];
    [(_SFReaderController *)self _sendReaderAvailabilityNotificationForState:v5 reason:2];
  }
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v32 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = [v8 request];
  if ([v8 _syntheticClickType] == 2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v12 = [[_SFSyntheticClickContext alloc] initWithWebView:v32 navigationAction:v8];
    [WeakRetained readerController:self didTwoFingerTapLinkInReaderWithContext:v12];
    goto LABEL_4;
  }

  v13 = [v8 targetFrame];

  if (!v13 && ![v8 navigationType])
  {
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained readerController:self didClickLinkRequestingNewWindowInReaderWithRequest:v11];
    }

    v19 = v9[2];
LABEL_19:
    v20 = v9;
    v21 = 0;
    goto LABEL_20;
  }

  v14 = [v8 targetFrame];
  v15 = [v14 isMainFrame];

  if (v15)
  {
    v12 = [v11 URL];
    if ([(_SFSyntheticClickContext *)v12 isFileURL])
    {
      (v9[2])(v9, 1);
      goto LABEL_10;
    }

    if ([(_SFSyntheticClickContext *)v12 safari_hasScheme:@"safari-reader"])
    {
      v22 = objc_loadWeakRetained(&self->_webView);
      v23 = [v22 _committedURL];

      v24 = [v23 host];
      if (v24)
      {
        v25 = v24;
        v26 = [(_SFSyntheticClickContext *)v12 host];
        v27 = [v23 host];
        v28 = [v26 isEqualToString:v27];

        v29 = v28;
      }

      else
      {
        v29 = 1;
      }

      (v9[2])(v9, v29);

      goto LABEL_10;
    }

    if (([(_SFSyntheticClickContext *)v12 safari_isDataURL]& 1) == 0)
    {
      v30 = [(_SFSyntheticClickContext *)v12 absoluteString];
      v31 = [v30 safari_isJavaScriptURLString];

      if (!v31 && ![v8 navigationType] && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [WeakRetained readerController:self didClickLinkInReaderWithRequest:v11];
      }
    }

LABEL_4:
    (v9[2])(v9, 0);
LABEL_10:

    goto LABEL_21;
  }

  v16 = MEMORY[0x1E69C9020];
  v17 = [v32 URL];
  v18 = [v11 URL];
  LODWORD(v16) = [v16 readerPageWithURL:v17 canLoadFrameWithURL:v18];

  v19 = v9[2];
  if (!v16)
  {
    goto LABEL_19;
  }

  v20 = v9;
  v21 = 1;
LABEL_20:
  v19(v20, v21);
LABEL_21:
}

- (void)_webView:(id)a3 getAlternateURLFromImage:(id)a4 completionHandler:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_webViewUIDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained _webView:v11 getAlternateURLFromImage:v8 completionHandler:v9];
  }

  else
  {
    (*(v9 + 2))(v9, 0, 0);
  }
}

- (id)_webView:(id)a3 actionsForElement:(id)a4 defaultActions:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_webViewUIDelegate);
  v12 = [WeakRetained _webView:v10 actionsForElement:v9 defaultActions:v8];

  return v12;
}

- (void)_webView:(id)a3 contextMenuConfigurationForElement:(id)a4 completionHandler:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_webViewUIDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained _webView:v11 contextMenuConfigurationForElement:v8 completionHandler:v9];
  }

  else
  {
    v9[2](v9, 0);
  }
}

- (void)_webView:(id)a3 contextMenuWillPresentForElement:(id)a4
{
  v8 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_webViewUIDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained _webView:v8 contextMenuWillPresentForElement:v6];
  }
}

- (void)_webView:(id)a3 contextMenuForElement:(id)a4 willCommitWithAnimator:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_webViewUIDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained _webView:v11 contextMenuForElement:v8 willCommitWithAnimator:v9];
  }
}

- (void)_webView:(id)a3 contextMenuDidEndForElement:(id)a4
{
  v8 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_webViewUIDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained _webView:v8 contextMenuDidEndForElement:v6];
  }
}

- (void)_webView:(id)a3 dataInteraction:(id)a4 sessionWillBegin:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained _webView:v11 dataInteraction:v8 sessionWillBegin:v9];
  }
}

- (void)_webView:(id)a3 dataInteraction:(id)a4 session:(id)a5 didEndWithOperation:(unint64_t)a6
{
  v13 = a3;
  v10 = a4;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained _webView:v13 dataInteraction:v10 session:v11 didEndWithOperation:a6];
  }
}

- (unint64_t)_webView:(id)a3 willUpdateDataInteractionOperationToOperation:(unint64_t)a4 forSession:(id)a5
{
  v8 = a3;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v11 = [WeakRetained _webView:v8 willUpdateDataInteractionOperationToOperation:a4 forSession:v9];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_webView:(id)a3 performDataInteractionOperationWithItemProviders:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v9 = [WeakRetained _webView:v6 performDataInteractionOperationWithItemProviders:v7];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_webView:(id)a3 dataInteractionOperationWasHandled:(BOOL)a4 forSession:(id)a5 itemProviders:(id)a6
{
  v8 = a4;
  v13 = a3;
  v10 = a5;
  v11 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained _webView:v13 dataInteractionOperationWasHandled:v8 forSession:v10 itemProviders:v11];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  if (kvoContext_0 == a6)
  {
    v12 = *MEMORY[0x1E696A500];
    v13 = a5;
    v11 = [v13 objectForKeyedSubscript:v12];
    v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];

    if (v11 | v14 && ([v11 isEqual:v14] & 1) == 0)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __70___SFReaderController_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v15[3] = &unk_1E848F548;
      v16 = v10;
      v17 = self;
      dispatch_async(MEMORY[0x1E69E96A0], v15);
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = _SFReaderController;
    v11 = a5;
    [(_SFReaderController *)&v18 observeValueForKeyPath:v10 ofObject:a4 change:v11 context:a6];
  }
}

- (WKWebView)webView
{
  WeakRetained = objc_loadWeakRetained(&self->_webView);

  return WeakRetained;
}

- (WKWebView)readerWebView
{
  WeakRetained = objc_loadWeakRetained(&self->_readerWebView);

  return WeakRetained;
}

- (_SFReaderControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (WKUIDelegatePrivate)webViewUIDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_webViewUIDelegate);

  return WeakRetained;
}

- (_SFReaderTestController)testController
{
  WeakRetained = objc_loadWeakRetained(&self->_testController);

  return WeakRetained;
}

@end