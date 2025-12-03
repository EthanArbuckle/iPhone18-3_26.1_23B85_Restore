@interface AFUISiriViewController
- ($5902F3589ABA92D8028CA1BE72F4BD0A)_keyboardInfoFromNotification:(SEL)notification;
- (AFUISiriEdgelightViewProvider)edgeLightViewProvider;
- (AFUISiriViewController)initWithConnection:(id)connection configuration:(id)configuration requestSource:(int64_t)source delegate:(id)delegate;
- (AFUISiriViewController)initWithConnection:(id)connection configuration:(id)configuration requestSource:(int64_t)source delegate:(id)delegate displayConfiguration:(id)displayConfiguration edgeLightViewProvider:(id)provider instrumentationHandler:(id)handler;
- (AFUISiriViewControllerDataSource)dataSource;
- (AFUISiriViewControllerDelegate)delegate;
- (BOOL)_canIgnoreHoldToTalkThreshold;
- (BOOL)_holdToTalkThresholdHasElapsed;
- (BOOL)_isDeviceScreenOn;
- (BOOL)_isInitialSpeechRequest;
- (BOOL)_shouldShowVoiceActivationMaskViewWithSiriView:(id)view requestSource:(int64_t)source screenOff:(BOOL)off connectedToCarPlay:(BOOL)play;
- (BOOL)compactViewShouldShowDebugButton:(id)button;
- (BOOL)headphonesAuthenticated;
- (BOOL)isAmbientPresented:(id)presented;
- (BOOL)isListening;
- (BOOL)isPreventingActivationGesture;
- (BOOL)isProcessingAcousticIdRequest;
- (BOOL)recentButtonPressActivityDetected:(id)detected;
- (BOOL)recentTouchScreenActivityDetected:(id)detected;
- (BOOL)shouldNonLocalDelegateHandlePunchouts;
- (BOOL)siriView:(id)view attemptUnlockWithPassword:(id)password;
- (CGRect)_statusBarFrame;
- (CGRect)hostedPresentationFrame;
- (double)_delayForHoldToTalkStopRequestsWithSource:(int64_t)source;
- (double)_homeGestureFractionCompleteFromCurrentYPosition:(double)position yPositionAtCompletion:(double)completion;
- (double)_manualEndpointingThreshold;
- (double)_screenHeight;
- (float)audioRecordingPowerLevelForSiriView:(id)view;
- (id)_carPlaySiriView;
- (id)_compactSiriView;
- (id)_fullSiriView;
- (id)_initForTesting;
- (id)_orbViewControllingView;
- (id)_routePickerController;
- (id)_siriView;
- (id)_textForPasscodeUnlockClient:(unint64_t)client;
- (id)_uiPresentationIdentifier;
- (id)activeAccountForSiriView:(id)view;
- (id)assistantVersionForSiriView:(id)view;
- (id)bulletinsForSiriSession:(id)session;
- (id)contextAppInfosForSiriSession:(id)session;
- (id)currentCarPlaySupportedOEMAppIDListForSiriSession:(id)session;
- (id)siriRemoteViewController:(id)controller bulletinWithIdentifier:(id)identifier;
- (id)starkAppBundleIdentifierContextForSiriSession:(id)session;
- (id)underlyingConnection;
- (int64_t)carPlayEnhancedVoiceTriggerModeForSiriSession:(id)session;
- (int64_t)getDeviceOrientation:(id)orientation;
- (int64_t)userAccountCountForSiriView:(id)view;
- (int64_t)viewMode;
- (unint64_t)lockStateForSiriRemoteViewController:(id)controller;
- (unint64_t)lockStateForSiriSession:(id)session;
- (unint64_t)supportedInterfaceOrientations;
- (void)_activationTriggerDidRelease:(id)release;
- (void)_applicationDidBecomeActive:(id)active;
- (void)_applicationWillEnterForeground:(id)foreground;
- (void)_applicationWillResignActive:(id)active;
- (void)_didDetectAudioRoutePickerTap;
- (void)_dismissWithReason:(int64_t)reason;
- (void)_donateUIDismissalToBiome:(int64_t)biome;
- (void)_enterHoldToTalkMode;
- (void)_exitHoldToTalkMode;
- (void)_handleHelpAction;
- (void)_handleMicButtonLongPressBeganFromSource:(int64_t)source;
- (void)_handleMicButtonLongPressEndedFromSource:(int64_t)source;
- (void)_handleMicButtonTapFromSource:(int64_t)source;
- (void)_handlePasscodeUnlockAndCancelRequest:(BOOL)request dismissOnFailure:(BOOL)failure passcodeUnlockClient:(unint64_t)client withCompletion:(id)completion;
- (void)_handleReportBugAction;
- (void)_handleReportBugLongPressAction;
- (void)_handleSiriDidActivateFromSource:(int64_t)source;
- (void)_hideStatusBarAnimated:(BOOL)animated completion:(id)completion;
- (void)_holdToTalkTriggerDidReleaseFromSource:(int64_t)source;
- (void)_informRemoteViewControllerOfOrbViewTapToCancelRequest;
- (void)_informRemoteViewControllerOfParentIfNecessary;
- (void)_keyboardDidHideNotification:(id)notification;
- (void)_keyboardDidShowNotification:(id)notification;
- (void)_performVisualIntelligenceLaunchAnimationWithTransitioningLayer:(id)layer;
- (void)_performVisualIntelligenceTransition;
- (void)_performVisualIntelligenceTransitionWithLayer:(id)layer;
- (void)_presentDeferredFlamesViewIfNecessary;
- (void)_presentRemoteViewController;
- (void)_recordUIAppearance;
- (void)_recordUIDismissal;
- (void)_removeStatusBar;
- (void)_resumeRemoteViewControllerDispatchQueue;
- (void)_sendBeginAppearanceTransitionIfReadyAnimated:(BOOL)animated;
- (void)_sendEndAppearanceTransitionIfReady;
- (void)_setAudioRoutePickerBluetoothOn:(BOOL)on;
- (void)_setCurrentRequestOptions:(id)options;
- (void)_setFullScreenDimmingLayerVisible:(BOOL)visible animated:(BOOL)animated;
- (void)_setInFluidDismissal:(BOOL)dismissal;
- (void)_setPunchingOut:(BOOL)out;
- (void)_setShowAudioRoutePicker:(BOOL)picker;
- (void)_setStatusViewHidden:(BOOL)hidden;
- (void)_setTypeToSiriViewHidden:(BOOL)hidden;
- (void)_setVoiceTriggerEnabled:(BOOL)enabled;
- (void)_setupCarPlayShockwaveViewController;
- (void)_showStatusBarAnimated:(BOOL)animated completion:(id)completion;
- (void)_showVoiceActivationMaskView:(BOOL)view;
- (void)_startVisualIntelligenceAutolockTimer;
- (void)_statusBarFrameDidChange:(id)change;
- (void)_stopRequestWithOptions:(id)options afterDelay:(double)delay;
- (void)_stopVisualIntelligenceAutolockTimer;
- (void)_suspendRemoteViewControllerDispatchQueue;
- (void)_transitionToAutomaticEndpointMode;
- (void)_transitionToManualEndpointMode;
- (void)_triggerPeopleSuggesterLogging;
- (void)_updateAudioRoutePickerForNonStark;
- (void)_updateRemoteViewControllerStateForAppearance;
- (void)_updateSiriAvailability:(unint64_t)availability;
- (void)animateOrbViewDismissalIfNecessaryWithCompletion:(id)completion;
- (void)animateOrbViewToOffIfNecessaryWithCompletion:(id)completion;
- (void)animatedAppearanceWithFactory:(id)factory completion:(id)completion;
- (void)animatedDisappearanceWithFactory:(id)factory completion:(id)completion;
- (void)cancelSpeechRecordingIfNecessary;
- (void)commandCache:(id)cache didSuccessfullyHandleCommandsInDelayedActionCommand:(id)command;
- (void)compactView:(id)view blurVisibilityDidChange:(BOOL)change;
- (void)compactView:(id)view bottomContentInsetDidChange:(double)change;
- (void)deactivateScene;
- (void)dealloc;
- (void)didDetectGestureEvent:(int64_t)event inRegion:(int64_t)region;
- (void)didMoveToParentViewController:(id)controller;
- (void)didReceiveButtonUpWithRequestOptions:(id)options;
- (void)dismissSiriRemoteViewController:(id)controller userInfo:(id)info withReason:(int64_t)reason;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)emitInstrumentationEvent:(id)event;
- (void)emitInstrumentationEvent:(id)event atTime:(unint64_t)time;
- (void)emitUIStateTransitionForSiriDismissalWithReason:(int64_t)reason;
- (void)endSession;
- (void)enterUITrackingMode;
- (void)exitUITrackingMode;
- (void)handleAppUnlockForAppId:(id)id withCompletion:(id)completion;
- (void)handlePasscodeUnlockAndCancelRequest:(BOOL)request withClient:(unint64_t)client withCompletion:(id)completion;
- (void)handlePunchoutCommand:(id)command completion:(id)completion;
- (void)handleViewFullyRevealed;
- (void)hasContentAtPoint:(CGPoint)point completion:(id)completion;
- (void)hideVoiceActivationMaskViewIfNecessary;
- (void)invalidateSystemApertureAssertion;
- (void)keyboardView:(id)view didReceiveText:(id)text;
- (void)loadView;
- (void)noteApplicationTransition;
- (void)noteFluidDismissalCompletedWithSuccess:(BOOL)success;
- (void)openURL:(id)l bundleId:(id)id inPlace:(BOOL)place completion:(id)completion;
- (void)openURL:(id)l bundleId:(id)id inPlace:(BOOL)place launchOptions:(id)options completion:(id)completion;
- (void)preheat;
- (void)preloadPluginBundles;
- (void)preloadPresentationBundleWithIdentifier:(id)identifier;
- (void)presentRemoteViewControllerIfNecessary;
- (void)presentationStateUpdatedFromPresentationState:(int64_t)state toPresentationState:(int64_t)presentationState;
- (void)proximityStatusChanged:(BOOL)changed;
- (void)reactivateScene;
- (void)requestBlurVisible:(BOOL)visible reason:(int64_t)reason fence:(id)fence;
- (void)requestStatusBarVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion;
- (void)requestSystemApertureCollapse;
- (void)resetContextTypes:(int64_t)types;
- (void)resetGestureBehaviors;
- (void)routePickerController:(id)controller hasRoutesToPick:(BOOL)pick;
- (void)routePickerControllerWillDismiss:(id)dismiss;
- (void)routePickerControllerWillShow:(id)show;
- (void)setAnnouncementRequestsPermittedWhilePresentationActive:(BOOL)active;
- (void)setCarDNDActive:(BOOL)active;
- (void)setCarOwnsMainAudio:(BOOL)audio;
- (void)setDeviceInStarkMode:(BOOL)mode;
- (void)setDockFrame:(CGRect)frame;
- (void)setEdgeLightViewProvider:(id)provider;
- (void)setEyesFree:(BOOL)free;
- (void)setFluidDismissalState:(id)state;
- (void)setHostedPresentationFrame:(CGRect)frame;
- (void)setLockState:(unint64_t)state;
- (void)setReceivedIncomingPhoneCall:(BOOL)call;
- (void)setShouldDismissForSwipesOutsideContent:(BOOL)content;
- (void)setShouldDismissForTapOutsideContent:(BOOL)content;
- (void)setShouldDismissForTapsOutsideContent:(BOOL)content;
- (void)setShouldPassTouchesThroughToSpringBoard:(BOOL)board;
- (void)setSupportsCarPlayVehicleData:(BOOL)data;
- (void)setSystemApertureFrame:(CGRect)frame;
- (void)setWaitingForTelephonyToStart:(BOOL)start;
- (void)shortTapActionWithRequestOptions:(id)options;
- (void)showPasscodeUnlockScreenForRequest:(id)request passcodeUnlockClient:(unint64_t)client unlockCompletion:(id)completion;
- (void)showPresentationWithIdentifier:(id)identifier properties:(id)properties lockState:(unint64_t)state;
- (void)siriDidActivateFromSource:(int64_t)source;
- (void)siriDidDeactivate;
- (void)siriRemoteViewController:(id)controller didChangePresentationPeekMode:(unint64_t)mode;
- (void)siriRemoteViewController:(id)controller didCreateSiriScene:(id)scene;
- (void)siriRemoteViewController:(id)controller didDismissViewControllerWithStatusBarStyle:(int64_t)style;
- (void)siriRemoteViewController:(id)controller didFinishTest:(id)test;
- (void)siriRemoteViewController:(id)controller didPresentViewControllerWithStatusBarStyle:(int64_t)style;
- (void)siriRemoteViewController:(id)controller didRequestCurrentTextInputWithReplyHandler:(id)handler;
- (void)siriRemoteViewController:(id)controller didUpdateAudioCategoriesDisablingVolumeHUD:(id)d;
- (void)siriRemoteViewController:(id)controller failTest:(id)test withReason:(id)reason;
- (void)siriRemoteViewController:(id)controller handlePasscodeUnlockWithClient:(unint64_t)client withCompletion:(id)completion;
- (void)siriRemoteViewController:(id)controller inputTypeDidChange:(int64_t)change;
- (void)siriRemoteViewController:(id)controller invalidatedForReason:(unint64_t)reason explanation:(id)explanation;
- (void)siriRemoteViewController:(id)controller presentedIntentWithBundleId:(id)id;
- (void)siriRemoteViewController:(id)controller reduceOrbOpacity:(BOOL)opacity;
- (void)siriRemoteViewController:(id)controller requestsDismissalWithReason:(int64_t)reason withCompletion:(id)completion;
- (void)siriRemoteViewController:(id)controller requestsKeyboardWithCompletion:(id)completion;
- (void)siriRemoteViewController:(id)controller requestsPresentation:(id)presentation;
- (void)siriRemoteViewController:(id)controller sceneDidActivateWithIdentifier:(id)identifier;
- (void)siriRemoteViewController:(id)controller setBugReportingAvailable:(BOOL)available;
- (void)siriRemoteViewController:(id)controller setHelpButtonEmphasized:(BOOL)emphasized;
- (void)siriRemoteViewController:(id)controller setRequestHandlingStatus:(unint64_t)status;
- (void)siriRemoteViewController:(id)controller setStatusViewDisabled:(BOOL)disabled;
- (void)siriRemoteViewController:(id)controller setStatusViewUserInteractionEnabled:(BOOL)enabled;
- (void)siriRemoteViewController:(id)controller siriIdleAndQuietStatusDidChange:(BOOL)change;
- (void)siriRemoteViewController:(id)controller willChangeKeyboardVisibility:(BOOL)visibility;
- (void)siriRemoteViewController:(id)controller willDismissViewControllerWithStatusBarStyle:(int64_t)style;
- (void)siriRemoteViewController:(id)controller willPresentViewControllerWithStatusBarStyle:(int64_t)style;
- (void)siriRemoteViewController:(id)controller willStartTest:(id)test;
- (void)siriRemoteViewControllerCancelHIDEventDefferal:(id)defferal;
- (void)siriRemoteViewControllerDidDeactivateScene:(id)scene;
- (void)siriRemoteViewControllerDidEndEditing:(id)editing;
- (void)siriRemoteViewControllerDidFinishDismissing:(id)dismissing;
- (void)siriRemoteViewControllerDidPresentConversationFromBreadcrumb:(id)breadcrumb;
- (void)siriRemoteViewControllerDidPresentKeyboard:(id)keyboard;
- (void)siriRemoteViewControllerDidPresentUserInterface:(id)interface;
- (void)siriRemoteViewControllerDidResetTextInput:(id)input;
- (void)siriRemoteViewControllerPulseHelpButton:(id)button;
- (void)siriRemoteViewControllerRequestsHIDEventDefferal:(id)defferal;
- (void)siriRemoteViewControllerWillBeginEditing:(id)editing;
- (void)siriResultsDidDismissInTamale;
- (void)siriSession:(id)session didChangeToState:(int64_t)state event:(int64_t)event machAbsoluteTransitionTime:(double)time;
- (void)siriSession:(id)session failedToLaunchAppWithBundleIdentifier:(id)identifier;
- (void)siriSession:(id)session initialBringupProcessedWithTurnIdentifier:(id)identifier;
- (void)siriSession:(id)session speechRecordingDidBeginOnAVRecordRoute:(id)route;
- (void)siriSession:(id)session willProcessAppLaunchWithBundleIdentifier:(id)identifier;
- (void)siriSessionAudioOutputDidChangePowerLevel:(float)level;
- (void)siriSessionAudioRecordingDidChangePowerLevel:(float)level;
- (void)siriSessionAudioRecordingDidChangePowerLevel:(float)level peakLevel:(float)peakLevel;
- (void)siriSessionDidEnd:(id)end;
- (void)siriSessionDidFinishRequestWithError:(id)error;
- (void)siriSessionDidReactivateFromFlexibleFollowups;
- (void)siriSessionDidReceiveSetUpdateMaskCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceiveStartScreenRecordingCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceiveStopScreenRecordingCommand:(id)command completion:(id)completion;
- (void)siriSessionDidReceiveTakeScreenshotCommand:(id)command completion:(id)completion;
- (void)siriSessionDidResetContext:(id)context;
- (void)siriSessionDidUpdateSessionInfo:(id)info;
- (void)siriSessionImmersiveExperienceRequested;
- (void)siriSessionShouldEndExtendAudioSessionForImminentPhoneCall;
- (void)siriSessionShouldExtendAudioSessionForImminentPhoneCall;
- (void)siriSessionWillEnd:(id)end;
- (void)siriWasPresented:(int64_t)presented;
- (void)siriWillActivateFromSource:(int64_t)source;
- (void)siriWillBePresented:(int64_t)presented;
- (void)siriWillBeginTearDownForDismissalReason:(int64_t)reason withOriginalDismissalOptions:(id)options;
- (void)startGuidedAccessForRemoteViewController:(id)controller;
- (void)startRequestWithActivationTrigger:(id)trigger completion:(id)completion;
- (void)startRequestWithOptions:(id)options completion:(id)completion;
- (void)stopRequestWithOptions:(id)options;
- (void)tamaleViewDidLoad;
- (void)tamaleViewRequestsAuthenticationWithCompletion:(id)completion;
- (void)tapPanDismissalPolicyManager:(id)manager dismissalPolicyDidChange:(BOOL)change;
- (void)telephonyRequestCompleted;
- (void)toggleHomeAffordanceHidden:(BOOL)hidden;
- (void)toggleSiriHomeAffordanceGestureControl:(BOOL)control;
- (void)tvRemoteSentButtonDownWhileListening;
- (void)updateContexts:(int64_t)contexts;
- (void)updateEdgeLightWindowLevel:(int64_t)level;
- (void)updatePresentationVisualState:(unint64_t)state;
- (void)updateRequestOptions:(id)options;
- (void)updateToPresentationWithIdentifier:(id)identifier presentationProperties:(id)properties animated:(BOOL)animated completion:(id)completion;
- (void)userRelevantEventDidOccurInSiriRemoteViewController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)visionIntelligenceDropletLaunchAnimationDidFinish:(BOOL)finish retargeted:(BOOL)retargeted;
@end

@implementation AFUISiriViewController

- (void)_suspendRemoteViewControllerDispatchQueue
{
  if (!self->_remoteViewControllerDispatchQueueSuspended)
  {
    dispatch_suspend(self->_remoteViewControllerDispatchQueue);
    self->_remoteViewControllerDispatchQueueSuspended = 1;
  }
}

- (void)loadView
{
  v22 = *MEMORY[0x277D85DE8];
  p_hostedPresentationFrame = &self->_hostedPresentationFrame;
  if (CGRectEqualToRect(self->_hostedPresentationFrame, *MEMORY[0x277CBF398]))
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    x = v5;
    y = v7;
    width = v9;
    height = v11;
  }

  else
  {
    x = p_hostedPresentationFrame->origin.x;
    y = p_hostedPresentationFrame->origin.y;
    width = p_hostedPresentationFrame->size.width;
    height = p_hostedPresentationFrame->size.height;
  }

  _configuration = [(AFUISiriViewController *)self _configuration];
  isSystemHostedPresentation = [_configuration isSystemHostedPresentation];

  if (isSystemHostedPresentation)
  {
    _configuration2 = [(AFUISiriViewController *)self _configuration];
    WeakRetained = objc_loadWeakRetained(&self->_edgeLightViewProvider);
    height = [AFUISiriViewBuilder buildSiriViewForFrame:_configuration2 configuration:self dataSource:self delegate:self siriContentDelegate:WeakRetained edgeLightViewProvider:self->_viewHostingInstrumentationHandler instrumentationHandler:x, y, width, height];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(AFUISiriRemoteContainerView *)height setFlamesViewDeferred:1];
    }

    if ([(AFUISiriViewController *)self _shouldShowVoiceActivationMaskViewWithSiriView:height requestSource:self->_currentRequestSource screenOff:[(AFUISiriViewController *)self _isDeviceScreenOn]^ 1 connectedToCarPlay:[(AFUISiriViewController *)self isDeviceInStarkMode]])
    {
      v18 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136315138;
        v21 = "[AFUISiriViewController loadView]";
        _os_log_impl(&dword_241432000, v18, OS_LOG_TYPE_DEFAULT, "%s #myriadUI Requesting show - voiceActivationMaskView", &v20, 0xCu);
      }

      [(AFUISiriViewController *)self _showVoiceActivationMaskView:1];
      [(AFUISiriRemoteContainerView *)height setVoiceActivationMaskViewVisible:1];
    }

    else
    {
      [(AFUISiriViewController *)self _showVoiceActivationMaskView:0];
    }

    if (self->_currentRequestSource == 21)
    {
      [(AFUISiriRemoteContainerView *)height setSiriSessionState:2];
    }

    if ([(AFUISiriViewController *)self isDeviceInStarkMode]&& [(AFUISiriViewController *)self directActionEvent])
    {
      [(AFUISiriRemoteContainerView *)height setSiriSessionState:2];
    }
  }

  else
  {
    height = [[AFUISiriRemoteContainerView alloc] initWithFrame:x, y, width, height];
  }

  [(AFUISiriViewController *)self setView:height];
  v19 = !self->_shouldShowVoiceActivationMaskView && ![(AFUISiriViewController *)self isDeviceInStarkMode]&& [(AFUISiriViewController *)self viewMode]!= 7;
  if ([(AFUISiriViewController *)self isEyesFree])
  {
    v19 = v19 & [(AFUISiriRemoteContainerView *)height shouldRequestStatusBar];
  }

  [(AFUISiriViewController *)self requestStatusBarVisible:v19];
}

- (void)viewWillLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = AFUISiriViewController;
  [(AFUISiriViewController *)&v6 viewWillLayoutSubviews];
  _statusBar = [(AFUISiriViewController *)self _statusBar];
  [(AFUISiriViewController *)self _statusBarFrame];
  [_statusBar setFrame:?];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if (![currentDevice userInterfaceIdiom])
  {
    saeAvailable = [MEMORY[0x277CEF4D0] saeAvailable];

    if (!saeAvailable)
    {
      return;
    }

    currentDevice = [(AFUISiriViewController *)self _compactSiriView];
    [currentDevice setCurrentInterfaceOrientation:{-[AFUISiriViewController interfaceOrientation](self, "interfaceOrientation")}];
  }
}

- (CGRect)_statusBarFrame
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
  v5 = v4;
  v7 = v6;

  statusBar = [*MEMORY[0x277D76620] statusBar];
  [statusBar defaultHeight];
  v10 = v9;

  view = [(AFUISiriViewController *)self view];
  window = [view window];
  interfaceOrientation = [window interfaceOrientation];

  v14 = [(AFUISiriViewController *)self supportedInterfaceOrientations]& (1 << interfaceOrientation);
  if ((interfaceOrientation - 3) >= 2 || v14 == 0)
  {
    v16 = v5;
  }

  else
  {
    v16 = v7;
  }

  v17 = 0.0;
  v18 = 0.0;
  v19 = v10;
  result.size.height = v19;
  result.size.width = v16;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (id)_carPlaySiriView
{
  _siriView = [(AFUISiriViewController *)self _siriView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    _siriView2 = [(AFUISiriViewController *)self _siriView];
  }

  else
  {
    _siriView2 = 0;
  }

  return _siriView2;
}

- (id)_siriView
{
  view = [(AFUISiriViewController *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_4;
  }

  view2 = [(AFUISiriViewController *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_4:
LABEL_5:
    view3 = [(AFUISiriViewController *)self view];
    goto LABEL_6;
  }

  view4 = [(AFUISiriViewController *)self view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_5;
  }

  view3 = 0;
LABEL_6:

  return view3;
}

- (id)_fullSiriView
{
  _siriView = [(AFUISiriViewController *)self _siriView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    _siriView2 = [(AFUISiriViewController *)self _siriView];
  }

  else
  {
    _siriView2 = 0;
  }

  return _siriView2;
}

- (AFUISiriViewControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (AFUISiriViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_informRemoteViewControllerOfParentIfNecessary
{
  view = [(AFUISiriViewController *)self view];
  view2 = [(AFUISiriRemoteSceneViewController *)self->_remoteViewController view];
  if ([view containsView:view2])
  {
    parentViewController = [(AFUISiriViewController *)self parentViewController];

    if (parentViewController)
    {
      remoteViewController = self->_remoteViewController;

      [(AFUISiriRemoteSceneViewController *)remoteViewController didMoveToParentViewController:self];
    }
  }

  else
  {
  }
}

- (BOOL)_isDeviceScreenOn
{
  _systemState = [(AFUISiriViewController *)self _systemState];
  deviceScreenIsOn = [_systemState deviceScreenIsOn];

  return deviceScreenIsOn;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = AFUISiriViewController;
  [(AFUISiriViewController *)&v3 viewDidLoad];
  if (self->_deviceIsInStarkMode && [MEMORY[0x277CEF4D0] saeAvailable] && !UIAccessibilityIsReduceMotionEnabled())
  {
    [(AFUISiriViewController *)self _setupCarPlayShockwaveViewController];
  }
}

- (void)_setupCarPlayShockwaveViewController
{
  dataSource = [(AFUISiriViewController *)self dataSource];
  [dataSource safeAreaInsetsForSceneCreationInSiriViewController:self];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [[_TtC11AssistantUI38AFUISiriCarPlayShockwaveViewController alloc] initWithSafeAreaInsets:v5, v7, v9, v11];
  carPlayShockwaveViewController = self->_carPlayShockwaveViewController;
  self->_carPlayShockwaveViewController = v12;

  [(AFUISiriViewController *)self addChildViewController:self->_carPlayShockwaveViewController];
  view = [(AFUISiriViewController *)self view];
  view2 = [(AFUISiriCarPlayShockwaveViewController *)self->_carPlayShockwaveViewController view];
  [view bounds];
  [view2 setFrame:?];
  [view2 setAutoresizingMask:18];
  [view addSubview:view2];
  [(AFUISiriCarPlayShockwaveViewController *)self->_carPlayShockwaveViewController didMoveToParentViewController:self];
}

- (id)underlyingConnection
{
  _session = [(AFUISiriViewController *)self _session];
  underlyingConnection = [_session underlyingConnection];

  return underlyingConnection;
}

- (void)preloadPluginBundles
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__AFUISiriViewController_preloadPluginBundles__block_invoke;
  v3[3] = &unk_278CD55A0;
  objc_copyWeak(&v4, &location);
  [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (unint64_t)supportedInterfaceOrientations
{
  v13 = *MEMORY[0x277D85DE8];
  _compactSiriView = [(AFUISiriViewController *)self _compactSiriView];
  if (_compactSiriView)
  {

LABEL_3:
    eyesFree = self->_eyesFree;
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (eyesFree)
      {
        v6 = @"YES";
      }

      v9 = 136315394;
      v10 = "[AFUISiriViewController supportedInterfaceOrientations]";
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_241432000, v5, OS_LOG_TYPE_DEFAULT, "%s 🚗📱 Forcing portrait mode for Siri EyesFree: %@", &v9, 0x16u);
    }

    if (eyesFree)
    {
      return 2;
    }

    else
    {
      return 30;
    }
  }

  if (SiriUIDeviceIsZoomed() & 1) == 0 && (SiriUIIsAllOrientationsSupported())
  {
    goto LABEL_3;
  }

  if (!self->_remoteViewControllerIsPresenting)
  {
    return 2;
  }

  remoteViewController = self->_remoteViewController;

  return [(AFUISiriRemoteSceneViewController *)remoteViewController supportedInterfaceOrientations];
}

- (id)_compactSiriView
{
  _siriView = [(AFUISiriViewController *)self _siriView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    _siriView2 = [(AFUISiriViewController *)self _siriView];
  }

  else
  {
    _siriView2 = 0;
  }

  return _siriView2;
}

- (void)_recordUIAppearance
{
  uiAppearanceRecordQueue = self->_uiAppearanceRecordQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___updateContextSiriActiveStatus_block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v16 = 1;
  dispatch_async(uiAppearanceRecordQueue, block);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  uiAppearanceUUIDString = self->_uiAppearanceUUIDString;
  self->_uiAppearanceUUIDString = uUIDString;

  if (self->_uiAppearanceUUIDString)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:self->_uiAppearanceUUIDString forKeyedSubscript:@"UUID"];
    v8 = MEMORY[0x277CCABB0];
    _siriView = [(AFUISiriViewController *)self _siriView];
    v10 = [v8 numberWithInteger:{objc_msgSend(_siriView, "mode")}];
    [dictionary setObject:v10 forKeyedSubscript:@"VIEWMODE"];

    if (AFIsInternalInstall())
    {
      _session = [(AFUISiriViewController *)self _session];
      siriSessionInfo = [_session siriSessionInfo];
      identifier = [siriSessionInfo identifier];
      [dictionary setObject:identifier forKeyedSubscript:@"SESSIONID"];
    }
  }

  else
  {
    dictionary = 0;
  }

  mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
  [mEMORY[0x277CEF158] logEventWithType:1406 context:dictionary];

  _AFUIRecordSiriBeginEndCoreDuetEvent(self->_uiAppearanceRecordQueue, @"com.apple.siri.ui.begin", dictionary);
  _AFUIRecordSiriBeginEndBiomeEvent(self->_uiAppearanceRecordQueue, @"com.apple.siri.ui.begin", dictionary);
}

- (void)viewSafeAreaInsetsDidChange
{
  v7.receiver = self;
  v7.super_class = AFUISiriViewController;
  [(AFUISiriViewController *)&v7 viewSafeAreaInsetsDidChange];
  _fullSiriView = [(AFUISiriViewController *)self _fullSiriView];

  if (_fullSiriView)
  {
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __53__AFUISiriViewController_viewSafeAreaInsetsDidChange__block_invoke;
    v4[3] = &unk_278CD55A0;
    objc_copyWeak(&v5, &location);
    [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)hideVoiceActivationMaskViewIfNecessary
{
  if (self->_shouldShowVoiceActivationMaskView)
  {
    self->_shouldShowVoiceActivationMaskView = 0;
    objc_initWeak(&location, self);
    objc_copyWeak(&v2, &location);
    SiriUIInvokeOnMainQueue();
    objc_destroyWeak(&v2);
    objc_destroyWeak(&location);
  }
}

- (void)_presentRemoteViewController
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v38 = "[AFUISiriViewController _presentRemoteViewController]";
    _os_log_impl(&dword_241432000, v4, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [AFUISiriViewController _presentRemoteViewController];
  }

  if (self->_remoteViewController)
  {
    hostingConnectionState = self->_hostingConnectionState;
    if (hostingConnectionState == 2)
    {
      v6 = *v3;
      if (!os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 136315138;
      v38 = "[AFUISiriViewController _presentRemoteViewController]";
      v7 = "%s skipping the startHosting request, remoteViewController already loaded";
      goto LABEL_26;
    }

    if (hostingConnectionState == 1)
    {
      v6 = *v3;
      if (!os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 136315138;
      v38 = "[AFUISiriViewController _presentRemoteViewController]";
      v7 = "%s skipping the startHosting request as there is already one pending";
LABEL_26:
      _os_log_impl(&dword_241432000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 0xCu);
      return;
    }
  }

  v8 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v38 = "[AFUISiriViewController _presentRemoteViewController]";
    _os_log_impl(&dword_241432000, v8, OS_LOG_TYPE_DEFAULT, "%s transitioning _remoteViewController connectionState to pending", buf, 0xCu);
  }

  self->_hostingConnectionState = 1;
  if (!self->_remoteViewController)
  {
    v9 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v38 = "[AFUISiriViewController _presentRemoteViewController]";
      _os_log_impl(&dword_241432000, v9, OS_LOG_TYPE_DEFAULT, "%s Creating remote scene viewController", buf, 0xCu);
    }

    v10 = objc_alloc_init(AFUISiriRemoteSceneViewController);
    remoteViewController = self->_remoteViewController;
    self->_remoteViewController = v10;

    [(AFUISiriRemoteSceneViewController *)self->_remoteViewController setDataSource:self];
    [(AFUISiriRemoteSceneViewController *)self->_remoteViewController setDelegate:self];
  }

  currentDisplayConfiguration = self->_currentDisplayConfiguration;
  if (currentDisplayConfiguration)
  {
    displayConfiguration = currentDisplayConfiguration;
  }

  else
  {
    view = [(AFUISiriViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    screen = [windowScene screen];
    displayConfiguration = [screen displayConfiguration];

    if (!displayConfiguration)
    {
      if (!-[SASRequestOptions isForStark](self->_currentRequestOptions, "isForStark") || ([MEMORY[0x277D759A0] _carScreen], v18 = objc_claimAutoreleasedReturnValue(), v19 = v18 == 0, v18, v19))
      {
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
        {
          [AFUISiriViewController _presentRemoteViewController];
        }

        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        displayConfiguration = [mainScreen displayConfiguration];
      }

      else
      {
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
        {
          [AFUISiriViewController _presentRemoteViewController];
        }

        _carScreen = [MEMORY[0x277D759A0] _carScreen];
        displayConfiguration = [_carScreen displayConfiguration];
      }
    }
  }

  v22 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v38 = "[AFUISiriViewController _presentRemoteViewController]";
    v39 = 2112;
    v40 = displayConfiguration;
    _os_log_impl(&dword_241432000, v22, OS_LOG_TYPE_DEFAULT, "%s Using displayConfiguration: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v23 = [AFUISceneConfiguration defaultSiriSceneConfigurationWithInitialBounds:displayConfiguration onDisplay:self->_hostedPresentationFrame.origin.x, self->_hostedPresentationFrame.origin.y, self->_hostedPresentationFrame.size.width, self->_hostedPresentationFrame.size.height];
  traitCollection = [(AFUISiriViewController *)self traitCollection];
  [v23 setUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

  dataSource = [(AFUISiriViewController *)self dataSource];
  [dataSource safeAreaInsetsForSceneCreationInSiriViewController:self];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  [v23 setInitialSafeAreaInsets:{v27, v29, v31, v33}];
  v34 = self->_remoteViewController;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __54__AFUISiriViewController__presentRemoteViewController__block_invoke;
  v35[3] = &unk_278CD62A0;
  objc_copyWeak(&v36, buf);
  [(AFUISiriRemoteSceneViewController *)v34 startHostingSceneForConfiguration:v23 withCompletionBlock:v35];
  objc_destroyWeak(&v36);

  objc_destroyWeak(buf);
}

- (void)presentRemoteViewControllerIfNecessary
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v2, &location);
  SiriUIInvokeOnMainQueue();
  objc_destroyWeak(&v2);
  objc_destroyWeak(&location);
}

void __64__AFUISiriViewController_presentRemoteViewControllerIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentRemoteViewController];
}

- (void)_sendEndAppearanceTransitionIfReady
{
  _remoteViewController = [(AFUISiriViewController *)self _remoteViewController];
  if (_remoteViewController && (v6 = _remoteViewController, [(AFUISiriViewController *)self _hasCalledBeginAppearanceTransition]))
  {
    _hasCalledEndAppearanceTransition = [(AFUISiriViewController *)self _hasCalledEndAppearanceTransition];

    if (!_hasCalledEndAppearanceTransition)
    {
      _remoteViewController2 = [(AFUISiriViewController *)self _remoteViewController];
      [_remoteViewController2 endAppearanceTransition];

      [(AFUISiriViewController *)self _setHasCalledEndAppearanceTransition:1];
    }
  }

  else
  {

    MEMORY[0x2821F96F8]();
  }
}

- (void)_updateAudioRoutePickerForNonStark
{
  if (!self->_deviceIsInStarkMode)
  {
    _routePickerController = [(AFUISiriViewController *)self _routePickerController];
    [_routePickerController refreshRoutes];
    -[AFUISiriViewController _setShowAudioRoutePicker:](self, "_setShowAudioRoutePicker:", [_routePickerController hasRoutesToPick]);
    -[AFUISiriViewController _setAudioRoutePickerBluetoothOn:](self, "_setAudioRoutePickerBluetoothOn:", [_routePickerController bluetoothIsPicked]);
  }
}

- (void)_resumeRemoteViewControllerDispatchQueue
{
  if (self->_remoteViewControllerDispatchQueueSuspended)
  {
    dispatch_resume(self->_remoteViewControllerDispatchQueue);
    self->_remoteViewControllerDispatchQueueSuspended = 0;
  }
}

void __54__AFUISiriViewController__presentRemoteViewController__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = MEMORY[0x277CEF098];
    if (v4)
    {
      [WeakRetained _resumeRemoteViewControllerDispatchQueue];
      v8 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        __54__AFUISiriViewController__presentRemoteViewController__block_invoke_cold_1(v8, v6, v4);
      }

      v9 = [v6 delegate];
      [v9 siriViewController:v6 didEncounterUnexpectedError:v4];

      if ([v6 isBeingPresented])
      {
        [v6 dismissViewControllerAnimated:0 completion:0];
      }
    }

    else
    {
      if (WeakRetained[171])
      {
        v10 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
        {
          v19 = 136315138;
          v20 = "[AFUISiriViewController _presentRemoteViewController]_block_invoke";
          _os_log_impl(&dword_241432000, v10, OS_LOG_TYPE_DEFAULT, "%s Remote Scene Controller did succeed in hosting scene", &v19, 0xCu);
        }

        [v6 addChildViewController:*(v6 + 1368)];
        [v6 _sendBeginAppearanceTransitionIfReadyAnimated:0];
        v11 = *(v6 + 1368);
        [v6 _statusBarFrame];
        [v11 setStatusBarFrame:?];
        v12 = *(v6 + 1368);
        v13 = [v6 _fullSiriView];
        [v13 statusViewHeight];
        [v12 setStatusViewHeight:?];

        v14 = *(v6 + 1360);
        v15 = [*(v6 + 1368) sessionDelegate];
        [v14 setDelegate:v15];

        [*(v6 + 1368) setSession:*(v6 + 1360)];
        v16 = [v6 view];
        v17 = [*(v6 + 1368) view];
        [v16 setRemoteContentView:v17];

        [v6 _informRemoteViewControllerOfParentIfNecessary];
      }

      [v6 _resumeRemoteViewControllerDispatchQueue];
      [v6 _sendEndAppearanceTransitionIfReady];
      [v6 _endDelayingPresentation];
    }

    *(v6 + 1136) = 2;
    v18 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315138;
      v20 = "[AFUISiriViewController _presentRemoteViewController]_block_invoke";
      _os_log_impl(&dword_241432000, v18, OS_LOG_TYPE_DEFAULT, "%s transitioning _remoteViewController connectionState to loaded", &v19, 0xCu);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __54__AFUISiriViewController__presentRemoteViewController__block_invoke_cold_2();
  }
}

void __46__AFUISiriViewController_preloadPluginBundles__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _remoteViewController];
  [v1 preloadPluginBundles];
}

- (void)_updateRemoteViewControllerStateForAppearance
{
  configuration = [(AFUISceneHostingViewController *)self->_remoteViewController configuration];
  v4 = [configuration copy];

  if (([v4 foreground] & 1) == 0)
  {
    [v4 setForeground:1];
    [(AFUISceneHostingViewController *)self->_remoteViewController updateSceneWithConfiguration:v4];
  }
}

- (BOOL)headphonesAuthenticated
{
  delegate = [(AFUISiriViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(AFUISiriViewController *)self delegate];
    headphonesAuthenticated = [delegate2 headphonesAuthenticated];
  }

  else
  {
    headphonesAuthenticated = 0;
  }

  return headphonesAuthenticated;
}

- (AFUISiriViewController)initWithConnection:(id)connection configuration:(id)configuration requestSource:(int64_t)source delegate:(id)delegate
{
  delegateCopy = delegate;
  configurationCopy = configuration;
  connectionCopy = connection;
  v13 = objc_opt_new();
  v14 = [(AFUISiriViewController *)self initWithConnection:connectionCopy configuration:configurationCopy requestSource:source delegate:delegateCopy displayConfiguration:0 edgeLightViewProvider:0 instrumentationHandler:v13];

  return v14;
}

- (AFUISiriViewController)initWithConnection:(id)connection configuration:(id)configuration requestSource:(int64_t)source delegate:(id)delegate displayConfiguration:(id)displayConfiguration edgeLightViewProvider:(id)provider instrumentationHandler:(id)handler
{
  v62 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  configurationCopy = configuration;
  delegateCopy = delegate;
  displayConfigurationCopy = displayConfiguration;
  providerCopy = provider;
  handlerCopy = handler;
  v19 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[AFUISiriViewController initWithConnection:configuration:requestSource:delegate:displayConfiguration:edgeLightViewProvider:instrumentationHandler:]";
    _os_log_impl(&dword_241432000, v19, OS_LOG_TYPE_DEFAULT, "%s ", &buf, 0xCu);
  }

  v53.receiver = self;
  v53.super_class = AFUISiriViewController;
  displayConfigurationCopy = [(AFUISiriViewController *)&v53 initWithNibName:0 bundle:0, displayConfigurationCopy];
  v21 = displayConfigurationCopy;
  if (displayConfigurationCopy)
  {
    objc_storeStrong(&displayConfigurationCopy->_configuration, configuration);
    v21->_currentRequestSource = source;
    objc_storeWeak(&v21->_delegate, delegateCopy);
    objc_storeStrong(&v21->_currentDisplayConfiguration, displayConfiguration);
    objc_storeWeak(&v21->_edgeLightViewProvider, providerCopy);
    v21->_statusBarStyle = [MEMORY[0x277CEF4D0] saeAvailable] ^ 1;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v21 selector:sel__statusBarFrameDidChange_ name:*MEMORY[0x277D76650] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v21 selector:sel__applicationWillResignActive_ name:*MEMORY[0x277D76768] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v21 selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x277D76758] object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v21 selector:sel__applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

    if ([(SASRequestOptions *)v21->_currentRequestOptions isTypeToSiriRequest])
    {
      defaultCenter5 = [MEMORY[0x277CCA9A0] defaultCenter];
      v54 = 0;
      v55 = &v54;
      v56 = 0x2020000000;
      v27 = getSSScreenshotsDisplayModeWillChangeToFullscreenNotificationNameSymbolLoc_ptr;
      v57 = getSSScreenshotsDisplayModeWillChangeToFullscreenNotificationNameSymbolLoc_ptr;
      if (!getSSScreenshotsDisplayModeWillChangeToFullscreenNotificationNameSymbolLoc_ptr)
      {
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v59 = __getSSScreenshotsDisplayModeWillChangeToFullscreenNotificationNameSymbolLoc_block_invoke;
        v60 = &unk_278CD54F0;
        v61 = &v54;
        __getSSScreenshotsDisplayModeWillChangeToFullscreenNotificationNameSymbolLoc_block_invoke(&buf);
        v27 = v55[3];
      }

      _Block_object_dispose(&v54, 8);
      if (!v27)
      {
        [AFUISiriViewController initWithConnection:configuration:requestSource:delegate:displayConfiguration:edgeLightViewProvider:instrumentationHandler:];
      }

      [defaultCenter5 addObserver:v21 selector:sel__willEnterFullScreenScreenshotMode_ name:*v27 object:0];
    }

    v28 = dispatch_queue_create("Siri Remote View Controller Message Queue", 0);
    remoteViewControllerDispatchQueue = v21->_remoteViewControllerDispatchQueue;
    v21->_remoteViewControllerDispatchQueue = v28;

    dispatch_set_target_queue(v21->_remoteViewControllerDispatchQueue, MEMORY[0x277D85CD0]);
    [(AFUISiriViewController *)v21 _suspendRemoteViewControllerDispatchQueue];
    [(AFUISiriViewController *)v21 _beginDelayingPresentation:&__block_literal_global_10 cancellationHandler:3.0];
    v30 = [[AFUISiriSession alloc] initWithConnection:connectionCopy delegateQueue:v21->_remoteViewControllerDispatchQueue requestSource:source];
    session = v21->_session;
    v21->_session = v30;

    [(AFUISiriSession *)v21->_session setLocalDataSource:v21];
    [(AFUISiriSession *)v21->_session setLocalDelegate:v21];
    v32 = [objc_alloc(MEMORY[0x277D61AD0]) initWithDelegate:v21];
    delayedActionCommandCache = v21->_delayedActionCommandCache;
    v21->_delayedActionCommandCache = v32;

    v34 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v35 = dispatch_queue_create(0, v34);
    uiAppearanceRecordQueue = v21->_uiAppearanceRecordQueue;
    v21->_uiAppearanceRecordQueue = v35;

    v21->_turnsOnScreenOnAppearance = 1;
    v37 = *(MEMORY[0x277CBF398] + 16);
    v21->_hostedPresentationFrame.origin = *MEMORY[0x277CBF398];
    v21->_hostedPresentationFrame.size = v37;
    v21->_statusBarDeferralState = 0;
    v21->_requestCancellationReason = 0;
    v21->_requestedBlurVisible = 0;
    v38 = [[AFUINetworkAvailabilityStateMachine alloc] initWithDelegate:v21];
    networkAvailabilityStateMachine = v21->_networkAvailabilityStateMachine;
    v21->_networkAvailabilityStateMachine = v38;

    if ([configurationCopy siriViewMode] == 7)
    {
      if (SiriUIDeviceIsPad() && ![MEMORY[0x277CEF4D0] saeAvailable])
      {
        v40 = 0;
      }

      else if ([MEMORY[0x277CEF4D0] saeAvailable])
      {
        v40 = 3;
      }

      else
      {
        v40 = 1;
      }

      v41 = [[AFUISiriTapPanDismissalPolicyManager alloc] initWithPolicy:v40 delegate:v21];
      tapPanDismissalPolicyManager = v21->_tapPanDismissalPolicyManager;
      v21->_tapPanDismissalPolicyManager = v41;
    }

    v21->_hasDonatedDismissalToBiome = 0;
    v21->_immersiveExperienceOn = 0;
    objc_storeStrong(&v21->_viewHostingInstrumentationHandler, handler);
    mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedAnalytics];
    defaultMessageStream = [mEMORY[0x277D552C0] defaultMessageStream];

    v45 = objc_alloc(MEMORY[0x277D55150]);
    v46 = [objc_alloc(MEMORY[0x277D55158]) initWithAnalyticsStream:defaultMessageStream];
    v47 = [v45 initWithSender:v46];
    activationInstrumentation = v21->_activationInstrumentation;
    v21->_activationInstrumentation = v47;

    v21->_dismissalReason = 0;
  }

  return v21;
}

uint64_t __148__AFUISiriViewController_initWithConnection_configuration_requestSource_delegate_displayConfiguration_edgeLightViewProvider_instrumentationHandler___block_invoke(uint64_t a1, int a2)
{
  if (a2 && os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __148__AFUISiriViewController_initWithConnection_configuration_requestSource_delegate_displayConfiguration_edgeLightViewProvider_instrumentationHandler___block_invoke_cold_1();
  }

  return 0;
}

- (id)_initForTesting
{
  v3 = objc_alloc_init(MEMORY[0x277CEF218]);
  v4 = [objc_alloc(MEMORY[0x277D61998]) initWithFlamesViewFidelity:2 isSystemHostedPresentation:1 allowResizingBetweenModes:1 siriViewMode:7 showsSensitiveUI:0];
  v5 = [(AFUISiriViewController *)self initWithConnection:v3 configuration:v4 requestSource:8];

  return v5;
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[AFUISiriViewController dealloc]";
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_241432000, v3, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  delayedActionCommandCache = self->_delayedActionCommandCache;
  self->_delayedActionCommandCache = 0;

  self->_siriSessionWantsToEnd = 1;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  if ([(SASRequestOptions *)self->_currentRequestOptions isTypeToSiriRequest])
  {
    defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter2 removeObserver:self];
  }

  [(AFUISiriViewController *)self _resumeRemoteViewControllerDispatchQueue];
  v7.receiver = self;
  v7.super_class = AFUISiriViewController;
  [(AFUISiriViewController *)&v7 dealloc];
}

- (int64_t)viewMode
{
  _configuration = [(AFUISiriViewController *)self _configuration];

  if (!_configuration)
  {
    return 0;
  }

  _configuration2 = [(AFUISiriViewController *)self _configuration];
  siriViewMode = [_configuration2 siriViewMode];

  return siriViewMode;
}

- (void)setEyesFree:(BOOL)free
{
  if (self->_eyesFree != free)
  {
    freeCopy = free;
    self->_eyesFree = free;
    _session = [(AFUISiriViewController *)self _session];
    [_session setEyesFree:freeCopy];
  }
}

- (void)setEdgeLightViewProvider:(id)provider
{
  providerCopy = provider;
  _compactSiriView = [(AFUISiriViewController *)self _compactSiriView];
  [_compactSiriView setEdgeLightViewProvider:providerCopy];
}

- (void)setReceivedIncomingPhoneCall:(BOOL)call
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (self->_receivedIncomingPhoneCall != call)
  {
    self->_receivedIncomingPhoneCall = call;
    v4 = SiriUIDismissalReasonStringFromReason();
    v7 = *MEMORY[0x277D619F0];
    v8[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    dismissalUserInfo = self->_dismissalUserInfo;
    self->_dismissalUserInfo = v5;
  }
}

- (void)_setPunchingOut:(BOOL)out
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (self->_punchingOut != out)
  {
    self->_punchingOut = out;
    v4 = SiriUIDismissalReasonStringFromReason();
    v7 = *MEMORY[0x277D619F0];
    v8[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    dismissalUserInfo = self->_dismissalUserInfo;
    self->_dismissalUserInfo = v5;
  }
}

- (void)requestStatusBarVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  visibleCopy = visible;
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (_os_feature_enabled_impl() || !-[AFUISiriViewController statusBarEnabled](self, "statusBarEnabled") || (!-[AFUISiriViewController isDeviceInStarkMode](self, "isDeviceInStarkMode") ? (-[AFUISiriViewController viewMode](self, "viewMode") != 4 ? (v9 = -[AFUISiriViewController viewMode](self, "viewMode") == 8) : (v9 = 1)) : (v9 = 0), (v10 = -[AFUISiriViewController viewMode](self, "viewMode") == 7, visibleCopy) && (v10 || v9) && (-[AFUISiriViewController _compactSiriView](self, "_compactSiriView"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 shouldRequestStatusBar], v11, (v12 & 1) == 0)))
  {
LABEL_16:
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }

    goto LABEL_18;
  }

  if (visibleCopy)
  {
    if (self->_shouldShowVoiceActivationMaskView)
    {
      v13 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315138;
        v15 = "[AFUISiriViewController requestStatusBarVisible:animated:completion:]";
        _os_log_impl(&dword_241432000, v13, OS_LOG_TYPE_DEFAULT, "%s #myriadUI Not showing the status bar as voiceActivationMaskView is visible", &v14, 0xCu);
      }

      self->_statusBarDeferralState = 1;
      goto LABEL_16;
    }

    if (self->_showsStatusBar != visibleCopy)
    {
      self->_showsStatusBar = visibleCopy;
      [(AFUISiriViewController *)self _showStatusBarAnimated:animatedCopy completion:completionCopy];
    }
  }

  else if (self->_showsStatusBar)
  {
    self->_showsStatusBar = 0;
    [(AFUISiriViewController *)self _hideStatusBarAnimated:animatedCopy completion:completionCopy];
  }

LABEL_18:
}

- (void)setHostedPresentationFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_hostedPresentationFrame = &self->_hostedPresentationFrame;
  if (!CGRectEqualToRect(self->_hostedPresentationFrame, frame) || (([(AFUISiriViewController *)self preferredContentSize], width == v10) ? (v11 = height == v9) : (v11 = 0), v11))
  {
    p_hostedPresentationFrame->origin.x = x;
    p_hostedPresentationFrame->origin.y = y;
    p_hostedPresentationFrame->size.width = width;
    p_hostedPresentationFrame->size.height = height;

    [(AFUISiriViewController *)self setPreferredContentSize:width, height];
  }
}

- (BOOL)isProcessingAcousticIdRequest
{
  _session = [(AFUISiriViewController *)self _session];
  isProcessingAcousticIdRequest = [_session isProcessingAcousticIdRequest];

  return isProcessingAcousticIdRequest;
}

- (void)enterUITrackingMode
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [AFUISiriViewController enterUITrackingMode];
  }

  _fullSiriView = [(AFUISiriViewController *)self _fullSiriView];
  [_fullSiriView setInUITrackingMode:1];
}

- (void)exitUITrackingMode
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [AFUISiriViewController exitUITrackingMode];
  }

  _fullSiriView = [(AFUISiriViewController *)self _fullSiriView];
  [_fullSiriView setInUITrackingMode:0];
}

- (void)proximityStatusChanged:(BOOL)changed
{
  changedCopy = changed;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [AFUISiriViewController proximityStatusChanged:];
  }

  _fullSiriView = [(AFUISiriViewController *)self _fullSiriView];
  [_fullSiriView setInUITrackingMode:changedCopy];

  _fullSiriView2 = [(AFUISiriViewController *)self _fullSiriView];
  [_fullSiriView2 setDisabled:changedCopy];
}

- (void)cancelSpeechRecordingIfNecessary
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v2, &location);
  SiriUIInvokeOnMainQueue();
  objc_destroyWeak(&v2);
  objc_destroyWeak(&location);
}

void __58__AFUISiriViewController_cancelSpeechRecordingIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained _siriView];
    v3 = [v2 siriSessionState];

    WeakRetained = v5;
    if (v3 == 1)
    {
      v4 = [v5 _session];
      [v4 cancelRequest];

      WeakRetained = v5;
    }
  }
}

- (void)animatedAppearanceWithFactory:(id)factory completion:(id)completion
{
  factoryCopy = factory;
  completionCopy = completion;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [AFUISiriViewController animatedAppearanceWithFactory:completion:];
  }

  if ([(AFUISiriViewController *)self currentSource]!= 19 && [(AFUISiriViewController *)self currentSource]!= 20)
  {
    _fullSiriView = [(AFUISiriViewController *)self _fullSiriView];
    foregroundView = [_fullSiriView foregroundView];
    [foregroundView setAlpha:0.0];

    _fullSiriView2 = [(AFUISiriViewController *)self _fullSiriView];
    [_fullSiriView2 setBackdropVisible:0];
  }

  _carPlaySiriView = [(AFUISiriViewController *)self _carPlaySiriView];
  [_carPlaySiriView resetOrbViewToSiriSessionState];

  objc_initWeak(&location, self);
  v12 = MEMORY[0x277CF0D38];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__AFUISiriViewController_animatedAppearanceWithFactory_completion___block_invoke;
  v16[3] = &unk_278CD5858;
  objc_copyWeak(&v17, &location);
  v16[4] = self;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__AFUISiriViewController_animatedAppearanceWithFactory_completion___block_invoke_2;
  v14[3] = &unk_278CD5938;
  v13 = completionCopy;
  v15 = v13;
  [v12 animateWithFactory:factoryCopy actions:v16 completion:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __67__AFUISiriViewController_animatedAppearanceWithFactory_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = [WeakRetained _compactSiriView];
    [v3 setContentViewsAlpha:1.0];

    v4 = [v7 _fullSiriView];
    v5 = [*(a1 + 32) _siriView];
    [v5 setContentViewsAlpha:1.0];

    v6 = [v4 foregroundView];
    [v6 setAlpha:1.0];

    [v4 setBackdropVisible:1];
    WeakRetained = v7;
  }
}

uint64_t __67__AFUISiriViewController_animatedAppearanceWithFactory_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)animatedDisappearanceWithFactory:(id)factory completion:(id)completion
{
  factoryCopy = factory;
  completionCopy = completion;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [AFUISiriViewController animatedDisappearanceWithFactory:completion:];
  }

  _fullSiriView = [(AFUISiriViewController *)self _fullSiriView];
  foregroundView = [_fullSiriView foregroundView];
  [foregroundView setAlpha:1.0];

  [(AFUISiriViewController *)self _setFullScreenDimmingLayerVisible:0 animated:1];
  _compactSiriView = [(AFUISiriViewController *)self _compactSiriView];
  [_compactSiriView requestBlurVisible:0 reason:0 fence:0];

  _orbViewControllingView = [(AFUISiriViewController *)self _orbViewControllingView];
  [_orbViewControllingView animateOrbViewToOffWithCompletion:0];

  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __70__AFUISiriViewController_animatedDisappearanceWithFactory_completion___block_invoke;
  v19[3] = &unk_278CD5858;
  objc_copyWeak(&v21, &location);
  v12 = factoryCopy;
  v20 = v12;
  [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v19];
  v13 = MEMORY[0x277CF0D38];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70__AFUISiriViewController_animatedDisappearanceWithFactory_completion___block_invoke_2;
  v17[3] = &unk_278CD57B8;
  v17[4] = self;
  objc_copyWeak(&v18, &location);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__AFUISiriViewController_animatedDisappearanceWithFactory_completion___block_invoke_3;
  v15[3] = &unk_278CD5938;
  v14 = completionCopy;
  v16 = v14;
  [v13 animateWithFactory:v12 actions:v17 completion:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __70__AFUISiriViewController_animatedDisappearanceWithFactory_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained _remoteViewController];
    [*(a1 + 32) duration];
    [v3 animatedDisappearanceDidBeginWithDuration:v4[157] reason:?];

    WeakRetained = v4;
  }
}

void __70__AFUISiriViewController_animatedDisappearanceWithFactory_completion___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1272) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 1272);
  v17 = *(MEMORY[0x277CBF2C0] + 16);
  *&v19.a = *MEMORY[0x277CBF2C0];
  v18 = *&v19.a;
  *&v19.c = v17;
  *&v19.tx = *(MEMORY[0x277CBF2C0] + 32);
  v16 = *&v19.tx;
  [v2 setTransform:&v19];
  v3 = [*(a1 + 32) view];
  v4 = [v3 superview];
  *&v19.a = v18;
  *&v19.c = v17;
  *&v19.tx = v16;
  [v4 setTransform:&v19];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained _siriView];
  [v6 setContentViewsAlpha:0.0];

  v7 = objc_loadWeakRetained((a1 + 40));
  v8 = [v7 _fullSiriView];
  [v8 setBackdropVisible:0];

  if ([MEMORY[0x277CEF4D0] saeAvailable])
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 1256);
    if ((v10 == 24 || v10 == 6) && [*(v9 + 1400) inputType] != 1)
    {
      v11 = objc_loadWeakRetained((a1 + 40));
      v12 = [v11 _compactSiriView];
      v13 = [v12 remoteContentView];
      CGAffineTransformMakeScale(&v19, 0.9, 0.9);
      [v13 setTransform:&v19];
    }
  }

  v14 = objc_loadWeakRetained((a1 + 40));
  v15 = [v14 _carPlaySiriView];

  [v15 animateOutEdgeLight];
}

uint64_t __70__AFUISiriViewController_animatedDisappearanceWithFactory_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = NSStringFromBOOL();
    v8 = 136315394;
    v9 = "[AFUISiriViewController animatedDisappearanceWithFactory:completion:]_block_invoke_3";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_241432000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation animated disappearance finished: %@", &v8, 0x16u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

- (void)_setInFluidDismissal:(BOOL)dismissal
{
  dismissalCopy = dismissal;
  _fullSiriView = [(AFUISiriViewController *)self _fullSiriView];
  [_fullSiriView setInFluidDismissal:dismissalCopy];

  _compactSiriView = [(AFUISiriViewController *)self _compactSiriView];
  [_compactSiriView setInFluidDismissal:dismissalCopy];

  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__AFUISiriViewController__setInFluidDismissal___block_invoke;
  v7[3] = &unk_278CD5708;
  objc_copyWeak(&v8, &location);
  v9 = dismissalCopy;
  [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __47__AFUISiriViewController__setInFluidDismissal___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _remoteViewController];
  [v2 setInFluidDismissal:*(a1 + 40)];
}

- (void)setFluidDismissalState:(id)state
{
  stateCopy = state;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [AFUISiriViewController setFluidDismissalState:];
  }

  if ([stateCopy transitionPhase] != 1)
  {
    if ([MEMORY[0x277CEF4D0] saeAvailable])
    {
      [(AFUISceneHostingViewController *)self->_remoteViewController setClippingDisabled:1];
    }

    _fullSiriView = [(AFUISiriViewController *)self _fullSiriView];
    foregroundContainerView = [_fullSiriView foregroundContainerView];

    _fullSiriView2 = [(AFUISiriViewController *)self _fullSiriView];
    backgroundBlurView = [_fullSiriView2 backgroundBlurView];

    _compactSiriView = [(AFUISiriViewController *)self _compactSiriView];

    if (_compactSiriView)
    {
      saeAvailable = [MEMORY[0x277CEF4D0] saeAvailable];
      _compactSiriView2 = [(AFUISiriViewController *)self _compactSiriView];
      v12 = _compactSiriView2;
      if (saeAvailable)
      {
        [_compactSiriView2 remoteContentView];
      }

      else
      {
        [_compactSiriView2 foregroundContainerView];
      }
      v13 = ;

      foregroundContainerView = v13;
    }

    if (!stateCopy)
    {
      [(AFUISiriViewController *)self _setInFluidDismissal:0];
      tamaleView = self->_tamaleView;
      CGAffineTransformMakeScale(&v53, 1.0, 1.0);
      [(SiriSharedUITamaleView *)tamaleView setTransform:&v53];
      [(SiriSharedUITamaleView *)self->_tamaleView _setSafeAreaInsetsFrozen:0];
      v21 = MEMORY[0x277D75D18];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __49__AFUISiriViewController_setFluidDismissalState___block_invoke_3;
      v43[3] = &unk_278CD5A80;
      v43[4] = self;
      v44 = backgroundBlurView;
      v45 = foregroundContainerView;
      [v21 performWithoutAnimation:v43];

LABEL_35:
      goto LABEL_36;
    }

    keyboardHeight = self->_keyboardInfo.keyboardHeight;
    if (!self->_isPresentingVisualIntelligenceCamera || [(AFUISiriSession *)self->_session attendingState]|| keyboardHeight > 0.0)
    {
      [(AFUISiriViewController *)self _thresholdForBarSwipeDismissal];
      v15 = v17;
      v16 = 0;
    }

    else
    {
      v15 = 0.0;
      v16 = 1;
    }

    [stateCopy contentRect];
    Height = CGRectGetHeight(v54);
    if (v15 <= Height)
    {
      v22 = Height;
      [(AFUISiriViewController *)self _setInFluidDismissal:1];
      if (![MEMORY[0x277CEF4D0] saeAvailable])
      {
        objc_initWeak(&location, self);
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __49__AFUISiriViewController_setFluidDismissalState___block_invoke;
        v49[3] = &unk_278CD5858;
        objc_copyWeak(&v51, &location);
        v35 = stateCopy;
        v50 = v35;
        [AFUIUtilities animateUsingSpringWithStiffness:v49 damping:746.28 animations:60.1];
        [v35 contentRect];
        v36 = CGRectGetHeight(v56);
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen bounds];
        v38 = v36 / CGRectGetHeight(v57);

        if (v38 > 0.0)
        {
          CGAffineTransformMakeScale(&v53, v38, v38);
          [foregroundContainerView setTransform:&v53];
          [v35 contentRect];
          UIRectGetCenter();
          [foregroundContainerView setCenter:?];
        }

        [v35 backgroundWeighting];
        if (v39 < 2.22044605e-16)
        {
          _compactSiriView3 = [(AFUISiriViewController *)self _compactSiriView];
          [_compactSiriView3 animateOrbViewToOffWithCompletion:0];

          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v46[2] = __49__AFUISiriViewController_setFluidDismissalState___block_invoke_2;
          v46[3] = &unk_278CD6418;
          v47 = backgroundBlurView;
          selfCopy = self;
          [AFUIUtilities animateUsingSpringWithStiffness:v46 damping:194.96 animations:30.72];
        }

        objc_destroyWeak(&v51);
        objc_destroyWeak(&location);
        goto LABEL_34;
      }

      if (keyboardHeight <= 0.0)
      {
        [(AFUISiriViewController *)self _homeGestureFractionCompleteFromCurrentYPosition:v22 yPositionAtCompletion:v15];
        v24 = (1.0 - v23) * 0.05 + 0.95;
        _compactSiriView4 = [(AFUISiriViewController *)self _compactSiriView];
        *&v26 = v24;
        [_compactSiriView4 dismissalBlur:v26];

        mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen2 bounds];
        v28 = CGRectGetHeight(v55);

        v29 = self->_tamaleView;
        v30 = v22 / v28;
        mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
        traitCollection = [mainScreen3 traitCollection];
        [traitCollection displayCornerRadius];
        if (v30 == 1.0)
        {
          v33 = v33 * 0.8;
        }

        [(SiriSharedUITamaleView *)v29 _setCornerRadius:v33];

        [(SiriSharedUITamaleView *)self->_tamaleView setClipsToBounds:1];
        [(SiriSharedUITamaleView *)self->_tamaleView _setSafeAreaInsetsFrozen:1];
        if (!v16)
        {
          CGAffineTransformMakeScale(&v53, v24, v24);
          [foregroundContainerView setTransform:&v53];
          v41 = self->_tamaleView;
          CGAffineTransformMakeScale(&v53, v24, v24);
          [(SiriSharedUITamaleView *)v41 setTransform:&v53];
          goto LABEL_34;
        }

        view = [(AFUISiriViewController *)self view];
        superview = [view superview];
        CGAffineTransformMakeScale(&v53, v30, v30);
        [superview setTransform:&v53];

        goto LABEL_20;
      }
    }

    else
    {
      [(AFUISiriViewController *)self _setInFluidDismissal:0];
      [(AFUISiriViewController *)self _dismissWithReason:6];
      if (([(SASRequestOptions *)self->_currentRequestOptions isVisualIntelligenceRequest]& 1) == 0)
      {
        view = [MEMORY[0x277CEF158] sharedAnalytics];
        [view logEventWithType:1450 context:0];
LABEL_20:
      }
    }

LABEL_34:
    _fullSiriView3 = [(AFUISiriViewController *)self _fullSiriView];
    [_fullSiriView3 fadeOutCurrentAura];

    goto LABEL_35;
  }

LABEL_36:
}

void __49__AFUISiriViewController_setFluidDismissalState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _siriView];
  [*(a1 + 32) contentWeighting];
  [v2 setContentViewsAlpha:?];
}

uint64_t __49__AFUISiriViewController_setFluidDismissalState___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) transitionToPrivateStyle:-2];
  v2 = *(a1 + 40);

  return [v2 _setFullScreenDimmingLayerVisible:0 animated:0];
}

void __49__AFUISiriViewController_setFluidDismissalState___block_invoke_3(id *a1)
{
  v2 = [a1[4] _fullSiriView];
  v3 = [v2 dimBackdropSettings];

  [a1[5] transitionToSettings:v3];
  v4 = a1[6];
  v8 = *(MEMORY[0x277CBF2C0] + 16);
  v10 = *MEMORY[0x277CBF2C0];
  v9 = v10;
  v11 = v8;
  v12 = *(MEMORY[0x277CBF2C0] + 32);
  v7 = v12;
  [v4 setTransform:&v10];
  v5 = [a1[4] view];
  v6 = [v5 superview];
  v10 = v9;
  v11 = v8;
  v12 = v7;
  [v6 setTransform:&v10];

  [a1[6] setAlpha:1.0];
  [*(a1[4] + 159) setAlpha:1.0];
  [a1[6] frame];
  [a1[6] setFrame:{0.0, 0.0}];
}

- (void)noteFluidDismissalCompletedWithSuccess:(BOOL)success
{
  successCopy = success;
  v9 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v8.a) = 136315394;
    *(&v8.a + 4) = "[AFUISiriViewController noteFluidDismissalCompletedWithSuccess:]";
    WORD2(v8.b) = 1024;
    *(&v8.b + 6) = successCopy;
    _os_log_impl(&dword_241432000, v5, OS_LOG_TYPE_DEFAULT, "%s #dismissal - fluid dismissal completed: %d", &v8, 0x12u);
  }

  if (!successCopy)
  {
    [(AFUISceneHostingViewController *)self->_remoteViewController setClippingDisabled:0];
    tamaleView = self->_tamaleView;
    CGAffineTransformMakeScale(&v8, 1.0, 1.0);
    [(SiriSharedUITamaleView *)tamaleView setTransform:&v8];
    [(SiriSharedUITamaleView *)self->_tamaleView _setSafeAreaInsetsFrozen:0];
    [(SiriSharedUITamaleView *)self->_tamaleView setClipsToBounds:0];
    layer = [(SiriSharedUITamaleView *)self->_tamaleView layer];
    [layer setCornerRadius:0.0];
  }
}

- (void)_updateSiriAvailability:(unint64_t)availability
{
  if ([(AFUISiriViewController *)self _currentSessionAvailabilityState]!= availability)
  {
    self->_currentSessionAvailabilityState = availability;
  }

  if ([(AFUISiriViewController *)self _currentSessionAvailabilityState]== 1 || [(AFUISiriViewController *)self _currentSessionAvailabilityState]== 3)
  {
    _configuration = [(AFUISiriViewController *)self _configuration];
    siriViewMode = [_configuration siriViewMode];

    if (siriViewMode == 7)
    {
      _configuration2 = [(AFUISiriViewController *)self _configuration];
      _configuration3 = [(AFUISiriViewController *)self _configuration];
      v8 = [_configuration2 initWithFlamesViewFidelity:0 isSystemHostedPresentation:1 allowResizingBetweenModes:0 siriViewMode:0 showsSensitiveUI:{objc_msgSend(_configuration3, "showsSensitiveUI")}];
      configuration = self->_configuration;
      self->_configuration = v8;
    }
  }
}

- (BOOL)_shouldShowVoiceActivationMaskViewWithSiriView:(id)view requestSource:(int64_t)source screenOff:(BOOL)off connectedToCarPlay:(BOOL)play
{
  offCopy = off;
  v9 = objc_opt_respondsToSelector();
  v10 = _os_feature_enabled_impl();
  v11 = (v10 ^ 1) & offCopy;
  if (((v10 ^ 1) & 1) == 0 && offCopy)
  {
    _applicationKeyWindow = [MEMORY[0x277D75DA0] _applicationKeyWindow];
    traitCollection = [_applicationKeyWindow traitCollection];
    v11 = [traitCollection _backlightLuminance] != 1;
  }

  v14 = v11 & !play;
  if (source != 8)
  {
    v14 = 0;
  }

  return (v9 & 1) != 0 && v14;
}

- (void)_showVoiceActivationMaskView:(BOOL)view
{
  viewCopy = view;
  self->_shouldShowVoiceActivationMaskView = view;
  delegate = [(AFUISiriViewController *)self delegate];
  [delegate siriViewController:self voiceActivationMaskViewIsVisible:viewCopy];
}

- (void)_statusBarFrameDidChange:(id)change
{
  changeCopy = change;
  _statusBar = [(AFUISiriViewController *)self _statusBar];
  [_statusBar frame];
  v7 = v6;
  v9 = v8;

  if (v7 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  if (v7 < v9)
  {
    v7 = v9;
  }

  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__AFUISiriViewController__statusBarFrameDidChange___block_invoke;
  v11[3] = &unk_278CD6620;
  objc_copyWeak(&v12, &location);
  v13 = *MEMORY[0x277CBF348];
  v14 = v7;
  v15 = v10;
  [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __51__AFUISiriViewController__statusBarFrameDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _remoteViewController];
  [v2 setStatusBarFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

- (void)_showStatusBarAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  [(AFUISiriViewController *)self _statusBarFrame];
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  if (!self->_statusBar)
  {
    v15 = [objc_alloc(MEMORY[0x277D75A78]) initWithFrame:{v7, v8, v9, v10}];
    getStatusBarOverrideData = [MEMORY[0x277D75A98] getStatusBarOverrideData];
    if (getStatusBarOverrideData)
    {
      *getStatusBarOverrideData = 1;
      getStatusBarOverrideData[64] = 1;
    }

    [v15 setLocalDataOverrides:getStatusBarOverrideData];
    [(AFUISiriViewController *)self _setStatusBar:v15];
    layer = [v15 layer];
    [layer setEdgeAntialiasingMask:0];

    [v15 requestStyle:self->_statusBarStyle];
    view = [(AFUISiriViewController *)self view];
    [view addSubview:self->_statusBar];
  }

  view2 = [(AFUISiriViewController *)self view];
  [view2 bringSubviewToFront:self->_statusBar];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__AFUISiriViewController__showStatusBarAnimated_completion___block_invoke;
  aBlock[3] = &unk_278CD5618;
  aBlock[4] = self;
  v20 = _Block_copy(aBlock);
  v21 = v20;
  if (animatedCopy)
  {
    [(UIStatusBar *)self->_statusBar setAlpha:0.0];
    [MEMORY[0x277D75D18] animateWithDuration:v21 animations:completionCopy completion:0.3];
  }

  else
  {
    (*(v20 + 2))(v20);
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  objc_initWeak(&location, self);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __60__AFUISiriViewController__showStatusBarAnimated_completion___block_invoke_2;
  v22[3] = &unk_278CD6620;
  objc_copyWeak(v23, &location);
  v23[1] = *&v11;
  v23[2] = *&v12;
  v23[3] = *&v13;
  v23[4] = *&v14;
  [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v22];
  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
}

void __60__AFUISiriViewController__showStatusBarAnimated_completion___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _statusBar];
  [v1 setAlpha:1.0];
}

void __60__AFUISiriViewController__showStatusBarAnimated_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _remoteViewController];
  [v2 setStatusBarFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

- (void)_hideStatusBarAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__AFUISiriViewController__hideStatusBarAnimated_completion___block_invoke;
  aBlock[3] = &unk_278CD5618;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  v8 = v7;
  if (animatedCopy)
  {
    [MEMORY[0x277D75D18] animateWithDuration:v7 animations:completionCopy completion:0.3];
  }

  else
  {
    (*(v7 + 2))(v7);
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }
}

void __60__AFUISiriViewController__hideStatusBarAnimated_completion___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _statusBar];
  [v1 setAlpha:0.0];
}

- (void)_removeStatusBar
{
  _statusBar = [(AFUISiriViewController *)self _statusBar];
  [_statusBar removeFromSuperview];

  [(AFUISiriViewController *)self _setStatusBar:0];
}

- (void)_applicationWillResignActive:(id)active
{
  activeCopy = active;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__AFUISiriViewController__applicationWillResignActive___block_invoke;
  v5[3] = &unk_278CD55A0;
  objc_copyWeak(&v6, &location);
  [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __55__AFUISiriViewController__applicationWillResignActive___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _remoteViewController];
  [v1 applicationWillResignActive];
}

- (void)_applicationWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__AFUISiriViewController__applicationWillEnterForeground___block_invoke;
  v5[3] = &unk_278CD55A0;
  objc_copyWeak(&v6, &location);
  [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __58__AFUISiriViewController__applicationWillEnterForeground___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _remoteViewController];
  [v1 applicationWillEnterForeground];
}

- (void)_applicationDidBecomeActive:(id)active
{
  activeCopy = active;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__AFUISiriViewController__applicationDidBecomeActive___block_invoke;
  v5[3] = &unk_278CD55A0;
  objc_copyWeak(&v6, &location);
  [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __54__AFUISiriViewController__applicationDidBecomeActive___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _remoteViewController];
  [v1 applicationDidBecomeActive];
}

- (void)_recordUIDismissal
{
  uiAppearanceRecordQueue = self->_uiAppearanceRecordQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___updateContextSiriActiveStatus_block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v11 = 0;
  dispatch_async(uiAppearanceRecordQueue, block);
  if (!self->_uiAppearanceUUIDString)
  {
    p_dismissalUserInfo = &self->_dismissalUserInfo;
    if (!self->_dismissalUserInfo)
    {
      dictionary = 0;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:self->_uiAppearanceUUIDString forKeyedSubscript:@"UUID"];
  if (AFIsInternalInstall())
  {
    _session = [(AFUISiriViewController *)self _session];
    siriSessionInfo = [_session siriSessionInfo];
    identifier = [siriSessionInfo identifier];
    [dictionary setObject:identifier forKeyedSubscript:@"SESSIONID"];
  }

  p_dismissalUserInfo = &self->_dismissalUserInfo;
  if (self->_dismissalUserInfo)
  {
    if (dictionary)
    {
LABEL_9:
      [dictionary addEntriesFromDictionary:*p_dismissalUserInfo];
      goto LABEL_10;
    }

LABEL_8:
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    goto LABEL_9;
  }

LABEL_10:
  mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
  [mEMORY[0x277CEF158] logEventWithType:1409 context:dictionary];

  _AFUIRecordSiriBeginEndCoreDuetEvent(self->_uiAppearanceRecordQueue, @"com.apple.siri.ui.end", dictionary);
  [(AFUISiriViewController *)self _triggerPeopleSuggesterLogging];
}

- (void)_donateUIDismissalToBiome:(int64_t)biome
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__AFUISiriViewController__donateUIDismissalToBiome___block_invoke;
  block[3] = &unk_278CD62C8;
  objc_copyWeak(v5, &location);
  v5[1] = biome;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(v5);
  objc_destroyWeak(&location);
}

void __52__AFUISiriViewController__donateUIDismissalToBiome___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (*(WeakRetained + 1201) & 1) == 0)
  {
    v11 = WeakRetained;
    if (*(WeakRetained + 131))
    {
      v2 = [MEMORY[0x277CBEB38] dictionary];
      [v2 setObject:*(v11 + 131) forKeyedSubscript:@"UUID"];
      if (AFIsInternalInstall())
      {
        v3 = [v11 _session];
        v4 = [v3 siriSessionInfo];
        v5 = [v4 identifier];
        [v2 setObject:v5 forKeyedSubscript:@"SESSIONID"];
      }
    }

    else
    {
      v2 = 0;
    }

    v6 = SASDismissalReasonGetName();
    v7 = v6;
    v8 = &stru_285322A30;
    if (v6)
    {
      v8 = v6;
    }

    v9 = v8;

    if (!v2)
    {
      v2 = [MEMORY[0x277CBEB38] dictionary];
    }

    [v2 setObject:v9 forKey:*MEMORY[0x277D619F0]];

    v10 = *(v11 + 132);
    if (v10)
    {
      _AFUIRecordSiriBeginEndBiomeEvent(v10, @"com.apple.siri.ui.end", v2);
      *(v11 + 1201) = 1;
    }

    WeakRetained = v11;
  }
}

- (void)_triggerPeopleSuggesterLogging
{
  if (AFIsInternalInstall())
  {
    _session = [(AFUISiriViewController *)self _session];
    siriSessionInfo = [_session siriSessionInfo];
    identifier = [siriSessionInfo identifier];

    uiAppearanceRecordQueue = self->_uiAppearanceRecordQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__AFUISiriViewController__triggerPeopleSuggesterLogging__block_invoke;
    block[3] = &unk_278CD5618;
    v9 = identifier;
    v7 = identifier;
    dispatch_async(uiAppearanceRecordQueue, block);
  }
}

void __56__AFUISiriViewController__triggerPeopleSuggesterLogging__block_invoke(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = get_PSSiriNLLoggerClass_softClass;
  v9 = get_PSSiriNLLoggerClass_softClass;
  if (!get_PSSiriNLLoggerClass_softClass)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __get_PSSiriNLLoggerClass_block_invoke;
    v5[3] = &unk_278CD54F0;
    v5[4] = &v6;
    __get_PSSiriNLLoggerClass_block_invoke(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  v4 = objc_alloc_init(v2);
  [v4 logPeopleSuggesterDataWithSessionId:*(a1 + 32)];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v20 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[AFUISiriViewController viewWillAppear:]";
    _os_log_impl(&dword_241432000, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  [(AFUISiriViewController *)self _recordUIAppearance];
  if (([(SASRequestOptions *)self->_currentRequestOptions isVisualIntelligenceRequest]& 1) == 0)
  {
    [(SRUIFPlatformHostingInstrumentationHandler *)self->_viewHostingInstrumentationHandler appearanceDidChange:0 machAbsoluteTime:mach_absolute_time()];
  }

  _session = [(AFUISiriViewController *)self _session];
  [_session notifyStateManagerPresentationTransitionBegan];

  v15.receiver = self;
  v15.super_class = AFUISiriViewController;
  [(AFUISiriViewController *)&v15 viewWillAppear:appearCopy];
  [(AFUISiriViewController *)self _sendBeginAppearanceTransitionIfReadyAnimated:appearCopy];
  v7 = +[AFUISiriSession availabilityState];
  if (v7)
  {
    _session2 = [(AFUISiriViewController *)self _session];
    [_session2 forceAudioSessionActive];
  }

  _fullSiriView = [(AFUISiriViewController *)self _fullSiriView];
  [_fullSiriView setDisabled:v7 != 0];

  _fullSiriView2 = [(AFUISiriViewController *)self _fullSiriView];
  [_fullSiriView2 setFlamesViewDeferred:SiriUIDeviceShouldDeferFlamesView()];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__keyboardDidShowNotification_ name:*MEMORY[0x277D76BA8] object:0];
  [defaultCenter addObserver:self selector:sel__keyboardDidHideNotification_ name:*MEMORY[0x277D76BA0] object:0];
  v16 = *MEMORY[0x277D619F0];
  v12 = SiriUIDismissalReasonStringFromReason();
  v17 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  dismissalUserInfo = self->_dismissalUserInfo;
  self->_dismissalUserInfo = v13;
}

- ($5902F3589ABA92D8028CA1BE72F4BD0A)_keyboardInfoFromNotification:(SEL)notification
{
  v5 = *&self->_keyboardInfo.keyboardFrame.origin.y;
  *&retstr->var0 = *&self->_keyboardInfo.enabled;
  *&retstr->var3.origin.y = v5;
  *&retstr->var3.size.height = *&self->_keyboardInfo.keyboardFrame.size.height;
  userInfo = [a4 userInfo];
  v7 = [userInfo objectForKey:*MEMORY[0x277D76BB8]];
  [v7 CGRectValue];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  retstr->var3.origin.x = v8;
  retstr->var3.origin.y = v10;
  retstr->var3.size.width = v12;
  retstr->var3.size.height = v14;

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  MaxY = CGRectGetMaxY(v20);

  v21.origin.x = v9;
  v21.origin.y = v11;
  v21.size.width = v13;
  v21.size.height = v15;
  if (CGRectGetHeight(v21) == 0.0 || (v22.origin.x = v9, v22.origin.y = v11, v22.size.width = v13, v22.size.height = v15, CGRectGetMaxY(v22) >= MaxY))
  {
    v24.origin.x = v9;
    v24.origin.y = v11;
    v24.size.width = v13;
    v24.size.height = v15;
    Height = MaxY - CGRectGetMinY(v24);
  }

  else
  {
    v23.origin.x = v9;
    v23.origin.y = v11;
    v23.size.width = v13;
    v23.size.height = v15;
    Height = CGRectGetHeight(v23);
  }

  retstr->var4 = Height;
  return result;
}

- (void)_keyboardDidShowNotification:(id)notification
{
  notificationCopy = notification;
  if ([(AFUISiriViewController *)self _siriRemoteViewControllerIsEditing])
  {
    goto LABEL_14;
  }

  keyboardHeight = self->_keyboardInfo.keyboardHeight;
  [(AFUISiriViewController *)self _keyboardInfoFromNotification:notificationCopy];
  *&self->_keyboardInfo.enabled = v14;
  *&self->_keyboardInfo.keyboardFrame.origin.y = v15;
  *&self->_keyboardInfo.keyboardFrame.size.height = v16;
  if (!self->_keyboardInfo.hasBeenShown)
  {
    v6 = self->_keyboardInfo.keyboardHeight;
    [MEMORY[0x277D619B0] heightForWidthSizeClass:SiriUIIsCompactWidth()];
    if (v6 <= v7)
    {
      if (!self->_keyboardInfo.hasBeenShown)
      {
        goto LABEL_11;
      }
    }

    else
    {
      self->_keyboardInfo.hasBeenShown = 1;
    }
  }

  v8 = self->_keyboardInfo.keyboardHeight;
  [MEMORY[0x277D619B0] heightForWidthSizeClass:SiriUIIsCompactWidth()];
  if (v8 == v9)
  {
    v10 = 1;
LABEL_10:
    self->_keyboardInfo.minimized = v10;
    goto LABEL_11;
  }

  v11 = self->_keyboardInfo.keyboardHeight;
  [MEMORY[0x277D619B0] heightForWidthSizeClass:SiriUIIsCompactWidth()];
  if (v11 > v12)
  {
    v10 = 0;
    goto LABEL_10;
  }

LABEL_11:
  if (keyboardHeight != self->_keyboardInfo.keyboardHeight)
  {
    _remoteViewController = [(AFUISiriViewController *)self _remoteViewController];
    [_remoteViewController siriKeyboardViewDidChange:&self->_keyboardInfo];
  }

  [(AFUISiriViewController *)self preloadPluginBundles];
LABEL_14:
}

- (void)_keyboardDidHideNotification:(id)notification
{
  notificationCopy = notification;
  if (![(AFUISiriViewController *)self _siriRemoteViewControllerIsEditing])
  {
    p_keyboardInfo = &self->_keyboardInfo;
    keyboardHeight = self->_keyboardInfo.keyboardHeight;
    [(AFUISiriViewController *)self _keyboardInfoFromNotification:notificationCopy];
    *&self->_keyboardInfo.enabled = v10;
    *&self->_keyboardInfo.keyboardFrame.origin.y = v11;
    *&self->_keyboardInfo.keyboardFrame.size.height = v12;
    if (self->_keyboardInfo.hasBeenShown)
    {
      v7 = self->_keyboardInfo.keyboardHeight;
      [MEMORY[0x277D619B0] heightForWidthSizeClass:SiriUIIsCompactWidth()];
      if (v7 == v8)
      {
        self->_keyboardInfo.minimized = 1;
      }
    }

    if (self->_keyboardInfo.keyboardHeight != keyboardHeight)
    {
      _remoteViewController = [(AFUISiriViewController *)self _remoteViewController];
      [_remoteViewController siriKeyboardViewDidChange:p_keyboardInfo];
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v19 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[AFUISiriViewController viewDidAppear:]";
    _os_log_impl(&dword_241432000, v6, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v16.receiver = self;
  v16.super_class = AFUISiriViewController;
  [(AFUISiriViewController *)&v16 viewDidAppear:appearCopy];
  if ([(SASRequestOptions *)self->_currentRequestOptions inputType]!= 2 && ([(SASRequestOptions *)self->_currentRequestOptions isVisualIntelligenceRequest]& 1) == 0)
  {
    [(AFUISiriViewController *)self presentRemoteViewControllerIfNecessary];
  }

  [(AFUISiriViewController *)self _sendEndAppearanceTransitionIfReady];
  [(AFUISiriViewController *)self setVisible:1];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained siriViewControllerDidChangeVisibility:self];

  [(AFUISiriViewController *)self _updateAudioRoutePickerForNonStark];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  [processInfo systemUptime];
  [(AFUISiriViewController *)self _setViewDidAppearTime:?];

  _session = [(AFUISiriViewController *)self _session];
  [_session recordRequestMetricEvent:*MEMORY[0x277CEF070] withTimestamp:self->_viewDidAppearTime];

  _session2 = [(AFUISiriViewController *)self _session];
  [_session2 notifyStateManagerPresentationTransitionEnded];

  if (([(SASRequestOptions *)self->_currentRequestOptions isVisualIntelligenceRequest]& 1) == 0)
  {
    mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
    [mEMORY[0x277CEF158] logEventWithType:1407 context:0];

    if (([MEMORY[0x277CEF4D0] saeAvailable] & 1) == 0)
    {
      [(SRUIFPlatformHostingInstrumentationHandler *)self->_viewHostingInstrumentationHandler appearanceDidChange:1 machAbsoluteTime:mach_absolute_time()];
    }
  }

  if (AFDeviceSupportsSystemAssistantExperience())
  {
    view = [(AFUISiriViewController *)self view];
    window = [view window];
    layer = [window layer];
    [layer setDisableUpdateMask:512];
  }

  v15 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[AFUISiriViewController viewDidAppear:]";
    _os_log_impl(&dword_241432000, v15, OS_LOG_TYPE_DEFAULT, "%s AFUISiriViewController's view did appear", buf, 0xCu);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v13 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[AFUISiriViewController viewWillDisappear:]";
    _os_log_impl(&dword_241432000, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  if (([(SASRequestOptions *)self->_currentRequestOptions isVisualIntelligenceRequest]& 1) == 0)
  {
    mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
    [mEMORY[0x277CEF158] logEventWithType:1408 context:0];

    [(SRUIFPlatformHostingInstrumentationHandler *)self->_viewHostingInstrumentationHandler appearanceDidChange:2 machAbsoluteTime:mach_absolute_time()];
  }

  _session = [(AFUISiriViewController *)self _session];
  [_session notifyStateManagerPresentationTransitionBegan];

  v10.receiver = self;
  v10.super_class = AFUISiriViewController;
  [(AFUISiriViewController *)&v10 viewWillDisappear:disappearCopy];
  self->_viewDisappearing = 1;
  if (!self->_deviceIsInStarkMode && [(SiriUIAudioRoutePickerController *)self->_routePickerController isShowingPicker])
  {
    [(SiriUIAudioRoutePickerController *)self->_routePickerController cancelPickerAnimated:1];
  }

  _remoteViewController = [(AFUISiriViewController *)self _remoteViewController];
  [_remoteViewController beginAppearanceTransition:0 animated:disappearCopy];

  _fullSiriView = [(AFUISiriViewController *)self _fullSiriView];
  [_fullSiriView setBackdropShouldRasterize:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v13 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[AFUISiriViewController viewDidDisappear:]";
    _os_log_impl(&dword_241432000, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v10.receiver = self;
  v10.super_class = AFUISiriViewController;
  [(AFUISiriViewController *)&v10 viewDidDisappear:disappearCopy];
  self->_viewDisappearing = 0;
  _fullSiriView = [(AFUISiriViewController *)self _fullSiriView];
  [_fullSiriView cancelShowingPasscodeUnlock];

  _remoteViewController = [(AFUISiriViewController *)self _remoteViewController];
  [_remoteViewController endAppearanceTransition];

  [(AFUISiriViewController *)self _setHasCalledBeginAppearanceTransition:0];
  [(AFUISiriViewController *)self _setHasCalledEndAppearanceTransition:0];
  [(AFUISiriViewController *)self setVisible:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained siriViewControllerDidChangeVisibility:self];

  [(AFUISiriViewController *)self _removeStatusBar];
  _session = [(AFUISiriViewController *)self _session];
  [_session notifyStateManagerPresentationTransitionEnded];

  [(AFUISiriViewController *)self _recordUIDismissal];
  if (([(SASRequestOptions *)self->_currentRequestOptions isVisualIntelligenceRequest]& 1) == 0)
  {
    [(SRUIFPlatformHostingInstrumentationHandler *)self->_viewHostingInstrumentationHandler appearanceDidChange:3 machAbsoluteTime:mach_absolute_time()];
  }
}

- (void)didMoveToParentViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = AFUISiriViewController;
  [(AFUISiriViewController *)&v4 didMoveToParentViewController:controller];
  [(AFUISiriViewController *)self _informRemoteViewControllerOfParentIfNecessary];
}

void __53__AFUISiriViewController_viewSafeAreaInsetsDidChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _remoteViewController];
  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 _fullSiriView];
  [v4 statusViewHeight];
  [v2 setStatusViewHeight:?];
}

- (void)_setVoiceTriggerEnabled:(BOOL)enabled
{
  v29 = *MEMORY[0x277D85DE8];
  vtEnabledCount = self->_vtEnabledCount;
  v5 = vtEnabledCount - 1;
  if (enabled)
  {
    v5 = vtEnabledCount + 1;
  }

  self->_vtEnabledCount = v5;
  if (vtEnabledCount == 1)
  {
    v7 = 0;
    v8 = v5 == 0;
  }

  else
  {
    v6 = v5 == 1;
    if (vtEnabledCount)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    if (vtEnabledCount)
    {
      v8 = 0;
    }

    else
    {
      v8 = v6;
    }
  }

  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = NSStringFromBOOL();
    v12 = self->_vtEnabledCount;
    v13 = NSStringFromBOOL();
    v14 = v13;
    v15 = @"Disabled";
    *buf = 136316418;
    *&buf[4] = "[AFUISiriViewController _setVoiceTriggerEnabled:]";
    *&buf[12] = 2112;
    *&buf[14] = v11;
    if (v7)
    {
      v15 = @"Enabled";
    }

    v23 = vtEnabledCount;
    *&buf[22] = 2048;
    if (!v8)
    {
      v15 = @"No change";
    }

    *v24 = 2048;
    *&v24[2] = v12;
    v25 = 2112;
    v26 = v13;
    v27 = 2112;
    v28 = v15;
    _os_log_impl(&dword_241432000, v10, OS_LOG_TYPE_DEFAULT, "%s %@ previousCount:%zd newCount:%zd transitioning:%@ newState:%@", buf, 0x3Eu);
  }

  if (v8)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v16 = getVTStateManagerClass_softClass;
    v21 = getVTStateManagerClass_softClass;
    if (!getVTStateManagerClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getVTStateManagerClass_block_invoke;
      v23 = &unk_278CD54F0;
      *v24 = &v18;
      __getVTStateManagerClass_block_invoke(buf);
      v16 = v19[3];
    }

    v17 = v16;
    _Block_object_dispose(&v18, 8);
    [v16 requestVoiceTriggerEnabled:v7 forReason:{@"Siri is active", v18}];
  }
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  if (animated)
  {
    remoteViewController = self->_remoteViewController;

    [(AFUISiriRemoteSceneViewController *)remoteViewController dismissViewControllerAnimated:1 completion:completion];
  }

  else
  {
    v8 = v4;
    v9 = v5;
    v7.receiver = self;
    v7.super_class = AFUISiriViewController;
    [(AFUISiriViewController *)&v7 dismissViewControllerAnimated:0 completion:completion];
  }
}

- (void)hasContentAtPoint:(CGPoint)point completion:(id)completion
{
  y = point.y;
  x = point.x;
  v25 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  traitCollection = [(AFUISiriViewController *)self traitCollection];
  isAmbientPresented = [traitCollection isAmbientPresented];

  if (!isAmbientPresented)
  {
    goto LABEL_7;
  }

  _compactSiriView = [(AFUISiriViewController *)self _compactSiriView];
  isDimmingViewVisible = [_compactSiriView isDimmingViewVisible];

  if (!isDimmingViewVisible)
  {
    goto LABEL_7;
  }

  v12 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[AFUISiriViewController hasContentAtPoint:completion:]";
    _os_log_impl(&dword_241432000, v12, OS_LOG_TYPE_DEFAULT, "%s #ambient - dimming layer visible - has content at point", buf, 0xCu);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1);
  }

  else
  {
LABEL_7:
    view = [(AFUISiriViewController *)self view];
    v14 = [view hitTest:0 withEvent:{x, y}];

    if (v14)
    {
      view2 = [(AFUISiriRemoteSceneViewController *)self->_remoteViewController view];
      if ([v14 isDescendantOfView:view2])
      {
        objc_initWeak(buf, self);
        v16 = [(SiriSharedUITamaleView *)self->_tamaleView hitTest:0 withEvent:x, y];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __55__AFUISiriViewController_hasContentAtPoint_completion___block_invoke;
        v18[3] = &unk_278CD6670;
        objc_copyWeak(v22, buf);
        v22[1] = *&x;
        v22[2] = *&y;
        v17 = v16;
        v19 = v17;
        selfCopy = self;
        v21 = completionCopy;
        [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v18];

        objc_destroyWeak(v22);
        objc_destroyWeak(buf);
      }

      else if (completionCopy)
      {
        completionCopy[2](completionCopy, 1);
      }
    }

    else if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

void __55__AFUISiriViewController_hasContentAtPoint_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained _remoteViewController];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__AFUISiriViewController_hasContentAtPoint_completion___block_invoke_2;
  v6[3] = &unk_278CD6648;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  objc_copyWeak(&v10, (a1 + 56));
  v9 = *(a1 + 48);
  [v3 hasContentAtPoint:v6 completion:{*(a1 + 64), *(a1 + 72)}];

  objc_destroyWeak(&v10);
}

void __55__AFUISiriViewController_hasContentAtPoint_completion___block_invoke_2(uint64_t a1, char a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32) || (a2 & 1) != 0)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = *(v6 + 16);

      v7();
    }
  }

  else
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[AFUISiriViewController hasContentAtPoint:completion:]_block_invoke_2";
      _os_log_impl(&dword_241432000, v3, OS_LOG_TYPE_DEFAULT, "%s #contentAtPoint - tapping on Tamale only when Siri is also on screen", buf, 0xCu);
    }

    v4 = *(a1 + 40);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__AFUISiriViewController_hasContentAtPoint_completion___block_invoke_192;
    v8[3] = &unk_278CD55A0;
    objc_copyWeak(&v9, (a1 + 56));
    [v4 _enqueueRemoteViewControllerMessageBlock:v8];
    v5 = *(a1 + 48);
    if (v5)
    {
      (*(v5 + 16))(v5, 1);
    }

    objc_destroyWeak(&v9);
  }
}

void __55__AFUISiriViewController_hasContentAtPoint_completion___block_invoke_192(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _remoteViewController];
  [v1 dismissSiriResults];
}

- (void)didDetectGestureEvent:(int64_t)event inRegion:(int64_t)region
{
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__AFUISiriViewController_didDetectGestureEvent_inRegion___block_invoke;
  v7[3] = &unk_278CD6698;
  objc_copyWeak(v8, &location);
  v8[1] = event;
  v8[2] = region;
  [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v7];
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

void __57__AFUISiriViewController_didDetectGestureEvent_inRegion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _remoteViewController];
  [v2 didDetectGestureEvent:*(a1 + 40) inRegion:*(a1 + 48)];
}

- (void)noteApplicationTransition
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__AFUISiriViewController_noteApplicationTransition__block_invoke;
  v3[3] = &unk_278CD55A0;
  objc_copyWeak(&v4, &location);
  [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __51__AFUISiriViewController_noteApplicationTransition__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _remoteViewController];
  [v1 noteApplicationTransition];
}

- (void)setDockFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  _compactSiriView = [(AFUISiriViewController *)self _compactSiriView];
  view = [(AFUISiriViewController *)self view];
  [view convertRect:_compactSiriView toView:{x, y, width, height}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [_compactSiriView setDockFrame:{v11, v13, v15, v17}];
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __39__AFUISiriViewController_setDockFrame___block_invoke;
  v18[3] = &unk_278CD6620;
  objc_copyWeak(v19, &location);
  v19[1] = *&x;
  v19[2] = *&y;
  v19[3] = *&width;
  v19[4] = *&height;
  [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v18];
  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
}

void __39__AFUISiriViewController_setDockFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _remoteViewController];
  [v2 setDockFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

- (void)setSystemApertureFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__AFUISiriViewController_setSystemApertureFrame___block_invoke;
  v8[3] = &unk_278CD6620;
  objc_copyWeak(v9, &location);
  v9[1] = *&x;
  v9[2] = *&y;
  v9[3] = *&width;
  v9[4] = *&height;
  [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v8];
  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

void __49__AFUISiriViewController_setSystemApertureFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _remoteViewController];
  [v2 setSystemContentFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

- (void)requestSystemApertureCollapse
{
  delegate = [(AFUISiriViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(AFUISiriViewController *)self delegate];
    [delegate2 requestSystemApertureCollapse];
  }
}

- (void)invalidateSystemApertureAssertion
{
  delegate = [(AFUISiriViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(AFUISiriViewController *)self delegate];
    [delegate2 invalidateSystemApertureAssertion];
  }
}

- (void)siriWillBeginTearDownForDismissalReason:(int64_t)reason withOriginalDismissalOptions:(id)options
{
  optionsCopy = options;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __95__AFUISiriViewController_siriWillBeginTearDownForDismissalReason_withOriginalDismissalOptions___block_invoke;
  v8[3] = &unk_278CD5830;
  objc_copyWeak(v10, &location);
  v10[1] = reason;
  v7 = optionsCopy;
  v9 = v7;
  [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v8];

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void __95__AFUISiriViewController_siriWillBeginTearDownForDismissalReason_withOriginalDismissalOptions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _remoteViewController];
  [v2 siriWillBeginTearDownForDismissalReason:*(a1 + 48) withOriginalDismissalOptions:*(a1 + 32)];
}

- (void)compactView:(id)view bottomContentInsetDidChange:(double)change
{
  viewCopy = view;
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__AFUISiriViewController_compactView_bottomContentInsetDidChange___block_invoke;
  v7[3] = &unk_278CD62C8;
  objc_copyWeak(v8, &location);
  v8[1] = *&change;
  [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v7];
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

void __66__AFUISiriViewController_compactView_bottomContentInsetDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _remoteViewController];
  [v2 setBottomContentInset:*(a1 + 40)];
}

- (void)compactView:(id)view blurVisibilityDidChange:(BOOL)change
{
  changeCopy = change;
  viewCopy = view;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    _compactSiriView = [(AFUISiriViewController *)self _compactSiriView];
    window = [_compactSiriView window];
    if ([window interfaceOrientation] == 1)
    {
    }

    else
    {
      IsPad = SiriUIDeviceIsPad();

      if (!IsPad)
      {
        goto LABEL_6;
      }
    }

    [(AFUISiriViewController *)self setStatusBarEnabled:1];
    objc_initWeak(&location, self);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __62__AFUISiriViewController_compactView_blurVisibilityDidChange___block_invoke;
    v17[3] = &unk_278CD66C0;
    objc_copyWeak(&v18, &location);
    v19 = changeCopy;
    [(AFUISiriViewController *)self requestStatusBarVisible:changeCopy animated:1 completion:v17];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

LABEL_6:
  delegate = [(AFUISiriViewController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(AFUISiriViewController *)self delegate];
    [delegate2 setShouldPassTouchesThroughToSpringBoard:changeCopy ^ 1];
  }

  delegate3 = [(AFUISiriViewController *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    delegate4 = [(AFUISiriViewController *)self delegate];
    [delegate4 setShareHomeGesture:changeCopy ^ 1];
  }

  delegate5 = [(AFUISiriViewController *)self delegate];
  [delegate5 siriViewController:self updateHomeAffordanceForBlurVisibilty:changeCopy];
}

void __62__AFUISiriViewController_compactView_blurVisibilityDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setStatusBarEnabled:*(a1 + 40)];
}

- (BOOL)compactViewShouldShowDebugButton:(id)button
{
  if (AFIsInternalInstall())
  {
    mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
    if ([mEMORY[0x277CEF368] debugButtonIsEnabled] && -[AFUISiriViewController viewMode](self, "viewMode") != 5)
    {
      v5 = [(SASRequestOptions *)self->_currentRequestOptions isVisualIntelligenceRequest]^ 1;
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

  return v5;
}

- (void)_presentDeferredFlamesViewIfNecessary
{
  _fullSiriView = [(AFUISiriViewController *)self _fullSiriView];
  [_fullSiriView setFlamesViewDeferred:0];
}

- (void)_sendBeginAppearanceTransitionIfReadyAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _remoteViewController = [(AFUISiriViewController *)self _remoteViewController];
  if (_remoteViewController)
  {
    v6 = _remoteViewController;
    _hasCalledBeginAppearanceTransition = [(AFUISiriViewController *)self _hasCalledBeginAppearanceTransition];

    if (!_hasCalledBeginAppearanceTransition)
    {
      _remoteViewController2 = [(AFUISiriViewController *)self _remoteViewController];
      [_remoteViewController2 beginAppearanceTransition:1 animated:animatedCopy];

      [(AFUISiriViewController *)self _setHasCalledBeginAppearanceTransition:1];
    }
  }
}

- (id)siriRemoteViewController:(id)controller bulletinWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataSource = [(AFUISiriViewController *)self dataSource];
  v7 = [dataSource siriViewController:self bulletinWithIdentifier:identifierCopy];

  return v7;
}

- (unint64_t)lockStateForSiriRemoteViewController:(id)controller
{
  dataSource = [(AFUISiriViewController *)self dataSource];
  v5 = [dataSource lockStateForSiriViewController:self];

  return v5;
}

- (void)siriRemoteViewControllerDidFinishDismissing:(id)dismissing
{
  v11 = *MEMORY[0x277D85DE8];
  dismissingCopy = dismissing;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[AFUISiriViewController siriRemoteViewControllerDidFinishDismissing:]";
    _os_log_impl(&dword_241432000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v9, 0xCu);
  }

  delegate = [(AFUISiriViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(AFUISiriViewController *)self delegate];
    [delegate2 siriViewControllerDidFinishDismissing:self];
  }
}

- (void)siriRemoteViewController:(id)controller invalidatedForReason:(unint64_t)reason explanation:(id)explanation
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = 7;
  if (reason != 4)
  {
    v6 = 0;
  }

  if (reason == 5)
  {
    v7 = 23;
  }

  else
  {
    v7 = v6;
  }

  v8 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277CEF588];
  if (explanation)
  {
    v15 = *MEMORY[0x277CCA450];
    v16[0] = explanation;
    v10 = MEMORY[0x277CBEAC0];
    explanationCopy = explanation;
    v12 = [v10 dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v13 = [v8 errorWithDomain:v9 code:v7 userInfo:v12];
  }

  else
  {
    v12 = 0;
    v13 = [v8 errorWithDomain:v9 code:v7 userInfo:0];
  }

  delegate = [(AFUISiriViewController *)self delegate];
  [delegate siriViewController:self didEncounterUnexpectedError:v13];
}

- (void)dismissSiriRemoteViewController:(id)controller userInfo:(id)info withReason:(int64_t)reason
{
  v18 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  infoCopy = info;
  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = SASDismissalReasonGetName();
    v14 = 136315394;
    v15 = "[AFUISiriViewController dismissSiriRemoteViewController:userInfo:withReason:]";
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_241432000, v11, OS_LOG_TYPE_DEFAULT, "%s #punchout #activation dismissal requested %@", &v14, 0x16u);
  }

  dismissalUserInfo = infoCopy;
  if (!infoCopy)
  {
    dismissalUserInfo = self->_dismissalUserInfo;
  }

  objc_storeStrong(&self->_dismissalUserInfo, dismissalUserInfo);
  [(AFUISiriViewController *)self _dismissWithReason:reason];
}

- (void)setShouldDismissForTapOutsideContent:(BOOL)content
{
  contentCopy = content;
  delegate = [(AFUISiriViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AFUISiriViewController *)self delegate];
    [delegate2 setShouldDismissForTapOutsideContent:contentCopy];
  }
}

- (void)setShouldDismissForTapsOutsideContent:(BOOL)content
{
  contentCopy = content;
  delegate = [(AFUISiriViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AFUISiriViewController *)self delegate];
    [delegate2 setShouldDismissForTapsOutsideContent:contentCopy];
  }
}

- (void)setShouldDismissForSwipesOutsideContent:(BOOL)content
{
  contentCopy = content;
  delegate = [(AFUISiriViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AFUISiriViewController *)self delegate];
    [delegate2 setShouldDismissForSwipesOutsideContent:contentCopy];
  }
}

- (void)setShouldPassTouchesThroughToSpringBoard:(BOOL)board
{
  boardCopy = board;
  delegate = [(AFUISiriViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AFUISiriViewController *)self delegate];
    [delegate2 setShouldPassTouchesThroughToSpringBoard:boardCopy];
  }
}

- (void)resetGestureBehaviors
{
  delegate = [(AFUISiriViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(AFUISiriViewController *)self delegate];
    [delegate2 resetGestureBehaviors];
  }
}

- (void)requestBlurVisible:(BOOL)visible reason:(int64_t)reason fence:(id)fence
{
  visibleCopy = visible;
  fenceCopy = fence;
  _compactSiriView = [(AFUISiriViewController *)self _compactSiriView];
  [_compactSiriView requestBlurVisible:visibleCopy reason:reason fence:fenceCopy];
}

- (void)siriRemoteViewController:(id)controller reduceOrbOpacity:(BOOL)opacity
{
  opacityCopy = opacity;
  _compactSiriView = [(AFUISiriViewController *)self _compactSiriView];
  [_compactSiriView reduceOrbOpacity:opacityCopy];
}

- (void)siriRemoteViewControllerDidPresentKeyboard:(id)keyboard
{
  delegate = [(AFUISiriViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(AFUISiriViewController *)self delegate];
    [delegate2 siriViewControllerDidPresentKeyboard:self];
  }
}

- (void)startGuidedAccessForRemoteViewController:(id)controller
{
  delegate = [(AFUISiriViewController *)self delegate];
  [delegate startGuidedAccessForSiriViewController:self];
}

- (void)userRelevantEventDidOccurInSiriRemoteViewController:(id)controller
{
  delegate = [(AFUISiriViewController *)self delegate];
  [delegate userRelevantEventDidOccurInSiriViewController:self];
}

- (void)siriRemoteViewController:(id)controller didRequestCurrentTextInputWithReplyHandler:(id)handler
{
  if (handler)
  {
    inputAccessoryView = self->_inputAccessoryView;
    handlerCopy = handler;
    textField = [(SiriUIKeyboardView *)inputAccessoryView textField];
    text = [textField text];
    (*(handler + 2))(handlerCopy, text);
  }
}

- (void)siriRemoteViewController:(id)controller siriIdleAndQuietStatusDidChange:(BOOL)change
{
  changeCopy = change;
  _siriView = [(AFUISiriViewController *)self _siriView];
  siriSessionState = [_siriView siriSessionState];

  [(AFUISiriTapPanDismissalPolicyManager *)self->_tapPanDismissalPolicyManager idleAndQuietDidChange:changeCopy forSessionState:siriSessionState];
  delegate = [(AFUISiriViewController *)self delegate];
  [delegate siriViewController:self siriIdleAndQuietStatusDidChange:changeCopy];

  session = self->_session;

  [(AFUISiriSession *)session idleAndQuietStatusDidChange:changeCopy];
}

- (void)_setFullScreenDimmingLayerVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  _siriView = [(AFUISiriViewController *)self _siriView];
  siriSessionState = [_siriView siriSessionState];

  [(AFUISiriTapPanDismissalPolicyManager *)self->_tapPanDismissalPolicyManager dimmingLayerVisibilityDidChange:visibleCopy forSessionState:siriSessionState];
  _compactSiriView = [(AFUISiriViewController *)self _compactSiriView];
  [_compactSiriView setFullScreenDimmingLayerVisible:visibleCopy animated:animatedCopy];
}

- (void)siriRemoteViewController:(id)controller inputTypeDidChange:(int64_t)change
{
  [(AFUISiriTapPanDismissalPolicyManager *)self->_tapPanDismissalPolicyManager inputTypeDidChange:change];
  delegate = [(AFUISiriViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(AFUISiriViewController *)self delegate];
    [delegate2 setInputType:change];
  }

  if ([MEMORY[0x277CEF4D0] saeAvailable])
  {
    delegate3 = [(AFUISiriViewController *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate4 = [(AFUISiriViewController *)self delegate];
      [delegate4 setShouldPassTouchesThroughToSpringBoard:change != 1];
    }
  }
}

- (void)siriRemoteViewController:(id)controller setStatusViewDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  _fullSiriView = [(AFUISiriViewController *)self _fullSiriView];
  [_fullSiriView setDisabled:disabledCopy];
}

- (void)siriRemoteViewController:(id)controller setStatusViewUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _fullSiriView = [(AFUISiriViewController *)self _fullSiriView];
  [_fullSiriView setStatusViewUserInteractionEnabled:enabledCopy];
}

- (void)siriRemoteViewController:(id)controller willPresentViewControllerWithStatusBarStyle:(int64_t)style
{
  [(UIStatusBar *)self->_statusBar requestStyle:style animated:1];
  v5 = NSStringFromSelector(sel_supportedInterfaceOrientations);
  [(AFUISiriViewController *)self willChangeValueForKey:v5];

  self->_remoteViewControllerIsPresenting = 1;
}

- (void)siriRemoteViewController:(id)controller didPresentViewControllerWithStatusBarStyle:(int64_t)style
{
  v5 = NSStringFromSelector(sel_supportedInterfaceOrientations);
  [(AFUISiriViewController *)self didChangeValueForKey:v5];
}

- (void)siriRemoteViewController:(id)controller willDismissViewControllerWithStatusBarStyle:(int64_t)style
{
  [(UIStatusBar *)self->_statusBar requestStyle:self->_statusBarStyle animated:0];
  v5 = NSStringFromSelector(sel_supportedInterfaceOrientations);
  [(AFUISiriViewController *)self willChangeValueForKey:v5];
}

- (void)siriRemoteViewController:(id)controller didDismissViewControllerWithStatusBarStyle:(int64_t)style
{
  [(UIStatusBar *)self->_statusBar requestStyle:self->_statusBarStyle animated:0];
  self->_remoteViewControllerIsPresenting = 0;
  [(AFUISiriViewController *)self _updateInterfaceOrientationAnimated:1];
  v5 = NSStringFromSelector(sel_supportedInterfaceOrientations);
  [(AFUISiriViewController *)self didChangeValueForKey:v5];
}

- (void)siriRemoteViewController:(id)controller setHelpButtonEmphasized:(BOOL)emphasized
{
  emphasizedCopy = emphasized;
  _fullSiriView = [(AFUISiriViewController *)self _fullSiriView];
  [_fullSiriView setHelpButtonEmphasized:emphasizedCopy];
}

- (void)siriRemoteViewController:(id)controller setBugReportingAvailable:(BOOL)available
{
  availableCopy = available;
  _fullSiriView = [(AFUISiriViewController *)self _fullSiriView];
  [_fullSiriView setBugReportingAvailable:availableCopy];
}

- (void)siriRemoteViewController:(id)controller setRequestHandlingStatus:(unint64_t)status
{
  _siriView = [(AFUISiriViewController *)self _siriView];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    _siriView2 = [(AFUISiriViewController *)self _siriView];
    [_siriView2 setRequestHandlingStatus:status];
  }
}

- (void)siriRemoteViewController:(id)controller handlePasscodeUnlockWithClient:(unint64_t)client withCompletion:(id)completion
{
  completionCopy = completion;
  if (([(AFUISiriViewController *)self lockStateForSiriRemoteViewController:controller]& 2) != 0)
  {
    [(AFUISiriViewController *)self handlePasscodeUnlockWithClient:client withCompletion:completionCopy];
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __97__AFUISiriViewController_siriRemoteViewController_handlePasscodeUnlockWithClient_withCompletion___block_invoke;
    v9[3] = &unk_278CD5690;
    v10 = completionCopy;
    [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v9];
  }
}

- (void)siriRemoteViewController:(id)controller willStartTest:(id)test
{
  testCopy = test;
  delegate = [(AFUISiriViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AFUISiriViewController *)self delegate];
    [delegate2 siriViewController:self willStartTest:testCopy];
  }
}

- (void)siriRemoteViewController:(id)controller didFinishTest:(id)test
{
  testCopy = test;
  delegate = [(AFUISiriViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AFUISiriViewController *)self delegate];
    [delegate2 siriViewController:self didFinishTest:testCopy];
  }
}

- (void)siriRemoteViewController:(id)controller failTest:(id)test withReason:(id)reason
{
  testCopy = test;
  reasonCopy = reason;
  delegate = [(AFUISiriViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(AFUISiriViewController *)self delegate];
    [delegate2 siriViewController:self failTest:testCopy withReason:reasonCopy];
  }
}

- (void)siriRemoteViewControllerDidPresentUserInterface:(id)interface
{
  _session = [(AFUISiriViewController *)self _session];
  v3 = *MEMORY[0x277CEF078];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  [processInfo systemUptime];
  [_session recordRequestMetricEvent:v3 withTimestamp:?];
}

- (void)siriRemoteViewControllerPulseHelpButton:(id)button
{
  _fullSiriView = [(AFUISiriViewController *)self _fullSiriView];
  [_fullSiriView pulseHelpButton];
}

- (void)openURL:(id)l bundleId:(id)id inPlace:(BOOL)place completion:(id)completion
{
  placeCopy = place;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__AFUISiriViewController_openURL_bundleId_inPlace_completion___block_invoke;
  v12[3] = &unk_278CD5880;
  v13 = completionCopy;
  v11 = completionCopy;
  [(AFUISiriViewController *)self openURL:l bundleId:id inPlace:placeCopy launchOptions:0 completion:v12];
}

uint64_t __62__AFUISiriViewController_openURL_bundleId_inPlace_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)openURL:(id)l bundleId:(id)id inPlace:(BOOL)place launchOptions:(id)options completion:(id)completion
{
  placeCopy = place;
  completionCopy = completion;
  optionsCopy = options;
  idCopy = id;
  lCopy = l;
  [(AFUISiriViewController *)self _setPunchingOut:1];
  delegate = [(AFUISiriViewController *)self delegate];
  [delegate openURL:lCopy bundleId:idCopy inPlace:placeCopy launchOptions:optionsCopy completion:completionCopy];
}

- (void)siriRemoteViewController:(id)controller didChangePresentationPeekMode:(unint64_t)mode
{
  delegate = [(AFUISiriViewController *)self delegate];
  [delegate siriViewController:self didChangePresentationPeekMode:mode];
}

- (void)updatePresentationVisualState:(unint64_t)state
{
  delegate = [(AFUISiriViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AFUISiriViewController *)self delegate];
    [delegate2 siriViewController:self didChangePresentationVisualState:state];
  }
}

- (void)siriRemoteViewController:(id)controller willChangeKeyboardVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  delegate = [(AFUISiriViewController *)self delegate];
  [delegate siriViewController:self willChangeKeyboardVisibility:visibilityCopy];
}

- (void)siriRemoteViewControllerDidPresentConversationFromBreadcrumb:(id)breadcrumb
{
  self->_presentedConversationFromBreadcrumb = 1;
  _siriView = [(AFUISiriViewController *)self _siriView];
  [_siriView setSiriSessionState:0];
}

- (void)siriRemoteViewControllerDidResetTextInput:(id)input
{
  textField = [(SiriUIKeyboardView *)self->_inputAccessoryView textField];
  [textField setText:&stru_285322A30];
}

- (void)siriRemoteViewControllerRequestsHIDEventDefferal:(id)defferal
{
  _remoteViewController = [(AFUISiriViewController *)self _remoteViewController];
  [_remoteViewController startDeferringHIDEventsIfNeeded];
}

- (void)siriRemoteViewControllerCancelHIDEventDefferal:(id)defferal
{
  _remoteViewController = [(AFUISiriViewController *)self _remoteViewController];
  [_remoteViewController invalidateAndPauseDeferringHIDEvents];
}

- (void)siriRemoteViewController:(id)controller requestsKeyboardWithCompletion:(id)completion
{
  completionCopy = completion;
  [(AFUISiriViewController *)self _setSiriRemoteViewControllerIsEditing:1];
  _remoteViewController = [(AFUISiriViewController *)self _remoteViewController];
  [_remoteViewController startDeferringHIDEventsIfNeeded];

  completionCopy[2](completionCopy, 1);
}

- (void)siriRemoteViewControllerWillBeginEditing:(id)editing
{
  v4 = 1;
  [(AFUISiriViewController *)self _setSiriRemoteViewControllerIsEditing:1];
  _statusViewHidden = [(AFUISiriViewController *)self _statusViewHidden];
  self->_statusViewWasHiddenBeforeEditingStarted = _statusViewHidden;
  if (!_statusViewHidden)
  {
    v4 = [MEMORY[0x277D75658] isInHardwareKeyboardMode] ^ 1;
  }

  [(AFUISiriViewController *)self _setStatusViewHidden:v4];
  v6 = *MEMORY[0x277D76620];

  [v6 _deactivateReachability];
}

- (void)siriRemoteViewControllerDidEndEditing:(id)editing
{
  [(AFUISiriViewController *)self _setSiriRemoteViewControllerIsEditing:0];
  v4 = self->_unlockScreenVisible || self->_statusViewWasHiddenBeforeEditingStarted;
  [(AFUISiriViewController *)self _setStatusViewHidden:v4];
  _remoteViewController = [(AFUISiriViewController *)self _remoteViewController];
  [_remoteViewController invalidateAndPauseDeferringHIDEvents];
}

- (void)siriRemoteViewController:(id)controller requestsPresentation:(id)presentation
{
  presentationCopy = presentation;
  delegate = [(AFUISiriViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate siriViewController:self requestsPresentation:presentationCopy];
  }

  else if (presentationCopy)
  {
    presentationCopy[2](presentationCopy, 0);
  }
}

- (void)siriRemoteViewController:(id)controller requestsDismissalWithReason:(int64_t)reason withCompletion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  delegate = [(AFUISiriViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = SASDismissalReasonGetName();
      v12 = 136315394;
      v13 = "[AFUISiriViewController siriRemoteViewController:requestsDismissalWithReason:withCompletion:]";
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&dword_241432000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation dismissal requested %@", &v12, 0x16u);
    }

    [delegate siriViewController:self requestsDismissalWithReason:reason withCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)siriRemoteViewController:(id)controller presentedIntentWithBundleId:(id)id
{
  idCopy = id;
  delegate = [(AFUISiriViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate siriViewController:self presentedIntentWithBundleId:idCopy];
  }
}

- (void)siriRemoteViewController:(id)controller didUpdateAudioCategoriesDisablingVolumeHUD:(id)d
{
  dCopy = d;
  delegate = [(AFUISiriViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(AFUISiriViewController *)self delegate];
    [delegate2 siriViewController:self didUpdateAudioCategoriesDisablingVolumeHUD:dCopy];
  }
}

- (void)siriRemoteViewController:(id)controller sceneDidActivateWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(AFUISiriViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(AFUISiriViewController *)self delegate];
    [delegate2 siriViewController:self sceneDidActivateWithIdentifier:identifierCopy];
  }
}

- (void)siriRemoteViewControllerDidDeactivateScene:(id)scene
{
  delegate = [(AFUISiriViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(AFUISiriViewController *)self delegate];
    [delegate2 siriViewControllerDidDeactivateScene:self];
  }
}

- (void)siriRemoteViewController:(id)controller didCreateSiriScene:(id)scene
{
  sceneCopy = scene;
  delegate = [(AFUISiriViewController *)self delegate];
  [delegate siriViewController:self didCreateSiriScene:sceneCopy];
}

- (void)toggleHomeAffordanceHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  delegate = [(AFUISiriViewController *)self delegate];
  [delegate toggleHomeAffordanceHidden:hiddenCopy];
}

- (void)toggleSiriHomeAffordanceGestureControl:(BOOL)control
{
  controlCopy = control;
  delegate = [(AFUISiriViewController *)self delegate];
  [delegate toggleSiriHomeAffordanceGestureControl:controlCopy];
}

- (void)updateEdgeLightWindowLevel:(int64_t)level
{
  self->_shouldPlaceEffectsWindowOnTopOfSiriWindow = level == 1;
  delegate = [(AFUISiriViewController *)self delegate];
  [delegate updateEdgeLightWindowLevel:level];
}

- (void)siriResultsDidDismissInTamale
{
  _visualIntelligenceCameraDelegate = [(AFUISiriViewController *)self _visualIntelligenceCameraDelegate];
  [_visualIntelligenceCameraDelegate siriDidDismissResults];

  delegate = [(AFUISiriViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(AFUISiriViewController *)self delegate];
    [delegate2 siriViewControllerDidStopListening:self];
  }
}

- (void)_setStatusViewHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v18 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = v5;
    v8 = [v6 numberWithBool:hiddenCopy];
    v14 = 136315394;
    v15 = "[AFUISiriViewController _setStatusViewHidden:]";
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_241432000, v7, OS_LOG_TYPE_DEFAULT, "%s _setStatusViewHidden: %@", &v14, 0x16u);
  }

  self->_statusViewHidden = hiddenCopy;
  _fullSiriView = [(AFUISiriViewController *)self _fullSiriView];
  [_fullSiriView setStatusViewHidden:self->_statusViewHidden];

  _siriView = [(AFUISiriViewController *)self _siriView];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    _siriView2 = [(AFUISiriViewController *)self _siriView];
    [_siriView2 setAuxiliaryViewsHidden:self->_statusViewHidden animated:1];
  }

  delegate = [(AFUISiriViewController *)self delegate];
  [delegate siriViewController:self didHideStatusView:self->_statusViewHidden];
}

- (void)_setTypeToSiriViewHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  [(SiriUIKeyboardView *)self->_inputAccessoryView setHidden:?];
  if (hiddenCopy)
  {
    [(SiriUIKeyboardView *)self->_inputAccessoryView resignFirstResponder];

    [(AFUISiriViewController *)self resignFirstResponder];
  }

  else
  {

    [(AFUISiriViewController *)self becomeFirstResponder];
  }
}

- (double)_screenHeight
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  view = [(AFUISiriViewController *)self view];
  window = [view window];
  interfaceOrientation = [window interfaceOrientation];

  v15 = v5;
  v16 = v7;
  v17 = v9;
  v18 = v11;
  if ((interfaceOrientation - 1) > 1)
  {

    return CGRectGetWidth(*&v15);
  }

  else
  {

    return CGRectGetHeight(*&v15);
  }
}

- (double)_homeGestureFractionCompleteFromCurrentYPosition:(double)position yPositionAtCompletion:(double)completion
{
  [(AFUISiriViewController *)self _screenHeight];
  v8 = v7 - completion;
  [(AFUISiriViewController *)self _screenHeight];
  return fmin((v9 - position) / v8, 1.0);
}

- (void)keyboardView:(id)view didReceiveText:(id)text
{
  textCopy = text;
  _remoteViewController = [(AFUISiriViewController *)self _remoteViewController];
  [_remoteViewController startRequestForText:textCopy];
}

- (void)tapPanDismissalPolicyManager:(id)manager dismissalPolicyDidChange:(BOOL)change
{
  changeCopy = change;
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    [AFUISiriViewController tapPanDismissalPolicyManager:v6 dismissalPolicyDidChange:?];
  }

  [(AFUISiriViewController *)self setShouldDismissForTapOutsideContent:changeCopy];
  [(AFUISiriViewController *)self setShouldDismissForTapsOutsideContent:changeCopy];
  [(AFUISiriViewController *)self setShouldDismissForSwipesOutsideContent:changeCopy];
}

- (void)_handleMicButtonTapFromSource:(int64_t)source
{
  v32 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __56__AFUISiriViewController__handleMicButtonTapFromSource___block_invoke;
  v27[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v27[4] = source;
  [mEMORY[0x277CEF158] logEventWithType:1412 contextProvider:v27];

  activationInstrumentation = self->_activationInstrumentation;
  v8 = SASRequestSourceGetName();
  v9 = [(SASActivationInstrumentation *)activationInstrumentation buttonTapWithIdentifier:v8 associateWithButtonDown:0];

  _siriView = [(AFUISiriViewController *)self _siriView];
  siriSessionState = [_siriView siriSessionState];

  v12 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = SRUIFSiriSessionStateGetDescription();
    *buf = 136315394;
    v29 = "[AFUISiriViewController _handleMicButtonTapFromSource:]";
    v30 = 2112;
    v31 = v14;
    _os_log_impl(&dword_241432000, v13, OS_LOG_TYPE_DEFAULT, "%s  sessionState: %@", buf, 0x16u);
  }

  _compactSiriView = [(AFUISiriViewController *)self _compactSiriView];
  if (_compactSiriView || ([(AFUISiriViewController *)self _carPlaySiriView], (_compactSiriView = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    _fullSiriView = [(AFUISiriViewController *)self _fullSiriView];
    disabled = [_fullSiriView disabled];

    if (disabled)
    {
      goto LABEL_23;
    }
  }

  if (siriSessionState <= 1)
  {
    if (siriSessionState)
    {
      if (siriSessionState == 1)
      {
LABEL_9:
        _session = [(AFUISiriViewController *)self _session];
        [_session stopRecordingSpeech];

        _session2 = [(AFUISiriViewController *)self _session];
        [_session2 stopAttending];

        [(AFUISiriViewController *)self _informRemoteViewControllerOfOrbViewTapToCancelRequest];
        goto LABEL_23;
      }

LABEL_15:
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"AFUISiriViewController.m" lineNumber:2400 description:{@"Unknown Siri status session state %ld", siriSessionState}];

      goto LABEL_23;
    }

    if ([(AFUISiriSession *)self->_session attendingState])
    {
      if ([(AFUISiriSession *)self->_session attendingState])
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (siriSessionState != 2)
  {
    if (siriSessionState != 3)
    {
      goto LABEL_15;
    }

LABEL_16:
    v19 = objc_alloc(MEMORY[0x277D55198]);
    _uiPresentationIdentifier = [(AFUISiriViewController *)self _uiPresentationIdentifier];
    v21 = [v19 initWithRequestSource:3 uiPresentationIdentifier:_uiPresentationIdentifier];

    [v21 setActivationEventInstrumentationIdenifier:v9];
    [(AFUISiriViewController *)self startRequestWithOptions:v21];
    delegate = [(AFUISiriViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate siriViewControllerSpeechRequestStartedFromSiriOrb];
    }

    goto LABEL_23;
  }

  _session3 = [(AFUISiriViewController *)self _session];
  [_session3 cancelRequest];

  [(AFUISiriViewController *)self _informRemoteViewControllerOfOrbViewTapToCancelRequest];
  delegate2 = [(AFUISiriViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate2 siriViewControllerSpeechRequestCancelledFromSiriOrb];
  }

LABEL_23:
}

id __56__AFUISiriViewController__handleMicButtonTapFromSource___block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = SASRequestSourceGetName();
  v1 = v0;
  if (v0)
  {
    v4 = @"requestSource";
    v5[0] = v0;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_informRemoteViewControllerOfOrbViewTapToCancelRequest
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __80__AFUISiriViewController__informRemoteViewControllerOfOrbViewTapToCancelRequest__block_invoke;
  v3[3] = &unk_278CD55A0;
  objc_copyWeak(&v4, &location);
  [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __80__AFUISiriViewController__informRemoteViewControllerOfOrbViewTapToCancelRequest__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _remoteViewController];
  [v1 didReceiveOrbViewTapToCancelRequest];
}

- (void)_handleMicButtonLongPressBeganFromSource:(int64_t)source
{
  v30 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __67__AFUISiriViewController__handleMicButtonLongPressBeganFromSource___block_invoke;
  v25[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v25[4] = source;
  [mEMORY[0x277CEF158] logEventWithType:1410 contextProvider:v25];

  _siriView = [(AFUISiriViewController *)self _siriView];
  siriSessionState = [_siriView siriSessionState];

  v8 = MEMORY[0x277CEF098];
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = SRUIFSiriSessionStateGetDescription();
    *buf = 136315394;
    v27 = "[AFUISiriViewController _handleMicButtonLongPressBeganFromSource:]";
    v28 = 2112;
    v29 = v11;
    _os_log_impl(&dword_241432000, v10, OS_LOG_TYPE_DEFAULT, "%s  sessionState: %@", buf, 0x16u);
  }

  if (siriSessionState <= 3 && siriSessionState != 1)
  {
    if (self->_triggerUpdater)
    {
      v12 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v27 = "[AFUISiriViewController _handleMicButtonLongPressBeganFromSource:]";
        _os_log_impl(&dword_241432000, v12, OS_LOG_TYPE_DEFAULT, "%s Old trigger released", buf, 0xCu);
      }

      (*(self->_triggerUpdater + 2))();
      triggerUpdater = self->_triggerUpdater;
      self->_triggerUpdater = 0;
    }

    delegate = [(AFUISiriViewController *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      delegate2 = [(AFUISiriViewController *)self delegate];
      [delegate2 siriViewControllerSpeechRequestStartedFromSiriOrb];
    }

    activationInstrumentation = self->_activationInstrumentation;
    v18 = SASRequestSourceGetName();
    v19 = [(SASActivationInstrumentation *)activationInstrumentation buttonDownWithIdentifier:v18];

    v20 = objc_alloc(MEMORY[0x277D55198]);
    _uiPresentationIdentifier = [(AFUISiriViewController *)self _uiPresentationIdentifier];
    v22 = [v20 initWithRequestSource:source uiPresentationIdentifier:_uiPresentationIdentifier];

    [v22 setActivationEventInstrumentationIdenifier:v19];
    v23 = [objc_alloc(MEMORY[0x277D551A0]) initWithRequestOptions:v22 updateHandle:&self->_triggerUpdater];
    v24 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v27 = "[AFUISiriViewController _handleMicButtonLongPressBeganFromSource:]";
      _os_log_impl(&dword_241432000, v24, OS_LOG_TYPE_DEFAULT, "%s Starting new request with trigger", buf, 0xCu);
    }

    [(AFUISiriViewController *)self startRequestWithActivationTrigger:v23];
  }
}

id __67__AFUISiriViewController__handleMicButtonLongPressBeganFromSource___block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = SASRequestSourceGetName();
  v1 = v0;
  if (v0)
  {
    v4 = @"requestSource";
    v5[0] = v0;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_handleMicButtonLongPressEndedFromSource:(int64_t)source
{
  v21 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__AFUISiriViewController__handleMicButtonLongPressEndedFromSource___block_invoke;
  v16[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v16[4] = source;
  [mEMORY[0x277CEF158] logEventWithType:1411 contextProvider:v16];

  activationInstrumentation = self->_activationInstrumentation;
  v7 = SASRequestSourceGetName();
  v8 = [(SASActivationInstrumentation *)activationInstrumentation buttonUpWithIdentifier:v7];

  _siriView = [(AFUISiriViewController *)self _siriView];
  [_siriView siriSessionState];

  v10 = MEMORY[0x277CEF098];
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = SRUIFSiriSessionStateGetDescription();
    *buf = 136315394;
    v18 = "[AFUISiriViewController _handleMicButtonLongPressEndedFromSource:]";
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&dword_241432000, v12, OS_LOG_TYPE_DEFAULT, "%s  sessionState: %@", buf, 0x16u);
  }

  if (self->_triggerUpdater)
  {
    v14 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "[AFUISiriViewController _handleMicButtonLongPressEndedFromSource:]";
      _os_log_impl(&dword_241432000, v14, OS_LOG_TYPE_DEFAULT, "%s Trigger released", buf, 0xCu);
    }

    (*(self->_triggerUpdater + 2))();
    triggerUpdater = self->_triggerUpdater;
    self->_triggerUpdater = 0;
  }
}

id __67__AFUISiriViewController__handleMicButtonLongPressEndedFromSource___block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = SASRequestSourceGetName();
  v1 = v0;
  if (v0)
  {
    v4 = @"requestSource";
    v5[0] = v0;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_handleSiriDidActivateFromSource:(int64_t)source
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__AFUISiriViewController__handleSiriDidActivateFromSource___block_invoke;
  v5[3] = &unk_278CD62C8;
  objc_copyWeak(v6, &location);
  v6[1] = source;
  [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v5];
  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

void __59__AFUISiriViewController__handleSiriDidActivateFromSource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _remoteViewController];
  [v2 siriDidActivateFromSource:*(a1 + 40)];
}

- (void)handlePasscodeUnlockAndCancelRequest:(BOOL)request withClient:(unint64_t)client withCompletion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  _configuration = [(AFUISiriViewController *)self _configuration];
  siriViewMode = [_configuration siriViewMode];

  if (siriViewMode)
  {
    [(AFUISiriViewController *)self _handlePasscodeUnlockAndCancelRequest:requestCopy dismissOnFailure:0 passcodeUnlockClient:client withCompletion:completionCopy];
  }

  else
  {
    delegate = [(AFUISiriViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      objc_initWeak(&location, self);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __89__AFUISiriViewController_handlePasscodeUnlockAndCancelRequest_withClient_withCompletion___block_invoke;
      v12[3] = &unk_278CD6708;
      objc_copyWeak(v14, &location);
      v15 = requestCopy;
      v14[1] = client;
      v13 = completionCopy;
      [delegate siriViewController:self requestsPresentation:v12];

      objc_destroyWeak(v14);
      objc_destroyWeak(&location);
    }

    else if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 1);
    }
  }
}

uint64_t __89__AFUISiriViewController_handlePasscodeUnlockAndCancelRequest_withClient_withCompletion___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && a2)
  {
    [WeakRetained _handlePasscodeUnlockAndCancelRequest:*(a1 + 56) dismissOnFailure:1 passcodeUnlockClient:*(a1 + 48) withCompletion:*(a1 + 32)];
  }

  else
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, 1);
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)handleAppUnlockForAppId:(id)id withCompletion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  v8 = objc_initWeak(&location, self);
  view = [(AFUISiriViewController *)self view];
  [view setUserInteractionEnabled:0];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__AFUISiriViewController_handleAppUnlockForAppId_withCompletion___block_invoke;
  v12[3] = &unk_278CD5AD0;
  objc_copyWeak(&v15, &location);
  v10 = idCopy;
  v13 = v10;
  v11 = completionCopy;
  v14 = v11;
  [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __65__AFUISiriViewController_handleAppUnlockForAppId_withCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[1128] = 1;
    v4 = [WeakRetained _remoteViewController];
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __65__AFUISiriViewController_handleAppUnlockForAppId_withCompletion___block_invoke_2;
    v6[3] = &unk_278CD6758;
    objc_copyWeak(&v8, (a1 + 48));
    v7 = *(a1 + 40);
    [v4 showAppUnlockForAppId:v5 completion:v6];

    objc_destroyWeak(&v8);
  }
}

void __65__AFUISiriViewController_handleAppUnlockForAppId_withCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained view];
    [v6 setUserInteractionEnabled:1];

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __65__AFUISiriViewController_handleAppUnlockForAppId_withCompletion___block_invoke_3;
    v7[3] = &unk_278CD6730;
    v9 = *(a1 + 32);
    v10 = a2;
    v8 = v5;
    [v8 _enqueueRemoteViewControllerMessageBlock:v7];
  }
}

uint64_t __65__AFUISiriViewController_handleAppUnlockForAppId_withCompletion___block_invoke_3(void *a1)
{
  result = a1[5];
  if (result)
  {
    result = (*(result + 16))(result, a1[6]);
  }

  *(a1[4] + 1128) = 0;
  return result;
}

- (void)_handlePasscodeUnlockAndCancelRequest:(BOOL)request dismissOnFailure:(BOOL)failure passcodeUnlockClient:(unint64_t)client withCompletion:(id)completion
{
  completionCopy = completion;
  v11 = objc_initWeak(&location, self);
  view = [(AFUISiriViewController *)self view];
  [view setUserInteractionEnabled:0];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __117__AFUISiriViewController__handlePasscodeUnlockAndCancelRequest_dismissOnFailure_passcodeUnlockClient_withCompletion___block_invoke;
  v14[3] = &unk_278CD67F0;
  objc_copyWeak(v16, &location);
  requestCopy = request;
  v16[1] = client;
  v13 = completionCopy;
  failureCopy = failure;
  v14[4] = self;
  v15 = v13;
  [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v14];

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __117__AFUISiriViewController__handlePasscodeUnlockAndCancelRequest_dismissOnFailure_passcodeUnlockClient_withCompletion___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[1128] = 1;
    v4 = [WeakRetained _remoteViewController];
    [v4 siriWillShowPasscodeUnlockAndCancelRequest:*(a1 + 64)];

    v5 = [v3 _textForPasscodeUnlockClient:*(a1 + 56)];
    v6 = [v3 _siriView];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [v3 _siriView];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __117__AFUISiriViewController__handlePasscodeUnlockAndCancelRequest_dismissOnFailure_passcodeUnlockClient_withCompletion___block_invoke_2;
      v22[3] = &unk_278CD5CE0;
      v23 = v3;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __117__AFUISiriViewController__handlePasscodeUnlockAndCancelRequest_dismissOnFailure_passcodeUnlockClient_withCompletion___block_invoke_3;
      v18[3] = &unk_278CD67C8;
      objc_copyWeak(&v20, (a1 + 48));
      v19 = *(a1 + 40);
      v21 = *(a1 + 65);
      [v8 showPasscodeUnlockWithStatusText:v5 subtitle:0 completionHandler:v22 unlockCompletionHandler:v18];

      objc_destroyWeak(&v20);
    }

    else
    {
      v9 = *(a1 + 40);
      v10 = MEMORY[0x277CEF098];
      if (v9)
      {
        (*(v9 + 16))(v9, 1);
        v11 = *v10;
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v25 = "[AFUISiriViewController _handlePasscodeUnlockAndCancelRequest:dismissOnFailure:passcodeUnlockClient:withCompletion:]_block_invoke";
          _os_log_impl(&dword_241432000, v11, OS_LOG_TYPE_DEFAULT, "%s Cannot present unlock screen. Sending SiriUIUnlockResultFailure to completion handler.", buf, 0xCu);
        }
      }

      v12 = [v3 view];
      [v12 setUserInteractionEnabled:1];

      v13 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = v13;
        v16 = [v14 view];
        v17 = [v16 debugDescription];
        *buf = 136315394;
        v25 = "[AFUISiriViewController _handlePasscodeUnlockAndCancelRequest:dismissOnFailure:passcodeUnlockClient:withCompletion:]_block_invoke";
        v26 = 2112;
        v27 = v17;
        _os_log_impl(&dword_241432000, v15, OS_LOG_TYPE_DEFAULT, "%s  %@Current view cannot show passcode unlock flow.", buf, 0x16u);
      }
    }
  }
}

void __117__AFUISiriViewController__handlePasscodeUnlockAndCancelRequest_dismissOnFailure_passcodeUnlockClient_withCompletion___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setUserInteractionEnabled:1];
}

void __117__AFUISiriViewController__handlePasscodeUnlockAndCancelRequest_dismissOnFailure_passcodeUnlockClient_withCompletion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __117__AFUISiriViewController__handlePasscodeUnlockAndCancelRequest_dismissOnFailure_passcodeUnlockClient_withCompletion___block_invoke_4;
    v9[3] = &unk_278CD6780;
    v6 = WeakRetained;
    v10 = v6;
    v12 = a2;
    v11 = *(a1 + 32);
    [v6 _enqueueRemoteViewControllerMessageBlock:v9];
    if (a2 && *(a1 + 48) == 1)
    {
      v7 = [v6 delegate];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __117__AFUISiriViewController__handlePasscodeUnlockAndCancelRequest_dismissOnFailure_passcodeUnlockClient_withCompletion___block_invoke_6;
      v8[3] = &__block_descriptor_40_e8_v12__0B8l;
      v8[4] = a2;
      [v7 siriViewController:v6 requestsDismissalWithReason:54 withCompletion:v8];
    }
  }
}

void __117__AFUISiriViewController__handlePasscodeUnlockAndCancelRequest_dismissOnFailure_passcodeUnlockClient_withCompletion___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteViewController];
  [v2 siriWillHidePasscodeUnlockForResult:*(a1 + 48)];

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 48));
  }

  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __117__AFUISiriViewController__handlePasscodeUnlockAndCancelRequest_dismissOnFailure_passcodeUnlockClient_withCompletion___block_invoke_5;
  v5[3] = &unk_278CD5618;
  v6 = v4;
  [v6 _enqueueRemoteViewControllerMessageBlock:v5];
}

void __117__AFUISiriViewController__handlePasscodeUnlockAndCancelRequest_dismissOnFailure_passcodeUnlockClient_withCompletion___block_invoke_5(uint64_t a1)
{
  *(*(a1 + 32) + 1128) = 0;
  v1 = [*(a1 + 32) _remoteViewController];
  [v1 siriDidHidePasscodeUnlock];
}

void __117__AFUISiriViewController__handlePasscodeUnlockAndCancelRequest_dismissOnFailure_passcodeUnlockClient_withCompletion___block_invoke_6(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[AFUISiriViewController _handlePasscodeUnlockAndCancelRequest:dismissOnFailure:passcodeUnlockClient:withCompletion:]_block_invoke_6";
    v8 = 2048;
    v9 = v5;
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&dword_241432000, v4, OS_LOG_TYPE_DEFAULT, "%s Dismissed siri for unlock result: %lu dismissal result: %d", &v6, 0x1Cu);
  }
}

- (id)_textForPasscodeUnlockClient:(unint64_t)client
{
  if (client <= 2)
  {
    v4 = off_278CD6A30[client];
    afui_assistantUIFrameworkBundle = [MEMORY[0x277CCA8D8] afui_assistantUIFrameworkBundle];
    v3 = [afui_assistantUIFrameworkBundle assistantUILocalizedStringForKey:v4 table:@"Localizable"];
  }

  return v3;
}

- (void)showPasscodeUnlockScreenForRequest:(id)request passcodeUnlockClient:(unint64_t)client unlockCompletion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  objc_initWeak(&location, self);
  self->_unlockScreenVisible = 1;
  requiresUserInteraction = [requestCopy requiresUserInteraction];
  v11 = *MEMORY[0x277CEF098];
  v12 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
  if (requiresUserInteraction)
  {
    if (v12)
    {
      *buf = 136315138;
      v27 = "[AFUISiriViewController showPasscodeUnlockScreenForRequest:passcodeUnlockClient:unlockCompletion:]";
      _os_log_impl(&dword_241432000, v11, OS_LOG_TYPE_DEFAULT, "%s Passcode unlock screen for handoff authentication.", buf, 0xCu);
    }

    handoffOriginDeviceName = [requestCopy handoffOriginDeviceName];
    afui_assistantUIFrameworkBundle = [MEMORY[0x277CCA8D8] afui_assistantUIFrameworkBundle];
    v15 = [afui_assistantUIFrameworkBundle assistantUILocalizedStringForKey:@"ASSISTANT_REMOTE_AUTHENTICATION_TITLE" table:@"Localizable"];

    v16 = MEMORY[0x277CCACA8];
    afui_assistantUIFrameworkBundle2 = [MEMORY[0x277CCA8D8] afui_assistantUIFrameworkBundle];
    v18 = [afui_assistantUIFrameworkBundle2 assistantUILocalizedStringForKey:@"ASSISTANT_REMOTE_AUTHENTICATION_SUBTITLE" table:@"Localizable"];
    v19 = [v16 stringWithValidatedFormat:v18 validFormatSpecifiers:@"%@" error:0, handoffOriginDeviceName];
  }

  else
  {
    if (v12)
    {
      *buf = 136315138;
      v27 = "[AFUISiriViewController showPasscodeUnlockScreenForRequest:passcodeUnlockClient:unlockCompletion:]";
      _os_log_impl(&dword_241432000, v11, OS_LOG_TYPE_DEFAULT, "%s Passcode unlock screen for cold boot authentication.", buf, 0xCu);
    }

    handoffOriginDeviceName = [MEMORY[0x277CCA8D8] afui_assistantUIFrameworkBundle];
    if (client)
    {
      [handoffOriginDeviceName assistantUILocalizedStringForKey:@"VISUAL_INTELLIGENCE_FIRST_UNLOCK_TITLE" table:@"Localizable"];
    }

    else
    {
      [handoffOriginDeviceName assistantUILocalizedStringForKey:@"ASSISTANT_FIRST_UNLOCK_TITLE" table:@"Localizable"];
    }
    v15 = ;
    v19 = 0;
  }

  _siriView = [(AFUISiriViewController *)self _siriView];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __99__AFUISiriViewController_showPasscodeUnlockScreenForRequest_passcodeUnlockClient_unlockCompletion___block_invoke;
  v22[3] = &unk_278CD6758;
  objc_copyWeak(&v24, &location);
  v21 = completionCopy;
  v23 = v21;
  [_siriView showPasscodeUnlockWithStatusText:v15 subtitle:v19 completionHandler:0 unlockCompletionHandler:v22];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

uint64_t __99__AFUISiriViewController_showPasscodeUnlockScreenForRequest_passcodeUnlockClient_unlockCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    WeakRetained[1128] = 0;
    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, a2);
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)preheat
{
  _session = [(AFUISiriViewController *)self _session];
  [_session preheat];
}

- (void)siriWillActivateFromSource:(int64_t)source
{
  self->_currentRequestSource = source;
  self->_siriSessionWantsToEnd = 0;
  if (source != 54 && source != 57)
  {
    underlyingConnection = [(AFUISiriViewController *)self underlyingConnection];
    [underlyingConnection willPresentUI];
  }

  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__AFUISiriViewController_siriWillActivateFromSource___block_invoke;
  v6[3] = &unk_278CD62C8;
  objc_copyWeak(v7, &location);
  v7[1] = source;
  [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v6];
  if ((SASRequestSourceIsTypeToSiri() & 1) == 0)
  {
    [(AFUISiriViewController *)self preloadPluginBundles];
  }

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __53__AFUISiriViewController_siriWillActivateFromSource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _remoteViewController];
  [v2 siriWillActivateFromSource:*(a1 + 40)];
}

- (void)siriDidActivateFromSource:(int64_t)source
{
  self->_currentRequestSource = source;
  if (!self->_active)
  {
    self->_active = 1;
    [(AFUISiriViewController *)self _setVoiceTriggerEnabled:1];
  }

  _fullSiriView = [(AFUISiriViewController *)self _fullSiriView];

  if (_fullSiriView)
  {
    _fullSiriView2 = [(AFUISiriViewController *)self _fullSiriView];
    [_fullSiriView2 siriDidActivateFromSource:source];
  }

  else
  {

    [(AFUISiriViewController *)self _handleSiriDidActivateFromSource:source];
  }
}

- (void)siriWillBePresented:(int64_t)presented
{
  objc_initWeak(&location, self);
  if (self->_remoteViewController)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __46__AFUISiriViewController_siriWillBePresented___block_invoke;
    v5[3] = &unk_278CD62C8;
    objc_copyWeak(v6, &location);
    v6[1] = presented;
    [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v5];
    objc_destroyWeak(v6);
  }

  objc_destroyWeak(&location);
}

void __46__AFUISiriViewController_siriWillBePresented___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _remoteViewController];
  [v2 siriWillBePresented:*(a1 + 40)];
}

- (void)siriWasPresented:(int64_t)presented
{
  if ((presented == 57 || presented == 54) && self->_tamaleViewWaitingForPresentation)
  {
    self->_tamaleViewWaitingForPresentation = 0;
    [(AFUISiriViewController *)self tamaleViewDidLoad];
  }
}

- (void)siriDidDeactivate
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[AFUISiriViewController siriDidDeactivate]";
    _os_log_impl(&dword_241432000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v14, 0xCu);
  }

  self->_active = 0;
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  [processInfo systemUptime];
  v6 = v5;
  [(AFUISiriViewController *)self _viewDidAppearTime];
  v8 = v6 - v7;

  v9 = objc_alloc(MEMORY[0x277CEF300]);
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  v11 = [v9 initWithOriginalCommandId:0 category:0 duration:v10];

  _session = [(AFUISiriViewController *)self _session];
  [_session recordUIMetrics:v11];

  underlyingConnection = [(AFUISiriViewController *)self underlyingConnection];
  [underlyingConnection didDismissUI];

  [(AFUISiriTapPanDismissalPolicyManager *)self->_tapPanDismissalPolicyManager invalidate];
  if (self->_immersiveExperienceOn)
  {
    self->_immersiveExperienceOn = 0;
  }

  [(AFUISiriViewController *)self _setVoiceTriggerEnabled:0];
  [(AFUISiriViewController *)self endSession];
}

- (void)resetContextTypes:(int64_t)types
{
  _session = [(AFUISiriViewController *)self _session];
  [_session resetContextTypes:types];
}

- (void)updateContexts:(int64_t)contexts
{
  contextsCopy = contexts;
  if ((contexts & 2) != 0)
  {
    _session = [(AFUISiriViewController *)self _session];
    [_session setAlertContext];
  }

  if (contextsCopy)
  {
    _session2 = [(AFUISiriViewController *)self _session];
    [_session2 setApplicationContext];
  }
}

- (void)setDeviceInStarkMode:(BOOL)mode
{
  if (self->_deviceIsInStarkMode == mode)
  {
    if (!self->_deviceIsInStarkMode)
    {
LABEL_3:

      [(AFUISiriViewController *)self _updateAudioRoutePickerForNonStark];
      return;
    }
  }

  else
  {
    self->_deviceIsInStarkMode = mode;
    if (!mode)
    {
      goto LABEL_3;
    }
  }

  _session = [(AFUISiriViewController *)self _session];
  [_session setDeviceInStarkMode:self->_deviceIsInStarkMode];
}

- (void)setSupportsCarPlayVehicleData:(BOOL)data
{
  if (self->_supportsCarPlayVehicleData != data)
  {
    dataCopy = data;
    _session = [(AFUISiriViewController *)self _session];
    [_session setSupportsCarPlayVehicleData:dataCopy];
  }
}

- (void)setCarOwnsMainAudio:(BOOL)audio
{
  if (self->_carOwnsMainAudio != audio)
  {
    audioCopy = audio;
    _session = [(AFUISiriViewController *)self _session];
    [_session setCarOwnsMainAudio:audioCopy];
  }
}

- (void)setAnnouncementRequestsPermittedWhilePresentationActive:(BOOL)active
{
  if (self->_announcementRequestsPermittedWhilePresentationActive != active)
  {
    activeCopy = active;
    self->_announcementRequestsPermittedWhilePresentationActive = active;
    _session = [(AFUISiriViewController *)self _session];
    [_session setAnnouncementRequestsPermittedByPresentationWhileActive:activeCopy];
  }
}

- (void)_dismissWithReason:(int64_t)reason
{
  self->_dismissalReason = reason;
  delegate = [(AFUISiriViewController *)self delegate];
  [delegate dismissSiriViewController:self withReason:reason];
}

- (void)deactivateScene
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__AFUISiriViewController_deactivateScene__block_invoke;
  v3[3] = &unk_278CD55A0;
  objc_copyWeak(&v4, &location);
  [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __41__AFUISiriViewController_deactivateScene__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _remoteViewController];
  [v1 deactivateScene];
}

- (void)reactivateScene
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__AFUISiriViewController_reactivateScene__block_invoke;
  v3[3] = &unk_278CD55A0;
  objc_copyWeak(&v4, &location);
  [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __41__AFUISiriViewController_reactivateScene__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _remoteViewController];
  [v1 reactivateScene];
}

- (void)setCarDNDActive:(BOOL)active
{
  activeCopy = active;
  v13 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = NSStringFromBOOL();
    v9 = 136315394;
    v10 = "[AFUISiriViewController setCarDNDActive:]";
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_241432000, v6, OS_LOG_TYPE_DEFAULT, "%s #carDnd setting carDNDActive to %@", &v9, 0x16u);
  }

  self->_carDNDActive = activeCopy;
  _session = [(AFUISiriViewController *)self _session];
  [_session setCarDNDActive:activeCopy];
}

- (void)startRequestWithOptions:(id)options completion:(id)completion
{
  v66 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  completionCopy = completion;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [AFUISiriViewController startRequestWithOptions:completion:];
  }

  _systemState = [(AFUISiriViewController *)self _systemState];
  [optionsCopy updateIfNeededWithSystemState:_systemState];

  delegate = [(AFUISiriViewController *)self delegate];
  v53 = delegate;
  if (delegate)
  {
    v9 = [delegate siriViewController:self willStartRequestWithOptions:{optionsCopy, delegate}];
  }

  else
  {
    v9 = optionsCopy;
  }

  v10 = v9;
  self->_recordingStartedOnRoute = 0;
  self->_dismissalReason = 0;
  [(AFUISiriViewController *)self _setPunchingOut:0, v53];
  if (v10)
  {
    objc_initWeak(&location, self);
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __61__AFUISiriViewController_startRequestWithOptions_completion___block_invoke;
    v58[3] = &unk_278CD5858;
    objc_copyWeak(&v60, &location);
    v11 = v10;
    v59 = v11;
    [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v58];
    if ([v11 requestSource] == 24)
    {
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __61__AFUISiriViewController_startRequestWithOptions_completion___block_invoke_2;
      v56[3] = &unk_278CD55A0;
      objc_copyWeak(&v57, &location);
      [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v56];
      objc_destroyWeak(&v57);
    }

    _deviceSupportsZLL = [(AFUISiriViewController *)self _deviceSupportsZLL];
    inputType = [v11 inputType];
    isInitialBringUp = [v11 isInitialBringUp];
    if ([v11 predictedRecordRouteIsZLL])
    {
      _fullSiriView = [(AFUISiriViewController *)self _fullSiriView];
      [_fullSiriView setHelpButtonDeferred:(inputType == 2) & isInitialBringUp];
    }

    else
    {
      _fullSiriView = [(AFUISiriViewController *)self _fullSiriView];
      [_fullSiriView setHelpButtonDeferred:0];
    }

    if ([MEMORY[0x277CEF4D0] saeAvailable] && objc_msgSend(v11, "isForStark") && objc_msgSend(v11, "isInitialBringUp"))
    {
      _carPlaySiriView = [(AFUISiriViewController *)self _carPlaySiriView];
      [_carPlaySiriView initializeEdgeLightForRequest:v11];

      [(AFUISiriCarPlayShockwaveViewController *)self->_carPlayShockwaveViewController initializeEdgeLightForRequest:v11];
    }

    requestSource = [v11 requestSource];
    requestSource2 = [v11 requestSource];
    predictedRecordRouteIsZLL = 0;
    if (requestSource2 <= 0x2D && ((1 << requestSource2) & 0x200020000107) != 0)
    {
      predictedRecordRouteIsZLL = [v11 predictedRecordRouteIsZLL];
    }

    v22 = (inputType == 2) & _deviceSupportsZLL & isInitialBringUp & ((requestSource == 8) | predictedRecordRouteIsZLL);
    if (v22 == 1)
    {
      v23 = mach_absolute_time();
      _siriView = [(AFUISiriViewController *)self _siriView];
      [_siriView setSiriSessionState:1];

      _session = [(AFUISiriViewController *)self _session];
      [_session launchedIntoListeningAtTime:v23];

      v26 = MEMORY[0x277CCABB0];
      processInfo = [MEMORY[0x277CCAC38] processInfo];
      [processInfo systemUptime];
      v28 = [v26 numberWithDouble:?];

      v29 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v63 = "[AFUISiriViewController startRequestWithOptions:completion:]";
        v64 = 2112;
        selfCopy = v28;
        _os_log_impl(&dword_241432000, v29, OS_LOG_TYPE_DEFAULT, "%s Launched into listening mode. Setting recording start time to: %@", buf, 0x16u);
      }

      [(AFUISiriViewController *)self _setRecordingStartedTimeValue:v28];
    }

    _session2 = [(AFUISiriViewController *)self _session];
    [_session2 startRequestWithOptions:v11 completion:completionCopy];

    [(AFUISiriViewController *)self _setCurrentRequestOptions:v11];
    [optionsCopy timestamp];
    AFMachAbsoluteTimeAddTimeInterval();
    currentRequestSource = self->_currentRequestSource;
    isVoiceTriggerRequest = 1;
    if (currentRequestSource != 8 && currentRequestSource != 45)
    {
      isVoiceTriggerRequest = [optionsCopy isVoiceTriggerRequest];
    }

    requestSource3 = [optionsCopy requestSource];
    IsVisualIntelligenceDirectInvocation = SASRequestSourceIsVisualIntelligenceDirectInvocation();
    if (isVoiceTriggerRequest)
    {
      speechRequestOptions = [optionsCopy speechRequestOptions];
      SRUIFInstrumentVoiceLaunchSignpost();

LABEL_38:
      if ((v22 & 1) == 0)
      {
        v36 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v63 = "[AFUISiriViewController startRequestWithOptions:completion:]";
          _os_log_impl(&dword_241432000, v36, OS_LOG_TYPE_DEFAULT, "%s Not launching into listening mode. Setting recording start time back to nil.", buf, 0xCu);
        }

        [(AFUISiriViewController *)self _setRecordingStartedTimeValue:0];
        if (((inputType == 2) & isInitialBringUp) == 1 && ![(AFUISiriViewController *)self isEyesFree])
        {
          _fullSiriView2 = [(AFUISiriViewController *)self _fullSiriView];
          [_fullSiriView2 setFlamesViewPaused:1];
        }
      }

      if ([v11 isInitialBringUp])
      {
        _session3 = [(AFUISiriViewController *)self _session];
        [v11 timestamp];
        [_session3 recordRequestMetricEvent:*MEMORY[0x277CEF068] withTimestamp:?];
      }

      objc_destroyWeak(&v60);
      objc_destroyWeak(&location);
      goto LABEL_47;
    }

    if ((requestSource3 - 1) >= 2)
    {
      if (requestSource3 != 48)
      {
        if (requestSource3 == 23)
        {
          goto LABEL_35;
        }

        if (!IsVisualIntelligenceDirectInvocation)
        {
          goto LABEL_38;
        }
      }

      SRUIFInstrumentQuickTypeGestureLaunchSignpost();
      goto LABEL_38;
    }

LABEL_35:
    SRUIFInstrumentButtonLaunchSignpost();
    goto LABEL_38;
  }

  v16 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v63 = "[AFUISiriViewController startRequestWithOptions:completion:]";
    v64 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_241432000, v16, OS_LOG_TYPE_DEFAULT, "%s %@ not starting request because delegate returned nil requestOptions", buf, 0x16u);
  }

  if (completionCopy)
  {
    v17 = [MEMORY[0x277CEF2A0] errorWithCode:2510 description:@"No UI request options." underlyingError:0];
    completionCopy[2](completionCopy, v17);
  }

LABEL_47:
  if (![optionsCopy isInitialBringUp] || objc_msgSend(optionsCopy, "isForUIFree"))
  {
    [(AFUISiriViewController *)self _presentRemoteViewController];
  }

  if ([optionsCopy isVisualIntelligenceRequest] && !self->_isSceneHostingVisualIntelligence)
  {
    delegate2 = [(AFUISiriViewController *)self delegate];
    requestCachedSceneHostedView = [delegate2 requestCachedSceneHostedView];
    tamaleView = self->_tamaleView;
    self->_tamaleView = requestCachedSceneHostedView;

    [(SiriSharedUITamaleView *)self->_tamaleView setDelegate:self];
    if (self->_tamaleView)
    {
      self->_tamaleViewWaitingForPresentation = 1;
    }

    else
    {
      v43 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v63 = "[AFUISiriViewController startRequestWithOptions:completion:]";
        _os_log_impl(&dword_241432000, v43, OS_LOG_TYPE_DEFAULT, "%s #vi - Creating Visual Intelligence Camera View", buf, 0xCu);
      }

      v44 = [objc_alloc(MEMORY[0x277D60128]) initWithDelegate:self];
      v45 = self->_tamaleView;
      self->_tamaleView = v44;

      delegate3 = [(AFUISiriViewController *)self delegate];
      [delegate3 siriViewController:self cacheSceneHostedView:self->_tamaleView];
    }

    delegate4 = [(AFUISiriViewController *)self delegate];
    sceneIdentifier = [(SiriSharedUITamaleView *)self->_tamaleView sceneIdentifier];
    bundleIdentifier = [(SiriSharedUITamaleView *)self->_tamaleView bundleIdentifier];
    [delegate4 siriViewController:self willStartHostingSceneWithIdentifier:sceneIdentifier bundleIdentifier:bundleIdentifier];

    _compactSiriView = [(AFUISiriViewController *)self _compactSiriView];
    [_compactSiriView setTamaleView:self->_tamaleView];

    _session4 = [(AFUISiriViewController *)self _session];
    _visualIntelligenceCameraDelegate = [(AFUISiriViewController *)self _visualIntelligenceCameraDelegate];
    [_session4 setVisualIntelligenceCameraDelegate:_visualIntelligenceCameraDelegate];

    [(AFUISiriViewController *)self setIsSceneHostingVisualIntelligence:1];
  }

  else if (([optionsCopy isVisualIntelligenceRequest] & 1) == 0 && self->_isPresentingVisualIntelligenceCamera)
  {
    _compactSiriView2 = [(AFUISiriViewController *)self _compactSiriView];
    [_compactSiriView2 siriWillPresentOverVisualIntelliengece];
  }

  if ([optionsCopy isForUIFree] && objc_msgSend(optionsCopy, "isInitialBringUp"))
  {
    [(AFUISiriViewController *)self _recordUIAppearance];
  }
}

void __61__AFUISiriViewController_startRequestWithOptions_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _remoteViewController];
  [v2 setRequestOptions:*(a1 + 32)];
}

void __61__AFUISiriViewController_startRequestWithOptions_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _remoteViewController];
  [v1 siriWillActivateFromSource:24];
}

- (void)stopRequestWithOptions:(id)options
{
  optionsCopy = options;
  _session = [(AFUISiriViewController *)self _session];
  [_session stopRequestWithOptions:optionsCopy];
}

- (void)didReceiveButtonUpWithRequestOptions:(id)options
{
  optionsCopy = options;
  delegate = [(AFUISiriViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(AFUISiriViewController *)self delegate];
    [delegate2 siriViewController:self didReceiveButtonUpWithRequestOptions:optionsCopy];
  }
}

- (void)updateRequestOptions:(id)options
{
  optionsCopy = options;
  _session = [(AFUISiriViewController *)self _session];
  [_session updateRequestOptions:optionsCopy];

  [(AFUISiriViewController *)self _setCurrentRequestOptions:optionsCopy];
}

- (void)_setCurrentRequestOptions:(id)options
{
  optionsCopy = options;
  if (([optionsCopy isEqual:self->_currentRequestOptions] & 1) == 0)
  {
    objc_storeStrong(&self->_currentRequestOptions, options);
  }
}

- (void)preloadPresentationBundleWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__AFUISiriViewController_preloadPresentationBundleWithIdentifier___block_invoke;
  v6[3] = &unk_278CD5858;
  objc_copyWeak(&v8, &location);
  v5 = identifierCopy;
  v7 = v5;
  [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __66__AFUISiriViewController_preloadPresentationBundleWithIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _remoteViewController];
  [v2 preloadPresentationBundleWithIdentifier:*(a1 + 32)];
}

- (void)showPresentationWithIdentifier:(id)identifier properties:(id)properties lockState:(unint64_t)state
{
  identifierCopy = identifier;
  v9 = [properties mutableCopy];
  v10 = MEMORY[0x277CCABB0];
  _configuration = [(AFUISiriViewController *)self _configuration];
  v12 = [v10 numberWithBool:{objc_msgSend(_configuration, "showsSensitiveUI")}];
  [v9 setObject:v12 forKey:@"AFUIPresentationPropertiesShowsSensitiveUIKey"];

  v13 = v9;
  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__AFUISiriViewController_showPresentationWithIdentifier_properties_lockState___block_invoke;
  v16[3] = &unk_278CD6818;
  objc_copyWeak(v20, &location);
  v14 = identifierCopy;
  v17 = v14;
  v15 = v13;
  v20[1] = state;
  v18 = v15;
  selfCopy = self;
  [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v16];

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
}

void __78__AFUISiriViewController_showPresentationWithIdentifier_properties_lockState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained _remoteViewController];
    [v3 showPresentationWithIdentifier:*(a1 + 32) properties:*(a1 + 40) lockState:*(a1 + 64)];

    [*(a1 + 48) _updateRemoteViewControllerStateForAppearance];
    WeakRetained = v4;
  }
}

- (void)setLockState:(unint64_t)state
{
  _session = [(AFUISiriViewController *)self _session];
  [_session setLockState:state];
}

- (void)handleViewFullyRevealed
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [AFUISiriViewController handleViewFullyRevealed];
  }

  _fullSiriView = [(AFUISiriViewController *)self _fullSiriView];
  [_fullSiriView setBackdropVisible:1];
}

- (void)shortTapActionWithRequestOptions:(id)options
{
  optionsCopy = options;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__AFUISiriViewController_shortTapActionWithRequestOptions___block_invoke;
  v6[3] = &unk_278CD5858;
  objc_copyWeak(&v8, &location);
  v5 = optionsCopy;
  v7 = v5;
  [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __59__AFUISiriViewController_shortTapActionWithRequestOptions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _remoteViewController];
  [v2 didReceiveShortTapActionWithRequestOptions:*(a1 + 32)];
}

- (void)presentationStateUpdatedFromPresentationState:(int64_t)state toPresentationState:(int64_t)presentationState
{
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __92__AFUISiriViewController_presentationStateUpdatedFromPresentationState_toPresentationState___block_invoke;
  v7[3] = &unk_278CD6698;
  objc_copyWeak(v8, &location);
  v8[1] = state;
  v8[2] = presentationState;
  [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v7];
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

void __92__AFUISiriViewController_presentationStateUpdatedFromPresentationState_toPresentationState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _remoteViewController];
  [v2 presentationStateUpdatedFromPresentationState:*(a1 + 40) toPresentationState:*(a1 + 48)];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  _compactSiriView = [(AFUISiriViewController *)self _compactSiriView];
  isBlurViewVisible = [_compactSiriView isBlurViewVisible];

  if (isBlurViewVisible && (SiriUIDeviceIsPad() & 1) == 0)
  {
    [(AFUISiriViewController *)self requestStatusBarVisible:width < height];
  }

  if (width < height)
  {
    v10 = 1;
  }

  else
  {
    v10 = 4;
  }

  _remoteViewController = [(AFUISiriViewController *)self _remoteViewController];
  [_remoteViewController orientationWillChangeTo:v10];

  _fullSiriView = [(AFUISiriViewController *)self _fullSiriView];
  [_fullSiriView setFlamesViewPaused:1];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__AFUISiriViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v15[3] = &unk_278CD6840;
  v15[4] = self;
  *&v15[5] = width;
  *&v15[6] = height;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__AFUISiriViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v14[3] = &unk_278CD6868;
  v14[4] = self;
  [coordinatorCopy animateAlongsideTransition:v15 completion:v14];
  v13.receiver = self;
  v13.super_class = AFUISiriViewController;
  [(AFUISiriViewController *)&v13 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

void __77__AFUISiriViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setFrame:{0.0, 0.0, *(a1 + 40), *(a1 + 48)}];
}

void __77__AFUISiriViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) _fullSiriView];
  [v1 setFlamesViewPaused:0];
}

- (void)_holdToTalkTriggerDidReleaseFromSource:(int64_t)source
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    _isInHoldToTalkMode = [(AFUISiriViewController *)self _isInHoldToTalkMode];
    _currentRequestOptions = [(AFUISiriViewController *)self _currentRequestOptions];
    v26 = 136315906;
    v27 = "[AFUISiriViewController _holdToTalkTriggerDidReleaseFromSource:]";
    v28 = 1024;
    *v29 = _isInHoldToTalkMode;
    *&v29[4] = 2112;
    *&v29[6] = _currentRequestOptions;
    *&v29[14] = 2048;
    *&v29[16] = source;
    _os_log_impl(&dword_241432000, v7, OS_LOG_TYPE_DEFAULT, "%s In HTTMode %d, Current options %@, source %ld", &v26, 0x26u);
  }

  _currentRequestOptions2 = [(AFUISiriViewController *)self _currentRequestOptions];
  requestSource = [_currentRequestOptions2 requestSource];

  if ([(AFUISiriViewController *)self _isInHoldToTalkMode]&& (requestSource == source || (requestSource & 0xFFFFFFFFFFFFFFFELL) == 6))
  {
    _canIgnoreHoldToTalkThreshold = [(AFUISiriViewController *)self _canIgnoreHoldToTalkThreshold];
    _holdToTalkThresholdHasElapsed = [(AFUISiriViewController *)self _holdToTalkThresholdHasElapsed];
    v14 = _holdToTalkThresholdHasElapsed;
    if (_canIgnoreHoldToTalkThreshold || _holdToTalkThresholdHasElapsed)
    {
      v15 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v16 = MEMORY[0x277CCABB0];
        v17 = v15;
        v18 = [v16 numberWithBool:_canIgnoreHoldToTalkThreshold];
        v19 = [MEMORY[0x277CCABB0] numberWithBool:v14];
        v20 = [MEMORY[0x277CCABB0] numberWithBool:{-[AFUISiriViewController _isInitialSpeechRequest](self, "_isInitialSpeechRequest")}];
        v26 = 136315906;
        v27 = "[AFUISiriViewController _holdToTalkTriggerDidReleaseFromSource:]";
        v28 = 2112;
        *v29 = v18;
        *&v29[8] = 2112;
        *&v29[10] = v19;
        *&v29[18] = 2112;
        *&v29[20] = v20;
        _os_log_impl(&dword_241432000, v17, OS_LOG_TYPE_DEFAULT, "%s Stopping recording on hold to talk request canIgnoreHoldToTalkThreshold %@, holdToTalkThresholdElapsed %@, isInitialSpeechRequest %@", &v26, 0x2Au);
      }

      v21 = objc_alloc(MEMORY[0x277D55198]);
      _uiPresentationIdentifier = [(AFUISiriViewController *)self _uiPresentationIdentifier];
      v23 = [v21 initWithRequestSource:requestSource uiPresentationIdentifier:_uiPresentationIdentifier];

      _currentRequestOptions3 = [(AFUISiriViewController *)self _currentRequestOptions];
      homeButtonUpFromBeep = [_currentRequestOptions3 homeButtonUpFromBeep];
      [v23 setHomeButtonUpFromBeep:homeButtonUpFromBeep];

      [v23 setInitialBringUp:{-[SASRequestOptions isInitialBringUp](self->_currentRequestOptions, "isInitialBringUp")}];
      [(AFUISiriViewController *)self _delayForHoldToTalkStopRequestsWithSource:source];
      [(AFUISiriViewController *)self _stopRequestWithOptions:v23 afterDelay:?];
    }

    else
    {
      [(AFUISiriViewController *)self _transitionToAutomaticEndpointMode];
    }
  }
}

- (void)tvRemoteSentButtonDownWhileListening
{
  if ([(SASRequestOptions *)self->_currentRequestOptions isATVRemotePTTEligible]&& [(AFUISiriViewController *)self isListening]&& ![(AFUISiriViewController *)self _isInHoldToTalkMode])
  {

    [(AFUISiriViewController *)self _transitionToManualEndpointMode];
  }
}

- (double)_delayForHoldToTalkStopRequestsWithSource:(int64_t)source
{
  result = 0.25;
  if (source <= 0x20 && ((1 << source) & 0x1C0800000) != 0)
  {
    AFPreferencesATVStopRecordingDelay();
    result = fmin(v4, 0.25);
    if (result < 0.0)
    {
      return 0.0;
    }
  }

  return result;
}

- (id)_uiPresentationIdentifier
{
  saeAvailable = [MEMORY[0x277CEF4D0] saeAvailable];
  if (self->_deviceIsInStarkMode)
  {
    return @"com.apple.siri.CarDisplay";
  }

  v5 = @"com.apple.siri.Compact";
  if (saeAvailable)
  {
    v5 = @"com.apple.siri.SystemAssistantExperience";
  }

  if (self->_eyesFree)
  {
    return @"com.apple.siri.EyesFree";
  }

  else
  {
    return v5;
  }
}

- (BOOL)_canIgnoreHoldToTalkThreshold
{
  selfCopy = self;
  _currentRequestOptions = [(AFUISiriViewController *)self _currentRequestOptions];
  requestSource = [_currentRequestOptions requestSource];

  LOBYTE(v6) = requestSource == 23 || requestSource == 32;
  if ([MEMORY[0x277CEF2A8] isTVPushToTalkEnabled])
  {
    if (requestSource == 32 || requestSource == 23)
    {
      selfCopy = [selfCopy _currentRequestOptions];
      v6 = [selfCopy isATVRemotePTTEligible] ^ 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }

    if (requestSource == 32 || requestSource == 23)
    {
    }
  }

  return v6;
}

- (BOOL)_isInitialSpeechRequest
{
  _currentRequestOptions = [(AFUISiriViewController *)self _currentRequestOptions];
  if ([_currentRequestOptions isInitialBringUp])
  {
    _currentRequestOptions2 = [(AFUISiriViewController *)self _currentRequestOptions];
    v5 = [_currentRequestOptions2 inputType] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_holdToTalkThresholdHasElapsed
{
  v26 = *MEMORY[0x277D85DE8];
  _recordingStartedTimeValue = [(AFUISiriViewController *)self _recordingStartedTimeValue];
  if (!_recordingStartedTimeValue)
  {
    v19 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315138;
      v23 = "[AFUISiriViewController _holdToTalkThresholdHasElapsed]";
      v20 = "%s Recording start time was not set";
LABEL_14:
      _os_log_impl(&dword_241432000, v19, OS_LOG_TYPE_DEFAULT, v20, &v22, 0xCu);
    }

LABEL_15:
    v18 = 0;
    goto LABEL_16;
  }

  if (!self->_recordingStartedOnRoute)
  {
    v19 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315138;
      v23 = "[AFUISiriViewController _holdToTalkThresholdHasElapsed]";
      v20 = "%s Recording has not started on the audio route";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  processInfo = [MEMORY[0x277CCAC38] processInfo];
  [processInfo systemUptime];
  v6 = v5;

  [_recordingStartedTimeValue doubleValue];
  v8 = v7;
  v9 = MEMORY[0x277CEF098];
  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315394;
    v23 = "[AFUISiriViewController _holdToTalkThresholdHasElapsed]";
    v24 = 2048;
    v25 = v6;
    _os_log_impl(&dword_241432000, v10, OS_LOG_TYPE_DEFAULT, "%s Button up time: %f", &v22, 0x16u);
  }

  v11 = v6 - v8;
  v12 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315394;
    v23 = "[AFUISiriViewController _holdToTalkThresholdHasElapsed]";
    v24 = 2048;
    v25 = v11;
    _os_log_impl(&dword_241432000, v12, OS_LOG_TYPE_DEFAULT, "%s Start recording to button up time: %f", &v22, 0x16u);
  }

  _currentRequestOptions = [(AFUISiriViewController *)self _currentRequestOptions];
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
  [_currentRequestOptions setHomeButtonUpFromBeep:v14];

  [(AFUISiriViewController *)self _manualEndpointingThreshold];
  v16 = v15;
  v17 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315394;
    v23 = "[AFUISiriViewController _holdToTalkThresholdHasElapsed]";
    v24 = 2048;
    v25 = v16;
    _os_log_impl(&dword_241432000, v17, OS_LOG_TYPE_DEFAULT, "%s Manual endpointing threshold: %f", &v22, 0x16u);
  }

  v18 = v11 > v16;
LABEL_16:

  return v18;
}

- (void)_enterHoldToTalkMode
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[AFUISiriViewController _enterHoldToTalkMode]";
    _os_log_impl(&dword_241432000, v3, OS_LOG_TYPE_DEFAULT, "%s Entering HTT mode", &v5, 0xCu);
  }

  [(AFUISiriViewController *)self _setInHoldToTalkMode:1];
  if (([*MEMORY[0x277D76620] isPPTAvailable] & 1) == 0)
  {
    _fullSiriView = [(AFUISiriViewController *)self _fullSiriView];
    [_fullSiriView configureReportBugButtonToShowHoldToTalkState:1];
  }
}

- (void)_transitionToAutomaticEndpointMode
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[AFUISiriViewController _transitionToAutomaticEndpointMode]";
    _os_log_impl(&dword_241432000, v3, OS_LOG_TYPE_DEFAULT, "%s Transitioning to Automatic Endpointing", &v6, 0xCu);
  }

  _currentRequestOptions = [(AFUISiriViewController *)self _currentRequestOptions];
  v5 = [_currentRequestOptions copy];

  [v5 setUseAutomaticEndpointing:1];
  [(AFUISiriViewController *)self updateRequestOptions:v5];
  [(AFUISiriViewController *)self _exitHoldToTalkMode];
}

- (void)_transitionToManualEndpointMode
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[AFUISiriViewController _transitionToManualEndpointMode]";
    _os_log_impl(&dword_241432000, v3, OS_LOG_TYPE_DEFAULT, "%s Transitioning to HTT mode", &v6, 0xCu);
  }

  _currentRequestOptions = [(AFUISiriViewController *)self _currentRequestOptions];
  v5 = [_currentRequestOptions copy];

  [v5 setUseAutomaticEndpointing:0];
  [(AFUISiriViewController *)self updateRequestOptions:v5];
  [(AFUISiriViewController *)self _enterHoldToTalkMode];
}

- (void)_exitHoldToTalkMode
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[AFUISiriViewController _exitHoldToTalkMode]";
    _os_log_impl(&dword_241432000, v3, OS_LOG_TYPE_DEFAULT, "%s Exiting HTT mode", &v5, 0xCu);
  }

  [(AFUISiriViewController *)self _setInHoldToTalkMode:0];
  if (([*MEMORY[0x277D76620] isPPTAvailable] & 1) == 0)
  {
    _fullSiriView = [(AFUISiriViewController *)self _fullSiriView];
    [_fullSiriView configureReportBugButtonToShowHoldToTalkState:0];
  }
}

- (double)_manualEndpointingThreshold
{
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  manualEndpointingThreshold = [mEMORY[0x277CEF368] manualEndpointingThreshold];

  if (manualEndpointingThreshold)
  {
    [manualEndpointingThreshold doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.25;
  }

  return v5;
}

- (void)_activationTriggerDidRelease:(id)release
{
  v9 = *MEMORY[0x277D85DE8];
  releaseCopy = release;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[AFUISiriViewController _activationTriggerDidRelease:]";
    _os_log_impl(&dword_241432000, v5, OS_LOG_TYPE_DEFAULT, "%s Trigger target did release", &v7, 0xCu);
  }

  [releaseCopy removeTriggerTarget:self];
  options = [releaseCopy options];
  -[AFUISiriViewController _holdToTalkTriggerDidReleaseFromSource:](self, "_holdToTalkTriggerDidReleaseFromSource:", [options requestSource]);
}

- (void)startRequestWithActivationTrigger:(id)trigger completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  completionCopy = completion;
  v8 = MEMORY[0x277CEF098];
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = v9;
    v12 = [v10 numberWithInteger:{objc_msgSend(triggerCopy, "state")}];
    v20 = 136315394;
    v21 = "[AFUISiriViewController startRequestWithActivationTrigger:completion:]";
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&dword_241432000, v11, OS_LOG_TYPE_DEFAULT, "%s Starting request with trigger %@", &v20, 0x16u);
  }

  options = [triggerCopy options];
  [(AFUISiriViewController *)self startRequestWithOptions:options completion:completionCopy];

  if ([triggerCopy state] == 1)
  {
    v14 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315138;
      v21 = "[AFUISiriViewController startRequestWithActivationTrigger:completion:]";
      _os_log_impl(&dword_241432000, v14, OS_LOG_TYPE_DEFAULT, "%s Adding trigger target", &v20, 0xCu);
    }

    [triggerCopy addTriggerTarget:self action:sel__activationTriggerDidRelease_];
    inputAccessoryView = [(AFUISiriViewController *)self inputAccessoryView];
    if (inputAccessoryView && (v16 = inputAccessoryView, -[AFUISiriViewController inputAccessoryView](self, "inputAccessoryView"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 isHidden], v17, v16, !v18))
    {
      inputAccessoryView2 = [(AFUISiriViewController *)self inputAccessoryView];
      [inputAccessoryView2 becomeFirstResponder];
    }

    else
    {
      [(AFUISiriViewController *)self _enterHoldToTalkMode];
    }
  }
}

- (void)_stopRequestWithOptions:(id)options afterDelay:(double)delay
{
  optionsCopy = options;
  v7 = fmin(delay, 0.25);
  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  v8 = dispatch_time(0, (v7 * 1000000000.0));
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__AFUISiriViewController__stopRequestWithOptions_afterDelay___block_invoke;
  v10[3] = &unk_278CD6418;
  v10[4] = self;
  v11 = optionsCopy;
  v9 = optionsCopy;
  dispatch_after(v8, MEMORY[0x277D85CD0], v10);
}

- (BOOL)isPreventingActivationGesture
{
  _session = [(AFUISiriViewController *)self _session];
  isPreventingActivationGesture = [_session isPreventingActivationGesture];

  return isPreventingActivationGesture;
}

- (BOOL)isListening
{
  _session = [(AFUISiriViewController *)self _session];
  isListening = [_session isListening];

  return isListening;
}

- (void)endSession
{
  v16 = *MEMORY[0x277D85DE8];
  delegate = [(AFUISiriViewController *)self delegate];
  if (!delegate || (v4 = delegate, -[AFUISiriViewController delegate](self, "delegate"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 siriViewControllerShouldEndSession:self], v5, v4, v6))
  {
    requestCancellationReason = self->_requestCancellationReason;
    self->_requestCancellationReason = 0;
    if (requestCancellationReason)
    {
      v8 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        v10 = AFRequestCancellationReasonGetName();
        v12 = 136315394;
        v13 = "[AFUISiriViewController endSession]";
        v14 = 2112;
        v15 = v10;
        _os_log_impl(&dword_241432000, v9, OS_LOG_TYPE_DEFAULT, "%s #cancellationReason: endForReason %@", &v12, 0x16u);
      }
    }

    _session = [(AFUISiriViewController *)self _session];
    [_session endForReason:requestCancellationReason];
  }
}

- (void)setWaitingForTelephonyToStart:(BOOL)start
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__AFUISiriViewController_setWaitingForTelephonyToStart___block_invoke;
  v5[3] = &unk_278CD5708;
  objc_copyWeak(&v6, &location);
  startCopy = start;
  [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __56__AFUISiriViewController_setWaitingForTelephonyToStart___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _remoteViewController];
  [v2 setWaitingForTelephonyToStart:*(a1 + 40)];
}

- (void)telephonyRequestCompleted
{
  _session = [(AFUISiriViewController *)self _session];
  [_session telephonyRequestCompleted];
}

- (float)audioRecordingPowerLevelForSiriView:(id)view
{
  _session = [(AFUISiriViewController *)self _session];
  [_session recordingPowerLevel];
  v5 = v4;

  return v5;
}

- (void)_handleReportBugAction
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__AFUISiriViewController__handleReportBugAction__block_invoke;
  v3[3] = &unk_278CD55A0;
  objc_copyWeak(&v4, &location);
  [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __48__AFUISiriViewController__handleReportBugAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _remoteViewController];
  [v1 didReceiveReportBugAction];
}

- (void)_handleReportBugLongPressAction
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__AFUISiriViewController__handleReportBugLongPressAction__block_invoke;
  v3[3] = &unk_278CD55A0;
  objc_copyWeak(&v4, &location);
  [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __57__AFUISiriViewController__handleReportBugLongPressAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _remoteViewController];
  [v1 didReceiveBugButtonLongPress];
}

- (void)_handleHelpAction
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __43__AFUISiriViewController__handleHelpAction__block_invoke;
  v3[3] = &unk_278CD55A0;
  objc_copyWeak(&v4, &location);
  [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __43__AFUISiriViewController__handleHelpAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _remoteViewController];
  [v1 didReceiveHelpAction];
}

- (BOOL)siriView:(id)view attemptUnlockWithPassword:(id)password
{
  passwordCopy = password;
  delegate = [(AFUISiriViewController *)self delegate];
  LOBYTE(self) = [delegate siriViewController:self attemptUnlockWithPassword:passwordCopy];

  return self;
}

- (id)assistantVersionForSiriView:(id)view
{
  siriSessionInfo = [(AFUISiriSession *)self->_session siriSessionInfo];
  assistantVersion = [siriSessionInfo assistantVersion];

  return assistantVersion;
}

- (id)activeAccountForSiriView:(id)view
{
  siriSessionInfo = [(AFUISiriSession *)self->_session siriSessionInfo];
  activeAccount = [siriSessionInfo activeAccount];

  return activeAccount;
}

- (int64_t)userAccountCountForSiriView:(id)view
{
  siriSessionInfo = [(AFUISiriSession *)self->_session siriSessionInfo];
  userAccountCount = [siriSessionInfo userAccountCount];
  integerValue = [userAccountCount integerValue];

  return integerValue;
}

- (void)_setShowAudioRoutePicker:(BOOL)picker
{
  if (picker)
  {
    v4 = ![(AFUISiriViewController *)self isDeviceInStarkMode];
  }

  else
  {
    v4 = 0;
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__AFUISiriViewController__setShowAudioRoutePicker___block_invoke;
  v5[3] = &unk_278CD5578;
  v5[4] = self;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __51__AFUISiriViewController__setShowAudioRoutePicker___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _fullSiriView];
  [v2 setShowAudioRoutePicker:*(a1 + 40)];
}

- (void)_setAudioRoutePickerBluetoothOn:(BOOL)on
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__AFUISiriViewController__setAudioRoutePickerBluetoothOn___block_invoke;
  v3[3] = &unk_278CD5578;
  v3[4] = self;
  onCopy = on;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __58__AFUISiriViewController__setAudioRoutePickerBluetoothOn___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _fullSiriView];
  [v2 setAudioRoutePickerBluetoothOn:*(a1 + 40)];
}

- (void)_didDetectAudioRoutePickerTap
{
  _session = [(AFUISiriViewController *)self _session];
  [_session cancelRequest];

  if (!self->_deviceIsInStarkMode)
  {
    _routePickerController = [(AFUISiriViewController *)self _routePickerController];
    [_routePickerController showPickerFromViewController:self animated:1];
  }
}

- (id)_routePickerController
{
  if (!self->_deviceIsInStarkMode && !self->_routePickerController)
  {
    v3 = objc_alloc(MEMORY[0x277D61978]);
    v4 = [v3 initWithCategory:*MEMORY[0x277CEF5D8] mode:@"SpeechRecognition" delegate:self];
    routePickerController = self->_routePickerController;
    self->_routePickerController = v4;
  }

  v6 = self->_routePickerController;

  return v6;
}

- (void)routePickerController:(id)controller hasRoutesToPick:(BOOL)pick
{
  pickCopy = pick;
  controllerCopy = controller;
  [(AFUISiriViewController *)self _setShowAudioRoutePicker:pickCopy];
  if (pickCopy)
  {
    -[AFUISiriViewController _setAudioRoutePickerBluetoothOn:](self, "_setAudioRoutePickerBluetoothOn:", [controllerCopy bluetoothIsPicked]);
  }
}

- (void)routePickerControllerWillShow:(id)show
{
  _session = [(AFUISiriViewController *)self _session];
  [_session audioRoutePickerWillShow];
}

- (void)routePickerControllerWillDismiss:(id)dismiss
{
  _session = [(AFUISiriViewController *)self _session];
  [_session audioRoutePickerWillDismiss];
}

- (int64_t)getDeviceOrientation:(id)orientation
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  orientation = [currentDevice orientation];

  if ((orientation - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_241494848[orientation - 1];
  }
}

- (BOOL)recentButtonPressActivityDetected:(id)detected
{
  dataSource = [(AFUISiriViewController *)self dataSource];
  v5 = [dataSource getDeviceEngagementEvents:self forDeviceEngagementTimeWindow:10.0];

  LOBYTE(dataSource) = [v5 containsObject:&unk_28532BD60];
  return dataSource;
}

- (BOOL)isAmbientPresented:(id)presented
{
  delegate = [(AFUISiriViewController *)self delegate];
  isAmbientPresented = [delegate isAmbientPresented];

  return isAmbientPresented;
}

- (BOOL)recentTouchScreenActivityDetected:(id)detected
{
  dataSource = [(AFUISiriViewController *)self dataSource];
  v5 = [dataSource getDeviceEngagementEvents:self forDeviceEngagementTimeWindow:10.0];

  LOBYTE(dataSource) = [v5 containsObject:&unk_28532BD78];
  return dataSource;
}

- (id)bulletinsForSiriSession:(id)session
{
  dataSource = [(AFUISiriViewController *)self dataSource];
  v5 = [dataSource bulletinsForSiriViewController:self];

  return v5;
}

- (id)contextAppInfosForSiriSession:(id)session
{
  dataSource = [(AFUISiriViewController *)self dataSource];
  v5 = [dataSource contextAppInfosForSiriViewController:self];

  return v5;
}

- (id)currentCarPlaySupportedOEMAppIDListForSiriSession:(id)session
{
  dataSource = [(AFUISiriViewController *)self dataSource];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    dataSource2 = [(AFUISiriViewController *)self dataSource];
    v7 = [dataSource2 currentCarPlaySupportedOEMAppsForSiriViewController:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)starkAppBundleIdentifierContextForSiriSession:(id)session
{
  dataSource = [(AFUISiriViewController *)self dataSource];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    dataSource2 = [(AFUISiriViewController *)self dataSource];
    v7 = [dataSource2 starkAppBundleIdentifierContextForSiriViewController:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)lockStateForSiriSession:(id)session
{
  dataSource = [(AFUISiriViewController *)self dataSource];
  v5 = [dataSource lockStateForSiriViewController:self];

  return v5;
}

- (int64_t)carPlayEnhancedVoiceTriggerModeForSiriSession:(id)session
{
  mEMORY[0x277D551B0] = [MEMORY[0x277D551B0] sharedSystemState];
  carPlayEnhancedVoiceTriggerMode = [mEMORY[0x277D551B0] carPlayEnhancedVoiceTriggerMode];

  return carPlayEnhancedVoiceTriggerMode;
}

- (void)siriSession:(id)session willProcessAppLaunchWithBundleIdentifier:(id)identifier
{
  v10 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[AFUISiriViewController siriSession:willProcessAppLaunchWithBundleIdentifier:]";
    _os_log_impl(&dword_241432000, v6, OS_LOG_TYPE_DEFAULT, "%s #activation", &v8, 0xCu);
  }

  self->_isProcessingAppLaunch = 1;
  delegate = [(AFUISiriViewController *)self delegate];
  [delegate siriViewController:self willProcessAppLaunchWithBundleIdentifier:identifierCopy];
}

- (void)siriSession:(id)session failedToLaunchAppWithBundleIdentifier:(id)identifier
{
  v10 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[AFUISiriViewController siriSession:failedToLaunchAppWithBundleIdentifier:]";
    _os_log_impl(&dword_241432000, v6, OS_LOG_TYPE_DEFAULT, "%s #activation", &v8, 0xCu);
  }

  self->_isProcessingAppLaunch = 0;
  delegate = [(AFUISiriViewController *)self delegate];
  [delegate siriViewController:self failedToLaunchAppWithBundleIdentifier:identifierCopy];
}

- (void)siriSessionAudioRecordingDidChangePowerLevel:(float)level
{
  _compactSiriView = [(AFUISiriViewController *)self _compactSiriView];
  *&v6 = level;
  [_compactSiriView setInputPowerLevel:v6];

  _carPlaySiriView = [(AFUISiriViewController *)self _carPlaySiriView];
  *&v7 = level;
  [_carPlaySiriView setInputPowerLevel:v7];
}

- (void)siriSessionAudioRecordingDidChangePowerLevel:(float)level peakLevel:(float)peakLevel
{
  _compactSiriView = [(AFUISiriViewController *)self _compactSiriView];
  *&v7 = level;
  [_compactSiriView updateVolumeInputdB:v7];

  _carPlaySiriView = [(AFUISiriViewController *)self _carPlaySiriView];
  *&v8 = level;
  [_carPlaySiriView updateVolumeInputdB:v8];
}

- (void)siriSessionAudioOutputDidChangePowerLevel:(float)level
{
  _compactSiriView = [(AFUISiriViewController *)self _compactSiriView];
  *&v6 = level;
  [_compactSiriView setOutputPowerLevel:v6];

  _carPlaySiriView = [(AFUISiriViewController *)self _carPlaySiriView];
  *&v7 = level;
  [_carPlaySiriView setOutputPowerLevel:v7];
}

- (void)siriSession:(id)session didChangeToState:(int64_t)state event:(int64_t)event machAbsoluteTransitionTime:(double)time
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = [(AFUISiriSession *)self->_session attendingState:session];
  if ((event - 8) < 0xFFFFFFFFFFFFFFFBLL)
  {
    goto LABEL_15;
  }

  if (state)
  {
    goto LABEL_15;
  }

  if (v9)
  {
    goto LABEL_15;
  }

  delegate = [(AFUISiriViewController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if ((v11 & 1) == 0)
  {
    goto LABEL_15;
  }

  if (![(SASRequestOptions *)self->_currentRequestOptions isForBluetoothCar])
  {
    isVisualIntelligenceRequest = [(SASRequestOptions *)self->_currentRequestOptions isVisualIntelligenceRequest];
    v17 = *MEMORY[0x277CEF098];
    v18 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
    if (isVisualIntelligenceRequest)
    {
      if (v18)
      {
        v19 = v17;
        v20 = SRUIFSiriSessionStateGetDescription();
        v21 = SRUIFSiriSessionEventGetDescription();
        *v30 = 136315650;
        *&v30[4] = "[AFUISiriViewController siriSession:didChangeToState:event:machAbsoluteTransitionTime:]";
        *&v30[12] = 2112;
        *&v30[14] = v20;
        *&v30[22] = 2112;
        v31 = v21;
        v22 = "%s siriSession didChangeToState %@ by event %@ while launching visual intelligence";
LABEL_13:
        _os_log_impl(&dword_241432000, v19, OS_LOG_TYPE_DEFAULT, v22, v30, 0x20u);
      }
    }

    else if (v18)
    {
      v19 = v17;
      v20 = SRUIFSiriSessionStateGetDescription();
      v21 = SRUIFSiriSessionEventGetDescription();
      *v30 = 136315650;
      *&v30[4] = "[AFUISiriViewController siriSession:didChangeToState:event:machAbsoluteTransitionTime:]";
      *&v30[12] = 2112;
      *&v30[14] = v20;
      *&v30[22] = 2112;
      v31 = v21;
      v22 = "%s siriSession didChangeToState %@ by event %@, calling siriViewControllerDidStopListening to animate out effect view";
      goto LABEL_13;
    }

    v23 = [(AFUISiriViewController *)self delegate:*v30];
    [v23 siriViewControllerDidStopListening:self];

    goto LABEL_15;
  }

  v12 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = SRUIFSiriSessionStateGetDescription();
    v15 = SRUIFSiriSessionEventGetDescription();
    *v30 = 136315650;
    *&v30[4] = "[AFUISiriViewController siriSession:didChangeToState:event:machAbsoluteTransitionTime:]";
    *&v30[12] = 2112;
    *&v30[14] = v14;
    *&v30[22] = 2112;
    v31 = v15;
    _os_log_impl(&dword_241432000, v13, OS_LOG_TYPE_DEFAULT, "%s siriSession didChangeToState %@ by event %@, skip siriViewControllerDidStopListening when we are in a bluetooth car", v30, 0x20u);
  }

LABEL_15:
  currentRequestSource = self->_currentRequestSource;
  if (currentRequestSource == 21)
  {
    if (!self->_presentedConversationFromBreadcrumb)
    {
      return;
    }
  }

  else if (state == 2 && currentRequestSource == 24)
  {
    return;
  }

  if (self->_isProcessingAppLaunch && ![(AFUISiriViewController *)self isDeviceInStarkMode])
  {
    v29 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 136315138;
      *&v30[4] = "[AFUISiriViewController siriSession:didChangeToState:event:machAbsoluteTransitionTime:]";
      _os_log_impl(&dword_241432000, v29, OS_LOG_TYPE_DEFAULT, "%s #activation: trying to change session state while processing an app launch", v30, 0xCu);
    }
  }

  else
  {
    _siriView = [(AFUISiriViewController *)self _siriView];
    [_siriView setSiriSessionState:state];

    if (state == 1)
    {
      delegate2 = [(AFUISiriViewController *)self delegate];
      v27 = objc_opt_respondsToSelector();

      if (v27)
      {
        delegate3 = [(AFUISiriViewController *)self delegate];
        [delegate3 siriViewControllerDidChangeToListeningMode:self];
      }
    }
  }
}

- (void)siriSessionDidResetContext:(id)context
{
  delegate = [(AFUISiriViewController *)self delegate];
  [delegate siriViewControllerSessionDidResetContext:self];
}

- (void)siriSessionWillEnd:(id)end
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[AFUISiriViewController siriSessionWillEnd:]";
    _os_log_impl(&dword_241432000, v4, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  [(SRUIFDelayedActionCommandCache *)self->_delayedActionCommandCache performDismissalCommands];
}

- (void)siriSessionDidEnd:(id)end
{
  v18 = *MEMORY[0x277D85DE8];
  endCopy = end;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[AFUISiriViewController siriSessionDidEnd:]";
    _os_log_impl(&dword_241432000, v6, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  delegate = [(AFUISiriViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(AFUISiriViewController *)self delegate];
    [delegate2 siriViewController:self didEndSession:endCopy];
  }

  session = self->_session;
  self->_session = 0;

  v11 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[AFUISiriViewController siriSessionDidEnd:]";
    _os_log_impl(&dword_241432000, v11, OS_LOG_TYPE_DEFAULT, "%s Session released from AFUISiriViewController", buf, 0xCu);
  }

  _remoteViewController = [(AFUISiriViewController *)self _remoteViewController];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __44__AFUISiriViewController_siriSessionDidEnd___block_invoke;
  v14[3] = &unk_278CD5618;
  v15 = _remoteViewController;
  v13 = _remoteViewController;
  [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v14];
}

- (void)siriSessionDidUpdateSessionInfo:(id)info
{
  _fullSiriView = [(AFUISiriViewController *)self _fullSiriView];
  [_fullSiriView reloadData];
}

- (void)siriSession:(id)session speechRecordingDidBeginOnAVRecordRoute:(id)route
{
  v22 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  routeCopy = route;
  v8 = MEMORY[0x277CEF098];
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 136315394;
    *&v21[4] = "[AFUISiriViewController siriSession:speechRecordingDidBeginOnAVRecordRoute:]";
    *&v21[12] = 2112;
    *&v21[14] = routeCopy;
    _os_log_impl(&dword_241432000, v9, OS_LOG_TYPE_DEFAULT, "%s Speech recording began on audio route: %@", v21, 0x16u);
  }

  if ([routeCopy isEqualToString:*MEMORY[0x277CB8168]])
  {
    v10 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 136315138;
      *&v21[4] = "[AFUISiriViewController siriSession:speechRecordingDidBeginOnAVRecordRoute:]";
      v11 = "%s Audio route changed to BluetoothHFP";
LABEL_9:
      _os_log_impl(&dword_241432000, v10, OS_LOG_TYPE_DEFAULT, v11, v21, 0xCu);
    }
  }

  else
  {
    _recordingStartedTimeValue = [(AFUISiriViewController *)self _recordingStartedTimeValue];

    if (_recordingStartedTimeValue)
    {
      goto LABEL_15;
    }

    v10 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 136315138;
      *&v21[4] = "[AFUISiriViewController siriSession:speechRecordingDidBeginOnAVRecordRoute:]";
      v11 = "%s Recording start time is not set";
      goto LABEL_9;
    }
  }

  v13 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 136315138;
    *&v21[4] = "[AFUISiriViewController siriSession:speechRecordingDidBeginOnAVRecordRoute:]";
    _os_log_impl(&dword_241432000, v13, OS_LOG_TYPE_DEFAULT, "%s Recording start time should be updated", v21, 0xCu);
  }

  v14 = MEMORY[0x277CCABB0];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  [processInfo systemUptime];
  v16 = [v14 numberWithDouble:?];

  v17 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 136315394;
    *&v21[4] = "[AFUISiriViewController siriSession:speechRecordingDidBeginOnAVRecordRoute:]";
    *&v21[12] = 2112;
    *&v21[14] = v16;
    _os_log_impl(&dword_241432000, v17, OS_LOG_TYPE_DEFAULT, "%s Updating recording start time to: %@", v21, 0x16u);
  }

  [(AFUISiriViewController *)self _setRecordingStartedTimeValue:v16];

LABEL_15:
  [(AFUISiriViewController *)self _presentDeferredFlamesViewIfNecessary];
  _fullSiriView = [(AFUISiriViewController *)self _fullSiriView];
  [_fullSiriView setFlamesViewPaused:0];

  _fullSiriView2 = [(AFUISiriViewController *)self _fullSiriView];
  [_fullSiriView2 setupOrbIfNeeded];

  _fullSiriView3 = [(AFUISiriViewController *)self _fullSiriView];
  [_fullSiriView3 setHelpButtonDeferred:0];

  self->_recordingStartedOnRoute = 1;
}

- (void)siriSessionDidFinishRequestWithError:(id)error
{
  errorCopy = error;
  delegate = [(AFUISiriViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(AFUISiriViewController *)self delegate];
    [delegate2 siriViewController:self didCompleteRequestWithError:errorCopy];
  }
}

- (void)siriSessionShouldExtendAudioSessionForImminentPhoneCall
{
  delegate = [(AFUISiriViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(AFUISiriViewController *)self delegate];
    [delegate2 siriSessionShouldExtendAudioSessionForImminentPhoneCall];
  }
}

- (void)siriSessionShouldEndExtendAudioSessionForImminentPhoneCall
{
  delegate = [(AFUISiriViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(AFUISiriViewController *)self delegate];
    [delegate2 siriSessionShouldEndExtendAudioSessionForImminentPhoneCall];
  }
}

- (BOOL)shouldNonLocalDelegateHandlePunchouts
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = v3;
    v6 = [v4 numberWithBool:{-[AFUISiriViewController isVisible](self, "isVisible")}];
    v8 = 136315394;
    v9 = "[AFUISiriViewController shouldNonLocalDelegateHandlePunchouts]";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_241432000, v5, OS_LOG_TYPE_DEFAULT, "%s shouldNonLocalDelegateHandlePunchouts isVisible: %@", &v8, 0x16u);
  }

  return [(AFUISiriViewController *)self isVisible];
}

- (void)handlePunchoutCommand:(id)command completion:(id)completion
{
  completionCopy = completion;
  commandCopy = command;
  launchOptions = [commandCopy launchOptions];
  v9 = [launchOptions containsObject:*MEMORY[0x277D48B18]];

  delegate = [(AFUISiriViewController *)self delegate];
  punchOutUri = [commandCopy punchOutUri];
  bundleId = [commandCopy bundleId];

  [delegate openURL:punchOutUri bundleId:bundleId inPlace:v9 completion:completionCopy];
}

- (void)siriSessionImmersiveExperienceRequested
{
  if ((SiriUIDeviceIsPad() & 1) == 0 && !self->_immersiveExperienceOn)
  {
    [(AFUISiriViewController *)self setShouldDismissForTapOutsideContent:0];
    [(AFUISiriViewController *)self setShouldDismissForTapsOutsideContent:0];
    [(AFUISiriViewController *)self setShouldDismissForSwipesOutsideContent:0];
    self->_immersiveExperienceOn = 1;
  }
}

- (void)siriSessionDidReactivateFromFlexibleFollowups
{
  delegate = [(AFUISiriViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(AFUISiriViewController *)self delegate];
    [delegate2 siriViewControllerDidReactivateFromFlexibleFollowups];
  }
}

- (void)siriSessionDidReceiveTakeScreenshotCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  if ([commandCopy shouldHideSiri])
  {
    view = [(AFUISiriViewController *)self view];
    window = [view window];
    layer = [window layer];
    [layer setDisableUpdateMask:2];
  }

  objc_initWeak(&location, self);
  _remoteViewController = [(AFUISiriViewController *)self _remoteViewController];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__AFUISiriViewController_siriSessionDidReceiveTakeScreenshotCommand_completion___block_invoke;
  v13[3] = &unk_278CD6890;
  objc_copyWeak(&v15, &location);
  v12 = completionCopy;
  v14 = v12;
  [_remoteViewController takeScreenshotWithCompletion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __80__AFUISiriViewController_siriSessionDidReceiveTakeScreenshotCommand_completion___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained view];
  v6 = [v5 window];
  v7 = [v6 layer];
  [v7 setDisableUpdateMask:0];

  if (*(a1 + 32))
  {
    v8 = 0x277D47218;
    if (!a2)
    {
      v8 = 0x277D47208;
    }

    v9 = objc_alloc_init(*v8);
    (*(*(a1 + 32) + 16))();
  }
}

- (void)siriSessionDidReceiveSetUpdateMaskCommand:(id)command completion:(id)completion
{
  completionCopy = completion;
  LODWORD(command) = [command shouldHideSiri];
  view = [(AFUISiriViewController *)self view];
  window = [view window];
  layer = [window layer];
  v9 = layer;
  if (command)
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  [layer setDisableUpdateMask:v10];

  if (completionCopy)
  {
    v11 = objc_alloc_init(MEMORY[0x277D47218]);
    completionCopy[2](completionCopy, v11);
  }
}

- (void)siriSessionDidReceiveStartScreenRecordingCommand:(id)command completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  completionCopy = completion;
  mEMORY[0x277CDB6A8] = [MEMORY[0x277CDB6A8] sharedRecorder];
  if ([mEMORY[0x277CDB6A8] isRecording])
  {
    v9 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "[AFUISiriViewController siriSessionDidReceiveStartScreenRecordingCommand:completion:]";
      _os_log_impl(&dword_241432000, v9, OS_LOG_TYPE_DEFAULT, "%s Unable to start recording as it is already in progress", buf, 0xCu);
    }

    v10 = MEMORY[0x277D47208];
    aceId = [commandCopy aceId];
    v12 = [v10 sruif_commandFailedWithRefId:aceId];

    completionCopy[2](completionCopy, v12);
  }

  else
  {
    objc_initWeak(buf, self);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __86__AFUISiriViewController_siriSessionDidReceiveStartScreenRecordingCommand_completion___block_invoke;
    v13[3] = &unk_278CD68B8;
    objc_copyWeak(&v16, buf);
    v15 = completionCopy;
    v14 = commandCopy;
    [mEMORY[0x277CDB6A8] startSystemRecordingWithMicrophoneEnabled:0 handler:v13];

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }
}

void __86__AFUISiriViewController_siriSessionDidReceiveStartScreenRecordingCommand_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (v3)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __86__AFUISiriViewController_siriSessionDidReceiveStartScreenRecordingCommand_completion___block_invoke_cold_1();
    }

    v5 = a1 + 40;
    if (*(a1 + 40))
    {
      v6 = MEMORY[0x277D47208];
      v7 = [*(a1 + 32) aceId];
      v8 = [v6 sruif_commandFailedWithRefId:v7];
LABEL_10:
      v11 = v8;

      (*(*v5 + 16))();
    }
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[AFUISiriViewController siriSessionDidReceiveStartScreenRecordingCommand:completion:]_block_invoke";
      _os_log_impl(&dword_241432000, v4, OS_LOG_TYPE_DEFAULT, "%s Recording successfully started", &v12, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _dismissWithReason:9];

    v5 = a1 + 40;
    if (*(a1 + 40))
    {
      v10 = MEMORY[0x277D47218];
      v7 = [*(a1 + 32) aceId];
      v8 = [v10 sruif_commandSucceededWithRefId:v7];
      goto LABEL_10;
    }
  }
}

- (void)siriSessionDidReceiveStopScreenRecordingCommand:(id)command completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  completionCopy = completion;
  mEMORY[0x277CDB6A8] = [MEMORY[0x277CDB6A8] sharedRecorder];
  if ([mEMORY[0x277CDB6A8] isRecording])
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __85__AFUISiriViewController_siriSessionDidReceiveStopScreenRecordingCommand_completion___block_invoke;
    v12[3] = &unk_278CD68E0;
    v14 = completionCopy;
    v13 = commandCopy;
    [mEMORY[0x277CDB6A8] stopSystemRecording:v12];

    v8 = v14;
  }

  else
  {
    v9 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[AFUISiriViewController siriSessionDidReceiveStopScreenRecordingCommand:completion:]";
      _os_log_impl(&dword_241432000, v9, OS_LOG_TYPE_DEFAULT, "%s Unable to stop recording as there is no recording in progress", buf, 0xCu);
    }

    v10 = MEMORY[0x277D47208];
    aceId = [commandCopy aceId];
    v8 = [v10 sruif_commandFailedWithRefId:aceId];

    (*(completionCopy + 2))(completionCopy, v8);
  }
}

void __85__AFUISiriViewController_siriSessionDidReceiveStopScreenRecordingCommand_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (v3)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __85__AFUISiriViewController_siriSessionDidReceiveStopScreenRecordingCommand_completion___block_invoke_cold_1();
    }

    v5 = a1 + 40;
    if (*(a1 + 40))
    {
      v6 = MEMORY[0x277D47208];
      v7 = [*(a1 + 32) aceId];
      v8 = [v6 sruif_commandFailedWithRefId:v7];
LABEL_10:
      v10 = v8;

      (*(*v5 + 16))();
    }
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[AFUISiriViewController siriSessionDidReceiveStopScreenRecordingCommand:completion:]_block_invoke";
      _os_log_impl(&dword_241432000, v4, OS_LOG_TYPE_DEFAULT, "%s Recording successfully stopped", &v11, 0xCu);
    }

    v5 = a1 + 40;
    if (*(a1 + 40))
    {
      v9 = MEMORY[0x277D47218];
      v7 = [*(a1 + 32) aceId];
      v8 = [v9 sruif_commandSucceededWithRefId:v7];
      goto LABEL_10;
    }
  }
}

- (void)siriSession:(id)session initialBringupProcessedWithTurnIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([(SASRequestOptions *)self->_currentRequestOptions isVisualIntelligenceRequest]& 1) == 0)
  {
    [(SRUIFPlatformHostingInstrumentationHandler *)self->_viewHostingInstrumentationHandler hostingBringUpProcessedWithTurnIdenitfier:identifierCopy];
  }
}

- (void)updateToPresentationWithIdentifier:(id)identifier presentationProperties:(id)properties animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  propertiesCopy = properties;
  identifierCopy = identifier;
  _remoteViewController = [(AFUISiriViewController *)self _remoteViewController];
  [_remoteViewController updateToPresentationWithIdentifier:identifierCopy presentationProperties:propertiesCopy animated:animatedCopy completion:completionCopy];
}

- (void)emitUIStateTransitionForSiriDismissalWithReason:(int64_t)reason
{
  if (([(SASRequestOptions *)self->_currentRequestOptions isVisualIntelligenceRequest]& 1) == 0)
  {
    objc_initWeak(&location, self);
    [(AFUISiriViewController *)self _donateUIDismissalToBiome:reason];
    v5 = SASDismissalReasonToSISchemaDismissalReason();
    v6 = self->_viewHostingInstrumentationHandler;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __74__AFUISiriViewController_emitUIStateTransitionForSiriDismissalWithReason___block_invoke;
    v8[3] = &unk_278CD6930;
    objc_copyWeak(&v10, &location);
    v11 = v5;
    v7 = v6;
    v9 = v7;
    [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __74__AFUISiriViewController_emitUIStateTransitionForSiriDismissalWithReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _remoteViewController];
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__AFUISiriViewController_emitUIStateTransitionForSiriDismissalWithReason___block_invoke_2;
  v5[3] = &unk_278CD6908;
  v6 = *(a1 + 32);
  [v3 emitUIStateTransitionForSiriDismissalWithDismissalReason:v4 completion:v5];
}

void __74__AFUISiriViewController_emitUIStateTransitionForSiriDismissalWithReason___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CEF168];
  v4 = a2;
  v5 = [[v3 alloc] initWithTurnIdentifier:v4];

  [*(a1 + 32) hostingDismissalProcessedWithTurnIdenitfier:v5];
}

- (void)emitInstrumentationEvent:(id)event
{
  eventCopy = event;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__AFUISiriViewController_emitInstrumentationEvent___block_invoke;
  v6[3] = &unk_278CD5858;
  objc_copyWeak(&v8, &location);
  v5 = eventCopy;
  v7 = v5;
  [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __51__AFUISiriViewController_emitInstrumentationEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _remoteViewController];
  [v2 emitInstrumentationEvent:*(a1 + 32)];
}

- (void)emitInstrumentationEvent:(id)event atTime:(unint64_t)time
{
  eventCopy = event;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__AFUISiriViewController_emitInstrumentationEvent_atTime___block_invoke;
  v8[3] = &unk_278CD5830;
  objc_copyWeak(v10, &location);
  v7 = eventCopy;
  v9 = v7;
  v10[1] = time;
  [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v8];

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void __58__AFUISiriViewController_emitInstrumentationEvent_atTime___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _remoteViewController];
  [v2 emitInstrumentationEvent:*(a1 + 32) atTime:*(a1 + 48)];
}

void __64__AFUISiriViewController_hideVoiceActivationMaskViewIfNecessary__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _siriView];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315138;
        v9 = "[AFUISiriViewController hideVoiceActivationMaskViewIfNecessary]_block_invoke";
        _os_log_impl(&dword_241432000, v5, OS_LOG_TYPE_DEFAULT, "%s #myriadUI Requesting hide - voiceActivationMaskView", &v8, 0xCu);
      }

      v6 = [v2 _siriView];
      [v6 setVoiceActivationMaskViewVisible:0];
    }

    if (v2[145] == 1)
    {
      [v2 requestStatusBarVisible:1];
    }

    v2[145] = 0;
    v7 = [v2 delegate];
    [v7 siriViewController:v2 voiceActivationMaskViewIsVisible:0];
  }
}

- (void)animateOrbViewDismissalIfNecessaryWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  objc_copyWeak(&v6, &location);
  v5 = completionCopy;
  SiriUIInvokeOnMainQueue();

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __75__AFUISiriViewController_animateOrbViewDismissalIfNecessaryWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained _compactSiriView];

    if (v3)
    {
      v4 = [v5 _compactSiriView];
      [v4 animateOrbViewDismissalWithCompletion:*(a1 + 32)];
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }

    WeakRetained = v5;
  }
}

- (void)animateOrbViewToOffIfNecessaryWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  objc_copyWeak(&v6, &location);
  v5 = completionCopy;
  SiriUIInvokeOnMainQueue();

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __71__AFUISiriViewController_animateOrbViewToOffIfNecessaryWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained _compactSiriView];

    if (v3)
    {
      v4 = [v5 _compactSiriView];
      [v4 animateOrbViewToOffWithCompletion:*(a1 + 32)];
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }

    WeakRetained = v5;
  }
}

- (void)commandCache:(id)cache didSuccessfullyHandleCommandsInDelayedActionCommand:(id)command
{
  cacheCopy = cache;
  commandCopy = command;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __91__AFUISiriViewController_commandCache_didSuccessfullyHandleCommandsInDelayedActionCommand___block_invoke;
  v9[3] = &unk_278CD5858;
  objc_copyWeak(&v11, &location);
  v8 = commandCopy;
  v10 = v8;
  [(AFUISiriViewController *)self _enqueueRemoteViewControllerMessageBlock:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __91__AFUISiriViewController_commandCache_didSuccessfullyHandleCommandsInDelayedActionCommand___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _remoteViewController];
  [v2 didSuccessfullyHandleCommandsInDelayedActionCommand:*(a1 + 32)];
}

- (id)_orbViewControllingView
{
  _siriView = [(AFUISiriViewController *)self _siriView];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    _siriView2 = [(AFUISiriViewController *)self _siriView];
  }

  else
  {
    _siriView2 = 0;
  }

  return _siriView2;
}

- (void)tamaleViewDidLoad
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v2, &location);
  SiriUIInvokeOnMainQueue();
  objc_destroyWeak(&v2);
  objc_destroyWeak(&location);
}

void __43__AFUISiriViewController_tamaleViewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[1282] = 1;
    if ((WeakRetained[1281] & 1) == 0)
    {
      v4 = [WeakRetained delegate];
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __43__AFUISiriViewController_tamaleViewDidLoad__block_invoke_2;
      v5[3] = &unk_278CD6958;
      objc_copyWeak(&v6, (a1 + 32));
      [v4 requestTamaleLaunchAnimationLayerProviderWithCompletion:v5];

      objc_destroyWeak(&v6);
    }

    [v3 presentRemoteViewControllerIfNecessary];
    [v3 _startVisualIntelligenceAutolockTimer];
  }
}

void __43__AFUISiriViewController_tamaleViewDidLoad__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performVisualIntelligenceLaunchAnimationWithTransitioningLayer:v3];
}

- (void)tamaleViewRequestsAuthenticationWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__AFUISiriViewController_tamaleViewRequestsAuthenticationWithCompletion___block_invoke;
  v6[3] = &unk_278CD6980;
  v7 = completionCopy;
  v5 = completionCopy;
  [(AFUISiriViewController *)self _handlePasscodeUnlockAndCancelRequest:0 dismissOnFailure:0 passcodeUnlockClient:1 withCompletion:v6];
}

- (void)_performVisualIntelligenceLaunchAnimationWithTransitioningLayer:(id)layer
{
  layerCopy = layer;
  objc_initWeak(&location, self);
  objc_copyWeak(&v6, &location);
  v5 = layerCopy;
  SiriUIInvokeOnMainQueue();

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __90__AFUISiriViewController__performVisualIntelligenceLaunchAnimationWithTransitioningLayer___block_invoke(uint64_t a1)
{
  v49[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[159];
    v5 = [MEMORY[0x277D759A0] mainScreen];
    v6 = [v5 traitCollection];
    [v6 displayCornerRadius];
    [v4 _setContinuousCornerRadius:?];

    v7 = [v3[159] layer];
    [v7 setCornerCurve:*MEMORY[0x277CDA148]];

    [v3[159] setClipsToBounds:1];
    v8 = [v3[159] layer];
    [v8 setMasksToBounds:1];

    [v3[159] setAlpha:0.0];
    if (AFUIShouldUseBackgroundDimVisualIntelligenceLaunchAnimation() != 0.0)
    {
      v9 = objc_alloc(MEMORY[0x277D75D18]);
      v10 = [MEMORY[0x277D759A0] mainScreen];
      [v10 bounds];
      v11 = [v9 initWithFrame:?];

      v12 = [MEMORY[0x277D75348] blackColor];
      [v11 setBackgroundColor:v12];

      [v11 setAlpha:AFUIBackgroundDimOpacityInitialValue()];
      v13 = v3[167];
      v3[167] = v11;
      v14 = v11;

      v15 = [v3[159] superview];
      [v15 insertSubview:v3[167] belowSubview:v3[159]];

      v16 = v3[167];
      v17 = [MEMORY[0x277D759A0] mainScreen];
      v18 = [v17 traitCollection];
      [v18 displayCornerRadius];
      [v16 _setContinuousCornerRadius:?];
    }

    if (AFUIShouldUseBackgroundBlurVisualIntelligenceLaunchAnimation() != 0.0)
    {
      v19 = objc_alloc(MEMORY[0x277D75D18]);
      v20 = [MEMORY[0x277D759A0] mainScreen];
      [v20 bounds];
      v21 = [v19 initWithFrame:?];

      v22 = [MEMORY[0x277D75348] clearColor];
      [v21 setBackgroundColor:v22];

      [v21 setAlpha:1.0];
      v23 = objc_alloc(MEMORY[0x277D75D68]);
      v24 = [MEMORY[0x277D75210] effectWithStyle:9];
      v25 = [v23 initWithEffect:v24];

      [v25 setAlpha:1.0];
      v26 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
      v27 = [MEMORY[0x277CCABB0] numberWithDouble:AFUIBackgroundBlurRadiusInitialValue()];
      [v26 setValue:v27 forKey:@"inputRadius"];

      [v26 setValue:@"low" forKey:@"inputIntermediateBitDepth"];
      [v26 setValue:@"low" forKey:@"inputQuality"];
      v28 = v3[168];
      v3[168] = v21;
      v29 = v21;

      v30 = [v3[168] layer];
      v49[0] = v26;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
      [v30 setFilters:v31];

      v32 = [v3[159] superview];
      [v32 insertSubview:v3[168] belowSubview:v3[159]];

      v33 = v3[168];
      v34 = [MEMORY[0x277D759A0] mainScreen];
      v35 = [v34 traitCollection];
      [v35 displayCornerRadius];
      [v33 _setContinuousCornerRadius:?];
    }

    if (!*(a1 + 32))
    {
      v36 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
      v37 = [MEMORY[0x277CCABB0] numberWithDouble:AFUIAnimatingViewGaussianBlurInitialValue()];
      [v36 setValue:v37 forKey:@"inputRadius"];

      [v36 setValue:@"low" forKey:@"inputIntermediateBitDepth"];
      [v36 setValue:@"low" forKey:@"inputQuality"];
      v38 = v3[169];
      v3[169] = v36;
      v39 = v36;

      v40 = [v3[159] layer];
      v48 = v3[169];
      v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];

      [v40 setFilters:v41];
    }

    [MEMORY[0x277CD9FF0] begin];
    v42 = MEMORY[0x277CD9FF0];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __90__AFUISiriViewController__performVisualIntelligenceLaunchAnimationWithTransitioningLayer___block_invoke_2;
    v46[3] = &unk_278CD57B8;
    v46[4] = v3;
    objc_copyWeak(&v47, (a1 + 40));
    [v42 setCompletionBlock:v46];
    v43 = *(a1 + 32) == 0;
    v44 = objc_loadWeakRetained((a1 + 40));
    v45 = v44;
    if (v43)
    {
      [v44 _performVisualIntelligenceTransition];
    }

    else
    {
      [v44 _performVisualIntelligenceTransitionWithLayer:*(a1 + 32)];
    }

    [MEMORY[0x277CD9FF0] commit];
    objc_destroyWeak(&v47);
  }
}

void __90__AFUISiriViewController__performVisualIntelligenceLaunchAnimationWithTransitioningLayer___block_invoke_2(uint64_t a1)
{
  if (AFUIShouldUseBackgroundDimVisualIntelligenceLaunchAnimation() != 0.0)
  {
    [*(*(a1 + 32) + 1336) removeFromSuperview];
  }

  if (AFUIShouldUseBackgroundBlurVisualIntelligenceLaunchAnimation() != 0.0)
  {
    [*(*(a1 + 32) + 1344) removeFromSuperview];
  }

  v2 = MEMORY[0x277CBEB18];
  v3 = [*(*(a1 + 32) + 1272) layer];
  v4 = [v3 filters];
  v7 = [v2 arrayWithArray:v4];

  [v7 removeObject:*(*(a1 + 32) + 1352)];
  v5 = [*(*(a1 + 32) + 1272) layer];
  [v5 setFilters:v7];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained visionIntelligenceDropletLaunchAnimationDidFinish:1 retargeted:1];
}

- (void)_performVisualIntelligenceTransition
{
  v32[3] = *MEMORY[0x277D85DE8];
  v28 = AFUIAnimatingViewScaleInitialValue();
  v26 = AFUIAnimatingViewScaleFinalValue();
  v30 = AFUIAnimatingViewOpacityInitialValue();
  v27 = AFUIAnimatingViewOpacityFinalValue();
  v31 = AFUIAnimatingViewGaussianBlurInitialValue();
  v29 = AFUIAnimatingViewGaussianBlurFinalValue();
  v3 = AFUIAnimatingViewSpringStiffness();
  v4 = AFUIAnimatingViewSpringDamping();
  v5 = AFUIAFUIAnimatingViewSpringInitialVelocity();
  v25 = AFUIBackgroundDimOpacityInitialValue();
  v24 = AFUIBackgroundDimOpacityFinalValue();
  v23 = AFUIBackgroundDimSpringStiffness();
  v22 = AFUIBackgroundDimSpringDamping();
  v6 = AFUIBackgroundDimSpringInitialVelocity();
  v21 = AFUIBackgroundBlurRadiusInitialValue();
  v7 = AFUIBackgroundBlurRadiusFinalValue();
  v8 = AFUIBackgroundBlurSpringStiffness();
  v9 = AFUIBackgroundBlurSpringDamping();
  v10 = AFUIBackgroundBlurSpringInitialVelocity();
  v11 = AFUIVisualIntelligenceSpringAnimation(@"transform.scale", v28, v26, v3, v4, v5);
  v12 = AFUIVisualIntelligenceSpringAnimation(@"opacity", v30, v27, v3, v4, v5);
  v13 = AFUIVisualIntelligenceSpringAnimation(@"filters.gaussianBlur.inputRadius", v31, v29, v3, v4, v5);
  v14 = AFUIVisualIntelligenceSpringAnimation(@"opacity", v25, v24, v23, v22, v6);
  v15 = AFUIVisualIntelligenceSpringAnimation(@"filters.gaussianBlur.inputRadius", v21, v7, v8, v9, v10);
  animation = [MEMORY[0x277CD9E00] animation];
  v32[0] = v11;
  v32[1] = v12;
  v32[2] = v13;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:3];
  [animation setAnimations:v17];

  [v11 settlingDuration];
  [animation setDuration:?];
  [animation setFillMode:*MEMORY[0x277CDA230]];
  [animation setRemovedOnCompletion:0];
  layer = [(SiriSharedUITamaleView *)self->_tamaleView layer];
  [layer addAnimation:animation forKey:@"fadeScale"];

  layer2 = [(UIView *)self->_visualIntelligenceBackgroundDimView layer];
  [layer2 addAnimation:v14 forKey:@"dimOpacityAnimation"];

  layer3 = [(UIView *)self->_visualIntelligenceBackgroundBlurView layer];
  [layer3 addAnimation:v15 forKey:@"blurRadiusAnimation"];
}

- (void)_performVisualIntelligenceTransitionWithLayer:(id)layer
{
  v18[4] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CD9EE8];
  layerCopy = layer;
  v6 = objc_alloc_init(v4);
  [v6 setSourceLayer:layerCopy];

  [v6 setDuration:INFINITY];
  [v6 setFillMode:*MEMORY[0x277CDA230]];
  [v6 setRemovedOnCompletion:0];
  v7 = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.0, 0.0}];
  v18[0] = v7;
  v8 = [MEMORY[0x277CCAE60] valueWithCGPoint:{1.0, 0.0}];
  v18[1] = v8;
  v9 = [MEMORY[0x277CCAE60] valueWithCGPoint:{1.0, 1.0}];
  v18[2] = v9;
  v10 = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.0, 1.0}];
  v18[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];

  [v6 setSourcePoints:v11];
  [v6 setUsesNormalizedCoordinates:1];
  v12 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"opacity"];
  [v12 setFromValue:&unk_28532BD90];
  [v12 setToValue:&unk_28532BDA8];
  [v12 setMass:1.0];
  [v12 setStiffness:400.405875];
  [v12 setDamping:40.020289];
  layer = [(SiriSharedUITamaleView *)self->_tamaleView layer];
  [layer addAnimation:v6 forKey:@"TamaleMatchMoveToDropletAnimation"];

  layer2 = [(SiriSharedUITamaleView *)self->_tamaleView layer];
  [layer2 addAnimation:v12 forKey:@"opacity"];

  [(SiriSharedUITamaleView *)self->_tamaleView setAlpha:1.0];
  layer3 = [(SiriSharedUITamaleView *)self->_tamaleView layer];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  traitCollection = [mainScreen traitCollection];
  [traitCollection displayCornerRadius];
  [layer3 setCornerRadius:?];
}

- (void)visionIntelligenceDropletLaunchAnimationDidFinish:(BOOL)finish retargeted:(BOOL)retargeted
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v4, &location);
  SiriUIInvokeOnMainQueue();
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __87__AFUISiriViewController_visionIntelligenceDropletLaunchAnimationDidFinish_retargeted___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (*(WeakRetained + 1281) & 1) == 0)
  {
    *(WeakRetained + 1281) = 1;
    *(WeakRetained + 1282) = 1;
    v7 = WeakRetained;
    [*(WeakRetained + 159) setAlpha:1.0];
    [v7[159] _setContinuousCornerRadius:0.0];
    v2 = [v7[159] layer];
    [v2 removeAnimationForKey:@"TamaleMatchMoveToDropletAnimation"];

    v3 = [v7[159] layer];
    [v3 removeAnimationForKey:@"opacity"];

    v4 = [v7[159] layer];
    [v4 removeAnimationForKey:@"fadeScale"];

    [v7[159] setClipsToBounds:0];
    v5 = v7[159];
    v6 = [v7 view];
    [v6 bounds];
    [v5 setFrame:?];

    WeakRetained = v7;
  }
}

- (void)_startVisualIntelligenceAutolockTimer
{
  v11 = *MEMORY[0x277D85DE8];
  visualIntelligenceAutolockTimer = [(AFUISiriViewController *)self visualIntelligenceAutolockTimer];

  if (visualIntelligenceAutolockTimer)
  {
    [(AFUISiriViewController *)self _stopVisualIntelligenceAutolockTimer];
  }

  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[AFUISiriViewController _startVisualIntelligenceAutolockTimer]";
    _os_log_impl(&dword_241432000, v4, OS_LOG_TYPE_DEFAULT, "%s #visualIntelligence Starting the auto-lock timer", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v5 = MEMORY[0x277CBEBB8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__AFUISiriViewController__startVisualIntelligenceAutolockTimer__block_invoke;
  v7[3] = &unk_278CD69A8;
  objc_copyWeak(&v8, buf);
  v6 = [v5 scheduledTimerWithTimeInterval:0 repeats:v7 block:600.0];
  [(AFUISiriViewController *)self setVisualIntelligenceAutolockTimer:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

void __63__AFUISiriViewController__startVisualIntelligenceAutolockTimer__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stopVisualIntelligenceAutolockTimer];

  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[AFUISiriViewController _startVisualIntelligenceAutolockTimer]_block_invoke";
    _os_log_impl(&dword_241432000, v3, OS_LOG_TYPE_DEFAULT, "%s #visualIntelligence Will dismiss due to auto-lock timeout. The visual intelligence camera should dismiss after it's been open for 10 minutes", &v5, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 _dismissWithReason:4];
}

- (void)_stopVisualIntelligenceAutolockTimer
{
  v8 = *MEMORY[0x277D85DE8];
  visualIntelligenceAutolockTimer = [(AFUISiriViewController *)self visualIntelligenceAutolockTimer];

  if (visualIntelligenceAutolockTimer)
  {
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[AFUISiriViewController _stopVisualIntelligenceAutolockTimer]";
      _os_log_impl(&dword_241432000, v4, OS_LOG_TYPE_DEFAULT, "%s #visualIntelligence Stopping the auto-lock timer", &v6, 0xCu);
    }

    visualIntelligenceAutolockTimer2 = [(AFUISiriViewController *)self visualIntelligenceAutolockTimer];
    [visualIntelligenceAutolockTimer2 invalidate];

    [(AFUISiriViewController *)self setVisualIntelligenceAutolockTimer:0];
  }
}

- (AFUISiriEdgelightViewProvider)edgeLightViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_edgeLightViewProvider);

  return WeakRetained;
}

- (CGRect)hostedPresentationFrame
{
  x = self->_hostedPresentationFrame.origin.x;
  y = self->_hostedPresentationFrame.origin.y;
  width = self->_hostedPresentationFrame.size.width;
  height = self->_hostedPresentationFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end