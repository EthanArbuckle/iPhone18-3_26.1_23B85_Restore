@interface MailAppController
+ (id)log;
- (BOOL)_allMessageViewControllersDidDisplayContent:(id)a3;
- (BOOL)_shouldShowAlertForUndoManager:(id)a3;
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (BOOL)canPerformNetworkOperationOnAccount:(id)a3;
- (BOOL)isComposeWindowActive;
- (BOOL)isForeground;
- (BOOL)isFrontmost;
- (BOOL)runTest:(id)a3 options:(id)a4;
- (EFFuture)didFinishDelayedStartupTasks;
- (EMBlockedSenderManager)blockedSenderManager;
- (EMCachingContactStore)contactStore;
- (MFDiskFreeSpaceMonitor)freeSpaceMonitor;
- (MailAppController)init;
- (MailMainScene)mostRecentMainScene;
- (NSArray)activeScenes;
- (NSSet)selectedAccounts;
- (id)_createContactStore;
- (id)_dumpBucketBarConfigurationAtURL:(id)a3;
- (id)_dumpCurrentFocusAtURL:(id)a3;
- (id)_dumpDictionary:(id)a3 atURL:(id)a4;
- (id)_dumpEMUserDefaultsAtURL:(id)a3;
- (id)_dumpNotificationSettingsAtURL:(id)a3;
- (id)_dumpStandardUserDefaultsAtURL:(id)a3;
- (id)_dumpUIStateAtURL:(id)a3;
- (id)_dumpUserDefaults:(id)a3 atURL:(id)a4;
- (id)_mailboxStringFromMailbox:(id)a3;
- (id)_preallocateWebViewsAndReturnFuture;
- (id)_prepareForComposeView:(id)a3;
- (id)_prepareForScrollMailboxesTest:(id)a3;
- (id)_prepareForScrollMessagesTest:(id)a3 inEditMode:(BOOL)a4 currentDelay:(double *)a5;
- (id)accountCanPerformNetworkOperations:(id)a3;
- (id)activeViewController;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
- (id)copyDiagnosticInformation;
- (id)dockContainer;
- (id)getAccount;
- (id)getControllerOfType:(Class)a3;
- (id)getControllerOfType:(Class)a3 fromNavigationController:(id)a4;
- (id)getConversationViewController;
- (id)getMailboxListViewControllerMail;
- (id)getMailboxPickerController;
- (id)getMailboxWithName:(id)a3;
- (id)getMessageListViewController;
- (id)getiCloudMailCleanupService;
- (id)identifiersToExcludeFromDockedItemRecovery;
- (id)masterNavigationController;
- (id)presentingViewControllerForTriageInteraction:(id)a3;
- (id)rootViewController;
- (void)_accountsChanged:(id)a3;
- (void)_beginAutoFetchIfViable;
- (void)_configureUserDefaultsKVOAdd:(BOOL)a3;
- (void)_createAppStoreReviewManager;
- (void)_deliveryQueueProcessingFinished:(id)a3;
- (void)_didFinishExitEditModeTest:(id)a3;
- (void)_dismissComposeViewController:(id)a3 animated:(BOOL)a4;
- (void)_dismissPhotoPickerWithCompletion:(id)a3;
- (void)_ensureBlockedSenderManagerIsCreated;
- (void)_finishTestDismissingReply:(id)a3;
- (void)_finishTestIfComposeAndKeyboardDidShow:(id)a3;
- (void)_handleDeliveryFailure:(id)a3;
- (void)_mailWasSent:(id)a3;
- (void)_messageContentLayerFinished;
- (void)_messageLibraryDidBecomeAvailable:(id)a3;
- (void)_messageLibraryWillBecomeUnavailable:(id)a3;
- (void)_performBackEndOneShotInitialization;
- (void)_performNextShowDismissComposeTransitionForTest:(id)a3;
- (void)_performScrollTestOnMessageListOnCollectionView:(id)a3 withOptions:(id)a4 isNatural:(BOOL)a5;
- (void)_performUIRelatedLaunchTasksIfNeeded;
- (void)_prepareForComposePseudoContactTest:(id)a3 withOptions:(id)a4;
- (void)_prepareForDismissComposeTest:(id)a3;
- (void)_prepareForScrollPseudoContactTest:(id)a3 withOptions:(id)a4;
- (void)_prepareForShowComposeTest:(id)a3;
- (void)_reallyStartComposeToPseudoContactTest:(id)a3 withOptions:(id)a4;
- (void)_reallyStartDismissComposeTest:(id)a3;
- (void)_reallyStartExitEditModeTest:(id)a3;
- (void)_reallyStartMessageTransferTest:(id)a3 mailboxController:(id)a4;
- (void)_reallyStartRotationTest:(id)a3;
- (void)_reallyStartScrollPseudoContactTest:(id)a3 withOptions:(id)a4;
- (void)_reallyStartShowComposeTest:(id)a3;
- (void)_reallyStartShowEmptyComposeAnimationTest:(id)a3 composeButtonItem:(id)a4;
- (void)_reallyStartShowEmptyComposeTest:(id)a3;
- (void)_reallyStartShowReplyTest:(id)a3;
- (void)_reallyUpdateDefaultImage;
- (void)_registerApplicationLifecycleObservers;
- (void)_registerBucketBarStateCapture;
- (void)_setProtectedDataAvailabilityWithNotification:(id)a3;
- (void)_setupDiagnosticProviderIfNeeded;
- (void)_showEditAlertViewWithUndoManager:(id)a3 window:(id)a4;
- (void)_showMessageListView:(BOOL)a3;
- (void)_showPhotoPickerWithCompletion:(id)a3;
- (void)_startPhotoPickerTest:(id)a3;
- (void)_testFailedDueToNilReferenceMessage:(id)a3 messageCount:(unint64_t)a4;
- (void)_updateAccountsIfNecessaryFromCollection:(id)a3;
- (void)_userDefaultDidChange:(id)a3;
- (void)_userDidTakeScreenshot:(id)a3;
- (void)_waitForTimeInterval:(double)a3;
- (void)buildMenuWithBuilder:(id)a3;
- (void)cancelPreviousPerformRequestsWhenProtectedDataIsAvailable;
- (void)cleanUpAfterSuspend;
- (void)dealloc;
- (void)delayedStartupTasks;
- (void)didFailToContinueUserActivityWithType:(id)a3 error:(id)a4;
- (void)didFinishLoadAllScenes:(id)a3;
- (void)didReceiveMemoryWarning;
- (void)dismissAnyModalViewControllerOrPopoverAnimated:(BOOL)a3;
- (void)dismissComposeViewController:(id)a3 animated:(BOOL)a4 afterSending:(BOOL)a5;
- (void)dismissReply;
- (void)displayError:(id)a3 forAccount:(id)a4 mode:(int64_t)a5;
- (void)failedTest:(id)a3 withFailure:(id)a4;
- (void)finishedTest:(id)a3 extraResults:(id)a4;
- (void)installNotificationObserverForNotificationName:(id)a3 object:(id)a4 forOneNotification:(BOOL)a5 usingBlock:(id)a6;
- (void)mailComposeDeliveryController:(id)a3 didMoveCancelledMessageToDrafts:(id)a4 draftMailboxObjectID:(id)a5;
- (void)mailComposeDeliveryControllerDidAttemptToSaveDraft:(id)a3 account:(id)a4 result:(unint64_t)a5;
- (void)mailComposeDeliveryControllerDidAttemptToSend:(id)a3 outgoingMessageDelivery:(id)a4 result:(id)a5;
- (void)mailComposeDeliveryControllerWillAttemptToSend:(id)a3;
- (void)mf_updateCurrentContexts;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)performWhenProtectedDataIsAvailable:(id)a3;
- (void)provideDiagnosticsAt:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)reallyStartScrollMessageViewListTest:(id)a3;
- (void)registerAppIntentsDependencies;
- (void)reportPPTTimings:(id)a3;
- (void)runAllTests;
- (void)scrollPseudoContactList:(id)a3;
- (void)searchPseudoContact:(id)a3;
- (void)showComposeWithContext:(id)a3 animated:(BOOL)a4 initialTitle:(id)a5 completionBlock:(id)a6;
- (void)significantTimeChange;
- (void)startComposeToPseudoContactTest:(id)a3;
- (void)startConversationLoadAllMessagesTestWithOptions:(id)a3;
- (void)startConversationScrollTestWithOptions:(id)a3;
- (void)startConversationSelectionTestWithOptions:(id)a3;
- (void)startConversationViewRotationTestWithOptions:(id)a3;
- (void)startDismissComposeTest:(id)a3;
- (void)startExitEditModeTest:(id)a3;
- (void)startListeningForNotifications;
- (void)startMailCategorizationTest:(id)a3;
- (void)startMailboxFilterDisableTestWithOptions:(id)a3;
- (void)startMailboxFilterEnableTestWithOptions:(id)a3;
- (void)startMailboxFilterPickerDisableTestWithOptions:(id)a3;
- (void)startMailboxFilterPickerEnableTestWithOptions:(id)a3;
- (void)startMailboxPredictionTestWithOptions:(id)a3;
- (void)startMessageDeleteTest:(id)a3;
- (void)startMessageIterationTest:(id)a3;
- (void)startMessageListSwipeActionTestWithOptions:(id)a3;
- (void)startMessageTransferTest:(id)a3 multiSelect:(BOOL)a4;
- (void)startPhotoPickerTest:(id)a3;
- (void)startRotationTest:(id)a3;
- (void)startScrollMailboxListTestWithOptions:(id)a3;
- (void)startScrollMessageListSearchTestWithOptions:(id)a3;
- (void)startScrollMessageListTest:(id)a3 withOptions:(id)a4;
- (void)startScrollMessagesInEditModeTest:(id)a3;
- (void)startScrollMessagesInEditModeWithSelectionTest:(id)a3;
- (void)startScrollPseudoContactTest:(id)a3;
- (void)startSearchWhileTypingTestWithOptions:(id)a3;
- (void)startSenderListSelectionTestWithOptions:(id)a3;
- (void)startShowComposeTest:(id)a3;
- (void)startShowDismissComposeTest:(id)a3;
- (void)startShowDismissReplyTest:(id)a3;
- (void)startShowEmptyComposeTest:(id)a3;
- (void)switchToDesiredMailbox;
- (void)switchToInbox;
- (void)systemDidWake;
- (void)systemWillSleep;
- (void)tearDownPhotoPickerTest;
- (void)updateDefaultImageWithReason:(id)a3;
- (void)waitForUIToSettleDown;
@end

@implementation MailAppController

- (MailAppController)init
{
  v64.receiver = self;
  v64.super_class = MailAppController;
  v2 = [(MailAppController *)&v64 init];
  if (v2)
  {
    v3 = [[MailExtendedLaunchTracker alloc] initWithDelegate:v2];
    extendedLaunchTracker = v2->_extendedLaunchTracker;
    v2->_extendedLaunchTracker = v3;

    v5 = +[EFScheduler mainThreadScheduler];
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_1000CD82C;
    v62[3] = &unk_10064C7E8;
    v6 = v2;
    v63 = v6;
    v7 = [v5 afterDelay:v62 performBlock:60.0];

    v8 = [[EMDaemonInterface alloc] initAndConfigureBlockedSenderManager:1];
    [(MailAppController *)v6 setDaemonInterface:v8];

    v9 = [(MailAppController *)v6 daemonInterface];
    [v9 launchDaemon];

    v54 = +[NSTimeZone defaultTimeZone];
    [v54 secondsFromGMT];
    v10 = [(MailAppController *)v6 daemonInterface];
    [MFWKWebViewFactory setDaemonInterface:v10 URLCacheWithMemoryCapacity:0x400000];

    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_1000CD8C4;
    v60[3] = &unk_10064F5F8;
    v11 = v6;
    v61 = v11;
    [MFComposeWebView setURLCacheBlock:v60];
    [MFAccount setShouldHealAccounts:1];
    v12 = [(MailAppController *)v11 daemonInterface];
    v13 = [v12 accountRepository];
    [v13 requestAccounts];

    v14 = objc_alloc_init(MUICachingSVGConverter);
    v15 = [MUIBrandIndicatorProvider alloc];
    v16 = [(MailAppController *)v11 daemonInterface];
    v17 = [v16 messageRepository];
    v18 = [v15 initWithMessageRepository:v17 svgConverter:v14];
    brandIndicatorProvider = v11->_brandIndicatorProvider;
    v11->_brandIndicatorProvider = v18;

    MFSetUserAgent();
    v11->_contactStoreLock._os_unfair_lock_opaque = 0;
    v20 = +[UNUserNotificationCenter currentNotificationCenter];
    userNotificationCenter = v11->_userNotificationCenter;
    v11->_userNotificationCenter = v20;

    v22 = [[MailUserNotificationCenterDelegate alloc] initWithAlertSuppressionContextProvider:v11];
    userNotificationCenterHelper = v11->_userNotificationCenterHelper;
    v11->_userNotificationCenterHelper = v22;

    [(UNUserNotificationCenter *)v11->_userNotificationCenter setDelegate:v11->_userNotificationCenterHelper];
    if (EMBlackPearlIsFeatureEnabled())
    {
      v24 = objc_alloc_init(EMMailboxCategoryCloudStorage);
      mailboxCategoryCloudStorage = v11->_mailboxCategoryCloudStorage;
      v11->_mailboxCategoryCloudStorage = v24;

      v26 = objc_alloc_init(MSUserDefaultsBucketBarConfigurationProvider);
      v27 = [[MSBucketBarConfigurationController alloc] initWithProvider:v26];
      bucketBarConfigurationController = v11->_bucketBarConfigurationController;
      v11->_bucketBarConfigurationController = v27;

      [(MailAppController *)v11 _registerBucketBarStateCapture];
    }

    objc_initWeak(&location, v11);
    v29 = [MUIAvatarImageGenerator alloc];
    v30 = v11->_brandIndicatorProvider;
    v31 = [(MailAppController *)v11 daemonInterface];
    v32 = [v31 messageRepository];
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_100022890;
    v57[3] = &unk_10064F620;
    objc_copyWeak(&v58, &location);
    v33 = [v29 initWithBimiProvider:v30 messageRepository:v32 contactsProviderHandler:v57];
    avatarGenerator = v11->_avatarGenerator;
    v11->_avatarGenerator = v33;

    if (_os_feature_enabled_impl())
    {
      v35 = [MEContentRuleListManager alloc];
      v36 = +[MEAppExtensionsController sharedInstance];
      v37 = [v35 initWithExtensionsController:v36];

      objc_storeStrong(&v11->_contentRuleListManager, v37);
      v38 = +[MFWKWebViewFactory sharedWebViewFactoryFuture];
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_1000CD968;
      v55[3] = &unk_10064F648;
      v39 = v37;
      v56 = v39;
      [v38 addSuccessBlock:v55];
    }

    +[EMServerConfiguration refreshAsync];
    [(MailAppController *)v11 _configureUserDefaultsKVOAdd:1];
    v40 = +[EFDevice currentDevice];
    v41 = [v40 isInternal];

    if (v41)
    {
      v42 = +[NSNotificationCenter defaultCenter];
      [v42 addObserver:v11 selector:"_userDidTakeScreenshot:" name:UIApplicationUserDidTakeScreenshotNotification object:0];
    }

    v43 = +[EFPromise promise];
    didFinishDelayedStartupTasksPromise = v11->_didFinishDelayedStartupTasksPromise;
    v11->_didFinishDelayedStartupTasksPromise = v43;

    signal(30, 1);
    v45 = dispatch_source_create(&_dispatch_source_type_signal, 0x1EuLL, 0, &_dispatch_main_q);
    diagnostic_signal_source = v11->diagnostic_signal_source;
    v11->diagnostic_signal_source = v45;

    dispatch_source_set_event_handler(v11->diagnostic_signal_source, &stru_10064F668);
    dispatch_resume(v11->diagnostic_signal_source);
    signal(31, 1);
    v47 = dispatch_source_create(&_dispatch_source_type_signal, 0x1FuLL, 0, &_dispatch_main_q);
    multipurpose_signal_source = v11->multipurpose_signal_source;
    v11->multipurpose_signal_source = v47;

    dispatch_source_set_event_handler(v11->multipurpose_signal_source, &stru_10064F688);
    dispatch_resume(v11->multipurpose_signal_source);
    [NSURLProtocol registerClass:objc_opt_class()];
    MFRegisterPowerObserver();
    [MFMessageStore setDefaultMessageHeadersClass:objc_opt_class()];
    [(MailAppController *)v11 _setUserDefaultsSyncEnabled:0];
    v49 = +[MFDiagnostics sharedController];
    [v49 addDiagnosticsGenerator:v11];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobilemail.launch", 0, 0, 1u);
    v51 = +[UIDevice currentDevice];
    [v51 setBatteryMonitoringEnabled:1];

    v52 = v11;
    objc_destroyWeak(&v58);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)_registerBucketBarStateCapture
{
  objc_initWeak(&location, self);
  v3 = &_dispatch_main_q;
  objc_copyWeak(&v6, &location);
  v4 = EFLogRegisterStateCaptureBlock();
  bucketBarStateCancelable = self->_bucketBarStateCancelable;
  self->_bucketBarStateCancelable = v4;

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000058BC;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DCFB0 != -1)
  {
    dispatch_once(&qword_1006DCFB0, block);
  }

  v2 = qword_1006DCFA8;

  return v2;
}

- (void)_performBackEndOneShotInitialization
{
  if ((byte_1006DCF80 & 1) == 0)
  {
    byte_1006DCF80 = 1;
    +[_TtC10MobileMail25MailAppIntentConfigurator configureAppManager];
    v3 = objc_alloc_init(EMFocusController);
    focusController = self->_focusController;
    self->_focusController = v3;

    v5 = [[MFAccountsController alloc] initWithFocusController:self->_focusController];
    accountsController = self->_accountsController;
    self->_accountsController = v5;

    v7 = [(MFAccountsController *)self->_accountsController accountsProvider];
    accountsProvider = self->_accountsProvider;
    self->_accountsProvider = v7;

    v9 = [(MFAccountsController *)self->_accountsController mailboxProvider];
    mailboxProvider = self->_mailboxProvider;
    self->_mailboxProvider = v9;

    v11 = [(MailAppController *)self daemonInterface];
    [v11 setAllowsBackgroundResume:1];

    v12 = [(MailAppController *)self daemonInterface];
    v13 = [v12 vipManager];
    [VIPManager setBackingManager:v13];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:self selector:"_mailWasSent:" name:@"MailComposeControllerDidSendMail" object:0];
    [v14 addObserver:self selector:"_accountsChanged:" name:EMAccountsChangedNotification object:0];
    v15 = +[UIApplication sharedApplication];
    v16 = [v15 daemonInterface];
    v17 = [v16 mailboxRepository];

    v18 = [EMQuery alloc];
    v19 = objc_opt_class();
    v20 = +[NSPredicate ef_matchEverythingPredicate];
    v21 = [v18 initWithTargetClass:v19 predicate:v20 sortDescriptors:&__NSArray0__struct];

    v22 = [[EMQueryingCollection alloc] initWithQuery:v21 repository:v17];
    [v22 beginObserving:self];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_1000D0A6C, @"com.apple.mail.MailAccountSignaturesChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, self, sub_1000D0A78, kCFLocaleCurrentLocaleDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v25 = [(MailAppController *)self accountsController];
    [v25 resetAccountsSynchronouslyOnMainThread];

    [(MailAppController *)self setMailboxCollection:v22];
    v26 = +[MFMailMessageLibrary defaultInstance];
    v27 = [v26 persistence];
    v28 = [v27 conversationPersistence];

    v29 = [FavoritesPersistence alloc];
    v30 = self->_accountsProvider;
    v31 = [(MailAppController *)self daemonInterface];
    v32 = [(FavoritesPersistence *)v29 initWithConversationSubscriptionProvider:v28 accountsProvider:v30 mailboxPersistence:0 daemonInterface:v31 analyticsCollector:0];
    favoritesPersistence = self->_favoritesPersistence;
    self->_favoritesPersistence = v32;

    [(MailAppController *)self registerAppIntentsDependencies];
    [(MailAppController *)self performSelector:"delayedStartupTasks" withObject:0 afterDelay:4.0];
    v34 = +[MFUserProfileProvider_iOS defaultProvider];
    [v34 allEmailAddresses];

    v35 = [[DockContainerPersistence alloc] initWithRecoveryDelegate:self];
    dockPersistence = self->_dockPersistence;
    self->_dockPersistence = v35;

    objc_initWeak(&location, self);
    v37 = [(MailAppController *)self daemonInterface];
    v38 = [v37 clientState];
    v39 = [v38 foregroundObservable];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1000198BC;
    v41[3] = &unk_10064F768;
    objc_copyWeak(&v42, &location);
    v40 = [v39 subscribeWithResultBlock:v41];

    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
  }
}

- (EMCachingContactStore)contactStore
{
  os_unfair_lock_lock(&self->_contactStoreLock);
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    v4 = +[EFPromise promise];
    contactStoreCachingPromise = self->_contactStoreCachingPromise;
    self->_contactStoreCachingPromise = v4;

    v6 = [(MailAppController *)self _createContactStore];
    v7 = self->_contactStore;
    self->_contactStore = v6;

    contactStore = self->_contactStore;
  }

  v8 = contactStore;
  os_unfair_lock_unlock(&self->_contactStoreLock);

  return v8;
}

- (id)_createContactStore
{
  v3 = [EMCachingContactStore alloc];
  v4 = [(MailAppController *)self contactStoreCachingPromise];
  v5 = [v4 future];
  v6 = [v3 initWithOptions:3 cacheFuture:v5];

  return v6;
}

- (void)registerAppIntentsDependencies
{
  swift_getObjectType();
  _objc_retain(self);
  sub_10000CEFC();
  _objc_release(self);
}

- (void)mf_updateCurrentContexts
{
  v21 = objc_alloc_init(NSMutableSet);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = [(MailAppController *)self activeScenes];
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = *v24;
    do
    {
      v6 = 0;
      do
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v23 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [v7 suppressionMailboxes];
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_10001FCB4;
          v22[3] = &unk_10064F740;
          v22[4] = self;
          v9 = [v8 ef_compactMap:v22];

          if ([v9 count])
          {
            [v21 unionSet:v9];
          }
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v4);
  }

  [(MailAppController *)self setCurrentAlertSuppressionContexts:v21];
  v10 = [(MailAppController *)self daemonInterface];
  v11 = [v10 fetchController];
  [v11 setSuppressedContexts:v21];

  v12 = objc_opt_new();
  v13 = [(MailAppController *)self mostRecentMainScene];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(MailAppController *)self mostRecentMainScene];
    v16 = [v15 visibleMailboxes];
    v17 = [v16 allObjects];

    v12 = v17;
  }

  v18 = +[UIApplication sharedApplication];
  v19 = [v18 daemonInterface];
  v20 = [v19 clientState];
  [v20 setCurrentlyVisibleMailboxes:v12];
}

- (NSArray)activeScenes
{
  v2 = [(MailAppController *)self connectedScenes];
  v3 = [v2 allObjects];
  v4 = [v3 ef_compactMap:&stru_10064F870];

  return v4;
}

- (MailMainScene)mostRecentMainScene
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(MailAppController *)self openSessions];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v9 != v4)
      {
        objc_enumerationMutation(v2);
      }

      v6 = [*(*(&v8 + 1) + 8 * v5) scene];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v3 == ++v5)
      {
        v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v6 = 0;
  }

  return v6;
}

- (void)_beginAutoFetchIfViable
{
  v3 = [(MailAppController *)self freeSpaceMonitor];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001A468;
  v4[3] = &unk_10064F6F8;
  v4[4] = self;
  [v3 getFreeSpaceStatusWithCompletionHandler:v4];
}

- (MFDiskFreeSpaceMonitor)freeSpaceMonitor
{
  if (qword_1006DCF68 != -1)
  {
    sub_1004881B8();
  }

  v3 = qword_1006DCF60;

  return v3;
}

- (id)copyDiagnosticInformation
{
  v2 = objc_alloc_init(NSMutableString);
  v3 = +[MFWebAttachmentSource allSources];
  if ([v3 count])
  {
    [v2 appendFormat:@"==== Attachment Stores ====\n%@\n", v3];
  }

  [v2 appendString:@"\n==== Accounts ====\n"];
  v21 = 0;
  v16 = [MailAccount mailAccountsWithError:&v21];
  v4 = v21;
  v5 = v4;
  if (v4)
  {
    [v2 appendFormat:@"  last error: %@\n", v4, v16];
  }

  v6 = +[MailAccount lastMailAccountsReloadDate];
  if (v6)
  {
    v7 = [NSDateFormatter ef_formatDate:v6 shortStyle:0];
    [v2 appendFormat:@"  last reload: %@\n", v7];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v16;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v9)
  {
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [*(*(&v17 + 1) + 8 * v11) copyDiagnosticInformation];
        v13 = v12;
        if (v12)
        {
          [v2 appendFormat:@"\n%@\n", v12];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v9);
  }

  v14 = EFContentProtectionDumpDiagnosticState();
  [v2 appendString:v14];

  return v2;
}

- (BOOL)isFrontmost
{
  if ([UIApp isSuspended])
  {
    return 0;
  }

  else
  {
    return [UIApp isSuspendedEventsOnly] ^ 1;
  }
}

- (void)startListeningForNotifications
{
  +[MailAccount mailAccounts];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v2 = v8 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v7 + 1) + 8 * i);
        if ([v6 canFetch])
        {
          [v6 startListeningForNotifications];
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

- (id)getiCloudMailCleanupService
{
  icloudMailCleanupService = self->_icloudMailCleanupService;
  if (!icloudMailCleanupService)
  {
    v4 = objc_opt_new();
    v5 = self->_icloudMailCleanupService;
    self->_icloudMailCleanupService = v4;

    icloudMailCleanupService = self->_icloudMailCleanupService;
  }

  return icloudMailCleanupService;
}

- (void)delayedStartupTasks
{
  if (([(MailAppController *)self launchedToTest]& 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = EFIsRunningUnitTests();
  }

  v4 = [(MailAppController *)self daemonInterface];
  v5 = [v4 clientState];
  [v5 setIsRunningTests:v3];

  if ([(MailAppController *)self isForeground])
  {
    [(MailAppController *)self _beginAutoFetchIfViable];
  }

  v6 = +[MFPowerController sharedInstance];
  [v6 startListeningForBatterySaverNotifications];

  v7 = +[NSMutableArray array];
  v8 = [(MailAppController *)self _preallocateWebViewsAndReturnFuture];
  [v7 addObject:v8];
  if ((v3 & 1) == 0)
  {
    if ([(MailAppController *)self isForeground])
    {
      [(MailAppController *)self _setupDiagnosticProviderIfNeeded];
      v9 = [(MailAppController *)self daemonInterface];
      v10 = [v9 fetchController];
      [v10 performFetchOfType:EMFetchTypeLaunch];
    }

    v11 = +[_TtC10MobileMail14MailTipsHelper shared];
    [v11 setup];

    if (+[MUIiCloudMailCleanupService isFeatureAvailable])
    {
      v12 = +[EFPromise promise];
      v13 = [v12 future];
      [v7 addObject:v13];

      v14 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000CE488;
      block[3] = &unk_10064C660;
      block[4] = self;
      v40 = v12;
      v15 = v12;
      dispatch_async(v14, block);
    }
  }

  [(MailAppController *)self _createAppStoreReviewManager];
  v16 = +[EFPromise promise];
  v17 = [v16 future];
  [v7 addObject:v17];

  v18 = dispatch_get_global_queue(0, 0);
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000CE51C;
  v37[3] = &unk_10064C660;
  v37[4] = self;
  v19 = v16;
  v38 = v19;
  dispatch_async(v18, v37);

  v20 = +[EFPromise promise];
  v21 = [v20 future];
  [v7 addObject:v21];

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000CE620;
  v35[3] = &unk_10064C660;
  v35[4] = self;
  v22 = v20;
  v36 = v22;
  dispatch_async(v18, v35);

  v23 = [(MailAppController *)self mostRecentMainScene];
  v24 = [v23 splitViewController];
  v25 = [v24 conversationViewController];
  [v25 prewarmContent];

  [(MailAppController *)self _ensureBlockedSenderManagerIsCreated];
  v26 = [(MailAppController *)self contactStoreCachingPromise];
  v27 = +[NSNull null];
  [v26 finishWithResult:v27];

  v28 = [(MailAppController *)self contactStore];
  v29 = [v28 emailAddressCacheFinishedFuture];
  [v7 ef_addOptionalObject:v29];

  +[EMInternalPreferences registerForDefaultChanges];
  objc_initWeak(&location, self);
  v30 = [EFFuture combine:v7];
  v31 = +[EFScheduler mainThreadScheduler];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000CE784;
  v32[3] = &unk_10064C838;
  objc_copyWeak(&v33, &location);
  [v30 onScheduler:v31 always:v32];

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);
}

- (void)_ensureBlockedSenderManagerIsCreated
{
  v2 = [(MailAppController *)self blockedSenderManager];
}

- (id)_preallocateWebViewsAndReturnFuture
{
  v3 = +[MailAppController log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412546;
    v24 = v5;
    v25 = 2048;
    v26 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "<%@: %p> [Launch] Preallocate web views", buf, 0x16u);
  }

  v6 = +[EFPromise promise];
  v7 = +[MFWKWebViewFactory sharedWebViewFactoryFuture];
  objc_initWeak(buf, self);
  v8 = +[EFScheduler mainThreadScheduler];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000CEB50;
  v20[3] = &unk_10064F6B0;
  objc_copyWeak(&v22, buf);
  v9 = v6;
  v21 = v9;
  [v7 onScheduler:v8 addSuccessBlock:v20];

  v10 = +[EFScheduler mainThreadScheduler];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1000CECB8;
  v17 = &unk_10064DD80;
  v18 = self;
  v11 = v9;
  v19 = v11;
  [v7 onScheduler:v10 addFailureBlock:&v14];

  v12 = [v11 future];

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);

  return v12;
}

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v5 = [MailAppController log:a3];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 objectForInfoDictionaryKey:kCFBundleVersionKey];
    v13 = 138543362;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MobileMail version %{public}@ launched", &v13, 0xCu);
  }

  [(MailAppController *)self _performBackEndOneShotInitialization];
  [(MailAppController *)self _registerApplicationLifecycleObservers];
  v8 = [(MailAppController *)self daemonInterface];
  v9 = [v8 interactionLogger];
  [v9 applicationLaunched];

  sub_1000CEFB4(self);
  v10 = qos_class_self();
  v11 = dispatch_get_global_queue(v10, 0);
  dispatch_async(v11, &stru_10064F718);

  return 1;
}

- (void)_performUIRelatedLaunchTasksIfNeeded
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CF10C;
  block[3] = &unk_10064C7E8;
  block[4] = self;
  if (qword_1006DCF70 != -1)
  {
    dispatch_once(&qword_1006DCF70, block);
  }
}

- (void)_setupDiagnosticProviderIfNeeded
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CF398;
  block[3] = &unk_10064C7E8;
  block[4] = self;
  if (qword_1006DCF78 != -1)
  {
    dispatch_once(&qword_1006DCF78, block);
  }
}

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v7 = a4;
  v28 = a5;
  v8 = [v7 configuration];
  v9 = [v7 role];
  v10 = [v28 userActivities];
  v11 = [v10 anyObject];
  if ([v10 count])
  {
    v12 = [v10 allObjects];
    v13 = [v12 ef_mapSelector:"activityType"];
    v26 = [v13 componentsJoinedByString:{@", "}];
  }

  else
  {
    v26 = @"None";
  }

  v14 = +[MailAppController log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromSelector(a2);
    v16 = [v11 activityType];
    *buf = 138544130;
    v30 = v15;
    v31 = 2114;
    v32 = v9;
    v33 = 2114;
    v34 = v16;
    v35 = 2114;
    v36 = v27;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ -\n\tRole: %{public}@\n\tSelected User Activity: %{public}@\n\tUser Activity Types: %{public}@", buf, 0x2Au);
  }

  if (v9 != UIWindowSceneSessionRoleApplication)
  {
    if (v9 == SiriInteractiveSessionRoleSnippet)
    {
      v21 = +[MailAppController log];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Found SiriInteractiveSessionRoleSnippet, updating config", buf, 2u);
      }

      v17 = [UISceneConfiguration configurationWithName:0 sessionRole:v9];

      [v17 setDelegateClass:objc_opt_class()];
    }

    else
    {
      v17 = v8;
    }

    goto LABEL_23;
  }

  v18 = MailSceneNameMainScene;
  if (!v11)
  {
LABEL_22:
    v17 = [UISceneConfiguration configurationWithName:v18 sessionRole:UIWindowSceneSessionRoleApplication];

LABEL_23:
    v8 = v17;
    v23 = v8;
    goto LABEL_24;
  }

  v19 = [v11 activityType];
  if ([v19 isEqualToString:MSMailActivityHandoffTypeComposeWithStreams])
  {
    v20 = &MailSceneNameComposeScene;
LABEL_19:
    v22 = v18;
    v18 = *v20;
LABEL_20:

LABEL_21:
    goto LABEL_22;
  }

  if ([v19 isEqualToString:MSMailActivityHandoffTypeDisplayMessage])
  {
    v20 = &MailSceneNameConversationScene;
    goto LABEL_19;
  }

  if ([v19 isEqualToString:MSMailActivityHandoffTypeQuickLook])
  {
    v20 = &MailSceneNameQuickLookScene;
    goto LABEL_19;
  }

  v22 = +[EFDevice currentDevice];
  if (![v22 isInternal])
  {
    goto LABEL_20;
  }

  v25 = [v19 isEqualToString:@"com.apple.mail.private.debugmenu"];

  if (!v25)
  {
    goto LABEL_21;
  }

  v23 = [UISceneConfiguration configurationWithName:0 sessionRole:UIWindowSceneSessionRoleApplication];
  [v23 setDelegateClass:objc_opt_class()];
  [v23 setSceneClass:objc_opt_class()];

LABEL_24:

  return v23;
}

- (void)_deliveryQueueProcessingFinished:(id)a3
{
  v8 = a3;
  v4 = [v8 userInfo];
  v5 = [v4 objectForKey:@"sent"];
  if ([v5 count])
  {
    v6 = [v4 objectForKey:@"playSound"];
    v7 = [v6 BOOLValue];

    if (v7)
    {
      +[MFSoundController playSentMailSound];
    }

    [(MailAppController *)self _mailWasSent:v8];
  }
}

- (void)_mailWasSent:(id)a3
{
  v7 = a3;
  if (+[NSThread isMainThread])
  {
    v5 = [(MailAppController *)self daemonInterface];
    v6 = [v5 fetchController];
    [v6 performFetchOfType:EMFetchTypeStandardMailbox];
  }

  else
  {
    [(MailAppController *)self performSelectorOnMainThread:a2 withObject:v7 waitUntilDone:0];
  }
}

- (void)significantTimeChange
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000CFBD4;
  v3[3] = &unk_10064C7E8;
  v3[4] = self;
  v2 = +[EFScheduler mainThreadScheduler];
  [v2 performBlock:v3];
}

- (EMBlockedSenderManager)blockedSenderManager
{
  v2 = [(MailAppController *)self daemonInterface];
  v3 = [v2 blockedSenderManager];

  return v3;
}

- (void)_createAppStoreReviewManager
{
  if (pthread_main_np() != 1)
  {
    v5 = +[NSAssertionHandler currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"MailAppController.m" lineNumber:618 description:@"Current thread must be main"];
  }

  if (!self->_appStoreReviewManager)
  {
    v4 = [EFScheduler globalAsyncSchedulerWithQualityOfService:17];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000CFDB4;
    v6[3] = &unk_10064C7E8;
    v6[4] = self;
    [v4 performBlock:v6];
  }
}

- (id)_mailboxStringFromMailbox:(id)a3
{
  v3 = a3;
  if (![v3 isSmartMailbox])
  {
    v6 = +[UIApplication sharedApplication];
    v4 = [v6 mailboxProvider];

    v7 = [v3 objectID];
    v8 = [v4 legacyMailboxForObjectID:v7];

    v5 = [v8 URLString];

    goto LABEL_11;
  }

  v4 = v3;
  if ([v4 smartMailboxType] == 8)
  {
    v5 = @"com.apple.mobilemail.context.AllInbox";
    goto LABEL_11;
  }

  if (![v4 smartMailboxType] || !objc_msgSend(v4, "smartMailboxType"))
  {
    v9 = &MSUserNotificationCenterTopicVIP;
LABEL_10:
    v5 = *v9;
    goto LABEL_11;
  }

  if ([v4 smartMailboxType] == 1)
  {
    v5 = @"com.apple.mobilemail.context.flagged";
    goto LABEL_11;
  }

  if ([v4 smartMailboxType] == 3)
  {
    v5 = @"com.apple.mobilemail.context.toMe";
    goto LABEL_11;
  }

  if ([v4 smartMailboxType] == 4)
  {
    v5 = @"com.apple.mobilemail.context.hasAttachments";
    goto LABEL_11;
  }

  if ([v4 smartMailboxType] == 5)
  {
    v9 = &MSUserNotificationCenterTopicNotifiedThreads;
    goto LABEL_10;
  }

  v5 = 0;
LABEL_11:

  return v5;
}

- (void)_accountsChanged:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000D0224;
  v4[3] = &unk_10064C7E8;
  v4[4] = self;
  v3 = +[EFScheduler mainThreadScheduler];
  [v3 performSyncBlock:v4];
}

- (void)updateDefaultImageWithReason:(id)a3
{
  v6 = a3;
  if (pthread_main_np() != 1)
  {
    v5 = +[NSAssertionHandler currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"MailAppController.m" lineNumber:731 description:@"Current thread must be main"];
  }

  [(MailAppController *)self setLastDefaultImageUpdateReason:v6];
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_reallyUpdateDefaultImage" object:0];
  [(MailAppController *)self performSelector:"_reallyUpdateDefaultImage" withObject:0 afterDelay:1.0];
}

- (void)_reallyUpdateDefaultImage
{
  if ([(MailAppController *)self isSuspended])
  {
    v3 = [(MailAppController *)self mostRecentMainScene];

    if (v3)
    {
      v4 = +[MFMailMessageLibrary defaultInstance];
      v5 = [v4 protectedDataAvailability];

      if (!v5)
      {
        [(MailAppController *)self _updateSnapshotForBackgroundApplication:0];
        v6 = [(MailAppController *)self lastDefaultImageUpdateReason];
        v7 = MFLogGeneral();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = ": ";
          if (!v6)
          {
            v8 = "";
          }

          v9 = &stru_100662A88;
          if (v6)
          {
            v9 = v6;
          }

          v10 = 136315394;
          v11 = v8;
          v12 = 2112;
          v13 = v9;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Updated default image%s%@", &v10, 0x16u);
        }
      }
    }
  }
}

- (void)cleanUpAfterSuspend
{
  if (+[NSThread isMainThread])
  {
    v5 = +[MFInvocationQueue sharedInvocationQueue];
    v4 = [MFMonitoredInvocation invocationWithSelector:a2 target:self taskName:0 priority:15 canBeCancelled:0];
    [v5 addInvocation:v4];
  }

  else
  {
    +[MailAccount saveStateForAllAccounts];
    v6 = +[NSUserDefaults standardUserDefaults];
    [v6 synchronize];

    v5 = +[MailPersistentStorage sharedStorage];
    [v5 save];
  }
}

- (void)didReceiveMemoryWarning
{
  v3.receiver = self;
  v3.super_class = MailAppController;
  [(MailAppController *)&v3 didReceiveMemoryWarning];
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:MailApplicationMemoryWarningNotification object:0];
}

- (BOOL)isForeground
{
  v2 = [(MailAppController *)self daemonInterface];
  v3 = [v2 clientState];
  v4 = [v3 isForeground];

  return v4;
}

- (void)_registerApplicationLifecycleObservers
{
  v3 = [(MailAppController *)self daemonInterface];
  v4 = [v3 clientState];
  v5 = [v4 foregroundObservable];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D07C0;
  v7[3] = &unk_10064D900;
  v7[4] = self;
  v6 = [v5 subscribeWithResultBlock:v7];
}

- (void)dealloc
{
  notify_cancel(self->_accountChangeNotificationToken);
  emptiedTrashTimestamps = self->_emptiedTrashTimestamps;
  if (emptiedTrashTimestamps)
  {
    CFRelease(emptiedTrashTimestamps);
  }

  v4 = [(MailAppController *)self diagnosticInfoProviderToken];
  [v4 cancel];

  [(MailAppController *)self _configureUserDefaultsKVOAdd:0];
  [(EFCancelable *)self->_bucketBarStateCancelable cancel];
  v5.receiver = self;
  v5.super_class = MailAppController;
  [(MailAppController *)&v5 dealloc];
}

- (void)_handleDeliveryFailure:(id)a3
{
  v6 = [a3 userInfo];
  v4 = [v6 objectForKey:@"account"];
  v5 = [v6 objectForKey:@"error"];
  if (v5)
  {
    [(MailAppController *)self displayError:v5 forAccount:v4 mode:1];
  }
}

- (void)provideDiagnosticsAt:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v7 = a3;
  v26 = a5;
  v8 = +[MailAppController log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(MailAppController *)self providerObjectID];
    *buf = 138412290;
    v34 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<%@> Gathering diagnostics...", buf, 0xCu);
  }

  v25 = [v7 ef_URLByAppendingTimestampedPathComponent:@"SceneSessions" withExtension:@"log"];
  v24 = [(MailAppController *)self _dumpUIStateAtURL:v25];
  v23 = [v7 ef_URLByAppendingTimestampedPathComponent:@"EMUserDefaults" withExtension:@"plist"];
  v22 = [(MailAppController *)self _dumpEMUserDefaultsAtURL:v23];
  v21 = [v7 ef_URLByAppendingTimestampedPathComponent:@"StandardUserDefaults" withExtension:@"plist"];
  v27 = [(MailAppController *)self _dumpEMUserDefaultsAtURL:?];
  v10 = [v7 ef_URLByAppendingTimestampedPathComponent:@"NotificationSettings" withExtension:@"plist"];
  v11 = [(MailAppController *)self _dumpNotificationSettingsAtURL:v10];
  v12 = [v7 ef_URLByAppendingTimestampedPathComponent:@"CurrentFocus" withExtension:@"plist"];
  v13 = [(MailAppController *)self _dumpCurrentFocusAtURL:v12];
  v32[0] = v24;
  v32[1] = v22;
  v32[2] = v27;
  v32[3] = v11;
  v32[4] = v13;
  v14 = [NSArray arrayWithObjects:v32 count:5];
  v15 = [v7 ef_URLByAppendingTimestampedPathComponent:@"BucketBarConfiguration" withExtension:@"plist"];
  v16 = [(MailAppController *)self _dumpBucketBarConfigurationAtURL:v15];
  v17 = [v14 arrayByAddingObject:v16];

  v18 = [EFFuture join:v17];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000D101C;
  v30[3] = &unk_10064D298;
  v19 = v26;
  v31 = v19;
  [v18 addSuccessBlock:v30];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000D10D8;
  v28[3] = &unk_10064C478;
  v20 = v19;
  v29 = v20;
  [v18 addFailureBlock:v28];
}

- (void)_userDidTakeScreenshot:(id)a3
{
  v4 = +[MailAppController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Screenshot taken. Dumping UI state...", buf, 2u);
  }

  v5 = +[EMDiagnosticInfoGatherer localDiagnosticsDirectoryURL];
  v6 = +[NSFileManager defaultManager];
  v12 = 0;
  [v6 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v12];
  v7 = v12;

  if (v7)
  {
    v8 = +[MailAppController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v5 path];
      sub_100488240(v9, v7, buf);
    }
  }

  v10 = [v5 ef_URLByAppendingTimestampedPathComponent:@"Screenshot" withExtension:@"log"];
  v11 = [(MailAppController *)self _dumpUIStateAtURL:v10];
}

- (id)_dumpUIStateAtURL:(id)a3
{
  v4 = a3;
  v5 = +[EFPromise promise];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_1000D153C;
  v16[4] = sub_1000D154C;
  v17 = objc_alloc_init(NSMutableString);
  v15 = v16;
  v6 = v4;
  v12 = v6;
  v13 = self;
  v7 = v5;
  v14 = v7;
  v8 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v8 performBlock:&v11];

  v9 = [v7 future];

  _Block_object_dispose(v16, 8);

  return v9;
}

- (id)_dumpEMUserDefaultsAtURL:(id)a3
{
  v4 = a3;
  v5 = +[NSUserDefaults em_userDefaults];
  v6 = [(MailAppController *)self _dumpUserDefaults:v5 atURL:v4];

  return v6;
}

- (id)_dumpStandardUserDefaultsAtURL:(id)a3
{
  v4 = a3;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [(MailAppController *)self _dumpUserDefaults:v5 atURL:v4];

  return v6;
}

- (id)_dumpUserDefaults:(id)a3 atURL:(id)a4
{
  v6 = a4;
  v7 = [a3 dictionaryRepresentation];
  v8 = [(MailAppController *)self _dumpDictionary:v7 atURL:v6];

  return v8;
}

- (id)_dumpDictionary:(id)a3 atURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[EFPromise promise];
  v9 = +[EFScheduler globalAsyncScheduler];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1000D1EE8;
  v18 = &unk_10064E348;
  v10 = v6;
  v19 = v10;
  v11 = v7;
  v20 = v11;
  v21 = self;
  v12 = v8;
  v22 = v12;
  [v9 performBlock:&v15];

  v13 = [v12 future];

  return v13;
}

- (id)_dumpNotificationSettingsAtURL:(id)a3
{
  v4 = a3;
  v5 = +[EFPromise promise];
  v6 = +[UNUserNotificationCenter currentNotificationCenter];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000D22AC;
  v11[3] = &unk_10064F808;
  v11[4] = self;
  v7 = v4;
  v12 = v7;
  v8 = v5;
  v13 = v8;
  [v6 getNotificationSettingsForTopicsWithCompletionHandler:v11];

  v9 = [v8 future];

  return v9;
}

- (id)_dumpCurrentFocusAtURL:(id)a3
{
  v4 = a3;
  v5 = [(MailAppController *)self focusController];
  v6 = [v5 _stateCaptureInformation];

  v7 = [(MailAppController *)self _dumpDictionary:v6 atURL:v4];

  return v7;
}

- (id)_dumpBucketBarConfigurationAtURL:(id)a3
{
  v4 = a3;
  v5 = [(MailAppController *)self bucketBarConfigurationController];
  v6 = [v5 stateCaptureInformation];

  v7 = [(MailAppController *)self _dumpDictionary:v6 atURL:v4];

  return v7;
}

- (void)_configureUserDefaultsKVOAdd:(BOOL)a3
{
  v3 = a3;
  v5 = +[NSUserDefaults em_userDefaults];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = sub_1000056A8(self);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v22 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (v3)
        {
          [v5 addObserver:self forKeyPath:*(*(&v12 + 1) + 8 * i) options:1 context:"UserDefaultsKVOContext"];
        }

        else
        {
          [v5 removeObserver:self forKeyPath:*(*(&v12 + 1) + 8 * i)];
        }

        v11 = MFLogGeneral();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 134218498;
          v17 = self;
          v18 = 1024;
          v19 = v3;
          v20 = 2112;
          v21 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "MailAppController (%p) add(%{BOOL}d) observer for key path %@", buf, 0x1Cu);
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v22 count:16];
    }

    while (v7);
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a3;
  if (a6 == "UserDefaultsKVOContext")
  {
    [(MailAppController *)self _userDefaultDidChange:v8];
  }
}

- (void)_userDefaultDidChange:(id)a3
{
  v16 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 synchronize];

  v5 = +[NSUserDefaults em_userDefaults];
  [v5 synchronize];

  v6 = +[NSNotificationCenter defaultCenter];
  if ([v16 isEqualToString:MFMailAccountDescription])
  {
    v7 = &MailApplicationDidChangeAccountDisplayName;
LABEL_3:
    [v6 postNotificationName:*v7 object:self];
    v8 = 1;
    goto LABEL_10;
  }

  if ([v16 isEqualToString:EMUserDefaultLoadRemoteContentKey])
  {
    v9 = &MailApplicationDidChangeRemoteImageLoading;
  }

  else
  {
    if ([v16 isEqualToString:IncludeAttachmentRepliesKey])
    {
      v10 = sub_10024BAB8(1);
      goto LABEL_9;
    }

    if ([v16 isEqualToString:EMUserDefaultLinesOfPreviewKey])
    {
      +[NSUserDefaults em_resetLinesOfPreview];
      v7 = &MailApplicationDidChangePreviewLinesNotification;
      goto LABEL_3;
    }

    if ([v16 isEqualToString:ShowToCCIndicatorsKey])
    {
      sub_100020DC4(1);
      v7 = &MailApplicationDidChangeShowToCCNotification;
      goto LABEL_3;
    }

    if ([v16 isEqualToString:DisableThreadingKey])
    {
      v7 = &MailApplicationsDisableThreadingKeyChanged;
      goto LABEL_3;
    }

    if ([v16 isEqualToString:RightSwipeActionKey])
    {
      v13 = sub_10024BB48(1);
      v14 = +[NSNotificationCenter defaultCenter];
      [v14 postNotificationName:MailApplicationDidChangeSwipeActions object:self];

      goto LABEL_9;
    }

    if ([v16 isEqualToString:LeftSwipeActionKey])
    {
      v15 = sub_10024BC14(1);
      v9 = &MailApplicationDidChangeSwipeActions;
    }

    else if ([v16 isEqualToString:ConversationViewShowsNewestAtTop])
    {
      sub_10000ED28(1);
      v9 = &MailApplicationDidChangeConversationOrder;
    }

    else if ([v16 isEqualToString:ConversationViewExcludesRelatedMessagesKey])
    {
      sub_10000CA34(1);
      v9 = &MailApplicationDidChangeConversationViewIncludesRelatedMessages;
    }

    else
    {
      if (![v16 isEqualToString:CollapseReadConversationMessagesKey])
      {
        goto LABEL_9;
      }

      sub_10024BA68(1);
      v9 = &MailApplicationDidChangeConversationViewCollapseReadMessagesNotification;
    }
  }

  [v6 postNotificationName:*v9 object:self];
LABEL_9:
  v8 = 0;
LABEL_10:
  v11 = +[NSNotificationCenter defaultCenter];
  [v11 postNotificationName:MailDefaultsChangedNotification object:v16 userInfo:0];

  if (v8)
  {
    v12 = [NSString stringWithFormat:@"defaults changed: %@", v16];
    [(MailAppController *)self updateDefaultImageWithReason:v12];
  }
}

- (void)systemWillSleep
{
  v2 = +[MailAccount activeAccounts];
  [v2 makeObjectsPerformSelector:"systemWillSleep"];
}

- (void)systemDidWake
{
  v2 = +[MailAccount activeAccounts];
  [v2 makeObjectsPerformSelector:"systemDidWake"];
}

- (BOOL)canPerformNetworkOperationOnAccount:(id)a3
{
  v3 = a3;
  if ([v3 canGoOffline])
  {
    v4 = 1;
  }

  else
  {
    v5 = +[MFNetworkController sharedInstance];
    v4 = [v5 isDataAvailable];
  }

  return v4;
}

- (id)accountCanPerformNetworkOperations:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000D2EF8;
  v6[3] = &unk_10064E6A0;
  v6[4] = self;
  v7 = a3;
  v3 = v7;
  v4 = [EFFuture futureWithBlock:v6];

  return v4;
}

- (void)_setProtectedDataAvailabilityWithNotification:(id)a3
{
  v4 = [a3 userInfo];
  v6 = [v4 objectForKey:MailMessageLibraryProtectedDataAvailibilityKey];

  v5 = v6;
  if (v6)
  {
    self->_protectedDataAvailability = [v6 unsignedIntValue];
    v5 = v6;
  }
}

- (void)performWhenProtectedDataIsAvailable:(id)a3
{
  v5 = a3;
  if (pthread_main_np() != 1)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MailAppController.m" lineNumber:1241 description:@"Current thread must be main"];
  }

  if (self->_protectedDataAvailability == 2)
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Will perform when protected data is available.", v11, 2u);
    }

    blockToPerformWhenProtectedDataIsAvailable = self->_blockToPerformWhenProtectedDataIsAvailable;
    self->_blockToPerformWhenProtectedDataIsAvailable = 0;

    if (v5)
    {
      v8 = objc_retainBlock(v5);
      v9 = self->_blockToPerformWhenProtectedDataIsAvailable;
      self->_blockToPerformWhenProtectedDataIsAvailable = v8;

      [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"cancelPreviousPerformRequestsWhenProtectedDataIsAvailable" object:0];
      [(MailAppController *)self performSelector:"cancelPreviousPerformRequestsWhenProtectedDataIsAvailable" withObject:0 afterDelay:2.0];
    }
  }

  else if (v5)
  {
    v5[2](v5);
  }
}

- (void)cancelPreviousPerformRequestsWhenProtectedDataIsAvailable
{
  if (pthread_main_np() != 1)
  {
    v4 = +[NSAssertionHandler currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"MailAppController.m" lineNumber:1263 description:@"Current thread must be main"];
  }

  [(MailAppController *)self performWhenProtectedDataIsAvailable:0];
}

- (void)_messageLibraryWillBecomeUnavailable:(id)a3
{
  v5 = a3;
  if (pthread_main_np() != 1)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MailAppController.m" lineNumber:1269 description:@"Current thread must be main"];
  }

  [(MailAppController *)self _setProtectedDataAvailabilityWithNotification:v5];
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    protectedDataAvailability = self->_protectedDataAvailability;
    v13 = 134217984;
    v14 = protectedDataAvailability;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Protected data will become unavailable (%lu)", &v13, 0xCu);
  }

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 postNotificationName:MailApplicationProtectedDataWillBecomeUnavailable object:self];

  v9 = [(MailAppController *)self postponedMessageURL];
  LOBYTE(v8) = v9 == 0;

  if ((v8 & 1) == 0)
  {
    v10 = MFLogGeneral();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [(MailAppController *)self postponedMessageURL];
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Forgetting postponed URL %@ because protected data became unavailable", &v13, 0xCu);
    }

    [(MailAppController *)self setPostponedMessageURL:0];
  }
}

- (void)_messageLibraryDidBecomeAvailable:(id)a3
{
  v5 = a3;
  if (pthread_main_np() != 1)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MailAppController.m" lineNumber:1283 description:@"Current thread must be main"];
  }

  [(MailAppController *)self _setProtectedDataAvailabilityWithNotification:v5];
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    protectedDataAvailability = self->_protectedDataAvailability;
    v11 = 134217984;
    v12 = protectedDataAvailability;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Protected data did become available (%lu)", &v11, 0xCu);
  }

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 postNotificationName:MailApplicationProtectedDataDidBecomeAvailable object:self];

  if (self->_blockToPerformWhenProtectedDataIsAvailable)
  {
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"cancelPreviousPerformRequestsWhenProtectedDataIsAvailable" object:0];
    (*(self->_blockToPerformWhenProtectedDataIsAvailable + 2))();
    blockToPerformWhenProtectedDataIsAvailable = self->_blockToPerformWhenProtectedDataIsAvailable;
    self->_blockToPerformWhenProtectedDataIsAvailable = 0;
  }
}

- (void)displayError:(id)a3 forAccount:(id)a4 mode:(int64_t)a5
{
  v10 = a3;
  v8 = a4;
  v9 = [(MailAppController *)self mostRecentMainScene];
  [v9 displayError:v10 forAccount:v8 mode:a5];
}

- (NSSet)selectedAccounts
{
  v2 = [(MailAppController *)self mostRecentMainScene];
  v3 = [v2 selectedAccounts];

  return v3;
}

- (void)_updateAccountsIfNecessaryFromCollection:(id)a3
{
  v5 = a3;
  v6 = [(MailAppController *)self mailboxCollection];

  if (v6 == v5)
  {
    v7 = +[MailAppController log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromSelector(a2);
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@", &v9, 0xCu);
    }

    [(MailAppController *)self _accountsChanged:0];
  }
}

- (id)identifiersToExcludeFromDockedItemRecovery
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000D153C;
  v10 = sub_1000D154C;
  v11 = 0;
  v2 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v2 performSyncBlock:&v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)didFinishLoadAllScenes:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D3C84;
  v7[3] = &unk_10064F900;
  v7[4] = self;
  sub_100488094(self, v7);
  v4 = UIApp;
  v5 = [UIApp _launchTestName];
  [v4 finishedTest:v5 extraResults:0];

  [(MailAppController *)self setExtendedLaunchTracker:0];
  v6 = [(MailAppController *)self avatarGenerator];
  [v6 allowGeneratingAvatarImages];
}

- (EFFuture)didFinishDelayedStartupTasks
{
  v2 = [(MailAppController *)self didFinishDelayedStartupTasksPromise];
  v3 = [v2 future];

  return v3;
}

- (void)buildMenuWithBuilder:(id)a3
{
  v4 = a3;
  v124.receiver = self;
  v124.super_class = MailAppController;
  v111 = v4;
  [(MailAppController *)&v124 buildMenuWithBuilder:v4];
  if (self)
  {
    v5 = self->_menuCommandsCollection;
    if (v5)
    {
      v6 = [v4 system];
      v7 = +[UIMenuSystem mainSystem];
      v8 = v6 == v7;

      if (v8)
      {
        v100 = sub_100120198(v5, 0);
        v102 = sub_100120198(v5, 14);
        v84 = sub_100120198(v5, 15);
        v101 = sub_100120198(v5, 19);
        v83 = sub_100120198(v5, 20);
        v82 = sub_100120198(v5, 21);
        v81 = sub_100120198(v5, 22);
        v80 = sub_100120198(v5, 23);
        v79 = sub_100120198(v5, 24);
        v77 = sub_100120198(v5, 25);
        v78 = sub_100120198(v5, 26);
        v76 = sub_100120198(v5, 27);
        v75 = sub_100120198(v5, 28);
        v74 = sub_100120198(v5, 29);
        v73 = sub_100120198(v5, 30);
        v72 = sub_100120198(v5, 32);
        v99 = sub_100120198(v5, 1);
        v98 = sub_100120198(v5, 2);
        v95 = sub_100120198(v5, 3);
        v96 = sub_100120198(v5, 4);
        v97 = sub_100120198(v5, 5);
        v71 = sub_100120198(v5, 31);
        v94 = sub_100120198(v5, 7);
        v90 = sub_100120198(v5, 11);
        v89 = sub_100120198(v5, 12);
        v88 = sub_100120198(v5, 13);
        v91 = sub_100120198(v5, 8);
        v93 = sub_100120198(v5, 9);
        v92 = sub_100120198(v5, 10);
        v87 = sub_100120198(v5, 18);
        v85 = sub_100120198(v5, 16);
        v86 = sub_100120198(v5, 17);
        [v111 removeCommandForAction:"findAndReplace:" propertyList:0];
        v9 = sub_1000D52D4(@"MAILBOX_MENU_TITLE");
        v109 = [UIMenu menuWithTitle:v9 children:v102];

        v10 = sub_1000D52D4(@"MESSAGE_MENU_TITLE");
        v110 = [UIMenu menuWithTitle:v10 children:v101];

        v122[0] = _NSConcreteStackBlock;
        v122[1] = 3221225472;
        v122[2] = sub_1000D5380;
        v122[3] = &unk_10064F928;
        v11 = v111;
        v123 = v11;
        v103 = objc_retainBlock(v122);
        v120[0] = _NSConcreteStackBlock;
        v120[1] = 3221225472;
        v120[2] = sub_1000D538C;
        v120[3] = &unk_10064F950;
        v12 = v11;
        v121 = v12;
        v13 = objc_retainBlock(v120);
        v118[0] = _NSConcreteStackBlock;
        v118[1] = 3221225472;
        v118[2] = sub_1000D5448;
        v118[3] = &unk_10064F928;
        v14 = v12;
        v119 = v14;
        v105 = objc_retainBlock(v118);
        v116[0] = _NSConcreteStackBlock;
        v116[1] = 3221225472;
        v116[2] = sub_1000D54F0;
        v116[3] = &unk_10064F978;
        v15 = v14;
        v117 = v15;
        v16 = objc_retainBlock(v116);
        v114[0] = _NSConcreteStackBlock;
        v114[1] = 3221225472;
        v114[2] = sub_1000D5608;
        v114[3] = &unk_10064F978;
        v107 = v15;
        v115 = v107;
        v65 = objc_retainBlock(v114);
        v112[0] = _NSConcreteStackBlock;
        v112[1] = 3221225472;
        v112[2] = sub_1000D5720;
        v112[3] = &unk_10064F9A0;
        v108 = v16;
        v113 = v108;
        v104 = objc_retainBlock(v112);
        v17 = v103;
        (v103[2])(v103, UIMenuApplication, v100);
        (v17[2])(v17, UIMenuFile, v99);
        (v17[2])(v17, UIMenuNewItem, v98);
        (v17[2])(v17, UIMenuClose, v97);
        (v105[2])(v105, UIMenuClose, v96);
        (v17[2])(v17, UIMenuPrint, v95);
        (v105[2])(v105, UIMenuStandardEdit, v94);
        v18 = (v13[2])(v13, UIMenuFind, v93, 1);
        (v17[2])(v17, UIMenuFind, v92);
        (v17[2])(v17, UIMenuFind, v91);
        (v17[2])(v17, UIMenuView, v90);
        v64 = (v13[2])(v13, UIMenuView, v89, 1);
        v19 = [v64 identifier];
        (v105[2])(v105, v19, v88);

        [v107 insertSiblingMenu:v109 afterMenuForIdentifier:UIMenuView];
        v20 = [v109 identifier];
        v21 = sub_1000D52D4(@"GO_TO_MAILBOX_CATEGORY");
        v22 = (v104[2])(v104, v20, v21, v87, 1);

        v23 = [v109 identifier];
        v24 = sub_1000D52D4(@"MOVE_TO_FAVORITE_MAILBOX");
        v25 = (v104[2])(v104, v23, v24, v86, 1);

        v26 = [v109 identifier];
        v27 = sub_1000D52D4(@"GO_TO_FAVORITE_MAILBOX");
        v28 = (v104[2])(v104, v26, v27, v85, 1);

        v29 = [v109 identifier];
        v30 = (v13[2])(v13, v29, v84, 1);

        v31 = [v109 identifier];
        [v107 insertSiblingMenu:v110 afterMenuForIdentifier:v31];

        v32 = [v110 identifier];
        v33 = (v13[2])(v13, v32, v83, 0);

        v34 = [v110 identifier];
        v35 = (v13[2])(v13, v34, v82, 0);

        v36 = [v110 identifier];
        v37 = _EFLocalizedString();
        v70 = (v108[2])(v108, v36, v37, MFImageGlyphReadLater, v81, 0);

        v38 = [v70 identifier];
        v39 = (v13[2])(v13, v38, v80, 0);

        v40 = [v110 identifier];
        v69 = (v13[2])(v13, v40, v79, 0);

        if (UIAccessibilityShouldDifferentiateWithoutColor() || UIAccessibilityIsVoiceOverRunning())
        {
          v41 = [v69 identifier];
          v42 = _EFLocalizedString();
          v106 = (v108[2])(v108, v41, v42, MFImageGlyphFlag, v78, 0);
        }

        else
        {
          v41 = [v69 identifier];
          v42 = _EFLocalizedString();
          v106 = (v65[2])(v65, v41, v42, MFImageGlyphFlag, v78, 0);
        }

        v43 = [v106 identifier];
        v44 = (v13[2])(v13, v43, v77, 0);

        v45 = [v110 identifier];
        v46 = (v13[2])(v13, v45, v76, 0);

        v47 = [v110 identifier];
        v68 = (v13[2])(v13, v47, v75, 0);

        v48 = [v68 identifier];
        v49 = _EFLocalizedString();
        v67 = (v108[2])(v108, v48, v49, MFImageGlyphCategorizationAction, v74, 1);

        v50 = [v67 identifier];
        v51 = (v13[2])(v13, v50, v73, 0);

        (v103[2])(v103, UIMenuWindow, v72);
        v52 = sub_1000D52D4(@"QUOTE_LEVEL_TITLE");
        v53 = (v108[2])(v108, UIMenuFormat, v52, MFImageGlyphQuoteLevel, v71, 0);

        v66 = [v107 menuForIdentifier:UIMenuFormat];
        [v107 removeMenuForIdentifier:UIMenuFormat];
        v54 = [v110 identifier];
        [v107 insertSiblingMenu:v66 afterMenuForIdentifier:v54];

        v55 = [v107 commandForAction:"delete:" propertyList:0];
        v56 = v55;
        if (v55)
        {
          v57 = [v55 title];
          v58 = [v56 image];
          v59 = [v56 action];
          v60 = +[UICommand mail_deleteMessageCommandPropertyList];
          v61 = [v56 alternates];
          v62 = [UIKeyCommand commandWithTitle:v57 image:v58 action:v59 input:UIKeyInputDelete modifierFlags:0 propertyList:v60 alternates:v61];

          [v62 setAttributes:{objc_msgSend(v56, "attributes")}];
          [v62 setRepeatBehavior:2];
          v125 = v62;
          v63 = [NSArray arrayWithObjects:&v125 count:1];
          [v107 replaceCommandForAction:"delete:" propertyList:0 withElements:v63];
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }
}

- (void)dismissComposeViewController:(id)a3 animated:(BOOL)a4 afterSending:(BOOL)a5
{
  if (a5)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  v8 = [a3 view];
  v6 = [v8 window];
  v7 = [v6 windowScene];
  [v7 closeSceneWithAnimation:v5];
}

- (void)didFailToContinueUserActivityWithType:(id)a3 error:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(MailAppController *)self mostRecentMainScene];
  [v7 didFailToContinueUserActivityWithType:v8 error:v6];
}

- (id)activeViewController
{
  v2 = [(MailAppController *)self mostRecentMainScene];
  v3 = [v2 activeViewController];

  return v3;
}

- (void)mailComposeDeliveryControllerDidAttemptToSaveDraft:(id)a3 account:(id)a4 result:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v14 = self;
  v10 = v8;
  v15 = v10;
  v11 = v9;
  v16 = v11;
  v17 = a5;
  v12 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v12 performBlock:&v13];
}

- (void)mailComposeDeliveryControllerDidAttemptToSend:(id)a3 outgoingMessageDelivery:(id)a4 result:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16 = self;
  v11 = v8;
  v17 = v11;
  v12 = v9;
  v18 = v12;
  v13 = v10;
  v19 = v13;
  v14 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v14 performBlock:&v15];
}

- (void)mailComposeDeliveryControllerWillAttemptToSend:(id)a3
{
  v6 = self;
  v3 = a3;
  v7 = v3;
  v4 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v4 performBlock:&v5];
}

- (void)mailComposeDeliveryController:(id)a3 didMoveCancelledMessageToDrafts:(id)a4 draftMailboxObjectID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16 = self;
  v11 = v8;
  v17 = v11;
  v12 = v9;
  v18 = v12;
  v13 = v10;
  v19 = v13;
  v14 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v14 performBlock:&v15];
}

- (BOOL)_shouldShowAlertForUndoManager:(id)a3
{
  v4 = a3;
  v5 = MFMailboxUid_ptr;
  if (![UIApplication instancesRespondToSelector:"_motionKeyWindow"]|| ![UIApplication instancesRespondToSelector:"_shouldShowAlertForUndoManager:"])
  {
    v5 = +[MailAppController log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100488360();
    }

    v7 = 0;
    goto LABEL_10;
  }

  v6 = v4;
  if (!v4)
  {
    v5 = [(MailAppController *)self _motionKeyWindow];
    v6 = [v5 undoManager];
  }

  v9.receiver = self;
  v9.super_class = MailAppController;
  v7 = [(MailAppController *)&v9 _shouldShowAlertForUndoManager:v6];
  if (!v4)
  {

LABEL_10:
  }

  return v7;
}

- (void)_showEditAlertViewWithUndoManager:(id)a3 window:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MFMailboxUid_ptr;
  if (![UIApplication instancesRespondToSelector:"_motionKeyWindow"]|| ![UIApplication instancesRespondToSelector:"_shouldShowAlertForUndoManager:"])
  {
    v8 = +[MailAppController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1004883A0();
    }

    goto LABEL_9;
  }

  v9 = v6;
  if (!v6)
  {
    v8 = [(MailAppController *)self _motionKeyWindow];
    v9 = [v8 undoManager];
  }

  v10.receiver = self;
  v10.super_class = MailAppController;
  [(MailAppController *)&v10 _showEditAlertViewWithUndoManager:v9 window:v7];
  if (!v6)
  {

LABEL_9:
  }
}

- (void)runAllTests
{
  [objc_opt_class() allTestsName];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v3 = v8 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [(MailAppController *)self runTest:*(*(&v7 + 1) + 8 * v6) options:0, v7];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (BOOL)runTest:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000D7058;
  v34[3] = &unk_10064D9B0;
  v34[4] = self;
  v9 = v7;
  v35 = v9;
  v10 = objc_retainBlock(v34);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000D70DC;
  v32[3] = &unk_10064D9B0;
  v32[4] = self;
  v11 = v9;
  v33 = v11;
  v12 = objc_retainBlock(v32);
  objc_storeStrong(&qword_1006DCF88, a3);
  objc_storeStrong(&qword_1006DCF90, a4);
  v13 = [v8 mf_mailboxName];
  v14 = qword_1006DCF98;
  qword_1006DCF98 = v13;

  v15 = [objc_opt_class() allTestsName];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000D7160;
  v30[3] = &unk_10064E820;
  v16 = v11;
  v31 = v16;
  v17 = [v15 ef_any:v30];

  if (v17)
  {
    [(MailAppController *)self waitForUIToSettleDown];
    v18 = [v8 mf_testInterfaceOrientation];
    v19 = UIApp;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000D716C;
    v22[3] = &unk_10064F9C8;
    v28 = v18;
    v23 = v16;
    v24 = self;
    v25 = v8;
    v26 = v10;
    v27 = v12;
    [v19 rotateIfNeeded:v18 completion:v22];

    v20 = 1;
  }

  else
  {
    v29.receiver = self;
    v29.super_class = MailAppController;
    v20 = [(MailAppController *)&v29 runTest:v16 options:v8];
  }

  return v20;
}

- (void)finishedTest:(id)a3 extraResults:(id)a4
{
  v6 = qword_1006DCF88;
  qword_1006DCF88 = 0;
  v7 = a4;
  v8 = a3;

  v9 = qword_1006DCF90;
  qword_1006DCF90 = 0;

  v10 = qword_1006DCF98;
  qword_1006DCF98 = 0;

  v11.receiver = self;
  v11.super_class = MailAppController;
  [(MailAppController *)&v11 finishedTest:v8 extraResults:v7];
}

- (void)_finishTestDismissingReply:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000D8018;
  v3[3] = &unk_10064C7E8;
  v3[4] = self;
  [(MailAppController *)self finishedTest:a3 extraResults:0 withTeardownBlock:v3];
}

- (void)failedTest:(id)a3 withFailure:(id)a4
{
  v6 = qword_1006DCF88;
  qword_1006DCF88 = 0;
  v7 = a4;
  v8 = a3;

  v9 = qword_1006DCF90;
  qword_1006DCF90 = 0;

  v10 = qword_1006DCF98;
  qword_1006DCF98 = 0;

  v11.receiver = self;
  v11.super_class = MailAppController;
  [(MailAppController *)&v11 failedTest:v8 withFailure:v7];
}

- (id)getControllerOfType:(Class)a3 fromNavigationController:(id)a4
{
  v4 = a4;
  v5 = [v4 viewControllers];
  if (v5)
  {
    for (i = 0; i < [v5 count]; ++i)
    {
      v7 = [v5 objectAtIndex:i];
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v9 = [v5 objectAtIndex:i];
        goto LABEL_8;
      }
    }
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (id)getControllerOfType:(Class)a3
{
  v5 = [(MailAppController *)self masterNavigationController];
  v6 = [(MailAppController *)self getControllerOfType:a3 fromNavigationController:v5];

  return v6;
}

- (id)getMessageListViewController
{
  v3 = objc_opt_class();

  return [(MailAppController *)self getControllerOfType:v3];
}

- (id)getMailboxListViewControllerMail
{
  v3 = objc_opt_class();

  return [(MailAppController *)self getControllerOfType:v3];
}

- (id)getMailboxPickerController
{
  v3 = objc_opt_class();

  return [(MailAppController *)self getControllerOfType:v3];
}

- (id)getConversationViewController
{
  v2 = [(MailAppController *)self mostRecentMainScene];
  v3 = [v2 splitViewController];
  v4 = [v3 messageDetailNavController];
  v5 = [v4 conversationViewController];

  return v5;
}

- (id)getAccount
{
  v2 = [(MailAppController *)self mostRecentMainScene];
  v3 = [v2 _defaultAccountsToSelect];
  v4 = [v3 anyObject];

  return v4;
}

- (id)getMailboxWithName:(id)a3
{
  v4 = a3;
  v5 = +[MailChangeManager sharedChangeManager];
  v6 = [(MailAppController *)self getAccount];
  v7 = [v5 allMailboxUidsSortedWithSpecialsAtTopForAccount:v6 includingLocals:0 client:0 outbox:0];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v12 name];
        v14 = [v13 isEqualToString:v4];

        if (v14)
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

- (void)switchToInbox
{
  v3 = +[MailChangeManager sharedChangeManager];
  v4 = [(MailAppController *)self getAccount];
  v5 = [v3 allMailboxUidsSortedWithSpecialsAtTopForAccount:v4 includingLocals:0 client:0 outbox:0];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 mailboxType] == 7)
        {
          v11 = [(MailAppController *)self getMailboxListViewControllerMail];
          [v11 setSelectedMailbox:v10];

          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)switchToDesiredMailbox
{
  if (qword_1006DCF98)
  {
    v5 = [(MailAppController *)self getMailboxWithName:?];
    if (v5)
    {
      v3 = [(MailAppController *)self getMailboxListViewControllerMail];
      [v3 setSelectedMailbox:v5];
    }
  }

  else
  {
    [(MailAppController *)self switchToInbox];
  }

  v6 = +[NSRunLoop currentRunLoop];
  v4 = [NSDate dateWithTimeIntervalSinceNow:1.0];
  [v6 runUntilDate:v4];

  if (+[UIDevice mf_isPadIdiom](UIDevice, "mf_isPadIdiom") && [qword_1006DCF88 rangeOfString:@"DismissCompose"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(MailAppController *)self getMessageListViewController];
    [v7 selectMessageAtIndex:0];
  }
}

- (void)waitForUIToSettleDown
{
  if (+[UIDevice mf_isPadIdiom])
  {
    v3 = [(MailAppController *)self getMessageListViewController];

    if (!v3)
    {
      v5 = +[NSRunLoop currentRunLoop];
      v4 = [NSDate dateWithTimeIntervalSinceNow:2.0];
      [v5 runUntilDate:v4];
    }
  }
}

- (id)_prepareForScrollMessagesTest:(id)a3 inEditMode:(BOOL)a4 currentDelay:(double *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [(MailAppController *)self getMessageListViewController];
  v10 = v9;
  if (v9)
  {
    if (a5)
    {
      v11 = *a5;
    }

    else
    {
      v11 = 0.0;
    }

    [v9 setEditing:0 animated:0];
    if (+[UIDevice mf_isPadIdiom])
    {
      v11 = v11 + 2.0;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1000D8E0C;
      v24[3] = &unk_10064C7E8;
      v25 = v10;
      [EFScheduler mf_afterUIDelay:v24 performBlock:v11];
    }

    v13 = v11 + 2.0;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000D8E18;
    v23[3] = &unk_10064C7E8;
    v23[4] = self;
    [EFScheduler mf_afterUIDelay:v23 performBlock:v13];
    if ((qword_1006DCFB8 - 1) <= 1)
    {
      v13 = v13 + 2.0;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000D8E24;
      v22[3] = &unk_10064C7E8;
      v22[4] = self;
      [EFScheduler mf_afterUIDelay:v22 performBlock:v13];
    }

    if (v6)
    {
      v13 = v13 + 2.0;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000D8E30;
      v20[3] = &unk_10064C7E8;
      v21 = v10;
      [EFScheduler mf_afterUIDelay:v20 performBlock:v13];
    }

    if (EMBlackPearlIsFeatureEnabled())
    {
      v14 = [v8 objectForKeyedSubscript:@"testName"];
      v15 = [v14 mf_containsSubstring:@"SenderListNatural"];

      if (v15)
      {
        v13 = v13 + 2.0;
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_1000D8E38;
        v18[3] = &unk_10064C660;
        v18[4] = self;
        v19 = v10;
        [EFScheduler mf_afterUIDelay:v18 performBlock:v13];
      }
    }

    if (a5)
    {
      *a5 = v13;
    }

    v16 = v10;
  }

  else
  {
    v12 = [v8 objectForKey:@"testName"];
    [(MailAppController *)self failedTest:v12];
  }

  return v10;
}

- (void)_showMessageListView:(BOOL)a3
{
  v3 = a3;
  v5 = [(MailAppController *)self mostRecentMainScene];
  v4 = [v5 splitViewController];
  [v4 showMessageListViewController:1 animated:v3 completion:0];
}

- (void)_performScrollTestOnMessageListOnCollectionView:(id)a3 withOptions:(id)a4 isNatural:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = +[MailAppController log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Starting to perform scroll test", v29, 2u);
  }

  if (v8)
  {
    if (v5)
    {
LABEL_5:
      v11 = [RPTScrollViewTestParameters alloc];
      v12 = [v9 mf_testName];
      v13 = [v11 initWithTestName:v12 scrollView:v8 completionHandler:0];

      [v9 mf_pages];
      RPTAmplitudeFromPagesOfView();
      [v13 setAmplitude:v14 * 0.8];
      [v13 setDirection:3];
      [v13 setIterationDurationFactor:0.9];
      RPTGetBoundsForView();
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      [v8 adjustedContentInset];
      v24 = v23;
      [v8 adjustedContentInset];
      [v13 setScrollingBounds:{v16 + 0.0, v18 + v24, v20, v22 - (v24 + v25 + 5.0)}];
      [RPTTestRunner runTestWithParameters:v13];
      goto LABEL_11;
    }
  }

  else
  {
    v26 = [(MailAppController *)self getMessageListViewController];
    v8 = [v26 collectionView];

    if (v5)
    {
      goto LABEL_5;
    }
  }

  v27 = [v8 desiredScrollLength:v9];
  if (v27 >= 0)
  {
    v28 = v27;
  }

  else
  {
    v28 = v27 + 15;
  }

  v13 = [v9 mf_testName];
  [v8 _performScrollTest:v13 iterations:objc_msgSend(v9 delta:"mf_iterations") length:{objc_msgSend(v9, "mf_scrollOffset"), (v28 >> 4)}];
LABEL_11:
}

- (id)_prepareForScrollMailboxesTest:(id)a3
{
  v4 = a3;
  if ((+[UIDevice mf_isPadIdiom]& 1) != 0)
  {
    v5 = [(MailAppController *)self getMessageListViewController];
    v6 = v5;
    if (v5)
    {
      [v5 setEditing:0 animated:0];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000D94D4;
      v18[3] = &unk_10064C7E8;
      v19 = v6;
      [EFScheduler mf_afterUIDelay:v18 performBlock:2.0];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000D94E0;
      v17[3] = &unk_10064C7E8;
      v17[4] = self;
      [EFScheduler mf_afterUIDelay:v17 performBlock:4.0];
      if ((qword_1006DCFB8 - 1) <= 1)
      {
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_1000D94EC;
        v16[3] = &unk_10064C7E8;
        v16[4] = self;
        [EFScheduler mf_afterUIDelay:v16 performBlock:6.0];
      }
    }

    v7 = [(MailAppController *)self getMailboxPickerController];
    v8 = v7;
    if (v7)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000D94F8;
      v14[3] = &unk_10064C660;
      v14[4] = self;
      v9 = v7;
      v15 = v9;
      [EFScheduler mf_afterUIDelay:v14 performBlock:8.0];
      v10 = v9;
    }

    else
    {
      v12 = [v4 objectForKey:@"testName"];
      [(MailAppController *)self failedTest:v12];
    }
  }

  else
  {
    v11 = [v4 objectForKey:@"testName"];
    [(MailAppController *)self failedTest:v11];

    v8 = 0;
  }

  return v8;
}

- (void)startScrollMessagesInEditModeWithSelectionTest:(id)a3
{
  v6 = a3;
  v4 = [MailAppController _prepareForScrollMessagesTest:"_prepareForScrollMessagesTest:inEditMode:currentDelay:" inEditMode:? currentDelay:?];

  if (!v4)
  {
    v5 = [v6 objectForKey:@"testName"];
    [(MailAppController *)self failedTest:v5];
  }
}

- (void)startScrollMessagesInEditModeTest:(id)a3
{
  v4 = a3;
  v5 = [(MailAppController *)self _prepareForScrollMessagesTest:v4 inEditMode:1 currentDelay:0];

  if (v5)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000D9744;
    v7[3] = &unk_10064C660;
    v7[4] = self;
    v8 = v4;
    [EFScheduler mf_afterUIDelay:v7 performBlock:12.0];
  }

  else
  {
    v6 = [v4 objectForKey:@"testName"];
    [(MailAppController *)self failedTest:v6];
  }
}

- (void)startSenderListSelectionTestWithOptions:(id)a3
{
  v4 = a3;
  v12 = 0.0;
  v5 = [(MailAppController *)self _prepareForScrollMessagesTest:v4 inEditMode:0 currentDelay:&v12];
  if (v5)
  {
    v6 = [v4 mf_testName];
    v12 = v12 + 2.0;
    v7 = v12;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000D98A8;
    v9[3] = &unk_10064C6B0;
    v9[4] = self;
    v10 = v6;
    v11 = v5;
    v8 = v6;
    [EFScheduler mf_afterUIDelay:v9 performBlock:v7];
  }
}

- (void)reallyStartScrollMessageViewListTest:(id)a3
{
  v14 = a3;
  v4 = [v14 objectForKey:@"testName"];
  [(MailAppController *)self startedTest:v4];

  v5 = [(MailAppController *)self getMessageListViewController];
  v6 = [v5 collectionView];
  v7 = [v6 desiredScrollLength:v14];
  if (v7 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = v7 + 15;
  }

  v9 = [v5 collectionView];
  v10 = [v14 objectForKey:@"testName"];
  v11 = [v14 objectForKey:@"iterations"];
  v12 = [v11 intValue];
  v13 = [v14 objectForKey:@"offset"];
  [v9 _performScrollTest:v10 iterations:v12 delta:objc_msgSend(v13 length:{"intValue"), (v8 >> 4)}];
}

- (void)startScrollMessageListTest:(id)a3 withOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[UIDevice mf_isPadIdiom])
  {
    if ([v6 mf_isScrollMessageListTest])
    {
      [(MailAppController *)self _prepareForScrollMessagesTest:v7 inEditMode:0 currentDelay:0];
    }

    else
    {
      [(MailAppController *)self _prepareForScrollMailboxesTest:v7];
    }
    v8 = ;
    v9 = v8;
    if (!v8)
    {
      [(MailAppController *)self failedTest:v6];
      goto LABEL_12;
    }

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000D9E8C;
    v20[3] = &unk_10064E348;
    v20[4] = self;
    v21 = v8;
    v22 = v7;
    v23 = v6;
    [EFScheduler mf_afterUIDelay:v20 performBlock:12.0];

    v13 = v21;
  }

  else
  {
    v19 = 0.0;
    v9 = [(MailAppController *)self _prepareForScrollMessagesTest:v7 inEditMode:0 currentDelay:&v19];
    v19 = v19 + 2.0;
    v10 = [v6 hasSuffix:@"Natural"];
    v11 = v19;
    if (v10)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000D9F18;
      v16[3] = &unk_10064C6B0;
      v16[4] = self;
      v17 = v9;
      v18 = v7;
      [EFScheduler mf_afterUIDelay:v16 performBlock:v11];
      v12 = &v17;
    }

    else
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000D9F8C;
      v14[3] = &unk_10064C660;
      v14[4] = self;
      v15 = v7;
      [EFScheduler mf_afterUIDelay:v14 performBlock:v11];
      v12 = &v15;
    }

    v13 = *v12;
  }

LABEL_12:
}

- (void)startScrollMessageListSearchTestWithOptions:(id)a3
{
  v4 = a3;
  v29 = 1.0;
  v5 = [(MailAppController *)self _prepareForScrollMessagesTest:v4 inEditMode:0 currentDelay:&v29];
  v6 = [v5 conversationViewController];
  if (+[UIDevice mf_isPadIdiom])
  {
    if ((qword_1006DCFB8 - 1) <= 1)
    {
      v29 = v29 + 1.0;
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1000DA32C;
      v28[3] = &unk_10064C7E8;
      v28[4] = self;
      [EFScheduler mf_afterUIDelay:v28 performBlock:?];
    }
  }

  else if (!v5 || [v6 isFullyVisible])
  {
    v29 = v29 + 1.0;
    v7 = [v5 navigationController];
    v8 = [v7 popToViewController:v5 animated:1];

    [(MailAppController *)self _waitForTimeInterval:v29];
  }

  v29 = v29 + 1.0;
  v9 = v29;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000DA338;
  v25[3] = &unk_10064C660;
  v10 = v5;
  v26 = v10;
  v11 = v4;
  v27 = v11;
  [EFScheduler mf_afterUIDelay:v25 performBlock:v9];
  v29 = v29 + 1.0;
  v12 = v29;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000DA3F8;
  v21[3] = &unk_10064C6B0;
  v13 = v10;
  v22 = v13;
  v23 = self;
  v14 = v11;
  v24 = v14;
  [EFScheduler mf_afterUIDelay:v21 performBlock:v12];
  v29 = v29 + 1.0;
  v15 = v29;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000DA708;
  v18[3] = &unk_10064C6B0;
  v18[4] = self;
  v16 = v14;
  v19 = v16;
  v17 = v13;
  v20 = v17;
  [EFScheduler mf_afterUIDelay:v18 performBlock:v15];
}

- (void)startSearchWhileTypingTestWithOptions:(id)a3
{
  v51 = 0.5;
  v30 = a3;
  v26 = [v30 objectForKey:@"testName"];
  v29 = [(MailAppController *)self _prepareForScrollMessagesTest:v30 inEditMode:0 currentDelay:&v51];
  v28 = [v29 conversationViewController];
  v25 = [v29 presentedViewController];
  v4 = [v25 searchResultsUpdater];
  v31 = self;
  v5 = [v30 objectForKeyedSubscript:@"searchStrings"];
  v27 = [v5 componentsSeparatedByString:@" "];

  v6 = v29;
  v7 = v31;
  if (+[UIDevice mf_isPadIdiom]&& (qword_1006DCFB8 - 1) <= 1)
  {
    v51 = v51 + 0.5;
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_1000DADF4;
    v50[3] = &unk_10064C7E8;
    v50[4] = v31;
    [EFScheduler mf_afterUIDelay:v50 performBlock:?];
  }

  else if (!v29 || [v28 isFullyVisible])
  {
    v51 = v51 + 0.5;
    v8 = [v29 navigationController];
    v9 = [v8 popToViewController:v29 animated:1];

    v7 = v31;
    v6 = v29;
    [(MailAppController *)v31 _waitForTimeInterval:v51];
  }

  v51 = v51 + 0.5;
  v10 = v51;
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_1000DAE00;
  v47[3] = &unk_10064C6B0;
  v47[4] = v7;
  v11 = v26;
  v48 = v11;
  v12 = v6;
  v49 = v12;
  [EFScheduler mf_afterUIDelay:v47 performBlock:v10];
  v51 = v51 + 1.0;
  v13 = [v30 objectForKeyedSubscript:@"timeBetweenLetters"];
  [v13 floatValue];
  v15 = v14;

  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  v43 = 0u;
  obj = v27;
  v16 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v16)
  {
    v17 = v15;
    v33 = *v44;
    do
    {
      v18 = 0;
      v34 = v16;
      do
      {
        if (*v44 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v19 = 0;
        v20 = *(*(&v43 + 1) + 8 * v18);
        while (v19 < [v20 length] + 1)
        {
          v21 = v51;
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_1000DAE44;
          v38[3] = &unk_10064C900;
          v39 = v12;
          v40 = v20;
          v42 = v19;
          v41 = v4;
          [EFScheduler mf_afterUIDelay:v38 performBlock:v21];
          v51 = v51 + v17;

          ++v19;
        }

        v18 = v18 + 1;
      }

      while (v18 != v34);
      v16 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v16);
  }

  v22 = v51;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000DAF48;
  v35[3] = &unk_10064C6B0;
  v35[4] = v31;
  v23 = v11;
  v36 = v23;
  v24 = v12;
  v37 = v24;
  [EFScheduler mf_afterUIDelay:v35 performBlock:v22];
}

- (void)_reallyStartShowComposeTest:(id)a3
{
  v4 = a3;
  v5 = [[_MFMailCompositionContext alloc] initWithComposeType:0];
  [v5 setShowKeyboardImmediately:1];
  v6 = MFMailComposeViewDidShow;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000DB21C;
  v18[3] = &unk_10064F9F0;
  v18[4] = self;
  v7 = v4;
  v19 = v7;
  [(MailAppController *)self installNotificationObserverForNotificationName:v6 forOneNotification:1 usingBlock:v18];
  if ((+[UIDevice mf_isPadIdiom]& 1) == 0)
  {
    v8 = MFMailComposeViewDidAnimate;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000DB230;
    v16[3] = &unk_10064F9F0;
    v16[4] = self;
    v17 = v7;
    [(MailAppController *)self installNotificationObserverForNotificationName:v8 forOneNotification:1 usingBlock:v16];
  }

  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1000DB248;
  v13 = &unk_10064F9F0;
  v14 = self;
  v9 = v7;
  v15 = v9;
  [(MailAppController *)self installNotificationObserverForNotificationName:UIKeyboardDidShowNotification forOneNotification:1 usingBlock:&v10];
  [(MailAppController *)self startedTest:v9, v10, v11, v12, v13, v14];
  [(MailAppController *)self startedSubTest:@"ComposeViewAnimationStart" forTest:v9];
  [(MailAppController *)self showComposeWithContext:v5 animated:1 initialTitle:0 completionBlock:0];
}

- (void)_finishTestIfComposeAndKeyboardDidShow:(id)a3
{
  v4 = a3;
  if ((+[UIDevice mf_isPadIdiom]& 1) != 0 || byte_1006DCFC0 == 1 && byte_1006DCFC1 == 1)
  {
    [(MailAppController *)self _finishTestDismissingReply:v4];
    byte_1006DCFC0 = 0;
    byte_1006DCFC1 = 0;
  }
}

- (void)_reallyStartShowEmptyComposeTest:(id)a3
{
  v4 = a3;
  v5 = MFMailComposeViewDidShow;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000DB4AC;
  v15[3] = &unk_10064F9F0;
  v15[4] = self;
  v6 = v4;
  v16 = v6;
  [(MailAppController *)self installNotificationObserverForNotificationName:v5 forOneNotification:1 usingBlock:v15];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1000DB4C0;
  v12 = &unk_10064F9F0;
  v13 = self;
  v7 = v6;
  v14 = v7;
  [(MailAppController *)self installNotificationObserverForNotificationName:UIKeyboardDidShowNotification forOneNotification:1 usingBlock:&v9];
  [(MailAppController *)self startedTest:v7, v9, v10, v11, v12, v13];
  [(MailAppController *)self startedSubTest:@"ComposeViewAnimationStart" forTest:v7];
  v8 = [(MailAppController *)self mostRecentMainScene];
  [v8 composeButtonPressed:0];
}

- (void)_reallyStartShowEmptyComposeAnimationTest:(id)a3 composeButtonItem:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DB5B0;
  v7[3] = &unk_10064C6B0;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(MailAppController *)v8 installCACommitCompletionBlock:v7];
}

- (void)_prepareForShowComposeTest:(id)a3
{
  v4 = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000DB7E0;
  v8[3] = &unk_10064C7E8;
  v8[4] = self;
  [EFScheduler mf_afterUIDelay:v8 performBlock:2.0];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000DB7EC;
  v6[3] = &unk_10064C660;
  v6[4] = self;
  v5 = v4;
  v7 = v5;
  [EFScheduler mf_afterUIDelay:v6 performBlock:4.0];
}

- (void)searchPseudoContact:(id)a3
{
  v11 = a3;
  v4 = [(MailAppController *)self dockContainer];
  v5 = [v4 activeViewController];

  if (v5)
  {
    v6 = [v5 _mailComposeController];
    v7 = [v6 mailComposeView];
    v8 = [v7 toField];

    v9 = [v8 textView];
    [v9 setText:v11];

    v10 = [v8 textView];
    [v8 textViewDidChange:v10];
  }
}

- (void)scrollPseudoContactList:(id)a3
{
  v15 = a3;
  v4 = [(MailAppController *)self dockContainer];
  v5 = [v4 activeViewController];

  v6 = [v5 _mailComposeController];
  v7 = [v6 mailComposeView];
  v8 = [v7 searchTableView];

  v9 = [v15 objectForKey:@"offset"];
  v10 = [v9 intValue];

  v11 = [v15 objectForKey:@"iterations"];
  v12 = [v11 intValue];

  v13 = [v8 desiredScrollLength:v15];
  v14 = [v15 objectForKey:@"testName"];
  [v8 _performScrollTest:v14 iterations:v12 delta:v10 length:v13];
}

- (void)_reallyStartComposeToPseudoContactTest:(id)a3 withOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[_MFMailCompositionContext alloc] initWithComposeType:0];
  [v8 setShowKeyboardImmediately:1];
  v9 = [v7 objectForKey:@"PseudoContact"];
  v10 = MFMailComposeViewDidShow;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000DBCF0;
  v20[3] = &unk_10064F9F0;
  v20[4] = self;
  v11 = v9;
  v21 = v11;
  [(MailAppController *)self installNotificationObserverForNotificationName:v10 forOneNotification:1 usingBlock:v20];
  v12 = MFMailComposeViewDidSortSearchResults;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1000DBCFC;
  v17 = &unk_10064F9F0;
  v18 = self;
  v13 = v6;
  v19 = v13;
  [(MailAppController *)self installNotificationObserverForNotificationName:v12 forOneNotification:1 usingBlock:&v14];
  [(MailAppController *)self showComposeWithContext:v8 animated:1 initialTitle:0 completionBlock:0, v14, v15, v16, v17, v18];
  [(MailAppController *)self startedTest:v13];
}

- (void)_reallyStartScrollPseudoContactTest:(id)a3 withOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[_MFMailCompositionContext alloc] initWithComposeType:0];
  [v8 setShowKeyboardImmediately:1];
  v9 = [v7 objectForKey:@"PseudoContact"];
  v10 = MFMailComposeViewDidShow;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000DBF04;
  v20[3] = &unk_10064F9F0;
  v20[4] = self;
  v11 = v9;
  v21 = v11;
  [(MailAppController *)self installNotificationObserverForNotificationName:v10 forOneNotification:1 usingBlock:v20];
  v12 = MFMailComposeViewDidSortSearchResults;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1000DBF10;
  v17 = &unk_10064F9F0;
  v18 = self;
  v13 = v7;
  v19 = v13;
  [(MailAppController *)self installNotificationObserverForNotificationName:v12 forOneNotification:1 usingBlock:&v14];
  [(MailAppController *)self showComposeWithContext:v8 animated:1 initialTitle:0 completionBlock:0, v14, v15, v16, v17, v18];
  [(MailAppController *)self startedTest:v6];
}

- (void)_prepareForComposePseudoContactTest:(id)a3 withOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000DC07C;
  v13[3] = &unk_10064C7E8;
  v13[4] = self;
  [EFScheduler mf_afterUIDelay:v13 performBlock:2.0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000DC088;
  v10[3] = &unk_10064C6B0;
  v10[4] = self;
  v8 = v6;
  v11 = v8;
  v9 = v7;
  v12 = v9;
  [EFScheduler mf_afterUIDelay:v10 performBlock:4.0];
}

- (void)_prepareForScrollPseudoContactTest:(id)a3 withOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000DC1F8;
  v13[3] = &unk_10064C7E8;
  v13[4] = self;
  [EFScheduler mf_afterUIDelay:v13 performBlock:2.0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000DC204;
  v10[3] = &unk_10064C6B0;
  v10[4] = self;
  v8 = v6;
  v11 = v8;
  v9 = v7;
  v12 = v9;
  [EFScheduler mf_afterUIDelay:v10 performBlock:4.0];
}

- (void)tearDownPhotoPickerTest
{
  v3 = [(MailAppController *)self dockContainer];
  v6 = [v3 activeViewController];

  v4 = v6;
  if (v6)
  {
    v5 = [v6 _mailComposeController];
    [(MailAppController *)self _dismissComposeViewController:v5 animated:0];

    v4 = v6;
  }
}

- (void)_startPhotoPickerTest:(id)a3
{
  v4 = a3;
  v5 = MFMailComposeViewDidShow;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1000DC3FC;
  v13 = &unk_10064F9F0;
  v6 = v4;
  v14 = v6;
  v15 = self;
  [(MailAppController *)self installNotificationObserverForNotificationName:v5 forOneNotification:1 usingBlock:&v10];
  v7 = [_MFMailCompositionContext alloc];
  v8 = [NSURL URLWithString:@"mailto:foo@bar.com", v10, v11, v12, v13];
  v9 = [v7 initWithURL:v8];

  [(MailAppController *)self showComposeWithContext:v9 animated:1 initialTitle:0 completionBlock:0];
}

- (void)_showPhotoPickerWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(MailAppController *)self dockContainer];
  v5 = [v4 activeViewController];

  if (v5)
  {
    v6 = [v5 _mailComposeController];
    [v6 insertPhotoOrVideo];
    [(MailAppController *)self installCACommitCompletionBlock:v7];
  }
}

- (void)_dismissPhotoPickerWithCompletion:(id)a3
{
  v8 = a3;
  v4 = [(MailAppController *)self dockContainer];
  v5 = [v4 activeViewController];

  if (v5)
  {
    v6 = [v5 _mailComposeController];
    v7 = [v6 presentedViewController];
    [v6 imagePickerControllerDidCancel:v7];
    if (v8)
    {
      v8[2]();
    }
  }
}

- (void)startPhotoPickerTest:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"testName"];
  v6 = [(MailAppController *)self _prepareForComposeView:v5];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000DC8F0;
  v8[3] = &unk_10064C660;
  v8[4] = self;
  v7 = v5;
  v9 = v7;
  [EFScheduler mf_afterUIDelay:v8 performBlock:4.0];
}

- (void)startShowComposeTest:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"testName"];
  v6 = [(MailAppController *)self _prepareForScrollMessagesTest:v4 inEditMode:0 currentDelay:0];
  v7 = [(MailAppController *)self _prepareForComposeView:v5];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000DCA20;
  v9[3] = &unk_10064C660;
  v9[4] = self;
  v8 = v5;
  v10 = v8;
  [EFScheduler mf_afterUIDelay:v9 performBlock:4.0];
}

- (void)startShowEmptyComposeTest:(id)a3
{
  v4 = a3;
  v5 = [v4 mf_testName];
  v6 = [(MailAppController *)self _prepareForComposeView:v5];
  if ([v5 mf_containsSubstring:@"Animation"])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000DCBE4;
    v10[3] = &unk_10064C6B0;
    v10[4] = self;
    v11 = v5;
    v12 = v6;
    [EFScheduler mf_afterUIDelay:v10 performBlock:4.0];
    v7 = &v11;
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000DCBF4;
    v8[3] = &unk_10064C660;
    v8[4] = self;
    v9 = v5;
    [EFScheduler mf_afterUIDelay:v8 performBlock:4.0];
    v7 = &v9;
  }
}

- (void)startComposeToPseudoContactTest:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"testName"];
  v6 = [(MailAppController *)self _prepareForComposeView:v5];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000DCD2C;
  v9[3] = &unk_10064C6B0;
  v9[4] = self;
  v7 = v5;
  v10 = v7;
  v8 = v4;
  v11 = v8;
  [EFScheduler mf_afterUIDelay:v9 performBlock:4.0];
}

- (void)startScrollPseudoContactTest:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"testName"];
  v6 = [(MailAppController *)self _prepareForComposeView:v5];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000DCE68;
  v9[3] = &unk_10064C6B0;
  v9[4] = self;
  v7 = v5;
  v10 = v7;
  v8 = v4;
  v11 = v8;
  [EFScheduler mf_afterUIDelay:v9 performBlock:4.0];
}

- (id)_prepareForComposeView:(id)a3
{
  v4 = a3;
  v5 = [(MailAppController *)self getMessageListViewController];
  v6 = v5;
  if (v5)
  {
    [v5 setEditing:0 animated:0];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000DCF94;
    v9[3] = &unk_10064C7E8;
    v9[4] = self;
    [EFScheduler mf_afterUIDelay:v9 performBlock:2.0];
    v7 = [v6 composeButtonItem];
  }

  else
  {
    [(MailAppController *)self failedTest:v4];
    v7 = 0;
  }

  return v7;
}

- (void)_reallyStartDismissComposeTest:(id)a3
{
  v4 = a3;
  v5 = [(MailAppController *)self dockContainer];
  v6 = [v5 activeViewController];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 _mailComposeController];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000DD208;
      v15[3] = &unk_10064F9F0;
      v15[4] = self;
      v8 = v4;
      v16 = v8;
      [(MailAppController *)self installNotificationObserverForNotificationName:UIKeyboardDidHideNotification forOneNotification:1 usingBlock:v15];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000DD218;
      v12[3] = &unk_10064C6B0;
      v12[4] = self;
      v13 = v8;
      v9 = v7;
      v14 = v9;
      [(MailAppController *)self installCACommitCompletionBlock:v12];
    }

    else
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v9 = [NSString stringWithFormat:@"activeViewController is not a ComposeNavigationController. It is a %@", v11];

      [(MailAppController *)self failedTest:v4 withFailure:v9];
    }
  }

  else
  {
    [(MailAppController *)self failedTest:v4 withFailure:@"Unable to get the active ViewController"];
  }
}

- (void)_prepareForDismissComposeTest:(id)a3
{
  v4 = a3;
  if (![(MailAppController *)self isComposeWindowActive])
  {
    v5 = [(MailAppController *)self getMessageListViewController];
    v6 = v5;
    if (!v5)
    {
      [(MailAppController *)self failedTest:v4];
      goto LABEL_5;
    }

    [v5 setEditing:0 animated:0];
    v7 = [_MFMailCompositionContext alloc];
    v8 = [NSURL URLWithString:@"mailto:"];
    v9 = [v7 initWithURL:v8];

    [v9 setShowKeyboardImmediately:1];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000DD478;
    v13[3] = &unk_10064C660;
    v13[4] = self;
    v10 = v9;
    v14 = v10;
    [EFScheduler mf_afterUIDelay:v13 performBlock:2.0];
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000DD490;
  v11[3] = &unk_10064C660;
  v11[4] = self;
  v12 = v4;
  [EFScheduler mf_afterUIDelay:v11 performBlock:4.0];

LABEL_5:
}

- (void)startDismissComposeTest:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000DD554;
  v4[3] = &unk_10064C660;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  [EFScheduler mf_afterUIDelay:v4 performBlock:3.0];
}

- (void)startRotationTest:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"testName"];
  v6 = [(MailAppController *)self getMessageListViewController];
  v7 = v6;
  if (v6)
  {
    [v6 setEditing:0 animated:0];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000DD75C;
    v10[3] = &unk_10064C7E8;
    v10[4] = self;
    [EFScheduler mf_afterUIDelay:v10 performBlock:2.0];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000DD768;
    v8[3] = &unk_10064C660;
    v8[4] = self;
    v9 = v5;
    [EFScheduler mf_afterUIDelay:v8 performBlock:4.0];
  }

  else
  {
    [(MailAppController *)self failedTest:v5];
  }
}

- (void)_reallyStartRotationTest:(id)a3
{
  v3[4] = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000DD828;
  v4[3] = &unk_10064C7E8;
  v4[4] = self;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000DD8F0;
  v3[3] = &unk_10064C7E8;
  [(MailAppController *)self runTestForKeyboardRotationWithName:a3 fromOrientation:qword_1006DCFB8 withShowKeyboardBlock:v4 withExtraResultsBlock:0 withCleanupBlock:v3];
}

- (void)_reallyStartExitEditModeTest:(id)a3
{
  v6 = a3;
  v4 = [(MailAppController *)self getMessageListViewController];
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"_didFinishExitEditModeTest:" name:@"DidFinishExitEditModeTest" object:0];

    [(MailAppController *)self startedTest:v6];
    [v4 setEditing:0 animated:1];
  }

  else
  {
    [(MailAppController *)self failedTest:v6];
  }
}

- (void)startExitEditModeTest:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"testName"];
  v6 = [(MailAppController *)self _prepareForScrollMessagesTest:v4 inEditMode:1 currentDelay:0];

  if (v6)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000DDB10;
    v7[3] = &unk_10064C660;
    v7[4] = self;
    v8 = v5;
    [EFScheduler mf_afterUIDelay:v7 performBlock:12.0];
  }

  else
  {
    [(MailAppController *)self failedTest:v5];
  }
}

- (void)_didFinishExitEditModeTest:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000DDB98;
  v3[3] = &unk_10064C7E8;
  v3[4] = self;
  [(MailAppController *)self finishedTest:qword_1006DCF88 extraResults:0 withTeardownBlock:v3];
}

- (void)_reallyStartMessageTransferTest:(id)a3 mailboxController:(id)a4
{
  v7 = a3;
  v5 = [(MailAppController *)self getAccount];
  v6 = [v5 mailboxUidOfType:3 createIfNeeded:0];

  if (v6)
  {
    [(MailAppController *)self runTest:v7 forAnimation:@"MessageToPointAnimation"];
  }

  else
  {
    [(MailAppController *)self failedTest:v7];
  }
}

- (void)startMessageTransferTest:(id)a3 multiSelect:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(MailAppController *)self _prepareForScrollMessagesTest:v6 inEditMode:1 currentDelay:0];
  v8 = [v6 objectForKey:@"testName"];
  if (v7)
  {
    v9 = [(MailAppController *)self getAccount];
    v10 = [v9 mailboxUidOfType:3 createIfNeeded:1];

    if (v10)
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000DDFF0;
      v20[3] = &unk_10064C7E8;
      v11 = v7;
      v21 = v11;
      [EFScheduler mf_afterUIDelay:v20 performBlock:12.0];
      if (v4)
      {
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_1000DDFFC;
        v18[3] = &unk_10064C7E8;
        v12 = v11;
        v19 = v12;
        [EFScheduler mf_afterUIDelay:v18 performBlock:13.0];
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_1000DE008;
        v16[3] = &unk_10064C7E8;
        v17 = v12;
        [EFScheduler mf_afterUIDelay:v16 performBlock:14.0];
      }

      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000DE014;
      v13[3] = &unk_10064C6B0;
      v13[4] = self;
      v14 = v8;
      v15 = v11;
      [EFScheduler mf_afterUIDelay:v13 performBlock:18.0];
    }

    else
    {
      [(MailAppController *)self failedTest:v8];
    }
  }

  else
  {
    [(MailAppController *)self failedTest:v8];
  }
}

- (void)startMessageDeleteTest:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"testName"];
  if ((+[UIDevice mf_isPadIdiom]& 1) != 0)
  {
    v6 = [(MailAppController *)self getMessageListViewController];
    v7 = v6;
    if (v6)
    {
      [v6 setEditing:0 animated:0];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000DE208;
      v10[3] = &unk_10064C7E8;
      v11 = v7;
      [EFScheduler mf_afterUIDelay:v10 performBlock:2.0];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1000DE214;
      v8[3] = &unk_10064C660;
      v8[4] = self;
      v9 = v5;
      [EFScheduler mf_afterUIDelay:v8 performBlock:4.0];
    }

    else
    {
      [(MailAppController *)self failedTest:v5];
    }
  }

  else
  {
    [(MailAppController *)self failedTest:v5];
  }
}

- (void)_messageContentLayerFinished
{
  if ([qword_1006DCF88 isEqualToString:@"MessageIteration"])
  {
    [(MailAppController *)self finishedSubTest:@"MessageLoad" forTest:qword_1006DCF88];
    v3 = [(MailAppController *)self getMessageListViewController];
    v4 = v3;
    if (!v3)
    {
LABEL_32:

      return;
    }

    v5 = [v3 conversationViewController];
    v31 = [v5 referenceMessageListItem];

    if (dword_1006DCFC8 < 1)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v17 = [qword_1006DCFA0 allValues];
      v18 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v18)
      {
        v19 = *v33;
        v20 = 0.0;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v33 != v19)
            {
              objc_enumerationMutation(v17);
            }

            [*(*(&v32 + 1) + 8 * i) doubleValue];
            v20 = v20 + v22;
          }

          v18 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v18);
      }

      else
      {
        v20 = 0.0;
      }

      v23 = qword_1006DCFA0;
      v24 = [NSNumber numberWithDouble:Current - *&qword_1006DCFD0];
      [v23 setObject:v24 forKey:@"time"];

      v25 = qword_1006DCFA0;
      v26 = [NSNumber numberWithDouble:v20 / (Current - *&qword_1006DCFD0) * 100.0];
      [v25 setObject:v26 forKey:@"MMMessageDisplayPercentage"];

      [qword_1006DCFA0 setObject:@"percent" forKey:@"MMMessageDisplayPercentageUnits"];
      [(MailAppController *)self finishedTest:@"MessageIteration" extraResults:qword_1006DCFA0];
      v27 = qword_1006DCF88;
      qword_1006DCF88 = 0;

      v28 = qword_1006DCFA0;
      qword_1006DCFA0 = 0;

      goto LABEL_31;
    }

    v6 = [v4 dataSource];
    v7 = [v6 collectionViewDataSource];

    v8 = [v7 snapshot];
    v9 = [v31 itemID];
    v10 = [v7 indexPathForItemIdentifier:v9];

    v11 = [v10 row];
    v12 = [v10 section];
    v13 = [v8 numberOfItems];
    v14 = byte_1006DCFC4;
    if (v13 - 1 == v11)
    {
      v15 = byte_1006DCFC4;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      if (v11)
      {
        v14 = 0;
      }

      if (v14 != 1)
      {
        goto LABEL_27;
      }

      if (v12)
      {
        v11 = [v8 numberOfSections];
LABEL_27:
        v29 = byte_1006DCFC4;
        [(MailAppController *)self startedSubTest:@"MessageLoad" forTest:qword_1006DCF88];
        if (v29)
        {
          v30 = v11 - 1;
        }

        else
        {
          v30 = v11 + 1;
        }

        --dword_1006DCFC8;
        [v4 selectMessageAtIndex:v30];

LABEL_31:
        goto LABEL_32;
      }

      v11 = 0;
    }

    else if (v12 != [v8 numberOfSections])
    {
      v11 = -1;
      goto LABEL_27;
    }

    byte_1006DCFC4 = v15 ^ 1;
    goto LABEL_27;
  }
}

- (void)startMessageIterationTest:(id)a3
{
  v6 = a3;
  v4 = [v6 objectForKey:@"iterations"];
  dword_1006DCFC8 = [v4 intValue];

  qword_1006DCFD0 = CFAbsoluteTimeGetCurrent();
  [(MailAppController *)self startedTest:qword_1006DCF88];
  [(MailAppController *)self startedSubTest:@"MessageLoad" forTest:qword_1006DCF88];
  v5 = [(MailAppController *)self _prepareForScrollMessagesTest:v6 inEditMode:0 currentDelay:0];
  [v5 selectMessageAtIndex:0];
}

- (void)startMailboxFilterEnableTestWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(MailAppController *)self _prepareForScrollMessagesTest:v4 inEditMode:0 currentDelay:0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000DE840;
  v8[3] = &unk_10064C6B0;
  v6 = v4;
  v9 = v6;
  v10 = self;
  v11 = v5;
  v7 = v5;
  [v7 _doOnInitialLoadCompletion:v8];
}

- (void)startMailboxFilterDisableTestWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(MailAppController *)self _prepareForScrollMessagesTest:v4 inEditMode:0 currentDelay:0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000DEB0C;
  v8[3] = &unk_10064C6B0;
  v6 = v4;
  v9 = v6;
  v10 = self;
  v11 = v5;
  v7 = v5;
  [v7 _doOnInitialLoadCompletion:v8];
}

- (void)startMailboxFilterPickerEnableTestWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(MailAppController *)self getMessageListViewController];
  [v4 mf_testName];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000DEE38;
  v8[3] = &unk_10064FA18;
  v6 = v8[4] = self;
  v9 = v6;
  v7 = v5;
  v10 = v7;
  [(MailAppController *)self installNotificationObserverForNotificationName:@"MFMailboxFilterPickerViewControllerDidShow" forOneNotification:1 usingBlock:v8];
  [(MailAppController *)self startedTest:v6];
}

- (void)startMailboxFilterPickerDisableTestWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(MailAppController *)self getMessageListViewController];
  v6 = [v4 mf_testName];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000DF0C4;
  v9[3] = &unk_10064FA18;
  v7 = v5;
  v10 = v7;
  v11 = self;
  v8 = v6;
  v12 = v8;
  [(MailAppController *)self installNotificationObserverForNotificationName:@"MFMailboxFilterPickerViewControllerDidShow" forOneNotification:1 usingBlock:v9];
  [(MailAppController *)self startedTest:v8];
}

- (void)startShowDismissReplyTest:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"testName"];
  v6 = [(MailAppController *)self getMessageListViewController];
  v7 = v6;
  if (v6)
  {
    [v6 setEditing:0 animated:0];
    [(MailAppController *)self dismissAnyModalViewControllerOrPopoverAnimated:0];
    [(MailAppController *)self _waitForTimeInterval:1.0];
    if (+[UIDevice mf_isPadIdiom])
    {
      v8 = [v7 dataSource];
      v9 = [NSIndexPath indexPathWithIndex:0];
      v10 = [v8 itemIdentifierForIndexPath:v9];
      [v7 selectItemID:v10 userInitiated:1 animated:0];
    }

    v11 = [v7 referenceMessageListItemForFirstConversationWithSingleMessage:0 markAsRead:0];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 itemID];
      [v7 _handleDidSelectItemID:v13 referenceItem:0 scrollToVisible:1 userInitiated:1 animated:0];

      v14 = 7.0;
      if ([v5 rangeOfString:@"WarmedUp"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v5 stringByAppendingString:@"IgnoreMe"];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_1000DF538;
        v19[3] = &unk_10064C660;
        v20 = v19[4] = self;
        v15 = v20;
        [EFScheduler mf_afterUIDelay:v19 performBlock:7.0];

        v14 = 14.0;
      }

      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000DF544;
      v17[3] = &unk_10064C660;
      v17[4] = self;
      v18 = v5;
      [EFScheduler mf_afterUIDelay:v17 performBlock:v14];
    }

    else
    {
      v16 = [v7 dataSource];
      -[MailAppController _testFailedDueToNilReferenceMessage:messageCount:](self, "_testFailedDueToNilReferenceMessage:messageCount:", v5, [v16 numberOfItems]);
    }
  }

  else
  {
    [(MailAppController *)self failedTest:v5 withFailure:@"Could not get MessageListViewController/MailboxContentViewController"];
  }
}

- (void)_reallyStartShowReplyTest:(id)a3
{
  v4 = a3;
  v5 = [(MailAppController *)self getConversationViewController];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 targetMessageForBarButtonTriage];
    if (v7)
    {
      v8 = [v4 rangeOfString:@"NoKeyboard"];
      +[NSDate timeIntervalSinceReferenceDate];
      v10 = v9;
      v11 = 4 * (v8 != 0x7FFFFFFFFFFFFFFFLL);
      v31[0] = 0;
      v31[1] = v31;
      v31[2] = 0x2020000000;
      v32 = 0;
      v29[0] = 0;
      v29[1] = v29;
      v29[2] = 0x2020000000;
      v30 = 0;
      v12 = MFMailComposeViewDidShow;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1000DF81C;
      v23[3] = &unk_10064FA40;
      v23[4] = self;
      v13 = v4;
      v27 = v10;
      v24 = v13;
      v25 = v29;
      v28 = v11;
      v26 = v31;
      [(MailAppController *)self installNotificationObserverForNotificationName:v12 forOneNotification:1 usingBlock:v23];
      v15 = _NSConcreteStackBlock;
      v16 = 3221225472;
      v17 = sub_1000DF968;
      v18 = &unk_10064FA68;
      v21 = v31;
      v19 = self;
      v14 = v13;
      v20 = v14;
      v22 = v29;
      [(MailAppController *)self installNotificationObserverForNotificationName:UIKeyboardDidShowNotification forOneNotification:1 usingBlock:&v15];
      [(MailAppController *)self startedTest:v14, v15, v16, v17, v18, v19];
      [(MailAppController *)self startedSubTest:@"ComposeViewAnimationStart" forTest:v14];
      [v6 _testReplyForSelectedMessage];

      _Block_object_dispose(v29, 8);
      _Block_object_dispose(v31, 8);
    }

    else
    {
      [(MailAppController *)self failedTest:v4 withFailure:@"Could not get message from the conversation view controller"];
    }
  }

  else
  {
    [(MailAppController *)self failedTest:v4 withFailure:@"Could not get the conversationViewController"];
  }
}

- (void)dismissReply
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DFA10;
  block[3] = &unk_10064C7E8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_performNextShowDismissComposeTransitionForTest:(id)a3
{
  v9 = a3;
  if ([(MailAppController *)self isComposeWindowActive])
  {
    [(MailAppController *)self dismissAnyModalViewControllerOrPopoverAnimated:1];
    v5 = --dword_1006DCFC8;
  }

  else
  {
    v6 = [_MFMailCompositionContext alloc];
    v7 = [NSURL URLWithString:@"mailto:foo@bar.com"];
    v8 = [v6 initWithURL:v7];

    [(MailAppController *)self showComposeWithContext:v8 animated:1 initialTitle:0 completionBlock:0];
    v5 = dword_1006DCFC8;
  }

  if (v5 < 1)
  {
    [(MailAppController *)self finishedTest:v9 extraResults:0];
  }

  else
  {
    [(MailAppController *)self performSelector:a2 withObject:v9 afterDelay:1.0];
  }
}

- (void)startShowDismissComposeTest:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"iterations"];
  dword_1006DCFC8 = [v5 intValue];

  v6 = [v4 objectForKey:@"testName"];
  [(MailAppController *)self startedTest:v6];
  [(MailAppController *)self dismissAnyModalViewControllerOrPopoverAnimated:0];
  v7 = dispatch_time(0, 2000000000);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000DFEF8;
  v9[3] = &unk_10064C660;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_after(v7, &_dispatch_main_q, v9);
}

- (void)reportPPTTimings:(id)a3
{
  v3 = a3;
  if (!qword_1006DCFA0)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = qword_1006DCFA0;
    qword_1006DCFA0 = v4;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v3 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v3 objectForKey:v10];
        [v11 doubleValue];
        v13 = v12;

        v14 = [qword_1006DCFA0 objectForKey:v10];
        v15 = v14;
        if (v14)
        {
          [v14 doubleValue];
          v13 = v13 + v16;
        }

        v17 = [[NSNumber alloc] initWithDouble:v13];
        [qword_1006DCFA0 setObject:v17 forKey:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }
}

- (void)startConversationSelectionTestWithOptions:(id)a3
{
  v4 = a3;
  v35 = [v4 mf_testName];
  v5 = [v35 containsString:@"SelectSingleMessage"];
  v6 = [(MailAppController *)self getMessageListViewController];
  v7 = [v6 conversationViewController];
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x2020000000;
  v69 = 0;
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_1000E09D0;
  v64[3] = &unk_10064FA90;
  v67 = v68;
  v8 = v35;
  v65 = v8;
  v66 = self;
  v9 = objc_retainBlock(v64);
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_1000E0B8C;
  v57[3] = &unk_10064FAB8;
  v10 = v6;
  v62 = v5;
  v63 = v5 ^ 1;
  v58 = v10;
  v59 = self;
  v37 = v9;
  v61 = v37;
  v36 = v8;
  v60 = v36;
  v38 = objc_retainBlock(v57);
  [(MailAppController *)self _waitForTimeInterval:1.0];
  if (+[UIDevice mf_isPadIdiom])
  {
    v11 = [v10 dataSource];
    v12 = [NSIndexPath indexPathWithIndex:1];
    v13 = [v11 itemIdentifierForIndexPath:v12];
    [v10 selectItemID:v13 userInitiated:1 animated:0];

    if ((qword_1006DCFB8 - 1) <= 1)
    {
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_1000E0CC0;
      v56[3] = &unk_10064C7E8;
      v56[4] = self;
      [EFScheduler mf_afterUIDelay:v56 performBlock:1.0];
    }

    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_1000E0CCC;
    v54[3] = &unk_10064C7E8;
    v55 = v10;
    [EFScheduler mf_afterUIDelay:v54 performBlock:2.0];
    [(MailAppController *)self _waitForTimeInterval:3.0];
    v14 = &v55;
LABEL_10:

    goto LABEL_11;
  }

  if (!v10 || [v7 isFullyVisible])
  {
    v15 = [v10 navigationController];
    v16 = [v15 popToViewController:v10 animated:1];

    [(MailAppController *)self _waitForTimeInterval:1.0];
    v17 = [v10 dataSource];
    v18 = [NSIndexPath indexPathWithIndex:1];
    v19 = [v17 itemIdentifierForIndexPath:v18];
    [v10 selectItemID:v19 userInitiated:1 animated:0];

    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_1000E0CD8;
    v52[3] = &unk_10064C7E8;
    v20 = v10;
    v53 = v20;
    [EFScheduler mf_afterUIDelay:v52 performBlock:1.0];
    [(MailAppController *)self _waitForTimeInterval:2.0];
    v14 = &v53;
    if (!v10 || [v7 isFullyVisible])
    {
      v21 = [v20 navigationController];
      v22 = [v21 popToViewController:v20 animated:1];

      [(MailAppController *)self _waitForTimeInterval:1.0];
    }

    goto LABEL_10;
  }

LABEL_11:
  v23 = [v4 mf_testName];
  v24 = [v23 mf_containsSubstring:@"SelectDigestView"];

  if (v24)
  {
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_1000E0CE4;
    v50[3] = &unk_10064C660;
    v50[4] = self;
    v51 = v10;
    [EFScheduler mf_afterUIDelay:v50 performBlock:1.0];
    [(MailAppController *)self _waitForTimeInterval:4.0];
  }

  objc_initWeak(&location, self);
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1000E0D7C;
  v45[3] = &unk_10064FB08;
  objc_copyWeak(&v48, &location);
  v25 = v4;
  v46 = v25;
  v26 = v38;
  v47 = v26;
  v27 = objc_retainBlock(v45);
  v28 = +[MailAppController log];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Will wait to finish preallocating web views", buf, 2u);
  }

  v29 = [(MailAppController *)self didFinishDelayedStartupTasks];
  v30 = +[EFScheduler mainThreadScheduler];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000E0FD8;
  v42[3] = &unk_10064C450;
  v31 = v27;
  v43 = v31;
  [v29 onScheduler:v30 addSuccessBlock:v42];

  v32 = [(MailAppController *)self didFinishDelayedStartupTasks];
  v33 = +[EFScheduler mainThreadScheduler];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000E10DC;
  v39[3] = &unk_10064FB30;
  objc_copyWeak(&v41, &location);
  v34 = v36;
  v40 = v34;
  [v32 onScheduler:v33 addFailureBlock:v39];

  objc_destroyWeak(&v41);
  objc_destroyWeak(&v48);
  objc_destroyWeak(&location);

  _Block_object_dispose(v68, 8);
}

- (void)startConversationScrollTestWithOptions:(id)a3
{
  v4 = a3;
  [(MailAppController *)self _waitForTimeInterval:1.0];
  if (+[UIDevice mf_isPadIdiom](UIDevice, "mf_isPadIdiom") && [v4 mf_testInterfaceOrientation] == 1)
  {
    v5 = [(MailAppController *)self mostRecentMainScene];
    v6 = [v5 splitViewController];
    [v6 showMessageListViewController:1 animated:1 completion:0];

    [(MailAppController *)self _waitForTimeInterval:1.0];
  }

  v7 = [v4 mf_testName];
  v8 = [v4 mf_isAMSTest];
  v9 = [(MailAppController *)self getMessageListViewController];
  if ([v7 mf_containsSubstring:@"ScrollDigestViewNatural"])
  {
    [(MailAppController *)self _waitForTimeInterval:1.0];
    v10 = [(MailAppController *)self getMessageListViewController];
    v11 = [v9 mailboxes];
    [v10 setMailboxes:v11 senderSpecificMessageListItem:0 bucket:3 forceReload:1];

    [(MailAppController *)self _waitForTimeInterval:2.0];
  }

  v12 = [v9 referenceMessageListItemForFirstConversationWithSingleMessage:0 markAsRead:1];
  v13 = [v9 conversationViewController];
  [v13 setDisableScrollPinning:1];

  v14 = [v9 conversationViewController];
  v15 = [v14 collectionView];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000E158C;
  v28[3] = &unk_10064C6B0;
  v16 = v7;
  v29 = v16;
  v17 = v4;
  v30 = v17;
  v18 = v15;
  v31 = v18;
  v19 = objc_retainBlock(v28);
  if (v12)
  {
    v20 = [v12 itemID];
    [v9 _handleDidSelectItemID:v20 referenceItem:0 scrollToVisible:0 userInitiated:1 animated:1];

    v21 = +[EFScheduler mainThreadScheduler];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000E16D8;
    v24[3] = &unk_10064FB58;
    v27 = v8;
    v25 = v18;
    v26 = v19;
    v22 = [v21 afterDelay:v24 performBlock:1.0];

    v23 = v25;
  }

  else
  {
    v23 = [v9 dataSource];
    -[MailAppController _testFailedDueToNilReferenceMessage:messageCount:](self, "_testFailedDueToNilReferenceMessage:messageCount:", v16, [v23 numberOfItems]);
  }
}

- (BOOL)_allMessageViewControllersDidDisplayContent:(id)a3
{
  v3 = a3;
  if ([v3 count] < 2 || objc_msgSend(0, "countOfMessages") < 2)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [0 childViewControllers];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = *v10;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v4);
          }

          if (![v3 containsObject:*(*(&v9 + 1) + 8 * i)])
          {
            LOBYTE(v5) = 0;
            goto LABEL_14;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }

      LOBYTE(v5) = 1;
    }

LABEL_14:
  }

  return v5;
}

- (void)startConversationLoadAllMessagesTestWithOptions:(id)a3
{
  v4 = a3;
  v5 = [NSHashTable hashTableWithOptions:517];
  [(MailAppController *)self _waitForTimeInterval:1.0];
  v6 = [v4 mf_testName];
  v7 = [(MailAppController *)self getMessageListViewController];
  v8 = [v7 referenceMessageListItemForFirstConversationWithSingleMessage:0 markAsRead:0];
  if (v8)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000E1BE4;
    v16[3] = &unk_10064F9F0;
    v16[4] = self;
    v9 = v6;
    v17 = v9;
    [(MailAppController *)self installNotificationObserverForNotificationName:@"MFMailConversationViewDidShow" forOneNotification:1 usingBlock:v16];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000E1BF0;
    v12[3] = &unk_10064FA18;
    v13 = v5;
    v14 = self;
    v15 = v9;
    [(MailAppController *)self installNotificationObserverForNotificationName:@"MFMailConversationViewChildMessageViewDidDisplayContent" forOneNotification:0 usingBlock:v12];
    v10 = [v8 itemID];
    [v7 _handleDidSelectItemID:v10 referenceItem:0 scrollToVisible:1 userInitiated:1 animated:0];
  }

  else
  {
    v11 = [v7 dataSource];
    -[MailAppController _testFailedDueToNilReferenceMessage:messageCount:](self, "_testFailedDueToNilReferenceMessage:messageCount:", v6, [v11 numberOfItems]);
  }
}

- (void)startConversationViewRotationTestWithOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 mf_testName];
  if ((qword_1006DCFB8 - 3) < 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = 4;
  }

  [(MailAppController *)self _waitForTimeInterval:1.0];
  v7 = [(MailAppController *)self getMessageListViewController];
  v8 = [v7 referenceMessageListItemForFirstConversationWithSingleMessage:0 markAsRead:0];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 itemID];
    [v7 selectItemID:v10 userInitiated:1 animated:1];

    [(MailAppController *)self _waitForTimeInterval:2.0];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000E1F70;
    v19[3] = &unk_10064F9F0;
    v19[4] = self;
    v11 = v5;
    v20 = v11;
    [(MailAppController *)self installNotificationObserverForNotificationName:@"MailSplitViewControllerWillTransitionToSizeNotification" forOneNotification:1 usingBlock:v19];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000E2028;
    v16 = &unk_10064F9F0;
    v17 = self;
    v18 = v11;
    [(MailAppController *)self installNotificationObserverForNotificationName:@"MailSplitViewControllerDidTransitionToSizeNotification" forOneNotification:1 usingBlock:&v13];
    [UIApp rotateIfNeeded:v6 completion:{0, v13, v14, v15, v16, v17}];
  }

  else
  {
    v12 = [v7 dataSource];
    -[MailAppController _testFailedDueToNilReferenceMessage:messageCount:](self, "_testFailedDueToNilReferenceMessage:messageCount:", v5, [v12 numberOfItems]);
  }
}

- (void)startMailboxPredictionTestWithOptions:(id)a3
{
  v4 = a3;
  [(MailAppController *)self _waitForTimeInterval:1.0];
  [0 selectMessageAtIndex:0];
  [(MailAppController *)self _waitForTimeInterval:1.0];
  [v4 mf_testName];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1000E21A8;
  v11 = &unk_10064F9F0;
  v5 = v12 = self;
  v13 = v5;
  [(MailAppController *)self installNotificationObserverForNotificationName:@"MFMoveToPredictionTriageInteractionPredictionPresented" forOneNotification:1 usingBlock:&v8];
  [(MailAppController *)self startedTest:v5, v8, v9, v10, v11, v12];
  v6 = [0 barItemsManager];
  v7 = [v6 moveButtonItem];
  [0 moveButtonTapped:v7];
}

- (void)startMessageListSwipeActionTestWithOptions:(id)a3
{
  v4 = a3;
  [v4 mf_testName];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000E246C;
  v23[3] = &unk_10064FBA8;
  v5 = v23[4] = self;
  v25 = 0;
  v26 = 0;
  v24 = v5;
  v6 = objc_retainBlock(v23);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000E2634;
  v20[3] = &unk_10064FBD0;
  v20[4] = self;
  v7 = v5;
  v21 = v7;
  v22 = 0;
  v8 = objc_retainBlock(v20);
  objc_initWeak(&location, self);
  v9 = [(MailAppController *)self mostRecentMainScene];
  v10 = [v9 splitViewController];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000E27B0;
  v14[3] = &unk_10064FBF8;
  objc_copyWeak(&v18, &location);
  v11 = v7;
  v15 = v11;
  v12 = v6;
  v16 = v12;
  v13 = v8;
  v17 = v13;
  [v10 showMessageListViewController:1 animated:1 completion:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)startMailCategorizationTest:(id)a3
{
  v17 = a3;
  v4 = [v17 mf_testName];
  [(MailAppController *)self startedTest:v4];
  v18 = [EMMessageListItemPredicates predicateForMessagesInMailboxWithType:7];
  v5 = [EMQuery alloc];
  v6 = objc_opt_class();
  v24 = v18;
  v7 = [NSArray arrayWithObjects:&v24 count:1];
  v8 = [NSCompoundPredicate andPredicateWithSubpredicates:v7];
  v9 = [EMMessageListItemPredicates sortDescriptorForDateAscending:0];
  v23 = v9;
  v10 = [NSArray arrayWithObjects:&v23 count:1];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000E2BF8;
  v21[3] = &unk_10064FC20;
  v11 = v17;
  v22 = v11;
  v12 = [v5 initWithTargetClass:v6 predicate:v8 sortDescriptors:v10 builder:v21];

  v13 = [(MailAppController *)self mostRecentMainScene];
  v14 = [v13 daemonInterface];
  v15 = [v14 messageRepository];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000E2C64;
  v19[3] = &unk_10064DD80;
  v19[4] = self;
  v16 = v4;
  v20 = v16;
  [v15 recategorizeMessagesForQuery:v12 completion:v19];
}

- (void)_testFailedDueToNilReferenceMessage:(id)a3 messageCount:(unint64_t)a4
{
  v7 = a3;
  v6 = [NSString stringWithFormat:@"Couldn't find a conversation to select. Mail message count: %lu", a4];
  [(MailAppController *)self failedTest:v7 withFailure:v6];
}

- (void)startScrollMailboxListTestWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(MailAppController *)self getMailboxPickerController];
  v6 = [(MailAppController *)self mostRecentMainScene];
  v7 = [v6 splitViewController];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000E3008;
  v10[3] = &unk_10064FC70;
  v8 = v5;
  v11 = v8;
  v9 = v4;
  v12 = v9;
  [v7 showMailboxPickerController:1 animated:0 completion:v10];
}

- (void)_waitForTimeInterval:(double)a3
{
  v5 = +[NSRunLoop currentRunLoop];
  v4 = [NSDate dateWithTimeIntervalSinceNow:a3];
  [v5 runUntilDate:v4];
}

- (void)installNotificationObserverForNotificationName:(id)a3 object:(id)a4 forOneNotification:(BOOL)a5 usingBlock:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = +[NSOperationQueue mainQueue];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1000E3440;
  v25 = sub_1000E3450;
  v26 = 0;
  v13 = +[NSNotificationCenter defaultCenter];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000E3458;
  v17[3] = &unk_10064FC98;
  v19 = &v21;
  v20 = a5;
  v14 = v11;
  v18 = v14;
  v15 = [v13 addObserverForName:v9 object:v10 queue:v12 usingBlock:v17];
  v16 = v22[5];
  v22[5] = v15;

  _Block_object_dispose(&v21, 8);
}

- (id)masterNavigationController
{
  v2 = [(MailAppController *)self mostRecentMainScene];
  v3 = [v2 masterNavigationController];

  return v3;
}

- (BOOL)isComposeWindowActive
{
  v2 = [(MailAppController *)self mostRecentMainScene];
  v3 = [v2 isComposeWindowActive];

  return v3;
}

- (void)showComposeWithContext:(id)a3 animated:(BOOL)a4 initialTitle:(id)a5 completionBlock:(id)a6
{
  v8 = a4;
  v13 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [(MailAppController *)self mostRecentMainScene];
  [v12 showComposeWithContext:v13 animated:v8 initialTitle:v10 presentationSource:0 completionBlock:v11];
}

- (void)dismissAnyModalViewControllerOrPopoverAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(MailAppController *)self mostRecentMainScene];
  [v4 _dismissAnyModalViewControllerOrPopoverAnimated:v3];
}

- (id)dockContainer
{
  v2 = [(MailAppController *)self mostRecentMainScene];
  v3 = [v2 dockContainer];

  return v3;
}

- (id)rootViewController
{
  v2 = [(MailAppController *)self mostRecentMainScene];
  v3 = [v2 mf_rootViewController];

  return v3;
}

- (void)_dismissComposeViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v6 = [(MailAppController *)self mostRecentMainScene];
  [v6 dismissComposeViewController:v7 animated:v4 afterSending:0];
}

- (id)presentingViewControllerForTriageInteraction:(id)a3
{
  swift_getObjectType();
  _objc_retain(a3);
  _objc_retain(self);
  isa = MailAppController.presentingViewController(for:)(a3).super.super.isa;
  _objc_release(self);
  _objc_release(a3);

  return isa;
}

@end