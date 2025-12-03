@interface PHInCallRootViewController
+ (int64_t)cnkDeviceOrientationForUIDeviceOrientation:(int64_t)orientation;
+ (int64_t)cnkSupportedDeviceOrientationsFromUIInterfaceOrientationMask:(unint64_t)mask;
+ (int64_t)uiDeviceOrientationForCNKDeviceOrientation:(int64_t)orientation;
+ (void)forceClearAllDismissalAssertions;
+ (void)initialize;
+ (void)obtainDismissalAssertionForReason:(id)reason;
+ (void)releaseDismissalAssertionForReason:(id)reason;
+ (void)releaseDismissalAssertionReasons:(id)reasons;
+ (void)setStatusBarPillSuppressionForBackgroundActivities:(id)activities onWindowScene:(id)scene;
- (BOOL)_shouldAutoAnswer;
- (BOOL)currentViewControllerIsMultiway;
- (BOOL)desiresLockAndVolumeButtonEventsForCallContainer:(id)container;
- (BOOL)desiresLockButtonEvents;
- (BOOL)desiresLockButtonEventsForCallContainer:(id)container;
- (BOOL)gameControllerDidRequestActivation;
- (BOOL)gameControllerDidRequestDismissal;
- (BOOL)gameControllerDidRequestFocus:(BOOL)focus;
- (BOOL)isContactBlockedWithCall:(id)call;
- (BOOL)isCurrentViewControllerAudio;
- (BOOL)isDisplayStyleMiniWindow;
- (BOOL)isFirstTimeInCallHistoryWithHandleValue:(id)value normalizedHandleValue:(id)handleValue;
- (BOOL)isFullScreen;
- (BOOL)isMicIndicatorVisible;
- (BOOL)isPickedRouteReceiver;
- (BOOL)isPipped;
- (BOOL)isPresentingCallDetailsView;
- (BOOL)isPresentingContactDetails;
- (BOOL)isPresentingContactsViewController;
- (BOOL)isPresentingEffectsBrowser;
- (BOOL)isPresentingRemoteHostViewController;
- (BOOL)isPresentingViewControllerWithSensitiveInformation;
- (BOOL)isShowing6UP;
- (BOOL)isShowingHUD;
- (BOOL)isShownAboveCoverSheet;
- (BOOL)prefersHomeIndicatorAutoHidden;
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation;
- (BOOL)shouldConsumeDeviceLockEvent;
- (BOOL)shouldReleaseAudioCallViewController;
- (BOOL)shouldShowCallEndedBlockAndReportScreen:(id)screen;
- (BOOL)shouldShowInCallWindowScene;
- (BOOL)shouldShowNavigationBarForViewController:(id)controller;
- (BOOL)shouldShowSOS;
- (BOOL)shouldShowScreenTimeShield;
- (BOOL)shouldShowVideoCallBlockAndReportScreen;
- (BOOL)shouldStartMultiwayPIP;
- (BOOL)transitionFromBannerToDismissedIfNecessary;
- (BOOL)usesPaddingInsteadOfSafeArea;
- (BOOL)wantsMiniWindowCoverViewController;
- (CGSize)preferredPIPContentAspectRatio;
- (NSTimer)callDurationTimerForParticipantsView;
- (PHAudioCallViewControllerProtocol)audioCallViewController;
- (PHInCallRootViewController)initWithCallDisplayStyleManager:(id)manager;
- (PHInCallRootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PHSOSViewController)sosViewController;
- (SBSUIInCallWindowScene)inCallWindowScene;
- (TUFeatureFlags)featureFlags;
- (UIImage)audioRouteGlyphForDevice;
- (UINavigationController)audioCallNavigationController;
- (UINavigationController)videoCallNavigationController;
- (UIViewController)currentViewController;
- (UIViewController)oldMultiwayPIPViewController;
- (double)viewController:(id)controller rubberBandConstrained:(double)constrained inRange:(double)range;
- (id)_remoteViewControllerProxy;
- (id)audioCallViewControllerIfLoaded;
- (id)audioRouteGlyphFor:(id)for buttonStyle:(int64_t)style;
- (id)audioRouteMenu;
- (id)backgroundActivities;
- (id)bottomControlsViewForViewController:(id)controller;
- (id)callForVideoCallBasedViewController:(id)controller;
- (id)callParticipantLabelsViewForViewController:(id)controller;
- (id)findMostRecentSilencedCallWithHandleValue:(id)value normalizedHandleValue:(id)handleValue ignoredIdentifier:(id)identifier;
- (id)getPreferredBackgroundActivitiesToSuppress:(id)suppress whenIsPipped:(BOOL)pipped whenTemporarilyAllowAllStatusBarPills:(BOOL)pills;
- (id)labelForParticipantAtIndex:(unint64_t)index inParticipantsView:(id)view allowsDuration:(BOOL)duration;
- (id)linkNameForCall:(id)call;
- (id)localizedSenderIdentityForParticipantAtIndex:(unint64_t)index inParticipantsView:(id)view;
- (id)makeConversationHUDDetailsNavigationControllerWithBannerPresentationManager:(id)manager delegate:(id)delegate shouldSetControlsManagerInCallDetailsDelegate:(BOOL)detailsDelegate;
- (id)makeMultiwayConversationViewControllerWithCall:(id)call bannerPresentationManager:(id)manager;
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
- (id)routesForAudioRoutingMenuController:(id)controller;
- (id)sosHandles;
- (id)updateContactInformationForParticipantViewWithInCallState:(unsigned __int16)state;
- (id)updateSecondaryStringForParticipantViewWithInCallState:(unsigned __int16)state allowsDuration:(BOOL)duration;
- (unint64_t)desiredButtonEventsForCallContainer:(id)container;
- (unint64_t)desiredSceneButtonEventsForCallContainer:(id)container;
- (unsigned)inCallState;
- (void)_loadAudioCallViewController;
- (void)_loadMultiwayViewControllerForCall:(id)call;
- (void)_loadPTTFullScreenContainerViewController;
- (void)_loadSOSViewController;
- (void)_loadUserFeedbackViewController;
- (void)_obtainThenReleaseTransitionAssertion;
- (void)_reloadSOSHandles;
- (void)_showFailureAlertForCall:(id)call;
- (void)_showTelephonyFallbackAlertForCall:(id)call;
- (void)_startMonitoringDisplayLayout;
- (void)_testing_finishedAnimatingIn;
- (void)_testing_viewDidAppear;
- (void)_testing_viewWillAppear;
- (void)_transitionFromViewController:(id)controller toViewController:(id)viewController;
- (void)_transitionFromViewController:(id)controller toViewController:(id)viewController completion:(id)completion;
- (void)_willAppearInRemoteViewController:(id)controller;
- (void)acceptCallButtonTapped:(id)tapped;
- (void)ambientSetIdleTimerDisabled:(BOOL)disabled;
- (void)animateInWithCompletionBlock:(id)block;
- (void)animateToAlert;
- (void)audioRoutingMenuController:(id)controller didSelectRoute:(id)route;
- (void)autoAnswer;
- (void)bannerTapped:(id)tapped;
- (void)blockWithHandle:(id)handle;
- (void)bottomBarActionPerformed:(int64_t)performed withCompletionState:(int64_t)state fromBar:(id)bar;
- (void)callConnectedNotification:(id)notification;
- (void)callContinuityChangedNotification:(id)notification;
- (void)callDisplayContextChanged:(id)changed;
- (void)callDisplayStyleDidChangeFromStyle:(int64_t)style toStyle:(int64_t)toStyle;
- (void)callDowngradedToAudioNotification:(id)notification;
- (void)callStateChangedNotification:(id)notification;
- (void)callUpgradedToVideoNotification:(id)notification;
- (void)cancelAutoAnswer;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)conversationManager:(id)manager activeRemoteParticipantsChangedForConversation:(id)conversation;
- (void)dealloc;
- (void)didChangeDeviceOrientationNotification:(id)notification;
- (void)didEnterVideoMessagingFlow;
- (void)didExitVideoMessagingFlow;
- (void)dismissContactDetailsWithCompletion:(id)completion;
- (void)dismissContactsViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)dismissInCallPresentationWithDismissalBlock:(id)block;
- (void)dismissMiniWindowViewControllerAnimated:(BOOL)animated;
- (void)dismissPIPIfNeededForMiniWindowAnimated:(BOOL)animated;
- (void)dismissPhoneRemoteViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)dismissSOSIfNeeded;
- (void)dismissScreenTimeAlertHostIfNeeded;
- (void)dismissViewControllersWithSensitiveInformationWithCompletion:(id)completion;
- (void)dismissalAssertionReleasedNotification:(id)notification;
- (void)dissmissConfirmLeavePTTChannelAlertIfNeededWithBannerPresentationManager:(id)manager;
- (void)emergencyCallbackModeChangedNotification:(id)notification;
- (void)forceUpdateCallControllerForFilteredRequest:(id)request;
- (void)forceUpdateCallControllerForSOS;
- (void)gameControllerDidChangeContext;
- (void)handleAcceptCallButtonTapped:(id)tapped;
- (void)handleActivationContextDidChangeNotification:(id)notification;
- (void)handleActivationForEndAndLock;
- (void)handleCallBufferNotification:(id)notification;
- (void)handleDeviceLockEventOverUPlusOneVideoViewsWithSourceType:(int64_t)type;
- (void)handleDeviceLockEventWithSourceType:(int64_t)type resultHandler:(id)handler;
- (void)handleDoubleHeightStatusBarTap;
- (void)handleFrontBoardInterfaceOrientationChange:(int64_t)change;
- (void)handleHeadsetButtonLongPressed;
- (void)handleHeadsetButtonPressed;
- (void)handleLockButtonPressed;
- (void)handlePIPInterruptionChangeNotification:(id)notification;
- (void)handlePIPViewControllerRestoredAfterPIPStopped:(id)stopped;
- (void)handleSOSActivationIfNecessary;
- (void)handleScreenTimeActivationIfNecessary;
- (void)handleSystemInitiatedPIPInterruptionStoppedNotification:(id)notification;
- (void)handleVolumeDownButtonPressed;
- (void)handleVolumeUpButtonPressed;
- (void)hardwareButtonEventNotification:(id)notification;
- (void)mostRecentlyDisconnectedAudioCallDidClearNotification:(id)notification;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)notifyAudioCallControllerIfNecessaryCallDisplayStyleDidChangeFromStyle:(int64_t)style toStyle:(int64_t)toStyle;
- (void)observePrioritizedCall;
- (void)obtainIdleTimerAssertionWithComment:(id)comment;
- (void)participantsDidChangeLocation:(id)location;
- (void)participantsView:(id)view didPerformActionType:(int64_t)type;
- (void)performBottomBarActionType:(int64_t)type;
- (void)phoneRemoteHostViewControllerDidDismiss;
- (void)pipControllerDidRequestReturnToFullScreenNotification:(id)notification;
- (void)pipProxyActiveChangedNotification:(id)notification;
- (void)pipStashChangedNotification:(id)notification;
- (void)pipStateChangedNotification:(id)notification;
- (void)popoverPresentationControllerDidDismissPopover:(id)popover;
- (void)prepareForDeviceLockWithCompletion:(id)completion;
- (void)prepareForDismissal;
- (void)prepareForPopoverPresentation:(id)presentation;
- (void)presentAsPopover:(id)popover fromView:(id)view completion:(id)completion;
- (void)presentBlockAndReportAlertToBlockCall:(id)call forViewController:(id)controller completion:(id)completion;
- (void)presentContactsViewControllerForView:(id)view;
- (void)presentCreateContactViewControllerWithHandle:(id)handle forViewController:(id)controller;
- (void)presentDisconnectionAlert:(id)alert;
- (void)presentMiniWindowViewControllerAnimated:(BOOL)animated;
- (void)presentPhoneRemoteViewControllerForView:(id)view;
- (void)presentScreenTimeHostViewController;
- (void)presentViewControllerFullScreen:(id)screen;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)printUI;
- (void)pttCallStateChangedNotification:(id)notification;
- (void)pullRelayingCallsIfNecessary;
- (void)receptionistSessionChangedNotification:(id)notification;
- (void)receptionistStateChangedNotification:(id)notification;
- (void)refreshBottomBarButtonLayout;
- (void)registerForNotifications;
- (void)releaseIdleTimerAssertionWithComment:(id)comment;
- (void)remoteParticipantHandlesChangedNotification:(id)notification;
- (void)removeViewController:(id)controller;
- (void)reportWithCall:(id)call;
- (void)requestInCallDismissal;
- (void)requestInCallSceneTransitionToFullScreen;
- (void)rotatePIPForInterfaceOrientation:(int64_t)orientation;
- (void)routesChangedForRouteController:(id)controller;
- (void)sceneDidConnect;
- (void)screeningStateChangedNotification:(id)notification;
- (void)sendResponseIfNecessaryWithUnhandledEvents:(unint64_t)events;
- (void)sendUserRating:(int)rating dontShowPromptAgain:(BOOL)again;
- (void)setBackgroundStyle:(int64_t)style animatedWithDuration:(double)duration;
- (void)setCurrentAlertButtonAction:(id)action;
- (void)setNeedsStatusBarPillSuppressionUpdate;
- (void)setStatusBarHidden:(BOOL)hidden withDuration:(double)duration;
- (void)setTemporarilyAllowAllStatusBarPills:(BOOL)pills;
- (void)setupAutoAnswer;
- (void)showCallDetailsView;
- (void)showFailureOrFallbackAlertIfNecessaryForCall:(id)call;
- (void)showHideMiniWindowViewIfNeededAnimated:(BOOL)animated;
- (void)showKeypadIfPossible;
- (void)startObservingAcceptCallButtonTappedWithNotificationCenter:(id)center;
- (void)statusBarTappedInFullScreen;
- (void)traitCollectionDidChange:(id)change;
- (void)transitionIntoPiP;
- (void)transitionToVideoCallBasedViewController:(id)controller shouldUpdatePipSize:(BOOL)size;
- (void)unansweredCallUIDismissed;
- (void)undimScreenIfNecessary:(id)necessary;
- (void)updateAlertActivationReason;
- (void)updateAlertActivationReasonForCall:(id)call;
- (void)updateBackgroundStartPipAuthorizationState;
- (void)updateBannerTapGestureRecognizerForCallDisplayStyle:(int64_t)style;
- (void)updateBottomControlsViewWithInCallState:(unsigned __int16)state;
- (void)updateCallControllerForCurrentState;
- (void)updateCallDetailsViewIsOnScreen;
- (void)updateCallForUserFeedback;
- (void)updateCallParticipantLabelsViewForViewController:(id)controller;
- (void)updateDesiredSpringboardBehavior;
- (void)updateGameControllerManagerForCurrentState;
- (void)updateInCallWindowSceneFaceTimeLaunchBehavior;
- (void)updateInCallWindowScenePrefersHiddenWhenDismissed;
- (void)updateMultiwayDeviceOrientation:(int64_t)orientation;
- (void)updateMultiwayViewControllerUIState;
- (void)updateRemoteAlertSwipeDismissalStyleForCall:(id)call;
- (void)updateShouldBecomeVisibleWhenWakingDisplay;
- (void)updateTransportIndicatorView;
- (void)updateUPlusOneVideoCallViews;
- (void)updateVideoState;
- (void)videoCallStateChangedNotification:(id)notification;
- (void)viewController:(id)controller fullScreenFocusedParticipantAspectRatioChanged:(CGSize)changed participantGridIsFullScreen:(BOOL)screen;
- (void)viewController:(id)controller fullScreenFocusedParticipantOrientationChanged:(int64_t)changed;
- (void)viewController:(id)controller localParticipantAspectRatioChanged:(CGSize)changed;
- (void)viewController:(id)controller mediaPipSafeAreaFrameChanged:(CGRect)changed;
- (void)viewController:(id)controller pipSourceProviderNeedsUpdate:(id)update;
- (void)viewControllerDidRequestTemporaryPreventSuspension:(id)suspension;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewServiceDidTerminateWithError:(id)error;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)wantsDismissal;
- (void)wantsHoldMusicChangedNotification:(id)notification;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)willRotate:(id)rotate;
- (void)willTransitionToFullScreenNotification:(id)notification;
@end

@implementation PHInCallRootViewController

- (BOOL)isPresentingRemoteHostViewController
{
  remoteHostViewController = [(PHInCallRootViewController *)self remoteHostViewController];
  presentingViewController = [remoteHostViewController presentingViewController];
  v4 = presentingViewController != 0;

  return v4;
}

- (BOOL)isPresentingContactsViewController
{
  contactsViewController = [(PHInCallRootViewController *)self contactsViewController];
  presentingViewController = [contactsViewController presentingViewController];
  v4 = presentingViewController != 0;

  return v4;
}

- (void)handleDoubleHeightStatusBarTap
{
  [(PHInCallRootViewController *)self dismissPhoneRemoteViewController];
  [(PHInCallRootViewController *)self dismissContactsViewController];

  [(PHInCallRootViewController *)self dismissScreenTimeAlertHostIfNeeded];
}

- (void)dismissScreenTimeAlertHostIfNeeded
{
  screenTimeHostViewController = [(PHInCallRootViewController *)self screenTimeHostViewController];

  if (screenTimeHostViewController)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000F5DA8;
    v20[3] = &unk_100356988;
    v20[4] = self;
    v4 = objc_retainBlock(v20);
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      screenTimeHostViewController2 = [(PHInCallRootViewController *)self screenTimeHostViewController];
      *buf = 138412290;
      v22 = screenTimeHostViewController2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Dismissing screen time view controller: %@", buf, 0xCu);
    }

    presentedViewController = [(PHInCallRootViewController *)self presentedViewController];
    screenTimeHostViewController3 = [(PHInCallRootViewController *)self screenTimeHostViewController];
    v9 = [presentedViewController isEqual:screenTimeHostViewController3];

    if (v9)
    {
      presentedViewController2 = [(PHInCallRootViewController *)self presentedViewController];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000F5E04;
      v18[3] = &unk_100356FD8;
      v18[4] = self;
      v19 = v4;
      v11 = v4;
      [presentedViewController2 dismissViewControllerAnimated:1 completion:v18];

      v12 = v19;
    }

    else
    {
      screenTimeHostViewController4 = [(PHInCallRootViewController *)self screenTimeHostViewController];
      [screenTimeHostViewController4 willMoveToParentViewController:0];

      v16 = v4;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000F5E4C;
      v17[3] = &unk_100356988;
      v17[4] = self;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000F5EAC;
      v15[3] = &unk_100357E30;
      v15[4] = self;
      v14 = v4;
      [UIView animateWithDuration:0x20000 delay:v17 options:v15 animations:0.15 completion:0.0];
      v12 = v16;
    }
  }
}

- (UINavigationController)audioCallNavigationController
{
  features = [(PHInCallRootViewController *)self features];
  callManagerEnabled = [features callManagerEnabled];

  if (callManagerEnabled)
  {
    callManager = [(PHInCallRootViewController *)self callManager];
    audioCallNavController = [callManager audioCallNavController];
  }

  else
  {
    audioCallNavController = self->_audioCallNavigationController;
  }

  return audioCallNavController;
}

- (BOOL)shouldShowScreenTimeShield
{
  if ([(PHInCallRootViewController *)self shouldShowSOS])
  {
    return 0;
  }

  filteredRequest = [(PHInCallRootViewController *)self filteredRequest];
  if (filteredRequest && [qword_1003B0ED8 containsObject:@"PHScreenTimeAlertAssertionReason"])
  {
    callCenter = [(PHInCallRootViewController *)self callCenter];
    incomingVideoCall = [callCenter incomingVideoCall];
    if (incomingVideoCall)
    {
      v3 = 0;
    }

    else
    {
      callCenter2 = [(PHInCallRootViewController *)self callCenter];
      incomingCall = [callCenter2 incomingCall];
      v3 = incomingCall == 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)updateGameControllerManagerForCurrentState
{
  callDisplayStyleManager = [(PHInCallRootViewController *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  if (!callDisplayStyle)
  {
    v5 = +[CNKGameControllerManager shared];
    if (v5)
    {
      v9 = v5;
      callCenter = [(PHInCallRootViewController *)self callCenter];
      incomingCall = [callCenter incomingCall];
      incomingVideoCall = [callCenter incomingVideoCall];
      if (incomingCall | incomingVideoCall)
      {
        [v9 addResponder:self];
      }

      else
      {
        [v9 removeResponder:self];
      }

      v5 = v9;
    }
  }
}

- (SBSUIInCallWindowScene)inCallWindowScene
{
  v2 = +[UIApplication sharedApplication];
  delegate = [v2 delegate];
  sceneManager = [delegate sceneManager];
  callScene = [sceneManager callScene];

  return callScene;
}

- (BOOL)wantsMiniWindowCoverViewController
{
  isDisplayStyleMiniWindow = [(PHInCallRootViewController *)self isDisplayStyleMiniWindow];
  if (isDisplayStyleMiniWindow)
  {
    callCenter = [(PHInCallRootViewController *)self callCenter];
    hasCurrentCalls = [callCenter hasCurrentCalls];

    LOBYTE(isDisplayStyleMiniWindow) = hasCurrentCalls;
  }

  return isDisplayStyleMiniWindow;
}

- (BOOL)isDisplayStyleMiniWindow
{
  callDisplayStyleManager = [(PHInCallRootViewController *)self callDisplayStyleManager];
  v3 = [callDisplayStyleManager callDisplayStyle] == 1;

  return v3;
}

- (TUFeatureFlags)featureFlags
{
  v2 = +[UIApplication sharedApplication];
  delegate = [v2 delegate];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    featureFlags = [delegate featureFlags];
  }

  else
  {
    featureFlags = 0;
  }

  return featureFlags;
}

- (BOOL)isFullScreen
{
  v3 = +[UIApplication sharedApplication];
  delegate = [v3 delegate];
  currentInCallScene = [delegate currentInCallScene];

  if (currentInCallScene)
  {
    callDisplayStyleManager = +[UIApplication sharedApplication];
    delegate2 = [callDisplayStyleManager delegate];
    currentInCallScene2 = [delegate2 currentInCallScene];
    if ([currentInCallScene2 presentationMode] == 2)
    {
      v9 = 1;
    }

    else
    {
      v10 = +[UIApplication sharedApplication];
      delegate3 = [v10 delegate];
      currentInCallScene3 = [delegate3 currentInCallScene];
      if ([currentInCallScene3 presentationMode] == 3)
      {
        v9 = 1;
      }

      else
      {
        v13 = +[UIApplication sharedApplication];
        delegate4 = [v13 delegate];
        sceneManager = [delegate4 sceneManager];
        if ([sceneManager hasPendingCompletionForSceneType:0 presentationMode:2])
        {
          v9 = 1;
        }

        else
        {
          [(PHInCallRootViewController *)self callDisplayStyleManager];
          v16 = v18 = v13;
          v9 = [v16 callDisplayStyle] == 3;

          v13 = v18;
        }
      }
    }

    goto LABEL_15;
  }

  callDisplayStyleManager = [(PHInCallRootViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] != 2)
  {
    delegate2 = [(PHInCallRootViewController *)self callDisplayStyleManager];
    v9 = [delegate2 callDisplayStyle] == 3;
LABEL_15:

    goto LABEL_16;
  }

  v9 = 1;
LABEL_16:

  return v9;
}

- (void)updateCallDetailsViewIsOnScreen
{
  callDetailsNavigationController = [(PHInCallRootViewController *)self callDetailsNavigationController];

  if (callDetailsNavigationController)
  {
    isPresentingCallDetailsView = [(PHInCallRootViewController *)self isPresentingCallDetailsView];
    if (isPresentingCallDetailsView)
    {
      v9 = +[UIApplication sharedApplication];
      delegate = [v9 delegate];
      sceneManager = [delegate sceneManager];
      hasActiveOrPendingFullScreenCallScene = [sceneManager hasActiveOrPendingFullScreenCallScene];
    }

    else
    {
      hasActiveOrPendingFullScreenCallScene = 0;
    }

    callDetailsNavigationController2 = [(PHInCallRootViewController *)self callDetailsNavigationController];
    [callDetailsNavigationController2 setIsOnScreen:hasActiveOrPendingFullScreenCallScene];

    if (isPresentingCallDetailsView)
    {
    }
  }
}

- (void)updateDesiredSpringboardBehavior
{
  audioCallViewControllerIfLoaded = [(PHInCallRootViewController *)self audioCallViewControllerIfLoaded];
  if (audioCallViewControllerIfLoaded)
  {
    audioCallViewControllerIfLoaded2 = [(PHInCallRootViewController *)self audioCallViewControllerIfLoaded];
    allowsOrientationChangeEvents = [audioCallViewControllerIfLoaded2 allowsOrientationChangeEvents];
  }

  else
  {
    allowsOrientationChangeEvents = self->_multiwayViewController != 0;
  }

  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 67109120;
    v37 = allowsOrientationChangeEvents;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting allowsOrientationChangeEvents to %d", &v36, 8u);
  }

  _remoteViewControllerProxy = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setOrientationChangedEventsEnabled:allowsOrientationChangeEvents];

  callCenter = [(PHInCallRootViewController *)self callCenter];
  v9 = [(PHInCallRootViewController *)self desiredButtonEventsForCallContainer:callCenter];
  v10 = [(PHSOSViewController *)self->_sosViewController desiredButtonEvents]| v9;

  v11 = sub_100004F84();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 67109120;
    v37 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Setting desired hardware buttons to %d", &v36, 8u);
  }

  _remoteViewControllerProxy2 = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy2 setDesiredHardwareButtonEvents:v10];

  inCallWindowScene = [(PHInCallRootViewController *)self inCallWindowScene];

  if (inCallWindowScene)
  {
    desiresLockButtonEvents = [(PHInCallRootViewController *)self desiresLockButtonEvents];
    callCenter2 = [(PHInCallRootViewController *)self callCenter];
    v16 = [(PHInCallRootViewController *)self desiredSceneButtonEventsForCallContainer:callCenter2];
    v17 = [(PHSOSViewController *)self->_sosViewController desiredSceneButtonEvents]| v16;

    v18 = sub_100004F84();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 67109376;
      v37 = v17;
      v38 = 1024;
      v39 = desiresLockButtonEvents;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Setting scenes desired button events to %d and desires lock button events to %d", &v36, 0xEu);
    }

    inCallWindowScene2 = [(PHInCallRootViewController *)self inCallWindowScene];
    [inCallWindowScene2 setSupportsDeviceLockEvents:desiresLockButtonEvents];

    inCallWindowScene3 = [(PHInCallRootViewController *)self inCallWindowScene];
    [inCallWindowScene3 setPreferredHardwareButtonEventTypes:v17];

    [(PHInCallRootViewController *)self updateInCallWindowScenePrefersHiddenWhenDismissed];
    [(PHInCallRootViewController *)self updateInCallWindowSceneFaceTimeLaunchBehavior];
  }

  if (audioCallViewControllerIfLoaded)
  {
    allowsMenuButtonDismissal = [audioCallViewControllerIfLoaded allowsMenuButtonDismissal];
  }

  else
  {
    allowsMenuButtonDismissal = 1;
  }

  sosViewController = self->_sosViewController;
  if (sosViewController)
  {
    allowsMenuButtonDismissal2 = [(PHSOSViewController *)sosViewController allowsMenuButtonDismissal];
  }

  else
  {
    allowsMenuButtonDismissal2 = 1;
  }

  v24 = allowsMenuButtonDismissal & allowsMenuButtonDismissal2;
  v25 = sub_100004F84();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 67109120;
    v37 = v24;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Setting allows menu button dismissal to %d", &v36, 8u);
  }

  _remoteViewControllerProxy3 = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy3 setAllowsMenuButtonDismissal:v24];

  [(PHInCallRootViewController *)self setAllowHomeOutDismissal:v24];
  [(PHInCallRootViewController *)self setNeedsUpdateOfHomeIndicatorAutoHidden];
  if (audioCallViewControllerIfLoaded)
  {
    allowsOtherAlertsToStackOnTop = [audioCallViewControllerIfLoaded allowsOtherAlertsToStackOnTop];
    _remoteViewControllerProxy4 = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy4 setAllowsAlertStacking:allowsOtherAlertsToStackOnTop];

    allowsBanners = [audioCallViewControllerIfLoaded allowsBanners];
  }

  else
  {
    _remoteViewControllerProxy5 = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
    allowsBanners = 1;
    [_remoteViewControllerProxy5 setAllowsAlertStacking:1];
  }

  _remoteViewControllerProxy6 = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy6 setAllowsBanners:allowsBanners];

  if (([audioCallViewControllerIfLoaded wantsApplicationDismissalStyle] & 1) != 0 || -[CNKMultiwayViewControllerProtocol wantsApplicationDismissalStyle](self->_multiwayViewController, "wantsApplicationDismissalStyle"))
  {
    if (self->_sosViewController)
    {
      v32 = 1;
    }

    else
    {
      v32 = 2;
    }
  }

  else
  {
    v32 = 1;
  }

  _remoteViewControllerProxy7 = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy7 setDismissalAnimationStyle:v32];

  callCenter3 = [(PHInCallRootViewController *)self callCenter];
  frontmostAudioOrVideoCall = [callCenter3 frontmostAudioOrVideoCall];
  [(PHInCallRootViewController *)self updateRemoteAlertSwipeDismissalStyleForCall:frontmostAudioOrVideoCall];

  [(PHInCallRootViewController *)self updateShouldBecomeVisibleWhenWakingDisplay];
}

- (id)audioCallViewControllerIfLoaded
{
  audioCallViewController = self->_audioCallViewController;
  if (audioCallViewController)
  {
    audioCallViewController = audioCallViewController;
  }

  else
  {
    callManager = [(PHInCallRootViewController *)self callManager];
    audioCallViewController = [callManager audioCallViewController];
  }

  return audioCallViewController;
}

- (UIViewController)currentViewController
{
  audioCallNavigationController = [(PHInCallRootViewController *)self audioCallNavigationController];
  view = [audioCallNavigationController view];
  superview = [view superview];
  if (superview)
  {
    v6 = superview;
    audioCallNavigationController2 = [(PHInCallRootViewController *)self audioCallNavigationController];
    parentViewController = [audioCallNavigationController2 parentViewController];

    if (parentViewController)
    {
      audioCallNavigationController3 = [(PHInCallRootViewController *)self audioCallNavigationController];
      goto LABEL_20;
    }
  }

  else
  {
  }

  v10 = 96;
  view2 = [(PHEmergencyDialerViewController *)self->_emergencyDialerViewController view];
  superview2 = [view2 superview];
  if (superview2)
  {
    v13 = superview2;
    parentViewController2 = [(PHEmergencyDialerViewController *)self->_emergencyDialerViewController parentViewController];

    if (parentViewController2)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v10 = 104;
  view3 = [(PHSOSViewController *)self->_sosViewController view];
  superview3 = [view3 superview];
  if (superview3)
  {
    v17 = superview3;
    parentViewController3 = [(PHSOSViewController *)self->_sosViewController parentViewController];

    if (parentViewController3)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v10 = 160;
  view4 = [(UINavigationController *)self->_videoCallNavigationController view];
  superview4 = [view4 superview];
  if (!superview4)
  {

    goto LABEL_17;
  }

  v21 = superview4;
  parentViewController4 = [(UINavigationController *)self->_videoCallNavigationController parentViewController];

  if (parentViewController4)
  {
LABEL_19:
    audioCallNavigationController3 = *(&self->super.super.super.isa + v10);
    goto LABEL_20;
  }

LABEL_17:
  v10 = 144;
  view5 = [(PHPTTFullScreenContainerViewController *)self->_pttFullScreenContainerViewController view];
  superview5 = [view5 superview];
  if (superview5)
  {
    v25 = superview5;
    parentViewController5 = [(PHPTTFullScreenContainerViewController *)self->_pttFullScreenContainerViewController parentViewController];

    if (parentViewController5)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  callDetailsNavigationController = [(PHInCallRootViewController *)self callDetailsNavigationController];
  view6 = [callDetailsNavigationController view];
  superview6 = [view6 superview];
  if (superview6)
  {
    v31 = superview6;
    callDetailsNavigationController2 = [(PHInCallRootViewController *)self callDetailsNavigationController];
    parentViewController6 = [callDetailsNavigationController2 parentViewController];

    if (parentViewController6)
    {
      audioCallNavigationController3 = [(PHInCallRootViewController *)self callDetailsNavigationController];
      goto LABEL_20;
    }
  }

  else
  {
  }

  audioCallNavigationController3 = 0;
LABEL_20:

  return audioCallNavigationController3;
}

- (void)_loadAudioCallViewController
{
  callCenter = [(PHInCallRootViewController *)self callCenter];
  frontmostAudioOrVideoCall = [callCenter frontmostAudioOrVideoCall];

  features = [(PHInCallRootViewController *)self features];
  callManagerEnabled = [features callManagerEnabled];

  if (callManagerEnabled)
  {
    callManager = [(PHInCallRootViewController *)self callManager];
    [callManager createAudioCallViewControllerWithCall:frontmostAudioOrVideoCall];
LABEL_18:

    goto LABEL_19;
  }

  if (!self->_audioCallViewController)
  {
    features2 = [(PHInCallRootViewController *)self features];
    v9 = [features2 isiPadPostersEnabledForCall:frontmostAudioOrVideoCall];

    if (v9)
    {
      [(PHInCallRootViewController *)self setExistingPrioritizedCall:frontmostAudioOrVideoCall];
      callDisplayStyleManager = [(PHInCallRootViewController *)self callDisplayStyleManager];
      [callDisplayStyleManager setUsesLargeFormatUI:1];

      v11 = [iPadAudioCallViewController alloc];
      callDisplayStyleManager2 = [(PHInCallRootViewController *)self callDisplayStyleManager];
      callCenter2 = [(PHInCallRootViewController *)self callCenter];
      featureFlags = [(PHInCallRootViewController *)self featureFlags];
      v15 = [(iPadAudioCallViewController *)v11 initWithCallDisplayStyleManager:callDisplayStyleManager2 callCenter:callCenter2 featureFlags:featureFlags call:self->_existingPrioritizedCall];

      [(PHInCallRootViewController *)self setCurrentChildAudioViewController:v15];
      objc_storeStrong(&self->_audioCallViewController, v15);
      uniqueProxyIdentifier = [(TUCall *)self->_existingPrioritizedCall uniqueProxyIdentifier];

      if (uniqueProxyIdentifier)
      {
        viewControllersDict = [(PHInCallRootViewController *)self viewControllersDict];
        uniqueProxyIdentifier2 = [(TUCall *)self->_existingPrioritizedCall uniqueProxyIdentifier];
        [viewControllersDict setObject:v15 forKey:uniqueProxyIdentifier2];
      }

      v19 = sub_100004F84();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        audioCallViewController = self->_audioCallViewController;
        *buf = 138412290;
        v64 = audioCallViewController;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "PHInCallRootViewController loaded a new ipad audio call view controller: %@", buf, 0xCu);
      }
    }

    else
    {
      v21 = [PHAudioCallViewController alloc];
      callDisplayStyleManager3 = [(PHInCallRootViewController *)self callDisplayStyleManager];
      callCenter3 = [(PHInCallRootViewController *)self callCenter];
      featureFlags2 = [(PHInCallRootViewController *)self featureFlags];
      v25 = [(PHAudioCallViewController *)v21 initWithCallDisplayStyleManager:callDisplayStyleManager3 callCenter:callCenter3 featureFlags:featureFlags2];
      v26 = self->_audioCallViewController;
      self->_audioCallViewController = v25;

      v15 = sub_100004F84();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v27 = self->_audioCallViewController;
        *buf = 138412290;
        v64 = v27;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "PHInCallRootViewController loaded a new audio call view controller: %@", buf, 0xCu);
      }
    }

    featureFlags3 = [(PHInCallRootViewController *)self featureFlags];
    audioCallUIModernizationEnabled = [featureFlags3 audioCallUIModernizationEnabled];

    if (audioCallUIModernizationEnabled)
    {
      v30 = [PHAudioCallViewControllerWrapper alloc];
      callDisplayStyleManager4 = [(PHInCallRootViewController *)self callDisplayStyleManager];
      callCenter4 = [(PHInCallRootViewController *)self callCenter];
      view = [(PHInCallRootViewController *)self view];
      [view bounds];
      v35 = [(PHAudioCallViewControllerWrapper *)v30 initWithCallDisplayStyleManager:callDisplayStyleManager4 callCenter:callCenter4 width:self inCallRootViewController:v34];
      audioCallViewControllerWrapper = self->_audioCallViewControllerWrapper;
      self->_audioCallViewControllerWrapper = v35;

      v37 = [UINavigationController alloc];
      audioCallViewControllerWrapper = [(PHInCallRootViewController *)self audioCallViewControllerWrapper];
      viewController = [(PHAudioCallViewControllerProtocol *)audioCallViewControllerWrapper viewController];
      v40 = [v37 initWithRootViewController:viewController];
      audioCallNavigationController = self->_audioCallNavigationController;
      self->_audioCallNavigationController = v40;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_17:
        [(UINavigationController *)self->_audioCallNavigationController setOverrideUserInterfaceStyle:2];
        view2 = [(PHInCallRootViewController *)self view];
        [view2 bounds];
        v46 = v45;
        v48 = v47;
        v50 = v49;
        v52 = v51;
        view3 = [(UINavigationController *)self->_audioCallNavigationController view];
        [view3 setFrame:{v46, v48, v50, v52}];

        view4 = [(UINavigationController *)self->_audioCallNavigationController view];
        [view4 setAutoresizingMask:18];

        [(UINavigationController *)self->_audioCallNavigationController setNavigationBarHidden:1];
        [(UINavigationController *)self->_audioCallNavigationController setDelegate:self];
        [(UINavigationController *)self->_audioCallNavigationController _setBuiltinTransitionStyle:1];
        [(PHAudioCallViewControllerProtocol *)self->_audioCallViewController setInCallRootViewController:self];
        callManager = [(UINavigationController *)self->_audioCallNavigationController navigationBar];
        v55 = +[UIColor clearColor];
        [callManager setBackgroundColor:v55];

        [callManager setTranslucent:1];
        v56 = objc_opt_new();
        [callManager setBackgroundImage:v56 forBarMetrics:0];

        v57 = objc_opt_new();
        [callManager setShadowImage:v57];

        v58 = +[UIColor whiteColor];
        [callManager setTintColor:v58];

        v59 = +[UIColor whiteColor];
        v62 = v59;
        v60 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
        [callManager setTitleTextAttributes:v60];

        goto LABEL_18;
      }

      audioCallViewControllerWrapper = self->_audioCallViewController;
      v42 = [[UINavigationController alloc] initWithRootViewController:audioCallViewControllerWrapper];
      v43 = self->_audioCallNavigationController;
      self->_audioCallNavigationController = v42;
    }

    goto LABEL_17;
  }

LABEL_19:
  [(PHInCallRootViewController *)self _startMonitoringDisplayLayout];
}

- (PHAudioCallViewControllerProtocol)audioCallViewController
{
  [(PHInCallRootViewController *)self _loadAudioCallViewController];
  features = [(PHInCallRootViewController *)self features];
  callManagerEnabled = [features callManagerEnabled];

  if (callManagerEnabled)
  {
    callManager = [(PHInCallRootViewController *)self callManager];
    audioCallViewController = [callManager audioCallViewController];
  }

  else
  {
    audioCallViewController = self->_audioCallViewController;
  }

  return audioCallViewController;
}

- (BOOL)isPickedRouteReceiver
{
  callCenter = [(PHInCallRootViewController *)self callCenter];
  routeController = [callCenter routeController];
  pickedRoute = [routeController pickedRoute];
  isReceiver = [pickedRoute isReceiver];

  return isReceiver;
}

- (BOOL)desiresLockButtonEvents
{
  audioCallViewControllerIfLoaded = [(PHInCallRootViewController *)self audioCallViewControllerIfLoaded];
  if (([audioCallViewControllerIfLoaded desiresLockButtonEvents] & 1) != 0 || -[PHSOSViewController desiresLockButtonEvents](self->_sosViewController, "desiresLockButtonEvents"))
  {
    isPresentingViewControllerWithSensitiveInformation = 1;
  }

  else
  {
    callCenter = [(PHInCallRootViewController *)self callCenter];
    if ([callCenter hasCurrentVideoCalls])
    {
      isPresentingViewControllerWithSensitiveInformation = 1;
    }

    else
    {
      isPresentingViewControllerWithSensitiveInformation = [(PHInCallRootViewController *)self isPresentingViewControllerWithSensitiveInformation];
    }
  }

  return isPresentingViewControllerWithSensitiveInformation;
}

- (void)updateInCallWindowScenePrefersHiddenWhenDismissed
{
  inCallWindowScene = [(PHInCallRootViewController *)self inCallWindowScene];

  if (inCallWindowScene)
  {
    if (-[PHInCallRootViewController isPresentingCallDetailsView](self, "isPresentingCallDetailsView") && (+[UIApplication sharedApplication](UIApplication, "sharedApplication"), v4 = objc_claimAutoreleasedReturnValue(), [v4 delegate], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "didDeepLinkToCallDetailsView"), v5, v4, !v6))
    {
      v9 = 1;
    }

    else
    {
      callCenter = [(PHInCallRootViewController *)self callCenter];
      frontmostBargeCall = [callCenter frontmostBargeCall];
      v9 = frontmostBargeCall != 0;
    }

    callCenter2 = [(PHInCallRootViewController *)self callCenter];
    frontmostCall = [callCenter2 frontmostCall];

    if (frontmostCall)
    {
      provider = [frontmostCall provider];
      if ([provider supportsDynamicSystemUI])
      {
        featureFlags = [(PHInCallRootViewController *)self featureFlags];
        if ([featureFlags groupConversations])
        {
          v9 |= TUDeviceHasChinaSKU();
        }
      }
    }

    inCallWindowScene2 = [(PHInCallRootViewController *)self inCallWindowScene];
    prefersHiddenWhenDismissed = [inCallWindowScene2 prefersHiddenWhenDismissed];

    if ((v9 & 1) != prefersHiddenWhenDismissed)
    {
      v16 = sub_100004F84();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        inCallWindowScene3 = [(PHInCallRootViewController *)self inCallWindowScene];
        v18 = inCallWindowScene3;
        v19 = @"NO";
        if (v9)
        {
          v19 = @"YES";
        }

        v21 = 138412546;
        v22 = inCallWindowScene3;
        v23 = 2112;
        v24 = v19;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Updating scene: %@ prefersHiddenWhenDismissed: %@", &v21, 0x16u);
      }

      inCallWindowScene4 = [(PHInCallRootViewController *)self inCallWindowScene];
      [inCallWindowScene4 setPrefersHiddenWhenDismissed:v9 & 1];
    }
  }
}

- (BOOL)isPresentingCallDetailsView
{
  callDetailsNavigationController = [(PHInCallRootViewController *)self callDetailsNavigationController];
  if (callDetailsNavigationController)
  {
    callDetailsNavigationController2 = [(PHInCallRootViewController *)self callDetailsNavigationController];
    view = [callDetailsNavigationController2 view];
    superview = [view superview];
    if (superview)
    {
      callDetailsNavigationController3 = [(PHInCallRootViewController *)self callDetailsNavigationController];
      parentViewController = [callDetailsNavigationController3 parentViewController];
      v9 = parentViewController != 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)updateInCallWindowSceneFaceTimeLaunchBehavior
{
  inCallWindowScene = [(PHInCallRootViewController *)self inCallWindowScene];

  if (inCallWindowScene)
  {
    shouldShowInCallWindowScene = [(PHInCallRootViewController *)self shouldShowInCallWindowScene];
    inCallWindowScene2 = [(PHInCallRootViewController *)self inCallWindowScene];
    [inCallWindowScene2 setShouldNeverBeShownWhenLaunchingFaceTime:shouldShowInCallWindowScene ^ 1];
  }
}

- (BOOL)shouldShowInCallWindowScene
{
  callCenter = [(PHInCallRootViewController *)self callCenter];
  conversationManager = [callCenter conversationManager];
  avLessConversation = [conversationManager avLessConversation];

  currentViewController = [(PHInCallRootViewController *)self currentViewController];
  pttFullScreenContainerViewController = [(PHInCallRootViewController *)self pttFullScreenContainerViewController];

  return currentViewController != pttFullScreenContainerViewController && avLessConversation == 0;
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  v3 = +[ICSPreferences sharedPreferences];
  if ([v3 hasAdoptedModernInCallAPI])
  {
    v4 = ![(PHInCallRootViewController *)self allowHomeOutDismissal];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)updateShouldBecomeVisibleWhenWakingDisplay
{
  callCenter = [(PHInCallRootViewController *)self callCenter];
  frontmostAudioOrVideoCall = [callCenter frontmostAudioOrVideoCall];

  if (!frontmostAudioOrVideoCall || ([frontmostAudioOrVideoCall isVideo] & 1) != 0 || (objc_msgSend(frontmostAudioOrVideoCall, "remoteParticipantHandles"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6 != 1))
  {
    if (![(PHInCallRootViewController *)self wantsMiniWindowCoverViewController])
    {
      if (SBUIIsSystemApertureEnabled())
      {
        v9 = 0;
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  isScreening = [frontmostAudioOrVideoCall isScreening];
  v8 = SBUIIsSystemApertureEnabled();
  v9 = v8 & isScreening ^ 1;
  if (v8 & 1) == 0 && (isScreening)
  {
LABEL_10:
    currentViewController = [(PHInCallRootViewController *)self currentViewController];
    pttFullScreenContainerViewController = [(PHInCallRootViewController *)self pttFullScreenContainerViewController];
    v9 = currentViewController == pttFullScreenContainerViewController;
  }

LABEL_11:
  v12 = sub_100004F84();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109120;
    v16[1] = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Updating shouldBecomeVisibleWhenWakingDisplay: %d", v16, 8u);
  }

  v13 = +[UIApplication sharedApplication];
  delegate = [v13 delegate];
  currentInCallScene = [delegate currentInCallScene];
  [currentInCallScene setShouldBecomeVisibleWhenWakingDisplay:v9];
}

- (void)updateTransportIndicatorView
{
  if (!CPIsInternalDevice())
  {
    return;
  }

  v3 = PHPreferencesGetValue();
  bOOLValue = [v3 BOOLValue];

  if (!bOOLValue)
  {
    return;
  }

  callCenter = [(PHInCallRootViewController *)self callCenter];
  v25 = [callCenter callPassingTest:&stru_100359728];

  transportIndicatorView = [(PHInCallRootViewController *)self transportIndicatorView];
  if (!v25)
  {

    if (transportIndicatorView)
    {
      transportIndicatorView2 = [(PHInCallRootViewController *)self transportIndicatorView];
      [transportIndicatorView2 removeFromSuperview];

      [(PHInCallRootViewController *)self setTransportIndicatorView:0];
    }

    goto LABEL_16;
  }

  if (!transportIndicatorView)
  {
    v7 = [[UIView alloc] initWithFrame:{0.0, 0.0, 15.0, 15.0}];
    [(PHInCallRootViewController *)self setTransportIndicatorView:v7];

    transportIndicatorView3 = [(PHInCallRootViewController *)self transportIndicatorView];
    [transportIndicatorView3 setAutoresizingMask:9];

    transportIndicatorView4 = [(PHInCallRootViewController *)self transportIndicatorView];
    layer = [transportIndicatorView4 layer];
    [layer setCornerRadius:7.5];

    view = [(PHInCallRootViewController *)self view];
    transportIndicatorView5 = [(PHInCallRootViewController *)self transportIndicatorView];
    [view addSubview:transportIndicatorView5];

    view2 = [(PHInCallRootViewController *)self view];
    [view2 bounds];
    v15 = v14 + -15.0 + -5.0;
    view3 = [(PHInCallRootViewController *)self view];
    [view3 bounds];
    v18 = v17 + -15.0 + -5.0;
    transportIndicatorView6 = [(PHInCallRootViewController *)self transportIndicatorView];
    [transportIndicatorView6 setFrame:{v15, v18, 15.0, 15.0}];
  }

  faceTimeTransportType = [v25 faceTimeTransportType];
  if (faceTimeTransportType == 2)
  {
    v21 = +[UIColor systemBlueColor];
    goto LABEL_15;
  }

  if (faceTimeTransportType == 1)
  {
    v21 = +[UIColor systemGreenColor];
    goto LABEL_15;
  }

  if (!faceTimeTransportType)
  {
    v21 = +[UIColor systemGrayColor];
LABEL_15:
    v23 = v21;
    transportIndicatorView7 = [(PHInCallRootViewController *)self transportIndicatorView];
    [transportIndicatorView7 setBackgroundColor:v23];
  }

LABEL_16:
}

- (id)_remoteViewControllerProxy
{
  parentViewController = [(PHInCallRootViewController *)self parentViewController];
  if (parentViewController && (v4 = parentViewController, [(PHInCallRootViewController *)self parentViewController], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, v4, (v6 & 1) != 0))
  {
    parentViewController2 = [(PHInCallRootViewController *)self parentViewController];
    _remoteViewControllerProxy = [parentViewController2 _remoteViewControllerProxy];
  }

  else
  {
    _remoteViewControllerProxy = 0;
  }

  return _remoteViewControllerProxy;
}

- (void)updateCallControllerForCurrentState
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "InCallRootViewController updateCallControllerForCurrentState", buf, 2u);
  }

  if (!-[PHInCallRootViewController hasEverAppearedInWindow](self, "hasEverAppearedInWindow") || (-[PHInCallRootViewController view](self, "view"), v4 = objc_claimAutoreleasedReturnValue(), [v4 window], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    callCenter = [(PHInCallRootViewController *)self callCenter];
    incomingCall = [callCenter incomingCall];
    v8 = [callCenter callWithStatus:5];
    v9 = +[UIApplication sharedApplication];
    delegate = [v9 delegate];
    mostRecentlyDisconnectedAudioCall = [delegate mostRecentlyDisconnectedAudioCall];
    v267 = v8;
    if ([mostRecentlyDisconnectedAudioCall disconnectedReasonRequiresCallBackUI])
    {
      v12 = +[PHInCallUIUtilities isSpringBoardPasscodeLocked]^ 1;
    }

    else
    {
      v13 = +[UIApplication sharedApplication];
      delegate2 = [v13 delegate];
      mostRecentlyDisconnectedAudioCall2 = [delegate2 mostRecentlyDisconnectedAudioCall];
      if ([mostRecentlyDisconnectedAudioCall2 shouldShowFailureAlert])
      {
        v12 = +[PHInCallUIUtilities isSpringBoardPasscodeLocked]^ 1;
      }

      else
      {
        v12 = 0;
      }
    }

    v16 = +[UIApplication sharedApplication];
    delegate3 = [v16 delegate];
    mostRecentlyDisconnectedVideoCall = [delegate3 mostRecentlyDisconnectedVideoCall];
    selfCopy = self;
    if ([mostRecentlyDisconnectedVideoCall disconnectedReasonRequiresCallBackUI])
    {
      v19 = +[PHInCallUIUtilities isSpringBoardPasscodeLocked]^ 1;
    }

    else
    {
      v20 = callCenter;
      v21 = incomingCall;
      v22 = +[UIApplication sharedApplication];
      delegate4 = [v22 delegate];
      mostRecentlyDisconnectedVideoCall2 = [delegate4 mostRecentlyDisconnectedVideoCall];
      if ([mostRecentlyDisconnectedVideoCall2 shouldShowFailureAlert])
      {
        v25 = +[PHInCallUIUtilities isSpringBoardPasscodeLocked]^ 1;
      }

      else
      {
        v25 = 0;
      }

      v19 = v25;
      incomingCall = v21;
      callCenter = v20;
      self = selfCopy;
    }

    v26 = [qword_1003B0ED8 containsObject:@"PHRedialCallAssertionReason"];
    if ((v12 | v19))
    {
      v27 = +[PHPIPController defaultPIPController];
      pipState = [v27 pipState];

      if (pipState == 2)
      {
        v29 = +[PHPIPController defaultPIPController];
        [v29 cancelPIPIfNeeded];
      }
    }

    bargeCalls = [callCenter bargeCalls];
    v31 = [bargeCalls count];

    v270 = [callCenter callsPassingTest:&stru_1003594B8];
    frontmostCall = [callCenter frontmostCall];
    if ([frontmostCall isActive])
    {
      v33 = callCenter;
      v34 = incomingCall;
      v35 = v19;
      v36 = v33;
      frontmostCall2 = [v33 frontmostCall];
      provider = [frontmostCall2 provider];
      if ([provider supportsDynamicSystemUI])
      {
        v39 = [v270 count];

        v19 = v35;
        incomingCall = v34;
        callCenter = v36;
        self = selfCopy;
        if (v39)
        {
          goto LABEL_30;
        }

        frontmostCall = [(PHInCallRootViewController *)selfCopy featureFlags];
        if ([frontmostCall groupConversations])
        {
          HasChinaSKU = TUDeviceHasChinaSKU();

          if (HasChinaSKU)
          {
            v41 = sub_100004F84();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Releasing dismissal assertions and presenting GreenTea3P HUD because only a GroupConversation call remains active.", buf, 2u);
            }

            [PHInCallRootViewController releaseDismissalAssertionReasons:qword_1003B0ED8];
            v42 = +[UIApplication sharedApplication];
            delegate5 = [v42 delegate];
            bannerPresentationManager = [delegate5 bannerPresentationManager];
            [bannerPresentationManager showGreenTea3PHUD];

LABEL_38:
            v45 = v267;
LABEL_272:

            goto LABEL_273;
          }

LABEL_30:
          if ((-[NSObject hasCurrentCalls](callCenter, "hasCurrentCalls") & 1) == 0 && ((+[TUCallCapabilities isEmergencyCallbackModeEnabled](TUCallCapabilities, "isEmergencyCallbackModeEnabled") | v12 | v19) & 1) == 0 && !-[PHInCallRootViewController shouldShowVideoCallBlockAndReportScreen](self, "shouldShowVideoCallBlockAndReportScreen") && !-[PHInCallRootViewController shouldShowSOS](self, "shouldShowSOS") && !-[PHInCallRootViewController shouldShowScreenTimeShield](self, "shouldShowScreenTimeShield") && (([qword_1003B0ED8 containsObject:@"PHUserScoreShowingAssertionReason"] | v26) & 1) == 0 && !v31 && (objc_msgSend(qword_1003B0ED8, "containsObject:", @"PHAVLessConversationDetailsViewAssertionReason") & 1) == 0 && (objc_msgSend(qword_1003B0ED8, "containsObject:", @"PHAVLessConversationAssertionReason") & 1) == 0 && (objc_msgSend(qword_1003B0ED8, "containsObject:", @"PHVideoMessageInProgressAssertionReason") & 1) == 0 && (objc_msgSend(qword_1003B0ED8, "containsObject:", @"PHCallEndedBlockAndReportInProgressAssertionReason") & 1) == 0)
          {
            v158 = +[PHPIPController defaultPIPController];
            [v158 cancelPIPIfNeeded];

            v159 = sub_100004F84();
            if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v159, OS_LOG_TYPE_DEFAULT, "InCallRootViewController doesn't need to show anything", buf, 2u);
            }

            v160 = [NSSet alloc];
            v161 = +[PHAudioCallViewController dismissalAssertionReason];
            v278[0] = v161;
            v278[1] = @"PHMulitwayCallAssertionReason";
            v162 = [NSArray arrayWithObjects:v278 count:2];
            v42 = [v160 initWithArray:v162];

            [PHInCallRootViewController releaseDismissalAssertionReasons:v42];
            [(PHInCallRootViewController *)self updateGameControllerManagerForCurrentState];
            goto LABEL_38;
          }

          if ([callCenter anyCallPassesTest:&stru_1003594D8])
          {
            v42 = sub_100004F84();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Ringing call wants suppressed UI, not displaying a view controller.", buf, 2u);
            }

            goto LABEL_38;
          }

          currentViewController = [(PHInCallRootViewController *)self currentViewController];
          if (self->_videoCallNavigationController == currentViewController)
          {
            view = [(CNKMultiwayViewControllerProtocol *)self->_multiwayViewController view];
            superview = [view superview];
            if (superview)
            {
              parentViewController = [(CNKMultiwayViewControllerProtocol *)self->_multiwayViewController parentViewController];
              v248 = parentViewController != 0;
            }

            else
            {
              v248 = 0;
            }

            v46 = &_s16CommunicationsUI29CallTranslationLanguagePickerV05SwiftB04ViewAAMc_ptr;
          }

          else
          {
            v248 = 0;
            v46 = &_s16CommunicationsUI29CallTranslationLanguagePickerV05SwiftB04ViewAAMc_ptr;
          }

          currentAudioAndVideoCalls = [callCenter currentAudioAndVideoCalls];
          v51 = [currentAudioAndVideoCalls count];

          v271[0] = _NSConcreteStackBlock;
          v271[1] = 3221225472;
          v271[2] = sub_1000F22E0;
          v271[3] = &unk_100359500;
          v52 = callCenter;
          v272 = v52;
          selfCopy2 = self;
          v257 = [v52 callPassingTest:v271];
          v258 = [v52 callPassingTest:&stru_100359520];
          incomingVideoCall = [v52 incomingVideoCall];
          v256 = [v52 callPassingTest:&stru_100359540];
          v255 = [v52 callPassingTest:&stru_100359560];
          v53 = [v52 callWithStatus:2];
          if (v53)
          {
            callManager = [(PHInCallRootViewController *)self callManager];
            [callManager updateWithCall:v53];
          }

          v249 = v19;
          v251 = v53;
          v55 = [v52 callPassingTest:&stru_100359580];
          if (v55)
          {
            callManager2 = [(PHInCallRootViewController *)self callManager];
            [callManager2 updateWithCall:v55];
          }

          v259 = v55;
          sharedApplication = [v46[39] sharedApplication];
          delegate6 = [sharedApplication delegate];
          mostRecentlyDisconnectedVideoCall3 = [delegate6 mostRecentlyDisconnectedVideoCall];

          if (mostRecentlyDisconnectedVideoCall3)
          {
            callManager3 = [(PHInCallRootViewController *)self callManager];
            [callManager3 updateWithCall:mostRecentlyDisconnectedVideoCall3];
          }

          v250 = mostRecentlyDisconnectedVideoCall3;
          v61 = [v52 anyCallPassesTest:&stru_1003595A0];
          sharedApplication2 = [v46[39] sharedApplication];
          delegate7 = [sharedApplication2 delegate];
          mostRecentlyDisconnectedVideoCall4 = [delegate7 mostRecentlyDisconnectedVideoCall];

          hasCurrentVideoCalls = [v52 hasCurrentVideoCalls];
          v266 = v52;
          ics_hasTooManyCallsForCallWaitingBanner = [v52 ics_hasTooManyCallsForCallWaitingBanner];
          if (incomingCall)
          {
            callManager4 = [(PHInCallRootViewController *)self callManager];
            [callManager4 updateWithCall:incomingCall];
          }

          v253 = ![(PHInCallRootViewController *)self shouldShowScreenTimeShield]| v61;
          if ((v253 & 1) == 0)
          {
            v74 = sub_100004F84();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              filteredRequest = [(PHInCallRootViewController *)self filteredRequest];
              *buf = 138412290;
              selfCopy3 = filteredRequest;
              _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "InCallRootViewController will show screen time host view controller for request %@", buf, 0xCu);
            }

            mostRecentlyDisconnectedVideoCall6 = 0;
            v71 = 0;
            activeRemoteParticipants = &_s16CommunicationsUI29CallTranslationLanguagePickerV05SwiftB04ViewAAMc_ptr;
            if (!mostRecentlyDisconnectedVideoCall4)
            {
              v261 = 0;
              v262 = 1;
              LODWORD(presentedFullScreenedCall2) = 0;
              v73 = 0;
              goto LABEL_81;
            }

            LODWORD(presentedFullScreenedCall2) = 0;
            v73 = 0;
            v261 = 0;
            goto LABEL_70;
          }

          if (incomingVideoCall)
          {
            v68 = sub_100004F84();
            activeRemoteParticipants = &_s16CommunicationsUI29CallTranslationLanguagePickerV05SwiftB04ViewAAMc_ptr;
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              selfCopy3 = incomingVideoCall;
              _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Showing video controller for ringing video call %@", buf, 0xCu);
            }

            if ([qword_1003B0ED8 containsObject:@"PHCallEndedBlockAndReportInProgressAssertionReason"])
            {
              multiwayViewController = [(PHInCallRootViewController *)self multiwayViewController];
              [multiwayViewController setIsInCallEndedBlockAndReportFlow:0];

              [objc_opt_class() releaseDismissalAssertionForReason:@"PHCallEndedBlockAndReportInProgressAssertionReason"];
            }

            mostRecentlyDisconnectedVideoCall6 = incomingVideoCall;
            goto LABEL_62;
          }

          if (v51 == 1 && v257)
          {
            v79 = sub_100004F84();
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              selfCopy3 = v257;
              _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Showing multiway controller for not-ringing multiway call %@", buf, 0xCu);
            }

            mostRecentlyDisconnectedVideoCall6 = v257;
            v71 = 0;
            LODWORD(presentedFullScreenedCall2) = 0;
            v73 = 0;
            v261 = 0;
            v262 = 0;
            activeRemoteParticipants = &_s16CommunicationsUI29CallTranslationLanguagePickerV05SwiftB04ViewAAMc_ptr;
            if (!mostRecentlyDisconnectedVideoCall4)
            {
LABEL_81:
              v80 = +[PHPIPController defaultPIPController];
              pipState2 = [v80 pipState];

              v82 = pipState2 == 0;
              if (pipState2)
              {
                v83 = 0;
              }

              else
              {
                v83 = presentedFullScreenedCall2;
              }

              if (v82)
              {
                didDeepLinkToPTTCallDetailsView = v71;
              }

              else
              {
                didDeepLinkToPTTCallDetailsView = 0;
              }

              multiwayViewController2 = [(PHInCallRootViewController *)self multiwayViewController];

              if (multiwayViewController2)
              {
                if ([(PHInCallRootViewController *)self shouldExitVideoMessageFlowConsideringShowAudioController:didDeepLinkToPTTCallDetailsView showEmergencyCallController:v83 showSOSController:v73 showScreenTimeController:v262 & 1 showUserScoreController:v261 showPTTFullScreenController:0])
                {
                  multiwayViewController3 = [(PHInCallRootViewController *)self multiwayViewController];
                  isInVideoMessageFlow = [multiwayViewController3 isInVideoMessageFlow];

                  if (isInVideoMessageFlow)
                  {
                    multiwayViewController4 = [(PHInCallRootViewController *)self multiwayViewController];
                    [multiwayViewController4 cancelVideoRecordingWithCompletion:0];

                    [(PHInCallRootViewController *)self setMultiwayViewController:0];
                  }
                }
              }

              frontmostBargeCall = [v266 frontmostBargeCall];
              v90 = v262 | v73 | (frontmostBargeCall == 0) | (mostRecentlyDisconnectedVideoCall6 != 0);

              v252 = incomingCall;
              v269 = v73;
              if ((v90 | v261 | didDeepLinkToPTTCallDetailsView | v83))
              {
                if (([qword_1003B0ED8 containsObject:@"PHInitialPTTFullScreenPresentationAssertionReason"] & 1) != 0 || objc_msgSend(qword_1003B0ED8, "containsObject:", @"PHPTTCallDetailsViewAssertionReason"))
                {
                  [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHInitialPTTFullScreenPresentationAssertionReason"];
                  [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHPTTCallDetailsViewAssertionReason"];
                }

                v91 = 0;
                v254 = 0;
              }

              else
              {
                v92 = sub_100004F84();
                if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
                {
                  frontmostBargeCall2 = [v266 frontmostBargeCall];
                  *buf = 138412290;
                  selfCopy3 = frontmostBargeCall2;
                  _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "Loading PTT full screen controller %@", buf, 0xCu);
                }

                sharedApplication3 = [(objc_class *)activeRemoteParticipants[39].isa sharedApplication];
                delegate8 = [sharedApplication3 delegate];
                v254 = [delegate8 didDeepLinkToPTTCallDetailsView] ^ 1;

                sharedApplication4 = [(objc_class *)activeRemoteParticipants[39].isa sharedApplication];
                delegate9 = [sharedApplication4 delegate];
                didDeepLinkToPTTCallDetailsView = [delegate9 didDeepLinkToPTTCallDetailsView];

                if (didDeepLinkToPTTCallDetailsView)
                {
                  view2 = [(PHPTTFullScreenContainerViewController *)self->_pttFullScreenContainerViewController view];
                  superview2 = [view2 superview];
                  if (superview2)
                  {
                    v100 = superview2;
                    sharedApplication5 = [(objc_class *)activeRemoteParticipants[39].isa sharedApplication];
                    delegate10 = [sharedApplication5 delegate];
                    currentInCallScene = [delegate10 currentInCallScene];
                    presentationMode = [currentInCallScene presentationMode];

                    if (!presentationMode)
                    {
                      [(PHPTTFullScreenContainerViewController *)self->_pttFullScreenContainerViewController removeFromParentViewController];
                      view3 = [(PHPTTFullScreenContainerViewController *)self->_pttFullScreenContainerViewController view];
                      [view3 removeFromSuperview];
                    }

                    didDeepLinkToPTTCallDetailsView = 0;
                    v91 = 1;
                    activeRemoteParticipants = &_s16CommunicationsUI29CallTranslationLanguagePickerV05SwiftB04ViewAAMc_ptr;
                  }

                  else
                  {

                    didDeepLinkToPTTCallDetailsView = 0;
                    v91 = 1;
                  }
                }

                else
                {
                  v91 = 0;
                }
              }

              v107 = didDeepLinkToPTTCallDetailsView;
              frontmostAudioOrVideoCall = [v266 frontmostAudioOrVideoCall];
              if (frontmostAudioOrVideoCall)
              {
              }

              else
              {
                sharedApplication6 = [(objc_class *)activeRemoteParticipants[39].isa sharedApplication];
                delegate11 = [sharedApplication6 delegate];
                bannerPresentationManager2 = [delegate11 bannerPresentationManager];
                conversationIsAVLess = [bannerPresentationManager2 conversationIsAVLess];

                if (conversationIsAVLess)
                {
                  v113 = sub_100004F84();
                  if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "PHInCallRootViewController should show call details view for an AV-less conversation", buf, 2u);
                  }

                  v91 = 1;
LABEL_119:
                  call = v107;
                  [(PHInCallRootViewController *)self updateGameControllerManagerForCurrentState];
                  if (v83)
                  {
                    [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHEmergencyCallBackModeAssertionReason"];
                    view4 = [(PHEmergencyDialerViewController *)self->_emergencyDialerViewController view];
                    superview3 = [view4 superview];

                    v45 = v267;
                    incomingCall = v252;
                    if (!superview3)
                    {
                      v122 = sub_100004F84();
                      if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "InCallRootViewController showing the emergency callback view controller", buf, 2u);
                      }

                      [(PHInCallRootViewController *)self obtainIdleTimerAssertionWithComment:@"showing Emergency controller"];
                      emergencyDialerViewController = self->_emergencyDialerViewController;
                      if (!emergencyDialerViewController)
                      {
                        v124 = objc_alloc_init(PHEmergencyDialerViewController);
                        v125 = self->_emergencyDialerViewController;
                        self->_emergencyDialerViewController = v124;

                        [(PHEmergencyDialerViewController *)self->_emergencyDialerViewController setShouldSetPresenceToken:0];
                        emergencyDialerViewController = self->_emergencyDialerViewController;
                      }

                      [(PHInCallRootViewController *)self _transitionFromViewController:currentViewController toViewController:emergencyDialerViewController];
                      _remoteViewControllerProxy = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
                      [_remoteViewControllerProxy setWallpaperTunnelActive:1];
                    }

LABEL_185:
                    [(PHInCallRootViewController *)self showHideMiniWindowViewIfNeededAnimated:0];
                    v154 = mostRecentlyDisconnectedVideoCall6;
                    if (mostRecentlyDisconnectedVideoCall6)
                    {
LABEL_186:
                      v42 = v154;
                      if (([qword_1003B0ED8 containsObject:@"PHMulitwayCallAssertionReason"] & 1) == 0)
                      {
                        [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHMulitwayCallAssertionReason"];
                        v42 = v154;
                      }

                      goto LABEL_258;
                    }

LABEL_251:
                    if ([qword_1003B0ED8 containsObject:@"PHMulitwayCallAssertionReason"])
                    {
                      multiwayViewController5 = [(PHInCallRootViewController *)self multiwayViewController];
                      if (![multiwayViewController5 isInVideoMessageFlow])
                      {
                        shouldShowVideoCallBlockAndReportScreen = [(PHInCallRootViewController *)self shouldShowVideoCallBlockAndReportScreen];

                        if ((shouldShowVideoCallBlockAndReportScreen & 1) == 0)
                        {
                          [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHMulitwayCallAssertionReason"];
                        }

                        v42 = 0;
                        v154 = mostRecentlyDisconnectedVideoCall6;
LABEL_258:
                        if ((call | v254))
                        {
                          _remoteViewControllerProxy2 = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
                          [_remoteViewControllerProxy2 setWallpaperTunnelActive:1];
                        }

                        if (v269)
                        {
                          sharedApplication7 = [(objc_class *)activeRemoteParticipants[39].isa sharedApplication];
                          delegate12 = [sharedApplication7 delegate];
                          [delegate12 hideCarPlayUI];
                        }

                        else
                        {
                          if (v154)
                          {
                            v212 = 1;
                          }

                          else
                          {
                            v212 = call;
                          }

                          featureFlags = [(PHInCallRootViewController *)self featureFlags];
                          if ([featureFlags carPlayBannersEnabled])
                          {
                            frontmostCall3 = [v266 frontmostCall];
                            v215 = [frontmostCall3 status] == 3;
                          }

                          else
                          {
                            v215 = 1;
                          }

                          if ((v212 & v215 & ([v259 originatingUIType] != 64)) != 1)
                          {
                            goto LABEL_271;
                          }

                          sharedApplication7 = [(objc_class *)activeRemoteParticipants[39].isa sharedApplication];
                          delegate12 = [sharedApplication7 delegate];
                          [delegate12 showCarPlayUIWithActivation:(incomingCall | v258 | incomingVideoCall) != 0];
                        }

LABEL_271:
                        [(PHInCallRootViewController *)self updateMultiwayViewControllerUIState];
                        [(PHInCallRootViewController *)self updateCallDetailsViewIsOnScreen];
                        [(PHInCallRootViewController *)self updateDesiredSpringboardBehavior];

                        goto LABEL_272;
                      }
                    }

                    v42 = 0;
                    goto LABEL_258;
                  }

                  if (v107)
                  {
                    [(PHInCallRootViewController *)self _loadAudioCallViewController];
                    features = [(PHInCallRootViewController *)self features];
                    if ([features callManagerEnabled])
                    {
                      callCenter2 = [(PHInCallRootViewController *)self callCenter];
                      frontmostCall4 = [callCenter2 frontmostCall];

                      v45 = v267;
                      if (frontmostCall4)
                      {
                        callManager5 = [(PHInCallRootViewController *)self callManager];
                        callCenter3 = [(PHInCallRootViewController *)self callCenter];
                        frontmostCall5 = [callCenter3 frontmostCall];
                        [callManager5 updateWithCall:frontmostCall5];

                        goto LABEL_141;
                      }
                    }

                    else
                    {

                      v45 = v267;
                    }

                    audioCallNavigationController = [(PHInCallRootViewController *)self audioCallNavigationController];
                    view5 = [audioCallNavigationController view];
                    superview4 = [view5 superview];

                    if (superview4)
                    {
LABEL_142:
                      if (!currentViewController)
                      {
                        goto LABEL_181;
                      }

                      audioCallViewController = [(PHInCallRootViewController *)self audioCallViewController];
                      if (!audioCallViewController)
                      {
                        goto LABEL_181;
                      }

                      audioCallNavigationController4 = audioCallViewController;
                      audioCallNavigationController2 = [(PHInCallRootViewController *)self audioCallNavigationController];
                      if (audioCallNavigationController2)
                      {
                        call = audioCallNavigationController2;
                        audioCallNavigationController3 = [(PHInCallRootViewController *)self audioCallNavigationController];
                        view6 = [audioCallNavigationController3 view];
                        superview5 = [view6 superview];
                        if (!(superview5 | mostRecentlyDisconnectedVideoCall6))
                        {
                          multiwayViewController = self->_multiwayViewController;

                          LODWORD(call) = v107;
                          if (!multiwayViewController)
                          {
LABEL_181:
                            incomingCall = v252;
                            if (!v252)
                            {
                              [(PHInCallRootViewController *)self releaseIdleTimerAssertionWithComment:@"showing Audio controller"];
                              goto LABEL_185;
                            }

                            v141 = @"showing Audio controller";
LABEL_183:
                            [(PHInCallRootViewController *)self obtainIdleTimerAssertionWithComment:v141];
                            goto LABEL_185;
                          }

                          v153 = sub_100004F84();
                          if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 0;
                            _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "InCallRootViewController showing Audio controller after transitioning from multiwayViewController", buf, 2u);
                          }

                          audioCallNavigationController4 = [(PHInCallRootViewController *)self audioCallNavigationController];
                          [(PHInCallRootViewController *)self _transitionFromViewController:currentViewController toViewController:audioCallNavigationController4];
LABEL_180:

                          goto LABEL_181;
                        }
                      }

                      LODWORD(call) = v107;
                      goto LABEL_180;
                    }

                    v145 = sub_100004F84();
                    if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_DEFAULT, "InCallRootViewController showing Audio controller", buf, 2u);
                    }

                    callManager5 = [(PHInCallRootViewController *)self audioCallNavigationController];
                    [(PHInCallRootViewController *)self _transitionFromViewController:currentViewController toViewController:callManager5];
LABEL_141:

                    goto LABEL_142;
                  }

                  if (v269)
                  {
                    view7 = [(PHSOSViewController *)self->_sosViewController view];
                    superview6 = [view7 superview];

                    v45 = v267;
                    incomingCall = v252;
                    if (!superview6)
                    {
                      v135 = sub_100004F84();
                      if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "InCallRootViewController showing SOS controller", buf, 2u);
                      }

                      [(PHInCallRootViewController *)self _loadSOSViewController];
                      [(PHInCallRootViewController *)self _reloadSOSHandles];
                      [(PHInCallRootViewController *)self _transitionFromViewController:currentViewController toViewController:self->_sosViewController];
                      sharedApplication8 = [(objc_class *)activeRemoteParticipants[39].isa sharedApplication];
                      delegate13 = [sharedApplication8 delegate];
                      [delegate13 transitionSceneToOverlayForSOS];
                    }

                    v138 = +[UIColor clearColor];
                    view8 = [(PHInCallRootViewController *)self view];
                    window = [view8 window];
                    [window setBackgroundColor:v138];

                    v141 = @"showing SOS controller";
                    goto LABEL_183;
                  }

                  v154 = mostRecentlyDisconnectedVideoCall6;
                  if (mostRecentlyDisconnectedVideoCall6)
                  {
                    v155 = sub_100004F84();
                    if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_DEFAULT, "showMultiwayControllerCall", buf, 2u);
                    }

                    callDisplayStyleManager = [(PHInCallRootViewController *)self callDisplayStyleManager];
                    multiwayViewController6 = v266;
                    v45 = v267;
                    if ([callDisplayStyleManager callDisplayStyle])
                    {
                    }

                    else
                    {
                      featureFlags2 = [(PHInCallRootViewController *)self featureFlags];
                      conversationOneToOneModeEnabled = [featureFlags2 conversationOneToOneModeEnabled];

                      v154 = mostRecentlyDisconnectedVideoCall6;
                      if ((conversationOneToOneModeEnabled & 1) == 0)
                      {
                        v178 = sub_100004F84();
                        if (os_log_type_enabled(v178, OS_LOG_TYPE_ERROR))
                        {
                          sub_100256640();
                        }

                        [(PHInCallRootViewController *)self requestInCallSceneTransitionToFullScreen];
                      }
                    }

                    v179 = [v266 activeConversationForCall:v154];
                    wantsStagingArea = [v154 wantsStagingArea];
                    v263 = v179;
                    if (wantsStagingArea)
                    {
                      if ((+[TUConversationManager allowsVideo]& 1) == 0)
                      {
                        goto LABEL_211;
                      }

                      goto LABEL_200;
                    }

                    activeRemoteParticipants = [v179 activeRemoteParticipants];
                    if (-[NSObject count](activeRemoteParticipants, "count") && [v179 state] != 3)
                    {
                      multiwayViewController6 = [(PHInCallRootViewController *)self multiwayViewController];
                      call = [multiwayViewController6 call];
                      if (![call isEqual:v154] && +[TUConversationManager allowsVideo](TUConversationManager, "allowsVideo"))
                      {
LABEL_200:
                        featureFlags3 = [(PHInCallRootViewController *)self featureFlags];
                        conversationOneToOneModeEnabled2 = [featureFlags3 conversationOneToOneModeEnabled];

                        if (!wantsStagingArea)
                        {
                        }

                        if (conversationOneToOneModeEnabled2)
                        {
                          goto LABEL_211;
                        }

                        activeRemoteParticipants = sub_100004F84();
                        if (os_log_type_enabled(activeRemoteParticipants, OS_LOG_TYPE_FAULT))
                        {
                          sub_10025667C();
                        }

                        goto LABEL_210;
                      }
                    }

LABEL_210:

LABEL_211:
                    LODWORD(call) = 0;
                    incomingCall = v252;
                    if (!v248)
                    {
                      multiwayViewController7 = [(PHInCallRootViewController *)self multiwayViewController];
                      isInVideoMessageFlow2 = [multiwayViewController7 isInVideoMessageFlow];

                      if ((isInVideoMessageFlow2 & 1) == 0)
                      {
                        v185 = sub_100004F84();
                        if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&_mh_execute_header, v185, OS_LOG_TYPE_DEFAULT, "InCallRootViewController showing Multiway controller", buf, 2u);
                        }

                        multiwayViewController8 = [(PHInCallRootViewController *)self multiwayViewController];
                        pipViewController = [multiwayViewController8 pipViewController];
                        parentViewController2 = [pipViewController parentViewController];

                        [(PHInCallRootViewController *)self _loadMultiwayViewControllerForCall:mostRecentlyDisconnectedVideoCall6];
                        multiwayViewController9 = [(PHInCallRootViewController *)self multiwayViewController];
                        [(PHInCallRootViewController *)self transitionToVideoCallBasedViewController:multiwayViewController9 shouldUpdatePipSize:1];

                        v190 = +[PHInCallOrientationMonitor sharedInstance];
                        [v190 setOrientationEventsEnabled:1];

                        multiwayViewController10 = [(PHInCallRootViewController *)self multiwayViewController];

                        if (multiwayViewController8 != multiwayViewController10 && parentViewController2)
                        {
                          v192 = sub_100004F84();
                          if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
                          {
                            pipViewController2 = [multiwayViewController8 pipViewController];
                            *buf = 138412290;
                            selfCopy3 = pipViewController2;
                            _os_log_impl(&_mh_execute_header, v192, OS_LOG_TYPE_DEFAULT, "Old GFT call was showing PIP view controller %@", buf, 0xCu);
                          }

                          pipViewController3 = [multiwayViewController8 pipViewController];
                          [(PHInCallRootViewController *)self setOldMultiwayPIPViewController:pipViewController3];
                        }
                      }
                    }

                    if (v249)
                    {
                      [(PHInCallRootViewController *)self releaseIdleTimerAssertionWithComment:@"showing Multiway controller for disconnected video call requiring UI"];
                    }

                    else
                    {
                      [(PHInCallRootViewController *)self obtainIdleTimerAssertionWithComment:@"showing Multiway controller"];
                    }

                    activeRemoteParticipants = &_s16CommunicationsUI29CallTranslationLanguagePickerV05SwiftB04ViewAAMc_ptr;
                    v154 = mostRecentlyDisconnectedVideoCall6;

                    [(PHInCallRootViewController *)self showHideMiniWindowViewIfNeededAnimated:0];
                    goto LABEL_186;
                  }

                  if (v262)
                  {
                    screenTimeHostViewController = [(PHInCallRootViewController *)self screenTimeHostViewController];
                    view9 = [screenTimeHostViewController view];
                    superview7 = [view9 superview];

                    v154 = 0;
                    incomingCall = v252;
                    if (!superview7)
                    {
                      v166 = sub_100004F84();
                      if (os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v166, OS_LOG_TYPE_DEFAULT, "InCallRootViewController showing Screen Time Host controller", buf, 2u);
                      }

                      [(PHInCallRootViewController *)self dismissPhoneRemoteViewController];
                      [(PHInCallRootViewController *)self dismissContactsViewController];
                      [(PHInCallRootViewController *)self presentScreenTimeHostViewController];
                    }
                  }

                  else
                  {
                    if (v261)
                    {
                      [(PHInCallRootViewController *)self _loadUserFeedbackViewController];
                      v195 = sub_100004F84();
                      incomingCall = v252;
                      if (os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v195, OS_LOG_TYPE_DEFAULT, "InCallRootViewController showing User Feedback View controller", buf, 2u);
                      }

                      callCenter4 = [(PHInCallRootViewController *)self callCenter];
                      videoDeviceController = [callCenter4 videoDeviceController];
                      [videoDeviceController stopPreview];

                      [(PHInCallRootViewController *)self presentViewController:self->_userFeedbackViewController animated:1 completion:0];
                    }

                    else
                    {
                      incomingCall = v252;
                      if (!v254)
                      {
                        if (v91 && ![(PHInCallRootViewController *)self isPresentingCallDetailsView])
                        {
                          [(PHInCallRootViewController *)self showCallDetailsView];
                        }

                        goto LABEL_250;
                      }

                      view10 = [(PHPTTFullScreenContainerViewController *)self->_pttFullScreenContainerViewController view];
                      superview8 = [view10 superview];

                      if (!superview8)
                      {
                        v203 = sub_100004F84();
                        if (os_log_type_enabled(v203, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&_mh_execute_header, v203, OS_LOG_TYPE_DEFAULT, "InCallRootViewController showing PTT Full screen controller", buf, 2u);
                        }

                        [(PHInCallRootViewController *)self _loadPTTFullScreenContainerViewController];
                        [(PHInCallRootViewController *)self _transitionFromViewController:currentViewController toViewController:self->_pttFullScreenContainerViewController];
                        sharedApplication9 = [(objc_class *)activeRemoteParticipants[39].isa sharedApplication];
                        delegate14 = [sharedApplication9 delegate];
                        currentInCallScene2 = [delegate14 currentInCallScene];
                        [currentInCallScene2 requestTransitionToPresentationMode:0 shouldDismissCMASAlerts:0 analyticsSource:0];
                      }

                      [(PHInCallRootViewController *)self releaseIdleTimerAssertionWithComment:@"showing PTT Full Screen controller"];
                    }

                    v154 = 0;
                  }

LABEL_250:
                  [(PHInCallRootViewController *)self showHideMiniWindowViewIfNeededAnimated:0];
                  v45 = v267;
                  goto LABEL_251;
                }
              }

              sharedApplication10 = [(objc_class *)activeRemoteParticipants[39].isa sharedApplication];
              delegate15 = [sharedApplication10 delegate];
              bannerPresentationManager3 = [delegate15 bannerPresentationManager];
              if ([bannerPresentationManager3 onlyHasPlaceholderCall])
              {
              }

              else
              {
                conversationManager = [v266 conversationManager];
                avLessConversation = [conversationManager avLessConversation];

                if (!avLessConversation)
                {
                  [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHAVLessConversationAssertionReason"];
                  [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHAVLessConversationDetailsViewAssertionReason"];
                }

                activeRemoteParticipants = &_s16CommunicationsUI29CallTranslationLanguagePickerV05SwiftB04ViewAAMc_ptr;
              }

              goto LABEL_119;
            }

LABEL_70:
            v262 = v253 ^ 1;
            v76 = sub_100004F84();
            if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "setting ICSAppDelegate.mostRecentlyDisconnectedVideoCall to nil", buf, 2u);
            }

            sharedApplication11 = [(objc_class *)activeRemoteParticipants[39].isa sharedApplication];
            delegate16 = [sharedApplication11 delegate];
            [delegate16 setMostRecentlyDisconnectedVideoCall:0];

            goto LABEL_73;
          }

          if (incomingCall)
          {
            features2 = [(PHInCallRootViewController *)self features];
            if ([features2 shouldShowFullScreenCallWaiting] & 1 | ((hasCurrentVideoCalls & 1) == 0) | ics_hasTooManyCallsForCallWaitingBanner & 1)
            {

              activeRemoteParticipants = &_s16CommunicationsUI29CallTranslationLanguagePickerV05SwiftB04ViewAAMc_ptr;
LABEL_190:
              v172 = sub_100004F84();
              if (!os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
              {
LABEL_193:

                goto LABEL_290;
              }

              *buf = 138412290;
              selfCopy3 = incomingCall;
              v173 = "Showing audio controller for incomingCall %@";
              v174 = v172;
              v175 = 12;
LABEL_192:
              _os_log_impl(&_mh_execute_header, v174, OS_LOG_TYPE_DEFAULT, v173, buf, v175);
              goto LABEL_193;
            }

            features3 = [(PHInCallRootViewController *)self features];
            activeRemoteParticipants = &_s16CommunicationsUI29CallTranslationLanguagePickerV05SwiftB04ViewAAMc_ptr;
            if ([features3 callManagerEnabled])
            {
              callManager6 = [(PHInCallRootViewController *)self callManager];
              presentedFullScreenedCall = [callManager6 presentedFullScreenedCall];

              if (presentedFullScreenedCall)
              {
                goto LABEL_190;
              }
            }

            else
            {
            }

LABEL_230:
            if ([v258 isConversation])
            {
              v198 = sub_100004F84();
              if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                selfCopy3 = v258;
                _os_log_impl(&_mh_execute_header, v198, OS_LOG_TYPE_DEFAULT, "Showing multiway controller for sending video call %@", buf, 0xCu);
              }

              v199 = v258;
              goto LABEL_234;
            }

            if (v256 && !v258 && !v255)
            {
              if ([(PHInCallRootViewController *)v256 isScreening])
              {
                [(PHInCallRootViewController *)self releaseIdleTimerAssertionWithComment:@"Showing audio controller for Screening, enabling idleTimer"];
              }

              v200 = sub_100004F84();
              if (os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                selfCopy3 = v256;
                _os_log_impl(&_mh_execute_header, v200, OS_LOG_TYPE_DEFAULT, "Showing audio controller for active audio call %@", buf, 0xCu);
              }

              mostRecentlyDisconnectedVideoCall6 = 0;
              v71 = 1;
              goto LABEL_300;
            }

            currentVideoCalls = [v266 currentVideoCalls];
            if ([currentVideoCalls count] == 1)
            {
              currentVideoCalls2 = [v266 currentVideoCalls];
              v218 = [currentVideoCalls2 objectAtIndex:0];
              isConversation = [v218 isConversation];

              if (isConversation)
              {
                if (!v255)
                {
                  mostRecentlyDisconnectedVideoCall6 = 0;
                  goto LABEL_299;
                }

                v220 = sub_100004F84();
                if (os_log_type_enabled(v220, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  selfCopy3 = v255;
                  _os_log_impl(&_mh_execute_header, v220, OS_LOG_TYPE_DEFAULT, "Showing video controller for active video call %@", buf, 0xCu);
                }

                v199 = v255;
LABEL_234:
                mostRecentlyDisconnectedVideoCall6 = v199;
LABEL_299:
                v71 = 0;
LABEL_300:
                features4 = [(PHInCallRootViewController *)self features];
                callManagerEnabled = [features4 callManagerEnabled];
                if ((v71 & 1) != 0 || !callManagerEnabled)
                {

                  goto LABEL_63;
                }

                callManager7 = [(PHInCallRootViewController *)self callManager];
                presentedFullScreenedCall2 = [callManager7 presentedFullScreenedCall];

                if (!presentedFullScreenedCall2)
                {
                  callManager8 = [(PHInCallRootViewController *)self callManager];
                  [callManager8 cleanUp];

                  v71 = 0;
LABEL_64:
                  v73 = 0;
                  v261 = 0;
                  v262 = 0;
                  if (!mostRecentlyDisconnectedVideoCall4)
                  {
                    goto LABEL_81;
                  }

                  goto LABEL_70;
                }

LABEL_62:
                v71 = 0;
LABEL_63:
                LODWORD(presentedFullScreenedCall2) = 0;
                goto LABEL_64;
              }
            }

            else
            {
            }

            v228 = sub_100004F84();
            if (os_log_type_enabled(v228, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v228, OS_LOG_TYPE_DEFAULT, "Showing video controller", buf, 2u);
            }

            currentVideoCalls3 = [v266 currentVideoCalls];
            mostRecentlyDisconnectedVideoCall6 = [currentVideoCalls3 objectAtIndex:0];

            goto LABEL_299;
          }

          activeRemoteParticipants = &_s16CommunicationsUI29CallTranslationLanguagePickerV05SwiftB04ViewAAMc_ptr;
          if (hasCurrentVideoCalls)
          {
            goto LABEL_230;
          }

          if ([v266 currentCallCount])
          {
            if (currentViewController && ((currentViewController == self->_emergencyDialerViewController) & v61) == 1)
            {
              v167 = sub_100004F84();
              if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
              {
                currentCalls = [v266 currentCalls];
                *buf = 138412546;
                selfCopy3 = currentCalls;
                v276 = 2112;
                v277 = currentViewController;
                _os_log_impl(&_mh_execute_header, v167, OS_LOG_TYPE_DEFAULT, "InCallRootViewController will show emergency viewcontroller for currentCalls %@ (the view controller currently being shown is %@)", buf, 0x16u);
              }

              goto LABEL_176;
            }

            if ([v266 currentCallCount]== 1)
            {
              currentCalls2 = [v266 currentCalls];
              v222 = [currentCalls2 objectAtIndexedSubscript:0];
              isScreening = [v222 isScreening];

              if (isScreening)
              {
                [(PHInCallRootViewController *)self releaseIdleTimerAssertionWithComment:@"Showing audio controller for Screening, enabling idleTimer"];
              }
            }

            v224 = sub_100004F84();
            if (os_log_type_enabled(v224, OS_LOG_TYPE_DEFAULT))
            {
              currentCalls3 = [v266 currentCalls];
              *buf = 138412546;
              selfCopy3 = currentCalls3;
              v276 = 2112;
              v277 = currentViewController;
              _os_log_impl(&_mh_execute_header, v224, OS_LOG_TYPE_DEFAULT, "InCallRootViewController will show audio viewcontroller for currentCalls %@ (the view controller currently being shown is %@)", buf, 0x16u);

LABEL_288:
              goto LABEL_289;
            }

            goto LABEL_289;
          }

          if (v12)
          {
            v224 = sub_100004F84();
            if (os_log_type_enabled(v224, OS_LOG_TYPE_DEFAULT))
            {
              currentCalls3 = +[UIApplication sharedApplication];
              delegate17 = [(PHInCallRootViewController *)currentCalls3 delegate];
              mostRecentlyDisconnectedAudioCall3 = [delegate17 mostRecentlyDisconnectedAudioCall];
              *buf = 138412290;
              selfCopy3 = mostRecentlyDisconnectedAudioCall3;
              _os_log_impl(&_mh_execute_header, v224, OS_LOG_TYPE_DEFAULT, "InCallRootViewController will show audio view controller for disconnected call %@", buf, 0xCu);

              goto LABEL_288;
            }

LABEL_289:

LABEL_290:
            LODWORD(presentedFullScreenedCall2) = 0;
            v73 = 0;
            mostRecentlyDisconnectedVideoCall6 = 0;
            v261 = 0;
            v262 = 0;
            v71 = 1;
            if (!mostRecentlyDisconnectedVideoCall4)
            {
              goto LABEL_81;
            }

            goto LABEL_70;
          }

          if (v249)
          {
            v234 = sub_100004F84();
            if (os_log_type_enabled(v234, OS_LOG_TYPE_DEFAULT))
            {
              v235 = +[UIApplication sharedApplication];
              delegate18 = [v235 delegate];
              mostRecentlyDisconnectedVideoCall5 = [delegate18 mostRecentlyDisconnectedVideoCall];
              *buf = 138412290;
              selfCopy3 = mostRecentlyDisconnectedVideoCall5;
              _os_log_impl(&_mh_execute_header, v234, OS_LOG_TYPE_DEFAULT, "InCallRootViewController will show video view controller for disconnected call %@", buf, 0xCu);
            }

            sharedApplication11 = [(PHInCallRootViewController *)self multiwayViewController];
            if ([sharedApplication11 isOneToOneModeEnabled])
            {
              v238 = +[UIApplication sharedApplication];
              presentedFullScreenedCall2 = [v238 delegate];
              mostRecentlyDisconnectedVideoCall6 = [presentedFullScreenedCall2 mostRecentlyDisconnectedVideoCall];

              v71 = 0;
              LODWORD(presentedFullScreenedCall2) = 0;
              v73 = 0;
              v262 = 0;
LABEL_314:
              v261 = 0;
LABEL_73:

              goto LABEL_81;
            }
          }

          else
          {
            if (![(PHInCallRootViewController *)self shouldShowVideoCallBlockAndReportScreen])
            {
              if (!+[TUCallCapabilities isEmergencyCallbackModeEnabled])
              {
                if (+[PHSOSViewController isCallBufferDismissalAssertionActive])
                {
                  v172 = sub_100004F84();
                  if (!os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_193;
                  }

                  *buf = 0;
                  v173 = "PHInCallRootViewController will show audio controller for call buffer. No call is active right now.";
                  v174 = v172;
                  v175 = 2;
                  goto LABEL_192;
                }

                if ([(PHInCallRootViewController *)self shouldShowSOS])
                {
                  v243 = sub_100004F84();
                  if (os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v243, OS_LOG_TYPE_DEFAULT, "InCallRootViewController will show sos view controller", buf, 2u);
                  }

                  v71 = 0;
                  LODWORD(presentedFullScreenedCall2) = 0;
                  mostRecentlyDisconnectedVideoCall6 = 0;
                  v261 = 0;
                  v262 = 0;
                  v73 = 1;
                }

                else if ([qword_1003B0ED8 containsObject:@"PHAudioCallViewControllerDismissalAssertionWaitingForIdle"])
                {
                  v244 = sub_100004F84();
                  if (os_log_type_enabled(v244, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v244, OS_LOG_TYPE_DEFAULT, "PHInCallRootViewController will show audio controller since we're waiting for an idle call state", buf, 2u);
                  }

                  LODWORD(presentedFullScreenedCall2) = 0;
                  v73 = 0;
                  mostRecentlyDisconnectedVideoCall6 = 0;
                  v261 = 0;
                  v262 = 0;
                  v71 = 1;
                }

                else if ([qword_1003B0ED8 containsObject:@"PHUserScoreShowingAssertionReason"])
                {
                  v245 = sub_100004F84();
                  if (os_log_type_enabled(v245, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v245, OS_LOG_TYPE_DEFAULT, "InCallRootViewController will show UserFeedback View Controller", buf, 2u);
                  }

                  v71 = 0;
                  LODWORD(presentedFullScreenedCall2) = 0;
                  v73 = 0;
                  mostRecentlyDisconnectedVideoCall6 = 0;
                  v261 = 1;
                  v262 = 0;
                }

                else
                {
                  if (v51 || ![qword_1003B0ED8 containsObject:@"PHAVLessConversationAssertionReason"])
                  {
                    mostRecentlyDisconnectedVideoCall6 = 0;
                    self = selfCopy;
                    goto LABEL_62;
                  }

                  v246 = sub_100004F84();
                  if (os_log_type_enabled(v246, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v246, OS_LOG_TYPE_DEFAULT, "InCallRootViewController doesn't have any calls but still has an assertion for an AVLess conversation.", buf, 2u);
                  }

                  v247 = +[PHPIPController defaultPIPController];
                  [v247 cancelPIPIfNeeded];

                  v71 = 0;
                  LODWORD(presentedFullScreenedCall2) = 0;
                  v73 = 0;
                  mostRecentlyDisconnectedVideoCall6 = 0;
                  v261 = 0;
                  v262 = 0;
                }

                self = selfCopy;
                if (!mostRecentlyDisconnectedVideoCall4)
                {
                  goto LABEL_81;
                }

                goto LABEL_70;
              }

              v242 = sub_100004F84();
              if (os_log_type_enabled(v242, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v242, OS_LOG_TYPE_DEFAULT, "InCallRootViewController will show emergency view controller as ECBM is active", buf, 2u);
              }

LABEL_176:
              v71 = 0;
              v73 = 0;
              mostRecentlyDisconnectedVideoCall6 = 0;
              v261 = 0;
              v262 = 0;
              LODWORD(presentedFullScreenedCall2) = 1;
              if (!mostRecentlyDisconnectedVideoCall4)
              {
                goto LABEL_81;
              }

              goto LABEL_70;
            }

            sharedApplication11 = sub_100004F84();
            if (os_log_type_enabled(sharedApplication11, OS_LOG_TYPE_DEFAULT))
            {
              v239 = +[UIApplication sharedApplication];
              delegate19 = [v239 delegate];
              mostRecentlyDisconnectedVideoCall7 = [delegate19 mostRecentlyDisconnectedVideoCall];
              *buf = 138412290;
              selfCopy3 = mostRecentlyDisconnectedVideoCall7;
              _os_log_impl(&_mh_execute_header, sharedApplication11, OS_LOG_TYPE_DEFAULT, "updateCallControllerForCurrentState InCallRootViewController will show video view controller for disconnected call %@", buf, 0xCu);
            }
          }

          v71 = 0;
          LODWORD(presentedFullScreenedCall2) = 0;
          v73 = 0;
          v262 = 0;
          mostRecentlyDisconnectedVideoCall6 = 0;
          goto LABEL_314;
        }
      }

      else
      {

        v19 = v35;
        incomingCall = v34;
        callCenter = v36;
        self = selfCopy;
      }
    }

    goto LABEL_30;
  }

  callCenter = sub_100004F84();
  if (os_log_type_enabled(callCenter, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy3 = self;
    _os_log_impl(&_mh_execute_header, callCenter, OS_LOG_TYPE_DEFAULT, "This instance of PHInCallRootVC %@ no longer has a window, not continuing with updateCallControllerForCurrentState", buf, 0xCu);
  }

LABEL_273:
}

- (BOOL)shouldShowSOS
{
  callCenter = [(PHInCallRootViewController *)self callCenter];
  if ([callCenter currentCallCount])
  {
    v4 = 0;
  }

  else
  {
    callCenter2 = [(PHInCallRootViewController *)self callCenter];
    if ([callCenter2 currentVideoCallCount])
    {
      v4 = 0;
    }

    else
    {
      v4 = +[PHSOSViewController isSOSDismissalAssertionActive];
    }
  }

  return v4;
}

- (void)_startMonitoringDisplayLayout
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_startMonitoringDisplayLayout", buf, 2u);
  }

  v4 = +[FBSDisplayLayoutMonitorConfiguration configurationForDefaultMainDisplayMonitor];
  [v4 setNeedsUserInteractivePriority:1];
  objc_initWeak(buf, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100034220;
  v8[3] = &unk_100359478;
  objc_copyWeak(&v9, buf);
  [v4 setTransitionHandler:v8];
  displayLayoutMonitor = self->_displayLayoutMonitor;
  if (displayLayoutMonitor)
  {
    [(FBSDisplayLayoutMonitor *)displayLayoutMonitor invalidate];
  }

  v6 = [FBSDisplayLayoutMonitor monitorWithConfiguration:v4];
  v7 = self->_displayLayoutMonitor;
  self->_displayLayoutMonitor = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

- (void)updateMultiwayViewControllerUIState
{
  isFullScreen = [(PHInCallRootViewController *)self isFullScreen];
  v4 = +[PHPIPController defaultPIPController];
  isPIPProxyActive = [v4 isPIPProxyActive];

  if (isFullScreen || isPIPProxyActive)
  {
    v7 = +[PHPIPController defaultPIPController];
    if ([v7 isPIPProxyInterrupted])
    {
      v6 = 0;
    }

    else
    {
      v6 = ![(PHInCallRootViewController *)self isDisplayStyleMiniWindow];
    }
  }

  else
  {
    v6 = 0;
  }

  callDisplayStyleManager = [(PHInCallRootViewController *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  multiwayViewController = [(PHInCallRootViewController *)self multiwayViewController];

  if (multiwayViewController)
  {
    if (v6)
    {
      currentViewControllerIsMultiway = [(PHInCallRootViewController *)self currentViewControllerIsMultiway];
    }

    else
    {
      currentViewControllerIsMultiway = 0;
    }

    v12 = sub_100004F84();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      multiwayViewController2 = [(PHInCallRootViewController *)self multiwayViewController];
      callDisplayStyleManager2 = [(PHInCallRootViewController *)self callDisplayStyleManager];
      v25 = 138413058;
      v26 = multiwayViewController2;
      v27 = 1024;
      v28 = currentViewControllerIsMultiway;
      v29 = 1024;
      v30 = isPIPProxyActive;
      v31 = 2048;
      callDisplayStyle2 = [callDisplayStyleManager2 callDisplayStyle];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Updating %@ isMultiwayVisibleOnScreen=%d isPipped=%d callDisplayStyle=%ld", &v25, 0x22u);
    }

    v15 = +[PHPIPController defaultPIPController];
    pipState = [v15 pipState];
    multiwayViewController3 = [(PHInCallRootViewController *)self multiwayViewController];
    [multiwayViewController3 setPipState:pipState];

    multiwayViewController4 = [(PHInCallRootViewController *)self multiwayViewController];
    [multiwayViewController4 setIsOnScreen:currentViewControllerIsMultiway];

    multiwayViewController5 = [(PHInCallRootViewController *)self multiwayViewController];
    [multiwayViewController5 setIsDisplayedInBanner:callDisplayStyle == 0];

    multiwayViewController6 = [(PHInCallRootViewController *)self multiwayViewController];
    [multiwayViewController6 setIsFullScreen:isFullScreen];

    [(PHInCallRootViewController *)self refreshBottomBarButtonLayout];
    [(PHInCallRootViewController *)self setNeedsStatusBarPillSuppressionUpdate];
    v21 = +[PHInCallOrientationMonitor sharedInstance];
    v22 = v21;
    if (isPIPProxyActive)
    {
      currentOrientation = [v21 currentOrientation];
    }

    else
    {
      currentOrientation = [v21 lastValidOrientation];
    }

    v24 = currentOrientation;

    [(PHInCallRootViewController *)self updateMultiwayDeviceOrientation:v24];
  }
}

- (BOOL)isPresentingViewControllerWithSensitiveInformation
{
  if ([(PHInCallRootViewController *)self isPresentingEffectsBrowser]|| [(PHInCallRootViewController *)self isPresentingRemoteHostViewController]|| [(PHInCallRootViewController *)self isPresentingContactsViewController])
  {
    return 1;
  }

  return [(PHInCallRootViewController *)self isPresentingContactDetails];
}

- (BOOL)isPresentingEffectsBrowser
{
  currentViewController = [(PHInCallRootViewController *)self currentViewController];
  v4 = [PHInCallUIUtilities handleNavigationControllerIfNecessary:currentViewController];

  if ([(PHInCallRootViewController *)self viewControllerSupportsEffects:v4])
  {
    isPresentingEffectsBrowser = [v4 isPresentingEffectsBrowser];
  }

  else
  {
    isPresentingEffectsBrowser = 0;
  }

  return isPresentingEffectsBrowser;
}

- (BOOL)isPresentingContactDetails
{
  presentedViewController = [(PHInCallRootViewController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    presentedViewController2 = [(PHInCallRootViewController *)self presentedViewController];
    objc_opt_class();
    v7 = objc_opt_isKindOfClass();

    if (v7)
    {
      v15 = 0u;
      v16 = 0u;
      v14 = 0u;
      v8 = [(PHInCallRootViewController *)self presentedViewController:0];
      viewControllers = [v8 viewControllers];

      v5 = [viewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        v10 = *v14;
        while (2)
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(viewControllers);
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              LOBYTE(v5) = 1;
              goto LABEL_15;
            }
          }

          v5 = [viewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v5)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (void)statusBarTappedInFullScreen
{
  callManager = [(PHInCallRootViewController *)self callManager];
  callCenter = [(PHInCallRootViewController *)self callCenter];
  frontmostAudioOrVideoCall = [callCenter frontmostAudioOrVideoCall];
  [callManager prioritizeCall:frontmostAudioOrVideoCall];
}

- (void)_testing_viewWillAppear
{
  if (([UIApp isRunningTest:@"PlaceOutgoingCall"] & 1) != 0 || objc_msgSend(UIApp, "isRunningTest:", @"FaceTimePlaceOutgoingCall"))
  {
    [UIApp finishedSubTest:@"sbRemoteAlert" forTest:qword_1003B8808];
    [UIApp startedSubTest:@"viewControllerSetup" forTest:qword_1003B8808];
    v2 = UIApp;
    v3 = qword_1003B8808;

    [v2 startedSubTest:@"animation" forTest:v3];
  }
}

- (void)_testing_viewDidAppear
{
  if (([UIApp isRunningTest:@"PlaceOutgoingCall"] & 1) != 0 || objc_msgSend(UIApp, "isRunningTest:", @"FaceTimePlaceOutgoingCall"))
  {
    v2 = UIApp;
    v3 = qword_1003B8808;

    [v2 finishedSubTest:@"viewControllerSetup" forTest:v3];
  }
}

- (void)_testing_finishedAnimatingIn
{
  if (([UIApp isRunningTest:@"PlaceOutgoingCall"] & 1) != 0 || objc_msgSend(UIApp, "isRunningTest:", @"FaceTimePlaceOutgoingCall"))
  {
    [UIApp finishedSubTest:@"animation" forTest:qword_1003B8808];
    v2 = UIApp;
    v3 = qword_1003B8808;

    [v2 finishedSubTest:@"end-to-end" forTest:v3];
  }
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = objc_alloc_init(NSMutableSet);
    v3 = qword_1003B0ED8;
    qword_1003B0ED8 = v2;

    _objc_release_x1(v2, v3);
  }
}

+ (void)setStatusBarPillSuppressionForBackgroundActivities:(id)activities onWindowScene:(id)scene
{
  activitiesCopy = activities;
  sceneCopy = scene;
  v7 = activitiesCopy;
  if (sceneCopy)
  {
    preferredBackgroundActivitiesToSuppress = [sceneCopy preferredBackgroundActivitiesToSuppress];
    v9 = [preferredBackgroundActivitiesToSuppress isEqual:v7];

    if ((v9 & 1) == 0)
    {
      [sceneCopy setPreferredBackgroundActivitiesToSuppress:v7];
    }
  }

  else
  {
    v10 = sub_100004F84();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] No WindowScene, so not setting any preferred status bar pill suppressions", v11, 2u);
    }
  }
}

- (void)setCurrentAlertButtonAction:(id)action
{
  actionCopy = action;
  currentAlertButtonAction = self->_currentAlertButtonAction;
  if (currentAlertButtonAction)
  {
    [(SBUIRemoteAlertButtonAction *)currentAlertButtonAction sendResponseWithUnHandledEvents:0];
  }

  v6 = self->_currentAlertButtonAction;
  self->_currentAlertButtonAction = actionCopy;
}

- (void)forceUpdateCallControllerForSOS
{
  if (+[PHSOSViewController isSOSDismissalAssertionActive])
  {
    [(PHInCallRootViewController *)self updateCallControllerForCurrentState];
    byte_1003B0EE0 = 0;
  }
}

- (void)sendResponseIfNecessaryWithUnhandledEvents:(unint64_t)events
{
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    currentAlertButtonAction = [(PHInCallRootViewController *)self currentAlertButtonAction];
    v10 = 138412546;
    v11 = currentAlertButtonAction;
    v12 = 2048;
    eventsCopy = events;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending Response on currentAlertButtonAction: %@ with SBUIRemoteAlertServiceButtonEvents: %ld", &v10, 0x16u);
  }

  currentAlertButtonAction2 = [(PHInCallRootViewController *)self currentAlertButtonAction];

  if (currentAlertButtonAction2)
  {
    currentAlertButtonAction3 = [(PHInCallRootViewController *)self currentAlertButtonAction];
    [currentAlertButtonAction3 sendResponseWithUnHandledEvents:events];

    currentAlertButtonAction = self->_currentAlertButtonAction;
    self->_currentAlertButtonAction = 0;
  }
}

- (PHInCallRootViewController)initWithCallDisplayStyleManager:(id)manager
{
  managerCopy = manager;
  v28.receiver = self;
  v28.super_class = PHInCallRootViewController;
  v6 = [(PHInCallRootViewController *)&v28 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callDisplayStyleManager, manager);
    v8 = objc_opt_new();
    labelDescriptorFactory = v7->_labelDescriptorFactory;
    v7->_labelDescriptorFactory = v8;

    v10 = +[CNKFeatures sharedInstance];
    features = v7->_features;
    v7->_features = v10;

    v12 = +[TUCallCenter sharedInstance];
    callCenter = v7->_callCenter;
    v7->_callCenter = v12;

    v14 = objc_opt_new();
    v15 = [v14 makeWithCallCenter:v7->_callCenter];
    declineCallService = v7->_declineCallService;
    v7->_declineCallService = v15;

    v17 = [[UITapGestureRecognizer alloc] initWithTarget:v7 action:"bannerTapped:"];
    bannerTapGestureRecognizer = v7->_bannerTapGestureRecognizer;
    v7->_bannerTapGestureRecognizer = v17;

    [(UITapGestureRecognizer *)v7->_bannerTapGestureRecognizer setNumberOfTapsRequired:1];
    features = [(PHInCallRootViewController *)v7 features];
    callManagerEnabled = [features callManagerEnabled];

    if (callManagerEnabled)
    {
      v21 = [ICSCallManagerBridge alloc];
      callDisplayStyleManager = v7->_callDisplayStyleManager;
      v23 = objc_alloc_init(TUFeatureFlags);
      v24 = [(ICSCallManagerBridge *)v21 initWithRootController:v7 callDisplayStyleManager:callDisplayStyleManager flags:v23];
      callManager = v7->_callManager;
      v7->_callManager = v24;
    }

    -[PHInCallRootViewController updateBannerTapGestureRecognizerForCallDisplayStyle:](v7, "updateBannerTapGestureRecognizerForCallDisplayStyle:", [managerCopy callDisplayStyle]);
    v26 = objc_alloc_init(NSMutableDictionary);
    [(PHInCallRootViewController *)v7 setViewControllersDict:v26];
  }

  return v7;
}

- (PHInCallRootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v20.receiver = self;
  v20.super_class = PHInCallRootViewController;
  v4 = [(PHInCallRootViewController *)&v20 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = objc_opt_new();
    labelDescriptorFactory = v4->_labelDescriptorFactory;
    v4->_labelDescriptorFactory = v5;

    v7 = objc_opt_new();
    animatorFactory = v4->_animatorFactory;
    v4->_animatorFactory = v7;

    v9 = sub_100004F84();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v10 = +[CNKFeatures sharedInstance];
    features = v4->_features;
    v4->_features = v10;

    v12 = +[TUCallCenter sharedInstance];
    callCenter = v4->_callCenter;
    v4->_callCenter = v12;

    [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHInitialPresentationAssertionReason"];
    [(PHInCallRootViewController *)v4 registerForNotifications];
    v14 = +[PHInCallUtilities sharedInstance];
    v15 = +[CUTWiFiManager sharedInstance];
    [v15 setAutoAssociateWiFiAsForegroundClient:1];

    v16 = +[CNKFeatures sharedInstance];
    isEnhancedEmergencyEnabled = [v16 isEnhancedEmergencyEnabled];

    if ((isEnhancedEmergencyEnabled & 1) == 0)
    {
      v18 = +[PHSOSDisconnectionConfirmation sharedInstance];
      [v18 addDelegate:v4];
    }
  }

  return v4;
}

- (void)registerForNotifications
{
  v13 = +[NSNotificationCenter defaultCenter];
  [v13 removeObserver:self];
  [v13 addObserver:self selector:"dismissalAssertionReleasedNotification:" name:@"PHDismissalAssertionReleasedNotification" object:0];
  [v13 addObserver:self selector:"callStateChangedNotification:" name:TUCallCenterResolvedCallStatusChangedNotification object:0];
  [v13 addObserver:self selector:"screeningStateChangedNotification:" name:TUCallCenterIsScreeningChangedNotification object:0];
  [v13 addObserver:self selector:"receptionistStateChangedNotification:" name:TUCallCenterReceptionistStateChangedNotification object:0];
  [v13 addObserver:self selector:"receptionistSessionChangedNotification:" name:TUCallCenterReceptionistSessionChangedNotification object:0];
  [v13 addObserver:self selector:"videoCallStateChangedNotification:" name:TUCallCenterVideoCallStatusChangedNotification object:0];
  [v13 addObserver:self selector:"callUpgradedToVideoNotification:" name:TUCallUpgradedToVideoNotification object:0];
  [v13 addObserver:self selector:"callConnectedNotification:" name:TUCallCenterCallConnectedNotification object:0];
  [v13 addObserver:self selector:"callDisplayContextChanged:" name:TUCallDisplayContextChangedNotification object:0];
  [v13 addObserver:self selector:"callViewControllerStateChangedNotification:" name:@"PHCallViewControllerStateChangedNotification" object:0];
  v3 = +[PHPIPController defaultPIPController];
  [v13 addObserver:self selector:"pipStateChangedNotification:" name:@"PHPIPControllerStateDidChangeNotification" object:v3];

  v4 = +[PHPIPController defaultPIPController];
  [v13 addObserver:self selector:"pipStashChangedNotification:" name:@"PHPIPControllerStashChangeNotification" object:v4];

  v5 = +[PHPIPController defaultPIPController];
  [v13 addObserver:self selector:"pipProxyActiveChangedNotification:" name:@"PHPIPControllerPIPProxyActiveDidChangeNotification" object:v5];

  v6 = +[PHPIPController defaultPIPController];
  [v13 addObserver:self selector:"pipControllerDidRequestReturnToFullScreenNotification:" name:@"PHPIPControllerDidRequestReturnToFullScreenNotification" object:v6];

  v7 = +[PHPIPController defaultPIPController];
  [v13 addObserver:self selector:"handleSystemInitiatedPIPInterruptionStoppedNotification:" name:@"PHPIPControllerSystemInitiatedPIPInterruptionStoppedNotification" object:v7];

  v8 = +[PHPIPController defaultPIPController];
  [v13 addObserver:self selector:"handlePIPInterruptionChangeNotification:" name:@"PHPIPControllerInterruptionChangeNotification" object:v8];

  [v13 addObserver:self selector:"emergencyCallbackModeChangedNotification:" name:TUCallCapabilitiesEmergencyCallbackModeChangedNotification object:0];
  [v13 addObserver:self selector:"callContinuityChangedNotification:" name:TUCallCenterCallContinuityStateChangedNotification object:0];
  [v13 addObserver:self selector:"mostRecentlyDisconnectedAudioCallDidClearNotification:" name:@"ICSApplicationDelegateMostRecentlyDisconnectedAudioCallDidClearNotification" object:0];
  [v13 addObserver:self selector:"didChangeDeviceOrientationNotification:" name:@"PHInCallOrientationEventNotification" object:0];
  [v13 addObserver:self selector:"callDowngradedToAudioNotification:" name:TUCallDowngradedToAudioNotification object:0];
  [v13 addObserver:self selector:"handleDoubleHeightStatusBarTap" name:@"ICSStatusBarTappedNotification" object:0];
  [v13 addObserver:self selector:"statusBarTappedInFullScreen" name:@"ICSStatusBarTapInFullScreenNotification" object:0];
  [v13 addObserver:self selector:"handleActivationContextDidChangeNotification:" name:@"ICSActivationContextDidChangeNotification" object:0];
  [v13 addObserver:self selector:"wantsHoldMusicChangedNotification:" name:TUCallCenterCallWantsHoldMusicChangedNotification object:0];
  [v13 addObserver:self selector:"hardwareButtonEventNotification:" name:@"PHHardwareButtonEventNotification" object:0];
  [v13 addObserver:self selector:"willTransitionToFullScreenNotification:" name:@"ICSSceneManagerDidRequesFullScreenTransitionNotification" object:0];
  [v13 addObserver:self selector:"remoteParticipantHandlesChangedNotification:" name:TUCallRemoteParticipantHandlesChangedNotification object:0];
  [v13 addObserver:self selector:"handleCallBufferNotification:" name:@"PHCallBufferNotification" object:0];
  [(PHInCallRootViewController *)self startObservingAcceptCallButtonTappedWithNotificationCenter:v13];
  if ((+[PHUIConfiguration shouldUseFullScreenPeoplePicker]& 1) == 0)
  {
    [v13 addObserver:self selector:"willRotate:" name:UIWindowWillRotateNotification object:0];
  }

  [v13 addObserver:self selector:"pttCallStateChangedNotification:" name:TUBargeCallStatusChangedNotification object:0];
  callCenter = [(PHInCallRootViewController *)self callCenter];
  routeController = [callCenter routeController];
  [routeController addDelegate:self];

  callCenter2 = [(PHInCallRootViewController *)self callCenter];
  conversationManager = [callCenter2 conversationManager];
  [conversationManager addDelegate:self queue:&_dispatch_main_q];
}

- (void)_willAppearInRemoteViewController:(id)controller
{
  controllerCopy = controller;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_willAppearInRemoteViewController", buf, 2u);
  }

  _remoteViewControllerProxy = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setWallpaperTunnelActive:1];

  [controllerCopy setBackgroundStyle:4 withDuration:0.1];
  [controllerCopy setDismissalAnimationStyle:1];
  [controllerCopy setShouldDismissOnUILock:1];
  [controllerCopy setShouldDisableFadeInAnimation:0];

  [(PHInCallRootViewController *)self updateDesiredSpringboardBehavior];
  if ([(PHInCallRootViewController *)self dismissalWasDemandedBeforeRemoteViewControllerWasAvailable])
  {
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "InCallRootViewController tried to dismiss before the proxy was available. The proxy is now available, so we will dismiss immediately.", v8, 2u);
    }

    [(PHInCallRootViewController *)self requestInCallDismissal];
  }
}

- (void)dealloc
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "dealloc %@", buf, 0xCu);
  }

  v4 = +[CNKFeatures sharedInstance];
  isEnhancedEmergencyEnabled = [v4 isEnhancedEmergencyEnabled];

  if ((isEnhancedEmergencyEnabled & 1) == 0)
  {
    v6 = +[PHSOSDisconnectionConfirmation sharedInstance];
    [v6 removeDelegate:self];
  }

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self];

  [(PHInCallRootViewController *)self releaseIdleTimerAssertionWithComment:@"dealloc"];
  [(PHInCallRootViewController *)self setStatusBarHidden:0 withDuration:0.0];
  remoteHostViewController = [(PHInCallRootViewController *)self remoteHostViewController];
  remoteViewController = [remoteHostViewController remoteViewController];
  [remoteViewController setDelegate:0];

  [(PHInCallRootViewController *)self setRemoteHostViewController:0];
  [(PHInCallRootViewController *)self setContactsViewController:0];
  [(FBSDisplayLayoutMonitor *)self->_displayLayoutMonitor invalidate];
  displayLayoutMonitor = self->_displayLayoutMonitor;
  self->_displayLayoutMonitor = 0;

  v11.receiver = self;
  v11.super_class = PHInCallRootViewController;
  [(PHInCallRootViewController *)&v11 dealloc];
}

- (id)sosHandles
{
  v2 = PHPreferencesGetValue();
  v3 = PHPreferencesGetValue();
  v4 = PHPreferencesGetValue();
  if (([v3 BOOLValue] & 1) != 0 || (objc_msgSend(v2, "BOOLValue") & 1) != 0 || objc_msgSend(v4, "length"))
  {
    v5 = &_s16CommunicationsUI29CallTranslationLanguagePickerV05SwiftB04ViewAAMc_ptr;
    if ([v4 length])
    {
      callProviderManager2 = [TUHandle normalizedPhoneNumberHandleForValue:v4 isoCountryCode:0];
      if (callProviderManager2)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v31 = v4;
      v14 = +[ICSApplicationServices sharedInstance];
      callProviderManager = [v14 callProviderManager];

      emergencyProvider = [callProviderManager emergencyProvider];
      v17 = objc_alloc_init(TUSenderIdentityClient);
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      prioritizedSenderIdentities = [emergencyProvider prioritizedSenderIdentities];
      v19 = [prioritizedSenderIdentities countByEnumeratingWithState:&v33 objects:v43 count:16];
      if (v19)
      {
        v20 = v19;
        v28 = emergencyProvider;
        v29 = callProviderManager;
        v30 = v2;
        v21 = 0;
        v22 = *v34;
LABEL_15:
        v23 = 0;
        v24 = v21;
        while (1)
        {
          if (*v34 != v22)
          {
            objc_enumerationMutation(prioritizedSenderIdentities);
          }

          accountUUID = [*(*(&v33 + 1) + 8 * v23) accountUUID];
          v32 = v24;
          callProviderManager2 = [v17 testEmergencyHandleForAccountUUID:accountUUID error:&v32];
          v21 = v32;

          if (callProviderManager2)
          {
            break;
          }

          v23 = v23 + 1;
          v24 = v21;
          if (v20 == v23)
          {
            v20 = [prioritizedSenderIdentities countByEnumeratingWithState:&v33 objects:v43 count:16];
            if (v20)
            {
              goto LABEL_15;
            }

            callProviderManager2 = 0;
            break;
          }
        }

        v2 = v30;
        v4 = v31;
        v5 = &_s16CommunicationsUI29CallTranslationLanguagePickerV05SwiftB04ViewAAMc_ptr;
        emergencyProvider = v28;
        callProviderManager = v29;
      }

      else
      {
        callProviderManager2 = 0;
      }

      if (callProviderManager2)
      {
        goto LABEL_7;
      }
    }

    callProviderManager2 = [v5[407] normalizedPhoneNumberHandleForValue:@"822" isoCountryCode:0];
LABEL_7:
    bOOLValue = [v3 BOOLValue];
    v8 = [[TULabeledHandle alloc] initWithHandle:callProviderManager2 label:@"EMERGENCY_DISAMBIGUATION_AMBULANCE" isSuggested:0];
    emergencyProvider2 = v8;
    if (bOOLValue)
    {
      v42[0] = v8;
      v10 = [[TULabeledHandle alloc] initWithHandle:callProviderManager2 label:@"EMERGENCY_DISAMBIGUATION_FIRE" isSuggested:0];
      v42[1] = v10;
      v11 = [[TULabeledHandle alloc] initWithHandle:callProviderManager2 label:@"EMERGENCY_DISAMBIGUATION_POLICE" isSuggested:0];
      v42[2] = v11;
      emergencyLabeledHandles = [NSArray arrayWithObjects:v42 count:3];
    }

    else
    {
      v41 = v8;
      emergencyLabeledHandles = [NSArray arrayWithObjects:&v41 count:1];
    }

    goto LABEL_10;
  }

  v26 = +[ICSApplicationServices sharedInstance];
  callProviderManager2 = [v26 callProviderManager];

  emergencyProvider2 = [callProviderManager2 emergencyProvider];
  emergencyLabeledHandles = [emergencyProvider2 emergencyLabeledHandles];
  v27 = sub_100004F84();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v38 = emergencyProvider2;
    v39 = 2112;
    v40 = emergencyLabeledHandles;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "SOS Numbers: Emergency call provider is %@ with numbers %@", buf, 0x16u);
  }

LABEL_10:

  return emergencyLabeledHandles;
}

- (void)_reloadSOSHandles
{
  sosViewController = self->_sosViewController;
  sosHandles = [(PHInCallRootViewController *)self sosHandles];
  [(PHSOSViewController *)sosViewController updateSOSHandles:sosHandles];
}

- (void)_loadSOSViewController
{
  if (!self->_sosViewController)
  {
    v3 = [PHSOSViewController alloc];
    sosHandles = [(PHInCallRootViewController *)self sosHandles];
    v4 = [(PHSOSViewController *)v3 initWithSOSHandles:sosHandles];
    sosViewController = self->_sosViewController;
    self->_sosViewController = v4;
  }
}

- (PHSOSViewController)sosViewController
{
  [(PHInCallRootViewController *)self _loadSOSViewController];
  sosViewController = self->_sosViewController;

  return sosViewController;
}

- (UINavigationController)videoCallNavigationController
{
  videoCallNavigationController = self->_videoCallNavigationController;
  if (!videoCallNavigationController)
  {
    v4 = objc_alloc_init(UINavigationController);
    v5 = self->_videoCallNavigationController;
    self->_videoCallNavigationController = v4;

    view = [(PHInCallRootViewController *)self view];
    [view bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    view2 = [(UINavigationController *)self->_videoCallNavigationController view];
    [view2 setFrame:{v8, v10, v12, v14}];

    view3 = [(UINavigationController *)self->_videoCallNavigationController view];
    [view3 setAutoresizingMask:18];

    [(UINavigationController *)self->_videoCallNavigationController setNavigationBarHidden:1];
    [(UINavigationController *)self->_videoCallNavigationController setDelegate:self];
    videoCallNavigationController = self->_videoCallNavigationController;
  }

  return videoCallNavigationController;
}

- (void)presentCreateContactViewControllerWithHandle:(id)handle forViewController:(id)controller
{
  if (handle)
  {
    if (controller)
    {
      controllerCopy = controller;
      value = [handle value];
      v12 = value;
      v8 = [NSArray arrayWithObjects:&v12 count:1];
      v9 = [CNContact contactWithDisplayName:0 handleStrings:v8];

      v10 = [CNContactViewController viewControllerForNewContact:v9];
      [v10 setDelegate:self];
      [v10 setAllowsEditing:1];
      [v10 setAllowsActions:1];
      v11 = [[UINavigationController alloc] initWithRootViewController:v10];
      [controllerCopy presentViewController:v11 animated:1 completion:0];
    }
  }
}

- (void)presentViewControllerFullScreen:(id)screen
{
  screenCopy = screen;
  currentViewController = [(PHInCallRootViewController *)self currentViewController];
  [(PHInCallRootViewController *)self _transitionFromViewController:currentViewController toViewController:screenCopy];
}

- (void)_loadPTTFullScreenContainerViewController
{
  if (!self->_pttFullScreenContainerViewController)
  {
    v3 = [PHPTTFullScreenContainerViewController alloc];
    v8 = +[UIApplication sharedApplication];
    delegate = [v8 delegate];
    bannerPresentationManager = [delegate bannerPresentationManager];
    v6 = [(PHPTTFullScreenContainerViewController *)v3 initWithBannerPresentationManager:bannerPresentationManager];
    pttFullScreenContainerViewController = self->_pttFullScreenContainerViewController;
    self->_pttFullScreenContainerViewController = v6;
  }
}

- (void)pttCallStateChangedNotification:(id)notification
{
  notificationCopy = notification;
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "pttCallStateChangedNotification", buf, 2u);
  }

  object = [notificationCopy object];

  if ([object isPTT] && objc_msgSend(object, "status") - 5 <= 1)
  {
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Releasing PTT call details dismissal assertion.", v9, 2u);
    }

    v7 = +[UIApplication sharedApplication];
    delegate = [v7 delegate];
    [delegate setDidDeepLinkToPTTCallDetailsView:0];

    [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHPTTCallDetailsViewAssertionReason"];
  }
}

- (void)_loadMultiwayViewControllerForCall:(id)call
{
  callCopy = call;
  call = [(CNKMultiwayViewControllerProtocol *)self->_multiwayViewController call];
  v6 = [call isEqual:callCopy];

  if ((v6 & 1) == 0)
  {
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412546;
      selfCopy2 = self;
      v25 = 2112;
      v26 = callCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Creating a CNKFaceTimeMultiwayConversationViewController instance for call: %@", &v23, 0x16u);
    }

    v8 = +[UIApplication sharedApplication];
    delegate = [v8 delegate];
    bannerPresentationManager = [delegate bannerPresentationManager];
    v11 = [(PHInCallRootViewController *)self makeMultiwayConversationViewControllerWithCall:callCopy bannerPresentationManager:bannerPresentationManager];
    multiwayViewController = self->_multiwayViewController;
    self->_multiwayViewController = v11;

    v13 = sub_100004F84();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_multiwayViewController;
      v23 = 138412546;
      selfCopy2 = self;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ Created a CNKFaceTimeMultiwayConversationViewController instance %@", &v23, 0x16u);
    }

    [(CNKMultiwayViewControllerProtocol *)self->_multiwayViewController setDelegate:self];
    [(CNKMultiwayViewControllerProtocol *)self->_multiwayViewController setIOSDelegate:self];
    if (+[PHUIConfiguration canAutoRotateInCallUIForFaceTime])
    {
      v15 = self->_multiwayViewController;
      v16 = 2;
    }

    else
    {
      callDisplayStyleManager = [(PHInCallRootViewController *)self callDisplayStyleManager];
      callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

      v15 = self->_multiwayViewController;
      v16 = callDisplayStyle == 3;
    }

    [(CNKMultiwayViewControllerProtocol *)v15 setSupportedDeviceOrientations:v16];
    callDisplayStyleManager2 = [(PHInCallRootViewController *)self callDisplayStyleManager];
    -[CNKMultiwayViewControllerProtocol setIsDisplayedInBanner:](self->_multiwayViewController, "setIsDisplayedInBanner:", [callDisplayStyleManager2 callDisplayStyle] == 0);

    callDisplayStyleManager3 = [(PHInCallRootViewController *)self callDisplayStyleManager];
    -[CNKMultiwayViewControllerProtocol setIsAmbient:](self->_multiwayViewController, "setIsAmbient:", [callDisplayStyleManager3 callDisplayStyle] == 3);

    v21 = +[PHPIPController defaultPIPController];
    -[CNKMultiwayViewControllerProtocol setPipState:](self->_multiwayViewController, "setPipState:", [v21 pipState]);

    v22 = +[PHInCallOrientationMonitor sharedInstance];
    -[PHInCallRootViewController updateMultiwayDeviceOrientation:](self, "updateMultiwayDeviceOrientation:", [v22 lastValidOrientation]);

    [(PHInCallRootViewController *)self _startMonitoringDisplayLayout];
  }
}

- (void)handleFrontBoardInterfaceOrientationChange:(int64_t)change
{
  multiwayViewController = [(PHInCallRootViewController *)self multiwayViewController];
  frontBoardInterfaceOrientation = [multiwayViewController frontBoardInterfaceOrientation];

  if (change)
  {
    if (frontBoardInterfaceOrientation != change)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000EFABC;
      block[3] = &unk_1003574B0;
      block[4] = self;
      block[5] = change;
      block[6] = change;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)rotatePIPForInterfaceOrientation:(int64_t)orientation
{
  v5 = +[PHPIPController defaultPIPController];
  pipState = [v5 pipState];

  if (pipState == 2)
  {
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      orientationCopy = orientation;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Rotating PIP due to interface orientation change %ld", buf, 0xCu);
    }

    v8 = [PHInCallUIUtilities deviceOrientationForBSInterfaceOrientation:orientation];
    v9 = +[PHPIPController defaultPIPController];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000EFCD4;
    v10[3] = &unk_100356988;
    v10[4] = self;
    [v9 rotatePIPDeviceOrientationTo:v8 withCompletion:v10];
  }
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v10 = sub_100004F84();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = v11;
    [(PHInCallRootViewController *)self shouldShowNavigationBarForViewController:viewControllerCopy];
    v13 = NSStringFromBOOL();
    v14 = 138412546;
    v15 = v11;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "TTYC: , viewController: %@ setHidden: %@", &v14, 0x16u);
  }

  [controllerCopy setNavigationBarHidden:-[PHInCallRootViewController shouldShowNavigationBarForViewController:](self animated:{"shouldShowNavigationBarForViewController:", viewControllerCopy) ^ 1, animatedCopy}];
}

- (BOOL)shouldShowNavigationBarForViewController:(id)controller
{
  controllerCopy = controller;
  v4 = qword_1003B0EE8;
  if (!qword_1003B0EE8)
  {
    v5 = objc_alloc_init(NSMutableSet);
    v6 = qword_1003B0EE8;
    qword_1003B0EE8 = v5;

    v7 = sub_10014265C();
    if (v7)
    {
      [qword_1003B0EE8 addObject:v7];
    }

    [qword_1003B0EE8 addObject:objc_opt_class()];
    v4 = qword_1003B0EE8;
  }

  v8 = [v4 containsObject:objc_opt_class()];

  return v8;
}

- (void)screeningStateChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "screeningStateChangedNotification", v8, 2u);
  }

  object = [notificationCopy object];

  callManager = [(PHInCallRootViewController *)self callManager];
  [callManager updateWithCall:object];

  [(PHInCallRootViewController *)self updateDesiredSpringboardBehavior];
}

- (void)receptionistStateChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "receptionistStateChangedNotification", v8, 2u);
  }

  object = [notificationCopy object];

  callManager = [(PHInCallRootViewController *)self callManager];
  [callManager updateWithCall:object];

  [(PHInCallRootViewController *)self updateDesiredSpringboardBehavior];
}

- (void)receptionistSessionChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "receptionistSessionChangedNotification", v8, 2u);
  }

  object = [notificationCopy object];

  callManager = [(PHInCallRootViewController *)self callManager];
  [callManager updateWithCall:object];
}

- (void)callStateChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "callStateChangedNotification", v7, 2u);
  }

  object = [notificationCopy object];

  [(PHInCallRootViewController *)self updateAlertActivationReasonForCall:object];
  [(PHInCallRootViewController *)self updateRemoteAlertSwipeDismissalStyleForCall:object];
  [(PHInCallRootViewController *)self prepareToDismissScreenTime];
  [(PHInCallRootViewController *)self updateCallControllerForCurrentState];
  [(PHInCallRootViewController *)self dismissScreenTimeAlertHostIfNeeded];
  [(PHInCallRootViewController *)self dismissPhoneRemoteViewController];
  [(PHInCallRootViewController *)self dismissContactsViewController];
  [(PHInCallRootViewController *)self updateTransportIndicatorView];
  [(PHInCallRootViewController *)self undimScreenIfNecessary:object];
  [(PHInCallRootViewController *)self updateDesiredSpringboardBehavior];
}

- (void)callDisplayContextChanged:(id)changed
{
  changedCopy = changed;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "callDisplayContextChanged", v8, 2u);
  }

  object = [changedCopy object];

  callManager = [(PHInCallRootViewController *)self callManager];
  [callManager updateWithCall:object];
}

- (void)videoCallStateChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "videoCallStateChangedNotification", v7, 2u);
  }

  object = [notificationCopy object];

  [(PHInCallRootViewController *)self updateCallForUserFeedback];
  [(PHInCallRootViewController *)self updateAlertActivationReasonForCall:object];
  [(PHInCallRootViewController *)self showFailureOrFallbackAlertIfNecessaryForCall:object];
  [(PHInCallRootViewController *)self prepareToDismissScreenTime];
  [(PHInCallRootViewController *)self updateCallControllerForCurrentState];
  [(PHInCallRootViewController *)self dismissScreenTimeAlertHostIfNeeded];
  [(PHInCallRootViewController *)self dismissPhoneRemoteViewController];
  [(PHInCallRootViewController *)self dismissContactsViewController];
  [(PHInCallRootViewController *)self updateTransportIndicatorView];
  [(PHInCallRootViewController *)self updateUPlusOneVideoCallViews];
  [(PHInCallRootViewController *)self undimScreenIfNecessary:object];
}

- (void)callConnectedNotification:(id)notification
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "callConnectedNotification", v5, 2u);
  }

  [(PHInCallRootViewController *)self updateUPlusOneVideoCallViews];
  [(PHInCallRootViewController *)self transitionFromBannerToDismissedIfNecessary];
  [(PHInCallRootViewController *)self updateBackgroundStartPipAuthorizationState];
}

- (void)willTransitionToFullScreenNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "willTransitionToFullScreenNotification", v11, 2u);
  }

  v6 = +[UIApplication sharedApplication];
  delegate = [v6 delegate];
  isPresentingFullScreenCallUI = [delegate isPresentingFullScreenCallUI];

  if ((isPresentingFullScreenCallUI & 1) == 0)
  {
    object = [notificationCopy object];
    v10 = [object isEqual:&off_10036A358];

    if (v10)
    {
      [(PHInCallRootViewController *)self updateCallControllerForCurrentState];
    }
  }
}

- (void)remoteParticipantHandlesChangedNotification:(id)notification
{
  object = [notification object];
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uniqueProxyIdentifier = [object uniqueProxyIdentifier];
    v7 = 138412290;
    v8 = uniqueProxyIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "remoteParticipantHandlesChangedNotification for call: %@", &v7, 0xCu);
  }

  if ([object isConversation])
  {
    [(PHInCallRootViewController *)self updateCallControllerForCurrentState];
  }
}

- (void)undimScreenIfNecessary:(id)necessary
{
  if ([necessary status] == 4)
  {
    traitCollection = [(PHInCallRootViewController *)self traitCollection];
    if ([traitCollection _backlightLuminance] == 1)
    {
      v4 = +[UIApplication sharedApplication];
      delegate = [v4 delegate];
      currentInCallScene = [delegate currentInCallScene];
      presentationMode = [currentInCallScene presentationMode];

      if (presentationMode == 2)
      {
        v8 = sub_100004F84();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Undim screen", buf, 2u);
        }

        SBSUndimScreen();
      }
    }

    else
    {
    }
  }
}

- (BOOL)transitionFromBannerToDismissedIfNecessary
{
  featureFlags = [(PHInCallRootViewController *)self featureFlags];
  expanseEnabled = [featureFlags expanseEnabled];

  if (expanseEnabled)
  {
    callCenter = [(PHInCallRootViewController *)self callCenter];
    frontmostAudioOrVideoCall = [callCenter frontmostAudioOrVideoCall];

    callCenter2 = [(PHInCallRootViewController *)self callCenter];
    v8 = [callCenter2 activeConversationForCall:frontmostAudioOrVideoCall];

    featureFlags2 = [(PHInCallRootViewController *)self featureFlags];
    if ([featureFlags2 sharePlayInCallsEnabled])
    {
      provider = [frontmostAudioOrVideoCall provider];
      if ([provider isTelephonyProvider])
      {
        LODWORD(callCenter3) = [frontmostAudioOrVideoCall isSharePlayCapable];
      }

      else
      {
        LODWORD(callCenter3) = 0;
      }
    }

    else
    {
      LODWORD(callCenter3) = 0;
    }

    provider2 = [frontmostAudioOrVideoCall provider];
    isFaceTimeProvider = [provider2 isFaceTimeProvider];

    if ((isFaceTimeProvider & 1) == 0 && !callCenter3)
    {
      goto LABEL_23;
    }

    inCallWindowScene = [(PHInCallRootViewController *)self inCallWindowScene];

    v15 = +[UIApplication sharedApplication];
    delegate = [v15 delegate];
    currentInCallScene = [delegate currentInCallScene];
    presentationMode = [currentInCallScene presentationMode];

    provider3 = [frontmostAudioOrVideoCall provider];
    LODWORD(delegate) = [provider3 isFaceTimeProvider];

    if (delegate)
    {
      if ([v8 resolvedAudioVideoMode] != 1)
      {
        goto LABEL_17;
      }
    }

    else if (!callCenter3)
    {
      goto LABEL_17;
    }

    if ([frontmostAudioOrVideoCall status] == 1)
    {
      wantsHoldMusic = [frontmostAudioOrVideoCall wantsHoldMusic];
LABEL_18:
      callCenter3 = [(PHInCallRootViewController *)self callCenter];
      currentAudioAndVideoCallCount = [callCenter3 currentAudioAndVideoCallCount];

      LOBYTE(callCenter3) = 0;
      if (currentAudioAndVideoCallCount == 1 && (wantsHoldMusic & 1) == 0 && inCallWindowScene && presentationMode == 1)
      {
        v23 = frontmostAudioOrVideoCall;
        TUDispatchMainIfNecessary();

        LOBYTE(callCenter3) = 1;
      }

LABEL_23:

      return callCenter3;
    }

LABEL_17:
    wantsHoldMusic = 1;
    goto LABEL_18;
  }

  LOBYTE(callCenter3) = 0;
  return callCenter3;
}

- (void)callUpgradedToVideoNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "callUpgradedToVideoNotification", v6, 2u);
  }

  [(PHInCallRootViewController *)self videoCallStateChangedNotification:notificationCopy];
}

- (void)updateCallForUserFeedback
{
  featureFlags = [(PHInCallRootViewController *)self featureFlags];
  fTUserScore = [featureFlags FTUserScore];

  if (fTUserScore)
  {
    callCenter = [(PHInCallRootViewController *)self callCenter];
    currentVideoCall = [callCenter currentVideoCall];

    if ([currentVideoCall isConnected] && (objc_msgSend(currentVideoCall, "status") == 5 || objc_msgSend(currentVideoCall, "status") == 6))
    {
      v7 = +[ICSPreferences sharedPreferences];
      hasUserScoreFeedbackViewHidden = [v7 hasUserScoreFeedbackViewHidden];

      v9 = sub_100004F84();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (hasUserScoreFeedbackViewHidden)
      {
        if (v10)
        {
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "UserFeedbackScore : No Assertion Added, send to TU immediately", v14, 2u);
        }

        callCenter2 = [(PHInCallRootViewController *)self callCenter];
        disconnectCallUUID = [(PHInCallRootViewController *)self disconnectCallUUID];
        [callCenter2 sendUserScoreToRTCReporting:disconnectCallUUID withScore:0];
      }

      else
      {
        if (v10)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "UserFeedbackScore : adding Assertion to show feedback view", buf, 2u);
        }

        callUUID = [currentVideoCall callUUID];
        [(PHInCallRootViewController *)self setDisconnectCallUUID:callUUID];

        [objc_opt_class() obtainDismissalAssertionForReason:@"PHUserScoreShowingAssertionReason"];
      }
    }
  }
}

- (void)didEnterVideoMessagingFlow
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Entering video messaging flow", v3, 2u);
  }

  [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHVideoMessageInProgressAssertionReason"];
}

- (void)didExitVideoMessagingFlow
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Exiting video messaging flow", v3, 2u);
  }

  [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHVideoMessageInProgressAssertionReason"];
}

- (void)_loadUserFeedbackViewController
{
  if (!self->_userFeedbackViewController)
  {
    v5 = objc_alloc_init(ScoreController);
    [(ScoreController *)v5 setDelegate:self];
    v3 = [[PHUserFeedbackViewController alloc] initWithScoreController:v5];
    userFeedbackViewController = self->_userFeedbackViewController;
    self->_userFeedbackViewController = v3;
  }
}

- (void)callDowngradedToAudioNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "callDowngradedToAudioNotification: %@", buf, 0xCu);
  }

  [(PHInCallRootViewController *)self updateCallControllerForCurrentState];
  object = [notificationCopy object];
  if (([object isEndpointOnCurrentDevice] & 1) == 0)
  {
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Call's endpoint is on another device, releasing dismissal assertions", buf, 2u);
    }

    v8 = +[PHAudioCallViewController dismissalAssertionReason];
    v9 = [NSSet setWithObjects:v8, @"PHTransitioningBetweenViewControllersAssertionReason", 0];

    [objc_opt_class() releaseDismissalAssertionReasons:v9];
  }
}

- (void)callContinuityChangedNotification:(id)notification
{
  object = [notification object];
  if ([object isConversation] && (objc_msgSend(object, "isEndpointOnCurrentDevice") & 1) == 0)
  {
    v4 = sub_100004F84();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Multiway call's endpoint is on another device, releasing dismissal assertions", buf, 2u);
    }

    v5 = [NSSet setWithObjects:@"PHMulitwayCallAssertionReason", @"PHTransitioningBetweenViewControllersAssertionReason", 0];
    [objc_opt_class() releaseDismissalAssertionReasons:v5];
  }
}

- (void)pipStateChangedNotification:(id)notification
{
  notificationCopy = notification;
  v6 = +[PHPIPController defaultPIPController];
  pipState = [v6 pipState];

  multiwayViewController2 = sub_100004F84();
  if (os_log_type_enabled(multiwayViewController2, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 134217984;
    v21 = pipState;
    _os_log_impl(&_mh_execute_header, multiwayViewController2, OS_LOG_TYPE_DEFAULT, "pipStateChangedNotification; new state=%lu", &v20, 0xCu);
  }

  if ((pipState - 1) <= 1 && (parentViewController = [(PHInCallRootViewController *)self shouldStartMultiwayPIP], parentViewController))
  {
    multiwayViewController = [(PHInCallRootViewController *)self multiwayViewController];

    if (multiwayViewController)
    {
      [(PHInCallRootViewController *)self transitionIntoPiP];
    }

    else
    {
      v17 = sub_100004F84();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "MultiwayViewController isn't ready for initial PiP yet; will transition into PiP on next notification", &v20, 2u);
      }
    }
  }

  else
  {
    if (pipState == 3 || pipState == 0)
    {
      multiwayViewController2 = [(PHInCallRootViewController *)self multiwayViewController];
      pipViewController = [multiwayViewController2 pipViewController];
      parentViewController = [pipViewController parentViewController];
      if (parentViewController)
      {
        v12 = 1;
      }

      else
      {
        oldMultiwayPIPViewController = [(PHInCallRootViewController *)self oldMultiwayPIPViewController];
        v12 = oldMultiwayPIPViewController != 0;

        parentViewController = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    if (pipState == 3 || !pipState)
    {
    }

    if (v12)
    {
      multiwayViewController3 = [(PHInCallRootViewController *)self multiwayViewController];
      [multiwayViewController3 setPipState:pipState];

      if (pipState)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (pipState)
      {
        goto LABEL_28;
      }

      multiwayViewController4 = [(PHInCallRootViewController *)self multiwayViewController];

      if (multiwayViewController4)
      {
        v16 = +[PHPIPController defaultPIPController];
        [v16 updatePIPFrame];
      }
    }

    [(PHInCallRootViewController *)self updateCallControllerForCurrentState];
  }

LABEL_28:
  [(PHInCallRootViewController *)self updateMultiwayViewControllerUIState];
  [(PHInCallRootViewController *)self updateCallDetailsViewIsOnScreen];
  object = [notificationCopy object];

  v19 = +[PHPIPController defaultPIPController];

  if (object == v19)
  {
    [(PHInCallRootViewController *)self updateBackgroundStartPipAuthorizationState];
  }
}

- (void)pipStashChangedNotification:(id)notification
{
  v4 = +[PHPIPController defaultPIPController];
  isPIPProxyActiveAndHidden = [v4 isPIPProxyActiveAndHidden];

  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = isPIPProxyActiveAndHidden;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "pipStashChangedNotification; isStashed=%u", v8, 8u);
  }

  multiwayViewController = [(PHInCallRootViewController *)self multiwayViewController];
  [multiwayViewController setIsPipStashed:isPIPProxyActiveAndHidden];
}

- (void)transitionIntoPiP
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Transitioning into PiP now", v8, 2u);
  }

  [(PHInCallRootViewController *)self updateMultiwayViewControllerUIState];
  v4 = objc_opt_class();
  multiwayViewController = [(PHInCallRootViewController *)self multiwayViewController];
  v6 = [v4 uiDeviceOrientationForCNKDeviceOrientation:{objc_msgSend(multiwayViewController, "fullScreenFocusedParticipantOrientation")}];
  v7 = +[PHPIPController defaultPIPController];
  [v7 setPipDeviceOrientation:v6];
}

- (void)pipProxyActiveChangedNotification:(id)notification
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "pipProxyActiveChangedNotification", v5, 2u);
  }

  [(PHInCallRootViewController *)self updateMultiwayViewControllerUIState];
}

- (void)handlePIPViewControllerRestoredAfterPIPStopped:(id)stopped
{
  stoppedCopy = stopped;
  view = [(PHInCallRootViewController *)self view];
  [view bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  view2 = [stoppedCopy view];
  [view2 setBounds:{v7, v9, v11, v13}];

  view3 = [(PHInCallRootViewController *)self view];
  [view3 center];
  v17 = v16;
  v19 = v18;
  view4 = [stoppedCopy view];

  [view4 setCenter:{v17, v19}];
  multiwayViewController = [(PHInCallRootViewController *)self multiwayViewController];
  pipViewController = [multiwayViewController pipViewController];
  parentViewController = [pipViewController parentViewController];
  if (parentViewController)
  {
    multiwayViewController2 = [(PHInCallRootViewController *)self multiwayViewController];
    pipViewController2 = [multiwayViewController2 pipViewController];
  }

  else
  {
    pipViewController2 = [(PHInCallRootViewController *)self oldMultiwayPIPViewController];
  }

  v26 = sub_100004F84();
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
  if (pipViewController2)
  {
    if (v27)
    {
      v28 = 138412290;
      v29 = pipViewController2;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Cross-fading away from PIP view controller %@", &v28, 0xCu);
    }

    [(PHInCallRootViewController *)self setOldMultiwayPIPViewController:0];
  }

  else
  {
    if (v27)
    {
      LOWORD(v28) = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Not performing cross-fade for PIP stop because there's no multiway PIP view controller", &v28, 2u);
    }
  }
}

- (BOOL)shouldStartMultiwayPIP
{
  view = [(CNKMultiwayViewControllerProtocol *)self->_multiwayViewController view];
  superview = [view superview];
  if (!superview)
  {

    goto LABEL_5;
  }

  v5 = superview;
  v6 = [(CNKMultiwayViewControllerProtocol *)self->_multiwayViewController isChildOf:self];

  if ((v6 & 1) == 0)
  {
LABEL_5:
    callDisplayStyleManager = [(PHInCallRootViewController *)self callDisplayStyleManager];
    v7 = [callDisplayStyleManager callDisplayStyle] == 4;

    return v7;
  }

  return 1;
}

- (void)handlePIPInterruptionChangeNotification:(id)notification
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "handlePIPInterruptionChangeNotification", buf, 2u);
  }

  if ([(PHInCallRootViewController *)self isDisplayStyleMiniWindow])
  {
    v5 = +[PHPIPController defaultPIPController];
    isPIPProxyInterrupted = [v5 isPIPProxyInterrupted];

    if (isPIPProxyInterrupted)
    {
      v7 = sub_100004F84();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PIP is interrupted and display style is mini window, attempting to show mini window view.", v8, 2u);
      }

      [(PHInCallRootViewController *)self showHideMiniWindowViewIfNeededAnimated:0];
    }
  }

  [(PHInCallRootViewController *)self updateMultiwayViewControllerUIState];
}

- (void)handleSystemInitiatedPIPInterruptionStoppedNotification:(id)notification
{
  callDisplayStyleManager = [(PHInCallRootViewController *)self callDisplayStyleManager];
  sceneSessionIdentifier = [callDisplayStyleManager sceneSessionIdentifier];
  v6 = +[UIApplication sharedApplication];
  delegate = [v6 delegate];
  currentInCallScene = [delegate currentInCallScene];
  session = [currentInCallScene session];
  persistentIdentifier = [session persistentIdentifier];
  v11 = [sceneSessionIdentifier isEqualToString:persistentIdentifier];

  if (v11)
  {
    v12 = +[PHPIPController defaultPIPController];
    pipInterruptedCallIdentifier = [v12 pipInterruptedCallIdentifier];

    callCenter = [(PHInCallRootViewController *)self callCenter];
    v15 = [callCenter callWithUniqueProxyIdentifier:pipInterruptedCallIdentifier];

    v16 = sub_100004F84();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = pipInterruptedCallIdentifier;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "handleSystemInitiatedPIPInterruptionStoppedNotification for call identifier: %@", &v23, 0xCu);
    }

    if ([pipInterruptedCallIdentifier length]&& v15)
    {
      v17 = sub_100004F84();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412290;
        v24 = pipInterruptedCallIdentifier;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Call %@ which was originally pip interrupted has been uninterrupted. Stop that calls video since the interruption-stop was not user-initiated", &v23, 0xCu);
      }

      if ([v15 isConversation])
      {
        [v15 setRemoteVideoPresentationState:0];
      }

      else
      {
        callCenter2 = [(PHInCallRootViewController *)self callCenter];
        frontmostAudioOrVideoCall = [callCenter2 frontmostAudioOrVideoCall];
        isVideo = [frontmostAudioOrVideoCall isVideo];

        if ((isVideo & 1) == 0)
        {
          callCenter3 = [(PHInCallRootViewController *)self callCenter];
          videoDeviceController = [callCenter3 videoDeviceController];
          [videoDeviceController stopPreview];
        }
      }

      [v15 setIsSendingVideo:0];
    }
  }

  else
  {
    pipInterruptedCallIdentifier = sub_100004F84();
    if (os_log_type_enabled(pipInterruptedCallIdentifier, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, pipInterruptedCallIdentifier, OS_LOG_TYPE_DEFAULT, "[WARN] Not handling PHPIPControllerSystemInitiatedPIPInterruptionStoppedNotification since scene does not match the scene currently used by InCallService.", &v23, 2u);
    }
  }
}

- (void)pipControllerDidRequestReturnToFullScreenNotification:(id)notification
{
  v4 = +[ICSPreferences sharedPreferences];
  hasAdoptedModernInCallAPI = [v4 hasAdoptedModernInCallAPI];

  if ((hasAdoptedModernInCallAPI & 1) == 0)
  {

    [(PHInCallRootViewController *)self animateToAlert];
  }
}

- (BOOL)shouldShowVideoCallBlockAndReportScreen
{
  callCenter = [(PHInCallRootViewController *)self callCenter];
  currentVideoCall = [callCenter currentVideoCall];

  if (currentVideoCall)
  {
    callCenter2 = [(PHInCallRootViewController *)self callCenter];
    currentVideoCall2 = [callCenter2 currentVideoCall];
LABEL_7:

    v12 = [(PHInCallRootViewController *)self shouldShowCallEndedBlockAndReportScreen:currentVideoCall2];
    goto LABEL_8;
  }

  v7 = +[UIApplication sharedApplication];
  delegate = [v7 delegate];
  mostRecentlyDisconnectedVideoCall = [delegate mostRecentlyDisconnectedVideoCall];

  currentVideoCall2 = sub_100004F84();
  v10 = os_log_type_enabled(currentVideoCall2, OS_LOG_TYPE_DEFAULT);
  if (mostRecentlyDisconnectedVideoCall)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, currentVideoCall2, OS_LOG_TYPE_DEFAULT, "[self.callCenter currentVideoCall] is nil, using mostRecentlyDisconnectedVideoCall", buf, 2u);
    }

    callCenter2 = +[UIApplication sharedApplication];
    delegate2 = [callCenter2 delegate];
    currentVideoCall2 = [delegate2 mostRecentlyDisconnectedVideoCall];

    goto LABEL_7;
  }

  if (v10)
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, currentVideoCall2, OS_LOG_TYPE_DEFAULT, "ICSAppDelegate.mostRecentlyDisconnectedVideoCall is nil so shouldShowVideoCallBlockAndReportScreen is false", v14, 2u);
  }

  v12 = 0;
LABEL_8:

  return v12;
}

- (BOOL)shouldShowCallEndedBlockAndReportScreen:(id)screen
{
  screenCopy = screen;
  contactIdentifier = [screenCopy contactIdentifier];

  remoteParticipantHandles = [screenCopy remoteParticipantHandles];
  v7 = [remoteParticipantHandles count];

  if (v7 != 1)
  {
    v8 = sub_100004F84();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      remoteParticipantHandles2 = [screenCopy remoteParticipantHandles];
      v32 = 134217984;
      v33[0] = [remoteParticipantHandles2 count];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "it's not a 1-1 facetime call, %lu", &v32, 0xCu);
    }

    goto LABEL_17;
  }

  if (contactIdentifier)
  {
    v8 = sub_100004F84();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v32) = 0;
      v9 = "it's a contact so we don't show the end call screen";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, &v32, 2u);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  provider = [screenCopy provider];
  isFaceTimeProvider = [provider isFaceTimeProvider];

  if ((isFaceTimeProvider & 1) == 0)
  {
    v8 = sub_100004F84();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v32) = 0;
      v9 = "it's not a FaceTime call so we don't show the end call screen";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  dateConnected = [screenCopy dateConnected];

  if (!dateConnected)
  {
    v8 = sub_100004F84();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v32) = 0;
      v9 = "call was never connnected so we don't show the end call screen";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if ([(PHInCallRootViewController *)self isContactBlockedWithCall:screenCopy])
  {
    v8 = sub_100004F84();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v32) = 0;
      v9 = "the caller is already blocked, so we don't show the end call screen";
      goto LABEL_16;
    }

LABEL_17:
    v14 = 0;
    goto LABEL_18;
  }

  handle = [screenCopy handle];
  value = [handle value];
  handle2 = [screenCopy handle];
  normalizedValue = [handle2 normalizedValue];
  v20 = [(PHInCallRootViewController *)self isFirstTimeInCallHistoryWithHandleValue:value normalizedHandleValue:normalizedValue];

  handle3 = [screenCopy handle];
  value2 = [handle3 value];
  handle4 = [screenCopy handle];
  normalizedValue2 = [handle4 normalizedValue];
  uniqueProxyIdentifier = [screenCopy uniqueProxyIdentifier];
  v8 = [(PHInCallRootViewController *)self findMostRecentSilencedCallWithHandleValue:value2 normalizedHandleValue:normalizedValue2 ignoredIdentifier:uniqueProxyIdentifier];

  if (v20)
  {
    isIncoming = [screenCopy isIncoming];
  }

  else
  {
    isIncoming = 0;
  }

  v27 = sub_100004F84();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 67109376;
    LODWORD(v33[0]) = v20;
    WORD2(v33[0]) = 1024;
    *(v33 + 6) = [screenCopy isIncoming];
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "(isFirstTimeInCallHistory :%d && call.isIncoming: %d)", &v32, 0xEu);
  }

  if (v8)
  {
    isOutgoing = [screenCopy isOutgoing];
  }

  else
  {
    isOutgoing = 0;
  }

  v29 = sub_100004F84();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    isOutgoing2 = [screenCopy isOutgoing];
    v32 = 67109376;
    LODWORD(v33[0]) = v8 != 0;
    WORD2(v33[0]) = 1024;
    *(v33 + 6) = isOutgoing2;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "(filteredMostRecent != nil :%d && disconnectedCall.isOutgoing: %d", &v32, 0xEu);
  }

  v31 = sub_100004F84();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 67109376;
    LODWORD(v33[0]) = isIncoming;
    WORD2(v33[0]) = 1024;
    *(v33 + 6) = isOutgoing;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "shouldShowCallEndedBlockAndReportScreen: \n (isUnknownFirstTimeCallerConnectedIncomingCall: %d || isFilteredConnectedOutgoingCall): %d \n", &v32, 0xEu);
  }

  v14 = isIncoming | isOutgoing;
LABEL_18:

  return v14 & 1;
}

- (void)showHideMiniWindowViewIfNeededAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(PHInCallRootViewController *)self wantsMiniWindowCoverViewController])
  {
    v5 = +[PHPIPController defaultPIPController];
    isPipped = [v5 isPipped];

    if (isPipped)
    {

      [(PHInCallRootViewController *)self dismissPIPIfNeededForMiniWindowAnimated:animatedCopy];
      return;
    }

    coverViewController = [(PHInCallRootViewController *)self coverViewController];
    if ([coverViewController isBeingPresented])
    {
      goto LABEL_14;
    }

    coverViewController2 = [(PHInCallRootViewController *)self coverViewController];
    presentingViewController = [coverViewController2 presentingViewController];
    if (presentingViewController)
    {

LABEL_14:
      goto LABEL_15;
    }

    parentViewController = [(PHInCallRootViewController *)self parentViewController];
    view = [parentViewController view];
    window = [view window];

    if (!window)
    {
LABEL_15:
      coverViewController3 = [(PHInCallRootViewController *)self coverViewController];

      if (coverViewController3)
      {
        v15 = sub_100004F84();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "InCallRootViewController mini window already visible, updating views", v20, 2u);
        }

        coverViewController4 = [(PHInCallRootViewController *)self coverViewController];
        [coverViewController4 updateViews];
      }

      return;
    }

    [(PHInCallRootViewController *)self presentMiniWindowViewControllerAnimated:animatedCopy];
  }

  else
  {
    coverViewController5 = [(PHInCallRootViewController *)self coverViewController];
    if (coverViewController5)
    {
      v8 = coverViewController5;
      coverViewController6 = [(PHInCallRootViewController *)self coverViewController];
      isBeingDismissed = [coverViewController6 isBeingDismissed];

      if ((isBeingDismissed & 1) == 0)
      {

        [(PHInCallRootViewController *)self dismissMiniWindowViewControllerAnimated:1];
      }
    }
  }
}

- (void)dismissPIPIfNeededForMiniWindowAnimated:(BOOL)animated
{
  v5 = +[PHPIPController defaultPIPController];
  isPIPProxyActiveAndHidden = [v5 isPIPProxyActiveAndHidden];

  if (isPIPProxyActiveAndHidden)
  {
    v7 = +[PHPIPController defaultPIPController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000F2754;
    v8[3] = &unk_100356BB8;
    v8[4] = self;
    animatedCopy = animated;
    [v7 manuallyStopPIPWithCompletion:v8];
  }
}

- (void)presentMiniWindowViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "InCallRootViewController showing mini window", buf, 2u);
  }

  if (!self->_coverViewController)
  {
    v6 = [ICSCoverViewController alloc];
    callDisplayStyleManager = [(PHInCallRootViewController *)self callDisplayStyleManager];
    v8 = [(ICSCoverViewController *)v6 initWithCallDisplayStyleManager:callDisplayStyleManager];
    coverViewController = self->_coverViewController;
    self->_coverViewController = v8;
  }

  coverViewController = [(PHInCallRootViewController *)self coverViewController];
  [coverViewController setModalPresentationStyle:0];

  coverViewController2 = [(PHInCallRootViewController *)self coverViewController];
  [coverViewController2 setModalTransitionStyle:2];

  coverViewController3 = [(PHInCallRootViewController *)self coverViewController];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000F28D8;
  v13[3] = &unk_100356988;
  v13[4] = self;
  [(PHInCallRootViewController *)self presentViewController:coverViewController3 animated:animatedCopy completion:v13];
}

- (void)dismissMiniWindowViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  coverViewController = [(PHInCallRootViewController *)self coverViewController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F2978;
  v6[3] = &unk_100356988;
  v6[4] = self;
  [coverViewController dismissViewControllerAnimated:animatedCopy completion:v6];
}

- (void)_showFailureAlertForCall:(id)call
{
  callCopy = call;
  [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHFailureAlertShowingAssertionReason"];
  [(PHInCallRootViewController *)self requestInCallSceneTransitionToFullScreen];
  errorAlertTitle = [callCopy errorAlertTitle];
  errorAlertMessage = [callCopy errorAlertMessage];
  v7 = [PHAlertController alertControllerWithTitle:errorAlertTitle message:errorAlertMessage preferredStyle:1];
  [(PHInCallRootViewController *)self setFailureAlertController:v7];

  objc_initWeak(&location, self);
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"OK" value:&stru_100361FD0 table:@"InCallService"];

  if ([callCopy disconnectedReason] == 30 || objc_msgSend(callCopy, "disconnectedReason") == 49)
  {
    contactIdentifiers = [callCopy contactIdentifiers];
    if ([contactIdentifiers count] == 1)
    {
      if ([callCopy originatingUIType] == 8)
      {

LABEL_12:
        v23 = +[NSBundle mainBundle];
        v12 = [v23 localizedStringForKey:@"NOT_NOW" value:&stru_100361FD0 table:@"InCallService"];

        failureAlertController = [(PHInCallRootViewController *)self failureAlertController];
        v25 = +[NSBundle mainBundle];
        v26 = [v25 localizedStringForKey:@"SHOW_CONTACT_CARD" value:&stru_100361FD0 table:@"InCallService"];
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_1000F3284;
        v50[3] = &unk_1003595C8;
        v51 = callCopy;
        objc_copyWeak(&v52, &location);
        v27 = [UIAlertAction actionWithTitle:v26 style:0 handler:v50];
        [failureAlertController addAction:v27];

        objc_destroyWeak(&v52);
        goto LABEL_15;
      }

      v22 = [callCopy originatingUIType] == 9;

      if (v22)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  if ([callCopy disconnectedReason] == 44)
  {
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"CANCEL" value:&stru_100361FD0 table:@"InCallService"];

    failureAlertController2 = [(PHInCallRootViewController *)self failureAlertController];
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"SIGN_IN" value:&stru_100361FD0 table:@"InCallService"];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1000F3380;
    v48[3] = &unk_100359390;
    objc_copyWeak(&v49, &location);
    v16 = [UIAlertAction actionWithTitle:v15 style:0 handler:v48];
    [failureAlertController2 addAction:v16];

    objc_destroyWeak(&v49);
  }

  else if ([callCopy disconnectedReason] == 45)
  {
    v17 = +[NSBundle mainBundle];
    v12 = [v17 localizedStringForKey:@"CANCEL" value:&stru_100361FD0 table:@"InCallService"];

    failureAlertController3 = [(PHInCallRootViewController *)self failureAlertController];
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"SHOW_APP_STORE" value:&stru_100361FD0 table:@"InCallService"];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1000F340C;
    v46[3] = &unk_100359390;
    objc_copyWeak(&v47, &location);
    v21 = [UIAlertAction actionWithTitle:v20 style:0 handler:v46];
    [failureAlertController3 addAction:v21];

    objc_destroyWeak(&v47);
  }

  else
  {
    if ([callCopy disconnectedReason] != 8)
    {
      goto LABEL_16;
    }

    v28 = +[NSBundle mainBundle];
    v12 = [v28 localizedStringForKey:@"CANCEL" value:&stru_100361FD0 table:@"InCallService"];

    failureAlertController4 = [(PHInCallRootViewController *)self failureAlertController];
    v30 = +[NSBundle mainBundle];
    v31 = [v30 localizedStringForKey:@"LEARN_MORE" value:&stru_100361FD0 table:@"InCallService"];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1000F3550;
    v44[3] = &unk_100359390;
    objc_copyWeak(&v45, &location);
    v32 = [UIAlertAction actionWithTitle:v31 style:0 handler:v44];
    [failureAlertController4 addAction:v32];

    objc_destroyWeak(&v45);
  }

LABEL_15:
  v9 = v12;
LABEL_16:
  failureAlertController5 = [(PHInCallRootViewController *)self failureAlertController];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000F3620;
  v42[3] = &unk_100359390;
  objc_copyWeak(&v43, &location);
  v34 = [UIAlertAction actionWithTitle:v9 style:1 handler:v42];
  [failureAlertController5 addAction:v34];

  failureAlertController6 = [(PHInCallRootViewController *)self failureAlertController];
  [failureAlertController6 setDismissalAssertionReason:@"PHFailureAlertShowingAssertionReason"];

  v36 = sub_100004F84();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    errorAlertTitle2 = [callCopy errorAlertTitle];
    errorAlertMessage2 = [callCopy errorAlertMessage];
    sub_1002566BC(errorAlertTitle2, errorAlertMessage2, buf, v36);
  }

  presentedViewController = [(PHInCallRootViewController *)self presentedViewController];

  if (presentedViewController)
  {
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1000F36BC;
    v41[3] = &unk_100356988;
    v41[4] = self;
    [(PHInCallRootViewController *)self dismissViewControllerAnimated:0 completion:v41];
  }

  else
  {
    failureAlertController7 = [(PHInCallRootViewController *)self failureAlertController];
    [(PHInCallRootViewController *)self presentViewController:failureAlertController7 animated:1 completion:0];
  }

  objc_destroyWeak(&v43);

  objc_destroyWeak(&location);
}

- (void)_showTelephonyFallbackAlertForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_showTelephonyFallbackAlertForCall", v7, 2u);
  }

  [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHFallbackToTelephonyAssertionReason"];
  [(PHInCallRootViewController *)self requestInCallSceneTransitionToFullScreen];
  v6 = [[ICSFallbackToTelephonyAlert alloc] initWithDisconnectedCall:callCopy];

  [(ICSFallbackToTelephonyAlert *)v6 setCancelAction:&stru_1003595E8];
  [(ICSFallbackToTelephonyAlert *)v6 show];
}

- (void)showFailureOrFallbackAlertIfNecessaryForCall:(id)call
{
  callCopy = call;
  shouldShowFailureAlert = [callCopy shouldShowFailureAlert];
  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    uniqueProxyIdentifierUUID = [callCopy uniqueProxyIdentifierUUID];
    v9 = 138412546;
    v10 = uniqueProxyIdentifierUUID;
    v11 = 1024;
    v12 = shouldShowFailureAlert;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "showFailureOrFallbackAlertIfNecessaryForCall %@ shouldShowFailureAlert: %d", &v9, 0x12u);
  }

  if (shouldShowFailureAlert)
  {
    failureAlertController = [(PHInCallRootViewController *)self failureAlertController];
    if (failureAlertController)
    {
    }

    else if ((+[PHInCallUIUtilities isSpringBoardPasscodeLocked]& 1) == 0)
    {
      [(PHInCallRootViewController *)self _showFailureAlertForCall:callCopy];
      goto LABEL_9;
    }
  }

  if ([callCopy shouldShowAutomaticTelephonyCallFallback])
  {
    [(PHInCallRootViewController *)self _showTelephonyFallbackAlertForCall:callCopy];
  }

LABEL_9:
}

- (void)_transitionFromViewController:(id)controller toViewController:(id)viewController
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F39EC;
  v7[3] = &unk_100356988;
  viewControllerCopy = viewController;
  v6 = viewControllerCopy;
  [(PHInCallRootViewController *)self _transitionFromViewController:controller toViewController:v6 completion:v7];
}

- (void)_transitionFromViewController:(id)controller toViewController:(id)viewController completion:(id)completion
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  completionCopy = completion;
  v11 = sub_100004F84();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v38 = controllerCopy;
    v39 = 2112;
    v40 = viewControllerCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Transitioning from %@ to a new view controller, and setting it as the currentViewController: %@", buf, 0x16u);
  }

  [(PHInCallRootViewController *)self _obtainThenReleaseTransitionAssertion];
  view = [(PHInCallRootViewController *)self view];
  [view bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  view2 = [viewControllerCopy view];
  [view2 setFrame:{v14, v16, v18, v20}];

  view3 = [viewControllerCopy view];
  [view3 setAutoresizingMask:18];

  view4 = [viewControllerCopy view];
  [view4 setTranslatesAutoresizingMaskIntoConstraints:1];

  view5 = [viewControllerCopy view];
  [view5 setHidden:0];

  if (controllerCopy && ([controllerCopy parentViewController], v25 = objc_claimAutoreleasedReturnValue(), v26 = v25 == self, v25, v26))
  {
    [(PHInCallRootViewController *)self addChildViewController:viewControllerCopy];
    [controllerCopy willMoveToParentViewController:0];
    objc_initWeak(buf, self);
    v29 = _NSConcreteStackBlock;
    v30 = 3221225472;
    v31 = sub_1000F3E20;
    v32 = &unk_100359610;
    v33 = controllerCopy;
    v34 = viewControllerCopy;
    objc_copyWeak(&v36, buf);
    v35 = completionCopy;
    [(PHInCallRootViewController *)self transitionFromViewController:v33 toViewController:v34 duration:5242880 options:0 animations:&v29 completion:0.5];

    objc_destroyWeak(&v36);
    objc_destroyWeak(buf);
  }

  else
  {
    [viewControllerCopy willMoveToParentViewController:self];
    view6 = [(PHInCallRootViewController *)self view];
    view7 = [viewControllerCopy view];
    [view6 addSubview:view7];

    [(PHInCallRootViewController *)self addChildViewController:viewControllerCopy];
    [viewControllerCopy didMoveToParentViewController:self];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  [(PHInCallRootViewController *)self setCurrentViewController:viewControllerCopy, v29, v30, v31, v32];
  [(PHInCallRootViewController *)self setNeedsWhitePointAdaptivityStyleUpdate];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = PHInCallRootViewController;
  [(PHInCallRootViewController *)&v14 viewDidLoad];
  callDisplayStyleManager = [(PHInCallRootViewController *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  if (callDisplayStyle == 3)
  {
    +[UIColor blackColor];
  }

  else
  {
    +[UIColor clearColor];
  }
  v5 = ;
  view = [(PHInCallRootViewController *)self view];
  [view setBackgroundColor:v5];

  view2 = [(PHInCallRootViewController *)self view];
  [view2 setOpaque:0];

  view3 = [(PHInCallRootViewController *)self view];
  layer = [view3 layer];
  [layer setAllowsGroupBlending:0];

  view4 = [(PHInCallRootViewController *)self view];
  layer2 = [view4 layer];
  [layer2 setAllowsGroupOpacity:0];

  view5 = [(PHInCallRootViewController *)self view];
  bannerTapGestureRecognizer = [(PHInCallRootViewController *)self bannerTapGestureRecognizer];
  [view5 addGestureRecognizer:bannerTapGestureRecognizer];

  [(PHInCallRootViewController *)self handleScreenTimeActivationIfNecessary];
  [(PHInCallRootViewController *)self updateCallControllerForCurrentState];
}

- (void)printUI
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    view = [(PHInCallRootViewController *)self view];
    recursiveDescription = [view recursiveDescription];
    v6 = 138412290;
    v7 = recursiveDescription;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@", &v6, 0xCu);
  }

  [(PHInCallRootViewController *)self performSelector:"printUI" withObject:0 afterDelay:30.0];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[UIApplication sharedApplication];
    delegate = [v6 delegate];
    currentInCallScene = [delegate currentInCallScene];
    [currentInCallScene presentationMode];
    v9 = SBSInCallPresentationModeDescription();
    *buf = 134218242;
    selfCopy = self;
    v33 = 2114;
    v34 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHInCallRootViewController (%p) viewWillAppear presentationMode: %{public}@", buf, 0x16u);
  }

  [(PHInCallRootViewController *)self _testing_viewWillAppear];
  v30.receiver = self;
  v30.super_class = PHInCallRootViewController;
  [(PHInCallRootViewController *)&v30 viewWillAppear:appearCopy];
  callCenter = [(PHInCallRootViewController *)self callCenter];
  currentVideoCallCount = [callCenter currentVideoCallCount];

  if (currentVideoCallCount)
  {
    [(PHInCallRootViewController *)self obtainIdleTimerAssertionWithComment:@"viewWillAppear"];
  }

  _remoteViewControllerProxy = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setBackgroundStyle:4 withDuration:0.100000001];

  presentedViewController = [(PHInCallRootViewController *)self presentedViewController];
  if (!presentedViewController)
  {
    goto LABEL_11;
  }

  v14 = presentedViewController;
  presentedViewController2 = [(PHInCallRootViewController *)self presentedViewController];
  coverViewController = [(PHInCallRootViewController *)self coverViewController];
  v17 = coverViewController;
  if (presentedViewController2 == coverViewController)
  {

    goto LABEL_11;
  }

  presentedViewController3 = [(PHInCallRootViewController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
LABEL_11:
    v20 = 0;
    goto LABEL_12;
  }

  if (!+[PHUIConfiguration shouldUseFullScreenPeoplePicker])
  {
    goto LABEL_13;
  }

  v20 = 1;
LABEL_12:
  [(PHInCallRootViewController *)self setTemporarilyAllowAllStatusBarPills:v20];
LABEL_13:
  [(PHInCallRootViewController *)self pullRelayingCallsIfNecessary];
  [(PHInCallRootViewController *)self updateCallControllerForCurrentState];
  [(PHInCallRootViewController *)self updateAlertActivationReason];
  [(PHInCallRootViewController *)self registerForNotifications];
  [(PHInCallRootViewController *)self observePrioritizedCall];
  callCenter2 = [(PHInCallRootViewController *)self callCenter];
  routeController = [callCenter2 routeController];
  routes = [routeController routes];
  v24 = [routes count];

  if (!v24)
  {
    v25 = sub_100004F84();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Currently have no routes, re-querying...", buf, 2u);
    }

    callCenter3 = [(PHInCallRootViewController *)self callCenter];
    routeController2 = [callCenter3 routeController];
    [routeController2 requeryRoutes];
  }

  if (self->_multiwayViewController)
  {
    v28 = +[PHInCallOrientationMonitor sharedInstance];
    lastValidOrientation = [v28 lastValidOrientation];

    [(PHInCallRootViewController *)self updateMultiwayDeviceOrientation:lastValidOrientation];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    view = [(PHInCallRootViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    *buf = 134218240;
    selfCopy = self;
    v24 = 2048;
    v25 = windowScene;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHInCallRootViewController (%p) viewDidAppear in windowScene (%p)", buf, 0x16u);
  }

  v21.receiver = self;
  v21.super_class = PHInCallRootViewController;
  [(PHInCallRootViewController *)&v21 viewDidAppear:appearCopy];
  v9 = dispatch_time(0, 500000000);
  dispatch_after(v9, &_dispatch_main_q, &stru_100359630);
  [(PHInCallRootViewController *)self _testing_viewDidAppear];
  [(PHInCallRootViewController *)self _testing_finishedAnimatingIn];
  callCenter = [(PHInCallRootViewController *)self callCenter];
  lastDaemonConnectTime = [callCenter lastDaemonConnectTime];
  if (!lastDaemonConnectTime)
  {

    goto LABEL_9;
  }

  v12 = lastDaemonConnectTime;
  callCenter2 = [(PHInCallRootViewController *)self callCenter];
  lastDaemonConnectTime2 = [callCenter2 lastDaemonConnectTime];
  [lastDaemonConnectTime2 timeIntervalSinceNow];
  if (v15 <= 0.0)
  {
    callCenter3 = [(PHInCallRootViewController *)self callCenter];
    lastDaemonConnectTime3 = [callCenter3 lastDaemonConnectTime];
    [lastDaemonConnectTime3 timeIntervalSinceNow];
    v19 = v18;

    if (v19 < -1.0)
    {
      goto LABEL_8;
    }

LABEL_9:
    v20 = dispatch_time(0, 2000000000);
    dispatch_after(v20, &_dispatch_main_q, &stru_100359650);

    goto LABEL_10;
  }

LABEL_8:
  [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHInitialPresentationAssertionReason"];
LABEL_10:
  [(PHInCallRootViewController *)self setupAutoAnswer];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHInCallRootViewController (%p) viewWillDisappear", buf, 0xCu);
  }

  [(PHInCallRootViewController *)self releaseIdleTimerAssertionWithComment:@"viewWillDisappear"];
  v9.receiver = self;
  v9.super_class = PHInCallRootViewController;
  [(PHInCallRootViewController *)&v9 viewWillDisappear:disappearCopy];
  [(PHInCallRootViewController *)self dismissScreenTimeAlertHostIfNeeded];
  callCenter = [(PHInCallRootViewController *)self callCenter];
  currentAudioAndVideoCallCount = [callCenter currentAudioAndVideoCallCount];

  if (!currentAudioAndVideoCallCount)
  {
    +[PHInCallRootViewController forceClearAllDismissalAssertions];
    if (+[PHSOSViewController isSOSDismissalAssertionActive])
    {
      if (BKSHIDServicesIsSmartCoverClosed() && self->_sosViewController)
      {
        sosViewController = [(PHInCallRootViewController *)self sosViewController];
        [sosViewController deactivateSOSWithSOSDismissalType:1];
      }
    }
  }

  [(PHInCallRootViewController *)self cancelAutoAnswer];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHInCallRootViewController (%p) viewDidDisappear", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = PHInCallRootViewController;
  [(PHInCallRootViewController *)&v7 viewDidDisappear:disappearCopy];
  [(PHInCallRootViewController *)self dismissViewControllersWithSensitiveInformation];
  if (byte_1003B0EE0 == 1)
  {
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "sendResponseIfNecessaryWithUnhandledEvents via viewDidDisappear", buf, 2u);
    }

    byte_1003B0EE0 = 0;
    [(PHInCallRootViewController *)self sendResponseIfNecessaryWithUnhandledEvents:1];
  }
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  windowCopy = window;
  v10.receiver = self;
  v10.super_class = PHInCallRootViewController;
  [(PHInCallRootViewController *)&v10 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = windowCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "viewDidMoveToWindow %@ window %@", buf, 0x16u);
  }

  hasEverAppearedInWindow = [(PHInCallRootViewController *)self hasEverAppearedInWindow];
  if (windowCopy)
  {
    v9 = 1;
  }

  else
  {
    v9 = hasEverAppearedInWindow;
  }

  [(PHInCallRootViewController *)self setHasEverAppearedInWindow:v9];
}

- (void)requestInCallSceneTransitionToFullScreen
{
  inCallWindowScene = [(PHInCallRootViewController *)self inCallWindowScene];

  if (inCallWindowScene)
  {
    TUDispatchMainIfNecessary();
  }
}

- (void)requestInCallDismissal
{
  [(PHInCallRootViewController *)self releaseIdleTimerAssertionWithComment:@"requestInCallDismissal"];
  [(PHInCallRootViewController *)self setStatusBarHidden:0 withDuration:0.0];
  v3 = +[ICSPreferences sharedPreferences];
  hasAdoptedModernInCallAPI = [v3 hasAdoptedModernInCallAPI];

  v5 = sub_100004F84();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (hasAdoptedModernInCallAPI)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "About to request InCall dismissal using the scene-based API", buf, 2u);
    }

    [(PHInCallRootViewController *)self dismissInCallPresentationWithDismissalBlock:&stru_100359670];
    _remoteViewControllerProxy = [(PHInCallRootViewController *)self _remoteViewControllerProxy];

    if (_remoteViewControllerProxy)
    {
      _remoteViewControllerProxy2 = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
      [_remoteViewControllerProxy2 dismiss];
    }
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Requested InCall dismissal using remote view controller proxy", buf, 2u);
    }

    _remoteViewControllerProxy3 = [(PHInCallRootViewController *)self _remoteViewControllerProxy];

    if (_remoteViewControllerProxy3)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000F4E28;
      v10[3] = &unk_100356988;
      v10[4] = self;
      [(PHInCallRootViewController *)self dismissInCallPresentationWithDismissalBlock:v10];
    }

    else
    {
      [(PHInCallRootViewController *)self setDismissalWasDemandedBeforeRemoteViewControllerWasAvailable:1];
    }
  }
}

- (void)dismissInCallPresentationWithDismissalBlock:(id)block
{
  blockCopy = block;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "requestInCallDismissal", buf, 2u);
  }

  multiwayViewController = [(PHInCallRootViewController *)self multiwayViewController];
  effectsEnabled = [multiwayViewController effectsEnabled];

  if (effectsEnabled)
  {
    callCenter = [(PHInCallRootViewController *)self callCenter];
    videoDeviceController = [callCenter videoDeviceController];
    isPreviewRunning = [videoDeviceController isPreviewRunning];

    if (isPreviewRunning)
    {
      callCenter2 = [(PHInCallRootViewController *)self callCenter];
      videoDeviceController2 = [callCenter2 videoDeviceController];
      [videoDeviceController2 stopPreview];
    }
  }

  v13 = +[UIApplication sharedApplication];
  delegate = [v13 delegate];
  [delegate acquirePreventSuspensionAssertion];

  objc_initWeak(buf, self);
  callDisplayStyleManager = [(PHInCallRootViewController *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  if (callDisplayStyle == 3)
  {
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000F5298;
    v32[3] = &unk_100356F60;
    v17 = &v33;
    objc_copyWeak(&v33, buf);
    v18 = +[UIApplication sharedApplication];
    delegate2 = [v18 delegate];
    sceneManager = [delegate2 sceneManager];
    ambientScene = [sceneManager ambientScene];
    delegate3 = [ambientScene delegate];
    [delegate3 setSceneDidDisconnectBlock:v32];
  }

  else
  {
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000F530C;
    v30[3] = &unk_100356F60;
    v17 = &v31;
    objc_copyWeak(&v31, buf);
    v18 = +[UIApplication sharedApplication];
    delegate2 = [v18 delegate];
    sceneManager = [delegate2 currentInCallScene];
    ambientScene = [sceneManager delegate];
    [ambientScene setSceneDidDisconnectBlock:v30];
  }

  objc_destroyWeak(v17);
  if (byte_1003B0EE0 == 1)
  {
    v23 = sub_100004F84();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "sendResponseIfNecessaryWithUnhandledEvents via requestInCallDismissal", v29, 2u);
    }

    byte_1003B0EE0 = 0;
    currentAlertButtonAction = [(PHInCallRootViewController *)self currentAlertButtonAction];
    v25 = byte_1003B0EE1;

    if (!currentAlertButtonAction && (v25 & 1) == 0)
    {
      v26 = sub_100004F84();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *v29 = 0;
        v27 = "dismissing remoteViewControllerProxy via requestInCallDismissal because no currentAlertButtonAction and shouldForceDismiss == NO";
LABEL_20:
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v27, v29, 2u);
        goto LABEL_21;
      }

      goto LABEL_21;
    }

    [(PHInCallRootViewController *)self sendResponseIfNecessaryWithUnhandledEvents:1];
    if (byte_1003B0EE1 == 1)
    {
      v26 = sub_100004F84();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *v29 = 0;
        v27 = "dismissing remoteViewControllerProxy via requestInCallDismissal";
        goto LABEL_20;
      }

LABEL_21:

      blockCopy[2](blockCopy);
      byte_1003B0EE1 = 0;
    }
  }

  else
  {
    blockCopy[2](blockCopy);
  }

  v28 = +[PHPIPController defaultPIPController];
  [v28 resetPipContentViewController];

  objc_destroyWeak(buf);
}

- (void)prepareForDismissal
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Preparing for dismissal by removing current view controllers", v25, 2u);
  }

  features = [(PHInCallRootViewController *)self features];
  callManagerEnabled = [features callManagerEnabled];

  if (callManagerEnabled)
  {
    [(ICSCallManagerBridge *)self->_callManager cleanUp];
  }

  v6 = +[CNKGameControllerManager shared];
  [v6 removeResponder:self];

  [(PHInCallRootViewController *)self removeViewController:self->_videoCallNavigationController];
  audioCallNavigationController = [(PHInCallRootViewController *)self audioCallNavigationController];
  [(PHInCallRootViewController *)self removeViewController:audioCallNavigationController];

  [(PHInCallRootViewController *)self removeViewController:self->_multiwayViewController];
  remoteViewController = [(PHPhoneRemoteHostViewController *)self->_remoteHostViewController remoteViewController];
  [remoteViewController setDelegate:0];

  remoteHostViewController = self->_remoteHostViewController;
  self->_remoteHostViewController = 0;

  contactsViewController = self->_contactsViewController;
  self->_contactsViewController = 0;

  audioCallNavigationController = self->_audioCallNavigationController;
  self->_audioCallNavigationController = 0;

  audioCallViewController = self->_audioCallViewController;
  self->_audioCallViewController = 0;

  multiwayViewController = self->_multiwayViewController;
  self->_multiwayViewController = 0;

  videoCallNavigationController = self->_videoCallNavigationController;
  self->_videoCallNavigationController = 0;

  [(CNKMultiwayViewControllerProtocol *)self->_multiwayViewController setMediaPipFrameInWindowScene:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(FBSDisplayLayoutMonitor *)self->_displayLayoutMonitor invalidate];
  displayLayoutMonitor = self->_displayLayoutMonitor;
  self->_displayLayoutMonitor = 0;

  v16 = +[NSNotificationCenter defaultCenter];
  [v16 removeObserver:self];
  [(PHInCallRootViewController *)self startObservingAcceptCallButtonTappedWithNotificationCenter:v16];
  v17 = +[UIApplication sharedApplication];
  delegate = [v17 delegate];
  [delegate hideCarPlayUI];

  callCenter = [(PHInCallRootViewController *)self callCenter];
  routeController = [callCenter routeController];
  [routeController removeDelegate:self];

  callCenter2 = [(PHInCallRootViewController *)self callCenter];
  conversationManager = [callCenter2 conversationManager];
  [conversationManager removeDelegate:self];

  callCenter3 = [(PHInCallRootViewController *)self callCenter];
  videoDeviceController = [callCenter3 videoDeviceController];
  [videoDeviceController stopPreview];

  [objc_opt_class() releaseDismissalAssertionForReason:@"PHMessageComposeViewControllerAssertionReason"];
}

- (void)removeViewController:(id)controller
{
  controllerCopy = controller;
  parentViewController = [controllerCopy parentViewController];

  if (parentViewController)
  {
    [controllerCopy willMoveToParentViewController:0];
    [controllerCopy removeFromParentViewController];
    if ([controllerCopy isViewLoaded])
    {
      view = [controllerCopy view];
      [view removeFromSuperview];
    }

    [controllerCopy didMoveToParentViewController:0];
  }
}

- (void)animateInWithCompletionBlock:(id)block
{
  blockCopy = block;
  view = [(PHInCallRootViewController *)self view];
  [view setAlpha:0.0];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F5798;
  v6[3] = &unk_100356988;
  v6[4] = self;
  [UIView animateWithDuration:0x20000 delay:v6 options:blockCopy animations:0.349999994 completion:0.0];
}

- (void)presentContactsViewControllerForView:(id)view
{
  viewCopy = view;
  v5 = objc_alloc_init(CNContactPickerViewController);
  [v5 setAllowsEditing:1];
  [v5 setMode:1];
  v6 = [NSPredicate predicateWithValue:1];
  [v5 setPredicateForSelectionOfContact:v6];

  [v5 setCardActions:5];
  [v5 setDelegate:self];
  [(PHInCallRootViewController *)self setContactsViewController:v5];
  if ((+[PHUIConfiguration shouldUseFullScreenPeoplePicker]& 1) != 0)
  {
    selfCopy = self;
    presentedViewController = [(PHInCallRootViewController *)selfCopy presentedViewController];

    presentedViewController2 = selfCopy;
    if (presentedViewController)
    {
      presentedViewController2 = [(PHInCallRootViewController *)selfCopy presentedViewController];
    }

    contactsViewController = [(PHInCallRootViewController *)selfCopy contactsViewController];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000F59B8;
    v14[3] = &unk_100356988;
    v14[4] = selfCopy;
    [presentedViewController2 presentViewController:contactsViewController animated:1 completion:v14];

    contactsViewController2 = [(PHInCallRootViewController *)selfCopy contactsViewController];
    presentationController = [contactsViewController2 presentationController];
    [presentationController setDelegate:selfCopy];
  }

  else
  {
    contactsViewController3 = [(PHInCallRootViewController *)self contactsViewController];
    [(PHInCallRootViewController *)self presentAsPopover:contactsViewController3 fromView:viewCopy completion:0];
  }

  [(PHInCallRootViewController *)self updateDesiredSpringboardBehavior];
}

- (void)forceUpdateCallControllerForFilteredRequest:(id)request
{
  requestCopy = request;
  if ([qword_1003B0ED8 containsObject:@"PHScreenTimeAlertAssertionReason"])
  {
    [(PHInCallRootViewController *)self setFilteredRequest:requestCopy];
    [(PHInCallRootViewController *)self updateCallControllerForCurrentState];
  }
}

- (void)presentScreenTimeHostViewController
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    filteredRequest = [(PHInCallRootViewController *)self filteredRequest];
    *buf = 138412290;
    v21 = filteredRequest;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Loading screen time host view controller for request: %@", buf, 0xCu);
  }

  v5 = [PHScreenTimeHostViewController alloc];
  filteredRequest2 = [(PHInCallRootViewController *)self filteredRequest];
  v7 = [(PHScreenTimeHostViewController *)v5 initWithRequest:filteredRequest2 delegate:self];

  callCenter = [(PHInCallRootViewController *)self callCenter];
  currentAudioAndVideoCalls = [callCenter currentAudioAndVideoCalls];
  v10 = [currentAudioAndVideoCalls count];

  if (v10)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000F5D20;
    v18[3] = &unk_100357110;
    v18[4] = self;
    v19 = v7;
    [(PHInCallRootViewController *)self presentViewController:v7 animated:1 completion:v18];
    v11 = v19;
  }

  else
  {
    view = [(PHScreenTimeHostViewController *)v7 view];
    [view setAlpha:0.0];

    [(PHScreenTimeHostViewController *)v7 willMoveToParentViewController:self];
    view2 = [(PHInCallRootViewController *)self view];
    view3 = [(PHScreenTimeHostViewController *)v7 view];
    [view2 addSubview:view3];

    [(PHInCallRootViewController *)self addChildViewController:v7];
    [(PHScreenTimeHostViewController *)v7 didMoveToParentViewController:self];
    [(PHInCallRootViewController *)self setScreenTimeHostViewController:v7];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000F5D60;
    v16[3] = &unk_100356988;
    v17 = v7;
    v15 = v7;
    [UIView animateWithDuration:0x10000 delay:v16 options:0 animations:0.15 completion:0.0];
    v11 = v17;
  }
}

- (void)dismissSOSIfNeeded
{
  callCenter = [(PHInCallRootViewController *)self callCenter];
  if (![callCenter hasCurrentCalls])
  {
    callDisplayStyleManager = [(PHInCallRootViewController *)self callDisplayStyleManager];
    if ([callDisplayStyleManager callDisplayStyle] == 4 && +[PHSOSViewController isSOSDismissalAssertionActive](PHSOSViewController, "isSOSDismissalAssertionActive"))
    {
      sosViewController = [(PHInCallRootViewController *)self sosViewController];

      if (sosViewController)
      {
        v5 = sub_100004F84();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_10025672C();
        }

        [ICSCrashReporter simulateCrashReportWithFormat:@"The SOS UI was dismissed even though there were no active calls."];
        sosViewController2 = [(PHInCallRootViewController *)self sosViewController];
        [sosViewController2 deactivateSOSWithSOSDismissalType:0];
      }

      return;
    }
  }
}

- (void)presentAsPopover:(id)popover fromView:(id)view completion:(id)completion
{
  completionCopy = completion;
  viewCopy = view;
  popoverCopy = popover;
  [popoverCopy setModalPresentationStyle:7];
  [(PHInCallRootViewController *)self presentViewController:popoverCopy animated:1 completion:completionCopy];

  popoverPresentationController = [popoverCopy popoverPresentationController];
  [popoverPresentationController setDelegate:self];

  view = [(PHInCallRootViewController *)self view];
  [viewCopy bounds];
  [view convertRect:viewCopy fromView:?];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  popoverPresentationController2 = [popoverCopy popoverPresentationController];
  [popoverPresentationController2 setPermittedArrowDirections:15];

  view2 = [(PHInCallRootViewController *)self view];
  popoverPresentationController3 = [popoverCopy popoverPresentationController];
  [popoverPresentationController3 setSourceView:view2];

  popoverPresentationController4 = [popoverCopy popoverPresentationController];

  [popoverPresentationController4 setSourceRect:{v14, v16, v18, v20}];
}

- (void)willRotate:(id)rotate
{
  if ((+[PHUIConfiguration shouldUseFullScreenPeoplePicker]& 1) == 0)
  {
    presentedViewController = [(PHInCallRootViewController *)self presentedViewController];
    if ([presentedViewController isBeingPresented])
    {
    }

    else
    {
      presentedViewController2 = [(PHInCallRootViewController *)self presentedViewController];
      isBeingDismissed = [presentedViewController2 isBeingDismissed];

      if ((isBeingDismissed & 1) == 0)
      {
        presentedViewController3 = [(PHInCallRootViewController *)self presentedViewController];
        contactsViewController = [(PHInCallRootViewController *)self contactsViewController];
        v8 = [presentedViewController3 isEqual:contactsViewController];

        if (v8)
        {

          [(PHInCallRootViewController *)self dismissContactsViewControllerAnimated:0];
        }

        else
        {

          [(PHInCallRootViewController *)self dismissPhoneRemoteViewControllerAnimated:0];
        }
      }
    }
  }
}

- (void)dismissContactsViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if ([(PHInCallRootViewController *)self isPresentingContactsViewController])
  {
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v16 = animatedCopy;
      v17 = 1024;
      v18 = completionCopy != 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "dismissing contactsVC animated %d, hasCompletion: %d", buf, 0xEu);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000F64E8;
    v12[3] = &unk_100359698;
    v14 = animatedCopy;
    v12[4] = self;
    v13 = completionCopy;
    v8 = objc_retainBlock(v12);
    v9 = v8;
    if (animatedCopy)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000F6610;
      v10[3] = &unk_100356FD8;
      v10[4] = self;
      v11 = v8;
      [(PHInCallRootViewController *)self dismissViewControllerAnimated:1 completion:v10];
    }

    else
    {
      [(PHInCallRootViewController *)self setTemporarilyAllowAllStatusBarPills:0];
      [(PHInCallRootViewController *)self dismissViewControllerAnimated:0 completion:v9];
    }
  }

  else if (completionCopy)
  {
    dispatch_async(&_dispatch_main_q, completionCopy);
  }
}

- (void)dismissContactDetailsWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(PHInCallRootViewController *)self isPresentingContactDetails])
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v14 = completionCopy != 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "dismissing contact details hasCompletion: %d", buf, 8u);
    }

    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_1000F67B4;
    v10 = &unk_100356FD8;
    selfCopy = self;
    v12 = completionCopy;
    v6 = objc_retainBlock(&v7);
    [(PHInCallRootViewController *)self dismissViewControllerAnimated:0 completion:v6, v7, v8, v9, v10, selfCopy];
  }

  else if (completionCopy)
  {
    dispatch_async(&_dispatch_main_q, completionCopy);
  }
}

- (void)updateRemoteAlertSwipeDismissalStyleForCall:(id)call
{
  callCopy = call;
  v7 = callCopy;
  if (callCopy)
  {
    v5 = [callCopy status] != 4;
  }

  else
  {
    v5 = 1;
  }

  _remoteViewControllerProxy = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setSwipeDismissalStyle:v5];
}

- (void)updateAlertActivationReason
{
  callCenter = [(PHInCallRootViewController *)self callCenter];
  incomingCall = [callCenter incomingCall];

  if (incomingCall || (-[PHInCallRootViewController callCenter](self, "callCenter"), v4 = objc_claimAutoreleasedReturnValue(), [v4 incomingVideoCall], incomingCall = objc_claimAutoreleasedReturnValue(), v4, incomingCall))
  {
    callCenter2 = [(PHInCallRootViewController *)self callCenter];
    currentCallGroups = [callCenter2 currentCallGroups];
    v7 = [currentCallGroups count];
    callCenter3 = [(PHInCallRootViewController *)self callCenter];
    v9 = &v7[[callCenter3 currentVideoCallCount]] > 1;
  }

  else
  {
    incomingCall = 0;
    v9 = 0;
  }

  [(PHInCallRootViewController *)self setAlertActivationReason:v9];
  [(PHInCallRootViewController *)self setAlertActivationCall:incomingCall];
}

- (void)updateAlertActivationReasonForCall:(id)call
{
  callCopy = call;
  if ([(PHInCallRootViewController *)self alertActivationReason]== 1)
  {
    alertActivationCall = [(PHInCallRootViewController *)self alertActivationCall];
    callUUID = [alertActivationCall callUUID];
    callUUID2 = [callCopy callUUID];
    v7 = [callUUID isEqualToString:callUUID2];

    if (v7)
    {
      status = [callCopy status];
      if (status - 5 >= 2)
      {
        if (status != 1)
        {
          goto LABEL_8;
        }
      }

      else
      {
        callCenter = [(PHInCallRootViewController *)self callCenter];
        hasCurrentCalls = [callCenter hasCurrentCalls];

        if ((hasCurrentCalls & 1) == 0)
        {
          v11 = +[PHAudioCallViewController dismissalAssertionReason];
          [PHInCallRootViewController releaseDismissalAssertionForReason:v11];

          [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHMulitwayCallAssertionReason"];
        }
      }

      alertActivationCall = self->_alertActivationCall;
      self->_alertActivationCall = 0;

      self->_alertActivationReason = 0;
    }
  }

LABEL_8:
}

- (void)emergencyCallbackModeChangedNotification:(id)notification
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Emergency callback mode changed notification, reassessing dismissal assertions", buf, 2u);
  }

  v5 = +[TUCallCapabilities isEmergencyCallbackModeEnabled];
  v6 = sub_100004F84();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "... mode is active, obtaining emergency callback assertion reason", v9, 2u);
    }

    [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHEmergencyCallBackModeAssertionReason"];
  }

  else
  {
    if (v7)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "... mode is not active, releasing emergency callback assertion reason", v8, 2u);
    }

    [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHEmergencyCallBackModeAssertionReason"];
  }

  [(PHInCallRootViewController *)self updateCallControllerForCurrentState];
}

- (void)mostRecentlyDisconnectedAudioCallDidClearNotification:(id)notification
{
  if (+[TUCallCapabilities isEmergencyCallbackModeEnabled])
  {

    [(PHInCallRootViewController *)self updateCallControllerForCurrentState];
  }
}

- (void)didChangeDeviceOrientationNotification:(id)notification
{
  if (self->_multiwayViewController)
  {
    notificationCopy = notification;
    v5 = +[PHPIPController defaultPIPController];
    isPipped = [v5 isPipped];

    v7 = &off_100359B70;
    if (!isPipped)
    {
      v7 = &off_100359B78;
    }

    v8 = *v7;
    userInfo = [notificationCopy userInfo];

    v10 = [userInfo objectForKey:v8];

    intValue = [v10 intValue];

    [(PHInCallRootViewController *)self updateMultiwayDeviceOrientation:intValue];
  }
}

- (void)updateMultiwayDeviceOrientation:(int64_t)orientation
{
  if ((orientation - 1) <= 3)
  {
    v5 = [objc_opt_class() cnkDeviceOrientationForUIDeviceOrientation:orientation];
    multiwayViewController = self->_multiwayViewController;

    [(CNKMultiwayViewControllerProtocol *)multiwayViewController setDeviceOrientation:v5];
  }
}

- (CGSize)preferredPIPContentAspectRatio
{
  multiwayViewController = [(PHInCallRootViewController *)self multiwayViewController];
  parentViewController = [multiwayViewController parentViewController];
  if (parentViewController)
  {
    v5 = parentViewController;
    multiwayViewController2 = [(PHInCallRootViewController *)self multiwayViewController];
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      v11 = 0x4059000000000000;
      v9 = 0x4059000000000000;
      goto LABEL_7;
    }

    multiwayViewController = [(PHInCallRootViewController *)self multiwayViewController];
    [multiwayViewController preferredPIPContentAspectRatio];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v11 = 0x4059000000000000;
    v9 = 0x4059000000000000;
  }

LABEL_7:
  v12 = *&v9;
  v13 = *&v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)prepareForDeviceLockWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "prepareForDeviceLock started", buf, 2u);
  }

  currentViewController = [(PHInCallRootViewController *)self currentViewController];
  v7 = [PHInCallUIUtilities handleNavigationControllerIfNecessary:currentViewController];

  if ([(PHInCallRootViewController *)self viewControllerSupportsEffects:v7])
  {
    v8 = sub_100004F84();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Disabling effects controller due to device lock event", buf, 2u);
    }

    [v7 resetEffectsState];
  }

  isPresentingViewControllerWithSensitiveInformation = [(PHInCallRootViewController *)self isPresentingViewControllerWithSensitiveInformation];
  v10 = sub_100004F84();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (isPresentingViewControllerWithSensitiveInformation)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "dismissing view controllers with sensitive information due to device lock event", buf, 2u);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000F70EC;
    v12[3] = &unk_100356D38;
    v13 = completionCopy;
    [(PHInCallRootViewController *)self dismissViewControllersWithSensitiveInformationWithCompletion:v12];
    v10 = v13;
  }

  else if (v11)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "prepareForDeviceLock completed without dismissal", buf, 2u);
  }
}

- (void)dismissViewControllersWithSensitiveInformationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "dismiss sensitive view controllers: started", buf, 2u);
  }

  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000F73A4;
  v17[3] = &unk_100356988;
  v7 = v6;
  v18 = v7;
  [(PHInCallRootViewController *)self dismissPhoneRemoteViewControllerAnimated:0 completion:v17];
  dispatch_group_enter(v7);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000F7418;
  v15[3] = &unk_100356988;
  v8 = v7;
  v16 = v8;
  [(PHInCallRootViewController *)self dismissContactsViewControllerAnimated:0 completion:v15];
  dispatch_group_enter(v8);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000F748C;
  v13[3] = &unk_100356988;
  v14 = v8;
  v9 = v8;
  [(PHInCallRootViewController *)self dismissContactDetailsWithCompletion:v13];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000F7500;
  v11[3] = &unk_100356D38;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_group_notify(v9, &_dispatch_main_q, v11);
}

- (void)showKeypadIfPossible
{
  audioCallViewController = [(PHInCallRootViewController *)self audioCallViewController];

  if (audioCallViewController)
  {
    audioCallViewController2 = [(PHInCallRootViewController *)self audioCallViewController];
    [audioCallViewController2 audioCallControlsViewControllerRequestedKeypadPresentation:0];
  }
}

- (BOOL)isShowingHUD
{
  multiwayViewController = [(PHInCallRootViewController *)self multiwayViewController];
  isShowingHUD = [multiwayViewController isShowingHUD];

  return isShowingHUD;
}

- (void)prepareForPopoverPresentation:(id)presentation
{
  presentationCopy = presentation;
  v5 = +[UIScreen mainScreen];
  [v5 bounds];
  v7 = v6;

  presentedViewController = [(PHInCallRootViewController *)self presentedViewController];
  [presentedViewController preferredContentSize];
  v10 = v9;

  presentedViewController2 = [(PHInCallRootViewController *)self presentedViewController];
  [presentedViewController2 setPreferredContentSize:{v10, v7 * 0.5}];

  presentedViewController3 = [(PHInCallRootViewController *)self presentedViewController];
  contactsViewController = [(PHInCallRootViewController *)self contactsViewController];

  if (presentedViewController3 == contactsViewController)
  {
    v15 = +[UIColor whiteColor];
    [presentationCopy setBackgroundColor:?];
  }

  else
  {
    v15 = +[UIColor _externalSystemDarkGrayColor];
    v14 = [v15 colorWithAlphaComponent:0.8];
    [presentationCopy setBackgroundColor:v14];

    presentationCopy = v14;
  }
}

- (void)popoverPresentationControllerDidDismissPopover:(id)popover
{
  popoverCopy = popover;
  presentedViewController = [popoverCopy presentedViewController];
  contactsViewController = [(PHInCallRootViewController *)self contactsViewController];

  if (presentedViewController == contactsViewController)
  {
    [popoverCopy setDelegate:0];
    [(PHInCallRootViewController *)self setContactsViewController:0];
  }

  else
  {
    presentedViewController2 = [popoverCopy presentedViewController];
    remoteHostViewController = [(PHInCallRootViewController *)self remoteHostViewController];

    if (presentedViewController2 == remoteHostViewController)
    {
      [popoverCopy setDelegate:0];
      [(PHInCallRootViewController *)self setRemoteHostViewController:0];
    }
  }
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  presentedViewController = [dismiss presentedViewController];
  contactsViewController = [(PHInCallRootViewController *)self contactsViewController];

  if (presentedViewController == contactsViewController)
  {
    [(PHInCallRootViewController *)self setContactsViewController:0];

    [(PHInCallRootViewController *)self setTemporarilyAllowAllStatusBarPills:0];
  }
}

- (void)transitionToVideoCallBasedViewController:(id)controller shouldUpdatePipSize:(BOOL)size
{
  sizeCopy = size;
  controllerCopy = controller;
  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v43 = controllerCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Transitioning to video-call-based view controller: %@", buf, 0xCu);
  }

  currentViewController = [(PHInCallRootViewController *)self currentViewController];
  videoCallNavigationController = [(PHInCallRootViewController *)self videoCallNavigationController];
  v10 = [currentViewController isEqual:videoCallNavigationController];

  if ((v10 & 1) == 0)
  {
    if (sizeCopy)
    {
      v11 = &v36;
      v36 = _NSConcreteStackBlock;
      v37 = 3221225472;
      v38 = sub_1000F7D18;
      v39 = &unk_100356988;
      selfCopy = self;
    }

    else
    {
      v11 = 0;
    }

    v12 = objc_retainBlock(v11);
    v13 = sub_100004F84();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Not currently showing the video call nav controller, transitioning to it first", buf, 2u);
    }

    videoCallNavigationController2 = [(PHInCallRootViewController *)self videoCallNavigationController];
    view = [videoCallNavigationController2 view];
    [view alpha];
    v17 = v16;

    if (v17 == 0.0)
    {
      videoCallNavigationController3 = [(PHInCallRootViewController *)self videoCallNavigationController];
      view2 = [videoCallNavigationController3 view];
      [view2 setAlpha:1.0];

      videoCallNavigationController4 = [(PHInCallRootViewController *)self videoCallNavigationController];
      view3 = [videoCallNavigationController4 view];
      [view3 layoutIfNeeded];
    }

    v22 = [(PHInCallRootViewController *)self currentViewController:v36];
    videoCallNavigationController5 = [(PHInCallRootViewController *)self videoCallNavigationController];
    [(PHInCallRootViewController *)self _transitionFromViewController:v22 toViewController:videoCallNavigationController5 completion:v12];

    sizeCopy = 0;
  }

  v24 = [(PHInCallRootViewController *)self callForVideoCallBasedViewController:controllerCopy];
  videoCallNavigationController6 = [(PHInCallRootViewController *)self videoCallNavigationController];
  topViewController = [videoCallNavigationController6 topViewController];
  v27 = [topViewController conformsToProtocol:&OBJC_PROTOCOL___CNKMultiwayViewControllerProtocol];

  if (v27)
  {
    videoCallNavigationController7 = [(PHInCallRootViewController *)self videoCallNavigationController];
    topViewController2 = [videoCallNavigationController7 topViewController];
    call = [topViewController2 call];
  }

  else
  {
    call = 0;
  }

  v31 = sub_100004F84();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v43 = v24;
    v44 = 2112;
    v45 = call;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Transitioning to multiway view controller for %@, Current displayed active call: %@", buf, 0x16u);
  }

  if ([controllerCopy conformsToProtocol:&OBJC_PROTOCOL___CNKMultiwayViewControllerProtocol] && (objc_msgSend(call, "isEqualToCall:", v24) & 1) == 0)
  {
    v32 = sub_100004F84();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Replacing existing view controllers with multiway view controller", buf, 2u);
    }

    videoCallNavigationController8 = [(PHInCallRootViewController *)self videoCallNavigationController];
    v41 = controllerCopy;
    v34 = [NSArray arrayWithObjects:&v41 count:1];
    [videoCallNavigationController8 setViewControllers:v34 animated:1];
  }

  if (sizeCopy)
  {
    v35 = +[PHPIPController defaultPIPController];
    [v35 updatePIPSize];
  }
}

- (id)callForVideoCallBasedViewController:(id)controller
{
  controllerCopy = controller;
  if ([controllerCopy conformsToProtocol:&OBJC_PROTOCOL___CNKMultiwayViewControllerProtocol])
  {
    call = [controllerCopy call];
  }

  else
  {
    call = 0;
  }

  return call;
}

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  toViewControllerCopy = toViewController;
  viewControllerCopy = viewController;
  v15 = objc_opt_class();
  v10 = [NSArray arrayWithObjects:&v15 count:1];
  v11 = [NSSet setWithArray:v10];

  v12 = objc_opt_class();
  if ([v11 containsObject:v12] & 1) != 0 || (objc_msgSend(v11, "containsObject:", objc_opt_class()))
  {
    makeAnimator = 0;
  }

  else
  {
    makeAnimator = [(CNKCrossFadeAnimatorFactory *)self->_animatorFactory makeAnimator];
  }

  return makeAnimator;
}

- (void)showCallDetailsView
{
  if ([(PHInCallRootViewController *)self isPresentingCallDetailsView])
  {
    currentViewController = sub_100004F84();
    if (os_log_type_enabled(currentViewController, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, currentViewController, OS_LOG_TYPE_DEFAULT, "Requested details view controller presentation, but it's already presented", buf, 2u);
    }
  }

  else
  {
    callDetailsNavigationController = [(PHInCallRootViewController *)self callDetailsNavigationController];

    if (!callDetailsNavigationController)
    {
      v5 = sub_100004F84();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Creating new call details navigation controller to show from the root view controller", v14, 2u);
      }

      v6 = +[UIApplication sharedApplication];
      delegate = [v6 delegate];
      bannerPresentationManager = [delegate bannerPresentationManager];
      v9 = [(PHInCallRootViewController *)self makeConversationHUDDetailsNavigationControllerWithBannerPresentationManager:bannerPresentationManager delegate:self shouldSetControlsManagerInCallDetailsDelegate:1];
      [(PHInCallRootViewController *)self setCallDetailsNavigationController:v9];

      callDetailsNavigationController2 = [(PHInCallRootViewController *)self callDetailsNavigationController];
      [callDetailsNavigationController2 setOverrideUserInterfaceStyle:2];
    }

    v11 = sub_100004F84();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PHInCallRootViewController transitioning to call details view", v13, 2u);
    }

    currentViewController = [(PHInCallRootViewController *)self currentViewController];
    callDetailsNavigationController3 = [(PHInCallRootViewController *)self callDetailsNavigationController];
    [(PHInCallRootViewController *)self _transitionFromViewController:currentViewController toViewController:callDetailsNavigationController3];
  }
}

- (void)presentPhoneRemoteViewControllerForView:(id)view
{
  viewCopy = view;
  remoteHostViewController = [(PHInCallRootViewController *)self remoteHostViewController];
  if (remoteHostViewController && (v6 = remoteHostViewController, -[PHInCallRootViewController presentedViewController](self, "presentedViewController"), v7 = objc_claimAutoreleasedReturnValue(), -[PHInCallRootViewController remoteHostViewController](self, "remoteHostViewController"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqual:v8], v8, v7, v6, v9))
  {
    v10 = sub_100004F84();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      remoteHostViewController2 = [(PHInCallRootViewController *)self remoteHostViewController];
      *buf = 138412290;
      v16 = remoteHostViewController2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Requested Add Call presentation, but we already have a remote view controller: %@", buf, 0xCu);
    }
  }

  else if (+[PHInCallUIUtilities isSpringBoardPasscodeLocked])
  {
    v12 = sub_100004F84();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Requested Add Call presentation, but the device is passcode locked", buf, 2u);
    }
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000F8358;
    v13[3] = &unk_1003596C0;
    v13[4] = self;
    v14 = viewCopy;
    [PHPhoneRemoteHostViewController requestViewControllerWithCompletionHandler:v13];
  }
}

- (void)dismissPhoneRemoteViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if ([(PHInCallRootViewController *)self isPresentingRemoteHostViewController])
  {
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v16 = animatedCopy;
      v17 = 1024;
      v18 = completionCopy != 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "dismissing phoneRemoteVC animated: %d, hasCompletion: %d", buf, 0xEu);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000F8858;
    v12[3] = &unk_100359698;
    v14 = animatedCopy;
    v12[4] = self;
    v13 = completionCopy;
    v8 = objc_retainBlock(v12);
    v9 = v8;
    if (animatedCopy)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000F8980;
      v10[3] = &unk_100356FD8;
      v10[4] = self;
      v11 = v8;
      [(PHInCallRootViewController *)self dismissViewControllerAnimated:1 completion:v10];
    }

    else
    {
      [(PHInCallRootViewController *)self setTemporarilyAllowAllStatusBarPills:0];
      [(PHInCallRootViewController *)self dismissViewControllerAnimated:0 completion:v9];
    }
  }

  else if (completionCopy)
  {
    dispatch_async(&_dispatch_main_q, completionCopy);
  }
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    localizedDescription = [errorCopy localizedDescription];
    v8 = 138412290;
    v9 = localizedDescription;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHInCallRootViewController: Remote view service terminated with error: %@", &v8, 0xCu);
  }

  if ([errorCopy code] != 1)
  {
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PHInCallRootViewController: Remote view service was not cancelled, so dismissing remote view controller", &v8, 2u);
    }

    [(PHInCallRootViewController *)self dismissPhoneRemoteViewControllerAnimated:0];
  }
}

- (void)setBackgroundStyle:(int64_t)style animatedWithDuration:(double)duration
{
  _remoteViewControllerProxy = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setBackgroundStyle:style withDuration:duration];
}

- (void)setStatusBarHidden:(BOOL)hidden withDuration:(double)duration
{
  hiddenCopy = hidden;
  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (hiddenCopy)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    _remoteViewControllerProxy = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = _remoteViewControllerProxy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Request to set status bar hidden %{public}@ on %{public}@", &v11, 0x16u);
  }

  _remoteViewControllerProxy2 = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy2 setStatusBarHidden:hiddenCopy withDuration:duration];

  [(PHInCallRootViewController *)self setShouldHideStatusBar:hiddenCopy];
  [(PHInCallRootViewController *)self setNeedsStatusBarAppearanceUpdate];
}

- (void)phoneRemoteHostViewControllerDidDismiss
{
  [(PHInCallRootViewController *)self setTemporarilyAllowAllStatusBarPills:0];
  [(PHInCallRootViewController *)self setRemoteHostViewController:0];

  [(PHInCallRootViewController *)self updateDesiredSpringboardBehavior];
}

+ (void)obtainDismissalAssertionForReason:(id)reason
{
  reasonCopy = reason;
  v4 = [qword_1003B0ED8 containsObject:reasonCopy];
  v5 = sub_100004F84();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1002567DC();
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Obtaining Dismissal Assertion for reason: %{public}@", &v8, 0xCu);
    }

    [qword_1003B0ED8 addObject:reasonCopy];
  }

  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100256850();
  }
}

+ (void)releaseDismissalAssertionForReason:(id)reason
{
  reasonCopy = reason;
  if ([qword_1003B0ED8 containsObject:reasonCopy])
  {
    [qword_1003B0ED8 removeObject:reasonCopy];
    v4 = sub_100004F84();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v11 = reasonCopy;
      v12 = 2114;
      v13 = qword_1003B0ED8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Releasing Dismissal Assertion %{public}@. Remaining assertions are: %{public}@", buf, 0x16u);
    }

    v5 = [NSSet setWithObject:reasonCopy, @"PHReleasedAssertionKey"];
    v9 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 postNotificationName:@"PHDismissalAssertionReleasedNotification" object:0 userInfo:v6];
  }
}

+ (void)releaseDismissalAssertionReasons:(id)reasons
{
  reasonsCopy = reasons;
  v4 = [qword_1003B0ED8 copy];
  v5 = [v4 intersectsSet:reasonsCopy];

  if (v5)
  {
    [qword_1003B0ED8 minusSet:reasonsCopy];
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v12 = reasonsCopy;
      v13 = 2114;
      v14 = qword_1003B0ED8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Releasing Dismissal Assertion Reasons %{public}@. Remaining assertions are: %{public}@", buf, 0x16u);
    }

    v9 = @"PHReleasedAssertionKey";
    v10 = reasonsCopy;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"PHDismissalAssertionReleasedNotification" object:0 userInfo:v7];
  }
}

+ (void)forceClearAllDismissalAssertions
{
  v2 = +[PHSOSViewController getSetOfSOSDismissalAssertions];
  v3 = [qword_1003B0ED8 mutableCopy];
  [v3 minusSet:v2];
  if ([qword_1003B0ED8 count])
  {
    [qword_1003B0ED8 intersectSet:v2];
    v8 = @"PHReleasedAssertionKey";
    v9 = v3;
    v4 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 postNotificationName:@"PHDismissalAssertionReleasedNotification" object:0 userInfo:v4];

    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Force clearing dismissal assertions besides PHSOSCallAssertionReason", v7, 2u);
    }
  }
}

- (void)dismissalAssertionReleasedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412546;
    selfCopy = self;
    v24 = 2112;
    v25 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v22, 0x16u);
  }

  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = +[PHInCallRootViewController dismissalAssertions];
    v22 = 138412290;
    selfCopy = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "The remaining dismissal assertions are %@", &v22, 0xCu);
  }

  userInfo = [notificationCopy userInfo];
  v9 = [userInfo objectForKeyedSubscript:@"PHReleasedAssertionKey"];

  if (+[PHInCallRootViewController hasDismissalAssertions])
  {
    if (+[PHSOSViewController isSOSDismissalAssertionActive])
    {
      v10 = +[PHSOSViewController getSetOfSOSDismissalAssertions];
      if ([v9 intersectsSet:v10])
      {
        sosViewController = self->_sosViewController;

        if (sosViewController)
        {
          v12 = self->_sosViewController;
LABEL_12:
          self->_sosViewController = 0;

          goto LABEL_23;
        }
      }

      else
      {
      }
    }

    else
    {
      v12 = self->_sosViewController;
      if (v12)
      {
        goto LABEL_12;
      }
    }

    if ([(PHInCallRootViewController *)self shouldReleaseAudioCallViewController])
    {
      v13 = sub_100004F84();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        selfCopy = qword_1003B0ED8;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Releasing the audio call view controller based on current dismissal assertions: %@", &v22, 0xCu);
      }

      features = [(PHInCallRootViewController *)self features];
      callManagerEnabled = [features callManagerEnabled];

      if (callManagerEnabled)
      {
        callManager = [(PHInCallRootViewController *)self callManager];
        [callManager cleanUp];
      }

      audioCallNavigationController = [(PHInCallRootViewController *)self audioCallNavigationController];
      [(PHInCallRootViewController *)self removeViewController:audioCallNavigationController];

      audioCallNavigationController = self->_audioCallNavigationController;
      self->_audioCallNavigationController = 0;

      audioCallViewController = self->_audioCallViewController;
      self->_audioCallViewController = 0;
    }

    else if ([qword_1003B0ED8 count] == 1 && objc_msgSend(qword_1003B0ED8, "containsObject:", @"PHMessageComposeViewControllerAssertionReason"))
    {
      [(PHInCallRootViewController *)self releaseIdleTimerAssertionWithComment:@"only showing message compose"];
    }
  }

  else
  {
    [(PHInCallRootViewController *)self requestInCallDismissal];
  }

LABEL_23:
  if ([v9 containsObject:@"PHInitialPTTFullScreenPresentationAssertionReason"] && self->_pttFullScreenContainerViewController)
  {
    v20 = sub_100004F84();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Releasing the PushToTalk view controller.", &v22, 2u);
    }

    [(PHInCallRootViewController *)self removeViewController:self->_pttFullScreenContainerViewController];
    pttFullScreenContainerViewController = self->_pttFullScreenContainerViewController;
    self->_pttFullScreenContainerViewController = 0;
  }

  [(PHInCallRootViewController *)self updateCallControllerForCurrentState];
}

- (BOOL)shouldReleaseAudioCallViewController
{
  v3 = qword_1003B0ED8;
  v4 = +[PHAudioCallViewController dismissalAssertionReason];
  if ([v3 containsObject:v4] & 1) != 0 || (objc_msgSend(qword_1003B0ED8, "containsObject:", @"PHAudioCallViewControllerDismissalAssertionHandlingCallFailure") & 1) != 0 || (objc_msgSend(qword_1003B0ED8, "containsObject:", @"PHFailureAlertShowingAssertionReason") & 1) != 0 || (objc_msgSend(qword_1003B0ED8, "containsObject:", @"PHFallbackToTelephonyAssertionReason") & 1) != 0 || (objc_msgSend(qword_1003B0ED8, "containsObject:", @"PHMessageComposeViewControllerAssertionReason") & 1) != 0 || (objc_msgSend(qword_1003B0ED8, "containsObject:", @"PHCallEndedBlockAndReportInProgressAssertionReason") & 1) != 0 || (objc_msgSend(qword_1003B0ED8, "containsObject:", @"PHAudioCallViewControllerDismissalAssertionWaitingForIdle"))
  {
    v5 = 0;
  }

  else
  {
    currentViewController = [(PHInCallRootViewController *)self currentViewController];
    audioCallNavigationController = [(PHInCallRootViewController *)self audioCallNavigationController];
    if (currentViewController == audioCallNavigationController)
    {
      v5 = 0;
    }

    else
    {
      audioCallViewControllerIfLoaded = [(PHInCallRootViewController *)self audioCallViewControllerIfLoaded];
      v5 = audioCallViewControllerIfLoaded != 0;
    }
  }

  return v5;
}

- (void)obtainIdleTimerAssertionWithComment:(id)comment
{
  commentCopy = comment;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = commentCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Obtaining Idle Timer Assertion: %@", &v13, 0xCu);
  }

  _remoteViewControllerProxy = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setIdleTimerDisabled:1 forReason:@"PHIdleTimerDisabledReason"];

  callDisplayStyleManager = [(PHInCallRootViewController *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  if (callDisplayStyle == 3)
  {
    v9 = sub_100004F84();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = commentCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Obtaining Idle Timer Assertion on ambient scene: %@", &v13, 0xCu);
    }

    [(PHInCallRootViewController *)self ambientSetIdleTimerDisabled:1];
  }

  else
  {
    inCallWindowScene = [(PHInCallRootViewController *)self inCallWindowScene];

    if (inCallWindowScene)
    {
      v11 = sub_100004F84();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = commentCopy;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Obtaining Idle Timer Assertion on window scene: %@", &v13, 0xCu);
      }

      inCallWindowScene2 = [(PHInCallRootViewController *)self inCallWindowScene];
      [inCallWindowScene2 setIdleTimerDisabled:1];
    }
  }
}

- (void)releaseIdleTimerAssertionWithComment:(id)comment
{
  commentCopy = comment;
  _remoteViewControllerProxy = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setIdleTimerDisabled:0 forReason:@"PHIdleTimerDisabledReason"];

  callDisplayStyleManager = [(PHInCallRootViewController *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  if (callDisplayStyle == 3)
  {
    v8 = sub_100004F84();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = commentCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Released Idle Timer Assertion on ambient scene: %@", &v13, 0xCu);
    }

    [(PHInCallRootViewController *)self ambientSetIdleTimerDisabled:0];
  }

  else
  {
    inCallWindowScene = [(PHInCallRootViewController *)self inCallWindowScene];

    if (inCallWindowScene)
    {
      inCallWindowScene2 = [(PHInCallRootViewController *)self inCallWindowScene];
      [inCallWindowScene2 setIdleTimerDisabled:0];

      v11 = sub_100004F84();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = commentCopy;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Released Idle Timer Assertion on window scene: %@", &v13, 0xCu);
      }
    }
  }

  v12 = sub_100004F84();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = commentCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Released Idle Timer Assertion: %@", &v13, 0xCu);
  }
}

- (void)pullRelayingCallsIfNecessary
{
  callCenter = [(PHInCallRootViewController *)self callCenter];
  routeController = [callCenter routeController];
  pickedRoute = [routeController pickedRoute];

  callCenter2 = [(PHInCallRootViewController *)self callCenter];
  v7 = [callCenter2 anyCallPassesTest:&stru_1003596E0];

  deviceType = [pickedRoute deviceType];
  callCenter3 = sub_100004F84();
  v10 = os_log_type_enabled(callCenter3, OS_LOG_TYPE_DEFAULT);
  if (deviceType != 13 || (v7 & 1) != 0)
  {
    if (v10)
    {
      v11 = 67109376;
      LODWORD(v12[0]) = v7;
      WORD2(v12[0]) = 2048;
      *(v12 + 6) = [pickedRoute deviceType];
      _os_log_impl(&_mh_execute_header, callCenter3, OS_LOG_TYPE_DEFAULT, "Not pulling any relay calls (incomingCallExists: %d, pickedRouteDeviceType: %ld)", &v11, 0x12u);
    }
  }

  else
  {
    if (v10)
    {
      v11 = 138412290;
      v12[0] = pickedRoute;
      _os_log_impl(&_mh_execute_header, callCenter3, OS_LOG_TYPE_DEFAULT, "Pulling all relaying calls from device: %@", &v11, 0xCu);
    }

    callCenter3 = [(PHInCallRootViewController *)self callCenter];
    [callCenter3 pullRelayingCallsFromClient];
  }
}

- (void)handleActivationForEndAndLock
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "HardwareEvent: handleActivationForEndAndLock", buf, 2u);
  }

  callCenter = [(PHInCallRootViewController *)self callCenter];
  routeController = [callCenter routeController];
  pickedRoute = [routeController pickedRoute];
  isReceiver = [pickedRoute isReceiver];

  callCenter2 = [(PHInCallRootViewController *)self callCenter];
  v9 = callCenter2;
  if (isReceiver)
  {
    if ([callCenter2 hasCurrentCalls])
    {
      v10 = +[PHInCallUtilities sharedInstance];
      isLockToEndCallEnabled = [v10 isLockToEndCallEnabled];

      if (isLockToEndCallEnabled)
      {
        v12 = sub_100004F84();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Ending call on lock event", buf, 2u);
        }

        byte_1003B0EE0 = 1;
        callCenter3 = [(PHInCallRootViewController *)self callCenter];
        [callCenter3 disconnectAllCalls];

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        callCenter4 = [(PHInCallRootViewController *)self callCenter];
        currentVideoCalls = [callCenter4 currentVideoCalls];

        v16 = [currentVideoCalls countByEnumeratingWithState:&v29 objects:v35 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v30;
          do
          {
            v19 = 0;
            do
            {
              if (*v30 != v18)
              {
                objc_enumerationMutation(currentVideoCalls);
              }

              v20 = *(*(&v29 + 1) + 8 * v19);
              callCenter5 = [(PHInCallRootViewController *)self callCenter];
              [callCenter5 disconnectCall:v20];

              v19 = v19 + 1;
            }

            while (v17 != v19);
            v17 = [currentVideoCalls countByEnumeratingWithState:&v29 objects:v35 count:16];
          }

          while (v17);
        }

        return;
      }
    }

    else
    {
    }

    v26 = sub_100004F84();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = +[PHInCallUtilities sharedInstance];
      isLockToEndCallEnabled2 = [v27 isLockToEndCallEnabled];
      *buf = 67109120;
      v34 = isLockToEndCallEnabled2;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "sendResponseIfNecessaryWithUnhandledEvents via handleActivationForEndAndLock - Receiver route is picked, but there are no active calls or AX setting to ignore is on: %d", buf, 8u);
    }

    byte_1003B0EE0 = 0;
LABEL_24:
    [(PHInCallRootViewController *)self sendResponseIfNecessaryWithUnhandledEvents:1];
    return;
  }

  hasCurrentVideoCalls = [callCenter2 hasCurrentVideoCalls];

  v23 = sub_100004F84();
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (hasCurrentVideoCalls)
  {
    if (v24)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Disconnecting video calls due to lock button press", buf, 2u);
    }

    callCenter6 = [(PHInCallRootViewController *)self callCenter];
    [callCenter6 disconnectAllCalls];

    goto LABEL_24;
  }

  if (v24)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "sendResponseIfNecessaryWithUnhandledEvents via handleActivationForEndAndLock - Not ending call on lock event because audio route is handset", buf, 2u);
  }

  byte_1003B0EE0 = 0;
  [(PHInCallRootViewController *)self sendResponseIfNecessaryWithUnhandledEvents:1];
  +[PHInCallRootViewController forceClearAllDismissalAssertions];
}

- (BOOL)shouldConsumeDeviceLockEvent
{
  callCenter = [(PHInCallRootViewController *)self callCenter];
  currentAudioAndVideoCallCount = [callCenter currentAudioAndVideoCallCount];
  if (+[PHSOSViewController isSOSDismissalAssertionActive])
  {
    v4 = 1;
  }

  else
  {
    resolvedIncomingCall = [callCenter resolvedIncomingCall];
    if (resolvedIncomingCall)
    {
    }

    else
    {
      screeningCall = [callCenter screeningCall];
      if (screeningCall)
      {
        v8 = screeningCall;
        screeningCall2 = [callCenter screeningCall];
        isWaitOnHoldActive = [screeningCall2 isWaitOnHoldActive];

        if ((isWaitOnHoldActive & 1) == 0 && currentAudioAndVideoCallCount == 1)
        {
          v4 = 0;
          goto LABEL_6;
        }
      }
    }

    v4 = (currentAudioAndVideoCallCount > 0) & ~byte_1003B0EE0;
  }

LABEL_6:

  return v4;
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = PHInCallRootViewController;
  [(PHInCallRootViewController *)&v8 traitCollectionDidChange:change];
  traitCollection = [(PHInCallRootViewController *)self traitCollection];
  _backlightLuminance = [traitCollection _backlightLuminance];

  if (_backlightLuminance == 1)
  {
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Screen entered into reduced luminance. Prepare for device lock", v7, 2u);
    }

    [(PHInCallRootViewController *)self prepareForDeviceLock];
  }
}

- (void)handleDeviceLockEventWithSourceType:(int64_t)type resultHandler:(id)handler
{
  handlerCopy = handler;
  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v52 = type;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PHInCallRootViewController handleDeviceLockEventWithSourceType %ld started", buf, 0xCu);
  }

  if (type)
  {
    callCenter = [(PHInCallRootViewController *)self callCenter];
    frontmostCall = [callCenter frontmostCall];

    if (frontmostCall)
    {
      smartHoldingSession = [frontmostCall smartHoldingSession];
      if (smartHoldingSession)
      {
        callCenter2 = [(PHInCallRootViewController *)self callCenter];
        v12 = [callCenter2 currentAudioAndVideoCallCount] == 1;

        if (v12)
        {
          smartHoldingSession2 = [frontmostCall smartHoldingSession];
          v14 = [smartHoldingSession2 state] == 0;

          if (v14)
          {
            v44 = sub_100004F84();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Found call with SmartHolding session in waiting state, allowing device lock", buf, 2u);
            }

            [(PHInCallRootViewController *)self prepareForDeviceLock];
            handlerCopy[2](handlerCopy, 0);
            goto LABEL_46;
          }

          smartHoldingSession3 = [frontmostCall smartHoldingSession];
          v16 = [smartHoldingSession3 state] == 3;

          if (v16)
          {
            v17 = sub_100004F84();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Found call with SmartHolding session requiring user attention state, silencing ringtone", buf, 2u);
            }

            [frontmostCall suppressRingtone];
            handlerCopy[2](handlerCopy, 1);
            goto LABEL_46;
          }
        }
      }
    }

    [(PHInCallRootViewController *)self cancelAutoAnswer];
    audioCallNavigationController = [(PHInCallRootViewController *)self audioCallNavigationController];
    view = [audioCallNavigationController view];
    superview = [view superview];
    if (superview)
    {
      audioCallNavigationController2 = [(PHInCallRootViewController *)self audioCallNavigationController];
      parentViewController = [audioCallNavigationController2 parentViewController];
      v23 = parentViewController == 0;

      if (v23)
      {
        goto LABEL_20;
      }

      audioCallNavigationController = [(PHInCallRootViewController *)self audioCallViewControllerIfLoaded];
      [audioCallNavigationController handleDeviceLockEventWithSourceType:type];
    }

    else
    {
    }

LABEL_20:
    view2 = [(CNKMultiwayViewControllerProtocol *)self->_multiwayViewController view];
    superview2 = [view2 superview];
    if (superview2)
    {
      parentViewController2 = [(CNKMultiwayViewControllerProtocol *)self->_multiwayViewController parentViewController];
      if (parentViewController2)
      {
        callCenter3 = [(PHInCallRootViewController *)self callCenter];
        v29 = [callCenter3 currentAudioAndVideoCallCount] == 0;

        if (!v29)
        {
          v30 = sub_100004F84();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Found multiwayVC allocated...", buf, 2u);
          }

          if ((-[CNKMultiwayViewControllerProtocol isOneToOneModeEnabled](self->_multiwayViewController, "isOneToOneModeEnabled") & 1) == 0 && (-[PHInCallRootViewController callCenter](self, "callCenter"), v31 = objc_claimAutoreleasedReturnValue(), [v31 incomingVideoCall], v32 = objc_claimAutoreleasedReturnValue(), v33 = v32 == 0, v32, v31, v33))
          {
            +[PHInCallRootViewController setShouldLockDeviceOnNextDismiss];
          }

          else
          {
            [(PHInCallRootViewController *)self handleDeviceLockEventOverUPlusOneVideoViewsWithSourceType:type];
          }
        }
      }

      else
      {
      }
    }

    else
    {
    }

    if ([(PHInCallRootViewController *)self isPresentingViewControllerWithSensitiveInformation])
    {
      objc_initWeak(buf, self);
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_1000FA8D0;
      v48[3] = &unk_100356A48;
      objc_copyWeak(&v50, buf);
      v49 = handlerCopy;
      v34 = objc_retainBlock(v48);
      transitionCoordinator = [(PHInCallRootViewController *)self transitionCoordinator];

      if (transitionCoordinator)
      {
        v36 = sub_100004F84();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Device lock event received while transitioning a view controller with sensitive information. Delaying lock until transition is complete.", v47, 2u);
        }

        transitionCoordinator2 = [(PHInCallRootViewController *)self transitionCoordinator];
        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_1000FAA88;
        v45[3] = &unk_100359708;
        v46 = v34;
        [transitionCoordinator2 animateAlongsideTransition:0 completion:v45];

        [(PHInCallRootViewController *)self dismissViewControllersWithSensitiveInformation];
LABEL_39:

        objc_destroyWeak(&v50);
        objc_destroyWeak(buf);
LABEL_46:

        goto LABEL_47;
      }

      if ([(PHInCallRootViewController *)self shouldConsumeDeviceLockEvent])
      {
        v38 = sub_100004F84();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "We are requesting lock events due to ICS showing view controllers with sensitive information, allow the screen to be locked", v47, 2u);
        }

        (v34[2])(v34);
        goto LABEL_39;
      }

      objc_destroyWeak(&v50);
      objc_destroyWeak(buf);
    }

    shouldConsumeDeviceLockEvent = [(PHInCallRootViewController *)self shouldConsumeDeviceLockEvent];
    v40 = sub_100004F84();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = byte_1003B0EE0;
      callCenter4 = [(PHInCallRootViewController *)self callCenter];
      currentAudioAndVideoCallCount = [callCenter4 currentAudioAndVideoCallCount];
      *buf = 67109890;
      *v52 = shouldConsumeDeviceLockEvent;
      *&v52[4] = 1024;
      *&v52[6] = v41;
      v53 = 2048;
      v54 = currentAudioAndVideoCallCount;
      v55 = 2112;
      v56 = qword_1003B0ED8;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "PHInCallRootViewController handleDeviceLockEventWithSourceType shouldConsumeDeviceLockEvent %d shouldLockDeviceOnNextDismiss: %d callCount: %ld, dismissalAssertions: %@", buf, 0x22u);
    }

    if (!shouldConsumeDeviceLockEvent)
    {
      [(PHInCallRootViewController *)self prepareForDeviceLock];
    }

    handlerCopy[2](handlerCopy, shouldConsumeDeviceLockEvent);
    goto LABEL_46;
  }

  v24 = sub_100004F84();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Received device lock event with unknown source type, not handing off to child view controllers", buf, 2u);
  }

  [(PHInCallRootViewController *)self prepareForDeviceLock];
  handlerCopy[2](handlerCopy, 0);
LABEL_47:
}

- (void)handleLockButtonPressed
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "HardwareEvent: handleLockButtonPressed", v5, 2u);
  }

  v3 = +[NSNotificationCenter defaultCenter];
  v6 = @"kPHHardwareButtonEventType";
  v7 = @"kPHHardwareButtonEventTypeLockButton";
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v3 postNotificationName:@"PHHardwareButtonEventNotification" object:0 userInfo:v4];
}

- (void)handleVolumeUpButtonPressed
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "HardwareEvent: handleVolumeUpButtonPressed", v5, 2u);
  }

  v3 = +[NSNotificationCenter defaultCenter];
  v6 = @"kPHHardwareButtonEventType";
  v7 = @"kPHHardwareButtonEventTypeVolumeUpButton";
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v3 postNotificationName:@"PHHardwareButtonEventNotification" object:0 userInfo:v4];
}

- (void)handleVolumeDownButtonPressed
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "HardwareEvent: handleVolumeDownButtonPressed", v5, 2u);
  }

  v3 = +[NSNotificationCenter defaultCenter];
  v6 = @"kPHHardwareButtonEventType";
  v7 = @"kPHHardwareButtonEventTypeVolumeDownButton";
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v3 postNotificationName:@"PHHardwareButtonEventNotification" object:0 userInfo:v4];
}

- (void)handleHeadsetButtonPressed
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "HardwareEvent: handleHeadsetButtonPressed", v5, 2u);
  }

  v3 = +[NSNotificationCenter defaultCenter];
  v6 = @"kPHHardwareButtonEventType";
  v7 = @"kPHHardwareButtonEventTypeHeadsetButton";
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v3 postNotificationName:@"PHHardwareButtonEventNotification" object:0 userInfo:v4];
}

- (void)handleHeadsetButtonLongPressed
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "HardwareEvent: handleHeadsetButtonLongPressed", v5, 2u);
  }

  v3 = +[NSNotificationCenter defaultCenter];
  v6 = @"kPHHardwareButtonEventType";
  v7 = @"kPHHardwareButtonEventTypeHeadsetButtonLongPress";
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v3 postNotificationName:@"PHHardwareButtonEventNotification" object:0 userInfo:v4];
}

- (unint64_t)desiredButtonEventsForCallContainer:(id)container
{
  containerCopy = container;
  audioCallViewControllerIfLoaded = [(PHInCallRootViewController *)self audioCallViewControllerIfLoaded];

  if (audioCallViewControllerIfLoaded)
  {
    v6 = [(PHInCallRootViewController *)self desiresLockButtonEventsForCallContainer:containerCopy];
    resolvedIncomingCall = [containerCopy resolvedIncomingCall];

    v8 = v6 | 6;
    if (!resolvedIncomingCall)
    {
      v8 = v6;
    }

    v9 = v8 | 0x28;
    v10 = sub_100004F84();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v13 = 134217984;
    v14 = v9;
    v11 = "Audio controller requesting button events %ld";
    goto LABEL_12;
  }

  if (!self->_multiwayViewController)
  {
    v9 = 0;
    goto LABEL_14;
  }

  if ([(PHInCallRootViewController *)self desiresLockAndVolumeButtonEventsForCallContainer:containerCopy])
  {
    v9 = 47;
  }

  else
  {
    v9 = 40;
  }

  v10 = sub_100004F84();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = v9;
    v11 = "Video controller requesting button events %ld";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, &v13, 0xCu);
  }

LABEL_13:

LABEL_14:
  return v9;
}

- (unint64_t)desiredSceneButtonEventsForCallContainer:(id)container
{
  containerCopy = container;
  audioCallViewControllerIfLoaded = [(PHInCallRootViewController *)self audioCallViewControllerIfLoaded];

  if (audioCallViewControllerIfLoaded)
  {
    resolvedIncomingCall = [containerCopy resolvedIncomingCall];

    if (resolvedIncomingCall)
    {
      v7 = 30;
    }

    else
    {
      v7 = 24;
    }

    v8 = sub_100004F84();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v11 = 134217984;
    v12 = v7;
    v9 = "Audio controller requesting scene button events %ld";
    goto LABEL_13;
  }

  if (!self->_multiwayViewController)
  {
    v7 = 0;
    goto LABEL_15;
  }

  if ([(PHInCallRootViewController *)self desiresLockAndVolumeButtonEventsForCallContainer:containerCopy])
  {
    v7 = 30;
  }

  else
  {
    v7 = 24;
  }

  v8 = sub_100004F84();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v7;
    v9 = "Video controller requesting scene button events %ld";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, &v11, 0xCu);
  }

LABEL_14:

LABEL_15:
  return v7;
}

- (BOOL)desiresLockAndVolumeButtonEventsForCallContainer:(id)container
{
  containerCopy = container;
  v4 = +[UIApplication sharedApplication];
  delegate = [v4 delegate];
  v6 = [delegate incomingVideoCallUsingCallContainer:containerCopy];

  return v6 != 0;
}

- (BOOL)desiresLockButtonEventsForCallContainer:(id)container
{
  containerCopy = container;
  resolvedIncomingCall = [containerCopy resolvedIncomingCall];
  if (resolvedIncomingCall)
  {
    isPickedRouteReceiver = 1;
  }

  else if ([containerCopy currentCallCount])
  {
    isPickedRouteReceiver = [(PHInCallRootViewController *)self isPickedRouteReceiver];
  }

  else
  {
    isPickedRouteReceiver = 0;
  }

  return isPickedRouteReceiver;
}

- (void)hardwareButtonEventNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    userInfo = [notificationCopy userInfo];
    v17 = 138412290;
    v18 = userInfo;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHInCallRootViewController received a hardware button event (%@)", &v17, 0xCu);
  }

  featureFlags = [(PHInCallRootViewController *)self featureFlags];
  if (![(__CFString *)featureFlags conversationOneToOneModeEnabled]|| ![(CNKMultiwayViewControllerProtocol *)self->_multiwayViewController isViewLoaded])
  {
    goto LABEL_15;
  }

  view = [(CNKMultiwayViewControllerProtocol *)self->_multiwayViewController view];
  window = [view window];

  if (window)
  {
    userInfo2 = [notificationCopy userInfo];
    featureFlags = [userInfo2 valueForKey:@"kPHHardwareButtonEventType"];

    v11 = +[UIApplication sharedApplication];
    delegate = [v11 delegate];
    callCenter = [(PHInCallRootViewController *)self callCenter];
    v14 = [delegate incomingVideoCallUsingCallContainer:callCenter];

    if (featureFlags == @"kPHHardwareButtonEventTypeVolumeDownButton" || featureFlags == @"kPHHardwareButtonEventTypeVolumeUpButton")
    {
      [v14 suppressRingtone];
    }

    else
    {
      if (featureFlags == @"kPHHardwareButtonEventTypeHeadsetButton")
      {
        callCenter2 = +[UIApplication sharedApplication];
        delegate2 = [callCenter2 delegate];
        [delegate2 handleHeadsetButtonPressForCall:v14 sourceIdentifier:0];

        goto LABEL_13;
      }

      if (featureFlags == @"kPHHardwareButtonEventTypeHeadsetButtonLongPress")
      {
        callCenter2 = [(PHInCallRootViewController *)self callCenter];
        [callCenter2 handleActionForWiredHeadsetMiddleButtonLongPress];
LABEL_13:
      }
    }

LABEL_15:
  }
}

- (id)getPreferredBackgroundActivitiesToSuppress:(id)suppress whenIsPipped:(BOOL)pipped whenTemporarilyAllowAllStatusBarPills:(BOOL)pills
{
  pillsCopy = pills;
  pippedCopy = pipped;
  suppressCopy = suppress;
  v8 = suppressCopy;
  if (pillsCopy)
  {
    v9 = sub_100004F84();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      v10 = "Don't suppress status bar pill because temporarilyAllowAllStatusBarPills is true.";
      v11 = &v16;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (pippedCopy)
  {
    v9 = sub_100004F84();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 0;
      v10 = "Don't suppress status bar pill because ICS is pipped.";
      v11 = &v15;
      goto LABEL_7;
    }

LABEL_8:

    v12 = objc_opt_new();
    goto LABEL_10;
  }

  v12 = suppressCopy;
LABEL_10:
  v13 = v12;

  return v13;
}

- (id)backgroundActivities
{
  inCallWindowScene = [(PHInCallRootViewController *)self inCallWindowScene];
  v3 = sub_1000EDC00([inCallWindowScene ics_sceneType]);

  return v3;
}

- (BOOL)isPipped
{
  v2 = +[PHPIPController defaultPIPController];
  isPipped = [v2 isPipped];

  return isPipped;
}

- (void)setTemporarilyAllowAllStatusBarPills:(BOOL)pills
{
  if (self->_temporarilyAllowAllStatusBarPills != pills)
  {
    self->_temporarilyAllowAllStatusBarPills = pills;
    [(PHInCallRootViewController *)self setNeedsStatusBarPillSuppressionUpdate];
  }
}

- (void)setNeedsStatusBarPillSuppressionUpdate
{
  backgroundActivities = [(PHInCallRootViewController *)self backgroundActivities];
  v5 = [(PHInCallRootViewController *)self getPreferredBackgroundActivitiesToSuppress:backgroundActivities whenIsPipped:[(PHInCallRootViewController *)self isPipped] whenTemporarilyAllowAllStatusBarPills:[(PHInCallRootViewController *)self temporarilyAllowAllStatusBarPills]];

  inCallWindowScene = [(PHInCallRootViewController *)self inCallWindowScene];
  [PHInCallRootViewController setStatusBarPillSuppressionForBackgroundActivities:v5 onWindowScene:inCallWindowScene];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  childViewControllers = [(PHInCallRootViewController *)self childViewControllers];
  lastObject = [childViewControllers lastObject];

  if (objc_opt_respondsToSelector())
  {
    [lastObject willAnimateRotationToInterfaceOrientation:orientation duration:duration];
  }
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation
{
  childViewControllers = [(PHInCallRootViewController *)self childViewControllers];
  lastObject = [childViewControllers lastObject];

  if (objc_opt_respondsToSelector())
  {
    v6 = [lastObject shouldAutorotateToInterfaceOrientation:orientation];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)animateToAlert
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Animate to Alert", v8, 2u);
  }

  v3 = +[PHPIPController defaultPIPController];
  pipState = [v3 pipState];

  if (pipState == 2)
  {
    v9[0] = SBSUIRemoteAlertOptionViewControllerClass;
    v5 = TUInCallRemoteAlertViewControllerClassName();
    v10[0] = v5;
    v10[1] = &__kCFBooleanTrue;
    v9[1] = SBSUIRemoteAlertOptionDismissWithHomeButton;
    v9[2] = SBSUIRemoteAlertOptionWantsWallpaperTunnel;
    v10[2] = &__kCFBooleanTrue;
    v9[3] = SBSUIRemoteAlertOptionDismissalAnimationStyle;
    v6 = [NSNumber numberWithInt:2];
    v9[4] = SBSUIRemoteAlertOptionSwipeDismissalStyle;
    v10[3] = v6;
    v10[4] = &off_10036A370;
    v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:5];

    SBSUIActivateRemoteAlert();
  }
}

- (void)presentBlockAndReportAlertToBlockCall:(id)call forViewController:(id)controller completion:(id)completion
{
  callCopy = call;
  controllerCopy = controller;
  completionCopy = completion;
  if (callCopy && controllerCopy)
  {
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"BLOCK_REPORT_ALERT_TITLE" value:&stru_100361FD0 table:@"InCallService"];
    v13 = [UIAlertController alertControllerWithTitle:v12 message:0 preferredStyle:0];

    objc_initWeak(location, self);
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"BLOCK_REPORT_ALERT_ACTION_BLOCK" value:&stru_100361FD0 table:@"InCallService"];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000FBF4C;
    v32[3] = &unk_100359750;
    objc_copyWeak(&v35, location);
    v16 = callCopy;
    v33 = v16;
    v17 = completionCopy;
    v34 = v17;
    v18 = [UIAlertAction actionWithTitle:v15 style:2 handler:v32];
    [v13 addAction:v18];

    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"BLOCK_REPORT_ALERT_ACTION_BLOCK_REPORT" value:&stru_100361FD0 table:@"InCallService"];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000FBFF4;
    v28[3] = &unk_100359750;
    objc_copyWeak(&v31, location);
    v29 = v16;
    v21 = v17;
    v30 = v21;
    v22 = [UIAlertAction actionWithTitle:v20 style:2 handler:v28];
    [v13 addAction:v22];

    v23 = +[NSBundle mainBundle];
    v24 = [v23 localizedStringForKey:@"BLOCK_REPORT_ALERT_ACTION_CANCEL" value:&stru_100361FD0 table:@"InCallService"];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000FC0B4;
    v26[3] = &unk_1003582A0;
    v27 = v21;
    v25 = [UIAlertAction actionWithTitle:v24 style:1 handler:v26];
    [v13 addAction:v25];

    [controllerCopy presentModalViewController:v13 animated:1];
    objc_destroyWeak(&v31);

    objc_destroyWeak(&v35);
    objc_destroyWeak(location);
  }
}

- (void)routesChangedForRouteController:(id)controller
{
  [(PHInCallRootViewController *)self updateDesiredSpringboardBehavior];
  routeListController = [(PHInCallRootViewController *)self routeListController];
  [routeListController reload];
}

- (void)viewControllerDidRequestTemporaryPreventSuspension:(id)suspension
{
  v4 = +[UIApplication sharedApplication];
  delegate = [v4 delegate];
  [delegate acquireLongPreventSuspensionAssertion];
}

- (void)viewController:(id)controller fullScreenFocusedParticipantOrientationChanged:(int64_t)changed
{
  v6 = +[PHPIPController defaultPIPController];
  pipState = [v6 pipState];

  if (pipState == 2)
  {
    v8 = +[PHPIPController defaultPIPController];
    pipContentViewController = [v8 pipContentViewController];
    view = [pipContentViewController view];
    [view frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    if ([v8 pipState] == 2 && (v18 == CGSizeZero.height ? (v19 = v16 == CGSizeZero.width) : (v19 = 0), !v19 ? (v20 = v16 == v18) : (v20 = 0), v20))
    {
      v21 = sub_10000B2A0();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
        v27.origin.x = v12;
        v27.origin.y = v14;
        v27.size.width = v16;
        v27.size.height = v18;
        v23 = NSStringFromRect(v27);
        *buf = 138412290;
        v26 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Skipping orientation update to PIP since the PIP is square %@", buf, 0xCu);
      }
    }

    else
    {
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1000FC38C;
      v24[3] = &unk_100356988;
      v24[4] = self;
      [v8 rotatePIPDeviceOrientationTo:objc_msgSend(objc_opt_class() withCompletion:{"uiDeviceOrientationForCNKDeviceOrientation:", changed), v24}];
    }
  }
}

- (void)viewController:(id)controller fullScreenFocusedParticipantAspectRatioChanged:(CGSize)changed participantGridIsFullScreen:(BOOL)screen
{
  v5 = [PHPIPController defaultPIPController:controller];
  [v5 updatePIPSize];

  v6 = +[PHPIPController defaultPIPController];
  [v6 updatePIPFrame];
}

- (void)viewController:(id)controller localParticipantAspectRatioChanged:(CGSize)changed
{
  v4 = [PHPIPController defaultPIPController:controller];
  [v4 updatePIPSize];

  v5 = +[PHPIPController defaultPIPController];
  [v5 updatePIPFrame];
}

- (void)viewController:(id)controller pipSourceProviderNeedsUpdate:(id)update
{
  updateCopy = update;
  v5 = +[PHPIPController defaultPIPController];
  [v5 setSourceProvider:updateCopy];
}

- (void)participantsDidChangeLocation:(id)location
{
  v3 = +[PHPIPController defaultPIPController];
  [v3 updatePIPFrame];
}

- (void)updateBackgroundStartPipAuthorizationState
{
  featureFlags = [(PHInCallRootViewController *)self featureFlags];
  expanseEnabled = [featureFlags expanseEnabled];

  if (expanseEnabled)
  {
    multiwayViewController = [(PHInCallRootViewController *)self multiwayViewController];
    hasParticipantVideo = [multiwayViewController hasParticipantVideo];
    callDisplayStyleManager = [(PHInCallRootViewController *)self callDisplayStyleManager];
    callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

    v9 = +[PHPIPController defaultPIPController];
    v10 = sub_100004F84();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 67109888;
      v24 = hasParticipantVideo;
      v25 = 2048;
      *v26 = callDisplayStyle;
      *&v26[8] = 1024;
      *v27 = [multiwayViewController isPipped];
      *&v27[4] = 2048;
      pipState = [v9 pipState];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "hasParticipantVideo changed (hasParticipantVideo: %d, callDisplayStyle: %ld, isPipped: %d pipState: %lu)", &v23, 0x22u);
    }

    [v9 setHasParticipantVideoForActiveConversation:hasParticipantVideo];
    [v9 updateShouldPIPWhenEnteringBackground];
    callCenter = [(PHInCallRootViewController *)self callCenter];
    frontmostAudioOrVideoCall = [callCenter frontmostAudioOrVideoCall];

    if ([frontmostAudioOrVideoCall isConnected])
    {
      v13 = 0;
    }

    else
    {
      if (([multiwayViewController isOneToOneModeEnabled] & 1) == 0)
      {
        v14 = multiwayViewController == 0;
        goto LABEL_19;
      }

      v13 = [frontmostAudioOrVideoCall status] != 3;
    }

    v14 = multiwayViewController == 0;
    if (multiwayViewController && !v13)
    {
      if (callDisplayStyle == 4)
      {
        v15 = hasParticipantVideo;
      }

      else
      {
        v15 = 0;
      }

      if (v15 == 1 && ![v9 pipState])
      {
        v16 = +[UIApplication sharedApplication];
        delegate = [v16 delegate];
        call = [multiwayViewController call];
        [delegate requestBackgroundPiPAuthorizationOfDismissedInCallSceneForCall:call];
      }

      else
      {
        v16 = +[UIApplication sharedApplication];
        delegate = [v16 delegate];
        [delegate revokeAndRemoveBackgroundPiPAuthorizationForSceneTypeIfNeeded:0];
      }

      if ((hasParticipantVideo & 1) == 0)
      {
        [v9 cancelPIPIfNeeded];
      }

LABEL_22:

      return;
    }

LABEL_19:
    v18 = sub_100004F84();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      isConnected = [frontmostAudioOrVideoCall isConnected];
      status = [frontmostAudioOrVideoCall status];
      isOneToOneModeEnabled = [multiwayViewController isOneToOneModeEnabled];
      v23 = 67109888;
      v24 = isConnected;
      v25 = 1024;
      *v26 = status;
      *&v26[4] = 1024;
      *&v26[6] = isOneToOneModeEnabled;
      *v27 = 1024;
      *&v27[2] = v14;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "skipping updating background start pip authorization; call is connected %d or call status %d or call isOneToOneModeEnabled %d or multiway view controller is nil %d", &v23, 0x1Au);
    }

    goto LABEL_22;
  }
}

- (void)viewController:(id)controller mediaPipSafeAreaFrameChanged:(CGRect)changed
{
  height = changed.size.height;
  width = changed.size.width;
  y = changed.origin.y;
  x = changed.origin.x;
  controllerCopy = controller;
  multiwayViewController = [(PHInCallRootViewController *)self multiwayViewController];
  featureFlags = [(PHInCallRootViewController *)self featureFlags];
  expanseEnabled = [featureFlags expanseEnabled];

  if (expanseEnabled && multiwayViewController == controllerCopy)
  {
    v13 = +[UIApplication sharedApplication];
    delegate = [v13 delegate];
    currentInCallScene = [delegate currentInCallScene];

    v51.origin.x = x;
    v51.origin.y = y;
    v51.size.width = width;
    v51.size.height = height;
    if (CGRectIsEmpty(v51))
    {
      top = UIEdgeInsetsZero.top;
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
    }

    else
    {
      view = [multiwayViewController view];
      coordinateSpace = [currentInCallScene coordinateSpace];
      [view convertRect:coordinateSpace toCoordinateSpace:{x, y, width, height}];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;

      coordinateSpace2 = [currentInCallScene coordinateSpace];
      [coordinateSpace2 bounds];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;

      v52.origin.x = v23;
      v46 = v23;
      v52.origin.y = v25;
      v52.size.width = v27;
      v52.size.height = v29;
      MinY = CGRectGetMinY(v52);
      v53.origin.x = v32;
      v53.origin.y = v34;
      v53.size.width = v36;
      v53.size.height = v38;
      v48 = MinY - CGRectGetMinY(v53);
      v54.origin.x = v23;
      v54.origin.y = v25;
      v54.size.width = v27;
      v54.size.height = v29;
      MinX = CGRectGetMinX(v54);
      v55.origin.x = v32;
      v55.origin.y = v34;
      v55.size.width = v36;
      v55.size.height = v38;
      v45 = MinX - CGRectGetMinX(v55);
      v56.origin.x = v32;
      v56.origin.y = v34;
      v56.size.width = v36;
      v56.size.height = v38;
      MaxY = CGRectGetMaxY(v56);
      v57.origin.x = v46;
      v57.origin.y = v25;
      v57.size.width = v27;
      v57.size.height = v29;
      v40 = MaxY - CGRectGetMaxY(v57);
      v58.origin.x = v32;
      v58.origin.y = v34;
      v58.size.width = v36;
      left = v45;
      v58.size.height = v38;
      bottom = v40;
      MaxX = CGRectGetMaxX(v58);
      v59.origin.x = v46;
      v59.origin.y = v25;
      v59.size.width = v27;
      v59.size.height = v29;
      right = MaxX - CGRectGetMaxX(v59);
      top = v48;
    }

    v42 = sub_100004F84();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v60.top = top;
      v60.left = left;
      v60.bottom = bottom;
      v60.right = right;
      v43 = NSStringFromUIEdgeInsets(v60);
      *buf = 138412290;
      v50 = v43;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "mediaPipSafeAreaInsetsInScene changed to %@", buf, 0xCu);
    }

    [currentInCallScene setExpanseHUDDodgingInsets:{top, left, bottom, right}];
  }
}

- (double)viewController:(id)controller rubberBandConstrained:(double)constrained inRange:(double)range
{
  controllerCopy = controller;
  BSUIConstrainValueWithRubberBand();
  viewIfLoaded = [controllerCopy viewIfLoaded];

  UIRoundToViewScale();
  v8 = v7;

  return v8;
}

- (id)audioRouteMenu
{
  routeListController = [(PHInCallRootViewController *)self routeListController];

  if (!routeListController)
  {
    v4 = [PHAudioRoutingMenuController menuControllerWithCallStyle:1 dataSource:self delegate:self];
    [(PHInCallRootViewController *)self setRouteListController:v4];
  }

  routeListController2 = [(PHInCallRootViewController *)self routeListController];
  menu = [routeListController2 menu];

  return menu;
}

- (id)audioRouteGlyphFor:(id)for buttonStyle:(int64_t)style
{
  if (style > 6)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_1002F9508[style];
  }

  return [for audioRouteGlyphForDisplayStyle:v5];
}

- (UIImage)audioRouteGlyphForDevice
{
  v2 = +[PHDevice currentDevice];
  audioRouteGlyphImage = [v2 audioRouteGlyphImage];

  return audioRouteGlyphImage;
}

- (id)callParticipantLabelsViewForViewController:(id)controller
{
  controllerCopy = controller;
  multiwayViewController = [(PHInCallRootViewController *)self multiwayViewController];

  if (multiwayViewController == controllerCopy)
  {
    callParticipantLabelsView = self->_callParticipantLabelsView;
    if (!callParticipantLabelsView)
    {
      v8 = [PHCallParticipantsView alloc];
      callDisplayStyleManager = [(PHInCallRootViewController *)self callDisplayStyleManager];
      v10 = [(PHCallParticipantsView *)v8 initWithCallDisplayStyleManager:callDisplayStyleManager];
      v11 = self->_callParticipantLabelsView;
      self->_callParticipantLabelsView = v10;

      v12 = sub_100004F84();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = self->_callParticipantLabelsView;
        v15 = 138412546;
        v16 = controllerCopy;
        v17 = 2112;
        v18 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "View controller %@ requested a call participant label view: %@", &v15, 0x16u);
      }

      [(PHCallParticipantsView *)self->_callParticipantLabelsView setAutoresizingMask:37];
      [(PHCallParticipantsView *)self->_callParticipantLabelsView setUserInteractionEnabled:1];
      [(PHCallParticipantsView *)self->_callParticipantLabelsView setDelegate:self];
      [(PHCallParticipantsView *)self->_callParticipantLabelsView setPreservesSuperviewLayoutMargins:1];
      [(PHInCallRootViewController *)self updateUPlusOneVideoCallViews];
      callParticipantLabelsView = self->_callParticipantLabelsView;
    }

    v6 = callParticipantLabelsView;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)updateCallParticipantLabelsViewForViewController:(id)controller
{
  controllerCopy = controller;
  multiwayViewController = [(PHInCallRootViewController *)self multiwayViewController];

  if (multiwayViewController == controllerCopy)
  {
    callParticipantLabelsView = self->_callParticipantLabelsView;

    if (callParticipantLabelsView)
    {

      [(PHInCallRootViewController *)self updateUPlusOneVideoCallViews];
    }
  }

  else
  {
  }
}

- (id)bottomControlsViewForViewController:(id)controller
{
  controllerCopy = controller;
  multiwayViewController = [(PHInCallRootViewController *)self multiwayViewController];

  if (multiwayViewController == controllerCopy)
  {
    bottomControlsView = self->_bottomControlsView;
    if (!bottomControlsView)
    {
      v8 = [PHBottomBar alloc];
      callDisplayStyleManager = [(PHInCallRootViewController *)self callDisplayStyleManager];
      v10 = [(PHBottomBar *)v8 initWithCallDisplayStyleManager:callDisplayStyleManager];
      v11 = self->_bottomControlsView;
      self->_bottomControlsView = v10;

      [(PHBottomBar *)self->_bottomControlsView setDelegate:self];
      v12 = [UIView alloc];
      v13 = +[UIScreen mainScreen];
      [v13 bounds];
      v15 = v14;
      v16 = +[UIScreen mainScreen];
      [v16 bounds];
      v17 = [v12 initWithFrame:{0.0, 0.0, v15}];
      [PHCallViewController _bottomBarBottomMarginForView:v17];
      [(PHBottomBar *)self->_bottomControlsView setBottomMargin:?];

      [(PHBottomBar *)self->_bottomControlsView setUsesLowerButtons:1];
      +[PHCallViewController _yOffsetForLoweredButtons];
      [(PHBottomBar *)self->_bottomControlsView setYOffsetForLoweredButtons:?];
      [(PHInCallRootViewController *)self updateUPlusOneVideoCallViews];
      bottomControlsView = self->_bottomControlsView;
    }

    v6 = bottomControlsView;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int64_t)uiDeviceOrientationForCNKDeviceOrientation:(int64_t)orientation
{
  if (orientation > 3)
  {
    return 0;
  }

  else
  {
    return qword_1002F9540[orientation];
  }
}

+ (int64_t)cnkDeviceOrientationForUIDeviceOrientation:(int64_t)orientation
{
  if ((orientation - 2) > 2)
  {
    return 1;
  }

  else
  {
    return qword_1002F9560[orientation - 2];
  }
}

+ (int64_t)cnkSupportedDeviceOrientationsFromUIInterfaceOrientationMask:(unint64_t)mask
{
  v3 = (~mask & 0x18) == 0;
  if ((mask & 2) != 0)
  {
    v3 = 0;
  }

  if ((~mask & 0x1E) != 0)
  {
    return v3;
  }

  else
  {
    return 2;
  }
}

- (BOOL)isShownAboveCoverSheet
{
  inCallWindowScene = [(PHInCallRootViewController *)self inCallWindowScene];
  isBeingShownAboveCoverSheet = [inCallWindowScene isBeingShownAboveCoverSheet];

  return isBeingShownAboveCoverSheet;
}

- (void)unansweredCallUIDismissed
{
  v2 = +[UIApplication sharedApplication];
  delegate = [v2 delegate];
  [delegate setMostRecentlyDisconnectedVideoCall:0];

  v4 = [NSSet setWithObjects:@"PHMulitwayCallAssertionReason", @"PHVideoMessageInProgressAssertionReason", 0];
  [PHInCallRootViewController releaseDismissalAssertionReasons:v4];
}

- (BOOL)usesPaddingInsteadOfSafeArea
{
  v2 = +[CNKFeatures sharedInstance];
  isICUIRedesignEnabled = [v2 isICUIRedesignEnabled];

  return isICUIRedesignEnabled;
}

- (id)routesForAudioRoutingMenuController:(id)controller
{
  callCenter = [(PHInCallRootViewController *)self callCenter];
  routeController = [callCenter routeController];
  sortedRoutes = [routeController sortedRoutes];

  return sortedRoutes;
}

- (void)audioRoutingMenuController:(id)controller didSelectRoute:(id)route
{
  routeCopy = route;
  callCenter = [(PHInCallRootViewController *)self callCenter];
  routeController = [callCenter routeController];
  [routeController pickRoute:routeCopy];
}

- (void)conversationManager:(id)manager activeRemoteParticipantsChangedForConversation:(id)conversation
{
  conversationCopy = conversation;
  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = conversationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updating call controller because active remote participants changed for conversation %@", &v7, 0xCu);
  }

  [(PHInCallRootViewController *)self updateCallControllerForCurrentState];
}

- (void)handleActivationContextDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleActivationContextDidChangeNotification: %@", &v6, 0xCu);
  }

  [(PHInCallRootViewController *)self handleSOSActivationIfNecessary];
  [(PHInCallRootViewController *)self handleScreenTimeActivationIfNecessary];
}

- (void)handleSOSActivationIfNecessary
{
  v3 = +[UIApplication sharedApplication];
  delegate = [v3 delegate];
  shouldActivateSOS = [delegate shouldActivateSOS];

  if (shouldActivateSOS)
  {
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Requesting SOS UI", v7, 2u);
    }

    [(PHInCallRootViewController *)self forceUpdateCallControllerForSOS];
    [(PHInCallRootViewController *)self dismissScreenTimeAlertHostIfNeeded];
  }
}

- (void)handleScreenTimeActivationIfNecessary
{
  v3 = +[UIApplication sharedApplication];
  delegate = [v3 delegate];
  activationContext = [delegate activationContext];
  pendingRestrictedScreenTimeRequest = [activationContext pendingRestrictedScreenTimeRequest];

  if (pendingRestrictedScreenTimeRequest)
  {
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = +[UIApplication sharedApplication];
      delegate2 = [v8 delegate];
      activationContext2 = [delegate2 activationContext];
      pendingRestrictedScreenTimeRequest2 = [activationContext2 pendingRestrictedScreenTimeRequest];
      v18 = 138412290;
      v19 = pendingRestrictedScreenTimeRequest2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Will request screen time alert for request %@", &v18, 0xCu);
    }

    v12 = +[UIApplication sharedApplication];
    delegate3 = [v12 delegate];
    activationContext3 = [delegate3 activationContext];
    pendingRestrictedScreenTimeRequest3 = [activationContext3 pendingRestrictedScreenTimeRequest];
    [(PHInCallRootViewController *)self forceUpdateCallControllerForFilteredRequest:pendingRestrictedScreenTimeRequest3];

    v16 = +[UIApplication sharedApplication];
    delegate4 = [v16 delegate];
    [delegate4 setActivationContext:0];
  }
}

- (void)callDisplayStyleDidChangeFromStyle:(int64_t)style toStyle:(int64_t)toStyle
{
  v7 = toStyle == 4;
  callManager = [(PHInCallRootViewController *)self callManager];
  [callManager setIsInBackground:v7];

  if (style == 4 && toStyle == 2)
  {
    v9 = sub_100004F84();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v54[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "In-call UI was just presented full-screen, updating shouldPIPWhenEnteringBackground and IncomingBottomBarControlState", v54, 2u);
    }

    v10 = +[PHPIPController defaultPIPController];
    [v10 updateShouldPIPWhenEnteringBackground];

    audioCallViewControllerIfLoaded = [(PHInCallRootViewController *)self audioCallViewControllerIfLoaded];
    [audioCallViewControllerIfLoaded updateIncomingBottomBarControlState];
  }

  if (style == 1 || toStyle == 1)
  {
    [(PHInCallRootViewController *)self updateVideoState];
    [(PHInCallRootViewController *)self showHideMiniWindowViewIfNeededAnimated:style != 4];
  }

  featureFlags = [(PHInCallRootViewController *)self featureFlags];
  if ([featureFlags conversationOneToOneModeEnabled])
  {
    currentViewControllerIsMultiway = [(PHInCallRootViewController *)self currentViewControllerIsMultiway];
    if (style == 2)
    {
      if (currentViewControllerIsMultiway)
      {
        multiwayViewController = [(PHInCallRootViewController *)self multiwayViewController];
        shouldDisconnectOnDismissal = [multiwayViewController shouldDisconnectOnDismissal];

        if (!shouldDisconnectOnDismissal)
        {
          goto LABEL_15;
        }

        featureFlags = [(PHInCallRootViewController *)self callCenter];
        multiwayViewController2 = [(PHInCallRootViewController *)self multiwayViewController];
        call = [multiwayViewController2 call];
        [featureFlags disconnectCall:call withReason:2];
      }
    }
  }

LABEL_15:
  v19 = toStyle == 4 || toStyle == 2;
  currentViewControllerIsMultiway2 = [(PHInCallRootViewController *)self currentViewControllerIsMultiway];
  if (!style && v19 && currentViewControllerIsMultiway2)
  {
    multiwayViewController3 = [(PHInCallRootViewController *)self multiwayViewController];
    [multiwayViewController3 setDidExpandIncomingCallBanner:1];
  }

  [(PHInCallRootViewController *)self updateMultiwayViewControllerUIState];
  [(PHInCallRootViewController *)self updateCallDetailsViewIsOnScreen];
  if (toStyle == 4)
  {
    [(PHInCallRootViewController *)self cancelAutoAnswer];
    v22 = +[PHInCallUtilities sharedInstance];
    [v22 stopSuppressingInCallStatusBarForReason:@"PHSuppressInCallStatusBarForFullscreenUIReason"];

    [(PHInCallRootViewController *)self dismissSOSIfNeeded];
    [(PHInCallRootViewController *)self dismissScreenTimeAlertHostIfNeeded];
    [(PHInCallRootViewController *)self dismissViewControllersWithSensitiveInformation];
    v23 = +[UIApplication sharedApplication];
    delegate = [v23 delegate];
    bannerPresentationManager = [delegate bannerPresentationManager];
    [(PHInCallRootViewController *)self dissmissConfirmLeavePTTChannelAlertIfNeededWithBannerPresentationManager:bannerPresentationManager];

    v26 = +[UIApplication sharedApplication];
    delegate2 = [v26 delegate];
    if ([delegate2 didDeepLinkToPTTCallDetailsView])
    {
      v28 = [qword_1003B0ED8 containsObject:@"PHPTTCallDetailsViewAssertionReason"];

      if (v28)
      {
        v29 = +[UIApplication sharedApplication];
        delegate3 = [v29 delegate];
        [delegate3 setDidDeepLinkToPTTCallDetailsView:0];

        [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHPTTCallDetailsViewAssertionReason"];
      }
    }

    else
    {
    }

    v32 = +[UIApplication sharedApplication];
    delegate4 = [v32 delegate];
    allInCallScenes = [delegate4 allInCallScenes];
    v35 = [allInCallScenes count];

    if (v35 == 1)
    {
      v36 = +[PHIntervalTimer oneSecondTimer];
      [v36 pause];
    }

    v37 = +[UIApplication sharedApplication];
    delegate5 = [v37 delegate];
    callCenter = [(PHInCallRootViewController *)self callCenter];
    v31 = [delegate5 currentVideoCallUsingCallContainer:callCenter];

    callCenter2 = [(PHInCallRootViewController *)self callCenter];
    v41 = [callCenter2 callPassingTest:&stru_100359770];

    if (!(v31 | v41))
    {
      multiwayViewController4 = [(PHInCallRootViewController *)self multiwayViewController];
      isInVideoMessageFlow = [multiwayViewController4 isInVideoMessageFlow];

      if ((isInVideoMessageFlow & 1) == 0)
      {
        [objc_opt_class() releaseDismissalAssertionForReason:@"PHMulitwayCallAssertionReason"];
        if ([qword_1003B0ED8 containsObject:@"PHCallEndedBlockAndReportInProgressAssertionReason"])
        {
          v44 = sub_100004F84();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v54[0]) = 0;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Dismissing PHCallEndedBlockAndReportInProgressAssertionReason because display style is dismissed.", v54, 2u);
          }

          multiwayViewController5 = [(PHInCallRootViewController *)self multiwayViewController];
          [multiwayViewController5 setIsInCallEndedBlockAndReportFlow:0];

          [objc_opt_class() releaseDismissalAssertionForReason:@"PHCallEndedBlockAndReportInProgressAssertionReason"];
        }

        v46 = +[UIApplication sharedApplication];
        delegate6 = [v46 delegate];
        [delegate6 setMostRecentlyDisconnectedVideoCall:0];
      }
    }
  }

  else
  {
    if (style != 4)
    {
      goto LABEL_43;
    }

    v31 = +[PHIntervalTimer oneSecondTimer];
    [v31 resume];
  }

LABEL_43:
  v48 = sub_100004F84();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    isCurrentViewControllerAudio = [(PHInCallRootViewController *)self isCurrentViewControllerAudio];
    parentViewController = [(PHInCallRootViewController *)self parentViewController];
    view = [(PHInCallRootViewController *)self view];
    window = [view window];
    childViewControllers = [(PHInCallRootViewController *)self childViewControllers];
    v54[0] = 67109890;
    v54[1] = isCurrentViewControllerAudio;
    v55 = 2112;
    v56 = parentViewController;
    v57 = 2112;
    v58 = window;
    v59 = 2112;
    v60 = childViewControllers;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "PHInCallRootViewController - isCurrentViewControllerAudio: %d, my parent: %@, window: %@, children: %@", v54, 0x26u);
  }

  [(PHInCallRootViewController *)self updateBannerTapGestureRecognizerForCallDisplayStyle:toStyle];
  [(PHInCallRootViewController *)self notifyAudioCallControllerIfNecessaryCallDisplayStyleDidChangeFromStyle:style toStyle:toStyle];
}

- (BOOL)currentViewControllerIsMultiway
{
  multiwayViewController = [(PHInCallRootViewController *)self multiwayViewController];
  parentViewController = [multiwayViewController parentViewController];
  if (parentViewController)
  {
    currentViewController = [(PHInCallRootViewController *)self currentViewController];
    videoCallNavigationController = [(PHInCallRootViewController *)self videoCallNavigationController];
    if (currentViewController == videoCallNavigationController)
    {
      videoCallNavigationController2 = [(PHInCallRootViewController *)self videoCallNavigationController];
      topViewController = [videoCallNavigationController2 topViewController];
      if ([topViewController conformsToProtocol:&OBJC_PROTOCOL___CNKMultiwayViewControllerProtocol])
      {
        isInVideoMessageFlow = 1;
      }

      else
      {
        multiwayViewController2 = [(PHInCallRootViewController *)self multiwayViewController];
        isInVideoMessageFlow = [multiwayViewController2 isInVideoMessageFlow];
      }
    }

    else
    {
      isInVideoMessageFlow = 0;
    }
  }

  else
  {
    isInVideoMessageFlow = 0;
  }

  return isInVideoMessageFlow;
}

- (BOOL)isCurrentViewControllerAudio
{
  audioCallViewControllerIfLoaded = [(PHInCallRootViewController *)self audioCallViewControllerIfLoaded];
  parentViewController = [audioCallViewControllerIfLoaded parentViewController];
  if (parentViewController)
  {
    currentViewController = [(PHInCallRootViewController *)self currentViewController];
    audioCallNavigationController = [(PHInCallRootViewController *)self audioCallNavigationController];
    v7 = currentViewController == audioCallNavigationController;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isShowing6UP
{
  isCurrentViewControllerAudio = [(PHInCallRootViewController *)self isCurrentViewControllerAudio];
  if (isCurrentViewControllerAudio)
  {
    audioCallViewControllerIfLoaded = [(PHInCallRootViewController *)self audioCallViewControllerIfLoaded];
    isShowing6UP = [audioCallViewControllerIfLoaded isShowing6UP];

    LOBYTE(isCurrentViewControllerAudio) = isShowing6UP;
  }

  return isCurrentViewControllerAudio;
}

- (BOOL)isMicIndicatorVisible
{
  if ([(PHInCallRootViewController *)self isShowing6UP])
  {
    return 1;
  }

  return [(PHInCallRootViewController *)self isShowingHUD];
}

- (void)updateVideoState
{
  topViewController = [(UINavigationController *)self->_videoCallNavigationController topViewController];
  v4 = [topViewController conformsToProtocol:&OBJC_PROTOCOL___CNKMultiwayViewControllerProtocol];
  if (!topViewController || (v4 & 1) != 0)
  {
    if ([(PHInCallRootViewController *)self isDisplayStyleMiniWindow])
    {
      [topViewController muteVideo];
    }

    else
    {
      [topViewController updateVideoState];
    }
  }

  else
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1002568D0(topViewController, self, v5);
    }
  }
}

- (void)notifyAudioCallControllerIfNecessaryCallDisplayStyleDidChangeFromStyle:(int64_t)style toStyle:(int64_t)toStyle
{
  audioCallNavigationController = [(PHInCallRootViewController *)self audioCallNavigationController];
  if (audioCallNavigationController)
  {
    audioCallNavigationController2 = [(PHInCallRootViewController *)self audioCallNavigationController];
    view = [audioCallNavigationController2 view];
    superview = [view superview];
    v11 = superview == 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_100004F84();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v17[0] = 67109120;
    v17[1] = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "PHInCallRootViewController - audioCallControllerExistsOutsideHierarchy: %d", v17, 8u);
  }

  if (style == 0 && v11)
  {
    audioCallViewControllerIfLoaded = [(PHInCallRootViewController *)self audioCallViewControllerIfLoaded];
    [ICSCallDisplayStyleManager notifyAllRespondersForViewController:audioCallViewControllerIfLoaded callDisplayStyleDidChangeFromStyle:0 toStyle:toStyle];

    featureFlags = [(PHInCallRootViewController *)self featureFlags];
    LODWORD(audioCallViewControllerIfLoaded) = [featureFlags audioCallUIModernizationEnabled];

    if (audioCallViewControllerIfLoaded)
    {
      audioCallViewControllerWrapper = [(PHInCallRootViewController *)self audioCallViewControllerWrapper];
      viewController = [audioCallViewControllerWrapper viewController];
      [ICSCallDisplayStyleManager notifyAllRespondersForViewController:viewController callDisplayStyleDidChangeFromStyle:0 toStyle:toStyle];
    }
  }
}

- (void)updateBannerTapGestureRecognizerForCallDisplayStyle:(int64_t)style
{
  v3 = style == 0;
  bannerTapGestureRecognizer = [(PHInCallRootViewController *)self bannerTapGestureRecognizer];
  [bannerTapGestureRecognizer setEnabled:v3];
}

- (void)bannerTapped:(id)tapped
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Transitioning scene to full screen due to tap", buf, 2u);
  }

  inCallWindowScene = [(PHInCallRootViewController *)self inCallWindowScene];

  if (inCallWindowScene)
  {
    TUDispatchMainIfNecessary();
  }
}

- (void)updateUPlusOneVideoCallViews
{
  inCallState = [(PHInCallRootViewController *)self inCallState];
  v4 = +[UIApplication sharedApplication];
  delegate = [v4 delegate];
  callCenter = [(PHInCallRootViewController *)self callCenter];
  v7 = [delegate currentVideoCallUsingCallContainer:callCenter];

  callCenter2 = [(PHInCallRootViewController *)self callCenter];
  v9 = [callCenter2 activeConversationForCall:v7];

  if ((inCallState & 0xFFFE) == 4)
  {
    v10 = +[UIApplication sharedApplication];
    delegate2 = [v10 delegate];
    currentInCallScene = [delegate2 currentInCallScene];
    if ([currentInCallScene presentationMode] == 1)
    {
      resolvedAudioVideoMode = [v9 resolvedAudioVideoMode];

      if (resolvedAudioVideoMode == 2)
      {
        v14 = sub_100004F84();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v25 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Transitioning to fullscreen since we're transitioning to show an active video call", v25, 2u);
        }

        [(PHInCallRootViewController *)self requestInCallSceneTransitionToFullScreen];
      }
    }

    else
    {
    }
  }

  else if (!inCallState)
  {
    callDurationTimerForParticipantsView = [(PHInCallRootViewController *)self callDurationTimerForParticipantsView];
    [callDurationTimerForParticipantsView invalidate];

    [(PHInCallRootViewController *)self setCallDurationTimerForParticipantsView:0];
  }

  traitCollection = [(PHInCallRootViewController *)self traitCollection];
  v17 = [traitCollection _backlightLuminance] != 1;

  v18 = [(PHInCallRootViewController *)self updateContactInformationForParticipantViewWithInCallState:inCallState];
  v19 = [(PHInCallRootViewController *)self updateSecondaryStringForParticipantViewWithInCallState:inCallState allowsDuration:v17];
  if (!v18)
  {
LABEL_15:
    if (!v19)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  link = [v9 link];
  displayName = [link displayName];

  if (!displayName || !v19)
  {
    [(PHInCallRootViewController *)self setContactNameForParticipantsView:v18];
    goto LABEL_15;
  }

  [(PHInCallRootViewController *)self setSecondaryStringForParticipantsView:v19];
LABEL_16:
  link2 = [v9 link];
  displayName2 = [link2 displayName];

  if (v18 && displayName2)
  {
    [(PHInCallRootViewController *)self setContactNameForParticipantsView:v18];
  }

  else
  {
    [(PHInCallRootViewController *)self setSecondaryStringForParticipantsView:v19];
  }

LABEL_20:
  callParticipantLabelsView = [(PHInCallRootViewController *)self callParticipantLabelsView];
  [callParticipantLabelsView updateParticipants];

  [(PHInCallRootViewController *)self updateBottomControlsViewWithInCallState:inCallState];
}

- (unsigned)inCallState
{
  callCenter = [(PHInCallRootViewController *)self callCenter];
  currentCallCount = [callCenter currentCallCount];

  callCenter2 = [(PHInCallRootViewController *)self callCenter];
  currentVideoCallCount = [callCenter2 currentVideoCallCount];

  callCenter3 = [(PHInCallRootViewController *)self callCenter];
  currentVideoCalls = [callCenter3 currentVideoCalls];

  v9 = sub_100004F84();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v41 = 138412290;
    v42[0] = currentVideoCalls;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState for non final chats %@", &v41, 0xCu);
  }

  if (currentVideoCallCount)
  {
    if (!currentCallCount && currentVideoCallCount == 1)
    {
      lastObject = [currentVideoCalls lastObject];
      if ([lastObject status]== 4 || [lastObject wantsHoldMusic])
      {
        displayedCalls = sub_100004F84();
        if (os_log_type_enabled(displayedCalls, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [lastObject status]== 4;
          wantsHoldMusic = [lastObject wantsHoldMusic];
          v41 = 67109376;
          LODWORD(v42[0]) = v12;
          WORD2(v42[0]) = 1024;
          *(v42 + 6) = wantsHoldMusic;
          _os_log_impl(&_mh_execute_header, displayedCalls, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call status is TUCallStatusRinging (%d) or call wants hold music (%d), setting state to PHInCallStateIncomingRinging", &v41, 0xEu);
        }

        v14 = 1;
        goto LABEL_38;
      }

      if ([lastObject status]== 3)
      {
        displayedCalls = sub_100004F84();
        if (os_log_type_enabled(displayedCalls, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v41) = 0;
          v25 = "UpdateCurrentState: Call status is TUCallStatusSending, setting state to PHInCallStateOutgoingRinging";
LABEL_44:
          v14 = 2;
          _os_log_impl(&_mh_execute_header, displayedCalls, OS_LOG_TYPE_DEFAULT, v25, &v41, 2u);
          goto LABEL_38;
        }

        goto LABEL_50;
      }

      if ([lastObject status]== 1 && [lastObject isEndpointOnCurrentDevice])
      {
        displayedCalls = sub_100004F84();
        if (os_log_type_enabled(displayedCalls, OS_LOG_TYPE_DEFAULT))
        {
          isHostedOnCurrentDevice = [lastObject isHostedOnCurrentDevice];
          callCenter4 = [(PHInCallRootViewController *)self callCenter];
          routeController = [callCenter4 routeController];
          pickedRoute = [routeController pickedRoute];
          deviceType = [pickedRoute deviceType];
          v41 = 67109376;
          LODWORD(v42[0]) = isHostedOnCurrentDevice;
          WORD2(v42[0]) = 2048;
          *(v42 + 6) = deviceType;
          _os_log_impl(&_mh_execute_header, displayedCalls, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call status is TUCallStatusActive, setting state to PHInCallStateSingleCallActive (hosted: %d, endpoint: 1, pickedRouteDeviceType: %ld)", &v41, 0x12u);
        }

        v14 = 4;
        goto LABEL_38;
      }

      if ([lastObject status]== 1)
      {
        displayedCalls = sub_100004F84();
        if (os_log_type_enabled(displayedCalls, OS_LOG_TYPE_DEFAULT))
        {
          isHostedOnCurrentDevice2 = [lastObject isHostedOnCurrentDevice];
          callCenter5 = [(PHInCallRootViewController *)self callCenter];
          routeController2 = [callCenter5 routeController];
          pickedRoute2 = [routeController2 pickedRoute];
          deviceType2 = [pickedRoute2 deviceType];
          v41 = 67109376;
          LODWORD(v42[0]) = isHostedOnCurrentDevice2;
          WORD2(v42[0]) = 2048;
          *(v42 + 6) = deviceType2;
          _os_log_impl(&_mh_execute_header, displayedCalls, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call status is TUCallStatusActive, setting state to PHInCallStateIdle (hosted: %d, endpoint: 0, pickedRouteDeviceType: %ld)", &v41, 0x12u);
        }

        v14 = 0;
        goto LABEL_38;
      }

      if ([lastObject status]!= 5)
      {
        v14 = 0;
        goto LABEL_39;
      }

      displayedCalls = sub_100004F84();
      if (os_log_type_enabled(displayedCalls, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v41) = 0;
        goto LABEL_61;
      }

      goto LABEL_62;
    }

    callCenter6 = [(PHInCallRootViewController *)self callCenter];
    currentAudioAndVideoCallCount = [callCenter6 currentAudioAndVideoCallCount];

    if (currentAudioAndVideoCallCount >= 2)
    {
      v20 = +[UIApplication sharedApplication];
      delegate = [v20 delegate];
      callCenter7 = [(PHInCallRootViewController *)self callCenter];
      lastObject = [delegate currentVideoCallUsingCallContainer:callCenter7];

      if ([lastObject status]!= 4 && ![lastObject wantsHoldMusic])
      {
        if ([lastObject status]== 3)
        {
          displayedCalls = sub_100004F84();
          if (os_log_type_enabled(displayedCalls, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v41) = 0;
            v25 = "UpdateCurrentState: Current chat status is TUCallStatusSending, setting state to PHInCallStateOutgoingRinging";
            goto LABEL_44;
          }

LABEL_50:
          v14 = 2;
          goto LABEL_38;
        }

        status = [lastObject status];
        displayedCalls = sub_100004F84();
        v40 = os_log_type_enabled(displayedCalls, OS_LOG_TYPE_DEFAULT);
        if (status != 5)
        {
          if (v40)
          {
            LOWORD(v41) = 0;
            _os_log_impl(&_mh_execute_header, displayedCalls, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Multiple chats, setting state to PHInCallStateMultipleCallsActive", &v41, 2u);
          }

          v14 = 5;
          goto LABEL_38;
        }

        if (v40)
        {
          LOWORD(v41) = 0;
LABEL_61:
          _os_log_impl(&_mh_execute_header, displayedCalls, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call status is TUCallStatusDisconnecting, setting state to PHInCallStateEnding", &v41, 2u);
        }

LABEL_62:
        v14 = 6;
        goto LABEL_38;
      }

      callCenter8 = [(PHInCallRootViewController *)self callCenter];
      displayedCalls = [callCenter8 displayedCalls];

      if ([displayedCalls count])
      {
        firstObject = [displayedCalls firstObject];
      }

      else
      {
        firstObject = 0;
      }

      if ([lastObject wantsHoldMusic])
      {
        v26 = sub_100004F84();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v41) = 0;
          v27 = "UpdateCurrentState: Current video call wants hold music, setting state to PHInCallStateIncomingRinging";
LABEL_28:
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v27, &v41, 2u);
        }
      }

      else
      {
        if (currentCallCount != 1 || ![lastObject isVideoUpgradeFromCall:firstObject])
        {
          v26 = sub_100004F84();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v41) = 0;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Incoming chat and active chat, setting state to PHInCallStateCallWaiting", &v41, 2u);
          }

          v14 = 3;
          goto LABEL_37;
        }

        v26 = sub_100004F84();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v41) = 0;
          v27 = "UpdateCurrentState: Incoming chat that is an upgrade, setting state to PHInCallStateIncomingRinging";
          goto LABEL_28;
        }
      }

      v14 = 1;
LABEL_37:

LABEL_38:
LABEL_39:

      goto LABEL_40;
    }
  }

  else
  {
    v15 = +[UIApplication sharedApplication];
    delegate2 = [v15 delegate];
    mostRecentlyDisconnectedVideoCall = [delegate2 mostRecentlyDisconnectedVideoCall];

    if (mostRecentlyDisconnectedVideoCall)
    {
      lastObject = sub_100004F84();
      if (os_log_type_enabled(lastObject, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v41) = 0;
        _os_log_impl(&_mh_execute_header, lastObject, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call has been disconnected, setting state to PHInCallStateEnded", &v41, 2u);
      }

      v14 = 7;
      goto LABEL_39;
    }
  }

  v14 = 0;
LABEL_40:

  return v14;
}

- (id)updateContactInformationForParticipantViewWithInCallState:(unsigned __int16)state
{
  stateCopy = state;
  v5 = +[UIApplication sharedApplication];
  delegate = [v5 delegate];
  v7 = delegate;
  if (stateCopy == 7)
  {
    mostRecentlyDisconnectedVideoCall = [delegate mostRecentlyDisconnectedVideoCall];
  }

  else
  {
    callCenter = [(PHInCallRootViewController *)self callCenter];
    mostRecentlyDisconnectedVideoCall = [v7 currentVideoCallUsingCallContainer:callCenter];
  }

  if (!mostRecentlyDisconnectedVideoCall)
  {
    siriDisplayName2 = 0;
    goto LABEL_22;
  }

  v10 = [[TUContactsDataProviderFetchRequest alloc] initWithCall:mostRecentlyDisconnectedVideoCall];
  contactIdentifier = [mostRecentlyDisconnectedVideoCall contactIdentifier];
  [v10 setContactIdentifier:contactIdentifier];

  v33 = [CNAvatarView descriptorForRequiredKeysWithThreeDTouchEnabled:1];
  v34[0] = v33;
  v34[1] = CNContactImageDataAvailableKey;
  v12 = [NSArray arrayWithObjects:v34 count:2];
  [v10 setAuxiliaryKeysToFetch:v12];

  v32 = [CNContactStoreConfiguration tu_contactStoreConfigurationForCall:mostRecentlyDisconnectedVideoCall];
  v13 = [[CNContactStore alloc] initWithConfiguration:v32];
  v14 = [[TUContactsDataProvider alloc] initWithContactsDataSource:v13];
  v15 = [v14 executeFetchRequest:v10];
  handle = [mostRecentlyDisconnectedVideoCall handle];
  siriDisplayName = [handle siriDisplayName];
  if (siriDisplayName)
  {
    handle2 = [mostRecentlyDisconnectedVideoCall handle];
    shouldHideContact = [handle2 shouldHideContact];
  }

  else
  {
    shouldHideContact = 0;
  }

  contacts = [v15 contacts];
  v22 = [contacts count];

  if (v22 == 1 && (shouldHideContact & 1) == 0)
  {
    contacts2 = [v15 contacts];
    firstObject = [contacts2 firstObject];

    [(PHInCallRootViewController *)self setContactForParticipantsView:firstObject];
  }

  callCenter2 = [(PHInCallRootViewController *)self callCenter];
  v26 = [callCenter2 activeConversationForCall:mostRecentlyDisconnectedVideoCall];

  link = [v26 link];
  displayName = [link displayName];

  [(PHInCallRootViewController *)self setCallForParticipantsView:mostRecentlyDisconnectedVideoCall];
  if ([mostRecentlyDisconnectedVideoCall isConversation] && v26)
  {
    if (displayName)
    {
      displayName2 = displayName;
    }

    else
    {
      displayName2 = [v26 displayName];
    }

    goto LABEL_20;
  }

  if (!shouldHideContact)
  {
    displayName2 = [v15 localizedName];
LABEL_20:
    siriDisplayName2 = displayName2;
    goto LABEL_21;
  }

  handle3 = [mostRecentlyDisconnectedVideoCall handle];
  siriDisplayName2 = [handle3 siriDisplayName];

LABEL_21:
LABEL_22:

  return siriDisplayName2;
}

- (id)updateSecondaryStringForParticipantViewWithInCallState:(unsigned __int16)state allowsDuration:(BOOL)duration
{
  stateCopy = state;
  v7 = +[UIApplication sharedApplication];
  delegate = [v7 delegate];
  callCenter = [(PHInCallRootViewController *)self callCenter];
  v10 = [delegate currentVideoCallUsingCallContainer:callCenter];

  callCenter2 = [(PHInCallRootViewController *)self callCenter];
  v12 = [callCenter2 activeConversationForCall:v10];

  displayName2 = 0;
  if (stateCopy > 3)
  {
    if ((stateCopy - 4) < 2)
    {
      v23 = +[NSBundle conversationKit];
      mostRecentlyDisconnectedVideoCall = v23;
      v24 = @"STATUS_CONNECTING";
    }

    else
    {
      if (stateCopy != 6)
      {
        if (stateCopy != 7)
        {
          goto LABEL_49;
        }

        v18 = +[NSBundle conversationKit];
        displayName2 = [v18 localizedStringForKey:@"STATUS_ENDED" value:&stru_100361FD0 table:@"CallStatus"];

        v19 = +[UIApplication sharedApplication];
        delegate2 = [v19 delegate];
        mostRecentlyDisconnectedVideoCall = [delegate2 mostRecentlyDisconnectedVideoCall];

        if ([mostRecentlyDisconnectedVideoCall disconnectedReason] == 14)
        {
          v21 = @"STATUS_FAILED";
        }

        else
        {
          if ([mostRecentlyDisconnectedVideoCall disconnectedReason] != 15 && objc_msgSend(mostRecentlyDisconnectedVideoCall, "disconnectedReason") != 5)
          {
            goto LABEL_48;
          }

          v21 = @"STATUS_UNAVAILABLE";
        }

        v31 = +[NSBundle conversationKit];
        v32 = [v31 localizedStringForKey:v21 value:&stru_100361FD0 table:@"CallStatus"];

        displayName2 = v32;
        goto LABEL_48;
      }

      v23 = +[NSBundle conversationKit];
      mostRecentlyDisconnectedVideoCall = v23;
      v24 = @"STATUS_ENDING";
    }

    goto LABEL_46;
  }

  if (stateCopy <= 1)
  {
    if (stateCopy)
    {
      if (stateCopy != 1)
      {
        goto LABEL_49;
      }

      if ([v10 wantsHoldMusic])
      {
        v14 = +[NSBundle conversationKit];
        if (duration)
        {
          v15 = [v14 localizedStringForKey:@"%@_HOLD_MUSIC" value:&stru_100361FD0 table:@"CallStatus"];
          callDurationString = [v10 callDurationString];
          mostRecentlyDisconnectedVideoCall = [NSString stringWithFormat:v15, callDurationString];
        }

        else
        {
          mostRecentlyDisconnectedVideoCall = [v14 localizedStringForKey:@"HOLD_MUSIC" value:&stru_100361FD0 table:@"CallStatus"];
        }

        if ([v10 isConnected])
        {
          v33 = mostRecentlyDisconnectedVideoCall;
LABEL_47:
          displayName2 = v33;
          goto LABEL_48;
        }

        v34 = +[NSBundle conversationKit];
        displayName2 = [v34 localizedStringForKey:@"STATUS_CONNECTING" value:&stru_100361FD0 table:@"CallStatus"];

LABEL_48:
        goto LABEL_49;
      }

      goto LABEL_14;
    }

    v23 = +[NSBundle conversationKit];
    mostRecentlyDisconnectedVideoCall = v23;
    v24 = @"STATUS_ENDED";
LABEL_46:
    v33 = [v23 localizedStringForKey:v24 value:&stru_100361FD0 table:@"CallStatus"];
    goto LABEL_47;
  }

  if (stateCopy != 2)
  {
LABEL_14:
    if (v12)
    {
      v22 = [v12 resolvedAudioVideoMode] == 1;
    }

    else
    {
      v22 = 0;
    }

    link = [v12 link];
    if (link)
    {
      v28 = link;
      link2 = [v12 link];
      displayName = [link2 displayName];

      if (displayName)
      {
        displayName2 = [v10 displayName];
        goto LABEL_49;
      }
    }

    mostRecentlyDisconnectedVideoCall = +[NSBundle conversationKit];
    if (v22)
    {
      v24 = @"FACETIME_AUDIO_INCOMING";
    }

    else
    {
      v24 = @"FACETIME_VIDEO_INCOMING";
    }

    goto LABEL_45;
  }

  if (![v10 isConversation])
  {
    goto LABEL_42;
  }

  if (!v12)
  {
    goto LABEL_42;
  }

  link3 = [v12 link];
  if (!link3)
  {
    goto LABEL_42;
  }

  v26 = link3;
  if ([v12 letMeInRequestState] == 1)
  {

    goto LABEL_40;
  }

  letMeInRequestState = [v12 letMeInRequestState];

  if (letMeInRequestState != 2)
  {
LABEL_42:
    isConnecting = [v10 isConnecting];
    mostRecentlyDisconnectedVideoCall = +[NSBundle conversationKit];
    if (isConnecting)
    {
      v24 = @"STATUS_CONNECTING";
    }

    else
    {
      v24 = @"STATUS_WAITING";
    }

LABEL_45:
    v23 = mostRecentlyDisconnectedVideoCall;
    goto LABEL_46;
  }

LABEL_40:
  if ([v12 letMeInRequestState] == 2)
  {
    v23 = +[NSBundle conversationKit];
    mostRecentlyDisconnectedVideoCall = v23;
    v24 = @"FACETIME_VIDEO_WAITING_FOR_LET_IN";
    goto LABEL_46;
  }

  displayName2 = 0;
LABEL_49:

  return displayName2;
}

- (void)updateBottomControlsViewWithInCallState:(unsigned __int16)state
{
  if (state != 7)
  {
    if (state != 3)
    {
      if (state != 1)
      {
        goto LABEL_39;
      }

      v4 = +[UIApplication sharedApplication];
      delegate = [v4 delegate];
      callCenter = [(PHInCallRootViewController *)self callCenter];
      mostRecentlyDisconnectedVideoCall = [delegate incomingVideoCallUsingCallContainer:callCenter];

      bottomControlsView = [(PHInCallRootViewController *)self bottomControlsView];
      currentState = [bottomControlsView currentState];

      if (currentState == 9 || +[PHSOSViewController isSOSDismissalAssertionActive])
      {
        isReminderAllowed = 0;
        isMessagingAllowed = 0;
      }

      else
      {
        isMessagingAllowed = [mostRecentlyDisconnectedVideoCall isMessagingAllowed];
        isReminderAllowed = [mostRecentlyDisconnectedVideoCall isReminderAllowed];
      }

      callCenter2 = [(PHInCallRootViewController *)self callCenter];
      v22 = [callCenter2 activeConversationForCall:mostRecentlyDisconnectedVideoCall];

      if (v22 && [v22 resolvedAudioVideoMode] == 1)
      {
        if ([v22 isOneToOneModeEnabled])
        {
          v33 = 2;
        }

        else
        {
          v33 = 3;
        }
      }

      else
      {
        v33 = 1;
      }

      bottomControlsView2 = [(PHInCallRootViewController *)self bottomControlsView];
      v35 = +[UIApplication sharedApplication];
      delegate2 = [v35 delegate];
      currentInCallScene = [delegate2 currentInCallScene];
      if ([currentInCallScene isBeingShownAboveCoverSheet])
      {
        callCenter3 = [(PHInCallRootViewController *)self callCenter];
        if ([callCenter3 currentCallCount])
        {
          v39 = v33;
        }

        else
        {
          v39 = 6;
        }

        [bottomControlsView2 setCurrentState:v39];
      }

      else
      {
        [bottomControlsView2 setCurrentState:v33];
      }

      bottomControlsView3 = [(PHInCallRootViewController *)self bottomControlsView];
      [bottomControlsView3 setDeclineAndMessageIsAvailable:isMessagingAllowed];

      bottomControlsView4 = [(PHInCallRootViewController *)self bottomControlsView];
      [bottomControlsView4 setDeclineAndRemindIsAvailable:isReminderAllowed];

      bottomControlsView5 = [(PHInCallRootViewController *)self bottomControlsView];
      [bottomControlsView5 setUsesLowerButtons:0];

      goto LABEL_37;
    }

    v11 = +[UIApplication sharedApplication];
    delegate3 = [v11 delegate];
    callCenter4 = [(PHInCallRootViewController *)self callCenter];
    mostRecentlyDisconnectedVideoCall = [delegate3 incomingVideoCallUsingCallContainer:callCenter4];

    v14 = +[UIApplication sharedApplication];
    delegate4 = [v14 delegate];
    LOBYTE(callCenter4) = [delegate4 isPresentingAmbient];

    if ((callCenter4 & 1) == 0)
    {
      [(PHInCallRootViewController *)self requestInCallSceneTransitionToFullScreen];
    }

    isMessagingAllowed2 = [mostRecentlyDisconnectedVideoCall isMessagingAllowed];
    bottomControlsView6 = [(PHInCallRootViewController *)self bottomControlsView];
    [bottomControlsView6 setDeclineAndMessageIsAvailable:isMessagingAllowed2];

    isReminderAllowed2 = [mostRecentlyDisconnectedVideoCall isReminderAllowed];
    bottomControlsView7 = [(PHInCallRootViewController *)self bottomControlsView];
    [bottomControlsView7 setDeclineAndRemindIsAvailable:isReminderAllowed2];

    bottomControlsView8 = [(PHInCallRootViewController *)self bottomControlsView];
    [bottomControlsView8 setUserInteractionEnabled:1];

    bottomControlsView9 = [(PHInCallRootViewController *)self bottomControlsView];
    v22 = bottomControlsView9;
    v23 = 9;
LABEL_14:
    [bottomControlsView9 setCurrentState:v23 animated:1 animationCompletionBlock:0];
LABEL_37:

    goto LABEL_38;
  }

  v24 = +[UIApplication sharedApplication];
  delegate5 = [v24 delegate];
  mostRecentlyDisconnectedVideoCall = [delegate5 mostRecentlyDisconnectedVideoCall];

  v26 = sub_100004F84();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    shouldShowVideoCallBlockAndReportScreen = [(PHInCallRootViewController *)self shouldShowVideoCallBlockAndReportScreen];
    v64 = 1024;
    disconnectedReason = [mostRecentlyDisconnectedVideoCall disconnectedReason];
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[self shouldShowVideoCallBlockAndReportScreen]: %d, disconnectedCall.disconnectedReason: %d", buf, 0xEu);
  }

  if ([(PHInCallRootViewController *)self shouldShowVideoCallBlockAndReportScreen])
  {
    [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHCallEndedBlockAndReportInProgressAssertionReason"];
    [(PHInCallRootViewController *)self requestInCallSceneTransitionToFullScreen];
    multiwayViewController = [(PHInCallRootViewController *)self multiwayViewController];
    [multiwayViewController setIsInCallEndedBlockAndReportFlow:1];

    bottomControlsView10 = [(PHInCallRootViewController *)self bottomControlsView];
    [bottomControlsView10 setUserInteractionEnabled:1];

    bottomControlsView11 = [(PHInCallRootViewController *)self bottomControlsView];
    [bottomControlsView11 setUsesLowerButtons:1];

    bottomControlsView9 = [(PHInCallRootViewController *)self bottomControlsView];
    v22 = bottomControlsView9;
    v23 = 27;
    goto LABEL_14;
  }

  if ([mostRecentlyDisconnectedVideoCall disconnectedReason] == 14 && (objc_msgSend(mostRecentlyDisconnectedVideoCall, "isOutgoing") & 1) != 0 || objc_msgSend(mostRecentlyDisconnectedVideoCall, "disconnectedReason") == 5 || objc_msgSend(mostRecentlyDisconnectedVideoCall, "disconnectedReason") == 15)
  {
    callDisplayStyleManager = [(PHInCallRootViewController *)self callDisplayStyleManager];
    if ([callDisplayStyleManager callDisplayStyle] == 4 || +[PHInCallUIUtilities isSpringBoardPasscodeLocked](PHInCallUIUtilities, "isSpringBoardPasscodeLocked"))
    {
    }

    else
    {
      handle = [mostRecentlyDisconnectedVideoCall handle];
      value = [handle value];
      v57 = [value length];

      if (v57)
      {
        if ([mostRecentlyDisconnectedVideoCall isMessagingAllowed])
        {
          v58 = 17;
        }

        else if ([mostRecentlyDisconnectedVideoCall isCallbackAllowed])
        {
          v58 = 13;
        }

        else
        {
          v58 = 18;
        }

        bottomControlsView12 = [(PHInCallRootViewController *)self bottomControlsView];
        [bottomControlsView12 setCurrentState:v58 animated:1 animationCompletionBlock:0];

        goto LABEL_38;
      }
    }
  }

  v31 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FFD68;
  block[3] = &unk_100356988;
  block[4] = self;
  dispatch_after(v31, &_dispatch_main_q, block);
  [(PHInCallRootViewController *)self showFailureOrFallbackAlertIfNecessaryForCall:mostRecentlyDisconnectedVideoCall];
LABEL_38:

LABEL_39:
  callCenter5 = [(PHInCallRootViewController *)self callCenter];
  incomingVideoCall = [callCenter5 incomingVideoCall];

  if (incomingVideoCall)
  {
    bottomControlsView13 = [(PHInCallRootViewController *)self bottomControlsView];
    v46 = [bottomControlsView13 controlForActionType:13];

    bottomControlsView14 = [(PHInCallRootViewController *)self bottomControlsView];
    v48 = [bottomControlsView14 controlForActionType:9];

    if (!v48)
    {
      bottomControlsView15 = [(PHInCallRootViewController *)self bottomControlsView];
      v48 = [bottomControlsView15 controlForActionType:12];
    }

    if (v46)
    {
      [PHDeclineWithReminderController configureButton:v46 forIncomingCall:incomingVideoCall presenter:self];
    }

    if (v48)
    {
      v50 = [PHDeclineWithMessageController alloc];
      multiwayViewController2 = [(PHInCallRootViewController *)self multiwayViewController];
      declineCallService = [(PHInCallRootViewController *)self declineCallService];
      v53 = [(PHDeclineWithMessageController *)v50 initWithIncomingCall:incomingVideoCall customMessagePresentingViewController:multiwayViewController2 declineCallService:declineCallService];
      [(PHInCallRootViewController *)self setDeclineWithMessageController:v53];

      declineWithMessageController = [(PHInCallRootViewController *)self declineWithMessageController];
      [declineWithMessageController configureDeclineMessageForButton:v48];
    }
  }

  [(PHInCallRootViewController *)self refreshBottomBarButtonLayout];
}

- (void)sceneDidConnect
{
  v3 = +[UIApplication sharedApplication];
  delegate = [v3 delegate];
  currentInCallScene = [delegate currentInCallScene];

  if (currentInCallScene)
  {
    [(PHInCallRootViewController *)self updateUPlusOneVideoCallViews];
    audioCallViewControllerIfLoaded = [(PHInCallRootViewController *)self audioCallViewControllerIfLoaded];
    [audioCallViewControllerIfLoaded updateIncomingBottomBarControlState];

    [(PHInCallRootViewController *)self updateBackgroundStartPipAuthorizationState];

    [(PHInCallRootViewController *)self updateInCallWindowScenePrefersHiddenWhenDismissed];
  }
}

- (void)wantsHoldMusicChangedNotification:(id)notification
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "wantsHoldMusicChangedNotification", buf, 2u);
  }

  v5 = +[UIApplication sharedApplication];
  delegate = [v5 delegate];
  callCenter = [(PHInCallRootViewController *)self callCenter];
  v8 = [delegate currentVideoCallUsingCallContainer:callCenter];
  wantsHoldMusic = [v8 wantsHoldMusic];

  if (wantsHoldMusic)
  {
    v10 = sub_100004F84();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "decline with reminder and decline with message unavailable due to call wanting hold music.", v15, 2u);
    }

    bottomControlsView = [(PHInCallRootViewController *)self bottomControlsView];
    [bottomControlsView setDeclineAndMessageIsAvailable:0];

    bottomControlsView2 = [(PHInCallRootViewController *)self bottomControlsView];
    [bottomControlsView2 setDeclineAndRemindIsAvailable:0];

    [(PHInCallRootViewController *)self updateUPlusOneVideoCallViews];
    v13 = [NSTimer scheduledTimerWithTimeInterval:self target:"updateUPlusOneVideoCallViews" selector:0 userInfo:1 repeats:1.0];
    [(PHInCallRootViewController *)self setCallDurationTimerForParticipantsView:v13];
  }

  else
  {
    callDurationTimerForParticipantsView = [(PHInCallRootViewController *)self callDurationTimerForParticipantsView];
    [callDurationTimerForParticipantsView invalidate];

    [(PHInCallRootViewController *)self setCallDurationTimerForParticipantsView:0];
    [(PHInCallRootViewController *)self transitionFromBannerToDismissedIfNecessary];
  }
}

- (void)refreshBottomBarButtonLayout
{
  bottomControlsView = [(PHInCallRootViewController *)self bottomControlsView];
  [bottomControlsView setUsesLowerButtons:1];

  bottomControlsView2 = [(PHInCallRootViewController *)self bottomControlsView];
  [bottomControlsView2 setUsesLowerButtons:0];
}

- (id)labelForParticipantAtIndex:(unint64_t)index inParticipantsView:(id)view allowsDuration:(BOOL)duration
{
  v6 = [(PHInCallRootViewController *)self updateSecondaryStringForParticipantViewWithInCallState:[(PHInCallRootViewController *)self inCallState:index] allowsDuration:duration];
  [(PHInCallRootViewController *)self setSecondaryStringForParticipantsView:v6];

  labelDescriptorFactory = self->_labelDescriptorFactory;
  secondaryStringForParticipantsView = [(PHInCallRootViewController *)self secondaryStringForParticipantsView];
  v9 = [(CNKCallParticipantLabelDescriptorFactory *)labelDescriptorFactory makeLabelWithString:secondaryStringForParticipantsView];

  return v9;
}

- (id)localizedSenderIdentityForParticipantAtIndex:(unint64_t)index inParticipantsView:(id)view
{
  if (PHDeviceSupportsDualSim())
  {
    v5 = +[UIApplication sharedApplication];
    delegate = [v5 delegate];
    callCenter = [(PHInCallRootViewController *)self callCenter];
    v8 = [delegate currentVideoCallUsingCallContainer:callCenter];

    provider = [v8 provider];
    prioritizedSenderIdentities = [provider prioritizedSenderIdentities];
    v11 = [prioritizedSenderIdentities count];

    if (v11 < 2)
    {
      localizedShortName = 0;
    }

    else
    {
      localSenderIdentity = [v8 localSenderIdentity];
      localizedShortName = [localSenderIdentity localizedShortName];
    }
  }

  else
  {
    localizedShortName = 0;
  }

  return localizedShortName;
}

- (void)participantsView:(id)view didPerformActionType:(int64_t)type
{
  viewCopy = view;
  callParticipantLabelsView = [(PHInCallRootViewController *)self callParticipantLabelsView];

  if (callParticipantLabelsView == viewCopy)
  {

    [(PHInCallRootViewController *)self performBottomBarActionType:type];
  }

  else
  {
    v8 = sub_100004F84();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      callParticipantLabelsView2 = [(PHInCallRootViewController *)self callParticipantLabelsView];
      v10 = 134218242;
      typeCopy = type;
      v12 = 2112;
      v13 = callParticipantLabelsView2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Cannot perform bottom bar action %ld from unknown call participants view object %@", &v10, 0x16u);
    }
  }
}

- (id)linkNameForCall:(id)call
{
  callCopy = call;
  if ([callCopy isConversation])
  {
    callCenter = [(PHInCallRootViewController *)self callCenter];
    v6 = [callCenter activeConversationForCall:callCopy];

    link = [v6 link];
    if (link)
    {
      v8 = link;
      if ([link isLocallyCreated] && (objc_msgSend(v6, "letMeInRequestState") == 1 || objc_msgSend(v6, "letMeInRequestState") == 2) && (objc_msgSend(v8, "linkName"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, !v10))
      {
        v13 = +[NSBundle mainBundle];
        displayName = [v13 localizedStringForKey:@"FACETIME_LINK" value:&stru_100361FD0 table:@"InCallService"];
      }

      else
      {
        displayName = [v6 displayName];
      }
    }

    else
    {
      displayName = 0;
    }
  }

  else
  {
    displayName = 0;
  }

  return displayName;
}

- (void)bottomBarActionPerformed:(int64_t)performed withCompletionState:(int64_t)state fromBar:(id)bar
{
  barCopy = bar;
  bottomControlsView = [(PHInCallRootViewController *)self bottomControlsView];

  if (bottomControlsView == barCopy)
  {
    [(PHInCallRootViewController *)self performBottomBarActionType:performed];
  }

  else
  {
    v9 = sub_100004F84();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134218242;
      performedCopy = performed;
      v12 = 2112;
      v13 = barCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Cannot perform bottom bar action %ld from unknown bottom bar %@", &v10, 0x16u);
    }
  }
}

- (void)performBottomBarActionType:(int64_t)type
{
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    bottomControlsView = [(PHInCallRootViewController *)self bottomControlsView];
    v7 = [bottomControlsView nameForActionType:type];
    *buf = 138412290;
    *v92 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BottomBarActionPerformed: %@", buf, 0xCu);
  }

  v8 = +[UIApplication sharedApplication];
  delegate = [v8 delegate];
  callCenter = [(PHInCallRootViewController *)self callCenter];
  v11 = [delegate currentVideoCallUsingCallContainer:callCenter];

  v12 = +[UIApplication sharedApplication];
  delegate2 = [v12 delegate];
  callCenter2 = [(PHInCallRootViewController *)self callCenter];
  v15 = [delegate2 incomingVideoCallUsingCallContainer:callCenter2];

  callCenter3 = [(PHInCallRootViewController *)self callCenter];
  v17 = [callCenter3 activeConversationForCall:v15];

  switch(type)
  {
    case 1:
    case 3:
      v85 = v11;
      resolvedAudioVideoMode = [v17 resolvedAudioVideoMode];
      v25 = +[UIApplication sharedApplication];
      delegate3 = [v25 delegate];
      currentInCallScene = [delegate3 currentInCallScene];
      presentationMode = [currentInCallScene presentationMode];

      if (presentationMode == 1 && resolvedAudioVideoMode == 2)
      {
        v29 = +[UIApplication sharedApplication];
        delegate4 = [v29 delegate];
        currentInCallScene2 = [delegate4 currentInCallScene];
        [currentInCallScene2 requestTransitionToPresentationMode:2 isUserInitiated:0 analyticsSource:@"SBSUIInCallTransitionAnalyticsSourceAnswerFaceTimeButtonPress"];

        v11 = v85;
      }

      else
      {
        v11 = v85;
        if (![v85 wantsHoldMusic])
        {
          callCenter4 = [(PHInCallRootViewController *)self callCenter];
          mostRecentlyDisconnectedVideoCall = [callCenter4 activeConversationForCall:v85];

          if (![v85 isConversation] || objc_msgSend(v85, "status") != 4 || (objc_msgSend(v85, "isSendingVideo") & 1) != 0 || (objc_msgSend(mostRecentlyDisconnectedVideoCall, "isOneToOneModeEnabled") & 1) != 0)
          {
            v74 = sub_100004F84();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              v82 = resolvedAudioVideoMode == 2;
              v84 = mostRecentlyDisconnectedVideoCall;
              v81 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v17 resolvedAudioVideoMode]);
              activeRemoteParticipants = [v17 activeRemoteParticipants];
              v83 = +[UIApplication sharedApplication];
              delegate5 = [v83 delegate];
              currentInCallScene3 = [delegate5 currentInCallScene];
              v77 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [currentInCallScene3 presentationMode]);
              *buf = 67110146;
              *v92 = v82;
              *&v92[4] = 2112;
              *&v92[6] = v81;
              *&v92[14] = 2112;
              *&v92[16] = activeRemoteParticipants;
              v93 = 2112;
              v94 = v77;
              v95 = 2112;
              v96 = v15;
              _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Answering FaceTime Video call. hasPartWithVideoEnabled: %d, resolvedAudioVideoMode: %@, participants: %@, banner: %@, incomingCall: %@", buf, 0x30u);

              mostRecentlyDisconnectedVideoCall = v84;
              v11 = v85;
            }

            callCenter5 = [(PHInCallRootViewController *)self callCenter];
            [callCenter5 answerCall:v15];
            goto LABEL_72;
          }

          v79 = sub_100004F84();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Answering a ringing conversation while video is disabled, updating answer behavior to downgrade to audio so we join conversation with video disabled as well.", buf, 2u);
          }

          callCenter5 = [[TUAnswerRequest alloc] initWithCall:v15];
          [callCenter5 setBehavior:4];
          [callCenter5 setDowngradeToAudio:1];
          callCenter6 = [(PHInCallRootViewController *)self callCenter];
          [callCenter6 answerWithRequest:callCenter5];
          goto LABEL_18;
        }

        [v85 resetWantsHoldMusic];
        [(PHInCallRootViewController *)self updateUPlusOneVideoCallViews];
      }

      goto LABEL_74;
    case 2:
    case 6:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 16:
    case 17:
    case 20:
    case 21:
    case 22:
    case 23:
    case 25:
    case 26:
    case 27:
    case 28:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
      goto LABEL_74;
    case 4:
      callCenter7 = [(PHInCallRootViewController *)self callCenter];
      v88[0] = _NSConcreteStackBlock;
      v88[1] = 3221225472;
      v88[2] = sub_10010148C;
      v88[3] = &unk_100357110;
      v89 = v15;
      v90 = callCenter7;
      callCenter8 = callCenter7;
      v48 = objc_retainBlock(v88);
      (v48[2])();

      goto LABEL_26;
    case 5:
      callCenter8 = [(PHInCallRootViewController *)self callCenter];
      [callCenter8 answerCall:v15];
      goto LABEL_26;
    case 7:
    case 8:
    case 15:
      v18 = +[UIApplication sharedApplication];
      delegate6 = [v18 delegate];
      callCenter9 = [(PHInCallRootViewController *)self callCenter];
      mostRecentlyDisconnectedVideoCall = [delegate6 incomingVideoCallUsingCallContainer:callCenter9];

      if (mostRecentlyDisconnectedVideoCall)
      {
        v22 = sub_100004F84();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v92 = mostRecentlyDisconnectedVideoCall;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Ending FaceTime %@", buf, 0xCu);
        }

        callCenter10 = [(PHInCallRootViewController *)self callCenter];
        [callCenter10 disconnectCall:mostRecentlyDisconnectedVideoCall withReason:2];
LABEL_61:

        goto LABEL_73;
      }

      callCenter11 = [(PHInCallRootViewController *)self callCenter];
      activeVideoCall = [callCenter11 activeVideoCall];

      if (!activeVideoCall)
      {
        [(PHInCallRootViewController *)self updateUPlusOneVideoCallViews];
        goto LABEL_73;
      }

      v38 = sub_100004F84();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        callCenter12 = [(PHInCallRootViewController *)self callCenter];
        activeVideoCall2 = [callCenter12 activeVideoCall];
        *buf = 138412290;
        *v92 = activeVideoCall2;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Ending FaceTime %@", buf, 0xCu);
      }

      callCenter5 = [(PHInCallRootViewController *)self callCenter];
      callCenter6 = [(PHInCallRootViewController *)self callCenter];
      activeVideoCall3 = [callCenter6 activeVideoCall];
      [callCenter5 disconnectCall:activeVideoCall3];

LABEL_18:
      goto LABEL_72;
    case 14:
    case 19:
      v32 = +[UIApplication sharedApplication];
      delegate7 = [v32 delegate];
      [delegate7 setMostRecentlyDisconnectedVideoCall:0];

      v34 = @"PHMulitwayCallAssertionReason";
      goto LABEL_30;
    case 18:
      v44 = +[UIApplication sharedApplication];
      delegate8 = [v44 delegate];
      mostRecentlyDisconnectedVideoCall = [delegate8 mostRecentlyDisconnectedVideoCall];

      if (mostRecentlyDisconnectedVideoCall)
      {
        callCenter10 = [(PHInCallRootViewController *)self callCenter];
        dialRequestForRedial = [mostRecentlyDisconnectedVideoCall dialRequestForRedial];
        [callCenter10 launchAppForDialRequest:dialRequestForRedial completion:0];
      }

      else
      {
        callCenter10 = sub_100004F84();
        if (os_log_type_enabled(callCenter10, OS_LOG_TYPE_ERROR))
        {
          sub_100256A04();
        }
      }

      goto LABEL_61;
    case 24:
      callCenter8 = [(PHInCallRootViewController *)self callCenter];
      [callCenter8 disconnectCall:v15 withReason:2];
      goto LABEL_26;
    case 29:
      v53 = +[UIApplication sharedApplication];
      delegate9 = [v53 delegate];
      mostRecentlyDisconnectedVideoCall = [delegate9 mostRecentlyDisconnectedVideoCall];

      handle = [mostRecentlyDisconnectedVideoCall handle];
      callCenter5 = [handle value];

      v56 = sub_100004F84();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *v92 = mostRecentlyDisconnectedVideoCall;
        *&v92[8] = 2112;
        *&v92[10] = callCenter5;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Call %@; Destination ID %@", buf, 0x16u);
      }

      if ([callCenter5 destinationIdIsPhoneNumber])
      {
        v57 = v11;
        v58 = CPPhoneNumberCopyCountryCodeForIncomingTextMessage();
        if (!v58)
        {
          v58 = TUActiveCountryCode();
        }

        v59 = TUNetworkCountryCode();
        v60 = TUNumberToDial();

        callCenter5 = v60;
        v11 = v57;
      }

      mostRecentlyDisconnectedVideoCall2 = objc_alloc_init(MFMessageComposeViewController);
      [mostRecentlyDisconnectedVideoCall2 setBody:&stru_100361FD0];
      [mostRecentlyDisconnectedVideoCall2 setMessageComposeDelegate:self];
      [mostRecentlyDisconnectedVideoCall2 _setCanEditRecipients:0];
      if (callCenter5 && [callCenter5 length])
      {
        v62 = [NSArray arrayWithObject:callCenter5];
        [mostRecentlyDisconnectedVideoCall2 setRecipients:v62];
      }

      else
      {
        v62 = sub_100004F84();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          sub_10025698C();
        }
      }

      [(PHInCallRootViewController *)self presentViewController:mostRecentlyDisconnectedVideoCall2 animated:1 completion:0];
      goto LABEL_71;
    case 35:
      v63 = v11;
      v64 = sub_100004F84();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "SpamReport: did tap on block caller", buf, 2u);
      }

      mostRecentlyDisconnectedVideoCall = [(PHInCallRootViewController *)self callCenter];
      callCenter5 = [mostRecentlyDisconnectedVideoCall currentVideoCall];
      v65 = +[UIApplication sharedApplication];
      delegate10 = [v65 delegate];
      mostRecentlyDisconnectedVideoCall2 = [delegate10 mostRecentlyDisconnectedVideoCall];

      if (callCenter5)
      {
        v87[0] = _NSConcreteStackBlock;
        v87[1] = 3221225472;
        v87[2] = sub_10010153C;
        v87[3] = &unk_1003569B0;
        v87[4] = self;
        [(PHInCallRootViewController *)self presentBlockAndReportAlertToBlockCall:mostRecentlyDisconnectedVideoCall2 forViewController:self completion:v87];
        v11 = v63;
        goto LABEL_71;
      }

      v11 = v63;
      if (mostRecentlyDisconnectedVideoCall2)
      {
        v86[0] = _NSConcreteStackBlock;
        v86[1] = 3221225472;
        v86[2] = sub_1001015F0;
        v86[3] = &unk_1003569B0;
        v86[4] = self;
        [(PHInCallRootViewController *)self presentBlockAndReportAlertToBlockCall:mostRecentlyDisconnectedVideoCall2 forViewController:self completion:v86];
        goto LABEL_71;
      }

      multiwayViewController = sub_100004F84();
      if (os_log_type_enabled(multiwayViewController, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_69;
      }

      goto LABEL_70;
    case 36:
      v67 = v11;
      v68 = sub_100004F84();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "SpamReport: did tap on create contact", buf, 2u);
      }

      mostRecentlyDisconnectedVideoCall = [(PHInCallRootViewController *)self callCenter];
      callCenter5 = [mostRecentlyDisconnectedVideoCall currentVideoCall];
      v69 = +[UIApplication sharedApplication];
      delegate11 = [v69 delegate];
      mostRecentlyDisconnectedVideoCall2 = [delegate11 mostRecentlyDisconnectedVideoCall];

      if (callCenter5)
      {
        handle2 = [callCenter5 handle];
        [(PHInCallRootViewController *)self presentCreateContactViewControllerWithHandle:handle2 forViewController:self];

        multiwayViewController = [(PHInCallRootViewController *)self multiwayViewController];
        [multiwayViewController setIsInCallEndedBlockAndReportFlow:0];
        v11 = v67;
      }

      else
      {
        v11 = v67;
        if (mostRecentlyDisconnectedVideoCall2)
        {
          handle3 = [mostRecentlyDisconnectedVideoCall2 handle];
          [(PHInCallRootViewController *)self presentCreateContactViewControllerWithHandle:handle3 forViewController:self];

          multiwayViewController = [(PHInCallRootViewController *)self multiwayViewController];
          [multiwayViewController setIsInCallEndedBlockAndReportFlow:0];
        }

        else
        {
          multiwayViewController = sub_100004F84();
          if (os_log_type_enabled(multiwayViewController, OS_LOG_TYPE_ERROR))
          {
LABEL_69:
            sub_1002569C8();
          }
        }
      }

LABEL_70:

LABEL_71:
LABEL_72:

LABEL_73:
LABEL_74:

      return;
    case 37:
      v49 = +[UIApplication sharedApplication];
      delegate12 = [v49 delegate];
      [delegate12 setMostRecentlyDisconnectedVideoCall:0];

      v51 = sub_100004F84();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "SpamReport: did tap on close", buf, 2u);
      }

      multiwayViewController2 = [(PHInCallRootViewController *)self multiwayViewController];
      [multiwayViewController2 setIsInCallEndedBlockAndReportFlow:0];

      v34 = @"PHCallEndedBlockAndReportInProgressAssertionReason";
LABEL_30:
      mostRecentlyDisconnectedVideoCall = [NSSet setWithObject:v34];
      [PHInCallRootViewController releaseDismissalAssertionReasons:mostRecentlyDisconnectedVideoCall];
      goto LABEL_73;
    default:
      if (type == 41)
      {
        callCenter8 = +[CNKGameControllerManager shared];
        [callCenter8 focus];
LABEL_26:
      }

      goto LABEL_74;
  }
}

- (void)gameControllerDidChangeContext
{
  callParticipantLabelsView = [(PHInCallRootViewController *)self callParticipantLabelsView];
  [callParticipantLabelsView gameControllerDidChangeContext];

  [(PHAudioCallViewControllerProtocol *)self->_audioCallViewController gameControllerDidChangeContext];
  multiwayViewController = self->_multiwayViewController;

  [(CNKMultiwayViewControllerProtocol *)multiwayViewController gameControllerDidChangeContext];
}

- (BOOL)gameControllerDidRequestActivation
{
  v2 = +[UIApplication sharedApplication];
  delegate = [v2 delegate];
  bannerPresentationManager = [delegate bannerPresentationManager];

  if (bannerPresentationManager)
  {
    v5 = +[UIApplication sharedApplication];
    delegate2 = [v5 delegate];
    bannerPresentationManager2 = [delegate2 bannerPresentationManager];
    [bannerPresentationManager2 gameControllerDidRequestActivation];
  }

  return bannerPresentationManager != 0;
}

- (BOOL)gameControllerDidRequestDismissal
{
  v3 = +[UIApplication sharedApplication];
  delegate = [v3 delegate];
  currentInCallScene = [delegate currentInCallScene];
  [currentInCallScene requestTransitionToPresentationMode:0 shouldDismissCMASAlerts:0 analyticsSource:@"SBSUIInCallTransitionAnalyticsSourceGameControllerManager"];

  v6 = +[CNKGameControllerManager shared];
  v7 = v6;
  if (v6)
  {
    [v6 removeResponder:self];
  }

  return 1;
}

- (BOOL)gameControllerDidRequestFocus:(BOOL)focus
{
  focusCopy = focus;
  v4 = +[UIApplication sharedApplication];
  delegate = [v4 delegate];
  bannerPresentationManager = [delegate bannerPresentationManager];
  [bannerPresentationManager gameControllerDidRequestFocus:focusCopy];

  return 1;
}

- (void)handleDeviceLockEventOverUPlusOneVideoViewsWithSourceType:(int64_t)type
{
  presentedViewController = [(PHInCallRootViewController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(PHInCallRootViewController *)self dismissViewControllerAnimated:1 completion:0];
  }

  callDisplayStyleManager = [(PHInCallRootViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] == 1)
  {
    callCenter = [(PHInCallRootViewController *)self callCenter];
    incomingVideoCall = [callCenter incomingVideoCall];
    isConversation = [incomingVideoCall isConversation];
  }

  else
  {
    isConversation = 0;
  }

  callCenter2 = [(PHInCallRootViewController *)self callCenter];
  if (([callCenter2 hasCurrentVideoCalls] & 1) != 0 || isConversation)
  {
  }

  else
  {
    multiwayViewController = [(PHInCallRootViewController *)self multiwayViewController];
    isInVideoMessageFlow = [multiwayViewController isInVideoMessageFlow];

    if ((isInVideoMessageFlow & 1) == 0)
    {
      [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHMulitwayCallAssertionReason"];
    }
  }

  callCenter3 = [(PHInCallRootViewController *)self callCenter];
  v15 = +[UIApplication sharedApplication];
  delegate = [v15 delegate];
  v17 = [delegate incomingVideoCallUsingCallContainer:callCenter3];

  v18 = +[UIApplication sharedApplication];
  delegate2 = [v18 delegate];
  v20 = [delegate2 currentVideoCallUsingCallContainer:callCenter3];

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100101C20;
  v34[3] = &unk_100357318;
  v21 = callCenter3;
  v35 = v21;
  v22 = v17;
  v36 = v22;
  v23 = v20;
  v37 = v23;
  v24 = objc_retainBlock(v34);
  if (type == 2)
  {
    goto LABEL_12;
  }

  if (!v22)
  {
    goto LABEL_16;
  }

  if ([v22 shouldSuppressRingtone])
  {
    if ([v22 shouldSuppressRingtone])
    {
LABEL_12:
      (v24[2])(v24);
      goto LABEL_20;
    }

LABEL_16:
    if (v23)
    {
      +[PHInCallRootViewController setShouldLockDeviceOnNextDismiss];
    }

    goto LABEL_20;
  }

  v33 = +[UIApplication sharedApplication];
  delegate3 = [v33 delegate];
  currentInCallScene = [delegate3 currentInCallScene];
  delegate4 = [currentInCallScene delegate];
  callAnalyticsLogger = [delegate4 callAnalyticsLogger];
  uniqueProxyIdentifierUUID = [v22 uniqueProxyIdentifierUUID];
  [callAnalyticsLogger ringerMutedForCallUUID:uniqueProxyIdentifierUUID];

  [v22 suppressRingtone];
  if ([v22 status] == 4)
  {
    v30 = +[UIApplication sharedApplication];
    delegate5 = [v30 delegate];
    bannerPresentationManager = [delegate5 bannerPresentationManager];
    [bannerPresentationManager invalidatePersistentSystemApertureAlertWithReason:@"Hardware lock button pressed"];
  }

LABEL_20:
}

- (void)sendUserRating:(int)rating dontShowPromptAgain:(BOOL)again
{
  againCopy = again;
  v5 = *&rating;
  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v13 = v5;
    v14 = 1024;
    v15 = againCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "UserFeedbackScore : User has rating: %d and BOOL: %d", buf, 0xEu);
  }

  if (againCopy)
  {
    v8 = +[ICSPreferences sharedPreferences];
    [v8 setHasUserScoreFeedbackViewHidden:1];
  }

  if (v5 != -1)
  {
    callCenter = [(PHInCallRootViewController *)self callCenter];
    disconnectCallUUID = [(PHInCallRootViewController *)self disconnectCallUUID];
    [callCenter sendUserScoreToRTCReporting:disconnectCallUUID withScore:v5];
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100101F78;
  v11[3] = &unk_100356988;
  v11[4] = self;
  [(PHInCallRootViewController *)self dismissViewControllerAnimated:1 completion:v11];
}

- (void)wantsDismissal
{
  v3 = +[UIApplication sharedApplication];
  delegate = [v3 delegate];
  [delegate setDidDeepLinkToCallDetailsView:0];

  [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHAVLessConversationDetailsViewAssertionReason"];
  v5 = +[UIApplication sharedApplication];
  delegate2 = [v5 delegate];
  [delegate2 setDidDeepLinkToPTTCallDetailsView:0];

  [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHPTTCallDetailsViewAssertionReason"];
  inCallWindowScene = [(PHInCallRootViewController *)self inCallWindowScene];
  [inCallWindowScene requestTransitionToPresentationMode:0 shouldDismissCMASAlerts:0];

  [(PHInCallRootViewController *)self updateInCallWindowScenePrefersHiddenWhenDismissed];
}

- (void)presentDisconnectionAlert:(id)alert
{
  alertCopy = alert;
  v4 = +[CNKFeatures sharedInstance];
  isEnhancedEmergencyEnabled = [v4 isEnhancedEmergencyEnabled];

  if ((isEnhancedEmergencyEnabled & 1) == 0)
  {
    [(PHInCallRootViewController *)self presentViewController:alertCopy animated:1 completion:0];
  }
}

- (void)handleCallBufferNotification:(id)notification
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PHInCallRootViewController,handleCallBufferNotification", v5, 2u);
  }

  [(PHInCallRootViewController *)self updateCallControllerForCurrentState];
}

- (void)acceptCallButtonTapped:(id)tapped
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PHInCallRootViewController.acceptCallButtonTapped", v5, 2u);
  }

  [(PHInCallRootViewController *)self _obtainThenReleaseTransitionAssertion];
}

- (BOOL)_shouldAutoAnswer
{
  v2 = +[IMLockdownManager sharedInstance];
  isInternalInstall = [v2 isInternalInstall];

  if (isInternalInstall)
  {
    v4 = PHPreferencesGetValueInDomain();
    if ([v4 BOOLValue])
    {
      v5 = +[TUCallCenter sharedInstance];
      incomingCall = [v5 incomingCall];

      v7 = +[TUCallCenter sharedInstance];
      currentCallCount = [v7 currentCallCount];

      v9 = +[TUCallCenter sharedInstance];
      incomingVideoCall = [v9 incomingVideoCall];

      v11 = +[TUCallCenter sharedInstance];
      currentVideoCallCount = [v11 currentVideoCallCount];

      if (currentCallCount == 1 && [incomingCall service] == 2)
      {
        v13 = 1;
      }

      else
      {
        v13 = currentVideoCallCount == 1 && [incomingVideoCall service] == 3;
      }

      v14 = sub_100004F84();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = @"NO";
        v17 = 138413314;
        if (v13)
        {
          v15 = @"YES";
        }

        v18 = v15;
        v19 = 2048;
        v20 = currentCallCount;
        v21 = 2112;
        v22 = incomingCall;
        v23 = 2048;
        v24 = currentVideoCallCount;
        v25 = 2112;
        v26 = incomingVideoCall;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Auto Answer is %@ - call count is %lu (incoming call: %@), video call count is %lu (incoming video call: %@)", &v17, 0x34u);
      }
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (void)setupAutoAnswer
{
  if ([(PHInCallRootViewController *)self _shouldAutoAnswer])
  {
    v3 = sub_100004F84();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up auto answer", v4, 2u);
    }

    [(PHInCallRootViewController *)self performSelector:"autoAnswer" withObject:0 afterDelay:5.0];
  }
}

- (void)cancelAutoAnswer
{
  if ([(PHInCallRootViewController *)self _shouldAutoAnswer])
  {
    v3 = sub_100004F84();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Canceling auto answer", v4, 2u);
    }

    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"autoAnswer" object:0];
  }
}

- (void)autoAnswer
{
  [(PHInCallRootViewController *)self cancelAutoAnswer];
  if ([(PHInCallRootViewController *)self _shouldAutoAnswer])
  {
    v3 = sub_100004F84();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Auto answering", v10, 2u);
    }

    v4 = +[TUCallCenter sharedInstance];
    incomingCall = [v4 incomingCall];

    if (incomingCall)
    {
      v6 = +[TUCallCenter sharedInstance];
      [v6 answerCall:incomingCall];
    }

    v7 = +[TUCallCenter sharedInstance];
    incomingVideoCall = [v7 incomingVideoCall];

    if (incomingVideoCall)
    {
      v9 = +[TUCallCenter sharedInstance];
      [v9 answerCall:incomingVideoCall];
    }
  }
}

- (UIViewController)oldMultiwayPIPViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_oldMultiwayPIPViewController);

  return WeakRetained;
}

- (NSTimer)callDurationTimerForParticipantsView
{
  WeakRetained = objc_loadWeakRetained(&self->_callDurationTimerForParticipantsView);

  return WeakRetained;
}

- (void)observePrioritizedCall
{
  selfCopy = self;
  sub_1002395F8();
}

- (id)makeConversationHUDDetailsNavigationControllerWithBannerPresentationManager:(id)manager delegate:(id)delegate shouldSetControlsManagerInCallDetailsDelegate:(BOOL)detailsDelegate
{
  managerCopy = manager;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_1002404A4(managerCopy);

  swift_unknownObjectRelease();

  return v8;
}

- (id)makeMultiwayConversationViewControllerWithCall:(id)call bannerPresentationManager:(id)manager
{
  callCopy = call;
  managerCopy = manager;
  selfCopy = self;
  v9 = sub_1002405B0(callCopy, managerCopy);

  return v9;
}

- (void)dissmissConfirmLeavePTTChannelAlertIfNeededWithBannerPresentationManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  sub_100240694(managerCopy);
}

- (void)ambientSetIdleTimerDisabled:(BOOL)disabled
{
  selfCopy = self;
  sub_100240764();
}

- (void)startObservingAcceptCallButtonTappedWithNotificationCenter:(id)center
{
  centerCopy = center;
  selfCopy = self;
  sub_1002408F8(centerCopy);
}

- (void)handleAcceptCallButtonTapped:(id)tapped
{
  v5 = sub_10014EA98(&qword_1003B05B0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v12 - v7;
  if (tapped)
  {
    static Notification._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for Notification();
    v10 = 0;
  }

  else
  {
    v9 = type metadata accessor for Notification();
    v10 = 1;
  }

  sub_100006848(v8, v10, 1, v9);
  selfCopy = self;
  sub_1002409D4();

  sub_100008360(v8, &qword_1003B05B0);
}

- (void)_obtainThenReleaseTransitionAssertion
{
  selfCopy = self;
  sub_100240CA4();
}

- (BOOL)isContactBlockedWithCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  v6 = sub_100241200();

  return v6;
}

- (void)blockWithHandle:(id)handle
{
  handleCopy = handle;
  selfCopy = self;
  sub_100241278(handleCopy);
}

- (void)reportWithCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  sub_10024159C();
}

- (id)findMostRecentSilencedCallWithHandleValue:(id)value normalizedHandleValue:(id)handleValue ignoredIdentifier:(id)identifier
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (handleValue)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    handleValue = v11;
  }

  else
  {
    v10 = 0;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  selfCopy = self;
  v16 = sub_10024172C(v7, v9, v10, handleValue, v12, v14);

  return v16;
}

- (BOOL)isFirstTimeInCallHistoryWithHandleValue:(id)value normalizedHandleValue:(id)handleValue
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (handleValue)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    handleValue = v10;
  }

  else
  {
    v9 = 0;
  }

  selfCopy = self;
  v12 = sub_100242008(v6, v8, v9, handleValue);

  return v12;
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  controllerCopy = controller;
  contactCopy = contact;
  selfCopy = self;
  PHInCallRootViewController.contactViewController(_:didCompleteWith:)(selfCopy, v10);
}

@end