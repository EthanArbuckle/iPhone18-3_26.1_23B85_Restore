@interface _SFReaderController
- (BOOL)_readerWebViewIsReady;
- (BOOL)_webView:(id)view performDataInteractionOperationWithItemProviders:(id)providers;
- (NSString)readerLanguageTag;
- (NSURL)readerURL;
- (WBSReaderFontManager)fontManager;
- (WKUIDelegatePrivate)webViewUIDelegate;
- (WKWebView)readerWebView;
- (WKWebView)webView;
- (_SFReaderController)initWithWebView:(id)view;
- (_SFReaderControllerDelegate)delegate;
- (_SFReaderTestController)testController;
- (id)_webView:(id)view actionsForElement:(id)element defaultActions:(id)actions;
- (id)readerControllerProxy;
- (id)webViewForSummarizationAnimationCoordinator:(id)coordinator;
- (unint64_t)_webView:(id)view willUpdateDataInteractionOperationToOperation:(unint64_t)operation forSession:(id)session;
- (void)_collectReaderContentForMailWithCompletion:(id)completion;
- (void)_performActionsDelayedUntilReaderWebViewIsReady;
- (void)_saveConfigurationAndSendToWebProcess;
- (void)_sendReaderAvailabilityNotificationForState:(id)state reason:(int64_t)reason;
- (void)_setUpReaderActivityListener;
- (void)_updateJavaScriptEnabled;
- (void)_webView:(id)view contextMenuConfigurationForElement:(id)element completionHandler:(id)handler;
- (void)_webView:(id)view contextMenuDidEndForElement:(id)element;
- (void)_webView:(id)view contextMenuForElement:(id)element willCommitWithAnimator:(id)animator;
- (void)_webView:(id)view contextMenuWillPresentForElement:(id)element;
- (void)_webView:(id)view dataInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation;
- (void)_webView:(id)view dataInteraction:(id)interaction sessionWillBegin:(id)begin;
- (void)_webView:(id)view dataInteractionOperationWasHandled:(BOOL)handled forSession:(id)session itemProviders:(id)providers;
- (void)_webView:(id)view getAlternateURLFromImage:(id)image completionHandler:(id)handler;
- (void)activateFont:(id)font;
- (void)checkReaderAvailability;
- (void)collectArticleContent;
- (void)collectReaderContentForMailWithCompletion:(id)completion;
- (void)collectReadingListInfoWithBookmarkID:(int)d completionHandler:(id)handler;
- (void)contentDidBecomeReadyWithArticleText:(id)text;
- (void)createArticleFinder;
- (void)deactivateReaderNow:(unint64_t)now;
- (void)dealloc;
- (void)decreaseReaderTextSize;
- (void)didCollectArticleContent:(id)content;
- (void)didCollectReaderContentForMail:(id)mail;
- (void)didCollectReadingListItemInfo:(id)info bookmarkID:(id)d;
- (void)didCreateReaderWebView:(id)view;
- (void)didDetermineAdditionalTextSamples:(id)samples;
- (void)didDetermineReaderAvailability:(id)availability;
- (void)didDetermineReaderAvailabilityForDynamicCheck:(id)check;
- (void)didEncounterErrorForSummarization:(id)summarization;
- (void)didFinishPresentationUpdateAfterTransitioningToReader;
- (void)didFinishSummarization:(id)summarization;
- (void)didPrepareReaderContentForPrinting:(id)printing;
- (void)didRequestOnDeviceSummary;
- (void)didSetReaderConfiguration:(id)configuration;
- (void)getReaderArticleTitleWithCompletion:(id)completion;
- (void)increaseReaderTextSize;
- (void)insertSummaryTextPlaceholder;
- (void)insertSummaryTextPlaceholderForSummarizationAnimationCoordinator:(id)coordinator completionHandler:(id)handler;
- (void)invalidate;
- (void)loadNewArticle;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)owningWebViewDidCommitNavigation;
- (void)prepareReaderPrintingIFrameWithCompletion:(id)completion;
- (void)previewReaderImageURLWithCompletion:(id)completion;
- (void)readerTextWasExtracted:(id)extracted withMetadata:(id)metadata wasDeterminingAvailabilility:(BOOL)availabilility;
- (void)replacePlaceholderWithSummaryForSummarizationAnimationCoordinator:(id)coordinator;
- (void)reportReaderEvent:(int64_t)event dataToReport:(id)report;
- (void)resetReaderTextSize;
- (void)sendConfigurationToWebProcess;
- (void)setArticleSummary:(id)summary withSummaryHeader:(id)header tableOfContentsHeader:(id)contentsHeader readerURLString:(id)string titles:(id)titles paths:(id)paths trailingText:(id)text tableOfContentsType:(int)self0 attribution:(id)self1;
- (void)setOnDeviceSummaryButtonWithTitle:(id)title;
- (void)setReaderFont:(id)font;
- (void)setReaderInitialTopScrollOffset:(int64_t)offset configuration:(id)configuration isViewingArchive:(BOOL)archive scrollOffsetDictionary:(id)dictionary;
- (void)setReaderIsActive:(BOOL)active;
- (void)setReaderLanguageTag:(id)tag;
- (void)setReaderTheme:(int64_t)theme forAppearance:(int64_t)appearance;
- (void)setTextVisibilityForSummarizationAnimationCoordinator:(id)coordinator isVisible:(BOOL)visible;
- (void)setUpReaderWebViewIfNeededAndPerformBlock:(id)block;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
@end

@implementation _SFReaderController

- (void)_setUpReaderActivityListener
{
  v3 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F506EB00];
  eventsListenerInterface = self->_eventsListenerInterface;
  self->_eventsListenerInterface = v3;

  WeakRetained = objc_loadWeakRetained(&self->_webView);
  _remoteObjectRegistry = [WeakRetained _remoteObjectRegistry];

  [_remoteObjectRegistry registerExportedObject:self interface:self->_eventsListenerInterface];
}

- (void)_updateJavaScriptEnabled
{
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  -[WBSReaderConfigurationManager setJavaScriptEnabled:](self->_configurationManager, "setJavaScriptEnabled:", [safari_browserDefaults safari_isJavaScriptEnabled]);
}

- (NSURL)readerURL
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([WeakRetained readerURLForReaderController:self], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = objc_loadWeakRetained(&self->_webView);
    _committedURL = [v5 _committedURL];
    v4 = [_committedURL safari_URLByReplacingSchemeWithString:@"safari-reader"];
  }

  return v4;
}

- (void)dealloc
{
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  [safari_browserDefaults removeObserver:self forKeyPath:*MEMORY[0x1E69B1F00] context:kvoContext_0];

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
    _remoteObjectRegistry = [WeakRetained _remoteObjectRegistry];

    [_remoteObjectRegistry unregisterExportedObject:self interface:self->_eventsListenerInterface];
    eventsListenerInterface = self->_eventsListenerInterface;
    self->_eventsListenerInterface = 0;
  }

  objc_storeWeak(&self->_readerControllerProxy, 0);
}

- (_SFReaderController)initWithWebView:(id)view
{
  v13.receiver = self;
  v13.super_class = _SFReaderController;
  viewCopy = view;
  v4 = [(_SFReaderController *)&v13 init];
  objc_storeWeak(&v4->_webView, viewCopy);

  [(_SFReaderController *)v4 _setUpReaderActivityListener:v13.receiver];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  bookmarkIdentifierToReadingListItemInfoCompletionMap = v4->_bookmarkIdentifierToReadingListItemInfoCompletionMap;
  v4->_bookmarkIdentifierToReadingListItemInfoCompletionMap = v5;

  v7 = objc_alloc_init(MEMORY[0x1E69C9018]);
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  [safari_browserDefaults addObserver:v4 forKeyPath:*MEMORY[0x1E69B1F00] options:3 context:kvoContext_0];
  v9 = [safari_browserDefaults dictionaryForKey:*MEMORY[0x1E69B1F48]];
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
    _remoteObjectRegistry = [v4 _remoteObjectRegistry];

    v6 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F5098000];
    WeakRetained = [_remoteObjectRegistry remoteObjectProxyWithInterface:v6];
  }

  objc_storeWeak(&self->_readerControllerProxy, WeakRetained);

  return WeakRetained;
}

- (void)setReaderInitialTopScrollOffset:(int64_t)offset configuration:(id)configuration isViewingArchive:(BOOL)archive scrollOffsetDictionary:(id)dictionary
{
  archiveCopy = archive;
  dictionaryCopy = dictionary;
  configurationCopy = configuration;
  readerControllerProxy = [(_SFReaderController *)self readerControllerProxy];
  [readerControllerProxy setReaderInitialTopScrollOffset:offset configuration:configurationCopy isViewingArchive:archiveCopy];

  if (dictionaryCopy)
  {
    readerControllerProxy2 = [(_SFReaderController *)self readerControllerProxy];
    [readerControllerProxy2 setInitalArticleScrollPositionAsDictionary:dictionaryCopy];
  }
}

- (void)collectReadingListInfoWithBookmarkID:(int)d completionHandler:(id)handler
{
  v4 = *&d;
  v6 = MEMORY[0x1E696AD98];
  handlerCopy = handler;
  v11 = [v6 numberWithInt:v4];
  bookmarkIdentifierToReadingListItemInfoCompletionMap = self->_bookmarkIdentifierToReadingListItemInfoCompletionMap;
  v9 = [handlerCopy copy];

  [(NSMutableDictionary *)bookmarkIdentifierToReadingListItemInfoCompletionMap setObject:v9 forKey:v11];
  readerControllerProxy = [(_SFReaderController *)self readerControllerProxy];
  [readerControllerProxy collectReadingListItemInfoWithBookmarkID:v11];
}

- (void)prepareReaderPrintingIFrameWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v5 = [completionCopy copy];
  readerPrintContentCompletionHandler = self->_readerPrintContentCompletionHandler;
  self->_readerPrintContentCompletionHandler = v5;

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65___SFReaderController_prepareReaderPrintingIFrameWithCompletion___block_invoke;
  v8[3] = &unk_1E8491000;
  objc_copyWeak(&v10, &location);
  v7 = completionCopy;
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

- (void)setUpReaderWebViewIfNeededAndPerformBlock:(id)block
{
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  _readerWebViewIsReady = [(_SFReaderController *)self _readerWebViewIsReady];
  if (_readerWebViewIsReady || (objc_opt_respondsToSelector() & 1) == 0)
  {
    if (blockCopy)
    {
      blockCopy[2](blockCopy, _readerWebViewIsReady);
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
      v19 = blockCopy;
      v9 = v8;
      v10 = _Block_copy(v17);
      v11 = self->_actionsDelayedUntilReaderWebViewIsReady;
      self->_actionsDelayedUntilReaderWebViewIsReady = v10;
    }

    else
    {
      v12 = _Block_copy(blockCopy);
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

- (void)deactivateReaderNow:(unint64_t)now
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained readerController:self didDeactivateReaderWithMode:now];
  }
}

- (void)createArticleFinder
{
  readerControllerProxy = [(_SFReaderController *)self readerControllerProxy];
  [readerControllerProxy prepareToTransitionToReader];
}

- (void)didFinishPresentationUpdateAfterTransitioningToReader
{
  readerControllerProxy = [(_SFReaderController *)self readerControllerProxy];
  [readerControllerProxy didFinishPresentationUpdateAfterTransitioningToReader];
}

- (void)didCreateReaderWebView:(id)view
{
  self->_contentIsReady = 0;
  viewCopy = view;
  objc_storeWeak(&self->_readerWebView, viewCopy);
  configuration = [viewCopy configuration];
  preferences = [configuration preferences];
  [preferences _setShouldAllowUserInstalledFonts:1];

  _handle = [viewCopy _handle];

  [(_SFReaderController *)self createArticleFinder];
  readerControllerProxy = [(_SFReaderController *)self readerControllerProxy];
  [readerControllerProxy didCreateReaderPageContextHandle:_handle];
}

- (void)loadNewArticle
{
  readerControllerProxy = [(_SFReaderController *)self readerControllerProxy];
  [readerControllerProxy loadNewReaderArticle];
}

- (void)collectReaderContentForMailWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65___SFReaderController_collectReaderContentForMailWithCompletion___block_invoke;
  v6[3] = &unk_1E8491000;
  objc_copyWeak(&v8, &location);
  v5 = completionCopy;
  v7 = v5;
  [(_SFReaderController *)self setUpReaderWebViewIfNeededAndPerformBlock:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_collectReaderContentForMailWithCompletion:(id)completion
{
  v13[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  p_readerMailContentCompletionHandlers = &self->_readerMailContentCompletionHandlers;
  readerMailContentCompletionHandlers = self->_readerMailContentCompletionHandlers;
  v7 = _Block_copy(completionCopy);
  v8 = [(NSArray *)readerMailContentCompletionHandlers arrayByAddingObject:v7];
  if (v8)
  {
    objc_storeStrong(&self->_readerMailContentCompletionHandlers, v8);
  }

  else
  {
    v9 = _Block_copy(completionCopy);
    v13[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v11 = *p_readerMailContentCompletionHandlers;
    *p_readerMailContentCompletionHandlers = v10;
  }

  readerControllerProxy = [(_SFReaderController *)self readerControllerProxy];
  [readerControllerProxy collectReaderContentForMail];
}

- (void)setReaderLanguageTag:(id)tag
{
  tagCopy = tag;
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_fontManager);
  [WeakRetained updateLanguageTag:tagCopy];

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
  languageTag = [WeakRetained languageTag];

  return languageTag;
}

- (void)setReaderFont:(id)font
{
  v4 = MEMORY[0x1E69C9008];
  fontCopy = font;
  familyName = [fontCopy familyName];
  [v4 postActivateNotification:familyName];

  configurationManager = self->_configurationManager;
  WeakRetained = objc_loadWeakRetained(&self->_fontManager);
  languageTag = [WeakRetained languageTag];
  [(WBSReaderConfigurationManager *)configurationManager setFont:fontCopy forLanguageTag:languageTag];

  [(_SFReaderController *)self _saveConfigurationAndSendToWebProcess];
}

- (void)setReaderTheme:(int64_t)theme forAppearance:(int64_t)appearance
{
  [(WBSReaderConfigurationManager *)self->_configurationManager setTheme:theme forAppearance:appearance];

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
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  configurationToSave = [(WBSReaderConfigurationManager *)self->_configurationManager configurationToSave];
  [safari_browserDefaults setObject:configurationToSave forKey:*MEMORY[0x1E69B1F48]];

  [(_SFReaderController *)self sendConfigurationToWebProcess];
}

- (void)sendConfigurationToWebProcess
{
  readerControllerProxy = [(_SFReaderController *)self readerControllerProxy];
  configurationToSendToWebPage = [(WBSReaderConfigurationManager *)self->_configurationManager configurationToSendToWebPage];
  [readerControllerProxy setConfiguration:configurationToSendToWebPage];
}

- (void)activateFont:(id)font
{
  v4 = MEMORY[0x1E69C9008];
  fontCopy = font;
  [v4 postActivateNotification:fontCopy];
  readerControllerProxy = [(_SFReaderController *)self readerControllerProxy];
  [readerControllerProxy activateFont:fontCopy];
}

- (void)setReaderIsActive:(BOOL)active
{
  activeCopy = active;
  readerControllerProxy = [(_SFReaderController *)self readerControllerProxy];
  [readerControllerProxy setReaderIsActive:activeCopy];
}

- (WBSReaderFontManager)fontManager
{
  WeakRetained = objc_loadWeakRetained(&self->_fontManager);

  return WeakRetained;
}

- (void)didDetermineReaderAvailability:(id)availability
{
  availabilityCopy = availability;
  self->_readerAvailable = [availabilityCopy isReaderAvailable];
  self->_doesPageUseSearchEngineOptimizationMetadata = [availabilityCopy doesPageUseSearchEngineOptimizationMetadata];
  if (!self->_readerAvailable)
  {
    unfilteredArticleText = self->_unfilteredArticleText;
    self->_unfilteredArticleText = 0;

    readerTextForSummarization = self->_readerTextForSummarization;
    self->_readerTextForSummarization = 0;
  }

  -[_SFReaderController _sendReaderAvailabilityNotificationForState:reason:](self, "_sendReaderAvailabilityNotificationForState:reason:", availabilityCopy, [availabilityCopy isSameDocumentNavigation]);
  [(_SFReaderController *)self _didCollectReaderAvailabilityResultForTesting:availabilityCopy];
}

- (void)_sendReaderAvailabilityNotificationForState:(id)state reason:(int64_t)reason
{
  v13[1] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained readerController:self didDetermineReaderAvailability:stateCopy dueTo:reason];
  }

  isReaderAvailable = [stateCopy isReaderAvailable];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v12 = @"isAvailable";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:isReaderAvailable];
  v13[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [defaultCenter postNotificationName:@"readerAvailabilityDidChange" object:self userInfo:v11];
}

- (void)didSetReaderConfiguration:(id)configuration
{
  configurationCopy = configuration;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained readerController:self didSetReaderConfiguration:configurationCopy];
  }
}

- (void)didCollectReadingListItemInfo:(id)info bookmarkID:(id)d
{
  infoCopy = info;
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained readerController:self didCollectReadingListItemInfo:infoCopy bookmarkID:dCopy];
  }

  v8 = [(NSMutableDictionary *)self->_bookmarkIdentifierToReadingListItemInfoCompletionMap objectForKey:dCopy];
  if (v8)
  {
    [(NSMutableDictionary *)self->_bookmarkIdentifierToReadingListItemInfoCompletionMap removeObjectForKey:dCopy];
    (v8)[2](v8, infoCopy, [dCopy unsignedIntValue]);
  }
}

- (void)didCollectReaderContentForMail:(id)mail
{
  v18 = *MEMORY[0x1E69E9840];
  mailCopy = mail;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained readerController:self didCollectReaderContentForMail:mailCopy];
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
  readerControllerProxy = [(_SFReaderController *)self readerControllerProxy];
  [readerControllerProxy collectArticleContent];
}

- (void)didCollectArticleContent:(id)content
{
  contentCopy = content;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained readerController:self didCollectArticleContent:contentCopy];
  }
}

- (void)didDetermineAdditionalTextSamples:(id)samples
{
  samplesCopy = samples;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained readerController:self didDetermineAdditionalTextSamples:samplesCopy dueTo:{objc_msgSend(samplesCopy, "isSameDocumentNavigation")}];
  }
}

- (void)didPrepareReaderContentForPrinting:(id)printing
{
  printingCopy = printing;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained readerController:self didPrepareReaderContentForPrinting:printingCopy];
  }

  v5 = _Block_copy(self->_readerPrintContentCompletionHandler);
  if (v5)
  {
    readerPrintContentCompletionHandler = self->_readerPrintContentCompletionHandler;
    self->_readerPrintContentCompletionHandler = 0;

    v5[2](v5, printingCopy);
  }
}

- (void)contentDidBecomeReadyWithArticleText:(id)text
{
  textCopy = text;
  self->_contentIsReady = 1;
  [(_SFReaderController *)self _performActionsDelayedUntilReaderWebViewIsReady];
  v4 = textCopy;
  if (textCopy)
  {
    safari_bestKnownLanguageTag = [textCopy safari_bestKnownLanguageTag];
    [(_SFReaderController *)self setReaderLanguageTag:safari_bestKnownLanguageTag];
    readerControllerProxy = [(_SFReaderController *)self readerControllerProxy];
    [readerControllerProxy setArticleLocale:safari_bestKnownLanguageTag];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained readerController:self contentDidBecomeReadyWithDetectedLanguage:safari_bestKnownLanguageTag];
    }

    if (objc_opt_respondsToSelector())
    {
      [WeakRetained filteredArticleTextDidBecomeReadyForReaderController:self];
    }

    v4 = textCopy;
  }
}

- (void)readerTextWasExtracted:(id)extracted withMetadata:(id)metadata wasDeterminingAvailabilility:(BOOL)availabilility
{
  extractedCopy = extracted;
  metadataCopy = metadata;
  if (extractedCopy || metadataCopy || !availabilility)
  {
    v9 = [extractedCopy copy];
    unfilteredArticleText = self->_unfilteredArticleText;
    self->_unfilteredArticleText = v9;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained readerController:self didExtractArticleText:extractedCopy withMetadata:metadataCopy];
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

- (void)reportReaderEvent:(int64_t)event dataToReport:(id)report
{
  v6 = MEMORY[0x1E69C8EB0];
  reportCopy = report;
  sharedManager = [v6 sharedManager];
  [sharedManager donateBrowsingAssistantReaderEventWithWebPageID:self->_webpageIdentifier eventType:event dataToReport:reportCopy];
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
  _unreachableURL = [WeakRetained _unreachableURL];

  if (!_unreachableURL)
  {
    readerControllerProxy = [(_SFReaderController *)self readerControllerProxy];
    [readerControllerProxy checkReaderAvailability];
  }
}

- (void)setArticleSummary:(id)summary withSummaryHeader:(id)header tableOfContentsHeader:(id)contentsHeader readerURLString:(id)string titles:(id)titles paths:(id)paths trailingText:(id)text tableOfContentsType:(int)self0 attribution:(id)self1
{
  attributionCopy = attribution;
  textCopy = text;
  pathsCopy = paths;
  titlesCopy = titles;
  stringCopy = string;
  contentsHeaderCopy = contentsHeader;
  headerCopy = header;
  summaryCopy = summary;
  readerControllerProxy = [(_SFReaderController *)self readerControllerProxy];
  LODWORD(v26) = type;
  [readerControllerProxy setArticleSummary:summaryCopy withSummaryHeader:headerCopy tableOfContentsHeader:contentsHeaderCopy readerURLString:stringCopy titles:titlesCopy paths:pathsCopy trailingText:textCopy tableOfContentsType:v26 attribution:attributionCopy];
}

- (void)previewReaderImageURLWithCompletion:(id)completion
{
  completionCopy = completion;
  readerControllerProxy = [(_SFReaderController *)self readerControllerProxy];
  [readerControllerProxy previewReaderImageURLWithReply:completionCopy];
}

- (void)setOnDeviceSummaryButtonWithTitle:(id)title
{
  titleCopy = title;
  readerControllerProxy = [(_SFReaderController *)self readerControllerProxy];
  [readerControllerProxy setOnDeviceSummaryButtonWithTitle:titleCopy];
}

- (void)getReaderArticleTitleWithCompletion:(id)completion
{
  completionCopy = completion;
  readerControllerProxy = [(_SFReaderController *)self readerControllerProxy];
  [readerControllerProxy getReaderArticleTitleWithReply:completionCopy];
}

- (void)insertSummaryTextPlaceholder
{
  readerControllerProxy = [(_SFReaderController *)self readerControllerProxy];
  [readerControllerProxy insertSummaryTextPlaceholder];
}

- (id)webViewForSummarizationAnimationCoordinator:(id)coordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_readerWebView);

  return WeakRetained;
}

- (void)setTextVisibilityForSummarizationAnimationCoordinator:(id)coordinator isVisible:(BOOL)visible
{
  visibleCopy = visible;
  readerControllerProxy = [(_SFReaderController *)self readerControllerProxy];
  [readerControllerProxy updateSummaryTextVisibility:visibleCopy];
}

- (void)insertSummaryTextPlaceholderForSummarizationAnimationCoordinator:(id)coordinator completionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained insertSummaryTextPlaceholderForReaderController:self];
  handlerCopy[2](handlerCopy);
}

- (void)replacePlaceholderWithSummaryForSummarizationAnimationCoordinator:(id)coordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained readerController:self didFinishOnDemandSummarization:self->_summarizer];
  }
}

- (void)didFinishSummarization:(id)summarization
{
  if (self->_summarizer == summarization)
  {
    summary = [summarization summary];
    v5 = [summary length];

    if (v5)
    {
      summarizationAnimationCoordinator = self->_summarizationAnimationCoordinator;

      [(SFSummarizationAnimationCoordinator *)summarizationAnimationCoordinator beginPlaceholderReplacement];
    }
  }
}

- (void)didEncounterErrorForSummarization:(id)summarization
{
  summarizationCopy = summarization;
  if (self->_summarizer == summarizationCopy)
  {
    v6 = summarizationCopy;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained readerController:self didEncounterErrorForSummarization:v6];
    }

    [(SFSummarizationAnimationCoordinator *)self->_summarizationAnimationCoordinator endAnimations];

    summarizationCopy = v6;
  }
}

- (void)didDetermineReaderAvailabilityForDynamicCheck:(id)check
{
  if (!self->_readerAvailable)
  {
    checkCopy = check;
    self->_readerAvailable = [checkCopy isReaderAvailable];
    [(_SFReaderController *)self _sendReaderAvailabilityNotificationForState:checkCopy reason:2];
  }
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  viewCopy = view;
  actionCopy = action;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  request = [actionCopy request];
  if ([actionCopy _syntheticClickType] == 2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v12 = [[_SFSyntheticClickContext alloc] initWithWebView:viewCopy navigationAction:actionCopy];
    [WeakRetained readerController:self didTwoFingerTapLinkInReaderWithContext:v12];
    goto LABEL_4;
  }

  targetFrame = [actionCopy targetFrame];

  if (!targetFrame && ![actionCopy navigationType])
  {
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained readerController:self didClickLinkRequestingNewWindowInReaderWithRequest:request];
    }

    v19 = handlerCopy[2];
LABEL_19:
    v20 = handlerCopy;
    v21 = 0;
    goto LABEL_20;
  }

  targetFrame2 = [actionCopy targetFrame];
  isMainFrame = [targetFrame2 isMainFrame];

  if (isMainFrame)
  {
    v12 = [request URL];
    if ([(_SFSyntheticClickContext *)v12 isFileURL])
    {
      (handlerCopy[2])(handlerCopy, 1);
      goto LABEL_10;
    }

    if ([(_SFSyntheticClickContext *)v12 safari_hasScheme:@"safari-reader"])
    {
      v22 = objc_loadWeakRetained(&self->_webView);
      _committedURL = [v22 _committedURL];

      host = [_committedURL host];
      if (host)
      {
        v25 = host;
        host2 = [(_SFSyntheticClickContext *)v12 host];
        host3 = [_committedURL host];
        v28 = [host2 isEqualToString:host3];

        v29 = v28;
      }

      else
      {
        v29 = 1;
      }

      (handlerCopy[2])(handlerCopy, v29);

      goto LABEL_10;
    }

    if (([(_SFSyntheticClickContext *)v12 safari_isDataURL]& 1) == 0)
    {
      absoluteString = [(_SFSyntheticClickContext *)v12 absoluteString];
      safari_isJavaScriptURLString = [absoluteString safari_isJavaScriptURLString];

      if (!safari_isJavaScriptURLString && ![actionCopy navigationType] && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [WeakRetained readerController:self didClickLinkInReaderWithRequest:request];
      }
    }

LABEL_4:
    (handlerCopy[2])(handlerCopy, 0);
LABEL_10:

    goto LABEL_21;
  }

  v16 = MEMORY[0x1E69C9020];
  v17 = [viewCopy URL];
  v18 = [request URL];
  LODWORD(v16) = [v16 readerPageWithURL:v17 canLoadFrameWithURL:v18];

  v19 = handlerCopy[2];
  if (!v16)
  {
    goto LABEL_19;
  }

  v20 = handlerCopy;
  v21 = 1;
LABEL_20:
  v19(v20, v21);
LABEL_21:
}

- (void)_webView:(id)view getAlternateURLFromImage:(id)image completionHandler:(id)handler
{
  viewCopy = view;
  imageCopy = image;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_webViewUIDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained _webView:viewCopy getAlternateURLFromImage:imageCopy completionHandler:handlerCopy];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (id)_webView:(id)view actionsForElement:(id)element defaultActions:(id)actions
{
  actionsCopy = actions;
  elementCopy = element;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_webViewUIDelegate);
  v12 = [WeakRetained _webView:viewCopy actionsForElement:elementCopy defaultActions:actionsCopy];

  return v12;
}

- (void)_webView:(id)view contextMenuConfigurationForElement:(id)element completionHandler:(id)handler
{
  viewCopy = view;
  elementCopy = element;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_webViewUIDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained _webView:viewCopy contextMenuConfigurationForElement:elementCopy completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)_webView:(id)view contextMenuWillPresentForElement:(id)element
{
  viewCopy = view;
  elementCopy = element;
  WeakRetained = objc_loadWeakRetained(&self->_webViewUIDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained _webView:viewCopy contextMenuWillPresentForElement:elementCopy];
  }
}

- (void)_webView:(id)view contextMenuForElement:(id)element willCommitWithAnimator:(id)animator
{
  viewCopy = view;
  elementCopy = element;
  animatorCopy = animator;
  WeakRetained = objc_loadWeakRetained(&self->_webViewUIDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained _webView:viewCopy contextMenuForElement:elementCopy willCommitWithAnimator:animatorCopy];
  }
}

- (void)_webView:(id)view contextMenuDidEndForElement:(id)element
{
  viewCopy = view;
  elementCopy = element;
  WeakRetained = objc_loadWeakRetained(&self->_webViewUIDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained _webView:viewCopy contextMenuDidEndForElement:elementCopy];
  }
}

- (void)_webView:(id)view dataInteraction:(id)interaction sessionWillBegin:(id)begin
{
  viewCopy = view;
  interactionCopy = interaction;
  beginCopy = begin;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained _webView:viewCopy dataInteraction:interactionCopy sessionWillBegin:beginCopy];
  }
}

- (void)_webView:(id)view dataInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation
{
  viewCopy = view;
  interactionCopy = interaction;
  sessionCopy = session;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained _webView:viewCopy dataInteraction:interactionCopy session:sessionCopy didEndWithOperation:operation];
  }
}

- (unint64_t)_webView:(id)view willUpdateDataInteractionOperationToOperation:(unint64_t)operation forSession:(id)session
{
  viewCopy = view;
  sessionCopy = session;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v11 = [WeakRetained _webView:viewCopy willUpdateDataInteractionOperationToOperation:operation forSession:sessionCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_webView:(id)view performDataInteractionOperationWithItemProviders:(id)providers
{
  viewCopy = view;
  providersCopy = providers;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v9 = [WeakRetained _webView:viewCopy performDataInteractionOperationWithItemProviders:providersCopy];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_webView:(id)view dataInteractionOperationWasHandled:(BOOL)handled forSession:(id)session itemProviders:(id)providers
{
  handledCopy = handled;
  viewCopy = view;
  sessionCopy = session;
  providersCopy = providers;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained _webView:viewCopy dataInteractionOperationWasHandled:handledCopy forSession:sessionCopy itemProviders:providersCopy];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  if (kvoContext_0 == context)
  {
    v12 = *MEMORY[0x1E696A500];
    changeCopy = change;
    changeCopy2 = [changeCopy objectForKeyedSubscript:v12];
    v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];

    if (changeCopy2 | v14 && ([changeCopy2 isEqual:v14] & 1) == 0)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __70___SFReaderController_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v15[3] = &unk_1E848F548;
      v16 = pathCopy;
      selfCopy = self;
      dispatch_async(MEMORY[0x1E69E96A0], v15);
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = _SFReaderController;
    changeCopy2 = change;
    [(_SFReaderController *)&v18 observeValueForKeyPath:pathCopy ofObject:object change:changeCopy2 context:context];
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