@interface iPadAudioCallViewController
+ (BOOL)prefersWhiteTextOnImageRef:(CGImage *)ref;
+ (BOOL)wallpaperContentIsSensitive:(id)sensitive;
+ (CGImage)imageRefFrom:(id)from;
+ (NSArray)contactKeysToFetch;
+ (void)fetchPrefersWhiteColorAtCropRect:(CGRect)rect image:(id)image completion:(id)completion;
- (AVSpeechSynthesizer)speechSynthesizer;
- (BOOL)_isScreeningAnyCallGroup:(id)group;
- (BOOL)_isScreeningCallGroup:(id)group;
- (BOOL)allowsBanners;
- (BOOL)allowsMenuButtonDismissal;
- (BOOL)allowsOrientationChangeEvents;
- (BOOL)callHasContactPosterWithHorizontalName;
- (BOOL)callHasContactPosterWithVerticalName;
- (BOOL)callHasNoContactPoster;
- (BOOL)callParticipantsViewControllerHasHighResolutionImageOrWallpaperForContact:(id)contact;
- (BOOL)callParticipantsViewControllerShouldShowLargeAvatar:(id)avatar;
- (BOOL)callRecordingAllowed;
- (BOOL)callStateCanShowNewPoster:(id)poster;
- (BOOL)canDoInfoButtonCoinFlipWith:(id)with contactStore:(id)store;
- (BOOL)canShowBackgroundImage;
- (BOOL)canShowPosterBadgeInAudioCallView:(id)view;
- (BOOL)canShowPosterImage;
- (BOOL)contactHasPoster:(id)poster;
- (BOOL)currentCallStateCanShowNewPoster;
- (BOOL)desiresLockButtonEvents;
- (BOOL)desiresLockButtonEventsForCallContainer:(id)container;
- (BOOL)hasLastSeenPosterForCall:(id)call;
- (BOOL)hasNoCallsOrOnlyEndedCalls;
- (BOOL)isCallRecordingActive;
- (BOOL)isCallSmartHoldingSessionActive:(id)active;
- (BOOL)isPickedRouteReceiver;
- (BOOL)isPickedRouteSpeaker;
- (BOOL)isReadyToShowCallDetails;
- (BOOL)isShowSOSConfirmationSupported;
- (BOOL)isShowingBackgroundImage;
- (BOOL)isShowingPoster;
- (BOOL)isShowingPosterBadge;
- (BOOL)isShowingPosterName;
- (BOOL)lastSeenPosterDataIsSensitiveForCall:(id)call;
- (BOOL)needsDismissalAssertion;
- (BOOL)prefersShowingCachedLastSeenPosterBeforeCallConnected:(id)connected;
- (BOOL)prioritizedCallIsInSameCallGroupAsCall:(id)call;
- (BOOL)setCallForBackgroundImage:(id)image animated:(BOOL)animated callDisplayStyleChanged:(BOOL)changed;
- (BOOL)shouldAddExtensionNumberButtonToViewHierarchy;
- (BOOL)shouldAddRTTButtonToViewHierarchy;
- (BOOL)shouldApplyNewGradientBlur;
- (BOOL)shouldPlayAudioInCallBufferScreen;
- (BOOL)shouldRenderAlertTextColor;
- (BOOL)shouldRenderAlertTextFont;
- (BOOL)shouldShowAnswerRTT;
- (BOOL)shouldShowCallDetailsViewButton;
- (BOOL)shouldShowCallTransfer;
- (BOOL)shouldShowCircularAvatar;
- (BOOL)shouldShowConferenceCallDetails;
- (BOOL)shouldShowContactOrLastSeenWallpaper;
- (BOOL)shouldShowEnableWiFiCallingAlertForCall:(id)call;
- (BOOL)shouldShowLargeAvatarForCall:(id)call;
- (BOOL)shouldShowMergeCalls;
- (BOOL)shouldShowNewPosterUpdates;
- (BOOL)shouldShowUseRTT;
- (BOOL)shouldUpdateBackgroundForEmergencyCall;
- (BOOL)usesCompactMulticallUI;
- (BOOL)videoStreamingIsGoingOn;
- (IMNicknameProvider)imNicknameProvider;
- (PHAudioCallControlsSupplementalButton)callTransferButton;
- (PHAudioCallControlsSupplementalButton)extensionNumberButton;
- (PHAudioCallControlsSupplementalButton)mergeCallsButton;
- (PHAudioCallControlsSupplementalButton)useRTTButton;
- (PHAudioCallControlsViewController)buttonsViewController;
- (PHAudioCallVoiceLoopViewController)voiceLoopViewController;
- (PHCallTranslationController)translationController;
- (PHInCallRootViewControllerProtocol)inCallRootViewController;
- (SOSEmergencyCallVoiceLoopManager)voiceLoopManager;
- (TUCall)activeCall;
- (TUCall)callToUseForWallpaper;
- (TUCall)frontmostCall;
- (TUCall)prioritizedCall;
- (UIView)middleContentView;
- (UIViewController)screeningViewController;
- (UIViewController)waitOnHoldViewController;
- (_TtC15ConversationKit23CallRecordingController)_callRecordingController;
- (_TtC16CommunicationsUI22SwitchingContainerView)typedBottomContainerView;
- (double)callDetailsButtonPaddingTop;
- (double)callDetailsButtonPaddingTop_PERCENT;
- (double)callDetailsButtonPaddingTrailing;
- (double)callDetailsButtonPaddingTrailing_PERCENT;
- (double)callWaitingAnimationDelay;
- (iPadAudioCallViewController)initWithCallDisplayStyleManager:(id)manager callCenter:(id)center featureFlags:(id)flags call:(id)call;
- (id)ambientParticipantsViewConstraintsForView:(id)view largeAvatar:(BOOL)avatar;
- (id)answerRequestForCall:(id)call;
- (id)associatedCallGroupForCall:(id)call;
- (id)audioRouteMenu;
- (id)contactForCall:(id)call;
- (id)contactImage;
- (id)contactImageDataForCall:(id)call;
- (id)contactImageForCall:(id)call;
- (id)contactToDisplayInCallWallpaperForCall:(id)call;
- (id)contactWallpaperBackgroundColor;
- (id)contactWallpaperConfigurationForCall:(id)call shouldReadFromCache:(BOOL)cache;
- (id)contactWallpaperForCall:(id)call;
- (id)createBlurryBackgroundView;
- (id)createContactFirstNameLabelViewModel;
- (id)createDimmingView;
- (id)currentIMNicknameMatchingContact:(id)contact;
- (id)customColorForParticipantLabelWithCall:(id)call;
- (id)customColorForStatusLabelWithCall:(id)call;
- (id)customFontForParticipantLabelWithCall:(id)call;
- (id)customizedTitleForItemInBar:(id)bar withActionType:(int64_t)type;
- (id)fallbackHorizontalNameLabelString;
- (id)fallbackImageDataForCall:(id)call;
- (id)getParticipantsView_NotWaiting;
- (id)getParticipantsView_Waiting;
- (id)getParticipantsView_WaitingOrNot;
- (id)isolatedCall;
- (id)lastSeenOrCurrentPosterConfigurationForCall:(id)call;
- (id)lastSeenPosterConfigurationForCall:(id)call;
- (id)lastSeenPosterIMWallpaperMetadataForCall:(id)call;
- (id)makeCallDetailsCoordinatorWithBannerPresentationManager:(id)manager existingCoordinator:(id)coordinator deferredPresentationManager:(id)presentationManager;
- (id)makeHeldCallControlsViewWithCallCenter:(id)center style:(int64_t)style;
- (id)makeLockObserverWithHandler:(id)handler;
- (id)newPosterConfigurationForCall:(id)call;
- (id)participantsViewConstraints;
- (id)readCachedLastSeenPosterDataForCall:(id)call;
- (id)routesForAudioRoutingMenuController:(id)controller;
- (id)sharedProfileStateOracleForCall:(id)call;
- (id)snapshotUIImageView;
- (id)wallpaperTitleStyleAttributes;
- (id)wallpaperTitleStyleAttributesForCall:(id)call;
- (id)wallpaperTypeForBundleID:(id)d;
- (id)wallpaperTypeForCNWallpaper:(id)wallpaper;
- (id)wallpaperTypeForIMWallpaperMetadata:(id)metadata;
- (int64_t)bottomBarCallStateInBar:(id)bar;
- (int64_t)bottomBarStateForCallWaitingCall;
- (unint64_t)currentDisplayedPosterSourceForCall:(id)call;
- (unint64_t)suggestedNewPosterSourceAfterCallConnects:(id)connects;
- (void)_leaveMessage;
- (void)_performPosterTransformationsIfNecessaryToState:(unsigned __int16)state;
- (void)_testing_didTransitionToActiveCallState:(id)state;
- (void)_testing_didTransitionToEndingCallState;
- (void)_testing_didTransitionToIdleCallState;
- (void)_testing_didTransitionToIncomingRingingCallState:(id)state;
- (void)_testing_finishedAnimatingToActiveCallState:(id)state;
- (void)_updatePosterNameAlpha;
- (void)_updatePosterStatusLabelForState:(unsigned __int16)state;
- (void)_updateStatusLabelVisibility;
- (void)activatePoster;
- (void)addBottomBarSubView;
- (void)addBottomShelfContainerIfNeeded;
- (void)addCallParticipantsSubView;
- (void)addCallRecordingIndicator;
- (void)addDefaultBackgroundGradientView;
- (void)addMiddleStackView;
- (void)addNoPosterContactImage:(id)image;
- (void)addSubviewsToMiddleStackViewWithView:(id)view priority:(int64_t)priority;
- (void)alertWillInvoke;
- (void)animateInfoButtonCoinFlipIfNeeded;
- (void)applyCallDetailsViewButtonPositionAndSizeCapToElement:(id)element;
- (void)applyCallWaitingConstraintsForAmbient;
- (void)applyParticipantsViewConstraints;
- (void)applyParticipantsViewConstraintsForAmbient;
- (void)applyParticipantsViewConstraintsForBanner;
- (void)applyParticipantsViewConstraintsForFullScreen;
- (void)applySizeToElement:(id)element usingThisElementAsGuide:(id)guide;
- (void)applyWallpaperTitleStyleAttributesToTextViewWrapper:(id)wrapper;
- (void)audioCallControlsViewControllerDidTapEndButton:(id)button;
- (void)audioCallControlsViewControllerDidTapRTTButton;
- (void)audioCallControlsViewControllerDidToggleMuteButton:(BOOL)button;
- (void)audioCallControlsViewControllerRequestedAddCallPresentation:(id)presentation;
- (void)audioCallControlsViewControllerRequestedAddCallPresentation:(id)presentation forView:(id)view;
- (void)audioCallControlsViewControllerRequestedAudioRoutesPresentation:(id)presentation;
- (void)audioCallControlsViewControllerRequestedContactsPresentation:(id)presentation forView:(id)view;
- (void)audioCallControlsViewControllerRequestedInvokeAlert;
- (void)audioCallControlsViewControllerRequestedKeypadPresentation:(id)presentation;
- (void)audioCallControlsViewControllerRequestedKeypadPresentationForFieldMode:(id)mode;
- (void)audioCallControlsViewControllerRequestedMoreMenuFromSourceView:(id)view;
- (void)audioCallControlsViewControllerRequestedShareCardFromSourceView:(id)view;
- (void)audioCallControlsViewControllerRequestedShareMedia;
- (void)audioCallControlsViewControllerRequestedVideoPresentation:(id)presentation;
- (void)audioCallVoiceLoopViewControllerRequestedButtonPresentation;
- (void)audioDeviceControllerMutedTalkerDidStart:(id)start;
- (void)audioRoutingMenuController:(id)controller didSelectRoute:(id)route;
- (void)bannerDidGetTap;
- (void)beginWaitOnHoldSession;
- (void)blockWithHandle:(id)handle;
- (void)bottomBarActionPerformed:(int64_t)performed withCompletionState:(int64_t)state fromBar:(id)bar;
- (void)callCenterCallStatusChangedNotification:(id)notification;
- (void)callCenterScreeningStatusChangedNotification:(id)notification;
- (void)callContinuityStateChangedNotification:(id)notification;
- (void)callDetailsViewButtonTapped;
- (void)callDisplayContextChangedNotification:(id)notification;
- (void)callDisplayStyleDidChangeFromStyle:(int64_t)style toStyle:(int64_t)toStyle;
- (void)callIsEmergencyChangedNotification:(id)notification;
- (void)callIsScreenSharingChangedNotification:(id)notification;
- (void)callOnHoldChangedNotification:(id)notification;
- (void)callParticipantsViewController:(id)controller didPerformActionType:(int64_t)type;
- (void)callParticipantsViewController:(id)controller didShowMultipleLabel:(BOOL)label;
- (void)callParticipantsViewController:(id)controller willShowMultipleLabel:(BOOL)label;
- (void)callParticipantsViewControllerDidTapCallDetailsGestureRecognizer:(id)recognizer;
- (void)callRecordingAfterFullScreenRequest:(id)request;
- (void)callTransferButtonTapped;
- (void)callTranslationControllerWithShouldAddTranslationViewToHost:(id)host;
- (void)callTranslationControllerWithShouldRemoveTranslationViewFromHost:(id)host;
- (void)clearMenuItemRegistration:(id)registration;
- (void)conferenceParticipantCallsChangedNotification:(id)notification;
- (void)constraintCallRecordingWithView:(id)view;
- (void)constraintDefaultNoPosterAvatarView;
- (void)constraintWaitOnHoldView:(id)view;
- (void)contactDidChange:(id)change;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)contactViewController:(id)controller didExecuteBlockAndReportContactAction:(id)action;
- (void)copyCallWaitingConstraintsFromParticipantsView;
- (void)createContactWithHandle:(id)handle;
- (void)createDetachedPosterNameViewModel:(id)model;
- (void)deactivatePoster;
- (void)dealloc;
- (void)deleteAllUnarchivedPosterDirectories;
- (void)dismissNavigationController;
- (void)dismissNavigationControllerAndUpdateScene;
- (void)dismissPeoplePicker;
- (void)dismissWaitOnHoldTip;
- (void)displayDialledNumberDetailsForCallBufferScreen;
- (void)displayWaitOnHoldTip;
- (void)endRecording;
- (void)endWaitOnHoldSession;
- (void)extensionNumberButtonTapped;
- (void)finishNewPosterUpdatesWithCompletion:(id)completion;
- (void)gameControllerDidChangeContext;
- (void)handleCallRecordingCountdownNotificationWithNotification:(id)notification;
- (void)handleCancelPressedInCallBufferScreen;
- (void)handleConfigurationAfterViewLoaded;
- (void)handleDeviceLockEventWithSourceType:(int64_t)type;
- (void)handleTUCallSupportsTTYWithVoiceChangedNotification:(id)notification;
- (void)handleTUCallTTYTypeChangedNotification:(id)notification;
- (void)handleViewDidAppear:(BOOL)appear;
- (void)handleViewDidDisappear:(BOOL)disappear;
- (void)handleViewWillAppear:(BOOL)appear;
- (void)handleViewWillDisappear:(BOOL)disappear;
- (void)hardPauseDigitsStateChangedNotification:(id)notification;
- (void)hardwareButtonEventNotification:(id)notification;
- (void)hideFirstNameLabelOnKeypad;
- (void)hideOrShowScreeningBackgroundView;
- (void)hideOrShowThirdPartyBackgroundImageWithImage:(id)image;
- (void)hideTrailngPanelCoveringViewIfNeeded;
- (void)invertColorForBottomButtonsBasedOn:(id)on;
- (void)invertColorForCallDetailsButtonBasedOn:(id)on;
- (void)invertColorForPosterBadgeViewBasedOn:(id)on;
- (void)invertColorForPosterBadgeViewIfSnapshotPoster;
- (void)invertNecessaryUIElementsBasedOnPosterImage:(id)image;
- (void)keypadViewWillDisappearWithCompletion:(id)completion;
- (void)layoutParticipantsViewAnimated:(BOOL)animated crossfade:(BOOL)crossfade;
- (void)localAudioToggledWithIsMuted:(BOOL)muted;
- (void)lockScreenVisibilityDidChange:(id)change;
- (void)mergeCallsButtonTapped;
- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result;
- (void)observeCallRecordingNotifications;
- (void)performBottomBarActionType:(int64_t)type;
- (void)positionParticipantsViewStatusLabelToBeHorizontallyCenteredToInfoButton:(id)button;
- (void)positionPosterBadgeToBeHorizontallyCenteredToInfoButton:(id)button;
- (void)presentContactCard;
- (void)presentDisconnectionAlert:(id)alert;
- (void)presentFullScreenPeoplePicker;
- (void)presentMoreMenu:(id)menu contact:(id)contact source:(id)source;
- (void)presentMoreMenu:(id)menu source:(id)source;
- (void)presentShareCard:(id)card source:(id)source;
- (void)presentWaitOnHoldEndForAnotherCallAlertWithCallerName:(id)name completionHandler:(id)handler;
- (void)receptionistStateChanged:(id)changed;
- (void)refreshExtensionNumberButton;
- (void)releaseDismissalAssertion;
- (void)removeAllParticipantsViewConstraints;
- (void)removeBackgroundContactImageView;
- (void)removeCallRecordingIndicator;
- (void)removeContentViewIfNeeded:(id)needed animated:(BOOL)animated;
- (void)removeDefaultBackgroundGradientView;
- (void)removeFirstNameLabelFromViewIfNeeded;
- (void)removeNameLabelForAlwaysOnDisplay;
- (void)removePosterViewController:(BOOL)controller completion:(id)completion;
- (void)removeSubviewFromMiddleStackViewWithView:(id)view;
- (void)reportWithCall:(id)call;
- (void)resetParticipantsViewConstraints;
- (void)restartCallBufferTimer;
- (void)restoreParticipantsViewStatusLabelForFullScreen;
- (void)revealAudioRoutingDeviceListAnimated:(BOOL)animated;
- (void)revealAudioRoutingDeviceListAnimatedIfNeeded;
- (void)routesChangedForRouteController:(id)controller;
- (void)screenSharingInteractionController:(id)controller didUpdateRemoteControlStatus:(BOOL)status;
- (void)setActiveState:(unsigned __int16)state;
- (void)setBackgroundColor:(id)color animated:(BOOL)animated;
- (void)setBackgroundImage:(id)image;
- (void)setCallBufferState:(unsigned __int16)state;
- (void)setCurrentState:(unsigned __int16)state animated:(BOOL)animated;
- (void)setDetachedPosterNameViewModel:(id)model;
- (void)setEndedState:(unsigned __int16)state;
- (void)setEndingState:(unsigned __int16)state;
- (void)setIdleState:(unsigned __int16)state;
- (void)setInCallRootViewController:(id)controller;
- (void)setKeypadPosterNameViewModel:(id)model;
- (void)setLayoutGuides;
- (void)setMiddleViewButtonsIfNecessary;
- (void)setMiddleViewState:(unsigned __int16)state animated:(BOOL)animated completion:(id)completion;
- (void)setOutgoingRingingState:(unsigned __int16)state;
- (void)setParticipantsViewControllersShouldIgnoreUpdates:(BOOL)updates;
- (void)setParticipantsViewShouldShowParticipantLabel:(BOOL)label;
- (void)setPosterNameViewModel:(id)model;
- (void)setPosterViewController:(id)controller;
- (void)setPrioritizedCall:(id)call;
- (void)setRingingState:(unsigned __int16)state;
- (void)setScreeningState:(unsigned __int16)state animated:(BOOL)animated overrideWithIsUnlocked:(BOOL)unlocked;
- (void)setShowsCallDetailsViewButton:(BOOL)button;
- (void)setShowsCallWaitingParticipantView:(BOOL)view;
- (void)setUpCallDetailsViewButton;
- (void)setUpPosterBadgeViewIfNecessary;
- (void)setViewsHiddenForAudioRoutes:(BOOL)routes animated:(BOOL)animated;
- (void)setWaitOnHoldState:(unsigned __int16)state animated:(BOOL)animated;
- (void)setWaitingState:(unsigned __int16)state;
- (void)set_callRecordingController:(id)controller;
- (void)setupAmbientAudioRoutesControlViewIfNeeded;
- (void)setupCallHoldingObservers;
- (void)setupDimmingViewForAlwaysOnDisplay;
- (void)setupHeldCallControlsViewIfNeeded;
- (void)setupMiddleContentView:(id)view;
- (void)setupMiddleContentView:(id)view flexibleConstraints:(BOOL)constraints bottomPadding:(double)padding;
- (void)setupNameLabelForAlwaysOnDisplay;
- (void)showAddParticipantSheet;
- (void)showBlockAlertForHandle:(id)handle;
- (void)showCallDetailsIfNecessary;
- (void)showFirstNameLabelOnKeypad;
- (void)showKeypadWithPerviousMiddleState:(unsigned __int16)state viewSize:(CGSize)size;
- (void)showNameAndPhotoHUDIfNecessaryWithBannerPresentationManager:(id)manager callCenter:(id)center;
- (void)showPosterBlurTransition;
- (void)showStopAlertForCall:(id)call;
- (void)showTrailngPanelCoveringViewIfNeeded;
- (void)speakAlertUtteranceIfNecessary;
- (void)startAutoCountdownAlert;
- (void)startCallBufferScreenCountdown;
- (void)startMessagePlayback;
- (void)startRecording;
- (void)startSuppressionOfSTKAlerts;
- (void)stopCallBufferTimer;
- (void)stopMessagePlayback;
- (void)stopSuppressionOfSTKAlerts;
- (void)suppressRingtoneForIncomingCall;
- (void)suspendPosterAndCancelDelay:(BOOL)delay;
- (void)synchronizeSingleLabelViewWithPosterText;
- (void)tipKitStartWaitOnHoldObservation;
- (void)tipKitStopWaitOnHoldObservation;
- (void)traitCollectionDidChange:(id)change;
- (void)transitionToFullScreenIfNecessary;
- (void)transitionToNewPosterIfNeeded;
- (void)triggerAutoCountdownIfAvailable;
- (void)triggerInversionColorUpdate:(id)update;
- (void)updateAmbientAudioRoutesVisibility;
- (void)updateBackgroundForEmergencyCall;
- (void)updateBackgroundTintToView:(id)view;
- (void)updateBottomBarButtonsWithCall:(id)call;
- (void)updateBottomShelfState:(int64_t)state;
- (void)updateBottomShelfWithMiddleViewState:(unsigned __int16)state callDisplayStyle:(int64_t)style;
- (void)updateCallDurationVisibility;
- (void)updateCallParticipantsViewControllerCallGroups;
- (void)updateCallRecording:(id)recording;
- (void)updateCallRecordingIfNeeded;
- (void)updateCallTranslationIfNeeded;
- (void)updateCurrentState;
- (void)updateDefaultNoPosterAvatarViewVisibility;
- (void)updateDimmingView:(id)view with:(CGSize)with;
- (void)updateFloatingViewsVisibilityHandlers;
- (void)updateHardPauseDigitsState;
- (void)updateIncomingBottomBarControlState;
- (void)updateKeypadBackgroundMaterialWithViewSize:(CGSize)size;
- (void)updateLayeredBackgroundWallpaper;
- (void)updateLayoutSupplementalButtons;
- (void)updateLegacyBackgroundImageVisibilityWithShouldShowWallpaper:(BOOL)wallpaper;
- (void)updateParticipantConstraintsForPosterName:(id)name;
- (void)updateParticipantsLabelForView:(id)view isHidden:(BOOL)hidden;
- (void)updatePoster;
- (void)updatePosterBadgeView:(BOOL)view to:(id)to;
- (void)updatePosterSaliencyRect;
- (void)updatePosterViewModelForParticipantsView:(id)view;
- (void)updatePresentationStateWithAllowed:(BOOL)allowed;
- (void)updateScreenSharingDisableUpdateMask;
- (void)updateScreeningTextFieldContainer:(id)container;
- (void)updateShareNameAndPhotoHUDPresentationIfNeeded;
- (void)updateShouldShowLargeAvatar;
- (void)updateSupplementalButtonsLayout;
- (void)updateTopShelfContentWithCall:(id)call sceneWindowSize:(CGSize)size;
- (void)updateTranslationBackgroundView:(BOOL)view;
- (void)updateViewForEmergencyCallIfNecessary;
- (void)updateViewsForHeldCallControlsViewIfNeeded;
- (void)updateWaitOnHoldServiceWithCall:(id)call;
- (void)updateWaitOnHoldViewIfNeeded;
- (void)useRTTButtonTapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)wantsHoldMusicChangedNotification:(id)notification;
- (void)writeToLastSeenPosterCacheIfNecessaryForCall:(id)call;
@end

@implementation iPadAudioCallViewController

- (void)_testing_finishedAnimatingToActiveCallState:(id)state
{
  stateCopy = state;
  if ([UIApp isRunningTest:@"AnswerIncomingCall"])
  {
    [UIApp finishedSubTest:@"end-to-end" forTest:@"AnswerIncomingCall"];
    [(iPadAudioCallViewController *)self bottomBarActionPerformed:15 withCompletionState:1 fromBar:stateCopy];
  }
}

- (void)_testing_didTransitionToActiveCallState:(id)state
{
  stateCopy = state;
  if ([UIApp isRunningTest:@"AnswerIncomingCall"])
  {
    [UIApp finishedSubTest:@"pre-animation-delay" forTest:@"AnswerIncomingCall"];
  }

  else if ([UIApp isRunningTest:@"EndActiveCall"])
  {
    v5 = dispatch_time(0, 2000000000);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000CE104;
    v7[3] = &unk_100357110;
    v7[4] = self;
    v8 = stateCopy;
    dispatch_after(v5, &_dispatch_main_q, v7);
  }

  else if ([UIApp isRunningTest:@"PlaceOutgoingCall"])
  {
    v6 = +[TUCallCenter sharedInstance];
    [v6 disconnectAllCalls];
  }
}

- (void)_testing_didTransitionToIdleCallState
{
  if ([UIApp isRunningTest:@"EndActiveCall"])
  {
    [UIApp finishedSubTest:@"end-call" forTest:@"EndActiveCall"];
    v2 = UIApp;
    v3 = @"EndActiveCall";
  }

  else
  {
    v4 = [UIApp isRunningTest:@"AnswerIncomingCall"];
    v2 = UIApp;
    if (v4)
    {
      v3 = @"AnswerIncomingCall";
    }

    else
    {
      if (![UIApp isRunningTest:@"PlaceOutgoingCall"])
      {
        return;
      }

      v2 = UIApp;
      v3 = @"PlaceOutgoingCall";
    }
  }

  [v2 finishedTest:v3];
}

- (void)_testing_didTransitionToEndingCallState
{
  if ([UIApp isRunningTest:@"EndActiveCall"])
  {
    v2 = UIApp;

    [v2 finishedSubTest:@"pre-transition-delay" forTest:@"EndActiveCall"];
  }
}

- (void)_testing_didTransitionToIncomingRingingCallState:(id)state
{
  stateCopy = state;
  if ([UIApp isRunningTest:@"AnswerIncomingCall"])
  {
    v5 = dispatch_time(0, 2000000000);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000CE380;
    v6[3] = &unk_100357110;
    v6[4] = self;
    v7 = stateCopy;
    dispatch_after(v5, &_dispatch_main_q, v6);
  }
}

- (void)setParticipantsViewControllersShouldIgnoreUpdates:(BOOL)updates
{
  if (self->_participantsViewControllersShouldIgnoreUpdates != updates)
  {
    updatesCopy = updates;
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (updatesCopy)
      {
        v6 = @"YES";
      }

      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating the participants view and viewController shouldIgnoreUpdates: %@", &v9, 0xCu);
    }

    self->_participantsViewControllersShouldIgnoreUpdates = updatesCopy;
    callParticipantsViewController = [(iPadAudioCallViewController *)self callParticipantsViewController];
    [callParticipantsViewController setShouldIgnoreUpdates:updatesCopy];

    callWaitingParticipantsViewController = [(iPadAudioCallViewController *)self callWaitingParticipantsViewController];
    [callWaitingParticipantsViewController setShouldIgnoreUpdates:updatesCopy];
  }
}

- (iPadAudioCallViewController)initWithCallDisplayStyleManager:(id)manager callCenter:(id)center featureFlags:(id)flags call:(id)call
{
  managerCopy = manager;
  centerCopy = center;
  flagsCopy = flags;
  callCopy = call;
  v84.receiver = self;
  v84.super_class = iPadAudioCallViewController;
  v15 = [(PHCallViewController *)&v84 initWithNibName:0 bundle:0];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_existingPrioritizedCall, call);
    objc_storeStrong(&v16->_callCenter, center);
    objc_storeStrong(&v16->_featureFlags, flags);
    v17 = objc_opt_new();
    analyticsReporter = v16->_analyticsReporter;
    v16->_analyticsReporter = v17;

    v19 = objc_opt_new();
    v20 = [v19 makeWithCallCenter:centerCopy];
    declineCallService = v16->_declineCallService;
    v16->_declineCallService = v20;

    v22 = objc_opt_new();
    labelDescriptorFactory = v16->_labelDescriptorFactory;
    v16->_labelDescriptorFactory = v22;

    objc_storeStrong(&v16->_callDisplayStyleManager, manager);
    v16->_wasPresentedAsBanner = [managerCopy callDisplayStyle] == 0;
    v16->_middleViewState = 0;
    v16->_canDumpHierarchy = 1;
    v24 = objc_opt_new();
    mutedTalkerViewControllerFactory = v16->_mutedTalkerViewControllerFactory;
    v16->_mutedTalkerViewControllerFactory = v24;

    makeViewController = [(CNKMutedTalkerBannerViewControllerFactory *)v16->_mutedTalkerViewControllerFactory makeViewController];
    mutedTalkerBannerViewController = v16->_mutedTalkerBannerViewController;
    v16->_mutedTalkerBannerViewController = makeViewController;

    [(CNKMutedTalkerBannerViewControllerProtocol *)v16->_mutedTalkerBannerViewController setDelegate:v16];
    v16->_didNotifyMutedCaller = 0;
    v28 = objc_opt_new();
    screeningViewControllerFactory = v16->_screeningViewControllerFactory;
    v16->_screeningViewControllerFactory = v28;

    v30 = +[CNKFeatures sharedInstance];
    features = v16->_features;
    v16->_features = v30;

    v16->_participantsViewShouldShowParticipantLabel = 1;
    v32 = objc_alloc_init(NSCache);
    contactsCache = v16->_contactsCache;
    v16->_contactsCache = v32;

    [(NSCache *)v16->_contactsCache setCountLimit:10];
    v34 = objc_alloc_init(NSCache);
    configurationCache = v16->_configurationCache;
    v16->_configurationCache = v34;

    v36 = +[NSMutableArray array];
    callUUIDsThatPresentedSNaPHUD = v16->_callUUIDsThatPresentedSNaPHUD;
    v16->_callUUIDsThatPresentedSNaPHUD = v36;

    v38 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v16->_featureFlags;
    v16->_featureFlags = v38;

    v40 = objc_opt_new();
    screenSharingInteractionControllerFactory = v16->_screenSharingInteractionControllerFactory;
    v16->_screenSharingInteractionControllerFactory = v40;

    v42 = objc_opt_new();
    waitOnHoldViewControllerFactory = v16->_waitOnHoldViewControllerFactory;
    v16->_waitOnHoldViewControllerFactory = v42;

    v44 = objc_opt_new();
    smartHoldingAnalytics = v16->_smartHoldingAnalytics;
    v16->_smartHoldingAnalytics = v44;

    v46 = objc_opt_new();
    backgroundController = v16->_backgroundController;
    v16->_backgroundController = v46;

    v48 = +[NSNotificationCenter defaultCenter];
    [v48 addObserver:v16 selector:"callCenterCallStatusChangedNotification:" name:TUCallCenterCallStatusChangedNotification object:0];
    [v48 addObserver:v16 selector:"hardwareButtonEventNotification:" name:@"PHHardwareButtonEventNotification" object:0];
    [v48 addObserver:v16 selector:"hardPauseDigitsStateChangedNotification:" name:TUCallHardPauseDigitsStateChangedNotification object:0];
    [v48 addObserver:v16 selector:"callContinuityStateChangedNotification:" name:TUCallCenterCallContinuityStateChangedNotification object:0];
    [v48 addObserver:v16 selector:"wantsHoldMusicChangedNotification:" name:TUCallCenterCallWantsHoldMusicChangedNotification object:0];
    [v48 addObserver:v16 selector:"callOnHoldChangedNotification:" name:TUCallIsOnHoldChangedNotification object:0];
    [v48 addObserver:v16 selector:"handleTUCallSupportsTTYWithVoiceChangedNotification:" name:TUCallSupportsTTYWithVoiceChangedNotification object:0];
    [v48 addObserver:v16 selector:"handleTUCallTTYTypeChangedNotification:" name:TUCallTTYTypeChangedNotification object:0];
    [v48 addObserver:v16 selector:"callIsScreenSharingChangedNotification:" name:TUCallIsSharingScreenChangedNotification object:0];
    [v48 addObserver:v16 selector:"callDisplayContextChangedNotification:" name:TUCallDisplayContextChangedNotification object:0];
    [v48 addObserver:v16 selector:"callIsEmergencyChangedNotification:" name:TUCallCenterIsEmergencyChangedNotification object:0];
    [v48 addObserver:v16 selector:"presentContactCard" name:@"MoreMenuRemoteAlertViewPresentContactCardNotification" object:0];
    [v48 addObserver:v16 selector:"showAddParticipantSheet" name:@"MoreMenuRemoteAlertViewPresentAddParticipantNotification" object:0];
    [v48 addObserver:v16 selector:"callRecordingAfterFullScreenRequest:" name:@"MoreMenuRemoteAlertViewCallRecordingNotification" object:0];
    [v48 addObserver:v16 selector:"conferenceParticipantCallsChangedNotification:" name:TUCallCenterConferenceParticipantsChangedNotification object:0];
    [v48 addObserver:v16 selector:"appBecomesInactive:" name:UIApplicationWillResignActiveNotification object:0];
    [v48 addObserver:v16 selector:"appBecomesActive:" name:UIApplicationDidBecomeActiveNotification object:0];
    featureFlags = [(iPadAudioCallViewController *)v16 featureFlags];
    v50 = TUCallScreeningEnabledM3();

    if (v50)
    {
      [v48 addObserver:v16 selector:"callCenterScreeningStatusChangedNotification:" name:TUCallCenterIsScreeningChangedNotification object:0];
    }

    featureFlags2 = [(iPadAudioCallViewController *)v16 featureFlags];
    receptionistEnabled = [featureFlags2 receptionistEnabled];

    if (receptionistEnabled)
    {
      [v48 addObserver:v16 selector:"answeringMachineStreamTokenChanged:" name:TUCallAnsweringMachineStreamTokenChangedNotification object:0];
      [v48 addObserver:v16 selector:"receptionistStateChanged:" name:TUCallCenterReceptionistStateChangedNotification object:0];
    }

    featureFlags3 = [(iPadAudioCallViewController *)v16 featureFlags];
    audioCallTranslationEnabled = [featureFlags3 audioCallTranslationEnabled];

    if (audioCallTranslationEnabled)
    {
      [v48 addObserver:v16 selector:"updateCallTranslationIfNeeded" name:TUCallTranslationAvailabilityChangedNotification object:0];
    }

    featureFlags4 = [(iPadAudioCallViewController *)v16 featureFlags];
    waitOnHoldEnabled = [featureFlags4 waitOnHoldEnabled];

    if (waitOnHoldEnabled)
    {
      [(iPadAudioCallViewController *)v16 setupCallHoldingObservers];
    }

    routeController = [centerCopy routeController];
    [routeController addDelegate:v16];

    audioDeviceController = [centerCopy audioDeviceController];
    [audioDeviceController addDelegate:v16];

    v59 = +[UIApplication sharedApplication];
    delegate = [v59 delegate];
    bannerPresentationManager = [delegate bannerPresentationManager];
    [bannerPresentationManager setLocalAudioTogglingDelegate:v16];

    sharedController = [(CNKScreenSharingInteractionControllerFactory *)v16->_screenSharingInteractionControllerFactory sharedController];
    [sharedController addDelegate:v16];

    v16->_shouldIgnoreWaitOnHoldSessionState = 0;
    [(iPadAudioCallViewController *)v16 observeCallRecordingNotifications];
  }

  v63 = sub_100004F84();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController is about to set shouldPresentAlertButton to NO", buf, 2u);
  }

  v16->_shouldPresentAlertButton = 0;
  v64 = +[UIApplication sharedApplication];
  delegate2 = [v64 delegate];
  alertCoordinator = [delegate2 alertCoordinator];

  if (!alertCoordinator)
  {
    v67 = objc_alloc_init(_TtC13InCallService16AlertCoordinator);
    v68 = +[UIApplication sharedApplication];
    delegate3 = [v68 delegate];
    [delegate3 setAlertCoordinator:v67];
  }

  v70 = +[UIApplication sharedApplication];
  delegate4 = [v70 delegate];
  alertCoordinator2 = [delegate4 alertCoordinator];
  [alertCoordinator2 setDelegate:v16];

  v16->_shouldEnableVideoStreamingButton = 0;
  v16->_shouldEnableShareMediaButton = 0;
  features = [(iPadAudioCallViewController *)v16 features];
  LODWORD(delegate4) = [features isEnhancedEmergencyEnabled];

  if (delegate4)
  {
    v74 = +[PHSOSDisconnectionConfirmation sharedInstance];
    [v74 addDelegate:v16];

    frontmostCall = [centerCopy frontmostCall];
    if (![frontmostCall isEmergency])
    {
LABEL_21:

      goto LABEL_22;
    }

    emergencyCoordinator = [(iPadAudioCallViewController *)v16 emergencyCoordinator];

    if (!emergencyCoordinator)
    {
      v77 = sub_100004F84();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v86 = v16;
        _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "EnhancedEmergency: going to create PHEnhancedEmergencyCoordinator from initing iPadAudioCallViewController: %@", buf, 0xCu);
      }

      v78 = objc_alloc_init(PHEnhancedEmergencyCoordinator);
      [(iPadAudioCallViewController *)v16 setEmergencyCoordinator:v78];

      emergencyCoordinator2 = [(iPadAudioCallViewController *)v16 emergencyCoordinator];
      [emergencyCoordinator2 setDelegate:v16];

      frontmostCall = [centerCopy frontmostCall];
      emergencyCoordinator3 = [(iPadAudioCallViewController *)v16 emergencyCoordinator];
      [emergencyCoordinator3 setTuCall:frontmostCall];

      goto LABEL_21;
    }
  }

LABEL_22:
  [(iPadAudioCallViewController *)v16 setupDimmingViewForAlwaysOnDisplay];
  frontmostCall2 = [(iPadAudioCallViewController *)v16 frontmostCall];
  [(iPadAudioCallViewController *)v16 updateWaitOnHoldServiceWithCall:frontmostCall2];

  backgroundController = [(iPadAudioCallViewController *)v16 backgroundController];
  [backgroundController updateBackgroundFor:{objc_msgSend(managerCopy, "callDisplayStyle")}];

  return v16;
}

- (void)callRecordingAfterFullScreenRequest:(id)request
{
  userInfo = [request userInfo];
  v5 = [userInfo valueForKey:@"callRecording"];

  if ([v5 isEqual:@"start"])
  {
    [(iPadAudioCallViewController *)self startRecording];
  }

  else if ([v5 isEqual:@"stop"])
  {
    [(iPadAudioCallViewController *)self endRecording];
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  bottomBar = [(PHCallViewController *)self bottomBar];
  [bottomBar setDelegate:0];

  callCenter = [(iPadAudioCallViewController *)self callCenter];
  audioDeviceController = [callCenter audioDeviceController];
  [audioDeviceController removeDelegate:self];

  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] != 3)
  {

    goto LABEL_5;
  }

  features = [(iPadAudioCallViewController *)self features];
  isDominoEnabled = [features isDominoEnabled];

  if ((isDominoEnabled & 1) == 0)
  {
LABEL_5:
    [(iPadAudioCallViewController *)self deleteAllUnarchivedPosterDirectories];
  }

  features2 = [(iPadAudioCallViewController *)self features];
  isEnhancedEmergencyEnabled = [features2 isEnhancedEmergencyEnabled];

  if (isEnhancedEmergencyEnabled)
  {
    v12 = +[PHSOSDisconnectionConfirmation sharedInstance];
    [v12 removeDelegate:self];
  }

  v13 = sub_100004F84();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController deallocated %@", buf, 0xCu);
  }

  v14.receiver = self;
  v14.super_class = iPadAudioCallViewController;
  [(iPadAudioCallViewController *)&v14 dealloc];
}

- (void)addBottomBarSubView
{
  v3 = [PHBottomBar alloc];
  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  v5 = [(PHBottomBar *)v3 initWithCallDisplayStyleManager:callDisplayStyleManager isAudioCall:1];
  [(PHCallViewController *)self setBottomBar:v5];

  v6 = +[UIColor clearColor];
  bottomBar = [(PHCallViewController *)self bottomBar];
  [bottomBar setBackgroundColor:v6];

  bottomBar2 = [(PHCallViewController *)self bottomBar];
  [bottomBar2 setDelegate:self];

  bottomBar3 = [(PHCallViewController *)self bottomBar];
  [bottomBar3 setBottomMargin:0.0];

  [(iPadAudioCallViewController *)self updateHardPauseDigitsState];
  view = [(iPadAudioCallViewController *)self view];
  bottomBar4 = [(PHCallViewController *)self bottomBar];
  [view addSubview:bottomBar4];

  bottomBar5 = [(PHCallViewController *)self bottomBar];
  [bottomBar5 setCurrentState:11];

  objc_initWeak(&location, self);
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_1000CF3CC;
  v21 = &unk_100356F60;
  objc_copyWeak(&v22, &location);
  v13 = objc_retainBlock(&v18);
  (v13[2])(v13, v14, v15, v16);
  v17 = [(PHCallViewController *)self bottomBar:v18];
  [v17 setStatusChangedHandler:v13];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)addCallParticipantsSubView
{
  if (!self->_callParticipantsViewController)
  {
    v3 = [(iPadAudioCallViewController *)self contactForCall:self->_existingPrioritizedCall];
    v4 = [PHCallParticipantsViewController alloc];
    callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
    contactsCache = [(iPadAudioCallViewController *)self contactsCache];
    if (v3)
    {
      v13 = v3;
      v7 = [NSArray arrayWithObjects:&v13 count:1];
    }

    else
    {
      v7 = &__NSArray0__struct;
    }

    v8 = [(PHCallParticipantsViewController *)v4 initWithCallDisplayStyleManager:callDisplayStyleManager contactsCache:contactsCache contacts:v7];
    callParticipantsViewController = self->_callParticipantsViewController;
    self->_callParticipantsViewController = v8;

    if (v3)
    {
    }

    [(PHCallParticipantsViewController *)self->_callParticipantsViewController setPrioritizedCall:self->_existingPrioritizedCall];
    [(PHCallParticipantsViewController *)self->_callParticipantsViewController setDelegate:self];
    [(PHCallParticipantsViewController *)self->_callParticipantsViewController setShouldIgnoreUpdates:[(iPadAudioCallViewController *)self participantsViewControllersShouldIgnoreUpdates]];
    [(iPadAudioCallViewController *)self updateShouldShowLargeAvatar];
    [(iPadAudioCallViewController *)self addChildViewController:self->_callParticipantsViewController];
    view = [(iPadAudioCallViewController *)self view];
    view2 = [(PHCallParticipantsViewController *)self->_callParticipantsViewController view];
    [view addSubview:view2];

    [(iPadAudioCallViewController *)self applyParticipantsViewConstraints];
    view3 = [(PHCallParticipantsViewController *)self->_callParticipantsViewController view];
    [view3 setAlpha:1.0];
  }
}

- (void)layoutParticipantsViewAnimated:(BOOL)animated crossfade:(BOOL)crossfade
{
  crossfadeCopy = crossfade;
  animatedCopy = animated;
  shouldShowLargeAvatar = [(iPadAudioCallViewController *)self shouldShowLargeAvatar];
  [(iPadAudioCallViewController *)self updateShouldShowLargeAvatar];
  shouldShowLargeAvatar2 = [(iPadAudioCallViewController *)self shouldShowLargeAvatar];
  if (animatedCopy)
  {
    if (crossfadeCopy)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000CF90C;
      v14[3] = &unk_100356988;
      v14[4] = self;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000CF9AC;
      v13[3] = &unk_1003569B0;
      v13[4] = self;
      [UIView animateWithDuration:v14 animations:v13 completion:0.400000006];
    }

    else
    {
      v9 = shouldShowLargeAvatar ^ shouldShowLargeAvatar2;
      if (v9)
      {
        view = [(iPadAudioCallViewController *)self view];
        [view layoutIfNeeded];
      }

      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000CFAF8;
      v11[3] = &unk_100356BB8;
      v12 = v9;
      v11[4] = self;
      [UIView animateWithDuration:0 delay:v11 usingSpringWithDamping:&stru_100359020 initialSpringVelocity:0.800000012 options:0.0 animations:1.0 completion:0.0];
    }
  }

  else
  {

    [(iPadAudioCallViewController *)self resetParticipantsViewConstraints];
  }
}

- (void)resetParticipantsViewConstraints
{
  [(iPadAudioCallViewController *)self removeAllParticipantsViewConstraints];
  [(iPadAudioCallViewController *)self applyParticipantsViewConstraints];

  [(iPadAudioCallViewController *)self copyCallWaitingConstraintsFromParticipantsView];
}

- (void)removeAllParticipantsViewConstraints
{
  v15 = +[NSMutableArray array];
  participantsViewTopConstraint = [(iPadAudioCallViewController *)self participantsViewTopConstraint];

  if (participantsViewTopConstraint)
  {
    participantsViewTopConstraint2 = [(iPadAudioCallViewController *)self participantsViewTopConstraint];
    [v15 addObject:participantsViewTopConstraint2];
  }

  participantsViewLeadingConstraint = [(iPadAudioCallViewController *)self participantsViewLeadingConstraint];

  if (participantsViewLeadingConstraint)
  {
    participantsViewLeadingConstraint2 = [(iPadAudioCallViewController *)self participantsViewLeadingConstraint];
    [v15 addObject:participantsViewLeadingConstraint2];
  }

  participantsViewTrailingConstraint = [(iPadAudioCallViewController *)self participantsViewTrailingConstraint];

  if (participantsViewTrailingConstraint)
  {
    participantsViewTrailingConstraint2 = [(iPadAudioCallViewController *)self participantsViewTrailingConstraint];
    [v15 addObject:participantsViewTrailingConstraint2];
  }

  participantsViewCenterXConstraint = [(iPadAudioCallViewController *)self participantsViewCenterXConstraint];

  if (participantsViewCenterXConstraint)
  {
    participantsViewCenterXConstraint2 = [(iPadAudioCallViewController *)self participantsViewCenterXConstraint];
    [v15 addObject:participantsViewCenterXConstraint2];
  }

  participantsViewBottomConstraint = [(iPadAudioCallViewController *)self participantsViewBottomConstraint];

  if (participantsViewBottomConstraint)
  {
    participantsViewBottomConstraint2 = [(iPadAudioCallViewController *)self participantsViewBottomConstraint];
    [v15 addObject:participantsViewBottomConstraint2];
  }

  participantsViewCenterYConstraint = [(iPadAudioCallViewController *)self participantsViewCenterYConstraint];

  if (participantsViewCenterYConstraint)
  {
    participantsViewCenterYConstraint2 = [(iPadAudioCallViewController *)self participantsViewCenterYConstraint];
    [v15 addObject:participantsViewCenterYConstraint2];
  }

  [NSLayoutConstraint deactivateConstraints:v15];
}

- (void)applyParticipantsViewConstraints
{
  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  if (callDisplayStyle <= 2)
  {
    if ((callDisplayStyle - 1) >= 2)
    {
      if (!callDisplayStyle)
      {

        [(iPadAudioCallViewController *)self applyParticipantsViewConstraintsForBanner];
      }

      return;
    }

    goto LABEL_9;
  }

  if (callDisplayStyle != 3)
  {
    if (callDisplayStyle != 4)
    {
      return;
    }

LABEL_9:

    [(iPadAudioCallViewController *)self applyParticipantsViewConstraintsForFullScreen];
    return;
  }

  [(iPadAudioCallViewController *)self applyParticipantsViewConstraintsForAmbient];
}

- (void)applyParticipantsViewConstraintsForFullScreen
{
  getParticipantsView_NotWaiting = [(iPadAudioCallViewController *)self getParticipantsView_NotWaiting];
  if (getParticipantsView_NotWaiting)
  {
    viewIfLoaded = [(iPadAudioCallViewController *)self viewIfLoaded];

    if (viewIfLoaded)
    {
      [getParticipantsView_NotWaiting setTranslatesAutoresizingMaskIntoConstraints:0];
      bottomAnchor = [getParticipantsView_NotWaiting bottomAnchor];
      layoutGuidesProvider = [(iPadAudioCallViewController *)self layoutGuidesProvider];
      callerDetailsLayoutGuide = [layoutGuidesProvider callerDetailsLayoutGuide];
      bottomAnchor2 = [callerDetailsLayoutGuide bottomAnchor];
      v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      [(iPadAudioCallViewController *)self setParticipantsViewBottomConstraint:v9];

      leadingAnchor = [getParticipantsView_NotWaiting leadingAnchor];
      layoutGuidesProvider2 = [(iPadAudioCallViewController *)self layoutGuidesProvider];
      bottomShelfLayoutGuide = [layoutGuidesProvider2 bottomShelfLayoutGuide];
      leadingAnchor2 = [bottomShelfLayoutGuide leadingAnchor];
      v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [(iPadAudioCallViewController *)self setParticipantsViewLeadingConstraint:v14];

      trailingAnchor = [getParticipantsView_NotWaiting trailingAnchor];
      layoutGuidesProvider3 = [(iPadAudioCallViewController *)self layoutGuidesProvider];
      bottomShelfLayoutGuide2 = [layoutGuidesProvider3 bottomShelfLayoutGuide];
      trailingAnchor2 = [bottomShelfLayoutGuide2 trailingAnchor];
      v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      [(iPadAudioCallViewController *)self setParticipantsViewTrailingConstraint:v19];

      topAnchor = [getParticipantsView_NotWaiting topAnchor];
      layoutGuidesProvider4 = [(iPadAudioCallViewController *)self layoutGuidesProvider];
      callerDetailsLayoutGuide2 = [layoutGuidesProvider4 callerDetailsLayoutGuide];
      topAnchor2 = [callerDetailsLayoutGuide2 topAnchor];
      v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
      [(iPadAudioCallViewController *)self setParticipantsViewTopConstraint:v24];

      participantsViewBottomConstraint = [(iPadAudioCallViewController *)self participantsViewBottomConstraint];
      v30[0] = participantsViewBottomConstraint;
      participantsViewTopConstraint = [(iPadAudioCallViewController *)self participantsViewTopConstraint];
      v30[1] = participantsViewTopConstraint;
      participantsViewLeadingConstraint = [(iPadAudioCallViewController *)self participantsViewLeadingConstraint];
      v30[2] = participantsViewLeadingConstraint;
      participantsViewTrailingConstraint = [(iPadAudioCallViewController *)self participantsViewTrailingConstraint];
      v30[3] = participantsViewTrailingConstraint;
      v29 = [NSArray arrayWithObjects:v30 count:4];
      [NSLayoutConstraint activateConstraints:v29];
    }
  }
}

- (id)participantsViewConstraints
{
  participantsViewBottomConstraint = [(iPadAudioCallViewController *)self participantsViewBottomConstraint];
  v9[0] = participantsViewBottomConstraint;
  participantsViewTopConstraint = [(iPadAudioCallViewController *)self participantsViewTopConstraint];
  v9[1] = participantsViewTopConstraint;
  participantsViewLeadingConstraint = [(iPadAudioCallViewController *)self participantsViewLeadingConstraint];
  v9[2] = participantsViewLeadingConstraint;
  participantsViewTrailingConstraint = [(iPadAudioCallViewController *)self participantsViewTrailingConstraint];
  v9[3] = participantsViewTrailingConstraint;
  v7 = [NSArray arrayWithObjects:v9 count:4];

  return v7;
}

- (id)ambientParticipantsViewConstraintsForView:(id)view largeAvatar:(BOOL)avatar
{
  avatarCopy = avatar;
  viewCopy = view;
  v7 = objc_alloc_init(NSMutableDictionary);
  +[PHUIConfiguration ambientVerticalPadding];
  v9 = v8;
  +[PHUIConfiguration ambientHorizontalPadding];
  v11 = v10;
  if (avatarCopy)
  {
    bottomAnchor = [viewCopy bottomAnchor];
    view = [(iPadAudioCallViewController *)self view];
    bottomAnchor2 = [view bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v9];
    [v7 setObject:v15 forKeyedSubscript:&off_10036A2F8];

    trailingAnchor = [viewCopy trailingAnchor];
    view2 = [(iPadAudioCallViewController *)self view];
    safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
    v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v11];
    [v7 setObject:v20 forKeyedSubscript:&off_10036A310];
  }

  else
  {
    trailingAnchor = [viewCopy trailingAnchor];
    view2 = [(iPadAudioCallViewController *)self ambientAudioRoutesControlView];
    safeAreaLayoutGuide = [view2 leadingAnchor];
    trailingAnchor2 = [trailingAnchor constraintEqualToAnchor:safeAreaLayoutGuide constant:-20.0];
    [v7 setObject:trailingAnchor2 forKeyedSubscript:&off_10036A310];
  }

  topAnchor = [viewCopy topAnchor];
  view3 = [(iPadAudioCallViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v24 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v9];
  [v7 setObject:v24 forKeyedSubscript:&off_10036A328];

  leadingAnchor = [viewCopy leadingAnchor];
  view4 = [(iPadAudioCallViewController *)self view];
  safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
  v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v11];
  [v7 setObject:v29 forKeyedSubscript:&off_10036A340];

  return v7;
}

- (void)applyParticipantsViewConstraintsForAmbient
{
  getParticipantsView_NotWaiting = [(iPadAudioCallViewController *)self getParticipantsView_NotWaiting];
  v4 = getParticipantsView_NotWaiting;
  if (getParticipantsView_NotWaiting)
  {
    [getParticipantsView_NotWaiting setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [(iPadAudioCallViewController *)self ambientParticipantsViewConstraintsForView:v4 largeAvatar:[(iPadAudioCallViewController *)self shouldShowLargeAvatar]];
    [(iPadAudioCallViewController *)self setParticipantsViewCenterXConstraint:0];
    [(iPadAudioCallViewController *)self setParticipantsViewCenterYConstraint:0];
    v6 = [v5 objectForKeyedSubscript:&off_10036A328];
    [(iPadAudioCallViewController *)self setParticipantsViewTopConstraint:v6];

    v7 = [v5 objectForKeyedSubscript:&off_10036A2F8];
    [(iPadAudioCallViewController *)self setParticipantsViewBottomConstraint:v7];

    v8 = [v5 objectForKeyedSubscript:&off_10036A340];
    [(iPadAudioCallViewController *)self setParticipantsViewLeadingConstraint:v8];

    v9 = [v5 objectForKeyedSubscript:&off_10036A310];
    [(iPadAudioCallViewController *)self setParticipantsViewTrailingConstraint:v9];

    participantsViewTopConstraint = [(iPadAudioCallViewController *)self participantsViewTopConstraint];
    participantsViewLeadingConstraint = [(iPadAudioCallViewController *)self participantsViewLeadingConstraint];
    v16[1] = participantsViewLeadingConstraint;
    participantsViewTrailingConstraint = [(iPadAudioCallViewController *)self participantsViewTrailingConstraint];
    v16[2] = participantsViewTrailingConstraint;
    v13 = [NSArray arrayWithObjects:v16 count:3];
    [NSLayoutConstraint activateConstraints:v13];

    participantsViewBottomConstraint = [(iPadAudioCallViewController *)self participantsViewBottomConstraint];

    if (participantsViewBottomConstraint)
    {
      participantsViewBottomConstraint2 = [(iPadAudioCallViewController *)self participantsViewBottomConstraint];
      [participantsViewBottomConstraint2 setActive:1];
    }
  }
}

- (void)applyParticipantsViewConstraintsForBanner
{
  getParticipantsView_NotWaiting = [(iPadAudioCallViewController *)self getParticipantsView_NotWaiting];
  v4 = getParticipantsView_NotWaiting;
  if (getParticipantsView_NotWaiting)
  {
    [getParticipantsView_NotWaiting setTranslatesAutoresizingMaskIntoConstraints:0];
    [(iPadAudioCallViewController *)self setParticipantsViewCenterXConstraint:0];
    centerYAnchor = [v4 centerYAnchor];
    view = [(iPadAudioCallViewController *)self view];
    centerYAnchor2 = [view centerYAnchor];
    v8 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [(iPadAudioCallViewController *)self setParticipantsViewCenterYConstraint:v8];

    topAnchor = [v4 topAnchor];
    view2 = [(iPadAudioCallViewController *)self view];
    topAnchor2 = [view2 topAnchor];
    v12 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    [(iPadAudioCallViewController *)self setParticipantsViewTopConstraint:v12];

    bottomAnchor = [v4 bottomAnchor];
    view3 = [(iPadAudioCallViewController *)self view];
    bottomAnchor2 = [view3 bottomAnchor];
    v16 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    [(iPadAudioCallViewController *)self setParticipantsViewBottomConstraint:v16];

    leadingAnchor = [v4 leadingAnchor];
    view4 = [(iPadAudioCallViewController *)self view];
    leadingAnchor2 = [view4 leadingAnchor];
    v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [(iPadAudioCallViewController *)self setParticipantsViewLeadingConstraint:v20];

    trailingAnchor = [v4 trailingAnchor];
    view5 = [(iPadAudioCallViewController *)self view];
    trailingAnchor2 = [view5 trailingAnchor];
    v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [(iPadAudioCallViewController *)self setParticipantsViewTrailingConstraint:v24];

    participantsViewCenterYConstraint = [(iPadAudioCallViewController *)self participantsViewCenterYConstraint];
    participantsViewTopConstraint = [(iPadAudioCallViewController *)self participantsViewTopConstraint];
    v31[1] = participantsViewTopConstraint;
    participantsViewBottomConstraint = [(iPadAudioCallViewController *)self participantsViewBottomConstraint];
    v31[2] = participantsViewBottomConstraint;
    participantsViewLeadingConstraint = [(iPadAudioCallViewController *)self participantsViewLeadingConstraint];
    v31[3] = participantsViewLeadingConstraint;
    participantsViewTrailingConstraint = [(iPadAudioCallViewController *)self participantsViewTrailingConstraint];
    v31[4] = participantsViewTrailingConstraint;
    v30 = [NSArray arrayWithObjects:v31 count:5];
    [NSLayoutConstraint activateConstraints:v30];
  }
}

- (void)updateScreenSharingDisableUpdateMask
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  callCenter = [(iPadAudioCallViewController *)self callCenter];
  currentAudioAndVideoCalls = [callCenter currentAudioAndVideoCalls];

  v5 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(currentAudioAndVideoCalls);
        }

        if ([*(*(&v22 + 1) + 8 * i) isSharingScreen])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v22 objects:v32 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  screenSharingInteractionControllerFactory = [(iPadAudioCallViewController *)self screenSharingInteractionControllerFactory];
  sharedController = [screenSharingInteractionControllerFactory sharedController];
  remoteControlStatus = [sharedController remoteControlStatus];

  if (remoteControlStatus == 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = v9;
  }

  v14 = sub_1000314C4();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = @"NO";
    if (v13)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    if (v9)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    *buf = 138543874;
    v27 = v16;
    v28 = 2114;
    v29 = v17;
    if (remoteControlStatus == 2)
    {
      v15 = @"YES";
    }

    v30 = 2114;
    v31 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Screen sharing audio call view controller shouldHideViewsFromScreenSharing: %{public}@ (isSharingScreenForAnyCall: %{public}@ isUnderRemoteControl: %{public}@)", buf, 0x20u);
  }

  if (v13)
  {
    v18 = 16;
  }

  else
  {
    v18 = 0;
  }

  view = [(iPadAudioCallViewController *)self view];
  layer = [view layer];
  [layer setDisableUpdateMask:v18];

  callDetailsCoordinator = [(iPadAudioCallViewController *)self callDetailsCoordinator];
  [callDetailsCoordinator setShouldHideViewsFromScreenSharing:v13];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = iPadAudioCallViewController;
  [(iPadAudioCallViewController *)&v6 viewDidLoad];
  inCallRootViewController = [(iPadAudioCallViewController *)self inCallRootViewController];

  if (inCallRootViewController)
  {
    [(iPadAudioCallViewController *)self handleConfigurationAfterViewLoaded];
  }

  else
  {
    v4 = sub_100004F84();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Skipping update to state due to lack of root view controller.", v5, 2u);
    }
  }
}

- (void)handleConfigurationAfterViewLoaded
{
  [(iPadAudioCallViewController *)self setLayoutGuides];
  layoutGuidesProvider = [(iPadAudioCallViewController *)self layoutGuidesProvider];
  backgroundController = [(iPadAudioCallViewController *)self backgroundController];
  [backgroundController setLayoutGuidesProvider:layoutGuidesProvider];

  backgroundController2 = [(iPadAudioCallViewController *)self backgroundController];
  view = [(iPadAudioCallViewController *)self view];
  [view bounds];
  v8 = v7;
  view2 = [(iPadAudioCallViewController *)self view];
  [view2 bounds];
  [backgroundController2 updateIsLandscape:v8 > v10];

  view3 = [(iPadAudioCallViewController *)self view];
  backgroundController3 = [(iPadAudioCallViewController *)self backgroundController];
  backgroundContainer = [backgroundController3 backgroundContainer];
  [view3 addSubview:backgroundContainer];

  backgroundController4 = [(iPadAudioCallViewController *)self backgroundController];
  backgroundContainer2 = [backgroundController4 backgroundContainer];
  [(iPadAudioCallViewController *)self updateBackgroundTintToView:backgroundContainer2];

  backgroundController5 = [(iPadAudioCallViewController *)self backgroundController];
  backgroundContainer3 = [backgroundController5 backgroundContainer];
  leadingAnchor = [backgroundContainer3 leadingAnchor];
  view4 = [(iPadAudioCallViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v46[0] = v40;
  backgroundController6 = [(iPadAudioCallViewController *)self backgroundController];
  backgroundContainer4 = [backgroundController6 backgroundContainer];
  trailingAnchor = [backgroundContainer4 trailingAnchor];
  view5 = [(iPadAudioCallViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v46[1] = v34;
  backgroundController7 = [(iPadAudioCallViewController *)self backgroundController];
  backgroundContainer5 = [backgroundController7 backgroundContainer];
  bottomAnchor = [backgroundContainer5 bottomAnchor];
  view6 = [(iPadAudioCallViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v46[2] = v17;
  backgroundController8 = [(iPadAudioCallViewController *)self backgroundController];
  backgroundContainer6 = [backgroundController8 backgroundContainer];
  topAnchor = [backgroundContainer6 topAnchor];
  view7 = [(iPadAudioCallViewController *)self view];
  topAnchor2 = [view7 topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v46[3] = v23;
  v24 = [NSArray arrayWithObjects:v46 count:4];
  [NSLayoutConstraint activateConstraints:v24];

  [(iPadAudioCallViewController *)self setupAmbientAudioRoutesControlViewIfNeeded];
  [(iPadAudioCallViewController *)self addCallParticipantsSubView];
  [(iPadAudioCallViewController *)self addBottomBarSubView];
  if (![(iPadAudioCallViewController *)self isShowingPoster])
  {
    [(iPadAudioCallViewController *)self addDefaultBackgroundGradientView];
    existingPrioritizedCall = [(iPadAudioCallViewController *)self existingPrioritizedCall];
    [(iPadAudioCallViewController *)self addNoPosterContactImage:existingPrioritizedCall];

    [(iPadAudioCallViewController *)self constraintDefaultNoPosterAvatarView];
    [(iPadAudioCallViewController *)self updateDefaultNoPosterAvatarViewVisibility];
  }

  [(iPadAudioCallViewController *)self addMiddleStackView];
  [(iPadAudioCallViewController *)self updateCurrentState];
  [(iPadAudioCallViewController *)self updatePosterSaliencyRect];
  glassDimmingView = [(iPadAudioCallViewController *)self glassDimmingView];
  view8 = [(iPadAudioCallViewController *)self view];
  [view8 bounds];
  [(iPadAudioCallViewController *)self updateDimmingView:glassDimmingView with:v28, v29];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController view will appear.", buf, 2u);
  }

  v9.receiver = self;
  v9.super_class = iPadAudioCallViewController;
  [(iPadAudioCallViewController *)&v9 viewWillAppear:appearCopy];
  [(iPadAudioCallViewController *)self handleViewWillAppear:appearCopy];
  [(iPadAudioCallViewController *)self updateBottomShelfWithMiddleViewState:self->_middleViewState callDisplayStyle:[(ICSCallDisplayStyleManager *)self->_callDisplayStyleManager callDisplayStyle]];
  view = [(iPadAudioCallViewController *)self view];
  [view layoutIfNeeded];

  defaultNoPosterAvatarView = [(iPadAudioCallViewController *)self defaultNoPosterAvatarView];
  [defaultNoPosterAvatarView setNeedsLayout];

  defaultNoPosterAvatarView2 = [(iPadAudioCallViewController *)self defaultNoPosterAvatarView];
  [defaultNoPosterAvatarView2 layoutIfNeeded];
}

- (void)handleViewWillAppear:(BOOL)appear
{
  [(iPadAudioCallViewController *)self setParticipantsViewControllersShouldIgnoreUpdates:0];
  [(iPadAudioCallViewController *)self updateCurrentState];
  [(iPadAudioCallViewController *)self updateScreenSharingDisableUpdateMask];
  features = [(iPadAudioCallViewController *)self features];
  if ([features isEnhancedEmergencyEnabled])
  {
    emergencyCoordinator = [(iPadAudioCallViewController *)self emergencyCoordinator];
    if (emergencyCoordinator)
    {
      v5 = emergencyCoordinator;
      emergencyCoordinator2 = [(iPadAudioCallViewController *)self emergencyCoordinator];
      eedRTTState = [emergencyCoordinator2 eedRTTState];

      if (eedRTTState != 4)
      {
        return;
      }

      features = [(iPadAudioCallViewController *)self emergencyCoordinator];
      [features transitionToRTTState:2];
    }
  }
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v4.receiver = self;
  v4.super_class = iPadAudioCallViewController;
  [(iPadAudioCallViewController *)&v4 viewIsAppearing:appearing];
  [(iPadAudioCallViewController *)self updateLayeredBackgroundWallpaper];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController view did appear.", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = iPadAudioCallViewController;
  [(iPadAudioCallViewController *)&v6 viewDidAppear:appearCopy];
  [(iPadAudioCallViewController *)self handleViewDidAppear:appearCopy];
}

- (void)handleViewDidAppear:(BOOL)appear
{
  v4 = 0.300000012;
  if (!appear)
  {
    v4 = 0.0;
  }

  [(PHCallViewController *)self setStatusBarHidden:0 withDuration:v4];
  frontmostCall = [(iPadAudioCallViewController *)self frontmostCall];
  provider = [frontmostCall provider];
  if ([provider isFaceTimeProvider])
  {
    isVideo = [frontmostCall isVideo];

    if (isVideo)
    {
      goto LABEL_7;
    }

    provider = +[CUTWiFiManager sharedInstance];
    [provider addWiFiAutoAssociationClientToken:@"iPadFaceTimeAudioWiFiAssertionKey"];
  }

LABEL_7:
  callCenter = [(iPadAudioCallViewController *)self callCenter];
  [callCenter enteredForegroundForCall:frontmostCall];

  v8 = +[UIApplication sharedApplication];
  delegate = [v8 delegate];
  alertCoordinator = [delegate alertCoordinator];
  isMonitoring = [alertCoordinator isMonitoring];

  v12 = +[UIApplication sharedApplication];
  delegate2 = [v12 delegate];
  alertCoordinator2 = [delegate2 alertCoordinator];
  v15 = alertCoordinator2;
  if (isMonitoring)
  {
    [alertCoordinator2 refreshDelegateWithState];
  }

  else
  {
    [alertCoordinator2 startMonitoring];
  }
}

- (void)viewDidLayoutSubviews
{
  v11.receiver = self;
  v11.super_class = iPadAudioCallViewController;
  [(iPadAudioCallViewController *)&v11 viewDidLayoutSubviews];
  callParticipantsViewController = [(iPadAudioCallViewController *)self callParticipantsViewController];
  if (callParticipantsViewController)
  {
    v4 = callParticipantsViewController;
    canDumpHierarchy = [(iPadAudioCallViewController *)self canDumpHierarchy];

    if (canDumpHierarchy)
    {
      callParticipantsViewController2 = [(iPadAudioCallViewController *)self callParticipantsViewController];
      view = [callParticipantsViewController2 view];
      [ICSViewEvaluation processHierarchy:view];

      [(iPadAudioCallViewController *)self setCanDumpHierarchy:0];
    }
  }

  [(iPadAudioCallViewController *)self updatePosterSaliencyRect];
  view2 = [(iPadAudioCallViewController *)self view];
  [view2 bounds];
  [(iPadAudioCallViewController *)self updateDimmingLayerInPosterForViewSize:v9, v10];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController view will disappear.", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = iPadAudioCallViewController;
  [(iPadAudioCallViewController *)&v6 viewWillDisappear:disappearCopy];
  [(iPadAudioCallViewController *)self handleViewWillDisappear:disappearCopy];
}

- (void)handleViewWillDisappear:(BOOL)disappear
{
  v3 = +[CUTWiFiManager sharedInstance];
  [v3 removeWiFiAutoAssociationClientToken:@"iPadFaceTimeAudioWiFiAssertionKey"];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController view did disappear.", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = iPadAudioCallViewController;
  [(PHCallViewController *)&v6 viewDidDisappear:disappearCopy];
  [(iPadAudioCallViewController *)self handleViewDidDisappear:disappearCopy];
  [(iPadAudioCallViewController *)self setCanDumpHierarchy:1];
}

- (void)handleViewDidDisappear:(BOOL)disappear
{
  callCenter = [(iPadAudioCallViewController *)self callCenter];
  [callCenter enteredBackgroundForAllCalls];

  [(iPadAudioCallViewController *)self suspendPosterAndCancelDelay:1];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  windowCopy = window;
  v8.receiver = self;
  v8.super_class = iPadAudioCallViewController;
  [(iPadAudioCallViewController *)&v8 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v10 = windowCopy;
    v11 = 1024;
    v12 = disappearCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController view did move to window %@, shouldAppearOrDisappear %d", buf, 0x12u);
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v12.receiver = self;
  v12.super_class = iPadAudioCallViewController;
  coordinatorCopy = coordinator;
  [(iPadAudioCallViewController *)&v12 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  [(iPadAudioCallViewController *)self updateConstraintsConstantsBasedOnSize:width, height];
  backgroundController = [(iPadAudioCallViewController *)self backgroundController];
  [backgroundController updateIsLandscape:width > height];

  glassDimmingView = [(iPadAudioCallViewController *)self glassDimmingView];
  [(iPadAudioCallViewController *)self updateDimmingView:glassDimmingView with:width, height];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000D1AF4;
  v11[3] = &unk_100359048;
  v11[4] = self;
  *&v11[5] = width;
  *&v11[6] = height;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000D1BA8;
  v10[3] = &unk_100358FC0;
  v10[4] = self;
  [coordinatorCopy animateAlongsideTransition:v11 completion:v10];
}

- (void)traitCollectionDidChange:(id)change
{
  v37.receiver = self;
  v37.super_class = iPadAudioCallViewController;
  changeCopy = change;
  [(iPadAudioCallViewController *)&v37 traitCollectionDidChange:changeCopy];
  _backlightLuminance = [changeCopy _backlightLuminance];

  traitCollection = [(iPadAudioCallViewController *)self traitCollection];
  _backlightLuminance2 = [traitCollection _backlightLuminance];

  if (_backlightLuminance != _backlightLuminance2)
  {
    [(iPadAudioCallViewController *)self updateCallDurationVisibility];
    traitCollection2 = [(iPadAudioCallViewController *)self traitCollection];
    _backlightLuminance3 = [traitCollection2 _backlightLuminance];

    traitCollection3 = [(iPadAudioCallViewController *)self traitCollection];
    _backlightLuminance4 = [traitCollection3 _backlightLuminance];

    if (!_backlightLuminance4)
    {
      v12 = sub_100004F84();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Got trait collection callback saying display was off", v36, 2u);
      }

      [(iPadAudioCallViewController *)self suspendPosterAndCancelDelay:1];
    }

    if (_backlightLuminance3 != 1)
    {
      alwaysOnDisplayDimmingView = [(iPadAudioCallViewController *)self alwaysOnDisplayDimmingView];
      [alwaysOnDisplayDimmingView setAlpha:0.0];

      renderingViewController = [(iPadAudioCallViewController *)self renderingViewController];
      if (!renderingViewController)
      {
        goto LABEL_24;
      }

      v28 = renderingViewController;
      canShowPosterImage = [(iPadAudioCallViewController *)self canShowPosterImage];

      if (!canShowPosterImage)
      {
        goto LABEL_24;
      }

      renderingViewController2 = [(iPadAudioCallViewController *)self renderingViewController];
      view = [renderingViewController2 view];
      [view setAlpha:1.0];

      goto LABEL_23;
    }

    view2 = [(iPadAudioCallViewController *)self view];
    alwaysOnDisplayDimmingView2 = [(iPadAudioCallViewController *)self alwaysOnDisplayDimmingView];
    [view2 bringSubviewToFront:alwaysOnDisplayDimmingView2];

    view3 = [(iPadAudioCallViewController *)self view];
    callParticipantsViewController = [(iPadAudioCallViewController *)self callParticipantsViewController];
    view4 = [callParticipantsViewController view];
    [view3 bringSubviewToFront:view4];

    alwaysOnDisplayDimmingView3 = [(iPadAudioCallViewController *)self alwaysOnDisplayDimmingView];
    [alwaysOnDisplayDimmingView3 setAlpha:1.0];

    renderingViewController3 = [(iPadAudioCallViewController *)self renderingViewController];

    if (renderingViewController3)
    {
      renderingViewController4 = [(iPadAudioCallViewController *)self renderingViewController];
      view5 = [renderingViewController4 view];
      [view5 setAlpha:0.0];
    }

    alwaysOnDisplayPosterNameViewModel = [(iPadAudioCallViewController *)self alwaysOnDisplayPosterNameViewModel];

    if (!alwaysOnDisplayPosterNameViewModel)
    {
LABEL_19:
      if (![(iPadAudioCallViewController *)self videoStreamingIsGoingOn])
      {
        goto LABEL_24;
      }

      v33 = sub_100004F84();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "EnhancedEmergency: pause video if necessary when going to AOD", v36, 2u);
      }

      renderingViewController2 = [(iPadAudioCallViewController *)self emergencyCoordinator];
      [renderingViewController2 handleDeviceLockEvent];
LABEL_23:

LABEL_24:
      stateDisplayChangedObservation = [(iPadAudioCallViewController *)self stateDisplayChangedObservation];

      if (stateDisplayChangedObservation)
      {
        stateDisplayChangedObservation2 = [(iPadAudioCallViewController *)self stateDisplayChangedObservation];
        stateDisplayChangedObservation2[2]();
      }

      return;
    }

    v23 = +[TUCallCenter sharedInstance];
    if ([v23 currentCallCount] < 2)
    {
    }

    else
    {
      usesCompactMulticallUI = [(iPadAudioCallViewController *)self usesCompactMulticallUI];

      v25 = 0.0;
      if ((usesCompactMulticallUI & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v25 = 1.0;
LABEL_18:
    alwaysOnDisplayPosterNameViewModel2 = [(iPadAudioCallViewController *)self alwaysOnDisplayPosterNameViewModel];
    [alwaysOnDisplayPosterNameViewModel2 updatePosterNameAlpha:v25];

    goto LABEL_19;
  }
}

- (BOOL)needsDismissalAssertion
{
  callCenter = [(iPadAudioCallViewController *)self callCenter];
  hasCurrentAudioCalls = [callCenter hasCurrentAudioCalls];

  return hasCurrentAudioCalls;
}

- (void)releaseDismissalAssertion
{
  v2.receiver = self;
  v2.super_class = iPadAudioCallViewController;
  [(PHCallViewController *)&v2 releaseDismissalAssertion];
  [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHAudioCallViewControllerDismissalAssertionHandlingCallFailure"];
}

- (void)callIsEmergencyChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    v14 = 138412546;
    selfCopy = v6;
    v16 = 2112;
    v17 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v14, 0x16u);
  }

  object = [notificationCopy object];
  if (object)
  {
    if ([(iPadAudioCallViewController *)self shouldUpdateBackgroundForEmergencyCall])
    {
      [(iPadAudioCallViewController *)self updateViewForEmergencyCallIfNecessary];
      emergencyCoordinator = [(iPadAudioCallViewController *)self emergencyCoordinator];

      if (!emergencyCoordinator)
      {
        v11 = sub_100004F84();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412290;
          selfCopy = self;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "EnhancedEmergency: going to create PHEnhancedEmergencyCoordinator from callIsEmergencyChangedNotification from iPadAudioCallViewController: %@", &v14, 0xCu);
        }

        v12 = objc_alloc_init(PHEnhancedEmergencyCoordinator);
        [(iPadAudioCallViewController *)self setEmergencyCoordinator:v12];

        emergencyCoordinator2 = [(iPadAudioCallViewController *)self emergencyCoordinator];
        [emergencyCoordinator2 setDelegate:self];
      }
    }
  }
}

- (void)updateViewForEmergencyCallIfNecessary
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "EnhancedEmergency: remove all the possile call UI because we are now in emergency call", v9, 2u);
  }

  renderingViewController = [(iPadAudioCallViewController *)self renderingViewController];

  if (renderingViewController)
  {
    [(iPadAudioCallViewController *)self removePosterViewController:1 completion:0];
  }

  backgroundImageView = [(iPadAudioCallViewController *)self backgroundImageView];

  if (backgroundImageView)
  {
    [(iPadAudioCallViewController *)self removeBackgroundContactImageView];
  }

  defaultBackgroundGradientView = [(iPadAudioCallViewController *)self defaultBackgroundGradientView];

  if (defaultBackgroundGradientView)
  {
    [(iPadAudioCallViewController *)self removeDefaultBackgroundGradientView];
  }

  unblurredBackgroundImageView = [(iPadAudioCallViewController *)self unblurredBackgroundImageView];

  if (unblurredBackgroundImageView)
  {
    unblurredBackgroundImageView2 = [(iPadAudioCallViewController *)self unblurredBackgroundImageView];
    [unblurredBackgroundImageView2 removeFromSuperview];

    [(iPadAudioCallViewController *)self setUnblurredBackgroundImageView:0];
  }

  [(iPadAudioCallViewController *)self updateBackgroundForEmergencyCall];
  [(iPadAudioCallViewController *)self _updateStatusLabelVisibility];
}

- (void)wantsHoldMusicChangedNotification:(id)notification
{
  frontmostCall = [(iPadAudioCallViewController *)self frontmostCall];
  wantsHoldMusic = [frontmostCall wantsHoldMusic];

  if (wantsHoldMusic)
  {
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "decline with reminder and decline with message unavailable due to call wanting hold music.", v9, 2u);
    }

    bottomBar = [(PHCallViewController *)self bottomBar];
    [bottomBar setDeclineAndMessageIsAvailable:0];

    bottomBar2 = [(PHCallViewController *)self bottomBar];
    [bottomBar2 setDeclineAndRemindIsAvailable:0];
  }
}

- (void)callCenterScreeningStatusChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v11, 0x16u);
  }

  [(iPadAudioCallViewController *)self updateCurrentState];
  getParticipantsView_NotWaiting = [(iPadAudioCallViewController *)self getParticipantsView_NotWaiting];
  singleCallLabelView = [getParticipantsView_NotWaiting singleCallLabelView];
  [singleCallLabelView updateLabelsOrderAndLayout];
}

- (void)callCenterCallStatusChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    v49 = 138412546;
    selfCopy = v6;
    v51 = 2112;
    v52 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v49, 0x16u);
  }

  object = [notificationCopy object];
  if (![(iPadAudioCallViewController *)self usesCompactMulticallUI])
  {
    goto LABEL_12;
  }

  prioritizedCall = [(iPadAudioCallViewController *)self prioritizedCall];
  callUUID = [prioritizedCall callUUID];
  if (!callUUID)
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = callUUID;
  callUUID2 = [object callUUID];
  prioritizedCall2 = [(iPadAudioCallViewController *)self prioritizedCall];
  callUUID3 = [prioritizedCall2 callUUID];
  v16 = callUUID3;
  if (callUUID2 == callUUID3)
  {

    goto LABEL_11;
  }

  v17 = [(iPadAudioCallViewController *)self prioritizedCallIsInSameCallGroupAsCall:object];

  if ((v17 & 1) == 0)
  {
    v18 = sub_100004F84();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v49) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "callCenterCallStatusChangedNotification - bail since we don't want to choose the call ourselves", &v49, 2u);
    }

    [(iPadAudioCallViewController *)self refreshUseRTTButton];
    [(iPadAudioCallViewController *)self _updatePosterStatusLabelForState:[(PHCallViewController *)self currentState]];
    goto LABEL_46;
  }

LABEL_12:
  if ([object status] == 1)
  {
    features = [(iPadAudioCallViewController *)self features];
    if ([features isEnhancedEmergencyEnabled])
    {
      emergencyCoordinator = [(iPadAudioCallViewController *)self emergencyCoordinator];
      if (emergencyCoordinator)
      {
      }

      else
      {
        isEmergency = [object isEmergency];

        if (!isEmergency)
        {
LABEL_21:
          [(iPadAudioCallViewController *)self tipKitStartWaitOnHoldObservation];
          goto LABEL_22;
        }

        v22 = sub_100004F84();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v49 = 138412290;
          selfCopy = self;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "EnhancedEmergency: going to create PHEnhancedEmergencyCoordinator when call is active from iPadAudioCallViewController: %@", &v49, 0xCu);
        }

        v23 = objc_alloc_init(PHEnhancedEmergencyCoordinator);
        [(iPadAudioCallViewController *)self setEmergencyCoordinator:v23];

        features = [(iPadAudioCallViewController *)self emergencyCoordinator];
        [features setDelegate:self];
      }
    }

    goto LABEL_21;
  }

LABEL_22:
  if ([object status] == 6)
  {
    v24 = +[UIApplication sharedApplication];
    delegate = [v24 delegate];
    [delegate setMostRecentlyDisconnectedAudioCall:object];

    uniqueProxyIdentifier = [object uniqueProxyIdentifier];
    [(iPadAudioCallViewController *)self clearMenuItemRegistration:uniqueProxyIdentifier];

    frontmostCall = [(iPadAudioCallViewController *)self frontmostCall];
    if (([object isVideo] & 1) == 0 && objc_msgSend(object, "disconnectedReason") == 6)
    {
      if (frontmostCall)
      {
        bottomBar = [(PHCallViewController *)self bottomBar];
        currentState = [bottomBar currentState];

        if (currentState == 7)
        {
          analyticsReporter = [(iPadAudioCallViewController *)self analyticsReporter];
          [analyticsReporter reportMultipleCallsWaitingUIAction:0];
        }
      }
    }

    [(iPadAudioCallViewController *)self writeToLastSeenPosterCacheIfNecessaryForCall:object];
    features2 = [(iPadAudioCallViewController *)self features];
    if (([features2 isEnhancedEmergencyEnabled] & 1) != 0 && (-[iPadAudioCallViewController emergencyCoordinator](self, "emergencyCoordinator"), (v29 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v30 = v29;
      isEmergency2 = [object isEmergency];

      if (isEmergency2)
      {
        v32 = sub_100004F84();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          emergencyCoordinator2 = [(iPadAudioCallViewController *)self emergencyCoordinator];
          v49 = 138412290;
          selfCopy = emergencyCoordinator2;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "EnhancedEmergency: clean emergencyCoordinator: %@", &v49, 0xCu);
        }

        emergencyCoordinator3 = [(iPadAudioCallViewController *)self emergencyCoordinator];
        [emergencyCoordinator3 cleanUpViewAndObjectWhenCallEnds];

        [(iPadAudioCallViewController *)self setEmergencyCoordinator:0];
      }
    }

    else
    {
    }

    [(iPadAudioCallViewController *)self tipKitStopWaitOnHoldObservation];
  }

  emergencyCoordinator4 = [(iPadAudioCallViewController *)self emergencyCoordinator];

  if (emergencyCoordinator4)
  {
    emergencyCoordinator5 = [(iPadAudioCallViewController *)self emergencyCoordinator];
    [emergencyCoordinator5 setTuCall:object];
  }

  [(iPadAudioCallViewController *)self updateViewsForHeldCallControlsViewIfNeeded];
  [(iPadAudioCallViewController *)self updateCurrentState];
  [(iPadAudioCallViewController *)self refreshUseRTTButton];
  callCenter = [(iPadAudioCallViewController *)self callCenter];
  autoPunchOutBehaviorRequiredForCurrentCalls = [callCenter autoPunchOutBehaviorRequiredForCurrentCalls];

  if (autoPunchOutBehaviorRequiredForCurrentCalls)
  {
    v39 = sub_100004F84();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v49) = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController: Punch-out requested for current calls", &v49, 2u);
    }

    [(iPadAudioCallViewController *)self setParticipantsViewControllersShouldIgnoreUpdates:1];
    [(PHCallViewController *)self punchOutToVoIPApplicationForCurrentCall];
  }

  else
  {
    callCenter2 = [(iPadAudioCallViewController *)self callCenter];
    v41 = [callCenter2 shouldActivateProviderInBackgroundForCall:object];

    if (v41)
    {
      [(PHCallViewController *)self activateProviderInBackgroundForCall:object];
    }

    else
    {
      [(iPadAudioCallViewController *)self setParticipantsViewControllersShouldIgnoreUpdates:0];
    }
  }

  existingPrioritizedCall = self->_existingPrioritizedCall;
  view = [(iPadAudioCallViewController *)self view];
  [view frame];
  [(iPadAudioCallViewController *)self updateTopShelfContentWithCall:existingPrioritizedCall sceneWindowSize:v47, v48];

LABEL_46:
}

- (void)conferenceParticipantCallsChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  [(iPadAudioCallViewController *)self updateCurrentState];
}

- (void)receptionistStateChanged:(id)changed
{
  frontmostCall = [(iPadAudioCallViewController *)self frontmostCall];
  isScreening = [frontmostCall isScreening];

  if (isScreening)
  {
    screeningViewController = [(iPadAudioCallViewController *)self screeningViewController];
    if (screeningViewController)
    {
      v7 = screeningViewController;
      isShowingNewTranscriptsView = [(iPadAudioCallViewController *)self isShowingNewTranscriptsView];

      if ((isShowingNewTranscriptsView & 1) == 0)
      {
        frontmostCall2 = [(iPadAudioCallViewController *)self frontmostCall];
        receptionistState = [frontmostCall2 receptionistState];

        if (receptionistState)
        {
          [(iPadAudioCallViewController *)self setMiddleViewState:0 animated:0];
          [(iPadAudioCallViewController *)self setScreeningViewController:0];

          [(iPadAudioCallViewController *)self setMiddleViewState:4 animated:0];
        }
      }
    }
  }
}

- (void)callContinuityStateChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "callContinuityStateChangedNotification: %@", &v6, 0xCu);
  }

  [(iPadAudioCallViewController *)self updateCurrentState];
}

- (void)hardPauseDigitsStateChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "hardPauseDigitsStateChangedNotification: %@", &v7, 0xCu);
  }

  bottomBar = [(PHCallViewController *)self bottomBar];
  [bottomBar refreshCustomizedActionTypeTitles];

  [(iPadAudioCallViewController *)self updateHardPauseDigitsState];
  [(iPadAudioCallViewController *)self refreshExtensionNumberButton];
}

- (void)callOnHoldChangedNotification:(id)notification
{
  bottomBar = [(PHCallViewController *)self bottomBar];
  [bottomBar refreshEndCallButton];

  frontmostCall = [(iPadAudioCallViewController *)self frontmostCall];
  [(iPadAudioCallViewController *)self updateWaitOnHoldServiceWithCall:frontmostCall];
}

- (void)handleTUCallSupportsTTYWithVoiceChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  [(iPadAudioCallViewController *)self refreshUseRTTButton];
}

- (void)handleTUCallTTYTypeChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    v32 = 138412546;
    v33 = v6;
    v34 = 2112;
    v35 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v32, 0x16u);
  }

  [(iPadAudioCallViewController *)self refreshUseRTTButton];
  features = [(iPadAudioCallViewController *)self features];
  if ([features isEnhancedEmergencyEnabled])
  {
    callCenter = [(iPadAudioCallViewController *)self callCenter];
    frontmostCall = [callCenter frontmostCall];
    isEmergency = [frontmostCall isEmergency];

    if (!isEmergency)
    {
      goto LABEL_7;
    }

    features = [(iPadAudioCallViewController *)self emergencyCoordinator];
    callCenter2 = [(iPadAudioCallViewController *)self callCenter];
    frontmostCall2 = [callCenter2 frontmostCall];
    [features updateRTTEnabled:{objc_msgSend(frontmostCall2, "isRTT")}];
  }

LABEL_7:
  featureFlags = [(iPadAudioCallViewController *)self featureFlags];
  v16 = TUCallScreeningRTTEnabled();

  if (v16)
  {
    if ([(iPadAudioCallViewController *)self middleViewState]== 4)
    {
      [(iPadAudioCallViewController *)self setMiddleViewState:0];
      if (self->_screeningViewController)
      {
        [(iPadAudioCallViewController *)self removeChildViewController:?];
        [(UIViewController *)self->_screeningViewController didMoveToParentViewController:0];
        screeningViewController = self->_screeningViewController;
      }

      else
      {
        screeningViewController = 0;
      }

      self->_screeningViewController = 0;

      [(iPadAudioCallViewController *)self setMiddleViewState:4];
    }

    bottomBar = [(PHCallViewController *)self bottomBar];
    currentState = [bottomBar currentState];

    if (currentState == 23)
    {
      bottomBar2 = [(PHCallViewController *)self bottomBar];
      [bottomBar2 setCurrentState:29];

      bottomBar3 = [(PHCallViewController *)self bottomBar];
      [bottomBar3 setCurrentState:23];
    }
  }

  v22 = +[UIApplication sharedApplication];
  delegate = [v22 delegate];
  currentInCallScene = [delegate currentInCallScene];

  if (currentInCallScene)
  {
    v25 = +[UIApplication sharedApplication];
    delegate2 = [v25 delegate];
    currentInCallScene2 = [delegate2 currentInCallScene];
    delegate3 = [currentInCallScene2 delegate];
    v29 = +[UIApplication sharedApplication];
    delegate4 = [v29 delegate];
    currentInCallScene3 = [delegate4 currentInCallScene];
    [delegate3 updateSceneBackgroundMaterialWith:currentInCallScene3];
  }
}

- (void)callIsScreenSharingChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    name = [notificationCopy name];
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v8, 0x16u);
  }

  [(iPadAudioCallViewController *)self updateScreenSharingDisableUpdateMask];
}

- (void)callDisplayContextChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    name = [notificationCopy name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  object = [notificationCopy object];
  [(iPadAudioCallViewController *)self updateBottomBarButtonsWithCall:object];
}

- (void)setShowsCallDetailsViewButton:(BOOL)button
{
  buttonCopy = button;
  callDetailsViewButton = [(iPadAudioCallViewController *)self callDetailsViewButton];
  v6 = callDetailsViewButton;
  if (buttonCopy)
  {

    if (!v6)
    {

      [(iPadAudioCallViewController *)self setUpCallDetailsViewButton];
    }
  }

  else
  {
    [callDetailsViewButton removeFromSuperview];

    [(iPadAudioCallViewController *)self setCallDetailsViewButton:0];
  }
}

- (void)setUpCallDetailsViewButton
{
  v3 = [UIButton buttonWithType:4];
  [(iPadAudioCallViewController *)self setCallDetailsViewButton:v3];

  callDetailsViewButton = [(iPadAudioCallViewController *)self callDetailsViewButton];
  [callDetailsViewButton addTarget:self action:"callDetailsViewButtonTapped" forEvents:64];

  callDetailsViewButton2 = [(iPadAudioCallViewController *)self callDetailsViewButton];
  [callDetailsViewButton2 setTranslatesAutoresizingMaskIntoConstraints:0];

  view = [(iPadAudioCallViewController *)self view];
  callDetailsViewButton3 = [(iPadAudioCallViewController *)self callDetailsViewButton];
  [view addSubview:callDetailsViewButton3];

  v8 = +[UIColor whiteColor];
  callDetailsViewButton4 = [(iPadAudioCallViewController *)self callDetailsViewButton];
  [callDetailsViewButton4 setTintColor:v8];

  callDetailsViewButton5 = [(iPadAudioCallViewController *)self callDetailsViewButton];
  [(iPadAudioCallViewController *)self applyCallDetailsViewButtonPositionAndSizeCapToElement:callDetailsViewButton5];
}

- (double)callDetailsButtonPaddingTop
{
  +[TPIncomingCallMetricsProvider fullDeviceHeight];
  [(iPadAudioCallViewController *)self callDetailsButtonPaddingTop_PERCENT];
  view = [(iPadAudioCallViewController *)self view];
  UIRoundToViewScale();
  v5 = v4;

  return v5;
}

- (double)callDetailsButtonPaddingTrailing
{
  +[TPIncomingCallMetricsProvider fullDeviceWidth];
  [(iPadAudioCallViewController *)self callDetailsButtonPaddingTrailing_PERCENT];
  view = [(iPadAudioCallViewController *)self view];
  UIRoundToViewScale();
  v5 = v4;

  return v5;
}

- (double)callDetailsButtonPaddingTop_PERCENT
{
  if ((+[TPIncomingCallMetricsProvider deviceHasHomeButton]& 1) != 0)
  {

    +[TPIncomingCallMetricsProvider callDetailsButtonPaddingTopPercent_HomeButton];
  }

  else
  {
    features = [(iPadAudioCallViewController *)self features];
    isSystemApertureEnabled = [features isSystemApertureEnabled];

    if (isSystemApertureEnabled)
    {

      +[TPIncomingCallMetricsProvider callDetailsButtonPaddingTopPercent_DynamicIsland];
    }

    else
    {

      +[TPIncomingCallMetricsProvider callDetailsButtonPaddingTopPercent_Notch];
    }
  }

  return result;
}

- (double)callDetailsButtonPaddingTrailing_PERCENT
{
  if ((+[TPIncomingCallMetricsProvider deviceHasHomeButton]& 1) != 0)
  {

    +[TPIncomingCallMetricsProvider callDetailsButtonPaddingTrailingPercent_HomeButton];
  }

  else
  {
    features = [(iPadAudioCallViewController *)self features];
    isSystemApertureEnabled = [features isSystemApertureEnabled];

    if (isSystemApertureEnabled)
    {

      +[TPIncomingCallMetricsProvider callDetailsButtonPaddingTrailingPercent_DynamicIsland];
    }

    else
    {

      +[TPIncomingCallMetricsProvider callDetailsButtonPaddingTrailingPercent_Notch];
    }
  }

  return result;
}

- (void)updateParticipantConstraintsForPosterName:(id)name
{
  nameCopy = name;
  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  if (callDisplayStyle)
  {
    if (![(iPadAudioCallViewController *)self participantsViewIsShowingMultipleLabel])
    {
      detachedPosterNameViewModel = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];
      if (detachedPosterNameViewModel)
      {
      }

      else if ([(iPadAudioCallViewController *)self callHasContactPosterWithVerticalName])
      {
        [(iPadAudioCallViewController *)self positionParticipantsViewStatusLabelToBeHorizontallyCenteredToInfoButton:nameCopy];
        callDetailsViewButton = [(iPadAudioCallViewController *)self callDetailsViewButton];
        v8 = +[TPIncomingCallMetricsProvider callDetailsButtonMaxSize];
        [callDetailsViewButton setMaximumContentSizeCategory:v8];

        goto LABEL_8;
      }
    }

    [(iPadAudioCallViewController *)self restoreParticipantsViewStatusLabelForFullScreen];
  }

LABEL_8:
}

- (void)restoreParticipantsViewStatusLabelForFullScreen
{
  participantsViewVerticalPosterNameTopConstraint = [(iPadAudioCallViewController *)self participantsViewVerticalPosterNameTopConstraint];
  if (participantsViewVerticalPosterNameTopConstraint)
  {
    v4 = participantsViewVerticalPosterNameTopConstraint;
    participantsViewVerticalPosterNameTopConstraint2 = [(iPadAudioCallViewController *)self participantsViewVerticalPosterNameTopConstraint];
    isActive = [participantsViewVerticalPosterNameTopConstraint2 isActive];

    if (isActive)
    {
      participantsViewVerticalPosterNameTopConstraint3 = [(iPadAudioCallViewController *)self participantsViewVerticalPosterNameTopConstraint];
      [participantsViewVerticalPosterNameTopConstraint3 setActive:0];

      [(iPadAudioCallViewController *)self setParticipantsViewVerticalPosterNameTopConstraint:0];
    }
  }

  participantsViewTopConstraint = [(iPadAudioCallViewController *)self participantsViewTopConstraint];
  if (participantsViewTopConstraint)
  {
    v9 = participantsViewTopConstraint;
    participantsViewTopConstraint2 = [(iPadAudioCallViewController *)self participantsViewTopConstraint];
    isActive2 = [participantsViewTopConstraint2 isActive];

    if ((isActive2 & 1) == 0)
    {
      participantsViewTopConstraint3 = [(iPadAudioCallViewController *)self participantsViewTopConstraint];
      [participantsViewTopConstraint3 setActive:1];
    }
  }
}

- (void)positionParticipantsViewStatusLabelToBeHorizontallyCenteredToInfoButton:(id)button
{
  buttonCopy = button;
  v16 = +[NSMutableArray array];
  participantsViewTopConstraint = [(iPadAudioCallViewController *)self participantsViewTopConstraint];

  if (participantsViewTopConstraint)
  {
    participantsViewTopConstraint2 = [(iPadAudioCallViewController *)self participantsViewTopConstraint];
    [v16 addObject:participantsViewTopConstraint2];
  }

  participantsViewCenterYConstraint = [(iPadAudioCallViewController *)self participantsViewCenterYConstraint];

  if (participantsViewCenterYConstraint)
  {
    participantsViewCenterYConstraint2 = [(iPadAudioCallViewController *)self participantsViewCenterYConstraint];
    [v16 addObject:participantsViewCenterYConstraint2];
  }

  participantsViewVerticalPosterNameTopConstraint = [(iPadAudioCallViewController *)self participantsViewVerticalPosterNameTopConstraint];

  if (participantsViewVerticalPosterNameTopConstraint)
  {
    participantsViewVerticalPosterNameTopConstraint2 = [(iPadAudioCallViewController *)self participantsViewVerticalPosterNameTopConstraint];
    [v16 addObject:participantsViewVerticalPosterNameTopConstraint2];
  }

  [NSLayoutConstraint deactivateConstraints:v16];
  topAnchor = [buttonCopy topAnchor];

  view = [(iPadAudioCallViewController *)self view];
  topAnchor2 = [view topAnchor];
  [(iPadAudioCallViewController *)self callDetailsButtonPaddingTop];
  v14 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  [(iPadAudioCallViewController *)self setParticipantsViewVerticalPosterNameTopConstraint:v14];

  participantsViewVerticalPosterNameTopConstraint3 = [(iPadAudioCallViewController *)self participantsViewVerticalPosterNameTopConstraint];
  [participantsViewVerticalPosterNameTopConstraint3 setActive:1];
}

- (void)positionPosterBadgeToBeHorizontallyCenteredToInfoButton:(id)button
{
  buttonCopy = button;
  leadingAnchor = [buttonCopy leadingAnchor];
  view = [(iPadAudioCallViewController *)self view];
  leadingAnchor2 = [view leadingAnchor];
  [(iPadAudioCallViewController *)self callDetailsButtonPaddingTrailing];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
  v15[0] = v8;
  topAnchor = [buttonCopy topAnchor];

  view2 = [(iPadAudioCallViewController *)self view];
  topAnchor2 = [view2 topAnchor];
  [(iPadAudioCallViewController *)self callDetailsButtonPaddingTop];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v12 + 6.0];
  v15[1] = v13;
  v14 = [NSArray arrayWithObjects:v15 count:2];
  [NSLayoutConstraint activateConstraints:v14];
}

- (void)applySizeToElement:(id)element usingThisElementAsGuide:(id)guide
{
  elementCopy = element;
  guideCopy = guide;
  if (guideCopy)
  {
    widthAnchor = [elementCopy widthAnchor];
    widthAnchor2 = [guideCopy widthAnchor];
    v9 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:0.0];
    v16[0] = v9;
    heightAnchor = [elementCopy heightAnchor];
    heightAnchor2 = [guideCopy heightAnchor];
    v12 = [heightAnchor constraintEqualToAnchor:heightAnchor2 constant:0.0];
    v16[1] = v12;
    v13 = [NSArray arrayWithObjects:v16 count:2];
    [NSLayoutConstraint activateConstraints:v13];

    maximumContentSizeCategory = [guideCopy maximumContentSizeCategory];

    if (maximumContentSizeCategory)
    {
      maximumContentSizeCategory2 = [guideCopy maximumContentSizeCategory];
      [elementCopy setMaximumContentSizeCategory:maximumContentSizeCategory2];
    }
  }
}

- (void)applyCallDetailsViewButtonPositionAndSizeCapToElement:(id)element
{
  elementCopy = element;
  topAnchor = [elementCopy topAnchor];
  view = [(iPadAudioCallViewController *)self view];
  topAnchor2 = [view topAnchor];
  [(iPadAudioCallViewController *)self callDetailsButtonPaddingTop];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  v16[0] = v8;
  trailingAnchor = [elementCopy trailingAnchor];
  view2 = [(iPadAudioCallViewController *)self view];
  trailingAnchor2 = [view2 trailingAnchor];
  [(iPadAudioCallViewController *)self callDetailsButtonPaddingTrailing];
  v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v12];
  v16[1] = v13;
  v14 = [NSArray arrayWithObjects:v16 count:2];
  [NSLayoutConstraint activateConstraints:v14];

  v15 = +[TPIncomingCallMetricsProvider callDetailsButtonMaxSize];
  [elementCopy setMaximumContentSizeCategory:v15];
}

- (BOOL)shouldShowCallDetailsViewButton
{
  v4 = +[CNKFeatures sharedInstance];
  isMoreMenuEnabled = [v4 isMoreMenuEnabled];

  frontmostCall = [(iPadAudioCallViewController *)self frontmostCall];
  v7 = frontmostCall;
  if (isMoreMenuEnabled)
  {
    callCenter = [(iPadAudioCallViewController *)self callCenter];
    currentCallGroups = [callCenter currentCallGroups];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    provider2 = currentCallGroups;
    v11 = [provider2 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(provider2);
          }

          calls = [*(*(&v25 + 1) + 8 * i) calls];
          v16 = [calls count];

          if (v16 > 1)
          {
            v17 = 1;
            goto LABEL_20;
          }
        }

        v12 = [provider2 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
LABEL_20:

    provider = [v7 provider];
    if ((([provider isFaceTimeProvider] & 1) != 0 || v17 && -[iPadAudioCallViewController shouldShowConferenceCallDetails](self, "shouldShowConferenceCallDetails")) && ((objc_msgSend(v7, "isActive", v25) & 1) != 0 || objc_msgSend(v7, "isOnHold")) && (objc_msgSend(v7, "isVideo") & 1) == 0)
    {
      callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
      if ([callDisplayStyleManager callDisplayStyle])
      {
        callDisplayStyleManager2 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
        v21 = [callDisplayStyleManager2 callDisplayStyle] != 3;
      }

      else
      {
        v21 = 0;
      }

      goto LABEL_34;
    }

    goto LABEL_28;
  }

  provider2 = [frontmostCall provider];
  isFaceTimeProvider = [provider2 isFaceTimeProvider];
  if ((isFaceTimeProvider & 1) == 0)
  {
    provider = [v7 provider];
    if (![provider isTelephonyProvider])
    {
LABEL_28:
      v21 = 0;
      goto LABEL_34;
    }
  }

  if ((([v7 isActive] & 1) != 0 || objc_msgSend(v7, "isOnHold")) && (objc_msgSend(v7, "isVideo") & 1) == 0)
  {
    callDisplayStyleManager3 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
    if ([callDisplayStyleManager3 callDisplayStyle])
    {
      callDisplayStyleManager4 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
      v21 = [callDisplayStyleManager4 callDisplayStyle] != 3;

      if (isFaceTimeProvider)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  v21 = 0;
  if (isFaceTimeProvider)
  {
    goto LABEL_35;
  }

LABEL_34:

LABEL_35:
  return v21;
}

- (void)callDetailsViewButtonTapped
{
  frontmostCall = [(iPadAudioCallViewController *)self frontmostCall];
  if ([(iPadAudioCallViewController *)self shouldShowConferenceCallDetails])
  {
    v4 = objc_alloc_init(PHConferenceParticipantsViewController);
    v5 = [[UINavigationController alloc] initWithRootViewController:v4];
    v6 = +[UIColor grayColor];
    view = [v5 view];
    [view setBackgroundColor:v6];

    v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"dismissNavigationController"];
    navigationItem = [(PHConferenceParticipantsViewController *)v4 navigationItem];
    [navigationItem setLeftBarButtonItem:v8];

    [(iPadAudioCallViewController *)self presentViewController:v5 animated:1 completion:0];
  }

  else
  {
    provider = [frontmostCall provider];
    isTelephonyProvider = [provider isTelephonyProvider];

    if (isTelephonyProvider)
    {
      [(iPadAudioCallViewController *)self presentContactCard];
    }

    else
    {
      objc_initWeak(&location, self);
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_1000D45E8;
      v17 = &unk_100356E98;
      objc_copyWeak(&v18, &location);
      v12 = objc_retainBlock(&v14);
      v13 = [PHInCallUtilities sharedInstance:v14];
      [v13 requestPasscodeUnlockWithCompletion:v12];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }
  }
}

- (void)contactViewController:(id)controller didExecuteBlockAndReportContactAction:(id)action
{
  v5 = [(iPadAudioCallViewController *)self activeCall:controller];
  [(iPadAudioCallViewController *)self reportWithCall:v5];
}

- (BOOL)shouldShowConferenceCallDetails
{
  callParticipantsViewController = [(iPadAudioCallViewController *)self callParticipantsViewController];
  view = [callParticipantsViewController view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  getParticipantsView_NotWaiting = [(iPadAudioCallViewController *)self getParticipantsView_NotWaiting];
  callParticipantsViewController2 = [(iPadAudioCallViewController *)self callParticipantsViewController];
  v8 = [callParticipantsViewController2 shouldShowInfoButtonForParticipantAtIndex:0 inParticipantsView:getParticipantsView_NotWaiting];

  return v8;
}

- (BOOL)canDoInfoButtonCoinFlipWith:(id)with contactStore:(id)store
{
  withCopy = with;
  storeCopy = store;
  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 BOOLForKey:@"iPadInCallUIInfoButtonCoinFlipKey"];

  if (v8)
  {
    v9 = [[CNSharedProfileStateOracle alloc] initWithContact:withCopy contactStore:storeCopy];
    v10 = [v9 avatarViewAnimationTypeForEffectiveState] == 1;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)animateInfoButtonCoinFlipIfNeeded
{
  features = [(iPadAudioCallViewController *)self features];
  if ([features isNameAndPhotoC3Enabled])
  {
    callDetailsViewButton = [(iPadAudioCallViewController *)self callDetailsViewButton];

    if (!callDetailsViewButton)
    {
      return;
    }

    frontmostCall = [(iPadAudioCallViewController *)self frontmostCall];
    contactIdentifier = [frontmostCall contactIdentifier];

    if (!contactIdentifier)
    {
      goto LABEL_28;
    }

    v6 = [PHInCallUtilities contactStoreForCall:frontmostCall];
    contactIdentifier2 = [frontmostCall contactIdentifier];
    v8 = +[iPadAudioCallViewController contactKeysToFetch];
    contactsCache = [(iPadAudioCallViewController *)self contactsCache];
    v10 = [v6 contactForIdentifier:contactIdentifier2 keysToFetch:v8 usingCache:contactsCache];

    if (!v10 || ![(iPadAudioCallViewController *)self canDoInfoButtonCoinFlipWith:v10 contactStore:v6])
    {
LABEL_27:

LABEL_28:
      return;
    }

    v11 = [[CNSharedProfileStateOracle alloc] initWithContact:v10 contactStore:v6];
    v12 = [CNSharedProfileStateOracle contactIsInAutoUpdateState:v10];
    v13 = sub_100004F84();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v14)
      {
        currentNickname = [v11 currentNickname];
        imageData = [v10 imageData];
        *buf = 138412546;
        v58 = currentNickname;
        v59 = 2112;
        v60 = imageData;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "SNAP: animateInfoButtonCoinFlipIfNeeded using currentNickname %@ contact.imageData: %@", buf, 0x16u);
      }

      currentNickname2 = [v11 currentNickname];

      v18 = [CNSharedProfile alloc];
      v19 = v18;
      if (!currentNickname2)
      {
        v49 = [v18 initWithContact:v10];
        goto LABEL_18;
      }

      currentNickname3 = [v11 currentNickname];
    }

    else
    {
      if (v14)
      {
        pendingNickname = [v11 pendingNickname];
        *buf = 138412290;
        v58 = pendingNickname;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "SNAP: animateInfoButtonCoinFlipIfNeeded using pendingNickname %@", buf, 0xCu);
      }

      v19 = [CNSharedProfile alloc];
      currentNickname3 = [v11 pendingNickname];
    }

    v22 = currentNickname3;
    v49 = [v19 initWithNickname:currentNickname3];

LABEL_18:
    callDetailsViewButton2 = [(iPadAudioCallViewController *)self callDetailsViewButton];
    [callDetailsViewButton2 setAlpha:0.0];

    v24 = objc_alloc_init(UIView);
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    view = [(iPadAudioCallViewController *)self view];
    [view addSubview:v24];

    pendingNickname2 = [v11 pendingNickname];
    avatar = [pendingNickname2 avatar];

    v46 = avatar;
    if (+[_TtC13InCallService23SensitivityFeatureFlags isSensitivityAvatarTreatmentEnabled])
    {
      contentIsSensitive = [avatar contentIsSensitive];
      v29 = sub_100004F84();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v58) = contentIsSensitive;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "SNAP: IMNicknameAvatarImage.contentIsSensitive for infoButton peekaboo returning %d", buf, 8u);
      }
    }

    else
    {
      v29 = sub_100004F84();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "SNAP: IMNicknameAvatarImage.contentIsSensitive for infoButton peekaboo not performing check", buf, 2u);
      }

      LOBYTE(contentIsSensitive) = 0;
    }

    v30 = +[ICSPreferences sharedPreferences];
    forceBlurNewPoster = [v30 forceBlurNewPoster];

    v32 = forceBlurNewPoster | contentIsSensitive;
    v33 = [_TtC13InCallService19BlurrableAvatarView alloc];
    contact = [v49 contact];
    v35 = [(BlurrableAvatarView *)v33 initWithContact:contact wantsBlur:v32 & 1 isCommunicationSafetyEnabled:+[_TtC13InCallService23SensitivityFeatureFlags isCommunicationSafetyEnabled]];

    [(BlurrableAvatarView *)v35 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v24 addSubview:v35];
    v36 = [UIButton buttonWithType:4];
    [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v24 addSubview:v36];
    v37 = +[UIColor secondaryLabelColor];
    [v36 setTintColor:v37];

    [(iPadAudioCallViewController *)self applyCallDetailsViewButtonPositionAndSizeCapToElement:v36];
    wallpaperTitleStyleAttributes = [(iPadAudioCallViewController *)self wallpaperTitleStyleAttributes];
    v39 = wallpaperTitleStyleAttributes;
    if (wallpaperTitleStyleAttributes)
    {
      titleColor = [wallpaperTitleStyleAttributes titleColor];
      [v36 setTintColor:titleColor];
    }

    v41 = +[TPIncomingCallMetricsProvider callDetailsButtonMaxSize];
    [(BlurrableAvatarView *)v35 setMaximumContentSizeCategory:v41];

    [(iPadAudioCallViewController *)self applySizeToElement:v35 usingThisElementAsGuide:v36];
    [(iPadAudioCallViewController *)self applySizeToElement:v24 usingThisElementAsGuide:v36];
    [(iPadAudioCallViewController *)self applyCallDetailsViewButtonPositionAndSizeCapToElement:v24];
    [(iPadAudioCallViewController *)self applyCallDetailsViewButtonPositionAndSizeCapToElement:v35];
    [(BlurrableAvatarView *)v35 setAlpha:0.0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D4E98;
    block[3] = &unk_100359098;
    v51 = v24;
    v52 = v35;
    v53 = v36;
    selfCopy = self;
    v55 = v10;
    v56 = v11;
    v42 = v11;
    v43 = v36;
    v44 = v35;
    v45 = v24;
    dispatch_async(&_dispatch_main_q, block);

    goto LABEL_27;
  }
}

- (void)triggerInversionColorUpdate:(id)update
{
  updateCopy = update;
  if (![(iPadAudioCallViewController *)self hasInvertedUIElementColorsBasedOnPoster])
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SNAP: We are going to update inversion color based on new configuration", buf, 2u);
    }

    v6 = [[TPInComingCallUISnapshotViewController alloc] initWithConfiguration:updateCopy style:0 nameString:&stru_100361FD0];
    objc_initWeak(buf, self);
    view = [(iPadAudioCallViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000D55E8;
    v10[3] = &unk_1003590C0;
    objc_copyWeak(&v11, buf);
    [v6 snapshotWithOptions:0 windowScene:windowScene completionBlock:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

- (void)invertNecessaryUIElementsBasedOnPosterImage:(id)image
{
  imageCopy = image;
  if (![(iPadAudioCallViewController *)self hasInvertedUIElementColorsBasedOnPoster])
  {
    [(iPadAudioCallViewController *)self invertColorForBottomButtonsBasedOn:imageCopy];
    [(iPadAudioCallViewController *)self invertColorForCallDetailsButtonBasedOn:imageCopy];
    [(iPadAudioCallViewController *)self invertColorForPosterBadgeViewBasedOn:imageCopy];
  }
}

+ (void)fetchPrefersWhiteColorAtCropRect:(CGRect)rect image:(id)image completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  completionCopy = completion;
  v11 = [iPadAudioCallViewController imageRefFrom:image];
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v12 = CGImageCreateWithImageInRect(v11, v20);
  if (v12)
  {
    v13 = v12;
    v14 = [iPadAudioCallViewController prefersWhiteTextOnImageRef:v12];
    CGImageRelease(v13);
    completionCopy[2](completionCopy, v14, 0);
  }

  else
  {
    v15 = sub_100004F84();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10025655C();
    }

    v18 = NSLocalizedFailureReasonErrorKey;
    v19 = @"SNAP: croppedImageRef for snapshot is nil, can't invert the color";
    v16 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v17 = [NSError errorWithDomain:@"com.apple.incallservice" code:-1 userInfo:v16];
    (completionCopy)[2](completionCopy, 0, v17);

    completionCopy = v16;
  }
}

- (void)invertColorForBottomButtonsBasedOn:(id)on
{
  onCopy = on;
  v5 = +[UIScreen mainScreen];
  [v5 bounds];
  v7 = v6;
  v9 = v8;

  [onCopy scale];
  v11 = v10 * (v7 * 0.1);
  [onCopy scale];
  v13 = v9 * 0.6 * v12;
  [onCopy scale];
  v15 = v7 * 0.8 * v14;
  [onCopy scale];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000D5A48;
  v17[3] = &unk_100358030;
  v17[4] = self;
  [objc_opt_class() fetchPrefersWhiteColorAtCropRect:onCopy image:v17 completion:{v11, v13, v15, v9 * 0.3 * v16}];
}

- (void)invertColorForCallDetailsButtonBasedOn:(id)on
{
  onCopy = on;
  callDetailsViewButton = [(iPadAudioCallViewController *)self callDetailsViewButton];
  [callDetailsViewButton origin];
  v7 = v6;
  [onCopy scale];
  v9 = v7 * v8;
  callDetailsViewButton2 = [(iPadAudioCallViewController *)self callDetailsViewButton];
  [callDetailsViewButton2 origin];
  v12 = v11;
  [onCopy scale];
  v14 = v12 * v13;
  callDetailsViewButton3 = [(iPadAudioCallViewController *)self callDetailsViewButton];
  [callDetailsViewButton3 frame];
  v17 = v16;
  [onCopy scale];
  v19 = v18 * v17;
  callDetailsViewButton4 = [(iPadAudioCallViewController *)self callDetailsViewButton];
  [callDetailsViewButton4 frame];
  v22 = v21;
  [onCopy scale];
  v24 = v23 * v22;

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000D5CB4;
  v25[3] = &unk_100358030;
  v25[4] = self;
  [objc_opt_class() fetchPrefersWhiteColorAtCropRect:onCopy image:v25 completion:{v9, v14, v19, v24}];
}

- (void)invertColorForPosterBadgeViewBasedOn:(id)on
{
  onCopy = on;
  posterBadgeView = [(iPadAudioCallViewController *)self posterBadgeView];
  if (posterBadgeView)
  {
    v6 = posterBadgeView;
    posterBadgeView2 = [(iPadAudioCallViewController *)self posterBadgeView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      posterBadgeView3 = [(iPadAudioCallViewController *)self posterBadgeView];
      posterBadgeView4 = [(iPadAudioCallViewController *)self posterBadgeView];
      [posterBadgeView4 origin];
      v12 = v11;
      [onCopy scale];
      v14 = v12 * v13;
      posterBadgeView5 = [(iPadAudioCallViewController *)self posterBadgeView];
      [posterBadgeView5 origin];
      v17 = v16;
      [onCopy scale];
      v19 = v17 * v18;
      posterBadgeView6 = [(iPadAudioCallViewController *)self posterBadgeView];
      [posterBadgeView6 frame];
      v22 = v21;
      [onCopy scale];
      v24 = v23 * v22;
      posterBadgeView7 = [(iPadAudioCallViewController *)self posterBadgeView];
      [posterBadgeView7 frame];
      v27 = v26;
      [onCopy scale];
      v29 = v28 * v27;

      v30 = objc_opt_class();
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_1000D5F98;
      v32[3] = &unk_1003590E8;
      v32[4] = self;
      v33 = posterBadgeView3;
      v31 = posterBadgeView3;
      [v30 fetchPrefersWhiteColorAtCropRect:onCopy image:v32 completion:{v14, v19, v24, v29}];
    }
  }
}

+ (BOOL)prefersWhiteTextOnImageRef:(CGImage *)ref
{
  v3 = [CNImageDerivedColorGenerator colorsForImageRef:ref];
  v4 = [CNImageDerivedColorBackgroundUtilities backgroundColorsPreferWhiteForegroundText:v3];

  return v4;
}

+ (CGImage)imageRefFrom:(id)from
{
  fromCopy = from;
  if ([fromCopy ioSurface])
  {
    v4 = UICreateCGImageFromIOSurface();
    [fromCopy size];
    v6 = v5;
    [fromCopy size];
    v8 = v7;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v10 = CGBitmapContextCreate(0, v6, v8, 8uLL, vcvtd_n_u64_f64(v6, 2uLL), DeviceRGB, 1u);
    v14.origin.x = 0.0;
    v14.origin.y = 0.0;
    v14.size.width = v6;
    v14.size.height = v8;
    CGContextDrawImage(v10, v14, v4);
    Image = CGBitmapContextCreateImage(v10);
    cGImage = Image;
    if (Image)
    {
      CFAutorelease(Image);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    CGColorSpaceRelease(DeviceRGB);
    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    cGImage = [fromCopy CGImage];
  }

  return cGImage;
}

- (void)useRTTButtonTapped
{
  frontmostCall = [(iPadAudioCallViewController *)self frontmostCall];
  callCenter = [(iPadAudioCallViewController *)self callCenter];
  [callCenter setTTYType:1 forCall:frontmostCall];
}

- (void)extensionNumberButtonTapped
{
  frontmostCall = [(iPadAudioCallViewController *)self frontmostCall];
  [frontmostCall sendHardPauseDigits];
}

- (void)callTransferButtonTapped
{
  v9 = objc_alloc_init(TUCallProviderManager);
  v3 = [TUDialRequest alloc];
  telephonyProvider = [v9 telephonyProvider];
  v5 = [v3 initWithProvider:telephonyProvider];

  v6 = [[TUHandle alloc] initWithType:2 value:@"4"];
  [v5 setHandle:v6];

  [v5 setOriginatingUIType:38];
  callCenter = [(iPadAudioCallViewController *)self callCenter];
  v8 = [callCenter dialWithRequest:v5];
}

- (BOOL)shouldAddRTTButtonToViewHierarchy
{
  if (![(iPadAudioCallViewController *)self shouldShowUseRTT])
  {
    return 0;
  }

  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] == 3)
  {
    features = [(iPadAudioCallViewController *)self features];
    v5 = ([features isDominoEnabled] & 1) == 0 && self->_middleViewState == 1;
  }

  else
  {
    v5 = self->_middleViewState == 1;
  }

  return v5;
}

- (BOOL)shouldAddExtensionNumberButtonToViewHierarchy
{
  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];
  if (callDisplayStyle == 3)
  {
    features = [(iPadAudioCallViewController *)self features];
    if (([features isDominoEnabled] & 1) != 0 || self->_middleViewState != 1)
    {
      v6 = 0;
LABEL_7:

      goto LABEL_9;
    }
  }

  else if (self->_middleViewState != 1)
  {
    v6 = 0;
    goto LABEL_9;
  }

  frontmostCall = [(iPadAudioCallViewController *)self frontmostCall];
  v6 = [frontmostCall hardPauseDigitsState] == 2;

  if (callDisplayStyle == 3)
  {
    goto LABEL_7;
  }

LABEL_9:

  return v6;
}

- (void)refreshExtensionNumberButton
{
  bottomBar = [(PHCallViewController *)self bottomBar];
  v4 = [(iPadAudioCallViewController *)self customizedTitleForItemInBar:bottomBar withActionType:23];

  [(PHAudioCallControlsSupplementalButton *)self->_extensionNumberButton setTitle:v4 forState:0];
  [(iPadAudioCallViewController *)self updateSupplementalButtonsLayout];
}

- (void)mergeCallsButtonTapped
{
  callCenter = [(iPadAudioCallViewController *)self callCenter];
  v4 = [callCenter callWithStatus:2];

  callCenter2 = [(iPadAudioCallViewController *)self callCenter];
  v6 = [callCenter2 callWithStatus:1];

  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Supplemental merge button tapped. Grouping held call %@ with active call %@", &v9, 0x16u);
  }

  callCenter3 = [(iPadAudioCallViewController *)self callCenter];
  [callCenter3 groupCall:v4 withOtherCall:v6];
}

- (void)updateLayoutSupplementalButtons
{
  if (self->_supplementalButtonsStackView)
  {
    [(iPadAudioCallViewController *)self removeSubviewFromMiddleStackViewWithView:?];
  }

  buttonsViewController = [(iPadAudioCallViewController *)self buttonsViewController];
  view = [buttonsViewController view];

  superview = [view superview];
  if (superview)
  {
    v5 = superview;
    middleViewState = [(iPadAudioCallViewController *)self middleViewState];

    if (middleViewState == 1)
    {
      v7 = [[UIStackView alloc] initWithArrangedSubviews:&__NSArray0__struct];
      [v7 setAxis:0];
      [v7 setDistribution:3];
      [v7 setSpacing:10.0];
      [v7 setAlignment:0];
      [v7 setLayoutMargins:{0.0, 0.0, 30.0, 0.0}];
      [v7 setLayoutMarginsRelativeArrangement:1];
      [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v8) = 1144750080;
      [v7 setContentCompressionResistancePriority:1 forAxis:v8];
      [v7 setContentHuggingPriority:0 forAxis:0.0];
      v9 = objc_alloc_init(NSMutableArray);
      if ([(iPadAudioCallViewController *)self shouldShowCallTransfer])
      {
        callTransferButton = [(iPadAudioCallViewController *)self callTransferButton];
        [v7 addArrangedSubview:callTransferButton];

        callTransferButton2 = [(iPadAudioCallViewController *)self callTransferButton];
        [callTransferButton2 setTranslatesAutoresizingMaskIntoConstraints:0];

        callTransferButton3 = [(iPadAudioCallViewController *)self callTransferButton];
        heightAnchor = [callTransferButton3 heightAnchor];
        heightAnchor2 = [v7 heightAnchor];
        v15 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
        [v15 setActive:1];
      }

      if ([(iPadAudioCallViewController *)self shouldShowMergeCalls])
      {
        mergeCallsButton = [(iPadAudioCallViewController *)self mergeCallsButton];
        [v7 addArrangedSubview:mergeCallsButton];

        mergeCallsButton2 = [(iPadAudioCallViewController *)self mergeCallsButton];
        [mergeCallsButton2 setTranslatesAutoresizingMaskIntoConstraints:0];

        mergeCallsButton3 = [(iPadAudioCallViewController *)self mergeCallsButton];
        heightAnchor3 = [mergeCallsButton3 heightAnchor];
        heightAnchor4 = [v7 heightAnchor];
        v21 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
        [v21 setActive:1];
      }

      if ([(iPadAudioCallViewController *)self shouldAddExtensionNumberButtonToViewHierarchy])
      {
        extensionNumberButton = [(iPadAudioCallViewController *)self extensionNumberButton];
        [v7 addArrangedSubview:extensionNumberButton];

        extensionNumberButton2 = [(iPadAudioCallViewController *)self extensionNumberButton];
        [extensionNumberButton2 setTranslatesAutoresizingMaskIntoConstraints:0];

        extensionNumberButton3 = [(iPadAudioCallViewController *)self extensionNumberButton];
        heightAnchor5 = [extensionNumberButton3 heightAnchor];
        heightAnchor6 = [v7 heightAnchor];
        v27 = [heightAnchor5 constraintEqualToAnchor:heightAnchor6];
        [v27 setActive:1];
      }

      if ([(iPadAudioCallViewController *)self shouldAddRTTButtonToViewHierarchy])
      {
        useRTTButton = [(iPadAudioCallViewController *)self useRTTButton];
        [v7 addArrangedSubview:useRTTButton];

        useRTTButton2 = [(iPadAudioCallViewController *)self useRTTButton];
        [useRTTButton2 setTranslatesAutoresizingMaskIntoConstraints:0];

        useRTTButton3 = [(iPadAudioCallViewController *)self useRTTButton];
        heightAnchor7 = [useRTTButton3 heightAnchor];
        heightAnchor8 = [v7 heightAnchor];
        v33 = [heightAnchor7 constraintEqualToAnchor:heightAnchor8];
        [v33 setActive:1];
      }

      [(iPadAudioCallViewController *)self setSupplementalButtonsStackView:v7];
      [(iPadAudioCallViewController *)self addSubviewsToMiddleStackViewWithView:self->_supplementalButtonsStackView priority:2];
    }
  }
}

- (void)dismissNavigationController
{
  navigationController = [(iPadAudioCallViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)dismissNavigationControllerAndUpdateScene
{
  objc_initWeak(&location, self);
  navigationController = [(iPadAudioCallViewController *)self navigationController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000D6B9C;
  v4[3] = &unk_100356F60;
  objc_copyWeak(&v5, &location);
  [navigationController dismissViewControllerAnimated:1 completion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)updateCurrentState
{
  callCenter = [(iPadAudioCallViewController *)self callCenter];
  currentCallGroups = [callCenter currentCallGroups];

  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if (![callDisplayStyleManager callDisplayStyle])
  {
    v6 = [(iPadAudioCallViewController *)self _isScreeningAnyCallGroup:currentCallGroups];

    if (!v6)
    {
      goto LABEL_5;
    }

    callDisplayStyleManager = +[UIApplication sharedApplication];
    delegate = [callDisplayStyleManager delegate];
    currentInCallScene = [delegate currentInCallScene];
    [currentInCallScene requestTransitionToPresentationMode:0 shouldDismissCMASAlerts:0 analyticsSource:@"iPadSBSUIInCallTransitionAnalyticsSourceCallScreeningBegin"];
  }

LABEL_5:
  if (!+[PHSOSViewController isCallBufferDismissalAssertionActive])
  {
    goto LABEL_8;
  }

  if ([currentCallGroups count])
  {
    +[PHSOSViewController releaseAllCallBufferDismissalAssertions];
LABEL_8:
    v9 = sub_100004F84();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v98 = 138412290;
      *&v98[4] = currentCallGroups;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Current Call Groups is %@", v98, 0xCu);
    }

    callCenter2 = [(iPadAudioCallViewController *)self callCenter];
    v11 = [callCenter2 allCallsPassTest:&stru_100359108];

    callCenter3 = [(iPadAudioCallViewController *)self callCenter];
    routeController = [callCenter3 routeController];
    pickedRoute = [routeController pickedRoute];
    deviceType = [pickedRoute deviceType];

    if (!v11 || [(PHCallViewController *)self currentState]!= 1 && [(PHCallViewController *)self currentState]!= 3 && deviceType != 13)
    {
      goto LABEL_17;
    }

    callDisplayStyleManager2 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
    if ([callDisplayStyleManager2 callDisplayStyle] == 3)
    {
      features = [(iPadAudioCallViewController *)self features];
      isDominoEnabled = [features isDominoEnabled];

      if (isDominoEnabled)
      {
LABEL_17:
        [(PHCallViewController *)self obtainDismissalAssertionIfNeeded];
        v19 = 0;
        goto LABEL_23;
      }
    }

    else
    {
    }

    v19 = 1;
LABEL_23:
    if ([currentCallGroups count])
    {
      if (([(iPadAudioCallViewController *)self isViewLoaded]& 1) == 0)
      {
        [(iPadAudioCallViewController *)self loadView];
      }

      v21 = +[UIApplication sharedApplication];
      delegate2 = [v21 delegate];
      bannerPresentationManager = [delegate2 bannerPresentationManager];
      callDetailsCoordinator = [(iPadAudioCallViewController *)self callDetailsCoordinator];
      v25 = [(iPadAudioCallViewController *)self makeCallDetailsCoordinatorWithBannerPresentationManager:bannerPresentationManager existingCoordinator:callDetailsCoordinator deferredPresentationManager:self];

      outcome = [v25 outcome];
      if (outcome == 1)
      {
        [(iPadAudioCallViewController *)self setCallDetailsCoordinator:0];
      }

      else if (outcome == 2)
      {
        coordinator = [v25 coordinator];
        [(iPadAudioCallViewController *)self setCallDetailsCoordinator:coordinator];
      }
    }

    if (![currentCallGroups count])
    {
      v32 = +[UIApplication sharedApplication];
      delegate3 = [v32 delegate];
      mostRecentlyDisconnectedAudioCall = [delegate3 mostRecentlyDisconnectedAudioCall];

      if (mostRecentlyDisconnectedAudioCall)
      {
        v35 = sub_100004F84();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *v98 = 0;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call has been disconnected, setting state to PHInCallStateEnded", v98, 2u);
        }

        [(iPadAudioCallViewController *)self setCurrentState:7 animated:0];
      }

      goto LABEL_74;
    }

    if (v19)
    {
      v28 = sub_100004F84();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        currentState = [(PHCallViewController *)self currentState];
        *v98 = 67109376;
        *&v98[4] = currentState;
        *&v98[8] = 1024;
        *&v98[10] = deviceType == 13;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: All calls are an endpoint elsewhere and previous state was %d OR shouldDismissForPickedRoute is %d, so setting state to PHInCallStateIdle", v98, 0xEu);
      }

      selfCopy5 = self;
      v31 = 0;
      goto LABEL_36;
    }

    if ([currentCallGroups count] != 1 || (-[iPadAudioCallViewController callCenter](self, "callCenter"), v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "hasCurrentVideoCalls"), v36, (v37 & 1) != 0))
    {
      v38 = [currentCallGroups count];
      callCenter4 = [(iPadAudioCallViewController *)self callCenter];
      v40 = &v38[[callCenter4 currentVideoCallCount]];

      if (v40 < 2)
      {
        goto LABEL_75;
      }

      v41 = sub_100004F84();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *v98 = 0;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: More than one call is active...", v98, 2u);
      }

      callCenter5 = [(iPadAudioCallViewController *)self callCenter];
      incomingCall = [callCenter5 incomingCall];

      if (!incomingCall)
      {
        v68 = [(iPadAudioCallViewController *)self _isScreeningAnyCallGroup:currentCallGroups];
        usesCompactMulticallUI = [(iPadAudioCallViewController *)self usesCompactMulticallUI];
        v70 = usesCompactMulticallUI;
        if (!v68)
        {
          v76 = sub_100004F84();
          v77 = os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT);
          if (v70)
          {
            if (v77)
            {
              *v98 = 0;
              _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: ... so setting state to PHInCallStateSingleCallActive", v98, 2u);
            }

            v78 = 4;
          }

          else
          {
            if (v77)
            {
              *v98 = 0;
              _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: ... so setting state to PHInCallStateMultipleCallsActive", v98, 2u);
            }

            v78 = 5;
          }

          [(iPadAudioCallViewController *)self setCurrentState:v78 animated:1];
          [(iPadAudioCallViewController *)self hideFirstNameLabelOnKeypad];
          goto LABEL_75;
        }

        if (!usesCompactMulticallUI || (-[iPadAudioCallViewController prioritizedCall](self, "prioritizedCall"), (v71 = objc_claimAutoreleasedReturnValue()) == 0) || (v72 = v71, -[iPadAudioCallViewController prioritizedCall](self, "prioritizedCall"), v73 = objc_claimAutoreleasedReturnValue(), v74 = [v73 isScreening], v73, v72, (v74 & 1) != 0))
        {
          v75 = sub_100004F84();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
          {
            *v98 = 0;
            _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: ... but no incoming call while one is being screened meaning the other was declined, so moving to PHInCallStateScreening", v98, 2u);
          }

          selfCopy5 = self;
          v31 = 11;
          goto LABEL_36;
        }

        v89 = sub_100004F84();
        if (!os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_128;
        }

        *v98 = 0;
        v90 = "UpdateCurrentState: ... but no incoming call and the screening call isn't the prioritized one.";
        goto LABEL_127;
      }

      v44 = sub_100004F84();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *v98 = 0;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: ... and we have an incoming audio call...", v98, 2u);
      }

      callCenter6 = [(iPadAudioCallViewController *)self callCenter];
      callCenter7 = [callCenter6 callWithStatus:1];
      if (!callCenter7)
      {
        callCenter7 = [(iPadAudioCallViewController *)self callCenter];
        callCenter8 = [callCenter7 callWithStatus:3];
        if (!callCenter8)
        {
          callCenter8 = [(iPadAudioCallViewController *)self callCenter];
          v48 = [callCenter8 callWithStatus:2];
          if (!v48)
          {
            callCenter9 = [(iPadAudioCallViewController *)self callCenter];
            currentVideoCallCount = [callCenter9 currentVideoCallCount];

            if (!currentVideoCallCount)
            {
              prioritizedCall = sub_100004F84();
              if (os_log_type_enabled(prioritizedCall, OS_LOG_TYPE_DEFAULT))
              {
                *v98 = 0;
                _os_log_impl(&_mh_execute_header, prioritizedCall, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: ... but we don't also have an active call, so moving to PHInCallStateIncomingRinging", v98, 2u);
              }

              goto LABEL_123;
            }

            goto LABEL_55;
          }
        }
      }

LABEL_55:
      v49 = [(iPadAudioCallViewController *)self _isScreeningAnyCallGroup:currentCallGroups];
      callCenter10 = [(iPadAudioCallViewController *)self callCenter];
      ics_hasTooManyCallsForCallWaitingBanner = [callCenter10 ics_hasTooManyCallsForCallWaitingBanner];

      features2 = [(iPadAudioCallViewController *)self features];
      if (([features2 shouldShowFullScreenCallWaiting] & 1) != 0 || (v49 & 1) != 0 || (ics_hasTooManyCallsForCallWaitingBanner & 1) != 0 || -[iPadAudioCallViewController usesCompactMulticallUI](self, "usesCompactMulticallUI"))
      {

        goto LABEL_60;
      }

      callDisplayStyleManager3 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
      if ([callDisplayStyleManager3 callDisplayStyle] == 3)
      {
        features3 = [(iPadAudioCallViewController *)self features];
        isDominoEnabled2 = [features3 isDominoEnabled];

        if (isDominoEnabled2)
        {
LABEL_60:
          v53 = sub_100004F84();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            *v98 = 0;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: ... and we also have an active call, so moving to PHInCallStateCallWaiting", v98, 2u);
          }

          if (![(iPadAudioCallViewController *)self usesCompactMulticallUI])
          {
            selfCopy5 = self;
            v31 = 3;
LABEL_36:
            [(iPadAudioCallViewController *)selfCopy5 setCurrentState:v31 animated:1, *v98];
LABEL_75:
            [(iPadAudioCallViewController *)self updateCallTranslationIfNeeded];
            frontmostCall = [(iPadAudioCallViewController *)self frontmostCall];
            [(iPadAudioCallViewController *)self updateWaitOnHoldServiceWithCall:frontmostCall];

            [(iPadAudioCallViewController *)self updateDefaultNoPosterAvatarViewVisibility];
            goto LABEL_76;
          }

          prioritizedCall = [(iPadAudioCallViewController *)self prioritizedCall];
          callUUID = [prioritizedCall callUUID];
          if (callUUID)
          {
            v56 = callUUID;
            callCenter11 = [(iPadAudioCallViewController *)self callCenter];
            incomingCall2 = [callCenter11 incomingCall];
            callUUID2 = [incomingCall2 callUUID];
            prioritizedCall2 = [(iPadAudioCallViewController *)self prioritizedCall];
            callUUID3 = [prioritizedCall2 callUUID];

            if (callUUID2 != callUUID3)
            {
              prioritizedCall3 = [(iPadAudioCallViewController *)self prioritizedCall];
              if ([(iPadAudioCallViewController *)self isCallSmartHoldingSessionActive:prioritizedCall3])
              {
              }

              else
              {
                currentState2 = [(PHCallViewController *)self currentState];

                if (currentState2 == 12)
                {
                  [(iPadAudioCallViewController *)self setCurrentState:4 animated:1];
                }
              }

              goto LABEL_76;
            }

            goto LABEL_124;
          }

LABEL_123:

LABEL_124:
          selfCopy5 = self;
          v31 = 1;
          goto LABEL_36;
        }
      }

      else
      {
      }

      v89 = sub_100004F84();
      if (!os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
      {
LABEL_128:

        selfCopy5 = self;
        v31 = 4;
        goto LABEL_36;
      }

      *v98 = 0;
      v90 = "UpdateCurrentState: ... and we also have an active call, so moving to PHInCallStateSingleCallActive (EmbedSwapBanner)";
LABEL_127:
      _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, v90, v98, 2u);
      goto LABEL_128;
    }

    mostRecentlyDisconnectedAudioCall = [currentCallGroups lastObject];
    if ([mostRecentlyDisconnectedAudioCall status] == 4 || objc_msgSend(mostRecentlyDisconnectedAudioCall, "wantsHoldMusic"))
    {
      v63 = sub_100004F84();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        *v98 = 0;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call status is TUCallStatusRinging, setting state to PHInCallStateIncomingRinging", v98, 2u);
      }

      selfCopy10 = self;
      v65 = 1;
      v66 = 0;
    }

    else
    {
      if ([mostRecentlyDisconnectedAudioCall status] == 1 || objc_msgSend(mostRecentlyDisconnectedAudioCall, "status") == 2)
      {
        v79 = sub_100004F84();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          *v98 = 0;
          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call status is TUCallStatusActive, and the call was initiated on this device", v98, 2u);
        }

        calls = [mostRecentlyDisconnectedAudioCall calls];
        v81 = [calls count];

        v82 = sub_100004F84();
        v83 = os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT);
        if (v81 < 2)
        {
          if (v83)
          {
            *v98 = 0;
            _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "There is only one call in call group, so setting state to PHInCallStateSingleCallActive", v98, 2u);
          }

          if ([(iPadAudioCallViewController *)self _isScreeningCallGroup:mostRecentlyDisconnectedAudioCall]&& ![(iPadAudioCallViewController *)self isCallSmartHoldingSessionActive:mostRecentlyDisconnectedAudioCall])
          {
            v91 = 11;
          }

          else if ([(iPadAudioCallViewController *)self isCallSmartHoldingSessionActive:mostRecentlyDisconnectedAudioCall])
          {
            v91 = 12;
          }

          else
          {
            v91 = 4;
          }

          [(iPadAudioCallViewController *)self setCurrentState:v91 animated:1];
          if (self->_waitOnHoldTipView && [(PHCallViewController *)self currentState]== 4)
          {
            [(iPadAudioCallViewController *)self displayWaitOnHoldTip];
          }

          goto LABEL_73;
        }

        if (v83)
        {
          calls2 = [mostRecentlyDisconnectedAudioCall calls];
          v85 = [calls2 count];
          *v98 = 134217984;
          *&v98[4] = v85;
          _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "There are %lu calls in call group, so setting state to PHInCallStateMultipleCallsActive", v98, 0xCu);
        }

        selfCopy10 = self;
        v65 = 5;
      }

      else if ([mostRecentlyDisconnectedAudioCall status] == 5)
      {
        v93 = sub_100004F84();
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          *v98 = 0;
          _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call status is TUCallStatusDisconnecting, setting state to PHInCallStateEnding", v98, 2u);
        }

        selfCopy10 = self;
        v65 = 6;
      }

      else if ([mostRecentlyDisconnectedAudioCall status] == 6)
      {
        v96 = sub_100004F84();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          *v98 = 0;
          _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call status is TUCallStatusDisconnected, setting state to PHInCallStateEnded", v98, 2u);
        }

        selfCopy10 = self;
        v65 = 7;
      }

      else
      {
        if ([mostRecentlyDisconnectedAudioCall status] != 3)
        {
          goto LABEL_73;
        }

        v97 = sub_100004F84();
        if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
        {
          *v98 = 0;
          _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call status is Sending, setting state to PHInCallStateOutgoingRinging", v98, 2u);
        }

        selfCopy10 = self;
        v65 = 2;
      }

      v66 = 1;
    }

    [(iPadAudioCallViewController *)selfCopy10 setCurrentState:v65 animated:v66];
LABEL_73:

LABEL_74:
    goto LABEL_75;
  }

  v20 = sub_100004F84();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *v98 = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController,UpdateCurrentState,invoking setCurrentState:PHInCallStateCallBuffer", v98, 2u);
  }

  [(iPadAudioCallViewController *)self setCurrentState:10];
LABEL_76:
}

- (BOOL)_isScreeningAnyCallGroup:(id)group
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000D7AFC;
  v4[3] = &unk_100359130;
  v4[4] = self;
  return [group tu_containsObjectPassingTest:v4];
}

- (BOOL)_isScreeningCallGroup:(id)group
{
  groupCopy = group;
  featureFlags = [(iPadAudioCallViewController *)self featureFlags];
  if (TUCallScreeningEnabled())
  {
    calls = [groupCopy calls];
    firstObject = [calls firstObject];
    isScreening = [firstObject isScreening];
  }

  else
  {
    isScreening = 0;
  }

  return isScreening;
}

- (void)setIdleState:(unsigned __int16)state
{
  v4 = +[UIApplication sharedApplication];
  delegate = [v4 delegate];
  [delegate setMostRecentlyDisconnectedAudioCall:0];

  [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHAudioCallViewControllerDismissalAssertionWaitingForIdle"];
  [(iPadAudioCallViewController *)self setCallForBackgroundImage:0 animated:1 callDisplayStyleChanged:0];
  [(iPadAudioCallViewController *)self releaseDismissalAssertion];

  [(iPadAudioCallViewController *)self _testing_didTransitionToIdleCallState];
}

- (void)setActiveState:(unsigned __int16)state
{
  stateCopy = state;
  callCenter = [(iPadAudioCallViewController *)self callCenter];
  routeController = [callCenter routeController];

  if ([routeController hasAirPodsAvailable])
  {
    v7 = [routeController hasAirPodsInEar] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  v8 = PHPreferencesGetValue();
  if ([v8 BOOLValue])
  {
    v9 = 1;
  }

  else
  {
    v9 = ([(PHCallViewController *)self currentState]== 1) & v7;
  }

  if (![(iPadAudioCallViewController *)self middleViewState]|| [(iPadAudioCallViewController *)self middleViewState]== 4 || [(iPadAudioCallViewController *)self middleViewState]== 5)
  {
    objc_initWeak(location, self);
    v37 = _NSConcreteStackBlock;
    v38 = 3221225472;
    v39 = sub_1000D8148;
    v40 = &unk_100359158;
    objc_copyWeak(&v41, location);
    v42 = v9;
    [(iPadAudioCallViewController *)self setMiddleViewState:1 animated:1 completion:&v37];
    objc_destroyWeak(&v41);
    objc_destroyWeak(location);
  }

  if (stateCopy == 5 || [(PHCallViewController *)self currentState]== 5)
  {
    [(iPadAudioCallViewController *)self updateViewsForHeldCallControlsViewIfNeeded:v37];
  }

  v10 = [(PHCallViewController *)self bottomBar:v37];
  [v10 setUserInteractionEnabled:1];

  currentMiddleView = [(iPadAudioCallViewController *)self currentMiddleView];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    currentMiddleView2 = [(iPadAudioCallViewController *)self currentMiddleView];
    [currentMiddleView2 setButtonsEnabled:1];
  }

  bottomBar = [(PHCallViewController *)self bottomBar];
  [(iPadAudioCallViewController *)self _testing_didTransitionToActiveCallState:bottomBar];

  [(PHCallViewController *)self setWantsApplicationDismissalStyle:stateCopy == 4];
  if (stateCopy == 4)
  {
    isolatedCall = [(iPadAudioCallViewController *)self isolatedCall];
    [(iPadAudioCallViewController *)self setCallForBackgroundImage:isolatedCall animated:1 callDisplayStyleChanged:0];
    if ([(iPadAudioCallViewController *)self shouldShowNewPosterUpdates])
    {
      [(iPadAudioCallViewController *)self updateLayeredBackgroundWallpaper];
    }

    [(iPadAudioCallViewController *)self animateInfoButtonCoinFlipIfNeeded];
  }

  else
  {
    isolatedCall = [(iPadAudioCallViewController *)self callToUseForWallpaper];
    [(iPadAudioCallViewController *)self setCallForBackgroundImage:isolatedCall animated:1 callDisplayStyleChanged:0];
  }

  if ([isolatedCall originatingUIType] == 10)
  {
    callCenter2 = [(iPadAudioCallViewController *)self callCenter];
    routeController2 = [callCenter2 routeController];
    routeForSpeakerEnable = [routeController2 routeForSpeakerEnable];

    if (routeForSpeakerEnable)
    {
      callCenter3 = [(iPadAudioCallViewController *)self callCenter];
      routeController3 = [callCenter3 routeController];
      [routeController3 pickRoute:routeForSpeakerEnable];
    }

    else
    {
      callCenter3 = sub_100004F84();
      if (os_log_type_enabled(callCenter3, OS_LOG_TYPE_ERROR))
      {
        sub_100256590();
      }
    }

    voiceLoopManager = [(iPadAudioCallViewController *)self voiceLoopManager];
    [voiceLoopManager startLoopPlayback];
  }

  else
  {
    if ([isolatedCall originatingUIType] != 12)
    {
      goto LABEL_31;
    }

    callCenter4 = [(iPadAudioCallViewController *)self callCenter];
    routeController4 = [callCenter4 routeController];
    routeForSpeakerEnable = [routeController4 routeForSpeakerDisable];

    if (routeForSpeakerEnable)
    {
      voiceLoopManager = [(iPadAudioCallViewController *)self callCenter];
      routeController5 = [voiceLoopManager routeController];
      [routeController5 pickRoute:routeForSpeakerEnable];
    }

    else
    {
      voiceLoopManager = sub_100004F84();
      if (os_log_type_enabled(voiceLoopManager, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&_mh_execute_header, voiceLoopManager, OS_LOG_TYPE_DEFAULT, "[WARN] iPadAudioCallViewController: Could not find available route to pick for speaker disable", location, 2u);
      }
    }
  }

LABEL_31:
  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  if (!callDisplayStyle)
  {
    callParticipantsViewController = [(iPadAudioCallViewController *)self callParticipantsViewController];
    [callParticipantsViewController setBannerButtonsState:1];

    callCenter5 = [(iPadAudioCallViewController *)self callCenter];
    routeController6 = [callCenter5 routeController];
    pickedRoute = [routeController6 pickedRoute];
    isReceiver = [pickedRoute isReceiver];

    v32 = +[UIApplication sharedApplication];
    delegate = [v32 delegate];
    currentInCallScene = [delegate currentInCallScene];
    delegate2 = [currentInCallScene delegate];
    callAnalyticsLogger = [delegate2 callAnalyticsLogger];
    [callAnalyticsLogger createAnsweredBannerAnalyticsViewWithIsHandsfreeAudioRoute:isReceiver ^ 1];
  }

  [(iPadAudioCallViewController *)self _performPosterTransformationsIfNecessaryToState:stateCopy];
}

- (void)_performPosterTransformationsIfNecessaryToState:(unsigned __int16)state
{
  stateCopy = state;
  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];
  if (stateCopy == 4 && callDisplayStyle == 2 && ([(iPadAudioCallViewController *)self renderingViewController], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    shouldShowContactOrLastSeenWallpaper = [(iPadAudioCallViewController *)self shouldShowContactOrLastSeenWallpaper];

    if (shouldShowContactOrLastSeenWallpaper)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000D8314;
      v11[3] = &unk_100356960;
      v11[4] = self;
      v12 = 4;
      v9 = objc_retainBlock(v11);
      [UIView animateWithDuration:v9 animations:0.5];
    }
  }

  else
  {
  }
}

- (void)updateCallParticipantsViewControllerCallGroups
{
  if ([(iPadAudioCallViewController *)self usesCompactMulticallUI]&& ([(iPadAudioCallViewController *)self prioritizedCall], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    existingPrioritizedCall = self->_existingPrioritizedCall;
    callParticipantsViewController = [(iPadAudioCallViewController *)self callParticipantsViewController];
    [callParticipantsViewController setPrioritizedCall:existingPrioritizedCall];
  }

  else
  {
    callParticipantsViewController = [(iPadAudioCallViewController *)self callParticipantsViewController];
    [callParticipantsViewController updateCallGroups];
  }
}

- (void)_updateStatusLabelVisibility
{
  getParticipantsView_WaitingOrNot = [(iPadAudioCallViewController *)self getParticipantsView_WaitingOrNot];
  singleCallLabelView = [getParticipantsView_WaitingOrNot singleCallLabelView];
  if (singleCallLabelView)
  {
    [(iPadAudioCallViewController *)self updatePosterBadgeView:0 to:singleCallLabelView];
    [singleCallLabelView setHidesLabel:0];
    [singleCallLabelView updateLabelsOrderAndLayout];
  }
}

- (BOOL)isShowingPosterBadge
{
  posterBadgeView = [(iPadAudioCallViewController *)self posterBadgeView];
  v3 = posterBadgeView != 0;

  return v3;
}

- (void)updatePosterBadgeView:(BOOL)view to:(id)to
{
  viewCopy = view;
  toCopy = to;
  if (viewCopy && [(iPadAudioCallViewController *)self canShowPosterBadgeInAudioCallView:toCopy])
  {
    [(iPadAudioCallViewController *)self setUpPosterBadgeViewIfNecessary];
  }

  else
  {
    posterBadgeView = [(iPadAudioCallViewController *)self posterBadgeView];

    if (posterBadgeView)
    {
      posterBadgeView2 = [(iPadAudioCallViewController *)self posterBadgeView];
      [posterBadgeView2 removeFromSuperview];

      [(iPadAudioCallViewController *)self setPosterBadgeView:0];
    }
  }

  v8 = toCopy;
  if (toCopy)
  {
    posterBadgeView3 = [(iPadAudioCallViewController *)self posterBadgeView];
    [toCopy setPosterBadgeView:posterBadgeView3];

    [(iPadAudioCallViewController *)self synchronizeSingleLabelViewWithPosterText];
    v8 = toCopy;
  }
}

- (void)synchronizeSingleLabelViewWithPosterText
{
  getParticipantsView_WaitingOrNot = [(iPadAudioCallViewController *)self getParticipantsView_WaitingOrNot];
  detachedPosterNameViewModel = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];

  if (detachedPosterNameViewModel)
  {
    detachedPosterNameViewModel2 = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];
    [detachedPosterNameViewModel2 updateViewModelForParticipantsView:getParticipantsView_WaitingOrNot];
  }

  else
  {
    [(iPadAudioCallViewController *)self updatePosterViewModelForParticipantsView:getParticipantsView_WaitingOrNot];
  }
}

- (void)setUpPosterBadgeViewIfNecessary
{
  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] == 3)
  {
    features = [(iPadAudioCallViewController *)self features];
    isDominoEnabled = [features isDominoEnabled];

    if (isDominoEnabled)
    {
      return;
    }
  }

  else
  {
  }

  posterBadgeView = [(iPadAudioCallViewController *)self posterBadgeView];

  if (posterBadgeView)
  {
    return;
  }

  getParticipantsView_WaitingOrNot = [(iPadAudioCallViewController *)self getParticipantsView_WaitingOrNot];
  singleCallLabelView = [getParticipantsView_WaitingOrNot singleCallLabelView];
  iconView = [singleCallLabelView iconView];

  if (iconView)
  {
    v9 = objc_alloc_init(UIImageView);
LABEL_10:
    badgeView = v9;
    goto LABEL_11;
  }

  badgeView = [singleCallLabelView badgeView];

  if (badgeView)
  {
    v9 = [[TPBadgeView alloc] initWithTitle:&stru_100361FD0 theme:1];
    goto LABEL_10;
  }

LABEL_11:
  [badgeView setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(iPadAudioCallViewController *)self view];
  [view addSubview:badgeView];

  [(iPadAudioCallViewController *)self positionPosterBadgeToBeHorizontallyCenteredToInfoButton:badgeView];
  [(iPadAudioCallViewController *)self setPosterBadgeView:badgeView];
  posterBadgeView2 = [(iPadAudioCallViewController *)self posterBadgeView];
  v13 = +[TPIncomingCallMetricsProvider posterBadgeMaxSize];
  [posterBadgeView2 setMaximumContentSizeCategory:v13];

  [(iPadAudioCallViewController *)self invertColorForPosterBadgeViewIfSnapshotPoster];
}

- (void)invertColorForPosterBadgeViewIfSnapshotPoster
{
  snapshottedPosterImageToUseForColorInversion = [(iPadAudioCallViewController *)self snapshottedPosterImageToUseForColorInversion];

  if (snapshottedPosterImageToUseForColorInversion)
  {
    snapshottedPosterImageToUseForColorInversion2 = [(iPadAudioCallViewController *)self snapshottedPosterImageToUseForColorInversion];
    [(iPadAudioCallViewController *)self invertColorForPosterBadgeViewBasedOn:snapshottedPosterImageToUseForColorInversion2];
  }
}

- (void)_updatePosterStatusLabelForState:(unsigned __int16)state
{
  stateCopy = state;
  posterNameViewModel = [(iPadAudioCallViewController *)self posterNameViewModel];

  if (posterNameViewModel)
  {
    getParticipantsView_WaitingOrNot = [(iPadAudioCallViewController *)self getParticipantsView_WaitingOrNot];
    posterNameViewModel2 = [(iPadAudioCallViewController *)self posterNameViewModel];
    [posterNameViewModel2 updateStatusFromParticipantsView:getParticipantsView_WaitingOrNot];

    if (stateCopy <= 0xB && ((1 << stateCopy) & 0x814) != 0)
    {
      [(iPadAudioCallViewController *)self _updatePosterNameAlpha];
      view = [(iPadAudioCallViewController *)self view];
      window = [view window];

      v10 = window != 0;
      if ([(iPadAudioCallViewController *)self shouldShowNewPosterUpdates])
      {
        v11 = dispatch_time(0, 850000000);
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_1000D8B14;
        v13[3] = &unk_100356BB8;
        v13[4] = self;
        v14 = v10;
        dispatch_after(v11, &_dispatch_main_q, v13);
      }

      else
      {
        posterNameViewModel3 = [(iPadAudioCallViewController *)self posterNameViewModel];
        [posterNameViewModel3 transitionCallToActiveStateAnimated:v10];
      }
    }

    [(iPadAudioCallViewController *)self _updateStatusLabelVisibility];
  }
}

- (void)_updatePosterNameAlpha
{
  detachedPosterNameViewModel = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];
  if (detachedPosterNameViewModel || ([(iPadAudioCallViewController *)self posterNameViewModel], (detachedPosterNameViewModel = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = detachedPosterNameViewModel;
    [detachedPosterNameViewModel updatePosterNameAlpha:!self->_participantsViewIsShowingMultipleLabel];
    detachedPosterNameViewModel2 = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];
    if (detachedPosterNameViewModel2)
    {
      v5 = detachedPosterNameViewModel2;
      posterNameViewModel = [(iPadAudioCallViewController *)self posterNameViewModel];

      if (posterNameViewModel)
      {
        posterNameViewModel2 = [(iPadAudioCallViewController *)self posterNameViewModel];
        [posterNameViewModel2 updatePosterNameAlpha:0.0];
      }
    }

    detachedPosterNameViewModel = v8;
  }
}

- (void)setRingingState:(unsigned __int16)state
{
  presentedViewController = [(iPadAudioCallViewController *)self presentedViewController];

  if (presentedViewController)
  {
    [(iPadAudioCallViewController *)self dismissViewControllerAnimated:1 completion:0];
  }

  [(iPadAudioCallViewController *)self updateShouldShowLargeAvatar];
  v5 = +[UIApplication sharedApplication];
  delegate = [v5 delegate];
  currentInCallScene = [delegate currentInCallScene];
  isBeingShownAboveCoverSheet = [currentInCallScene isBeingShownAboveCoverSheet];

  callCenter = [(iPadAudioCallViewController *)self callCenter];
  incomingCall = [callCenter incomingCall];

  v10 = [(iPadAudioCallViewController *)self setCallForBackgroundImage:incomingCall animated:1 callDisplayStyleChanged:0];
  v11 = 4;
  if (v10)
  {
    v11 = 5;
  }

  if (isBeingShownAboveCoverSheet)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  isMessagingAllowed = [incomingCall isMessagingAllowed];
  bottomBar = [(PHCallViewController *)self bottomBar];
  [bottomBar setDeclineAndMessageIsAvailable:isMessagingAllowed];

  isReminderAllowed = [incomingCall isReminderAllowed];
  bottomBar2 = [(PHCallViewController *)self bottomBar];
  [bottomBar2 setDeclineAndRemindIsAvailable:isReminderAllowed];

  bottomBar3 = [(PHCallViewController *)self bottomBar];
  [bottomBar3 setCurrentState:v12];

  [(iPadAudioCallViewController *)self setMiddleViewState:0 animated:0];
  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  if (!callDisplayStyle)
  {
    callParticipantsViewController = [(iPadAudioCallViewController *)self callParticipantsViewController];
    [callParticipantsViewController setBannerButtonsState:0];
  }

  bottomBar4 = [(PHCallViewController *)self bottomBar];
  [(iPadAudioCallViewController *)self _testing_didTransitionToIncomingRingingCallState:bottomBar4];
}

- (void)setWaitingState:(unsigned __int16)state
{
  stateCopy = state;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 134217984;
    v24 = stateCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setWaitingState: %lu", &v23, 0xCu);
  }

  callCenter = [(iPadAudioCallViewController *)self callCenter];
  incomingCall = [callCenter incomingCall];

  v8 = +[UIApplication sharedApplication];
  delegate = [v8 delegate];
  isPresentingAmbient = [delegate isPresentingAmbient];

  if ((isPresentingAmbient & 1) == 0)
  {
    provider = [incomingCall provider];
    if ([provider supportsDynamicSystemUI])
    {
      featureFlags = [(iPadAudioCallViewController *)self featureFlags];
      if ([featureFlags groupConversations])
      {
        HasChinaSKU = TUDeviceHasChinaSKU();

        if (HasChinaSKU)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

LABEL_10:
    inCallRootViewController = [(iPadAudioCallViewController *)self inCallRootViewController];
    [inCallRootViewController requestInCallSceneTransitionToFullScreen];
  }

LABEL_11:
  [(iPadAudioCallViewController *)self setShouldShowLargeAvatarForCallWaiting:[(iPadAudioCallViewController *)self shouldShowLargeAvatarForCall:incomingCall]];
  [(iPadAudioCallViewController *)self setCallForBackgroundImage:incomingCall animated:1 callDisplayStyleChanged:0];
  if ([(iPadAudioCallViewController *)self participantsViewControllersShouldIgnoreUpdates])
  {
    callCenter2 = [(iPadAudioCallViewController *)self callCenter];
    autoPunchOutBehaviorRequiredForCurrentCalls = [callCenter2 autoPunchOutBehaviorRequiredForCurrentCalls];

    if ((autoPunchOutBehaviorRequiredForCurrentCalls & 1) == 0)
    {
      [(iPadAudioCallViewController *)self setParticipantsViewControllersShouldIgnoreUpdates:0];
    }
  }

  [(iPadAudioCallViewController *)self setShowsCallWaitingParticipantView:1];
  isMessagingAllowed = [incomingCall isMessagingAllowed];
  bottomBar = [(PHCallViewController *)self bottomBar];
  [bottomBar setDeclineAndMessageIsAvailable:isMessagingAllowed];

  isReminderAllowed = [incomingCall isReminderAllowed];
  bottomBar2 = [(PHCallViewController *)self bottomBar];
  [bottomBar2 setDeclineAndRemindIsAvailable:isReminderAllowed];

  bottomBar3 = [(PHCallViewController *)self bottomBar];
  [bottomBar3 setUserInteractionEnabled:1];

  bottomBar4 = [(PHCallViewController *)self bottomBar];
  [bottomBar4 setCurrentState:-[iPadAudioCallViewController bottomBarStateForCallWaitingCall](self animated:"bottomBarStateForCallWaitingCall") animationCompletionBlock:{0, 0}];

  [(iPadAudioCallViewController *)self setMiddleViewState:0 animated:1];
  [(PHCallViewController *)self setWantsApplicationDismissalStyle:0];
}

- (void)setEndedState:(unsigned __int16)state
{
  v4 = +[UIApplication sharedApplication];
  delegate = [v4 delegate];
  mostRecentlyDisconnectedAudioCall = [delegate mostRecentlyDisconnectedAudioCall];

  currentMiddleView = [(iPadAudioCallViewController *)self currentMiddleView];
  LOBYTE(delegate) = objc_opt_respondsToSelector();

  if (delegate)
  {
    currentMiddleView2 = [(iPadAudioCallViewController *)self currentMiddleView];
    [currentMiddleView2 setButtonsEnabled:0];
  }

  [(SOSEmergencyCallVoiceLoopManager *)self->_voiceLoopManager invalidate];
  v9 = sub_100004F84();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    uniqueProxyIdentifierUUID = [mostRecentlyDisconnectedAudioCall uniqueProxyIdentifierUUID];
    disconnectedReason = [mostRecentlyDisconnectedAudioCall disconnectedReason];
    contactIdentifiers = [mostRecentlyDisconnectedAudioCall contactIdentifiers];
    v30 = [contactIdentifiers count];
    isOutgoing = [mostRecentlyDisconnectedAudioCall isOutgoing];
    dateConnected = [mostRecentlyDisconnectedAudioCall dateConnected];
    v13 = [dateConnected description];
    provider = [mostRecentlyDisconnectedAudioCall provider];
    isFaceTimeProvider = [provider isFaceTimeProvider];
    v16 = +[FTDeviceSupport sharedInstance];
    *buf = 138413826;
    v34 = uniqueProxyIdentifierUUID;
    v35 = 2048;
    v36 = disconnectedReason;
    v37 = 2048;
    v38 = v30;
    v39 = 1024;
    v40 = isOutgoing;
    v41 = 2112;
    v42 = v13;
    v43 = 1024;
    v44 = isFaceTimeProvider;
    v45 = 1024;
    isGreenTea = [v16 isGreenTea];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "disconnectedCall: %@ disconnectedReason: %ld (disconnectedCall.contactIdentifiers.count: %lu && \n\n !(disconnectedCall.isOutgoing: %d && disconnectedCall.dateConnected: %@) && \n\n disconnectedCall.provider.isFaceTimeProvider: %d \n\n [[FTDeviceSupport sharedInstance] isGreenTea]) : %d", buf, 0x3Cu);
  }

  if (![mostRecentlyDisconnectedAudioCall disconnectedReasonRequiresCallBackUI])
  {
    uUIDForLocallyDisconnectedCall = [(iPadAudioCallViewController *)self UUIDForLocallyDisconnectedCall];
    callUUID = [mostRecentlyDisconnectedAudioCall callUUID];
    if ([uUIDForLocallyDisconnectedCall isEqualToString:callUUID])
    {
    }

    else
    {
      v25 = +[UIApplication sharedApplication];
      delegate2 = [v25 delegate];
      hasExistingFullScreenInCallScene = [delegate2 hasExistingFullScreenInCallScene];

      if (hasExistingFullScreenInCallScene)
      {
        [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHAudioCallViewControllerDismissalAssertionWaitingForIdle"];
      }
    }

    bottomBar = [(PHCallViewController *)self bottomBar];
    [bottomBar setUserInteractionEnabled:0];

    [(PHCallViewController *)self transitionToIdleAfterDelay];
    inCallRootViewController = [(iPadAudioCallViewController *)self inCallRootViewController];
    [inCallRootViewController showFailureOrFallbackAlertIfNecessaryForCall:mostRecentlyDisconnectedAudioCall];
    goto LABEL_22;
  }

  v17 = sub_100004F84();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "disconnectedCall requires callback UI", buf, 2u);
  }

  inCallRootViewController2 = [(iPadAudioCallViewController *)self inCallRootViewController];
  [inCallRootViewController2 requestInCallSceneTransitionToFullScreen];

  [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHAudioCallViewControllerDismissalAssertionHandlingCallFailure"];
  [(iPadAudioCallViewController *)self setMiddleViewState:0];
  [(iPadAudioCallViewController *)self setCallForBackgroundImage:mostRecentlyDisconnectedAudioCall animated:1 callDisplayStyleChanged:0];
  if ([mostRecentlyDisconnectedAudioCall service] == 2 && (objc_msgSend(mostRecentlyDisconnectedAudioCall, "isMessagingAllowed") & 1) != 0)
  {
    v19 = 17;
  }

  else if ([mostRecentlyDisconnectedAudioCall isCallbackAllowed])
  {
    v19 = 13;
  }

  else
  {
    v19 = 18;
  }

  bottomBar2 = [(PHCallViewController *)self bottomBar];
  [bottomBar2 setCurrentState:v19 animated:1 animationCompletionBlock:0];

  bottomBar3 = [(PHCallViewController *)self bottomBar];
  [bottomBar3 setUserInteractionEnabled:1];

  if ([(iPadAudioCallViewController *)self shouldShowEnableWiFiCallingAlertForCall:mostRecentlyDisconnectedAudioCall])
  {
    inCallRootViewController = +[UIAlertController enableWiFiCallingAlertController];
    if (inCallRootViewController)
    {
      [(iPadAudioCallViewController *)self presentViewController:inCallRootViewController animated:1 completion:0];
      PHIncrementWifiCallingAlertShowCount();
    }

LABEL_22:
  }

  if ([mostRecentlyDisconnectedAudioCall disconnectedReason] == 34)
  {
    [(iPadAudioCallViewController *)self setMiddleViewState:0];
    v29 = sub_100004F84();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController is about to set shouldPresentAlertButton to NO", buf, 2u);
    }

    self->_shouldPresentAlertButton = 0;
  }
}

- (void)setEndingState:(unsigned __int16)state
{
  bottomBar = [(PHCallViewController *)self bottomBar];
  [bottomBar setUserInteractionEnabled:0];

  currentMiddleView = [(iPadAudioCallViewController *)self currentMiddleView];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    currentMiddleView2 = [(iPadAudioCallViewController *)self currentMiddleView];
    [currentMiddleView2 setButtonsEnabled:0];
  }

  [(SOSEmergencyCallVoiceLoopManager *)self->_voiceLoopManager invalidate];
  isolatedCall = [(iPadAudioCallViewController *)self isolatedCall];
  v9 = isolatedCall;
  if (isolatedCall)
  {
    v10 = isolatedCall;
    isolatedCall = [(iPadAudioCallViewController *)self setCallForBackgroundImage:isolatedCall animated:0 callDisplayStyleChanged:0];
    v9 = v10;
  }

  _objc_release_x1(isolatedCall, v9);
}

- (void)setOutgoingRingingState:(unsigned __int16)state
{
  callCenter = [(iPadAudioCallViewController *)self callCenter];
  currentCallGroups = [callCenter currentCallGroups];

  lastObject = [currentCallGroups lastObject];
  if ([lastObject originatingUIType] == 10)
  {
    callCenter2 = [(iPadAudioCallViewController *)self callCenter];
    routeController = [callCenter2 routeController];
    pickedRoute = [routeController pickedRoute];
    isSpeaker = [pickedRoute isSpeaker];

    if ((isSpeaker & 1) == 0)
    {
      callCenter3 = [(iPadAudioCallViewController *)self callCenter];
      routeController2 = [callCenter3 routeController];
      routeForSpeakerEnable = [routeController2 routeForSpeakerEnable];

      if (!routeForSpeakerEnable)
      {
        callCenter6 = sub_100004F84();
        if (os_log_type_enabled(callCenter6, OS_LOG_TYPE_ERROR))
        {
          sub_100256590();
        }

        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  if ([lastObject originatingUIType] == 12)
  {
    callCenter4 = [(iPadAudioCallViewController *)self callCenter];
    routeController3 = [callCenter4 routeController];
    pickedRoute2 = [routeController3 pickedRoute];
    isReceiver = [pickedRoute2 isReceiver];

    if ((isReceiver & 1) == 0)
    {
      callCenter5 = [(iPadAudioCallViewController *)self callCenter];
      routeController4 = [callCenter5 routeController];
      routeForSpeakerEnable = [routeController4 routeForSpeakerDisable];

      if (!routeForSpeakerEnable)
      {
        callCenter6 = sub_100004F84();
        if (os_log_type_enabled(callCenter6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, callCenter6, OS_LOG_TYPE_DEFAULT, "[WARN] iPadAudioCallViewController: Could not find available route to pick for speaker disable", buf, 2u);
        }

        goto LABEL_12;
      }

LABEL_9:
      callCenter6 = [(iPadAudioCallViewController *)self callCenter];
      routeController5 = [callCenter6 routeController];
      [routeController5 pickRoute:routeForSpeakerEnable];

LABEL_12:
    }
  }

  isolatedCall = [(iPadAudioCallViewController *)self isolatedCall];
  [(iPadAudioCallViewController *)self setCallForBackgroundImage:isolatedCall animated:1 callDisplayStyleChanged:0];

  v39 = _NSConcreteStackBlock;
  v40 = 3221225472;
  v41 = sub_1000D9A94;
  v42 = &unk_100356D10;
  v23 = lastObject;
  v43 = v23;
  selfCopy = self;
  v24 = objc_retainBlock(&v39);
  -[iPadAudioCallViewController setMiddleViewState:animated:completion:](self, "setMiddleViewState:animated:completion:", 1, [v23 isVoicemail] ^ 1, v24);
  currentMiddleView = [(iPadAudioCallViewController *)self currentMiddleView];
  v26 = objc_opt_respondsToSelector();

  if (v26)
  {
    currentMiddleView2 = [(iPadAudioCallViewController *)self currentMiddleView];
    [currentMiddleView2 setButtonsEnabled:1];
  }

  if ([v23 isVoicemail])
  {
    [(iPadAudioCallViewController *)self setMiddleViewState:2];
  }

  [(PHCallViewController *)self setWantsApplicationDismissalStyle:1];
  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] != 3)
  {
    goto LABEL_24;
  }

  features = [(iPadAudioCallViewController *)self features];
  if (![features isDominoEnabled])
  {
    goto LABEL_23;
  }

  v30 = +[UIApplication sharedApplication];
  delegate = [v30 delegate];
  currentInCallScene = [delegate currentInCallScene];
  presentationMode = [currentInCallScene presentationMode];

  if (!presentationMode)
  {
    callCenter7 = [(iPadAudioCallViewController *)self callCenter];
    callDisplayStyleManager = [callCenter7 routeController];

    routeForSpeakerEnable2 = [callDisplayStyleManager routeForSpeakerEnable];
    if (!routeForSpeakerEnable2)
    {
      goto LABEL_24;
    }

    v36 = routeForSpeakerEnable2;
    pickedRoute3 = [callDisplayStyleManager pickedRoute];
    isReceiver2 = [pickedRoute3 isReceiver];

    if (!isReceiver2)
    {
      goto LABEL_24;
    }

    features = [callDisplayStyleManager routeForSpeakerEnable];
    [callDisplayStyleManager pickRoute:features];
LABEL_23:

LABEL_24:
  }

  [(iPadAudioCallViewController *)self updateLayeredBackgroundWallpaper];
}

- (void)setCallBufferState:(unsigned __int16)state
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController,setCurrentState,PHInCallStateCallBuffer", buf, 2u);
  }

  if ([(iPadAudioCallViewController *)self middleViewState]== 1)
  {
    currentMiddleView = [(iPadAudioCallViewController *)self currentMiddleView];
    [currentMiddleView setButtonsEnabled:0];

    currentMiddleView2 = [(iPadAudioCallViewController *)self currentMiddleView];
    v7 = [currentMiddleView2 buttonForControlType:15];
    [v7 setEnabled:1];
  }

  else
  {
    objc_initWeak(buf, self);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000D9CA0;
    v9[3] = &unk_100356E98;
    objc_copyWeak(&v10, buf);
    [(iPadAudioCallViewController *)self setMiddleViewState:1 animated:1 completion:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  bottomBar = [(PHCallViewController *)self bottomBar];
  [bottomBar setUserInteractionEnabled:1];

  [(iPadAudioCallViewController *)self setCallForBackgroundImage:0 animated:1 callDisplayStyleChanged:0];
  [(iPadAudioCallViewController *)self displayDialledNumberDetailsForCallBufferScreen];
  [(PHCallViewController *)self setWantsApplicationDismissalStyle:0];
  [(iPadAudioCallViewController *)self startCallBufferScreenCountdown];
}

- (void)setScreeningState:(unsigned __int16)state animated:(BOOL)animated overrideWithIsUnlocked:(BOOL)unlocked
{
  stateCopy = state;
  unlockedCopy = unlocked;
  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = stateCopy;
    *&buf[8] = 1024;
    *&buf[10] = unlockedCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Audio: setCurrentState: (existing state is %d) with unlockedOverride: %d", buf, 0xEu);
  }

  bottomBar = [(PHCallViewController *)self bottomBar];
  [bottomBar setUserInteractionEnabled:1];

  presentedViewController = [(iPadAudioCallViewController *)self presentedViewController];
  if (presentedViewController)
  {
    isPresentingCustomMessageController = [(PHCallViewController *)self isPresentingCustomMessageController];

    if ((isPresentingCustomMessageController & 1) == 0)
    {
      [(iPadAudioCallViewController *)self dismissViewControllerAnimated:1 completion:0];
    }
  }

  traitCollection = [(iPadAudioCallViewController *)self traitCollection];
  if ([traitCollection _backlightLuminance] == 1)
  {
    v12 = 1;
  }

  else
  {
    traitCollection2 = [(iPadAudioCallViewController *)self traitCollection];
    v12 = [traitCollection2 _backlightLuminance] == 0;
  }

  v14 = +[UIApplication sharedApplication];
  delegate = [v14 delegate];
  currentInCallScene = [delegate currentInCallScene];
  isBeingShownAboveCoverSheet = [currentInCallScene isBeingShownAboveCoverSheet];

  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  v64 = isBeingShownAboveCoverSheet & !unlockedCopy | v12;
  if ([callDisplayStyleManager callDisplayStyle] == 3)
  {
    features = [(iPadAudioCallViewController *)self features];
    isDominoEnabled = [features isDominoEnabled];
    v21 = 23;
    if (v64)
    {
      v22 = 24;
    }

    else
    {
      v22 = 23;
    }

    if (!isDominoEnabled)
    {
      v21 = v22;
    }

    v63 = v21;
  }

  else
  {
    v23 = 23;
    if ((isBeingShownAboveCoverSheet & !unlockedCopy | v12))
    {
      v23 = 24;
    }

    v63 = v23;
  }

  callCenter = [(iPadAudioCallViewController *)self callCenter];
  screeningCall = [callCenter screeningCall];

  v25 = sub_100004F84();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    if (v64)
    {
      v26 = @"YES";
    }

    else
    {
      v26 = @"NO";
    }

    if (v12)
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    if (isBeingShownAboveCoverSheet)
    {
      v28 = @"YES";
    }

    else
    {
      v28 = @"NO";
    }

    callDisplayStyleManager2 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
    callDisplayStyle = [callDisplayStyleManager2 callDisplayStyle];
    v31 = @"NO";
    if (callDisplayStyle == 3)
    {
      features2 = [(iPadAudioCallViewController *)self features];
      if ([features2 isDominoEnabled])
      {
        v31 = @"YES";
      }
    }

    *buf = 138413058;
    *&buf[4] = v26;
    *&buf[12] = 2112;
    *&buf[14] = v27;
    *&buf[22] = 2112;
    v76 = v28;
    LOWORD(v77[0]) = 2112;
    *(v77 + 2) = v31;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Audio: setCurrentState: showLockedState: %@, displayIsOff: %@, beingShownAboveCoverSheet: %@, isAmbient: %@", buf, 0x2Au);
    if (callDisplayStyle == 3)
    {
    }
  }

  featureFlags = [(iPadAudioCallViewController *)self featureFlags];
  if (TUCallScreeningEnabledM3())
  {
    contactIdentifiers = [screeningCall contactIdentifiers];
    v34 = [contactIdentifiers count] != 0;

    if (((v34 | v64) & 1) == 0)
    {
      [(iPadAudioCallViewController *)self setCallForBackgroundImage:screeningCall animated:1 callDisplayStyleChanged:0];
      v35 = 25;
      goto LABEL_41;
    }
  }

  else
  {
  }

  [(iPadAudioCallViewController *)self setCallForBackgroundImage:screeningCall animated:1 callDisplayStyleChanged:0];
  if (v63 != 23)
  {
    v35 = 24;
    goto LABEL_48;
  }

  v35 = 23;
LABEL_41:
  if (!unlockedCopy)
  {
    callDisplayStyleManager3 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
    if ([callDisplayStyleManager3 callDisplayStyle] == 3)
    {
      features3 = [(iPadAudioCallViewController *)self features];
      isDominoEnabled2 = [features3 isDominoEnabled];

      if (isDominoEnabled2)
      {
        v35 = 26;
      }
    }

    else
    {
    }
  }

LABEL_48:
  isMessagingAllowed = [screeningCall isMessagingAllowed];
  bottomBar2 = [(PHCallViewController *)self bottomBar];
  [bottomBar2 setDeclineAndMessageIsAvailable:isMessagingAllowed];

  isReminderAllowed = [screeningCall isReminderAllowed];
  bottomBar3 = [(PHCallViewController *)self bottomBar];
  [bottomBar3 setDeclineAndRemindIsAvailable:isReminderAllowed];

  bottomBar4 = [(PHCallViewController *)self bottomBar];
  callDisplayStyleManager4 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager4 callDisplayStyle] == 3)
  {
    features4 = [(iPadAudioCallViewController *)self features];
    [bottomBar4 setCurrentState:v35 animated:objc_msgSend(features4 animationCompletionBlock:{"isDominoEnabled"), 0}];
  }

  else
  {
    [bottomBar4 setCurrentState:v35 animated:0 animationCompletionBlock:0];
  }

  bottomBar5 = [(PHCallViewController *)self bottomBar];
  v47 = [bottomBar5 controlForActionType:30];

  [(PHCallViewController *)self configureDeclineWithReminderButton:0 declineWithMessageButton:v47 forIncomingCall:screeningCall];
  featureFlags2 = [(iPadAudioCallViewController *)self featureFlags];
  receptionistEnabled = [featureFlags2 receptionistEnabled];
  if (screeningCall)
  {
    v50 = receptionistEnabled;
  }

  else
  {
    v50 = 0;
  }

  if (v50)
  {
    bottomBar6 = [(PHCallViewController *)self bottomBar];
    v52 = [bottomBar6 controlForActionType:27];

    [(PHCallViewController *)self configureDeclineWithMoreButton:v52 forIncomingCall:screeningCall];
  }

  [(iPadAudioCallViewController *)self setMiddleViewState:4 animated:1];
  callDisplayStyleManager5 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  v54 = [callDisplayStyleManager5 callDisplayStyle] == 0;

  if (v54)
  {
    callParticipantsViewController = [(iPadAudioCallViewController *)self callParticipantsViewController];
    [callParticipantsViewController setBannerButtonsState:0];
  }

  bottomBar7 = [(PHCallViewController *)self bottomBar];
  [(iPadAudioCallViewController *)self _testing_didTransitionToIncomingRingingCallState:bottomBar7];

  stateChangeLockObservation = [(iPadAudioCallViewController *)self stateChangeLockObservation];
  if (!stateChangeLockObservation || ([(iPadAudioCallViewController *)self stateDisplayChangedObservation], v58 = objc_claimAutoreleasedReturnValue(), v59 = v58 == 0, v58, stateChangeLockObservation, v59))
  {
    v73[0] = 0;
    v73[1] = v73;
    v73[2] = 0x2020000000;
    v74 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3042000000;
    v76 = sub_1000DA5B0;
    v77[0] = sub_1000DA5BC;
    objc_initWeak(&v77[1], self);
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_1000DA5C4;
    v71[3] = &unk_100359180;
    v71[4] = buf;
    v71[5] = v73;
    v72 = stateCopy;
    v60 = [(iPadAudioCallViewController *)self makeLockObserverWithHandler:v71];
    [(iPadAudioCallViewController *)self setStateChangeLockObservation:v60];

    v70[0] = 0;
    v70[1] = v70;
    v70[2] = 0x2020000000;
    traitCollection3 = [(iPadAudioCallViewController *)self traitCollection];
    _backlightLuminance = [traitCollection3 _backlightLuminance];

    v70[3] = _backlightLuminance;
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_1000DA6E4;
    v68[3] = &unk_1003591A8;
    v68[4] = buf;
    v68[5] = v70;
    v68[6] = v73;
    v69 = stateCopy;
    [(iPadAudioCallViewController *)self setStateDisplayChangedObservation:v68];
    _Block_object_dispose(v70, 8);
    _Block_object_dispose(buf, 8);
    objc_destroyWeak(&v77[1]);
    _Block_object_dispose(v73, 8);
  }
}

- (void)setWaitOnHoldState:(unsigned __int16)state animated:(BOOL)animated
{
  [(iPadAudioCallViewController *)self dismissWaitOnHoldTip:state];
  presentedViewController = [(iPadAudioCallViewController *)self presentedViewController];
  if (presentedViewController)
  {
    v6 = presentedViewController;
    isPresentingCustomMessageController = [(PHCallViewController *)self isPresentingCustomMessageController];

    if ((isPresentingCustomMessageController & 1) == 0)
    {
      [(iPadAudioCallViewController *)self dismissViewControllerAnimated:1 completion:0];
    }
  }

  bottomBar = [(PHCallViewController *)self bottomBar];
  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] == 3)
  {
    features = [(iPadAudioCallViewController *)self features];
    [bottomBar setCurrentState:28 animated:objc_msgSend(features animationCompletionBlock:{"isDominoEnabled"), 0}];
  }

  else
  {
    [bottomBar setCurrentState:28 animated:0 animationCompletionBlock:0];
  }

  [(iPadAudioCallViewController *)self setMiddleViewState:5 animated:1];
}

- (UIViewController)waitOnHoldViewController
{
  waitOnHoldViewController = self->_waitOnHoldViewController;
  if (waitOnHoldViewController)
  {
    goto LABEL_4;
  }

  v4 = +[UIApplication sharedApplication];
  delegate = [v4 delegate];
  waitOnHoldService = [delegate waitOnHoldService];

  if (waitOnHoldService)
  {
    makeViewComposer = [(CNKWaitOnHoldViewComposerFactory *)self->_waitOnHoldViewControllerFactory makeViewComposer];
    activeCall = [(iPadAudioCallViewController *)self activeCall];
    v9 = +[UIApplication sharedApplication];
    delegate2 = [v9 delegate];
    waitOnHoldService2 = [delegate2 waitOnHoldService];
    v12 = [makeViewComposer composeWithCall:activeCall waitOnHoldService:waitOnHoldService2];
    v13 = self->_waitOnHoldViewController;
    self->_waitOnHoldViewController = v12;

    [(iPadAudioCallViewController *)self addChildViewController:self->_waitOnHoldViewController];
    waitOnHoldViewController = self->_waitOnHoldViewController;
LABEL_4:
    v14 = waitOnHoldViewController;
    goto LABEL_5;
  }

  v14 = 0;
LABEL_5:

  return v14;
}

- (void)updateWaitOnHoldViewIfNeeded
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "updateWaitOnHoldViewIfNeeded", v11, 2u);
  }

  [(iPadAudioCallViewController *)self updateCurrentState];
  activeCall = [(iPadAudioCallViewController *)self activeCall];
  isWaitOnHoldActive = [activeCall isWaitOnHoldActive];

  if ((isWaitOnHoldActive & 1) == 0)
  {
    view = [(UIViewController *)self->_waitOnHoldViewController view];
    superview = [view superview];

    if (superview)
    {
      view2 = [(UIViewController *)self->_waitOnHoldViewController view];
      [view2 removeFromSuperview];

      layoutGuidesProvider = [(iPadAudioCallViewController *)self layoutGuidesProvider];
      [layoutGuidesProvider updateMiddleShelfStateWithIsOpen:0];
    }

    waitOnHoldViewController = self->_waitOnHoldViewController;
    self->_waitOnHoldViewController = 0;
  }
}

- (BOOL)isCallSmartHoldingSessionActive:(id)active
{
  activeCopy = active;
  smartHoldingSession = [activeCopy smartHoldingSession];

  if (smartHoldingSession)
  {
    smartHoldingSession2 = [activeCopy smartHoldingSession];
    if ([smartHoldingSession2 state])
    {
      smartHoldingSession3 = [activeCopy smartHoldingSession];
      v7 = [smartHoldingSession3 state] == 3;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setCurrentState:(unsigned __int16)state animated:(BOOL)animated
{
  animatedCopy = animated;
  stateCopy = state;
  currentState = [(PHCallViewController *)self currentState];
  v8 = sub_100004F84();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = stateCopy;
    *&buf[8] = 1024;
    *&buf[10] = currentState;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Audio: setCurrentState: %d (existing state is %d)", buf, 0xEu);
  }

  if (currentState != stateCopy)
  {
    v9 = sub_100004F84();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      currentState2 = [(PHCallViewController *)self currentState];
      *buf = 67109376;
      *&buf[4] = currentState2;
      *&buf[8] = 1024;
      *&buf[10] = stateCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Audio: Setting current state: %d -> %d", buf, 0xEu);
    }

    v31.receiver = self;
    v31.super_class = iPadAudioCallViewController;
    [(PHCallViewController *)&v31 setCurrentState:stateCopy];
    [(iPadAudioCallViewController *)self setStateChangeLockObservation:0];
    [(iPadAudioCallViewController *)self setStateDisplayChangedObservation:0];
    if (stateCopy <= 4)
    {
      if (stateCopy > 1)
      {
        if (stateCopy == 2)
        {
          [(iPadAudioCallViewController *)self setOutgoingRingingState:2];
          goto LABEL_30;
        }

        if (stateCopy == 3)
        {
          [(iPadAudioCallViewController *)self setWaitingState:3];
          goto LABEL_38;
        }

        [(iPadAudioCallViewController *)self updateLayeredBackgroundWallpaper];
        [(iPadAudioCallViewController *)self transitionToNewPosterIfNeeded];
        goto LABEL_16;
      }

      if (stateCopy)
      {
        if (stateCopy == 1)
        {
          [(iPadAudioCallViewController *)self setRingingState:1];
        }
      }

      else
      {
        [(iPadAudioCallViewController *)self setIdleState:0];
      }
    }

    else
    {
      if (stateCopy <= 9)
      {
        if (stateCopy != 5)
        {
          if (stateCopy == 6)
          {
            [(iPadAudioCallViewController *)self setEndingState:6];
            [(iPadAudioCallViewController *)self _testing_didTransitionToEndingCallState];
          }

          else if (stateCopy == 7)
          {
            [(iPadAudioCallViewController *)self setEndedState:7];
          }

          goto LABEL_30;
        }

LABEL_16:
        [(iPadAudioCallViewController *)self setActiveState:stateCopy];
        goto LABEL_30;
      }

      switch(stateCopy)
      {
        case 0xA:
          [(iPadAudioCallViewController *)self setCallBufferState:10];
          break;
        case 0xB:
          [(iPadAudioCallViewController *)self setScreeningState:11 animated:animatedCopy];
          break;
        case 0xC:
          [(iPadAudioCallViewController *)self setWaitOnHoldState:12 animated:animatedCopy];
          break;
      }
    }

LABEL_30:
    if (currentState == 3)
    {
      [(iPadAudioCallViewController *)self setShowsCallWaitingParticipantView:0];
    }

    if (stateCopy <= 7 && ((1 << stateCopy) & 0xC1) != 0)
    {
      [(iPadAudioCallViewController *)self stopSuppressionOfSTKAlerts];
      if (stateCopy == 7)
      {
        getParticipantsView_NotWaiting = [(iPadAudioCallViewController *)self getParticipantsView_NotWaiting];
        singleCallLabelView = [getParticipantsView_NotWaiting singleCallLabelView];
        v13 = singleCallLabelView;
        if (singleCallLabelView)
        {
          statusLabel = [singleCallLabelView statusLabel];
          v15 = *&CGAffineTransformIdentity.c;
          *buf = *&CGAffineTransformIdentity.a;
          v33 = v15;
          v34 = *&CGAffineTransformIdentity.tx;
          [statusLabel setTransform:buf];
        }
      }

      goto LABEL_41;
    }

LABEL_38:
    bottomBar = [(PHCallViewController *)self bottomBar];
    [bottomBar setUserInteractionEnabled:1];

    if (stateCopy == 1)
    {
      [(iPadAudioCallViewController *)self startSuppressionOfSTKAlerts];
    }

    else
    {
      [(iPadAudioCallViewController *)self stopSuppressionOfSTKAlerts];
    }

LABEL_41:
    if ([(iPadAudioCallViewController *)self shouldShowNewPosterUpdates])
    {
      v17 = dispatch_time(0, 950000000);
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1000DB134;
      v29[3] = &unk_100356960;
      v29[4] = self;
      v30 = stateCopy;
      dispatch_after(v17, &_dispatch_main_q, v29);
    }

    else
    {
      [(iPadAudioCallViewController *)self _updatePosterStatusLabelForState:stateCopy];
      if ([(iPadAudioCallViewController *)self hasNoCallsOrOnlyEndedCalls])
      {
        renderingViewController = [(iPadAudioCallViewController *)self renderingViewController];
        if (renderingViewController)
        {
          v19 = renderingViewController;
          posterNameViewModel = [(iPadAudioCallViewController *)self posterNameViewModel];
          priorityPosterNameTextView = [posterNameViewModel priorityPosterNameTextView];

          if (priorityPosterNameTextView)
          {
            renderingViewController2 = [(iPadAudioCallViewController *)self renderingViewController];
            view = [renderingViewController2 view];
            [view setAlpha:0.0];
          }
        }
      }
    }

    [(iPadAudioCallViewController *)self updateAmbientAudioRoutesVisibility];
    [(iPadAudioCallViewController *)self updateShareNameAndPhotoHUDPresentationIfNeeded];
    v24 = +[NSNotificationCenter defaultCenter];
    [v24 postNotificationName:@"PHCallViewControllerStateChangedNotification" object:0];

    bottomBar2 = [(PHCallViewController *)self bottomBar];
    [bottomBar2 setNeedsLayout];

    bottomBar3 = [(PHCallViewController *)self bottomBar];
    [bottomBar3 layoutIfNeeded];
  }

  backgroundController = [(iPadAudioCallViewController *)self backgroundController];
  backgroundContainer = [backgroundController backgroundContainer];
  [(iPadAudioCallViewController *)self updateBackgroundTintToView:backgroundContainer];
}

- (void)updateIncomingBottomBarControlState
{
  if ([(PHCallViewController *)self currentState]== 11)
  {
    currentState = [(PHCallViewController *)self currentState];

    [(iPadAudioCallViewController *)self setScreeningState:currentState animated:1];
  }

  else
  {
    bottomBar = [(PHCallViewController *)self bottomBar];
    currentState2 = [bottomBar currentState];

    if (!currentState2)
    {
      v6 = +[UIApplication sharedApplication];
      delegate = [v6 delegate];
      currentInCallScene = [delegate currentInCallScene];
      if ([currentInCallScene isBeingShownAboveCoverSheet])
      {
        v9 = 4;
      }

      else
      {
        v9 = 0;
      }

      bottomBar2 = [(PHCallViewController *)self bottomBar];
      [bottomBar2 setCurrentState:v9];
    }
  }
}

- (void)updateBottomBarButtonsWithCall:(id)call
{
  isMessagingAllowed = [call isMessagingAllowed];
  bottomBar = [(PHCallViewController *)self bottomBar];
  [bottomBar setDeclineAndMessageIsAvailable:isMessagingAllowed];
}

- (void)updateHardPauseDigitsState
{
  frontmostCall = [(iPadAudioCallViewController *)self frontmostCall];
  v4 = [frontmostCall hardPauseDigitsState] == 2;

  bottomBar = [(PHCallViewController *)self bottomBar];
  [bottomBar setAction:23 enabled:v4];
}

- (void)transitionToFullScreenIfNecessary
{
  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if (![callDisplayStyleManager callDisplayStyle])
  {
    view = [(iPadAudioCallViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return;
    }

    callDisplayStyleManager = [(iPadAudioCallViewController *)self inCallRootViewController];
    [callDisplayStyleManager requestInCallSceneTransitionToFullScreen];
  }
}

- (id)isolatedCall
{
  callCenter = [(iPadAudioCallViewController *)self callCenter];
  currentCalls = [callCenter currentCalls];

  if ([currentCalls count] == 1)
  {
    firstObject = [currentCalls firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)associatedCallGroupForCall:(id)call
{
  callCopy = call;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  callCenter = [(iPadAudioCallViewController *)self callCenter];
  currentCallGroups = [callCenter currentCallGroups];

  v7 = [currentCallGroups countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(currentCallGroups);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        calls = [v10 calls];
        v12 = [calls containsObject:callCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [currentCallGroups countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (BOOL)prioritizedCallIsInSameCallGroupAsCall:(id)call
{
  callCopy = call;
  prioritizedCall = [(iPadAudioCallViewController *)self prioritizedCall];

  if (prioritizedCall)
  {
    v6 = [(iPadAudioCallViewController *)self associatedCallGroupForCall:callCopy];
    v7 = v6;
    if (v6)
    {
      calls = [v6 calls];
      prioritizedCall2 = [(iPadAudioCallViewController *)self prioritizedCall];
      v10 = [calls containsObject:prioritizedCall2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setInCallRootViewController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_inCallRootViewController);

  v6 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_inCallRootViewController, obj);
    isViewLoaded = [(iPadAudioCallViewController *)self isViewLoaded];
    v6 = obj;
    if (isViewLoaded)
    {
      isViewLoaded = [(iPadAudioCallViewController *)self handleConfigurationAfterViewLoaded];
      v6 = obj;
    }
  }

  _objc_release_x1(isViewLoaded, v6);
}

- (id)getParticipantsView_WaitingOrNot
{
  getParticipantsView_Waiting = [(iPadAudioCallViewController *)self getParticipantsView_Waiting];
  v4 = getParticipantsView_Waiting;
  if (getParticipantsView_Waiting)
  {
    getParticipantsView_NotWaiting = getParticipantsView_Waiting;
  }

  else
  {
    getParticipantsView_NotWaiting = [(iPadAudioCallViewController *)self getParticipantsView_NotWaiting];
  }

  v6 = getParticipantsView_NotWaiting;

  return v6;
}

- (id)getParticipantsView_Waiting
{
  callWaitingParticipantsViewController = [(iPadAudioCallViewController *)self callWaitingParticipantsViewController];
  view = [callWaitingParticipantsViewController view];

  return view;
}

- (id)getParticipantsView_NotWaiting
{
  callParticipantsViewController = [(iPadAudioCallViewController *)self callParticipantsViewController];
  view = [callParticipantsViewController view];

  return view;
}

- (BOOL)callHasNoContactPoster
{
  if ([(iPadAudioCallViewController *)self canShowPosterImage])
  {
    return ![(iPadAudioCallViewController *)self isShowingPoster];
  }

  else
  {
    return 1;
  }
}

- (BOOL)callHasContactPosterWithHorizontalName
{
  if ([(iPadAudioCallViewController *)self callHasNoContactPoster])
  {
    return 0;
  }

  else
  {
    return ![(iPadAudioCallViewController *)self callHasContactPosterWithVerticalName];
  }
}

- (BOOL)callHasContactPosterWithVerticalName
{
  posterNameViewModel = [(iPadAudioCallViewController *)self posterNameViewModel];

  if (!posterNameViewModel)
  {
    return 0;
  }

  posterNameViewModel2 = [(iPadAudioCallViewController *)self posterNameViewModel];
  posterNameTextView = [posterNameViewModel2 posterNameTextView];
  v6 = [posterNameTextView layout] == 1;

  return v6;
}

- (BOOL)canShowPosterBadgeInAudioCallView:(id)view
{
  viewCopy = view;
  if ([(iPadAudioCallViewController *)self participantsViewIsShowingMultipleLabel])
  {
    v5 = 0;
  }

  else
  {
    badgeView = [viewCopy badgeView];
    if (badgeView)
    {
      v5 = 1;
    }

    else
    {
      iconView = [viewCopy iconView];
      v5 = iconView != 0;
    }
  }

  return v5;
}

- (BOOL)usesCompactMulticallUI
{
  features = [(iPadAudioCallViewController *)self features];
  if ([features callManagerEnabled])
  {
    callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
    if ([callDisplayStyleManager callDisplayStyle] == 3)
    {
      features2 = [(iPadAudioCallViewController *)self features];
      v6 = [features2 isDominoEnabled] ^ 1;
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)setPosterViewController:(id)controller
{
  objc_storeStrong(&self->_posterViewController, controller);

  [(iPadAudioCallViewController *)self _updateStatusLabelVisibility];
}

- (id)newPosterConfigurationForCall:(id)call
{
  callCopy = call;
  features = [(iPadAudioCallViewController *)self features];
  isNameAndPhotoC3Enabled = [features isNameAndPhotoC3Enabled];

  if (isNameAndPhotoC3Enabled)
  {
    v7 = [(iPadAudioCallViewController *)self sharedProfileStateOracleForCall:callCopy];
    pendingNickname = [v7 pendingNickname];

    if (pendingNickname && ([pendingNickname wallpaper], (v9 = objc_claimAutoreleasedReturnValue()) != 0) && (v10 = v9, objc_msgSend(pendingNickname, "wallpaper"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "wallpaperData"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v10, v12))
    {
      wallpaper = [pendingNickname wallpaper];
      wallpaperData = [wallpaper wallpaperData];

      v15 = [PRSPosterArchiver unarchiveConfigurationFromData:wallpaperData error:0];
      v16 = sub_100004F84();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
        v23 = 138412290;
        v24 = uniqueProxyIdentifier;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "SNAP: unarchived a pending PRSPosterConfiguration for %@", &v23, 0xCu);
      }

      v18 = [[ICSPosterConfigurationWrapper alloc] initWithConfiguration:v15 source:3];
      configurationCache = [(iPadAudioCallViewController *)self configurationCache];
      uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
      [configurationCache setObject:v18 forKey:uniqueProxyIdentifier2];
    }

    else
    {
      v21 = sub_100004F84();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412290;
        v24 = pendingNickname;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "SNAP: there is no newPosterConfiguration, current pendingNickName is %@", &v23, 0xCu);
      }

      wallpaperData = [(iPadAudioCallViewController *)self configurationCache];
      v18 = [[ICSPosterConfigurationWrapper alloc] initWithConfiguration:0 source:3];
      configurationCache = [callCopy uniqueProxyIdentifier];
      [wallpaperData setObject:v18 forKey:configurationCache];
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)sharedProfileStateOracleForCall:(id)call
{
  callCopy = call;
  contactIdentifier = [callCopy contactIdentifier];

  if (contactIdentifier)
  {
    v6 = [PHInCallUtilities contactStoreForCall:callCopy];
    contactIdentifier2 = [callCopy contactIdentifier];
    v8 = +[iPadAudioCallViewController contactKeysToFetch];
    contactsCache = [(iPadAudioCallViewController *)self contactsCache];
    v10 = [v6 contactForIdentifier:contactIdentifier2 keysToFetch:v8 usingCache:contactsCache];

    if (v10)
    {
      v11 = [[CNSharedProfileStateOracle alloc] initWithContact:v10 contactStore:v6];
      v12 = sub_100004F84();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SNAP: current CNSharedProfileStateOracle is %@", &v15, 0xCu);
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
      v15 = 138412290;
      v16 = uniqueProxyIdentifier;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SNAP: call doesn't have contactIdentifier %@", &v15, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)currentCallStateCanShowNewPoster
{
  selfCopy = self;
  frontmostCall = [(iPadAudioCallViewController *)self frontmostCall];
  LOBYTE(selfCopy) = [(iPadAudioCallViewController *)selfCopy callStateCanShowNewPoster:frontmostCall];

  return selfCopy;
}

- (BOOL)callStateCanShowNewPoster:(id)poster
{
  posterCopy = poster;
  features = [(iPadAudioCallViewController *)self features];
  isNameAndPhotoC3Enabled = [features isNameAndPhotoC3Enabled];

  v9 = 0;
  if (isNameAndPhotoC3Enabled)
  {
    if (posterCopy)
    {
      if ([posterCopy status] == 1)
      {
        callCenter = [(iPadAudioCallViewController *)self callCenter];
        currentCallCount = [callCenter currentCallCount];

        if (currentCallCount < 2)
        {
          v9 = 1;
        }
      }
    }
  }

  return v9;
}

- (BOOL)shouldShowNewPosterUpdates
{
  frontmostCall = [(iPadAudioCallViewController *)self frontmostCall];
  if ([(iPadAudioCallViewController *)self callStateCanShowNewPoster:frontmostCall])
  {
    v4 = [objc_opt_class() posterSourceIsSyncedWithContacts:{-[iPadAudioCallViewController suggestedNewPosterSourceAfterCallConnects:](self, "suggestedNewPosterSourceAfterCallConnects:", frontmostCall)}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)finishNewPosterUpdatesWithCompletion:(id)completion
{
  completionCopy = completion;
  features = [(iPadAudioCallViewController *)self features];
  isNameAndPhotoC3Enabled = [features isNameAndPhotoC3Enabled];

  if (isNameAndPhotoC3Enabled)
  {
    frontmostCall = [(iPadAudioCallViewController *)self frontmostCall];
    v8 = frontmostCall;
    if (frontmostCall)
    {
      if ([frontmostCall status] == 1)
      {
        callCenter = [(iPadAudioCallViewController *)self callCenter];
        currentCallCount = [callCenter currentCallCount];

        if (currentCallCount <= 1)
        {
          v11 = [(iPadAudioCallViewController *)self sharedProfileStateOracleForCall:v8];
          v15 = 0;
          v12 = [v11 updateContactAndNicknamesForAutoUpdateWithError:&v15];
          v13 = v15;
          v14 = sub_100004F84();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v17 = v13;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "SNAP: new poster update completed with error: %@", buf, 0xCu);
          }

          if (completionCopy)
          {
            completionCopy[2](completionCopy, v11);
          }
        }
      }
    }
  }
}

- (BOOL)canShowPosterImage
{
  if ([(CNKFeatures *)self->_features isEnhancedEmergencyEnabled])
  {
    frontmostCall = [(iPadAudioCallViewController *)self frontmostCall];
    isEmergency = [frontmostCall isEmergency];

    if (isEmergency)
    {
      return 0;
    }
  }

  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  v5 = [callDisplayStyleManager callDisplayStyle] != 0;

  return v5;
}

- (BOOL)canShowBackgroundImage
{
  if ([(CNKFeatures *)self->_features isEnhancedEmergencyEnabled])
  {
    frontmostCall = [(iPadAudioCallViewController *)self frontmostCall];
    isEmergency = [frontmostCall isEmergency];

    if (isEmergency)
    {
      return 0;
    }
  }

  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] == 3)
  {
    features = [(iPadAudioCallViewController *)self features];
    [features isDominoEnabled];
  }

  callDisplayStyleManager2 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  v5 = [callDisplayStyleManager2 callDisplayStyle] != 0;

  return v5;
}

- (BOOL)shouldApplyNewGradientBlur
{
  if ([(CNKFeatures *)self->_features isEnhancedEmergencyEnabled])
  {
    frontmostCall = [(iPadAudioCallViewController *)self frontmostCall];
    isEmergency = [frontmostCall isEmergency];

    if (isEmergency)
    {
      return 0;
    }
  }

  callToUseForWallpaper = [(iPadAudioCallViewController *)self callToUseForWallpaper];
  provider = [callToUseForWallpaper provider];
  if ([provider isSystemProvider])
  {
    v5 = 1;
  }

  else
  {
    callToUseForWallpaper2 = [(iPadAudioCallViewController *)self callToUseForWallpaper];
    v5 = [callToUseForWallpaper2 status] != 4;
  }

  return v5;
}

- (BOOL)isShowingBackgroundImage
{
  backgroundImageView = [(iPadAudioCallViewController *)self backgroundImageView];
  v3 = backgroundImageView != 0;

  return v3;
}

- (BOOL)shouldShowCircularAvatar
{
  if ([(CNKFeatures *)self->_features isEnhancedEmergencyEnabled])
  {
    frontmostCall = [(iPadAudioCallViewController *)self frontmostCall];
    if (frontmostCall)
    {
      firstObject = frontmostCall;
    }

    else
    {
      callCenter = [(iPadAudioCallViewController *)self callCenter];
      currentCalls = [callCenter currentCalls];
      firstObject = [currentCalls firstObject];

      if (!firstObject)
      {
        v7 = +[UIApplication sharedApplication];
        delegate = [v7 delegate];
        firstObject = [delegate mostRecentlyDisconnectedAudioCall];
      }
    }

    isEmergency = [firstObject isEmergency];

    if (isEmergency)
    {
      return 0;
    }
  }

  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] == 3)
  {
    features = [(iPadAudioCallViewController *)self features];
    isDominoEnabled = [features isDominoEnabled];

    if (isDominoEnabled)
    {
      return 1;
    }
  }

  else
  {
  }

  v14 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v14 userInterfaceIdiom];

  callDisplayStyleManager2 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager2 callDisplayStyle];

  if ([(iPadAudioCallViewController *)self shouldShowContactOrLastSeenWallpaper])
  {
    v18 = 1;
  }

  else
  {
    renderingViewController = [(iPadAudioCallViewController *)self renderingViewController];
    v18 = renderingViewController != 0;
  }

  callToUseForWallpaper = [(iPadAudioCallViewController *)self callToUseForWallpaper];
  v21 = [(iPadAudioCallViewController *)self contactImageForCall:callToUseForWallpaper];

  callToUseForWallpaper2 = [(iPadAudioCallViewController *)self callToUseForWallpaper];
  v23 = [(iPadAudioCallViewController *)self fallbackImageDataForCall:callToUseForWallpaper2];

  if (!v18 && [(iPadAudioCallViewController *)self shouldApplyNewGradientBlur])
  {
    return 1;
  }

  if (v21)
  {
    v24 = 1;
  }

  else
  {
    v24 = v23 == 0;
  }

  v25 = !v24;
  if ((userInterfaceIdiom | callDisplayStyle) == 0 || v18)
  {
    return (userInterfaceIdiom | callDisplayStyle) == 0;
  }

  else
  {
    return v25;
  }
}

- (id)contactToDisplayInCallWallpaperForCall:(id)call
{
  callCopy = call;
  v5 = callCopy;
  if (callCopy && ([callCopy contactIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [PHInCallUtilities contactStoreForCall:v5];
    contactIdentifier = [v5 contactIdentifier];
    v9 = +[iPadAudioCallViewController contactKeysToFetch];
    contactsCache = [(iPadAudioCallViewController *)self contactsCache];
    v11 = [v7 contactForIdentifier:contactIdentifier keysToFetch:v9 usingCache:contactsCache];

    if (v11)
    {
      mostRecentContactToDisplayInCallWallpaper = [(iPadAudioCallViewController *)self mostRecentContactToDisplayInCallWallpaper];

      if (v11 != mostRecentContactToDisplayInCallWallpaper)
      {
        [(iPadAudioCallViewController *)self setMostRecentContactToDisplayInCallWallpaper:v11];
        v13 = +[CNContactChangesNotifier sharedNotifier];
        [v13 unregisterObserver:self forContact:0];

        v14 = +[CNContactChangesNotifier sharedNotifier];
        v15 = +[iPadAudioCallViewController contactKeysToFetch];
        [v14 registerObserver:self forContact:v11 keysToFetch:v15];
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)contactWallpaperForCall:(id)call
{
  callCopy = call;
  if (-[CNKFeatures isEnhancedEmergencyEnabled](self->_features, "isEnhancedEmergencyEnabled") && ([callCopy isEmergency] & 1) != 0)
  {
    wallpaper = 0;
    goto LABEL_20;
  }

  contactIdentifier = [callCopy contactIdentifier];

  if (contactIdentifier)
  {
    handle = [callCopy handle];
    siriDisplayName = [handle siriDisplayName];
    if ([siriDisplayName length])
    {
      handle2 = [callCopy handle];
      shouldHideContact = [handle2 shouldHideContact];

      if (shouldHideContact)
      {
        v11 = sub_100004F84();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138412290;
          v20 = callCopy;
          v12 = "SNAP: call initiated with Siri using a phone or email on a lock device, not showing the wallpaper %@";
LABEL_11:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, &v19, 0xCu);
          goto LABEL_12;
        }

        goto LABEL_12;
      }
    }

    else
    {
    }

    v11 = [PHInCallUtilities contactStoreForCall:callCopy];
    contactIdentifier2 = [callCopy contactIdentifier];
    v14 = +[iPadAudioCallViewController contactKeysToFetch];
    contactsCache = [(iPadAudioCallViewController *)self contactsCache];
    v16 = [v11 contactForIdentifier:contactIdentifier2 keysToFetch:v14 usingCache:contactsCache];

    v17 = sub_100004F84();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 67109120;
      LODWORD(v20) = v16 != 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "SNAP: the contact we used to fetch wallpaper for call is non-nil: %d", &v19, 8u);
    }

    wallpaper = [v16 wallpaper];

    if (wallpaper)
    {
      wallpaper = [v16 wallpaper];
    }

    goto LABEL_19;
  }

  v11 = sub_100004F84();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = callCopy;
    v12 = "SNAP: call doesn't have contactIdentifier %@";
    goto LABEL_11;
  }

LABEL_12:
  wallpaper = 0;
LABEL_19:

LABEL_20:

  return wallpaper;
}

- (id)wallpaperTypeForCNWallpaper:(id)wallpaper
{
  extensionBundleID = [wallpaper extensionBundleID];
  v5 = [(iPadAudioCallViewController *)self wallpaperTypeForBundleID:extensionBundleID];

  return v5;
}

- (id)wallpaperTypeForIMWallpaperMetadata:(id)metadata
{
  type = [metadata type];
  v5 = [(iPadAudioCallViewController *)self wallpaperTypeForBundleID:type];

  return v5;
}

- (id)wallpaperTypeForBundleID:(id)d
{
  dCopy = d;
  if ([dCopy isEqual:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"])
  {
    v4 = &CNWallpaperTypePhoto;
LABEL_7:
    v5 = *v4;
    goto LABEL_8;
  }

  if ([dCopy isEqual:@"com.apple.AvatarUI.AvatarPosterExtension"])
  {
    v4 = &CNWallpaperTypeMemoji;
    goto LABEL_7;
  }

  if ([dCopy isEqual:@"com.apple.ContactsUI.MonogramPosterExtension"])
  {
    v4 = &CNWallpaperTypeMonogram;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

- (BOOL)shouldShowContactOrLastSeenWallpaper
{
  if ([(iPadAudioCallViewController *)self hasNoCallsOrOnlyEndedCalls])
  {
    renderingViewController = [(iPadAudioCallViewController *)self renderingViewController];

    if (renderingViewController)
    {
      return 1;
    }
  }

  callToUseForWallpaper = [(iPadAudioCallViewController *)self callToUseForWallpaper];
  v6 = callToUseForWallpaper;
  if (callToUseForWallpaper && ([callToUseForWallpaper contactIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    if ([(iPadAudioCallViewController *)self callStateCanShowNewPoster:v6]|| ![(iPadAudioCallViewController *)self prefersShowingCachedLastSeenPosterBeforeCallConnected:v6])
    {
      v8 = [(iPadAudioCallViewController *)self contactWallpaperForCall:v6];
      v4 = v8 != 0;
    }

    else
    {
      v4 = [(iPadAudioCallViewController *)self hasLastSeenPosterForCall:v6];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)lastSeenOrCurrentPosterConfigurationForCall:(id)call
{
  callCopy = call;
  if ([(iPadAudioCallViewController *)self prefersShowingCachedLastSeenPosterBeforeCallConnected:callCopy])
  {
    [(iPadAudioCallViewController *)self lastSeenPosterConfigurationForCall:callCopy];
  }

  else
  {
    [(iPadAudioCallViewController *)self contactWallpaperConfigurationForCall:callCopy shouldReadFromCache:1];
  }
  v5 = ;

  return v5;
}

- (id)lastSeenPosterConfigurationForCall:(id)call
{
  callCopy = call;
  configurationCache = [(iPadAudioCallViewController *)self configurationCache];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  v7 = [configurationCache objectForKey:uniqueProxyIdentifier];
  configuration = [v7 configuration];

  if (!configuration)
  {
    handle = [callCopy handle];
    siriDisplayName = [handle siriDisplayName];
    if ([siriDisplayName length])
    {
      handle2 = [callCopy handle];
      shouldHideContact = [handle2 shouldHideContact];

      if (shouldHideContact)
      {
        v16 = sub_100004F84();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
          v26 = 138412290;
          v27 = uniqueProxyIdentifier2;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "SNAP: call initiated with Siri using a phone or email on a lock device, not showing the wallpaper for callUUID %@", &v26, 0xCu);
        }

        goto LABEL_15;
      }
    }

    else
    {
    }

    v18 = [(iPadAudioCallViewController *)self readCachedLastSeenPosterDataForCall:callCopy];
    if (v18)
    {
      configurationCache3 = v18;
      v11 = [PRSPosterArchiver unarchiveConfigurationFromData:v18 error:0];
      v20 = sub_100004F84();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        uniqueProxyIdentifier3 = [callCopy uniqueProxyIdentifier];
        v26 = 138412290;
        v27 = uniqueProxyIdentifier3;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "SNAP: unarchived a lastSeen PRSPosterConfiguration for %@", &v26, 0xCu);
      }

      v22 = [[ICSPosterConfigurationWrapper alloc] initWithConfiguration:v11 source:1];
      configurationCache2 = [(iPadAudioCallViewController *)self configurationCache];
      uniqueProxyIdentifier4 = [callCopy uniqueProxyIdentifier];
      [configurationCache2 setObject:v22 forKey:uniqueProxyIdentifier4];

      goto LABEL_16;
    }

LABEL_15:
    configurationCache3 = [(iPadAudioCallViewController *)self configurationCache];
    v22 = [[ICSPosterConfigurationWrapper alloc] initWithConfiguration:0 source:1];
    configurationCache2 = [callCopy uniqueProxyIdentifier];
    [configurationCache3 setObject:v22 forKey:configurationCache2];
    v11 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v9 = sub_100004F84();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    callUUID = [callCopy callUUID];
    v26 = 138412290;
    v27 = callUUID;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SNAP: Returning a cached PRSPosterConfiguration for %@", &v26, 0xCu);
  }

  v11 = configuration;
LABEL_17:

  return v11;
}

- (id)contactWallpaperConfigurationForCall:(id)call shouldReadFromCache:(BOOL)cache
{
  cacheCopy = cache;
  callCopy = call;
  v7 = [(iPadAudioCallViewController *)self contactWallpaperForCall:callCopy];
  if (v7)
  {
    if (cacheCopy && (-[iPadAudioCallViewController configurationCache](self, "configurationCache"), v8 = objc_claimAutoreleasedReturnValue(), [callCopy uniqueProxyIdentifier], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKey:", v9), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "configuration"), v11 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v11))
    {
      posterArchiveData = sub_100004F84();
      if (os_log_type_enabled(posterArchiveData, OS_LOG_TYPE_DEFAULT))
      {
        callUUID = [callCopy callUUID];
        v25 = 138412290;
        v26 = callUUID;
        _os_log_impl(&_mh_execute_header, posterArchiveData, OS_LOG_TYPE_DEFAULT, "SNAP: Returning a cached PRSPosterConfiguration for %@", &v25, 0xCu);
      }
    }

    else
    {
      posterArchiveData = [v7 posterArchiveData];
      v14 = sub_100004F84();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (posterArchiveData)
      {
        if (v15)
        {
          v25 = 138412546;
          v26 = posterArchiveData;
          v27 = 2048;
          v28 = [posterArchiveData length];
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "SNAP: posterArchiveData in wallpaper is %@, length is %lu", &v25, 0x16u);
        }

        v11 = [PRSPosterArchiver unarchiveConfigurationFromData:posterArchiveData error:0];
        v16 = sub_100004F84();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
          v25 = 138412290;
          v26 = uniqueProxyIdentifier;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "SNAP: unarchived a contact (current) PRSPosterConfiguration for %@", &v25, 0xCu);
        }

        configurationCache2 = [[ICSPosterConfigurationWrapper alloc] initWithConfiguration:v11 source:2];
        configurationCache = [(iPadAudioCallViewController *)self configurationCache];
        uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
        [(ICSPosterConfigurationWrapper *)configurationCache setObject:configurationCache2 forKey:uniqueProxyIdentifier2];
      }

      else
      {
        if (v15)
        {
          LOWORD(v25) = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "SNAP: there is no posterArchiveData in wallpaper", &v25, 2u);
        }

        configurationCache2 = [(iPadAudioCallViewController *)self configurationCache];
        configurationCache = [[ICSPosterConfigurationWrapper alloc] initWithConfiguration:0 source:2];
        uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
        [(ICSPosterConfigurationWrapper *)configurationCache2 setObject:configurationCache forKey:uniqueProxyIdentifier2];
        v11 = 0;
      }
    }
  }

  else
  {
    configurationCache3 = [(iPadAudioCallViewController *)self configurationCache];
    v22 = [[ICSPosterConfigurationWrapper alloc] initWithConfiguration:0 source:2];
    uniqueProxyIdentifier3 = [callCopy uniqueProxyIdentifier];
    [configurationCache3 setObject:v22 forKey:uniqueProxyIdentifier3];

    posterArchiveData = sub_100004F84();
    if (os_log_type_enabled(posterArchiveData, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&_mh_execute_header, posterArchiveData, OS_LOG_TYPE_DEFAULT, "SNAP: contactWallpaperForCall is nil", &v25, 2u);
    }

    v11 = 0;
  }

  return v11;
}

- (id)wallpaperTitleStyleAttributesForCall:(id)call
{
  callCopy = call;
  v5 = [(iPadAudioCallViewController *)self lastSeenOrCurrentPosterConfigurationForCall:callCopy];
  if (!v5)
  {
    titleStyleAttributes2 = 0;
    goto LABEL_12;
  }

  configurationCache = [(iPadAudioCallViewController *)self configurationCache];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  v8 = [configurationCache objectForKey:uniqueProxyIdentifier];

  if (!v8)
  {
    goto LABEL_8;
  }

  configuration = [v8 configuration];
  if (([configuration isEqual:v5] & 1) == 0)
  {

    goto LABEL_8;
  }

  titleStyleAttributes = [v8 titleStyleAttributes];

  if (!titleStyleAttributes)
  {
LABEL_8:
    v15 = 0;
    titleStyleAttributes2 = [PRUISPosterConfigurationUtilities titleStyleAttributesForConfiguration:v5 error:&v15];
    if (v8)
    {
      configuration2 = [v8 configuration];
      v13 = [configuration2 isEqual:v5];

      if (v13)
      {
        [v8 setTitleStyleAttributes:titleStyleAttributes2];
      }
    }

    goto LABEL_11;
  }

  titleStyleAttributes2 = [v8 titleStyleAttributes];
LABEL_11:

LABEL_12:

  return titleStyleAttributes2;
}

- (id)wallpaperTitleStyleAttributes
{
  callToUseForWallpaper = [(iPadAudioCallViewController *)self callToUseForWallpaper];
  v4 = [(iPadAudioCallViewController *)self wallpaperTitleStyleAttributesForCall:callToUseForWallpaper];

  return v4;
}

- (id)contactWallpaperBackgroundColor
{
  callToUseForWallpaper = [(iPadAudioCallViewController *)self callToUseForWallpaper];
  if (![(iPadAudioCallViewController *)self callStateCanShowNewPoster:callToUseForWallpaper]&& [(iPadAudioCallViewController *)self prefersShowingCachedLastSeenPosterBeforeCallConnected:callToUseForWallpaper])
  {
    v4 = [(iPadAudioCallViewController *)self lastSeenPosterIMWallpaperMetadataForCall:callToUseForWallpaper];
    backgroundColor = [v4 backgroundColor];
LABEL_6:
    v7 = backgroundColor;
    goto LABEL_8;
  }

  v6 = [(iPadAudioCallViewController *)self contactWallpaperForCall:callToUseForWallpaper];
  v4 = v6;
  if (v6)
  {
    backgroundColor = [v6 backgroundColorDescription];
    goto LABEL_6;
  }

  v7 = 0;
LABEL_8:

  v8 = [v7 objectForKey:CNWallpaperColorDescriptionKeyRed];
  v9 = [v7 objectForKey:CNWallpaperColorDescriptionKeyGreen];
  v10 = [v7 objectForKey:CNWallpaperColorDescriptionKeyBlue];
  v11 = [v7 objectForKey:CNWallpaperColorDescriptionKeyAlpha];
  v12 = v11;
  if (v8)
  {
    v13 = v9 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13 || v10 == 0 || v11 == 0)
  {
    v23 = 0;
  }

  else
  {
    [v8 doubleValue];
    v17 = v16;
    [v9 doubleValue];
    v19 = v18;
    [v10 doubleValue];
    v21 = v20;
    [v12 doubleValue];
    v23 = [UIColor colorWithRed:v17 green:v19 blue:v21 alpha:v22];
  }

  return v23;
}

- (void)updateLegacyBackgroundImageVisibilityWithShouldShowWallpaper:(BOOL)wallpaper
{
  wallpaperCopy = wallpaper;
  canShowBackgroundImage = [(iPadAudioCallViewController *)self canShowBackgroundImage];
  v6 = !wallpaperCopy;
  if (!canShowBackgroundImage)
  {
    v6 = 0.0;
  }

  [(PHBackgroundGradientBlurView *)self->_backgroundImageView setAlpha:v6];
  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    [(PHBackgroundGradientBlurView *)self->_backgroundImageView alpha];
    v9 = 134217984;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SNAP: updated legacyBackgroundImageVisibility to %f", &v9, 0xCu);
  }
}

- (BOOL)setCallForBackgroundImage:(id)image animated:(BOOL)animated callDisplayStyleChanged:(BOOL)changed
{
  changedCopy = changed;
  imageCopy = image;
  v8 = sub_100004F84();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = imageCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setCallForBackgroundImage to: %@", &v17, 0xCu);
  }

  callForBackgroundImage = [(iPadAudioCallViewController *)self callForBackgroundImage];
  if ([callForBackgroundImage isEqual:imageCopy])
  {
    callForBackgroundImage2 = [(iPadAudioCallViewController *)self callForBackgroundImage];

    if (callForBackgroundImage2)
    {
      v11 = 1;
    }

    else
    {
      v11 = imageCopy == 0;
    }

    if (v11 && !changedCopy)
    {
      backgroundImageView = [(iPadAudioCallViewController *)self backgroundImageView];
      image = [backgroundImageView image];

      [(iPadAudioCallViewController *)self hideOrShowThirdPartyBackgroundImageWithImage:image];
      goto LABEL_19;
    }
  }

  else
  {
  }

  if (imageCopy)
  {
    v14 = [(iPadAudioCallViewController *)self contactImageDataForCall:imageCopy];
    if (v14)
    {
      image = [[UIImage alloc] initWithData:v14];
    }

    else
    {
      image = 0;
    }
  }

  else
  {
    image = 0;
  }

  [(iPadAudioCallViewController *)self setBackgroundImage:image];
  [(iPadAudioCallViewController *)self setCallForBackgroundImage:imageCopy];
LABEL_19:
  [(iPadAudioCallViewController *)self updateLegacyBackgroundImageVisibilityWithShouldShowWallpaper:[(iPadAudioCallViewController *)self callHasNoContactPoster]^ 1];
  if (image)
  {
    canShowBackgroundImage = [(iPadAudioCallViewController *)self canShowBackgroundImage];
  }

  else
  {
    canShowBackgroundImage = 0;
  }

  return canShowBackgroundImage;
}

- (id)contactImageDataForCall:(id)call
{
  v4 = [(iPadAudioCallViewController *)self contactForCall:call];
  v5 = v4;
  if (v4)
  {
    fullscreenImageData = [v4 fullscreenImageData];
    callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
    if ([callDisplayStyleManager callDisplayStyle] == 3)
    {
      features = [(iPadAudioCallViewController *)self features];
      isDominoEnabled = [features isDominoEnabled];

      if (isDominoEnabled && !fullscreenImageData)
      {
        fullscreenImageData = [v5 imageData];
      }
    }

    else
    {
    }
  }

  else
  {
    fullscreenImageData = 0;
  }

  v10 = sub_100004F84();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = fullscreenImageData;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SNAP: contactImageDataForCall is %@", &v12, 0xCu);
  }

  return fullscreenImageData;
}

- (id)contactForCall:(id)call
{
  callCopy = call;
  handle = [callCopy handle];
  siriDisplayName = [handle siriDisplayName];
  if ([siriDisplayName length])
  {
    handle2 = [callCopy handle];
    v8 = [handle2 shouldHideContact] ^ 1;
  }

  else
  {
    v8 = 1;
  }

  contactIdentifier = [callCopy contactIdentifier];

  if (contactIdentifier && v8)
  {
    v10 = sub_100004F84();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SNAP: trying to fetch contactImageData", v18, 2u);
    }

    handle3 = [PHInCallUtilities contactStoreForCall:callCopy];
    contactIdentifier2 = [callCopy contactIdentifier];
    v13 = +[iPadAudioCallViewController contactKeysToFetch];
    contactsCache = [(iPadAudioCallViewController *)self contactsCache];
    v15 = [handle3 contactForIdentifier:contactIdentifier2 keysToFetch:v13 usingCache:contactsCache];
  }

  else
  {
    v16 = [CNMutableContact alloc];
    handle3 = [callCopy handle];
    v15 = [v16 initWithHandle:handle3];
  }

  return v15;
}

- (id)fallbackImageDataForCall:(id)call
{
  v3 = [(iPadAudioCallViewController *)self contactForCall:call];
  v4 = v3;
  if (v3)
  {
    imageData = [v3 imageData];
  }

  else
  {
    imageData = 0;
  }

  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = imageData;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SNAP: fallbackImageDataForContact is %@", &v8, 0xCu);
  }

  return imageData;
}

- (id)contactImageForCall:(id)call
{
  callCopy = call;
  if (callCopy && ([(iPadAudioCallViewController *)self contactImageDataForCall:callCopy], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [UIImage imageWithData:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)contactImage
{
  callToUseForWallpaper = [(iPadAudioCallViewController *)self callToUseForWallpaper];
  v4 = [(iPadAudioCallViewController *)self contactImageForCall:callToUseForWallpaper];

  return v4;
}

- (void)setBackgroundImage:(id)image
{
  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] == 3)
  {
    features = [(iPadAudioCallViewController *)self features];
    isDominoEnabled = [features isDominoEnabled];

    if (isDominoEnabled)
    {
      callToUseForWallpaper = [(iPadAudioCallViewController *)self callToUseForWallpaper];
      if ([(iPadAudioCallViewController *)self callStateCanShowNewPoster:callToUseForWallpaper]|| ![(iPadAudioCallViewController *)self prefersShowingCachedLastSeenPosterBeforeCallConnected:callToUseForWallpaper])
      {
        v9 = [(iPadAudioCallViewController *)self contactWallpaperForCall:callToUseForWallpaper];
        v10 = [(iPadAudioCallViewController *)self wallpaperTypeForCNWallpaper:v9];
      }

      else
      {
        v9 = [(iPadAudioCallViewController *)self lastSeenPosterIMWallpaperMetadataForCall:callToUseForWallpaper];
        v10 = [(iPadAudioCallViewController *)self wallpaperTypeForIMWallpaperMetadata:v9];
      }

      mostRecentlyDisconnectedAudioCall = v10;

      callCenter = [(iPadAudioCallViewController *)self callCenter];
      if ([callCenter currentCallCount] <= 1)
      {
      }

      else
      {
        callCenter2 = [(iPadAudioCallViewController *)self callCenter];
        incomingCall = [callCenter2 incomingCall];

        if (incomingCall)
        {
          v18 = &OBJC_IVAR___iPadAudioCallViewController__shouldShowLargeAvatarForCallWaiting;
LABEL_26:
          v20 = *(&self->super.super.super.super.isa + *v18);
          currentState = [(PHCallViewController *)self currentState];
          if (mostRecentlyDisconnectedAudioCall == CNWallpaperTypeMemoji || mostRecentlyDisconnectedAudioCall == CNWallpaperTypeMonogram)
          {
            contactWallpaperBackgroundColor = [(iPadAudioCallViewController *)self contactWallpaperBackgroundColor];
            if (contactWallpaperBackgroundColor)
            {
              [(iPadAudioCallViewController *)self setBackgroundColor:contactWallpaperBackgroundColor animated:1];
            }

            else
            {
              v25 = +[UIColor blackColor];
              [(iPadAudioCallViewController *)self setBackgroundColor:v25 animated:1];
            }

            [(iPadAudioCallViewController *)self removeBackgroundContactImageView];
          }

          else
          {
            if (currentState == 11)
            {
              v22 = 1;
            }

            else
            {
              v22 = v20;
            }

            if (!image || (v22 & 1) == 0)
            {
              v23 = +[UIColor blackColor];
              [(iPadAudioCallViewController *)self setBackgroundColor:v23 animated:1];
            }
          }

LABEL_40:

          return;
        }
      }

      usesCompactMulticallUI = [(iPadAudioCallViewController *)self usesCompactMulticallUI];
      v18 = &OBJC_IVAR___iPadAudioCallViewController__shouldShowLargeAvatar;
      if (usesCompactMulticallUI)
      {
        v18 = &OBJC_IVAR___iPadAudioCallViewController__shouldShowLargeAvatarForCallWaiting;
      }

      goto LABEL_26;
    }
  }

  else
  {
  }

  if ((!image || ![(iPadAudioCallViewController *)self canShowBackgroundImage]) && ![(iPadAudioCallViewController *)self shouldShowContactOrLastSeenWallpaper])
  {
    callDisplayStyleManager2 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
    callDisplayStyle = [callDisplayStyleManager2 callDisplayStyle];

    if (!callDisplayStyle)
    {
      return;
    }

    v13 = +[UIApplication sharedApplication];
    delegate = [v13 delegate];
    mostRecentlyDisconnectedAudioCall = [delegate mostRecentlyDisconnectedAudioCall];

    if (!mostRecentlyDisconnectedAudioCall || ![mostRecentlyDisconnectedAudioCall isEmergency] || (objc_msgSend(mostRecentlyDisconnectedAudioCall, "disconnectedReasonRequiresCallBackUI") & 1) == 0)
    {
      [(iPadAudioCallViewController *)self addDefaultBackgroundGradientView];
    }

    [(iPadAudioCallViewController *)self updateLayeredBackgroundWallpaper];
    [(iPadAudioCallViewController *)self removeBackgroundContactImageView];
    goto LABEL_40;
  }

  [(iPadAudioCallViewController *)self updateLayeredBackgroundWallpaper];

  [(iPadAudioCallViewController *)self removeDefaultBackgroundGradientView];
}

- (void)setBackgroundColor:(id)color animated:(BOOL)animated
{
  animatedCopy = animated;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000DE444;
  v10[3] = &unk_100357110;
  v10[4] = self;
  colorCopy = color;
  v11 = colorCopy;
  v6 = objc_retainBlock(v10);
  v7 = v6;
  if (animatedCopy)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000DE494;
    v8[3] = &unk_100356D38;
    v9 = v6;
    [UIView animateWithDuration:v8 animations:0.5];
  }

  else
  {
    (v6[2])(v6);
  }
}

- (void)hideOrShowThirdPartyBackgroundImageWithImage:(id)image
{
  imageCopy = image;
  if (!-[CNKFeatures isEnhancedEmergencyEnabled](self->_features, "isEnhancedEmergencyEnabled") || (-[iPadAudioCallViewController frontmostCall](self, "frontmostCall"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isEmergency], v4, (v5 & 1) == 0))
  {
    if ([(iPadAudioCallViewController *)self shouldApplyNewGradientBlur]|| [(iPadAudioCallViewController *)self shouldShowContactOrLastSeenWallpaper])
    {
      unblurredBackgroundImageView = [(iPadAudioCallViewController *)self unblurredBackgroundImageView];
      [unblurredBackgroundImageView removeFromSuperview];

      [(iPadAudioCallViewController *)self setUnblurredBackgroundImageView:0];
    }

    else
    {
      unblurredBackgroundImageView2 = [(iPadAudioCallViewController *)self unblurredBackgroundImageView];

      if (!unblurredBackgroundImageView2)
      {
        v8 = objc_opt_new();
        [(iPadAudioCallViewController *)self setUnblurredBackgroundImageView:v8];

        view = [(iPadAudioCallViewController *)self view];
        [view frame];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        unblurredBackgroundImageView3 = [(iPadAudioCallViewController *)self unblurredBackgroundImageView];
        [unblurredBackgroundImageView3 setFrame:{v11, v13, v15, v17}];

        unblurredBackgroundImageView4 = [(iPadAudioCallViewController *)self unblurredBackgroundImageView];
        [unblurredBackgroundImageView4 setContentMode:2];
      }

      unblurredBackgroundImageView5 = [(iPadAudioCallViewController *)self unblurredBackgroundImageView];
      [unblurredBackgroundImageView5 setImage:imageCopy];

      view2 = [(iPadAudioCallViewController *)self view];
      unblurredBackgroundImageView6 = [(iPadAudioCallViewController *)self unblurredBackgroundImageView];
      backgroundImageView = [(iPadAudioCallViewController *)self backgroundImageView];
      [view2 insertSubview:unblurredBackgroundImageView6 above:backgroundImageView];
    }
  }
}

- (id)fallbackHorizontalNameLabelString
{
  callToUseForWallpaper = [(iPadAudioCallViewController *)self callToUseForWallpaper];
  v4 = [(iPadAudioCallViewController *)self associatedCallGroupForCall:callToUseForWallpaper];

  callParticipantsViewController = [(iPadAudioCallViewController *)self callParticipantsViewController];
  v6 = [callParticipantsViewController nameForCallGroup:v4];

  return v6;
}

- (id)createContactFirstNameLabelViewModel
{
  callToUseForWallpaper = [(iPadAudioCallViewController *)self callToUseForWallpaper];
  v4 = [(iPadAudioCallViewController *)self contactToDisplayInCallWallpaperForCall:callToUseForWallpaper];
  handle = [callToUseForWallpaper handle];
  value = [handle value];
  v7 = [TPIncomingCallMetricsProvider appropriateCallerNameViewForContact:v4 callStatus:0 callIsActive:1 optionalBackupName:value];

  [(iPadAudioCallViewController *)self applyWallpaperTitleStyleAttributesToTextViewWrapper:v7];
  [v7 overrideTitleLayoutWith:0];
  v8 = [[PHPosterNameViewModel alloc] initWithCall:callToUseForWallpaper posterNameTextView:v7];

  return v8;
}

- (void)applyWallpaperTitleStyleAttributesToTextViewWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  wallpaperTitleStyleAttributes = [(iPadAudioCallViewController *)self wallpaperTitleStyleAttributes];
  v5 = wallpaperTitleStyleAttributes;
  if (wallpaperTitleStyleAttributes)
  {
    titleFont = [wallpaperTitleStyleAttributes titleFont];
    [wrapperCopy setTextFontUsingDefaultFontSizes:titleFont];

    [wrapperCopy setPreferredAlignment:{objc_msgSend(v5, "preferredTitleAlignment")}];
    [wrapperCopy setPreferredLayout:0];
  }
}

- (void)removeFirstNameLabelFromViewIfNeeded
{
  detachedPosterNameViewModel = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];

  if (detachedPosterNameViewModel)
  {

    [(iPadAudioCallViewController *)self setDetachedPosterNameViewModel:0];
  }
}

- (void)hideFirstNameLabelOnKeypad
{
  detachedPosterNameViewModel = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];

  if (detachedPosterNameViewModel)
  {
    detachedPosterNameViewModel2 = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];
    [detachedPosterNameViewModel2 updatePosterNameAlpha:0.0];
  }
}

- (void)showFirstNameLabelOnKeypad
{
  detachedPosterNameViewModel = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];

  if (detachedPosterNameViewModel)
  {
    detachedPosterNameViewModel2 = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];
    [detachedPosterNameViewModel2 updatePosterNameAlpha:1.0];
  }
}

- (void)createDetachedPosterNameViewModel:(id)model
{
  modelCopy = model;
  detachedPosterNameViewModel = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];

  if (!detachedPosterNameViewModel)
  {
    getParticipantsView_NotWaiting = [(iPadAudioCallViewController *)self getParticipantsView_NotWaiting];
    createContactFirstNameLabelViewModel = [(iPadAudioCallViewController *)self createContactFirstNameLabelViewModel];
    [(iPadAudioCallViewController *)self setDetachedPosterNameViewModel:createContactFirstNameLabelViewModel];

    detachedPosterNameViewModel2 = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];
    [detachedPosterNameViewModel2 updatePosterNameAlpha:0.0];

    detachedPosterNameViewModel3 = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];
    [detachedPosterNameViewModel3 updateStatusFromParticipantsView:getParticipantsView_NotWaiting];

    detachedPosterNameViewModel4 = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];
    posterNameTextView = [detachedPosterNameViewModel4 posterNameTextView];
    viewController = [posterNameTextView viewController];

    layoutGuidesProvider = [(iPadAudioCallViewController *)self layoutGuidesProvider];
    callerDetailsLayoutGuide = [layoutGuidesProvider callerDetailsLayoutGuide];

    if (viewController)
    {
      [(iPadAudioCallViewController *)self addChildViewController:viewController];
      view = [viewController view];
      [modelCopy addSubview:view];

      view2 = [viewController view];
      [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
      topAnchor = [view2 topAnchor];
      topAnchor2 = [callerDetailsLayoutGuide topAnchor];
      v39 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v45[0] = v39;
      bottomAnchor = [view2 bottomAnchor];
      bottomAnchor2 = [callerDetailsLayoutGuide bottomAnchor];
      [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v36 = v44 = modelCopy;
      v45[1] = v36;
      [view2 leadingAnchor];
      v17 = v43 = getParticipantsView_NotWaiting;
      [callerDetailsLayoutGuide leadingAnchor];
      v18 = v42 = viewController;
      v19 = [v17 constraintEqualToAnchor:v18];
      v45[2] = v19;
      trailingAnchor = [view2 trailingAnchor];
      [callerDetailsLayoutGuide trailingAnchor];
      v22 = v21 = callerDetailsLayoutGuide;
      v23 = [trailingAnchor constraintEqualToAnchor:v22];
      v45[3] = v23;
      v24 = [NSArray arrayWithObjects:v45 count:4];
      [NSLayoutConstraint activateConstraints:v24];

      callerDetailsLayoutGuide = v21;
      viewController = v42;

      getParticipantsView_NotWaiting = v43;
      modelCopy = v44;

      [v42 didMoveToParentViewController:self];
    }

    detachedPosterNameViewModel5 = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];
    posterNameTextView2 = [detachedPosterNameViewModel5 posterNameTextView];
    displayNameText = [posterNameTextView2 displayNameText];

    detachedPosterNameViewModel6 = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];
    posterNameTextView3 = [detachedPosterNameViewModel6 posterNameTextView];
    [(iPadAudioCallViewController *)self applyWallpaperTitleStyleAttributesToTextViewWrapper:posterNameTextView3];

    detachedPosterNameViewModel7 = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];
    posterNameTextView4 = [detachedPosterNameViewModel7 posterNameTextView];
    displayNameText2 = [posterNameTextView4 displayNameText];
    v33 = [displayNameText2 length];

    if (!v33)
    {
      detachedPosterNameViewModel8 = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];
      posterNameTextView5 = [detachedPosterNameViewModel8 posterNameTextView];
      [posterNameTextView5 setDisplayNameText:displayNameText];
    }
  }
}

- (void)hideOrShowScreeningBackgroundView
{
  featureFlags = [(iPadAudioCallViewController *)self featureFlags];
  v4 = TUCallScreeningEnabled();

  if (!v4)
  {
    return;
  }

  currentState = [(PHCallViewController *)self currentState];
  if ([(PHCallViewController *)self currentState]== 11 || currentState == 12)
  {
    goto LABEL_6;
  }

  bottomBar = [(PHCallViewController *)self bottomBar];
  if ([bottomBar currentState] == 24)
  {
    currentState2 = [(PHCallViewController *)self currentState];

    if (currentState2 == 11)
    {
LABEL_6:

      [(iPadAudioCallViewController *)self showTrailngPanelCoveringViewIfNeeded];
      return;
    }
  }

  else
  {
  }

  translationController = [(iPadAudioCallViewController *)self translationController];
  isTranslationStarted = [translationController isTranslationStarted];

  if ((isTranslationStarted & 1) == 0)
  {
    [(iPadAudioCallViewController *)self hideTrailngPanelCoveringViewIfNeeded];
  }

  [(iPadAudioCallViewController *)self _updatePosterNameAlpha];
  [(iPadAudioCallViewController *)self _updateStatusLabelVisibility];
  getParticipantsView_NotWaiting = [(iPadAudioCallViewController *)self getParticipantsView_NotWaiting];
  [(iPadAudioCallViewController *)self updateParticipantConstraintsForPosterName:getParticipantsView_NotWaiting];
}

- (void)removeBackgroundContactImageView
{
  [(PHBackgroundGradientBlurView *)self->_backgroundImageView removeFromSuperview];
  backgroundImageView = self->_backgroundImageView;
  self->_backgroundImageView = 0;
}

- (void)addDefaultBackgroundGradientView
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SNAP: Adding default backgroundGradientView", buf, 2u);
  }

  buttonsViewController = [(iPadAudioCallViewController *)self buttonsViewController];
  view = [buttonsViewController view];

  if (view)
  {
    buttonsViewController2 = [(iPadAudioCallViewController *)self buttonsViewController];
    view2 = [buttonsViewController2 view];

    defaultBackgroundGradientView = [(iPadAudioCallViewController *)self defaultBackgroundGradientView];

    if (!defaultBackgroundGradientView)
    {
      v28 = objc_alloc_init(PHAudioCallBackgroundGradientViewController);
      view3 = [(PHAudioCallBackgroundGradientViewController *)v28 view];
      [view3 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(iPadAudioCallViewController *)self addChildViewController:v28];
      backgroundController = [(iPadAudioCallViewController *)self backgroundController];
      [backgroundController insertToBackground:view3];

      leadingAnchor = [view3 leadingAnchor];
      view4 = [(iPadAudioCallViewController *)self view];
      leadingAnchor2 = [view4 leadingAnchor];
      v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v30[0] = v24;
      trailingAnchor = [view3 trailingAnchor];
      view5 = [(iPadAudioCallViewController *)self view];
      trailingAnchor2 = [view5 trailingAnchor];
      v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v30[1] = v20;
      topAnchor = [view3 topAnchor];
      view6 = [(iPadAudioCallViewController *)self view];
      topAnchor2 = [view6 topAnchor];
      v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v30[2] = v12;
      bottomAnchor = [view3 bottomAnchor];
      view7 = [(iPadAudioCallViewController *)self view];
      bottomAnchor2 = [view7 bottomAnchor];
      v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v30[3] = v16;
      v17 = [NSArray arrayWithObjects:v30 count:4];
      [NSLayoutConstraint activateConstraints:v17];

      [(iPadAudioCallViewController *)self setDefaultBackgroundGradientView:view3];
      [view2 updateBackgroundMaterial:2];
      [(PHAudioCallBackgroundGradientViewController *)v28 didMoveToParentViewController:self];
    }
  }
}

- (void)removeDefaultBackgroundGradientView
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SNAP: Removing default backgroundGradientView", v5, 2u);
  }

  defaultBackgroundGradientView = [(iPadAudioCallViewController *)self defaultBackgroundGradientView];
  [defaultBackgroundGradientView removeFromSuperview];

  [(iPadAudioCallViewController *)self setDefaultBackgroundGradientView:0];
}

- (void)setPosterNameViewModel:(id)model
{
  modelCopy = model;
  posterNameViewModel = self->_posterNameViewModel;
  if (posterNameViewModel)
  {
    [(PHPosterNameViewModel *)posterNameViewModel removeFromSuperview];
  }

  v6 = self->_posterNameViewModel;
  self->_posterNameViewModel = modelCopy;
}

- (void)setKeypadPosterNameViewModel:(id)model
{
  modelCopy = model;
  keypadPosterNameViewModel = self->_keypadPosterNameViewModel;
  if (keypadPosterNameViewModel)
  {
    [(PHPosterNameViewModel *)keypadPosterNameViewModel removeFromSuperview];
  }

  v6 = self->_keypadPosterNameViewModel;
  self->_keypadPosterNameViewModel = modelCopy;
}

- (void)setDetachedPosterNameViewModel:(id)model
{
  modelCopy = model;
  detachedPosterNameViewModel = self->_detachedPosterNameViewModel;
  if (detachedPosterNameViewModel)
  {
    [(PHPosterNameViewModel *)detachedPosterNameViewModel removeFromSuperview];
  }

  v6 = self->_detachedPosterNameViewModel;
  self->_detachedPosterNameViewModel = modelCopy;
}

- (void)updatePosterViewModelForParticipantsView:(id)view
{
  viewCopy = view;
  posterNameViewModel = [(iPadAudioCallViewController *)self posterNameViewModel];

  if (posterNameViewModel)
  {
    posterNameViewModel2 = [(iPadAudioCallViewController *)self posterNameViewModel];
    [posterNameViewModel2 updateViewModelForParticipantsView:viewCopy];
  }

  else
  {
    posterNameViewModel2 = [viewCopy singleCallLabelView];
    [posterNameViewModel2 setPosterNameViewModel:0];
  }
}

- (void)showPosterBlurTransition
{
  v3 = [UIBlurEffect effectWithBlurRadius:15.0];
  v4 = [[UIVisualEffectView alloc] initWithEffect:0];
  view = [(iPadAudioCallViewController *)self view];
  [view frame];
  [v4 setFrame:?];

  view2 = [(iPadAudioCallViewController *)self view];
  buttonsViewController = [(iPadAudioCallViewController *)self buttonsViewController];
  view3 = [buttonsViewController view];
  [view2 insertSubview:v4 below:view3];

  view4 = [(iPadAudioCallViewController *)self view];
  callDetailsViewButton = [(iPadAudioCallViewController *)self callDetailsViewButton];
  [view4 bringSubviewToFront:callDetailsViewButton];

  view5 = [(iPadAudioCallViewController *)self view];
  posterBadgeView = [(iPadAudioCallViewController *)self posterBadgeView];
  [view5 bringSubviewToFront:posterBadgeView];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000DF74C;
  v17[3] = &unk_100357110;
  v18 = v4;
  v19 = v3;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000DF7D4;
  v15[3] = &unk_1003569B0;
  v16 = v18;
  v13 = v18;
  v14 = v3;
  [UIView _animateUsingSpringWithDuration:0 delay:v17 options:v15 mass:0.25 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:50.0 completion:0.0];
}

- (void)removePosterViewController:(BOOL)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  renderingViewController = [(iPadAudioCallViewController *)self renderingViewController];
  [(iPadAudioCallViewController *)self setRenderingViewController:0];
  [(iPadAudioCallViewController *)self setPosterNameViewModel:0];
  if (renderingViewController)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000DFA50;
    v11[3] = &unk_100357C78;
    v12 = renderingViewController;
    selfCopy = self;
    v14 = completionCopy;
    v8 = objc_retainBlock(v11);
    v9 = v8;
    if (controllerCopy)
    {
      [(iPadAudioCallViewController *)self showPosterBlurTransition];
      v10 = dispatch_time(0, 0);
      dispatch_after(v10, &_dispatch_main_q, v9);
    }

    else
    {
      (v8[2])(v8);
    }
  }

  else
  {
    [(iPadAudioCallViewController *)self setParticipantsViewShouldShowParticipantLabel:1];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (void)updateLayeredBackgroundWallpaper
{
  [(iPadAudioCallViewController *)self updatePoster];
  existingPrioritizedCall = self->_existingPrioritizedCall;
  view = [(iPadAudioCallViewController *)self view];
  [view frame];
  [(iPadAudioCallViewController *)self updateTopShelfContentWithCall:existingPrioritizedCall sceneWindowSize:v4, v5];
}

- (void)setupNameLabelForAlwaysOnDisplay
{
  [(iPadAudioCallViewController *)self removeNameLabelForAlwaysOnDisplay];
  [(iPadAudioCallViewController *)self setupDimmingViewForAlwaysOnDisplay];
  createContactFirstNameLabelViewModel = [(iPadAudioCallViewController *)self createContactFirstNameLabelViewModel];
  [(iPadAudioCallViewController *)self setAlwaysOnDisplayPosterNameViewModel:createContactFirstNameLabelViewModel];

  alwaysOnDisplayPosterNameViewModel = [(iPadAudioCallViewController *)self alwaysOnDisplayPosterNameViewModel];
  posterNameTextView = [alwaysOnDisplayPosterNameViewModel posterNameTextView];
  alwaysOnDisplayDimmingView = [(iPadAudioCallViewController *)self alwaysOnDisplayDimmingView];
  [TPIncomingCallMetricsProvider addCallerNameView:posterNameTextView toContainerView:alwaysOnDisplayDimmingView];
}

- (void)removeNameLabelForAlwaysOnDisplay
{
  alwaysOnDisplayPosterNameViewModel = [(iPadAudioCallViewController *)self alwaysOnDisplayPosterNameViewModel];

  if (alwaysOnDisplayPosterNameViewModel)
  {
    alwaysOnDisplayPosterNameViewModel2 = [(iPadAudioCallViewController *)self alwaysOnDisplayPosterNameViewModel];
    [alwaysOnDisplayPosterNameViewModel2 removeFromSuperview];

    [(iPadAudioCallViewController *)self setAlwaysOnDisplayPosterNameViewModel:0];
  }
}

- (void)setupDimmingViewForAlwaysOnDisplay
{
  alwaysOnDisplayDimmingView = [(iPadAudioCallViewController *)self alwaysOnDisplayDimmingView];

  if (!alwaysOnDisplayDimmingView)
  {
    v4 = [UIView alloc];
    view = [(iPadAudioCallViewController *)self view];
    [view frame];
    v10 = [v4 initWithFrame:?];

    v6 = +[UIColor blackColor];
    v7 = [v6 colorWithAlphaComponent:0.75];
    [v10 setBackgroundColor:v7];

    view2 = [(iPadAudioCallViewController *)self view];
    [view2 addSubview:v10];

    [(iPadAudioCallViewController *)self setAlwaysOnDisplayDimmingView:v10];
    alwaysOnDisplayDimmingView2 = [(iPadAudioCallViewController *)self alwaysOnDisplayDimmingView];
    [alwaysOnDisplayDimmingView2 setAlpha:0.0];
  }
}

- (id)snapshotUIImageView
{
  v3 = [UIImageView alloc];
  backgroundImageView = [(iPadAudioCallViewController *)self backgroundImageView];
  image = [backgroundImageView image];
  v6 = [v3 initWithImage:image];

  view = [(iPadAudioCallViewController *)self view];
  [view frame];
  [v6 setFrame:?];

  v8 = objc_alloc_init(UIVisualEffectView);
  v9 = [UIBlurEffect effectWithBlurRadius:100.0];
  v18 = v9;
  v10 = [NSArray arrayWithObjects:&v18 count:1];
  [v8 setBackgroundEffects:v10];

  view2 = [(iPadAudioCallViewController *)self view];
  [view2 frame];
  [v8 setFrame:?];

  [v6 addSubview:v8];
  v12 = +[CALayer layer];
  v13 = [CAFilter filterWithType:kCAFilterPlusD];
  [v12 setCompositingFilter:v13];

  v14 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.150000006];
  [v12 setBackgroundColor:{objc_msgSend(v14, "CGColor")}];

  view3 = [(iPadAudioCallViewController *)self view];
  [view3 frame];
  [v12 setFrame:?];

  layer = [v8 layer];
  [layer addSublayer:v12];

  return v6;
}

- (void)viewSafeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = iPadAudioCallViewController;
  [(iPadAudioCallViewController *)&v4 viewSafeAreaInsetsDidChange];
  [(iPadAudioCallViewController *)self _updateStatusLabelVisibility];
  renderingViewController = [(iPadAudioCallViewController *)self renderingViewController];

  if (renderingViewController)
  {
    [(iPadAudioCallViewController *)self setupNameLabelForAlwaysOnDisplay];
  }
}

- (void)lockScreenVisibilityDidChange:(id)change
{
  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] == 3)
  {
    features = [(iPadAudioCallViewController *)self features];
    isDominoEnabled = [features isDominoEnabled];

    if (isDominoEnabled)
    {
      return;
    }
  }

  else
  {
  }

  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Lock screen visibility did change, refreshing UI", v21, 2u);
  }

  [(iPadAudioCallViewController *)self setCallForBackgroundImage:0];
  callToUseForWallpaper = [(iPadAudioCallViewController *)self callToUseForWallpaper];
  [(iPadAudioCallViewController *)self setCallForBackgroundImage:callToUseForWallpaper animated:1 callDisplayStyleChanged:0];

  [(iPadAudioCallViewController *)self updateCallParticipantsViewControllerCallGroups];
  getParticipantsView_NotWaiting = [(iPadAudioCallViewController *)self getParticipantsView_NotWaiting];
  singleCallLabelView = [getParticipantsView_NotWaiting singleCallLabelView];
  [singleCallLabelView updateLabelsOrderAndLayout];
  middleViewState = [(iPadAudioCallViewController *)self middleViewState];
  [(iPadAudioCallViewController *)self setMiddleViewState:0];
  view = [(UIViewController *)self->_screeningViewController view];
  superview = [view superview];

  if (superview)
  {
    view2 = [(UIViewController *)self->_screeningViewController view];
    [view2 removeFromSuperview];

    layoutGuidesProvider = [(iPadAudioCallViewController *)self layoutGuidesProvider];
    [layoutGuidesProvider updateMiddleShelfStateWithIsOpen:0];

    [(iPadAudioCallViewController *)self removeChildViewController:self->_screeningViewController];
    [(UIViewController *)self->_screeningViewController didMoveToParentViewController:0];
  }

  screeningViewController = self->_screeningViewController;
  self->_screeningViewController = 0;

  [(iPadAudioCallViewController *)self setMiddleViewState:middleViewState];
  bottomBar = [(PHCallViewController *)self bottomBar];
  currentState = [bottomBar currentState];

  bottomBar2 = [(PHCallViewController *)self bottomBar];
  [bottomBar2 setCurrentState:-1];

  bottomBar3 = [(PHCallViewController *)self bottomBar];
  [bottomBar3 setCurrentState:currentState];
}

- (unint64_t)currentDisplayedPosterSourceForCall:(id)call
{
  callCopy = call;
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];

  if (uniqueProxyIdentifier)
  {
    configurationCache = [(iPadAudioCallViewController *)self configurationCache];
    uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
    v8 = [configurationCache objectForKey:uniqueProxyIdentifier2];

    source = [v8 source];
  }

  else
  {
    source = 0;
  }

  return source;
}

+ (NSArray)contactKeysToFetch
{
  if (qword_1003B0EC8 != -1)
  {
    sub_1002565C4();
  }

  v3 = qword_1003B0EC0;

  return v3;
}

- (void)suspendPosterAndCancelDelay:(BOOL)delay
{
  delayCopy = delay;
  renderingViewController = [(iPadAudioCallViewController *)self renderingViewController];

  if (renderingViewController)
  {
    renderingViewController2 = [(iPadAudioCallViewController *)self renderingViewController];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      if (delayCopy)
      {
        suspendPosterAfterDelayBlock = [(iPadAudioCallViewController *)self suspendPosterAfterDelayBlock];

        if (suspendPosterAfterDelayBlock)
        {
          suspendPosterAfterDelayBlock2 = [(iPadAudioCallViewController *)self suspendPosterAfterDelayBlock];
          dispatch_block_cancel(suspendPosterAfterDelayBlock2);

          [(iPadAudioCallViewController *)self setSuspendPosterAfterDelayBlock:0];
        }
      }

      renderingViewController3 = [(iPadAudioCallViewController *)self renderingViewController];
      renderingMode = [renderingViewController3 renderingMode];

      if (renderingMode == 2)
      {
        v12 = sub_100004F84();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SNAP: Setting poster renderingMode to .paused", v14, 2u);
        }

        renderingViewController4 = [(iPadAudioCallViewController *)self renderingViewController];
        [renderingViewController4 setRenderingMode:1];
      }
    }
  }
}

- (void)setShowsCallWaitingParticipantView:(BOOL)view
{
  callWaitingParticipantsViewController = self->_callWaitingParticipantsViewController;
  if (view)
  {
    if (callWaitingParticipantsViewController)
    {
      return;
    }

    v5 = [(iPadAudioCallViewController *)self contactForCall:self->_existingPrioritizedCall];
    view9 = v5;
    if (v5)
    {
      v35 = v5;
      view10 = [NSArray arrayWithObjects:&v35 count:1];
    }

    else
    {
      view10 = &__NSArray0__struct;
    }

    v14 = [PHCallParticipantsViewController alloc];
    callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
    contactsCache = [(iPadAudioCallViewController *)self contactsCache];
    v17 = [(PHCallParticipantsViewController *)v14 initWithCallDisplayStyleManager:callDisplayStyleManager contactsCache:contactsCache contacts:view10];
    v18 = self->_callWaitingParticipantsViewController;
    self->_callWaitingParticipantsViewController = v17;

    [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController setShouldIgnoreUpdates:[(iPadAudioCallViewController *)self participantsViewControllersShouldIgnoreUpdates]];
    [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController setHandlesCallWaitingCalls:1];
    [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController setDelegate:self];
    [(iPadAudioCallViewController *)self addChildViewController:self->_callWaitingParticipantsViewController];
    view = [(iPadAudioCallViewController *)self view];
    view2 = [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController view];
    [view addSubview:view2];

    view3 = [(PHCallParticipantsViewController *)self->_callParticipantsViewController view];
    singleCallLabelView = [(PHCallParticipantsViewController *)view3 singleCallLabelView];
    [singleCallLabelView setPosterNameViewModel:0];

    view4 = [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController view];
    [(iPadAudioCallViewController *)self updatePosterViewModelForParticipantsView:view4];
    [(iPadAudioCallViewController *)self copyCallWaitingConstraintsFromParticipantsView];
    view5 = [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController view];
    [view5 setAlpha:0.0];

    callDisplayStyle = [(ICSCallDisplayStyleManager *)self->_callDisplayStyleManager callDisplayStyle];
    view6 = [(PHCallParticipantsViewController *)self->_callParticipantsViewController view];
    v25 = view6;
    v26 = 1.0;
    if (callDisplayStyle == 2)
    {
      v26 = 0.0;
    }

    [view6 setAlpha:v26];

    [(iPadAudioCallViewController *)self callWaitingAnimationDelay];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000E0B84;
    v34[3] = &unk_100356988;
    v34[4] = self;
    [UIView animateWithDuration:0 delay:v34 options:0 animations:0.5 completion:v27];
  }

  else
  {
    if (!callWaitingParticipantsViewController)
    {
      return;
    }

    v8 = callWaitingParticipantsViewController;
    view7 = [(PHCallParticipantsViewController *)v8 view];
    [view7 setAlpha:1.0];

    view8 = [(PHCallParticipantsViewController *)self->_callParticipantsViewController view];
    [view8 setAlpha:1.0];

    view9 = [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController view];
    singleCallLabelView2 = [view9 singleCallLabelView];
    [singleCallLabelView2 setPosterNameViewModel:0];

    view10 = [(PHCallParticipantsViewController *)self->_callParticipantsViewController view];
    [(iPadAudioCallViewController *)self updatePosterViewModelForParticipantsView:view10];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000E0C0C;
    v31[3] = &unk_100357110;
    v32 = v8;
    selfCopy = self;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000E0CB4;
    v28[3] = &unk_100356D10;
    v29 = v32;
    selfCopy2 = self;
    view3 = v32;
    [UIView animateWithDuration:v31 animations:v28 completion:0.5];

    view4 = v32;
  }
}

- (double)callWaitingAnimationDelay
{
  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle])
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 0.5;
  }

  return v3;
}

- (int64_t)bottomBarStateForCallWaitingCall
{
  callCenter = [(iPadAudioCallViewController *)self callCenter];
  if ([callCenter currentVideoCallCount])
  {

LABEL_8:
    v11 = 9;
    goto LABEL_9;
  }

  callCenter2 = [(iPadAudioCallViewController *)self callCenter];
  isHoldAndAnswerAllowed = [callCenter2 isHoldAndAnswerAllowed];

  if (!isHoldAndAnswerAllowed)
  {
    goto LABEL_8;
  }

  callCenter3 = [(iPadAudioCallViewController *)self callCenter];
  v7 = [callCenter3 callWithStatus:2];
  if (v7)
  {
    v8 = v7;
    callCenter4 = [(iPadAudioCallViewController *)self callCenter];
    v10 = [callCenter4 callWithStatus:1];

    if (v10)
    {
      v11 = 8;
    }

    else
    {
      v11 = 7;
    }
  }

  else
  {

    v11 = 7;
  }

LABEL_9:
  v12 = sub_100004F84();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "AudioCallWaiting: Showing bottom bar state: %ld", &v14, 0xCu);
  }

  return v11;
}

- (void)copyCallWaitingConstraintsFromParticipantsView
{
  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] == 3)
  {
    features = [(iPadAudioCallViewController *)self features];
    isDominoEnabled = [features isDominoEnabled];

    if (isDominoEnabled)
    {
      return;
    }
  }

  else
  {
  }

  getParticipantsView_Waiting = [(iPadAudioCallViewController *)self getParticipantsView_Waiting];
  getParticipantsView_NotWaiting = [(iPadAudioCallViewController *)self getParticipantsView_NotWaiting];
  if (getParticipantsView_Waiting)
  {
    superview = [getParticipantsView_Waiting superview];

    if (superview)
    {
      if (getParticipantsView_NotWaiting)
      {
        [getParticipantsView_Waiting setTranslatesAutoresizingMaskIntoConstraints:0];
        callWaitingLayoutConstraints = [(iPadAudioCallViewController *)self callWaitingLayoutConstraints];
        [NSLayoutConstraint deactivateConstraints:callWaitingLayoutConstraints];

        centerYAnchor = [getParticipantsView_Waiting centerYAnchor];
        centerYAnchor2 = [getParticipantsView_NotWaiting centerYAnchor];
        v27 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
        v30[0] = v27;
        centerXAnchor = [getParticipantsView_Waiting centerXAnchor];
        centerXAnchor2 = [getParticipantsView_NotWaiting centerXAnchor];
        v24 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
        v30[1] = v24;
        topAnchor = [getParticipantsView_Waiting topAnchor];
        topAnchor2 = [getParticipantsView_NotWaiting topAnchor];
        v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v30[2] = v21;
        bottomAnchor = [getParticipantsView_Waiting bottomAnchor];
        bottomAnchor2 = [getParticipantsView_NotWaiting bottomAnchor];
        v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v30[3] = v18;
        leadingAnchor = [getParticipantsView_Waiting leadingAnchor];
        leadingAnchor2 = [getParticipantsView_NotWaiting leadingAnchor];
        v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        v30[4] = v12;
        trailingAnchor = [getParticipantsView_Waiting trailingAnchor];
        trailingAnchor2 = [getParticipantsView_NotWaiting trailingAnchor];
        v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        v30[5] = v15;
        v16 = [NSArray arrayWithObjects:v30 count:6];
        [(iPadAudioCallViewController *)self setCallWaitingLayoutConstraints:v16];

        callWaitingLayoutConstraints2 = [(iPadAudioCallViewController *)self callWaitingLayoutConstraints];
        [NSLayoutConstraint activateConstraints:callWaitingLayoutConstraints2];
      }
    }
  }
}

- (void)applyCallWaitingConstraintsForAmbient
{
  getParticipantsView_Waiting = [(iPadAudioCallViewController *)self getParticipantsView_Waiting];
  if (getParticipantsView_Waiting)
  {
    v10 = getParticipantsView_Waiting;
    superview = [getParticipantsView_Waiting superview];
    getParticipantsView_Waiting = v10;
    if (superview)
    {
      callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
      if ([callDisplayStyleManager callDisplayStyle] == 3)
      {
        features = [(iPadAudioCallViewController *)self features];
        isDominoEnabled = [features isDominoEnabled];

        getParticipantsView_Waiting = v10;
        if (!isDominoEnabled)
        {
          goto LABEL_7;
        }

        view = [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController view];
        [view setTranslatesAutoresizingMaskIntoConstraints:0];

        superview = [(iPadAudioCallViewController *)self ambientParticipantsViewConstraintsForView:v10 largeAvatar:self->_shouldShowLargeAvatarForCallWaiting];
        allValues = [superview allValues];
        [(iPadAudioCallViewController *)self setCallWaitingLayoutConstraints:allValues];

        callDisplayStyleManager = [(iPadAudioCallViewController *)self callWaitingLayoutConstraints];
        [NSLayoutConstraint activateConstraints:callDisplayStyleManager];
      }

      getParticipantsView_Waiting = v10;
    }
  }

LABEL_7:
}

- (void)audioCallControlsViewControllerRequestedKeypadPresentation:(id)presentation
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController: Requested keypad presentation", v5, 2u);
  }

  [(iPadAudioCallViewController *)self setMiddleViewState:2 animated:1];
}

- (void)audioCallControlsViewControllerRequestedKeypadPresentationForFieldMode:(id)mode
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController: Requested keypad presentation for field mode", v6, 2u);
  }

  [(iPadAudioCallViewController *)self setMiddleViewState:2 animated:1];
  callParticipantsViewController = [(iPadAudioCallViewController *)self callParticipantsViewController];
  [callParticipantsViewController setAllowsFieldModeSendButton:1];
}

- (void)audioCallControlsViewControllerRequestedContactsPresentation:(id)presentation forView:(id)view
{
  viewCopy = view;
  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController: Requested Contacts presentation", buf, 2u);
  }

  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1000E1588;
  v13 = &unk_100356D10;
  selfCopy = self;
  v15 = viewCopy;
  v7 = viewCopy;
  v8 = objc_retainBlock(&v10);
  v9 = [PHInCallUtilities sharedInstance:v10];
  [v9 requestPasscodeUnlockWithCompletion:v8];
}

- (void)audioCallControlsViewControllerRequestedAddCallPresentation:(id)presentation forView:(id)view
{
  viewCopy = view;
  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController: Requested Add Call presentation", buf, 2u);
  }

  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1000E1724;
  v13 = &unk_100356D10;
  selfCopy = self;
  v15 = viewCopy;
  v7 = viewCopy;
  v8 = objc_retainBlock(&v10);
  v9 = [PHInCallUtilities sharedInstance:v10];
  [v9 requestPasscodeUnlockWithCompletion:v8];
}

- (void)audioCallControlsViewControllerRequestedAudioRoutesPresentation:(id)presentation
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController: Requested Audio Route presentation", v5, 2u);
  }

  [(iPadAudioCallViewController *)self revealAudioRoutingDeviceListAnimated:1];
}

- (void)audioCallControlsViewControllerRequestedVideoPresentation:(id)presentation
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController: Requested Video presentation", buf, 2u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E1914;
  v7[3] = &unk_1003569B0;
  v7[4] = self;
  v5 = objc_retainBlock(v7);
  v6 = +[PHInCallUtilities sharedInstance];
  [v6 requestPasscodeUnlockWithCompletion:v5];
}

- (void)audioCallControlsViewControllerRequestedInvokeAlert
{
  v5 = +[UIApplication sharedApplication];
  delegate = [v5 delegate];
  alertCoordinator = [delegate alertCoordinator];
  [alertCoordinator invokeAlertWithRequestUnlock:-[iPadAudioCallViewController alertTriggeredByAutoCountdown](self automaticallyInvoked:{"alertTriggeredByAutoCountdown") ^ 1, -[iPadAudioCallViewController alertTriggeredByAutoCountdown](self, "alertTriggeredByAutoCountdown")}];
}

- (void)audioCallControlsViewControllerRequestedShareMedia
{
  features = [(iPadAudioCallViewController *)self features];
  isEnhancedEmergencyEnabled = [features isEnhancedEmergencyEnabled];

  if (isEnhancedEmergencyEnabled)
  {
    emergencyCoordinator = [(iPadAudioCallViewController *)self emergencyCoordinator];
    [emergencyCoordinator handleMediaUploadButtonTapped];
  }
}

- (void)audioCallControlsViewControllerDidTapRTTButton
{
  features = [(iPadAudioCallViewController *)self features];
  if ([features isEnhancedEmergencyEnabled] && (-[iPadAudioCallViewController emergencyCoordinator](self, "emergencyCoordinator"), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    emergencyCoordinator = [(iPadAudioCallViewController *)self emergencyCoordinator];
    eedRTTState = [emergencyCoordinator eedRTTState];

    if (eedRTTState == 3)
    {
      emergencyCoordinator2 = [(iPadAudioCallViewController *)self emergencyCoordinator];
      [emergencyCoordinator2 transitionToRTTState:2];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v8 = sub_10014265C();
  if (!v8)
  {
    return;
  }

  v9 = v8;
  activeCall = [(iPadAudioCallViewController *)self activeCall];
  emergencyCoordinator2 = [v9 viewControllerForCall:activeCall];

  navigationController = [(iPadAudioCallViewController *)self navigationController];
  [navigationController pushViewController:emergencyCoordinator2 animated:1];

LABEL_8:
}

- (void)audioCallControlsViewControllerRequestedMoreMenuFromSourceView:(id)view
{
  viewCopy = view;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController: requested more menu presentation", v11, 2u);
  }

  activeCall = [(iPadAudioCallViewController *)self activeCall];
  v7 = [(iPadAudioCallViewController *)self contactForCall:activeCall];

  v8 = +[UIApplication sharedApplication];
  delegate = [v8 delegate];
  bannerPresentationManager = [delegate bannerPresentationManager];
  [(iPadAudioCallViewController *)self presentMoreMenu:bannerPresentationManager contact:v7 source:viewCopy];
}

- (void)audioCallControlsViewControllerRequestedShareCardFromSourceView:(id)view
{
  viewCopy = view;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController: requested share card presentation", v9, 2u);
  }

  v6 = +[UIApplication sharedApplication];
  delegate = [v6 delegate];
  bannerPresentationManager = [delegate bannerPresentationManager];
  [(iPadAudioCallViewController *)self presentShareCard:bannerPresentationManager source:viewCopy];
}

- (BOOL)videoStreamingIsGoingOn
{
  features = [(iPadAudioCallViewController *)self features];
  if ([features isEnhancedEmergencyEnabled])
  {
    emergencyCoordinator = [(iPadAudioCallViewController *)self emergencyCoordinator];
    if (emergencyCoordinator)
    {
      emergencyCoordinator2 = [(iPadAudioCallViewController *)self emergencyCoordinator];
      videoStreamingIsOnScreen = [emergencyCoordinator2 videoStreamingIsOnScreen];
    }

    else
    {
      videoStreamingIsOnScreen = 0;
    }
  }

  else
  {
    videoStreamingIsOnScreen = 0;
  }

  return videoStreamingIsOnScreen;
}

- (void)audioCallControlsViewControllerDidToggleMuteButton:(BOOL)button
{
  buttonCopy = button;
  if ([(iPadAudioCallViewController *)self audioCallMutedTalkerIsSupported])
  {
    if (!buttonCopy)
    {
      [(iPadAudioCallViewController *)self setDidNotifyMutedCaller:0];
    }

    mutedTalkerBannerViewController = [(iPadAudioCallViewController *)self mutedTalkerBannerViewController];
    [mutedTalkerBannerViewController updatePillViewWithIsMuted:buttonCopy];
  }
}

- (void)audioCallControlsViewControllerDidTapEndButton:(id)button
{
  if ([(PHCallViewController *)self currentState]== 10)
  {

    [(iPadAudioCallViewController *)self handleCancelPressedInCallBufferScreen];
  }

  else
  {
    v4 = +[UIApplication sharedApplication];
    delegate = [v4 delegate];
    mostRecentlyDisconnectedAudioCall = [delegate mostRecentlyDisconnectedAudioCall];

    if (mostRecentlyDisconnectedAudioCall && [mostRecentlyDisconnectedAudioCall isEmergency])
    {
      disconnectedReasonRequiresCallBackUI = [mostRecentlyDisconnectedAudioCall disconnectedReasonRequiresCallBackUI];
    }

    else
    {
      disconnectedReasonRequiresCallBackUI = 0;
    }

    v7 = [mostRecentlyDisconnectedAudioCall canDisplayAlertUI:{-[iPadAudioCallViewController shouldPresentAlertButton](self, "shouldPresentAlertButton")}];
    if (disconnectedReasonRequiresCallBackUI && v7)
    {
      [(iPadAudioCallViewController *)self setCurrentState:0];
    }

    else
    {
      activeCall = [(iPadAudioCallViewController *)self activeCall];
      callUUID = [activeCall callUUID];
      [(iPadAudioCallViewController *)self setUUIDForLocallyDisconnectedCall:callUUID];

      callCenter = [(iPadAudioCallViewController *)self callCenter];
      [callCenter disconnectCurrentCallAndActivateHeld];
    }
  }
}

- (void)audioCallControlsViewControllerRequestedAddCallPresentation:(id)presentation
{
  presentationCopy = presentation;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController: Requested Add Call presentation", buf, 2u);
  }

  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1000E22E4;
  v12 = &unk_100356D10;
  selfCopy = self;
  v14 = presentationCopy;
  v6 = presentationCopy;
  v7 = objc_retainBlock(&v9);
  v8 = [PHInCallUtilities sharedInstance:v9];
  [v8 requestPasscodeUnlockWithCompletion:v7];
}

- (void)localAudioToggledWithIsMuted:(BOOL)muted
{
  mutedCopy = muted;
  if ([(iPadAudioCallViewController *)self audioCallMutedTalkerIsSupported])
  {
    if (!mutedCopy)
    {
      [(iPadAudioCallViewController *)self setDidNotifyMutedCaller:0];
    }

    mutedTalkerBannerViewController = [(iPadAudioCallViewController *)self mutedTalkerBannerViewController];
    [mutedTalkerBannerViewController updatePillViewWithIsMuted:mutedCopy];
  }
}

- (void)audioCallVoiceLoopViewControllerRequestedButtonPresentation
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController: Voice loop controller requested button presentation", v5, 2u);
  }

  voiceLoopManager = [(iPadAudioCallViewController *)self voiceLoopManager];
  [voiceLoopManager stopLoopPlayback];
}

- (void)removeContentViewIfNeeded:(id)needed animated:(BOOL)animated
{
  animatedCopy = animated;
  neededCopy = needed;
  v7 = neededCopy;
  if (neededCopy)
  {
    if (animatedCopy)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000E2598;
      v12[3] = &unk_100356988;
      v13 = neededCopy;
      v8 = objc_retainBlock(v12);
    }

    else
    {
      v8 = 0;
    }

    layoutGuidesProvider = [(iPadAudioCallViewController *)self layoutGuidesProvider];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000E25A4;
    v10[3] = &unk_100356988;
    v11 = v7;
    [layoutGuidesProvider updateMiddleShelfStateWithIsOpen:0 animation:v8 completion:v10];
  }
}

- (void)setMiddleViewState:(unsigned __int16)state animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  stateCopy = state;
  v8 = sub_100004F84();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v102) = stateCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setMiddleViewState: %d", buf, 8u);
  }

  v9 = sub_100004F84();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    buttonsViewController = [(iPadAudioCallViewController *)self buttonsViewController];
    [buttonsViewController view];
    v97 = stateCopy;
    v12 = v11 = animatedCopy;
    buttonsViewController2 = [(iPadAudioCallViewController *)self buttonsViewController];
    view = [buttonsViewController2 view];
    [view alpha];
    v16 = v15;
    buttonsViewController3 = [(iPadAudioCallViewController *)self buttonsViewController];
    view2 = [buttonsViewController3 view];
    superview = [view2 superview];
    *buf = 138412802;
    v102 = v12;
    v103 = 2048;
    v104 = v16;
    v105 = 2112;
    v106 = superview;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "current six-up is: %@, six-up view alpha is: %f, six-up view parent view is: %@", buf, 0x20u);

    animatedCopy = v11;
    stateCopy = v97;
  }

  middleViewState = self->_middleViewState;
  if (middleViewState != stateCopy)
  {
    if (stateCopy <= 2)
    {
      if (stateCopy)
      {
        if (stateCopy != 2)
        {
          goto LABEL_29;
        }

        view3 = [(iPadAudioCallViewController *)self view];
        [view3 bounds];
        [(iPadAudioCallViewController *)self showKeypadWithPerviousMiddleState:middleViewState viewSize:v30, v31];
      }

      else
      {
        view3 = [(iPadAudioCallViewController *)self callParticipantsViewController];
        [view3 resetNameOverrideString];
      }

      goto LABEL_28;
    }

    switch(stateCopy)
    {
      case 3:
        voiceLoopViewController = [(iPadAudioCallViewController *)self voiceLoopViewController];
        view4 = [voiceLoopViewController view];
        superview2 = [view4 superview];

        if (!superview2)
        {
          view5 = [(iPadAudioCallViewController *)self view];
          voiceLoopViewController2 = [(iPadAudioCallViewController *)self voiceLoopViewController];
          view6 = [voiceLoopViewController2 view];
          [view5 addSubview:view6];

          voiceLoopViewController3 = [(iPadAudioCallViewController *)self voiceLoopViewController];
          view7 = [voiceLoopViewController3 view];
          [view7 setTranslatesAutoresizingMaskIntoConstraints:0];

          voiceLoopViewController4 = [(iPadAudioCallViewController *)self voiceLoopViewController];
          view8 = [voiceLoopViewController4 view];
          centerXAnchor = [view8 centerXAnchor];
          view9 = [(iPadAudioCallViewController *)self view];
          centerXAnchor2 = [view9 centerXAnchor];
          v92 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
          v100[0] = v92;
          voiceLoopViewController5 = [(iPadAudioCallViewController *)self voiceLoopViewController];
          view10 = [voiceLoopViewController5 view];
          leadingAnchor = [view10 leadingAnchor];
          view11 = [(iPadAudioCallViewController *)self view];
          leadingAnchor2 = [view11 leadingAnchor];
          v86 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
          v100[1] = v86;
          voiceLoopViewController6 = [(iPadAudioCallViewController *)self voiceLoopViewController];
          view12 = [voiceLoopViewController6 view];
          trailingAnchor = [view12 trailingAnchor];
          view13 = [(iPadAudioCallViewController *)self view];
          trailingAnchor2 = [view13 trailingAnchor];
          v80 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
          v100[2] = v80;
          voiceLoopViewController7 = [(iPadAudioCallViewController *)self voiceLoopViewController];
          view14 = [voiceLoopViewController7 view];
          topAnchor = [view14 topAnchor];
          callParticipantsViewController = [(iPadAudioCallViewController *)self callParticipantsViewController];
          view15 = [callParticipantsViewController view];
          bottomAnchor = [view15 bottomAnchor];
          v73 = [topAnchor constraintEqualToAnchor:bottomAnchor];
          v100[3] = v73;
          voiceLoopViewController8 = [(iPadAudioCallViewController *)self voiceLoopViewController];
          view16 = [voiceLoopViewController8 view];
          bottomAnchor2 = [view16 bottomAnchor];
          bottomBar = [(PHCallViewController *)self bottomBar];
          topLayoutGuide = [bottomBar topLayoutGuide];
          topAnchor2 = [topLayoutGuide topAnchor];
          [bottomAnchor2 constraintEqualToAnchor:topAnchor2];
          v45 = v44 = animatedCopy;
          v100[4] = v45;
          v46 = [NSArray arrayWithObjects:v100 count:5];
          [NSLayoutConstraint activateConstraints:v46];

          animatedCopy = v44;
        }

        callParticipantsViewController2 = [(iPadAudioCallViewController *)self callParticipantsViewController];
        [callParticipantsViewController2 resetNameOverrideString];

        callParticipantsViewController3 = [(iPadAudioCallViewController *)self callParticipantsViewController];
        view17 = [callParticipantsViewController3 view];
        [view17 setNeedsLayout];

        callParticipantsViewController4 = [(iPadAudioCallViewController *)self callParticipantsViewController];
        view18 = [callParticipantsViewController4 view];
        [view18 layoutIfNeeded];

        callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
        v53 = [callDisplayStyleManager callDisplayStyle] != 0;

        view3 = [(PHCallViewController *)self bottomBar];
        [view3 setCurrentState:11 animated:v53 animationCompletionBlock:0];
        goto LABEL_28;
      case 4:
        if ([(iPadAudioCallViewController *)self middleViewState]== 1)
        {
          animatedCopy = 0;
        }

        else
        {
          animatedCopy = animatedCopy;
        }

        screeningViewController = [(iPadAudioCallViewController *)self screeningViewController];
        view19 = [screeningViewController view];
        superview3 = [view19 superview];

        if (!superview3)
        {
          view20 = [(iPadAudioCallViewController *)self view];
          screeningViewController2 = [(iPadAudioCallViewController *)self screeningViewController];
          view21 = [screeningViewController2 view];
          [view20 addSubview:view21];

          screeningViewController3 = [(iPadAudioCallViewController *)self screeningViewController];
          view22 = [screeningViewController3 view];
          [(iPadAudioCallViewController *)self setupMiddleContentView:view22];

          screeningViewController4 = [(iPadAudioCallViewController *)self screeningViewController];
          [(iPadAudioCallViewController *)self updateScreeningTextFieldContainer:screeningViewController4];

          screeningViewController5 = [(iPadAudioCallViewController *)self screeningViewController];
          [screeningViewController5 didMoveToParentViewController:self];
        }

LABEL_32:
        waitOnHoldViewController = self->_waitOnHoldViewController;
        if (waitOnHoldViewController)
        {
          view23 = [(UIViewController *)waitOnHoldViewController view];
          [(iPadAudioCallViewController *)self removeContentViewIfNeeded:view23 animated:animatedCopy];

          v69 = self->_waitOnHoldViewController;
          self->_waitOnHoldViewController = 0;
        }

LABEL_34:
        self->_middleViewState = stateCopy;
        [(iPadAudioCallViewController *)self refreshUseRTTButton];
        [(iPadAudioCallViewController *)self refreshExtensionNumberButton];
        [(iPadAudioCallViewController *)self hideOrShowScreeningBackgroundView];
        frontmostCall = [(iPadAudioCallViewController *)self frontmostCall];
        [(iPadAudioCallViewController *)self updateWaitOnHoldServiceWithCall:frontmostCall];

        [(iPadAudioCallViewController *)self updateBottomShelfWithMiddleViewState:self->_middleViewState callDisplayStyle:[(ICSCallDisplayStyleManager *)self->_callDisplayStyleManager callDisplayStyle]];
        if ([(iPadAudioCallViewController *)self isShowingPoster])
        {
          v99[0] = _NSConcreteStackBlock;
          v99[1] = 3221225472;
          v99[2] = sub_1000E2FF8;
          v99[3] = &unk_100357068;
          v99[4] = self;
          v99[5] = 0x3FF0000000000000;
          [UIView animateWithDuration:v99 animations:0.2];
        }

        return;
      case 5:
        waitOnHoldViewController = [(iPadAudioCallViewController *)self waitOnHoldViewController];

        if (!waitOnHoldViewController)
        {
          view3 = sub_100004F84();
          if (os_log_type_enabled(view3, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, view3, OS_LOG_TYPE_DEFAULT, "[WARN] WaitOnHoldViewController was unexpectedly nil, cannot show WaitOnHold middle view state.", buf, 2u);
          }

          goto LABEL_28;
        }

        if ([(iPadAudioCallViewController *)self middleViewState]== 1)
        {
          animatedCopy = 0;
        }

        else
        {
          animatedCopy = animatedCopy;
        }

        waitOnHoldViewController2 = [(iPadAudioCallViewController *)self waitOnHoldViewController];
        view24 = [waitOnHoldViewController2 view];
        superview4 = [view24 superview];

        if (!superview4)
        {
          view25 = [(iPadAudioCallViewController *)self view];
          waitOnHoldViewController3 = [(iPadAudioCallViewController *)self waitOnHoldViewController];
          view26 = [waitOnHoldViewController3 view];
          [view25 addSubview:view26];

          view3 = [(iPadAudioCallViewController *)self waitOnHoldViewController];
          v28View = [view3 view];
          [(iPadAudioCallViewController *)self setupMiddleContentView:v28View flexibleConstraints:1 bottomPadding:-20.0];

LABEL_28:
        }

        break;
    }

LABEL_29:
    screeningViewController = self->_screeningViewController;
    if (screeningViewController)
    {
      view27 = [(UIViewController *)screeningViewController view];
      [(iPadAudioCallViewController *)self removeContentViewIfNeeded:view27 animated:animatedCopy];

      [(iPadAudioCallViewController *)self removeChildViewController:self->_screeningViewController];
      [(UIViewController *)self->_screeningViewController didMoveToParentViewController:0];
      v66 = self->_screeningViewController;
      self->_screeningViewController = 0;
    }

    if (stateCopy == 5)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }
}

- (void)updateBottomShelfWithMiddleViewState:(unsigned __int16)state callDisplayStyle:(int64_t)style
{
  if (style)
  {
    if (state == 1)
    {
      [(iPadAudioCallViewController *)self updateBottomShelfState:1];
    }

    else if (state != 2)
    {
      [(iPadAudioCallViewController *)self updateBottomShelfState:0];
    }
  }

  else
  {
    [(iPadAudioCallViewController *)self updateBottomShelfState:2];
  }
}

- (void)updateViewsForHeldCallControlsViewIfNeeded
{
  heldCallControlsView = [(iPadAudioCallViewController *)self heldCallControlsView];
  [heldCallControlsView removeFromSuperview];

  [(iPadAudioCallViewController *)self setHeldCallControlsView:0];

  [(iPadAudioCallViewController *)self setupHeldCallControlsViewIfNeeded];
}

- (void)setupHeldCallControlsViewIfNeeded
{
  heldCallControlsView = [(iPadAudioCallViewController *)self heldCallControlsView];

  if (!heldCallControlsView)
  {
    callCenter = [(iPadAudioCallViewController *)self callCenter];
    callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
    v6 = -[iPadAudioCallViewController makeHeldCallControlsViewWithCallCenter:style:](self, "makeHeldCallControlsViewWithCallCenter:style:", callCenter, [callDisplayStyleManager callDisplayStyle]);
    [(iPadAudioCallViewController *)self setHeldCallControlsView:v6];

    heldCallControlsView2 = [(iPadAudioCallViewController *)self heldCallControlsView];

    if (heldCallControlsView2)
    {
      view = [(iPadAudioCallViewController *)self view];
      heldCallControlsView3 = [(iPadAudioCallViewController *)self heldCallControlsView];
      [view addSubview:heldCallControlsView3];

      heldCallControlsView4 = [(iPadAudioCallViewController *)self heldCallControlsView];
      [heldCallControlsView4 setTranslatesAutoresizingMaskIntoConstraints:0];

      heldCallControlsView5 = [(iPadAudioCallViewController *)self heldCallControlsView];
      leadingAnchor = [heldCallControlsView5 leadingAnchor];
      view2 = [(iPadAudioCallViewController *)self view];
      layoutMarginsGuide = [view2 layoutMarginsGuide];
      leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
      v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v30[0] = v24;
      heldCallControlsView6 = [(iPadAudioCallViewController *)self heldCallControlsView];
      trailingAnchor = [heldCallControlsView6 trailingAnchor];
      view3 = [(iPadAudioCallViewController *)self view];
      layoutMarginsGuide2 = [view3 layoutMarginsGuide];
      trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
      v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v30[1] = v13;
      heldCallControlsView7 = [(iPadAudioCallViewController *)self heldCallControlsView];
      bottomAnchor = [heldCallControlsView7 bottomAnchor];
      view4 = [(iPadAudioCallViewController *)self view];
      safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
      bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
      v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v30[2] = v19;
      v20 = [NSArray arrayWithObjects:v30 count:3];
      [NSLayoutConstraint activateConstraints:v20];
    }
  }
}

- (void)updateShareNameAndPhotoHUDPresentationIfNeeded
{
  features = [(iPadAudioCallViewController *)self features];
  isNameAndPhotoC3Enabled = [features isNameAndPhotoC3Enabled];

  if (isNameAndPhotoC3Enabled && ([(PHCallViewController *)self currentState]== 4 || [(PHCallViewController *)self currentState]== 5))
  {
    callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
    callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

    if (callDisplayStyle == 2)
    {
      v10 = +[UIApplication sharedApplication];
      delegate = [v10 delegate];
      bannerPresentationManager = [delegate bannerPresentationManager];
      callCenter = [(iPadAudioCallViewController *)self callCenter];
      [(iPadAudioCallViewController *)self showNameAndPhotoHUDIfNecessaryWithBannerPresentationManager:bannerPresentationManager callCenter:callCenter];
    }
  }
}

- (PHAudioCallControlsViewController)buttonsViewController
{
  buttonsViewController = self->_buttonsViewController;
  if (!buttonsViewController)
  {
    v4 = [PHAudioCallControlsViewController alloc];
    callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
    v6 = [(PHAudioCallControlsViewController *)v4 initWithCallDisplayStyleManager:callDisplayStyleManager];
    v7 = self->_buttonsViewController;
    self->_buttonsViewController = v6;

    [(iPadAudioCallViewController *)self addChildViewController:self->_buttonsViewController];
    [(PHAudioCallControlsViewController *)self->_buttonsViewController setDelegate:self];
    view = [(PHAudioCallControlsViewController *)self->_buttonsViewController view];
    [view updateBackgroundMaterial:1];

    buttonsViewController = self->_buttonsViewController;
  }

  return buttonsViewController;
}

- (UIViewController)screeningViewController
{
  screeningViewController = self->_screeningViewController;
  if (!screeningViewController)
  {
    featureFlags = [(iPadAudioCallViewController *)self featureFlags];
    if ([featureFlags receptionistEnabled])
    {
      [(iPadAudioCallViewController *)self setIsShowingNewTranscriptsView:1];
    }

    else
    {
      featureFlags2 = [(iPadAudioCallViewController *)self featureFlags];
      -[iPadAudioCallViewController setIsShowingNewTranscriptsView:](self, "setIsShowingNewTranscriptsView:", [featureFlags2 LVMEverywhere]);
    }

    isShowingNewTranscriptsView = [(iPadAudioCallViewController *)self isShowingNewTranscriptsView];
    makeViewComposer = [(CNKTranscriptionViewComposerFactory *)self->_screeningViewControllerFactory makeViewComposer];
    frontmostCall = [(iPadAudioCallViewController *)self frontmostCall];
    if (isShowingNewTranscriptsView)
    {
      v9 = [makeViewComposer composeWithCall:frontmostCall createTextField:1 liveReply:{-[iPadAudioCallViewController sendToLiveReply](self, "sendToLiveReply")}];
      v10 = self->_screeningViewController;
      self->_screeningViewController = v9;

      [(iPadAudioCallViewController *)self setSendToLiveReply:0];
    }

    else
    {
      v11 = [makeViewComposer composeWithCall:frontmostCall];
      v12 = self->_screeningViewController;
      self->_screeningViewController = v11;
    }

    [(iPadAudioCallViewController *)self addChildViewController:self->_screeningViewController];
    screeningViewController = self->_screeningViewController;
  }

  return screeningViewController;
}

- (PHAudioCallControlsSupplementalButton)useRTTButton
{
  useRTTButton = self->_useRTTButton;
  if (!useRTTButton)
  {
    v4 = sub_10001A58C();
    frontmostCall = [(iPadAudioCallViewController *)self frontmostCall];
    v6 = [[PHAudioCallControlsSupplementalButton alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v7 = self->_useRTTButton;
    self->_useRTTButton = v6;

    localSenderIdentityUUID = [frontmostCall localSenderIdentityUUID];
    v9 = [v4 rttDisplayName:0 forSubscriptionContextUUID:localSenderIdentityUUID];

    [(PHAudioCallControlsSupplementalButton *)self->_useRTTButton setTitle:v9 forState:0];
    v10 = self->_useRTTButton;
    v11 = [UIImage symbolImageNamed:@"teletype"];
    [(PHAudioCallControlsSupplementalButton *)v10 setImage:v11 forState:0];

    [(PHAudioCallControlsSupplementalButton *)self->_useRTTButton addTarget:self action:"useRTTButtonTapped" forEvents:64];
    useRTTButton = self->_useRTTButton;
  }

  return useRTTButton;
}

- (PHAudioCallControlsSupplementalButton)extensionNumberButton
{
  extensionNumberButton = self->_extensionNumberButton;
  if (!extensionNumberButton)
  {
    v4 = [[PHAudioCallControlsSupplementalButton alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v5 = self->_extensionNumberButton;
    self->_extensionNumberButton = v4;

    [(PHAudioCallControlsSupplementalButton *)self->_extensionNumberButton addTarget:self action:"extensionNumberButtonTapped" forEvents:64];
    extensionNumberButton = self->_extensionNumberButton;
  }

  return extensionNumberButton;
}

- (PHAudioCallControlsSupplementalButton)callTransferButton
{
  callTransferButton = self->_callTransferButton;
  if (!callTransferButton)
  {
    v4 = [[PHAudioCallControlsSupplementalButton alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v5 = self->_callTransferButton;
    self->_callTransferButton = v4;

    [(PHAudioCallControlsSupplementalButton *)self->_callTransferButton addTarget:self action:"callTransferButtonTapped" forEvents:64];
    v6 = self->_callTransferButton;
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"TRANSFER" value:&stru_100361FD0 table:@"InCallService"];
    [(PHAudioCallControlsSupplementalButton *)v6 setTitle:v8 forState:0];

    v9 = self->_callTransferButton;
    v10 = [UIImage symbolImageNamed:@"phone.arrow.right.fill"];
    [(PHAudioCallControlsSupplementalButton *)v9 setImage:v10 forState:0];

    callTransferButton = self->_callTransferButton;
  }

  return callTransferButton;
}

- (PHAudioCallControlsSupplementalButton)mergeCallsButton
{
  mergeCallsButton = self->_mergeCallsButton;
  if (!mergeCallsButton)
  {
    v4 = [[PHAudioCallControlsSupplementalButton alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v5 = self->_mergeCallsButton;
    self->_mergeCallsButton = v4;

    [(PHAudioCallControlsSupplementalButton *)self->_mergeCallsButton addTarget:self action:"mergeCallsButtonTapped" forEvents:64];
    v6 = self->_mergeCallsButton;
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"MERGE" value:&stru_100361FD0 table:@"InCallService"];
    [(PHAudioCallControlsSupplementalButton *)v6 setTitle:v8 forState:0];

    v9 = self->_mergeCallsButton;
    v10 = [UIImage symbolImageNamed:@"arrow.trianglehead.merge"];
    [(PHAudioCallControlsSupplementalButton *)v9 setImage:v10 forState:0];

    mergeCallsButton = self->_mergeCallsButton;
  }

  return mergeCallsButton;
}

- (SOSEmergencyCallVoiceLoopManager)voiceLoopManager
{
  voiceLoopManager = self->_voiceLoopManager;
  if (!voiceLoopManager)
  {
    v4 = [[SOSEmergencyCallVoiceLoopManager alloc] initWithReason:2];
    v5 = self->_voiceLoopManager;
    self->_voiceLoopManager = v4;

    [(SOSEmergencyCallVoiceLoopManager *)self->_voiceLoopManager setDelegate:self];
    voiceLoopManager = self->_voiceLoopManager;
  }

  return voiceLoopManager;
}

- (PHAudioCallVoiceLoopViewController)voiceLoopViewController
{
  voiceLoopViewController = self->_voiceLoopViewController;
  if (!voiceLoopViewController)
  {
    v4 = objc_alloc_init(PHAudioCallVoiceLoopViewController);
    v5 = self->_voiceLoopViewController;
    self->_voiceLoopViewController = v4;

    [(iPadAudioCallViewController *)self addChildViewController:self->_voiceLoopViewController];
    [(PHAudioCallVoiceLoopViewController *)self->_voiceLoopViewController setDelegate:self];
    voiceLoopViewController = self->_voiceLoopViewController;
  }

  return voiceLoopViewController;
}

- (void)bottomBarActionPerformed:(int64_t)performed withCompletionState:(int64_t)state fromBar:(id)bar
{
  barCopy = bar;
  bottomBar = [(PHCallViewController *)self bottomBar];

  if (bottomBar == barCopy)
  {
    [(iPadAudioCallViewController *)self performBottomBarActionType:performed];
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
  v5 = [NSNumber numberWithInteger:4];
  v6 = [NSNumber numberWithInteger:6];
  v7 = [NSNumber numberWithInteger:5];
  v8 = [NSNumber numberWithInteger:1];
  v9 = [NSNumber numberWithInteger:3];
  v10 = [NSArray arrayWithObjects:v5, v6, v7, v8, v9, 0];

  v11 = [NSNumber numberWithInteger:type];
  LODWORD(v6) = [v10 containsObject:v11];

  if (v6)
  {
    v12 = +[TUCallCenter sharedInstance];
    v13 = [v12 callsPassingTest:&stru_100359210];
    firstObject = [v13 firstObject];

    if (firstObject && !self->_shouldIgnoreWaitOnHoldSessionState)
    {
      v131[0] = _NSConcreteStackBlock;
      v131[1] = 3221225472;
      v131[2] = sub_1000E4E94;
      v131[3] = &unk_100359238;
      v131[4] = self;
      v131[5] = type;
      v18 = objc_retainBlock(v131);
      displayName = [firstObject displayName];
      [(iPadAudioCallViewController *)self presentWaitOnHoldEndForAnotherCallAlertWithCallerName:displayName completionHandler:v18];

      goto LABEL_104;
    }
  }

  v15 = sub_100004F84();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    bottomBar = [(PHCallViewController *)self bottomBar];
    v17 = [bottomBar nameForActionType:type];
    *buf = 138412290;
    v133 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "BottomBarActionPerformed: %@", buf, 0xCu);
  }

  switch(type)
  {
    case 1:
      goto LABEL_32;
    case 2:
      inCallRootViewController = [(iPadAudioCallViewController *)self inCallRootViewController];
      [inCallRootViewController requestInCallSceneTransitionToFullScreen];

LABEL_32:
      frontmostCall = [(iPadAudioCallViewController *)self frontmostCall];
      if ([frontmostCall wantsHoldMusic])
      {
        [frontmostCall resetWantsHoldMusic];
        [(iPadAudioCallViewController *)self updateCurrentState];
      }

      else
      {
        callCenter = [(iPadAudioCallViewController *)self callCenter];
        screeningCall = [callCenter screeningCall];

        if ([(iPadAudioCallViewController *)self usesCompactMulticallUI])
        {
          prioritizedCall = [(iPadAudioCallViewController *)self prioritizedCall];
          v91 = [screeningCall isEqualToCall:prioritizedCall];

          v92 = v91 ^ 1;
        }

        else
        {
          v92 = 0;
        }

        if (!screeningCall || (v92 & 1) != 0)
        {
          callCenter2 = [(iPadAudioCallViewController *)self callCenter];
          incomingCall = [callCenter2 incomingCall];

          v106 = sub_100004F84();
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v133 = incomingCall;
            _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "Answering incoming call: %@", buf, 0xCu);
          }

          if (-[iPadAudioCallViewController usesCompactMulticallUI](self, "usesCompactMulticallUI") && (-[iPadAudioCallViewController callCenter](self, "callCenter"), v107 = objc_claimAutoreleasedReturnValue(), [v107 currentCallGroups], v108 = objc_claimAutoreleasedReturnValue(), v109 = objc_msgSend(v108, "count") > 1, v108, v107, v109))
          {
            callCenter4 = [(iPadAudioCallViewController *)self answerRequestForCall:incomingCall];
            callCenter3 = [(iPadAudioCallViewController *)self callCenter];
            v111 = callCenter3;
            if (screeningCall)
            {
              [callCenter3 endActiveOrHeldAndAnswerWithRequest:callCenter4];
            }

            else
            {
              [callCenter3 holdActiveAndAnswerWithRequest:callCenter4];
            }

            analyticsReporter = [(iPadAudioCallViewController *)self analyticsReporter];
            [analyticsReporter reportMultipleCallsWaitingUIAction:3];
          }

          else
          {
            callCenter4 = [(iPadAudioCallViewController *)self callCenter];
            analyticsReporter = [(iPadAudioCallViewController *)self answerRequestForCall:incomingCall];
            [callCenter4 answerWithRequest:analyticsReporter];
          }
        }

        else
        {
          v102 = sub_100004F84();
          if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v133 = screeningCall;
            _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "Answering screened call: %@", buf, 0xCu);
          }

          incomingCall = [(iPadAudioCallViewController *)self answerRequestForCall:screeningCall];
          [incomingCall setBehavior:4];
          callCenter4 = [(iPadAudioCallViewController *)self callCenter];
          [callCenter4 answerWithRequest:incomingCall];
        }
      }

      goto LABEL_103;
    case 4:
      callCenter5 = [(iPadAudioCallViewController *)self callCenter];
      incomingCall2 = [callCenter5 incomingCall];
      v70 = [(iPadAudioCallViewController *)self answerRequestForCall:incomingCall2];

      callCenter6 = [(iPadAudioCallViewController *)self callCenter];
      activeVideoCall = [callCenter6 activeVideoCall];

      callCenter7 = [(iPadAudioCallViewController *)self callCenter];
      analyticsReporter2 = callCenter7;
      if (activeVideoCall)
      {
        [callCenter7 endActiveOrHeldAndAnswerWithRequest:v70];
      }

      else
      {
        isEndAndAnswerAllowed = [callCenter7 isEndAndAnswerAllowed];

        v120 = sub_100004F84();
        v121 = os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT);
        if (isEndAndAnswerAllowed)
        {
          if (v121)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "BottomBar: Ending active and answering incoming call", buf, 2u);
          }

          callCenter8 = [(iPadAudioCallViewController *)self callCenter];
          [callCenter8 endActiveOrHeldAndAnswerWithRequest:v70];
        }

        else
        {
          if (v121)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "BottomBar: Disconnecting all calls", buf, 2u);
          }

          callCenter8 = [(iPadAudioCallViewController *)self callCenter];
          [callCenter8 disconnectAllCalls];
        }

        analyticsReporter2 = [(iPadAudioCallViewController *)self analyticsReporter];
        [analyticsReporter2 reportMultipleCallsWaitingUIAction:2];
      }

      break;
    case 5:
      callCenter9 = [(iPadAudioCallViewController *)self callCenter];
      callCenter10 = [(iPadAudioCallViewController *)self callCenter];
      incomingCall3 = [callCenter10 incomingCall];
      v47 = [(iPadAudioCallViewController *)self answerRequestForCall:incomingCall3];
      [callCenter9 endHeldAndAnswerWithRequest:v47];

      break;
    case 6:
      callCenter11 = [(iPadAudioCallViewController *)self callCenter];
      callCenter12 = [(iPadAudioCallViewController *)self callCenter];
      incomingCall4 = [callCenter12 incomingCall];
      v51 = [(iPadAudioCallViewController *)self answerRequestForCall:incomingCall4];
      [callCenter11 holdActiveAndAnswerWithRequest:v51];

      analyticsReporter3 = [(iPadAudioCallViewController *)self analyticsReporter];
      [analyticsReporter3 reportMultipleCallsWaitingUIAction:3];

      break;
    case 7:
      declineCallService = [(iPadAudioCallViewController *)self declineCallService];
      [declineCallService declineAnsweringFrontMostCallViaUserActionWithCompletionHandler:&stru_100359258];

      break;
    case 10:
      frontmostCall2 = [(iPadAudioCallViewController *)self frontmostCall];
      handle = [frontmostCall2 handle];
      [(iPadAudioCallViewController *)self showBlockAlertForHandle:handle];

      break;
    case 11:
      frontmostCall = [(iPadAudioCallViewController *)self frontmostCall];
      if (frontmostCall)
      {
        if ([(PHCallViewController *)self currentState]== 11 || [(PHCallViewController *)self currentState]== 12)
        {
          [(iPadAudioCallViewController *)self setMiddleViewState:0];
        }

        if ([(iPadAudioCallViewController *)self isCallSmartHoldingSessionActive:frontmostCall])
        {
          [(iPadAudioCallViewController *)self endWaitOnHoldSession];
        }

        callCenter13 = [(iPadAudioCallViewController *)self callCenter];
        [callCenter13 disconnectCall:frontmostCall withReason:2];
      }

LABEL_103:

      break;
    case 14:
    case 19:
    case 37:
      [(iPadAudioCallViewController *)self setCurrentState:0];
      break;
    case 15:
      if ([(PHCallViewController *)self currentState]!= 10)
      {
        goto LABEL_11;
      }

      [(iPadAudioCallViewController *)self handleCancelPressedInCallBufferScreen];
      break;
    case 16:
      callCenter14 = [(iPadAudioCallViewController *)self callCenter];
      [callCenter14 disconnectAllCalls];

      break;
    case 17:
      v128[0] = _NSConcreteStackBlock;
      v128[1] = 3221225472;
      v128[2] = sub_1000E4FE4;
      v128[3] = &unk_100356988;
      v128[4] = self;
      [(iPadAudioCallViewController *)self keypadViewWillDisappearWithCompletion:v128];
      break;
    case 18:
      v76 = +[UIApplication sharedApplication];
      delegate = [v76 delegate];
      mostRecentlyDisconnectedAudioCall = [delegate mostRecentlyDisconnectedAudioCall];

      if (mostRecentlyDisconnectedAudioCall)
      {
        callCenter15 = [(iPadAudioCallViewController *)self callCenter];
        dialRequestForRedial = [mostRecentlyDisconnectedAudioCall dialRequestForRedial];
        [callCenter15 launchAppForDialRequest:dialRequestForRedial completion:0];
      }

      else
      {
        callCenter15 = sub_100004F84();
        if (os_log_type_enabled(callCenter15, OS_LOG_TYPE_ERROR))
        {
          sub_1002565D8();
        }
      }

      goto LABEL_98;
    case 22:
      callCenter16 = [(iPadAudioCallViewController *)self callCenter];
      routeController = [callCenter16 routeController];
      areAuxiliaryRoutesAvailable = [routeController areAuxiliaryRoutesAvailable];

      if (areAuxiliaryRoutesAvailable)
      {
        v36 = +[UIApplication sharedApplication];
        delegate2 = [v36 delegate];
        currentInCallScene = [delegate2 currentInCallScene];
        [currentInCallScene requestTransitionToPresentationMode:2 shouldDismissCMASAlerts:0 analyticsSource:@"iPadSBSUIInCallTransitionAnalyticsSourceAudioRouteButtonPress"];

        [(iPadAudioCallViewController *)self setWaitingForFullScreenAudioRoutes:1];
      }

      else
      {
        callCenter17 = [(iPadAudioCallViewController *)self callCenter];
        routeController2 = [callCenter17 routeController];
        pickedRoute = [routeController2 pickedRoute];
        isSpeaker = [pickedRoute isSpeaker];

        callCenter18 = [(iPadAudioCallViewController *)self callCenter];
        routeController3 = [callCenter18 routeController];
        v99 = routeController3;
        if (isSpeaker)
        {
          mostRecentlyDisconnectedAudioCall = [routeController3 routeForSpeakerDisable];

          if (mostRecentlyDisconnectedAudioCall)
          {
            callCenter19 = [(iPadAudioCallViewController *)self callCenter];
            routeController4 = [callCenter19 routeController];
            [routeController4 pickRoute:mostRecentlyDisconnectedAudioCall];

            callCenter15 = [(iPadAudioCallViewController *)self callParticipantsViewController];
            [callCenter15 setBannerAudioRouteButtonSelected:0];
          }

          else
          {
            callCenter15 = sub_100004F84();
            if (os_log_type_enabled(callCenter15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, callCenter15, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find available route to pick for speaker disable", buf, 2u);
            }
          }
        }

        else
        {
          mostRecentlyDisconnectedAudioCall = [routeController3 routeForSpeakerEnable];

          if (mostRecentlyDisconnectedAudioCall)
          {
            callCenter20 = [(iPadAudioCallViewController *)self callCenter];
            routeController5 = [callCenter20 routeController];
            [routeController5 pickRoute:mostRecentlyDisconnectedAudioCall];

            callCenter15 = [(iPadAudioCallViewController *)self callParticipantsViewController];
            [callCenter15 setBannerAudioRouteButtonSelected:1];
          }

          else
          {
            callCenter15 = sub_100004F84();
            if (os_log_type_enabled(callCenter15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, callCenter15, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find available route to pick for speaker enable", buf, 2u);
            }
          }
        }

LABEL_98:
      }

      break;
    case 23:
      frontmostCall3 = [(iPadAudioCallViewController *)self frontmostCall];
      [frontmostCall3 sendHardPauseDigits];

      break;
    case 24:
      callCenter21 = [(iPadAudioCallViewController *)self callCenter];
      v66 = [callCenter21 currentCallCount] > 1;

      if (v66)
      {
        analyticsReporter4 = [(iPadAudioCallViewController *)self analyticsReporter];
        [analyticsReporter4 reportMultipleCallsWaitingUIAction:4];
      }

      goto LABEL_39;
    case 25:
      featureFlags = [(iPadAudioCallViewController *)self featureFlags];
      v55 = TUCallScreeningEnabledM3();

      if (!v55)
      {
        break;
      }

      if (-[iPadAudioCallViewController usesCompactMulticallUI](self, "usesCompactMulticallUI") && (-[iPadAudioCallViewController callCenter](self, "callCenter"), v56 = objc_claimAutoreleasedReturnValue(), [v56 currentCallGroups], v57 = objc_claimAutoreleasedReturnValue(), v58 = objc_msgSend(v57, "count") > 1, v57, v56, v58))
      {
        callCenter22 = [(iPadAudioCallViewController *)self callCenter];
        v60 = [callCenter22 currentCallCount] > 1;

        if (v60)
        {
          analyticsReporter5 = [(iPadAudioCallViewController *)self analyticsReporter];
          [analyticsReporter5 reportMultipleCallsWaitingUIAction:4];
        }

LABEL_39:
        callCenter23 = [(iPadAudioCallViewController *)self callCenter];
        callCenter24 = [(iPadAudioCallViewController *)self callCenter];
        incomingCall5 = [callCenter24 incomingCall];
        [callCenter23 disconnectCall:incomingCall5 withReason:2];
      }

      else
      {
        v112 = sub_100004F84();
        if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
        {
          frontmostCall4 = [(iPadAudioCallViewController *)self frontmostCall];
          *buf = 138412290;
          v133 = frontmostCall4;
          _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "Answering screened call: %@", buf, 0xCu);
        }

        frontmostCall5 = [(iPadAudioCallViewController *)self frontmostCall];
        if (frontmostCall5)
        {
          v115 = +[UIApplication sharedApplication];
          delegate3 = [v115 delegate];
          answeringMachine = [delegate3 answeringMachine];
          callUUID = [frontmostCall5 callUUID];
          [answeringMachine screenCallWithUUID:callUUID manualScreening:1 completion:&stru_100359278];
        }
      }

      break;
    case 26:
      featureFlags2 = [(iPadAudioCallViewController *)self featureFlags];
      v85 = TUCallScreeningEnabledM3();

      if (v85)
      {
        objc_initWeak(buf, self);
        v86 = +[PHInCallUtilities sharedInstance];
        v126[0] = _NSConcreteStackBlock;
        v126[1] = 3221225472;
        v126[2] = sub_1000E4FF8;
        v126[3] = &unk_100357E78;
        objc_copyWeak(&v127, buf);
        v126[4] = self;
        [v86 requestPasscodeUnlockWithCompletion:v126];

        objc_destroyWeak(&v127);
        objc_destroyWeak(buf);
      }

      break;
    case 29:
      [(iPadAudioCallViewController *)self _leaveMessage];
      break;
    case 32:
      callCenter25 = [(iPadAudioCallViewController *)self callCenter];
      frontmostCall6 = [(iPadAudioCallViewController *)self frontmostCall];
      [callCenter25 setTTYType:1 forCall:frontmostCall6];

      break;
    case 35:
      v20 = +[UIApplication sharedApplication];
      delegate4 = [v20 delegate];
      mostRecentlyDisconnectedAudioCall2 = [delegate4 mostRecentlyDisconnectedAudioCall];

      objc_initWeak(buf, self);
      inCallRootViewController2 = [(iPadAudioCallViewController *)self inCallRootViewController];
      v129[0] = _NSConcreteStackBlock;
      v129[1] = 3221225472;
      v129[2] = sub_1000E4F94;
      v129[3] = &unk_100356E98;
      objc_copyWeak(&v130, buf);
      [inCallRootViewController2 presentBlockAndReportAlertToBlockCall:mostRecentlyDisconnectedAudioCall2 forViewController:self completion:v129];

      objc_destroyWeak(&v130);
      objc_destroyWeak(buf);

      break;
    case 36:
      v25 = +[UIApplication sharedApplication];
      delegate5 = [v25 delegate];
      mostRecentlyDisconnectedAudioCall3 = [delegate5 mostRecentlyDisconnectedAudioCall];

      inCallRootViewController3 = [(iPadAudioCallViewController *)self inCallRootViewController];
      handle2 = [mostRecentlyDisconnectedAudioCall3 handle];
      [inCallRootViewController3 presentCreateContactViewControllerWithHandle:handle2 forViewController:self];

      break;
    case 38:
      v30 = +[UIApplication sharedApplication];
      delegate6 = [v30 delegate];
      alertCoordinator = [delegate6 alertCoordinator];
      [alertCoordinator invokeAlertWithRequestUnlock:-[iPadAudioCallViewController alertTriggeredByAutoCountdown](self automaticallyInvoked:{"alertTriggeredByAutoCountdown") ^ 1, -[iPadAudioCallViewController alertTriggeredByAutoCountdown](self, "alertTriggeredByAutoCountdown")}];

      break;
    case 39:
LABEL_11:
      callCenter26 = [(iPadAudioCallViewController *)self callCenter];
      [callCenter26 disconnectCurrentCallAndActivateHeld];

      break;
    case 40:
      [(iPadAudioCallViewController *)self endWaitOnHoldSession];
      goto LABEL_54;
    case 41:
LABEL_54:
      v87 = +[CNKGameControllerManager shared];
      [v87 focus];

      break;
    default:
      break;
  }

LABEL_104:
}

- (BOOL)shouldShowAnswerRTT
{
  frontmostCall = [(iPadAudioCallViewController *)self frontmostCall];
  if ([frontmostCall isRTT])
  {
    isTTY = 1;
  }

  else
  {
    isTTY = [frontmostCall isTTY];
  }

  return isTTY;
}

- (BOOL)shouldShowUseRTT
{
  callCenter = [(iPadAudioCallViewController *)self callCenter];
  currentCallCount = [callCenter currentCallCount];

  if (currentCallCount != 1)
  {
    frontmostCall = sub_100004F84();
    if (os_log_type_enabled(frontmostCall, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, frontmostCall, OS_LOG_TYPE_DEFAULT, "Multiple calls are currently active; Use RTT button should not be presented.", &v13, 2u);
    }

    goto LABEL_17;
  }

  frontmostCall = [(iPadAudioCallViewController *)self frontmostCall];
  if (([frontmostCall isRTT]& 1) != 0 || ([frontmostCall isTTY]& 1) != 0 || ![frontmostCall supportsTTYWithVoice]|| [frontmostCall status]!= 1)
  {
LABEL_17:
    LOBYTE(v9) = 0;
    goto LABEL_18;
  }

  localSenderIdentityUUID = [frontmostCall localSenderIdentityUUID];
  if (!localSenderIdentityUUID)
  {
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = frontmostCall;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Could not retrieve a sender identity UUID from the frontmost call %@; checking if RTT is available anyway.", &v13, 0xCu);
    }
  }

  senderIdentityClient = [(PHCallViewController *)self senderIdentityClient];
  v9 = [senderIdentityClient isRTTAvailableForSenderIdentityUUID:localSenderIdentityUUID];

  v10 = sub_100004F84();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"should not";
    if (v9)
    {
      v11 = @"should";
    }

    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    v16 = frontmostCall;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Determined that the Use RTT button %@ be presented for the frontmost call %@.", &v13, 0x16u);
  }

LABEL_18:
  return v9;
}

- (BOOL)shouldShowCallTransfer
{
  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] != 3)
  {

LABEL_5:
    callCenter = [(iPadAudioCallViewController *)self callCenter];
    v8 = [callCenter callsPassingTest:&stru_1003592B8];

    if ([v8 count] == 2)
    {
      v9 = [v8 objectAtIndexedSubscript:0];
      if ([v9 isConferenced])
      {
      }

      else
      {
        v10 = [v8 objectAtIndexedSubscript:0];
        provider = [v10 provider];
        identifier = [provider identifier];
        v13 = [v8 objectAtIndexedSubscript:1];
        provider2 = [v13 provider];
        identifier2 = [provider2 identifier];

        if (identifier == identifier2)
        {
          firstObject = [v8 firstObject];
          v18 = [PHInCallUtilities contactStoreForCall:firstObject];

          v19 = [CNPhoneNumber phoneNumberWithStringValue:@"4"];
          v20 = [CNContact predicateForContactMatchingPhoneNumber:v19];

          v38 = CNPhoneNumberStringValueKey;
          v21 = [NSArray arrayWithObjects:&v38 count:1];
          v31 = 0;
          v22 = [v18 unifiedContactsMatchingPredicate:v20 keysToFetch:v21 error:&v31];
          v23 = v31;

          firstObject2 = [v8 firstObject];
          localSenderIdentity = [firstObject2 localSenderIdentity];
          accountUUID = [localSenderIdentity accountUUID];
          uUIDString = [accountUUID UUIDString];
          v28 = [PHInCallUIUtilities isExplicitTransferSupportedForSubscriptionLabelIdentifier:uUIDString];

          v29 = sub_100004F84();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = [v22 count];
            *buf = 134218498;
            v33 = v30;
            v34 = 1024;
            v35 = v28;
            v36 = 2112;
            v37 = v23;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "CallTransferButton: contacts with number 4 have count of %lu,  carrierWantsShowCallTransferButton = %d, error is %@", buf, 0x1Cu);
          }

          if (v23)
          {
            v6 = 0;
          }

          else
          {
            v6 = ([v22 count] != 0) | v28;
          }

          goto LABEL_10;
        }
      }
    }

    v6 = 0;
LABEL_10:

    return v6 & 1;
  }

  features = [(iPadAudioCallViewController *)self features];
  isDominoEnabled = [features isDominoEnabled];

  if ((isDominoEnabled & 1) == 0)
  {
    goto LABEL_5;
  }

  v6 = 0;
  return v6 & 1;
}

- (id)customizedTitleForItemInBar:(id)bar withActionType:(int64_t)type
{
  barCopy = bar;
  bottomBar = [(PHCallViewController *)self bottomBar];

  hardPauseDigitsDisplayString = 0;
  if (type == 23 && bottomBar == barCopy)
  {
    frontmostCall = [(iPadAudioCallViewController *)self frontmostCall];
    if ([frontmostCall hardPauseDigitsState] == 2)
    {
      hardPauseDigitsDisplayString = [frontmostCall hardPauseDigitsDisplayString];
    }

    else
    {
      hardPauseDigitsDisplayString = &stru_100361FD0;
    }
  }

  return hardPauseDigitsDisplayString;
}

- (int64_t)bottomBarCallStateInBar:(id)bar
{
  callCenter = [(iPadAudioCallViewController *)self callCenter];
  bottomBarCallState = [callCenter bottomBarCallState];

  return bottomBarCallState;
}

- (void)showBlockAlertForHandle:(id)handle
{
  handleCopy = handle;
  objc_initWeak(&location, self);
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"BLOCK_UNKNOWN_CALLER_ALERT_TITLE" value:&stru_100361FD0 table:@"InCallService"];
  v7 = [UIAlertController alertControllerWithTitle:v6 message:0 preferredStyle:0];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"BLOCK_UNKNOWN_CALLER_ALERT_ACTION_BLOCK" value:&stru_100361FD0 table:@"InCallService"];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000E5C04;
  v15[3] = &unk_1003592E0;
  objc_copyWeak(&v17, &location);
  v10 = handleCopy;
  v16 = v10;
  v11 = [UIAlertAction actionWithTitle:v9 style:2 handler:v15];
  [v7 addAction:v11];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"BLOCK_UNKNOWN_CALLER_ALERT_ACTION_CANCEL" value:&stru_100361FD0 table:@"InCallService"];
  v14 = [UIAlertAction actionWithTitle:v13 style:1 handler:&stru_100359300];
  [v7 addAction:v14];

  [(iPadAudioCallViewController *)self presentViewController:v7 animated:1 completion:0];
  objc_destroyWeak(&v17);

  objc_destroyWeak(&location);
}

- (void)showStopAlertForCall:(id)call
{
  callCopy = call;
  features = [(iPadAudioCallViewController *)self features];
  lvm_stopEnabled = [features lvm_stopEnabled];

  if (lvm_stopEnabled)
  {
    handle = [callCopy handle];
    if (callCopy && (-[iPadAudioCallViewController features](self, "features"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 lvm_endCallImmediately], v8, v9))
    {
      v10 = [[_TtC13InCallService11PHAssertion alloc] initWithReason:@"PHAudioCallViewControllerDismissalAssertionPresentingBlockFlow"];
      if ([(PHCallViewController *)self currentState]== 11)
      {
        [(iPadAudioCallViewController *)self setMiddleViewState:0];
      }

      callCenter = [(iPadAudioCallViewController *)self callCenter];
      [callCenter disconnectCall:callCopy withReason:2];
    }

    else
    {
      v10 = 0;
    }

    objc_initWeak(location, self);
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"STOP_OR_BLOCK_UNKNOWN_CALLER_ALERT_TITLE" value:&stru_100361FD0 table:@"InCallService"];
    v14 = [UIAlertController alertControllerWithTitle:v13 message:0 preferredStyle:0];

    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"STOP_AND_BLOCK_UNKNOWN_CALLER_ALERT_ACTION_BLOCK" value:&stru_100361FD0 table:@"InCallService"];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000E609C;
    v33[3] = &unk_100359328;
    objc_copyWeak(&v37, location);
    v17 = handle;
    v34 = v17;
    selfCopy = self;
    v18 = v10;
    v36 = v18;
    v19 = [UIAlertAction actionWithTitle:v16 style:2 handler:v33];
    [v14 addAction:v19];

    v20 = +[NSBundle mainBundle];
    v21 = [v20 localizedStringForKey:@"STOP_AND_BLOCK_UNKNOWN_CALLER_ALERT_ACTION_STOP" value:&stru_100361FD0 table:@"InCallService"];
    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_1000E6178;
    v28 = &unk_100359328;
    objc_copyWeak(&v32, location);
    selfCopy2 = self;
    v22 = v18;
    v30 = v22;
    v23 = v17;
    v31 = v23;
    v24 = [UIAlertAction actionWithTitle:v21 style:1 handler:&v25];
    [v14 addAction:{v24, v25, v26, v27, v28, selfCopy2}];

    [(iPadAudioCallViewController *)self presentViewController:v14 animated:1 completion:0];
    objc_destroyWeak(&v32);

    objc_destroyWeak(&v37);
    objc_destroyWeak(location);
  }
}

- (id)answerRequestForCall:(id)call
{
  callCopy = call;
  v5 = [[TUAnswerRequest alloc] initWithCall:callCopy];

  callCenter = [(iPadAudioCallViewController *)self callCenter];
  routeController = [callCenter routeController];
  pickedRoute = [routeController pickedRoute];

  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] != 3)
  {

    goto LABEL_9;
  }

  features = [(iPadAudioCallViewController *)self features];
  isDominoEnabled = [features isDominoEnabled];
  if (!isDominoEnabled || !pickedRoute)
  {

    if (!isDominoEnabled)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if ([(iPadAudioCallViewController *)self isPickedRouteSpeaker])
  {

LABEL_8:
    [v5 setSourceIdentifier:TUCallSourceIdentifierSpeakerRoute];
    goto LABEL_9;
  }

  isPickedRouteReceiver = [(iPadAudioCallViewController *)self isPickedRouteReceiver];

  if (isPickedRouteReceiver)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v5;
}

- (void)gameControllerDidChangeContext
{
  callParticipantsViewController = [(iPadAudioCallViewController *)self callParticipantsViewController];
  [callParticipantsViewController gameControllerDidChangeContext];
}

- (void)_leaveMessage
{
  v3 = +[UIApplication sharedApplication];
  delegate = [v3 delegate];
  mostRecentlyDisconnectedAudioCall = [delegate mostRecentlyDisconnectedAudioCall];

  featureFlags = [(iPadAudioCallViewController *)self featureFlags];
  LODWORD(delegate) = TUCallScreeningEnabled();

  if (delegate && !mostRecentlyDisconnectedAudioCall)
  {
    callCenter = [(iPadAudioCallViewController *)self callCenter];
    mostRecentlyDisconnectedAudioCall = [callCenter screeningCall];
  }

  handle = [mostRecentlyDisconnectedAudioCall handle];
  value = [handle value];

  v10 = sub_100004F84();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = mostRecentlyDisconnectedAudioCall;
    v18 = 2112;
    v19 = value;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Call %@; Destination ID %@", &v16, 0x16u);
  }

  if ([value destinationIdIsPhoneNumber])
  {
    v11 = CPPhoneNumberCopyCountryCodeForIncomingTextMessage();
    if (!v11)
    {
      v11 = TUActiveCountryCode();
    }

    v12 = TUNetworkCountryCode();
    v13 = TUNumberToDial();

    value = v13;
  }

  if (value && [value length])
  {
    v14 = objc_alloc_init(MFMessageComposeViewController);
    v15 = [NSArray arrayWithObject:value];
    [v14 setRecipients:v15];

    [v14 setBody:&stru_100361FD0];
    [v14 setMessageComposeDelegate:self];
    [v14 _setCanEditRecipients:0];
    [(iPadAudioCallViewController *)self presentViewController:v14 animated:1 completion:0];
  }

  else
  {
    v14 = sub_100004F84();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10025660C();
    }
  }
}

- (BOOL)allowsOrientationChangeEvents
{
  v2 = +[UIDevice currentDevice];
  if (objc_opt_respondsToSelector())
  {
    v3 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v3 userInterfaceIdiom];

    v5 = userInterfaceIdiom == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000E6728;
  v4[3] = &unk_100356988;
  v4[4] = self;
  [(iPadAudioCallViewController *)self dismissViewControllerAnimated:1 completion:v4];
}

- (BOOL)allowsMenuButtonDismissal
{
  callCenter = [(iPadAudioCallViewController *)self callCenter];
  incomingCall = [callCenter incomingCall];
  v4 = incomingCall == 0;

  return v4;
}

- (BOOL)allowsBanners
{
  callCenter = [(iPadAudioCallViewController *)self callCenter];
  incomingCall = [callCenter incomingCall];
  v4 = incomingCall == 0;

  return v4;
}

- (BOOL)desiresLockButtonEvents
{
  selfCopy = self;
  callCenter = [(iPadAudioCallViewController *)self callCenter];
  LOBYTE(selfCopy) = [(iPadAudioCallViewController *)selfCopy desiresLockButtonEventsForCallContainer:callCenter];

  return selfCopy;
}

- (BOOL)desiresLockButtonEventsForCallContainer:(id)container
{
  containerCopy = container;
  incomingCall = [containerCopy incomingCall];
  if (incomingCall || [containerCopy currentCallCount] && -[iPadAudioCallViewController isPickedRouteReceiver](self, "isPickedRouteReceiver"))
  {
    v6 = 1;
  }

  else
  {
    features = [(iPadAudioCallViewController *)self features];
    if ([features lvmEverywhereEnabled])
    {
      screeningCall = [containerCopy screeningCall];
      v6 = screeningCall != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)setPrioritizedCall:(id)call
{
  [(iPadAudioCallViewController *)self updateCurrentState];
  callToUseForWallpaper = [(iPadAudioCallViewController *)self callToUseForWallpaper];
  WeakRetained = objc_loadWeakRetained(&self->_prioritizedCall);
  -[iPadAudioCallViewController setCallForBackgroundImage:animated:callDisplayStyleChanged:](self, "setCallForBackgroundImage:animated:callDisplayStyleChanged:", callToUseForWallpaper, 1, [WeakRetained status] == 4);

  currentState = [(PHCallViewController *)self currentState];

  [(iPadAudioCallViewController *)self _updatePosterStatusLabelForState:currentState];
}

- (TUCall)activeCall
{
  if ([(iPadAudioCallViewController *)self usesCompactMulticallUI]&& ([(iPadAudioCallViewController *)self prioritizedCall], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    prioritizedCall = [(iPadAudioCallViewController *)self prioritizedCall];
  }

  else
  {
    callCenter = [(iPadAudioCallViewController *)self callCenter];
    prioritizedCall = [callCenter callWithStatus:1];

    if (!prioritizedCall)
    {
      callCenter2 = [(iPadAudioCallViewController *)self callCenter];
      prioritizedCall = [callCenter2 callWithStatus:4];

      if (!prioritizedCall)
      {
        callCenter3 = [(iPadAudioCallViewController *)self callCenter];
        prioritizedCall = [callCenter3 callWithStatus:3];

        if (!prioritizedCall)
        {
          callCenter4 = [(iPadAudioCallViewController *)self callCenter];
          prioritizedCall = [callCenter4 callWithStatus:2];
        }
      }
    }
  }

  return prioritizedCall;
}

- (TUCall)frontmostCall
{
  if ([(iPadAudioCallViewController *)self usesCompactMulticallUI])
  {
    activeCall = [(iPadAudioCallViewController *)self activeCall];
  }

  else
  {
    callCenter = [(iPadAudioCallViewController *)self callCenter];
    activeCall = [callCenter frontmostCall];
  }

  return activeCall;
}

- (void)hardwareButtonEventNotification:(id)notification
{
  notificationCopy = notification;
  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    userInfo = [notificationCopy userInfo];
    v33 = 138412290;
    *v34 = userInfo;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController received a hardware button event (%@)", &v33, 0xCu);
  }

  activeCall = [(iPadAudioCallViewController *)self activeCall];
  if (([activeCall isRTT] & 1) != 0 || objc_msgSend(activeCall, "isTTY"))
  {
    v9 = sub_10014265C();
    isKindOfClass = v9;
    if (v9)
    {
      navigationController = [(iPadAudioCallViewController *)self navigationController];
      visibleViewController = [navigationController visibleViewController];
      isKindOfClass = objc_opt_isKindOfClass();

      view = sub_100004F84();
      if (os_log_type_enabled(view, OS_LOG_TYPE_DEFAULT))
      {
        v33 = 67109120;
        *v34 = isKindOfClass & 1;
        _os_log_impl(&_mh_execute_header, view, OS_LOG_TYPE_DEFAULT, "setting isShowingRTTConversationViewController: %d", &v33, 8u);
      }
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  isViewLoaded = [(iPadAudioCallViewController *)self isViewLoaded];
  v14 = isViewLoaded;
  if (isViewLoaded)
  {
    view = [(iPadAudioCallViewController *)self view];
    window = [view window];
    if ((window != 0) | isKindOfClass & 1)
    {

      goto LABEL_19;
    }
  }

  else if (isKindOfClass)
  {
    goto LABEL_19;
  }

  inCallRootViewController = [(iPadAudioCallViewController *)self inCallRootViewController];
  isDisplayStyleMiniWindow = [inCallRootViewController isDisplayStyleMiniWindow];

  if (v14)
  {

    if ((isDisplayStyleMiniWindow & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_19:
    userInfo2 = [notificationCopy userInfo];
    v18 = [userInfo2 valueForKey:@"kPHHardwareButtonEventType"];

    callCenter = [(iPadAudioCallViewController *)self callCenter];
    incomingCall = [callCenter incomingCall];

    if (v18 == @"kPHHardwareButtonEventTypeLockButton")
    {
      [(iPadAudioCallViewController *)self handleDeviceLockEventWithSourceType:1];
    }

    else
    {
      if (v18 == @"kPHHardwareButtonEventTypeVolumeDownButton" || v18 == @"kPHHardwareButtonEventTypeVolumeUpButton")
      {
        v29 = sub_100004F84();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v33) = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController handling kPHHardwareButtonEventTypeVolumeDownButton || kPHHardwareButtonEventTypeVolumeUpButton buttonType", &v33, 2u);
        }

        [incomingCall suppressRingtone];
        goto LABEL_35;
      }

      if (v18 == @"kPHHardwareButtonEventTypeHeadsetButton")
      {
        v30 = sub_100004F84();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          callCenter2 = [(iPadAudioCallViewController *)self callCenter];
          incomingCall2 = [callCenter2 incomingCall];
          v33 = 138412546;
          *v34 = incomingCall2;
          *&v34[8] = 2112;
          v35 = activeCall;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController handling kPHHardwareButtonEventTypeHeadsetButton buttonType (incoming call = %@, active call = %@)", &v33, 0x16u);
        }

        callCenter3 = [(iPadAudioCallViewController *)self callCenter];
        [callCenter3 handleActionForWiredHeadsetMiddleButtonPress];
        goto LABEL_34;
      }

      if (v18 == @"kPHHardwareButtonEventTypeHeadsetButtonLongPress")
      {
        v25 = sub_100004F84();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          callCenter4 = [(iPadAudioCallViewController *)self callCenter];
          incomingCall3 = [callCenter4 incomingCall];
          v33 = 138412290;
          *v34 = incomingCall3;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController handling kPHHardwareButtonEventTypeHeadsetButtonLongPress buttonType (incoming call = %@)", &v33, 0xCu);
        }

        callCenter3 = [(iPadAudioCallViewController *)self callCenter];
        [callCenter3 handleActionForWiredHeadsetMiddleButtonLongPress];
LABEL_34:
      }
    }

LABEL_35:

    goto LABEL_36;
  }

  if (isDisplayStyleMiniWindow)
  {
    goto LABEL_19;
  }

LABEL_16:
  v18 = sub_100004F84();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    isViewLoaded2 = [(iPadAudioCallViewController *)self isViewLoaded];
    view2 = [(iPadAudioCallViewController *)self view];
    window2 = [view2 window];
    v33 = 67109376;
    *v34 = isViewLoaded2;
    *&v34[4] = 1024;
    *&v34[6] = window2 != 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] iPadAudioCallViewController will not handle the hardware button event as the view is not loaded (viewLoaded = %d) or we have no window (window exists = %d)", &v33, 0xEu);
  }

LABEL_36:
}

- (void)handleDeviceLockEventWithSourceType:(int64_t)type
{
  v22.receiver = self;
  v22.super_class = iPadAudioCallViewController;
  [(PHCallViewController *)&v22 handleDeviceLockEventWithSourceType:?];
  activeCall = [(iPadAudioCallViewController *)self activeCall];
  callCenter = [(iPadAudioCallViewController *)self callCenter];
  resolvedIncomingCall = [callCenter resolvedIncomingCall];

  isPickedRouteReceiver = [(iPadAudioCallViewController *)self isPickedRouteReceiver];
  v9 = sub_100004F84();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    v24 = isPickedRouteReceiver;
    v25 = 1024;
    v26 = activeCall != 0;
    v27 = 1024;
    v28 = resolvedIncomingCall != 0;
    v29 = 1024;
    typeCopy = type;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController handling device lock event isPickedRouteReceiver=%d, activeCall=%d, incomingCall=%d, sourceType=%d", buf, 0x1Au);
  }

  if (type == 2)
  {
    if ((resolvedIncomingCall != 0) | isPickedRouteReceiver & 1)
    {
      declineCallService = [(iPadAudioCallViewController *)self declineCallService];
      [declineCallService declineAnsweringCallDueToLockEventWithCurrentActiveCall:activeCall completionHandler:&stru_100359348];
LABEL_25:

      goto LABEL_26;
    }

LABEL_12:
    if (((activeCall != 0) & isPickedRouteReceiver) == 1)
    {
      goto LABEL_13;
    }

LABEL_10:
    declineCallService2 = sub_100004F84();
    if (os_log_type_enabled(declineCallService2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, declineCallService2, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController: Not suppressing ringtone or declining call.", buf, 2u);
    }

    goto LABEL_15;
  }

  if (!resolvedIncomingCall)
  {
    goto LABEL_12;
  }

  if (([resolvedIncomingCall shouldSuppressRingtone] & 1) == 0)
  {
    v14 = +[UIApplication sharedApplication];
    delegate = [v14 delegate];
    currentInCallScene = [delegate currentInCallScene];
    delegate2 = [currentInCallScene delegate];
    callAnalyticsLogger = [delegate2 callAnalyticsLogger];
    uniqueProxyIdentifierUUID = [resolvedIncomingCall uniqueProxyIdentifierUUID];
    [callAnalyticsLogger ringerMutedForCallUUID:uniqueProxyIdentifierUUID];

    [resolvedIncomingCall suppressRingtone];
    goto LABEL_20;
  }

  if (([resolvedIncomingCall shouldSuppressRingtone] & 1) == 0 && ((activeCall != 0) & isPickedRouteReceiver) == 0)
  {
    goto LABEL_10;
  }

LABEL_13:
  v12 = +[PHInCallUtilities sharedInstance];
  isLockToEndCallEnabled = [v12 isLockToEndCallEnabled];

  if (isLockToEndCallEnabled)
  {
    declineCallService2 = [(iPadAudioCallViewController *)self declineCallService];
    [declineCallService2 declineAnsweringCallDueToLockEventWithCurrentActiveCall:activeCall completionHandler:&stru_100359368];
LABEL_15:

    goto LABEL_20;
  }

  v20 = sub_100004F84();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "... and requesting lock on next dismiss because Lock-to-End is disabled through accessibility setting.", buf, 2u);
  }

  +[PHInCallRootViewController setShouldLockDeviceOnNextDismiss];
LABEL_20:
  if (type == 1 && [(iPadAudioCallViewController *)self videoStreamingIsGoingOn])
  {
    v21 = sub_100004F84();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "EnhancedEmergency: pause video if necessary when locking device", buf, 2u);
    }

    declineCallService = [(iPadAudioCallViewController *)self emergencyCoordinator];
    [declineCallService handleDeviceLockEvent];
    goto LABEL_25;
  }

LABEL_26:
}

- (BOOL)isPickedRouteReceiver
{
  callCenter = [(iPadAudioCallViewController *)self callCenter];
  routeController = [callCenter routeController];
  pickedRoute = [routeController pickedRoute];
  isReceiver = [pickedRoute isReceiver];

  return isReceiver;
}

- (BOOL)isPickedRouteSpeaker
{
  callCenter = [(iPadAudioCallViewController *)self callCenter];
  routeController = [callCenter routeController];
  pickedRoute = [routeController pickedRoute];
  isSpeaker = [pickedRoute isSpeaker];

  return isSpeaker;
}

- (void)setupAmbientAudioRoutesControlViewIfNeeded
{
  if (!self->_ambientAudioRoutesControlView)
  {
    callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
    if ([callDisplayStyleManager callDisplayStyle] == 3)
    {
      features = [(iPadAudioCallViewController *)self features];
      isDominoEnabled = [features isDominoEnabled];

      if (!isDominoEnabled)
      {
        return;
      }

      v5 = objc_alloc_init(PHAmbientAudioRoutesControlView);
      buttonsViewController = [(iPadAudioCallViewController *)self buttonsViewController];
      [(PHAmbientAudioRoutesControlView *)v5 setDelegate:buttonsViewController];

      [(PHAmbientAudioRoutesControlView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
      ambientAudioRoutesControlView = self->_ambientAudioRoutesControlView;
      self->_ambientAudioRoutesControlView = &v5->super;
      v8 = v5;

      view = [(iPadAudioCallViewController *)self view];
      [view addSubview:self->_ambientAudioRoutesControlView];

      topAnchor = [(UIView *)self->_ambientAudioRoutesControlView topAnchor];
      view2 = [(iPadAudioCallViewController *)self view];
      topAnchor2 = [view2 topAnchor];
      +[PHUIConfiguration ambientAudioRoutesInset];
      v13 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
      [v13 setActive:1];

      callDisplayStyleManager = [(UIView *)self->_ambientAudioRoutesControlView trailingAnchor];
      view3 = [(iPadAudioCallViewController *)self view];
      trailingAnchor = [view3 trailingAnchor];
      +[PHUIConfiguration ambientAudioRoutesInset];
      v17 = v16;

      v18 = [callDisplayStyleManager constraintEqualToAnchor:trailingAnchor constant:-v17];
      [v18 setActive:1];
    }
  }
}

- (void)updateAmbientAudioRoutesVisibility
{
  [(iPadAudioCallViewController *)self setupAmbientAudioRoutesControlViewIfNeeded];
  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] != 3)
  {
    goto LABEL_7;
  }

  features = [(iPadAudioCallViewController *)self features];
  if (([features isDominoEnabled] & 1) == 0)
  {

LABEL_7:
    goto LABEL_8;
  }

  middleViewState = [(iPadAudioCallViewController *)self middleViewState];

  if (middleViewState != 1)
  {
LABEL_8:
    v11 = 1;
    goto LABEL_9;
  }

  ambientAudioRoutesControlView = [(iPadAudioCallViewController *)self ambientAudioRoutesControlView];
  isHidden = [ambientAudioRoutesControlView isHidden];

  if (isHidden)
  {
    ambientAudioRoutesControlView2 = [(iPadAudioCallViewController *)self ambientAudioRoutesControlView];
    [_TtC13InCallService27AmbientAnimationCoordinator show:ambientAudioRoutesControlView2 completion:0];

    ambientAudioRoutesControlView3 = [(iPadAudioCallViewController *)self ambientAudioRoutesControlView];
    [ambientAudioRoutesControlView3 setHidden:0];

    view = [(iPadAudioCallViewController *)self view];
    ambientAudioRoutesControlView4 = [(iPadAudioCallViewController *)self ambientAudioRoutesControlView];
    [view bringSubviewToFront:ambientAudioRoutesControlView4];

    goto LABEL_10;
  }

  v11 = 0;
LABEL_9:
  view = [(iPadAudioCallViewController *)self ambientAudioRoutesControlView];
  [view setHidden:v11];
LABEL_10:
}

- (void)setViewsHiddenForAudioRoutes:(BOOL)routes animated:(BOOL)animated
{
  animatedCopy = animated;
  v7 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v7 userInterfaceIdiom];

  if (userInterfaceIdiom != 1)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000E7868;
    v11[3] = &unk_100356BB8;
    routesCopy = routes;
    v11[4] = self;
    v9 = objc_retainBlock(v11);
    v10 = v9;
    if (animatedCopy)
    {
      [UIView animateWithDuration:v9 animations:0.25];
    }

    else
    {
      (v9[2])(v9);
    }
  }
}

- (void)revealAudioRoutingDeviceListAnimatedIfNeeded
{
  callCenter = [(iPadAudioCallViewController *)self callCenter];
  routeController = [callCenter routeController];

  areNonRelayAuxiliaryRoutesAvailable = [routeController areNonRelayAuxiliaryRoutesAvailable];
  v5 = routeController;
  if (areNonRelayAuxiliaryRoutesAvailable)
  {
    pickedRoute = [routeController pickedRoute];
    v7 = pickedRoute;
    if (!pickedRoute || (v8 = [pickedRoute deviceType], v8 > 0x1D) || ((1 << v8) & 0x24140002) == 0 || (objc_msgSend(v7, "isPreferredAndActive") & 1) == 0)
    {
      [(iPadAudioCallViewController *)self revealAudioRoutingDeviceListAnimated:1];
    }

    v5 = routeController;
  }

  _objc_release_x1(areNonRelayAuxiliaryRoutesAvailable, v5);
}

- (void)revealAudioRoutingDeviceListAnimated:(BOOL)animated
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Revealing audio routing device list", buf, 2u);
  }

  buttonsViewController = [(iPadAudioCallViewController *)self buttonsViewController];
  if ([buttonsViewController isViewLoaded])
  {
    buttonsViewController2 = [(iPadAudioCallViewController *)self buttonsViewController];
    view = [buttonsViewController2 view];
    window = [view window];

    if (window)
    {
      callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
      if ([callDisplayStyleManager callDisplayStyle] == 3)
      {
        features = [(iPadAudioCallViewController *)self features];
        if ([features isDominoEnabled])
        {
          ambientAudioRoutesControlView = [(iPadAudioCallViewController *)self ambientAudioRoutesControlView];

          if (ambientAudioRoutesControlView)
          {
            ambientAudioRoutesControlView2 = [(iPadAudioCallViewController *)self ambientAudioRoutesControlView];
            button = [ambientAudioRoutesControlView2 button];
            goto LABEL_16;
          }

LABEL_14:
          currentMiddleView = [(iPadAudioCallViewController *)self currentMiddleView];
          v21 = objc_opt_respondsToSelector();

          if ((v21 & 1) == 0)
          {
            v14 = 0;
LABEL_18:
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            interactions = [v14 interactions];
            v23 = [interactions countByEnumeratingWithState:&v35 objects:v39 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v36;
LABEL_20:
              v26 = 0;
              while (1)
              {
                if (*v36 != v25)
                {
                  objc_enumerationMutation(interactions);
                }

                v27 = *(*(&v35 + 1) + 8 * v26);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  break;
                }

                if (v24 == ++v26)
                {
                  v24 = [interactions countByEnumeratingWithState:&v35 objects:v39 count:16];
                  if (v24)
                  {
                    goto LABEL_20;
                  }

                  goto LABEL_26;
                }
              }

              buttonsViewController3 = v27;

              if (!buttonsViewController3)
              {
                goto LABEL_29;
              }

              [v14 bounds];
              v29 = v28;
              [v14 bounds];
              v31 = v29 + v30 * 0.5;
              [v14 bounds];
              v33 = v32;
              [v14 bounds];
              [buttonsViewController3 _presentMenuAtLocation:v31, v33 + v34 * 0.5];
            }

            else
            {
LABEL_26:

LABEL_29:
              buttonsViewController3 = sub_100004F84();
              if (os_log_type_enabled(buttonsViewController3, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v41 = v14;
                _os_log_impl(&_mh_execute_header, buttonsViewController3, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find menu interaction for audio routes button: %@", buf, 0xCu);
              }
            }

            goto LABEL_31;
          }

          ambientAudioRoutesControlView2 = [(iPadAudioCallViewController *)self currentMiddleView];
          button = [ambientAudioRoutesControlView2 buttonForControlType:3];
LABEL_16:
          v14 = button;

          goto LABEL_18;
        }
      }

      goto LABEL_14;
    }
  }

  else
  {
  }

  v14 = sub_100004F84();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    buttonsViewController3 = [(iPadAudioCallViewController *)self buttonsViewController];
    isViewLoaded = [buttonsViewController3 isViewLoaded];
    buttonsViewController4 = [(iPadAudioCallViewController *)self buttonsViewController];
    view2 = [buttonsViewController4 view];
    window2 = [view2 window];
    *buf = 67109378;
    *v41 = isViewLoaded;
    *&v41[4] = 2112;
    *&v41[6] = window2;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not presenting audio routing device list since isViewLoaded: %d; window: %@", buf, 0x12u);

LABEL_31:
  }
}

- (id)audioRouteMenu
{
  routeListController = [(iPadAudioCallViewController *)self routeListController];

  if (!routeListController)
  {
    v4 = [PHAudioRoutingMenuController menuControllerWithCallStyle:1 dataSource:self delegate:self];
    [(iPadAudioCallViewController *)self setRouteListController:v4];
  }

  routeListController2 = [(iPadAudioCallViewController *)self routeListController];
  menu = [routeListController2 menu];

  return menu;
}

- (id)routesForAudioRoutingMenuController:(id)controller
{
  callCenter = [(iPadAudioCallViewController *)self callCenter];
  routeController = [callCenter routeController];
  sortedRoutes = [routeController sortedRoutes];

  return sortedRoutes;
}

- (void)audioRoutingMenuController:(id)controller didSelectRoute:(id)route
{
  routeCopy = route;
  callCenter = [(iPadAudioCallViewController *)self callCenter];
  routeController = [callCenter routeController];
  [routeController pickRoute:routeCopy];

  features = [(iPadAudioCallViewController *)self features];
  if ([features isEnhancedEmergencyEnabled])
  {
    emergencyCoordinator = [(iPadAudioCallViewController *)self emergencyCoordinator];
    if (emergencyCoordinator)
    {
      v9 = emergencyCoordinator;
      emergencyCoordinator2 = [(iPadAudioCallViewController *)self emergencyCoordinator];
      eedRTTState = [emergencyCoordinator2 eedRTTState];

      if (!eedRTTState)
      {
        return;
      }

      features = [(iPadAudioCallViewController *)self emergencyCoordinator];
      [features updateRTTAudioRouteButton];
    }
  }
}

- (void)routesChangedForRouteController:(id)controller
{
  controllerCopy = controller;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController get notified audio routes changed", v18, 2u);
  }

  [(iPadAudioCallViewController *)self updateCurrentState];
  routeListController = [(iPadAudioCallViewController *)self routeListController];
  [routeListController reload];

  v7 = +[UIApplication sharedApplication];
  delegate = [v7 delegate];
  currentInCallScene = [delegate currentInCallScene];
  delegate2 = [currentInCallScene delegate];
  callAnalyticsLogger = [delegate2 callAnalyticsLogger];
  pickedRoute = [controllerCopy pickedRoute];

  [callAnalyticsLogger audioRouteIsHandsfree:{objc_msgSend(pickedRoute, "isReceiver") ^ 1}];
  features = [(iPadAudioCallViewController *)self features];
  if ([features isEnhancedEmergencyEnabled])
  {
    emergencyCoordinator = [(iPadAudioCallViewController *)self emergencyCoordinator];
    if (emergencyCoordinator)
    {
      v15 = emergencyCoordinator;
      emergencyCoordinator2 = [(iPadAudioCallViewController *)self emergencyCoordinator];
      eedRTTState = [emergencyCoordinator2 eedRTTState];

      if (!eedRTTState)
      {
        return;
      }

      features = [(iPadAudioCallViewController *)self emergencyCoordinator];
      [features updateRTTAudioRouteButton];
    }
  }
}

- (void)callDisplayStyleDidChangeFromStyle:(int64_t)style toStyle:(int64_t)toStyle
{
  v33.receiver = self;
  v33.super_class = iPadAudioCallViewController;
  [PHCallViewController callDisplayStyleDidChangeFromStyle:"callDisplayStyleDidChangeFromStyle:toStyle:" toStyle:?];
  if (toStyle == 4)
  {
    callCenter = [(iPadAudioCallViewController *)self callCenter];
    hasCurrentCalls = [callCenter hasCurrentCalls];

    if ((hasCurrentCalls & 1) == 0)
    {
      v9 = sub_100004F84();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController was dismissed with no current calls", buf, 2u);
      }

      [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHFailureAlertShowingAssertionReason"];
      [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHFallbackToTelephonyAssertionReason"];
      [(iPadAudioCallViewController *)self setCurrentState:0];
    }
  }

  if (!style)
  {
    [(iPadAudioCallViewController *)self resetParticipantsViewConstraints];
    pendingMiddleViewAnimations = [(iPadAudioCallViewController *)self pendingMiddleViewAnimations];

    if (pendingMiddleViewAnimations)
    {
      pendingMiddleViewAnimations2 = [(iPadAudioCallViewController *)self pendingMiddleViewAnimations];
      pendingMiddleViewAnimations2[2]();

      [(iPadAudioCallViewController *)self setPendingMiddleViewAnimations:0];
    }

    if ([(iPadAudioCallViewController *)self waitingForFullScreenAudioRoutes])
    {
      callCenter2 = [(iPadAudioCallViewController *)self callCenter];
      routeController = [callCenter2 routeController];
      areAuxiliaryRoutesAvailable = [routeController areAuxiliaryRoutesAvailable];

      if (areAuxiliaryRoutesAvailable)
      {
        objc_initWeak(buf, self);
        +[UIView _currentAnimationDuration];
        v16 = dispatch_time(0, (v15 * 1000000000.0));
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000E8608;
        block[3] = &unk_100356F60;
        objc_copyWeak(&v31, buf);
        dispatch_after(v16, &_dispatch_main_q, block);
        objc_destroyWeak(&v31);
        objc_destroyWeak(buf);
      }
    }

    [(iPadAudioCallViewController *)self setWaitingForFullScreenAudioRoutes:0];
  }

  if (style == 1 || toStyle != 1)
  {
    if (style == 2 && toStyle == 4)
    {
      if ([(iPadAudioCallViewController *)self videoStreamingIsGoingOn])
      {
        [(iPadAudioCallViewController *)self audioCallControlsViewControllerDidTapVideoStreamingButton];
      }

      goto LABEL_25;
    }
  }

  else
  {
    v17 = sub_100004F84();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController handling lock event due to mini window attached", buf, 2u);
    }

    [(iPadAudioCallViewController *)self handleDeviceLockEventWithSourceType:1];
  }

  if (style == 4)
  {
    [(iPadAudioCallViewController *)self handleViewWillAppear:1];
    [(iPadAudioCallViewController *)self handleViewDidAppear:1];
    goto LABEL_34;
  }

  if (toStyle == 4)
  {
LABEL_25:
    [(iPadAudioCallViewController *)self handleViewWillDisappear:1];
    [(iPadAudioCallViewController *)self handleViewDidDisappear:1];
    callCenter3 = [(iPadAudioCallViewController *)self callCenter];
    incomingCall = [callCenter3 incomingCall];

    if (incomingCall)
    {
      provider = [incomingCall provider];
      if ([provider supportsDynamicSystemUI])
      {
        featureFlags = [(iPadAudioCallViewController *)self featureFlags];
        if ([featureFlags groupConversations])
        {
          HasChinaSKU = TUDeviceHasChinaSKU();

          if (HasChinaSKU)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }
      }
    }

LABEL_32:
    [(iPadAudioCallViewController *)self suppressRingtoneForIncomingCall];
LABEL_33:
  }

LABEL_34:
  v23 = +[UIDevice currentDevice];
  orientation = [v23 orientation];

  if (!style && toStyle == 2 && (orientation - 3) < 2 || UIAccessibilityIsReduceMotionEnabled())
  {
    view = [(iPadAudioCallViewController *)self view];
    [ICSBannerTransitionAnimation performBannerToFullScreenCrossFadeAnimationWithView:view];
  }

  [(iPadAudioCallViewController *)self showCallDetailsIfNecessary];
  [(iPadAudioCallViewController *)self setupAmbientAudioRoutesControlViewIfNeeded];
  [(iPadAudioCallViewController *)self updateShareNameAndPhotoHUDPresentationIfNeeded];
  [(iPadAudioCallViewController *)self updateLayeredBackgroundWallpaper];
  [(iPadAudioCallViewController *)self updateDefaultNoPosterAvatarViewVisibility];
  frontmostCall = [(iPadAudioCallViewController *)self frontmostCall];
  [(iPadAudioCallViewController *)self updateWaitOnHoldServiceWithCall:frontmostCall];

  [(iPadAudioCallViewController *)self updateBottomShelfWithMiddleViewState:self->_middleViewState callDisplayStyle:toStyle];
  [(iPadAudioCallViewController *)self _updateStatusLabelVisibility];
  if (style != 2 && !toStyle)
  {
    bottomBar = [(PHCallViewController *)self bottomBar];
    [bottomBar setNeedsLayout];

    bottomBar2 = [(PHCallViewController *)self bottomBar];
    [bottomBar2 layoutIfNeeded];
  }

  backgroundController = [(iPadAudioCallViewController *)self backgroundController];
  [backgroundController updateBackgroundFor:{-[ICSCallDisplayStyleManager callDisplayStyle](self->_callDisplayStyleManager, "callDisplayStyle")}];

  if (toStyle == 4 || toStyle == 2)
  {
    [(iPadAudioCallViewController *)self activatePoster];
  }
}

- (void)suppressRingtoneForIncomingCall
{
  callCenter = [(iPadAudioCallViewController *)self callCenter];
  incomingCall = [callCenter incomingCall];

  v4 = incomingCall;
  if (incomingCall)
  {
    shouldSuppressRingtone = [incomingCall shouldSuppressRingtone];
    v4 = incomingCall;
    if ((shouldSuppressRingtone & 1) == 0)
    {
      shouldSuppressRingtone = [incomingCall suppressRingtone];
      v4 = incomingCall;
    }
  }

  _objc_release_x1(shouldSuppressRingtone, v4);
}

- (void)showCallDetailsIfNecessary
{
  callDetailsCoordinator = [(iPadAudioCallViewController *)self callDetailsCoordinator];
  if (callDetailsCoordinator)
  {
    callDetailsCoordinator2 = callDetailsCoordinator;
    v4 = +[UIApplication sharedApplication];
    delegate = [v4 delegate];
    bannerPresentationManager = [delegate bannerPresentationManager];
    if ([bannerPresentationManager shouldShowCallDetailsWhenReady])
    {
      callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
      callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

      if (callDisplayStyle != 2)
      {
        return;
      }

      callDetailsCoordinator2 = [(iPadAudioCallViewController *)self callDetailsCoordinator];
      [callDetailsCoordinator2 startWithReason:@"Controls manager requested deferred call details presentation"];
    }

    else
    {
    }
  }
}

- (void)setMiddleViewButtonsIfNecessary
{
  if ([(PHCallViewController *)self currentState]== 4 || [(PHCallViewController *)self currentState]== 5)
  {
    objc_initWeak(&location, self);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000E88B0;
    v3[3] = &unk_100356E98;
    objc_copyWeak(&v4, &location);
    [(iPadAudioCallViewController *)self setMiddleViewState:1 animated:1 completion:v3];
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

- (void)callParticipantsViewController:(id)controller didPerformActionType:(int64_t)type
{
  controllerCopy = controller;
  callParticipantsViewController = [(iPadAudioCallViewController *)self callParticipantsViewController];

  if (callParticipantsViewController == controllerCopy)
  {
    [(iPadAudioCallViewController *)self performBottomBarActionType:type];
  }

  else
  {
    v8 = sub_100004F84();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134218242;
      typeCopy = type;
      v11 = 2112;
      v12 = controllerCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Cannot perform bottom bar action %ld from unknown call participants viewcontroller object %@", &v9, 0x16u);
    }
  }
}

- (BOOL)callParticipantsViewControllerHasHighResolutionImageOrWallpaperForContact:(id)contact
{
  v4 = [(iPadAudioCallViewController *)self contactForCall:self->_existingPrioritizedCall];
  fullscreenImageData = [v4 fullscreenImageData];

  if (fullscreenImageData)
  {
    v6 = 1;
  }

  else
  {
    v6 = [(iPadAudioCallViewController *)self contactHasPoster:v4];
  }

  return v6;
}

- (void)callParticipantsViewControllerDidTapCallDetailsGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  callParticipantsViewController = [(iPadAudioCallViewController *)self callParticipantsViewController];

  if (callParticipantsViewController == recognizerCopy)
  {
    callDetailsCoordinator = [(iPadAudioCallViewController *)self callDetailsCoordinator];
    [callDetailsCoordinator startWithReason:@"Call participant view requested call details"];
  }

  else
  {
    callDetailsCoordinator = sub_100004F84();
    if (os_log_type_enabled(callDetailsCoordinator, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = recognizerCopy;
      _os_log_impl(&_mh_execute_header, callDetailsCoordinator, OS_LOG_TYPE_DEFAULT, "[WARN] Cannot handle call details disclosure button tap from unknown call participants viewcontroller object %@", &v7, 0xCu);
    }
  }
}

- (void)callParticipantsViewController:(id)controller willShowMultipleLabel:(BOOL)label
{
  controllerCopy = controller;
  callParticipantsViewController = [(iPadAudioCallViewController *)self callParticipantsViewController];

  if (callParticipantsViewController != controllerCopy)
  {
    return;
  }

  self->_participantsViewIsShowingMultipleLabel = label & ~[(iPadAudioCallViewController *)self usesCompactMulticallUI];
  [(iPadAudioCallViewController *)self _updatePosterNameAlpha];
  [(iPadAudioCallViewController *)self _updateStatusLabelVisibility];
  getParticipantsView_WaitingOrNot = [(iPadAudioCallViewController *)self getParticipantsView_WaitingOrNot];
  [(iPadAudioCallViewController *)self updateParticipantConstraintsForPosterName:?];
  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] != 3)
  {
    goto LABEL_5;
  }

  features = [(iPadAudioCallViewController *)self features];
  isDominoEnabled = [features isDominoEnabled];

  if (isDominoEnabled)
  {
    [(iPadAudioCallViewController *)self layoutParticipantsViewAnimated:0];
    callDisplayStyleManager = [(iPadAudioCallViewController *)self callToUseForWallpaper];
    [(iPadAudioCallViewController *)self setCallForBackgroundImage:callDisplayStyleManager animated:1 callDisplayStyleChanged:0];
LABEL_5:
  }
}

- (void)callParticipantsViewController:(id)controller didShowMultipleLabel:(BOOL)label
{
  controllerCopy = controller;
  callParticipantsViewController = [(iPadAudioCallViewController *)self callParticipantsViewController];

  if (callParticipantsViewController == controllerCopy)
  {
    callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
    if ([callDisplayStyleManager callDisplayStyle] == 3)
    {
      features = [(iPadAudioCallViewController *)self features];
      isDominoEnabled = [features isDominoEnabled];

      if ((isDominoEnabled & 1) != 0 || label)
      {
        return;
      }
    }

    else
    {

      if (label)
      {
        return;
      }
    }

    posterNameViewModel = [(iPadAudioCallViewController *)self posterNameViewModel];

    if (posterNameViewModel)
    {

      [(iPadAudioCallViewController *)self _updateStatusLabelVisibility];
    }
  }
}

- (BOOL)callParticipantsViewControllerShouldShowLargeAvatar:(id)avatar
{
  avatarCopy = avatar;
  callParticipantsViewController = [(iPadAudioCallViewController *)self callParticipantsViewController];

  if (callParticipantsViewController == avatarCopy)
  {
    shouldShowLargeAvatar = [(iPadAudioCallViewController *)self shouldShowLargeAvatar];
LABEL_6:
    v7 = shouldShowLargeAvatar;
    goto LABEL_7;
  }

  callWaitingParticipantsViewController = [(iPadAudioCallViewController *)self callWaitingParticipantsViewController];

  if (callWaitingParticipantsViewController == avatarCopy)
  {
    shouldShowLargeAvatar = [(iPadAudioCallViewController *)self shouldShowLargeAvatarForCallWaiting];
    goto LABEL_6;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (BOOL)shouldRenderAlertTextColor
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [(PHCallViewController *)self currentState]== 8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController shouldRenderAlertTextColor = %d", v5, 8u);
  }

  return [(PHCallViewController *)self currentState]== 8;
}

- (BOOL)shouldRenderAlertTextFont
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [(PHCallViewController *)self currentState]== 8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController shouldRenderAlertTextFont = %d", v5, 8u);
  }

  return [(PHCallViewController *)self currentState]== 8;
}

- (BOOL)shouldShowLargeAvatarForCall:(id)call
{
  callCopy = call;
  if ([(iPadAudioCallViewController *)self callStateCanShowNewPoster:callCopy]|| ![(iPadAudioCallViewController *)self prefersShowingCachedLastSeenPosterBeforeCallConnected:callCopy])
  {
    v5 = [(iPadAudioCallViewController *)self contactWallpaperForCall:callCopy];
    v6 = [(iPadAudioCallViewController *)self wallpaperTypeForCNWallpaper:v5];
  }

  else
  {
    v5 = [(iPadAudioCallViewController *)self lastSeenPosterIMWallpaperMetadataForCall:callCopy];
    v6 = [(iPadAudioCallViewController *)self wallpaperTypeForIMWallpaperMetadata:v5];
  }

  v7 = v6;

  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] != 3)
  {
    v11 = 0;
    goto LABEL_11;
  }

  features = [(iPadAudioCallViewController *)self features];
  isDominoEnabled = [features isDominoEnabled];

  if (!isDominoEnabled)
  {
    v11 = 0;
    goto LABEL_13;
  }

  v11 = 1;
  if (v7 != CNWallpaperTypeMemoji && v7 != CNWallpaperTypeMonogram)
  {
    callDisplayStyleManager = [(iPadAudioCallViewController *)self contactImageForCall:callCopy];
    [callDisplayStyleManager size];
    v11 = v12 > 300.0;
LABEL_11:
  }

LABEL_13:

  return v11;
}

- (void)updateShouldShowLargeAvatar
{
  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] == 3)
  {
    features = [(iPadAudioCallViewController *)self features];
    isDominoEnabled = [features isDominoEnabled];

    if (!isDominoEnabled)
    {
      return;
    }

    if ([(iPadAudioCallViewController *)self participantsViewIsShowingMultipleLabel]|| [(iPadAudioCallViewController *)self middleViewState]== 4)
    {

      [(iPadAudioCallViewController *)self setShouldShowLargeAvatar:0];
      return;
    }

    if ([(iPadAudioCallViewController *)self usesCompactMulticallUI]&& ([(iPadAudioCallViewController *)self prioritizedCall], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      callDisplayStyleManager = [(iPadAudioCallViewController *)self prioritizedCall];
      v6 = [(iPadAudioCallViewController *)self shouldShowLargeAvatarForCall:callDisplayStyleManager];
    }

    else
    {
      callParticipantsViewController = [(iPadAudioCallViewController *)self callParticipantsViewController];
      currentCallGroups = [callParticipantsViewController currentCallGroups];
      firstObject = [currentCallGroups firstObject];
      calls = [firstObject calls];
      callDisplayStyleManager = [calls firstObject];

      v6 = [(iPadAudioCallViewController *)self shouldShowLargeAvatarForCall:callDisplayStyleManager];
    }

    [(iPadAudioCallViewController *)self setShouldShowLargeAvatar:v6];
  }
}

- (id)customColorForStatusLabelWithCall:(id)call
{
  v3 = [(iPadAudioCallViewController *)self wallpaperTitleStyleAttributesForCall:call];
  titleColor = [v3 titleColor];

  return titleColor;
}

- (id)customColorForParticipantLabelWithCall:(id)call
{
  callCopy = call;
  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] != 3)
  {
    titleColor = 0;
    goto LABEL_5;
  }

  features = [(iPadAudioCallViewController *)self features];
  isDominoEnabled = [features isDominoEnabled];

  if (isDominoEnabled)
  {
    callDisplayStyleManager = [(iPadAudioCallViewController *)self wallpaperTitleStyleAttributesForCall:callCopy];
    titleColor = [callDisplayStyleManager titleColor];
LABEL_5:

    goto LABEL_7;
  }

  titleColor = 0;
LABEL_7:

  return titleColor;
}

- (id)customFontForParticipantLabelWithCall:(id)call
{
  callCopy = call;
  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] != 3)
  {
    titleFont = 0;
    goto LABEL_5;
  }

  features = [(iPadAudioCallViewController *)self features];
  isDominoEnabled = [features isDominoEnabled];

  if (isDominoEnabled)
  {
    callDisplayStyleManager = [(iPadAudioCallViewController *)self wallpaperTitleStyleAttributesForCall:callCopy];
    titleFont = [callDisplayStyleManager titleFont];
LABEL_5:

    goto LABEL_7;
  }

  titleFont = 0;
LABEL_7:

  return titleFont;
}

- (void)setParticipantsViewShouldShowParticipantLabel:(BOOL)label
{
  if (self->_participantsViewShouldShowParticipantLabel != label)
  {
    labelCopy = label;
    self->_participantsViewShouldShowParticipantLabel = label;
    getParticipantsView_NotWaiting = [(iPadAudioCallViewController *)self getParticipantsView_NotWaiting];
    [(iPadAudioCallViewController *)self updateParticipantsLabelForView:getParticipantsView_NotWaiting isHidden:!labelCopy];
  }
}

- (void)updateParticipantsLabelForView:(id)view isHidden:(BOOL)hidden
{
  if (view)
  {
    v4 = !hidden;
    singleCallLabelView = [view singleCallLabelView];
    participantMarqueeLabel = [singleCallLabelView participantMarqueeLabel];
    [participantMarqueeLabel setAlpha:v4];
  }
}

- (void)startSuppressionOfSTKAlerts
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Starting Suppression of STK Alerts", v3, 2u);
  }

  if ((byte_1003B0ED4 & 1) == 0 && !notify_register_check("MPInCallAlertStateChangeNotification", &dword_1003B0ED0))
  {
    byte_1003B0ED4 = 1;
    if (!notify_set_state(dword_1003B0ED0, 1uLL))
    {
      notify_post("MPInCallAlertStateChangeNotification");
    }
  }
}

- (void)stopSuppressionOfSTKAlerts
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stopping Suppression of STK Alerts", v3, 2u);
  }

  if (byte_1003B0ED4 == 1)
  {
    notify_set_state(dword_1003B0ED0, 0);
    notify_post("MPInCallAlertStateChangeNotification");
    notify_cancel(dword_1003B0ED0);
    byte_1003B0ED4 = 0;
  }
}

- (BOOL)shouldShowEnableWiFiCallingAlertForCall:(id)call
{
  callCopy = call;
  if (([callCopy isEmergency] & 1) == 0 && objc_msgSend(callCopy, "disconnectedReason") == 14 && objc_msgSend(callCopy, "service") == 1)
  {
    v4 = PHShouldShowWifiCallingAlert();
  }

  else
  {
    v4 = 0;
  }

  localSenderIdentityUUID = [callCopy localSenderIdentityUUID];
  if (localSenderIdentityUUID)
  {
    v6 = [TUCallCapabilities senderIdentityCapabilitiesWithUUID:localSenderIdentityUUID];
    v7 = v6;
    LOBYTE(v8) = (v6 == 0) & v4;
    if (v6 && ((v4 ^ 1) & 1) == 0)
    {
      v8 = [v6 isWiFiCallingEnabled] ^ 1;
    }

    LOBYTE(v4) = v8;
  }

  return v4;
}

- (AVSpeechSynthesizer)speechSynthesizer
{
  speechSynthesizer = self->_speechSynthesizer;
  if (!speechSynthesizer)
  {
    v4 = objc_alloc_init(AVSpeechSynthesizer);
    v5 = self->_speechSynthesizer;
    self->_speechSynthesizer = v4;

    speechSynthesizer = self->_speechSynthesizer;
  }

  return speechSynthesizer;
}

- (void)alertWillInvoke
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"PHAlertDisconnectingCallsNotification" object:0];
}

- (void)updatePresentationStateWithAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  if ([(iPadAudioCallViewController *)self shouldPresentAlertButton]!= allowed)
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = allowedCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController is about to set shouldPresentAlertButton to %d", v6, 8u);
    }

    [(iPadAudioCallViewController *)self setShouldPresentAlertButton:allowedCopy];
    [(iPadAudioCallViewController *)self updateCurrentState];
    [(iPadAudioCallViewController *)self triggerAutoCountdownIfAvailable];
  }
}

- (void)startAutoCountdownAlert
{
  [(iPadAudioCallViewController *)self setShouldAutoCountdownAlert:1];

  [(iPadAudioCallViewController *)self triggerAutoCountdownIfAvailable];
}

- (void)triggerAutoCountdownIfAvailable
{
  if ([(iPadAudioCallViewController *)self shouldAutoCountdownAlert]&& ([(PHCallViewController *)self currentState]== 9 || [(PHCallViewController *)self currentState]== 8))
  {
    if ([(iPadAudioCallViewController *)self didTriggerAutoCountdownAlertBefore])
    {
      v3 = sub_100004F84();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[WARN] Not triggering auto-countdown alert since we already triggered once before", buf, 2u);
      }
    }

    else
    {
      alertCountDownTimer = [(iPadAudioCallViewController *)self alertCountDownTimer];

      if (!alertCountDownTimer)
      {
        v5 = sub_100004F84();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting auto-countdown for alert", buf, 2u);
        }

        [(iPadAudioCallViewController *)self setDidTriggerAutoCountdownAlertBefore:1];
        *buf = 0;
        v23 = buf;
        v24 = 0x2020000000;
        +[_TtC13InCallService16AlertCoordinator countdownDuration];
        v25 = v6;
        v7 = +[UIApplication sharedApplication];
        delegate = [v7 delegate];
        alertCoordinator = [delegate alertCoordinator];
        isBackgroundCountdownRunning = [alertCoordinator isBackgroundCountdownRunning];

        if (isBackgroundCountdownRunning)
        {
          v11 = +[UIApplication sharedApplication];
          delegate2 = [v11 delegate];
          alertCoordinator2 = [delegate2 alertCoordinator];
          [alertCoordinator2 currentBackgroundCountdownDuration];
          *(v23 + 3) = v14;

          v15 = +[UIApplication sharedApplication];
          delegate3 = [v15 delegate];
          alertCoordinator3 = [delegate3 alertCoordinator];
          [alertCoordinator3 stopBackgroundCountdown];
        }

        objc_initWeak(&location, self);
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_1000E9C40;
        v19[3] = &unk_1003576D0;
        objc_copyWeak(&v20, &location);
        v19[4] = buf;
        v18 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v19 block:1.0];
        [(iPadAudioCallViewController *)self setAlertCountDownTimer:v18];

        objc_destroyWeak(&v20);
        objc_destroyWeak(&location);
        _Block_object_dispose(buf, 8);
      }
    }
  }
}

- (void)speakAlertUtteranceIfNecessary
{
  if ([(iPadAudioCallViewController *)self shouldPresentAlertButton])
  {
    frontmostCall = [(iPadAudioCallViewController *)self frontmostCall];
    if ([frontmostCall originatingUIType] == 11 && !-[iPadAudioCallViewController didRequestToSpeakAlertUtterance](self, "didRequestToSpeakAlertUtterance"))
    {
      v4 = +[UIScreen _carScreen];

      v5 = +[NSBundle mainBundle];
      v6 = v5;
      if (v4)
      {
        v7 = @"ALERT_ACTION_TEXT_BUTTON_UTTERANCE_CARPLAY";
      }

      else
      {
        v7 = @"ALERT_ACTION_TEXT_BUTTON_UTTERANCE";
      }

      v8 = [v5 localizedStringForKey:v7 value:&stru_100361FD0 table:@"Localizable-Stewie"];

      v9 = sub_100004F84();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Requesting to speak alert utterance: %@", &v14, 0xCu);
      }

      v10 = +[UIScreen _carScreen];
      speechSynthesizer = [(iPadAudioCallViewController *)self speechSynthesizer];
      [speechSynthesizer setUsesApplicationAudioSession:v10 != 0];

      v12 = [AVSpeechUtterance speechUtteranceWithString:v8];
      speechSynthesizer2 = [(iPadAudioCallViewController *)self speechSynthesizer];
      [speechSynthesizer2 speakUtterance:v12];

      [(iPadAudioCallViewController *)self setDidRequestToSpeakAlertUtterance:1];
    }
  }
}

- (BOOL)isReadyToShowCallDetails
{
  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  v3 = [callDisplayStyleManager callDisplayStyle] == 2;

  return v3;
}

- (void)audioDeviceControllerMutedTalkerDidStart:(id)start
{
  if ([(iPadAudioCallViewController *)self audioCallMutedTalkerIsSupported])
  {
    didNotifyMutedCaller = [(iPadAudioCallViewController *)self didNotifyMutedCaller];
    mutedTalkerBannerViewController2 = sub_100004F84();
    v6 = os_log_type_enabled(mutedTalkerBannerViewController2, OS_LOG_TYPE_DEFAULT);
    if (didNotifyMutedCaller)
    {
      if (v6)
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, mutedTalkerBannerViewController2, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController: received audioDeviceControllerMutedTalkerDidStart callback, but banner was presented before, skips updating", v8, 2u);
      }
    }

    else
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, mutedTalkerBannerViewController2, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController: received audioDeviceControllerMutedTalkerDidStart callback, presenting banner", buf, 2u);
      }

      [(iPadAudioCallViewController *)self setDidNotifyMutedCaller:1];
      mutedTalkerBannerViewController = [(iPadAudioCallViewController *)self mutedTalkerBannerViewController];
      [mutedTalkerBannerViewController showBanner];

      mutedTalkerBannerViewController2 = [(iPadAudioCallViewController *)self mutedTalkerBannerViewController];
      [mutedTalkerBannerViewController2 playBannerSound];
    }
  }
}

- (void)bannerDidGetTap
{
  if ([(iPadAudioCallViewController *)self audioCallMutedTalkerIsSupported])
  {
    buttonsViewController = [(iPadAudioCallViewController *)self buttonsViewController];
    [buttonsViewController handleMutedTalkerBannerTap];

    callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
    callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

    if (callDisplayStyle == 2)
    {
      mutedTalkerBannerViewController = [(iPadAudioCallViewController *)self mutedTalkerBannerViewController];
      [mutedTalkerBannerViewController dismissBanner];
    }
  }
}

- (void)contactDidChange:(id)change
{
  changeCopy = change;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    wallpaper = [changeCopy wallpaper];
    v28 = 138412546;
    *v29 = changeCopy;
    *&v29[8] = 2112;
    v30 = wallpaper;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "contactDidChange: %@ wallpaper: %@", &v28, 0x16u);
  }

  if ([(iPadAudioCallViewController *)self shouldUpdateBackgroundForEmergencyCall])
  {
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "we are in emergency call, ignore contact change", &v28, 2u);
    }

    [(iPadAudioCallViewController *)self updateViewForEmergencyCallIfNecessary];
    goto LABEL_25;
  }

  contactsCache = [(iPadAudioCallViewController *)self contactsCache];
  identifier = [changeCopy identifier];
  v10 = [contactsCache objectForKey:identifier];

  v11 = +[UIApplication sharedApplication];
  delegate = [v11 delegate];
  isShowingIncomingNameUpdate = [delegate isShowingIncomingNameUpdate];

  presentedViewController = [(iPadAudioCallViewController *)self presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    topViewController = [presentedViewController topViewController];
    if (topViewController)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }

    if (!v10)
    {
      goto LABEL_22;
    }
  }

  else
  {
    isKindOfClass = 0;
    topViewController = presentedViewController;
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  contactsCache2 = [(iPadAudioCallViewController *)self contactsCache];
  identifier2 = [changeCopy identifier];
  [contactsCache2 setObject:changeCopy forKey:identifier2];

  if ((isShowingIncomingNameUpdate | isKindOfClass))
  {
    v19 = sub_100004F84();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 67109376;
      *v29 = isShowingIncomingNameUpdate;
      *&v29[4] = 1024;
      *&v29[6] = isKindOfClass & 1;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "SNAP: going to render poster again since contact did change, isBannerPresented = %d, isContactCardPresented = %d", &v28, 0xEu);
    }

    configurationCache = [(iPadAudioCallViewController *)self configurationCache];
    [configurationCache removeAllObjects];

    [(iPadAudioCallViewController *)self updateLayeredBackgroundWallpaper];
  }

  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] != 3)
  {
    goto LABEL_21;
  }

  features = [(iPadAudioCallViewController *)self features];
  isDominoEnabled = [features isDominoEnabled];

  if (isDominoEnabled)
  {
    callToUseForWallpaper = [(iPadAudioCallViewController *)self callToUseForWallpaper];
    callDisplayStyleManager = [(iPadAudioCallViewController *)self contactImageDataForCall:callToUseForWallpaper];

    v25 = [[UIImage alloc] initWithData:callDisplayStyleManager];
    [(iPadAudioCallViewController *)self setBackgroundImage:v25];

LABEL_21:
  }

LABEL_22:
  if (isShowingIncomingNameUpdate)
  {
    v26 = +[UIApplication sharedApplication];
    delegate2 = [v26 delegate];
    [delegate2 setIsShowingIncomingNameUpdate:0];
  }

LABEL_25:
}

- (void)presentDisconnectionAlert:(id)alert
{
  alertCopy = alert;
  v5 = +[CNKFeatures sharedInstance];
  isEnhancedEmergencyEnabled = [v5 isEnhancedEmergencyEnabled];

  if (isEnhancedEmergencyEnabled)
  {
    emergencyCoordinator = [(iPadAudioCallViewController *)self emergencyCoordinator];
    if (emergencyCoordinator)
    {
      v8 = emergencyCoordinator;
      emergencyCoordinator2 = [(iPadAudioCallViewController *)self emergencyCoordinator];
      videoStreamingIsOnScreen = [emergencyCoordinator2 videoStreamingIsOnScreen];

      if (videoStreamingIsOnScreen)
      {
        v11 = +[NSBundle mainBundle];
        v12 = [v11 localizedStringForKey:@"STOP_SHARING_LIVE_VIDEO_TITLE" value:&stru_100361FD0 table:@"InCallService"];
        [alertCopy setTitle:v12];

        v13 = +[NSBundle mainBundle];
        v14 = [v13 localizedStringForKey:@"STOP_SHARING_LIVE_VIDEO_SUBTITLE" value:&stru_100361FD0 table:@"InCallService"];
        [alertCopy setMessage:v14];

        objc_initWeak(&location, self);
        v15 = +[NSBundle mainBundle];
        v16 = [v15 localizedStringForKey:@"STOP_SHARING_CAMERA" value:&stru_100361FD0 table:@"InCallService"];
        v18 = _NSConcreteStackBlock;
        v19 = 3221225472;
        v20 = sub_1000EA724;
        v21 = &unk_100359390;
        objc_copyWeak(&v22, &location);
        v17 = [UIAlertAction actionWithTitle:v16 style:0 handler:&v18];
        [alertCopy addAction:{v17, v18, v19, v20, v21}];

        objc_destroyWeak(&v22);
        objc_destroyWeak(&location);
      }
    }

    [(iPadAudioCallViewController *)self presentViewController:alertCopy animated:1 completion:0];
  }
}

- (BOOL)isShowSOSConfirmationSupported
{
  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  v3 = [callDisplayStyleManager callDisplayStyle] == 2;

  return v3;
}

- (void)screenSharingInteractionController:(id)controller didUpdateRemoteControlStatus:(BOOL)status
{
  statusCopy = status;
  featureFlags = [(iPadAudioCallViewController *)self featureFlags];
  screenSharingRemoteControlEnabled = [featureFlags screenSharingRemoteControlEnabled];

  v8 = sub_10000B2A0();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (screenSharingRemoteControlEnabled)
  {
    if (v9)
    {
      v10 = @"NO";
      if (statusCopy)
      {
        v10 = @"YES";
      }

      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating layer mask for remote control, remote control state is %@", &v11, 0xCu);
    }

    [(iPadAudioCallViewController *)self updateScreenSharingDisableUpdateMask];
  }

  else if (v9)
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not updating layer mask for remote control, screen sharing remote control feature flag is disabled", &v11, 2u);
  }
}

- (void)handleCancelPressedInCallBufferScreen
{
  [(iPadAudioCallViewController *)self pauseCallBufferTimer];
  v3 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"CANCEL" value:&stru_100361FD0 table:@"InCallService"];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000EAB68;
  v20[3] = &unk_100358228;
  v20[4] = self;
  v6 = [UIAlertAction actionWithTitle:v5 style:1 handler:v20];
  [v3 addAction:v6];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"END_CALL_SOS" value:&stru_100361FD0 table:@"InCallService"];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000EABE8;
  v19[3] = &unk_100358228;
  v19[4] = self;
  v9 = [UIAlertAction actionWithTitle:v8 style:2 handler:v19];
  [v3 addAction:v9];

  [(iPadAudioCallViewController *)self presentViewController:v3 animated:1 completion:0];
  objc_initWeak(&location, self);
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1000EAD68;
  v15 = &unk_100358250;
  v10 = v3;
  v16 = v10;
  objc_copyWeak(&v17, &location);
  v11 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v12 block:5.0];
  [(iPadAudioCallViewController *)self setConfirmationTimeoutTimer:v11, v12, v13, v14, v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (BOOL)shouldPlayAudioInCallBufferScreen
{
  v2 = +[PHInCallRootViewController dismissalAssertions];
  v3 = [v2 containsObject:@"PHSliderSwipeCallBufferScreenAssertionReason"];

  return v3 ^ 1;
}

- (void)startMessagePlayback
{
  [(iPadAudioCallViewController *)self stopMessagePlayback];
  if (+[SOSUtilities shouldPlayAudioDuringCountdown])
  {
    voiceMessageManager = [(iPadAudioCallViewController *)self voiceMessageManager];
    if (voiceMessageManager)
    {
    }

    else if ([(iPadAudioCallViewController *)self shouldPlayAudioInCallBufferScreen])
    {
      v4 = [[SOSVoiceMessageManager alloc] initWithMessageType:101];
      [(iPadAudioCallViewController *)self setVoiceMessageManager:v4];

      v5 = sub_100004F84();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "startMessagePlayback,starting call buffer voice message", v7, 2u);
      }

      voiceMessageManager2 = [(iPadAudioCallViewController *)self voiceMessageManager];
      [voiceMessageManager2 startMessagePlayback];
    }
  }
}

- (void)stopMessagePlayback
{
  voiceMessageManager = [(iPadAudioCallViewController *)self voiceMessageManager];

  if (voiceMessageManager)
  {
    v4 = sub_100004F84();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "stopMessagePlayback", v6, 2u);
    }

    voiceMessageManager2 = [(iPadAudioCallViewController *)self voiceMessageManager];
    [voiceMessageManager2 stopMessagePlayback];

    [(iPadAudioCallViewController *)self setVoiceMessageManager:0];
  }
}

- (void)startCallBufferScreenCountdown
{
  [(iPadAudioCallViewController *)self stopCallBufferTimer];
  [(iPadAudioCallViewController *)self startMessagePlayback];
  callBufferTimer = [(iPadAudioCallViewController *)self callBufferTimer];

  if (!callBufferTimer)
  {
    objc_initWeak(&location, self);
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x2020000000;
    v7[3] = 5;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000EB198;
    v5[3] = &unk_1003576D0;
    objc_copyWeak(&v6, &location);
    v5[4] = v7;
    v4 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v5 block:1.0];
    [(iPadAudioCallViewController *)self setCallBufferTimer:v4];

    objc_destroyWeak(&v6);
    _Block_object_dispose(v7, 8);
    objc_destroyWeak(&location);
  }
}

- (void)stopCallBufferTimer
{
  callBufferTimer = [(iPadAudioCallViewController *)self callBufferTimer];
  isValid = [callBufferTimer isValid];

  if (isValid)
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController,stopCallBufferTimer", v7, 2u);
    }

    callBufferTimer2 = [(iPadAudioCallViewController *)self callBufferTimer];
    [callBufferTimer2 invalidate];

    [(iPadAudioCallViewController *)self setCallBufferTimer:0];
  }
}

- (void)restartCallBufferTimer
{
  [(iPadAudioCallViewController *)self setShouldPauseSOSCallBufferTimer:0];

  [(iPadAudioCallViewController *)self startCallBufferScreenCountdown];
}

- (void)displayDialledNumberDetailsForCallBufferScreen
{
  if (!self->_bufferSingleCallLabelView)
  {
    v3 = [PHSingleCallParticipantLabelView alloc];
    callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
    v5 = [(PHSingleCallParticipantLabelView *)v3 initWithCallDisplayStyleManager:callDisplayStyleManager];
    bufferSingleCallLabelView = self->_bufferSingleCallLabelView;
    self->_bufferSingleCallLabelView = v5;

    [(PHSingleCallParticipantLabelView *)self->_bufferSingleCallLabelView setPreservesSuperviewLayoutMargins:1];
    [(PHSingleCallParticipantLabelView *)self->_bufferSingleCallLabelView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PHSingleCallParticipantLabelView *)self->_bufferSingleCallLabelView setOverrideUserInterfaceStyle:2];
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_bufferSingleCallLabelView;
      *buf = 138412290;
      v44 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Adding a new single-participant view to the view hierarchy: %@", buf, 0xCu);
    }

    view = [(iPadAudioCallViewController *)self view];
    [view addSubview:self->_bufferSingleCallLabelView];

    v41 = [UIFont phPreferredFontForTextStyle:UIFontTextStyleLargeTitle];
    v10 = self->_bufferSingleCallLabelView;
    [v41 pointSize];
    v11 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
    [(PHSingleCallParticipantLabelView *)v10 setParticipantMarqueeLabelFont:v11];

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"SOS_CALL_BUFFER_TITLE" value:&stru_100361FD0 table:@"InCallService"];
    participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self->_bufferSingleCallLabelView participantMarqueeLabel];
    [participantMarqueeLabel setText:v13];

    v15 = self->_bufferSingleCallLabelView;
    v16 = +[UIColor systemRedColor];
    [(PHSingleCallParticipantLabelView *)v15 setStatusLabelTextColor:v16];

    labelDescriptorFactory = self->_labelDescriptorFactory;
    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"SOS_CALL_BUFFER_SUBTITLE" value:&stru_100361FD0 table:@"InCallService"];
    v20 = [(CNKCallParticipantLabelDescriptorFactory *)labelDescriptorFactory makeLabelWithString:v19];

    [(PHSingleCallParticipantLabelView *)self->_bufferSingleCallLabelView setLabelDescriptor:v20];
    topAnchor = [(PHSingleCallParticipantLabelView *)self->_bufferSingleCallLabelView topAnchor];
    view2 = [(iPadAudioCallViewController *)self view];
    safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    +[TPIncomingCallMetricsProvider sixPercentOfDeviceHeight];
    v25 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];

    centerXAnchor = [(PHSingleCallParticipantLabelView *)self->_bufferSingleCallLabelView centerXAnchor];
    view3 = [(iPadAudioCallViewController *)self view];
    centerXAnchor2 = [view3 centerXAnchor];
    v29 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

    leadingAnchor = [(PHSingleCallParticipantLabelView *)self->_bufferSingleCallLabelView leadingAnchor];
    view4 = [(iPadAudioCallViewController *)self view];
    readableContentGuide = [view4 readableContentGuide];
    leadingAnchor2 = [readableContentGuide leadingAnchor];
    v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

    trailingAnchor = [(PHSingleCallParticipantLabelView *)self->_bufferSingleCallLabelView trailingAnchor];
    view5 = [(iPadAudioCallViewController *)self view];
    readableContentGuide2 = [view5 readableContentGuide];
    trailingAnchor2 = [readableContentGuide2 trailingAnchor];
    v39 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

    v42[0] = v25;
    v42[1] = v29;
    v42[2] = v34;
    v42[3] = v39;
    v40 = [NSArray arrayWithObjects:v42 count:4];
    [NSLayoutConstraint activateConstraints:v40];
  }
}

+ (BOOL)wallpaperContentIsSensitive:(id)sensitive
{
  sensitiveCopy = sensitive;
  if (+[_TtC13InCallService23SensitivityFeatureFlags isContactNudityDetectionEnabled])
  {
    contentIsSensitive = [sensitiveCopy contentIsSensitive];
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = contentIsSensitive;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SNAP: IMWallpaper.contentIsSensitive returning %d", v7, 8u);
    }
  }

  else
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SNAP: IMWallpaper.contentIsSensitive not performing check", v7, 2u);
    }

    LOBYTE(contentIsSensitive) = 0;
  }

  return contentIsSensitive;
}

- (IMNicknameProvider)imNicknameProvider
{
  imNicknameProvider = self->_imNicknameProvider;
  if (!imNicknameProvider)
  {
    v4 = objc_alloc_init(IMNicknameProvider);
    v5 = self->_imNicknameProvider;
    self->_imNicknameProvider = v4;

    imNicknameProvider = self->_imNicknameProvider;
  }

  return imNicknameProvider;
}

- (void)showTrailngPanelCoveringViewIfNeeded
{
  layoutGuidesProvider = [(iPadAudioCallViewController *)self layoutGuidesProvider];
  trailingPanelLayoutGuide = [layoutGuidesProvider trailingPanelLayoutGuide];

  if (trailingPanelLayoutGuide)
  {
    trailingPanelCoveringView = [(iPadAudioCallViewController *)self trailingPanelCoveringView];

    if (!trailingPanelCoveringView)
    {
      createBlurryBackgroundView = [(iPadAudioCallViewController *)self createBlurryBackgroundView];
      [(iPadAudioCallViewController *)self setTrailingPanelCoveringView:createBlurryBackgroundView];

      trailingPanelCoveringView2 = [(iPadAudioCallViewController *)self trailingPanelCoveringView];
      [trailingPanelCoveringView2 setTranslatesAutoresizingMaskIntoConstraints:0];

      backgroundController = [(iPadAudioCallViewController *)self backgroundController];
      trailingPanelCoveringView3 = [(iPadAudioCallViewController *)self trailingPanelCoveringView];
      [backgroundController addToBackground:trailingPanelCoveringView3];

      trailingPanelCoveringView4 = [(iPadAudioCallViewController *)self trailingPanelCoveringView];
      topAnchor = [trailingPanelCoveringView4 topAnchor];
      topAnchor2 = [trailingPanelLayoutGuide topAnchor];
      v44 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v49[0] = v44;
      trailingPanelCoveringView5 = [(iPadAudioCallViewController *)self trailingPanelCoveringView];
      bottomAnchor = [trailingPanelCoveringView5 bottomAnchor];
      bottomAnchor2 = [trailingPanelLayoutGuide bottomAnchor];
      v40 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v49[1] = v40;
      trailingPanelCoveringView6 = [(iPadAudioCallViewController *)self trailingPanelCoveringView];
      leadingAnchor = [trailingPanelCoveringView6 leadingAnchor];
      leadingAnchor2 = [trailingPanelLayoutGuide leadingAnchor];
      v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v49[2] = v12;
      trailingPanelCoveringView7 = [(iPadAudioCallViewController *)self trailingPanelCoveringView];
      trailingAnchor = [trailingPanelCoveringView7 trailingAnchor];
      trailingAnchor2 = [trailingPanelLayoutGuide trailingAnchor];
      v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v49[3] = v16;
      v17 = [NSArray arrayWithObjects:v49 count:4];
      [NSLayoutConstraint activateConstraints:v17];

      [trailingPanelLayoutGuide layoutFrame];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      trailingPanelCoveringView8 = [(iPadAudioCallViewController *)self trailingPanelCoveringView];
      [trailingPanelCoveringView8 setFrame:{v19, v21, v23, v25}];

      backgroundController2 = [(iPadAudioCallViewController *)self backgroundController];
      backgroundContainer = [backgroundController2 backgroundContainer];
      [backgroundContainer layoutIfNeeded];

      trailingPanelCoveringView9 = [(iPadAudioCallViewController *)self trailingPanelCoveringView];
      [trailingPanelCoveringView9 setHidden:1];
    }

    trailingPanelCoveringView10 = [(iPadAudioCallViewController *)self trailingPanelCoveringView];
    isHidden = [trailingPanelCoveringView10 isHidden];

    if (isHidden)
    {
      view = [(iPadAudioCallViewController *)self view];
      [view bounds];
      v34 = v33;
      v36 = v35;

      trailingPanelCoveringView11 = [(iPadAudioCallViewController *)self trailingPanelCoveringView];
      [trailingPanelCoveringView11 setHidden:0];

      trailingPanelCoveringView12 = [(iPadAudioCallViewController *)self trailingPanelCoveringView];
      [trailingPanelCoveringView12 setAlpha:0.0];

      if (v36 > v34)
      {
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = sub_1000EBE58;
        v48[3] = &unk_100356988;
        v48[4] = self;
        [UIView animateWithDuration:4 delay:v48 options:&stru_1003593B0 animations:0.200000003 completion:0.0];
      }
    }
  }
}

- (void)hideTrailngPanelCoveringViewIfNeeded
{
  trailingPanelCoveringView = [(iPadAudioCallViewController *)self trailingPanelCoveringView];
  if (trailingPanelCoveringView)
  {
    v4 = trailingPanelCoveringView;
    trailingPanelCoveringView2 = [(iPadAudioCallViewController *)self trailingPanelCoveringView];
    isHidden = [trailingPanelCoveringView2 isHidden];

    if ((isHidden & 1) == 0)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000EBFD4;
      v9[3] = &unk_100356988;
      v9[4] = self;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1000EC01C;
      v8[3] = &unk_1003569B0;
      v8[4] = self;
      [UIView animateWithDuration:4 delay:v9 options:v8 animations:0.200000003 completion:0.0];
      getParticipantsView_NotWaiting = [(iPadAudioCallViewController *)self getParticipantsView_NotWaiting];
      [(iPadAudioCallViewController *)self updateParticipantConstraintsForPosterName:getParticipantsView_NotWaiting];
    }
  }
}

- (void)updateCallTranslationIfNeeded
{
  featureFlags = [(iPadAudioCallViewController *)self featureFlags];
  audioCallTranslationEnabled = [featureFlags audioCallTranslationEnabled];

  if (!audioCallTranslationEnabled)
  {
    return;
  }

  callDisplayStyleManager = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] == 3)
  {
    features = [(iPadAudioCallViewController *)self features];
    isDominoEnabled = [features isDominoEnabled];

    if (isDominoEnabled)
    {
      return;
    }
  }

  else
  {
  }

  activeCall = [(iPadAudioCallViewController *)self activeCall];
  if ([activeCall translationAvailability] != 3 || objc_msgSend(activeCall, "callStatus") != 1 && objc_msgSend(activeCall, "callStatus") != 4)
  {
    goto LABEL_15;
  }

  callDisplayStyleManager2 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([callDisplayStyleManager2 callDisplayStyle] != 2)
  {

    goto LABEL_15;
  }

  if ([(PHCallViewController *)self currentState]!= 4 && [(PHCallViewController *)self currentState]!= 1)
  {
    currentState = [(PHCallViewController *)self currentState];

    if (currentState == 2)
    {
      goto LABEL_13;
    }

LABEL_15:
    translationController = [(iPadAudioCallViewController *)self translationController];
    [translationController hideCallTranslationButtonIfNeeded];

    translationController2 = [(iPadAudioCallViewController *)self translationController];
    [translationController2 updateCall:0];
    goto LABEL_16;
  }

LABEL_13:
  translationController3 = [(iPadAudioCallViewController *)self translationController];
  [translationController3 updateCall:activeCall];

  translationController2 = [(iPadAudioCallViewController *)self translationController];
  [translationController2 showCallTranslationButtonIfNeeded:self buttonContainer:0];
LABEL_16:
}

- (PHCallTranslationController)translationController
{
  featureFlags = [(iPadAudioCallViewController *)self featureFlags];
  audioCallTranslationEnabled = [featureFlags audioCallTranslationEnabled];

  if (audioCallTranslationEnabled)
  {
    layoutGuidesProvider = [(iPadAudioCallViewController *)self layoutGuidesProvider];
    middleShelfLayoutGuide = [layoutGuidesProvider middleShelfLayoutGuide];

    translationController = self->_translationController;
    if (translationController)
    {
      v8 = 1;
    }

    else
    {
      v8 = middleShelfLayoutGuide == 0;
    }

    if (!v8)
    {
      objc_initWeak(&location, self);
      v9 = [PHCallTranslationController alloc];
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_1000EC3B8;
      v17 = &unk_100356E98;
      objc_copyWeak(&v18, &location);
      v10 = [(PHCallTranslationController *)v9 initWithContentLayoutGuide:middleShelfLayoutGuide translationStateDidChange:&v14];
      v11 = self->_translationController;
      self->_translationController = v10;

      [(PHCallTranslationController *)self->_translationController setHostingDelegate:self, v14, v15, v16, v17];
      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
      translationController = self->_translationController;
    }

    v12 = translationController;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)updateTranslationBackgroundView:(BOOL)view
{
  viewCopy = view;
  translationController = [(iPadAudioCallViewController *)self translationController];
  view = [(iPadAudioCallViewController *)self view];
  [translationController updateContentView:view updateVisibility:1];

  if (viewCopy)
  {

    [(iPadAudioCallViewController *)self showTrailngPanelCoveringViewIfNeeded];
  }

  else
  {

    [(iPadAudioCallViewController *)self hideTrailngPanelCoveringViewIfNeeded];
  }
}

- (PHInCallRootViewControllerProtocol)inCallRootViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_inCallRootViewController);

  return WeakRetained;
}

- (TUCall)prioritizedCall
{
  WeakRetained = objc_loadWeakRetained(&self->_prioritizedCall);

  return WeakRetained;
}

- (UIView)middleContentView
{
  WeakRetained = objc_loadWeakRetained(&self->_middleContentView);

  return WeakRetained;
}

- (_TtC16CommunicationsUI22SwitchingContainerView)typedBottomContainerView
{
  selfCopy = self;
  v3 = sub_10014DABC();

  return v3;
}

- (void)addBottomShelfContainerIfNeeded
{
  selfCopy = self;
  iPadAudioCallViewController.addBottomShelfContainerIfNeeded()();
}

- (void)updateBottomShelfState:(int64_t)state
{
  selfCopy = self;
  iPadAudioCallViewController.updateBottomShelfState(_:)(state);
}

- (void)setLayoutGuides
{
  selfCopy = self;
  sub_100160A34();
}

- (void)setupMiddleContentView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_100160E84(viewCopy);
}

- (void)setupMiddleContentView:(id)view flexibleConstraints:(BOOL)constraints bottomPadding:(double)padding
{
  viewCopy = view;
  selfCopy = self;
  sub_100160F08(viewCopy, constraints, padding);
}

- (void)constraintDefaultNoPosterAvatarView
{
  selfCopy = self;
  sub_1001614FC();
}

- (void)constraintCallRecordingWithView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_100161AA0();
}

- (void)constraintWaitOnHoldView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_100161CB8();
}

- (void)callTranslationControllerWithShouldAddTranslationViewToHost:(id)host
{
  hostCopy = host;
  selfCopy = self;
  sub_100193078(hostCopy);
}

- (void)callTranslationControllerWithShouldRemoveTranslationViewFromHost:(id)host
{
  hostCopy = host;
  selfCopy = self;
  sub_100193160(hostCopy);
}

- (_TtC15ConversationKit23CallRecordingController)_callRecordingController
{
  selfCopy = self;
  v3 = iPadAudioCallViewController._callRecordingController.getter();

  return v3;
}

- (void)set_callRecordingController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  iPadAudioCallViewController._callRecordingController.setter(controller);
}

- (void)startRecording
{
  selfCopy = self;
  iPadAudioCallViewController.startRecording()();
}

- (void)endRecording
{
  selfCopy = self;
  iPadAudioCallViewController.endRecording()();
}

- (void)updateCallRecordingIfNeeded
{
  selfCopy = self;
  iPadAudioCallViewController.updateCallRecordingIfNeeded()();
}

- (BOOL)callRecordingAllowed
{
  selfCopy = self;
  v3 = iPadAudioCallViewController.callRecordingAllowed.getter();

  return v3 & 1;
}

- (BOOL)isCallRecordingActive
{
  selfCopy = self;
  v3 = iPadAudioCallViewController.isCallRecordingActive.getter();

  return v3 & 1;
}

- (void)observeCallRecordingNotifications
{
  selfCopy = self;
  iPadAudioCallViewController.observeCallRecordingNotifications()();
}

- (void)addCallRecordingIndicator
{
  selfCopy = self;
  sub_1001B9020();
}

- (void)removeCallRecordingIndicator
{
  selfCopy = self;
  sub_1001B9310();
}

- (void)updateCallRecording:(id)recording
{
  recordingCopy = recording;
  selfCopy = self;
  sub_1001B9454(recordingCopy);
}

- (void)updateCallDurationVisibility
{
  selfCopy = self;
  sub_1001C4E84();
}

- (void)showKeypadWithPerviousMiddleState:(unsigned __int16)state viewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  iPadAudioCallViewController.showKeypad(perviousMiddleState:viewSize:)(state, width, height);
}

- (void)keypadViewWillDisappearWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  iPadAudioCallViewController.keypadViewWillDisappear(completion:)(sub_1001541E8, v5);
}

- (void)updateFloatingViewsVisibilityHandlers
{
  selfCopy = self;
  iPadAudioCallViewController.updateFloatingViewsVisibilityHandlers()();
}

- (void)updateKeypadBackgroundMaterialWithViewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  iPadAudioCallViewController.updateKeypadBackgroundMaterial(viewSize:)(width, height);
}

- (void)clearMenuItemRegistration:(id)registration
{
  if (registration)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1000321BC(v4, v6);
}

- (void)presentMoreMenu:(id)menu source:(id)source
{
  menuCopy = menu;
  sourceCopy = source;
  selfCopy = self;
  sub_1001DFB48(menuCopy, source);
}

- (void)presentMoreMenu:(id)menu contact:(id)contact source:(id)source
{
  menuCopy = menu;
  contactCopy = contact;
  sourceCopy = source;
  selfCopy = self;
  sub_1001DFBE0(menuCopy, selfCopy, source);
}

- (void)presentContactCard
{
  selfCopy = self;
  sub_1001E0ECC();
}

- (void)showAddParticipantSheet
{
  selfCopy = self;
  sub_1001E1468();
}

- (BOOL)shouldShowMergeCalls
{
  selfCopy = self;
  sub_1001E6D48();
  v4 = v3;

  return v4 & 1;
}

- (void)updateSupplementalButtonsLayout
{
  selfCopy = self;
  sub_1001E721C();
}

- (void)updatePoster
{
  selfCopy = self;
  sub_1001F6914();
}

- (void)transitionToNewPosterIfNeeded
{
  selfCopy = self;
  sub_1001F79C4();
}

- (void)updatePosterSaliencyRect
{
  selfCopy = self;
  sub_1001F7BA0();
}

- (void)deactivatePoster
{
  selfCopy = self;
  sub_1001F8584();
}

- (void)activatePoster
{
  selfCopy = self;
  sub_1001F8658();
}

- (void)updateTopShelfContentWithCall:(id)call sceneWindowSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  callCopy = call;
  selfCopy = self;
  sub_1001FCE38(width, height);
}

- (void)addNoPosterContactImage:(id)image
{
  imageCopy = image;
  selfCopy = self;
  sub_10021AA74();
}

- (void)updateDefaultNoPosterAvatarViewVisibility
{
  selfCopy = self;
  sub_10021B188();
}

- (BOOL)contactHasPoster:(id)poster
{
  posterCopy = poster;
  selfCopy = self;
  v6 = sub_10021B31C(posterCopy);

  return v6 & 1;
}

- (BOOL)isShowingPoster
{
  selfCopy = self;
  v3 = sub_10021B598(&PosterViewController.isShowingPoster.getter);

  return v3 & 1;
}

- (BOOL)isShowingPosterName
{
  selfCopy = self;
  v3 = sub_10021B598(&PosterViewController.isPosterNameVisible.getter);

  return v3 & 1;
}

- (void)updateBackgroundTintToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_10021B620(viewCopy);
}

- (id)createBlurryBackgroundView
{
  selfCopy = self;
  v3 = sub_10022A6B0();

  return v3;
}

- (void)presentWaitOnHoldEndForAnotherCallAlertWithCallerName:(id)name completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  iPadAudioCallViewController.presentWaitOnHoldEndForAnotherCallAlert(callerName:completionHandler:)(v6, v8, sub_100231E5C, v9);
}

- (id)makeLockObserverWithHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  iPadAudioCallViewController.makeLockObserver(with:)(sub_100231DA4, v5, v9);

  sub_100008878(v9, v9[3]);
  v7 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_100005B2C(v9);

  return v7;
}

- (id)makeCallDetailsCoordinatorWithBannerPresentationManager:(id)manager existingCoordinator:(id)coordinator deferredPresentationManager:(id)presentationManager
{
  managerCopy = manager;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  v9 = iPadAudioCallViewController.makeCallDetailsCoordinator(bannerPresentationManager:existingCoordinator:deferredPresentationManager:)(managerCopy, coordinator);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v9;
}

- (id)makeHeldCallControlsViewWithCallCenter:(id)center style:(int64_t)style
{
  centerCopy = center;
  selfCopy = self;
  iPadAudioCallViewController.makeHeldCallControls(callCenter:style:)(centerCopy, style);
  v9 = v8;

  return v9;
}

- (void)showNameAndPhotoHUDIfNecessaryWithBannerPresentationManager:(id)manager callCenter:(id)center
{
  managerCopy = manager;
  centerCopy = center;
  selfCopy = self;
  sub_10022AF68();
}

- (void)presentShareCard:(id)card source:(id)source
{
  cardCopy = card;
  sourceCopy = source;
  selfCopy = self;
  sub_10022BB00(cardCopy, source);
}

- (void)updateScreeningTextFieldContainer:(id)container
{
  containerCopy = container;
  selfCopy = self;
  sub_10022BC50(containerCopy);
}

- (id)currentIMNicknameMatchingContact:(id)contact
{
  contactCopy = contact;
  selfCopy = self;
  v6 = sub_10022C48C();

  return v6;
}

- (BOOL)hasLastSeenPosterForCall:(id)call
{
  callCopy = call;
  callCopy2 = call;
  selfCopy = self;
  LOBYTE(callCopy) = sub_100013F60(callCopy);

  return callCopy & 1;
}

- (BOOL)lastSeenPosterDataIsSensitiveForCall:(id)call
{
  callCopy = call;
  callCopy2 = call;
  selfCopy = self;
  LOBYTE(callCopy) = sub_100168C40(callCopy);

  return callCopy & 1;
}

- (id)readCachedLastSeenPosterDataForCall:(id)call
{
  selfCopy = self;
  callCopy = call;
  v6 = sub_100168D40(call);
  v8 = v7;

  if (v8 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100034FE0(v6, v8);
  }

  return isa;
}

- (id)lastSeenPosterIMWallpaperMetadataForCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  v7 = sub_1001690A0(call);

  return v7;
}

- (unint64_t)suggestedNewPosterSourceAfterCallConnects:(id)connects
{
  connectsCopy = connects;
  selfCopy = self;
  v7 = sub_10022C6FC(connects);

  return v7;
}

- (BOOL)prefersShowingCachedLastSeenPosterBeforeCallConnected:(id)connected
{
  connectedCopy = connected;
  connectedCopy2 = connected;
  selfCopy = self;
  LOBYTE(connectedCopy) = sub_10022CD10(connectedCopy);

  return connectedCopy & 1;
}

- (void)writeToLastSeenPosterCacheIfNecessaryForCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  sub_10022D0F8();
}

- (void)deleteAllUnarchivedPosterDirectories
{
  selfCopy = self;
  sub_10022EF84();
}

- (TUCall)callToUseForWallpaper
{
  selfCopy = self;
  v3 = sub_10022F7B4();

  return v3;
}

- (BOOL)hasNoCallsOrOnlyEndedCalls
{
  selfCopy = self;
  v3 = sub_100230150();

  return v3;
}

- (void)updateDimmingView:(id)view with:(CGSize)with
{
  height = with.height;
  width = with.width;
  viewCopy = view;
  selfCopy = self;
  sub_100230294(view, width, height);
}

- (id)createDimmingView
{
  selfCopy = self;
  v3 = sub_1002303FC();

  return v3;
}

- (void)blockWithHandle:(id)handle
{
  handleCopy = handle;
  selfCopy = self;
  sub_100230854(handleCopy);
}

- (void)reportWithCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  sub_100230B90(callCopy);
}

- (void)createContactWithHandle:(id)handle
{
  handleCopy = handle;
  selfCopy = self;
  sub_10016AE2C(handleCopy);
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  controllerCopy = controller;
  contactCopy = contact;
  selfCopy = self;
  iPadAudioCallViewController.contactViewController(_:didCompleteWith:)(selfCopy, v10);
}

- (BOOL)shouldUpdateBackgroundForEmergencyCall
{
  selfCopy = self;
  v3 = sub_10023102C();

  return v3;
}

- (void)updateBackgroundForEmergencyCall
{
  selfCopy = self;
  sub_1002311C8();
}

- (void)presentFullScreenPeoplePicker
{
  selfCopy = self;
  sub_10023AF84();
}

- (void)dismissPeoplePicker
{
  selfCopy = self;
  sub_10023BBE0();
}

- (void)addMiddleStackView
{
  selfCopy = self;
  sub_100245CE8();
}

- (void)addSubviewsToMiddleStackViewWithView:(id)view priority:(int64_t)priority
{
  viewCopy = view;
  selfCopy = self;
  sub_100245F74(viewCopy, priority);
}

- (void)removeSubviewFromMiddleStackViewWithView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v5.super.super.isa = viewCopy;
  sub_1002461C8(v5);
}

- (void)setupCallHoldingObservers
{
  selfCopy = self;
  iPadAudioCallViewController.setupCallHoldingObservers()();
}

- (void)handleCallRecordingCountdownNotificationWithNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  iPadAudioCallViewController.handleCallRecordingCountdownNotification(notification:)();

  (*(v5 + 8))(v8, v4);
}

- (void)updateWaitOnHoldServiceWithCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  iPadAudioCallViewController.updateWaitOnHoldService(call:)(callCopy);
}

- (void)beginWaitOnHoldSession
{
  selfCopy = self;
  iPadAudioCallViewController.beginWaitOnHoldSession()();
}

- (void)endWaitOnHoldSession
{
  selfCopy = self;
  iPadAudioCallViewController.endWaitOnHoldSession()();
}

- (void)dismissWaitOnHoldTip
{
  selfCopy = self;
  sub_100036558();
}

- (void)tipKitStartWaitOnHoldObservation
{
  selfCopy = self;
  sub_10024937C();
}

- (void)tipKitStopWaitOnHoldObservation
{
  selfCopy = self;
  sub_10024A418();
}

- (void)displayWaitOnHoldTip
{
  selfCopy = self;
  sub_10024AA74();
}

@end