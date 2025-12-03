@interface ICSApplicationDelegate
+ (BOOL)hasCarKitRoute;
+ (BOOL)isExpanseMessagesJoinRequest:(id)request;
+ (id)configurationForCall:(id)call preferredPresentationMode:(int64_t)mode;
- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)application:(id)application openJoinConversationRequestForConversationLink:(id)link webpageURL:(id)l;
- (BOOL)application:(id)application openURL:(id)l options:(id)options;
- (BOOL)bannerPresentationManagerDismissSBBannerIfNeeded;
- (BOOL)bannerPresentationManagerWantsSpringBoardIsLockedStatus;
- (BOOL)canModifyCallsForProcessHandle:(id)handle;
- (BOOL)handleBackgroundLaunchURL:(id)l;
- (BOOL)hasActiveOrPendingInCallPresentation;
- (BOOL)hasActiveOrPendingVideoMessagePresentation;
- (BOOL)hasExistingDismissedInCallScene;
- (BOOL)hasExistingFullScreenInCallScene;
- (BOOL)hasOngoingEmergencyCall;
- (BOOL)hasPresentedFullScreenCallUI;
- (BOOL)isAlertAvailable;
- (BOOL)isAnsweringMachineAvailable;
- (BOOL)isAppBlockedFromBypassingPrompt:(id)prompt;
- (BOOL)isClarityBoardActive;
- (BOOL)isDefaultCallingApp:(id)app;
- (BOOL)isDefaultDialingApp:(id)app;
- (BOOL)isFaceTimeLoggedIn;
- (BOOL)isPresentingAmbient;
- (BOOL)isPresentingFullScreenCallUI;
- (BOOL)isPresentingFullScreenOverlayCallUI;
- (BOOL)openDialRequest:(id)request application:(id)application url:(id)url options:(id)options;
- (BOOL)openDialRequest:(id)request forProcessHandle:(id)handle bypassUIPromptIfDefaultProvider:(BOOL)provider;
- (BOOL)openJoinConversationRequest:(id)request;
- (BOOL)openSystemProviderDialRequest:(id)request;
- (BOOL)openThirdPartyDialRequest:(id)request;
- (BOOL)openUserInterfaceURL:(id)l;
- (BOOL)openVideoMessagePlaybackURL:(id)l;
- (BOOL)refreshShareableContentURL:(id)l;
- (BOOL)shouldActivateSOS;
- (BOOL)shouldActivateSpringBoardRemoteAlertForCall:(id)call;
- (BOOL)shouldHandleBluetoothCommand;
- (BOOL)shouldPresentDismissedForCall:(id)call tappedPill:(BOOL)pill;
- (BOOL)shouldShowAirplaneEmergencyCallAlertForDialRequest:(id)request;
- (BOOL)shouldShowEmergencyCallbackModeAlertForDialRequest:(id)request;
- (BOOL)shouldShowPromptForProcessHandle:(id)handle;
- (BOOL)shouldShowRTTAlertForDialRequest:(id)request;
- (BOOL)shouldShowScreenTimeAlertForDialRequest:(id)request;
- (BOOL)shouldShowScreenTimeAlertForJoinConversationRequest:(id)request;
- (BOOL)shouldShowTelephonyAccountUnavailableAlertForDialRequest:(id)request;
- (BOOL)showScreenSharingURL:(id)l;
- (BOOL)showSystemCallControlsURL:(id)l;
- (BOOL)updateForegroundAppURL:(id)l;
- (BOOL)updateForegroundAppURL:(id)l using:(id)using;
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
- (id)configurationForCall:(id)call tappedPill:(BOOL)pill;
- (id)configurationForCallDetailsViewWithFullScreenRequest:(BOOL)request;
- (id)configurationForGreenTea3P;
- (id)configurationForPTTSessionWithCall:(id)call preferredPresentationMode:(int64_t)mode;
- (id)configurationForSOS;
- (id)configurationForScreenShareBroadcast;
- (id)configurationForScreenSharingInitiallyInPiP:(BOOL)p;
- (id)configurationForScreenTime;
- (id)currentVideoCallUsingCallContainer:(id)container;
- (id)getEvolvedSubscriptionLabelID:(id)d error:(id *)error;
- (id)getMenuBarApplicationName:(id)name;
- (id)incomingVideoCallUsingCallContainer:(id)container;
- (id)isAppBlockedFromBypassingPrompt;
- (id)isDefaultCallingAppBlock;
- (id)isDefaultDialingAppBlock;
- (id)isHandleAvailableForFaceTimeBlock;
- (id)makeAnsweringMachineWithPrivateSelf:(id)self;
- (id)makeAudioOutputItemWithRoute:(id)route;
- (id)makeAudioOutputItems;
- (id)makeWaitOnHoldService;
- (id)remoteAlertShellViewControllerForWindowScene:(id)scene;
- (id)routesForAudioRoutingMenuController:(id)controller;
- (id)screenSharingRootViewController;
- (id)springBoardRemoteAlertOptionsForCall:(id)call dialRequest:(id)request;
- (id)springBoardRemoteAlertOptionsForSOSCall;
- (void)_didBecomeActive:(id)active;
- (void)_updateInactiveDate;
- (void)_willConnect:(id)connect;
- (void)_willResignFromActive:(id)active;
- (void)acquirePreventSuspensionAssertionForDuration:(double)duration;
- (void)activateSpringBoardRemoteAlertForSOSCall;
- (void)addNotificationObservers;
- (void)audioCallStatusChanged:(id)changed;
- (void)audioRoutingMenuController:(id)controller didSelectLagunaActionForHandle:(id)handle conversation:(id)conversation;
- (void)audioRoutingMenuController:(id)controller didSelectRoute:(id)route;
- (void)bannerPresentationManagerAVDowngradedGroupUUID:(id)d;
- (void)bannerPresentationManagerBannerPresentationManagerAVUpgradedCallUUID:(id)d;
- (void)bannerPresentationManagerDidDismissBanner;
- (void)bannerPresentationManagerGameOverlayDidOpen;
- (void)bannerPresentationManagerRequestToPresentBanner:(id)banner;
- (void)bannerPresentationManagerShowFullscreenCallDetailsView;
- (void)bannerPresentationManagerShowFullscreenPTTCallDetailsView;
- (void)bannerPresentationManagerShowFullscreenUI;
- (void)bannerPresentationManagerUpdatedControlsManagerCallUUID:(id)d;
- (void)callDisplayContextChangedNotification:(id)notification;
- (void)callStatusChanged:(id)changed;
- (void)configureDialRequest:(id)request forProcessHandle:(id)handle bypassUIPromptIfDefaultProvider:(BOOL)provider;
- (void)conversationManager:(id)manager addedActiveConversation:(id)conversation;
- (void)conversationManager:(id)manager screenSharingAvailableChanged:(BOOL)changed;
- (void)conversationManager:(id)manager sharePlayAvailableChanged:(BOOL)changed;
- (void)dealloc;
- (void)dialRequestForDefaultCallingConfiguredDialRequest:(id)request completion:(id)completion;
- (void)dismissAnsweredCallBannerIfNeeded;
- (void)dismissClarityUIScene;
- (void)dismissInCallSceneSession;
- (void)dismissPTTSessionPresentation;
- (void)dismissScreenSharingBroadcasterSession;
- (void)dismissScreenSharingSceneSession;
- (void)fetchInCallUIState:(id)state;
- (void)fetchRemoteControlStatus:(id)status;
- (void)handleAlertInvokedNotification:(id)notification;
- (void)handleCallStatusChangedNotification:(id)notification;
- (void)handleHeadsetButtonPressForCall:(id)call sourceIdentifier:(id)identifier;
- (void)handleHeadsetButtonPressForCall:(id)call sourceIdentifier:(id)identifier urlOptions:(id)options;
- (void)handleInterventionURL:(id)l continueWith:(id)with;
- (void)handleLockScreenStatusChangedNotification:(id)notification;
- (void)handleMenuBarTitleForCallUpgradeDowngradeNotification:(id)notification;
- (void)handleRedialCommandWhileScreening:(id)screening;
- (void)handleStateChangeForAVLessConversation:(id)conversation fromConversation:(id)fromConversation;
- (void)handleSupportsEmergencyFallbackChangedForCall:(id)call;
- (void)handleSupportsEmergencyFallbackChangedNotification:(id)notification;
- (void)handleTUCallTTYTypeChangedNotification:(id)notification;
- (void)hideCarPlayUI;
- (void)initiateCallForConversationRequest:(id)request;
- (void)initiateCallForDialRequest:(id)request completionHandler:(id)handler;
- (void)installCameraStateMonitor;
- (void)installPillStateMonitor;
- (void)invalidatePreventSuspensionAssertion;
- (void)isHandleAvailableForFaceTime:(id)time completion:(id)completion;
- (void)modifyTopLevelMenuWindow:(id)window :(id)a4;
- (void)performDismissedPresentationForCallDetailsView;
- (void)performFullScreenPresentationForCallDetailsView;
- (void)performPersentationForScreenSharingObserver;
- (void)performPresentationForSOS;
- (void)performPresentationForScreenSharingInitiallyInPiP:(BOOL)p;
- (void)performPresentationForScreenTime;
- (void)performPresentationForVideoMessage;
- (void)performPresentationWithConfiguration:(id)configuration forSceneType:(unint64_t)type;
- (void)prepareForAmbientScene:(id)scene;
- (void)presentDismissedPTTSceneForCall:(id)call;
- (void)prewarmBannerPresentationManager;
- (void)requestBackgroundPiPAuthorizationForSceneType:(unint64_t)type withConfiguration:(id)configuration;
- (void)requestBackgroundPiPAuthorizationOfDismissedInCallSceneForCall:(id)call;
- (void)requestClarityBoardPresentation;
- (void)requestFullScreenSpringBoardPresentationForCallDetailsView;
- (void)requestFullScreenSpringBoardPresentationWithCompletion:(id)completion;
- (void)requestGreenTea3PPresentationForCall:(id)call;
- (void)requestHandoffEligibleConversationPresentation;
- (void)requestLagunaPullConversationPresentation;
- (void)requestPTTPresentation:(int64_t)presentation forCall:(id)call;
- (void)requestPresentationForCall:(id)call dialRequest:(id)request tappedPill:(BOOL)pill;
- (void)requestPresentationForScreenTime;
- (void)requestScreeningSceneIfNeeded:(id)needed;
- (void)requestSpringBoardPresentationForCall:(id)call dialRequest:(id)request tappedPill:(BOOL)pill;
- (void)requestSpringBoardPresentationForCallDetailsView;
- (void)requestSpringBoardPresentationForSOS;
- (void)requestSpringBoardPresentationForScreenSharingAsPiP:(BOOL)p;
- (void)requestSpringBoardPresentationForScreenSharingBroadcaster:(id)broadcaster;
- (void)requestSpringBoardPresentationForScreenTime;
- (void)requestWaitOnHoldBannerPresentation;
- (void)revokeAndRemoveBackgroundPiPAuthorizationForSceneTypeIfNeeded:(unint64_t)needed;
- (void)routesChangedForRouteController:(id)controller;
- (void)screenSharingInteractionController:(id)controller didUpdateRemoteControlStatus:(BOOL)status;
- (void)screenSharingStateMonitor:(id)monitor didUpdateScreenSharingBroadcastingState:(BOOL)state;
- (void)screenSharingStateMonitor:(id)monitor didUpdateScreenSharingState:(BOOL)state;
- (void)setActivationContext:(id)context;
- (void)setAllowsCarPlayBanners:(BOOL)banners;
- (void)setIsPresentingAmbient:(BOOL)ambient;
- (void)setMostRecentlyDisconnectedAudioCall:(id)call;
- (void)shouldHandleMRCommand:(unsigned int)command completion:(id)completion;
- (void)shouldHandleMRCommand:(unsigned int)command sourceIdentifier:(id)identifier completion:(id)completion;
- (void)showBannerIfNecessaryForHandoffEligibleConversation;
- (void)showCallControlsForCurrentContext;
- (void)showCarPlayUIWithActivation:(BOOL)activation;
- (void)showOrCreateCallForConversationRequest:(id)request;
- (void)smartHoldSessionChanged:(id)changed;
- (void)startOrResetTimerForDuration:(double)duration;
- (void)startSOSFlowWithActivationReason:(id)reason;
- (void)startScreenTimeFlowWithURL:(id)l;
- (void)toggleMute:(id)mute;
- (void)transitionFromAmbientScene;
- (void)transitionScenetoOverlayAndDismissCMASAlerts:(BOOL)alerts;
- (void)updateCallsIfNeeded;
- (void)updateDialRequestAccountIfNecessary:(id)necessary;
- (void)updatePrefersBannersHiddenFromClonedDisplay;
- (void)updatePresentationIfNecessaryForGreenTea3PCall:(id)call;
- (void)updateRemoteAlertStateIfNecessaryForCall:(id)call;
- (void)updateiPadMenuBarApplicationName:(id)name;
- (void)videoCallStatusChanged:(id)changed;
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

+ (BOOL)isExpanseMessagesJoinRequest:(id)request
{
  requestCopy = request;
  v4 = sub_100009BF0(requestCopy);

  return v4 & 1;
}

- (BOOL)hasExistingDismissedInCallScene
{
  if (![(ICSApplicationDelegate *)self hasActiveOrPendingInCallPresentation])
  {
    return 0;
  }

  currentInCallScene = [(ICSApplicationDelegate *)self currentInCallScene];
  if (currentInCallScene)
  {
    currentInCallScene2 = [(ICSApplicationDelegate *)self currentInCallScene];
    v5 = [currentInCallScene2 presentationMode] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasActiveOrPendingInCallPresentation
{
  sceneManager = [(ICSApplicationDelegate *)self sceneManager];
  v3 = [sceneManager hasPendingOrExistingSceneOfType:0];

  return v3;
}

- (BOOL)hasExistingFullScreenInCallScene
{
  if (![(ICSApplicationDelegate *)self hasActiveOrPendingInCallPresentation])
  {
    return 0;
  }

  currentInCallScene = [(ICSApplicationDelegate *)self currentInCallScene];
  if (currentInCallScene)
  {
    currentInCallScene2 = [(ICSApplicationDelegate *)self currentInCallScene];
    v5 = [currentInCallScene2 presentationMode] == 2;
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
  currentAudioAndVideoCallCount = [v3 currentAudioAndVideoCallCount];

  if (!currentAudioAndVideoCallCount)
  {
    v5 = +[TUCallCenter sharedInstance];
    conversationManager = [v5 conversationManager];
    handoffEligibleConversation = [conversationManager handoffEligibleConversation];

    if (handoffEligibleConversation)
    {
      [(ICSApplicationDelegate *)self requestHandoffEligibleConversationPresentation];
    }
  }
}

- (SBSUIInCallWindowScene)currentInCallScene
{
  sceneManager = [(ICSApplicationDelegate *)self sceneManager];
  callScene = [sceneManager callScene];

  return callScene;
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
  answeringMachine = [(ICSApplicationDelegate *)self answeringMachine];
  isEnabled = [answeringMachine isEnabled];

  return isEnabled;
}

- (void)updateCallsIfNeeded
{
  possibleInactiveDate = [(ICSApplicationDelegate *)self possibleInactiveDate];

  if (possibleInactiveDate)
  {
    v4 = +[NSDate now];
    possibleInactiveDate2 = [(ICSApplicationDelegate *)self possibleInactiveDate];
    [v4 timeIntervalSinceDate:possibleInactiveDate2];
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
  featureFlags = [(PHApplicationDelegate *)self featureFlags];
  supportsScreenSharing = [featureFlags supportsScreenSharing];

  if (supportsScreenSharing)
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
  screenSharingMonitorFactory = [(ICSApplicationDelegate *)self screenSharingMonitorFactory];
  sharedMonitor = [screenSharingMonitorFactory sharedMonitor];
  isBroadcastingScreenSharing = [sharedMonitor isBroadcastingScreenSharing];

  screenSharingInteractionControllerFactory = [(ICSApplicationDelegate *)self screenSharingInteractionControllerFactory];
  sharedController = [screenSharingInteractionControllerFactory sharedController];
  remoteControlStatus = [sharedController remoteControlStatus];

  if (remoteControlStatus == 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = isBroadcastingScreenSharing;
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

    if (isBroadcastingScreenSharing)
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
    if (remoteControlStatus == 2)
    {
      v11 = @"YES";
    }

    *&v16[22] = 2114;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Screen sharing callScene setPrefersBannersHiddenFromClonedDisplay: %{public}@ (isBroadcastingScreenSharing: %{public}@ isUnderRemoteControl: %{public}@)", v16, 0x20u);
  }

  v14 = [(ICSApplicationDelegate *)self sceneManager:*v16];
  callScene = [v14 callScene];
  [callScene setPrefersBannersHiddenFromClonedDisplay:v9];
}

- (void)dismissScreenSharingBroadcasterSession
{
  featureFlags = [(PHApplicationDelegate *)self featureFlags];
  screenSharingDrawToHighlightEnabled = [featureFlags screenSharingDrawToHighlightEnabled];

  if (screenSharingDrawToHighlightEnabled)
  {
    sceneManager = [(ICSApplicationDelegate *)self sceneManager];
    screenSharingBroadcasterScene = [sceneManager screenSharingBroadcasterScene];

    v7 = sub_100009960();
    v8 = v7;
    if (screenSharingBroadcasterScene)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Dismissing Sharing Broadcasing scene.", v12, 2u);
      }

      v9 = +[UIApplication sharedApplication];
      session = [screenSharingBroadcasterScene session];
      [v9 requestSceneSessionDestruction:session options:0 errorHandler:&stru_100357C08];
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
    carPlayServicesController = sub_100004F84();
    if (os_log_type_enabled(carPlayServicesController, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, carPlayServicesController, OS_LOG_TYPE_DEFAULT, "Ignoring CarPlay assertion invalidation request", v5, 2u);
    }
  }

  else
  {
    carPlayServicesController = [(ICSApplicationDelegate *)self carPlayServicesController];
    [carPlayServicesController invalidateAssertion];
  }
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  applicationCopy = application;
  optionsCopy = options;
  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v99 = applicationCopy;
    v100 = 2112;
    v101 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@, didFinishLaunchingWithOptions: %@", buf, 0x16u);
  }

  v95.receiver = self;
  v95.super_class = ICSApplicationDelegate;
  v83 = [(PHApplicationDelegate *)&v95 application:applicationCopy didFinishLaunchingWithOptions:optionsCopy];
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
      answeringMachine = [(ICSApplicationDelegate *)self answeringMachine];
      v18 = answeringMachine == 0;

      if (!v18)
      {
LABEL_8:
        featureFlags = [(PHApplicationDelegate *)self featureFlags];
        waitOnHoldEnabled = [featureFlags waitOnHoldEnabled];

        if (waitOnHoldEnabled)
        {
          makeWaitOnHoldService = [(ICSApplicationDelegate *)self makeWaitOnHoldService];
          [(ICSApplicationDelegate *)self setWaitOnHoldService:makeWaitOnHoldService];
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
        sceneManager = [(ICSApplicationDelegate *)self sceneManager];
        v33 = [(ICSAmbientActivityController *)v29 initWithCallCenter:v30 notificationCenter:v31 sceneManager:sceneManager];
        ambientActivityController = self->_ambientActivityController;
        self->_ambientActivityController = v33;

        v35 = +[TUCallCenter sharedInstance];
        frontmostAudioOrVideoCall = [v35 frontmostAudioOrVideoCall];

        [(ICSApplicationDelegate *)self updateRemoteAlertStateIfNecessaryForCall:frontmostAudioOrVideoCall];
        if (!frontmostAudioOrVideoCall)
        {
          [(ICSApplicationDelegate *)self showBannerIfNecessaryForHandoffEligibleConversation];
        }

        v36 = +[TUCallCenter sharedInstance];
        callServicesClientCapabilities = [v36 callServicesClientCapabilities];
        [callServicesClientCapabilities setWantsCallStopStreamingOnInvalidation:1];

        v38 = +[TUCallCenter sharedInstance];
        callServicesClientCapabilities2 = [v38 callServicesClientCapabilities];
        [callServicesClientCapabilities2 setWantsCallNotificationsDisabledWhileSuspended:1];

        v40 = +[TUCallCenter sharedInstance];
        callServicesClientCapabilities3 = [v40 callServicesClientCapabilities];
        [callServicesClientCapabilities3 save];

        v42 = +[TUCallCenter sharedInstance];
        routeController = [v42 routeController];
        [routeController addDelegate:self];

        featureFlags2 = [(PHApplicationDelegate *)self featureFlags];
        if ([featureFlags2 conversationOneToOneModeEnabled])
        {
          v45 = 2;
        }

        else
        {
          v45 = 0;
        }

        v46 = +[TUCallCenter sharedInstance];
        conversationManager = [v46 conversationManager];
        [conversationManager setNonSessionBackedConversationCreationMode:v45];

        v48 = +[TUCallCenter sharedInstance];
        conversationManager2 = [v48 conversationManager];
        [conversationManager2 setNonSessionBackedConversationCreationQueue:&_dispatch_main_q];

        v50 = [[TUUIXPCHost alloc] initWithDelegate:self delegateQueue:&_dispatch_main_q];
        [(ICSApplicationDelegate *)self setXpcHost:v50];

        v51 = +[TUCallCenter sharedInstance];
        xpcHost = [(ICSApplicationDelegate *)self xpcHost];
        endpoint = [xpcHost endpoint];
        [v51 registerAnonymousXPCEndpoint:endpoint];

        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v54 = +[TUCallCenter sharedInstance];
        currentVideoCalls = [v54 currentVideoCalls];

        v56 = [currentVideoCalls countByEnumeratingWithState:&v91 objects:v97 count:16];
        if (v56)
        {
          v57 = *v92;
          do
          {
            for (i = 0; i != v56; i = i + 1)
            {
              if (*v92 != v57)
              {
                objc_enumerationMutation(currentVideoCalls);
              }

              v59 = *(*(&v91 + 1) + 8 * i);
              if (([v59 isConversation] & 1) == 0)
              {
                v60 = +[TUCallCenter sharedInstance];
                conversationManager3 = [v60 conversationManager];
                [conversationManager3 updateConversationsNotBackedByGroupSessionWithCall:v59];
              }
            }

            v56 = [currentVideoCalls countByEnumeratingWithState:&v91 objects:v97 count:16];
          }

          while (v56);
        }

        v62 = +[TUCallCenter sharedInstance];
        conversationManager4 = [v62 conversationManager];
        [conversationManager4 addDelegate:self queue:&_dispatch_main_q];

        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v64 = +[TUCallCenter sharedInstance];
        conversationManager5 = [v64 conversationManager];
        activeConversations = [conversationManager5 activeConversations];

        v67 = [activeConversations countByEnumeratingWithState:&v87 objects:v96 count:16];
        if (v67)
        {
          v68 = *v88;
          do
          {
            for (j = 0; j != v67; j = j + 1)
            {
              if (*v88 != v68)
              {
                objc_enumerationMutation(activeConversations);
              }

              v70 = *(*(&v87 + 1) + 8 * j);
              v71 = +[TUCallCenter sharedInstance];
              conversationManager6 = [v71 conversationManager];
              [(ICSApplicationDelegate *)self conversationManager:conversationManager6 addedActiveConversation:v70];
            }

            v67 = [activeConversations countByEnumeratingWithState:&v87 objects:v96 count:16];
          }

          while (v67);
        }

        [(ICSApplicationDelegate *)self prewarmBannerPresentationManager];
        featureFlags3 = [(PHApplicationDelegate *)self featureFlags];
        nameAndPhotoEnabled = [featureFlags3 nameAndPhotoEnabled];

        if (nameAndPhotoEnabled)
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

- (BOOL)application:(id)application openURL:(id)l options:(id)options
{
  applicationCopy = application;
  lCopy = l;
  optionsCopy = options;
  v11 = sub_100004F84();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v79 = applicationCopy;
    v80 = 2112;
    v81 = lCopy;
    v82 = 2112;
    v83 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@, url: %@ options: %@", buf, 0x20u);
  }

  v12 = sub_100004F84();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    isLaunchForScreeningURL = [lCopy isLaunchForScreeningURL];
    v14 = @"NO";
    if (isLaunchForScreeningURL)
    {
      v14 = @"YES";
    }

    *buf = 138412290;
    v79 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Are we launched for screening: %@", buf, 0xCu);
  }

  v15 = +[TUCallCenter sharedInstance];
  [v15 fetchCurrentCalls];

  if ([(__CFString *)applicationCopy applicationState])
  {
    v16 = sub_100004F84();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Update Inactive Date", buf, 2u);
    }

    [(ICSApplicationDelegate *)self _updateInactiveDate];
  }

  if ([(ICSApplicationDelegate *)self isSOSCall:lCopy])
  {
    v17 = sub_100004F84();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "SOS url detected", buf, 2u);
    }

    sos_urlActivationReason = [lCopy sos_urlActivationReason];
    [(ICSApplicationDelegate *)self startSOSFlowWithActivationReason:sos_urlActivationReason];
    goto LABEL_15;
  }

  scheme = [lCopy scheme];
  v22 = [scheme isEqualToString:@"dialIntervention"];

  if (v22)
  {
    featureFlags = [(PHApplicationDelegate *)self featureFlags];
    nudityDetectionEnabled = [featureFlags nudityDetectionEnabled];

    if (nudityDetectionEnabled)
    {
      v73[0] = _NSConcreteStackBlock;
      v73[1] = 3221225472;
      v73[2] = sub_100077D48;
      v73[3] = &unk_1003577F0;
      v73[4] = self;
      v74 = applicationCopy;
      v75 = lCopy;
      v76 = optionsCopy;
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

  if ([lCopy isShowInCallUIURL] || objc_msgSend(lCopy, "isShowKeypadURL"))
  {
    goto LABEL_23;
  }

  if ([lCopy isShowSystemCallControlsURL])
  {
    featureFlags2 = [(PHApplicationDelegate *)self featureFlags];
    if (([featureFlags2 waitOnHoldEnabled] & 1) == 0)
    {

LABEL_38:
      if (!TUCallScreeningEnabled() || (+[TUCallCenter sharedInstance](TUCallCenter, "sharedInstance"), v30 = objc_claimAutoreleasedReturnValue(), [v30 frontmostCall], v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "isScreening"), v31, v30, !v32))
      {
        if ([(ICSApplicationDelegate *)self showSystemCallControlsURL:lCopy])
        {
          goto LABEL_16;
        }

        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v27 = +[TUCallCenter sharedInstance];
    frontmostCall = [v27 frontmostCall];
    isWaitOnHoldActive = [frontmostCall isWaitOnHoldActive];

    if (!isWaitOnHoldActive)
    {
      goto LABEL_38;
    }

LABEL_23:
    if ([(ICSApplicationDelegate *)self openUserInterfaceURL:lCopy])
    {
      goto LABEL_16;
    }

LABEL_24:
    v63.receiver = self;
    v63.super_class = ICSApplicationDelegate;
    v19 = [(PHApplicationDelegate *)&v63 application:applicationCopy openURL:lCopy options:optionsCopy];
    goto LABEL_17;
  }

  if ([lCopy isShowHandoffEligibleNearbyURL] || objc_msgSend(lCopy, "isShowLagunaPullConversationURL"))
  {
    goto LABEL_23;
  }

  if ([lCopy isShowScreenSharingURL])
  {
    if ([(ICSApplicationDelegate *)self showScreenSharingURL:lCopy])
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  if ([lCopy isShowIncomingTransmissionNoticeURL] || objc_msgSend(lCopy, "isShowAccessoryButtonEventsNoticeURL"))
  {
    goto LABEL_23;
  }

  if ([lCopy isUpdateForegroundAppURL])
  {
    if ([(ICSApplicationDelegate *)self updateForegroundAppURL:lCopy])
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  if ([lCopy isRefreshShareableContentURL])
  {
    if ([(ICSApplicationDelegate *)self refreshShareableContentURL:lCopy])
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  if ([lCopy isFaceTimeMultiwayURL])
  {
    v33 = [[TUJoinConversationRequest alloc] initWithURL:lCopy];
    if (!v33)
    {
      goto LABEL_24;
    }

    conversationLinkURLForOpenLinkURL = v33;
    featureFlags3 = [(PHApplicationDelegate *)self featureFlags];
    nudityDetectionEnabled2 = [featureFlags3 nudityDetectionEnabled];

    if (nudityDetectionEnabled2)
    {
      v69[0] = _NSConcreteStackBlock;
      v69[1] = 3221225472;
      v69[2] = sub_100077DC4;
      v69[3] = &unk_100357818;
      v70 = conversationLinkURLForOpenLinkURL;
      v71 = optionsCopy;
      selfCopy = self;
      sos_urlActivationReason = conversationLinkURLForOpenLinkURL;
      [(ICSApplicationDelegate *)self handleInterventionWithConversationRequestIfNeeded:sos_urlActivationReason continueWith:v69];

LABEL_15:
LABEL_16:
      v19 = 1;
      goto LABEL_17;
    }

    v37 = [optionsCopy objectForKey:_UIApplicationOpenURLOptionsSourceProcessHandleKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = ([conversationLinkURLForOpenLinkURL showUIPrompt] & 1) != 0 || -[ICSApplicationDelegate shouldShowPromptForProcessHandle:](self, "shouldShowPromptForProcessHandle:", v37);
      [conversationLinkURLForOpenLinkURL setShowUIPrompt:v40];
      v38 = [(ICSApplicationDelegate *)self openJoinConversationRequest:conversationLinkURLForOpenLinkURL];
LABEL_70:
      v41 = v38;

      if (v41)
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }

    answerRequestSourceIdentifier = sub_100004F84();
    if (os_log_type_enabled(answerRequestSourceIdentifier, OS_LOG_TYPE_ERROR))
    {
      sub_100254904();
    }

LABEL_64:

    goto LABEL_24;
  }

  if ([lCopy isFaceTimeOpenLinkURL])
  {
    conversationLinkURLForOpenLinkURL = [lCopy conversationLinkURLForOpenLinkURL];
    v37 = [TUConversationLink conversationLinkForURL:conversationLinkURLForOpenLinkURL];
    v38 = [(ICSApplicationDelegate *)self application:applicationCopy openJoinConversationRequestForConversationLink:v37 webpageURL:lCopy];
    goto LABEL_70;
  }

  if ([lCopy isLaunchForIncomingCallURL])
  {
    goto LABEL_23;
  }

  if ([lCopy isAnswerRequestURL])
  {
    conversationLinkURLForOpenLinkURL = +[TUCallCenter sharedInstance];
    v37 = [(ICSApplicationDelegate *)self incomingVideoCallUsingCallContainer:conversationLinkURLForOpenLinkURL];
    answerRequestSourceIdentifier = [lCopy answerRequestSourceIdentifier];
    [(ICSApplicationDelegate *)self handleHeadsetButtonPressForCall:v37 sourceIdentifier:answerRequestSourceIdentifier urlOptions:optionsCopy];
    goto LABEL_64;
  }

  if ([lCopy isFaceTimeNeedsBackgroundLaunchURL])
  {
    if ([(ICSApplicationDelegate *)self handleBackgroundLaunchURL:lCopy])
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  if ([lCopy isVideoMessagePlaybackURL])
  {
    if ([(ICSApplicationDelegate *)self openVideoMessagePlaybackURL:lCopy])
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  if ([lCopy isLaunchForScreeningURL])
  {
    v42 = sub_100004F84();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      answeringMachine = [(ICSApplicationDelegate *)self answeringMachine];
      *buf = 138412290;
      v79 = answeringMachine;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Launched for screening %@", buf, 0xCu);
    }

    sos_urlActivationReason = [(ICSApplicationDelegate *)self answeringMachine];
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_100077EC4;
    v68[3] = &unk_100357840;
    v68[4] = self;
    [sos_urlActivationReason openURL:lCopy completion:v68];
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

    v51 = [[TUDialRequest alloc] initWithURL:lCopy];
    v52 = sub_100004F84();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v79 = v51;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Running test, made dial request: %@", buf, 0xCu);
    }

    v53 = +[UIApplication sharedApplication];
    [v53 finishedSubTest:@"CreateDialRequest" forTest:qword_1003B8808];

    applicationDelegateHelper = [(ICSApplicationDelegate *)self applicationDelegateHelper];
    applicationDelegateHelper2 = [(ICSApplicationDelegate *)self applicationDelegateHelper];
    v56 = [applicationDelegateHelper openDialRequestIfNecessary:v51 options:optionsCopy bypassUIPromptIfDefaultProvider:{objc_msgSend(applicationDelegateHelper2, "isDefaultOrTelephonyScheme:", lCopy)}];

    if (v56)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  v57 = [[TUDialRequest alloc] initWithURL:lCopy];
  featureFlags4 = [(PHApplicationDelegate *)self featureFlags];
  nudityDetectionEnabled3 = [featureFlags4 nudityDetectionEnabled];

  if (nudityDetectionEnabled3)
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
      v65 = applicationCopy;
      v66 = lCopy;
      v67 = optionsCopy;
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

    v19 = [(ICSApplicationDelegate *)self openDialRequest:v57 application:applicationCopy url:lCopy options:optionsCopy];
  }

LABEL_17:
  return v19;
}

- (BOOL)openDialRequest:(id)request application:(id)application url:(id)url options:(id)options
{
  requestCopy = request;
  applicationCopy = application;
  urlCopy = url;
  optionsCopy = options;
  featureFlags = [(PHApplicationDelegate *)self featureFlags];
  defaultCallingAppsGracefulFallbackEnabled = [featureFlags defaultCallingAppsGracefulFallbackEnabled];

  if (defaultCallingAppsGracefulFallbackEnabled)
  {
    if (requestCopy)
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000781C0;
      v22[3] = &unk_100357868;
      v22[4] = self;
      v23 = optionsCopy;
      v24 = urlCopy;
      [(ICSApplicationDelegate *)self dialRequestForDefaultCallingConfiguredDialRequest:requestCopy completion:v22];

      v16 = 1;
    }

    else
    {
      v25.receiver = self;
      v25.super_class = ICSApplicationDelegate;
      v16 = [(PHApplicationDelegate *)&v25 application:applicationCopy openURL:urlCopy options:optionsCopy];
    }
  }

  else
  {
    dialRequestWithURLStripping = [requestCopy dialRequestWithURLStripping];

    applicationDelegateHelper = [(ICSApplicationDelegate *)self applicationDelegateHelper];
    v19 = [applicationDelegateHelper configureAndOpenDialRequestForDualSIMIfNecessary:dialRequestWithURLStripping options:optionsCopy url:urlCopy];

    if (v19)
    {
      v16 = 1;
    }

    else
    {
      v21.receiver = self;
      v21.super_class = ICSApplicationDelegate;
      v16 = [(PHApplicationDelegate *)&v21 application:applicationCopy openURL:urlCopy options:optionsCopy];
    }

    requestCopy = dialRequestWithURLStripping;
  }

  return v16;
}

- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler
{
  applicationCopy = application;
  activityCopy = activity;
  v9 = sub_100004F84();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v56 = applicationCopy;
    v57 = 2112;
    v58 = activityCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@, continueUserActivity: %@", buf, 0x16u);
  }

  v10 = +[TUCallCenter sharedInstance];
  [v10 fetchCurrentCalls];

  if ([applicationCopy applicationState])
  {
    v11 = sub_100004F84();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Update Inactive Date", buf, 2u);
    }

    [(ICSApplicationDelegate *)self _updateInactiveDate];
  }

  activityType = [activityCopy activityType];
  if ([activityType isEqual:NSUserActivityTypeBrowsingWeb])
  {
    webpageURL = [activityCopy webpageURL];

    if (webpageURL)
    {
      webpageURL2 = [activityCopy webpageURL];
      intentResponse = [TUConversationLink conversationLinkForURL:webpageURL2];

      webpageURL3 = [activityCopy webpageURL];
      v17 = [(ICSApplicationDelegate *)self application:applicationCopy openJoinConversationRequestForConversationLink:intentResponse webpageURL:webpageURL3];
LABEL_62:

      goto LABEL_63;
    }
  }

  else
  {
  }

  featureFlags = [(PHApplicationDelegate *)self featureFlags];
  if ([featureFlags conversationHandoffEnabled])
  {
    activityType2 = [activityCopy activityType];
    v20 = [activityType2 isEqualToString:TUUserActivityTypeConversationHandoff];

    if (v20)
    {
      intentResponse = +[TUCallCenter sharedInstance];
      [intentResponse continueHandoffEligibleConversation];
      v17 = 1;
      goto LABEL_63;
    }
  }

  else
  {
  }

  activityType3 = [activityCopy activityType];
  v22 = [activityType3 isEqualToString:TUUserActivityTypeJoinConversationRequest];

  if (!v22)
  {
    interaction = [activityCopy interaction];
    intentResponse = [interaction intentResponse];

    dialRequestAttachment = [activityCopy dialRequestAttachment];
    v28 = dialRequestAttachment;
    if (dialRequestAttachment)
    {
      webpageURL3 = dialRequestAttachment;
    }

    else
    {
      userActivity = [intentResponse userActivity];
      webpageURL3 = [userActivity dialRequestAttachment];
    }

    joinRequestAttachment = [activityCopy joinRequestAttachment];
    v32 = joinRequestAttachment;
    if (joinRequestAttachment)
    {
      joinRequestAttachment2 = joinRequestAttachment;
    }

    else
    {
      userActivity2 = [intentResponse userActivity];
      joinRequestAttachment2 = [userActivity2 joinRequestAttachment];
    }

    if (webpageURL3)
    {
      v35 = sub_100004F84();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v56 = webpageURL3;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Opening TUDialRequest from NSUserActivity attachment: %@", buf, 0xCu);
      }

      if (![webpageURL3 originatingUIType])
      {
        v36 = sub_100004F84();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Setting dialRequest originatingUIType to Siri", buf, 2u);
        }

        [webpageURL3 setOriginatingUIType:11];
      }

      originatingUIType = [webpageURL3 originatingUIType];
      v38 = +[BSProcessHandle processHandle];
      v17 = [(ICSApplicationDelegate *)self openDialRequest:webpageURL3 forProcessHandle:v38];

LABEL_44:
      if (originatingUIType == 11)
      {
        +[TPTipsHelper donateEventOriginatedCallWithSiri];
      }

      goto LABEL_61;
    }

    if (joinRequestAttachment2)
    {
      v39 = sub_100004F84();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v56 = joinRequestAttachment2;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Opening TUJoinConversationRequest from NSUserActivity attachment: %@", buf, 0xCu);
      }

      if (![joinRequestAttachment2 originatingUIType])
      {
        v40 = sub_100004F84();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Setting joinRequest originatingUIType to Siri", buf, 2u);
        }

        [joinRequestAttachment2 setOriginatingUIType:11];
      }

      originatingUIType = [joinRequestAttachment2 originatingUIType];
      v17 = [(ICSApplicationDelegate *)self openJoinConversationRequest:joinRequestAttachment2];
      goto LABEL_44;
    }

    v41 = [[TUJoinConversationRequest alloc] initWithUserActivity:activityCopy];
    v42 = v41;
    if (v41)
    {
      remoteMembers = [v41 remoteMembers];
      v44 = [remoteMembers count];

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

    activityType4 = [activityCopy activityType];
    if (([activityType4 isEqualToString:TUDialRequestUserActivityTypeCall] & 1) == 0)
    {
      activityType5 = [activityCopy activityType];
      if (![activityType5 isEqualToString:TUDialRequestUserActivityTypeAudioCall])
      {
        activityType6 = [activityCopy activityType];
        v53 = [activityType6 isEqualToString:TUDialRequestUserActivityTypeVideoCall];

        if ((v53 & 1) == 0)
        {
          v17 = 0;
LABEL_60:

LABEL_61:
          goto LABEL_62;
        }

LABEL_55:
        v48 = [[TUDialRequest alloc] initWithUserActivity:activityCopy];
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

  userInfo = [activityCopy userInfo];
  intentResponse = [userInfo objectForKeyedSubscript:TUUserActivityJoinConversationRequestUserInfoKey];

  v54 = 0;
  v24 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:intentResponse error:&v54];
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

- (BOOL)application:(id)application openJoinConversationRequestForConversationLink:(id)link webpageURL:(id)l
{
  applicationCopy = application;
  linkCopy = link;
  lCopy = l;
  if (linkCopy)
  {
    objc_initWeak(&location, self);
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100078E68;
    v38[3] = &unk_100357890;
    objc_copyWeak(&v41, &location);
    v39 = linkCopy;
    selfCopy = self;
    v11 = objc_retainBlock(v38);
    v12 = +[FTDeviceSupport sharedInstance];
    faceTimeAvailable = [v12 faceTimeAvailable];

    if (faceTimeAvailable)
    {
      featureFlags = [(PHApplicationDelegate *)self featureFlags];
      if ([featureFlags greenTeaLinksEnabled])
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
          hasCurrentCalls = [v19 hasCurrentCalls];

          if (!hasCurrentCalls)
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

          applicationState = [v16 applicationState];
          isInstalled = [applicationState isInstalled];

          if (isInstalled)
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

- (void)setMostRecentlyDisconnectedAudioCall:(id)call
{
  callCopy = call;
  if (self->_mostRecentlyDisconnectedAudioCall != callCopy)
  {
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifierUUID = [(TUCall *)callCopy uniqueProxyIdentifierUUID];
      v10 = 138412290;
      v11 = uniqueProxyIdentifierUUID;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setMostRecentlyDisconnectedAudioCall: %@", &v10, 0xCu);
    }

    v8 = self->_mostRecentlyDisconnectedAudioCall;
    objc_storeStrong(&self->_mostRecentlyDisconnectedAudioCall, call);
    if (!callCopy)
    {
      v9 = +[NSNotificationCenter defaultCenter];
      [v9 postNotificationName:@"ICSApplicationDelegateMostRecentlyDisconnectedAudioCallDidClearNotification" object:v8];
    }
  }
}

- (id)getEvolvedSubscriptionLabelID:(id)d error:(id *)error
{
  dCopy = d;
  telephonyClient = [objc_opt_class() telephonyClient];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    telephonyClient2 = [objc_opt_class() telephonyClient];
    v9 = [telephonyClient2 getEvolvedSubscriptionLabelID:dCopy error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)showCarPlayUIWithActivation:(BOOL)activation
{
  activationCopy = activation;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "", v7, 2u);
  }

  carPlayServicesController = [(ICSApplicationDelegate *)self carPlayServicesController];
  [carPlayServicesController acquireAssertionWithActivation:activationCopy];
}

- (void)setAllowsCarPlayBanners:(BOOL)banners
{
  bannersCopy = banners;
  carPlayServicesController = [(ICSApplicationDelegate *)self carPlayServicesController];
  [carPlayServicesController setAllowsBanners:bannersCopy];
}

- (void)setActivationContext:(id)context
{
  contextCopy = context;
  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = contextCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updated activation context: %@", &v8, 0xCu);
  }

  if (self->_activationContext != contextCopy)
  {
    objc_storeStrong(&self->_activationContext, context);
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 postNotificationName:@"ICSActivationContextDidChangeNotification" object:0];
  }
}

- (void)prewarmBannerPresentationManager
{
  bannerPresentationManager = [(ICSApplicationDelegate *)self bannerPresentationManager];
}

- (id)screenSharingRootViewController
{
  sceneManager = [(ICSApplicationDelegate *)self sceneManager];
  v4 = [sceneManager sceneOfType:1];

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

- (void)initiateCallForDialRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = sub_100004F84();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v29 = requestCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "'%@'", buf, 0xCu);
  }

  v9 = sub_100004F84();
  v10 = v9;
  if (!requestCopy)
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
    *v29 = requestCopy;
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

    v10 = sub_1000799C0(v21, requestCopy);
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

  v10 = sub_1000799C0(v17, requestCopy);
  if (!v10)
  {
LABEL_17:
    v24 = sub_100004F84();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      status = [v10 status];
      *buf = 67109376;
      *v29 = v10 == 0;
      *&v29[4] = 1024;
      *&v29[6] = status == 6;
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
    [(ICSApplicationDelegate *)self requestPresentationForCall:v10 dialRequest:requestCopy];
  }

  v27 = 1;
LABEL_21:

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v27);
  }
}

- (void)showOrCreateCallForConversationRequest:(id)request
{
  requestCopy = request;
  v4 = +[TUCallCenter sharedInstance];
  v5 = [v4 callMatchingConversationRequest:requestCopy];

  v6 = +[TUCallCenter sharedInstance];
  v7 = [v6 activeConversationForCall:v5];

  if (v5 && [v7 resolvedAudioVideoMode] == 2 && !-[ICSApplicationDelegate isPresentingFullScreenCallUI](self, "isPresentingFullScreenCallUI"))
  {
    currentInCallScene = [(ICSApplicationDelegate *)self currentInCallScene];
    [currentInCallScene ics_requestTransitionToPresentationMode:2];
  }

  else
  {
    [(ICSApplicationDelegate *)self initiateCallForConversationRequest:requestCopy];
  }
}

- (void)initiateCallForConversationRequest:(id)request
{
  requestCopy = request;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [requestCopy UUID];
    *buf = 138412290;
    v28[0] = uUID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "conversationRequestUUID=%@", buf, 0xCu);
  }

  uUID2 = [requestCopy UUID];
  v8 = [uUID2 debugDescription];

  v9 = [requestCopy debugDescription];
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

  [(ICSApplicationDelegate *)self setCurrentJoinConversationRequest:requestCopy];
  v16 = +[TUCallCenter sharedInstance];
  v17 = [v16 joinConversationWithConversationRequest:requestCopy];

  if ([v17 status] == 6)
  {
    v18 = sub_100004F84();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      status = [v17 status];
      *buf = 67109376;
      LODWORD(v28[0]) = v17 == 0;
      WORD2(v28[0]) = 1024;
      *(v28 + 6) = status == 6;
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

- (BOOL)isAppBlockedFromBypassingPrompt:(id)prompt
{
  promptCopy = prompt;
  isAppBlockedFromBypassingPrompt = [(ICSApplicationDelegate *)self isAppBlockedFromBypassingPrompt];
  v6 = (isAppBlockedFromBypassingPrompt)[2](isAppBlockedFromBypassingPrompt, promptCopy);

  return v6;
}

- (BOOL)isDefaultCallingApp:(id)app
{
  appCopy = app;
  isDefaultCallingAppBlock = [(ICSApplicationDelegate *)self isDefaultCallingAppBlock];
  v6 = (isDefaultCallingAppBlock)[2](isDefaultCallingAppBlock, appCopy);

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

- (BOOL)isDefaultDialingApp:(id)app
{
  appCopy = app;
  isDefaultDialingAppBlock = [(ICSApplicationDelegate *)self isDefaultDialingAppBlock];
  v6 = (isDefaultDialingAppBlock)[2](isDefaultDialingAppBlock, appCopy);

  return v6;
}

- (void)configureDialRequest:(id)request forProcessHandle:(id)handle bypassUIPromptIfDefaultProvider:(BOOL)provider
{
  providerCopy = provider;
  requestCopy = request;
  handleCopy = handle;
  bundleIdentifier = [handleCopy bundleIdentifier];
  if ([bundleIdentifier containsString:@"com.apple.mobilesafari"])
  {
    LODWORD(v11) = 1;
  }

  else
  {
    bundleIdentifier2 = [handleCopy bundleIdentifier];
    if ([bundleIdentifier2 containsString:@"com.apple.SafariViewService"])
    {
      LODWORD(v11) = 1;
    }

    else
    {
      bundleIdentifier3 = [handleCopy bundleIdentifier];
      if ([bundleIdentifier3 containsString:@"com.apple.Keynote"])
      {
        LODWORD(v11) = 1;
      }

      else
      {
        bundleIdentifier4 = [handleCopy bundleIdentifier];
        if ([bundleIdentifier4 containsString:@"com.apple.camera"])
        {
          LODWORD(v11) = 1;
        }

        else
        {
          bundleIdentifier5 = [handleCopy bundleIdentifier];
          LODWORD(v11) = [bundleIdentifier5 containsString:@"com.apple.BarcodeScanner"];
        }
      }
    }
  }

  v16 = [requestCopy originatingUIType] == 8 || objc_msgSend(requestCopy, "originatingUIType") == 9 || objc_msgSend(requestCopy, "originatingUIType") == 1;
  service = [requestCopy service];
  v26 = [(ICSApplicationDelegate *)self isDefaultDialingApp:handleCopy];
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

    v24 = requestCopy;
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
    if ([(ICSApplicationDelegate *)self isDefaultCallingApp:handleCopy, v24])
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
    requestCopy = v25;
    v31 = 2112;
    v32 = v21;
    v33 = 2112;
    v34 = v22;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "configureDialRequest:forProcessHandle:bypassUIPromptIfDefaultProvider: processShouldForcePrompt: (%@), isFromMobilePhone: (%@), isDefaultCallingApp: (%@), isDefaultDialingApp: (%@)", buf, 0x2Au);
  }

  if ((v11 & 1) == 0 && (service != 1 || !v16) | v26 & 1 && ![(ICSApplicationDelegate *)self isAppBlockedFromBypassingPrompt:handleCopy])
  {
    if (providerCopy && [(ICSApplicationDelegate *)self isDefaultCallingApp:handleCopy])
    {
      v23 = 0;
      goto LABEL_35;
    }

    if ([requestCopy bypassIntervention])
    {
      goto LABEL_36;
    }

    if (([requestCopy showUIPrompt] & 1) == 0)
    {
      v23 = [(ICSApplicationDelegate *)self shouldShowPromptForProcessHandle:handleCopy];
      goto LABEL_35;
    }
  }

  v23 = 1;
LABEL_35:
  [requestCopy setShowUIPrompt:v23];
LABEL_36:
  [requestCopy setProcessHandle:handleCopy];
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

- (void)isHandleAvailableForFaceTime:(id)time completion:(id)completion
{
  completionCopy = completion;
  timeCopy = time;
  isHandleAvailableForFaceTimeBlock = [(ICSApplicationDelegate *)self isHandleAvailableForFaceTimeBlock];
  isHandleAvailableForFaceTimeBlock[2](isHandleAvailableForFaceTimeBlock, timeCopy, completionCopy);
}

- (void)dialRequestForDefaultCallingConfiguredDialRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if ([requestCopy allowProviderFallback] && (objc_msgSend(requestCopy, "provider"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isFaceTimeProvider"), v8, v9))
  {
    dialRequestWithURLStripping = [requestCopy dialRequestWithURLStripping];
    handle = [dialRequestWithURLStripping handle];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10007A95C;
    v16[3] = &unk_100357978;
    v17 = dialRequestWithURLStripping;
    v19 = completionCopy;
    v18 = requestCopy;
    v12 = dialRequestWithURLStripping;
    [(ICSApplicationDelegate *)self isHandleAvailableForFaceTime:handle completion:v16];
  }

  else
  {
    v13 = sub_100004F84();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      allowProviderFallback = [requestCopy allowProviderFallback];
      v15 = @"NO";
      if (allowProviderFallback)
      {
        v15 = @"YES";
      }

      *buf = 138412546;
      v21 = v15;
      v22 = 2112;
      v23 = requestCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Dial request does not allowProviderFallback (%@) or provider is not FaceTime. Returning untouched dialRequest %@", buf, 0x16u);
    }

    (*(completionCopy + 2))(completionCopy, requestCopy);
  }
}

- (BOOL)shouldShowPromptForProcessHandle:(id)handle
{
  handleCopy = handle;
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = handleCopy;
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

        if ([handleCopy hasEntitlement:{*(*(&v14 + 1) + 8 * i), v14}])
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

  bundleIdentifier = [handleCopy bundleIdentifier];
  v12 = [bundleIdentifier isEqualToString:@"com.apple.InCallService.RemotePeoplePicker"];

  return v10 & (v12 ^ 1);
}

- (BOOL)canModifyCallsForProcessHandle:(id)handle
{
  handleCopy = handle;
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = handleCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@", &v11, 0xCu);
  }

  v5 = [handleCopy valueForEntitlement:TUBundleIdentifierCallServicesDaemon];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 containsObject:@"modify-calls"];
  }

  else
  {
    v6 = 0;
  }

  bundleIdentifier = [handleCopy bundleIdentifier];
  if (bundleIdentifier)
  {
    bundleIdentifier2 = [handleCopy bundleIdentifier];
    v9 = [bundleIdentifier2 isEqual:TUBundleIdentifierTelephonyUtilitiesFramework];

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
  sharedMonitor = [(CNKScreenSharingStateMonitorFactory *)self->_screenSharingMonitorFactory sharedMonitor];
  [sharedMonitor addObserver:self];

  sharedController = [(CNKScreenSharingInteractionControllerFactory *)self->_screenSharingInteractionControllerFactory sharedController];
  [sharedController addDelegate:self];

  [v6 addObserver:self selector:"smartHoldSessionChanged:" name:TUCallSmartHoldingSessionChangedNotification object:0];
  [v6 addObserver:self selector:"handleMenuBarTitleForCallUpgradeDowngradeNotification:" name:TUCallUpgradedToVideoNotification object:0];
  [v6 addObserver:self selector:"handleMenuBarTitleForCallUpgradeDowngradeNotification:" name:TUCallDowngradedToAudioNotification object:0];
}

- (void)_willResignFromActive:(id)active
{
  activeCopy = active;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = activeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "application willResignFromActive %@", &v6, 0xCu);
  }

  [(ICSApplicationDelegate *)self _updateInactiveDate];
}

- (void)_didBecomeActive:(id)active
{
  activeCopy = active;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = activeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "application didBecomeActive %@", &v6, 0xCu);
  }

  [(ICSApplicationDelegate *)self updateCallsIfNeeded];
}

- (void)_willConnect:(id)connect
{
  connectCopy = connect;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = connectCopy;
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
  cameraStateMonitor = [(ICSApplicationDelegate *)self cameraStateMonitor];
  [cameraStateMonitor setIsDisplayedInBanner:v11];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007B5DC;
  v9[3] = &unk_1003579A0;
  objc_copyWeak(&v10, &location);
  cameraStateMonitor2 = [(ICSApplicationDelegate *)self cameraStateMonitor];
  [cameraStateMonitor2 setIsDisplayedInMiniWindow:v9];

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

  pillStateMonitor = [(ICSApplicationDelegate *)self pillStateMonitor];
  [pillStateMonitor setIsActiveAndHiddenPictureInPicture:&stru_1003579E0];

  pillStateMonitor2 = [(ICSApplicationDelegate *)self pillStateMonitor];
  [pillStateMonitor2 setHasCurrentCalls:&stru_100357A00];

  pillStateMonitor3 = [(ICSApplicationDelegate *)self pillStateMonitor];
  [pillStateMonitor3 setHasOutstandingPillAssertions:&stru_100357A20];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)callDisplayContextChangedNotification:(id)notification
{
  object = [notification object];
  provider = [object provider];
  if ([provider supportsDynamicSystemUI])
  {
    featureFlags = [(PHApplicationDelegate *)self featureFlags];
    if ([featureFlags groupConversations])
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

  sceneManager = [(ICSApplicationDelegate *)self sceneManager];
  callScene = [sceneManager callScene];

  if ((callScene || HasChinaSKU) && [object status] == 4 && !-[ICSApplicationDelegate hasExistingFullScreenInCallScene](self, "hasExistingFullScreenInCallScene"))
  {
    bannerPresentationManager = [(ICSApplicationDelegate *)self bannerPresentationManager];
    [bannerPresentationManager presentHUDForCurrentContext];
  }
}

- (void)audioCallStatusChanged:(id)changed
{
  changedCopy = changed;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = changedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@", &v6, 0xCu);
  }

  [(ICSApplicationDelegate *)self handleCallStatusChangedNotification:changedCopy];
}

- (void)videoCallStatusChanged:(id)changed
{
  changedCopy = changed;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = changedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@", &v6, 0xCu);
  }

  [(ICSApplicationDelegate *)self handleCallStatusChangedNotification:changedCopy];
}

- (void)handleCallStatusChangedNotification:(id)notification
{
  object = [notification object];
  if (object)
  {
    [(ICSApplicationDelegate *)self callStatusChanged:object];
  }

  _objc_release_x1();
}

- (void)callStatusChanged:(id)changed
{
  changedCopy = changed;
  v5 = [objc_opt_class() callConnected:changedCopy];
  v6 = +[TUCallCenter sharedInstance];
  v7 = [v6 callsPassingTest:&stru_100357A40];
  v8 = [v7 count];

  provider = [changedCopy provider];
  if (([provider supportsDynamicSystemUI] & 1) == 0)
  {
    goto LABEL_6;
  }

  featureFlags = [(PHApplicationDelegate *)self featureFlags];
  if (([featureFlags groupConversations] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  HasChinaSKU = TUDeviceHasChinaSKU();

  if (HasChinaSKU)
  {
    [(ICSApplicationDelegate *)self updatePresentationIfNecessaryForGreenTea3PCall:changedCopy];
  }

LABEL_7:
  v12 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v12 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && _UIEnhancedMainMenuEnabled())
  {
    [(ICSApplicationDelegate *)self updateiPadMenuBarApplicationName:changedCopy];
  }

  connectedCallIdentifiers = [(ICSApplicationDelegate *)self connectedCallIdentifiers];
  uniqueProxyIdentifierUUID = [changedCopy uniqueProxyIdentifierUUID];
  v16 = [connectedCallIdentifiers containsObject:uniqueProxyIdentifierUUID];

  if (v5)
  {
    if ((v16 & 1) == 0)
    {
      connectedCallIdentifiers2 = [(ICSApplicationDelegate *)self connectedCallIdentifiers];
      uniqueProxyIdentifierUUID2 = [changedCopy uniqueProxyIdentifierUUID];
      [connectedCallIdentifiers2 addObject:uniqueProxyIdentifierUUID2];
    }

    p_screenSharingMonitorFactory = &self->_screenSharingMonitorFactory;
    sharedMonitor = [(CNKScreenSharingStateMonitorFactory *)self->_screenSharingMonitorFactory sharedMonitor];
    call = [sharedMonitor call];
    v22 = [changedCopy isEqual:call];

    v23 = changedCopy;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

  else if (v16)
  {
    connectedCallIdentifiers3 = [(ICSApplicationDelegate *)self connectedCallIdentifiers];
    uniqueProxyIdentifierUUID3 = [changedCopy uniqueProxyIdentifierUUID];
    [connectedCallIdentifiers3 removeObject:uniqueProxyIdentifierUUID3];
  }

  if ([changedCopy status] == 5 || objc_msgSend(changedCopy, "status") == 6)
  {
    p_screenSharingMonitorFactory = &self->_screenSharingMonitorFactory;
    sharedMonitor2 = [(CNKScreenSharingStateMonitorFactory *)self->_screenSharingMonitorFactory sharedMonitor];
    call2 = [sharedMonitor2 call];
    v28 = [changedCopy isEqual:call2];

    if (v28)
    {
      v23 = 0;
LABEL_21:
      sharedMonitor3 = [(CNKScreenSharingStateMonitorFactory *)*p_screenSharingMonitorFactory sharedMonitor];
      [sharedMonitor3 setCall:v23];
    }
  }

  currentInCallScene = [(ICSApplicationDelegate *)self currentInCallScene];

  if (currentInCallScene)
  {
    connectedCallIdentifiers4 = [(ICSApplicationDelegate *)self connectedCallIdentifiers];
    v32 = [connectedCallIdentifiers4 count];

    v33 = sub_100004F84();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      connectedCallIdentifiers5 = [(ICSApplicationDelegate *)self connectedCallIdentifiers];
      *buf = 67109378;
      *v97 = v32 != 0;
      *&v97[4] = 2112;
      *&v97[6] = connectedCallIdentifiers5;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Setting scene callConnected: %d connectedCallIdentifiers: %@", buf, 0x12u);
    }

    currentInCallScene2 = [(ICSApplicationDelegate *)self currentInCallScene];
    [currentInCallScene2 setCallConnected:v32 != 0];

    featureFlags2 = [(PHApplicationDelegate *)self featureFlags];
    LODWORD(currentInCallScene2) = [featureFlags2 receptionistEnabled];

    isScreening = [changedCopy isScreening];
    v38 = (currentInCallScene2 ^ 1) & isScreening;
    if ((currentInCallScene2 ^ 1) & 1) == 0 && (isScreening)
    {
      receptionistState = [changedCopy receptionistState];
      if (receptionistState <= 7)
      {
        v38 = 0xE7u >> receptionistState;
      }

      else
      {
        v38 = 0;
      }
    }

    currentInCallScene3 = [(ICSApplicationDelegate *)self currentInCallScene];
    [currentInCallScene3 setPrefersLockedIdleDurationOnCoversheet:v38 & 1];
  }

  if (!v8)
  {
    alertCoordinator = [(ICSApplicationDelegate *)self alertCoordinator];
    if (alertCoordinator)
    {
      v42 = alertCoordinator;
      alertCoordinator2 = [(ICSApplicationDelegate *)self alertCoordinator];
      if (([alertCoordinator2 isAlertRequestPending] & 1) != 0 || objc_msgSend(changedCopy, "disconnectedReason") == 34)
      {
      }

      else
      {
        disconnectedReasonRequiresCallBackUI = [changedCopy disconnectedReasonRequiresCallBackUI];

        if ((disconnectedReasonRequiresCallBackUI & 1) == 0)
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

  featureFlags3 = [(PHApplicationDelegate *)self featureFlags];
  if ([featureFlags3 TTRBannerEnabled] && objc_msgSend(changedCopy, "disconnectedReason") != 7 && objc_msgSend(changedCopy, "status") == 6)
  {
    if ([changedCopy smartHoldingActiveSessionCount])
    {
      wasSmartHoldingTipPresented = 1;
    }

    else
    {
      wasSmartHoldingTipPresented = [changedCopy wasSmartHoldingTipPresented];
    }
  }

  else
  {
    wasSmartHoldingTipPresented = 0;
  }

  featureFlags4 = [(PHApplicationDelegate *)self featureFlags];
  if ([featureFlags4 FTUserScore])
  {
    goto LABEL_50;
  }

  featureFlags5 = [(PHApplicationDelegate *)self featureFlags];
  if (![featureFlags5 TTRBannerEnabled])
  {
LABEL_49:

LABEL_50:
    goto LABEL_51;
  }

  provider2 = [changedCopy provider];
  if (([provider2 isFaceTimeProvider] & 1) == 0)
  {

    goto LABEL_49;
  }

  v90 = changedCopy;
  disconnectedReason = [changedCopy disconnectedReason];

  v50 = disconnectedReason == 7;
  changedCopy = v90;
  if (v50)
  {
LABEL_51:
    if (!wasSmartHoldingTipPresented)
    {
      goto LABEL_56;
    }

    tTRBannerViewController = [(ICSApplicationDelegate *)self TTRBannerViewController];

    if (!tTRBannerViewController)
    {
      v54 = +[TTRBannerControllerFactory makeBannerController];
      [(ICSApplicationDelegate *)self setTTRBannerViewController:v54];

      tTRBannerViewController2 = [(ICSApplicationDelegate *)self TTRBannerViewController];
      [tTRBannerViewController2 setDelegate:self];
    }

    tTRBannerViewController3 = [(ICSApplicationDelegate *)self TTRBannerViewController];
    [tTRBannerViewController3 showHoldAssistTTRBannerForCall:changedCopy];
LABEL_55:

    goto LABEL_56;
  }

  if ([v90 status] == 1)
  {
    v51 = +[TTRBannerControllerFactory makeBannerController];
    [(ICSApplicationDelegate *)self setTTRBannerViewController:v51];

    tTRBannerViewController4 = [(ICSApplicationDelegate *)self TTRBannerViewController];
    [tTRBannerViewController4 setDelegate:self];
LABEL_77:

    goto LABEL_78;
  }

  if ([v90 status] == 6)
  {
    tTRBannerViewController5 = [(ICSApplicationDelegate *)self TTRBannerViewController];

    if (tTRBannerViewController5)
    {
      v89 = v8;
      v61 = +[TUCallCenter sharedInstance];
      v62 = [v61 activeConversationForCall:v90];

      messagesGroupUUID = [v62 messagesGroupUUID];
      activeRemoteParticipants = [v62 activeRemoteParticipants];
      v64 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [activeRemoteParticipants count]);

      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v88 = v62;
      remoteMembers = [v62 remoteMembers];
      v66 = [remoteMembers countByEnumeratingWithState:&v91 objects:v95 count:16];
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
              objc_enumerationMutation(remoteMembers);
            }

            v70 = *(*(&v91 + 1) + 8 * i);
            handle = [v70 handle];
            value = [handle value];
            v73 = [value length];

            if (v73)
            {
              handle2 = [v70 handle];
              value2 = [handle2 value];
              [v64 addObject:value2];
            }
          }

          v67 = [remoteMembers countByEnumeratingWithState:&v91 objects:v95 count:16];
        }

        while (v67);
      }

      tTRBannerViewController6 = [(ICSApplicationDelegate *)self TTRBannerViewController];
      uUIDString = [messagesGroupUUID UUIDString];
      [tTRBannerViewController6 buildTTRMessageBubbleRecipientsListWithGroupMessageUUID:uUIDString with:v64];

      changedCopy = v90;
      [v90 callDuration];
      if (v78 >= 900.0)
      {
        v80 = 1;
      }

      else
      {
        remoteParticipantHandles = [v90 remoteParticipantHandles];
        v80 = [remoteParticipantHandles count] > 0xE;
      }

      tTRBannerViewController4 = v88;
      tTRBannerViewController7 = [(ICSApplicationDelegate *)self TTRBannerViewController];
      [tTRBannerViewController7 showTTRBannerWithFullLogArchive:v80 call:v90];

      v8 = v89;
      goto LABEL_77;
    }
  }

LABEL_78:
  if (v8)
  {
    goto LABEL_56;
  }

  tTRBannerViewController3 = [(ICSApplicationDelegate *)self bannerPresentationManager];
  if (([tTRBannerViewController3 wantsBannerWithoutScene] & 1) == 0)
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
      uniqueProxyIdentifier = [changedCopy uniqueProxyIdentifier];
      *buf = 138412290;
      *v97 = uniqueProxyIdentifier;
      _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "Call %@ disconnected, no calls remaining, still have placeholderCall that wants banner without scene in HUD, requesting scene dismissal", buf, 0xCu);
    }

    [(ICSApplicationDelegate *)self dismissInCallSceneSession];
  }

LABEL_56:
  [(ICSApplicationDelegate *)self updateRemoteAlertStateIfNecessaryForCall:changedCopy];
  [(ICSApplicationDelegate *)self showBannerIfNecessaryForHandoffEligibleConversation];
  routeListController = [(ICSApplicationDelegate *)self routeListController];
  [routeListController reload];
}

- (void)updateRemoteAlertStateIfNecessaryForCall:(id)call
{
  callCopy = call;
  v7 = callCopy;
  if (!callCopy || ![callCopy isEndpointOnCurrentDevice])
  {
    goto LABEL_38;
  }

  status = [v7 status];
  switch(status)
  {
    case 3u:
      if (![(ICSApplicationDelegate *)self shouldActivateSpringBoardRemoteAlertForCall:v7])
      {
        goto LABEL_36;
      }

      provider = [v7 provider];
      isSystemProvider = [provider isSystemProvider];
      if (isSystemProvider)
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

      provider2 = [v7 provider];
      if ([provider2 isFaceTimeProvider] && (objc_msgSend(v7, "isVideo") & 1) == 0)
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
        if (isSystemProvider)
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

        features = sub_100004F84();
        if (os_log_type_enabled(features, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v26 = v7;
          _os_log_impl(&_mh_execute_header, features, OS_LOG_TYPE_DEFAULT, "Heard a call change notification and it was sending, so InCallService will show the alert for %@", buf, 0xCu);
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
        ambientActivityController = objc_alloc_init(ICSMirroringToMacAlert);
        [(ICSMirroringToMacAlert *)ambientActivityController show];
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

      provider3 = [v7 provider];
      if ([provider3 supportsDynamicSystemUI])
      {
        featureFlags = [(PHApplicationDelegate *)self featureFlags];
        if ([featureFlags groupConversations])
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

      features = [(PHApplicationDelegate *)self features];
      if (([features isSystemApertureEnabled]& 1) == 0 && !HasChinaSKU)
      {
LABEL_33:

LABEL_35:
        [(ICSApplicationDelegate *)self requestPresentationForCall:v7 dialRequest:0];
        goto LABEL_36;
      }

      isClarityBoardActive = [(ICSApplicationDelegate *)self isClarityBoardActive];

      if (isClarityBoardActive)
      {
        goto LABEL_35;
      }

LABEL_36:
      ambientActivityController = [(ICSApplicationDelegate *)self ambientActivityController];
      [(ICSMirroringToMacAlert *)ambientActivityController requestActivityForCall:v7];
      goto LABEL_37;
  }

LABEL_38:
}

- (void)handleTUCallTTYTypeChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = +[PHInCallUIUtilities sharedInstance];
  isSpringBoardLocked = [v5 isSpringBoardLocked];

  if (isSpringBoardLocked)
  {
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = v8;
      name = [notificationCopy name];
      v14 = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = name;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v14, 0x16u);
    }

    object = [notificationCopy object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = object;
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

- (void)handleLockScreenStatusChangedNotification:(id)notification
{
  bannerPresentationManager = [(ICSApplicationDelegate *)self bannerPresentationManager];
  [bannerPresentationManager handleLockScreenStatusChanged];
}

- (BOOL)shouldPresentDismissedForCall:(id)call tappedPill:(BOOL)pill
{
  pillCopy = pill;
  callCopy = call;
  v7 = callCopy;
  if (!callCopy || ([callCopy launchInBackground] & 1) != 0 || (+[TUCallCenter sharedInstance](TUCallCenter, "sharedInstance"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "gameOverlayController"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "overlayOpen"), v9, v8, (v10 & 1) != 0))
  {
    v11 = 1;
  }

  else if ([v7 wantsStagingArea])
  {
    v11 = 0;
  }

  else
  {
    bannerPresentationManager = [(ICSApplicationDelegate *)self bannerPresentationManager];
    [bannerPresentationManager preloadCallChanges];

    v14 = [objc_opt_class() isExpanseMessagesJoinRequest:self->_currentJoinConversationRequest];
    avUpgradedCallUUIDForDismissedScene = [(ICSApplicationDelegate *)self avUpgradedCallUUIDForDismissedScene];
    uniqueProxyIdentifierUUID = [v7 uniqueProxyIdentifierUUID];
    v38 = [avUpgradedCallUUIDForDismissedScene isEqual:uniqueProxyIdentifierUUID];

    if (v14 && [v7 callStatus] == 3 && objc_msgSend(v7, "isOutgoing"))
    {
      v37 = [v7 isSendingVideo] ^ 1;
    }

    else
    {
      v37 = 0;
    }

    provider = [v7 provider];
    if ([provider isSystemProvider])
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
      isOutgoing = [v7 isOutgoing];
    }

    else
    {
      isOutgoing = 0;
    }

    if ([v7 isScreening] && (objc_msgSend(v7, "isWaitOnHoldActive") & 1) == 0)
    {
      LODWORD(v21) = [v7 resolvedCallStatus] != 4 && !pillCopy;
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

      v26 = [NSNumber numberWithBool:isOutgoing, v25];
      v18 = v26;
      *buf = 138414850;
      if (pillCopy)
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

    v11 = v18 | v37 | isOutgoing & !pillCopy | v38 | v21;
  }

  return v11 & 1;
}

- (void)handleMenuBarTitleForCallUpgradeDowngradeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleMenuBarTitleForCallUpgradeDowngradeNotification: Call upgrade or downgrade detected, updating menu bar title accordingly", buf, 2u);
  }

  object = [notificationCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    object2 = [notificationCopy object];
    v9 = sub_100004F84();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "handleMenuBarTitleForCallUpgradeDowngradeNotification: Call found, updating menu bar title now", v11, 2u);
    }

    [(ICSApplicationDelegate *)self updateiPadMenuBarApplicationName:object2];
  }

  else
  {
    object2 = sub_100004F84();
    if (os_log_type_enabled(object2, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, object2, OS_LOG_TYPE_DEFAULT, "handleMenuBarTitleForCallUpgradeDowngradeNotification: Call not found, so we won't change anything", v10, 2u);
    }
  }
}

- (void)performPresentationForSOS
{
  configurationForSOS = [(ICSApplicationDelegate *)self configurationForSOS];
  [(ICSApplicationDelegate *)self performPresentationWithConfiguration:configurationForSOS forSceneType:0];
}

- (void)performPresentationForScreenTime
{
  configurationForScreenTime = [(ICSApplicationDelegate *)self configurationForScreenTime];
  [(ICSApplicationDelegate *)self performPresentationWithConfiguration:configurationForScreenTime forSceneType:0];
}

- (void)performPresentationForScreenSharingInitiallyInPiP:(BOOL)p
{
  v4 = [(ICSApplicationDelegate *)self configurationForScreenSharingInitiallyInPiP:p];
  [(ICSApplicationDelegate *)self performPresentationWithConfiguration:v4 forSceneType:1];
}

- (void)performPersentationForScreenSharingObserver
{
  configurationForScreenShareBroadcast = [(ICSApplicationDelegate *)self configurationForScreenShareBroadcast];
  [(ICSApplicationDelegate *)self performPresentationWithConfiguration:configurationForScreenShareBroadcast forSceneType:2];
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

- (id)configurationForCall:(id)call tappedPill:(BOOL)pill
{
  pillCopy = pill;
  callCopy = call;
  v7 = +[TUCallCenter sharedInstance];
  resolvedIncomingCall = [v7 resolvedIncomingCall];
  if (resolvedIncomingCall)
  {
    v9 = 1;
  }

  else
  {
    v10 = +[TUCallCenter sharedInstance];
    incomingVideoCall = [v10 incomingVideoCall];
    v9 = incomingVideoCall != 0;
  }

  featureFlags = [(PHApplicationDelegate *)self featureFlags];
  if (![featureFlags groupConversations])
  {
    v15 = 0;
    goto LABEL_8;
  }

  HasChinaSKU = TUDeviceHasChinaSKU();

  if (HasChinaSKU)
  {
    featureFlags = +[TUCallCenter sharedInstance];
    v14 = [featureFlags callsPassingTest:&stru_100357A60];
    v15 = [v14 count] != 0;

LABEL_8:
    goto LABEL_10;
  }

  v15 = 0;
LABEL_10:
  features = [(PHApplicationDelegate *)self features];
  isIncomingCallBannerEnabled = [features isIncomingCallBannerEnabled];

  v18 = +[TUCallCenter sharedInstance];
  gameOverlayController = [v18 gameOverlayController];
  overlayOpen = [gameOverlayController overlayOpen];

  v21 = ((overlayOpen | isIncomingCallBannerEnabled) & 1) == 0;
  v22 = +[ICSPreferences sharedPreferences];
  hasBannersEnabled = [v22 hasBannersEnabled];
  if (v15)
  {
    v24 = 2;
  }

  else
  {
    v24 = v21;
  }

  if (hasBannersEnabled)
  {
    v25 = v24;
  }

  else
  {
    v25 = 2;
  }

  if ([(ICSApplicationDelegate *)self shouldPresentDismissedForCall:callCopy tappedPill:pillCopy])
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

  v28 = [ICSApplicationDelegate configurationForCall:callCopy preferredPresentationMode:v27];

  return v28;
}

+ (id)configurationForCall:(id)call preferredPresentationMode:(int64_t)mode
{
  callCopy = call;
  v6 = [SBSInCallPresentationConfiguration alloc];
  v7 = [v6 initWithSceneBundleIdentifier:TUBundleIdentifierInCallServiceApplication];
  [v7 setShouldDismissCMASAlerts:{objc_msgSend(callCopy, "isOutgoing")}];
  [v7 setPreferredPresentationMode:mode];
  isOutgoing = [callCopy isOutgoing];

  [v7 setShouldPreferContinuityDisplayForFullScreenPresentation:isOutgoing];
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

- (id)configurationForScreenSharingInitiallyInPiP:(BOOL)p
{
  pCopy = p;
  v4 = [SBSInCallPresentationConfiguration alloc];
  v5 = [v4 initWithSceneBundleIdentifier:TUBundleIdentifierInCallServiceApplication];
  [v5 setShouldDismissCMASAlerts:0];
  if (pCopy)
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

- (id)configurationForCallDetailsViewWithFullScreenRequest:(BOOL)request
{
  requestCopy = request;
  v4 = [SBSInCallPresentationConfiguration alloc];
  v5 = [v4 initWithSceneBundleIdentifier:TUBundleIdentifierInCallServiceApplication];
  [v5 setShouldDismissCMASAlerts:0];
  if (requestCopy)
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

- (id)configurationForPTTSessionWithCall:(id)call preferredPresentationMode:(int64_t)mode
{
  v5 = [SBSInCallPresentationConfiguration alloc];
  v6 = [v5 initWithSceneBundleIdentifier:TUBundleIdentifierInCallServiceApplication];
  [v6 setShouldDismissCMASAlerts:0];
  [v6 setPreferredPresentationMode:mode];
  [v6 setSupportsSystemAperture:1];
  v7 = +[TUCallCenter sharedInstance];
  v8 = [v7 callWithStatus:3];
  [v6 setShouldPreferContinuityDisplayForFullScreenPresentation:v8 != 0];

  return v6;
}

- (void)performPresentationWithConfiguration:(id)configuration forSceneType:(unint64_t)type
{
  configurationCopy = configuration;
  v4 = configurationCopy;
  TUDispatchMainIfNecessary();
}

- (void)requestPresentationForCall:(id)call dialRequest:(id)request tappedPill:(BOOL)pill
{
  pillCopy = pill;
  callCopy = call;
  requestCopy = request;
  v10 = sub_100009960();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = callCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Activating InCallService user interface for call %@", &v11, 0xCu);
  }

  [ICSAriadne trace:3];
  if ([(ICSApplicationDelegate *)self isClarityBoardActive])
  {
    [(ICSApplicationDelegate *)self requestClarityBoardPresentation];
  }

  else
  {
    [(ICSApplicationDelegate *)self requestSpringBoardPresentationForCall:callCopy dialRequest:requestCopy tappedPill:pillCopy];
  }
}

- (void)requestSpringBoardPresentationForCall:(id)call dialRequest:(id)request tappedPill:(BOOL)pill
{
  pillCopy = pill;
  callCopy = call;
  requestCopy = request;
  v10 = +[ICSPreferences sharedPreferences];
  hasAdoptedModernInCallAPI = [v10 hasAdoptedModernInCallAPI];

  if (hasAdoptedModernInCallAPI)
  {
    v63 = requestCopy;
    v12 = [(ICSApplicationDelegate *)self configurationForCall:callCopy tappedPill:pillCopy];
    currentInCallScene = [(ICSApplicationDelegate *)self currentInCallScene];
    presentationMode = [currentInCallScene presentationMode];

    hasExistingDismissedInCallScene = [(ICSApplicationDelegate *)self hasExistingDismissedInCallScene];
    if ([callCopy isConnected] & 1) != 0 || objc_msgSend(v12, "preferredPresentationMode") || (objc_msgSend(callCopy, "launchInBackground"))
    {
      isIncomingCallBannerEnabled = 0;
    }

    else
    {
      features = [(PHApplicationDelegate *)self features];
      isIncomingCallBannerEnabled = [features isIncomingCallBannerEnabled];
    }

    v17 = pillCopy && presentationMode == 1;
    preferredPresentationMode = [v12 preferredPresentationMode];
    if ([callCopy isScreening] && objc_msgSend(callCopy, "receptionistState") == 3)
    {
      isSpringBoardLocked = 1;
      if (([callCopy isWaitOnHoldActive] & 1) == 0 && !pillCopy && presentationMode != 1)
      {
        v20 = +[PHInCallUIUtilities sharedInstance];
        isSpringBoardLocked = [v20 isSpringBoardLocked];
      }
    }

    else
    {
      isSpringBoardLocked = 1;
    }

    v24 = hasExistingDismissedInCallScene | v17;
    if (preferredPresentationMode)
    {
      ambientActivityController = [(ICSApplicationDelegate *)self ambientActivityController];
      [ambientActivityController requestActivityForCall:callCopy];
    }

    if ((v24 & ((preferredPresentationMode != 0) | isIncomingCallBannerEnabled) & isSpringBoardLocked) == 1)
    {
      v26 = sub_100009960();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Already have a dismissed in-call scene. Requesting transition to full-screen", buf, 2u);
      }

      v27 = +[PHPIPController defaultPIPController];
      isPipped = [v27 isPipped];

      if (!isPipped)
      {
        v64 = callCopy;
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
        status = [callCopy status];

        if (status != 4)
        {
LABEL_30:
          v33 = +[NSNotificationCenter defaultCenter];
          v34 = +[PHPIPController defaultPIPController];
          [v33 postNotificationName:@"PHPIPControllerDidRequestReturnToFullScreenNotification" object:v34];

LABEL_42:
LABEL_73:

          requestCopy = v63;
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

      featureFlags = [(PHApplicationDelegate *)self featureFlags];
      LODWORD(v38) = [featureFlags callManagerEnabled];

      if (!v38 || !pillCopy)
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

    currentInCallScene2 = [(ICSApplicationDelegate *)self currentInCallScene];
    if (currentInCallScene2)
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
      bannerPresentationManager = [(ICSApplicationDelegate *)self bannerPresentationManager];
      placeholderCallGroupUUID = [bannerPresentationManager placeholderCallGroupUUID];
      if (!placeholderCallGroupUUID)
      {
LABEL_56:

        goto LABEL_57;
      }

      v46 = placeholderCallGroupUUID;
      callGroupUUID = [callCopy callGroupUUID];
      bannerPresentationManager2 = [(ICSApplicationDelegate *)self bannerPresentationManager];
      placeholderCallGroupUUID2 = [bannerPresentationManager2 placeholderCallGroupUUID];
      v50 = [callGroupUUID isEqual:placeholderCallGroupUUID2];

      if (v50)
      {
        v51 = sub_100004F84();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Presenting banner scene for call that matches systemHUD's AVLess convo. Dismissing HUD.", buf, 2u);
        }

        bannerPresentationManager = [(ICSApplicationDelegate *)self bannerPresentationManager];
        [bannerPresentationManager dismissPresentedBannerForReason:@"Showing invite for existing AVLess call" animated:1];
        goto LABEL_56;
      }
    }

LABEL_57:
    [(ICSApplicationDelegate *)self performPresentationWithConfiguration:v12 forSceneType:0];
    if ([callCopy launchInBackground] && objc_msgSend(callCopy, "isVideo") && !objc_msgSend(v12, "preferredPresentationMode"))
    {
      v60 = sub_100009960();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Activating InCallService user interface for background call with initially PiPped", buf, 2u);
      }

      [(ICSApplicationDelegate *)self requestBackgroundPiPAuthorizationOfDismissedInCallSceneForCall:callCopy];
      goto LABEL_73;
    }

    featureFlags2 = [(PHApplicationDelegate *)self featureFlags];
    if ([featureFlags2 expanseEnabled])
    {
      preferredPresentationMode2 = [v12 preferredPresentationMode];

      if (preferredPresentationMode2)
      {
        goto LABEL_73;
      }

      bannerPresentationManager3 = [(ICSApplicationDelegate *)self bannerPresentationManager];
      callUUID = [bannerPresentationManager3 callUUID];
      uniqueProxyIdentifierUUID = [callCopy uniqueProxyIdentifierUUID];
      v57 = [callUUID isEqual:uniqueProxyIdentifierUUID];

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
        uniqueProxyIdentifierUUID2 = [callCopy uniqueProxyIdentifierUUID];
        *buf = 138412290;
        v66 = uniqueProxyIdentifierUUID2;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Waiting to present banner for callUUID %@", buf, 0xCu);
      }

      featureFlags2 = [callCopy uniqueProxyIdentifierUUID];
      [(ICSApplicationDelegate *)self setCallUUIDWaitingToPresentBanner:featureFlags2];
    }

    goto LABEL_73;
  }

  launchInBackground = [callCopy launchInBackground];
  v22 = sub_100009960();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (launchInBackground)
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

    v35 = [(ICSApplicationDelegate *)self springBoardRemoteAlertOptionsForCall:callCopy dialRequest:requestCopy];
    v36 = +[NSBundle mainBundle];
    [v36 bundleIdentifier];
    SBSUIActivateRemoteAlert();
  }

LABEL_74:
}

- (void)requestSpringBoardPresentationForScreenSharingBroadcaster:(id)broadcaster
{
  broadcasterCopy = broadcaster;
  featureFlags = [(PHApplicationDelegate *)self featureFlags];
  screenSharingRemoteControlEnabled = [featureFlags screenSharingRemoteControlEnabled];

  v7 = sub_100009960();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (screenSharingRemoteControlEnabled)
  {
    if (v8)
    {
      v14 = 138412290;
      v15 = broadcasterCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Requesting presentation for screen sharing broadcaster: %@", &v14, 0xCu);
    }

    sceneManager = [(ICSApplicationDelegate *)self sceneManager];
    [sceneManager didRequestSceneOfType:2 withIdentifier:0];

    v10 = objc_opt_new();
    uiSceneSessionRole = [v10 uiSceneSessionRole];
    v12 = [UISceneSessionActivationRequest requestWithRole:uiSceneSessionRole];

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
  sceneManager = [(ICSApplicationDelegate *)self sceneManager];
  v4 = [sceneManager hasPendingSceneOfType:3];

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

  sceneManager2 = [(ICSApplicationDelegate *)self sceneManager];
  clarityUIScene = [sceneManager2 clarityUIScene];

  v11 = sub_100009960();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (clarityUIScene)
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

  sceneManager3 = [(ICSApplicationDelegate *)self sceneManager];
  [sceneManager3 didRequestSceneOfType:3 withIdentifier:0];

  v14 = +[UIApplication sharedApplication];
  [v14 requestSceneSessionActivation:0 userActivity:0 options:0 errorHandler:&stru_100357B38];
}

- (void)requestPTTPresentation:(int64_t)presentation forCall:(id)call
{
  callCopy = call;
  v7 = sub_100009960();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = callCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Requesting PTT presentation for call %@", &v17, 0xCu);
  }

  if (presentation > 1)
  {
    if (presentation == 2)
    {
      v14 = +[PHInCallUIUtilities sharedInstance];
      isSpringBoardLocked = [v14 isSpringBoardLocked];

      if ((isSpringBoardLocked & 1) == 0)
      {
        v16 = sub_100009960();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Activating PTT user interface as notice for incoming transmission if needed", &v17, 2u);
        }

        [(ICSApplicationDelegate *)self presentDismissedPTTSceneForCall:callCopy];
        bannerPresentationManager = [(ICSApplicationDelegate *)self bannerPresentationManager];
        [bannerPresentationManager showRemoteParticipantNoticeIfNeeded];
        goto LABEL_21;
      }
    }

    else if (presentation == 3)
    {
      v10 = +[PHInCallUIUtilities sharedInstance];
      isSpringBoardLocked2 = [v10 isSpringBoardLocked];

      if ((isSpringBoardLocked2 & 1) == 0)
      {
        v12 = sub_100009960();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Activating PTT user interface as notice for acessory button events if needed", &v17, 2u);
        }

        [(ICSApplicationDelegate *)self presentDismissedPTTSceneForCall:callCopy];
        bannerPresentationManager = [(ICSApplicationDelegate *)self bannerPresentationManager];
        [bannerPresentationManager showAccessoryButtonEventsNoticeIfNeeded];
        goto LABEL_21;
      }
    }
  }

  else if (presentation)
  {
    if (presentation == 1)
    {
      v8 = sub_100009960();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Activating PTT user interface as banner", &v17, 2u);
      }

      [(ICSApplicationDelegate *)self presentDismissedPTTSceneForCall:callCopy];
      bannerPresentationManager = [(ICSApplicationDelegate *)self bannerPresentationManager];
      [bannerPresentationManager showPTTHUD];
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

- (void)presentDismissedPTTSceneForCall:(id)call
{
  callCopy = call;
  v5 = sub_100009960();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Activating InCallService PTT user interface as full screen scene in dismissed mode", v7, 2u);
  }

  v6 = [(ICSApplicationDelegate *)self configurationForPTTSessionWithCall:callCopy preferredPresentationMode:0];

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
  bannerPresentationManager = [(ICSApplicationDelegate *)self bannerPresentationManager];
  [bannerPresentationManager dismissPresentedBannerForReason:@"Dismissing PTT Banner" animated:1];
}

- (void)bannerPresentationManagerDidDismissBanner
{
  v3 = +[TUCallCenter sharedInstance];
  frontmostBargeCall = [v3 frontmostBargeCall];

  if (frontmostBargeCall && [frontmostBargeCall isPTT])
  {
    [(ICSApplicationDelegate *)self dismissPTTSessionPresentation];
  }

  [(ICSApplicationDelegate *)self setIsShowingIncomingNameUpdate:0];
}

- (BOOL)bannerPresentationManagerWantsSpringBoardIsLockedStatus
{
  v2 = +[PHInCallUIUtilities sharedInstance];
  isSpringBoardLocked = [v2 isSpringBoardLocked];

  return isSpringBoardLocked;
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

  currentInCallScene = [(ICSApplicationDelegate *)self currentInCallScene];
  if (currentInCallScene)
  {
    v5 = currentInCallScene;
    currentInCallScene2 = [(ICSApplicationDelegate *)self currentInCallScene];
    presentationMode = [currentInCallScene2 presentationMode];

    if (presentationMode)
    {
      currentInCallScene3 = [(ICSApplicationDelegate *)self currentInCallScene];
      [currentInCallScene3 ics_requestTransitionToPresentationMode:0 shouldDismissCMASAlerts:0 analyticsSource:0 completion:&stru_100357B78];
    }
  }
}

- (void)requestGreenTea3PPresentationForCall:(id)call
{
  callCopy = call;
  v5 = sub_100009960();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = callCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Requesting GreenTea3P presentation for call %@", buf, 0xCu);
  }

  configurationForGreenTea3P = [(ICSApplicationDelegate *)self configurationForGreenTea3P];
  [(ICSApplicationDelegate *)self performPresentationWithConfiguration:configurationForGreenTea3P forSceneType:6];
  currentInCallScene = [(ICSApplicationDelegate *)self currentInCallScene];
  if (currentInCallScene && (v8 = currentInCallScene, -[ICSApplicationDelegate currentInCallScene](self, "currentInCallScene"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 presentationMode], v9, v8, v10))
  {
    currentInCallScene2 = [(ICSApplicationDelegate *)self currentInCallScene];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10007F51C;
    v12[3] = &unk_100357AF8;
    v12[4] = self;
    [currentInCallScene2 ics_requestTransitionToPresentationMode:0 shouldDismissCMASAlerts:0 analyticsSource:0 completion:v12];
  }

  else
  {
    currentInCallScene2 = [(ICSApplicationDelegate *)self bannerPresentationManager];
    [currentInCallScene2 showGreenTea3PHUD];
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

- (void)updatePresentationIfNecessaryForGreenTea3PCall:(id)call
{
  callCopy = call;
  v5 = sub_100009960();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = callCopy;
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
  frontmostAudioOrVideoCall = [v9 frontmostAudioOrVideoCall];
  provider = [frontmostAudioOrVideoCall provider];
  supportsDynamicSystemUI = [provider supportsDynamicSystemUI];

  v13 = +[TUCallCenter sharedInstance];
  frontmostAudioOrVideoCall2 = [v13 frontmostAudioOrVideoCall];
  v15 = [(ICSApplicationDelegate *)self shouldActivateSpringBoardRemoteAlertForCall:frontmostAudioOrVideoCall2];

  if ((supportsDynamicSystemUI & 1) == 0 && v15)
  {
    v16 = +[TUCallCenter sharedInstance];
    frontmostAudioOrVideoCall3 = [v16 frontmostAudioOrVideoCall];
    [(ICSApplicationDelegate *)self requestPresentationForCall:frontmostAudioOrVideoCall3 dialRequest:0];
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

  currentInCallScene = [(ICSApplicationDelegate *)self currentInCallScene];
  if (currentInCallScene)
  {
    v5 = currentInCallScene;
    currentInCallScene2 = [(ICSApplicationDelegate *)self currentInCallScene];
    if ([currentInCallScene2 presentationMode])
    {
      v7 = +[PHInCallUIUtilities sharedInstance];
      isSpringBoardLocked = [v7 isSpringBoardLocked];

      if ((isSpringBoardLocked & 1) == 0)
      {
        currentInCallScene3 = [(ICSApplicationDelegate *)self currentInCallScene];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10007FAC0;
        v17[3] = &unk_100357AF8;
        v17[4] = self;
        [currentInCallScene3 ics_requestTransitionToPresentationMode:0 shouldDismissCMASAlerts:0 analyticsSource:0 completion:v17];

        return;
      }
    }

    else
    {
    }
  }

  currentInCallScene4 = [(ICSApplicationDelegate *)self currentInCallScene];
  if (!currentInCallScene4)
  {
    goto LABEL_13;
  }

  v11 = currentInCallScene4;
  currentInCallScene5 = [(ICSApplicationDelegate *)self currentInCallScene];
  if (![currentInCallScene5 presentationMode])
  {

    goto LABEL_13;
  }

  v13 = +[PHInCallUIUtilities sharedInstance];
  isSpringBoardLocked2 = [v13 isSpringBoardLocked];

  if (!isSpringBoardLocked2)
  {
LABEL_13:
    bannerPresentationManager = [(ICSApplicationDelegate *)self bannerPresentationManager];
    [bannerPresentationManager showWaitOnHoldHUD];
    goto LABEL_14;
  }

  bannerPresentationManager2 = [(ICSApplicationDelegate *)self bannerPresentationManager];
  [bannerPresentationManager2 showWaitOnHoldHUD];

  bannerPresentationManager = [(ICSApplicationDelegate *)self currentInCallScene];
  [bannerPresentationManager ics_requestTransitionToPresentationMode:0];
LABEL_14:
}

- (void)smartHoldSessionChanged:(id)changed
{
  changedCopy = changed;
  object = [changedCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v7 = 0;
    goto LABEL_16;
  }

  object2 = [changedCopy object];
  v7 = object2;
  if (!object2)
  {
    goto LABEL_16;
  }

  smartHoldingSession = [object2 smartHoldingSession];
  if (smartHoldingSession)
  {
    v9 = smartHoldingSession;
    smartHoldingSession2 = [v7 smartHoldingSession];
    if ([smartHoldingSession2 state])
    {
    }

    else
    {
      callUUIDForWaitOnHoldPresentation = [(ICSApplicationDelegate *)self callUUIDForWaitOnHoldPresentation];
      callUUID = [v7 callUUID];
      v13 = [callUUIDForWaitOnHoldPresentation isEqualToString:callUUID];

      if ((v13 & 1) == 0)
      {
        callUUID2 = [v7 callUUID];
        [(ICSApplicationDelegate *)self setCallUUIDForWaitOnHoldPresentation:callUUID2];

        [(ICSApplicationDelegate *)self requestWaitOnHoldBannerPresentation];
        goto LABEL_16;
      }
    }
  }

  smartHoldingSession3 = [v7 smartHoldingSession];
  if (smartHoldingSession3)
  {
    v15 = smartHoldingSession3;
    smartHoldingSession4 = [v7 smartHoldingSession];
    if ([smartHoldingSession4 state] == 3)
    {
      v17 = +[PHInCallUIUtilities sharedInstance];
      isSpringBoardLocked = [v17 isSpringBoardLocked];

      if (isSpringBoardLocked)
      {
        currentInCallScene = [(ICSApplicationDelegate *)self currentInCallScene];
        [currentInCallScene requestTransitionToPresentationMode:2];

        goto LABEL_16;
      }
    }

    else
    {
    }
  }

  smartHoldingSession5 = [v7 smartHoldingSession];

  if (!smartHoldingSession5)
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

  bannerPresentationManager = [(ICSApplicationDelegate *)self bannerPresentationManager];
  [bannerPresentationManager showHandoffHUD];
}

- (void)requestLagunaPullConversationPresentation
{
  v3 = sub_100009960();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Activating InCallService user interface for laguna pull conversation", v5, 2u);
  }

  bannerPresentationManager = [(ICSApplicationDelegate *)self bannerPresentationManager];
  [bannerPresentationManager showLagunaPullConversationHUD];
}

- (void)requestSpringBoardPresentationForScreenSharingAsPiP:(BOOL)p
{
  pCopy = p;
  featureFlags = [(PHApplicationDelegate *)self featureFlags];
  supportsScreenSharing = [featureFlags supportsScreenSharing];

  v7 = sub_100009960();
  v8 = v7;
  if (supportsScreenSharing)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = pCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Activating InCallService user interface for Screen Sharing with initially PiPped: %i", v10, 8u);
    }

    if (pCopy)
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

- (void)requestBackgroundPiPAuthorizationOfDismissedInCallSceneForCall:(id)call
{
  callCopy = call;
  hasExistingDismissedInCallScene = [(ICSApplicationDelegate *)self hasExistingDismissedInCallScene];
  sceneManager = [(ICSApplicationDelegate *)self sceneManager];
  v7 = [sceneManager hasPendingCompletionForSceneType:0 presentationMode:2];

  v8 = hasExistingDismissedInCallScene ^ 1;
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

    v11 = [ICSApplicationDelegate configurationForCall:callCopy preferredPresentationMode:0];
    [(ICSApplicationDelegate *)self requestBackgroundPiPAuthorizationForSceneType:0 withConfiguration:v11];
  }
}

- (void)requestBackgroundPiPAuthorizationForSceneType:(unint64_t)type withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (type == 1)
  {
    v7 = +[NSUUID UUID];
    uUIDString = [v7 UUIDString];
  }

  else
  {
    uUIDString = TUBundleIdentifierInCallServiceApplication;
  }

  backgroundPIPAuthorizationForSceneType = [(ICSApplicationDelegate *)self backgroundPIPAuthorizationForSceneType];
  v10 = [NSNumber numberWithUnsignedInteger:type];
  v11 = [backgroundPIPAuthorizationForSceneType objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = sub_100009960();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = sub_100030C10(type);
      *buf = 138543362;
      v35 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Already have existing background authorization request for scene of type %{public}@; removing old request", buf, 0xCu);
    }

    [(ICSApplicationDelegate *)self revokeAndRemoveBackgroundPiPAuthorizationForSceneTypeIfNeeded:type];
  }

  v15 = sub_100009960();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = sub_100030C10(type);
    *buf = 138543618;
    v35 = v17;
    v36 = 2114;
    v37 = uUIDString;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Requesting background PiP authorization for %{public}@ scene with activity session identifier '%{public}@'", buf, 0x16u);
  }

  sceneManager = [(ICSApplicationDelegate *)self sceneManager];
  identifier = [configurationCopy identifier];
  [sceneManager didRequestSceneOfType:type withIdentifier:identifier];

  objc_initWeak(buf, self);
  v20 = [PGBackgroundPIPAuthorization alloc];
  v27 = _NSConcreteStackBlock;
  v28 = 3221225472;
  v29 = sub_1000803D8;
  v30 = &unk_100357BE8;
  objc_copyWeak(v33, buf);
  v21 = TUBundleIdentifierInCallServiceApplication;
  v33[1] = type;
  v22 = uUIDString;
  v31 = v22;
  v23 = configurationCopy;
  v32 = v23;
  v24 = [v20 initWithActivitySessionIdentifier:v22 appBundleIdentifier:v21 stateTransitionHandler:&v27];
  v25 = [(ICSApplicationDelegate *)self backgroundPIPAuthorizationForSceneType:v27];
  v26 = [NSNumber numberWithUnsignedInteger:type];
  [v25 setObject:v24 forKeyedSubscript:v26];

  objc_destroyWeak(v33);
  objc_destroyWeak(buf);
}

- (void)revokeAndRemoveBackgroundPiPAuthorizationForSceneTypeIfNeeded:(unint64_t)needed
{
  backgroundPIPAuthorizationForSceneType = [(ICSApplicationDelegate *)self backgroundPIPAuthorizationForSceneType];
  v6 = [NSNumber numberWithUnsignedInteger:needed];
  v7 = [backgroundPIPAuthorizationForSceneType objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = sub_100009960();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v10 = sub_100030C10(needed);
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Revoking and removing existing background authorization for %{public}@ scene", &v13, 0xCu);
    }
  }

  [v7 revoke];
  backgroundPIPAuthorizationForSceneType2 = [(ICSApplicationDelegate *)self backgroundPIPAuthorizationForSceneType];
  v12 = [NSNumber numberWithUnsignedInteger:needed];
  [backgroundPIPAuthorizationForSceneType2 removeObjectForKey:v12];
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
  sceneManager = [(ICSApplicationDelegate *)self sceneManager];
  clarityUIScene = [sceneManager clarityUIScene];

  v5 = sub_100009960();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (clarityUIScene)
  {
    if (v6)
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Dismissing Assistive Access scene.", v10, 2u);
    }

    v7 = +[UIApplication sharedApplication];
    session = [clarityUIScene session];
    [v7 requestSceneSessionDestruction:session options:0 errorHandler:&stru_100357C28];

    sceneManager2 = [(ICSApplicationDelegate *)self sceneManager];
    [sceneManager2 didDismissSceneOfType:3];
  }

  else if (v6)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempted to dismiss Assistive Access scene, but none was showing.", buf, 2u);
  }
}

- (BOOL)hasActiveOrPendingVideoMessagePresentation
{
  sceneManager = [(ICSApplicationDelegate *)self sceneManager];
  v3 = [sceneManager hasPendingOrExistingSceneOfType:4];

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
  hasAdoptedModernInCallAPI = [v4 hasAdoptedModernInCallAPI];

  if (hasAdoptedModernInCallAPI)
  {
    if ([(ICSApplicationDelegate *)self hasActiveOrPendingInCallPresentation])
    {
      currentInCallScene = [(ICSApplicationDelegate *)self currentInCallScene];

      if (currentInCallScene)
      {
        v7 = +[PHPIPController defaultPIPController];
        isPipped = [v7 isPipped];

        v9 = sub_100009960();
        v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        if (isPipped)
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
    currentInCallScene = [(ICSApplicationDelegate *)self currentInCallScene];

    v4 = sub_100009960();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (currentInCallScene)
    {
      if (v5)
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "There's an existing in-call scene, transitioning to full-screen overlay for ScreenTime", v7, 2u);
      }

      currentInCallScene2 = [(ICSApplicationDelegate *)self currentInCallScene];
      [currentInCallScene2 requestTransitionToPresentationMode:2 shouldDismissCMASAlerts:0];
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

    currentInCallScene = [(ICSApplicationDelegate *)self currentInCallScene];
    [currentInCallScene requestTransitionToPresentationMode:2 shouldDismissCMASAlerts:0];
  }

  else
  {
    [(ICSApplicationDelegate *)self performFullScreenPresentationForCallDetailsView];
  }
}

- (void)transitionScenetoOverlayAndDismissCMASAlerts:(BOOL)alerts
{
  currentInCallScene = [(ICSApplicationDelegate *)self currentInCallScene];
  presentationMode = [currentInCallScene presentationMode];

  if (presentationMode != 3)
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

  springBoardRemoteAlertOptionsForSOSCall = [(ICSApplicationDelegate *)self springBoardRemoteAlertOptionsForSOSCall];
  v5 = +[NSBundle mainBundle];
  [v5 bundleIdentifier];
  SBSUIActivateRemoteAlert();
}

- (BOOL)shouldActivateSpringBoardRemoteAlertForCall:(id)call
{
  callCopy = call;
  featureFlags = [(PHApplicationDelegate *)self featureFlags];
  avLessSharePlayEnabled = [featureFlags avLessSharePlayEnabled];
  if (callCopy)
  {
    v7 = 0;
  }

  else
  {
    v7 = avLessSharePlayEnabled;
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
  if ([callCopy isEmergency])
  {
    if (PHGetEmergencyDialerPresenceTokenValue())
    {
      if (([callCopy isRTT] & 1) == 0 && (objc_msgSend(callCopy, "isTTY") & 1) == 0)
      {
        v10 = sub_100009960();
        v9 = 0;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138412290;
          v13 = callCopy;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "suppressing showing alert for call because it's an emergency call, the emergency dialer presence token is set, and call is not RTT/TTY: %@", &v12, 0xCu);
          v9 = 0;
        }
      }
    }
  }

  return v9;
}

- (id)springBoardRemoteAlertOptionsForCall:(id)call dialRequest:(id)request
{
  callCopy = call;
  requestCopy = request;
  v7 = +[NSMutableDictionary dictionary];
  v8 = TUInCallRemoteAlertViewControllerClassName();
  [v7 setObject:v8 forKeyedSubscript:SBSUIRemoteAlertOptionViewControllerClass];

  [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:SBSUIRemoteAlertOptionDismissWithHomeButton];
  if ([callCopy status] != 4)
  {
    [v7 setObject:&off_10036A268 forKeyedSubscript:SBSUIRemoteAlertOptionSwipeDismissalStyle];
  }

  if ([callCopy isVideo])
  {
    v9 = &__kCFBooleanFalse;
    [v7 setObject:&__kCFBooleanFalse forKeyedSubscript:SBSUIRemoteAlertOptionWantsWallpaperTunnel];
    v10 = &SBSUIRemoteAlertOptionHasTranslucentBackground;
  }

  else
  {
    [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:SBSUIRemoteAlertOptionWantsWallpaperTunnel];
    if (requestCopy)
    {
      v11 = [requestCopy originatingUIType] == 1;
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

- (BOOL)shouldShowAirplaneEmergencyCallAlertForDialRequest:(id)request
{
  requestCopy = request;
  if (PHIsInAirplaneMode() && [requestCopy isValid] && (objc_msgSend(requestCopy, "isSOS") & 1) == 0)
  {
    localSenderIdentityUUID = [requestCopy localSenderIdentityUUID];
    if ([TUCallCapabilities canAttemptEmergencyCallsWithoutCellularConnectionWithUUID:localSenderIdentityUUID])
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

- (BOOL)shouldShowEmergencyCallbackModeAlertForDialRequest:(id)request
{
  requestCopy = request;
  if (+[PHDevice isGeminiCapable](PHDevice, "isGeminiCapable") && [requestCopy isValid] && (objc_msgSend(requestCopy, "isSOS") & 1) == 0 && objc_msgSend(requestCopy, "dialType") != 1)
  {
    handle = [requestCopy handle];
    value = [handle value];
    if ([value length])
    {
      provider = [requestCopy provider];
      if ([provider isTelephonyProvider])
      {
        senderIdentityClient = [(ICSApplicationDelegate *)self senderIdentityClient];
        localSenderIdentityUUID = [requestCopy localSenderIdentityUUID];
        v5 = [senderIdentityClient shouldShowEmergencyCallbackModeAlertForSenderIdentityUUID:localSenderIdentityUUID];
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

- (BOOL)shouldShowTelephonyAccountUnavailableAlertForDialRequest:(id)request
{
  requestCopy = request;
  if (+[PHDevice isGeminiCapable](PHDevice, "isGeminiCapable") && [requestCopy isValid] && (objc_msgSend(requestCopy, "isSOS") & 1) == 0 && !objc_msgSend(requestCopy, "dialType"))
  {
    provider = [requestCopy provider];
    if ([provider isTelephonyProvider])
    {
      provider2 = [requestCopy provider];
      prioritizedSenderIdentities = [provider2 prioritizedSenderIdentities];
      if ([prioritizedSenderIdentities count])
      {
        localSenderIdentityAccountUUID = [requestCopy localSenderIdentityAccountUUID];
        if (localSenderIdentityAccountUUID)
        {
          localSenderIdentity = [requestCopy localSenderIdentity];
          accountUUID = [localSenderIdentity accountUUID];
          localSenderIdentityAccountUUID2 = [requestCopy localSenderIdentityAccountUUID];
          v4 = [accountUUID isEqual:localSenderIdentityAccountUUID2] ^ 1;
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

- (BOOL)shouldShowRTTAlertForDialRequest:(id)request
{
  requestCopy = request;
  v4 = +[TUCallCenter sharedInstance];
  if ([v4 currentCallCount] || !objc_msgSend(requestCopy, "isValid") || (objc_msgSend(requestCopy, "isSOS") & 1) != 0)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    handle = [requestCopy handle];
    value = [handle value];
    if ([value length])
    {
      provider = [requestCopy provider];
      if ([provider isTelephonyProvider] && !objc_msgSend(requestCopy, "ttyType") && ((objc_msgSend(requestCopy, "isRTTAvailable") & 1) != 0 || objc_msgSend(requestCopy, "isTTYAvailable")))
      {
        v5 = [requestCopy shouldBypassRTTPrompt] ^ 1;
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

- (BOOL)shouldShowScreenTimeAlertForDialRequest:(id)request
{
  requestCopy = request;
  v4 = +[TUCallCenter sharedInstance];
  callFilterController = [v4 callFilterController];
  if ([callFilterController shouldRestrictDialRequest:requestCopy])
  {
    v6 = +[TUCallCenter sharedInstance];
    callFilterController2 = [v6 callFilterController];
    v8 = [callFilterController2 isRestrictedExclusivelyByScreenTimeForDialRequest:requestCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)shouldShowScreenTimeAlertForJoinConversationRequest:(id)request
{
  requestCopy = request;
  v4 = +[TUCallCenter sharedInstance];
  callFilterController = [v4 callFilterController];
  v6 = [callFilterController shouldRestrictJoinConversationRequest:requestCopy performSynchronously:0];

  return v6;
}

- (BOOL)shouldActivateSOS
{
  activationContext = [(ICSApplicationDelegate *)self activationContext];
  if (activationContext)
  {
    activationContext2 = [(ICSApplicationDelegate *)self activationContext];
    reason = [activationContext2 reason];
    if ([reason isEqualToString:SOSRemoteAlertActivationReasonActivatingForSOSWithClicks])
    {
      v6 = 1;
    }

    else
    {
      activationContext3 = [(ICSApplicationDelegate *)self activationContext];
      reason2 = [activationContext3 reason];
      if ([reason2 isEqualToString:SOSRemoteAlertActivationReasonActivatingForSOSWithKappa])
      {
        v6 = 1;
      }

      else
      {
        activationContext4 = [(ICSApplicationDelegate *)self activationContext];
        reason3 = [activationContext4 reason];
        if ([reason3 isEqualToString:SOSRemoteAlertActivationReasonActivatingForSOSAlertRestingScreen])
        {
          v6 = 1;
        }

        else
        {
          activationContext5 = [(ICSApplicationDelegate *)self activationContext];
          reason4 = [activationContext5 reason];
          v6 = [reason4 isEqualToString:SOSRemoteAlertActivationReasonActivatingForSOSWithVolumeLockHold];
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

- (void)startSOSFlowWithActivationReason:(id)reason
{
  reasonCopy = reason;
  v5 = sub_10010D888();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting SOS flow with activation reason %@", &v11, 0xCu);
  }

  v6 = [[ICSActivationContext alloc] initWithReason:reasonCopy userInfo:0];
  [(ICSApplicationDelegate *)self setActivationContext:v6];

  if ([reasonCopy isEqualToString:SOSRemoteAlertActivationReasonActivatingForSOSAlertRestingScreen])
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
  currentCalls = [v3 currentCalls];
  v5 = [v2 initWithArray:currentCalls];

  v6 = +[TUCallCenter sharedInstance];
  callsOnDefaultPairedDevice = [v6 callsOnDefaultPairedDevice];
  [v5 addObjectsFromArray:callsOnDefaultPairedDevice];

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

- (void)startScreenTimeFlowWithURL:(id)l
{
  lCopy = l;
  v5 = sub_10010D80C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = lCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting ScreenTime flow with URL %@", buf, 0xCu);
  }

  v6 = [ICSActivationContext alloc];
  v7 = SOSRemoteAlertActivationReasonActivatingForScreenTime;
  absoluteString = [lCopy absoluteString];
  v13 = absoluteString;
  v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v10 = [(ICSActivationContext *)v6 initWithReason:v7 userInfo:v9];

  pendingRestrictedScreenTimeRequest = [(ICSActivationContext *)v10 pendingRestrictedScreenTimeRequest];

  if (pendingRestrictedScreenTimeRequest)
  {
    [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHScreenTimeAlertAssertionReason"];
    [(ICSApplicationDelegate *)self setActivationContext:v10];
    [(ICSApplicationDelegate *)self requestPresentationForScreenTime];
  }
}

- (void)updateDialRequestAccountIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  localSenderIdentityAccountUUID = [necessaryCopy localSenderIdentityAccountUUID];
  uUIDString = [localSenderIdentityAccountUUID UUIDString];

  if (uUIDString)
  {
    localSenderIdentity = [necessaryCopy localSenderIdentity];
    accountUUID = [localSenderIdentity accountUUID];
    uUIDString2 = [accountUUID UUIDString];
    if ([uUIDString isEqualToString:uUIDString2])
    {

LABEL_15:
      goto LABEL_16;
    }

    provider = [necessaryCopy provider];
    isTelephonyProvider = [provider isTelephonyProvider];

    if (isTelephonyProvider)
    {
      v12 = sub_100004F84();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] The localSenderIdentity and localSenderIdentityAccountUUID do not match for a telephony dial request, checking with the core telephony client", buf, 2u);
      }

      v16 = 0;
      v13 = [(ICSApplicationDelegate *)self getEvolvedSubscriptionLabelID:uUIDString error:&v16];
      localSenderIdentity = v16;
      if (v13 && ([v13 isEqualToString:uUIDString] & 1) == 0)
      {
        v14 = [[NSUUID alloc] initWithUUIDString:v13];
        v15 = sub_100004F84();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v18 = necessaryCopy;
          v19 = 2112;
          v20 = v13;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] Updating dial request %@ with accountUUID: %@", buf, 0x16u);
        }

        [necessaryCopy setLocalSenderIdentityAccountUUID:v14];
      }

      else
      {
        v14 = sub_100004F84();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v18 = uUIDString;
          v19 = 2112;
          v20 = localSenderIdentity;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] Failed to get an updated labelID for %@ with error %@", buf, 0x16u);
        }
      }

      goto LABEL_15;
    }
  }

LABEL_16:
}

- (BOOL)openThirdPartyDialRequest:(id)request
{
  requestCopy = request;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = requestCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "openThirdPartyDialRequest %@", buf, 0xCu);
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100082E9C;
  v28[3] = &unk_100356988;
  v6 = requestCopy;
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

  currentAlert = [(ICSApplicationDelegate *)self currentAlert];

  if (!currentAlert)
  {
    [(ICSApplicationDelegate *)self acquireLongPreventSuspensionAssertion];
    [(ICSApplicationDelegate *)self setCurrentAlert:v10];
    lastAlertPresentation = [(ICSApplicationDelegate *)self lastAlertPresentation];

    if (lastAlertPresentation)
    {
      lastAlertPresentation2 = [(ICSApplicationDelegate *)self lastAlertPresentation];
      v17 = +[NSDate now];
      [lastAlertPresentation2 timeIntervalSinceDate:v17];
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
    selfCopy = self;
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

- (BOOL)openSystemProviderDialRequest:(id)request
{
  requestCopy = request;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v172 = requestCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "openSystemProviderDialRequest %@", buf, 0xCu);
  }

  [ICSAriadne trace:2];
  [(ICSApplicationDelegate *)self updateDialRequestAccountIfNecessary:requestCopy];
  v168[0] = _NSConcreteStackBlock;
  v168[1] = 3221225472;
  v168[2] = sub_10008423C;
  v168[3] = &unk_1003569B0;
  v6 = requestCopy;
  v169 = v6;
  v7 = objc_retainBlock(v168);
  provider = [v6 provider];
  if (![provider isTelephonyProvider])
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
    frontmostCall = [v20 frontmostCall];

    if (frontmostCall && [frontmostCall isEmergency])
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

    senderIdentityClient = [(ICSApplicationDelegate *)self senderIdentityClient];
    v24 = [v6 dialRequestByResolvingDialTypeUsingSenderIdentityClient:senderIdentityClient];

    v164[0] = _NSConcreteStackBlock;
    v164[1] = 3221225472;
    v164[2] = sub_1000843B0;
    v164[3] = &unk_100357C78;
    v25 = v24;
    v165 = v25;
    selfCopy = self;
    v26 = v7;
    v167 = v26;
    v27 = objc_retainBlock(v164);
    v160[0] = _NSConcreteStackBlock;
    v160[1] = 3221225472;
    v160[2] = sub_100084444;
    v160[3] = &unk_100357C78;
    v28 = v25;
    v161 = v28;
    selfCopy2 = self;
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
    selfCopy3 = self;
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
      v60 = frontmostCall;
      v61 = v41;
      v62 = v39;
      v63 = v38;
      v64 = sub_100004F84();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        sub_100254E60();
      }

      (v118[2])(v118, 0);
      provider2 = [v6 provider];
      dialType = [v6 dialType];
      localSenderIdentityUUID = [v6 localSenderIdentityUUID];
      v44 = [PHNetworkUnavailableAlert alertWithCallProvider:provider2 dialType:dialType senderIdentityUUID:localSenderIdentityUUID];

      v38 = v63;
      v39 = v62;
      v41 = v61;
      frontmostCall = v60;
      v7 = v117;
      goto LABEL_51;
    }

    v116 = v38;
    provider3 = [v6 provider];
    isFaceTimeProvider = [provider3 isFaceTimeProvider];

    if (isFaceTimeProvider)
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

      featureFlags = [(PHApplicationDelegate *)self featureFlags];
      simLinePickerEnabled = [featureFlags simLinePickerEnabled];

      v110 = v41;
      if (simLinePickerEnabled)
      {
        v112 = +[TUCallCenter sharedInstance];
        providerManager = [v112 providerManager];
        telephonyProvider = [providerManager telephonyProvider];
        prioritizedSenderIdentities = [telephonyProvider prioritizedSenderIdentities];
        array = [prioritizedSenderIdentities array];
        v77 = [array copy];

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

    alertCoordinator = [(ICSApplicationDelegate *)self alertCoordinator];

    if (!alertCoordinator)
    {
      v87 = objc_alloc_init(_TtC13InCallService16AlertCoordinator);
      [(ICSApplicationDelegate *)self setAlertCoordinator:v87];

      alertCoordinator2 = [(ICSApplicationDelegate *)self alertCoordinator];
      [alertCoordinator2 startMonitoring];

      alertCoordinator = 0;
    }

    alertCoordinator3 = [(ICSApplicationDelegate *)self alertCoordinator];
    isStewieActive = [alertCoordinator3 isStewieActive];
    if (isStewieActive)
    {
      v108 = alertCoordinator;
      v89 = +[TUCallCenter sharedInstance];
      v90 = [v89 _isEmergencyDialRequest:v6];

      if (!v90)
      {
        v44 = 0;
        LOBYTE(isStewieActive) = 0;
        v38 = v116;
        alertCoordinator = v108;
        goto LABEL_99;
      }

      handle = [v6 handle];
      value = [handle value];
      formattedDisplayID = [value formattedDisplayID];

      v94 = +[NSBundle mainBundle];
      v95 = v94;
      alertCoordinator3 = formattedDisplayID;
      if (formattedDisplayID)
      {
        v96 = [v94 localizedStringForKey:@"ALERT_ACTION_END_STEWIE_AND_CALL_%@" value:&stru_100361FD0 table:@"Localizable-Stewie"];
        [NSString stringWithFormat:v96, formattedDisplayID];
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
      alertCoordinator = v108;
    }

    else
    {
      v44 = 0;
    }

LABEL_99:
    if (!alertCoordinator)
    {
      alertCoordinator4 = [(ICSApplicationDelegate *)self alertCoordinator];

      if (alertCoordinator4)
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

    if ((isStewieActive & 1) == 0)
    {
      v120[2](v120);
    }

LABEL_69:
    v44 = 0;
    goto LABEL_70;
  }

  provider = +[NSCharacterSet pn_verticalServiceCharacterSet];
  handle2 = [v6 handle];
  value2 = [handle2 value];
  v12 = [value2 rangeOfCharacterFromSet:provider];

  processHandle = [v6 processHandle];
  handle3 = [v6 handle];
  value3 = [handle3 value];
  if (![value3 length] || v12 == 0x7FFFFFFFFFFFFFFFLL)
  {

    goto LABEL_12;
  }

  v16 = [(ICSApplicationDelegate *)self shouldShowPromptForProcessHandle:processHandle];

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
    v172 = processHandle;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Vertical service code cannot be dialed for process handle %@", buf, 0xCu);
  }

  (v7[2])(v7, 0);
LABEL_31:
  v45 = 0;
LABEL_73:

  return v45;
}

- (BOOL)openJoinConversationRequest:(id)request
{
  requestCopy = request;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = requestCopy;
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
  providerManager = [v6 providerManager];
  faceTimeProvider = [providerManager faceTimeProvider];

  v9 = [(ICSApplicationDelegate *)self shouldShowScreenTimeAlertForJoinConversationRequest:requestCopy];
  if (v9)
  {
    v10 = sub_100004F84();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v40[0]) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to initiate a call, restricted by Screen Time.", v40, 2u);
    }

    v11 = +[ICSPreferences sharedPreferences];
    hasAdoptedModernInCallAPI = [v11 hasAdoptedModernInCallAPI];

    if (hasAdoptedModernInCallAPI)
    {
      v13 = [requestCopy URL];
      [(ICSApplicationDelegate *)self startScreenTimeFlowWithURL:v13];
    }

    else
    {
      v28 = +[SOSInCallUILauncher sharedInCallUILauncher];
      v29 = [requestCopy URL];
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

    v15 = [PHNetworkUnavailableAlert alertWithCallProvider:faceTimeProvider dialType:0 senderIdentityUUID:0];
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
  if (!*(*(&buf + 1) + 40) && [requestCopy showUIPrompt])
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
    v38 = requestCopy;
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
    [(ICSApplicationDelegate *)self showOrCreateCallForConversationRequest:requestCopy];
  }

LABEL_36:

  _Block_object_dispose(&buf, 8);
  return v9 ^ 1;
}

- (BOOL)openDialRequest:(id)request forProcessHandle:(id)handle bypassUIPromptIfDefaultProvider:(BOOL)provider
{
  providerCopy = provider;
  requestCopy = request;
  handleCopy = handle;
  [(ICSApplicationDelegate *)self configureDialRequest:requestCopy forProcessHandle:handleCopy bypassUIPromptIfDefaultProvider:providerCopy];
  v10 = sub_100004F84();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = requestCopy;
    v18 = 2112;
    v19 = handleCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Initiating dial request %@ for process handle %@.", &v16, 0x16u);
  }

  provider = [requestCopy provider];
  isSystemProvider = [provider isSystemProvider];

  if (isSystemProvider)
  {
    v13 = [(ICSApplicationDelegate *)self openSystemProviderDialRequest:requestCopy];
  }

  else
  {
    v13 = [(ICSApplicationDelegate *)self openThirdPartyDialRequest:requestCopy];
  }

  v14 = v13;

  return v14;
}

- (BOOL)openUserInterfaceURL:(id)l
{
  lCopy = l;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    v26 = lCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "'%@'", &v25, 0xCu);
  }

  v6 = +[TUCallCenter sharedInstance];
  frontmostAudioOrVideoCall = [v6 frontmostAudioOrVideoCall];

  if (!frontmostAudioOrVideoCall)
  {
    v8 = +[TUCallCenter sharedInstance];
    [v8 fetchCurrentCalls];

    v9 = +[TUCallCenter sharedInstance];
    frontmostAudioOrVideoCall = [v9 frontmostAudioOrVideoCall];
  }

  v10 = +[TUCallCenter sharedInstance];
  frontmostBargeCall = [v10 frontmostBargeCall];

  provider = [frontmostAudioOrVideoCall provider];
  if ([provider supportsDynamicSystemUI])
  {
    featureFlags = [(PHApplicationDelegate *)self featureFlags];
    if ([featureFlags groupConversations])
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

  v15 = [(ICSApplicationDelegate *)self shouldActivateSpringBoardRemoteAlertForCall:frontmostAudioOrVideoCall];
  if ([lCopy isShowCarPlayInCallUIURL])
  {
    v16 = 1;
    [(ICSApplicationDelegate *)self showCarPlayUIWithActivation:1];
    goto LABEL_39;
  }

  if (!((frontmostAudioOrVideoCall == 0) | v14 & 1))
  {
    [(ICSApplicationDelegate *)self requestGreenTea3PPresentationForCall:frontmostAudioOrVideoCall];
LABEL_38:
    v16 = 1;
    goto LABEL_39;
  }

  if (frontmostAudioOrVideoCall && ((v15 ^ 1) & 1) == 0)
  {
    isScreening = [frontmostAudioOrVideoCall isScreening];
    if ([frontmostAudioOrVideoCall receptionistState] == 7)
    {
      v18 = 0;
      if (!isScreening)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v18 = [frontmostAudioOrVideoCall receptionistState] != 0;
      if (!isScreening)
      {
        goto LABEL_28;
      }
    }

    if (!v18 && ([frontmostAudioOrVideoCall isWaitOnHoldActive] & 1) == 0)
    {
      isShowInCallUIURL = [lCopy isShowInCallUIURL];
LABEL_37:
      [(ICSApplicationDelegate *)self requestSpringBoardPresentationForCall:frontmostAudioOrVideoCall dialRequest:0 tappedPill:isShowInCallUIURL];
      goto LABEL_38;
    }

LABEL_28:
    v19 = +[UIDevice currentDevice];
    if ([v19 userInterfaceIdiom] == 1)
    {
      isShowInCallUIURL = 0;
    }

    else
    {
      isShowInCallUIURL = [lCopy isShowInCallUIURL];
    }

    goto LABEL_37;
  }

  if (!frontmostAudioOrVideoCall && [lCopy isShowHandoffEligibleNearbyURL])
  {
    [(ICSApplicationDelegate *)self requestHandoffEligibleConversationPresentation];
    goto LABEL_38;
  }

  if ([lCopy isShowLagunaPullConversationURL])
  {
    [(ICSApplicationDelegate *)self requestLagunaPullConversationPresentation];
    goto LABEL_38;
  }

  if (!frontmostAudioOrVideoCall && frontmostBargeCall)
  {
    if ([lCopy isShowIncomingTransmissionNoticeURL])
    {
      v21 = 2;
    }

    else if ([lCopy isShowAccessoryButtonEventsNoticeURL])
    {
      v21 = 3;
    }

    else
    {
      v21 = 1;
    }

    [(ICSApplicationDelegate *)self requestPTTPresentation:v21 forCall:frontmostBargeCall];
    goto LABEL_38;
  }

  v24 = sub_100009960();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_100254F14(v24);
  }

  v16 = 0;
LABEL_39:
  if ([lCopy isShowKeypadURL])
  {
    sceneManager = [(ICSApplicationDelegate *)self sceneManager];
    [sceneManager waitForRegistrationOfSceneWithType:0 completion:&stru_100357E98];
  }

  return v16;
}

- (BOOL)openVideoMessagePlaybackURL:(id)l
{
  lCopy = l;
  featureFlags = [(PHApplicationDelegate *)self featureFlags];
  videoMessagingEnabled = [featureFlags videoMessagingEnabled];

  v7 = sub_100004F84();
  videoMessageUUID = v7;
  if ((videoMessagingEnabled & 1) == 0)
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
    v21 = lCopy;
    _os_log_impl(&_mh_execute_header, videoMessageUUID, OS_LOG_TYPE_DEFAULT, "Opening video message playback URL '%@'", buf, 0xCu);
  }

  videoMessageUUID = [lCopy videoMessageUUID];
  if (!videoMessageUUID)
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

  messageStoreClient = [(ICSApplicationDelegate *)self messageStoreClient];
  v10 = messageStoreClient == 0;

  if (v10)
  {
    v11 = objc_alloc_init(ICSMessageStoreClient);
    [(ICSApplicationDelegate *)self setMessageStoreClient:v11];
  }

  objc_initWeak(buf, self);
  messageStoreClient2 = [(ICSApplicationDelegate *)self messageStoreClient];
  videoMessageUUID2 = [lCopy videoMessageUUID];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000863B4;
  v17[3] = &unk_100357EC0;
  objc_copyWeak(&v19, buf);
  videoMessageUUID = videoMessageUUID;
  v18 = videoMessageUUID;
  [messageStoreClient2 urlForVideoMessageWithUUID:videoMessageUUID2 completionHandler:v17];

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

- (void)acquirePreventSuspensionAssertionForDuration:(double)duration
{
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asked to acquire temporary prevent suspension assertion", &v16, 2u);
  }

  processAssertion = [(ICSApplicationDelegate *)self processAssertion];

  if (processAssertion)
  {
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      processAssertion2 = [(ICSApplicationDelegate *)self processAssertion];
      v16 = 138412290;
      v17 = processAssertion2;
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

  processAssertion3 = [(ICSApplicationDelegate *)self processAssertion];
  [processAssertion3 acquire];

  processAssertion4 = [(ICSApplicationDelegate *)self processAssertion];
  valid = [processAssertion4 valid];

  v15 = sub_100004F84();
  v7 = v15;
  if (valid)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      processAssertion2 = [(ICSApplicationDelegate *)self processAssertion];
      v16 = 138412290;
      v17 = processAssertion2;
      v9 = "Acquired temporary prevent suspension assertion: %@";
      goto LABEL_9;
    }

LABEL_10:

    [(ICSApplicationDelegate *)self startOrResetTimerForDuration:duration];
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
    processAssertion = [(ICSApplicationDelegate *)self processAssertion];
    v6 = 138412290;
    v7 = processAssertion;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating temporary prevent suspension assertion: %@", &v6, 0xCu);
  }

  processAssertion2 = [(ICSApplicationDelegate *)self processAssertion];
  [processAssertion2 invalidate];

  [(ICSApplicationDelegate *)self setProcessAssertion:0];
}

- (void)startOrResetTimerForDuration:(double)duration
{
  processAssertionTimer = [(ICSApplicationDelegate *)self processAssertionTimer];

  if (processAssertionTimer)
  {
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "We have an existing timer -- invalidate and reschedule the invalidation", buf, 2u);
    }

    processAssertionTimer2 = [(ICSApplicationDelegate *)self processAssertionTimer];
    [processAssertionTimer2 invalidate];
  }

  objc_initWeak(&location, self);
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000869F0;
  v14 = &unk_100356CE8;
  objc_copyWeak(&v15, &location);
  v8 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v11 block:duration];
  [(ICSApplicationDelegate *)self setProcessAssertionTimer:v8, v11, v12, v13, v14];

  v9 = sub_100004F84();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    processAssertionTimer3 = [(ICSApplicationDelegate *)self processAssertionTimer];
    *buf = 138412290;
    v18 = processAssertionTimer3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Scheduled prevent suspension invalidation timer: %@", buf, 0xCu);
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (BOOL)showSystemCallControlsURL:(id)l
{
  lCopy = l;
  v5 = sub_10010D6C4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = lCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Requested system call controls with URL: '%{public}@'", buf, 0xCu);
  }

  sceneManager = [(ICSApplicationDelegate *)self sceneManager];
  callScene = [sceneManager callScene];

  if (callScene)
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

  bannerPresentationManager = [(ICSApplicationDelegate *)self bannerPresentationManager];
  hasAssociatedCall = [bannerPresentationManager hasAssociatedCall];

  if (hasAssociatedCall)
  {
    bannerPresentationManager2 = [(ICSApplicationDelegate *)self bannerPresentationManager];
    wantsBannerWithoutScene = [bannerPresentationManager2 wantsBannerWithoutScene];

    if (!wantsBannerWithoutScene)
    {
      objc_initWeak(buf, self);
      v18 = sub_10010D6C4();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Presenting system call controls by creating call scene since one didn't exist before", v25, 2u);
      }

      bannerPresentationManager3 = [(ICSApplicationDelegate *)self bannerPresentationManager];
      activeCall = [bannerPresentationManager3 activeCall];
      [(ICSApplicationDelegate *)self requestPresentationForCall:activeCall dialRequest:0];

      sceneManager2 = [(ICSApplicationDelegate *)self sceneManager];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100086E44;
      v23[3] = &unk_100357EE8;
      objc_copyWeak(&v24, buf);
      [sceneManager2 waitForRegistrationOfSceneWithType:0 completion:v23];

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
  sceneManager = [(ICSApplicationDelegate *)self sceneManager];
  callScene = [sceneManager callScene];

  systemControlsShouldPresentAsEmbedded = [callScene systemControlsShouldPresentAsEmbedded];
  presentationMode = [callScene presentationMode];
  v7 = sub_10010D6C4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = SBSInCallPresentationModeDescription();
    v10 = v9;
    v11 = @"NO";
    *buf = 138543874;
    v34 = callScene;
    if (systemControlsShouldPresentAsEmbedded)
    {
      v11 = @"YES";
    }

    v35 = 2114;
    v36 = v9;
    v37 = 2112;
    v38 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Requested to show system call controls for the current context; callScene=%{public}@ presentationMode=%{public}@; shouldShowInCallControls:%@", buf, 0x20u);
  }

  if (systemControlsShouldPresentAsEmbedded)
  {
    if (presentationMode == 2)
    {
      bannerPresentationManager = [(ICSApplicationDelegate *)self bannerPresentationManager];
      [bannerPresentationManager showInCallHUD];
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
      v31 = callScene;
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
    features = [(PHApplicationDelegate *)self features];
    isSystemApertureEnabled = [features isSystemApertureEnabled];

    if (isSystemApertureEnabled)
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
      features2 = [(PHApplicationDelegate *)self features];
      isIncomingCallBannerEnabled = [features2 isIncomingCallBannerEnabled];

      v23 = sub_10010D6C4();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      if (isIncomingCallBannerEnabled)
      {
        if (v24)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Presenting call controls banner for current context", buf, 2u);
        }

        bannerPresentationManager2 = [(ICSApplicationDelegate *)self bannerPresentationManager];
        [bannerPresentationManager2 presentHUDForCurrentContext];
      }

      else
      {
        if (v24)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Presenting system call controls banner", buf, 2u);
        }

        bannerPresentationManager3 = [(ICSApplicationDelegate *)self bannerPresentationManager];
        [bannerPresentationManager3 presentSystemHUD];
      }
    }
  }
}

- (BOOL)showScreenSharingURL:(id)l
{
  lCopy = l;
  v5 = sub_1000314C4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = lCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "User requested launching Screen Sharing full screen after potential unlock with URL: %@", &v16, 0xCu);
  }

  featureFlags = [(PHApplicationDelegate *)self featureFlags];
  supportsScreenSharing = [featureFlags supportsScreenSharing];

  if ((supportsScreenSharing & 1) == 0)
  {
    v11 = sub_1000314C4();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1002551AC();
    }

    goto LABEL_9;
  }

  sharedMonitor = [(CNKScreenSharingStateMonitorFactory *)self->_screenSharingMonitorFactory sharedMonitor];
  isBroadcastingScreenSharing = [sharedMonitor isBroadcastingScreenSharing];

  if (isBroadcastingScreenSharing)
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

  sceneManager = [(ICSApplicationDelegate *)self sceneManager];
  screenSharingScene = [sceneManager screenSharingScene];

  if (screenSharingScene)
  {
    [screenSharingScene requestTransitionToPresentationMode:2 isUserInitiated:1 analyticsSource:0];
  }

  else
  {
    [(ICSApplicationDelegate *)self requestSpringBoardPresentationForScreenSharingAsPiP:0];
  }

  v12 = 1;
LABEL_14:

  return v12;
}

- (BOOL)updateForegroundAppURL:(id)l
{
  lCopy = l;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = lCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "'%@'", &v9, 0xCu);
  }

  bannerPresentationManager = [(ICSApplicationDelegate *)self bannerPresentationManager];
  v7 = [(ICSApplicationDelegate *)self updateForegroundAppURL:lCopy using:bannerPresentationManager];

  return v7;
}

- (BOOL)handleBackgroundLaunchURL:(id)l
{
  lCopy = l;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = lCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "'%@'", &v9, 0xCu);
  }

  v6 = +[TUCallCenter sharedInstance];
  frontmostCall = [v6 frontmostCall];

  if ([frontmostCall isEmergency] && objc_msgSend(frontmostCall, "supportsEmergencyFallback"))
  {
    [(ICSApplicationDelegate *)self handleSupportsEmergencyFallbackChangedForCall:frontmostCall];
  }

  return 1;
}

- (BOOL)refreshShareableContentURL:(id)l
{
  lCopy = l;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = lCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "'%@'", &v9, 0xCu);
  }

  foregroundAppBundleIdentifier = [lCopy foregroundAppBundleIdentifier];
  bannerPresentationManager = [(ICSApplicationDelegate *)self bannerPresentationManager];
  [bannerPresentationManager refreshShareableContentWithBundleIdentifier:foregroundAppBundleIdentifier];

  return 1;
}

- (void)handleHeadsetButtonPressForCall:(id)call sourceIdentifier:(id)identifier urlOptions:(id)options
{
  callCopy = call;
  identifierCopy = identifier;
  optionsCopy = options;
  v11 = [optionsCopy objectForKey:_UIApplicationOpenURLOptionsSourceProcessHandleKey];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(ICSApplicationDelegate *)self canModifyCallsForProcessHandle:v11])
  {
    [(ICSApplicationDelegate *)self handleHeadsetButtonPressForCall:callCopy sourceIdentifier:identifierCopy];
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

- (void)handleHeadsetButtonPressForCall:(id)call sourceIdentifier:(id)identifier
{
  callCopy = call;
  identifierCopy = identifier;
  if (callCopy && [callCopy isIncoming] && objc_msgSend(callCopy, "isVideo") && (-[ICSApplicationDelegate currentInCallScene](self, "currentInCallScene"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "presentationMode"), v7, v8 == 1))
  {
    currentInCallScene = [(ICSApplicationDelegate *)self currentInCallScene];
    [currentInCallScene requestTransitionToPresentationMode:2 shouldDismissCMASAlerts:0 analyticsSource:@"SBSUIInCallTransitionAnalyticsSourceHeadsetButtonPress"];
  }

  else
  {
    currentInCallScene2 = [(ICSApplicationDelegate *)self currentInCallScene];
    delegate = [currentInCallScene2 delegate];
    isAttachedToWindowedAccessoryWithValidFrameForCurrentScene = [delegate isAttachedToWindowedAccessoryWithValidFrameForCurrentScene];

    currentInCallScene = +[TUCallCenter sharedInstance];
    if (isAttachedToWindowedAccessoryWithValidFrameForCurrentScene && [callCopy isConversation])
    {
      isIncoming = [callCopy isIncoming];
    }

    else
    {
      isIncoming = 0;
    }

    [currentInCallScene handleActionForWiredHeadsetMiddleButtonPressWithSourceIdentifier:identifierCopy allowBluetoothAnswerWithoutDowngrade:1 shouldForceDowngradeToAudio:isIncoming];
  }
}

- (id)incomingVideoCallUsingCallContainer:(id)container
{
  containerCopy = container;
  incomingVideoCall = [containerCopy callPassingTest:&stru_100357F30];
  if (!incomingVideoCall)
  {
    incomingVideoCall = [containerCopy callPassingTest:&stru_100357F50];
    if (!incomingVideoCall)
    {
      incomingVideoCall = [containerCopy incomingVideoCall];
    }
  }

  v5 = incomingVideoCall;

  return v5;
}

- (id)currentVideoCallUsingCallContainer:(id)container
{
  containerCopy = container;
  currentVideoCall = [containerCopy callPassingTest:&stru_100357F70];
  if (!currentVideoCall)
  {
    currentVideoCall = [containerCopy callPassingTest:&stru_100357F90];
    if (!currentVideoCall)
    {
      currentVideoCall = [containerCopy currentVideoCall];
    }
  }

  v5 = currentVideoCall;

  return v5;
}

- (id)remoteAlertShellViewControllerForWindowScene:(id)scene
{
  sceneCopy = scene;
  delegate = [sceneCopy delegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    delegate2 = [sceneCopy delegate];
    windowSceneToWindowMap = [delegate2 windowSceneToWindowMap];
    v8 = [windowSceneToWindowMap objectForKey:sceneCopy];

    rootViewController = [v8 rootViewController];
    objc_opt_class();
    v10 = objc_opt_isKindOfClass();

    if (v10)
    {
      rootViewController2 = [v8 rootViewController];
    }

    else
    {
      rootViewController2 = 0;
    }

    v12 = rootViewController2;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (PHInCallRemoteAlertShellViewController)inCallShellViewController
{
  currentInCallScene = [(ICSApplicationDelegate *)self currentInCallScene];
  v4 = [(ICSApplicationDelegate *)self remoteAlertShellViewControllerForWindowScene:currentInCallScene];

  return v4;
}

- (void)screenSharingStateMonitor:(id)monitor didUpdateScreenSharingState:(BOOL)state
{
  if (state)
  {
    call = [monitor call];
    isConnected = [call isConnected];

    if ((isConnected & 1) == 0)
    {
      v7 = [NSString stringWithFormat:@"Attempting to show screen sharing for a call that isn't connected yet"];
      NSLog(@"** TUAssertion failure: %@", v7);

      _TUAssertShouldCrashApplication();
    }

    sceneManager = [(ICSApplicationDelegate *)self sceneManager];
    v9 = [sceneManager hasPendingOrExistingSceneOfType:1];

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

- (void)screenSharingStateMonitor:(id)monitor didUpdateScreenSharingBroadcastingState:(BOOL)state
{
  stateCopy = state;
  [(ICSApplicationDelegate *)self updatePrefersBannersHiddenFromClonedDisplay];
  featureFlags = [(PHApplicationDelegate *)self featureFlags];
  screenSharingDrawToHighlightEnabled = [featureFlags screenSharingDrawToHighlightEnabled];

  if (screenSharingDrawToHighlightEnabled)
  {
    if (stateCopy)
    {
      v9 = +[TUCallCenter sharedInstance];
      frontmostCall = [v9 frontmostCall];
      [(ICSApplicationDelegate *)self requestSpringBoardPresentationForScreenSharingBroadcaster:frontmostCall];
    }

    else
    {

      [(ICSApplicationDelegate *)self dismissScreenSharingBroadcasterSession];
    }
  }
}

- (void)screenSharingInteractionController:(id)controller didUpdateRemoteControlStatus:(BOOL)status
{
  statusCopy = status;
  featureFlags = [(PHApplicationDelegate *)self featureFlags];
  screenSharingRemoteControlEnabled = [featureFlags screenSharingRemoteControlEnabled];

  if (screenSharingRemoteControlEnabled)
  {
    [(ICSApplicationDelegate *)self updatePrefersBannersHiddenFromClonedDisplay];
    if (statusCopy)
    {
      v14 = +[TUCallCenter sharedInstance];
      conversationManager = [v14 conversationManager];
      v9 = +[TUCallCenter sharedInstance];
      v10 = +[TUCallCenter sharedInstance];
      frontmostAudioOrVideoCall = [v10 frontmostAudioOrVideoCall];
      v12 = [v9 activeConversationForCall:frontmostAudioOrVideoCall];
      [conversationManager addScreenSharingType:2 forConversation:v12];
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

- (void)routesChangedForRouteController:(id)controller
{
  routeListController = [(ICSApplicationDelegate *)self routeListController];
  [routeListController reload];
}

- (void)bannerPresentationManagerRequestToPresentBanner:(id)banner
{
  bannerCopy = banner;
  bannerPresentationRequestTimer = [(ICSApplicationDelegate *)self bannerPresentationRequestTimer];

  if (bannerPresentationRequestTimer)
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
    v7 = bannerCopy;
    v30 = v7;
    v8 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v29 block:3.0];
    [(ICSApplicationDelegate *)self setBannerPresentationRequestTimer:v8];

    bannerPresentationManager = [(ICSApplicationDelegate *)self bannerPresentationManager];
    wantsBannerWithoutScene = [bannerPresentationManager wantsBannerWithoutScene];

    if (wantsBannerWithoutScene)
    {
      bannerPresentationRequestTimer2 = [(ICSApplicationDelegate *)self bannerPresentationRequestTimer];
      [bannerPresentationRequestTimer2 invalidate];

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
      sceneManager = [(ICSApplicationDelegate *)self sceneManager];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000886D0;
      v20[3] = &unk_100358008;
      v14 = v12;
      v21 = v14;
      [sceneManager waitForRegistrationOfSceneWithType:0 completion:v20];

      features = [(PHApplicationDelegate *)self features];
      isDominoEnabled = [features isDominoEnabled];

      if (isDominoEnabled)
      {
        sceneManager2 = [(ICSApplicationDelegate *)self sceneManager];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_1000887C0;
        v18[3] = &unk_100356A70;
        v19 = v14;
        [sceneManager2 waitForRegistrationOfGenericSceneWithType:5 completion:v18];
      }

      _Block_object_dispose(buf, 8);
    }

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }
}

- (void)bannerPresentationManagerUpdatedControlsManagerCallUUID:(id)d
{
  dCopy = d;
  callUUIDWaitingToPresentBanner = [(ICSApplicationDelegate *)self callUUIDWaitingToPresentBanner];
  v6 = [callUUIDWaitingToPresentBanner isEqual:dCopy];

  if (v6)
  {
    [(ICSApplicationDelegate *)self setCallUUIDWaitingToPresentBanner:0];
    currentInCallScene = [(ICSApplicationDelegate *)self currentInCallScene];
    presentationMode = [currentInCallScene presentationMode];

    if (!presentationMode)
    {
      v9 = sub_10010D6C4();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        v11 = dCopy;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Banner presentation manager updated call UUID to %{public}@ and scene is still dismissed, requesting to show controls", &v10, 0xCu);
      }

      [(ICSApplicationDelegate *)self showCallControlsForCurrentContext];
    }
  }
}

- (void)bannerPresentationManagerBannerPresentationManagerAVUpgradedCallUUID:(id)d
{
  dCopy = d;
  currentInCallScene = [(ICSApplicationDelegate *)self currentInCallScene];

  if (!currentInCallScene)
  {
    v6 = +[TUCallCenter sharedInstance];
    uUIDString = [dCopy UUIDString];
    v8 = [v6 callWithCallUUID:uUIDString];

    if (!v8 || [v8 status] != 4)
    {
      v9 = sub_10010D6C4();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Banner presentation manager detected AVLess -> AV upgrade, requesting to present scene", v12, 2u);
      }

      [(ICSApplicationDelegate *)self setAvUpgradedCallUUIDForDismissedScene:dCopy];
      bannerPresentationManager = [(ICSApplicationDelegate *)self bannerPresentationManager];
      activeCall = [bannerPresentationManager activeCall];
      [(ICSApplicationDelegate *)self requestPresentationForCall:activeCall dialRequest:0];

      [(ICSApplicationDelegate *)self setAvUpgradedCallUUIDForDismissedScene:0];
    }
  }
}

- (void)bannerPresentationManagerAVDowngradedGroupUUID:(id)d
{
  v4 = sub_10010D6C4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Banner presentation manager detected AV -> AVLess downgrade, dismissing scene", v9, 2u);
  }

  features = [(PHApplicationDelegate *)self features];
  isSystemApertureEnabled = [features isSystemApertureEnabled];

  if (isSystemApertureEnabled)
  {
    [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHAVLessConversationAssertionReason"];
    currentInCallScene = [(ICSApplicationDelegate *)self currentInCallScene];

    if (currentInCallScene)
    {
      currentInCallScene2 = [(ICSApplicationDelegate *)self currentInCallScene];
      [currentInCallScene2 requestTransitionToPresentationMode:0 shouldDismissCMASAlerts:0];
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
  frontmostAudioOrVideoCall = [v3 frontmostAudioOrVideoCall];

  [(ICSApplicationDelegate *)self requestSpringBoardPresentationForCall:frontmostAudioOrVideoCall dialRequest:0 tappedPill:1];
}

- (BOOL)bannerPresentationManagerDismissSBBannerIfNeeded
{
  currentInCallScene = [(ICSApplicationDelegate *)self currentInCallScene];
  v3 = currentInCallScene;
  if (currentInCallScene && [currentInCallScene presentationMode] == 1 && (objc_msgSend(v3, "keyWindow"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "rootViewController"), v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, v4, (isKindOfClass & 1) != 0))
  {
    keyWindow = [v3 keyWindow];
    rootViewController = [keyWindow rootViewController];

    transitionFromBannerToDismissedIfNecessary = [rootViewController transitionFromBannerToDismissedIfNecessary];
  }

  else
  {
    transitionFromBannerToDismissedIfNecessary = 0;
  }

  return transitionFromBannerToDismissedIfNecessary;
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
  sceneManager = [(ICSApplicationDelegate *)self sceneManager];
  callScene = [sceneManager callScene];
  session = [callScene session];
  persistentIdentifier = [session persistentIdentifier];

  return persistentIdentifier;
}

- (BOOL)hasPresentedFullScreenCallUI
{
  sceneManager = [(ICSApplicationDelegate *)self sceneManager];
  callSceneHasPresentedFullScreen = [sceneManager callSceneHasPresentedFullScreen];

  return callSceneHasPresentedFullScreen;
}

- (BOOL)isPresentingFullScreenCallUI
{
  currentInCallScene = [(ICSApplicationDelegate *)self currentInCallScene];
  v3 = [currentInCallScene presentationMode] == 2;

  return v3;
}

- (BOOL)isPresentingFullScreenOverlayCallUI
{
  currentInCallScene = [(ICSApplicationDelegate *)self currentInCallScene];
  v3 = [currentInCallScene presentationMode] == 3;

  return v3;
}

- (BOOL)isAlertAvailable
{
  alertCoordinator = [(ICSApplicationDelegate *)self alertCoordinator];
  isAvailable = [alertCoordinator isAvailable];

  return isAvailable;
}

- (id)audioRouteMenu
{
  routeListController = [(ICSApplicationDelegate *)self routeListController];

  if (routeListController)
  {
    routeListController2 = [(ICSApplicationDelegate *)self routeListController];
    [routeListController2 reload];
  }

  else
  {
    routeListController2 = [PHAudioRoutingMenuController menuControllerWithCallStyle:1 dataSource:self delegate:self];
    [(ICSApplicationDelegate *)self setRouteListController:routeListController2];
  }

  routeListController3 = [(ICSApplicationDelegate *)self routeListController];
  menu = [routeListController3 menu];

  return menu;
}

- (UIImage)audioRouteGlyphForDevice
{
  v2 = +[PHDevice currentDevice];
  audioRouteGlyphImage = [v2 audioRouteGlyphImage];

  return audioRouteGlyphImage;
}

- (id)routesForAudioRoutingMenuController:(id)controller
{
  v3 = +[TUCallCenter sharedInstance];
  routeController = [v3 routeController];
  sortedRoutes = [routeController sortedRoutes];

  return sortedRoutes;
}

- (void)audioRoutingMenuController:(id)controller didSelectRoute:(id)route
{
  routeCopy = route;
  v6 = +[TUCallCenter sharedInstance];
  routeController = [v6 routeController];
  [routeController pickRoute:routeCopy];
}

- (void)audioRoutingMenuController:(id)controller didSelectLagunaActionForHandle:(id)handle conversation:(id)conversation
{
  handleCopy = handle;
  conversationCopy = conversation;
  v8 = +[TUCallCenter sharedInstance];
  neighborhoodActivityConduit = [v8 neighborhoodActivityConduit];
  uUID = [conversationCopy UUID];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000891D4;
  v12[3] = &unk_100358030;
  v13 = handleCopy;
  v11 = handleCopy;
  [neighborhoodActivityConduit handoffConversation:uUID toTVDevice:v11 completion:v12];
}

- (void)conversationManager:(id)manager addedActiveConversation:(id)conversation
{
  [(ICSApplicationDelegate *)self handleStateChangeForAVLessConversation:conversation fromConversation:0];
  v5 = +[TUCallCenter sharedInstance];
  frontmostAudioOrVideoCall = [v5 frontmostAudioOrVideoCall];

  if ([(ICSApplicationDelegate *)self shouldAttemptRePresentationOfBannerOnConversationUpdate]&& frontmostAudioOrVideoCall)
  {
    v7 = +[TUCallCenter sharedInstance];
    v8 = [v7 activeConversationForCall:frontmostAudioOrVideoCall];
    if (!v8)
    {
LABEL_7:

      goto LABEL_8;
    }

    v9 = v8;
    currentInCallScene = [(ICSApplicationDelegate *)self currentInCallScene];
    if ([currentInCallScene presentationMode] || objc_msgSend(frontmostAudioOrVideoCall, "status") == 5)
    {

      goto LABEL_7;
    }

    status = [frontmostAudioOrVideoCall status];

    if (status != 6)
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

- (void)handleStateChangeForAVLessConversation:(id)conversation fromConversation:(id)fromConversation
{
  conversationCopy = conversation;
  fromConversationCopy = fromConversation;
  if ([conversationCopy avMode] || objc_msgSend(conversationCopy, "state") == 4 || !objc_msgSend(conversationCopy, "state"))
  {
    goto LABEL_13;
  }

  bannerPresentationManager = [(ICSApplicationDelegate *)self bannerPresentationManager];
  if ([bannerPresentationManager wantsBannerWithoutScene])
  {

LABEL_13:
    [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHAVLessConversationAssertionReason"];
    goto LABEL_14;
  }

  bannerPresentationManager2 = [(ICSApplicationDelegate *)self bannerPresentationManager];
  placeholderCallGroupUUID = [bannerPresentationManager2 placeholderCallGroupUUID];
  groupUUID = [conversationCopy groupUUID];
  v12 = [placeholderCallGroupUUID isEqual:groupUUID];

  if (!v12)
  {
    goto LABEL_13;
  }

  if (fromConversationCopy && [fromConversationCopy avMode])
  {
    v13 = sub_10010D6C4();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      currentInCallScene = [(ICSApplicationDelegate *)self currentInCallScene];
      v22 = 138412546;
      v23 = conversationCopy;
      v24 = 2112;
      v25 = currentInCallScene;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Detected transition from AV -> AVLess for conversation: %@. Dismissing currentInCallScene: %@", &v22, 0x16u);
    }

    currentInCallScene2 = [(ICSApplicationDelegate *)self currentInCallScene];
    [currentInCallScene2 requestTransitionToPresentationMode:0 shouldDismissCMASAlerts:0];
  }

  [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHAVLessConversationAssertionReason"];
  [(ICSApplicationDelegate *)self requestSpringBoardPresentationForCallDetailsView];
LABEL_14:
  v17 = +[TUCallCenter sharedInstance];
  conversationManager = [v17 conversationManager];
  avLessConversation = [conversationManager avLessConversation];

  if (avLessConversation)
  {
    v20 = +[PHPIPController defaultPIPController];
    [v20 updatePipSharePlaySessionWithConversation:conversationCopy];
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

- (void)conversationManager:(id)manager sharePlayAvailableChanged:(BOOL)changed
{
  v4 = [(ICSApplicationDelegate *)self routeListController:manager];
  [v4 reload];
}

- (void)conversationManager:(id)manager screenSharingAvailableChanged:(BOOL)changed
{
  v4 = [(ICSApplicationDelegate *)self routeListController:manager];
  [v4 reload];
}

- (void)handleSupportsEmergencyFallbackChangedNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    object2 = [notificationCopy object];
  }

  else
  {
    object2 = 0;
  }

  [(ICSApplicationDelegate *)self handleSupportsEmergencyFallbackChangedForCall:object2];
}

- (void)handleAlertInvokedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "alert was invoked, nil-ing out AlertCoordinator", v10, 2u);
  }

  [(ICSApplicationDelegate *)self setAlertCoordinator:0];
  userInfo = [notificationCopy userInfo];

  v7 = +[_TtC13InCallService16AlertCoordinator automaticallyInvokedKey];
  v8 = [userInfo objectForKeyedSubscript:v7];
  bOOLValue = [v8 BOOLValue];

  if (bOOLValue)
  {
    [(ICSApplicationDelegate *)self startSOSFlowWithActivationReason:SOSRemoteAlertActivationReasonActivatingForSOSAlertRestingScreen];
  }
}

- (void)handleSupportsEmergencyFallbackChangedForCall:(id)call
{
  callCopy = call;
  v5 = callCopy;
  if (callCopy)
  {
    if ([callCopy isEmergency])
    {
      if ([v5 supportsEmergencyFallback])
      {
        [(ICSApplicationDelegate *)self acquirePreventSuspensionAssertion];
        alertCoordinator = [(ICSApplicationDelegate *)self alertCoordinator];

        if (!alertCoordinator)
        {
          v7 = sub_100004F84();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *v10 = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Emergency fallback changed and alertCoordinator not initialized. Starting monitoring to start background countdown if necessary", v10, 2u);
          }

          v8 = objc_alloc_init(_TtC13InCallService16AlertCoordinator);
          [(ICSApplicationDelegate *)self setAlertCoordinator:v8];

          alertCoordinator2 = [(ICSApplicationDelegate *)self alertCoordinator];
          [alertCoordinator2 startMonitoring];
        }
      }
    }
  }
}

- (void)prepareForAmbientScene:(id)scene
{
  sceneCopy = scene;
  v5 = sub_10010D904();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = sceneCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Preparing for ambient scene: %@", &v7, 0xCu);
  }

  sceneManager = [(ICSApplicationDelegate *)self sceneManager];
  [sceneManager registerGenericScene:sceneCopy ofType:5];
}

- (void)transitionFromAmbientScene
{
  [(ICSApplicationDelegate *)self setIsPresentingAmbient:0];
  sceneManager = [(ICSApplicationDelegate *)self sceneManager];
  ambientScene = [sceneManager ambientScene];

  if (ambientScene)
  {
    sceneManager2 = [(ICSApplicationDelegate *)self sceneManager];
    [sceneManager2 didDismissSceneOfType:5];
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
  routeController = [v2 routeController];
  sortedRoutes = [routeController sortedRoutes];

  v5 = [sortedRoutes countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(sortedRoutes);
        }

        if ([*(*(&v9 + 1) + 8 * i) isCarKitRoute])
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [sortedRoutes countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  carKitSessionStatus = [(ICSApplicationDelegate *)self carKitSessionStatus];
  currentSession = [carKitSessionStatus currentSession];

  if (currentSession)
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
    isSpringBoardLocked = [v8 isSpringBoardLocked];

    if (isSpringBoardLocked)
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

- (void)shouldHandleMRCommand:(unsigned int)command completion:(id)completion
{
  completionCopy = completion;
  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = command;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Asked to handle MRCommand %u", v11, 8u);
  }

  shouldHandleBluetoothCommand = [(ICSApplicationDelegate *)self shouldHandleBluetoothCommand];
  v9 = sub_100004F84();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (shouldHandleBluetoothCommand)
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

  completionCopy[2](completionCopy, shouldHandleBluetoothCommand, 0);
}

- (void)shouldHandleMRCommand:(unsigned int)command sourceIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = sub_100004F84();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109378;
    v14[1] = command;
    v15 = 2112;
    v16 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Asked to handle MRCommand %u from routeUID: %@", v14, 0x12u);
  }

  shouldHandleBluetoothCommand = [(ICSApplicationDelegate *)self shouldHandleBluetoothCommand];
  v12 = sub_100004F84();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (shouldHandleBluetoothCommand)
  {
    if (v13)
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received a MediaRemoteCommand for a screening call and we are presenting screening UI, so treating this as a regular button press and hijacking command from MR", v14, 2u);
    }

    v12 = +[TUCallCenter sharedInstance];
    [v12 handleActionForWiredHeadsetMiddleButtonPressWithSourceIdentifier:identifierCopy allowBluetoothAnswerWithoutDowngrade:0 shouldForceDowngradeToAudio:1];
  }

  else if (v13)
  {
    LOWORD(v14[0]) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received a MediaRemoteCommand for a screening call but we are NOT presenting screening UI, so returning the command back to MR", v14, 2u);
  }

  completionCopy[2](completionCopy, shouldHandleBluetoothCommand, 0);
}

- (void)handleRedialCommandWhileScreening:(id)screening
{
  screeningCopy = screening;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412290;
    v25 = screeningCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asked to handle redial %@", &v24, 0xCu);
  }

  v6 = +[TUCallCenter sharedInstance];
  screeningCall = [v6 screeningCall];

  if (screeningCall)
  {
    [screeningCopy setPreferDefaultApp:0];
    handle = [screeningCall handle];
    value = [handle value];
    v10 = [TUHandle normalizedHandleWithDestinationID:value];

    handle2 = [screeningCall handle];
    value2 = [handle2 value];
    v13 = [TUHandle normalizedHandleWithDestinationID:value2];

    v14 = [(__CFString *)v13 isEqualToHandle:v10];
    shouldHandleBluetoothCommand = [(ICSApplicationDelegate *)self shouldHandleBluetoothCommand];
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
    if ((shouldHandleBluetoothCommand | v14))
    {
      if (v18)
      {
        v19 = @"NO";
        if (shouldHandleBluetoothCommand)
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
      audioSourceIdentifier = [screeningCopy audioSourceIdentifier];
      [v21 handleActionForWiredHeadsetMiddleButtonPressWithSourceIdentifier:audioSourceIdentifier allowBluetoothAnswerWithoutDowngrade:0 shouldForceDowngradeToAudio:1];
    }

    else
    {
      if (v18)
      {
        LOWORD(v24) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Not presenting screening UI so dialing for redial", &v24, 2u);
      }

      v21 = +[TUCallCenter sharedInstance];
      v23 = [v21 dialWithRequest:screeningCopy];
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

- (void)fetchInCallUIState:(id)state
{
  stateCopy = state;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asked to fetch UI state", &v13, 2u);
  }

  isPresentingFullScreenCallUI = [(ICSApplicationDelegate *)self isPresentingFullScreenCallUI];
  if (isPresentingFullScreenCallUI)
  {
    [(ICSApplicationDelegate *)self inCallShellViewController];
  }

  else
  {
    [(ICSApplicationDelegate *)self bannerPresentationManager];
  }
  v7 = ;
  isMicIndicatorVisible = [v7 isMicIndicatorVisible];

  v9 = 2;
  if (!isMicIndicatorVisible)
  {
    v9 = 0;
  }

  v10 = v9 | isPresentingFullScreenCallUI;
  v11 = [[TUUIContext alloc] initWithState:v10];
  v12 = sub_100004F84();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "UIState is %lu", &v13, 0xCu);
  }

  stateCopy[2](stateCopy, v11, 0);
}

- (void)fetchRemoteControlStatus:(id)status
{
  statusCopy = status;
  screenSharingInteractionControllerFactory = [(ICSApplicationDelegate *)self screenSharingInteractionControllerFactory];
  sharedController = [screenSharingInteractionControllerFactory sharedController];
  remoteControlStatus = [sharedController remoteControlStatus];

  screenSharingInteractionControllerFactory2 = [(ICSApplicationDelegate *)self screenSharingInteractionControllerFactory];
  sharedController2 = [screenSharingInteractionControllerFactory2 sharedController];
  latestRemoteControlDate = [sharedController2 latestRemoteControlDate];

  if (remoteControlStatus != 2)
  {
    v11 = +[NSDate date];
    [v11 timeIntervalSinceDate:latestRemoteControlDate];
    v13 = v12;

    if (v13 < 3.0)
    {
      remoteControlStatus = 2;
    }
  }

  v14 = sub_100004F84();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134217984;
    v16 = remoteControlStatus;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Returning remote control status: %ld", &v15, 0xCu);
  }

  statusCopy[2](statusCopy, remoteControlStatus, 0);
}

- (void)updateiPadMenuBarApplicationName:(id)name
{
  nameCopy = name;
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
    v9 = [(ICSApplicationDelegate *)self getMenuBarApplicationName:nameCopy];
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
  selfCopy = self;
  v3 = ICSApplicationDelegate.isPresentingAmbient.getter();

  return v3 & 1;
}

- (void)setIsPresentingAmbient:(BOOL)ambient
{
  selfCopy = self;
  ICSApplicationDelegate.isPresentingAmbient.setter();
}

- (BOOL)updateForegroundAppURL:(id)l using:(id)using
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  usingCopy = using;
  selfCopy = self;
  LOBYTE(self) = ICSApplicationDelegate.updateForegroundApp(url:using:)(usingCopy, v13);

  (*(v7 + 8))(v10, v6);
  return self & 1;
}

- (void)handleInterventionURL:(id)l continueWith:(id)with
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(with);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  selfCopy = self;
  ICSApplicationDelegate.handleInterventionURL(_:continueWith:)(v10, sub_1001794FC, v12);

  (*(v7 + 8))(v10, v6);
}

- (void)dismissAnsweredCallBannerIfNeeded
{
  selfCopy = self;
  ICSApplicationDelegate.dismissAnsweredCallBannerIfNeeded()();
}

- (id)makeAnsweringMachineWithPrivateSelf:(id)self
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_100177D90(self);
  swift_unknownObjectRelease();

  return v6;
}

- (void)requestScreeningSceneIfNeeded:(id)needed
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1001784A8();
}

- (id)makeWaitOnHoldService
{
  selfCopy = self;
  v3 = sub_100178B98();

  return v3;
}

- (void)requestFullScreenSpringBoardPresentationWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_100178C24(selfCopy, v4);
  _Block_release(v4);
}

- (TUCallCenter)callCenter
{
  selfCopy = self;
  v3 = sub_1001C5394();

  return v3;
}

- (void)modifyTopLevelMenuWindow:(id)window :(id)a4
{
  swift_unknownObjectRetain();
  v7 = a4;
  selfCopy = self;
  sub_1001C5E88(window, a4);
  swift_unknownObjectRelease();
}

- (UIMenu)menuItemMute
{
  selfCopy = self;
  v3.super.super.isa = sub_1001C644C().super.super.isa;

  return v3.super.super.isa;
}

- (UIMenu)menuAudioOutput
{
  selfCopy = self;
  v3.super.super.isa = sub_1001C66A4().super.super.isa;

  return v3.super.super.isa;
}

- (id)makeAudioOutputItems
{
  selfCopy = self;
  sub_1001C688C();

  sub_1000064BC(0, &qword_1003ACFE0);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)makeAudioOutputItemWithRoute:(id)route
{
  routeCopy = route;
  selfCopy = self;
  v6 = sub_1001C6BE4(routeCopy);

  return v6;
}

- (id)getMenuBarApplicationName:(id)name
{
  nameCopy = name;
  selfCopy = self;
  ICSApplicationDelegate.getMenuBarApplicationName(_:)(nameCopy);

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

- (void)toggleMute:(id)mute
{
  muteCopy = mute;
  selfCopy = self;
  sub_1001C72DC();
}

@end