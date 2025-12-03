@interface MSMessageExtensionBrowserViewController
+ (void)invalidateSnapshotForKey:(id)key;
- (BOOL)_canCurrentPluginShowInBrowserPluginIdentifier:(id)identifier;
- (BOOL)_shouldVendRemoteViewControllerForCardSwipeSPI;
- (BOOL)extensionWantsDraftAssetArchives;
- (BOOL)hasEntitlement:(id)entitlement;
- (BOOL)isAlive;
- (BOOL)isFromValidExtension;
- (BOOL)isGenerativePlaygroundExtension;
- (BOOL)isLoaded;
- (BOOL)isPhotosExtensionBrowser;
- (BOOL)mayBeKeptInViewHierarchy;
- (BOOL)prefersStatusBarHidden;
- (BOOL)shouldSuppressEntryView;
- (BOOL)wantsDarkUI;
- (BOOL)wantsOpaqueUI;
- (IMBalloonAppExtension)balloonExtensionPlugin;
- (MSMessageExtensionBrowserViewController)initWithBalloonPlugin:(id)plugin dataSource:(id)source;
- (NSString)description;
- (_MSMessageComposeExtensionProtocol)remoteProxy;
- (_UIRemoteViewController)_containedRemoteViewController;
- (id)_arrayForApplePlistKey:(id)key;
- (id)_bundleIDsForSwipeGestureDisablement;
- (id)_configurePhotosDraftAssetArchivesWithConversationID:(id)d;
- (id)_itemPayloadFromMSMessage:(id)message;
- (id)assetExplorerTransport;
- (id)cancelTouchesInView;
- (id)childViewControllerForStatusBarHidden;
- (id)childViewControllerForStatusBarStyle;
- (id)currentConversationState;
- (id)extension;
- (id)fetchPluginPayloadsAndClear:(BOOL)clear;
- (id)fetchPluginStagedIdentifiers;
- (id)iMessageLoginID;
- (id)navigationItem;
- (id)requestSnapshotDataForPersistance;
- (id)substituteNameInString:(id)string;
- (id)substituteNameInString:(id)string withAppID:(id)d;
- (id)workingDirForDraft;
- (unint64_t)presentationStyle;
- (unint64_t)sheetDetentStyle;
- (void)_addRemoteViewController;
- (void)_addRemoteViewControllerAndConfigureExtension;
- (void)_addStickerAnimationDidFinishWithCompletion:(id)completion;
- (void)_addStickerToStoreWithRepresentations:(id)representations completionHandler:(id)handler;
- (void)_addStickerToStoreWithRepresentations:(id)representations completionWithStickerIDs:(id)ds;
- (void)_addStickerToStoreWithRepresentations:(id)representations sourceRect:(CGRect)rect completion:(id)completion;
- (void)_addStickerToStoreWithRepresentations:(id)representations sourceRect:(CGRect)rect effect:(int64_t)effect completion:(id)completion;
- (void)_addStickerToStoreWithUISticker:(id)sticker sourceRect:(CGRect)rect completion:(id)completion;
- (void)_animatedStickerCreationProgressChanged:(id)changed progress:(double)progress;
- (void)_assetArchiveRemoved:(id)removed;
- (void)_callAndDequeueLoadCompletionBlocks:(BOOL)blocks;
- (void)_canShowBrowserForPluginIdentifier:(id)identifier completion:(id)completion;
- (void)_cancelExtensionRequest;
- (void)_configureMessage:(id)message messageSenderAddress:(id)address withConversation:(id)conversation;
- (void)_didRemoveStickerPreview;
- (void)_dismiss;
- (void)_dismissAndPresentPhotosApp;
- (void)_handleExtensionInterruption:(id)interruption;
- (void)_instantiateRemoteViewControllerIfNeededWithIntent:(int64_t)intent completion:(id)completion;
- (void)_markCurrentMessageAsPlayedIfNeeded;
- (void)_openURL:(id)l completionHandler:(id)handler;
- (void)_postCurrentPluginBrowserViewDidPrepareForDisplay;
- (void)_prepareForAddStickerFromSubjectLift;
- (void)_presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle destructiveButtonTitle:(id)destructiveButtonTitle completion:(id)completion;
- (void)_presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle image:(id)image completion:(id)completion;
- (void)_remoteViewDidBecomeReadyForDisplay;
- (void)_removeAssetArchiveWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)_removeRemoteViewController;
- (void)_removeRemoteViewControllerAndCancelExtensionRequestIfNeeded;
- (void)_requestConversationAvatarsWithSize:(CGSize)size completionHandler:(id)handler;
- (void)_requestFullScreenModalPresentationWithSize:(CGSize)size;
- (void)_requestHostSceneIdentifierWithCompletion:(id)completion;
- (void)_requestPresentationStyle:(unint64_t)style;
- (void)_requestPresentationWithStickerType:(id)type identifier:(id)identifier;
- (void)_requestStickerExtensionMetadataDictionary:(id)dictionary;
- (void)_sendBecomeActiveMessage;
- (void)_sendCustomAcknowledgement:(id)acknowledgement selectedMessage:(id)message completionHandler:(id)handler;
- (void)_sendInstantiationRequestToExtensionWithHandler:(id)handler;
- (void)_sendResignActiveMessage;
- (void)_setPluginIdentifierToShow:(id)show completion:(id)completion;
- (void)_showBrowserForPluginIdentifier:(id)identifier style:(unint64_t)style completion:(id)completion;
- (void)_stageAppItem:(id)item skipShelf:(BOOL)shelf completionHandler:(id)handler;
- (void)_stageAssetArchive:(id)archive skipShelf:(BOOL)shelf completionHandler:(id)handler;
- (void)_stageMediaItem:(id)item skipShelf:(BOOL)shelf forceStage:(BOOL)stage completionHandler:(id)handler;
- (void)_stageRichLink:(id)link skipShelf:(BOOL)shelf completionHandler:(id)handler;
- (void)_startDragMediaItem:(id)item frameInRemoteView:(CGRect)view fence:(id)fence completionHandler:(id)handler;
- (void)_stickerDruidDragEndedWithPayload:(id)payload;
- (void)_stickerDruidDragEndedWithPayload:(id)payload pluginIdentifier:(id)identifier;
- (void)_stickerDruidDragStarted;
- (void)_transportStagingStateDidChange;
- (void)_updateSnapshotForNextLaunch:(id)launch;
- (void)appendDraftAssetArchivesIfNeeded:(id)needed;
- (void)applicationDidEnterBackground:(id)background;
- (void)applicationWillEnterForeground:(id)foreground;
- (void)beginDisablingUserInteraction;
- (void)beginSuppressingAppearanceMethods;
- (void)browserScrolledOffScreen;
- (void)browserScrolledOnScreen;
- (void)chatKitTransport:(id)transport commitPayload:(id)payload;
- (void)chatKitTransport:(id)transport didUpdatePersistedURLsForPackageIdentifier:(id)identifier;
- (void)checkForTouchInRemoteProcessIfNecessaryWithCompletion:(id)completion;
- (void)clearAllStagedPluginPackages;
- (void)clearPluginPackagesWithIdentifiers:(id)identifiers;
- (void)datasourcePayloadDidChange:(id)change updateFlags:(unint64_t)flags;
- (void)dealloc;
- (void)deferredForceTearDownRemoteView;
- (void)didCancelSendingPluginPayload:(id)payload;
- (void)didMoveToParentViewController:(id)controller;
- (void)didReceiveMemoryWarning;
- (void)didSelectGPAsset:(id)asset recipeData:(id)data completion:(id)completion;
- (void)didStartSendingPluginPayload:(id)payload;
- (void)dragManager:(id)manager didBeginDraggingItem:(id)item;
- (void)dragManager:(id)manager didEndDraggingItem:(id)item toDragTarget:(id)target dropArea:(int)area;
- (void)dropAssertion;
- (void)endDisablingUserInteraction;
- (void)endSuppressingAppearanceMethods;
- (void)forceTearDownRemoteViewOverridingExceptions:(BOOL)exceptions;
- (void)handleTextInputPayload:(id)payload withPayloadID:(id)d completion:(id)completion;
- (void)killExtensionProcess;
- (void)loadProxyIfNeededWithCompletion:(id)completion;
- (void)loadRemoteViewWithCompletion:(id)completion;
- (void)messageAddedWithDataSource:(id)source;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)packageTransport:(id)transport didUnstagePackageWithIdentifier:(id)identifier;
- (void)prepareForPresentationWithCompletionHandler:(id)handler;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)removeSnapshot;
- (void)requestStickerExtensionMetadataDictionary:(id)dictionary;
- (void)restoreDraftStateFromPayload:(id)payload;
- (void)saveSnapshotForBrowserViewController;
- (void)setBalloonPluginDataSource:(id)source;
- (void)showSnapshotForSize:(CGSize)size;
- (void)stageAssetToTransportAndNotifySendDelegate:(id)delegate;
- (void)touchUpOccuredForIdentifier:(unsigned int)identifier detached:(BOOL)detached context:(unsigned int)context pid:(int)pid;
- (void)unloadRemoteView;
- (void)validatePayloadForSending:(id)sending associatedText:(id)text completionHandler:(id)handler;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidTransitionToCompactPresentation;
- (void)viewDidTransitionToExpandedPresentation;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToCompactPresentation;
- (void)viewWillTransitionToExpandedPresentation;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)volumeButtonPressed:(BOOL)pressed;
@end

@implementation MSMessageExtensionBrowserViewController

- (IMBalloonAppExtension)balloonExtensionPlugin
{
  balloonPlugin = [(MSMessageExtensionBrowserViewController *)self balloonPlugin];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    balloonPlugin = 0;
  }

  return balloonPlugin;
}

- (MSMessageExtensionBrowserViewController)initWithBalloonPlugin:(id)plugin dataSource:(id)source
{
  sourceCopy = source;
  v21.receiver = self;
  v21.super_class = MSMessageExtensionBrowserViewController;
  v7 = [(MSMessageExtensionBrowserViewController *)&v21 initWithBalloonPlugin:plugin dataSource:sourceCopy];
  if (v7)
  {
    message = [sourceCopy message];
    message = v7->_message;
    v7->_message = message;

    v7->_shouldAutomaticallyForwardAppearanceMethods = 1;
    sessionUUID = v7->_sessionUUID;
    v7->_sessionUUID = 0;

    remoteViewController = v7->_remoteViewController;
    v7->_remoteViewController = 0;

    v7->_extensionIsActive = 0;
    v7->_extensionLoadRequestCount = 0;
    v7->_extensionLoadRequestInFlight = 0;
    v12 = objc_alloc_init(NSMutableArray);
    extensionLoadRequestCompletionBlockArray = v7->_extensionLoadRequestCompletionBlockArray;
    v7->_extensionLoadRequestCompletionBlockArray = v12;

    v14 = objc_alloc_init(MSTouchTracker);
    touchTracker = v7->_touchTracker;
    v7->_touchTracker = v14;

    [sourceCopy setDelegate:v7];
    if (CKIsRunningInMessages())
    {
      v16 = +[BKSTouchDeliveryObservationService sharedInstance];
      [v16 addObserver:v7];

      v17 = +[NSNotificationCenter defaultCenter];
      [v17 addObserver:v7 selector:"applicationDidEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];

      v18 = +[NSNotificationCenter defaultCenter];
      [v18 addObserver:v7 selector:"applicationWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];
    }

    v19 = +[NSNotificationCenter defaultCenter];
    [v19 addObserver:v7 selector:"_handleExtensionInterruption:" name:IMExtensionRemoteConnectionWasInterrupted object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = ms_defaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[MSMessageExtensionBrowserViewController dealloc]";
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%s %lX", buf, 0x16u);
  }

  [self->_assetExplorerTransport unregisterChangeObserver:self context:MSAssetExplorerTransportContext];
  [(MSMessageExtensionBrowserViewController *)self forceTearDownRemoteView];
  if (CKIsRunningInMessages())
  {
    v4 = +[BKSTouchDeliveryObservationService sharedInstance];
    [v4 removeObserver:self];
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = MSMessageExtensionBrowserViewController;
  [(MSMessageExtensionBrowserViewController *)&v6 dealloc];
}

- (NSString)description
{
  balloonPlugin = [(MSMessageExtensionBrowserViewController *)self balloonPlugin];
  identifier = [balloonPlugin identifier];
  v5 = [NSString stringWithFormat:@"<%@ %p %@>", identifier, self, objc_opt_class()];

  return v5;
}

- (id)navigationItem
{
  navigationItem = [(UIViewController *)self->_remoteViewController navigationItem];
  v4 = navigationItem;
  if (navigationItem)
  {
    navigationItem2 = navigationItem;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MSMessageExtensionBrowserViewController;
    navigationItem2 = [(MSMessageExtensionBrowserViewController *)&v8 navigationItem];
  }

  v6 = navigationItem2;

  return v6;
}

- (id)childViewControllerForStatusBarHidden
{
  v4.receiver = self;
  v4.super_class = MSMessageExtensionBrowserViewController;
  childViewControllerForStatusBarHidden = [(MSMessageExtensionBrowserViewController *)&v4 childViewControllerForStatusBarHidden];

  return childViewControllerForStatusBarHidden;
}

- (id)childViewControllerForStatusBarStyle
{
  v4.receiver = self;
  v4.super_class = MSMessageExtensionBrowserViewController;
  childViewControllerForStatusBarStyle = [(MSMessageExtensionBrowserViewController *)&v4 childViewControllerForStatusBarStyle];

  return childViewControllerForStatusBarStyle;
}

- (_UIRemoteViewController)_containedRemoteViewController
{
  if ([(MSMessageExtensionBrowserViewController *)self _shouldVendRemoteViewControllerForCardSwipeSPI])
  {
    v3 = self->_remoteViewController;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_shouldVendRemoteViewControllerForCardSwipeSPI
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([(MSMessageExtensionBrowserViewController *)self linkedBeforeYukon]& 1) == 0)
  {
    balloonExtensionPlugin = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
    extension = [balloonExtensionPlugin extension];
    v6 = extension;
    if (extension)
    {
      infoDictionary = [extension infoDictionary];
      v8 = [infoDictionary objectForKeyedSubscript:kCFBundleIdentifierKey];
      if (v8 && (-[MSMessageExtensionBrowserViewController _bundleIDsForSwipeGestureDisablement](self, "_bundleIDsForSwipeGestureDisablement"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 containsObject:v8], v9, v10))
      {
        v3 = [(MSMessageExtensionBrowserViewController *)self linkedBeforeDawn]^ 1;
      }

      else
      {
        LOBYTE(v3) = 1;
      }
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (id)_bundleIDsForSwipeGestureDisablement
{
  if (qword_57198 != -1)
  {
    sub_2BE54();
  }

  v3 = qword_57190;

  return v3;
}

- (BOOL)hasEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  extension = [(MSMessageExtensionBrowserViewController *)self extension];

  if (extension)
  {
    extension2 = [(MSMessageExtensionBrowserViewController *)self extension];
    v7 = [extension2 _extensionContextForUUID:self->_sessionUUID];
    _auxiliaryConnection = [v7 _auxiliaryConnection];
    v9 = [_auxiliaryConnection valueForEntitlement:entitlementCopy];

    if (v9)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 1;
  }

  return isKindOfClass & 1;
}

- (BOOL)isLoaded
{
  if (self->_sessionUUID)
  {
    return 1;
  }

  extension = [(MSMessageExtensionBrowserViewController *)self extension];
  if (extension)
  {
    v2 = 0;
  }

  else
  {
    v2 = self->_remoteViewController != 0;
  }

  return v2;
}

- (void)_postCurrentPluginBrowserViewDidPrepareForDisplay
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2C5C;
  block[3] = &unk_4CE30;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)loadRemoteViewWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = IMLogHandleForCategory();
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "extensionLoading", "", buf, 2u);
  }

  isInDeferredTeardown = [(MSMessageExtensionBrowserViewController *)self isInDeferredTeardown];
  v10 = self->_remoteViewController;
  v11 = ms_defaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "loadRemoteView %@", buf, 0xCu);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_2F40;
  v15[3] = &unk_4CE58;
  v16 = v10;
  selfCopy2 = self;
  v21 = isInDeferredTeardown;
  v18 = v8;
  v19 = completionCopy;
  v20 = v6;
  v12 = v8;
  v13 = completionCopy;
  v14 = v10;
  [(MSMessageExtensionBrowserViewController *)self _instantiateRemoteViewControllerIfNeeded:v15];
}

- (void)unloadRemoteView
{
  v3 = ms_defaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "unloadRemoteView %@", &v4, 0xCu);
  }

  [(MSMessageExtensionBrowserViewController *)self _removeRemoteViewControllerAndCancelExtensionRequestIfNeeded];
}

- (BOOL)mayBeKeptInViewHierarchy
{
  balloonExtensionPlugin = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  proxy = [balloonExtensionPlugin proxy];

  v5 = [proxy objectForInfoDictionaryKey:@"NSCameraUsageDescription" ofClass:objc_opt_class() inScope:0];

  v6 = [proxy objectForInfoDictionaryKey:@"NSMicrophoneUsageDescription" ofClass:objc_opt_class() inScope:0];
  v7 = v5 | v6;

  inFullScreenModalPresentation = [(MSMessageExtensionBrowserViewController *)self inFullScreenModalPresentation];
  if (v7)
  {
    v9 = inFullScreenModalPresentation;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)setBalloonPluginDataSource:(id)source
{
  sourceCopy = source;
  balloonPluginDataSource = [(MSMessageExtensionBrowserViewController *)self balloonPluginDataSource];
  v6 = sourceCopy;
  if (balloonPluginDataSource != v6)
  {
    [balloonPluginDataSource setDelegate:0];
    [v6 setDelegate:self];
    message = [v6 message];
    message = self->_message;
    self->_message = message;

    v11.receiver = self;
    v11.super_class = MSMessageExtensionBrowserViewController;
    [(MSMessageExtensionBrowserViewController *)&v11 setBalloonPluginDataSource:v6];
    currentConversationState = [(MSMessageExtensionBrowserViewController *)self currentConversationState];
    remoteProxy = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
    [remoteProxy _conversationDidChangeWithConversationState:currentConversationState];

    [(MSMessageExtensionBrowserViewController *)self _markCurrentMessageAsPlayedIfNeeded];
  }
}

- (void)_removeRemoteViewControllerAndCancelExtensionRequestIfNeeded
{
  v3 = ms_defaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [NSNumber numberWithUnsignedInteger:[(MSMessageExtensionBrowserViewController *)self extensionLoadRequestCount]];
    *buf = 138412290;
    v7 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "_removeRemoteViewControllerAndCancelExtensionRequestIfNeeded current request count %@", buf, 0xCu);
  }

  if ([(MSMessageExtensionBrowserViewController *)self extensionLoadRequestCount])
  {
    [(MSMessageExtensionBrowserViewController *)self setExtensionLoadRequestCount:[(MSMessageExtensionBrowserViewController *)self extensionLoadRequestCount]- 1];
  }

  if (![(MSMessageExtensionBrowserViewController *)self extensionLoadRequestCount])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_349C;
    block[3] = &unk_4CE30;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_cancelExtensionRequest
{
  if (self->_sessionUUID)
  {
    extension = [(MSMessageExtensionBrowserViewController *)self extension];
    [extension cancelExtensionRequestWithIdentifier:self->_sessionUUID];

    v4 = ms_defaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, " cancelled extension request for extension %@", &v6, 0xCu);
    }

    p_super = &self->_sessionUUID->super;
    self->_sessionUUID = 0;
  }

  else
  {
    p_super = ms_defaultLog();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_0, p_super, OS_LOG_TYPE_DEFAULT, " no _sessionUUID could not cancel %@", &v6, 0xCu);
    }
  }
}

- (void)deferredForceTearDownRemoteView
{
  if (![(MSMessageExtensionBrowserViewController *)self isInDeferredTeardown]&& ![(MSMessageExtensionBrowserViewController *)self isWaitingForReply])
  {
    [(MSMessageExtensionBrowserViewController *)self setIsInDeferredTeardown:1];
    remoteProxy = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
    [remoteProxy _hostDidBeginDeferredTeardown];

    im_dispatch_after();
  }
}

- (void)dropAssertion
{
  extension = [(MSMessageExtensionBrowserViewController *)self extension];
  [extension _dropAssertion];
}

- (void)killExtensionProcess
{
  v3 = +[CKPluginExtensionStateObserver sharedInstance];
  passKitUIPresented = [v3 passKitUIPresented];

  if (passKitUIPresented)
  {
    v5 = ms_defaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      v6 = "self %@ killExtensionProcess not doing  work as we are suspending due to passkit UI";
LABEL_7:
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v7 = +[CKPluginExtensionStateObserver sharedInstance];
  iTunesStoreDialogPresented = [v7 iTunesStoreDialogPresented];

  if (iTunesStoreDialogPresented)
  {
    v5 = ms_defaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      v6 = "self %@ killExtensionProcess not  suspend work as we are suspending due to iTunesStore UI";
      goto LABEL_7;
    }

LABEL_8:

    return;
  }

  if ((IMGetDomainBoolForKey() & 1) == 0)
  {
    extension = [(MSMessageExtensionBrowserViewController *)self extension];
    [extension _kill:9];
  }
}

- (BOOL)isAlive
{
  remoteProxy = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
  v3 = remoteProxy != 0;

  return v3;
}

- (void)didMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = MSMessageExtensionBrowserViewController;
  [(MSMessageExtensionBrowserViewController *)&v5 didMoveToParentViewController:?];
  if (controller)
  {
    [(MSMessageExtensionBrowserViewController *)self setIsInDeferredTeardown:0];
  }
}

- (BOOL)prefersStatusBarHidden
{
  balloonExtensionPlugin = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  identifier = [balloonExtensionPlugin identifier];
  v5 = IMBalloonExtensionIDWithSuffix();
  v6 = [identifier isEqualToString:v5];

  if (!v6)
  {
    return 0;
  }

  remoteViewController = [(MSMessageExtensionBrowserViewController *)self remoteViewController];

  if (remoteViewController)
  {
    remoteViewController2 = [(MSMessageExtensionBrowserViewController *)self remoteViewController];
    prefersStatusBarHidden = [remoteViewController2 prefersStatusBarHidden];

    return prefersStatusBarHidden;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = MSMessageExtensionBrowserViewController;
    return [(MSMessageExtensionBrowserViewController *)&v11 prefersStatusBarHidden];
  }
}

- (void)forceTearDownRemoteViewOverridingExceptions:(BOOL)exceptions
{
  [(MSMessageExtensionBrowserViewController *)self setIsInDeferredTeardown:0];
  if (exceptions)
  {
    goto LABEL_2;
  }

  balloonPlugin = [(MSMessageExtensionBrowserViewController *)self balloonPlugin];
  identifier = [balloonPlugin identifier];
  v23 = [identifier containsString:IMBalloonPluginIdentifierSurf];

  v24 = +[CKPluginExtensionStateObserver sharedInstance];
  LOBYTE(identifier) = [v24 passKitUIPresented];

  if ((identifier & 1) != 0 || v23)
  {
    v27 = ms_defaultLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138412290;
      selfCopy2 = self;
      v28 = "self %@ prepareForSuspend not doing suspend work as we are suspending due to passkit UI/ Apple Pay UI";
      goto LABEL_17;
    }

LABEL_18:

    return;
  }

  v25 = +[CKPluginExtensionStateObserver sharedInstance];
  iTunesStoreDialogPresented = [v25 iTunesStoreDialogPresented];

  if (iTunesStoreDialogPresented)
  {
    v27 = ms_defaultLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138412290;
      selfCopy2 = self;
      v28 = "self %@ prepareForSuspend not doing suspend work as we are suspending due to iTunesStore UI";
LABEL_17:
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, v28, &v29, 0xCu);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

LABEL_2:
  v5 = ms_defaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    remoteViewController = self->_remoteViewController;
    sessionUUID = self->_sessionUUID;
    v8 = [NSNumber numberWithUnsignedInteger:[(MSMessageExtensionBrowserViewController *)self extensionLoadRequestCount]];
    v29 = 138412802;
    selfCopy2 = remoteViewController;
    v31 = 2112;
    v32 = sessionUUID;
    v33 = 2112;
    v34 = v8;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "forceTearDownRemoteView current remoteViewController %@, sessionUUID %@, request count %@", &v29, 0x20u);
  }

  [(MSMessageExtensionBrowserViewController *)self _sendResignActiveMessage];
  [(MSMessageExtensionBrowserViewController *)self setIsWaitingForReply:0];
  remoteViewController = [(MSMessageExtensionBrowserViewController *)self remoteViewController];

  if (remoteViewController)
  {
    remoteViewController2 = [(MSMessageExtensionBrowserViewController *)self remoteViewController];
    [remoteViewController2 removeFromParentViewController];

    remoteViewController3 = [(MSMessageExtensionBrowserViewController *)self remoteViewController];
    view = [remoteViewController3 view];
    [view removeFromSuperview];

    [(MSMessageExtensionBrowserViewController *)self setRemoteViewController:0];
  }

  [(MSMessageExtensionBrowserViewController *)self setExtensionLoadRequestCount:0];
  v13 = ms_traceLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_2BE68(v13, v14, v15, v16, v17, v18, v19, v20);
  }

  [(MSMessageExtensionBrowserViewController *)self _cancelExtensionRequest];
  if (![(MSMessageExtensionBrowserViewController *)self mayBeKeptInViewHierarchy])
  {
    [(MSMessageExtensionBrowserViewController *)self killExtensionProcess];
  }
}

- (void)_addRemoteViewController
{
  remoteViewController = self->_remoteViewController;
  if (remoteViewController)
  {
    view = [(UIViewController *)remoteViewController view];
    [view setAutoresizingMask:18];
    view2 = [(MSMessageExtensionBrowserViewController *)self view];
    [view2 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    view3 = [(UIViewController *)self->_remoteViewController view];
    [view3 setFrame:{v6, v8, v10, v12}];

    v14 = +[CKUIBehavior sharedBehaviors];
    theme = [v14 theme];
    browserCardBackgroundColor = [theme browserCardBackgroundColor];
    view4 = [(MSMessageExtensionBrowserViewController *)self view];
    [view4 setBackgroundColor:browserCardBackgroundColor];

    if (+[_MSPresentationState isRunningInCameraContext])
    {
      view5 = [(MSMessageExtensionBrowserViewController *)self view];
      [view5 addSubview:view];

      v19 = +[UIColor secondarySystemBackgroundColor];
      view6 = [(UIViewController *)self->_remoteViewController view];
      [view6 setBackgroundColor:v19];

      [(MSMessageExtensionBrowserViewController *)self addChildViewController:self->_remoteViewController];
      [(UIViewController *)self->_remoteViewController beginAppearanceTransition:1 animated:0];
    }

    else
    {
      v22 = +[CKUIBehavior sharedBehaviors];
      theme2 = [v22 theme];
      browserCardBackgroundColor2 = [theme2 browserCardBackgroundColor];
      view7 = [(UIViewController *)self->_remoteViewController view];
      [view7 setBackgroundColor:browserCardBackgroundColor2];

      [(MSMessageExtensionBrowserViewController *)self addChildViewController:self->_remoteViewController];
      [(UIViewController *)self->_remoteViewController beginAppearanceTransition:1 animated:0];
      view8 = [(MSMessageExtensionBrowserViewController *)self view];
      [view8 addSubview:view];
    }

    view9 = [(MSMessageExtensionBrowserViewController *)self view];
    [view9 setNeedsLayout];

    [(UIViewController *)self->_remoteViewController endAppearanceTransition];
    [(UIViewController *)self->_remoteViewController didMoveToParentViewController:self];
    [(MSMessageExtensionBrowserViewController *)self removeSnapshot];
  }

  else
  {
    v21 = ms_defaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_2BEE0(v21);
    }
  }
}

- (void)_removeRemoteViewController
{
  parentViewController = [(UIViewController *)self->_remoteViewController parentViewController];

  if (parentViewController == self)
  {
    [(UIViewController *)self->_remoteViewController beginAppearanceTransition:0 animated:0];
    view = [(UIViewController *)self->_remoteViewController view];
    [view removeFromSuperview];
    [(UIViewController *)self->_remoteViewController removeFromParentViewController];
    [(UIViewController *)self->_remoteViewController endAppearanceTransition];
  }
}

- (void)_addRemoteViewControllerAndConfigureExtension
{
  v3 = ms_defaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "_addRemoteViewControllerAndConfigureExtension %@", &v4, 0xCu);
  }

  [(MSMessageExtensionBrowserViewController *)self _sendBecomeActiveMessage];
  [(MSMessageExtensionBrowserViewController *)self _addRemoteViewController];
}

- (void)applicationDidEnterBackground:(id)background
{
  if (CKIsRunningInMessages())
  {
    v4 = +[BKSTouchDeliveryObservationService sharedInstance];
    [v4 removeObserver:self];
  }
}

- (void)applicationWillEnterForeground:(id)foreground
{
  if (CKIsRunningInMessages())
  {
    v4 = +[BKSTouchDeliveryObservationService sharedInstance];
    [v4 addObserver:self];
  }
}

- (void)_handleExtensionInterruption:(id)interruption
{
  userInfo = [interruption userInfo];
  v5 = [userInfo objectForKey:IMExtensionRemoteConnectionInterruptedBundleIdentifier];

  balloonExtensionPlugin = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  identifier = [balloonExtensionPlugin identifier];
  v8 = [v5 isEqualToString:identifier];

  if (v8)
  {
    v9 = ms_defaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "MSMessageExtensionBrowserViewController _handleExtensionInterruption for identifier %@", &v10, 0xCu);
    }

    [(MSMessageExtensionBrowserViewController *)self _cancelExtensionRequest];
    [(MSMessageExtensionBrowserViewController *)self setSessionUUID:0];
    [(MSMessageExtensionBrowserViewController *)self setExtensionLoadRequestCount:0];
    [(MSMessageExtensionBrowserViewController *)self setExtensionLoadRequestInFlight:0];
  }
}

- (id)_arrayForApplePlistKey:(id)key
{
  keyCopy = key;
  balloonExtensionPlugin = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  proxy = [balloonExtensionPlugin proxy];

  if (proxy)
  {
    balloonExtensionPlugin2 = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
    proxy2 = [balloonExtensionPlugin2 proxy];
    v9 = [proxy2 objectForInfoDictionaryKey:keyCopy ofClass:objc_opt_class() inScope:2];
  }

  else
  {
    balloonPlugin = [(MSMessageExtensionBrowserViewController *)self balloonPlugin];
    appBundle = [balloonPlugin appBundle];
    balloonExtensionPlugin2 = [appBundle objectForInfoDictionaryKey:keyCopy];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = balloonExtensionPlugin2;
    }

    else
    {
      v12 = 0;
    }

    v9 = v12;
  }

  if (v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = &__NSArray0__struct;
  }

  v14 = v13;

  return v13;
}

- (BOOL)wantsDarkUI
{
  balloonExtensionPlugin = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  proxy = [balloonExtensionPlugin proxy];
  v4 = [proxy objectForInfoDictionaryKey:@"MSMessagesOverlayAppearanceDark" ofClass:objc_opt_class() inScope:2];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)wantsOpaqueUI
{
  balloonExtensionPlugin = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  proxy = [balloonExtensionPlugin proxy];
  v4 = [proxy objectForInfoDictionaryKey:@"MSMessagesOverlayAppearanceOpaque" ofClass:objc_opt_class() inScope:2];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)shouldSuppressEntryView
{
  balloonExtensionPlugin = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  proxy = [balloonExtensionPlugin proxy];
  v4 = [proxy objectForInfoDictionaryKey:@"MSExpandedPresentationHidesComposeField" ofClass:objc_opt_class() inScope:2];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (unint64_t)sheetDetentStyle
{
  v2 = [(MSMessageExtensionBrowserViewController *)self _arrayForApplePlistKey:@"MSMessagesAppViewControllerSupportedPresentationStyles"];
  v3 = [v2 containsObject:@"MSMessagesAppPresentationStyleCompact"];
  v4 = [v2 containsObject:@"MSMessagesAppPresentationStyleExpanded"];
  v5 = 2;
  if (v3 & 1 | ((v4 & 1) == 0))
  {
    v5 = 0;
  }

  if (v4 & 1 | ((v3 & 1) == 0))
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)requestSnapshotDataForPersistance
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_48E0;
  v31 = sub_48F0;
  v32 = 0;
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_48F8;
  v24 = &unk_4CE80;
  v26 = &v27;
  v4 = v3;
  v25 = v4;
  v5 = objc_retainBlock(&v21);
  v6 = ms_traceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_2BF24(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  v14 = [(MSMessageExtensionBrowserViewController *)self remoteProxy:v21];
  [v14 _requestSnapshotWithCompletion:v5];

  v15 = dispatch_time(0, 3000000000);
  if (dispatch_group_wait(v4, v15))
  {
    v16 = ms_defaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      balloonPlugin = [(MSMessageExtensionBrowserViewController *)self balloonPlugin];
      identifier = [balloonPlugin identifier];
      *buf = 138412290;
      v34 = identifier;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Timed out generating snapshot for %@", buf, 0xCu);
    }
  }

  v19 = v28[5];

  _Block_object_dispose(&v27, 8);

  return v19;
}

- (id)cancelTouchesInView
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _cancelTouchesForCurrentEventInHostedContent = [(UIViewController *)self->_remoteViewController _cancelTouchesForCurrentEventInHostedContent];
  }

  else
  {
    _cancelTouchesForCurrentEventInHostedContent = 0;
  }

  return _cancelTouchesForCurrentEventInHostedContent;
}

- (id)extension
{
  balloonExtensionPlugin = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  extension = [balloonExtensionPlugin extension];

  return extension;
}

- (_MSMessageComposeExtensionProtocol)remoteProxy
{
  extension = [(MSMessageExtensionBrowserViewController *)self extension];

  if (extension)
  {
    extension2 = [(MSMessageExtensionBrowserViewController *)self extension];
    v5 = [(UIViewController *)extension2 _extensionContextForUUID:self->_sessionUUID];
    _auxiliaryConnection = [v5 _auxiliaryConnection];
    remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];
  }

  else
  {
    extension2 = self->_remoteViewController;
    if (objc_opt_respondsToSelector())
    {
      remoteObjectProxy = [(UIViewController *)extension2 appContext];
    }

    else
    {
      remoteObjectProxy = 0;
    }
  }

  return remoteObjectProxy;
}

- (void)_callAndDequeueLoadCompletionBlocks:(BOOL)blocks
{
  blocksCopy = blocks;
  v5 = ms_defaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    extensionLoadRequestCompletionBlockArray = [(MSMessageExtensionBrowserViewController *)self extensionLoadRequestCompletionBlockArray];
    v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [extensionLoadRequestCompletionBlockArray count]);
    v8 = [NSNumber numberWithBool:blocksCopy];
    *buf = 138412802;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Will dequeue %@ blocks with result %@ %@", buf, 0x20u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  extensionLoadRequestCompletionBlockArray2 = [(MSMessageExtensionBrowserViewController *)self extensionLoadRequestCompletionBlockArray];
  v10 = [extensionLoadRequestCompletionBlockArray2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(extensionLoadRequestCompletionBlockArray2);
        }

        (*(*(*(&v15 + 1) + 8 * v13) + 16))();
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [extensionLoadRequestCompletionBlockArray2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  extensionLoadRequestCompletionBlockArray3 = [(MSMessageExtensionBrowserViewController *)self extensionLoadRequestCompletionBlockArray];
  [extensionLoadRequestCompletionBlockArray3 removeAllObjects];
}

- (void)_sendInstantiationRequestToExtensionWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = IMLogHandleForCategory();
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "extensionLoading", "", buf, 2u);
  }

  balloonExtensionPlugin = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  extension = [balloonExtensionPlugin extension];
  if (extension)
  {
    v37 = handlerCopy;
    v11 = objc_alloc_init(NSExtensionItem);
    v12 = CKIsRunningInCameraAppsClient();
    v13 = CKIsRunningInUserGeneratedStickersExtension();
    [(MSMessageExtensionBrowserViewController *)self preferredContentSize];
    if (v15 == CGSizeZero.width && v14 == CGSizeZero.height)
    {
      view = [(MSMessageExtensionBrowserViewController *)self view];
      [view bounds];
      x = v24;
      y = v25;
      v20 = v26;
      v22 = v27;
    }

    else
    {
      x = CGPointZero.x;
      y = CGPointZero.y;
      [(MSMessageExtensionBrowserViewController *)self preferredContentSize];
      v20 = v19;
      v22 = v21;
    }

    v40[0] = _MSExtensionItemHostViewBoundsKey;
    v28 = [NSValue valueWithCGRect:x, y, v20, v22];
    v41[0] = v28;
    v40[1] = _MSExtensionContextIsPrimary;
    isPrimaryViewController = [(MSMessageExtensionBrowserViewController *)self isPrimaryViewController];
    v30 = &off_4EA90;
    if (isPrimaryViewController)
    {
      v31 = &off_4EA78;
    }

    else
    {
      v31 = &off_4EA90;
    }

    if (v12)
    {
      v32 = &off_4EA78;
    }

    else
    {
      v32 = &off_4EA90;
    }

    v41[1] = v31;
    v41[2] = v32;
    v40[2] = _MSExtensionItemContextIsMessagesCameraKey;
    v40[3] = _MSExtensionItemContextIsUserGeneratedStickerKey;
    if (v13)
    {
      v30 = &off_4EA78;
    }

    v41[3] = v30;
    v33 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:4];
    [v11 setUserInfo:v33];

    v39 = v11;
    v34 = [NSArray arrayWithObjects:&v39 count:1];
    handlerCopy = v37;
    [extension instantiateViewControllerWithInputItems:v34 listenerEndpoint:0 connectionHandler:v37];
  }

  v35 = v8;
  v36 = v35;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v36, OS_SIGNPOST_INTERVAL_END, v6, "extensionLoading", "", buf, 2u);
  }
}

- (void)_instantiateRemoteViewControllerIfNeededWithIntent:(int64_t)intent completion:(id)completion
{
  completionCopy = completion;
  [(MSMessageExtensionBrowserViewController *)self setIsInDeferredTeardown:0];
  extension = [(MSMessageExtensionBrowserViewController *)self extension];

  if (!extension)
  {
    if (self->_remoteViewController)
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1);
      }
    }

    else
    {
      balloonExtensionPlugin = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
      appBundle = [balloonExtensionPlugin appBundle];
      v33 = objc_alloc_init([appBundle principalClass]);

      v34 = [[_MSMessageAppBundleContext alloc] initWithViewController:v33 wantsLiveView:0];
      [(MSMessageExtensionBrowserViewController *)self setAppContext:v34];
      v35 = [[_MSMessageAppContext alloc] initWithAppContext:v34];
      [v33 setAppContext:v35];

      v36 = [[_MSMessageAppBundleHostContext alloc] initWithAppContext:0];
      [v36 setDelegate:self];
      [v34 setHostContext:v36];
      [(MSMessageExtensionBrowserViewController *)self setRemoteViewController:v33];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_5634;
      block[3] = &unk_4CEA8;
      block[4] = self;
      v47 = completionCopy;
      dispatch_async(&_dispatch_main_q, block);
    }

    goto LABEL_40;
  }

  v8 = ms_defaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [NSNumber numberWithUnsignedInteger:[(MSMessageExtensionBrowserViewController *)self extensionLoadRequestCount]];
    v10 = objc_retainBlock(completionCopy);
    v11 = [NSNumber numberWithBool:[(MSMessageExtensionBrowserViewController *)self extensionLoadRequestInFlight]];
    *buf = 138413058;
    selfCopy2 = v9;
    v50 = 2112;
    v51 = v10;
    v52 = 2112;
    selfCopy = self;
    v54 = 2112;
    v55 = v11;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "_instantiateRemoteViewController. Current request count %@, block %@ self %@ request in flight %@", buf, 0x2Au);
  }

  [(MSMessageExtensionBrowserViewController *)self setExtensionLoadRequestCount:[(MSMessageExtensionBrowserViewController *)self extensionLoadRequestCount]+ 1];
  if ([(MSMessageExtensionBrowserViewController *)self extensionLoadRequestCount]== &dword_0 + 1)
  {
    v12 = ![(MSMessageExtensionBrowserViewController *)self extensionLoadRequestInFlight];
  }

  else
  {
    v12 = 0;
  }

  if ([(MSMessageExtensionBrowserViewController *)self extensionLoadRequestInFlight])
  {
    if (completionCopy)
    {
      goto LABEL_12;
    }

LABEL_26:
    if ((v12 & 1) == 0)
    {
      remoteViewController = [(MSMessageExtensionBrowserViewController *)self remoteViewController];
      [remoteViewController beginAppearanceTransition:1 animated:1];

      remoteViewController2 = [(MSMessageExtensionBrowserViewController *)self remoteViewController];
      [remoteViewController2 endAppearanceTransition];

      v19 = 0;
      if (!completionCopy)
      {
        goto LABEL_40;
      }

      goto LABEL_36;
    }

    v19 = 0;
LABEL_28:
    v21 = ms_defaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "_instantiateRemoteViewController. Instantiating remote VC  %@", buf, 0xCu);
    }

    [(MSMessageExtensionBrowserViewController *)self setExtensionLoadRequestInFlight:1];
    objc_initWeak(buf, self);
    v22 = ms_traceLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_2BF9C(v22, v23, v24, v25, v26, v27, v28, v29);
    }

    v41 = _NSConcreteStackBlock;
    v42 = 3221225472;
    v43 = sub_568C;
    v44 = &unk_4CEF8;
    objc_copyWeak(v45, buf);
    v45[1] = intent;
    v30 = objc_retainBlock(&v41);
    [(MSMessageExtensionBrowserViewController *)self _sendInstantiationRequestToExtensionWithHandler:v30, v41, v42, v43, v44];

    objc_destroyWeak(v45);
    objc_destroyWeak(buf);
    if (!completionCopy)
    {
      goto LABEL_40;
    }

LABEL_36:
    if ((v19 & 1) == 0)
    {
      v39 = ms_defaultLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = [NSNumber numberWithUnsignedInteger:[(MSMessageExtensionBrowserViewController *)self extensionLoadRequestCount]];
        *buf = 138412290;
        selfCopy2 = v40;
        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "Calling block immediately. Updated Request count %@", buf, 0xCu);
      }

      completionCopy[2](completionCopy, 1);
    }

    goto LABEL_40;
  }

  if (completionCopy)
  {
    v20 = v12;
  }

  else
  {
    v20 = 0;
  }

  if ((v20 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_12:
  v13 = ms_defaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [NSNumber numberWithUnsignedInteger:[(MSMessageExtensionBrowserViewController *)self extensionLoadRequestCount]];
    if (v12)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    if ([(MSMessageExtensionBrowserViewController *)self extensionLoadRequestInFlight])
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    *buf = 138412802;
    selfCopy2 = v14;
    v50 = 2112;
    v51 = v15;
    v52 = 2112;
    selfCopy = v16;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Request in flight or we will try loading extension. Queueing block in array. Updated Request count %@, shouldLoadExtension %@, extension request in flight %@", buf, 0x20u);
  }

  extensionLoadRequestCompletionBlockArray = [(MSMessageExtensionBrowserViewController *)self extensionLoadRequestCompletionBlockArray];
  v18 = [completionCopy copy];
  [extensionLoadRequestCompletionBlockArray addObject:v18];

  if (v12)
  {
    v19 = 1;
    goto LABEL_28;
  }

LABEL_40:
}

- (void)beginSuppressingAppearanceMethods
{
  v3 = ms_traceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_2C014(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  [(MSMessageExtensionBrowserViewController *)self setShouldAutomaticallyForwardAppearanceMethods:0];
}

- (void)endSuppressingAppearanceMethods
{
  v3 = ms_traceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_2C08C(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  [(MSMessageExtensionBrowserViewController *)self setShouldAutomaticallyForwardAppearanceMethods:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = ms_traceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_2C104();
  }

  v6.receiver = self;
  v6.super_class = MSMessageExtensionBrowserViewController;
  [(MSMessageExtensionBrowserViewController *)&v6 viewWillAppear:appearCopy];
}

- (void)showSnapshotForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([(MSMessageExtensionBrowserViewController *)self shouldDisableSnapshotView]& 1) == 0)
  {
    if (width == CGSizeZero.width && height == CGSizeZero.height)
    {
      view = [(MSMessageExtensionBrowserViewController *)self view];
      [view bounds];
      width = v8;
      height = v9;
    }

    [(MSMessageExtensionBrowserViewController *)self removeSnapshot];
    balloonPlugin = [(MSMessageExtensionBrowserViewController *)self balloonPlugin];
    identifier = [balloonPlugin identifier];
    view2 = [(MSMessageExtensionBrowserViewController *)self view];
    traitCollection = [view2 traitCollection];
    v19 = +[CKSnapshotCacheKey keyWithIdentifier:interfaceStyle:bounds:](CKSnapshotCacheKey, "keyWithIdentifier:interfaceStyle:bounds:", identifier, [traitCollection userInterfaceStyle], CGPointZero.x, CGPointZero.y, width, height);

    v14 = +[CKBalloonPluginManager sharedInstance];
    v15 = [v14 browserSnapshotForKey:v19];
    [(MSMessageExtensionBrowserViewController *)self setSnapshotView:v15];

    snapshotView = [(MSMessageExtensionBrowserViewController *)self snapshotView];

    if (snapshotView)
    {
      view3 = [(MSMessageExtensionBrowserViewController *)self view];
      snapshotView2 = [(MSMessageExtensionBrowserViewController *)self snapshotView];
      [view3 insertSubview:snapshotView2 atIndex:0];
    }
  }
}

- (void)removeSnapshot
{
  snapshotView = [(MSMessageExtensionBrowserViewController *)self snapshotView];
  [snapshotView removeFromSuperview];

  [(MSMessageExtensionBrowserViewController *)self setSnapshotView:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = ms_traceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_2C1CC();
  }

  v6.receiver = self;
  v6.super_class = MSMessageExtensionBrowserViewController;
  [(MSMessageExtensionBrowserViewController *)&v6 viewDidAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = ms_traceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_2C294();
  }

  v6.receiver = self;
  v6.super_class = MSMessageExtensionBrowserViewController;
  [(MSMessageExtensionBrowserViewController *)&v6 viewWillDisappear:disappearCopy];
  if (CKIsRunningInMacCatalyst())
  {
    if ([(MSMessageExtensionBrowserViewController *)self isBeingDismissed])
    {
      [(MSMessageExtensionBrowserViewController *)self saveSnapshotForBrowserViewController];
    }
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = ms_traceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_2C35C();
  }

  v6.receiver = self;
  v6.super_class = MSMessageExtensionBrowserViewController;
  [(MSMessageExtensionBrowserViewController *)&v6 viewDidDisappear:disappearCopy];
}

- (void)browserScrolledOnScreen
{
  remoteViewController = [(MSMessageExtensionBrowserViewController *)self remoteViewController];
  if (remoteViewController)
  {
    v9 = remoteViewController;
    parentViewController = [remoteViewController parentViewController];

    remoteViewController = v9;
    if (parentViewController != self)
    {
      [(MSMessageExtensionBrowserViewController *)self _addRemoteViewController];
      remoteViewController2 = [(MSMessageExtensionBrowserViewController *)self remoteViewController];
      view = [remoteViewController2 view];
      [view setNeedsLayout];

      remoteViewController3 = [(MSMessageExtensionBrowserViewController *)self remoteViewController];
      view2 = [remoteViewController3 view];
      [view2 layoutIfNeeded];

      remoteViewController = v9;
    }
  }
}

- (void)browserScrolledOffScreen
{
  if (![(MSMessageExtensionBrowserViewController *)self isInDeferredTeardown])
  {
    remoteViewController = [(MSMessageExtensionBrowserViewController *)self remoteViewController];
    parentViewController = [remoteViewController parentViewController];

    if (parentViewController == self)
    {

      [(MSMessageExtensionBrowserViewController *)self _removeRemoteViewController];
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v7.receiver = self;
  v7.super_class = MSMessageExtensionBrowserViewController;
  [(MSMessageExtensionBrowserViewController *)&v7 viewWillTransitionToSize:coordinator withTransitionCoordinator:?];
  if (CKIsRunningInMacCatalyst())
  {
    [(MSMessageExtensionBrowserViewController *)self showSnapshotForSize:width, height];
  }
}

- (void)viewWillTransitionToExpandedPresentation
{
  v5.receiver = self;
  v5.super_class = MSMessageExtensionBrowserViewController;
  [(MSMessageExtensionBrowserViewController *)&v5 viewWillTransitionToExpandedPresentation];
  v3 = objc_alloc_init(_MSPresentationState);
  [v3 setPresentationStyle:1];
  remoteProxy = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
  [remoteProxy _presentationWillChangeToPresentationState:v3];
}

- (void)viewDidTransitionToExpandedPresentation
{
  v5.receiver = self;
  v5.super_class = MSMessageExtensionBrowserViewController;
  [(MSMessageExtensionBrowserViewController *)&v5 viewDidTransitionToExpandedPresentation];
  v3 = objc_alloc_init(_MSPresentationState);
  [v3 setPresentationStyle:1];
  remoteProxy = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
  [remoteProxy _presentationDidChangeToPresentationState:v3];
}

- (void)viewWillTransitionToCompactPresentation
{
  v5.receiver = self;
  v5.super_class = MSMessageExtensionBrowserViewController;
  [(MSMessageExtensionBrowserViewController *)&v5 viewWillTransitionToCompactPresentation];
  v3 = objc_alloc_init(_MSPresentationState);
  [v3 setPresentationStyle:0];
  remoteProxy = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
  [remoteProxy _presentationWillChangeToPresentationState:v3];
}

- (void)viewDidTransitionToCompactPresentation
{
  v8.receiver = self;
  v8.super_class = MSMessageExtensionBrowserViewController;
  [(MSMessageExtensionBrowserViewController *)&v8 viewDidTransitionToCompactPresentation];
  v3 = objc_alloc_init(_MSPresentationState);
  [v3 setPresentationStyle:0];
  if (objc_opt_respondsToSelector())
  {
    remoteViewController = self->_remoteViewController;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_6628;
    v6[3] = &unk_4CF20;
    v6[4] = self;
    v7 = v3;
    [(UIViewController *)remoteViewController synchronizeAnimationsInActions:v6];
  }

  else
  {
    remoteProxy = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
    [remoteProxy _presentationDidChangeToPresentationState:v3];
  }
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = MSMessageExtensionBrowserViewController;
  [(MSMessageExtensionBrowserViewController *)&v13 viewWillLayoutSubviews];
  view = [(MSMessageExtensionBrowserViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  view2 = [(UIViewController *)self->_remoteViewController view];
  [view2 setFrame:{v5, v7, v9, v11}];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = MSMessageExtensionBrowserViewController;
  [(MSMessageExtensionBrowserViewController *)&v2 didReceiveMemoryWarning];
}

- (id)iMessageLoginID
{
  v2 = +[IMAccountController sharedInstance];
  v3 = +[IMServiceImpl iMessageService];
  v4 = [v2 operationalAccountsForService:v3];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v6)
  {

    v9 = 0;
    goto LABEL_15;
  }

  v7 = v6;
  v8 = 0;
  v9 = 0;
  v10 = *v19;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v18 + 1) + 8 * i);
      if ([v12 accountType] == &dword_0 + 2)
      {
        v13 = v9;
        v14 = v8;
        v9 = v12;
      }

      else
      {
        v13 = v8;
        v14 = v12;
        if ([v12 accountType] != &dword_0 + 1)
        {
          continue;
        }
      }

      v15 = v12;

      v8 = v14;
    }

    v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v7);

  if (v8)
  {
    strippedLogin = [v8 strippedLogin];
    goto LABEL_16;
  }

LABEL_15:
  strippedLogin = [v9 strippedLogin];
  v8 = 0;
LABEL_16:

  return strippedLogin;
}

- (id)currentConversationState
{
  v3 = objc_alloc_init(_MSConversationState);
  conversationID = [(MSMessageExtensionBrowserViewController *)self conversationID];
  balloonExtensionPlugin = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  identifier = [balloonExtensionPlugin identifier];

  v7 = +[IMBalloonPluginManager sharedInstance];
  v46 = identifier;
  v8 = [v7 conversationID:conversationID appID:identifier];
  [v3 setConversationIdentifier:v8];

  selfCopy = self;
  if ([(MSMessageExtensionBrowserViewController *)self hasEntitlement:@"com.apple.messages.private.AllowConversationIdentifierAccess"])
  {
    conversationID2 = [(MSMessageExtensionBrowserViewController *)self conversationID];
    [v3 setConversationID:conversationID2];

    conversationEngramID = [(MSMessageExtensionBrowserViewController *)self conversationEngramID];
    [v3 setConversationEngramID:conversationEngramID];

    [v3 setIsiMessage:{-[MSMessageExtensionBrowserViewController isiMessage](self, "isiMessage")}];
    v11 = [IMNetworkMonitor createNetworkMonitorWithRemoteHost:0 delegate:0 allowsUltraConstrainedNetwork:1];
    if ([v11 attachmentPolicy] != &dword_0 + 2)
    {
      [v3 setIsiMessage:0];
      v12 = ms_defaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "MSMessageExtensionBrowserViewController. Ultra constrained network so overrode isiMessage", buf, 2u);
      }

      [v3 setIsUltraConstrainedNetwork:0];
    }

    v13 = +[CKConversationList sharedConversationList];
    v14 = [v13 conversationForExistingChatWithGUID:conversationID];

    chat = [v14 chat];
    groupID = [chat groupID];
    [v3 setGroupID:groupID];

    if (objc_opt_respondsToSelector())
    {
      [v3 setIsBusiness:{-[MSMessageExtensionBrowserViewController isBusiness](self, "isBusiness")}];
    }

    v17 = ms_defaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      if ([v3 isiMessage])
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      if ([v3 isBusiness])
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      *buf = 138412546;
      v54 = v18;
      v55 = 2112;
      v56 = v19;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "MSMessageExtensionBrowserViewController. Entitled for conversation identifiers. Configured conversationState with isiMessage: %@, isBusiness: %@.", buf, 0x16u);
    }
  }

  if ([(MSMessageExtensionBrowserViewController *)self hasEntitlement:@"com.apple.messages.private.AllowParticipantAddressAccess"])
  {
    iMessageLoginID = [(MSMessageExtensionBrowserViewController *)self iMessageLoginID];
    [v3 setiMessageLoginID:iMessageLoginID];

    sender = [(MSMessageExtensionBrowserViewController *)self sender];
    [v3 setSenderAddress:sender];

    recipients = [(MSMessageExtensionBrowserViewController *)self recipients];
    [v3 setRecipientAddresses:recipients];
  }

  if ([(MSMessageExtensionBrowserViewController *)self hasEntitlement:@"com.apple.messages.private.AllowConversationContextAccess"])
  {
    generativeContext = [(MSMessageExtensionBrowserViewController *)self generativeContext];
    [v3 setConversationContext:generativeContext];

    generatedSummary = [(MSMessageExtensionBrowserViewController *)self generatedSummary];
    [v3 setGeneratedSummary:generatedSummary];
  }

  v25 = +[IMBalloonPluginManager sharedInstance];
  v26 = [v25 localParticipantIdentifierForAppID:identifier conversationID:conversationID];
  v45 = v3;
  [v3 setSenderIdentifier:v26];

  v27 = +[NSMutableArray array];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  recipients2 = [(MSMessageExtensionBrowserViewController *)self recipients];
  v29 = [recipients2 countByEnumeratingWithState:&v48 objects:v52 count:16];
  v44 = conversationID;
  if (v29)
  {
    v30 = v29;
    v31 = 0;
    v32 = *v49;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v49 != v32)
        {
          objc_enumerationMutation(recipients2);
        }

        v34 = *(*(&v48 + 1) + 8 * i);
        v35 = +[IMBalloonPluginManager sharedInstance];
        v36 = [v35 recipientIDForRecipient:v34 appID:v46];

        [v27 addObject:v36];
        self = selfCopy;
        if (([(MSMessage *)selfCopy->_message isFromMe]& 1) == 0)
        {
          senderParticipantIdentifier = [(MSMessage *)selfCopy->_message senderParticipantIdentifier];
          v38 = [v36 isEqual:senderParticipantIdentifier];

          if (v38)
          {
            v39 = v34;

            v31 = v39;
          }

          self = selfCopy;
        }
      }

      v30 = [recipients2 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v30);
  }

  else
  {
    v31 = 0;
  }

  v40 = [v27 copy];
  [v45 setRecipientIdentifiers:v40];

  v41 = [(MSMessage *)self->_message copy];
  [(MSMessageExtensionBrowserViewController *)self _configureMessage:v41 messageSenderAddress:v31 withConversation:v45];

  [v45 setActiveMessage:self->_message];
  v42 = v45;

  return v45;
}

- (void)_markCurrentMessageAsPlayedIfNeeded
{
  message = [(MSMessageExtensionBrowserViewController *)self message];
  if ([message shouldExpire])
  {
    if (([message isFromMe] & 1) == 0)
    {
      balloonPluginDataSource = [(MSMessageExtensionBrowserViewController *)self balloonPluginDataSource];
      isPlayed = [balloonPluginDataSource isPlayed];

      if ((isPlayed & 1) == 0)
      {
        balloonPluginDataSource2 = [(MSMessageExtensionBrowserViewController *)self balloonPluginDataSource];
        [balloonPluginDataSource2 markAsPlayed];
      }
    }
  }
}

- (unint64_t)presentationStyle
{
  if (([(MSMessageExtensionBrowserViewController *)self inExpandedPresentation]& 1) != 0)
  {
    return 1;
  }

  if ([(MSMessageExtensionBrowserViewController *)self inFullScreenModalPresentation])
  {
    return 3;
  }

  return 0;
}

- (void)_configureMessage:(id)message messageSenderAddress:(id)address withConversation:(id)conversation
{
  messageCopy = message;
  addressCopy = address;
  conversationCopy = conversation;
  if ([messageCopy isFromMe])
  {
    v10 = +[IMBalloonPluginManager sharedInstance];
    balloonExtensionPlugin = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
    identifier = [balloonExtensionPlugin identifier];
    conversationID = [(MSMessageExtensionBrowserViewController *)self conversationID];
    v14 = [v10 localParticipantIdentifierForAppID:identifier conversationID:conversationID];
    [messageCopy setSenderParticipantIdentifier:v14];
  }

  [messageCopy _sanitize];
  if ([(MSMessageExtensionBrowserViewController *)self hasEntitlement:@"com.apple.messages.private.AllowGUIDAccess"])
  {
    balloonPluginDataSource = [(MSMessageExtensionBrowserViewController *)self balloonPluginDataSource];
    messageGUID = [balloonPluginDataSource messageGUID];
    [(MSMessage *)self->_message setGuid:messageGUID];
  }

  if ([(MSMessageExtensionBrowserViewController *)self hasEntitlement:@"com.apple.messages.private.AllowParticipantAddressAccess"])
  {
    if (([(MSMessage *)self->_message isFromMe]& 1) != 0)
    {
      senderAddress = [conversationCopy senderAddress];

      if (senderAddress)
      {
        [conversationCopy senderAddress];
      }

      else
      {
        +[MSAccountInfo iMessageLoginID];
      }
      v18 = ;
      [(MSMessage *)self->_message setSenderAddress:v18];
    }

    else
    {
      [(MSMessage *)self->_message setSenderAddress:addressCopy];
    }
  }
}

- (void)_sendBecomeActiveMessage
{
  currentConversationState = [(MSMessageExtensionBrowserViewController *)self currentConversationState];
  [(MSMessageExtensionBrowserViewController *)self appendDraftAssetArchivesIfNeeded:currentConversationState];
  v4 = objc_alloc_init(_MSPresentationState);
  [v4 setPresentationStyle:{-[MSMessageExtensionBrowserViewController presentationStyle](self, "presentationStyle")}];
  v5 = ms_traceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_2C424(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  remoteProxy = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
  [remoteProxy _becomeActiveWithConversationState:currentConversationState presentationState:v4];

  [(MSMessageExtensionBrowserViewController *)self _markCurrentMessageAsPlayedIfNeeded];
}

- (void)_sendResignActiveMessage
{
  v3 = ms_traceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_2C49C(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  remoteProxy = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
  [remoteProxy _resignActive];
}

- (void)saveSnapshotForBrowserViewController
{
  v3 = +[CKBalloonPluginManager sharedInstance];
  balloonPlugin = [(MSMessageExtensionBrowserViewController *)self balloonPlugin];
  identifier = [balloonPlugin identifier];
  view = [(MSMessageExtensionBrowserViewController *)self view];
  traitCollection = [view traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  view2 = [(MSMessageExtensionBrowserViewController *)self view];
  [view2 bounds];
  v10 = [CKSnapshotCacheKey keyWithIdentifier:identifier interfaceStyle:userInterfaceStyle bounds:?];

  v11 = objc_alloc_init(IMTimingCollection);
  [v11 startTimingForKey:@"_saveSnapshotForBrowserViewController:"];
  snapshotCache = [v3 snapshotCache];
  stringValue = [v10 stringValue];
  LOBYTE(traitCollection) = [snapshotCache isGeneratingPreviewForKey:stringValue];

  if ((traitCollection & 1) == 0)
  {
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x3032000000;
    v26[3] = sub_48E0;
    v26[4] = sub_48F0;
    v27 = 0;
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x3032000000;
    v24[3] = sub_48E0;
    v24[4] = sub_48F0;
    v25 = 0;
    snapshotCache2 = [v3 snapshotCache];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_7638;
    v23[3] = &unk_4CF70;
    v23[4] = self;
    v23[5] = v26;
    v23[6] = v24;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_77A8;
    v18[3] = &unk_4CFC0;
    v19 = v3;
    v21 = v24;
    v20 = v10;
    v22 = v26;
    balloonPlugin2 = [(MSMessageExtensionBrowserViewController *)self balloonPlugin];
    identifier2 = [balloonPlugin2 identifier];
    [snapshotCache2 enqueueGenerationBlock:v23 completion:v18 withPriority:-1 forKey:identifier2];

    [v11 stopTimingForKey:@"_saveSnapshotForBrowserViewController:"];
    v17 = ms_traceLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_2C514();
    }

    _Block_object_dispose(v24, 8);
    _Block_object_dispose(v26, 8);
  }
}

+ (void)invalidateSnapshotForKey:(id)key
{
  stringValue = [key stringValue];
  v4 = CKBrowserSnapshotPreviewURL();

  v5 = +[NSFileManager defaultManager];
  v6 = 0;
  [v5 removeItemAtURL:v4 error:&v6];
}

- (id)substituteNameInString:(id)string
{
  if (string)
  {
    stringCopy = string;
    balloonExtensionPlugin = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
    identifier = [balloonExtensionPlugin identifier];
    v7 = [(MSMessageExtensionBrowserViewController *)self substituteNameInString:stringCopy withAppID:identifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)substituteNameInString:(id)string withAppID:(id)d
{
  stringCopy = string;
  dCopy = d;
  v8 = dCopy;
  if (stringCopy && dCopy)
  {
    v43 = stringCopy;
    v9 = objc_alloc_init(NSMutableArray);
    v10 = objc_alloc_init(NSMutableArray);
    sender = [(MSMessageExtensionBrowserViewController *)self sender];

    if (sender)
    {
      if (v10)
      {
        sender2 = [(MSMessageExtensionBrowserViewController *)self sender];

        if (sender2)
        {
          sender3 = [(MSMessageExtensionBrowserViewController *)self sender];
          CFArrayAppendValue(v10, sender3);
        }
      }

      if (v9)
      {
        v14 = +[IMBalloonPluginManager sharedInstance];
        conversationID = [(MSMessageExtensionBrowserViewController *)self conversationID];
        v16 = [v14 localParticipantIdentifierForAppID:v8 conversationID:conversationID];
        uUIDString = [v16 UUIDString];

        if (uUIDString)
        {
          v18 = +[IMBalloonPluginManager sharedInstance];
          conversationID2 = [(MSMessageExtensionBrowserViewController *)self conversationID];
          v20 = [v18 localParticipantIdentifierForAppID:v8 conversationID:conversationID2];
          uUIDString2 = [v20 UUIDString];
          CFArrayAppendValue(v9, uUIDString2);
        }
      }
    }

    v44 = v8;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    selfCopy = self;
    recipients = [(MSMessageExtensionBrowserViewController *)self recipients];
    v23 = [recipients countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v46;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v46 != v25)
          {
            objc_enumerationMutation(recipients);
          }

          v27 = *(*(&v45 + 1) + 8 * i);
          v28 = +[IMBalloonPluginManager sharedInstance];
          v29 = [v28 recipientIDForRecipient:v27 appID:v44];
          uUIDString3 = [v29 UUIDString];

          if (v9 && uUIDString3)
          {
            CFArrayAppendValue(v9, uUIDString3);
          }

          if (v10 && v27)
          {
            CFArrayAppendValue(v10, v27);
          }
        }

        v24 = [recipients countByEnumeratingWithState:&v45 objects:v55 count:16];
      }

      while (v24);
    }

    v31 = [(__CFArray *)v9 count];
    if (v31 == [(__CFArray *)v10 count])
    {
      v32 = [v43 mutableCopy];
      if ([(__CFArray *)v9 count])
      {
        v33 = 0;
        do
        {
          v34 = [(__CFArray *)v10 objectAtIndexedSubscript:v33];
          v35 = [NSString stringWithFormat:@"$(%@)", v34];

          v36 = [(__CFArray *)v9 objectAtIndexedSubscript:v33];
          v37 = [@"$" stringByAppendingString:v36];

          [v32 replaceOccurrencesOfString:v37 withString:v35 options:2 range:0, [v32 length]];
          ++v33;
        }

        while ([(__CFArray *)v9 count]> v33);
      }

      v38 = [v32 copy];
      stringCopy = v43;
    }

    else
    {
      v32 = ms_defaultLog();
      stringCopy = v43;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v40 = [NSNumber numberWithUnsignedInteger:[(__CFArray *)v9 count]];
        v41 = [NSNumber numberWithUnsignedInteger:[(__CFArray *)v10 count]];
        *buf = 138412802;
        selfCopy2 = selfCopy;
        v51 = 2112;
        v52 = v40;
        v53 = 2112;
        v54 = v41;
        _os_log_error_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "self %@ substituteNameInString [recipientIdentifiers count] %@ != [recipientName count] %@ ", buf, 0x20u);
      }

      v38 = 0;
    }

    v8 = v44;
  }

  else
  {
    v9 = ms_defaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v51 = 2112;
      v52 = stringCopy;
      v53 = 2112;
      v54 = v8;
      _os_log_error_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "self %@ substituteNameInString invalid parameters string %@ appID %@", buf, 0x20u);
    }

    v38 = 0;
  }

  return v38;
}

- (void)_openURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  if ([(MSMessageExtensionBrowserViewController *)self hasEntitlement:@"com.apple.messages.private.AllowConversationIdentifierAccess"])
  {
    sendDelegate = [(MSMessageExtensionBrowserViewController *)self sendDelegate];
    balloonPlugin = [(MSMessageExtensionBrowserViewController *)self balloonPlugin];
    identifier = [balloonPlugin identifier];
    [sendDelegate openURL:lCopy pluginID:identifier completionHandler:handlerCopy];

    bundleIdentifier = ms_defaultLog();
    if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, bundleIdentifier, OS_LOG_TYPE_DEFAULT, "Entitled App. Allowing opening all URLs", buf, 2u);
    }

    goto LABEL_12;
  }

  balloonPlugin2 = [(MSMessageExtensionBrowserViewController *)self balloonPlugin];
  isLaunchProhibited = [balloonPlugin2 isLaunchProhibited];

  v14 = ms_defaultLog();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (!isLaunchProhibited)
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Not entitled App. Allowing opening containing app", buf, 2u);
    }

    balloonPlugin3 = [(MSMessageExtensionBrowserViewController *)self balloonPlugin];
    appBundle = [balloonPlugin3 appBundle];
    bundleIdentifier = [appBundle bundleIdentifier];

    sendDelegate2 = [(MSMessageExtensionBrowserViewController *)self sendDelegate];
    balloonPlugin4 = [(MSMessageExtensionBrowserViewController *)self balloonPlugin];
    identifier2 = [balloonPlugin4 identifier];
    [sendDelegate2 openURL:lCopy applicationIdentifier:bundleIdentifier pluginID:identifier2 completionHandler:handlerCopy];

    goto LABEL_12;
  }

  if (v15)
  {
    *buf = 0;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Not allowing openURL for launch prohibited app", buf, 2u);
  }

  if (handlerCopy)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_8204;
    block[3] = &unk_4CFE8;
    v22 = handlerCopy;
    dispatch_async(&_dispatch_main_q, block);
    bundleIdentifier = v22;
LABEL_12:
  }
}

- (void)_stageAppItem:(id)item skipShelf:(BOOL)shelf completionHandler:(id)handler
{
  itemCopy = item;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_82E8;
  v11[3] = &unk_4D038;
  selfCopy = self;
  handlerCopy = handler;
  v12 = itemCopy;
  shelfCopy = shelf;
  v9 = itemCopy;
  v10 = handlerCopy;
  dispatch_async(&_dispatch_main_q, v11);
}

- (void)_sendCustomAcknowledgement:(id)acknowledgement selectedMessage:(id)message completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [NSError errorWithDomain:MSMessagesErrorDomain code:-1 userInfo:0];
  v7 = ms_defaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_2C5E4();
  }

  handlerCopy[2](handlerCopy, v6);
}

- (void)_requestConversationAvatarsWithSize:(CGSize)size completionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [NSError errorWithDomain:MSMessagesErrorDomain code:-1 userInfo:0];
  v6 = ms_defaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_2C5E4();
  }

  handlerCopy[2](handlerCopy, 0, v5);
}

- (id)_itemPayloadFromMSMessage:(id)message
{
  messageCopy = message;
  balloonExtensionPlugin = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  adamID = [balloonExtensionPlugin adamID];

  balloonExtensionPlugin2 = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  browserDisplayName = [balloonExtensionPlugin2 browserDisplayName];

  balloonPlugin = [(MSMessageExtensionBrowserViewController *)self balloonPlugin];
  canSendDataPayloads = [balloonPlugin canSendDataPayloads];

  balloonExtensionPlugin3 = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  v12 = [balloonExtensionPlugin3 __ck_statusJPEGImageDataForTransportWithCompressionFactor:0.2];
  v13 = [MSMessageExtensionDataSource pluginPayloadFromMessagePayload:messageCopy appIconData:v12 appName:browserDisplayName adamID:adamID allowDataPayloads:canSendDataPayloads];

  session = [messageCopy session];

  message = [(MSMessageExtensionBrowserViewController *)self message];
  session2 = [message session];
  LODWORD(v12) = [session isEqual:session2];

  if (v12)
  {
    [v13 setUpdate:1];
    balloonPluginDataSource = [(MSMessageExtensionBrowserViewController *)self balloonPluginDataSource];
    sessionGUID = [balloonPluginDataSource sessionGUID];
    [v13 setAssociatedMessageGUID:sessionGUID];
  }

  balloonExtensionPlugin4 = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  attributionInfo = [balloonExtensionPlugin4 attributionInfo];
  [v13 setAttributionInfo:attributionInfo];

  statusText = [v13 statusText];
  v22 = [(MSMessageExtensionBrowserViewController *)self substituteNameInString:statusText];
  [v13 setStatusText:v22];

  balloonExtensionPlugin5 = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  identifier = [balloonExtensionPlugin5 identifier];
  [v13 setPluginBundleID:identifier];

  return v13;
}

- (void)_stageMediaItem:(id)item skipShelf:(BOOL)shelf forceStage:(BOOL)stage completionHandler:(id)handler
{
  itemCopy = item;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_8D84;
  v13[3] = &unk_4D060;
  shelfCopy = shelf;
  selfCopy = self;
  handlerCopy = handler;
  v14 = itemCopy;
  stageCopy = stage;
  v11 = handlerCopy;
  v12 = itemCopy;
  dispatch_async(&_dispatch_main_q, v13);
}

- (void)_stageRichLink:(id)link skipShelf:(BOOL)shelf completionHandler:(id)handler
{
  linkCopy = link;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_9804;
  v11[3] = &unk_4D038;
  selfCopy = self;
  handlerCopy = handler;
  shelfCopy = shelf;
  v12 = linkCopy;
  v9 = linkCopy;
  v10 = handlerCopy;
  dispatch_async(&_dispatch_main_q, v11);
}

- (void)_startDragMediaItem:(id)item frameInRemoteView:(CGRect)view fence:(id)fence completionHandler:(id)handler
{
  height = view.size.height;
  width = view.size.width;
  y = view.origin.y;
  x = view.origin.x;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_9B24;
  v15[3] = &unk_4D088;
  v15[4] = self;
  itemCopy = item;
  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  fenceCopy = fence;
  handlerCopy = handler;
  v12 = fenceCopy;
  v13 = handlerCopy;
  v14 = itemCopy;
  dispatch_async(&_dispatch_main_q, v15);
}

- (void)_stickerDruidDragStarted
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_9EB0;
  block[3] = &unk_4CE30;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_stickerDruidDragEndedWithPayload:(id)payload
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_A05C;
  v5[3] = &unk_4CF20;
  payloadCopy = payload;
  selfCopy = self;
  v4 = payloadCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)_stickerDruidDragEndedWithPayload:(id)payload pluginIdentifier:(id)identifier
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A294;
  block[3] = &unk_4D0B0;
  payloadCopy = payload;
  identifierCopy = identifier;
  selfCopy = self;
  v6 = identifierCopy;
  v7 = payloadCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_requestPresentationStyle:(unint64_t)style
{
  presentationStyle = [(MSMessageExtensionBrowserViewController *)self presentationStyle];
  if (presentationStyle != 3)
  {
LABEL_6:
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_A498;
    block[3] = &unk_4D0D8;
    v13 = presentationStyle == 3;
    block[4] = self;
    block[5] = style;
    dispatch_async(&_dispatch_main_q, block);
    return;
  }

  balloonPlugin = [(MSMessageExtensionBrowserViewController *)self balloonPlugin];
  identifier = [balloonPlugin identifier];
  v8 = IMBalloonExtensionIDWithSuffix();
  v9 = [identifier isEqualToString:v8];

  if (v9)
  {
    v10 = ms_traceLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_2C760(v10);
    }

    goto LABEL_6;
  }

  v11 = ms_defaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_2C71C(v11);
  }
}

- (void)_requestFullScreenModalPresentationWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = ms_traceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_2C81C(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A734;
  block[3] = &unk_4D100;
  block[4] = self;
  *&block[5] = width;
  *&block[6] = height;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_dismiss
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A870;
  block[3] = &unk_4CE30;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_dismissAndPresentPhotosApp
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_AA70;
  block[3] = &unk_4CE30;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle image:(id)image completion:(id)completion
{
  titleCopy = title;
  messageCopy = message;
  buttonTitleCopy = buttonTitle;
  imageCopy = image;
  completionCopy = completion;
  if ([(MSMessageExtensionBrowserViewController *)self hasEntitlement:@"com.apple.messages.private.AllowAlertPresentation"])
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_AC4C;
    v17[3] = &unk_4D150;
    v18 = titleCopy;
    v19 = messageCopy;
    v20 = imageCopy;
    v21 = buttonTitleCopy;
    selfCopy = self;
    v23 = completionCopy;
    dispatch_async(&_dispatch_main_q, v17);
  }
}

- (void)_presentAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle destructiveButtonTitle:(id)destructiveButtonTitle completion:(id)completion
{
  titleCopy = title;
  messageCopy = message;
  buttonTitleCopy = buttonTitle;
  destructiveButtonTitleCopy = destructiveButtonTitle;
  completionCopy = completion;
  if ([(MSMessageExtensionBrowserViewController *)self hasEntitlement:@"com.apple.messages.private.AllowAlertPresentation"])
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_AEC0;
    v17[3] = &unk_4D178;
    v18 = titleCopy;
    v19 = messageCopy;
    v20 = buttonTitleCopy;
    v23 = completionCopy;
    v21 = destructiveButtonTitleCopy;
    selfCopy = self;
    dispatch_async(&_dispatch_main_q, v17);
  }
}

- (void)_remoteViewDidBecomeReadyForDisplay
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_B220;
  block[3] = &unk_4CE30;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_updateSnapshotForNextLaunch:(id)launch
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_B2C4;
  v4[3] = &unk_4CF20;
  v4[4] = self;
  launchCopy = launch;
  v3 = launchCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)_requestHostSceneIdentifierWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_B6FC;
    v6[3] = &unk_4CEA8;
    v6[4] = self;
    v7 = completionCopy;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)_requestPresentationWithStickerType:(id)type identifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  v8 = ms_traceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_2C998(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  remoteProxy = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    remoteProxy2 = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
    [remoteProxy2 _requestPresentationWithStickerType:typeCopy identifier:identifierCopy];
  }
}

- (void)_requestStickerExtensionMetadataDictionary:(id)dictionary
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_B960;
  v4[3] = &unk_4CEA8;
  v4[4] = self;
  dictionaryCopy = dictionary;
  v3 = dictionaryCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)requestStickerExtensionMetadataDictionary:(id)dictionary
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_BA8C;
  v4[3] = &unk_4CEA8;
  v4[4] = self;
  dictionaryCopy = dictionary;
  v3 = dictionaryCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)beginDisablingUserInteraction
{
  remoteProxy = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
  [remoteProxy beginDisablingUserInteraction];
}

- (void)endDisablingUserInteraction
{
  remoteProxy = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
  [remoteProxy endDisablingUserInteraction];
}

- (void)datasourcePayloadDidChange:(id)change updateFlags:(unint64_t)flags
{
  flagsCopy = flags;
  changeCopy = change;
  message = [changeCopy message];
  objc_storeStrong(&self->_message, message);
  if ((flagsCopy & 0x13) != 0)
  {
    currentConversationState = [(MSMessageExtensionBrowserViewController *)self currentConversationState];
    v9 = ms_traceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_2CA88(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    remoteProxy = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
    _sanitizedCopy = [message _sanitizedCopy];
    [remoteProxy _didReceiveMessage:_sanitizedCopy conversationState:currentConversationState];
  }
}

- (void)messageAddedWithDataSource:(id)source
{
  pluginPayload = [source pluginPayload];
  v5 = [MSMessageExtensionDataSource messagePayloadFromPluginPayload:pluginPayload];

  currentConversationState = [(MSMessageExtensionBrowserViewController *)self currentConversationState];
  v7 = ms_traceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_2CB00(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  remoteProxy = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
  [remoteProxy _didReceiveMessage:v5 conversationState:currentConversationState];

  [(MSMessageExtensionBrowserViewController *)self _markCurrentMessageAsPlayedIfNeeded];
}

- (void)dragManager:(id)manager didBeginDraggingItem:(id)item
{
  itemCopy = item;
  currentDragPayload = [(MSMessageExtensionBrowserViewController *)self currentDragPayload];

  v6 = currentDragPayload;
  if (currentDragPayload == itemCopy)
  {
    balloonExtensionPlugin = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
    identifier = [balloonExtensionPlugin identifier];

    v9 = [MSMessageExtensionUtilities isValidSticker:currentDragPayload];
    if (!v9)
    {
      v10 = [currentDragPayload convertToStickerWithExtensionIdentifier:identifier];
      if (v10)
      {
        sendDelegate = [(MSMessageExtensionBrowserViewController *)self sendDelegate];
        v12 = objc_opt_respondsToSelector();

        if (v12)
        {
          sendDelegate2 = [(MSMessageExtensionBrowserViewController *)self sendDelegate];
          [sendDelegate2 didBeginDraggingSticker:v10];
        }
      }
    }

    v6 = currentDragPayload;
  }
}

- (void)dragManager:(id)manager didEndDraggingItem:(id)item toDragTarget:(id)target dropArea:(int)area
{
  managerCopy = manager;
  targetCopy = target;
  itemCopy = item;
  currentDragPayload = [(MSMessageExtensionBrowserViewController *)self currentDragPayload];

  if (currentDragPayload == itemCopy)
  {
    balloonExtensionPlugin = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
    identifier = [balloonExtensionPlugin identifier];

    v15 = [MSMessageExtensionUtilities isValidSticker:currentDragPayload];
    completionHandler = [(MSMessageExtensionBrowserViewController *)self completionHandler];
    v17 = completionHandler;
    if (v15)
    {
      (*(completionHandler + 16))(completionHandler, 0, v15);
    }

    else
    {
      if (area == 3)
      {
        v18 = [NSError errorWithDomain:@"MSMessageExtensionBrowserViewController" code:1 userInfo:0];
        (v17)[2](v17, 1, v18);
      }

      else
      {
        v18 = [currentDragPayload convertToStickerWithExtensionIdentifier:identifier];
        sendDelegate = [(MSMessageExtensionBrowserViewController *)self sendDelegate];
        draggedSticker = [managerCopy draggedSticker];
        [sendDelegate commitSticker:v18 withDragTarget:targetCopy draggedSticker:draggedSticker];

        v17[2](v17, 0, 0);
      }
    }

    [(MSMessageExtensionBrowserViewController *)self setCurrentDragPayload:0];
    [(MSMessageExtensionBrowserViewController *)self setCompletionHandler:0];
  }
}

- (void)validatePayloadForSending:(id)sending associatedText:(id)text completionHandler:(id)handler
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_C184;
  v11[3] = &unk_4D1C8;
  sendingCopy = sending;
  selfCopy = self;
  textCopy = text;
  handlerCopy = handler;
  v8 = handlerCopy;
  v9 = textCopy;
  v10 = sendingCopy;
  [(MSMessageExtensionBrowserViewController *)self _instantiateRemoteViewControllerIfNeededWithIntent:2 completion:v11];
}

- (void)didStartSendingPluginPayload:(id)payload
{
  payloadCopy = payload;
  v5 = ms_defaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = payloadCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "didStartSendingPluginPayload %@", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_C674;
  v7[3] = &unk_4D1F0;
  v8 = payloadCopy;
  selfCopy = self;
  v6 = payloadCopy;
  [(MSMessageExtensionBrowserViewController *)self _instantiateRemoteViewControllerIfNeededWithIntent:2 completion:v7];
}

- (void)didCancelSendingPluginPayload:(id)payload
{
  payloadCopy = payload;
  v5 = ms_defaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = payloadCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "didCancelSendingPluginPayload %@", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_C8AC;
  v7[3] = &unk_4D1F0;
  v8 = payloadCopy;
  selfCopy = self;
  v6 = payloadCopy;
  [(MSMessageExtensionBrowserViewController *)self _instantiateRemoteViewControllerIfNeededWithIntent:2 completion:v7];
}

- (void)didSelectGPAsset:(id)asset recipeData:(id)data completion:(id)completion
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_CAC0;
  v11[3] = &unk_4D1C8;
  assetCopy = asset;
  selfCopy = self;
  dataCopy = data;
  completionCopy = completion;
  v8 = completionCopy;
  v9 = dataCopy;
  v10 = assetCopy;
  [(MSMessageExtensionBrowserViewController *)self _instantiateRemoteViewControllerIfNeeded:v11];
}

- (void)handleTextInputPayload:(id)payload withPayloadID:(id)d completion:(id)completion
{
  payloadCopy = payload;
  dCopy = d;
  completionCopy = completion;
  v11 = ms_traceLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_2CCE0(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_CDE0;
  v27[3] = &unk_4D240;
  v27[4] = self;
  v28 = completionCopy;
  v19 = completionCopy;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_CE68;
  v23[3] = &unk_4D1C8;
  v23[4] = self;
  v24 = payloadCopy;
  v25 = dCopy;
  v26 = objc_retainBlock(v27);
  v20 = v26;
  v21 = dCopy;
  v22 = payloadCopy;
  [(MSMessageExtensionBrowserViewController *)self _instantiateRemoteViewControllerIfNeeded:v23];
}

- (void)prepareForPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = ms_traceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_2CD58(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_D028;
  v14[3] = &unk_4D240;
  v14[4] = self;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [(MSMessageExtensionBrowserViewController *)self _instantiateRemoteViewControllerIfNeeded:v14];
}

- (void)volumeButtonPressed:(BOOL)pressed
{
  pressedCopy = pressed;
  remoteProxy = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
  [remoteProxy _volumeButtonPressed:pressedCopy];
}

- (void)loadProxyIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  remoteProxy = [(MSMessageExtensionBrowserViewController *)self remoteProxy];

  if (remoteProxy)
  {
    completionCopy[2](completionCopy);
  }

  else
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_D220;
    v6[3] = &unk_4D268;
    v7 = completionCopy;
    [(MSMessageExtensionBrowserViewController *)self loadRemoteViewWithCompletion:v6];
  }
}

- (void)_setPluginIdentifierToShow:(id)show completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_D2F0;
  v7[3] = &unk_4D290;
  selfCopy = self;
  showCopy = show;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = showCopy;
  [(MSMessageExtensionBrowserViewController *)selfCopy loadProxyIfNeededWithCompletion:v7];
}

- (void)_addStickerToStoreWithRepresentations:(id)representations completionHandler:(id)handler
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_D404;
  v7[3] = &unk_4D290;
  selfCopy = self;
  representationsCopy = representations;
  handlerCopy = handler;
  v5 = handlerCopy;
  v6 = representationsCopy;
  [(MSMessageExtensionBrowserViewController *)selfCopy loadProxyIfNeededWithCompletion:v7];
}

- (void)_addStickerToStoreWithRepresentations:(id)representations completionWithStickerIDs:(id)ds
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_D518;
  v7[3] = &unk_4D290;
  selfCopy = self;
  representationsCopy = representations;
  dsCopy = ds;
  v5 = dsCopy;
  v6 = representationsCopy;
  [(MSMessageExtensionBrowserViewController *)selfCopy loadProxyIfNeededWithCompletion:v7];
}

- (void)_addStickerToStoreWithRepresentations:(id)representations sourceRect:(CGRect)rect completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_D654;
  v12[3] = &unk_4D2B8;
  selfCopy = self;
  representationsCopy = representations;
  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  completionCopy = completion;
  v10 = completionCopy;
  v11 = representationsCopy;
  [(MSMessageExtensionBrowserViewController *)selfCopy loadProxyIfNeededWithCompletion:v12];
}

- (void)_addStickerToStoreWithRepresentations:(id)representations sourceRect:(CGRect)rect effect:(int64_t)effect completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_D7A0;
  v14[3] = &unk_4D2E0;
  selfCopy = self;
  representationsCopy = representations;
  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  effectCopy = effect;
  completionCopy = completion;
  v12 = completionCopy;
  v13 = representationsCopy;
  [(MSMessageExtensionBrowserViewController *)selfCopy loadProxyIfNeededWithCompletion:v14];
}

- (void)_addStickerToStoreWithUISticker:(id)sticker sourceRect:(CGRect)rect completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_D8E8;
  v12[3] = &unk_4D2B8;
  selfCopy = self;
  stickerCopy = sticker;
  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  completionCopy = completion;
  v10 = completionCopy;
  v11 = stickerCopy;
  [(MSMessageExtensionBrowserViewController *)selfCopy loadProxyIfNeededWithCompletion:v12];
}

- (void)_prepareForAddStickerFromSubjectLift
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_D9B0;
  v2[3] = &unk_4CE30;
  v2[4] = self;
  [(MSMessageExtensionBrowserViewController *)self loadProxyIfNeededWithCompletion:v2];
}

- (void)_addStickerAnimationDidFinishWithCompletion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_DA88;
  v4[3] = &unk_4CEA8;
  selfCopy = self;
  completionCopy = completion;
  v3 = completionCopy;
  [(MSMessageExtensionBrowserViewController *)selfCopy loadProxyIfNeededWithCompletion:v4];
}

- (void)_didRemoveStickerPreview
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_DB48;
  v2[3] = &unk_4CE30;
  v2[4] = self;
  [(MSMessageExtensionBrowserViewController *)self loadProxyIfNeededWithCompletion:v2];
}

- (void)_animatedStickerCreationProgressChanged:(id)changed progress:(double)progress
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_DC30;
  v6[3] = &unk_4D308;
  selfCopy = self;
  changedCopy = changed;
  progressCopy = progress;
  v5 = changedCopy;
  [(MSMessageExtensionBrowserViewController *)selfCopy loadProxyIfNeededWithCompletion:v6];
}

- (void)_canShowBrowserForPluginIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(MSMessageExtensionBrowserViewController *)self _canCurrentPluginShowInBrowserPluginIdentifier:identifierCopy])
  {
    sendDelegate = [(MSMessageExtensionBrowserViewController *)self sendDelegate];
    [sendDelegate canShowBrowserForPluginIdentifier:identifierCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)_showBrowserForPluginIdentifier:(id)identifier style:(unint64_t)style completion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_DDEC;
  v9[3] = &unk_4D330;
  v9[4] = self;
  identifierCopy = identifier;
  completionCopy = completion;
  styleCopy = style;
  v7 = completionCopy;
  v8 = identifierCopy;
  dispatch_async(&_dispatch_main_q, v9);
}

- (BOOL)_canCurrentPluginShowInBrowserPluginIdentifier:(id)identifier
{
  identifierCopy = identifier;
  balloonPlugin = [(MSMessageExtensionBrowserViewController *)self balloonPlugin];
  identifier = [balloonPlugin identifier];

  v7 = IMStickersExtensionIdentifier();
  v8 = IMBalloonExtensionIDWithSuffix();

  if ([identifier isEqualToString:v8] && (objc_msgSend(identifierCopy, "isEqualToString:", IMBalloonPluginIdentifierAppStore) & 1) != 0)
  {
    v9 = 1;
  }

  else
  {
    v10 = ms_defaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_2CDD0();
    }

    v9 = 0;
  }

  return v9;
}

- (void)checkForTouchInRemoteProcessIfNecessaryWithCompletion:(id)completion
{
  completionCopy = completion;
  touchTracker = [(MSMessageExtensionBrowserViewController *)self touchTracker];
  [touchTracker checkForTouchWithCompletion:completionCopy];
}

- (void)touchUpOccuredForIdentifier:(unsigned int)identifier detached:(BOOL)detached context:(unsigned int)context pid:(int)pid
{
  v8 = [(MSMessageExtensionBrowserViewController *)self balloonPlugin:*&identifier];
  extension = [v8 extension];

  if ([extension pidForRequestIdentifier:self->_sessionUUID] == pid)
  {
    touchTracker = [(MSMessageExtensionBrowserViewController *)self touchTracker];
    [touchTracker touchReceived];
  }
}

- (BOOL)isPhotosExtensionBrowser
{
  balloonExtensionPlugin = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  identifier = [balloonExtensionPlugin identifier];
  v4 = IMBalloonExtensionIDWithSuffix();
  v5 = [identifier isEqualToString:v4];

  return v5;
}

- (BOOL)isGenerativePlaygroundExtension
{
  balloonExtensionPlugin = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  identifier = [balloonExtensionPlugin identifier];
  v4 = IMBalloonExtensionIDWithSuffix();
  v5 = [identifier isEqualToString:v4];

  return v5;
}

- (BOOL)extensionWantsDraftAssetArchives
{
  if ([(MSMessageExtensionBrowserViewController *)self isPhotosExtensionBrowser])
  {
    return 1;
  }

  return [(MSMessageExtensionBrowserViewController *)self isGenerativePlaygroundExtension];
}

- (BOOL)isFromValidExtension
{
  balloonExtensionPlugin = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  identifier = [balloonExtensionPlugin identifier];

  v5 = IMBalloonExtensionIDWithSuffix();
  LOBYTE(balloonExtensionPlugin) = [identifier isEqualToString:v5];

  v6 = IMBalloonExtensionIDWithSuffix();
  LOBYTE(v5) = [identifier isEqualToString:v6];

  v7 = IMBalloonExtensionIDWithSuffix();
  LOBYTE(v6) = [identifier isEqualToString:v7];

  v8 = IMBalloonExtensionIDWithSuffix();
  v9 = [identifier isEqualToString:v8];

  v10 = IMBalloonExtensionIDWithSuffix();
  v11 = [identifier isEqualToString:v10];

  v12 = IMBalloonExtensionIDWithSuffix();
  v13 = [identifier isEqualToString:v12];

  v14 = balloonExtensionPlugin | v5 | v6 | v9 | v11 | v13 | [(MSMessageExtensionBrowserViewController *)self isGenerativePlaygroundExtension];
  v15 = ms_defaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = @"NO";
    if (v14)
    {
      v16 = @"YES";
    }

    v18 = 138412546;
    v19 = identifier;
    v20 = 2112;
    v21 = v16;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "checking if it's valid for extension: [%@], result: [%@]", &v18, 0x16u);
  }

  return v14 & 1;
}

- (id)assetExplorerTransport
{
  assetExplorerTransport = self->_assetExplorerTransport;
  if (!assetExplorerTransport)
  {
    v4 = qword_571E0;
    if (!qword_571E0)
    {
      v4 = IMWeakLinkClass();
      qword_571E0 = v4;
    }

    v5 = objc_alloc_init(v4);
    [v5 setDelegate:self];
    [v5 registerChangeObserver:self context:MSAssetExplorerTransportContext];
    if (CKIsRunningInMessagesViewService() && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v5 setShouldHideReviewController:1];
    }

    v6 = self->_assetExplorerTransport;
    self->_assetExplorerTransport = v5;

    assetExplorerTransport = self->_assetExplorerTransport;
  }

  return assetExplorerTransport;
}

- (void)appendDraftAssetArchivesIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([(MSMessageExtensionBrowserViewController *)self extensionWantsDraftAssetArchives])
  {
    if ([(MSMessageExtensionBrowserViewController *)self isPhotosExtensionBrowser])
    {
      conversationID = [neededCopy conversationID];
      v6 = [(MSMessageExtensionBrowserViewController *)self _configurePhotosDraftAssetArchivesWithConversationID:conversationID];
    }

    else
    {
      conversationID = [(MSMessageExtensionBrowserViewController *)self sendDelegate];
      conversationID2 = [neededCopy conversationID];
      v6 = [conversationID configurePhotosDraftAssetArchivesWithConversationID:conversationID2];
    }

    if ([v6 count])
    {
      v8 = ms_defaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134217984;
        v11 = [v6 count];
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Appended %tu drafts to initial conversation state", &v10, 0xCu);
      }

      [neededCopy setDraftAssetArchives:v6];
    }

    conversationID3 = [neededCopy conversationID];
    [(MSMessageExtensionBrowserViewController *)self setLastDraftConversationID:conversationID3];
  }
}

- (id)_configurePhotosDraftAssetArchivesWithConversationID:(id)d
{
  dCopy = d;
  if ([(MSMessageExtensionBrowserViewController *)self isPhotosExtensionBrowser])
  {
    assetExplorerTransport = [(MSMessageExtensionBrowserViewController *)self assetExplorerTransport];
    orderedStagedIdentifiers = [assetExplorerTransport orderedStagedIdentifiers];
    v5 = objc_alloc_init(NSMutableArray);
    if ([orderedStagedIdentifiers count])
    {
      lastDraftConversationID = [(MSMessageExtensionBrowserViewController *)self lastDraftConversationID];
      if ([lastDraftConversationID length])
      {
        lastDraftConversationID2 = [(MSMessageExtensionBrowserViewController *)self lastDraftConversationID];
        v8 = [dCopy isEqualToString:lastDraftConversationID2];

        if ((v8 & 1) == 0)
        {
          [assetExplorerTransport unstagePackagesWithIdentifiers:orderedStagedIdentifiers evictFiles:0];
LABEL_25:
          v9 = [v5 copy];

          goto LABEL_26;
        }
      }

      else
      {
      }
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = orderedStagedIdentifiers;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v11)
    {
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = [assetExplorerTransport stagedPackageForIdentifier:*(*(&v23 + 1) + 8 * i), orderedStagedIdentifiers];
          if (v14)
          {
            v22 = 0;
            v15 = [NSKeyedArchiver archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v22];
            v16 = v22;
            if (v16 && IMOSLoggingEnabled())
            {
              v17 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v28 = v16;
                _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Asset Archive Error! %@", buf, 0xCu);
              }
            }

            [v5 addObject:v15];
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v11);
    }

    goto LABEL_25;
  }

  assetExplorerTransport = ms_defaultLog();
  if (os_log_type_enabled(assetExplorerTransport, OS_LOG_TYPE_ERROR))
  {
    sub_2D8A0(assetExplorerTransport);
  }

  v9 = &__NSArray0__struct;
LABEL_26:

  return v9;
}

- (id)fetchPluginPayloadsAndClear:(BOOL)clear
{
  clearCopy = clear;
  assetExplorerTransport = [(MSMessageExtensionBrowserViewController *)self assetExplorerTransport];
  orderedStagedIdentifiers = [assetExplorerTransport orderedStagedIdentifiers];
  orderedStagedPayloads = [assetExplorerTransport orderedStagedPayloads];
  if (clearCopy)
  {
    [assetExplorerTransport unstagePackagesWithIdentifiers:orderedStagedIdentifiers evictFiles:0];
  }

  return orderedStagedPayloads;
}

- (void)restoreDraftStateFromPayload:(id)payload
{
  payloadCopy = payload;
  v5 = +[NSMutableArray array];
  v6 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  attachments = [payloadCopy attachments];
  v8 = [attachments countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(attachments);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v5;
        }

        else
        {
          v13 = v6;
        }

        [v13 addObject:v12];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [attachments countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    v14 = ms_defaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_2D8E4(v6, v14);
    }
  }

  if ([v5 count])
  {
    assetExplorerTransport = [(MSMessageExtensionBrowserViewController *)self assetExplorerTransport];
    v16 = [v5 copy];
    [assetExplorerTransport stagePersistedPayloads:v16];
  }
}

- (id)fetchPluginStagedIdentifiers
{
  assetExplorerTransport = [(MSMessageExtensionBrowserViewController *)self assetExplorerTransport];
  orderedStagedIdentifiers = [assetExplorerTransport orderedStagedIdentifiers];

  return orderedStagedIdentifiers;
}

- (void)clearPluginPackagesWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  assetExplorerTransport = [(MSMessageExtensionBrowserViewController *)self assetExplorerTransport];
  [assetExplorerTransport unstagePackagesWithIdentifiers:identifiersCopy evictFiles:1];
}

- (void)clearAllStagedPluginPackages
{
  assetExplorerTransport = [(MSMessageExtensionBrowserViewController *)self assetExplorerTransport];
  orderedStagedIdentifiers = [assetExplorerTransport orderedStagedIdentifiers];
  [assetExplorerTransport unstagePackagesWithIdentifiers:orderedStagedIdentifiers evictFiles:1];
}

- (void)_stageAssetArchive:(id)archive skipShelf:(BOOL)shelf completionHandler:(id)handler
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1FB3C;
  v9[3] = &unk_4D828;
  v9[4] = self;
  archiveCopy = archive;
  shelfCopy = shelf;
  handlerCopy = handler;
  v7 = handlerCopy;
  v8 = archiveCopy;
  dispatch_async(&_dispatch_main_q, v9);
}

- (void)stageAssetToTransportAndNotifySendDelegate:(id)delegate
{
  delegateCopy = delegate;
  assetExplorerTransport = [(MSMessageExtensionBrowserViewController *)self assetExplorerTransport];
  [assetExplorerTransport stagePackage:delegateCopy];

  sendDelegate = [(MSMessageExtensionBrowserViewController *)self sendDelegate];
  if (objc_opt_respondsToSelector())
  {
    browserItemPayload = [delegateCopy browserItemPayload];
    if (browserItemPayload)
    {
      identifier = [delegateCopy identifier];
      [sendDelegate didStageAssetArchive:browserItemPayload identifier:identifier];
    }
  }
}

- (void)_removeAssetArchiveWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = ms_defaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = identifierCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Call to _removeAssetArchiveWithIdentifier: %@", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_20118;
  block[3] = &unk_4D290;
  block[4] = self;
  v12 = identifierCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_assetArchiveRemoved:(id)removed
{
  removedCopy = removed;
  remoteProxy = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
  [remoteProxy _didRemoveAssetArchiveWithIdentifier:removedCopy];
}

- (void)packageTransport:(id)transport didUnstagePackageWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sendDelegate = [(MSMessageExtensionBrowserViewController *)self sendDelegate];
  if (objc_opt_respondsToSelector())
  {
    [sendDelegate eagerUploadCancelIdentifier:identifierCopy];
  }

  remoteProxy = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
  v8 = ms_defaultLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (remoteProxy)
  {
    if (v9)
    {
      v11 = 138412546;
      v12 = remoteProxy;
      v13 = 2112;
      v14 = identifierCopy;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "packageTransport:didUnstagePackageWithIdentifier: Signal %@ asset archive was removed with identifier: %@", &v11, 0x16u);
    }

    [remoteProxy _didRemoveAssetArchiveWithIdentifier:identifierCopy];
  }

  else
  {
    if (v9)
    {
      v11 = 138412290;
      v12 = identifierCopy;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "packageTransport:didUnstagePackageWithIdentifier: Current browser is not this extension, asking send delegate to notify active browser of : %@", &v11, 0xCu);
    }

    sendDelegate2 = [(MSMessageExtensionBrowserViewController *)self sendDelegate];
    [sendDelegate2 notifyActiveBrowserAssetArchiveWasRemoved:identifierCopy];
  }
}

- (void)chatKitTransport:(id)transport commitPayload:(id)payload
{
  payloadCopy = payload;
  sendDelegate = [(MSMessageExtensionBrowserViewController *)self sendDelegate];
  [sendDelegate commitPayload:payloadCopy];
}

- (id)workingDirForDraft
{
  sendDelegate = [(MSMessageExtensionBrowserViewController *)self sendDelegate];
  balloonPlugin = [(MSMessageExtensionBrowserViewController *)self balloonPlugin];
  identifier = [balloonPlugin identifier];
  v6 = [sendDelegate workingDraftDirForPluginIdentifier:identifier];

  return v6;
}

- (void)chatKitTransport:(id)transport didUpdatePersistedURLsForPackageIdentifier:(id)identifier
{
  transportCopy = transport;
  identifierCopy = identifier;
  if (objc_opt_respondsToSelector())
  {
    v7 = [transportCopy payloadForIdentifier:identifierCopy];
    if (v7)
    {
      sendDelegate = [(MSMessageExtensionBrowserViewController *)self sendDelegate];
      if (objc_opt_respondsToSelector())
      {
        [sendDelegate generatePreviewAndStoreInCacheForSendingPhotoFromPayload:v7];
      }
    }
  }
}

- (void)_transportStagingStateDidChange
{
  sendDelegate = [(MSMessageExtensionBrowserViewController *)self sendDelegate];
  assetExplorerTransport = [(MSMessageExtensionBrowserViewController *)self assetExplorerTransport];
  orderedStagedIdentifiers = [assetExplorerTransport orderedStagedIdentifiers];

  v6 = [orderedStagedIdentifiers count];
  if (v6 < 1)
  {
    if (!v6 && [(MSMessageExtensionBrowserViewController *)self isShowingAssetExplorerShelf])
    {
      [sendDelegate dismissEntryViewShelf];
      [(MSMessageExtensionBrowserViewController *)self setAssetExplorerShelfViewController:0];
      [(MSMessageExtensionBrowserViewController *)self setIsShowingAssetExplorerShelf:0];
    }
  }

  else if (![(MSMessageExtensionBrowserViewController *)self isShowingAssetExplorerShelf])
  {
    v7 = qword_571F0;
    if (!qword_571F0)
    {
      v7 = IMWeakLinkClass();
      qword_571F0 = v7;
    }

    v8 = [v7 alloc];
    assetExplorerTransport2 = [(MSMessageExtensionBrowserViewController *)self assetExplorerTransport];
    v10 = [v8 initWithPackageTransport:assetExplorerTransport2];

    if (objc_opt_respondsToSelector())
    {
      [v10 setEntryViewDelegate:self];
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_207A8;
    v11[3] = &unk_4D850;
    v11[4] = self;
    [sendDelegate showEntryViewPhotosShelf:v10 completion:v11];
    [(MSMessageExtensionBrowserViewController *)self setAssetExplorerShelfViewController:v10];
    [(MSMessageExtensionBrowserViewController *)self setIsShowingAssetExplorerShelf:1];
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if ((change & 1) != 0 && MSAssetExplorerTransportContext == context)
  {
    [(MSMessageExtensionBrowserViewController *)self _transportStagingStateDidChange];
  }
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  sendDelegate = [(MSMessageExtensionBrowserViewController *)self sendDelegate];
  [sendDelegate showModalViewController:controllerCopy animated:animatedCopy completion:completionCopy];
}

@end