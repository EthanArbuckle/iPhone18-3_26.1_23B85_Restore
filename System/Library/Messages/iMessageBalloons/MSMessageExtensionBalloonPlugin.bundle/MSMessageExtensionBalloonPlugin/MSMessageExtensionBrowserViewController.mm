@interface MSMessageExtensionBrowserViewController
+ (void)invalidateSnapshotForKey:(id)a3;
- (BOOL)_canCurrentPluginShowInBrowserPluginIdentifier:(id)a3;
- (BOOL)_shouldVendRemoteViewControllerForCardSwipeSPI;
- (BOOL)extensionWantsDraftAssetArchives;
- (BOOL)hasEntitlement:(id)a3;
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
- (MSMessageExtensionBrowserViewController)initWithBalloonPlugin:(id)a3 dataSource:(id)a4;
- (NSString)description;
- (_MSMessageComposeExtensionProtocol)remoteProxy;
- (_UIRemoteViewController)_containedRemoteViewController;
- (id)_arrayForApplePlistKey:(id)a3;
- (id)_bundleIDsForSwipeGestureDisablement;
- (id)_configurePhotosDraftAssetArchivesWithConversationID:(id)a3;
- (id)_itemPayloadFromMSMessage:(id)a3;
- (id)assetExplorerTransport;
- (id)cancelTouchesInView;
- (id)childViewControllerForStatusBarHidden;
- (id)childViewControllerForStatusBarStyle;
- (id)currentConversationState;
- (id)extension;
- (id)fetchPluginPayloadsAndClear:(BOOL)a3;
- (id)fetchPluginStagedIdentifiers;
- (id)iMessageLoginID;
- (id)navigationItem;
- (id)requestSnapshotDataForPersistance;
- (id)substituteNameInString:(id)a3;
- (id)substituteNameInString:(id)a3 withAppID:(id)a4;
- (id)workingDirForDraft;
- (unint64_t)presentationStyle;
- (unint64_t)sheetDetentStyle;
- (void)_addRemoteViewController;
- (void)_addRemoteViewControllerAndConfigureExtension;
- (void)_addStickerAnimationDidFinishWithCompletion:(id)a3;
- (void)_addStickerToStoreWithRepresentations:(id)a3 completionHandler:(id)a4;
- (void)_addStickerToStoreWithRepresentations:(id)a3 completionWithStickerIDs:(id)a4;
- (void)_addStickerToStoreWithRepresentations:(id)a3 sourceRect:(CGRect)a4 completion:(id)a5;
- (void)_addStickerToStoreWithRepresentations:(id)a3 sourceRect:(CGRect)a4 effect:(int64_t)a5 completion:(id)a6;
- (void)_addStickerToStoreWithUISticker:(id)a3 sourceRect:(CGRect)a4 completion:(id)a5;
- (void)_animatedStickerCreationProgressChanged:(id)a3 progress:(double)a4;
- (void)_assetArchiveRemoved:(id)a3;
- (void)_callAndDequeueLoadCompletionBlocks:(BOOL)a3;
- (void)_canShowBrowserForPluginIdentifier:(id)a3 completion:(id)a4;
- (void)_cancelExtensionRequest;
- (void)_configureMessage:(id)a3 messageSenderAddress:(id)a4 withConversation:(id)a5;
- (void)_didRemoveStickerPreview;
- (void)_dismiss;
- (void)_dismissAndPresentPhotosApp;
- (void)_handleExtensionInterruption:(id)a3;
- (void)_instantiateRemoteViewControllerIfNeededWithIntent:(int64_t)a3 completion:(id)a4;
- (void)_markCurrentMessageAsPlayedIfNeeded;
- (void)_openURL:(id)a3 completionHandler:(id)a4;
- (void)_postCurrentPluginBrowserViewDidPrepareForDisplay;
- (void)_prepareForAddStickerFromSubjectLift;
- (void)_presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 destructiveButtonTitle:(id)a6 completion:(id)a7;
- (void)_presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 image:(id)a6 completion:(id)a7;
- (void)_remoteViewDidBecomeReadyForDisplay;
- (void)_removeAssetArchiveWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)_removeRemoteViewController;
- (void)_removeRemoteViewControllerAndCancelExtensionRequestIfNeeded;
- (void)_requestConversationAvatarsWithSize:(CGSize)a3 completionHandler:(id)a4;
- (void)_requestFullScreenModalPresentationWithSize:(CGSize)a3;
- (void)_requestHostSceneIdentifierWithCompletion:(id)a3;
- (void)_requestPresentationStyle:(unint64_t)a3;
- (void)_requestPresentationWithStickerType:(id)a3 identifier:(id)a4;
- (void)_requestStickerExtensionMetadataDictionary:(id)a3;
- (void)_sendBecomeActiveMessage;
- (void)_sendCustomAcknowledgement:(id)a3 selectedMessage:(id)a4 completionHandler:(id)a5;
- (void)_sendInstantiationRequestToExtensionWithHandler:(id)a3;
- (void)_sendResignActiveMessage;
- (void)_setPluginIdentifierToShow:(id)a3 completion:(id)a4;
- (void)_showBrowserForPluginIdentifier:(id)a3 style:(unint64_t)a4 completion:(id)a5;
- (void)_stageAppItem:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5;
- (void)_stageAssetArchive:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5;
- (void)_stageMediaItem:(id)a3 skipShelf:(BOOL)a4 forceStage:(BOOL)a5 completionHandler:(id)a6;
- (void)_stageRichLink:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5;
- (void)_startDragMediaItem:(id)a3 frameInRemoteView:(CGRect)a4 fence:(id)a5 completionHandler:(id)a6;
- (void)_stickerDruidDragEndedWithPayload:(id)a3;
- (void)_stickerDruidDragEndedWithPayload:(id)a3 pluginIdentifier:(id)a4;
- (void)_stickerDruidDragStarted;
- (void)_transportStagingStateDidChange;
- (void)_updateSnapshotForNextLaunch:(id)a3;
- (void)appendDraftAssetArchivesIfNeeded:(id)a3;
- (void)applicationDidEnterBackground:(id)a3;
- (void)applicationWillEnterForeground:(id)a3;
- (void)beginDisablingUserInteraction;
- (void)beginSuppressingAppearanceMethods;
- (void)browserScrolledOffScreen;
- (void)browserScrolledOnScreen;
- (void)chatKitTransport:(id)a3 commitPayload:(id)a4;
- (void)chatKitTransport:(id)a3 didUpdatePersistedURLsForPackageIdentifier:(id)a4;
- (void)checkForTouchInRemoteProcessIfNecessaryWithCompletion:(id)a3;
- (void)clearAllStagedPluginPackages;
- (void)clearPluginPackagesWithIdentifiers:(id)a3;
- (void)datasourcePayloadDidChange:(id)a3 updateFlags:(unint64_t)a4;
- (void)dealloc;
- (void)deferredForceTearDownRemoteView;
- (void)didCancelSendingPluginPayload:(id)a3;
- (void)didMoveToParentViewController:(id)a3;
- (void)didReceiveMemoryWarning;
- (void)didSelectGPAsset:(id)a3 recipeData:(id)a4 completion:(id)a5;
- (void)didStartSendingPluginPayload:(id)a3;
- (void)dragManager:(id)a3 didBeginDraggingItem:(id)a4;
- (void)dragManager:(id)a3 didEndDraggingItem:(id)a4 toDragTarget:(id)a5 dropArea:(int)a6;
- (void)dropAssertion;
- (void)endDisablingUserInteraction;
- (void)endSuppressingAppearanceMethods;
- (void)forceTearDownRemoteViewOverridingExceptions:(BOOL)a3;
- (void)handleTextInputPayload:(id)a3 withPayloadID:(id)a4 completion:(id)a5;
- (void)killExtensionProcess;
- (void)loadProxyIfNeededWithCompletion:(id)a3;
- (void)loadRemoteViewWithCompletion:(id)a3;
- (void)messageAddedWithDataSource:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)packageTransport:(id)a3 didUnstagePackageWithIdentifier:(id)a4;
- (void)prepareForPresentationWithCompletionHandler:(id)a3;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)removeSnapshot;
- (void)requestStickerExtensionMetadataDictionary:(id)a3;
- (void)restoreDraftStateFromPayload:(id)a3;
- (void)saveSnapshotForBrowserViewController;
- (void)setBalloonPluginDataSource:(id)a3;
- (void)showSnapshotForSize:(CGSize)a3;
- (void)stageAssetToTransportAndNotifySendDelegate:(id)a3;
- (void)touchUpOccuredForIdentifier:(unsigned int)a3 detached:(BOOL)a4 context:(unsigned int)a5 pid:(int)a6;
- (void)unloadRemoteView;
- (void)validatePayloadForSending:(id)a3 associatedText:(id)a4 completionHandler:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidTransitionToCompactPresentation;
- (void)viewDidTransitionToExpandedPresentation;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToCompactPresentation;
- (void)viewWillTransitionToExpandedPresentation;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)volumeButtonPressed:(BOOL)a3;
@end

@implementation MSMessageExtensionBrowserViewController

- (IMBalloonAppExtension)balloonExtensionPlugin
{
  v2 = [(MSMessageExtensionBrowserViewController *)self balloonPlugin];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v2 = 0;
  }

  return v2;
}

- (MSMessageExtensionBrowserViewController)initWithBalloonPlugin:(id)a3 dataSource:(id)a4
{
  v6 = a4;
  v21.receiver = self;
  v21.super_class = MSMessageExtensionBrowserViewController;
  v7 = [(MSMessageExtensionBrowserViewController *)&v21 initWithBalloonPlugin:a3 dataSource:v6];
  if (v7)
  {
    v8 = [v6 message];
    message = v7->_message;
    v7->_message = v8;

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

    [v6 setDelegate:v7];
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
    v10 = self;
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
  v3 = [(MSMessageExtensionBrowserViewController *)self balloonPlugin];
  v4 = [v3 identifier];
  v5 = [NSString stringWithFormat:@"<%@ %p %@>", v4, self, objc_opt_class()];

  return v5;
}

- (id)navigationItem
{
  v3 = [(UIViewController *)self->_remoteViewController navigationItem];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MSMessageExtensionBrowserViewController;
    v5 = [(MSMessageExtensionBrowserViewController *)&v8 navigationItem];
  }

  v6 = v5;

  return v6;
}

- (id)childViewControllerForStatusBarHidden
{
  v4.receiver = self;
  v4.super_class = MSMessageExtensionBrowserViewController;
  v2 = [(MSMessageExtensionBrowserViewController *)&v4 childViewControllerForStatusBarHidden];

  return v2;
}

- (id)childViewControllerForStatusBarStyle
{
  v4.receiver = self;
  v4.super_class = MSMessageExtensionBrowserViewController;
  v2 = [(MSMessageExtensionBrowserViewController *)&v4 childViewControllerForStatusBarStyle];

  return v2;
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
    v4 = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
    v5 = [v4 extension];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 infoDictionary];
      v8 = [v7 objectForKeyedSubscript:kCFBundleIdentifierKey];
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

- (BOOL)hasEntitlement:(id)a3
{
  v4 = a3;
  v5 = [(MSMessageExtensionBrowserViewController *)self extension];

  if (v5)
  {
    v6 = [(MSMessageExtensionBrowserViewController *)self extension];
    v7 = [v6 _extensionContextForUUID:self->_sessionUUID];
    v8 = [v7 _auxiliaryConnection];
    v9 = [v8 valueForEntitlement:v4];

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

  v4 = [(MSMessageExtensionBrowserViewController *)self extension];
  if (v4)
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

- (void)loadRemoteViewWithCompletion:(id)a3
{
  v4 = a3;
  v5 = IMLogHandleForCategory();
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "extensionLoading", "", buf, 2u);
  }

  v9 = [(MSMessageExtensionBrowserViewController *)self isInDeferredTeardown];
  v10 = self->_remoteViewController;
  v11 = ms_defaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = self;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "loadRemoteView %@", buf, 0xCu);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_2F40;
  v15[3] = &unk_4CE58;
  v16 = v10;
  v17 = self;
  v21 = v9;
  v18 = v8;
  v19 = v4;
  v20 = v6;
  v12 = v8;
  v13 = v4;
  v14 = v10;
  [(MSMessageExtensionBrowserViewController *)self _instantiateRemoteViewControllerIfNeeded:v15];
}

- (void)unloadRemoteView
{
  v3 = ms_defaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "unloadRemoteView %@", &v4, 0xCu);
  }

  [(MSMessageExtensionBrowserViewController *)self _removeRemoteViewControllerAndCancelExtensionRequestIfNeeded];
}

- (BOOL)mayBeKeptInViewHierarchy
{
  v3 = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  v4 = [v3 proxy];

  v5 = [v4 objectForInfoDictionaryKey:@"NSCameraUsageDescription" ofClass:objc_opt_class() inScope:0];

  v6 = [v4 objectForInfoDictionaryKey:@"NSMicrophoneUsageDescription" ofClass:objc_opt_class() inScope:0];
  v7 = v5 | v6;

  v8 = [(MSMessageExtensionBrowserViewController *)self inFullScreenModalPresentation];
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)setBalloonPluginDataSource:(id)a3
{
  v4 = a3;
  v5 = [(MSMessageExtensionBrowserViewController *)self balloonPluginDataSource];
  v6 = v4;
  if (v5 != v6)
  {
    [v5 setDelegate:0];
    [v6 setDelegate:self];
    v7 = [v6 message];
    message = self->_message;
    self->_message = v7;

    v11.receiver = self;
    v11.super_class = MSMessageExtensionBrowserViewController;
    [(MSMessageExtensionBrowserViewController *)&v11 setBalloonPluginDataSource:v6];
    v9 = [(MSMessageExtensionBrowserViewController *)self currentConversationState];
    v10 = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
    [v10 _conversationDidChangeWithConversationState:v9];

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
    v3 = [(MSMessageExtensionBrowserViewController *)self extension];
    [v3 cancelExtensionRequestWithIdentifier:self->_sessionUUID];

    v4 = ms_defaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = self;
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
      v7 = self;
      _os_log_impl(&dword_0, p_super, OS_LOG_TYPE_DEFAULT, " no _sessionUUID could not cancel %@", &v6, 0xCu);
    }
  }
}

- (void)deferredForceTearDownRemoteView
{
  if (![(MSMessageExtensionBrowserViewController *)self isInDeferredTeardown]&& ![(MSMessageExtensionBrowserViewController *)self isWaitingForReply])
  {
    [(MSMessageExtensionBrowserViewController *)self setIsInDeferredTeardown:1];
    v3 = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
    [v3 _hostDidBeginDeferredTeardown];

    im_dispatch_after();
  }
}

- (void)dropAssertion
{
  v2 = [(MSMessageExtensionBrowserViewController *)self extension];
  [v2 _dropAssertion];
}

- (void)killExtensionProcess
{
  v3 = +[CKPluginExtensionStateObserver sharedInstance];
  v4 = [v3 passKitUIPresented];

  if (v4)
  {
    v5 = ms_defaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = self;
      v6 = "self %@ killExtensionProcess not doing  work as we are suspending due to passkit UI";
LABEL_7:
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v7 = +[CKPluginExtensionStateObserver sharedInstance];
  v8 = [v7 iTunesStoreDialogPresented];

  if (v8)
  {
    v5 = ms_defaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = self;
      v6 = "self %@ killExtensionProcess not  suspend work as we are suspending due to iTunesStore UI";
      goto LABEL_7;
    }

LABEL_8:

    return;
  }

  if ((IMGetDomainBoolForKey() & 1) == 0)
  {
    v9 = [(MSMessageExtensionBrowserViewController *)self extension];
    [v9 _kill:9];
  }
}

- (BOOL)isAlive
{
  v2 = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
  v3 = v2 != 0;

  return v3;
}

- (void)didMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = MSMessageExtensionBrowserViewController;
  [(MSMessageExtensionBrowserViewController *)&v5 didMoveToParentViewController:?];
  if (a3)
  {
    [(MSMessageExtensionBrowserViewController *)self setIsInDeferredTeardown:0];
  }
}

- (BOOL)prefersStatusBarHidden
{
  v3 = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  v4 = [v3 identifier];
  v5 = IMBalloonExtensionIDWithSuffix();
  v6 = [v4 isEqualToString:v5];

  if (!v6)
  {
    return 0;
  }

  v7 = [(MSMessageExtensionBrowserViewController *)self remoteViewController];

  if (v7)
  {
    v8 = [(MSMessageExtensionBrowserViewController *)self remoteViewController];
    v9 = [v8 prefersStatusBarHidden];

    return v9;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = MSMessageExtensionBrowserViewController;
    return [(MSMessageExtensionBrowserViewController *)&v11 prefersStatusBarHidden];
  }
}

- (void)forceTearDownRemoteViewOverridingExceptions:(BOOL)a3
{
  [(MSMessageExtensionBrowserViewController *)self setIsInDeferredTeardown:0];
  if (a3)
  {
    goto LABEL_2;
  }

  v21 = [(MSMessageExtensionBrowserViewController *)self balloonPlugin];
  v22 = [v21 identifier];
  v23 = [v22 containsString:IMBalloonPluginIdentifierSurf];

  v24 = +[CKPluginExtensionStateObserver sharedInstance];
  LOBYTE(v22) = [v24 passKitUIPresented];

  if ((v22 & 1) != 0 || v23)
  {
    v27 = ms_defaultLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138412290;
      v30 = self;
      v28 = "self %@ prepareForSuspend not doing suspend work as we are suspending due to passkit UI/ Apple Pay UI";
      goto LABEL_17;
    }

LABEL_18:

    return;
  }

  v25 = +[CKPluginExtensionStateObserver sharedInstance];
  v26 = [v25 iTunesStoreDialogPresented];

  if (v26)
  {
    v27 = ms_defaultLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138412290;
      v30 = self;
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
    v30 = remoteViewController;
    v31 = 2112;
    v32 = sessionUUID;
    v33 = 2112;
    v34 = v8;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "forceTearDownRemoteView current remoteViewController %@, sessionUUID %@, request count %@", &v29, 0x20u);
  }

  [(MSMessageExtensionBrowserViewController *)self _sendResignActiveMessage];
  [(MSMessageExtensionBrowserViewController *)self setIsWaitingForReply:0];
  v9 = [(MSMessageExtensionBrowserViewController *)self remoteViewController];

  if (v9)
  {
    v10 = [(MSMessageExtensionBrowserViewController *)self remoteViewController];
    [v10 removeFromParentViewController];

    v11 = [(MSMessageExtensionBrowserViewController *)self remoteViewController];
    v12 = [v11 view];
    [v12 removeFromSuperview];

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
    v28 = [(UIViewController *)remoteViewController view];
    [v28 setAutoresizingMask:18];
    v4 = [(MSMessageExtensionBrowserViewController *)self view];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [(UIViewController *)self->_remoteViewController view];
    [v13 setFrame:{v6, v8, v10, v12}];

    v14 = +[CKUIBehavior sharedBehaviors];
    v15 = [v14 theme];
    v16 = [v15 browserCardBackgroundColor];
    v17 = [(MSMessageExtensionBrowserViewController *)self view];
    [v17 setBackgroundColor:v16];

    if (+[_MSPresentationState isRunningInCameraContext])
    {
      v18 = [(MSMessageExtensionBrowserViewController *)self view];
      [v18 addSubview:v28];

      v19 = +[UIColor secondarySystemBackgroundColor];
      v20 = [(UIViewController *)self->_remoteViewController view];
      [v20 setBackgroundColor:v19];

      [(MSMessageExtensionBrowserViewController *)self addChildViewController:self->_remoteViewController];
      [(UIViewController *)self->_remoteViewController beginAppearanceTransition:1 animated:0];
    }

    else
    {
      v22 = +[CKUIBehavior sharedBehaviors];
      v23 = [v22 theme];
      v24 = [v23 browserCardBackgroundColor];
      v25 = [(UIViewController *)self->_remoteViewController view];
      [v25 setBackgroundColor:v24];

      [(MSMessageExtensionBrowserViewController *)self addChildViewController:self->_remoteViewController];
      [(UIViewController *)self->_remoteViewController beginAppearanceTransition:1 animated:0];
      v26 = [(MSMessageExtensionBrowserViewController *)self view];
      [v26 addSubview:v28];
    }

    v27 = [(MSMessageExtensionBrowserViewController *)self view];
    [v27 setNeedsLayout];

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
  v3 = [(UIViewController *)self->_remoteViewController parentViewController];

  if (v3 == self)
  {
    [(UIViewController *)self->_remoteViewController beginAppearanceTransition:0 animated:0];
    v4 = [(UIViewController *)self->_remoteViewController view];
    [v4 removeFromSuperview];
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
    v5 = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "_addRemoteViewControllerAndConfigureExtension %@", &v4, 0xCu);
  }

  [(MSMessageExtensionBrowserViewController *)self _sendBecomeActiveMessage];
  [(MSMessageExtensionBrowserViewController *)self _addRemoteViewController];
}

- (void)applicationDidEnterBackground:(id)a3
{
  if (CKIsRunningInMessages())
  {
    v4 = +[BKSTouchDeliveryObservationService sharedInstance];
    [v4 removeObserver:self];
  }
}

- (void)applicationWillEnterForeground:(id)a3
{
  if (CKIsRunningInMessages())
  {
    v4 = +[BKSTouchDeliveryObservationService sharedInstance];
    [v4 addObserver:self];
  }
}

- (void)_handleExtensionInterruption:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:IMExtensionRemoteConnectionInterruptedBundleIdentifier];

  v6 = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  v7 = [v6 identifier];
  v8 = [v5 isEqualToString:v7];

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

- (id)_arrayForApplePlistKey:(id)a3
{
  v4 = a3;
  v5 = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  v6 = [v5 proxy];

  if (v6)
  {
    v7 = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
    v8 = [v7 proxy];
    v9 = [v8 objectForInfoDictionaryKey:v4 ofClass:objc_opt_class() inScope:2];
  }

  else
  {
    v10 = [(MSMessageExtensionBrowserViewController *)self balloonPlugin];
    v11 = [v10 appBundle];
    v7 = [v11 objectForInfoDictionaryKey:v4];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v7;
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
  v2 = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  v3 = [v2 proxy];
  v4 = [v3 objectForInfoDictionaryKey:@"MSMessagesOverlayAppearanceDark" ofClass:objc_opt_class() inScope:2];
  v5 = [v4 BOOLValue];

  return v5;
}

- (BOOL)wantsOpaqueUI
{
  v2 = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  v3 = [v2 proxy];
  v4 = [v3 objectForInfoDictionaryKey:@"MSMessagesOverlayAppearanceOpaque" ofClass:objc_opt_class() inScope:2];
  v5 = [v4 BOOLValue];

  return v5;
}

- (BOOL)shouldSuppressEntryView
{
  v2 = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  v3 = [v2 proxy];
  v4 = [v3 objectForInfoDictionaryKey:@"MSExpandedPresentationHidesComposeField" ofClass:objc_opt_class() inScope:2];
  v5 = [v4 BOOLValue];

  return v5;
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
      v17 = [(MSMessageExtensionBrowserViewController *)self balloonPlugin];
      v18 = [v17 identifier];
      *buf = 138412290;
      v34 = v18;
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
    v3 = [(UIViewController *)self->_remoteViewController _cancelTouchesForCurrentEventInHostedContent];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)extension
{
  v2 = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  v3 = [v2 extension];

  return v3;
}

- (_MSMessageComposeExtensionProtocol)remoteProxy
{
  v3 = [(MSMessageExtensionBrowserViewController *)self extension];

  if (v3)
  {
    v4 = [(MSMessageExtensionBrowserViewController *)self extension];
    v5 = [(UIViewController *)v4 _extensionContextForUUID:self->_sessionUUID];
    v6 = [v5 _auxiliaryConnection];
    v7 = [v6 remoteObjectProxy];
  }

  else
  {
    v4 = self->_remoteViewController;
    if (objc_opt_respondsToSelector())
    {
      v7 = [(UIViewController *)v4 appContext];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)_callAndDequeueLoadCompletionBlocks:(BOOL)a3
{
  v3 = a3;
  v5 = ms_defaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MSMessageExtensionBrowserViewController *)self extensionLoadRequestCompletionBlockArray];
    v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 count]);
    v8 = [NSNumber numberWithBool:v3];
    *buf = 138412802;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = self;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Will dequeue %@ blocks with result %@ %@", buf, 0x20u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [(MSMessageExtensionBrowserViewController *)self extensionLoadRequestCompletionBlockArray];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v9);
        }

        (*(*(*(&v15 + 1) + 8 * v13) + 16))();
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = [(MSMessageExtensionBrowserViewController *)self extensionLoadRequestCompletionBlockArray];
  [v14 removeAllObjects];
}

- (void)_sendInstantiationRequestToExtensionWithHandler:(id)a3
{
  v4 = a3;
  v5 = IMLogHandleForCategory();
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "extensionLoading", "", buf, 2u);
  }

  v9 = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  v10 = [v9 extension];
  if (v10)
  {
    v37 = v4;
    v11 = objc_alloc_init(NSExtensionItem);
    v12 = CKIsRunningInCameraAppsClient();
    v13 = CKIsRunningInUserGeneratedStickersExtension();
    [(MSMessageExtensionBrowserViewController *)self preferredContentSize];
    if (v15 == CGSizeZero.width && v14 == CGSizeZero.height)
    {
      v23 = [(MSMessageExtensionBrowserViewController *)self view];
      [v23 bounds];
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
    v29 = [(MSMessageExtensionBrowserViewController *)self isPrimaryViewController];
    v30 = &off_4EA90;
    if (v29)
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
    v4 = v37;
    [v10 instantiateViewControllerWithInputItems:v34 listenerEndpoint:0 connectionHandler:v37];
  }

  v35 = v8;
  v36 = v35;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v36, OS_SIGNPOST_INTERVAL_END, v6, "extensionLoading", "", buf, 2u);
  }
}

- (void)_instantiateRemoteViewControllerIfNeededWithIntent:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  [(MSMessageExtensionBrowserViewController *)self setIsInDeferredTeardown:0];
  v7 = [(MSMessageExtensionBrowserViewController *)self extension];

  if (!v7)
  {
    if (self->_remoteViewController)
    {
      if (v6)
      {
        v6[2](v6, 1);
      }
    }

    else
    {
      v31 = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
      v32 = [v31 appBundle];
      v33 = objc_alloc_init([v32 principalClass]);

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
      v47 = v6;
      dispatch_async(&_dispatch_main_q, block);
    }

    goto LABEL_40;
  }

  v8 = ms_defaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [NSNumber numberWithUnsignedInteger:[(MSMessageExtensionBrowserViewController *)self extensionLoadRequestCount]];
    v10 = objc_retainBlock(v6);
    v11 = [NSNumber numberWithBool:[(MSMessageExtensionBrowserViewController *)self extensionLoadRequestInFlight]];
    *buf = 138413058;
    v49 = v9;
    v50 = 2112;
    v51 = v10;
    v52 = 2112;
    v53 = self;
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
    if (v6)
    {
      goto LABEL_12;
    }

LABEL_26:
    if ((v12 & 1) == 0)
    {
      v37 = [(MSMessageExtensionBrowserViewController *)self remoteViewController];
      [v37 beginAppearanceTransition:1 animated:1];

      v38 = [(MSMessageExtensionBrowserViewController *)self remoteViewController];
      [v38 endAppearanceTransition];

      v19 = 0;
      if (!v6)
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
      v49 = self;
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
    v45[1] = a3;
    v30 = objc_retainBlock(&v41);
    [(MSMessageExtensionBrowserViewController *)self _sendInstantiationRequestToExtensionWithHandler:v30, v41, v42, v43, v44];

    objc_destroyWeak(v45);
    objc_destroyWeak(buf);
    if (!v6)
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
        v49 = v40;
        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "Calling block immediately. Updated Request count %@", buf, 0xCu);
      }

      v6[2](v6, 1);
    }

    goto LABEL_40;
  }

  if (v6)
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
    v49 = v14;
    v50 = 2112;
    v51 = v15;
    v52 = 2112;
    v53 = v16;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Request in flight or we will try loading extension. Queueing block in array. Updated Request count %@, shouldLoadExtension %@, extension request in flight %@", buf, 0x20u);
  }

  v17 = [(MSMessageExtensionBrowserViewController *)self extensionLoadRequestCompletionBlockArray];
  v18 = [v6 copy];
  [v17 addObject:v18];

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

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = ms_traceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_2C104();
  }

  v6.receiver = self;
  v6.super_class = MSMessageExtensionBrowserViewController;
  [(MSMessageExtensionBrowserViewController *)&v6 viewWillAppear:v3];
}

- (void)showSnapshotForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([(MSMessageExtensionBrowserViewController *)self shouldDisableSnapshotView]& 1) == 0)
  {
    if (width == CGSizeZero.width && height == CGSizeZero.height)
    {
      v7 = [(MSMessageExtensionBrowserViewController *)self view];
      [v7 bounds];
      width = v8;
      height = v9;
    }

    [(MSMessageExtensionBrowserViewController *)self removeSnapshot];
    v10 = [(MSMessageExtensionBrowserViewController *)self balloonPlugin];
    v11 = [v10 identifier];
    v12 = [(MSMessageExtensionBrowserViewController *)self view];
    v13 = [v12 traitCollection];
    v19 = +[CKSnapshotCacheKey keyWithIdentifier:interfaceStyle:bounds:](CKSnapshotCacheKey, "keyWithIdentifier:interfaceStyle:bounds:", v11, [v13 userInterfaceStyle], CGPointZero.x, CGPointZero.y, width, height);

    v14 = +[CKBalloonPluginManager sharedInstance];
    v15 = [v14 browserSnapshotForKey:v19];
    [(MSMessageExtensionBrowserViewController *)self setSnapshotView:v15];

    v16 = [(MSMessageExtensionBrowserViewController *)self snapshotView];

    if (v16)
    {
      v17 = [(MSMessageExtensionBrowserViewController *)self view];
      v18 = [(MSMessageExtensionBrowserViewController *)self snapshotView];
      [v17 insertSubview:v18 atIndex:0];
    }
  }
}

- (void)removeSnapshot
{
  v3 = [(MSMessageExtensionBrowserViewController *)self snapshotView];
  [v3 removeFromSuperview];

  [(MSMessageExtensionBrowserViewController *)self setSnapshotView:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = ms_traceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_2C1CC();
  }

  v6.receiver = self;
  v6.super_class = MSMessageExtensionBrowserViewController;
  [(MSMessageExtensionBrowserViewController *)&v6 viewDidAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = ms_traceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_2C294();
  }

  v6.receiver = self;
  v6.super_class = MSMessageExtensionBrowserViewController;
  [(MSMessageExtensionBrowserViewController *)&v6 viewWillDisappear:v3];
  if (CKIsRunningInMacCatalyst())
  {
    if ([(MSMessageExtensionBrowserViewController *)self isBeingDismissed])
    {
      [(MSMessageExtensionBrowserViewController *)self saveSnapshotForBrowserViewController];
    }
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = ms_traceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_2C35C();
  }

  v6.receiver = self;
  v6.super_class = MSMessageExtensionBrowserViewController;
  [(MSMessageExtensionBrowserViewController *)&v6 viewDidDisappear:v3];
}

- (void)browserScrolledOnScreen
{
  v3 = [(MSMessageExtensionBrowserViewController *)self remoteViewController];
  if (v3)
  {
    v9 = v3;
    v4 = [v3 parentViewController];

    v3 = v9;
    if (v4 != self)
    {
      [(MSMessageExtensionBrowserViewController *)self _addRemoteViewController];
      v5 = [(MSMessageExtensionBrowserViewController *)self remoteViewController];
      v6 = [v5 view];
      [v6 setNeedsLayout];

      v7 = [(MSMessageExtensionBrowserViewController *)self remoteViewController];
      v8 = [v7 view];
      [v8 layoutIfNeeded];

      v3 = v9;
    }
  }
}

- (void)browserScrolledOffScreen
{
  if (![(MSMessageExtensionBrowserViewController *)self isInDeferredTeardown])
  {
    v3 = [(MSMessageExtensionBrowserViewController *)self remoteViewController];
    v4 = [v3 parentViewController];

    if (v4 == self)
    {

      [(MSMessageExtensionBrowserViewController *)self _removeRemoteViewController];
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7.receiver = self;
  v7.super_class = MSMessageExtensionBrowserViewController;
  [(MSMessageExtensionBrowserViewController *)&v7 viewWillTransitionToSize:a4 withTransitionCoordinator:?];
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
  v4 = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
  [v4 _presentationWillChangeToPresentationState:v3];
}

- (void)viewDidTransitionToExpandedPresentation
{
  v5.receiver = self;
  v5.super_class = MSMessageExtensionBrowserViewController;
  [(MSMessageExtensionBrowserViewController *)&v5 viewDidTransitionToExpandedPresentation];
  v3 = objc_alloc_init(_MSPresentationState);
  [v3 setPresentationStyle:1];
  v4 = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
  [v4 _presentationDidChangeToPresentationState:v3];
}

- (void)viewWillTransitionToCompactPresentation
{
  v5.receiver = self;
  v5.super_class = MSMessageExtensionBrowserViewController;
  [(MSMessageExtensionBrowserViewController *)&v5 viewWillTransitionToCompactPresentation];
  v3 = objc_alloc_init(_MSPresentationState);
  [v3 setPresentationStyle:0];
  v4 = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
  [v4 _presentationWillChangeToPresentationState:v3];
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
    v5 = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
    [v5 _presentationDidChangeToPresentationState:v3];
  }
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = MSMessageExtensionBrowserViewController;
  [(MSMessageExtensionBrowserViewController *)&v13 viewWillLayoutSubviews];
  v3 = [(MSMessageExtensionBrowserViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(UIViewController *)self->_remoteViewController view];
  [v12 setFrame:{v5, v7, v9, v11}];
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
    v16 = [v8 strippedLogin];
    goto LABEL_16;
  }

LABEL_15:
  v16 = [v9 strippedLogin];
  v8 = 0;
LABEL_16:

  return v16;
}

- (id)currentConversationState
{
  v3 = objc_alloc_init(_MSConversationState);
  v4 = [(MSMessageExtensionBrowserViewController *)self conversationID];
  v5 = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  v6 = [v5 identifier];

  v7 = +[IMBalloonPluginManager sharedInstance];
  v46 = v6;
  v8 = [v7 conversationID:v4 appID:v6];
  [v3 setConversationIdentifier:v8];

  v47 = self;
  if ([(MSMessageExtensionBrowserViewController *)self hasEntitlement:@"com.apple.messages.private.AllowConversationIdentifierAccess"])
  {
    v9 = [(MSMessageExtensionBrowserViewController *)self conversationID];
    [v3 setConversationID:v9];

    v10 = [(MSMessageExtensionBrowserViewController *)self conversationEngramID];
    [v3 setConversationEngramID:v10];

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
    v14 = [v13 conversationForExistingChatWithGUID:v4];

    v15 = [v14 chat];
    v16 = [v15 groupID];
    [v3 setGroupID:v16];

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
    v20 = [(MSMessageExtensionBrowserViewController *)self iMessageLoginID];
    [v3 setiMessageLoginID:v20];

    v21 = [(MSMessageExtensionBrowserViewController *)self sender];
    [v3 setSenderAddress:v21];

    v22 = [(MSMessageExtensionBrowserViewController *)self recipients];
    [v3 setRecipientAddresses:v22];
  }

  if ([(MSMessageExtensionBrowserViewController *)self hasEntitlement:@"com.apple.messages.private.AllowConversationContextAccess"])
  {
    v23 = [(MSMessageExtensionBrowserViewController *)self generativeContext];
    [v3 setConversationContext:v23];

    v24 = [(MSMessageExtensionBrowserViewController *)self generatedSummary];
    [v3 setGeneratedSummary:v24];
  }

  v25 = +[IMBalloonPluginManager sharedInstance];
  v26 = [v25 localParticipantIdentifierForAppID:v6 conversationID:v4];
  v45 = v3;
  [v3 setSenderIdentifier:v26];

  v27 = +[NSMutableArray array];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v28 = [(MSMessageExtensionBrowserViewController *)self recipients];
  v29 = [v28 countByEnumeratingWithState:&v48 objects:v52 count:16];
  v44 = v4;
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
          objc_enumerationMutation(v28);
        }

        v34 = *(*(&v48 + 1) + 8 * i);
        v35 = +[IMBalloonPluginManager sharedInstance];
        v36 = [v35 recipientIDForRecipient:v34 appID:v46];

        [v27 addObject:v36];
        self = v47;
        if (([(MSMessage *)v47->_message isFromMe]& 1) == 0)
        {
          v37 = [(MSMessage *)v47->_message senderParticipantIdentifier];
          v38 = [v36 isEqual:v37];

          if (v38)
          {
            v39 = v34;

            v31 = v39;
          }

          self = v47;
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v48 objects:v52 count:16];
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
  v6 = [(MSMessageExtensionBrowserViewController *)self message];
  if ([v6 shouldExpire])
  {
    if (([v6 isFromMe] & 1) == 0)
    {
      v3 = [(MSMessageExtensionBrowserViewController *)self balloonPluginDataSource];
      v4 = [v3 isPlayed];

      if ((v4 & 1) == 0)
      {
        v5 = [(MSMessageExtensionBrowserViewController *)self balloonPluginDataSource];
        [v5 markAsPlayed];
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

- (void)_configureMessage:(id)a3 messageSenderAddress:(id)a4 withConversation:(id)a5
{
  v19 = a3;
  v8 = a4;
  v9 = a5;
  if ([v19 isFromMe])
  {
    v10 = +[IMBalloonPluginManager sharedInstance];
    v11 = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
    v12 = [v11 identifier];
    v13 = [(MSMessageExtensionBrowserViewController *)self conversationID];
    v14 = [v10 localParticipantIdentifierForAppID:v12 conversationID:v13];
    [v19 setSenderParticipantIdentifier:v14];
  }

  [v19 _sanitize];
  if ([(MSMessageExtensionBrowserViewController *)self hasEntitlement:@"com.apple.messages.private.AllowGUIDAccess"])
  {
    v15 = [(MSMessageExtensionBrowserViewController *)self balloonPluginDataSource];
    v16 = [v15 messageGUID];
    [(MSMessage *)self->_message setGuid:v16];
  }

  if ([(MSMessageExtensionBrowserViewController *)self hasEntitlement:@"com.apple.messages.private.AllowParticipantAddressAccess"])
  {
    if (([(MSMessage *)self->_message isFromMe]& 1) != 0)
    {
      v17 = [v9 senderAddress];

      if (v17)
      {
        [v9 senderAddress];
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
      [(MSMessage *)self->_message setSenderAddress:v8];
    }
  }
}

- (void)_sendBecomeActiveMessage
{
  v3 = [(MSMessageExtensionBrowserViewController *)self currentConversationState];
  [(MSMessageExtensionBrowserViewController *)self appendDraftAssetArchivesIfNeeded:v3];
  v4 = objc_alloc_init(_MSPresentationState);
  [v4 setPresentationStyle:{-[MSMessageExtensionBrowserViewController presentationStyle](self, "presentationStyle")}];
  v5 = ms_traceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_2C424(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v13 = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
  [v13 _becomeActiveWithConversationState:v3 presentationState:v4];

  [(MSMessageExtensionBrowserViewController *)self _markCurrentMessageAsPlayedIfNeeded];
}

- (void)_sendResignActiveMessage
{
  v3 = ms_traceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_2C49C(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
  [v11 _resignActive];
}

- (void)saveSnapshotForBrowserViewController
{
  v3 = +[CKBalloonPluginManager sharedInstance];
  v4 = [(MSMessageExtensionBrowserViewController *)self balloonPlugin];
  v5 = [v4 identifier];
  v6 = [(MSMessageExtensionBrowserViewController *)self view];
  v7 = [v6 traitCollection];
  v8 = [v7 userInterfaceStyle];
  v9 = [(MSMessageExtensionBrowserViewController *)self view];
  [v9 bounds];
  v10 = [CKSnapshotCacheKey keyWithIdentifier:v5 interfaceStyle:v8 bounds:?];

  v11 = objc_alloc_init(IMTimingCollection);
  [v11 startTimingForKey:@"_saveSnapshotForBrowserViewController:"];
  v12 = [v3 snapshotCache];
  v13 = [v10 stringValue];
  LOBYTE(v7) = [v12 isGeneratingPreviewForKey:v13];

  if ((v7 & 1) == 0)
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
    v14 = [v3 snapshotCache];
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
    v15 = [(MSMessageExtensionBrowserViewController *)self balloonPlugin];
    v16 = [v15 identifier];
    [v14 enqueueGenerationBlock:v23 completion:v18 withPriority:-1 forKey:v16];

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

+ (void)invalidateSnapshotForKey:(id)a3
{
  v3 = [a3 stringValue];
  v4 = CKBrowserSnapshotPreviewURL();

  v5 = +[NSFileManager defaultManager];
  v6 = 0;
  [v5 removeItemAtURL:v4 error:&v6];
}

- (id)substituteNameInString:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
    v6 = [v5 identifier];
    v7 = [(MSMessageExtensionBrowserViewController *)self substituteNameInString:v4 withAppID:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)substituteNameInString:(id)a3 withAppID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v43 = v6;
    v9 = objc_alloc_init(NSMutableArray);
    v10 = objc_alloc_init(NSMutableArray);
    v11 = [(MSMessageExtensionBrowserViewController *)self sender];

    if (v11)
    {
      if (v10)
      {
        v12 = [(MSMessageExtensionBrowserViewController *)self sender];

        if (v12)
        {
          v13 = [(MSMessageExtensionBrowserViewController *)self sender];
          CFArrayAppendValue(v10, v13);
        }
      }

      if (v9)
      {
        v14 = +[IMBalloonPluginManager sharedInstance];
        v15 = [(MSMessageExtensionBrowserViewController *)self conversationID];
        v16 = [v14 localParticipantIdentifierForAppID:v8 conversationID:v15];
        v17 = [v16 UUIDString];

        if (v17)
        {
          v18 = +[IMBalloonPluginManager sharedInstance];
          v19 = [(MSMessageExtensionBrowserViewController *)self conversationID];
          v20 = [v18 localParticipantIdentifierForAppID:v8 conversationID:v19];
          v21 = [v20 UUIDString];
          CFArrayAppendValue(v9, v21);
        }
      }
    }

    v44 = v8;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v42 = self;
    v22 = [(MSMessageExtensionBrowserViewController *)self recipients];
    v23 = [v22 countByEnumeratingWithState:&v45 objects:v55 count:16];
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
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v45 + 1) + 8 * i);
          v28 = +[IMBalloonPluginManager sharedInstance];
          v29 = [v28 recipientIDForRecipient:v27 appID:v44];
          v30 = [v29 UUIDString];

          if (v9 && v30)
          {
            CFArrayAppendValue(v9, v30);
          }

          if (v10 && v27)
          {
            CFArrayAppendValue(v10, v27);
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v45 objects:v55 count:16];
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
      v6 = v43;
    }

    else
    {
      v32 = ms_defaultLog();
      v6 = v43;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v40 = [NSNumber numberWithUnsignedInteger:[(__CFArray *)v9 count]];
        v41 = [NSNumber numberWithUnsignedInteger:[(__CFArray *)v10 count]];
        *buf = 138412802;
        v50 = v42;
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
      v50 = self;
      v51 = 2112;
      v52 = v6;
      v53 = 2112;
      v54 = v8;
      _os_log_error_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "self %@ substituteNameInString invalid parameters string %@ appID %@", buf, 0x20u);
    }

    v38 = 0;
  }

  return v38;
}

- (void)_openURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(MSMessageExtensionBrowserViewController *)self hasEntitlement:@"com.apple.messages.private.AllowConversationIdentifierAccess"])
  {
    v8 = [(MSMessageExtensionBrowserViewController *)self sendDelegate];
    v9 = [(MSMessageExtensionBrowserViewController *)self balloonPlugin];
    v10 = [v9 identifier];
    [v8 openURL:v6 pluginID:v10 completionHandler:v7];

    v11 = ms_defaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Entitled App. Allowing opening all URLs", buf, 2u);
    }

    goto LABEL_12;
  }

  v12 = [(MSMessageExtensionBrowserViewController *)self balloonPlugin];
  v13 = [v12 isLaunchProhibited];

  v14 = ms_defaultLog();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (!v13)
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Not entitled App. Allowing opening containing app", buf, 2u);
    }

    v16 = [(MSMessageExtensionBrowserViewController *)self balloonPlugin];
    v17 = [v16 appBundle];
    v11 = [v17 bundleIdentifier];

    v18 = [(MSMessageExtensionBrowserViewController *)self sendDelegate];
    v19 = [(MSMessageExtensionBrowserViewController *)self balloonPlugin];
    v20 = [v19 identifier];
    [v18 openURL:v6 applicationIdentifier:v11 pluginID:v20 completionHandler:v7];

    goto LABEL_12;
  }

  if (v15)
  {
    *buf = 0;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Not allowing openURL for launch prohibited app", buf, 2u);
  }

  if (v7)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_8204;
    block[3] = &unk_4CFE8;
    v22 = v7;
    dispatch_async(&_dispatch_main_q, block);
    v11 = v22;
LABEL_12:
  }
}

- (void)_stageAppItem:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_82E8;
  v11[3] = &unk_4D038;
  v13 = self;
  v14 = a5;
  v12 = v8;
  v15 = a4;
  v9 = v8;
  v10 = v14;
  dispatch_async(&_dispatch_main_q, v11);
}

- (void)_sendCustomAcknowledgement:(id)a3 selectedMessage:(id)a4 completionHandler:(id)a5
{
  v5 = a5;
  v6 = [NSError errorWithDomain:MSMessagesErrorDomain code:-1 userInfo:0];
  v7 = ms_defaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_2C5E4();
  }

  v5[2](v5, v6);
}

- (void)_requestConversationAvatarsWithSize:(CGSize)a3 completionHandler:(id)a4
{
  v4 = a4;
  v5 = [NSError errorWithDomain:MSMessagesErrorDomain code:-1 userInfo:0];
  v6 = ms_defaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_2C5E4();
  }

  v4[2](v4, 0, v5);
}

- (id)_itemPayloadFromMSMessage:(id)a3
{
  v4 = a3;
  v5 = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  v6 = [v5 adamID];

  v7 = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  v8 = [v7 browserDisplayName];

  v9 = [(MSMessageExtensionBrowserViewController *)self balloonPlugin];
  v10 = [v9 canSendDataPayloads];

  v11 = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  v12 = [v11 __ck_statusJPEGImageDataForTransportWithCompressionFactor:0.2];
  v13 = [MSMessageExtensionDataSource pluginPayloadFromMessagePayload:v4 appIconData:v12 appName:v8 adamID:v6 allowDataPayloads:v10];

  v14 = [v4 session];

  v15 = [(MSMessageExtensionBrowserViewController *)self message];
  v16 = [v15 session];
  LODWORD(v12) = [v14 isEqual:v16];

  if (v12)
  {
    [v13 setUpdate:1];
    v17 = [(MSMessageExtensionBrowserViewController *)self balloonPluginDataSource];
    v18 = [v17 sessionGUID];
    [v13 setAssociatedMessageGUID:v18];
  }

  v19 = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  v20 = [v19 attributionInfo];
  [v13 setAttributionInfo:v20];

  v21 = [v13 statusText];
  v22 = [(MSMessageExtensionBrowserViewController *)self substituteNameInString:v21];
  [v13 setStatusText:v22];

  v23 = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  v24 = [v23 identifier];
  [v13 setPluginBundleID:v24];

  return v13;
}

- (void)_stageMediaItem:(id)a3 skipShelf:(BOOL)a4 forceStage:(BOOL)a5 completionHandler:(id)a6
{
  v10 = a3;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_8D84;
  v13[3] = &unk_4D060;
  v17 = a4;
  v15 = self;
  v16 = a6;
  v14 = v10;
  v18 = a5;
  v11 = v16;
  v12 = v10;
  dispatch_async(&_dispatch_main_q, v13);
}

- (void)_stageRichLink:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_9804;
  v11[3] = &unk_4D038;
  v13 = self;
  v14 = a5;
  v15 = a4;
  v12 = v8;
  v9 = v8;
  v10 = v14;
  dispatch_async(&_dispatch_main_q, v11);
}

- (void)_startDragMediaItem:(id)a3 frameInRemoteView:(CGRect)a4 fence:(id)a5 completionHandler:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_9B24;
  v15[3] = &unk_4D088;
  v15[4] = self;
  v16 = a3;
  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  v17 = a5;
  v18 = a6;
  v12 = v17;
  v13 = v18;
  v14 = v16;
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

- (void)_stickerDruidDragEndedWithPayload:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_A05C;
  v5[3] = &unk_4CF20;
  v6 = a3;
  v7 = self;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)_stickerDruidDragEndedWithPayload:(id)a3 pluginIdentifier:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A294;
  block[3] = &unk_4D0B0;
  v9 = a3;
  v10 = a4;
  v11 = self;
  v6 = v10;
  v7 = v9;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_requestPresentationStyle:(unint64_t)a3
{
  v5 = [(MSMessageExtensionBrowserViewController *)self presentationStyle];
  if (v5 != 3)
  {
LABEL_6:
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_A498;
    block[3] = &unk_4D0D8;
    v13 = v5 == 3;
    block[4] = self;
    block[5] = a3;
    dispatch_async(&_dispatch_main_q, block);
    return;
  }

  v6 = [(MSMessageExtensionBrowserViewController *)self balloonPlugin];
  v7 = [v6 identifier];
  v8 = IMBalloonExtensionIDWithSuffix();
  v9 = [v7 isEqualToString:v8];

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

- (void)_requestFullScreenModalPresentationWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

- (void)_presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 image:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([(MSMessageExtensionBrowserViewController *)self hasEntitlement:@"com.apple.messages.private.AllowAlertPresentation"])
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_AC4C;
    v17[3] = &unk_4D150;
    v18 = v12;
    v19 = v13;
    v20 = v15;
    v21 = v14;
    v22 = self;
    v23 = v16;
    dispatch_async(&_dispatch_main_q, v17);
  }
}

- (void)_presentAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 destructiveButtonTitle:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([(MSMessageExtensionBrowserViewController *)self hasEntitlement:@"com.apple.messages.private.AllowAlertPresentation"])
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_AEC0;
    v17[3] = &unk_4D178;
    v18 = v12;
    v19 = v13;
    v20 = v14;
    v23 = v16;
    v21 = v15;
    v22 = self;
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

- (void)_updateSnapshotForNextLaunch:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_B2C4;
  v4[3] = &unk_4CF20;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)_requestHostSceneIdentifierWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_B6FC;
    v6[3] = &unk_4CEA8;
    v6[4] = self;
    v7 = v4;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)_requestPresentationWithStickerType:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = ms_traceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_2C998(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  v16 = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
    [v18 _requestPresentationWithStickerType:v6 identifier:v7];
  }
}

- (void)_requestStickerExtensionMetadataDictionary:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_B960;
  v4[3] = &unk_4CEA8;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)requestStickerExtensionMetadataDictionary:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_BA8C;
  v4[3] = &unk_4CEA8;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)beginDisablingUserInteraction
{
  v2 = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
  [v2 beginDisablingUserInteraction];
}

- (void)endDisablingUserInteraction
{
  v2 = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
  [v2 endDisablingUserInteraction];
}

- (void)datasourcePayloadDidChange:(id)a3 updateFlags:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 message];
  objc_storeStrong(&self->_message, v7);
  if ((v4 & 0x13) != 0)
  {
    v8 = [(MSMessageExtensionBrowserViewController *)self currentConversationState];
    v9 = ms_traceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_2CA88(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    v17 = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
    v18 = [v7 _sanitizedCopy];
    [v17 _didReceiveMessage:v18 conversationState:v8];
  }
}

- (void)messageAddedWithDataSource:(id)a3
{
  v4 = [a3 pluginPayload];
  v5 = [MSMessageExtensionDataSource messagePayloadFromPluginPayload:v4];

  v6 = [(MSMessageExtensionBrowserViewController *)self currentConversationState];
  v7 = ms_traceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_2CB00(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  v15 = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
  [v15 _didReceiveMessage:v5 conversationState:v6];

  [(MSMessageExtensionBrowserViewController *)self _markCurrentMessageAsPlayedIfNeeded];
}

- (void)dragManager:(id)a3 didBeginDraggingItem:(id)a4
{
  v5 = a4;
  v14 = [(MSMessageExtensionBrowserViewController *)self currentDragPayload];

  v6 = v14;
  if (v14 == v5)
  {
    v7 = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
    v8 = [v7 identifier];

    v9 = [MSMessageExtensionUtilities isValidSticker:v14];
    if (!v9)
    {
      v10 = [v14 convertToStickerWithExtensionIdentifier:v8];
      if (v10)
      {
        v11 = [(MSMessageExtensionBrowserViewController *)self sendDelegate];
        v12 = objc_opt_respondsToSelector();

        if (v12)
        {
          v13 = [(MSMessageExtensionBrowserViewController *)self sendDelegate];
          [v13 didBeginDraggingSticker:v10];
        }
      }
    }

    v6 = v14;
  }
}

- (void)dragManager:(id)a3 didEndDraggingItem:(id)a4 toDragTarget:(id)a5 dropArea:(int)a6
{
  v21 = a3;
  v10 = a5;
  v11 = a4;
  v12 = [(MSMessageExtensionBrowserViewController *)self currentDragPayload];

  if (v12 == v11)
  {
    v13 = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
    v14 = [v13 identifier];

    v15 = [MSMessageExtensionUtilities isValidSticker:v12];
    v16 = [(MSMessageExtensionBrowserViewController *)self completionHandler];
    v17 = v16;
    if (v15)
    {
      (*(v16 + 16))(v16, 0, v15);
    }

    else
    {
      if (a6 == 3)
      {
        v18 = [NSError errorWithDomain:@"MSMessageExtensionBrowserViewController" code:1 userInfo:0];
        (v17)[2](v17, 1, v18);
      }

      else
      {
        v18 = [v12 convertToStickerWithExtensionIdentifier:v14];
        v19 = [(MSMessageExtensionBrowserViewController *)self sendDelegate];
        v20 = [v21 draggedSticker];
        [v19 commitSticker:v18 withDragTarget:v10 draggedSticker:v20];

        v17[2](v17, 0, 0);
      }
    }

    [(MSMessageExtensionBrowserViewController *)self setCurrentDragPayload:0];
    [(MSMessageExtensionBrowserViewController *)self setCompletionHandler:0];
  }
}

- (void)validatePayloadForSending:(id)a3 associatedText:(id)a4 completionHandler:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_C184;
  v11[3] = &unk_4D1C8;
  v12 = a3;
  v13 = self;
  v14 = a4;
  v15 = a5;
  v8 = v15;
  v9 = v14;
  v10 = v12;
  [(MSMessageExtensionBrowserViewController *)self _instantiateRemoteViewControllerIfNeededWithIntent:2 completion:v11];
}

- (void)didStartSendingPluginPayload:(id)a3
{
  v4 = a3;
  v5 = ms_defaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "didStartSendingPluginPayload %@", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_C674;
  v7[3] = &unk_4D1F0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(MSMessageExtensionBrowserViewController *)self _instantiateRemoteViewControllerIfNeededWithIntent:2 completion:v7];
}

- (void)didCancelSendingPluginPayload:(id)a3
{
  v4 = a3;
  v5 = ms_defaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "didCancelSendingPluginPayload %@", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_C8AC;
  v7[3] = &unk_4D1F0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(MSMessageExtensionBrowserViewController *)self _instantiateRemoteViewControllerIfNeededWithIntent:2 completion:v7];
}

- (void)didSelectGPAsset:(id)a3 recipeData:(id)a4 completion:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_CAC0;
  v11[3] = &unk_4D1C8;
  v12 = a3;
  v13 = self;
  v14 = a4;
  v15 = a5;
  v8 = v15;
  v9 = v14;
  v10 = v12;
  [(MSMessageExtensionBrowserViewController *)self _instantiateRemoteViewControllerIfNeeded:v11];
}

- (void)handleTextInputPayload:(id)a3 withPayloadID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v28 = v10;
  v19 = v10;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_CE68;
  v23[3] = &unk_4D1C8;
  v23[4] = self;
  v24 = v8;
  v25 = v9;
  v26 = objc_retainBlock(v27);
  v20 = v26;
  v21 = v9;
  v22 = v8;
  [(MSMessageExtensionBrowserViewController *)self _instantiateRemoteViewControllerIfNeeded:v23];
}

- (void)prepareForPresentationWithCompletionHandler:(id)a3
{
  v4 = a3;
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
  v15 = v4;
  v13 = v4;
  [(MSMessageExtensionBrowserViewController *)self _instantiateRemoteViewControllerIfNeeded:v14];
}

- (void)volumeButtonPressed:(BOOL)a3
{
  v3 = a3;
  v4 = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
  [v4 _volumeButtonPressed:v3];
}

- (void)loadProxyIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MSMessageExtensionBrowserViewController *)self remoteProxy];

  if (v5)
  {
    v4[2](v4);
  }

  else
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_D220;
    v6[3] = &unk_4D268;
    v7 = v4;
    [(MSMessageExtensionBrowserViewController *)self loadRemoteViewWithCompletion:v6];
  }
}

- (void)_setPluginIdentifierToShow:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_D2F0;
  v7[3] = &unk_4D290;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(MSMessageExtensionBrowserViewController *)v8 loadProxyIfNeededWithCompletion:v7];
}

- (void)_addStickerToStoreWithRepresentations:(id)a3 completionHandler:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_D404;
  v7[3] = &unk_4D290;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(MSMessageExtensionBrowserViewController *)v8 loadProxyIfNeededWithCompletion:v7];
}

- (void)_addStickerToStoreWithRepresentations:(id)a3 completionWithStickerIDs:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_D518;
  v7[3] = &unk_4D290;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(MSMessageExtensionBrowserViewController *)v8 loadProxyIfNeededWithCompletion:v7];
}

- (void)_addStickerToStoreWithRepresentations:(id)a3 sourceRect:(CGRect)a4 completion:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_D654;
  v12[3] = &unk_4D2B8;
  v13 = self;
  v14 = a3;
  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  v15 = a5;
  v10 = v15;
  v11 = v14;
  [(MSMessageExtensionBrowserViewController *)v13 loadProxyIfNeededWithCompletion:v12];
}

- (void)_addStickerToStoreWithRepresentations:(id)a3 sourceRect:(CGRect)a4 effect:(int64_t)a5 completion:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_D7A0;
  v14[3] = &unk_4D2E0;
  v15 = self;
  v16 = a3;
  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  v22 = a5;
  v17 = a6;
  v12 = v17;
  v13 = v16;
  [(MSMessageExtensionBrowserViewController *)v15 loadProxyIfNeededWithCompletion:v14];
}

- (void)_addStickerToStoreWithUISticker:(id)a3 sourceRect:(CGRect)a4 completion:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_D8E8;
  v12[3] = &unk_4D2B8;
  v13 = self;
  v14 = a3;
  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  v15 = a5;
  v10 = v15;
  v11 = v14;
  [(MSMessageExtensionBrowserViewController *)v13 loadProxyIfNeededWithCompletion:v12];
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

- (void)_addStickerAnimationDidFinishWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_DA88;
  v4[3] = &unk_4CEA8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(MSMessageExtensionBrowserViewController *)v5 loadProxyIfNeededWithCompletion:v4];
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

- (void)_animatedStickerCreationProgressChanged:(id)a3 progress:(double)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_DC30;
  v6[3] = &unk_4D308;
  v7 = self;
  v8 = a3;
  v9 = a4;
  v5 = v8;
  [(MSMessageExtensionBrowserViewController *)v7 loadProxyIfNeededWithCompletion:v6];
}

- (void)_canShowBrowserForPluginIdentifier:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(MSMessageExtensionBrowserViewController *)self _canCurrentPluginShowInBrowserPluginIdentifier:v8])
  {
    v7 = [(MSMessageExtensionBrowserViewController *)self sendDelegate];
    [v7 canShowBrowserForPluginIdentifier:v8 completion:v6];
  }

  else
  {
    v6[2](v6, 0);
  }
}

- (void)_showBrowserForPluginIdentifier:(id)a3 style:(unint64_t)a4 completion:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_DDEC;
  v9[3] = &unk_4D330;
  v9[4] = self;
  v10 = a3;
  v11 = a5;
  v12 = a4;
  v7 = v11;
  v8 = v10;
  dispatch_async(&_dispatch_main_q, v9);
}

- (BOOL)_canCurrentPluginShowInBrowserPluginIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MSMessageExtensionBrowserViewController *)self balloonPlugin];
  v6 = [v5 identifier];

  v7 = IMStickersExtensionIdentifier();
  v8 = IMBalloonExtensionIDWithSuffix();

  if ([v6 isEqualToString:v8] && (objc_msgSend(v4, "isEqualToString:", IMBalloonPluginIdentifierAppStore) & 1) != 0)
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

- (void)checkForTouchInRemoteProcessIfNecessaryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MSMessageExtensionBrowserViewController *)self touchTracker];
  [v5 checkForTouchWithCompletion:v4];
}

- (void)touchUpOccuredForIdentifier:(unsigned int)a3 detached:(BOOL)a4 context:(unsigned int)a5 pid:(int)a6
{
  v8 = [(MSMessageExtensionBrowserViewController *)self balloonPlugin:*&a3];
  v10 = [v8 extension];

  if ([v10 pidForRequestIdentifier:self->_sessionUUID] == a6)
  {
    v9 = [(MSMessageExtensionBrowserViewController *)self touchTracker];
    [v9 touchReceived];
  }
}

- (BOOL)isPhotosExtensionBrowser
{
  v2 = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  v3 = [v2 identifier];
  v4 = IMBalloonExtensionIDWithSuffix();
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (BOOL)isGenerativePlaygroundExtension
{
  v2 = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  v3 = [v2 identifier];
  v4 = IMBalloonExtensionIDWithSuffix();
  v5 = [v3 isEqualToString:v4];

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
  v3 = [(MSMessageExtensionBrowserViewController *)self balloonExtensionPlugin];
  v4 = [v3 identifier];

  v5 = IMBalloonExtensionIDWithSuffix();
  LOBYTE(v3) = [v4 isEqualToString:v5];

  v6 = IMBalloonExtensionIDWithSuffix();
  LOBYTE(v5) = [v4 isEqualToString:v6];

  v7 = IMBalloonExtensionIDWithSuffix();
  LOBYTE(v6) = [v4 isEqualToString:v7];

  v8 = IMBalloonExtensionIDWithSuffix();
  v9 = [v4 isEqualToString:v8];

  v10 = IMBalloonExtensionIDWithSuffix();
  v11 = [v4 isEqualToString:v10];

  v12 = IMBalloonExtensionIDWithSuffix();
  v13 = [v4 isEqualToString:v12];

  v14 = v3 | v5 | v6 | v9 | v11 | v13 | [(MSMessageExtensionBrowserViewController *)self isGenerativePlaygroundExtension];
  v15 = ms_defaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = @"NO";
    if (v14)
    {
      v16 = @"YES";
    }

    v18 = 138412546;
    v19 = v4;
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

- (void)appendDraftAssetArchivesIfNeeded:(id)a3
{
  v4 = a3;
  if ([(MSMessageExtensionBrowserViewController *)self extensionWantsDraftAssetArchives])
  {
    if ([(MSMessageExtensionBrowserViewController *)self isPhotosExtensionBrowser])
    {
      v5 = [v4 conversationID];
      v6 = [(MSMessageExtensionBrowserViewController *)self _configurePhotosDraftAssetArchivesWithConversationID:v5];
    }

    else
    {
      v5 = [(MSMessageExtensionBrowserViewController *)self sendDelegate];
      v7 = [v4 conversationID];
      v6 = [v5 configurePhotosDraftAssetArchivesWithConversationID:v7];
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

      [v4 setDraftAssetArchives:v6];
    }

    v9 = [v4 conversationID];
    [(MSMessageExtensionBrowserViewController *)self setLastDraftConversationID:v9];
  }
}

- (id)_configurePhotosDraftAssetArchivesWithConversationID:(id)a3
{
  v21 = a3;
  if ([(MSMessageExtensionBrowserViewController *)self isPhotosExtensionBrowser])
  {
    v4 = [(MSMessageExtensionBrowserViewController *)self assetExplorerTransport];
    v19 = [v4 orderedStagedIdentifiers];
    v5 = objc_alloc_init(NSMutableArray);
    if ([v19 count])
    {
      v6 = [(MSMessageExtensionBrowserViewController *)self lastDraftConversationID];
      if ([v6 length])
      {
        v7 = [(MSMessageExtensionBrowserViewController *)self lastDraftConversationID];
        v8 = [v21 isEqualToString:v7];

        if ((v8 & 1) == 0)
        {
          [v4 unstagePackagesWithIdentifiers:v19 evictFiles:0];
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
    v10 = v19;
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

          v14 = [v4 stagedPackageForIdentifier:*(*(&v23 + 1) + 8 * i), v19];
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

  v4 = ms_defaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_2D8A0(v4);
  }

  v9 = &__NSArray0__struct;
LABEL_26:

  return v9;
}

- (id)fetchPluginPayloadsAndClear:(BOOL)a3
{
  v3 = a3;
  v4 = [(MSMessageExtensionBrowserViewController *)self assetExplorerTransport];
  v5 = [v4 orderedStagedIdentifiers];
  v6 = [v4 orderedStagedPayloads];
  if (v3)
  {
    [v4 unstagePackagesWithIdentifiers:v5 evictFiles:0];
  }

  return v6;
}

- (void)restoreDraftStateFromPayload:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v4 attachments];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v7);
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
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
    v15 = [(MSMessageExtensionBrowserViewController *)self assetExplorerTransport];
    v16 = [v5 copy];
    [v15 stagePersistedPayloads:v16];
  }
}

- (id)fetchPluginStagedIdentifiers
{
  v2 = [(MSMessageExtensionBrowserViewController *)self assetExplorerTransport];
  v3 = [v2 orderedStagedIdentifiers];

  return v3;
}

- (void)clearPluginPackagesWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(MSMessageExtensionBrowserViewController *)self assetExplorerTransport];
  [v5 unstagePackagesWithIdentifiers:v4 evictFiles:1];
}

- (void)clearAllStagedPluginPackages
{
  v3 = [(MSMessageExtensionBrowserViewController *)self assetExplorerTransport];
  v2 = [v3 orderedStagedIdentifiers];
  [v3 unstagePackagesWithIdentifiers:v2 evictFiles:1];
}

- (void)_stageAssetArchive:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1FB3C;
  v9[3] = &unk_4D828;
  v9[4] = self;
  v10 = a3;
  v12 = a4;
  v11 = a5;
  v7 = v11;
  v8 = v10;
  dispatch_async(&_dispatch_main_q, v9);
}

- (void)stageAssetToTransportAndNotifySendDelegate:(id)a3
{
  v8 = a3;
  v4 = [(MSMessageExtensionBrowserViewController *)self assetExplorerTransport];
  [v4 stagePackage:v8];

  v5 = [(MSMessageExtensionBrowserViewController *)self sendDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v8 browserItemPayload];
    if (v6)
    {
      v7 = [v8 identifier];
      [v5 didStageAssetArchive:v6 identifier:v7];
    }
  }
}

- (void)_removeAssetArchiveWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = ms_defaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Call to _removeAssetArchiveWithIdentifier: %@", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_20118;
  block[3] = &unk_4D290;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_assetArchiveRemoved:(id)a3
{
  v4 = a3;
  v5 = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
  [v5 _didRemoveAssetArchiveWithIdentifier:v4];
}

- (void)packageTransport:(id)a3 didUnstagePackageWithIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(MSMessageExtensionBrowserViewController *)self sendDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 eagerUploadCancelIdentifier:v5];
  }

  v7 = [(MSMessageExtensionBrowserViewController *)self remoteProxy];
  v8 = ms_defaultLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v11 = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "packageTransport:didUnstagePackageWithIdentifier: Signal %@ asset archive was removed with identifier: %@", &v11, 0x16u);
    }

    [v7 _didRemoveAssetArchiveWithIdentifier:v5];
  }

  else
  {
    if (v9)
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "packageTransport:didUnstagePackageWithIdentifier: Current browser is not this extension, asking send delegate to notify active browser of : %@", &v11, 0xCu);
    }

    v10 = [(MSMessageExtensionBrowserViewController *)self sendDelegate];
    [v10 notifyActiveBrowserAssetArchiveWasRemoved:v5];
  }
}

- (void)chatKitTransport:(id)a3 commitPayload:(id)a4
{
  v5 = a4;
  v6 = [(MSMessageExtensionBrowserViewController *)self sendDelegate];
  [v6 commitPayload:v5];
}

- (id)workingDirForDraft
{
  v3 = [(MSMessageExtensionBrowserViewController *)self sendDelegate];
  v4 = [(MSMessageExtensionBrowserViewController *)self balloonPlugin];
  v5 = [v4 identifier];
  v6 = [v3 workingDraftDirForPluginIdentifier:v5];

  return v6;
}

- (void)chatKitTransport:(id)a3 didUpdatePersistedURLsForPackageIdentifier:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v9 payloadForIdentifier:v6];
    if (v7)
    {
      v8 = [(MSMessageExtensionBrowserViewController *)self sendDelegate];
      if (objc_opt_respondsToSelector())
      {
        [v8 generatePreviewAndStoreInCacheForSendingPhotoFromPayload:v7];
      }
    }
  }
}

- (void)_transportStagingStateDidChange
{
  v3 = [(MSMessageExtensionBrowserViewController *)self sendDelegate];
  v4 = [(MSMessageExtensionBrowserViewController *)self assetExplorerTransport];
  v5 = [v4 orderedStagedIdentifiers];

  v6 = [v5 count];
  if (v6 < 1)
  {
    if (!v6 && [(MSMessageExtensionBrowserViewController *)self isShowingAssetExplorerShelf])
    {
      [v3 dismissEntryViewShelf];
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
    v9 = [(MSMessageExtensionBrowserViewController *)self assetExplorerTransport];
    v10 = [v8 initWithPackageTransport:v9];

    if (objc_opt_respondsToSelector())
    {
      [v10 setEntryViewDelegate:self];
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_207A8;
    v11[3] = &unk_4D850;
    v11[4] = self;
    [v3 showEntryViewPhotosShelf:v10 completion:v11];
    [(MSMessageExtensionBrowserViewController *)self setAssetExplorerShelfViewController:v10];
    [(MSMessageExtensionBrowserViewController *)self setIsShowingAssetExplorerShelf:1];
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if ((a4 & 1) != 0 && MSAssetExplorerTransportContext == a5)
  {
    [(MSMessageExtensionBrowserViewController *)self _transportStagingStateDidChange];
  }
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(MSMessageExtensionBrowserViewController *)self sendDelegate];
  [v10 showModalViewController:v9 animated:v5 completion:v8];
}

@end