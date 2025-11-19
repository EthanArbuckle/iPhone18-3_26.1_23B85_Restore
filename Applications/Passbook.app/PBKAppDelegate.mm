@interface PBKAppDelegate
- (BOOL)_handleWalletUniversalLinkableURLWithHost:(id)a3 pathComponents:(id)a4 urlComponents:(id)a5;
- (BOOL)_isValidRelayServerURL:(id)a3 outPathComponents:(id *)a4;
- (BOOL)application:(id)a3 continueUserActivity:(id)a4 restorationHandler:(id)a5;
- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5;
- (BOOL)application:(id)a3 shouldRestoreSecureApplicationState:(id)a4;
- (BOOL)application:(id)a3 shouldSaveSecureApplicationState:(id)a4;
- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4;
- (BOOL)canPresentLaunchPrompts;
- (PBKAppDelegate)init;
- (id)_bankConnectAuthorizationRedirectURLFromPathComponents:(id)a3 queryItems:(id)a4;
- (id)_parseCampaignAttributionReferrerIdentifier:(id)a3;
- (id)_parseReferrerIdentifier:(id)a3;
- (id)applicationDocumentsDirectory;
- (void)_createForegroundActiveResources;
- (void)_destroyForegroundActiveResources;
- (void)_executeForegroundActiveBlocksIfPossible;
- (void)_executeWhenApplicationForegroundActive:(id)a3;
- (void)_handlePassSharingActionForUniqueID:(id)a3 presentationBlock:(id)a4 completion:(id)a5;
- (void)_handleSpotlightWithUserActivity:(id)a3;
- (void)_handleUniversalLinkWithUserActivity:(id)a3;
- (void)_presentBankConnectAuthorizationViewControllerWithRedirectURL:(id)a3;
- (void)_presentLaunchPromptsIfNeeded;
- (void)_setForegroundActive:(BOOL)a3;
- (void)application:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5;
- (void)application:(id)a3 performFetchWithCompletionHandler:(id)a4;
- (void)applicationDidBecomeActive:(id)a3;
- (void)applicationDidEnterBackground:(id)a3;
- (void)applicationWillEnterForeground:(id)a3;
- (void)applicationWillResignActive:(id)a3;
- (void)applicationWillTerminate:(id)a3;
- (void)consumeDoublePressUpForButtonKind:(int64_t)a3;
- (void)dealloc;
- (void)handleDeletePassRequestWithPass:(id)a3;
- (void)openSettingsForNotification:(id)a3;
- (void)presentAccountServiceSchedulePaymentWithUniqueID:(id)a3 billPayAmountType:(int64_t)a4 billPayAmount:(id)a5 completion:(id)a6;
- (void)presentAddMoneyForPassWithUniqueID:(id)a3 completion:(id)a4;
- (void)presentDeletePassWithUniqueID:(id)a3 completion:(id)a4;
- (void)presentSearchForPassWithUniqueID:(id)a3 withQuery:(id)a4 completion:(id)a5;
- (void)willPresentNotification:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation PBKAppDelegate

- (PBKAppDelegate)init
{
  v14.receiver = self;
  v14.super_class = PBKAppDelegate;
  v2 = [(PBKAppDelegate *)&v14 init];
  if (v2)
  {
    v3 = +[PKUIForegroundActiveArbiter sharedInstance];
    [PKXPCService setForegroundActiveArbiter:v3];
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(v4, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

    v6 = dispatch_queue_create("com.apple.pbk.background", v5);
    backgroundQueue = v2->_backgroundQueue;
    v2->_backgroundQueue = v6;

    v8 = +[PKUserNotificationAuthorizationController sharedInstance];
    [v8 addDelegate:v2];

    v9 = objc_alloc_init(PKPassLibraryDefaultDataProvider);
    dataProvider = v2->_dataProvider;
    v2->_dataProvider = v9;

    v11 = [[PKLaunchAuthorizationPromptController alloc] initWithContext:0 dataProvider:v2->_dataProvider delegate:v2];
    launchAuthorizationPromptController = v2->_launchAuthorizationPromptController;
    v2->_launchAuthorizationPromptController = v11;

    -[PBKAppDelegate _setForegroundActive:](v2, "_setForegroundActive:", ([v3 registerObserver:v2] >> 8) & 1);
  }

  return v2;
}

- (void)_executeForegroundActiveBlocksIfPossible
{
  if (self->_foregroundActive && self->_didBecomeActiveOnce && [(NSMutableArray *)self->_blocksQueuedForForegroundExecution count])
  {
    v3 = [(NSMutableArray *)self->_blocksQueuedForForegroundExecution copy];
    [(NSMutableArray *)self->_blocksQueuedForForegroundExecution removeAllObjects];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          (*(*(*(&v9 + 1) + 8 * v8) + 16))(*(*(&v9 + 1) + 8 * v8));
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)_createForegroundActiveResources
{
  if (!self->_foregroundActiveResourcesCreated)
  {
    self->_foregroundActiveResourcesCreated = 1;
    v3 = +[PKDiscoveryService sharedInstance];
    [v3 beginReporingDiscoveryAnalytics];
    [v3 processDiscoveryItemsAndMessagesWithCompletion:&stru_10001D138];
    v4 = PKPassKitCoreBundle();
    v5 = [CLInUseAssertion newAssertionForBundle:v4 withReason:@"Passbook is Active"];
    inUseAssertion = self->_inUseAssertion;
    self->_inUseAssertion = v5;

    if ((+[PKSecureElement isInFailForward]& 1) == 0 && PKUserIntentIsAvailable())
    {
      v7 = +[SBSHardwareButtonService sharedInstance];
      v8 = [v7 beginConsumingPressesForButtonKind:2 eventConsumer:self priority:0];
      lockButtonObserver = self->_lockButtonObserver;
      self->_lockButtonObserver = v8;

      v10 = [PKGetClassNFHardwareManager() sharedHardwareManagerWithNoUI];
      v11 = [v10 queueAssertion:5 completion:0];

      v12 = PKLogFacilityTypeGetObject();
      informativeForegroundAssertion = v12;
      if (v11)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          sub_10000F638(self, v11, informativeForegroundAssertion);
        }

        v14 = v11;
        informativeForegroundAssertion = self->_informativeForegroundAssertion;
        self->_informativeForegroundAssertion = v14;
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = self;
        _os_log_impl(&_mh_execute_header, informativeForegroundAssertion, OS_LOG_TYPE_DEFAULT, "PBKAppDelegate (%p): failed to acquire foreground nearfield informative assertion.", &buf, 0xCu);
      }

      if (!self->_fetchingAsynchronousForegroundActiveResources)
      {
        self->_fetchingAsynchronousForegroundActiveResources = 1;
        *&buf = 0;
        *(&buf + 1) = &buf;
        v21 = 0x2020000000;
        v22 = UIBackgroundTaskInvalid;
        v15 = +[UIApplication sharedApplication];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10000C89C;
        v19[3] = &unk_10001D160;
        v19[4] = &buf;
        v16 = [v15 beginBackgroundTaskWithName:@"Asynchronous Foreground Active Resources" expirationHandler:v19];
        *(*(&buf + 1) + 24) = v16;

        backgroundQueue = self->_backgroundQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100001894;
        block[3] = &unk_10001D1D8;
        block[4] = self;
        block[5] = &buf;
        dispatch_async(backgroundQueue, block);
        _Block_object_dispose(&buf, 8);
      }
    }
  }
}

- (BOOL)canPresentLaunchPrompts
{
  v3 = [(PKPassGroupsViewController *)self->_cardsViewController pkui_frontMostViewController];
  v4 = v3 == self->_cardsViewController && self->_foregroundActive;

  return v4;
}

- (void)_presentLaunchPromptsIfNeeded
{
  launchAuthorizationPromptController = self->_launchAuthorizationPromptController;
  v4 = [(PKPassGroupsViewController *)self->_cardsViewController groupsController];
  v3 = [v4 passes];
  [(PKLaunchAuthorizationPromptController *)launchAuthorizationPromptController presentLaunchPromptsForPassesIfNeeded:v3];
}

- (void)dealloc
{
  v3 = +[PKUIForegroundActiveArbiter sharedInstance];
  [v3 unregisterObserver:self];

  v4 = +[PKUserNotificationAuthorizationController sharedInstance];
  [v4 removeDelegate:self];

  v5.receiver = self;
  v5.super_class = PBKAppDelegate;
  [(PBKAppDelegate *)&v5 dealloc];
}

- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[PSListController appearance];
  v9 = +[UIColor labelColor];
  [v8 setTextColor:v9];

  v10 = +[PKUIForegroundActiveArbiter sharedInstance];
  v11 = [v7 applicationState];

  if (v11 != 2)
  {
    [v10 willEnterForegroundPrelude];
  }

  v12 = [UIWindow alloc];
  v13 = +[UIScreen mainScreen];
  [v13 bounds];
  v14 = [v12 initWithFrame:?];
  window = self->_window;
  self->_window = v14;

  v16 = [[PKPassGroupsViewController alloc] _init_application];
  cardsViewController = self->_cardsViewController;
  self->_cardsViewController = v16;

  v18 = [[PKPassGroupsViewNavigationController alloc] initWithPassGroupsViewController:self->_cardsViewController];
  navigationController = self->_navigationController;
  self->_navigationController = v18;

  [(UIWindow *)self->_window setRootViewController:self->_navigationController];
  v20 = [(UIWindow *)self->_window windowScene];
  if (_os_feature_enabled_impl() && (AXAssistiveAccessEnabled() & 1) == 0)
  {
    v23 = self->_window;
    v24 = +[UIColor clearColor];
    [(UIWindow *)v23 setBackgroundColor:v24];

    [v20 _setBackgroundStyle:1];
    v25 = self->_navigationController;
    v26 = PKPGVNCBackgroundVisualEffect();
    [(PKPassGroupsViewNavigationController *)v25 setupBackgroundViewWithVisualEffect:v26];
  }

  else
  {
    v21 = self->_window;
    v22 = +[PKPassGroupStackView backgroundColor];
    [(UIWindow *)v21 setBackgroundColor:v22];

    [v20 _setBackgroundStyle:0];
  }

  [(PKPassGroupsViewController *)self->_cardsViewController presentOffscreenAnimated:0 withCompletionHandler:0];
  self->_needsOnScreenPresentation = 1;
  self->_needsRegionSupportUpdate = 1;
  v27 = objc_alloc_init(NSMutableArray);
  blocksQueuedForForegroundExecution = self->_blocksQueuedForForegroundExecution;
  self->_blocksQueuedForForegroundExecution = v27;

  [(UIWindow *)self->_window makeKeyAndVisible];
  v29 = +[PKAppIntentDependencyManager sharedInstance];
  [v29 setCoordinator:self];

  [PKWalletAppShortcutProviderWrapper updateAppShortcutParametersWithCompletion:0];
  if (v11 != 2)
  {
    [v10 willEnterForegroundPostlude];
  }

  v30 = [v6 objectForKey:UIApplicationLaunchOptionsURLKey];

  if (!v30)
  {
    v31 = [(PKPassGroupsViewController *)self->_cardsViewController itemIdentifierForFrontmostDiscoveryCard];
    if (v31)
    {
      v32 = +[UIApplication sharedApplication];
      v33 = [v32 applicationIconBadgeNumber];

      v34 = +[PKDiscoveryService sharedInstance];
      v35 = v34;
      if (v33 > 0)
      {
        v36 = 2;
      }

      else
      {
        v36 = 3;
      }

      [v34 discoveryItemWithIdentifier:v31 launchedWithReferralSource:v36];
    }
  }

  return 1;
}

- (void)applicationWillResignActive:(id)a3
{
  v3 = +[PKUIForegroundActiveArbiter sharedInstance];
  [v3 willResignActive];
}

- (void)applicationWillEnterForeground:(id)a3
{
  if ([(PBKAppDelegate *)self _shouldBeginSubjectReportingWallet])
  {
    [PKAnalyticsReporter beginSubjectReporting:PKAnalyticsSubjectWallet];
  }

  if (self->_suspendedReportingWalletProvisioning)
  {
    [PKAnalyticsReporter beginSubjectReporting:PKAnalyticsSubjectWalletProvisioning];
    self->_suspendedReportingWalletProvisioning = 0;
  }

  v5 = +[PKUIForegroundActiveArbiter sharedInstance];
  [v5 willEnterForegroundPrelude];
  [(NSDate *)self->_lastTimeAppWasDismissed timeIntervalSinceNow];
  if (v4 < -480.0)
  {
    [(PKPassGroupsViewController *)self->_cardsViewController dismissPresentedVCsWithRequirements:4 animated:0 performAction:0];
  }

  [v5 willEnterForegroundPostlude];
}

- (void)applicationDidEnterBackground:(id)a3
{
  v4 = a3;
  if ([(PBKAppDelegate *)self _shouldEndSubjectReportingWallet])
  {
    [PKAnalyticsReporter endSubjectReporting:PKAnalyticsSubjectWallet];
  }

  v5 = PKAnalyticsSubjectWalletProvisioning;
  v6 = [PKAnalyticsReporter reporterForSubject:PKAnalyticsSubjectWalletProvisioning];

  v7 = &selRef_presentShareActivationWithShareIdentifier_;
  if (v6)
  {
    [PKAnalyticsReporter endSubjectReporting:v5];
    self->_suspendedReportingWalletProvisioning = 1;
  }

  v8 = PKAnalyticsSubjectAppleCash;
  v9 = [PKAnalyticsReporter reporterForSubject:PKAnalyticsSubjectAppleCash];

  if (v9)
  {
    [PKAnalyticsReporter endSubjectReporting:v8];
  }

  v10 = PKAnalyticsSubjectAttribution;
  v11 = [PKAnalyticsReporter reporterForSubject:PKAnalyticsSubjectAttribution];

  if (v11)
  {
    [PKAnalyticsReporter endSubjectReporting:v10];
  }

  v12 = +[PKUIForegroundActiveArbiter sharedInstance];
  [v12 didEnterBackground];

  [v4 pkui_resetSharedRootAuthenticationContext];
  v13 = objc_autoreleasePoolPush();
  v14 = [(PKPassGroupsViewController *)self->_cardsViewController presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = 0;
    goto LABEL_36;
  }

  v16 = [v14 pkui_frontMostViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [v16 presentingViewController];

    v16 = v17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [v16 viewControllers];
    v19 = [v16 pkui_disablesAutomaticDismissalUponEnteringBackground];
    if ((v19 & 1) == 0 && v18)
    {
      v20 = [v18 firstObject];
      if ([v20 pkui_disablesAutomaticDismissalUponEnteringBackground])
      {
        v15 = 0;
LABEL_34:

        goto LABEL_35;
      }

      v21 = [v18 lastObject];
      v32 = [v21 pkui_disablesAutomaticDismissalUponEnteringBackground];

      if (v32)
      {
LABEL_29:
        v15 = 0;
        goto LABEL_30;
      }

LABEL_22:
      v22 = v18;
      v23 = [v16 childViewControllers];
      v20 = [v23 lastObject];

      if (v20)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = [v20 viewControllers];

          v24 = [v18 firstObject];
          if ([v24 pkui_disablesAutomaticDismissalUponEnteringBackground])
          {

            v15 = 0;
LABEL_33:
            v7 = &selRef_presentShareActivationWithShareIdentifier_;
            goto LABEL_34;
          }

          v26 = [v18 lastObject];
          v33 = [v26 pkui_disablesAutomaticDismissalUponEnteringBackground];

          if (v33)
          {
            goto LABEL_29;
          }

          v22 = v18;
        }

        else
        {
          v25 = [v20 pkui_disablesAutomaticDismissalUponEnteringBackground];

          if (v25)
          {
            v15 = 0;
            v18 = v22;
LABEL_30:
            v7 = &selRef_presentShareActivationWithShareIdentifier_;
            goto LABEL_35;
          }
        }
      }

      v20 = +[PKDismissalPreventionAssertionManager sharedInstance];
      v15 = [v20 shouldPreventAutomaticDismissal] ^ 1;
      v18 = v22;
      goto LABEL_33;
    }
  }

  else
  {
    v19 = [v16 pkui_disablesAutomaticDismissalUponEnteringBackground];
    v18 = 0;
  }

  if ((v19 & 1) == 0)
  {
    goto LABEL_22;
  }

  v15 = 0;
LABEL_35:

LABEL_36:
  objc_autoreleasePoolPop(v13);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000025F4;
  v36[3] = &unk_10001CC10;
  v36[4] = self;
  v27 = objc_retainBlock(v36);
  v28 = v27;
  if (v15)
  {
    *(&self->super.super.isa + *(v7 + 425)) = 0;
    cardsViewController = self->_cardsViewController;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000026A0;
    v34[3] = &unk_10001CC38;
    v35 = v27;
    [(PKPassGroupsViewController *)cardsViewController dismissPresentedVCsWithRequirements:12 animated:0 performAction:v34];
  }

  else
  {
    v30 = +[NSDate date];
    lastTimeAppWasDismissed = self->_lastTimeAppWasDismissed;
    self->_lastTimeAppWasDismissed = v30;

    v28[2](v28);
  }

  self->_needsRegionSupportUpdate = 1;
}

- (void)applicationDidBecomeActive:(id)a3
{
  [(PKLaunchAuthorizationPromptController *)self->_launchAuthorizationPromptController enableLaunchPromptsForSession];
  if ([(PKPassGroupsViewController *)self->_cardsViewController passesAreOutdated])
  {
    v4 = dispatch_time(0, 350000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002864;
    block[3] = &unk_10001CC10;
    block[4] = self;
    dispatch_after(v4, &_dispatch_main_q, block);
  }

  else if (!self->_needsOnScreenPresentation || (self->_needsOnScreenPresentation = 0, v8 = 0, [(PKPassGroupsViewController *)self->_cardsViewController presentInitialState:&v8], (v8 & 1) == 0))
  {
    [(PBKAppDelegate *)self _presentLaunchPromptsIfNeeded];
  }

  if (!self->_didBecomeActiveOnce)
  {
    self->_didBecomeActiveOnce = 1;
    [(PBKAppDelegate *)self _executeForegroundActiveBlocksIfPossible];
  }

  v5 = +[PKUIForegroundActiveArbiter sharedInstance];
  [v5 didBecomeActive];

  if (PKSecureElementIsAvailable())
  {
    if (self->_needsRegionSupportUpdate)
    {
      self->_needsRegionSupportUpdate = 0;
      v6 = dispatch_get_global_queue(0, 0);
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10000293C;
      v7[3] = &unk_10001CC10;
      v7[4] = self;
      dispatch_async(v6, v7);
    }
  }
}

- (void)applicationWillTerminate:(id)a3
{
  v4 = +[PKUIForegroundActiveArbiter sharedInstance];
  [v4 willTerminate];

  [(PBKAppDelegate *)self _destroyForegroundActiveResources];
}

- (void)application:(id)a3 performFetchWithCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_cardsViewController && [v6 applicationState] == 2)
  {
    cardsViewController = self->_cardsViewController;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100002A98;
    v9[3] = &unk_10001CC88;
    v10 = v6;
    v11 = self;
    v12 = v7;
    [(PKPassGroupsViewController *)cardsViewController reloadPassesWithCompletion:v9];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)application:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  [(PKLaunchAuthorizationPromptController *)self->_launchAuthorizationPromptController disableLaunchPromptsForSession];
  v9 = [v7 type];
  v10 = [v9 isEqualToString:PKQuickActionAddCardAction];

  if (!v10)
  {
    v12 = [v7 type];
    if ([v12 isEqualToString:PKQuickActionOpenPassAction])
    {
    }

    else
    {
      v13 = [v7 type];
      v14 = [v13 isEqualToString:PKQuickActionLastTransactionAction];

      if (!v14)
      {
        v17 = [v7 type];
        v18 = [v17 isEqualToString:PKQuickActionNearbyPeerPayment];

        if (!v18)
        {
          goto LABEL_9;
        }

        [(PKPassGroupsViewController *)self->_cardsViewController presentPeerPaymentDeviceTapWithInitialAmount:0 initialMemo:0];
        v19 = PKAnalyticsSubjectAppleCash;
        [PKAnalyticsReporter beginSubjectReporting:PKAnalyticsSubjectAppleCash];
        v20[0] = PKAnalyticsReportFeatureTypeKey;
        v20[1] = PKAnalyticsReportEventKey;
        v21[0] = PKAnalyticsReportPeerPaymentFeatureType;
        v21[1] = PKAnalyticsReportEventTypeButtonTap;
        v20[2] = PKAnalyticsReportButtonTagKey;
        v20[3] = PKAnalyticsReportPageTagKey;
        v21[2] = PKAnalyticsReportPeerPaymentDeviceTapButtonTag;
        v21[3] = PKAnalyticsReportPeerPaymentQuickActionPageTag;
        v20[4] = PKAnalyticsReportPeerPaymentP2PSideKey;
        v21[4] = PKAnalyticsReportPeerPaymentP2PSideSender;
        v16 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:5];
        [PKAnalyticsReporter subject:v19 sendEvent:v16];
LABEL_8:

        goto LABEL_9;
      }
    }

    v15 = [v7 userInfo];
    v16 = [v15 objectForKey:PKQuickActionPassUniqueIDKKey];

    [(PKPassGroupsViewController *)self->_cardsViewController presentPassWithUniqueID:v16 animated:1 completionHandler:0];
    goto LABEL_8;
  }

  cardsViewController = self->_cardsViewController;
  if (cardsViewController)
  {
    [(PKPassGroupsViewController *)cardsViewController presentPaymentSetupInMode:0 referrerIdentifier:0 referralSource:0 campaignIdentifier:0 paymentNetwork:0 transitNetworkIdentifier:0 allowedFeatureIdentifiers:0 productIdentifiers:0 sectionIdentifier:0];
  }

LABEL_9:
  if (v8)
  {
    v8[2](v8, 1);
  }
}

- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Processing URL %{public}@", buf, 0xCu);
  }

  [(PKLaunchAuthorizationPromptController *)self->_launchAuthorizationPromptController disableLaunchPromptsForSession];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100002F34;
  v13[3] = &unk_10001CE90;
  v13[4] = self;
  v14 = v7;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  [(PBKAppDelegate *)self _executeWhenApplicationForegroundActive:v13];

  return 1;
}

- (id)_bankConnectAuthorizationRedirectURLFromPathComponents:(id)a3 queryItems:(id)a4
{
  v5 = a4;
  v6 = [a3 lastObject];
  v7 = [v6 isEqualToString:PKURLSubactionRouteAuthorization];

  if (v7)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      v12 = PKURLRedirectURLQueryItemKey;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v15 = [v14 name];
          v16 = [v14 value];
          if ([v16 length])
          {
            v17 = v15;
            v18 = v17;
            if (v17 == v12)
            {

LABEL_21:
              v21 = [NSURL URLWithString:v16];

              goto LABEL_22;
            }

            if (v17)
            {
              v19 = v12 == 0;
            }

            else
            {
              v19 = 1;
            }

            if (v19)
            {
            }

            else
            {
              v20 = [v17 isEqualToString:v12];

              if (v20)
              {
                goto LABEL_21;
              }
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v21 = 0;
LABEL_22:
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)_presentBankConnectAuthorizationViewControllerWithRedirectURL:(id)a3
{
  v4 = a3;
  cardsViewController = self->_cardsViewController;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006D64;
  v7[3] = &unk_10001CEB8;
  v8 = v4;
  v6 = v4;
  [(PKPassGroupsViewController *)cardsViewController presentAuthorizationFlowAnimated:1 completion:v7];
}

- (id)_parseReferrerIdentifier:(id)a3
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    v7 = PKURLParamReferrerIdentifier;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 name];
        v11 = [v9 value];
        if ([v11 length])
        {
          v12 = v10;
          v13 = v12;
          if (v12 == v7)
          {

LABEL_19:
            goto LABEL_20;
          }

          if (v12)
          {
            v14 = v7 == 0;
          }

          else
          {
            v14 = 1;
          }

          if (v14)
          {
          }

          else
          {
            v15 = [v12 isEqualToString:v7];

            if (v15)
            {
              goto LABEL_19;
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_20:

  return v11;
}

- (id)_parseCampaignAttributionReferrerIdentifier:(id)a3
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    v7 = PKURLParamCampaignIdentifier;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 name];
        v11 = [v9 value];
        if ([v11 length])
        {
          v12 = v10;
          v13 = v12;
          if (v12 == v7)
          {

LABEL_19:
            goto LABEL_20;
          }

          if (v12)
          {
            v14 = v7 == 0;
          }

          else
          {
            v14 = 1;
          }

          if (v14)
          {
          }

          else
          {
            v15 = [v12 isEqualToString:v7];

            if (v15)
            {
              goto LABEL_19;
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_20:

  return v11;
}

- (BOOL)_handleWalletUniversalLinkableURLWithHost:(id)a3 pathComponents:(id)a4 urlComponents:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v522 = self;
  [(PKLaunchAuthorizationPromptController *)self->_launchAuthorizationPromptController disableLaunchPromptsForSession];
  v11 = [v10 queryItems];
  v12 = [v9 count];
  v13 = PKURLActionSetup;
  v14 = v8;
  v521 = v14;
  if (v13 == v14)
  {

    goto LABEL_7;
  }

  if (!v14 || !v13)
  {
    v15 = v14;

    goto LABEL_16;
  }

  v15 = v14;
  v16 = [v14 isEqualToString:v13];

  if (v16)
  {
LABEL_7:
    v17 = [(PBKAppDelegate *)v522 _parseReferrerIdentifier:v11];
    v18 = [(PBKAppDelegate *)v522 _parseCampaignAttributionReferrerIdentifier:v11];
    if (v18)
    {
      +[PKCampaignAttributionSessionManager restartSession];
      [PKAnalyticsReporter reportCampaignIdentifier:v18 eventType:0 referralSource:2 deepLinkType:1 productType:0];
    }

    if (v12 < 2)
    {
      v23 = 0;
      v26 = 0;
      goto LABEL_78;
    }

    v19 = [v9 objectAtIndex:1];
    v20 = PKURLActionFeature;
    v21 = v19;
    v22 = v21;
    if (v21 == v20)
    {

      v26 = v22;
    }

    else
    {
      v23 = 0;
      v24 = v21;
      if (!v21 || !v20)
      {
        goto LABEL_77;
      }

      v25 = v20;
      v26 = v21;
      v27 = [v21 isEqualToString:v25];

      if (!v27)
      {
        v23 = 0;
LABEL_78:
        if (PKEqualObjects())
        {
          [(PKPassGroupsViewController *)v522->_cardsViewController presentPaymentSetupInMode:5 referrerIdentifier:v17 referralSource:0 campaignIdentifier:v18 paymentNetwork:0 transitNetworkIdentifier:0 allowedFeatureIdentifiers:0 productIdentifiers:0 sectionIdentifier:0];
LABEL_184:
          LOBYTE(v33) = 1;
          goto LABEL_185;
        }

        if (PKEqualObjects())
        {
          [(PKPassGroupsViewController *)v522->_cardsViewController presentPaymentSetupInMode:6 referrerIdentifier:v17 referralSource:0 campaignIdentifier:v18 paymentNetwork:0 transitNetworkIdentifier:0 allowedFeatureIdentifiers:0 productIdentifiers:0 sectionIdentifier:0];
          goto LABEL_184;
        }

        if (!PKEqualObjects())
        {
          [(PKPassGroupsViewController *)v522->_cardsViewController presentPaymentSetupInMode:v23 referrerIdentifier:v17 referralSource:0 campaignIdentifier:v18 paymentNetwork:0 transitNetworkIdentifier:0 allowedFeatureIdentifiers:0 productIdentifiers:0 sectionIdentifier:0];
          goto LABEL_184;
        }

        v70 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v582 = v10;
          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Received subcredential pairing url: %@", buf, 0xCu);
        }

        v576 = 0u;
        v575 = 0u;
        v574 = 0u;
        v573 = 0u;
        v71 = v11;
        v537 = [v71 countByEnumeratingWithState:&v573 objects:v580 count:16];
        v504 = v26;
        v505 = v9;
        v508 = v10;
        if (!v537)
        {

          v74 = 0;
          v126 = 0;
          v125 = 0;
          goto LABEL_241;
        }

        obj = v71;
        oslog = v70;
        v502 = v18;
        v503 = v17;
        v524 = 0;
        v72 = 0;
        v73 = 0;
        v74 = 0;
        v75 = 0;
        v535 = *v574;
        v76 = PKURLParamAppletSubcredentialPartnerAppIdentifier;
        v528 = PKURLParamAppletSubcredentialIssuerIdentifier;
        v527 = PKURLParamAppletSubcredentialSupportedRadioTechnologies;
        v525 = PKURLParamAppletSubcredentialSRT;
        v520 = PKURLParamAppletSubcredentialPTI;
        v519 = PKURLParamAppletSubcredentialBrandIdentifier;
        v507 = 4;
        v516 = PKURLParamAppletSubcredentialReferralSource;
        v511 = PKURLParamAnalyticsArchivedParentToken;
        v512 = v11;
        v533 = PKURLParamAppletSubcredentialPartnerAppIdentifier;
LABEL_87:
        v77 = 0;
        while (1)
        {
          if (*v574 != v535)
          {
            objc_enumerationMutation(obj);
          }

          v78 = *(*(&v573 + 1) + 8 * v77);
          v79 = [v78 name];
          v80 = [v78 value];
          if (![v80 length])
          {
            goto LABEL_124;
          }

          v81 = v79;
          v82 = v81;
          if (v81 == v76)
          {
            break;
          }

          if (v81)
          {
            v83 = v76 == 0;
          }

          else
          {
            v83 = 1;
          }

          if (v83)
          {
          }

          else
          {
            v84 = [v81 isEqualToString:v76];

            if (v84)
            {
              goto LABEL_100;
            }
          }

          v531 = v73;
          v86 = v82;
          v87 = v86;
          if (v86 == v528)
          {

LABEL_107:
            v89 = v80;

            v75 = v89;
            goto LABEL_122;
          }

          if (v82 && v528)
          {
            v88 = [v86 isEqualToString:v528];

            if (v88)
            {
              goto LABEL_107;
            }
          }

          else
          {
          }

          v90 = v87;
          v91 = v90;
          if (v90 == v527)
          {
            goto LABEL_120;
          }

          if (v82 && v527)
          {
            v92 = [v90 isEqualToString:v527];

            if (v92)
            {
              goto LABEL_121;
            }
          }

          else
          {
          }

          v93 = v91;
          if (v93 == v525)
          {
LABEL_120:

LABEL_121:
            v96 = [v80 componentsSeparatedByString:{@", "}];
            v524 = PKRadioTechnologyFromStrings();

            goto LABEL_122;
          }

          v94 = v93;
          if (v82 && v525)
          {
            v95 = [v93 isEqualToString:v525];

            if (v95)
            {
              goto LABEL_121;
            }
          }

          else
          {
          }

          v97 = v94;
          v98 = v97;
          if (v97 == v520)
          {

LABEL_133:
            v100 = v80;

            v73 = v100;
            goto LABEL_123;
          }

          if (v82 && v520)
          {
            v99 = [v97 isEqualToString:v520];

            if (v99)
            {
              goto LABEL_133;
            }
          }

          else
          {
          }

          v101 = v98;
          v102 = v101;
          if (v101 == v519)
          {

LABEL_141:
            v518 = v74;
            v104 = v11;
            v526 = v80;

            v105 = +[PKPaymentService paymentService];
            v106 = [v105 sharedPaymentWebServiceContext];
            v107 = [v106 configuration];
            v108 = PKCurrentRegion();
            v109 = [v107 featureWithType:2 inRegion:v108];

            v572 = 0u;
            v571 = 0u;
            v570 = 0u;
            v569 = 0u;
            v517 = v109;
            v523 = [v109 supportedTerminals];
            v110 = [v523 countByEnumeratingWithState:&v569 objects:v579 count:16];
            if (!v110)
            {
              v11 = v104;
              v74 = v518;
              goto LABEL_159;
            }

            v111 = v110;
            v514 = v106;
            v515 = v105;
            v112 = *v570;
LABEL_143:
            v113 = 0;
            while (1)
            {
              if (*v570 != v112)
              {
                objc_enumerationMutation(v523);
              }

              v114 = *(*(&v569 + 1) + 8 * v113);
              v115 = [v114 partnerIdentifier];
              v116 = [v115 isEqualToString:v526];

              if (v116)
              {
                break;
              }

              if (v111 == ++v113)
              {
                v111 = [v523 countByEnumeratingWithState:&v569 objects:v579 count:16];
                if (!v111)
                {
                  v11 = v512;
                  v74 = v518;
                  goto LABEL_151;
                }

                goto LABEL_143;
              }
            }

            v74 = [v114 manufacturerIdentifier];

            v11 = v512;
LABEL_151:
            v106 = v514;
            v105 = v515;
LABEL_159:

            v75 = v526;
            goto LABEL_122;
          }

          if (v82 && v519)
          {
            v103 = [v101 isEqualToString:v519];

            if (v103)
            {
              goto LABEL_141;
            }
          }

          else
          {
          }

          v117 = v102;
          v118 = v117;
          if (v117 == v516)
          {

LABEL_161:
            v507 = PKSubcredentialPairingReferralSourceFromString();
LABEL_122:
            v73 = v531;
            goto LABEL_123;
          }

          if (v82 && v516)
          {
            v119 = [v117 isEqualToString:v516];

            if (v119)
            {
              goto LABEL_161;
            }
          }

          else
          {
          }

          v120 = v118;
          v121 = v120;
          if (v120 == v511)
          {

            v73 = v531;
LABEL_169:
            v123 = [[NSData alloc] initWithBase64EncodedString:v80 options:0];

            v72 = v123;
            goto LABEL_123;
          }

          v73 = v531;
          if (!v82 || !v511)
          {

            goto LABEL_123;
          }

          v122 = [v120 isEqualToString:v511];

          if (v122)
          {
            goto LABEL_169;
          }

LABEL_123:
          v76 = v533;
LABEL_124:

          if (++v77 == v537)
          {
            v124 = [obj countByEnumeratingWithState:&v573 objects:v580 count:16];
            v537 = v124;
            if (!v124)
            {
              v125 = v72;

              v126 = v73;
              if (v75)
              {
                v127 = v74;
                v18 = v502;
                v17 = v503;
                if (!v524)
                {
                  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v582 = v508;
                    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Defaulting to NFC due to missing or invalid radioTechnologies for url: %@", buf, 0xCu);
                  }
                }

                v128 = PKRadioTechnologyForConfigurationTechnology();
                if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v582 = v75;
                  _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Presenting pairing flow for issuer: %@", buf, 0xCu);
                }

                v70 = objc_alloc_init(PKAddCarKeyPassConfiguration);
                [v70 setIssuerIdentifier:v75];
                v129 = [v508 fragment];
                [v70 setPassword:v129];

                [v70 setSupportedRadioTechnologies:v128];
                [v70 setProvisioningTemplateIdentifier:v126];
                if (v127)
                {
                  v130 = v127;
                }

                else
                {
                  v130 = v75;
                }

                [v70 setManufacturerIdentifier:v130];
                [v70 setReferralSource:v507];
                [v70 setAnalyticsArchivedParentToken:v125];
                LOBYTE(v33) = [(PKPassGroupsViewController *)v522->_cardsViewController presentSubcredentialPairingFlowIfPossibleWithConfig:v70 animated:1];
                v131 = 0;
                goto LABEL_244;
              }

              v18 = v502;
              v17 = v503;
              v70 = oslog;
LABEL_241:
              v127 = v74;
              if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v582 = v508;
                _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Invalid pairing url: %@", buf, 0xCu);
              }

              v75 = 0;
              LOBYTE(v33) = 0;
              v131 = 1;
LABEL_244:

              if (v131)
              {
                v132 = 0;
                v26 = v504;
                v9 = v505;
                v10 = v508;
                goto LABEL_186;
              }

              v26 = v504;
              v9 = v505;
              v10 = v508;
LABEL_185:
              v132 = 1;
LABEL_186:

              if (v132)
              {
                goto LABEL_188;
              }

LABEL_187:
              LOBYTE(v33) = 0;
              goto LABEL_188;
            }

            goto LABEL_87;
          }
        }

LABEL_100:
        v85 = v80;

        v75 = v85;
        goto LABEL_123;
      }
    }

    if (v12 == 2)
    {
      v23 = 4;
      goto LABEL_78;
    }

    v24 = v26;
    v22 = [v9 objectAtIndex:2];
    v45 = PKFeatureIdentifierFromString();
    if (v45)
    {
      v46 = v45;
      v47 = [[NSSet alloc] initWithObjects:{v22, 0}];

      v33 = objc_alloc_init(PKPassPresentationContext);
      [v33 setPresentationSource:5];
      [(PKPassGroupsViewController *)v522->_cardsViewController presentFeatureSetupOrFeaturePass:v46 referrerIdentifier:v17 presentationContext:v33 completion:0];

      LOBYTE(v33) = 1;
      v26 = v24;
      goto LABEL_185;
    }

    v23 = 4;
LABEL_77:

    v26 = v24;
    goto LABEL_78;
  }

LABEL_16:
  v28 = PKURLRouteDiscovery;
  v29 = v15;
  v30 = v29;
  if (v28 == v29)
  {

    goto LABEL_23;
  }

  if (!v15 || !v28)
  {

    goto LABEL_30;
  }

  v31 = [v29 isEqualToString:v28];

  if (v31)
  {
LABEL_23:
    if (v12 < 3)
    {
      goto LABEL_187;
    }

    v32 = [v9 objectAtIndex:1];
    v33 = PKURLRouteDiscoveryCard;
    v34 = v32;
    v35 = v34;
    if (v34 == v33)
    {
    }

    else
    {
      if (!v34 || !v33)
      {

LABEL_61:
        goto LABEL_187;
      }

      LODWORD(v33) = [v34 isEqualToString:v33];

      if (!v33)
      {
        goto LABEL_188;
      }
    }

    v52 = [v9 objectAtIndex:2];
    if (v52)
    {
      v33 = [[NSUUID alloc] initWithUUIDString:v52];

      if (v33)
      {
        v53 = +[PKDiscoveryService sharedInstance];
        [v53 discoveryItemWithIdentifier:v52 launchedWithReferralSource:1];

        v54 = [(PBKAppDelegate *)v522 _parseReferrerIdentifier:v11];
        v55 = v11;
        v56 = [(PBKAppDelegate *)v522 _parseCampaignAttributionReferrerIdentifier:v11];
        if (v56)
        {
          +[PKCampaignAttributionSessionManager restartSession];
          [PKAnalyticsReporter reportCampaignIdentifier:v56 eventType:0 referralSource:1 deepLinkType:3 productType:0];
        }

        LOBYTE(v33) = 1;
        [(PKPassGroupsViewController *)v522->_cardsViewController presentDiscoveryArticleForItemWithIdentifier:v52 referrerIdentifier:v54 animated:1 completion:0];

        v11 = v55;
      }
    }

    else
    {
      LOBYTE(v33) = 0;
    }

    goto LABEL_626;
  }

LABEL_30:
  v36 = PKURLActionRoutePeerPaymentPass;
  v37 = v30;
  v38 = v37;
  if (v36 == v37)
  {

    goto LABEL_39;
  }

  if (!v521 || !v36)
  {

    goto LABEL_49;
  }

  v39 = [v37 isEqualToString:v36];

  if (v39)
  {
LABEL_39:
    v40 = [v9 lastObject];
    v41 = [(PBKAppDelegate *)v522 _parseCampaignAttributionReferrerIdentifier:v11];
    if (!v40 || (v42 = v40, v42 == @"/") || (v43 = v42, v44 = [(__CFString *)v42 isEqualToString:@"/"], v43, v44))
    {
      if (v41)
      {
        +[PKCampaignAttributionSessionManager restartSession];
        [PKAnalyticsReporter reportCampaignIdentifier:v41 eventType:0 referralSource:2 deepLinkType:2 productType:1];
      }

      LOBYTE(v33) = 1;
      [(PKPassGroupsViewController *)v522->_cardsViewController presentPeerPaymentPassAnimated:1 campaignAttributionReferrerIdentifier:v41 completion:0];
      goto LABEL_45;
    }

    v134 = PKUserNotificationActionRouteViewPassDetails;
    v135 = v43;
    v136 = v134;
    v137 = v136;
    if (v135 == v136)
    {
    }

    else
    {
      if (!v136)
      {

        goto LABEL_276;
      }

      v138 = [(__CFString *)v135 isEqualToString:v136];

      if (!v138)
      {
LABEL_276:
        v193 = PKURLActionSearch;
        v194 = v135;
        v195 = v193;
        v196 = v195;
        if (v194 == v195)
        {
        }

        else
        {
          if (!v195)
          {

            goto LABEL_307;
          }

          v197 = [(__CFString *)v194 isEqualToString:v195];

          if (!v197)
          {
LABEL_307:
            v215 = PKURLActionRouteAutoReload;
            v216 = v194;
            v217 = v215;
            v218 = v217;
            if (v216 == v217)
            {
            }

            else
            {
              if (!v217)
              {

                goto LABEL_343;
              }

              v219 = [(__CFString *)v216 isEqualToString:v217];

              if (!v219)
              {
LABEL_343:
                if (v12 < 2)
                {
                  goto LABEL_401;
                }

                v236 = [v9 objectAtIndex:1];
                v237 = PKURLActionRouteRecurringPayment;
                v238 = v236;
                v239 = v238;
                if (v238 == v237)
                {
                }

                else
                {
                  if (!v238 || !v237)
                  {

                    goto LABEL_401;
                  }

                  v240 = [v238 isEqualToString:v237];

                  if (!v240)
                  {
LABEL_401:
                    v270 = PKUserNotificationActionRouteCardInformation;
                    v271 = v216;
                    v272 = v270;
                    v273 = v272;
                    if (v271 == v272)
                    {
                    }

                    else
                    {
                      if (!v272)
                      {

                        goto LABEL_408;
                      }

                      v274 = [(__CFString *)v271 isEqualToString:v272];

                      if (!v274)
                      {
LABEL_408:
                        v275 = PKURLActionRoutePeerPaymentTransferToBank;
                        v276 = v271;
                        v277 = v275;
                        v278 = v277;
                        if (v276 == v277)
                        {
                        }

                        else
                        {
                          if (!v277)
                          {

LABEL_480:
                            v323 = PKURLActionRoutePeerPaymentAddMoney;
                            v324 = v276;
                            v325 = v323;
                            v326 = v325;
                            if (v324 == v325)
                            {
                            }

                            else
                            {
                              if (!v325)
                              {

                                goto LABEL_524;
                              }

                              v327 = [(__CFString *)v324 isEqualToString:v325];

                              if (!v327)
                              {
LABEL_524:
                                if (v12 < 2)
                                {
                                  LOBYTE(v33) = 0;
                                }

                                else
                                {
                                  v351 = [v9 objectAtIndex:1];
                                  v33 = PKURLActionRouteDeviceTap;
                                  v352 = v351;
                                  v353 = v352;
                                  if (v352 == v33)
                                  {

                                    goto LABEL_595;
                                  }

                                  if (v352 && v33)
                                  {
                                    LODWORD(v33) = [v352 isEqualToString:v33];

                                    if (!v33)
                                    {
                                      goto LABEL_45;
                                    }

LABEL_595:
                                    if (v12 == 2)
                                    {
                                      v393 = 0;
                                    }

                                    else
                                    {
                                      v408 = [v9 objectAtIndex:2];
                                      v393 = [NSDecimalNumber decimalNumberWithString:v408];

                                      if (v12 >= 4)
                                      {
                                        v33 = [v9 objectAtIndex:3];
LABEL_630:
                                        [(PKPassGroupsViewController *)v522->_cardsViewController presentPeerPaymentDeviceTapWithInitialAmount:v393 initialMemo:v33];

                                        LOBYTE(v33) = 1;
                                        goto LABEL_45;
                                      }
                                    }

                                    v33 = 0;
                                    goto LABEL_630;
                                  }

                                  LOBYTE(v33) = 0;
                                }

LABEL_45:

                                goto LABEL_188;
                              }
                            }

                            cardsViewController = v522->_cardsViewController;
                            v563[0] = _NSConcreteStackBlock;
                            v563[1] = 3221225472;
                            v563[2] = sub_10000AD90;
                            v563[3] = &unk_10001CEE0;
                            v563[4] = v522;
                            LOBYTE(v33) = 1;
                            v174 = v563;
LABEL_501:
                            [(PKPassGroupsViewController *)cardsViewController presentPeerPaymentPassAnimated:1 completion:v174];
                            goto LABEL_45;
                          }

                          v279 = [(__CFString *)v276 isEqualToString:v277];

                          if (!v279)
                          {
                            goto LABEL_480;
                          }
                        }

                        cardsViewController = v522->_cardsViewController;
                        v564[0] = _NSConcreteStackBlock;
                        v564[1] = 3221225472;
                        v564[2] = sub_10000AD70;
                        v564[3] = &unk_10001CEE0;
                        v564[4] = v522;
                        LOBYTE(v33) = 1;
                        v174 = v564;
                        goto LABEL_501;
                      }
                    }

                    cardsViewController = v522->_cardsViewController;
                    v565[0] = _NSConcreteStackBlock;
                    v565[1] = 3221225472;
                    v565[2] = sub_10000AD10;
                    v565[3] = &unk_10001CEE0;
                    v565[4] = v522;
                    LOBYTE(v33) = 1;
                    v174 = v565;
                    goto LABEL_501;
                  }
                }

                if (v12 == 2)
                {
                  v266 = 0;
                }

                else
                {
                  v266 = [v9 objectAtIndex:2];
                }

                [(PKPassGroupsViewController *)v522->_cardsViewController presentPeerPaymentRecurringPaymentWithIdentifier:v266];

                LOBYTE(v33) = 1;
                goto LABEL_45;
              }
            }

            cardsViewController = v522->_cardsViewController;
            v566[0] = _NSConcreteStackBlock;
            v566[1] = 3221225472;
            v566[2] = sub_10000ACE4;
            v566[3] = &unk_10001CEE0;
            v566[4] = v522;
            LOBYTE(v33) = 1;
            v174 = v566;
            goto LABEL_501;
          }
        }

        cardsViewController = v522->_cardsViewController;
        v567[0] = _NSConcreteStackBlock;
        v567[1] = 3221225472;
        v567[2] = sub_10000ACC0;
        v567[3] = &unk_10001CEE0;
        v567[4] = v522;
        LOBYTE(v33) = 1;
        v174 = v567;
        goto LABEL_501;
      }
    }

    cardsViewController = v522->_cardsViewController;
    v568[0] = _NSConcreteStackBlock;
    v568[1] = 3221225472;
    v568[2] = sub_10000AC98;
    v568[3] = &unk_10001CEE0;
    v568[4] = v522;
    LOBYTE(v33) = 1;
    v174 = v568;
    goto LABEL_501;
  }

LABEL_49:
  v48 = PKURLActionRouteCreditPaymentPass;
  v49 = v38;
  v50 = v49;
  if (v48 == v49)
  {

    goto LABEL_63;
  }

  if (v521 && v48)
  {
    v51 = [v49 isEqualToString:v48];

    if (!v51)
    {
      goto LABEL_71;
    }

LABEL_63:
    v57 = [v9 indexOfObjectPassingTest:&stru_10001CF20];
    if (v57 == 0x7FFFFFFFFFFFFFFFLL || (v58 = v57, [v9 objectAtIndexedSubscript:v57], (v59 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      LOBYTE(v33) = 1;
      [(PKPassGroupsViewController *)v522->_cardsViewController presentCreditPassAnimated:1 completion:0];
      goto LABEL_188;
    }

    v60 = (v58 + 1);
    v61 = PKURLActionRouteCreditPaymentPassDetailsAction;
    v52 = v59;
    v62 = v61;
    v63 = v62;
    v64 = v11;
    if (v52 == v62)
    {
    }

    else
    {
      if (!v62)
      {

        goto LABEL_284;
      }

      v65 = [v52 isEqualToString:v62];

      if (!v65)
      {
LABEL_284:
        v201 = PKURLActionRouteCreditPaymentPassBillPaymentAction;
        v202 = v52;
        v203 = v201;
        v204 = v203;
        if (v202 == v203)
        {
        }

        else
        {
          if (!v203)
          {

            goto LABEL_322;
          }

          v205 = [v202 isEqualToString:v203];

          if (!v205)
          {
LABEL_322:
            v225 = PKURLActionRouteCreditPaymentPassBalanceDetails;
            v202 = v202;
            v226 = v225;
            v227 = v226;
            if (v202 == v226)
            {
            }

            else
            {
              if (!v226)
              {

                goto LABEL_355;
              }

              v228 = [v202 isEqualToString:v226];

              if (!v228)
              {
LABEL_355:
                if (v12 < 3)
                {
                  goto LABEL_444;
                }

                v242 = [v9 objectAtIndex:1];
                v243 = PKURLActionRouteCreditPaymentPassStatement;
                v244 = v242;
                v245 = v244;
                if (v244 == v243)
                {
                }

                else
                {
                  if (!v244 || !v243)
                  {

                    goto LABEL_444;
                  }

                  v246 = [v244 isEqualToString:v243];

                  if (!v246)
                  {
LABEL_444:
                    v302 = PKInstallmentRoutePass;
                    v202 = v202;
                    v303 = v302;
                    v304 = v303;
                    if (v202 == v303)
                    {
                    }

                    else
                    {
                      if (!v303)
                      {

LABEL_451:
                        v306 = PKURLActionSearch;
                        v202 = v202;
                        v307 = v306;
                        v308 = v307;
                        if (v202 == v307)
                        {
                        }

                        else
                        {
                          if (!v307)
                          {

                            goto LABEL_495;
                          }

                          v309 = [v202 isEqualToString:v307];

                          if (!v309)
                          {
LABEL_495:
                            v337 = PKURLActionRouteCreditPaymentPassSummary;
                            v338 = v202;
                            v339 = v337;
                            v340 = v339;
                            v341 = v10;
                            if (v338 == v339)
                            {
                            }

                            else
                            {
                              if (!v339)
                              {

LABEL_552:
                                v370 = PKURLActionRouteShareAccount;
                                v338 = v338;
                                v371 = v370;
                                v372 = v371;
                                if (v338 == v371)
                                {
                                }

                                else
                                {
                                  if (!v371)
                                  {

                                    goto LABEL_602;
                                  }

                                  v373 = [v338 isEqualToString:v371];

                                  if (!v373)
                                  {
LABEL_602:
                                    v394 = PKURLActionRouteCreditPaymentPassNumbers;
                                    v395 = v338;
                                    v396 = v394;
                                    v397 = v396;
                                    if (v395 == v396)
                                    {
                                    }

                                    else
                                    {
                                      if (!v396)
                                      {

LABEL_657:
                                        v425 = PKURLActionRouteCreditPaymentPassRewards;
                                        v395 = v395;
                                        v426 = v425;
                                        v427 = v426;
                                        if (v395 == v426)
                                        {
                                        }

                                        else
                                        {
                                          if (!v426)
                                          {

                                            goto LABEL_763;
                                          }

                                          v428 = [v395 isEqualToString:v426];

                                          if (!v428)
                                          {
LABEL_763:
                                            v473 = PKURLActionRouteCreditPaymentPassPromotions;
                                            v395 = v395;
                                            v474 = v473;
                                            v475 = v474;
                                            if (v395 == v474)
                                            {
                                            }

                                            else
                                            {
                                              if (!v474)
                                              {

                                                goto LABEL_807;
                                              }

                                              v476 = [v395 isEqualToString:v474];

                                              if (!v476)
                                              {
LABEL_807:
                                                v489 = PKURLActionRouteCreditPaymentPassMerchants;
                                                v479 = v395;
                                                v490 = v489;
                                                v491 = v490;
                                                if (v479 == v490)
                                                {

LABEL_818:
                                                  if (v12 <= v60)
                                                  {
                                                    v494 = 0;
                                                  }

                                                  else
                                                  {
                                                    v494 = [v9 objectAtIndex:v60];
                                                  }

                                                  v496 = v522->_cardsViewController;
                                                  v549[0] = _NSConcreteStackBlock;
                                                  v549[1] = 3221225472;
                                                  v549[2] = sub_10000B0DC;
                                                  v549[3] = &unk_10001CF70;
                                                  v549[4] = v522;
                                                  v550 = v494;
                                                  v497 = v494;
                                                  LOBYTE(v33) = 1;
                                                  [(PKPassGroupsViewController *)v496 presentCreditPassAnimated:1 completion:v549];

                                                  goto LABEL_761;
                                                }

                                                if (v490)
                                                {
                                                  v492 = [v479 isEqualToString:v490];

                                                  if (v492)
                                                  {
                                                    goto LABEL_818;
                                                  }

                                                  goto LABEL_812;
                                                }

                                                goto LABEL_811;
                                              }
                                            }

                                            if (v12 <= v60)
                                            {
LABEL_812:
                                              v409 = v522->_cardsViewController;
                                              LOBYTE(v33) = 1;
                                              v410 = 0;
                                              goto LABEL_710;
                                            }

                                            v479 = [v9 objectAtIndex:v60];
                                            if ([v479 length])
                                            {
                                              v480 = v522->_cardsViewController;
                                              v551[0] = _NSConcreteStackBlock;
                                              v551[1] = 3221225472;
                                              v551[2] = sub_10000B0B4;
                                              v551[3] = &unk_10001CF70;
                                              v551[4] = v522;
                                              v552 = v479;
                                              v481 = v479;
                                              LOBYTE(v33) = 1;
                                              [(PKPassGroupsViewController *)v480 presentCreditPassAnimated:1 completion:v551];

                                              goto LABEL_711;
                                            }

LABEL_811:

                                            goto LABEL_812;
                                          }
                                        }

                                        v409 = v522->_cardsViewController;
                                        v553[0] = _NSConcreteStackBlock;
                                        v553[1] = 3221225472;
                                        v553[2] = sub_10000B08C;
                                        v553[3] = &unk_10001CEE0;
                                        v553[4] = v522;
                                        LOBYTE(v33) = 1;
                                        v410 = v553;
LABEL_710:
                                        [(PKPassGroupsViewController *)v409 presentCreditPassAnimated:1 completion:v410];
LABEL_711:

LABEL_761:
                                        v10 = v341;
                                        goto LABEL_466;
                                      }

                                      v398 = [v395 isEqualToString:v396];

                                      if (!v398)
                                      {
                                        goto LABEL_657;
                                      }
                                    }

                                    v409 = v522->_cardsViewController;
                                    v554[0] = _NSConcreteStackBlock;
                                    v554[1] = 3221225472;
                                    v554[2] = sub_10000B038;
                                    v554[3] = &unk_10001CEE0;
                                    v554[4] = v522;
                                    LOBYTE(v33) = 1;
                                    v410 = v554;
                                    goto LABEL_710;
                                  }
                                }

                                [(PKPassGroupsViewController *)v522->_cardsViewController presentCreateAccountUserInvitationWithCompletion:0];
LABEL_760:

                                LOBYTE(v33) = 1;
                                goto LABEL_761;
                              }

                              v342 = [v338 isEqualToString:v339];

                              if (!v342)
                              {
                                goto LABEL_552;
                              }
                            }

                            if (v12 <= v60)
                            {
                              v358 = 0;
                              goto LABEL_664;
                            }

                            v346 = [v9 objectAtIndex:v58 + 1];
                            v347 = PKRouteSummaryCategoryCategories;
                            v348 = v346;
                            v349 = v348;
                            if (v348 == v347)
                            {
                            }

                            else
                            {
                              if (!v348 || !v347)
                              {

LABEL_616:
                                v403 = PKRouteSummaryCategoryMerchants;
                                v404 = v349;
                                v405 = v404;
                                if (v404 == v403)
                                {
                                }

                                else
                                {
                                  if (!v349 || !v403)
                                  {

LABEL_662:
                                    v358 = 0;
                                    goto LABEL_663;
                                  }

                                  v406 = [v404 isEqualToString:v403];

                                  if (!v406)
                                  {
                                    goto LABEL_662;
                                  }
                                }

                                v60 = (v58 + 2);
                                v358 = 1;
LABEL_663:

LABEL_664:
                                if (v12 <= v60)
                                {
                                  v434 = 0;
LABEL_756:
                                  if (v12 <= v60)
                                  {
                                    v471 = 0x7FFFFFFFFFFFFFFFLL;
                                  }

                                  else
                                  {
                                    v470 = [v9 objectAtIndex:v60];
                                    v471 = [v470 integerValue];
                                  }

                                  v472 = +[PKAccountService sharedInstance];
                                  v555[0] = _NSConcreteStackBlock;
                                  v555[1] = 3221225472;
                                  v555[2] = sub_10000AF10;
                                  v555[3] = &unk_10001CFC0;
                                  v555[4] = v522;
                                  v555[5] = v434;
                                  v555[6] = v358;
                                  v555[7] = v471;
                                  [v472 defaultAccountForFeature:2 completion:v555];

                                  goto LABEL_760;
                                }

                                v429 = [v9 objectAtIndex:v60];
                                v430 = PKTimePeriodMonth;
                                v431 = v429;
                                v432 = v431;
                                if (v431 == v430)
                                {
                                }

                                else
                                {
                                  if (!v431 || !v430)
                                  {

                                    goto LABEL_674;
                                  }

                                  v433 = [v431 isEqualToString:v430];

                                  if (!v433)
                                  {
LABEL_674:
                                    v435 = PKTimePeriodYear;
                                    v436 = v432;
                                    v437 = v436;
                                    if (v436 == v435)
                                    {
                                    }

                                    else
                                    {
                                      if (!v432 || !v435)
                                      {

LABEL_682:
                                        v439 = PKTimePeriodWeek;
                                        v440 = v437;
                                        v441 = v440;
                                        if (v440 == v439)
                                        {
                                        }

                                        else
                                        {
                                          if (!v432 || !v439)
                                          {

LABEL_754:
                                            v434 = 0;
                                            goto LABEL_755;
                                          }

                                          v442 = [v440 isEqualToString:v439];

                                          if (!v442)
                                          {
                                            goto LABEL_754;
                                          }
                                        }

                                        v434 = 0;
                                        ++v60;
LABEL_755:

                                        goto LABEL_756;
                                      }

                                      v438 = [v436 isEqualToString:v435];

                                      if (!v438)
                                      {
                                        goto LABEL_682;
                                      }
                                    }

                                    ++v60;
                                    v434 = 2;
                                    goto LABEL_755;
                                  }
                                }

                                ++v60;
                                v434 = 1;
                                goto LABEL_755;
                              }

                              v350 = [v348 isEqualToString:v347];

                              if (!v350)
                              {
                                goto LABEL_616;
                              }
                            }

                            v358 = 0;
                            v60 = (v58 + 2);
                            goto LABEL_663;
                          }
                        }

                        v213 = v522->_cardsViewController;
                        v556[0] = _NSConcreteStackBlock;
                        v556[1] = 3221225472;
                        v556[2] = sub_10000AEEC;
                        v556[3] = &unk_10001CEE0;
                        v556[4] = v522;
                        LOBYTE(v33) = 1;
                        v214 = v556;
LABEL_465:
                        [(PKPassGroupsViewController *)v213 presentCreditPassAnimated:1 completion:v214];

LABEL_466:
                        v11 = v64;
                        goto LABEL_188;
                      }

                      v305 = [v202 isEqualToString:v303];

                      if (!v305)
                      {
                        goto LABEL_451;
                      }
                    }

                    v213 = v522->_cardsViewController;
                    v557[0] = _NSConcreteStackBlock;
                    v557[1] = 3221225472;
                    v557[2] = sub_10000AEC4;
                    v557[3] = &unk_10001CEE0;
                    v557[4] = v522;
                    LOBYTE(v33) = 1;
                    v214 = v557;
                    goto LABEL_465;
                  }
                }

                v33 = [v9 objectAtIndex:2];
                v11 = v64;
                if (v33)
                {
                  v295 = [[NSUUID alloc] initWithUUIDString:v33];

                  if (v295)
                  {
                    v296 = v522->_cardsViewController;
                    v558[0] = _NSConcreteStackBlock;
                    v558[1] = 3221225472;
                    v558[2] = sub_10000AE98;
                    v558[3] = &unk_10001CF70;
                    v558[4] = v522;
                    v559 = v33;
                    [(PKPassGroupsViewController *)v296 presentCreditPassAnimated:1 completion:v558];
                  }
                }

                LOBYTE(v33) = 1;
                goto LABEL_188;
              }
            }

            v213 = v522->_cardsViewController;
            v560[0] = _NSConcreteStackBlock;
            v560[1] = 3221225472;
            v560[2] = sub_10000AE70;
            v560[3] = &unk_10001CEE0;
            v560[4] = v522;
            LOBYTE(v33) = 1;
            v214 = v560;
            goto LABEL_465;
          }
        }

        v213 = v522->_cardsViewController;
        v561[0] = _NSConcreteStackBlock;
        v561[1] = 3221225472;
        v561[2] = sub_10000AE44;
        v561[3] = &unk_10001CEE0;
        v561[4] = v522;
        LOBYTE(v33) = 1;
        v214 = v561;
        goto LABEL_465;
      }
    }

    if (v12 <= v60)
    {
      v198 = 0;
      v199 = 0;
      v11 = v64;
    }

    else
    {
      v188 = [v9 objectAtIndexedSubscript:v58 + 1];
      v189 = PKURLSubactionRouteCreditPaymentPassShare;
      v190 = v188;
      v191 = v190;
      v11 = v64;
      if (v190 == v189)
      {
      }

      else
      {
        if (!v190 || !v189)
        {

          goto LABEL_335;
        }

        v192 = [v190 isEqualToString:v189];

        if ((v192 & 1) == 0)
        {
LABEL_335:
          v233 = PKURLSubactionRouteCreditPaymentPassScheduledPayments;
          v234 = v191;
          v199 = v234;
          if (v234 == v233)
          {
          }

          else
          {
            if (!v191 || !v233)
            {

              goto LABEL_376;
            }

            v235 = [v234 isEqualToString:v233];

            if ((v235 & 1) == 0)
            {
LABEL_376:
              v259 = PKURLSubactionRouteCreditPaymentPassMakeDefaultAtApple;
              v260 = v199;
              v199 = v260;
              if (v260 == v259)
              {
              }

              else
              {
                if (!v191 || !v259)
                {

                  goto LABEL_393;
                }

                v261 = [v260 isEqualToString:v259];

                if ((v261 & 1) == 0)
                {
LABEL_393:
                  v267 = PKURLSubactionRouteCreditPaymentPassOrder;
                  v268 = v199;
                  v199 = v268;
                  if (v268 == v267)
                  {
                  }

                  else
                  {
                    if (!v191 || !v267)
                    {

                      goto LABEL_472;
                    }

                    v269 = [v268 isEqualToString:v267];

                    if ((v269 & 1) == 0)
                    {
LABEL_472:
                      v319 = PKURLSubactionRouteCreditPaymentPassReplace;
                      v320 = v199;
                      v199 = v320;
                      if (v320 == v319)
                      {
                      }

                      else
                      {
                        if (!v191 || !v319)
                        {

                          goto LABEL_507;
                        }

                        v321 = [v320 isEqualToString:v319];

                        if ((v321 & 1) == 0)
                        {
LABEL_507:
                          v343 = PKURLSubactionRouteCreditPaymentPassActivate;
                          v344 = v199;
                          v199 = v344;
                          if (v344 == v343)
                          {
                          }

                          else
                          {
                            if (!v191 || !v343)
                            {

LABEL_567:
                              v380 = PKURLSubactionRouteCreditPaymentPassTrack;
                              v381 = v199;
                              v199 = v381;
                              if (v381 == v380)
                              {
                              }

                              else
                              {
                                if (!v191 || !v380)
                                {

LABEL_622:
                                  v198 = 0;
                                  goto LABEL_623;
                                }

                                v382 = [v381 isEqualToString:v380];

                                if (!v382)
                                {
                                  goto LABEL_622;
                                }
                              }

                              v198 = 8;
LABEL_623:
                              v11 = v64;
                              goto LABEL_624;
                            }

                            v345 = [v344 isEqualToString:v343];

                            if ((v345 & 1) == 0)
                            {
                              goto LABEL_567;
                            }
                          }

                          v198 = 7;
                          goto LABEL_623;
                        }
                      }

                      v198 = 10;
                      goto LABEL_623;
                    }
                  }

                  v198 = 6;
                  goto LABEL_623;
                }
              }

              v198 = 5;
              goto LABEL_623;
            }
          }

          v198 = 1;
          goto LABEL_623;
        }
      }

      v198 = 4;
      v199 = v191;
    }

LABEL_624:
    v407 = v522->_cardsViewController;
    v562[0] = _NSConcreteStackBlock;
    v562[1] = 3221225472;
    v562[2] = sub_10000AE1C;
    v562[3] = &unk_10001CF48;
    v562[4] = v522;
    v562[5] = v198;
    LOBYTE(v33) = 1;
    [(PKPassGroupsViewController *)v407 presentCreditPassAnimated:1 completion:v562];
LABEL_625:

    goto LABEL_626;
  }

LABEL_71:
  v66 = PKUserNotificationActionRouteViewDailyCash;
  v67 = v50;
  v68 = v67;
  if (v66 == v67)
  {
  }

  else
  {
    if (!v521 || !v66)
    {

      goto LABEL_235;
    }

    v69 = [v67 isEqualToString:v66];

    if (!v69)
    {
LABEL_235:
      v165 = PKUserNotificationActionRouteVerification;
      v166 = v68;
      v167 = v166;
      if (v165 == v166)
      {
      }

      else
      {
        if (!v521 || !v165)
        {

          goto LABEL_263;
        }

        v168 = [v166 isEqualToString:v165];

        if (!v168)
        {
LABEL_263:
          v184 = PKUserNotificationActionRouteInvitationInbox;
          v185 = v167;
          v186 = v185;
          if (v184 == v185)
          {
          }

          else
          {
            if (!v521 || !v184)
            {

              goto LABEL_297;
            }

            v187 = [v185 isEqualToString:v184];

            if (!v187)
            {
LABEL_297:
              v207 = PKURLActionShare;
              v208 = v186;
              v209 = v208;
              if (v207 == v208)
              {
              }

              else
              {
                if (!v521 || !v207)
                {

LABEL_329:
                  v229 = PKURLActionRouteSavings;
                  v230 = v209;
                  v231 = v230;
                  if (v229 == v230)
                  {
                    goto LABEL_367;
                  }

                  if (v521 && v229)
                  {
                    v232 = [v230 isEqualToString:v229];

                    if (v232)
                    {
                      goto LABEL_368;
                    }
                  }

                  else
                  {
                  }

                  v247 = PKURLActionRouteSavingsAlt;
                  v248 = v231;
                  if (v247 == v248)
                  {
LABEL_367:
                  }

                  else
                  {
                    v249 = v248;
                    if (!v521 || !v247)
                    {

                      goto LABEL_384;
                    }

                    v250 = [v248 isEqualToString:v247];

                    if ((v250 & 1) == 0)
                    {
LABEL_384:
                      v262 = PKURLActionSecurePassSession;
                      v263 = v249;
                      v264 = v263;
                      if (v262 == v263)
                      {
                      }

                      else
                      {
                        if (!v521 || !v262)
                        {

                          goto LABEL_468;
                        }

                        v265 = [v263 isEqualToString:v262];

                        if (!v265)
                        {
LABEL_468:
                          if (PKEqualObjects())
                          {
                            if (v12 < 2)
                            {
                              v35 = PKLogFacilityTypeGetObject();
                              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 0;
                                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "No applicationId in URL", buf, 2u);
                              }
                            }

                            else
                            {
                              v35 = [v9 objectAtIndex:1];
                              [(PKPassGroupsViewController *)v522->_cardsViewController presentApplicationWithIdentifier:v35];
                            }

                            goto LABEL_61;
                          }

                          v513 = v11;
                          v332 = v10;
                          v333 = PKURLActionRouteAppleBalancePass;
                          v334 = v264;
                          v335 = v334;
                          if (v333 == v334)
                          {
                          }

                          else
                          {
                            if (!v521 || !v333)
                            {

                              goto LABEL_561;
                            }

                            v336 = [v334 isEqualToString:v333];

                            if (!v336)
                            {
LABEL_561:
                              v376 = PKURLRouteProvision;
                              v377 = v335;
                              v378 = v377;
                              if (v376 == v377)
                              {
                              }

                              else
                              {
                                if (!v521 || !v376)
                                {

LABEL_607:
                                  v399 = PKURLActionRequestStoreReview;
                                  v400 = v378;
                                  v401 = v400;
                                  if (v399 == v400)
                                  {
                                  }

                                  else
                                  {
                                    if (!v521 || !v399)
                                    {

                                      goto LABEL_651;
                                    }

                                    v402 = [v400 isEqualToString:v399];

                                    if (!v402)
                                    {
LABEL_651:
                                      v421 = PKURLActionApplePayUserEducationDemo;
                                      v422 = v401;
                                      v423 = v422;
                                      if (v421 == v422)
                                      {
                                      }

                                      else
                                      {
                                        if (!v521 || !v421)
                                        {

                                          goto LABEL_748;
                                        }

                                        v424 = [v422 isEqualToString:v421];

                                        if (!v424)
                                        {
LABEL_748:
                                          v466 = PKURLActionHowToUseWallet;
                                          v467 = v423;
                                          v468 = v467;
                                          if (v466 == v467)
                                          {
                                          }

                                          else
                                          {
                                            if (!v521 || !v466)
                                            {

                                              goto LABEL_793;
                                            }

                                            v469 = [v467 isEqualToString:v466];

                                            if (!v469)
                                            {
LABEL_793:
                                              v482 = PKURLActionPaymentSetupSelectProduct;
                                              v483 = v468;
                                              v484 = v483;
                                              if (v482 == v483)
                                              {
                                              }

                                              else
                                              {
                                                if (!v521 || !v482)
                                                {

LABEL_823:
                                                  v33 = PKURLActionPaymentSetupSelectSection;
                                                  v495 = v484;
                                                  v392 = v495;
                                                  if (v33 == v495)
                                                  {

LABEL_833:
                                                    if (v12 < 2)
                                                    {
                                                      v418 = 0;
                                                    }

                                                    else
                                                    {
                                                      v418 = [v9 objectAtIndex:1];
                                                    }

                                                    v498 = v522->_cardsViewController;
                                                    v499 = +[NSSet set];
                                                    [(PKPassGroupsViewController *)v498 presentPaymentSetupInMode:7 referrerIdentifier:0 referralSource:0 campaignIdentifier:0 paymentNetwork:0 transitNetworkIdentifier:0 allowedFeatureIdentifiers:v499 productIdentifiers:0 sectionIdentifier:v418];
LABEL_840:

                                                    goto LABEL_706;
                                                  }

                                                  if (v521 && v33)
                                                  {
                                                    LODWORD(v33) = [v495 isEqualToString:v33];

                                                    if (!v33)
                                                    {
                                                      goto LABEL_790;
                                                    }

                                                    goto LABEL_833;
                                                  }

                                                  goto LABEL_719;
                                                }

                                                v485 = [v483 isEqualToString:v482];

                                                if (!v485)
                                                {
                                                  goto LABEL_823;
                                                }
                                              }

                                              if (v12 < 2)
                                              {
                                                v418 = 0;
                                              }

                                              else
                                              {
                                                v493 = [v9 objectAtIndex:1];
                                                if (v493)
                                                {
                                                  v418 = [[NSSet alloc] initWithObjects:{v493, 0}];
                                                }

                                                else
                                                {
                                                  v418 = 0;
                                                }
                                              }

                                              v500 = v522->_cardsViewController;
                                              v499 = +[NSSet set];
                                              [(PKPassGroupsViewController *)v500 presentPaymentSetupInMode:3 referrerIdentifier:0 referralSource:0 campaignIdentifier:0 paymentNetwork:0 transitNetworkIdentifier:0 allowedFeatureIdentifiers:v499 productIdentifiers:v418 sectionIdentifier:0];
                                              goto LABEL_840;
                                            }
                                          }

                                          if (v12 < 2)
                                          {
                                            v418 = 0;
                                          }

                                          else
                                          {
                                            v418 = [v9 objectAtIndex:1];
                                          }

                                          [(PKPassGroupsViewController *)v522->_cardsViewController presentHowToUseWalletWithCardLotIdentifier:v418];
                                          goto LABEL_706;
                                        }
                                      }

                                      v541 = 0u;
                                      v542 = 0u;
                                      v539 = 0u;
                                      v540 = 0u;
                                      v451 = [v10 queryItems];
                                      v452 = [v451 countByEnumeratingWithState:&v539 objects:v577 count:16];
                                      if (v452)
                                      {
                                        v453 = v452;
                                        v454 = *v540;
                                        v455 = PKURLApplePayUserEducationDemoSourceKey;
                                        while (2)
                                        {
                                          for (i = 0; i != v453; i = i + 1)
                                          {
                                            if (*v540 != v454)
                                            {
                                              objc_enumerationMutation(v451);
                                            }

                                            v457 = *(*(&v539 + 1) + 8 * i);
                                            v458 = [v457 name];
                                            v459 = v458;
                                            if (v458 == v455)
                                            {

LABEL_774:
                                              v478 = [v457 value];
                                              v462 = PKApplePayUserEducationDemoSourceFromString();

                                              goto LABEL_775;
                                            }

                                            if (v458)
                                            {
                                              v460 = v455 == 0;
                                            }

                                            else
                                            {
                                              v460 = 1;
                                            }

                                            if (v460)
                                            {
                                            }

                                            else
                                            {
                                              v461 = [v458 isEqualToString:v455];

                                              if (v461)
                                              {
                                                goto LABEL_774;
                                              }
                                            }
                                          }

                                          v453 = [v451 countByEnumeratingWithState:&v539 objects:v577 count:16];
                                          if (v453)
                                          {
                                            continue;
                                          }

                                          break;
                                        }
                                      }

                                      v462 = 0;
LABEL_775:

                                      [(PKPassGroupsViewController *)v522->_cardsViewController presentApplePayUserEducationDemoFromSource:v462];
                                      goto LABEL_707;
                                    }
                                  }

                                  v418 = objc_alloc_init(PKStoreKitReviewPromptHelper);
                                  v419 = [(PBKAppDelegate *)v522 window];
                                  v420 = [v419 windowScene];
                                  [v418 requestReviewInScene:v420 trigger:0];

LABEL_705:
LABEL_706:

LABEL_707:
                                  LOBYTE(v33) = 1;
LABEL_790:
                                  v10 = v332;
                                  goto LABEL_253;
                                }

                                v379 = [v377 isEqualToString:v376];

                                if (!v379)
                                {
                                  goto LABEL_607;
                                }
                              }

                              if (v12 != 4)
                              {
LABEL_720:
                                LOBYTE(v33) = 0;
                                goto LABEL_790;
                              }

                              v390 = [v9 objectAtIndexedSubscript:1];
                              v33 = PKURLActionPendingProvisioning;
                              v391 = v390;
                              v392 = v391;
                              if (v391 == v33)
                              {
                              }

                              else
                              {
                                if (!v391 || !v33)
                                {

LABEL_719:
                                  goto LABEL_720;
                                }

                                LODWORD(v33) = [v391 isEqualToString:v33];

                                if (!v33)
                                {
                                  goto LABEL_790;
                                }
                              }

                              v418 = [v9 objectAtIndexedSubscript:2];
                              v419 = [v9 objectAtIndexedSubscript:3];
                              [(PKPassGroupsViewController *)v522->_cardsViewController presentProvisioningForPendingProvisioningOfType:v418 identifier:v419];
                              goto LABEL_705;
                            }
                          }

                          v362 = [v9 indexOfObjectPassingTest:&stru_10001D080];
                          if (v362 == 0x7FFFFFFFFFFFFFFFLL || (v363 = v362, [v9 objectAtIndexedSubscript:v362], (v364 = objc_claimAutoreleasedReturnValue()) == 0))
                          {
                            LOBYTE(v33) = 1;
                            [(PKPassGroupsViewController *)v522->_cardsViewController presentPassForFeatureIdentifier:4 animated:1 completion:0];
                            v366 = 0;
LABEL_789:

                            goto LABEL_790;
                          }

                          v365 = PKURLActionRouteAppleBalanceAddMoney;
                          v366 = v364;
                          v367 = v365;
                          v368 = v367;
                          if (v366 == v367)
                          {
                          }

                          else
                          {
                            if (!v367)
                            {

LABEL_722:
                              LOBYTE(v33) = 0;
                              goto LABEL_789;
                            }

                            v369 = [v366 isEqualToString:v367];

                            if (!v369)
                            {
                              goto LABEL_722;
                            }
                          }

                          if (v12 <= v363 + 1)
                          {
                            v447 = 0;
                            goto LABEL_701;
                          }

                          v443 = [v9 objectAtIndexedSubscript:?];
                          v444 = PKURLActionRouteAppleBalanceAddMoneyDirectTopUp;
                          v445 = v443;
                          v33 = v445;
                          if (v445 == v444)
                          {
                          }

                          else
                          {
                            if (!v445 || !v444)
                            {

LABEL_799:
                              v486 = PKURLActionRouteAppleBalanceAddMoneyInStoreTopUp;
                              v487 = v33;
                              v447 = v487;
                              if (v487 == v486)
                              {

LABEL_821:
                                [(PKPassGroupsViewController *)v522->_cardsViewController presentAppleBalanceAddMoneyInStoreTopUpAnimated:1 completion:0];
                                goto LABEL_702;
                              }

                              if (v33 && v486)
                              {
                                v488 = [v487 isEqualToString:v486];

                                if (v488)
                                {
                                  goto LABEL_821;
                                }
                              }

                              else
                              {
                              }

LABEL_701:
                              [(PKPassGroupsViewController *)v522->_cardsViewController presentAppleBalanceAddMoneyAnimated:1 completion:0];
LABEL_702:
                              v33 = v447;
LABEL_788:

                              LOBYTE(v33) = 1;
                              goto LABEL_789;
                            }

                            v446 = [v445 isEqualToString:v444];

                            if ((v446 & 1) == 0)
                            {
                              goto LABEL_799;
                            }
                          }

                          [(PKPassGroupsViewController *)v522->_cardsViewController presentAppleBalanceAddMoneyDirectTopUpAnimated:1 completion:0];
                          goto LABEL_788;
                        }
                      }

                      v33 = [v10 fragment];
                      v52 = [v33 componentsSeparatedByString:@"&"];

                      v310 = [v52 count];
                      LOBYTE(v33) = v310 == 2;
                      if (v310 == 2)
                      {
                        v311 = v10;
                        v312 = [NSData alloc];
                        [v52 objectAtIndexedSubscript:0];
                        v314 = v313 = v11;
                        v199 = [v312 initWithBase64EncodedString:v314 options:0];

                        v315 = [NSData alloc];
                        v316 = [v52 objectAtIndexedSubscript:1];
                        v317 = [v315 initWithBase64EncodedString:v316 options:0];

                        v10 = v311;
                        [(PKPassGroupsViewController *)v522->_cardsViewController presentSecurePassSessionWithIssuerData:v199 withSignature:v317 animated:1];

                        v11 = v313;
                      }

                      else
                      {
                        v199 = PKLogFacilityTypeGetObject();
                        if (os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&_mh_execute_header, v199, OS_LOG_TYPE_DEFAULT, "Missing required parameter for securePassSession.", buf, 2u);
                        }
                      }

                      goto LABEL_625;
                    }
                  }

LABEL_368:
                  v251 = [v9 indexOfObjectPassingTest:&stru_10001D060];
                  if (v251 == 0x7FFFFFFFFFFFFFFFLL || (v252 = v251, [v9 objectAtIndexedSubscript:v251], (v253 = objc_claimAutoreleasedReturnValue()) == 0))
                  {
                    LOBYTE(v33) = 1;
                    [(PKPassGroupsViewController *)v522->_cardsViewController presentAccountFeature:5 animated:1 destination:0 fundingSourceIdentifier:0 completion:0];
                    v52 = 0;
                    goto LABEL_626;
                  }

                  v254 = PKURLActionRouteSavingsDetails;
                  v52 = v253;
                  v255 = v254;
                  v256 = v255;
                  v257 = v11;
                  if (v52 == v255)
                  {
                  }

                  else
                  {
                    if (!v255)
                    {

LABEL_485:
                      v328 = PKURLActionRouteSavingsDocuments;
                      v52 = v52;
                      v329 = v328;
                      v330 = v329;
                      if (v52 == v329)
                      {

                        v11 = v257;
                      }

                      else
                      {
                        if (!v329)
                        {

                          goto LABEL_531;
                        }

                        v11 = v257;
                        v331 = [v52 isEqualToString:v329];

                        if (!v331)
                        {
LABEL_531:
                          v354 = PKURLActionRouteSavingsAddMoney;
                          v52 = v52;
                          v355 = v354;
                          v356 = v355;
                          if (v52 == v355)
                          {
                          }

                          else
                          {
                            if (!v355)
                            {

                              goto LABEL_577;
                            }

                            v357 = [v52 isEqualToString:v355];

                            if (!v357)
                            {
LABEL_577:
                              v383 = PKURLActionRouteSavingsWithdrawMoney;
                              v52 = v52;
                              v384 = v383;
                              v385 = v384;
                              if (v52 == v384)
                              {
                              }

                              else
                              {
                                if (!v384)
                                {

LABEL_642:
                                  v414 = PKURLActionRouteSavingsFCCStepUp;
                                  v52 = v52;
                                  v415 = v414;
                                  v416 = v415;
                                  if (v52 == v415)
                                  {
                                  }

                                  else
                                  {
                                    if (!v415)
                                    {

                                      goto LABEL_741;
                                    }

                                    v417 = [v52 isEqualToString:v415];

                                    if (!v417)
                                    {
LABEL_741:
                                      v463 = PKURLActionRouteSavingsBankVerification;
                                      v52 = v52;
                                      v464 = v463;
                                      v33 = v464;
                                      if (v52 == v464)
                                      {
                                      }

                                      else
                                      {
                                        if (!v464)
                                        {

                                          goto LABEL_697;
                                        }

                                        v465 = [v52 isEqualToString:v464];

                                        if (!v465)
                                        {
                                          LOBYTE(v33) = 0;
                                          goto LABEL_697;
                                        }
                                      }

                                      if (v12 < 3)
                                      {
                                        v477 = 0;
                                      }

                                      else
                                      {
                                        v477 = [v9 objectAtIndex:2];
                                      }

                                      LOBYTE(v33) = 1;
                                      [(PKPassGroupsViewController *)v522->_cardsViewController presentAccountFeature:5 animated:1 destination:12 fundingSourceIdentifier:v477 completion:0];

                                      goto LABEL_697;
                                    }
                                  }

                                  v374 = v522->_cardsViewController;
                                  LOBYTE(v33) = 1;
                                  v375 = 11;
LABEL_696:
                                  [(PKPassGroupsViewController *)v374 presentAccountFeature:5 animated:1 destination:v375 fundingSourceIdentifier:0 completion:0];
LABEL_697:
                                  v11 = v257;
                                  goto LABEL_626;
                                }

                                v386 = [v52 isEqualToString:v384];

                                if (!v386)
                                {
                                  goto LABEL_642;
                                }
                              }

                              v374 = v522->_cardsViewController;
                              LOBYTE(v33) = 1;
                              v375 = 3;
                              goto LABEL_696;
                            }
                          }

                          v374 = v522->_cardsViewController;
                          LOBYTE(v33) = 1;
                          v375 = 2;
                          goto LABEL_696;
                        }
                      }

                      LOBYTE(v33) = 1;
                      [(PKPassGroupsViewController *)v522->_cardsViewController presentAccountFeature:5 animated:1 destination:6 fundingSourceIdentifier:0 completion:0];
LABEL_626:

                      goto LABEL_188;
                    }

                    v258 = [v52 isEqualToString:v255];

                    if (!v258)
                    {
                      goto LABEL_485;
                    }
                  }

                  if (v12 <= v252 + 1)
                  {
                    v199 = 0;
LABEL_462:
                    v318 = 1;
LABEL_772:
                    v11 = v257;
                    LOBYTE(v33) = 1;
                    [(PKPassGroupsViewController *)v522->_cardsViewController presentAccountFeature:5 animated:1 destination:v318 fundingSourceIdentifier:0 completion:0];
                    goto LABEL_625;
                  }

                  v297 = [v9 objectAtIndexedSubscript:?];
                  v298 = PKURLActionRouteSavingsAddBankAccount;
                  v299 = v297;
                  v300 = v299;
                  if (v299 == v298)
                  {
                  }

                  else
                  {
                    if (!v299 || !v298)
                    {

                      goto LABEL_538;
                    }

                    v301 = [v299 isEqualToString:v298];

                    if ((v301 & 1) == 0)
                    {
LABEL_538:
                      v359 = PKURLActionRouteSavingsAccountInfo;
                      v360 = v300;
                      v199 = v360;
                      if (v360 == v359)
                      {
                      }

                      else
                      {
                        if (!v300 || !v359)
                        {

                          goto LABEL_582;
                        }

                        v361 = [v360 isEqualToString:v359];

                        if ((v361 & 1) == 0)
                        {
LABEL_582:
                          v387 = PKURLActionRouteSavingsBusinessChat;
                          v388 = v199;
                          v199 = v388;
                          if (v388 == v387)
                          {
                          }

                          else
                          {
                            if (!v300 || !v387)
                            {

                              goto LABEL_636;
                            }

                            v389 = [v388 isEqualToString:v387];

                            if ((v389 & 1) == 0)
                            {
LABEL_636:
                              v411 = PKURLActionRouteSavingsAccountNumbers;
                              v412 = v199;
                              v199 = v412;
                              if (v412 == v411)
                              {
                              }

                              else
                              {
                                if (!v300 || !v411)
                                {

LABEL_713:
                                  v448 = PKURLActionRouteSavingsAddBeneficiary;
                                  v449 = v199;
                                  v199 = v449;
                                  if (v449 == v448)
                                  {

LABEL_771:
                                    v318 = 13;
                                    goto LABEL_772;
                                  }

                                  if (v300 && v448)
                                  {
                                    v450 = [v449 isEqualToString:v448];

                                    if (v450)
                                    {
                                      goto LABEL_771;
                                    }
                                  }

                                  else
                                  {
                                  }

                                  goto LABEL_462;
                                }

                                v413 = [v412 isEqualToString:v411];

                                if ((v413 & 1) == 0)
                                {
                                  goto LABEL_713;
                                }
                              }

                              v318 = 10;
                              goto LABEL_772;
                            }
                          }

                          v318 = 7;
                          goto LABEL_772;
                        }
                      }

                      v318 = 5;
                      goto LABEL_772;
                    }
                  }

                  v318 = 4;
                  v199 = v300;
                  goto LABEL_772;
                }

                v210 = [v208 isEqualToString:v207];

                if (!v210)
                {
                  goto LABEL_329;
                }
              }

              if (v12 == 2)
              {
                v513 = v11;
                v241 = [v9 objectAtIndexedSubscript:1];
LABEL_421:
                if (v241)
                {
                  v288 = [v10 queryItems];
                  v289 = [v288 pk_firstObjectPassingTest:&stru_10001D040];

                  v290 = v522->_cardsViewController;
                  v291 = [v289 value];
                  v292 = v10;
                  v293 = v291;
                  if (v291)
                  {
                    v294 = v291;
                  }

                  else
                  {
                    v294 = PKAnalyticsReportShareReferralSourceUniversalLinkKey;
                  }

                  LOBYTE(v33) = 1;
                  [(PKPassGroupsViewController *)v290 presentShareInvitationWithMailboxAddress:v241 referralSource:v294 animated:1];

                  v10 = v292;
                }

                else
                {
                  LOBYTE(v33) = 0;
                }

                goto LABEL_253;
              }

              if (v12 != 3)
              {
                if (v12 < 3)
                {
                  goto LABEL_187;
                }

                goto LABEL_413;
              }

              v220 = [v9 objectAtIndexedSubscript:2];
              v221 = PKURLActionShareActivateShare;
              v222 = v220;
              v223 = v222;
              if (v222 == v221)
              {
              }

              else
              {
                if (!v222 || !v221)
                {

                  goto LABEL_413;
                }

                v224 = [v222 isEqualToString:v221];

                if (!v224)
                {
LABEL_413:
                  v513 = v11;
                  v510 = v10;
                  v280 = objc_alloc_init(NSMutableString);
                  for (j = 1; j != v12; ++j)
                  {
                    v282 = [v9 objectAtIndexedSubscript:j];
                    v283 = v282;
                    if (v282 == @"https:" || v282 && (v284 = [(__CFString *)v282 isEqualToString:@"https:"], v283, (v284 & 1) != 0))
                    {
                      v285 = @"%@//";
                    }

                    else
                    {
                      v285 = @"%@/";
                    }

                    v286 = [v9 objectAtIndexedSubscript:j];
                    [v280 appendFormat:v285, v286];
                  }

                  v10 = v510;
                  v287 = [v510 fragment];
                  [v280 appendFormat:@"#%@", v287];

                  v241 = [v280 copy];
                  goto LABEL_421;
                }
              }

              LOBYTE(v33) = 1;
              v52 = [v9 objectAtIndexedSubscript:1];
              [(PKPassGroupsViewController *)v522->_cardsViewController presentShareActivationWithShareIdentifier:v52];
              goto LABEL_626;
            }
          }

          if (v12 < 2)
          {
            v206 = 0;
          }

          else
          {
            v206 = [v9 objectAtIndexedSubscript:1];
          }

          v211 = v522->_cardsViewController;
          v543[0] = _NSConcreteStackBlock;
          v543[1] = 3221225472;
          v543[2] = sub_10000B214;
          v543[3] = &unk_10001CD38;
          v544 = v206;
          v212 = v206;
          LOBYTE(v33) = 1;
          [(PKPassGroupsViewController *)v211 presentInvitationsInboxAnimated:1 completion:v543];

          goto LABEL_188;
        }
      }

      v175 = v11;
      v176 = [v10 queryItems];
      v177 = [v176 pk_firstObjectPassingTest:&stru_10001D000];

      v178 = [v10 queryItems];
      v33 = [v178 pk_firstObjectPassingTest:&stru_10001D020];

      v179 = [v33 value];
      v180 = PKVerificationSuccessValue;
      v181 = v179;
      v182 = v181;
      if (v181 == v180)
      {
      }

      else
      {
        if (!v181 || !v180)
        {

          goto LABEL_292;
        }

        v183 = [v181 isEqualToString:v180];

        if (!v183)
        {
          goto LABEL_293;
        }
      }

      v200 = v522->_cardsViewController;
      v182 = [v177 value];
      [(PKPassGroupsViewController *)v200 dismissVerificationPageForPassWithDeviceAccountID:v182];
LABEL_292:

LABEL_293:
      LOBYTE(v33) = 1;
      v11 = v175;
      goto LABEL_188;
    }
  }

  v509 = v10;
  v547 = 0u;
  v548 = 0u;
  v545 = 0u;
  v546 = 0u;
  v513 = v11;
  v139 = v11;
  v140 = [v139 countByEnumeratingWithState:&v545 objects:v578 count:16];
  if (!v140)
  {

    v164 = 0;
    v163 = 0;
    goto LABEL_248;
  }

  v141 = v140;
  v506 = v9;
  v536 = 0;
  v142 = 0;
  obja = 0;
  v143 = *v546;
  v144 = PKUserNotificationActionQueryItemDate;
  v538 = PKUserNotificationActionQueryItemPassUniqueIdentifier;
  v532 = PKUserNotificationActionQueryItemRedemptionType;
  v534 = v139;
  do
  {
    for (k = 0; k != v141; k = k + 1)
    {
      if (*v546 != v143)
      {
        objc_enumerationMutation(v139);
      }

      v146 = *(*(&v545 + 1) + 8 * k);
      v147 = [v146 name];
      v148 = [v146 value];
      if ([v148 length])
      {
        v149 = v147;
        v150 = v149;
        if (v149 == v144)
        {

LABEL_211:
          v153 = PKDateForString();

          if (v153)
          {
            v142 = v153;
            goto LABEL_230;
          }

          v157 = objc_alloc_init(NSISO8601DateFormatter);
          [v157 setFormatOptions:275];
          v158 = +[NSCalendar currentCalendar];
          v159 = [v158 timeZone];
          [v157 setTimeZone:v159];

          v142 = [v157 dateFromString:v148];
LABEL_219:

          goto LABEL_230;
        }

        if (v149)
        {
          v151 = v144 == 0;
        }

        else
        {
          v151 = 1;
        }

        if (v151)
        {
        }

        else
        {
          v152 = [v149 isEqualToString:v144];

          if (v152)
          {
            goto LABEL_211;
          }
        }

        v154 = v150;
        v155 = v154;
        if (v154 == v538)
        {

LABEL_221:
          v160 = v148;

          v536 = v160;
          v139 = v534;
          goto LABEL_230;
        }

        if (v150 && v538)
        {
          v156 = [v154 isEqualToString:v538];

          if (v156)
          {
            goto LABEL_221;
          }
        }

        else
        {
        }

        v161 = v155;
        v157 = v161;
        if (v161 == v532)
        {

          v139 = v534;
LABEL_229:
          obja = [v148 integerValue];
          goto LABEL_230;
        }

        v139 = v534;
        if (!v150 || !v532)
        {
          goto LABEL_219;
        }

        v162 = [v161 isEqualToString:v532];

        if (v162)
        {
          goto LABEL_229;
        }
      }

LABEL_230:
    }

    v141 = [v139 countByEnumeratingWithState:&v545 objects:v578 count:16];
  }

  while (v141);

  v9 = v506;
  v163 = v536;
  v164 = obja;
  if (!v142)
  {
LABEL_248:
    v142 = +[NSDate date];
  }

  v169 = +[NSCalendar currentCalendar];
  v170 = [v169 components:30 fromDate:v142];

  v10 = v509;
  if (!v163 && v164 == 1)
  {
    v171 = +[PKPeerPaymentService sharedInstance];
    v172 = [v171 account];
    v163 = [v172 associatedPassUniqueID];
  }

  LOBYTE(v33) = 1;
  [(PKPassGroupsViewController *)v522->_cardsViewController presentDailyCashForPassUniqueIdentifier:v163 dateComponents:v170 redemptionType:v164 animated:1 completion:0];

LABEL_253:
  v11 = v513;
LABEL_188:

  return v33;
}

- (void)willPresentNotification:(id)a3 withCompletionHandler:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 27);
  }
}

- (void)openSettingsForNotification:(id)a3
{
  v4 = [a3 request];
  v5 = [v4 content];
  v6 = [v5 userInfo];

  v7 = [v6 PKStringForKey:PKPassbookBulletinPassUniqueIdentifierKey];
  if (v7 || ([v6 PKStringForKey:PKUserNotificationPassUniqueIdentifierContextKey], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000B50C;
    block[3] = &unk_10001CE18;
    block[4] = self;
    v11 = v7;
    v8 = v7;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000B528;
    v9[3] = &unk_10001CC10;
    v9[4] = self;
    dispatch_async(&_dispatch_main_q, v9);
  }
}

- (void)_handleUniversalLinkWithUserActivity:(id)a3
{
  v4 = [a3 webpageURL];
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = [[NSURLComponents alloc] initWithURL:v4 resolvingAgainstBaseURL:1];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_15;
  }

  v7 = [v5 host];
  v8 = [v6 URL];
  v9 = [v8 pathComponents];

  if ((PKIsURLHttpScheme() & 1) == 0)
  {
    [v9 count];
    v11 = v9;
    goto LABEL_11;
  }

  v33 = v9;
  v10 = [(PBKAppDelegate *)self _isValidRelayServerURL:v4 outPathComponents:&v33];
  v11 = v33;

  if (v10)
  {
    v12 = [v11 count];
    v13 = 0;
    goto LABEL_6;
  }

  v21 = PKWalletUniversalLinkHostName;
  v22 = v7;
  v23 = v21;
  v24 = v23;
  if (v22 == v23)
  {
    v25 = 1;
  }

  else
  {
    v25 = 0;
    if (v22 && v23)
    {
      v25 = [v22 isEqualToString:v23];
    }
  }

  v26 = [v11 count];
  if (!v25)
  {
    goto LABEL_11;
  }

  v12 = v26;
  if (v26 < 1)
  {
    goto LABEL_11;
  }

  v30 = v7;
  v13 = 0;
  v27 = PKURLActionRouteAppleCardPaymentPass;
  while (1)
  {
    v28 = [v11 objectAtIndexedSubscript:v13];
    if (![v28 isEqualToString:@"/"])
    {
      break;
    }

LABEL_28:
    if (v12 == ++v13)
    {
      v7 = v30;
      goto LABEL_11;
    }
  }

  v29 = [v28 isEqualToString:v27];

  if (v29)
  {
    goto LABEL_28;
  }

  v7 = v30;
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_11;
  }

LABEL_6:
  v14 = [v11 objectAtIndexedSubscript:v13];
  v15 = objc_alloc_init(NSMutableArray);
  [v15 addObject:@"/"];
  v16 = (v13 + 1);
  if (v16 < v12)
  {
    do
    {
      v17 = [v11 objectAtIndexedSubscript:v16];
      [v15 addObject:v17];

      ++v16;
    }

    while (v12 != v16);
  }

  v18 = [(PBKAppDelegate *)self _handleWalletUniversalLinkableURLWithHost:v14 pathComponents:v15 urlComponents:v6];

  if ((v18 & 1) == 0)
  {
LABEL_11:
    v19 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v4;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Cannot handle universal link to URL: %@", buf, 0xCu);
    }

    v20 = +[LSApplicationWorkspace defaultWorkspace];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10000B948;
    v31[3] = &unk_10001D0A8;
    v32 = v4;
    [v20 openURL:v32 configuration:0 completionHandler:v31];
  }

LABEL_15:
LABEL_16:
}

- (void)_handleSpotlightWithUserActivity:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:CSSearchableItemActivityIdentifier];
  v6 = [NSURL URLWithString:v5];
  v7 = v6;
  if (!v6 || ([v6 scheme], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"x-coredata"), v8, !v9))
  {
    v10 = [PKCoreSpotlightUtilities passUniqueIdentifierFromSpotlightIdentifier:v5];
    v11 = [PKCoreSpotlightUtilities transactionIdentifierFromSpotlightIdentifier:v5];
    v12 = [PKCoreSpotlightUtilities passUniqueIdentifierFromCardInformationSpotlightIdentifier:v5];
    v13 = [PKCoreSpotlightUtilities paymentSetupProductIdentifierFromSpotlightIdentifier:v5];
    v14 = [PKCoreSpotlightUtilities accountIdentifierFromSpotlightIdentifier:v5];
    v15 = v14;
    if (v10)
    {
      cardsViewController = self->_cardsViewController;
      v17 = v10;
      v18 = 0;
    }

    else
    {
      if (v11)
      {
        [(PKPassGroupsViewController *)self->_cardsViewController presentTransactionDetailsForTransactionWithIdentifier:v11 confirmPaymentOfferPlan:0];
        goto LABEL_10;
      }

      if (!v12)
      {
        if (v13)
        {
          v20 = self->_cardsViewController;
          v21 = [NSSet setWithObject:v13];
          [(PKPassGroupsViewController *)v20 presentPaymentSetupInMode:3 referrerIdentifier:0 referralSource:0 campaignIdentifier:0 paymentNetwork:0 transitNetworkIdentifier:0 allowedFeatureIdentifiers:0 productIdentifiers:v21 sectionIdentifier:0];
        }

        else
        {
          if (!v14)
          {
            goto LABEL_10;
          }

          v21 = +[PKAccountService sharedInstance];
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_10000C0E8;
          v22[3] = &unk_10001CE40;
          v22[4] = self;
          [v21 accountWithIdentifier:v15 completion:v22];
        }

        goto LABEL_10;
      }

      cardsViewController = self->_cardsViewController;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10000C094;
      v23[3] = &unk_10001CCB0;
      v23[4] = self;
      v18 = v23;
      v17 = v12;
    }

    [(PKPassGroupsViewController *)cardsViewController presentPassWithUniqueID:v17 animated:1 completionHandler:v18];
LABEL_10:

    goto LABEL_11;
  }

  if ([v5 containsString:@"Transaction"])
  {
    v10 = objc_alloc_init(off_100021778());
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10000BE14;
    v26[3] = &unk_10001D0D0;
    v27 = v7;
    v28 = self;
    [v10 transactionWithURL:v27 completion:v26];
  }

  else if ([v5 containsString:@"Order"])
  {
    v19 = self->_cardsViewController;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10000BF94;
    v24[3] = &unk_10001CE68;
    v25 = v7;
    [(PKPassGroupsViewController *)v19 presentOrderManagementAnimated:1 completion:v24];
    v10 = v25;
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10000F5C0(v5, v10);
    }
  }

LABEL_11:
}

- (BOOL)application:(id)a3 continueUserActivity:(id)a4 restorationHandler:(id)a5
{
  v6 = a4;
  [(PKLaunchAuthorizationPromptController *)self->_launchAuthorizationPromptController disableLaunchPromptsForSession];
  [v6 userInfo];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000C2BC;
  v10[3] = &unk_10001CE90;
  v10[4] = self;
  v12 = v11 = v6;
  v7 = v12;
  v8 = v6;
  [(PBKAppDelegate *)self _executeWhenApplicationForegroundActive:v10];

  return 1;
}

- (BOOL)application:(id)a3 shouldRestoreSecureApplicationState:(id)a4
{
  v4 = a4;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"archiveVersion"];

  v6 = [v5 unsignedIntegerValue];
  return v6 == 2;
}

- (BOOL)application:(id)a3 shouldSaveSecureApplicationState:(id)a4
{
  v5 = a4;
  v6 = [NSNumber numberWithUnsignedInteger:2];
  [v5 encodeObject:v6 forKey:@"archiveVersion"];

  v7 = [(PKPassGroupsViewController *)self->_cardsViewController groupStackView];
  LOBYTE(v6) = [v7 isPresentingPassViewFront];

  return v6;
}

- (void)_setForegroundActive:(BOOL)a3
{
  v3 = a3;
  self->_foregroundActive = a3;
  if (self->_foregroundActiveResourcesCreated != a3)
  {
    if (a3)
    {
      [(PBKAppDelegate *)self _createForegroundActiveResources];
    }

    else
    {
      [(PBKAppDelegate *)self _destroyForegroundActiveResources];
    }
  }

  [(PBKAppDelegate *)self _executeForegroundActiveBlocksIfPossible];
  if (self->_brightnessRampingAllowed != v3)
  {
    v5 = +[PKBacklightController sharedInstance];
    v6 = v5;
    if (v3)
    {
      [v5 beginAllowingBacklightRamping:self];
    }

    else
    {
      [v5 endAllowingBacklightRamping:self];
    }

    self->_brightnessRampingAllowed = v3;
  }
}

- (void)_destroyForegroundActiveResources
{
  self->_foregroundActiveResourcesCreated = 0;
  v3 = +[PKDiscoveryService sharedInstance];
  [v3 endReporingDiscoveryAnalytics];

  inUseAssertion = self->_inUseAssertion;
  if (inUseAssertion)
  {
    v5 = inUseAssertion;
    v6 = self->_inUseAssertion;
    self->_inUseAssertion = 0;

    v7 = dispatch_time(0, (PKLocationAssertionGracePeriod * 1000000000.0));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000CC40;
    block[3] = &unk_10001CC10;
    v18 = v5;
    v8 = v5;
    dispatch_after(v7, &_dispatch_main_q, block);
  }

  staticGlyphResources = self->_staticGlyphResources;
  self->_staticGlyphResources = 0;

  lockButtonObserver = self->_lockButtonObserver;
  if (lockButtonObserver)
  {
    [(BSInvalidatable *)lockButtonObserver invalidate];
    v11 = self->_lockButtonObserver;
    self->_lockButtonObserver = 0;
  }

  lockButtonAssertion = self->_lockButtonAssertion;
  if (lockButtonAssertion)
  {
    [(SBSAssertion *)lockButtonAssertion invalidate];
    v13 = self->_lockButtonAssertion;
    self->_lockButtonAssertion = 0;
  }

  informativeForegroundAssertion = self->_informativeForegroundAssertion;
  if (informativeForegroundAssertion)
  {
    self->_informativeForegroundAssertion = 0;
    v15 = informativeForegroundAssertion;

    v16 = [PKGetClassNFHardwareManager() sharedHardwareManagerWithNoUI];
    [v16 releaseAssertion:v15 completion:0];
  }
}

- (void)consumeDoublePressUpForButtonKind:(int64_t)a3
{
  v8 = PKAnalyticsSubjectWallet;
  v4 = [NSArray arrayWithObjects:&v8 count:1];
  v6[0] = PKAnalyticsReportEventKey;
  v6[1] = PKAnalyticsReportButtonTagKey;
  v7[0] = PKAnalyticsReportEventTypeButtonTap;
  v7[1] = PKAnalyticsReportButtonTagDoubleClick;
  v5 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
  [PKAnalyticsReporter subjects:v4 sendEvent:v5];

  [(PKPassGroupsViewController *)self->_cardsViewController forceModalPresentationFromButton:1];
}

- (id)applicationDocumentsDirectory
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 URLsForDirectory:9 inDomains:1];
  v4 = [v3 lastObject];

  return v4;
}

- (void)_executeWhenApplicationForegroundActive:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    if (self->_foregroundActive && self->_didBecomeActiveOnce)
    {
      v4[2](v4);
    }

    else
    {
      blocksQueuedForForegroundExecution = self->_blocksQueuedForForegroundExecution;
      v6 = [v4 copy];
      [(NSMutableArray *)blocksQueuedForForegroundExecution addObject:v6];
    }

    v4 = v7;
  }
}

- (BOOL)_isValidRelayServerURL:(id)a3 outPathComponents:(id *)a4
{
  v5 = a3;
  v6 = +[PKPaymentService paymentService];
  v7 = [v6 sharedPaymentWebServiceContext];
  v8 = [v7 configuration];
  v9 = PKCurrentRegion();
  v10 = [v8 allowedRelayServerHostsForRegion:v9];

  v11 = [v5 host];
  if ([v10 containsObject:v11])
  {
    v12 = [NSString alloc];
    v13 = [v12 initWithFormat:@"/v%@/%@/", PKSharingRelayServerRequestVersion, PKSharingRelayServerMailboxURI];
    v14 = PKWalletUniversalLinkHostName;
    v15 = v11;
    v16 = v15;
    if (v15 == v14)
    {
    }

    else
    {
      if (!v15 || !v14)
      {

        goto LABEL_12;
      }

      v17 = [v15 isEqualToString:v14];

      if (!v17)
      {
        goto LABEL_12;
      }
    }

    v19 = [v5 path];
    v20 = [v19 hasPrefix:v13];

    if (!v20)
    {
      v18 = 0;
LABEL_13:

      goto LABEL_14;
    }

LABEL_12:
    v23[0] = PKURLActionShare;
    v21 = [v5 absoluteString];
    v23[1] = v21;
    *a4 = [NSArray arrayWithObjects:v23 count:2];

    v18 = 1;
    goto LABEL_13;
  }

  v18 = 0;
LABEL_14:

  return v18;
}

- (void)presentDeletePassWithUniqueID:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000D194;
  v7[3] = &unk_10001CC88;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(PBKAppDelegate *)v8 _executeWhenApplicationForegroundActive:v7];
}

- (void)handleDeletePassRequestWithPass:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000D390;
  v4[3] = &unk_10001CE18;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(PBKAppDelegate *)v5 _executeWhenApplicationForegroundActive:v4];
}

- (void)_handlePassSharingActionForUniqueID:(id)a3 presentationBlock:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000D57C;
  v13[3] = &unk_10001D250;
  v13[4] = self;
  v14 = v8;
  v15 = a5;
  v16 = v9;
  v10 = v9;
  v11 = v15;
  v12 = v8;
  [(PBKAppDelegate *)self _executeWhenApplicationForegroundActive:v13];
}

- (void)presentAddMoneyForPassWithUniqueID:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000D8FC;
  v7[3] = &unk_10001CC88;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(PBKAppDelegate *)v8 _executeWhenApplicationForegroundActive:v7];
}

- (void)presentSearchForPassWithUniqueID:(id)a3 withQuery:(id)a4 completion:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000DB68;
  v10[3] = &unk_10001D328;
  v11 = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v7 = v13;
  v8 = v14;
  v9 = v12;
  [(PBKAppDelegate *)v11 _executeWhenApplicationForegroundActive:v10];
}

- (void)presentAccountServiceSchedulePaymentWithUniqueID:(id)a3 billPayAmountType:(int64_t)a4 billPayAmount:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000DD54;
  v15[3] = &unk_10001D350;
  v15[4] = self;
  v16 = v10;
  v18 = a6;
  v19 = a4;
  v17 = v11;
  v12 = v18;
  v13 = v11;
  v14 = v10;
  [(PBKAppDelegate *)self _executeWhenApplicationForegroundActive:v15];
}

@end