@interface iPadAudioCallViewController
+ (BOOL)prefersWhiteTextOnImageRef:(CGImage *)a3;
+ (BOOL)wallpaperContentIsSensitive:(id)a3;
+ (CGImage)imageRefFrom:(id)a3;
+ (NSArray)contactKeysToFetch;
+ (void)fetchPrefersWhiteColorAtCropRect:(CGRect)a3 image:(id)a4 completion:(id)a5;
- (AVSpeechSynthesizer)speechSynthesizer;
- (BOOL)_isScreeningAnyCallGroup:(id)a3;
- (BOOL)_isScreeningCallGroup:(id)a3;
- (BOOL)allowsBanners;
- (BOOL)allowsMenuButtonDismissal;
- (BOOL)allowsOrientationChangeEvents;
- (BOOL)callHasContactPosterWithHorizontalName;
- (BOOL)callHasContactPosterWithVerticalName;
- (BOOL)callHasNoContactPoster;
- (BOOL)callParticipantsViewControllerHasHighResolutionImageOrWallpaperForContact:(id)a3;
- (BOOL)callParticipantsViewControllerShouldShowLargeAvatar:(id)a3;
- (BOOL)callRecordingAllowed;
- (BOOL)callStateCanShowNewPoster:(id)a3;
- (BOOL)canDoInfoButtonCoinFlipWith:(id)a3 contactStore:(id)a4;
- (BOOL)canShowBackgroundImage;
- (BOOL)canShowPosterBadgeInAudioCallView:(id)a3;
- (BOOL)canShowPosterImage;
- (BOOL)contactHasPoster:(id)a3;
- (BOOL)currentCallStateCanShowNewPoster;
- (BOOL)desiresLockButtonEvents;
- (BOOL)desiresLockButtonEventsForCallContainer:(id)a3;
- (BOOL)hasLastSeenPosterForCall:(id)a3;
- (BOOL)hasNoCallsOrOnlyEndedCalls;
- (BOOL)isCallRecordingActive;
- (BOOL)isCallSmartHoldingSessionActive:(id)a3;
- (BOOL)isPickedRouteReceiver;
- (BOOL)isPickedRouteSpeaker;
- (BOOL)isReadyToShowCallDetails;
- (BOOL)isShowSOSConfirmationSupported;
- (BOOL)isShowingBackgroundImage;
- (BOOL)isShowingPoster;
- (BOOL)isShowingPosterBadge;
- (BOOL)isShowingPosterName;
- (BOOL)lastSeenPosterDataIsSensitiveForCall:(id)a3;
- (BOOL)needsDismissalAssertion;
- (BOOL)prefersShowingCachedLastSeenPosterBeforeCallConnected:(id)a3;
- (BOOL)prioritizedCallIsInSameCallGroupAsCall:(id)a3;
- (BOOL)setCallForBackgroundImage:(id)a3 animated:(BOOL)a4 callDisplayStyleChanged:(BOOL)a5;
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
- (BOOL)shouldShowEnableWiFiCallingAlertForCall:(id)a3;
- (BOOL)shouldShowLargeAvatarForCall:(id)a3;
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
- (iPadAudioCallViewController)initWithCallDisplayStyleManager:(id)a3 callCenter:(id)a4 featureFlags:(id)a5 call:(id)a6;
- (id)ambientParticipantsViewConstraintsForView:(id)a3 largeAvatar:(BOOL)a4;
- (id)answerRequestForCall:(id)a3;
- (id)associatedCallGroupForCall:(id)a3;
- (id)audioRouteMenu;
- (id)contactForCall:(id)a3;
- (id)contactImage;
- (id)contactImageDataForCall:(id)a3;
- (id)contactImageForCall:(id)a3;
- (id)contactToDisplayInCallWallpaperForCall:(id)a3;
- (id)contactWallpaperBackgroundColor;
- (id)contactWallpaperConfigurationForCall:(id)a3 shouldReadFromCache:(BOOL)a4;
- (id)contactWallpaperForCall:(id)a3;
- (id)createBlurryBackgroundView;
- (id)createContactFirstNameLabelViewModel;
- (id)createDimmingView;
- (id)currentIMNicknameMatchingContact:(id)a3;
- (id)customColorForParticipantLabelWithCall:(id)a3;
- (id)customColorForStatusLabelWithCall:(id)a3;
- (id)customFontForParticipantLabelWithCall:(id)a3;
- (id)customizedTitleForItemInBar:(id)a3 withActionType:(int64_t)a4;
- (id)fallbackHorizontalNameLabelString;
- (id)fallbackImageDataForCall:(id)a3;
- (id)getParticipantsView_NotWaiting;
- (id)getParticipantsView_Waiting;
- (id)getParticipantsView_WaitingOrNot;
- (id)isolatedCall;
- (id)lastSeenOrCurrentPosterConfigurationForCall:(id)a3;
- (id)lastSeenPosterConfigurationForCall:(id)a3;
- (id)lastSeenPosterIMWallpaperMetadataForCall:(id)a3;
- (id)makeCallDetailsCoordinatorWithBannerPresentationManager:(id)a3 existingCoordinator:(id)a4 deferredPresentationManager:(id)a5;
- (id)makeHeldCallControlsViewWithCallCenter:(id)a3 style:(int64_t)a4;
- (id)makeLockObserverWithHandler:(id)a3;
- (id)newPosterConfigurationForCall:(id)a3;
- (id)participantsViewConstraints;
- (id)readCachedLastSeenPosterDataForCall:(id)a3;
- (id)routesForAudioRoutingMenuController:(id)a3;
- (id)sharedProfileStateOracleForCall:(id)a3;
- (id)snapshotUIImageView;
- (id)wallpaperTitleStyleAttributes;
- (id)wallpaperTitleStyleAttributesForCall:(id)a3;
- (id)wallpaperTypeForBundleID:(id)a3;
- (id)wallpaperTypeForCNWallpaper:(id)a3;
- (id)wallpaperTypeForIMWallpaperMetadata:(id)a3;
- (int64_t)bottomBarCallStateInBar:(id)a3;
- (int64_t)bottomBarStateForCallWaitingCall;
- (unint64_t)currentDisplayedPosterSourceForCall:(id)a3;
- (unint64_t)suggestedNewPosterSourceAfterCallConnects:(id)a3;
- (void)_leaveMessage;
- (void)_performPosterTransformationsIfNecessaryToState:(unsigned __int16)a3;
- (void)_testing_didTransitionToActiveCallState:(id)a3;
- (void)_testing_didTransitionToEndingCallState;
- (void)_testing_didTransitionToIdleCallState;
- (void)_testing_didTransitionToIncomingRingingCallState:(id)a3;
- (void)_testing_finishedAnimatingToActiveCallState:(id)a3;
- (void)_updatePosterNameAlpha;
- (void)_updatePosterStatusLabelForState:(unsigned __int16)a3;
- (void)_updateStatusLabelVisibility;
- (void)activatePoster;
- (void)addBottomBarSubView;
- (void)addBottomShelfContainerIfNeeded;
- (void)addCallParticipantsSubView;
- (void)addCallRecordingIndicator;
- (void)addDefaultBackgroundGradientView;
- (void)addMiddleStackView;
- (void)addNoPosterContactImage:(id)a3;
- (void)addSubviewsToMiddleStackViewWithView:(id)a3 priority:(int64_t)a4;
- (void)alertWillInvoke;
- (void)animateInfoButtonCoinFlipIfNeeded;
- (void)applyCallDetailsViewButtonPositionAndSizeCapToElement:(id)a3;
- (void)applyCallWaitingConstraintsForAmbient;
- (void)applyParticipantsViewConstraints;
- (void)applyParticipantsViewConstraintsForAmbient;
- (void)applyParticipantsViewConstraintsForBanner;
- (void)applyParticipantsViewConstraintsForFullScreen;
- (void)applySizeToElement:(id)a3 usingThisElementAsGuide:(id)a4;
- (void)applyWallpaperTitleStyleAttributesToTextViewWrapper:(id)a3;
- (void)audioCallControlsViewControllerDidTapEndButton:(id)a3;
- (void)audioCallControlsViewControllerDidTapRTTButton;
- (void)audioCallControlsViewControllerDidToggleMuteButton:(BOOL)a3;
- (void)audioCallControlsViewControllerRequestedAddCallPresentation:(id)a3;
- (void)audioCallControlsViewControllerRequestedAddCallPresentation:(id)a3 forView:(id)a4;
- (void)audioCallControlsViewControllerRequestedAudioRoutesPresentation:(id)a3;
- (void)audioCallControlsViewControllerRequestedContactsPresentation:(id)a3 forView:(id)a4;
- (void)audioCallControlsViewControllerRequestedInvokeAlert;
- (void)audioCallControlsViewControllerRequestedKeypadPresentation:(id)a3;
- (void)audioCallControlsViewControllerRequestedKeypadPresentationForFieldMode:(id)a3;
- (void)audioCallControlsViewControllerRequestedMoreMenuFromSourceView:(id)a3;
- (void)audioCallControlsViewControllerRequestedShareCardFromSourceView:(id)a3;
- (void)audioCallControlsViewControllerRequestedShareMedia;
- (void)audioCallControlsViewControllerRequestedVideoPresentation:(id)a3;
- (void)audioCallVoiceLoopViewControllerRequestedButtonPresentation;
- (void)audioDeviceControllerMutedTalkerDidStart:(id)a3;
- (void)audioRoutingMenuController:(id)a3 didSelectRoute:(id)a4;
- (void)bannerDidGetTap;
- (void)beginWaitOnHoldSession;
- (void)blockWithHandle:(id)a3;
- (void)bottomBarActionPerformed:(int64_t)a3 withCompletionState:(int64_t)a4 fromBar:(id)a5;
- (void)callCenterCallStatusChangedNotification:(id)a3;
- (void)callCenterScreeningStatusChangedNotification:(id)a3;
- (void)callContinuityStateChangedNotification:(id)a3;
- (void)callDetailsViewButtonTapped;
- (void)callDisplayContextChangedNotification:(id)a3;
- (void)callDisplayStyleDidChangeFromStyle:(int64_t)a3 toStyle:(int64_t)a4;
- (void)callIsEmergencyChangedNotification:(id)a3;
- (void)callIsScreenSharingChangedNotification:(id)a3;
- (void)callOnHoldChangedNotification:(id)a3;
- (void)callParticipantsViewController:(id)a3 didPerformActionType:(int64_t)a4;
- (void)callParticipantsViewController:(id)a3 didShowMultipleLabel:(BOOL)a4;
- (void)callParticipantsViewController:(id)a3 willShowMultipleLabel:(BOOL)a4;
- (void)callParticipantsViewControllerDidTapCallDetailsGestureRecognizer:(id)a3;
- (void)callRecordingAfterFullScreenRequest:(id)a3;
- (void)callTransferButtonTapped;
- (void)callTranslationControllerWithShouldAddTranslationViewToHost:(id)a3;
- (void)callTranslationControllerWithShouldRemoveTranslationViewFromHost:(id)a3;
- (void)clearMenuItemRegistration:(id)a3;
- (void)conferenceParticipantCallsChangedNotification:(id)a3;
- (void)constraintCallRecordingWithView:(id)a3;
- (void)constraintDefaultNoPosterAvatarView;
- (void)constraintWaitOnHoldView:(id)a3;
- (void)contactDidChange:(id)a3;
- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4;
- (void)contactViewController:(id)a3 didExecuteBlockAndReportContactAction:(id)a4;
- (void)copyCallWaitingConstraintsFromParticipantsView;
- (void)createContactWithHandle:(id)a3;
- (void)createDetachedPosterNameViewModel:(id)a3;
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
- (void)finishNewPosterUpdatesWithCompletion:(id)a3;
- (void)gameControllerDidChangeContext;
- (void)handleCallRecordingCountdownNotificationWithNotification:(id)a3;
- (void)handleCancelPressedInCallBufferScreen;
- (void)handleConfigurationAfterViewLoaded;
- (void)handleDeviceLockEventWithSourceType:(int64_t)a3;
- (void)handleTUCallSupportsTTYWithVoiceChangedNotification:(id)a3;
- (void)handleTUCallTTYTypeChangedNotification:(id)a3;
- (void)handleViewDidAppear:(BOOL)a3;
- (void)handleViewDidDisappear:(BOOL)a3;
- (void)handleViewWillAppear:(BOOL)a3;
- (void)handleViewWillDisappear:(BOOL)a3;
- (void)hardPauseDigitsStateChangedNotification:(id)a3;
- (void)hardwareButtonEventNotification:(id)a3;
- (void)hideFirstNameLabelOnKeypad;
- (void)hideOrShowScreeningBackgroundView;
- (void)hideOrShowThirdPartyBackgroundImageWithImage:(id)a3;
- (void)hideTrailngPanelCoveringViewIfNeeded;
- (void)invertColorForBottomButtonsBasedOn:(id)a3;
- (void)invertColorForCallDetailsButtonBasedOn:(id)a3;
- (void)invertColorForPosterBadgeViewBasedOn:(id)a3;
- (void)invertColorForPosterBadgeViewIfSnapshotPoster;
- (void)invertNecessaryUIElementsBasedOnPosterImage:(id)a3;
- (void)keypadViewWillDisappearWithCompletion:(id)a3;
- (void)layoutParticipantsViewAnimated:(BOOL)a3 crossfade:(BOOL)a4;
- (void)localAudioToggledWithIsMuted:(BOOL)a3;
- (void)lockScreenVisibilityDidChange:(id)a3;
- (void)mergeCallsButtonTapped;
- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4;
- (void)observeCallRecordingNotifications;
- (void)performBottomBarActionType:(int64_t)a3;
- (void)positionParticipantsViewStatusLabelToBeHorizontallyCenteredToInfoButton:(id)a3;
- (void)positionPosterBadgeToBeHorizontallyCenteredToInfoButton:(id)a3;
- (void)presentContactCard;
- (void)presentDisconnectionAlert:(id)a3;
- (void)presentFullScreenPeoplePicker;
- (void)presentMoreMenu:(id)a3 contact:(id)a4 source:(id)a5;
- (void)presentMoreMenu:(id)a3 source:(id)a4;
- (void)presentShareCard:(id)a3 source:(id)a4;
- (void)presentWaitOnHoldEndForAnotherCallAlertWithCallerName:(id)a3 completionHandler:(id)a4;
- (void)receptionistStateChanged:(id)a3;
- (void)refreshExtensionNumberButton;
- (void)releaseDismissalAssertion;
- (void)removeAllParticipantsViewConstraints;
- (void)removeBackgroundContactImageView;
- (void)removeCallRecordingIndicator;
- (void)removeContentViewIfNeeded:(id)a3 animated:(BOOL)a4;
- (void)removeDefaultBackgroundGradientView;
- (void)removeFirstNameLabelFromViewIfNeeded;
- (void)removeNameLabelForAlwaysOnDisplay;
- (void)removePosterViewController:(BOOL)a3 completion:(id)a4;
- (void)removeSubviewFromMiddleStackViewWithView:(id)a3;
- (void)reportWithCall:(id)a3;
- (void)resetParticipantsViewConstraints;
- (void)restartCallBufferTimer;
- (void)restoreParticipantsViewStatusLabelForFullScreen;
- (void)revealAudioRoutingDeviceListAnimated:(BOOL)a3;
- (void)revealAudioRoutingDeviceListAnimatedIfNeeded;
- (void)routesChangedForRouteController:(id)a3;
- (void)screenSharingInteractionController:(id)a3 didUpdateRemoteControlStatus:(BOOL)a4;
- (void)setActiveState:(unsigned __int16)a3;
- (void)setBackgroundColor:(id)a3 animated:(BOOL)a4;
- (void)setBackgroundImage:(id)a3;
- (void)setCallBufferState:(unsigned __int16)a3;
- (void)setCurrentState:(unsigned __int16)a3 animated:(BOOL)a4;
- (void)setDetachedPosterNameViewModel:(id)a3;
- (void)setEndedState:(unsigned __int16)a3;
- (void)setEndingState:(unsigned __int16)a3;
- (void)setIdleState:(unsigned __int16)a3;
- (void)setInCallRootViewController:(id)a3;
- (void)setKeypadPosterNameViewModel:(id)a3;
- (void)setLayoutGuides;
- (void)setMiddleViewButtonsIfNecessary;
- (void)setMiddleViewState:(unsigned __int16)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setOutgoingRingingState:(unsigned __int16)a3;
- (void)setParticipantsViewControllersShouldIgnoreUpdates:(BOOL)a3;
- (void)setParticipantsViewShouldShowParticipantLabel:(BOOL)a3;
- (void)setPosterNameViewModel:(id)a3;
- (void)setPosterViewController:(id)a3;
- (void)setPrioritizedCall:(id)a3;
- (void)setRingingState:(unsigned __int16)a3;
- (void)setScreeningState:(unsigned __int16)a3 animated:(BOOL)a4 overrideWithIsUnlocked:(BOOL)a5;
- (void)setShowsCallDetailsViewButton:(BOOL)a3;
- (void)setShowsCallWaitingParticipantView:(BOOL)a3;
- (void)setUpCallDetailsViewButton;
- (void)setUpPosterBadgeViewIfNecessary;
- (void)setViewsHiddenForAudioRoutes:(BOOL)a3 animated:(BOOL)a4;
- (void)setWaitOnHoldState:(unsigned __int16)a3 animated:(BOOL)a4;
- (void)setWaitingState:(unsigned __int16)a3;
- (void)set_callRecordingController:(id)a3;
- (void)setupAmbientAudioRoutesControlViewIfNeeded;
- (void)setupCallHoldingObservers;
- (void)setupDimmingViewForAlwaysOnDisplay;
- (void)setupHeldCallControlsViewIfNeeded;
- (void)setupMiddleContentView:(id)a3;
- (void)setupMiddleContentView:(id)a3 flexibleConstraints:(BOOL)a4 bottomPadding:(double)a5;
- (void)setupNameLabelForAlwaysOnDisplay;
- (void)showAddParticipantSheet;
- (void)showBlockAlertForHandle:(id)a3;
- (void)showCallDetailsIfNecessary;
- (void)showFirstNameLabelOnKeypad;
- (void)showKeypadWithPerviousMiddleState:(unsigned __int16)a3 viewSize:(CGSize)a4;
- (void)showNameAndPhotoHUDIfNecessaryWithBannerPresentationManager:(id)a3 callCenter:(id)a4;
- (void)showPosterBlurTransition;
- (void)showStopAlertForCall:(id)a3;
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
- (void)suspendPosterAndCancelDelay:(BOOL)a3;
- (void)synchronizeSingleLabelViewWithPosterText;
- (void)tipKitStartWaitOnHoldObservation;
- (void)tipKitStopWaitOnHoldObservation;
- (void)traitCollectionDidChange:(id)a3;
- (void)transitionToFullScreenIfNecessary;
- (void)transitionToNewPosterIfNeeded;
- (void)triggerAutoCountdownIfAvailable;
- (void)triggerInversionColorUpdate:(id)a3;
- (void)updateAmbientAudioRoutesVisibility;
- (void)updateBackgroundForEmergencyCall;
- (void)updateBackgroundTintToView:(id)a3;
- (void)updateBottomBarButtonsWithCall:(id)a3;
- (void)updateBottomShelfState:(int64_t)a3;
- (void)updateBottomShelfWithMiddleViewState:(unsigned __int16)a3 callDisplayStyle:(int64_t)a4;
- (void)updateCallDurationVisibility;
- (void)updateCallParticipantsViewControllerCallGroups;
- (void)updateCallRecording:(id)a3;
- (void)updateCallRecordingIfNeeded;
- (void)updateCallTranslationIfNeeded;
- (void)updateCurrentState;
- (void)updateDefaultNoPosterAvatarViewVisibility;
- (void)updateDimmingView:(id)a3 with:(CGSize)a4;
- (void)updateFloatingViewsVisibilityHandlers;
- (void)updateHardPauseDigitsState;
- (void)updateIncomingBottomBarControlState;
- (void)updateKeypadBackgroundMaterialWithViewSize:(CGSize)a3;
- (void)updateLayeredBackgroundWallpaper;
- (void)updateLayoutSupplementalButtons;
- (void)updateLegacyBackgroundImageVisibilityWithShouldShowWallpaper:(BOOL)a3;
- (void)updateParticipantConstraintsForPosterName:(id)a3;
- (void)updateParticipantsLabelForView:(id)a3 isHidden:(BOOL)a4;
- (void)updatePoster;
- (void)updatePosterBadgeView:(BOOL)a3 to:(id)a4;
- (void)updatePosterSaliencyRect;
- (void)updatePosterViewModelForParticipantsView:(id)a3;
- (void)updatePresentationStateWithAllowed:(BOOL)a3;
- (void)updateScreenSharingDisableUpdateMask;
- (void)updateScreeningTextFieldContainer:(id)a3;
- (void)updateShareNameAndPhotoHUDPresentationIfNeeded;
- (void)updateShouldShowLargeAvatar;
- (void)updateSupplementalButtonsLayout;
- (void)updateTopShelfContentWithCall:(id)a3 sceneWindowSize:(CGSize)a4;
- (void)updateTranslationBackgroundView:(BOOL)a3;
- (void)updateViewForEmergencyCallIfNecessary;
- (void)updateViewsForHeldCallControlsViewIfNeeded;
- (void)updateWaitOnHoldServiceWithCall:(id)a3;
- (void)updateWaitOnHoldViewIfNeeded;
- (void)useRTTButtonTapped;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)wantsHoldMusicChangedNotification:(id)a3;
- (void)writeToLastSeenPosterCacheIfNecessaryForCall:(id)a3;
@end

@implementation iPadAudioCallViewController

- (void)_testing_finishedAnimatingToActiveCallState:(id)a3
{
  v4 = a3;
  if ([UIApp isRunningTest:@"AnswerIncomingCall"])
  {
    [UIApp finishedSubTest:@"end-to-end" forTest:@"AnswerIncomingCall"];
    [(iPadAudioCallViewController *)self bottomBarActionPerformed:15 withCompletionState:1 fromBar:v4];
  }
}

- (void)_testing_didTransitionToActiveCallState:(id)a3
{
  v4 = a3;
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
    v8 = v4;
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

- (void)_testing_didTransitionToIncomingRingingCallState:(id)a3
{
  v4 = a3;
  if ([UIApp isRunningTest:@"AnswerIncomingCall"])
  {
    v5 = dispatch_time(0, 2000000000);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000CE380;
    v6[3] = &unk_100357110;
    v6[4] = self;
    v7 = v4;
    dispatch_after(v5, &_dispatch_main_q, v6);
  }
}

- (void)setParticipantsViewControllersShouldIgnoreUpdates:(BOOL)a3
{
  if (self->_participantsViewControllersShouldIgnoreUpdates != a3)
  {
    v3 = a3;
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating the participants view and viewController shouldIgnoreUpdates: %@", &v9, 0xCu);
    }

    self->_participantsViewControllersShouldIgnoreUpdates = v3;
    v7 = [(iPadAudioCallViewController *)self callParticipantsViewController];
    [v7 setShouldIgnoreUpdates:v3];

    v8 = [(iPadAudioCallViewController *)self callWaitingParticipantsViewController];
    [v8 setShouldIgnoreUpdates:v3];
  }
}

- (iPadAudioCallViewController)initWithCallDisplayStyleManager:(id)a3 callCenter:(id)a4 featureFlags:(id)a5 call:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v84.receiver = self;
  v84.super_class = iPadAudioCallViewController;
  v15 = [(PHCallViewController *)&v84 initWithNibName:0 bundle:0];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_existingPrioritizedCall, a6);
    objc_storeStrong(&v16->_callCenter, a4);
    objc_storeStrong(&v16->_featureFlags, a5);
    v17 = objc_opt_new();
    analyticsReporter = v16->_analyticsReporter;
    v16->_analyticsReporter = v17;

    v19 = objc_opt_new();
    v20 = [v19 makeWithCallCenter:v12];
    declineCallService = v16->_declineCallService;
    v16->_declineCallService = v20;

    v22 = objc_opt_new();
    labelDescriptorFactory = v16->_labelDescriptorFactory;
    v16->_labelDescriptorFactory = v22;

    objc_storeStrong(&v16->_callDisplayStyleManager, a3);
    v16->_wasPresentedAsBanner = [v11 callDisplayStyle] == 0;
    v16->_middleViewState = 0;
    v16->_canDumpHierarchy = 1;
    v24 = objc_opt_new();
    mutedTalkerViewControllerFactory = v16->_mutedTalkerViewControllerFactory;
    v16->_mutedTalkerViewControllerFactory = v24;

    v26 = [(CNKMutedTalkerBannerViewControllerFactory *)v16->_mutedTalkerViewControllerFactory makeViewController];
    mutedTalkerBannerViewController = v16->_mutedTalkerBannerViewController;
    v16->_mutedTalkerBannerViewController = v26;

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
    v49 = [(iPadAudioCallViewController *)v16 featureFlags];
    v50 = TUCallScreeningEnabledM3();

    if (v50)
    {
      [v48 addObserver:v16 selector:"callCenterScreeningStatusChangedNotification:" name:TUCallCenterIsScreeningChangedNotification object:0];
    }

    v51 = [(iPadAudioCallViewController *)v16 featureFlags];
    v52 = [v51 receptionistEnabled];

    if (v52)
    {
      [v48 addObserver:v16 selector:"answeringMachineStreamTokenChanged:" name:TUCallAnsweringMachineStreamTokenChangedNotification object:0];
      [v48 addObserver:v16 selector:"receptionistStateChanged:" name:TUCallCenterReceptionistStateChangedNotification object:0];
    }

    v53 = [(iPadAudioCallViewController *)v16 featureFlags];
    v54 = [v53 audioCallTranslationEnabled];

    if (v54)
    {
      [v48 addObserver:v16 selector:"updateCallTranslationIfNeeded" name:TUCallTranslationAvailabilityChangedNotification object:0];
    }

    v55 = [(iPadAudioCallViewController *)v16 featureFlags];
    v56 = [v55 waitOnHoldEnabled];

    if (v56)
    {
      [(iPadAudioCallViewController *)v16 setupCallHoldingObservers];
    }

    v57 = [v12 routeController];
    [v57 addDelegate:v16];

    v58 = [v12 audioDeviceController];
    [v58 addDelegate:v16];

    v59 = +[UIApplication sharedApplication];
    v60 = [v59 delegate];
    v61 = [v60 bannerPresentationManager];
    [v61 setLocalAudioTogglingDelegate:v16];

    v62 = [(CNKScreenSharingInteractionControllerFactory *)v16->_screenSharingInteractionControllerFactory sharedController];
    [v62 addDelegate:v16];

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
  v65 = [v64 delegate];
  v66 = [v65 alertCoordinator];

  if (!v66)
  {
    v67 = objc_alloc_init(_TtC13InCallService16AlertCoordinator);
    v68 = +[UIApplication sharedApplication];
    v69 = [v68 delegate];
    [v69 setAlertCoordinator:v67];
  }

  v70 = +[UIApplication sharedApplication];
  v71 = [v70 delegate];
  v72 = [v71 alertCoordinator];
  [v72 setDelegate:v16];

  v16->_shouldEnableVideoStreamingButton = 0;
  v16->_shouldEnableShareMediaButton = 0;
  v73 = [(iPadAudioCallViewController *)v16 features];
  LODWORD(v71) = [v73 isEnhancedEmergencyEnabled];

  if (v71)
  {
    v74 = +[PHSOSDisconnectionConfirmation sharedInstance];
    [v74 addDelegate:v16];

    v75 = [v12 frontmostCall];
    if (![v75 isEmergency])
    {
LABEL_21:

      goto LABEL_22;
    }

    v76 = [(iPadAudioCallViewController *)v16 emergencyCoordinator];

    if (!v76)
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

      v79 = [(iPadAudioCallViewController *)v16 emergencyCoordinator];
      [v79 setDelegate:v16];

      v75 = [v12 frontmostCall];
      v80 = [(iPadAudioCallViewController *)v16 emergencyCoordinator];
      [v80 setTuCall:v75];

      goto LABEL_21;
    }
  }

LABEL_22:
  [(iPadAudioCallViewController *)v16 setupDimmingViewForAlwaysOnDisplay];
  v81 = [(iPadAudioCallViewController *)v16 frontmostCall];
  [(iPadAudioCallViewController *)v16 updateWaitOnHoldServiceWithCall:v81];

  v82 = [(iPadAudioCallViewController *)v16 backgroundController];
  [v82 updateBackgroundFor:{objc_msgSend(v11, "callDisplayStyle")}];

  return v16;
}

- (void)callRecordingAfterFullScreenRequest:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 valueForKey:@"callRecording"];

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

  v4 = [(PHCallViewController *)self bottomBar];
  [v4 setDelegate:0];

  v5 = [(iPadAudioCallViewController *)self callCenter];
  v6 = [v5 audioDeviceController];
  [v6 removeDelegate:self];

  v7 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([v7 callDisplayStyle] != 3)
  {

    goto LABEL_5;
  }

  v8 = [(iPadAudioCallViewController *)self features];
  v9 = [v8 isDominoEnabled];

  if ((v9 & 1) == 0)
  {
LABEL_5:
    [(iPadAudioCallViewController *)self deleteAllUnarchivedPosterDirectories];
  }

  v10 = [(iPadAudioCallViewController *)self features];
  v11 = [v10 isEnhancedEmergencyEnabled];

  if (v11)
  {
    v12 = +[PHSOSDisconnectionConfirmation sharedInstance];
    [v12 removeDelegate:self];
  }

  v13 = sub_100004F84();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = self;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController deallocated %@", buf, 0xCu);
  }

  v14.receiver = self;
  v14.super_class = iPadAudioCallViewController;
  [(iPadAudioCallViewController *)&v14 dealloc];
}

- (void)addBottomBarSubView
{
  v3 = [PHBottomBar alloc];
  v4 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  v5 = [(PHBottomBar *)v3 initWithCallDisplayStyleManager:v4 isAudioCall:1];
  [(PHCallViewController *)self setBottomBar:v5];

  v6 = +[UIColor clearColor];
  v7 = [(PHCallViewController *)self bottomBar];
  [v7 setBackgroundColor:v6];

  v8 = [(PHCallViewController *)self bottomBar];
  [v8 setDelegate:self];

  v9 = [(PHCallViewController *)self bottomBar];
  [v9 setBottomMargin:0.0];

  [(iPadAudioCallViewController *)self updateHardPauseDigitsState];
  v10 = [(iPadAudioCallViewController *)self view];
  v11 = [(PHCallViewController *)self bottomBar];
  [v10 addSubview:v11];

  v12 = [(PHCallViewController *)self bottomBar];
  [v12 setCurrentState:11];

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
    v5 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
    v6 = [(iPadAudioCallViewController *)self contactsCache];
    if (v3)
    {
      v13 = v3;
      v7 = [NSArray arrayWithObjects:&v13 count:1];
    }

    else
    {
      v7 = &__NSArray0__struct;
    }

    v8 = [(PHCallParticipantsViewController *)v4 initWithCallDisplayStyleManager:v5 contactsCache:v6 contacts:v7];
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
    v10 = [(iPadAudioCallViewController *)self view];
    v11 = [(PHCallParticipantsViewController *)self->_callParticipantsViewController view];
    [v10 addSubview:v11];

    [(iPadAudioCallViewController *)self applyParticipantsViewConstraints];
    v12 = [(PHCallParticipantsViewController *)self->_callParticipantsViewController view];
    [v12 setAlpha:1.0];
  }
}

- (void)layoutParticipantsViewAnimated:(BOOL)a3 crossfade:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(iPadAudioCallViewController *)self shouldShowLargeAvatar];
  [(iPadAudioCallViewController *)self updateShouldShowLargeAvatar];
  v8 = [(iPadAudioCallViewController *)self shouldShowLargeAvatar];
  if (v5)
  {
    if (v4)
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
      v9 = v7 ^ v8;
      if (v9)
      {
        v10 = [(iPadAudioCallViewController *)self view];
        [v10 layoutIfNeeded];
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
  v3 = [(iPadAudioCallViewController *)self participantsViewTopConstraint];

  if (v3)
  {
    v4 = [(iPadAudioCallViewController *)self participantsViewTopConstraint];
    [v15 addObject:v4];
  }

  v5 = [(iPadAudioCallViewController *)self participantsViewLeadingConstraint];

  if (v5)
  {
    v6 = [(iPadAudioCallViewController *)self participantsViewLeadingConstraint];
    [v15 addObject:v6];
  }

  v7 = [(iPadAudioCallViewController *)self participantsViewTrailingConstraint];

  if (v7)
  {
    v8 = [(iPadAudioCallViewController *)self participantsViewTrailingConstraint];
    [v15 addObject:v8];
  }

  v9 = [(iPadAudioCallViewController *)self participantsViewCenterXConstraint];

  if (v9)
  {
    v10 = [(iPadAudioCallViewController *)self participantsViewCenterXConstraint];
    [v15 addObject:v10];
  }

  v11 = [(iPadAudioCallViewController *)self participantsViewBottomConstraint];

  if (v11)
  {
    v12 = [(iPadAudioCallViewController *)self participantsViewBottomConstraint];
    [v15 addObject:v12];
  }

  v13 = [(iPadAudioCallViewController *)self participantsViewCenterYConstraint];

  if (v13)
  {
    v14 = [(iPadAudioCallViewController *)self participantsViewCenterYConstraint];
    [v15 addObject:v14];
  }

  [NSLayoutConstraint deactivateConstraints:v15];
}

- (void)applyParticipantsViewConstraints
{
  v3 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  v4 = [v3 callDisplayStyle];

  if (v4 <= 2)
  {
    if ((v4 - 1) >= 2)
    {
      if (!v4)
      {

        [(iPadAudioCallViewController *)self applyParticipantsViewConstraintsForBanner];
      }

      return;
    }

    goto LABEL_9;
  }

  if (v4 != 3)
  {
    if (v4 != 4)
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
  v3 = [(iPadAudioCallViewController *)self getParticipantsView_NotWaiting];
  if (v3)
  {
    v4 = [(iPadAudioCallViewController *)self viewIfLoaded];

    if (v4)
    {
      [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
      v5 = [v3 bottomAnchor];
      v6 = [(iPadAudioCallViewController *)self layoutGuidesProvider];
      v7 = [v6 callerDetailsLayoutGuide];
      v8 = [v7 bottomAnchor];
      v9 = [v5 constraintEqualToAnchor:v8];
      [(iPadAudioCallViewController *)self setParticipantsViewBottomConstraint:v9];

      v10 = [v3 leadingAnchor];
      v11 = [(iPadAudioCallViewController *)self layoutGuidesProvider];
      v12 = [v11 bottomShelfLayoutGuide];
      v13 = [v12 leadingAnchor];
      v14 = [v10 constraintEqualToAnchor:v13];
      [(iPadAudioCallViewController *)self setParticipantsViewLeadingConstraint:v14];

      v15 = [v3 trailingAnchor];
      v16 = [(iPadAudioCallViewController *)self layoutGuidesProvider];
      v17 = [v16 bottomShelfLayoutGuide];
      v18 = [v17 trailingAnchor];
      v19 = [v15 constraintEqualToAnchor:v18];
      [(iPadAudioCallViewController *)self setParticipantsViewTrailingConstraint:v19];

      v20 = [v3 topAnchor];
      v21 = [(iPadAudioCallViewController *)self layoutGuidesProvider];
      v22 = [v21 callerDetailsLayoutGuide];
      v23 = [v22 topAnchor];
      v24 = [v20 constraintEqualToAnchor:v23];
      [(iPadAudioCallViewController *)self setParticipantsViewTopConstraint:v24];

      v25 = [(iPadAudioCallViewController *)self participantsViewBottomConstraint];
      v30[0] = v25;
      v26 = [(iPadAudioCallViewController *)self participantsViewTopConstraint];
      v30[1] = v26;
      v27 = [(iPadAudioCallViewController *)self participantsViewLeadingConstraint];
      v30[2] = v27;
      v28 = [(iPadAudioCallViewController *)self participantsViewTrailingConstraint];
      v30[3] = v28;
      v29 = [NSArray arrayWithObjects:v30 count:4];
      [NSLayoutConstraint activateConstraints:v29];
    }
  }
}

- (id)participantsViewConstraints
{
  v3 = [(iPadAudioCallViewController *)self participantsViewBottomConstraint];
  v9[0] = v3;
  v4 = [(iPadAudioCallViewController *)self participantsViewTopConstraint];
  v9[1] = v4;
  v5 = [(iPadAudioCallViewController *)self participantsViewLeadingConstraint];
  v9[2] = v5;
  v6 = [(iPadAudioCallViewController *)self participantsViewTrailingConstraint];
  v9[3] = v6;
  v7 = [NSArray arrayWithObjects:v9 count:4];

  return v7;
}

- (id)ambientParticipantsViewConstraintsForView:(id)a3 largeAvatar:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_alloc_init(NSMutableDictionary);
  +[PHUIConfiguration ambientVerticalPadding];
  v9 = v8;
  +[PHUIConfiguration ambientHorizontalPadding];
  v11 = v10;
  if (v4)
  {
    v12 = [v6 bottomAnchor];
    v13 = [(iPadAudioCallViewController *)self view];
    v14 = [v13 bottomAnchor];
    v15 = [v12 constraintEqualToAnchor:v14 constant:-v9];
    [v7 setObject:v15 forKeyedSubscript:&off_10036A2F8];

    v16 = [v6 trailingAnchor];
    v17 = [(iPadAudioCallViewController *)self view];
    v18 = [v17 safeAreaLayoutGuide];
    v19 = [v18 trailingAnchor];
    v20 = [v16 constraintEqualToAnchor:v19 constant:-v11];
    [v7 setObject:v20 forKeyedSubscript:&off_10036A310];
  }

  else
  {
    v16 = [v6 trailingAnchor];
    v17 = [(iPadAudioCallViewController *)self ambientAudioRoutesControlView];
    v18 = [v17 leadingAnchor];
    v19 = [v16 constraintEqualToAnchor:v18 constant:-20.0];
    [v7 setObject:v19 forKeyedSubscript:&off_10036A310];
  }

  v21 = [v6 topAnchor];
  v22 = [(iPadAudioCallViewController *)self view];
  v23 = [v22 topAnchor];
  v24 = [v21 constraintEqualToAnchor:v23 constant:v9];
  [v7 setObject:v24 forKeyedSubscript:&off_10036A328];

  v25 = [v6 leadingAnchor];
  v26 = [(iPadAudioCallViewController *)self view];
  v27 = [v26 safeAreaLayoutGuide];
  v28 = [v27 leadingAnchor];
  v29 = [v25 constraintEqualToAnchor:v28 constant:v11];
  [v7 setObject:v29 forKeyedSubscript:&off_10036A340];

  return v7;
}

- (void)applyParticipantsViewConstraintsForAmbient
{
  v3 = [(iPadAudioCallViewController *)self getParticipantsView_NotWaiting];
  v4 = v3;
  if (v3)
  {
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
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

    v10 = [(iPadAudioCallViewController *)self participantsViewTopConstraint];
    v11 = [(iPadAudioCallViewController *)self participantsViewLeadingConstraint];
    v16[1] = v11;
    v12 = [(iPadAudioCallViewController *)self participantsViewTrailingConstraint];
    v16[2] = v12;
    v13 = [NSArray arrayWithObjects:v16 count:3];
    [NSLayoutConstraint activateConstraints:v13];

    v14 = [(iPadAudioCallViewController *)self participantsViewBottomConstraint];

    if (v14)
    {
      v15 = [(iPadAudioCallViewController *)self participantsViewBottomConstraint];
      [v15 setActive:1];
    }
  }
}

- (void)applyParticipantsViewConstraintsForBanner
{
  v3 = [(iPadAudioCallViewController *)self getParticipantsView_NotWaiting];
  v4 = v3;
  if (v3)
  {
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(iPadAudioCallViewController *)self setParticipantsViewCenterXConstraint:0];
    v5 = [v4 centerYAnchor];
    v6 = [(iPadAudioCallViewController *)self view];
    v7 = [v6 centerYAnchor];
    v8 = [v5 constraintEqualToAnchor:v7];
    [(iPadAudioCallViewController *)self setParticipantsViewCenterYConstraint:v8];

    v9 = [v4 topAnchor];
    v10 = [(iPadAudioCallViewController *)self view];
    v11 = [v10 topAnchor];
    v12 = [v9 constraintGreaterThanOrEqualToAnchor:v11];
    [(iPadAudioCallViewController *)self setParticipantsViewTopConstraint:v12];

    v13 = [v4 bottomAnchor];
    v14 = [(iPadAudioCallViewController *)self view];
    v15 = [v14 bottomAnchor];
    v16 = [v13 constraintLessThanOrEqualToAnchor:v15];
    [(iPadAudioCallViewController *)self setParticipantsViewBottomConstraint:v16];

    v17 = [v4 leadingAnchor];
    v18 = [(iPadAudioCallViewController *)self view];
    v19 = [v18 leadingAnchor];
    v20 = [v17 constraintEqualToAnchor:v19];
    [(iPadAudioCallViewController *)self setParticipantsViewLeadingConstraint:v20];

    v21 = [v4 trailingAnchor];
    v22 = [(iPadAudioCallViewController *)self view];
    v23 = [v22 trailingAnchor];
    v24 = [v21 constraintEqualToAnchor:v23];
    [(iPadAudioCallViewController *)self setParticipantsViewTrailingConstraint:v24];

    v25 = [(iPadAudioCallViewController *)self participantsViewCenterYConstraint];
    v26 = [(iPadAudioCallViewController *)self participantsViewTopConstraint];
    v31[1] = v26;
    v27 = [(iPadAudioCallViewController *)self participantsViewBottomConstraint];
    v31[2] = v27;
    v28 = [(iPadAudioCallViewController *)self participantsViewLeadingConstraint];
    v31[3] = v28;
    v29 = [(iPadAudioCallViewController *)self participantsViewTrailingConstraint];
    v31[4] = v29;
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
  v3 = [(iPadAudioCallViewController *)self callCenter];
  v4 = [v3 currentAudioAndVideoCalls];

  v5 = [v4 countByEnumeratingWithState:&v22 objects:v32 count:16];
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
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v22 + 1) + 8 * i) isSharingScreen])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v32 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = [(iPadAudioCallViewController *)self screenSharingInteractionControllerFactory];
  v11 = [v10 sharedController];
  v12 = [v11 remoteControlStatus];

  if (v12 == 2)
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
    if (v12 == 2)
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

  v19 = [(iPadAudioCallViewController *)self view];
  v20 = [v19 layer];
  [v20 setDisableUpdateMask:v18];

  v21 = [(iPadAudioCallViewController *)self callDetailsCoordinator];
  [v21 setShouldHideViewsFromScreenSharing:v13];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = iPadAudioCallViewController;
  [(iPadAudioCallViewController *)&v6 viewDidLoad];
  v3 = [(iPadAudioCallViewController *)self inCallRootViewController];

  if (v3)
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
  v3 = [(iPadAudioCallViewController *)self layoutGuidesProvider];
  v4 = [(iPadAudioCallViewController *)self backgroundController];
  [v4 setLayoutGuidesProvider:v3];

  v5 = [(iPadAudioCallViewController *)self backgroundController];
  v6 = [(iPadAudioCallViewController *)self view];
  [v6 bounds];
  v8 = v7;
  v9 = [(iPadAudioCallViewController *)self view];
  [v9 bounds];
  [v5 updateIsLandscape:v8 > v10];

  v11 = [(iPadAudioCallViewController *)self view];
  v12 = [(iPadAudioCallViewController *)self backgroundController];
  v13 = [v12 backgroundContainer];
  [v11 addSubview:v13];

  v14 = [(iPadAudioCallViewController *)self backgroundController];
  v15 = [v14 backgroundContainer];
  [(iPadAudioCallViewController *)self updateBackgroundTintToView:v15];

  v45 = [(iPadAudioCallViewController *)self backgroundController];
  v44 = [v45 backgroundContainer];
  v42 = [v44 leadingAnchor];
  v43 = [(iPadAudioCallViewController *)self view];
  v41 = [v43 leadingAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v46[0] = v40;
  v39 = [(iPadAudioCallViewController *)self backgroundController];
  v38 = [v39 backgroundContainer];
  v36 = [v38 trailingAnchor];
  v37 = [(iPadAudioCallViewController *)self view];
  v35 = [v37 trailingAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v46[1] = v34;
  v33 = [(iPadAudioCallViewController *)self backgroundController];
  v32 = [v33 backgroundContainer];
  v30 = [v32 bottomAnchor];
  v31 = [(iPadAudioCallViewController *)self view];
  v16 = [v31 bottomAnchor];
  v17 = [v30 constraintEqualToAnchor:v16];
  v46[2] = v17;
  v18 = [(iPadAudioCallViewController *)self backgroundController];
  v19 = [v18 backgroundContainer];
  v20 = [v19 topAnchor];
  v21 = [(iPadAudioCallViewController *)self view];
  v22 = [v21 topAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  v46[3] = v23;
  v24 = [NSArray arrayWithObjects:v46 count:4];
  [NSLayoutConstraint activateConstraints:v24];

  [(iPadAudioCallViewController *)self setupAmbientAudioRoutesControlViewIfNeeded];
  [(iPadAudioCallViewController *)self addCallParticipantsSubView];
  [(iPadAudioCallViewController *)self addBottomBarSubView];
  if (![(iPadAudioCallViewController *)self isShowingPoster])
  {
    [(iPadAudioCallViewController *)self addDefaultBackgroundGradientView];
    v25 = [(iPadAudioCallViewController *)self existingPrioritizedCall];
    [(iPadAudioCallViewController *)self addNoPosterContactImage:v25];

    [(iPadAudioCallViewController *)self constraintDefaultNoPosterAvatarView];
    [(iPadAudioCallViewController *)self updateDefaultNoPosterAvatarViewVisibility];
  }

  [(iPadAudioCallViewController *)self addMiddleStackView];
  [(iPadAudioCallViewController *)self updateCurrentState];
  [(iPadAudioCallViewController *)self updatePosterSaliencyRect];
  v26 = [(iPadAudioCallViewController *)self glassDimmingView];
  v27 = [(iPadAudioCallViewController *)self view];
  [v27 bounds];
  [(iPadAudioCallViewController *)self updateDimmingView:v26 with:v28, v29];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController view will appear.", buf, 2u);
  }

  v9.receiver = self;
  v9.super_class = iPadAudioCallViewController;
  [(iPadAudioCallViewController *)&v9 viewWillAppear:v3];
  [(iPadAudioCallViewController *)self handleViewWillAppear:v3];
  [(iPadAudioCallViewController *)self updateBottomShelfWithMiddleViewState:self->_middleViewState callDisplayStyle:[(ICSCallDisplayStyleManager *)self->_callDisplayStyleManager callDisplayStyle]];
  v6 = [(iPadAudioCallViewController *)self view];
  [v6 layoutIfNeeded];

  v7 = [(iPadAudioCallViewController *)self defaultNoPosterAvatarView];
  [v7 setNeedsLayout];

  v8 = [(iPadAudioCallViewController *)self defaultNoPosterAvatarView];
  [v8 layoutIfNeeded];
}

- (void)handleViewWillAppear:(BOOL)a3
{
  [(iPadAudioCallViewController *)self setParticipantsViewControllersShouldIgnoreUpdates:0];
  [(iPadAudioCallViewController *)self updateCurrentState];
  [(iPadAudioCallViewController *)self updateScreenSharingDisableUpdateMask];
  v8 = [(iPadAudioCallViewController *)self features];
  if ([v8 isEnhancedEmergencyEnabled])
  {
    v4 = [(iPadAudioCallViewController *)self emergencyCoordinator];
    if (v4)
    {
      v5 = v4;
      v6 = [(iPadAudioCallViewController *)self emergencyCoordinator];
      v7 = [v6 eedRTTState];

      if (v7 != 4)
      {
        return;
      }

      v8 = [(iPadAudioCallViewController *)self emergencyCoordinator];
      [v8 transitionToRTTState:2];
    }
  }
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = iPadAudioCallViewController;
  [(iPadAudioCallViewController *)&v4 viewIsAppearing:a3];
  [(iPadAudioCallViewController *)self updateLayeredBackgroundWallpaper];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController view did appear.", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = iPadAudioCallViewController;
  [(iPadAudioCallViewController *)&v6 viewDidAppear:v3];
  [(iPadAudioCallViewController *)self handleViewDidAppear:v3];
}

- (void)handleViewDidAppear:(BOOL)a3
{
  v4 = 0.300000012;
  if (!a3)
  {
    v4 = 0.0;
  }

  [(PHCallViewController *)self setStatusBarHidden:0 withDuration:v4];
  v16 = [(iPadAudioCallViewController *)self frontmostCall];
  v5 = [v16 provider];
  if ([v5 isFaceTimeProvider])
  {
    v6 = [v16 isVideo];

    if (v6)
    {
      goto LABEL_7;
    }

    v5 = +[CUTWiFiManager sharedInstance];
    [v5 addWiFiAutoAssociationClientToken:@"iPadFaceTimeAudioWiFiAssertionKey"];
  }

LABEL_7:
  v7 = [(iPadAudioCallViewController *)self callCenter];
  [v7 enteredForegroundForCall:v16];

  v8 = +[UIApplication sharedApplication];
  v9 = [v8 delegate];
  v10 = [v9 alertCoordinator];
  v11 = [v10 isMonitoring];

  v12 = +[UIApplication sharedApplication];
  v13 = [v12 delegate];
  v14 = [v13 alertCoordinator];
  v15 = v14;
  if (v11)
  {
    [v14 refreshDelegateWithState];
  }

  else
  {
    [v14 startMonitoring];
  }
}

- (void)viewDidLayoutSubviews
{
  v11.receiver = self;
  v11.super_class = iPadAudioCallViewController;
  [(iPadAudioCallViewController *)&v11 viewDidLayoutSubviews];
  v3 = [(iPadAudioCallViewController *)self callParticipantsViewController];
  if (v3)
  {
    v4 = v3;
    v5 = [(iPadAudioCallViewController *)self canDumpHierarchy];

    if (v5)
    {
      v6 = [(iPadAudioCallViewController *)self callParticipantsViewController];
      v7 = [v6 view];
      [ICSViewEvaluation processHierarchy:v7];

      [(iPadAudioCallViewController *)self setCanDumpHierarchy:0];
    }
  }

  [(iPadAudioCallViewController *)self updatePosterSaliencyRect];
  v8 = [(iPadAudioCallViewController *)self view];
  [v8 bounds];
  [(iPadAudioCallViewController *)self updateDimmingLayerInPosterForViewSize:v9, v10];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController view will disappear.", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = iPadAudioCallViewController;
  [(iPadAudioCallViewController *)&v6 viewWillDisappear:v3];
  [(iPadAudioCallViewController *)self handleViewWillDisappear:v3];
}

- (void)handleViewWillDisappear:(BOOL)a3
{
  v3 = +[CUTWiFiManager sharedInstance];
  [v3 removeWiFiAutoAssociationClientToken:@"iPadFaceTimeAudioWiFiAssertionKey"];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController view did disappear.", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = iPadAudioCallViewController;
  [(PHCallViewController *)&v6 viewDidDisappear:v3];
  [(iPadAudioCallViewController *)self handleViewDidDisappear:v3];
  [(iPadAudioCallViewController *)self setCanDumpHierarchy:1];
}

- (void)handleViewDidDisappear:(BOOL)a3
{
  v4 = [(iPadAudioCallViewController *)self callCenter];
  [v4 enteredBackgroundForAllCalls];

  [(iPadAudioCallViewController *)self suspendPosterAndCancelDelay:1];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v8.receiver = self;
  v8.super_class = iPadAudioCallViewController;
  [(iPadAudioCallViewController *)&v8 viewDidMoveToWindow:v6 shouldAppearOrDisappear:v4];
  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v10 = v6;
    v11 = 1024;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController view did move to window %@, shouldAppearOrDisappear %d", buf, 0x12u);
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v12.receiver = self;
  v12.super_class = iPadAudioCallViewController;
  v7 = a4;
  [(iPadAudioCallViewController *)&v12 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  [(iPadAudioCallViewController *)self updateConstraintsConstantsBasedOnSize:width, height];
  v8 = [(iPadAudioCallViewController *)self backgroundController];
  [v8 updateIsLandscape:width > height];

  v9 = [(iPadAudioCallViewController *)self glassDimmingView];
  [(iPadAudioCallViewController *)self updateDimmingView:v9 with:width, height];

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
  [v7 animateAlongsideTransition:v11 completion:v10];
}

- (void)traitCollectionDidChange:(id)a3
{
  v37.receiver = self;
  v37.super_class = iPadAudioCallViewController;
  v4 = a3;
  [(iPadAudioCallViewController *)&v37 traitCollectionDidChange:v4];
  v5 = [v4 _backlightLuminance];

  v6 = [(iPadAudioCallViewController *)self traitCollection];
  v7 = [v6 _backlightLuminance];

  if (v5 != v7)
  {
    [(iPadAudioCallViewController *)self updateCallDurationVisibility];
    v8 = [(iPadAudioCallViewController *)self traitCollection];
    v9 = [v8 _backlightLuminance];

    v10 = [(iPadAudioCallViewController *)self traitCollection];
    v11 = [v10 _backlightLuminance];

    if (!v11)
    {
      v12 = sub_100004F84();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Got trait collection callback saying display was off", v36, 2u);
      }

      [(iPadAudioCallViewController *)self suspendPosterAndCancelDelay:1];
    }

    if (v9 != 1)
    {
      v26 = [(iPadAudioCallViewController *)self alwaysOnDisplayDimmingView];
      [v26 setAlpha:0.0];

      v27 = [(iPadAudioCallViewController *)self renderingViewController];
      if (!v27)
      {
        goto LABEL_24;
      }

      v28 = v27;
      v29 = [(iPadAudioCallViewController *)self canShowPosterImage];

      if (!v29)
      {
        goto LABEL_24;
      }

      v30 = [(iPadAudioCallViewController *)self renderingViewController];
      v31 = [v30 view];
      [v31 setAlpha:1.0];

      goto LABEL_23;
    }

    v13 = [(iPadAudioCallViewController *)self view];
    v14 = [(iPadAudioCallViewController *)self alwaysOnDisplayDimmingView];
    [v13 bringSubviewToFront:v14];

    v15 = [(iPadAudioCallViewController *)self view];
    v16 = [(iPadAudioCallViewController *)self callParticipantsViewController];
    v17 = [v16 view];
    [v15 bringSubviewToFront:v17];

    v18 = [(iPadAudioCallViewController *)self alwaysOnDisplayDimmingView];
    [v18 setAlpha:1.0];

    v19 = [(iPadAudioCallViewController *)self renderingViewController];

    if (v19)
    {
      v20 = [(iPadAudioCallViewController *)self renderingViewController];
      v21 = [v20 view];
      [v21 setAlpha:0.0];
    }

    v22 = [(iPadAudioCallViewController *)self alwaysOnDisplayPosterNameViewModel];

    if (!v22)
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

      v30 = [(iPadAudioCallViewController *)self emergencyCoordinator];
      [v30 handleDeviceLockEvent];
LABEL_23:

LABEL_24:
      v34 = [(iPadAudioCallViewController *)self stateDisplayChangedObservation];

      if (v34)
      {
        v35 = [(iPadAudioCallViewController *)self stateDisplayChangedObservation];
        v35[2]();
      }

      return;
    }

    v23 = +[TUCallCenter sharedInstance];
    if ([v23 currentCallCount] < 2)
    {
    }

    else
    {
      v24 = [(iPadAudioCallViewController *)self usesCompactMulticallUI];

      v25 = 0.0;
      if ((v24 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v25 = 1.0;
LABEL_18:
    v32 = [(iPadAudioCallViewController *)self alwaysOnDisplayPosterNameViewModel];
    [v32 updatePosterNameAlpha:v25];

    goto LABEL_19;
  }
}

- (BOOL)needsDismissalAssertion
{
  v2 = [(iPadAudioCallViewController *)self callCenter];
  v3 = [v2 hasCurrentAudioCalls];

  return v3;
}

- (void)releaseDismissalAssertion
{
  v2.receiver = self;
  v2.super_class = iPadAudioCallViewController;
  [(PHCallViewController *)&v2 releaseDismissalAssertion];
  [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHAudioCallViewControllerDismissalAssertionHandlingCallFailure"];
}

- (void)callIsEmergencyChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    v14 = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v14, 0x16u);
  }

  v9 = [v4 object];
  if (v9)
  {
    if ([(iPadAudioCallViewController *)self shouldUpdateBackgroundForEmergencyCall])
    {
      [(iPadAudioCallViewController *)self updateViewForEmergencyCallIfNecessary];
      v10 = [(iPadAudioCallViewController *)self emergencyCoordinator];

      if (!v10)
      {
        v11 = sub_100004F84();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412290;
          v15 = self;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "EnhancedEmergency: going to create PHEnhancedEmergencyCoordinator from callIsEmergencyChangedNotification from iPadAudioCallViewController: %@", &v14, 0xCu);
        }

        v12 = objc_alloc_init(PHEnhancedEmergencyCoordinator);
        [(iPadAudioCallViewController *)self setEmergencyCoordinator:v12];

        v13 = [(iPadAudioCallViewController *)self emergencyCoordinator];
        [v13 setDelegate:self];
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

  v4 = [(iPadAudioCallViewController *)self renderingViewController];

  if (v4)
  {
    [(iPadAudioCallViewController *)self removePosterViewController:1 completion:0];
  }

  v5 = [(iPadAudioCallViewController *)self backgroundImageView];

  if (v5)
  {
    [(iPadAudioCallViewController *)self removeBackgroundContactImageView];
  }

  v6 = [(iPadAudioCallViewController *)self defaultBackgroundGradientView];

  if (v6)
  {
    [(iPadAudioCallViewController *)self removeDefaultBackgroundGradientView];
  }

  v7 = [(iPadAudioCallViewController *)self unblurredBackgroundImageView];

  if (v7)
  {
    v8 = [(iPadAudioCallViewController *)self unblurredBackgroundImageView];
    [v8 removeFromSuperview];

    [(iPadAudioCallViewController *)self setUnblurredBackgroundImageView:0];
  }

  [(iPadAudioCallViewController *)self updateBackgroundForEmergencyCall];
  [(iPadAudioCallViewController *)self _updateStatusLabelVisibility];
}

- (void)wantsHoldMusicChangedNotification:(id)a3
{
  v4 = [(iPadAudioCallViewController *)self frontmostCall];
  v5 = [v4 wantsHoldMusic];

  if (v5)
  {
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "decline with reminder and decline with message unavailable due to call wanting hold music.", v9, 2u);
    }

    v7 = [(PHCallViewController *)self bottomBar];
    [v7 setDeclineAndMessageIsAvailable:0];

    v8 = [(PHCallViewController *)self bottomBar];
    [v8 setDeclineAndRemindIsAvailable:0];
  }
}

- (void)callCenterScreeningStatusChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v11, 0x16u);
  }

  [(iPadAudioCallViewController *)self updateCurrentState];
  v9 = [(iPadAudioCallViewController *)self getParticipantsView_NotWaiting];
  v10 = [v9 singleCallLabelView];
  [v10 updateLabelsOrderAndLayout];
}

- (void)callCenterCallStatusChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    v49 = 138412546;
    v50 = v6;
    v51 = 2112;
    v52 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v49, 0x16u);
  }

  v9 = [v4 object];
  if (![(iPadAudioCallViewController *)self usesCompactMulticallUI])
  {
    goto LABEL_12;
  }

  v10 = [(iPadAudioCallViewController *)self prioritizedCall];
  v11 = [v10 callUUID];
  if (!v11)
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = v11;
  v13 = [v9 callUUID];
  v14 = [(iPadAudioCallViewController *)self prioritizedCall];
  v15 = [v14 callUUID];
  v16 = v15;
  if (v13 == v15)
  {

    goto LABEL_11;
  }

  v17 = [(iPadAudioCallViewController *)self prioritizedCallIsInSameCallGroupAsCall:v9];

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
  if ([v9 status] == 1)
  {
    v19 = [(iPadAudioCallViewController *)self features];
    if ([v19 isEnhancedEmergencyEnabled])
    {
      v20 = [(iPadAudioCallViewController *)self emergencyCoordinator];
      if (v20)
      {
      }

      else
      {
        v21 = [v9 isEmergency];

        if (!v21)
        {
LABEL_21:
          [(iPadAudioCallViewController *)self tipKitStartWaitOnHoldObservation];
          goto LABEL_22;
        }

        v22 = sub_100004F84();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v49 = 138412290;
          v50 = self;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "EnhancedEmergency: going to create PHEnhancedEmergencyCoordinator when call is active from iPadAudioCallViewController: %@", &v49, 0xCu);
        }

        v23 = objc_alloc_init(PHEnhancedEmergencyCoordinator);
        [(iPadAudioCallViewController *)self setEmergencyCoordinator:v23];

        v19 = [(iPadAudioCallViewController *)self emergencyCoordinator];
        [v19 setDelegate:self];
      }
    }

    goto LABEL_21;
  }

LABEL_22:
  if ([v9 status] == 6)
  {
    v24 = +[UIApplication sharedApplication];
    v25 = [v24 delegate];
    [v25 setMostRecentlyDisconnectedAudioCall:v9];

    v26 = [v9 uniqueProxyIdentifier];
    [(iPadAudioCallViewController *)self clearMenuItemRegistration:v26];

    v27 = [(iPadAudioCallViewController *)self frontmostCall];
    if (([v9 isVideo] & 1) == 0 && objc_msgSend(v9, "disconnectedReason") == 6)
    {
      if (v27)
      {
        v42 = [(PHCallViewController *)self bottomBar];
        v43 = [v42 currentState];

        if (v43 == 7)
        {
          v44 = [(iPadAudioCallViewController *)self analyticsReporter];
          [v44 reportMultipleCallsWaitingUIAction:0];
        }
      }
    }

    [(iPadAudioCallViewController *)self writeToLastSeenPosterCacheIfNecessaryForCall:v9];
    v28 = [(iPadAudioCallViewController *)self features];
    if (([v28 isEnhancedEmergencyEnabled] & 1) != 0 && (-[iPadAudioCallViewController emergencyCoordinator](self, "emergencyCoordinator"), (v29 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v30 = v29;
      v31 = [v9 isEmergency];

      if (v31)
      {
        v32 = sub_100004F84();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [(iPadAudioCallViewController *)self emergencyCoordinator];
          v49 = 138412290;
          v50 = v33;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "EnhancedEmergency: clean emergencyCoordinator: %@", &v49, 0xCu);
        }

        v34 = [(iPadAudioCallViewController *)self emergencyCoordinator];
        [v34 cleanUpViewAndObjectWhenCallEnds];

        [(iPadAudioCallViewController *)self setEmergencyCoordinator:0];
      }
    }

    else
    {
    }

    [(iPadAudioCallViewController *)self tipKitStopWaitOnHoldObservation];
  }

  v35 = [(iPadAudioCallViewController *)self emergencyCoordinator];

  if (v35)
  {
    v36 = [(iPadAudioCallViewController *)self emergencyCoordinator];
    [v36 setTuCall:v9];
  }

  [(iPadAudioCallViewController *)self updateViewsForHeldCallControlsViewIfNeeded];
  [(iPadAudioCallViewController *)self updateCurrentState];
  [(iPadAudioCallViewController *)self refreshUseRTTButton];
  v37 = [(iPadAudioCallViewController *)self callCenter];
  v38 = [v37 autoPunchOutBehaviorRequiredForCurrentCalls];

  if (v38)
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
    v40 = [(iPadAudioCallViewController *)self callCenter];
    v41 = [v40 shouldActivateProviderInBackgroundForCall:v9];

    if (v41)
    {
      [(PHCallViewController *)self activateProviderInBackgroundForCall:v9];
    }

    else
    {
      [(iPadAudioCallViewController *)self setParticipantsViewControllersShouldIgnoreUpdates:0];
    }
  }

  existingPrioritizedCall = self->_existingPrioritizedCall;
  v46 = [(iPadAudioCallViewController *)self view];
  [v46 frame];
  [(iPadAudioCallViewController *)self updateTopShelfContentWithCall:existingPrioritizedCall sceneWindowSize:v47, v48];

LABEL_46:
}

- (void)conferenceParticipantCallsChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  [(iPadAudioCallViewController *)self updateCurrentState];
}

- (void)receptionistStateChanged:(id)a3
{
  v4 = [(iPadAudioCallViewController *)self frontmostCall];
  v5 = [v4 isScreening];

  if (v5)
  {
    v6 = [(iPadAudioCallViewController *)self screeningViewController];
    if (v6)
    {
      v7 = v6;
      v8 = [(iPadAudioCallViewController *)self isShowingNewTranscriptsView];

      if ((v8 & 1) == 0)
      {
        v9 = [(iPadAudioCallViewController *)self frontmostCall];
        v10 = [v9 receptionistState];

        if (v10)
        {
          [(iPadAudioCallViewController *)self setMiddleViewState:0 animated:0];
          [(iPadAudioCallViewController *)self setScreeningViewController:0];

          [(iPadAudioCallViewController *)self setMiddleViewState:4 animated:0];
        }
      }
    }
  }
}

- (void)callContinuityStateChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "callContinuityStateChangedNotification: %@", &v6, 0xCu);
  }

  [(iPadAudioCallViewController *)self updateCurrentState];
}

- (void)hardPauseDigitsStateChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "hardPauseDigitsStateChangedNotification: %@", &v7, 0xCu);
  }

  v6 = [(PHCallViewController *)self bottomBar];
  [v6 refreshCustomizedActionTypeTitles];

  [(iPadAudioCallViewController *)self updateHardPauseDigitsState];
  [(iPadAudioCallViewController *)self refreshExtensionNumberButton];
}

- (void)callOnHoldChangedNotification:(id)a3
{
  v4 = [(PHCallViewController *)self bottomBar];
  [v4 refreshEndCallButton];

  v5 = [(iPadAudioCallViewController *)self frontmostCall];
  [(iPadAudioCallViewController *)self updateWaitOnHoldServiceWithCall:v5];
}

- (void)handleTUCallSupportsTTYWithVoiceChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  [(iPadAudioCallViewController *)self refreshUseRTTButton];
}

- (void)handleTUCallTTYTypeChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    v32 = 138412546;
    v33 = v6;
    v34 = 2112;
    v35 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v32, 0x16u);
  }

  [(iPadAudioCallViewController *)self refreshUseRTTButton];
  v9 = [(iPadAudioCallViewController *)self features];
  if ([v9 isEnhancedEmergencyEnabled])
  {
    v10 = [(iPadAudioCallViewController *)self callCenter];
    v11 = [v10 frontmostCall];
    v12 = [v11 isEmergency];

    if (!v12)
    {
      goto LABEL_7;
    }

    v9 = [(iPadAudioCallViewController *)self emergencyCoordinator];
    v13 = [(iPadAudioCallViewController *)self callCenter];
    v14 = [v13 frontmostCall];
    [v9 updateRTTEnabled:{objc_msgSend(v14, "isRTT")}];
  }

LABEL_7:
  v15 = [(iPadAudioCallViewController *)self featureFlags];
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

    v18 = [(PHCallViewController *)self bottomBar];
    v19 = [v18 currentState];

    if (v19 == 23)
    {
      v20 = [(PHCallViewController *)self bottomBar];
      [v20 setCurrentState:29];

      v21 = [(PHCallViewController *)self bottomBar];
      [v21 setCurrentState:23];
    }
  }

  v22 = +[UIApplication sharedApplication];
  v23 = [v22 delegate];
  v24 = [v23 currentInCallScene];

  if (v24)
  {
    v25 = +[UIApplication sharedApplication];
    v26 = [v25 delegate];
    v27 = [v26 currentInCallScene];
    v28 = [v27 delegate];
    v29 = +[UIApplication sharedApplication];
    v30 = [v29 delegate];
    v31 = [v30 currentInCallScene];
    [v28 updateSceneBackgroundMaterialWith:v31];
  }
}

- (void)callIsScreenSharingChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = [v4 name];
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v8, 0x16u);
  }

  [(iPadAudioCallViewController *)self updateScreenSharingDisableUpdateMask];
}

- (void)callDisplayContextChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = [v4 name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  v8 = [v4 object];
  [(iPadAudioCallViewController *)self updateBottomBarButtonsWithCall:v8];
}

- (void)setShowsCallDetailsViewButton:(BOOL)a3
{
  v3 = a3;
  v5 = [(iPadAudioCallViewController *)self callDetailsViewButton];
  v6 = v5;
  if (v3)
  {

    if (!v6)
    {

      [(iPadAudioCallViewController *)self setUpCallDetailsViewButton];
    }
  }

  else
  {
    [v5 removeFromSuperview];

    [(iPadAudioCallViewController *)self setCallDetailsViewButton:0];
  }
}

- (void)setUpCallDetailsViewButton
{
  v3 = [UIButton buttonWithType:4];
  [(iPadAudioCallViewController *)self setCallDetailsViewButton:v3];

  v4 = [(iPadAudioCallViewController *)self callDetailsViewButton];
  [v4 addTarget:self action:"callDetailsViewButtonTapped" forEvents:64];

  v5 = [(iPadAudioCallViewController *)self callDetailsViewButton];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(iPadAudioCallViewController *)self view];
  v7 = [(iPadAudioCallViewController *)self callDetailsViewButton];
  [v6 addSubview:v7];

  v8 = +[UIColor whiteColor];
  v9 = [(iPadAudioCallViewController *)self callDetailsViewButton];
  [v9 setTintColor:v8];

  v10 = [(iPadAudioCallViewController *)self callDetailsViewButton];
  [(iPadAudioCallViewController *)self applyCallDetailsViewButtonPositionAndSizeCapToElement:v10];
}

- (double)callDetailsButtonPaddingTop
{
  +[TPIncomingCallMetricsProvider fullDeviceHeight];
  [(iPadAudioCallViewController *)self callDetailsButtonPaddingTop_PERCENT];
  v3 = [(iPadAudioCallViewController *)self view];
  UIRoundToViewScale();
  v5 = v4;

  return v5;
}

- (double)callDetailsButtonPaddingTrailing
{
  +[TPIncomingCallMetricsProvider fullDeviceWidth];
  [(iPadAudioCallViewController *)self callDetailsButtonPaddingTrailing_PERCENT];
  v3 = [(iPadAudioCallViewController *)self view];
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
    v3 = [(iPadAudioCallViewController *)self features];
    v4 = [v3 isSystemApertureEnabled];

    if (v4)
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
    v3 = [(iPadAudioCallViewController *)self features];
    v4 = [v3 isSystemApertureEnabled];

    if (v4)
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

- (void)updateParticipantConstraintsForPosterName:(id)a3
{
  v9 = a3;
  v4 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  v5 = [v4 callDisplayStyle];

  if (v5)
  {
    if (![(iPadAudioCallViewController *)self participantsViewIsShowingMultipleLabel])
    {
      v6 = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];
      if (v6)
      {
      }

      else if ([(iPadAudioCallViewController *)self callHasContactPosterWithVerticalName])
      {
        [(iPadAudioCallViewController *)self positionParticipantsViewStatusLabelToBeHorizontallyCenteredToInfoButton:v9];
        v7 = [(iPadAudioCallViewController *)self callDetailsViewButton];
        v8 = +[TPIncomingCallMetricsProvider callDetailsButtonMaxSize];
        [v7 setMaximumContentSizeCategory:v8];

        goto LABEL_8;
      }
    }

    [(iPadAudioCallViewController *)self restoreParticipantsViewStatusLabelForFullScreen];
  }

LABEL_8:
}

- (void)restoreParticipantsViewStatusLabelForFullScreen
{
  v3 = [(iPadAudioCallViewController *)self participantsViewVerticalPosterNameTopConstraint];
  if (v3)
  {
    v4 = v3;
    v5 = [(iPadAudioCallViewController *)self participantsViewVerticalPosterNameTopConstraint];
    v6 = [v5 isActive];

    if (v6)
    {
      v7 = [(iPadAudioCallViewController *)self participantsViewVerticalPosterNameTopConstraint];
      [v7 setActive:0];

      [(iPadAudioCallViewController *)self setParticipantsViewVerticalPosterNameTopConstraint:0];
    }
  }

  v8 = [(iPadAudioCallViewController *)self participantsViewTopConstraint];
  if (v8)
  {
    v9 = v8;
    v10 = [(iPadAudioCallViewController *)self participantsViewTopConstraint];
    v11 = [v10 isActive];

    if ((v11 & 1) == 0)
    {
      v12 = [(iPadAudioCallViewController *)self participantsViewTopConstraint];
      [v12 setActive:1];
    }
  }
}

- (void)positionParticipantsViewStatusLabelToBeHorizontallyCenteredToInfoButton:(id)a3
{
  v4 = a3;
  v16 = +[NSMutableArray array];
  v5 = [(iPadAudioCallViewController *)self participantsViewTopConstraint];

  if (v5)
  {
    v6 = [(iPadAudioCallViewController *)self participantsViewTopConstraint];
    [v16 addObject:v6];
  }

  v7 = [(iPadAudioCallViewController *)self participantsViewCenterYConstraint];

  if (v7)
  {
    v8 = [(iPadAudioCallViewController *)self participantsViewCenterYConstraint];
    [v16 addObject:v8];
  }

  v9 = [(iPadAudioCallViewController *)self participantsViewVerticalPosterNameTopConstraint];

  if (v9)
  {
    v10 = [(iPadAudioCallViewController *)self participantsViewVerticalPosterNameTopConstraint];
    [v16 addObject:v10];
  }

  [NSLayoutConstraint deactivateConstraints:v16];
  v11 = [v4 topAnchor];

  v12 = [(iPadAudioCallViewController *)self view];
  v13 = [v12 topAnchor];
  [(iPadAudioCallViewController *)self callDetailsButtonPaddingTop];
  v14 = [v11 constraintEqualToAnchor:v13 constant:?];
  [(iPadAudioCallViewController *)self setParticipantsViewVerticalPosterNameTopConstraint:v14];

  v15 = [(iPadAudioCallViewController *)self participantsViewVerticalPosterNameTopConstraint];
  [v15 setActive:1];
}

- (void)positionPosterBadgeToBeHorizontallyCenteredToInfoButton:(id)a3
{
  v4 = a3;
  v5 = [v4 leadingAnchor];
  v6 = [(iPadAudioCallViewController *)self view];
  v7 = [v6 leadingAnchor];
  [(iPadAudioCallViewController *)self callDetailsButtonPaddingTrailing];
  v8 = [v5 constraintEqualToAnchor:v7 constant:?];
  v15[0] = v8;
  v9 = [v4 topAnchor];

  v10 = [(iPadAudioCallViewController *)self view];
  v11 = [v10 topAnchor];
  [(iPadAudioCallViewController *)self callDetailsButtonPaddingTop];
  v13 = [v9 constraintEqualToAnchor:v11 constant:v12 + 6.0];
  v15[1] = v13;
  v14 = [NSArray arrayWithObjects:v15 count:2];
  [NSLayoutConstraint activateConstraints:v14];
}

- (void)applySizeToElement:(id)a3 usingThisElementAsGuide:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [v5 widthAnchor];
    v8 = [v6 widthAnchor];
    v9 = [v7 constraintEqualToAnchor:v8 constant:0.0];
    v16[0] = v9;
    v10 = [v5 heightAnchor];
    v11 = [v6 heightAnchor];
    v12 = [v10 constraintEqualToAnchor:v11 constant:0.0];
    v16[1] = v12;
    v13 = [NSArray arrayWithObjects:v16 count:2];
    [NSLayoutConstraint activateConstraints:v13];

    v14 = [v6 maximumContentSizeCategory];

    if (v14)
    {
      v15 = [v6 maximumContentSizeCategory];
      [v5 setMaximumContentSizeCategory:v15];
    }
  }
}

- (void)applyCallDetailsViewButtonPositionAndSizeCapToElement:(id)a3
{
  v4 = a3;
  v5 = [v4 topAnchor];
  v6 = [(iPadAudioCallViewController *)self view];
  v7 = [v6 topAnchor];
  [(iPadAudioCallViewController *)self callDetailsButtonPaddingTop];
  v8 = [v5 constraintEqualToAnchor:v7 constant:?];
  v16[0] = v8;
  v9 = [v4 trailingAnchor];
  v10 = [(iPadAudioCallViewController *)self view];
  v11 = [v10 trailingAnchor];
  [(iPadAudioCallViewController *)self callDetailsButtonPaddingTrailing];
  v13 = [v9 constraintEqualToAnchor:v11 constant:-v12];
  v16[1] = v13;
  v14 = [NSArray arrayWithObjects:v16 count:2];
  [NSLayoutConstraint activateConstraints:v14];

  v15 = +[TPIncomingCallMetricsProvider callDetailsButtonMaxSize];
  [v4 setMaximumContentSizeCategory:v15];
}

- (BOOL)shouldShowCallDetailsViewButton
{
  v4 = +[CNKFeatures sharedInstance];
  v5 = [v4 isMoreMenuEnabled];

  v6 = [(iPadAudioCallViewController *)self frontmostCall];
  v7 = v6;
  if (v5)
  {
    v8 = [(iPadAudioCallViewController *)self callCenter];
    v9 = [v8 currentCallGroups];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v25 + 1) + 8 * i) calls];
          v16 = [v15 count];

          if (v16 > 1)
          {
            v17 = 1;
            goto LABEL_20;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
LABEL_20:

    v2 = [v7 provider];
    if ((([v2 isFaceTimeProvider] & 1) != 0 || v17 && -[iPadAudioCallViewController shouldShowConferenceCallDetails](self, "shouldShowConferenceCallDetails")) && ((objc_msgSend(v7, "isActive", v25) & 1) != 0 || objc_msgSend(v7, "isOnHold")) && (objc_msgSend(v7, "isVideo") & 1) == 0)
    {
      v22 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
      if ([v22 callDisplayStyle])
      {
        v23 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
        v21 = [v23 callDisplayStyle] != 3;
      }

      else
      {
        v21 = 0;
      }

      goto LABEL_34;
    }

    goto LABEL_28;
  }

  v10 = [v6 provider];
  v18 = [v10 isFaceTimeProvider];
  if ((v18 & 1) == 0)
  {
    v2 = [v7 provider];
    if (![v2 isTelephonyProvider])
    {
LABEL_28:
      v21 = 0;
      goto LABEL_34;
    }
  }

  if ((([v7 isActive] & 1) != 0 || objc_msgSend(v7, "isOnHold")) && (objc_msgSend(v7, "isVideo") & 1) == 0)
  {
    v19 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
    if ([v19 callDisplayStyle])
    {
      v20 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
      v21 = [v20 callDisplayStyle] != 3;

      if (v18)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  v21 = 0;
  if (v18)
  {
    goto LABEL_35;
  }

LABEL_34:

LABEL_35:
  return v21;
}

- (void)callDetailsViewButtonTapped
{
  v3 = [(iPadAudioCallViewController *)self frontmostCall];
  if ([(iPadAudioCallViewController *)self shouldShowConferenceCallDetails])
  {
    v4 = objc_alloc_init(PHConferenceParticipantsViewController);
    v5 = [[UINavigationController alloc] initWithRootViewController:v4];
    v6 = +[UIColor grayColor];
    v7 = [v5 view];
    [v7 setBackgroundColor:v6];

    v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"dismissNavigationController"];
    v9 = [(PHConferenceParticipantsViewController *)v4 navigationItem];
    [v9 setLeftBarButtonItem:v8];

    [(iPadAudioCallViewController *)self presentViewController:v5 animated:1 completion:0];
  }

  else
  {
    v10 = [v3 provider];
    v11 = [v10 isTelephonyProvider];

    if (v11)
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

- (void)contactViewController:(id)a3 didExecuteBlockAndReportContactAction:(id)a4
{
  v5 = [(iPadAudioCallViewController *)self activeCall:a3];
  [(iPadAudioCallViewController *)self reportWithCall:v5];
}

- (BOOL)shouldShowConferenceCallDetails
{
  v3 = [(iPadAudioCallViewController *)self callParticipantsViewController];
  v4 = [v3 view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  v6 = [(iPadAudioCallViewController *)self getParticipantsView_NotWaiting];
  v7 = [(iPadAudioCallViewController *)self callParticipantsViewController];
  v8 = [v7 shouldShowInfoButtonForParticipantAtIndex:0 inParticipantsView:v6];

  return v8;
}

- (BOOL)canDoInfoButtonCoinFlipWith:(id)a3 contactStore:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 BOOLForKey:@"iPadInCallUIInfoButtonCoinFlipKey"];

  if (v8)
  {
    v9 = [[CNSharedProfileStateOracle alloc] initWithContact:v5 contactStore:v6];
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
  v48 = [(iPadAudioCallViewController *)self features];
  if ([v48 isNameAndPhotoC3Enabled])
  {
    v3 = [(iPadAudioCallViewController *)self callDetailsViewButton];

    if (!v3)
    {
      return;
    }

    v4 = [(iPadAudioCallViewController *)self frontmostCall];
    v5 = [v4 contactIdentifier];

    if (!v5)
    {
      goto LABEL_28;
    }

    v6 = [PHInCallUtilities contactStoreForCall:v4];
    v7 = [v4 contactIdentifier];
    v8 = +[iPadAudioCallViewController contactKeysToFetch];
    v9 = [(iPadAudioCallViewController *)self contactsCache];
    v10 = [v6 contactForIdentifier:v7 keysToFetch:v8 usingCache:v9];

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
        v15 = [v11 currentNickname];
        v16 = [v10 imageData];
        *buf = 138412546;
        v58 = v15;
        v59 = 2112;
        v60 = v16;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "SNAP: animateInfoButtonCoinFlipIfNeeded using currentNickname %@ contact.imageData: %@", buf, 0x16u);
      }

      v17 = [v11 currentNickname];

      v18 = [CNSharedProfile alloc];
      v19 = v18;
      if (!v17)
      {
        v49 = [v18 initWithContact:v10];
        goto LABEL_18;
      }

      v20 = [v11 currentNickname];
    }

    else
    {
      if (v14)
      {
        v21 = [v11 pendingNickname];
        *buf = 138412290;
        v58 = v21;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "SNAP: animateInfoButtonCoinFlipIfNeeded using pendingNickname %@", buf, 0xCu);
      }

      v19 = [CNSharedProfile alloc];
      v20 = [v11 pendingNickname];
    }

    v22 = v20;
    v49 = [v19 initWithNickname:v20];

LABEL_18:
    v23 = [(iPadAudioCallViewController *)self callDetailsViewButton];
    [v23 setAlpha:0.0];

    v24 = objc_alloc_init(UIView);
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [(iPadAudioCallViewController *)self view];
    [v25 addSubview:v24];

    v26 = [v11 pendingNickname];
    v27 = [v26 avatar];

    v46 = v27;
    if (+[_TtC13InCallService23SensitivityFeatureFlags isSensitivityAvatarTreatmentEnabled])
    {
      v28 = [v27 contentIsSensitive];
      v29 = sub_100004F84();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v58) = v28;
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

      LOBYTE(v28) = 0;
    }

    v30 = +[ICSPreferences sharedPreferences];
    v31 = [v30 forceBlurNewPoster];

    v32 = v31 | v28;
    v33 = [_TtC13InCallService19BlurrableAvatarView alloc];
    v34 = [v49 contact];
    v35 = [(BlurrableAvatarView *)v33 initWithContact:v34 wantsBlur:v32 & 1 isCommunicationSafetyEnabled:+[_TtC13InCallService23SensitivityFeatureFlags isCommunicationSafetyEnabled]];

    [(BlurrableAvatarView *)v35 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v24 addSubview:v35];
    v36 = [UIButton buttonWithType:4];
    [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v24 addSubview:v36];
    v37 = +[UIColor secondaryLabelColor];
    [v36 setTintColor:v37];

    [(iPadAudioCallViewController *)self applyCallDetailsViewButtonPositionAndSizeCapToElement:v36];
    v38 = [(iPadAudioCallViewController *)self wallpaperTitleStyleAttributes];
    v39 = v38;
    if (v38)
    {
      v40 = [v38 titleColor];
      [v36 setTintColor:v40];
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
    v54 = self;
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

- (void)triggerInversionColorUpdate:(id)a3
{
  v4 = a3;
  if (![(iPadAudioCallViewController *)self hasInvertedUIElementColorsBasedOnPoster])
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SNAP: We are going to update inversion color based on new configuration", buf, 2u);
    }

    v6 = [[TPInComingCallUISnapshotViewController alloc] initWithConfiguration:v4 style:0 nameString:&stru_100361FD0];
    objc_initWeak(buf, self);
    v7 = [(iPadAudioCallViewController *)self view];
    v8 = [v7 window];
    v9 = [v8 windowScene];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000D55E8;
    v10[3] = &unk_1003590C0;
    objc_copyWeak(&v11, buf);
    [v6 snapshotWithOptions:0 windowScene:v9 completionBlock:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

- (void)invertNecessaryUIElementsBasedOnPosterImage:(id)a3
{
  v4 = a3;
  if (![(iPadAudioCallViewController *)self hasInvertedUIElementColorsBasedOnPoster])
  {
    [(iPadAudioCallViewController *)self invertColorForBottomButtonsBasedOn:v4];
    [(iPadAudioCallViewController *)self invertColorForCallDetailsButtonBasedOn:v4];
    [(iPadAudioCallViewController *)self invertColorForPosterBadgeViewBasedOn:v4];
  }
}

+ (void)fetchPrefersWhiteColorAtCropRect:(CGRect)a3 image:(id)a4 completion:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a5;
  v11 = [iPadAudioCallViewController imageRefFrom:a4];
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
    v10[2](v10, v14, 0);
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
    (v10)[2](v10, 0, v17);

    v10 = v16;
  }
}

- (void)invertColorForBottomButtonsBasedOn:(id)a3
{
  v4 = a3;
  v5 = +[UIScreen mainScreen];
  [v5 bounds];
  v7 = v6;
  v9 = v8;

  [v4 scale];
  v11 = v10 * (v7 * 0.1);
  [v4 scale];
  v13 = v9 * 0.6 * v12;
  [v4 scale];
  v15 = v7 * 0.8 * v14;
  [v4 scale];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000D5A48;
  v17[3] = &unk_100358030;
  v17[4] = self;
  [objc_opt_class() fetchPrefersWhiteColorAtCropRect:v4 image:v17 completion:{v11, v13, v15, v9 * 0.3 * v16}];
}

- (void)invertColorForCallDetailsButtonBasedOn:(id)a3
{
  v4 = a3;
  v5 = [(iPadAudioCallViewController *)self callDetailsViewButton];
  [v5 origin];
  v7 = v6;
  [v4 scale];
  v9 = v7 * v8;
  v10 = [(iPadAudioCallViewController *)self callDetailsViewButton];
  [v10 origin];
  v12 = v11;
  [v4 scale];
  v14 = v12 * v13;
  v15 = [(iPadAudioCallViewController *)self callDetailsViewButton];
  [v15 frame];
  v17 = v16;
  [v4 scale];
  v19 = v18 * v17;
  v20 = [(iPadAudioCallViewController *)self callDetailsViewButton];
  [v20 frame];
  v22 = v21;
  [v4 scale];
  v24 = v23 * v22;

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000D5CB4;
  v25[3] = &unk_100358030;
  v25[4] = self;
  [objc_opt_class() fetchPrefersWhiteColorAtCropRect:v4 image:v25 completion:{v9, v14, v19, v24}];
}

- (void)invertColorForPosterBadgeViewBasedOn:(id)a3
{
  v4 = a3;
  v5 = [(iPadAudioCallViewController *)self posterBadgeView];
  if (v5)
  {
    v6 = v5;
    v7 = [(iPadAudioCallViewController *)self posterBadgeView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [(iPadAudioCallViewController *)self posterBadgeView];
      v10 = [(iPadAudioCallViewController *)self posterBadgeView];
      [v10 origin];
      v12 = v11;
      [v4 scale];
      v14 = v12 * v13;
      v15 = [(iPadAudioCallViewController *)self posterBadgeView];
      [v15 origin];
      v17 = v16;
      [v4 scale];
      v19 = v17 * v18;
      v20 = [(iPadAudioCallViewController *)self posterBadgeView];
      [v20 frame];
      v22 = v21;
      [v4 scale];
      v24 = v23 * v22;
      v25 = [(iPadAudioCallViewController *)self posterBadgeView];
      [v25 frame];
      v27 = v26;
      [v4 scale];
      v29 = v28 * v27;

      v30 = objc_opt_class();
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_1000D5F98;
      v32[3] = &unk_1003590E8;
      v32[4] = self;
      v33 = v9;
      v31 = v9;
      [v30 fetchPrefersWhiteColorAtCropRect:v4 image:v32 completion:{v14, v19, v24, v29}];
    }
  }
}

+ (BOOL)prefersWhiteTextOnImageRef:(CGImage *)a3
{
  v3 = [CNImageDerivedColorGenerator colorsForImageRef:a3];
  v4 = [CNImageDerivedColorBackgroundUtilities backgroundColorsPreferWhiteForegroundText:v3];

  return v4;
}

+ (CGImage)imageRefFrom:(id)a3
{
  v3 = a3;
  if ([v3 ioSurface])
  {
    v4 = UICreateCGImageFromIOSurface();
    [v3 size];
    v6 = v5;
    [v3 size];
    v8 = v7;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v10 = CGBitmapContextCreate(0, v6, v8, 8uLL, vcvtd_n_u64_f64(v6, 2uLL), DeviceRGB, 1u);
    v14.origin.x = 0.0;
    v14.origin.y = 0.0;
    v14.size.width = v6;
    v14.size.height = v8;
    CGContextDrawImage(v10, v14, v4);
    Image = CGBitmapContextCreateImage(v10);
    v12 = Image;
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
    v12 = [v3 CGImage];
  }

  return v12;
}

- (void)useRTTButtonTapped
{
  v4 = [(iPadAudioCallViewController *)self frontmostCall];
  v3 = [(iPadAudioCallViewController *)self callCenter];
  [v3 setTTYType:1 forCall:v4];
}

- (void)extensionNumberButtonTapped
{
  v2 = [(iPadAudioCallViewController *)self frontmostCall];
  [v2 sendHardPauseDigits];
}

- (void)callTransferButtonTapped
{
  v9 = objc_alloc_init(TUCallProviderManager);
  v3 = [TUDialRequest alloc];
  v4 = [v9 telephonyProvider];
  v5 = [v3 initWithProvider:v4];

  v6 = [[TUHandle alloc] initWithType:2 value:@"4"];
  [v5 setHandle:v6];

  [v5 setOriginatingUIType:38];
  v7 = [(iPadAudioCallViewController *)self callCenter];
  v8 = [v7 dialWithRequest:v5];
}

- (BOOL)shouldAddRTTButtonToViewHierarchy
{
  if (![(iPadAudioCallViewController *)self shouldShowUseRTT])
  {
    return 0;
  }

  v3 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([v3 callDisplayStyle] == 3)
  {
    v4 = [(iPadAudioCallViewController *)self features];
    v5 = ([v4 isDominoEnabled] & 1) == 0 && self->_middleViewState == 1;
  }

  else
  {
    v5 = self->_middleViewState == 1;
  }

  return v5;
}

- (BOOL)shouldAddExtensionNumberButtonToViewHierarchy
{
  v4 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  v5 = [v4 callDisplayStyle];
  if (v5 == 3)
  {
    v2 = [(iPadAudioCallViewController *)self features];
    if (([v2 isDominoEnabled] & 1) != 0 || self->_middleViewState != 1)
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

  v7 = [(iPadAudioCallViewController *)self frontmostCall];
  v6 = [v7 hardPauseDigitsState] == 2;

  if (v5 == 3)
  {
    goto LABEL_7;
  }

LABEL_9:

  return v6;
}

- (void)refreshExtensionNumberButton
{
  v3 = [(PHCallViewController *)self bottomBar];
  v4 = [(iPadAudioCallViewController *)self customizedTitleForItemInBar:v3 withActionType:23];

  [(PHAudioCallControlsSupplementalButton *)self->_extensionNumberButton setTitle:v4 forState:0];
  [(iPadAudioCallViewController *)self updateSupplementalButtonsLayout];
}

- (void)mergeCallsButtonTapped
{
  v3 = [(iPadAudioCallViewController *)self callCenter];
  v4 = [v3 callWithStatus:2];

  v5 = [(iPadAudioCallViewController *)self callCenter];
  v6 = [v5 callWithStatus:1];

  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Supplemental merge button tapped. Grouping held call %@ with active call %@", &v9, 0x16u);
  }

  v8 = [(iPadAudioCallViewController *)self callCenter];
  [v8 groupCall:v4 withOtherCall:v6];
}

- (void)updateLayoutSupplementalButtons
{
  if (self->_supplementalButtonsStackView)
  {
    [(iPadAudioCallViewController *)self removeSubviewFromMiddleStackViewWithView:?];
  }

  v3 = [(iPadAudioCallViewController *)self buttonsViewController];
  v34 = [v3 view];

  v4 = [v34 superview];
  if (v4)
  {
    v5 = v4;
    v6 = [(iPadAudioCallViewController *)self middleViewState];

    if (v6 == 1)
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
        v10 = [(iPadAudioCallViewController *)self callTransferButton];
        [v7 addArrangedSubview:v10];

        v11 = [(iPadAudioCallViewController *)self callTransferButton];
        [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

        v12 = [(iPadAudioCallViewController *)self callTransferButton];
        v13 = [v12 heightAnchor];
        v14 = [v7 heightAnchor];
        v15 = [v13 constraintEqualToAnchor:v14];
        [v15 setActive:1];
      }

      if ([(iPadAudioCallViewController *)self shouldShowMergeCalls])
      {
        v16 = [(iPadAudioCallViewController *)self mergeCallsButton];
        [v7 addArrangedSubview:v16];

        v17 = [(iPadAudioCallViewController *)self mergeCallsButton];
        [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

        v18 = [(iPadAudioCallViewController *)self mergeCallsButton];
        v19 = [v18 heightAnchor];
        v20 = [v7 heightAnchor];
        v21 = [v19 constraintEqualToAnchor:v20];
        [v21 setActive:1];
      }

      if ([(iPadAudioCallViewController *)self shouldAddExtensionNumberButtonToViewHierarchy])
      {
        v22 = [(iPadAudioCallViewController *)self extensionNumberButton];
        [v7 addArrangedSubview:v22];

        v23 = [(iPadAudioCallViewController *)self extensionNumberButton];
        [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

        v24 = [(iPadAudioCallViewController *)self extensionNumberButton];
        v25 = [v24 heightAnchor];
        v26 = [v7 heightAnchor];
        v27 = [v25 constraintEqualToAnchor:v26];
        [v27 setActive:1];
      }

      if ([(iPadAudioCallViewController *)self shouldAddRTTButtonToViewHierarchy])
      {
        v28 = [(iPadAudioCallViewController *)self useRTTButton];
        [v7 addArrangedSubview:v28];

        v29 = [(iPadAudioCallViewController *)self useRTTButton];
        [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

        v30 = [(iPadAudioCallViewController *)self useRTTButton];
        v31 = [v30 heightAnchor];
        v32 = [v7 heightAnchor];
        v33 = [v31 constraintEqualToAnchor:v32];
        [v33 setActive:1];
      }

      [(iPadAudioCallViewController *)self setSupplementalButtonsStackView:v7];
      [(iPadAudioCallViewController *)self addSubviewsToMiddleStackViewWithView:self->_supplementalButtonsStackView priority:2];
    }
  }
}

- (void)dismissNavigationController
{
  v2 = [(iPadAudioCallViewController *)self navigationController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)dismissNavigationControllerAndUpdateScene
{
  objc_initWeak(&location, self);
  v3 = [(iPadAudioCallViewController *)self navigationController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000D6B9C;
  v4[3] = &unk_100356F60;
  objc_copyWeak(&v5, &location);
  [v3 dismissViewControllerAnimated:1 completion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)updateCurrentState
{
  v3 = [(iPadAudioCallViewController *)self callCenter];
  v4 = [v3 currentCallGroups];

  v5 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if (![v5 callDisplayStyle])
  {
    v6 = [(iPadAudioCallViewController *)self _isScreeningAnyCallGroup:v4];

    if (!v6)
    {
      goto LABEL_5;
    }

    v5 = +[UIApplication sharedApplication];
    v7 = [v5 delegate];
    v8 = [v7 currentInCallScene];
    [v8 requestTransitionToPresentationMode:0 shouldDismissCMASAlerts:0 analyticsSource:@"iPadSBSUIInCallTransitionAnalyticsSourceCallScreeningBegin"];
  }

LABEL_5:
  if (!+[PHSOSViewController isCallBufferDismissalAssertionActive])
  {
    goto LABEL_8;
  }

  if ([v4 count])
  {
    +[PHSOSViewController releaseAllCallBufferDismissalAssertions];
LABEL_8:
    v9 = sub_100004F84();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v98 = 138412290;
      *&v98[4] = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Current Call Groups is %@", v98, 0xCu);
    }

    v10 = [(iPadAudioCallViewController *)self callCenter];
    v11 = [v10 allCallsPassTest:&stru_100359108];

    v12 = [(iPadAudioCallViewController *)self callCenter];
    v13 = [v12 routeController];
    v14 = [v13 pickedRoute];
    v15 = [v14 deviceType];

    if (!v11 || [(PHCallViewController *)self currentState]!= 1 && [(PHCallViewController *)self currentState]!= 3 && v15 != 13)
    {
      goto LABEL_17;
    }

    v16 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
    if ([v16 callDisplayStyle] == 3)
    {
      v17 = [(iPadAudioCallViewController *)self features];
      v18 = [v17 isDominoEnabled];

      if (v18)
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
    if ([v4 count])
    {
      if (([(iPadAudioCallViewController *)self isViewLoaded]& 1) == 0)
      {
        [(iPadAudioCallViewController *)self loadView];
      }

      v21 = +[UIApplication sharedApplication];
      v22 = [v21 delegate];
      v23 = [v22 bannerPresentationManager];
      v24 = [(iPadAudioCallViewController *)self callDetailsCoordinator];
      v25 = [(iPadAudioCallViewController *)self makeCallDetailsCoordinatorWithBannerPresentationManager:v23 existingCoordinator:v24 deferredPresentationManager:self];

      v26 = [v25 outcome];
      if (v26 == 1)
      {
        [(iPadAudioCallViewController *)self setCallDetailsCoordinator:0];
      }

      else if (v26 == 2)
      {
        v27 = [v25 coordinator];
        [(iPadAudioCallViewController *)self setCallDetailsCoordinator:v27];
      }
    }

    if (![v4 count])
    {
      v32 = +[UIApplication sharedApplication];
      v33 = [v32 delegate];
      v34 = [v33 mostRecentlyDisconnectedAudioCall];

      if (v34)
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
        v29 = [(PHCallViewController *)self currentState];
        *v98 = 67109376;
        *&v98[4] = v29;
        *&v98[8] = 1024;
        *&v98[10] = v15 == 13;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: All calls are an endpoint elsewhere and previous state was %d OR shouldDismissForPickedRoute is %d, so setting state to PHInCallStateIdle", v98, 0xEu);
      }

      v30 = self;
      v31 = 0;
      goto LABEL_36;
    }

    if ([v4 count] != 1 || (-[iPadAudioCallViewController callCenter](self, "callCenter"), v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "hasCurrentVideoCalls"), v36, (v37 & 1) != 0))
    {
      v38 = [v4 count];
      v39 = [(iPadAudioCallViewController *)self callCenter];
      v40 = &v38[[v39 currentVideoCallCount]];

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

      v42 = [(iPadAudioCallViewController *)self callCenter];
      v43 = [v42 incomingCall];

      if (!v43)
      {
        v68 = [(iPadAudioCallViewController *)self _isScreeningAnyCallGroup:v4];
        v69 = [(iPadAudioCallViewController *)self usesCompactMulticallUI];
        v70 = v69;
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

        if (!v69 || (-[iPadAudioCallViewController prioritizedCall](self, "prioritizedCall"), (v71 = objc_claimAutoreleasedReturnValue()) == 0) || (v72 = v71, -[iPadAudioCallViewController prioritizedCall](self, "prioritizedCall"), v73 = objc_claimAutoreleasedReturnValue(), v74 = [v73 isScreening], v73, v72, (v74 & 1) != 0))
        {
          v75 = sub_100004F84();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
          {
            *v98 = 0;
            _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: ... but no incoming call while one is being screened meaning the other was declined, so moving to PHInCallStateScreening", v98, 2u);
          }

          v30 = self;
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

      v45 = [(iPadAudioCallViewController *)self callCenter];
      v46 = [v45 callWithStatus:1];
      if (!v46)
      {
        v46 = [(iPadAudioCallViewController *)self callCenter];
        v47 = [v46 callWithStatus:3];
        if (!v47)
        {
          v47 = [(iPadAudioCallViewController *)self callCenter];
          v48 = [v47 callWithStatus:2];
          if (!v48)
          {
            v94 = [(iPadAudioCallViewController *)self callCenter];
            v95 = [v94 currentVideoCallCount];

            if (!v95)
            {
              v54 = sub_100004F84();
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                *v98 = 0;
                _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: ... but we don't also have an active call, so moving to PHInCallStateIncomingRinging", v98, 2u);
              }

              goto LABEL_123;
            }

            goto LABEL_55;
          }
        }
      }

LABEL_55:
      v49 = [(iPadAudioCallViewController *)self _isScreeningAnyCallGroup:v4];
      v50 = [(iPadAudioCallViewController *)self callCenter];
      v51 = [v50 ics_hasTooManyCallsForCallWaitingBanner];

      v52 = [(iPadAudioCallViewController *)self features];
      if (([v52 shouldShowFullScreenCallWaiting] & 1) != 0 || (v49 & 1) != 0 || (v51 & 1) != 0 || -[iPadAudioCallViewController usesCompactMulticallUI](self, "usesCompactMulticallUI"))
      {

        goto LABEL_60;
      }

      v86 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
      if ([v86 callDisplayStyle] == 3)
      {
        v87 = [(iPadAudioCallViewController *)self features];
        v88 = [v87 isDominoEnabled];

        if (v88)
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
            v30 = self;
            v31 = 3;
LABEL_36:
            [(iPadAudioCallViewController *)v30 setCurrentState:v31 animated:1, *v98];
LABEL_75:
            [(iPadAudioCallViewController *)self updateCallTranslationIfNeeded];
            v67 = [(iPadAudioCallViewController *)self frontmostCall];
            [(iPadAudioCallViewController *)self updateWaitOnHoldServiceWithCall:v67];

            [(iPadAudioCallViewController *)self updateDefaultNoPosterAvatarViewVisibility];
            goto LABEL_76;
          }

          v54 = [(iPadAudioCallViewController *)self prioritizedCall];
          v55 = [v54 callUUID];
          if (v55)
          {
            v56 = v55;
            v57 = [(iPadAudioCallViewController *)self callCenter];
            v58 = [v57 incomingCall];
            v59 = [v58 callUUID];
            v60 = [(iPadAudioCallViewController *)self prioritizedCall];
            v61 = [v60 callUUID];

            if (v59 != v61)
            {
              v62 = [(iPadAudioCallViewController *)self prioritizedCall];
              if ([(iPadAudioCallViewController *)self isCallSmartHoldingSessionActive:v62])
              {
              }

              else
              {
                v92 = [(PHCallViewController *)self currentState];

                if (v92 == 12)
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
          v30 = self;
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

        v30 = self;
        v31 = 4;
        goto LABEL_36;
      }

      *v98 = 0;
      v90 = "UpdateCurrentState: ... and we also have an active call, so moving to PHInCallStateSingleCallActive (EmbedSwapBanner)";
LABEL_127:
      _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, v90, v98, 2u);
      goto LABEL_128;
    }

    v34 = [v4 lastObject];
    if ([v34 status] == 4 || objc_msgSend(v34, "wantsHoldMusic"))
    {
      v63 = sub_100004F84();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        *v98 = 0;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call status is TUCallStatusRinging, setting state to PHInCallStateIncomingRinging", v98, 2u);
      }

      v64 = self;
      v65 = 1;
      v66 = 0;
    }

    else
    {
      if ([v34 status] == 1 || objc_msgSend(v34, "status") == 2)
      {
        v79 = sub_100004F84();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          *v98 = 0;
          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call status is TUCallStatusActive, and the call was initiated on this device", v98, 2u);
        }

        v80 = [v34 calls];
        v81 = [v80 count];

        v82 = sub_100004F84();
        v83 = os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT);
        if (v81 < 2)
        {
          if (v83)
          {
            *v98 = 0;
            _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "There is only one call in call group, so setting state to PHInCallStateSingleCallActive", v98, 2u);
          }

          if ([(iPadAudioCallViewController *)self _isScreeningCallGroup:v34]&& ![(iPadAudioCallViewController *)self isCallSmartHoldingSessionActive:v34])
          {
            v91 = 11;
          }

          else if ([(iPadAudioCallViewController *)self isCallSmartHoldingSessionActive:v34])
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
          v84 = [v34 calls];
          v85 = [v84 count];
          *v98 = 134217984;
          *&v98[4] = v85;
          _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "There are %lu calls in call group, so setting state to PHInCallStateMultipleCallsActive", v98, 0xCu);
        }

        v64 = self;
        v65 = 5;
      }

      else if ([v34 status] == 5)
      {
        v93 = sub_100004F84();
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          *v98 = 0;
          _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call status is TUCallStatusDisconnecting, setting state to PHInCallStateEnding", v98, 2u);
        }

        v64 = self;
        v65 = 6;
      }

      else if ([v34 status] == 6)
      {
        v96 = sub_100004F84();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          *v98 = 0;
          _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call status is TUCallStatusDisconnected, setting state to PHInCallStateEnded", v98, 2u);
        }

        v64 = self;
        v65 = 7;
      }

      else
      {
        if ([v34 status] != 3)
        {
          goto LABEL_73;
        }

        v97 = sub_100004F84();
        if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
        {
          *v98 = 0;
          _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call status is Sending, setting state to PHInCallStateOutgoingRinging", v98, 2u);
        }

        v64 = self;
        v65 = 2;
      }

      v66 = 1;
    }

    [(iPadAudioCallViewController *)v64 setCurrentState:v65 animated:v66];
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

- (BOOL)_isScreeningAnyCallGroup:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000D7AFC;
  v4[3] = &unk_100359130;
  v4[4] = self;
  return [a3 tu_containsObjectPassingTest:v4];
}

- (BOOL)_isScreeningCallGroup:(id)a3
{
  v4 = a3;
  v5 = [(iPadAudioCallViewController *)self featureFlags];
  if (TUCallScreeningEnabled())
  {
    v6 = [v4 calls];
    v7 = [v6 firstObject];
    v8 = [v7 isScreening];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setIdleState:(unsigned __int16)a3
{
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 delegate];
  [v5 setMostRecentlyDisconnectedAudioCall:0];

  [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHAudioCallViewControllerDismissalAssertionWaitingForIdle"];
  [(iPadAudioCallViewController *)self setCallForBackgroundImage:0 animated:1 callDisplayStyleChanged:0];
  [(iPadAudioCallViewController *)self releaseDismissalAssertion];

  [(iPadAudioCallViewController *)self _testing_didTransitionToIdleCallState];
}

- (void)setActiveState:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(iPadAudioCallViewController *)self callCenter];
  v6 = [v5 routeController];

  if ([v6 hasAirPodsAvailable])
  {
    v7 = [v6 hasAirPodsInEar] ^ 1;
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

  if (v3 == 5 || [(PHCallViewController *)self currentState]== 5)
  {
    [(iPadAudioCallViewController *)self updateViewsForHeldCallControlsViewIfNeeded:v37];
  }

  v10 = [(PHCallViewController *)self bottomBar:v37];
  [v10 setUserInteractionEnabled:1];

  v11 = [(iPadAudioCallViewController *)self currentMiddleView];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(iPadAudioCallViewController *)self currentMiddleView];
    [v13 setButtonsEnabled:1];
  }

  v14 = [(PHCallViewController *)self bottomBar];
  [(iPadAudioCallViewController *)self _testing_didTransitionToActiveCallState:v14];

  [(PHCallViewController *)self setWantsApplicationDismissalStyle:v3 == 4];
  if (v3 == 4)
  {
    v15 = [(iPadAudioCallViewController *)self isolatedCall];
    [(iPadAudioCallViewController *)self setCallForBackgroundImage:v15 animated:1 callDisplayStyleChanged:0];
    if ([(iPadAudioCallViewController *)self shouldShowNewPosterUpdates])
    {
      [(iPadAudioCallViewController *)self updateLayeredBackgroundWallpaper];
    }

    [(iPadAudioCallViewController *)self animateInfoButtonCoinFlipIfNeeded];
  }

  else
  {
    v15 = [(iPadAudioCallViewController *)self callToUseForWallpaper];
    [(iPadAudioCallViewController *)self setCallForBackgroundImage:v15 animated:1 callDisplayStyleChanged:0];
  }

  if ([v15 originatingUIType] == 10)
  {
    v16 = [(iPadAudioCallViewController *)self callCenter];
    v17 = [v16 routeController];
    v18 = [v17 routeForSpeakerEnable];

    if (v18)
    {
      v19 = [(iPadAudioCallViewController *)self callCenter];
      v20 = [v19 routeController];
      [v20 pickRoute:v18];
    }

    else
    {
      v19 = sub_100004F84();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100256590();
      }
    }

    v23 = [(iPadAudioCallViewController *)self voiceLoopManager];
    [v23 startLoopPlayback];
  }

  else
  {
    if ([v15 originatingUIType] != 12)
    {
      goto LABEL_31;
    }

    v21 = [(iPadAudioCallViewController *)self callCenter];
    v22 = [v21 routeController];
    v18 = [v22 routeForSpeakerDisable];

    if (v18)
    {
      v23 = [(iPadAudioCallViewController *)self callCenter];
      v24 = [v23 routeController];
      [v24 pickRoute:v18];
    }

    else
    {
      v23 = sub_100004F84();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[WARN] iPadAudioCallViewController: Could not find available route to pick for speaker disable", location, 2u);
      }
    }
  }

LABEL_31:
  v25 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  v26 = [v25 callDisplayStyle];

  if (!v26)
  {
    v27 = [(iPadAudioCallViewController *)self callParticipantsViewController];
    [v27 setBannerButtonsState:1];

    v28 = [(iPadAudioCallViewController *)self callCenter];
    v29 = [v28 routeController];
    v30 = [v29 pickedRoute];
    v31 = [v30 isReceiver];

    v32 = +[UIApplication sharedApplication];
    v33 = [v32 delegate];
    v34 = [v33 currentInCallScene];
    v35 = [v34 delegate];
    v36 = [v35 callAnalyticsLogger];
    [v36 createAnsweredBannerAnalyticsViewWithIsHandsfreeAudioRoute:v31 ^ 1];
  }

  [(iPadAudioCallViewController *)self _performPosterTransformationsIfNecessaryToState:v3];
}

- (void)_performPosterTransformationsIfNecessaryToState:(unsigned __int16)a3
{
  v3 = a3;
  v10 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  v5 = [v10 callDisplayStyle];
  if (v3 == 4 && v5 == 2 && ([(iPadAudioCallViewController *)self renderingViewController], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [(iPadAudioCallViewController *)self shouldShowContactOrLastSeenWallpaper];

    if (v8)
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
    v5 = [(iPadAudioCallViewController *)self callParticipantsViewController];
    [v5 setPrioritizedCall:existingPrioritizedCall];
  }

  else
  {
    v5 = [(iPadAudioCallViewController *)self callParticipantsViewController];
    [v5 updateCallGroups];
  }
}

- (void)_updateStatusLabelVisibility
{
  v4 = [(iPadAudioCallViewController *)self getParticipantsView_WaitingOrNot];
  v3 = [v4 singleCallLabelView];
  if (v3)
  {
    [(iPadAudioCallViewController *)self updatePosterBadgeView:0 to:v3];
    [v3 setHidesLabel:0];
    [v3 updateLabelsOrderAndLayout];
  }
}

- (BOOL)isShowingPosterBadge
{
  v2 = [(iPadAudioCallViewController *)self posterBadgeView];
  v3 = v2 != 0;

  return v3;
}

- (void)updatePosterBadgeView:(BOOL)a3 to:(id)a4
{
  v4 = a3;
  v10 = a4;
  if (v4 && [(iPadAudioCallViewController *)self canShowPosterBadgeInAudioCallView:v10])
  {
    [(iPadAudioCallViewController *)self setUpPosterBadgeViewIfNecessary];
  }

  else
  {
    v6 = [(iPadAudioCallViewController *)self posterBadgeView];

    if (v6)
    {
      v7 = [(iPadAudioCallViewController *)self posterBadgeView];
      [v7 removeFromSuperview];

      [(iPadAudioCallViewController *)self setPosterBadgeView:0];
    }
  }

  v8 = v10;
  if (v10)
  {
    v9 = [(iPadAudioCallViewController *)self posterBadgeView];
    [v10 setPosterBadgeView:v9];

    [(iPadAudioCallViewController *)self synchronizeSingleLabelViewWithPosterText];
    v8 = v10;
  }
}

- (void)synchronizeSingleLabelViewWithPosterText
{
  v5 = [(iPadAudioCallViewController *)self getParticipantsView_WaitingOrNot];
  v3 = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];

  if (v3)
  {
    v4 = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];
    [v4 updateViewModelForParticipantsView:v5];
  }

  else
  {
    [(iPadAudioCallViewController *)self updatePosterViewModelForParticipantsView:v5];
  }
}

- (void)setUpPosterBadgeViewIfNecessary
{
  v3 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([v3 callDisplayStyle] == 3)
  {
    v4 = [(iPadAudioCallViewController *)self features];
    v5 = [v4 isDominoEnabled];

    if (v5)
    {
      return;
    }
  }

  else
  {
  }

  v6 = [(iPadAudioCallViewController *)self posterBadgeView];

  if (v6)
  {
    return;
  }

  v14 = [(iPadAudioCallViewController *)self getParticipantsView_WaitingOrNot];
  v7 = [v14 singleCallLabelView];
  v8 = [v7 iconView];

  if (v8)
  {
    v9 = objc_alloc_init(UIImageView);
LABEL_10:
    v10 = v9;
    goto LABEL_11;
  }

  v10 = [v7 badgeView];

  if (v10)
  {
    v9 = [[TPBadgeView alloc] initWithTitle:&stru_100361FD0 theme:1];
    goto LABEL_10;
  }

LABEL_11:
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [(iPadAudioCallViewController *)self view];
  [v11 addSubview:v10];

  [(iPadAudioCallViewController *)self positionPosterBadgeToBeHorizontallyCenteredToInfoButton:v10];
  [(iPadAudioCallViewController *)self setPosterBadgeView:v10];
  v12 = [(iPadAudioCallViewController *)self posterBadgeView];
  v13 = +[TPIncomingCallMetricsProvider posterBadgeMaxSize];
  [v12 setMaximumContentSizeCategory:v13];

  [(iPadAudioCallViewController *)self invertColorForPosterBadgeViewIfSnapshotPoster];
}

- (void)invertColorForPosterBadgeViewIfSnapshotPoster
{
  v3 = [(iPadAudioCallViewController *)self snapshottedPosterImageToUseForColorInversion];

  if (v3)
  {
    v4 = [(iPadAudioCallViewController *)self snapshottedPosterImageToUseForColorInversion];
    [(iPadAudioCallViewController *)self invertColorForPosterBadgeViewBasedOn:v4];
  }
}

- (void)_updatePosterStatusLabelForState:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(iPadAudioCallViewController *)self posterNameViewModel];

  if (v5)
  {
    v6 = [(iPadAudioCallViewController *)self getParticipantsView_WaitingOrNot];
    v7 = [(iPadAudioCallViewController *)self posterNameViewModel];
    [v7 updateStatusFromParticipantsView:v6];

    if (v3 <= 0xB && ((1 << v3) & 0x814) != 0)
    {
      [(iPadAudioCallViewController *)self _updatePosterNameAlpha];
      v8 = [(iPadAudioCallViewController *)self view];
      v9 = [v8 window];

      v10 = v9 != 0;
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
        v12 = [(iPadAudioCallViewController *)self posterNameViewModel];
        [v12 transitionCallToActiveStateAnimated:v10];
      }
    }

    [(iPadAudioCallViewController *)self _updateStatusLabelVisibility];
  }
}

- (void)_updatePosterNameAlpha
{
  v3 = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];
  if (v3 || ([(iPadAudioCallViewController *)self posterNameViewModel], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v3;
    [v3 updatePosterNameAlpha:!self->_participantsViewIsShowingMultipleLabel];
    v4 = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];
    if (v4)
    {
      v5 = v4;
      v6 = [(iPadAudioCallViewController *)self posterNameViewModel];

      if (v6)
      {
        v7 = [(iPadAudioCallViewController *)self posterNameViewModel];
        [v7 updatePosterNameAlpha:0.0];
      }
    }

    v3 = v8;
  }
}

- (void)setRingingState:(unsigned __int16)a3
{
  v4 = [(iPadAudioCallViewController *)self presentedViewController];

  if (v4)
  {
    [(iPadAudioCallViewController *)self dismissViewControllerAnimated:1 completion:0];
  }

  [(iPadAudioCallViewController *)self updateShouldShowLargeAvatar];
  v5 = +[UIApplication sharedApplication];
  v6 = [v5 delegate];
  v7 = [v6 currentInCallScene];
  v8 = [v7 isBeingShownAboveCoverSheet];

  v9 = [(iPadAudioCallViewController *)self callCenter];
  v22 = [v9 incomingCall];

  v10 = [(iPadAudioCallViewController *)self setCallForBackgroundImage:v22 animated:1 callDisplayStyleChanged:0];
  v11 = 4;
  if (v10)
  {
    v11 = 5;
  }

  if (v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = [v22 isMessagingAllowed];
  v14 = [(PHCallViewController *)self bottomBar];
  [v14 setDeclineAndMessageIsAvailable:v13];

  v15 = [v22 isReminderAllowed];
  v16 = [(PHCallViewController *)self bottomBar];
  [v16 setDeclineAndRemindIsAvailable:v15];

  v17 = [(PHCallViewController *)self bottomBar];
  [v17 setCurrentState:v12];

  [(iPadAudioCallViewController *)self setMiddleViewState:0 animated:0];
  v18 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  v19 = [v18 callDisplayStyle];

  if (!v19)
  {
    v20 = [(iPadAudioCallViewController *)self callParticipantsViewController];
    [v20 setBannerButtonsState:0];
  }

  v21 = [(PHCallViewController *)self bottomBar];
  [(iPadAudioCallViewController *)self _testing_didTransitionToIncomingRingingCallState:v21];
}

- (void)setWaitingState:(unsigned __int16)a3
{
  v3 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 134217984;
    v24 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setWaitingState: %lu", &v23, 0xCu);
  }

  v6 = [(iPadAudioCallViewController *)self callCenter];
  v7 = [v6 incomingCall];

  v8 = +[UIApplication sharedApplication];
  v9 = [v8 delegate];
  v10 = [v9 isPresentingAmbient];

  if ((v10 & 1) == 0)
  {
    v11 = [v7 provider];
    if ([v11 supportsDynamicSystemUI])
    {
      v12 = [(iPadAudioCallViewController *)self featureFlags];
      if ([v12 groupConversations])
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
    v14 = [(iPadAudioCallViewController *)self inCallRootViewController];
    [v14 requestInCallSceneTransitionToFullScreen];
  }

LABEL_11:
  [(iPadAudioCallViewController *)self setShouldShowLargeAvatarForCallWaiting:[(iPadAudioCallViewController *)self shouldShowLargeAvatarForCall:v7]];
  [(iPadAudioCallViewController *)self setCallForBackgroundImage:v7 animated:1 callDisplayStyleChanged:0];
  if ([(iPadAudioCallViewController *)self participantsViewControllersShouldIgnoreUpdates])
  {
    v15 = [(iPadAudioCallViewController *)self callCenter];
    v16 = [v15 autoPunchOutBehaviorRequiredForCurrentCalls];

    if ((v16 & 1) == 0)
    {
      [(iPadAudioCallViewController *)self setParticipantsViewControllersShouldIgnoreUpdates:0];
    }
  }

  [(iPadAudioCallViewController *)self setShowsCallWaitingParticipantView:1];
  v17 = [v7 isMessagingAllowed];
  v18 = [(PHCallViewController *)self bottomBar];
  [v18 setDeclineAndMessageIsAvailable:v17];

  v19 = [v7 isReminderAllowed];
  v20 = [(PHCallViewController *)self bottomBar];
  [v20 setDeclineAndRemindIsAvailable:v19];

  v21 = [(PHCallViewController *)self bottomBar];
  [v21 setUserInteractionEnabled:1];

  v22 = [(PHCallViewController *)self bottomBar];
  [v22 setCurrentState:-[iPadAudioCallViewController bottomBarStateForCallWaitingCall](self animated:"bottomBarStateForCallWaitingCall") animationCompletionBlock:{0, 0}];

  [(iPadAudioCallViewController *)self setMiddleViewState:0 animated:1];
  [(PHCallViewController *)self setWantsApplicationDismissalStyle:0];
}

- (void)setEndedState:(unsigned __int16)a3
{
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 delegate];
  v6 = [v5 mostRecentlyDisconnectedAudioCall];

  v7 = [(iPadAudioCallViewController *)self currentMiddleView];
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if (v5)
  {
    v8 = [(iPadAudioCallViewController *)self currentMiddleView];
    [v8 setButtonsEnabled:0];
  }

  [(SOSEmergencyCallVoiceLoopManager *)self->_voiceLoopManager invalidate];
  v9 = sub_100004F84();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 uniqueProxyIdentifierUUID];
    v31 = [v6 disconnectedReason];
    v32 = [v6 contactIdentifiers];
    v30 = [v32 count];
    v11 = [v6 isOutgoing];
    v12 = [v6 dateConnected];
    v13 = [v12 description];
    v14 = [v6 provider];
    v15 = [v14 isFaceTimeProvider];
    v16 = +[FTDeviceSupport sharedInstance];
    *buf = 138413826;
    v34 = v10;
    v35 = 2048;
    v36 = v31;
    v37 = 2048;
    v38 = v30;
    v39 = 1024;
    v40 = v11;
    v41 = 2112;
    v42 = v13;
    v43 = 1024;
    v44 = v15;
    v45 = 1024;
    v46 = [v16 isGreenTea];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "disconnectedCall: %@ disconnectedReason: %ld (disconnectedCall.contactIdentifiers.count: %lu && \n\n !(disconnectedCall.isOutgoing: %d && disconnectedCall.dateConnected: %@) && \n\n disconnectedCall.provider.isFaceTimeProvider: %d \n\n [[FTDeviceSupport sharedInstance] isGreenTea]) : %d", buf, 0x3Cu);
  }

  if (![v6 disconnectedReasonRequiresCallBackUI])
  {
    v20 = [(iPadAudioCallViewController *)self UUIDForLocallyDisconnectedCall];
    v21 = [v6 callUUID];
    if ([v20 isEqualToString:v21])
    {
    }

    else
    {
      v25 = +[UIApplication sharedApplication];
      v26 = [v25 delegate];
      v27 = [v26 hasExistingFullScreenInCallScene];

      if (v27)
      {
        [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHAudioCallViewControllerDismissalAssertionWaitingForIdle"];
      }
    }

    v28 = [(PHCallViewController *)self bottomBar];
    [v28 setUserInteractionEnabled:0];

    [(PHCallViewController *)self transitionToIdleAfterDelay];
    v24 = [(iPadAudioCallViewController *)self inCallRootViewController];
    [v24 showFailureOrFallbackAlertIfNecessaryForCall:v6];
    goto LABEL_22;
  }

  v17 = sub_100004F84();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "disconnectedCall requires callback UI", buf, 2u);
  }

  v18 = [(iPadAudioCallViewController *)self inCallRootViewController];
  [v18 requestInCallSceneTransitionToFullScreen];

  [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHAudioCallViewControllerDismissalAssertionHandlingCallFailure"];
  [(iPadAudioCallViewController *)self setMiddleViewState:0];
  [(iPadAudioCallViewController *)self setCallForBackgroundImage:v6 animated:1 callDisplayStyleChanged:0];
  if ([v6 service] == 2 && (objc_msgSend(v6, "isMessagingAllowed") & 1) != 0)
  {
    v19 = 17;
  }

  else if ([v6 isCallbackAllowed])
  {
    v19 = 13;
  }

  else
  {
    v19 = 18;
  }

  v22 = [(PHCallViewController *)self bottomBar];
  [v22 setCurrentState:v19 animated:1 animationCompletionBlock:0];

  v23 = [(PHCallViewController *)self bottomBar];
  [v23 setUserInteractionEnabled:1];

  if ([(iPadAudioCallViewController *)self shouldShowEnableWiFiCallingAlertForCall:v6])
  {
    v24 = +[UIAlertController enableWiFiCallingAlertController];
    if (v24)
    {
      [(iPadAudioCallViewController *)self presentViewController:v24 animated:1 completion:0];
      PHIncrementWifiCallingAlertShowCount();
    }

LABEL_22:
  }

  if ([v6 disconnectedReason] == 34)
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

- (void)setEndingState:(unsigned __int16)a3
{
  v4 = [(PHCallViewController *)self bottomBar];
  [v4 setUserInteractionEnabled:0];

  v5 = [(iPadAudioCallViewController *)self currentMiddleView];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(iPadAudioCallViewController *)self currentMiddleView];
    [v7 setButtonsEnabled:0];
  }

  [(SOSEmergencyCallVoiceLoopManager *)self->_voiceLoopManager invalidate];
  v8 = [(iPadAudioCallViewController *)self isolatedCall];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    v8 = [(iPadAudioCallViewController *)self setCallForBackgroundImage:v8 animated:0 callDisplayStyleChanged:0];
    v9 = v10;
  }

  _objc_release_x1(v8, v9);
}

- (void)setOutgoingRingingState:(unsigned __int16)a3
{
  v4 = [(iPadAudioCallViewController *)self callCenter];
  v5 = [v4 currentCallGroups];

  v6 = [v5 lastObject];
  if ([v6 originatingUIType] == 10)
  {
    v7 = [(iPadAudioCallViewController *)self callCenter];
    v8 = [v7 routeController];
    v9 = [v8 pickedRoute];
    v10 = [v9 isSpeaker];

    if ((v10 & 1) == 0)
    {
      v19 = [(iPadAudioCallViewController *)self callCenter];
      v20 = [v19 routeController];
      v17 = [v20 routeForSpeakerEnable];

      if (!v17)
      {
        v18 = sub_100004F84();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_100256590();
        }

        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  if ([v6 originatingUIType] == 12)
  {
    v11 = [(iPadAudioCallViewController *)self callCenter];
    v12 = [v11 routeController];
    v13 = [v12 pickedRoute];
    v14 = [v13 isReceiver];

    if ((v14 & 1) == 0)
    {
      v15 = [(iPadAudioCallViewController *)self callCenter];
      v16 = [v15 routeController];
      v17 = [v16 routeForSpeakerDisable];

      if (!v17)
      {
        v18 = sub_100004F84();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] iPadAudioCallViewController: Could not find available route to pick for speaker disable", buf, 2u);
        }

        goto LABEL_12;
      }

LABEL_9:
      v18 = [(iPadAudioCallViewController *)self callCenter];
      v21 = [v18 routeController];
      [v21 pickRoute:v17];

LABEL_12:
    }
  }

  v22 = [(iPadAudioCallViewController *)self isolatedCall];
  [(iPadAudioCallViewController *)self setCallForBackgroundImage:v22 animated:1 callDisplayStyleChanged:0];

  v39 = _NSConcreteStackBlock;
  v40 = 3221225472;
  v41 = sub_1000D9A94;
  v42 = &unk_100356D10;
  v23 = v6;
  v43 = v23;
  v44 = self;
  v24 = objc_retainBlock(&v39);
  -[iPadAudioCallViewController setMiddleViewState:animated:completion:](self, "setMiddleViewState:animated:completion:", 1, [v23 isVoicemail] ^ 1, v24);
  v25 = [(iPadAudioCallViewController *)self currentMiddleView];
  v26 = objc_opt_respondsToSelector();

  if (v26)
  {
    v27 = [(iPadAudioCallViewController *)self currentMiddleView];
    [v27 setButtonsEnabled:1];
  }

  if ([v23 isVoicemail])
  {
    [(iPadAudioCallViewController *)self setMiddleViewState:2];
  }

  [(PHCallViewController *)self setWantsApplicationDismissalStyle:1];
  v28 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([v28 callDisplayStyle] != 3)
  {
    goto LABEL_24;
  }

  v29 = [(iPadAudioCallViewController *)self features];
  if (![v29 isDominoEnabled])
  {
    goto LABEL_23;
  }

  v30 = +[UIApplication sharedApplication];
  v31 = [v30 delegate];
  v32 = [v31 currentInCallScene];
  v33 = [v32 presentationMode];

  if (!v33)
  {
    v34 = [(iPadAudioCallViewController *)self callCenter];
    v28 = [v34 routeController];

    v35 = [v28 routeForSpeakerEnable];
    if (!v35)
    {
      goto LABEL_24;
    }

    v36 = v35;
    v37 = [v28 pickedRoute];
    v38 = [v37 isReceiver];

    if (!v38)
    {
      goto LABEL_24;
    }

    v29 = [v28 routeForSpeakerEnable];
    [v28 pickRoute:v29];
LABEL_23:

LABEL_24:
  }

  [(iPadAudioCallViewController *)self updateLayeredBackgroundWallpaper];
}

- (void)setCallBufferState:(unsigned __int16)a3
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController,setCurrentState,PHInCallStateCallBuffer", buf, 2u);
  }

  if ([(iPadAudioCallViewController *)self middleViewState]== 1)
  {
    v5 = [(iPadAudioCallViewController *)self currentMiddleView];
    [v5 setButtonsEnabled:0];

    v6 = [(iPadAudioCallViewController *)self currentMiddleView];
    v7 = [v6 buttonForControlType:15];
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

  v8 = [(PHCallViewController *)self bottomBar];
  [v8 setUserInteractionEnabled:1];

  [(iPadAudioCallViewController *)self setCallForBackgroundImage:0 animated:1 callDisplayStyleChanged:0];
  [(iPadAudioCallViewController *)self displayDialledNumberDetailsForCallBufferScreen];
  [(PHCallViewController *)self setWantsApplicationDismissalStyle:0];
  [(iPadAudioCallViewController *)self startCallBufferScreenCountdown];
}

- (void)setScreeningState:(unsigned __int16)a3 animated:(BOOL)a4 overrideWithIsUnlocked:(BOOL)a5
{
  v65 = a3;
  v66 = a5;
  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v65;
    *&buf[8] = 1024;
    *&buf[10] = v66;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Audio: setCurrentState: (existing state is %d) with unlockedOverride: %d", buf, 0xEu);
  }

  v8 = [(PHCallViewController *)self bottomBar];
  [v8 setUserInteractionEnabled:1];

  v9 = [(iPadAudioCallViewController *)self presentedViewController];
  if (v9)
  {
    v10 = [(PHCallViewController *)self isPresentingCustomMessageController];

    if ((v10 & 1) == 0)
    {
      [(iPadAudioCallViewController *)self dismissViewControllerAnimated:1 completion:0];
    }
  }

  v11 = [(iPadAudioCallViewController *)self traitCollection];
  if ([v11 _backlightLuminance] == 1)
  {
    v12 = 1;
  }

  else
  {
    v13 = [(iPadAudioCallViewController *)self traitCollection];
    v12 = [v13 _backlightLuminance] == 0;
  }

  v14 = +[UIApplication sharedApplication];
  v15 = [v14 delegate];
  v16 = [v15 currentInCallScene];
  v17 = [v16 isBeingShownAboveCoverSheet];

  v18 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  v64 = v17 & !v66 | v12;
  if ([v18 callDisplayStyle] == 3)
  {
    v19 = [(iPadAudioCallViewController *)self features];
    v20 = [v19 isDominoEnabled];
    v21 = 23;
    if (v64)
    {
      v22 = 24;
    }

    else
    {
      v22 = 23;
    }

    if (!v20)
    {
      v21 = v22;
    }

    v63 = v21;
  }

  else
  {
    v23 = 23;
    if ((v17 & !v66 | v12))
    {
      v23 = 24;
    }

    v63 = v23;
  }

  v24 = [(iPadAudioCallViewController *)self callCenter];
  v67 = [v24 screeningCall];

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

    if (v17)
    {
      v28 = @"YES";
    }

    else
    {
      v28 = @"NO";
    }

    v29 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
    v30 = [v29 callDisplayStyle];
    v31 = @"NO";
    if (v30 == 3)
    {
      v5 = [(iPadAudioCallViewController *)self features];
      if ([v5 isDominoEnabled])
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
    if (v30 == 3)
    {
    }
  }

  v32 = [(iPadAudioCallViewController *)self featureFlags];
  if (TUCallScreeningEnabledM3())
  {
    v33 = [v67 contactIdentifiers];
    v34 = [v33 count] != 0;

    if (((v34 | v64) & 1) == 0)
    {
      [(iPadAudioCallViewController *)self setCallForBackgroundImage:v67 animated:1 callDisplayStyleChanged:0];
      v35 = 25;
      goto LABEL_41;
    }
  }

  else
  {
  }

  [(iPadAudioCallViewController *)self setCallForBackgroundImage:v67 animated:1 callDisplayStyleChanged:0];
  if (v63 != 23)
  {
    v35 = 24;
    goto LABEL_48;
  }

  v35 = 23;
LABEL_41:
  if (!v66)
  {
    v36 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
    if ([v36 callDisplayStyle] == 3)
    {
      v37 = [(iPadAudioCallViewController *)self features];
      v38 = [v37 isDominoEnabled];

      if (v38)
      {
        v35 = 26;
      }
    }

    else
    {
    }
  }

LABEL_48:
  v39 = [v67 isMessagingAllowed];
  v40 = [(PHCallViewController *)self bottomBar];
  [v40 setDeclineAndMessageIsAvailable:v39];

  v41 = [v67 isReminderAllowed];
  v42 = [(PHCallViewController *)self bottomBar];
  [v42 setDeclineAndRemindIsAvailable:v41];

  v43 = [(PHCallViewController *)self bottomBar];
  v44 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([v44 callDisplayStyle] == 3)
  {
    v45 = [(iPadAudioCallViewController *)self features];
    [v43 setCurrentState:v35 animated:objc_msgSend(v45 animationCompletionBlock:{"isDominoEnabled"), 0}];
  }

  else
  {
    [v43 setCurrentState:v35 animated:0 animationCompletionBlock:0];
  }

  v46 = [(PHCallViewController *)self bottomBar];
  v47 = [v46 controlForActionType:30];

  [(PHCallViewController *)self configureDeclineWithReminderButton:0 declineWithMessageButton:v47 forIncomingCall:v67];
  v48 = [(iPadAudioCallViewController *)self featureFlags];
  v49 = [v48 receptionistEnabled];
  if (v67)
  {
    v50 = v49;
  }

  else
  {
    v50 = 0;
  }

  if (v50)
  {
    v51 = [(PHCallViewController *)self bottomBar];
    v52 = [v51 controlForActionType:27];

    [(PHCallViewController *)self configureDeclineWithMoreButton:v52 forIncomingCall:v67];
  }

  [(iPadAudioCallViewController *)self setMiddleViewState:4 animated:1];
  v53 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  v54 = [v53 callDisplayStyle] == 0;

  if (v54)
  {
    v55 = [(iPadAudioCallViewController *)self callParticipantsViewController];
    [v55 setBannerButtonsState:0];
  }

  v56 = [(PHCallViewController *)self bottomBar];
  [(iPadAudioCallViewController *)self _testing_didTransitionToIncomingRingingCallState:v56];

  v57 = [(iPadAudioCallViewController *)self stateChangeLockObservation];
  if (!v57 || ([(iPadAudioCallViewController *)self stateDisplayChangedObservation], v58 = objc_claimAutoreleasedReturnValue(), v59 = v58 == 0, v58, v57, v59))
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
    v72 = v65;
    v60 = [(iPadAudioCallViewController *)self makeLockObserverWithHandler:v71];
    [(iPadAudioCallViewController *)self setStateChangeLockObservation:v60];

    v70[0] = 0;
    v70[1] = v70;
    v70[2] = 0x2020000000;
    v61 = [(iPadAudioCallViewController *)self traitCollection];
    v62 = [v61 _backlightLuminance];

    v70[3] = v62;
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_1000DA6E4;
    v68[3] = &unk_1003591A8;
    v68[4] = buf;
    v68[5] = v70;
    v68[6] = v73;
    v69 = v65;
    [(iPadAudioCallViewController *)self setStateDisplayChangedObservation:v68];
    _Block_object_dispose(v70, 8);
    _Block_object_dispose(buf, 8);
    objc_destroyWeak(&v77[1]);
    _Block_object_dispose(v73, 8);
  }
}

- (void)setWaitOnHoldState:(unsigned __int16)a3 animated:(BOOL)a4
{
  [(iPadAudioCallViewController *)self dismissWaitOnHoldTip:a3];
  v5 = [(iPadAudioCallViewController *)self presentedViewController];
  if (v5)
  {
    v6 = v5;
    v7 = [(PHCallViewController *)self isPresentingCustomMessageController];

    if ((v7 & 1) == 0)
    {
      [(iPadAudioCallViewController *)self dismissViewControllerAnimated:1 completion:0];
    }
  }

  v8 = [(PHCallViewController *)self bottomBar];
  v9 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([v9 callDisplayStyle] == 3)
  {
    v10 = [(iPadAudioCallViewController *)self features];
    [v8 setCurrentState:28 animated:objc_msgSend(v10 animationCompletionBlock:{"isDominoEnabled"), 0}];
  }

  else
  {
    [v8 setCurrentState:28 animated:0 animationCompletionBlock:0];
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
  v5 = [v4 delegate];
  v6 = [v5 waitOnHoldService];

  if (v6)
  {
    v7 = [(CNKWaitOnHoldViewComposerFactory *)self->_waitOnHoldViewControllerFactory makeViewComposer];
    v8 = [(iPadAudioCallViewController *)self activeCall];
    v9 = +[UIApplication sharedApplication];
    v10 = [v9 delegate];
    v11 = [v10 waitOnHoldService];
    v12 = [v7 composeWithCall:v8 waitOnHoldService:v11];
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
  v4 = [(iPadAudioCallViewController *)self activeCall];
  v5 = [v4 isWaitOnHoldActive];

  if ((v5 & 1) == 0)
  {
    v6 = [(UIViewController *)self->_waitOnHoldViewController view];
    v7 = [v6 superview];

    if (v7)
    {
      v8 = [(UIViewController *)self->_waitOnHoldViewController view];
      [v8 removeFromSuperview];

      v9 = [(iPadAudioCallViewController *)self layoutGuidesProvider];
      [v9 updateMiddleShelfStateWithIsOpen:0];
    }

    waitOnHoldViewController = self->_waitOnHoldViewController;
    self->_waitOnHoldViewController = 0;
  }
}

- (BOOL)isCallSmartHoldingSessionActive:(id)a3
{
  v3 = a3;
  v4 = [v3 smartHoldingSession];

  if (v4)
  {
    v5 = [v3 smartHoldingSession];
    if ([v5 state])
    {
      v6 = [v3 smartHoldingSession];
      v7 = [v6 state] == 3;
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

- (void)setCurrentState:(unsigned __int16)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(PHCallViewController *)self currentState];
  v8 = sub_100004F84();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v5;
    *&buf[8] = 1024;
    *&buf[10] = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Audio: setCurrentState: %d (existing state is %d)", buf, 0xEu);
  }

  if (v7 != v5)
  {
    v9 = sub_100004F84();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(PHCallViewController *)self currentState];
      *buf = 67109376;
      *&buf[4] = v10;
      *&buf[8] = 1024;
      *&buf[10] = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Audio: Setting current state: %d -> %d", buf, 0xEu);
    }

    v31.receiver = self;
    v31.super_class = iPadAudioCallViewController;
    [(PHCallViewController *)&v31 setCurrentState:v5];
    [(iPadAudioCallViewController *)self setStateChangeLockObservation:0];
    [(iPadAudioCallViewController *)self setStateDisplayChangedObservation:0];
    if (v5 <= 4)
    {
      if (v5 > 1)
      {
        if (v5 == 2)
        {
          [(iPadAudioCallViewController *)self setOutgoingRingingState:2];
          goto LABEL_30;
        }

        if (v5 == 3)
        {
          [(iPadAudioCallViewController *)self setWaitingState:3];
          goto LABEL_38;
        }

        [(iPadAudioCallViewController *)self updateLayeredBackgroundWallpaper];
        [(iPadAudioCallViewController *)self transitionToNewPosterIfNeeded];
        goto LABEL_16;
      }

      if (v5)
      {
        if (v5 == 1)
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
      if (v5 <= 9)
      {
        if (v5 != 5)
        {
          if (v5 == 6)
          {
            [(iPadAudioCallViewController *)self setEndingState:6];
            [(iPadAudioCallViewController *)self _testing_didTransitionToEndingCallState];
          }

          else if (v5 == 7)
          {
            [(iPadAudioCallViewController *)self setEndedState:7];
          }

          goto LABEL_30;
        }

LABEL_16:
        [(iPadAudioCallViewController *)self setActiveState:v5];
        goto LABEL_30;
      }

      switch(v5)
      {
        case 0xA:
          [(iPadAudioCallViewController *)self setCallBufferState:10];
          break;
        case 0xB:
          [(iPadAudioCallViewController *)self setScreeningState:11 animated:v4];
          break;
        case 0xC:
          [(iPadAudioCallViewController *)self setWaitOnHoldState:12 animated:v4];
          break;
      }
    }

LABEL_30:
    if (v7 == 3)
    {
      [(iPadAudioCallViewController *)self setShowsCallWaitingParticipantView:0];
    }

    if (v5 <= 7 && ((1 << v5) & 0xC1) != 0)
    {
      [(iPadAudioCallViewController *)self stopSuppressionOfSTKAlerts];
      if (v5 == 7)
      {
        v11 = [(iPadAudioCallViewController *)self getParticipantsView_NotWaiting];
        v12 = [v11 singleCallLabelView];
        v13 = v12;
        if (v12)
        {
          v14 = [v12 statusLabel];
          v15 = *&CGAffineTransformIdentity.c;
          *buf = *&CGAffineTransformIdentity.a;
          v33 = v15;
          v34 = *&CGAffineTransformIdentity.tx;
          [v14 setTransform:buf];
        }
      }

      goto LABEL_41;
    }

LABEL_38:
    v16 = [(PHCallViewController *)self bottomBar];
    [v16 setUserInteractionEnabled:1];

    if (v5 == 1)
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
      v30 = v5;
      dispatch_after(v17, &_dispatch_main_q, v29);
    }

    else
    {
      [(iPadAudioCallViewController *)self _updatePosterStatusLabelForState:v5];
      if ([(iPadAudioCallViewController *)self hasNoCallsOrOnlyEndedCalls])
      {
        v18 = [(iPadAudioCallViewController *)self renderingViewController];
        if (v18)
        {
          v19 = v18;
          v20 = [(iPadAudioCallViewController *)self posterNameViewModel];
          v21 = [v20 priorityPosterNameTextView];

          if (v21)
          {
            v22 = [(iPadAudioCallViewController *)self renderingViewController];
            v23 = [v22 view];
            [v23 setAlpha:0.0];
          }
        }
      }
    }

    [(iPadAudioCallViewController *)self updateAmbientAudioRoutesVisibility];
    [(iPadAudioCallViewController *)self updateShareNameAndPhotoHUDPresentationIfNeeded];
    v24 = +[NSNotificationCenter defaultCenter];
    [v24 postNotificationName:@"PHCallViewControllerStateChangedNotification" object:0];

    v25 = [(PHCallViewController *)self bottomBar];
    [v25 setNeedsLayout];

    v26 = [(PHCallViewController *)self bottomBar];
    [v26 layoutIfNeeded];
  }

  v27 = [(iPadAudioCallViewController *)self backgroundController];
  v28 = [v27 backgroundContainer];
  [(iPadAudioCallViewController *)self updateBackgroundTintToView:v28];
}

- (void)updateIncomingBottomBarControlState
{
  if ([(PHCallViewController *)self currentState]== 11)
  {
    v3 = [(PHCallViewController *)self currentState];

    [(iPadAudioCallViewController *)self setScreeningState:v3 animated:1];
  }

  else
  {
    v4 = [(PHCallViewController *)self bottomBar];
    v5 = [v4 currentState];

    if (!v5)
    {
      v6 = +[UIApplication sharedApplication];
      v7 = [v6 delegate];
      v8 = [v7 currentInCallScene];
      if ([v8 isBeingShownAboveCoverSheet])
      {
        v9 = 4;
      }

      else
      {
        v9 = 0;
      }

      v10 = [(PHCallViewController *)self bottomBar];
      [v10 setCurrentState:v9];
    }
  }
}

- (void)updateBottomBarButtonsWithCall:(id)a3
{
  v4 = [a3 isMessagingAllowed];
  v5 = [(PHCallViewController *)self bottomBar];
  [v5 setDeclineAndMessageIsAvailable:v4];
}

- (void)updateHardPauseDigitsState
{
  v3 = [(iPadAudioCallViewController *)self frontmostCall];
  v4 = [v3 hardPauseDigitsState] == 2;

  v5 = [(PHCallViewController *)self bottomBar];
  [v5 setAction:23 enabled:v4];
}

- (void)transitionToFullScreenIfNecessary
{
  v7 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if (![v7 callDisplayStyle])
  {
    v3 = [(iPadAudioCallViewController *)self view];
    v4 = [v3 window];
    v5 = [v4 windowScene];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return;
    }

    v7 = [(iPadAudioCallViewController *)self inCallRootViewController];
    [v7 requestInCallSceneTransitionToFullScreen];
  }
}

- (id)isolatedCall
{
  v2 = [(iPadAudioCallViewController *)self callCenter];
  v3 = [v2 currentCalls];

  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)associatedCallGroupForCall:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(iPadAudioCallViewController *)self callCenter];
  v6 = [v5 currentCallGroups];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 calls];
        v12 = [v11 containsObject:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (BOOL)prioritizedCallIsInSameCallGroupAsCall:(id)a3
{
  v4 = a3;
  v5 = [(iPadAudioCallViewController *)self prioritizedCall];

  if (v5)
  {
    v6 = [(iPadAudioCallViewController *)self associatedCallGroupForCall:v4];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 calls];
      v9 = [(iPadAudioCallViewController *)self prioritizedCall];
      v10 = [v8 containsObject:v9];
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

- (void)setInCallRootViewController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inCallRootViewController);

  v6 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_inCallRootViewController, obj);
    v5 = [(iPadAudioCallViewController *)self isViewLoaded];
    v6 = obj;
    if (v5)
    {
      v5 = [(iPadAudioCallViewController *)self handleConfigurationAfterViewLoaded];
      v6 = obj;
    }
  }

  _objc_release_x1(v5, v6);
}

- (id)getParticipantsView_WaitingOrNot
{
  v3 = [(iPadAudioCallViewController *)self getParticipantsView_Waiting];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(iPadAudioCallViewController *)self getParticipantsView_NotWaiting];
  }

  v6 = v5;

  return v6;
}

- (id)getParticipantsView_Waiting
{
  v2 = [(iPadAudioCallViewController *)self callWaitingParticipantsViewController];
  v3 = [v2 view];

  return v3;
}

- (id)getParticipantsView_NotWaiting
{
  v2 = [(iPadAudioCallViewController *)self callParticipantsViewController];
  v3 = [v2 view];

  return v3;
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
  v3 = [(iPadAudioCallViewController *)self posterNameViewModel];

  if (!v3)
  {
    return 0;
  }

  v4 = [(iPadAudioCallViewController *)self posterNameViewModel];
  v5 = [v4 posterNameTextView];
  v6 = [v5 layout] == 1;

  return v6;
}

- (BOOL)canShowPosterBadgeInAudioCallView:(id)a3
{
  v4 = a3;
  if ([(iPadAudioCallViewController *)self participantsViewIsShowingMultipleLabel])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 badgeView];
    if (v6)
    {
      v5 = 1;
    }

    else
    {
      v7 = [v4 iconView];
      v5 = v7 != 0;
    }
  }

  return v5;
}

- (BOOL)usesCompactMulticallUI
{
  v3 = [(iPadAudioCallViewController *)self features];
  if ([v3 callManagerEnabled])
  {
    v4 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
    if ([v4 callDisplayStyle] == 3)
    {
      v5 = [(iPadAudioCallViewController *)self features];
      v6 = [v5 isDominoEnabled] ^ 1;
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

- (void)setPosterViewController:(id)a3
{
  objc_storeStrong(&self->_posterViewController, a3);

  [(iPadAudioCallViewController *)self _updateStatusLabelVisibility];
}

- (id)newPosterConfigurationForCall:(id)a3
{
  v4 = a3;
  v5 = [(iPadAudioCallViewController *)self features];
  v6 = [v5 isNameAndPhotoC3Enabled];

  if (v6)
  {
    v7 = [(iPadAudioCallViewController *)self sharedProfileStateOracleForCall:v4];
    v8 = [v7 pendingNickname];

    if (v8 && ([v8 wallpaper], (v9 = objc_claimAutoreleasedReturnValue()) != 0) && (v10 = v9, objc_msgSend(v8, "wallpaper"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "wallpaperData"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v10, v12))
    {
      v13 = [v8 wallpaper];
      v14 = [v13 wallpaperData];

      v15 = [PRSPosterArchiver unarchiveConfigurationFromData:v14 error:0];
      v16 = sub_100004F84();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v4 uniqueProxyIdentifier];
        v23 = 138412290;
        v24 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "SNAP: unarchived a pending PRSPosterConfiguration for %@", &v23, 0xCu);
      }

      v18 = [[ICSPosterConfigurationWrapper alloc] initWithConfiguration:v15 source:3];
      v19 = [(iPadAudioCallViewController *)self configurationCache];
      v20 = [v4 uniqueProxyIdentifier];
      [v19 setObject:v18 forKey:v20];
    }

    else
    {
      v21 = sub_100004F84();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412290;
        v24 = v8;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "SNAP: there is no newPosterConfiguration, current pendingNickName is %@", &v23, 0xCu);
      }

      v14 = [(iPadAudioCallViewController *)self configurationCache];
      v18 = [[ICSPosterConfigurationWrapper alloc] initWithConfiguration:0 source:3];
      v19 = [v4 uniqueProxyIdentifier];
      [v14 setObject:v18 forKey:v19];
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)sharedProfileStateOracleForCall:(id)a3
{
  v4 = a3;
  v5 = [v4 contactIdentifier];

  if (v5)
  {
    v6 = [PHInCallUtilities contactStoreForCall:v4];
    v7 = [v4 contactIdentifier];
    v8 = +[iPadAudioCallViewController contactKeysToFetch];
    v9 = [(iPadAudioCallViewController *)self contactsCache];
    v10 = [v6 contactForIdentifier:v7 keysToFetch:v8 usingCache:v9];

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
      v13 = [v4 uniqueProxyIdentifier];
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SNAP: call doesn't have contactIdentifier %@", &v15, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)currentCallStateCanShowNewPoster
{
  v2 = self;
  v3 = [(iPadAudioCallViewController *)self frontmostCall];
  LOBYTE(v2) = [(iPadAudioCallViewController *)v2 callStateCanShowNewPoster:v3];

  return v2;
}

- (BOOL)callStateCanShowNewPoster:(id)a3
{
  v4 = a3;
  v5 = [(iPadAudioCallViewController *)self features];
  v6 = [v5 isNameAndPhotoC3Enabled];

  v9 = 0;
  if (v6)
  {
    if (v4)
    {
      if ([v4 status] == 1)
      {
        v7 = [(iPadAudioCallViewController *)self callCenter];
        v8 = [v7 currentCallCount];

        if (v8 < 2)
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
  v3 = [(iPadAudioCallViewController *)self frontmostCall];
  if ([(iPadAudioCallViewController *)self callStateCanShowNewPoster:v3])
  {
    v4 = [objc_opt_class() posterSourceIsSyncedWithContacts:{-[iPadAudioCallViewController suggestedNewPosterSourceAfterCallConnects:](self, "suggestedNewPosterSourceAfterCallConnects:", v3)}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)finishNewPosterUpdatesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(iPadAudioCallViewController *)self features];
  v6 = [v5 isNameAndPhotoC3Enabled];

  if (v6)
  {
    v7 = [(iPadAudioCallViewController *)self frontmostCall];
    v8 = v7;
    if (v7)
    {
      if ([v7 status] == 1)
      {
        v9 = [(iPadAudioCallViewController *)self callCenter];
        v10 = [v9 currentCallCount];

        if (v10 <= 1)
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

          if (v4)
          {
            v4[2](v4, v11);
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
    v3 = [(iPadAudioCallViewController *)self frontmostCall];
    v4 = [v3 isEmergency];

    if (v4)
    {
      return 0;
    }
  }

  v6 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  v5 = [v6 callDisplayStyle] != 0;

  return v5;
}

- (BOOL)canShowBackgroundImage
{
  if ([(CNKFeatures *)self->_features isEnhancedEmergencyEnabled])
  {
    v3 = [(iPadAudioCallViewController *)self frontmostCall];
    v4 = [v3 isEmergency];

    if (v4)
    {
      return 0;
    }
  }

  v6 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([v6 callDisplayStyle] == 3)
  {
    v7 = [(iPadAudioCallViewController *)self features];
    [v7 isDominoEnabled];
  }

  v8 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  v5 = [v8 callDisplayStyle] != 0;

  return v5;
}

- (BOOL)shouldApplyNewGradientBlur
{
  if ([(CNKFeatures *)self->_features isEnhancedEmergencyEnabled])
  {
    v3 = [(iPadAudioCallViewController *)self frontmostCall];
    v4 = [v3 isEmergency];

    if (v4)
    {
      return 0;
    }
  }

  v6 = [(iPadAudioCallViewController *)self callToUseForWallpaper];
  v7 = [v6 provider];
  if ([v7 isSystemProvider])
  {
    v5 = 1;
  }

  else
  {
    v8 = [(iPadAudioCallViewController *)self callToUseForWallpaper];
    v5 = [v8 status] != 4;
  }

  return v5;
}

- (BOOL)isShowingBackgroundImage
{
  v2 = [(iPadAudioCallViewController *)self backgroundImageView];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)shouldShowCircularAvatar
{
  if ([(CNKFeatures *)self->_features isEnhancedEmergencyEnabled])
  {
    v3 = [(iPadAudioCallViewController *)self frontmostCall];
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v5 = [(iPadAudioCallViewController *)self callCenter];
      v6 = [v5 currentCalls];
      v4 = [v6 firstObject];

      if (!v4)
      {
        v7 = +[UIApplication sharedApplication];
        v8 = [v7 delegate];
        v4 = [v8 mostRecentlyDisconnectedAudioCall];
      }
    }

    v9 = [v4 isEmergency];

    if (v9)
    {
      return 0;
    }
  }

  v11 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([v11 callDisplayStyle] == 3)
  {
    v12 = [(iPadAudioCallViewController *)self features];
    v13 = [v12 isDominoEnabled];

    if (v13)
    {
      return 1;
    }
  }

  else
  {
  }

  v14 = +[UIDevice currentDevice];
  v15 = [v14 userInterfaceIdiom];

  v16 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  v17 = [v16 callDisplayStyle];

  if ([(iPadAudioCallViewController *)self shouldShowContactOrLastSeenWallpaper])
  {
    v18 = 1;
  }

  else
  {
    v19 = [(iPadAudioCallViewController *)self renderingViewController];
    v18 = v19 != 0;
  }

  v20 = [(iPadAudioCallViewController *)self callToUseForWallpaper];
  v21 = [(iPadAudioCallViewController *)self contactImageForCall:v20];

  v22 = [(iPadAudioCallViewController *)self callToUseForWallpaper];
  v23 = [(iPadAudioCallViewController *)self fallbackImageDataForCall:v22];

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
  if ((v15 | v17) == 0 || v18)
  {
    return (v15 | v17) == 0;
  }

  else
  {
    return v25;
  }
}

- (id)contactToDisplayInCallWallpaperForCall:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 contactIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [PHInCallUtilities contactStoreForCall:v5];
    v8 = [v5 contactIdentifier];
    v9 = +[iPadAudioCallViewController contactKeysToFetch];
    v10 = [(iPadAudioCallViewController *)self contactsCache];
    v11 = [v7 contactForIdentifier:v8 keysToFetch:v9 usingCache:v10];

    if (v11)
    {
      v12 = [(iPadAudioCallViewController *)self mostRecentContactToDisplayInCallWallpaper];

      if (v11 != v12)
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

- (id)contactWallpaperForCall:(id)a3
{
  v4 = a3;
  if (-[CNKFeatures isEnhancedEmergencyEnabled](self->_features, "isEnhancedEmergencyEnabled") && ([v4 isEmergency] & 1) != 0)
  {
    v5 = 0;
    goto LABEL_20;
  }

  v6 = [v4 contactIdentifier];

  if (v6)
  {
    v7 = [v4 handle];
    v8 = [v7 siriDisplayName];
    if ([v8 length])
    {
      v9 = [v4 handle];
      v10 = [v9 shouldHideContact];

      if (v10)
      {
        v11 = sub_100004F84();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138412290;
          v20 = v4;
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

    v11 = [PHInCallUtilities contactStoreForCall:v4];
    v13 = [v4 contactIdentifier];
    v14 = +[iPadAudioCallViewController contactKeysToFetch];
    v15 = [(iPadAudioCallViewController *)self contactsCache];
    v16 = [v11 contactForIdentifier:v13 keysToFetch:v14 usingCache:v15];

    v17 = sub_100004F84();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 67109120;
      LODWORD(v20) = v16 != 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "SNAP: the contact we used to fetch wallpaper for call is non-nil: %d", &v19, 8u);
    }

    v5 = [v16 wallpaper];

    if (v5)
    {
      v5 = [v16 wallpaper];
    }

    goto LABEL_19;
  }

  v11 = sub_100004F84();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v4;
    v12 = "SNAP: call doesn't have contactIdentifier %@";
    goto LABEL_11;
  }

LABEL_12:
  v5 = 0;
LABEL_19:

LABEL_20:

  return v5;
}

- (id)wallpaperTypeForCNWallpaper:(id)a3
{
  v4 = [a3 extensionBundleID];
  v5 = [(iPadAudioCallViewController *)self wallpaperTypeForBundleID:v4];

  return v5;
}

- (id)wallpaperTypeForIMWallpaperMetadata:(id)a3
{
  v4 = [a3 type];
  v5 = [(iPadAudioCallViewController *)self wallpaperTypeForBundleID:v4];

  return v5;
}

- (id)wallpaperTypeForBundleID:(id)a3
{
  v3 = a3;
  if ([v3 isEqual:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"])
  {
    v4 = &CNWallpaperTypePhoto;
LABEL_7:
    v5 = *v4;
    goto LABEL_8;
  }

  if ([v3 isEqual:@"com.apple.AvatarUI.AvatarPosterExtension"])
  {
    v4 = &CNWallpaperTypeMemoji;
    goto LABEL_7;
  }

  if ([v3 isEqual:@"com.apple.ContactsUI.MonogramPosterExtension"])
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
    v3 = [(iPadAudioCallViewController *)self renderingViewController];

    if (v3)
    {
      return 1;
    }
  }

  v5 = [(iPadAudioCallViewController *)self callToUseForWallpaper];
  v6 = v5;
  if (v5 && ([v5 contactIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
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

- (id)lastSeenOrCurrentPosterConfigurationForCall:(id)a3
{
  v4 = a3;
  if ([(iPadAudioCallViewController *)self prefersShowingCachedLastSeenPosterBeforeCallConnected:v4])
  {
    [(iPadAudioCallViewController *)self lastSeenPosterConfigurationForCall:v4];
  }

  else
  {
    [(iPadAudioCallViewController *)self contactWallpaperConfigurationForCall:v4 shouldReadFromCache:1];
  }
  v5 = ;

  return v5;
}

- (id)lastSeenPosterConfigurationForCall:(id)a3
{
  v4 = a3;
  v5 = [(iPadAudioCallViewController *)self configurationCache];
  v6 = [v4 uniqueProxyIdentifier];
  v7 = [v5 objectForKey:v6];
  v8 = [v7 configuration];

  if (!v8)
  {
    v12 = [v4 handle];
    v13 = [v12 siriDisplayName];
    if ([v13 length])
    {
      v14 = [v4 handle];
      v15 = [v14 shouldHideContact];

      if (v15)
      {
        v16 = sub_100004F84();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v4 uniqueProxyIdentifier];
          v26 = 138412290;
          v27 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "SNAP: call initiated with Siri using a phone or email on a lock device, not showing the wallpaper for callUUID %@", &v26, 0xCu);
        }

        goto LABEL_15;
      }
    }

    else
    {
    }

    v18 = [(iPadAudioCallViewController *)self readCachedLastSeenPosterDataForCall:v4];
    if (v18)
    {
      v19 = v18;
      v11 = [PRSPosterArchiver unarchiveConfigurationFromData:v18 error:0];
      v20 = sub_100004F84();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v4 uniqueProxyIdentifier];
        v26 = 138412290;
        v27 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "SNAP: unarchived a lastSeen PRSPosterConfiguration for %@", &v26, 0xCu);
      }

      v22 = [[ICSPosterConfigurationWrapper alloc] initWithConfiguration:v11 source:1];
      v23 = [(iPadAudioCallViewController *)self configurationCache];
      v24 = [v4 uniqueProxyIdentifier];
      [v23 setObject:v22 forKey:v24];

      goto LABEL_16;
    }

LABEL_15:
    v19 = [(iPadAudioCallViewController *)self configurationCache];
    v22 = [[ICSPosterConfigurationWrapper alloc] initWithConfiguration:0 source:1];
    v23 = [v4 uniqueProxyIdentifier];
    [v19 setObject:v22 forKey:v23];
    v11 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v9 = sub_100004F84();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v4 callUUID];
    v26 = 138412290;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SNAP: Returning a cached PRSPosterConfiguration for %@", &v26, 0xCu);
  }

  v11 = v8;
LABEL_17:

  return v11;
}

- (id)contactWallpaperConfigurationForCall:(id)a3 shouldReadFromCache:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(iPadAudioCallViewController *)self contactWallpaperForCall:v6];
  if (v7)
  {
    if (v4 && (-[iPadAudioCallViewController configurationCache](self, "configurationCache"), v8 = objc_claimAutoreleasedReturnValue(), [v6 uniqueProxyIdentifier], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKey:", v9), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "configuration"), v11 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v11))
    {
      v12 = sub_100004F84();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v6 callUUID];
        v25 = 138412290;
        v26 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SNAP: Returning a cached PRSPosterConfiguration for %@", &v25, 0xCu);
      }
    }

    else
    {
      v12 = [v7 posterArchiveData];
      v14 = sub_100004F84();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        if (v15)
        {
          v25 = 138412546;
          v26 = v12;
          v27 = 2048;
          v28 = [v12 length];
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "SNAP: posterArchiveData in wallpaper is %@, length is %lu", &v25, 0x16u);
        }

        v11 = [PRSPosterArchiver unarchiveConfigurationFromData:v12 error:0];
        v16 = sub_100004F84();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v6 uniqueProxyIdentifier];
          v25 = 138412290;
          v26 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "SNAP: unarchived a contact (current) PRSPosterConfiguration for %@", &v25, 0xCu);
        }

        v18 = [[ICSPosterConfigurationWrapper alloc] initWithConfiguration:v11 source:2];
        v19 = [(iPadAudioCallViewController *)self configurationCache];
        v20 = [v6 uniqueProxyIdentifier];
        [(ICSPosterConfigurationWrapper *)v19 setObject:v18 forKey:v20];
      }

      else
      {
        if (v15)
        {
          LOWORD(v25) = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "SNAP: there is no posterArchiveData in wallpaper", &v25, 2u);
        }

        v18 = [(iPadAudioCallViewController *)self configurationCache];
        v19 = [[ICSPosterConfigurationWrapper alloc] initWithConfiguration:0 source:2];
        v20 = [v6 uniqueProxyIdentifier];
        [(ICSPosterConfigurationWrapper *)v18 setObject:v19 forKey:v20];
        v11 = 0;
      }
    }
  }

  else
  {
    v21 = [(iPadAudioCallViewController *)self configurationCache];
    v22 = [[ICSPosterConfigurationWrapper alloc] initWithConfiguration:0 source:2];
    v23 = [v6 uniqueProxyIdentifier];
    [v21 setObject:v22 forKey:v23];

    v12 = sub_100004F84();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SNAP: contactWallpaperForCall is nil", &v25, 2u);
    }

    v11 = 0;
  }

  return v11;
}

- (id)wallpaperTitleStyleAttributesForCall:(id)a3
{
  v4 = a3;
  v5 = [(iPadAudioCallViewController *)self lastSeenOrCurrentPosterConfigurationForCall:v4];
  if (!v5)
  {
    v11 = 0;
    goto LABEL_12;
  }

  v6 = [(iPadAudioCallViewController *)self configurationCache];
  v7 = [v4 uniqueProxyIdentifier];
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = [v8 configuration];
  if (([v9 isEqual:v5] & 1) == 0)
  {

    goto LABEL_8;
  }

  v10 = [v8 titleStyleAttributes];

  if (!v10)
  {
LABEL_8:
    v15 = 0;
    v11 = [PRUISPosterConfigurationUtilities titleStyleAttributesForConfiguration:v5 error:&v15];
    if (v8)
    {
      v12 = [v8 configuration];
      v13 = [v12 isEqual:v5];

      if (v13)
      {
        [v8 setTitleStyleAttributes:v11];
      }
    }

    goto LABEL_11;
  }

  v11 = [v8 titleStyleAttributes];
LABEL_11:

LABEL_12:

  return v11;
}

- (id)wallpaperTitleStyleAttributes
{
  v3 = [(iPadAudioCallViewController *)self callToUseForWallpaper];
  v4 = [(iPadAudioCallViewController *)self wallpaperTitleStyleAttributesForCall:v3];

  return v4;
}

- (id)contactWallpaperBackgroundColor
{
  v3 = [(iPadAudioCallViewController *)self callToUseForWallpaper];
  if (![(iPadAudioCallViewController *)self callStateCanShowNewPoster:v3]&& [(iPadAudioCallViewController *)self prefersShowingCachedLastSeenPosterBeforeCallConnected:v3])
  {
    v4 = [(iPadAudioCallViewController *)self lastSeenPosterIMWallpaperMetadataForCall:v3];
    v5 = [v4 backgroundColor];
LABEL_6:
    v7 = v5;
    goto LABEL_8;
  }

  v6 = [(iPadAudioCallViewController *)self contactWallpaperForCall:v3];
  v4 = v6;
  if (v6)
  {
    v5 = [v6 backgroundColorDescription];
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

- (void)updateLegacyBackgroundImageVisibilityWithShouldShowWallpaper:(BOOL)a3
{
  v3 = a3;
  v5 = [(iPadAudioCallViewController *)self canShowBackgroundImage];
  v6 = !v3;
  if (!v5)
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

- (BOOL)setCallForBackgroundImage:(id)a3 animated:(BOOL)a4 callDisplayStyleChanged:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = sub_100004F84();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setCallForBackgroundImage to: %@", &v17, 0xCu);
  }

  v9 = [(iPadAudioCallViewController *)self callForBackgroundImage];
  if ([v9 isEqual:v7])
  {
    v10 = [(iPadAudioCallViewController *)self callForBackgroundImage];

    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = v7 == 0;
    }

    if (v11 && !v5)
    {
      v12 = [(iPadAudioCallViewController *)self backgroundImageView];
      v13 = [v12 image];

      [(iPadAudioCallViewController *)self hideOrShowThirdPartyBackgroundImageWithImage:v13];
      goto LABEL_19;
    }
  }

  else
  {
  }

  if (v7)
  {
    v14 = [(iPadAudioCallViewController *)self contactImageDataForCall:v7];
    if (v14)
    {
      v13 = [[UIImage alloc] initWithData:v14];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  [(iPadAudioCallViewController *)self setBackgroundImage:v13];
  [(iPadAudioCallViewController *)self setCallForBackgroundImage:v7];
LABEL_19:
  [(iPadAudioCallViewController *)self updateLegacyBackgroundImageVisibilityWithShouldShowWallpaper:[(iPadAudioCallViewController *)self callHasNoContactPoster]^ 1];
  if (v13)
  {
    v15 = [(iPadAudioCallViewController *)self canShowBackgroundImage];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)contactImageDataForCall:(id)a3
{
  v4 = [(iPadAudioCallViewController *)self contactForCall:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 fullscreenImageData];
    v7 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
    if ([v7 callDisplayStyle] == 3)
    {
      v8 = [(iPadAudioCallViewController *)self features];
      v9 = [v8 isDominoEnabled];

      if (v9 && !v6)
      {
        v6 = [v5 imageData];
      }
    }

    else
    {
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = sub_100004F84();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SNAP: contactImageDataForCall is %@", &v12, 0xCu);
  }

  return v6;
}

- (id)contactForCall:(id)a3
{
  v4 = a3;
  v5 = [v4 handle];
  v6 = [v5 siriDisplayName];
  if ([v6 length])
  {
    v7 = [v4 handle];
    v8 = [v7 shouldHideContact] ^ 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = [v4 contactIdentifier];

  if (v9 && v8)
  {
    v10 = sub_100004F84();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SNAP: trying to fetch contactImageData", v18, 2u);
    }

    v11 = [PHInCallUtilities contactStoreForCall:v4];
    v12 = [v4 contactIdentifier];
    v13 = +[iPadAudioCallViewController contactKeysToFetch];
    v14 = [(iPadAudioCallViewController *)self contactsCache];
    v15 = [v11 contactForIdentifier:v12 keysToFetch:v13 usingCache:v14];
  }

  else
  {
    v16 = [CNMutableContact alloc];
    v11 = [v4 handle];
    v15 = [v16 initWithHandle:v11];
  }

  return v15;
}

- (id)fallbackImageDataForCall:(id)a3
{
  v3 = [(iPadAudioCallViewController *)self contactForCall:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 imageData];
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SNAP: fallbackImageDataForContact is %@", &v8, 0xCu);
  }

  return v5;
}

- (id)contactImageForCall:(id)a3
{
  v4 = a3;
  if (v4 && ([(iPadAudioCallViewController *)self contactImageDataForCall:v4], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
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
  v3 = [(iPadAudioCallViewController *)self callToUseForWallpaper];
  v4 = [(iPadAudioCallViewController *)self contactImageForCall:v3];

  return v4;
}

- (void)setBackgroundImage:(id)a3
{
  v5 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([v5 callDisplayStyle] == 3)
  {
    v6 = [(iPadAudioCallViewController *)self features];
    v7 = [v6 isDominoEnabled];

    if (v7)
    {
      v8 = [(iPadAudioCallViewController *)self callToUseForWallpaper];
      if ([(iPadAudioCallViewController *)self callStateCanShowNewPoster:v8]|| ![(iPadAudioCallViewController *)self prefersShowingCachedLastSeenPosterBeforeCallConnected:v8])
      {
        v9 = [(iPadAudioCallViewController *)self contactWallpaperForCall:v8];
        v10 = [(iPadAudioCallViewController *)self wallpaperTypeForCNWallpaper:v9];
      }

      else
      {
        v9 = [(iPadAudioCallViewController *)self lastSeenPosterIMWallpaperMetadataForCall:v8];
        v10 = [(iPadAudioCallViewController *)self wallpaperTypeForIMWallpaperMetadata:v9];
      }

      v26 = v10;

      v15 = [(iPadAudioCallViewController *)self callCenter];
      if ([v15 currentCallCount] <= 1)
      {
      }

      else
      {
        v16 = [(iPadAudioCallViewController *)self callCenter];
        v17 = [v16 incomingCall];

        if (v17)
        {
          v18 = &OBJC_IVAR___iPadAudioCallViewController__shouldShowLargeAvatarForCallWaiting;
LABEL_26:
          v20 = *(&self->super.super.super.super.isa + *v18);
          v21 = [(PHCallViewController *)self currentState];
          if (v26 == CNWallpaperTypeMemoji || v26 == CNWallpaperTypeMonogram)
          {
            v24 = [(iPadAudioCallViewController *)self contactWallpaperBackgroundColor];
            if (v24)
            {
              [(iPadAudioCallViewController *)self setBackgroundColor:v24 animated:1];
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
            if (v21 == 11)
            {
              v22 = 1;
            }

            else
            {
              v22 = v20;
            }

            if (!a3 || (v22 & 1) == 0)
            {
              v23 = +[UIColor blackColor];
              [(iPadAudioCallViewController *)self setBackgroundColor:v23 animated:1];
            }
          }

LABEL_40:

          return;
        }
      }

      v19 = [(iPadAudioCallViewController *)self usesCompactMulticallUI];
      v18 = &OBJC_IVAR___iPadAudioCallViewController__shouldShowLargeAvatar;
      if (v19)
      {
        v18 = &OBJC_IVAR___iPadAudioCallViewController__shouldShowLargeAvatarForCallWaiting;
      }

      goto LABEL_26;
    }
  }

  else
  {
  }

  if ((!a3 || ![(iPadAudioCallViewController *)self canShowBackgroundImage]) && ![(iPadAudioCallViewController *)self shouldShowContactOrLastSeenWallpaper])
  {
    v11 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
    v12 = [v11 callDisplayStyle];

    if (!v12)
    {
      return;
    }

    v13 = +[UIApplication sharedApplication];
    v14 = [v13 delegate];
    v26 = [v14 mostRecentlyDisconnectedAudioCall];

    if (!v26 || ![v26 isEmergency] || (objc_msgSend(v26, "disconnectedReasonRequiresCallBackUI") & 1) == 0)
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

- (void)setBackgroundColor:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000DE444;
  v10[3] = &unk_100357110;
  v10[4] = self;
  v5 = a3;
  v11 = v5;
  v6 = objc_retainBlock(v10);
  v7 = v6;
  if (v4)
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

- (void)hideOrShowThirdPartyBackgroundImageWithImage:(id)a3
{
  v24 = a3;
  if (!-[CNKFeatures isEnhancedEmergencyEnabled](self->_features, "isEnhancedEmergencyEnabled") || (-[iPadAudioCallViewController frontmostCall](self, "frontmostCall"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isEmergency], v4, (v5 & 1) == 0))
  {
    if ([(iPadAudioCallViewController *)self shouldApplyNewGradientBlur]|| [(iPadAudioCallViewController *)self shouldShowContactOrLastSeenWallpaper])
    {
      v6 = [(iPadAudioCallViewController *)self unblurredBackgroundImageView];
      [v6 removeFromSuperview];

      [(iPadAudioCallViewController *)self setUnblurredBackgroundImageView:0];
    }

    else
    {
      v7 = [(iPadAudioCallViewController *)self unblurredBackgroundImageView];

      if (!v7)
      {
        v8 = objc_opt_new();
        [(iPadAudioCallViewController *)self setUnblurredBackgroundImageView:v8];

        v9 = [(iPadAudioCallViewController *)self view];
        [v9 frame];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v18 = [(iPadAudioCallViewController *)self unblurredBackgroundImageView];
        [v18 setFrame:{v11, v13, v15, v17}];

        v19 = [(iPadAudioCallViewController *)self unblurredBackgroundImageView];
        [v19 setContentMode:2];
      }

      v20 = [(iPadAudioCallViewController *)self unblurredBackgroundImageView];
      [v20 setImage:v24];

      v21 = [(iPadAudioCallViewController *)self view];
      v22 = [(iPadAudioCallViewController *)self unblurredBackgroundImageView];
      v23 = [(iPadAudioCallViewController *)self backgroundImageView];
      [v21 insertSubview:v22 above:v23];
    }
  }
}

- (id)fallbackHorizontalNameLabelString
{
  v3 = [(iPadAudioCallViewController *)self callToUseForWallpaper];
  v4 = [(iPadAudioCallViewController *)self associatedCallGroupForCall:v3];

  v5 = [(iPadAudioCallViewController *)self callParticipantsViewController];
  v6 = [v5 nameForCallGroup:v4];

  return v6;
}

- (id)createContactFirstNameLabelViewModel
{
  v3 = [(iPadAudioCallViewController *)self callToUseForWallpaper];
  v4 = [(iPadAudioCallViewController *)self contactToDisplayInCallWallpaperForCall:v3];
  v5 = [v3 handle];
  v6 = [v5 value];
  v7 = [TPIncomingCallMetricsProvider appropriateCallerNameViewForContact:v4 callStatus:0 callIsActive:1 optionalBackupName:v6];

  [(iPadAudioCallViewController *)self applyWallpaperTitleStyleAttributesToTextViewWrapper:v7];
  [v7 overrideTitleLayoutWith:0];
  v8 = [[PHPosterNameViewModel alloc] initWithCall:v3 posterNameTextView:v7];

  return v8;
}

- (void)applyWallpaperTitleStyleAttributesToTextViewWrapper:(id)a3
{
  v7 = a3;
  v4 = [(iPadAudioCallViewController *)self wallpaperTitleStyleAttributes];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 titleFont];
    [v7 setTextFontUsingDefaultFontSizes:v6];

    [v7 setPreferredAlignment:{objc_msgSend(v5, "preferredTitleAlignment")}];
    [v7 setPreferredLayout:0];
  }
}

- (void)removeFirstNameLabelFromViewIfNeeded
{
  v3 = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];

  if (v3)
  {

    [(iPadAudioCallViewController *)self setDetachedPosterNameViewModel:0];
  }
}

- (void)hideFirstNameLabelOnKeypad
{
  v3 = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];

  if (v3)
  {
    v4 = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];
    [v4 updatePosterNameAlpha:0.0];
  }
}

- (void)showFirstNameLabelOnKeypad
{
  v3 = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];

  if (v3)
  {
    v4 = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];
    [v4 updatePosterNameAlpha:1.0];
  }
}

- (void)createDetachedPosterNameViewModel:(id)a3
{
  v4 = a3;
  v5 = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];

  if (!v5)
  {
    v6 = [(iPadAudioCallViewController *)self getParticipantsView_NotWaiting];
    v7 = [(iPadAudioCallViewController *)self createContactFirstNameLabelViewModel];
    [(iPadAudioCallViewController *)self setDetachedPosterNameViewModel:v7];

    v8 = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];
    [v8 updatePosterNameAlpha:0.0];

    v9 = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];
    [v9 updateStatusFromParticipantsView:v6];

    v10 = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];
    v11 = [v10 posterNameTextView];
    v12 = [v11 viewController];

    v13 = [(iPadAudioCallViewController *)self layoutGuidesProvider];
    v14 = [v13 callerDetailsLayoutGuide];

    if (v12)
    {
      [(iPadAudioCallViewController *)self addChildViewController:v12];
      v15 = [v12 view];
      [v4 addSubview:v15];

      v16 = [v12 view];
      [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
      v41 = [v16 topAnchor];
      v40 = [v14 topAnchor];
      v39 = [v41 constraintEqualToAnchor:v40];
      v45[0] = v39;
      v38 = [v16 bottomAnchor];
      v37 = [v14 bottomAnchor];
      [v38 constraintEqualToAnchor:v37];
      v36 = v44 = v4;
      v45[1] = v36;
      [v16 leadingAnchor];
      v17 = v43 = v6;
      [v14 leadingAnchor];
      v18 = v42 = v12;
      v19 = [v17 constraintEqualToAnchor:v18];
      v45[2] = v19;
      v20 = [v16 trailingAnchor];
      [v14 trailingAnchor];
      v22 = v21 = v14;
      v23 = [v20 constraintEqualToAnchor:v22];
      v45[3] = v23;
      v24 = [NSArray arrayWithObjects:v45 count:4];
      [NSLayoutConstraint activateConstraints:v24];

      v14 = v21;
      v12 = v42;

      v6 = v43;
      v4 = v44;

      [v42 didMoveToParentViewController:self];
    }

    v25 = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];
    v26 = [v25 posterNameTextView];
    v27 = [v26 displayNameText];

    v28 = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];
    v29 = [v28 posterNameTextView];
    [(iPadAudioCallViewController *)self applyWallpaperTitleStyleAttributesToTextViewWrapper:v29];

    v30 = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];
    v31 = [v30 posterNameTextView];
    v32 = [v31 displayNameText];
    v33 = [v32 length];

    if (!v33)
    {
      v34 = [(iPadAudioCallViewController *)self detachedPosterNameViewModel];
      v35 = [v34 posterNameTextView];
      [v35 setDisplayNameText:v27];
    }
  }
}

- (void)hideOrShowScreeningBackgroundView
{
  v3 = [(iPadAudioCallViewController *)self featureFlags];
  v4 = TUCallScreeningEnabled();

  if (!v4)
  {
    return;
  }

  v5 = [(PHCallViewController *)self currentState];
  if ([(PHCallViewController *)self currentState]== 11 || v5 == 12)
  {
    goto LABEL_6;
  }

  v6 = [(PHCallViewController *)self bottomBar];
  if ([v6 currentState] == 24)
  {
    v7 = [(PHCallViewController *)self currentState];

    if (v7 == 11)
    {
LABEL_6:

      [(iPadAudioCallViewController *)self showTrailngPanelCoveringViewIfNeeded];
      return;
    }
  }

  else
  {
  }

  v8 = [(iPadAudioCallViewController *)self translationController];
  v9 = [v8 isTranslationStarted];

  if ((v9 & 1) == 0)
  {
    [(iPadAudioCallViewController *)self hideTrailngPanelCoveringViewIfNeeded];
  }

  [(iPadAudioCallViewController *)self _updatePosterNameAlpha];
  [(iPadAudioCallViewController *)self _updateStatusLabelVisibility];
  v10 = [(iPadAudioCallViewController *)self getParticipantsView_NotWaiting];
  [(iPadAudioCallViewController *)self updateParticipantConstraintsForPosterName:v10];
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

  v4 = [(iPadAudioCallViewController *)self buttonsViewController];
  v5 = [v4 view];

  if (v5)
  {
    v6 = [(iPadAudioCallViewController *)self buttonsViewController];
    v7 = [v6 view];

    v8 = [(iPadAudioCallViewController *)self defaultBackgroundGradientView];

    if (!v8)
    {
      v28 = objc_alloc_init(PHAudioCallBackgroundGradientViewController);
      v9 = [(PHAudioCallBackgroundGradientViewController *)v28 view];
      [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(iPadAudioCallViewController *)self addChildViewController:v28];
      v10 = [(iPadAudioCallViewController *)self backgroundController];
      [v10 insertToBackground:v9];

      v26 = [v9 leadingAnchor];
      v27 = [(iPadAudioCallViewController *)self view];
      v25 = [v27 leadingAnchor];
      v24 = [v26 constraintEqualToAnchor:v25];
      v30[0] = v24;
      v22 = [v9 trailingAnchor];
      v23 = [(iPadAudioCallViewController *)self view];
      v21 = [v23 trailingAnchor];
      v20 = [v22 constraintEqualToAnchor:v21];
      v30[1] = v20;
      v18 = [v9 topAnchor];
      v19 = [(iPadAudioCallViewController *)self view];
      v11 = [v19 topAnchor];
      v12 = [v18 constraintEqualToAnchor:v11];
      v30[2] = v12;
      v13 = [v9 bottomAnchor];
      v14 = [(iPadAudioCallViewController *)self view];
      v15 = [v14 bottomAnchor];
      v16 = [v13 constraintEqualToAnchor:v15];
      v30[3] = v16;
      v17 = [NSArray arrayWithObjects:v30 count:4];
      [NSLayoutConstraint activateConstraints:v17];

      [(iPadAudioCallViewController *)self setDefaultBackgroundGradientView:v9];
      [v7 updateBackgroundMaterial:2];
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

  v4 = [(iPadAudioCallViewController *)self defaultBackgroundGradientView];
  [v4 removeFromSuperview];

  [(iPadAudioCallViewController *)self setDefaultBackgroundGradientView:0];
}

- (void)setPosterNameViewModel:(id)a3
{
  v4 = a3;
  posterNameViewModel = self->_posterNameViewModel;
  if (posterNameViewModel)
  {
    [(PHPosterNameViewModel *)posterNameViewModel removeFromSuperview];
  }

  v6 = self->_posterNameViewModel;
  self->_posterNameViewModel = v4;
}

- (void)setKeypadPosterNameViewModel:(id)a3
{
  v4 = a3;
  keypadPosterNameViewModel = self->_keypadPosterNameViewModel;
  if (keypadPosterNameViewModel)
  {
    [(PHPosterNameViewModel *)keypadPosterNameViewModel removeFromSuperview];
  }

  v6 = self->_keypadPosterNameViewModel;
  self->_keypadPosterNameViewModel = v4;
}

- (void)setDetachedPosterNameViewModel:(id)a3
{
  v4 = a3;
  detachedPosterNameViewModel = self->_detachedPosterNameViewModel;
  if (detachedPosterNameViewModel)
  {
    [(PHPosterNameViewModel *)detachedPosterNameViewModel removeFromSuperview];
  }

  v6 = self->_detachedPosterNameViewModel;
  self->_detachedPosterNameViewModel = v4;
}

- (void)updatePosterViewModelForParticipantsView:(id)a3
{
  v6 = a3;
  v4 = [(iPadAudioCallViewController *)self posterNameViewModel];

  if (v4)
  {
    v5 = [(iPadAudioCallViewController *)self posterNameViewModel];
    [v5 updateViewModelForParticipantsView:v6];
  }

  else
  {
    v5 = [v6 singleCallLabelView];
    [v5 setPosterNameViewModel:0];
  }
}

- (void)showPosterBlurTransition
{
  v3 = [UIBlurEffect effectWithBlurRadius:15.0];
  v4 = [[UIVisualEffectView alloc] initWithEffect:0];
  v5 = [(iPadAudioCallViewController *)self view];
  [v5 frame];
  [v4 setFrame:?];

  v6 = [(iPadAudioCallViewController *)self view];
  v7 = [(iPadAudioCallViewController *)self buttonsViewController];
  v8 = [v7 view];
  [v6 insertSubview:v4 below:v8];

  v9 = [(iPadAudioCallViewController *)self view];
  v10 = [(iPadAudioCallViewController *)self callDetailsViewButton];
  [v9 bringSubviewToFront:v10];

  v11 = [(iPadAudioCallViewController *)self view];
  v12 = [(iPadAudioCallViewController *)self posterBadgeView];
  [v11 bringSubviewToFront:v12];

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

- (void)removePosterViewController:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(iPadAudioCallViewController *)self renderingViewController];
  [(iPadAudioCallViewController *)self setRenderingViewController:0];
  [(iPadAudioCallViewController *)self setPosterNameViewModel:0];
  if (v7)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000DFA50;
    v11[3] = &unk_100357C78;
    v12 = v7;
    v13 = self;
    v14 = v6;
    v8 = objc_retainBlock(v11);
    v9 = v8;
    if (v4)
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
    if (v6)
    {
      v6[2](v6);
    }
  }
}

- (void)updateLayeredBackgroundWallpaper
{
  [(iPadAudioCallViewController *)self updatePoster];
  existingPrioritizedCall = self->_existingPrioritizedCall;
  v6 = [(iPadAudioCallViewController *)self view];
  [v6 frame];
  [(iPadAudioCallViewController *)self updateTopShelfContentWithCall:existingPrioritizedCall sceneWindowSize:v4, v5];
}

- (void)setupNameLabelForAlwaysOnDisplay
{
  [(iPadAudioCallViewController *)self removeNameLabelForAlwaysOnDisplay];
  [(iPadAudioCallViewController *)self setupDimmingViewForAlwaysOnDisplay];
  v3 = [(iPadAudioCallViewController *)self createContactFirstNameLabelViewModel];
  [(iPadAudioCallViewController *)self setAlwaysOnDisplayPosterNameViewModel:v3];

  v6 = [(iPadAudioCallViewController *)self alwaysOnDisplayPosterNameViewModel];
  v4 = [v6 posterNameTextView];
  v5 = [(iPadAudioCallViewController *)self alwaysOnDisplayDimmingView];
  [TPIncomingCallMetricsProvider addCallerNameView:v4 toContainerView:v5];
}

- (void)removeNameLabelForAlwaysOnDisplay
{
  v3 = [(iPadAudioCallViewController *)self alwaysOnDisplayPosterNameViewModel];

  if (v3)
  {
    v4 = [(iPadAudioCallViewController *)self alwaysOnDisplayPosterNameViewModel];
    [v4 removeFromSuperview];

    [(iPadAudioCallViewController *)self setAlwaysOnDisplayPosterNameViewModel:0];
  }
}

- (void)setupDimmingViewForAlwaysOnDisplay
{
  v3 = [(iPadAudioCallViewController *)self alwaysOnDisplayDimmingView];

  if (!v3)
  {
    v4 = [UIView alloc];
    v5 = [(iPadAudioCallViewController *)self view];
    [v5 frame];
    v10 = [v4 initWithFrame:?];

    v6 = +[UIColor blackColor];
    v7 = [v6 colorWithAlphaComponent:0.75];
    [v10 setBackgroundColor:v7];

    v8 = [(iPadAudioCallViewController *)self view];
    [v8 addSubview:v10];

    [(iPadAudioCallViewController *)self setAlwaysOnDisplayDimmingView:v10];
    v9 = [(iPadAudioCallViewController *)self alwaysOnDisplayDimmingView];
    [v9 setAlpha:0.0];
  }
}

- (id)snapshotUIImageView
{
  v3 = [UIImageView alloc];
  v4 = [(iPadAudioCallViewController *)self backgroundImageView];
  v5 = [v4 image];
  v6 = [v3 initWithImage:v5];

  v7 = [(iPadAudioCallViewController *)self view];
  [v7 frame];
  [v6 setFrame:?];

  v8 = objc_alloc_init(UIVisualEffectView);
  v9 = [UIBlurEffect effectWithBlurRadius:100.0];
  v18 = v9;
  v10 = [NSArray arrayWithObjects:&v18 count:1];
  [v8 setBackgroundEffects:v10];

  v11 = [(iPadAudioCallViewController *)self view];
  [v11 frame];
  [v8 setFrame:?];

  [v6 addSubview:v8];
  v12 = +[CALayer layer];
  v13 = [CAFilter filterWithType:kCAFilterPlusD];
  [v12 setCompositingFilter:v13];

  v14 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.150000006];
  [v12 setBackgroundColor:{objc_msgSend(v14, "CGColor")}];

  v15 = [(iPadAudioCallViewController *)self view];
  [v15 frame];
  [v12 setFrame:?];

  v16 = [v8 layer];
  [v16 addSublayer:v12];

  return v6;
}

- (void)viewSafeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = iPadAudioCallViewController;
  [(iPadAudioCallViewController *)&v4 viewSafeAreaInsetsDidChange];
  [(iPadAudioCallViewController *)self _updateStatusLabelVisibility];
  v3 = [(iPadAudioCallViewController *)self renderingViewController];

  if (v3)
  {
    [(iPadAudioCallViewController *)self setupNameLabelForAlwaysOnDisplay];
  }
}

- (void)lockScreenVisibilityDidChange:(id)a3
{
  v4 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([v4 callDisplayStyle] == 3)
  {
    v5 = [(iPadAudioCallViewController *)self features];
    v6 = [v5 isDominoEnabled];

    if (v6)
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
  v8 = [(iPadAudioCallViewController *)self callToUseForWallpaper];
  [(iPadAudioCallViewController *)self setCallForBackgroundImage:v8 animated:1 callDisplayStyleChanged:0];

  [(iPadAudioCallViewController *)self updateCallParticipantsViewControllerCallGroups];
  v9 = [(iPadAudioCallViewController *)self getParticipantsView_NotWaiting];
  v10 = [v9 singleCallLabelView];
  [v10 updateLabelsOrderAndLayout];
  v11 = [(iPadAudioCallViewController *)self middleViewState];
  [(iPadAudioCallViewController *)self setMiddleViewState:0];
  v12 = [(UIViewController *)self->_screeningViewController view];
  v13 = [v12 superview];

  if (v13)
  {
    v14 = [(UIViewController *)self->_screeningViewController view];
    [v14 removeFromSuperview];

    v15 = [(iPadAudioCallViewController *)self layoutGuidesProvider];
    [v15 updateMiddleShelfStateWithIsOpen:0];

    [(iPadAudioCallViewController *)self removeChildViewController:self->_screeningViewController];
    [(UIViewController *)self->_screeningViewController didMoveToParentViewController:0];
  }

  screeningViewController = self->_screeningViewController;
  self->_screeningViewController = 0;

  [(iPadAudioCallViewController *)self setMiddleViewState:v11];
  v17 = [(PHCallViewController *)self bottomBar];
  v18 = [v17 currentState];

  v19 = [(PHCallViewController *)self bottomBar];
  [v19 setCurrentState:-1];

  v20 = [(PHCallViewController *)self bottomBar];
  [v20 setCurrentState:v18];
}

- (unint64_t)currentDisplayedPosterSourceForCall:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueProxyIdentifier];

  if (v5)
  {
    v6 = [(iPadAudioCallViewController *)self configurationCache];
    v7 = [v4 uniqueProxyIdentifier];
    v8 = [v6 objectForKey:v7];

    v9 = [v8 source];
  }

  else
  {
    v9 = 0;
  }

  return v9;
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

- (void)suspendPosterAndCancelDelay:(BOOL)a3
{
  v3 = a3;
  v5 = [(iPadAudioCallViewController *)self renderingViewController];

  if (v5)
  {
    v6 = [(iPadAudioCallViewController *)self renderingViewController];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      if (v3)
      {
        v8 = [(iPadAudioCallViewController *)self suspendPosterAfterDelayBlock];

        if (v8)
        {
          v9 = [(iPadAudioCallViewController *)self suspendPosterAfterDelayBlock];
          dispatch_block_cancel(v9);

          [(iPadAudioCallViewController *)self setSuspendPosterAfterDelayBlock:0];
        }
      }

      v10 = [(iPadAudioCallViewController *)self renderingViewController];
      v11 = [v10 renderingMode];

      if (v11 == 2)
      {
        v12 = sub_100004F84();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SNAP: Setting poster renderingMode to .paused", v14, 2u);
        }

        v13 = [(iPadAudioCallViewController *)self renderingViewController];
        [v13 setRenderingMode:1];
      }
    }
  }
}

- (void)setShowsCallWaitingParticipantView:(BOOL)a3
{
  callWaitingParticipantsViewController = self->_callWaitingParticipantsViewController;
  if (a3)
  {
    if (callWaitingParticipantsViewController)
    {
      return;
    }

    v5 = [(iPadAudioCallViewController *)self contactForCall:self->_existingPrioritizedCall];
    v6 = v5;
    if (v5)
    {
      v35 = v5;
      v7 = [NSArray arrayWithObjects:&v35 count:1];
    }

    else
    {
      v7 = &__NSArray0__struct;
    }

    v14 = [PHCallParticipantsViewController alloc];
    v15 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
    v16 = [(iPadAudioCallViewController *)self contactsCache];
    v17 = [(PHCallParticipantsViewController *)v14 initWithCallDisplayStyleManager:v15 contactsCache:v16 contacts:v7];
    v18 = self->_callWaitingParticipantsViewController;
    self->_callWaitingParticipantsViewController = v17;

    [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController setShouldIgnoreUpdates:[(iPadAudioCallViewController *)self participantsViewControllersShouldIgnoreUpdates]];
    [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController setHandlesCallWaitingCalls:1];
    [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController setDelegate:self];
    [(iPadAudioCallViewController *)self addChildViewController:self->_callWaitingParticipantsViewController];
    v19 = [(iPadAudioCallViewController *)self view];
    v20 = [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController view];
    [v19 addSubview:v20];

    v12 = [(PHCallParticipantsViewController *)self->_callParticipantsViewController view];
    v21 = [(PHCallParticipantsViewController *)v12 singleCallLabelView];
    [v21 setPosterNameViewModel:0];

    v13 = [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController view];
    [(iPadAudioCallViewController *)self updatePosterViewModelForParticipantsView:v13];
    [(iPadAudioCallViewController *)self copyCallWaitingConstraintsFromParticipantsView];
    v22 = [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController view];
    [v22 setAlpha:0.0];

    v23 = [(ICSCallDisplayStyleManager *)self->_callDisplayStyleManager callDisplayStyle];
    v24 = [(PHCallParticipantsViewController *)self->_callParticipantsViewController view];
    v25 = v24;
    v26 = 1.0;
    if (v23 == 2)
    {
      v26 = 0.0;
    }

    [v24 setAlpha:v26];

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
    v9 = [(PHCallParticipantsViewController *)v8 view];
    [v9 setAlpha:1.0];

    v10 = [(PHCallParticipantsViewController *)self->_callParticipantsViewController view];
    [v10 setAlpha:1.0];

    v6 = [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController view];
    v11 = [v6 singleCallLabelView];
    [v11 setPosterNameViewModel:0];

    v7 = [(PHCallParticipantsViewController *)self->_callParticipantsViewController view];
    [(iPadAudioCallViewController *)self updatePosterViewModelForParticipantsView:v7];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000E0C0C;
    v31[3] = &unk_100357110;
    v32 = v8;
    v33 = self;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000E0CB4;
    v28[3] = &unk_100356D10;
    v29 = v32;
    v30 = self;
    v12 = v32;
    [UIView animateWithDuration:v31 animations:v28 completion:0.5];

    v13 = v32;
  }
}

- (double)callWaitingAnimationDelay
{
  v2 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([v2 callDisplayStyle])
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
  v3 = [(iPadAudioCallViewController *)self callCenter];
  if ([v3 currentVideoCallCount])
  {

LABEL_8:
    v11 = 9;
    goto LABEL_9;
  }

  v4 = [(iPadAudioCallViewController *)self callCenter];
  v5 = [v4 isHoldAndAnswerAllowed];

  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [(iPadAudioCallViewController *)self callCenter];
  v7 = [v6 callWithStatus:2];
  if (v7)
  {
    v8 = v7;
    v9 = [(iPadAudioCallViewController *)self callCenter];
    v10 = [v9 callWithStatus:1];

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
  v3 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([v3 callDisplayStyle] == 3)
  {
    v4 = [(iPadAudioCallViewController *)self features];
    v5 = [v4 isDominoEnabled];

    if (v5)
    {
      return;
    }
  }

  else
  {
  }

  v6 = [(iPadAudioCallViewController *)self getParticipantsView_Waiting];
  v7 = [(iPadAudioCallViewController *)self getParticipantsView_NotWaiting];
  if (v6)
  {
    v8 = [v6 superview];

    if (v8)
    {
      if (v7)
      {
        [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
        v9 = [(iPadAudioCallViewController *)self callWaitingLayoutConstraints];
        [NSLayoutConstraint deactivateConstraints:v9];

        v29 = [v6 centerYAnchor];
        v28 = [v7 centerYAnchor];
        v27 = [v29 constraintEqualToAnchor:v28];
        v30[0] = v27;
        v26 = [v6 centerXAnchor];
        v25 = [v7 centerXAnchor];
        v24 = [v26 constraintEqualToAnchor:v25];
        v30[1] = v24;
        v23 = [v6 topAnchor];
        v22 = [v7 topAnchor];
        v21 = [v23 constraintEqualToAnchor:v22];
        v30[2] = v21;
        v20 = [v6 bottomAnchor];
        v19 = [v7 bottomAnchor];
        v18 = [v20 constraintEqualToAnchor:v19];
        v30[3] = v18;
        v10 = [v6 leadingAnchor];
        v11 = [v7 leadingAnchor];
        v12 = [v10 constraintEqualToAnchor:v11];
        v30[4] = v12;
        v13 = [v6 trailingAnchor];
        v14 = [v7 trailingAnchor];
        v15 = [v13 constraintEqualToAnchor:v14];
        v30[5] = v15;
        v16 = [NSArray arrayWithObjects:v30 count:6];
        [(iPadAudioCallViewController *)self setCallWaitingLayoutConstraints:v16];

        v17 = [(iPadAudioCallViewController *)self callWaitingLayoutConstraints];
        [NSLayoutConstraint activateConstraints:v17];
      }
    }
  }
}

- (void)applyCallWaitingConstraintsForAmbient
{
  v3 = [(iPadAudioCallViewController *)self getParticipantsView_Waiting];
  if (v3)
  {
    v10 = v3;
    v4 = [v3 superview];
    v3 = v10;
    if (v4)
    {
      v5 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
      if ([v5 callDisplayStyle] == 3)
      {
        v6 = [(iPadAudioCallViewController *)self features];
        v7 = [v6 isDominoEnabled];

        v3 = v10;
        if (!v7)
        {
          goto LABEL_7;
        }

        v8 = [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController view];
        [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

        v4 = [(iPadAudioCallViewController *)self ambientParticipantsViewConstraintsForView:v10 largeAvatar:self->_shouldShowLargeAvatarForCallWaiting];
        v9 = [v4 allValues];
        [(iPadAudioCallViewController *)self setCallWaitingLayoutConstraints:v9];

        v5 = [(iPadAudioCallViewController *)self callWaitingLayoutConstraints];
        [NSLayoutConstraint activateConstraints:v5];
      }

      v3 = v10;
    }
  }

LABEL_7:
}

- (void)audioCallControlsViewControllerRequestedKeypadPresentation:(id)a3
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController: Requested keypad presentation", v5, 2u);
  }

  [(iPadAudioCallViewController *)self setMiddleViewState:2 animated:1];
}

- (void)audioCallControlsViewControllerRequestedKeypadPresentationForFieldMode:(id)a3
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController: Requested keypad presentation for field mode", v6, 2u);
  }

  [(iPadAudioCallViewController *)self setMiddleViewState:2 animated:1];
  v5 = [(iPadAudioCallViewController *)self callParticipantsViewController];
  [v5 setAllowsFieldModeSendButton:1];
}

- (void)audioCallControlsViewControllerRequestedContactsPresentation:(id)a3 forView:(id)a4
{
  v5 = a4;
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
  v14 = self;
  v15 = v5;
  v7 = v5;
  v8 = objc_retainBlock(&v10);
  v9 = [PHInCallUtilities sharedInstance:v10];
  [v9 requestPasscodeUnlockWithCompletion:v8];
}

- (void)audioCallControlsViewControllerRequestedAddCallPresentation:(id)a3 forView:(id)a4
{
  v5 = a4;
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
  v14 = self;
  v15 = v5;
  v7 = v5;
  v8 = objc_retainBlock(&v10);
  v9 = [PHInCallUtilities sharedInstance:v10];
  [v9 requestPasscodeUnlockWithCompletion:v8];
}

- (void)audioCallControlsViewControllerRequestedAudioRoutesPresentation:(id)a3
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController: Requested Audio Route presentation", v5, 2u);
  }

  [(iPadAudioCallViewController *)self revealAudioRoutingDeviceListAnimated:1];
}

- (void)audioCallControlsViewControllerRequestedVideoPresentation:(id)a3
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
  v3 = [v5 delegate];
  v4 = [v3 alertCoordinator];
  [v4 invokeAlertWithRequestUnlock:-[iPadAudioCallViewController alertTriggeredByAutoCountdown](self automaticallyInvoked:{"alertTriggeredByAutoCountdown") ^ 1, -[iPadAudioCallViewController alertTriggeredByAutoCountdown](self, "alertTriggeredByAutoCountdown")}];
}

- (void)audioCallControlsViewControllerRequestedShareMedia
{
  v3 = [(iPadAudioCallViewController *)self features];
  v4 = [v3 isEnhancedEmergencyEnabled];

  if (v4)
  {
    v5 = [(iPadAudioCallViewController *)self emergencyCoordinator];
    [v5 handleMediaUploadButtonTapped];
  }
}

- (void)audioCallControlsViewControllerDidTapRTTButton
{
  v3 = [(iPadAudioCallViewController *)self features];
  if ([v3 isEnhancedEmergencyEnabled] && (-[iPadAudioCallViewController emergencyCoordinator](self, "emergencyCoordinator"), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [(iPadAudioCallViewController *)self emergencyCoordinator];
    v7 = [v6 eedRTTState];

    if (v7 == 3)
    {
      v12 = [(iPadAudioCallViewController *)self emergencyCoordinator];
      [v12 transitionToRTTState:2];
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
  v10 = [(iPadAudioCallViewController *)self activeCall];
  v12 = [v9 viewControllerForCall:v10];

  v11 = [(iPadAudioCallViewController *)self navigationController];
  [v11 pushViewController:v12 animated:1];

LABEL_8:
}

- (void)audioCallControlsViewControllerRequestedMoreMenuFromSourceView:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController: requested more menu presentation", v11, 2u);
  }

  v6 = [(iPadAudioCallViewController *)self activeCall];
  v7 = [(iPadAudioCallViewController *)self contactForCall:v6];

  v8 = +[UIApplication sharedApplication];
  v9 = [v8 delegate];
  v10 = [v9 bannerPresentationManager];
  [(iPadAudioCallViewController *)self presentMoreMenu:v10 contact:v7 source:v4];
}

- (void)audioCallControlsViewControllerRequestedShareCardFromSourceView:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController: requested share card presentation", v9, 2u);
  }

  v6 = +[UIApplication sharedApplication];
  v7 = [v6 delegate];
  v8 = [v7 bannerPresentationManager];
  [(iPadAudioCallViewController *)self presentShareCard:v8 source:v4];
}

- (BOOL)videoStreamingIsGoingOn
{
  v3 = [(iPadAudioCallViewController *)self features];
  if ([v3 isEnhancedEmergencyEnabled])
  {
    v4 = [(iPadAudioCallViewController *)self emergencyCoordinator];
    if (v4)
    {
      v5 = [(iPadAudioCallViewController *)self emergencyCoordinator];
      v6 = [v5 videoStreamingIsOnScreen];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)audioCallControlsViewControllerDidToggleMuteButton:(BOOL)a3
{
  v3 = a3;
  if ([(iPadAudioCallViewController *)self audioCallMutedTalkerIsSupported])
  {
    if (!v3)
    {
      [(iPadAudioCallViewController *)self setDidNotifyMutedCaller:0];
    }

    v5 = [(iPadAudioCallViewController *)self mutedTalkerBannerViewController];
    [v5 updatePillViewWithIsMuted:v3];
  }
}

- (void)audioCallControlsViewControllerDidTapEndButton:(id)a3
{
  if ([(PHCallViewController *)self currentState]== 10)
  {

    [(iPadAudioCallViewController *)self handleCancelPressedInCallBufferScreen];
  }

  else
  {
    v4 = +[UIApplication sharedApplication];
    v5 = [v4 delegate];
    v11 = [v5 mostRecentlyDisconnectedAudioCall];

    if (v11 && [v11 isEmergency])
    {
      v6 = [v11 disconnectedReasonRequiresCallBackUI];
    }

    else
    {
      v6 = 0;
    }

    v7 = [v11 canDisplayAlertUI:{-[iPadAudioCallViewController shouldPresentAlertButton](self, "shouldPresentAlertButton")}];
    if (v6 && v7)
    {
      [(iPadAudioCallViewController *)self setCurrentState:0];
    }

    else
    {
      v8 = [(iPadAudioCallViewController *)self activeCall];
      v9 = [v8 callUUID];
      [(iPadAudioCallViewController *)self setUUIDForLocallyDisconnectedCall:v9];

      v10 = [(iPadAudioCallViewController *)self callCenter];
      [v10 disconnectCurrentCallAndActivateHeld];
    }
  }
}

- (void)audioCallControlsViewControllerRequestedAddCallPresentation:(id)a3
{
  v4 = a3;
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
  v13 = self;
  v14 = v4;
  v6 = v4;
  v7 = objc_retainBlock(&v9);
  v8 = [PHInCallUtilities sharedInstance:v9];
  [v8 requestPasscodeUnlockWithCompletion:v7];
}

- (void)localAudioToggledWithIsMuted:(BOOL)a3
{
  v3 = a3;
  if ([(iPadAudioCallViewController *)self audioCallMutedTalkerIsSupported])
  {
    if (!v3)
    {
      [(iPadAudioCallViewController *)self setDidNotifyMutedCaller:0];
    }

    v5 = [(iPadAudioCallViewController *)self mutedTalkerBannerViewController];
    [v5 updatePillViewWithIsMuted:v3];
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

  v4 = [(iPadAudioCallViewController *)self voiceLoopManager];
  [v4 stopLoopPlayback];
}

- (void)removeContentViewIfNeeded:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if (v4)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000E2598;
      v12[3] = &unk_100356988;
      v13 = v6;
      v8 = objc_retainBlock(v12);
    }

    else
    {
      v8 = 0;
    }

    v9 = [(iPadAudioCallViewController *)self layoutGuidesProvider];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000E25A4;
    v10[3] = &unk_100356988;
    v11 = v7;
    [v9 updateMiddleShelfStateWithIsOpen:0 animation:v8 completion:v10];
  }
}

- (void)setMiddleViewState:(unsigned __int16)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = sub_100004F84();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v102) = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setMiddleViewState: %d", buf, 8u);
  }

  v9 = sub_100004F84();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(iPadAudioCallViewController *)self buttonsViewController];
    [v10 view];
    v97 = v6;
    v12 = v11 = v5;
    v13 = [(iPadAudioCallViewController *)self buttonsViewController];
    v14 = [v13 view];
    [v14 alpha];
    v16 = v15;
    v17 = [(iPadAudioCallViewController *)self buttonsViewController];
    v18 = [v17 view];
    v19 = [v18 superview];
    *buf = 138412802;
    v102 = v12;
    v103 = 2048;
    v104 = v16;
    v105 = 2112;
    v106 = v19;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "current six-up is: %@, six-up view alpha is: %f, six-up view parent view is: %@", buf, 0x20u);

    v5 = v11;
    v6 = v97;
  }

  middleViewState = self->_middleViewState;
  if (middleViewState != v6)
  {
    if (v6 <= 2)
    {
      if (v6)
      {
        if (v6 != 2)
        {
          goto LABEL_29;
        }

        v28 = [(iPadAudioCallViewController *)self view];
        [v28 bounds];
        [(iPadAudioCallViewController *)self showKeypadWithPerviousMiddleState:middleViewState viewSize:v30, v31];
      }

      else
      {
        v28 = [(iPadAudioCallViewController *)self callParticipantsViewController];
        [v28 resetNameOverrideString];
      }

      goto LABEL_28;
    }

    switch(v6)
    {
      case 3:
        v32 = [(iPadAudioCallViewController *)self voiceLoopViewController];
        v33 = [v32 view];
        v34 = [v33 superview];

        if (!v34)
        {
          v35 = [(iPadAudioCallViewController *)self view];
          v36 = [(iPadAudioCallViewController *)self voiceLoopViewController];
          v37 = [v36 view];
          [v35 addSubview:v37];

          v38 = [(iPadAudioCallViewController *)self voiceLoopViewController];
          v39 = [v38 view];
          [v39 setTranslatesAutoresizingMaskIntoConstraints:0];

          v98 = [(iPadAudioCallViewController *)self voiceLoopViewController];
          v96 = [v98 view];
          v94 = [v96 centerXAnchor];
          v95 = [(iPadAudioCallViewController *)self view];
          v93 = [v95 centerXAnchor];
          v92 = [v94 constraintEqualToAnchor:v93];
          v100[0] = v92;
          v91 = [(iPadAudioCallViewController *)self voiceLoopViewController];
          v90 = [v91 view];
          v88 = [v90 leadingAnchor];
          v89 = [(iPadAudioCallViewController *)self view];
          v87 = [v89 leadingAnchor];
          v86 = [v88 constraintEqualToAnchor:v87];
          v100[1] = v86;
          v85 = [(iPadAudioCallViewController *)self voiceLoopViewController];
          v84 = [v85 view];
          v82 = [v84 trailingAnchor];
          v83 = [(iPadAudioCallViewController *)self view];
          v81 = [v83 trailingAnchor];
          v80 = [v82 constraintEqualToAnchor:v81];
          v100[2] = v80;
          v79 = [(iPadAudioCallViewController *)self voiceLoopViewController];
          v78 = [v79 view];
          v76 = [v78 topAnchor];
          v77 = [(iPadAudioCallViewController *)self callParticipantsViewController];
          v75 = [v77 view];
          v74 = [v75 bottomAnchor];
          v73 = [v76 constraintEqualToAnchor:v74];
          v100[3] = v73;
          v72 = [(iPadAudioCallViewController *)self voiceLoopViewController];
          v71 = [v72 view];
          v40 = [v71 bottomAnchor];
          v41 = [(PHCallViewController *)self bottomBar];
          v42 = [v41 topLayoutGuide];
          v43 = [v42 topAnchor];
          [v40 constraintEqualToAnchor:v43];
          v45 = v44 = v5;
          v100[4] = v45;
          v46 = [NSArray arrayWithObjects:v100 count:5];
          [NSLayoutConstraint activateConstraints:v46];

          v5 = v44;
        }

        v47 = [(iPadAudioCallViewController *)self callParticipantsViewController];
        [v47 resetNameOverrideString];

        v48 = [(iPadAudioCallViewController *)self callParticipantsViewController];
        v49 = [v48 view];
        [v49 setNeedsLayout];

        v50 = [(iPadAudioCallViewController *)self callParticipantsViewController];
        v51 = [v50 view];
        [v51 layoutIfNeeded];

        v52 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
        v53 = [v52 callDisplayStyle] != 0;

        v28 = [(PHCallViewController *)self bottomBar];
        [v28 setCurrentState:11 animated:v53 animationCompletionBlock:0];
        goto LABEL_28;
      case 4:
        if ([(iPadAudioCallViewController *)self middleViewState]== 1)
        {
          v5 = 0;
        }

        else
        {
          v5 = v5;
        }

        v54 = [(iPadAudioCallViewController *)self screeningViewController];
        v55 = [v54 view];
        v56 = [v55 superview];

        if (!v56)
        {
          v57 = [(iPadAudioCallViewController *)self view];
          v58 = [(iPadAudioCallViewController *)self screeningViewController];
          v59 = [v58 view];
          [v57 addSubview:v59];

          v60 = [(iPadAudioCallViewController *)self screeningViewController];
          v61 = [v60 view];
          [(iPadAudioCallViewController *)self setupMiddleContentView:v61];

          v62 = [(iPadAudioCallViewController *)self screeningViewController];
          [(iPadAudioCallViewController *)self updateScreeningTextFieldContainer:v62];

          v63 = [(iPadAudioCallViewController *)self screeningViewController];
          [v63 didMoveToParentViewController:self];
        }

LABEL_32:
        waitOnHoldViewController = self->_waitOnHoldViewController;
        if (waitOnHoldViewController)
        {
          v68 = [(UIViewController *)waitOnHoldViewController view];
          [(iPadAudioCallViewController *)self removeContentViewIfNeeded:v68 animated:v5];

          v69 = self->_waitOnHoldViewController;
          self->_waitOnHoldViewController = 0;
        }

LABEL_34:
        self->_middleViewState = v6;
        [(iPadAudioCallViewController *)self refreshUseRTTButton];
        [(iPadAudioCallViewController *)self refreshExtensionNumberButton];
        [(iPadAudioCallViewController *)self hideOrShowScreeningBackgroundView];
        v70 = [(iPadAudioCallViewController *)self frontmostCall];
        [(iPadAudioCallViewController *)self updateWaitOnHoldServiceWithCall:v70];

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
        v21 = [(iPadAudioCallViewController *)self waitOnHoldViewController];

        if (!v21)
        {
          v28 = sub_100004F84();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[WARN] WaitOnHoldViewController was unexpectedly nil, cannot show WaitOnHold middle view state.", buf, 2u);
          }

          goto LABEL_28;
        }

        if ([(iPadAudioCallViewController *)self middleViewState]== 1)
        {
          v5 = 0;
        }

        else
        {
          v5 = v5;
        }

        v22 = [(iPadAudioCallViewController *)self waitOnHoldViewController];
        v23 = [v22 view];
        v24 = [v23 superview];

        if (!v24)
        {
          v25 = [(iPadAudioCallViewController *)self view];
          v26 = [(iPadAudioCallViewController *)self waitOnHoldViewController];
          v27 = [v26 view];
          [v25 addSubview:v27];

          v28 = [(iPadAudioCallViewController *)self waitOnHoldViewController];
          v29 = [v28 view];
          [(iPadAudioCallViewController *)self setupMiddleContentView:v29 flexibleConstraints:1 bottomPadding:-20.0];

LABEL_28:
        }

        break;
    }

LABEL_29:
    screeningViewController = self->_screeningViewController;
    if (screeningViewController)
    {
      v65 = [(UIViewController *)screeningViewController view];
      [(iPadAudioCallViewController *)self removeContentViewIfNeeded:v65 animated:v5];

      [(iPadAudioCallViewController *)self removeChildViewController:self->_screeningViewController];
      [(UIViewController *)self->_screeningViewController didMoveToParentViewController:0];
      v66 = self->_screeningViewController;
      self->_screeningViewController = 0;
    }

    if (v6 == 5)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }
}

- (void)updateBottomShelfWithMiddleViewState:(unsigned __int16)a3 callDisplayStyle:(int64_t)a4
{
  if (a4)
  {
    if (a3 == 1)
    {
      [(iPadAudioCallViewController *)self updateBottomShelfState:1];
    }

    else if (a3 != 2)
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
  v3 = [(iPadAudioCallViewController *)self heldCallControlsView];
  [v3 removeFromSuperview];

  [(iPadAudioCallViewController *)self setHeldCallControlsView:0];

  [(iPadAudioCallViewController *)self setupHeldCallControlsViewIfNeeded];
}

- (void)setupHeldCallControlsViewIfNeeded
{
  v3 = [(iPadAudioCallViewController *)self heldCallControlsView];

  if (!v3)
  {
    v4 = [(iPadAudioCallViewController *)self callCenter];
    v5 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
    v6 = -[iPadAudioCallViewController makeHeldCallControlsViewWithCallCenter:style:](self, "makeHeldCallControlsViewWithCallCenter:style:", v4, [v5 callDisplayStyle]);
    [(iPadAudioCallViewController *)self setHeldCallControlsView:v6];

    v7 = [(iPadAudioCallViewController *)self heldCallControlsView];

    if (v7)
    {
      v8 = [(iPadAudioCallViewController *)self view];
      v9 = [(iPadAudioCallViewController *)self heldCallControlsView];
      [v8 addSubview:v9];

      v10 = [(iPadAudioCallViewController *)self heldCallControlsView];
      [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

      v29 = [(iPadAudioCallViewController *)self heldCallControlsView];
      v27 = [v29 leadingAnchor];
      v28 = [(iPadAudioCallViewController *)self view];
      v26 = [v28 layoutMarginsGuide];
      v25 = [v26 leadingAnchor];
      v24 = [v27 constraintEqualToAnchor:v25];
      v30[0] = v24;
      v23 = [(iPadAudioCallViewController *)self heldCallControlsView];
      v21 = [v23 trailingAnchor];
      v22 = [(iPadAudioCallViewController *)self view];
      v11 = [v22 layoutMarginsGuide];
      v12 = [v11 trailingAnchor];
      v13 = [v21 constraintEqualToAnchor:v12];
      v30[1] = v13;
      v14 = [(iPadAudioCallViewController *)self heldCallControlsView];
      v15 = [v14 bottomAnchor];
      v16 = [(iPadAudioCallViewController *)self view];
      v17 = [v16 safeAreaLayoutGuide];
      v18 = [v17 bottomAnchor];
      v19 = [v15 constraintEqualToAnchor:v18];
      v30[2] = v19;
      v20 = [NSArray arrayWithObjects:v30 count:3];
      [NSLayoutConstraint activateConstraints:v20];
    }
  }
}

- (void)updateShareNameAndPhotoHUDPresentationIfNeeded
{
  v3 = [(iPadAudioCallViewController *)self features];
  v4 = [v3 isNameAndPhotoC3Enabled];

  if (v4 && ([(PHCallViewController *)self currentState]== 4 || [(PHCallViewController *)self currentState]== 5))
  {
    v5 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
    v6 = [v5 callDisplayStyle];

    if (v6 == 2)
    {
      v10 = +[UIApplication sharedApplication];
      v7 = [v10 delegate];
      v8 = [v7 bannerPresentationManager];
      v9 = [(iPadAudioCallViewController *)self callCenter];
      [(iPadAudioCallViewController *)self showNameAndPhotoHUDIfNecessaryWithBannerPresentationManager:v8 callCenter:v9];
    }
  }
}

- (PHAudioCallControlsViewController)buttonsViewController
{
  buttonsViewController = self->_buttonsViewController;
  if (!buttonsViewController)
  {
    v4 = [PHAudioCallControlsViewController alloc];
    v5 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
    v6 = [(PHAudioCallControlsViewController *)v4 initWithCallDisplayStyleManager:v5];
    v7 = self->_buttonsViewController;
    self->_buttonsViewController = v6;

    [(iPadAudioCallViewController *)self addChildViewController:self->_buttonsViewController];
    [(PHAudioCallControlsViewController *)self->_buttonsViewController setDelegate:self];
    v8 = [(PHAudioCallControlsViewController *)self->_buttonsViewController view];
    [v8 updateBackgroundMaterial:1];

    buttonsViewController = self->_buttonsViewController;
  }

  return buttonsViewController;
}

- (UIViewController)screeningViewController
{
  screeningViewController = self->_screeningViewController;
  if (!screeningViewController)
  {
    v4 = [(iPadAudioCallViewController *)self featureFlags];
    if ([v4 receptionistEnabled])
    {
      [(iPadAudioCallViewController *)self setIsShowingNewTranscriptsView:1];
    }

    else
    {
      v5 = [(iPadAudioCallViewController *)self featureFlags];
      -[iPadAudioCallViewController setIsShowingNewTranscriptsView:](self, "setIsShowingNewTranscriptsView:", [v5 LVMEverywhere]);
    }

    v6 = [(iPadAudioCallViewController *)self isShowingNewTranscriptsView];
    v7 = [(CNKTranscriptionViewComposerFactory *)self->_screeningViewControllerFactory makeViewComposer];
    v8 = [(iPadAudioCallViewController *)self frontmostCall];
    if (v6)
    {
      v9 = [v7 composeWithCall:v8 createTextField:1 liveReply:{-[iPadAudioCallViewController sendToLiveReply](self, "sendToLiveReply")}];
      v10 = self->_screeningViewController;
      self->_screeningViewController = v9;

      [(iPadAudioCallViewController *)self setSendToLiveReply:0];
    }

    else
    {
      v11 = [v7 composeWithCall:v8];
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
    v5 = [(iPadAudioCallViewController *)self frontmostCall];
    v6 = [[PHAudioCallControlsSupplementalButton alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v7 = self->_useRTTButton;
    self->_useRTTButton = v6;

    v8 = [v5 localSenderIdentityUUID];
    v9 = [v4 rttDisplayName:0 forSubscriptionContextUUID:v8];

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

- (void)bottomBarActionPerformed:(int64_t)a3 withCompletionState:(int64_t)a4 fromBar:(id)a5
{
  v7 = a5;
  v8 = [(PHCallViewController *)self bottomBar];

  if (v8 == v7)
  {
    [(iPadAudioCallViewController *)self performBottomBarActionType:a3];
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
  v5 = [NSNumber numberWithInteger:4];
  v6 = [NSNumber numberWithInteger:6];
  v7 = [NSNumber numberWithInteger:5];
  v8 = [NSNumber numberWithInteger:1];
  v9 = [NSNumber numberWithInteger:3];
  v10 = [NSArray arrayWithObjects:v5, v6, v7, v8, v9, 0];

  v11 = [NSNumber numberWithInteger:a3];
  LODWORD(v6) = [v10 containsObject:v11];

  if (v6)
  {
    v12 = +[TUCallCenter sharedInstance];
    v13 = [v12 callsPassingTest:&stru_100359210];
    v14 = [v13 firstObject];

    if (v14 && !self->_shouldIgnoreWaitOnHoldSessionState)
    {
      v131[0] = _NSConcreteStackBlock;
      v131[1] = 3221225472;
      v131[2] = sub_1000E4E94;
      v131[3] = &unk_100359238;
      v131[4] = self;
      v131[5] = a3;
      v18 = objc_retainBlock(v131);
      v19 = [v14 displayName];
      [(iPadAudioCallViewController *)self presentWaitOnHoldEndForAnotherCallAlertWithCallerName:v19 completionHandler:v18];

      goto LABEL_104;
    }
  }

  v15 = sub_100004F84();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(PHCallViewController *)self bottomBar];
    v17 = [v16 nameForActionType:a3];
    *buf = 138412290;
    v133 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "BottomBarActionPerformed: %@", buf, 0xCu);
  }

  switch(a3)
  {
    case 1:
      goto LABEL_32;
    case 2:
      v53 = [(iPadAudioCallViewController *)self inCallRootViewController];
      [v53 requestInCallSceneTransitionToFullScreen];

LABEL_32:
      v42 = [(iPadAudioCallViewController *)self frontmostCall];
      if ([v42 wantsHoldMusic])
      {
        [v42 resetWantsHoldMusic];
        [(iPadAudioCallViewController *)self updateCurrentState];
      }

      else
      {
        v88 = [(iPadAudioCallViewController *)self callCenter];
        v89 = [v88 screeningCall];

        if ([(iPadAudioCallViewController *)self usesCompactMulticallUI])
        {
          v90 = [(iPadAudioCallViewController *)self prioritizedCall];
          v91 = [v89 isEqualToCall:v90];

          v92 = v91 ^ 1;
        }

        else
        {
          v92 = 0;
        }

        if (!v89 || (v92 & 1) != 0)
        {
          v105 = [(iPadAudioCallViewController *)self callCenter];
          v103 = [v105 incomingCall];

          v106 = sub_100004F84();
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v133 = v103;
            _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "Answering incoming call: %@", buf, 0xCu);
          }

          if (-[iPadAudioCallViewController usesCompactMulticallUI](self, "usesCompactMulticallUI") && (-[iPadAudioCallViewController callCenter](self, "callCenter"), v107 = objc_claimAutoreleasedReturnValue(), [v107 currentCallGroups], v108 = objc_claimAutoreleasedReturnValue(), v109 = objc_msgSend(v108, "count") > 1, v108, v107, v109))
          {
            v104 = [(iPadAudioCallViewController *)self answerRequestForCall:v103];
            v110 = [(iPadAudioCallViewController *)self callCenter];
            v111 = v110;
            if (v89)
            {
              [v110 endActiveOrHeldAndAnswerWithRequest:v104];
            }

            else
            {
              [v110 holdActiveAndAnswerWithRequest:v104];
            }

            v123 = [(iPadAudioCallViewController *)self analyticsReporter];
            [v123 reportMultipleCallsWaitingUIAction:3];
          }

          else
          {
            v104 = [(iPadAudioCallViewController *)self callCenter];
            v123 = [(iPadAudioCallViewController *)self answerRequestForCall:v103];
            [v104 answerWithRequest:v123];
          }
        }

        else
        {
          v102 = sub_100004F84();
          if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v133 = v89;
            _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "Answering screened call: %@", buf, 0xCu);
          }

          v103 = [(iPadAudioCallViewController *)self answerRequestForCall:v89];
          [v103 setBehavior:4];
          v104 = [(iPadAudioCallViewController *)self callCenter];
          [v104 answerWithRequest:v103];
        }
      }

      goto LABEL_103;
    case 4:
      v68 = [(iPadAudioCallViewController *)self callCenter];
      v69 = [v68 incomingCall];
      v70 = [(iPadAudioCallViewController *)self answerRequestForCall:v69];

      v71 = [(iPadAudioCallViewController *)self callCenter];
      v72 = [v71 activeVideoCall];

      v73 = [(iPadAudioCallViewController *)self callCenter];
      v74 = v73;
      if (v72)
      {
        [v73 endActiveOrHeldAndAnswerWithRequest:v70];
      }

      else
      {
        v119 = [v73 isEndAndAnswerAllowed];

        v120 = sub_100004F84();
        v121 = os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT);
        if (v119)
        {
          if (v121)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "BottomBar: Ending active and answering incoming call", buf, 2u);
          }

          v122 = [(iPadAudioCallViewController *)self callCenter];
          [v122 endActiveOrHeldAndAnswerWithRequest:v70];
        }

        else
        {
          if (v121)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "BottomBar: Disconnecting all calls", buf, 2u);
          }

          v122 = [(iPadAudioCallViewController *)self callCenter];
          [v122 disconnectAllCalls];
        }

        v74 = [(iPadAudioCallViewController *)self analyticsReporter];
        [v74 reportMultipleCallsWaitingUIAction:2];
      }

      break;
    case 5:
      v44 = [(iPadAudioCallViewController *)self callCenter];
      v45 = [(iPadAudioCallViewController *)self callCenter];
      v46 = [v45 incomingCall];
      v47 = [(iPadAudioCallViewController *)self answerRequestForCall:v46];
      [v44 endHeldAndAnswerWithRequest:v47];

      break;
    case 6:
      v48 = [(iPadAudioCallViewController *)self callCenter];
      v49 = [(iPadAudioCallViewController *)self callCenter];
      v50 = [v49 incomingCall];
      v51 = [(iPadAudioCallViewController *)self answerRequestForCall:v50];
      [v48 holdActiveAndAnswerWithRequest:v51];

      v52 = [(iPadAudioCallViewController *)self analyticsReporter];
      [v52 reportMultipleCallsWaitingUIAction:3];

      break;
    case 7:
      v75 = [(iPadAudioCallViewController *)self declineCallService];
      [v75 declineAnsweringFrontMostCallViaUserActionWithCompletionHandler:&stru_100359258];

      break;
    case 10:
      v40 = [(iPadAudioCallViewController *)self frontmostCall];
      v41 = [v40 handle];
      [(iPadAudioCallViewController *)self showBlockAlertForHandle:v41];

      break;
    case 11:
      v42 = [(iPadAudioCallViewController *)self frontmostCall];
      if (v42)
      {
        if ([(PHCallViewController *)self currentState]== 11 || [(PHCallViewController *)self currentState]== 12)
        {
          [(iPadAudioCallViewController *)self setMiddleViewState:0];
        }

        if ([(iPadAudioCallViewController *)self isCallSmartHoldingSessionActive:v42])
        {
          [(iPadAudioCallViewController *)self endWaitOnHoldSession];
        }

        v43 = [(iPadAudioCallViewController *)self callCenter];
        [v43 disconnectCall:v42 withReason:2];
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
      v81 = [(iPadAudioCallViewController *)self callCenter];
      [v81 disconnectAllCalls];

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
      v77 = [v76 delegate];
      v78 = [v77 mostRecentlyDisconnectedAudioCall];

      if (v78)
      {
        v79 = [(iPadAudioCallViewController *)self callCenter];
        v80 = [v78 dialRequestForRedial];
        [v79 launchAppForDialRequest:v80 completion:0];
      }

      else
      {
        v79 = sub_100004F84();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          sub_1002565D8();
        }
      }

      goto LABEL_98;
    case 22:
      v33 = [(iPadAudioCallViewController *)self callCenter];
      v34 = [v33 routeController];
      v35 = [v34 areAuxiliaryRoutesAvailable];

      if (v35)
      {
        v36 = +[UIApplication sharedApplication];
        v37 = [v36 delegate];
        v38 = [v37 currentInCallScene];
        [v38 requestTransitionToPresentationMode:2 shouldDismissCMASAlerts:0 analyticsSource:@"iPadSBSUIInCallTransitionAnalyticsSourceAudioRouteButtonPress"];

        [(iPadAudioCallViewController *)self setWaitingForFullScreenAudioRoutes:1];
      }

      else
      {
        v93 = [(iPadAudioCallViewController *)self callCenter];
        v94 = [v93 routeController];
        v95 = [v94 pickedRoute];
        v96 = [v95 isSpeaker];

        v97 = [(iPadAudioCallViewController *)self callCenter];
        v98 = [v97 routeController];
        v99 = v98;
        if (v96)
        {
          v78 = [v98 routeForSpeakerDisable];

          if (v78)
          {
            v100 = [(iPadAudioCallViewController *)self callCenter];
            v101 = [v100 routeController];
            [v101 pickRoute:v78];

            v79 = [(iPadAudioCallViewController *)self callParticipantsViewController];
            [v79 setBannerAudioRouteButtonSelected:0];
          }

          else
          {
            v79 = sub_100004F84();
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find available route to pick for speaker disable", buf, 2u);
            }
          }
        }

        else
        {
          v78 = [v98 routeForSpeakerEnable];

          if (v78)
          {
            v124 = [(iPadAudioCallViewController *)self callCenter];
            v125 = [v124 routeController];
            [v125 pickRoute:v78];

            v79 = [(iPadAudioCallViewController *)self callParticipantsViewController];
            [v79 setBannerAudioRouteButtonSelected:1];
          }

          else
          {
            v79 = sub_100004F84();
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find available route to pick for speaker enable", buf, 2u);
            }
          }
        }

LABEL_98:
      }

      break;
    case 23:
      v39 = [(iPadAudioCallViewController *)self frontmostCall];
      [v39 sendHardPauseDigits];

      break;
    case 24:
      v65 = [(iPadAudioCallViewController *)self callCenter];
      v66 = [v65 currentCallCount] > 1;

      if (v66)
      {
        v67 = [(iPadAudioCallViewController *)self analyticsReporter];
        [v67 reportMultipleCallsWaitingUIAction:4];
      }

      goto LABEL_39;
    case 25:
      v54 = [(iPadAudioCallViewController *)self featureFlags];
      v55 = TUCallScreeningEnabledM3();

      if (!v55)
      {
        break;
      }

      if (-[iPadAudioCallViewController usesCompactMulticallUI](self, "usesCompactMulticallUI") && (-[iPadAudioCallViewController callCenter](self, "callCenter"), v56 = objc_claimAutoreleasedReturnValue(), [v56 currentCallGroups], v57 = objc_claimAutoreleasedReturnValue(), v58 = objc_msgSend(v57, "count") > 1, v57, v56, v58))
      {
        v59 = [(iPadAudioCallViewController *)self callCenter];
        v60 = [v59 currentCallCount] > 1;

        if (v60)
        {
          v61 = [(iPadAudioCallViewController *)self analyticsReporter];
          [v61 reportMultipleCallsWaitingUIAction:4];
        }

LABEL_39:
        v62 = [(iPadAudioCallViewController *)self callCenter];
        v63 = [(iPadAudioCallViewController *)self callCenter];
        v64 = [v63 incomingCall];
        [v62 disconnectCall:v64 withReason:2];
      }

      else
      {
        v112 = sub_100004F84();
        if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
        {
          v113 = [(iPadAudioCallViewController *)self frontmostCall];
          *buf = 138412290;
          v133 = v113;
          _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "Answering screened call: %@", buf, 0xCu);
        }

        v114 = [(iPadAudioCallViewController *)self frontmostCall];
        if (v114)
        {
          v115 = +[UIApplication sharedApplication];
          v116 = [v115 delegate];
          v117 = [v116 answeringMachine];
          v118 = [v114 callUUID];
          [v117 screenCallWithUUID:v118 manualScreening:1 completion:&stru_100359278];
        }
      }

      break;
    case 26:
      v84 = [(iPadAudioCallViewController *)self featureFlags];
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
      v82 = [(iPadAudioCallViewController *)self callCenter];
      v83 = [(iPadAudioCallViewController *)self frontmostCall];
      [v82 setTTYType:1 forCall:v83];

      break;
    case 35:
      v20 = +[UIApplication sharedApplication];
      v21 = [v20 delegate];
      v22 = [v21 mostRecentlyDisconnectedAudioCall];

      objc_initWeak(buf, self);
      v23 = [(iPadAudioCallViewController *)self inCallRootViewController];
      v129[0] = _NSConcreteStackBlock;
      v129[1] = 3221225472;
      v129[2] = sub_1000E4F94;
      v129[3] = &unk_100356E98;
      objc_copyWeak(&v130, buf);
      [v23 presentBlockAndReportAlertToBlockCall:v22 forViewController:self completion:v129];

      objc_destroyWeak(&v130);
      objc_destroyWeak(buf);

      break;
    case 36:
      v25 = +[UIApplication sharedApplication];
      v26 = [v25 delegate];
      v27 = [v26 mostRecentlyDisconnectedAudioCall];

      v28 = [(iPadAudioCallViewController *)self inCallRootViewController];
      v29 = [v27 handle];
      [v28 presentCreateContactViewControllerWithHandle:v29 forViewController:self];

      break;
    case 38:
      v30 = +[UIApplication sharedApplication];
      v31 = [v30 delegate];
      v32 = [v31 alertCoordinator];
      [v32 invokeAlertWithRequestUnlock:-[iPadAudioCallViewController alertTriggeredByAutoCountdown](self automaticallyInvoked:{"alertTriggeredByAutoCountdown") ^ 1, -[iPadAudioCallViewController alertTriggeredByAutoCountdown](self, "alertTriggeredByAutoCountdown")}];

      break;
    case 39:
LABEL_11:
      v24 = [(iPadAudioCallViewController *)self callCenter];
      [v24 disconnectCurrentCallAndActivateHeld];

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
  v2 = [(iPadAudioCallViewController *)self frontmostCall];
  if ([v2 isRTT])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isTTY];
  }

  return v3;
}

- (BOOL)shouldShowUseRTT
{
  v3 = [(iPadAudioCallViewController *)self callCenter];
  v4 = [v3 currentCallCount];

  if (v4 != 1)
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Multiple calls are currently active; Use RTT button should not be presented.", &v13, 2u);
    }

    goto LABEL_17;
  }

  v5 = [(iPadAudioCallViewController *)self frontmostCall];
  if (([v5 isRTT]& 1) != 0 || ([v5 isTTY]& 1) != 0 || ![v5 supportsTTYWithVoice]|| [v5 status]!= 1)
  {
LABEL_17:
    LOBYTE(v9) = 0;
    goto LABEL_18;
  }

  v6 = [v5 localSenderIdentityUUID];
  if (!v6)
  {
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Could not retrieve a sender identity UUID from the frontmost call %@; checking if RTT is available anyway.", &v13, 0xCu);
    }
  }

  v8 = [(PHCallViewController *)self senderIdentityClient];
  v9 = [v8 isRTTAvailableForSenderIdentityUUID:v6];

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
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Determined that the Use RTT button %@ be presented for the frontmost call %@.", &v13, 0x16u);
  }

LABEL_18:
  return v9;
}

- (BOOL)shouldShowCallTransfer
{
  v3 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([v3 callDisplayStyle] != 3)
  {

LABEL_5:
    v7 = [(iPadAudioCallViewController *)self callCenter];
    v8 = [v7 callsPassingTest:&stru_1003592B8];

    if ([v8 count] == 2)
    {
      v9 = [v8 objectAtIndexedSubscript:0];
      if ([v9 isConferenced])
      {
      }

      else
      {
        v10 = [v8 objectAtIndexedSubscript:0];
        v11 = [v10 provider];
        v12 = [v11 identifier];
        v13 = [v8 objectAtIndexedSubscript:1];
        v14 = [v13 provider];
        v15 = [v14 identifier];

        if (v12 == v15)
        {
          v17 = [v8 firstObject];
          v18 = [PHInCallUtilities contactStoreForCall:v17];

          v19 = [CNPhoneNumber phoneNumberWithStringValue:@"4"];
          v20 = [CNContact predicateForContactMatchingPhoneNumber:v19];

          v38 = CNPhoneNumberStringValueKey;
          v21 = [NSArray arrayWithObjects:&v38 count:1];
          v31 = 0;
          v22 = [v18 unifiedContactsMatchingPredicate:v20 keysToFetch:v21 error:&v31];
          v23 = v31;

          v24 = [v8 firstObject];
          v25 = [v24 localSenderIdentity];
          v26 = [v25 accountUUID];
          v27 = [v26 UUIDString];
          v28 = [PHInCallUIUtilities isExplicitTransferSupportedForSubscriptionLabelIdentifier:v27];

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

  v4 = [(iPadAudioCallViewController *)self features];
  v5 = [v4 isDominoEnabled];

  if ((v5 & 1) == 0)
  {
    goto LABEL_5;
  }

  v6 = 0;
  return v6 & 1;
}

- (id)customizedTitleForItemInBar:(id)a3 withActionType:(int64_t)a4
{
  v6 = a3;
  v7 = [(PHCallViewController *)self bottomBar];

  v8 = 0;
  if (a4 == 23 && v7 == v6)
  {
    v9 = [(iPadAudioCallViewController *)self frontmostCall];
    if ([v9 hardPauseDigitsState] == 2)
    {
      v8 = [v9 hardPauseDigitsDisplayString];
    }

    else
    {
      v8 = &stru_100361FD0;
    }
  }

  return v8;
}

- (int64_t)bottomBarCallStateInBar:(id)a3
{
  v3 = [(iPadAudioCallViewController *)self callCenter];
  v4 = [v3 bottomBarCallState];

  return v4;
}

- (void)showBlockAlertForHandle:(id)a3
{
  v4 = a3;
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
  v10 = v4;
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

- (void)showStopAlertForCall:(id)a3
{
  v4 = a3;
  v5 = [(iPadAudioCallViewController *)self features];
  v6 = [v5 lvm_stopEnabled];

  if (v6)
  {
    v7 = [v4 handle];
    if (v4 && (-[iPadAudioCallViewController features](self, "features"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 lvm_endCallImmediately], v8, v9))
    {
      v10 = [[_TtC13InCallService11PHAssertion alloc] initWithReason:@"PHAudioCallViewControllerDismissalAssertionPresentingBlockFlow"];
      if ([(PHCallViewController *)self currentState]== 11)
      {
        [(iPadAudioCallViewController *)self setMiddleViewState:0];
      }

      v11 = [(iPadAudioCallViewController *)self callCenter];
      [v11 disconnectCall:v4 withReason:2];
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
    v17 = v7;
    v34 = v17;
    v35 = self;
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
    v29 = self;
    v22 = v18;
    v30 = v22;
    v23 = v17;
    v31 = v23;
    v24 = [UIAlertAction actionWithTitle:v21 style:1 handler:&v25];
    [v14 addAction:{v24, v25, v26, v27, v28, v29}];

    [(iPadAudioCallViewController *)self presentViewController:v14 animated:1 completion:0];
    objc_destroyWeak(&v32);

    objc_destroyWeak(&v37);
    objc_destroyWeak(location);
  }
}

- (id)answerRequestForCall:(id)a3
{
  v4 = a3;
  v5 = [[TUAnswerRequest alloc] initWithCall:v4];

  v6 = [(iPadAudioCallViewController *)self callCenter];
  v7 = [v6 routeController];
  v8 = [v7 pickedRoute];

  v9 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([v9 callDisplayStyle] != 3)
  {

    goto LABEL_9;
  }

  v10 = [(iPadAudioCallViewController *)self features];
  v11 = [v10 isDominoEnabled];
  if (!v11 || !v8)
  {

    if (!v11)
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

  v13 = [(iPadAudioCallViewController *)self isPickedRouteReceiver];

  if (v13)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v5;
}

- (void)gameControllerDidChangeContext
{
  v2 = [(iPadAudioCallViewController *)self callParticipantsViewController];
  [v2 gameControllerDidChangeContext];
}

- (void)_leaveMessage
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 delegate];
  v5 = [v4 mostRecentlyDisconnectedAudioCall];

  v6 = [(iPadAudioCallViewController *)self featureFlags];
  LODWORD(v4) = TUCallScreeningEnabled();

  if (v4 && !v5)
  {
    v7 = [(iPadAudioCallViewController *)self callCenter];
    v5 = [v7 screeningCall];
  }

  v8 = [v5 handle];
  v9 = [v8 value];

  v10 = sub_100004F84();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = v5;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Call %@; Destination ID %@", &v16, 0x16u);
  }

  if ([v9 destinationIdIsPhoneNumber])
  {
    v11 = CPPhoneNumberCopyCountryCodeForIncomingTextMessage();
    if (!v11)
    {
      v11 = TUActiveCountryCode();
    }

    v12 = TUNetworkCountryCode();
    v13 = TUNumberToDial();

    v9 = v13;
  }

  if (v9 && [v9 length])
  {
    v14 = objc_alloc_init(MFMessageComposeViewController);
    v15 = [NSArray arrayWithObject:v9];
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
    v4 = [v3 userInterfaceIdiom];

    v5 = v4 == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4
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
  v2 = [(iPadAudioCallViewController *)self callCenter];
  v3 = [v2 incomingCall];
  v4 = v3 == 0;

  return v4;
}

- (BOOL)allowsBanners
{
  v2 = [(iPadAudioCallViewController *)self callCenter];
  v3 = [v2 incomingCall];
  v4 = v3 == 0;

  return v4;
}

- (BOOL)desiresLockButtonEvents
{
  v2 = self;
  v3 = [(iPadAudioCallViewController *)self callCenter];
  LOBYTE(v2) = [(iPadAudioCallViewController *)v2 desiresLockButtonEventsForCallContainer:v3];

  return v2;
}

- (BOOL)desiresLockButtonEventsForCallContainer:(id)a3
{
  v4 = a3;
  v5 = [v4 incomingCall];
  if (v5 || [v4 currentCallCount] && -[iPadAudioCallViewController isPickedRouteReceiver](self, "isPickedRouteReceiver"))
  {
    v6 = 1;
  }

  else
  {
    v7 = [(iPadAudioCallViewController *)self features];
    if ([v7 lvmEverywhereEnabled])
    {
      v8 = [v4 screeningCall];
      v6 = v8 != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)setPrioritizedCall:(id)a3
{
  [(iPadAudioCallViewController *)self updateCurrentState];
  v4 = [(iPadAudioCallViewController *)self callToUseForWallpaper];
  WeakRetained = objc_loadWeakRetained(&self->_prioritizedCall);
  -[iPadAudioCallViewController setCallForBackgroundImage:animated:callDisplayStyleChanged:](self, "setCallForBackgroundImage:animated:callDisplayStyleChanged:", v4, 1, [WeakRetained status] == 4);

  v6 = [(PHCallViewController *)self currentState];

  [(iPadAudioCallViewController *)self _updatePosterStatusLabelForState:v6];
}

- (TUCall)activeCall
{
  if ([(iPadAudioCallViewController *)self usesCompactMulticallUI]&& ([(iPadAudioCallViewController *)self prioritizedCall], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(iPadAudioCallViewController *)self prioritizedCall];
  }

  else
  {
    v5 = [(iPadAudioCallViewController *)self callCenter];
    v4 = [v5 callWithStatus:1];

    if (!v4)
    {
      v6 = [(iPadAudioCallViewController *)self callCenter];
      v4 = [v6 callWithStatus:4];

      if (!v4)
      {
        v7 = [(iPadAudioCallViewController *)self callCenter];
        v4 = [v7 callWithStatus:3];

        if (!v4)
        {
          v8 = [(iPadAudioCallViewController *)self callCenter];
          v4 = [v8 callWithStatus:2];
        }
      }
    }
  }

  return v4;
}

- (TUCall)frontmostCall
{
  if ([(iPadAudioCallViewController *)self usesCompactMulticallUI])
  {
    v3 = [(iPadAudioCallViewController *)self activeCall];
  }

  else
  {
    v4 = [(iPadAudioCallViewController *)self callCenter];
    v3 = [v4 frontmostCall];
  }

  return v3;
}

- (void)hardwareButtonEventNotification:(id)a3
{
  v5 = a3;
  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 userInfo];
    v33 = 138412290;
    *v34 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController received a hardware button event (%@)", &v33, 0xCu);
  }

  v8 = [(iPadAudioCallViewController *)self activeCall];
  if (([v8 isRTT] & 1) != 0 || objc_msgSend(v8, "isTTY"))
  {
    v9 = sub_10014265C();
    isKindOfClass = v9;
    if (v9)
    {
      v11 = [(iPadAudioCallViewController *)self navigationController];
      v12 = [v11 visibleViewController];
      isKindOfClass = objc_opt_isKindOfClass();

      v3 = sub_100004F84();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v33 = 67109120;
        *v34 = isKindOfClass & 1;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "setting isShowingRTTConversationViewController: %d", &v33, 8u);
      }
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  v13 = [(iPadAudioCallViewController *)self isViewLoaded];
  v14 = v13;
  if (v13)
  {
    v3 = [(iPadAudioCallViewController *)self view];
    v15 = [v3 window];
    if ((v15 != 0) | isKindOfClass & 1)
    {

      goto LABEL_19;
    }
  }

  else if (isKindOfClass)
  {
    goto LABEL_19;
  }

  v16 = [(iPadAudioCallViewController *)self inCallRootViewController];
  v17 = [v16 isDisplayStyleMiniWindow];

  if (v14)
  {

    if ((v17 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_19:
    v22 = [v5 userInfo];
    v18 = [v22 valueForKey:@"kPHHardwareButtonEventType"];

    v23 = [(iPadAudioCallViewController *)self callCenter];
    v24 = [v23 incomingCall];

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

        [v24 suppressRingtone];
        goto LABEL_35;
      }

      if (v18 == @"kPHHardwareButtonEventTypeHeadsetButton")
      {
        v30 = sub_100004F84();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [(iPadAudioCallViewController *)self callCenter];
          v32 = [v31 incomingCall];
          v33 = 138412546;
          *v34 = v32;
          *&v34[8] = 2112;
          v35 = v8;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController handling kPHHardwareButtonEventTypeHeadsetButton buttonType (incoming call = %@, active call = %@)", &v33, 0x16u);
        }

        v28 = [(iPadAudioCallViewController *)self callCenter];
        [v28 handleActionForWiredHeadsetMiddleButtonPress];
        goto LABEL_34;
      }

      if (v18 == @"kPHHardwareButtonEventTypeHeadsetButtonLongPress")
      {
        v25 = sub_100004F84();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [(iPadAudioCallViewController *)self callCenter];
          v27 = [v26 incomingCall];
          v33 = 138412290;
          *v34 = v27;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController handling kPHHardwareButtonEventTypeHeadsetButtonLongPress buttonType (incoming call = %@)", &v33, 0xCu);
        }

        v28 = [(iPadAudioCallViewController *)self callCenter];
        [v28 handleActionForWiredHeadsetMiddleButtonLongPress];
LABEL_34:
      }
    }

LABEL_35:

    goto LABEL_36;
  }

  if (v17)
  {
    goto LABEL_19;
  }

LABEL_16:
  v18 = sub_100004F84();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [(iPadAudioCallViewController *)self isViewLoaded];
    v20 = [(iPadAudioCallViewController *)self view];
    v21 = [v20 window];
    v33 = 67109376;
    *v34 = v19;
    *&v34[4] = 1024;
    *&v34[6] = v21 != 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] iPadAudioCallViewController will not handle the hardware button event as the view is not loaded (viewLoaded = %d) or we have no window (window exists = %d)", &v33, 0xEu);
  }

LABEL_36:
}

- (void)handleDeviceLockEventWithSourceType:(int64_t)a3
{
  v22.receiver = self;
  v22.super_class = iPadAudioCallViewController;
  [(PHCallViewController *)&v22 handleDeviceLockEventWithSourceType:?];
  v5 = [(iPadAudioCallViewController *)self activeCall];
  v6 = [(iPadAudioCallViewController *)self callCenter];
  v7 = [v6 resolvedIncomingCall];

  v8 = [(iPadAudioCallViewController *)self isPickedRouteReceiver];
  v9 = sub_100004F84();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    v24 = v8;
    v25 = 1024;
    v26 = v5 != 0;
    v27 = 1024;
    v28 = v7 != 0;
    v29 = 1024;
    v30 = a3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController handling device lock event isPickedRouteReceiver=%d, activeCall=%d, incomingCall=%d, sourceType=%d", buf, 0x1Au);
  }

  if (a3 == 2)
  {
    if ((v7 != 0) | v8 & 1)
    {
      v10 = [(iPadAudioCallViewController *)self declineCallService];
      [v10 declineAnsweringCallDueToLockEventWithCurrentActiveCall:v5 completionHandler:&stru_100359348];
LABEL_25:

      goto LABEL_26;
    }

LABEL_12:
    if (((v5 != 0) & v8) == 1)
    {
      goto LABEL_13;
    }

LABEL_10:
    v11 = sub_100004F84();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController: Not suppressing ringtone or declining call.", buf, 2u);
    }

    goto LABEL_15;
  }

  if (!v7)
  {
    goto LABEL_12;
  }

  if (([v7 shouldSuppressRingtone] & 1) == 0)
  {
    v14 = +[UIApplication sharedApplication];
    v15 = [v14 delegate];
    v16 = [v15 currentInCallScene];
    v17 = [v16 delegate];
    v18 = [v17 callAnalyticsLogger];
    v19 = [v7 uniqueProxyIdentifierUUID];
    [v18 ringerMutedForCallUUID:v19];

    [v7 suppressRingtone];
    goto LABEL_20;
  }

  if (([v7 shouldSuppressRingtone] & 1) == 0 && ((v5 != 0) & v8) == 0)
  {
    goto LABEL_10;
  }

LABEL_13:
  v12 = +[PHInCallUtilities sharedInstance];
  v13 = [v12 isLockToEndCallEnabled];

  if (v13)
  {
    v11 = [(iPadAudioCallViewController *)self declineCallService];
    [v11 declineAnsweringCallDueToLockEventWithCurrentActiveCall:v5 completionHandler:&stru_100359368];
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
  if (a3 == 1 && [(iPadAudioCallViewController *)self videoStreamingIsGoingOn])
  {
    v21 = sub_100004F84();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "EnhancedEmergency: pause video if necessary when locking device", buf, 2u);
    }

    v10 = [(iPadAudioCallViewController *)self emergencyCoordinator];
    [v10 handleDeviceLockEvent];
    goto LABEL_25;
  }

LABEL_26:
}

- (BOOL)isPickedRouteReceiver
{
  v2 = [(iPadAudioCallViewController *)self callCenter];
  v3 = [v2 routeController];
  v4 = [v3 pickedRoute];
  v5 = [v4 isReceiver];

  return v5;
}

- (BOOL)isPickedRouteSpeaker
{
  v2 = [(iPadAudioCallViewController *)self callCenter];
  v3 = [v2 routeController];
  v4 = [v3 pickedRoute];
  v5 = [v4 isSpeaker];

  return v5;
}

- (void)setupAmbientAudioRoutesControlViewIfNeeded
{
  if (!self->_ambientAudioRoutesControlView)
  {
    v19 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
    if ([v19 callDisplayStyle] == 3)
    {
      v3 = [(iPadAudioCallViewController *)self features];
      v4 = [v3 isDominoEnabled];

      if (!v4)
      {
        return;
      }

      v5 = objc_alloc_init(PHAmbientAudioRoutesControlView);
      v6 = [(iPadAudioCallViewController *)self buttonsViewController];
      [(PHAmbientAudioRoutesControlView *)v5 setDelegate:v6];

      [(PHAmbientAudioRoutesControlView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
      ambientAudioRoutesControlView = self->_ambientAudioRoutesControlView;
      self->_ambientAudioRoutesControlView = &v5->super;
      v8 = v5;

      v9 = [(iPadAudioCallViewController *)self view];
      [v9 addSubview:self->_ambientAudioRoutesControlView];

      v10 = [(UIView *)self->_ambientAudioRoutesControlView topAnchor];
      v11 = [(iPadAudioCallViewController *)self view];
      v12 = [v11 topAnchor];
      +[PHUIConfiguration ambientAudioRoutesInset];
      v13 = [v10 constraintEqualToAnchor:v12 constant:?];
      [v13 setActive:1];

      v19 = [(UIView *)self->_ambientAudioRoutesControlView trailingAnchor];
      v14 = [(iPadAudioCallViewController *)self view];
      v15 = [v14 trailingAnchor];
      +[PHUIConfiguration ambientAudioRoutesInset];
      v17 = v16;

      v18 = [v19 constraintEqualToAnchor:v15 constant:-v17];
      [v18 setActive:1];
    }
  }
}

- (void)updateAmbientAudioRoutesVisibility
{
  [(iPadAudioCallViewController *)self setupAmbientAudioRoutesControlViewIfNeeded];
  v3 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([v3 callDisplayStyle] != 3)
  {
    goto LABEL_7;
  }

  v4 = [(iPadAudioCallViewController *)self features];
  if (([v4 isDominoEnabled] & 1) == 0)
  {

LABEL_7:
    goto LABEL_8;
  }

  v5 = [(iPadAudioCallViewController *)self middleViewState];

  if (v5 != 1)
  {
LABEL_8:
    v11 = 1;
    goto LABEL_9;
  }

  v6 = [(iPadAudioCallViewController *)self ambientAudioRoutesControlView];
  v7 = [v6 isHidden];

  if (v7)
  {
    v8 = [(iPadAudioCallViewController *)self ambientAudioRoutesControlView];
    [_TtC13InCallService27AmbientAnimationCoordinator show:v8 completion:0];

    v9 = [(iPadAudioCallViewController *)self ambientAudioRoutesControlView];
    [v9 setHidden:0];

    v12 = [(iPadAudioCallViewController *)self view];
    v10 = [(iPadAudioCallViewController *)self ambientAudioRoutesControlView];
    [v12 bringSubviewToFront:v10];

    goto LABEL_10;
  }

  v11 = 0;
LABEL_9:
  v12 = [(iPadAudioCallViewController *)self ambientAudioRoutesControlView];
  [v12 setHidden:v11];
LABEL_10:
}

- (void)setViewsHiddenForAudioRoutes:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = +[UIDevice currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8 != 1)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000E7868;
    v11[3] = &unk_100356BB8;
    v12 = a3;
    v11[4] = self;
    v9 = objc_retainBlock(v11);
    v10 = v9;
    if (v4)
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
  v3 = [(iPadAudioCallViewController *)self callCenter];
  v9 = [v3 routeController];

  v4 = [v9 areNonRelayAuxiliaryRoutesAvailable];
  v5 = v9;
  if (v4)
  {
    v6 = [v9 pickedRoute];
    v7 = v6;
    if (!v6 || (v8 = [v6 deviceType], v8 > 0x1D) || ((1 << v8) & 0x24140002) == 0 || (objc_msgSend(v7, "isPreferredAndActive") & 1) == 0)
    {
      [(iPadAudioCallViewController *)self revealAudioRoutingDeviceListAnimated:1];
    }

    v5 = v9;
  }

  _objc_release_x1(v4, v5);
}

- (void)revealAudioRoutingDeviceListAnimated:(BOOL)a3
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Revealing audio routing device list", buf, 2u);
  }

  v5 = [(iPadAudioCallViewController *)self buttonsViewController];
  if ([v5 isViewLoaded])
  {
    v6 = [(iPadAudioCallViewController *)self buttonsViewController];
    v7 = [v6 view];
    v8 = [v7 window];

    if (v8)
    {
      v9 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
      if ([v9 callDisplayStyle] == 3)
      {
        v10 = [(iPadAudioCallViewController *)self features];
        if ([v10 isDominoEnabled])
        {
          v11 = [(iPadAudioCallViewController *)self ambientAudioRoutesControlView];

          if (v11)
          {
            v12 = [(iPadAudioCallViewController *)self ambientAudioRoutesControlView];
            v13 = [v12 button];
            goto LABEL_16;
          }

LABEL_14:
          v20 = [(iPadAudioCallViewController *)self currentMiddleView];
          v21 = objc_opt_respondsToSelector();

          if ((v21 & 1) == 0)
          {
            v14 = 0;
LABEL_18:
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v22 = [v14 interactions];
            v23 = [v22 countByEnumeratingWithState:&v35 objects:v39 count:16];
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
                  objc_enumerationMutation(v22);
                }

                v27 = *(*(&v35 + 1) + 8 * v26);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  break;
                }

                if (v24 == ++v26)
                {
                  v24 = [v22 countByEnumeratingWithState:&v35 objects:v39 count:16];
                  if (v24)
                  {
                    goto LABEL_20;
                  }

                  goto LABEL_26;
                }
              }

              v15 = v27;

              if (!v15)
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
              [v15 _presentMenuAtLocation:v31, v33 + v34 * 0.5];
            }

            else
            {
LABEL_26:

LABEL_29:
              v15 = sub_100004F84();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v41 = v14;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find menu interaction for audio routes button: %@", buf, 0xCu);
              }
            }

            goto LABEL_31;
          }

          v12 = [(iPadAudioCallViewController *)self currentMiddleView];
          v13 = [v12 buttonForControlType:3];
LABEL_16:
          v14 = v13;

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
    v15 = [(iPadAudioCallViewController *)self buttonsViewController];
    v16 = [v15 isViewLoaded];
    v17 = [(iPadAudioCallViewController *)self buttonsViewController];
    v18 = [v17 view];
    v19 = [v18 window];
    *buf = 67109378;
    *v41 = v16;
    *&v41[4] = 2112;
    *&v41[6] = v19;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not presenting audio routing device list since isViewLoaded: %d; window: %@", buf, 0x12u);

LABEL_31:
  }
}

- (id)audioRouteMenu
{
  v3 = [(iPadAudioCallViewController *)self routeListController];

  if (!v3)
  {
    v4 = [PHAudioRoutingMenuController menuControllerWithCallStyle:1 dataSource:self delegate:self];
    [(iPadAudioCallViewController *)self setRouteListController:v4];
  }

  v5 = [(iPadAudioCallViewController *)self routeListController];
  v6 = [v5 menu];

  return v6;
}

- (id)routesForAudioRoutingMenuController:(id)a3
{
  v3 = [(iPadAudioCallViewController *)self callCenter];
  v4 = [v3 routeController];
  v5 = [v4 sortedRoutes];

  return v5;
}

- (void)audioRoutingMenuController:(id)a3 didSelectRoute:(id)a4
{
  v5 = a4;
  v6 = [(iPadAudioCallViewController *)self callCenter];
  v7 = [v6 routeController];
  [v7 pickRoute:v5];

  v12 = [(iPadAudioCallViewController *)self features];
  if ([v12 isEnhancedEmergencyEnabled])
  {
    v8 = [(iPadAudioCallViewController *)self emergencyCoordinator];
    if (v8)
    {
      v9 = v8;
      v10 = [(iPadAudioCallViewController *)self emergencyCoordinator];
      v11 = [v10 eedRTTState];

      if (!v11)
      {
        return;
      }

      v12 = [(iPadAudioCallViewController *)self emergencyCoordinator];
      [v12 updateRTTAudioRouteButton];
    }
  }
}

- (void)routesChangedForRouteController:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController get notified audio routes changed", v18, 2u);
  }

  [(iPadAudioCallViewController *)self updateCurrentState];
  v6 = [(iPadAudioCallViewController *)self routeListController];
  [v6 reload];

  v7 = +[UIApplication sharedApplication];
  v8 = [v7 delegate];
  v9 = [v8 currentInCallScene];
  v10 = [v9 delegate];
  v11 = [v10 callAnalyticsLogger];
  v12 = [v4 pickedRoute];

  [v11 audioRouteIsHandsfree:{objc_msgSend(v12, "isReceiver") ^ 1}];
  v13 = [(iPadAudioCallViewController *)self features];
  if ([v13 isEnhancedEmergencyEnabled])
  {
    v14 = [(iPadAudioCallViewController *)self emergencyCoordinator];
    if (v14)
    {
      v15 = v14;
      v16 = [(iPadAudioCallViewController *)self emergencyCoordinator];
      v17 = [v16 eedRTTState];

      if (!v17)
      {
        return;
      }

      v13 = [(iPadAudioCallViewController *)self emergencyCoordinator];
      [v13 updateRTTAudioRouteButton];
    }
  }
}

- (void)callDisplayStyleDidChangeFromStyle:(int64_t)a3 toStyle:(int64_t)a4
{
  v33.receiver = self;
  v33.super_class = iPadAudioCallViewController;
  [PHCallViewController callDisplayStyleDidChangeFromStyle:"callDisplayStyleDidChangeFromStyle:toStyle:" toStyle:?];
  if (a4 == 4)
  {
    v7 = [(iPadAudioCallViewController *)self callCenter];
    v8 = [v7 hasCurrentCalls];

    if ((v8 & 1) == 0)
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

  if (!a3)
  {
    [(iPadAudioCallViewController *)self resetParticipantsViewConstraints];
    v10 = [(iPadAudioCallViewController *)self pendingMiddleViewAnimations];

    if (v10)
    {
      v11 = [(iPadAudioCallViewController *)self pendingMiddleViewAnimations];
      v11[2]();

      [(iPadAudioCallViewController *)self setPendingMiddleViewAnimations:0];
    }

    if ([(iPadAudioCallViewController *)self waitingForFullScreenAudioRoutes])
    {
      v12 = [(iPadAudioCallViewController *)self callCenter];
      v13 = [v12 routeController];
      v14 = [v13 areAuxiliaryRoutesAvailable];

      if (v14)
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

  if (a3 == 1 || a4 != 1)
  {
    if (a3 == 2 && a4 == 4)
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

  if (a3 == 4)
  {
    [(iPadAudioCallViewController *)self handleViewWillAppear:1];
    [(iPadAudioCallViewController *)self handleViewDidAppear:1];
    goto LABEL_34;
  }

  if (a4 == 4)
  {
LABEL_25:
    [(iPadAudioCallViewController *)self handleViewWillDisappear:1];
    [(iPadAudioCallViewController *)self handleViewDidDisappear:1];
    v18 = [(iPadAudioCallViewController *)self callCenter];
    v19 = [v18 incomingCall];

    if (v19)
    {
      v20 = [v19 provider];
      if ([v20 supportsDynamicSystemUI])
      {
        v21 = [(iPadAudioCallViewController *)self featureFlags];
        if ([v21 groupConversations])
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
  v24 = [v23 orientation];

  if (!a3 && a4 == 2 && (v24 - 3) < 2 || UIAccessibilityIsReduceMotionEnabled())
  {
    v25 = [(iPadAudioCallViewController *)self view];
    [ICSBannerTransitionAnimation performBannerToFullScreenCrossFadeAnimationWithView:v25];
  }

  [(iPadAudioCallViewController *)self showCallDetailsIfNecessary];
  [(iPadAudioCallViewController *)self setupAmbientAudioRoutesControlViewIfNeeded];
  [(iPadAudioCallViewController *)self updateShareNameAndPhotoHUDPresentationIfNeeded];
  [(iPadAudioCallViewController *)self updateLayeredBackgroundWallpaper];
  [(iPadAudioCallViewController *)self updateDefaultNoPosterAvatarViewVisibility];
  v26 = [(iPadAudioCallViewController *)self frontmostCall];
  [(iPadAudioCallViewController *)self updateWaitOnHoldServiceWithCall:v26];

  [(iPadAudioCallViewController *)self updateBottomShelfWithMiddleViewState:self->_middleViewState callDisplayStyle:a4];
  [(iPadAudioCallViewController *)self _updateStatusLabelVisibility];
  if (a3 != 2 && !a4)
  {
    v27 = [(PHCallViewController *)self bottomBar];
    [v27 setNeedsLayout];

    v28 = [(PHCallViewController *)self bottomBar];
    [v28 layoutIfNeeded];
  }

  v29 = [(iPadAudioCallViewController *)self backgroundController];
  [v29 updateBackgroundFor:{-[ICSCallDisplayStyleManager callDisplayStyle](self->_callDisplayStyleManager, "callDisplayStyle")}];

  if (a4 == 4 || a4 == 2)
  {
    [(iPadAudioCallViewController *)self activatePoster];
  }
}

- (void)suppressRingtoneForIncomingCall
{
  v2 = [(iPadAudioCallViewController *)self callCenter];
  v5 = [v2 incomingCall];

  v4 = v5;
  if (v5)
  {
    v3 = [v5 shouldSuppressRingtone];
    v4 = v5;
    if ((v3 & 1) == 0)
    {
      v3 = [v5 suppressRingtone];
      v4 = v5;
    }
  }

  _objc_release_x1(v3, v4);
}

- (void)showCallDetailsIfNecessary
{
  v3 = [(iPadAudioCallViewController *)self callDetailsCoordinator];
  if (v3)
  {
    v9 = v3;
    v4 = +[UIApplication sharedApplication];
    v5 = [v4 delegate];
    v6 = [v5 bannerPresentationManager];
    if ([v6 shouldShowCallDetailsWhenReady])
    {
      v7 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
      v8 = [v7 callDisplayStyle];

      if (v8 != 2)
      {
        return;
      }

      v9 = [(iPadAudioCallViewController *)self callDetailsCoordinator];
      [v9 startWithReason:@"Controls manager requested deferred call details presentation"];
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

- (void)callParticipantsViewController:(id)a3 didPerformActionType:(int64_t)a4
{
  v6 = a3;
  v7 = [(iPadAudioCallViewController *)self callParticipantsViewController];

  if (v7 == v6)
  {
    [(iPadAudioCallViewController *)self performBottomBarActionType:a4];
  }

  else
  {
    v8 = sub_100004F84();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134218242;
      v10 = a4;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Cannot perform bottom bar action %ld from unknown call participants viewcontroller object %@", &v9, 0x16u);
    }
  }
}

- (BOOL)callParticipantsViewControllerHasHighResolutionImageOrWallpaperForContact:(id)a3
{
  v4 = [(iPadAudioCallViewController *)self contactForCall:self->_existingPrioritizedCall];
  v5 = [v4 fullscreenImageData];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = [(iPadAudioCallViewController *)self contactHasPoster:v4];
  }

  return v6;
}

- (void)callParticipantsViewControllerDidTapCallDetailsGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(iPadAudioCallViewController *)self callParticipantsViewController];

  if (v5 == v4)
  {
    v6 = [(iPadAudioCallViewController *)self callDetailsCoordinator];
    [v6 startWithReason:@"Call participant view requested call details"];
  }

  else
  {
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Cannot handle call details disclosure button tap from unknown call participants viewcontroller object %@", &v7, 0xCu);
    }
  }
}

- (void)callParticipantsViewController:(id)a3 willShowMultipleLabel:(BOOL)a4
{
  v6 = a3;
  v7 = [(iPadAudioCallViewController *)self callParticipantsViewController];

  if (v7 != v6)
  {
    return;
  }

  self->_participantsViewIsShowingMultipleLabel = a4 & ~[(iPadAudioCallViewController *)self usesCompactMulticallUI];
  [(iPadAudioCallViewController *)self _updatePosterNameAlpha];
  [(iPadAudioCallViewController *)self _updateStatusLabelVisibility];
  v11 = [(iPadAudioCallViewController *)self getParticipantsView_WaitingOrNot];
  [(iPadAudioCallViewController *)self updateParticipantConstraintsForPosterName:?];
  v8 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([v8 callDisplayStyle] != 3)
  {
    goto LABEL_5;
  }

  v9 = [(iPadAudioCallViewController *)self features];
  v10 = [v9 isDominoEnabled];

  if (v10)
  {
    [(iPadAudioCallViewController *)self layoutParticipantsViewAnimated:0];
    v8 = [(iPadAudioCallViewController *)self callToUseForWallpaper];
    [(iPadAudioCallViewController *)self setCallForBackgroundImage:v8 animated:1 callDisplayStyleChanged:0];
LABEL_5:
  }
}

- (void)callParticipantsViewController:(id)a3 didShowMultipleLabel:(BOOL)a4
{
  v6 = a3;
  v7 = [(iPadAudioCallViewController *)self callParticipantsViewController];

  if (v7 == v6)
  {
    v8 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
    if ([v8 callDisplayStyle] == 3)
    {
      v9 = [(iPadAudioCallViewController *)self features];
      v10 = [v9 isDominoEnabled];

      if ((v10 & 1) != 0 || a4)
      {
        return;
      }
    }

    else
    {

      if (a4)
      {
        return;
      }
    }

    v11 = [(iPadAudioCallViewController *)self posterNameViewModel];

    if (v11)
    {

      [(iPadAudioCallViewController *)self _updateStatusLabelVisibility];
    }
  }
}

- (BOOL)callParticipantsViewControllerShouldShowLargeAvatar:(id)a3
{
  v4 = a3;
  v5 = [(iPadAudioCallViewController *)self callParticipantsViewController];

  if (v5 == v4)
  {
    v8 = [(iPadAudioCallViewController *)self shouldShowLargeAvatar];
LABEL_6:
    v7 = v8;
    goto LABEL_7;
  }

  v6 = [(iPadAudioCallViewController *)self callWaitingParticipantsViewController];

  if (v6 == v4)
  {
    v8 = [(iPadAudioCallViewController *)self shouldShowLargeAvatarForCallWaiting];
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

- (BOOL)shouldShowLargeAvatarForCall:(id)a3
{
  v4 = a3;
  if ([(iPadAudioCallViewController *)self callStateCanShowNewPoster:v4]|| ![(iPadAudioCallViewController *)self prefersShowingCachedLastSeenPosterBeforeCallConnected:v4])
  {
    v5 = [(iPadAudioCallViewController *)self contactWallpaperForCall:v4];
    v6 = [(iPadAudioCallViewController *)self wallpaperTypeForCNWallpaper:v5];
  }

  else
  {
    v5 = [(iPadAudioCallViewController *)self lastSeenPosterIMWallpaperMetadataForCall:v4];
    v6 = [(iPadAudioCallViewController *)self wallpaperTypeForIMWallpaperMetadata:v5];
  }

  v7 = v6;

  v8 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([v8 callDisplayStyle] != 3)
  {
    v11 = 0;
    goto LABEL_11;
  }

  v9 = [(iPadAudioCallViewController *)self features];
  v10 = [v9 isDominoEnabled];

  if (!v10)
  {
    v11 = 0;
    goto LABEL_13;
  }

  v11 = 1;
  if (v7 != CNWallpaperTypeMemoji && v7 != CNWallpaperTypeMonogram)
  {
    v8 = [(iPadAudioCallViewController *)self contactImageForCall:v4];
    [v8 size];
    v11 = v12 > 300.0;
LABEL_11:
  }

LABEL_13:

  return v11;
}

- (void)updateShouldShowLargeAvatar
{
  v11 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([v11 callDisplayStyle] == 3)
  {
    v3 = [(iPadAudioCallViewController *)self features];
    v4 = [v3 isDominoEnabled];

    if (!v4)
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
      v11 = [(iPadAudioCallViewController *)self prioritizedCall];
      v6 = [(iPadAudioCallViewController *)self shouldShowLargeAvatarForCall:v11];
    }

    else
    {
      v7 = [(iPadAudioCallViewController *)self callParticipantsViewController];
      v8 = [v7 currentCallGroups];
      v9 = [v8 firstObject];
      v10 = [v9 calls];
      v11 = [v10 firstObject];

      v6 = [(iPadAudioCallViewController *)self shouldShowLargeAvatarForCall:v11];
    }

    [(iPadAudioCallViewController *)self setShouldShowLargeAvatar:v6];
  }
}

- (id)customColorForStatusLabelWithCall:(id)a3
{
  v3 = [(iPadAudioCallViewController *)self wallpaperTitleStyleAttributesForCall:a3];
  v4 = [v3 titleColor];

  return v4;
}

- (id)customColorForParticipantLabelWithCall:(id)a3
{
  v4 = a3;
  v5 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([v5 callDisplayStyle] != 3)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v6 = [(iPadAudioCallViewController *)self features];
  v7 = [v6 isDominoEnabled];

  if (v7)
  {
    v5 = [(iPadAudioCallViewController *)self wallpaperTitleStyleAttributesForCall:v4];
    v8 = [v5 titleColor];
LABEL_5:

    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)customFontForParticipantLabelWithCall:(id)a3
{
  v4 = a3;
  v5 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([v5 callDisplayStyle] != 3)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v6 = [(iPadAudioCallViewController *)self features];
  v7 = [v6 isDominoEnabled];

  if (v7)
  {
    v5 = [(iPadAudioCallViewController *)self wallpaperTitleStyleAttributesForCall:v4];
    v8 = [v5 titleFont];
LABEL_5:

    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (void)setParticipantsViewShouldShowParticipantLabel:(BOOL)a3
{
  if (self->_participantsViewShouldShowParticipantLabel != a3)
  {
    v4 = a3;
    self->_participantsViewShouldShowParticipantLabel = a3;
    v6 = [(iPadAudioCallViewController *)self getParticipantsView_NotWaiting];
    [(iPadAudioCallViewController *)self updateParticipantsLabelForView:v6 isHidden:!v4];
  }
}

- (void)updateParticipantsLabelForView:(id)a3 isHidden:(BOOL)a4
{
  if (a3)
  {
    v4 = !a4;
    v6 = [a3 singleCallLabelView];
    v5 = [v6 participantMarqueeLabel];
    [v5 setAlpha:v4];
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

- (BOOL)shouldShowEnableWiFiCallingAlertForCall:(id)a3
{
  v3 = a3;
  if (([v3 isEmergency] & 1) == 0 && objc_msgSend(v3, "disconnectedReason") == 14 && objc_msgSend(v3, "service") == 1)
  {
    v4 = PHShouldShowWifiCallingAlert();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v3 localSenderIdentityUUID];
  if (v5)
  {
    v6 = [TUCallCapabilities senderIdentityCapabilitiesWithUUID:v5];
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

- (void)updatePresentationStateWithAllowed:(BOOL)a3
{
  v3 = a3;
  if ([(iPadAudioCallViewController *)self shouldPresentAlertButton]!= a3)
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController is about to set shouldPresentAlertButton to %d", v6, 8u);
    }

    [(iPadAudioCallViewController *)self setShouldPresentAlertButton:v3];
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
      v4 = [(iPadAudioCallViewController *)self alertCountDownTimer];

      if (!v4)
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
        v8 = [v7 delegate];
        v9 = [v8 alertCoordinator];
        v10 = [v9 isBackgroundCountdownRunning];

        if (v10)
        {
          v11 = +[UIApplication sharedApplication];
          v12 = [v11 delegate];
          v13 = [v12 alertCoordinator];
          [v13 currentBackgroundCountdownDuration];
          *(v23 + 3) = v14;

          v15 = +[UIApplication sharedApplication];
          v16 = [v15 delegate];
          v17 = [v16 alertCoordinator];
          [v17 stopBackgroundCountdown];
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
    v3 = [(iPadAudioCallViewController *)self frontmostCall];
    if ([v3 originatingUIType] == 11 && !-[iPadAudioCallViewController didRequestToSpeakAlertUtterance](self, "didRequestToSpeakAlertUtterance"))
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
      v11 = [(iPadAudioCallViewController *)self speechSynthesizer];
      [v11 setUsesApplicationAudioSession:v10 != 0];

      v12 = [AVSpeechUtterance speechUtteranceWithString:v8];
      v13 = [(iPadAudioCallViewController *)self speechSynthesizer];
      [v13 speakUtterance:v12];

      [(iPadAudioCallViewController *)self setDidRequestToSpeakAlertUtterance:1];
    }
  }
}

- (BOOL)isReadyToShowCallDetails
{
  v2 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  v3 = [v2 callDisplayStyle] == 2;

  return v3;
}

- (void)audioDeviceControllerMutedTalkerDidStart:(id)a3
{
  if ([(iPadAudioCallViewController *)self audioCallMutedTalkerIsSupported])
  {
    v4 = [(iPadAudioCallViewController *)self didNotifyMutedCaller];
    v5 = sub_100004F84();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController: received audioDeviceControllerMutedTalkerDidStart callback, but banner was presented before, skips updating", v8, 2u);
      }
    }

    else
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController: received audioDeviceControllerMutedTalkerDidStart callback, presenting banner", buf, 2u);
      }

      [(iPadAudioCallViewController *)self setDidNotifyMutedCaller:1];
      v7 = [(iPadAudioCallViewController *)self mutedTalkerBannerViewController];
      [v7 showBanner];

      v5 = [(iPadAudioCallViewController *)self mutedTalkerBannerViewController];
      [v5 playBannerSound];
    }
  }
}

- (void)bannerDidGetTap
{
  if ([(iPadAudioCallViewController *)self audioCallMutedTalkerIsSupported])
  {
    v3 = [(iPadAudioCallViewController *)self buttonsViewController];
    [v3 handleMutedTalkerBannerTap];

    v4 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
    v5 = [v4 callDisplayStyle];

    if (v5 == 2)
    {
      v6 = [(iPadAudioCallViewController *)self mutedTalkerBannerViewController];
      [v6 dismissBanner];
    }
  }
}

- (void)contactDidChange:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 wallpaper];
    v28 = 138412546;
    *v29 = v4;
    *&v29[8] = 2112;
    v30 = v6;
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

  v8 = [(iPadAudioCallViewController *)self contactsCache];
  v9 = [v4 identifier];
  v10 = [v8 objectForKey:v9];

  v11 = +[UIApplication sharedApplication];
  v12 = [v11 delegate];
  v13 = [v12 isShowingIncomingNameUpdate];

  v14 = [(iPadAudioCallViewController *)self presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [v14 topViewController];
    if (v15)
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
    v15 = v14;
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  v17 = [(iPadAudioCallViewController *)self contactsCache];
  v18 = [v4 identifier];
  [v17 setObject:v4 forKey:v18];

  if ((v13 | isKindOfClass))
  {
    v19 = sub_100004F84();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 67109376;
      *v29 = v13;
      *&v29[4] = 1024;
      *&v29[6] = isKindOfClass & 1;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "SNAP: going to render poster again since contact did change, isBannerPresented = %d, isContactCardPresented = %d", &v28, 0xEu);
    }

    v20 = [(iPadAudioCallViewController *)self configurationCache];
    [v20 removeAllObjects];

    [(iPadAudioCallViewController *)self updateLayeredBackgroundWallpaper];
  }

  v21 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([v21 callDisplayStyle] != 3)
  {
    goto LABEL_21;
  }

  v22 = [(iPadAudioCallViewController *)self features];
  v23 = [v22 isDominoEnabled];

  if (v23)
  {
    v24 = [(iPadAudioCallViewController *)self callToUseForWallpaper];
    v21 = [(iPadAudioCallViewController *)self contactImageDataForCall:v24];

    v25 = [[UIImage alloc] initWithData:v21];
    [(iPadAudioCallViewController *)self setBackgroundImage:v25];

LABEL_21:
  }

LABEL_22:
  if (v13)
  {
    v26 = +[UIApplication sharedApplication];
    v27 = [v26 delegate];
    [v27 setIsShowingIncomingNameUpdate:0];
  }

LABEL_25:
}

- (void)presentDisconnectionAlert:(id)a3
{
  v4 = a3;
  v5 = +[CNKFeatures sharedInstance];
  v6 = [v5 isEnhancedEmergencyEnabled];

  if (v6)
  {
    v7 = [(iPadAudioCallViewController *)self emergencyCoordinator];
    if (v7)
    {
      v8 = v7;
      v9 = [(iPadAudioCallViewController *)self emergencyCoordinator];
      v10 = [v9 videoStreamingIsOnScreen];

      if (v10)
      {
        v11 = +[NSBundle mainBundle];
        v12 = [v11 localizedStringForKey:@"STOP_SHARING_LIVE_VIDEO_TITLE" value:&stru_100361FD0 table:@"InCallService"];
        [v4 setTitle:v12];

        v13 = +[NSBundle mainBundle];
        v14 = [v13 localizedStringForKey:@"STOP_SHARING_LIVE_VIDEO_SUBTITLE" value:&stru_100361FD0 table:@"InCallService"];
        [v4 setMessage:v14];

        objc_initWeak(&location, self);
        v15 = +[NSBundle mainBundle];
        v16 = [v15 localizedStringForKey:@"STOP_SHARING_CAMERA" value:&stru_100361FD0 table:@"InCallService"];
        v18 = _NSConcreteStackBlock;
        v19 = 3221225472;
        v20 = sub_1000EA724;
        v21 = &unk_100359390;
        objc_copyWeak(&v22, &location);
        v17 = [UIAlertAction actionWithTitle:v16 style:0 handler:&v18];
        [v4 addAction:{v17, v18, v19, v20, v21}];

        objc_destroyWeak(&v22);
        objc_destroyWeak(&location);
      }
    }

    [(iPadAudioCallViewController *)self presentViewController:v4 animated:1 completion:0];
  }
}

- (BOOL)isShowSOSConfirmationSupported
{
  v2 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  v3 = [v2 callDisplayStyle] == 2;

  return v3;
}

- (void)screenSharingInteractionController:(id)a3 didUpdateRemoteControlStatus:(BOOL)a4
{
  v4 = a4;
  v6 = [(iPadAudioCallViewController *)self featureFlags];
  v7 = [v6 screenSharingRemoteControlEnabled];

  v8 = sub_10000B2A0();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = @"NO";
      if (v4)
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
    v3 = [(iPadAudioCallViewController *)self voiceMessageManager];
    if (v3)
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

      v6 = [(iPadAudioCallViewController *)self voiceMessageManager];
      [v6 startMessagePlayback];
    }
  }
}

- (void)stopMessagePlayback
{
  v3 = [(iPadAudioCallViewController *)self voiceMessageManager];

  if (v3)
  {
    v4 = sub_100004F84();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "stopMessagePlayback", v6, 2u);
    }

    v5 = [(iPadAudioCallViewController *)self voiceMessageManager];
    [v5 stopMessagePlayback];

    [(iPadAudioCallViewController *)self setVoiceMessageManager:0];
  }
}

- (void)startCallBufferScreenCountdown
{
  [(iPadAudioCallViewController *)self stopCallBufferTimer];
  [(iPadAudioCallViewController *)self startMessagePlayback];
  v3 = [(iPadAudioCallViewController *)self callBufferTimer];

  if (!v3)
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
  v3 = [(iPadAudioCallViewController *)self callBufferTimer];
  v4 = [v3 isValid];

  if (v4)
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "iPadAudioCallViewController,stopCallBufferTimer", v7, 2u);
    }

    v6 = [(iPadAudioCallViewController *)self callBufferTimer];
    [v6 invalidate];

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
    v4 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
    v5 = [(PHSingleCallParticipantLabelView *)v3 initWithCallDisplayStyleManager:v4];
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

    v9 = [(iPadAudioCallViewController *)self view];
    [v9 addSubview:self->_bufferSingleCallLabelView];

    v41 = [UIFont phPreferredFontForTextStyle:UIFontTextStyleLargeTitle];
    v10 = self->_bufferSingleCallLabelView;
    [v41 pointSize];
    v11 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
    [(PHSingleCallParticipantLabelView *)v10 setParticipantMarqueeLabelFont:v11];

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"SOS_CALL_BUFFER_TITLE" value:&stru_100361FD0 table:@"InCallService"];
    v14 = [(PHAbstractCallParticipantLabelView *)self->_bufferSingleCallLabelView participantMarqueeLabel];
    [v14 setText:v13];

    v15 = self->_bufferSingleCallLabelView;
    v16 = +[UIColor systemRedColor];
    [(PHSingleCallParticipantLabelView *)v15 setStatusLabelTextColor:v16];

    labelDescriptorFactory = self->_labelDescriptorFactory;
    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"SOS_CALL_BUFFER_SUBTITLE" value:&stru_100361FD0 table:@"InCallService"];
    v20 = [(CNKCallParticipantLabelDescriptorFactory *)labelDescriptorFactory makeLabelWithString:v19];

    [(PHSingleCallParticipantLabelView *)self->_bufferSingleCallLabelView setLabelDescriptor:v20];
    v21 = [(PHSingleCallParticipantLabelView *)self->_bufferSingleCallLabelView topAnchor];
    v22 = [(iPadAudioCallViewController *)self view];
    v23 = [v22 safeAreaLayoutGuide];
    v24 = [v23 topAnchor];
    +[TPIncomingCallMetricsProvider sixPercentOfDeviceHeight];
    v25 = [v21 constraintEqualToAnchor:v24 constant:?];

    v26 = [(PHSingleCallParticipantLabelView *)self->_bufferSingleCallLabelView centerXAnchor];
    v27 = [(iPadAudioCallViewController *)self view];
    v28 = [v27 centerXAnchor];
    v29 = [v26 constraintEqualToAnchor:v28];

    v30 = [(PHSingleCallParticipantLabelView *)self->_bufferSingleCallLabelView leadingAnchor];
    v31 = [(iPadAudioCallViewController *)self view];
    v32 = [v31 readableContentGuide];
    v33 = [v32 leadingAnchor];
    v34 = [v30 constraintEqualToAnchor:v33];

    v35 = [(PHSingleCallParticipantLabelView *)self->_bufferSingleCallLabelView trailingAnchor];
    v36 = [(iPadAudioCallViewController *)self view];
    v37 = [v36 readableContentGuide];
    v38 = [v37 trailingAnchor];
    v39 = [v35 constraintEqualToAnchor:v38];

    v42[0] = v25;
    v42[1] = v29;
    v42[2] = v34;
    v42[3] = v39;
    v40 = [NSArray arrayWithObjects:v42 count:4];
    [NSLayoutConstraint activateConstraints:v40];
  }
}

+ (BOOL)wallpaperContentIsSensitive:(id)a3
{
  v3 = a3;
  if (+[_TtC13InCallService23SensitivityFeatureFlags isContactNudityDetectionEnabled])
  {
    v4 = [v3 contentIsSensitive];
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = v4;
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

    LOBYTE(v4) = 0;
  }

  return v4;
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
  v3 = [(iPadAudioCallViewController *)self layoutGuidesProvider];
  v4 = [v3 trailingPanelLayoutGuide];

  if (v4)
  {
    v5 = [(iPadAudioCallViewController *)self trailingPanelCoveringView];

    if (!v5)
    {
      v6 = [(iPadAudioCallViewController *)self createBlurryBackgroundView];
      [(iPadAudioCallViewController *)self setTrailingPanelCoveringView:v6];

      v7 = [(iPadAudioCallViewController *)self trailingPanelCoveringView];
      [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

      v8 = [(iPadAudioCallViewController *)self backgroundController];
      v9 = [(iPadAudioCallViewController *)self trailingPanelCoveringView];
      [v8 addToBackground:v9];

      v47 = [(iPadAudioCallViewController *)self trailingPanelCoveringView];
      v46 = [v47 topAnchor];
      v45 = [v4 topAnchor];
      v44 = [v46 constraintEqualToAnchor:v45];
      v49[0] = v44;
      v43 = [(iPadAudioCallViewController *)self trailingPanelCoveringView];
      v42 = [v43 bottomAnchor];
      v41 = [v4 bottomAnchor];
      v40 = [v42 constraintEqualToAnchor:v41];
      v49[1] = v40;
      v39 = [(iPadAudioCallViewController *)self trailingPanelCoveringView];
      v10 = [v39 leadingAnchor];
      v11 = [v4 leadingAnchor];
      v12 = [v10 constraintEqualToAnchor:v11];
      v49[2] = v12;
      v13 = [(iPadAudioCallViewController *)self trailingPanelCoveringView];
      v14 = [v13 trailingAnchor];
      v15 = [v4 trailingAnchor];
      v16 = [v14 constraintEqualToAnchor:v15];
      v49[3] = v16;
      v17 = [NSArray arrayWithObjects:v49 count:4];
      [NSLayoutConstraint activateConstraints:v17];

      [v4 layoutFrame];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v26 = [(iPadAudioCallViewController *)self trailingPanelCoveringView];
      [v26 setFrame:{v19, v21, v23, v25}];

      v27 = [(iPadAudioCallViewController *)self backgroundController];
      v28 = [v27 backgroundContainer];
      [v28 layoutIfNeeded];

      v29 = [(iPadAudioCallViewController *)self trailingPanelCoveringView];
      [v29 setHidden:1];
    }

    v30 = [(iPadAudioCallViewController *)self trailingPanelCoveringView];
    v31 = [v30 isHidden];

    if (v31)
    {
      v32 = [(iPadAudioCallViewController *)self view];
      [v32 bounds];
      v34 = v33;
      v36 = v35;

      v37 = [(iPadAudioCallViewController *)self trailingPanelCoveringView];
      [v37 setHidden:0];

      v38 = [(iPadAudioCallViewController *)self trailingPanelCoveringView];
      [v38 setAlpha:0.0];

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
  v3 = [(iPadAudioCallViewController *)self trailingPanelCoveringView];
  if (v3)
  {
    v4 = v3;
    v5 = [(iPadAudioCallViewController *)self trailingPanelCoveringView];
    v6 = [v5 isHidden];

    if ((v6 & 1) == 0)
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
      v7 = [(iPadAudioCallViewController *)self getParticipantsView_NotWaiting];
      [(iPadAudioCallViewController *)self updateParticipantConstraintsForPosterName:v7];
    }
  }
}

- (void)updateCallTranslationIfNeeded
{
  v3 = [(iPadAudioCallViewController *)self featureFlags];
  v4 = [v3 audioCallTranslationEnabled];

  if (!v4)
  {
    return;
  }

  v5 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([v5 callDisplayStyle] == 3)
  {
    v6 = [(iPadAudioCallViewController *)self features];
    v7 = [v6 isDominoEnabled];

    if (v7)
    {
      return;
    }
  }

  else
  {
  }

  v13 = [(iPadAudioCallViewController *)self activeCall];
  if ([v13 translationAvailability] != 3 || objc_msgSend(v13, "callStatus") != 1 && objc_msgSend(v13, "callStatus") != 4)
  {
    goto LABEL_15;
  }

  v8 = [(iPadAudioCallViewController *)self callDisplayStyleManager];
  if ([v8 callDisplayStyle] != 2)
  {

    goto LABEL_15;
  }

  if ([(PHCallViewController *)self currentState]!= 4 && [(PHCallViewController *)self currentState]!= 1)
  {
    v12 = [(PHCallViewController *)self currentState];

    if (v12 == 2)
    {
      goto LABEL_13;
    }

LABEL_15:
    v11 = [(iPadAudioCallViewController *)self translationController];
    [v11 hideCallTranslationButtonIfNeeded];

    v10 = [(iPadAudioCallViewController *)self translationController];
    [v10 updateCall:0];
    goto LABEL_16;
  }

LABEL_13:
  v9 = [(iPadAudioCallViewController *)self translationController];
  [v9 updateCall:v13];

  v10 = [(iPadAudioCallViewController *)self translationController];
  [v10 showCallTranslationButtonIfNeeded:self buttonContainer:0];
LABEL_16:
}

- (PHCallTranslationController)translationController
{
  v3 = [(iPadAudioCallViewController *)self featureFlags];
  v4 = [v3 audioCallTranslationEnabled];

  if (v4)
  {
    v5 = [(iPadAudioCallViewController *)self layoutGuidesProvider];
    v6 = [v5 middleShelfLayoutGuide];

    translationController = self->_translationController;
    if (translationController)
    {
      v8 = 1;
    }

    else
    {
      v8 = v6 == 0;
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
      v10 = [(PHCallTranslationController *)v9 initWithContentLayoutGuide:v6 translationStateDidChange:&v14];
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

- (void)updateTranslationBackgroundView:(BOOL)a3
{
  v3 = a3;
  v5 = [(iPadAudioCallViewController *)self translationController];
  v6 = [(iPadAudioCallViewController *)self view];
  [v5 updateContentView:v6 updateVisibility:1];

  if (v3)
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
  v2 = self;
  v3 = sub_10014DABC();

  return v3;
}

- (void)addBottomShelfContainerIfNeeded
{
  v2 = self;
  iPadAudioCallViewController.addBottomShelfContainerIfNeeded()();
}

- (void)updateBottomShelfState:(int64_t)a3
{
  v4 = self;
  iPadAudioCallViewController.updateBottomShelfState(_:)(a3);
}

- (void)setLayoutGuides
{
  v2 = self;
  sub_100160A34();
}

- (void)setupMiddleContentView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100160E84(v4);
}

- (void)setupMiddleContentView:(id)a3 flexibleConstraints:(BOOL)a4 bottomPadding:(double)a5
{
  v8 = a3;
  v9 = self;
  sub_100160F08(v8, a4, a5);
}

- (void)constraintDefaultNoPosterAvatarView
{
  v2 = self;
  sub_1001614FC();
}

- (void)constraintCallRecordingWithView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100161AA0();
}

- (void)constraintWaitOnHoldView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100161CB8();
}

- (void)callTranslationControllerWithShouldAddTranslationViewToHost:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100193078(v4);
}

- (void)callTranslationControllerWithShouldRemoveTranslationViewFromHost:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100193160(v4);
}

- (_TtC15ConversationKit23CallRecordingController)_callRecordingController
{
  v2 = self;
  v3 = iPadAudioCallViewController._callRecordingController.getter();

  return v3;
}

- (void)set_callRecordingController:(id)a3
{
  v5 = a3;
  v6 = self;
  iPadAudioCallViewController._callRecordingController.setter(a3);
}

- (void)startRecording
{
  v2 = self;
  iPadAudioCallViewController.startRecording()();
}

- (void)endRecording
{
  v2 = self;
  iPadAudioCallViewController.endRecording()();
}

- (void)updateCallRecordingIfNeeded
{
  v2 = self;
  iPadAudioCallViewController.updateCallRecordingIfNeeded()();
}

- (BOOL)callRecordingAllowed
{
  v2 = self;
  v3 = iPadAudioCallViewController.callRecordingAllowed.getter();

  return v3 & 1;
}

- (BOOL)isCallRecordingActive
{
  v2 = self;
  v3 = iPadAudioCallViewController.isCallRecordingActive.getter();

  return v3 & 1;
}

- (void)observeCallRecordingNotifications
{
  v2 = self;
  iPadAudioCallViewController.observeCallRecordingNotifications()();
}

- (void)addCallRecordingIndicator
{
  v2 = self;
  sub_1001B9020();
}

- (void)removeCallRecordingIndicator
{
  v2 = self;
  sub_1001B9310();
}

- (void)updateCallRecording:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001B9454(v4);
}

- (void)updateCallDurationVisibility
{
  v2 = self;
  sub_1001C4E84();
}

- (void)showKeypadWithPerviousMiddleState:(unsigned __int16)a3 viewSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = self;
  iPadAudioCallViewController.showKeypad(perviousMiddleState:viewSize:)(a3, width, height);
}

- (void)keypadViewWillDisappearWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  iPadAudioCallViewController.keypadViewWillDisappear(completion:)(sub_1001541E8, v5);
}

- (void)updateFloatingViewsVisibilityHandlers
{
  v2 = self;
  iPadAudioCallViewController.updateFloatingViewsVisibilityHandlers()();
}

- (void)updateKeypadBackgroundMaterialWithViewSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  iPadAudioCallViewController.updateKeypadBackgroundMaterial(viewSize:)(width, height);
}

- (void)clearMenuItemRegistration:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_1000321BC(v4, v6);
}

- (void)presentMoreMenu:(id)a3 source:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1001DFB48(v6, a4);
}

- (void)presentMoreMenu:(id)a3 contact:(id)a4 source:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1001DFBE0(v8, v11, a5);
}

- (void)presentContactCard
{
  v2 = self;
  sub_1001E0ECC();
}

- (void)showAddParticipantSheet
{
  v2 = self;
  sub_1001E1468();
}

- (BOOL)shouldShowMergeCalls
{
  v2 = self;
  sub_1001E6D48();
  v4 = v3;

  return v4 & 1;
}

- (void)updateSupplementalButtonsLayout
{
  v2 = self;
  sub_1001E721C();
}

- (void)updatePoster
{
  v2 = self;
  sub_1001F6914();
}

- (void)transitionToNewPosterIfNeeded
{
  v2 = self;
  sub_1001F79C4();
}

- (void)updatePosterSaliencyRect
{
  v2 = self;
  sub_1001F7BA0();
}

- (void)deactivatePoster
{
  v2 = self;
  sub_1001F8584();
}

- (void)activatePoster
{
  v2 = self;
  sub_1001F8658();
}

- (void)updateTopShelfContentWithCall:(id)a3 sceneWindowSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = self;
  sub_1001FCE38(width, height);
}

- (void)addNoPosterContactImage:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10021AA74();
}

- (void)updateDefaultNoPosterAvatarViewVisibility
{
  v2 = self;
  sub_10021B188();
}

- (BOOL)contactHasPoster:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10021B31C(v4);

  return v6 & 1;
}

- (BOOL)isShowingPoster
{
  v2 = self;
  v3 = sub_10021B598(&PosterViewController.isShowingPoster.getter);

  return v3 & 1;
}

- (BOOL)isShowingPosterName
{
  v2 = self;
  v3 = sub_10021B598(&PosterViewController.isPosterNameVisible.getter);

  return v3 & 1;
}

- (void)updateBackgroundTintToView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10021B620(v4);
}

- (id)createBlurryBackgroundView
{
  v2 = self;
  v3 = sub_10022A6B0();

  return v3;
}

- (void)presentWaitOnHoldEndForAnotherCallAlertWithCallerName:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  iPadAudioCallViewController.presentWaitOnHoldEndForAnotherCallAlert(callerName:completionHandler:)(v6, v8, sub_100231E5C, v9);
}

- (id)makeLockObserverWithHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  iPadAudioCallViewController.makeLockObserver(with:)(sub_100231DA4, v5, v9);

  sub_100008878(v9, v9[3]);
  v7 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_100005B2C(v9);

  return v7;
}

- (id)makeCallDetailsCoordinatorWithBannerPresentationManager:(id)a3 existingCoordinator:(id)a4 deferredPresentationManager:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = self;
  v9 = iPadAudioCallViewController.makeCallDetailsCoordinator(bannerPresentationManager:existingCoordinator:deferredPresentationManager:)(v7, a4);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v9;
}

- (id)makeHeldCallControlsViewWithCallCenter:(id)a3 style:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  iPadAudioCallViewController.makeHeldCallControls(callCenter:style:)(v6, a4);
  v9 = v8;

  return v9;
}

- (void)showNameAndPhotoHUDIfNecessaryWithBannerPresentationManager:(id)a3 callCenter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10022AF68();
}

- (void)presentShareCard:(id)a3 source:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10022BB00(v6, a4);
}

- (void)updateScreeningTextFieldContainer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10022BC50(v4);
}

- (id)currentIMNicknameMatchingContact:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10022C48C();

  return v6;
}

- (BOOL)hasLastSeenPosterForCall:(id)a3
{
  v3 = a3;
  v5 = a3;
  v6 = self;
  LOBYTE(v3) = sub_100013F60(v3);

  return v3 & 1;
}

- (BOOL)lastSeenPosterDataIsSensitiveForCall:(id)a3
{
  v3 = a3;
  v5 = a3;
  v6 = self;
  LOBYTE(v3) = sub_100168C40(v3);

  return v3 & 1;
}

- (id)readCachedLastSeenPosterDataForCall:(id)a3
{
  v4 = self;
  v5 = a3;
  v6 = sub_100168D40(a3);
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

- (id)lastSeenPosterIMWallpaperMetadataForCall:(id)a3
{
  v5 = a3;
  v6 = self;
  v7 = sub_1001690A0(a3);

  return v7;
}

- (unint64_t)suggestedNewPosterSourceAfterCallConnects:(id)a3
{
  v5 = a3;
  v6 = self;
  v7 = sub_10022C6FC(a3);

  return v7;
}

- (BOOL)prefersShowingCachedLastSeenPosterBeforeCallConnected:(id)a3
{
  v3 = a3;
  v5 = a3;
  v6 = self;
  LOBYTE(v3) = sub_10022CD10(v3);

  return v3 & 1;
}

- (void)writeToLastSeenPosterCacheIfNecessaryForCall:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10022D0F8();
}

- (void)deleteAllUnarchivedPosterDirectories
{
  v2 = self;
  sub_10022EF84();
}

- (TUCall)callToUseForWallpaper
{
  v2 = self;
  v3 = sub_10022F7B4();

  return v3;
}

- (BOOL)hasNoCallsOrOnlyEndedCalls
{
  v2 = self;
  v3 = sub_100230150();

  return v3;
}

- (void)updateDimmingView:(id)a3 with:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  v9 = self;
  sub_100230294(a3, width, height);
}

- (id)createDimmingView
{
  v2 = self;
  v3 = sub_1002303FC();

  return v3;
}

- (void)blockWithHandle:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100230854(v4);
}

- (void)reportWithCall:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100230B90(v4);
}

- (void)createContactWithHandle:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10016AE2C(v4);
}

- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  iPadAudioCallViewController.contactViewController(_:didCompleteWith:)(v8, v10);
}

- (BOOL)shouldUpdateBackgroundForEmergencyCall
{
  v2 = self;
  v3 = sub_10023102C();

  return v3;
}

- (void)updateBackgroundForEmergencyCall
{
  v2 = self;
  sub_1002311C8();
}

- (void)presentFullScreenPeoplePicker
{
  v2 = self;
  sub_10023AF84();
}

- (void)dismissPeoplePicker
{
  v2 = self;
  sub_10023BBE0();
}

- (void)addMiddleStackView
{
  v2 = self;
  sub_100245CE8();
}

- (void)addSubviewsToMiddleStackViewWithView:(id)a3 priority:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_100245F74(v6, a4);
}

- (void)removeSubviewFromMiddleStackViewWithView:(id)a3
{
  v4 = a3;
  v6 = self;
  v5.super.super.isa = v4;
  sub_1002461C8(v5);
}

- (void)setupCallHoldingObservers
{
  v2 = self;
  iPadAudioCallViewController.setupCallHoldingObservers()();
}

- (void)handleCallRecordingCountdownNotificationWithNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  iPadAudioCallViewController.handleCallRecordingCountdownNotification(notification:)();

  (*(v5 + 8))(v8, v4);
}

- (void)updateWaitOnHoldServiceWithCall:(id)a3
{
  v4 = a3;
  v5 = self;
  iPadAudioCallViewController.updateWaitOnHoldService(call:)(v4);
}

- (void)beginWaitOnHoldSession
{
  v2 = self;
  iPadAudioCallViewController.beginWaitOnHoldSession()();
}

- (void)endWaitOnHoldSession
{
  v2 = self;
  iPadAudioCallViewController.endWaitOnHoldSession()();
}

- (void)dismissWaitOnHoldTip
{
  v2 = self;
  sub_100036558();
}

- (void)tipKitStartWaitOnHoldObservation
{
  v2 = self;
  sub_10024937C();
}

- (void)tipKitStopWaitOnHoldObservation
{
  v2 = self;
  sub_10024A418();
}

- (void)displayWaitOnHoldTip
{
  v2 = self;
  sub_10024AA74();
}

@end