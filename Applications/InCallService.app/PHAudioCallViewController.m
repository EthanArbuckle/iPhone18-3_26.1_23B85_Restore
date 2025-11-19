@interface PHAudioCallViewController
+ (BOOL)wallpaperContentIsSensitive:(id)a3;
+ (NSArray)contactKeysToFetch;
- (AVSpeechSynthesizer)speechSynthesizer;
- (BOOL)_isScreeningAnyCallGroup:(id)a3;
- (BOOL)_isScreeningCallGroup:(id)a3;
- (BOOL)allowsBanners;
- (BOOL)allowsMenuButtonDismissal;
- (BOOL)allowsOrientationChangeEvents;
- (BOOL)callHasContactPosterWithHorizontalName;
- (BOOL)callHasContactPosterWithVerticalName;
- (BOOL)callHasNoContactPoster;
- (BOOL)callIsRecording;
- (BOOL)callParticipantsViewControllerShouldShowLargeAvatar:(id)a3;
- (BOOL)callRecordingAllowed;
- (BOOL)callStateCanShowNewPoster:(id)a3;
- (BOOL)canDoInfoButtonCoinFlipWith:(id)a3 contactStore:(id)a4;
- (BOOL)canRecord;
- (BOOL)canShowBackgroundImage;
- (BOOL)canShowPosterBadgeInAudioCallView:(id)a3;
- (BOOL)canShowPosterImage;
- (BOOL)currentCallStateCanShowNewPoster;
- (BOOL)desiresLockButtonEvents;
- (BOOL)desiresLockButtonEventsForCallContainer:(id)a3;
- (BOOL)fetchLockState;
- (BOOL)hasLastSeenPosterForCall:(id)a3;
- (BOOL)hasNoCallsOrOnlyEndedCalls;
- (BOOL)holdingConditions;
- (BOOL)isCallRecordingActive;
- (BOOL)isCallSmartHoldingSessionActive:(id)a3;
- (BOOL)isPickedRouteReceiver;
- (BOOL)isPickedRouteSpeaker;
- (BOOL)isReadyToShowCallDetails;
- (BOOL)isShowSOSConfirmationSupported;
- (BOOL)isShowingBackgroundImage;
- (BOOL)isShowingPosterBadge;
- (BOOL)isUserInterfaceShowing;
- (BOOL)lastSeenPosterDataIsSensitiveForCall:(id)a3;
- (BOOL)middlePillContainerIsShowing;
- (BOOL)needsDismissalAssertion;
- (BOOL)prefersShowingCachedLastSeenPosterBeforeCallConnected:(id)a3;
- (BOOL)prioritizedCallIsInSameCallGroupAsCall:(id)a3;
- (BOOL)recordingSupportedForCurrentCallDsplayStyles;
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
- (BOOL)shouldUseHeroImageLayout;
- (BOOL)usesCompactMulticallUI;
- (BOOL)videoStreamingIsGoingOn;
- (IMNicknameProvider)imNicknameProvider;
- (PHAudioButtonsViewControllerProtocol)buttonsViewController;
- (PHAudioCallControlsSupplementalButton)callTransferButton;
- (PHAudioCallControlsSupplementalButton)extensionNumberButton;
- (PHAudioCallControlsSupplementalButton)mergeCallsButton;
- (PHAudioCallControlsSupplementalButton)useRTTButton;
- (PHAudioCallViewController)initWithCallDisplayStyleManager:(id)a3 callCenter:(id)a4 featureFlags:(id)a5;
- (PHAudioCallVoiceLoopViewController)voiceLoopViewController;
- (PHCallTranslationController)translationController;
- (PHInCallKeypadViewController)keypadViewController;
- (PHInCallRootViewControllerProtocol)inCallRootViewController;
- (SOSEmergencyCallVoiceLoopManager)voiceLoopManager;
- (TUCall)activeCall;
- (TUCall)callToUseForWallpaper;
- (TUCall)frontmostCall;
- (TUCall)prioritizedCall;
- (UILayoutGuide)translationLayoutGuide;
- (UIStackView)middlePillContainer;
- (UIStackView)topLeadingContainer;
- (UIViewController)screeningViewController;
- (UIViewController)waitOnHoldViewController;
- (double)callDetailsButtonPaddingTop;
- (double)callDetailsButtonPaddingTop_PERCENT;
- (double)callDetailsButtonPaddingTrailing;
- (double)callDetailsButtonPaddingTrailing_PERCENT;
- (double)callWaitingAnimationDelay;
- (double)screeningTextFieldPadding;
- (id)ambientParticipantsViewConstraintsForView:(id)a3 largeAvatar:(BOOL)a4;
- (id)answerRequestForCall:(id)a3;
- (id)associatedCallGroupForCall:(id)a3;
- (id)audioRouteMenu;
- (id)bottomBarBottomConstraintToUse;
- (id)buttonsViewBottomConstraintToUse;
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
- (id)createPosterBlurryBackgroundView;
- (id)currentIMNicknameMatchingContact:(id)a3;
- (id)customColorForParticipantLabelWithCall:(id)a3;
- (id)customColorForStatusLabelWithCall:(id)a3;
- (id)customFontForParticipantLabelWithCall:(id)a3;
- (id)customizedTitleForItemInBar:(id)a3 withActionType:(int64_t)a4;
- (id)fallbackHorizontalNameLabelString;
- (id)fallbackImageDataForCall:(id)a3;
- (id)getAudioRouteMenu;
- (id)getCurrentCall;
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
- (id)readCachedLastSeenPosterDataForCall:(id)a3;
- (id)routesForAudioRoutingMenuController:(id)a3;
- (id)screeningContainerView;
- (id)sharedProfileStateOracleForCall:(id)a3;
- (id)snapshotUIImageView;
- (id)wallpaperTitleStyleAttributes;
- (id)wallpaperTitleStyleAttributesForCall:(id)a3;
- (id)wallpaperTypeForBundleID:(id)a3;
- (id)wallpaperTypeForCNWallpaper:(id)a3;
- (id)wallpaperTypeForIMWallpaperMetadata:(id)a3;
- (int64_t)bottomBarCallStateInBar:(id)a3;
- (int64_t)bottomBarStateForCallWaitingCall;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (unint64_t)currentDisplayedPosterSourceForCall:(id)a3;
- (unint64_t)suggestedNewPosterSourceAfterCallConnects:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
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
- (void)addBottomBarSubView;
- (void)addButton:(id)a3;
- (void)addCallHoldingIfNeeded:(id)a3;
- (void)addCallParticipantsSubView;
- (void)addCallRecordingIfNeededWithButtonContainer:(id)a3 pillContainer:(id)a4;
- (void)addDefaultBackgroundGradientView;
- (void)addDimmingView;
- (void)addEnhancedEmergencyIntermittentStateLabelWithState:(int64_t)a3;
- (void)addHoldingButton:(id)a3;
- (void)addMediaRequestViewController:(id)a3;
- (void)addPosterBlurToPosterVC:(id)a3 nameLabelWrapper:(id)a4;
- (void)addRecordingIndicatorWithPillContainer:(id)a3;
- (void)addWebRTCViewController:(id)a3;
- (void)alertWillInvoke;
- (void)animateInfoButtonCoinFlipIfNeeded;
- (void)applyBlockButtonPositionAndSizeCapToElement:(id)a3;
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
- (void)audioCallControlsViewControllerDidTapVideoStreamingButton;
- (void)audioCallControlsViewControllerDidToggleMuteButton:(BOOL)a3;
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
- (void)blockButtonTapped;
- (void)blockWithHandle:(id)a3;
- (void)bottomBarActionPerformed:(int64_t)a3 withCompletionState:(int64_t)a4 fromBar:(id)a5;
- (void)bringWebRTCViewControllerToFront:(id)a3;
- (void)callCenterCallStatusChangedNotification:(id)a3;
- (void)callCenterScreeningStatusChangedNotification:(id)a3;
- (void)callContinuityStateChangedNotification:(id)a3;
- (void)callDetailsViewButtonTapped;
- (void)callDisplayContextChangedNotification:(id)a3;
- (void)callDisplayStyleDidChangeFromStyle:(int64_t)a3 toStyle:(int64_t)a4;
- (void)callIsEmergencyChangedNotification:(id)a3;
- (void)callIsScreenSharingChangedNotification:(id)a3;
- (void)callKeypadDataSourceChangedNotification:(id)a3;
- (void)callOnHoldChangedNotification:(id)a3;
- (void)callParticipantsViewController:(id)a3 didPerformActionType:(int64_t)a4;
- (void)callParticipantsViewController:(id)a3 didShowMultipleLabel:(BOOL)a4;
- (void)callParticipantsViewController:(id)a3 willShowMultipleLabel:(BOOL)a4;
- (void)callParticipantsViewControllerDidTapCallDetailsGestureRecognizer:(id)a3;
- (void)callRecordingAfterFullScreenRequest:(id)a3;
- (void)callRecordingCountdownStarted:(id)a3;
- (void)callRecordingStateChanged:(id)a3;
- (void)callTransferButtonTapped;
- (void)clearMenuItemRegistration:(id)a3;
- (void)conferenceParticipantCallsChangedNotification:(id)a3;
- (void)constrainBottomBar;
- (void)constrainBottomBarBottom;
- (void)constrainButtonsViewBottom;
- (void)contactDidChange:(id)a3;
- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4;
- (void)contactViewController:(id)a3 didExecuteBlockAndReportContactAction:(id)a4;
- (void)copyCallWaitingConstraintsFromParticipantsView;
- (void)createContactWithHandle:(id)a3;
- (void)createDetachedPosterNameViewModel:(id)a3;
- (void)createPosterContainerWithDimmingLayer;
- (void)dealloc;
- (void)deleteAllUnarchivedPosterDirectories;
- (void)dismissNavigationController;
- (void)dismissNavigationControllerAndUpdateScene;
- (void)dismissPeoplePicker;
- (void)dismissScreenSharingIndicatorView;
- (void)dismissWaitOnHoldTip;
- (void)displayDialledNumberDetailsForCallBufferScreen;
- (void)displayScreenSharingIndicator;
- (void)displayWaitOnHoldTip;
- (void)endWaitOnHoldSession;
- (void)extensionNumberButtonTapped;
- (void)fadeInBottomBar;
- (void)finishNewPosterUpdatesWithCompletion:(id)a3;
- (void)gameControllerDidChangeContext;
- (void)handleCallRecordingCountdownNotificationWithNotification:(id)a3;
- (void)handleCancelPressedInCallBufferScreen;
- (void)handleDeviceLockEventWithSourceType:(int64_t)a3;
- (void)handleTUCallSupportsTTYWithVoiceChangedNotification:(id)a3;
- (void)handleTUCallTTYTypeChangedNotification:(id)a3;
- (void)handleViewDidAppear:(BOOL)a3;
- (void)handleViewDidDisappear:(BOOL)a3;
- (void)handleViewWillAppear:(BOOL)a3;
- (void)handleViewWillDisappear:(BOOL)a3;
- (void)hardPauseDigitsStateChangedNotification:(id)a3;
- (void)hardwareButtonEventNotification:(id)a3;
- (void)hideCallControls;
- (void)hideFirstNameLabelOnKeypad;
- (void)hideOrShowKeypadBackgroundView;
- (void)hideOrShowScreeningBackgroundView;
- (void)hideOrShowThirdPartyBackgroundImageWithImage:(id)a3;
- (void)hideRTTConversationIfNeeded;
- (void)hideWebRTCViewController:(id)a3;
- (void)insertBelowDimmingLayerWithNewView:(id)a3 containerView:(id)a4;
- (void)insertWebViewUnderButtonControls:(id)a3;
- (void)invertColorCallHoldingButtonColor:(BOOL)a3;
- (void)invertColorCallRecordingButtonColor:(BOOL)a3;
- (void)layoutParticipantsViewAnimated:(BOOL)a3 crossfade:(BOOL)a4;
- (void)loadView;
- (void)localAudioToggledWithIsMuted:(BOOL)a3;
- (void)lockScreenVisibilityDidChange:(id)a3;
- (void)mergeCallsButtonTapped;
- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4;
- (void)performBottomBarActionType:(int64_t)a3;
- (void)positionParticipantsViewStatusLabelToBeHorizontallyCenteredToInfoButton:(id)a3;
- (void)positionPosterBadgeToBeHorizontallyCenteredToInfoButton:(id)a3;
- (void)presentContactCard;
- (void)presentDisconnectionAlert:(id)a3;
- (void)presentFullScreenPeoplePicker;
- (void)presentMoreMenu:(id)a3 source:(id)a4;
- (void)presentMoreMenu:(id)a3 source:(id)a4 alongsideTransition:(id)a5;
- (void)presentShareCard:(id)a3 source:(id)a4;
- (void)presentWaitOnHoldEndForAnotherCallAlertWithCallerName:(id)a3 completionHandler:(id)a4;
- (void)receptionistStateChanged:(id)a3;
- (void)refreshCallDetailsViewButton;
- (void)refreshExtensionNumberButton;
- (void)refreshUseRTTButton;
- (void)releaseDismissalAssertion;
- (void)removeAllParticipantsViewConstraints;
- (void)removeBackgroundContactImageView;
- (void)removeButtonFrom:(id)a3;
- (void)removeDefaultBackgroundGradientView;
- (void)removeEmergencyTextViaSatelliteUI;
- (void)removeEnhancedEmergencyIntermittentStateLabel;
- (void)removeFirstNameLabelFromViewIfNeeded;
- (void)removeMediaRequestViewController:(id)a3;
- (void)removeNameLabelForAlwaysOnDisplay;
- (void)removePosterViewController:(BOOL)a3 completion:(id)a4;
- (void)removeScreeningBackgroundView;
- (void)removeSupplementalButtons;
- (void)removeWebRTCViewController:(id)a3;
- (void)removeWebRTCViewControllerForPIP:(id)a3;
- (void)reportWithCall:(id)a3;
- (void)requestAnimationToFullScreenWebView;
- (void)requestHapticForRequest;
- (void)requestToAddErrorLabelWithRetryable:(BOOL)a3;
- (void)requestToAddMitigationLabel;
- (void)requestToAddPhotoMitigationLabel;
- (void)requestToAddResumeCameraLabel;
- (void)requestToDisableMediaUploadButton;
- (void)requestToDisableVideoStreamingButton;
- (void)requestToEnableMediaUploadButton;
- (void)requestToEnableVideoStreamingButton;
- (void)requestToPresentMediaUploadRequestBanner;
- (void)requestToPresentMediaUploadRequestBannerDuringStreaming;
- (void)requestToPresentVideoStreamingRequestBanner;
- (void)requestToRemoveEnhancedEmergencyIntermittentStateLabel;
- (void)resetParticipantsViewConstraints;
- (void)restartCallBufferTimer;
- (void)restoreParticipantsViewStatusLabelForFullScreen;
- (void)revealAudioRoutingDeviceListAnimated:(BOOL)a3;
- (void)revealAudioRoutingDeviceListAnimatedIfNeeded;
- (void)routesChangedForRouteController:(id)a3;
- (void)screenSharingInteractionController:(id)a3 didUpdateRemoteControlStatus:(BOOL)a4;
- (void)setActiveState:(unsigned __int16)a3;
- (void)setAlertModeNeededState:(unsigned __int16)a3;
- (void)setBackgroundColor:(id)a3 animated:(BOOL)a4;
- (void)setBackgroundImage:(id)a3;
- (void)setCallBufferState:(unsigned __int16)a3;
- (void)setCurrentState:(unsigned __int16)a3 animated:(BOOL)a4;
- (void)setDetachedPosterNameViewModel:(id)a3;
- (void)setEmergencyTextViaSatelliteUI;
- (void)setEndedState:(unsigned __int16)a3;
- (void)setEndingState:(unsigned __int16)a3;
- (void)setIdleState:(unsigned __int16)a3;
- (void)setInCallRootViewController:(id)a3;
- (void)setKeypadPosterNameViewModel:(id)a3;
- (void)setMiddleViewButtonsIfNecessary;
- (void)setMiddleViewState:(unsigned __int16)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setOutgoingRingingState:(unsigned __int16)a3;
- (void)setParticipantsViewControllersShouldIgnoreUpdates:(BOOL)a3;
- (void)setParticipantsViewShouldShowParticipantLabel:(BOOL)a3;
- (void)setPosterNameViewModel:(id)a3;
- (void)setPrioritizedCall:(id)a3;
- (void)setRingingState:(unsigned __int16)a3;
- (void)setRootView;
- (void)setScreeningState:(unsigned __int16)a3 animated:(BOOL)a4;
- (void)setScreeningState:(unsigned __int16)a3 animated:(BOOL)a4 overrideWithIsUnlocked:(BOOL)a5;
- (void)setShowsBlockButton:(BOOL)a3;
- (void)setShowsCallDetailsViewButton:(BOOL)a3;
- (void)setShowsCallWaitingParticipantView:(BOOL)a3;
- (void)setUpBlockButton;
- (void)setUpCallDetailsViewButton;
- (void)setUpLayoutGuidesForParticipantsViewController:(id)a3;
- (void)setUpMiddlePillContainerConstraints;
- (void)setUpPosterBadgeViewIfNecessary;
- (void)setViewsHiddenForAudioRoutes:(BOOL)a3 animated:(BOOL)a4;
- (void)setWaitOnHoldState:(unsigned __int16)a3 animated:(BOOL)a4;
- (void)setWaitingState:(unsigned __int16)a3;
- (void)setupAmbientAudioRoutesControlViewIfNeeded;
- (void)setupCallHoldingObservers;
- (void)setupDimmingViewForAlwaysOnDisplay;
- (void)setupHeldCallControlsViewIfNeeded;
- (void)setupNameLabelForAlwaysOnDisplay;
- (void)showAddParticipantSheet;
- (void)showBlockAlertForCall:(id)a3;
- (void)showBlockAlertForHandle:(id)a3;
- (void)showCallControls;
- (void)showCallDetailsIfNecessaryForDisplayStyle:(int64_t)a3;
- (void)showFirstNameLabelOnKeypad;
- (void)showNameAndPhotoHUDIfNecessaryWithBannerPresentationManager:(id)a3 callCenter:(id)a4;
- (void)showPosterBlurTransition;
- (void)showRTTConversation;
- (void)speakAlertUtteranceIfNecessary;
- (void)startAutoCountdownAlert;
- (void)startCallBufferScreenCountdown;
- (void)startCallRecording;
- (void)startMessagePlayback;
- (void)startSuppressionOfSTKAlerts;
- (void)stopCallBufferTimer;
- (void)stopCallRecording;
- (void)stopMessagePlayback;
- (void)stopSuppressionOfSTKAlerts;
- (void)suppressRingtoneForIncomingCall;
- (void)suspendPosterAndCancelDelay:(BOOL)a3;
- (void)synchronizeSingleLabelViewWithPosterText;
- (void)tipKitStartWaitOnHoldObservation;
- (void)tipKitStopWaitOnHoldObservation;
- (void)traitCollectionDidChange:(id)a3;
- (void)transitionToFullScreenIfNecessary;
- (void)transitionToNewPoster:(id)a3 showingPosterTransition:(BOOL)a4 shouldBlurPoster:(BOOL)a5 completion:(id)a6;
- (void)triggerAutoCountdownIfAvailable;
- (void)updateAmbientAudioRoutesVisibility;
- (void)updateBackgroundContactImageViewWithImage:(id)a3 animated:(BOOL)a4;
- (void)updateBackgroundForEmergencyCall;
- (void)updateBottomBarAlphaWithCurrentState:(unsigned __int16)a3;
- (void)updateBottomBarButtonsWithCall:(id)a3;
- (void)updateCallHoldingIfNeeded:(id)a3;
- (void)updateCallHoldingPositionIfNeeded;
- (void)updateCallParticipantsViewControllerCallGroups;
- (void)updateCallRecordingIfNeededWithButtonContainer:(id)a3 pillContainer:(id)a4;
- (void)updateCallRecordingPositionIfNeeded;
- (void)updateCallRecordingViewBackgroundMaterialType:(unint64_t)a3;
- (void)updateCallTranslationIfNeeded;
- (void)updateCurrentState;
- (void)updateDimmingValuesFor:(unsigned __int16)a3;
- (void)updateDimmingView;
- (void)updateEnhancedEmergencyViewWhenKeypadPresented;
- (void)updateHardPauseDigitsState;
- (void)updateIncomingBottomBarControlState;
- (void)updateLayeredBackgroundWallpaper;
- (void)updateLayoutSupplementalButtons;
- (void)updateLegacyBackgroundImageVisibilityWithShouldShowWallpaper:(BOOL)a3;
- (void)updateParticipantConstraintsForPosterName:(id)a3;
- (void)updateParticipantsLabelForView:(id)a3 isHidden:(BOOL)a4;
- (void)updatePosterBadgeView:(BOOL)a3 to:(id)a4;
- (void)updatePosterDimmingAreaWith:(CGRect)a3;
- (void)updatePosterViewModelForParticipantsView:(id)a3;
- (void)updatePresentationStateWithAllowed:(BOOL)a3;
- (void)updateSaliencyRectIfNeeded;
- (void)updateScreenSharingDisableUpdateMask;
- (void)updateScreenSharingIndicatorView;
- (void)updateShareNameAndPhotoHUDPresentationIfNeeded;
- (void)updateShouldShowLargeAvatar;
- (void)updateTextFieldPadding:(id)a3 padding:(double)a4;
- (void)updateTranslationBackgroundView:(BOOL)a3;
- (void)updateTranslationPosterName:(BOOL)a3;
- (void)updateViewForEmergencyCallIfNecessary;
- (void)updateViewsForHeldCallControlsViewIfNeeded;
- (void)updateWaitOnHoldServiceWithCallWithCall:(id)a3;
- (void)updateWaitOnHoldViewIfNeeded;
- (void)useRTTButtonTapped;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)wantsHoldMusicChangedNotification:(id)a3;
- (void)writeToLastSeenPosterCacheIfNecessaryForCall:(id)a3;
@end

@implementation PHAudioCallViewController

- (BOOL)shouldRenderAlertTextColor
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [(PHCallViewController *)self currentState]== 8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController shouldRenderAlertTextColor = %d", v5, 8u);
  }

  return [(PHCallViewController *)self currentState]== 8;
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

- (BOOL)desiresLockButtonEvents
{
  v2 = self;
  v3 = [(PHAudioCallViewController *)self callCenter];
  LOBYTE(v2) = [(PHAudioCallViewController *)v2 desiresLockButtonEventsForCallContainer:v3];

  return v2;
}

- (BOOL)isPickedRouteReceiver
{
  v2 = [(PHAudioCallViewController *)self callCenter];
  v3 = [v2 routeController];
  v4 = [v3 pickedRoute];
  v5 = [v4 isReceiver];

  return v5;
}

- (BOOL)allowsMenuButtonDismissal
{
  v2 = [(PHAudioCallViewController *)self callCenter];
  v3 = [v2 incomingCall];
  v4 = v3 == 0;

  return v4;
}

- (BOOL)allowsBanners
{
  v2 = [(PHAudioCallViewController *)self callCenter];
  v3 = [v2 incomingCall];
  v4 = v3 == 0;

  return v4;
}

- (BOOL)usesCompactMulticallUI
{
  v3 = [(PHAudioCallViewController *)self features];
  if ([v3 callManagerEnabled])
  {
    v4 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([v4 callDisplayStyle] == 3)
    {
      v5 = [(PHAudioCallViewController *)self features];
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

- (TUCall)prioritizedCall
{
  WeakRetained = objc_loadWeakRetained(&self->_prioritizedCall);

  return WeakRetained;
}

- (void)updateViewsForHeldCallControlsViewIfNeeded
{
  v3 = +[PHInCallUtilities sharedInstance];
  v4 = [v3 isIPadIdiom];

  if ((v4 & 1) == 0)
  {
    v5 = [(PHAudioCallViewController *)self heldCallControlsView];
    [v5 removeFromSuperview];

    [(PHAudioCallViewController *)self setHeldCallControlsView:0];
    [(PHAudioCallViewController *)self setupHeldCallControlsViewIfNeeded];
    [(PHAudioCallViewController *)self constrainButtonsViewBottom];

    [(PHAudioCallViewController *)self constrainBottomBarBottom];
  }
}

- (void)setupHeldCallControlsViewIfNeeded
{
  v3 = [(PHAudioCallViewController *)self heldCallControlsView];

  if (!v3)
  {
    v4 = [(PHAudioCallViewController *)self callCenter];
    v5 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    v6 = -[PHAudioCallViewController makeHeldCallControlsViewWithCallCenter:style:](self, "makeHeldCallControlsViewWithCallCenter:style:", v4, [v5 callDisplayStyle]);
    [(PHAudioCallViewController *)self setHeldCallControlsView:v6];

    v7 = [(PHAudioCallViewController *)self heldCallControlsView];

    if (v7)
    {
      v8 = [(PHAudioCallViewController *)self view];
      v9 = [(PHAudioCallViewController *)self heldCallControlsView];
      [v8 addSubview:v9];

      v10 = [(PHAudioCallViewController *)self heldCallControlsView];
      [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

      v11 = [(PHAudioCallViewController *)self callDisplayStyleManager];
      if ([v11 callDisplayStyle] == 3)
      {
        v12 = [(PHAudioCallViewController *)self features];
        v13 = [v12 isDominoEnabled];

        if (v13)
        {
          v14 = [(PHAudioCallViewController *)self heldCallControlsView];
          v15 = [v14 leadingAnchor];
          v16 = [(PHAudioCallViewController *)self view];
          v17 = [v16 leadingAnchor];
          v18 = [v15 constraintEqualToAnchor:v17 constant:10.0];
          v39[0] = v18;
          v37 = [(PHAudioCallViewController *)self heldCallControlsView];
          v19 = [v37 bottomAnchor];
          v35 = [(PHAudioCallViewController *)self view];
          v34 = [v35 safeAreaLayoutGuide];
          [v34 bottomAnchor];
          v33 = v36 = v19;
          v32 = [v19 constraintEqualToAnchor:?];
          v39[1] = v32;
          v31 = [(PHAudioCallViewController *)self heldCallControlsView];
          v20 = [v31 trailingAnchor];
          v21 = [(PHAudioCallViewController *)self leadingSideLayoutGuide];
          v22 = [v21 trailingAnchor];
          v23 = [v20 constraintEqualToAnchor:v22 constant:20.0];
          v39[2] = v23;
          v24 = [NSArray arrayWithObjects:v39 count:3];
          [NSLayoutConstraint activateConstraints:v24];
LABEL_8:

          return;
        }
      }

      else
      {
      }

      v30 = [(PHAudioCallViewController *)self heldCallControlsView];
      v29 = [v30 leadingAnchor];
      v16 = [(PHAudioCallViewController *)self view];
      v17 = [v16 layoutMarginsGuide];
      v25 = [v17 leadingAnchor];
      v37 = [v29 constraintEqualToAnchor:v25];
      v38[0] = v37;
      v36 = [(PHAudioCallViewController *)self heldCallControlsView];
      v26 = [v36 trailingAnchor];
      v34 = [(PHAudioCallViewController *)self view];
      v33 = [v34 layoutMarginsGuide];
      [v33 trailingAnchor];
      v32 = v35 = v26;
      v31 = [v26 constraintEqualToAnchor:?];
      v38[1] = v31;
      v20 = [(PHAudioCallViewController *)self heldCallControlsView];
      v21 = [v20 bottomAnchor];
      v22 = [(PHAudioCallViewController *)self view];
      v23 = [v22 safeAreaLayoutGuide];
      v24 = [v23 bottomAnchor];
      v27 = [v21 constraintEqualToAnchor:v24];
      v38[2] = v27;
      v28 = [NSArray arrayWithObjects:v38 count:3];
      [NSLayoutConstraint activateConstraints:v28];

      v18 = v25;
      v14 = v30;
      v15 = v29;
      goto LABEL_8;
    }
  }
}

- (id)makeHeldCallControlsViewWithCallCenter:(id)a3 style:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = PHAudioCallViewController.makeHeldCallControls(callCenter:style:)(v6, a4);

  return v8;
}

- (void)constrainButtonsViewBottom
{
  v3 = [(PHAudioCallViewController *)self buttonsViewBottomConstraintToUse];
  if (v3)
  {
    v5 = v3;
    v4 = [(PHAudioCallViewController *)self buttonsViewBottomConstraint];
    [v4 setActive:0];

    [(PHAudioCallViewController *)self setButtonsViewBottomConstraint:v5];
    [v5 setActive:1];
    v3 = v5;
  }
}

- (id)buttonsViewBottomConstraintToUse
{
  v4 = [(PHAudioCallViewController *)self buttonsViewController];
  v5 = [v4 view];
  v6 = [v5 superview];

  if (!v6)
  {
    goto LABEL_26;
  }

  v7 = [(PHAudioCallViewController *)self emergencyPhotoPickerGrabberView];

  if (v7)
  {
    v8 = [(PHAudioCallViewController *)self buttonsViewController];
    v9 = [v8 view];
    v10 = [v9 bottomAnchor];
    v11 = [(PHAudioCallViewController *)self emergencyPhotoPickerGrabberView];
    v12 = [v11 topAnchor];
    v13 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    v14 = [v13 callDisplayStyle];
    if (v14 == 3)
    {
      v2 = [(PHAudioCallViewController *)self features];
      if ([v2 isDominoEnabled])
      {
        +[PHUIConfiguration ambientVerticalPadding];
        v16 = (v15 + 32.0) * -2.5;
      }

      else
      {
        v16 = -50.0;
      }
    }

    else
    {
      v16 = -50.0;
    }

LABEL_20:
    v28 = [v10 constraintEqualToAnchor:v12 constant:v16];
    if (v14 == 3)
    {
    }

LABEL_23:
    goto LABEL_27;
  }

  v17 = [(PHAudioCallViewController *)self heldCallControlsView];
  if (v17)
  {
    v18 = v17;
    v19 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([v19 callDisplayStyle] == 3)
    {
      v20 = [(PHAudioCallViewController *)self features];
      v21 = [v20 isDominoEnabled];

      if (v21)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v8 = [(PHAudioCallViewController *)self buttonsViewController];
    v9 = [v8 view];
    v10 = [v9 bottomAnchor];
    v11 = [(PHAudioCallViewController *)self heldCallControlsView];
    v25 = [v11 topAnchor];
LABEL_16:
    v12 = v25;
    v13 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    v14 = [v13 callDisplayStyle];
    v26 = 20.0;
    if (v14 == 3)
    {
      v2 = [(PHAudioCallViewController *)self features];
      if ([v2 isDominoEnabled])
      {
        +[PHUIConfiguration ambientVerticalPadding];
        v26 = v27 + 32.0;
      }
    }

    v16 = -v26;
    goto LABEL_20;
  }

LABEL_9:
  v22 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v22 callDisplayStyle] == 3)
  {
    v23 = [(PHAudioCallViewController *)self features];
    v24 = [v23 isDominoEnabled];

    if (v24)
    {
      v8 = [(PHAudioCallViewController *)self buttonsViewController];
      v9 = [v8 view];
      v10 = [v9 bottomAnchor];
      v11 = [(PHAudioCallViewController *)self view];
      v25 = [v11 bottomAnchor];
      goto LABEL_16;
    }
  }

  else
  {
  }

  v29 = +[PHInCallUtilities sharedInstance];
  v30 = [v29 isIPadIdiom];

  if ((v30 & 1) == 0)
  {
    v32 = +[UIScreen mainScreen];
    [v32 bounds];
    v34 = v33;
    v36 = v35;

    if (v34 >= v36)
    {
      v36 = v34;
    }

    +[PHUIConfiguration inComingCallAndInCallControlsBottomPaddingRatio];
    v38 = v37;
    v8 = [(PHAudioCallViewController *)self buttonsViewController];
    v9 = [v8 view];
    v10 = [v9 bottomAnchor];
    v11 = [(PHAudioCallViewController *)self view];
    v12 = [v11 bottomAnchor];
    v28 = [v10 constraintEqualToAnchor:v12 constant:-(v36 * v38)];
    goto LABEL_23;
  }

LABEL_26:
  v28 = 0;
LABEL_27:

  return v28;
}

- (PHAudioButtonsViewControllerProtocol)buttonsViewController
{
  if (!self->_buttonsViewController)
  {
    v3 = [(PHAudioCallViewController *)self features];
    v4 = [v3 isModernAudioBottomButtonsEnabled];

    v5 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if (v4)
    {
      v6 = [(PHAudioCallViewController *)self frontmostCall];
      v7 = [(PHAudioCallViewController *)self view];
      [v7 frame];
      v9 = [PHInCallAudioButtonsBuilder buildModernSixedUpViewControllerWithCallDisplayManager:v5 frontmostCall:v6 with:v8];
      buttonsViewController = self->_buttonsViewController;
      self->_buttonsViewController = v9;
    }

    else
    {
      v11 = [PHInCallAudioButtonsBuilder buildDeprecatedSixedUpViewControllerWithCallDisplayManager:v5];
      v12 = self->_buttonsViewController;
      self->_buttonsViewController = v11;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = self->_buttonsViewController;
      [(PHAudioCallViewController *)self addChildViewController:v13];
      [(PHAudioButtonsViewControllerProtocol *)self->_buttonsViewController setDelegate:self];
    }
  }

  v14 = self->_buttonsViewController;

  return v14;
}

- (void)constrainBottomBarBottom
{
  v3 = [(PHAudioCallViewController *)self bottomBarBottomConstraintToUse];
  if (v3)
  {
    v5 = v3;
    v4 = [(PHAudioCallViewController *)self bottomBarBottomConstraint];
    [v4 setActive:0];

    [(PHAudioCallViewController *)self setBottomBarBottomConstraint:v5];
    [v5 setActive:1];
    v3 = v5;
  }
}

- (id)bottomBarBottomConstraintToUse
{
  v4 = [(PHAudioCallViewController *)self heldCallControlsView];
  if (v4)
  {
    v5 = v4;
    v6 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([v6 callDisplayStyle] == 3)
    {
      v7 = [(PHAudioCallViewController *)self features];
      v8 = [v7 isDominoEnabled];

      if (v8)
      {
        goto LABEL_4;
      }
    }

    else
    {
    }

    v11 = [(PHCallViewController *)self bottomBar];
    v12 = [v11 bottomAnchor];
    v13 = [(PHAudioCallViewController *)self heldCallControlsView];
    v17 = [v13 topAnchor];
    goto LABEL_8;
  }

LABEL_4:
  v9 = +[UIDevice currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if (v10 == 1)
  {
    v11 = [(PHCallViewController *)self bottomBar];
    v12 = [v11 bottomAnchor];
    v13 = [(PHAudioCallViewController *)self view];
    v14 = [v13 safeAreaLayoutGuide];
    v15 = [v14 bottomAnchor];
    v16 = [v12 constraintEqualToAnchor:v15];
LABEL_13:

    goto LABEL_14;
  }

  v22 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v22 callDisplayStyle] == 3)
  {
    v23 = [(PHAudioCallViewController *)self features];
    v24 = [v23 isDominoEnabled];

    if (v24)
    {
      v11 = [(PHCallViewController *)self bottomBar];
      v12 = [v11 bottomAnchor];
      v13 = [(PHAudioCallViewController *)self view];
      v17 = [v13 bottomAnchor];
LABEL_8:
      v14 = v17;
      v15 = [(PHAudioCallViewController *)self callDisplayStyleManager];
      v18 = [v15 callDisplayStyle];
      v19 = 20.0;
      if (v18 == 3)
      {
        v2 = [(PHAudioCallViewController *)self features];
        if ([v2 isDominoEnabled])
        {
          +[PHUIConfiguration ambientVerticalPadding];
          v19 = v20 + 32.0;
        }
      }

      v16 = [v12 constraintEqualToAnchor:v14 constant:-v19];
      if (v18 == 3)
      {
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  v25 = +[PHInCallUtilities sharedInstance];
  [v25 isIPadIdiom];

  v11 = [(PHCallViewController *)self bottomBar];
  v12 = [v11 bottomAnchor];
  v13 = [(PHAudioCallViewController *)self view];
  v14 = [v13 bottomAnchor];
  v16 = [v12 constraintEqualToAnchor:v14];
LABEL_14:

  return v16;
}

- (void)updateCurrentState
{
  [(PHAudioCallViewController *)self refreshCallDetailsViewButton];
  v3 = [(PHAudioCallViewController *)self callCenter];
  v4 = [v3 currentCallGroups];

  v5 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if (![v5 callDisplayStyle])
  {
    v6 = [(PHAudioCallViewController *)self _isScreeningAnyCallGroup:v4];

    if (!v6)
    {
      goto LABEL_5;
    }

    v5 = +[UIApplication sharedApplication];
    v7 = [v5 delegate];
    v8 = [v7 currentInCallScene];
    [v8 requestTransitionToPresentationMode:0 shouldDismissCMASAlerts:0 analyticsSource:@"SBSUIInCallTransitionAnalyticsSourceCallScreeningBegin"];
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
      *v135 = 138412290;
      *&v135[4] = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Current Call Groups is %@", v135, 0xCu);
    }

    v10 = [(PHAudioCallViewController *)self callCenter];
    v11 = [v10 allCallsPassTest:&stru_100359C08];

    v12 = [(PHAudioCallViewController *)self callCenter];
    v13 = [v12 routeController];
    v14 = [v13 pickedRoute];
    v15 = [v14 deviceType];

    if (!v11 || [(PHCallViewController *)self currentState]!= 1 && [(PHCallViewController *)self currentState]!= 3 && v15 != 13)
    {
      goto LABEL_17;
    }

    v16 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([v16 callDisplayStyle] == 3)
    {
      v17 = [(PHAudioCallViewController *)self features];
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
      if (([(PHAudioCallViewController *)self isViewLoaded]& 1) == 0)
      {
        [(PHAudioCallViewController *)self loadView];
      }

      v21 = +[UIApplication sharedApplication];
      v22 = [v21 delegate];
      v23 = [v22 bannerPresentationManager];
      v24 = [(PHAudioCallViewController *)self callDetailsCoordinator];
      v25 = [(PHAudioCallViewController *)self makeCallDetailsCoordinatorWithBannerPresentationManager:v23 existingCoordinator:v24 deferredPresentationManager:self];

      v26 = [v25 outcome];
      if (v26 == 1)
      {
        [(PHAudioCallViewController *)self setCallDetailsCoordinator:0];
      }

      else if (v26 == 2)
      {
        v27 = [v25 coordinator];
        [(PHAudioCallViewController *)self setCallDetailsCoordinator:v27];
      }
    }

    if (![v4 count])
    {
      v32 = +[UIApplication sharedApplication];
      v33 = [v32 delegate];
      v34 = [v33 mostRecentlyDisconnectedAudioCall];

      if (!v34)
      {
        goto LABEL_76;
      }

      v35 = [v34 canDisplayAlertUI:{-[PHAudioCallViewController shouldPresentAlertButton](self, "shouldPresentAlertButton")}];
      v36 = sub_100004F84();
      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
      if (v35)
      {
        if (v37)
        {
          *v135 = 0;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Emergency call has been disconnected, setting state to PHInCallStateAlertModeNeededIfAvailable", v135, 2u);
        }

        [(PHAudioCallViewController *)self setCurrentState:8 animated:1];
        [(PHAudioCallViewController *)self updateCallParticipantsViewControllerCallGroups];
        [(PHAudioCallViewController *)self setEmergencyTextViaSatelliteUI];
        v38 = [(PHAudioCallViewController *)self buttonsViewController];
        v39 = [v38 view];

        [v39 updateControls];
        [(PHAudioCallViewController *)self setMiddleViewState:1];
        v40 = [(PHAudioCallViewController *)self currentMiddleView];
        v41 = objc_opt_respondsToSelector();

        if (v41)
        {
          v42 = [(PHAudioCallViewController *)self currentMiddleView];
          [v42 setButtonsEnabled:1];
        }
      }

      else
      {
        if (v37)
        {
          *v135 = 0;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call has been disconnected, setting state to PHInCallStateEnded", v135, 2u);
        }

        if ([(PHCallViewController *)self currentState]== 8)
        {
          v70 = [(PHCallViewController *)self bottomBar];
          [v70 setCurrentState:11];
        }

        [(PHAudioCallViewController *)self setCurrentState:7 animated:0];
        [(PHAudioCallViewController *)self removeEmergencyTextViaSatelliteUI];
        [(PHAudioCallViewController *)self updateCallParticipantsViewControllerCallGroups];
      }

      if (([v34 disconnectedReasonRequiresCallBackUI] & 1) == 0)
      {
LABEL_76:
        [(PHAudioCallViewController *)self removeEmergencyTextViaSatelliteUI];
      }

      goto LABEL_111;
    }

    if (v19)
    {
      v28 = sub_100004F84();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [(PHCallViewController *)self currentState];
        *v135 = 67109376;
        *&v135[4] = v29;
        *&v135[8] = 1024;
        *&v135[10] = v15 == 13;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: All calls are an endpoint elsewhere and previous state was %d OR shouldDismissForPickedRoute is %d, so setting state to PHInCallStateIdle", v135, 0xEu);
      }

      v30 = self;
      v31 = 0;
      goto LABEL_36;
    }

    if ([v4 count] != 1 || (-[PHAudioCallViewController callCenter](self, "callCenter"), v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(v43, "hasCurrentVideoCalls"), v43, (v44 & 1) != 0))
    {
      v45 = [v4 count];
      v46 = [(PHAudioCallViewController *)self callCenter];
      v47 = &v45[[v46 currentVideoCallCount]];

      if (v47 < 2)
      {
        goto LABEL_112;
      }

      v48 = sub_100004F84();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *v135 = 0;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: More than one call is active...", v135, 2u);
      }

      v49 = [(PHAudioCallViewController *)self callCenter];
      v50 = [v49 incomingCall];

      if (v50)
      {
        v51 = sub_100004F84();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *v135 = 0;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: ... and we have an incoming audio call...", v135, 2u);
        }

        v52 = [(PHAudioCallViewController *)self callCenter];
        v53 = [v52 callWithStatus:1];
        if (!v53)
        {
          v53 = [(PHAudioCallViewController *)self callCenter];
          v54 = [v53 callWithStatus:3];
          if (!v54)
          {
            v54 = [(PHAudioCallViewController *)self callCenter];
            v55 = [v54 callWithStatus:2];
            if (!v55)
            {
              v123 = [(PHAudioCallViewController *)self callCenter];
              v124 = [v123 currentVideoCallCount];

              if (!v124)
              {
                v61 = sub_100004F84();
                if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                {
                  *v135 = 0;
                  _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: ... but we don't also have an active call, so moving to PHInCallStateIncomingRinging", v135, 2u);
                }

                goto LABEL_147;
              }

LABEL_58:
              v56 = [(PHAudioCallViewController *)self _isScreeningAnyCallGroup:v4];
              v57 = [(PHAudioCallViewController *)self callCenter];
              v58 = [v57 ics_hasTooManyCallsForCallWaitingBanner];

              v59 = [(PHAudioCallViewController *)self features];
              if (([v59 shouldShowFullScreenCallWaiting] & 1) != 0 || (v56 & 1) != 0 || (v58 & 1) != 0 || -[PHAudioCallViewController usesCompactMulticallUI](self, "usesCompactMulticallUI"))
              {

                goto LABEL_63;
              }

              v104 = [(PHAudioCallViewController *)self callDisplayStyleManager];
              if ([v104 callDisplayStyle] == 3)
              {
                v105 = [(PHAudioCallViewController *)self features];
                v106 = [v105 isDominoEnabled];

                if (v106)
                {
LABEL_63:
                  v60 = sub_100004F84();
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                  {
                    *v135 = 0;
                    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: ... and we also have an active call, so moving to PHInCallStateCallWaiting", v135, 2u);
                  }

                  if (![(PHAudioCallViewController *)self usesCompactMulticallUI])
                  {
                    v30 = self;
                    v31 = 3;
LABEL_36:
                    [(PHAudioCallViewController *)v30 setCurrentState:v31 animated:1, *v135];
                    goto LABEL_112;
                  }

                  v61 = [(PHAudioCallViewController *)self prioritizedCall];
                  v62 = [v61 callUUID];
                  if (v62)
                  {
                    v63 = v62;
                    v64 = [(PHAudioCallViewController *)self callCenter];
                    v65 = [v64 incomingCall];
                    v66 = [v65 callUUID];
                    v67 = [(PHAudioCallViewController *)self prioritizedCall];
                    v68 = [v67 callUUID];

                    if (v66 != v68)
                    {
                      v69 = [(PHAudioCallViewController *)self prioritizedCall];
                      if ([(PHAudioCallViewController *)self isCallSmartHoldingSessionActive:v69])
                      {
                      }

                      else
                      {
                        v122 = [(PHCallViewController *)self currentState];

                        if (v122 == 12)
                        {
                          [(PHAudioCallViewController *)self setCurrentState:4 animated:1];
                        }
                      }

                      goto LABEL_114;
                    }

                    goto LABEL_148;
                  }

LABEL_147:

LABEL_148:
                  v30 = self;
                  v31 = 1;
                  goto LABEL_36;
                }
              }

              else
              {
              }

              v115 = sub_100004F84();
              if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
              {
                *v135 = 0;
                v116 = "UpdateCurrentState: ... and we also have an active call, so moving to PHInCallStateSingleCallActive (EmbedSwapBanner)";
LABEL_157:
                _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, v116, v135, 2u);
                goto LABEL_158;
              }

              goto LABEL_158;
            }
          }
        }

        goto LABEL_58;
      }

      v81 = [(PHAudioCallViewController *)self _isScreeningAnyCallGroup:v4];
      v82 = [(PHAudioCallViewController *)self usesCompactMulticallUI];
      v83 = v82;
      if (!v81)
      {
        v95 = sub_100004F84();
        v96 = os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT);
        if (v83)
        {
          if (v96)
          {
            *v135 = 0;
            _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: ... so setting state to PHInCallStateSingleCallActive", v135, 2u);
          }

          v97 = 4;
        }

        else
        {
          if (v96)
          {
            *v135 = 0;
            _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: ... so setting state to PHInCallStateMultipleCallsActive", v135, 2u);
          }

          v97 = 5;
        }

        [(PHAudioCallViewController *)self setCurrentState:v97 animated:1];
        [(PHAudioCallViewController *)self hideFirstNameLabelOnKeypad];
        goto LABEL_112;
      }

      if (v82)
      {
        v84 = [(PHAudioCallViewController *)self prioritizedCall];
        if (v84)
        {
          v85 = v84;
          v86 = [(PHAudioCallViewController *)self prioritizedCall];
          v87 = [v86 isScreening];

          if ((v87 & 1) == 0)
          {
            v115 = sub_100004F84();
            if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
            {
              *v135 = 0;
              v116 = "UpdateCurrentState: ... but no incoming call and the screening call isn't the prioritized one.";
              goto LABEL_157;
            }

LABEL_158:

            v30 = self;
            v31 = 4;
            goto LABEL_36;
          }
        }
      }

      v88 = sub_100004F84();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        *v135 = 0;
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: ... but no incoming call while one is being screened meaning the other was declined, so moving to PHInCallStateScreening", v135, 2u);
      }

      v89 = [(PHAudioCallViewController *)self frontmostCall];
      v90 = v89;
      if (v89)
      {
        v34 = v89;
      }

      else
      {
        v117 = [(PHAudioCallViewController *)self callCenter];
        v118 = [v117 currentCalls];
        v34 = [v118 firstObject];
      }

      v119 = sub_100004F84();
      if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
      {
        *v135 = 138412290;
        *&v135[4] = v34;
        _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: ... frontmost call %@", v135, 0xCu);
      }

      if (v34)
      {
        if ([(PHAudioCallViewController *)self isCallSmartHoldingSessionActive:v34])
        {
          waitOnHoldViewController = self->_waitOnHoldViewController;
          self->_waitOnHoldViewController = 0;

          v121 = 12;
        }

        else
        {
          v121 = 11;
        }

        [(PHAudioCallViewController *)self setCurrentState:v121 animated:1];
      }

LABEL_111:

LABEL_112:
      v100 = [(PHAudioCallViewController *)self topLeadingContainer];
      v101 = [(PHAudioCallViewController *)self middlePillContainer];
      [(PHAudioCallViewController *)self updateCallRecordingIfNeededWithButtonContainer:v100 pillContainer:v101];

      v102 = [(PHAudioCallViewController *)self topLeadingContainer];
      [(PHAudioCallViewController *)self updateCallHoldingIfNeeded:v102];

      [(PHAudioCallViewController *)self updateCallTranslationIfNeeded];
      screeningViewController = self->_screeningViewController;
      if (screeningViewController)
      {
        [(PHAudioCallViewController *)self screeningTextFieldPadding];
        [(PHAudioCallViewController *)self updateTextFieldPadding:screeningViewController padding:?];
      }

      goto LABEL_114;
    }

    v34 = [v4 lastObject];
    v71 = [v34 isConnected];
    v72 = [v34 canDisplayAlertUI:{-[PHAudioCallViewController shouldPresentAlertButton](self, "shouldPresentAlertButton")}];
    if ((v72 & 1) == 0)
    {
      [(PHAudioCallViewController *)self removeEmergencyTextViaSatelliteUI];
    }

    v73 = sub_100004F84();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      v74 = [v34 callStatus];
      v75 = [v34 isEmergency];
      v76 = [v34 isFailureExpected];
      v77 = [(PHAudioCallViewController *)self shouldPresentAlertButton];
      *v135 = 67110144;
      *&v135[4] = v72;
      *&v135[8] = 1024;
      *&v135[10] = v74;
      v136 = 1024;
      v137 = v75;
      v138 = 1024;
      v139 = v76;
      v140 = 1024;
      v141 = v77;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController will or will not update UI for alert: needsAlertUI = %d, callStatus = %d, isEmergency = %d, isFailureExpected = %d, alertServiceAvailable = %d", v135, 0x20u);
    }

    if (v72)
    {
      v78 = sub_100004F84();
      v79 = os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT);
      if (v71)
      {
        if (v79)
        {
          *v135 = 0;
          _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call status is not TUCallStatusActive, setting state to PHInCallStateAlertModeNeededWhileConnectedIfAvailable", v135, 2u);
        }

        v80 = 9;
      }

      else
      {
        if (v79)
        {
          *v135 = 0;
          _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call status is not TUCallStatusActive, setting state to PHInCallStateAlertModeNeededIfAvailable", v135, 2u);
        }

        v80 = 8;
      }

      [(PHAudioCallViewController *)self setCurrentState:v80 animated:1];
      [(PHAudioCallViewController *)self updateCallParticipantsViewControllerCallGroups];
      [(PHAudioCallViewController *)self setEmergencyTextViaSatelliteUI];
LABEL_109:
      v98 = [(PHAudioCallViewController *)self buttonsViewController];
      v99 = [v98 view];

      [v99 updateControls];
      goto LABEL_110;
    }

    if ([v34 status] == 4 || objc_msgSend(v34, "wantsHoldMusic"))
    {
      v91 = sub_100004F84();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        *v135 = 0;
        _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call status is TUCallStatusRinging, setting state to PHInCallStateIncomingRinging", v135, 2u);
      }

      v92 = self;
      v93 = 1;
      v94 = 0;
      goto LABEL_99;
    }

    if ([v34 status] != 1 && objc_msgSend(v34, "status") != 2)
    {
      if ([v34 status] == 5)
      {
        v127 = sub_100004F84();
        if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
        {
          *v135 = 0;
          _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call status is TUCallStatusDisconnecting, setting state to PHInCallStateEnding", v135, 2u);
        }

        v92 = self;
        v93 = 6;
      }

      else
      {
        if ([v34 status] != 6)
        {
          if ([v34 status] != 3)
          {
            goto LABEL_110;
          }

          LOWORD(v107) = [(PHCallViewController *)self currentState];
          v129 = sub_100004F84();
          if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
          {
            *v135 = 0;
            _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call status is Sending, setting state to PHInCallStateOutgoingRinging", v135, 2u);
          }

          [(PHAudioCallViewController *)self setCurrentState:2 animated:1];
          goto LABEL_179;
        }

        v128 = sub_100004F84();
        if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
        {
          *v135 = 0;
          _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call status is TUCallStatusDisconnected, setting state to PHInCallStateEnded", v135, 2u);
        }

        v92 = self;
        v93 = 7;
      }

      v94 = 1;
LABEL_99:
      [(PHAudioCallViewController *)v92 setCurrentState:v93 animated:v94];
LABEL_110:

      goto LABEL_111;
    }

    v107 = [(PHCallViewController *)self currentState];
    v108 = sub_100004F84();
    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
    {
      *v135 = 0;
      _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "UpdateCurrentState: Call status is TUCallStatusActive, and the call was initiated on this device", v135, 2u);
    }

    v109 = [v34 calls];
    v110 = [v109 count];

    v111 = sub_100004F84();
    v112 = os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT);
    if (v110 >= 2)
    {
      if (v112)
      {
        v113 = [v34 calls];
        v114 = [v113 count];
        *v135 = 134217984;
        *&v135[4] = v114;
        _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "There are %lu calls in call group, so setting state to PHInCallStateMultipleCallsActive", v135, 0xCu);
      }

      [(PHAudioCallViewController *)self setCurrentState:5 animated:1];
      if (!v107)
      {
        [(PHAudioCallViewController *)self setMiddleViewState:1];
        goto LABEL_110;
      }

      goto LABEL_179;
    }

    if (v112)
    {
      *v135 = 0;
      _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "There is only one call in call group, so setting state to PHInCallStateSingleCallActive", v135, 2u);
    }

    if ([(PHAudioCallViewController *)self _isScreeningCallGroup:v34]&& ![(PHAudioCallViewController *)self isCallSmartHoldingSessionActive:v34])
    {
      v125 = self;
      v126 = 11;
    }

    else
    {
      if (![(PHAudioCallViewController *)self isCallSmartHoldingSessionActive:v34])
      {
        [(PHAudioCallViewController *)self setCurrentState:4 animated:1];
        if (![(PHAudioCallViewController *)self hasKeypadUpdated])
        {
          [(PHAudioCallViewController *)self showFirstNameLabelOnKeypad];
        }

        goto LABEL_172;
      }

      v125 = self;
      v126 = 12;
    }

    [(PHAudioCallViewController *)v125 setCurrentState:v126 animated:1];
LABEL_172:
    if (self->_waitOnHoldTipView && [(PHCallViewController *)self currentState]== 4)
    {
      [(PHAudioCallViewController *)self displayWaitOnHoldTip];
    }

LABEL_179:
    if ((v107 & 0xFFFE) != 8)
    {
      goto LABEL_110;
    }

    v130 = [(PHCallViewController *)self bottomBar];
    [v130 setCurrentState:11];

    [(PHAudioCallViewController *)self updateCallParticipantsViewControllerCallGroups];
    v131 = +[PHInCallUtilities sharedInstance];
    if ([v131 isIPadIdiom])
    {
      v132 = [(PHAudioCallViewController *)self callDisplayStyleManager];
      if ([v132 callDisplayStyle] != 3)
      {

        goto LABEL_110;
      }

      v133 = [(PHAudioCallViewController *)self features];
      v134 = [v133 isDominoEnabled];

      if (!v134)
      {
        goto LABEL_110;
      }
    }

    else
    {
    }

    goto LABEL_109;
  }

  v20 = sub_100004F84();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *v135 = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController,UpdateCurrentState,invoking setCurrentState:PHInCallStateCallBuffer", v135, 2u);
  }

  [(PHAudioCallViewController *)self setCurrentState:10];
LABEL_114:
}

- (void)refreshCallDetailsViewButton
{
  v3 = [(PHAudioCallViewController *)self shouldShowCallDetailsViewButton];

  [(PHAudioCallViewController *)self setShowsCallDetailsViewButton:v3];
}

- (BOOL)shouldShowCallDetailsViewButton
{
  if ([(PHAudioCallViewController *)self shouldUseHeroImageLayout])
  {
LABEL_2:
    v4 = +[CNKFeatures sharedInstance];
    v5 = [v4 isMoreMenuEnabled];

    v6 = [(PHAudioCallViewController *)self frontmostCall];
    v7 = v6;
    if (v5)
    {
      v8 = [(PHAudioCallViewController *)self callCenter];
      v9 = [v8 currentCallGroups];

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v28;
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v28 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [*(*(&v27 + 1) + 8 * i) calls];
            v16 = [v15 count];

            if (v16 > 1)
            {
              v17 = 1;
              goto LABEL_26;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v17 = 0;
LABEL_26:

      v2 = [v7 provider];
      if ((([v2 isFaceTimeProvider] & 1) != 0 || v17 && -[PHAudioCallViewController shouldShowConferenceCallDetails](self, "shouldShowConferenceCallDetails")) && ((objc_msgSend(v7, "isActive", v27) & 1) != 0 || objc_msgSend(v7, "isOnHold")) && (objc_msgSend(v7, "isVideo") & 1) == 0)
      {
        v24 = [(PHAudioCallViewController *)self callDisplayStyleManager];
        if ([v24 callDisplayStyle])
        {
          v25 = [(PHAudioCallViewController *)self callDisplayStyleManager];
          v23 = [v25 callDisplayStyle] != 3;
        }

        else
        {
          v23 = 0;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v10 = [v6 provider];
      v20 = [v10 isFaceTimeProvider];
      if ((v20 & 1) != 0 || ([v7 provider], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "isTelephonyProvider")))
      {
        if ((([v7 isActive] & 1) != 0 || objc_msgSend(v7, "isOnHold")) && (objc_msgSend(v7, "isVideo") & 1) == 0)
        {
          v21 = [(PHAudioCallViewController *)self callDisplayStyleManager];
          if ([v21 callDisplayStyle])
          {
            v22 = [(PHAudioCallViewController *)self callDisplayStyleManager];
            v23 = [v22 callDisplayStyle] != 3;

            if (v20)
            {
              goto LABEL_41;
            }

            goto LABEL_40;
          }
        }

        v23 = 0;
        if (v20)
        {
          goto LABEL_41;
        }

LABEL_40:

LABEL_41:
        return v23;
      }
    }

    v23 = 0;
    goto LABEL_40;
  }

  v18 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v18 callDisplayStyle] == 3)
  {
    v19 = [(PHAudioCallViewController *)self features];
    v2 = [v19 isDominoEnabled];

    if (v2)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  return 0;
}

- (BOOL)shouldUseHeroImageLayout
{
  v2 = [(PHAudioCallViewController *)self features];
  v3 = [v2 isHeroImageEnabled];

  return v3;
}

- (TUCall)frontmostCall
{
  if ([(PHAudioCallViewController *)self usesCompactMulticallUI])
  {
    v3 = [(PHAudioCallViewController *)self activeCall];
  }

  else
  {
    v4 = [(PHAudioCallViewController *)self callCenter];
    v3 = [v4 frontmostCall];
  }

  return v3;
}

- (TUCall)activeCall
{
  if ([(PHAudioCallViewController *)self usesCompactMulticallUI]&& ([(PHAudioCallViewController *)self prioritizedCall], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(PHAudioCallViewController *)self prioritizedCall];
  }

  else
  {
    v5 = [(PHAudioCallViewController *)self callCenter];
    v4 = [v5 callWithStatus:1];

    if (!v4)
    {
      v6 = [(PHAudioCallViewController *)self callCenter];
      v4 = [v6 callWithStatus:4];

      if (!v4)
      {
        v7 = [(PHAudioCallViewController *)self callCenter];
        v4 = [v7 callWithStatus:3];

        if (!v4)
        {
          v8 = [(PHAudioCallViewController *)self callCenter];
          v4 = [v8 callWithStatus:2];
        }
      }
    }
  }

  return v4;
}

- (BOOL)needsDismissalAssertion
{
  v2 = [(PHAudioCallViewController *)self callCenter];
  v3 = [v2 hasCurrentAudioCalls];

  return v3;
}

- (id)makeCallDetailsCoordinatorWithBannerPresentationManager:(id)a3 existingCoordinator:(id)a4 deferredPresentationManager:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = self;
  v9 = PHAudioCallViewController.makeCallDetailsCoordinator(bannerPresentationManager:existingCoordinator:deferredPresentationManager:)(v7, a4);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v9;
}

- (void)removeEmergencyTextViaSatelliteUI
{
  if ([(PHAudioCallViewController *)self shouldUseHeroImageLayout])
  {
LABEL_2:
    v3 = [(PHAudioCallViewController *)self frontmostCall];
    if (!v3 || [v3 isEmergency])
    {
      [(PHAudioCallViewController *)self addDefaultBackgroundGradientView];
      v4 = [(PHAudioCallViewController *)self getParticipantsView_NotWaiting];
      v5 = [v4 singleCallLabelView];
      v6 = [v5 statusLabel];

      [v6 setAlpha:1.0];
      v7 = [(PHAudioCallViewController *)self emergencyTextViaSatelliteLabel];

      if (v7)
      {
        v8 = [(PHAudioCallViewController *)self emergencyTextViaSatelliteLabel];
        [v8 removeFromSuperview];

        [(PHAudioCallViewController *)self setEmergencyTextViaSatelliteLabel:0];
      }
    }

    goto LABEL_10;
  }

  v11 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v11 callDisplayStyle] == 3)
  {
    v9 = [(PHAudioCallViewController *)self features];
    v10 = [v9 isDominoEnabled];

    if (!v10)
    {
      return;
    }

    goto LABEL_2;
  }

LABEL_10:

  _objc_release_x1();
}

- (id)isolatedCall
{
  v2 = [(PHAudioCallViewController *)self callCenter];
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

+ (NSArray)contactKeysToFetch
{
  if (qword_1003B0FD8 != -1)
  {
    sub_1002571A8();
  }

  v3 = qword_1003B0FD0;

  return v3;
}

- (BOOL)shouldShowContactOrLastSeenWallpaper
{
  v3 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v3 callDisplayStyle] == 3)
  {
    v4 = [(PHAudioCallViewController *)self features];
    if ([v4 isDominoEnabled])
    {

      goto LABEL_13;
    }

    v10 = [(PHAudioCallViewController *)self shouldUseHeroImageLayout];

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v5 = [(PHAudioCallViewController *)self shouldUseHeroImageLayout];

    if (!v5)
    {
      return 0;
    }
  }

  if (![(PHAudioCallViewController *)self hasNoCallsOrOnlyEndedCalls]|| ([(PHAudioCallViewController *)self renderingViewController], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v8 = [(PHAudioCallViewController *)self callToUseForWallpaper];
    v3 = v8;
    if (v8)
    {
      v9 = [v8 contactIdentifier];

      if (v9)
      {
        if ([(PHAudioCallViewController *)self callStateCanShowNewPoster:v3]|| ![(PHAudioCallViewController *)self prefersShowingCachedLastSeenPosterBeforeCallConnected:v3])
        {
          v12 = [(PHAudioCallViewController *)self contactWallpaperForCall:v3];
          v7 = v12 != 0;
        }

        else
        {
          v7 = [(PHAudioCallViewController *)self hasLastSeenPosterForCall:v3];
        }

        goto LABEL_14;
      }
    }

LABEL_13:
    v7 = 0;
LABEL_14:

    return v7;
  }

  return 1;
}

- (BOOL)hasNoCallsOrOnlyEndedCalls
{
  v2 = self;
  v3 = sub_10001299C();

  return v3;
}

- (TUCall)callToUseForWallpaper
{
  v2 = self;
  v3 = sub_100012B70();

  return v3;
}

- (BOOL)prefersShowingCachedLastSeenPosterBeforeCallConnected:(id)a3
{
  v3 = a3;
  v5 = a3;
  v6 = self;
  LOBYTE(v3) = sub_100013460(v3);

  return v3 & 1;
}

- (void)addDefaultBackgroundGradientView
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SNAP: Adding default backgroundGradientView", buf, 2u);
  }

  if ([(PHAudioCallViewController *)self shouldUseHeroImageLayout])
  {
    goto LABEL_4;
  }

  v7 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v7 callDisplayStyle] != 3)
  {

    return;
  }

  v8 = [(PHAudioCallViewController *)self features];
  v9 = [v8 isDominoEnabled];

  if (v9)
  {
LABEL_4:
    v4 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([v4 callDisplayStyle] == 3)
    {
      v5 = [(PHAudioCallViewController *)self features];
      v6 = [v5 isDominoEnabled];

      if (v6)
      {
        return;
      }
    }

    else
    {
    }

    if ([(PHAudioCallViewController *)self shouldUpdateBackgroundForEmergencyCall])
    {
      [(PHAudioCallViewController *)self updateBackgroundForEmergencyCall];
    }

    else
    {
      v10 = [(PHAudioCallViewController *)self defaultBackgroundGradientView];

      if (!v10)
      {
        v32 = objc_alloc_init(PHAudioCallBackgroundGradientViewController);
        v11 = [(PHAudioCallBackgroundGradientViewController *)v32 view];
        [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
        v12 = [(PHAudioCallViewController *)self view];
        [v12 insertSubview:v11 atIndex:0];

        v30 = [v11 leadingAnchor];
        v31 = [(PHAudioCallViewController *)self view];
        v29 = [v31 leadingAnchor];
        v28 = [v30 constraintEqualToAnchor:v29];
        v34[0] = v28;
        v26 = [v11 trailingAnchor];
        v27 = [(PHAudioCallViewController *)self view];
        v25 = [v27 trailingAnchor];
        v24 = [v26 constraintEqualToAnchor:v25];
        v34[1] = v24;
        v23 = [v11 topAnchor];
        v13 = [(PHAudioCallViewController *)self view];
        v14 = [v13 topAnchor];
        v15 = [v23 constraintEqualToAnchor:v14];
        v34[2] = v15;
        v16 = [v11 bottomAnchor];
        v17 = [(PHAudioCallViewController *)self view];
        v18 = [v17 bottomAnchor];
        v19 = [v16 constraintEqualToAnchor:v18];
        v34[3] = v19;
        v20 = [NSArray arrayWithObjects:v34 count:4];
        [NSLayoutConstraint activateConstraints:v20];

        [(PHAudioCallViewController *)self setDefaultBackgroundGradientView:v11];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = [(PHAudioCallViewController *)self buttonsViewController];
          v22 = [v21 view];

          [v22 updateBackgroundMaterial:2];
        }

        [(PHAudioCallViewController *)self updateCallRecordingViewBackgroundMaterialType:2];
      }

      [(PHAudioCallViewController *)self updateDimmingView];
    }
  }
}

- (BOOL)currentCallStateCanShowNewPoster
{
  v2 = self;
  v3 = [(PHAudioCallViewController *)self frontmostCall];
  LOBYTE(v2) = [(PHAudioCallViewController *)v2 callStateCanShowNewPoster:v3];

  return v2;
}

- (id)getParticipantsView_WaitingOrNot
{
  v3 = [(PHAudioCallViewController *)self getParticipantsView_Waiting];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(PHAudioCallViewController *)self getParticipantsView_NotWaiting];
  }

  v6 = v5;

  return v6;
}

- (BOOL)canShowPosterImage
{
  if (!-[CNKFeatures isEnhancedEmergencyEnabled](self->_features, "isEnhancedEmergencyEnabled") || (-[PHAudioCallViewController frontmostCall](self, "frontmostCall"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isEmergency], v3, (v4 & 1) == 0))
  {
    if ([(PHAudioCallViewController *)self shouldUseHeroImageLayout])
    {
LABEL_4:
      v5 = [(PHAudioCallViewController *)self callDisplayStyleManager];
      v6 = [v5 callDisplayStyle] != 0;
LABEL_12:

      return v6;
    }

    v7 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([v7 callDisplayStyle] == 3)
    {
      v8 = [(PHAudioCallViewController *)self features];
      v9 = [v8 isDominoEnabled];

      if (v9)
      {
        goto LABEL_4;
      }
    }

    else
    {
    }

    if (![(PHAudioCallViewController *)self wasPresentedAsBanner])
    {
      v5 = +[UIDevice currentDevice];
      v6 = [v5 userInterfaceIdiom] == 0;
      goto LABEL_12;
    }
  }

  return 0;
}

- (BOOL)shouldUpdateBackgroundForEmergencyCall
{
  v2 = self;
  v3 = sub_100013C0C();

  return v3;
}

- (void)updateLayeredBackgroundWallpaper
{
  if ([(PHAudioCallViewController *)self shouldUseHeroImageLayout])
  {
    v3 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([v3 callDisplayStyle] == 3)
    {
      v4 = [(PHAudioCallViewController *)self features];
      v5 = [v4 isDominoEnabled];

      if (v5)
      {
        return;
      }
    }

    else
    {
    }

    if (![(PHAudioCallViewController *)self hasNoCallsOrOnlyEndedCalls])
    {
      v85 = [(PHAudioCallViewController *)self callToUseForWallpaper];
      v82 = [PHInCallUtilities contactStoreForCall:v85];
      v6 = [v85 contactIdentifier];
      v7 = +[PHAudioCallViewController contactKeysToFetch];
      v8 = [(PHAudioCallViewController *)self contactsCache];
      v80 = [v82 contactForIdentifier:v6 keysToFetch:v7 usingCache:v8];

      v9 = [(PHAudioCallViewController *)self prefersShowingCachedLastSeenPosterBeforeCallConnected:v85];
      v10 = [(PHAudioCallViewController *)self suggestedNewPosterSourceAfterCallConnects:v85];
      if (-[PHAudioCallViewController currentCallStateCanShowNewPoster](self, "currentCallStateCanShowNewPoster") && [objc_opt_class() posterSourceIsSyncedWithContacts:v10])
      {
        if (v10 == 2)
        {
          v28 = sub_100004F84();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "SNAP: PosterSource - transitioning from cached last seen poster -> current wallpaper if available.", buf, 2u);
          }

          v29 = [(PHAudioCallViewController *)self contactsCache];
          v30 = [v85 contactIdentifier];
          v31 = [v29 objectForKey:v30];

          if (v31)
          {
            v32 = [(PHAudioCallViewController *)self contactsCache];
            v33 = [v85 contactIdentifier];
            [v32 removeObjectForKey:v33];
          }

          v34 = [(PHAudioCallViewController *)self currentDisplayedPosterSourceForCall:v85]!= 1;
          [(PHAudioCallViewController *)self setSnapshottedPosterImageToUseForColorInversion:0];
          [(PHAudioCallViewController *)self setHasInvertedUIElementColorsBasedOnPoster:0];
          v84 = [(PHAudioCallViewController *)self contactWallpaperConfigurationForCall:v85 shouldReadFromCache:v34];
          v35 = objc_opt_class();
          v36 = [(PHAudioCallViewController *)self currentIMNicknameMatchingContact:v80];
          v37 = [v36 wallpaper];
          v22 = [v35 wallpaperContentIsSensitive:v37];
        }

        else if (v10 == 3)
        {
          v11 = [(PHAudioCallViewController *)self frontmostCall];
          v84 = [(PHAudioCallViewController *)self newPosterConfigurationForCall:v11];

          v12 = sub_100004F84();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v94 = v84;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SNAP: PosterSource - transitioning to show new poster updates (i.e. pendingIMNickname), new configuration: %@", buf, 0xCu);
          }

          v13 = [(PHAudioCallViewController *)self contactsCache];
          v14 = [v85 contactIdentifier];
          v15 = [v13 objectForKey:v14];

          if (v15)
          {
            v16 = [(PHAudioCallViewController *)self contactsCache];
            v17 = [v85 contactIdentifier];
            [v16 removeObjectForKey:v17];
          }

          [(PHAudioCallViewController *)self setSnapshottedPosterImageToUseForColorInversion:0];
          [(PHAudioCallViewController *)self setHasInvertedUIElementColorsBasedOnPoster:0];
          v18 = [(PHAudioCallViewController *)self sharedProfileStateOracleForCall:v85];
          v19 = [v18 pendingNickname];

          v20 = objc_opt_class();
          v21 = [v19 wallpaper];
          v22 = [v20 wallpaperContentIsSensitive:v21];
        }

        else
        {
          v38 = sub_100004F84();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            sub_100257174();
          }

          v84 = 0;
          v22 = 0;
        }

        v81 = 1;
      }

      else
      {
        v23 = sub_100004F84();
        v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        if (v9)
        {
          if (v24)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "SNAP: PosterSource - Going to show the last seen poster for this contact if available.", buf, 2u);
          }

          v84 = [(PHAudioCallViewController *)self lastSeenPosterConfigurationForCall:v85];
          v22 = [(PHAudioCallViewController *)self lastSeenPosterDataIsSensitiveForCall:v85];
        }

        else
        {
          if (v24)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "SNAP: PosterSource - Going to show the current wallpaper for this contact if available.", buf, 2u);
          }

          v84 = [(PHAudioCallViewController *)self contactWallpaperConfigurationForCall:v85 shouldReadFromCache:1];
          v25 = objc_opt_class();
          v26 = [(PHAudioCallViewController *)self currentIMNicknameMatchingContact:v80];
          v27 = [v26 wallpaper];
          v22 = [v25 wallpaperContentIsSensitive:v27];
        }

        v81 = 0;
      }

      v83 = [(PHAudioCallViewController *)self getParticipantsView_WaitingOrNot];
      if (v84)
      {
        v78 = [[PRUISIncomingCallPosterContext alloc] initWithTitleString:&stru_100361FD0 horizontalTitleBoundingRect:0 verticalTitleBoundingRect:1 imageAssetID:CGRectZero.origin.x personalPoster:{CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height, CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
        v39 = [[PRUISPosterRenderingViewController alloc] initWithConfiguration:v84 context:v78];
        v40 = [(PHAudioCallViewController *)self view];
        [v40 bounds];
        v42 = v41;
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v49 = [v39 view];
        [v49 setFrame:{v42, v44, v46, v48}];

        v50 = [v39 view];
        [v50 setAutoresizingMask:18];

        [(PHAudioCallViewController *)self createPosterContainerWithDimmingLayer];
        if (objc_opt_respondsToSelector())
        {
          v51 = sub_100004F84();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "SNAP: Setting poster renderingMode to .live and starting 30sec delay to set it back to .paused", buf, 2u);
          }

          [v39 setRenderingMode:2];
          v52 = [(PHAudioCallViewController *)self suspendPosterAfterDelayBlock];
          v53 = v52 == 0;

          if (!v53)
          {
            v54 = [(PHAudioCallViewController *)self suspendPosterAfterDelayBlock];
            dispatch_block_cancel(v54);

            [(PHAudioCallViewController *)self setSuspendPosterAfterDelayBlock:0];
          }

          objc_initWeak(buf, self);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001212F0;
          block[3] = &unk_100356F60;
          objc_copyWeak(v91, buf);
          v55 = dispatch_block_create(0, block);
          [(PHAudioCallViewController *)self setSuspendPosterAfterDelayBlock:v55];

          v56 = dispatch_time(0, 30000000000);
          v57 = &_dispatch_main_q;
          v58 = [(PHAudioCallViewController *)self suspendPosterAfterDelayBlock];
          dispatch_after(v56, &_dispatch_main_q, v58);

          objc_destroyWeak(v91);
          objc_destroyWeak(buf);
        }

        v59 = [v83 singleCallLabelView];
        v79 = [v59 statusLabel];

        if ([(PHAudioCallViewController *)self canShowPosterImage])
        {
          v60 = +[ICSPreferences sharedPreferences];
          v61 = v60;
          if (v81)
          {
            v62 = [v60 forceBlurNewPoster];
          }

          else
          {
            v62 = [v60 forceBlurCurrentPoster];
          }

          v66 = v62;

          v65 = v66 | v22;
        }

        else
        {
          v65 = 0;
        }

        v67 = [(PHAudioCallViewController *)self callToUseForWallpaper];
        v68 = [v79 text];
        objc_initWeak(buf, self);
        v86[0] = _NSConcreteStackBlock;
        v86[1] = 3221225472;
        v86[2] = sub_100121344;
        v86[3] = &unk_100359CD0;
        objc_copyWeak(&v89, buf);
        v69 = v67;
        v87 = v69;
        v70 = v68;
        v88 = v70;
        v71 = objc_retainBlock(v86);
        v72 = (v71[2])(v71, 0);
        if (v65)
        {
          v73 = (v71[2])(v71, 1);
        }

        else
        {
          v73 = 0;
        }

        [TPIncomingCallMetricsProvider addCallerNameView:v72 toViewController:v39];
        v74 = [[PHPosterNameViewModel alloc] initWithCall:v69 posterNameTextView:v72 priorityPosterNameTextView:v73];
        [(PHAudioCallViewController *)self setPosterNameViewModel:v74];

        [(PHAudioCallViewController *)self updatePosterViewModelForParticipantsView:v83];
        [(PHAudioCallViewController *)self setupNameLabelForAlwaysOnDisplay];
        v75 = [(PHAudioCallViewController *)self callDisplayStyleManager];
        v76 = [v75 callDisplayStyle] == 0;

        if (v76)
        {
          [(PHAudioCallViewController *)self setParticipantsViewShouldShowParticipantLabel:1];
          [v79 setAlpha:1.0];
        }

        else
        {
          [(PHAudioCallViewController *)self setParticipantsViewShouldShowParticipantLabel:0];
          v77 = [(PHAudioCallViewController *)self getParticipantsView_Waiting];
          [(PHAudioCallViewController *)self updateParticipantsLabelForView:v77 isHidden:1];

          [(PHAudioCallViewController *)self _updatePosterStatusLabelForState:[(PHCallViewController *)self currentState]];
          [(PHAudioCallViewController *)self updateParticipantConstraintsForPosterName:v83];
          [(PHAudioCallViewController *)self _updatePosterNameAlpha];
        }

        [PHAudioCallViewController transitionToNewPoster:"transitionToNewPoster:showingPosterTransition:shouldBlurPoster:completion:" showingPosterTransition:v39 shouldBlurPoster:? completion:?];

        objc_destroyWeak(&v89);
        objc_destroyWeak(buf);
      }

      else
      {
        v63 = sub_100004F84();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          v64 = [(PHAudioCallViewController *)self renderingViewController];
          *buf = 138412290;
          v94 = v64;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "SNAP: There is no configuration now, we are going to fade out old poster %@", buf, 0xCu);
        }

        [(PHAudioCallViewController *)self removeNameLabelForAlwaysOnDisplay];
        v91[1] = _NSConcreteStackBlock;
        v91[2] = 3221225472;
        v91[3] = sub_10001452C;
        v91[4] = &unk_100359CA8;
        v92 = v81;
        v91[5] = self;
        v91[6] = v10;
        [PHAudioCallViewController removePosterViewController:"removePosterViewController:completion:" completion:?];
        if ((v81 & 1) == 0 && [(PHCallViewController *)self currentState]== 11)
        {
          [(PHAudioCallViewController *)self removeFirstNameLabelFromViewIfNeeded];
        }
      }
    }
  }
}

- (unint64_t)suggestedNewPosterSourceAfterCallConnects:(id)a3
{
  v5 = a3;
  v6 = self;
  v7 = sub_100018238(a3);

  return v7;
}

- (BOOL)hasLastSeenPosterForCall:(id)a3
{
  v3 = a3;
  v5 = a3;
  v6 = self;
  LOBYTE(v3) = sub_100013F60(v3);

  return v3 & 1;
}

- (id)currentIMNicknameMatchingContact:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100018C98();

  return v6;
}

- (id)getParticipantsView_Waiting
{
  v2 = [(PHAudioCallViewController *)self callWaitingParticipantsViewController];
  v3 = [v2 view];

  return v3;
}

- (id)getParticipantsView_NotWaiting
{
  v2 = [(PHAudioCallViewController *)self callParticipantsViewController];
  v3 = [v2 view];

  return v3;
}

- (void)removeNameLabelForAlwaysOnDisplay
{
  v3 = [(PHAudioCallViewController *)self alwaysOnDisplayPosterNameViewModel];

  if (v3)
  {
    v4 = [(PHAudioCallViewController *)self alwaysOnDisplayPosterNameViewModel];
    [v4 removeFromSuperview];

    [(PHAudioCallViewController *)self setAlwaysOnDisplayPosterNameViewModel:0];
  }
}

- (void)_updateStatusLabelVisibility
{
  v13 = [(PHAudioCallViewController *)self getParticipantsView_WaitingOrNot];
  v3 = [v13 singleCallLabelView];
  v4 = [(PHAudioCallViewController *)self callHasNoContactPoster];
  if (v3)
  {
    [(PHAudioCallViewController *)self updatePosterBadgeView:v4 ^ 1 to:v3];
  }

  [(PHAudioCallViewController *)self updateCallRecordingPositionIfNeeded];
  [(PHAudioCallViewController *)self updateCallHoldingPositionIfNeeded];
  if ([(PHAudioCallViewController *)self callHasContactPosterWithHorizontalName]|| ([(PHAudioCallViewController *)self detachedPosterNameViewModel], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = v3;
    v7 = 1;
LABEL_6:
    [v6 setHidesLabel:v7];
    goto LABEL_7;
  }

  if (![(PHAudioCallViewController *)self callHasContactPosterWithVerticalName])
  {
    v6 = v3;
    v7 = 0;
    goto LABEL_6;
  }

  v8 = [(PHAudioCallViewController *)self posterNameViewModel];
  v9 = [v8 posterNameTextView];
  v10 = [v9 callIsActive];

  v11 = [(PHAudioCallViewController *)self posterNameViewModel];
  v12 = [v11 posterNameTextView];
  LODWORD(v9) = [v12 statusIsSuitableForVerticalLayout];

  [v3 setHidesLabel:(v10 ^ 1) & v9];
  [v3 hideBadgesOnly];
LABEL_7:
}

- (BOOL)callHasNoContactPoster
{
  if (![(PHAudioCallViewController *)self canShowPosterImage])
  {
    return 1;
  }

  v3 = [(PHAudioCallViewController *)self renderingViewController];
  v4 = v3 == 0;

  return v4;
}

- (void)synchronizeSingleLabelViewWithPosterText
{
  v5 = [(PHAudioCallViewController *)self getParticipantsView_WaitingOrNot];
  v3 = [(PHAudioCallViewController *)self detachedPosterNameViewModel];

  if (v3)
  {
    v4 = [(PHAudioCallViewController *)self detachedPosterNameViewModel];
    [v4 updateViewModelForParticipantsView:v5];
  }

  else
  {
    [(PHAudioCallViewController *)self updatePosterViewModelForParticipantsView:v5];
  }
}

- (void)updateCallRecordingPositionIfNeeded
{
  v2 = self;
  PHAudioCallViewController.updateCallRecordingPositionIfNeeded()();
}

- (void)updateCallHoldingPositionIfNeeded
{
  v2 = self;
  PHAudioCallViewController.updateCallHoldingPositionIfNeeded()();
}

- (BOOL)callHasContactPosterWithHorizontalName
{
  if ([(PHAudioCallViewController *)self callHasNoContactPoster])
  {
    return 0;
  }

  else
  {
    return ![(PHAudioCallViewController *)self callHasContactPosterWithVerticalName];
  }
}

- (BOOL)callHasContactPosterWithVerticalName
{
  v3 = [(PHAudioCallViewController *)self posterNameViewModel];

  if (!v3)
  {
    return 0;
  }

  v4 = [(PHAudioCallViewController *)self posterNameViewModel];
  v5 = [v4 posterNameTextView];
  v6 = [v5 layout] == 1;

  return v6;
}

- (void)removeBackgroundContactImageView
{
  [(PHBackgroundGradientBlurView *)self->_backgroundImageView removeFromSuperview];
  backgroundImageView = self->_backgroundImageView;
  self->_backgroundImageView = 0;
}

- (BOOL)canShowBackgroundImage
{
  if (!-[CNKFeatures isEnhancedEmergencyEnabled](self->_features, "isEnhancedEmergencyEnabled") || (-[PHAudioCallViewController frontmostCall](self, "frontmostCall"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isEmergency], v3, (v4 & 1) == 0))
  {
    v6 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([v6 callDisplayStyle] == 3)
    {
      v7 = [(PHAudioCallViewController *)self features];
      v8 = [v7 isDominoEnabled];

      if (v8)
      {
        v9 = [(PHAudioCallViewController *)self callDisplayStyleManager];
        v5 = [v9 callDisplayStyle] != 0;
LABEL_11:

        return v5;
      }
    }

    else
    {
    }

    v9 = +[UIDevice currentDevice];
    if ([v9 userInterfaceIdiom])
    {
      v5 = 0;
    }

    else
    {
      v10 = [(PHAudioCallViewController *)self callDisplayStyleManager];
      v5 = [v10 callDisplayStyle] != 0;
    }

    goto LABEL_11;
  }

  return 0;
}

- (UILayoutGuide)translationLayoutGuide
{
  v3 = [(PHAudioCallViewController *)self featureFlags];
  v4 = [v3 audioCallTranslationEnabled];

  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v5 callDisplayStyle] == 3)
  {
    v6 = [(PHAudioCallViewController *)self features];
    v7 = [v6 isDominoEnabled];

    if (v7)
    {
LABEL_4:
      v8 = 0;
      goto LABEL_9;
    }
  }

  else
  {
  }

  translationLayoutGuide = self->_translationLayoutGuide;
  if (!translationLayoutGuide)
  {
    v10 = objc_alloc_init(UILayoutGuide);
    v11 = self->_translationLayoutGuide;
    self->_translationLayoutGuide = v10;

    v12 = [(PHAudioCallViewController *)self view];
    [v12 addLayoutGuide:self->_translationLayoutGuide];

    v22 = [(UILayoutGuide *)self->_translationLayoutGuide leadingAnchor];
    v13 = [(PHAudioCallViewController *)self view];
    v14 = [v13 leadingAnchor];
    v15 = [v22 constraintEqualToAnchor:v14];
    v23[0] = v15;
    v16 = [(UILayoutGuide *)self->_translationLayoutGuide trailingAnchor];
    v17 = [(PHAudioCallViewController *)self view];
    v18 = [v17 trailingAnchor];
    v19 = [v16 constraintEqualToAnchor:v18];
    v23[1] = v19;
    v20 = [NSArray arrayWithObjects:v23 count:2];
    [NSLayoutConstraint activateConstraints:v20];

    translationLayoutGuide = self->_translationLayoutGuide;
  }

  v8 = translationLayoutGuide;
LABEL_9:

  return v8;
}

- (BOOL)shouldShowUseRTT
{
  v3 = [(PHAudioCallViewController *)self callCenter];
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

  v5 = [(PHAudioCallViewController *)self frontmostCall];
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

- (void)refreshUseRTTButton
{
  [(PHAudioCallViewController *)self updateLayoutSupplementalButtons];
  v3 = [(PHCallViewController *)self bottomBar];
  [v3 refreshUseRTTButton];
}

- (void)updateLayoutSupplementalButtons
{
  [(PHAudioCallViewController *)self removeSupplementalButtons];
  if (![(PHAudioCallViewController *)self middlePillContainerIsShowing])
  {
    v3 = [(PHAudioCallViewController *)self buttonsViewController];
    v4 = [v3 view];

    v5 = [v4 superview];
    if (!v5 || (v6 = v5, v7 = [(PHAudioCallViewController *)self middleViewState], v6, v7 != 1))
    {
LABEL_27:

      return;
    }

    v8 = +[UIScreen mainScreen];
    [v8 bounds];
    v10 = v9;
    v12 = v11;

    if (v10 >= v12)
    {
      v10 = v12;
    }

    v13 = objc_alloc_init(NSMutableArray);
    if ([(PHAudioCallViewController *)self shouldShowCallTransfer])
    {
      v14 = [(PHAudioCallViewController *)self callTransferButton];
      [v13 addObject:v14];
    }

    if ([(PHAudioCallViewController *)self shouldShowMergeCalls])
    {
      v15 = [(PHAudioCallViewController *)self mergeCallsButton];
      [v13 addObject:v15];
    }

    if ([(PHAudioCallViewController *)self shouldAddExtensionNumberButtonToViewHierarchy])
    {
      v16 = [(PHAudioCallViewController *)self extensionNumberButton];
      [v13 addObject:v16];
    }

    if ([(PHAudioCallViewController *)self shouldAddRTTButtonToViewHierarchy])
    {
      v17 = [(PHAudioCallViewController *)self useRTTButton];
      [v13 addObject:v17];
    }

    v18 = v10 * 0.102;
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_100117944;
    v54[3] = &unk_100359BE8;
    v54[4] = self;
    v19 = v4;
    v55 = v19;
    [v13 __imForEach:v54];
    if ([v13 count] == 3)
    {
      v47 = [v13 objectAtIndexedSubscript:0];
      v49 = [v47 leadingAnchor];
      v52 = [v19 leadingAnchor];
      v50 = [v49 constraintEqualToAnchor:v52 constant:v18];
      v57[0] = v50;
      v48 = [v13 objectAtIndexedSubscript:1];
      v46 = [v48 centerXAnchor];
      v20 = [v19 centerXAnchor];
      v21 = [v46 constraintEqualToAnchor:v20];
      v57[1] = v21;
      v22 = [v13 objectAtIndexedSubscript:2];
      v23 = [v22 trailingAnchor];
      v24 = [v19 trailingAnchor];
      v25 = [v23 constraintEqualToAnchor:v24 constant:-v18];
      v57[2] = v25;
      v26 = [NSArray arrayWithObjects:v57 count:3];
      [NSLayoutConstraint activateConstraints:v26];

      v27 = v47;
      v28 = v50;

      v29 = v52;
      v30 = v49;
    }

    else if ([v13 count] == 2)
    {
      v27 = [v13 objectAtIndexedSubscript:0];
      v30 = [v27 leadingAnchor];
      v53 = [v19 leadingAnchor];
      v51 = [v30 constraintEqualToAnchor:v53 constant:v18];
      v56[0] = v51;
      v31 = [v13 objectAtIndexedSubscript:1];
      v32 = [v31 trailingAnchor];
      v33 = [v19 trailingAnchor];
      v34 = [v32 constraintEqualToAnchor:v33 constant:-v18];
      v56[1] = v34;
      v35 = [NSArray arrayWithObjects:v56 count:2];
      [NSLayoutConstraint activateConstraints:v35];

      v28 = v51;
      v29 = v53;
    }

    else
    {
      if ([v13 count] != 1)
      {
LABEL_21:
        v36 = [(PHAudioCallViewController *)self translationLayoutGuide];

        if (v36)
        {
          v37 = [(PHAudioCallViewController *)self translationLayoutBottomConstraint];
          [v37 setActive:0];

          v38 = [v13 count];
          v39 = [(PHAudioCallViewController *)self translationLayoutGuide];
          v40 = [v39 bottomAnchor];
          if (v38)
          {
            v41 = [v13 objectAtIndexedSubscript:0];
            v42 = [v41 topAnchor];
            v43 = [v40 constraintEqualToAnchor:v42];
            [(PHAudioCallViewController *)self setTranslationLayoutBottomConstraint:v43];
          }

          else
          {
            v41 = [(PHAudioCallViewController *)self buttonsViewController];
            v42 = [v41 view];
            v43 = [v42 topAnchor];
            v44 = [v40 constraintEqualToAnchor:v43];
            [(PHAudioCallViewController *)self setTranslationLayoutBottomConstraint:v44];
          }

          v45 = [(PHAudioCallViewController *)self translationLayoutBottomConstraint];
          [v45 setActive:1];
        }

        goto LABEL_27;
      }

      v27 = [v13 objectAtIndexedSubscript:0];
      v30 = [v27 centerXAnchor];
      v29 = [v19 centerXAnchor];
      v28 = [v30 constraintEqualToAnchor:v29];
      [v28 setActive:1];
    }

    goto LABEL_21;
  }
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

- (PHAudioCallControlsSupplementalButton)useRTTButton
{
  useRTTButton = self->_useRTTButton;
  if (!useRTTButton)
  {
    v4 = sub_10001A58C();
    v5 = [(PHAudioCallViewController *)self frontmostCall];
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

- (BOOL)shouldShowCallTransfer
{
  v3 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v3 callDisplayStyle] != 3)
  {

LABEL_5:
    v7 = [(PHAudioCallViewController *)self callCenter];
    v8 = [v7 callsPassingTest:&stru_100359D90];

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

  v4 = [(PHAudioCallViewController *)self features];
  v5 = [v4 isDominoEnabled];

  if ((v5 & 1) == 0)
  {
    goto LABEL_5;
  }

  v6 = 0;
  return v6 & 1;
}

- (BOOL)shouldAddExtensionNumberButtonToViewHierarchy
{
  v4 = +[PHInCallUtilities sharedInstance];
  if (([v4 isIPadIdiom] & 1) == 0)
  {
    v6 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    v7 = [v6 callDisplayStyle];
    if (v7 == 3)
    {
      v2 = [(PHAudioCallViewController *)self features];
      if (([v2 isDominoEnabled] & 1) != 0 || self->_middleViewState != 1)
      {
        v5 = 0;
        goto LABEL_9;
      }
    }

    else if (self->_middleViewState != 1)
    {
      v5 = 0;
      goto LABEL_11;
    }

    v8 = [(PHAudioCallViewController *)self frontmostCall];
    v5 = [v8 hardPauseDigitsState] == 2;

    if (v7 != 3)
    {
LABEL_11:

      goto LABEL_12;
    }

LABEL_9:

    goto LABEL_11;
  }

  v5 = 0;
LABEL_12:

  return v5;
}

- (BOOL)shouldAddRTTButtonToViewHierarchy
{
  if ([(PHAudioCallViewController *)self shouldShowUseRTT])
  {
    v4 = +[PHInCallUtilities sharedInstance];
    if ([v4 isIPadIdiom])
    {
      v5 = 0;
LABEL_14:

      return v5;
    }

    v6 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    v7 = [v6 callDisplayStyle];
    if (v7 == 3)
    {
      v2 = [(PHAudioCallViewController *)self features];
      if (([v2 isDominoEnabled] & 1) != 0 || self->_middleViewState != 1)
      {
        v5 = 0;
        goto LABEL_11;
      }
    }

    else if (self->_middleViewState != 1)
    {
      v5 = 0;
      goto LABEL_13;
    }

    v8 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    v5 = [v8 callDisplayStyle] != 0;

    if (v7 != 3)
    {
LABEL_13:

      goto LABEL_14;
    }

LABEL_11:

    goto LABEL_13;
  }

  return 0;
}

- (void)refreshExtensionNumberButton
{
  v3 = [(PHCallViewController *)self bottomBar];
  v4 = [(PHAudioCallViewController *)self customizedTitleForItemInBar:v3 withActionType:23];

  [(PHAudioCallControlsSupplementalButton *)self->_extensionNumberButton setTitle:v4 forState:0];
  [(PHAudioCallViewController *)self updateLayoutSupplementalButtons];
}

- (void)hideOrShowScreeningBackgroundView
{
  v3 = [(PHAudioCallViewController *)self featureFlags];
  v4 = TUCallScreeningEnabled();

  if (!v4)
  {
    return;
  }

  if ([(PHCallViewController *)self currentState]== 11 && [(PHAudioCallViewController *)self isShowingNewTranscriptsView])
  {
    v5 = [(PHAudioCallViewController *)self renderingViewController];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(PHCallViewController *)self currentState];
  if (v7 == 12)
  {
    v8 = [(PHAudioCallViewController *)self renderingViewController];
    v9 = v8 != 0;

    v6 |= v9;
  }

  v10 = [(PHCallViewController *)self bottomBar];
  v11 = [v10 currentState];
  if (v7 == 12 || v11 == 23)
  {
    goto LABEL_13;
  }

  v12 = [(PHCallViewController *)self bottomBar];
  if ([v12 currentState] == 24 && -[PHCallViewController currentState](self, "currentState") == 11)
  {

LABEL_13:
LABEL_15:
    v13 = [(PHAudioCallViewController *)self screeningBackgroundView];
    if (v13)
    {
    }

    else
    {
      v14 = [(PHAudioCallViewController *)self renderingViewController];

      if (v14)
      {
        if (v6)
        {
          v64 = [(PHAudioCallViewController *)self createPosterBlurryBackgroundView];
          [(PHAudioCallViewController *)self setScreeningBackgroundView:v64];
          v15 = [(PHAudioCallViewController *)self view];
          v16 = [(PHAudioCallViewController *)self screeningBackgroundView];
          v17 = [(PHAudioCallViewController *)self posterContainer];
          [v15 insertSubview:v16 above:v17];

          v18 = [v64 contentView];
          [(PHAudioCallViewController *)self createDetachedPosterNameViewModel:v18];

          v19 = [(PHAudioCallViewController *)self screeningBackgroundView];
          [v19 setTranslatesAutoresizingMaskIntoConstraints:0];

          v63 = [(PHAudioCallViewController *)self screeningBackgroundView];
          v61 = [v63 topAnchor];
          v62 = [(PHAudioCallViewController *)self view];
          v60 = [v62 topAnchor];
          v59 = [v61 constraintEqualToAnchor:v60];
          v68[0] = v59;
          v58 = [(PHAudioCallViewController *)self screeningBackgroundView];
          v56 = [v58 bottomAnchor];
          v57 = [(PHAudioCallViewController *)self view];
          v55 = [v57 bottomAnchor];
          v54 = [v56 constraintEqualToAnchor:v55];
          v68[1] = v54;
          v53 = [(PHAudioCallViewController *)self screeningBackgroundView];
          v52 = [v53 leadingAnchor];
          v20 = [(PHAudioCallViewController *)self view];
          v21 = [v20 leadingAnchor];
          v22 = [v52 constraintEqualToAnchor:v21];
          v68[2] = v22;
          v23 = [(PHAudioCallViewController *)self screeningBackgroundView];
          v24 = [v23 trailingAnchor];
          v25 = [(PHAudioCallViewController *)self view];
          v26 = [v25 trailingAnchor];
          v27 = [v24 constraintEqualToAnchor:v26];
          v68[3] = v27;
          v28 = [NSArray arrayWithObjects:v68 count:4];
          [NSLayoutConstraint activateConstraints:v28];
        }

        else
        {
          v29 = [(PHAudioCallViewController *)self createBlurryBackgroundView];
          v30 = objc_opt_new();
          v31 = [v30 makeViewComposer];
          v32 = [v31 composeBackgroundWithView:v29];
          [(PHAudioCallViewController *)self setScreeningBackgroundViewController:v32];

          v33 = [(PHAudioCallViewController *)self screeningBackgroundViewController];
          [(PHAudioCallViewController *)self addChildViewController:v33];

          v34 = [(PHAudioCallViewController *)self screeningBackgroundViewController];
          v35 = [v34 view];
          [(PHAudioCallViewController *)self setScreeningBackgroundView:v35];

          v36 = [(PHAudioCallViewController *)self view];
          v37 = [(PHAudioCallViewController *)self screeningBackgroundView];
          v38 = [(PHAudioCallViewController *)self posterContainer];
          [v36 insertSubview:v37 above:v38];

          v39 = [(PHAudioCallViewController *)self screeningBackgroundViewController];
          [v39 didMoveToParentViewController:self];

          v40 = [(PHAudioCallViewController *)self screeningBackgroundView];
          [(PHAudioCallViewController *)self createDetachedPosterNameViewModel:v40];
        }

        objc_initWeak(&location, self);
        v41 = dispatch_time(0, 550000000);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10011FECC;
        block[3] = &unk_100356F60;
        objc_copyWeak(&v66, &location);
        dispatch_after(v41, &_dispatch_main_q, block);
        objc_destroyWeak(&v66);
        objc_destroyWeak(&location);
      }
    }

    v42 = [(PHAudioCallViewController *)self posterContainer];
    [v42 frame];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v51 = [(PHAudioCallViewController *)self screeningBackgroundView];
    [v51 setFrame:{v44, v46, v48, v50}];

    return;
  }

  if (v6)
  {
    goto LABEL_15;
  }

  [(PHAudioCallViewController *)self removeScreeningBackgroundView];
}

- (void)removeScreeningBackgroundView
{
  v10 = [(PHAudioCallViewController *)self getParticipantsView_NotWaiting];
  v3 = [(PHAudioCallViewController *)self translationBackgroundView];
  [v3 alpha];
  v5 = v4;

  if (v5 == 0.0)
  {
    [(PHAudioCallViewController *)self setDetachedPosterNameViewModel:0];
  }

  v6 = [(PHAudioCallViewController *)self screeningBackgroundView];

  if (v6)
  {
    v7 = [(PHAudioCallViewController *)self screeningBackgroundView];
    [v7 removeFromSuperview];

    [(PHAudioCallViewController *)self setScreeningBackgroundView:0];
    v8 = [(PHAudioCallViewController *)self screeningBackgroundViewController];
    [v8 willMoveToParentViewController:0];

    v9 = [(PHAudioCallViewController *)self screeningBackgroundViewController];
    [v9 removeFromParentViewController];

    [(PHAudioCallViewController *)self setScreeningBackgroundViewController:0];
  }

  [(PHAudioCallViewController *)self _updatePosterNameAlpha];
  [(PHAudioCallViewController *)self _updateStatusLabelVisibility];
  [(PHAudioCallViewController *)self updateParticipantConstraintsForPosterName:v10];
}

- (void)_updatePosterNameAlpha
{
  v8 = [(PHAudioCallViewController *)self detachedPosterNameViewModel];
  if (v8 || ([(PHAudioCallViewController *)self posterNameViewModel], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = [(PHAudioCallViewController *)self frontmostCall];
    [v8 updatePosterNameAlpha:{((objc_msgSend(v3, "status") == 4) | !self->_participantsViewIsShowingMultipleLabel)}];
    v4 = [(PHAudioCallViewController *)self detachedPosterNameViewModel];
    if (v4)
    {
      v5 = v4;
      v6 = [(PHAudioCallViewController *)self posterNameViewModel];

      if (v6)
      {
        v7 = [(PHAudioCallViewController *)self posterNameViewModel];
        [v7 updatePosterNameAlpha:0.0];
      }
    }
  }
}

- (void)restoreParticipantsViewStatusLabelForFullScreen
{
  v3 = [(PHAudioCallViewController *)self participantsViewVerticalPosterNameTopConstraint];
  if (v3)
  {
    v4 = v3;
    v5 = [(PHAudioCallViewController *)self participantsViewVerticalPosterNameTopConstraint];
    v6 = [v5 isActive];

    if (v6)
    {
      v7 = [(PHAudioCallViewController *)self participantsViewVerticalPosterNameTopConstraint];
      [v7 setActive:0];

      [(PHAudioCallViewController *)self setParticipantsViewVerticalPosterNameTopConstraint:0];
    }
  }

  v8 = [(PHAudioCallViewController *)self participantsViewTopConstraint];
  if (v8)
  {
    v9 = v8;
    v10 = [(PHAudioCallViewController *)self participantsViewTopConstraint];
    v11 = [v10 isActive];

    if ((v11 & 1) == 0)
    {
      v12 = [(PHAudioCallViewController *)self participantsViewTopConstraint];
      [v12 setActive:1];
    }
  }
}

- (UIStackView)topLeadingContainer
{
  v3 = +[CNKFeatures sharedInstance];
  v4 = [v3 isMoreMenuEnabled];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    topLeadingContainer = self->_topLeadingContainer;
    if (topLeadingContainer)
    {
      v5 = topLeadingContainer;
    }

    else
    {
      v7 = objc_alloc_init(UIStackView);
      v8 = self->_topLeadingContainer;
      self->_topLeadingContainer = v7;

      [(UIStackView *)self->_topLeadingContainer setSpacing:4.0];
      [(UIStackView *)self->_topLeadingContainer setAxis:0];
      [(UIStackView *)self->_topLeadingContainer setAlignment:3];
      [(UIStackView *)self->_topLeadingContainer setDistribution:1];
      [(UIStackView *)self->_topLeadingContainer setTranslatesAutoresizingMaskIntoConstraints:0];
      v9 = [(PHAudioCallViewController *)self view];
      [v9 addSubview:self->_topLeadingContainer];

      v10 = [(UIStackView *)self->_topLeadingContainer leadingAnchor];
      v11 = [(PHAudioCallViewController *)self view];
      v12 = [v11 leadingAnchor];
      [(PHAudioCallViewController *)self callDetailsButtonPaddingTrailing];
      v13 = [v10 constraintEqualToAnchor:v12 constant:?];

      LODWORD(v14) = 1132068864;
      [v13 setPriority:v14];
      v22[0] = v13;
      v15 = [(UIStackView *)self->_topLeadingContainer topAnchor];
      v16 = [(PHAudioCallViewController *)self view];
      v17 = [v16 topAnchor];
      [(PHAudioCallViewController *)self callDetailsButtonPaddingTop];
      v19 = [v15 constraintEqualToAnchor:v17 constant:v18 + 3.0];
      v22[1] = v19;
      v20 = [NSArray arrayWithObjects:v22 count:2];
      [NSLayoutConstraint activateConstraints:v20];

      v5 = self->_topLeadingContainer;
    }
  }

  return v5;
}

- (BOOL)canRecord
{
  v2 = self;
  sub_10001D85C();
  v4 = v3;

  return v4 & 1;
}

- (BOOL)recordingSupportedForCurrentCallDsplayStyles
{
  v2 = self;
  v3 = sub_10001DAE0();

  return v3;
}

- (BOOL)callIsRecording
{
  v2 = self;
  sub_10001DBB0();
  v4 = v3;

  return v4 & 1;
}

- (void)addButton:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10001DE6C(a3);
}

- (void)updateCallHoldingIfNeeded:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.super.super.isa = a3;
  PHAudioCallViewController.updateCallHoldingIfNeeded(_:)(v9);
}

- (void)addCallHoldingIfNeeded:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10001E4D0(a3);
}

- (void)addHoldingButton:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10001E5C8(a3);
}

- (void)updateWaitOnHoldServiceWithCallWithCall:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001E934(v4);
}

- (BOOL)holdingConditions
{
  v2 = self;
  v3 = sub_10001EA6C();

  return v3;
}

- (void)stopSuppressionOfSTKAlerts
{
  v2 = sub_100004F84();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stopping Suppression of STK Alerts", v3, 2u);
  }

  if (byte_1003B0FE4 == 1)
  {
    notify_set_state(dword_1003B0FE0, 0);
    notify_post("MPInCallAlertStateChangeNotification");
    notify_cancel(dword_1003B0FE0);
    byte_1003B0FE4 = 0;
  }
}

- (BOOL)shouldShowNewPosterUpdates
{
  v3 = [(PHAudioCallViewController *)self frontmostCall];
  if ([(PHAudioCallViewController *)self callStateCanShowNewPoster:v3])
  {
    v4 = [objc_opt_class() posterSourceIsSyncedWithContacts:{-[PHAudioCallViewController suggestedNewPosterSourceAfterCallConnects:](self, "suggestedNewPosterSourceAfterCallConnects:", v3)}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateAmbientAudioRoutesVisibility
{
  [(PHAudioCallViewController *)self setupAmbientAudioRoutesControlViewIfNeeded];
  v3 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v3 callDisplayStyle] != 3)
  {
    goto LABEL_7;
  }

  v4 = [(PHAudioCallViewController *)self features];
  if (([v4 isDominoEnabled] & 1) == 0)
  {

LABEL_7:
    goto LABEL_8;
  }

  v5 = [(PHAudioCallViewController *)self middleViewState];

  if (v5 != 1)
  {
LABEL_8:
    v11 = 1;
    goto LABEL_9;
  }

  v6 = [(PHAudioCallViewController *)self ambientAudioRoutesControlView];
  v7 = [v6 isHidden];

  if (v7)
  {
    v8 = [(PHAudioCallViewController *)self ambientAudioRoutesControlView];
    [_TtC13InCallService27AmbientAnimationCoordinator show:v8 completion:0];

    v9 = [(PHAudioCallViewController *)self ambientAudioRoutesControlView];
    [v9 setHidden:0];

    v12 = [(PHAudioCallViewController *)self view];
    v10 = [(PHAudioCallViewController *)self ambientAudioRoutesControlView];
    [v12 bringSubviewToFront:v10];

    goto LABEL_10;
  }

  v11 = 0;
LABEL_9:
  v12 = [(PHAudioCallViewController *)self ambientAudioRoutesControlView];
  [v12 setHidden:v11];
LABEL_10:
}

- (void)setupAmbientAudioRoutesControlViewIfNeeded
{
  if (!self->_ambientAudioRoutesControlView)
  {
    v19 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([v19 callDisplayStyle] == 3)
    {
      v3 = [(PHAudioCallViewController *)self features];
      v4 = [v3 isDominoEnabled];

      if (!v4)
      {
        return;
      }

      v5 = objc_alloc_init(PHAmbientAudioRoutesControlView);
      v6 = [(PHAudioCallViewController *)self buttonsViewController];
      [(PHAmbientAudioRoutesControlView *)v5 setDelegate:v6];

      [(PHAmbientAudioRoutesControlView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
      ambientAudioRoutesControlView = self->_ambientAudioRoutesControlView;
      self->_ambientAudioRoutesControlView = &v5->super;
      v8 = v5;

      v9 = [(PHAudioCallViewController *)self view];
      [v9 addSubview:self->_ambientAudioRoutesControlView];

      v10 = [(UIView *)self->_ambientAudioRoutesControlView topAnchor];
      v11 = [(PHAudioCallViewController *)self view];
      v12 = [v11 topAnchor];
      +[PHUIConfiguration ambientAudioRoutesInset];
      v13 = [v10 constraintEqualToAnchor:v12 constant:?];
      [v13 setActive:1];

      v19 = [(UIView *)self->_ambientAudioRoutesControlView trailingAnchor];
      v14 = [(PHAudioCallViewController *)self view];
      v15 = [v14 trailingAnchor];
      +[PHUIConfiguration ambientAudioRoutesInset];
      v17 = v16;

      v18 = [v19 constraintEqualToAnchor:v15 constant:-v17];
      [v18 setActive:1];
    }
  }
}

- (void)updateShareNameAndPhotoHUDPresentationIfNeeded
{
  v3 = [(PHAudioCallViewController *)self features];
  v4 = [v3 isNameAndPhotoC3Enabled];

  if (v4 && ([(PHCallViewController *)self currentState]== 4 || [(PHCallViewController *)self currentState]== 5))
  {
    v5 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    v6 = [v5 callDisplayStyle];

    if (v6 == 2)
    {
      v10 = +[UIApplication sharedApplication];
      v7 = [v10 delegate];
      v8 = [v7 bannerPresentationManager];
      v9 = [(PHAudioCallViewController *)self callCenter];
      [(PHAudioCallViewController *)self showNameAndPhotoHUDIfNecessaryWithBannerPresentationManager:v8 callCenter:v9];
    }
  }
}

- (void)updateCallTranslationIfNeeded
{
  v3 = [(PHAudioCallViewController *)self featureFlags];
  v4 = [v3 audioCallTranslationEnabled];

  if (v4)
  {
    v5 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([v5 callDisplayStyle] == 3)
    {
      v6 = [(PHAudioCallViewController *)self features];
      v7 = [v6 isDominoEnabled];

      if (v7)
      {
        return;
      }
    }

    else
    {
    }

    v8 = [(PHAudioCallViewController *)self activeCall];
    v9 = sub_100004F84();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(PHAudioCallViewController *)self callDisplayStyleManager];
      v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 callDisplayStyle]);
      v16 = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Update translation with call: %@, display style %@", &v16, 0x16u);
    }

    if ([v8 translationAvailability] == 3 && (objc_msgSend(v8, "callStatus") == 1 || objc_msgSend(v8, "callStatus") == 4) && (-[PHCallViewController currentState](self, "currentState") == 4 || -[PHCallViewController currentState](self, "currentState") == 1 || -[PHCallViewController currentState](self, "currentState") == 2))
    {
      v12 = [(PHAudioCallViewController *)self translationController];
      [v12 updateCall:v8];

      v13 = [(PHAudioCallViewController *)self translationController];
      v14 = [(PHAudioCallViewController *)self topLeadingContainer];
      [v13 showCallTranslationButtonIfNeeded:self buttonContainer:v14];
    }

    else
    {
      v15 = [(PHAudioCallViewController *)self translationController];
      [v15 hideCallTranslationButtonIfNeeded];

      v13 = [(PHAudioCallViewController *)self translationController];
      [v13 updateCall:0];
    }
  }
}

- (PHCallTranslationController)translationController
{
  v3 = [(PHAudioCallViewController *)self featureFlags];
  v4 = [v3 audioCallTranslationEnabled];

  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v5 callDisplayStyle] == 3)
  {
    v6 = [(PHAudioCallViewController *)self features];
    v7 = [v6 isDominoEnabled];

    if (v7)
    {
LABEL_4:
      v8 = 0;
      goto LABEL_11;
    }
  }

  else
  {
  }

  translationController = self->_translationController;
  if (!translationController)
  {
    v10 = sub_100004F84();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Create translation controller", buf, 2u);
    }

    objc_initWeak(buf, self);
    v11 = [PHCallTranslationController alloc];
    v12 = [(PHAudioCallViewController *)self translationLayoutGuide];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100130A78;
    v16[3] = &unk_100356E98;
    objc_copyWeak(&v17, buf);
    v13 = [(PHCallTranslationController *)v11 initWithContentLayoutGuide:v12 translationStateDidChange:v16];
    v14 = self->_translationController;
    self->_translationController = v13;

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
    translationController = self->_translationController;
  }

  v8 = translationController;
LABEL_11:

  return v8;
}

- (BOOL)shouldApplyNewGradientBlur
{
  if (!-[CNKFeatures isEnhancedEmergencyEnabled](self->_features, "isEnhancedEmergencyEnabled") || (-[PHAudioCallViewController frontmostCall](self, "frontmostCall"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isEmergency], v4, (v5 & 1) == 0))
  {
    v7 = [(PHAudioCallViewController *)self callToUseForWallpaper];
    v8 = [v7 provider];
    v9 = [v8 isSystemProvider];
    if ((v9 & 1) != 0 || (-[PHAudioCallViewController callToUseForWallpaper](self, "callToUseForWallpaper"), v2 = objc_claimAutoreleasedReturnValue(), [v2 status] != 4))
    {
      v10 = [(PHAudioCallViewController *)self features];
      v6 = [v10 isHeroImageEnabled];

      if (v9)
      {
LABEL_9:

        return v6;
      }
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_9;
  }

  return 0;
}

- (BOOL)shouldRenderAlertTextFont
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [(PHCallViewController *)self currentState]== 8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController shouldRenderAlertTextFont = %d", v5, 8u);
  }

  return [(PHCallViewController *)self currentState]== 8;
}

- (BOOL)shouldShowCircularAvatar
{
  if ([(CNKFeatures *)self->_features isEnhancedEmergencyEnabled])
  {
    v3 = [(PHAudioCallViewController *)self frontmostCall];
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v5 = [(PHAudioCallViewController *)self callCenter];
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

  v11 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v11 callDisplayStyle] == 3)
  {
    v12 = [(PHAudioCallViewController *)self features];
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

  v16 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  v17 = [v16 callDisplayStyle];

  if ([(PHAudioCallViewController *)self shouldShowContactOrLastSeenWallpaper])
  {
    v18 = 1;
  }

  else
  {
    v19 = [(PHAudioCallViewController *)self renderingViewController];
    v18 = v19 != 0;
  }

  v20 = [(PHAudioCallViewController *)self callToUseForWallpaper];
  v21 = [(PHAudioCallViewController *)self contactImageForCall:v20];

  v22 = [(PHAudioCallViewController *)self callToUseForWallpaper];
  v23 = [(PHAudioCallViewController *)self fallbackImageDataForCall:v22];

  if (!v18 && [(PHAudioCallViewController *)self shouldApplyNewGradientBlur])
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

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = PHAudioCallViewController;
  [(PHAudioCallViewController *)&v8 viewDidLayoutSubviews];
  v3 = [(PHAudioCallViewController *)self callParticipantsViewController];
  if (v3)
  {
    v4 = v3;
    v5 = [(PHAudioCallViewController *)self canDumpHierarchy];

    if (v5)
    {
      v6 = [(PHAudioCallViewController *)self callParticipantsViewController];
      v7 = [v6 view];
      [ICSViewEvaluation processHierarchy:v7];

      [(PHAudioCallViewController *)self setCanDumpHierarchy:0];
    }
  }

  [(PHAudioCallViewController *)self updateSaliencyRectIfNeeded];
  [(UIView *)self->_posterContainer bounds];
  [(PHAudioCallViewController *)self updatePosterDimmingAreaWith:?];
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

- (void)writeToLastSeenPosterCacheIfNecessaryForCall:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000322E4();
}

- (void)tipKitStopWaitOnHoldObservation
{
  v2 = self;
  sub_10003430C();
}

- (BOOL)isUserInterfaceShowing
{
  v3 = +[ICSPreferences sharedPreferences];
  v4 = [v3 hasAdoptedModernInCallAPI];

  if (!v4)
  {
    return [(PHAudioCallViewController *)self _appearState]== 2;
  }

  v5 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  v6 = [v5 callDisplayStyle] != 4;

  return v6;
}

- (void)transitionToFullScreenIfNecessary
{
  v7 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if (![v7 callDisplayStyle])
  {
    v3 = [(PHAudioCallViewController *)self view];
    v4 = [v3 window];
    v5 = [v4 windowScene];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return;
    }

    v7 = [(PHAudioCallViewController *)self inCallRootViewController];
    [v7 requestInCallSceneTransitionToFullScreen];
  }
}

- (void)removeButtonFrom:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1000349B4(a3);
}

- (void)updateCallParticipantsViewControllerCallGroups
{
  if ([(PHAudioCallViewController *)self usesCompactMulticallUI]&& ([(PHAudioCallViewController *)self prioritizedCall], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v5 = [(PHAudioCallViewController *)self prioritizedCall];
    v4 = [(PHAudioCallViewController *)self callParticipantsViewController];
    [v4 setPrioritizedCall:v5];
  }

  else
  {
    v5 = [(PHAudioCallViewController *)self callParticipantsViewController];
    [v5 updateCallGroups];
  }
}

- (void)dismissWaitOnHoldTip
{
  v2 = self;
  sub_10024E4A8();
}

- (void)revealAudioRoutingDeviceListAnimatedIfNeeded
{
  v3 = [(PHAudioCallViewController *)self callCenter];
  v7 = [v3 routeController];

  if ([v7 areNonRelayAuxiliaryRoutesAvailable])
  {
    v4 = [v7 pickedRoute];
    v5 = v4;
    if (!v4 || (v6 = [v4 deviceType], v6 > 0x1D) || ((1 << v6) & 0x24140002) == 0 || (objc_msgSend(v5, "isPreferredAndActive") & 1) == 0)
    {
      [(PHAudioCallViewController *)self revealAudioRoutingDeviceListAnimated:1];
    }
  }

  _objc_release_x1();
}

- (int64_t)preferredInterfaceOrientationForPresentation
{
  if (!+[PHUIConfiguration canAutoRotateInCallUIForFaceTimeAudio])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = PHAudioCallViewController;
  return [(PHAudioCallViewController *)&v4 preferredInterfaceOrientationForPresentation];
}

- (unint64_t)supportedInterfaceOrientations
{
  if (+[PHUIConfiguration canAutoRotateInCallUIForFaceTimeAudio])
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)_testing_finishedAnimatingToActiveCallState:(id)a3
{
  v4 = a3;
  if ([UIApp isRunningTest:@"AnswerIncomingCall"])
  {
    [UIApp finishedSubTest:@"end-to-end" forTest:@"AnswerIncomingCall"];
    [(PHAudioCallViewController *)self bottomBarActionPerformed:15 withCompletionState:1 fromBar:v4];
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
    v7[2] = sub_1000B1AD0;
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
    v6[2] = sub_1000B1D4C;
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
    v7 = [(PHAudioCallViewController *)self callParticipantsViewController];
    [v7 setShouldIgnoreUpdates:v3];

    v8 = [(PHAudioCallViewController *)self callWaitingParticipantsViewController];
    [v8 setShouldIgnoreUpdates:v3];
  }
}

- (PHAudioCallViewController)initWithCallDisplayStyleManager:(id)a3 callCenter:(id)a4 featureFlags:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v80.receiver = self;
  v80.super_class = PHAudioCallViewController;
  v12 = [(PHCallViewController *)&v80 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_callCenter, a4);
    objc_storeStrong(&v13->_featureFlags, a5);
    v14 = objc_opt_new();
    analyticsReporter = v13->_analyticsReporter;
    v13->_analyticsReporter = v14;

    v16 = objc_opt_new();
    v17 = [v16 makeWithCallCenter:v10];
    declineCallService = v13->_declineCallService;
    v13->_declineCallService = v17;

    v19 = objc_opt_new();
    labelDescriptorFactory = v13->_labelDescriptorFactory;
    v13->_labelDescriptorFactory = v19;

    objc_storeStrong(&v13->_callDisplayStyleManager, a3);
    v13->_wasPresentedAsBanner = [v9 callDisplayStyle] == 0;
    v13->_middleViewState = 0;
    v13->_canDumpHierarchy = 1;
    v21 = objc_opt_new();
    mutedTalkerViewControllerFactory = v13->_mutedTalkerViewControllerFactory;
    v13->_mutedTalkerViewControllerFactory = v21;

    v23 = [(CNKMutedTalkerBannerViewControllerFactory *)v13->_mutedTalkerViewControllerFactory makeViewController];
    mutedTalkerBannerViewController = v13->_mutedTalkerBannerViewController;
    v13->_mutedTalkerBannerViewController = v23;

    [(CNKMutedTalkerBannerViewControllerProtocol *)v13->_mutedTalkerBannerViewController setDelegate:v13];
    v13->_didNotifyMutedCaller = 0;
    v25 = objc_opt_new();
    screeningViewControllerFactory = v13->_screeningViewControllerFactory;
    v13->_screeningViewControllerFactory = v25;

    v27 = +[CNKFeatures sharedInstance];
    features = v13->_features;
    v13->_features = v27;

    v13->_participantsViewShouldShowParticipantLabel = 1;
    v29 = objc_alloc_init(NSCache);
    contactsCache = v13->_contactsCache;
    v13->_contactsCache = v29;

    [(NSCache *)v13->_contactsCache setCountLimit:10];
    v31 = objc_alloc_init(NSCache);
    configurationCache = v13->_configurationCache;
    v13->_configurationCache = v31;

    v33 = +[NSMutableArray array];
    callUUIDsThatPresentedSNaPHUD = v13->_callUUIDsThatPresentedSNaPHUD;
    v13->_callUUIDsThatPresentedSNaPHUD = v33;

    v35 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v13->_featureFlags;
    v13->_featureFlags = v35;

    v37 = objc_opt_new();
    screenSharingInteractionControllerFactory = v13->_screenSharingInteractionControllerFactory;
    v13->_screenSharingInteractionControllerFactory = v37;

    v39 = objc_opt_new();
    waitOnHoldViewControllerFactory = v13->_waitOnHoldViewControllerFactory;
    v13->_waitOnHoldViewControllerFactory = v39;

    v41 = objc_opt_new();
    smartHoldingAnalytics = v13->_smartHoldingAnalytics;
    v13->_smartHoldingAnalytics = v41;

    v43 = +[NSNotificationCenter defaultCenter];
    [v43 addObserver:v13 selector:"callCenterCallStatusChangedNotification:" name:TUCallCenterCallStatusChangedNotification object:0];
    [v43 addObserver:v13 selector:"hardwareButtonEventNotification:" name:@"PHHardwareButtonEventNotification" object:0];
    [v43 addObserver:v13 selector:"hardPauseDigitsStateChangedNotification:" name:TUCallHardPauseDigitsStateChangedNotification object:0];
    [v43 addObserver:v13 selector:"callContinuityStateChangedNotification:" name:TUCallCenterCallContinuityStateChangedNotification object:0];
    [v43 addObserver:v13 selector:"wantsHoldMusicChangedNotification:" name:TUCallCenterCallWantsHoldMusicChangedNotification object:0];
    [v43 addObserver:v13 selector:"callOnHoldChangedNotification:" name:TUCallIsOnHoldChangedNotification object:0];
    [v43 addObserver:v13 selector:"handleTUCallSupportsTTYWithVoiceChangedNotification:" name:TUCallSupportsTTYWithVoiceChangedNotification object:0];
    [v43 addObserver:v13 selector:"handleTUCallTTYTypeChangedNotification:" name:TUCallTTYTypeChangedNotification object:0];
    [v43 addObserver:v13 selector:"callIsScreenSharingChangedNotification:" name:TUCallIsSharingScreenChangedNotification object:0];
    [v43 addObserver:v13 selector:"callKeypadDataSourceChangedNotification:" name:@"PHInCallKeypadDataSourceChangedNotification" object:0];
    [v43 addObserver:v13 selector:"callDisplayContextChangedNotification:" name:TUCallDisplayContextChangedNotification object:0];
    [v43 addObserver:v13 selector:"callIsEmergencyChangedNotification:" name:TUCallCenterIsEmergencyChangedNotification object:0];
    [v43 addObserver:v13 selector:"conferenceParticipantCallsChangedNotification:" name:TUCallCenterConferenceParticipantsChangedNotification object:0];
    [v43 addObserver:v13 selector:"showAddParticipantSheet" name:@"MoreMenuRemoteAlertViewPresentAddParticipantNotification" object:0];
    [v43 addObserver:v13 selector:"presentContactCard" name:@"MoreMenuRemoteAlertViewPresentContactCardNotification" object:0];
    [v43 addObserver:v13 selector:"callRecordingAfterFullScreenRequest:" name:@"MoreMenuRemoteAlertViewCallRecordingNotification" object:0];
    [v43 addObserver:v13 selector:"callRecordingStateChanged:" name:TUCallRecordingStateChangedNotification object:0];
    [v43 addObserver:v13 selector:"callRecordingCountdownStarted:" name:@"startCountdownForCallRecording" object:0];
    v44 = [(PHAudioCallViewController *)v13 featureFlags];
    v45 = TUCallScreeningEnabledM3();

    if (v45)
    {
      [v43 addObserver:v13 selector:"callCenterScreeningStatusChangedNotification:" name:TUCallCenterIsScreeningChangedNotification object:0];
    }

    v46 = [(PHAudioCallViewController *)v13 featureFlags];
    v47 = [v46 receptionistEnabled];

    if (v47)
    {
      [v43 addObserver:v13 selector:"receptionistStateChanged:" name:TUCallCenterReceptionistStateChangedNotification object:0];
    }

    v48 = [(PHAudioCallViewController *)v13 featureFlags];
    v49 = [v48 audioCallTranslationEnabled];

    if (v49)
    {
      [v43 addObserver:v13 selector:"updateCallTranslationIfNeeded" name:TUCallTranslationAvailabilityChangedNotification object:0];
    }

    v50 = [(PHAudioCallViewController *)v13 featureFlags];
    v51 = [v50 waitOnHoldEnabled];

    if (v51)
    {
      [(PHAudioCallViewController *)v13 setupCallHoldingObservers];
    }

    v52 = [v10 routeController];
    [v52 addDelegate:v13];

    v53 = [v10 audioDeviceController];
    [v53 addDelegate:v13];

    v54 = +[UIApplication sharedApplication];
    v55 = [v54 delegate];
    v56 = [v55 bannerPresentationManager];
    [v56 setLocalAudioTogglingDelegate:v13];

    v57 = [(CNKScreenSharingInteractionControllerFactory *)v13->_screenSharingInteractionControllerFactory sharedController];
    [v57 addDelegate:v13];
  }

  v58 = sub_100004F84();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController is about to set shouldPresentAlertButton to NO", buf, 2u);
  }

  v13->_shouldPresentAlertButton = 0;
  v59 = +[UIApplication sharedApplication];
  v60 = [v59 delegate];
  v61 = [v60 alertCoordinator];

  if (!v61)
  {
    v62 = objc_alloc_init(_TtC13InCallService16AlertCoordinator);
    v63 = +[UIApplication sharedApplication];
    v64 = [v63 delegate];
    [v64 setAlertCoordinator:v62];
  }

  v65 = +[UIApplication sharedApplication];
  v66 = [v65 delegate];
  v67 = [v66 alertCoordinator];
  [v67 setDelegate:v13];

  v13->_shouldEnableVideoStreamingButton = 0;
  v13->_shouldEnableShareMediaButton = 0;
  v68 = [(PHAudioCallViewController *)v13 features];
  LODWORD(v66) = [v68 isEnhancedEmergencyEnabled];

  if (v66)
  {
    v69 = +[PHSOSDisconnectionConfirmation sharedInstance];
    [v69 addDelegate:v13];

    v70 = [v10 frontmostCall];
    if ([v70 isEmergency])
    {
      v71 = [(PHAudioCallViewController *)v13 emergencyCoordinator];

      if (v71)
      {
        goto LABEL_22;
      }

      v72 = sub_100004F84();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v82 = v13;
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "EnhancedEmergency: going to create PHEnhancedEmergencyCoordinator from initing PHAudioCallViewController: %@", buf, 0xCu);
      }

      v73 = objc_alloc_init(PHEnhancedEmergencyCoordinator);
      [(PHAudioCallViewController *)v13 setEmergencyCoordinator:v73];

      v74 = [(PHAudioCallViewController *)v13 emergencyCoordinator];
      [v74 setDelegate:v13];

      v70 = [v10 frontmostCall];
      v75 = [(PHAudioCallViewController *)v13 emergencyCoordinator];
      [v75 setTuCall:v70];
    }
  }

LABEL_22:
  [(PHAudioCallViewController *)v13 setupDimmingViewForAlwaysOnDisplay];
  if (_UISolariumEnabled())
  {
    [(PHAudioCallViewController *)v13 addDimmingView];
  }

  v76 = [(PHAudioCallViewController *)v13 topLeadingContainer];
  v77 = [(PHAudioCallViewController *)v13 middlePillContainer];
  [(PHAudioCallViewController *)v13 updateCallRecordingIfNeededWithButtonContainer:v76 pillContainer:v77];

  v78 = [(PHAudioCallViewController *)v13 topLeadingContainer];
  [(PHAudioCallViewController *)v13 updateCallHoldingIfNeeded:v78];

  return v13;
}

- (void)callRecordingAfterFullScreenRequest:(id)a3
{
  v4 = [a3 userInfo];
  v7 = [v4 valueForKey:@"callRecording"];

  v5 = [(PHAudioCallViewController *)self topLeadingContainer];
  v6 = [(PHAudioCallViewController *)self middlePillContainer];
  [(PHAudioCallViewController *)self updateCallRecordingIfNeededWithButtonContainer:v5 pillContainer:v6];

  if ([v7 isEqual:@"start"])
  {
    [(PHAudioCallViewController *)self startCallRecording];
  }

  else if ([v7 isEqual:@"stop"])
  {
    [(PHAudioCallViewController *)self stopCallRecording];
  }
}

- (void)callRecordingCountdownStarted:(id)a3
{
  self->_callRecordingCountdownShowing = 1;
  v4 = [(PHAudioCallViewController *)self topLeadingContainer];
  v5 = [(PHAudioCallViewController *)self middlePillContainer];
  [(PHAudioCallViewController *)self updateCallRecordingIfNeededWithButtonContainer:v4 pillContainer:v5];

  [(PHAudioCallViewController *)self removeSupplementalButtons];
}

- (void)callRecordingStateChanged:(id)a3
{
  self->_callRecordingCountdownShowing = 0;
  v4 = [(PHAudioCallViewController *)self topLeadingContainer];
  v5 = [(PHAudioCallViewController *)self middlePillContainer];
  [(PHAudioCallViewController *)self updateCallRecordingIfNeededWithButtonContainer:v4 pillContainer:v5];

  [(PHAudioCallViewController *)self updateLayoutSupplementalButtons];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = [(PHCallViewController *)self bottomBar];
  [v4 setDelegate:0];

  v5 = [(PHAudioCallViewController *)self callCenter];
  v6 = [v5 audioDeviceController];
  [v6 removeDelegate:self];

  v7 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v7 callDisplayStyle] != 3)
  {

    goto LABEL_5;
  }

  v8 = [(PHAudioCallViewController *)self features];
  v9 = [v8 isDominoEnabled];

  if ((v9 & 1) == 0)
  {
LABEL_5:
    [(PHAudioCallViewController *)self deleteAllUnarchivedPosterDirectories];
  }

  v10 = [(PHAudioCallViewController *)self features];
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
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController deallocated %@", buf, 0xCu);
  }

  v14.receiver = self;
  v14.super_class = PHAudioCallViewController;
  [(PHAudioCallViewController *)&v14 dealloc];
}

- (void)loadView
{
  [(PHAudioCallViewController *)self setRootView];
  [(PHAudioCallViewController *)self setupAmbientAudioRoutesControlViewIfNeeded];
  [(PHAudioCallViewController *)self addCallParticipantsSubView];
  [(PHAudioCallViewController *)self addBottomBarSubView];
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PHAudioCallViewController *)self view];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController view loaded: %@", &v5, 0xCu);
  }
}

- (void)setRootView
{
  v3 = +[UIScreen mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if ([(PHAudioCallViewController *)self preferredInterfaceOrientationForPresentation]== 1)
  {
    v12 = +[PHInCallUtilities sharedInstance];
    v13 = [v12 isIPadIdiom];

    v14 = v11 < v9;
    if ((v14 & ~v13) != 0)
    {
      v15 = v9;
    }

    else
    {
      v15 = v11;
    }
  }

  else
  {
    v14 = v11 < v9;
    v15 = v11;
  }

  if (v14)
  {
    v9 = v11;
  }

  v18 = [[UIView alloc] initWithFrame:{v5, v7, v9, v15}];
  [(PHAudioCallViewController *)self setView:v18];
  v16 = [v18 layer];
  [v16 setAllowsGroupBlending:0];

  v17 = [v18 layer];
  [v17 setAllowsGroupOpacity:0];

  [v18 setAutoresizingMask:18];
}

- (void)addBottomBarSubView
{
  v3 = [PHBottomBar alloc];
  v4 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  v5 = [(PHBottomBar *)v3 initWithCallDisplayStyleManager:v4];
  [(PHCallViewController *)self setBottomBar:v5];

  v6 = [(PHAudioCallViewController *)self view];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v11 = [(PHCallViewController *)self bottomBar];
  [v11 setRotatedTargetSizeOfParent:{v8, v10}];

  v12 = +[UIColor clearColor];
  v13 = [(PHCallViewController *)self bottomBar];
  [v13 setBackgroundColor:v12];

  v14 = [(PHCallViewController *)self bottomBar];
  [v14 setDelegate:self];

  v15 = objc_opt_class();
  v16 = [(PHAudioCallViewController *)self view];
  [v15 _bottomBarBottomMarginForView:v16];
  v18 = v17;
  v19 = [(PHCallViewController *)self bottomBar];
  [v19 setBottomMargin:v18];

  v20 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  v21 = [v20 callDisplayStyle];

  if (!v21)
  {
    v22 = [(PHCallViewController *)self bottomBar];
    [v22 setAlpha:0.0];
  }

  [(PHAudioCallViewController *)self updateHardPauseDigitsState];
  v23 = [(PHAudioCallViewController *)self view];
  v24 = [(PHCallViewController *)self bottomBar];
  [v23 addSubview:v24];

  [(PHAudioCallViewController *)self constrainBottomBar];
  v25 = [(PHCallViewController *)self bottomBar];
  [v25 setCurrentState:11];

  objc_initWeak(&location, self);
  v31 = _NSConcreteStackBlock;
  v32 = 3221225472;
  v33 = sub_10001B37C;
  v34 = &unk_100356F60;
  objc_copyWeak(&v35, &location);
  v26 = objc_retainBlock(&v31);
  (v26[2])(v26, v27, v28, v29);
  v30 = [(PHCallViewController *)self bottomBar:v31];
  [v30 setStatusChangedHandler:v26];

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
}

- (void)constrainBottomBar
{
  v3 = [(PHCallViewController *)self bottomBar];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(PHAudioCallViewController *)self constrainBottomBarBottom];
  v4 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v4 callDisplayStyle] != 3)
  {

LABEL_5:
    v19 = [(PHCallViewController *)self bottomBar];
    v20 = [v19 centerXAnchor];
    v21 = [(PHAudioCallViewController *)self view];
    v22 = [v21 centerXAnchor];
    v18 = [v20 constraintEqualToAnchor:v22];

    v23 = +[PHInCallUtilities sharedInstance];
    if ([v23 isIPadIdiom])
    {
      v24 = [(PHAudioCallViewController *)self features];
      v25 = [v24 lvmEverywhereEnabled];

      if (!v25)
      {
        v26 = [(PHCallViewController *)self bottomBar];
        v27 = [v26 widthAnchor];
        +[PHBottomBar defaultWidth];
        v7 = [v27 constraintEqualToConstant:?];
LABEL_10:

        v44[0] = v18;
        v44[1] = v7;
        v8 = [NSArray arrayWithObjects:v44 count:2];
        [NSLayoutConstraint activateConstraints:v8];
        goto LABEL_11;
      }
    }

    else
    {
    }

    v26 = [(PHCallViewController *)self bottomBar];
    v27 = [v26 widthAnchor];
    v28 = [(PHAudioCallViewController *)self view];
    [v28 frame];
    v7 = [v27 constraintEqualToConstant:v29];

    goto LABEL_10;
  }

  v5 = [(PHAudioCallViewController *)self features];
  v6 = [v5 isDominoEnabled];

  if (!v6)
  {
    goto LABEL_5;
  }

  v40 = [(PHCallViewController *)self bottomBar];
  v7 = [v40 topAnchor];
  v8 = [(PHAudioCallViewController *)self trailingSideLayoutGuide];
  v43 = [v8 bottomAnchor];
  v42 = [v7 constraintGreaterThanOrEqualToAnchor:v43 constant:11.0];
  v45[0] = v42;
  v41 = [(PHCallViewController *)self bottomBar];
  v38 = [v41 trailingAnchor];
  v39 = [(PHAudioCallViewController *)self safeAreaLayoutGuide];
  v37 = [v39 trailingAnchor];
  +[PHUIConfiguration ambientHorizontalPadding];
  v36 = [v38 constraintEqualToAnchor:v37 constant:-v9];
  v45[1] = v36;
  v35 = [(PHCallViewController *)self bottomBar];
  v34 = [v35 widthAnchor];
  +[PHBottomBar ambientWidth];
  v33 = [v34 constraintEqualToConstant:?];
  v45[2] = v33;
  v32 = [(PHCallViewController *)self bottomBar];
  v30 = [v32 leadingAnchor];
  v31 = [(PHAudioCallViewController *)self trailingSideLayoutGuide];
  v10 = [v31 leadingAnchor];
  v11 = [v30 constraintEqualToAnchor:v10];
  v45[3] = v11;
  v12 = [(PHCallViewController *)self bottomBar];
  v13 = [v12 trailingAnchor];
  v14 = [(PHAudioCallViewController *)self trailingSideLayoutGuide];
  v15 = [v14 trailingAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v45[4] = v16;
  v17 = [NSArray arrayWithObjects:v45 count:5];
  [NSLayoutConstraint activateConstraints:v17];

  v18 = v40;
LABEL_11:
}

- (void)addCallParticipantsSubView
{
  if (!self->_callParticipantsViewController)
  {
    v3 = [PHCallParticipantsViewController alloc];
    v4 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    v5 = [(PHAudioCallViewController *)self contactsCache];
    v6 = [(PHCallParticipantsViewController *)v3 initWithCallDisplayStyleManager:v4 contactsCache:v5];
    callParticipantsViewController = self->_callParticipantsViewController;
    self->_callParticipantsViewController = v6;

    v8 = [(PHAudioCallViewController *)self prioritizedCall];
    [(PHCallParticipantsViewController *)self->_callParticipantsViewController setPrioritizedCall:v8];

    [(PHCallParticipantsViewController *)self->_callParticipantsViewController setDelegate:self];
    [(PHCallParticipantsViewController *)self->_callParticipantsViewController setShouldIgnoreUpdates:[(PHAudioCallViewController *)self participantsViewControllersShouldIgnoreUpdates]];
    [(PHAudioCallViewController *)self updateShouldShowLargeAvatar];
    [(PHAudioCallViewController *)self addChildViewController:self->_callParticipantsViewController];
    v9 = [(PHAudioCallViewController *)self view];
    v10 = [(PHCallParticipantsViewController *)self->_callParticipantsViewController view];
    [v9 addSubview:v10];

    [(PHAudioCallViewController *)self setUpLayoutGuidesForParticipantsViewController:self->_callParticipantsViewController];
    [(PHAudioCallViewController *)self applyParticipantsViewConstraints];
    v11 = [(PHAudioCallViewController *)self translationLayoutGuide];

    if (v11)
    {
      v16 = [(PHAudioCallViewController *)self translationLayoutGuide];
      v12 = [v16 topAnchor];
      v13 = [(PHCallParticipantsViewController *)self->_callParticipantsViewController view];
      v14 = [v13 bottomAnchor];
      v15 = [v12 constraintEqualToAnchor:v14];
      [v15 setActive:1];
    }
  }
}

- (void)layoutParticipantsViewAnimated:(BOOL)a3 crossfade:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(PHAudioCallViewController *)self shouldShowLargeAvatar];
  [(PHAudioCallViewController *)self updateShouldShowLargeAvatar];
  v8 = [(PHAudioCallViewController *)self shouldShowLargeAvatar];
  if (v5)
  {
    if (v4)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100111E00;
      v14[3] = &unk_100356988;
      v14[4] = self;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100111E70;
      v13[3] = &unk_1003569B0;
      v13[4] = self;
      [UIView animateWithDuration:v14 animations:v13 completion:0.400000006];
    }

    else
    {
      v9 = v7 ^ v8;
      if (v9)
      {
        v10 = [(PHAudioCallViewController *)self view];
        [v10 layoutIfNeeded];
      }

      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100111F8C;
      v11[3] = &unk_100356BB8;
      v12 = v9;
      v11[4] = self;
      [UIView animateWithDuration:0 delay:v11 usingSpringWithDamping:&stru_100359BC0 initialSpringVelocity:0.800000012 options:0.0 animations:1.0 completion:0.0];
    }
  }

  else
  {

    [(PHAudioCallViewController *)self resetParticipantsViewConstraints];
  }
}

- (void)resetParticipantsViewConstraints
{
  [(PHAudioCallViewController *)self removeAllParticipantsViewConstraints];
  [(PHAudioCallViewController *)self applyParticipantsViewConstraints];

  [(PHAudioCallViewController *)self copyCallWaitingConstraintsFromParticipantsView];
}

- (void)removeAllParticipantsViewConstraints
{
  v15 = +[NSMutableArray array];
  v3 = [(PHAudioCallViewController *)self participantsViewTopConstraint];

  if (v3)
  {
    v4 = [(PHAudioCallViewController *)self participantsViewTopConstraint];
    [v15 addObject:v4];
  }

  v5 = [(PHAudioCallViewController *)self participantsViewLeadingConstraint];

  if (v5)
  {
    v6 = [(PHAudioCallViewController *)self participantsViewLeadingConstraint];
    [v15 addObject:v6];
  }

  v7 = [(PHAudioCallViewController *)self participantsViewTrailingConstraint];

  if (v7)
  {
    v8 = [(PHAudioCallViewController *)self participantsViewTrailingConstraint];
    [v15 addObject:v8];
  }

  v9 = [(PHAudioCallViewController *)self participantsViewCenterXConstraint];

  if (v9)
  {
    v10 = [(PHAudioCallViewController *)self participantsViewCenterXConstraint];
    [v15 addObject:v10];
  }

  v11 = [(PHAudioCallViewController *)self participantsViewBottomConstraint];

  if (v11)
  {
    v12 = [(PHAudioCallViewController *)self participantsViewBottomConstraint];
    [v15 addObject:v12];
  }

  v13 = [(PHAudioCallViewController *)self participantsViewCenterYConstraint];

  if (v13)
  {
    v14 = [(PHAudioCallViewController *)self participantsViewCenterYConstraint];
    [v15 addObject:v14];
  }

  [NSLayoutConstraint deactivateConstraints:v15];
}

- (void)applyParticipantsViewConstraints
{
  v3 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  v4 = [v3 callDisplayStyle];

  if (v4 <= 2)
  {
    if ((v4 - 1) >= 2)
    {
      if (!v4)
      {

        [(PHAudioCallViewController *)self applyParticipantsViewConstraintsForBanner];
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

    [(PHAudioCallViewController *)self applyParticipantsViewConstraintsForFullScreen];
    return;
  }

  [(PHAudioCallViewController *)self applyParticipantsViewConstraintsForAmbient];
}

- (void)applyParticipantsViewConstraintsForFullScreen
{
  v3 = [(PHAudioCallViewController *)self getParticipantsView_NotWaiting];
  if (v3)
  {
    v4 = [(PHAudioCallViewController *)self viewIfLoaded];

    if (v4)
    {
      [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PHAudioCallViewController *)self setParticipantsViewCenterYConstraint:0];
      v5 = [v3 topAnchor];
      v6 = [(PHAudioCallViewController *)self view];
      v7 = [v6 safeAreaLayoutGuide];
      v8 = [v7 topAnchor];
      +[TPIncomingCallMetricsProvider sixPercentOfDeviceHeight];
      v9 = [v5 constraintEqualToAnchor:v8 constant:?];
      [(PHAudioCallViewController *)self setParticipantsViewTopConstraint:v9];

      v10 = [v3 centerXAnchor];
      v11 = [(PHAudioCallViewController *)self view];
      v12 = [v11 centerXAnchor];
      v13 = [v10 constraintEqualToAnchor:v12];
      [(PHAudioCallViewController *)self setParticipantsViewCenterXConstraint:v13];

      v14 = [v3 leadingAnchor];
      v15 = [(PHAudioCallViewController *)self view];
      v16 = [v15 readableContentGuide];
      v17 = [v16 leadingAnchor];
      v18 = [v14 constraintEqualToAnchor:v17];
      [(PHAudioCallViewController *)self setParticipantsViewLeadingConstraint:v18];

      v19 = [v3 trailingAnchor];
      v20 = [(PHAudioCallViewController *)self view];
      v21 = [v20 readableContentGuide];
      v22 = [v21 trailingAnchor];
      v23 = [v19 constraintEqualToAnchor:v22];
      [(PHAudioCallViewController *)self setParticipantsViewTrailingConstraint:v23];

      v24 = [(PHAudioCallViewController *)self participantsViewTopConstraint];
      v29[0] = v24;
      v25 = [(PHAudioCallViewController *)self participantsViewCenterXConstraint];
      v29[1] = v25;
      v26 = [(PHAudioCallViewController *)self participantsViewLeadingConstraint];
      v29[2] = v26;
      v27 = [(PHAudioCallViewController *)self participantsViewTrailingConstraint];
      v29[3] = v27;
      v28 = [NSArray arrayWithObjects:v29 count:4];
      [NSLayoutConstraint activateConstraints:v28];
    }
  }
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
    v13 = [(PHAudioCallViewController *)self view];
    v14 = [v13 bottomAnchor];
    v15 = [v12 constraintEqualToAnchor:v14 constant:-v9];
    [v7 setObject:v15 forKeyedSubscript:&off_10036A508];

    v16 = [v6 trailingAnchor];
    v17 = [(PHAudioCallViewController *)self view];
    v18 = [v17 safeAreaLayoutGuide];
    v19 = [v18 trailingAnchor];
    v20 = [v16 constraintEqualToAnchor:v19 constant:-v11];
    [v7 setObject:v20 forKeyedSubscript:&off_10036A520];
  }

  else
  {
    v16 = [v6 trailingAnchor];
    v17 = [(PHAudioCallViewController *)self ambientAudioRoutesControlView];
    v18 = [v17 leadingAnchor];
    v19 = [v16 constraintEqualToAnchor:v18 constant:-20.0];
    [v7 setObject:v19 forKeyedSubscript:&off_10036A520];
  }

  v21 = [v6 topAnchor];
  v22 = [(PHAudioCallViewController *)self view];
  v23 = [v22 topAnchor];
  v24 = [v21 constraintEqualToAnchor:v23 constant:v9];
  [v7 setObject:v24 forKeyedSubscript:&off_10036A538];

  v25 = [v6 leadingAnchor];
  v26 = [(PHAudioCallViewController *)self view];
  v27 = [v26 safeAreaLayoutGuide];
  v28 = [v27 leadingAnchor];
  v29 = [v25 constraintEqualToAnchor:v28 constant:v11];
  [v7 setObject:v29 forKeyedSubscript:&off_10036A550];

  return v7;
}

- (void)applyParticipantsViewConstraintsForAmbient
{
  v3 = [(PHAudioCallViewController *)self getParticipantsView_NotWaiting];
  v4 = v3;
  if (v3)
  {
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [(PHAudioCallViewController *)self ambientParticipantsViewConstraintsForView:v4 largeAvatar:[(PHAudioCallViewController *)self shouldShowLargeAvatar]];
    [(PHAudioCallViewController *)self setParticipantsViewCenterXConstraint:0];
    [(PHAudioCallViewController *)self setParticipantsViewCenterYConstraint:0];
    v6 = [v5 objectForKeyedSubscript:&off_10036A538];
    [(PHAudioCallViewController *)self setParticipantsViewTopConstraint:v6];

    v7 = [v5 objectForKeyedSubscript:&off_10036A508];
    [(PHAudioCallViewController *)self setParticipantsViewBottomConstraint:v7];

    v8 = [v5 objectForKeyedSubscript:&off_10036A550];
    [(PHAudioCallViewController *)self setParticipantsViewLeadingConstraint:v8];

    v9 = [v5 objectForKeyedSubscript:&off_10036A520];
    [(PHAudioCallViewController *)self setParticipantsViewTrailingConstraint:v9];

    v10 = [(PHAudioCallViewController *)self participantsViewTopConstraint];
    v11 = [(PHAudioCallViewController *)self participantsViewLeadingConstraint];
    v16[1] = v11;
    v12 = [(PHAudioCallViewController *)self participantsViewTrailingConstraint];
    v16[2] = v12;
    v13 = [NSArray arrayWithObjects:v16 count:3];
    [NSLayoutConstraint activateConstraints:v13];

    v14 = [(PHAudioCallViewController *)self participantsViewBottomConstraint];

    if (v14)
    {
      v15 = [(PHAudioCallViewController *)self participantsViewBottomConstraint];
      [v15 setActive:1];
    }
  }
}

- (void)applyParticipantsViewConstraintsForBanner
{
  v3 = [(PHAudioCallViewController *)self getParticipantsView_NotWaiting];
  v4 = v3;
  if (v3)
  {
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PHAudioCallViewController *)self setParticipantsViewCenterXConstraint:0];
    v5 = [v4 centerYAnchor];
    v6 = [(PHAudioCallViewController *)self view];
    v7 = [v6 centerYAnchor];
    v8 = [v5 constraintEqualToAnchor:v7];
    [(PHAudioCallViewController *)self setParticipantsViewCenterYConstraint:v8];

    v9 = [v4 topAnchor];
    v10 = [(PHAudioCallViewController *)self view];
    v11 = [v10 topAnchor];
    v12 = [v9 constraintGreaterThanOrEqualToAnchor:v11];
    [(PHAudioCallViewController *)self setParticipantsViewTopConstraint:v12];

    v13 = [v4 bottomAnchor];
    v14 = [(PHAudioCallViewController *)self view];
    v15 = [v14 bottomAnchor];
    v16 = [v13 constraintLessThanOrEqualToAnchor:v15];
    [(PHAudioCallViewController *)self setParticipantsViewBottomConstraint:v16];

    v17 = [v4 leadingAnchor];
    v18 = [(PHAudioCallViewController *)self view];
    v19 = [v18 leadingAnchor];
    v20 = [v17 constraintEqualToAnchor:v19];
    [(PHAudioCallViewController *)self setParticipantsViewLeadingConstraint:v20];

    v21 = [v4 trailingAnchor];
    v22 = [(PHAudioCallViewController *)self view];
    v23 = [v22 trailingAnchor];
    v24 = [v21 constraintEqualToAnchor:v23];
    [(PHAudioCallViewController *)self setParticipantsViewTrailingConstraint:v24];

    v25 = [(PHAudioCallViewController *)self participantsViewCenterYConstraint];
    v26 = [(PHAudioCallViewController *)self participantsViewTopConstraint];
    v31[1] = v26;
    v27 = [(PHAudioCallViewController *)self participantsViewBottomConstraint];
    v31[2] = v27;
    v28 = [(PHAudioCallViewController *)self participantsViewLeadingConstraint];
    v31[3] = v28;
    v29 = [(PHAudioCallViewController *)self participantsViewTrailingConstraint];
    v31[4] = v29;
    v30 = [NSArray arrayWithObjects:v31 count:5];
    [NSLayoutConstraint activateConstraints:v30];
  }
}

- (void)setUpLayoutGuidesForParticipantsViewController:(id)a3
{
  v28 = a3;
  v4 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v4 callDisplayStyle] == 3)
  {
    v5 = [(PHAudioCallViewController *)self features];
    v6 = [v5 isDominoEnabled];

    if (!v6)
    {
      goto LABEL_8;
    }

    v4 = [v28 view];
    if (!self->_leadingSideLayoutGuide && !self->_trailingSideLayoutGuide)
    {
      v7 = objc_alloc_init(UILayoutGuide);
      leadingSideLayoutGuide = self->_leadingSideLayoutGuide;
      self->_leadingSideLayoutGuide = v7;

      v9 = objc_alloc_init(UILayoutGuide);
      trailingSideLayoutGuide = self->_trailingSideLayoutGuide;
      self->_trailingSideLayoutGuide = v9;

      v11 = [(PHAudioCallViewController *)self view];
      v12 = [(PHAudioCallViewController *)self leadingSideLayoutGuide];
      [v11 addLayoutGuide:v12];

      v13 = [(PHAudioCallViewController *)self view];
      v14 = [(PHAudioCallViewController *)self trailingSideLayoutGuide];
      [v13 addLayoutGuide:v14];

      v15 = [(PHAudioCallViewController *)self leadingSideLayoutGuide];
      v16 = [v15 leadingAnchor];
      v17 = [(PHAudioCallViewController *)self view];
      v18 = [v17 safeAreaLayoutGuide];
      v19 = [v18 leadingAnchor];
      v20 = [v16 constraintEqualToAnchor:v19];
      [v20 setActive:1];

      v21 = [(PHAudioCallViewController *)self leadingSideLayoutGuide];
      v22 = [v21 trailingAnchor];
      v23 = [(PHAudioCallViewController *)self view];
      v24 = [v23 centerXAnchor];
      v25 = [v22 constraintEqualToAnchor:v24];
      [v25 setActive:1];
    }

    v26 = [(PHAudioCallViewController *)self leadingSideLayoutGuide];
    [v4 setLeadingSideLayoutGuide:v26];

    v27 = [(PHAudioCallViewController *)self trailingSideLayoutGuide];
    [v4 setTrailingSideLayoutGuide:v27];
  }

LABEL_8:
}

- (void)updateScreenSharingDisableUpdateMask
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = [(PHAudioCallViewController *)self callCenter];
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

  v10 = [(PHAudioCallViewController *)self screenSharingInteractionControllerFactory];
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

  v19 = [(PHAudioCallViewController *)self view];
  v20 = [v19 layer];
  [v20 setDisableUpdateMask:v18];

  v21 = [(PHAudioCallViewController *)self callDetailsCoordinator];
  [v21 setShouldHideViewsFromScreenSharing:v13];
}

- (void)updateScreenSharingIndicatorView
{
  v3 = [(PHAudioCallViewController *)self features];
  v4 = [v3 sharePlayInCallsEnabled];

  if (v4)
  {
    v5 = [(PHAudioCallViewController *)self callCenter];
    v8 = [v5 frontmostCall];

    if ([v8 isSharingScreen])
    {
      v6 = objc_alloc_init(_TtC13InCallService26ScreenSharingIndicatorView);
      v7 = [(ScreenSharingIndicatorView *)v6 getView];
      [(PHAudioCallViewController *)self setScreenSharingIndicatorView:v7];

      [(PHAudioCallViewController *)self displayScreenSharingIndicator];
    }

    else
    {
      [(PHAudioCallViewController *)self dismissScreenSharingIndicatorView];
    }
  }
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PHAudioCallViewController;
  [(PHAudioCallViewController *)&v6 viewDidLoad];
  v3 = [(PHAudioCallViewController *)self inCallRootViewController];

  if (v3)
  {
    [(PHAudioCallViewController *)self updateCurrentState];
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

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController view will appear.", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = PHAudioCallViewController;
  [(PHAudioCallViewController *)&v6 viewWillAppear:v3];
  [(PHAudioCallViewController *)self handleViewWillAppear:v3];
}

- (void)handleViewWillAppear:(BOOL)a3
{
  [(PHAudioCallViewController *)self setParticipantsViewControllersShouldIgnoreUpdates:0];
  [(PHAudioCallViewController *)self updateCurrentState];
  [(PHAudioCallViewController *)self updateScreenSharingDisableUpdateMask];
  v8 = [(PHAudioCallViewController *)self features];
  if ([v8 isEnhancedEmergencyEnabled])
  {
    v4 = [(PHAudioCallViewController *)self emergencyCoordinator];
    if (v4)
    {
      v5 = v4;
      v6 = [(PHAudioCallViewController *)self emergencyCoordinator];
      v7 = [v6 eedRTTState];

      if (v7 != 4)
      {
        return;
      }

      v8 = [(PHAudioCallViewController *)self emergencyCoordinator];
      [v8 transitionToRTTState:2];
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController view did appear.", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = PHAudioCallViewController;
  [(PHAudioCallViewController *)&v6 viewDidAppear:v3];
  [(PHAudioCallViewController *)self handleViewDidAppear:v3];
}

- (void)handleViewDidAppear:(BOOL)a3
{
  v4 = 0.300000012;
  if (!a3)
  {
    v4 = 0.0;
  }

  [(PHCallViewController *)self setStatusBarHidden:0 withDuration:v4];
  v16 = [(PHAudioCallViewController *)self frontmostCall];
  v5 = [v16 provider];
  if ([v5 isFaceTimeProvider])
  {
    v6 = [v16 isVideo];

    if (v6)
    {
      goto LABEL_7;
    }

    v5 = +[CUTWiFiManager sharedInstance];
    [v5 addWiFiAutoAssociationClientToken:@"PHFaceTimeAudioWiFiAssertionKey"];
  }

LABEL_7:
  v7 = [(PHAudioCallViewController *)self callCenter];
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

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController view will disappear.", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = PHAudioCallViewController;
  [(PHAudioCallViewController *)&v6 viewWillDisappear:v3];
  [(PHAudioCallViewController *)self handleViewWillDisappear:v3];
}

- (void)handleViewWillDisappear:(BOOL)a3
{
  v3 = +[CUTWiFiManager sharedInstance];
  [v3 removeWiFiAutoAssociationClientToken:@"PHFaceTimeAudioWiFiAssertionKey"];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController view did disappear.", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = PHAudioCallViewController;
  [(PHCallViewController *)&v6 viewDidDisappear:v3];
  [(PHAudioCallViewController *)self handleViewDidDisappear:v3];
  [(PHAudioCallViewController *)self setCanDumpHierarchy:1];
}

- (void)handleViewDidDisappear:(BOOL)a3
{
  v4 = [(PHAudioCallViewController *)self callCenter];
  [v4 enteredBackgroundForAllCalls];

  [(PHAudioCallViewController *)self suspendPosterAndCancelDelay:1];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v8.receiver = self;
  v8.super_class = PHAudioCallViewController;
  [(PHAudioCallViewController *)&v8 viewDidMoveToWindow:v6 shouldAppearOrDisappear:v4];
  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v10 = v6;
    v11 = 1024;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController view did move to window %@, shouldAppearOrDisappear %d", buf, 0x12u);
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v35.receiver = self;
  v35.super_class = PHAudioCallViewController;
  v4 = a3;
  [(PHAudioCallViewController *)&v35 traitCollectionDidChange:v4];
  v5 = [v4 _backlightLuminance];

  v6 = [(PHAudioCallViewController *)self traitCollection];
  v7 = [v6 _backlightLuminance];

  if (v5 == v7)
  {
    goto LABEL_26;
  }

  v8 = [(PHAudioCallViewController *)self traitCollection];
  v9 = [v8 _backlightLuminance];

  v10 = [(PHAudioCallViewController *)self traitCollection];
  v11 = [v10 _backlightLuminance];

  if (!v11)
  {
    v12 = sub_100004F84();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Got trait collection callback saying display was off", v34, 2u);
    }

    [(PHAudioCallViewController *)self suspendPosterAndCancelDelay:1];
  }

  if (v9 == 1)
  {
    v13 = [(PHAudioCallViewController *)self view];
    v14 = [(PHAudioCallViewController *)self alwaysOnDisplayDimmingView];
    [v13 bringSubviewToFront:v14];

    v15 = [(PHAudioCallViewController *)self view];
    v16 = [(PHAudioCallViewController *)self callParticipantsViewController];
    v17 = [v16 view];
    [v15 bringSubviewToFront:v17];

    v18 = [(PHAudioCallViewController *)self alwaysOnDisplayDimmingView];
    [v18 setAlpha:1.0];

    v19 = [(PHAudioCallViewController *)self renderingViewController];

    if (v19)
    {
      v20 = [(PHAudioCallViewController *)self posterContainer];
      [v20 setAlpha:0.0];
    }

    v21 = [(PHAudioCallViewController *)self alwaysOnDisplayPosterNameViewModel];

    if (!v21)
    {
      goto LABEL_19;
    }

    v22 = +[TUCallCenter sharedInstance];
    if ([v22 currentCallCount] < 2)
    {
    }

    else
    {
      v23 = [(PHAudioCallViewController *)self usesCompactMulticallUI];

      v24 = 0.0;
      if ((v23 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v24 = 1.0;
LABEL_18:
    v30 = [(PHAudioCallViewController *)self alwaysOnDisplayPosterNameViewModel];
    [v30 updatePosterNameAlpha:v24];

LABEL_19:
    if (![(PHAudioCallViewController *)self videoStreamingIsGoingOn])
    {
      goto LABEL_24;
    }

    v31 = sub_100004F84();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "EnhancedEmergency: pause video if necessary when going to AOD", v34, 2u);
    }

    v29 = [(PHAudioCallViewController *)self emergencyCoordinator];
    [v29 handleDeviceLockEvent];
    goto LABEL_23;
  }

  v25 = [(PHAudioCallViewController *)self alwaysOnDisplayDimmingView];
  [v25 setAlpha:0.0];

  v26 = [(PHAudioCallViewController *)self renderingViewController];
  if (v26)
  {
    v27 = v26;
    v28 = [(PHAudioCallViewController *)self canShowPosterImage];

    if (v28)
    {
      v29 = [(PHAudioCallViewController *)self posterContainer];
      [v29 setAlpha:1.0];
LABEL_23:
    }
  }

LABEL_24:
  v32 = [(PHAudioCallViewController *)self stateDisplayChangedObservation];

  if (v32)
  {
    v33 = [(PHAudioCallViewController *)self stateDisplayChangedObservation];
    v33[2]();
  }

LABEL_26:
  [(PHAudioCallViewController *)self updateDimmingView];
}

- (void)releaseDismissalAssertion
{
  v2.receiver = self;
  v2.super_class = PHAudioCallViewController;
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
    if ([(PHAudioCallViewController *)self shouldUpdateBackgroundForEmergencyCall])
    {
      [(PHAudioCallViewController *)self updateViewForEmergencyCallIfNecessary];
      v10 = [(PHAudioCallViewController *)self emergencyCoordinator];

      if (!v10)
      {
        v11 = sub_100004F84();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412290;
          v15 = self;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "EnhancedEmergency: going to create PHEnhancedEmergencyCoordinator from callIsEmergencyChangedNotification from PHAudioCallViewController: %@", &v14, 0xCu);
        }

        v12 = objc_alloc_init(PHEnhancedEmergencyCoordinator);
        [(PHAudioCallViewController *)self setEmergencyCoordinator:v12];

        v13 = [(PHAudioCallViewController *)self emergencyCoordinator];
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

  v4 = [(PHAudioCallViewController *)self renderingViewController];

  if (v4)
  {
    [(PHAudioCallViewController *)self removePosterViewController:1 completion:0];
  }

  v5 = [(PHAudioCallViewController *)self backgroundImageView];

  if (v5)
  {
    [(PHAudioCallViewController *)self removeBackgroundContactImageView];
  }

  v6 = [(PHAudioCallViewController *)self defaultBackgroundGradientView];

  if (v6)
  {
    [(PHAudioCallViewController *)self removeDefaultBackgroundGradientView];
  }

  v7 = [(PHAudioCallViewController *)self unblurredBackgroundImageView];

  if (v7)
  {
    v8 = [(PHAudioCallViewController *)self unblurredBackgroundImageView];
    [v8 removeFromSuperview];

    [(PHAudioCallViewController *)self setUnblurredBackgroundImageView:0];
  }

  [(PHAudioCallViewController *)self updateBackgroundForEmergencyCall];
  [(PHAudioCallViewController *)self _updateStatusLabelVisibility];
}

- (void)wantsHoldMusicChangedNotification:(id)a3
{
  v4 = [(PHAudioCallViewController *)self frontmostCall];
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

  [(PHAudioCallViewController *)self updateCurrentState];
  v9 = [(PHAudioCallViewController *)self getParticipantsView_NotWaiting];
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
    v46 = 138412546;
    v47 = v6;
    v48 = 2112;
    v49 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v46, 0x16u);
  }

  v9 = [v4 object];
  if (![(PHAudioCallViewController *)self usesCompactMulticallUI])
  {
    goto LABEL_12;
  }

  v10 = [(PHAudioCallViewController *)self prioritizedCall];
  v11 = [v10 callUUID];
  if (!v11)
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = v11;
  v13 = [v9 callUUID];
  v14 = [(PHAudioCallViewController *)self prioritizedCall];
  v15 = [v14 callUUID];
  v16 = v15;
  if (v13 == v15)
  {

    goto LABEL_11;
  }

  v17 = [(PHAudioCallViewController *)self prioritizedCallIsInSameCallGroupAsCall:v9];

  if ((v17 & 1) == 0)
  {
    v18 = sub_100004F84();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v46) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "callCenterCallStatusChangedNotification - bail since we don't want to choose the call ourselves", &v46, 2u);
    }

    [(PHAudioCallViewController *)self refreshUseRTTButton];
    [(PHAudioCallViewController *)self _updatePosterStatusLabelForState:[(PHCallViewController *)self currentState]];
    goto LABEL_47;
  }

LABEL_12:
  if ([v9 status] == 1)
  {
    v19 = [(PHAudioCallViewController *)self features];
    if ([v19 isEnhancedEmergencyEnabled])
    {
      v20 = [(PHAudioCallViewController *)self emergencyCoordinator];
      if (v20)
      {
      }

      else
      {
        v21 = [v9 isEmergency];

        if (!v21)
        {
LABEL_21:
          [(PHAudioCallViewController *)self tipKitStartWaitOnHoldObservation];
          goto LABEL_22;
        }

        v22 = sub_100004F84();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v46 = 138412290;
          v47 = self;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "EnhancedEmergency: going to create PHEnhancedEmergencyCoordinator when call is active from PHAudioCallViewController: %@", &v46, 0xCu);
        }

        v23 = objc_alloc_init(PHEnhancedEmergencyCoordinator);
        [(PHAudioCallViewController *)self setEmergencyCoordinator:v23];

        v19 = [(PHAudioCallViewController *)self emergencyCoordinator];
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
    [(PHAudioCallViewController *)self clearMenuItemRegistration:v26];

    v27 = [(PHAudioCallViewController *)self frontmostCall];
    if (([v9 isVideo] & 1) == 0 && objc_msgSend(v9, "disconnectedReason") == 6)
    {
      if (v27)
      {
        v43 = [(PHCallViewController *)self bottomBar];
        v44 = [v43 currentState];

        if (v44 == 7)
        {
          v45 = [(PHAudioCallViewController *)self analyticsReporter];
          [v45 reportMultipleCallsWaitingUIAction:0];
        }
      }
    }

    [(PHAudioCallViewController *)self writeToLastSeenPosterCacheIfNecessaryForCall:v9];
    v28 = [(PHAudioCallViewController *)self features];
    if (([v28 isEnhancedEmergencyEnabled] & 1) != 0 && (-[PHAudioCallViewController emergencyCoordinator](self, "emergencyCoordinator"), (v29 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v30 = v29;
      v31 = [v9 isEmergency];

      if (v31)
      {
        v32 = sub_100004F84();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [(PHAudioCallViewController *)self emergencyCoordinator];
          v46 = 138412290;
          v47 = v33;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "EnhancedEmergency: clean emergencyCoordinator: %@", &v46, 0xCu);
        }

        v34 = [(PHAudioCallViewController *)self emergencyCoordinator];
        [v34 cleanUpViewAndObjectWhenCallEnds];

        [(PHAudioCallViewController *)self setEmergencyCoordinator:0];
      }
    }

    else
    {
    }

    [(PHAudioCallViewController *)self tipKitStopWaitOnHoldObservation];
  }

  v35 = [(PHAudioCallViewController *)self emergencyCoordinator];

  if (v35)
  {
    v36 = [(PHAudioCallViewController *)self emergencyCoordinator];
    [v36 setTuCall:v9];
  }

  [(PHAudioCallViewController *)self updateViewsForHeldCallControlsViewIfNeeded];
  [(PHAudioCallViewController *)self updateCurrentState];
  [(PHAudioCallViewController *)self refreshUseRTTButton];
  if ([(PHAudioCallViewController *)self shouldUseHeroImageLayout])
  {
    v37 = [(PHAudioCallViewController *)self callToUseForWallpaper];
    [(PHAudioCallViewController *)self setCallForBackgroundImage:v37 animated:1 callDisplayStyleChanged:0];
  }

  v38 = [(PHAudioCallViewController *)self callCenter];
  v39 = [v38 autoPunchOutBehaviorRequiredForCurrentCalls];

  if (v39)
  {
    v40 = sub_100004F84();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v46) = 0;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController: Punch-out requested for current calls", &v46, 2u);
    }

    [(PHAudioCallViewController *)self setParticipantsViewControllersShouldIgnoreUpdates:1];
    [(PHCallViewController *)self punchOutToVoIPApplicationForCurrentCall];
  }

  else
  {
    v41 = [(PHAudioCallViewController *)self callCenter];
    v42 = [v41 shouldActivateProviderInBackgroundForCall:v9];

    if (v42)
    {
      [(PHCallViewController *)self activateProviderInBackgroundForCall:v9];
    }

    else
    {
      [(PHAudioCallViewController *)self setParticipantsViewControllersShouldIgnoreUpdates:0];
    }
  }

LABEL_47:
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

  [(PHAudioCallViewController *)self updateCurrentState];
}

- (void)receptionistStateChanged:(id)a3
{
  v4 = [(PHAudioCallViewController *)self frontmostCall];
  v5 = [v4 isScreening];

  if (v5)
  {
    v6 = [(PHAudioCallViewController *)self screeningViewController];
    if (v6)
    {
      v7 = v6;
      v8 = [(PHAudioCallViewController *)self isShowingNewTranscriptsView];

      if ((v8 & 1) == 0)
      {
        v9 = [(PHAudioCallViewController *)self frontmostCall];
        v10 = [v9 receptionistState];

        if (v10)
        {
          [(PHAudioCallViewController *)self setMiddleViewState:0 animated:0];
          [(PHAudioCallViewController *)self setScreeningViewController:0];
          [(PHAudioCallViewController *)self removeScreeningBackgroundView];

          [(PHAudioCallViewController *)self setMiddleViewState:4 animated:0];
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

  [(PHAudioCallViewController *)self updateCurrentState];
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

  [(PHAudioCallViewController *)self updateHardPauseDigitsState];
  [(PHAudioCallViewController *)self refreshExtensionNumberButton];
}

- (void)callOnHoldChangedNotification:(id)a3
{
  v4 = [(PHCallViewController *)self bottomBar];
  [v4 refreshEndCallButton];

  v5 = [(PHAudioCallViewController *)self topLeadingContainer];
  [(PHAudioCallViewController *)self updateCallHoldingIfNeeded:v5];
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

  [(PHAudioCallViewController *)self refreshUseRTTButton];
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
    v34 = 138412546;
    v35 = v6;
    v36 = 2112;
    v37 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v34, 0x16u);
  }

  [(PHAudioCallViewController *)self refreshUseRTTButton];
  v9 = [(PHAudioCallViewController *)self features];
  if ([v9 isEnhancedEmergencyEnabled])
  {
    v10 = [(PHAudioCallViewController *)self callCenter];
    v11 = [v10 frontmostCall];
    v12 = [v11 isEmergency];

    if (!v12)
    {
      goto LABEL_7;
    }

    v9 = [(PHAudioCallViewController *)self emergencyCoordinator];
    v13 = [(PHAudioCallViewController *)self callCenter];
    v14 = [v13 frontmostCall];
    [v9 updateRTTEnabled:{objc_msgSend(v14, "isRTT")}];
  }

LABEL_7:
  v15 = [(PHAudioCallViewController *)self featureFlags];
  v16 = TUCallScreeningRTTEnabled();

  if (v16)
  {
    if ([(PHAudioCallViewController *)self middleViewState]== 4)
    {
      [(PHAudioCallViewController *)self setMiddleViewState:0];
      screeningViewController = self->_screeningViewController;
      self->_screeningViewController = 0;

      v18 = [(PHAudioCallViewController *)self featureFlags];
      v19 = [v18 receptionistEnabled];

      if (v19)
      {
        [(PHAudioCallViewController *)self setIsShowingNewTranscriptsView:0];
      }

      [(PHAudioCallViewController *)self setMiddleViewState:4];
    }

    v20 = [(PHCallViewController *)self bottomBar];
    v21 = [v20 currentState];

    if (v21 == 23)
    {
      v22 = [(PHCallViewController *)self bottomBar];
      [v22 setCurrentState:29];

      v23 = [(PHCallViewController *)self bottomBar];
      [v23 setCurrentState:23];
    }
  }

  v24 = +[UIApplication sharedApplication];
  v25 = [v24 delegate];
  v26 = [v25 currentInCallScene];

  if (v26)
  {
    v27 = +[UIApplication sharedApplication];
    v28 = [v27 delegate];
    v29 = [v28 currentInCallScene];
    v30 = [v29 delegate];
    v31 = +[UIApplication sharedApplication];
    v32 = [v31 delegate];
    v33 = [v32 currentInCallScene];
    [v30 updateSceneBackgroundMaterialWith:v33];
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

  [(PHAudioCallViewController *)self updateScreenSharingDisableUpdateMask];
  [(PHAudioCallViewController *)self updateScreenSharingIndicatorView];
}

- (void)callKeypadDataSourceChangedNotification:(id)a3
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
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@, we are going to hide the name on keypad", &v8, 0x16u);
  }

  [(PHAudioCallViewController *)self hideFirstNameLabelOnKeypad];
  [(PHAudioCallViewController *)self setHasKeypadUpdated:1];
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
  [(PHAudioCallViewController *)self updateBottomBarButtonsWithCall:v8];
}

- (void)setShowsCallDetailsViewButton:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHAudioCallViewController *)self callDetailsViewButton];
  v6 = v5;
  if (v3)
  {

    if (!v6)
    {

      [(PHAudioCallViewController *)self setUpCallDetailsViewButton];
    }
  }

  else
  {
    [v5 removeFromSuperview];

    [(PHAudioCallViewController *)self setCallDetailsViewButton:0];
  }
}

- (void)setUpCallDetailsViewButton
{
  v3 = [UIButton buttonWithType:4];
  [(PHAudioCallViewController *)self setCallDetailsViewButton:v3];

  v4 = [(PHAudioCallViewController *)self callDetailsViewButton];
  [v4 addTarget:self action:"callDetailsViewButtonTapped" forEvents:64];

  v5 = [(PHAudioCallViewController *)self callDetailsViewButton];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(PHAudioCallViewController *)self view];
  v7 = [(PHAudioCallViewController *)self callDetailsViewButton];
  [v6 addSubview:v7];

  v8 = +[UIColor whiteColor];
  v9 = [(PHAudioCallViewController *)self callDetailsViewButton];
  [v9 setTintColor:v8];

  v10 = [(PHAudioCallViewController *)self callDetailsViewButton];
  [(PHAudioCallViewController *)self applyCallDetailsViewButtonPositionAndSizeCapToElement:v10];
}

- (double)callDetailsButtonPaddingTop
{
  +[TPIncomingCallMetricsProvider fullDeviceHeight];
  [(PHAudioCallViewController *)self callDetailsButtonPaddingTop_PERCENT];
  v3 = [(PHAudioCallViewController *)self view];
  UIRoundToViewScale();
  v5 = v4;

  return v5;
}

- (double)callDetailsButtonPaddingTrailing
{
  +[TPIncomingCallMetricsProvider fullDeviceWidth];
  [(PHAudioCallViewController *)self callDetailsButtonPaddingTrailing_PERCENT];
  v3 = [(PHAudioCallViewController *)self view];
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
    v3 = [(PHAudioCallViewController *)self features];
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
    v3 = [(PHAudioCallViewController *)self features];
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

- (void)applyBlockButtonPositionAndSizeCapToElement:(id)a3
{
  v4 = a3;
  v5 = [v4 topAnchor];
  v6 = [(PHAudioCallViewController *)self view];
  v7 = [v6 topAnchor];
  [(PHAudioCallViewController *)self callDetailsButtonPaddingTop];
  v8 = [v5 constraintEqualToAnchor:v7 constant:?];
  v15[0] = v8;
  v9 = [v4 leadingAnchor];
  v10 = [(PHAudioCallViewController *)self view];
  v11 = [v10 leadingAnchor];
  [(PHAudioCallViewController *)self callDetailsButtonPaddingTrailing];
  v12 = [v9 constraintEqualToAnchor:v11 constant:?];
  v15[1] = v12;
  v13 = [NSArray arrayWithObjects:v15 count:2];
  [NSLayoutConstraint activateConstraints:v13];

  v14 = +[TPIncomingCallMetricsProvider callDetailsButtonMaxSize];
  [v4 setMaximumContentSizeCategory:v14];
}

- (void)blockButtonTapped
{
  v3 = [(PHAudioCallViewController *)self frontmostCall];
  [(PHAudioCallViewController *)self showBlockAlertForCall:v3];
}

- (void)setShowsBlockButton:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHAudioCallViewController *)self blockButton];
  v6 = v5;
  if (v3)
  {

    if (!v6)
    {

      [(PHAudioCallViewController *)self setUpBlockButton];
    }
  }

  else
  {
    [v5 removeFromSuperview];

    [(PHAudioCallViewController *)self setBlockButton:0];
  }
}

- (void)setUpBlockButton
{
  v11 = [UIButton buttonWithType:1];
  v3 = +[UIButtonConfiguration filledButtonConfiguration];
  [v3 setCornerStyle:4];
  [v3 contentInsets];
  [v3 setContentInsets:?];
  v4 = +[UIColor secondarySystemFillColor];
  [v3 setBaseBackgroundColor:v4];

  v5 = +[UIColor whiteColor];
  [v3 setBaseForegroundColor:v5];

  [v11 setConfiguration:v3];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"BLOCK_REPORT_ALERT_ACTION_BLOCK" value:&stru_100361FD0 table:@"InCallService"];
  [v11 setTitle:v7 forState:0];

  [v11 addTarget:self action:"blockButtonTapped" forEvents:64];
  [(PHAudioCallViewController *)self setBlockButton:v11];
  v8 = [(PHAudioCallViewController *)self view];
  v9 = [(PHAudioCallViewController *)self blockButton];
  [v8 addSubview:v9];

  v10 = [(PHAudioCallViewController *)self blockButton];
  [(PHAudioCallViewController *)self applyBlockButtonPositionAndSizeCapToElement:v10];
}

- (void)updateParticipantConstraintsForPosterName:(id)a3
{
  v9 = a3;
  v4 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  v5 = [v4 callDisplayStyle];

  if (v5)
  {
    if (![(PHAudioCallViewController *)self participantsViewIsShowingMultipleLabel])
    {
      v6 = [(PHAudioCallViewController *)self detachedPosterNameViewModel];
      if (v6)
      {
      }

      else if ([(PHAudioCallViewController *)self callHasContactPosterWithVerticalName])
      {
        [(PHAudioCallViewController *)self positionParticipantsViewStatusLabelToBeHorizontallyCenteredToInfoButton:v9];
        v7 = [(PHAudioCallViewController *)self callDetailsViewButton];
        v8 = +[TPIncomingCallMetricsProvider callDetailsButtonMaxSize];
        [v7 setMaximumContentSizeCategory:v8];

        goto LABEL_8;
      }
    }

    [(PHAudioCallViewController *)self restoreParticipantsViewStatusLabelForFullScreen];
  }

LABEL_8:
}

- (void)positionParticipantsViewStatusLabelToBeHorizontallyCenteredToInfoButton:(id)a3
{
  v4 = a3;
  v16 = +[NSMutableArray array];
  v5 = [(PHAudioCallViewController *)self participantsViewTopConstraint];

  if (v5)
  {
    v6 = [(PHAudioCallViewController *)self participantsViewTopConstraint];
    [v16 addObject:v6];
  }

  v7 = [(PHAudioCallViewController *)self participantsViewCenterYConstraint];

  if (v7)
  {
    v8 = [(PHAudioCallViewController *)self participantsViewCenterYConstraint];
    [v16 addObject:v8];
  }

  v9 = [(PHAudioCallViewController *)self participantsViewVerticalPosterNameTopConstraint];

  if (v9)
  {
    v10 = [(PHAudioCallViewController *)self participantsViewVerticalPosterNameTopConstraint];
    [v16 addObject:v10];
  }

  [NSLayoutConstraint deactivateConstraints:v16];
  v11 = [v4 topAnchor];

  v12 = [(PHAudioCallViewController *)self view];
  v13 = [v12 topAnchor];
  [(PHAudioCallViewController *)self callDetailsButtonPaddingTop];
  v14 = [v11 constraintEqualToAnchor:v13 constant:?];
  [(PHAudioCallViewController *)self setParticipantsViewVerticalPosterNameTopConstraint:v14];

  v15 = [(PHAudioCallViewController *)self participantsViewVerticalPosterNameTopConstraint];
  [v15 setActive:1];
}

- (void)positionPosterBadgeToBeHorizontallyCenteredToInfoButton:(id)a3
{
  v4 = a3;
  v5 = [v4 leadingAnchor];
  v6 = [(PHAudioCallViewController *)self view];
  v7 = [v6 leadingAnchor];
  [(PHAudioCallViewController *)self callDetailsButtonPaddingTrailing];
  v8 = [v5 constraintEqualToAnchor:v7 constant:?];
  v15[0] = v8;
  v9 = [v4 topAnchor];

  v10 = [(PHAudioCallViewController *)self view];
  v11 = [v10 topAnchor];
  [(PHAudioCallViewController *)self callDetailsButtonPaddingTop];
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
  v6 = [(PHAudioCallViewController *)self view];
  v7 = [v6 topAnchor];
  [(PHAudioCallViewController *)self callDetailsButtonPaddingTop];
  v8 = [v5 constraintEqualToAnchor:v7 constant:?];
  v16[0] = v8;
  v9 = [v4 trailingAnchor];
  v10 = [(PHAudioCallViewController *)self view];
  v11 = [v10 trailingAnchor];
  [(PHAudioCallViewController *)self callDetailsButtonPaddingTrailing];
  v13 = [v9 constraintEqualToAnchor:v11 constant:-v12];
  v16[1] = v13;
  v14 = [NSArray arrayWithObjects:v16 count:2];
  [NSLayoutConstraint activateConstraints:v14];

  v15 = +[TPIncomingCallMetricsProvider callDetailsButtonMaxSize];
  [v4 setMaximumContentSizeCategory:v15];
}

- (void)callDetailsViewButtonTapped
{
  v3 = [(PHAudioCallViewController *)self frontmostCall];
  if ([(PHAudioCallViewController *)self shouldShowConferenceCallDetails])
  {
    v4 = objc_alloc_init(PHConferenceParticipantsViewController);
    v5 = [[UINavigationController alloc] initWithRootViewController:v4];
    v6 = +[UIColor grayColor];
    v7 = [v5 view];
    [v7 setBackgroundColor:v6];

    v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"dismissNavigationController"];
    v9 = [(PHConferenceParticipantsViewController *)v4 navigationItem];
    [v9 setLeftBarButtonItem:v8];

    [(PHAudioCallViewController *)self presentViewController:v5 animated:1 completion:0];
  }

  else
  {
    v10 = [v3 provider];
    v11 = [v10 isTelephonyProvider];

    if (v11)
    {
      [(PHAudioCallViewController *)self presentContactCard];
    }

    else
    {
      objc_initWeak(&location, self);
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_1001165A0;
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
  v5 = [(PHAudioCallViewController *)self activeCall:a3];
  [(PHAudioCallViewController *)self reportWithCall:v5];
}

- (BOOL)shouldShowConferenceCallDetails
{
  v3 = [(PHAudioCallViewController *)self callParticipantsViewController];
  v4 = [v3 view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  v6 = [(PHAudioCallViewController *)self getParticipantsView_NotWaiting];
  v7 = [(PHAudioCallViewController *)self callParticipantsViewController];
  v8 = [v7 shouldShowInfoButtonForParticipantAtIndex:0 inParticipantsView:v6];

  return v8;
}

- (BOOL)canDoInfoButtonCoinFlipWith:(id)a3 contactStore:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 BOOLForKey:@"PHInCallUIInfoButtonCoinFlipKey"];

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
  v4 = [(PHAudioCallViewController *)self shouldUseHeroImageLayout];
  if ((v4 & 1) == 0)
  {
    v51 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([v51 callDisplayStyle] != 3)
    {
LABEL_19:

      return;
    }

    v2 = [(PHAudioCallViewController *)self features];
    if (([v2 isDominoEnabled] & 1) == 0)
    {
LABEL_18:

      goto LABEL_19;
    }
  }

  v5 = [(PHAudioCallViewController *)self features];
  if (![v5 isNameAndPhotoC3Enabled])
  {

    if (v4)
    {
      return;
    }

    goto LABEL_18;
  }

  v6 = [(PHAudioCallViewController *)self callDetailsViewButton];

  if (!v4)
  {
  }

  if (v6)
  {
    v7 = [(PHAudioCallViewController *)self frontmostCall];
    v8 = [v7 contactIdentifier];

    if (!v8)
    {
LABEL_36:

      return;
    }

    v9 = [PHInCallUtilities contactStoreForCall:v7];
    v10 = [v7 contactIdentifier];
    v11 = +[PHAudioCallViewController contactKeysToFetch];
    v12 = [(PHAudioCallViewController *)self contactsCache];
    v13 = [v9 contactForIdentifier:v10 keysToFetch:v11 usingCache:v12];

    if (!v13 || ![(PHAudioCallViewController *)self canDoInfoButtonCoinFlipWith:v13 contactStore:v9])
    {
LABEL_35:

      goto LABEL_36;
    }

    v14 = [[CNSharedProfileStateOracle alloc] initWithContact:v13 contactStore:v9];
    v15 = [CNSharedProfileStateOracle contactIsInAutoUpdateState:v13];
    v16 = sub_100004F84();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v17)
      {
        v18 = [v14 currentNickname];
        v19 = [v13 imageData];
        *buf = 138412546;
        v61 = v18;
        v62 = 2112;
        v63 = v19;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "SNAP: animateInfoButtonCoinFlipIfNeeded using currentNickname %@ contact.imageData: %@", buf, 0x16u);
      }

      v20 = [v14 currentNickname];

      v21 = [CNSharedProfile alloc];
      v22 = v21;
      if (!v20)
      {
        v52 = [v21 initWithContact:v13];
        goto LABEL_26;
      }

      v23 = [v14 currentNickname];
    }

    else
    {
      if (v17)
      {
        v24 = [v14 pendingNickname];
        *buf = 138412290;
        v61 = v24;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "SNAP: animateInfoButtonCoinFlipIfNeeded using pendingNickname %@", buf, 0xCu);
      }

      v22 = [CNSharedProfile alloc];
      v23 = [v14 pendingNickname];
    }

    v25 = v23;
    v52 = [v22 initWithNickname:v23];

LABEL_26:
    v26 = [(PHAudioCallViewController *)self callDetailsViewButton];
    [v26 setAlpha:0.0];

    v27 = objc_alloc_init(UIView);
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    v28 = [(PHAudioCallViewController *)self view];
    [v28 addSubview:v27];

    v29 = [v14 pendingNickname];
    v30 = [v29 avatar];

    v49 = v30;
    if (+[_TtC13InCallService23SensitivityFeatureFlags isSensitivityAvatarTreatmentEnabled])
    {
      v31 = [v30 contentIsSensitive];
      v32 = sub_100004F84();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v61) = v31;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "SNAP: IMNicknameAvatarImage.contentIsSensitive for infoButton peekaboo returning %d", buf, 8u);
      }
    }

    else
    {
      v32 = sub_100004F84();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "SNAP: IMNicknameAvatarImage.contentIsSensitive for infoButton peekaboo not performing check", buf, 2u);
      }

      LOBYTE(v31) = 0;
    }

    v33 = +[ICSPreferences sharedPreferences];
    v34 = [v33 forceBlurNewPoster];

    v35 = v34 | v31;
    v36 = [_TtC13InCallService19BlurrableAvatarView alloc];
    v37 = [v52 contact];
    v38 = [(BlurrableAvatarView *)v36 initWithContact:v37 wantsBlur:v35 & 1 isCommunicationSafetyEnabled:+[_TtC13InCallService23SensitivityFeatureFlags isCommunicationSafetyEnabled]];

    [(BlurrableAvatarView *)v38 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v27 addSubview:v38];
    v39 = [UIButton buttonWithType:4];
    [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v27 addSubview:v39];
    v40 = +[UIColor secondaryLabelColor];
    [v39 setTintColor:v40];

    [(PHAudioCallViewController *)self applyCallDetailsViewButtonPositionAndSizeCapToElement:v39];
    v41 = [(PHAudioCallViewController *)self wallpaperTitleStyleAttributes];
    v42 = v41;
    if (v41)
    {
      v43 = [v41 titleColor];
      [v39 setTintColor:v43];
    }

    v44 = +[TPIncomingCallMetricsProvider callDetailsButtonMaxSize];
    [(BlurrableAvatarView *)v38 setMaximumContentSizeCategory:v44];

    [(PHAudioCallViewController *)self applySizeToElement:v38 usingThisElementAsGuide:v39];
    [(PHAudioCallViewController *)self applySizeToElement:v27 usingThisElementAsGuide:v39];
    [(PHAudioCallViewController *)self applyCallDetailsViewButtonPositionAndSizeCapToElement:v27];
    [(PHAudioCallViewController *)self applyCallDetailsViewButtonPositionAndSizeCapToElement:v38];
    [(BlurrableAvatarView *)v38 setAlpha:0.0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100116EB0;
    block[3] = &unk_100359098;
    v54 = v27;
    v55 = v38;
    v56 = v39;
    v57 = self;
    v58 = v13;
    v59 = v14;
    v45 = v14;
    v46 = v39;
    v47 = v38;
    v48 = v27;
    dispatch_async(&_dispatch_main_q, block);

    goto LABEL_35;
  }
}

- (void)updateSaliencyRectIfNeeded
{
  if (self->_renderingViewController)
  {
    +[TPIncomingCallMetricsProvider twentyTwoPointFivePercentOfDeviceHeight];
    v4 = v3;
    +[TPIncomingCallMetricsProvider fullDeviceWidth];
    v6 = v5;
    +[TPIncomingCallMetricsProvider fullDeviceHeight];
    v8 = v7 - v4;
    v9 = [(PHCallViewController *)self bottomBar];
    [v9 frame];
    v11 = v8 - v10;

    [(PRUISPosterRenderingViewController *)self->_renderingViewController salientContentRectangle];
    v20.origin.x = 0.0;
    v20.origin.y = v4;
    v20.size.width = v6;
    v20.size.height = v11;
    if (!CGRectEqualToRect(v19, v20))
    {
      v12 = sub_100004F84();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134218496;
        v14 = v4;
        v15 = 2048;
        v16 = v6;
        v17 = 2048;
        v18 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Updating saliency rect to y=%f, width=%f, height=%f", &v13, 0x20u);
      }

      [(PRUISPosterRenderingViewController *)self->_renderingViewController setSalientContentRectangle:0.0, v4, v6, v11];
    }
  }
}

- (void)useRTTButtonTapped
{
  v4 = [(PHAudioCallViewController *)self frontmostCall];
  v3 = [(PHAudioCallViewController *)self callCenter];
  [v3 setTTYType:1 forCall:v4];
}

- (void)extensionNumberButtonTapped
{
  v2 = [(PHAudioCallViewController *)self frontmostCall];
  [v2 sendHardPauseDigits];
}

- (void)callTransferButtonTapped
{
  v11 = objc_alloc_init(TUCallProviderManager);
  v3 = [TUDialRequest alloc];
  v4 = [v11 telephonyProvider];
  v5 = [v3 initWithProvider:v4];

  v6 = [[TUHandle alloc] initWithType:2 value:@"4"];
  [v5 setHandle:v6];

  [v5 setOriginatingUIType:38];
  v7 = [(PHAudioCallViewController *)self frontmostCall];
  v8 = [v7 localSenderIdentityAccountUUID];
  [v5 setLocalSenderIdentityAccountUUID:v8];

  v9 = [(PHAudioCallViewController *)self callCenter];
  v10 = [v9 dialWithRequest:v5];
}

- (void)mergeCallsButtonTapped
{
  v3 = [(PHAudioCallViewController *)self callCenter];
  v4 = [v3 callWithStatus:2];

  v5 = [(PHAudioCallViewController *)self callCenter];
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

  v8 = [(PHAudioCallViewController *)self callCenter];
  [v8 groupCall:v4 withOtherCall:v6];
}

- (void)removeSupplementalButtons
{
  v3 = [(PHAudioCallViewController *)self callTransferButton];
  [v3 removeFromSuperview];

  v4 = [(PHAudioCallViewController *)self extensionNumberButton];
  [v4 removeFromSuperview];

  v5 = [(PHAudioCallViewController *)self useRTTButton];
  [v5 removeFromSuperview];

  v6 = [(PHAudioCallViewController *)self mergeCallsButton];
  [v6 removeFromSuperview];
}

- (void)dismissNavigationController
{
  v2 = [(PHAudioCallViewController *)self navigationController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)dismissNavigationControllerAndUpdateScene
{
  objc_initWeak(&location, self);
  v3 = [(PHAudioCallViewController *)self navigationController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100117B20;
  v4[3] = &unk_100356F60;
  objc_copyWeak(&v5, &location);
  [v3 dismissViewControllerAnimated:1 completion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (BOOL)_isScreeningAnyCallGroup:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100117C80;
  v4[3] = &unk_100359130;
  v4[4] = self;
  return [a3 tu_containsObjectPassingTest:v4];
}

- (BOOL)_isScreeningCallGroup:(id)a3
{
  v4 = a3;
  v5 = [(PHAudioCallViewController *)self featureFlags];
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
  [(PHAudioCallViewController *)self setCallForBackgroundImage:0 animated:1 callDisplayStyleChanged:0];
  [(PHAudioCallViewController *)self releaseDismissalAssertion];

  [(PHAudioCallViewController *)self _testing_didTransitionToIdleCallState];
}

- (void)setActiveState:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHAudioCallViewController *)self callCenter];
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

  if (![(PHAudioCallViewController *)self middleViewState]|| [(PHAudioCallViewController *)self middleViewState]== 4 || [(PHAudioCallViewController *)self middleViewState]== 5)
  {
    objc_initWeak(location, self);
    v40 = _NSConcreteStackBlock;
    v41 = 3221225472;
    v42 = sub_10011831C;
    v43 = &unk_100359158;
    objc_copyWeak(&v44, location);
    v45 = v9;
    [(PHAudioCallViewController *)self setMiddleViewState:1 animated:1 completion:&v40];
    objc_destroyWeak(&v44);
    objc_destroyWeak(location);
  }

  if (v3 == 5 || [(PHCallViewController *)self currentState]== 5)
  {
    [(PHAudioCallViewController *)self updateViewsForHeldCallControlsViewIfNeeded:v40];
  }

  v10 = [(PHCallViewController *)self bottomBar:v40];
  [v10 setUserInteractionEnabled:1];

  v11 = [(PHAudioCallViewController *)self currentMiddleView];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(PHAudioCallViewController *)self currentMiddleView];
    [v13 setButtonsEnabled:1];
  }

  v14 = [(PHCallViewController *)self bottomBar];
  [(PHAudioCallViewController *)self _testing_didTransitionToActiveCallState:v14];

  [(PHCallViewController *)self setWantsApplicationDismissalStyle:v3 == 4];
  v15 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v15 callDisplayStyle] == 3)
  {
    v16 = [(PHAudioCallViewController *)self features];
    v17 = [v16 isDominoEnabled];

    if (v17)
    {
      [(PHAudioCallViewController *)self layoutParticipantsViewAnimated:0];
    }
  }

  else
  {
  }

  if (v3 == 4)
  {
    v18 = [(PHAudioCallViewController *)self isolatedCall];
    [(PHAudioCallViewController *)self setCallForBackgroundImage:v18 animated:1 callDisplayStyleChanged:0];
    if ([(PHAudioCallViewController *)self shouldShowNewPosterUpdates])
    {
      [(PHAudioCallViewController *)self updateLayeredBackgroundWallpaper];
    }

    [(PHAudioCallViewController *)self animateInfoButtonCoinFlipIfNeeded];
  }

  else
  {
    v18 = [(PHAudioCallViewController *)self callToUseForWallpaper];
    [(PHAudioCallViewController *)self setCallForBackgroundImage:v18 animated:1 callDisplayStyleChanged:0];
  }

  if ([v18 originatingUIType] == 10)
  {
    v19 = [(PHAudioCallViewController *)self callCenter];
    v20 = [v19 routeController];
    v21 = [v20 routeForSpeakerEnable];

    if (v21)
    {
      v22 = [(PHAudioCallViewController *)self callCenter];
      v23 = [v22 routeController];
      [v23 pickRoute:v21];
    }

    else
    {
      v22 = sub_100004F84();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10025710C();
      }
    }

    v26 = [(PHAudioCallViewController *)self voiceLoopManager];
    [v26 startLoopPlayback];
  }

  else
  {
    if ([v18 originatingUIType] != 12)
    {
      goto LABEL_35;
    }

    v24 = [(PHAudioCallViewController *)self callCenter];
    v25 = [v24 routeController];
    v21 = [v25 routeForSpeakerDisable];

    if (v21)
    {
      v26 = [(PHAudioCallViewController *)self callCenter];
      v27 = [v26 routeController];
      [v27 pickRoute:v21];
    }

    else
    {
      v26 = sub_100004F84();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[WARN] PHAudioCallViewController: Could not find available route to pick for speaker disable", location, 2u);
      }
    }
  }

LABEL_35:
  v28 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  v29 = [v28 callDisplayStyle];

  if (!v29)
  {
    v30 = [(PHAudioCallViewController *)self callParticipantsViewController];
    [v30 setBannerButtonsState:1];

    v31 = [(PHAudioCallViewController *)self callCenter];
    v32 = [v31 routeController];
    v33 = [v32 pickedRoute];
    v34 = [v33 isReceiver];

    v35 = +[UIApplication sharedApplication];
    v36 = [v35 delegate];
    v37 = [v36 currentInCallScene];
    v38 = [v37 delegate];
    v39 = [v38 callAnalyticsLogger];
    [v39 createAnsweredBannerAnalyticsViewWithIsHandsfreeAudioRoute:v34 ^ 1];
  }

  [(PHAudioCallViewController *)self _performPosterTransformationsIfNecessaryToState:v3];
}

- (void)_performPosterTransformationsIfNecessaryToState:(unsigned __int16)a3
{
  v3 = a3;
  v10 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  v5 = [v10 callDisplayStyle];
  if (v3 == 4 && v5 == 2 && ([(PHAudioCallViewController *)self renderingViewController], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [(PHAudioCallViewController *)self shouldShowContactOrLastSeenWallpaper];

    if (v8)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1001184E8;
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

- (BOOL)isShowingPosterBadge
{
  v2 = [(PHAudioCallViewController *)self posterBadgeView];
  v3 = v2 != 0;

  return v3;
}

- (void)updatePosterBadgeView:(BOOL)a3 to:(id)a4
{
  v4 = a3;
  v9 = a4;
  if (v4 && [(PHAudioCallViewController *)self canShowPosterBadgeInAudioCallView:v9])
  {
    [(PHAudioCallViewController *)self setUpPosterBadgeViewIfNecessary];
  }

  else
  {
    v6 = [(PHAudioCallViewController *)self posterBadgeView];

    if (v6)
    {
      v7 = [(PHAudioCallViewController *)self posterBadgeView];
      [v7 removeFromSuperview];

      [(PHAudioCallViewController *)self setPosterBadgeView:0];
    }
  }

  v8 = [(PHAudioCallViewController *)self posterBadgeView];
  [v9 setPosterBadgeView:v8];

  [(PHAudioCallViewController *)self synchronizeSingleLabelViewWithPosterText];
}

- (void)setUpPosterBadgeViewIfNecessary
{
  v3 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v3 callDisplayStyle] == 3)
  {
    v4 = [(PHAudioCallViewController *)self features];
    v5 = [v4 isDominoEnabled];

    if (v5)
    {
      return;
    }
  }

  else
  {
  }

  v6 = [(PHAudioCallViewController *)self posterBadgeView];

  if (v6)
  {
    return;
  }

  v19 = [(PHAudioCallViewController *)self getParticipantsView_WaitingOrNot];
  v7 = [v19 singleCallLabelView];
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
  v11 = [(PHAudioCallViewController *)self view];
  [v11 addSubview:v10];

  [(PHAudioCallViewController *)self positionPosterBadgeToBeHorizontallyCenteredToInfoButton:v10];
  v12 = [(PHAudioCallViewController *)self topLeadingContainer];

  if (v12)
  {
    v13 = [(PHAudioCallViewController *)self topLeadingContainer];
    v14 = [v13 leadingAnchor];
    v15 = [v10 trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 constant:8.0];

    [v16 setActive:1];
  }

  [(PHAudioCallViewController *)self setPosterBadgeView:v10];
  v17 = [(PHAudioCallViewController *)self posterBadgeView];
  v18 = +[TPIncomingCallMetricsProvider posterBadgeMaxSize];
  [v17 setMaximumContentSizeCategory:v18];
}

- (void)_updatePosterStatusLabelForState:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHAudioCallViewController *)self posterNameViewModel];

  if (v5)
  {
    v6 = [(PHAudioCallViewController *)self getParticipantsView_WaitingOrNot];
    v7 = [(PHAudioCallViewController *)self posterNameViewModel];
    [v7 updateStatusFromParticipantsView:v6];

    if (v3 <= 0xB && ((1 << v3) & 0x814) != 0)
    {
      [(PHAudioCallViewController *)self _updatePosterNameAlpha];
      v8 = [(PHAudioCallViewController *)self view];
      v9 = [v8 window];

      v10 = v9 != 0;
      if ([(PHAudioCallViewController *)self shouldShowNewPosterUpdates])
      {
        v11 = dispatch_time(0, 850000000);
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_100118B30;
        v13[3] = &unk_100356BB8;
        v13[4] = self;
        v14 = v10;
        dispatch_after(v11, &_dispatch_main_q, v13);
      }

      else
      {
        v12 = [(PHAudioCallViewController *)self posterNameViewModel];
        [v12 transitionCallToActiveStateAnimated:v10];
      }
    }

    [(PHAudioCallViewController *)self _updateStatusLabelVisibility];
  }
}

- (void)setRingingState:(unsigned __int16)a3
{
  v4 = [(PHAudioCallViewController *)self presentedViewController];

  if (v4)
  {
    [(PHAudioCallViewController *)self dismissViewControllerAnimated:1 completion:0];
  }

  [(PHAudioCallViewController *)self updateShouldShowLargeAvatar];
  v5 = +[UIApplication sharedApplication];
  v6 = [v5 delegate];
  v7 = [v6 currentInCallScene];
  v8 = [v7 isBeingShownAboveCoverSheet];

  v9 = [(PHAudioCallViewController *)self callCenter];
  v25 = [v9 incomingCall];

  v10 = [(PHAudioCallViewController *)self setCallForBackgroundImage:v25 animated:1 callDisplayStyleChanged:0];
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

  v13 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v13 callDisplayStyle] == 3)
  {
    v14 = [(PHAudioCallViewController *)self features];
    v15 = [v14 isDominoEnabled];

    if (v15)
    {
      v12 = 0;
    }
  }

  else
  {
  }

  v16 = [v25 isMessagingAllowed];
  v17 = [(PHCallViewController *)self bottomBar];
  [v17 setDeclineAndMessageIsAvailable:v16];

  v18 = [v25 isReminderAllowed];
  v19 = [(PHCallViewController *)self bottomBar];
  [v19 setDeclineAndRemindIsAvailable:v18];

  v20 = [(PHCallViewController *)self bottomBar];
  [v20 setCurrentState:v12];

  [(PHAudioCallViewController *)self setMiddleViewState:0 animated:0];
  v21 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  v22 = [v21 callDisplayStyle];

  if (!v22)
  {
    v23 = [(PHAudioCallViewController *)self callParticipantsViewController];
    [v23 setBannerButtonsState:0];
  }

  v24 = [(PHCallViewController *)self bottomBar];
  [(PHAudioCallViewController *)self _testing_didTransitionToIncomingRingingCallState:v24];
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

  v6 = [(PHAudioCallViewController *)self callCenter];
  v7 = [v6 incomingCall];

  v8 = +[UIApplication sharedApplication];
  v9 = [v8 delegate];
  v10 = [v9 isPresentingAmbient];

  if ((v10 & 1) == 0)
  {
    v11 = [v7 provider];
    if ([v11 supportsDynamicSystemUI])
    {
      v12 = [(PHAudioCallViewController *)self featureFlags];
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
    v14 = [(PHAudioCallViewController *)self inCallRootViewController];
    [v14 requestInCallSceneTransitionToFullScreen];
  }

LABEL_11:
  [(PHAudioCallViewController *)self setShouldShowLargeAvatarForCallWaiting:[(PHAudioCallViewController *)self shouldShowLargeAvatarForCall:v7]];
  [(PHAudioCallViewController *)self setCallForBackgroundImage:v7 animated:1 callDisplayStyleChanged:0];
  if ([(PHAudioCallViewController *)self participantsViewControllersShouldIgnoreUpdates])
  {
    v15 = [(PHAudioCallViewController *)self callCenter];
    v16 = [v15 autoPunchOutBehaviorRequiredForCurrentCalls];

    if ((v16 & 1) == 0)
    {
      [(PHAudioCallViewController *)self setParticipantsViewControllersShouldIgnoreUpdates:0];
    }
  }

  [(PHAudioCallViewController *)self setShowsCallWaitingParticipantView:1];
  v17 = [v7 isMessagingAllowed];
  v18 = [(PHCallViewController *)self bottomBar];
  [v18 setDeclineAndMessageIsAvailable:v17];

  v19 = [v7 isReminderAllowed];
  v20 = [(PHCallViewController *)self bottomBar];
  [v20 setDeclineAndRemindIsAvailable:v19];

  v21 = [(PHCallViewController *)self bottomBar];
  [v21 setUserInteractionEnabled:1];

  v22 = [(PHCallViewController *)self bottomBar];
  [v22 setCurrentState:-[PHAudioCallViewController bottomBarStateForCallWaitingCall](self animated:"bottomBarStateForCallWaitingCall") animationCompletionBlock:{0, 0}];

  [(PHAudioCallViewController *)self setMiddleViewState:0 animated:1];
  [(PHCallViewController *)self setWantsApplicationDismissalStyle:0];
}

- (void)setEndedState:(unsigned __int16)a3
{
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 delegate];
  v6 = [v5 mostRecentlyDisconnectedAudioCall];

  v7 = [(PHAudioCallViewController *)self currentMiddleView];
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if (v5)
  {
    v8 = [(PHAudioCallViewController *)self currentMiddleView];
    [v8 setButtonsEnabled:0];
  }

  [(SOSEmergencyCallVoiceLoopManager *)self->_voiceLoopManager invalidate];
  v9 = sub_100004F84();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 contactIdentifiers];
    v11 = [v10 count];
    v12 = [v6 isOutgoing];
    v13 = [v6 dateConnected];
    v14 = [v13 description];
    v15 = [v6 provider];
    v27 = 134218754;
    v28 = v11;
    v29 = 1024;
    v30 = v12;
    v31 = 2112;
    v32 = v14;
    v33 = 1024;
    v34 = [v15 isFaceTimeProvider];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "(disconnectedCall.contactIdentifiers.count: %lu && \n\n !(disconnectedCall.isOutgoing: %d && disconnectedCall.dateConnected: %@) && \n\n disconnectedCall.provider.isFaceTimeProvider: %d)", &v27, 0x22u);
  }

  if (![v6 disconnectedReasonRequiresCallBackUI] || !-[PHAudioCallViewController isUserInterfaceShowing](self, "isUserInterfaceShowing"))
  {
    v17 = [(PHAudioCallViewController *)self UUIDForLocallyDisconnectedCall];
    v18 = [v6 callUUID];
    if ([v17 isEqualToString:v18])
    {
    }

    else
    {
      v19 = +[UIApplication sharedApplication];
      v20 = [v19 delegate];
      v21 = [v20 hasExistingFullScreenInCallScene];

      if (v21)
      {
        [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHAudioCallViewControllerDismissalAssertionWaitingForIdle"];
      }
    }

    v22 = [(PHCallViewController *)self bottomBar];
    [v22 setUserInteractionEnabled:0];

    [(PHCallViewController *)self transitionToIdleAfterDelay];
    v23 = [(PHAudioCallViewController *)self inCallRootViewController];
    [v23 showFailureOrFallbackAlertIfNecessaryForCall:v6];
    goto LABEL_15;
  }

  [(PHAudioCallViewController *)self transitionToFullScreenIfNecessary];
  [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHAudioCallViewControllerDismissalAssertionHandlingCallFailure"];
  [(PHAudioCallViewController *)self setMiddleViewState:0];
  [(PHAudioCallViewController *)self setCallForBackgroundImage:v6 animated:1 callDisplayStyleChanged:0];
  if ([v6 service] == 2 && (objc_msgSend(v6, "isMessagingAllowed") & 1) != 0)
  {
    v16 = 17;
  }

  else if ([v6 isCallbackAllowed])
  {
    v16 = 13;
  }

  else
  {
    v16 = 18;
  }

  v25 = [(PHCallViewController *)self bottomBar];
  [v25 setCurrentState:v16 animated:1 animationCompletionBlock:0];

  v26 = [(PHCallViewController *)self bottomBar];
  [v26 setUserInteractionEnabled:1];

  if ([(PHAudioCallViewController *)self shouldShowEnableWiFiCallingAlertForCall:v6])
  {
    v23 = +[UIAlertController enableWiFiCallingAlertController];
    if (v23)
    {
      [(PHAudioCallViewController *)self presentViewController:v23 animated:1 completion:0];
      PHIncrementWifiCallingAlertShowCount();
    }

LABEL_15:
  }

  if ([v6 disconnectedReason] == 34)
  {
    [(PHAudioCallViewController *)self setMiddleViewState:0];
    v24 = sub_100004F84();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController is about to set shouldPresentAlertButton to NO", &v27, 2u);
    }

    self->_shouldPresentAlertButton = 0;
  }
}

- (void)setEndingState:(unsigned __int16)a3
{
  v4 = [(PHCallViewController *)self bottomBar];
  [v4 setUserInteractionEnabled:0];

  v5 = [(PHAudioCallViewController *)self currentMiddleView];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(PHAudioCallViewController *)self currentMiddleView];
    [v7 setButtonsEnabled:0];
  }

  [(SOSEmergencyCallVoiceLoopManager *)self->_voiceLoopManager invalidate];
  v8 = [(PHAudioCallViewController *)self isolatedCall];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    v8 = [(PHAudioCallViewController *)self setCallForBackgroundImage:v8 animated:0 callDisplayStyleChanged:0];
    v9 = v10;
  }

  _objc_release_x1(v8, v9);
}

- (void)setOutgoingRingingState:(unsigned __int16)a3
{
  v4 = [(PHAudioCallViewController *)self callCenter];
  v5 = [v4 currentCallGroups];

  v6 = [v5 lastObject];
  if ([v6 originatingUIType] == 10)
  {
    v7 = [(PHAudioCallViewController *)self callCenter];
    v8 = [v7 routeController];
    v9 = [v8 pickedRoute];
    v10 = [v9 isSpeaker];

    if ((v10 & 1) == 0)
    {
      v19 = [(PHAudioCallViewController *)self callCenter];
      v20 = [v19 routeController];
      v17 = [v20 routeForSpeakerEnable];

      if (!v17)
      {
        v18 = sub_100004F84();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10025710C();
        }

        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  if ([v6 originatingUIType] == 12)
  {
    v11 = [(PHAudioCallViewController *)self callCenter];
    v12 = [v11 routeController];
    v13 = [v12 pickedRoute];
    v14 = [v13 isReceiver];

    if ((v14 & 1) == 0)
    {
      v15 = [(PHAudioCallViewController *)self callCenter];
      v16 = [v15 routeController];
      v17 = [v16 routeForSpeakerDisable];

      if (!v17)
      {
        v18 = sub_100004F84();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] PHAudioCallViewController: Could not find available route to pick for speaker disable", buf, 2u);
        }

        goto LABEL_12;
      }

LABEL_9:
      v18 = [(PHAudioCallViewController *)self callCenter];
      v21 = [v18 routeController];
      [v21 pickRoute:v17];

LABEL_12:
    }
  }

  v22 = [(PHAudioCallViewController *)self isolatedCall];
  [(PHAudioCallViewController *)self setCallForBackgroundImage:v22 animated:1 callDisplayStyleChanged:0];

  v39 = _NSConcreteStackBlock;
  v40 = 3221225472;
  v41 = sub_10011996C;
  v42 = &unk_100356D10;
  v23 = v6;
  v43 = v23;
  v44 = self;
  v24 = objc_retainBlock(&v39);
  -[PHAudioCallViewController setMiddleViewState:animated:completion:](self, "setMiddleViewState:animated:completion:", 1, [v23 isVoicemail] ^ 1, v24);
  v25 = [(PHAudioCallViewController *)self currentMiddleView];
  v26 = objc_opt_respondsToSelector();

  if (v26)
  {
    v27 = [(PHAudioCallViewController *)self currentMiddleView];
    [v27 setButtonsEnabled:1];
  }

  if ([v23 isVoicemail])
  {
    [(PHAudioCallViewController *)self setMiddleViewState:2];
  }

  [(PHCallViewController *)self setWantsApplicationDismissalStyle:1];
  v28 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v28 callDisplayStyle] != 3)
  {
    goto LABEL_24;
  }

  v29 = [(PHAudioCallViewController *)self features];
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
    v34 = [(PHAudioCallViewController *)self callCenter];
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
}

- (void)setCallBufferState:(unsigned __int16)a3
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController,setCurrentState,PHInCallStateCallBuffer", buf, 2u);
  }

  if ([(PHAudioCallViewController *)self middleViewState]== 1)
  {
    v5 = [(PHAudioCallViewController *)self currentMiddleView];
    [v5 setButtonsEnabled:0];

    v6 = [(PHAudioCallViewController *)self currentMiddleView];
    v7 = [v6 buttonForControlType:15];
    [v7 setEnabled:1];
  }

  else
  {
    objc_initWeak(buf, self);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100119B78;
    v9[3] = &unk_100356E98;
    objc_copyWeak(&v10, buf);
    [(PHAudioCallViewController *)self setMiddleViewState:1 animated:1 completion:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  v8 = [(PHCallViewController *)self bottomBar];
  [v8 setUserInteractionEnabled:1];

  [(PHAudioCallViewController *)self setCallForBackgroundImage:0 animated:1 callDisplayStyleChanged:0];
  [(PHAudioCallViewController *)self displayDialledNumberDetailsForCallBufferScreen];
  [(PHCallViewController *)self setWantsApplicationDismissalStyle:0];
  [(PHAudioCallViewController *)self startCallBufferScreenCountdown];
}

- (void)setAlertModeNeededState:(unsigned __int16)a3
{
  if ([(PHAudioCallViewController *)self shouldPresentAlertButton])
  {
    v4 = [(PHCallViewController *)self bottomBar];
    [v4 setUserInteractionEnabled:1];

    if ([(PHAudioCallViewController *)self middleViewState]== 2)
    {
      v5 = sub_100004F84();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController skips updating bottomBarButton to alert style since keypad is expanded", v6, 2u);
      }
    }

    else
    {
      v5 = [(PHCallViewController *)self bottomBar];
      [v5 setCurrentState:22];
    }

    [(PHAudioCallViewController *)self speakAlertUtteranceIfNecessary];
  }
}

- (void)setEmergencyTextViaSatelliteUI
{
  v38 = +[PHInCallUtilities sharedInstance];
  if (([v38 isIPadIdiom] & 1) == 0)
  {

LABEL_6:
    v6 = [(PHAudioCallViewController *)self getParticipantsView_NotWaiting];
    v7 = [v6 singleCallLabelView];
    v8 = [v7 statusLabel];

    v9 = [(PHAudioCallViewController *)self emergencyTextViaSatelliteLabel];

    if (!v9)
    {
      v10 = [(PHAudioCallViewController *)self defaultBackgroundGradientView];
      [v10 removeFromSuperview];

      [(PHAudioCallViewController *)self setDefaultBackgroundGradientView:0];
      v11 = +[UIColor blackColor];
      v12 = [(PHAudioCallViewController *)self view];
      [v12 setBackgroundColor:v11];

      v13 = objc_alloc_init(UILabel);
      v14 = [v8 text];
      [v13 setText:v14];

      v15 = [v8 font];
      [v13 setFont:v15];

      [v13 setNumberOfLines:3];
      [v13 setTextAlignment:1];
      v16 = [v8 textColor];
      [v13 setTextColor:v16];

      [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PHAudioCallViewController *)self setEmergencyTextViaSatelliteLabel:v13];
      v17 = [(PHAudioCallViewController *)self view];
      [v17 addSubview:v13];

      v39 = [v13 leadingAnchor];
      v37 = [v6 leadingAnchor];
      v36 = [v39 constraintEqualToAnchor:v37];
      v40[0] = v36;
      v35 = [v13 trailingAnchor];
      v34 = [v6 trailingAnchor];
      v33 = [v35 constraintEqualToAnchor:v34];
      v40[1] = v33;
      v31 = [v13 centerXAnchor];
      v32 = [(PHAudioCallViewController *)self view];
      v30 = [v32 centerXAnchor];
      v18 = [v31 constraintEqualToAnchor:v30];
      v40[2] = v18;
      v19 = [v13 centerYAnchor];
      v20 = [(PHAudioCallViewController *)self view];
      v21 = [v20 centerYAnchor];
      v22 = [v19 constraintEqualToAnchor:v21];
      v40[3] = v22;
      [NSArray arrayWithObjects:v40 count:4];
      v24 = v23 = v6;
      [NSLayoutConstraint activateConstraints:v24];

      v6 = v23;
    }

    v25 = [(PHCallViewController *)self bottomBar];
    if ([v25 currentState] == 19)
    {
      v26 = 0.0;
    }

    else
    {
      v26 = 1.0;
    }

    v27 = [(PHAudioCallViewController *)self emergencyTextViaSatelliteLabel];
    [v27 setAlpha:v26];

    v28 = [(PHCallViewController *)self bottomBar];
    if ([v28 currentState] == 19)
    {
      v29 = 1.0;
    }

    else
    {
      v29 = 0.0;
    }

    [v8 setAlpha:v29];

    return;
  }

  v3 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v3 callDisplayStyle] == 3)
  {
    v4 = [(PHAudioCallViewController *)self features];
    v5 = [v4 isDominoEnabled];

    if (!v5)
    {
      return;
    }

    goto LABEL_6;
  }
}

- (void)setScreeningState:(unsigned __int16)a3 animated:(BOOL)a4
{
  v4 = a3;
  v6 = [(PHAudioCallViewController *)self callDisplayStyleManager:a3];
  if ([v6 callDisplayStyle] == 3)
  {
    v7 = [(PHAudioCallViewController *)self features];
    v8 = [v7 isDominoEnabled];

    if (v8)
    {
      v9 = [(PHAudioCallViewController *)self fetchLockState]^ 1;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v9 = 0;
LABEL_6:

  [(PHAudioCallViewController *)self setScreeningState:v4 animated:1 overrideWithIsUnlocked:v9];
}

- (void)setScreeningState:(unsigned __int16)a3 animated:(BOOL)a4 overrideWithIsUnlocked:(BOOL)a5
{
  v76 = a3;
  v77 = a5;
  v73 = a4;
  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v76;
    *&buf[8] = 1024;
    *&buf[10] = v77;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Audio: setCurrentState: (existing state is %d) with unlockedOverride: %d", buf, 0xEu);
  }

  v8 = [(PHAudioCallViewController *)self features];
  v9 = [v8 lvm_stopEnabled];

  if (v9)
  {
    [(PHAudioCallViewController *)self setShowsBlockButton:0];
  }

  v10 = [(PHCallViewController *)self bottomBar];
  [v10 setUserInteractionEnabled:1];

  v11 = [(PHAudioCallViewController *)self presentedViewController];
  if (v11)
  {
    v12 = [(PHCallViewController *)self isPresentingCustomMessageController];

    if ((v12 & 1) == 0)
    {
      [(PHAudioCallViewController *)self dismissViewControllerAnimated:1 completion:0];
    }
  }

  v13 = [(PHAudioCallViewController *)self traitCollection];
  if ([v13 _backlightLuminance] == 1)
  {
    v14 = 1;
  }

  else
  {
    v15 = [(PHAudioCallViewController *)self traitCollection];
    v14 = [v15 _backlightLuminance] == 0;
  }

  v16 = +[UIApplication sharedApplication];
  v17 = [v16 delegate];
  v18 = [v17 currentInCallScene];
  v19 = [v18 isBeingShownAboveCoverSheet];

  v20 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  v75 = v19 & !v77 | v14;
  if ([v20 callDisplayStyle] == 3)
  {
    v21 = [(PHAudioCallViewController *)self features];
    v22 = [v21 isDominoEnabled];
    v23 = 23;
    if (v75)
    {
      v24 = 24;
    }

    else
    {
      v24 = 23;
    }

    if (!v22)
    {
      v23 = v24;
    }

    v74 = v23;
  }

  else
  {
    v25 = 23;
    if ((v19 & !v77 | v14))
    {
      v25 = 24;
    }

    v74 = v25;
  }

  v26 = [(PHAudioCallViewController *)self callCenter];
  v78 = [v26 screeningCall];

  v27 = sub_100004F84();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    if (v75)
    {
      v28 = @"YES";
    }

    else
    {
      v28 = @"NO";
    }

    if (v14)
    {
      v29 = @"YES";
    }

    else
    {
      v29 = @"NO";
    }

    if (v19)
    {
      v30 = @"YES";
    }

    else
    {
      v30 = @"NO";
    }

    v31 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    v32 = [v31 callDisplayStyle];
    v33 = @"NO";
    if (v32 == 3)
    {
      v5 = [(PHAudioCallViewController *)self features];
      if ([v5 isDominoEnabled])
      {
        v33 = @"YES";
      }
    }

    *buf = 138413058;
    *&buf[4] = v28;
    *&buf[12] = 2112;
    *&buf[14] = v29;
    *&buf[22] = 2112;
    v87 = v30;
    LOWORD(v88[0]) = 2112;
    *(v88 + 2) = v33;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Audio: setCurrentState: showLockedState: %@, displayIsOff: %@, beingShownAboveCoverSheet: %@, isAmbient: %@", buf, 0x2Au);
    if (v32 == 3)
    {
    }
  }

  v34 = [(PHAudioCallViewController *)self featureFlags];
  if (TUCallScreeningEnabledM3())
  {
    v35 = [v78 contactIdentifiers];
    v36 = [v35 count] != 0;

    if (((v36 | v75) & 1) == 0)
    {
      v37 = [(PHAudioCallViewController *)self features];
      if ([v37 lvm_stopEnabled])
      {
        v38 = [(PHAudioCallViewController *)self callDisplayStyleManager];
        if ([v38 callDisplayStyle] == 3)
        {
          v39 = [(PHAudioCallViewController *)self features];
          v40 = [v39 isDominoEnabled];

          if (v40)
          {
            goto LABEL_53;
          }
        }

        else
        {
        }

        v42 = [(PHAudioCallViewController *)self features];
        v43 = [v42 receptionistEnabled];

        if (v43 && [v78 receptionistState])
        {
          [(PHAudioCallViewController *)self setShowsBlockButton:0];
        }

        else
        {
          [(PHAudioCallViewController *)self setShowsBlockButton:1];
        }

        goto LABEL_53;
      }

LABEL_53:
      [(PHAudioCallViewController *)self setCallForBackgroundImage:v78 animated:1 callDisplayStyleChanged:0];
      v41 = 25;
      goto LABEL_54;
    }
  }

  else
  {
  }

  [(PHAudioCallViewController *)self setCallForBackgroundImage:v78 animated:1 callDisplayStyleChanged:0];
  if (v74 != 23)
  {
    v41 = 24;
    goto LABEL_60;
  }

  v41 = 23;
LABEL_54:
  if (!v77)
  {
    v44 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([v44 callDisplayStyle] == 3)
    {
      v45 = [(PHAudioCallViewController *)self features];
      v46 = [v45 isDominoEnabled];

      if (v46)
      {
        v41 = 26;
      }
    }

    else
    {
    }
  }

LABEL_60:
  v47 = [v78 isMessagingAllowed];
  v48 = [(PHCallViewController *)self bottomBar];
  [v48 setDeclineAndMessageIsAvailable:v47];

  v49 = [v78 isReminderAllowed];
  v50 = [(PHCallViewController *)self bottomBar];
  [v50 setDeclineAndRemindIsAvailable:v49];

  v51 = [(PHCallViewController *)self bottomBar];
  v52 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v52 callDisplayStyle] == 3)
  {
    v53 = [(PHAudioCallViewController *)self features];
    [v51 setCurrentState:v41 animated:objc_msgSend(v53 animationCompletionBlock:{"isDominoEnabled"), 0}];
  }

  else
  {
    [v51 setCurrentState:v41 animated:0 animationCompletionBlock:0];
  }

  v54 = [(PHCallViewController *)self bottomBar];
  v55 = [v54 controlForActionType:30];

  [(PHCallViewController *)self configureDeclineWithReminderButton:0 declineWithMessageButton:v55 forIncomingCall:v78];
  v56 = [(PHAudioCallViewController *)self featureFlags];
  v57 = [v56 receptionistEnabled];

  if (v57)
  {
    v58 = [(PHCallViewController *)self bottomBar];
    v59 = [v58 controlForActionType:27];

    [(PHCallViewController *)self configureDeclineWithMoreButton:v59 forIncomingCall:v78];
  }

  [(PHAudioCallViewController *)self setMiddleViewState:4 animated:1];
  v60 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  v61 = [v60 callDisplayStyle] == 0;

  if (v61)
  {
    v62 = [(PHAudioCallViewController *)self callParticipantsViewController];
    [v62 setBannerButtonsState:0];
  }

  v63 = [(PHCallViewController *)self bottomBar];
  [(PHAudioCallViewController *)self _testing_didTransitionToIncomingRingingCallState:v63];

  v64 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v64 callDisplayStyle] == 3)
  {
    v65 = [(PHAudioCallViewController *)self features];
    v66 = [v65 isDominoEnabled];

    if (v66)
    {
      [(PHAudioCallViewController *)self layoutParticipantsViewAnimated:v73];
      [(PHAudioCallViewController *)self updateBottomBarAlphaWithCurrentState:v76];
    }
  }

  else
  {
  }

  v67 = [(PHAudioCallViewController *)self stateChangeLockObservation];
  if (!v67 || ([(PHAudioCallViewController *)self stateDisplayChangedObservation], v68 = objc_claimAutoreleasedReturnValue(), v69 = v68 == 0, v68, v67, v69))
  {
    v84[0] = 0;
    v84[1] = v84;
    v84[2] = 0x2020000000;
    v85 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3042000000;
    v87 = sub_10011ABF0;
    v88[0] = sub_10011ABFC;
    objc_initWeak(&v88[1], self);
    v82[0] = _NSConcreteStackBlock;
    v82[1] = 3221225472;
    v82[2] = sub_10011AC04;
    v82[3] = &unk_100359180;
    v82[4] = buf;
    v82[5] = v84;
    v83 = v76;
    v70 = [(PHAudioCallViewController *)self makeLockObserverWithHandler:v82];
    [(PHAudioCallViewController *)self setStateChangeLockObservation:v70];

    v81[0] = 0;
    v81[1] = v81;
    v81[2] = 0x2020000000;
    v71 = [(PHAudioCallViewController *)self traitCollection];
    v72 = [v71 _backlightLuminance];

    v81[3] = v72;
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_10011AD24;
    v79[3] = &unk_1003591A8;
    v79[4] = buf;
    v79[5] = v81;
    v79[6] = v84;
    v80 = v76;
    [(PHAudioCallViewController *)self setStateDisplayChangedObservation:v79];
    _Block_object_dispose(v81, 8);
    _Block_object_dispose(buf, 8);
    objc_destroyWeak(&v88[1]);
    _Block_object_dispose(v84, 8);
  }
}

- (void)setWaitOnHoldState:(unsigned __int16)a3 animated:(BOOL)a4
{
  [(PHAudioCallViewController *)self dismissWaitOnHoldTip:a3];
  v5 = [(PHAudioCallViewController *)self presentedViewController];
  if (v5)
  {
    v6 = v5;
    v7 = [(PHCallViewController *)self isPresentingCustomMessageController];

    if ((v7 & 1) == 0)
    {
      [(PHAudioCallViewController *)self dismissViewControllerAnimated:1 completion:0];
    }
  }

  v8 = [(PHCallViewController *)self bottomBar];
  v9 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v9 callDisplayStyle] == 3)
  {
    v10 = [(PHAudioCallViewController *)self features];
    [v8 setCurrentState:28 animated:objc_msgSend(v10 animationCompletionBlock:{"isDominoEnabled"), 0}];
  }

  else
  {
    [v8 setCurrentState:28 animated:0 animationCompletionBlock:0];
  }

  [(PHAudioCallViewController *)self setMiddleViewState:5 animated:1];
}

- (void)displayWaitOnHoldTip
{
  v3 = [(PHAudioCallViewController *)self waitOnHoldTipView];
  v4 = [v3 superview];

  if (!v4)
  {
    v5 = [(PHAudioCallViewController *)self middlePillContainer];
    v6 = [(PHAudioCallViewController *)self waitOnHoldTipView];
    [v5 addArrangedSubview:v6];

    [(PHAudioCallViewController *)self updateLayoutSupplementalButtons];
    v7 = [(PHAudioCallViewController *)self waitOnHoldTipView];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = [(PHAudioCallViewController *)self waitOnHoldTipViewLayoutConstraints];

    if (v8)
    {
      v9 = [(PHAudioCallViewController *)self waitOnHoldTipViewLayoutConstraints];
      [NSLayoutConstraint deactivateConstraints:v9];
    }

    v23 = [[NSMutableArray alloc] initWithArray:&__NSArray0__struct];
    v10 = [(PHAudioCallViewController *)self waitOnHoldTipView];
    v11 = [v10 trailingAnchor];
    v12 = [(PHAudioCallViewController *)self middlePillContainer];
    v13 = [v12 trailingAnchor];
    v14 = [v11 constraintEqualToAnchor:v13];
    [v23 addObject:v14];

    v15 = [(PHAudioCallViewController *)self waitOnHoldTipView];
    v16 = [v15 leadingAnchor];
    v17 = [(PHAudioCallViewController *)self middlePillContainer];
    v18 = [v17 leadingAnchor];
    v19 = [v16 constraintEqualToAnchor:v18];
    [v23 addObject:v19];

    [(PHAudioCallViewController *)self setWaitOnHoldTipViewLayoutConstraints:v23];
    v20 = [(PHAudioCallViewController *)self waitOnHoldTipViewLayoutConstraints];
    [NSLayoutConstraint activateConstraints:v20];

    v21 = [[TLAlertConfiguration alloc] initWithType:17];
    v22 = [TLAlert alertWithConfiguration:v21];
    [v22 play];
  }
}

- (void)displayScreenSharingIndicator
{
  v3 = [(PHAudioCallViewController *)self screenSharingIndicatorView];
  v4 = [v3 superview];

  if (!v4)
  {
    v5 = [(PHAudioCallViewController *)self middlePillContainer];
    v6 = [(PHAudioCallViewController *)self screenSharingIndicatorView];
    [v5 addArrangedSubview:v6];

    [(PHAudioCallViewController *)self updateLayoutSupplementalButtons];
  }

  v17 = [[NSMutableArray alloc] initWithArray:&__NSArray0__struct];
  v7 = [(PHAudioCallViewController *)self screenSharingIndicatorView];
  v8 = [v7 trailingAnchor];
  v9 = [(PHAudioCallViewController *)self middlePillContainer];
  v10 = [v9 trailingAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  [v17 addObject:v11];

  v12 = [(PHAudioCallViewController *)self screenSharingIndicatorView];
  v13 = [v12 leadingAnchor];
  v14 = [(PHAudioCallViewController *)self middlePillContainer];
  v15 = [v14 leadingAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  [v17 addObject:v16];

  [NSLayoutConstraint activateConstraints:v17];
}

- (void)dismissScreenSharingIndicatorView
{
  v3 = [(PHAudioCallViewController *)self screenSharingIndicatorView];
  [v3 removeFromSuperview];

  [(PHAudioCallViewController *)self setScreenSharingIndicatorView:0];

  [(PHAudioCallViewController *)self updateLayoutSupplementalButtons];
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
    v8 = [(PHAudioCallViewController *)self activeCall];
    v9 = +[UIApplication sharedApplication];
    v10 = [v9 delegate];
    v11 = [v10 waitOnHoldService];
    v12 = [v7 composeWithCall:v8 waitOnHoldService:v11];
    v13 = self->_waitOnHoldViewController;
    self->_waitOnHoldViewController = v12;

    [(PHAudioCallViewController *)self addChildViewController:self->_waitOnHoldViewController];
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
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "updateWaitOnHoldViewIfNeeded", v7, 2u);
  }

  [(PHAudioCallViewController *)self updateCurrentState];
  v4 = [(PHAudioCallViewController *)self activeCall];
  v5 = [v4 isWaitOnHoldActive];

  if ((v5 & 1) == 0)
  {
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

    v35.receiver = self;
    v35.super_class = PHAudioCallViewController;
    [(PHCallViewController *)&v35 setCurrentState:v5];
    [(PHAudioCallViewController *)self setStateChangeLockObservation:0];
    [(PHAudioCallViewController *)self setStateDisplayChangedObservation:0];
    v11 = [(PHAudioCallViewController *)self features];
    v12 = [v11 lvm_stopEnabled];

    if (v12)
    {
      [(PHAudioCallViewController *)self setShowsBlockButton:0];
    }

    if (v5 <= 5)
    {
      if (v5 > 2)
      {
        if ((v5 - 4) >= 2)
        {
          if (v5 == 3)
          {
            [(PHAudioCallViewController *)self setWaitingState:3];
LABEL_65:
            v32 = [(PHCallViewController *)self bottomBar];
            [v32 setUserInteractionEnabled:1];

            if (v5 == 1)
            {
              [(PHAudioCallViewController *)self startSuppressionOfSTKAlerts];
LABEL_43:
              v17 = [(PHAudioCallViewController *)self callDisplayStyleManager];
              if ([v17 callDisplayStyle] == 3)
              {
                v18 = [(PHAudioCallViewController *)self features];
                v19 = [v18 isDominoEnabled];

                if (v19)
                {
LABEL_48:
                  if (![(PHAudioCallViewController *)self shouldUseHeroImageLayout])
                  {
                    v20 = [(PHAudioCallViewController *)self callDisplayStyleManager];
                    if ([v20 callDisplayStyle] != 3)
                    {
LABEL_56:

                      goto LABEL_57;
                    }

                    v22 = [(PHAudioCallViewController *)self features];
                    if (![v22 isDominoEnabled])
                    {
LABEL_55:

                      goto LABEL_56;
                    }
                  }

                  if (v5 != 7)
                  {
LABEL_57:
                    if ([(PHAudioCallViewController *)self shouldShowNewPosterUpdates])
                    {
                      v25 = dispatch_time(0, 950000000);
                      v33[0] = _NSConcreteStackBlock;
                      v33[1] = 3221225472;
                      v33[2] = sub_10011BC74;
                      v33[3] = &unk_100356960;
                      v33[4] = self;
                      v34 = v5;
                      dispatch_after(v25, &_dispatch_main_q, v33);
                    }

                    else
                    {
                      [(PHAudioCallViewController *)self _updatePosterStatusLabelForState:v5];
                      if ([(PHAudioCallViewController *)self hasNoCallsOrOnlyEndedCalls])
                      {
                        v26 = [(PHAudioCallViewController *)self renderingViewController];
                        if (v26)
                        {
                          v27 = v26;
                          v28 = [(PHAudioCallViewController *)self posterNameViewModel];
                          v29 = [v28 priorityPosterNameTextView];

                          if (v29)
                          {
                            v30 = [(PHAudioCallViewController *)self posterContainer];
                            [v30 setAlpha:0.0];
                          }
                        }
                      }
                    }

                    [(PHAudioCallViewController *)self updateAmbientAudioRoutesVisibility];
                    [(PHAudioCallViewController *)self updateShareNameAndPhotoHUDPresentationIfNeeded];
                    v31 = +[NSNotificationCenter defaultCenter];
                    [v31 postNotificationName:@"PHCallViewControllerStateChangedNotification" object:0];

                    return;
                  }

                  v20 = [(PHAudioCallViewController *)self getParticipantsView_NotWaiting];
                  v21 = [v20 singleCallLabelView];
                  v22 = v21;
                  if (v21)
                  {
                    v23 = [v21 statusLabel];
                    v24 = *&CGAffineTransformIdentity.c;
                    *buf = *&CGAffineTransformIdentity.a;
                    v37 = v24;
                    v38 = *&CGAffineTransformIdentity.tx;
                    [v23 setTransform:buf];
                  }

                  goto LABEL_55;
                }
              }

              else
              {
              }

              [(PHAudioCallViewController *)self updateBottomBarAlphaWithCurrentState:v5];
              goto LABEL_48;
            }

LABEL_42:
            [(PHAudioCallViewController *)self stopSuppressionOfSTKAlerts];
            goto LABEL_43;
          }
        }

        else
        {
          v13 = [(PHAudioCallViewController *)self usesCompactMulticallUI];
          if (v5 == 5 && v13)
          {
            v14 = [(PHAudioCallViewController *)self callDisplayStyleManager];
            if ([v14 callDisplayStyle] == 3)
            {
              v15 = [(PHAudioCallViewController *)self features];
              v16 = [v15 isDominoEnabled];

              if (v16)
              {
                return;
              }
            }

            else
            {
            }

            [(PHAudioCallViewController *)self updateBottomBarAlphaWithCurrentState:5];
            return;
          }

          [(PHAudioCallViewController *)self setActiveState:v5];
        }
      }

      else if (v5)
      {
        if (v5 == 1)
        {
          [(PHAudioCallViewController *)self setRingingState:1];
        }

        else if (v5 == 2)
        {
          [(PHAudioCallViewController *)self setOutgoingRingingState:2];
        }
      }

      else
      {
        [(PHAudioCallViewController *)self setIdleState:0];
      }
    }

    else if (v5 > 9)
    {
      switch(v5)
      {
        case 0xA:
          [(PHAudioCallViewController *)self setCallBufferState:10];
          break;
        case 0xB:
          [(PHAudioCallViewController *)self setScreeningState:11 animated:v4];
          break;
        case 0xC:
          [(PHAudioCallViewController *)self setWaitOnHoldState:12 animated:v4];
          break;
      }
    }

    else if ((v5 - 8) < 2)
    {
      [(PHAudioCallViewController *)self setAlertModeNeededState:v5];
    }

    else if (v5 == 6)
    {
      [(PHAudioCallViewController *)self setEndingState:6];
      [(PHAudioCallViewController *)self _testing_didTransitionToEndingCallState];
    }

    else if (v5 == 7)
    {
      [(PHAudioCallViewController *)self setEndedState:7];
    }

    if (v7 == 3)
    {
      [(PHAudioCallViewController *)self setShowsCallWaitingParticipantView:0];
    }

    if (v5 <= 7 && ((1 << v5) & 0xC1) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_65;
  }
}

- (void)updateBottomBarAlphaWithCurrentState:(unsigned __int16)a3
{
  v3 = a3;
  v14 = +[PHInCallUtilities sharedInstance];
  if (([v14 isIPadIdiom] & 1) == 0)
  {

    goto LABEL_6;
  }

  v5 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v5 callDisplayStyle] == 3)
  {
    v6 = [(PHAudioCallViewController *)self features];
    v7 = [v6 isDominoEnabled];

    if (!v7)
    {
      return;
    }

LABEL_6:
    v8 = +[UIApplication sharedApplication];
    v9 = [v8 delegate];
    v14 = [v9 mostRecentlyDisconnectedAudioCall];

    v10 = v14;
    if (v14)
    {
      v10 = [v14 disconnectedReasonRequiresCallBackUI];
    }

    if (v3 == 1 || v3 == 3)
    {
      goto LABEL_12;
    }

    if (v3 == 7)
    {
      if (v10)
      {
LABEL_12:
        v11 = [(PHAudioCallViewController *)self callDisplayStyleManager];
        if ([v11 callDisplayStyle])
        {

          v12 = 1.0;
LABEL_16:
          v5 = [(PHCallViewController *)self bottomBar];
          [v5 setAlpha:v12];
          goto LABEL_17;
        }

        v13 = [(PHAudioCallViewController *)self middleViewState];

        v12 = 1.0;
        if (v13 == 2)
        {
          goto LABEL_16;
        }

LABEL_15:
        v12 = 0.0;
        goto LABEL_16;
      }
    }

    else if ((v3 - 11) <= 1)
    {
      goto LABEL_12;
    }

    v12 = 1.0;
    if ([(PHAudioCallViewController *)self middleViewState]== 2)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
}

- (void)updateIncomingBottomBarControlState
{
  if ([(PHCallViewController *)self currentState]== 11)
  {
    v3 = [(PHCallViewController *)self currentState];

    [(PHAudioCallViewController *)self setScreeningState:v3 animated:1];
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
  v3 = [(PHAudioCallViewController *)self frontmostCall];
  v4 = [v3 hardPauseDigitsState] == 2;

  v5 = [(PHCallViewController *)self bottomBar];
  [v5 setAction:23 enabled:v4];
}

- (id)associatedCallGroupForCall:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(PHAudioCallViewController *)self callCenter];
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
  v5 = [(PHAudioCallViewController *)self prioritizedCall];

  if (v5)
  {
    v6 = [(PHAudioCallViewController *)self associatedCallGroupForCall:v4];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 calls];
      v9 = [(PHAudioCallViewController *)self prioritizedCall];
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
    v5 = [(PHAudioCallViewController *)self isViewLoaded];
    v6 = obj;
    if (v5)
    {
      v5 = [(PHAudioCallViewController *)self updateCurrentState];
      v6 = obj;
    }
  }

  _objc_release_x1(v5, v6);
}

- (void)gameControllerDidChangeContext
{
  v2 = [(PHAudioCallViewController *)self callParticipantsViewController];
  [v2 gameControllerDidChangeContext];
}

- (BOOL)canShowPosterBadgeInAudioCallView:(id)a3
{
  v4 = a3;
  if ([(PHAudioCallViewController *)self participantsViewIsShowingMultipleLabel])
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

- (id)newPosterConfigurationForCall:(id)a3
{
  v6 = a3;
  v7 = [(PHAudioCallViewController *)self shouldUseHeroImageLayout];
  if ((v7 & 1) == 0)
  {
    v3 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([v3 callDisplayStyle] == 3)
    {
      v4 = [(PHAudioCallViewController *)self features];
      if ([v4 isDominoEnabled])
      {
        goto LABEL_2;
      }
    }

    goto LABEL_16;
  }

LABEL_2:
  v8 = [(PHAudioCallViewController *)self features];
  v9 = [v8 isNameAndPhotoC3Enabled];

  if ((v7 & 1) == 0)
  {

    if (v9)
    {
      goto LABEL_10;
    }

LABEL_16:
    v18 = 0;
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_10:
  v10 = [(PHAudioCallViewController *)self sharedProfileStateOracleForCall:v6];
  v11 = [v10 pendingNickname];

  if (v11 && ([v11 wallpaper], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(v11, "wallpaper"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "wallpaperData"), v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v13, v15))
  {
    v16 = [v11 wallpaper];
    v17 = [v16 wallpaperData];

    v18 = [PRSPosterArchiver unarchiveConfigurationFromData:v17 error:0];
    v19 = sub_100004F84();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v6 uniqueProxyIdentifier];
      v26 = 138412290;
      v27 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "SNAP: unarchived a pending PRSPosterConfiguration for %@", &v26, 0xCu);
    }

    v21 = [[ICSPosterConfigurationWrapper alloc] initWithConfiguration:v18 source:3];
    v22 = [(PHAudioCallViewController *)self configurationCache];
    v23 = [v6 uniqueProxyIdentifier];
    [v22 setObject:v21 forKey:v23];
  }

  else
  {
    v24 = sub_100004F84();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412290;
      v27 = v11;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "SNAP: there is no newPosterConfiguration, current pendingNickName is %@", &v26, 0xCu);
    }

    v17 = [(PHAudioCallViewController *)self configurationCache];
    v21 = [[ICSPosterConfigurationWrapper alloc] initWithConfiguration:0 source:3];
    v22 = [v6 uniqueProxyIdentifier];
    [v17 setObject:v21 forKey:v22];
    v18 = 0;
  }

LABEL_21:
  return v18;
}

- (id)sharedProfileStateOracleForCall:(id)a3
{
  v4 = a3;
  v5 = [v4 contactIdentifier];

  if (v5)
  {
    v6 = [PHInCallUtilities contactStoreForCall:v4];
    v7 = [v4 contactIdentifier];
    v8 = +[PHAudioCallViewController contactKeysToFetch];
    v9 = [(PHAudioCallViewController *)self contactsCache];
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

- (BOOL)callStateCanShowNewPoster:(id)a3
{
  v6 = a3;
  v7 = [(PHAudioCallViewController *)self shouldUseHeroImageLayout];
  if (v7)
  {
    goto LABEL_2;
  }

  v3 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v3 callDisplayStyle] != 3)
  {
LABEL_8:

    goto LABEL_13;
  }

  v4 = [(PHAudioCallViewController *)self features];
  if (([v4 isDominoEnabled] & 1) == 0)
  {

    goto LABEL_8;
  }

LABEL_2:
  v8 = [(PHAudioCallViewController *)self features];
  v9 = [v8 isNameAndPhotoC3Enabled];

  if (v7)
  {
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if ((v9 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (v6)
  {
    if ([v6 status] == 1)
    {
      v10 = [(PHAudioCallViewController *)self callCenter];
      v11 = [v10 currentCallCount];

      if (v11 < 2)
      {
        v12 = 1;
        goto LABEL_14;
      }
    }
  }

LABEL_13:
  v12 = 0;
LABEL_14:

  return v12;
}

- (void)finishNewPosterUpdatesWithCompletion:(id)a3
{
  v6 = a3;
  v7 = [(PHAudioCallViewController *)self shouldUseHeroImageLayout];
  if ((v7 & 1) == 0)
  {
    v3 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([v3 callDisplayStyle] == 3)
    {
      v4 = [(PHAudioCallViewController *)self features];
      if ([v4 isDominoEnabled])
      {
        goto LABEL_2;
      }
    }

LABEL_17:

    goto LABEL_18;
  }

LABEL_2:
  v8 = [(PHAudioCallViewController *)self features];
  v9 = [v8 isNameAndPhotoC3Enabled];

  if (v7)
  {
    if (!v9)
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  if (v9)
  {
LABEL_9:
    v10 = [(PHAudioCallViewController *)self frontmostCall];
    v3 = v10;
    if (v10)
    {
      if ([v10 status] == 1)
      {
        v11 = [(PHAudioCallViewController *)self callCenter];
        v12 = [v11 currentCallCount];

        if (v12 <= 1)
        {
          v13 = [(PHAudioCallViewController *)self sharedProfileStateOracleForCall:v3];
          v17 = 0;
          v14 = [v13 updateContactAndNicknamesForAutoUpdateWithError:&v17];
          v15 = v17;
          v16 = sub_100004F84();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v19 = v15;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "SNAP: new poster update completed with error: %@", buf, 0xCu);
          }

          if (v6)
          {
            v6[2](v6, v13);
          }
        }
      }
    }

    goto LABEL_17;
  }

LABEL_18:
}

- (BOOL)isShowingBackgroundImage
{
  v2 = [(PHAudioCallViewController *)self backgroundImageView];
  v3 = v2 != 0;

  return v3;
}

- (id)contactToDisplayInCallWallpaperForCall:(id)a3
{
  v4 = a3;
  v5 = [(PHAudioCallViewController *)self isBeingDismissed];
  v6 = 0;
  if (v4 && (v5 & 1) == 0)
  {
    v7 = [v4 contactIdentifier];

    if (v7)
    {
      v8 = [PHInCallUtilities contactStoreForCall:v4];
      v9 = [v4 contactIdentifier];
      v10 = +[PHAudioCallViewController contactKeysToFetch];
      v11 = [(PHAudioCallViewController *)self contactsCache];
      v6 = [v8 contactForIdentifier:v9 keysToFetch:v10 usingCache:v11];

      if (v6)
      {
        v12 = [(PHAudioCallViewController *)self mostRecentContactToDisplayInCallWallpaper];

        if (v6 != v12)
        {
          [(PHAudioCallViewController *)self setMostRecentContactToDisplayInCallWallpaper:v6];
          v13 = +[CNContactChangesNotifier sharedNotifier];
          [v13 unregisterObserver:self forContact:0];

          v14 = +[CNContactChangesNotifier sharedNotifier];
          v15 = +[PHAudioCallViewController contactKeysToFetch];
          [v14 registerObserver:self forContact:v6 keysToFetch:v15];
        }
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
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
    v14 = +[PHAudioCallViewController contactKeysToFetch];
    v15 = [(PHAudioCallViewController *)self contactsCache];
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
  v5 = [(PHAudioCallViewController *)self wallpaperTypeForBundleID:v4];

  return v5;
}

- (id)wallpaperTypeForIMWallpaperMetadata:(id)a3
{
  v4 = [a3 type];
  v5 = [(PHAudioCallViewController *)self wallpaperTypeForBundleID:v4];

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

- (id)lastSeenOrCurrentPosterConfigurationForCall:(id)a3
{
  v4 = a3;
  if ([(PHAudioCallViewController *)self prefersShowingCachedLastSeenPosterBeforeCallConnected:v4])
  {
    [(PHAudioCallViewController *)self lastSeenPosterConfigurationForCall:v4];
  }

  else
  {
    [(PHAudioCallViewController *)self contactWallpaperConfigurationForCall:v4 shouldReadFromCache:1];
  }
  v5 = ;

  return v5;
}

- (id)lastSeenPosterConfigurationForCall:(id)a3
{
  v4 = a3;
  if (![(PHAudioCallViewController *)self shouldUseHeroImageLayout])
  {
    v12 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([v12 callDisplayStyle] == 3)
    {
      v13 = [(PHAudioCallViewController *)self features];
      v14 = [v13 isDominoEnabled];

      if (v14)
      {
        goto LABEL_2;
      }
    }

    else
    {
    }

    v11 = 0;
    goto LABEL_24;
  }

LABEL_2:
  v5 = [(PHAudioCallViewController *)self configurationCache];
  v6 = [v4 uniqueProxyIdentifier];
  v7 = [v5 objectForKey:v6];
  v8 = [v7 configuration];

  if (v8)
  {
    v9 = sub_100004F84();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v4 callUUID];
      v29 = 138412290;
      v30 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SNAP: Returning a cached PRSPosterConfiguration for %@", &v29, 0xCu);
    }

    v11 = v8;
    goto LABEL_23;
  }

  v15 = [v4 handle];
  v16 = [v15 siriDisplayName];
  if ([v16 length])
  {
    v17 = [v4 handle];
    v18 = [v17 shouldHideContact];

    if (v18)
    {
      v19 = sub_100004F84();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v4 uniqueProxyIdentifier];
        v29 = 138412290;
        v30 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "SNAP: call initiated with Siri using a phone or email on a lock device, not showing the wallpaper for callUUID %@", &v29, 0xCu);
      }

      goto LABEL_21;
    }
  }

  else
  {
  }

  v21 = [(PHAudioCallViewController *)self readCachedLastSeenPosterDataForCall:v4];
  if (v21)
  {
    v22 = v21;
    v11 = [PRSPosterArchiver unarchiveConfigurationFromData:v21 error:0];
    v23 = sub_100004F84();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v4 uniqueProxyIdentifier];
      v29 = 138412290;
      v30 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "SNAP: unarchived a lastSeen PRSPosterConfiguration for %@", &v29, 0xCu);
    }

    v25 = [[ICSPosterConfigurationWrapper alloc] initWithConfiguration:v11 source:1];
    v26 = [(PHAudioCallViewController *)self configurationCache];
    v27 = [v4 uniqueProxyIdentifier];
    [v26 setObject:v25 forKey:v27];

    goto LABEL_22;
  }

LABEL_21:
  v22 = [(PHAudioCallViewController *)self configurationCache];
  v25 = [[ICSPosterConfigurationWrapper alloc] initWithConfiguration:0 source:1];
  v26 = [v4 uniqueProxyIdentifier];
  [v22 setObject:v25 forKey:v26];
  v11 = 0;
LABEL_22:

LABEL_23:
LABEL_24:

  return v11;
}

- (id)contactWallpaperConfigurationForCall:(id)a3 shouldReadFromCache:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(PHAudioCallViewController *)self shouldUseHeroImageLayout])
  {
    goto LABEL_2;
  }

  v14 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v14 callDisplayStyle] != 3)
  {

LABEL_17:
    v11 = 0;
    goto LABEL_26;
  }

  v15 = [(PHAudioCallViewController *)self features];
  v16 = [v15 isDominoEnabled];

  if (!v16)
  {
    goto LABEL_17;
  }

LABEL_2:
  v7 = [(PHAudioCallViewController *)self contactWallpaperForCall:v6];
  if (v7)
  {
    if (v4 && (-[PHAudioCallViewController configurationCache](self, "configurationCache"), v8 = objc_claimAutoreleasedReturnValue(), [v6 uniqueProxyIdentifier], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKey:", v9), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "configuration"), v11 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v11))
    {
      v12 = sub_100004F84();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v6 callUUID];
        v28 = 138412290;
        v29 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SNAP: Returning a cached PRSPosterConfiguration for %@", &v28, 0xCu);
      }
    }

    else
    {
      v12 = [v7 posterArchiveData];
      v17 = sub_100004F84();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        if (v18)
        {
          v28 = 138412546;
          v29 = v12;
          v30 = 2048;
          v31 = [v12 length];
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "SNAP: posterArchiveData in wallpaper is %@, length is %lu", &v28, 0x16u);
        }

        v11 = [PRSPosterArchiver unarchiveConfigurationFromData:v12 error:0];
        v19 = sub_100004F84();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v6 uniqueProxyIdentifier];
          v28 = 138412290;
          v29 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "SNAP: unarchived a contact (current) PRSPosterConfiguration for %@", &v28, 0xCu);
        }

        v21 = [[ICSPosterConfigurationWrapper alloc] initWithConfiguration:v11 source:2];
        v22 = [(PHAudioCallViewController *)self configurationCache];
        v23 = [v6 uniqueProxyIdentifier];
        [(ICSPosterConfigurationWrapper *)v22 setObject:v21 forKey:v23];
      }

      else
      {
        if (v18)
        {
          LOWORD(v28) = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "SNAP: there is no posterArchiveData in wallpaper", &v28, 2u);
        }

        v21 = [(PHAudioCallViewController *)self configurationCache];
        v22 = [[ICSPosterConfigurationWrapper alloc] initWithConfiguration:0 source:2];
        v23 = [v6 uniqueProxyIdentifier];
        [(ICSPosterConfigurationWrapper *)v21 setObject:v22 forKey:v23];
        v11 = 0;
      }
    }
  }

  else
  {
    v24 = [(PHAudioCallViewController *)self configurationCache];
    v25 = [[ICSPosterConfigurationWrapper alloc] initWithConfiguration:0 source:2];
    v26 = [v6 uniqueProxyIdentifier];
    [v24 setObject:v25 forKey:v26];

    v12 = sub_100004F84();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SNAP: contactWallpaperForCall is nil", &v28, 2u);
    }

    v11 = 0;
  }

LABEL_26:

  return v11;
}

- (id)wallpaperTitleStyleAttributesForCall:(id)a3
{
  v4 = a3;
  if (![(PHAudioCallViewController *)self shouldUseHeroImageLayout])
  {
    v12 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([v12 callDisplayStyle] == 3)
    {
      v13 = [(PHAudioCallViewController *)self features];
      v14 = [v13 isDominoEnabled];

      if (v14)
      {
        goto LABEL_2;
      }
    }

    else
    {
    }

    v11 = 0;
    goto LABEL_19;
  }

LABEL_2:
  v5 = [(PHAudioCallViewController *)self lastSeenOrCurrentPosterConfigurationForCall:v4];
  if (v5)
  {
    v6 = [(PHAudioCallViewController *)self configurationCache];
    v7 = [v4 uniqueProxyIdentifier];
    v8 = [v6 objectForKey:v7];

    if (v8)
    {
      v9 = [v8 configuration];
      if ([v9 isEqual:v5])
      {
        v10 = [v8 titleStyleAttributes];

        if (v10)
        {
          v11 = [v8 titleStyleAttributes];
LABEL_17:

          goto LABEL_18;
        }
      }

      else
      {
      }
    }

    v18 = 0;
    v11 = [PRUISPosterConfigurationUtilities titleStyleAttributesForConfiguration:v5 error:&v18];
    if (v8)
    {
      v15 = [v8 configuration];
      v16 = [v15 isEqual:v5];

      if (v16)
      {
        [v8 setTitleStyleAttributes:v11];
      }
    }

    goto LABEL_17;
  }

  v11 = 0;
LABEL_18:

LABEL_19:

  return v11;
}

- (id)wallpaperTitleStyleAttributes
{
  v3 = [(PHAudioCallViewController *)self callToUseForWallpaper];
  v4 = [(PHAudioCallViewController *)self wallpaperTitleStyleAttributesForCall:v3];

  return v4;
}

- (id)contactWallpaperBackgroundColor
{
  v3 = [(PHAudioCallViewController *)self callToUseForWallpaper];
  if (![(PHAudioCallViewController *)self callStateCanShowNewPoster:v3]&& [(PHAudioCallViewController *)self prefersShowingCachedLastSeenPosterBeforeCallConnected:v3])
  {
    v4 = [(PHAudioCallViewController *)self lastSeenPosterIMWallpaperMetadataForCall:v3];
    v5 = [v4 backgroundColor];
LABEL_6:
    v7 = v5;
    goto LABEL_8;
  }

  v6 = [(PHAudioCallViewController *)self contactWallpaperForCall:v3];
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
  v5 = [(PHAudioCallViewController *)self canShowBackgroundImage];
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

  v9 = [(PHAudioCallViewController *)self callForBackgroundImage];
  if ([v9 isEqual:v7])
  {
    v10 = [(PHAudioCallViewController *)self callForBackgroundImage];

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
      v12 = [(PHAudioCallViewController *)self backgroundImageView];
      v13 = [v12 image];

      [(PHAudioCallViewController *)self hideOrShowThirdPartyBackgroundImageWithImage:v13];
      goto LABEL_19;
    }
  }

  else
  {
  }

  if (v7)
  {
    v14 = [(PHAudioCallViewController *)self contactImageDataForCall:v7];
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

  [(PHAudioCallViewController *)self setBackgroundImage:v13];
  [(PHAudioCallViewController *)self setCallForBackgroundImage:v7];
LABEL_19:
  [(PHAudioCallViewController *)self updateLegacyBackgroundImageVisibilityWithShouldShowWallpaper:[(PHAudioCallViewController *)self callHasNoContactPoster]^ 1];
  if (v13)
  {
    v15 = [(PHAudioCallViewController *)self canShowBackgroundImage];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)contactImageDataForCall:(id)a3
{
  v4 = [(PHAudioCallViewController *)self contactForCall:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 fullscreenImageData];
    v7 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([v7 callDisplayStyle] == 3)
    {
      v8 = [(PHAudioCallViewController *)self features];
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

  v10 = 0;
  if (v9 && v8)
  {
    v11 = sub_100004F84();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SNAP: trying to fetch contactImageData", v17, 2u);
    }

    v12 = [PHInCallUtilities contactStoreForCall:v4];
    v13 = [v4 contactIdentifier];
    v14 = +[PHAudioCallViewController contactKeysToFetch];
    v15 = [(PHAudioCallViewController *)self contactsCache];
    v10 = [v12 contactForIdentifier:v13 keysToFetch:v14 usingCache:v15];
  }

  return v10;
}

- (id)fallbackImageDataForCall:(id)a3
{
  v3 = [(PHAudioCallViewController *)self contactForCall:a3];
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
  if (v4 && ([(PHAudioCallViewController *)self contactImageDataForCall:v4], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
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
  v3 = [(PHAudioCallViewController *)self callToUseForWallpaper];
  v4 = [(PHAudioCallViewController *)self contactImageForCall:v3];

  return v4;
}

- (void)setBackgroundImage:(id)a3
{
  v27 = a3;
  v4 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v4 callDisplayStyle] == 3)
  {
    v5 = [(PHAudioCallViewController *)self features];
    v6 = [v5 isDominoEnabled];

    if (v6)
    {
      v7 = [(PHAudioCallViewController *)self callToUseForWallpaper];
      if ([(PHAudioCallViewController *)self callStateCanShowNewPoster:v7]|| ![(PHAudioCallViewController *)self prefersShowingCachedLastSeenPosterBeforeCallConnected:v7])
      {
        v8 = [(PHAudioCallViewController *)self contactWallpaperForCall:v7];
        v9 = [(PHAudioCallViewController *)self wallpaperTypeForCNWallpaper:v8];
      }

      else
      {
        v8 = [(PHAudioCallViewController *)self lastSeenPosterIMWallpaperMetadataForCall:v7];
        v9 = [(PHAudioCallViewController *)self wallpaperTypeForIMWallpaperMetadata:v8];
      }

      v15 = v9;

      v16 = [(PHAudioCallViewController *)self callCenter];
      if ([v16 currentCallCount] <= 1)
      {
      }

      else
      {
        v17 = [(PHAudioCallViewController *)self callCenter];
        v18 = [v17 incomingCall];

        if (v18)
        {
          v19 = &OBJC_IVAR___PHAudioCallViewController__shouldShowLargeAvatarForCallWaiting;
LABEL_24:
          v21 = *(&self->super.super.super.super.isa + *v19);
          v22 = [(PHCallViewController *)self currentState];
          if (v15 == CNWallpaperTypeMemoji || v15 == CNWallpaperTypeMonogram)
          {
            v24 = [(PHAudioCallViewController *)self contactWallpaperBackgroundColor];
            if (v24)
            {
              [(PHAudioCallViewController *)self setBackgroundColor:v24 animated:1];
            }

            else
            {
              v26 = +[UIColor blackColor];
              [(PHAudioCallViewController *)self setBackgroundColor:v26 animated:1];
            }

            [(PHAudioCallViewController *)self removeBackgroundContactImageView];
          }

          else
          {
            if (v22 == 11)
            {
              v23 = 1;
            }

            else
            {
              v23 = v21;
            }

            if (v27 && v23)
            {
              [(PHAudioCallViewController *)self updateBackgroundContactImageViewWithImage:v27 animated:1];
            }

            else
            {
              v25 = +[UIColor blackColor];
              [(PHAudioCallViewController *)self setBackgroundColor:v25 animated:1];
            }
          }

          goto LABEL_38;
        }
      }

      v20 = [(PHAudioCallViewController *)self usesCompactMulticallUI];
      v19 = &OBJC_IVAR___PHAudioCallViewController__shouldShowLargeAvatar;
      if (v20)
      {
        v19 = &OBJC_IVAR___PHAudioCallViewController__shouldShowLargeAvatarForCallWaiting;
      }

      goto LABEL_24;
    }
  }

  else
  {
  }

  if (v27 && [(PHAudioCallViewController *)self canShowBackgroundImage]|| [(PHAudioCallViewController *)self shouldShowContactOrLastSeenWallpaper])
  {
    [(PHAudioCallViewController *)self updateBackgroundContactImageViewWithImage:v27 animated:0];
    [(PHAudioCallViewController *)self updateLayeredBackgroundWallpaper];
    [(PHAudioCallViewController *)self removeDefaultBackgroundGradientView];
  }

  else
  {
    v10 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    v11 = [v10 callDisplayStyle];

    if (v11)
    {
      v12 = +[UIApplication sharedApplication];
      v13 = [v12 delegate];
      v14 = [v13 mostRecentlyDisconnectedAudioCall];

      if (!v14 || ![v14 isEmergency] || (objc_msgSend(v14, "disconnectedReasonRequiresCallBackUI") & 1) == 0)
      {
        [(PHAudioCallViewController *)self addDefaultBackgroundGradientView];
      }

      [(PHAudioCallViewController *)self updateLayeredBackgroundWallpaper];
      [(PHAudioCallViewController *)self removeBackgroundContactImageView];
    }
  }

LABEL_38:
}

- (void)setBackgroundColor:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10011E9CC;
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
    v8[2] = sub_10011EA1C;
    v8[3] = &unk_100356D38;
    v9 = v6;
    [UIView animateWithDuration:v8 animations:0.5];
  }

  else
  {
    (v6[2])(v6);
  }
}

- (void)updateBackgroundContactImageViewWithImage:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v46 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SNAP: update backgroundContactImageView withImage: %@", buf, 0xCu);
  }

  if ([(PHAudioCallViewController *)self isShowingBackgroundImage])
  {
    if (v4)
    {
      backgroundImageView = self->_backgroundImageView;
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_10011EFE8;
      v41[3] = &unk_100357110;
      v41[4] = self;
      v42 = v6;
      [UIView transitionWithView:backgroundImageView duration:5242880 options:v41 animations:0 completion:0.5];
    }

    else
    {
      [(PHBackgroundGradientBlurView *)self->_backgroundImageView setImage:v6];
      [(PHBackgroundGradientBlurView *)self->_backgroundImageView setAlpha:1.0];
    }

    goto LABEL_16;
  }

  v9 = [[PHBackgroundGradientBlurView alloc] initWithImage:v6];
  v10 = self->_backgroundImageView;
  self->_backgroundImageView = v9;

  [(PHBackgroundGradientBlurView *)self->_backgroundImageView setContentMode:2];
  [(PHBackgroundGradientBlurView *)self->_backgroundImageView setClipsToBounds:1];
  v11 = [(PHAudioCallViewController *)self view];
  [v11 insertSubview:self->_backgroundImageView atIndex:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [(PHAudioCallViewController *)self buttonsViewController];
    v13 = [v12 view];

    [v13 updateBackgroundMaterial:1];
  }

  [(PHAudioCallViewController *)self updateCallRecordingViewBackgroundMaterialType:1];
  [(PHBackgroundGradientBlurView *)self->_backgroundImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v14 callDisplayStyle] == 3)
  {
    v15 = [(PHAudioCallViewController *)self features];
    v16 = [v15 isDominoEnabled];

    if (v16)
    {
      [(PHBackgroundGradientBlurView *)self->_backgroundImageView setTranslatesAutoresizingMaskIntoConstraints:0];
      v17 = _NSDictionaryOfVariableBindings(@"_backgroundImageView", self->_backgroundImageView, 0);
      v18 = [(PHAudioCallViewController *)self view];
      v19 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_backgroundImageView]|" options:0 metrics:0 views:v17];
      [v18 addConstraints:v19];

      v20 = [(PHAudioCallViewController *)self view];
      v21 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_backgroundImageView]|" options:0 metrics:0 views:v17];
      [v20 addConstraints:v21];
      goto LABEL_14;
    }
  }

  else
  {
  }

  v35 = [(PHBackgroundGradientBlurView *)self->_backgroundImageView topAnchor];
  v36 = [(PHAudioCallViewController *)self view];
  v32 = [v36 topAnchor];
  v39 = [v35 constraintEqualToAnchor:v32];
  v44[0] = v39;
  v37 = [(PHBackgroundGradientBlurView *)self->_backgroundImageView bottomAnchor];
  v38 = [(PHAudioCallViewController *)self view];
  v34 = [v38 bottomAnchor];
  v33 = [v37 constraintEqualToAnchor:v34];
  v44[1] = v33;
  v30 = [(PHBackgroundGradientBlurView *)self->_backgroundImageView leadingAnchor];
  v31 = [(PHAudioCallViewController *)self view];
  [v31 leadingAnchor];
  v22 = v40 = v6;
  v23 = [v30 constraintEqualToAnchor:v22];
  v44[2] = v23;
  v24 = [(PHBackgroundGradientBlurView *)self->_backgroundImageView trailingAnchor];
  v25 = [(PHAudioCallViewController *)self view];
  [v25 trailingAnchor];
  v27 = v26 = v4;
  v28 = [v24 constraintEqualToAnchor:v27];
  v44[3] = v28;
  v29 = [NSArray arrayWithObjects:v44 count:4];
  [NSLayoutConstraint activateConstraints:v29];

  v21 = v32;
  v4 = v26;

  v20 = v36;
  v17 = v35;

  v6 = v40;
LABEL_14:

  if (v4)
  {
    [(PHBackgroundGradientBlurView *)self->_backgroundImageView setAlpha:0.0];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10011EFD0;
    v43[3] = &unk_100356988;
    v43[4] = self;
    [UIView animateWithDuration:v43 animations:0.5];
  }

LABEL_16:
  [(PHAudioCallViewController *)self hideOrShowThirdPartyBackgroundImageWithImage:v6];
}

- (void)hideOrShowThirdPartyBackgroundImageWithImage:(id)a3
{
  v24 = a3;
  if (!-[CNKFeatures isEnhancedEmergencyEnabled](self->_features, "isEnhancedEmergencyEnabled") || (-[PHAudioCallViewController frontmostCall](self, "frontmostCall"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isEmergency], v4, (v5 & 1) == 0))
  {
    if ([(PHAudioCallViewController *)self shouldApplyNewGradientBlur]|| [(PHAudioCallViewController *)self shouldShowContactOrLastSeenWallpaper])
    {
      v6 = [(PHAudioCallViewController *)self unblurredBackgroundImageView];
      [v6 removeFromSuperview];

      [(PHAudioCallViewController *)self setUnblurredBackgroundImageView:0];
    }

    else
    {
      v7 = [(PHAudioCallViewController *)self unblurredBackgroundImageView];

      if (!v7)
      {
        v8 = objc_opt_new();
        [(PHAudioCallViewController *)self setUnblurredBackgroundImageView:v8];

        v9 = [(PHAudioCallViewController *)self view];
        [v9 frame];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v18 = [(PHAudioCallViewController *)self unblurredBackgroundImageView];
        [v18 setFrame:{v11, v13, v15, v17}];

        v19 = [(PHAudioCallViewController *)self unblurredBackgroundImageView];
        [v19 setContentMode:2];
      }

      v20 = [(PHAudioCallViewController *)self unblurredBackgroundImageView];
      [v20 setImage:v24];

      v21 = [(PHAudioCallViewController *)self view];
      v22 = [(PHAudioCallViewController *)self unblurredBackgroundImageView];
      v23 = [(PHAudioCallViewController *)self backgroundImageView];
      [v21 insertSubview:v22 above:v23];
    }
  }
}

- (id)fallbackHorizontalNameLabelString
{
  v3 = [(PHAudioCallViewController *)self callToUseForWallpaper];
  v4 = [(PHAudioCallViewController *)self associatedCallGroupForCall:v3];

  v5 = [(PHAudioCallViewController *)self callParticipantsViewController];
  v6 = [v5 nameForCallGroup:v4];

  return v6;
}

- (id)createContactFirstNameLabelViewModel
{
  v3 = [(PHAudioCallViewController *)self callToUseForWallpaper];
  v4 = [(PHAudioCallViewController *)self contactToDisplayInCallWallpaperForCall:v3];
  v5 = [v3 handle];
  v6 = [v5 value];
  v7 = [TPIncomingCallMetricsProvider appropriateCallerNameViewForContact:v4 callStatus:0 callIsActive:1 optionalBackupName:v6];

  [(PHAudioCallViewController *)self applyWallpaperTitleStyleAttributesToTextViewWrapper:v7];
  [v7 overrideTitleLayoutWith:0];
  v8 = [[PHPosterNameViewModel alloc] initWithCall:v3 posterNameTextView:v7];

  return v8;
}

- (void)applyWallpaperTitleStyleAttributesToTextViewWrapper:(id)a3
{
  v7 = a3;
  v4 = [(PHAudioCallViewController *)self wallpaperTitleStyleAttributes];
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
  v3 = [(PHAudioCallViewController *)self keypadPosterNameViewModel];

  if (v3)
  {

    [(PHAudioCallViewController *)self setKeypadPosterNameViewModel:0];
  }
}

- (void)hideFirstNameLabelOnKeypad
{
  v3 = [(PHAudioCallViewController *)self keypadPosterNameViewModel];

  if (v3)
  {
    v4 = [(PHAudioCallViewController *)self keypadPosterNameViewModel];
    [v4 updatePosterNameAlpha:0.0];
  }
}

- (void)showFirstNameLabelOnKeypad
{
  v3 = [(PHAudioCallViewController *)self keypadPosterNameViewModel];

  if (v3)
  {
    v4 = [(PHAudioCallViewController *)self keypadPosterNameViewModel];
    [v4 updatePosterNameAlpha:1.0];
  }
}

- (id)createBlurryBackgroundView
{
  v3 = +[UIColorEffect inCallControls];
  v4 = [UIBlurEffect effectWithBlurRadius:50.0];
  v5 = [[UIVisualEffectView alloc] initWithEffect:0];
  v6 = [(PHAudioCallViewController *)self view];
  [v6 frame];
  [v5 setFrame:?];

  v7 = [(PHAudioCallViewController *)self renderingViewController];
  if (v7)
  {

LABEL_3:
    v18 = v4;
    v19 = v3;
    v8 = &v18;
    v9 = 2;
    goto LABEL_7;
  }

  v10 = [(PHAudioCallViewController *)self backgroundImageView];
  if (v10)
  {
    v11 = v10;
    v12 = [(PHAudioCallViewController *)self backgroundImageView];
    [v12 alpha];
    v14 = v13;

    if (v14 != 0.0)
    {
      goto LABEL_3;
    }
  }

  v17 = v4;
  v8 = &v17;
  v9 = 1;
LABEL_7:
  v15 = [NSArray arrayWithObjects:v8 count:v9, v17, v18, v19];
  [v5 setBackgroundEffects:v15];

  return v5;
}

- (void)hideOrShowKeypadBackgroundView
{
  v3 = [(PHAudioCallViewController *)self features];
  v4 = [v3 isDialPadEnabled];

  if (!v4)
  {
    return;
  }

  v5 = [(PHCallViewController *)self bottomBar];
  v6 = [v5 currentState];

  v7 = [(PHAudioCallViewController *)self translationBackgroundView];
  v8 = v7;
  if (v6 != 19)
  {
    v20 = [v7 superview];

    if (v20)
    {
      v21 = [(PHAudioCallViewController *)self translationBackgroundView];
      [v21 setAlpha:1.0];

      [(PHAudioCallViewController *)self updateTranslationPosterName:1];
    }

    [(PHAudioCallViewController *)self removeFirstNameLabelFromViewIfNeeded];
    v22 = [(PHAudioCallViewController *)self keypadBackgroundView];

    if (v22)
    {
      v23 = [(PHAudioCallViewController *)self keypadBackgroundView];
      [v23 removeFromSuperview];

      [(PHAudioCallViewController *)self setKeypadBackgroundView:0];
    }

    v24 = [(PHAudioCallViewController *)self emergencyTextViaSatelliteLabel];

    if (!v24)
    {
      goto LABEL_28;
    }

    v25 = [(PHAudioCallViewController *)self shouldPresentAlertButton];
    goto LABEL_27;
  }

  [v7 setAlpha:0.0];

  v9 = [(PHAudioCallViewController *)self keypadBackgroundView];

  if (!v9)
  {
    [(PHAudioCallViewController *)self setHasKeypadUpdated:0];
    v10 = [(PHAudioCallViewController *)self createBlurryBackgroundView];
    v11 = [(PHAudioCallViewController *)self renderingViewController];

    if (v11)
    {
      v12 = [(PHAudioCallViewController *)self view];
      v13 = [(PHAudioCallViewController *)self posterContainer];
      [v12 insertSubview:v10 above:v13];

      v14 = [(PHAudioCallViewController *)self createContactFirstNameLabelViewModel];
      [(PHAudioCallViewController *)self setKeypadPosterNameViewModel:v14];

      v15 = [(PHAudioCallViewController *)self keypadPosterNameViewModel];
      v16 = [v15 posterNameTextView];
      v17 = [v10 contentView];
      [TPIncomingCallMetricsProvider addCallerNameView:v16 toContainerView:v17];

      v18 = +[TUCallCenter sharedInstance];
      v19 = [v18 currentCallCount];

      if (v19 >= 2)
      {
        [(PHAudioCallViewController *)self hideFirstNameLabelOnKeypad];
      }
    }

    else
    {
      v26 = [(PHAudioCallViewController *)self defaultBackgroundGradientView];

      if (v26)
      {
        v27 = [(PHAudioCallViewController *)self view];
        v28 = [(PHAudioCallViewController *)self defaultBackgroundGradientView];
        [v27 insertSubview:v10 above:v28];
      }
    }

    [(PHAudioCallViewController *)self setKeypadBackgroundView:v10];
    v29 = [(PHAudioCallViewController *)self callToUseForWallpaper];
    v30 = v29;
    if (v29 && [v29 status] == 1)
    {
      memset(&v46, 0, sizeof(v46));
      CGAffineTransformMakeScale(&v46, 1.03, 1.03);
      v45 = v46;
      v31 = [(PHAudioCallViewController *)self keypadBackgroundView];
      v44 = v45;
      [v31 setTransform:&v44];
    }

    v32 = [(PHAudioCallViewController *)self renderingViewController];
    if (v32)
    {
    }

    else
    {
      v36 = [(PHAudioCallViewController *)self backgroundImageView];
      if (!v36 || (v37 = v36, -[PHAudioCallViewController backgroundImageView](self, "backgroundImageView"), v38 = objc_claimAutoreleasedReturnValue(), [v38 alpha], v40 = v39, v38, v37, v40 == 0.0))
      {
        v33 = +[UIColorEffect inCallControlsButtonNoPhotoNoAvatar];
        v34 = [UIBlurEffect effectWithBlurRadius:30.0];
        v35 = [(PHAudioCallViewController *)self keypadViewController];
        v47[0] = v33;
        v47[1] = v34;
        v41 = [NSArray arrayWithObjects:v47 count:2];
        [v35 updateKeypadButtonBackgroundMaterial:v41];

        goto LABEL_24;
      }
    }

    v33 = +[UIColorEffect inCallControlsKeypadButton];
    v34 = [(PHAudioCallViewController *)self keypadViewController];
    v48 = v33;
    v35 = [NSArray arrayWithObjects:&v48 count:1];
    [v34 updateKeypadButtonBackgroundMaterial:v35];
LABEL_24:
  }

  v42 = [(PHAudioCallViewController *)self emergencyTextViaSatelliteLabel];

  if (v42)
  {
    v25 = ([(PHAudioCallViewController *)self shouldPresentAlertButton]^ 1);
LABEL_27:
    v43 = [(PHAudioCallViewController *)self emergencyTextViaSatelliteLabel];
    [v43 setAlpha:v25];
  }

LABEL_28:
  [(PHAudioCallViewController *)self _updateStatusLabelVisibility];
  if ([(CNKFeatures *)self->_features isEnhancedEmergencyEnabled])
  {
    [(PHAudioCallViewController *)self removeEnhancedEmergencyIntermittentStateLabel];
  }

  [(PHAudioCallViewController *)self updateDimmingView];
}

- (void)createDetachedPosterNameViewModel:(id)a3
{
  v33 = a3;
  v4 = [(PHAudioCallViewController *)self detachedPosterNameViewModel];

  if (!v4)
  {
    v5 = [(PHAudioCallViewController *)self getParticipantsView_NotWaiting];
    v6 = [(PHAudioCallViewController *)self createContactFirstNameLabelViewModel];
    [(PHAudioCallViewController *)self setDetachedPosterNameViewModel:v6];

    v7 = [(PHAudioCallViewController *)self detachedPosterNameViewModel];
    [v7 updatePosterNameAlpha:0.0];

    v8 = [(PHAudioCallViewController *)self detachedPosterNameViewModel];
    [v8 updateStatusFromParticipantsView:v5];

    v9 = [(PHAudioCallViewController *)self detachedPosterNameViewModel];
    v10 = [v9 posterNameTextView];
    [TPIncomingCallMetricsProvider addCallerNameView:v10 toContainerView:v33];

    v11 = [(PHAudioCallViewController *)self detachedPosterNameViewModel];
    v12 = [v11 posterNameTextView];
    v13 = [v12 displayNameText];

    v14 = [(PHAudioCallViewController *)self detachedPosterNameViewModel];
    v15 = [v14 posterNameTextView];
    [(PHAudioCallViewController *)self applyWallpaperTitleStyleAttributesToTextViewWrapper:v15];

    v16 = [(PHAudioCallViewController *)self detachedPosterNameViewModel];
    v17 = [v16 posterNameTextView];
    v18 = [v17 displayNameText];
    v19 = [v18 length];

    if (!v19)
    {
      v20 = [(PHAudioCallViewController *)self detachedPosterNameViewModel];
      v21 = [v20 posterNameTextView];
      [v21 setDisplayNameText:v13];
    }

    v22 = [(PHAudioCallViewController *)self translationLayoutGuide];
    if (v22)
    {
      v23 = v22;
      v24 = [(PHAudioCallViewController *)self detachedPosterNameViewModel];

      if (v24)
      {
        v25 = [(PHAudioCallViewController *)self translationLayoutGuide];
        v26 = [v25 topAnchor];
        v27 = [(PHAudioCallViewController *)self detachedPosterNameViewModel];
        v28 = [v27 posterNameTextView];
        v29 = [v28 viewController];
        v30 = [v29 view];
        v31 = [v30 bottomAnchor];
        v32 = [v26 constraintEqualToAnchor:v31];
        [v32 setActive:1];
      }
    }
  }
}

- (void)removeDefaultBackgroundGradientView
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SNAP: Removing default backgroundGradientView", v8, 2u);
  }

  if ([(PHAudioCallViewController *)self shouldUseHeroImageLayout])
  {
    goto LABEL_4;
  }

  v5 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v5 callDisplayStyle] == 3)
  {
    v6 = [(PHAudioCallViewController *)self features];
    v7 = [v6 isDominoEnabled];

    if (v7)
    {
LABEL_4:
      v4 = [(PHAudioCallViewController *)self defaultBackgroundGradientView];
      [v4 removeFromSuperview];

      [(PHAudioCallViewController *)self setDefaultBackgroundGradientView:0];
    }
  }

  else
  {
  }
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
  v4 = [(PHAudioCallViewController *)self posterNameViewModel];

  if (v4)
  {
    v5 = [(PHAudioCallViewController *)self posterNameViewModel];
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
  v5 = [(PHAudioCallViewController *)self view];
  [v5 frame];
  [v4 setFrame:?];

  v6 = [(PHAudioCallViewController *)self view];
  v7 = [(PHAudioCallViewController *)self buttonsViewController];
  v8 = [v7 view];
  [v6 insertSubview:v4 below:v8];

  v9 = [(PHAudioCallViewController *)self view];
  v10 = [(PHAudioCallViewController *)self callDetailsViewButton];
  [v9 bringSubviewToFront:v10];

  v11 = [(PHAudioCallViewController *)self view];
  v12 = [(PHAudioCallViewController *)self posterBadgeView];
  [v11 bringSubviewToFront:v12];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001204CC;
  v17[3] = &unk_100357110;
  v18 = v4;
  v19 = v3;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100120554;
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
  v7 = [(PHAudioCallViewController *)self renderingViewController];
  [(PHAudioCallViewController *)self setRenderingViewController:0];
  [(PHAudioCallViewController *)self setPosterNameViewModel:0];
  if (v7)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001207D0;
    v11[3] = &unk_100357C78;
    v12 = v7;
    v13 = self;
    v14 = v6;
    v8 = objc_retainBlock(v11);
    v9 = v8;
    if (v4)
    {
      [(PHAudioCallViewController *)self showPosterBlurTransition];
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
    [(PHAudioCallViewController *)self setParticipantsViewShouldShowParticipantLabel:1];
    if (v6)
    {
      v6[2](v6);
    }
  }
}

- (void)transitionToNewPoster:(id)a3 showingPosterTransition:(BOOL)a4 shouldBlurPoster:(BOOL)a5 completion:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  v12 = [(PHAudioCallViewController *)self renderingViewController];
  [(PHAudioCallViewController *)self setRenderingViewController:v10];
  [(PHAudioCallViewController *)self addChildViewController:v10];
  v13 = [v10 view];
  [(PHAudioCallViewController *)self insertBelowDimmingLayerWithNewView:v13 containerView:self->_posterContainer];

  v14 = sub_100004F84();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (!v12)
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "SNAP: Going to set up a new poster, there isn't an old one", buf, 2u);
    }

    if (v8 && ([(PHAudioCallViewController *)self backgroundImageView], v29 = objc_claimAutoreleasedReturnValue(), v29, !v29))
    {
      v46 = [(PHAudioCallViewController *)self defaultBackgroundGradientView];

      if (!v46)
      {
        v30 = sub_100004F84();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "SNAP: Going to set up a new poster, but there is no backgroundImageView or defaultBackgroundGradientView", buf, 2u);
        }

        goto LABEL_12;
      }

      v30 = [(PHAudioCallViewController *)self view];
      posterContainer = self->_posterContainer;
      v32 = [(PHAudioCallViewController *)self defaultBackgroundGradientView];
    }

    else
    {
      v30 = [(PHAudioCallViewController *)self view];
      posterContainer = self->_posterContainer;
      v32 = [(PHAudioCallViewController *)self backgroundImageView];
    }

    v33 = v32;
    [v30 insertSubview:posterContainer above:v32];

LABEL_12:
    [(PHAudioCallViewController *)self hideOrShowScreeningBackgroundView];
    goto LABEL_20;
  }

  if (v15)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "SNAP: Going to swap old and new poster", buf, 2u);
  }

  v16 = [(PHAudioCallViewController *)self screeningBackgroundView];

  if (v16)
  {
    [(UIView *)self->_posterContainer frame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = [(PHAudioCallViewController *)self screeningBackgroundView];
    [v25 setFrame:{v18, v20, v22, v24}];

    v26 = [(PHAudioCallViewController *)self view];
    v27 = self->_posterContainer;
    v28 = [(PHAudioCallViewController *)self screeningBackgroundView];
    [v26 insertSubview:v27 below:v28];
  }

  else
  {
    v34 = [(PHAudioCallViewController *)self backgroundImageView];

    if (v34)
    {
      v26 = [(PHAudioCallViewController *)self view];
      v35 = self->_posterContainer;
      v36 = [(PHAudioCallViewController *)self backgroundImageView];
    }

    else
    {
      v37 = [(PHAudioCallViewController *)self defaultBackgroundGradientView];

      if (!v37)
      {
        v26 = sub_100004F84();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_100257140();
        }

        goto LABEL_19;
      }

      v26 = [(PHAudioCallViewController *)self view];
      v35 = self->_posterContainer;
      v36 = [(PHAudioCallViewController *)self defaultBackgroundGradientView];
    }

    v28 = v36;
    [v26 insertSubview:v35 above:v36];
  }

LABEL_19:
LABEL_20:
  [v10 didMoveToParentViewController:self];
  v47 = _NSConcreteStackBlock;
  v48 = 3221225472;
  v49 = sub_100120E80;
  v50 = &unk_100359C58;
  v56 = a5;
  v51 = self;
  v38 = v10;
  v52 = v38;
  v39 = v12;
  v53 = v39;
  v55 = 0x3FE0000000000000;
  v40 = v11;
  v54 = v40;
  v41 = objc_retainBlock(&v47);
  v42 = v41;
  if (v8)
  {
    [(PHAudioCallViewController *)self showPosterBlurTransition:v47];
    v43 = dispatch_time(0, 0);
    dispatch_after(v43, &_dispatch_main_q, v42);
  }

  else
  {
    (v41[2])(v41);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = [(PHAudioCallViewController *)self buttonsViewController:v47];
      v45 = [v44 view];

      [v45 updateBackgroundMaterial:0];
    }

    [(PHAudioCallViewController *)self updateCallRecordingViewBackgroundMaterialType:0, v47, v48, v49, v50, v51];
    [(PHAudioCallViewController *)self updateDimmingView];
    [(PHAudioCallViewController *)self updateSaliencyRectIfNeeded];
  }
}

- (void)setupNameLabelForAlwaysOnDisplay
{
  [(PHAudioCallViewController *)self removeNameLabelForAlwaysOnDisplay];
  [(PHAudioCallViewController *)self setupDimmingViewForAlwaysOnDisplay];
  v3 = [(PHAudioCallViewController *)self createContactFirstNameLabelViewModel];
  [(PHAudioCallViewController *)self setAlwaysOnDisplayPosterNameViewModel:v3];

  v6 = [(PHAudioCallViewController *)self alwaysOnDisplayPosterNameViewModel];
  v4 = [v6 posterNameTextView];
  v5 = [(PHAudioCallViewController *)self alwaysOnDisplayDimmingView];
  [TPIncomingCallMetricsProvider addCallerNameView:v4 toContainerView:v5];
}

- (void)setupDimmingViewForAlwaysOnDisplay
{
  v3 = [(PHAudioCallViewController *)self alwaysOnDisplayDimmingView];

  if (!v3)
  {
    v4 = [UIView alloc];
    v5 = [(PHAudioCallViewController *)self view];
    [v5 frame];
    v10 = [v4 initWithFrame:?];

    v6 = +[UIColor blackColor];
    v7 = [v6 colorWithAlphaComponent:0.75];
    [v10 setBackgroundColor:v7];

    v8 = [(PHAudioCallViewController *)self view];
    [v8 addSubview:v10];

    [(PHAudioCallViewController *)self setAlwaysOnDisplayDimmingView:v10];
    v9 = [(PHAudioCallViewController *)self alwaysOnDisplayDimmingView];
    [v9 setAlpha:0.0];
  }
}

- (id)snapshotUIImageView
{
  v3 = [UIImageView alloc];
  v4 = [(PHAudioCallViewController *)self backgroundImageView];
  v5 = [v4 image];
  v6 = [v3 initWithImage:v5];

  v7 = [(PHAudioCallViewController *)self view];
  [v7 frame];
  [v6 setFrame:?];

  v8 = objc_alloc_init(UIVisualEffectView);
  v9 = [UIBlurEffect effectWithBlurRadius:100.0];
  v18 = v9;
  v10 = [NSArray arrayWithObjects:&v18 count:1];
  [v8 setBackgroundEffects:v10];

  v11 = [(PHAudioCallViewController *)self view];
  [v11 frame];
  [v8 setFrame:?];

  [v6 addSubview:v8];
  v12 = +[CALayer layer];
  v13 = [CAFilter filterWithType:kCAFilterPlusD];
  [v12 setCompositingFilter:v13];

  v14 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.150000006];
  [v12 setBackgroundColor:{objc_msgSend(v14, "CGColor")}];

  v15 = [(PHAudioCallViewController *)self view];
  [v15 frame];
  [v12 setFrame:?];

  v16 = [v8 layer];
  [v16 addSublayer:v12];

  return v6;
}

- (void)viewSafeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = PHAudioCallViewController;
  [(PHAudioCallViewController *)&v4 viewSafeAreaInsetsDidChange];
  [(PHAudioCallViewController *)self _updateStatusLabelVisibility];
  v3 = [(PHAudioCallViewController *)self renderingViewController];

  if (v3)
  {
    [(PHAudioCallViewController *)self setupNameLabelForAlwaysOnDisplay];
  }
}

- (void)lockScreenVisibilityDidChange:(id)a3
{
  v4 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v4 callDisplayStyle] == 3)
  {
    v5 = [(PHAudioCallViewController *)self features];
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
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Lock screen visibility did change, refreshing UI", v19, 2u);
  }

  [(PHAudioCallViewController *)self setCallForBackgroundImage:0];
  v8 = [(PHAudioCallViewController *)self callToUseForWallpaper];
  [(PHAudioCallViewController *)self setCallForBackgroundImage:v8 animated:1 callDisplayStyleChanged:0];

  [(PHAudioCallViewController *)self updateCallParticipantsViewControllerCallGroups];
  v9 = [(PHAudioCallViewController *)self getParticipantsView_NotWaiting];
  v10 = [v9 singleCallLabelView];
  [v10 updateLabelsOrderAndLayout];
  v11 = [(PHAudioCallViewController *)self middleViewState];
  [(PHAudioCallViewController *)self setMiddleViewState:0];
  screeningViewController = self->_screeningViewController;
  self->_screeningViewController = 0;

  v13 = [(PHAudioCallViewController *)self featureFlags];
  v14 = [v13 receptionistEnabled];

  if (v14)
  {
    [(PHAudioCallViewController *)self setIsShowingNewTranscriptsView:0];
  }

  [(PHAudioCallViewController *)self setMiddleViewState:v11];
  v15 = [(PHCallViewController *)self bottomBar];
  v16 = [v15 currentState];

  v17 = [(PHCallViewController *)self bottomBar];
  [v17 setCurrentState:-1];

  v18 = [(PHCallViewController *)self bottomBar];
  [v18 setCurrentState:v16];
}

- (unint64_t)currentDisplayedPosterSourceForCall:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueProxyIdentifier];

  if (v5)
  {
    v6 = [(PHAudioCallViewController *)self configurationCache];
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

- (void)suspendPosterAndCancelDelay:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHAudioCallViewController *)self renderingViewController];

  if (v5)
  {
    v6 = [(PHAudioCallViewController *)self renderingViewController];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      if (v3)
      {
        v8 = [(PHAudioCallViewController *)self suspendPosterAfterDelayBlock];

        if (v8)
        {
          v9 = [(PHAudioCallViewController *)self suspendPosterAfterDelayBlock];
          dispatch_block_cancel(v9);

          [(PHAudioCallViewController *)self setSuspendPosterAfterDelayBlock:0];
        }
      }

      v10 = [(PHAudioCallViewController *)self renderingViewController];
      v11 = [v10 renderingMode];

      if (v11 == 2)
      {
        v12 = sub_100004F84();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SNAP: Setting poster renderingMode to .paused", v14, 2u);
        }

        v13 = [(PHAudioCallViewController *)self renderingViewController];
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

    v5 = [PHCallParticipantsViewController alloc];
    v6 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    v7 = [(PHAudioCallViewController *)self contactsCache];
    v8 = [(PHCallParticipantsViewController *)v5 initWithCallDisplayStyleManager:v6 contactsCache:v7];
    v9 = self->_callWaitingParticipantsViewController;
    self->_callWaitingParticipantsViewController = v8;

    [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController setShouldIgnoreUpdates:[(PHAudioCallViewController *)self participantsViewControllersShouldIgnoreUpdates]];
    [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController setHandlesCallWaitingCalls:1];
    [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController setDelegate:self];
    [(PHAudioCallViewController *)self addChildViewController:self->_callWaitingParticipantsViewController];
    v10 = [(PHAudioCallViewController *)self view];
    v11 = [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController view];
    [v10 addSubview:v11];

    v12 = [(PHCallParticipantsViewController *)self->_callParticipantsViewController view];
    v13 = [v12 singleCallLabelView];
    [v13 setPosterNameViewModel:0];

    v14 = [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController view];
    [(PHAudioCallViewController *)self updatePosterViewModelForParticipantsView:v14];
    v15 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([v15 callDisplayStyle] == 3)
    {
      v16 = [(PHAudioCallViewController *)self features];
      v17 = [v16 isDominoEnabled];

      if (v17)
      {
        v18 = [(PHAudioCallViewController *)self view];
        v19 = [(PHCallViewController *)self bottomBar];
        [v18 bringSubviewToFront:v19];

        v20 = [(PHAudioCallViewController *)self view];
        v21 = [(PHAudioCallViewController *)self ambientAudioRoutesControlView];
        [v20 bringSubviewToFront:v21];

        [(PHAudioCallViewController *)self setUpLayoutGuidesForParticipantsViewController:self->_callWaitingParticipantsViewController];
        [(PHAudioCallViewController *)self applyCallWaitingConstraintsForAmbient];
        [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController updateCallGroups];
        [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController setShouldIgnoreUpdates:1];
LABEL_10:
        v27 = [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController view];
        [v27 setAlpha:0.0];

        v28 = [(PHCallParticipantsViewController *)self->_callParticipantsViewController view];
        [v28 setAlpha:1.0];

        [(PHAudioCallViewController *)self callWaitingAnimationDelay];
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_10012225C;
        v36[3] = &unk_100356988;
        v36[4] = self;
        [UIView animateWithDuration:0 delay:v36 options:0 animations:0.5 completion:v29];
        goto LABEL_11;
      }
    }

    else
    {
    }

    [(PHAudioCallViewController *)self copyCallWaitingConstraintsFromParticipantsView];
    goto LABEL_10;
  }

  if (!callWaitingParticipantsViewController)
  {
    return;
  }

  v22 = callWaitingParticipantsViewController;
  v23 = [(PHCallParticipantsViewController *)v22 view];
  [v23 setAlpha:1.0];

  v24 = [(PHCallParticipantsViewController *)self->_callParticipantsViewController view];
  [v24 setAlpha:0.0];

  v12 = [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController view];
  v25 = [v12 singleCallLabelView];
  [v25 setPosterNameViewModel:0];

  v14 = [(PHCallParticipantsViewController *)self->_callParticipantsViewController view];
  [(PHAudioCallViewController *)self updatePosterViewModelForParticipantsView:v14];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1001222E4;
  v33[3] = &unk_100357110;
  v34 = v22;
  v35 = self;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100122360;
  v30[3] = &unk_100356D10;
  v31 = v34;
  v32 = self;
  v26 = v34;
  [UIView animateWithDuration:v33 animations:v30 completion:0.5];

LABEL_11:
}

- (double)callWaitingAnimationDelay
{
  v2 = [(PHAudioCallViewController *)self callDisplayStyleManager];
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
  v3 = [(PHAudioCallViewController *)self callCenter];
  if ([v3 currentVideoCallCount])
  {

LABEL_8:
    v11 = 9;
    goto LABEL_9;
  }

  v4 = [(PHAudioCallViewController *)self callCenter];
  v5 = [v4 isHoldAndAnswerAllowed];

  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [(PHAudioCallViewController *)self callCenter];
  v7 = [v6 callWithStatus:2];
  if (v7)
  {
    v8 = v7;
    v9 = [(PHAudioCallViewController *)self callCenter];
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
  v3 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v3 callDisplayStyle] == 3)
  {
    v4 = [(PHAudioCallViewController *)self features];
    v5 = [v4 isDominoEnabled];

    if (v5)
    {
      return;
    }
  }

  else
  {
  }

  v6 = [(PHAudioCallViewController *)self getParticipantsView_Waiting];
  v7 = [(PHAudioCallViewController *)self getParticipantsView_NotWaiting];
  if (v6)
  {
    v8 = [v6 superview];

    if (v8)
    {
      if (v7)
      {
        [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
        v9 = [(PHAudioCallViewController *)self callWaitingLayoutConstraints];
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
        [(PHAudioCallViewController *)self setCallWaitingLayoutConstraints:v16];

        v17 = [(PHAudioCallViewController *)self callWaitingLayoutConstraints];
        [NSLayoutConstraint activateConstraints:v17];
      }
    }
  }
}

- (void)applyCallWaitingConstraintsForAmbient
{
  v3 = [(PHAudioCallViewController *)self getParticipantsView_Waiting];
  if (v3)
  {
    v10 = v3;
    v4 = [v3 superview];
    v3 = v10;
    if (v4)
    {
      v5 = [(PHAudioCallViewController *)self callDisplayStyleManager];
      if ([v5 callDisplayStyle] == 3)
      {
        v6 = [(PHAudioCallViewController *)self features];
        v7 = [v6 isDominoEnabled];

        v3 = v10;
        if (!v7)
        {
          goto LABEL_7;
        }

        v8 = [(PHCallParticipantsViewController *)self->_callWaitingParticipantsViewController view];
        [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

        v4 = [(PHAudioCallViewController *)self ambientParticipantsViewConstraintsForView:v10 largeAvatar:self->_shouldShowLargeAvatarForCallWaiting];
        v9 = [v4 allValues];
        [(PHAudioCallViewController *)self setCallWaitingLayoutConstraints:v9];

        v5 = [(PHAudioCallViewController *)self callWaitingLayoutConstraints];
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
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController: Requested keypad presentation", v9, 2u);
  }

  v5 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v5 callDisplayStyle] == 3)
  {
    v6 = [(PHAudioCallViewController *)self features];
    v7 = [v6 isDominoEnabled];

    if (v7)
    {
      v8 = +[NSURL showKeypadURL];
      TUUnlockAndOpenURL();

      return;
    }
  }

  else
  {
  }

  [(PHAudioCallViewController *)self setMiddleViewState:2 animated:1];
}

- (void)audioCallControlsViewControllerRequestedKeypadPresentationForFieldMode:(id)a3
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController: Requested keypad presentation for field mode", v6, 2u);
  }

  [(PHAudioCallViewController *)self setMiddleViewState:2 animated:1];
  v5 = [(PHAudioCallViewController *)self callParticipantsViewController];
  [v5 setAllowsFieldModeSendButton:1];
}

- (void)audioCallControlsViewControllerRequestedContactsPresentation:(id)a3 forView:(id)a4
{
  v5 = a4;
  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController: Requested Contacts presentation", buf, 2u);
  }

  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100122CA0;
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController: Requested Add Call presentation", buf, 2u);
  }

  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100122E3C;
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
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController: Requested Audio Route presentation", v5, 2u);
  }

  [(PHAudioCallViewController *)self revealAudioRoutingDeviceListAnimated:1];
}

- (void)audioCallControlsViewControllerRequestedVideoPresentation:(id)a3
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController: Requested Video presentation", buf, 2u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012302C;
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
  [v4 invokeAlertWithRequestUnlock:-[PHAudioCallViewController alertTriggeredByAutoCountdown](self automaticallyInvoked:{"alertTriggeredByAutoCountdown") ^ 1, -[PHAudioCallViewController alertTriggeredByAutoCountdown](self, "alertTriggeredByAutoCountdown")}];
}

- (void)audioCallControlsViewControllerDidTapVideoStreamingButton
{
  v3 = [(PHAudioCallViewController *)self features];
  v4 = [v3 isEnhancedEmergencyEnabled];

  if (v4)
  {
    [(PHAudioCallViewController *)self removeEnhancedEmergencyIntermittentStateLabel];
    v5 = [(PHAudioCallViewController *)self emergencyCoordinator];
    [v5 handleVideoStreamingButtonTapped];

    v6 = [(PHAudioCallViewController *)self emergencyCoordinator];
    v7 = [v6 videoStreamingIsOnScreen];

    if (v7)
    {
      v8 = [(PHAudioCallViewController *)self buttonsViewController];
      v11 = [v8 view];

      [v11 changeVideoStreamingButtonTitleWithIsSharing:1];
      v9 = [(PHAudioCallViewController *)self emergencyCoordinator];
      v10 = [v9 videoStreamingRequestHasBeenAccepted];

      if (v10)
      {
        [(PHAudioCallViewController *)self addEnhancedEmergencyIntermittentStateLabelWithState:1];
      }
    }

    else
    {

      [(PHAudioCallViewController *)self requestToAddResumeCameraLabel];
    }
  }
}

- (void)audioCallControlsViewControllerRequestedShareMedia
{
  v3 = [(PHAudioCallViewController *)self features];
  v4 = [v3 isEnhancedEmergencyEnabled];

  if (v4)
  {
    v5 = [(PHAudioCallViewController *)self emergencyCoordinator];
    [v5 handleMediaUploadButtonTapped];
  }
}

- (void)audioCallControlsViewControllerDidTapRTTButton
{
  v3 = [(PHAudioCallViewController *)self features];
  if ([v3 isEnhancedEmergencyEnabled] && (-[PHAudioCallViewController emergencyCoordinator](self, "emergencyCoordinator"), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [(PHAudioCallViewController *)self emergencyCoordinator];
    v7 = [v6 eedRTTState];

    if (v7 == 3)
    {
      v12 = [(PHAudioCallViewController *)self emergencyCoordinator];
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
  v10 = [(PHAudioCallViewController *)self activeCall];
  v12 = [v9 viewControllerForCall:v10];

  v11 = [(PHAudioCallViewController *)self navigationController];
  [v11 pushViewController:v12 animated:1];

LABEL_8:
}

- (void)audioCallControlsViewControllerRequestedMoreMenuFromSourceView:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController: requested more menu presentation", buf, 2u);
  }

  objc_initWeak(buf, self);
  v6 = +[UIApplication sharedApplication];
  v7 = [v6 delegate];
  v8 = [v7 bannerPresentationManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10012377C;
  v10[3] = &unk_100357E78;
  objc_copyWeak(&v12, buf);
  v9 = v4;
  v11 = v9;
  [(PHAudioCallViewController *)self presentMoreMenu:v8 source:v9 alongsideTransition:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (void)audioCallControlsViewControllerRequestedShareCardFromSourceView:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController: requested share card presentation", v9, 2u);
  }

  v6 = +[UIApplication sharedApplication];
  v7 = [v6 delegate];
  v8 = [v7 bannerPresentationManager];
  [(PHAudioCallViewController *)self presentShareCard:v8 source:v4];
}

- (BOOL)videoStreamingIsGoingOn
{
  v3 = [(PHAudioCallViewController *)self features];
  if ([v3 isEnhancedEmergencyEnabled])
  {
    v4 = [(PHAudioCallViewController *)self emergencyCoordinator];
    if (v4)
    {
      v5 = [(PHAudioCallViewController *)self emergencyCoordinator];
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
  if ([(PHAudioCallViewController *)self audioCallMutedTalkerIsSupported])
  {
    if (!v3)
    {
      [(PHAudioCallViewController *)self setDidNotifyMutedCaller:0];
    }

    v5 = [(PHAudioCallViewController *)self mutedTalkerBannerViewController];
    [v5 updatePillViewWithIsMuted:v3];
  }
}

- (void)audioCallControlsViewControllerDidTapEndButton:(id)a3
{
  if ([(PHCallViewController *)self currentState]== 10)
  {

    [(PHAudioCallViewController *)self handleCancelPressedInCallBufferScreen];
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

    v7 = [v11 canDisplayAlertUI:{-[PHAudioCallViewController shouldPresentAlertButton](self, "shouldPresentAlertButton")}];
    if (v6 && v7)
    {
      [(PHAudioCallViewController *)self setCurrentState:0];
    }

    else
    {
      v8 = [(PHAudioCallViewController *)self activeCall];
      v9 = [v8 callUUID];
      [(PHAudioCallViewController *)self setUUIDForLocallyDisconnectedCall:v9];

      v10 = [(PHAudioCallViewController *)self callCenter];
      [v10 disconnectCurrentCall];
    }
  }
}

- (void)localAudioToggledWithIsMuted:(BOOL)a3
{
  v3 = a3;
  if ([(PHAudioCallViewController *)self audioCallMutedTalkerIsSupported])
  {
    if (!v3)
    {
      [(PHAudioCallViewController *)self setDidNotifyMutedCaller:0];
    }

    v5 = [(PHAudioCallViewController *)self mutedTalkerBannerViewController];
    [v5 updatePillViewWithIsMuted:v3];
  }
}

- (void)audioCallVoiceLoopViewControllerRequestedButtonPresentation
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController: Voice loop controller requested button presentation", v5, 2u);
  }

  v4 = [(PHAudioCallViewController *)self voiceLoopManager];
  [v4 stopLoopPlayback];
}

- (void)setMiddleViewState:(unsigned __int16)a3 animated:(BOOL)a4 completion:(id)a5
{
  v490 = a4;
  v5 = a3;
  v7 = a5;
  v8 = sub_100004F84();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.a) = 67109120;
    HIDWORD(buf.a) = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setMiddleViewState: %d", &buf, 8u);
  }

  v9 = sub_100004F84();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(PHAudioCallViewController *)self buttonsViewController];
    v11 = [v10 view];
    [(PHAudioCallViewController *)self buttonsViewController];
    v12 = v484 = v5;
    v13 = [v12 view];
    [v13 alpha];
    v15 = v14;
    v16 = [(PHAudioCallViewController *)self buttonsViewController];
    [v16 view];
    v18 = v17 = self;
    v19 = [v18 superview];
    LODWORD(buf.a) = 138412802;
    *(&buf.a + 4) = v11;
    WORD2(buf.b) = 2048;
    *(&buf.b + 6) = v15;
    HIWORD(buf.c) = 2112;
    *&buf.d = v19;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "current six-up is: %@, six-up view alpha is: %f, six-up view parent view is: %@", &buf, 0x20u);

    self = v17;
    v5 = v484;
  }

  v20 = [(PHAudioCallViewController *)self currentMiddleView];
  v574[0] = _NSConcreteStackBlock;
  v574[1] = 3221225472;
  v574[2] = sub_1001279A8;
  v574[3] = &unk_100357CA0;
  v21 = v7;
  v575 = v21;
  v22 = objc_retainBlock(v574);
  v23 = &_sScI4next7ElementQzSgyYaKFTj_ptr;
  if (+[PHUIConfiguration usesMiddleCenteringView])
  {
    v24 = [(PHAudioCallViewController *)self middleSizingView];

    if (!v24)
    {
      v25 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [(PHAudioCallViewController *)self setMiddleSizingView:v25];

      v26 = [(PHAudioCallViewController *)self middleSizingView];
      [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

      v27 = [(PHAudioCallViewController *)self view];
      v28 = [(PHAudioCallViewController *)self middleSizingView];
      [v27 addSubview:v28];

      v29 = [(PHAudioCallViewController *)self view];
      [(PHAudioCallViewController *)self middleSizingView];
      v30 = v485 = v22;
      [(PHAudioCallViewController *)self callParticipantsViewController];
      v32 = v31 = v21;
      [v32 view];
      v34 = v33 = v20;
      v35 = [NSLayoutConstraint constraintWithItem:v30 attribute:3 relatedBy:0 toItem:v34 attribute:4 multiplier:1.0 constant:0.0];
      [v29 addConstraint:v35];

      v36 = [(PHAudioCallViewController *)self view];
      v37 = [(PHAudioCallViewController *)self middleSizingView];
      v38 = [(PHCallViewController *)self bottomBar];
      v39 = [v38 mainButtonLayoutGuide];
      v40 = [NSLayoutConstraint constraintWithItem:v37 attribute:4 relatedBy:0 toItem:v39 attribute:3 multiplier:1.0 constant:0.0];
      [v36 addConstraint:v40];

      v20 = v33;
      v21 = v31;

      v41 = [(PHAudioCallViewController *)self view];
      v23 = &_sScI4next7ElementQzSgyYaKFTj_ptr;
      v42 = [(PHAudioCallViewController *)self middleSizingView];
      v43 = [NSLayoutConstraint constraintWithItem:v42 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
      [v41 addConstraint:v43];

      v22 = v485;
    }
  }

  if (self->_middleViewState == v5)
  {
    v44 = 0;
    v45 = 0;
    goto LABEL_238;
  }

  v46 = [(PHAudioCallViewController *)self frontmostCall];
  v47 = [v46 canDisplayAlertUI:{-[PHAudioCallViewController shouldPresentAlertButton](self, "shouldPresentAlertButton")}];
  v45 = 0;
  v483 = v46;
  if (v5 > 2)
  {
    v486 = v22;
    if (v5 == 3)
    {
      v111 = [(PHAudioCallViewController *)self voiceLoopViewController];
      v112 = [v111 view];
      v113 = [v112 superview];

      if (!v113)
      {
        v114 = [(PHAudioCallViewController *)self view];
        v115 = [(PHAudioCallViewController *)self voiceLoopViewController];
        v116 = [v115 view];
        [v114 addSubview:v116];

        v117 = [(PHAudioCallViewController *)self voiceLoopViewController];
        v118 = [v117 view];
        [v118 setTranslatesAutoresizingMaskIntoConstraints:0];

        v468 = [(PHAudioCallViewController *)self voiceLoopViewController];
        v465 = [v468 view];
        v459 = [v465 centerXAnchor];
        v462 = [(PHAudioCallViewController *)self view];
        v456 = [v462 centerXAnchor];
        v453 = [v459 constraintEqualToAnchor:v456];
        v580[0] = v453;
        v450 = [(PHAudioCallViewController *)self voiceLoopViewController];
        v447 = [v450 view];
        v441 = [v447 leadingAnchor];
        v444 = [(PHAudioCallViewController *)self view];
        v438 = [v444 leadingAnchor];
        v435 = [v441 constraintEqualToAnchor:v438];
        v580[1] = v435;
        v432 = [(PHAudioCallViewController *)self voiceLoopViewController];
        v429 = [v432 view];
        v421 = [v429 trailingAnchor];
        v424 = [(PHAudioCallViewController *)self view];
        v419 = [v424 trailingAnchor];
        v417 = [v421 constraintEqualToAnchor:v419];
        v580[2] = v417;
        v415 = [(PHAudioCallViewController *)self voiceLoopViewController];
        v413 = [v415 view];
        v411 = [v413 topAnchor];
        v412 = [(PHAudioCallViewController *)self callParticipantsViewController];
        v410 = [v412 view];
        v409 = [v410 bottomAnchor];
        v408 = [v411 constraintEqualToAnchor:v409];
        v580[3] = v408;
        v407 = [(PHAudioCallViewController *)self voiceLoopViewController];
        [v407 view];
        v120 = v119 = self;
        [v120 bottomAnchor];
        v121 = v474 = v20;
        [(PHCallViewController *)v119 bottomBar];
        v122 = v479 = v21;
        v123 = [v122 topLayoutGuide];
        v124 = [v123 topAnchor];
        v125 = [v121 constraintEqualToAnchor:v124];
        v580[4] = v125;
        [NSArray arrayWithObjects:v580 count:5];
        v127 = v126 = v5;
        [NSLayoutConstraint activateConstraints:v127];

        v5 = v126;
        v21 = v479;

        v20 = v474;
        self = v119;
      }

      v128 = [(PHAudioCallViewController *)self callParticipantsViewController];
      [v128 resetNameOverrideString];

      v129 = [(PHAudioCallViewController *)self callParticipantsViewController];
      v130 = [v129 view];
      [v130 setNeedsLayout];

      v131 = [(PHAudioCallViewController *)self callParticipantsViewController];
      v132 = [v131 view];
      [v132 layoutIfNeeded];

      v133 = [(PHAudioCallViewController *)self callDisplayStyleManager];
      v134 = [v133 callDisplayStyle] != 0;

      v135 = [(PHCallViewController *)self bottomBar];
      [v135 setCurrentState:11 animated:v134 animationCompletionBlock:0];

      v136 = [(PHAudioCallViewController *)self voiceLoopViewController];
      v45 = [v136 view];

      if (![(PHAudioCallViewController *)self middleViewState])
      {
        [v45 setAlpha:0.0];
        v532[0] = _NSConcreteStackBlock;
        v532[1] = 3221225472;
        v532[2] = sub_100128114;
        v532[3] = &unk_100356988;
        v45 = v45;
        v533 = v45;
        v164 = objc_retainBlock(v532);
        v165 = [(PHAudioCallViewController *)self callDisplayStyleManager];
        v166 = [v165 callDisplayStyle];

        if (v166)
        {
          v137 = self;
          v44 = objc_retainBlock(v164);
        }

        else
        {
          v207 = sub_100004F84();
          if (os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf.a) = 0;
            _os_log_impl(&_mh_execute_header, v207, OS_LOG_TYPE_DEFAULT, "The audio call UI is currently showing in a banner, animations on the middle view state will be queued up until we transition out of the banner.", &buf, 2u);
          }

          v137 = self;
          [(PHAudioCallViewController *)self setPendingMiddleViewAnimations:v164];
          v44 = 0;
        }

        v22 = v486;

        v139 = v533;
        goto LABEL_220;
      }

      if ([(PHAudioCallViewController *)self middleViewState]== 1)
      {
        v137 = self;
        [v45 setAlpha:0.0];
        v529[0] = _NSConcreteStackBlock;
        v529[1] = 3221225472;
        v529[2] = sub_100128120;
        v529[3] = &unk_100357110;
        v138 = v20;
        v530 = v138;
        v45 = v45;
        v531 = v45;
        v44 = objc_retainBlock(v529);
        v526[0] = _NSConcreteStackBlock;
        v526[1] = 3221225472;
        v526[2] = sub_100128164;
        v526[3] = &unk_100357E30;
        v527 = v138;
        v528 = v21;
        v22 = objc_retainBlock(v526);

        v139 = v530;
        goto LABEL_220;
      }

      v22 = v486;
      if ([(PHAudioCallViewController *)self middleViewState]!= 2)
      {
        goto LABEL_211;
      }

      v137 = self;
      v168 = [(PHAudioCallViewController *)self participantsViewTopConstraint];
      +[PHUIConfiguration yParticipantsViewAdjustmentForKeypad];
      v170 = v169;
      [v168 constant];
      [v168 setConstant:v170 + v171];

      CGAffineTransformMakeScale(&v525, 1.20000005, 1.20000005);
      buf = v525;
      [v45 setTransform:&buf];
      [v45 setAlpha:0.0];
      v522[0] = _NSConcreteStackBlock;
      v522[1] = 3221225472;
      v522[2] = sub_1001281C8;
      v522[3] = &unk_100357110;
      v45 = v45;
      v523 = v45;
      v172 = v20;
      v524 = v172;
      v44 = objc_retainBlock(v522);
      v519[0] = _NSConcreteStackBlock;
      v519[1] = 3221225472;
      v519[2] = sub_10012825C;
      v519[3] = &unk_100357E30;
      v520 = v172;
      v521 = v21;
      v173 = objc_retainBlock(v519);

      v139 = v523;
LABEL_61:
      v22 = v173;
      goto LABEL_220;
    }

    if (v5 != 4)
    {
      if (v5 != 5)
      {
        v44 = 0;
LABEL_139:
        v22 = v486;
        goto LABEL_228;
      }

      v71 = [(PHAudioCallViewController *)self waitOnHoldViewController];

      if (v71)
      {
        v72 = [(PHAudioCallViewController *)self middleViewState]!= 1 && v490;
        v490 = v72;
        v73 = [(PHAudioCallViewController *)self waitOnHoldViewController];
        v74 = [v73 view];
        v75 = [v74 superview];

        if (!v75)
        {
          v76 = [(PHAudioCallViewController *)self screeningContainerView];
          v77 = [(PHAudioCallViewController *)self waitOnHoldViewController];
          v78 = [v77 view];
          [v76 addSubview:v78];

          v79 = [(PHAudioCallViewController *)self waitOnHoldViewController];
          v80 = [v79 view];
          [v80 setTranslatesAutoresizingMaskIntoConstraints:0];

          v81 = [(PHAudioCallViewController *)self waitOnHoldViewController];
          v82 = [v81 view];
          [v82 setContentCompressionResistancePriority:0 forAxis:0.0];

          v83 = [(PHAudioCallViewController *)self waitOnHoldViewController];
          v84 = [v83 view];
          [v84 setContentCompressionResistancePriority:1 forAxis:0.0];

          v85 = [(PHAudioCallViewController *)self waitOnHoldViewController];
          v86 = [v85 view];
          [v86 setContentHuggingPriority:0 forAxis:0.0];

          v87 = [(PHAudioCallViewController *)self waitOnHoldViewController];
          v88 = [v87 view];
          [v88 setContentHuggingPriority:1 forAxis:0.0];

          v89 = [(PHAudioCallViewController *)self waitOnHoldViewController];
          v90 = [v89 view];
          v91 = +[UIColor clearColor];
          [v90 setBackgroundColor:v91];

          v92 = objc_opt_new();
          [(PHAudioCallViewController *)self setWaitOnHoldConstraints:v92];

          v93 = [(PHAudioCallViewController *)self view];
          v94 = [(PHAudioCallViewController *)self waitOnHoldConstraints];
          [v94 setView:v93];

          v95 = +[UIScreen mainScreen];
          [v95 bounds];
          v97 = v96;
          v99 = v98;

          if (v97 < v99)
          {
            v97 = v99;
          }

          v473 = v20;
          v478 = v21;
          if (+[PHUIConfiguration usesMiddleCenteringView])
          {
            v100 = [(PHAudioCallViewController *)self middleSizingView];
            v101 = [v100 centerYAnchor];
          }

          else
          {
            v100 = [(PHAudioCallViewController *)self callParticipantsViewController];
            v208 = [v100 view];
            v101 = [v208 bottomAnchor];
          }

          v427 = v101;

          v469 = [(PHAudioCallViewController *)self view];
          v463 = [v469 trailingAnchor];
          v466 = [(PHAudioCallViewController *)self waitOnHoldViewController];
          v460 = [v466 view];
          v457 = [v460 trailingAnchor];
          v454 = [v463 constraintEqualToAnchor:v457 constant:8.0];
          v576[0] = v454;
          v451 = [(PHAudioCallViewController *)self waitOnHoldViewController];
          v448 = [v451 view];
          v442 = [v448 leadingAnchor];
          v445 = [(PHAudioCallViewController *)self view];
          v439 = [v445 leadingAnchor];
          v436 = [v442 constraintEqualToAnchor:v439 constant:8.0];
          v576[1] = v436;
          v433 = [(PHCallViewController *)self bottomBar];
          v430 = [v433 mainButtonLayoutGuide];
          v422 = [v430 topAnchor];
          v425 = [(PHAudioCallViewController *)self waitOnHoldViewController];
          v209 = [v425 view];
          v210 = [v209 bottomAnchor];
          v211 = [v422 constraintEqualToAnchor:v210 constant:v97 * 0.0425];
          v576[2] = v211;
          v212 = [(PHAudioCallViewController *)self waitOnHoldViewController];
          v213 = [v212 view];
          v214 = [v213 topAnchor];
          v215 = [v214 constraintEqualToAnchor:v101 constant:v97 * 0.0475];
          v576[3] = v215;
          [NSArray arrayWithObjects:v576 count:4];
          v217 = v216 = self;
          v218 = [(PHAudioCallViewController *)v216 waitOnHoldConstraints];
          [v218 setConstraintsStatePrimary:v217];

          self = v216;
          v5 = 5;
          v20 = v473;
          v21 = v478;
        }

        [(PHAudioCallViewController *)self hideOrShowScreeningBackgroundView];
        v219 = [(PHAudioCallViewController *)self waitOnHoldViewController];
        v220 = [v219 view];

        CGAffineTransformMakeScale(&v502, 0.100000001, 0.100000001);
        buf = v502;
        [v220 setTransform:&buf];
        [v220 setAlpha:0.0];
        v499[0] = _NSConcreteStackBlock;
        v499[1] = 3221225472;
        v499[2] = sub_100128608;
        v499[3] = &unk_100357110;
        v221 = v20;
        v500 = v221;
        v45 = v220;
        v501 = v45;
        v44 = objc_retainBlock(v499);
        v495[0] = _NSConcreteStackBlock;
        v495[1] = 3221225472;
        v495[2] = sub_10012869C;
        v495[3] = &unk_100357978;
        v496 = v221;
        v497 = self;
        v498 = v21;
        v137 = self;
        v22 = objc_retainBlock(v495);

        v139 = v500;
        goto LABEL_220;
      }

      v167 = sub_100004F84();
      if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.a) = 0;
        _os_log_impl(&_mh_execute_header, v167, OS_LOG_TYPE_DEFAULT, "[WARN] WaitOnHoldViewController was unexpectedly nil, cannot show WaitOnHold middle view state.", &buf, 2u);
      }

      v45 = 0;
LABEL_138:
      v44 = 0;
      goto LABEL_139;
    }

    v159 = [(PHAudioCallViewController *)self middleViewState]!= 1 && v490;
    v490 = v159;
    v160 = [(PHAudioCallViewController *)self screeningViewController];
    v161 = [v160 view];
    v162 = [v161 superview];

    if (v162)
    {
LABEL_111:
      [(PHAudioCallViewController *)self hideOrShowScreeningBackgroundView];
      v285 = [(PHAudioCallViewController *)self screeningViewController];
      v286 = [v285 view];

      CGAffineTransformMakeScale(&v510, 0.100000001, 0.100000001);
      buf = v510;
      [v286 setTransform:&buf];
      [v286 setAlpha:0.0];
      v507[0] = _NSConcreteStackBlock;
      v507[1] = 3221225472;
      v507[2] = sub_1001283C4;
      v507[3] = &unk_100357110;
      v287 = v20;
      v508 = v287;
      v45 = v286;
      v509 = v45;
      v44 = objc_retainBlock(v507);
      v503[0] = _NSConcreteStackBlock;
      v503[1] = 3221225472;
      v503[2] = sub_100128458;
      v503[3] = &unk_100357978;
      v504 = v287;
      v506 = v21;
      v137 = self;
      v505 = self;
      v22 = objc_retainBlock(v503);

      v139 = v508;
      goto LABEL_220;
    }

    v163 = [(PHAudioCallViewController *)self featureFlags];
    if ([v163 receptionistEnabled])
    {
    }

    else
    {
      v204 = [(PHAudioCallViewController *)self featureFlags];
      v205 = [v204 LVMEverywhere];

      if (!v205)
      {
        v206 = [(PHAudioCallViewController *)self view];
LABEL_88:
        v227 = v206;
        v228 = [(PHAudioCallViewController *)self screeningViewController];
        v229 = [v228 view];
        [v227 addSubview:v229];

        v230 = [(PHAudioCallViewController *)self screeningViewController];
        v231 = [v230 view];
        [v231 setTranslatesAutoresizingMaskIntoConstraints:0];

        v232 = [(PHAudioCallViewController *)self screeningViewController];
        v233 = [v232 view];
        [v233 setContentCompressionResistancePriority:0 forAxis:0.0];

        v234 = [(PHAudioCallViewController *)self screeningViewController];
        v235 = [v234 view];
        [v235 setContentCompressionResistancePriority:1 forAxis:0.0];

        v236 = [(PHAudioCallViewController *)self screeningViewController];
        v237 = [v236 view];
        [v237 setContentHuggingPriority:0 forAxis:0.0];

        v238 = [(PHAudioCallViewController *)self screeningViewController];
        v239 = [v238 view];
        [v239 setContentHuggingPriority:1 forAxis:0.0];

        v240 = objc_opt_new();
        [(PHAudioCallViewController *)self setScreeningConstraints:v240];

        v241 = [(PHAudioCallViewController *)self callDisplayStyleManager];
        v475 = v20;
        v481 = v21;
        if ([v241 callDisplayStyle] == 3)
        {
          v242 = [(PHAudioCallViewController *)self features];
          v243 = [v242 isDominoEnabled];

          if (v243)
          {
            v416 = [(PHAudioCallViewController *)self screeningViewController];
            v414 = [v416 view];
            v244 = [v414 trailingAnchor];
            v467 = [(PHCallViewController *)self bottomBar];
            v464 = [v467 mainButtonLayoutGuide];
            [v464 leadingAnchor];
            v461 = v470 = v244;
            v458 = [v244 constraintEqualToAnchor:-20.0 constant:?];
            v579[0] = v458;
            v455 = [(PHAudioCallViewController *)self screeningViewController];
            v452 = [v455 view];
            v245 = [v452 leadingAnchor];
            v446 = [(PHAudioCallViewController *)self view];
            v443 = [v446 safeAreaLayoutGuide];
            [v443 leadingAnchor];
            v440 = v449 = v245;
            v437 = [v245 constraintEqualToAnchor:?];
            v579[1] = v437;
            v434 = [(PHAudioCallViewController *)self screeningViewController];
            v431 = [v434 view];
            v246 = [v431 topAnchor];
            v426 = [(PHAudioCallViewController *)self callParticipantsViewController];
            v423 = [v426 view];
            [v423 bottomAnchor];
            v420 = v428 = v246;
            v418 = [v246 constraintEqualToAnchor:?];
            v579[2] = v418;
            v247 = [(PHAudioCallViewController *)self screeningViewController];
            [v247 view];
            v249 = v248 = self;
            v250 = [v249 bottomAnchor];
            v251 = [(PHAudioCallViewController *)v248 view];
            v252 = [v251 bottomAnchor];
            +[PHUIConfiguration ambientVerticalPadding];
            v254 = [v250 constraintEqualToAnchor:v252 constant:-v253];
            v579[3] = v254;
            v255 = [NSArray arrayWithObjects:v579 count:4];
            v256 = v248;
            [(PHAudioCallViewController *)v248 screeningConstraints];
            v258 = v257 = v5;
            [v258 setConstraintsStatePrimary:v255];

            v5 = v257;
            v259 = v416;

            v260 = v414;
LABEL_110:

            self = v256;
            v20 = v475;
            v21 = v481;
            goto LABEL_111;
          }
        }

        else
        {
        }

        v261 = +[UIScreen mainScreen];
        [v261 bounds];
        v263 = v262;
        v265 = v264;

        if (v263 >= v265)
        {
          v266 = v265;
        }

        else
        {
          v266 = v263;
        }

        if (v263 >= v265)
        {
          v265 = v263;
        }

        if (+[PHUIConfiguration usesMiddleCenteringView])
        {
          v267 = [(PHAudioCallViewController *)self middleSizingView];
          v259 = [v267 centerYAnchor];
        }

        else
        {
          v267 = [(PHAudioCallViewController *)self callParticipantsViewController];
          v268 = [v267 view];
          v259 = [v268 bottomAnchor];
        }

        v269 = [(PHAudioCallViewController *)self view];
        v270 = [(PHAudioCallViewController *)self screeningConstraints];
        [v270 setView:v269];

        v271 = [(PHAudioCallViewController *)self featureFlags];
        if ([v271 receptionistEnabled])
        {
        }

        else
        {
          v272 = [(PHAudioCallViewController *)self featureFlags];
          v273 = [v272 LVMEverywhere];

          if (!v273)
          {
            v260 = [(PHAudioCallViewController *)self view];
            v282 = [v260 trailingAnchor];
            v467 = [(PHAudioCallViewController *)self screeningViewController];
            v464 = [v467 view];
            [v464 trailingAnchor];
            v461 = v470 = v282;
            v458 = [v282 constraintEqualToAnchor:v266 * 0.102 constant:?];
            v577[0] = v458;
            v455 = [(PHAudioCallViewController *)self screeningViewController];
            v452 = [v455 view];
            v283 = [v452 leadingAnchor];
            v446 = [(PHAudioCallViewController *)self view];
            [v446 leadingAnchor];
            v443 = v449 = v283;
            v440 = [v283 constraintEqualToAnchor:v266 * 0.102 constant:?];
            v577[1] = v440;
            v437 = [(PHCallViewController *)self bottomBar];
            v434 = [v437 mainButtonLayoutGuide];
            v284 = [v434 topAnchor];
            v428 = [(PHAudioCallViewController *)self screeningViewController];
            v426 = [v428 view];
            [v426 bottomAnchor];
            v423 = v431 = v284;
            v420 = [v284 constraintEqualToAnchor:v265 * 0.0425 constant:?];
            v577[2] = v420;
            v418 = [(PHAudioCallViewController *)self screeningViewController];
            v247 = [v418 view];
            [v247 topAnchor];
            v249 = v280 = self;
            v250 = [v249 constraintEqualToAnchor:v259 constant:v265 * 0.0475];
            v577[3] = v250;
            v281 = v577;
LABEL_109:
            v251 = [NSArray arrayWithObjects:v281 count:4];
            v256 = v280;
            v252 = [(PHAudioCallViewController *)v280 screeningConstraints];
            [v252 setConstraintsStatePrimary:v251];
            goto LABEL_110;
          }
        }

        v274 = [(PHAudioCallViewController *)self translationLayoutGuide];

        if (v274)
        {
          v275 = [(PHAudioCallViewController *)self translationLayoutGuide];
          v276 = [v275 topAnchor];

          v259 = v276;
        }

        v260 = [(PHAudioCallViewController *)self screeningViewController];
        v470 = [v260 view];
        v277 = [v470 trailingAnchor];
        v464 = [(PHAudioCallViewController *)self view];
        [v464 trailingAnchor];
        v461 = v467 = v277;
        v458 = [v277 constraintEqualToAnchor:?];
        v578[0] = v458;
        v455 = [(PHAudioCallViewController *)self screeningViewController];
        v452 = [v455 view];
        v278 = [v452 leadingAnchor];
        v446 = [(PHAudioCallViewController *)self view];
        [v446 leadingAnchor];
        v443 = v449 = v278;
        v440 = [v278 constraintEqualToAnchor:?];
        v578[1] = v440;
        v437 = [(PHCallViewController *)self bottomBar];
        v434 = [v437 mainButtonLayoutGuide];
        v279 = [v434 topAnchor];
        v428 = [(PHAudioCallViewController *)self screeningViewController];
        v426 = [v428 view];
        [v426 bottomAnchor];
        v423 = v431 = v279;
        v420 = [v279 constraintEqualToAnchor:11.0 constant:?];
        v578[2] = v420;
        v418 = [(PHAudioCallViewController *)self screeningViewController];
        v247 = [v418 view];
        [v247 topAnchor];
        v249 = v280 = self;
        v250 = [v249 constraintEqualToAnchor:v259];
        v578[3] = v250;
        v281 = v578;
        goto LABEL_109;
      }
    }

    [(PHAudioCallViewController *)self hideOrShowScreeningBackgroundView];
    v206 = [(PHAudioCallViewController *)self screeningContainerView];
    goto LABEL_88;
  }

  if (!v5)
  {
    v102 = [(PHAudioCallViewController *)self callParticipantsViewController];
    [v102 resetNameOverrideString];

    v103 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([v103 callDisplayStyle] == 3)
    {
      v104 = v22;
      v105 = [(PHAudioCallViewController *)self features];
      if ([v105 isDominoEnabled])
      {
        v106 = [(PHAudioCallViewController *)self middleViewState];

        v22 = v104;
        if (v106 == 1)
        {
          v107 = [(PHCallViewController *)self bottomBar];
          [v107 setAlpha:1.0];

          v108 = [(PHAudioCallViewController *)self buttonsViewController];
          [v108 setUpdatesPaused:1];

          v109 = [(PHAudioCallViewController *)self buttonsViewController];
          v110 = [(PHCallViewController *)self bottomBar];
          v516[0] = _NSConcreteStackBlock;
          v516[1] = 3221225472;
          v516[2] = sub_1001282D4;
          v516[3] = &unk_1003591D0;
          v516[4] = self;
          v517 = v20;
          v518 = v21;
          [_TtC13InCallService27AmbientAnimationCoordinator transitionFrom:v109 to:v110 allowRoll:0 completion:v516];

          v22 = v104;
          v45 = 0;
          goto LABEL_211;
        }

        goto LABEL_60;
      }

      v22 = v104;
    }

LABEL_60:
    v137 = self;
    v514[0] = _NSConcreteStackBlock;
    v514[1] = 3221225472;
    v514[2] = sub_10012835C;
    v514[3] = &unk_100356988;
    v174 = v20;
    v515 = v174;
    v44 = objc_retainBlock(v514);
    v511[0] = _NSConcreteStackBlock;
    v511[1] = 3221225472;
    v511[2] = sub_100128368;
    v511[3] = &unk_100357E30;
    v512 = v174;
    v513 = v21;
    v173 = objc_retainBlock(v511);

    v45 = 0;
    v139 = v515;
    goto LABEL_61;
  }

  v48 = v47;
  if (v5 != 1)
  {
    if (v5 != 2)
    {
      v44 = 0;
      goto LABEL_228;
    }

    v486 = v22;
    v49 = [(PHAudioCallViewController *)self keypadViewController];
    v50 = [v49 view];
    v51 = [v50 superview];

    if (v51)
    {
      goto LABEL_128;
    }

    v472 = v20;
    v477 = v21;
    v52 = [(PHAudioCallViewController *)self view];
    v53 = [(PHAudioCallViewController *)self keypadViewController];
    v54 = [v53 view];
    [v52 addSubview:v54];

    v55 = +[UIColor clearColor];
    v56 = [(PHAudioCallViewController *)self keypadViewController];
    v57 = [v56 view];
    [v57 setBackgroundColor:v55];

    v58 = [(PHAudioCallViewController *)self keypadViewController];
    v59 = [v58 view];
    [v59 setTranslatesAutoresizingMaskIntoConstraints:0];

    v60 = [(PHAudioCallViewController *)self view];
    v61 = [(PHAudioCallViewController *)self keypadViewController];
    v62 = [v61 view];
    v63 = [(PHAudioCallViewController *)self view];
    v64 = [NSLayoutConstraint constraintWithItem:v62 attribute:9 relatedBy:0 toItem:v63 attribute:9 multiplier:1.0 constant:0.0];
    [v60 addConstraint:v64];

    v65 = +[PHInCallUtilities sharedInstance];
    LOBYTE(v60) = [v65 isIPadIdiom];

    if ((v60 & 1) == 0)
    {
      v175 = +[UIScreen mainScreen];
      [v175 bounds];
      v177 = v176;
      v179 = v178;

      if (v177 >= v179)
      {
        v180 = v179;
      }

      else
      {
        v180 = v177;
      }

      if (v177 < v179)
      {
        v177 = v179;
      }

      +[PHUIConfiguration inComingCallAndInCallControlsBottomPaddingRatio];
      v182 = v181 * v177;
      *&v181 = v180 * 0.1976;
      v183 = roundf(*&v181);
      +[PHUIConfiguration distanceBetweenEndButtonAndKeyPadLastRow];
      v185 = v177 * v184;
      +[TPNumberPadButton verticalPadding];
      v187 = v185 + v182 + v183 - v186;
      v188 = [(PHAudioCallViewController *)self keypadViewController];
      v189 = [v188 view];
      v190 = [(PHAudioCallViewController *)self view];
      v69 = [NSLayoutConstraint constraintWithItem:v189 attribute:4 relatedBy:0 toItem:v190 attribute:4 multiplier:1.0 constant:-v187];

      goto LABEL_68;
    }

    if (+[PHUIConfiguration usesMiddleCenteringView])
    {
      v66 = [(PHAudioCallViewController *)self keypadViewController];
      v67 = [v66 view];
      v68 = [(PHAudioCallViewController *)self middleSizingView];
      v69 = [NSLayoutConstraint constraintWithItem:v67 attribute:10 relatedBy:0 toItem:v68 attribute:10 multiplier:1.0 constant:0.0];

      LODWORD(v70) = 1144750080;
      [v69 setPriority:v70];
LABEL_68:
      v191 = [(PHAudioCallViewController *)self view];
      [v191 addConstraint:v69];
LABEL_127:

      v20 = v472;
      v21 = v477;
LABEL_128:
      v306 = [(PHAudioCallViewController *)self features];
      v307 = [v306 isDialPadEnabled];

      v308 = [(PHCallViewController *)self bottomBar];
      v309 = v308;
      if (v307)
      {
        [v308 setCurrentState:19 animated:0 animationCompletionBlock:0];

        [(PHAudioCallViewController *)self hideOrShowKeypadBackgroundView];
        [(PHAudioCallViewController *)self updateEnhancedEmergencyViewWhenKeypadPresented];
      }

      else
      {
        [v308 setCurrentState:19 animated:1 animationCompletionBlock:0];
      }

      v310 = [(PHAudioCallViewController *)self keypadViewController];
      v45 = [v310 view];

      v311 = [(PHAudioCallViewController *)self participantsViewTopConstraint];
      +[PHUIConfiguration yParticipantsViewAdjustmentForKeypad];
      v313 = v312;
      [v311 constant];
      [v311 setConstant:v314 - v313];

      if ([(PHAudioCallViewController *)self middleViewState]== 1)
      {
        v315 = +[PHInCallUtilities sharedInstance];
        v316 = [v315 isIPadIdiom];

        if (v316)
        {
          CGAffineTransformMakeScale(&v540, 0.100000001, 0.100000001);
          buf = v540;
          [v45 setTransform:&buf];
        }

        [v45 setAlpha:0.0];
        v537[0] = _NSConcreteStackBlock;
        v537[1] = 3221225472;
        v537[2] = sub_100127FB0;
        v537[3] = &unk_100357110;
        v317 = v20;
        v538 = v317;
        v45 = v45;
        v539 = v45;
        v44 = objc_retainBlock(v537);
        v534[0] = _NSConcreteStackBlock;
        v534[1] = 3221225472;
        v534[2] = sub_100128070;
        v534[3] = &unk_100357E30;
        v535 = v317;
        v536 = v21;
        v318 = objc_retainBlock(v534);

        v319 = +[PHInCallUtilities sharedInstance];
        if ([v319 isIPadIdiom])
        {
          v320 = v21;
          v321 = [(PHAudioCallViewController *)self callDisplayStyleManager];
          if ([v321 callDisplayStyle] != 3)
          {

            v21 = v320;
            goto LABEL_143;
          }

          v322 = [(PHAudioCallViewController *)self features];
          v488 = [v322 isDominoEnabled];

          v21 = v320;
          if (!v488)
          {
            goto LABEL_144;
          }
        }

        else
        {
        }

        v319 = [(PHCallViewController *)self bottomBar];
        [v319 setAlpha:1.0];
LABEL_143:

LABEL_144:
        v137 = self;

        v139 = v538;
LABEL_205:
        v22 = v318;
        goto LABEL_220;
      }

      goto LABEL_138;
    }

    v222 = [(PHAudioCallViewController *)self features];
    v223 = [v222 isDialPadEnabled];

    v224 = +[PHUIConfiguration inCallControlSpacing];
    v225 = v224 == 5;
    if (v223)
    {
      if (v224 == 5)
      {
        v226 = 52.0;
LABEL_118:
        if (v48)
        {
          if (+[PHUIConfiguration inCallControlSpacing]== 5)
          {
            v226 = 32.0;
          }

          else
          {
            v226 = 0.0;
          }
        }

        [(PHAudioCallViewController *)self updateViewsForHeldCallControlsViewIfNeeded];
        v289 = [(PHAudioCallViewController *)self keypadViewController];
        v290 = [v289 view];
        v291 = [v290 centerYAnchor];
        v292 = [(PHAudioCallViewController *)self view];
        v293 = [v292 centerYAnchor];
        v69 = [v291 constraintEqualToAnchor:v293 constant:v226];

        v294 = [(PHAudioCallViewController *)self features];
        v295 = [v294 shouldEmbedSwapBanner];
        LODWORD(v296) = 1144750080;
        if (v295)
        {
          *&v296 = 250.0;
        }

        [v69 setPriority:v296];

        v581[0] = v69;
        v191 = [(PHAudioCallViewController *)self keypadViewController];
        v471 = [v191 view];
        v297 = [v471 bottomAnchor];
        v298 = [(PHCallViewController *)self bottomBar];
        v299 = [v298 topLayoutGuide];
        v300 = [v299 topAnchor];
        v301 = +[PHUIConfiguration inCallControlSpacing];
        v302 = -4.0;
        if (v301 > 1)
        {
          v302 = -9.0;
        }

        [v297 constraintLessThanOrEqualToAnchor:v300 constant:v302];
        v304 = v303 = self;
        v581[1] = v304;
        v305 = [NSArray arrayWithObjects:v581 count:2];
        [NSLayoutConstraint activateConstraints:v305];

        self = v303;
        v5 = 2;
        goto LABEL_127;
      }

      v225 = +[PHUIConfiguration inCallControlSpacing]== 0;
      v288 = -5.0;
    }

    else
    {
      v288 = 16.0;
    }

    if (v225)
    {
      v226 = v288;
    }

    else
    {
      v226 = 0.0;
    }

    goto LABEL_118;
  }

  v487 = v22;
  v140 = [(PHAudioCallViewController *)self buttonsViewController];
  v141 = [v140 view];
  v142 = [v141 superview];

  if (v142)
  {
    goto LABEL_149;
  }

  v143 = [(PHAudioCallViewController *)self view];
  v144 = [(PHAudioCallViewController *)self buttonsViewController];
  v145 = [v144 view];
  [v143 addSubview:v145];

  v146 = [(PHAudioCallViewController *)self buttonsViewController];
  v147 = [v146 view];
  [v147 setTranslatesAutoresizingMaskIntoConstraints:0];

  v148 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  v480 = v21;
  v149 = v20;
  v150 = v5;
  if ([v148 callDisplayStyle] != 3)
  {

    goto LABEL_70;
  }

  v151 = [(PHAudioCallViewController *)self features];
  v152 = [v151 isDominoEnabled];

  if (!v152)
  {
LABEL_70:
    v153 = [(PHAudioCallViewController *)self view];
    v154 = [(PHAudioCallViewController *)self buttonsViewController];
    v155 = [v154 view];
    v156 = [(PHAudioCallViewController *)self view];
    v157 = [NSLayoutConstraint constraintWithItem:v155 attribute:9 relatedBy:0 toItem:v156 attribute:9 multiplier:1.0 constant:0.0];
    [v153 addConstraint:v157];
    goto LABEL_71;
  }

  v153 = [(PHAudioCallViewController *)self trailingSideLayoutGuide];
  v154 = [v153 centerXAnchor];
  v155 = [(PHAudioCallViewController *)self buttonsViewController];
  v156 = [v155 view];
  v157 = [v156 centerXAnchor];
  v158 = [v154 constraintEqualToAnchor:v157];
  [v158 setActive:1];

LABEL_71:
  [(PHAudioCallViewController *)self updateViewsForHeldCallControlsViewIfNeeded];
  v192 = [(PHAudioCallViewController *)self buttonsViewBottomConstraint];

  v5 = v150;
  v20 = v149;
  v21 = v480;
  v23 = &_sScI4next7ElementQzSgyYaKFTj_ptr;
  if (v192)
  {
    goto LABEL_149;
  }

  if (PHUIInCallControlAlignmentIs())
  {
    v193 = v149;
    v194 = [(PHAudioCallViewController *)self view];
    v195 = [(PHAudioCallViewController *)self buttonsViewController];
    v196 = [v195 view];
    v197 = [(PHAudioCallViewController *)self view];
    v198 = 0.326797396;
    v199 = 0.0;
    v200 = v196;
    v201 = 3;
    v202 = v197;
    v203 = 4;
  }

  else
  {
    if (PHUIInCallControlAlignmentIs())
    {
      v193 = v149;
      v194 = [(PHAudioCallViewController *)self view];
      v195 = [(PHAudioCallViewController *)self buttonsViewController];
      v196 = [v195 view];
      v197 = [(PHAudioCallViewController *)self view];
      v198 = 1.0;
      v199 = -12.0;
    }

    else if (PHUIInCallControlAlignmentIs())
    {
      v193 = v149;
      v194 = [(PHAudioCallViewController *)self view];
      v195 = [(PHAudioCallViewController *)self buttonsViewController];
      v196 = [v195 view];
      v197 = [(PHAudioCallViewController *)self view];
      v198 = 1.0;
      v199 = -2.0;
    }

    else
    {
      if (!PHUIInCallControlAlignmentIs())
      {
        goto LABEL_149;
      }

      v193 = v149;
      v194 = [(PHAudioCallViewController *)self view];
      v195 = [(PHAudioCallViewController *)self buttonsViewController];
      v196 = [v195 view];
      v197 = [(PHAudioCallViewController *)self view];
      v198 = 1.0;
      v199 = 2.0;
    }

    v200 = v196;
    v201 = 10;
    v202 = v197;
    v203 = 10;
  }

  v323 = [NSLayoutConstraint constraintWithItem:v200 attribute:v201 relatedBy:0 toItem:v202 attribute:v203 multiplier:v198 constant:v199];
  [v194 addConstraint:v323];

  v20 = v193;
  v21 = v480;
  v23 = &_sScI4next7ElementQzSgyYaKFTj_ptr;
LABEL_149:
  v324 = [(PHAudioCallViewController *)self callParticipantsViewController];
  [v324 resetNameOverrideString];

  [(PHAudioCallViewController *)self _updateStatusLabelVisibility];
  v325 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v325 callDisplayStyle] == 3)
  {
    v326 = [(PHAudioCallViewController *)self features];
    v327 = [v326 isDominoEnabled];

    if (v327)
    {
      [(PHAudioCallViewController *)self layoutParticipantsViewAnimated:0];
      goto LABEL_154;
    }
  }

  else
  {
  }

  v328 = [(PHAudioCallViewController *)self callParticipantsViewController];
  v329 = [v328 view];
  [v329 setNeedsLayout];

  v330 = [(PHAudioCallViewController *)self callParticipantsViewController];
  v331 = [v330 view];
  [v331 layoutIfNeeded];

LABEL_154:
  if (!v48)
  {
    v335 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([v335 callDisplayStyle])
    {
      v336 = v23;
      v337 = v21;
      v338 = [(PHAudioCallViewController *)self callDisplayStyleManager];
      if ([v338 callDisplayStyle] == 3)
      {
        v339 = [(PHAudioCallViewController *)self features];
        v340 = [v339 isDominoEnabled] ^ 1;
      }

      else
      {
        v340 = 1;
      }

      v21 = v337;
      v23 = v336;
    }

    else
    {
      v340 = 0;
    }

    v341 = [(PHAudioCallViewController *)self features];
    v342 = v23;
    if ([v341 isDialPadEnabled])
    {
      v343 = [(PHCallViewController *)self bottomBar];
      v344 = [v343 currentState] != 19;

      v340 = v344 & v340;
    }

    else
    {
    }

    v345 = v21;
    v346 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([v346 callDisplayStyle] == 3)
    {
      v347 = [(PHAudioCallViewController *)self features];
      v348 = [v347 isDominoEnabled];

      if (v348)
      {
        goto LABEL_171;
      }
    }

    else
    {
    }

    v349 = [(PHCallViewController *)self bottomBar];
    [v349 setCurrentState:11 animated:v340 animationCompletionBlock:0];

LABEL_171:
    v350 = [(PHAudioCallViewController *)self features];
    v22 = v487;
    if (![v350 isDialPadEnabled])
    {

      v21 = v345;
      v23 = v342;
      goto LABEL_175;
    }

    v351 = [(PHAudioCallViewController *)self middleViewState];

    v21 = v345;
    v23 = v342;
    if (!v351)
    {
      goto LABEL_175;
    }

LABEL_173:
    [(PHAudioCallViewController *)self hideOrShowKeypadBackgroundView];
    goto LABEL_175;
  }

  v332 = [(PHCallViewController *)self bottomBar];
  [v332 setCurrentState:22];

  v333 = [(PHAudioCallViewController *)self features];
  v334 = [v333 isDialPadEnabled];

  v22 = v487;
  if (v334)
  {
    goto LABEL_173;
  }

LABEL_175:
  v352 = [(PHAudioCallViewController *)self buttonsViewController];
  v45 = [v352 view];

  if (![(PHAudioCallViewController *)self middleViewState])
  {
    v476 = v20;
    v482 = v21;
    v364 = [(PHAudioCallViewController *)self callCenter];
    [v364 currentCallGroups];
    v139 = v365 = self;

    v366 = [v139 count];
    v367 = [(PHAudioCallViewController *)v365 callCenter];
    v368 = [v367 currentVideoCallCount];

    v369 = [(PHAudioCallViewController *)v365 callDisplayStyleManager];
    if ([v369 callDisplayStyle] == 3)
    {
      v137 = v365;
      v370 = [(PHAudioCallViewController *)v365 features];
      v371 = [v370 isDominoEnabled];

      if (v371)
      {
        [v45 setAlpha:1.0];
        if (v490)
        {
          v372 = &v366[v368] < 2;
          v373 = [(PHCallViewController *)v137 bottomBar];
          v374 = [(PHAudioCallViewController *)v137 buttonsViewController];
          v573[0] = _NSConcreteStackBlock;
          v573[1] = 3221225472;
          v573[2] = sub_1001279C4;
          v573[3] = &unk_1003569B0;
          v573[4] = v137;
          [_TtC13InCallService27AmbientAnimationCoordinator transitionFrom:v373 to:v374 allowRoll:v372 completion:v573];
        }

        else
        {
          v394 = [(PHCallViewController *)v137 bottomBar];
          [v394 setCurrentState:11 animated:0 animationCompletionBlock:0];

          [(PHAudioCallViewController *)v137 updateBottomBarAlphaWithCurrentState:[(PHCallViewController *)v137 currentState]];
        }

        v44 = 0;
        v20 = v476;
        v21 = v482;
LABEL_214:
        v22 = v487;
        goto LABEL_220;
      }
    }

    else
    {
      v137 = v365;
    }

    [v45 setAlpha:0.0];
    v571[0] = _NSConcreteStackBlock;
    v571[1] = 3221225472;
    v571[2] = sub_100127A30;
    v571[3] = &unk_100356988;
    v45 = v45;
    v572 = v45;
    v381 = objc_retainBlock(v571);
    v382 = [(PHAudioCallViewController *)v137 callDisplayStyleManager];
    v383 = [v382 callDisplayStyle];

    v21 = v482;
    if (v383)
    {
      v44 = objc_retainBlock(v381);
      v20 = v476;
    }

    else
    {
      v385 = sub_100004F84();
      v20 = v476;
      if (os_log_type_enabled(v385, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.a) = 0;
        _os_log_impl(&_mh_execute_header, v385, OS_LOG_TYPE_DEFAULT, "The audio call UI is currently showing in a banner, animations on the middle view state will be queued up until we transition out of the banner.", &buf, 2u);
      }

      [(PHAudioCallViewController *)v137 setPendingMiddleViewAnimations:v381];
      v44 = 0;
    }

    goto LABEL_214;
  }

  if ([(PHAudioCallViewController *)self middleViewState]== 2)
  {
    v353 = [(PHAudioCallViewController *)self participantsViewTopConstraint];
    [v23[80] yParticipantsViewAdjustmentForKeypad];
    v355 = v354;
    [v353 constant];
    [v353 setConstant:v355 + v356];

    v357 = +[PHInCallUtilities sharedInstance];
    v358 = [v357 isIPadIdiom];

    if (v358)
    {
      CGAffineTransformMakeScale(&v570, 1.20000005, 1.20000005);
      buf = v570;
      [v45 setTransform:&buf];
    }

    [v45 setAlpha:0.0];
    v567[0] = _NSConcreteStackBlock;
    v567[1] = 3221225472;
    v567[2] = sub_100127A3C;
    v567[3] = &unk_100357110;
    v45 = v45;
    v568 = v45;
    v359 = v20;
    v569 = v359;
    v44 = objc_retainBlock(v567);
    v564[0] = _NSConcreteStackBlock;
    v564[1] = 3221225472;
    v564[2] = sub_100127AFC;
    v564[3] = &unk_100357E30;
    v565 = v359;
    v566 = v21;
    v318 = objc_retainBlock(v564);

    v360 = +[PHInCallUtilities sharedInstance];
    if ([v360 isIPadIdiom])
    {
      v361 = v21;
      v362 = [(PHAudioCallViewController *)self callDisplayStyleManager];
      if ([v362 callDisplayStyle] != 3)
      {

        v21 = v361;
        goto LABEL_203;
      }

      v363 = [(PHAudioCallViewController *)self features];
      v489 = [v363 isDominoEnabled];

      v21 = v361;
      if (!v489)
      {
        goto LABEL_204;
      }
    }

    else
    {
    }

    v360 = [(PHCallViewController *)self bottomBar];
    [v360 setAlpha:0.0];
LABEL_203:

LABEL_204:
    v137 = self;

    v139 = v568;
    goto LABEL_205;
  }

  if ([(PHAudioCallViewController *)self middleViewState]== 4)
  {
    v375 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([v375 callDisplayStyle] == 3)
    {
      v376 = [(PHAudioCallViewController *)self features];
      v377 = [v376 isDominoEnabled];

      if (v377)
      {
        v378 = [(PHCallViewController *)self bottomBar];
        v379 = [(PHAudioCallViewController *)self buttonsViewController];
        v563[0] = _NSConcreteStackBlock;
        v563[1] = 3221225472;
        v563[2] = sub_100127BA0;
        v563[3] = &unk_1003569B0;
        v563[4] = self;
        [_TtC13InCallService27AmbientAnimationCoordinator transitionFrom:v378 to:v379 allowRoll:1 completion:v563];

        v561[0] = _NSConcreteStackBlock;
        v561[1] = 3221225472;
        v561[2] = sub_100127C10;
        v561[3] = &unk_100356988;
        v562 = v20;
        v44 = objc_retainBlock(v561);
        v380 = v562;
LABEL_219:

        v553[0] = _NSConcreteStackBlock;
        v553[1] = 3221225472;
        v553[2] = sub_100127CB0;
        v553[3] = &unk_100357978;
        v554 = v20;
        v556 = v21;
        v137 = self;
        v555 = self;
        v22 = objc_retainBlock(v553);

        v139 = v554;
LABEL_220:

        self = v137;
        if (v44)
        {
          if (v490)
          {
            v396 = v22;
            v397 = +[PHInCallUtilities sharedInstance];
            v398 = [v397 isIPadIdiom];

            if (v398)
            {
              v491[0] = _NSConcreteStackBlock;
              v491[1] = 3221225472;
              v491[2] = sub_10012885C;
              v491[3] = &unk_100356D38;
              v44 = v44;
              v492 = v44;
              v22 = v396;
              [UIView animateWithDuration:v491 animations:v396 completion:0.200000003];
              v399 = v492;
            }

            else
            {
              v400 = [(PHAudioCallViewController *)self view];
              v493[0] = _NSConcreteStackBlock;
              v493[1] = 3221225472;
              v493[2] = sub_10012884C;
              v493[3] = &unk_100356D38;
              v44 = v44;
              v494 = v44;
              v22 = v396;
              [UIView transitionWithView:v400 duration:5242880 options:v493 animations:v396 completion:0.200000003];

              v399 = v494;
            }
          }

          else
          {
            (v44[2])(v44);
            if (v22)
            {
              (v22[2])(v22, 1);
            }
          }
        }

        goto LABEL_228;
      }
    }

    else
    {
    }

    v386 = [(PHAudioCallViewController *)self participantsViewTopConstraint];
    [v23[80] yParticipantsViewAdjustmentForKeypad];
    v388 = v387;
    [v386 constant];
    [v386 setConstant:v388 + v389];

    CGAffineTransformMakeScale(&v560, 1.20000005, 1.20000005);
    buf = v560;
    [v45 setTransform:&buf];
    [v45 setAlpha:0.0];
    v557[0] = _NSConcreteStackBlock;
    v557[1] = 3221225472;
    v557[2] = sub_100127C1C;
    v557[3] = &unk_100357110;
    v558 = v45;
    v559 = v20;
    v390 = objc_retainBlock(v557);
    v391 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    v392 = [v391 callDisplayStyle];

    if (v392)
    {
      v44 = objc_retainBlock(v390);
    }

    else
    {
      v395 = sub_100004F84();
      if (os_log_type_enabled(v395, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.a) = 0;
        _os_log_impl(&_mh_execute_header, v395, OS_LOG_TYPE_DEFAULT, "The audio call UI is currently showing in a banner, animations on the middle view state will be queued up until we transition out of the banner.", &buf, 2u);
      }

      [(PHAudioCallViewController *)self setPendingMiddleViewAnimations:v390];
      v44 = 0;
    }

    v380 = v558;
    goto LABEL_219;
  }

  if ([(PHAudioCallViewController *)self middleViewState]== 3)
  {
    v137 = self;
    [v45 setAlpha:0.0];
    v550[0] = _NSConcreteStackBlock;
    v550[1] = 3221225472;
    v550[2] = sub_100127E60;
    v550[3] = &unk_100357110;
    v384 = v20;
    v551 = v384;
    v45 = v45;
    v552 = v45;
    v44 = objc_retainBlock(v550);
    v547[0] = _NSConcreteStackBlock;
    v547[1] = 3221225472;
    v547[2] = sub_100127EA4;
    v547[3] = &unk_100357E30;
    v548 = v384;
    v549 = v21;
    v173 = objc_retainBlock(v547);

    v139 = v551;
    goto LABEL_61;
  }

  if ([(PHAudioCallViewController *)self middleViewState]== 5)
  {
    v137 = self;
    [v45 setAlpha:0.0];
    v544[0] = _NSConcreteStackBlock;
    v544[1] = 3221225472;
    v544[2] = sub_100127F08;
    v544[3] = &unk_100357110;
    v393 = v20;
    v545 = v393;
    v45 = v45;
    v546 = v45;
    v44 = objc_retainBlock(v544);
    v541[0] = _NSConcreteStackBlock;
    v541[1] = 3221225472;
    v541[2] = sub_100127F4C;
    v541[3] = &unk_100357E30;
    v542 = v393;
    v543 = v21;
    v173 = objc_retainBlock(v541);

    v139 = v545;
    goto LABEL_61;
  }

LABEL_211:
  v44 = 0;
LABEL_228:
  self->_middleViewState = v5;
  [(PHAudioCallViewController *)self updateDimmingView];
  [(PHAudioCallViewController *)self setCurrentMiddleView:v45];
  [(PHAudioCallViewController *)self refreshUseRTTButton];
  [(PHAudioCallViewController *)self refreshExtensionNumberButton];
  [(PHAudioCallViewController *)self hideOrShowScreeningBackgroundView];
  v401 = [(PHAudioCallViewController *)self topLeadingContainer];
  v402 = [(PHAudioCallViewController *)self middlePillContainer];
  [(PHAudioCallViewController *)self updateCallRecordingIfNeededWithButtonContainer:v401 pillContainer:v402];

  v403 = [(PHAudioCallViewController *)self topLeadingContainer];
  [(PHAudioCallViewController *)self updateCallHoldingIfNeeded:v403];

  if (self->_waitOnHoldTipView && [(PHCallViewController *)self currentState]== 4 && ([(PHAudioCallViewController *)self middleViewState]== 2 || [(PHAudioCallViewController *)self middleViewState]== 1))
  {
    [(PHAudioCallViewController *)self displayWaitOnHoldTip];
  }

  v404 = [(PHAudioCallViewController *)self features];
  if ([v404 sharePlayInCallsEnabled])
  {
    screenSharingIndicatorView = self->_screenSharingIndicatorView;

    v406 = v483;
    if (screenSharingIndicatorView)
    {
      [(PHAudioCallViewController *)self displayScreenSharingIndicator];
      [(UIView *)self->_screenSharingIndicatorView setHidden:[(PHAudioCallViewController *)self middleViewState]!= 1];
    }
  }

  else
  {

    v406 = v483;
  }

LABEL_238:
  [(PHAudioCallViewController *)self updateDimmingValuesFor:v5];
}

- (PHInCallKeypadViewController)keypadViewController
{
  keypadViewController = self->_keypadViewController;
  if (!keypadViewController)
  {
    v4 = objc_alloc_init(PHInCallKeypadViewController);
    v5 = self->_keypadViewController;
    self->_keypadViewController = v4;

    [(PHAudioCallViewController *)self addChildViewController:self->_keypadViewController];
    keypadViewController = self->_keypadViewController;
  }

  return keypadViewController;
}

- (id)screeningContainerView
{
  v3 = [(PHAudioCallViewController *)self screeningBackgroundView];
  if (v3)
  {
    v4 = v3;
    v5 = [(PHAudioCallViewController *)self screeningBackgroundView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [(PHAudioCallViewController *)self screeningBackgroundView];
LABEL_7:
      v12 = v7;
      v13 = [v7 contentView];

      goto LABEL_9;
    }
  }

  v8 = [(PHAudioCallViewController *)self defaultBackgroundGradientView];
  if (v8)
  {
    v9 = v8;
    v10 = [(PHAudioCallViewController *)self defaultBackgroundGradientView];
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();

    if (v11)
    {
      v7 = [(PHAudioCallViewController *)self defaultBackgroundGradientView];
      goto LABEL_7;
    }
  }

  v13 = [(PHAudioCallViewController *)self viewIfLoaded];
LABEL_9:

  return v13;
}

- (double)screeningTextFieldPadding
{
  v3 = [(PHCallViewController *)self bottomBar];
  if (v3 && (v4 = v3, -[PHCallViewController bottomBar](self, "bottomBar"), v5 = objc_claimAutoreleasedReturnValue(), [v5 trackSize], v7 = v6, v5, v4, v7 > 0.0))
  {
    v8 = [(PHCallViewController *)self bottomBar];
    [v8 trackSize];
    v10 = v9;

    v11 = [(PHAudioCallViewController *)self view];
    [v11 bounds];
    v13 = (v12 - v10) * 0.5;

    if (v13 < 0.0)
    {
      return 0.0;
    }
  }

  else
  {
    v14 = [(PHCallViewController *)self bottomBar];
    v15 = [v14 mainButtonLayoutGuide];

    if (v15)
    {
      v16 = [(PHCallViewController *)self bottomBar];
      v17 = [v16 mainButtonLayoutGuide];
      [v17 frame];
      v13 = v18;
    }

    else
    {
      return 0.0;
    }
  }

  return v13;
}

- (UIViewController)screeningViewController
{
  screeningViewController = self->_screeningViewController;
  if (!screeningViewController)
  {
    v4 = [(PHAudioCallViewController *)self featureFlags];
    if ([v4 receptionistEnabled])
    {
      [(PHAudioCallViewController *)self setIsShowingNewTranscriptsView:1];
    }

    else
    {
      v5 = [(PHAudioCallViewController *)self featureFlags];
      -[PHAudioCallViewController setIsShowingNewTranscriptsView:](self, "setIsShowingNewTranscriptsView:", [v5 LVMEverywhere]);
    }

    if ([(PHAudioCallViewController *)self isShowingNewTranscriptsView])
    {
      [(PHAudioCallViewController *)self screeningTextFieldPadding];
      v7 = v6;
      v8 = [(CNKTranscriptionViewComposerFactory *)self->_screeningViewControllerFactory makeViewComposer];
      v9 = [(PHAudioCallViewController *)self frontmostCall];
      v10 = [v8 composeWithCall:v9 createTextField:1 liveReply:-[PHAudioCallViewController sendToLiveReply](self textFieldPadding:{"sendToLiveReply"), v7}];
      v11 = self->_screeningViewController;
      self->_screeningViewController = v10;

      [(PHAudioCallViewController *)self setSendToLiveReply:0];
    }

    else
    {
      v12 = [(CNKTranscriptionViewComposerFactory *)self->_screeningViewControllerFactory makeViewComposer];
      v13 = [(PHAudioCallViewController *)self frontmostCall];
      v14 = [v12 composeWithCall:v13];
      v15 = self->_screeningViewController;
      self->_screeningViewController = v14;
    }

    [(PHAudioCallViewController *)self addChildViewController:self->_screeningViewController];
    screeningViewController = self->_screeningViewController;
  }

  return screeningViewController;
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

    [(PHAudioCallViewController *)self addChildViewController:self->_voiceLoopViewController];
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
    [(PHAudioCallViewController *)self performBottomBarActionType:a3];
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
    v6 = [(PHCallViewController *)self bottomBar];
    v7 = [v6 nameForActionType:a3];
    *buf = 138412290;
    v128 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BottomBarActionPerformed: %@", buf, 0xCu);
  }

  v8 = [NSNumber numberWithInteger:4];
  v9 = [NSNumber numberWithInteger:6];
  v10 = [NSNumber numberWithInteger:5];
  v11 = [NSNumber numberWithInteger:1];
  v12 = [NSNumber numberWithInteger:3];
  v13 = [NSArray arrayWithObjects:v8, v9, v10, v11, v12, 0];

  v14 = [NSNumber numberWithInteger:a3];
  LODWORD(v9) = [v13 containsObject:v14];

  if (v9)
  {
    v15 = +[TUCallCenter sharedInstance];
    v16 = [v15 callsPassingTest:&stru_100359D10];
    v17 = [v16 firstObject];

    if (v17 && !self->_shouldIgnoreWaitOnHoldSessionState)
    {
      v126[0] = _NSConcreteStackBlock;
      v126[1] = 3221225472;
      v126[2] = sub_10012A10C;
      v126[3] = &unk_100359238;
      v126[4] = self;
      v126[5] = a3;
      v18 = objc_retainBlock(v126);
      v19 = [v17 displayName];
      [(PHAudioCallViewController *)self presentWaitOnHoldEndForAnotherCallAlertWithCallerName:v19 completionHandler:v18];

      goto LABEL_104;
    }
  }

  switch(a3)
  {
    case 1:
      goto LABEL_32;
    case 2:
      v52 = [(PHAudioCallViewController *)self inCallRootViewController];
      [v52 requestInCallSceneTransitionToFullScreen];

LABEL_32:
      v41 = [(PHAudioCallViewController *)self frontmostCall];
      if ([v41 wantsHoldMusic])
      {
        [v41 resetWantsHoldMusic];
        [(PHAudioCallViewController *)self updateCurrentState];
      }

      else
      {
        v85 = [(PHAudioCallViewController *)self callCenter];
        v86 = [v85 screeningCall];

        if ([(PHAudioCallViewController *)self usesCompactMulticallUI])
        {
          v87 = [(PHAudioCallViewController *)self prioritizedCall];
          v88 = [v86 isEqualToCall:v87];

          v89 = v88 ^ 1;
        }

        else
        {
          v89 = 0;
        }

        if (!v86 || (v89 & 1) != 0)
        {
          v102 = [(PHAudioCallViewController *)self callCenter];
          v100 = [v102 incomingCall];

          v103 = sub_100004F84();
          if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v128 = v100;
            _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "Answering incoming call: %@", buf, 0xCu);
          }

          if (-[PHAudioCallViewController usesCompactMulticallUI](self, "usesCompactMulticallUI") && (-[PHAudioCallViewController callCenter](self, "callCenter"), v104 = objc_claimAutoreleasedReturnValue(), [v104 currentCallGroups], v105 = objc_claimAutoreleasedReturnValue(), v106 = objc_msgSend(v105, "count") > 1, v105, v104, v106))
          {
            v101 = [(PHAudioCallViewController *)self answerRequestForCall:v100];
            v107 = [(PHAudioCallViewController *)self callCenter];
            v108 = v107;
            if (v86)
            {
              [v107 endActiveOrHeldAndAnswerWithRequest:v101];
            }

            else
            {
              [v107 holdActiveAndAnswerWithRequest:v101];
            }

            v119 = [(PHAudioCallViewController *)self analyticsReporter];
            [v119 reportMultipleCallsWaitingUIAction:3];
          }

          else
          {
            v101 = [(PHAudioCallViewController *)self callCenter];
            v119 = [(PHAudioCallViewController *)self answerRequestForCall:v100];
            [v101 answerWithRequest:v119];
          }
        }

        else
        {
          v99 = sub_100004F84();
          if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v128 = v86;
            _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "Answering screened call: %@", buf, 0xCu);
          }

          v100 = [(PHAudioCallViewController *)self answerRequestForCall:v86];
          [v100 setBehavior:4];
          v101 = [(PHAudioCallViewController *)self callCenter];
          [v101 answerWithRequest:v100];
        }
      }

      goto LABEL_102;
    case 4:
      v67 = [(PHAudioCallViewController *)self callCenter];
      v68 = [v67 incomingCall];
      v69 = [(PHAudioCallViewController *)self answerRequestForCall:v68];

      v70 = [(PHAudioCallViewController *)self callCenter];
      v71 = [v70 activeVideoCall];

      v72 = [(PHAudioCallViewController *)self callCenter];
      v73 = v72;
      if (v71)
      {
        [v72 endActiveOrHeldAndAnswerWithRequest:v69];
      }

      else
      {
        v115 = [v72 isEndAndAnswerAllowed];

        v116 = sub_100004F84();
        v117 = os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT);
        if (v115)
        {
          if (v117)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "BottomBar: Ending active and answering incoming call", buf, 2u);
          }

          v118 = [(PHAudioCallViewController *)self callCenter];
          [v118 endActiveOrHeldAndAnswerWithRequest:v69];
        }

        else
        {
          if (v117)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "BottomBar: Disconnecting all calls", buf, 2u);
          }

          v118 = [(PHAudioCallViewController *)self callCenter];
          [v118 disconnectAllCalls];
        }

        v73 = [(PHAudioCallViewController *)self analyticsReporter];
        [v73 reportMultipleCallsWaitingUIAction:2];
      }

      goto LABEL_97;
    case 5:
      v43 = [(PHAudioCallViewController *)self callCenter];
      v44 = [(PHAudioCallViewController *)self callCenter];
      v45 = [v44 incomingCall];
      v46 = [(PHAudioCallViewController *)self answerRequestForCall:v45];
      [v43 endHeldAndAnswerWithRequest:v46];

      break;
    case 6:
      v47 = [(PHAudioCallViewController *)self callCenter];
      v48 = [(PHAudioCallViewController *)self callCenter];
      v49 = [v48 incomingCall];
      v50 = [(PHAudioCallViewController *)self answerRequestForCall:v49];
      [v47 holdActiveAndAnswerWithRequest:v50];

      v51 = [(PHAudioCallViewController *)self analyticsReporter];
      [v51 reportMultipleCallsWaitingUIAction:3];

      break;
    case 7:
      v74 = [(PHAudioCallViewController *)self declineCallService];
      [v74 declineAnsweringFrontMostCallViaUserActionWithCompletionHandler:&stru_100359D30];

      break;
    case 10:
      v40 = [(PHAudioCallViewController *)self frontmostCall];
      [(PHAudioCallViewController *)self showBlockAlertForCall:v40];

      break;
    case 11:
      v41 = [(PHAudioCallViewController *)self frontmostCall];
      if (v41)
      {
        if ([(PHCallViewController *)self currentState]== 11 || [(PHCallViewController *)self currentState]== 12)
        {
          [(PHAudioCallViewController *)self setMiddleViewState:0];
        }

        if ([(PHAudioCallViewController *)self isCallSmartHoldingSessionActive:v41])
        {
          [(PHAudioCallViewController *)self endWaitOnHoldSession];
        }

        v42 = [(PHAudioCallViewController *)self callCenter];
        [v42 disconnectCall:v41 withReason:2];
      }

      goto LABEL_102;
    case 14:
    case 19:
    case 37:
      [(PHAudioCallViewController *)self setCurrentState:0];
      break;
    case 15:
      if ([(PHCallViewController *)self currentState]!= 10)
      {
        goto LABEL_11;
      }

      [(PHAudioCallViewController *)self handleCancelPressedInCallBufferScreen];
      break;
    case 16:
      v78 = [(PHAudioCallViewController *)self callCenter];
      [v78 disconnectAllCalls];

      break;
    case 17:
      [(PHAudioCallViewController *)self setMiddleViewState:1 animated:1];
      break;
    case 18:
      v75 = +[UIApplication sharedApplication];
      v76 = [v75 delegate];
      v69 = [v76 mostRecentlyDisconnectedAudioCall];

      if (v69)
      {
        v73 = [(PHAudioCallViewController *)self callCenter];
        v77 = [v69 dialRequestForRedial];
        [v73 launchAppForDialRequest:v77 completion:0];
      }

      else
      {
        v73 = sub_100004F84();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          sub_1002565D8();
        }
      }

      goto LABEL_97;
    case 22:
      v33 = [(PHAudioCallViewController *)self callCenter];
      v34 = [v33 routeController];
      v35 = [v34 areAuxiliaryRoutesAvailable];

      if (v35)
      {
        v36 = +[UIApplication sharedApplication];
        v37 = [v36 delegate];
        v38 = [v37 currentInCallScene];
        [v38 requestTransitionToPresentationMode:2 shouldDismissCMASAlerts:0 analyticsSource:@"SBSUIInCallTransitionAnalyticsSourceAudioRouteButtonPress"];

        [(PHAudioCallViewController *)self setWaitingForFullScreenAudioRoutes:1];
      }

      else
      {
        v90 = [(PHAudioCallViewController *)self callCenter];
        v91 = [v90 routeController];
        v92 = [v91 pickedRoute];
        v93 = [v92 isSpeaker];

        v94 = [(PHAudioCallViewController *)self callCenter];
        v95 = [v94 routeController];
        v96 = v95;
        if (v93)
        {
          v69 = [v95 routeForSpeakerDisable];

          if (v69)
          {
            v97 = [(PHAudioCallViewController *)self callCenter];
            v98 = [v97 routeController];
            [v98 pickRoute:v69];

            v73 = [(PHAudioCallViewController *)self callParticipantsViewController];
            [v73 setBannerAudioRouteButtonSelected:0];
          }

          else
          {
            v73 = sub_100004F84();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find available route to pick for speaker disable", buf, 2u);
            }
          }
        }

        else
        {
          v69 = [v95 routeForSpeakerEnable];

          if (v69)
          {
            v120 = [(PHAudioCallViewController *)self callCenter];
            v121 = [v120 routeController];
            [v121 pickRoute:v69];

            v73 = [(PHAudioCallViewController *)self callParticipantsViewController];
            [v73 setBannerAudioRouteButtonSelected:1];
          }

          else
          {
            v73 = sub_100004F84();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find available route to pick for speaker enable", buf, 2u);
            }
          }
        }

LABEL_97:
      }

      break;
    case 23:
      v39 = [(PHAudioCallViewController *)self frontmostCall];
      [v39 sendHardPauseDigits];

      break;
    case 24:
      v64 = [(PHAudioCallViewController *)self callCenter];
      v65 = [v64 currentCallCount] > 1;

      if (v65)
      {
        v66 = [(PHAudioCallViewController *)self analyticsReporter];
        [v66 reportMultipleCallsWaitingUIAction:4];
      }

      goto LABEL_39;
    case 25:
      v53 = [(PHAudioCallViewController *)self featureFlags];
      v54 = TUCallScreeningEnabledM3();

      if (!v54)
      {
        break;
      }

      if (-[PHAudioCallViewController usesCompactMulticallUI](self, "usesCompactMulticallUI") && (-[PHAudioCallViewController callCenter](self, "callCenter"), v55 = objc_claimAutoreleasedReturnValue(), [v55 currentCallGroups], v56 = objc_claimAutoreleasedReturnValue(), v57 = objc_msgSend(v56, "count") > 1, v56, v55, v57))
      {
        v58 = [(PHAudioCallViewController *)self callCenter];
        v59 = [v58 currentCallCount] > 1;

        if (v59)
        {
          v60 = [(PHAudioCallViewController *)self analyticsReporter];
          [v60 reportMultipleCallsWaitingUIAction:4];
        }

LABEL_39:
        v61 = [(PHAudioCallViewController *)self callCenter];
        v62 = [(PHAudioCallViewController *)self callCenter];
        v63 = [v62 incomingCall];
        [v61 disconnectCall:v63 withReason:2];
      }

      else
      {
        v109 = sub_100004F84();
        if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
        {
          v110 = [(PHAudioCallViewController *)self frontmostCall];
          *buf = 138412290;
          v128 = v110;
          _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "Answering screened call: %@", buf, 0xCu);
        }

        v41 = [(PHAudioCallViewController *)self frontmostCall];
        if (v41)
        {
          v111 = +[UIApplication sharedApplication];
          v112 = [v111 delegate];
          v113 = [v112 answeringMachine];
          v114 = [v41 callUUID];
          [v113 screenCallWithUUID:v114 manualScreening:1 completion:&stru_100359D50];
        }

LABEL_102:
      }

      break;
    case 26:
      v81 = [(PHAudioCallViewController *)self featureFlags];
      v82 = TUCallScreeningEnabledM3();

      if (v82)
      {
        objc_initWeak(buf, self);
        v83 = +[PHInCallUtilities sharedInstance];
        v122[0] = _NSConcreteStackBlock;
        v122[1] = 3221225472;
        v122[2] = sub_10012A260;
        v122[3] = &unk_100356E98;
        objc_copyWeak(&v123, buf);
        [v83 requestPasscodeUnlockWithCompletion:v122];

        objc_destroyWeak(&v123);
        objc_destroyWeak(buf);
      }

      break;
    case 29:
      [(PHAudioCallViewController *)self _leaveMessage];
      break;
    case 32:
      v79 = [(PHAudioCallViewController *)self callCenter];
      v80 = [(PHAudioCallViewController *)self frontmostCall];
      [v79 setTTYType:1 forCall:v80];

      break;
    case 35:
      v20 = +[UIApplication sharedApplication];
      v21 = [v20 delegate];
      v22 = [v21 mostRecentlyDisconnectedAudioCall];

      objc_initWeak(buf, self);
      v23 = [(PHAudioCallViewController *)self inCallRootViewController];
      v124[0] = _NSConcreteStackBlock;
      v124[1] = 3221225472;
      v124[2] = sub_10012A20C;
      v124[3] = &unk_100356E98;
      objc_copyWeak(&v125, buf);
      [v23 presentBlockAndReportAlertToBlockCall:v22 forViewController:self completion:v124];

      objc_destroyWeak(&v125);
      objc_destroyWeak(buf);

      break;
    case 36:
      v25 = +[UIApplication sharedApplication];
      v26 = [v25 delegate];
      v27 = [v26 mostRecentlyDisconnectedAudioCall];

      v28 = [(PHAudioCallViewController *)self inCallRootViewController];
      v29 = [v27 handle];
      [v28 presentCreateContactViewControllerWithHandle:v29 forViewController:self];

      break;
    case 38:
      v30 = +[UIApplication sharedApplication];
      v31 = [v30 delegate];
      v32 = [v31 alertCoordinator];
      [v32 invokeAlertWithRequestUnlock:-[PHAudioCallViewController alertTriggeredByAutoCountdown](self automaticallyInvoked:{"alertTriggeredByAutoCountdown") ^ 1, -[PHAudioCallViewController alertTriggeredByAutoCountdown](self, "alertTriggeredByAutoCountdown")}];

      break;
    case 39:
LABEL_11:
      v24 = [(PHAudioCallViewController *)self callCenter];
      [v24 disconnectCurrentCall];

      break;
    case 40:
      [(PHAudioCallViewController *)self endWaitOnHoldSession];
      goto LABEL_54;
    case 41:
LABEL_54:
      v84 = +[CNKGameControllerManager shared];
      [v84 focus];

      break;
    default:
      break;
  }

  self->_shouldIgnoreWaitOnHoldSessionState = 0;
LABEL_104:
}

- (BOOL)shouldShowAnswerRTT
{
  v2 = [(PHAudioCallViewController *)self frontmostCall];
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

- (id)customizedTitleForItemInBar:(id)a3 withActionType:(int64_t)a4
{
  v6 = a3;
  v7 = [(PHCallViewController *)self bottomBar];

  v8 = 0;
  if (a4 == 23 && v7 == v6)
  {
    v9 = [(PHAudioCallViewController *)self frontmostCall];
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
  v3 = [(PHAudioCallViewController *)self callCenter];
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
  v15[2] = sub_10012A868;
  v15[3] = &unk_1003592E0;
  objc_copyWeak(&v17, &location);
  v10 = v4;
  v16 = v10;
  v11 = [UIAlertAction actionWithTitle:v9 style:2 handler:v15];
  [v7 addAction:v11];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"BLOCK_UNKNOWN_CALLER_ALERT_ACTION_CANCEL" value:&stru_100361FD0 table:@"InCallService"];
  v14 = [UIAlertAction actionWithTitle:v13 style:1 handler:&stru_100359DB0];
  [v7 addAction:v14];

  [(PHAudioCallViewController *)self presentViewController:v7 animated:1 completion:0];
  objc_destroyWeak(&v17);

  objc_destroyWeak(&location);
}

- (void)showBlockAlertForCall:(id)a3
{
  v4 = a3;
  v5 = [(PHAudioCallViewController *)self features];
  v6 = [v5 lvm_stopEnabled];

  if (v4 && v6)
  {
    v7 = [v4 handle];
    if ([v4 carrierAllowsReportVoiceCall])
    {
      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"BLOCK_REPORT_CARRIER_CALL_ALERT_TITLE" value:&stru_100361FD0 table:@"InCallService"];
      v10 = [v4 carrierName];
      v11 = [NSString stringWithFormat:v9, v10];
    }

    else
    {
      v8 = +[NSBundle mainBundle];
      v11 = [v8 localizedStringForKey:@"BLOCK_UNKNOWN_CALLER_ALERT_TITLE" value:&stru_100361FD0 table:@"InCallService"];
    }

    objc_initWeak(location, self);
    v12 = [UIAlertController alertControllerWithTitle:v11 message:0 preferredStyle:0];
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"BLOCK_REPORT_ALERT_ACTION_BLOCK" value:&stru_100361FD0 table:@"InCallService"];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10012AD74;
    v29[3] = &unk_100359328;
    objc_copyWeak(&v33, location);
    v15 = v7;
    v30 = v15;
    v31 = self;
    v16 = v4;
    v32 = v16;
    v17 = [UIAlertAction actionWithTitle:v14 style:2 handler:v29];
    [v12 addAction:v17];

    if ([v16 carrierAllowsReportVoiceCall])
    {
      v18 = +[NSBundle mainBundle];
      v19 = [v18 localizedStringForKey:@"BLOCK_REPORT_ALERT_ACTION_BLOCK_REPORT" value:&stru_100361FD0 table:@"InCallService"];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10012ADEC;
      v24[3] = &unk_100359328;
      objc_copyWeak(&v28, location);
      v25 = v15;
      v26 = v16;
      v27 = self;
      v20 = [UIAlertAction actionWithTitle:v19 style:2 handler:v24];
      [v12 addAction:v20];

      objc_destroyWeak(&v28);
    }

    v21 = +[NSBundle mainBundle];
    v22 = [v21 localizedStringForKey:@"BLOCK_REPORT_ALERT_ACTION_CANCEL" value:&stru_100361FD0 table:@"InCallService"];
    v23 = [UIAlertAction actionWithTitle:v22 style:1 handler:&stru_100359DD0];
    [v12 addAction:v23];

    [(PHAudioCallViewController *)self presentViewController:v12 animated:1 completion:0];
    objc_destroyWeak(&v33);

    objc_destroyWeak(location);
  }
}

- (id)answerRequestForCall:(id)a3
{
  v4 = a3;
  v5 = [[TUAnswerRequest alloc] initWithCall:v4];

  v6 = [(PHAudioCallViewController *)self callCenter];
  v7 = [v6 routeController];
  v8 = [v7 pickedRoute];

  v9 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v9 callDisplayStyle] != 3)
  {

    goto LABEL_9;
  }

  v10 = [(PHAudioCallViewController *)self features];
  v11 = [v10 isDominoEnabled];
  if (!v11 || !v8)
  {

    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if ([(PHAudioCallViewController *)self isPickedRouteSpeaker])
  {

LABEL_8:
    [v5 setSourceIdentifier:TUCallSourceIdentifierSpeakerRoute];
    goto LABEL_9;
  }

  v13 = [(PHAudioCallViewController *)self isPickedRouteReceiver];

  if (v13)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v5;
}

- (void)_leaveMessage
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 delegate];
  v5 = [v4 mostRecentlyDisconnectedAudioCall];

  v6 = [(PHAudioCallViewController *)self featureFlags];
  LODWORD(v4) = TUCallScreeningEnabled();

  if (v4 && !v5)
  {
    v7 = [(PHAudioCallViewController *)self callCenter];
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
    [(PHAudioCallViewController *)self presentViewController:v14 animated:1 completion:0];
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

- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10012B298;
  v4[3] = &unk_100356988;
  v4[4] = self;
  [(PHAudioCallViewController *)self dismissViewControllerAnimated:1 completion:v4];
}

- (BOOL)desiresLockButtonEventsForCallContainer:(id)a3
{
  v4 = a3;
  v5 = [v4 resolvedIncomingCall];
  if (v5 || [v4 currentCallCount] && -[PHAudioCallViewController isPickedRouteReceiver](self, "isPickedRouteReceiver"))
  {
    v6 = 1;
  }

  else
  {
    v7 = [v4 screeningCall];
    v6 = v7 != 0;
  }

  return v6;
}

- (void)setPrioritizedCall:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_prioritizedCall);
  v6 = [WeakRetained isEqualToCall:v4];

  if ((v6 & 1) == 0)
  {
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Ignoring our own call management, told to take in prioritizedCall %@", &v12, 0xCu);
    }

    v8 = objc_storeWeak(&self->_prioritizedCall, v4);
    [(PHCallParticipantsViewController *)self->_callParticipantsViewController setPrioritizedCall:v4];

    v9 = objc_loadWeakRetained(&self->_prioritizedCall);
    [(PHAudioButtonsViewControllerProtocol *)self->_buttonsViewController setPrioritizedCall:v9];

    [(PHAudioCallViewController *)self updateCurrentState];
    if ([(PHAudioCallViewController *)self shouldUseHeroImageLayout])
    {
      v10 = [(PHAudioCallViewController *)self callToUseForWallpaper];
      v11 = objc_loadWeakRetained(&self->_prioritizedCall);
      -[PHAudioCallViewController setCallForBackgroundImage:animated:callDisplayStyleChanged:](self, "setCallForBackgroundImage:animated:callDisplayStyleChanged:", v10, 1, [v11 status] == 4);
    }

    [(PHAudioCallViewController *)self _updatePosterStatusLabelForState:[(PHCallViewController *)self currentState]];
  }
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController received a hardware button event (%@)", &v33, 0xCu);
  }

  v8 = [(PHAudioCallViewController *)self activeCall];
  if (([v8 isRTT] & 1) != 0 || objc_msgSend(v8, "isTTY"))
  {
    v9 = sub_10014265C();
    isKindOfClass = v9;
    if (v9)
    {
      v11 = [(PHAudioCallViewController *)self navigationController];
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

  v13 = [(PHAudioCallViewController *)self isViewLoaded];
  v14 = v13;
  if (v13)
  {
    v3 = [(PHAudioCallViewController *)self view];
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

  v16 = [(PHAudioCallViewController *)self inCallRootViewController];
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

    v23 = [(PHAudioCallViewController *)self callCenter];
    v24 = [v23 resolvedIncomingCall];

    if (v18 == @"kPHHardwareButtonEventTypeLockButton")
    {
      [(PHAudioCallViewController *)self handleDeviceLockEventWithSourceType:1];
    }

    else
    {
      if (v18 == @"kPHHardwareButtonEventTypeVolumeDownButton" || v18 == @"kPHHardwareButtonEventTypeVolumeUpButton")
      {
        v29 = sub_100004F84();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v33) = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController handling kPHHardwareButtonEventTypeVolumeDownButton || kPHHardwareButtonEventTypeVolumeUpButton buttonType", &v33, 2u);
        }

        [v24 suppressRingtone];
        goto LABEL_35;
      }

      if (v18 == @"kPHHardwareButtonEventTypeHeadsetButton")
      {
        v30 = sub_100004F84();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [(PHAudioCallViewController *)self callCenter];
          v32 = [v31 incomingCall];
          v33 = 138412546;
          *v34 = v32;
          *&v34[8] = 2112;
          v35 = v8;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController handling kPHHardwareButtonEventTypeHeadsetButton buttonType (incoming call = %@, active call = %@)", &v33, 0x16u);
        }

        v28 = [(PHAudioCallViewController *)self callCenter];
        [v28 handleActionForWiredHeadsetMiddleButtonPress];
        goto LABEL_34;
      }

      if (v18 == @"kPHHardwareButtonEventTypeHeadsetButtonLongPress")
      {
        v25 = sub_100004F84();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [(PHAudioCallViewController *)self callCenter];
          v27 = [v26 incomingCall];
          v33 = 138412290;
          *v34 = v27;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController handling kPHHardwareButtonEventTypeHeadsetButtonLongPress buttonType (incoming call = %@)", &v33, 0xCu);
        }

        v28 = [(PHAudioCallViewController *)self callCenter];
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
    v19 = [(PHAudioCallViewController *)self isViewLoaded];
    v20 = [(PHAudioCallViewController *)self view];
    v21 = [v20 window];
    v33 = 67109376;
    *v34 = v19;
    *&v34[4] = 1024;
    *&v34[6] = v21 != 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] PHAudioCallViewController will not handle the hardware button event as the view is not loaded (viewLoaded = %d) or we have no window (window exists = %d)", &v33, 0xEu);
  }

LABEL_36:
}

- (void)handleDeviceLockEventWithSourceType:(int64_t)a3
{
  v22.receiver = self;
  v22.super_class = PHAudioCallViewController;
  [(PHCallViewController *)&v22 handleDeviceLockEventWithSourceType:?];
  v5 = [(PHAudioCallViewController *)self activeCall];
  v6 = [(PHAudioCallViewController *)self callCenter];
  v7 = [v6 resolvedIncomingCall];

  v8 = [(PHAudioCallViewController *)self isPickedRouteReceiver];
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
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController handling device lock event isPickedRouteReceiver=%d, activeCall=%d, incomingCall=%d, sourceType=%d", buf, 0x1Au);
  }

  if (a3 == 2)
  {
    if ((v7 != 0) | v8 & 1)
    {
      v10 = [(PHAudioCallViewController *)self declineCallService];
      [v10 declineAnsweringCallDueToLockEventWithCurrentActiveCall:v5 completionHandler:&stru_100359DF0];
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
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController: Not suppressing ringtone or declining call.", buf, 2u);
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
    v11 = [(PHAudioCallViewController *)self declineCallService];
    [v11 declineAnsweringCallDueToLockEventWithCurrentActiveCall:v5 completionHandler:&stru_100359E10];
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
  if (a3 == 1 && [(PHAudioCallViewController *)self videoStreamingIsGoingOn])
  {
    v21 = sub_100004F84();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "EnhancedEmergency: pause video if necessary when locking device", buf, 2u);
    }

    v10 = [(PHAudioCallViewController *)self emergencyCoordinator];
    [v10 handleDeviceLockEvent];
    goto LABEL_25;
  }

LABEL_26:
}

- (BOOL)isPickedRouteSpeaker
{
  v2 = [(PHAudioCallViewController *)self callCenter];
  v3 = [v2 routeController];
  v4 = [v3 pickedRoute];
  v5 = [v4 isSpeaker];

  return v5;
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
    v11[2] = sub_10012BEB4;
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

- (void)revealAudioRoutingDeviceListAnimated:(BOOL)a3
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Revealing audio routing device list", buf, 2u);
  }

  v5 = [(PHAudioCallViewController *)self buttonsViewController];
  if ([v5 isViewLoaded])
  {
    v6 = [(PHAudioCallViewController *)self buttonsViewController];
    v7 = [v6 view];
    v8 = [v7 window];

    if (v8)
    {
      v9 = [(PHAudioCallViewController *)self callDisplayStyleManager];
      if ([v9 callDisplayStyle] == 3)
      {
        v10 = [(PHAudioCallViewController *)self features];
        if ([v10 isDominoEnabled])
        {
          v11 = [(PHAudioCallViewController *)self ambientAudioRoutesControlView];

          if (v11)
          {
            v12 = [(PHAudioCallViewController *)self ambientAudioRoutesControlView];
            v13 = [v12 button];
            goto LABEL_16;
          }

LABEL_14:
          v20 = [(PHAudioCallViewController *)self currentMiddleView];
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

          v12 = [(PHAudioCallViewController *)self currentMiddleView];
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
    v15 = [(PHAudioCallViewController *)self buttonsViewController];
    v16 = [v15 isViewLoaded];
    v17 = [(PHAudioCallViewController *)self buttonsViewController];
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
  v3 = [(PHAudioCallViewController *)self routeListController];

  if (!v3)
  {
    v4 = [PHAudioRoutingMenuController menuControllerWithCallStyle:1 dataSource:self delegate:self];
    [(PHAudioCallViewController *)self setRouteListController:v4];
  }

  v5 = [(PHAudioCallViewController *)self routeListController];
  v6 = [v5 menu];

  return v6;
}

- (id)routesForAudioRoutingMenuController:(id)a3
{
  v3 = [(PHAudioCallViewController *)self callCenter];
  v4 = [v3 routeController];
  v5 = [v4 sortedRoutes];

  return v5;
}

- (void)audioRoutingMenuController:(id)a3 didSelectRoute:(id)a4
{
  v5 = a4;
  v6 = [(PHAudioCallViewController *)self callCenter];
  v7 = [v6 routeController];
  [v7 pickRoute:v5];

  v12 = [(PHAudioCallViewController *)self features];
  if ([v12 isEnhancedEmergencyEnabled])
  {
    v8 = [(PHAudioCallViewController *)self emergencyCoordinator];
    if (v8)
    {
      v9 = v8;
      v10 = [(PHAudioCallViewController *)self emergencyCoordinator];
      v11 = [v10 eedRTTState];

      if (!v11)
      {
        return;
      }

      v12 = [(PHAudioCallViewController *)self emergencyCoordinator];
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
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController get notified audio routes changed", v18, 2u);
  }

  [(PHAudioCallViewController *)self updateCurrentState];
  v6 = [(PHAudioCallViewController *)self routeListController];
  [v6 reload];

  v7 = +[UIApplication sharedApplication];
  v8 = [v7 delegate];
  v9 = [v8 currentInCallScene];
  v10 = [v9 delegate];
  v11 = [v10 callAnalyticsLogger];
  v12 = [v4 pickedRoute];

  [v11 audioRouteIsHandsfree:{objc_msgSend(v12, "isReceiver") ^ 1}];
  v13 = [(PHAudioCallViewController *)self features];
  if ([v13 isEnhancedEmergencyEnabled])
  {
    v14 = [(PHAudioCallViewController *)self emergencyCoordinator];
    if (v14)
    {
      v15 = v14;
      v16 = [(PHAudioCallViewController *)self emergencyCoordinator];
      v17 = [v16 eedRTTState];

      if (!v17)
      {
        return;
      }

      v13 = [(PHAudioCallViewController *)self emergencyCoordinator];
      [v13 updateRTTAudioRouteButton];
    }
  }
}

- (void)callDisplayStyleDidChangeFromStyle:(int64_t)a3 toStyle:(int64_t)a4
{
  v40.receiver = self;
  v40.super_class = PHAudioCallViewController;
  [PHCallViewController callDisplayStyleDidChangeFromStyle:"callDisplayStyleDidChangeFromStyle:toStyle:" toStyle:?];
  if (a4 == 4)
  {
    v7 = [(PHAudioCallViewController *)self callCenter];
    v8 = [v7 hasCurrentCalls];

    if ((v8 & 1) == 0)
    {
      v9 = sub_100004F84();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController was dismissed with no current calls", buf, 2u);
      }

      [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHFailureAlertShowingAssertionReason"];
      [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHFallbackToTelephonyAssertionReason"];
      [(PHAudioCallViewController *)self setCurrentState:0];
    }
  }

  if (!a3)
  {
    [(PHAudioCallViewController *)self resetParticipantsViewConstraints];
    v10 = [(PHAudioCallViewController *)self pendingMiddleViewAnimations];

    if (v10)
    {
      v11 = [(PHAudioCallViewController *)self pendingMiddleViewAnimations];
      v11[2]();

      [(PHAudioCallViewController *)self setPendingMiddleViewAnimations:0];
    }

    if ([(PHAudioCallViewController *)self waitingForFullScreenAudioRoutes])
    {
      v12 = [(PHAudioCallViewController *)self callCenter];
      v13 = [v12 routeController];
      v14 = [v13 areAuxiliaryRoutesAvailable];

      if (v14)
      {
        objc_initWeak(buf, self);
        +[UIView _currentAnimationDuration];
        v16 = dispatch_time(0, (v15 * 1000000000.0));
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10012CC68;
        block[3] = &unk_100356F60;
        objc_copyWeak(&v38, buf);
        dispatch_after(v16, &_dispatch_main_q, block);
        objc_destroyWeak(&v38);
        objc_destroyWeak(buf);
      }
    }

    [(PHAudioCallViewController *)self setWaitingForFullScreenAudioRoutes:0];
    v17 = +[PHInCallUtilities sharedInstance];
    v18 = [v17 isIPadIdiom];

    if (v18)
    {
      [(PHAudioCallViewController *)self fadeInBottomBar];
    }

    [(PHAudioCallViewController *)self updateBottomBarAlphaWithCurrentState:[(PHCallViewController *)self currentState]];
    if (![(PHAudioCallViewController *)self shouldUseHeroImageLayout])
    {
      v19 = [(PHAudioCallViewController *)self callDisplayStyleManager];
      if ([v19 callDisplayStyle] != 3)
      {
        goto LABEL_19;
      }

      v20 = [(PHAudioCallViewController *)self features];
      v21 = [v20 isDominoEnabled];

      if (!v21)
      {
        goto LABEL_20;
      }
    }

    v19 = [(PHAudioCallViewController *)self frontmostCall];
    [(PHAudioCallViewController *)self setCallForBackgroundImage:v19 animated:0 callDisplayStyleChanged:1];
    [(PHAudioCallViewController *)self updateCallParticipantsViewControllerCallGroups];
LABEL_19:
  }

LABEL_20:
  if (a3 == 1 || a4 != 1)
  {
    if (a3 == 2 && a4 == 4)
    {
      if ([(PHAudioCallViewController *)self videoStreamingIsGoingOn])
      {
        [(PHAudioCallViewController *)self audioCallControlsViewControllerDidTapVideoStreamingButton];
      }

      goto LABEL_32;
    }
  }

  else
  {
    v22 = sub_100004F84();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController handling lock event due to mini window attached", buf, 2u);
    }

    [(PHAudioCallViewController *)self handleDeviceLockEventWithSourceType:1];
  }

  if (a3 != 4)
  {
    if (a4 != 4)
    {
      goto LABEL_41;
    }

LABEL_32:
    [(PHAudioCallViewController *)self handleViewWillDisappear:1];
    [(PHAudioCallViewController *)self handleViewDidDisappear:1];
    v23 = [(PHAudioCallViewController *)self callCenter];
    v24 = [v23 incomingCall];

    if (v24)
    {
      v25 = [v24 provider];
      if ([v25 supportsDynamicSystemUI])
      {
        v26 = [(PHAudioCallViewController *)self featureFlags];
        if ([v26 groupConversations])
        {
          HasChinaSKU = TUDeviceHasChinaSKU();

          if (HasChinaSKU)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        }
      }
    }

LABEL_39:
    [(PHAudioCallViewController *)self suppressRingtoneForIncomingCall];
LABEL_40:

    goto LABEL_41;
  }

  [(PHAudioCallViewController *)self handleViewWillAppear:1];
  [(PHAudioCallViewController *)self handleViewDidAppear:1];
LABEL_41:
  v28 = +[UIDevice currentDevice];
  v29 = [v28 orientation];

  if (a3 || a4 != 2 || (v29 - 3) > 1)
  {
    if (!UIAccessibilityIsReduceMotionEnabled())
    {
      goto LABEL_51;
    }
  }

  else
  {
    v30 = +[UIDevice currentDevice];
    if ([v30 userInterfaceIdiom])
    {
      IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();

      if (!IsReduceMotionEnabled)
      {
        goto LABEL_51;
      }
    }

    else
    {
    }
  }

  v32 = [(PHAudioCallViewController *)self view];
  [ICSBannerTransitionAnimation performBannerToFullScreenCrossFadeAnimationWithView:v32];

LABEL_51:
  [(PHAudioCallViewController *)self showCallDetailsIfNecessaryForDisplayStyle:a4];
  [(PHAudioCallViewController *)self refreshCallDetailsViewButton];
  [(PHAudioCallViewController *)self setupAmbientAudioRoutesControlViewIfNeeded];
  [(PHAudioCallViewController *)self updateShareNameAndPhotoHUDPresentationIfNeeded];
  v33 = [(PHAudioCallViewController *)self topLeadingContainer];
  v34 = [(PHAudioCallViewController *)self middlePillContainer];
  [(PHAudioCallViewController *)self updateCallRecordingIfNeededWithButtonContainer:v33 pillContainer:v34];

  v35 = [(PHAudioCallViewController *)self topLeadingContainer];
  [(PHAudioCallViewController *)self updateCallHoldingIfNeeded:v35];

  v36 = [(PHAudioCallViewController *)self topLeadingContainer];
  [v36 setHidden:a4 != 2];
}

- (void)suppressRingtoneForIncomingCall
{
  v2 = [(PHAudioCallViewController *)self callCenter];
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

- (void)showCallDetailsIfNecessaryForDisplayStyle:(int64_t)a3
{
  v5 = +[UIApplication sharedApplication];
  v6 = [v5 delegate];
  v13 = [v6 bannerPresentationManager];

  v7 = [(PHAudioCallViewController *)self callDetailsCoordinator];
  if (v7 && [v13 shouldShowCallDetailsWhenReady])
  {

    if (a3 != 2)
    {
      goto LABEL_9;
    }

    v7 = [(PHAudioCallViewController *)self frontmostCall];
    v8 = [(PHAudioCallViewController *)self callCenter];
    v9 = [v8 activeConversationForCall:v7];

    v10 = [v9 activitySessions];
    v11 = [v10 count];

    if (v11)
    {
      v12 = [(PHAudioCallViewController *)self callDetailsCoordinator];
      [v12 startWithReason:@"Controls manager requested deferred call details presentation"];
    }

    else
    {
      [(PHAudioCallViewController *)self presentContactCard];
    }
  }

LABEL_9:
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = PHAudioCallViewController;
  [(PHAudioCallViewController *)&v9 viewWillTransitionToSize:a4 withTransitionCoordinator:?];
  v7 = [(PHCallViewController *)self bottomBar];
  [v7 setRotatedTargetSizeOfParent:{width, height}];

  v8 = [(PHCallViewController *)self bottomBar];
  [v8 invalidateIntrinsicContentSize];
}

- (void)fadeInBottomBar
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10012CF60;
  v2[3] = &unk_100356988;
  v2[4] = self;
  [UIView animateWithDuration:v2 animations:0.5];
}

- (void)setMiddleViewButtonsIfNecessary
{
  if ([(PHCallViewController *)self currentState]== 4 || [(PHCallViewController *)self currentState]== 5)
  {
    objc_initWeak(&location, self);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10012D088;
    v3[3] = &unk_100356E98;
    objc_copyWeak(&v4, &location);
    [(PHAudioCallViewController *)self setMiddleViewState:1 animated:1 completion:v3];
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

- (void)callParticipantsViewController:(id)a3 didPerformActionType:(int64_t)a4
{
  v6 = a3;
  v7 = [(PHAudioCallViewController *)self callParticipantsViewController];

  if (v7 == v6)
  {
    [(PHAudioCallViewController *)self performBottomBarActionType:a4];
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

- (void)callParticipantsViewControllerDidTapCallDetailsGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(PHAudioCallViewController *)self callParticipantsViewController];

  if (v5 == v4)
  {
    v6 = [(PHAudioCallViewController *)self callDetailsCoordinator];
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
  v7 = [(PHAudioCallViewController *)self callParticipantsViewController];

  if (v7 != v6)
  {
    return;
  }

  self->_participantsViewIsShowingMultipleLabel = a4 & ~[(PHAudioCallViewController *)self usesCompactMulticallUI];
  [(PHAudioCallViewController *)self _updatePosterNameAlpha];
  [(PHAudioCallViewController *)self _updateStatusLabelVisibility];
  v11 = [(PHAudioCallViewController *)self getParticipantsView_WaitingOrNot];
  [(PHAudioCallViewController *)self updateParticipantConstraintsForPosterName:?];
  v8 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v8 callDisplayStyle] != 3)
  {
    goto LABEL_5;
  }

  v9 = [(PHAudioCallViewController *)self features];
  v10 = [v9 isDominoEnabled];

  if (v10)
  {
    [(PHAudioCallViewController *)self layoutParticipantsViewAnimated:0];
    v8 = [(PHAudioCallViewController *)self callToUseForWallpaper];
    [(PHAudioCallViewController *)self setCallForBackgroundImage:v8 animated:1 callDisplayStyleChanged:0];
LABEL_5:
  }
}

- (void)callParticipantsViewController:(id)a3 didShowMultipleLabel:(BOOL)a4
{
  v6 = a3;
  v7 = [(PHAudioCallViewController *)self callParticipantsViewController];

  if (v7 == v6)
  {
    v8 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([v8 callDisplayStyle] == 3)
    {
      v9 = [(PHAudioCallViewController *)self features];
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

    v11 = [(PHAudioCallViewController *)self posterNameViewModel];

    if (v11)
    {

      [(PHAudioCallViewController *)self _updateStatusLabelVisibility];
    }
  }
}

- (BOOL)callParticipantsViewControllerShouldShowLargeAvatar:(id)a3
{
  v4 = a3;
  v5 = [(PHAudioCallViewController *)self callParticipantsViewController];

  if (v5 == v4)
  {
    v8 = [(PHAudioCallViewController *)self shouldShowLargeAvatar];
LABEL_6:
    v7 = v8;
    goto LABEL_7;
  }

  v6 = [(PHAudioCallViewController *)self callWaitingParticipantsViewController];

  if (v6 == v4)
  {
    v8 = [(PHAudioCallViewController *)self shouldShowLargeAvatarForCallWaiting];
    goto LABEL_6;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (BOOL)shouldShowLargeAvatarForCall:(id)a3
{
  v4 = a3;
  if ([(PHAudioCallViewController *)self callStateCanShowNewPoster:v4]|| ![(PHAudioCallViewController *)self prefersShowingCachedLastSeenPosterBeforeCallConnected:v4])
  {
    v5 = [(PHAudioCallViewController *)self contactWallpaperForCall:v4];
    v6 = [(PHAudioCallViewController *)self wallpaperTypeForCNWallpaper:v5];
  }

  else
  {
    v5 = [(PHAudioCallViewController *)self lastSeenPosterIMWallpaperMetadataForCall:v4];
    v6 = [(PHAudioCallViewController *)self wallpaperTypeForIMWallpaperMetadata:v5];
  }

  v7 = v6;

  v8 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v8 callDisplayStyle] != 3)
  {
    v11 = 0;
    goto LABEL_11;
  }

  v9 = [(PHAudioCallViewController *)self features];
  v10 = [v9 isDominoEnabled];

  if (!v10)
  {
    v11 = 0;
    goto LABEL_13;
  }

  v11 = 1;
  if (v7 != CNWallpaperTypeMemoji && v7 != CNWallpaperTypeMonogram)
  {
    v8 = [(PHAudioCallViewController *)self contactImageForCall:v4];
    [v8 size];
    v11 = v12 > 300.0;
LABEL_11:
  }

LABEL_13:

  return v11;
}

- (void)updateShouldShowLargeAvatar
{
  v11 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v11 callDisplayStyle] == 3)
  {
    v3 = [(PHAudioCallViewController *)self features];
    v4 = [v3 isDominoEnabled];

    if (!v4)
    {
      return;
    }

    if ([(PHAudioCallViewController *)self participantsViewIsShowingMultipleLabel]|| [(PHAudioCallViewController *)self middleViewState]== 4)
    {

      [(PHAudioCallViewController *)self setShouldShowLargeAvatar:0];
      return;
    }

    if ([(PHAudioCallViewController *)self usesCompactMulticallUI]&& ([(PHAudioCallViewController *)self prioritizedCall], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      v11 = [(PHAudioCallViewController *)self prioritizedCall];
      v6 = [(PHAudioCallViewController *)self shouldShowLargeAvatarForCall:v11];
    }

    else
    {
      v7 = [(PHAudioCallViewController *)self callParticipantsViewController];
      v8 = [v7 currentCallGroups];
      v9 = [v8 firstObject];
      v10 = [v9 calls];
      v11 = [v10 firstObject];

      v6 = [(PHAudioCallViewController *)self shouldShowLargeAvatarForCall:v11];
    }

    [(PHAudioCallViewController *)self setShouldShowLargeAvatar:v6];
  }
}

- (id)customColorForStatusLabelWithCall:(id)a3
{
  v4 = a3;
  if (![(PHAudioCallViewController *)self shouldUseHeroImageLayout])
  {
    v5 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    if ([v5 callDisplayStyle] != 3)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v7 = [(PHAudioCallViewController *)self features];
    v8 = [v7 isDominoEnabled];

    if (!v8)
    {
      v6 = 0;
      goto LABEL_8;
    }
  }

  v5 = [(PHAudioCallViewController *)self wallpaperTitleStyleAttributesForCall:v4];
  v6 = [v5 titleColor];
LABEL_7:

LABEL_8:

  return v6;
}

- (id)customColorForParticipantLabelWithCall:(id)a3
{
  v4 = a3;
  v5 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v5 callDisplayStyle] != 3)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v6 = [(PHAudioCallViewController *)self features];
  v7 = [v6 isDominoEnabled];

  if (v7)
  {
    v5 = [(PHAudioCallViewController *)self wallpaperTitleStyleAttributesForCall:v4];
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
  v5 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v5 callDisplayStyle] != 3)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v6 = [(PHAudioCallViewController *)self features];
  v7 = [v6 isDominoEnabled];

  if (v7)
  {
    v5 = [(PHAudioCallViewController *)self wallpaperTitleStyleAttributesForCall:v4];
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
    v6 = [(PHAudioCallViewController *)self getParticipantsView_NotWaiting];
    [(PHAudioCallViewController *)self updateParticipantsLabelForView:v6 isHidden:!v4];
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

  if ((byte_1003B0FE4 & 1) == 0 && !notify_register_check("MPInCallAlertStateChangeNotification", &dword_1003B0FE0))
  {
    byte_1003B0FE4 = 1;
    if (!notify_set_state(dword_1003B0FE0, 1uLL))
    {
      notify_post("MPInCallAlertStateChangeNotification");
    }
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
  if ([(PHAudioCallViewController *)self shouldPresentAlertButton]!= a3)
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController is about to set shouldPresentAlertButton to %d", v6, 8u);
    }

    [(PHAudioCallViewController *)self setShouldPresentAlertButton:v3];
    [(PHAudioCallViewController *)self updateCurrentState];
    [(PHAudioCallViewController *)self triggerAutoCountdownIfAvailable];
  }
}

- (void)startAutoCountdownAlert
{
  [(PHAudioCallViewController *)self setShouldAutoCountdownAlert:1];

  [(PHAudioCallViewController *)self triggerAutoCountdownIfAvailable];
}

- (void)triggerAutoCountdownIfAvailable
{
  if ([(PHAudioCallViewController *)self shouldAutoCountdownAlert]&& ([(PHCallViewController *)self currentState]== 9 || [(PHCallViewController *)self currentState]== 8))
  {
    if ([(PHAudioCallViewController *)self didTriggerAutoCountdownAlertBefore])
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
      v4 = [(PHAudioCallViewController *)self alertCountDownTimer];

      if (!v4)
      {
        v5 = sub_100004F84();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting auto-countdown for alert", buf, 2u);
        }

        [(PHAudioCallViewController *)self setDidTriggerAutoCountdownAlertBefore:1];
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
        v19[2] = sub_10012E1FC;
        v19[3] = &unk_1003576D0;
        objc_copyWeak(&v20, &location);
        v19[4] = buf;
        v18 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v19 block:1.0];
        [(PHAudioCallViewController *)self setAlertCountDownTimer:v18];

        objc_destroyWeak(&v20);
        objc_destroyWeak(&location);
        _Block_object_dispose(buf, 8);
      }
    }
  }
}

- (void)speakAlertUtteranceIfNecessary
{
  if ([(PHAudioCallViewController *)self shouldPresentAlertButton])
  {
    v3 = [(PHAudioCallViewController *)self frontmostCall];
    if ([v3 originatingUIType] == 11 && !-[PHAudioCallViewController didRequestToSpeakAlertUtterance](self, "didRequestToSpeakAlertUtterance"))
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
      v11 = [(PHAudioCallViewController *)self speechSynthesizer];
      [v11 setUsesApplicationAudioSession:v10 != 0];

      v12 = [AVSpeechUtterance speechUtteranceWithString:v8];
      v13 = [(PHAudioCallViewController *)self speechSynthesizer];
      [v13 speakUtterance:v12];

      [(PHAudioCallViewController *)self setDidRequestToSpeakAlertUtterance:1];
    }
  }
}

- (BOOL)isReadyToShowCallDetails
{
  v2 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  v3 = [v2 callDisplayStyle] == 2;

  return v3;
}

- (void)audioDeviceControllerMutedTalkerDidStart:(id)a3
{
  if ([(PHAudioCallViewController *)self audioCallMutedTalkerIsSupported])
  {
    v4 = [(PHAudioCallViewController *)self didNotifyMutedCaller];
    v5 = sub_100004F84();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController: received audioDeviceControllerMutedTalkerDidStart callback, but banner was presented before, skips updating", v8, 2u);
      }
    }

    else
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController: received audioDeviceControllerMutedTalkerDidStart callback, presenting banner", buf, 2u);
      }

      [(PHAudioCallViewController *)self setDidNotifyMutedCaller:1];
      v7 = [(PHAudioCallViewController *)self mutedTalkerBannerViewController];
      [v7 showBanner];

      v5 = [(PHAudioCallViewController *)self mutedTalkerBannerViewController];
      [v5 playBannerSound];
    }
  }
}

- (void)bannerDidGetTap
{
  if ([(PHAudioCallViewController *)self audioCallMutedTalkerIsSupported])
  {
    v3 = [(PHAudioCallViewController *)self buttonsViewController];
    [v3 handleMutedTalkerBannerTap];

    v4 = [(PHAudioCallViewController *)self callDisplayStyleManager];
    v5 = [v4 callDisplayStyle];

    if (v5 == 2)
    {
      v6 = [(PHAudioCallViewController *)self mutedTalkerBannerViewController];
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

  if ([(PHAudioCallViewController *)self shouldUpdateBackgroundForEmergencyCall])
  {
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "we are in emergency call, ignore contact change", &v28, 2u);
    }

    [(PHAudioCallViewController *)self updateViewForEmergencyCallIfNecessary];
    goto LABEL_25;
  }

  v8 = [(PHAudioCallViewController *)self contactsCache];
  v9 = [v4 identifier];
  v10 = [v8 objectForKey:v9];

  v11 = +[UIApplication sharedApplication];
  v12 = [v11 delegate];
  v13 = [v12 isShowingIncomingNameUpdate];

  v14 = [(PHAudioCallViewController *)self presentedViewController];
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

  v17 = [(PHAudioCallViewController *)self contactsCache];
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

    v20 = [(PHAudioCallViewController *)self configurationCache];
    [v20 removeAllObjects];

    [(PHAudioCallViewController *)self updateLayeredBackgroundWallpaper];
  }

  v21 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  if ([v21 callDisplayStyle] != 3)
  {
    goto LABEL_21;
  }

  v22 = [(PHAudioCallViewController *)self features];
  v23 = [v22 isDominoEnabled];

  if (v23)
  {
    v24 = [(PHAudioCallViewController *)self callToUseForWallpaper];
    v21 = [(PHAudioCallViewController *)self contactImageDataForCall:v24];

    v25 = [[UIImage alloc] initWithData:v21];
    [(PHAudioCallViewController *)self setBackgroundImage:v25];

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
    v7 = [(PHAudioCallViewController *)self emergencyCoordinator];
    if (v7)
    {
      v8 = v7;
      v9 = [(PHAudioCallViewController *)self emergencyCoordinator];
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
        v20 = sub_10012ECDC;
        v21 = &unk_100359390;
        objc_copyWeak(&v22, &location);
        v17 = [UIAlertAction actionWithTitle:v16 style:0 handler:&v18];
        [v4 addAction:{v17, v18, v19, v20, v21}];

        objc_destroyWeak(&v22);
        objc_destroyWeak(&location);
      }
    }

    [(PHAudioCallViewController *)self presentViewController:v4 animated:1 completion:0];
  }
}

- (BOOL)isShowSOSConfirmationSupported
{
  v2 = [(PHAudioCallViewController *)self callDisplayStyleManager];
  v3 = [v2 callDisplayStyle] == 2;

  return v3;
}

- (void)screenSharingInteractionController:(id)a3 didUpdateRemoteControlStatus:(BOOL)a4
{
  v4 = a4;
  v6 = [(PHAudioCallViewController *)self featureFlags];
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

    [(PHAudioCallViewController *)self updateScreenSharingDisableUpdateMask];
  }

  else if (v9)
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not updating layer mask for remote control, screen sharing remote control feature flag is disabled", &v11, 2u);
  }
}

- (void)handleCancelPressedInCallBufferScreen
{
  [(PHAudioCallViewController *)self pauseCallBufferTimer];
  v3 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"CANCEL" value:&stru_100361FD0 table:@"InCallService"];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10012F120;
  v20[3] = &unk_100358228;
  v20[4] = self;
  v6 = [UIAlertAction actionWithTitle:v5 style:1 handler:v20];
  [v3 addAction:v6];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"END_CALL_SOS" value:&stru_100361FD0 table:@"InCallService"];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10012F1A0;
  v19[3] = &unk_100358228;
  v19[4] = self;
  v9 = [UIAlertAction actionWithTitle:v8 style:2 handler:v19];
  [v3 addAction:v9];

  [(PHAudioCallViewController *)self presentViewController:v3 animated:1 completion:0];
  objc_initWeak(&location, self);
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10012F320;
  v15 = &unk_100358250;
  v10 = v3;
  v16 = v10;
  objc_copyWeak(&v17, &location);
  v11 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v12 block:5.0];
  [(PHAudioCallViewController *)self setConfirmationTimeoutTimer:v11, v12, v13, v14, v15];

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
  [(PHAudioCallViewController *)self stopMessagePlayback];
  if (+[SOSUtilities shouldPlayAudioDuringCountdown])
  {
    v3 = [(PHAudioCallViewController *)self voiceMessageManager];
    if (v3)
    {
    }

    else if ([(PHAudioCallViewController *)self shouldPlayAudioInCallBufferScreen])
    {
      v4 = [[SOSVoiceMessageManager alloc] initWithMessageType:101];
      [(PHAudioCallViewController *)self setVoiceMessageManager:v4];

      v5 = sub_100004F84();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "startMessagePlayback,starting call buffer voice message", v7, 2u);
      }

      v6 = [(PHAudioCallViewController *)self voiceMessageManager];
      [v6 startMessagePlayback];
    }
  }
}

- (void)stopMessagePlayback
{
  v3 = [(PHAudioCallViewController *)self voiceMessageManager];

  if (v3)
  {
    v4 = sub_100004F84();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "stopMessagePlayback", v6, 2u);
    }

    v5 = [(PHAudioCallViewController *)self voiceMessageManager];
    [v5 stopMessagePlayback];

    [(PHAudioCallViewController *)self setVoiceMessageManager:0];
  }
}

- (void)startCallBufferScreenCountdown
{
  [(PHAudioCallViewController *)self stopCallBufferTimer];
  [(PHAudioCallViewController *)self startMessagePlayback];
  v3 = [(PHAudioCallViewController *)self callBufferTimer];

  if (!v3)
  {
    objc_initWeak(&location, self);
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x2020000000;
    v7[3] = 5;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10012F750;
    v5[3] = &unk_1003576D0;
    objc_copyWeak(&v6, &location);
    v5[4] = v7;
    v4 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v5 block:1.0];
    [(PHAudioCallViewController *)self setCallBufferTimer:v4];

    objc_destroyWeak(&v6);
    _Block_object_dispose(v7, 8);
    objc_destroyWeak(&location);
  }
}

- (void)stopCallBufferTimer
{
  v3 = [(PHAudioCallViewController *)self callBufferTimer];
  v4 = [v3 isValid];

  if (v4)
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController,stopCallBufferTimer", v7, 2u);
    }

    v6 = [(PHAudioCallViewController *)self callBufferTimer];
    [v6 invalidate];

    [(PHAudioCallViewController *)self setCallBufferTimer:0];
  }
}

- (void)restartCallBufferTimer
{
  [(PHAudioCallViewController *)self setShouldPauseSOSCallBufferTimer:0];

  [(PHAudioCallViewController *)self startCallBufferScreenCountdown];
}

- (void)displayDialledNumberDetailsForCallBufferScreen
{
  if (!self->_bufferSingleCallLabelView)
  {
    v3 = [PHSingleCallParticipantLabelView alloc];
    v4 = [(PHAudioCallViewController *)self callDisplayStyleManager];
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

    v9 = [(PHAudioCallViewController *)self view];
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
    v22 = [(PHAudioCallViewController *)self view];
    v23 = [v22 safeAreaLayoutGuide];
    v24 = [v23 topAnchor];
    +[TPIncomingCallMetricsProvider sixPercentOfDeviceHeight];
    v25 = [v21 constraintEqualToAnchor:v24 constant:?];

    v26 = [(PHSingleCallParticipantLabelView *)self->_bufferSingleCallLabelView centerXAnchor];
    v27 = [(PHAudioCallViewController *)self view];
    v28 = [v27 centerXAnchor];
    v29 = [v26 constraintEqualToAnchor:v28];

    v30 = [(PHSingleCallParticipantLabelView *)self->_bufferSingleCallLabelView leadingAnchor];
    v31 = [(PHAudioCallViewController *)self view];
    v32 = [v31 readableContentGuide];
    v33 = [v32 leadingAnchor];
    v34 = [v30 constraintEqualToAnchor:v33];

    v35 = [(PHSingleCallParticipantLabelView *)self->_bufferSingleCallLabelView trailingAnchor];
    v36 = [(PHAudioCallViewController *)self view];
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

- (void)addPosterBlurToPosterVC:(id)a3 nameLabelWrapper:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v19 = v6;
    v7 = +[_TtC13InCallService23SensitivityFeatureFlags isCommunicationSafetyEnabled];
    v8 = sub_100004F84();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Creating posterSensitiveBlurView with isCommunicationSafetyEnabled: %d", buf, 8u);
    }

    v9 = [[_TtC13InCallService35PHContactWallpaperSensitiveBlurView alloc] initWithIsCommunicationSafety:v7];
    [(PHContactWallpaperSensitiveBlurView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    if (!v7)
    {
      objc_initWeak(buf, v9);
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100130360;
      v29[3] = &unk_100356F60;
      objc_copyWeak(&v30, buf);
      [(PHContactWallpaperSensitiveBlurView *)v9 setDidTapRevealButton:v29];
      objc_destroyWeak(&v30);
      objc_destroyWeak(buf);
    }

    v10 = [v5 view];
    [v10 addSubview:v9];

    v27 = [(PHContactWallpaperSensitiveBlurView *)v9 topAnchor];
    v28 = [v5 view];
    v26 = [v28 topAnchor];
    v25 = [v27 constraintEqualToAnchor:v26];
    v31[0] = v25;
    v23 = [(PHContactWallpaperSensitiveBlurView *)v9 bottomAnchor];
    v24 = [v5 view];
    v22 = [v24 bottomAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v31[1] = v21;
    v20 = [(PHContactWallpaperSensitiveBlurView *)v9 trailingAnchor];
    v11 = [v5 view];
    v12 = [v11 trailingAnchor];
    v13 = [v20 constraintEqualToAnchor:v12];
    v31[2] = v13;
    v14 = [(PHContactWallpaperSensitiveBlurView *)v9 leadingAnchor];
    v15 = [v5 view];
    v16 = [v15 leadingAnchor];
    v17 = [v14 constraintEqualToAnchor:v16];
    v31[3] = v17;
    v18 = [NSArray arrayWithObjects:v31 count:4];
    [NSLayoutConstraint activateConstraints:v18];

    [TPIncomingCallMetricsProvider addCallerNameView:v19 toContainerView:v9];
    v6 = v19;
  }
}

- (UIStackView)middlePillContainer
{
  if (!self->_middlePillContainer)
  {
    v3 = objc_alloc_init(UIStackView);
    middlePillContainer = self->_middlePillContainer;
    self->_middlePillContainer = v3;

    [(UIStackView *)self->_middlePillContainer setSpacing:8.0];
    [(UIStackView *)self->_middlePillContainer setAxis:1];
    [(UIStackView *)self->_middlePillContainer setAlignment:0];
    [(UIStackView *)self->_middlePillContainer setDistribution:3];
    [(UIStackView *)self->_middlePillContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [(PHAudioCallViewController *)self view];
    [v5 addSubview:self->_middlePillContainer];

    v6 = objc_alloc_init(UIView);
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [v6 heightAnchor];
    v8 = [v7 constraintGreaterThanOrEqualToConstant:0.0];
    [v8 setActive:1];

    [(UIStackView *)self->_middlePillContainer addArrangedSubview:v6];
  }

  [(PHAudioCallViewController *)self setUpMiddlePillContainerConstraints];
  v9 = self->_middlePillContainer;

  return v9;
}

- (void)setUpMiddlePillContainerConstraints
{
  if (self->_middlePillContainer)
  {
    if (self->_middlePillContainerLayoutConstraints)
    {
      v3 = [(PHAudioCallViewController *)self middlePillContainerLayoutConstraints];
      [NSLayoutConstraint deactivateConstraints:v3];
    }

    v4 = [[NSMutableArray alloc] initWithArray:&__NSArray0__struct];
    if (-[PHAudioCallViewController middleViewState](self, "middleViewState") == 2 && (-[PHAudioCallViewController keypadViewController](self, "keypadViewController"), v5 = objc_claimAutoreleasedReturnValue(), [v5 view], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "superview"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5, v7))
    {
      v8 = [(PHAudioCallViewController *)self keypadViewController];
      v9 = [v8 view];
      v10 = [v9 topAnchor];
      v11 = [(UIStackView *)self->_middlePillContainer bottomAnchor];
      v12 = [v10 constraintEqualToAnchor:v11 constant:10.0];
      [v4 addObject:v12];

      v13 = [(PHAudioCallViewController *)self keypadViewController];
      v14 = [v13 view];
      v15 = [v14 trailingAnchor];
      v16 = [(UIStackView *)self->_middlePillContainer trailingAnchor];
      v17 = [v15 constraintEqualToAnchor:v16 constant:-10.0];
      [v4 addObject:v17];

      v18 = [(PHAudioCallViewController *)self keypadViewController];
      v19 = [v18 view];
      v20 = [v19 leadingAnchor];
      v21 = [(UIStackView *)self->_middlePillContainer leadingAnchor];
      v22 = 10.0;
    }

    else
    {
      v23 = [(PHAudioCallViewController *)self buttonsViewController];
      v24 = [v23 view];
      v25 = [v24 superview];

      if (!v25)
      {
        v18 = sub_100004F84();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *v45 = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] Setting middlePillContainer constraints but the buttonViewController was not in the view hierarchy", v45, 2u);
        }

        goto LABEL_13;
      }

      v26 = +[UIScreen mainScreen];
      [v26 bounds];
      v28 = v27;
      v30 = v29;

      if (v28 >= v30)
      {
        v31 = v30;
      }

      else
      {
        v31 = v28;
      }

      v32 = v31 * 0.102;
      v33 = [(UIStackView *)self->_middlePillContainer trailingAnchor];
      v34 = [(PHAudioCallViewController *)self buttonsViewController];
      v35 = [v34 view];
      v36 = [v35 trailingAnchor];
      v37 = [v33 constraintEqualToAnchor:v36 constant:10.0 - v32];
      [v4 addObject:v37];

      v38 = [(UIStackView *)self->_middlePillContainer leadingAnchor];
      v39 = [(PHAudioCallViewController *)self buttonsViewController];
      v40 = [v39 view];
      v41 = [v40 leadingAnchor];
      v42 = [v38 constraintEqualToAnchor:v41 constant:v32 + -10.0];
      [v4 addObject:v42];

      v18 = [(PHAudioCallViewController *)self buttonsViewController];
      v19 = [v18 view];
      v20 = [v19 topAnchor];
      v21 = [(UIStackView *)self->_middlePillContainer bottomAnchor];
      v22 = 20.0;
    }

    v43 = [v20 constraintEqualToAnchor:v21 constant:v22];
    [v4 addObject:v43];

LABEL_13:
    [(PHAudioCallViewController *)self setMiddlePillContainerLayoutConstraints:v4];
    v44 = [(PHAudioCallViewController *)self middlePillContainerLayoutConstraints];
    [NSLayoutConstraint activateConstraints:v44];
  }
}

- (BOOL)middlePillContainerIsShowing
{
  v3 = [(PHAudioCallViewController *)self activeCall];
  v4 = [v3 recordingSession];
  if ([v4 recordingState] == 1)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(PHAudioCallViewController *)self activeCall];
    v7 = [v6 recordingSession];
    if ([v7 recordingState] == 2)
    {
      v5 = 1;
    }

    else
    {
      v8 = [(PHAudioCallViewController *)self activeCall];
      v9 = [v8 recordingSession];
      v5 = [v9 recordingState] == 3;
    }
  }

  v10 = [(UIStackView *)self->_middlePillContainer arrangedSubviews];
  if ([v10 containsObject:self->_screenSharingIndicatorView])
  {
    v11 = 1;
  }

  else
  {
    v12 = [(UIStackView *)self->_middlePillContainer arrangedSubviews];
    v11 = (([v12 containsObject:self->_waitOnHoldTipView] | v5) & 1) != 0 || self->_callRecordingCountdownShowing;
  }

  return v11;
}

- (void)updateTranslationBackgroundView:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHAudioCallViewController *)self renderingViewController];

  if (v5)
  {
    if (v3)
    {
      v6 = [(PHAudioCallViewController *)self translationBackgroundView];

      if (!v6)
      {
        v7 = [(PHAudioCallViewController *)self createPosterBlurryBackgroundView];
        [(PHAudioCallViewController *)self setTranslationBackgroundView:v7];

        v8 = [(PHAudioCallViewController *)self posterContainer];
        [v8 frame];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v17 = [(PHAudioCallViewController *)self translationBackgroundView];
        [v17 setFrame:{v10, v12, v14, v16}];
      }

      v18 = [(PHAudioCallViewController *)self view];
      v19 = [(PHAudioCallViewController *)self translationBackgroundView];
      v20 = [(PHAudioCallViewController *)self posterContainer];
      [v18 insertSubview:v19 above:v20];

      v21 = [(PHAudioCallViewController *)self translationController];
      v22 = [(PHAudioCallViewController *)self translationBackgroundView];
      v23 = [v22 contentView];
      [v21 updateContentView:v23 updateVisibility:0];

      [(PHAudioCallViewController *)self updateTranslationPosterName:1];
      v24 = [(PHAudioCallViewController *)self translationBackgroundView];
      [v24 setAlpha:0.0];

      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100130E54;
      v33[3] = &unk_100356988;
      v33[4] = self;
      [UIView animateWithDuration:4 delay:v33 options:&stru_100359E30 animations:0.200000003 completion:0.0];
    }

    else
    {
      [(PHAudioCallViewController *)self updateTranslationPosterName:0];
      v26 = [(PHAudioCallViewController *)self getParticipantsView_NotWaiting];
      [(PHAudioCallViewController *)self updateParticipantConstraintsForPosterName:v26];
      v27 = [(PHAudioCallViewController *)self translationBackgroundView];

      if (v27)
      {
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_100130EA0;
        v32[3] = &unk_100356988;
        v32[4] = self;
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_100130EE8;
        v30[3] = &unk_100359E58;
        v30[4] = self;
        v31 = 0;
        [UIView animateWithDuration:4 delay:v32 options:v30 animations:0.200000003 completion:0.0];
      }
    }
  }

  else
  {
    v25 = [(PHAudioCallViewController *)self defaultBackgroundGradientView];

    v29 = [(PHAudioCallViewController *)self translationController];
    if (v25)
    {
      [(PHAudioCallViewController *)self defaultBackgroundGradientView];
    }

    else
    {
      [(PHAudioCallViewController *)self view];
    }
    v28 = ;
    [v29 updateContentView:v28 updateVisibility:1];
  }
}

- (void)updateTranslationPosterName:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHAudioCallViewController *)self renderingViewController];

  if (v5)
  {
    v6 = [(PHAudioCallViewController *)self translationBackgroundView];

    if (v6)
    {
      if (v3)
      {
        v7 = [(PHAudioCallViewController *)self detachedPosterNameViewModel];

        if (!v7)
        {
          v8 = [(PHAudioCallViewController *)self translationBackgroundView];
          v9 = [v8 contentView];
          [(PHAudioCallViewController *)self createDetachedPosterNameViewModel:v9];
        }
      }

      else
      {
        [(PHAudioCallViewController *)self setDetachedPosterNameViewModel:0];
      }

      [(PHAudioCallViewController *)self _updatePosterNameAlpha];

      [(PHAudioCallViewController *)self _updateStatusLabelVisibility];
    }
  }
}

- (PHInCallRootViewControllerProtocol)inCallRootViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_inCallRootViewController);

  return WeakRetained;
}

- (void)presentWaitOnHoldEndForAnotherCallAlertWithCallerName:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  PHAudioCallViewController.presentWaitOnHoldEndForAnotherCallAlert(callerName:completionHandler:)(v6, v8, sub_10016D3D8, v9);
}

- (BOOL)fetchLockState
{
  v2 = self;
  v3 = sub_100164A2C();

  return v3;
}

- (id)makeLockObserverWithHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  PHAudioCallViewController.makeLockObserver(with:)(sub_10016D3D8, v5, v9);

  sub_100008878(v9, v9[3]);
  v7 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_100005B2C(v9);

  return v7;
}

- (void)showNameAndPhotoHUDIfNecessaryWithBannerPresentationManager:(id)a3 callCenter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100164C38();
}

- (void)presentMoreMenu:(id)a3 source:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1001657F0(v6, a4);
}

- (void)presentMoreMenu:(id)a3 source:(id)a4 alongsideTransition:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    *(swift_allocObject() + 16) = v8;
    v8 = sub_10016D258;
  }

  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_100165888();
  sub_1000081F4(v8);
}

- (id)createPosterBlurryBackgroundView
{
  v2 = self;
  v3 = sub_100166390();

  return v3;
}

- (void)updateTextFieldPadding:(id)a3 padding:(double)a4
{
  v6 = a3;
  v7 = self;
  sub_100166BC4(v6, a4);
}

- (void)presentShareCard:(id)a3 source:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100166CE0(v6, a4);
}

- (void)startCallRecording
{
  v2 = self;
  sub_100167538();
}

- (void)stopCallRecording
{
  v2 = self;
  sub_100167638();
}

- (void)showAddParticipantSheet
{
  v2 = self;
  sub_100167728();
}

- (void)presentContactCard
{
  v2 = self;
  sub_100167824();
}

- (void)addDimmingView
{
  v2 = self;
  sub_1001684DC();
}

- (void)updateDimmingView
{
  v2 = self;
  sub_1001688C4();
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

- (void)deleteAllUnarchivedPosterDirectories
{
  v2 = self;
  sub_1001691DC();
}

- (BOOL)shouldShowMergeCalls
{
  v2 = self;
  sub_100169D94();
  v4 = v3;

  return v4 & 1;
}

- (void)blockWithHandle:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10016A860(v4);
}

- (void)reportWithCall:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10016AB8C(v4);
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
  PHAudioCallViewController.contactViewController(_:didCompleteWith:)(v8, v10);
}

- (void)updateBackgroundForEmergencyCall
{
  v2 = self;
  sub_10016B6E0();
}

- (void)presentFullScreenPeoplePicker
{
  v2 = self;
  sub_10016B920();
}

- (void)dismissPeoplePicker
{
  v2 = self;
  sub_10016C570();
}

- (void)updateCallRecordingIfNeededWithButtonContainer:(id)a3 pillContainer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.value.super.super.super.isa = self;
  isa = v12.value.super.super.super.isa;
  v11.value.super.super.super.isa = a3;
  v11.is_nil = a4;
  PHAudioCallViewController.updateCallRecordingIfNeeded(buttonContainer:pillContainer:)(v11, v12);
}

- (void)invertColorCallRecordingButtonColor:(BOOL)a3
{
  v4 = self;
  PHAudioCallViewController.invertColorCallRecordingButtonColor(_:)(a3);
}

- (void)addCallRecordingIfNeededWithButtonContainer:(id)a3 pillContainer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_100170E54(a3, a4);
}

- (void)addRecordingIndicatorWithPillContainer:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100170FC4(a3);
}

- (BOOL)callRecordingAllowed
{
  v2 = self;
  v3 = PHAudioCallViewController.callRecordingAllowed.getter();

  return v3 & 1;
}

- (BOOL)isCallRecordingActive
{
  v2 = self;
  v3 = PHAudioCallViewController.isCallRecordingActive.getter();

  return v3 & 1;
}

- (void)updateCallRecordingViewBackgroundMaterialType:(unint64_t)a3
{
  v4 = self;
  PHAudioCallViewController.updateCallRecordingViewBackgroundMaterialType(_:)(a3);
}

- (void)updatePosterDimmingAreaWith:(CGRect)a3
{
  v3 = self;
  sub_1001C8A80();
}

- (void)updateDimmingValuesFor:(unsigned __int16)a3
{
  v4 = self;
  sub_1001C8BA8(a3);
}

- (void)insertBelowDimmingLayerWithNewView:(id)a3 containerView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1001C8C9C(v6, v7);
}

- (void)createPosterContainerWithDimmingLayer
{
  v2 = self;
  sub_1001C8DC0();
}

- (void)addWebRTCViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001CC7EC();
}

- (void)removeWebRTCViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001CD1E8();
}

- (void)requestToEnableVideoStreamingButton
{
  v2 = self;
  sub_1001CD444();
}

- (void)requestToDisableVideoStreamingButton
{
  v2 = self;
  sub_1001CD604(&selRef_setShouldEnableVideoStreamingButton_, 0);
}

- (void)requestToEnableMediaUploadButton
{
  v2 = self;
  sub_1001CD604(&selRef_setShouldEnableShareMediaButton_, 1);
}

- (void)requestToDisableMediaUploadButton
{
  v2 = self;
  sub_1001CD604(&selRef_setShouldEnableShareMediaButton_, 0);
}

- (void)hideWebRTCViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001CD70C();
}

- (void)removeWebRTCViewControllerForPIP:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001CD8E0(v4);
}

- (void)addMediaRequestViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001CDA84();
}

- (void)removeMediaRequestViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001CDFF4();
}

- (void)insertWebViewUnderButtonControls:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001CE1DC();
}

- (void)bringWebRTCViewControllerToFront:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001CE838(v4);
}

- (void)requestAnimationToFullScreenWebView
{
  v2 = self;
  sub_1001CE9DC();
}

- (void)requestToRemoveEnhancedEmergencyIntermittentStateLabel
{
  v2 = self;
  sub_1001CEC18();
}

- (void)requestToPresentMediaUploadRequestBanner
{
  v2 = self;
  sub_1001CF0BC("EnhancedEmergency: PHAudioCallViewController trying to request mediaUploadRequest banner", &BannerPresentationManager.showEnhancedEmergenctMediaUploadHUD(), &BannerPresentationManager.showEnhancedEmergencyRTTMediaUploadHUD());
}

- (void)requestToPresentMediaUploadRequestBannerDuringStreaming
{
  v2 = self;
  sub_1001CEDC0();
}

- (void)requestHapticForRequest
{
  v2 = self;
  sub_1001CF000();
}

- (void)requestToPresentVideoStreamingRequestBanner
{
  v2 = self;
  sub_1001CF0BC("EnhancedEmergency: PHAudioCallViewController trying to request videoStreaming banner", &BannerPresentationManager.showEnhancedEmergenctVideoStreamingHUD(), &BannerPresentationManager.showEnhancedEmergencyRTTVideoStreamingHUD());
}

- (void)requestToAddErrorLabelWithRetryable:(BOOL)a3
{
  v3 = self;
  sub_1001CF420();
}

- (void)requestToAddResumeCameraLabel
{
  v2 = self;
  sub_1001CF484();
}

- (void)requestToAddMitigationLabel
{
  v2 = self;
  sub_1001CF8E0(2, &unk_10035E560, sub_1001D1740, &unk_10035E578);
}

- (void)requestToAddPhotoMitigationLabel
{
  v2 = self;
  sub_1001CF8E0(3, &unk_10035E510, sub_1001D17F8, &unk_10035E528);
}

- (void)updateEnhancedEmergencyViewWhenKeypadPresented
{
  v2 = self;
  sub_1001CFC84();
}

- (void)addEnhancedEmergencyIntermittentStateLabelWithState:(int64_t)a3
{
  v4 = self;
  sub_1001CFDA8(a3);
}

- (void)removeEnhancedEmergencyIntermittentStateLabel
{
  v2 = self;
  sub_1001D0E64();
}

- (void)showCallControls
{
  v2 = self;
  sub_1001D0FA0();
}

- (void)hideCallControls
{
  v2 = self;
  sub_1001D114C();
}

- (id)getCurrentCall
{
  v2 = self;
  v3 = sub_1001D13E4();

  return v3;
}

- (void)showRTTConversation
{
  v2 = self;
  sub_1001D1460();
}

- (void)hideRTTConversationIfNeeded
{
  v2 = self;
  sub_1001D1578();
}

- (id)getAudioRouteMenu
{
  v2 = self;
  v3 = sub_1001D16B0();

  return v3;
}

- (void)setupCallHoldingObservers
{
  v2 = self;
  iPadAudioCallViewController.setupCallHoldingObservers()();
}

- (void)endWaitOnHoldSession
{
  v2 = self;
  PHAudioCallViewController.endWaitOnHoldSession()();
}

- (void)invertColorCallHoldingButtonColor:(BOOL)a3
{
  v4 = self;
  PHAudioCallViewController.invertColorCallHoldingButtonColor(_:)(a3);
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

- (void)tipKitStartWaitOnHoldObservation
{
  v2 = self;
  sub_10024E71C();
}

@end