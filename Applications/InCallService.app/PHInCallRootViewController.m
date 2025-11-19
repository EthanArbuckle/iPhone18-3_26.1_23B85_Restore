@interface PHInCallRootViewController
+ (int64_t)cnkDeviceOrientationForUIDeviceOrientation:(int64_t)a3;
+ (int64_t)cnkSupportedDeviceOrientationsFromUIInterfaceOrientationMask:(unint64_t)a3;
+ (int64_t)uiDeviceOrientationForCNKDeviceOrientation:(int64_t)a3;
+ (void)forceClearAllDismissalAssertions;
+ (void)initialize;
+ (void)obtainDismissalAssertionForReason:(id)a3;
+ (void)releaseDismissalAssertionForReason:(id)a3;
+ (void)releaseDismissalAssertionReasons:(id)a3;
+ (void)setStatusBarPillSuppressionForBackgroundActivities:(id)a3 onWindowScene:(id)a4;
- (BOOL)_shouldAutoAnswer;
- (BOOL)currentViewControllerIsMultiway;
- (BOOL)desiresLockAndVolumeButtonEventsForCallContainer:(id)a3;
- (BOOL)desiresLockButtonEvents;
- (BOOL)desiresLockButtonEventsForCallContainer:(id)a3;
- (BOOL)gameControllerDidRequestActivation;
- (BOOL)gameControllerDidRequestDismissal;
- (BOOL)gameControllerDidRequestFocus:(BOOL)a3;
- (BOOL)isContactBlockedWithCall:(id)a3;
- (BOOL)isCurrentViewControllerAudio;
- (BOOL)isDisplayStyleMiniWindow;
- (BOOL)isFirstTimeInCallHistoryWithHandleValue:(id)a3 normalizedHandleValue:(id)a4;
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
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3;
- (BOOL)shouldConsumeDeviceLockEvent;
- (BOOL)shouldReleaseAudioCallViewController;
- (BOOL)shouldShowCallEndedBlockAndReportScreen:(id)a3;
- (BOOL)shouldShowInCallWindowScene;
- (BOOL)shouldShowNavigationBarForViewController:(id)a3;
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
- (PHInCallRootViewController)initWithCallDisplayStyleManager:(id)a3;
- (PHInCallRootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PHSOSViewController)sosViewController;
- (SBSUIInCallWindowScene)inCallWindowScene;
- (TUFeatureFlags)featureFlags;
- (UIImage)audioRouteGlyphForDevice;
- (UINavigationController)audioCallNavigationController;
- (UINavigationController)videoCallNavigationController;
- (UIViewController)currentViewController;
- (UIViewController)oldMultiwayPIPViewController;
- (double)viewController:(id)a3 rubberBandConstrained:(double)a4 inRange:(double)a5;
- (id)_remoteViewControllerProxy;
- (id)audioCallViewControllerIfLoaded;
- (id)audioRouteGlyphFor:(id)a3 buttonStyle:(int64_t)a4;
- (id)audioRouteMenu;
- (id)backgroundActivities;
- (id)bottomControlsViewForViewController:(id)a3;
- (id)callForVideoCallBasedViewController:(id)a3;
- (id)callParticipantLabelsViewForViewController:(id)a3;
- (id)findMostRecentSilencedCallWithHandleValue:(id)a3 normalizedHandleValue:(id)a4 ignoredIdentifier:(id)a5;
- (id)getPreferredBackgroundActivitiesToSuppress:(id)a3 whenIsPipped:(BOOL)a4 whenTemporarilyAllowAllStatusBarPills:(BOOL)a5;
- (id)labelForParticipantAtIndex:(unint64_t)a3 inParticipantsView:(id)a4 allowsDuration:(BOOL)a5;
- (id)linkNameForCall:(id)a3;
- (id)localizedSenderIdentityForParticipantAtIndex:(unint64_t)a3 inParticipantsView:(id)a4;
- (id)makeConversationHUDDetailsNavigationControllerWithBannerPresentationManager:(id)a3 delegate:(id)a4 shouldSetControlsManagerInCallDetailsDelegate:(BOOL)a5;
- (id)makeMultiwayConversationViewControllerWithCall:(id)a3 bannerPresentationManager:(id)a4;
- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6;
- (id)routesForAudioRoutingMenuController:(id)a3;
- (id)sosHandles;
- (id)updateContactInformationForParticipantViewWithInCallState:(unsigned __int16)a3;
- (id)updateSecondaryStringForParticipantViewWithInCallState:(unsigned __int16)a3 allowsDuration:(BOOL)a4;
- (unint64_t)desiredButtonEventsForCallContainer:(id)a3;
- (unint64_t)desiredSceneButtonEventsForCallContainer:(id)a3;
- (unsigned)inCallState;
- (void)_loadAudioCallViewController;
- (void)_loadMultiwayViewControllerForCall:(id)a3;
- (void)_loadPTTFullScreenContainerViewController;
- (void)_loadSOSViewController;
- (void)_loadUserFeedbackViewController;
- (void)_obtainThenReleaseTransitionAssertion;
- (void)_reloadSOSHandles;
- (void)_showFailureAlertForCall:(id)a3;
- (void)_showTelephonyFallbackAlertForCall:(id)a3;
- (void)_startMonitoringDisplayLayout;
- (void)_testing_finishedAnimatingIn;
- (void)_testing_viewDidAppear;
- (void)_testing_viewWillAppear;
- (void)_transitionFromViewController:(id)a3 toViewController:(id)a4;
- (void)_transitionFromViewController:(id)a3 toViewController:(id)a4 completion:(id)a5;
- (void)_willAppearInRemoteViewController:(id)a3;
- (void)acceptCallButtonTapped:(id)a3;
- (void)ambientSetIdleTimerDisabled:(BOOL)a3;
- (void)animateInWithCompletionBlock:(id)a3;
- (void)animateToAlert;
- (void)audioRoutingMenuController:(id)a3 didSelectRoute:(id)a4;
- (void)autoAnswer;
- (void)bannerTapped:(id)a3;
- (void)blockWithHandle:(id)a3;
- (void)bottomBarActionPerformed:(int64_t)a3 withCompletionState:(int64_t)a4 fromBar:(id)a5;
- (void)callConnectedNotification:(id)a3;
- (void)callContinuityChangedNotification:(id)a3;
- (void)callDisplayContextChanged:(id)a3;
- (void)callDisplayStyleDidChangeFromStyle:(int64_t)a3 toStyle:(int64_t)a4;
- (void)callDowngradedToAudioNotification:(id)a3;
- (void)callStateChangedNotification:(id)a3;
- (void)callUpgradedToVideoNotification:(id)a3;
- (void)cancelAutoAnswer;
- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4;
- (void)conversationManager:(id)a3 activeRemoteParticipantsChangedForConversation:(id)a4;
- (void)dealloc;
- (void)didChangeDeviceOrientationNotification:(id)a3;
- (void)didEnterVideoMessagingFlow;
- (void)didExitVideoMessagingFlow;
- (void)dismissContactDetailsWithCompletion:(id)a3;
- (void)dismissContactsViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)dismissInCallPresentationWithDismissalBlock:(id)a3;
- (void)dismissMiniWindowViewControllerAnimated:(BOOL)a3;
- (void)dismissPIPIfNeededForMiniWindowAnimated:(BOOL)a3;
- (void)dismissPhoneRemoteViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)dismissSOSIfNeeded;
- (void)dismissScreenTimeAlertHostIfNeeded;
- (void)dismissViewControllersWithSensitiveInformationWithCompletion:(id)a3;
- (void)dismissalAssertionReleasedNotification:(id)a3;
- (void)dissmissConfirmLeavePTTChannelAlertIfNeededWithBannerPresentationManager:(id)a3;
- (void)emergencyCallbackModeChangedNotification:(id)a3;
- (void)forceUpdateCallControllerForFilteredRequest:(id)a3;
- (void)forceUpdateCallControllerForSOS;
- (void)gameControllerDidChangeContext;
- (void)handleAcceptCallButtonTapped:(id)a3;
- (void)handleActivationContextDidChangeNotification:(id)a3;
- (void)handleActivationForEndAndLock;
- (void)handleCallBufferNotification:(id)a3;
- (void)handleDeviceLockEventOverUPlusOneVideoViewsWithSourceType:(int64_t)a3;
- (void)handleDeviceLockEventWithSourceType:(int64_t)a3 resultHandler:(id)a4;
- (void)handleDoubleHeightStatusBarTap;
- (void)handleFrontBoardInterfaceOrientationChange:(int64_t)a3;
- (void)handleHeadsetButtonLongPressed;
- (void)handleHeadsetButtonPressed;
- (void)handleLockButtonPressed;
- (void)handlePIPInterruptionChangeNotification:(id)a3;
- (void)handlePIPViewControllerRestoredAfterPIPStopped:(id)a3;
- (void)handleSOSActivationIfNecessary;
- (void)handleScreenTimeActivationIfNecessary;
- (void)handleSystemInitiatedPIPInterruptionStoppedNotification:(id)a3;
- (void)handleVolumeDownButtonPressed;
- (void)handleVolumeUpButtonPressed;
- (void)hardwareButtonEventNotification:(id)a3;
- (void)mostRecentlyDisconnectedAudioCallDidClearNotification:(id)a3;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)notifyAudioCallControllerIfNecessaryCallDisplayStyleDidChangeFromStyle:(int64_t)a3 toStyle:(int64_t)a4;
- (void)observePrioritizedCall;
- (void)obtainIdleTimerAssertionWithComment:(id)a3;
- (void)participantsDidChangeLocation:(id)a3;
- (void)participantsView:(id)a3 didPerformActionType:(int64_t)a4;
- (void)performBottomBarActionType:(int64_t)a3;
- (void)phoneRemoteHostViewControllerDidDismiss;
- (void)pipControllerDidRequestReturnToFullScreenNotification:(id)a3;
- (void)pipProxyActiveChangedNotification:(id)a3;
- (void)pipStashChangedNotification:(id)a3;
- (void)pipStateChangedNotification:(id)a3;
- (void)popoverPresentationControllerDidDismissPopover:(id)a3;
- (void)prepareForDeviceLockWithCompletion:(id)a3;
- (void)prepareForDismissal;
- (void)prepareForPopoverPresentation:(id)a3;
- (void)presentAsPopover:(id)a3 fromView:(id)a4 completion:(id)a5;
- (void)presentBlockAndReportAlertToBlockCall:(id)a3 forViewController:(id)a4 completion:(id)a5;
- (void)presentContactsViewControllerForView:(id)a3;
- (void)presentCreateContactViewControllerWithHandle:(id)a3 forViewController:(id)a4;
- (void)presentDisconnectionAlert:(id)a3;
- (void)presentMiniWindowViewControllerAnimated:(BOOL)a3;
- (void)presentPhoneRemoteViewControllerForView:(id)a3;
- (void)presentScreenTimeHostViewController;
- (void)presentViewControllerFullScreen:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)printUI;
- (void)pttCallStateChangedNotification:(id)a3;
- (void)pullRelayingCallsIfNecessary;
- (void)receptionistSessionChangedNotification:(id)a3;
- (void)receptionistStateChangedNotification:(id)a3;
- (void)refreshBottomBarButtonLayout;
- (void)registerForNotifications;
- (void)releaseIdleTimerAssertionWithComment:(id)a3;
- (void)remoteParticipantHandlesChangedNotification:(id)a3;
- (void)removeViewController:(id)a3;
- (void)reportWithCall:(id)a3;
- (void)requestInCallDismissal;
- (void)requestInCallSceneTransitionToFullScreen;
- (void)rotatePIPForInterfaceOrientation:(int64_t)a3;
- (void)routesChangedForRouteController:(id)a3;
- (void)sceneDidConnect;
- (void)screeningStateChangedNotification:(id)a3;
- (void)sendResponseIfNecessaryWithUnhandledEvents:(unint64_t)a3;
- (void)sendUserRating:(int)a3 dontShowPromptAgain:(BOOL)a4;
- (void)setBackgroundStyle:(int64_t)a3 animatedWithDuration:(double)a4;
- (void)setCurrentAlertButtonAction:(id)a3;
- (void)setNeedsStatusBarPillSuppressionUpdate;
- (void)setStatusBarHidden:(BOOL)a3 withDuration:(double)a4;
- (void)setTemporarilyAllowAllStatusBarPills:(BOOL)a3;
- (void)setupAutoAnswer;
- (void)showCallDetailsView;
- (void)showFailureOrFallbackAlertIfNecessaryForCall:(id)a3;
- (void)showHideMiniWindowViewIfNeededAnimated:(BOOL)a3;
- (void)showKeypadIfPossible;
- (void)startObservingAcceptCallButtonTappedWithNotificationCenter:(id)a3;
- (void)statusBarTappedInFullScreen;
- (void)traitCollectionDidChange:(id)a3;
- (void)transitionIntoPiP;
- (void)transitionToVideoCallBasedViewController:(id)a3 shouldUpdatePipSize:(BOOL)a4;
- (void)unansweredCallUIDismissed;
- (void)undimScreenIfNecessary:(id)a3;
- (void)updateAlertActivationReason;
- (void)updateAlertActivationReasonForCall:(id)a3;
- (void)updateBackgroundStartPipAuthorizationState;
- (void)updateBannerTapGestureRecognizerForCallDisplayStyle:(int64_t)a3;
- (void)updateBottomControlsViewWithInCallState:(unsigned __int16)a3;
- (void)updateCallControllerForCurrentState;
- (void)updateCallDetailsViewIsOnScreen;
- (void)updateCallForUserFeedback;
- (void)updateCallParticipantLabelsViewForViewController:(id)a3;
- (void)updateDesiredSpringboardBehavior;
- (void)updateGameControllerManagerForCurrentState;
- (void)updateInCallWindowSceneFaceTimeLaunchBehavior;
- (void)updateInCallWindowScenePrefersHiddenWhenDismissed;
- (void)updateMultiwayDeviceOrientation:(int64_t)a3;
- (void)updateMultiwayViewControllerUIState;
- (void)updateRemoteAlertSwipeDismissalStyleForCall:(id)a3;
- (void)updateShouldBecomeVisibleWhenWakingDisplay;
- (void)updateTransportIndicatorView;
- (void)updateUPlusOneVideoCallViews;
- (void)updateVideoState;
- (void)videoCallStateChangedNotification:(id)a3;
- (void)viewController:(id)a3 fullScreenFocusedParticipantAspectRatioChanged:(CGSize)a4 participantGridIsFullScreen:(BOOL)a5;
- (void)viewController:(id)a3 fullScreenFocusedParticipantOrientationChanged:(int64_t)a4;
- (void)viewController:(id)a3 localParticipantAspectRatioChanged:(CGSize)a4;
- (void)viewController:(id)a3 mediaPipSafeAreaFrameChanged:(CGRect)a4;
- (void)viewController:(id)a3 pipSourceProviderNeedsUpdate:(id)a4;
- (void)viewControllerDidRequestTemporaryPreventSuspension:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewServiceDidTerminateWithError:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)wantsDismissal;
- (void)wantsHoldMusicChangedNotification:(id)a3;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)willRotate:(id)a3;
- (void)willTransitionToFullScreenNotification:(id)a3;
@end

@implementation PHInCallRootViewController

- (BOOL)isPresentingRemoteHostViewController
{
  v2 = [(PHInCallRootViewController *)self remoteHostViewController];
  v3 = [v2 presentingViewController];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isPresentingContactsViewController
{
  v2 = [(PHInCallRootViewController *)self contactsViewController];
  v3 = [v2 presentingViewController];
  v4 = v3 != 0;

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
  v3 = [(PHInCallRootViewController *)self screenTimeHostViewController];

  if (v3)
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
      v6 = [(PHInCallRootViewController *)self screenTimeHostViewController];
      *buf = 138412290;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Dismissing screen time view controller: %@", buf, 0xCu);
    }

    v7 = [(PHInCallRootViewController *)self presentedViewController];
    v8 = [(PHInCallRootViewController *)self screenTimeHostViewController];
    v9 = [v7 isEqual:v8];

    if (v9)
    {
      v10 = [(PHInCallRootViewController *)self presentedViewController];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000F5E04;
      v18[3] = &unk_100356FD8;
      v18[4] = self;
      v19 = v4;
      v11 = v4;
      [v10 dismissViewControllerAnimated:1 completion:v18];

      v12 = v19;
    }

    else
    {
      v13 = [(PHInCallRootViewController *)self screenTimeHostViewController];
      [v13 willMoveToParentViewController:0];

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
  v3 = [(PHInCallRootViewController *)self features];
  v4 = [v3 callManagerEnabled];

  if (v4)
  {
    v5 = [(PHInCallRootViewController *)self callManager];
    v6 = [v5 audioCallNavController];
  }

  else
  {
    v6 = self->_audioCallNavigationController;
  }

  return v6;
}

- (BOOL)shouldShowScreenTimeShield
{
  if ([(PHInCallRootViewController *)self shouldShowSOS])
  {
    return 0;
  }

  v4 = [(PHInCallRootViewController *)self filteredRequest];
  if (v4 && [qword_1003B0ED8 containsObject:@"PHScreenTimeAlertAssertionReason"])
  {
    v5 = [(PHInCallRootViewController *)self callCenter];
    v6 = [v5 incomingVideoCall];
    if (v6)
    {
      v3 = 0;
    }

    else
    {
      v7 = [(PHInCallRootViewController *)self callCenter];
      v8 = [v7 incomingCall];
      v3 = v8 == 0;
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
  v3 = [(PHInCallRootViewController *)self callDisplayStyleManager];
  v4 = [v3 callDisplayStyle];

  if (!v4)
  {
    v5 = +[CNKGameControllerManager shared];
    if (v5)
    {
      v9 = v5;
      v6 = [(PHInCallRootViewController *)self callCenter];
      v7 = [v6 incomingCall];
      v8 = [v6 incomingVideoCall];
      if (v7 | v8)
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
  v3 = [v2 delegate];
  v4 = [v3 sceneManager];
  v5 = [v4 callScene];

  return v5;
}

- (BOOL)wantsMiniWindowCoverViewController
{
  v3 = [(PHInCallRootViewController *)self isDisplayStyleMiniWindow];
  if (v3)
  {
    v4 = [(PHInCallRootViewController *)self callCenter];
    v5 = [v4 hasCurrentCalls];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)isDisplayStyleMiniWindow
{
  v2 = [(PHInCallRootViewController *)self callDisplayStyleManager];
  v3 = [v2 callDisplayStyle] == 1;

  return v3;
}

- (TUFeatureFlags)featureFlags
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 delegate];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 featureFlags];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isFullScreen
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 delegate];
  v5 = [v4 currentInCallScene];

  if (v5)
  {
    v6 = +[UIApplication sharedApplication];
    v7 = [v6 delegate];
    v8 = [v7 currentInCallScene];
    if ([v8 presentationMode] == 2)
    {
      v9 = 1;
    }

    else
    {
      v10 = +[UIApplication sharedApplication];
      v11 = [v10 delegate];
      v12 = [v11 currentInCallScene];
      if ([v12 presentationMode] == 3)
      {
        v9 = 1;
      }

      else
      {
        v13 = +[UIApplication sharedApplication];
        v14 = [v13 delegate];
        v15 = [v14 sceneManager];
        if ([v15 hasPendingCompletionForSceneType:0 presentationMode:2])
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

  v6 = [(PHInCallRootViewController *)self callDisplayStyleManager];
  if ([v6 callDisplayStyle] != 2)
  {
    v7 = [(PHInCallRootViewController *)self callDisplayStyleManager];
    v9 = [v7 callDisplayStyle] == 3;
LABEL_15:

    goto LABEL_16;
  }

  v9 = 1;
LABEL_16:

  return v9;
}

- (void)updateCallDetailsViewIsOnScreen
{
  v5 = [(PHInCallRootViewController *)self callDetailsNavigationController];

  if (v5)
  {
    v6 = [(PHInCallRootViewController *)self isPresentingCallDetailsView];
    if (v6)
    {
      v9 = +[UIApplication sharedApplication];
      v2 = [v9 delegate];
      v3 = [v2 sceneManager];
      v7 = [v3 hasActiveOrPendingFullScreenCallScene];
    }

    else
    {
      v7 = 0;
    }

    v8 = [(PHInCallRootViewController *)self callDetailsNavigationController];
    [v8 setIsOnScreen:v7];

    if (v6)
    {
    }
  }
}

- (void)updateDesiredSpringboardBehavior
{
  v3 = [(PHInCallRootViewController *)self audioCallViewControllerIfLoaded];
  if (v3)
  {
    v4 = [(PHInCallRootViewController *)self audioCallViewControllerIfLoaded];
    v5 = [v4 allowsOrientationChangeEvents];
  }

  else
  {
    v5 = self->_multiwayViewController != 0;
  }

  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 67109120;
    v37 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting allowsOrientationChangeEvents to %d", &v36, 8u);
  }

  v7 = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
  [v7 setOrientationChangedEventsEnabled:v5];

  v8 = [(PHInCallRootViewController *)self callCenter];
  v9 = [(PHInCallRootViewController *)self desiredButtonEventsForCallContainer:v8];
  v10 = [(PHSOSViewController *)self->_sosViewController desiredButtonEvents]| v9;

  v11 = sub_100004F84();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 67109120;
    v37 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Setting desired hardware buttons to %d", &v36, 8u);
  }

  v12 = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
  [v12 setDesiredHardwareButtonEvents:v10];

  v13 = [(PHInCallRootViewController *)self inCallWindowScene];

  if (v13)
  {
    v14 = [(PHInCallRootViewController *)self desiresLockButtonEvents];
    v15 = [(PHInCallRootViewController *)self callCenter];
    v16 = [(PHInCallRootViewController *)self desiredSceneButtonEventsForCallContainer:v15];
    v17 = [(PHSOSViewController *)self->_sosViewController desiredSceneButtonEvents]| v16;

    v18 = sub_100004F84();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 67109376;
      v37 = v17;
      v38 = 1024;
      v39 = v14;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Setting scenes desired button events to %d and desires lock button events to %d", &v36, 0xEu);
    }

    v19 = [(PHInCallRootViewController *)self inCallWindowScene];
    [v19 setSupportsDeviceLockEvents:v14];

    v20 = [(PHInCallRootViewController *)self inCallWindowScene];
    [v20 setPreferredHardwareButtonEventTypes:v17];

    [(PHInCallRootViewController *)self updateInCallWindowScenePrefersHiddenWhenDismissed];
    [(PHInCallRootViewController *)self updateInCallWindowSceneFaceTimeLaunchBehavior];
  }

  if (v3)
  {
    v21 = [v3 allowsMenuButtonDismissal];
  }

  else
  {
    v21 = 1;
  }

  sosViewController = self->_sosViewController;
  if (sosViewController)
  {
    v23 = [(PHSOSViewController *)sosViewController allowsMenuButtonDismissal];
  }

  else
  {
    v23 = 1;
  }

  v24 = v21 & v23;
  v25 = sub_100004F84();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 67109120;
    v37 = v24;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Setting allows menu button dismissal to %d", &v36, 8u);
  }

  v26 = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
  [v26 setAllowsMenuButtonDismissal:v24];

  [(PHInCallRootViewController *)self setAllowHomeOutDismissal:v24];
  [(PHInCallRootViewController *)self setNeedsUpdateOfHomeIndicatorAutoHidden];
  if (v3)
  {
    v27 = [v3 allowsOtherAlertsToStackOnTop];
    v28 = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
    [v28 setAllowsAlertStacking:v27];

    v29 = [v3 allowsBanners];
  }

  else
  {
    v30 = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
    v29 = 1;
    [v30 setAllowsAlertStacking:1];
  }

  v31 = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
  [v31 setAllowsBanners:v29];

  if (([v3 wantsApplicationDismissalStyle] & 1) != 0 || -[CNKMultiwayViewControllerProtocol wantsApplicationDismissalStyle](self->_multiwayViewController, "wantsApplicationDismissalStyle"))
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

  v33 = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
  [v33 setDismissalAnimationStyle:v32];

  v34 = [(PHInCallRootViewController *)self callCenter];
  v35 = [v34 frontmostAudioOrVideoCall];
  [(PHInCallRootViewController *)self updateRemoteAlertSwipeDismissalStyleForCall:v35];

  [(PHInCallRootViewController *)self updateShouldBecomeVisibleWhenWakingDisplay];
}

- (id)audioCallViewControllerIfLoaded
{
  audioCallViewController = self->_audioCallViewController;
  if (audioCallViewController)
  {
    v3 = audioCallViewController;
  }

  else
  {
    v4 = [(PHInCallRootViewController *)self callManager];
    v3 = [v4 audioCallViewController];
  }

  return v3;
}

- (UIViewController)currentViewController
{
  v3 = [(PHInCallRootViewController *)self audioCallNavigationController];
  v4 = [v3 view];
  v5 = [v4 superview];
  if (v5)
  {
    v6 = v5;
    v7 = [(PHInCallRootViewController *)self audioCallNavigationController];
    v8 = [v7 parentViewController];

    if (v8)
    {
      v9 = [(PHInCallRootViewController *)self audioCallNavigationController];
      goto LABEL_20;
    }
  }

  else
  {
  }

  v10 = 96;
  v11 = [(PHEmergencyDialerViewController *)self->_emergencyDialerViewController view];
  v12 = [v11 superview];
  if (v12)
  {
    v13 = v12;
    v14 = [(PHEmergencyDialerViewController *)self->_emergencyDialerViewController parentViewController];

    if (v14)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v10 = 104;
  v15 = [(PHSOSViewController *)self->_sosViewController view];
  v16 = [v15 superview];
  if (v16)
  {
    v17 = v16;
    v18 = [(PHSOSViewController *)self->_sosViewController parentViewController];

    if (v18)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v10 = 160;
  v19 = [(UINavigationController *)self->_videoCallNavigationController view];
  v20 = [v19 superview];
  if (!v20)
  {

    goto LABEL_17;
  }

  v21 = v20;
  v22 = [(UINavigationController *)self->_videoCallNavigationController parentViewController];

  if (v22)
  {
LABEL_19:
    v9 = *(&self->super.super.super.isa + v10);
    goto LABEL_20;
  }

LABEL_17:
  v10 = 144;
  v23 = [(PHPTTFullScreenContainerViewController *)self->_pttFullScreenContainerViewController view];
  v24 = [v23 superview];
  if (v24)
  {
    v25 = v24;
    v26 = [(PHPTTFullScreenContainerViewController *)self->_pttFullScreenContainerViewController parentViewController];

    if (v26)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v28 = [(PHInCallRootViewController *)self callDetailsNavigationController];
  v29 = [v28 view];
  v30 = [v29 superview];
  if (v30)
  {
    v31 = v30;
    v32 = [(PHInCallRootViewController *)self callDetailsNavigationController];
    v33 = [v32 parentViewController];

    if (v33)
    {
      v9 = [(PHInCallRootViewController *)self callDetailsNavigationController];
      goto LABEL_20;
    }
  }

  else
  {
  }

  v9 = 0;
LABEL_20:

  return v9;
}

- (void)_loadAudioCallViewController
{
  v3 = [(PHInCallRootViewController *)self callCenter];
  v4 = [v3 frontmostAudioOrVideoCall];

  v5 = [(PHInCallRootViewController *)self features];
  v6 = [v5 callManagerEnabled];

  if (v6)
  {
    v7 = [(PHInCallRootViewController *)self callManager];
    [v7 createAudioCallViewControllerWithCall:v4];
LABEL_18:

    goto LABEL_19;
  }

  if (!self->_audioCallViewController)
  {
    v8 = [(PHInCallRootViewController *)self features];
    v9 = [v8 isiPadPostersEnabledForCall:v4];

    if (v9)
    {
      [(PHInCallRootViewController *)self setExistingPrioritizedCall:v4];
      v10 = [(PHInCallRootViewController *)self callDisplayStyleManager];
      [v10 setUsesLargeFormatUI:1];

      v11 = [iPadAudioCallViewController alloc];
      v12 = [(PHInCallRootViewController *)self callDisplayStyleManager];
      v13 = [(PHInCallRootViewController *)self callCenter];
      v14 = [(PHInCallRootViewController *)self featureFlags];
      v15 = [(iPadAudioCallViewController *)v11 initWithCallDisplayStyleManager:v12 callCenter:v13 featureFlags:v14 call:self->_existingPrioritizedCall];

      [(PHInCallRootViewController *)self setCurrentChildAudioViewController:v15];
      objc_storeStrong(&self->_audioCallViewController, v15);
      v16 = [(TUCall *)self->_existingPrioritizedCall uniqueProxyIdentifier];

      if (v16)
      {
        v17 = [(PHInCallRootViewController *)self viewControllersDict];
        v18 = [(TUCall *)self->_existingPrioritizedCall uniqueProxyIdentifier];
        [v17 setObject:v15 forKey:v18];
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
      v22 = [(PHInCallRootViewController *)self callDisplayStyleManager];
      v23 = [(PHInCallRootViewController *)self callCenter];
      v24 = [(PHInCallRootViewController *)self featureFlags];
      v25 = [(PHAudioCallViewController *)v21 initWithCallDisplayStyleManager:v22 callCenter:v23 featureFlags:v24];
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

    v28 = [(PHInCallRootViewController *)self featureFlags];
    v29 = [v28 audioCallUIModernizationEnabled];

    if (v29)
    {
      v30 = [PHAudioCallViewControllerWrapper alloc];
      v31 = [(PHInCallRootViewController *)self callDisplayStyleManager];
      v32 = [(PHInCallRootViewController *)self callCenter];
      v33 = [(PHInCallRootViewController *)self view];
      [v33 bounds];
      v35 = [(PHAudioCallViewControllerWrapper *)v30 initWithCallDisplayStyleManager:v31 callCenter:v32 width:self inCallRootViewController:v34];
      audioCallViewControllerWrapper = self->_audioCallViewControllerWrapper;
      self->_audioCallViewControllerWrapper = v35;

      v37 = [UINavigationController alloc];
      v38 = [(PHInCallRootViewController *)self audioCallViewControllerWrapper];
      v39 = [(PHAudioCallViewControllerProtocol *)v38 viewController];
      v40 = [v37 initWithRootViewController:v39];
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
        v44 = [(PHInCallRootViewController *)self view];
        [v44 bounds];
        v46 = v45;
        v48 = v47;
        v50 = v49;
        v52 = v51;
        v53 = [(UINavigationController *)self->_audioCallNavigationController view];
        [v53 setFrame:{v46, v48, v50, v52}];

        v54 = [(UINavigationController *)self->_audioCallNavigationController view];
        [v54 setAutoresizingMask:18];

        [(UINavigationController *)self->_audioCallNavigationController setNavigationBarHidden:1];
        [(UINavigationController *)self->_audioCallNavigationController setDelegate:self];
        [(UINavigationController *)self->_audioCallNavigationController _setBuiltinTransitionStyle:1];
        [(PHAudioCallViewControllerProtocol *)self->_audioCallViewController setInCallRootViewController:self];
        v7 = [(UINavigationController *)self->_audioCallNavigationController navigationBar];
        v55 = +[UIColor clearColor];
        [v7 setBackgroundColor:v55];

        [v7 setTranslucent:1];
        v56 = objc_opt_new();
        [v7 setBackgroundImage:v56 forBarMetrics:0];

        v57 = objc_opt_new();
        [v7 setShadowImage:v57];

        v58 = +[UIColor whiteColor];
        [v7 setTintColor:v58];

        v59 = +[UIColor whiteColor];
        v62 = v59;
        v60 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
        [v7 setTitleTextAttributes:v60];

        goto LABEL_18;
      }

      v38 = self->_audioCallViewController;
      v42 = [[UINavigationController alloc] initWithRootViewController:v38];
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
  v3 = [(PHInCallRootViewController *)self features];
  v4 = [v3 callManagerEnabled];

  if (v4)
  {
    v5 = [(PHInCallRootViewController *)self callManager];
    v6 = [v5 audioCallViewController];
  }

  else
  {
    v6 = self->_audioCallViewController;
  }

  return v6;
}

- (BOOL)isPickedRouteReceiver
{
  v2 = [(PHInCallRootViewController *)self callCenter];
  v3 = [v2 routeController];
  v4 = [v3 pickedRoute];
  v5 = [v4 isReceiver];

  return v5;
}

- (BOOL)desiresLockButtonEvents
{
  v3 = [(PHInCallRootViewController *)self audioCallViewControllerIfLoaded];
  if (([v3 desiresLockButtonEvents] & 1) != 0 || -[PHSOSViewController desiresLockButtonEvents](self->_sosViewController, "desiresLockButtonEvents"))
  {
    v4 = 1;
  }

  else
  {
    v5 = [(PHInCallRootViewController *)self callCenter];
    if ([v5 hasCurrentVideoCalls])
    {
      v4 = 1;
    }

    else
    {
      v4 = [(PHInCallRootViewController *)self isPresentingViewControllerWithSensitiveInformation];
    }
  }

  return v4;
}

- (void)updateInCallWindowScenePrefersHiddenWhenDismissed
{
  v3 = [(PHInCallRootViewController *)self inCallWindowScene];

  if (v3)
  {
    if (-[PHInCallRootViewController isPresentingCallDetailsView](self, "isPresentingCallDetailsView") && (+[UIApplication sharedApplication](UIApplication, "sharedApplication"), v4 = objc_claimAutoreleasedReturnValue(), [v4 delegate], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "didDeepLinkToCallDetailsView"), v5, v4, !v6))
    {
      v9 = 1;
    }

    else
    {
      v7 = [(PHInCallRootViewController *)self callCenter];
      v8 = [v7 frontmostBargeCall];
      v9 = v8 != 0;
    }

    v10 = [(PHInCallRootViewController *)self callCenter];
    v11 = [v10 frontmostCall];

    if (v11)
    {
      v12 = [v11 provider];
      if ([v12 supportsDynamicSystemUI])
      {
        v13 = [(PHInCallRootViewController *)self featureFlags];
        if ([v13 groupConversations])
        {
          v9 |= TUDeviceHasChinaSKU();
        }
      }
    }

    v14 = [(PHInCallRootViewController *)self inCallWindowScene];
    v15 = [v14 prefersHiddenWhenDismissed];

    if ((v9 & 1) != v15)
    {
      v16 = sub_100004F84();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(PHInCallRootViewController *)self inCallWindowScene];
        v18 = v17;
        v19 = @"NO";
        if (v9)
        {
          v19 = @"YES";
        }

        v21 = 138412546;
        v22 = v17;
        v23 = 2112;
        v24 = v19;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Updating scene: %@ prefersHiddenWhenDismissed: %@", &v21, 0x16u);
      }

      v20 = [(PHInCallRootViewController *)self inCallWindowScene];
      [v20 setPrefersHiddenWhenDismissed:v9 & 1];
    }
  }
}

- (BOOL)isPresentingCallDetailsView
{
  v3 = [(PHInCallRootViewController *)self callDetailsNavigationController];
  if (v3)
  {
    v4 = [(PHInCallRootViewController *)self callDetailsNavigationController];
    v5 = [v4 view];
    v6 = [v5 superview];
    if (v6)
    {
      v7 = [(PHInCallRootViewController *)self callDetailsNavigationController];
      v8 = [v7 parentViewController];
      v9 = v8 != 0;
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
  v3 = [(PHInCallRootViewController *)self inCallWindowScene];

  if (v3)
  {
    v4 = [(PHInCallRootViewController *)self shouldShowInCallWindowScene];
    v5 = [(PHInCallRootViewController *)self inCallWindowScene];
    [v5 setShouldNeverBeShownWhenLaunchingFaceTime:v4 ^ 1];
  }
}

- (BOOL)shouldShowInCallWindowScene
{
  v3 = [(PHInCallRootViewController *)self callCenter];
  v4 = [v3 conversationManager];
  v5 = [v4 avLessConversation];

  v6 = [(PHInCallRootViewController *)self currentViewController];
  v7 = [(PHInCallRootViewController *)self pttFullScreenContainerViewController];

  return v6 != v7 && v5 == 0;
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
  v3 = [(PHInCallRootViewController *)self callCenter];
  v4 = [v3 frontmostAudioOrVideoCall];

  if (!v4 || ([v4 isVideo] & 1) != 0 || (objc_msgSend(v4, "remoteParticipantHandles"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6 != 1))
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

  v7 = [v4 isScreening];
  v8 = SBUIIsSystemApertureEnabled();
  v9 = v8 & v7 ^ 1;
  if (v8 & 1) == 0 && (v7)
  {
LABEL_10:
    v10 = [(PHInCallRootViewController *)self currentViewController];
    v11 = [(PHInCallRootViewController *)self pttFullScreenContainerViewController];
    v9 = v10 == v11;
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
  v14 = [v13 delegate];
  v15 = [v14 currentInCallScene];
  [v15 setShouldBecomeVisibleWhenWakingDisplay:v9];
}

- (void)updateTransportIndicatorView
{
  if (!CPIsInternalDevice())
  {
    return;
  }

  v3 = PHPreferencesGetValue();
  v4 = [v3 BOOLValue];

  if (!v4)
  {
    return;
  }

  v5 = [(PHInCallRootViewController *)self callCenter];
  v25 = [v5 callPassingTest:&stru_100359728];

  v6 = [(PHInCallRootViewController *)self transportIndicatorView];
  if (!v25)
  {

    if (v6)
    {
      v22 = [(PHInCallRootViewController *)self transportIndicatorView];
      [v22 removeFromSuperview];

      [(PHInCallRootViewController *)self setTransportIndicatorView:0];
    }

    goto LABEL_16;
  }

  if (!v6)
  {
    v7 = [[UIView alloc] initWithFrame:{0.0, 0.0, 15.0, 15.0}];
    [(PHInCallRootViewController *)self setTransportIndicatorView:v7];

    v8 = [(PHInCallRootViewController *)self transportIndicatorView];
    [v8 setAutoresizingMask:9];

    v9 = [(PHInCallRootViewController *)self transportIndicatorView];
    v10 = [v9 layer];
    [v10 setCornerRadius:7.5];

    v11 = [(PHInCallRootViewController *)self view];
    v12 = [(PHInCallRootViewController *)self transportIndicatorView];
    [v11 addSubview:v12];

    v13 = [(PHInCallRootViewController *)self view];
    [v13 bounds];
    v15 = v14 + -15.0 + -5.0;
    v16 = [(PHInCallRootViewController *)self view];
    [v16 bounds];
    v18 = v17 + -15.0 + -5.0;
    v19 = [(PHInCallRootViewController *)self transportIndicatorView];
    [v19 setFrame:{v15, v18, 15.0, 15.0}];
  }

  v20 = [v25 faceTimeTransportType];
  if (v20 == 2)
  {
    v21 = +[UIColor systemBlueColor];
    goto LABEL_15;
  }

  if (v20 == 1)
  {
    v21 = +[UIColor systemGreenColor];
    goto LABEL_15;
  }

  if (!v20)
  {
    v21 = +[UIColor systemGrayColor];
LABEL_15:
    v23 = v21;
    v24 = [(PHInCallRootViewController *)self transportIndicatorView];
    [v24 setBackgroundColor:v23];
  }

LABEL_16:
}

- (id)_remoteViewControllerProxy
{
  v3 = [(PHInCallRootViewController *)self parentViewController];
  if (v3 && (v4 = v3, [(PHInCallRootViewController *)self parentViewController], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, v4, (v6 & 1) != 0))
  {
    v7 = [(PHInCallRootViewController *)self parentViewController];
    v8 = [v7 _remoteViewControllerProxy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
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
    v6 = [(PHInCallRootViewController *)self callCenter];
    v7 = [v6 incomingCall];
    v8 = [v6 callWithStatus:5];
    v9 = +[UIApplication sharedApplication];
    v10 = [v9 delegate];
    v11 = [v10 mostRecentlyDisconnectedAudioCall];
    v267 = v8;
    if ([v11 disconnectedReasonRequiresCallBackUI])
    {
      v12 = +[PHInCallUIUtilities isSpringBoardPasscodeLocked]^ 1;
    }

    else
    {
      v13 = +[UIApplication sharedApplication];
      v14 = [v13 delegate];
      v15 = [v14 mostRecentlyDisconnectedAudioCall];
      if ([v15 shouldShowFailureAlert])
      {
        v12 = +[PHInCallUIUtilities isSpringBoardPasscodeLocked]^ 1;
      }

      else
      {
        v12 = 0;
      }
    }

    v16 = +[UIApplication sharedApplication];
    v17 = [v16 delegate];
    v18 = [v17 mostRecentlyDisconnectedVideoCall];
    v268 = self;
    if ([v18 disconnectedReasonRequiresCallBackUI])
    {
      v19 = +[PHInCallUIUtilities isSpringBoardPasscodeLocked]^ 1;
    }

    else
    {
      v20 = v6;
      v21 = v7;
      v22 = +[UIApplication sharedApplication];
      v23 = [v22 delegate];
      v24 = [v23 mostRecentlyDisconnectedVideoCall];
      if ([v24 shouldShowFailureAlert])
      {
        v25 = +[PHInCallUIUtilities isSpringBoardPasscodeLocked]^ 1;
      }

      else
      {
        v25 = 0;
      }

      v19 = v25;
      v7 = v21;
      v6 = v20;
      self = v268;
    }

    v26 = [qword_1003B0ED8 containsObject:@"PHRedialCallAssertionReason"];
    if ((v12 | v19))
    {
      v27 = +[PHPIPController defaultPIPController];
      v28 = [v27 pipState];

      if (v28 == 2)
      {
        v29 = +[PHPIPController defaultPIPController];
        [v29 cancelPIPIfNeeded];
      }
    }

    v30 = [v6 bargeCalls];
    v31 = [v30 count];

    v270 = [v6 callsPassingTest:&stru_1003594B8];
    v32 = [v6 frontmostCall];
    if ([v32 isActive])
    {
      v33 = v6;
      v34 = v7;
      v35 = v19;
      v36 = v33;
      v37 = [v33 frontmostCall];
      v38 = [v37 provider];
      if ([v38 supportsDynamicSystemUI])
      {
        v39 = [v270 count];

        v19 = v35;
        v7 = v34;
        v6 = v36;
        self = v268;
        if (v39)
        {
          goto LABEL_30;
        }

        v32 = [(PHInCallRootViewController *)v268 featureFlags];
        if ([v32 groupConversations])
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
            v43 = [v42 delegate];
            v44 = [v43 bannerPresentationManager];
            [v44 showGreenTea3PHUD];

LABEL_38:
            v45 = v267;
LABEL_272:

            goto LABEL_273;
          }

LABEL_30:
          if ((-[NSObject hasCurrentCalls](v6, "hasCurrentCalls") & 1) == 0 && ((+[TUCallCapabilities isEmergencyCallbackModeEnabled](TUCallCapabilities, "isEmergencyCallbackModeEnabled") | v12 | v19) & 1) == 0 && !-[PHInCallRootViewController shouldShowVideoCallBlockAndReportScreen](self, "shouldShowVideoCallBlockAndReportScreen") && !-[PHInCallRootViewController shouldShowSOS](self, "shouldShowSOS") && !-[PHInCallRootViewController shouldShowScreenTimeShield](self, "shouldShowScreenTimeShield") && (([qword_1003B0ED8 containsObject:@"PHUserScoreShowingAssertionReason"] | v26) & 1) == 0 && !v31 && (objc_msgSend(qword_1003B0ED8, "containsObject:", @"PHAVLessConversationDetailsViewAssertionReason") & 1) == 0 && (objc_msgSend(qword_1003B0ED8, "containsObject:", @"PHAVLessConversationAssertionReason") & 1) == 0 && (objc_msgSend(qword_1003B0ED8, "containsObject:", @"PHVideoMessageInProgressAssertionReason") & 1) == 0 && (objc_msgSend(qword_1003B0ED8, "containsObject:", @"PHCallEndedBlockAndReportInProgressAssertionReason") & 1) == 0)
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

          if ([v6 anyCallPassesTest:&stru_1003594D8])
          {
            v42 = sub_100004F84();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Ringing call wants suppressed UI, not displaying a view controller.", buf, 2u);
            }

            goto LABEL_38;
          }

          v260 = [(PHInCallRootViewController *)self currentViewController];
          if (self->_videoCallNavigationController == v260)
          {
            v47 = [(CNKMultiwayViewControllerProtocol *)self->_multiwayViewController view];
            v48 = [v47 superview];
            if (v48)
            {
              v49 = [(CNKMultiwayViewControllerProtocol *)self->_multiwayViewController parentViewController];
              v248 = v49 != 0;
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

          v50 = [v6 currentAudioAndVideoCalls];
          v51 = [v50 count];

          v271[0] = _NSConcreteStackBlock;
          v271[1] = 3221225472;
          v271[2] = sub_1000F22E0;
          v271[3] = &unk_100359500;
          v52 = v6;
          v272 = v52;
          v273 = self;
          v257 = [v52 callPassingTest:v271];
          v258 = [v52 callPassingTest:&stru_100359520];
          v264 = [v52 incomingVideoCall];
          v256 = [v52 callPassingTest:&stru_100359540];
          v255 = [v52 callPassingTest:&stru_100359560];
          v53 = [v52 callWithStatus:2];
          if (v53)
          {
            v54 = [(PHInCallRootViewController *)self callManager];
            [v54 updateWithCall:v53];
          }

          v249 = v19;
          v251 = v53;
          v55 = [v52 callPassingTest:&stru_100359580];
          if (v55)
          {
            v56 = [(PHInCallRootViewController *)self callManager];
            [v56 updateWithCall:v55];
          }

          v259 = v55;
          v57 = [v46[39] sharedApplication];
          v58 = [v57 delegate];
          v59 = [v58 mostRecentlyDisconnectedVideoCall];

          if (v59)
          {
            v60 = [(PHInCallRootViewController *)self callManager];
            [v60 updateWithCall:v59];
          }

          v250 = v59;
          v61 = [v52 anyCallPassesTest:&stru_1003595A0];
          v62 = [v46[39] sharedApplication];
          v63 = [v62 delegate];
          v64 = [v63 mostRecentlyDisconnectedVideoCall];

          v65 = [v52 hasCurrentVideoCalls];
          v266 = v52;
          v66 = [v52 ics_hasTooManyCallsForCallWaitingBanner];
          if (v7)
          {
            v67 = [(PHInCallRootViewController *)self callManager];
            [v67 updateWithCall:v7];
          }

          v253 = ![(PHInCallRootViewController *)self shouldShowScreenTimeShield]| v61;
          if ((v253 & 1) == 0)
          {
            v74 = sub_100004F84();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              v75 = [(PHInCallRootViewController *)self filteredRequest];
              *buf = 138412290;
              v275 = v75;
              _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "InCallRootViewController will show screen time host view controller for request %@", buf, 0xCu);
            }

            v265 = 0;
            v71 = 0;
            v69 = &_s16CommunicationsUI29CallTranslationLanguagePickerV05SwiftB04ViewAAMc_ptr;
            if (!v64)
            {
              v261 = 0;
              v262 = 1;
              LODWORD(v72) = 0;
              v73 = 0;
              goto LABEL_81;
            }

            LODWORD(v72) = 0;
            v73 = 0;
            v261 = 0;
            goto LABEL_70;
          }

          if (v264)
          {
            v68 = sub_100004F84();
            v69 = &_s16CommunicationsUI29CallTranslationLanguagePickerV05SwiftB04ViewAAMc_ptr;
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v275 = v264;
              _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Showing video controller for ringing video call %@", buf, 0xCu);
            }

            if ([qword_1003B0ED8 containsObject:@"PHCallEndedBlockAndReportInProgressAssertionReason"])
            {
              v70 = [(PHInCallRootViewController *)self multiwayViewController];
              [v70 setIsInCallEndedBlockAndReportFlow:0];

              [objc_opt_class() releaseDismissalAssertionForReason:@"PHCallEndedBlockAndReportInProgressAssertionReason"];
            }

            v265 = v264;
            goto LABEL_62;
          }

          if (v51 == 1 && v257)
          {
            v79 = sub_100004F84();
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v275 = v257;
              _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Showing multiway controller for not-ringing multiway call %@", buf, 0xCu);
            }

            v265 = v257;
            v71 = 0;
            LODWORD(v72) = 0;
            v73 = 0;
            v261 = 0;
            v262 = 0;
            v69 = &_s16CommunicationsUI29CallTranslationLanguagePickerV05SwiftB04ViewAAMc_ptr;
            if (!v64)
            {
LABEL_81:
              v80 = +[PHPIPController defaultPIPController];
              v81 = [v80 pipState];

              v82 = v81 == 0;
              if (v81)
              {
                v83 = 0;
              }

              else
              {
                v83 = v72;
              }

              if (v82)
              {
                v84 = v71;
              }

              else
              {
                v84 = 0;
              }

              v85 = [(PHInCallRootViewController *)self multiwayViewController];

              if (v85)
              {
                if ([(PHInCallRootViewController *)self shouldExitVideoMessageFlowConsideringShowAudioController:v84 showEmergencyCallController:v83 showSOSController:v73 showScreenTimeController:v262 & 1 showUserScoreController:v261 showPTTFullScreenController:0])
                {
                  v86 = [(PHInCallRootViewController *)self multiwayViewController];
                  v87 = [v86 isInVideoMessageFlow];

                  if (v87)
                  {
                    v88 = [(PHInCallRootViewController *)self multiwayViewController];
                    [v88 cancelVideoRecordingWithCompletion:0];

                    [(PHInCallRootViewController *)self setMultiwayViewController:0];
                  }
                }
              }

              v89 = [v266 frontmostBargeCall];
              v90 = v262 | v73 | (v89 == 0) | (v265 != 0);

              v252 = v7;
              v269 = v73;
              if ((v90 | v261 | v84 | v83))
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
                  v93 = [v266 frontmostBargeCall];
                  *buf = 138412290;
                  v275 = v93;
                  _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "Loading PTT full screen controller %@", buf, 0xCu);
                }

                v94 = [(objc_class *)v69[39].isa sharedApplication];
                v95 = [v94 delegate];
                v254 = [v95 didDeepLinkToPTTCallDetailsView] ^ 1;

                v96 = [(objc_class *)v69[39].isa sharedApplication];
                v97 = [v96 delegate];
                v84 = [v97 didDeepLinkToPTTCallDetailsView];

                if (v84)
                {
                  v98 = [(PHPTTFullScreenContainerViewController *)self->_pttFullScreenContainerViewController view];
                  v99 = [v98 superview];
                  if (v99)
                  {
                    v100 = v99;
                    v101 = [(objc_class *)v69[39].isa sharedApplication];
                    v102 = [v101 delegate];
                    v103 = [v102 currentInCallScene];
                    v104 = [v103 presentationMode];

                    if (!v104)
                    {
                      [(PHPTTFullScreenContainerViewController *)self->_pttFullScreenContainerViewController removeFromParentViewController];
                      v105 = [(PHPTTFullScreenContainerViewController *)self->_pttFullScreenContainerViewController view];
                      [v105 removeFromSuperview];
                    }

                    v84 = 0;
                    v91 = 1;
                    v69 = &_s16CommunicationsUI29CallTranslationLanguagePickerV05SwiftB04ViewAAMc_ptr;
                  }

                  else
                  {

                    v84 = 0;
                    v91 = 1;
                  }
                }

                else
                {
                  v91 = 0;
                }
              }

              v107 = v84;
              v108 = [v266 frontmostAudioOrVideoCall];
              if (v108)
              {
              }

              else
              {
                v109 = [(objc_class *)v69[39].isa sharedApplication];
                v110 = [v109 delegate];
                v111 = [v110 bannerPresentationManager];
                v112 = [v111 conversationIsAVLess];

                if (v112)
                {
                  v113 = sub_100004F84();
                  if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "PHInCallRootViewController should show call details view for an AV-less conversation", buf, 2u);
                  }

                  v91 = 1;
LABEL_119:
                  v119 = v107;
                  [(PHInCallRootViewController *)self updateGameControllerManagerForCurrentState];
                  if (v83)
                  {
                    [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHEmergencyCallBackModeAssertionReason"];
                    v120 = [(PHEmergencyDialerViewController *)self->_emergencyDialerViewController view];
                    v121 = [v120 superview];

                    v45 = v267;
                    v7 = v252;
                    if (!v121)
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

                      [(PHInCallRootViewController *)self _transitionFromViewController:v260 toViewController:emergencyDialerViewController];
                      v126 = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
                      [v126 setWallpaperTunnelActive:1];
                    }

LABEL_185:
                    [(PHInCallRootViewController *)self showHideMiniWindowViewIfNeededAnimated:0];
                    v154 = v265;
                    if (v265)
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
                      v207 = [(PHInCallRootViewController *)self multiwayViewController];
                      if (![v207 isInVideoMessageFlow])
                      {
                        v208 = [(PHInCallRootViewController *)self shouldShowVideoCallBlockAndReportScreen];

                        if ((v208 & 1) == 0)
                        {
                          [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHMulitwayCallAssertionReason"];
                        }

                        v42 = 0;
                        v154 = v265;
LABEL_258:
                        if ((v119 | v254))
                        {
                          v209 = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
                          [v209 setWallpaperTunnelActive:1];
                        }

                        if (v269)
                        {
                          v210 = [(objc_class *)v69[39].isa sharedApplication];
                          v211 = [v210 delegate];
                          [v211 hideCarPlayUI];
                        }

                        else
                        {
                          if (v154)
                          {
                            v212 = 1;
                          }

                          else
                          {
                            v212 = v119;
                          }

                          v213 = [(PHInCallRootViewController *)self featureFlags];
                          if ([v213 carPlayBannersEnabled])
                          {
                            v214 = [v266 frontmostCall];
                            v215 = [v214 status] == 3;
                          }

                          else
                          {
                            v215 = 1;
                          }

                          if ((v212 & v215 & ([v259 originatingUIType] != 64)) != 1)
                          {
                            goto LABEL_271;
                          }

                          v210 = [(objc_class *)v69[39].isa sharedApplication];
                          v211 = [v210 delegate];
                          [v211 showCarPlayUIWithActivation:(v7 | v258 | v264) != 0];
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
                    v127 = [(PHInCallRootViewController *)self features];
                    if ([v127 callManagerEnabled])
                    {
                      v128 = [(PHInCallRootViewController *)self callCenter];
                      v129 = [v128 frontmostCall];

                      v45 = v267;
                      if (v129)
                      {
                        v130 = [(PHInCallRootViewController *)self callManager];
                        v131 = [(PHInCallRootViewController *)self callCenter];
                        v132 = [v131 frontmostCall];
                        [v130 updateWithCall:v132];

                        goto LABEL_141;
                      }
                    }

                    else
                    {

                      v45 = v267;
                    }

                    v142 = [(PHInCallRootViewController *)self audioCallNavigationController];
                    v143 = [v142 view];
                    v144 = [v143 superview];

                    if (v144)
                    {
LABEL_142:
                      if (!v260)
                      {
                        goto LABEL_181;
                      }

                      v146 = [(PHInCallRootViewController *)self audioCallViewController];
                      if (!v146)
                      {
                        goto LABEL_181;
                      }

                      v147 = v146;
                      v148 = [(PHInCallRootViewController *)self audioCallNavigationController];
                      if (v148)
                      {
                        v119 = v148;
                        v149 = [(PHInCallRootViewController *)self audioCallNavigationController];
                        v150 = [v149 view];
                        v151 = [v150 superview];
                        if (!(v151 | v265))
                        {
                          multiwayViewController = self->_multiwayViewController;

                          LODWORD(v119) = v107;
                          if (!multiwayViewController)
                          {
LABEL_181:
                            v7 = v252;
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

                          v147 = [(PHInCallRootViewController *)self audioCallNavigationController];
                          [(PHInCallRootViewController *)self _transitionFromViewController:v260 toViewController:v147];
LABEL_180:

                          goto LABEL_181;
                        }
                      }

                      LODWORD(v119) = v107;
                      goto LABEL_180;
                    }

                    v145 = sub_100004F84();
                    if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_DEFAULT, "InCallRootViewController showing Audio controller", buf, 2u);
                    }

                    v130 = [(PHInCallRootViewController *)self audioCallNavigationController];
                    [(PHInCallRootViewController *)self _transitionFromViewController:v260 toViewController:v130];
LABEL_141:

                    goto LABEL_142;
                  }

                  if (v269)
                  {
                    v133 = [(PHSOSViewController *)self->_sosViewController view];
                    v134 = [v133 superview];

                    v45 = v267;
                    v7 = v252;
                    if (!v134)
                    {
                      v135 = sub_100004F84();
                      if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "InCallRootViewController showing SOS controller", buf, 2u);
                      }

                      [(PHInCallRootViewController *)self _loadSOSViewController];
                      [(PHInCallRootViewController *)self _reloadSOSHandles];
                      [(PHInCallRootViewController *)self _transitionFromViewController:v260 toViewController:self->_sosViewController];
                      v136 = [(objc_class *)v69[39].isa sharedApplication];
                      v137 = [v136 delegate];
                      [v137 transitionSceneToOverlayForSOS];
                    }

                    v138 = +[UIColor clearColor];
                    v139 = [(PHInCallRootViewController *)self view];
                    v140 = [v139 window];
                    [v140 setBackgroundColor:v138];

                    v141 = @"showing SOS controller";
                    goto LABEL_183;
                  }

                  v154 = v265;
                  if (v265)
                  {
                    v155 = sub_100004F84();
                    if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_DEFAULT, "showMultiwayControllerCall", buf, 2u);
                    }

                    v156 = [(PHInCallRootViewController *)self callDisplayStyleManager];
                    v157 = v266;
                    v45 = v267;
                    if ([v156 callDisplayStyle])
                    {
                    }

                    else
                    {
                      v176 = [(PHInCallRootViewController *)self featureFlags];
                      v177 = [v176 conversationOneToOneModeEnabled];

                      v154 = v265;
                      if ((v177 & 1) == 0)
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
                    v180 = [v154 wantsStagingArea];
                    v263 = v179;
                    if (v180)
                    {
                      if ((+[TUConversationManager allowsVideo]& 1) == 0)
                      {
                        goto LABEL_211;
                      }

                      goto LABEL_200;
                    }

                    v69 = [v179 activeRemoteParticipants];
                    if (-[NSObject count](v69, "count") && [v179 state] != 3)
                    {
                      v157 = [(PHInCallRootViewController *)self multiwayViewController];
                      v119 = [v157 call];
                      if (![v119 isEqual:v154] && +[TUConversationManager allowsVideo](TUConversationManager, "allowsVideo"))
                      {
LABEL_200:
                        v181 = [(PHInCallRootViewController *)self featureFlags];
                        v182 = [v181 conversationOneToOneModeEnabled];

                        if (!v180)
                        {
                        }

                        if (v182)
                        {
                          goto LABEL_211;
                        }

                        v69 = sub_100004F84();
                        if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
                        {
                          sub_10025667C();
                        }

                        goto LABEL_210;
                      }
                    }

LABEL_210:

LABEL_211:
                    LODWORD(v119) = 0;
                    v7 = v252;
                    if (!v248)
                    {
                      v183 = [(PHInCallRootViewController *)self multiwayViewController];
                      v184 = [v183 isInVideoMessageFlow];

                      if ((v184 & 1) == 0)
                      {
                        v185 = sub_100004F84();
                        if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&_mh_execute_header, v185, OS_LOG_TYPE_DEFAULT, "InCallRootViewController showing Multiway controller", buf, 2u);
                        }

                        v186 = [(PHInCallRootViewController *)self multiwayViewController];
                        v187 = [v186 pipViewController];
                        v188 = [v187 parentViewController];

                        [(PHInCallRootViewController *)self _loadMultiwayViewControllerForCall:v265];
                        v189 = [(PHInCallRootViewController *)self multiwayViewController];
                        [(PHInCallRootViewController *)self transitionToVideoCallBasedViewController:v189 shouldUpdatePipSize:1];

                        v190 = +[PHInCallOrientationMonitor sharedInstance];
                        [v190 setOrientationEventsEnabled:1];

                        v191 = [(PHInCallRootViewController *)self multiwayViewController];

                        if (v186 != v191 && v188)
                        {
                          v192 = sub_100004F84();
                          if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
                          {
                            v193 = [v186 pipViewController];
                            *buf = 138412290;
                            v275 = v193;
                            _os_log_impl(&_mh_execute_header, v192, OS_LOG_TYPE_DEFAULT, "Old GFT call was showing PIP view controller %@", buf, 0xCu);
                          }

                          v194 = [v186 pipViewController];
                          [(PHInCallRootViewController *)self setOldMultiwayPIPViewController:v194];
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

                    v69 = &_s16CommunicationsUI29CallTranslationLanguagePickerV05SwiftB04ViewAAMc_ptr;
                    v154 = v265;

                    [(PHInCallRootViewController *)self showHideMiniWindowViewIfNeededAnimated:0];
                    goto LABEL_186;
                  }

                  if (v262)
                  {
                    v163 = [(PHInCallRootViewController *)self screenTimeHostViewController];
                    v164 = [v163 view];
                    v165 = [v164 superview];

                    v154 = 0;
                    v7 = v252;
                    if (!v165)
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
                      v7 = v252;
                      if (os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v195, OS_LOG_TYPE_DEFAULT, "InCallRootViewController showing User Feedback View controller", buf, 2u);
                      }

                      v196 = [(PHInCallRootViewController *)self callCenter];
                      v197 = [v196 videoDeviceController];
                      [v197 stopPreview];

                      [(PHInCallRootViewController *)self presentViewController:self->_userFeedbackViewController animated:1 completion:0];
                    }

                    else
                    {
                      v7 = v252;
                      if (!v254)
                      {
                        if (v91 && ![(PHInCallRootViewController *)self isPresentingCallDetailsView])
                        {
                          [(PHInCallRootViewController *)self showCallDetailsView];
                        }

                        goto LABEL_250;
                      }

                      v201 = [(PHPTTFullScreenContainerViewController *)self->_pttFullScreenContainerViewController view];
                      v202 = [v201 superview];

                      if (!v202)
                      {
                        v203 = sub_100004F84();
                        if (os_log_type_enabled(v203, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&_mh_execute_header, v203, OS_LOG_TYPE_DEFAULT, "InCallRootViewController showing PTT Full screen controller", buf, 2u);
                        }

                        [(PHInCallRootViewController *)self _loadPTTFullScreenContainerViewController];
                        [(PHInCallRootViewController *)self _transitionFromViewController:v260 toViewController:self->_pttFullScreenContainerViewController];
                        v204 = [(objc_class *)v69[39].isa sharedApplication];
                        v205 = [v204 delegate];
                        v206 = [v205 currentInCallScene];
                        [v206 requestTransitionToPresentationMode:0 shouldDismissCMASAlerts:0 analyticsSource:0];
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

              v114 = [(objc_class *)v69[39].isa sharedApplication];
              v115 = [v114 delegate];
              v116 = [v115 bannerPresentationManager];
              if ([v116 onlyHasPlaceholderCall])
              {
              }

              else
              {
                v117 = [v266 conversationManager];
                v118 = [v117 avLessConversation];

                if (!v118)
                {
                  [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHAVLessConversationAssertionReason"];
                  [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHAVLessConversationDetailsViewAssertionReason"];
                }

                v69 = &_s16CommunicationsUI29CallTranslationLanguagePickerV05SwiftB04ViewAAMc_ptr;
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

            v77 = [(objc_class *)v69[39].isa sharedApplication];
            v78 = [v77 delegate];
            [v78 setMostRecentlyDisconnectedVideoCall:0];

            goto LABEL_73;
          }

          if (v7)
          {
            v106 = [(PHInCallRootViewController *)self features];
            if ([v106 shouldShowFullScreenCallWaiting] & 1 | ((v65 & 1) == 0) | v66 & 1)
            {

              v69 = &_s16CommunicationsUI29CallTranslationLanguagePickerV05SwiftB04ViewAAMc_ptr;
LABEL_190:
              v172 = sub_100004F84();
              if (!os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
              {
LABEL_193:

                goto LABEL_290;
              }

              *buf = 138412290;
              v275 = v7;
              v173 = "Showing audio controller for incomingCall %@";
              v174 = v172;
              v175 = 12;
LABEL_192:
              _os_log_impl(&_mh_execute_header, v174, OS_LOG_TYPE_DEFAULT, v173, buf, v175);
              goto LABEL_193;
            }

            v169 = [(PHInCallRootViewController *)self features];
            v69 = &_s16CommunicationsUI29CallTranslationLanguagePickerV05SwiftB04ViewAAMc_ptr;
            if ([v169 callManagerEnabled])
            {
              v170 = [(PHInCallRootViewController *)self callManager];
              v171 = [v170 presentedFullScreenedCall];

              if (v171)
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
                v275 = v258;
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
                v275 = v256;
                _os_log_impl(&_mh_execute_header, v200, OS_LOG_TYPE_DEFAULT, "Showing audio controller for active audio call %@", buf, 0xCu);
              }

              v265 = 0;
              v71 = 1;
              goto LABEL_300;
            }

            v216 = [v266 currentVideoCalls];
            if ([v216 count] == 1)
            {
              v217 = [v266 currentVideoCalls];
              v218 = [v217 objectAtIndex:0];
              v219 = [v218 isConversation];

              if (v219)
              {
                if (!v255)
                {
                  v265 = 0;
                  goto LABEL_299;
                }

                v220 = sub_100004F84();
                if (os_log_type_enabled(v220, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v275 = v255;
                  _os_log_impl(&_mh_execute_header, v220, OS_LOG_TYPE_DEFAULT, "Showing video controller for active video call %@", buf, 0xCu);
                }

                v199 = v255;
LABEL_234:
                v265 = v199;
LABEL_299:
                v71 = 0;
LABEL_300:
                v230 = [(PHInCallRootViewController *)self features];
                v231 = [v230 callManagerEnabled];
                if ((v71 & 1) != 0 || !v231)
                {

                  goto LABEL_63;
                }

                v232 = [(PHInCallRootViewController *)self callManager];
                v72 = [v232 presentedFullScreenedCall];

                if (!v72)
                {
                  v233 = [(PHInCallRootViewController *)self callManager];
                  [v233 cleanUp];

                  v71 = 0;
LABEL_64:
                  v73 = 0;
                  v261 = 0;
                  v262 = 0;
                  if (!v64)
                  {
                    goto LABEL_81;
                  }

                  goto LABEL_70;
                }

LABEL_62:
                v71 = 0;
LABEL_63:
                LODWORD(v72) = 0;
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

            v229 = [v266 currentVideoCalls];
            v265 = [v229 objectAtIndex:0];

            goto LABEL_299;
          }

          v69 = &_s16CommunicationsUI29CallTranslationLanguagePickerV05SwiftB04ViewAAMc_ptr;
          if (v65)
          {
            goto LABEL_230;
          }

          if ([v266 currentCallCount])
          {
            if (v260 && ((v260 == self->_emergencyDialerViewController) & v61) == 1)
            {
              v167 = sub_100004F84();
              if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
              {
                v168 = [v266 currentCalls];
                *buf = 138412546;
                v275 = v168;
                v276 = 2112;
                v277 = v260;
                _os_log_impl(&_mh_execute_header, v167, OS_LOG_TYPE_DEFAULT, "InCallRootViewController will show emergency viewcontroller for currentCalls %@ (the view controller currently being shown is %@)", buf, 0x16u);
              }

              goto LABEL_176;
            }

            if ([v266 currentCallCount]== 1)
            {
              v221 = [v266 currentCalls];
              v222 = [v221 objectAtIndexedSubscript:0];
              v223 = [v222 isScreening];

              if (v223)
              {
                [(PHInCallRootViewController *)self releaseIdleTimerAssertionWithComment:@"Showing audio controller for Screening, enabling idleTimer"];
              }
            }

            v224 = sub_100004F84();
            if (os_log_type_enabled(v224, OS_LOG_TYPE_DEFAULT))
            {
              v225 = [v266 currentCalls];
              *buf = 138412546;
              v275 = v225;
              v276 = 2112;
              v277 = v260;
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
              v225 = +[UIApplication sharedApplication];
              v226 = [(PHInCallRootViewController *)v225 delegate];
              v227 = [v226 mostRecentlyDisconnectedAudioCall];
              *buf = 138412290;
              v275 = v227;
              _os_log_impl(&_mh_execute_header, v224, OS_LOG_TYPE_DEFAULT, "InCallRootViewController will show audio view controller for disconnected call %@", buf, 0xCu);

              goto LABEL_288;
            }

LABEL_289:

LABEL_290:
            LODWORD(v72) = 0;
            v73 = 0;
            v265 = 0;
            v261 = 0;
            v262 = 0;
            v71 = 1;
            if (!v64)
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
              v236 = [v235 delegate];
              v237 = [v236 mostRecentlyDisconnectedVideoCall];
              *buf = 138412290;
              v275 = v237;
              _os_log_impl(&_mh_execute_header, v234, OS_LOG_TYPE_DEFAULT, "InCallRootViewController will show video view controller for disconnected call %@", buf, 0xCu);
            }

            v77 = [(PHInCallRootViewController *)self multiwayViewController];
            if ([v77 isOneToOneModeEnabled])
            {
              v238 = +[UIApplication sharedApplication];
              v72 = [v238 delegate];
              v265 = [v72 mostRecentlyDisconnectedVideoCall];

              v71 = 0;
              LODWORD(v72) = 0;
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
                  LODWORD(v72) = 0;
                  v265 = 0;
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

                  LODWORD(v72) = 0;
                  v73 = 0;
                  v265 = 0;
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
                  LODWORD(v72) = 0;
                  v73 = 0;
                  v265 = 0;
                  v261 = 1;
                  v262 = 0;
                }

                else
                {
                  if (v51 || ![qword_1003B0ED8 containsObject:@"PHAVLessConversationAssertionReason"])
                  {
                    v265 = 0;
                    self = v268;
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
                  LODWORD(v72) = 0;
                  v73 = 0;
                  v265 = 0;
                  v261 = 0;
                  v262 = 0;
                }

                self = v268;
                if (!v64)
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
              v265 = 0;
              v261 = 0;
              v262 = 0;
              LODWORD(v72) = 1;
              if (!v64)
              {
                goto LABEL_81;
              }

              goto LABEL_70;
            }

            v77 = sub_100004F84();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
            {
              v239 = +[UIApplication sharedApplication];
              v240 = [v239 delegate];
              v241 = [v240 mostRecentlyDisconnectedVideoCall];
              *buf = 138412290;
              v275 = v241;
              _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "updateCallControllerForCurrentState InCallRootViewController will show video view controller for disconnected call %@", buf, 0xCu);
            }
          }

          v71 = 0;
          LODWORD(v72) = 0;
          v73 = 0;
          v262 = 0;
          v265 = 0;
          goto LABEL_314;
        }
      }

      else
      {

        v19 = v35;
        v7 = v34;
        v6 = v36;
        self = v268;
      }
    }

    goto LABEL_30;
  }

  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v275 = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "This instance of PHInCallRootVC %@ no longer has a window, not continuing with updateCallControllerForCurrentState", buf, 0xCu);
  }

LABEL_273:
}

- (BOOL)shouldShowSOS
{
  v3 = [(PHInCallRootViewController *)self callCenter];
  if ([v3 currentCallCount])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(PHInCallRootViewController *)self callCenter];
    if ([v5 currentVideoCallCount])
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
  v3 = [(PHInCallRootViewController *)self isFullScreen];
  v4 = +[PHPIPController defaultPIPController];
  v5 = [v4 isPIPProxyActive];

  if (v3 || v5)
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

  v8 = [(PHInCallRootViewController *)self callDisplayStyleManager];
  v9 = [v8 callDisplayStyle];

  v10 = [(PHInCallRootViewController *)self multiwayViewController];

  if (v10)
  {
    if (v6)
    {
      v11 = [(PHInCallRootViewController *)self currentViewControllerIsMultiway];
    }

    else
    {
      v11 = 0;
    }

    v12 = sub_100004F84();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(PHInCallRootViewController *)self multiwayViewController];
      v14 = [(PHInCallRootViewController *)self callDisplayStyleManager];
      v25 = 138413058;
      v26 = v13;
      v27 = 1024;
      v28 = v11;
      v29 = 1024;
      v30 = v5;
      v31 = 2048;
      v32 = [v14 callDisplayStyle];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Updating %@ isMultiwayVisibleOnScreen=%d isPipped=%d callDisplayStyle=%ld", &v25, 0x22u);
    }

    v15 = +[PHPIPController defaultPIPController];
    v16 = [v15 pipState];
    v17 = [(PHInCallRootViewController *)self multiwayViewController];
    [v17 setPipState:v16];

    v18 = [(PHInCallRootViewController *)self multiwayViewController];
    [v18 setIsOnScreen:v11];

    v19 = [(PHInCallRootViewController *)self multiwayViewController];
    [v19 setIsDisplayedInBanner:v9 == 0];

    v20 = [(PHInCallRootViewController *)self multiwayViewController];
    [v20 setIsFullScreen:v3];

    [(PHInCallRootViewController *)self refreshBottomBarButtonLayout];
    [(PHInCallRootViewController *)self setNeedsStatusBarPillSuppressionUpdate];
    v21 = +[PHInCallOrientationMonitor sharedInstance];
    v22 = v21;
    if (v5)
    {
      v23 = [v21 currentOrientation];
    }

    else
    {
      v23 = [v21 lastValidOrientation];
    }

    v24 = v23;

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
  v3 = [(PHInCallRootViewController *)self currentViewController];
  v4 = [PHInCallUIUtilities handleNavigationControllerIfNecessary:v3];

  if ([(PHInCallRootViewController *)self viewControllerSupportsEffects:v4])
  {
    v5 = [v4 isPresentingEffectsBrowser];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isPresentingContactDetails
{
  v3 = [(PHInCallRootViewController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v6 = [(PHInCallRootViewController *)self presentedViewController];
    objc_opt_class();
    v7 = objc_opt_isKindOfClass();

    if (v7)
    {
      v15 = 0u;
      v16 = 0u;
      v14 = 0u;
      v8 = [(PHInCallRootViewController *)self presentedViewController:0];
      v9 = [v8 viewControllers];

      v5 = [v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        v10 = *v14;
        while (2)
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v9);
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              LOBYTE(v5) = 1;
              goto LABEL_15;
            }
          }

          v5 = [v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v5 = [(PHInCallRootViewController *)self callManager];
  v3 = [(PHInCallRootViewController *)self callCenter];
  v4 = [v3 frontmostAudioOrVideoCall];
  [v5 prioritizeCall:v4];
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
  if (objc_opt_class() == a1)
  {
    v2 = objc_alloc_init(NSMutableSet);
    v3 = qword_1003B0ED8;
    qword_1003B0ED8 = v2;

    _objc_release_x1(v2, v3);
  }
}

+ (void)setStatusBarPillSuppressionForBackgroundActivities:(id)a3 onWindowScene:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  if (v6)
  {
    v8 = [v6 preferredBackgroundActivitiesToSuppress];
    v9 = [v8 isEqual:v7];

    if ((v9 & 1) == 0)
    {
      [v6 setPreferredBackgroundActivitiesToSuppress:v7];
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

- (void)setCurrentAlertButtonAction:(id)a3
{
  v4 = a3;
  currentAlertButtonAction = self->_currentAlertButtonAction;
  if (currentAlertButtonAction)
  {
    [(SBUIRemoteAlertButtonAction *)currentAlertButtonAction sendResponseWithUnHandledEvents:0];
  }

  v6 = self->_currentAlertButtonAction;
  self->_currentAlertButtonAction = v4;
}

- (void)forceUpdateCallControllerForSOS
{
  if (+[PHSOSViewController isSOSDismissalAssertionActive])
  {
    [(PHInCallRootViewController *)self updateCallControllerForCurrentState];
    byte_1003B0EE0 = 0;
  }
}

- (void)sendResponseIfNecessaryWithUnhandledEvents:(unint64_t)a3
{
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PHInCallRootViewController *)self currentAlertButtonAction];
    v10 = 138412546;
    v11 = v6;
    v12 = 2048;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending Response on currentAlertButtonAction: %@ with SBUIRemoteAlertServiceButtonEvents: %ld", &v10, 0x16u);
  }

  v7 = [(PHInCallRootViewController *)self currentAlertButtonAction];

  if (v7)
  {
    v8 = [(PHInCallRootViewController *)self currentAlertButtonAction];
    [v8 sendResponseWithUnHandledEvents:a3];

    currentAlertButtonAction = self->_currentAlertButtonAction;
    self->_currentAlertButtonAction = 0;
  }
}

- (PHInCallRootViewController)initWithCallDisplayStyleManager:(id)a3
{
  v5 = a3;
  v28.receiver = self;
  v28.super_class = PHInCallRootViewController;
  v6 = [(PHInCallRootViewController *)&v28 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callDisplayStyleManager, a3);
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
    v19 = [(PHInCallRootViewController *)v7 features];
    v20 = [v19 callManagerEnabled];

    if (v20)
    {
      v21 = [ICSCallManagerBridge alloc];
      callDisplayStyleManager = v7->_callDisplayStyleManager;
      v23 = objc_alloc_init(TUFeatureFlags);
      v24 = [(ICSCallManagerBridge *)v21 initWithRootController:v7 callDisplayStyleManager:callDisplayStyleManager flags:v23];
      callManager = v7->_callManager;
      v7->_callManager = v24;
    }

    -[PHInCallRootViewController updateBannerTapGestureRecognizerForCallDisplayStyle:](v7, "updateBannerTapGestureRecognizerForCallDisplayStyle:", [v5 callDisplayStyle]);
    v26 = objc_alloc_init(NSMutableDictionary);
    [(PHInCallRootViewController *)v7 setViewControllersDict:v26];
  }

  return v7;
}

- (PHInCallRootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v20.receiver = self;
  v20.super_class = PHInCallRootViewController;
  v4 = [(PHInCallRootViewController *)&v20 initWithNibName:a3 bundle:a4];
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
    v17 = [v16 isEnhancedEmergencyEnabled];

    if ((v17 & 1) == 0)
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
  v9 = [(PHInCallRootViewController *)self callCenter];
  v10 = [v9 routeController];
  [v10 addDelegate:self];

  v11 = [(PHInCallRootViewController *)self callCenter];
  v12 = [v11 conversationManager];
  [v12 addDelegate:self queue:&_dispatch_main_q];
}

- (void)_willAppearInRemoteViewController:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_willAppearInRemoteViewController", buf, 2u);
  }

  v6 = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
  [v6 setWallpaperTunnelActive:1];

  [v4 setBackgroundStyle:4 withDuration:0.1];
  [v4 setDismissalAnimationStyle:1];
  [v4 setShouldDismissOnUILock:1];
  [v4 setShouldDisableFadeInAnimation:0];

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
    v13 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "dealloc %@", buf, 0xCu);
  }

  v4 = +[CNKFeatures sharedInstance];
  v5 = [v4 isEnhancedEmergencyEnabled];

  if ((v5 & 1) == 0)
  {
    v6 = +[PHSOSDisconnectionConfirmation sharedInstance];
    [v6 removeDelegate:self];
  }

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self];

  [(PHInCallRootViewController *)self releaseIdleTimerAssertionWithComment:@"dealloc"];
  [(PHInCallRootViewController *)self setStatusBarHidden:0 withDuration:0.0];
  v8 = [(PHInCallRootViewController *)self remoteHostViewController];
  v9 = [v8 remoteViewController];
  [v9 setDelegate:0];

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
      v6 = [TUHandle normalizedPhoneNumberHandleForValue:v4 isoCountryCode:0];
      if (v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v31 = v4;
      v14 = +[ICSApplicationServices sharedInstance];
      v15 = [v14 callProviderManager];

      v16 = [v15 emergencyProvider];
      v17 = objc_alloc_init(TUSenderIdentityClient);
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v18 = [v16 prioritizedSenderIdentities];
      v19 = [v18 countByEnumeratingWithState:&v33 objects:v43 count:16];
      if (v19)
      {
        v20 = v19;
        v28 = v16;
        v29 = v15;
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
            objc_enumerationMutation(v18);
          }

          v25 = [*(*(&v33 + 1) + 8 * v23) accountUUID];
          v32 = v24;
          v6 = [v17 testEmergencyHandleForAccountUUID:v25 error:&v32];
          v21 = v32;

          if (v6)
          {
            break;
          }

          v23 = v23 + 1;
          v24 = v21;
          if (v20 == v23)
          {
            v20 = [v18 countByEnumeratingWithState:&v33 objects:v43 count:16];
            if (v20)
            {
              goto LABEL_15;
            }

            v6 = 0;
            break;
          }
        }

        v2 = v30;
        v4 = v31;
        v5 = &_s16CommunicationsUI29CallTranslationLanguagePickerV05SwiftB04ViewAAMc_ptr;
        v16 = v28;
        v15 = v29;
      }

      else
      {
        v6 = 0;
      }

      if (v6)
      {
        goto LABEL_7;
      }
    }

    v6 = [v5[407] normalizedPhoneNumberHandleForValue:@"822" isoCountryCode:0];
LABEL_7:
    v7 = [v3 BOOLValue];
    v8 = [[TULabeledHandle alloc] initWithHandle:v6 label:@"EMERGENCY_DISAMBIGUATION_AMBULANCE" isSuggested:0];
    v9 = v8;
    if (v7)
    {
      v42[0] = v8;
      v10 = [[TULabeledHandle alloc] initWithHandle:v6 label:@"EMERGENCY_DISAMBIGUATION_FIRE" isSuggested:0];
      v42[1] = v10;
      v11 = [[TULabeledHandle alloc] initWithHandle:v6 label:@"EMERGENCY_DISAMBIGUATION_POLICE" isSuggested:0];
      v42[2] = v11;
      v12 = [NSArray arrayWithObjects:v42 count:3];
    }

    else
    {
      v41 = v8;
      v12 = [NSArray arrayWithObjects:&v41 count:1];
    }

    goto LABEL_10;
  }

  v26 = +[ICSApplicationServices sharedInstance];
  v6 = [v26 callProviderManager];

  v9 = [v6 emergencyProvider];
  v12 = [v9 emergencyLabeledHandles];
  v27 = sub_100004F84();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v38 = v9;
    v39 = 2112;
    v40 = v12;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "SOS Numbers: Emergency call provider is %@ with numbers %@", buf, 0x16u);
  }

LABEL_10:

  return v12;
}

- (void)_reloadSOSHandles
{
  sosViewController = self->_sosViewController;
  v3 = [(PHInCallRootViewController *)self sosHandles];
  [(PHSOSViewController *)sosViewController updateSOSHandles:v3];
}

- (void)_loadSOSViewController
{
  if (!self->_sosViewController)
  {
    v3 = [PHSOSViewController alloc];
    v6 = [(PHInCallRootViewController *)self sosHandles];
    v4 = [(PHSOSViewController *)v3 initWithSOSHandles:v6];
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

    v6 = [(PHInCallRootViewController *)self view];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(UINavigationController *)self->_videoCallNavigationController view];
    [v15 setFrame:{v8, v10, v12, v14}];

    v16 = [(UINavigationController *)self->_videoCallNavigationController view];
    [v16 setAutoresizingMask:18];

    [(UINavigationController *)self->_videoCallNavigationController setNavigationBarHidden:1];
    [(UINavigationController *)self->_videoCallNavigationController setDelegate:self];
    videoCallNavigationController = self->_videoCallNavigationController;
  }

  return videoCallNavigationController;
}

- (void)presentCreateContactViewControllerWithHandle:(id)a3 forViewController:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      v6 = a4;
      v7 = [a3 value];
      v12 = v7;
      v8 = [NSArray arrayWithObjects:&v12 count:1];
      v9 = [CNContact contactWithDisplayName:0 handleStrings:v8];

      v10 = [CNContactViewController viewControllerForNewContact:v9];
      [v10 setDelegate:self];
      [v10 setAllowsEditing:1];
      [v10 setAllowsActions:1];
      v11 = [[UINavigationController alloc] initWithRootViewController:v10];
      [v6 presentViewController:v11 animated:1 completion:0];
    }
  }
}

- (void)presentViewControllerFullScreen:(id)a3
{
  v4 = a3;
  v5 = [(PHInCallRootViewController *)self currentViewController];
  [(PHInCallRootViewController *)self _transitionFromViewController:v5 toViewController:v4];
}

- (void)_loadPTTFullScreenContainerViewController
{
  if (!self->_pttFullScreenContainerViewController)
  {
    v3 = [PHPTTFullScreenContainerViewController alloc];
    v8 = +[UIApplication sharedApplication];
    v4 = [v8 delegate];
    v5 = [v4 bannerPresentationManager];
    v6 = [(PHPTTFullScreenContainerViewController *)v3 initWithBannerPresentationManager:v5];
    pttFullScreenContainerViewController = self->_pttFullScreenContainerViewController;
    self->_pttFullScreenContainerViewController = v6;
  }
}

- (void)pttCallStateChangedNotification:(id)a3
{
  v3 = a3;
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "pttCallStateChangedNotification", buf, 2u);
  }

  v5 = [v3 object];

  if ([v5 isPTT] && objc_msgSend(v5, "status") - 5 <= 1)
  {
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Releasing PTT call details dismissal assertion.", v9, 2u);
    }

    v7 = +[UIApplication sharedApplication];
    v8 = [v7 delegate];
    [v8 setDidDeepLinkToPTTCallDetailsView:0];

    [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHPTTCallDetailsViewAssertionReason"];
  }
}

- (void)_loadMultiwayViewControllerForCall:(id)a3
{
  v4 = a3;
  v5 = [(CNKMultiwayViewControllerProtocol *)self->_multiwayViewController call];
  v6 = [v5 isEqual:v4];

  if ((v6 & 1) == 0)
  {
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412546;
      v24 = self;
      v25 = 2112;
      v26 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Creating a CNKFaceTimeMultiwayConversationViewController instance for call: %@", &v23, 0x16u);
    }

    v8 = +[UIApplication sharedApplication];
    v9 = [v8 delegate];
    v10 = [v9 bannerPresentationManager];
    v11 = [(PHInCallRootViewController *)self makeMultiwayConversationViewControllerWithCall:v4 bannerPresentationManager:v10];
    multiwayViewController = self->_multiwayViewController;
    self->_multiwayViewController = v11;

    v13 = sub_100004F84();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_multiwayViewController;
      v23 = 138412546;
      v24 = self;
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
      v17 = [(PHInCallRootViewController *)self callDisplayStyleManager];
      v18 = [v17 callDisplayStyle];

      v15 = self->_multiwayViewController;
      v16 = v18 == 3;
    }

    [(CNKMultiwayViewControllerProtocol *)v15 setSupportedDeviceOrientations:v16];
    v19 = [(PHInCallRootViewController *)self callDisplayStyleManager];
    -[CNKMultiwayViewControllerProtocol setIsDisplayedInBanner:](self->_multiwayViewController, "setIsDisplayedInBanner:", [v19 callDisplayStyle] == 0);

    v20 = [(PHInCallRootViewController *)self callDisplayStyleManager];
    -[CNKMultiwayViewControllerProtocol setIsAmbient:](self->_multiwayViewController, "setIsAmbient:", [v20 callDisplayStyle] == 3);

    v21 = +[PHPIPController defaultPIPController];
    -[CNKMultiwayViewControllerProtocol setPipState:](self->_multiwayViewController, "setPipState:", [v21 pipState]);

    v22 = +[PHInCallOrientationMonitor sharedInstance];
    -[PHInCallRootViewController updateMultiwayDeviceOrientation:](self, "updateMultiwayDeviceOrientation:", [v22 lastValidOrientation]);

    [(PHInCallRootViewController *)self _startMonitoringDisplayLayout];
  }
}

- (void)handleFrontBoardInterfaceOrientationChange:(int64_t)a3
{
  v5 = [(PHInCallRootViewController *)self multiwayViewController];
  v6 = [v5 frontBoardInterfaceOrientation];

  if (a3)
  {
    if (v6 != a3)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000EFABC;
      block[3] = &unk_1003574B0;
      block[4] = self;
      block[5] = a3;
      block[6] = a3;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)rotatePIPForInterfaceOrientation:(int64_t)a3
{
  v5 = +[PHPIPController defaultPIPController];
  v6 = [v5 pipState];

  if (v6 == 2)
  {
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Rotating PIP due to interface orientation change %ld", buf, 0xCu);
    }

    v8 = [PHInCallUIUtilities deviceOrientationForBSInterfaceOrientation:a3];
    v9 = +[PHPIPController defaultPIPController];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000EFCD4;
    v10[3] = &unk_100356988;
    v10[4] = self;
    [v9 rotatePIPDeviceOrientationTo:v8 withCompletion:v10];
  }
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = sub_100004F84();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = v11;
    [(PHInCallRootViewController *)self shouldShowNavigationBarForViewController:v8];
    v13 = NSStringFromBOOL();
    v14 = 138412546;
    v15 = v11;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "TTYC: , viewController: %@ setHidden: %@", &v14, 0x16u);
  }

  [v9 setNavigationBarHidden:-[PHInCallRootViewController shouldShowNavigationBarForViewController:](self animated:{"shouldShowNavigationBarForViewController:", v8) ^ 1, v5}];
}

- (BOOL)shouldShowNavigationBarForViewController:(id)a3
{
  v3 = a3;
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

- (void)screeningStateChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "screeningStateChangedNotification", v8, 2u);
  }

  v6 = [v4 object];

  v7 = [(PHInCallRootViewController *)self callManager];
  [v7 updateWithCall:v6];

  [(PHInCallRootViewController *)self updateDesiredSpringboardBehavior];
}

- (void)receptionistStateChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "receptionistStateChangedNotification", v8, 2u);
  }

  v6 = [v4 object];

  v7 = [(PHInCallRootViewController *)self callManager];
  [v7 updateWithCall:v6];

  [(PHInCallRootViewController *)self updateDesiredSpringboardBehavior];
}

- (void)receptionistSessionChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "receptionistSessionChangedNotification", v8, 2u);
  }

  v6 = [v4 object];

  v7 = [(PHInCallRootViewController *)self callManager];
  [v7 updateWithCall:v6];
}

- (void)callStateChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "callStateChangedNotification", v7, 2u);
  }

  v6 = [v4 object];

  [(PHInCallRootViewController *)self updateAlertActivationReasonForCall:v6];
  [(PHInCallRootViewController *)self updateRemoteAlertSwipeDismissalStyleForCall:v6];
  [(PHInCallRootViewController *)self prepareToDismissScreenTime];
  [(PHInCallRootViewController *)self updateCallControllerForCurrentState];
  [(PHInCallRootViewController *)self dismissScreenTimeAlertHostIfNeeded];
  [(PHInCallRootViewController *)self dismissPhoneRemoteViewController];
  [(PHInCallRootViewController *)self dismissContactsViewController];
  [(PHInCallRootViewController *)self updateTransportIndicatorView];
  [(PHInCallRootViewController *)self undimScreenIfNecessary:v6];
  [(PHInCallRootViewController *)self updateDesiredSpringboardBehavior];
}

- (void)callDisplayContextChanged:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "callDisplayContextChanged", v8, 2u);
  }

  v6 = [v4 object];

  v7 = [(PHInCallRootViewController *)self callManager];
  [v7 updateWithCall:v6];
}

- (void)videoCallStateChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "videoCallStateChangedNotification", v7, 2u);
  }

  v6 = [v4 object];

  [(PHInCallRootViewController *)self updateCallForUserFeedback];
  [(PHInCallRootViewController *)self updateAlertActivationReasonForCall:v6];
  [(PHInCallRootViewController *)self showFailureOrFallbackAlertIfNecessaryForCall:v6];
  [(PHInCallRootViewController *)self prepareToDismissScreenTime];
  [(PHInCallRootViewController *)self updateCallControllerForCurrentState];
  [(PHInCallRootViewController *)self dismissScreenTimeAlertHostIfNeeded];
  [(PHInCallRootViewController *)self dismissPhoneRemoteViewController];
  [(PHInCallRootViewController *)self dismissContactsViewController];
  [(PHInCallRootViewController *)self updateTransportIndicatorView];
  [(PHInCallRootViewController *)self updateUPlusOneVideoCallViews];
  [(PHInCallRootViewController *)self undimScreenIfNecessary:v6];
}

- (void)callConnectedNotification:(id)a3
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

- (void)willTransitionToFullScreenNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "willTransitionToFullScreenNotification", v11, 2u);
  }

  v6 = +[UIApplication sharedApplication];
  v7 = [v6 delegate];
  v8 = [v7 isPresentingFullScreenCallUI];

  if ((v8 & 1) == 0)
  {
    v9 = [v4 object];
    v10 = [v9 isEqual:&off_10036A358];

    if (v10)
    {
      [(PHInCallRootViewController *)self updateCallControllerForCurrentState];
    }
  }
}

- (void)remoteParticipantHandlesChangedNotification:(id)a3
{
  v4 = [a3 object];
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uniqueProxyIdentifier];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "remoteParticipantHandlesChangedNotification for call: %@", &v7, 0xCu);
  }

  if ([v4 isConversation])
  {
    [(PHInCallRootViewController *)self updateCallControllerForCurrentState];
  }
}

- (void)undimScreenIfNecessary:(id)a3
{
  if ([a3 status] == 4)
  {
    v9 = [(PHInCallRootViewController *)self traitCollection];
    if ([v9 _backlightLuminance] == 1)
    {
      v4 = +[UIApplication sharedApplication];
      v5 = [v4 delegate];
      v6 = [v5 currentInCallScene];
      v7 = [v6 presentationMode];

      if (v7 == 2)
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
  v3 = [(PHInCallRootViewController *)self featureFlags];
  v4 = [v3 expanseEnabled];

  if (v4)
  {
    v5 = [(PHInCallRootViewController *)self callCenter];
    v6 = [v5 frontmostAudioOrVideoCall];

    v7 = [(PHInCallRootViewController *)self callCenter];
    v8 = [v7 activeConversationForCall:v6];

    v9 = [(PHInCallRootViewController *)self featureFlags];
    if ([v9 sharePlayInCallsEnabled])
    {
      v10 = [v6 provider];
      if ([v10 isTelephonyProvider])
      {
        LODWORD(v11) = [v6 isSharePlayCapable];
      }

      else
      {
        LODWORD(v11) = 0;
      }
    }

    else
    {
      LODWORD(v11) = 0;
    }

    v12 = [v6 provider];
    v13 = [v12 isFaceTimeProvider];

    if ((v13 & 1) == 0 && !v11)
    {
      goto LABEL_23;
    }

    v14 = [(PHInCallRootViewController *)self inCallWindowScene];

    v15 = +[UIApplication sharedApplication];
    v16 = [v15 delegate];
    v17 = [v16 currentInCallScene];
    v18 = [v17 presentationMode];

    v19 = [v6 provider];
    LODWORD(v16) = [v19 isFaceTimeProvider];

    if (v16)
    {
      if ([v8 resolvedAudioVideoMode] != 1)
      {
        goto LABEL_17;
      }
    }

    else if (!v11)
    {
      goto LABEL_17;
    }

    if ([v6 status] == 1)
    {
      v20 = [v6 wantsHoldMusic];
LABEL_18:
      v11 = [(PHInCallRootViewController *)self callCenter];
      v21 = [v11 currentAudioAndVideoCallCount];

      LOBYTE(v11) = 0;
      if (v21 == 1 && (v20 & 1) == 0 && v14 && v18 == 1)
      {
        v23 = v6;
        TUDispatchMainIfNecessary();

        LOBYTE(v11) = 1;
      }

LABEL_23:

      return v11;
    }

LABEL_17:
    v20 = 1;
    goto LABEL_18;
  }

  LOBYTE(v11) = 0;
  return v11;
}

- (void)callUpgradedToVideoNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "callUpgradedToVideoNotification", v6, 2u);
  }

  [(PHInCallRootViewController *)self videoCallStateChangedNotification:v4];
}

- (void)updateCallForUserFeedback
{
  v3 = [(PHInCallRootViewController *)self featureFlags];
  v4 = [v3 FTUserScore];

  if (v4)
  {
    v5 = [(PHInCallRootViewController *)self callCenter];
    v6 = [v5 currentVideoCall];

    if ([v6 isConnected] && (objc_msgSend(v6, "status") == 5 || objc_msgSend(v6, "status") == 6))
    {
      v7 = +[ICSPreferences sharedPreferences];
      v8 = [v7 hasUserScoreFeedbackViewHidden];

      v9 = sub_100004F84();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v10)
        {
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "UserFeedbackScore : No Assertion Added, send to TU immediately", v14, 2u);
        }

        v11 = [(PHInCallRootViewController *)self callCenter];
        v12 = [(PHInCallRootViewController *)self disconnectCallUUID];
        [v11 sendUserScoreToRTCReporting:v12 withScore:0];
      }

      else
      {
        if (v10)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "UserFeedbackScore : adding Assertion to show feedback view", buf, 2u);
        }

        v13 = [v6 callUUID];
        [(PHInCallRootViewController *)self setDisconnectCallUUID:v13];

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

- (void)callDowngradedToAudioNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "callDowngradedToAudioNotification: %@", buf, 0xCu);
  }

  [(PHInCallRootViewController *)self updateCallControllerForCurrentState];
  v6 = [v4 object];
  if (([v6 isEndpointOnCurrentDevice] & 1) == 0)
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

- (void)callContinuityChangedNotification:(id)a3
{
  v3 = [a3 object];
  if ([v3 isConversation] && (objc_msgSend(v3, "isEndpointOnCurrentDevice") & 1) == 0)
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

- (void)pipStateChangedNotification:(id)a3
{
  v5 = a3;
  v6 = +[PHPIPController defaultPIPController];
  v7 = [v6 pipState];

  v8 = sub_100004F84();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 134217984;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "pipStateChangedNotification; new state=%lu", &v20, 0xCu);
  }

  if ((v7 - 1) <= 1 && (v9 = [(PHInCallRootViewController *)self shouldStartMultiwayPIP], v9))
  {
    v10 = [(PHInCallRootViewController *)self multiwayViewController];

    if (v10)
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
    if (v7 == 3 || v7 == 0)
    {
      v8 = [(PHInCallRootViewController *)self multiwayViewController];
      v3 = [v8 pipViewController];
      v9 = [v3 parentViewController];
      if (v9)
      {
        v12 = 1;
      }

      else
      {
        v13 = [(PHInCallRootViewController *)self oldMultiwayPIPViewController];
        v12 = v13 != 0;

        v9 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    if (v7 == 3 || !v7)
    {
    }

    if (v12)
    {
      v14 = [(PHInCallRootViewController *)self multiwayViewController];
      [v14 setPipState:v7];

      if (v7)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v7)
      {
        goto LABEL_28;
      }

      v15 = [(PHInCallRootViewController *)self multiwayViewController];

      if (v15)
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
  v18 = [v5 object];

  v19 = +[PHPIPController defaultPIPController];

  if (v18 == v19)
  {
    [(PHInCallRootViewController *)self updateBackgroundStartPipAuthorizationState];
  }
}

- (void)pipStashChangedNotification:(id)a3
{
  v4 = +[PHPIPController defaultPIPController];
  v5 = [v4 isPIPProxyActiveAndHidden];

  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "pipStashChangedNotification; isStashed=%u", v8, 8u);
  }

  v7 = [(PHInCallRootViewController *)self multiwayViewController];
  [v7 setIsPipStashed:v5];
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
  v5 = [(PHInCallRootViewController *)self multiwayViewController];
  v6 = [v4 uiDeviceOrientationForCNKDeviceOrientation:{objc_msgSend(v5, "fullScreenFocusedParticipantOrientation")}];
  v7 = +[PHPIPController defaultPIPController];
  [v7 setPipDeviceOrientation:v6];
}

- (void)pipProxyActiveChangedNotification:(id)a3
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "pipProxyActiveChangedNotification", v5, 2u);
  }

  [(PHInCallRootViewController *)self updateMultiwayViewControllerUIState];
}

- (void)handlePIPViewControllerRestoredAfterPIPStopped:(id)a3
{
  v4 = a3;
  v5 = [(PHInCallRootViewController *)self view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v4 view];
  [v14 setBounds:{v7, v9, v11, v13}];

  v15 = [(PHInCallRootViewController *)self view];
  [v15 center];
  v17 = v16;
  v19 = v18;
  v20 = [v4 view];

  [v20 setCenter:{v17, v19}];
  v21 = [(PHInCallRootViewController *)self multiwayViewController];
  v22 = [v21 pipViewController];
  v23 = [v22 parentViewController];
  if (v23)
  {
    v24 = [(PHInCallRootViewController *)self multiwayViewController];
    v25 = [v24 pipViewController];
  }

  else
  {
    v25 = [(PHInCallRootViewController *)self oldMultiwayPIPViewController];
  }

  v26 = sub_100004F84();
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
  if (v25)
  {
    if (v27)
    {
      v28 = 138412290;
      v29 = v25;
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
  v3 = [(CNKMultiwayViewControllerProtocol *)self->_multiwayViewController view];
  v4 = [v3 superview];
  if (!v4)
  {

    goto LABEL_5;
  }

  v5 = v4;
  v6 = [(CNKMultiwayViewControllerProtocol *)self->_multiwayViewController isChildOf:self];

  if ((v6 & 1) == 0)
  {
LABEL_5:
    v8 = [(PHInCallRootViewController *)self callDisplayStyleManager];
    v7 = [v8 callDisplayStyle] == 4;

    return v7;
  }

  return 1;
}

- (void)handlePIPInterruptionChangeNotification:(id)a3
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
    v6 = [v5 isPIPProxyInterrupted];

    if (v6)
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

- (void)handleSystemInitiatedPIPInterruptionStoppedNotification:(id)a3
{
  v4 = [(PHInCallRootViewController *)self callDisplayStyleManager];
  v5 = [v4 sceneSessionIdentifier];
  v6 = +[UIApplication sharedApplication];
  v7 = [v6 delegate];
  v8 = [v7 currentInCallScene];
  v9 = [v8 session];
  v10 = [v9 persistentIdentifier];
  v11 = [v5 isEqualToString:v10];

  if (v11)
  {
    v12 = +[PHPIPController defaultPIPController];
    v13 = [v12 pipInterruptedCallIdentifier];

    v14 = [(PHInCallRootViewController *)self callCenter];
    v15 = [v14 callWithUniqueProxyIdentifier:v13];

    v16 = sub_100004F84();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "handleSystemInitiatedPIPInterruptionStoppedNotification for call identifier: %@", &v23, 0xCu);
    }

    if ([v13 length]&& v15)
    {
      v17 = sub_100004F84();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412290;
        v24 = v13;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Call %@ which was originally pip interrupted has been uninterrupted. Stop that calls video since the interruption-stop was not user-initiated", &v23, 0xCu);
      }

      if ([v15 isConversation])
      {
        [v15 setRemoteVideoPresentationState:0];
      }

      else
      {
        v18 = [(PHInCallRootViewController *)self callCenter];
        v19 = [v18 frontmostAudioOrVideoCall];
        v20 = [v19 isVideo];

        if ((v20 & 1) == 0)
        {
          v21 = [(PHInCallRootViewController *)self callCenter];
          v22 = [v21 videoDeviceController];
          [v22 stopPreview];
        }
      }

      [v15 setIsSendingVideo:0];
    }
  }

  else
  {
    v13 = sub_100004F84();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] Not handling PHPIPControllerSystemInitiatedPIPInterruptionStoppedNotification since scene does not match the scene currently used by InCallService.", &v23, 2u);
    }
  }
}

- (void)pipControllerDidRequestReturnToFullScreenNotification:(id)a3
{
  v4 = +[ICSPreferences sharedPreferences];
  v5 = [v4 hasAdoptedModernInCallAPI];

  if ((v5 & 1) == 0)
  {

    [(PHInCallRootViewController *)self animateToAlert];
  }
}

- (BOOL)shouldShowVideoCallBlockAndReportScreen
{
  v3 = [(PHInCallRootViewController *)self callCenter];
  v4 = [v3 currentVideoCall];

  if (v4)
  {
    v5 = [(PHInCallRootViewController *)self callCenter];
    v6 = [v5 currentVideoCall];
LABEL_7:

    v12 = [(PHInCallRootViewController *)self shouldShowCallEndedBlockAndReportScreen:v6];
    goto LABEL_8;
  }

  v7 = +[UIApplication sharedApplication];
  v8 = [v7 delegate];
  v9 = [v8 mostRecentlyDisconnectedVideoCall];

  v6 = sub_100004F84();
  v10 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[self.callCenter currentVideoCall] is nil, using mostRecentlyDisconnectedVideoCall", buf, 2u);
    }

    v5 = +[UIApplication sharedApplication];
    v11 = [v5 delegate];
    v6 = [v11 mostRecentlyDisconnectedVideoCall];

    goto LABEL_7;
  }

  if (v10)
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ICSAppDelegate.mostRecentlyDisconnectedVideoCall is nil so shouldShowVideoCallBlockAndReportScreen is false", v14, 2u);
  }

  v12 = 0;
LABEL_8:

  return v12;
}

- (BOOL)shouldShowCallEndedBlockAndReportScreen:(id)a3
{
  v4 = a3;
  v5 = [v4 contactIdentifier];

  v6 = [v4 remoteParticipantHandles];
  v7 = [v6 count];

  if (v7 != 1)
  {
    v8 = sub_100004F84();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v4 remoteParticipantHandles];
      v32 = 134217984;
      v33[0] = [v10 count];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "it's not a 1-1 facetime call, %lu", &v32, 0xCu);
    }

    goto LABEL_17;
  }

  if (v5)
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

  v11 = [v4 provider];
  v12 = [v11 isFaceTimeProvider];

  if ((v12 & 1) == 0)
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

  v13 = [v4 dateConnected];

  if (!v13)
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

  if ([(PHInCallRootViewController *)self isContactBlockedWithCall:v4])
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

  v16 = [v4 handle];
  v17 = [v16 value];
  v18 = [v4 handle];
  v19 = [v18 normalizedValue];
  v20 = [(PHInCallRootViewController *)self isFirstTimeInCallHistoryWithHandleValue:v17 normalizedHandleValue:v19];

  v21 = [v4 handle];
  v22 = [v21 value];
  v23 = [v4 handle];
  v24 = [v23 normalizedValue];
  v25 = [v4 uniqueProxyIdentifier];
  v8 = [(PHInCallRootViewController *)self findMostRecentSilencedCallWithHandleValue:v22 normalizedHandleValue:v24 ignoredIdentifier:v25];

  if (v20)
  {
    v26 = [v4 isIncoming];
  }

  else
  {
    v26 = 0;
  }

  v27 = sub_100004F84();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 67109376;
    LODWORD(v33[0]) = v20;
    WORD2(v33[0]) = 1024;
    *(v33 + 6) = [v4 isIncoming];
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "(isFirstTimeInCallHistory :%d && call.isIncoming: %d)", &v32, 0xEu);
  }

  if (v8)
  {
    v28 = [v4 isOutgoing];
  }

  else
  {
    v28 = 0;
  }

  v29 = sub_100004F84();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [v4 isOutgoing];
    v32 = 67109376;
    LODWORD(v33[0]) = v8 != 0;
    WORD2(v33[0]) = 1024;
    *(v33 + 6) = v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "(filteredMostRecent != nil :%d && disconnectedCall.isOutgoing: %d", &v32, 0xEu);
  }

  v31 = sub_100004F84();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 67109376;
    LODWORD(v33[0]) = v26;
    WORD2(v33[0]) = 1024;
    *(v33 + 6) = v28;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "shouldShowCallEndedBlockAndReportScreen: \n (isUnknownFirstTimeCallerConnectedIncomingCall: %d || isFilteredConnectedOutgoingCall): %d \n", &v32, 0xEu);
  }

  v14 = v26 | v28;
LABEL_18:

  return v14 & 1;
}

- (void)showHideMiniWindowViewIfNeededAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(PHInCallRootViewController *)self wantsMiniWindowCoverViewController])
  {
    v5 = +[PHPIPController defaultPIPController];
    v6 = [v5 isPipped];

    if (v6)
    {

      [(PHInCallRootViewController *)self dismissPIPIfNeededForMiniWindowAnimated:v3];
      return;
    }

    v11 = [(PHInCallRootViewController *)self coverViewController];
    if ([v11 isBeingPresented])
    {
      goto LABEL_14;
    }

    v12 = [(PHInCallRootViewController *)self coverViewController];
    v13 = [v12 presentingViewController];
    if (v13)
    {

LABEL_14:
      goto LABEL_15;
    }

    v17 = [(PHInCallRootViewController *)self parentViewController];
    v18 = [v17 view];
    v19 = [v18 window];

    if (!v19)
    {
LABEL_15:
      v14 = [(PHInCallRootViewController *)self coverViewController];

      if (v14)
      {
        v15 = sub_100004F84();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "InCallRootViewController mini window already visible, updating views", v20, 2u);
        }

        v16 = [(PHInCallRootViewController *)self coverViewController];
        [v16 updateViews];
      }

      return;
    }

    [(PHInCallRootViewController *)self presentMiniWindowViewControllerAnimated:v3];
  }

  else
  {
    v7 = [(PHInCallRootViewController *)self coverViewController];
    if (v7)
    {
      v8 = v7;
      v9 = [(PHInCallRootViewController *)self coverViewController];
      v10 = [v9 isBeingDismissed];

      if ((v10 & 1) == 0)
      {

        [(PHInCallRootViewController *)self dismissMiniWindowViewControllerAnimated:1];
      }
    }
  }
}

- (void)dismissPIPIfNeededForMiniWindowAnimated:(BOOL)a3
{
  v5 = +[PHPIPController defaultPIPController];
  v6 = [v5 isPIPProxyActiveAndHidden];

  if (v6)
  {
    v7 = +[PHPIPController defaultPIPController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000F2754;
    v8[3] = &unk_100356BB8;
    v8[4] = self;
    v9 = a3;
    [v7 manuallyStopPIPWithCompletion:v8];
  }
}

- (void)presentMiniWindowViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "InCallRootViewController showing mini window", buf, 2u);
  }

  if (!self->_coverViewController)
  {
    v6 = [ICSCoverViewController alloc];
    v7 = [(PHInCallRootViewController *)self callDisplayStyleManager];
    v8 = [(ICSCoverViewController *)v6 initWithCallDisplayStyleManager:v7];
    coverViewController = self->_coverViewController;
    self->_coverViewController = v8;
  }

  v10 = [(PHInCallRootViewController *)self coverViewController];
  [v10 setModalPresentationStyle:0];

  v11 = [(PHInCallRootViewController *)self coverViewController];
  [v11 setModalTransitionStyle:2];

  v12 = [(PHInCallRootViewController *)self coverViewController];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000F28D8;
  v13[3] = &unk_100356988;
  v13[4] = self;
  [(PHInCallRootViewController *)self presentViewController:v12 animated:v3 completion:v13];
}

- (void)dismissMiniWindowViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHInCallRootViewController *)self coverViewController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F2978;
  v6[3] = &unk_100356988;
  v6[4] = self;
  [v5 dismissViewControllerAnimated:v3 completion:v6];
}

- (void)_showFailureAlertForCall:(id)a3
{
  v4 = a3;
  [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHFailureAlertShowingAssertionReason"];
  [(PHInCallRootViewController *)self requestInCallSceneTransitionToFullScreen];
  v5 = [v4 errorAlertTitle];
  v6 = [v4 errorAlertMessage];
  v7 = [PHAlertController alertControllerWithTitle:v5 message:v6 preferredStyle:1];
  [(PHInCallRootViewController *)self setFailureAlertController:v7];

  objc_initWeak(&location, self);
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"OK" value:&stru_100361FD0 table:@"InCallService"];

  if ([v4 disconnectedReason] == 30 || objc_msgSend(v4, "disconnectedReason") == 49)
  {
    v10 = [v4 contactIdentifiers];
    if ([v10 count] == 1)
    {
      if ([v4 originatingUIType] == 8)
      {

LABEL_12:
        v23 = +[NSBundle mainBundle];
        v12 = [v23 localizedStringForKey:@"NOT_NOW" value:&stru_100361FD0 table:@"InCallService"];

        v24 = [(PHInCallRootViewController *)self failureAlertController];
        v25 = +[NSBundle mainBundle];
        v26 = [v25 localizedStringForKey:@"SHOW_CONTACT_CARD" value:&stru_100361FD0 table:@"InCallService"];
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_1000F3284;
        v50[3] = &unk_1003595C8;
        v51 = v4;
        objc_copyWeak(&v52, &location);
        v27 = [UIAlertAction actionWithTitle:v26 style:0 handler:v50];
        [v24 addAction:v27];

        objc_destroyWeak(&v52);
        goto LABEL_15;
      }

      v22 = [v4 originatingUIType] == 9;

      if (v22)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  if ([v4 disconnectedReason] == 44)
  {
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"CANCEL" value:&stru_100361FD0 table:@"InCallService"];

    v13 = [(PHInCallRootViewController *)self failureAlertController];
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"SIGN_IN" value:&stru_100361FD0 table:@"InCallService"];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1000F3380;
    v48[3] = &unk_100359390;
    objc_copyWeak(&v49, &location);
    v16 = [UIAlertAction actionWithTitle:v15 style:0 handler:v48];
    [v13 addAction:v16];

    objc_destroyWeak(&v49);
  }

  else if ([v4 disconnectedReason] == 45)
  {
    v17 = +[NSBundle mainBundle];
    v12 = [v17 localizedStringForKey:@"CANCEL" value:&stru_100361FD0 table:@"InCallService"];

    v18 = [(PHInCallRootViewController *)self failureAlertController];
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"SHOW_APP_STORE" value:&stru_100361FD0 table:@"InCallService"];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1000F340C;
    v46[3] = &unk_100359390;
    objc_copyWeak(&v47, &location);
    v21 = [UIAlertAction actionWithTitle:v20 style:0 handler:v46];
    [v18 addAction:v21];

    objc_destroyWeak(&v47);
  }

  else
  {
    if ([v4 disconnectedReason] != 8)
    {
      goto LABEL_16;
    }

    v28 = +[NSBundle mainBundle];
    v12 = [v28 localizedStringForKey:@"CANCEL" value:&stru_100361FD0 table:@"InCallService"];

    v29 = [(PHInCallRootViewController *)self failureAlertController];
    v30 = +[NSBundle mainBundle];
    v31 = [v30 localizedStringForKey:@"LEARN_MORE" value:&stru_100361FD0 table:@"InCallService"];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1000F3550;
    v44[3] = &unk_100359390;
    objc_copyWeak(&v45, &location);
    v32 = [UIAlertAction actionWithTitle:v31 style:0 handler:v44];
    [v29 addAction:v32];

    objc_destroyWeak(&v45);
  }

LABEL_15:
  v9 = v12;
LABEL_16:
  v33 = [(PHInCallRootViewController *)self failureAlertController];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000F3620;
  v42[3] = &unk_100359390;
  objc_copyWeak(&v43, &location);
  v34 = [UIAlertAction actionWithTitle:v9 style:1 handler:v42];
  [v33 addAction:v34];

  v35 = [(PHInCallRootViewController *)self failureAlertController];
  [v35 setDismissalAssertionReason:@"PHFailureAlertShowingAssertionReason"];

  v36 = sub_100004F84();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    v37 = [v4 errorAlertTitle];
    v38 = [v4 errorAlertMessage];
    sub_1002566BC(v37, v38, buf, v36);
  }

  v39 = [(PHInCallRootViewController *)self presentedViewController];

  if (v39)
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
    v40 = [(PHInCallRootViewController *)self failureAlertController];
    [(PHInCallRootViewController *)self presentViewController:v40 animated:1 completion:0];
  }

  objc_destroyWeak(&v43);

  objc_destroyWeak(&location);
}

- (void)_showTelephonyFallbackAlertForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_showTelephonyFallbackAlertForCall", v7, 2u);
  }

  [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHFallbackToTelephonyAssertionReason"];
  [(PHInCallRootViewController *)self requestInCallSceneTransitionToFullScreen];
  v6 = [[ICSFallbackToTelephonyAlert alloc] initWithDisconnectedCall:v4];

  [(ICSFallbackToTelephonyAlert *)v6 setCancelAction:&stru_1003595E8];
  [(ICSFallbackToTelephonyAlert *)v6 show];
}

- (void)showFailureOrFallbackAlertIfNecessaryForCall:(id)a3
{
  v4 = a3;
  v5 = [v4 shouldShowFailureAlert];
  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 uniqueProxyIdentifierUUID];
    v9 = 138412546;
    v10 = v7;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "showFailureOrFallbackAlertIfNecessaryForCall %@ shouldShowFailureAlert: %d", &v9, 0x12u);
  }

  if (v5)
  {
    v8 = [(PHInCallRootViewController *)self failureAlertController];
    if (v8)
    {
    }

    else if ((+[PHInCallUIUtilities isSpringBoardPasscodeLocked]& 1) == 0)
    {
      [(PHInCallRootViewController *)self _showFailureAlertForCall:v4];
      goto LABEL_9;
    }
  }

  if ([v4 shouldShowAutomaticTelephonyCallFallback])
  {
    [(PHInCallRootViewController *)self _showTelephonyFallbackAlertForCall:v4];
  }

LABEL_9:
}

- (void)_transitionFromViewController:(id)a3 toViewController:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F39EC;
  v7[3] = &unk_100356988;
  v8 = a4;
  v6 = v8;
  [(PHInCallRootViewController *)self _transitionFromViewController:a3 toViewController:v6 completion:v7];
}

- (void)_transitionFromViewController:(id)a3 toViewController:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100004F84();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v38 = v8;
    v39 = 2112;
    v40 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Transitioning from %@ to a new view controller, and setting it as the currentViewController: %@", buf, 0x16u);
  }

  [(PHInCallRootViewController *)self _obtainThenReleaseTransitionAssertion];
  v12 = [(PHInCallRootViewController *)self view];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v9 view];
  [v21 setFrame:{v14, v16, v18, v20}];

  v22 = [v9 view];
  [v22 setAutoresizingMask:18];

  v23 = [v9 view];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:1];

  v24 = [v9 view];
  [v24 setHidden:0];

  if (v8 && ([v8 parentViewController], v25 = objc_claimAutoreleasedReturnValue(), v26 = v25 == self, v25, v26))
  {
    [(PHInCallRootViewController *)self addChildViewController:v9];
    [v8 willMoveToParentViewController:0];
    objc_initWeak(buf, self);
    v29 = _NSConcreteStackBlock;
    v30 = 3221225472;
    v31 = sub_1000F3E20;
    v32 = &unk_100359610;
    v33 = v8;
    v34 = v9;
    objc_copyWeak(&v36, buf);
    v35 = v10;
    [(PHInCallRootViewController *)self transitionFromViewController:v33 toViewController:v34 duration:5242880 options:0 animations:&v29 completion:0.5];

    objc_destroyWeak(&v36);
    objc_destroyWeak(buf);
  }

  else
  {
    [v9 willMoveToParentViewController:self];
    v27 = [(PHInCallRootViewController *)self view];
    v28 = [v9 view];
    [v27 addSubview:v28];

    [(PHInCallRootViewController *)self addChildViewController:v9];
    [v9 didMoveToParentViewController:self];
    if (v10)
    {
      v10[2](v10);
    }
  }

  [(PHInCallRootViewController *)self setCurrentViewController:v9, v29, v30, v31, v32];
  [(PHInCallRootViewController *)self setNeedsWhitePointAdaptivityStyleUpdate];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = PHInCallRootViewController;
  [(PHInCallRootViewController *)&v14 viewDidLoad];
  v3 = [(PHInCallRootViewController *)self callDisplayStyleManager];
  v4 = [v3 callDisplayStyle];

  if (v4 == 3)
  {
    +[UIColor blackColor];
  }

  else
  {
    +[UIColor clearColor];
  }
  v5 = ;
  v6 = [(PHInCallRootViewController *)self view];
  [v6 setBackgroundColor:v5];

  v7 = [(PHInCallRootViewController *)self view];
  [v7 setOpaque:0];

  v8 = [(PHInCallRootViewController *)self view];
  v9 = [v8 layer];
  [v9 setAllowsGroupBlending:0];

  v10 = [(PHInCallRootViewController *)self view];
  v11 = [v10 layer];
  [v11 setAllowsGroupOpacity:0];

  v12 = [(PHInCallRootViewController *)self view];
  v13 = [(PHInCallRootViewController *)self bannerTapGestureRecognizer];
  [v12 addGestureRecognizer:v13];

  [(PHInCallRootViewController *)self handleScreenTimeActivationIfNecessary];
  [(PHInCallRootViewController *)self updateCallControllerForCurrentState];
}

- (void)printUI
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PHInCallRootViewController *)self view];
    v5 = [v4 recursiveDescription];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@", &v6, 0xCu);
  }

  [(PHInCallRootViewController *)self performSelector:"printUI" withObject:0 afterDelay:30.0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[UIApplication sharedApplication];
    v7 = [v6 delegate];
    v8 = [v7 currentInCallScene];
    [v8 presentationMode];
    v9 = SBSInCallPresentationModeDescription();
    *buf = 134218242;
    v32 = self;
    v33 = 2114;
    v34 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHInCallRootViewController (%p) viewWillAppear presentationMode: %{public}@", buf, 0x16u);
  }

  [(PHInCallRootViewController *)self _testing_viewWillAppear];
  v30.receiver = self;
  v30.super_class = PHInCallRootViewController;
  [(PHInCallRootViewController *)&v30 viewWillAppear:v3];
  v10 = [(PHInCallRootViewController *)self callCenter];
  v11 = [v10 currentVideoCallCount];

  if (v11)
  {
    [(PHInCallRootViewController *)self obtainIdleTimerAssertionWithComment:@"viewWillAppear"];
  }

  v12 = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
  [v12 setBackgroundStyle:4 withDuration:0.100000001];

  v13 = [(PHInCallRootViewController *)self presentedViewController];
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = v13;
  v15 = [(PHInCallRootViewController *)self presentedViewController];
  v16 = [(PHInCallRootViewController *)self coverViewController];
  v17 = v16;
  if (v15 == v16)
  {

    goto LABEL_11;
  }

  v18 = [(PHInCallRootViewController *)self presentedViewController];
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
  v21 = [(PHInCallRootViewController *)self callCenter];
  v22 = [v21 routeController];
  v23 = [v22 routes];
  v24 = [v23 count];

  if (!v24)
  {
    v25 = sub_100004F84();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Currently have no routes, re-querying...", buf, 2u);
    }

    v26 = [(PHInCallRootViewController *)self callCenter];
    v27 = [v26 routeController];
    [v27 requeryRoutes];
  }

  if (self->_multiwayViewController)
  {
    v28 = +[PHInCallOrientationMonitor sharedInstance];
    v29 = [v28 lastValidOrientation];

    [(PHInCallRootViewController *)self updateMultiwayDeviceOrientation:v29];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PHInCallRootViewController *)self view];
    v7 = [v6 window];
    v8 = [v7 windowScene];
    *buf = 134218240;
    v23 = self;
    v24 = 2048;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHInCallRootViewController (%p) viewDidAppear in windowScene (%p)", buf, 0x16u);
  }

  v21.receiver = self;
  v21.super_class = PHInCallRootViewController;
  [(PHInCallRootViewController *)&v21 viewDidAppear:v3];
  v9 = dispatch_time(0, 500000000);
  dispatch_after(v9, &_dispatch_main_q, &stru_100359630);
  [(PHInCallRootViewController *)self _testing_viewDidAppear];
  [(PHInCallRootViewController *)self _testing_finishedAnimatingIn];
  v10 = [(PHInCallRootViewController *)self callCenter];
  v11 = [v10 lastDaemonConnectTime];
  if (!v11)
  {

    goto LABEL_9;
  }

  v12 = v11;
  v13 = [(PHInCallRootViewController *)self callCenter];
  v14 = [v13 lastDaemonConnectTime];
  [v14 timeIntervalSinceNow];
  if (v15 <= 0.0)
  {
    v16 = [(PHInCallRootViewController *)self callCenter];
    v17 = [v16 lastDaemonConnectTime];
    [v17 timeIntervalSinceNow];
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

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHInCallRootViewController (%p) viewWillDisappear", buf, 0xCu);
  }

  [(PHInCallRootViewController *)self releaseIdleTimerAssertionWithComment:@"viewWillDisappear"];
  v9.receiver = self;
  v9.super_class = PHInCallRootViewController;
  [(PHInCallRootViewController *)&v9 viewWillDisappear:v3];
  [(PHInCallRootViewController *)self dismissScreenTimeAlertHostIfNeeded];
  v6 = [(PHInCallRootViewController *)self callCenter];
  v7 = [v6 currentAudioAndVideoCallCount];

  if (!v7)
  {
    +[PHInCallRootViewController forceClearAllDismissalAssertions];
    if (+[PHSOSViewController isSOSDismissalAssertionActive])
    {
      if (BKSHIDServicesIsSmartCoverClosed() && self->_sosViewController)
      {
        v8 = [(PHInCallRootViewController *)self sosViewController];
        [v8 deactivateSOSWithSOSDismissalType:1];
      }
    }
  }

  [(PHInCallRootViewController *)self cancelAutoAnswer];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHInCallRootViewController (%p) viewDidDisappear", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = PHInCallRootViewController;
  [(PHInCallRootViewController *)&v7 viewDidDisappear:v3];
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

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v10.receiver = self;
  v10.super_class = PHInCallRootViewController;
  [(PHInCallRootViewController *)&v10 viewDidMoveToWindow:v6 shouldAppearOrDisappear:v4];
  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = self;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "viewDidMoveToWindow %@ window %@", buf, 0x16u);
  }

  v8 = [(PHInCallRootViewController *)self hasEverAppearedInWindow];
  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  [(PHInCallRootViewController *)self setHasEverAppearedInWindow:v9];
}

- (void)requestInCallSceneTransitionToFullScreen
{
  v2 = [(PHInCallRootViewController *)self inCallWindowScene];

  if (v2)
  {
    TUDispatchMainIfNecessary();
  }
}

- (void)requestInCallDismissal
{
  [(PHInCallRootViewController *)self releaseIdleTimerAssertionWithComment:@"requestInCallDismissal"];
  [(PHInCallRootViewController *)self setStatusBarHidden:0 withDuration:0.0];
  v3 = +[ICSPreferences sharedPreferences];
  v4 = [v3 hasAdoptedModernInCallAPI];

  v5 = sub_100004F84();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "About to request InCall dismissal using the scene-based API", buf, 2u);
    }

    [(PHInCallRootViewController *)self dismissInCallPresentationWithDismissalBlock:&stru_100359670];
    v7 = [(PHInCallRootViewController *)self _remoteViewControllerProxy];

    if (v7)
    {
      v8 = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
      [v8 dismiss];
    }
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Requested InCall dismissal using remote view controller proxy", buf, 2u);
    }

    v9 = [(PHInCallRootViewController *)self _remoteViewControllerProxy];

    if (v9)
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

- (void)dismissInCallPresentationWithDismissalBlock:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "requestInCallDismissal", buf, 2u);
  }

  v6 = [(PHInCallRootViewController *)self multiwayViewController];
  v7 = [v6 effectsEnabled];

  if (v7)
  {
    v8 = [(PHInCallRootViewController *)self callCenter];
    v9 = [v8 videoDeviceController];
    v10 = [v9 isPreviewRunning];

    if (v10)
    {
      v11 = [(PHInCallRootViewController *)self callCenter];
      v12 = [v11 videoDeviceController];
      [v12 stopPreview];
    }
  }

  v13 = +[UIApplication sharedApplication];
  v14 = [v13 delegate];
  [v14 acquirePreventSuspensionAssertion];

  objc_initWeak(buf, self);
  v15 = [(PHInCallRootViewController *)self callDisplayStyleManager];
  v16 = [v15 callDisplayStyle];

  if (v16 == 3)
  {
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000F5298;
    v32[3] = &unk_100356F60;
    v17 = &v33;
    objc_copyWeak(&v33, buf);
    v18 = +[UIApplication sharedApplication];
    v19 = [v18 delegate];
    v20 = [v19 sceneManager];
    v21 = [v20 ambientScene];
    v22 = [v21 delegate];
    [v22 setSceneDidDisconnectBlock:v32];
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
    v19 = [v18 delegate];
    v20 = [v19 currentInCallScene];
    v21 = [v20 delegate];
    [v21 setSceneDidDisconnectBlock:v30];
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
    v24 = [(PHInCallRootViewController *)self currentAlertButtonAction];
    v25 = byte_1003B0EE1;

    if (!v24 && (v25 & 1) == 0)
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

      v4[2](v4);
      byte_1003B0EE1 = 0;
    }
  }

  else
  {
    v4[2](v4);
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

  v4 = [(PHInCallRootViewController *)self features];
  v5 = [v4 callManagerEnabled];

  if (v5)
  {
    [(ICSCallManagerBridge *)self->_callManager cleanUp];
  }

  v6 = +[CNKGameControllerManager shared];
  [v6 removeResponder:self];

  [(PHInCallRootViewController *)self removeViewController:self->_videoCallNavigationController];
  v7 = [(PHInCallRootViewController *)self audioCallNavigationController];
  [(PHInCallRootViewController *)self removeViewController:v7];

  [(PHInCallRootViewController *)self removeViewController:self->_multiwayViewController];
  v8 = [(PHPhoneRemoteHostViewController *)self->_remoteHostViewController remoteViewController];
  [v8 setDelegate:0];

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
  v18 = [v17 delegate];
  [v18 hideCarPlayUI];

  v19 = [(PHInCallRootViewController *)self callCenter];
  v20 = [v19 routeController];
  [v20 removeDelegate:self];

  v21 = [(PHInCallRootViewController *)self callCenter];
  v22 = [v21 conversationManager];
  [v22 removeDelegate:self];

  v23 = [(PHInCallRootViewController *)self callCenter];
  v24 = [v23 videoDeviceController];
  [v24 stopPreview];

  [objc_opt_class() releaseDismissalAssertionForReason:@"PHMessageComposeViewControllerAssertionReason"];
}

- (void)removeViewController:(id)a3
{
  v5 = a3;
  v3 = [v5 parentViewController];

  if (v3)
  {
    [v5 willMoveToParentViewController:0];
    [v5 removeFromParentViewController];
    if ([v5 isViewLoaded])
    {
      v4 = [v5 view];
      [v4 removeFromSuperview];
    }

    [v5 didMoveToParentViewController:0];
  }
}

- (void)animateInWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(PHInCallRootViewController *)self view];
  [v5 setAlpha:0.0];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F5798;
  v6[3] = &unk_100356988;
  v6[4] = self;
  [UIView animateWithDuration:0x20000 delay:v6 options:v4 animations:0.349999994 completion:0.0];
}

- (void)presentContactsViewControllerForView:(id)a3
{
  v4 = a3;
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
    v7 = self;
    v8 = [(PHInCallRootViewController *)v7 presentedViewController];

    v9 = v7;
    if (v8)
    {
      v9 = [(PHInCallRootViewController *)v7 presentedViewController];
    }

    v10 = [(PHInCallRootViewController *)v7 contactsViewController];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000F59B8;
    v14[3] = &unk_100356988;
    v14[4] = v7;
    [v9 presentViewController:v10 animated:1 completion:v14];

    v11 = [(PHInCallRootViewController *)v7 contactsViewController];
    v12 = [v11 presentationController];
    [v12 setDelegate:v7];
  }

  else
  {
    v13 = [(PHInCallRootViewController *)self contactsViewController];
    [(PHInCallRootViewController *)self presentAsPopover:v13 fromView:v4 completion:0];
  }

  [(PHInCallRootViewController *)self updateDesiredSpringboardBehavior];
}

- (void)forceUpdateCallControllerForFilteredRequest:(id)a3
{
  v4 = a3;
  if ([qword_1003B0ED8 containsObject:@"PHScreenTimeAlertAssertionReason"])
  {
    [(PHInCallRootViewController *)self setFilteredRequest:v4];
    [(PHInCallRootViewController *)self updateCallControllerForCurrentState];
  }
}

- (void)presentScreenTimeHostViewController
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PHInCallRootViewController *)self filteredRequest];
    *buf = 138412290;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Loading screen time host view controller for request: %@", buf, 0xCu);
  }

  v5 = [PHScreenTimeHostViewController alloc];
  v6 = [(PHInCallRootViewController *)self filteredRequest];
  v7 = [(PHScreenTimeHostViewController *)v5 initWithRequest:v6 delegate:self];

  v8 = [(PHInCallRootViewController *)self callCenter];
  v9 = [v8 currentAudioAndVideoCalls];
  v10 = [v9 count];

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
    v12 = [(PHScreenTimeHostViewController *)v7 view];
    [v12 setAlpha:0.0];

    [(PHScreenTimeHostViewController *)v7 willMoveToParentViewController:self];
    v13 = [(PHInCallRootViewController *)self view];
    v14 = [(PHScreenTimeHostViewController *)v7 view];
    [v13 addSubview:v14];

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
  v7 = [(PHInCallRootViewController *)self callCenter];
  if (![v7 hasCurrentCalls])
  {
    v3 = [(PHInCallRootViewController *)self callDisplayStyleManager];
    if ([v3 callDisplayStyle] == 4 && +[PHSOSViewController isSOSDismissalAssertionActive](PHSOSViewController, "isSOSDismissalAssertionActive"))
    {
      v4 = [(PHInCallRootViewController *)self sosViewController];

      if (v4)
      {
        v5 = sub_100004F84();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_10025672C();
        }

        [ICSCrashReporter simulateCrashReportWithFormat:@"The SOS UI was dismissed even though there were no active calls."];
        v6 = [(PHInCallRootViewController *)self sosViewController];
        [v6 deactivateSOSWithSOSDismissalType:0];
      }

      return;
    }
  }
}

- (void)presentAsPopover:(id)a3 fromView:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [v10 setModalPresentationStyle:7];
  [(PHInCallRootViewController *)self presentViewController:v10 animated:1 completion:v8];

  v11 = [v10 popoverPresentationController];
  [v11 setDelegate:self];

  v12 = [(PHInCallRootViewController *)self view];
  [v9 bounds];
  [v12 convertRect:v9 fromView:?];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [v10 popoverPresentationController];
  [v21 setPermittedArrowDirections:15];

  v22 = [(PHInCallRootViewController *)self view];
  v23 = [v10 popoverPresentationController];
  [v23 setSourceView:v22];

  v24 = [v10 popoverPresentationController];

  [v24 setSourceRect:{v14, v16, v18, v20}];
}

- (void)willRotate:(id)a3
{
  if ((+[PHUIConfiguration shouldUseFullScreenPeoplePicker]& 1) == 0)
  {
    v9 = [(PHInCallRootViewController *)self presentedViewController];
    if ([v9 isBeingPresented])
    {
    }

    else
    {
      v4 = [(PHInCallRootViewController *)self presentedViewController];
      v5 = [v4 isBeingDismissed];

      if ((v5 & 1) == 0)
      {
        v6 = [(PHInCallRootViewController *)self presentedViewController];
        v7 = [(PHInCallRootViewController *)self contactsViewController];
        v8 = [v6 isEqual:v7];

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

- (void)dismissContactsViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ([(PHInCallRootViewController *)self isPresentingContactsViewController])
  {
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v16 = v4;
      v17 = 1024;
      v18 = v6 != 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "dismissing contactsVC animated %d, hasCompletion: %d", buf, 0xEu);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000F64E8;
    v12[3] = &unk_100359698;
    v14 = v4;
    v12[4] = self;
    v13 = v6;
    v8 = objc_retainBlock(v12);
    v9 = v8;
    if (v4)
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

  else if (v6)
  {
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)dismissContactDetailsWithCompletion:(id)a3
{
  v4 = a3;
  if ([(PHInCallRootViewController *)self isPresentingContactDetails])
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v14 = v4 != 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "dismissing contact details hasCompletion: %d", buf, 8u);
    }

    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_1000F67B4;
    v10 = &unk_100356FD8;
    v11 = self;
    v12 = v4;
    v6 = objc_retainBlock(&v7);
    [(PHInCallRootViewController *)self dismissViewControllerAnimated:0 completion:v6, v7, v8, v9, v10, v11];
  }

  else if (v4)
  {
    dispatch_async(&_dispatch_main_q, v4);
  }
}

- (void)updateRemoteAlertSwipeDismissalStyleForCall:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = [v4 status] != 4;
  }

  else
  {
    v5 = 1;
  }

  v6 = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
  [v6 setSwipeDismissalStyle:v5];
}

- (void)updateAlertActivationReason
{
  v3 = [(PHInCallRootViewController *)self callCenter];
  v10 = [v3 incomingCall];

  if (v10 || (-[PHInCallRootViewController callCenter](self, "callCenter"), v4 = objc_claimAutoreleasedReturnValue(), [v4 incomingVideoCall], v10 = objc_claimAutoreleasedReturnValue(), v4, v10))
  {
    v5 = [(PHInCallRootViewController *)self callCenter];
    v6 = [v5 currentCallGroups];
    v7 = [v6 count];
    v8 = [(PHInCallRootViewController *)self callCenter];
    v9 = &v7[[v8 currentVideoCallCount]] > 1;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  [(PHInCallRootViewController *)self setAlertActivationReason:v9];
  [(PHInCallRootViewController *)self setAlertActivationCall:v10];
}

- (void)updateAlertActivationReasonForCall:(id)a3
{
  v13 = a3;
  if ([(PHInCallRootViewController *)self alertActivationReason]== 1)
  {
    v4 = [(PHInCallRootViewController *)self alertActivationCall];
    v5 = [v4 callUUID];
    v6 = [v13 callUUID];
    v7 = [v5 isEqualToString:v6];

    if (v7)
    {
      v8 = [v13 status];
      if (v8 - 5 >= 2)
      {
        if (v8 != 1)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v9 = [(PHInCallRootViewController *)self callCenter];
        v10 = [v9 hasCurrentCalls];

        if ((v10 & 1) == 0)
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

- (void)emergencyCallbackModeChangedNotification:(id)a3
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

- (void)mostRecentlyDisconnectedAudioCallDidClearNotification:(id)a3
{
  if (+[TUCallCapabilities isEmergencyCallbackModeEnabled])
  {

    [(PHInCallRootViewController *)self updateCallControllerForCurrentState];
  }
}

- (void)didChangeDeviceOrientationNotification:(id)a3
{
  if (self->_multiwayViewController)
  {
    v4 = a3;
    v5 = +[PHPIPController defaultPIPController];
    v6 = [v5 isPipped];

    v7 = &off_100359B70;
    if (!v6)
    {
      v7 = &off_100359B78;
    }

    v8 = *v7;
    v9 = [v4 userInfo];

    v10 = [v9 objectForKey:v8];

    v11 = [v10 intValue];

    [(PHInCallRootViewController *)self updateMultiwayDeviceOrientation:v11];
  }
}

- (void)updateMultiwayDeviceOrientation:(int64_t)a3
{
  if ((a3 - 1) <= 3)
  {
    v5 = [objc_opt_class() cnkDeviceOrientationForUIDeviceOrientation:a3];
    multiwayViewController = self->_multiwayViewController;

    [(CNKMultiwayViewControllerProtocol *)multiwayViewController setDeviceOrientation:v5];
  }
}

- (CGSize)preferredPIPContentAspectRatio
{
  v3 = [(PHInCallRootViewController *)self multiwayViewController];
  v4 = [v3 parentViewController];
  if (v4)
  {
    v5 = v4;
    v6 = [(PHInCallRootViewController *)self multiwayViewController];
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      v11 = 0x4059000000000000;
      v9 = 0x4059000000000000;
      goto LABEL_7;
    }

    v3 = [(PHInCallRootViewController *)self multiwayViewController];
    [v3 preferredPIPContentAspectRatio];
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

- (void)prepareForDeviceLockWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "prepareForDeviceLock started", buf, 2u);
  }

  v6 = [(PHInCallRootViewController *)self currentViewController];
  v7 = [PHInCallUIUtilities handleNavigationControllerIfNecessary:v6];

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

  v9 = [(PHInCallRootViewController *)self isPresentingViewControllerWithSensitiveInformation];
  v10 = sub_100004F84();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
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
    v13 = v4;
    [(PHInCallRootViewController *)self dismissViewControllersWithSensitiveInformationWithCompletion:v12];
    v10 = v13;
  }

  else if (v11)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "prepareForDeviceLock completed without dismissal", buf, 2u);
  }
}

- (void)dismissViewControllersWithSensitiveInformationWithCompletion:(id)a3
{
  v4 = a3;
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
  v12 = v4;
  v10 = v4;
  dispatch_group_notify(v9, &_dispatch_main_q, v11);
}

- (void)showKeypadIfPossible
{
  v3 = [(PHInCallRootViewController *)self audioCallViewController];

  if (v3)
  {
    v4 = [(PHInCallRootViewController *)self audioCallViewController];
    [v4 audioCallControlsViewControllerRequestedKeypadPresentation:0];
  }
}

- (BOOL)isShowingHUD
{
  v2 = [(PHInCallRootViewController *)self multiwayViewController];
  v3 = [v2 isShowingHUD];

  return v3;
}

- (void)prepareForPopoverPresentation:(id)a3
{
  v4 = a3;
  v5 = +[UIScreen mainScreen];
  [v5 bounds];
  v7 = v6;

  v8 = [(PHInCallRootViewController *)self presentedViewController];
  [v8 preferredContentSize];
  v10 = v9;

  v11 = [(PHInCallRootViewController *)self presentedViewController];
  [v11 setPreferredContentSize:{v10, v7 * 0.5}];

  v12 = [(PHInCallRootViewController *)self presentedViewController];
  v13 = [(PHInCallRootViewController *)self contactsViewController];

  if (v12 == v13)
  {
    v15 = +[UIColor whiteColor];
    [v4 setBackgroundColor:?];
  }

  else
  {
    v15 = +[UIColor _externalSystemDarkGrayColor];
    v14 = [v15 colorWithAlphaComponent:0.8];
    [v4 setBackgroundColor:v14];

    v4 = v14;
  }
}

- (void)popoverPresentationControllerDidDismissPopover:(id)a3
{
  v8 = a3;
  v4 = [v8 presentedViewController];
  v5 = [(PHInCallRootViewController *)self contactsViewController];

  if (v4 == v5)
  {
    [v8 setDelegate:0];
    [(PHInCallRootViewController *)self setContactsViewController:0];
  }

  else
  {
    v6 = [v8 presentedViewController];
    v7 = [(PHInCallRootViewController *)self remoteHostViewController];

    if (v6 == v7)
    {
      [v8 setDelegate:0];
      [(PHInCallRootViewController *)self setRemoteHostViewController:0];
    }
  }
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = [a3 presentedViewController];
  v5 = [(PHInCallRootViewController *)self contactsViewController];

  if (v4 == v5)
  {
    [(PHInCallRootViewController *)self setContactsViewController:0];

    [(PHInCallRootViewController *)self setTemporarilyAllowAllStatusBarPills:0];
  }
}

- (void)transitionToVideoCallBasedViewController:(id)a3 shouldUpdatePipSize:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v43 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Transitioning to video-call-based view controller: %@", buf, 0xCu);
  }

  v8 = [(PHInCallRootViewController *)self currentViewController];
  v9 = [(PHInCallRootViewController *)self videoCallNavigationController];
  v10 = [v8 isEqual:v9];

  if ((v10 & 1) == 0)
  {
    if (v4)
    {
      v11 = &v36;
      v36 = _NSConcreteStackBlock;
      v37 = 3221225472;
      v38 = sub_1000F7D18;
      v39 = &unk_100356988;
      v40 = self;
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

    v14 = [(PHInCallRootViewController *)self videoCallNavigationController];
    v15 = [v14 view];
    [v15 alpha];
    v17 = v16;

    if (v17 == 0.0)
    {
      v18 = [(PHInCallRootViewController *)self videoCallNavigationController];
      v19 = [v18 view];
      [v19 setAlpha:1.0];

      v20 = [(PHInCallRootViewController *)self videoCallNavigationController];
      v21 = [v20 view];
      [v21 layoutIfNeeded];
    }

    v22 = [(PHInCallRootViewController *)self currentViewController:v36];
    v23 = [(PHInCallRootViewController *)self videoCallNavigationController];
    [(PHInCallRootViewController *)self _transitionFromViewController:v22 toViewController:v23 completion:v12];

    v4 = 0;
  }

  v24 = [(PHInCallRootViewController *)self callForVideoCallBasedViewController:v6];
  v25 = [(PHInCallRootViewController *)self videoCallNavigationController];
  v26 = [v25 topViewController];
  v27 = [v26 conformsToProtocol:&OBJC_PROTOCOL___CNKMultiwayViewControllerProtocol];

  if (v27)
  {
    v28 = [(PHInCallRootViewController *)self videoCallNavigationController];
    v29 = [v28 topViewController];
    v30 = [v29 call];
  }

  else
  {
    v30 = 0;
  }

  v31 = sub_100004F84();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v43 = v24;
    v44 = 2112;
    v45 = v30;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Transitioning to multiway view controller for %@, Current displayed active call: %@", buf, 0x16u);
  }

  if ([v6 conformsToProtocol:&OBJC_PROTOCOL___CNKMultiwayViewControllerProtocol] && (objc_msgSend(v30, "isEqualToCall:", v24) & 1) == 0)
  {
    v32 = sub_100004F84();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Replacing existing view controllers with multiway view controller", buf, 2u);
    }

    v33 = [(PHInCallRootViewController *)self videoCallNavigationController];
    v41 = v6;
    v34 = [NSArray arrayWithObjects:&v41 count:1];
    [v33 setViewControllers:v34 animated:1];
  }

  if (v4)
  {
    v35 = +[PHPIPController defaultPIPController];
    [v35 updatePIPSize];
  }
}

- (id)callForVideoCallBasedViewController:(id)a3
{
  v3 = a3;
  if ([v3 conformsToProtocol:&OBJC_PROTOCOL___CNKMultiwayViewControllerProtocol])
  {
    v4 = [v3 call];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6
{
  v8 = a6;
  v9 = a5;
  v15 = objc_opt_class();
  v10 = [NSArray arrayWithObjects:&v15 count:1];
  v11 = [NSSet setWithArray:v10];

  v12 = objc_opt_class();
  if ([v11 containsObject:v12] & 1) != 0 || (objc_msgSend(v11, "containsObject:", objc_opt_class()))
  {
    v13 = 0;
  }

  else
  {
    v13 = [(CNKCrossFadeAnimatorFactory *)self->_animatorFactory makeAnimator];
  }

  return v13;
}

- (void)showCallDetailsView
{
  if ([(PHInCallRootViewController *)self isPresentingCallDetailsView])
  {
    v3 = sub_100004F84();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Requested details view controller presentation, but it's already presented", buf, 2u);
    }
  }

  else
  {
    v4 = [(PHInCallRootViewController *)self callDetailsNavigationController];

    if (!v4)
    {
      v5 = sub_100004F84();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Creating new call details navigation controller to show from the root view controller", v14, 2u);
      }

      v6 = +[UIApplication sharedApplication];
      v7 = [v6 delegate];
      v8 = [v7 bannerPresentationManager];
      v9 = [(PHInCallRootViewController *)self makeConversationHUDDetailsNavigationControllerWithBannerPresentationManager:v8 delegate:self shouldSetControlsManagerInCallDetailsDelegate:1];
      [(PHInCallRootViewController *)self setCallDetailsNavigationController:v9];

      v10 = [(PHInCallRootViewController *)self callDetailsNavigationController];
      [v10 setOverrideUserInterfaceStyle:2];
    }

    v11 = sub_100004F84();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PHInCallRootViewController transitioning to call details view", v13, 2u);
    }

    v3 = [(PHInCallRootViewController *)self currentViewController];
    v12 = [(PHInCallRootViewController *)self callDetailsNavigationController];
    [(PHInCallRootViewController *)self _transitionFromViewController:v3 toViewController:v12];
  }
}

- (void)presentPhoneRemoteViewControllerForView:(id)a3
{
  v4 = a3;
  v5 = [(PHInCallRootViewController *)self remoteHostViewController];
  if (v5 && (v6 = v5, -[PHInCallRootViewController presentedViewController](self, "presentedViewController"), v7 = objc_claimAutoreleasedReturnValue(), -[PHInCallRootViewController remoteHostViewController](self, "remoteHostViewController"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqual:v8], v8, v7, v6, v9))
  {
    v10 = sub_100004F84();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(PHInCallRootViewController *)self remoteHostViewController];
      *buf = 138412290;
      v16 = v11;
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
    v14 = v4;
    [PHPhoneRemoteHostViewController requestViewControllerWithCompletionHandler:v13];
  }
}

- (void)dismissPhoneRemoteViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ([(PHInCallRootViewController *)self isPresentingRemoteHostViewController])
  {
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v16 = v4;
      v17 = 1024;
      v18 = v6 != 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "dismissing phoneRemoteVC animated: %d, hasCompletion: %d", buf, 0xEu);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000F8858;
    v12[3] = &unk_100359698;
    v14 = v4;
    v12[4] = self;
    v13 = v6;
    v8 = objc_retainBlock(v12);
    v9 = v8;
    if (v4)
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

  else if (v6)
  {
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 localizedDescription];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHInCallRootViewController: Remote view service terminated with error: %@", &v8, 0xCu);
  }

  if ([v4 code] != 1)
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

- (void)setBackgroundStyle:(int64_t)a3 animatedWithDuration:(double)a4
{
  v6 = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
  [v6 setBackgroundStyle:a3 withDuration:a4];
}

- (void)setStatusBarHidden:(BOOL)a3 withDuration:(double)a4
{
  v5 = a3;
  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (v5)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v9 = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Request to set status bar hidden %{public}@ on %{public}@", &v11, 0x16u);
  }

  v10 = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
  [v10 setStatusBarHidden:v5 withDuration:a4];

  [(PHInCallRootViewController *)self setShouldHideStatusBar:v5];
  [(PHInCallRootViewController *)self setNeedsStatusBarAppearanceUpdate];
}

- (void)phoneRemoteHostViewControllerDidDismiss
{
  [(PHInCallRootViewController *)self setTemporarilyAllowAllStatusBarPills:0];
  [(PHInCallRootViewController *)self setRemoteHostViewController:0];

  [(PHInCallRootViewController *)self updateDesiredSpringboardBehavior];
}

+ (void)obtainDismissalAssertionForReason:(id)a3
{
  v3 = a3;
  v4 = [qword_1003B0ED8 containsObject:v3];
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
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Obtaining Dismissal Assertion for reason: %{public}@", &v8, 0xCu);
    }

    [qword_1003B0ED8 addObject:v3];
  }

  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100256850();
  }
}

+ (void)releaseDismissalAssertionForReason:(id)a3
{
  v3 = a3;
  if ([qword_1003B0ED8 containsObject:v3])
  {
    [qword_1003B0ED8 removeObject:v3];
    v4 = sub_100004F84();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v11 = v3;
      v12 = 2114;
      v13 = qword_1003B0ED8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Releasing Dismissal Assertion %{public}@. Remaining assertions are: %{public}@", buf, 0x16u);
    }

    v5 = [NSSet setWithObject:v3, @"PHReleasedAssertionKey"];
    v9 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 postNotificationName:@"PHDismissalAssertionReleasedNotification" object:0 userInfo:v6];
  }
}

+ (void)releaseDismissalAssertionReasons:(id)a3
{
  v3 = a3;
  v4 = [qword_1003B0ED8 copy];
  v5 = [v4 intersectsSet:v3];

  if (v5)
  {
    [qword_1003B0ED8 minusSet:v3];
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v12 = v3;
      v13 = 2114;
      v14 = qword_1003B0ED8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Releasing Dismissal Assertion Reasons %{public}@. Remaining assertions are: %{public}@", buf, 0x16u);
    }

    v9 = @"PHReleasedAssertionKey";
    v10 = v3;
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

- (void)dismissalAssertionReleasedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412546;
    v23 = self;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v22, 0x16u);
  }

  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = +[PHInCallRootViewController dismissalAssertions];
    v22 = 138412290;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "The remaining dismissal assertions are %@", &v22, 0xCu);
  }

  v8 = [v4 userInfo];
  v9 = [v8 objectForKeyedSubscript:@"PHReleasedAssertionKey"];

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
        v23 = qword_1003B0ED8;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Releasing the audio call view controller based on current dismissal assertions: %@", &v22, 0xCu);
      }

      v14 = [(PHInCallRootViewController *)self features];
      v15 = [v14 callManagerEnabled];

      if (v15)
      {
        v16 = [(PHInCallRootViewController *)self callManager];
        [v16 cleanUp];
      }

      v17 = [(PHInCallRootViewController *)self audioCallNavigationController];
      [(PHInCallRootViewController *)self removeViewController:v17];

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
    v7 = [(PHInCallRootViewController *)self currentViewController];
    v8 = [(PHInCallRootViewController *)self audioCallNavigationController];
    if (v7 == v8)
    {
      v5 = 0;
    }

    else
    {
      v9 = [(PHInCallRootViewController *)self audioCallViewControllerIfLoaded];
      v5 = v9 != 0;
    }
  }

  return v5;
}

- (void)obtainIdleTimerAssertionWithComment:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Obtaining Idle Timer Assertion: %@", &v13, 0xCu);
  }

  v6 = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
  [v6 setIdleTimerDisabled:1 forReason:@"PHIdleTimerDisabledReason"];

  v7 = [(PHInCallRootViewController *)self callDisplayStyleManager];
  v8 = [v7 callDisplayStyle];

  if (v8 == 3)
  {
    v9 = sub_100004F84();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Obtaining Idle Timer Assertion on ambient scene: %@", &v13, 0xCu);
    }

    [(PHInCallRootViewController *)self ambientSetIdleTimerDisabled:1];
  }

  else
  {
    v10 = [(PHInCallRootViewController *)self inCallWindowScene];

    if (v10)
    {
      v11 = sub_100004F84();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v4;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Obtaining Idle Timer Assertion on window scene: %@", &v13, 0xCu);
      }

      v12 = [(PHInCallRootViewController *)self inCallWindowScene];
      [v12 setIdleTimerDisabled:1];
    }
  }
}

- (void)releaseIdleTimerAssertionWithComment:(id)a3
{
  v4 = a3;
  v5 = [(PHInCallRootViewController *)self _remoteViewControllerProxy];
  [v5 setIdleTimerDisabled:0 forReason:@"PHIdleTimerDisabledReason"];

  v6 = [(PHInCallRootViewController *)self callDisplayStyleManager];
  v7 = [v6 callDisplayStyle];

  if (v7 == 3)
  {
    v8 = sub_100004F84();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Released Idle Timer Assertion on ambient scene: %@", &v13, 0xCu);
    }

    [(PHInCallRootViewController *)self ambientSetIdleTimerDisabled:0];
  }

  else
  {
    v9 = [(PHInCallRootViewController *)self inCallWindowScene];

    if (v9)
    {
      v10 = [(PHInCallRootViewController *)self inCallWindowScene];
      [v10 setIdleTimerDisabled:0];

      v11 = sub_100004F84();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v4;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Released Idle Timer Assertion on window scene: %@", &v13, 0xCu);
      }
    }
  }

  v12 = sub_100004F84();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Released Idle Timer Assertion: %@", &v13, 0xCu);
  }
}

- (void)pullRelayingCallsIfNecessary
{
  v3 = [(PHInCallRootViewController *)self callCenter];
  v4 = [v3 routeController];
  v5 = [v4 pickedRoute];

  v6 = [(PHInCallRootViewController *)self callCenter];
  v7 = [v6 anyCallPassesTest:&stru_1003596E0];

  v8 = [v5 deviceType];
  v9 = sub_100004F84();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8 != 13 || (v7 & 1) != 0)
  {
    if (v10)
    {
      v11 = 67109376;
      LODWORD(v12[0]) = v7;
      WORD2(v12[0]) = 2048;
      *(v12 + 6) = [v5 deviceType];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not pulling any relay calls (incomingCallExists: %d, pickedRouteDeviceType: %ld)", &v11, 0x12u);
    }
  }

  else
  {
    if (v10)
    {
      v11 = 138412290;
      v12[0] = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Pulling all relaying calls from device: %@", &v11, 0xCu);
    }

    v9 = [(PHInCallRootViewController *)self callCenter];
    [v9 pullRelayingCallsFromClient];
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

  v4 = [(PHInCallRootViewController *)self callCenter];
  v5 = [v4 routeController];
  v6 = [v5 pickedRoute];
  v7 = [v6 isReceiver];

  v8 = [(PHInCallRootViewController *)self callCenter];
  v9 = v8;
  if (v7)
  {
    if ([v8 hasCurrentCalls])
    {
      v10 = +[PHInCallUtilities sharedInstance];
      v11 = [v10 isLockToEndCallEnabled];

      if (v11)
      {
        v12 = sub_100004F84();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Ending call on lock event", buf, 2u);
        }

        byte_1003B0EE0 = 1;
        v13 = [(PHInCallRootViewController *)self callCenter];
        [v13 disconnectAllCalls];

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v14 = [(PHInCallRootViewController *)self callCenter];
        v15 = [v14 currentVideoCalls];

        v16 = [v15 countByEnumeratingWithState:&v29 objects:v35 count:16];
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
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v29 + 1) + 8 * v19);
              v21 = [(PHInCallRootViewController *)self callCenter];
              [v21 disconnectCall:v20];

              v19 = v19 + 1;
            }

            while (v17 != v19);
            v17 = [v15 countByEnumeratingWithState:&v29 objects:v35 count:16];
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
      v28 = [v27 isLockToEndCallEnabled];
      *buf = 67109120;
      v34 = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "sendResponseIfNecessaryWithUnhandledEvents via handleActivationForEndAndLock - Receiver route is picked, but there are no active calls or AX setting to ignore is on: %d", buf, 8u);
    }

    byte_1003B0EE0 = 0;
LABEL_24:
    [(PHInCallRootViewController *)self sendResponseIfNecessaryWithUnhandledEvents:1];
    return;
  }

  v22 = [v8 hasCurrentVideoCalls];

  v23 = sub_100004F84();
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (v22)
  {
    if (v24)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Disconnecting video calls due to lock button press", buf, 2u);
    }

    v25 = [(PHInCallRootViewController *)self callCenter];
    [v25 disconnectAllCalls];

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
  v2 = [(PHInCallRootViewController *)self callCenter];
  v3 = [v2 currentAudioAndVideoCallCount];
  if (+[PHSOSViewController isSOSDismissalAssertionActive])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 resolvedIncomingCall];
    if (v5)
    {
    }

    else
    {
      v7 = [v2 screeningCall];
      if (v7)
      {
        v8 = v7;
        v9 = [v2 screeningCall];
        v10 = [v9 isWaitOnHoldActive];

        if ((v10 & 1) == 0 && v3 == 1)
        {
          v4 = 0;
          goto LABEL_6;
        }
      }
    }

    v4 = (v3 > 0) & ~byte_1003B0EE0;
  }

LABEL_6:

  return v4;
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = PHInCallRootViewController;
  [(PHInCallRootViewController *)&v8 traitCollectionDidChange:a3];
  v4 = [(PHInCallRootViewController *)self traitCollection];
  v5 = [v4 _backlightLuminance];

  if (v5 == 1)
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

- (void)handleDeviceLockEventWithSourceType:(int64_t)a3 resultHandler:(id)a4
{
  v6 = a4;
  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v52 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PHInCallRootViewController handleDeviceLockEventWithSourceType %ld started", buf, 0xCu);
  }

  if (a3)
  {
    v8 = [(PHInCallRootViewController *)self callCenter];
    v9 = [v8 frontmostCall];

    if (v9)
    {
      v10 = [v9 smartHoldingSession];
      if (v10)
      {
        v11 = [(PHInCallRootViewController *)self callCenter];
        v12 = [v11 currentAudioAndVideoCallCount] == 1;

        if (v12)
        {
          v13 = [v9 smartHoldingSession];
          v14 = [v13 state] == 0;

          if (v14)
          {
            v44 = sub_100004F84();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Found call with SmartHolding session in waiting state, allowing device lock", buf, 2u);
            }

            [(PHInCallRootViewController *)self prepareForDeviceLock];
            v6[2](v6, 0);
            goto LABEL_46;
          }

          v15 = [v9 smartHoldingSession];
          v16 = [v15 state] == 3;

          if (v16)
          {
            v17 = sub_100004F84();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Found call with SmartHolding session requiring user attention state, silencing ringtone", buf, 2u);
            }

            [v9 suppressRingtone];
            v6[2](v6, 1);
            goto LABEL_46;
          }
        }
      }
    }

    [(PHInCallRootViewController *)self cancelAutoAnswer];
    v18 = [(PHInCallRootViewController *)self audioCallNavigationController];
    v19 = [v18 view];
    v20 = [v19 superview];
    if (v20)
    {
      v21 = [(PHInCallRootViewController *)self audioCallNavigationController];
      v22 = [v21 parentViewController];
      v23 = v22 == 0;

      if (v23)
      {
        goto LABEL_20;
      }

      v18 = [(PHInCallRootViewController *)self audioCallViewControllerIfLoaded];
      [v18 handleDeviceLockEventWithSourceType:a3];
    }

    else
    {
    }

LABEL_20:
    v25 = [(CNKMultiwayViewControllerProtocol *)self->_multiwayViewController view];
    v26 = [v25 superview];
    if (v26)
    {
      v27 = [(CNKMultiwayViewControllerProtocol *)self->_multiwayViewController parentViewController];
      if (v27)
      {
        v28 = [(PHInCallRootViewController *)self callCenter];
        v29 = [v28 currentAudioAndVideoCallCount] == 0;

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
            [(PHInCallRootViewController *)self handleDeviceLockEventOverUPlusOneVideoViewsWithSourceType:a3];
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
      v49 = v6;
      v34 = objc_retainBlock(v48);
      v35 = [(PHInCallRootViewController *)self transitionCoordinator];

      if (v35)
      {
        v36 = sub_100004F84();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Device lock event received while transitioning a view controller with sensitive information. Delaying lock until transition is complete.", v47, 2u);
        }

        v37 = [(PHInCallRootViewController *)self transitionCoordinator];
        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_1000FAA88;
        v45[3] = &unk_100359708;
        v46 = v34;
        [v37 animateAlongsideTransition:0 completion:v45];

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

    v39 = [(PHInCallRootViewController *)self shouldConsumeDeviceLockEvent];
    v40 = sub_100004F84();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = byte_1003B0EE0;
      v42 = [(PHInCallRootViewController *)self callCenter];
      v43 = [v42 currentAudioAndVideoCallCount];
      *buf = 67109890;
      *v52 = v39;
      *&v52[4] = 1024;
      *&v52[6] = v41;
      v53 = 2048;
      v54 = v43;
      v55 = 2112;
      v56 = qword_1003B0ED8;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "PHInCallRootViewController handleDeviceLockEventWithSourceType shouldConsumeDeviceLockEvent %d shouldLockDeviceOnNextDismiss: %d callCount: %ld, dismissalAssertions: %@", buf, 0x22u);
    }

    if (!v39)
    {
      [(PHInCallRootViewController *)self prepareForDeviceLock];
    }

    v6[2](v6, v39);
    goto LABEL_46;
  }

  v24 = sub_100004F84();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Received device lock event with unknown source type, not handing off to child view controllers", buf, 2u);
  }

  [(PHInCallRootViewController *)self prepareForDeviceLock];
  v6[2](v6, 0);
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

- (unint64_t)desiredButtonEventsForCallContainer:(id)a3
{
  v4 = a3;
  v5 = [(PHInCallRootViewController *)self audioCallViewControllerIfLoaded];

  if (v5)
  {
    v6 = [(PHInCallRootViewController *)self desiresLockButtonEventsForCallContainer:v4];
    v7 = [v4 resolvedIncomingCall];

    v8 = v6 | 6;
    if (!v7)
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

  if ([(PHInCallRootViewController *)self desiresLockAndVolumeButtonEventsForCallContainer:v4])
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

- (unint64_t)desiredSceneButtonEventsForCallContainer:(id)a3
{
  v4 = a3;
  v5 = [(PHInCallRootViewController *)self audioCallViewControllerIfLoaded];

  if (v5)
  {
    v6 = [v4 resolvedIncomingCall];

    if (v6)
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

  if ([(PHInCallRootViewController *)self desiresLockAndVolumeButtonEventsForCallContainer:v4])
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

- (BOOL)desiresLockAndVolumeButtonEventsForCallContainer:(id)a3
{
  v3 = a3;
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 delegate];
  v6 = [v5 incomingVideoCallUsingCallContainer:v3];

  return v6 != 0;
}

- (BOOL)desiresLockButtonEventsForCallContainer:(id)a3
{
  v4 = a3;
  v5 = [v4 resolvedIncomingCall];
  if (v5)
  {
    v6 = 1;
  }

  else if ([v4 currentCallCount])
  {
    v6 = [(PHInCallRootViewController *)self isPickedRouteReceiver];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)hardwareButtonEventNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 userInfo];
    v17 = 138412290;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHInCallRootViewController received a hardware button event (%@)", &v17, 0xCu);
  }

  v7 = [(PHInCallRootViewController *)self featureFlags];
  if (![(__CFString *)v7 conversationOneToOneModeEnabled]|| ![(CNKMultiwayViewControllerProtocol *)self->_multiwayViewController isViewLoaded])
  {
    goto LABEL_15;
  }

  v8 = [(CNKMultiwayViewControllerProtocol *)self->_multiwayViewController view];
  v9 = [v8 window];

  if (v9)
  {
    v10 = [v4 userInfo];
    v7 = [v10 valueForKey:@"kPHHardwareButtonEventType"];

    v11 = +[UIApplication sharedApplication];
    v12 = [v11 delegate];
    v13 = [(PHInCallRootViewController *)self callCenter];
    v14 = [v12 incomingVideoCallUsingCallContainer:v13];

    if (v7 == @"kPHHardwareButtonEventTypeVolumeDownButton" || v7 == @"kPHHardwareButtonEventTypeVolumeUpButton")
    {
      [v14 suppressRingtone];
    }

    else
    {
      if (v7 == @"kPHHardwareButtonEventTypeHeadsetButton")
      {
        v15 = +[UIApplication sharedApplication];
        v16 = [v15 delegate];
        [v16 handleHeadsetButtonPressForCall:v14 sourceIdentifier:0];

        goto LABEL_13;
      }

      if (v7 == @"kPHHardwareButtonEventTypeHeadsetButtonLongPress")
      {
        v15 = [(PHInCallRootViewController *)self callCenter];
        [v15 handleActionForWiredHeadsetMiddleButtonLongPress];
LABEL_13:
      }
    }

LABEL_15:
  }
}

- (id)getPreferredBackgroundActivitiesToSuppress:(id)a3 whenIsPipped:(BOOL)a4 whenTemporarilyAllowAllStatusBarPills:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = v7;
  if (v5)
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

  if (v6)
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

  v12 = v7;
LABEL_10:
  v13 = v12;

  return v13;
}

- (id)backgroundActivities
{
  v2 = [(PHInCallRootViewController *)self inCallWindowScene];
  v3 = sub_1000EDC00([v2 ics_sceneType]);

  return v3;
}

- (BOOL)isPipped
{
  v2 = +[PHPIPController defaultPIPController];
  v3 = [v2 isPipped];

  return v3;
}

- (void)setTemporarilyAllowAllStatusBarPills:(BOOL)a3
{
  if (self->_temporarilyAllowAllStatusBarPills != a3)
  {
    self->_temporarilyAllowAllStatusBarPills = a3;
    [(PHInCallRootViewController *)self setNeedsStatusBarPillSuppressionUpdate];
  }
}

- (void)setNeedsStatusBarPillSuppressionUpdate
{
  v3 = [(PHInCallRootViewController *)self backgroundActivities];
  v5 = [(PHInCallRootViewController *)self getPreferredBackgroundActivitiesToSuppress:v3 whenIsPipped:[(PHInCallRootViewController *)self isPipped] whenTemporarilyAllowAllStatusBarPills:[(PHInCallRootViewController *)self temporarilyAllowAllStatusBarPills]];

  v4 = [(PHInCallRootViewController *)self inCallWindowScene];
  [PHInCallRootViewController setStatusBarPillSuppressionForBackgroundActivities:v5 onWindowScene:v4];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v6 = [(PHInCallRootViewController *)self childViewControllers];
  v7 = [v6 lastObject];

  if (objc_opt_respondsToSelector())
  {
    [v7 willAnimateRotationToInterfaceOrientation:a3 duration:a4];
  }
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3
{
  v4 = [(PHInCallRootViewController *)self childViewControllers];
  v5 = [v4 lastObject];

  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 shouldAutorotateToInterfaceOrientation:a3];
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
  v4 = [v3 pipState];

  if (v4 == 2)
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

- (void)presentBlockAndReportAlertToBlockCall:(id)a3 forViewController:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && v9)
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
    v16 = v8;
    v33 = v16;
    v17 = v10;
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

    [v9 presentModalViewController:v13 animated:1];
    objc_destroyWeak(&v31);

    objc_destroyWeak(&v35);
    objc_destroyWeak(location);
  }
}

- (void)routesChangedForRouteController:(id)a3
{
  [(PHInCallRootViewController *)self updateDesiredSpringboardBehavior];
  v4 = [(PHInCallRootViewController *)self routeListController];
  [v4 reload];
}

- (void)viewControllerDidRequestTemporaryPreventSuspension:(id)a3
{
  v4 = +[UIApplication sharedApplication];
  v3 = [v4 delegate];
  [v3 acquireLongPreventSuspensionAssertion];
}

- (void)viewController:(id)a3 fullScreenFocusedParticipantOrientationChanged:(int64_t)a4
{
  v6 = +[PHPIPController defaultPIPController];
  v7 = [v6 pipState];

  if (v7 == 2)
  {
    v8 = +[PHPIPController defaultPIPController];
    v9 = [v8 pipContentViewController];
    v10 = [v9 view];
    [v10 frame];
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
      [v8 rotatePIPDeviceOrientationTo:objc_msgSend(objc_opt_class() withCompletion:{"uiDeviceOrientationForCNKDeviceOrientation:", a4), v24}];
    }
  }
}

- (void)viewController:(id)a3 fullScreenFocusedParticipantAspectRatioChanged:(CGSize)a4 participantGridIsFullScreen:(BOOL)a5
{
  v5 = [PHPIPController defaultPIPController:a3];
  [v5 updatePIPSize];

  v6 = +[PHPIPController defaultPIPController];
  [v6 updatePIPFrame];
}

- (void)viewController:(id)a3 localParticipantAspectRatioChanged:(CGSize)a4
{
  v4 = [PHPIPController defaultPIPController:a3];
  [v4 updatePIPSize];

  v5 = +[PHPIPController defaultPIPController];
  [v5 updatePIPFrame];
}

- (void)viewController:(id)a3 pipSourceProviderNeedsUpdate:(id)a4
{
  v4 = a4;
  v5 = +[PHPIPController defaultPIPController];
  [v5 setSourceProvider:v4];
}

- (void)participantsDidChangeLocation:(id)a3
{
  v3 = +[PHPIPController defaultPIPController];
  [v3 updatePIPFrame];
}

- (void)updateBackgroundStartPipAuthorizationState
{
  v3 = [(PHInCallRootViewController *)self featureFlags];
  v4 = [v3 expanseEnabled];

  if (v4)
  {
    v5 = [(PHInCallRootViewController *)self multiwayViewController];
    v6 = [v5 hasParticipantVideo];
    v7 = [(PHInCallRootViewController *)self callDisplayStyleManager];
    v8 = [v7 callDisplayStyle];

    v9 = +[PHPIPController defaultPIPController];
    v10 = sub_100004F84();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 67109888;
      v24 = v6;
      v25 = 2048;
      *v26 = v8;
      *&v26[8] = 1024;
      *v27 = [v5 isPipped];
      *&v27[4] = 2048;
      v28 = [v9 pipState];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "hasParticipantVideo changed (hasParticipantVideo: %d, callDisplayStyle: %ld, isPipped: %d pipState: %lu)", &v23, 0x22u);
    }

    [v9 setHasParticipantVideoForActiveConversation:v6];
    [v9 updateShouldPIPWhenEnteringBackground];
    v11 = [(PHInCallRootViewController *)self callCenter];
    v12 = [v11 frontmostAudioOrVideoCall];

    if ([v12 isConnected])
    {
      v13 = 0;
    }

    else
    {
      if (([v5 isOneToOneModeEnabled] & 1) == 0)
      {
        v14 = v5 == 0;
        goto LABEL_19;
      }

      v13 = [v12 status] != 3;
    }

    v14 = v5 == 0;
    if (v5 && !v13)
    {
      if (v8 == 4)
      {
        v15 = v6;
      }

      else
      {
        v15 = 0;
      }

      if (v15 == 1 && ![v9 pipState])
      {
        v16 = +[UIApplication sharedApplication];
        v17 = [v16 delegate];
        v22 = [v5 call];
        [v17 requestBackgroundPiPAuthorizationOfDismissedInCallSceneForCall:v22];
      }

      else
      {
        v16 = +[UIApplication sharedApplication];
        v17 = [v16 delegate];
        [v17 revokeAndRemoveBackgroundPiPAuthorizationForSceneTypeIfNeeded:0];
      }

      if ((v6 & 1) == 0)
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
      v19 = [v12 isConnected];
      v20 = [v12 status];
      v21 = [v5 isOneToOneModeEnabled];
      v23 = 67109888;
      v24 = v19;
      v25 = 1024;
      *v26 = v20;
      *&v26[4] = 1024;
      *&v26[6] = v21;
      *v27 = 1024;
      *&v27[2] = v14;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "skipping updating background start pip authorization; call is connected %d or call status %d or call isOneToOneModeEnabled %d or multiway view controller is nil %d", &v23, 0x1Au);
    }

    goto LABEL_22;
  }
}

- (void)viewController:(id)a3 mediaPipSafeAreaFrameChanged:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [(PHInCallRootViewController *)self multiwayViewController];
  v11 = [(PHInCallRootViewController *)self featureFlags];
  v12 = [v11 expanseEnabled];

  if (v12 && v10 == v9)
  {
    v13 = +[UIApplication sharedApplication];
    v14 = [v13 delegate];
    v15 = [v14 currentInCallScene];

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
      v20 = [v10 view];
      v21 = [v15 coordinateSpace];
      [v20 convertRect:v21 toCoordinateSpace:{x, y, width, height}];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;

      v30 = [v15 coordinateSpace];
      [v30 bounds];
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

    [v15 setExpanseHUDDodgingInsets:{top, left, bottom, right}];
  }
}

- (double)viewController:(id)a3 rubberBandConstrained:(double)a4 inRange:(double)a5
{
  v5 = a3;
  BSUIConstrainValueWithRubberBand();
  v6 = [v5 viewIfLoaded];

  UIRoundToViewScale();
  v8 = v7;

  return v8;
}

- (id)audioRouteMenu
{
  v3 = [(PHInCallRootViewController *)self routeListController];

  if (!v3)
  {
    v4 = [PHAudioRoutingMenuController menuControllerWithCallStyle:1 dataSource:self delegate:self];
    [(PHInCallRootViewController *)self setRouteListController:v4];
  }

  v5 = [(PHInCallRootViewController *)self routeListController];
  v6 = [v5 menu];

  return v6;
}

- (id)audioRouteGlyphFor:(id)a3 buttonStyle:(int64_t)a4
{
  if (a4 > 6)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_1002F9508[a4];
  }

  return [a3 audioRouteGlyphForDisplayStyle:v5];
}

- (UIImage)audioRouteGlyphForDevice
{
  v2 = +[PHDevice currentDevice];
  v3 = [v2 audioRouteGlyphImage];

  return v3;
}

- (id)callParticipantLabelsViewForViewController:(id)a3
{
  v4 = a3;
  v5 = [(PHInCallRootViewController *)self multiwayViewController];

  if (v5 == v4)
  {
    callParticipantLabelsView = self->_callParticipantLabelsView;
    if (!callParticipantLabelsView)
    {
      v8 = [PHCallParticipantsView alloc];
      v9 = [(PHInCallRootViewController *)self callDisplayStyleManager];
      v10 = [(PHCallParticipantsView *)v8 initWithCallDisplayStyleManager:v9];
      v11 = self->_callParticipantLabelsView;
      self->_callParticipantLabelsView = v10;

      v12 = sub_100004F84();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = self->_callParticipantLabelsView;
        v15 = 138412546;
        v16 = v4;
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

- (void)updateCallParticipantLabelsViewForViewController:(id)a3
{
  v4 = a3;
  v6 = [(PHInCallRootViewController *)self multiwayViewController];

  if (v6 == v4)
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

- (id)bottomControlsViewForViewController:(id)a3
{
  v4 = a3;
  v5 = [(PHInCallRootViewController *)self multiwayViewController];

  if (v5 == v4)
  {
    bottomControlsView = self->_bottomControlsView;
    if (!bottomControlsView)
    {
      v8 = [PHBottomBar alloc];
      v9 = [(PHInCallRootViewController *)self callDisplayStyleManager];
      v10 = [(PHBottomBar *)v8 initWithCallDisplayStyleManager:v9];
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

+ (int64_t)uiDeviceOrientationForCNKDeviceOrientation:(int64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1002F9540[a3];
  }
}

+ (int64_t)cnkDeviceOrientationForUIDeviceOrientation:(int64_t)a3
{
  if ((a3 - 2) > 2)
  {
    return 1;
  }

  else
  {
    return qword_1002F9560[a3 - 2];
  }
}

+ (int64_t)cnkSupportedDeviceOrientationsFromUIInterfaceOrientationMask:(unint64_t)a3
{
  v3 = (~a3 & 0x18) == 0;
  if ((a3 & 2) != 0)
  {
    v3 = 0;
  }

  if ((~a3 & 0x1E) != 0)
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
  v2 = [(PHInCallRootViewController *)self inCallWindowScene];
  v3 = [v2 isBeingShownAboveCoverSheet];

  return v3;
}

- (void)unansweredCallUIDismissed
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 delegate];
  [v3 setMostRecentlyDisconnectedVideoCall:0];

  v4 = [NSSet setWithObjects:@"PHMulitwayCallAssertionReason", @"PHVideoMessageInProgressAssertionReason", 0];
  [PHInCallRootViewController releaseDismissalAssertionReasons:v4];
}

- (BOOL)usesPaddingInsteadOfSafeArea
{
  v2 = +[CNKFeatures sharedInstance];
  v3 = [v2 isICUIRedesignEnabled];

  return v3;
}

- (id)routesForAudioRoutingMenuController:(id)a3
{
  v3 = [(PHInCallRootViewController *)self callCenter];
  v4 = [v3 routeController];
  v5 = [v4 sortedRoutes];

  return v5;
}

- (void)audioRoutingMenuController:(id)a3 didSelectRoute:(id)a4
{
  v5 = a4;
  v7 = [(PHInCallRootViewController *)self callCenter];
  v6 = [v7 routeController];
  [v6 pickRoute:v5];
}

- (void)conversationManager:(id)a3 activeRemoteParticipantsChangedForConversation:(id)a4
{
  v5 = a4;
  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updating call controller because active remote participants changed for conversation %@", &v7, 0xCu);
  }

  [(PHInCallRootViewController *)self updateCallControllerForCurrentState];
}

- (void)handleActivationContextDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleActivationContextDidChangeNotification: %@", &v6, 0xCu);
  }

  [(PHInCallRootViewController *)self handleSOSActivationIfNecessary];
  [(PHInCallRootViewController *)self handleScreenTimeActivationIfNecessary];
}

- (void)handleSOSActivationIfNecessary
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 delegate];
  v5 = [v4 shouldActivateSOS];

  if (v5)
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
  v4 = [v3 delegate];
  v5 = [v4 activationContext];
  v6 = [v5 pendingRestrictedScreenTimeRequest];

  if (v6)
  {
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = +[UIApplication sharedApplication];
      v9 = [v8 delegate];
      v10 = [v9 activationContext];
      v11 = [v10 pendingRestrictedScreenTimeRequest];
      v18 = 138412290;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Will request screen time alert for request %@", &v18, 0xCu);
    }

    v12 = +[UIApplication sharedApplication];
    v13 = [v12 delegate];
    v14 = [v13 activationContext];
    v15 = [v14 pendingRestrictedScreenTimeRequest];
    [(PHInCallRootViewController *)self forceUpdateCallControllerForFilteredRequest:v15];

    v16 = +[UIApplication sharedApplication];
    v17 = [v16 delegate];
    [v17 setActivationContext:0];
  }
}

- (void)callDisplayStyleDidChangeFromStyle:(int64_t)a3 toStyle:(int64_t)a4
{
  v7 = a4 == 4;
  v8 = [(PHInCallRootViewController *)self callManager];
  [v8 setIsInBackground:v7];

  if (a3 == 4 && a4 == 2)
  {
    v9 = sub_100004F84();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v54[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "In-call UI was just presented full-screen, updating shouldPIPWhenEnteringBackground and IncomingBottomBarControlState", v54, 2u);
    }

    v10 = +[PHPIPController defaultPIPController];
    [v10 updateShouldPIPWhenEnteringBackground];

    v11 = [(PHInCallRootViewController *)self audioCallViewControllerIfLoaded];
    [v11 updateIncomingBottomBarControlState];
  }

  if (a3 == 1 || a4 == 1)
  {
    [(PHInCallRootViewController *)self updateVideoState];
    [(PHInCallRootViewController *)self showHideMiniWindowViewIfNeededAnimated:a3 != 4];
  }

  v12 = [(PHInCallRootViewController *)self featureFlags];
  if ([v12 conversationOneToOneModeEnabled])
  {
    v13 = [(PHInCallRootViewController *)self currentViewControllerIsMultiway];
    if (a3 == 2)
    {
      if (v13)
      {
        v14 = [(PHInCallRootViewController *)self multiwayViewController];
        v15 = [v14 shouldDisconnectOnDismissal];

        if (!v15)
        {
          goto LABEL_15;
        }

        v12 = [(PHInCallRootViewController *)self callCenter];
        v16 = [(PHInCallRootViewController *)self multiwayViewController];
        v17 = [v16 call];
        [v12 disconnectCall:v17 withReason:2];
      }
    }
  }

LABEL_15:
  v19 = a4 == 4 || a4 == 2;
  v20 = [(PHInCallRootViewController *)self currentViewControllerIsMultiway];
  if (!a3 && v19 && v20)
  {
    v21 = [(PHInCallRootViewController *)self multiwayViewController];
    [v21 setDidExpandIncomingCallBanner:1];
  }

  [(PHInCallRootViewController *)self updateMultiwayViewControllerUIState];
  [(PHInCallRootViewController *)self updateCallDetailsViewIsOnScreen];
  if (a4 == 4)
  {
    [(PHInCallRootViewController *)self cancelAutoAnswer];
    v22 = +[PHInCallUtilities sharedInstance];
    [v22 stopSuppressingInCallStatusBarForReason:@"PHSuppressInCallStatusBarForFullscreenUIReason"];

    [(PHInCallRootViewController *)self dismissSOSIfNeeded];
    [(PHInCallRootViewController *)self dismissScreenTimeAlertHostIfNeeded];
    [(PHInCallRootViewController *)self dismissViewControllersWithSensitiveInformation];
    v23 = +[UIApplication sharedApplication];
    v24 = [v23 delegate];
    v25 = [v24 bannerPresentationManager];
    [(PHInCallRootViewController *)self dissmissConfirmLeavePTTChannelAlertIfNeededWithBannerPresentationManager:v25];

    v26 = +[UIApplication sharedApplication];
    v27 = [v26 delegate];
    if ([v27 didDeepLinkToPTTCallDetailsView])
    {
      v28 = [qword_1003B0ED8 containsObject:@"PHPTTCallDetailsViewAssertionReason"];

      if (v28)
      {
        v29 = +[UIApplication sharedApplication];
        v30 = [v29 delegate];
        [v30 setDidDeepLinkToPTTCallDetailsView:0];

        [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHPTTCallDetailsViewAssertionReason"];
      }
    }

    else
    {
    }

    v32 = +[UIApplication sharedApplication];
    v33 = [v32 delegate];
    v34 = [v33 allInCallScenes];
    v35 = [v34 count];

    if (v35 == 1)
    {
      v36 = +[PHIntervalTimer oneSecondTimer];
      [v36 pause];
    }

    v37 = +[UIApplication sharedApplication];
    v38 = [v37 delegate];
    v39 = [(PHInCallRootViewController *)self callCenter];
    v31 = [v38 currentVideoCallUsingCallContainer:v39];

    v40 = [(PHInCallRootViewController *)self callCenter];
    v41 = [v40 callPassingTest:&stru_100359770];

    if (!(v31 | v41))
    {
      v42 = [(PHInCallRootViewController *)self multiwayViewController];
      v43 = [v42 isInVideoMessageFlow];

      if ((v43 & 1) == 0)
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

          v45 = [(PHInCallRootViewController *)self multiwayViewController];
          [v45 setIsInCallEndedBlockAndReportFlow:0];

          [objc_opt_class() releaseDismissalAssertionForReason:@"PHCallEndedBlockAndReportInProgressAssertionReason"];
        }

        v46 = +[UIApplication sharedApplication];
        v47 = [v46 delegate];
        [v47 setMostRecentlyDisconnectedVideoCall:0];
      }
    }
  }

  else
  {
    if (a3 != 4)
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
    v49 = [(PHInCallRootViewController *)self isCurrentViewControllerAudio];
    v50 = [(PHInCallRootViewController *)self parentViewController];
    v51 = [(PHInCallRootViewController *)self view];
    v52 = [v51 window];
    v53 = [(PHInCallRootViewController *)self childViewControllers];
    v54[0] = 67109890;
    v54[1] = v49;
    v55 = 2112;
    v56 = v50;
    v57 = 2112;
    v58 = v52;
    v59 = 2112;
    v60 = v53;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "PHInCallRootViewController - isCurrentViewControllerAudio: %d, my parent: %@, window: %@, children: %@", v54, 0x26u);
  }

  [(PHInCallRootViewController *)self updateBannerTapGestureRecognizerForCallDisplayStyle:a4];
  [(PHInCallRootViewController *)self notifyAudioCallControllerIfNecessaryCallDisplayStyleDidChangeFromStyle:a3 toStyle:a4];
}

- (BOOL)currentViewControllerIsMultiway
{
  v3 = [(PHInCallRootViewController *)self multiwayViewController];
  v4 = [v3 parentViewController];
  if (v4)
  {
    v5 = [(PHInCallRootViewController *)self currentViewController];
    v6 = [(PHInCallRootViewController *)self videoCallNavigationController];
    if (v5 == v6)
    {
      v8 = [(PHInCallRootViewController *)self videoCallNavigationController];
      v9 = [v8 topViewController];
      if ([v9 conformsToProtocol:&OBJC_PROTOCOL___CNKMultiwayViewControllerProtocol])
      {
        v7 = 1;
      }

      else
      {
        v10 = [(PHInCallRootViewController *)self multiwayViewController];
        v7 = [v10 isInVideoMessageFlow];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isCurrentViewControllerAudio
{
  v3 = [(PHInCallRootViewController *)self audioCallViewControllerIfLoaded];
  v4 = [v3 parentViewController];
  if (v4)
  {
    v5 = [(PHInCallRootViewController *)self currentViewController];
    v6 = [(PHInCallRootViewController *)self audioCallNavigationController];
    v7 = v5 == v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isShowing6UP
{
  v3 = [(PHInCallRootViewController *)self isCurrentViewControllerAudio];
  if (v3)
  {
    v4 = [(PHInCallRootViewController *)self audioCallViewControllerIfLoaded];
    v5 = [v4 isShowing6UP];

    LOBYTE(v3) = v5;
  }

  return v3;
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
  v3 = [(UINavigationController *)self->_videoCallNavigationController topViewController];
  v4 = [v3 conformsToProtocol:&OBJC_PROTOCOL___CNKMultiwayViewControllerProtocol];
  if (!v3 || (v4 & 1) != 0)
  {
    if ([(PHInCallRootViewController *)self isDisplayStyleMiniWindow])
    {
      [v3 muteVideo];
    }

    else
    {
      [v3 updateVideoState];
    }
  }

  else
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1002568D0(v3, self, v5);
    }
  }
}

- (void)notifyAudioCallControllerIfNecessaryCallDisplayStyleDidChangeFromStyle:(int64_t)a3 toStyle:(int64_t)a4
{
  v7 = [(PHInCallRootViewController *)self audioCallNavigationController];
  if (v7)
  {
    v8 = [(PHInCallRootViewController *)self audioCallNavigationController];
    v9 = [v8 view];
    v10 = [v9 superview];
    v11 = v10 == 0;
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

  if (a3 == 0 && v11)
  {
    v13 = [(PHInCallRootViewController *)self audioCallViewControllerIfLoaded];
    [ICSCallDisplayStyleManager notifyAllRespondersForViewController:v13 callDisplayStyleDidChangeFromStyle:0 toStyle:a4];

    v14 = [(PHInCallRootViewController *)self featureFlags];
    LODWORD(v13) = [v14 audioCallUIModernizationEnabled];

    if (v13)
    {
      v15 = [(PHInCallRootViewController *)self audioCallViewControllerWrapper];
      v16 = [v15 viewController];
      [ICSCallDisplayStyleManager notifyAllRespondersForViewController:v16 callDisplayStyleDidChangeFromStyle:0 toStyle:a4];
    }
  }
}

- (void)updateBannerTapGestureRecognizerForCallDisplayStyle:(int64_t)a3
{
  v3 = a3 == 0;
  v4 = [(PHInCallRootViewController *)self bannerTapGestureRecognizer];
  [v4 setEnabled:v3];
}

- (void)bannerTapped:(id)a3
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Transitioning scene to full screen due to tap", buf, 2u);
  }

  v5 = [(PHInCallRootViewController *)self inCallWindowScene];

  if (v5)
  {
    TUDispatchMainIfNecessary();
  }
}

- (void)updateUPlusOneVideoCallViews
{
  v3 = [(PHInCallRootViewController *)self inCallState];
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 delegate];
  v6 = [(PHInCallRootViewController *)self callCenter];
  v7 = [v5 currentVideoCallUsingCallContainer:v6];

  v8 = [(PHInCallRootViewController *)self callCenter];
  v9 = [v8 activeConversationForCall:v7];

  if ((v3 & 0xFFFE) == 4)
  {
    v10 = +[UIApplication sharedApplication];
    v11 = [v10 delegate];
    v12 = [v11 currentInCallScene];
    if ([v12 presentationMode] == 1)
    {
      v13 = [v9 resolvedAudioVideoMode];

      if (v13 == 2)
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

  else if (!v3)
  {
    v15 = [(PHInCallRootViewController *)self callDurationTimerForParticipantsView];
    [v15 invalidate];

    [(PHInCallRootViewController *)self setCallDurationTimerForParticipantsView:0];
  }

  v16 = [(PHInCallRootViewController *)self traitCollection];
  v17 = [v16 _backlightLuminance] != 1;

  v18 = [(PHInCallRootViewController *)self updateContactInformationForParticipantViewWithInCallState:v3];
  v19 = [(PHInCallRootViewController *)self updateSecondaryStringForParticipantViewWithInCallState:v3 allowsDuration:v17];
  if (!v18)
  {
LABEL_15:
    if (!v19)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v20 = [v9 link];
  v21 = [v20 displayName];

  if (!v21 || !v19)
  {
    [(PHInCallRootViewController *)self setContactNameForParticipantsView:v18];
    goto LABEL_15;
  }

  [(PHInCallRootViewController *)self setSecondaryStringForParticipantsView:v19];
LABEL_16:
  v22 = [v9 link];
  v23 = [v22 displayName];

  if (v18 && v23)
  {
    [(PHInCallRootViewController *)self setContactNameForParticipantsView:v18];
  }

  else
  {
    [(PHInCallRootViewController *)self setSecondaryStringForParticipantsView:v19];
  }

LABEL_20:
  v24 = [(PHInCallRootViewController *)self callParticipantLabelsView];
  [v24 updateParticipants];

  [(PHInCallRootViewController *)self updateBottomControlsViewWithInCallState:v3];
}

- (unsigned)inCallState
{
  v3 = [(PHInCallRootViewController *)self callCenter];
  v4 = [v3 currentCallCount];

  v5 = [(PHInCallRootViewController *)self callCenter];
  v6 = [v5 currentVideoCallCount];

  v7 = [(PHInCallRootViewController *)self callCenter];
  v8 = [v7 currentVideoCalls];

  v9 = sub_100004F84();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v41 = 138412290;
    v42[0] = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState for non final chats %@", &v41, 0xCu);
  }

  if (v6)
  {
    if (!v4 && v6 == 1)
    {
      v10 = [v8 lastObject];
      if ([v10 status]== 4 || [v10 wantsHoldMusic])
      {
        v11 = sub_100004F84();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v10 status]== 4;
          v13 = [v10 wantsHoldMusic];
          v41 = 67109376;
          LODWORD(v42[0]) = v12;
          WORD2(v42[0]) = 1024;
          *(v42 + 6) = v13;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call status is TUCallStatusRinging (%d) or call wants hold music (%d), setting state to PHInCallStateIncomingRinging", &v41, 0xEu);
        }

        v14 = 1;
        goto LABEL_38;
      }

      if ([v10 status]== 3)
      {
        v11 = sub_100004F84();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v41) = 0;
          v25 = "UpdateCurrentState: Call status is TUCallStatusSending, setting state to PHInCallStateOutgoingRinging";
LABEL_44:
          v14 = 2;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v25, &v41, 2u);
          goto LABEL_38;
        }

        goto LABEL_50;
      }

      if ([v10 status]== 1 && [v10 isEndpointOnCurrentDevice])
      {
        v11 = sub_100004F84();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [v10 isHostedOnCurrentDevice];
          v30 = [(PHInCallRootViewController *)self callCenter];
          v31 = [v30 routeController];
          v32 = [v31 pickedRoute];
          v33 = [v32 deviceType];
          v41 = 67109376;
          LODWORD(v42[0]) = v29;
          WORD2(v42[0]) = 2048;
          *(v42 + 6) = v33;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call status is TUCallStatusActive, setting state to PHInCallStateSingleCallActive (hosted: %d, endpoint: 1, pickedRouteDeviceType: %ld)", &v41, 0x12u);
        }

        v14 = 4;
        goto LABEL_38;
      }

      if ([v10 status]== 1)
      {
        v11 = sub_100004F84();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v34 = [v10 isHostedOnCurrentDevice];
          v35 = [(PHInCallRootViewController *)self callCenter];
          v36 = [v35 routeController];
          v37 = [v36 pickedRoute];
          v38 = [v37 deviceType];
          v41 = 67109376;
          LODWORD(v42[0]) = v34;
          WORD2(v42[0]) = 2048;
          *(v42 + 6) = v38;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call status is TUCallStatusActive, setting state to PHInCallStateIdle (hosted: %d, endpoint: 0, pickedRouteDeviceType: %ld)", &v41, 0x12u);
        }

        v14 = 0;
        goto LABEL_38;
      }

      if ([v10 status]!= 5)
      {
        v14 = 0;
        goto LABEL_39;
      }

      v11 = sub_100004F84();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v41) = 0;
        goto LABEL_61;
      }

      goto LABEL_62;
    }

    v18 = [(PHInCallRootViewController *)self callCenter];
    v19 = [v18 currentAudioAndVideoCallCount];

    if (v19 >= 2)
    {
      v20 = +[UIApplication sharedApplication];
      v21 = [v20 delegate];
      v22 = [(PHInCallRootViewController *)self callCenter];
      v10 = [v21 currentVideoCallUsingCallContainer:v22];

      if ([v10 status]!= 4 && ![v10 wantsHoldMusic])
      {
        if ([v10 status]== 3)
        {
          v11 = sub_100004F84();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v41) = 0;
            v25 = "UpdateCurrentState: Current chat status is TUCallStatusSending, setting state to PHInCallStateOutgoingRinging";
            goto LABEL_44;
          }

LABEL_50:
          v14 = 2;
          goto LABEL_38;
        }

        v39 = [v10 status];
        v11 = sub_100004F84();
        v40 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        if (v39 != 5)
        {
          if (v40)
          {
            LOWORD(v41) = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Multiple chats, setting state to PHInCallStateMultipleCallsActive", &v41, 2u);
          }

          v14 = 5;
          goto LABEL_38;
        }

        if (v40)
        {
          LOWORD(v41) = 0;
LABEL_61:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call status is TUCallStatusDisconnecting, setting state to PHInCallStateEnding", &v41, 2u);
        }

LABEL_62:
        v14 = 6;
        goto LABEL_38;
      }

      v23 = [(PHInCallRootViewController *)self callCenter];
      v11 = [v23 displayedCalls];

      if ([v11 count])
      {
        v24 = [v11 firstObject];
      }

      else
      {
        v24 = 0;
      }

      if ([v10 wantsHoldMusic])
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
        if (v4 != 1 || ![v10 isVideoUpgradeFromCall:v24])
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
    v16 = [v15 delegate];
    v17 = [v16 mostRecentlyDisconnectedVideoCall];

    if (v17)
    {
      v10 = sub_100004F84();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v41) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call has been disconnected, setting state to PHInCallStateEnded", &v41, 2u);
      }

      v14 = 7;
      goto LABEL_39;
    }
  }

  v14 = 0;
LABEL_40:

  return v14;
}

- (id)updateContactInformationForParticipantViewWithInCallState:(unsigned __int16)a3
{
  v3 = a3;
  v5 = +[UIApplication sharedApplication];
  v6 = [v5 delegate];
  v7 = v6;
  if (v3 == 7)
  {
    v8 = [v6 mostRecentlyDisconnectedVideoCall];
  }

  else
  {
    v9 = [(PHInCallRootViewController *)self callCenter];
    v8 = [v7 currentVideoCallUsingCallContainer:v9];
  }

  if (!v8)
  {
    v20 = 0;
    goto LABEL_22;
  }

  v10 = [[TUContactsDataProviderFetchRequest alloc] initWithCall:v8];
  v11 = [v8 contactIdentifier];
  [v10 setContactIdentifier:v11];

  v33 = [CNAvatarView descriptorForRequiredKeysWithThreeDTouchEnabled:1];
  v34[0] = v33;
  v34[1] = CNContactImageDataAvailableKey;
  v12 = [NSArray arrayWithObjects:v34 count:2];
  [v10 setAuxiliaryKeysToFetch:v12];

  v32 = [CNContactStoreConfiguration tu_contactStoreConfigurationForCall:v8];
  v13 = [[CNContactStore alloc] initWithConfiguration:v32];
  v14 = [[TUContactsDataProvider alloc] initWithContactsDataSource:v13];
  v15 = [v14 executeFetchRequest:v10];
  v16 = [v8 handle];
  v17 = [v16 siriDisplayName];
  if (v17)
  {
    v18 = [v8 handle];
    v19 = [v18 shouldHideContact];
  }

  else
  {
    v19 = 0;
  }

  v21 = [v15 contacts];
  v22 = [v21 count];

  if (v22 == 1 && (v19 & 1) == 0)
  {
    v23 = [v15 contacts];
    v24 = [v23 firstObject];

    [(PHInCallRootViewController *)self setContactForParticipantsView:v24];
  }

  v25 = [(PHInCallRootViewController *)self callCenter];
  v26 = [v25 activeConversationForCall:v8];

  v27 = [v26 link];
  v28 = [v27 displayName];

  [(PHInCallRootViewController *)self setCallForParticipantsView:v8];
  if ([v8 isConversation] && v26)
  {
    if (v28)
    {
      v29 = v28;
    }

    else
    {
      v29 = [v26 displayName];
    }

    goto LABEL_20;
  }

  if (!v19)
  {
    v29 = [v15 localizedName];
LABEL_20:
    v20 = v29;
    goto LABEL_21;
  }

  v30 = [v8 handle];
  v20 = [v30 siriDisplayName];

LABEL_21:
LABEL_22:

  return v20;
}

- (id)updateSecondaryStringForParticipantViewWithInCallState:(unsigned __int16)a3 allowsDuration:(BOOL)a4
{
  v5 = a3;
  v7 = +[UIApplication sharedApplication];
  v8 = [v7 delegate];
  v9 = [(PHInCallRootViewController *)self callCenter];
  v10 = [v8 currentVideoCallUsingCallContainer:v9];

  v11 = [(PHInCallRootViewController *)self callCenter];
  v12 = [v11 activeConversationForCall:v10];

  v13 = 0;
  if (v5 > 3)
  {
    if ((v5 - 4) < 2)
    {
      v23 = +[NSBundle conversationKit];
      v17 = v23;
      v24 = @"STATUS_CONNECTING";
    }

    else
    {
      if (v5 != 6)
      {
        if (v5 != 7)
        {
          goto LABEL_49;
        }

        v18 = +[NSBundle conversationKit];
        v13 = [v18 localizedStringForKey:@"STATUS_ENDED" value:&stru_100361FD0 table:@"CallStatus"];

        v19 = +[UIApplication sharedApplication];
        v20 = [v19 delegate];
        v17 = [v20 mostRecentlyDisconnectedVideoCall];

        if ([v17 disconnectedReason] == 14)
        {
          v21 = @"STATUS_FAILED";
        }

        else
        {
          if ([v17 disconnectedReason] != 15 && objc_msgSend(v17, "disconnectedReason") != 5)
          {
            goto LABEL_48;
          }

          v21 = @"STATUS_UNAVAILABLE";
        }

        v31 = +[NSBundle conversationKit];
        v32 = [v31 localizedStringForKey:v21 value:&stru_100361FD0 table:@"CallStatus"];

        v13 = v32;
        goto LABEL_48;
      }

      v23 = +[NSBundle conversationKit];
      v17 = v23;
      v24 = @"STATUS_ENDING";
    }

    goto LABEL_46;
  }

  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        goto LABEL_49;
      }

      if ([v10 wantsHoldMusic])
      {
        v14 = +[NSBundle conversationKit];
        if (a4)
        {
          v15 = [v14 localizedStringForKey:@"%@_HOLD_MUSIC" value:&stru_100361FD0 table:@"CallStatus"];
          v16 = [v10 callDurationString];
          v17 = [NSString stringWithFormat:v15, v16];
        }

        else
        {
          v17 = [v14 localizedStringForKey:@"HOLD_MUSIC" value:&stru_100361FD0 table:@"CallStatus"];
        }

        if ([v10 isConnected])
        {
          v33 = v17;
LABEL_47:
          v13 = v33;
          goto LABEL_48;
        }

        v34 = +[NSBundle conversationKit];
        v13 = [v34 localizedStringForKey:@"STATUS_CONNECTING" value:&stru_100361FD0 table:@"CallStatus"];

LABEL_48:
        goto LABEL_49;
      }

      goto LABEL_14;
    }

    v23 = +[NSBundle conversationKit];
    v17 = v23;
    v24 = @"STATUS_ENDED";
LABEL_46:
    v33 = [v23 localizedStringForKey:v24 value:&stru_100361FD0 table:@"CallStatus"];
    goto LABEL_47;
  }

  if (v5 != 2)
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

    v27 = [v12 link];
    if (v27)
    {
      v28 = v27;
      v29 = [v12 link];
      v30 = [v29 displayName];

      if (v30)
      {
        v13 = [v10 displayName];
        goto LABEL_49;
      }
    }

    v17 = +[NSBundle conversationKit];
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

  v25 = [v12 link];
  if (!v25)
  {
    goto LABEL_42;
  }

  v26 = v25;
  if ([v12 letMeInRequestState] == 1)
  {

    goto LABEL_40;
  }

  v35 = [v12 letMeInRequestState];

  if (v35 != 2)
  {
LABEL_42:
    v36 = [v10 isConnecting];
    v17 = +[NSBundle conversationKit];
    if (v36)
    {
      v24 = @"STATUS_CONNECTING";
    }

    else
    {
      v24 = @"STATUS_WAITING";
    }

LABEL_45:
    v23 = v17;
    goto LABEL_46;
  }

LABEL_40:
  if ([v12 letMeInRequestState] == 2)
  {
    v23 = +[NSBundle conversationKit];
    v17 = v23;
    v24 = @"FACETIME_VIDEO_WAITING_FOR_LET_IN";
    goto LABEL_46;
  }

  v13 = 0;
LABEL_49:

  return v13;
}

- (void)updateBottomControlsViewWithInCallState:(unsigned __int16)a3
{
  if (a3 != 7)
  {
    if (a3 != 3)
    {
      if (a3 != 1)
      {
        goto LABEL_39;
      }

      v4 = +[UIApplication sharedApplication];
      v5 = [v4 delegate];
      v6 = [(PHInCallRootViewController *)self callCenter];
      v7 = [v5 incomingVideoCallUsingCallContainer:v6];

      v8 = [(PHInCallRootViewController *)self bottomControlsView];
      v9 = [v8 currentState];

      if (v9 == 9 || +[PHSOSViewController isSOSDismissalAssertionActive])
      {
        v60 = 0;
        v10 = 0;
      }

      else
      {
        v10 = [v7 isMessagingAllowed];
        v60 = [v7 isReminderAllowed];
      }

      v32 = [(PHInCallRootViewController *)self callCenter];
      v22 = [v32 activeConversationForCall:v7];

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

      v34 = [(PHInCallRootViewController *)self bottomControlsView];
      v35 = +[UIApplication sharedApplication];
      v36 = [v35 delegate];
      v37 = [v36 currentInCallScene];
      if ([v37 isBeingShownAboveCoverSheet])
      {
        v38 = [(PHInCallRootViewController *)self callCenter];
        if ([v38 currentCallCount])
        {
          v39 = v33;
        }

        else
        {
          v39 = 6;
        }

        [v34 setCurrentState:v39];
      }

      else
      {
        [v34 setCurrentState:v33];
      }

      v40 = [(PHInCallRootViewController *)self bottomControlsView];
      [v40 setDeclineAndMessageIsAvailable:v10];

      v41 = [(PHInCallRootViewController *)self bottomControlsView];
      [v41 setDeclineAndRemindIsAvailable:v60];

      v42 = [(PHInCallRootViewController *)self bottomControlsView];
      [v42 setUsesLowerButtons:0];

      goto LABEL_37;
    }

    v11 = +[UIApplication sharedApplication];
    v12 = [v11 delegate];
    v13 = [(PHInCallRootViewController *)self callCenter];
    v7 = [v12 incomingVideoCallUsingCallContainer:v13];

    v14 = +[UIApplication sharedApplication];
    v15 = [v14 delegate];
    LOBYTE(v13) = [v15 isPresentingAmbient];

    if ((v13 & 1) == 0)
    {
      [(PHInCallRootViewController *)self requestInCallSceneTransitionToFullScreen];
    }

    v16 = [v7 isMessagingAllowed];
    v17 = [(PHInCallRootViewController *)self bottomControlsView];
    [v17 setDeclineAndMessageIsAvailable:v16];

    v18 = [v7 isReminderAllowed];
    v19 = [(PHInCallRootViewController *)self bottomControlsView];
    [v19 setDeclineAndRemindIsAvailable:v18];

    v20 = [(PHInCallRootViewController *)self bottomControlsView];
    [v20 setUserInteractionEnabled:1];

    v21 = [(PHInCallRootViewController *)self bottomControlsView];
    v22 = v21;
    v23 = 9;
LABEL_14:
    [v21 setCurrentState:v23 animated:1 animationCompletionBlock:0];
LABEL_37:

    goto LABEL_38;
  }

  v24 = +[UIApplication sharedApplication];
  v25 = [v24 delegate];
  v7 = [v25 mostRecentlyDisconnectedVideoCall];

  v26 = sub_100004F84();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v63 = [(PHInCallRootViewController *)self shouldShowVideoCallBlockAndReportScreen];
    v64 = 1024;
    v65 = [v7 disconnectedReason];
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[self shouldShowVideoCallBlockAndReportScreen]: %d, disconnectedCall.disconnectedReason: %d", buf, 0xEu);
  }

  if ([(PHInCallRootViewController *)self shouldShowVideoCallBlockAndReportScreen])
  {
    [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHCallEndedBlockAndReportInProgressAssertionReason"];
    [(PHInCallRootViewController *)self requestInCallSceneTransitionToFullScreen];
    v27 = [(PHInCallRootViewController *)self multiwayViewController];
    [v27 setIsInCallEndedBlockAndReportFlow:1];

    v28 = [(PHInCallRootViewController *)self bottomControlsView];
    [v28 setUserInteractionEnabled:1];

    v29 = [(PHInCallRootViewController *)self bottomControlsView];
    [v29 setUsesLowerButtons:1];

    v21 = [(PHInCallRootViewController *)self bottomControlsView];
    v22 = v21;
    v23 = 27;
    goto LABEL_14;
  }

  if ([v7 disconnectedReason] == 14 && (objc_msgSend(v7, "isOutgoing") & 1) != 0 || objc_msgSend(v7, "disconnectedReason") == 5 || objc_msgSend(v7, "disconnectedReason") == 15)
  {
    v30 = [(PHInCallRootViewController *)self callDisplayStyleManager];
    if ([v30 callDisplayStyle] == 4 || +[PHInCallUIUtilities isSpringBoardPasscodeLocked](PHInCallUIUtilities, "isSpringBoardPasscodeLocked"))
    {
    }

    else
    {
      v55 = [v7 handle];
      v56 = [v55 value];
      v57 = [v56 length];

      if (v57)
      {
        if ([v7 isMessagingAllowed])
        {
          v58 = 17;
        }

        else if ([v7 isCallbackAllowed])
        {
          v58 = 13;
        }

        else
        {
          v58 = 18;
        }

        v59 = [(PHInCallRootViewController *)self bottomControlsView];
        [v59 setCurrentState:v58 animated:1 animationCompletionBlock:0];

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
  [(PHInCallRootViewController *)self showFailureOrFallbackAlertIfNecessaryForCall:v7];
LABEL_38:

LABEL_39:
  v43 = [(PHInCallRootViewController *)self callCenter];
  v44 = [v43 incomingVideoCall];

  if (v44)
  {
    v45 = [(PHInCallRootViewController *)self bottomControlsView];
    v46 = [v45 controlForActionType:13];

    v47 = [(PHInCallRootViewController *)self bottomControlsView];
    v48 = [v47 controlForActionType:9];

    if (!v48)
    {
      v49 = [(PHInCallRootViewController *)self bottomControlsView];
      v48 = [v49 controlForActionType:12];
    }

    if (v46)
    {
      [PHDeclineWithReminderController configureButton:v46 forIncomingCall:v44 presenter:self];
    }

    if (v48)
    {
      v50 = [PHDeclineWithMessageController alloc];
      v51 = [(PHInCallRootViewController *)self multiwayViewController];
      v52 = [(PHInCallRootViewController *)self declineCallService];
      v53 = [(PHDeclineWithMessageController *)v50 initWithIncomingCall:v44 customMessagePresentingViewController:v51 declineCallService:v52];
      [(PHInCallRootViewController *)self setDeclineWithMessageController:v53];

      v54 = [(PHInCallRootViewController *)self declineWithMessageController];
      [v54 configureDeclineMessageForButton:v48];
    }
  }

  [(PHInCallRootViewController *)self refreshBottomBarButtonLayout];
}

- (void)sceneDidConnect
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 delegate];
  v5 = [v4 currentInCallScene];

  if (v5)
  {
    [(PHInCallRootViewController *)self updateUPlusOneVideoCallViews];
    v6 = [(PHInCallRootViewController *)self audioCallViewControllerIfLoaded];
    [v6 updateIncomingBottomBarControlState];

    [(PHInCallRootViewController *)self updateBackgroundStartPipAuthorizationState];

    [(PHInCallRootViewController *)self updateInCallWindowScenePrefersHiddenWhenDismissed];
  }
}

- (void)wantsHoldMusicChangedNotification:(id)a3
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "wantsHoldMusicChangedNotification", buf, 2u);
  }

  v5 = +[UIApplication sharedApplication];
  v6 = [v5 delegate];
  v7 = [(PHInCallRootViewController *)self callCenter];
  v8 = [v6 currentVideoCallUsingCallContainer:v7];
  v9 = [v8 wantsHoldMusic];

  if (v9)
  {
    v10 = sub_100004F84();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "decline with reminder and decline with message unavailable due to call wanting hold music.", v15, 2u);
    }

    v11 = [(PHInCallRootViewController *)self bottomControlsView];
    [v11 setDeclineAndMessageIsAvailable:0];

    v12 = [(PHInCallRootViewController *)self bottomControlsView];
    [v12 setDeclineAndRemindIsAvailable:0];

    [(PHInCallRootViewController *)self updateUPlusOneVideoCallViews];
    v13 = [NSTimer scheduledTimerWithTimeInterval:self target:"updateUPlusOneVideoCallViews" selector:0 userInfo:1 repeats:1.0];
    [(PHInCallRootViewController *)self setCallDurationTimerForParticipantsView:v13];
  }

  else
  {
    v14 = [(PHInCallRootViewController *)self callDurationTimerForParticipantsView];
    [v14 invalidate];

    [(PHInCallRootViewController *)self setCallDurationTimerForParticipantsView:0];
    [(PHInCallRootViewController *)self transitionFromBannerToDismissedIfNecessary];
  }
}

- (void)refreshBottomBarButtonLayout
{
  v3 = [(PHInCallRootViewController *)self bottomControlsView];
  [v3 setUsesLowerButtons:1];

  v4 = [(PHInCallRootViewController *)self bottomControlsView];
  [v4 setUsesLowerButtons:0];
}

- (id)labelForParticipantAtIndex:(unint64_t)a3 inParticipantsView:(id)a4 allowsDuration:(BOOL)a5
{
  v6 = [(PHInCallRootViewController *)self updateSecondaryStringForParticipantViewWithInCallState:[(PHInCallRootViewController *)self inCallState:a3] allowsDuration:a5];
  [(PHInCallRootViewController *)self setSecondaryStringForParticipantsView:v6];

  labelDescriptorFactory = self->_labelDescriptorFactory;
  v8 = [(PHInCallRootViewController *)self secondaryStringForParticipantsView];
  v9 = [(CNKCallParticipantLabelDescriptorFactory *)labelDescriptorFactory makeLabelWithString:v8];

  return v9;
}

- (id)localizedSenderIdentityForParticipantAtIndex:(unint64_t)a3 inParticipantsView:(id)a4
{
  if (PHDeviceSupportsDualSim())
  {
    v5 = +[UIApplication sharedApplication];
    v6 = [v5 delegate];
    v7 = [(PHInCallRootViewController *)self callCenter];
    v8 = [v6 currentVideoCallUsingCallContainer:v7];

    v9 = [v8 provider];
    v10 = [v9 prioritizedSenderIdentities];
    v11 = [v10 count];

    if (v11 < 2)
    {
      v13 = 0;
    }

    else
    {
      v12 = [v8 localSenderIdentity];
      v13 = [v12 localizedShortName];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)participantsView:(id)a3 didPerformActionType:(int64_t)a4
{
  v6 = a3;
  v7 = [(PHInCallRootViewController *)self callParticipantLabelsView];

  if (v7 == v6)
  {

    [(PHInCallRootViewController *)self performBottomBarActionType:a4];
  }

  else
  {
    v8 = sub_100004F84();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(PHInCallRootViewController *)self callParticipantLabelsView];
      v10 = 134218242;
      v11 = a4;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Cannot perform bottom bar action %ld from unknown call participants view object %@", &v10, 0x16u);
    }
  }
}

- (id)linkNameForCall:(id)a3
{
  v4 = a3;
  if ([v4 isConversation])
  {
    v5 = [(PHInCallRootViewController *)self callCenter];
    v6 = [v5 activeConversationForCall:v4];

    v7 = [v6 link];
    if (v7)
    {
      v8 = v7;
      if ([v7 isLocallyCreated] && (objc_msgSend(v6, "letMeInRequestState") == 1 || objc_msgSend(v6, "letMeInRequestState") == 2) && (objc_msgSend(v8, "linkName"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, !v10))
      {
        v13 = +[NSBundle mainBundle];
        v11 = [v13 localizedStringForKey:@"FACETIME_LINK" value:&stru_100361FD0 table:@"InCallService"];
      }

      else
      {
        v11 = [v6 displayName];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)bottomBarActionPerformed:(int64_t)a3 withCompletionState:(int64_t)a4 fromBar:(id)a5
{
  v7 = a5;
  v8 = [(PHInCallRootViewController *)self bottomControlsView];

  if (v8 == v7)
  {
    [(PHInCallRootViewController *)self performBottomBarActionType:a3];
  }

  else
  {
    v9 = sub_100004F84();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134218242;
      v11 = a3;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Cannot perform bottom bar action %ld from unknown bottom bar %@", &v10, 0x16u);
    }
  }
}

- (void)performBottomBarActionType:(int64_t)a3
{
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PHInCallRootViewController *)self bottomControlsView];
    v7 = [v6 nameForActionType:a3];
    *buf = 138412290;
    *v92 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BottomBarActionPerformed: %@", buf, 0xCu);
  }

  v8 = +[UIApplication sharedApplication];
  v9 = [v8 delegate];
  v10 = [(PHInCallRootViewController *)self callCenter];
  v11 = [v9 currentVideoCallUsingCallContainer:v10];

  v12 = +[UIApplication sharedApplication];
  v13 = [v12 delegate];
  v14 = [(PHInCallRootViewController *)self callCenter];
  v15 = [v13 incomingVideoCallUsingCallContainer:v14];

  v16 = [(PHInCallRootViewController *)self callCenter];
  v17 = [v16 activeConversationForCall:v15];

  switch(a3)
  {
    case 1:
    case 3:
      v85 = v11;
      v24 = [v17 resolvedAudioVideoMode];
      v25 = +[UIApplication sharedApplication];
      v26 = [v25 delegate];
      v27 = [v26 currentInCallScene];
      v28 = [v27 presentationMode];

      if (v28 == 1 && v24 == 2)
      {
        v29 = +[UIApplication sharedApplication];
        v30 = [v29 delegate];
        v31 = [v30 currentInCallScene];
        [v31 requestTransitionToPresentationMode:2 isUserInitiated:0 analyticsSource:@"SBSUIInCallTransitionAnalyticsSourceAnswerFaceTimeButtonPress"];

        v11 = v85;
      }

      else
      {
        v11 = v85;
        if (![v85 wantsHoldMusic])
        {
          v73 = [(PHInCallRootViewController *)self callCenter];
          v21 = [v73 activeConversationForCall:v85];

          if (![v85 isConversation] || objc_msgSend(v85, "status") != 4 || (objc_msgSend(v85, "isSendingVideo") & 1) != 0 || (objc_msgSend(v21, "isOneToOneModeEnabled") & 1) != 0)
          {
            v74 = sub_100004F84();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              v82 = v24 == 2;
              v84 = v21;
              v81 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v17 resolvedAudioVideoMode]);
              v80 = [v17 activeRemoteParticipants];
              v83 = +[UIApplication sharedApplication];
              v75 = [v83 delegate];
              v76 = [v75 currentInCallScene];
              v77 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v76 presentationMode]);
              *buf = 67110146;
              *v92 = v82;
              *&v92[4] = 2112;
              *&v92[6] = v81;
              *&v92[14] = 2112;
              *&v92[16] = v80;
              v93 = 2112;
              v94 = v77;
              v95 = 2112;
              v96 = v15;
              _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Answering FaceTime Video call. hasPartWithVideoEnabled: %d, resolvedAudioVideoMode: %@, participants: %@, banner: %@, incomingCall: %@", buf, 0x30u);

              v21 = v84;
              v11 = v85;
            }

            v41 = [(PHInCallRootViewController *)self callCenter];
            [v41 answerCall:v15];
            goto LABEL_72;
          }

          v79 = sub_100004F84();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Answering a ringing conversation while video is disabled, updating answer behavior to downgrade to audio so we join conversation with video disabled as well.", buf, 2u);
          }

          v41 = [[TUAnswerRequest alloc] initWithCall:v15];
          [v41 setBehavior:4];
          [v41 setDowngradeToAudio:1];
          v42 = [(PHInCallRootViewController *)self callCenter];
          [v42 answerWithRequest:v41];
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
      v47 = [(PHInCallRootViewController *)self callCenter];
      v88[0] = _NSConcreteStackBlock;
      v88[1] = 3221225472;
      v88[2] = sub_10010148C;
      v88[3] = &unk_100357110;
      v89 = v15;
      v90 = v47;
      v35 = v47;
      v48 = objc_retainBlock(v88);
      (v48[2])();

      goto LABEL_26;
    case 5:
      v35 = [(PHInCallRootViewController *)self callCenter];
      [v35 answerCall:v15];
      goto LABEL_26;
    case 7:
    case 8:
    case 15:
      v18 = +[UIApplication sharedApplication];
      v19 = [v18 delegate];
      v20 = [(PHInCallRootViewController *)self callCenter];
      v21 = [v19 incomingVideoCallUsingCallContainer:v20];

      if (v21)
      {
        v22 = sub_100004F84();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v92 = v21;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Ending FaceTime %@", buf, 0xCu);
        }

        v23 = [(PHInCallRootViewController *)self callCenter];
        [v23 disconnectCall:v21 withReason:2];
LABEL_61:

        goto LABEL_73;
      }

      v36 = [(PHInCallRootViewController *)self callCenter];
      v37 = [v36 activeVideoCall];

      if (!v37)
      {
        [(PHInCallRootViewController *)self updateUPlusOneVideoCallViews];
        goto LABEL_73;
      }

      v38 = sub_100004F84();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = [(PHInCallRootViewController *)self callCenter];
        v40 = [v39 activeVideoCall];
        *buf = 138412290;
        *v92 = v40;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Ending FaceTime %@", buf, 0xCu);
      }

      v41 = [(PHInCallRootViewController *)self callCenter];
      v42 = [(PHInCallRootViewController *)self callCenter];
      v43 = [v42 activeVideoCall];
      [v41 disconnectCall:v43];

LABEL_18:
      goto LABEL_72;
    case 14:
    case 19:
      v32 = +[UIApplication sharedApplication];
      v33 = [v32 delegate];
      [v33 setMostRecentlyDisconnectedVideoCall:0];

      v34 = @"PHMulitwayCallAssertionReason";
      goto LABEL_30;
    case 18:
      v44 = +[UIApplication sharedApplication];
      v45 = [v44 delegate];
      v21 = [v45 mostRecentlyDisconnectedVideoCall];

      if (v21)
      {
        v23 = [(PHInCallRootViewController *)self callCenter];
        v46 = [v21 dialRequestForRedial];
        [v23 launchAppForDialRequest:v46 completion:0];
      }

      else
      {
        v23 = sub_100004F84();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_100256A04();
        }
      }

      goto LABEL_61;
    case 24:
      v35 = [(PHInCallRootViewController *)self callCenter];
      [v35 disconnectCall:v15 withReason:2];
      goto LABEL_26;
    case 29:
      v53 = +[UIApplication sharedApplication];
      v54 = [v53 delegate];
      v21 = [v54 mostRecentlyDisconnectedVideoCall];

      v55 = [v21 handle];
      v41 = [v55 value];

      v56 = sub_100004F84();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *v92 = v21;
        *&v92[8] = 2112;
        *&v92[10] = v41;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Call %@; Destination ID %@", buf, 0x16u);
      }

      if ([v41 destinationIdIsPhoneNumber])
      {
        v57 = v11;
        v58 = CPPhoneNumberCopyCountryCodeForIncomingTextMessage();
        if (!v58)
        {
          v58 = TUActiveCountryCode();
        }

        v59 = TUNetworkCountryCode();
        v60 = TUNumberToDial();

        v41 = v60;
        v11 = v57;
      }

      v61 = objc_alloc_init(MFMessageComposeViewController);
      [v61 setBody:&stru_100361FD0];
      [v61 setMessageComposeDelegate:self];
      [v61 _setCanEditRecipients:0];
      if (v41 && [v41 length])
      {
        v62 = [NSArray arrayWithObject:v41];
        [v61 setRecipients:v62];
      }

      else
      {
        v62 = sub_100004F84();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          sub_10025698C();
        }
      }

      [(PHInCallRootViewController *)self presentViewController:v61 animated:1 completion:0];
      goto LABEL_71;
    case 35:
      v63 = v11;
      v64 = sub_100004F84();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "SpamReport: did tap on block caller", buf, 2u);
      }

      v21 = [(PHInCallRootViewController *)self callCenter];
      v41 = [v21 currentVideoCall];
      v65 = +[UIApplication sharedApplication];
      v66 = [v65 delegate];
      v61 = [v66 mostRecentlyDisconnectedVideoCall];

      if (v41)
      {
        v87[0] = _NSConcreteStackBlock;
        v87[1] = 3221225472;
        v87[2] = sub_10010153C;
        v87[3] = &unk_1003569B0;
        v87[4] = self;
        [(PHInCallRootViewController *)self presentBlockAndReportAlertToBlockCall:v61 forViewController:self completion:v87];
        v11 = v63;
        goto LABEL_71;
      }

      v11 = v63;
      if (v61)
      {
        v86[0] = _NSConcreteStackBlock;
        v86[1] = 3221225472;
        v86[2] = sub_1001015F0;
        v86[3] = &unk_1003569B0;
        v86[4] = self;
        [(PHInCallRootViewController *)self presentBlockAndReportAlertToBlockCall:v61 forViewController:self completion:v86];
        goto LABEL_71;
      }

      v72 = sub_100004F84();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
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

      v21 = [(PHInCallRootViewController *)self callCenter];
      v41 = [v21 currentVideoCall];
      v69 = +[UIApplication sharedApplication];
      v70 = [v69 delegate];
      v61 = [v70 mostRecentlyDisconnectedVideoCall];

      if (v41)
      {
        v71 = [v41 handle];
        [(PHInCallRootViewController *)self presentCreateContactViewControllerWithHandle:v71 forViewController:self];

        v72 = [(PHInCallRootViewController *)self multiwayViewController];
        [v72 setIsInCallEndedBlockAndReportFlow:0];
        v11 = v67;
      }

      else
      {
        v11 = v67;
        if (v61)
        {
          v78 = [v61 handle];
          [(PHInCallRootViewController *)self presentCreateContactViewControllerWithHandle:v78 forViewController:self];

          v72 = [(PHInCallRootViewController *)self multiwayViewController];
          [v72 setIsInCallEndedBlockAndReportFlow:0];
        }

        else
        {
          v72 = sub_100004F84();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
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
      v50 = [v49 delegate];
      [v50 setMostRecentlyDisconnectedVideoCall:0];

      v51 = sub_100004F84();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "SpamReport: did tap on close", buf, 2u);
      }

      v52 = [(PHInCallRootViewController *)self multiwayViewController];
      [v52 setIsInCallEndedBlockAndReportFlow:0];

      v34 = @"PHCallEndedBlockAndReportInProgressAssertionReason";
LABEL_30:
      v21 = [NSSet setWithObject:v34];
      [PHInCallRootViewController releaseDismissalAssertionReasons:v21];
      goto LABEL_73;
    default:
      if (a3 == 41)
      {
        v35 = +[CNKGameControllerManager shared];
        [v35 focus];
LABEL_26:
      }

      goto LABEL_74;
  }
}

- (void)gameControllerDidChangeContext
{
  v3 = [(PHInCallRootViewController *)self callParticipantLabelsView];
  [v3 gameControllerDidChangeContext];

  [(PHAudioCallViewControllerProtocol *)self->_audioCallViewController gameControllerDidChangeContext];
  multiwayViewController = self->_multiwayViewController;

  [(CNKMultiwayViewControllerProtocol *)multiwayViewController gameControllerDidChangeContext];
}

- (BOOL)gameControllerDidRequestActivation
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 delegate];
  v4 = [v3 bannerPresentationManager];

  if (v4)
  {
    v5 = +[UIApplication sharedApplication];
    v6 = [v5 delegate];
    v7 = [v6 bannerPresentationManager];
    [v7 gameControllerDidRequestActivation];
  }

  return v4 != 0;
}

- (BOOL)gameControllerDidRequestDismissal
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 delegate];
  v5 = [v4 currentInCallScene];
  [v5 requestTransitionToPresentationMode:0 shouldDismissCMASAlerts:0 analyticsSource:@"SBSUIInCallTransitionAnalyticsSourceGameControllerManager"];

  v6 = +[CNKGameControllerManager shared];
  v7 = v6;
  if (v6)
  {
    [v6 removeResponder:self];
  }

  return 1;
}

- (BOOL)gameControllerDidRequestFocus:(BOOL)a3
{
  v3 = a3;
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 delegate];
  v6 = [v5 bannerPresentationManager];
  [v6 gameControllerDidRequestFocus:v3];

  return 1;
}

- (void)handleDeviceLockEventOverUPlusOneVideoViewsWithSourceType:(int64_t)a3
{
  v5 = [(PHInCallRootViewController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(PHInCallRootViewController *)self dismissViewControllerAnimated:1 completion:0];
  }

  v7 = [(PHInCallRootViewController *)self callDisplayStyleManager];
  if ([v7 callDisplayStyle] == 1)
  {
    v8 = [(PHInCallRootViewController *)self callCenter];
    v9 = [v8 incomingVideoCall];
    v10 = [v9 isConversation];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(PHInCallRootViewController *)self callCenter];
  if (([v11 hasCurrentVideoCalls] & 1) != 0 || v10)
  {
  }

  else
  {
    v12 = [(PHInCallRootViewController *)self multiwayViewController];
    v13 = [v12 isInVideoMessageFlow];

    if ((v13 & 1) == 0)
    {
      [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHMulitwayCallAssertionReason"];
    }
  }

  v14 = [(PHInCallRootViewController *)self callCenter];
  v15 = +[UIApplication sharedApplication];
  v16 = [v15 delegate];
  v17 = [v16 incomingVideoCallUsingCallContainer:v14];

  v18 = +[UIApplication sharedApplication];
  v19 = [v18 delegate];
  v20 = [v19 currentVideoCallUsingCallContainer:v14];

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100101C20;
  v34[3] = &unk_100357318;
  v21 = v14;
  v35 = v21;
  v22 = v17;
  v36 = v22;
  v23 = v20;
  v37 = v23;
  v24 = objc_retainBlock(v34);
  if (a3 == 2)
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
  v25 = [v33 delegate];
  v26 = [v25 currentInCallScene];
  v27 = [v26 delegate];
  v28 = [v27 callAnalyticsLogger];
  v29 = [v22 uniqueProxyIdentifierUUID];
  [v28 ringerMutedForCallUUID:v29];

  [v22 suppressRingtone];
  if ([v22 status] == 4)
  {
    v30 = +[UIApplication sharedApplication];
    v31 = [v30 delegate];
    v32 = [v31 bannerPresentationManager];
    [v32 invalidatePersistentSystemApertureAlertWithReason:@"Hardware lock button pressed"];
  }

LABEL_20:
}

- (void)sendUserRating:(int)a3 dontShowPromptAgain:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v13 = v5;
    v14 = 1024;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "UserFeedbackScore : User has rating: %d and BOOL: %d", buf, 0xEu);
  }

  if (v4)
  {
    v8 = +[ICSPreferences sharedPreferences];
    [v8 setHasUserScoreFeedbackViewHidden:1];
  }

  if (v5 != -1)
  {
    v9 = [(PHInCallRootViewController *)self callCenter];
    v10 = [(PHInCallRootViewController *)self disconnectCallUUID];
    [v9 sendUserScoreToRTCReporting:v10 withScore:v5];
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
  v4 = [v3 delegate];
  [v4 setDidDeepLinkToCallDetailsView:0];

  [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHAVLessConversationDetailsViewAssertionReason"];
  v5 = +[UIApplication sharedApplication];
  v6 = [v5 delegate];
  [v6 setDidDeepLinkToPTTCallDetailsView:0];

  [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHPTTCallDetailsViewAssertionReason"];
  v7 = [(PHInCallRootViewController *)self inCallWindowScene];
  [v7 requestTransitionToPresentationMode:0 shouldDismissCMASAlerts:0];

  [(PHInCallRootViewController *)self updateInCallWindowScenePrefersHiddenWhenDismissed];
}

- (void)presentDisconnectionAlert:(id)a3
{
  v6 = a3;
  v4 = +[CNKFeatures sharedInstance];
  v5 = [v4 isEnhancedEmergencyEnabled];

  if ((v5 & 1) == 0)
  {
    [(PHInCallRootViewController *)self presentViewController:v6 animated:1 completion:0];
  }
}

- (void)handleCallBufferNotification:(id)a3
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PHInCallRootViewController,handleCallBufferNotification", v5, 2u);
  }

  [(PHInCallRootViewController *)self updateCallControllerForCurrentState];
}

- (void)acceptCallButtonTapped:(id)a3
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
  v3 = [v2 isInternalInstall];

  if (v3)
  {
    v4 = PHPreferencesGetValueInDomain();
    if ([v4 BOOLValue])
    {
      v5 = +[TUCallCenter sharedInstance];
      v6 = [v5 incomingCall];

      v7 = +[TUCallCenter sharedInstance];
      v8 = [v7 currentCallCount];

      v9 = +[TUCallCenter sharedInstance];
      v10 = [v9 incomingVideoCall];

      v11 = +[TUCallCenter sharedInstance];
      v12 = [v11 currentVideoCallCount];

      if (v8 == 1 && [v6 service] == 2)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12 == 1 && [v10 service] == 3;
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
        v20 = v8;
        v21 = 2112;
        v22 = v6;
        v23 = 2048;
        v24 = v12;
        v25 = 2112;
        v26 = v10;
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
    v5 = [v4 incomingCall];

    if (v5)
    {
      v6 = +[TUCallCenter sharedInstance];
      [v6 answerCall:v5];
    }

    v7 = +[TUCallCenter sharedInstance];
    v8 = [v7 incomingVideoCall];

    if (v8)
    {
      v9 = +[TUCallCenter sharedInstance];
      [v9 answerCall:v8];
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
  v2 = self;
  sub_1002395F8();
}

- (id)makeConversationHUDDetailsNavigationControllerWithBannerPresentationManager:(id)a3 delegate:(id)a4 shouldSetControlsManagerInCallDetailsDelegate:(BOOL)a5
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_1002404A4(v6);

  swift_unknownObjectRelease();

  return v8;
}

- (id)makeMultiwayConversationViewControllerWithCall:(id)a3 bannerPresentationManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1002405B0(v6, v7);

  return v9;
}

- (void)dissmissConfirmLeavePTTChannelAlertIfNeededWithBannerPresentationManager:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100240694(v4);
}

- (void)ambientSetIdleTimerDisabled:(BOOL)a3
{
  v3 = self;
  sub_100240764();
}

- (void)startObservingAcceptCallButtonTappedWithNotificationCenter:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002408F8(v4);
}

- (void)handleAcceptCallButtonTapped:(id)a3
{
  v5 = sub_10014EA98(&qword_1003B05B0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v12 - v7;
  if (a3)
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
  v11 = self;
  sub_1002409D4();

  sub_100008360(v8, &qword_1003B05B0);
}

- (void)_obtainThenReleaseTransitionAssertion
{
  v2 = self;
  sub_100240CA4();
}

- (BOOL)isContactBlockedWithCall:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100241200();

  return v6;
}

- (void)blockWithHandle:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100241278(v4);
}

- (void)reportWithCall:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10024159C();
}

- (id)findMostRecentSilencedCallWithHandleValue:(id)a3 normalizedHandleValue:(id)a4 ignoredIdentifier:(id)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (a4)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v11;
  }

  else
  {
    v10 = 0;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = self;
  v16 = sub_10024172C(v7, v9, v10, a4, v12, v14);

  return v16;
}

- (BOOL)isFirstTimeInCallHistoryWithHandleValue:(id)a3 normalizedHandleValue:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (a4)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = self;
  v12 = sub_100242008(v6, v8, v9, a4);

  return v12;
}

- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  PHInCallRootViewController.contactViewController(_:didCompleteWith:)(v8, v10);
}

@end