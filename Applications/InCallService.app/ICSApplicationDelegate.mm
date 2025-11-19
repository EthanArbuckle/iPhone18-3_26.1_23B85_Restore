@interface ICSApplicationDelegate
+ (BOOL)hasCarKitRoute;
+ (BOOL)isExpanseMessagesJoinRequest:(id)a3;
+ (id)configurationForCall:(id)a3 preferredPresentationMode:(int64_t)a4;
- (BOOL)application:(id)a3 continueUserActivity:(id)a4 restorationHandler:(id)a5;
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (BOOL)application:(id)a3 openJoinConversationRequestForConversationLink:(id)a4 webpageURL:(id)a5;
- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5;
- (BOOL)bannerPresentationManagerDismissSBBannerIfNeeded;
- (BOOL)bannerPresentationManagerWantsSpringBoardIsLockedStatus;
- (BOOL)canModifyCallsForProcessHandle:(id)a3;
- (BOOL)handleBackgroundLaunchURL:(id)a3;
- (BOOL)hasActiveOrPendingInCallPresentation;
- (BOOL)hasActiveOrPendingVideoMessagePresentation;
- (BOOL)hasExistingDismissedInCallScene;
- (BOOL)hasExistingFullScreenInCallScene;
- (BOOL)hasOngoingEmergencyCall;
- (BOOL)hasPresentedFullScreenCallUI;
- (BOOL)isAlertAvailable;
- (BOOL)isAnsweringMachineAvailable;
- (BOOL)isAppBlockedFromBypassingPrompt:(id)a3;
- (BOOL)isClarityBoardActive;
- (BOOL)isDefaultCallingApp:(id)a3;
- (BOOL)isDefaultDialingApp:(id)a3;
- (BOOL)isFaceTimeLoggedIn;
- (BOOL)isPresentingAmbient;
- (BOOL)isPresentingFullScreenCallUI;
- (BOOL)isPresentingFullScreenOverlayCallUI;
- (BOOL)openDialRequest:(id)a3 application:(id)a4 url:(id)a5 options:(id)a6;
- (BOOL)openDialRequest:(id)a3 forProcessHandle:(id)a4 bypassUIPromptIfDefaultProvider:(BOOL)a5;
- (BOOL)openJoinConversationRequest:(id)a3;
- (BOOL)openSystemProviderDialRequest:(id)a3;
- (BOOL)openThirdPartyDialRequest:(id)a3;
- (BOOL)openUserInterfaceURL:(id)a3;
- (BOOL)openVideoMessagePlaybackURL:(id)a3;
- (BOOL)refreshShareableContentURL:(id)a3;
- (BOOL)shouldActivateSOS;
- (BOOL)shouldActivateSpringBoardRemoteAlertForCall:(id)a3;
- (BOOL)shouldHandleBluetoothCommand;
- (BOOL)shouldPresentDismissedForCall:(id)a3 tappedPill:(BOOL)a4;
- (BOOL)shouldShowAirplaneEmergencyCallAlertForDialRequest:(id)a3;
- (BOOL)shouldShowEmergencyCallbackModeAlertForDialRequest:(id)a3;
- (BOOL)shouldShowPromptForProcessHandle:(id)a3;
- (BOOL)shouldShowRTTAlertForDialRequest:(id)a3;
- (BOOL)shouldShowScreenTimeAlertForDialRequest:(id)a3;
- (BOOL)shouldShowScreenTimeAlertForJoinConversationRequest:(id)a3;
- (BOOL)shouldShowTelephonyAccountUnavailableAlertForDialRequest:(id)a3;
- (BOOL)showScreenSharingURL:(id)a3;
- (BOOL)showSystemCallControlsURL:(id)a3;
- (BOOL)updateForegroundAppURL:(id)a3;
- (BOOL)updateForegroundAppURL:(id)a3 using:(id)a4;
- (CNKBannerPresentationManager)bannerPresentationManager;
- (ICSCarPlayServicesController)carPlayServicesController;
- (NSString)inCallSceneSessionIdentifier;
- (PHInCallRemoteAlertShellViewController)inCallShellViewController;
- (SBSUIInCallWindowScene)currentInCallScene;
- (TUCallCenter)callCenter;
- (TUSenderIdentityClient)senderIdentityClient;
- (UIImage)audioRouteGlyphForDevice;
- (UIMenu)menuAudioOutput;
- (UIMenu)menuItemMute;
- (id)audioRouteMenu;
- (id)configurationForCall:(id)a3 tappedPill:(BOOL)a4;
- (id)configurationForCallDetailsViewWithFullScreenRequest:(BOOL)a3;
- (id)configurationForGreenTea3P;
- (id)configurationForPTTSessionWithCall:(id)a3 preferredPresentationMode:(int64_t)a4;
- (id)configurationForSOS;
- (id)configurationForScreenShareBroadcast;
- (id)configurationForScreenSharingInitiallyInPiP:(BOOL)a3;
- (id)configurationForScreenTime;
- (id)currentVideoCallUsingCallContainer:(id)a3;
- (id)getEvolvedSubscriptionLabelID:(id)a3 error:(id *)a4;
- (id)getMenuBarApplicationName:(id)a3;
- (id)incomingVideoCallUsingCallContainer:(id)a3;
- (id)isAppBlockedFromBypassingPrompt;
- (id)isDefaultCallingAppBlock;
- (id)isDefaultDialingAppBlock;
- (id)isHandleAvailableForFaceTimeBlock;
- (id)makeAnsweringMachineWithPrivateSelf:(id)a3;
- (id)makeAudioOutputItemWithRoute:(id)a3;
- (id)makeAudioOutputItems;
- (id)makeWaitOnHoldService;
- (id)remoteAlertShellViewControllerForWindowScene:(id)a3;
- (id)routesForAudioRoutingMenuController:(id)a3;
- (id)screenSharingRootViewController;
- (id)springBoardRemoteAlertOptionsForCall:(id)a3 dialRequest:(id)a4;
- (id)springBoardRemoteAlertOptionsForSOSCall;
- (void)_didBecomeActive:(id)a3;
- (void)_updateInactiveDate;
- (void)_willConnect:(id)a3;
- (void)_willResignFromActive:(id)a3;
- (void)acquirePreventSuspensionAssertionForDuration:(double)a3;
- (void)activateSpringBoardRemoteAlertForSOSCall;
- (void)addNotificationObservers;
- (void)audioCallStatusChanged:(id)a3;
- (void)audioRoutingMenuController:(id)a3 didSelectLagunaActionForHandle:(id)a4 conversation:(id)a5;
- (void)audioRoutingMenuController:(id)a3 didSelectRoute:(id)a4;
- (void)bannerPresentationManagerAVDowngradedGroupUUID:(id)a3;
- (void)bannerPresentationManagerBannerPresentationManagerAVUpgradedCallUUID:(id)a3;
- (void)bannerPresentationManagerDidDismissBanner;
- (void)bannerPresentationManagerGameOverlayDidOpen;
- (void)bannerPresentationManagerRequestToPresentBanner:(id)a3;
- (void)bannerPresentationManagerShowFullscreenCallDetailsView;
- (void)bannerPresentationManagerShowFullscreenPTTCallDetailsView;
- (void)bannerPresentationManagerShowFullscreenUI;
- (void)bannerPresentationManagerUpdatedControlsManagerCallUUID:(id)a3;
- (void)callDisplayContextChangedNotification:(id)a3;
- (void)callStatusChanged:(id)a3;
- (void)configureDialRequest:(id)a3 forProcessHandle:(id)a4 bypassUIPromptIfDefaultProvider:(BOOL)a5;
- (void)conversationManager:(id)a3 addedActiveConversation:(id)a4;
- (void)conversationManager:(id)a3 screenSharingAvailableChanged:(BOOL)a4;
- (void)conversationManager:(id)a3 sharePlayAvailableChanged:(BOOL)a4;
- (void)dealloc;
- (void)dialRequestForDefaultCallingConfiguredDialRequest:(id)a3 completion:(id)a4;
- (void)dismissAnsweredCallBannerIfNeeded;
- (void)dismissClarityUIScene;
- (void)dismissInCallSceneSession;
- (void)dismissPTTSessionPresentation;
- (void)dismissScreenSharingBroadcasterSession;
- (void)dismissScreenSharingSceneSession;
- (void)fetchInCallUIState:(id)a3;
- (void)fetchRemoteControlStatus:(id)a3;
- (void)handleAlertInvokedNotification:(id)a3;
- (void)handleCallStatusChangedNotification:(id)a3;
- (void)handleHeadsetButtonPressForCall:(id)a3 sourceIdentifier:(id)a4;
- (void)handleHeadsetButtonPressForCall:(id)a3 sourceIdentifier:(id)a4 urlOptions:(id)a5;
- (void)handleInterventionURL:(id)a3 continueWith:(id)a4;
- (void)handleLockScreenStatusChangedNotification:(id)a3;
- (void)handleMenuBarTitleForCallUpgradeDowngradeNotification:(id)a3;
- (void)handleRedialCommandWhileScreening:(id)a3;
- (void)handleStateChangeForAVLessConversation:(id)a3 fromConversation:(id)a4;
- (void)handleSupportsEmergencyFallbackChangedForCall:(id)a3;
- (void)handleSupportsEmergencyFallbackChangedNotification:(id)a3;
- (void)handleTUCallTTYTypeChangedNotification:(id)a3;
- (void)hideCarPlayUI;
- (void)initiateCallForConversationRequest:(id)a3;
- (void)initiateCallForDialRequest:(id)a3 completionHandler:(id)a4;
- (void)installCameraStateMonitor;
- (void)installPillStateMonitor;
- (void)invalidatePreventSuspensionAssertion;
- (void)isHandleAvailableForFaceTime:(id)a3 completion:(id)a4;
- (void)modifyTopLevelMenuWindow:(id)a3 :(id)a4;
- (void)performDismissedPresentationForCallDetailsView;
- (void)performFullScreenPresentationForCallDetailsView;
- (void)performPersentationForScreenSharingObserver;
- (void)performPresentationForSOS;
- (void)performPresentationForScreenSharingInitiallyInPiP:(BOOL)a3;
- (void)performPresentationForScreenTime;
- (void)performPresentationForVideoMessage;
- (void)performPresentationWithConfiguration:(id)a3 forSceneType:(unint64_t)a4;
- (void)prepareForAmbientScene:(id)a3;
- (void)presentDismissedPTTSceneForCall:(id)a3;
- (void)prewarmBannerPresentationManager;
- (void)requestBackgroundPiPAuthorizationForSceneType:(unint64_t)a3 withConfiguration:(id)a4;
- (void)requestBackgroundPiPAuthorizationOfDismissedInCallSceneForCall:(id)a3;
- (void)requestClarityBoardPresentation;
- (void)requestFullScreenSpringBoardPresentationForCallDetailsView;
- (void)requestFullScreenSpringBoardPresentationWithCompletion:(id)a3;
- (void)requestGreenTea3PPresentationForCall:(id)a3;
- (void)requestHandoffEligibleConversationPresentation;
- (void)requestLagunaPullConversationPresentation;
- (void)requestPTTPresentation:(int64_t)a3 forCall:(id)a4;
- (void)requestPresentationForCall:(id)a3 dialRequest:(id)a4 tappedPill:(BOOL)a5;
- (void)requestPresentationForScreenTime;
- (void)requestScreeningSceneIfNeeded:(id)a3;
- (void)requestSpringBoardPresentationForCall:(id)a3 dialRequest:(id)a4 tappedPill:(BOOL)a5;
- (void)requestSpringBoardPresentationForCallDetailsView;
- (void)requestSpringBoardPresentationForSOS;
- (void)requestSpringBoardPresentationForScreenSharingAsPiP:(BOOL)a3;
- (void)requestSpringBoardPresentationForScreenSharingBroadcaster:(id)a3;
- (void)requestSpringBoardPresentationForScreenTime;
- (void)requestWaitOnHoldBannerPresentation;
- (void)revokeAndRemoveBackgroundPiPAuthorizationForSceneTypeIfNeeded:(unint64_t)a3;
- (void)routesChangedForRouteController:(id)a3;
- (void)screenSharingInteractionController:(id)a3 didUpdateRemoteControlStatus:(BOOL)a4;
- (void)screenSharingStateMonitor:(id)a3 didUpdateScreenSharingBroadcastingState:(BOOL)a4;
- (void)screenSharingStateMonitor:(id)a3 didUpdateScreenSharingState:(BOOL)a4;
- (void)setActivationContext:(id)a3;
- (void)setAllowsCarPlayBanners:(BOOL)a3;
- (void)setIsPresentingAmbient:(BOOL)a3;
- (void)setMostRecentlyDisconnectedAudioCall:(id)a3;
- (void)shouldHandleMRCommand:(unsigned int)a3 completion:(id)a4;
- (void)shouldHandleMRCommand:(unsigned int)a3 sourceIdentifier:(id)a4 completion:(id)a5;
- (void)showBannerIfNecessaryForHandoffEligibleConversation;
- (void)showCallControlsForCurrentContext;
- (void)showCarPlayUIWithActivation:(BOOL)a3;
- (void)showOrCreateCallForConversationRequest:(id)a3;
- (void)smartHoldSessionChanged:(id)a3;
- (void)startOrResetTimerForDuration:(double)a3;
- (void)startSOSFlowWithActivationReason:(id)a3;
- (void)startScreenTimeFlowWithURL:(id)a3;
- (void)toggleMute:(id)a3;
- (void)transitionFromAmbientScene;
- (void)transitionScenetoOverlayAndDismissCMASAlerts:(BOOL)a3;
- (void)updateCallsIfNeeded;
- (void)updateDialRequestAccountIfNecessary:(id)a3;
- (void)updatePrefersBannersHiddenFromClonedDisplay;
- (void)updatePresentationIfNecessaryForGreenTea3PCall:(id)a3;
- (void)updateRemoteAlertStateIfNecessaryForCall:(id)a3;
- (void)updateiPadMenuBarApplicationName:(id)a3;
- (void)videoCallStatusChanged:(id)a3;
@end

@implementation ICSApplicationDelegate

- (void)_updateInactiveDate
{
  v3 = +[NSDate now];
  [(ICSApplicationDelegate *)self setPossibleInactiveDate:v3];
}

- (id)isAppBlockedFromBypassingPrompt
{
  isAppBlockedFromBypassingPrompt = self->_isAppBlockedFromBypassingPrompt;
  if (!isAppBlockedFromBypassingPrompt)
  {
    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100009170;
    v8[3] = &unk_100357900;
    objc_copyWeak(&v9, &location);
    v4 = objc_retainBlock(v8);
    v5 = self->_isAppBlockedFromBypassingPrompt;
    self->_isAppBlockedFromBypassingPrompt = v4;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    isAppBlockedFromBypassingPrompt = self->_isAppBlockedFromBypassingPrompt;
  }

  v6 = objc_retainBlock(isAppBlockedFromBypassingPrompt);

  return v6;
}

- (id)isDefaultCallingAppBlock
{
  isDefaultCallingAppBlock = self->_isDefaultCallingAppBlock;
  if (!isDefaultCallingAppBlock)
  {
    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100009304;
    v8[3] = &unk_100357900;
    objc_copyWeak(&v9, &location);
    v4 = objc_retainBlock(v8);
    v5 = self->_isDefaultCallingAppBlock;
    self->_isDefaultCallingAppBlock = v4;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    isDefaultCallingAppBlock = self->_isDefaultCallingAppBlock;
  }

  v6 = objc_retainBlock(isDefaultCallingAppBlock);

  return v6;
}

- (TUSenderIdentityClient)senderIdentityClient
{
  senderIdentityClient = self->_senderIdentityClient;
  if (!senderIdentityClient)
  {
    v4 = objc_alloc_init(TUSenderIdentityClient);
    v5 = self->_senderIdentityClient;
    self->_senderIdentityClient = v4;

    senderIdentityClient = self->_senderIdentityClient;
  }

  return senderIdentityClient;
}

- (BOOL)isClarityBoardActive
{
  if (qword_1003B0D18 != -1)
  {
    sub_100254D30();
  }

  return byte_1003B0D10;
}

- (CNKBannerPresentationManager)bannerPresentationManager
{
  bannerPresentationManager = self->_bannerPresentationManager;
  if (!bannerPresentationManager)
  {
    v4 = [[CNKBannerPresentationManager alloc] initWithDelegate:self];
    v5 = self->_bannerPresentationManager;
    self->_bannerPresentationManager = v4;

    [(CNKBannerPresentationManager *)self->_bannerPresentationManager setAudioRoutingDelegate:self];
    bannerPresentationManager = self->_bannerPresentationManager;
  }

  return bannerPresentationManager;
}

+ (BOOL)isExpanseMessagesJoinRequest:(id)a3
{
  v3 = a3;
  v4 = sub_100009BF0(v3);

  return v4 & 1;
}

- (BOOL)hasExistingDismissedInCallScene
{
  if (![(ICSApplicationDelegate *)self hasActiveOrPendingInCallPresentation])
  {
    return 0;
  }

  v3 = [(ICSApplicationDelegate *)self currentInCallScene];
  if (v3)
  {
    v4 = [(ICSApplicationDelegate *)self currentInCallScene];
    v5 = [v4 presentationMode] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasActiveOrPendingInCallPresentation
{
  v2 = [(ICSApplicationDelegate *)self sceneManager];
  v3 = [v2 hasPendingOrExistingSceneOfType:0];

  return v3;
}

- (BOOL)hasExistingFullScreenInCallScene
{
  if (![(ICSApplicationDelegate *)self hasActiveOrPendingInCallPresentation])
  {
    return 0;
  }

  v3 = [(ICSApplicationDelegate *)self currentInCallScene];
  if (v3)
  {
    v4 = [(ICSApplicationDelegate *)self currentInCallScene];
    v5 = [v4 presentationMode] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)showBannerIfNecessaryForHandoffEligibleConversation
{
  v3 = +[TUCallCenter sharedInstance];
  v4 = [v3 currentAudioAndVideoCallCount];

  if (!v4)
  {
    v5 = +[TUCallCenter sharedInstance];
    v6 = [v5 conversationManager];
    v7 = [v6 handoffEligibleConversation];

    if (v7)
    {
      [(ICSApplicationDelegate *)self requestHandoffEligibleConversationPresentation];
    }
  }
}

- (SBSUIInCallWindowScene)currentInCallScene
{
  v2 = [(ICSApplicationDelegate *)self sceneManager];
  v3 = [v2 callScene];

  return v3;
}

- (ICSCarPlayServicesController)carPlayServicesController
{
  carPlayServicesController = self->_carPlayServicesController;
  if (!carPlayServicesController)
  {
    v4 = objc_alloc_init(ICSCarPlayServicesController);
    v5 = self->_carPlayServicesController;
    self->_carPlayServicesController = v4;

    carPlayServicesController = self->_carPlayServicesController;
  }

  return carPlayServicesController;
}

- (BOOL)isAnsweringMachineAvailable
{
  v2 = [(ICSApplicationDelegate *)self answeringMachine];
  v3 = [v2 isEnabled];

  return v3;
}

- (void)updateCallsIfNeeded
{
  v3 = [(ICSApplicationDelegate *)self possibleInactiveDate];

  if (v3)
  {
    v4 = +[NSDate now];
    v5 = [(ICSApplicationDelegate *)self possibleInactiveDate];
    [v4 timeIntervalSinceDate:v5];
    v7 = v6;

    if (v7 > 5.0)
    {
      v8 = sub_100004F84();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Update current calls from inactive state.", v10, 2u);
      }

      v9 = +[TUCallCenter sharedInstance];
      [v9 fetchCurrentCalls];
    }

    [(ICSApplicationDelegate *)self setPossibleInactiveDate:0];
  }
}

- (void)dismissScreenSharingSceneSession
{
  v3 = [(PHApplicationDelegate *)self featureFlags];
  v4 = [v3 supportsScreenSharing];

  if (v4)
  {

    [(ICSApplicationDelegate *)self dismissInCallSceneOfType:1];
  }

  else
  {
    v5 = sub_100009960();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Ignoring request to dismiss Screen Sharing scene since the feature is disabled", v6, 2u);
    }
  }
}

- (void)updatePrefersBannersHiddenFromClonedDisplay
{
  v3 = [(ICSApplicationDelegate *)self screenSharingMonitorFactory];
  v4 = [v3 sharedMonitor];
  v5 = [v4 isBroadcastingScreenSharing];

  v6 = [(ICSApplicationDelegate *)self screenSharingInteractionControllerFactory];
  v7 = [v6 sharedController];
  v8 = [v7 remoteControlStatus];

  if (v8 == 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  v10 = sub_1000314C4();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (v9)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    if (v5)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    *v16 = 138543874;
    *&v16[4] = v12;
    *&v16[12] = 2114;
    *&v16[14] = v13;
    if (v8 == 2)
    {
      v11 = @"YES";
    }

    *&v16[22] = 2114;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Screen sharing callScene setPrefersBannersHiddenFromClonedDisplay: %{public}@ (isBroadcastingScreenSharing: %{public}@ isUnderRemoteControl: %{public}@)", v16, 0x20u);
  }

  v14 = [(ICSApplicationDelegate *)self sceneManager:*v16];
  v15 = [v14 callScene];
  [v15 setPrefersBannersHiddenFromClonedDisplay:v9];
}

- (void)dismissScreenSharingBroadcasterSession
{
  v3 = [(PHApplicationDelegate *)self featureFlags];
  v4 = [v3 screenSharingDrawToHighlightEnabled];

  if (v4)
  {
    v5 = [(ICSApplicationDelegate *)self sceneManager];
    v6 = [v5 screenSharingBroadcasterScene];

    v7 = sub_100009960();
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Dismissing Sharing Broadcasing scene.", v12, 2u);
      }

      v9 = +[UIApplication sharedApplication];
      v10 = [v6 session];
      [v9 requestSceneSessionDestruction:v10 options:0 errorHandler:&stru_100357C08];
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100031654();
    }
  }

  else
  {
    v11 = sub_100009960();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Ignoring request to dismiss Broadcaster scene since the feature is disabled", buf, 2u);
    }
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICSApplicationDelegate;
  [(ICSApplicationDelegate *)&v4 dealloc];
}

- (void)hideCarPlayUI
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "", buf, 2u);
  }

  if ([(ICSApplicationDelegate *)self shouldIgnoreCarPlayAssertionInvalidations])
  {
    v4 = sub_100004F84();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ignoring CarPlay assertion invalidation request", v5, 2u);
    }
  }

  else
  {
    v4 = [(ICSApplicationDelegate *)self carPlayServicesController];
    [v4 invalidateAssertion];
  }
}

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v84 = a3;
  v6 = a4;
  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v99 = v84;
    v100 = 2112;
    v101 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@, didFinishLaunchingWithOptions: %@", buf, 0x16u);
  }

  v95.receiver = self;
  v95.super_class = ICSApplicationDelegate;
  v83 = [(PHApplicationDelegate *)&v95 application:v84 didFinishLaunchingWithOptions:v6];
  if (v83)
  {
    v8 = objc_opt_new();
    screenSharingMonitorFactory = self->_screenSharingMonitorFactory;
    self->_screenSharingMonitorFactory = v8;

    v10 = objc_opt_new();
    screenSharingInteractionControllerFactory = self->_screenSharingInteractionControllerFactory;
    self->_screenSharingInteractionControllerFactory = v10;

    [(ICSApplicationDelegate *)self addNotificationObservers];
    [(ICSApplicationDelegate *)self installCameraStateMonitor];
    [(ICSApplicationDelegate *)self installPillStateMonitor];
    v12 = [TURTCCallReporter alloc];
    v13 = +[TUCallCenter sharedInstance];
    v14 = [v12 initWithCallCenter:v13];
    callReporter = self->_callReporter;
    self->_callReporter = v14;

    answeringMachine = [(PHApplicationDelegate *)self featureFlags];
    if (TUCallScreeningActivatable())
    {
      v17 = [(ICSApplicationDelegate *)self answeringMachine];
      v18 = v17 == 0;

      if (!v18)
      {
LABEL_8:
        v20 = [(PHApplicationDelegate *)self featureFlags];
        v21 = [v20 waitOnHoldEnabled];

        if (v21)
        {
          v22 = [(ICSApplicationDelegate *)self makeWaitOnHoldService];
          [(ICSApplicationDelegate *)self setWaitOnHoldService:v22];
        }

        TURegisterIDSAvailabilityListener();
        dispatch_async(&_dispatch_main_q, &stru_1003577A0);
        v23 = objc_alloc_init(NSMutableSet);
        [(ICSApplicationDelegate *)self setAllInCallScenes:v23];

        v24 = objc_alloc_init(NSMutableSet);
        [(ICSApplicationDelegate *)self setConnectedSceneSessionIdentifiers:v24];

        v25 = objc_alloc_init(NSMutableSet);
        [(ICSApplicationDelegate *)self setConnectedCallIdentifiers:v25];

        v26 = objc_alloc_init(ICSSceneManager);
        [(ICSApplicationDelegate *)self setSceneManager:v26];

        v27 = [NSMutableDictionary dictionaryWithCapacity:2];
        [(ICSApplicationDelegate *)self setBackgroundPIPAuthorizationForSceneType:v27];

        v28 = objc_alloc_init(CARSessionStatus);
        [(ICSApplicationDelegate *)self setCarKitSessionStatus:v28];

        +[_TtC13InCallService20CarPlayBannerManager shared];
        v29 = [ICSAmbientActivityController alloc];
        v30 = +[TUCallCenter sharedInstance];
        v31 = +[NSNotificationCenter defaultCenter];
        v32 = [(ICSApplicationDelegate *)self sceneManager];
        v33 = [(ICSAmbientActivityController *)v29 initWithCallCenter:v30 notificationCenter:v31 sceneManager:v32];
        ambientActivityController = self->_ambientActivityController;
        self->_ambientActivityController = v33;

        v35 = +[TUCallCenter sharedInstance];
        v81 = [v35 frontmostAudioOrVideoCall];

        [(ICSApplicationDelegate *)self updateRemoteAlertStateIfNecessaryForCall:v81];
        if (!v81)
        {
          [(ICSApplicationDelegate *)self showBannerIfNecessaryForHandoffEligibleConversation];
        }

        v36 = +[TUCallCenter sharedInstance];
        v37 = [v36 callServicesClientCapabilities];
        [v37 setWantsCallStopStreamingOnInvalidation:1];

        v38 = +[TUCallCenter sharedInstance];
        v39 = [v38 callServicesClientCapabilities];
        [v39 setWantsCallNotificationsDisabledWhileSuspended:1];

        v40 = +[TUCallCenter sharedInstance];
        v41 = [v40 callServicesClientCapabilities];
        [v41 save];

        v42 = +[TUCallCenter sharedInstance];
        v43 = [v42 routeController];
        [v43 addDelegate:self];

        v44 = [(PHApplicationDelegate *)self featureFlags];
        if ([v44 conversationOneToOneModeEnabled])
        {
          v45 = 2;
        }

        else
        {
          v45 = 0;
        }

        v46 = +[TUCallCenter sharedInstance];
        v47 = [v46 conversationManager];
        [v47 setNonSessionBackedConversationCreationMode:v45];

        v48 = +[TUCallCenter sharedInstance];
        v49 = [v48 conversationManager];
        [v49 setNonSessionBackedConversationCreationQueue:&_dispatch_main_q];

        v50 = [[TUUIXPCHost alloc] initWithDelegate:self delegateQueue:&_dispatch_main_q];
        [(ICSApplicationDelegate *)self setXpcHost:v50];

        v51 = +[TUCallCenter sharedInstance];
        v52 = [(ICSApplicationDelegate *)self xpcHost];
        v53 = [v52 endpoint];
        [v51 registerAnonymousXPCEndpoint:v53];

        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v54 = +[TUCallCenter sharedInstance];
        v55 = [v54 currentVideoCalls];

        v56 = [v55 countByEnumeratingWithState:&v91 objects:v97 count:16];
        if (v56)
        {
          v57 = *v92;
          do
          {
            for (i = 0; i != v56; i = i + 1)
            {
              if (*v92 != v57)
              {
                objc_enumerationMutation(v55);
              }

              v59 = *(*(&v91 + 1) + 8 * i);
              if (([v59 isConversation] & 1) == 0)
              {
                v60 = +[TUCallCenter sharedInstance];
                v61 = [v60 conversationManager];
                [v61 updateConversationsNotBackedByGroupSessionWithCall:v59];
              }
            }

            v56 = [v55 countByEnumeratingWithState:&v91 objects:v97 count:16];
          }

          while (v56);
        }

        v62 = +[TUCallCenter sharedInstance];
        v63 = [v62 conversationManager];
        [v63 addDelegate:self queue:&_dispatch_main_q];

        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v64 = +[TUCallCenter sharedInstance];
        v65 = [v64 conversationManager];
        v66 = [v65 activeConversations];

        v67 = [v66 countByEnumeratingWithState:&v87 objects:v96 count:16];
        if (v67)
        {
          v68 = *v88;
          do
          {
            for (j = 0; j != v67; j = j + 1)
            {
              if (*v88 != v68)
              {
                objc_enumerationMutation(v66);
              }

              v70 = *(*(&v87 + 1) + 8 * j);
              v71 = +[TUCallCenter sharedInstance];
              v72 = [v71 conversationManager];
              [(ICSApplicationDelegate *)self conversationManager:v72 addedActiveConversation:v70];
            }

            v67 = [v66 countByEnumeratingWithState:&v87 objects:v96 count:16];
          }

          while (v67);
        }

        [(ICSApplicationDelegate *)self prewarmBannerPresentationManager];
        v73 = [(PHApplicationDelegate *)self featureFlags];
        v74 = [v73 nameAndPhotoEnabled];

        if (v74)
        {
          v75 = +[IMDaemonController sharedInstance];
          [v75 addListenerID:TUBundleIdentifierInCallServiceApplication capabilities:kFZListenerCapAccounts];
        }

        v76 = objc_alloc_init(ICSApplicationDelegateHelper);
        applicationDelegateHelper = self->_applicationDelegateHelper;
        self->_applicationDelegateHelper = v76;

        v78 = objc_alloc_init(CNKFaceTimeAvailabilityHelper);
        faceTimeAvailabilityHelper = self->_faceTimeAvailabilityHelper;
        self->_faceTimeAvailabilityHelper = v78;

        objc_initWeak(buf, self);
        v85[0] = _NSConcreteStackBlock;
        v85[1] = 3221225472;
        v85[2] = sub_1000770D8;
        v85[3] = &unk_1003577C8;
        objc_copyWeak(&v86, buf);
        [(ICSApplicationDelegateHelper *)self->_applicationDelegateHelper setOpenDialRequestBlock:v85];
        +[CNKNameAndPhotoUtilities prewarm];
        objc_destroyWeak(&v86);
        objc_destroyWeak(buf);

        goto LABEL_34;
      }

      v19 = [(ICSApplicationDelegate *)self makeAnsweringMachineWithPrivateSelf:self];
      answeringMachine = self->_answeringMachine;
      self->_answeringMachine = v19;
    }

    goto LABEL_8;
  }

LABEL_34:

  return v83;
}

- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100004F84();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v79 = v8;
    v80 = 2112;
    v81 = v9;
    v82 = 2112;
    v83 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@, url: %@ options: %@", buf, 0x20u);
  }

  v12 = sub_100004F84();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v9 isLaunchForScreeningURL];
    v14 = @"NO";
    if (v13)
    {
      v14 = @"YES";
    }

    *buf = 138412290;
    v79 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Are we launched for screening: %@", buf, 0xCu);
  }

  v15 = +[TUCallCenter sharedInstance];
  [v15 fetchCurrentCalls];

  if ([(__CFString *)v8 applicationState])
  {
    v16 = sub_100004F84();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Update Inactive Date", buf, 2u);
    }

    [(ICSApplicationDelegate *)self _updateInactiveDate];
  }

  if ([(ICSApplicationDelegate *)self isSOSCall:v9])
  {
    v17 = sub_100004F84();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "SOS url detected", buf, 2u);
    }

    v18 = [v9 sos_urlActivationReason];
    [(ICSApplicationDelegate *)self startSOSFlowWithActivationReason:v18];
    goto LABEL_15;
  }

  v21 = [v9 scheme];
  v22 = [v21 isEqualToString:@"dialIntervention"];

  if (v22)
  {
    v23 = [(PHApplicationDelegate *)self featureFlags];
    v24 = [v23 nudityDetectionEnabled];

    if (v24)
    {
      v73[0] = _NSConcreteStackBlock;
      v73[1] = 3221225472;
      v73[2] = sub_100077D48;
      v73[3] = &unk_1003577F0;
      v73[4] = self;
      v74 = v8;
      v75 = v9;
      v76 = v10;
      [(ICSApplicationDelegate *)self handleInterventionURL:v75 continueWith:v73];
    }

    else
    {
      v25 = sub_100004F84();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10025496C();
      }
    }

    goto LABEL_16;
  }

  if ([v9 isShowInCallUIURL] || objc_msgSend(v9, "isShowKeypadURL"))
  {
    goto LABEL_23;
  }

  if ([v9 isShowSystemCallControlsURL])
  {
    v26 = [(PHApplicationDelegate *)self featureFlags];
    if (([v26 waitOnHoldEnabled] & 1) == 0)
    {

LABEL_38:
      if (!TUCallScreeningEnabled() || (+[TUCallCenter sharedInstance](TUCallCenter, "sharedInstance"), v30 = objc_claimAutoreleasedReturnValue(), [v30 frontmostCall], v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "isScreening"), v31, v30, !v32))
      {
        if ([(ICSApplicationDelegate *)self showSystemCallControlsURL:v9])
        {
          goto LABEL_16;
        }

        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v27 = +[TUCallCenter sharedInstance];
    v28 = [v27 frontmostCall];
    v29 = [v28 isWaitOnHoldActive];

    if (!v29)
    {
      goto LABEL_38;
    }

LABEL_23:
    if ([(ICSApplicationDelegate *)self openUserInterfaceURL:v9])
    {
      goto LABEL_16;
    }

LABEL_24:
    v63.receiver = self;
    v63.super_class = ICSApplicationDelegate;
    v19 = [(PHApplicationDelegate *)&v63 application:v8 openURL:v9 options:v10];
    goto LABEL_17;
  }

  if ([v9 isShowHandoffEligibleNearbyURL] || objc_msgSend(v9, "isShowLagunaPullConversationURL"))
  {
    goto LABEL_23;
  }

  if ([v9 isShowScreenSharingURL])
  {
    if ([(ICSApplicationDelegate *)self showScreenSharingURL:v9])
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  if ([v9 isShowIncomingTransmissionNoticeURL] || objc_msgSend(v9, "isShowAccessoryButtonEventsNoticeURL"))
  {
    goto LABEL_23;
  }

  if ([v9 isUpdateForegroundAppURL])
  {
    if ([(ICSApplicationDelegate *)self updateForegroundAppURL:v9])
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  if ([v9 isRefreshShareableContentURL])
  {
    if ([(ICSApplicationDelegate *)self refreshShareableContentURL:v9])
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  if ([v9 isFaceTimeMultiwayURL])
  {
    v33 = [[TUJoinConversationRequest alloc] initWithURL:v9];
    if (!v33)
    {
      goto LABEL_24;
    }

    v34 = v33;
    v35 = [(PHApplicationDelegate *)self featureFlags];
    v36 = [v35 nudityDetectionEnabled];

    if (v36)
    {
      v69[0] = _NSConcreteStackBlock;
      v69[1] = 3221225472;
      v69[2] = sub_100077DC4;
      v69[3] = &unk_100357818;
      v70 = v34;
      v71 = v10;
      v72 = self;
      v18 = v34;
      [(ICSApplicationDelegate *)self handleInterventionWithConversationRequestIfNeeded:v18 continueWith:v69];

LABEL_15:
LABEL_16:
      v19 = 1;
      goto LABEL_17;
    }

    v37 = [v10 objectForKey:_UIApplicationOpenURLOptionsSourceProcessHandleKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = ([v34 showUIPrompt] & 1) != 0 || -[ICSApplicationDelegate shouldShowPromptForProcessHandle:](self, "shouldShowPromptForProcessHandle:", v37);
      [v34 setShowUIPrompt:v40];
      v38 = [(ICSApplicationDelegate *)self openJoinConversationRequest:v34];
LABEL_70:
      v41 = v38;

      if (v41)
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }

    v39 = sub_100004F84();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_100254904();
    }

LABEL_64:

    goto LABEL_24;
  }

  if ([v9 isFaceTimeOpenLinkURL])
  {
    v34 = [v9 conversationLinkURLForOpenLinkURL];
    v37 = [TUConversationLink conversationLinkForURL:v34];
    v38 = [(ICSApplicationDelegate *)self application:v8 openJoinConversationRequestForConversationLink:v37 webpageURL:v9];
    goto LABEL_70;
  }

  if ([v9 isLaunchForIncomingCallURL])
  {
    goto LABEL_23;
  }

  if ([v9 isAnswerRequestURL])
  {
    v34 = +[TUCallCenter sharedInstance];
    v37 = [(ICSApplicationDelegate *)self incomingVideoCallUsingCallContainer:v34];
    v39 = [v9 answerRequestSourceIdentifier];
    [(ICSApplicationDelegate *)self handleHeadsetButtonPressForCall:v37 sourceIdentifier:v39 urlOptions:v10];
    goto LABEL_64;
  }

  if ([v9 isFaceTimeNeedsBackgroundLaunchURL])
  {
    if ([(ICSApplicationDelegate *)self handleBackgroundLaunchURL:v9])
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  if ([v9 isVideoMessagePlaybackURL])
  {
    if ([(ICSApplicationDelegate *)self openVideoMessagePlaybackURL:v9])
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  if ([v9 isLaunchForScreeningURL])
  {
    v42 = sub_100004F84();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = [(ICSApplicationDelegate *)self answeringMachine];
      *buf = 138412290;
      v79 = v43;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Launched for screening %@", buf, 0xCu);
    }

    v18 = [(ICSApplicationDelegate *)self answeringMachine];
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_100077EC4;
    v68[3] = &unk_100357840;
    v68[4] = self;
    [v18 openURL:v9 completion:v68];
    goto LABEL_15;
  }

  v44 = +[UIApplication sharedApplication];
  if ([v44 isRunningTest:@"PlaceOutgoingCall"])
  {

    goto LABEL_82;
  }

  v45 = +[UIApplication sharedApplication];
  v46 = [v45 isRunningTest:@"FaceTimePlaceOutgoingCall"];

  if (v46)
  {
LABEL_82:
    v47 = +[UIApplication sharedApplication];
    [v47 finishedSubTest:@"applicationOpenURL" forTest:qword_1003B8808];

    v48 = +[UIApplication sharedApplication];
    v49 = qword_1003B8808;
    v77 = @"time";
    v50 = [NSArray arrayWithObjects:&v77 count:1];
    [v48 startedSubTest:@"CreateDialRequest" forTest:v49 withMetrics:v50];

    v51 = [[TUDialRequest alloc] initWithURL:v9];
    v52 = sub_100004F84();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v79 = v51;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Running test, made dial request: %@", buf, 0xCu);
    }

    v53 = +[UIApplication sharedApplication];
    [v53 finishedSubTest:@"CreateDialRequest" forTest:qword_1003B8808];

    v54 = [(ICSApplicationDelegate *)self applicationDelegateHelper];
    v55 = [(ICSApplicationDelegate *)self applicationDelegateHelper];
    v56 = [v54 openDialRequestIfNecessary:v51 options:v10 bypassUIPromptIfDefaultProvider:{objc_msgSend(v55, "isDefaultOrTelephonyScheme:", v9)}];

    if (v56)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  v57 = [[TUDialRequest alloc] initWithURL:v9];
  v58 = [(PHApplicationDelegate *)self featureFlags];
  v59 = [v58 nudityDetectionEnabled];

  if (v59)
  {
    v60 = sub_100004F84();
    v61 = v60;
    if (v57)
    {
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v79 = v57;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Not running test, made dial request: %@", buf, 0xCu);
      }

      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_100077F8C;
      v64[3] = &unk_1003577F0;
      v64[4] = self;
      v65 = v8;
      v66 = v9;
      v67 = v10;
      [(ICSApplicationDelegate *)self handleInterventionWithDialRequestIfNeeded:v57 continueWith:v64];

      v19 = 1;
    }

    else
    {
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        sub_100254894();
      }

      v19 = 0;
    }
  }

  else
  {
    v62 = sub_100004F84();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v79 = v57;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Not running test, made dial request: %@", buf, 0xCu);
    }

    v19 = [(ICSApplicationDelegate *)self openDialRequest:v57 application:v8 url:v9 options:v10];
  }

LABEL_17:
  return v19;
}

- (BOOL)openDialRequest:(id)a3 application:(id)a4 url:(id)a5 options:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(PHApplicationDelegate *)self featureFlags];
  v15 = [v14 defaultCallingAppsGracefulFallbackEnabled];

  if (v15)
  {
    if (v10)
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000781C0;
      v22[3] = &unk_100357868;
      v22[4] = self;
      v23 = v13;
      v24 = v12;
      [(ICSApplicationDelegate *)self dialRequestForDefaultCallingConfiguredDialRequest:v10 completion:v22];

      v16 = 1;
    }

    else
    {
      v25.receiver = self;
      v25.super_class = ICSApplicationDelegate;
      v16 = [(PHApplicationDelegate *)&v25 application:v11 openURL:v12 options:v13];
    }
  }

  else
  {
    v17 = [v10 dialRequestWithURLStripping];

    v18 = [(ICSApplicationDelegate *)self applicationDelegateHelper];
    v19 = [v18 configureAndOpenDialRequestForDualSIMIfNecessary:v17 options:v13 url:v12];

    if (v19)
    {
      v16 = 1;
    }

    else
    {
      v21.receiver = self;
      v21.super_class = ICSApplicationDelegate;
      v16 = [(PHApplicationDelegate *)&v21 application:v11 openURL:v12 options:v13];
    }

    v10 = v17;
  }

  return v16;
}

- (BOOL)application:(id)a3 continueUserActivity:(id)a4 restorationHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = sub_100004F84();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v56 = v7;
    v57 = 2112;
    v58 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@, continueUserActivity: %@", buf, 0x16u);
  }

  v10 = +[TUCallCenter sharedInstance];
  [v10 fetchCurrentCalls];

  if ([v7 applicationState])
  {
    v11 = sub_100004F84();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Update Inactive Date", buf, 2u);
    }

    [(ICSApplicationDelegate *)self _updateInactiveDate];
  }

  v12 = [v8 activityType];
  if ([v12 isEqual:NSUserActivityTypeBrowsingWeb])
  {
    v13 = [v8 webpageURL];

    if (v13)
    {
      v14 = [v8 webpageURL];
      v15 = [TUConversationLink conversationLinkForURL:v14];

      v16 = [v8 webpageURL];
      v17 = [(ICSApplicationDelegate *)self application:v7 openJoinConversationRequestForConversationLink:v15 webpageURL:v16];
LABEL_62:

      goto LABEL_63;
    }
  }

  else
  {
  }

  v18 = [(PHApplicationDelegate *)self featureFlags];
  if ([v18 conversationHandoffEnabled])
  {
    v19 = [v8 activityType];
    v20 = [v19 isEqualToString:TUUserActivityTypeConversationHandoff];

    if (v20)
    {
      v15 = +[TUCallCenter sharedInstance];
      [v15 continueHandoffEligibleConversation];
      v17 = 1;
      goto LABEL_63;
    }
  }

  else
  {
  }

  v21 = [v8 activityType];
  v22 = [v21 isEqualToString:TUUserActivityTypeJoinConversationRequest];

  if (!v22)
  {
    v26 = [v8 interaction];
    v15 = [v26 intentResponse];

    v27 = [v8 dialRequestAttachment];
    v28 = v27;
    if (v27)
    {
      v16 = v27;
    }

    else
    {
      v30 = [v15 userActivity];
      v16 = [v30 dialRequestAttachment];
    }

    v31 = [v8 joinRequestAttachment];
    v32 = v31;
    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v34 = [v15 userActivity];
      v33 = [v34 joinRequestAttachment];
    }

    if (v16)
    {
      v35 = sub_100004F84();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v56 = v16;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Opening TUDialRequest from NSUserActivity attachment: %@", buf, 0xCu);
      }

      if (![v16 originatingUIType])
      {
        v36 = sub_100004F84();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Setting dialRequest originatingUIType to Siri", buf, 2u);
        }

        [v16 setOriginatingUIType:11];
      }

      v37 = [v16 originatingUIType];
      v38 = +[BSProcessHandle processHandle];
      v17 = [(ICSApplicationDelegate *)self openDialRequest:v16 forProcessHandle:v38];

LABEL_44:
      if (v37 == 11)
      {
        +[TPTipsHelper donateEventOriginatedCallWithSiri];
      }

      goto LABEL_61;
    }

    if (v33)
    {
      v39 = sub_100004F84();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v56 = v33;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Opening TUJoinConversationRequest from NSUserActivity attachment: %@", buf, 0xCu);
      }

      if (![v33 originatingUIType])
      {
        v40 = sub_100004F84();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Setting joinRequest originatingUIType to Siri", buf, 2u);
        }

        [v33 setOriginatingUIType:11];
      }

      v37 = [v33 originatingUIType];
      v17 = [(ICSApplicationDelegate *)self openJoinConversationRequest:v33];
      goto LABEL_44;
    }

    v41 = [[TUJoinConversationRequest alloc] initWithUserActivity:v8];
    v42 = v41;
    if (v41)
    {
      v43 = [v41 remoteMembers];
      v44 = [v43 count];

      if (v44 >= 2)
      {
        v45 = sub_100004F84();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v56 = v42;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "More than one valid contact found. Making a group facetime call with joinRequest: %@", buf, 0xCu);
        }

        v17 = [(ICSApplicationDelegate *)self openJoinConversationRequest:v42];
        goto LABEL_60;
      }
    }

    v46 = [v8 activityType];
    if (([v46 isEqualToString:TUDialRequestUserActivityTypeCall] & 1) == 0)
    {
      v47 = [v8 activityType];
      if (![v47 isEqualToString:TUDialRequestUserActivityTypeAudioCall])
      {
        v52 = [v8 activityType];
        v53 = [v52 isEqualToString:TUDialRequestUserActivityTypeVideoCall];

        if ((v53 & 1) == 0)
        {
          v17 = 0;
LABEL_60:

LABEL_61:
          goto LABEL_62;
        }

LABEL_55:
        v48 = [[TUDialRequest alloc] initWithUserActivity:v8];
        v49 = v48;
        if (v48 && [v48 isValid])
        {
          v50 = +[BSProcessHandle processHandle];
          v17 = [(ICSApplicationDelegate *)self openDialRequest:v49 forProcessHandle:v50];
        }

        else
        {
          v17 = 0;
        }

        goto LABEL_60;
      }
    }

    goto LABEL_55;
  }

  v23 = [v8 userInfo];
  v15 = [v23 objectForKeyedSubscript:TUUserActivityJoinConversationRequestUserInfoKey];

  v54 = 0;
  v24 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v15 error:&v54];
  v25 = v54;
  if (v24)
  {
    v17 = [(ICSApplicationDelegate *)self openJoinConversationRequest:v24];
  }

  else
  {
    v29 = sub_100004F84();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_100254A54();
    }

    v17 = 0;
  }

LABEL_63:
  return v17;
}

- (BOOL)application:(id)a3 openJoinConversationRequestForConversationLink:(id)a4 webpageURL:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    objc_initWeak(&location, self);
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100078E68;
    v38[3] = &unk_100357890;
    objc_copyWeak(&v41, &location);
    v39 = v9;
    v40 = self;
    v11 = objc_retainBlock(v38);
    v12 = +[FTDeviceSupport sharedInstance];
    v13 = [v12 faceTimeAvailable];

    if (v13)
    {
      v14 = [(PHApplicationDelegate *)self featureFlags];
      if ([v14 greenTeaLinksEnabled])
      {

        goto LABEL_12;
      }

      v18 = +[TUConversationManager supportsConversations];

      if (v18)
      {
LABEL_12:
        if ([(ICSApplicationDelegate *)self isFaceTimeLoggedIn])
        {
          v19 = +[TUCallCenter sharedInstance];
          v20 = [v19 hasCurrentCalls];

          if (!v20)
          {
            LODWORD(v16) = (v11[2])(v11);
LABEL_33:

            objc_destroyWeak(&v41);
            objc_destroyWeak(&location);
            goto LABEL_34;
          }

          v21 = [ICSInterruptCallAlert alloc];
          v34[0] = _NSConcreteStackBlock;
          v34[1] = 3221225472;
          v34[2] = sub_100079008;
          v34[3] = &unk_100356D38;
          v35 = v11;
          v22 = [(ICSInterruptCallAlert *)v21 initWithCallback:v34];
          [(ICSInterruptCallAlert *)v22 show];

          LOBYTE(v16) = 0;
          v17 = v35;
        }

        else
        {
          v23 = sub_100004F84();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Cannot open FaceTime link since the user is not logged into FaceTime", buf, 2u);
          }

          v24 = [LSApplicationRecord alloc];
          v25 = TUPreferredFaceTimeBundleIdentifier();
          v37 = 0;
          v16 = [v24 initWithBundleIdentifier:v25 allowPlaceholder:0 error:&v37];
          v17 = v37;

          if (!v16)
          {
            v26 = sub_100004F84();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v27 = TUPreferredFaceTimeBundleIdentifier();
              sub_100254B3C(v27, v17, buf, v26);
            }
          }

          v28 = [v16 applicationState];
          v29 = [v28 isInstalled];

          if (v29)
          {
            v30 = sub_100004F84();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *v36 = 0;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Opening FaceTime application to login screen", v36, 2u);
            }

            TUOpenFaceTimeAppWithCompletion();
          }

          else
          {
            v31 = sub_100004F84();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *v36 = 0;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Opening Settings application to allow user to sign into FaceTime since the FaceTime application is not installed", v36, 2u);
            }

            v32 = [NSURL URLWithString:@"prefs:root=FaceTime"];
            TUOpenSensitiveURL();
          }

          LOBYTE(v16) = 1;
        }

LABEL_32:

        goto LABEL_33;
      }

      v17 = sub_100004F84();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100254B00();
      }
    }

    else
    {
      v17 = sub_100004F84();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100254AC4();
      }
    }

    LOBYTE(v16) = 0;
    goto LABEL_32;
  }

  v15 = sub_100004F84();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_100254BA4();
  }

  LOBYTE(v16) = 0;
LABEL_34:

  return v16;
}

- (BOOL)isFaceTimeLoggedIn
{
  if (TUIsIDSAvailableForFaceTime())
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v3 = +[IMAccountController sharedInstance];
    v4 = +[IMService facetimeService];
    v5 = [v3 accountsForService:v4];

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v6 = v5;
    v2 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v2)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v2; i = i + 1)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v10 + 1) + 8 * i) registrationStatus] == 5)
          {
            LOBYTE(v2) = 1;
            goto LABEL_13;
          }
        }

        v2 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v2)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v2;
}

- (void)setMostRecentlyDisconnectedAudioCall:(id)a3
{
  v5 = a3;
  if (self->_mostRecentlyDisconnectedAudioCall != v5)
  {
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(TUCall *)v5 uniqueProxyIdentifierUUID];
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setMostRecentlyDisconnectedAudioCall: %@", &v10, 0xCu);
    }

    v8 = self->_mostRecentlyDisconnectedAudioCall;
    objc_storeStrong(&self->_mostRecentlyDisconnectedAudioCall, a3);
    if (!v5)
    {
      v9 = +[NSNotificationCenter defaultCenter];
      [v9 postNotificationName:@"ICSApplicationDelegateMostRecentlyDisconnectedAudioCallDidClearNotification" object:v8];
    }
  }
}

- (id)getEvolvedSubscriptionLabelID:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_opt_class() telephonyClient];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [objc_opt_class() telephonyClient];
    v9 = [v8 getEvolvedSubscriptionLabelID:v5 error:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)showCarPlayUIWithActivation:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "", v7, 2u);
  }

  v6 = [(ICSApplicationDelegate *)self carPlayServicesController];
  [v6 acquireAssertionWithActivation:v3];
}

- (void)setAllowsCarPlayBanners:(BOOL)a3
{
  v3 = a3;
  v4 = [(ICSApplicationDelegate *)self carPlayServicesController];
  [v4 setAllowsBanners:v3];
}

- (void)setActivationContext:(id)a3
{
  v5 = a3;
  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updated activation context: %@", &v8, 0xCu);
  }

  if (self->_activationContext != v5)
  {
    objc_storeStrong(&self->_activationContext, a3);
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 postNotificationName:@"ICSActivationContextDidChangeNotification" object:0];
  }
}

- (void)prewarmBannerPresentationManager
{
  v2 = [(ICSApplicationDelegate *)self bannerPresentationManager];
}

- (id)screenSharingRootViewController
{
  v3 = [(ICSApplicationDelegate *)self sceneManager];
  v4 = [v3 sceneOfType:1];

  if (v4)
  {
    v5 = [(ICSApplicationDelegate *)self remoteAlertShellViewControllerForWindowScene:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)initiateCallForDialRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004F84();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v29 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "'%@'", buf, 0xCu);
  }

  v9 = sub_100004F84();
  v10 = v9;
  if (!v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100254C14();
    }

    goto LABEL_20;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v29 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "dialing call with dial request %@", buf, 0xCu);
  }

  v11 = +[PHInCallRootViewController dismissalAssertions];
  v12 = [v11 count];

  if (!v12)
  {
    v13 = +[PHInCallUtilities sharedInstance];
    [v13 startSuppressingInCallStatusBarForReason:@"PHSuppressInCallStatusBarForDialReason"];
  }

  v14 = +[UIApplication sharedApplication];
  if ([v14 isRunningTest:@"PlaceOutgoingCall"])
  {

    goto LABEL_13;
  }

  v15 = +[UIApplication sharedApplication];
  v16 = [v15 isRunningTest:@"FaceTimePlaceOutgoingCall"];

  if (v16)
  {
LABEL_13:
    v18 = +[UIApplication sharedApplication];
    v19 = qword_1003B8808;
    v30 = @"time";
    v20 = [NSArray arrayWithObjects:&v30 count:1];
    [v18 startedSubTest:@"CreateCall" forTest:v19 withMetrics:v20];

    v10 = sub_1000799C0(v21, v6);
    v22 = +[UIApplication sharedApplication];
    [v22 finishedSubTest:@"CreateCall" forTest:qword_1003B8808];

    v23 = +[UIApplication sharedApplication];
    [v23 startedSubTest:@"sbRemoteAlert" forTest:qword_1003B8808];

    if (!v10)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v10 = sub_1000799C0(v17, v6);
  if (!v10)
  {
LABEL_17:
    v24 = sub_100004F84();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v10 status];
      *buf = 67109376;
      *v29 = v10 == 0;
      *&v29[4] = 1024;
      *&v29[6] = v25 == 6;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[WARN] cannot dial call, the call we received was nil (%d) or in the disconnected state (%d)", buf, 0xEu);
    }

    v26 = +[PHInCallUtilities sharedInstance];
    [v26 stopSuppressingInCallStatusBarForReason:@"PHSuppressInCallStatusBarForDialReason"];

LABEL_20:
    v27 = 0;
    goto LABEL_21;
  }

LABEL_16:
  if ([v10 status]== 6)
  {
    goto LABEL_17;
  }

  if ([(ICSApplicationDelegate *)self shouldActivateSpringBoardRemoteAlertForCall:v10])
  {
    [(ICSApplicationDelegate *)self requestPresentationForCall:v10 dialRequest:v6];
  }

  v27 = 1;
LABEL_21:

  if (v7)
  {
    v7[2](v7, v27);
  }
}

- (void)showOrCreateCallForConversationRequest:(id)a3
{
  v9 = a3;
  v4 = +[TUCallCenter sharedInstance];
  v5 = [v4 callMatchingConversationRequest:v9];

  v6 = +[TUCallCenter sharedInstance];
  v7 = [v6 activeConversationForCall:v5];

  if (v5 && [v7 resolvedAudioVideoMode] == 2 && !-[ICSApplicationDelegate isPresentingFullScreenCallUI](self, "isPresentingFullScreenCallUI"))
  {
    v8 = [(ICSApplicationDelegate *)self currentInCallScene];
    [v8 ics_requestTransitionToPresentationMode:2];
  }

  else
  {
    [(ICSApplicationDelegate *)self initiateCallForConversationRequest:v9];
  }
}

- (void)initiateCallForConversationRequest:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 UUID];
    *buf = 138412290;
    v28[0] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "conversationRequestUUID=%@", buf, 0xCu);
  }

  v7 = [v4 UUID];
  v8 = [v7 debugDescription];

  v9 = [v4 debugDescription];
  v10 = sub_1000A69C8();
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_100079F38;
  v24 = &unk_100357110;
  v25 = v8;
  v26 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, &v21);

  v13 = [PHInCallRootViewController dismissalAssertions:v21];
  v14 = [v13 count];

  if (!v14)
  {
    v15 = +[PHInCallUtilities sharedInstance];
    [v15 startSuppressingInCallStatusBarForReason:@"PHSuppressInCallStatusBarForDialReason"];
  }

  [(ICSApplicationDelegate *)self setCurrentJoinConversationRequest:v4];
  v16 = +[TUCallCenter sharedInstance];
  v17 = [v16 joinConversationWithConversationRequest:v4];

  if ([v17 status] == 6)
  {
    v18 = sub_100004F84();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v17 status];
      *buf = 67109376;
      LODWORD(v28[0]) = v17 == 0;
      WORD2(v28[0]) = 1024;
      *(v28 + 6) = v19 == 6;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] Could not join multiway call, the call we received was nil (%d) or in the disconnected state (%d)", buf, 0xEu);
    }

    v20 = +[PHInCallUtilities sharedInstance];
    [v20 stopSuppressingInCallStatusBarForReason:@"PHSuppressInCallStatusBarForDialReason"];
  }

  else if ([(ICSApplicationDelegate *)self shouldActivateSpringBoardRemoteAlertForCall:v17])
  {
    [(ICSApplicationDelegate *)self requestPresentationForCall:v17 dialRequest:0];
  }

  [(ICSApplicationDelegate *)self setCurrentJoinConversationRequest:0];
}

- (BOOL)isAppBlockedFromBypassingPrompt:(id)a3
{
  v4 = a3;
  v5 = [(ICSApplicationDelegate *)self isAppBlockedFromBypassingPrompt];
  v6 = (v5)[2](v5, v4);

  return v6;
}

- (BOOL)isDefaultCallingApp:(id)a3
{
  v4 = a3;
  v5 = [(ICSApplicationDelegate *)self isDefaultCallingAppBlock];
  v6 = (v5)[2](v5, v4);

  return v6;
}

- (id)isDefaultDialingAppBlock
{
  isDefaultDialingAppBlock = self->_isDefaultDialingAppBlock;
  if (!isDefaultDialingAppBlock)
  {
    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10007A184;
    v8[3] = &unk_100357900;
    objc_copyWeak(&v9, &location);
    v4 = objc_retainBlock(v8);
    v5 = self->_isDefaultDialingAppBlock;
    self->_isDefaultDialingAppBlock = v4;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    isDefaultDialingAppBlock = self->_isDefaultDialingAppBlock;
  }

  v6 = objc_retainBlock(isDefaultDialingAppBlock);

  return v6;
}

- (BOOL)isDefaultDialingApp:(id)a3
{
  v4 = a3;
  v5 = [(ICSApplicationDelegate *)self isDefaultDialingAppBlock];
  v6 = (v5)[2](v5, v4);

  return v6;
}

- (void)configureDialRequest:(id)a3 forProcessHandle:(id)a4 bypassUIPromptIfDefaultProvider:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [v9 bundleIdentifier];
  if ([v10 containsString:@"com.apple.mobilesafari"])
  {
    LODWORD(v11) = 1;
  }

  else
  {
    v12 = [v9 bundleIdentifier];
    if ([v12 containsString:@"com.apple.SafariViewService"])
    {
      LODWORD(v11) = 1;
    }

    else
    {
      v13 = [v9 bundleIdentifier];
      if ([v13 containsString:@"com.apple.Keynote"])
      {
        LODWORD(v11) = 1;
      }

      else
      {
        v14 = [v9 bundleIdentifier];
        if ([v14 containsString:@"com.apple.camera"])
        {
          LODWORD(v11) = 1;
        }

        else
        {
          v15 = [v9 bundleIdentifier];
          LODWORD(v11) = [v15 containsString:@"com.apple.BarcodeScanner"];
        }
      }
    }
  }

  v16 = [v8 originatingUIType] == 8 || objc_msgSend(v8, "originatingUIType") == 9 || objc_msgSend(v8, "originatingUIType") == 1;
  v17 = [v8 service];
  v26 = [(ICSApplicationDelegate *)self isDefaultDialingApp:v9];
  v18 = sub_100004F84();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    if (v11)
    {
      v19 = @"YES";
    }

    else
    {
      v19 = @"NO";
    }

    v24 = v8;
    v20 = v11;
    if (v16)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    *buf = 138413058;
    if ([(ICSApplicationDelegate *)self isDefaultCallingApp:v9, v24])
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v28 = v19;
    if (v26)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    v29 = 2112;
    v30 = v11;
    LOBYTE(v11) = v20;
    v8 = v25;
    v31 = 2112;
    v32 = v21;
    v33 = 2112;
    v34 = v22;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "configureDialRequest:forProcessHandle:bypassUIPromptIfDefaultProvider: processShouldForcePrompt: (%@), isFromMobilePhone: (%@), isDefaultCallingApp: (%@), isDefaultDialingApp: (%@)", buf, 0x2Au);
  }

  if ((v11 & 1) == 0 && (v17 != 1 || !v16) | v26 & 1 && ![(ICSApplicationDelegate *)self isAppBlockedFromBypassingPrompt:v9])
  {
    if (v5 && [(ICSApplicationDelegate *)self isDefaultCallingApp:v9])
    {
      v23 = 0;
      goto LABEL_35;
    }

    if ([v8 bypassIntervention])
    {
      goto LABEL_36;
    }

    if (([v8 showUIPrompt] & 1) == 0)
    {
      v23 = [(ICSApplicationDelegate *)self shouldShowPromptForProcessHandle:v9];
      goto LABEL_35;
    }
  }

  v23 = 1;
LABEL_35:
  [v8 setShowUIPrompt:v23];
LABEL_36:
  [v8 setProcessHandle:v9];
}

- (id)isHandleAvailableForFaceTimeBlock
{
  isHandleAvailableForFaceTimeBlock = self->_isHandleAvailableForFaceTimeBlock;
  if (!isHandleAvailableForFaceTimeBlock)
  {
    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10007A65C;
    v8[3] = &unk_100357928;
    objc_copyWeak(&v9, &location);
    v4 = objc_retainBlock(v8);
    v5 = self->_isHandleAvailableForFaceTimeBlock;
    self->_isHandleAvailableForFaceTimeBlock = v4;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    isHandleAvailableForFaceTimeBlock = self->_isHandleAvailableForFaceTimeBlock;
  }

  v6 = objc_retainBlock(isHandleAvailableForFaceTimeBlock);

  return v6;
}

- (void)isHandleAvailableForFaceTime:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICSApplicationDelegate *)self isHandleAvailableForFaceTimeBlock];
  v8[2](v8, v7, v6);
}

- (void)dialRequestForDefaultCallingConfiguredDialRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 allowProviderFallback] && (objc_msgSend(v6, "provider"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isFaceTimeProvider"), v8, v9))
  {
    v10 = [v6 dialRequestWithURLStripping];
    v11 = [v10 handle];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10007A95C;
    v16[3] = &unk_100357978;
    v17 = v10;
    v19 = v7;
    v18 = v6;
    v12 = v10;
    [(ICSApplicationDelegate *)self isHandleAvailableForFaceTime:v11 completion:v16];
  }

  else
  {
    v13 = sub_100004F84();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v6 allowProviderFallback];
      v15 = @"NO";
      if (v14)
      {
        v15 = @"YES";
      }

      *buf = 138412546;
      v21 = v15;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Dial request does not allowProviderFallback (%@) or provider is not FaceTime. Returning untouched dialRequest %@", buf, 0x16u);
    }

    (*(v7 + 2))(v7, v6);
  }
}

- (BOOL)shouldShowPromptForProcessHandle:(id)a3
{
  v3 = a3;
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v19[0] = @"com.apple.springboard.allowallcallurls";
  v19[1] = @"com.apple.springboard.opensensitiveurl";
  [NSArray arrayWithObjects:v19 count:2];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([v3 hasEntitlement:{*(*(&v14 + 1) + 8 * i), v14}])
        {
          v10 = 0;
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_13:

  v11 = [v3 bundleIdentifier];
  v12 = [v11 isEqualToString:@"com.apple.InCallService.RemotePeoplePicker"];

  return v10 & (v12 ^ 1);
}

- (BOOL)canModifyCallsForProcessHandle:(id)a3
{
  v3 = a3;
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@", &v11, 0xCu);
  }

  v5 = [v3 valueForEntitlement:TUBundleIdentifierCallServicesDaemon];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 containsObject:@"modify-calls"];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 bundleIdentifier];
  if (v7)
  {
    v8 = [v3 bundleIdentifier];
    v9 = [v8 isEqual:TUBundleIdentifierTelephonyUtilitiesFramework];

    v6 |= v9;
  }

  return v6 & 1;
}

- (void)addNotificationObservers
{
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"audioCallStatusChanged:" name:TUCallCenterCallStatusChangedNotification object:0];
  [v6 addObserver:self selector:"audioCallStatusChanged:" name:TUCallCenterReceptionistStateChangedNotification object:0];
  [v6 addObserver:self selector:"videoCallStatusChanged:" name:TUCallCenterVideoCallStatusChangedNotification object:0];
  [v6 addObserver:self selector:"handleTUCallTTYTypeChangedNotification:" name:TUCallTTYTypeChangedNotification object:0];
  [v6 addObserver:self selector:"callDisplayContextChangedNotification:" name:TUCallDisplayContextChangedNotification object:0];
  [v6 addObserver:self selector:"handleSupportsEmergencyFallbackChangedNotification:" name:TUCallCenterSupportsEmergencyFallbackChangedNotification object:0];
  v3 = +[NSNotification PHAlertInvoked];
  [v6 addObserver:self selector:"handleAlertInvokedNotification:" name:v3 object:0];

  [v6 addObserver:self selector:"handleLockScreenStatusChangedNotification:" name:PHLockScreenStatusChangedNotification object:0];
  [v6 addObserver:self selector:"_willResignFromActive:" name:UIApplicationWillResignActiveNotification object:0];
  [v6 addObserver:self selector:"_didBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];
  [v6 addObserver:self selector:"_willConnect:" name:UISceneWillConnectNotification object:0];
  v4 = [(CNKScreenSharingStateMonitorFactory *)self->_screenSharingMonitorFactory sharedMonitor];
  [v4 addObserver:self];

  v5 = [(CNKScreenSharingInteractionControllerFactory *)self->_screenSharingInteractionControllerFactory sharedController];
  [v5 addDelegate:self];

  [v6 addObserver:self selector:"smartHoldSessionChanged:" name:TUCallSmartHoldingSessionChangedNotification object:0];
  [v6 addObserver:self selector:"handleMenuBarTitleForCallUpgradeDowngradeNotification:" name:TUCallUpgradedToVideoNotification object:0];
  [v6 addObserver:self selector:"handleMenuBarTitleForCallUpgradeDowngradeNotification:" name:TUCallDowngradedToAudioNotification object:0];
}

- (void)_willResignFromActive:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "application willResignFromActive %@", &v6, 0xCu);
  }

  [(ICSApplicationDelegate *)self _updateInactiveDate];
}

- (void)_didBecomeActive:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "application didBecomeActive %@", &v6, 0xCu);
  }

  [(ICSApplicationDelegate *)self updateCallsIfNeeded];
}

- (void)_willConnect:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "scene willConnect %@", &v6, 0xCu);
  }

  [(ICSApplicationDelegate *)self updateCallsIfNeeded];
}

- (void)installCameraStateMonitor
{
  v3 = objc_alloc_init(ICSCameraStateMonitor);
  [(ICSApplicationDelegate *)self setCameraStateMonitor:v3];

  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007B574;
  v11[3] = &unk_1003579A0;
  objc_copyWeak(&v12, &location);
  v4 = [(ICSApplicationDelegate *)self cameraStateMonitor];
  [v4 setIsDisplayedInBanner:v11];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007B5DC;
  v9[3] = &unk_1003579A0;
  objc_copyWeak(&v10, &location);
  v5 = [(ICSApplicationDelegate *)self cameraStateMonitor];
  [v5 setIsDisplayedInMiniWindow:v9];

  objc_copyWeak(&v8, &location);
  v6 = [(ICSApplicationDelegate *)self cameraStateMonitor:_NSConcreteStackBlock];
  [v6 setIsDismissed:&v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)installPillStateMonitor
{
  v3 = objc_alloc_init(ICSPillStateMonitor);
  [(ICSApplicationDelegate *)self setPillStateMonitor:v3];

  objc_initWeak(&location, self);
  objc_copyWeak(&v9, &location);
  v4 = [(ICSApplicationDelegate *)self pillStateMonitor:_NSConcreteStackBlock];
  [v4 setIsDismissedWithoutPictureInPicture:&v8];

  v5 = [(ICSApplicationDelegate *)self pillStateMonitor];
  [v5 setIsActiveAndHiddenPictureInPicture:&stru_1003579E0];

  v6 = [(ICSApplicationDelegate *)self pillStateMonitor];
  [v6 setHasCurrentCalls:&stru_100357A00];

  v7 = [(ICSApplicationDelegate *)self pillStateMonitor];
  [v7 setHasOutstandingPillAssertions:&stru_100357A20];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)callDisplayContextChangedNotification:(id)a3
{
  v10 = [a3 object];
  v4 = [v10 provider];
  if ([v4 supportsDynamicSystemUI])
  {
    v5 = [(PHApplicationDelegate *)self featureFlags];
    if ([v5 groupConversations])
    {
      HasChinaSKU = TUDeviceHasChinaSKU();
    }

    else
    {
      HasChinaSKU = 0;
    }
  }

  else
  {
    HasChinaSKU = 0;
  }

  v7 = [(ICSApplicationDelegate *)self sceneManager];
  v8 = [v7 callScene];

  if ((v8 || HasChinaSKU) && [v10 status] == 4 && !-[ICSApplicationDelegate hasExistingFullScreenInCallScene](self, "hasExistingFullScreenInCallScene"))
  {
    v9 = [(ICSApplicationDelegate *)self bannerPresentationManager];
    [v9 presentHUDForCurrentContext];
  }
}

- (void)audioCallStatusChanged:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@", &v6, 0xCu);
  }

  [(ICSApplicationDelegate *)self handleCallStatusChangedNotification:v4];
}

- (void)videoCallStatusChanged:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@", &v6, 0xCu);
  }

  [(ICSApplicationDelegate *)self handleCallStatusChangedNotification:v4];
}

- (void)handleCallStatusChangedNotification:(id)a3
{
  v4 = [a3 object];
  if (v4)
  {
    [(ICSApplicationDelegate *)self callStatusChanged:v4];
  }

  _objc_release_x1();
}

- (void)callStatusChanged:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() callConnected:v4];
  v6 = +[TUCallCenter sharedInstance];
  v7 = [v6 callsPassingTest:&stru_100357A40];
  v8 = [v7 count];

  v9 = [v4 provider];
  if (([v9 supportsDynamicSystemUI] & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = [(PHApplicationDelegate *)self featureFlags];
  if (([v10 groupConversations] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  HasChinaSKU = TUDeviceHasChinaSKU();

  if (HasChinaSKU)
  {
    [(ICSApplicationDelegate *)self updatePresentationIfNecessaryForGreenTea3PCall:v4];
  }

LABEL_7:
  v12 = +[UIDevice currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if ((v13 & 0xFFFFFFFFFFFFFFFBLL) == 1 && _UIEnhancedMainMenuEnabled())
  {
    [(ICSApplicationDelegate *)self updateiPadMenuBarApplicationName:v4];
  }

  v14 = [(ICSApplicationDelegate *)self connectedCallIdentifiers];
  v15 = [v4 uniqueProxyIdentifierUUID];
  v16 = [v14 containsObject:v15];

  if (v5)
  {
    if ((v16 & 1) == 0)
    {
      v17 = [(ICSApplicationDelegate *)self connectedCallIdentifiers];
      v18 = [v4 uniqueProxyIdentifierUUID];
      [v17 addObject:v18];
    }

    p_screenSharingMonitorFactory = &self->_screenSharingMonitorFactory;
    v20 = [(CNKScreenSharingStateMonitorFactory *)self->_screenSharingMonitorFactory sharedMonitor];
    v21 = [v20 call];
    v22 = [v4 isEqual:v21];

    v23 = v4;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

  else if (v16)
  {
    v24 = [(ICSApplicationDelegate *)self connectedCallIdentifiers];
    v25 = [v4 uniqueProxyIdentifierUUID];
    [v24 removeObject:v25];
  }

  if ([v4 status] == 5 || objc_msgSend(v4, "status") == 6)
  {
    p_screenSharingMonitorFactory = &self->_screenSharingMonitorFactory;
    v26 = [(CNKScreenSharingStateMonitorFactory *)self->_screenSharingMonitorFactory sharedMonitor];
    v27 = [v26 call];
    v28 = [v4 isEqual:v27];

    if (v28)
    {
      v23 = 0;
LABEL_21:
      v29 = [(CNKScreenSharingStateMonitorFactory *)*p_screenSharingMonitorFactory sharedMonitor];
      [v29 setCall:v23];
    }
  }

  v30 = [(ICSApplicationDelegate *)self currentInCallScene];

  if (v30)
  {
    v31 = [(ICSApplicationDelegate *)self connectedCallIdentifiers];
    v32 = [v31 count];

    v33 = sub_100004F84();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [(ICSApplicationDelegate *)self connectedCallIdentifiers];
      *buf = 67109378;
      *v97 = v32 != 0;
      *&v97[4] = 2112;
      *&v97[6] = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Setting scene callConnected: %d connectedCallIdentifiers: %@", buf, 0x12u);
    }

    v35 = [(ICSApplicationDelegate *)self currentInCallScene];
    [v35 setCallConnected:v32 != 0];

    v36 = [(PHApplicationDelegate *)self featureFlags];
    LODWORD(v35) = [v36 receptionistEnabled];

    v37 = [v4 isScreening];
    v38 = (v35 ^ 1) & v37;
    if ((v35 ^ 1) & 1) == 0 && (v37)
    {
      v39 = [v4 receptionistState];
      if (v39 <= 7)
      {
        v38 = 0xE7u >> v39;
      }

      else
      {
        v38 = 0;
      }
    }

    v40 = [(ICSApplicationDelegate *)self currentInCallScene];
    [v40 setPrefersLockedIdleDurationOnCoversheet:v38 & 1];
  }

  if (!v8)
  {
    v41 = [(ICSApplicationDelegate *)self alertCoordinator];
    if (v41)
    {
      v42 = v41;
      v43 = [(ICSApplicationDelegate *)self alertCoordinator];
      if (([v43 isAlertRequestPending] & 1) != 0 || objc_msgSend(v4, "disconnectedReason") == 34)
      {
      }

      else
      {
        v58 = [v4 disconnectedReasonRequiresCallBackUI];

        if ((v58 & 1) == 0)
        {
          v59 = sub_100004F84();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "No calls remaining, nil-ing out AlertCoordinator", buf, 2u);
          }

          [(ICSApplicationDelegate *)self setAlertCoordinator:0];
        }
      }
    }
  }

  v44 = [(PHApplicationDelegate *)self featureFlags];
  if ([v44 TTRBannerEnabled] && objc_msgSend(v4, "disconnectedReason") != 7 && objc_msgSend(v4, "status") == 6)
  {
    if ([v4 smartHoldingActiveSessionCount])
    {
      v45 = 1;
    }

    else
    {
      v45 = [v4 wasSmartHoldingTipPresented];
    }
  }

  else
  {
    v45 = 0;
  }

  v46 = [(PHApplicationDelegate *)self featureFlags];
  if ([v46 FTUserScore])
  {
    goto LABEL_50;
  }

  v47 = [(PHApplicationDelegate *)self featureFlags];
  if (![v47 TTRBannerEnabled])
  {
LABEL_49:

LABEL_50:
    goto LABEL_51;
  }

  v48 = [v4 provider];
  if (([v48 isFaceTimeProvider] & 1) == 0)
  {

    goto LABEL_49;
  }

  v90 = v4;
  v49 = [v4 disconnectedReason];

  v50 = v49 == 7;
  v4 = v90;
  if (v50)
  {
LABEL_51:
    if (!v45)
    {
      goto LABEL_56;
    }

    v53 = [(ICSApplicationDelegate *)self TTRBannerViewController];

    if (!v53)
    {
      v54 = +[TTRBannerControllerFactory makeBannerController];
      [(ICSApplicationDelegate *)self setTTRBannerViewController:v54];

      v55 = [(ICSApplicationDelegate *)self TTRBannerViewController];
      [v55 setDelegate:self];
    }

    v56 = [(ICSApplicationDelegate *)self TTRBannerViewController];
    [v56 showHoldAssistTTRBannerForCall:v4];
LABEL_55:

    goto LABEL_56;
  }

  if ([v90 status] == 1)
  {
    v51 = +[TTRBannerControllerFactory makeBannerController];
    [(ICSApplicationDelegate *)self setTTRBannerViewController:v51];

    v52 = [(ICSApplicationDelegate *)self TTRBannerViewController];
    [v52 setDelegate:self];
LABEL_77:

    goto LABEL_78;
  }

  if ([v90 status] == 6)
  {
    v60 = [(ICSApplicationDelegate *)self TTRBannerViewController];

    if (v60)
    {
      v89 = v8;
      v61 = +[TUCallCenter sharedInstance];
      v62 = [v61 activeConversationForCall:v90];

      v87 = [v62 messagesGroupUUID];
      v63 = [v62 activeRemoteParticipants];
      v64 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v63 count]);

      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v88 = v62;
      v65 = [v62 remoteMembers];
      v66 = [v65 countByEnumeratingWithState:&v91 objects:v95 count:16];
      if (v66)
      {
        v67 = v66;
        v68 = *v92;
        do
        {
          for (i = 0; i != v67; i = i + 1)
          {
            if (*v92 != v68)
            {
              objc_enumerationMutation(v65);
            }

            v70 = *(*(&v91 + 1) + 8 * i);
            v71 = [v70 handle];
            v72 = [v71 value];
            v73 = [v72 length];

            if (v73)
            {
              v74 = [v70 handle];
              v75 = [v74 value];
              [v64 addObject:v75];
            }
          }

          v67 = [v65 countByEnumeratingWithState:&v91 objects:v95 count:16];
        }

        while (v67);
      }

      v76 = [(ICSApplicationDelegate *)self TTRBannerViewController];
      v77 = [v87 UUIDString];
      [v76 buildTTRMessageBubbleRecipientsListWithGroupMessageUUID:v77 with:v64];

      v4 = v90;
      [v90 callDuration];
      if (v78 >= 900.0)
      {
        v80 = 1;
      }

      else
      {
        v79 = [v90 remoteParticipantHandles];
        v80 = [v79 count] > 0xE;
      }

      v52 = v88;
      v81 = [(ICSApplicationDelegate *)self TTRBannerViewController];
      [v81 showTTRBannerWithFullLogArchive:v80 call:v90];

      v8 = v89;
      goto LABEL_77;
    }
  }

LABEL_78:
  if (v8)
  {
    goto LABEL_56;
  }

  v56 = [(ICSApplicationDelegate *)self bannerPresentationManager];
  if (([v56 wantsBannerWithoutScene] & 1) == 0)
  {
    goto LABEL_55;
  }

  v82 = +[PHInCallRootViewController dismissalAssertions];
  v83 = [v82 containsObject:@"PHAVLessConversationDetailsViewAssertionReason"];

  if ((v83 & 1) == 0)
  {
    v84 = sub_100009960();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      v85 = v84;
      v86 = [v4 uniqueProxyIdentifier];
      *buf = 138412290;
      *v97 = v86;
      _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "Call %@ disconnected, no calls remaining, still have placeholderCall that wants banner without scene in HUD, requesting scene dismissal", buf, 0xCu);
    }

    [(ICSApplicationDelegate *)self dismissInCallSceneSession];
  }

LABEL_56:
  [(ICSApplicationDelegate *)self updateRemoteAlertStateIfNecessaryForCall:v4];
  [(ICSApplicationDelegate *)self showBannerIfNecessaryForHandoffEligibleConversation];
  v57 = [(ICSApplicationDelegate *)self routeListController];
  [v57 reload];
}

- (void)updateRemoteAlertStateIfNecessaryForCall:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (!v6 || ![v6 isEndpointOnCurrentDevice])
  {
    goto LABEL_38;
  }

  v8 = [v7 status];
  switch(v8)
  {
    case 3u:
      if (![(ICSApplicationDelegate *)self shouldActivateSpringBoardRemoteAlertForCall:v7])
      {
        goto LABEL_36;
      }

      v13 = [v7 provider];
      v14 = [v13 isSystemProvider];
      if (v14)
      {
        v15 = 0;
        v16 = 0;
      }

      else
      {
        v3 = +[PHInCallUIUtilities sharedInstance];
        if ([v3 isSpringBoardLocked])
        {
          v15 = 0;
          v16 = 0;
        }

        else
        {
          v22 = +[UIScreen _carScreen];
          if (v22)
          {
            v4 = v22;
            v16 = 0;
            v15 = 1;
          }

          else
          {
            v23 = +[TUCallCenter sharedInstance];
            if (([v23 existingCallsHaveMultipleProviders] & 1) == 0)
            {

              goto LABEL_36;
            }

            v24 = v23;
            v4 = 0;
            v15 = 1;
            v16 = 1;
          }
        }
      }

      v18 = [v7 provider];
      if ([v18 isFaceTimeProvider] && (objc_msgSend(v7, "isVideo") & 1) == 0)
      {
        v19 = ![(ICSApplicationDelegate *)self hasExistingDismissedInCallScene];
      }

      else
      {
        v19 = 1;
      }

      if (v16)
      {

        if ((v15 & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      else if (!v15)
      {
LABEL_47:
        if (v14)
        {

          if (!v19)
          {
            goto LABEL_36;
          }
        }

        else
        {

          if ((v19 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        v20 = sub_100004F84();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v26 = v7;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Heard a call change notification and it was sending, so InCallService will show the alert for %@", buf, 0xCu);
        }

        goto LABEL_33;
      }

      goto LABEL_47;
    case 6u:
      if ([v7 isVideo])
      {
        [(ICSApplicationDelegate *)self setMostRecentlyDisconnectedVideoCall:v7];
      }

      else
      {
        [(ICSApplicationDelegate *)self setMostRecentlyDisconnectedAudioCall:v7];
      }

      if ([v7 isSOS])
      {
        if ([(ICSApplicationDelegate *)self isClarityBoardActive])
        {
          [(ICSApplicationDelegate *)self requestClarityBoardPresentation];
          break;
        }

        [(ICSApplicationDelegate *)self requestSpringBoardPresentationForSOS];
      }

      if ([v7 disconnectedReason] == 51)
      {
        v17 = objc_alloc_init(ICSMirroringToMacAlert);
        [(ICSMirroringToMacAlert *)v17 show];
LABEL_37:
      }

      break;
    case 4u:
      v9 = sub_100004F84();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Heard a call change notification and it was ringing, so InCallService will show the alert for %@", buf, 0xCu);
      }

      v10 = [v7 provider];
      if ([v10 supportsDynamicSystemUI])
      {
        v11 = [(PHApplicationDelegate *)self featureFlags];
        if ([v11 groupConversations])
        {
          HasChinaSKU = TUDeviceHasChinaSKU();
        }

        else
        {
          HasChinaSKU = 0;
        }
      }

      else
      {
        HasChinaSKU = 0;
      }

      v20 = [(PHApplicationDelegate *)self features];
      if (([v20 isSystemApertureEnabled]& 1) == 0 && !HasChinaSKU)
      {
LABEL_33:

LABEL_35:
        [(ICSApplicationDelegate *)self requestPresentationForCall:v7 dialRequest:0];
        goto LABEL_36;
      }

      v21 = [(ICSApplicationDelegate *)self isClarityBoardActive];

      if (v21)
      {
        goto LABEL_35;
      }

LABEL_36:
      v17 = [(ICSApplicationDelegate *)self ambientActivityController];
      [(ICSMirroringToMacAlert *)v17 requestActivityForCall:v7];
      goto LABEL_37;
  }

LABEL_38:
}

- (void)handleTUCallTTYTypeChangedNotification:(id)a3
{
  v4 = a3;
  v5 = +[PHInCallUIUtilities sharedInstance];
  v6 = [v5 isSpringBoardLocked];

  if (v6)
  {
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = v8;
      v10 = [v4 name];
      v14 = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v14, 0x16u);
    }

    v11 = [v4 object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
      if ([v12 isEndpointOnCurrentDevice]&& [v12 status]== 1 && [(ICSApplicationDelegate *)self shouldActivateSpringBoardRemoteAlertForCall:v12])
      {
        v13 = sub_100004F84();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412290;
          v15 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received a TTY type change notification while SpringBoard is locked; InCallService will present a remote alert for active call %@", &v14, 0xCu);
        }

        [(ICSApplicationDelegate *)self requestPresentationForCall:v12 dialRequest:0];
      }
    }

    else
    {
      v12 = sub_100004F84();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100254C50();
      }
    }
  }
}

- (void)handleLockScreenStatusChangedNotification:(id)a3
{
  v3 = [(ICSApplicationDelegate *)self bannerPresentationManager];
  [v3 handleLockScreenStatusChanged];
}

- (BOOL)shouldPresentDismissedForCall:(id)a3 tappedPill:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (!v6 || ([v6 launchInBackground] & 1) != 0 || (+[TUCallCenter sharedInstance](TUCallCenter, "sharedInstance"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "gameOverlayController"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "overlayOpen"), v9, v8, (v10 & 1) != 0))
  {
    v11 = 1;
  }

  else if ([v7 wantsStagingArea])
  {
    v11 = 0;
  }

  else
  {
    v13 = [(ICSApplicationDelegate *)self bannerPresentationManager];
    [v13 preloadCallChanges];

    v14 = [objc_opt_class() isExpanseMessagesJoinRequest:self->_currentJoinConversationRequest];
    v15 = [(ICSApplicationDelegate *)self avUpgradedCallUUIDForDismissedScene];
    v16 = [v7 uniqueProxyIdentifierUUID];
    v38 = [v15 isEqual:v16];

    if (v14 && [v7 callStatus] == 3 && objc_msgSend(v7, "isOutgoing"))
    {
      v37 = [v7 isSendingVideo] ^ 1;
    }

    else
    {
      v37 = 0;
    }

    v17 = [v7 provider];
    if ([v17 isSystemProvider])
    {
      LODWORD(v18) = 0;
    }

    else
    {
      LODWORD(v18) = [v7 isOutgoing];
    }

    v19 = +[UIDevice currentDevice];
    if ([v19 userInterfaceIdiom] == 1 && (objc_msgSend(v7, "isVideo") & 1) == 0)
    {
      v20 = [v7 isOutgoing];
    }

    else
    {
      v20 = 0;
    }

    if ([v7 isScreening] && (objc_msgSend(v7, "isWaitOnHoldActive") & 1) == 0)
    {
      LODWORD(v21) = [v7 resolvedCallStatus] != 4 && !v4;
    }

    else
    {
      LODWORD(v21) = 0;
    }

    v22 = sub_100004F84();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v35 = v21;
      v34 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 callStatus]);
      v23 = [NSNumber numberWithBool:v14];
      v33 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 isConversation]);
      v32 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 isOutgoing]);
      v31 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 isSendingVideo] ^ 1);
      v21 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 wantsStagingArea]);
      v30 = v21;
      [NSNumber numberWithBool:v38];
      v24 = v36 = v18;
      if (v18)
      {
        v25 = @"YES";
      }

      else
      {
        v25 = @"NO";
      }

      v26 = [NSNumber numberWithBool:v20, v25];
      v18 = v26;
      *buf = 138414850;
      if (v4)
      {
        v27 = @"YES";
      }

      else
      {
        v27 = @"NO";
      }

      v40 = v34;
      if (v35)
      {
        v28 = @"YES";
      }

      else
      {
        v28 = @"NO";
      }

      v41 = 2112;
      v42 = v23;
      v43 = 2112;
      v44 = v33;
      v45 = 2112;
      v46 = v32;
      v47 = 2112;
      v48 = v31;
      v49 = 2112;
      v50 = v21;
      v51 = 2112;
      v52 = v24;
      v53 = 2112;
      v54 = v29;
      LOBYTE(v21) = v35;
      v55 = 2112;
      v56 = v26;
      v57 = 2112;
      v58 = v27;
      v59 = 2112;
      v60 = v28;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "shouldPresentDismissedForCall: callStatus:%@, isExpanseMessages:%@, isConversation:%@, isOutgoing:%@, isAudioCall:%@, wantsStagingArea:%@ avLessWantsDismised:%@ callProviderWantsDismissed:%@ isOutgoingIpadFTA:%@ tappedPill:%@ screeningWantsDismissed:%@", buf, 0x70u);

      LOBYTE(v18) = v36;
    }

    v11 = v18 | v37 | v20 & !v4 | v38 | v21;
  }

  return v11 & 1;
}

- (void)handleMenuBarTitleForCallUpgradeDowngradeNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleMenuBarTitleForCallUpgradeDowngradeNotification: Call upgrade or downgrade detected, updating menu bar title accordingly", buf, 2u);
  }

  v6 = [v4 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v4 object];
    v9 = sub_100004F84();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "handleMenuBarTitleForCallUpgradeDowngradeNotification: Call found, updating menu bar title now", v11, 2u);
    }

    [(ICSApplicationDelegate *)self updateiPadMenuBarApplicationName:v8];
  }

  else
  {
    v8 = sub_100004F84();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "handleMenuBarTitleForCallUpgradeDowngradeNotification: Call not found, so we won't change anything", v10, 2u);
    }
  }
}

- (void)performPresentationForSOS
{
  v3 = [(ICSApplicationDelegate *)self configurationForSOS];
  [(ICSApplicationDelegate *)self performPresentationWithConfiguration:v3 forSceneType:0];
}

- (void)performPresentationForScreenTime
{
  v3 = [(ICSApplicationDelegate *)self configurationForScreenTime];
  [(ICSApplicationDelegate *)self performPresentationWithConfiguration:v3 forSceneType:0];
}

- (void)performPresentationForScreenSharingInitiallyInPiP:(BOOL)a3
{
  v4 = [(ICSApplicationDelegate *)self configurationForScreenSharingInitiallyInPiP:a3];
  [(ICSApplicationDelegate *)self performPresentationWithConfiguration:v4 forSceneType:1];
}

- (void)performPersentationForScreenSharingObserver
{
  v3 = [(ICSApplicationDelegate *)self configurationForScreenShareBroadcast];
  [(ICSApplicationDelegate *)self performPresentationWithConfiguration:v3 forSceneType:2];
}

- (void)performDismissedPresentationForCallDetailsView
{
  v3 = [(ICSApplicationDelegate *)self configurationForCallDetailsViewWithFullScreenRequest:0];
  [(ICSApplicationDelegate *)self performPresentationWithConfiguration:v3 forSceneType:0];
}

- (void)performFullScreenPresentationForCallDetailsView
{
  v3 = [(ICSApplicationDelegate *)self configurationForCallDetailsViewWithFullScreenRequest:1];
  [(ICSApplicationDelegate *)self performPresentationWithConfiguration:v3 forSceneType:0];
}

- (id)configurationForCall:(id)a3 tappedPill:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[TUCallCenter sharedInstance];
  v8 = [v7 resolvedIncomingCall];
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v10 = +[TUCallCenter sharedInstance];
    v11 = [v10 incomingVideoCall];
    v9 = v11 != 0;
  }

  v12 = [(PHApplicationDelegate *)self featureFlags];
  if (![v12 groupConversations])
  {
    v15 = 0;
    goto LABEL_8;
  }

  HasChinaSKU = TUDeviceHasChinaSKU();

  if (HasChinaSKU)
  {
    v12 = +[TUCallCenter sharedInstance];
    v14 = [v12 callsPassingTest:&stru_100357A60];
    v15 = [v14 count] != 0;

LABEL_8:
    goto LABEL_10;
  }

  v15 = 0;
LABEL_10:
  v16 = [(PHApplicationDelegate *)self features];
  v17 = [v16 isIncomingCallBannerEnabled];

  v18 = +[TUCallCenter sharedInstance];
  v19 = [v18 gameOverlayController];
  v20 = [v19 overlayOpen];

  v21 = ((v20 | v17) & 1) == 0;
  v22 = +[ICSPreferences sharedPreferences];
  v23 = [v22 hasBannersEnabled];
  if (v15)
  {
    v24 = 2;
  }

  else
  {
    v24 = v21;
  }

  if (v23)
  {
    v25 = v24;
  }

  else
  {
    v25 = 2;
  }

  if ([(ICSApplicationDelegate *)self shouldPresentDismissedForCall:v6 tappedPill:v4])
  {
    v26 = 0;
  }

  else
  {
    v26 = 2;
  }

  if (v9)
  {
    v27 = v25;
  }

  else
  {
    v27 = v26;
  }

  v28 = [ICSApplicationDelegate configurationForCall:v6 preferredPresentationMode:v27];

  return v28;
}

+ (id)configurationForCall:(id)a3 preferredPresentationMode:(int64_t)a4
{
  v5 = a3;
  v6 = [SBSInCallPresentationConfiguration alloc];
  v7 = [v6 initWithSceneBundleIdentifier:TUBundleIdentifierInCallServiceApplication];
  [v7 setShouldDismissCMASAlerts:{objc_msgSend(v5, "isOutgoing")}];
  [v7 setPreferredPresentationMode:a4];
  v8 = [v5 isOutgoing];

  [v7 setShouldPreferContinuityDisplayForFullScreenPresentation:v8];
  v9 = MGGetProductType();
  v10 = sub_100004F84();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Setting preferredBannerHeight based on productType %ld", &v13, 0xCu);
  }

  v11 = 104.0;
  if (v9 == 2487868872)
  {
    v11 = 108.0;
  }

  [v7 setPreferredBannerHeight:v11];
  [v7 setSupportsSystemAperture:1];
  [v7 setSupportsAmbient:1];

  return v7;
}

- (id)configurationForSOS
{
  v2 = [SBSInCallPresentationConfiguration alloc];
  v3 = [v2 initWithSceneBundleIdentifier:TUBundleIdentifierInCallServiceApplication];
  [v3 setShouldDismissCMASAlerts:1];
  [v3 setShouldPreventBannersWhenPresentedAsOverlay:1];
  [v3 setPreferredPresentationMode:3];
  [v3 setShouldPreferContinuityDisplayForFullScreenPresentation:0];

  return v3;
}

- (id)configurationForScreenTime
{
  v2 = [SBSInCallPresentationConfiguration alloc];
  v3 = [v2 initWithSceneBundleIdentifier:TUBundleIdentifierInCallServiceApplication];
  [v3 setShouldDismissCMASAlerts:0];
  [v3 setPreferredPresentationMode:3];
  [v3 setShouldPreferContinuityDisplayForFullScreenPresentation:0];

  return v3;
}

- (id)configurationForScreenShareBroadcast
{
  v2 = [SBSInCallPresentationConfiguration alloc];
  v3 = [v2 initWithSceneBundleIdentifier:TUBundleIdentifierInCallServiceApplication];
  [v3 setShouldDismissCMASAlerts:0];
  [v3 setPreferredPresentationMode:3];
  [v3 setShouldPreferContinuityDisplayForFullScreenPresentation:0];

  return v3;
}

- (id)configurationForScreenSharingInitiallyInPiP:(BOOL)a3
{
  v3 = a3;
  v4 = [SBSInCallPresentationConfiguration alloc];
  v5 = [v4 initWithSceneBundleIdentifier:TUBundleIdentifierInCallServiceApplication];
  [v5 setShouldDismissCMASAlerts:0];
  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  [v5 setPreferredPresentationMode:v6];
  [v5 setScreenSharingPresentation:1];
  [v5 setShouldPreferContinuityDisplayForFullScreenPresentation:0];

  return v5;
}

- (id)configurationForCallDetailsViewWithFullScreenRequest:(BOOL)a3
{
  v3 = a3;
  v4 = [SBSInCallPresentationConfiguration alloc];
  v5 = [v4 initWithSceneBundleIdentifier:TUBundleIdentifierInCallServiceApplication];
  [v5 setShouldDismissCMASAlerts:0];
  if (v3)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  [v5 setPreferredPresentationMode:v6];
  v7 = +[TUCallCenter sharedInstance];
  v8 = [v7 callWithStatus:3];
  [v5 setShouldPreferContinuityDisplayForFullScreenPresentation:v8 != 0];

  [v5 setSupportsSystemAperture:1];

  return v5;
}

- (id)configurationForPTTSessionWithCall:(id)a3 preferredPresentationMode:(int64_t)a4
{
  v5 = [SBSInCallPresentationConfiguration alloc];
  v6 = [v5 initWithSceneBundleIdentifier:TUBundleIdentifierInCallServiceApplication];
  [v6 setShouldDismissCMASAlerts:0];
  [v6 setPreferredPresentationMode:a4];
  [v6 setSupportsSystemAperture:1];
  v7 = +[TUCallCenter sharedInstance];
  v8 = [v7 callWithStatus:3];
  [v6 setShouldPreferContinuityDisplayForFullScreenPresentation:v8 != 0];

  return v6;
}

- (void)performPresentationWithConfiguration:(id)a3 forSceneType:(unint64_t)a4
{
  v5 = a3;
  v4 = v5;
  TUDispatchMainIfNecessary();
}

- (void)requestPresentationForCall:(id)a3 dialRequest:(id)a4 tappedPill:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = sub_100009960();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Activating InCallService user interface for call %@", &v11, 0xCu);
  }

  [ICSAriadne trace:3];
  if ([(ICSApplicationDelegate *)self isClarityBoardActive])
  {
    [(ICSApplicationDelegate *)self requestClarityBoardPresentation];
  }

  else
  {
    [(ICSApplicationDelegate *)self requestSpringBoardPresentationForCall:v8 dialRequest:v9 tappedPill:v5];
  }
}

- (void)requestSpringBoardPresentationForCall:(id)a3 dialRequest:(id)a4 tappedPill:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = +[ICSPreferences sharedPreferences];
  v11 = [v10 hasAdoptedModernInCallAPI];

  if (v11)
  {
    v63 = v9;
    v12 = [(ICSApplicationDelegate *)self configurationForCall:v8 tappedPill:v5];
    v13 = [(ICSApplicationDelegate *)self currentInCallScene];
    v14 = [v13 presentationMode];

    v15 = [(ICSApplicationDelegate *)self hasExistingDismissedInCallScene];
    if ([v8 isConnected] & 1) != 0 || objc_msgSend(v12, "preferredPresentationMode") || (objc_msgSend(v8, "launchInBackground"))
    {
      v16 = 0;
    }

    else
    {
      v42 = [(PHApplicationDelegate *)self features];
      v16 = [v42 isIncomingCallBannerEnabled];
    }

    v17 = v5 && v14 == 1;
    v18 = [v12 preferredPresentationMode];
    if ([v8 isScreening] && objc_msgSend(v8, "receptionistState") == 3)
    {
      v19 = 1;
      if (([v8 isWaitOnHoldActive] & 1) == 0 && !v5 && v14 != 1)
      {
        v20 = +[PHInCallUIUtilities sharedInstance];
        v19 = [v20 isSpringBoardLocked];
      }
    }

    else
    {
      v19 = 1;
    }

    v24 = v15 | v17;
    if (v18)
    {
      v25 = [(ICSApplicationDelegate *)self ambientActivityController];
      [v25 requestActivityForCall:v8];
    }

    if ((v24 & ((v18 != 0) | v16) & v19) == 1)
    {
      v26 = sub_100009960();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Already have a dismissed in-call scene. Requesting transition to full-screen", buf, 2u);
      }

      v27 = +[PHPIPController defaultPIPController];
      v28 = [v27 isPipped];

      if (!v28)
      {
        v64 = v8;
        TUDispatchMainIfNecessary();

        goto LABEL_73;
      }

      v29 = sub_100009960();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "InCallService is currently PIPped. Un-PIPping before going full-screen", buf, 2u);
      }

      v30 = +[PHPIPController defaultPIPController];
      if ([v30 isPIPProxyInterrupted])
      {
        v31 = [v8 status];

        if (v31 != 4)
        {
LABEL_30:
          v33 = +[NSNotificationCenter defaultCenter];
          v34 = +[PHPIPController defaultPIPController];
          [v33 postNotificationName:@"PHPIPControllerDidRequestReturnToFullScreenNotification" object:v34];

LABEL_42:
LABEL_73:

          v9 = v63;
          goto LABEL_74;
        }

        v32 = sub_100009960();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "InCallService is presenting full-screen for a ringing call during a pip interrupted call", buf, 2u);
        }

        v30 = +[PHPIPController defaultPIPController];
        [v30 setExpectingSystemInitiatedPIPInterruptionStop:1];
      }

      goto LABEL_30;
    }

    if ([(ICSApplicationDelegate *)self hasExistingFullScreenInCallScene])
    {
      v37 = sub_100009960();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Already have a full-screen scene, assuming the status bar was tapped", buf, 2u);
      }

      v38 = +[NSNotificationCenter defaultCenter];
      [v38 postNotificationName:@"ICSStatusBarTappedNotification" object:0];

      v39 = [(PHApplicationDelegate *)self featureFlags];
      LODWORD(v38) = [v39 callManagerEnabled];

      if (!v38 || !v5)
      {
        goto LABEL_73;
      }

      v40 = sub_100009960();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Passing along fullscreen tap", buf, 2u);
      }

      v33 = +[NSNotificationCenter defaultCenter];
      [v33 postNotificationName:@"ICSStatusBarTapInFullScreenNotification" object:0];
      goto LABEL_42;
    }

    v41 = [(ICSApplicationDelegate *)self currentInCallScene];
    if (v41)
    {
    }

    else if ([(ICSApplicationDelegate *)self hasActiveOrPendingInCallPresentation])
    {
      v43 = sub_100009960();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
      }
    }

    if ([v12 preferredPresentationMode] == 1)
    {
      v44 = [(ICSApplicationDelegate *)self bannerPresentationManager];
      v45 = [v44 placeholderCallGroupUUID];
      if (!v45)
      {
LABEL_56:

        goto LABEL_57;
      }

      v46 = v45;
      v47 = [v8 callGroupUUID];
      v48 = [(ICSApplicationDelegate *)self bannerPresentationManager];
      v49 = [v48 placeholderCallGroupUUID];
      v50 = [v47 isEqual:v49];

      if (v50)
      {
        v51 = sub_100004F84();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Presenting banner scene for call that matches systemHUD's AVLess convo. Dismissing HUD.", buf, 2u);
        }

        v44 = [(ICSApplicationDelegate *)self bannerPresentationManager];
        [v44 dismissPresentedBannerForReason:@"Showing invite for existing AVLess call" animated:1];
        goto LABEL_56;
      }
    }

LABEL_57:
    [(ICSApplicationDelegate *)self performPresentationWithConfiguration:v12 forSceneType:0];
    if ([v8 launchInBackground] && objc_msgSend(v8, "isVideo") && !objc_msgSend(v12, "preferredPresentationMode"))
    {
      v60 = sub_100009960();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Activating InCallService user interface for background call with initially PiPped", buf, 2u);
      }

      [(ICSApplicationDelegate *)self requestBackgroundPiPAuthorizationOfDismissedInCallSceneForCall:v8];
      goto LABEL_73;
    }

    v52 = [(PHApplicationDelegate *)self featureFlags];
    if ([v52 expanseEnabled])
    {
      v53 = [v12 preferredPresentationMode];

      if (v53)
      {
        goto LABEL_73;
      }

      v54 = [(ICSApplicationDelegate *)self bannerPresentationManager];
      v55 = [v54 callUUID];
      v56 = [v8 uniqueProxyIdentifierUUID];
      v57 = [v55 isEqual:v56];

      v58 = sub_100009960();
      v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
      if (v57)
      {
        if (v59)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Requested to present scene as dismissed, so requesting to present call controls", buf, 2u);
        }

        [(ICSApplicationDelegate *)self showCallControlsForCurrentContext];
        goto LABEL_73;
      }

      if (v59)
      {
        v61 = v58;
        v62 = [v8 uniqueProxyIdentifierUUID];
        *buf = 138412290;
        v66 = v62;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Waiting to present banner for callUUID %@", buf, 0xCu);
      }

      v52 = [v8 uniqueProxyIdentifierUUID];
      [(ICSApplicationDelegate *)self setCallUUIDWaitingToPresentBanner:v52];
    }

    goto LABEL_73;
  }

  v21 = [v8 launchInBackground];
  v22 = sub_100009960();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (v21)
  {
    if (v23)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Skipping SpringBoard remote alert as call requested to launchInBackground", buf, 2u);
    }
  }

  else
  {
    if (v23)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Activating a new SpringBoard remote alert", buf, 2u);
    }

    v35 = [(ICSApplicationDelegate *)self springBoardRemoteAlertOptionsForCall:v8 dialRequest:v9];
    v36 = +[NSBundle mainBundle];
    [v36 bundleIdentifier];
    SBSUIActivateRemoteAlert();
  }

LABEL_74:
}

- (void)requestSpringBoardPresentationForScreenSharingBroadcaster:(id)a3
{
  v4 = a3;
  v5 = [(PHApplicationDelegate *)self featureFlags];
  v6 = [v5 screenSharingRemoteControlEnabled];

  v7 = sub_100009960();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Requesting presentation for screen sharing broadcaster: %@", &v14, 0xCu);
    }

    v9 = [(ICSApplicationDelegate *)self sceneManager];
    [v9 didRequestSceneOfType:2 withIdentifier:0];

    v10 = objc_opt_new();
    v11 = [v10 uiSceneSessionRole];
    v12 = [UISceneSessionActivationRequest requestWithRole:v11];

    v13 = +[UIApplication sharedApplication];
    [v13 activateSceneSessionForRequest:v12 errorHandler:&stru_100357B18];
  }

  else if (v8)
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Not requesting presentation for screen sharing broadcaster, Essonite features are disabled.", &v14, 2u);
  }
}

- (void)requestClarityBoardPresentation
{
  v3 = [(ICSApplicationDelegate *)self sceneManager];
  v4 = [v3 hasPendingSceneOfType:3];

  if (v4)
  {
    v5 = sub_100009960();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v17 = 0;
    v6 = "Already requested presentation from ClarityBoard, so skipping new request.";
    v7 = &v17;
    v8 = v5;
LABEL_7:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    return;
  }

  v9 = [(ICSApplicationDelegate *)self sceneManager];
  v10 = [v9 clarityUIScene];

  v11 = sub_100009960();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (!v12)
    {
      return;
    }

    *buf = 0;
    v6 = "Already presented by ClarityBoard, so skipping new request.";
    v7 = buf;
    v8 = v11;
    goto LABEL_7;
  }

  if (v12)
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Requesting presentation from ClarityBoard.", v15, 2u);
  }

  v13 = [(ICSApplicationDelegate *)self sceneManager];
  [v13 didRequestSceneOfType:3 withIdentifier:0];

  v14 = +[UIApplication sharedApplication];
  [v14 requestSceneSessionActivation:0 userActivity:0 options:0 errorHandler:&stru_100357B38];
}

- (void)requestPTTPresentation:(int64_t)a3 forCall:(id)a4
{
  v6 = a4;
  v7 = sub_100009960();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Requesting PTT presentation for call %@", &v17, 0xCu);
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v14 = +[PHInCallUIUtilities sharedInstance];
      v15 = [v14 isSpringBoardLocked];

      if ((v15 & 1) == 0)
      {
        v16 = sub_100009960();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Activating PTT user interface as notice for incoming transmission if needed", &v17, 2u);
        }

        [(ICSApplicationDelegate *)self presentDismissedPTTSceneForCall:v6];
        v9 = [(ICSApplicationDelegate *)self bannerPresentationManager];
        [v9 showRemoteParticipantNoticeIfNeeded];
        goto LABEL_21;
      }
    }

    else if (a3 == 3)
    {
      v10 = +[PHInCallUIUtilities sharedInstance];
      v11 = [v10 isSpringBoardLocked];

      if ((v11 & 1) == 0)
      {
        v12 = sub_100009960();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Activating PTT user interface as notice for acessory button events if needed", &v17, 2u);
        }

        [(ICSApplicationDelegate *)self presentDismissedPTTSceneForCall:v6];
        v9 = [(ICSApplicationDelegate *)self bannerPresentationManager];
        [v9 showAccessoryButtonEventsNoticeIfNeeded];
        goto LABEL_21;
      }
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v8 = sub_100009960();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Activating PTT user interface as banner", &v17, 2u);
      }

      [(ICSApplicationDelegate *)self presentDismissedPTTSceneForCall:v6];
      v9 = [(ICSApplicationDelegate *)self bannerPresentationManager];
      [v9 showPTTHUD];
LABEL_21:
    }
  }

  else
  {
    v13 = sub_100009960();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Not activating PTT user interface because presentation was unknown", &v17, 2u);
    }
  }
}

- (void)presentDismissedPTTSceneForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100009960();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Activating InCallService PTT user interface as full screen scene in dismissed mode", v7, 2u);
  }

  v6 = [(ICSApplicationDelegate *)self configurationForPTTSessionWithCall:v4 preferredPresentationMode:0];

  [(ICSApplicationDelegate *)self performPresentationWithConfiguration:v6 forSceneType:0];
}

- (void)dismissPTTSessionPresentation
{
  v3 = sub_100009960();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dismissing PTT session presentation", v5, 2u);
  }

  [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHInitialPTTFullScreenPresentationAssertionReason"];
  [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHPTTCallDetailsViewAssertionReason"];
  v4 = [(ICSApplicationDelegate *)self bannerPresentationManager];
  [v4 dismissPresentedBannerForReason:@"Dismissing PTT Banner" animated:1];
}

- (void)bannerPresentationManagerDidDismissBanner
{
  v3 = +[TUCallCenter sharedInstance];
  v4 = [v3 frontmostBargeCall];

  if (v4 && [v4 isPTT])
  {
    [(ICSApplicationDelegate *)self dismissPTTSessionPresentation];
  }

  [(ICSApplicationDelegate *)self setIsShowingIncomingNameUpdate:0];
}

- (BOOL)bannerPresentationManagerWantsSpringBoardIsLockedStatus
{
  v2 = +[PHInCallUIUtilities sharedInstance];
  v3 = [v2 isSpringBoardLocked];

  return v3;
}

- (void)bannerPresentationManagerShowFullscreenPTTCallDetailsView
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deep linking to PushToTalk call details view", v4, 2u);
  }

  [(ICSApplicationDelegate *)self setDidDeepLinkToPTTCallDetailsView:1];
  [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHPTTCallDetailsViewAssertionReason"];
  [(ICSApplicationDelegate *)self requestFullScreenSpringBoardPresentationForCallDetailsView];
}

- (void)bannerPresentationManagerGameOverlayDidOpen
{
  v3 = sub_100009960();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Game overlay opened", v9, 2u);
  }

  v4 = [(ICSApplicationDelegate *)self currentInCallScene];
  if (v4)
  {
    v5 = v4;
    v6 = [(ICSApplicationDelegate *)self currentInCallScene];
    v7 = [v6 presentationMode];

    if (v7)
    {
      v8 = [(ICSApplicationDelegate *)self currentInCallScene];
      [v8 ics_requestTransitionToPresentationMode:0 shouldDismissCMASAlerts:0 analyticsSource:0 completion:&stru_100357B78];
    }
  }
}

- (void)requestGreenTea3PPresentationForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100009960();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Requesting GreenTea3P presentation for call %@", buf, 0xCu);
  }

  v6 = [(ICSApplicationDelegate *)self configurationForGreenTea3P];
  [(ICSApplicationDelegate *)self performPresentationWithConfiguration:v6 forSceneType:6];
  v7 = [(ICSApplicationDelegate *)self currentInCallScene];
  if (v7 && (v8 = v7, -[ICSApplicationDelegate currentInCallScene](self, "currentInCallScene"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 presentationMode], v9, v8, v10))
  {
    v11 = [(ICSApplicationDelegate *)self currentInCallScene];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10007F51C;
    v12[3] = &unk_100357AF8;
    v12[4] = self;
    [v11 ics_requestTransitionToPresentationMode:0 shouldDismissCMASAlerts:0 analyticsSource:0 completion:v12];
  }

  else
  {
    v11 = [(ICSApplicationDelegate *)self bannerPresentationManager];
    [v11 showGreenTea3PHUD];
  }

  [(ICSApplicationDelegate *)self showCarPlayUIWithActivation:1];
}

- (id)configurationForGreenTea3P
{
  v2 = [SBSInCallPresentationConfiguration alloc];
  v3 = [v2 initWithSceneBundleIdentifier:TUBundleIdentifierInCallServiceApplication];
  [v3 setShouldDismissCMASAlerts:0];
  [v3 setPreferredPresentationMode:0];
  v4 = +[TUCallCenter sharedInstance];
  v5 = [v4 callWithStatus:3];
  [v3 setShouldPreferContinuityDisplayForFullScreenPresentation:v5 != 0];

  [v3 setSupportsSystemAperture:0];
  if (objc_opt_respondsToSelector())
  {
    v9 = 1;
    v6 = [objc_opt_class() instanceMethodSignatureForSelector:"setRequiresDismissedPresentationmode:"];
    v7 = [NSInvocation invocationWithMethodSignature:v6];
    [v7 setTarget:v3];
    [v7 setSelector:"setRequiresDismissedPresentationmode:"];
    [v7 setArgument:&v9 atIndex:2];
    [v7 invoke];
  }

  return v3;
}

- (void)updatePresentationIfNecessaryForGreenTea3PCall:(id)a3
{
  v4 = a3;
  v5 = sub_100009960();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating presentation if necessary for GreenTea3P call: %@", &v18, 0xCu);
  }

  v6 = +[TUCallCenter sharedInstance];
  v7 = [v6 callsPassingTest:&stru_100357B98];
  v8 = [v7 count];

  if (!v8)
  {
    [(ICSApplicationDelegate *)self dismissInCallSceneOfType:6];
  }

  v9 = +[TUCallCenter sharedInstance];
  v10 = [v9 frontmostAudioOrVideoCall];
  v11 = [v10 provider];
  v12 = [v11 supportsDynamicSystemUI];

  v13 = +[TUCallCenter sharedInstance];
  v14 = [v13 frontmostAudioOrVideoCall];
  v15 = [(ICSApplicationDelegate *)self shouldActivateSpringBoardRemoteAlertForCall:v14];

  if ((v12 & 1) == 0 && v15)
  {
    v16 = +[TUCallCenter sharedInstance];
    v17 = [v16 frontmostAudioOrVideoCall];
    [(ICSApplicationDelegate *)self requestPresentationForCall:v17 dialRequest:0];
  }
}

- (void)requestWaitOnHoldBannerPresentation
{
  v3 = sub_100009960();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Requesting Wait on Hold banner presentation", buf, 2u);
  }

  v4 = [(ICSApplicationDelegate *)self currentInCallScene];
  if (v4)
  {
    v5 = v4;
    v6 = [(ICSApplicationDelegate *)self currentInCallScene];
    if ([v6 presentationMode])
    {
      v7 = +[PHInCallUIUtilities sharedInstance];
      v8 = [v7 isSpringBoardLocked];

      if ((v8 & 1) == 0)
      {
        v9 = [(ICSApplicationDelegate *)self currentInCallScene];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10007FAC0;
        v17[3] = &unk_100357AF8;
        v17[4] = self;
        [v9 ics_requestTransitionToPresentationMode:0 shouldDismissCMASAlerts:0 analyticsSource:0 completion:v17];

        return;
      }
    }

    else
    {
    }
  }

  v10 = [(ICSApplicationDelegate *)self currentInCallScene];
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = v10;
  v12 = [(ICSApplicationDelegate *)self currentInCallScene];
  if (![v12 presentationMode])
  {

    goto LABEL_13;
  }

  v13 = +[PHInCallUIUtilities sharedInstance];
  v14 = [v13 isSpringBoardLocked];

  if (!v14)
  {
LABEL_13:
    v16 = [(ICSApplicationDelegate *)self bannerPresentationManager];
    [v16 showWaitOnHoldHUD];
    goto LABEL_14;
  }

  v15 = [(ICSApplicationDelegate *)self bannerPresentationManager];
  [v15 showWaitOnHoldHUD];

  v16 = [(ICSApplicationDelegate *)self currentInCallScene];
  [v16 ics_requestTransitionToPresentationMode:0];
LABEL_14:
}

- (void)smartHoldSessionChanged:(id)a3
{
  v22 = a3;
  v4 = [v22 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v7 = 0;
    goto LABEL_16;
  }

  v6 = [v22 object];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_16;
  }

  v8 = [v6 smartHoldingSession];
  if (v8)
  {
    v9 = v8;
    v10 = [v7 smartHoldingSession];
    if ([v10 state])
    {
    }

    else
    {
      v11 = [(ICSApplicationDelegate *)self callUUIDForWaitOnHoldPresentation];
      v12 = [v7 callUUID];
      v13 = [v11 isEqualToString:v12];

      if ((v13 & 1) == 0)
      {
        v21 = [v7 callUUID];
        [(ICSApplicationDelegate *)self setCallUUIDForWaitOnHoldPresentation:v21];

        [(ICSApplicationDelegate *)self requestWaitOnHoldBannerPresentation];
        goto LABEL_16;
      }
    }
  }

  v14 = [v7 smartHoldingSession];
  if (v14)
  {
    v15 = v14;
    v16 = [v7 smartHoldingSession];
    if ([v16 state] == 3)
    {
      v17 = +[PHInCallUIUtilities sharedInstance];
      v18 = [v17 isSpringBoardLocked];

      if (v18)
      {
        v19 = [(ICSApplicationDelegate *)self currentInCallScene];
        [v19 requestTransitionToPresentationMode:2];

        goto LABEL_16;
      }
    }

    else
    {
    }
  }

  v20 = [v7 smartHoldingSession];

  if (!v20)
  {
    [(ICSApplicationDelegate *)self setCallUUIDForWaitOnHoldPresentation:0];
  }

LABEL_16:
}

- (void)requestHandoffEligibleConversationPresentation
{
  v3 = sub_100009960();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Activating InCallService user interface for handoff-eligible nearby conversation", v5, 2u);
  }

  v4 = [(ICSApplicationDelegate *)self bannerPresentationManager];
  [v4 showHandoffHUD];
}

- (void)requestLagunaPullConversationPresentation
{
  v3 = sub_100009960();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Activating InCallService user interface for laguna pull conversation", v5, 2u);
  }

  v4 = [(ICSApplicationDelegate *)self bannerPresentationManager];
  [v4 showLagunaPullConversationHUD];
}

- (void)requestSpringBoardPresentationForScreenSharingAsPiP:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHApplicationDelegate *)self featureFlags];
  v6 = [v5 supportsScreenSharing];

  v7 = sub_100009960();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Activating InCallService user interface for Screen Sharing with initially PiPped: %i", v10, 8u);
    }

    if (v3)
    {
      v9 = [(ICSApplicationDelegate *)self configurationForScreenSharingInitiallyInPiP:1];
      [(ICSApplicationDelegate *)self requestBackgroundPiPAuthorizationForSceneType:1 withConfiguration:v9];
    }

    else
    {
      [(ICSApplicationDelegate *)self performPresentationForScreenSharingInitiallyInPiP:0];
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100254DB4();
  }
}

- (void)requestBackgroundPiPAuthorizationOfDismissedInCallSceneForCall:(id)a3
{
  v4 = a3;
  v5 = [(ICSApplicationDelegate *)self hasExistingDismissedInCallScene];
  v6 = [(ICSApplicationDelegate *)self sceneManager];
  v7 = [v6 hasPendingCompletionForSceneType:0 presentationMode:2];

  v8 = v5 ^ 1;
  v9 = sub_100009960();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if ((v8 & 1) != 0 || v7)
  {
    if (v10)
    {
      v12[0] = 67109376;
      v12[1] = v8;
      v13 = 1024;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not requesting background PiP authorization since there isn't a dismissed in-call scene (%d) or we're in the midst of presenting a fullscreen scene (%d)", v12, 0xEu);
    }
  }

  else
  {
    if (v10)
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Requesting background PiP authorization for dismissed in-call scene", v12, 2u);
    }

    v11 = [ICSApplicationDelegate configurationForCall:v4 preferredPresentationMode:0];
    [(ICSApplicationDelegate *)self requestBackgroundPiPAuthorizationForSceneType:0 withConfiguration:v11];
  }
}

- (void)requestBackgroundPiPAuthorizationForSceneType:(unint64_t)a3 withConfiguration:(id)a4
{
  v6 = a4;
  if (a3 == 1)
  {
    v7 = +[NSUUID UUID];
    v8 = [v7 UUIDString];
  }

  else
  {
    v8 = TUBundleIdentifierInCallServiceApplication;
  }

  v9 = [(ICSApplicationDelegate *)self backgroundPIPAuthorizationForSceneType];
  v10 = [NSNumber numberWithUnsignedInteger:a3];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = sub_100009960();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = sub_100030C10(a3);
      *buf = 138543362;
      v35 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Already have existing background authorization request for scene of type %{public}@; removing old request", buf, 0xCu);
    }

    [(ICSApplicationDelegate *)self revokeAndRemoveBackgroundPiPAuthorizationForSceneTypeIfNeeded:a3];
  }

  v15 = sub_100009960();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = sub_100030C10(a3);
    *buf = 138543618;
    v35 = v17;
    v36 = 2114;
    v37 = v8;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Requesting background PiP authorization for %{public}@ scene with activity session identifier '%{public}@'", buf, 0x16u);
  }

  v18 = [(ICSApplicationDelegate *)self sceneManager];
  v19 = [v6 identifier];
  [v18 didRequestSceneOfType:a3 withIdentifier:v19];

  objc_initWeak(buf, self);
  v20 = [PGBackgroundPIPAuthorization alloc];
  v27 = _NSConcreteStackBlock;
  v28 = 3221225472;
  v29 = sub_1000803D8;
  v30 = &unk_100357BE8;
  objc_copyWeak(v33, buf);
  v21 = TUBundleIdentifierInCallServiceApplication;
  v33[1] = a3;
  v22 = v8;
  v31 = v22;
  v23 = v6;
  v32 = v23;
  v24 = [v20 initWithActivitySessionIdentifier:v22 appBundleIdentifier:v21 stateTransitionHandler:&v27];
  v25 = [(ICSApplicationDelegate *)self backgroundPIPAuthorizationForSceneType:v27];
  v26 = [NSNumber numberWithUnsignedInteger:a3];
  [v25 setObject:v24 forKeyedSubscript:v26];

  objc_destroyWeak(v33);
  objc_destroyWeak(buf);
}

- (void)revokeAndRemoveBackgroundPiPAuthorizationForSceneTypeIfNeeded:(unint64_t)a3
{
  v5 = [(ICSApplicationDelegate *)self backgroundPIPAuthorizationForSceneType];
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = sub_100009960();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v10 = sub_100030C10(a3);
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Revoking and removing existing background authorization for %{public}@ scene", &v13, 0xCu);
    }
  }

  [v7 revoke];
  v11 = [(ICSApplicationDelegate *)self backgroundPIPAuthorizationForSceneType];
  v12 = [NSNumber numberWithUnsignedInteger:a3];
  [v11 removeObjectForKey:v12];
}

- (void)dismissInCallSceneSession
{
  if ([(ICSApplicationDelegate *)self isClarityBoardActive])
  {

    [(ICSApplicationDelegate *)self dismissClarityUIScene];
  }

  else
  {

    [(ICSApplicationDelegate *)self dismissInCallSceneOfType:0];
  }
}

- (void)dismissClarityUIScene
{
  v3 = [(ICSApplicationDelegate *)self sceneManager];
  v4 = [v3 clarityUIScene];

  v5 = sub_100009960();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Dismissing Assistive Access scene.", v10, 2u);
    }

    v7 = +[UIApplication sharedApplication];
    v8 = [v4 session];
    [v7 requestSceneSessionDestruction:v8 options:0 errorHandler:&stru_100357C28];

    v9 = [(ICSApplicationDelegate *)self sceneManager];
    [v9 didDismissSceneOfType:3];
  }

  else if (v6)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempted to dismiss Assistive Access scene, but none was showing.", buf, 2u);
  }
}

- (BOOL)hasActiveOrPendingVideoMessagePresentation
{
  v2 = [(ICSApplicationDelegate *)self sceneManager];
  v3 = [v2 hasPendingOrExistingSceneOfType:4];

  return v3;
}

- (void)requestSpringBoardPresentationForSOS
{
  v3 = sub_100009960();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Activating InCallService user interface for SOS", buf, 2u);
  }

  v4 = +[ICSPreferences sharedPreferences];
  v5 = [v4 hasAdoptedModernInCallAPI];

  if (v5)
  {
    if ([(ICSApplicationDelegate *)self hasActiveOrPendingInCallPresentation])
    {
      v6 = [(ICSApplicationDelegate *)self currentInCallScene];

      if (v6)
      {
        v7 = +[PHPIPController defaultPIPController];
        v8 = [v7 isPipped];

        v9 = sub_100009960();
        v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        if (v8)
        {
          if (v10)
          {
            *v15 = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "InCallService is currently PIPped. Un-PIPping now, then the scene should transition to full-screen overlay after the call disconnects.", v15, 2u);
          }

          v11 = +[NSNotificationCenter defaultCenter];
          v12 = +[PHPIPController defaultPIPController];
          [v11 postNotificationName:@"PHPIPControllerDidRequestReturnToFullScreenNotification" object:v12];
        }

        else
        {
          if (v10)
          {
            *v14 = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "There's an existing in-call scene, transitioning to full-screen overlay for SOS", v14, 2u);
          }

          [(ICSApplicationDelegate *)self transitionSceneToOverlayForSOS];
        }
      }

      else
      {
        v13 = sub_100009960();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "While requesting a new scene for SOS, hasActiveOrPendingInCallPresentation is YES but currentInCallScene is nil. This is likely because we already requested a scene, but it hasn't been created yet. The new scene should transition to full-screen overlay as soon as it connects.", v16, 2u);
        }
      }
    }

    else
    {
      [(ICSApplicationDelegate *)self performPresentationForSOS];
    }
  }

  else
  {
    [(ICSApplicationDelegate *)self activateSpringBoardRemoteAlertForSOSCall];
  }
}

- (void)requestPresentationForScreenTime
{
  v3 = sub_100009960();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Activating InCallService user interface for ScreenTime", v4, 2u);
  }

  if ([(ICSApplicationDelegate *)self isClarityBoardActive])
  {
    [(ICSApplicationDelegate *)self requestClarityBoardPresentation];
  }

  else
  {
    [(ICSApplicationDelegate *)self requestSpringBoardPresentationForScreenTime];
  }
}

- (void)requestSpringBoardPresentationForScreenTime
{
  if ([(ICSApplicationDelegate *)self hasActiveOrPendingInCallPresentation])
  {
    v3 = [(ICSApplicationDelegate *)self currentInCallScene];

    v4 = sub_100009960();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "There's an existing in-call scene, transitioning to full-screen overlay for ScreenTime", v7, 2u);
      }

      v6 = [(ICSApplicationDelegate *)self currentInCallScene];
      [v6 requestTransitionToPresentationMode:2 shouldDismissCMASAlerts:0];
    }

    else if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "While requesting a new scene for ScreenTime, hasActiveOrPendingInCallPresentation is YES but currentInCallScene is nil. This is likely because we already requested a scene, but it hasn't been created yet. The new scene should transition to full-screen overlay as soon as it connects.", buf, 2u);
    }
  }

  else
  {

    [(ICSApplicationDelegate *)self performPresentationForScreenTime];
  }
}

- (void)requestSpringBoardPresentationForCallDetailsView
{
  v3 = sub_100009960();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Activating InCallService user interface for call details view", v4, 2u);
  }

  if (![(ICSApplicationDelegate *)self hasActiveOrPendingInCallPresentation])
  {
    [(ICSApplicationDelegate *)self performDismissedPresentationForCallDetailsView];
  }
}

- (void)requestFullScreenSpringBoardPresentationForCallDetailsView
{
  v3 = sub_100009960();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Activating InCallService user interface, in fullscreen, for call details view", buf, 2u);
  }

  if ([(ICSApplicationDelegate *)self hasActiveOrPendingInCallPresentation])
  {
    v4 = sub_100009960();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Already have a scene, requesting scene to be presented FullScreen", v6, 2u);
    }

    v5 = [(ICSApplicationDelegate *)self currentInCallScene];
    [v5 requestTransitionToPresentationMode:2 shouldDismissCMASAlerts:0];
  }

  else
  {
    [(ICSApplicationDelegate *)self performFullScreenPresentationForCallDetailsView];
  }
}

- (void)transitionScenetoOverlayAndDismissCMASAlerts:(BOOL)a3
{
  v3 = [(ICSApplicationDelegate *)self currentInCallScene];
  v4 = [v3 presentationMode];

  if (v4 != 3)
  {
    TUDispatchMainIfNecessary();
  }
}

- (void)activateSpringBoardRemoteAlertForSOSCall
{
  v3 = sub_100009960();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Activating InCallService user interface for SOS call", v6, 2u);
  }

  v4 = [(ICSApplicationDelegate *)self springBoardRemoteAlertOptionsForSOSCall];
  v5 = +[NSBundle mainBundle];
  [v5 bundleIdentifier];
  SBSUIActivateRemoteAlert();
}

- (BOOL)shouldActivateSpringBoardRemoteAlertForCall:(id)a3
{
  v4 = a3;
  v5 = [(PHApplicationDelegate *)self featureFlags];
  v6 = [v5 avLessSharePlayEnabled];
  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  if (v7 == 1)
  {
    v8 = sub_100009960();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Suppressing showing scene for nil call", &v12, 2u);
    }
  }

  v9 = v7 ^ 1;
  if ([v4 isEmergency])
  {
    if (PHGetEmergencyDialerPresenceTokenValue())
    {
      if (([v4 isRTT] & 1) == 0 && (objc_msgSend(v4, "isTTY") & 1) == 0)
      {
        v10 = sub_100009960();
        v9 = 0;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138412290;
          v13 = v4;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "suppressing showing alert for call because it's an emergency call, the emergency dialer presence token is set, and call is not RTT/TTY: %@", &v12, 0xCu);
          v9 = 0;
        }
      }
    }
  }

  return v9;
}

- (id)springBoardRemoteAlertOptionsForCall:(id)a3 dialRequest:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableDictionary dictionary];
  v8 = TUInCallRemoteAlertViewControllerClassName();
  [v7 setObject:v8 forKeyedSubscript:SBSUIRemoteAlertOptionViewControllerClass];

  [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:SBSUIRemoteAlertOptionDismissWithHomeButton];
  if ([v5 status] != 4)
  {
    [v7 setObject:&off_10036A268 forKeyedSubscript:SBSUIRemoteAlertOptionSwipeDismissalStyle];
  }

  if ([v5 isVideo])
  {
    v9 = &__kCFBooleanFalse;
    [v7 setObject:&__kCFBooleanFalse forKeyedSubscript:SBSUIRemoteAlertOptionWantsWallpaperTunnel];
    v10 = &SBSUIRemoteAlertOptionHasTranslucentBackground;
  }

  else
  {
    [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:SBSUIRemoteAlertOptionWantsWallpaperTunnel];
    if (v6)
    {
      v11 = [v6 originatingUIType] == 1;
    }

    else
    {
      v11 = 0;
    }

    v12 = [NSNumber numberWithInt:v11];
    [v7 setObject:v12 forKeyedSubscript:SBSUIRemoteAlertOptionDisableFadeInAnimation];

    [v7 setObject:&off_10036A268 forKeyedSubscript:SBSUIRemoteAlertOptionDismissalAnimationStyle];
    v9 = &off_10036A280;
    v10 = &SBSUIRemoteAlertOptionInitialBackgroundStyle;
  }

  [v7 setObject:v9 forKeyedSubscript:*v10];
  v13 = [v7 copy];

  return v13;
}

- (id)springBoardRemoteAlertOptionsForSOSCall
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = TUInCallRemoteAlertViewControllerClassName();
  [v2 setObject:v3 forKeyedSubscript:SBSUIRemoteAlertOptionViewControllerClass];

  [v2 setObject:&__kCFBooleanFalse forKeyedSubscript:SBSUIRemoteAlertOptionDismissWithHomeButton];
  [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:SBSUIRemoteAlertOptionWantsWallpaperTunnel];
  [v2 setObject:&off_10036A268 forKeyedSubscript:SBSUIRemoteAlertOptionDismissalAnimationStyle];
  [v2 setObject:&off_10036A280 forKeyedSubscript:SBSUIRemoteAlertOptionInitialBackgroundStyle];
  [v2 setObject:&off_10036A268 forKeyedSubscript:SBSUIRemoteAlertOptionSwipeDismissalStyle];
  v4 = [v2 copy];

  return v4;
}

- (BOOL)shouldShowAirplaneEmergencyCallAlertForDialRequest:(id)a3
{
  v3 = a3;
  if (PHIsInAirplaneMode() && [v3 isValid] && (objc_msgSend(v3, "isSOS") & 1) == 0)
  {
    v6 = [v3 localSenderIdentityUUID];
    if ([TUCallCapabilities canAttemptEmergencyCallsWithoutCellularConnectionWithUUID:v6])
    {
      v4 = +[TUCallCapabilities supportsPrimaryCalling];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)shouldShowEmergencyCallbackModeAlertForDialRequest:(id)a3
{
  v4 = a3;
  if (+[PHDevice isGeminiCapable](PHDevice, "isGeminiCapable") && [v4 isValid] && (objc_msgSend(v4, "isSOS") & 1) == 0 && objc_msgSend(v4, "dialType") != 1)
  {
    v7 = [v4 handle];
    v8 = [v7 value];
    if ([v8 length])
    {
      v9 = [v4 provider];
      if ([v9 isTelephonyProvider])
      {
        v10 = [(ICSApplicationDelegate *)self senderIdentityClient];
        v11 = [v4 localSenderIdentityUUID];
        v5 = [v10 shouldShowEmergencyCallbackModeAlertForSenderIdentityUUID:v11];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldShowTelephonyAccountUnavailableAlertForDialRequest:(id)a3
{
  v3 = a3;
  if (+[PHDevice isGeminiCapable](PHDevice, "isGeminiCapable") && [v3 isValid] && (objc_msgSend(v3, "isSOS") & 1) == 0 && !objc_msgSend(v3, "dialType"))
  {
    v6 = [v3 provider];
    if ([v6 isTelephonyProvider])
    {
      v7 = [v3 provider];
      v8 = [v7 prioritizedSenderIdentities];
      if ([v8 count])
      {
        v9 = [v3 localSenderIdentityAccountUUID];
        if (v9)
        {
          v10 = [v3 localSenderIdentity];
          v11 = [v10 accountUUID];
          v12 = [v3 localSenderIdentityAccountUUID];
          v4 = [v11 isEqual:v12] ^ 1;
        }

        else
        {
          LOBYTE(v4) = 0;
        }
      }

      else
      {
        LOBYTE(v4) = 0;
      }
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)shouldShowRTTAlertForDialRequest:(id)a3
{
  v3 = a3;
  v4 = +[TUCallCenter sharedInstance];
  if ([v4 currentCallCount] || !objc_msgSend(v3, "isValid") || (objc_msgSend(v3, "isSOS") & 1) != 0)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v7 = [v3 handle];
    v8 = [v7 value];
    if ([v8 length])
    {
      v9 = [v3 provider];
      if ([v9 isTelephonyProvider] && !objc_msgSend(v3, "ttyType") && ((objc_msgSend(v3, "isRTTAvailable") & 1) != 0 || objc_msgSend(v3, "isTTYAvailable")))
      {
        v5 = [v3 shouldBypassRTTPrompt] ^ 1;
      }

      else
      {
        LOBYTE(v5) = 0;
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (BOOL)shouldShowScreenTimeAlertForDialRequest:(id)a3
{
  v3 = a3;
  v4 = +[TUCallCenter sharedInstance];
  v5 = [v4 callFilterController];
  if ([v5 shouldRestrictDialRequest:v3])
  {
    v6 = +[TUCallCenter sharedInstance];
    v7 = [v6 callFilterController];
    v8 = [v7 isRestrictedExclusivelyByScreenTimeForDialRequest:v3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)shouldShowScreenTimeAlertForJoinConversationRequest:(id)a3
{
  v3 = a3;
  v4 = +[TUCallCenter sharedInstance];
  v5 = [v4 callFilterController];
  v6 = [v5 shouldRestrictJoinConversationRequest:v3 performSynchronously:0];

  return v6;
}

- (BOOL)shouldActivateSOS
{
  v3 = [(ICSApplicationDelegate *)self activationContext];
  if (v3)
  {
    v4 = [(ICSApplicationDelegate *)self activationContext];
    v5 = [v4 reason];
    if ([v5 isEqualToString:SOSRemoteAlertActivationReasonActivatingForSOSWithClicks])
    {
      v6 = 1;
    }

    else
    {
      v7 = [(ICSApplicationDelegate *)self activationContext];
      v8 = [v7 reason];
      if ([v8 isEqualToString:SOSRemoteAlertActivationReasonActivatingForSOSWithKappa])
      {
        v6 = 1;
      }

      else
      {
        v9 = [(ICSApplicationDelegate *)self activationContext];
        v10 = [v9 reason];
        if ([v10 isEqualToString:SOSRemoteAlertActivationReasonActivatingForSOSAlertRestingScreen])
        {
          v6 = 1;
        }

        else
        {
          v11 = [(ICSApplicationDelegate *)self activationContext];
          v12 = [v11 reason];
          v6 = [v12 isEqualToString:SOSRemoteAlertActivationReasonActivatingForSOSWithVolumeLockHold];
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)startSOSFlowWithActivationReason:(id)a3
{
  v4 = a3;
  v5 = sub_10010D888();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting SOS flow with activation reason %@", &v11, 0xCu);
  }

  v6 = [[ICSActivationContext alloc] initWithReason:v4 userInfo:0];
  [(ICSApplicationDelegate *)self setActivationContext:v6];

  if ([v4 isEqualToString:SOSRemoteAlertActivationReasonActivatingForSOSAlertRestingScreen])
  {
    v7 = +[TUCallCenter sharedInstance];
    [v7 disconnectAllCallsWithNoPreflight];
    v8 = off_100359460;
    goto LABEL_10;
  }

  if (![(ICSApplicationDelegate *)self hasOngoingEmergencyCall])
  {
    v7 = +[TUCallCenter sharedInstance];
    [v7 disconnectAllCalls];
    v8 = off_100359418;
LABEL_10:

    [PHInCallRootViewController obtainDismissalAssertionForReason:*v8];
    if ([(ICSApplicationDelegate *)self isClarityBoardActive])
    {
      [(ICSApplicationDelegate *)self requestClarityBoardPresentation];
    }

    else
    {
      [(ICSApplicationDelegate *)self requestSpringBoardPresentationForSOS];
      [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHAudioCallViewControllerDismissalAssertionHandlingCallFailure"];
      [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHCallEndedBlockAndReportInProgressAssertionReason"];
      [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHMulitwayCallAssertionReason"];
      [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHAVLessConversationDetailsViewAssertionReason"];
      [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHAVLessConversationAssertionReason"];
      [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHInitialPTTFullScreenPresentationAssertionReason"];
      [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHPTTCallDetailsViewAssertionReason"];
    }

    goto LABEL_13;
  }

  v9 = sub_10010D888();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Cancelling SOS due to ongoing emergency call", &v11, 2u);
  }

  v10 = +[SOSStatusReporter sharedInstance];
  [v10 updateSOSFlowState:6];

LABEL_13:
}

- (BOOL)hasOngoingEmergencyCall
{
  v2 = [NSMutableArray alloc];
  v3 = +[TUCallCenter sharedInstance];
  v4 = [v3 currentCalls];
  v5 = [v2 initWithArray:v4];

  v6 = +[TUCallCenter sharedInstance];
  v7 = [v6 callsOnDefaultPairedDevice];
  [v5 addObjectsFromArray:v7];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (v12 && ([v12 isEmergency] & 1) != 0)
        {
          LOBYTE(v9) = 1;
          goto LABEL_12;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v9;
}

- (void)startScreenTimeFlowWithURL:(id)a3
{
  v4 = a3;
  v5 = sub_10010D80C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting ScreenTime flow with URL %@", buf, 0xCu);
  }

  v6 = [ICSActivationContext alloc];
  v7 = SOSRemoteAlertActivationReasonActivatingForScreenTime;
  v8 = [v4 absoluteString];
  v13 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v10 = [(ICSActivationContext *)v6 initWithReason:v7 userInfo:v9];

  v11 = [(ICSActivationContext *)v10 pendingRestrictedScreenTimeRequest];

  if (v11)
  {
    [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHScreenTimeAlertAssertionReason"];
    [(ICSApplicationDelegate *)self setActivationContext:v10];
    [(ICSApplicationDelegate *)self requestPresentationForScreenTime];
  }
}

- (void)updateDialRequestAccountIfNecessary:(id)a3
{
  v4 = a3;
  v5 = [v4 localSenderIdentityAccountUUID];
  v6 = [v5 UUIDString];

  if (v6)
  {
    v7 = [v4 localSenderIdentity];
    v8 = [v7 accountUUID];
    v9 = [v8 UUIDString];
    if ([v6 isEqualToString:v9])
    {

LABEL_15:
      goto LABEL_16;
    }

    v10 = [v4 provider];
    v11 = [v10 isTelephonyProvider];

    if (v11)
    {
      v12 = sub_100004F84();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] The localSenderIdentity and localSenderIdentityAccountUUID do not match for a telephony dial request, checking with the core telephony client", buf, 2u);
      }

      v16 = 0;
      v13 = [(ICSApplicationDelegate *)self getEvolvedSubscriptionLabelID:v6 error:&v16];
      v7 = v16;
      if (v13 && ([v13 isEqualToString:v6] & 1) == 0)
      {
        v14 = [[NSUUID alloc] initWithUUIDString:v13];
        v15 = sub_100004F84();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v18 = v4;
          v19 = 2112;
          v20 = v13;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] Updating dial request %@ with accountUUID: %@", buf, 0x16u);
        }

        [v4 setLocalSenderIdentityAccountUUID:v14];
      }

      else
      {
        v14 = sub_100004F84();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v18 = v6;
          v19 = 2112;
          v20 = v7;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] Failed to get an updated labelID for %@ with error %@", buf, 0x16u);
        }
      }

      goto LABEL_15;
    }
  }

LABEL_16:
}

- (BOOL)openThirdPartyDialRequest:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "openThirdPartyDialRequest %@", buf, 0xCu);
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100082E9C;
  v28[3] = &unk_100356988;
  v6 = v4;
  v29 = v6;
  v7 = objc_retainBlock(v28);
  if (![v6 showUIPrompt])
  {
    goto LABEL_11;
  }

  v8 = sub_100004F84();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Dial request's showUIPrompt is set to YES, so we will show an alert", buf, 2u);
  }

  objc_initWeak(buf, self);
  v9 = [TPDialPromptAlert alloc];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100082EF8;
  v25[3] = &unk_100357C50;
  objc_copyWeak(&v27, buf);
  v26 = v7;
  v10 = [v9 initWithDialRequest:v6 dialAction:v25];

  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);
  if (!v10)
  {
LABEL_11:
    (v7[2])(v7);
    v10 = 0;
LABEL_12:
    v13 = 1;
    goto LABEL_13;
  }

  v11 = [(ICSApplicationDelegate *)self currentAlert];

  if (!v11)
  {
    [(ICSApplicationDelegate *)self acquireLongPreventSuspensionAssertion];
    [(ICSApplicationDelegate *)self setCurrentAlert:v10];
    v15 = [(ICSApplicationDelegate *)self lastAlertPresentation];

    if (v15)
    {
      v16 = [(ICSApplicationDelegate *)self lastAlertPresentation];
      v17 = +[NSDate now];
      [v16 timeIntervalSinceDate:v17];
      v19 = v18;

      if (v19 > 1.0)
      {
        v20 = 0;
      }

      else
      {
        v20 = 1000000000;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = dispatch_time(0, v20);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100083000;
    block[3] = &unk_100357110;
    v10 = v10;
    v23 = v10;
    v24 = self;
    dispatch_after(v21, &_dispatch_main_q, block);

    goto LABEL_12;
  }

  v12 = sub_100004F84();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] Dial request UI is already showing another alert, will drop dialRequest requiring alert %@", buf, 0xCu);
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (BOOL)openSystemProviderDialRequest:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v172 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "openSystemProviderDialRequest %@", buf, 0xCu);
  }

  [ICSAriadne trace:2];
  [(ICSApplicationDelegate *)self updateDialRequestAccountIfNecessary:v4];
  v168[0] = _NSConcreteStackBlock;
  v168[1] = 3221225472;
  v168[2] = sub_10008423C;
  v168[3] = &unk_1003569B0;
  v6 = v4;
  v169 = v6;
  v7 = objc_retainBlock(v168);
  v8 = [v6 provider];
  if (![v8 isTelephonyProvider])
  {
    goto LABEL_13;
  }

  v9 = MGGetBoolAnswer();

  if (!v9)
  {
LABEL_14:
    if (+[SOSUtilities shouldBlockNonEmergencyCalls])
    {
      v18 = +[TUCallCenter sharedInstance];
      v19 = [v18 _isEmergencyDialRequest:v6];

      if ((v19 & 1) == 0)
      {
        v46 = sub_100004F84();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Dial request rejected due to SOS being active", buf, 2u);
        }

        (v7[2])(v7, 0);
        goto LABEL_31;
      }
    }

    v20 = +[TUCallCenter sharedInstance];
    v21 = [v20 frontmostCall];

    if (v21 && [v21 isEmergency])
    {
      v22 = sub_100004F84();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Dial request rejected due to active emergency call", buf, 2u);
      }

      goto LABEL_27;
    }

    if (!v6)
    {
LABEL_27:
      (v7[2])(v7, 0);
      v45 = 0;
LABEL_72:

      goto LABEL_73;
    }

    v23 = [(ICSApplicationDelegate *)self senderIdentityClient];
    v24 = [v6 dialRequestByResolvingDialTypeUsingSenderIdentityClient:v23];

    v164[0] = _NSConcreteStackBlock;
    v164[1] = 3221225472;
    v164[2] = sub_1000843B0;
    v164[3] = &unk_100357C78;
    v25 = v24;
    v165 = v25;
    v166 = self;
    v26 = v7;
    v167 = v26;
    v27 = objc_retainBlock(v164);
    v160[0] = _NSConcreteStackBlock;
    v160[1] = 3221225472;
    v160[2] = sub_100084444;
    v160[3] = &unk_100357C78;
    v28 = v25;
    v161 = v28;
    v162 = self;
    v29 = v26;
    v163 = v29;
    v30 = objc_retainBlock(v160);
    v156[0] = _NSConcreteStackBlock;
    v156[1] = 3221225472;
    v156[2] = sub_1000846A8;
    v156[3] = &unk_100357CF0;
    v31 = v28;
    v157 = v31;
    v32 = v27;
    v158 = v32;
    v33 = v29;
    v159 = v33;
    v152[0] = _NSConcreteStackBlock;
    v152[1] = 3221225472;
    v152[2] = sub_100084A50;
    v152[3] = &unk_100357D40;
    v152[4] = self;
    v34 = objc_retainBlock(v156);
    v153 = v34;
    v35 = v32;
    v154 = v35;
    v36 = v33;
    v155 = v36;
    v37 = objc_retainBlock(v152);
    v144[0] = _NSConcreteStackBlock;
    v144[1] = 3221225472;
    v144[2] = sub_100084C44;
    v144[3] = &unk_100357D90;
    v6 = v31;
    v145 = v6;
    v146 = self;
    v119 = v37;
    v147 = v119;
    v38 = v30;
    v148 = v38;
    v39 = v34;
    v149 = v39;
    v40 = v35;
    v150 = v40;
    v118 = v36;
    v151 = v118;
    v41 = objc_retainBlock(v144);
    v120 = v40;
    if ([v6 dialType] == 1 && -[ICSApplicationDelegate shouldShowAirplaneEmergencyCallAlertForDialRequest:](self, "shouldShowAirplaneEmergencyCallAlertForDialRequest:", v6))
    {
      v42 = sub_100004F84();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Device is in airplane mode. Showing airplane mode emergency call alert", buf, 2u);
      }

      v43 = [PHAirplaneEmergencyCallAlert alloc];
      v139[0] = _NSConcreteStackBlock;
      v139[1] = 3221225472;
      v139[2] = sub_100084F28;
      v139[3] = &unk_100357DB8;
      v139[4] = self;
      v140 = v6;
      v141 = v39;
      v142 = v40;
      v143 = v118;
      v44 = [(PHAirplaneEmergencyCallAlert *)v43 initWithDialAction:v139];

      goto LABEL_51;
    }

    if ((PHShouldAttemptCallWithDialRequest() & 1) == 0)
    {
      v117 = v7;
      v60 = v21;
      v61 = v41;
      v62 = v39;
      v63 = v38;
      v64 = sub_100004F84();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        sub_100254E60();
      }

      (v118[2])(v118, 0);
      v65 = [v6 provider];
      v66 = [v6 dialType];
      v67 = [v6 localSenderIdentityUUID];
      v44 = [PHNetworkUnavailableAlert alertWithCallProvider:v65 dialType:v66 senderIdentityUUID:v67];

      v38 = v63;
      v39 = v62;
      v41 = v61;
      v21 = v60;
      v7 = v117;
      goto LABEL_51;
    }

    v116 = v38;
    v47 = [v6 provider];
    v48 = [v47 isFaceTimeProvider];

    if (v48)
    {
      v111 = v39;
      v49 = sub_100004F84();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Provider is FaceTime. Make sure we can initiate calls", buf, 2u);
      }

      v50 = +[IMAccountController sharedInstance];
      v51 = +[IMService facetimeService];
      v52 = [v50 accountsForService:v51];

      v53 = v52;
      if ([v52 count])
      {
        v109 = v41;
        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v54 = v52;
        v55 = [v54 countByEnumeratingWithState:&v135 objects:v170 count:16];
        if (v55)
        {
          v56 = v55;
          v57 = *v136;
          while (2)
          {
            for (i = 0; i != v56; i = i + 1)
            {
              if (*v136 != v57)
              {
                objc_enumerationMutation(v54);
              }

              if ([*(*(&v135 + 1) + 8 * i) canSendMessages])
              {

                v68 = sub_100004F84();
                if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "At least one account can initiate calls for open dial request", buf, 2u);
                }

                v40 = v120;
                v41 = v109;
                v53 = v52;
                goto LABEL_58;
              }
            }

            v56 = [v54 countByEnumeratingWithState:&v135 objects:v170 count:16];
            if (v56)
            {
              continue;
            }

            break;
          }
        }

        v59 = sub_100004F84();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          sub_100254E9C();
        }

        (v118[2])(v118, 0);
        v44 = objc_alloc_init(PHMisconfiguredAccountAlert);

        v39 = v111;
        v38 = v116;
        v41 = v109;
LABEL_51:
        if (!v44)
        {
LABEL_70:
          v69 = v119;
          goto LABEL_71;
        }

LABEL_52:
        [(ICSApplicationDelegate *)self acquireLongPreventSuspensionAssertion];
        [(PHMisconfiguredAccountAlert *)v44 show];
        goto LABEL_70;
      }

      v68 = sub_100004F84();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "No accounts found when attempting to open dial request", buf, 2u);
      }

LABEL_58:
      v39 = v111;
    }

    if ([(ICSApplicationDelegate *)self shouldShowTelephonyAccountUnavailableAlertForDialRequest:v6])
    {
      [(ICSApplicationDelegate *)self acquireLongPreventSuspensionAssertion];
      (v41[2])(v41);
      goto LABEL_61;
    }

    v38 = v116;
    if ([(ICSApplicationDelegate *)self shouldShowEmergencyCallbackModeAlertForDialRequest:v6])
    {
      [(ICSApplicationDelegate *)self acquireLongPreventSuspensionAssertion];
      v69 = v119;
      (v119[2])(v119, v6);
      v44 = 0;
LABEL_71:

      v45 = 1;
      goto LABEL_72;
    }

    if ([(ICSApplicationDelegate *)self shouldShowScreenTimeAlertForDialRequest:v6])
    {
      v116[2](v116);
      goto LABEL_69;
    }

    if ([(ICSApplicationDelegate *)self shouldShowRTTAlertForDialRequest:v6])
    {
      v39[2](v39);
      goto LABEL_69;
    }

    if ([v6 showUIPrompt])
    {
      v71 = sub_100004F84();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "Dial request's showUIPrompt is set to YES, so we will show an alert", buf, 2u);
      }

      v72 = [(PHApplicationDelegate *)self featureFlags];
      v73 = [v72 simLinePickerEnabled];

      v110 = v41;
      if (v73)
      {
        v112 = +[TUCallCenter sharedInstance];
        v107 = [v112 providerManager];
        v74 = [v107 telephonyProvider];
        v75 = [v74 prioritizedSenderIdentities];
        v76 = [v75 array];
        v77 = [v76 copy];

        if (v77)
        {
          v78 = v120;
          if ([v77 count] >= 2)
          {
            v113 = [TPDialPromptAlert alloc];
            v130[0] = _NSConcreteStackBlock;
            v130[1] = 3221225472;
            v130[2] = sub_100084FE8;
            v130[3] = &unk_100357DE0;
            v79 = &v131;
            v80 = v6;
            v131 = v80;
            v81 = v77;
            v82 = &v132;
            v83 = v81;
            v132 = v83;
            v133 = v120;
            v134 = v118;
            v84 = v113;
            v114 = v83;
            v85 = [v84 initWithDialRequest:v80 dialAction:v130 availableSenderIdentities:v83];

            goto LABEL_93;
          }

          v114 = v77;
LABEL_92:
          v97 = [TPDialPromptAlert alloc];
          v127[0] = _NSConcreteStackBlock;
          v127[1] = 3221225472;
          v127[2] = sub_100085130;
          v127[3] = &unk_100357E08;
          v79 = &v128;
          v128 = v78;
          v82 = &v129;
          v129 = v118;
          v85 = [v97 initWithDialRequest:v6 dialAction:v127];
LABEL_93:

          v41 = v110;
          if (v85)
          {
            [(ICSApplicationDelegate *)self acquireLongPreventSuspensionAssertion];
            v121[0] = _NSConcreteStackBlock;
            v121[1] = 3221225472;
            v121[2] = sub_1000852E8;
            v121[3] = &unk_100357E30;
            v44 = v85;
            v122 = v44;
            v123 = v118;
            v98 = objc_retainBlock(v121);
            v99 = +[PHInCallUtilities sharedInstance];
            [v99 requestPasscodeUnlockWithCompletion:v98];

            goto LABEL_62;
          }

LABEL_61:
          v44 = 0;
LABEL_62:
          v38 = v116;
          goto LABEL_70;
        }

        v78 = v120;
      }

      else
      {
        v78 = v40;
      }

      v114 = 0;
      goto LABEL_92;
    }

    v86 = [(ICSApplicationDelegate *)self alertCoordinator];

    if (!v86)
    {
      v87 = objc_alloc_init(_TtC13InCallService16AlertCoordinator);
      [(ICSApplicationDelegate *)self setAlertCoordinator:v87];

      v88 = [(ICSApplicationDelegate *)self alertCoordinator];
      [v88 startMonitoring];

      v86 = 0;
    }

    v115 = [(ICSApplicationDelegate *)self alertCoordinator];
    v106 = [v115 isStewieActive];
    if (v106)
    {
      v108 = v86;
      v89 = +[TUCallCenter sharedInstance];
      v90 = [v89 _isEmergencyDialRequest:v6];

      if (!v90)
      {
        v44 = 0;
        LOBYTE(v106) = 0;
        v38 = v116;
        v86 = v108;
        goto LABEL_99;
      }

      v91 = [v6 handle];
      v92 = [v91 value];
      v93 = [v92 formattedDisplayID];

      v94 = +[NSBundle mainBundle];
      v95 = v94;
      v115 = v93;
      if (v93)
      {
        v96 = [v94 localizedStringForKey:@"ALERT_ACTION_END_STEWIE_AND_CALL_%@" value:&stru_100361FD0 table:@"Localizable-Stewie"];
        [NSString stringWithFormat:v96, v93];
      }

      else
      {
        v96 = [v94 localizedStringForKey:@"ALERT_ACTION_END_STEWIE_AND_CALL" value:&stru_100361FD0 table:@"Localizable-Stewie"];
        [NSString stringWithFormat:v96, v104];
      }
      v105 = ;

      v124[0] = _NSConcreteStackBlock;
      v124[1] = 3221225472;
      v124[2] = sub_10008520C;
      v124[3] = &unk_100357E08;
      v125 = v120;
      v126 = v118;
      v100 = +[NSBundle mainBundle];
      v101 = [v100 localizedStringForKey:@"ALERT_TITLE_END_STEWIE" value:&stru_100361FD0 table:@"Localizable-Stewie"];
      v44 = [PHEmergencyEndCallAlert alertWithDialRequest:v6 dialAction:v124 title:v101 buttonTitle:v105];

      v38 = v116;
      v86 = v108;
    }

    else
    {
      v44 = 0;
    }

LABEL_99:
    if (!v86)
    {
      v102 = [(ICSApplicationDelegate *)self alertCoordinator];

      if (v102)
      {
        v103 = sub_100004F84();
        if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "clean AlertCoordinator", buf, 2u);
        }

        [(ICSApplicationDelegate *)self setAlertCoordinator:0];
      }
    }

    if (v44)
    {
      goto LABEL_52;
    }

    if ((v106 & 1) == 0)
    {
      v120[2](v120);
    }

LABEL_69:
    v44 = 0;
    goto LABEL_70;
  }

  v8 = +[NSCharacterSet pn_verticalServiceCharacterSet];
  v10 = [v6 handle];
  v11 = [v10 value];
  v12 = [v11 rangeOfCharacterFromSet:v8];

  v13 = [v6 processHandle];
  v14 = [v6 handle];
  v15 = [v14 value];
  if (![v15 length] || v12 == 0x7FFFFFFFFFFFFFFFLL)
  {

    goto LABEL_12;
  }

  v16 = [(ICSApplicationDelegate *)self shouldShowPromptForProcessHandle:v13];

  if (!v16)
  {
LABEL_12:

LABEL_13:
    goto LABEL_14;
  }

  v17 = sub_100004F84();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v172 = v13;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Vertical service code cannot be dialed for process handle %@", buf, 0xCu);
  }

  (v7[2])(v7, 0);
LABEL_31:
  v45 = 0;
LABEL_73:

  return v45;
}

- (BOOL)openJoinConversationRequest:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Opening %@", &buf, 0xCu);
  }

  [ICSAriadne trace:1];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v49 = 0x3032000000;
  v50 = sub_100079AD4;
  v51 = sub_100079AE4;
  v52 = 0;
  v6 = +[TUCallCenter sharedInstance];
  v7 = [v6 providerManager];
  v8 = [v7 faceTimeProvider];

  v9 = [(ICSApplicationDelegate *)self shouldShowScreenTimeAlertForJoinConversationRequest:v4];
  if (v9)
  {
    v10 = sub_100004F84();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v40[0]) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to initiate a call, restricted by Screen Time.", v40, 2u);
    }

    v11 = +[ICSPreferences sharedPreferences];
    v12 = [v11 hasAdoptedModernInCallAPI];

    if (v12)
    {
      v13 = [v4 URL];
      [(ICSApplicationDelegate *)self startScreenTimeFlowWithURL:v13];
    }

    else
    {
      v28 = +[SOSInCallUILauncher sharedInCallUILauncher];
      v29 = [v4 URL];
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_1000859F8;
      v45[3] = &unk_100357CA0;
      v46 = &stru_100357E50;
      [v28 launchInCallUIForReason:3 withRequestURL:v29 completion:v45];

      v13 = v46;
    }

    goto LABEL_36;
  }

  if ((PHShouldAttemptFaceTimeCall() & 1) == 0)
  {
    v14 = sub_100004F84();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100254E60();
    }

    v15 = [PHNetworkUnavailableAlert alertWithCallProvider:v8 dialType:0 senderIdentityUUID:0];
    v16 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v15;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, TUCallCenterInCallServiceDialRequestFailureNotification, 0, 0, 1u);
  }

  v18 = +[IMAccountController sharedInstance];
  v19 = +[IMService facetimeService];
  v13 = [v18 accountsForService:v19];

  if ([v13 count])
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v20 = v13;
    v21 = [v20 countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (!v21)
    {
LABEL_21:

      v24 = sub_100004F84();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100254ED8();
      }

      v25 = objc_alloc_init(PHMisconfiguredAccountAlert);
      v26 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v25;

      v27 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(v27, TUCallCenterInCallServiceDialRequestFailureNotification, 0, 0, 1u);
      goto LABEL_28;
    }

    v22 = *v42;
LABEL_15:
    v23 = 0;
    while (1)
    {
      if (*v42 != v22)
      {
        objc_enumerationMutation(v20);
      }

      if ([*(*(&v41 + 1) + 8 * v23) canSendMessages])
      {
        break;
      }

      if (v21 == ++v23)
      {
        v21 = [v20 countByEnumeratingWithState:&v41 objects:v47 count:16];
        if (v21)
        {
          goto LABEL_15;
        }

        goto LABEL_21;
      }
    }
  }

  else
  {
    v20 = sub_100004F84();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v40[0]) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "No accounts found when attempting to join conversation", v40, 2u);
    }
  }

LABEL_28:
  if (!*(*(&buf + 1) + 40) && [v4 showUIPrompt])
  {
    v30 = sub_100004F84();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v40[0]) = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Join request's showUIPrompt is set to YES, so we will show an alert", v40, 2u);
    }

    objc_initWeak(v40, self);
    v31 = [TPDialPromptAlert alloc];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100085AB8;
    v37[3] = &unk_100357E78;
    objc_copyWeak(&v39, v40);
    v38 = v4;
    v32 = [v31 initWithJoinRequest:v38 dialAction:v37];
    v33 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v32;

    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100085B98;
    v36[3] = &unk_1003576A8;
    v36[4] = &buf;
    [(ICSApplicationDelegate *)self setProcessAssertionCompletion:v36];
    [(ICSApplicationDelegate *)self acquireLongPreventSuspensionAssertion];

    objc_destroyWeak(&v39);
    objc_destroyWeak(v40);
  }

  v34 = *(*(&buf + 1) + 40);
  if (v34)
  {
    [v34 show];
  }

  else
  {
    [(ICSApplicationDelegate *)self setProcessAssertionCompletion:0];
    [(ICSApplicationDelegate *)self showOrCreateCallForConversationRequest:v4];
  }

LABEL_36:

  _Block_object_dispose(&buf, 8);
  return v9 ^ 1;
}

- (BOOL)openDialRequest:(id)a3 forProcessHandle:(id)a4 bypassUIPromptIfDefaultProvider:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  [(ICSApplicationDelegate *)self configureDialRequest:v8 forProcessHandle:v9 bypassUIPromptIfDefaultProvider:v5];
  v10 = sub_100004F84();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Initiating dial request %@ for process handle %@.", &v16, 0x16u);
  }

  v11 = [v8 provider];
  v12 = [v11 isSystemProvider];

  if (v12)
  {
    v13 = [(ICSApplicationDelegate *)self openSystemProviderDialRequest:v8];
  }

  else
  {
    v13 = [(ICSApplicationDelegate *)self openThirdPartyDialRequest:v8];
  }

  v14 = v13;

  return v14;
}

- (BOOL)openUserInterfaceURL:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    v26 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "'%@'", &v25, 0xCu);
  }

  v6 = +[TUCallCenter sharedInstance];
  v7 = [v6 frontmostAudioOrVideoCall];

  if (!v7)
  {
    v8 = +[TUCallCenter sharedInstance];
    [v8 fetchCurrentCalls];

    v9 = +[TUCallCenter sharedInstance];
    v7 = [v9 frontmostAudioOrVideoCall];
  }

  v10 = +[TUCallCenter sharedInstance];
  v11 = [v10 frontmostBargeCall];

  v12 = [v7 provider];
  if ([v12 supportsDynamicSystemUI])
  {
    v13 = [(PHApplicationDelegate *)self featureFlags];
    if ([v13 groupConversations])
    {
      v14 = TUDeviceHasChinaSKU() ^ 1;
    }

    else
    {
      LOBYTE(v14) = 1;
    }
  }

  else
  {
    LOBYTE(v14) = 1;
  }

  v15 = [(ICSApplicationDelegate *)self shouldActivateSpringBoardRemoteAlertForCall:v7];
  if ([v4 isShowCarPlayInCallUIURL])
  {
    v16 = 1;
    [(ICSApplicationDelegate *)self showCarPlayUIWithActivation:1];
    goto LABEL_39;
  }

  if (!((v7 == 0) | v14 & 1))
  {
    [(ICSApplicationDelegate *)self requestGreenTea3PPresentationForCall:v7];
LABEL_38:
    v16 = 1;
    goto LABEL_39;
  }

  if (v7 && ((v15 ^ 1) & 1) == 0)
  {
    v17 = [v7 isScreening];
    if ([v7 receptionistState] == 7)
    {
      v18 = 0;
      if (!v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v18 = [v7 receptionistState] != 0;
      if (!v17)
      {
        goto LABEL_28;
      }
    }

    if (!v18 && ([v7 isWaitOnHoldActive] & 1) == 0)
    {
      v20 = [v4 isShowInCallUIURL];
LABEL_37:
      [(ICSApplicationDelegate *)self requestSpringBoardPresentationForCall:v7 dialRequest:0 tappedPill:v20];
      goto LABEL_38;
    }

LABEL_28:
    v19 = +[UIDevice currentDevice];
    if ([v19 userInterfaceIdiom] == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = [v4 isShowInCallUIURL];
    }

    goto LABEL_37;
  }

  if (!v7 && [v4 isShowHandoffEligibleNearbyURL])
  {
    [(ICSApplicationDelegate *)self requestHandoffEligibleConversationPresentation];
    goto LABEL_38;
  }

  if ([v4 isShowLagunaPullConversationURL])
  {
    [(ICSApplicationDelegate *)self requestLagunaPullConversationPresentation];
    goto LABEL_38;
  }

  if (!v7 && v11)
  {
    if ([v4 isShowIncomingTransmissionNoticeURL])
    {
      v21 = 2;
    }

    else if ([v4 isShowAccessoryButtonEventsNoticeURL])
    {
      v21 = 3;
    }

    else
    {
      v21 = 1;
    }

    [(ICSApplicationDelegate *)self requestPTTPresentation:v21 forCall:v11];
    goto LABEL_38;
  }

  v24 = sub_100009960();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_100254F14(v24);
  }

  v16 = 0;
LABEL_39:
  if ([v4 isShowKeypadURL])
  {
    v22 = [(ICSApplicationDelegate *)self sceneManager];
    [v22 waitForRegistrationOfSceneWithType:0 completion:&stru_100357E98];
  }

  return v16;
}

- (BOOL)openVideoMessagePlaybackURL:(id)a3
{
  v4 = a3;
  v5 = [(PHApplicationDelegate *)self featureFlags];
  v6 = [v5 videoMessagingEnabled];

  v7 = sub_100004F84();
  v8 = v7;
  if ((v6 & 1) == 0)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100254FE8();
    }

    goto LABEL_13;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Opening video message playback URL '%@'", buf, 0xCu);
  }

  v8 = [v4 videoMessageUUID];
  if (!v8)
  {
    v15 = sub_100004F84();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100255024();
    }

LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  v9 = [(ICSApplicationDelegate *)self messageStoreClient];
  v10 = v9 == 0;

  if (v10)
  {
    v11 = objc_alloc_init(ICSMessageStoreClient);
    [(ICSApplicationDelegate *)self setMessageStoreClient:v11];
  }

  objc_initWeak(buf, self);
  v12 = [(ICSApplicationDelegate *)self messageStoreClient];
  v13 = [v4 videoMessageUUID];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000863B4;
  v17[3] = &unk_100357EC0;
  objc_copyWeak(&v19, buf);
  v8 = v8;
  v18 = v8;
  [v12 urlForVideoMessageWithUUID:v13 completionHandler:v17];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
  v14 = 1;
LABEL_14:

  return v14;
}

- (void)performPresentationForVideoMessage
{
  v3 = [SBSInCallPresentationConfiguration alloc];
  v4 = [v3 initWithSceneBundleIdentifier:TUBundleIdentifierInCallServiceApplication];
  [v4 setShouldDismissCMASAlerts:0];
  [v4 setPreferredPresentationMode:2];
  [v4 setShouldPreferContinuityDisplayForFullScreenPresentation:0];
  [(ICSApplicationDelegate *)self performPresentationWithConfiguration:v4 forSceneType:4];
}

- (void)acquirePreventSuspensionAssertionForDuration:(double)a3
{
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asked to acquire temporary prevent suspension assertion", &v16, 2u);
  }

  v6 = [(ICSApplicationDelegate *)self processAssertion];

  if (v6)
  {
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(ICSApplicationDelegate *)self processAssertion];
      v16 = 138412290;
      v17 = v8;
      v9 = "There's already an existing temporary prevent suspension assertion: %@";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, &v16, 0xCu);

      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v10 = [BKSProcessAssertion alloc];
  v11 = [v10 initWithBundleIdentifier:TUBundleIdentifierInCallServiceApplication flags:15 reason:4 name:@"InCallServicePreventSuspensionAssertion"];
  [(ICSApplicationDelegate *)self setProcessAssertion:v11];

  v12 = [(ICSApplicationDelegate *)self processAssertion];
  [v12 acquire];

  v13 = [(ICSApplicationDelegate *)self processAssertion];
  v14 = [v13 valid];

  v15 = sub_100004F84();
  v7 = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(ICSApplicationDelegate *)self processAssertion];
      v16 = 138412290;
      v17 = v8;
      v9 = "Acquired temporary prevent suspension assertion: %@";
      goto LABEL_9;
    }

LABEL_10:

    [(ICSApplicationDelegate *)self startOrResetTimerForDuration:a3];
    return;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_1002550DC(self, v7);
  }
}

- (void)invalidatePreventSuspensionAssertion
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(ICSApplicationDelegate *)self processAssertion];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating temporary prevent suspension assertion: %@", &v6, 0xCu);
  }

  v5 = [(ICSApplicationDelegate *)self processAssertion];
  [v5 invalidate];

  [(ICSApplicationDelegate *)self setProcessAssertion:0];
}

- (void)startOrResetTimerForDuration:(double)a3
{
  v5 = [(ICSApplicationDelegate *)self processAssertionTimer];

  if (v5)
  {
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "We have an existing timer -- invalidate and reschedule the invalidation", buf, 2u);
    }

    v7 = [(ICSApplicationDelegate *)self processAssertionTimer];
    [v7 invalidate];
  }

  objc_initWeak(&location, self);
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000869F0;
  v14 = &unk_100356CE8;
  objc_copyWeak(&v15, &location);
  v8 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v11 block:a3];
  [(ICSApplicationDelegate *)self setProcessAssertionTimer:v8, v11, v12, v13, v14];

  v9 = sub_100004F84();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(ICSApplicationDelegate *)self processAssertionTimer];
    *buf = 138412290;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Scheduled prevent suspension invalidation timer: %@", buf, 0xCu);
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (BOOL)showSystemCallControlsURL:(id)a3
{
  v4 = a3;
  v5 = sub_10010D6C4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Requested system call controls with URL: '%{public}@'", buf, 0xCu);
  }

  v6 = [(ICSApplicationDelegate *)self sceneManager];
  v7 = [v6 callScene];

  if (v7)
  {
    if ([(ICSApplicationDelegate *)self hasExistingFullScreenInCallScene])
    {
      v8 = sub_100009960();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "System call controls requested via URL while a call is full-screen, assuming the status bar was tapped", buf, 2u);
      }

      v9 = +[NSNotificationCenter defaultCenter];
      [v9 postNotificationName:@"ICSStatusBarTappedNotification" object:0];

      goto LABEL_22;
    }

LABEL_14:
    [(ICSApplicationDelegate *)self showCallControlsForCurrentContext];
LABEL_22:
    v17 = 1;
    goto LABEL_23;
  }

  v10 = sub_10010D6C4();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Requested to show system call controls using URL scheme; callScene is nil, will request new call scene", buf, 2u);
  }

  v11 = [(ICSApplicationDelegate *)self bannerPresentationManager];
  v12 = [v11 hasAssociatedCall];

  if (v12)
  {
    v13 = [(ICSApplicationDelegate *)self bannerPresentationManager];
    v14 = [v13 wantsBannerWithoutScene];

    if (!v14)
    {
      objc_initWeak(buf, self);
      v18 = sub_10010D6C4();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Presenting system call controls by creating call scene since one didn't exist before", v25, 2u);
      }

      v19 = [(ICSApplicationDelegate *)self bannerPresentationManager];
      v20 = [v19 activeCall];
      [(ICSApplicationDelegate *)self requestPresentationForCall:v20 dialRequest:0];

      v21 = [(ICSApplicationDelegate *)self sceneManager];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100086E44;
      v23[3] = &unk_100357EE8;
      objc_copyWeak(&v24, buf);
      [v21 waitForRegistrationOfSceneWithType:0 completion:v23];

      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
      goto LABEL_22;
    }

    v15 = sub_10010D6C4();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Banner tracking placeholder call for conversation, do not create scene", buf, 2u);
    }

    goto LABEL_14;
  }

  v16 = sub_10010D6C4();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_100255170();
  }

  v17 = 0;
LABEL_23:

  return v17;
}

- (void)showCallControlsForCurrentContext
{
  v3 = [(ICSApplicationDelegate *)self sceneManager];
  v4 = [v3 callScene];

  v5 = [v4 systemControlsShouldPresentAsEmbedded];
  v6 = [v4 presentationMode];
  v7 = sub_10010D6C4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = SBSInCallPresentationModeDescription();
    v10 = v9;
    v11 = @"NO";
    *buf = 138543874;
    v34 = v4;
    if (v5)
    {
      v11 = @"YES";
    }

    v35 = 2114;
    v36 = v9;
    v37 = 2112;
    v38 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Requested to show system call controls for the current context; callScene=%{public}@ presentationMode=%{public}@; shouldShowInCallControls:%@", buf, 0x20u);
  }

  if (v5)
  {
    if (v6 == 2)
    {
      v12 = [(ICSApplicationDelegate *)self bannerPresentationManager];
      [v12 showInCallHUD];
    }

    else
    {
      v16 = sub_10010D6C4();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Presenting call controls by taking Call scene full-screen since the scene wants embedded controls and the scene isn't full-screen", buf, 2u);
      }

      objc_initWeak(buf, self);
      v27 = _NSConcreteStackBlock;
      v28 = 3221225472;
      v29 = sub_1000872D0;
      v30 = &unk_100357F10;
      v31 = v4;
      objc_copyWeak(&v32, buf);
      v17 = objc_retainBlock(&v27);
      v18 = [PHPIPController defaultPIPController:v27];
      v19 = [v18 pipState] == 2;

      if (v19)
      {
        v20 = +[PHPIPController defaultPIPController];
        [v20 manuallyStopPIPWithCompletion:v17];
      }

      else
      {
        (v17[2])(v17);
      }

      objc_destroyWeak(&v32);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v13 = [(PHApplicationDelegate *)self features];
    v14 = [v13 isSystemApertureEnabled];

    if (v14)
    {
      v15 = sub_100004F84();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Ignoring request to show system HUD, because the HUD lifecycle on this device is managed by SpringBoard", buf, 2u);
      }
    }

    else
    {
      v21 = [(PHApplicationDelegate *)self features];
      v22 = [v21 isIncomingCallBannerEnabled];

      v23 = sub_10010D6C4();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      if (v22)
      {
        if (v24)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Presenting call controls banner for current context", buf, 2u);
        }

        v25 = [(ICSApplicationDelegate *)self bannerPresentationManager];
        [v25 presentHUDForCurrentContext];
      }

      else
      {
        if (v24)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Presenting system call controls banner", buf, 2u);
        }

        v26 = [(ICSApplicationDelegate *)self bannerPresentationManager];
        [v26 presentSystemHUD];
      }
    }
  }
}

- (BOOL)showScreenSharingURL:(id)a3
{
  v4 = a3;
  v5 = sub_1000314C4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "User requested launching Screen Sharing full screen after potential unlock with URL: %@", &v16, 0xCu);
  }

  v6 = [(PHApplicationDelegate *)self featureFlags];
  v7 = [v6 supportsScreenSharing];

  if ((v7 & 1) == 0)
  {
    v11 = sub_1000314C4();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1002551AC();
    }

    goto LABEL_9;
  }

  v8 = [(CNKScreenSharingStateMonitorFactory *)self->_screenSharingMonitorFactory sharedMonitor];
  v9 = [v8 isBroadcastingScreenSharing];

  if (v9)
  {
    v10 = sub_1000314C4();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not presenting screen sharing scene because this device is the one sharing its screen", &v16, 2u);
    }

LABEL_9:
    v12 = 0;
    goto LABEL_14;
  }

  v13 = [(ICSApplicationDelegate *)self sceneManager];
  v14 = [v13 screenSharingScene];

  if (v14)
  {
    [v14 requestTransitionToPresentationMode:2 isUserInitiated:1 analyticsSource:0];
  }

  else
  {
    [(ICSApplicationDelegate *)self requestSpringBoardPresentationForScreenSharingAsPiP:0];
  }

  v12 = 1;
LABEL_14:

  return v12;
}

- (BOOL)updateForegroundAppURL:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "'%@'", &v9, 0xCu);
  }

  v6 = [(ICSApplicationDelegate *)self bannerPresentationManager];
  v7 = [(ICSApplicationDelegate *)self updateForegroundAppURL:v4 using:v6];

  return v7;
}

- (BOOL)handleBackgroundLaunchURL:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "'%@'", &v9, 0xCu);
  }

  v6 = +[TUCallCenter sharedInstance];
  v7 = [v6 frontmostCall];

  if ([v7 isEmergency] && objc_msgSend(v7, "supportsEmergencyFallback"))
  {
    [(ICSApplicationDelegate *)self handleSupportsEmergencyFallbackChangedForCall:v7];
  }

  return 1;
}

- (BOOL)refreshShareableContentURL:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "'%@'", &v9, 0xCu);
  }

  v6 = [v4 foregroundAppBundleIdentifier];
  v7 = [(ICSApplicationDelegate *)self bannerPresentationManager];
  [v7 refreshShareableContentWithBundleIdentifier:v6];

  return 1;
}

- (void)handleHeadsetButtonPressForCall:(id)a3 sourceIdentifier:(id)a4 urlOptions:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 objectForKey:_UIApplicationOpenURLOptionsSourceProcessHandleKey];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(ICSApplicationDelegate *)self canModifyCallsForProcessHandle:v11])
  {
    [(ICSApplicationDelegate *)self handleHeadsetButtonPressForCall:v8 sourceIdentifier:v9];
  }

  else
  {
    v12 = sub_100004F84();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1002551E8();
    }
  }
}

- (void)handleHeadsetButtonPressForCall:(id)a3 sourceIdentifier:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (v14 && [v14 isIncoming] && objc_msgSend(v14, "isVideo") && (-[ICSApplicationDelegate currentInCallScene](self, "currentInCallScene"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "presentationMode"), v7, v8 == 1))
  {
    v9 = [(ICSApplicationDelegate *)self currentInCallScene];
    [v9 requestTransitionToPresentationMode:2 shouldDismissCMASAlerts:0 analyticsSource:@"SBSUIInCallTransitionAnalyticsSourceHeadsetButtonPress"];
  }

  else
  {
    v10 = [(ICSApplicationDelegate *)self currentInCallScene];
    v11 = [v10 delegate];
    v12 = [v11 isAttachedToWindowedAccessoryWithValidFrameForCurrentScene];

    v9 = +[TUCallCenter sharedInstance];
    if (v12 && [v14 isConversation])
    {
      v13 = [v14 isIncoming];
    }

    else
    {
      v13 = 0;
    }

    [v9 handleActionForWiredHeadsetMiddleButtonPressWithSourceIdentifier:v6 allowBluetoothAnswerWithoutDowngrade:1 shouldForceDowngradeToAudio:v13];
  }
}

- (id)incomingVideoCallUsingCallContainer:(id)a3
{
  v3 = a3;
  v4 = [v3 callPassingTest:&stru_100357F30];
  if (!v4)
  {
    v4 = [v3 callPassingTest:&stru_100357F50];
    if (!v4)
    {
      v4 = [v3 incomingVideoCall];
    }
  }

  v5 = v4;

  return v5;
}

- (id)currentVideoCallUsingCallContainer:(id)a3
{
  v3 = a3;
  v4 = [v3 callPassingTest:&stru_100357F70];
  if (!v4)
  {
    v4 = [v3 callPassingTest:&stru_100357F90];
    if (!v4)
    {
      v4 = [v3 currentVideoCall];
    }
  }

  v5 = v4;

  return v5;
}

- (id)remoteAlertShellViewControllerForWindowScene:(id)a3
{
  v3 = a3;
  v4 = [v3 delegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 delegate];
    v7 = [v6 windowSceneToWindowMap];
    v8 = [v7 objectForKey:v3];

    v9 = [v8 rootViewController];
    objc_opt_class();
    v10 = objc_opt_isKindOfClass();

    if (v10)
    {
      v11 = [v8 rootViewController];
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (PHInCallRemoteAlertShellViewController)inCallShellViewController
{
  v3 = [(ICSApplicationDelegate *)self currentInCallScene];
  v4 = [(ICSApplicationDelegate *)self remoteAlertShellViewControllerForWindowScene:v3];

  return v4;
}

- (void)screenSharingStateMonitor:(id)a3 didUpdateScreenSharingState:(BOOL)a4
{
  if (a4)
  {
    v5 = [a3 call];
    v6 = [v5 isConnected];

    if ((v6 & 1) == 0)
    {
      v7 = [NSString stringWithFormat:@"Attempting to show screen sharing for a call that isn't connected yet"];
      NSLog(@"** TUAssertion failure: %@", v7);

      _TUAssertShouldCrashApplication();
    }

    v8 = [(ICSApplicationDelegate *)self sceneManager];
    v9 = [v8 hasPendingOrExistingSceneOfType:1];

    if (v9)
    {
      v10 = sub_1000314C4();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_100255250();
      }
    }

    else
    {

      [(ICSApplicationDelegate *)self requestSpringBoardPresentationForScreenSharingAsPiP:1];
    }
  }

  else
  {

    [(ICSApplicationDelegate *)self dismissScreenSharingSceneSession];
  }
}

- (void)screenSharingStateMonitor:(id)a3 didUpdateScreenSharingBroadcastingState:(BOOL)a4
{
  v4 = a4;
  [(ICSApplicationDelegate *)self updatePrefersBannersHiddenFromClonedDisplay];
  v6 = [(PHApplicationDelegate *)self featureFlags];
  v7 = [v6 screenSharingDrawToHighlightEnabled];

  if (v7)
  {
    if (v4)
    {
      v9 = +[TUCallCenter sharedInstance];
      v8 = [v9 frontmostCall];
      [(ICSApplicationDelegate *)self requestSpringBoardPresentationForScreenSharingBroadcaster:v8];
    }

    else
    {

      [(ICSApplicationDelegate *)self dismissScreenSharingBroadcasterSession];
    }
  }
}

- (void)screenSharingInteractionController:(id)a3 didUpdateRemoteControlStatus:(BOOL)a4
{
  v4 = a4;
  v6 = [(PHApplicationDelegate *)self featureFlags];
  v7 = [v6 screenSharingRemoteControlEnabled];

  if (v7)
  {
    [(ICSApplicationDelegate *)self updatePrefersBannersHiddenFromClonedDisplay];
    if (v4)
    {
      v14 = +[TUCallCenter sharedInstance];
      v8 = [v14 conversationManager];
      v9 = +[TUCallCenter sharedInstance];
      v10 = +[TUCallCenter sharedInstance];
      v11 = [v10 frontmostAudioOrVideoCall];
      v12 = [v9 activeConversationForCall:v11];
      [v8 addScreenSharingType:2 forConversation:v12];
    }
  }

  else
  {
    v13 = sub_1000314C4();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Not updating banner state for remote control, screen sharing remote control feature flag is disabled", buf, 2u);
    }
  }
}

- (void)routesChangedForRouteController:(id)a3
{
  v3 = [(ICSApplicationDelegate *)self routeListController];
  [v3 reload];
}

- (void)bannerPresentationManagerRequestToPresentBanner:(id)a3
{
  v4 = a3;
  v5 = [(ICSApplicationDelegate *)self bannerPresentationRequestTimer];

  if (v5)
  {
    v6 = sub_10010D6C4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "requestToPresentBanner already pending, ignoring this request", buf, 2u);
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10008851C;
    v29[3] = &unk_100357FB8;
    objc_copyWeak(&v31, &location);
    v7 = v4;
    v30 = v7;
    v8 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v29 block:3.0];
    [(ICSApplicationDelegate *)self setBannerPresentationRequestTimer:v8];

    v9 = [(ICSApplicationDelegate *)self bannerPresentationManager];
    v10 = [v9 wantsBannerWithoutScene];

    if (v10)
    {
      v11 = [(ICSApplicationDelegate *)self bannerPresentationRequestTimer];
      [v11 invalidate];

      [(ICSApplicationDelegate *)self setBannerPresentationRequestTimer:0];
      (*(v7 + 2))(v7, 0);
    }

    else
    {
      *buf = 0;
      v26 = buf;
      v27 = 0x2020000000;
      v28 = 0;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000885C0;
      v22[3] = &unk_100357FE0;
      v24 = buf;
      v22[4] = self;
      v23 = v7;
      v12 = objc_retainBlock(v22);
      v13 = [(ICSApplicationDelegate *)self sceneManager];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000886D0;
      v20[3] = &unk_100358008;
      v14 = v12;
      v21 = v14;
      [v13 waitForRegistrationOfSceneWithType:0 completion:v20];

      v15 = [(PHApplicationDelegate *)self features];
      v16 = [v15 isDominoEnabled];

      if (v16)
      {
        v17 = [(ICSApplicationDelegate *)self sceneManager];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_1000887C0;
        v18[3] = &unk_100356A70;
        v19 = v14;
        [v17 waitForRegistrationOfGenericSceneWithType:5 completion:v18];
      }

      _Block_object_dispose(buf, 8);
    }

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }
}

- (void)bannerPresentationManagerUpdatedControlsManagerCallUUID:(id)a3
{
  v4 = a3;
  v5 = [(ICSApplicationDelegate *)self callUUIDWaitingToPresentBanner];
  v6 = [v5 isEqual:v4];

  if (v6)
  {
    [(ICSApplicationDelegate *)self setCallUUIDWaitingToPresentBanner:0];
    v7 = [(ICSApplicationDelegate *)self currentInCallScene];
    v8 = [v7 presentationMode];

    if (!v8)
    {
      v9 = sub_10010D6C4();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        v11 = v4;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Banner presentation manager updated call UUID to %{public}@ and scene is still dismissed, requesting to show controls", &v10, 0xCu);
      }

      [(ICSApplicationDelegate *)self showCallControlsForCurrentContext];
    }
  }
}

- (void)bannerPresentationManagerBannerPresentationManagerAVUpgradedCallUUID:(id)a3
{
  v4 = a3;
  v5 = [(ICSApplicationDelegate *)self currentInCallScene];

  if (!v5)
  {
    v6 = +[TUCallCenter sharedInstance];
    v7 = [v4 UUIDString];
    v8 = [v6 callWithCallUUID:v7];

    if (!v8 || [v8 status] != 4)
    {
      v9 = sub_10010D6C4();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Banner presentation manager detected AVLess -> AV upgrade, requesting to present scene", v12, 2u);
      }

      [(ICSApplicationDelegate *)self setAvUpgradedCallUUIDForDismissedScene:v4];
      v10 = [(ICSApplicationDelegate *)self bannerPresentationManager];
      v11 = [v10 activeCall];
      [(ICSApplicationDelegate *)self requestPresentationForCall:v11 dialRequest:0];

      [(ICSApplicationDelegate *)self setAvUpgradedCallUUIDForDismissedScene:0];
    }
  }
}

- (void)bannerPresentationManagerAVDowngradedGroupUUID:(id)a3
{
  v4 = sub_10010D6C4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Banner presentation manager detected AV -> AVLess downgrade, dismissing scene", v9, 2u);
  }

  v5 = [(PHApplicationDelegate *)self features];
  v6 = [v5 isSystemApertureEnabled];

  if (v6)
  {
    [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHAVLessConversationAssertionReason"];
    v7 = [(ICSApplicationDelegate *)self currentInCallScene];

    if (v7)
    {
      v8 = [(ICSApplicationDelegate *)self currentInCallScene];
      [v8 requestTransitionToPresentationMode:0 shouldDismissCMASAlerts:0];
    }

    else
    {
      [(ICSApplicationDelegate *)self requestSpringBoardPresentationForCallDetailsView];
    }
  }
}

- (void)bannerPresentationManagerShowFullscreenUI
{
  v3 = +[TUCallCenter sharedInstance];
  v4 = [v3 frontmostAudioOrVideoCall];

  [(ICSApplicationDelegate *)self requestSpringBoardPresentationForCall:v4 dialRequest:0 tappedPill:1];
}

- (BOOL)bannerPresentationManagerDismissSBBannerIfNeeded
{
  v2 = [(ICSApplicationDelegate *)self currentInCallScene];
  v3 = v2;
  if (v2 && [v2 presentationMode] == 1 && (objc_msgSend(v3, "keyWindow"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "rootViewController"), v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, v4, (isKindOfClass & 1) != 0))
  {
    v7 = [v3 keyWindow];
    v8 = [v7 rootViewController];

    v9 = [v8 transitionFromBannerToDismissedIfNecessary];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)bannerPresentationManagerShowFullscreenCallDetailsView
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deep linking to call details view", v4, 2u);
  }

  [(ICSApplicationDelegate *)self setDidDeepLinkToCallDetailsView:1];
  [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHAVLessConversationDetailsViewAssertionReason"];
  [(ICSApplicationDelegate *)self requestFullScreenSpringBoardPresentationForCallDetailsView];
}

- (NSString)inCallSceneSessionIdentifier
{
  v2 = [(ICSApplicationDelegate *)self sceneManager];
  v3 = [v2 callScene];
  v4 = [v3 session];
  v5 = [v4 persistentIdentifier];

  return v5;
}

- (BOOL)hasPresentedFullScreenCallUI
{
  v2 = [(ICSApplicationDelegate *)self sceneManager];
  v3 = [v2 callSceneHasPresentedFullScreen];

  return v3;
}

- (BOOL)isPresentingFullScreenCallUI
{
  v2 = [(ICSApplicationDelegate *)self currentInCallScene];
  v3 = [v2 presentationMode] == 2;

  return v3;
}

- (BOOL)isPresentingFullScreenOverlayCallUI
{
  v2 = [(ICSApplicationDelegate *)self currentInCallScene];
  v3 = [v2 presentationMode] == 3;

  return v3;
}

- (BOOL)isAlertAvailable
{
  v2 = [(ICSApplicationDelegate *)self alertCoordinator];
  v3 = [v2 isAvailable];

  return v3;
}

- (id)audioRouteMenu
{
  v3 = [(ICSApplicationDelegate *)self routeListController];

  if (v3)
  {
    v4 = [(ICSApplicationDelegate *)self routeListController];
    [v4 reload];
  }

  else
  {
    v4 = [PHAudioRoutingMenuController menuControllerWithCallStyle:1 dataSource:self delegate:self];
    [(ICSApplicationDelegate *)self setRouteListController:v4];
  }

  v5 = [(ICSApplicationDelegate *)self routeListController];
  v6 = [v5 menu];

  return v6;
}

- (UIImage)audioRouteGlyphForDevice
{
  v2 = +[PHDevice currentDevice];
  v3 = [v2 audioRouteGlyphImage];

  return v3;
}

- (id)routesForAudioRoutingMenuController:(id)a3
{
  v3 = +[TUCallCenter sharedInstance];
  v4 = [v3 routeController];
  v5 = [v4 sortedRoutes];

  return v5;
}

- (void)audioRoutingMenuController:(id)a3 didSelectRoute:(id)a4
{
  v4 = a4;
  v6 = +[TUCallCenter sharedInstance];
  v5 = [v6 routeController];
  [v5 pickRoute:v4];
}

- (void)audioRoutingMenuController:(id)a3 didSelectLagunaActionForHandle:(id)a4 conversation:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = +[TUCallCenter sharedInstance];
  v9 = [v8 neighborhoodActivityConduit];
  v10 = [v7 UUID];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000891D4;
  v12[3] = &unk_100358030;
  v13 = v6;
  v11 = v6;
  [v9 handoffConversation:v10 toTVDevice:v11 completion:v12];
}

- (void)conversationManager:(id)a3 addedActiveConversation:(id)a4
{
  [(ICSApplicationDelegate *)self handleStateChangeForAVLessConversation:a4 fromConversation:0];
  v5 = +[TUCallCenter sharedInstance];
  v6 = [v5 frontmostAudioOrVideoCall];

  if ([(ICSApplicationDelegate *)self shouldAttemptRePresentationOfBannerOnConversationUpdate]&& v6)
  {
    v7 = +[TUCallCenter sharedInstance];
    v8 = [v7 activeConversationForCall:v6];
    if (!v8)
    {
LABEL_7:

      goto LABEL_8;
    }

    v9 = v8;
    v10 = [(ICSApplicationDelegate *)self currentInCallScene];
    if ([v10 presentationMode] || objc_msgSend(v6, "status") == 5)
    {

      goto LABEL_7;
    }

    v11 = [v6 status];

    if (v11 != 6)
    {
      v12 = sub_10010D6C4();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "New conversation has been added that matches frontmost call, requesting HUD to be presented", v13, 2u);
      }

      [(ICSApplicationDelegate *)self setShouldAttemptRePresentationOfBannerOnConversationUpdate:0];
      [(ICSApplicationDelegate *)self showCallControlsForCurrentContext];
    }
  }

LABEL_8:
}

- (void)handleStateChangeForAVLessConversation:(id)a3 fromConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 avMode] || objc_msgSend(v6, "state") == 4 || !objc_msgSend(v6, "state"))
  {
    goto LABEL_13;
  }

  v8 = [(ICSApplicationDelegate *)self bannerPresentationManager];
  if ([v8 wantsBannerWithoutScene])
  {

LABEL_13:
    [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHAVLessConversationAssertionReason"];
    goto LABEL_14;
  }

  v9 = [(ICSApplicationDelegate *)self bannerPresentationManager];
  v10 = [v9 placeholderCallGroupUUID];
  v11 = [v6 groupUUID];
  v12 = [v10 isEqual:v11];

  if (!v12)
  {
    goto LABEL_13;
  }

  if (v7 && [v7 avMode])
  {
    v13 = sub_10010D6C4();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [(ICSApplicationDelegate *)self currentInCallScene];
      v22 = 138412546;
      v23 = v6;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Detected transition from AV -> AVLess for conversation: %@. Dismissing currentInCallScene: %@", &v22, 0x16u);
    }

    v16 = [(ICSApplicationDelegate *)self currentInCallScene];
    [v16 requestTransitionToPresentationMode:0 shouldDismissCMASAlerts:0];
  }

  [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHAVLessConversationAssertionReason"];
  [(ICSApplicationDelegate *)self requestSpringBoardPresentationForCallDetailsView];
LABEL_14:
  v17 = +[TUCallCenter sharedInstance];
  v18 = [v17 conversationManager];
  v19 = [v18 avLessConversation];

  if (v19)
  {
    v20 = +[PHPIPController defaultPIPController];
    [v20 updatePipSharePlaySessionWithConversation:v6];
  }

  else
  {
    v21 = sub_100009960();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "No AVLess conversations remaining. Removing dismissal assertion.", &v22, 2u);
    }

    [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHAVLessConversationDetailsViewAssertionReason"];
  }
}

- (void)conversationManager:(id)a3 sharePlayAvailableChanged:(BOOL)a4
{
  v4 = [(ICSApplicationDelegate *)self routeListController:a3];
  [v4 reload];
}

- (void)conversationManager:(id)a3 screenSharingAvailableChanged:(BOOL)a4
{
  v4 = [(ICSApplicationDelegate *)self routeListController:a3];
  [v4 reload];
}

- (void)handleSupportsEmergencyFallbackChangedNotification:(id)a3
{
  v7 = a3;
  v4 = [v7 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v7 object];
  }

  else
  {
    v6 = 0;
  }

  [(ICSApplicationDelegate *)self handleSupportsEmergencyFallbackChangedForCall:v6];
}

- (void)handleAlertInvokedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "alert was invoked, nil-ing out AlertCoordinator", v10, 2u);
  }

  [(ICSApplicationDelegate *)self setAlertCoordinator:0];
  v6 = [v4 userInfo];

  v7 = +[_TtC13InCallService16AlertCoordinator automaticallyInvokedKey];
  v8 = [v6 objectForKeyedSubscript:v7];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    [(ICSApplicationDelegate *)self startSOSFlowWithActivationReason:SOSRemoteAlertActivationReasonActivatingForSOSAlertRestingScreen];
  }
}

- (void)handleSupportsEmergencyFallbackChangedForCall:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 isEmergency])
    {
      if ([v5 supportsEmergencyFallback])
      {
        [(ICSApplicationDelegate *)self acquirePreventSuspensionAssertion];
        v6 = [(ICSApplicationDelegate *)self alertCoordinator];

        if (!v6)
        {
          v7 = sub_100004F84();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *v10 = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Emergency fallback changed and alertCoordinator not initialized. Starting monitoring to start background countdown if necessary", v10, 2u);
          }

          v8 = objc_alloc_init(_TtC13InCallService16AlertCoordinator);
          [(ICSApplicationDelegate *)self setAlertCoordinator:v8];

          v9 = [(ICSApplicationDelegate *)self alertCoordinator];
          [v9 startMonitoring];
        }
      }
    }
  }
}

- (void)prepareForAmbientScene:(id)a3
{
  v4 = a3;
  v5 = sub_10010D904();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Preparing for ambient scene: %@", &v7, 0xCu);
  }

  v6 = [(ICSApplicationDelegate *)self sceneManager];
  [v6 registerGenericScene:v4 ofType:5];
}

- (void)transitionFromAmbientScene
{
  [(ICSApplicationDelegate *)self setIsPresentingAmbient:0];
  v3 = [(ICSApplicationDelegate *)self sceneManager];
  v4 = [v3 ambientScene];

  if (v4)
  {
    v5 = [(ICSApplicationDelegate *)self sceneManager];
    [v5 didDismissSceneOfType:5];
  }

  else
  {
    v6 = sub_10010D904();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10025530C();
    }
  }
}

+ (BOOL)hasCarKitRoute
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = +[TUCallCenter sharedInstance];
  v3 = [v2 routeController];
  v4 = [v3 sortedRoutes];

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

        if ([*(*(&v9 + 1) + 8 * i) isCarKitRoute])
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (BOOL)shouldHandleBluetoothCommand
{
  v3 = [(ICSApplicationDelegate *)self carKitSessionStatus];
  v4 = [v3 currentSession];

  if (v4)
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      v6 = "Not handling command because we are connected to carplay";
      v7 = &v14;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }
  }

  else if ([(ICSApplicationDelegate *)self isPresentingFullScreenCallUI])
  {
    v8 = +[PHInCallUIUtilities sharedInstance];
    v9 = [v8 isSpringBoardLocked];

    if (v9)
    {
      v5 = sub_100004F84();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 0;
        v6 = "Not handling command because springboard is locked";
        v7 = &v12;
        goto LABEL_10;
      }
    }

    else
    {
      if (!+[ICSApplicationDelegate hasCarKitRoute])
      {
        return 1;
      }

      v5 = sub_100004F84();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 0;
        v6 = "Not handling command because we are connected to a carkit route";
        v7 = &v11;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "Not handling command because we are not showing screening UI";
      v7 = buf;
      goto LABEL_10;
    }
  }

  return 0;
}

- (void)shouldHandleMRCommand:(unsigned int)a3 completion:(id)a4
{
  v6 = a4;
  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Asked to handle MRCommand %u", v11, 8u);
  }

  v8 = [(ICSApplicationDelegate *)self shouldHandleBluetoothCommand];
  v9 = sub_100004F84();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received a MediaRemoteCommand for a screening call and we are presenting screening UI, so treating this as a regular button press and hijacking command from MR", v11, 2u);
    }

    v9 = +[TUCallCenter sharedInstance];
    [v9 handleActionForWiredHeadsetMiddleButtonPressWithSourceIdentifier:0 allowBluetoothAnswerWithoutDowngrade:0 shouldForceDowngradeToAudio:1];
  }

  else if (v10)
  {
    LOWORD(v11[0]) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received a MediaRemoteCommand for a screening call but we are NOT presenting screening UI, so returning the command back to MR", v11, 2u);
  }

  v6[2](v6, v8, 0);
}

- (void)shouldHandleMRCommand:(unsigned int)a3 sourceIdentifier:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = sub_100004F84();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109378;
    v14[1] = a3;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Asked to handle MRCommand %u from routeUID: %@", v14, 0x12u);
  }

  v11 = [(ICSApplicationDelegate *)self shouldHandleBluetoothCommand];
  v12 = sub_100004F84();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received a MediaRemoteCommand for a screening call and we are presenting screening UI, so treating this as a regular button press and hijacking command from MR", v14, 2u);
    }

    v12 = +[TUCallCenter sharedInstance];
    [v12 handleActionForWiredHeadsetMiddleButtonPressWithSourceIdentifier:v8 allowBluetoothAnswerWithoutDowngrade:0 shouldForceDowngradeToAudio:1];
  }

  else if (v13)
  {
    LOWORD(v14[0]) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received a MediaRemoteCommand for a screening call but we are NOT presenting screening UI, so returning the command back to MR", v14, 2u);
  }

  v9[2](v9, v11, 0);
}

- (void)handleRedialCommandWhileScreening:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412290;
    v25 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asked to handle redial %@", &v24, 0xCu);
  }

  v6 = +[TUCallCenter sharedInstance];
  v7 = [v6 screeningCall];

  if (v7)
  {
    [v4 setPreferDefaultApp:0];
    v8 = [v7 handle];
    v9 = [v8 value];
    v10 = [TUHandle normalizedHandleWithDestinationID:v9];

    v11 = [v7 handle];
    v12 = [v11 value];
    v13 = [TUHandle normalizedHandleWithDestinationID:v12];

    v14 = [(__CFString *)v13 isEqualToHandle:v10];
    v15 = [(ICSApplicationDelegate *)self shouldHandleBluetoothCommand];
    v16 = sub_100004F84();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412546;
      v25 = v10;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Normalized handle from screening call %@ redial %@", &v24, 0x16u);
    }

    v17 = sub_100004F84();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if ((v15 | v14))
    {
      if (v18)
      {
        v19 = @"NO";
        if (v15)
        {
          v20 = @"YES";
        }

        else
        {
          v20 = @"NO";
        }

        if (v14)
        {
          v19 = @"YES";
        }

        v24 = 138412546;
        v25 = v20;
        v26 = 2112;
        v27 = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Answering call for redial since ICS is presenting screening UI: %@ or is trying to call the same person we are screening %@", &v24, 0x16u);
      }

      v21 = +[TUCallCenter sharedInstance];
      v22 = [v4 audioSourceIdentifier];
      [v21 handleActionForWiredHeadsetMiddleButtonPressWithSourceIdentifier:v22 allowBluetoothAnswerWithoutDowngrade:0 shouldForceDowngradeToAudio:1];
    }

    else
    {
      if (v18)
      {
        LOWORD(v24) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Not presenting screening UI so dialing for redial", &v24, 2u);
      }

      v21 = +[TUCallCenter sharedInstance];
      v23 = [v21 dialWithRequest:v4];
    }
  }

  else
  {
    v10 = sub_100004F84();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100255348();
    }
  }
}

- (void)fetchInCallUIState:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asked to fetch UI state", &v13, 2u);
  }

  v6 = [(ICSApplicationDelegate *)self isPresentingFullScreenCallUI];
  if (v6)
  {
    [(ICSApplicationDelegate *)self inCallShellViewController];
  }

  else
  {
    [(ICSApplicationDelegate *)self bannerPresentationManager];
  }
  v7 = ;
  v8 = [v7 isMicIndicatorVisible];

  v9 = 2;
  if (!v8)
  {
    v9 = 0;
  }

  v10 = v9 | v6;
  v11 = [[TUUIContext alloc] initWithState:v10];
  v12 = sub_100004F84();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "UIState is %lu", &v13, 0xCu);
  }

  v4[2](v4, v11, 0);
}

- (void)fetchRemoteControlStatus:(id)a3
{
  v4 = a3;
  v5 = [(ICSApplicationDelegate *)self screenSharingInteractionControllerFactory];
  v6 = [v5 sharedController];
  v7 = [v6 remoteControlStatus];

  v8 = [(ICSApplicationDelegate *)self screenSharingInteractionControllerFactory];
  v9 = [v8 sharedController];
  v10 = [v9 latestRemoteControlDate];

  if (v7 != 2)
  {
    v11 = +[NSDate date];
    [v11 timeIntervalSinceDate:v10];
    v13 = v12;

    if (v13 < 3.0)
    {
      v7 = 2;
    }
  }

  v14 = sub_100004F84();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134217984;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Returning remote control status: %ld", &v15, 0xCu);
  }

  v4[2](v4, v7, 0);
}

- (void)updateiPadMenuBarApplicationName:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting updateiPadMenuBarApplicationName", &v13, 2u);
  }

  v6 = NSSelectorFromString(@"_setOverrideApplicationName:");
  v7 = +[UIMenuSystem mainSystem];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(ICSApplicationDelegate *)self getMenuBarApplicationName:v4];
    v10 = sub_100004F84();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "updateiPadMenuBarApplicationName NEW TITLE %@", &v13, 0xCu);
    }

    v11 = +[UIMenuSystem mainSystem];
    [v11 performSelector:v6 withObject:v9];
  }

  v12 = sub_100004F84();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "updateiPadMenuBarApplicationName complete", &v13, 2u);
  }
}

- (BOOL)isPresentingAmbient
{
  v2 = self;
  v3 = ICSApplicationDelegate.isPresentingAmbient.getter();

  return v3 & 1;
}

- (void)setIsPresentingAmbient:(BOOL)a3
{
  v3 = self;
  ICSApplicationDelegate.isPresentingAmbient.setter();
}

- (BOOL)updateForegroundAppURL:(id)a3 using:(id)a4
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a4;
  v12 = self;
  LOBYTE(self) = ICSApplicationDelegate.updateForegroundApp(url:using:)(v11, v13);

  (*(v7 + 8))(v10, v6);
  return self & 1;
}

- (void)handleInterventionURL:(id)a3 continueWith:(id)a4
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = self;
  ICSApplicationDelegate.handleInterventionURL(_:continueWith:)(v10, sub_1001794FC, v12);

  (*(v7 + 8))(v10, v6);
}

- (void)dismissAnsweredCallBannerIfNeeded
{
  v2 = self;
  ICSApplicationDelegate.dismissAnsweredCallBannerIfNeeded()();
}

- (id)makeAnsweringMachineWithPrivateSelf:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_100177D90(a3);
  swift_unknownObjectRelease();

  return v6;
}

- (void)requestScreeningSceneIfNeeded:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  sub_1001784A8();
}

- (id)makeWaitOnHoldService
{
  v2 = self;
  v3 = sub_100178B98();

  return v3;
}

- (void)requestFullScreenSpringBoardPresentationWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_100178C24(v5, v4);
  _Block_release(v4);
}

- (TUCallCenter)callCenter
{
  v2 = self;
  v3 = sub_1001C5394();

  return v3;
}

- (void)modifyTopLevelMenuWindow:(id)a3 :(id)a4
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = self;
  sub_1001C5E88(a3, a4);
  swift_unknownObjectRelease();
}

- (UIMenu)menuItemMute
{
  v2 = self;
  v3.super.super.isa = sub_1001C644C().super.super.isa;

  return v3.super.super.isa;
}

- (UIMenu)menuAudioOutput
{
  v2 = self;
  v3.super.super.isa = sub_1001C66A4().super.super.isa;

  return v3.super.super.isa;
}

- (id)makeAudioOutputItems
{
  v2 = self;
  sub_1001C688C();

  sub_1000064BC(0, &qword_1003ACFE0);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)makeAudioOutputItemWithRoute:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1001C6BE4(v4);

  return v6;
}

- (id)getMenuBarApplicationName:(id)a3
{
  v4 = a3;
  v5 = self;
  ICSApplicationDelegate.getMenuBarApplicationName(_:)(v4);

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

- (void)toggleMute:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001C72DC();
}

@end