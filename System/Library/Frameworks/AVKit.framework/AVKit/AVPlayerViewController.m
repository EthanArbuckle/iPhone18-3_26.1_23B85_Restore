@interface AVPlayerViewController
+ (BOOL)usesSecondGenerationControls;
+ (NSArray)mediaCharacteristicsForSupportedCustomMediaSelectionSchemes;
+ (id)keyPathsForValuesAffectingTransportBarCustomMenuItems;
+ (int64_t)_determineControlsGeneration;
+ (int64_t)preferredControlsGeneration;
+ (void)setPreferredControlsGeneration:(int64_t)a3;
+ (void)setUsesSecondGenerationControls:(BOOL)a3;
- ($175F2685EF764341F5DD80B75CC65478)controlsViewController:(id)a3 contentTabPresentationInfoWithPreferredHeight:(double)a4;
- (AVBehaviorStorage)_behaviorStorage;
- (AVCatalystGlassPlaybackControlsController)catalystPlaybackControlsController;
- (AVLayerVideoGravity)videoGravity;
- (AVMobileChromeControlsViewController)_createPreferredControlsViewController;
- (AVMobileControlsViewController)controlsViewController;
- (AVPlaybackControlsController)chromePlaybackControlsController;
- (AVPlayer)contentTransitioningPlayer;
- (AVPlayerViewController)initWithCoder:(id)a3;
- (AVPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (AVPlayerViewController)initWithPlayerLayerView:(id)a3;
- (AVPlayerViewControllerConfiguration)configuration;
- (AVPlayerViewControllerContentTransitioning_NewsOnly)contentTransitioningDelegate;
- (AVPlayerViewControllerCustomControlsView)customControlsView;
- (AVPresentationContext)presentationContext;
- (AVTransitionController)_transitionController;
- (BOOL)_canEnterFullScreen;
- (BOOL)_contentTabsVisible;
- (BOOL)_controlsViewControllerPrefersStatusBarHidden;
- (BOOL)_delegateRespondsTo:(SEL)a3;
- (BOOL)_hoverGestureRecognizer:(id)a3 hasCursorOverView:(id)a4;
- (BOOL)_isDescendantOfRootViewController;
- (BOOL)_isTrackingUserInteractionWithInteractiveView;
- (BOOL)_isTransitioningToOrFromFullScreen;
- (BOOL)_isUnsupportedContent;
- (BOOL)_shouldPausePlaybackWhenExitingFullscreen;
- (BOOL)_shouldShowPictureInPictureButton;
- (BOOL)_wantsNowPlayingInfoCenter:(BOOL)a3;
- (BOOL)analysisInteractionInProgress;
- (BOOL)avkit_isEffectivelyFullScreen;
- (BOOL)avkit_isVisible;
- (BOOL)canControlPlayback;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)hasActiveTransition;
- (BOOL)hasCustomPlaybackControls;
- (BOOL)isAudioOnlyContent;
- (BOOL)isContentTransitionInteractive;
- (BOOL)isPresentedFullScreen;
- (BOOL)isPresentingFullScreenFromInline;
- (BOOL)isPresentingFullWindow;
- (BOOL)isStartNextContentTransitionButtonEnabled;
- (BOOL)isStartPreviousContentTransitionButtonEnabled;
- (BOOL)isVideoZoomableInViewBounds;
- (BOOL)modalPresentationCapturesStatusBarAppearance;
- (BOOL)observesMediaSelectionForSmartSubtitlesController:(id)a3;
- (BOOL)playerControllerCanRestorePlaybackRateAfterAudioSessionDeactivation:(id)a3;
- (BOOL)prefersStatusBarHidden;
- (BOOL)transitionController:(id)a3 gestureRecognizer:(id)a4 shouldReceiveTouch:(id)a5;
- (BOOL)transitionControllerCanBeginInteractiveDismissalTransition:(id)a3;
- (BOOL)transitionControllerCanBeginInteractivePresentationTransition:(id)a3;
- (BOOL)volumeControlsCanShowSlider;
- (CGAffineTransform)overrideTransformForProminentPlayButton;
- (CGRect)avkit_videoRectInWindow;
- (CGRect)videoBounds;
- (CGSize)secondScreenConnectionDisplaySize;
- (CGSize)videoDisplaySize;
- (NSArray)behaviors;
- (NSDictionary)pixelBufferAttributes;
- (NSMutableDictionary)_targetVideoGravitiesForLayoutClass;
- (UIAction)toggleLookupAction;
- (UIEdgeInsets)_clientLegibleContentInsets;
- (UIEdgeInsets)legibleContentInsets;
- (UIEdgeInsets)playerViewControllerContentViewEdgeInsetsForLetterboxedVideo:(id)a3;
- (UIView)contentOverlayView;
- (UIView)contentTransitioningOverlayView;
- (UIView)customContentTransitioningInfoPanel;
- (UIView)iAdPrerollView;
- (UIViewController)fullScreenViewController;
- (UIViewController)viewControllerForFullScreenPresentation;
- (double)_applyNonlinearScaleToScrubGestureVelocity:(double)a3;
- (double)_availableSpaceForContentTabWithVideoDodgingForSize:(CGSize)a3;
- (double)_seekDistanceForScrubGestureWithVelocity:(double)a3;
- (double)defaultPlaybackRate;
- (double)videoDisplayScale;
- (id)_activeViewControllerForContentView;
- (id)_catalystGlassControlsViewController;
- (id)_chromeControlsViewController;
- (id)_contentTabPanGestureRecognizer;
- (id)_contentTabPresentationContext;
- (id)_currentAnalysis;
- (id)_defaultInfoViewActions;
- (id)_fullScreenController;
- (id)_newsWidgetPlayerBehaviorContext;
- (id)_newsWidgetPlayerLegacyBehavior;
- (id)_preferredDynamicRangeForAutomaticModeWithHeadroomUsage:(id *)a1;
- (id)_volumeController;
- (id)avkit_pictureInPictureViewController;
- (id)controlsViewController:(id)a3 displayNameForMediaSelectionOption:(id)a4;
- (id)delegate;
- (id)interactiveContentOverlayView;
- (id)keyCommands;
- (id)playButtonHandlerForLazyPlayerLoading;
- (id)playbackContainerViewForFullScreenViewController:(id)a3;
- (id)transitionController:(id)a3 configurationForPresentedViewController:(id)a4 presentingViewController:(id)a5;
- (id)transitionController:(id)a3 targetViewForDismissingViewController:(id)a4;
- (id)transitionControllerBackgroundViewBackgroundColor:(id)a3;
- (id)transitionControllerPresentedViewBackgroundColor:(id)a3;
- (id)transitioningDelegate;
- (int64_t)_preferredModalPresentationStyle;
- (int64_t)activeContentTransitionType;
- (int64_t)overrideUserInterfaceStyle;
- (int64_t)preferredStatusBarStyle;
- (uint64_t)_isReadyToConnectSynchronousChecks;
- (uint64_t)_performInitialSetup;
- (uint64_t)_updateControlsViewControllerPerformanceState;
- (uint64_t)_updateControlsVisibilityPolicyAnimated:(uint64_t)result;
- (uint64_t)_updateExcludedControls;
- (uint64_t)_updateIncludedControls;
- (uint64_t)_updateScrubbingGestureEnabledState;
- (uint64_t)_updateSecondGenerationControlsGestureEnablementStates;
- (uint64_t)_updateTapThroughGestureRecognizerEnablementState;
- (uint64_t)_updateVisualAnalysisViewActiveInteractionTypes;
- (uint64_t)_updateVisualAnalysisViewHiddenState;
- (void)_addObservers;
- (void)_addObserversOnControlsViewController;
- (void)_attachContentTabPanGestureRecognizerIfNeeded;
- (void)_avkitDidBeginPresentationTransition;
- (void)_avkitWillBeginPresentationTransition;
- (void)_beginScrubGestureIfNeeded;
- (void)_beginTrackingUserInteraction;
- (void)_contentViewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)_controlsViewController:(id)a3 willBeginContentTabTransitionWithContext:(id)a4;
- (void)_copySubjectMenuItemPressedEvent:(id)a3;
- (void)_createPictureInPictureControllerIfNeeded;
- (void)_didBeginPlayingOnSecondScreen;
- (void)_didEndPlayingOnSecondScreen;
- (void)_endScrubGestureIfActive;
- (void)_endTrackingUserInteraction;
- (void)_ensureBehaviorStorage;
- (void)_enterFullScreenWhenPlayingIfNeeded;
- (void)_handleDoubleTapGesture:(id)a3;
- (void)_handleFastForwardKeyPressedCommand:(id)a3;
- (void)_handleFastForwardKeyReleasedCommand:(id)a3;
- (void)_handleGoToBeginningKeyCommand:(id)a3;
- (void)_handleHoverGestureRecognizer:(id)a3;
- (void)_handlePlaybackToggleNotificationForMetricsCollectionEvent;
- (void)_handleRewindKeyPressedCommand:(id)a3;
- (void)_handleRewindKeyReleasedCommand:(id)a3;
- (void)_handleScrubbingGestureRecognizer:(id)a3;
- (void)_handleShowNextFrameKeyCommand:(id)a3;
- (void)_handleShowPreviousFrameKeyCommand:(id)a3;
- (void)_handleSingleTapGesture:(id)a3;
- (void)_handleSkipAhead15SecondsKeyCommand:(id)a3;
- (void)_handleSkipBack15SecondsKeyCommand:(id)a3;
- (void)_handleUserInteractionObservationRecognizer:(id)a3;
- (void)_handleVideoGravityPinchGesture:(id)a3;
- (void)_handleVolumeDownKeyPressedCommand:(id)a3;
- (void)_handleVolumeDownKeyReleasedCommand:(id)a3;
- (void)_handleVolumeUpKeyPressedCommand:(id)a3;
- (void)_handleVolumeUpKeyReleasedCommand:(id)a3;
- (void)_mediaSelectionDoneButtonTapped:(id)a3;
- (void)_notifyDelegateOfAnalysisCalloutAction;
- (void)_notifyOfMetricsCollectionEvent:(int64_t)a3;
- (void)_playPauseButtonWasPressedEvent:(id)a3;
- (void)_resetVisualAnalysisViewSelectionIfNeeded;
- (void)_seekForScrubGestureWithVelocity:(double)a3;
- (void)_setContentViewOnSelf;
- (void)_setSecondScreenConnectionReadyToConnect:(BOOL)a3;
- (void)_setUpEnhanceDialogueControllerIfNeeded;
- (void)_setUpGestureRecognizersIfNeeded;
- (void)_setUpSecondScreenConnectionIfNeeded;
- (void)_setUpVideoFrameVisualAnalyzerIfNeeded;
- (void)_setUpVisualAnalysisViewIfNeeded;
- (void)_setupInfoTabViewController;
- (void)_setupInterstitialControllerDelegateIfNeeded;
- (void)_setupToggleVisualLookupActionIfNeeded;
- (void)_startPlayerLayerViewObservationsIfNeeded;
- (void)_togglePictureInPicture;
- (void)_togglePlaybackForCenterTapGesture:(id)a3;
- (void)_transitionFromDetachedFullScreenPresentationToInlineAnimated:(BOOL)a3 completionHandler:(id)a4;
- (void)_transitionFromFullScreenAnimated:(BOOL)a3 interactive:(BOOL)a4 completionHandler:(id)a5;
- (void)_transitionFromFullScreenPresentationToInlineAnimated:(BOOL)a3 interactive:(BOOL)a4 completionHandler:(id)a5;
- (void)_transitionFromFullScreenWithReason:(int64_t)a3 animated:(BOOL)a4 completionHandler:(id)a5;
- (void)_transitionToAttachedFullScreenAnimated:(BOOL)a3 interactive:(BOOL)a4 completionHandler:(id)a5;
- (void)_transitionToDetachedFullScreenCompletionHandler:(id)a3;
- (void)_transitionToFullScreenAnimated:(BOOL)a3 interactive:(BOOL)a4 completionHandler:(id)a5;
- (void)_updateActivePlaybackSpeedIfNeeded;
- (void)_updateActuallyRequiresLinearPlayback;
- (void)_updateAnalysisButtonBottomInsetIfNeeded;
- (void)_updateAnalysisViewImageAnalysis;
- (void)_updateAnalysisViewSuperview;
- (void)_updateAudioOnlyContentStateIfNeeded;
- (void)_updateAudioOnlyIndicatorView;
- (void)_updateContentOverlayViewSuperview;
- (void)_updateContentViewEdgeInsetsForLetterboxedContent;
- (void)_updateControlsViewControllerInitialState;
- (void)_updateControlsViewControllerVideoScaledStateIfNeeded;
- (void)_updateCustomControlsViewStateWithVisibleControlsSet:(unint64_t)a3;
- (void)_updateCustomControlsViewSuperViewIfNeeded;
- (void)_updateCustomInfoViewControllersIfNeeded;
- (void)_updateDefaultLinearPlaybackRateIfNeeded;
- (void)_updateDefaultPlaybackRateIfNeeded;
- (void)_updateEnhanceDialogueEnabled;
- (void)_updateExternalPlaybackIndicatorView;
- (void)_updateGesturesEnablementStates;
- (void)_updateInfoTabViewControllerIfNeeded;
- (void)_updateInfoTabViewControllerPreferredContentSizeIfNeededToFitSize:(double)a3;
- (void)_updateMenuGroupAttributes;
- (void)_updateNowPlayingInfoController;
- (void)_updateNowPlayingInfoControllerSuspendedState;
- (void)_updatePiPControllerCanStartAutomaticallyWhenEnteringBackground;
- (void)_updatePlaybackBeganAfterPlayerControllerBecameReadyToPlayIfNeeded;
- (void)_updatePlaybackControlsCanHideStateIfNeeded;
- (void)_updatePlaybackControlsState;
- (void)_updatePlayerControllerInspectionState;
- (void)_updatePlayerControllerLegibleOptionsForSmartSubtitleDisplayType:(void *)a1;
- (void)_updatePlayerLayerLegibleContentInsetsIfNeeded;
- (void)_updatePreferredDisplayDynamicRange;
- (void)_updatePreferredDynamicRangeForAutomaticMode;
- (void)_updatePreferredDynamicRangeForAutomaticModeWithHeadroomUsage:(void *)a1;
- (void)_updatePrefersFullScreenStyleForEmbeddedMode;
- (void)_updateSecondGenerationContentTabsGestureEnablementState;
- (void)_updateSecondScreenConnectionPlayingState;
- (void)_updateSecondScreenConnectionReadyToConnect;
- (void)_updateSelectedPlaybackSpeedIfPlayerControllerRateChanges;
- (void)_updateShowsAnalysisControl;
- (void)_updateSmartSubtitlesEnablementIfNeeded;
- (void)_updateStatusBarGradientViewVisibility;
- (void)_updateSupplementalSubtitlesIfNecessary;
- (void)_updateTips;
- (void)_updateUnsupportedContentIndicatorView;
- (void)_updateVideoGravityPinchGestureEnablementState;
- (void)_updateViewControllerPreferencesIfNeeded;
- (void)_updateVisualAnalyzerEnabledStateIfNeeded;
- (void)_updateVolumeController;
- (void)_updateWantsAnalysisButtonVisibleStateIfNeeded;
- (void)_visualLookupMenuItemPressedEvent:(id)a3;
- (void)_volumeButtonWasPressedEvent:(id)a3;
- (void)activeContentViewDidChange;
- (void)addBehavior:(id)a3;
- (void)avkit_beginReducingResourcesForPictureInPictureViewController:(id)a3 playerController:(id)a4;
- (void)avkit_endReducingResourcesForPictureInPictureViewController:(id)a3 playerController:(id)a4;
- (void)avkit_startRoutingVideoToPictureInPictureViewController:(id)a3;
- (void)avkit_willBeginStoppingPictureInPictureForPictureInPictureViewController:(id)a3;
- (void)chromelessControlsViewController:(id)a3 didSelectSetting:(id)a4 forSelector:(id)a5;
- (void)controlsViewController:(id)a3 willBeginUpdatingVisibleControlsTo:(unint64_t)a4 withAnimationCoordinator:(id)a5;
- (void)controlsViewControllerDidPressLiveTextButton:(id)a3;
- (void)controlsViewControllerDidUpdateLayoutGuides:(id)a3;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)a3;
- (void)didPresentInterstitialGroup:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enterFullScreen:(id)a3;
- (void)enterFullScreenAnimated:(BOOL)a3 completionHandler:(id)a4;
- (void)enterFullScreenWithCompletion:(id)a3;
- (void)exitFullScreenAnimated:(BOOL)a3 completionHandler:(id)a4;
- (void)exitFullScreenWithCompletion:(id)a3;
- (void)exitFullscreen:(id)a3;
- (void)flashPlaybackControlsWithDuration:(double)a3;
- (void)fullScreenViewController:(id)a3 viewWillTransitionToSize:(CGSize)a4 coordinator:(id)a5;
- (void)fullScreenViewControllerWillAttachContentView:(id)a3;
- (void)fullScreenViewControllerWillBeginFullScreenPresentation:(id)a3;
- (void)fullScreenViewControllerWillEndFullScreenPresentation:(id)a3;
- (void)glassPlaybackControlsView:(id)a3 animateAlongsideVisibilityAnimationsWithAnimationCoordinator:(id)a4 appearingViews:(id)a5 disappearingViews:(id)a6;
- (void)glassPlaybackControlsViewDidToggleControlsVisibility:(id)a3;
- (void)glassPlaybackControlsViewNeedsUpdateStatusBarAppearance:(id)a3;
- (void)loadView;
- (void)mediaSelectionButtonTapped:(id)a3;
- (void)performInitialSetupIfNeededAndPossible;
- (void)pictureInPictureButtonTapped:(id)a3;
- (void)pictureInPictureController:(id)a3 failedToStartPictureInPictureWithError:(id)a4;
- (void)pictureInPictureController:(id)a3 restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)a4;
- (void)pictureInPictureControllerDidStartPictureInPicture:(id)a3;
- (void)pictureInPictureControllerDidStopPictureInPicture:(id)a3;
- (void)pictureInPictureControllerWillStartPictureInPicture:(id)a3;
- (void)pictureInPictureControllerWillStopPictureInPicture:(id)a3;
- (void)playbackControlsView:(id)a3 animateAlongsideVisibilityAnimationsWithAnimationCoordinator:(id)a4 appearingViews:(id)a5 disappearingViews:(id)a6;
- (void)playbackControlsViewDidToggleControlsVisibility:(id)a3;
- (void)playbackControlsViewNeedsUpdateStatusBarAppearance:(id)a3;
- (void)playbackSpeedCollection:(id)a3 selectedPlaybackSpeedDidChangeTo:(id)a4;
- (void)playerControllerDidUpdateIsPlayingHDRContent:(id)a3;
- (void)playerViewControllerContentView:(id)a3 didMoveToWindow:(id)a4;
- (void)prepareForPopoverPresentation:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)removeBehavior:(id)a3;
- (void)scheduleTips;
- (void)scrollingObserverDidChangeScrollingState:(id)a3;
- (void)scrubbingGestureControllerStateDidChange:(id)a3;
- (void)setActuallyRequiresLinearPlayback:(BOOL)a3;
- (void)setAllowInfoMetadataSubpanel:(BOOL)a3;
- (void)setAllowsEnteringFullScreen:(BOOL)a3;
- (void)setAllowsPictureInPicturePlayback:(BOOL)allowsPictureInPicturePlayback;
- (void)setAllowsVideoFrameAnalysis:(BOOL)allowsVideoFrameAnalysis;
- (void)setCanHidePlaybackControls:(BOOL)a3;
- (void)setCanIncludePlaybackControlsWhenInline:(BOOL)a3;
- (void)setCanPausePlaybackWhenClosingPictureInPicture:(BOOL)a3;
- (void)setCanShowPictureInPictureButton:(BOOL)a3;
- (void)setCanStartPictureInPictureAutomaticallyWhenEnteringBackground:(BOOL)a3;
- (void)setConfiguration:(id)a3;
- (void)setContentTransitioningDelegate:(id)a3;
- (void)setControlsGeneration:(int64_t)a3;
- (void)setCustomContentTransitioningInfoPanel:(id)a3;
- (void)setCustomControlItems:(id)a3;
- (void)setCustomInfoViewControllers:(NSArray *)customInfoViewControllers;
- (void)setDefaultPlaybackRate:(double)a3;
- (void)setEntersFullScreenWhenPlaybackBegins:(BOOL)entersFullScreenWhenPlaybackBegins;
- (void)setEntersFullScreenWhenTapped:(BOOL)a3;
- (void)setHoveringOverPlaybackControl:(BOOL)a3;
- (void)setImageAnalysis:(id)a3;
- (void)setIncludeMultiviewButton:(BOOL)a3;
- (void)setInfoTabViewController:(id)a3;
- (void)setInfoViewActions:(NSArray *)infoViewActions;
- (void)setLegibleContentInsets:(UIEdgeInsets)a3;
- (void)setOverrideLayoutMarginsWhenEmbeddedInline:(id)a3;
- (void)setOverrideParentApplicationDisplayIdentifier:(id)a3;
- (void)setOverrideTransformForProminentPlayButton:(CGAffineTransform *)a3;
- (void)setPictureInPictureActivitySessionIdentifier:(id)a3;
- (void)setPixelBufferAttributes:(NSDictionary *)pixelBufferAttributes;
- (void)setPlayButtonHandlerForLazyPlayerLoading:(id)a3;
- (void)setPlaybackControlsIncludeDisplayModeControls:(BOOL)a3;
- (void)setPlaybackControlsIncludeTransportControls:(BOOL)a3;
- (void)setPlaybackControlsIncludeVolumeControls:(BOOL)a3;
- (void)setPlaybackControlsShouldControlSystemVolume:(BOOL)a3;
- (void)setPlaybackSpeedCollection:(id)a3;
- (void)setPlayer:(AVPlayer *)player;
- (void)setPlayerController:(id)a3;
- (void)setPlayerLayerView:(id)a3;
- (void)setPreferredDisplayDynamicRange:(int64_t)a3;
- (void)setPreferredPlaybackControlsSupplementalSubtitleDisplayOption:(int64_t)a3;
- (void)setPreferredUnobscuredArea:(int64_t)a3;
- (void)setPrefersDeviceUserInterfaceStyle:(BOOL)a3;
- (void)setRequiresImmediateAssetInspection:(BOOL)a3;
- (void)setRequiresLinearPlayback:(BOOL)requiresLinearPlayback;
- (void)setShouldUseNetworkingResourcesForLiveStreamingWhilePaused:(BOOL)a3;
- (void)setShowsAnalysisButtonIfAvailable:(BOOL)a3;
- (void)setShowsAudioLanguageMenu:(BOOL)a3;
- (void)setShowsMinimalPlaybackControlsWhenEmbeddedInline:(BOOL)a3;
- (void)setShowsPlaybackControls:(BOOL)showsPlaybackControls;
- (void)setShowsTimecodes:(BOOL)showsTimecodes;
- (void)setShowsVisualLookup:(BOOL)a3;
- (void)setSpeeds:(NSArray *)speeds;
- (void)setStartNextContentTransitionButtonEnabled:(BOOL)a3;
- (void)setStartPreviousContentTransitionButtonEnabled:(BOOL)a3;
- (void)setTransportBarCustomMenuItems:(NSArray *)transportBarCustomMenuItems;
- (void)setUpdatesNowPlayingInfoCenter:(BOOL)updatesNowPlayingInfoCenter;
- (void)setVideoFrameAnalysisTypes:(AVVideoFrameAnalysisType)videoFrameAnalysisTypes;
- (void)setVideoGravity:(AVLayerVideoGravity)videoGravity;
- (void)setVideoGravity:(id)a3 forLayoutClass:(unint64_t)a4;
- (void)setVideoGravityForTransitioningContent:(id)a3;
- (void)setView:(id)a3;
- (void)setVolumeControlsCanShowSlider:(BOOL)a3;
- (void)setWebKitOverrideRouteSharingPolicy:(unint64_t)a3 routingContextUID:(id)a4;
- (void)showFullScreenPresentationFromView:(id)a3 completion:(id)a4;
- (void)showTextButtonToggled:(id)a3;
- (void)startContentTransition:(int64_t)a3;
- (void)toggleMuted:(id)a3;
- (void)togglePlayback:(id)a3;
- (void)transitionController:(id)a3 animationProgressDidChange:(float)a4;
- (void)transitionController:(id)a3 prepareForFinishingInteractiveTransition:(id)a4;
- (void)transitionController:(id)a3 transitionWillComplete:(BOOL)a4 continueBlock:(id)a5;
- (void)transitionController:(id)a3 willBeginDismissingViewController:(id)a4;
- (void)transitionController:(id)a3 willBeginPresentingViewController:(id)a4;
- (void)transitionControllerBeginInteractivePresentationTransition:(id)a3;
- (void)updateVideoBounds;
- (void)videoFrameVisualAnalyzerDidFinishAnalyzingVideoFrame:(id)a3 withAnalysis:(id)a4;
- (void)videoFrameVisualAnalyzerFailedAnalyzingVideoFrame:(id)a3 withError:(id)a4;
- (void)videoGravityButtonTapped:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)visualAnalysisView:(id)a3 prepareForCalloutAction:(SEL)a4 completion:(id)a5;
- (void)visualAnalysisViewDidPressAnalysisButton:(id)a3;
- (void)visualAnalysisViewDidUpdateSubjectAvailability:(id)a3;
- (void)visualAnalysisViewDidUpdateVisualLookupAvailability:(id)a3;
- (void)willPresentInterstitialGroup:(id)a3;
@end

@implementation AVPlayerViewController

- (UIEdgeInsets)_clientLegibleContentInsets
{
  top = self->__clientLegibleContentInsets.top;
  left = self->__clientLegibleContentInsets.left;
  bottom = self->__clientLegibleContentInsets.bottom;
  right = self->__clientLegibleContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)secondScreenConnectionDisplaySize
{
  width = self->_secondScreenConnectionDisplaySize.width;
  height = self->_secondScreenConnectionDisplaySize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)videoBounds
{
  x = self->_videoBounds.origin.x;
  y = self->_videoBounds.origin.y;
  width = self->_videoBounds.size.width;
  height = self->_videoBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)legibleContentInsets
{
  top = self->_legibleContentInsets.top;
  left = self->_legibleContentInsets.left;
  bottom = self->_legibleContentInsets.bottom;
  right = self->_legibleContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)setIncludeMultiviewButton:(BOOL)a3
{
  if (self->_includeMultiviewButton != a3)
  {
    self->_includeMultiviewButton = a3;
    [(AVPlayerViewController *)self _updatePlaybackControlsState];
  }
}

- (void)willPresentInterstitialGroup:(id)a3
{
  v5 = a3;
  [(AVPlayerViewController *)self _updateActuallyRequiresLinearPlayback];
  if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewController_willPresentInterstitialTimeRange_])
  {
    v4 = [(AVPlayerViewController *)self delegate];
    [v4 playerViewController:self willPresentInterstitialTimeRange:v5];
  }
}

- (void)didPresentInterstitialGroup:(id)a3
{
  v5 = a3;
  [(AVPlayerViewController *)self _updateActuallyRequiresLinearPlayback];
  if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewController_didPresentInterstitialTimeRange_])
  {
    v4 = [(AVPlayerViewController *)self delegate];
    [v4 playerViewController:self didPresentInterstitialTimeRange:v5];
  }
}

- (void)playbackSpeedCollection:(id)a3 selectedPlaybackSpeedDidChangeTo:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = _AVLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 internalDescription];
    v8 = 136315394;
    v9 = "[AVPlayerViewController playbackSpeedCollection:selectedPlaybackSpeedDidChangeTo:]";
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s New playback speed selected: %@", &v8, 0x16u);
  }

  [(AVPlayerViewController *)self _updateDefaultPlaybackRateIfNeeded];
}

- (void)playerControllerDidUpdateIsPlayingHDRContent:(id)a3
{
  v4 = 0.0;
  if ([a3 isPlayingHDRContent])
  {
    v4 = 3.0;
    if (self->_controlsGeneration == 2)
    {
      v5 = +[AVKitGlobalSettings shared];
      [v5 extendedDynamicRangeGain];
      v4 = v6;
    }
  }

  v7 = [(AVPlayerViewController *)self controlsViewController];
  v8 = [v7 controlsViewControllerIfChromeless];
  [v8 setExtendedDynamicRangeGain:v4];

  v10 = [(AVPlayerViewController *)self controlsViewController];
  v9 = [v10 controlsViewControllerIfGlass];
  [v9 setExtendedDynamicRangeGain:v4];
}

- (void)_setupInterstitialControllerDelegateIfNeeded
{
  if (a1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v2 = [*(a1 + 1568) interstitialController];
    [v2 setDelegateManager:a1];
  }
}

- (BOOL)playerControllerCanRestorePlaybackRateAfterAudioSessionDeactivation:(id)a3
{
  v3 = [(AVPlayerViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 windowScene];

  if ([v5 activationState] == 1)
  {
    v6 = [v5 _FBSScene];
    v7 = [v6 uiSettings];
    v8 = [v7 deactivationReasons];

    v9 = (v8 & 0xFFFFFFFFFFFFFFAFLL) == 0;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)fullScreenViewController:(id)a3 viewWillTransitionToSize:(CGSize)a4 coordinator:(id)a5
{
  height = a4.height;
  width = a4.width;
  v12 = a5;
  v9 = a3;
  v10 = [(AVPlayerViewController *)self contentView];
  v11 = [v9 viewIfLoaded];

  LODWORD(v9) = [v10 isDescendantOfView:v11];
  if (v9)
  {
    [(AVPlayerViewController *)self _contentViewWillTransitionToSize:v12 withTransitionCoordinator:width, height];
  }
}

- (id)playbackContainerViewForFullScreenViewController:(id)a3
{
  v3 = [(AVPlayerViewController *)self contentView];
  v4 = [v3 playbackContentContainerView];

  return v4;
}

- (void)fullScreenViewControllerWillAttachContentView:(id)a3
{
  [(AVMobileControlsViewController *)self->_controlsViewController willMoveToParentViewController:0];
  controlsViewController = self->_controlsViewController;

  [(AVMobileControlsViewController *)controlsViewController removeFromParentViewController];
}

- (void)fullScreenViewControllerWillEndFullScreenPresentation:(id)a3
{
  [(AVPlayerViewController *)self _setContentViewOnSelf];
  v4 = [(AVPlayerViewController *)self _behaviorStorage];
  [v4 enumerateAllBehaviorContextsImplementingSelector:sel_willExitFullScreen forProtocol:&unk_1EFF32480 usingBlock:&__block_literal_global_855];
}

- (void)fullScreenViewControllerWillBeginFullScreenPresentation:(id)a3
{
  [(AVPlayerView *)self->_playerViewControllerView setContentView:0];
  [(AVPlayerViewController *)self setShouldUseNetworkingResourcesForLiveStreamingWhilePaused:1];
  v4 = [(AVPlayerViewController *)self _behaviorStorage];
  [v4 enumerateAllBehaviorContextsImplementingSelector:sel_willEnterFullScreen forProtocol:&unk_1EFF32480 usingBlock:&__block_literal_global_852];
}

- (void)scrubbingGestureControllerStateDidChange:(id)a3
{
  v16 = a3;
  if ([v16 state] == 2)
  {
    v4 = [v16 platformAdapter];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v6 = [v16 platformAdapter];
      v7 = [(AVMobileControlsViewController *)self->_controlsViewController controlsViewControllerIfChromeless];
      if (!v7)
      {
        v7 = [(AVMobileControlsViewController *)self->_controlsViewController controlsViewControllerIfGlass];
      }

      v8 = [v7 view];
      [v8 layoutMargins];
      v10 = v9;
      v12 = v11;

      v13 = [v7 view];
      [v13 frame];
      v15 = v14 - v10 - v12;

      [v6 setScrubbingWidth:v15];
    }
  }
}

- (void)scrollingObserverDidChangeScrollingState:(id)a3
{
  [(AVPlayerViewController *)self performInitialSetupIfNeededAndPossible];
  [(AVPlayerViewController *)self _updateControlsViewControllerPerformanceState];
  [(AVPlayerViewController *)self _updatePlayerControllerInspectionState];
  [(AVPlayerViewController *)self _updateVisualAnalyzerEnabledStateIfNeeded];

  [(AVPlayerViewController *)self _updateVisualAnalysisViewHiddenState];
}

- (uint64_t)_updateControlsViewControllerPerformanceState
{
  if (result)
  {
    v1 = result;
    v2 = [*(result + 1240) window];
    v3 = v2 == 0;

    v4 = [*(v1 + 1240) scrollingObserver];
    v5 = [v4 isScrolling];

    v6 = *(v1 + 1248);

    return [v6 setOptimizeForPerformance:(v3 | v5) & 1];
  }

  return result;
}

- (void)_updatePlayerControllerInspectionState
{
  if (!a1)
  {
    return;
  }

  v8 = [a1 playerController];
  v2 = *(a1 + 1240);
  if ((*(a1 + 1068) & 1) != 0 || ([a1 requiresImmediateAssetInspection] & 1) != 0 || (objc_msgSend(v2, "window"), (v3 = objc_claimAutoreleasedReturnValue()) != 0) && (v4 = v3, objc_msgSend(v2, "scrollingObserver"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isScrolling"), v5, v4, (v6 & 1) == 0))
  {
    if ([v8 isInspectionSuspended])
    {
      v7 = 0;
      goto LABEL_10;
    }
  }

  else if (([v8 isInspectionSuspended] & 1) == 0)
  {
    v7 = 1;
LABEL_10:
    [v8 setInspectionSuspended:v7];
    [a1 _updateNowPlayingInfoController];
  }
}

- (void)_updateVisualAnalyzerEnabledStateIfNeeded
{
  if (a1)
  {
    v2 = *(a1 + 1192);
    if (v2)
    {
      v3 = v2;
      v10 = [a1 playerController];
      v4 = [*(a1 + 1240) scrollingObserver];
      v5 = [v4 isScrolling];

      v6 = [a1 isPictureInPictureActive];
      v7 = [v10 isPlayingOnSecondScreen];
      v8 = [v10 isPlayingOnExternalScreen];
      if ((v6 & 1) != 0 || (v7 & 1) != 0 || (v8 & 1) != 0 || v5)
      {
        v9 = 0;
      }

      else
      {
        v9 = *(a1 + 1503);
      }

      [v3 setEnabled:v9 & 1];
    }
  }
}

- (uint64_t)_updateVisualAnalysisViewHiddenState
{
  if (result)
  {
    v1 = result;
    v2 = [*(result + 1240) scrollingObserver];
    v3 = [v2 isScrolling];

    v4 = v3 | ~[v1 allowsVideoFrameAnalysis];
    v5 = v1[225];

    return [v5 setHidden:v4 & 1];
  }

  return result;
}

- (void)glassPlaybackControlsViewDidToggleControlsVisibility:(id)a3
{
  [(AVPlayerViewController *)self _updateAnalysisButtonBottomInsetIfNeeded];

  [(AVPlayerViewController *)self _updateWantsAnalysisButtonVisibleStateIfNeeded];
}

- (void)_updateAnalysisButtonBottomInsetIfNeeded
{
  if (result)
  {
    v1 = result;
    if (result[225])
    {
      result = [result allowsVideoFrameAnalysis];
      if (result)
      {
        v2 = 8.0;
        if (!v1[157])
        {
          v3 = [v1 contentView];
          v4 = [v1 contentView];
          v5 = [v4 chromePlaybackControlsView];

          if ([v5 showsPlaybackControls])
          {
            v6 = v1[225];
            v7 = [v5 transportControlsContainerView];
            [v3 frame];
            v22 = v8;
            [v6 bounds];
            [v3 convertRect:v6 fromView:?];
            v10 = v9;
            v12 = v11;
            v14 = v13;
            v16 = v15;

            [v7 bounds];
            [v3 convertRect:v7 fromView:?];
            x = v24.origin.x;
            y = v24.origin.y;
            width = v24.size.width;
            v27.size.height = v24.size.height + v22 - CGRectGetMaxY(v24);
            v25.origin.x = v10;
            v25.origin.y = v12;
            v25.size.width = v14;
            v25.size.height = v16;
            v27.origin.x = x;
            v27.origin.y = y;
            v27.size.width = width;
            v26 = CGRectIntersection(v25, v27);
            height = v26.size.height;
            if (CGRectEqualToRect(v26, *MEMORY[0x1E695F050]))
            {
              v2 = 8.0;
            }

            else
            {
              v2 = height + 8.0;
            }
          }
        }

        v21 = v1[225];

        return [v21 setAnalysisButtonBottomInset:v2];
      }
    }
  }

  return result;
}

- (void)_updateWantsAnalysisButtonVisibleStateIfNeeded
{
  if (result)
  {
    v1 = result;
    if (result[225])
    {
      result = [result allowsVideoFrameAnalysis];
      if (result)
      {
        v2 = [v1 isPresentingDetachedFullScreen];
        v3 = [v1 showsAnalysisButtonIfAvailable];
        v4 = v3;
        if (v2 & 1) == 0 && (*(v1 + 993) & v3)
        {
          if (v1[157])
          {
            v4 = 0;
          }

          else
          {
            v5 = [v1 contentView];
            v6 = [v5 chromePlaybackControlsView];
            v4 = [v6 showsPlaybackControls];
          }
        }

        v7 = v1[225];

        return [v7 setWantsAnalysisButtonVisible:v4];
      }
    }
  }

  return result;
}

- (void)glassPlaybackControlsView:(id)a3 animateAlongsideVisibilityAnimationsWithAnimationCoordinator:(id)a4 appearingViews:(id)a5 disappearingViews:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = a5;
  v12 = [(AVPlayerViewController *)self contentView];
  v13 = [v12 glassPlaybackControlsView];
  [v13 animateAlongsideVisibilityAnimationsWithAnimationCoordinator:v9 appearingViews:v11 disappearingViews:v10];

  v14 = [(AVPlayerViewController *)self contentView];
  v15 = [v14 glassPlaybackControlsView];
  v16 = [v15 playbackControlsContainer];

  v17 = [v11 containsObject:v16];
  v18 = [v10 containsObject:v16];

  if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewController_willTransitionToVisibilityOfPlaybackControls_withAnimationCoordinator_]&& ((v17 | v18) & 1) != 0)
  {
    v19 = [(AVPlayerViewController *)self delegate];
    [v19 playerViewController:self willTransitionToVisibilityOfPlaybackControls:v17 withAnimationCoordinator:v9];
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __146__AVPlayerViewController_glassPlaybackControlsView_animateAlongsideVisibilityAnimationsWithAnimationCoordinator_appearingViews_disappearingViews___block_invoke;
  v21[3] = &unk_1E720A090;
  v21[4] = self;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __146__AVPlayerViewController_glassPlaybackControlsView_animateAlongsideVisibilityAnimationsWithAnimationCoordinator_appearingViews_disappearingViews___block_invoke_2;
  v20[3] = &unk_1E7208E90;
  v20[4] = self;
  [v9 addCoordinatedAnimations:v21 completion:v20];
}

void __146__AVPlayerViewController_glassPlaybackControlsView_animateAlongsideVisibilityAnimationsWithAnimationCoordinator_appearingViews_disappearingViews___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) contentView];
  [v1 avkit_needsUpdateBackdropCaptureViewHidden];
}

void __146__AVPlayerViewController_glassPlaybackControlsView_animateAlongsideVisibilityAnimationsWithAnimationCoordinator_appearingViews_disappearingViews___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) contentView];
  [v1 avkit_needsUpdateBackdropCaptureViewHidden];
}

- (void)glassPlaybackControlsViewNeedsUpdateStatusBarAppearance:(id)a3
{
  v4 = [(AVPlayerViewController *)self _activeViewControllerForContentView];
  v5 = [v4 transitionCoordinator];

  if (v5)
  {
    v6 = [v4 transitionCoordinator];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __82__AVPlayerViewController_glassPlaybackControlsViewNeedsUpdateStatusBarAppearance___block_invoke;
    v7[3] = &unk_1E7208180;
    v7[4] = self;
    [v6 animateAlongsideTransition:v7 completion:0];
  }

  else
  {
    [(AVPlayerViewController *)self _updateViewControllerPreferencesIfNeeded];
  }
}

- (void)playbackControlsView:(id)a3 animateAlongsideVisibilityAnimationsWithAnimationCoordinator:(id)a4 appearingViews:(id)a5 disappearingViews:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = a5;
  v12 = [(AVPlayerViewController *)self contentView];
  v13 = [v12 chromePlaybackControlsView];
  [v13 animateAlongsideVisibilityAnimationsWithAnimationCoordinator:v9 appearingViews:v11 disappearingViews:v10];

  v14 = [(AVPlayerViewController *)self contentView];
  v15 = [v14 chromePlaybackControlsView];
  v16 = [v15 playbackControlsContainer];

  v17 = [v11 containsObject:v16];
  v18 = [v10 containsObject:v16];

  if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewController_willTransitionToVisibilityOfPlaybackControls_withAnimationCoordinator_]&& ((v17 | v18) & 1) != 0)
  {
    v19 = [(AVPlayerViewController *)self delegate];
    [v19 playerViewController:self willTransitionToVisibilityOfPlaybackControls:v17 withAnimationCoordinator:v9];
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __141__AVPlayerViewController_playbackControlsView_animateAlongsideVisibilityAnimationsWithAnimationCoordinator_appearingViews_disappearingViews___block_invoke;
  v21[3] = &unk_1E720A090;
  v21[4] = self;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __141__AVPlayerViewController_playbackControlsView_animateAlongsideVisibilityAnimationsWithAnimationCoordinator_appearingViews_disappearingViews___block_invoke_2;
  v20[3] = &unk_1E7208E90;
  v20[4] = self;
  [v9 addCoordinatedAnimations:v21 completion:v20];
}

void __141__AVPlayerViewController_playbackControlsView_animateAlongsideVisibilityAnimationsWithAnimationCoordinator_appearingViews_disappearingViews___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) contentView];
  [v1 avkit_needsUpdateBackdropCaptureViewHidden];
}

void __141__AVPlayerViewController_playbackControlsView_animateAlongsideVisibilityAnimationsWithAnimationCoordinator_appearingViews_disappearingViews___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) contentView];
  [v1 avkit_needsUpdateBackdropCaptureViewHidden];
}

- (void)playbackControlsViewDidToggleControlsVisibility:(id)a3
{
  [(AVPlayerViewController *)self _updateAnalysisButtonBottomInsetIfNeeded];

  [(AVPlayerViewController *)self _updateWantsAnalysisButtonVisibleStateIfNeeded];
}

- (void)playbackControlsViewNeedsUpdateStatusBarAppearance:(id)a3
{
  v4 = [(AVPlayerViewController *)self _activeViewControllerForContentView];
  v5 = [v4 transitionCoordinator];

  if (v5)
  {
    v6 = [v4 transitionCoordinator];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __77__AVPlayerViewController_playbackControlsViewNeedsUpdateStatusBarAppearance___block_invoke;
    v7[3] = &unk_1E7208180;
    v7[4] = self;
    [v6 animateAlongsideTransition:v7 completion:0];
  }

  else
  {
    [(AVPlayerViewController *)self _updateViewControllerPreferencesIfNeeded];
  }
}

- (void)presentationControllerDidDismiss:(id)a3
{
  if (self->_usesGlassCatalystControls)
  {
    [(AVPlayerViewController *)self catalystPlaybackControlsController];
  }

  else
  {
    [(AVPlayerViewController *)self chromePlaybackControlsController];
  }
  v3 = ;
  [v3 setPopoverIsBeingPresented:0];
}

- (void)prepareForPopoverPresentation:(id)a3
{
  if (self->_usesGlassCatalystControls)
  {
    [(AVPlayerViewController *)self catalystPlaybackControlsController];
  }

  else
  {
    [(AVPlayerViewController *)self chromePlaybackControlsController];
  }
  v3 = ;
  [v3 setPopoverIsBeingPresented:1];
}

- (void)_updatePlayerControllerLegibleOptionsForSmartSubtitleDisplayType:(void *)a1
{
  v32 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    [(AVPlayerViewController *)a1 _updateSupplementalSubtitlesIfNecessary];
    v4 = a1[184];
    if (v4)
    {
      if (a2 == 2)
      {
        if ((v4 & 0xA) == 0)
        {
          return;
        }

        v8 = _AVLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v25 = "[AVPlayerViewController _updatePlayerControllerLegibleOptionsForSmartSubtitleDisplayType:]";
          v26 = 2112;
          v27 = a1;
          _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s DisplayTypeOnSkipForward AVPVC: %@", buf, 0x16u);
        }

        v6 = a1[183];
        v7 = 10.0;
        goto LABEL_13;
      }

      if (a2 == 1)
      {
        if ((v4 & 0xA) == 0)
        {
          return;
        }

        v5 = _AVLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v25 = "[AVPlayerViewController _updatePlayerControllerLegibleOptionsForSmartSubtitleDisplayType:]";
          v26 = 2112;
          v27 = a1;
          _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s DisplayTypeOnSkipBack AVPVC: %@", buf, 0x16u);
        }

        v6 = a1[183];
        v7 = -10.0;
LABEL_13:
        [v6 userRequestedSeekWithTimeInterval:v7];
        return;
      }

      v23 = [a1 player];
      [v23 rate];
      if (v9 == 0.0)
      {
      }

      else
      {
        v10 = a1[184];
        if ((v10 & 4) != 0)
        {
        }

        else
        {

          if ((v10 & 2) == 0)
          {
            return;
          }
        }

        v11 = _AVLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v25 = "[AVPlayerViewController _updatePlayerControllerLegibleOptionsForSmartSubtitleDisplayType:]";
          v26 = 2112;
          v27 = a1;
          _os_log_impl(&dword_18B49C000, v11, OS_LOG_TYPE_DEFAULT, "%s DisplayTypeOnMute AVPVC: %@", buf, 0x16u);
        }

        v12 = a1[183];
        v13 = [a1 _volumeController];
        v14 = _AVLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [a1 player];
          if ([v15 isMuted])
          {
            v16 = "YES";
          }

          else
          {
            v16 = "NO";
          }

          [v13 volume];
          v25 = "[AVPlayerViewController _isVolumeMuted]";
          v26 = 2112;
          *buf = 136315906;
          v27 = a1;
          if (fabsf(v17) < 0.00000011921 || v17 < 0.0)
          {
            v19 = "YES";
          }

          else
          {
            v19 = "NO";
          }

          v28 = 2082;
          v29 = v16;
          v30 = 2082;
          v31 = v19;
          _os_log_impl(&dword_18B49C000, v14, OS_LOG_TYPE_DEFAULT, "%s AVPVC: %@ Player mute:%{public}s and system mute:%{public}s states", buf, 0x2Au);
        }

        v20 = [a1 player];
        if ([v20 isMuted])
        {
          v21 = 1;
        }

        else
        {
          [v13 volume];
          v21 = v22 <= 0.0;
        }

        [v12 updatePlayerVolumeToPlayerMuted:v21];
      }
    }
  }
}

- (void)_updateSupplementalSubtitlesIfNecessary
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (!*(a1 + 1472))
    {
      if (([*(a1 + 1464) smartSubtitlesActive] & 1) != 0 || (objc_msgSend(a1, "playerController"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "subtitlesActive"), v2, (v3 & 1) == 0))
      {
        v4 = _AVLog();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v6 = 136315394;
          v7 = "[AVPlayerViewController _updateSupplementalSubtitlesIfNecessary]";
          v8 = 2112;
          v9 = a1;
          _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s AVSubtitleBehaviorUserSelectedAndPreferredLanguage subtitles active AVPVC %@", &v6, 0x16u);
        }

        v5 = [a1 playerController];
        [v5 setCurrentAssetMediaOption:0];
      }
    }
  }
}

- (void)pictureInPictureController:(id)a3 restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewController_restoreUserInterfaceForPictureInPictureStopWithCompletionHandler_])
  {
    v8 = [(AVPlayerViewController *)self _transitionController];
    v9 = [v8 presentationContext];
    v10 = [v9 isDismissing];

    v11 = _AVLog();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        *buf = 136315138;
        v23 = "[AVPlayerViewController pictureInPictureController:restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:]";
        _os_log_impl(&dword_18B49C000, v11, OS_LOG_TYPE_DEFAULT, "%s PIP stopping, pending restore of user interface presentation will start after dismissal transition completes", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      objc_initWeak(&location, v6);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __118__AVPlayerViewController_pictureInPictureController_restoreUserInterfaceForPictureInPictureStopWithCompletionHandler___block_invoke;
      v17[3] = &unk_1E72080E8;
      objc_copyWeak(&v19, &location);
      objc_copyWeak(&v20, buf);
      v18 = v7;
      [(AVPlayerViewController *)self setPendingRestoreUserInterfaceForPictureInPictureStopHandler:v17];

      objc_destroyWeak(&v20);
      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);
    }

    else
    {
      if (v12)
      {
        *buf = 136315138;
        v23 = "[AVPlayerViewController pictureInPictureController:restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:]";
        _os_log_impl(&dword_18B49C000, v11, OS_LOG_TYPE_DEFAULT, "%s PIP stopping, restore user interface starting", buf, 0xCu);
      }

      v14 = [(AVPlayerViewController *)self delegate];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __118__AVPlayerViewController_pictureInPictureController_restoreUserInterfaceForPictureInPictureStopWithCompletionHandler___block_invoke_843;
      v15[3] = &unk_1E7208560;
      v16 = v7;
      [v14 playerViewController:self restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:v15];
    }
  }

  else
  {
    v13 = _AVLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v23 = "[AVPlayerViewController pictureInPictureController:restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:]";
      _os_log_impl(&dword_18B49C000, v13, OS_LOG_TYPE_DEFAULT, "%s PIP stopping, client did not implement restore user interface on stop delegate, call back to Pegasus and assume client is restore ready.", buf, 0xCu);
    }

    if (v7)
    {
      (*(v7 + 2))(v7, 1);
    }
  }
}

void __118__AVPlayerViewController_pictureInPictureController_restoreUserInterfaceForPictureInPictureStopWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 48));
    [v3 pictureInPictureController:v4 restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:*(a1 + 32)];

    WeakRetained = v4;
  }
}

uint64_t __118__AVPlayerViewController_pictureInPictureController_restoreUserInterfaceForPictureInPictureStopWithCompletionHandler___block_invoke_843(uint64_t result, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(result + 32))
  {
    v3 = result;
    v4 = _AVLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = @"NO";
      if (a2)
      {
        v5 = @"YES";
      }

      v6 = 136315394;
      v7 = "[AVPlayerViewController pictureInPictureController:restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:]_block_invoke";
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s PIP restore underway, client reported restore is ready: %@", &v6, 0x16u);
    }

    return (*(*(v3 + 32) + 16))();
  }

  return result;
}

- (void)pictureInPictureControllerDidStopPictureInPicture:(id)a3
{
  v4 = a3;
  self->_pipStartingOrActive = 0;
  if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewControllerDidStopPictureInPicture_])
  {
    v5 = [(AVPlayerViewController *)self delegate];
    [v5 playerViewControllerDidStopPictureInPicture:self];
  }

  v6 = [(AVPlayerViewController *)self _behaviorStorage];
  [v6 enumerateAllBehaviorContextsImplementingSelector:sel_didStopPictureInPicture forProtocol:&unk_1EFF32480 usingBlock:&__block_literal_global_840];

  objc_initWeak(&location, self);
  v7 = MEMORY[0x1E69DD250];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __76__AVPlayerViewController_pictureInPictureControllerDidStopPictureInPicture___block_invoke_2;
  v12 = &unk_1E7209EA8;
  objc_copyWeak(&v13, &location);
  [v7 animateWithDuration:&v9 animations:0.2];
  if (self->_usesGlassCatalystControls)
  {
    [(AVPlayerViewController *)self catalystPlaybackControlsController:v9];
  }

  else
  {
    [(AVPlayerViewController *)self chromePlaybackControlsController:v9];
  }
  v8 = ;
  [v8 setPictureInPictureActive:0];

  [(AVPlayerViewController *)self _updateVisualAnalyzerEnabledStateIfNeeded];
  [(AVPlayerViewController *)self _updateControlsVisibilityPolicyAnimated:?];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __76__AVPlayerViewController_pictureInPictureControllerDidStopPictureInPicture___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[223] setBackgroundColor:0];
    WeakRetained = v2;
  }
}

- (uint64_t)_updateControlsVisibilityPolicyAnimated:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (*(result + 1256))
    {
      v4 = *(result + 1480) ^ 1;
    }

    else
    {
      v4 = 0;
    }

    v5 = [*(result + 1136) presentationState];
    v6 = [v3 playerController];
    v7 = [v6 isPlayingOnExternalScreen];

    v8 = [v3 showsVisualLookup];
    v9 = [v3 canHidePlaybackControls];
    if (v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = [v3 showsPlaybackControls] ^ 1;
      if ((v10 & 1) == 0 && v5 == 2)
      {
        v10 = [v3 canIncludePlaybackControlsWhenInline] ^ 1;
      }
    }

    if (*(v3 + 1068) & 1) != 0 || (*(v3 + 1070) & 1) != 0 || ([*(v3 + 1800) isInteractionInProgress])
    {
      LOBYTE(v11) = 1;
    }

    else
    {
      v11 = [v3 showsPlaybackControls] ^ 1;
    }

    v12 = v4 & (v9 & ~v7 | v11);
    v13 = ((v10 | v11) & 1) == 0;
    v14 = 1;
    if (v13)
    {
      v14 = 2;
    }

    if (v12)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = *(v3 + 1248);

    return [v16 updateVisibilityPolicy:v15 animated:a2];
  }

  return result;
}

- (void)pictureInPictureControllerWillStopPictureInPicture:(id)a3
{
  if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewControllerWillStopPictureInPicture_])
  {
    v4 = [(AVPlayerViewController *)self delegate];
    [v4 playerViewControllerWillStopPictureInPicture:self];
  }
}

- (void)pictureInPictureController:(id)a3 failedToStartPictureInPictureWithError:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  self->_pipStartingOrActive = 0;
  v8 = _AVLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 localizedDescription];
    *buf = 136315394;
    v16 = "[AVPlayerViewController pictureInPictureController:failedToStartPictureInPictureWithError:]";
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s Failed to start PIP with error: '%@'", buf, 0x16u);
  }

  if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewController_failedToStartPictureInPictureWithError_])
  {
    v10 = [(AVPlayerViewController *)self delegate];
    [v10 playerViewController:self failedToStartPictureInPictureWithError:v7];
  }

  objc_initWeak(buf, self);
  v11 = MEMORY[0x1E69DD250];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __92__AVPlayerViewController_pictureInPictureController_failedToStartPictureInPictureWithError___block_invoke;
  v13[3] = &unk_1E7209EA8;
  objc_copyWeak(&v14, buf);
  [v11 animateWithDuration:v13 animations:0.2];
  if (self->_usesGlassCatalystControls)
  {
    [(AVPlayerViewController *)self catalystPlaybackControlsController];
  }

  else
  {
    [(AVPlayerViewController *)self chromePlaybackControlsController];
  }
  v12 = ;
  [v12 setPictureInPictureActive:0];

  [(AVPlayerViewController *)self _updateControlsVisibilityPolicyAnimated:?];
  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

void __92__AVPlayerViewController_pictureInPictureController_failedToStartPictureInPictureWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[223] setBackgroundColor:0];
    WeakRetained = v2;
  }
}

- (void)pictureInPictureControllerDidStartPictureInPicture:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x1E69DDBE8];
  v6 = MEMORY[0x1E69DDA98];
  v7 = *MEMORY[0x1E69DDA98];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __77__AVPlayerViewController_pictureInPictureControllerDidStartPictureInPicture___block_invoke;
  v23[3] = &__block_descriptor_40_e5_v8__0l;
  v23[4] = v5;
  v8 = [v7 beginBackgroundTaskWithExpirationHandler:v23];
  if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewControllerDidStartPictureInPicture_])
  {
    v9 = [(AVPlayerViewController *)self delegate];
    [v9 playerViewControllerDidStartPictureInPicture:self];
  }

  if (![(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewControllerShouldAutomaticallyDismissAtPictureInPictureStart_])
  {
    v13 = [(AVPlayerViewController *)self isPresentingFullScreenFromInline];
    goto LABEL_9;
  }

  v10 = [(AVPlayerViewController *)self delegate];
  v11 = [v10 playerViewControllerShouldAutomaticallyDismissAtPictureInPictureStart:self];

  v12 = [(AVPlayerViewController *)self isPresentingFullScreenFromInline];
  v13 = v12;
  if (v11)
  {
LABEL_9:
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __77__AVPlayerViewController_pictureInPictureControllerDidStartPictureInPicture___block_invoke_2;
    aBlock[3] = &unk_1E72080C0;
    objc_copyWeak(v20, &location);
    v21 = v13;
    v20[1] = v8;
    v14 = _Block_copy(aBlock);
    v15 = [(AVTransitionController *)self->_transitionController presentationContext];
    v16 = [v15 isPresenting];

    if (v16)
    {
      [(AVPlayerViewController *)self setDismissForPIPStartAfterPresentationHandler:v14];
    }

    else
    {
      v17 = [(AVTransitionController *)self->_transitionController presentationContext];
      v18 = [v17 isDismissing];

      if (v18)
      {
        [*v6 endBackgroundTask:v8];
      }

      else
      {
        v14[2](v14);
      }
    }

    objc_destroyWeak(v20);
    objc_destroyWeak(&location);
    goto LABEL_15;
  }

  if (v12)
  {
    [(AVPlayerViewController *)self _updatePlaybackControlsState];
  }

  [*v6 endBackgroundTask:v8];
LABEL_15:
  [(AVPlayerViewController *)self _updateVisualAnalyzerEnabledStateIfNeeded];
}

void __77__AVPlayerViewController_pictureInPictureControllerDidStartPictureInPicture___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([WeakRetained isPresentingFullScreenFromInline] & 1) != 0 || objc_msgSend(WeakRetained, "isPresentedFullScreen"))
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __77__AVPlayerViewController_pictureInPictureControllerDidStartPictureInPicture___block_invoke_3;
    v4[3] = &unk_1E7208098;
    v5 = *(a1 + 48);
    v3 = *(a1 + 40);
    v4[4] = WeakRetained;
    v4[5] = v3;
    [WeakRetained _transitionFromFullScreenWithReason:4 animated:1 completionHandler:v4];
  }

  else
  {
    [*MEMORY[0x1E69DDA98] endBackgroundTask:*(a1 + 40)];
  }
}

uint64_t __77__AVPlayerViewController_pictureInPictureControllerDidStartPictureInPicture___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) _updatePlaybackControlsState];
  }

  v2 = *MEMORY[0x1E69DDA98];
  v3 = *(a1 + 40);

  return [v2 endBackgroundTask:v3];
}

- (void)pictureInPictureControllerWillStartPictureInPicture:(id)a3
{
  v4 = a3;
  self->_pipStartingOrActive = 1;
  v5 = [(AVPlayerViewController *)self _behaviorStorage];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __78__AVPlayerViewController_pictureInPictureControllerWillStartPictureInPicture___block_invoke;
  v19[3] = &unk_1E7208070;
  v19[4] = self;
  [v5 enumerateAllBehaviorContextsImplementingSelector:sel_willStartPictureInPictureWithViewController_ forProtocol:&unk_1EFF32480 usingBlock:v19];

  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_mediaSelectionPopoverPresentationController);
  v7 = [WeakRetained presentedViewController];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78__AVPlayerViewController_pictureInPictureControllerWillStartPictureInPicture___block_invoke_2;
  v16[3] = &unk_1E7209EA8;
  objc_copyWeak(&v17, &location);
  [v7 dismissViewControllerAnimated:1 completion:v16];

  if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewControllerWillStartPictureInPicture_])
  {
    v8 = [(AVPlayerViewController *)self delegate];
    [v8 playerViewControllerWillStartPictureInPicture:self];
  }

  v9 = MEMORY[0x1E69DD250];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __78__AVPlayerViewController_pictureInPictureControllerWillStartPictureInPicture___block_invoke_3;
  v14 = &unk_1E7209EA8;
  objc_copyWeak(&v15, &location);
  [v9 animateWithDuration:&v11 animations:0.2];
  if (self->_usesGlassCatalystControls)
  {
    [(AVPlayerViewController *)self catalystPlaybackControlsController:v11];
  }

  else
  {
    [(AVPlayerViewController *)self chromePlaybackControlsController:v11];
  }
  v10 = ;
  [v10 setPictureInPictureActive:1];

  [(AVPlayerViewController *)self _updateControlsVisibilityPolicyAnimated:?];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __78__AVPlayerViewController_pictureInPictureControllerWillStartPictureInPicture___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1600);
  v3 = a2;
  v4 = [v2 pictureInPictureViewController];
  [v3 willStartPictureInPictureWithViewController:v4];
}

void __78__AVPlayerViewController_pictureInPictureControllerWillStartPictureInPicture___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (WeakRetained[1480] == 1)
    {
      [WeakRetained catalystPlaybackControlsController];
    }

    else
    {
      [WeakRetained chromePlaybackControlsController];
    }
    v2 = ;
    [v2 setPopoverIsBeingPresented:0];

    WeakRetained = v3;
  }
}

void __78__AVPlayerViewController_pictureInPictureControllerWillStartPictureInPicture___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[223];
    v4 = WeakRetained;
    v3 = [MEMORY[0x1E69DC888] AV_indicatorBackgroundColor];
    [v2 setBackgroundColor:v3];

    WeakRetained = v4;
  }
}

- (void)avkit_willBeginStoppingPictureInPictureForPictureInPictureViewController:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 pictureInPicturePlayerLayerView];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = _AVLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[AVPlayerViewController avkit_willBeginStoppingPictureInPictureForPictureInPictureViewController:]";
      _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s Disabling legible display for picture in picture player layer", &v9, 0xCu);
    }

    v7 = [v3 pictureInPicturePlayerLayerView];
    v8 = [v7 playerLayer];
    [v8 setLegibleDisplayEnabled:0];
  }
}

- (void)avkit_endReducingResourcesForPictureInPictureViewController:(id)a3 playerController:(id)a4
{
  v12 = a3;
  v5 = [(AVPlayerViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AVPlayerViewController *)self delegate];
    [v7 playerViewControllerEndReducingResourcesForPictureInPicture:self];
  }

  else
  {
    v8 = [(AVPlayerViewController *)self playerController];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      goto LABEL_6;
    }

    v7 = [(AVPlayerViewController *)self playerController];
    v10 = [v12 pictureInPicturePlayerLayerView];
    v11 = [v10 playerLayer];
    [v7 endReducingResourcesForPictureInPicturePlayerLayer:v11];
  }

LABEL_6:
}

- (void)avkit_beginReducingResourcesForPictureInPictureViewController:(id)a3 playerController:(id)a4
{
  v12 = a3;
  v5 = [(AVPlayerViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AVPlayerViewController *)self delegate];
    [v7 playerViewControllerBeginReducingResourcesForPictureInPicture:self];
  }

  else
  {
    v8 = [(AVPlayerViewController *)self playerController];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      goto LABEL_6;
    }

    v7 = [(AVPlayerViewController *)self playerController];
    v10 = [v12 pictureInPicturePlayerLayerView];
    v11 = [v10 playerLayer];
    [v7 beginReducingResourcesForPictureInPicturePlayerLayer:v11];
  }

LABEL_6:
}

- (void)avkit_startRoutingVideoToPictureInPictureViewController:(id)a3
{
  v4 = a3;
  [v4 loadViewIfNeeded];
  v5 = [v4 view];

  [(AVPlayerViewController *)self videoBounds];
  [v5 setFrame:?];

  playerLayerView = self->_playerLayerView;

  [(__AVPlayerLayerView *)playerLayerView startRoutingVideoToPictureInPicturePlayerLayerView];
}

- (id)avkit_pictureInPictureViewController
{
  v3 = [AVPictureInPictureViewController alloc];
  v4 = [(__AVPlayerLayerView *)self->_playerLayerView pictureInPicturePlayerLayerView];
  v5 = [(AVPictureInPictureViewController *)v3 initWithPictureInPicturePlayerLayerView:v4];

  return v5;
}

- (BOOL)avkit_isVisible
{
  v2 = [(AVPlayerViewController *)self contentView];
  [v2 bounds];
  IsEmpty = CGRectIsEmpty(v5);

  return !IsEmpty;
}

- (CGRect)avkit_videoRectInWindow
{
  v3 = [(AVPlayerViewController *)self contentView];
  v4 = [v3 window];
  v5 = [(AVPlayerViewController *)self contentView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(AVPlayerViewController *)self contentView];
  [v4 convertRect:v14 fromView:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = [(AVPlayerViewController *)self playerController];
  LOBYTE(v4) = [v23 isPlayingOnExternalScreen];

  if ((v4 & 1) == 0)
  {
    v24 = [(AVPlayerViewController *)self avkit_window];
    [(__AVPlayerLayerView *)self->_playerLayerView videoBounds];
    [v24 convertRect:self->_playerLayerView fromView:?];
    v16 = v25;
    v18 = v26;
    v20 = v27;
    v22 = v28;
  }

  v29 = v16;
  v30 = v18;
  v31 = v20;
  v32 = v22;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_hoverGestureRecognizer == v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      isKindOfClass = 1;
      goto LABEL_10;
    }

LABEL_8:
    isKindOfClass = 0;
    goto LABEL_10;
  }

  if (self->_scrubGestureRecognizer == v6)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    goto LABEL_10;
  }

  if (self->_tapThroughGestureRecognizer != v6)
  {
    goto LABEL_8;
  }

  isKindOfClass = self->_singleTapGestureRecognizer == v7;
LABEL_10:

  return isKindOfClass & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_singleTapGestureRecognizer == v6 || self->_tapThroughGestureRecognizer == v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isKindOfClass = 1;
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isKindOfClass = [(AVScrubbingGestureController *)self->_scrubbingGestureController state]!= 3;
      goto LABEL_10;
    }

LABEL_9:
    isKindOfClass = 0;
    goto LABEL_10;
  }

  if (self->_videoGravityPinchGestureRecognizer != v6)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
LABEL_10:

  return isKindOfClass & 1;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(AVPlayerViewController *)self scrubGestureRecognizer];

  if (v5 != v4)
  {
    return 1;
  }

  if (self->_usesGlassCatalystControls)
  {
    [(AVPlayerViewController *)self catalystPlaybackControlsController];
  }

  else
  {
    [(AVPlayerViewController *)self chromePlaybackControlsController];
  }
  v7 = ;
  v8 = [v7 showsProminentPlayButton];

  v9 = [(AVPlayerViewController *)self showsPlaybackControls];
  result = 0;
  if (v9 && (v8 & 1) == 0)
  {
    v10 = [(AVPlayerViewController *)self scrubGestureRecognizer];
    v11 = [(AVPlayerViewController *)self contentView];
    [v10 velocityInView:v11];
    v13 = v12;
    v15 = v14;

    v16 = fabs(v15);
    return fabs(v13) > v16 + v16;
  }

  return result;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self)
  {
    goto LABEL_16;
  }

  if (self->_usesGlassCatalystControls)
  {
    v8 = [(AVPlayerViewController *)self catalystPlaybackControlsController];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 tapGestureRecognizersCanReceiveTouches];

      if (!v10)
      {
LABEL_15:
        LOBYTE(self) = 0;
        goto LABEL_16;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v11 = [(AVPlayerViewController *)self chromePlaybackControlsController];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 tapGestureRecognizersCanReceiveTouches];

      if ((v13 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  if (![(AVPlayerViewController *)self hasCustomPlaybackControls]&& ![(AVPlayerViewController *)self showsPlaybackControls])
  {
    goto LABEL_15;
  }

LABEL_11:
  v14 = [v6 view];
  v15 = [v6 view];
  [v7 locationInView:v15];
  v16 = [v14 hitTest:0 withEvent:?];

  v17 = [(AVMobileControlsViewController *)self->_controlsViewController viewIfLoaded];
  v18 = self->_customControlsView;
  if ([v16 isDescendantOfView:v17] & 1) != 0 || (objc_msgSend(v16, "isDescendantOfView:", v18))
  {
    LOBYTE(self) = 0;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 numberOfTapsRequired] >= 2)
    {
      if (self->_usesGlassCatalystControls)
      {
        [(AVPlayerViewController *)self catalystPlaybackControlsController];
      }

      else
      {
        [(AVPlayerViewController *)self chromePlaybackControlsController];
      }
      self = ;
      v20 = [(AVPlayerViewController *)self entersFullScreenWhenTapped];

      LOBYTE(self) = !v20;
    }

    else
    {
      LOBYTE(self) = 1;
    }
  }

LABEL_16:
  return self;
}

- (BOOL)_isTransitioningToOrFromFullScreen
{
  if (([(AVPlayerViewController *)self isBeingDismissed]& 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = [(AVPlayerViewController *)self isBeingPresented];
  }

  v4 = [(AVPlayerViewController *)self fullScreenViewController];
  if ([v4 isBeingPresented])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(AVPlayerViewController *)self fullScreenViewController];
    if ([v6 isBeingDismissed])
    {
      v5 = 1;
    }

    else
    {
      v7 = [(AVPlayerViewController *)self fullScreenViewController];
      if (v7)
      {
        v8 = [(AVPlayerViewController *)self fullScreenViewController];
        v9 = [v8 presentingViewController];
        v5 = v9 == 0;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return (v3 | v5) & 1;
}

- (void)transitionController:(id)a3 animationProgressDidChange:(float)a4
{
  v4 = 1.0 - a4;
  v5 = [(AVPlayerViewController *)self volumeAnimator];
  [v5 setProgressTowardsZero:1.0 - v4 * v4];
}

- (void)transitionController:(id)a3 transitionWillComplete:(BOOL)a4 continueBlock:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (![(AVPlayerViewController *)self wantsDetachedFullscreenPresentation]|| ![(AVPlayerViewController *)self canDisplayContentInDetachedWindow])
  {
    v10 = [(AVPlayerViewController *)self fullScreenViewController];
    if (!v10)
    {
LABEL_9:
      [(AVPlayerViewController *)self _setContentViewOnSelf];
      goto LABEL_10;
    }

    v11 = v10;
    v12 = [(AVPlayerViewController *)self fullScreenViewController];
    if ([v12 isBeingPresented] && !v6)
    {

      goto LABEL_9;
    }

    v13 = [(AVPlayerViewController *)self fullScreenViewController];
    v14 = [v13 isBeingDismissed];

    if (v14 && v6)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  if (!v6)
  {
LABEL_18:
    v9[2](v9, 0);
    goto LABEL_19;
  }

  v15 = [v8 presentationContext];
  if (![v15 isDismissing] || (-[AVPlayerViewController player](self, "player"), (v16 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_17:

    goto LABEL_18;
  }

  v17 = v16;
  v18 = [v8 presentationContext];
  if (([v18 wasInitiallyInteractive] & 1) == 0)
  {

    goto LABEL_17;
  }

  v19 = [v8 presentationContext];
  v20 = [v19 presentedViewController];

  if (v20 != self)
  {
    goto LABEL_18;
  }

  objc_initWeak(&location, self);
  v21 = [(AVPlayerViewController *)self player];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __84__AVPlayerViewController_transitionController_transitionWillComplete_continueBlock___block_invoke;
  v22[3] = &unk_1E7208048;
  objc_copyWeak(&v24, &location);
  v23 = v9;
  [AVDismissalExpanseCoordinator coordinateDismissalWithExpanseSessionForPlayer:v21 cancellable:1 dismissalBlock:v22];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
LABEL_19:
  self->_fullscreenTransitionInProgress = 0;
  [(AVPlayerViewController *)self _updateControlsVisibilityPolicyAnimated:?];
  [(AVPlayerViewController *)self _updateStatusBarGradientViewVisibility];
}

void __84__AVPlayerViewController_transitionController_transitionWillComplete_continueBlock___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    if (a2)
    {
      v5 = [WeakRetained fullScreenViewController];
      [v5 attachContentView];
    }

    (*(*(a1 + 32) + 16))();
    WeakRetained = v6;
  }
}

- (void)_updateStatusBarGradientViewVisibility
{
  if (!a1 || *(a1 + 1256))
  {
    return;
  }

  v2 = [a1 presentingViewController];
  if (v2)
  {
  }

  else if (([a1 isPresentingFullScreenFromInline] & 1) == 0)
  {
    goto LABEL_8;
  }

  if ((*(a1 + 1070) & 1) == 0)
  {
    v3 = *(a1 + 1071) ^ 1;
    goto LABEL_10;
  }

LABEL_8:
  v3 = 0;
LABEL_10:
  v4 = [*(a1 + 1240) playbackContentContainerView];
  [v4 setCanShowStatusBarBackgroundGradientWhenStatusBarVisible:v3 & 1];
}

- (id)transitionControllerBackgroundViewBackgroundColor:(id)a3
{
  v5 = a3;
  v6 = [v5 presentationContext];
  v7 = [v6 wasInitiallyInteractive];
  if ((v7 & 1) == 0)
  {
    v3 = [v5 presentationContext];
    v4 = [v3 sourceView];
    if (!v4)
    {
      v8 = [MEMORY[0x1E69DC888] clearColor];
      goto LABEL_6;
    }
  }

  v8 = [MEMORY[0x1E69DC888] blackColor];
  if ((v7 & 1) == 0)
  {
LABEL_6:
  }

  return v8;
}

- (id)transitionControllerPresentedViewBackgroundColor:(id)a3
{
  v6 = a3;
  v7 = [v6 presentationContext];
  if (![v7 hasActiveTransition])
  {
    goto LABEL_29;
  }

  v8 = [v6 presentationContext];
  v9 = [v8 wasInitiallyInteractive];
  if (v9)
  {
    if ([(AVPlayerViewController *)self _isUnsupportedContent])
    {
      goto LABEL_28;
    }
  }

  else
  {
    v3 = [v6 presentationContext];
    v4 = [v3 sourceView];
    if (!v4 || [(AVPlayerViewController *)self _isUnsupportedContent])
    {
      goto LABEL_27;
    }
  }

  v10 = [(AVPlayerViewController *)self playerController];
  [v10 contentDimensions];
  v15 = ((v12 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v12 >= 0 || (v12 - 1) < 0xFFFFFFFFFFFFFLL;
  v17 = (v11 < 0 || ((v11 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (v11 - 1) > 0xFFFFFFFFFFFFELL;
  if (v17 || !v15)
  {
LABEL_26:

    if (v9)
    {
LABEL_28:

LABEL_29:
LABEL_30:
      v19 = [MEMORY[0x1E69DC888] blackColor];
      goto LABEL_31;
    }

LABEL_27:

    goto LABEL_28;
  }

  v18 = [(AVPlayerViewController *)self playerController];
  if ([v18 isPlayingOnExternalScreen])
  {

    goto LABEL_26;
  }

  v22 = [(AVPlayerViewController *)self isPictureInPictureActive];

  if ((v9 & 1) == 0)
  {
  }

  if (v22)
  {
    goto LABEL_30;
  }

  v19 = [MEMORY[0x1E69DC888] clearColor];
LABEL_31:
  v20 = v19;

  return v20;
}

- (BOOL)transitionControllerCanBeginInteractivePresentationTransition:(id)a3
{
  if (![(AVPlayerViewController *)self canControlPlayback]|| ![(AVPlayerViewController *)self _canEnterFullScreen])
  {
    return 0;
  }

  v4 = [(AVPlayerViewController *)self parentViewController];
  if (v4)
  {
    v5 = [(AVPlayerViewController *)self _isDescendantOfRootViewController];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)transitionControllerCanBeginInteractiveDismissalTransition:(id)a3
{
  if ([(AVPlayerViewController *)self canControlPlayback])
  {
    if ([(AVPlayerViewController *)self isPresentingFullScreenFromInline])
    {
      v4 = [(AVPlayerViewController *)self contentView];
      v5 = [v4 window];
      v6 = [v5 windowScene];
      v7 = [v6 interfaceOrientation];

      if (![(AVPlayerViewController *)self _isTransitioningToOrFromFullScreen])
      {
        v8 = [(AVPlayerViewController *)self presentationContext];
        v9 = [v8 presentingTransition];
        if (([v9 presenterSupportsOrientation:v7] & 1) == 0 && !+[AVPresentationContext supportsInteractiveCounterRotationDismissals](AVPresentationContext, "supportsInteractiveCounterRotationDismissals"))
        {
          v12 = 0;
          goto LABEL_15;
        }

        WeakRetained = objc_loadWeakRetained(&self->_mediaSelectionPopoverPresentationController);
        v11 = [(AVPlayerViewController *)WeakRetained presentedViewController];
        v12 = v11 == 0;

LABEL_7:
LABEL_15:

        goto LABEL_16;
      }
    }

    else if (![(AVPlayerViewController *)self _isTransitioningToOrFromFullScreen]&& [(AVPlayerViewController *)self _isDescendantOfRootViewController])
    {
      v13 = [(AVPlayerViewController *)self presentedViewController];
      if (v13)
      {
        v8 = v13;
        v12 = 0;
LABEL_16:

        return v12;
      }

      v9 = [(AVPlayerViewController *)self presentingViewController];
      WeakRetained = [v9 presentedViewController];
      if (WeakRetained == self)
      {
        v12 = [(AVPlayerViewController *)self _modalPresentationStyleIsFullScreen];
        v8 = 0;
      }

      else
      {
        v8 = 0;
        v12 = 0;
      }

      goto LABEL_7;
    }
  }

  return 0;
}

- (void)transitionControllerBeginInteractivePresentationTransition:(id)a3
{
  v4 = [(AVPlayerViewController *)self viewIfLoaded];
  v5 = [v4 window];

  if (v5)
  {

    [(AVPlayerViewController *)self _transitionToFullScreenAnimated:1 interactive:1 completionHandler:&__block_literal_global_810];
  }
}

- (void)transitionController:(id)a3 prepareForFinishingInteractiveTransition:(id)a4
{
  v9 = a4;
  if (![(AVPlayerViewController *)self isPresentingFullScreenFromInline])
  {
    goto LABEL_5;
  }

  v5 = [(AVPlayerViewController *)self fullScreenViewController];
  if (([v5 isBeingPresented] & 1) != 0 || -[AVPlayerViewController isPictureInPictureActive](self, "isPictureInPictureActive"))
  {

LABEL_5:
    [(AVPlayerViewController *)self setFinishPreparingForInteractiveDismissalHandler:0];
    v9[2]();
    goto LABEL_6;
  }

  v6 = [(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewController_shouldExitFullScreenWithReason_];

  if (!v6)
  {
    goto LABEL_5;
  }

  [(AVPlayerViewController *)self setFinishPreparingForInteractiveDismissalHandler:v9];
  v7 = [(AVPlayerViewController *)self delegate];
  v8 = [v7 playerViewController:self shouldExitFullScreenWithReason:2];

  if (v8)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (id)transitionController:(id)a3 targetViewForDismissingViewController:(id)a4
{
  v6 = a4;
  v7 = [a3 presentationContext];
  v8 = [v7 sourceView];

  if (v6 == self)
  {
    if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewController_targetViewForDismissalAnimationWithProposedTargetView_])
    {
      v11 = [(AVPlayerViewController *)self delegate];
      v12 = [v11 playerViewController:self targetViewForDismissalAnimationWithProposedTargetView:v8];

      v8 = v12;
    }
  }

  else
  {
    v9 = [(AVPlayerViewController *)self view];

    if (v8 != v9)
    {
      v10 = _AVLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_error_impl(&dword_18B49C000, v10, OS_LOG_TYPE_ERROR, "Target view should be our own view when the full screen view controller is being transitioned!", v14, 2u);
      }
    }
  }

  return v8;
}

- (void)transitionController:(id)a3 willBeginDismissingViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AVPlayerViewController *)self _shouldPausePlaybackWhenExitingFullscreen];
  v9 = [AVPlayerControllerVolumeAnimator alloc];
  v10 = [(AVPlayerViewController *)self playerController];
  v11 = [(AVPlayerControllerVolumeAnimator *)v9 initWithPlayerController:v10];

  if (!v8)
  {
    if (![(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewControllerShouldMuteVolumeForFullScreenDismissalTransition_])
    {
      goto LABEL_8;
    }

LABEL_6:
    v13 = [(AVPlayerViewController *)self delegate];
    v14 = [v13 playerViewControllerShouldMuteVolumeForFullScreenDismissalTransition:self];

    if ((v14 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = [(AVPlayerControllerVolumeAnimator *)v11 canAnimateVolumeTowardsZero];
  if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewControllerShouldMuteVolumeForFullScreenDismissalTransition_])
  {
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_7:
    [(AVPlayerViewController *)self setVolumeAnimator:v11];
  }

LABEL_8:
  if (self->_usesGlassCatalystControls)
  {
    [(AVPlayerViewController *)self catalystPlaybackControlsController];
  }

  else
  {
    [(AVPlayerViewController *)self chromePlaybackControlsController];
  }
  v15 = ;
  v16 = [v7 transitionCoordinator];
  if ([v16 isInteractive])
  {
    [v15 setPlayerViewControllerIsBeingTransitionedWithResizing:1];
  }

  else
  {
    v17 = [v6 presentationContext];
    v18 = [v17 sourceView];
    [v15 setPlayerViewControllerIsBeingTransitionedWithResizing:v18 != 0];
  }

  v19 = [v6 presentationContext];
  v20 = [v19 sourceView];

  if (v20)
  {
    v21 = [(AVPlayerViewController *)self controlsViewController];
    [v20 bounds];
    v23 = v22;
    v25 = v24;
    v26 = [(AVPlayerViewController *)self transitionCoordinator];
    [v21 viewWillTransitionToSize:v26 withTransitionCoordinator:{v23, v25}];
  }

  objc_initWeak(&location, self);
  v27 = [v7 transitionCoordinator];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __81__AVPlayerViewController_transitionController_willBeginDismissingViewController___block_invoke;
  v31[3] = &unk_1E7208000;
  objc_copyWeak(&v33, &location);
  v34 = v8;
  v31[4] = self;
  v28 = v11;
  v32 = v28;
  [v27 animateAlongsideTransition:0 completion:v31];

  if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewController_willEndFullScreenPresentationWithAnimationCoordinator_])
  {
    v29 = [(AVPlayerViewController *)self delegate];
    v30 = [v7 transitionCoordinator];
    [v29 playerViewController:self willEndFullScreenPresentationWithAnimationCoordinator:v30];
  }

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);
}

void __81__AVPlayerViewController_transitionController_willBeginDismissingViewController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if ([v3 isCancelled])
    {
      v5 = [WeakRetained volumeAnimator];
      [v5 restoreVolumeIfNeeded];

      [WeakRetained setVolumeAnimator:0];
      [WeakRetained[150] reset];
    }

    else
    {
      [WeakRetained[154] setWantsAppearanceConfigValues:0];
      v6 = [WeakRetained[154] appearanceProxy];
      v7 = [WeakRetained contentView];
      v8 = [v7 playbackContentContainerView];
      [v6 setActualView:v8];

      if (*(a1 + 56) == 1)
      {
        v9 = [WeakRetained playerController];
        v10 = objc_opt_respondsToSelector();

        v11 = [WeakRetained playerController];
        v12 = v11;
        if (v10)
        {
          [v11 pauseForAllCoordinatedPlaybackParticipants:0];
        }

        else
        {
          [v11 setPlaying:0];
        }
      }

      [*(a1 + 32) _setContentViewOnSelf];
      [WeakRetained _notifyOfMetricsCollectionEvent:5];
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __81__AVPlayerViewController_transitionController_willBeginDismissingViewController___block_invoke_2;
      v17 = &unk_1E7209A10;
      v18 = *(a1 + 40);
      objc_copyWeak(&v19, (a1 + 48));
      dispatch_async(MEMORY[0x1E69E96A0], &v14);
      objc_destroyWeak(&v19);
    }

    [WeakRetained[200] contentSourceVideoRectInWindowChanged];
    [WeakRetained _updatePlaybackControlsState];
    if (*(WeakRetained + 1480) == 1)
    {
      [WeakRetained catalystPlaybackControlsController];
    }

    else
    {
      [WeakRetained chromePlaybackControlsController];
    }
    v13 = ;
    [v13 setPlayerViewControllerIsBeingTransitionedWithResizing:0];
  }
}

void __81__AVPlayerViewController_transitionController_willBeginDismissingViewController___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) restoreVolumeIfNeeded];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setVolumeAnimator:0];

  v3 = objc_loadWeakRetained((a1 + 40));
  v6 = [v3 pendingRestoreUserInterfaceForPictureInPictureStopHandler];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 setPendingRestoreUserInterfaceForPictureInPictureStopHandler:0];

  v5 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6);
    v5 = v6;
  }
}

- (void)transitionController:(id)a3 willBeginPresentingViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AVPlayerViewController *)self fullScreenViewController];

  if (v8 == v7)
  {
    [(AVPresentationContainerView *)self->_playerViewControllerView setWantsAppearanceConfigValues:1];
    v9 = [(AVPresentationContainerView *)self->_playerViewControllerView appearanceProxy];
    [v9 setActualView:0];

    v10 = [(AVPlayerViewController *)self fullScreenViewController];
    [v10 setDelegate:self];

    v11 = [(AVPlayerViewController *)self presentationContext];
    [v11 setAllowsSecondWindowPresentations:{-[AVPlayerViewController wasInitializedUsingWebKitSPI](self, "wasInitializedUsingWebKitSPI") ^ 1}];
  }

  v12 = [v6 presentationContext];
  v13 = [v12 sourceView];

  if (v13)
  {
    v14 = [(AVPlayerViewController *)self controlsViewController];
    [v13 bounds];
    v16 = v15;
    v18 = v17;
    v19 = [(AVPlayerViewController *)self transitionCoordinator];
    [v14 viewWillTransitionToSize:v19 withTransitionCoordinator:{v16, v18}];
  }

  if (self->_usesGlassCatalystControls)
  {
    [(AVPlayerViewController *)self catalystPlaybackControlsController];
  }

  else
  {
    [(AVPlayerViewController *)self chromePlaybackControlsController];
  }
  v20 = ;
  v21 = [v7 transitionCoordinator];
  if ([v21 isInteractive])
  {
    [v20 setPlayerViewControllerIsBeingTransitionedWithResizing:1];
  }

  else
  {
    v22 = [v6 presentationContext];
    v23 = [v22 sourceView];
    [v20 setPlayerViewControllerIsBeingTransitionedWithResizing:v23 != 0];
  }

  v24 = [v7 transitionCoordinator];
  v28 = MEMORY[0x1E69E9820];
  v29 = 3221225472;
  v30 = __81__AVPlayerViewController_transitionController_willBeginPresentingViewController___block_invoke;
  v31 = &unk_1E7207FD8;
  v32 = self;
  v25 = v7;
  v33 = v25;
  [v24 animateAlongsideTransition:0 completion:&v28];

  if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewController_willBeginFullScreenPresentationWithAnimationCoordinator_, v28, v29, v30, v31, v32])
  {
    v26 = [(AVPlayerViewController *)self delegate];
    v27 = [v25 transitionCoordinator];
    [v26 playerViewController:self willBeginFullScreenPresentationWithAnimationCoordinator:v27];
  }
}

uint64_t __81__AVPlayerViewController_transitionController_willBeginPresentingViewController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isCancelled];
  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 _setContentViewOnSelf];
    [*(*(a1 + 32) + 1232) setWantsAppearanceConfigValues:0];
    v6 = [*(*(a1 + 32) + 1232) appearanceProxy];
    v7 = [*(a1 + 32) contentView];
    v8 = [v7 playbackContentContainerView];
    [v6 setActualView:v8];
  }

  else
  {
    [v5 _notifyOfMetricsCollectionEvent:4];
  }

  [*(*(a1 + 32) + 1600) contentSourceVideoRectInWindowChanged];
  [*(a1 + 32) _updatePlaybackControlsState];
  v9 = *(a1 + 32);
  if (v9[1480] == 1)
  {
    [v9 catalystPlaybackControlsController];
  }

  else
  {
    [v9 chromePlaybackControlsController];
  }
  v10 = ;
  [v10 setPlayerViewControllerIsBeingTransitionedWithResizing:0];

  LOBYTE(v10) = [v3 isCancelled];
  if ((v10 & 1) == 0)
  {
    [*(a1 + 40) setNeedsUpdateOfSupportedInterfaceOrientations];
  }

  v11 = [*(a1 + 32) dismissForPIPStartAfterPresentationHandler];

  if (v11)
  {
    v12 = [*(a1 + 32) dismissForPIPStartAfterPresentationHandler];
    [*(a1 + 32) setDismissForPIPStartAfterPresentationHandler:0];
    v12[2](v12);
  }

  v13 = *(a1 + 32);

  return [v13 _createPictureInPictureControllerIfNeeded];
}

- (BOOL)transitionController:(id)a3 gestureRecognizer:(id)a4 shouldReceiveTouch:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(AVPlayerViewController *)self presentationContext];

  if (!v9 || (-[AVPlayerViewController presentationContext](self, "presentationContext"), v10 = objc_claimAutoreleasedReturnValue(), [v10 presentedViewController], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "transitioningDelegate"), v12 = objc_claimAutoreleasedReturnValue(), -[AVPlayerViewController _avkitPreferredTransitioningDelegate](self, "_avkitPreferredTransitioningDelegate"), v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v11, v10, v12 == v13))
  {
    if (![(AVPlayerViewController *)self _isTrackingUserInteractionWithInteractiveView])
    {
      v15 = [v7 view];
      v16 = [(AVPlayerViewController *)self contentView];

      if (v15 != v16)
      {
        v17 = [v8 view];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          isKindOfClass = 0;
LABEL_24:

          goto LABEL_25;
        }

        v19 = [v8 view];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = [v8 view];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
LABEL_22:

          goto LABEL_23;
        }

        isKindOfClass = 1;
LABEL_23:

        goto LABEL_24;
      }

      usesGlassCatalystControls = self->_usesGlassCatalystControls;
      v17 = [v8 view];
      v19 = [(AVPlayerViewController *)self _actualContentOverlayView];
      v20 = [v17 isDescendantOfView:v19];
      if (usesGlassCatalystControls)
      {
        if ((v20 & 1) == 0)
        {
          v21 = [(AVPlayerViewController *)self contentView];
          v22 = [v8 view];
          if ([v21 isViewDescendantOfPlaybackControlsSubview:v22])
          {
            v23 = [v8 view];
            v28 = [(AVPlayerViewController *)self contentView];
            v24 = [v28 glassPlaybackControlsView];
LABEL_19:
            v25 = v24;
            v26 = [v24 prominentPlayButtonContainerView];
            isKindOfClass = [v23 isDescendantOfView:v26];

LABEL_21:
            goto LABEL_22;
          }

          goto LABEL_20;
        }
      }

      else if ((v20 & 1) == 0)
      {
        v21 = [(AVPlayerViewController *)self contentView];
        v22 = [v8 view];
        if ([v21 isViewDescendantOfPlaybackControlsSubview:v22])
        {
          v23 = [v8 view];
          v28 = [(AVPlayerViewController *)self contentView];
          v24 = [v28 chromePlaybackControlsView];
          goto LABEL_19;
        }

LABEL_20:
        isKindOfClass = 1;
        goto LABEL_21;
      }

      isKindOfClass = 0;
      goto LABEL_23;
    }
  }

  isKindOfClass = 0;
LABEL_25:

  return isKindOfClass & 1;
}

- (id)transitionController:(id)a3 configurationForPresentedViewController:(id)a4 presentingViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9 == self || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v12 = [AVPresentationConfiguration configurationWithTransitionStyle:v11 transitionDuration:0.4];

  return v12;
}

- (void)_notifyDelegateOfAnalysisCalloutAction
{
  if (a1)
  {
    v2 = [a1 delegate];
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = [a1 delegate];
      [v4 playerViewControllerWillPerformAnalysisCalloutAction:a1];
    }
  }
}

- (void)visualAnalysisViewDidUpdateVisualLookupAvailability:(id)a3
{
  v9 = a3;
  v4 = +[AVKitGlobalSettings shared];
  v5 = [v4 extendedVisualAnalysisEnabled];

  if (v5)
  {
    v6 = [v9 hasVisualLookupResults];
    v7 = [(AVMobileControlsViewController *)self->_controlsViewController controlsViewControllerIfChromeless];
    [v7 setShowsVisualLookupControl:v6];

    v8 = [(AVMobileControlsViewController *)self->_controlsViewController controlsViewControllerIfGlass];
    [v8 setShowsVisualLookupControl:v6];

    [(AVPlayerViewController *)self _setupToggleVisualLookupActionIfNeeded];
    [(UIAction *)self->_toggleLookupAction setState:self->_showsVisualLookup];
    [(UIAction *)self->_toggleLookupAction setAttributes:[(UIAction *)self->_toggleLookupAction attributes]& 0xFFFFFFFFFFFFFFFELL | [(AVVisualAnalysisView *)self->_analysisView hasVisualLookupResults]^ 1];
  }
}

- (void)_setupToggleVisualLookupActionIfNeeded
{
  if (a1)
  {
    v2 = +[AVKitGlobalSettings shared];
    v3 = [v2 extendedVisualAnalysisEnabled];

    if (v3)
    {
      objc_initWeak(&location, a1);
      v4 = MEMORY[0x1E69DC628];
      v5 = AVLocalizedString(@"OVERFLOW_MENU_VISUAL_LOOKUP");
      v6 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"info.circle.and.sparkles"];
      v9 = MEMORY[0x1E69E9820];
      v10 = 3221225472;
      v11 = __64__AVPlayerViewController__setupToggleVisualLookupActionIfNeeded__block_invoke;
      v12 = &unk_1E7209230;
      objc_copyWeak(&v13, &location);
      v7 = [v4 actionWithTitle:v5 image:v6 identifier:0 handler:&v9];
      v8 = *(a1 + 1120);
      *(a1 + 1120) = v7;

      [*(a1 + 1120) setAttributes:{objc_msgSend(*(a1 + 1120), "attributes") & 0xFFFFFFFFFFFFFFFELL | objc_msgSend(*(a1 + 1800), "hasVisualLookupResults", v9, v10, v11, v12) ^ 1}];
      [*(a1 + 1120) setState:*(a1 + 1520)];
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }
}

void __64__AVPlayerViewController__setupToggleVisualLookupActionIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _visualLookupMenuItemPressedEvent:0];
}

- (void)visualAnalysisViewDidUpdateSubjectAvailability:(id)a3
{
  v8 = a3;
  v4 = +[AVKitGlobalSettings shared];
  v5 = [v4 subjectLiftGestureEnabled];

  if ((v5 & 1) == 0)
  {
    v6 = [(AVMobileControlsViewController *)self->_controlsViewController controlsViewControllerIfChromeless];
    [v6 setShowsCopySubjectControl:{objc_msgSend(v8, "hasSubjectToCopy")}];

    v7 = [(AVMobileControlsViewController *)self->_controlsViewController controlsViewControllerIfGlass];
    [v7 setShowsCopySubjectControl:{objc_msgSend(v8, "hasSubjectToCopy")}];
  }
}

- (void)_updateShowsAnalysisControl
{
  if (a1)
  {
    v10 = [*(a1 + 1248) controlsViewControllerIfChromeless];
    v2 = [*(a1 + 1248) controlsViewControllerIfGlass];
    v3 = [*(a1 + 1248) controlsViewControllerIfCatalystGlass];
    v4 = *(a1 + 1256);
    v5 = [a1 allowsVideoFrameAnalysis];
    v6 = [a1 showsAnalysisButtonIfAvailable];
    v7 = *(a1 + 1800);
    v8 = [v7 hasProminentText];
    if (v5)
    {
      v9 = !v4 || v7 == 0;
      if (!v9 && v10 | v2 | v3)
      {
        [v10 setShowsAnalysisControl:v6 & v8];
        [v2 setShowsAnalysisControl:v6 & v8];
        [v3 setShowsAnalysisControl:v6 & v8];
      }
    }
  }
}

- (void)visualAnalysisView:(id)a3 prepareForCalloutAction:(SEL)a4 completion:(id)a5
{
  v6 = a5;
  [(AVPlayerViewController *)self _notifyDelegateOfAnalysisCalloutAction];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__AVPlayerViewController_visualAnalysisView_prepareForCalloutAction_completion___block_invoke;
  block[3] = &unk_1E72099C8;
  v9 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)visualAnalysisViewDidPressAnalysisButton:(id)a3
{
  v6 = a3;
  if (self && self->_controlsGeneration)
  {
    [(AVPlayerViewController *)self _updateControlsVisibilityPolicyAnimated:?];
  }

  [(AVControlsViewController *)self->_controlsViewController toggleVisibility:self];
  v4 = [(AVPlayerViewController *)self contentView];
  v5 = [v4 playbackContentContainerView];
  [v5 setClipsToBounds:{objc_msgSend(v6, "highlightsInteractableAreas")}];
}

- (void)videoFrameVisualAnalyzerFailedAnalyzingVideoFrame:(id)a3 withError:(id)a4
{
  currentInternalImageAnalysis = self->_currentInternalImageAnalysis;
  self->_currentInternalImageAnalysis = 0;

  [(AVPlayerViewController *)&self->super.super.super.isa _updateAnalysisViewImageAnalysis];
}

- (void)_updateAnalysisViewImageAnalysis
{
  if (a1)
  {
    v2 = [(AVPlayerViewController *)a1 _currentAnalysis];
    if ([a1 allowsVideoFrameAnalysis])
    {
      [a1[225] setAnalysis:v2];
    }
  }
}

- (id)_currentAnalysis
{
  if (a1)
  {
    v2 = *(a1 + 1104);
    v3 = *(a1 + 1584);
    if (v3)
    {
      v4 = v3;

      v2 = v4;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)videoFrameVisualAnalyzerDidFinishAnalyzingVideoFrame:(id)a3 withAnalysis:(id)a4
{
  objc_storeStrong(&self->_currentInternalImageAnalysis, a4);
  [(AVPlayerViewController *)self _setUpVisualAnalysisViewIfNeeded];

  [(AVPlayerViewController *)&self->super.super.super.isa _updateAnalysisViewImageAnalysis];
}

- (void)_setUpVisualAnalysisViewIfNeeded
{
  if (a1)
  {
    if (!*(a1 + 1800))
    {
      v2 = [(AVPlayerViewController *)a1 _currentAnalysis];
      if (v2)
      {
        v3 = v2;
        v4 = [a1 hasPerformedInitialSetup];

        if (v4)
        {
          [a1 willChangeValueForKey:@"analysisView"];
          v5 = [AVVisualAnalysisView alloc];
          v6 = [(AVVisualAnalysisView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
          v7 = *(a1 + 1800);
          *(a1 + 1800) = v6;

          [a1 didChangeValueForKey:@"analysisView"];
          [*(a1 + 1800) setDelegate:a1];
          [(AVPlayerViewController *)a1 _updateAnalysisViewSuperview];
          [(AVPlayerViewController *)a1 _updateAnalysisViewImageAnalysis];
          [(AVPlayerViewController *)a1 _updateWantsAnalysisButtonVisibleStateIfNeeded];
          [(AVPlayerViewController *)a1 _updateAnalysisButtonBottomInsetIfNeeded];
          [(AVPlayerViewController *)a1 _updateVisualAnalysisViewHiddenState];
          [(AVPlayerViewController *)a1 _updateShowsAnalysisControl];
          [(AVPlayerViewController *)a1 _updateVisualAnalysisViewActiveInteractionTypes];
          if (*(a1 + 1552) == 1)
          {
            v8 = 30;
          }

          else
          {
            v8 = *(a1 + 1552);
          }

          v9 = *(a1 + 1192);

          [v9 setVideoFrameAnalysisTypes:v8];
        }
      }
    }
  }
}

- (void)_updateAnalysisViewSuperview
{
  if (a1)
  {
    v4 = [a1 contentView];
    v2 = [v4 playbackContentContainerView];
    v3 = [v2 activeContentView];
    [v3 setVisualAnalysisView:a1[225]];
  }
}

- (uint64_t)_updateVisualAnalysisViewActiveInteractionTypes
{
  if (result)
  {
    if (*(result + 1552) == 1)
    {
      v1 = 30;
    }

    else
    {
      v1 = *(result + 1552);
    }

    if ((v1 & 8) != 0 && !*(result + 1520))
    {
      v1 &= ~8uLL;
    }

    return [*(result + 1800) setAnalysisTypes:v1];
  }

  return result;
}

- (BOOL)observesMediaSelectionForSmartSubtitlesController:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  preferredPlaybackControlsSupplementalSubtitleDisplayOption = self->_preferredPlaybackControlsSupplementalSubtitleDisplayOption;
  if (preferredPlaybackControlsSupplementalSubtitleDisplayOption)
  {
    v4 = _AVLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[AVPlayerViewController observesMediaSelectionForSmartSubtitlesController:]";
      _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s AVPlaybackControlsSupplementalSubtitleDisplayOption enabled", &v6, 0xCu);
    }
  }

  else
  {
    [(AVPlayerViewController *)self _updateSupplementalSubtitlesIfNecessary];
  }

  return preferredPlaybackControlsSupplementalSubtitleDisplayOption != 0;
}

- (UIEdgeInsets)playerViewControllerContentViewEdgeInsetsForLetterboxedVideo:(id)a3
{
  v4 = a3;
  v5 = [(AVPlayerViewController *)self playerController];
  [v5 contentDimensions];
  v7 = v6;
  v9 = v8;

  if ([(AVPlayerViewController *)self isPresentedFullScreen]|| [(AVPlayerViewController *)self isPresentingFullScreenFromInline]|| [(AVPlayerViewController *)self _isTransitioningToOrFromFullScreen])
  {
    v10 = [(AVPlayerViewController *)self playerController];
    if ([v10 isPlayingOnExternalScreen])
    {
LABEL_41:

      goto LABEL_42;
    }

    v11 = [v4 traitCollection];
    [v11 displayCornerRadius];
    if (v12 <= 0.0)
    {
LABEL_40:

      goto LABEL_41;
    }

    v13 = ((v9 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF || v9 < 0;
    v14 = v13 && (v9 - 1) >= 0xFFFFFFFFFFFFFLL;
    v15 = !v14;

    v16 = v7 < 0 || ((v7 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
    v17 = v16 && (v7 - 1) > 0xFFFFFFFFFFFFELL;
    if (!v17 && v15)
    {
      v18 = [v4 window];
      v19 = v18;
      if (v18)
      {
        v10 = v18;
      }

      else
      {
        v20 = [(AVPlayerViewController *)self presentationContext];
        v10 = [v20 presentationWindow];
      }

      v21 = [(AVPlayerViewController *)self presentationContext];
      v11 = [v21 currentTransition];

      v22 = [(AVPlayerViewController *)self presentationContext];
      if ([v22 hasActiveTransition])
      {
        v23 = [v10 _windowInterfaceOrientation];
        if (v23 == [v11 finalInterfaceOrientation])
        {
          [v4 bounds];
          Width = CGRectGetWidth(v46);
          [v10 bounds];
          Height = CGRectGetHeight(v47);

          if (Width != Height)
          {
            goto LABEL_31;
          }
        }

        else
        {
        }

        v26 = 1;
LABEL_34:
        [v10 bounds];
        UIRectGetCenter();
        [AVCacheLargestInscribedRectInBoundingPath getLargestInscribableRectForView:"getLargestInscribableRectForView:withCenter:aspectRatio:" withCenter:v10 aspectRatio:?];
        x = v48.origin.x;
        y = v48.origin.y;
        v29 = v48.size.width;
        v30 = v48.size.height;
        if (CGRectIsNull(v48))
        {
          v31 = [v10 traitCollection];
          v32 = [v31 userInterfaceIdiom];

          if (!v32)
          {
            v33 = [v4 layoutClass];
            [v33 unsignedIntegerValue];
          }
        }

        else
        {
          v34 = x;
          v35 = y;
          v36 = v29;
          v37 = v30;
          if (v26)
          {
            CGRectGetMinX(*&v34);
            v49.origin.x = x;
            v49.origin.y = y;
            v49.size.width = v29;
            v49.size.height = v30;
            CGRectGetMinY(v49);
          }

          else
          {
            CGRectGetMinY(*&v34);
            v50.origin.x = x;
            v50.origin.y = y;
            v50.size.width = v29;
            v50.size.height = v30;
            CGRectGetMinX(v50);
          }
        }

        goto LABEL_40;
      }

LABEL_31:
      v26 = 0;
      goto LABEL_34;
    }
  }

LABEL_42:
  UIRoundToViewScale();
  v39 = v38;
  UIRoundToViewScale();
  v41 = v40;

  v42 = v39;
  v43 = v41;
  v44 = v39;
  v45 = v41;
  result.right = v45;
  result.bottom = v44;
  result.left = v43;
  result.top = v42;
  return result;
}

- (void)_updateVideoGravityPinchGestureEnablementState
{
  if (result)
  {
    v1 = result;
    v2 = result[157];
    v3 = [result contentView];
    v4 = [v3 isInAScrollView];

    if (v2)
    {
      v5 = ([(AVPlayerViewController *)v1 _contentTabsVisible]| v4) ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }

    v6 = *(v1 + 1384);

    return [v6 setEnabled:v5 & 1];
  }

  return result;
}

- (BOOL)_contentTabsVisible
{
  if (!a1)
  {
    return 0;
  }

  v1 = [(AVPlayerViewController *)a1 _contentTabPresentationContext];
  v2 = v1;
  if (v1)
  {
    if ([v1 state])
    {
      v3 = [v2 state] == 2;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_contentTabPresentationContext
{
  if (a1)
  {
    v2 = [*(a1 + 1248) controlsViewControllerIfChromeless];
    v3 = [v2 contentTabPresentationContext];

    if (!v3)
    {
      v4 = [*(a1 + 1248) controlsViewControllerIfGlass];
      v3 = [v4 contentTabPresentationContext];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)playerViewControllerContentView:(id)a3 didMoveToWindow:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  if (self)
  {
    [(AVPlayerViewController *)self _updateControlsViewControllerPerformanceState];
    [(AVPlayerViewController *)self performInitialSetupIfNeededAndPossible];
    [(AVPlayerViewController *)self _updatePlayerControllerInspectionState];
    v5 = [(AVPlayerViewControllerContentView *)self->_playerViewControllerContentView window];
    v6 = [(AVSecondScreenConnection *)self->_secondScreenConnection isActive];
    if (v5 || !v6)
    {
      [(AVPlayerViewController *)self _updateSecondScreenConnectionReadyToConnect];
    }

    else
    {
      v7 = _AVLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315138;
        v9 = "[AVPlayerViewController _contentViewDidMoveWindow]";
        _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s Skip _updateSecondScreenConnectionReadyToConnect", &v8, 0xCu);
      }
    }
  }

  [(AVPlayerViewController *)self _updateVideoGravityPinchGestureEnablementState];
}

- (void)chromelessControlsViewController:(id)a3 didSelectSetting:(id)a4 forSelector:(id)a5
{
  v9 = a4;
  v7 = a5;
  v8 = [(AVPlayerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 playerViewController:self didSelectMediaPresentationSetting:v9 forMediaPresentationSelector:v7];
  }
}

- (void)controlsViewControllerDidPressLiveTextButton:(id)a3
{
  if (self)
  {
    v4 = [(AVVisualAnalysisView *)self->_analysisView highlightsInteractableAreas]^ 1;
    analysisView = self->_analysisView;

    [(AVVisualAnalysisView *)analysisView setHighlightsInteractableAreas:v4];
  }
}

- ($175F2685EF764341F5DD80B75CC65478)controlsViewController:(id)a3 contentTabPresentationInfoWithPreferredHeight:(double)a4
{
  v6 = a3;
  v7 = [(AVPlayerViewController *)self playerLayerView];
  v8 = [v6 viewIfLoaded];

  v9 = 0;
  if (v7 && v8)
  {
    v10 = 0.0;
    if (self->_playerViewControllerContentView)
    {
      [v8 bounds];
      v12 = v11;
      [(AVPlayerViewController *)self _availableSpaceForContentTabWithVideoDodgingForSize:v13, v11];
      v15 = v14;
      v16 = v12 * 0.5;
      if ((vabds_f32(v15, v16) < 0.00000011921 || v15 < v16) && v14 >= a4)
      {
        v14 = a4;
      }

      v9 = 1;
      if (v14 >= v12 * 0.75)
      {
        v14 = v12 * 0.75;
      }

      v10 = v14;
    }
  }

  else
  {
    v10 = 0.0;
  }

  [(AVPlayerViewController *)self updateVideoBounds];

  v19 = v10;
  v20 = v9;
  result.var1 = v20;
  result.var0 = v19;
  return result;
}

- (id)controlsViewController:(id)a3 displayNameForMediaSelectionOption:(id)a4
{
  v5 = a4;
  if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewController_displayNameForMediaSelectionOption_])
  {
    v6 = [(AVPlayerViewController *)self delegate];
    v7 = [v6 playerViewController:self displayNameForMediaSelectionOption:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)controlsViewControllerDidUpdateLayoutGuides:(id)a3
{
  v3 = [(AVPlayerViewController *)self contentView];
  [v3 updateCustomControlsViewLayoutGuides];
}

- (void)controlsViewController:(id)a3 willBeginUpdatingVisibleControlsTo:(unint64_t)a4 withAnimationCoordinator:(id)a5
{
  v8 = a3;
  v9 = a5;
  [(AVPlayerViewController *)self _updateCustomControlsViewStateWithVisibleControlsSet:a4];
  if ([(AVPlayerViewControllerCustomControlsView *)self->_customControlsView needsUpdateConstraints])
  {
    [(AVPlayerViewControllerCustomControlsView *)self->_customControlsView updateConstraintsIfNeeded];
    objc_initWeak(&location, self);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __109__AVPlayerViewController_controlsViewController_willBeginUpdatingVisibleControlsTo_withAnimationCoordinator___block_invoke;
    v14 = &unk_1E7209EA8;
    objc_copyWeak(&v15, &location);
    [v9 addCoordinatedAnimations:&v11 completion:0];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  if ((a4 != 0) == ([(AVControlsViewController *)self->_controlsViewController visibleControls:v11]== 0) && [(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewController_willTransitionToVisibilityOfPlaybackControls_withAnimationCoordinator_])
  {
    v10 = [(AVPlayerViewController *)self delegate];
    [v10 playerViewController:self willTransitionToVisibilityOfPlaybackControls:a4 != 0 withAnimationCoordinator:v9];
  }
}

void __109__AVPlayerViewController_controlsViewController_willBeginUpdatingVisibleControlsTo_withAnimationCoordinator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[158] layoutIfNeeded];
    WeakRetained = v2;
  }
}

- (void)_transitionFromDetachedFullScreenPresentationToInlineAnimated:(BOOL)a3 completionHandler:(id)a4
{
  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_18B49C000, v4, OS_LOG_TYPE_ERROR, "Detached fullscreen is only available on Mac Catalyst.", v5, 2u);
  }
}

- (void)_transitionFromFullScreenPresentationToInlineAnimated:(BOOL)a3 interactive:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = [(AVPlayerViewController *)self fullScreenViewController];
  v10 = [v9 presentingViewController];
  if (v10)
  {
    v11 = [(AVPlayerViewController *)self fullScreenViewController];
  }

  else
  {
    v11 = self;
  }

  v12 = v11;

  self->_fullscreenTransitionInProgress = 1;
  v13 = [(AVPlayerViewController *)self _transitionController];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __110__AVPlayerViewController__transitionFromFullScreenPresentationToInlineAnimated_interactive_completionHandler___block_invoke;
  v15[3] = &unk_1E7207FB0;
  v15[4] = self;
  v16 = v8;
  v14 = v8;
  [v13 beginFullScreenDismissalOfViewController:v12 animated:v6 isInteractive:v5 completion:v15];

  [(AVPlayerViewController *)self _updateControlsVisibilityPolicyAnimated:?];
  [(AVPlayerViewController *)self _updateStatusBarGradientViewVisibility];
}

void __110__AVPlayerViewController__transitionFromFullScreenPresentationToInlineAnimated_interactive_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, a2, 0);
  }

  v5 = [*(a1 + 32) interactiveDismissalCompletionHandler];

  if (v5)
  {
    v6 = [*(a1 + 32) interactiveDismissalCompletionHandler];
    v6[2](v6, a2, 0);

    [*(a1 + 32) setInteractiveDismissalCompletionHandler:0];
  }

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"AVPlayerViewControllerDidExitFullScreenFromInline" object:*(a1 + 32)];
}

- (void)_transitionFromFullScreenAnimated:(BOOL)a3 interactive:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v6 = a3;
  v24[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  if (![(AVPlayerViewController *)self _isDescendantOfRootViewController])
  {
    NSLog(&cfstr_WarningIsTryin_0.isa, self);
  }

  v9 = [v8 copy];

  [(AVPlayerViewController *)self _resetVisualAnalysisViewSelectionIfNeeded];
  if (([(AVPlayerViewController *)self isPresentingFullScreenFromInline]|| [(AVPlayerViewController *)self isPresentedFullScreen]) && ![(AVPlayerViewController *)self _isTransitioningToOrFromFullScreen])
  {
    if ([(AVPlayerViewController *)self isPresentingDetachedFullScreen])
    {
      [(AVPlayerViewController *)self _transitionFromDetachedFullScreenPresentationToInlineAnimated:v6 completionHandler:v9];
    }

    else
    {
      [(AVPlayerViewController *)self _transitionFromFullScreenPresentationToInlineAnimated:v6 interactive:v5 completionHandler:v9];
    }
  }

  else
  {
    v10 = [(AVPlayerViewController *)self presentingViewController];
    if (!v10 || v5 || [(AVPlayerViewController *)self _isTransitioningToOrFromFullScreen])
    {
    }

    else
    {
      v17 = [(AVPlayerViewController *)self presentingViewController];
      v18 = [v17 presentedViewController];
      v19 = [v18 isBeingDismissed];

      if ((v19 & 1) == 0)
      {
        v20 = [(AVPlayerViewController *)self presentingViewController];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __90__AVPlayerViewController__transitionFromFullScreenAnimated_interactive_completionHandler___block_invoke;
        v21[3] = &unk_1E72099C8;
        v22 = v9;
        [v20 dismissViewControllerAnimated:v6 completion:v21];

        goto LABEL_17;
      }
    }

    if (v9)
    {
      v11 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A578];
      v12 = MEMORY[0x1E696AEC0];
      v13 = _AVMethodProem(self);
      v14 = [v12 stringWithFormat:@"Invalid call of %@!", v13];
      v24[0] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v16 = [v11 errorWithDomain:@"AVKitErrorDomain" code:0 userInfo:v15];
      (v9)[2](v9, 0, v16);
    }
  }

LABEL_17:
}

uint64_t __90__AVPlayerViewController__transitionFromFullScreenAnimated_interactive_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (void)_transitionToDetachedFullScreenCompletionHandler:(id)a3
{
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_18B49C000, v3, OS_LOG_TYPE_ERROR, "Detached fullscreen is only available on Mac Catalyst.", v4, 2u);
  }
}

- (void)_transitionToAttachedFullScreenAnimated:(BOOL)a3 interactive:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v31[1] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = [(AVPlayerViewController *)self contentView];
  v9 = [v8 canAutomaticallyZoomLetterboxVideos];

  if ((v9 & 1) == 0)
  {
    v10 = [(AVPlayerViewController *)self contentView];
    [v10 setCanAutomaticallyZoomLetterboxVideos:1];

    v11 = *MEMORY[0x1E69874E8];
    [(AVPlayerViewController *)self setVideoGravity:*MEMORY[0x1E69874E8] forLayoutClass:1];
    [(AVPlayerViewController *)self setVideoGravity:v11 forLayoutClass:2];
  }

  v12 = objc_alloc_init(AVFullScreenViewController);
  v13 = [MEMORY[0x1E696AAE8] mainBundle];
  v14 = [v13 bundleIdentifier];
  if ([v14 isEqualToString:@"com.apple.SafariViewService"])
  {
    v15 = 5;
  }

  else
  {
    v16 = [MEMORY[0x1E696AAE8] mainBundle];
    v17 = [v16 bundleIdentifier];
    if ([v17 isEqualToString:@"com.apple.WebSheet"])
    {
      v15 = 5;
    }

    else
    {
      v15 = 0;
    }
  }

  [(AVFullScreenViewController *)v12 setModalPresentationStyle:v15];
  v18 = [(AVPlayerViewController *)self _transitionController];
  [(AVFullScreenViewController *)v12 setTransitioningDelegate:v18];

  [(AVFullScreenViewController *)v12 setDelegate:self];
  v19 = +[AVKitGlobalSettings shared];
  v20 = [v19 constrainedHDREnabled];

  if (v20)
  {
    objc_initWeak(&location, self);
    v31[0] = objc_opt_class();
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __96__AVPlayerViewController__transitionToAttachedFullScreenAnimated_interactive_completionHandler___block_invoke;
    v28[3] = &unk_1E7207F88;
    objc_copyWeak(&v29, &location);
    v22 = [(AVFullScreenViewController *)v12 registerForTraitChanges:v21 withHandler:v28];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  self->_fullscreenTransitionInProgress = 1;
  v23 = [(AVPlayerViewController *)self _transitionController];
  v24 = [(AVPlayerViewController *)self view];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __96__AVPlayerViewController__transitionToAttachedFullScreenAnimated_interactive_completionHandler___block_invoke_2;
  v26[3] = &unk_1E7207FB0;
  v26[4] = self;
  v27 = v7;
  v25 = v7;
  [v23 beginFullScreenPresentationOfViewController:v12 fromView:v24 isInteractive:v5 completion:v26];

  [(AVPlayerViewController *)self _updateControlsVisibilityPolicyAnimated:?];
  [(AVPlayerViewController *)self _updateStatusBarGradientViewVisibility];
}

void __96__AVPlayerViewController__transitionToAttachedFullScreenAnimated_interactive_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v5 traitCollection];
    -[AVPlayerViewController _updatePreferredDynamicRangeForAutomaticModeWithHeadroomUsage:](WeakRetained, [v4 _headroomUsage]);
  }
}

void __96__AVPlayerViewController__transitionToAttachedFullScreenAnimated_interactive_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 32) + 1070) = 0;
  [(AVPlayerViewController *)*(a1 + 32) _updateControlsVisibilityPolicyAnimated:?];
  [(AVPlayerViewController *)*(a1 + 32) _updateStatusBarGradientViewVisibility];
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, a2, 0);
  }

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:@"AVPlayerViewControllerDidEnterFullScreenFromInline" object:*(a1 + 32)];
}

- (void)_updatePreferredDynamicRangeForAutomaticModeWithHeadroomUsage:(void *)a1
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v10 = +[AVKitGlobalSettings shared];
    if ([v10 constrainedHDREnabled])
    {
      v4 = [a1 preferredDisplayDynamicRange];

      if (!v4)
      {
        v5 = [(AVPlayerViewController *)a1 _preferredDynamicRangeForAutomaticModeWithHeadroomUsage:a2];
        v6 = [a1 playerLayerView];
        v7 = [v6 playerLayer];

        v8 = _AVLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [v7 description];
          *buf = 136315650;
          v12 = "[AVPlayerViewController _updatePreferredDynamicRangeForAutomaticModeWithHeadroomUsage:]";
          v13 = 2112;
          v14 = v5;
          v15 = 2112;
          v16 = v9;
          _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s Setting dynamic range: %@, on playerLayer: %@", buf, 0x20u);
        }

        [v7 setPreferredDynamicRange:v5];
      }
    }

    else
    {
    }
  }
}

- (id)_preferredDynamicRangeForAutomaticModeWithHeadroomUsage:(id *)a1
{
  v4 = [a1[156] temporarilyVisible];
  v5 = *MEMORY[0x1E69792A0];
  if ((a2 != 1) | v4 & 1)
  {
    v6 = *MEMORY[0x1E6979298];
  }

  else
  {
    v6 = *MEMORY[0x1E69792A0];
  }

  v7 = v6;
  v8 = +[AVKitGlobalSettings shared];
  v9 = [v8 unconstrainedHDRForFullscreenEnabled];

  if (v9)
  {
    if ((v4 & 1) == 0)
    {
      v10 = [a1 _fullScreenController];
      v11 = [v10 presentationState];

      if (v11 <= 1)
      {
        v12 = v5;

        v7 = v12;
      }
    }
  }

  return v7;
}

- (void)_transitionToFullScreenAnimated:(BOOL)a3 interactive:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v6 = a3;
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  if (![(AVPlayerViewController *)self _isDescendantOfRootViewController])
  {
    NSLog(&cfstr_WarningIsTryin.isa, self);
  }

  if ([(AVPlayerViewController *)self isPresentingFullScreenFromInline]|| [(AVPlayerViewController *)self isPresentedFullScreen]|| [(AVPlayerViewController *)self _isTransitioningToOrFromFullScreen])
  {
    if (!v8)
    {
      return;
    }

    v9 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A578];
    v10 = MEMORY[0x1E696AEC0];
    v11 = _AVMethodProem(self);
    v12 = [v10 stringWithFormat:@"Invalid call of %@!", v11];
    v22[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v14 = [v9 errorWithDomain:@"AVKitErrorDomain" code:0 userInfo:v13];
    v8[2](v8, 0, v14);

    v15 = v8;
  }

  else
  {
    objc_initWeak(&location, self);
    WeakRetained = objc_loadWeakRetained(&self->_mediaSelectionPopoverPresentationController);
    v17 = [WeakRetained presentedViewController];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __88__AVPlayerViewController__transitionToFullScreenAnimated_interactive_completionHandler___block_invoke;
    v18[3] = &unk_1E7209EA8;
    objc_copyWeak(&v19, &location);
    [v17 dismissViewControllerAnimated:v6 completion:v18];

    v15 = [v8 copy];
    if ([(AVPlayerViewController *)self wantsDetachedFullscreenPresentation]&& [(AVPlayerViewController *)self canDisplayContentInDetachedWindow])
    {
      [(AVPlayerViewController *)self _transitionToDetachedFullScreenCompletionHandler:v15];
    }

    else
    {
      [(AVPlayerViewController *)self _transitionToAttachedFullScreenAnimated:v6 interactive:v5 completionHandler:v15];
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __88__AVPlayerViewController__transitionToFullScreenAnimated_interactive_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (WeakRetained[1480] == 1)
    {
      [WeakRetained catalystPlaybackControlsController];
    }

    else
    {
      [WeakRetained chromePlaybackControlsController];
    }
    v2 = ;
    [v2 setPopoverIsBeingPresented:0];

    WeakRetained = v3;
  }
}

- (BOOL)_canEnterFullScreen
{
  if ([(AVPlayerViewController *)self allowsEnteringFullScreen])
  {
    v3 = [(AVPlayerViewController *)self contentView];
    if (([v3 isCoveringWindow] & 1) != 0 || -[AVPlayerViewController isPresentingFullScreenFromInline](self, "isPresentingFullScreenFromInline") || -[AVPlayerViewController _isTransitioningToOrFromFullScreen](self, "_isTransitioningToOrFromFullScreen"))
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v4 = ![(AVPlayerViewController *)self isPictureInPictureActive];
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_transitionFromFullScreenWithReason:(int64_t)a3 animated:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v11 = a5;
  if (!-[AVPlayerViewController _delegateRespondsTo:](self, "_delegateRespondsTo:", sel_playerViewController_shouldExitFullScreenWithReason_) || (-[AVPlayerViewController delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 playerViewController:self shouldExitFullScreenWithReason:a3], v8, v9))
  {
    [(AVPlayerViewController *)self _transitionFromFullScreenAnimated:v5 completionHandler:v11];
LABEL_4:
    v10 = v11;
    goto LABEL_5;
  }

  v10 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11, 1, 0);
    goto LABEL_4;
  }

LABEL_5:
}

- (BOOL)_isDescendantOfRootViewController
{
  v2 = self;
  v3 = [(AVPlayerViewController *)v2 parentViewController];

  v4 = v2;
  if (v3)
  {
    v5 = v2;
    do
    {
      v4 = [(AVPlayerViewController *)v5 parentViewController];

      v6 = [(AVPlayerViewController *)v4 parentViewController];

      v5 = v4;
    }

    while (v6);
  }

  v7 = [(AVPlayerViewController *)v4 presentingViewController];

  if (v7)
  {
    do
    {
      v8 = [(AVPlayerViewController *)v4 presentingViewController];

      v9 = [(AVPlayerViewController *)v8 presentingViewController];

      v4 = v8;
    }

    while (v9);
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_9:
    LOBYTE(v10) = 0;
    goto LABEL_10;
  }

  v8 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

LABEL_7:
  v10 = [(AVPlayerViewController *)v8 isEqual:v2]^ 1;
LABEL_10:

  return v10;
}

- (AVTransitionController)_transitionController
{
  transitionController = self->_transitionController;
  if (!transitionController)
  {
    v4 = objc_alloc_init(AVTransitionController);
    v5 = self->_transitionController;
    self->_transitionController = v4;

    [(AVTransitionController *)self->_transitionController setDelegate:self];
    transitionController = self->_transitionController;
  }

  return transitionController;
}

- (UIViewController)fullScreenViewController
{
  v3 = [(AVPlayerViewController *)self _transitionControllerIfLoaded];
  v4 = [v3 presentationContext];
  v5 = [v4 presentedViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
    if (v5 && v5 != self)
    {
      v7 = _AVLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Unexpected value for the transition controller's presentedViewController", v9, 2u);
      }

      v6 = 0;
    }
  }

  return v6;
}

- (void)exitFullScreenWithCompletion:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v10 = "[AVPlayerViewController exitFullScreenWithCompletion:]";
    v11 = 1024;
    v12 = 7458;
    v13 = 2048;
    v14 = self;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__AVPlayerViewController_exitFullScreenWithCompletion___block_invoke;
  v7[3] = &unk_1E7207F60;
  v8 = v4;
  v6 = v4;
  [(AVPlayerViewController *)self exitFullScreenAnimated:1 completionHandler:v7];
}

void __55__AVPlayerViewController_exitFullScreenWithCompletion___block_invoke(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "NO";
    v9 = 136315650;
    v10 = "[AVPlayerViewController exitFullScreenWithCompletion:]_block_invoke";
    v12 = "success";
    v11 = 2080;
    if (a2)
    {
      v5 = "YES";
    }

    v13 = 2080;
    v14 = v5;
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v9, 0x20u);
  }

  if (a2)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      (*(v8 + 16))(v8, v6, v7);
    }
  }
}

- (void)enterFullScreenWithCompletion:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v10 = "[AVPlayerViewController enterFullScreenWithCompletion:]";
    v11 = 1024;
    v12 = 7342;
    v13 = 2048;
    v14 = self;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__AVPlayerViewController_enterFullScreenWithCompletion___block_invoke;
  v7[3] = &unk_1E7207F60;
  v8 = v4;
  v6 = v4;
  [(AVPlayerViewController *)self enterFullScreenAnimated:1 completionHandler:v7];
}

void __56__AVPlayerViewController_enterFullScreenWithCompletion___block_invoke(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "NO";
    v9 = 136315650;
    v10 = "[AVPlayerViewController enterFullScreenWithCompletion:]_block_invoke";
    v12 = "success";
    v11 = 2080;
    if (a2)
    {
      v5 = "YES";
    }

    v13 = 2080;
    v14 = v5;
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v9, 0x20u);
  }

  if (a2)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      (*(v8 + 16))(v8, v6, v7);
    }
  }
}

- (void)showFullScreenPresentationFromView:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = _AVLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "[AVPlayerViewController showFullScreenPresentationFromView:completion:]";
    v19 = 1024;
    v20 = 7286;
    _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s %d", buf, 0x12u);
  }

  v9 = [v6 copy];
  v10 = [(AVPlayerViewController *)self transitioningDelegate];
  v11 = [(AVPlayerViewController *)self _avkitPreferredTransitioningDelegate];

  if (v10 != v11)
  {
    v12 = [(AVPlayerViewController *)self _avkitPreferredTransitioningDelegate];
    [(AVPlayerViewController *)self setTransitioningDelegate:v12];
  }

  v13 = [(AVPlayerViewController *)self _transitionController];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__AVPlayerViewController_showFullScreenPresentationFromView_completion___block_invoke;
  v15[3] = &unk_1E7207FB0;
  v15[4] = self;
  v16 = v9;
  v14 = v9;
  [v13 beginFullScreenPresentationOfViewController:self fromView:v7 isInteractive:0 completion:v15];
}

void __72__AVPlayerViewController_showFullScreenPresentationFromView_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"AVPlayerViewControllerDidEnterFullScreenFromInline" object:*(a1 + 32)];
}

- (void)_updateViewControllerPreferencesIfNeeded
{
  v2 = [(AVPlayerViewController *)self _activeViewControllerForContentView];
  [v2 avkit_setNeedsUpdatePreferencesIfNeeded];
}

- (void)_updatePiPControllerCanStartAutomaticallyWhenEnteringBackground
{
  v3 = [(AVPlayerViewController *)self canStartPictureInPictureAutomaticallyWhenEnteringBackground]& ~self->_disallowsAutomaticPictureInPictureStart;
  pictureInPictureController = self->_pictureInPictureController;

  [(AVPictureInPictureController *)pictureInPictureController setCanStartAutomaticallyWhenEnteringBackground:v3 & 1];
}

- (void)_updatePlaybackControlsCanHideStateIfNeeded
{
  v3 = [(AVPlayerViewController *)self canHidePlaybackControls];
  v4 = [(AVPlayerViewController *)self isHoveringOverPlaybackControl];
  if (self->_usesGlassCatalystControls)
  {
    [(AVPlayerViewController *)self catalystPlaybackControlsController];
  }

  else
  {
    [(AVPlayerViewController *)self chromePlaybackControlsController];
  }
  v5 = ;
  [v5 setCanHidePlaybackControls:!v4 & v3];
}

- (void)_updatePlaybackBeganAfterPlayerControllerBecameReadyToPlayIfNeeded
{
  v3 = [(AVPlayerViewController *)self playerController];
  v4 = [v3 status];

  if (v4 == 2)
  {
    v5 = [(AVPlayerViewController *)self playerController];
    v6 = [v5 isPlaying];

    if (!v6)
    {
      return;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  self->_playbackBeganAfterPlayerControllerBecameReadyToPlay = v7;
}

- (void)_updateContentOverlayViewSuperview
{
  v3 = [(AVPlayerViewController *)self contentView];
  [v3 setContentOverlayView:self->_contentOverlayView];

  if (self->_usesGlassCatalystControls)
  {
    [(AVPlayerViewController *)self catalystPlaybackControlsController];
  }

  else
  {
    [(AVPlayerViewController *)self chromePlaybackControlsController];
  }
  v4 = ;
  [v4 setHasCustomPlaybackControls:{-[AVPlayerViewController hasCustomPlaybackControls](self, "hasCustomPlaybackControls")}];
}

- (void)_startPlayerLayerViewObservationsIfNeeded
{
  if (!self->_playerLayerViewObservationsHasBeenSetup)
  {
    self->_playerLayerViewObservationsHasBeenSetup = 1;
    v4 = [(AVPlayerViewController *)self _observationController];
    v5 = [(AVPlayerViewController *)self playerLayerView];
    v6 = [v4 startObserving:self keyPath:@"playerLayerView.readyForDisplay" includeInitialValue:objc_msgSend(v5 observationHandler:{"isReadyForDisplay"), &__block_literal_global_756}];

    v9 = [(AVPlayerViewController *)self _observationController];
    v7 = [(AVPlayerViewController *)self playerLayerView];
    v8 = [v9 startObserving:self keyPath:@"playerLayerView.videoBounds" includeInitialValue:objc_msgSend(v7 observationHandler:{"isReadyForDisplay"), &__block_literal_global_761}];
  }
}

void __67__AVPlayerViewController__startPlayerLayerViewObservationsIfNeeded__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v6 = [a4 value];
  [v5 setReadyForDisplay:{objc_msgSend(v6, "BOOLValue")}];
}

- (BOOL)_hoverGestureRecognizer:(id)a3 hasCursorOverView:(id)a4
{
  v5 = a4;
  [a3 locationInView:v5];
  v7 = v6;
  v9 = v8;
  [v5 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  v22 = v7;
  v23 = v9;

  return CGRectContainsPoint(*&v18, *&v22);
}

- (void)_beginScrubGestureIfNeeded
{
  v3 = [(AVPlayerViewController *)self playerController];
  v4 = [v3 isScrubbing];

  if ((v4 & 1) == 0)
  {
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "Scrub gesture will begin.", v9, 2u);
    }

    if (self->_usesGlassCatalystControls)
    {
      [(AVPlayerViewController *)self catalystPlaybackControlsController];
    }

    else
    {
      [(AVPlayerViewController *)self chromePlaybackControlsController];
    }
    v6 = ;
    [v6 beginUserInteraction];

    v7 = [(AVPlayerViewController *)self playerController];
    [v7 beginPlaybackSuspension];

    v8 = [(AVPlayerViewController *)self playerController];
    [v8 beginScrubbing:self];
  }
}

- (void)_endScrubGestureIfActive
{
  v3 = [(AVPlayerViewController *)self playerController];
  v4 = [v3 isScrubbing];

  if (v4)
  {
    v5 = [(AVPlayerViewController *)self playerController];
    [v5 endScrubbing:self];

    if (self->_usesGlassCatalystControls)
    {
      [(AVPlayerViewController *)self catalystPlaybackControlsController];
    }

    else
    {
      [(AVPlayerViewController *)self chromePlaybackControlsController];
    }
    v6 = ;
    [v6 endUserInteraction];

    v7 = [(AVPlayerViewController *)self playerController];
    [v7 endPlaybackSuspension];

    [(NSTimer *)self->_scrubGestureMomentumTimer invalidate];
    scrubGestureMomentumTimer = self->_scrubGestureMomentumTimer;
    self->_scrubGestureMomentumTimer = 0;

    v9 = _AVLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_18B49C000, v9, OS_LOG_TYPE_DEFAULT, "Scrub gesture did end.", v10, 2u);
    }
  }
}

- (BOOL)_shouldPausePlaybackWhenExitingFullscreen
{
  if ([(AVPlayerViewController *)self canPausePlaybackWhenExitingFullScreen]&& ![(AVPlayerViewController *)self isPictureInPictureActive])
  {
    v6 = [(AVPlayerViewController *)self playerController];
    v7 = [v6 isExternalPlaybackActive];

    v8 = [(AVPlayerViewController *)self _transitionController];
    v3 = v8;
    if ((v7 & 1) == 0)
    {
      v9 = [v8 presentationContext];
      v4 = [v9 allowsPausingWhenTransitionCompletes];

      goto LABEL_5;
    }
  }

  else
  {
    v3 = [(AVPlayerViewController *)self _transitionController];
  }

  v4 = 0;
LABEL_5:

  return v4;
}

- (void)_seekForScrubGestureWithVelocity:(double)a3
{
  v5 = [(AVPlayerViewController *)self playerController];
  v6 = v5;
  v10 = v5;
  if (a3 < 0.0 && (v5 = [v5 canSeekFrameBackward], v6 = v10, (v5 & 1) != 0) || a3 > 0.0 && (v5 = objc_msgSend(v6, "canSeekFrameForward"), v6 = v10, v5))
  {
    [(AVPlayerViewController *)self _seekDistanceForScrubGestureWithVelocity:a3];
    v8 = v7;
    [v10 seekToTime];
    v5 = [v10 seekToTime:v8 + v9 toleranceBefore:0.0 toleranceAfter:0.0];
    v6 = v10;
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (double)_seekDistanceForScrubGestureWithVelocity:(double)a3
{
  v4 = [(AVPlayerViewController *)self playerController];
  [v4 contentDurationWithinEndTimes];
  v6 = pow(v5 / 1000.0, 0.75) / 400.0 * a3;

  return v6;
}

- (double)_applyNonlinearScaleToScrubGestureVelocity:(double)a3
{
  if (a3 > 0.0)
  {
    v3 = pow(a3, 1.3);
    v4 = 0.035;
    return v3 * v4;
  }

  v5 = 0.0;
  if (a3 < 0.0)
  {
    v3 = pow(-a3, 1.3);
    v4 = -0.035;
    return v3 * v4;
  }

  return v5;
}

- (void)_handleScrubbingGestureRecognizer:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(AVPlayerViewController *)self requiresLinearPlayback])
  {
    if ([v4 state] == 1)
    {
      v5 = [(AVPlayerViewController *)self playerController];
      v6 = [v5 isScrubbing];

      if (v6)
      {
        [(NSTimer *)self->_scrubGestureMomentumTimer invalidate];
        scrubGestureMomentumTimer = self->_scrubGestureMomentumTimer;
        self->_scrubGestureMomentumTimer = 0;
      }

      [(AVPlayerViewController *)self _beginScrubGestureIfNeeded];
    }

    else if ([v4 state] == 2 || objc_msgSend(v4, "state") == 3)
    {
      v8 = [(AVPlayerViewController *)self contentView];
      [v4 velocityInView:v8];
      v10 = v9;

      [(AVPlayerViewController *)self _applyNonlinearScaleToScrubGestureVelocity:v10];
      v12 = v11;
      [(AVPlayerViewController *)self _seekForScrubGestureWithVelocity:?];
      if ([v4 state] == 3)
      {
        v21 = 0;
        v22 = &v21;
        v23 = 0x2020000000;
        v24 = v12;
        objc_initWeak(&location, self);
        v13 = _AVLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v22[3];
          *buf = 134217984;
          v26 = v14;
          _os_log_impl(&dword_18B49C000, v13, OS_LOG_TYPE_DEFAULT, "Scrub gesture will transition to momentum phase with remaining velocity %f.", buf, 0xCu);
        }

        v15 = MEMORY[0x1E695DFF0];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __60__AVPlayerViewController__handleScrubbingGestureRecognizer___block_invoke;
        v18[3] = &unk_1E7207F38;
        objc_copyWeak(&v19, &location);
        v18[4] = &v21;
        v16 = [v15 scheduledTimerWithTimeInterval:1 repeats:v18 block:0.016];
        v17 = self->_scrubGestureMomentumTimer;
        self->_scrubGestureMomentumTimer = v16;

        objc_destroyWeak(&v19);
        objc_destroyWeak(&location);
        _Block_object_dispose(&v21, 8);
      }
    }

    else
    {
      [(AVPlayerViewController *)self _endScrubGestureIfActive];
    }
  }
}

void __60__AVPlayerViewController__handleScrubbingGestureRecognizer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(*(*(a1 + 32) + 8) + 24) * 0.9;
    v3 = WeakRetained;
    [WeakRetained _seekForScrubGestureWithVelocity:*(*(*(a1 + 32) + 8) + 24)];
    WeakRetained = v3;
    if (fabs(*(*(*(a1 + 32) + 8) + 24)) <= 0.45)
    {
      [v3 _endScrubGestureIfActive];
      WeakRetained = v3;
    }
  }
}

- (void)_handlePlaybackToggleNotificationForMetricsCollectionEvent
{
  v3 = [(AVPlayerViewController *)self playerController];
  -[AVPlayerViewController _notifyOfMetricsCollectionEvent:](self, "_notifyOfMetricsCollectionEvent:", [v3 isPlaying]);
}

- (void)_handleHoverGestureRecognizer:(id)a3
{
  v17 = a3;
  v4 = [v17 state];
  if ((v4 - 3) >= 2)
  {
    if (v4 != 2)
    {
      if (v4 == 1 && self)
      {
        [(AVMobileControlsViewController *)self->_controlsViewController didBeginIndirectUserInteraction];
      }

      goto LABEL_15;
    }

    v5 = v17;
    if (self)
    {
      v6 = [(AVMobileControlsViewController *)self->_controlsViewController controlsViewControllerIfChromeless];
      if (v6)
      {
      }

      else
      {
        v7 = [(AVMobileControlsViewController *)self->_controlsViewController controlsViewControllerIfGlass];

        if (!v7)
        {
          usesGlassCatalystControls = self->_usesGlassCatalystControls;
          v9 = [(AVPlayerViewController *)self contentView];
          v10 = v9;
          if (usesGlassCatalystControls)
          {
            [v9 glassPlaybackControlsView];
          }

          else
          {
            [v9 chromePlaybackControlsView];
          }
          v11 = ;

          v12 = [v11 transportControlsContainerView];
          v13 = [v11 volumeControls];
          v14 = [v11 screenModeControls];
          v15 = [(AVPlayerViewController *)self _hoverGestureRecognizer:v5 hasCursorOverView:v12]|| [(AVPlayerViewController *)self _hoverGestureRecognizer:v5 hasCursorOverView:v13]|| [(AVPlayerViewController *)self _hoverGestureRecognizer:v5 hasCursorOverView:v14];
          [(AVPlayerViewController *)self setHoveringOverPlaybackControl:v15];
          if (![(AVPlayerViewController *)self showsPlaybackControls])
          {

            goto LABEL_14;
          }

          v16 = [v11 showsPlaybackControls];

          if (v16)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }
      }

      if ([(AVControlsViewController *)self->_controlsViewController visibleControls])
      {
LABEL_13:
        [(AVMobileControlsViewController *)self->_controlsViewController didBeginIndirectUserInteraction];
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  if (self)
  {
    [(AVPlayerViewController *)self setHoveringOverPlaybackControl:0];
    [(AVMobileControlsViewController *)self->_controlsViewController didEndIndirectUserInteraction];
  }

LABEL_15:
}

- (void)_enterFullScreenWhenPlayingIfNeeded
{
  v3 = [(AVPlayerViewController *)self playerController];
  v4 = [v3 isPlaying];

  if ((v4 & 1) != 0 || !self)
  {
    return;
  }

  v5 = [(AVPlayerViewController *)self _isDescendantOfRootViewController];
  if (self->_usesGlassCatalystControls && ([(AVPlayerViewController *)self _catalystGlassControlsViewController], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [(AVPlayerViewController *)self catalystPlaybackControlsController];
  }

  else
  {
    v8 = [(AVPlayerViewController *)self _chromeControlsViewController];

    if (!v8)
    {
      if (![(AVPlayerViewController *)self entersFullScreenWhenPlaybackBegins]|| !v5 || self->_playbackBeganAfterPlayerControllerBecameReadyToPlay)
      {
        return;
      }

      goto LABEL_9;
    }

    v7 = [(AVPlayerViewController *)self chromePlaybackControlsController];
  }

  v9 = v7;
  v10 = [v7 shouldEnterFullScreenWhenPlaybackBegins];

  if ((v10 & 1) == 0)
  {
    return;
  }

LABEL_9:

  [(AVPlayerViewController *)self _transitionToFullScreenAnimated:1 interactive:0 completionHandler:0];
}

- (void)_contentViewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(AVPlayerViewController *)self _behaviorStorage];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__AVPlayerViewController__contentViewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v13[3] = &unk_1E7207F10;
  v15 = width;
  v16 = height;
  v9 = v7;
  v14 = v9;
  [v8 enumerateAllBehaviorContextsImplementingSelector:sel_contentViewWillTransitionToSize_withCoordinator_ forProtocol:&unk_1EFF32480 usingBlock:v13];

  v10 = [(AVPlayerViewController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(AVPlayerViewController *)self delegate];
    [v12 playerViewController:self contentViewWillTransitionToSize:v9 withTransitionCoordinator:{width, height}];
  }
}

- (void)setPlayerLayerView:(id)a3
{
  v5 = a3;
  playerLayerView = self->_playerLayerView;
  if (playerLayerView != v5)
  {
    v17 = v5;
    [(__AVPlayerLayerView *)playerLayerView removeFromSuperview];
    objc_storeStrong(&self->_playerLayerView, a3);
    v7 = [(__AVPlayerLayerView *)self->_playerLayerView playerLayer];
    [v7 legibleContentInsets];
    self->_cachedLegibleContentInsets.top = v8;
    self->_cachedLegibleContentInsets.left = v9;
    self->_cachedLegibleContentInsets.bottom = v10;
    self->_cachedLegibleContentInsets.right = v11;

    [(AVPlayerViewController *)self _updatePlayerLayerLegibleContentInsetsIfNeeded];
    v12 = [(AVPlayerViewController *)self contentView];
    v13 = [v12 playbackContentContainerView];
    v14 = [v13 activeContentView];
    [v14 setPlayerLayerView:v17];

    videoFrameVisualAnalyzer = self->_videoFrameVisualAnalyzer;
    v16 = [(__AVPlayerLayerView *)v17 playerLayer];
    [(AVVideoFrameVisualAnalyzer *)videoFrameVisualAnalyzer setPlayerLayer:v16];

    playerLayerView = [(AVPlayerViewController *)self _startPlayerLayerViewObservationsIfNeeded];
    v5 = v17;
  }

  MEMORY[0x1EEE66BB8](playerLayerView, v5);
}

- (BOOL)_delegateRespondsTo:(SEL)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [(AVPlayerViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  v7 = _AVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(AVPlayerViewController *)self delegate];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [(AVPlayerViewController *)self delegate];
    if (v6)
    {
      v12 = @"does";
    }

    else
    {
      v12 = @"does NOT";
    }

    v13 = NSStringFromSelector(a3);
    v15 = 136316162;
    v16 = "[AVPlayerViewController _delegateRespondsTo:]";
    v17 = 2114;
    v18 = v10;
    v19 = 2048;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    v23 = 2114;
    v24 = v13;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s <%{public}@ %p> %@ respond to %{public}@", &v15, 0x34u);
  }

  return v6 & 1;
}

- (void)_notifyOfMetricsCollectionEvent:(int64_t)a3
{
  v5 = [(AVPlayerViewController *)self _behaviorStorage];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__AVPlayerViewController__notifyOfMetricsCollectionEvent___block_invoke;
  v7[3] = &unk_1E7207EE8;
  v7[4] = self;
  v7[5] = a3;
  [v5 enumerateAllBehaviorContextsConformingToProtocol:&unk_1EFF3C670 usingBlock:v7];

  if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewController_metricsCollectionEventOccured_])
  {
    v6 = [(AVPlayerViewController *)self delegate];
    [v6 playerViewController:self metricsCollectionEventOccured:a3];
  }
}

- (void)_mediaSelectionDoneButtonTapped:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v11 = "[AVPlayerViewController _mediaSelectionDoneButtonTapped:]";
    v12 = 1024;
    v13 = 6649;
    v14 = 2048;
    v15 = self;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  objc_initWeak(buf, self);
  WeakRetained = objc_loadWeakRetained(&self->_mediaSelectionPopoverPresentationController);
  v7 = [WeakRetained presentedViewController];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__AVPlayerViewController__mediaSelectionDoneButtonTapped___block_invoke;
  v8[3] = &unk_1E7209EA8;
  objc_copyWeak(&v9, buf);
  [v7 dismissViewControllerAnimated:1 completion:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __58__AVPlayerViewController__mediaSelectionDoneButtonTapped___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (WeakRetained[1480] == 1)
    {
      [WeakRetained catalystPlaybackControlsController];
    }

    else
    {
      [WeakRetained chromePlaybackControlsController];
    }
    v2 = ;
    [v2 setPopoverIsBeingPresented:0];

    WeakRetained = v3;
  }
}

- (void)_togglePictureInPicture
{
  if ([(AVPlayerViewController *)self isPictureInPicturePossible])
  {
    v3 = [(AVPictureInPictureController *)self->_pictureInPictureController isPictureInPictureActive];
    pictureInPictureController = self->_pictureInPictureController;
    if (v3)
    {

      [(AVPictureInPictureController *)pictureInPictureController stopPictureInPicture];
    }

    else
    {

      [(AVPictureInPictureController *)pictureInPictureController startPictureInPicture];
    }
  }
}

- (BOOL)_isTrackingUserInteractionWithInteractiveView
{
  if (![(AVPlayerViewController *)self _isTrackingUserInteraction]|| [(AVPlayerViewController *)self isContentTransitionInteractive])
  {
    return 0;
  }

  v4 = [(AVPlayerViewController *)self view];
  v5 = [v4 avkit_isAncestorOfViewPassingTest:&__block_literal_global_731];

  return v5;
}

uint64_t __71__AVPlayerViewController__isTrackingUserInteractionWithInteractiveView__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 isTracking];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_endTrackingUserInteraction
{
  [(AVPlayerViewController *)self _setNumberOfTrackedUserInteractions:[(AVPlayerViewController *)self _numberOfTrackedUserInteractions]- 1];
  if (self->_usesGlassCatalystControls)
  {
    [(AVPlayerViewController *)self catalystPlaybackControlsController];
  }

  else
  {
    [(AVPlayerViewController *)self chromePlaybackControlsController];
  }
  v3 = ;
  [v3 endUserInteraction];
}

- (void)_beginTrackingUserInteraction
{
  [(AVPlayerViewController *)self _setNumberOfTrackedUserInteractions:[(AVPlayerViewController *)self _numberOfTrackedUserInteractions]+ 1];
  if (self->_usesGlassCatalystControls)
  {
    [(AVPlayerViewController *)self catalystPlaybackControlsController];
  }

  else
  {
    [(AVPlayerViewController *)self chromePlaybackControlsController];
  }
  v3 = ;
  [v3 beginUserInteraction];
}

- (BOOL)isAudioOnlyContent
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(AVPlayerViewController *)self playerController];
  if ([v2 status] == 2 && (objc_msgSend(v2, "hasEnabledVideo") & 1) == 0)
  {
    v3 = [v2 hasEnabledAudio];
  }

  else
  {
    v3 = 0;
  }

  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315906;
    v7 = "[AVPlayerViewController isAudioOnlyContent]";
    v8 = 2048;
    v9 = [v2 status];
    v10 = 1024;
    v11 = [v2 hasEnabledVideo];
    v12 = 1024;
    v13 = [v2 hasEnabledAudio];
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s .status: %ld .hasEnabledVideo: %d .hasEnabledAudio: %d", &v6, 0x22u);
  }

  return v3;
}

- (BOOL)_wantsNowPlayingInfoCenter:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(AVPlayerViewController *)self playerController];
  v6 = v5;
  v7 = v5 && ([v5 isInspectionSuspended] & 1) == 0 && -[AVPlayerViewController updatesNowPlayingInfoCenter](self, "updatesNowPlayingInfoCenter");
  v8 = _AVLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315906;
    v11 = "[AVPlayerViewController _wantsNowPlayingInfoCenter:]";
    v12 = 1024;
    v13 = v3;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = 1;
    _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s isRecheck? %d, wants? %d, experienceWants? %d", &v10, 0x1Eu);
  }

  return v7;
}

- (id)_volumeController
{
  volumeController = self->_volumeController;
  if (!volumeController)
  {
    [(AVPlayerViewController *)self _updateVolumeController];
    volumeController = self->_volumeController;
  }

  return volumeController;
}

- (void)_volumeButtonWasPressedEvent:(id)a3
{
  v5 = [(AVPlayerViewController *)self playerController];
  if ([v5 isMuted])
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  [(AVPlayerViewController *)self _notifyOfMetricsCollectionEvent:v4];
}

- (void)_updateUnsupportedContentIndicatorView
{
  v3 = [(AVPlayerViewController *)self contentView];
  [v3 setShowsUnsupportedContentIndicator:{-[AVPlayerViewController _isUnsupportedContent](self, "_isUnsupportedContent")}];
}

- (void)_updatePlaybackControlsState
{
  v3 = [(AVPlayerViewController *)self isPresentedFullScreen];
  v4 = [(AVPlayerViewController *)self isPresentingFullScreenFromInline];
  if ([(AVPlayerViewController *)self avkit_isEffectivelyFullScreen])
  {
    v5 = [(AVPlayerViewController *)self presentingViewController];
    v6 = (v5 || [(AVPlayerViewControllerConfiguration *)self->_configuration prefersFullScreenStyleForEmbeddedMode]) && [(AVPlayerViewController *)self allowsEnteringFullScreen];
  }

  else
  {
    v6 = 0;
  }

  v7 = +[AVKitGlobalSettings shared];
  v8 = [v7 experienceControllerEnabled];

  if (v8)
  {
    [(AVMobileControlsViewController *)self->_controlsViewController setShowsMultiviewControl:[(AVPlayerViewController *)self includeMultiviewButton]];
  }

  if (v4)
  {
    v9 = 1;
  }

  else
  {
    v10 = [(AVPlayerViewController *)self presentingViewController];
    if (v10)
    {
      v9 = 1;
    }

    else
    {
      v11 = [MEMORY[0x1E696AAE8] mainBundle];
      v12 = [v11 bundleIdentifier];
      v9 = [v12 isEqualToString:@"com.apple.iBooks"];
    }
  }

  if (self->_usesGlassCatalystControls)
  {
    v13 = [(AVPlayerViewController *)self catalystPlaybackControlsController];
    [v13 setShowsDoneButtonWhenFullScreen:v9];

    v14 = [(AVPlayerViewController *)self catalystPlaybackControlsController];
    [v14 setShowsPlaybackControls:{-[AVPlayerViewController showsPlaybackControls](self, "showsPlaybackControls")}];

    v15 = [(AVPlayerViewController *)self catalystPlaybackControlsController];
    [v15 setShowsPictureInPictureButton:{-[AVPlayerViewController _shouldShowPictureInPictureButton](self, "_shouldShowPictureInPictureButton")}];

    v16 = [(AVPlayerViewController *)self catalystPlaybackControlsController];
    [v16 setPlayerViewControllerHasInvalidViewControllerHierarchy:{-[AVPlayerViewController _isDescendantOfRootViewController](self, "_isDescendantOfRootViewController") ^ 1}];

    v17 = [(AVPlayerViewController *)self catalystPlaybackControlsController];
    [v17 setPlayerViewControllerIsPresentingFullScreen:v4];

    [(AVPlayerViewController *)self catalystPlaybackControlsController];
  }

  else
  {
    v18 = [(AVPlayerViewController *)self chromePlaybackControlsController];
    [v18 setShowsDoneButtonWhenFullScreen:v9];

    v19 = [(AVPlayerViewController *)self chromePlaybackControlsController];
    [v19 setShowsPlaybackControls:{-[AVPlayerViewController showsPlaybackControls](self, "showsPlaybackControls")}];

    v20 = [(AVPlayerViewController *)self chromePlaybackControlsController];
    [v20 setShowsPictureInPictureButton:{-[AVPlayerViewController _shouldShowPictureInPictureButton](self, "_shouldShowPictureInPictureButton")}];

    v21 = [(AVPlayerViewController *)self chromePlaybackControlsController];
    [v21 setPlayerViewControllerHasInvalidViewControllerHierarchy:{-[AVPlayerViewController _isDescendantOfRootViewController](self, "_isDescendantOfRootViewController") ^ 1}];

    v22 = [(AVPlayerViewController *)self chromePlaybackControlsController];
    [v22 setPlayerViewControllerIsPresentingFullScreen:v4];

    [(AVPlayerViewController *)self chromePlaybackControlsController];
  }
  v23 = ;
  [v23 setPlayerViewControllerIsPresentedFullScreen:v3];

  v24 = 2;
  if (v4 || v6)
  {
    v24 = 0;
  }

  if (v3)
  {
    v25 = 1;
  }

  else
  {
    v25 = v24;
  }

  [(AVMobileFullscreenController *)self->_fullscreenController updatePresentationStateTo:v25];
  [(AVPlayerViewController *)self _updateScrubbingGestureEnabledState];
  [(AVPlayerViewController *)self _updateContentOverlayViewSuperview];
  [(AVPlayerViewController *)self _updateControlsVisibilityPolicyAnimated:?];

  [(AVPlayerViewController *)self _updatePreferredDynamicRangeForAutomaticMode];
}

- (uint64_t)_updateScrubbingGestureEnabledState
{
  if (result)
  {
    v1 = result;
    if (*(result + 1256))
    {
      v2 = +[AVKitGlobalSettings shared];
      if ([v2 overVideoScrubbingGestureEnabled])
      {
        v3 = [*(v1 + 1248) fullscreenController];
        v4 = [v3 presentationState] != 2 && (objc_msgSend(v1, "actuallyRequiresLinearPlayback") & 1) == 0 && !-[AVPlayerViewController _contentTabsVisible](v1);
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

    v5 = *(v1 + 1200);

    return [v5 setEnabled:v4];
  }

  return result;
}

- (void)_updatePreferredDynamicRangeForAutomaticMode
{
  if (a1)
  {
    v8 = +[AVKitGlobalSettings shared];
    if ([v8 constrainedHDREnabled])
    {
      v2 = [a1 preferredDisplayDynamicRange];

      if (v2)
      {
        return;
      }

      if ([a1 isPresentingFullScreenFromInline])
      {
        v3 = [a1 fullScreenViewController];
        if (v3)
        {
          v4 = [a1 fullScreenViewController];
        }

        else
        {
          v4 = a1;
        }

        v9 = v4;

        v5 = v9;
      }

      else
      {
        v5 = a1;
      }

      v8 = v5;
      v6 = [v5 traitCollection];
      v7 = [v6 _headroomUsage];

      [(AVPlayerViewController *)a1 _updatePreferredDynamicRangeForAutomaticModeWithHeadroomUsage:v7];
    }
  }
}

- (void)_updateExternalPlaybackIndicatorView
{
  v3 = [(AVPlayerViewController *)self playerController];
  v4 = [v3 externalPlaybackType];

  if (v4 == 1)
  {
    v18 = AVLocalizedString(@"EXTERNAL_PLAYBACK_INDICATOR_VIEW_AIRPLAY_TITLE");
    v5 = [(AVPlayerViewController *)self playerController];
    v6 = [v5 externalPlaybackAirPlayDeviceLocalizedName];

    if (v6)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = AVLocalizedString(@"This video is playing on “%@”");
      v9 = [(AVPlayerViewController *)self playerController];
      v10 = [v9 externalPlaybackAirPlayDeviceLocalizedName];
      v11 = [v7 stringWithFormat:v8, v10];
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_9;
  }

  v12 = [(AVPlayerViewController *)self playerController];
  if ([v12 isPlayingOnExternalScreen])
  {

LABEL_7:
    v18 = AVLocalizedString(@"EXTERNAL_PLAYBACK_INDICATOR_VIEW_TV_OUT_TITLE");
    v11 = AVLocalizedString(@"EXTERNAL_PLAYBACK_INDICATOR_VIEW_TV_OUT_SUBTITLE");
LABEL_9:
    v15 = 1;
    goto LABEL_10;
  }

  v13 = [(AVPlayerViewController *)self playerController];
  v14 = [v13 isPlayingOnSecondScreen];

  if (v14)
  {
    goto LABEL_7;
  }

  v18 = 0;
  v11 = 0;
  v15 = 0;
LABEL_10:
  v16 = [(AVPlayerViewController *)self contentView];
  [v16 setExternalPlaybackIndicatorTitle:v18 subtitle:v11];

  v17 = [(AVPlayerViewController *)self contentView];
  [v17 setShowsExternalPlaybackIndicator:v15];
}

- (void)_updateCustomControlsViewStateWithVisibleControlsSet:(unint64_t)a3
{
  v4 = (a3 & 0x31) != 0;
  [(AVPlayerViewControllerCustomControlsView *)self->_customControlsView setAreVolumeControlsVisible:(a3 >> 1) & 1];
  customControlsView = self->_customControlsView;

  [(AVPlayerViewControllerCustomControlsView *)customControlsView setAreTransportControlsVisible:v4];
}

- (void)_updateVolumeController
{
  if (!self->_playbackControlsShouldControlSystemVolume || (+[AVSystemVolumeController volumeController], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3 = +[AVPlayerVolumeController volumeController];
    [v3 setPlayerController:self->_playerController];
  }

  volumeController = self->_volumeController;
  self->_volumeController = v3;
}

- (void)_updateAudioOnlyContentStateIfNeeded
{
  v3 = [(AVPlayerViewController *)self controlsViewController];
  v6 = [v3 controlsViewControllerIfCatalystGlass];

  v4 = v6;
  if (v6)
  {
    v5 = [v6 playbackControlsController];
    [v5 setIsAudioOnlyContent:{-[AVPlayerViewController isAudioOnlyContent](self, "isAudioOnlyContent")}];

    v4 = v6;
  }
}

- (void)_updateAudioOnlyIndicatorView
{
  v3 = [(AVPlayerViewController *)self contentView];
  [v3 setShowsAudioOnlyIndicator:{-[AVPlayerViewController isAudioOnlyContent](self, "isAudioOnlyContent")}];
}

- (void)_updateActivePlaybackSpeedIfNeeded
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(AVPlayerViewController *)self playbackSpeedCollection];
  if (v3)
  {
    v4 = [(AVPlayerViewController *)self playerController];
    [v4 defaultPlaybackRate];
    v6 = v5;

    v7 = [v3 activeSpeed];
    [v7 rate];
    v9 = v8;

    if (v6 != v9)
    {
      if (v6 == 0.0)
      {
        v19 = [v3 speeds];
        v11 = [AVPlaybackSpeedCollection defaultSpeedFromList:v19];

        if (v11)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = [v3 speeds];
        v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v11)
        {
          v12 = *v21;
          while (2)
          {
            for (i = 0; i != v11; i = (i + 1))
            {
              if (*v21 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v20 + 1) + 8 * i);
              [v14 rate];
              if (v6 == v15)
              {
                v11 = v14;
                goto LABEL_14;
              }
            }

            v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

LABEL_14:

        if (v11)
        {
          goto LABEL_16;
        }
      }

      v16 = AVLocalizedString(@"Active Speed");
      v17 = [AVPlaybackSpeed alloc];
      *&v18 = v6;
      v11 = [(AVPlaybackSpeed *)v17 initWithRate:v16 localizedName:1 synthesized:v18];

LABEL_16:
      [v3 setActiveSpeed:v11];
    }
  }
}

- (BOOL)_shouldShowPictureInPictureButton
{
  if (!+[AVPictureInPictureController isPictureInPictureSupported]|| ![(AVPlayerViewController *)self allowsPictureInPicturePlayback]|| ![(AVPlayerViewController *)self isPictureInPicturePossible])
  {
    return 0;
  }

  return [(AVPlayerViewController *)self canShowPictureInPictureButton];
}

- (void)_visualLookupMenuItemPressedEvent:(id)a3
{
  [(AVPlayerViewController *)self setShowsVisualLookup:!self->_showsVisualLookup];
  showsVisualLookup = self->_showsVisualLookup;
  toggleLookupAction = self->_toggleLookupAction;

  [(UIAction *)toggleLookupAction setState:showsVisualLookup];
}

- (void)_updatePlayerLayerLegibleContentInsetsIfNeeded
{
  v3 = [(AVPlayerViewController *)self playerLayerView];
  v44 = [v3 playerLayer];

  v4 = objc_opt_respondsToSelector();
  v5 = v44;
  if ((v4 & 1) == 0)
  {
    goto LABEL_21;
  }

  top = self->_legibleContentInsets.top;
  left = self->_legibleContentInsets.left;
  bottom = self->_legibleContentInsets.bottom;
  right = self->_legibleContentInsets.right;
  v10 = [(AVPlayerViewController *)self playerController];
  if ([v10 isPlayingOnSecondScreen])
  {
    goto LABEL_18;
  }

  pipStartingOrActive = self->_pipStartingOrActive;

  if (pipStartingOrActive)
  {
    goto LABEL_19;
  }

  v12 = [(AVPlayerViewController *)self contentView];
  [v12 bounds];
  v42 = v13;
  v15 = v14;

  [(AVPlayerViewController *)self videoBounds];
  v41 = v16;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v10 = [(AVPlayerViewController *)self _contentTabPresentationContext];
  [v10 presentationHeight];
  v24 = v15 - v23;
  if (v24 >= v15 - bottom)
  {
    v24 = v15 - bottom;
  }

  bottom = v18 + v22 - v24;
  v25 = [(AVPlayerViewController *)self controlsViewController];
  v26 = [v25 controlsViewControllerIfGlass];
  if (v26)
  {
    v27 = v26;

LABEL_9:
    [v27 legibleContentInsetsAvoidingControlsUI];
    v30 = v29;
    v39 = v31;
    v43 = v32;
    v40 = v33;
    v46.origin.x = v41;
    v46.origin.y = v18;
    v46.size.width = v20;
    v46.size.height = v22;
    if (v30 >= CGRectGetMinY(v46))
    {
      v47.origin.x = v41;
      v47.origin.y = v18;
      v47.size.width = v20;
      v47.size.height = v22;
      CGRectGetMinY(v47);
    }

    v48.origin.x = v41;
    v48.origin.y = v18;
    v48.size.width = v20;
    v48.size.height = v22;
    if (v39 >= CGRectGetMinX(v48))
    {
      v49.origin.x = v41;
      v49.origin.y = v18;
      v49.size.width = v20;
      v49.size.height = v22;
      CGRectGetMinX(v49);
    }

    v50.origin.x = v41;
    v50.origin.y = v18;
    v50.size.width = v20;
    v50.size.height = v22;
    if (v43 >= v15 - CGRectGetMaxY(v50))
    {
      v51.origin.x = v41;
      v51.origin.y = v18;
      v51.size.width = v20;
      v51.size.height = v22;
      CGRectGetMaxY(v51);
    }

    v52.origin.x = v41;
    v52.origin.y = v18;
    v52.size.width = v20;
    v52.size.height = v22;
    if (v40 >= v42 - CGRectGetMaxX(v52))
    {
      v53.origin.x = v41;
      v53.origin.y = v18;
      v53.size.width = v20;
      v53.size.height = v22;
      CGRectGetMaxX(v53);
    }

    UIEdgeInsetsMax();
    top = v34;
    left = v35;
    bottom = v36;
    right = v37;

    goto LABEL_18;
  }

  v28 = [(AVPlayerViewController *)self controlsViewController];
  v27 = [v28 controlsViewControllerIfCatalystGlass];

  if (v27)
  {
    goto LABEL_9;
  }

LABEL_18:

LABEL_19:
  p_cachedLegibleContentInsets = &self->_cachedLegibleContentInsets;
  v54.top = top;
  v54.left = left;
  v54.bottom = bottom;
  v54.right = right;
  v4 = NSEdgeInsetsEqual(v54, *p_cachedLegibleContentInsets);
  v5 = v44;
  if ((v4 & 1) == 0)
  {
    p_cachedLegibleContentInsets->top = top;
    p_cachedLegibleContentInsets->left = left;
    p_cachedLegibleContentInsets->bottom = bottom;
    p_cachedLegibleContentInsets->right = right;
    v4 = [v44 setLegibleContentInsets:{top, left, bottom, right}];
    v5 = v44;
  }

LABEL_21:

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)_setContentViewOnSelf
{
  v3 = [(AVMobileControlsViewController *)self->_controlsViewController parentViewController];

  if (v3 == self)
  {
    playerViewControllerView = self->_playerViewControllerView;
    playerViewControllerContentView = self->_playerViewControllerContentView;

    [(AVPlayerView *)playerViewControllerView setContentView:playerViewControllerContentView];
  }

  else
  {
    [(AVMobileControlsViewController *)self->_controlsViewController willMoveToParentViewController:0];
    [(AVMobileControlsViewController *)self->_controlsViewController removeFromParentViewController];
    [(AVPlayerView *)self->_playerViewControllerView setContentView:self->_playerViewControllerContentView];
    [(AVPlayerViewController *)self addChildViewController:self->_controlsViewController];
    controlsViewController = self->_controlsViewController;

    [(AVMobileControlsViewController *)controlsViewController didMoveToParentViewController:self];
  }
}

- (void)_playPauseButtonWasPressedEvent:(id)a3
{
  [(AVPlayerViewController *)self _enterFullScreenWhenPlayingIfNeeded];

  [(AVPlayerViewController *)self _handlePlaybackToggleNotificationForMetricsCollectionEvent];
}

- (BOOL)_isUnsupportedContent
{
  v2 = [(AVPlayerViewController *)self playerController];
  v3 = [v2 status] == 3;

  return v3;
}

- (id)_defaultInfoViewActions
{
  v17[1] = *MEMORY[0x1E69E9840];
  playFromBeginningAction = self->_playFromBeginningAction;
  if (!playFromBeginningAction)
  {
    objc_initWeak(&location, self);
    v4 = MEMORY[0x1E69DC628];
    v5 = AVLocalizedString(@"START_PLAYBACK_FROM_BEGINNING");
    v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"play.fill"];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __49__AVPlayerViewController__defaultInfoViewActions__block_invoke;
    v14 = &unk_1E7209230;
    objc_copyWeak(&v15, &location);
    v7 = [v4 actionWithTitle:v5 image:v6 identifier:0 handler:&v11];
    v8 = self->_playFromBeginningAction;
    self->_playFromBeginningAction = v7;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    playFromBeginningAction = self->_playFromBeginningAction;
  }

  v17[0] = playFromBeginningAction;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:{1, v11, v12, v13, v14}];

  return v9;
}

void __49__AVPlayerViewController__defaultInfoViewActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained playerController];
    if ([v2 canSeekToBeginning] && (v3[994] & 1) == 0)
    {
      [v2 seekToBeginning:0];
    }

    WeakRetained = v3;
  }
}

- (BOOL)_controlsViewControllerPrefersStatusBarHidden
{
  if (self->_usesGlassCatalystControls)
  {
    [(AVPlayerViewController *)self catalystPlaybackControlsController];
  }

  else
  {
    [(AVPlayerViewController *)self chromePlaybackControlsController];
  }
  v3 = ;
  v4 = [v3 prefersStatusBarHidden];

  if (self->_controlsGeneration)
  {
    v5 = [(AVControlsViewController *)self->_controlsViewController visibleControls];
    if (v5)
    {
      v6 = v5 == 2;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      return 1;
    }

    else
    {
      return v5 == 1 && [(AVPlayerController *)self->_playerController isScrubbing];
    }
  }

  return v4;
}

- (void)_createPictureInPictureControllerIfNeeded
{
  if (![(AVPlayerViewController *)self _showsWolfControls]&& !self->_pictureInPictureController)
  {
    if (+[AVPictureInPictureController isPictureInPictureSupported])
    {
      if ([(AVPlayerViewController *)self _hasBegunObservation])
      {
        v3 = [(AVTransitionController *)self->_transitionController presentationContext];
        v4 = [v3 isPresenting];

        if ((v4 & 1) == 0)
        {
          v5 = [[AVPictureInPictureController alloc] initWithSource:self];
          [(AVPictureInPictureController *)v5 setRequiresLinearPlayback:[(AVPlayerViewController *)self requiresLinearPlayback]];
          [(AVPictureInPictureController *)v5 setAllowsPictureInPicturePlayback:[(AVPlayerViewController *)self allowsPictureInPicturePlayback]];
          [(AVPictureInPictureController *)v5 setRetainsSourceDuringPictureInPicturePlayback:1];
          [(AVPictureInPictureController *)v5 setCanPausePlaybackWhenClosingPictureInPicture:[(AVPlayerViewController *)self canPausePlaybackWhenClosingPictureInPicture]];
          if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewControllerShouldStartPictureInPictureFromInlineWhenEnteringBackground_])
          {
            v6 = [(AVPlayerViewController *)self delegate];
            -[AVPlayerViewController setCanStartPictureInPictureAutomaticallyFromInline:](self, "setCanStartPictureInPictureAutomaticallyFromInline:", [v6 playerViewControllerShouldStartPictureInPictureFromInlineWhenEnteringBackground:self]);
          }

          [(AVPictureInPictureController *)v5 setCanStartPictureInPictureAutomaticallyFromInline:[(AVPlayerViewController *)self canStartPictureInPictureAutomaticallyFromInline]];
          [(AVPictureInPictureController *)v5 setDelegate:self];
          v7 = [(AVPlayerViewController *)self playerController];
          [(AVPictureInPictureController *)v5 setPlayerController:v7];

          v8 = [(AVPlayerViewController *)self pictureInPictureActivitySessionIdentifier];
          [(AVPictureInPictureController *)v5 setActivitySessionIdentifier:v8];

          [(AVMobileControlsViewController *)self->_controlsViewController setPipController:v5];
          v9 = [(AVPlayerViewController *)self _observationController];
          v10 = [v9 startObserving:self keyPath:@"pictureInPictureController.pictureInPicturePossible" includeInitialValue:1 observationHandler:&__block_literal_global_663];

          if (self->_usesGlassCatalystControls)
          {
            [(AVPlayerViewController *)self catalystPlaybackControlsController];
          }

          else
          {
            [(AVPlayerViewController *)self chromePlaybackControlsController];
          }
          v11 = ;
          [v11 setPictureInPictureController:v5];

          [(AVPlayerViewController *)self willChangeValueForKey:@"pictureInPictureController"];
          pictureInPictureController = self->_pictureInPictureController;
          self->_pictureInPictureController = v5;

          [(AVPlayerViewController *)self didChangeValueForKey:@"pictureInPictureController"];

          [(AVPlayerViewController *)self _updatePiPControllerCanStartAutomaticallyWhenEnteringBackground];
        }
      }
    }
  }
}

void __67__AVPlayerViewController__createPictureInPictureControllerIfNeeded__block_invoke(uint64_t a1, unsigned __int8 *a2)
{
  v2 = a2[1480];
  v3 = a2;
  v4 = v3;
  if (v2 == 1)
  {
    [v3 catalystPlaybackControlsController];
  }

  else
  {
    [v3 chromePlaybackControlsController];
  }
  v6 = ;
  v5 = [v4 _shouldShowPictureInPictureButton];

  [v6 setShowsPictureInPictureButton:v5];
}

- (void)_copySubjectMenuItemPressedEvent:(id)a3
{
  if ([(AVVisualAnalysisView *)self->_analysisView hasSubjectToCopy])
  {
    analysisView = self->_analysisView;

    [(AVVisualAnalysisView *)analysisView copySubject];
  }
}

- (void)_controlsViewController:(id)a3 willBeginContentTabTransitionWithContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 state] == 2)
  {
    v8 = [v7 transitionContext];
    v9 = [v8 animationCoordinator];
    [(AVPlayerViewController *)self _updateGesturesEnablementStates];
    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __91__AVPlayerViewController__controlsViewController_willBeginContentTabTransitionWithContext___block_invoke;
    v14[3] = &unk_1E7209EA8;
    objc_copyWeak(&v15, &location);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __91__AVPlayerViewController__controlsViewController_willBeginContentTabTransitionWithContext___block_invoke_2;
    v12[3] = &unk_1E7209A88;
    objc_copyWeak(&v13, &location);
    [v9 addCoordinatedAnimations:v14 completion:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    [(AVPlayerViewControllerContentView *)self->_playerViewControllerContentView setNeedsLayout];
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __91__AVPlayerViewController__controlsViewController_willBeginContentTabTransitionWithContext___block_invoke_3;
    v10[3] = &unk_1E7209EA8;
    objc_copyWeak(&v11, &location);
    dispatch_async(MEMORY[0x1E69E96A0], v10);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)_updateGesturesEnablementStates
{
  if (result)
  {
    v1 = result;
    [(AVPlayerViewController *)result _updateSecondGenerationControlsGestureEnablementStates];
    [*(v1 + 1416) setEnabled:!-[AVPlayerViewController _contentTabsVisible](v1)];
    v2 = *(v1 + 1376);
    v3 = ![(AVPlayerViewController *)v1 _contentTabsVisible];

    return [v2 setEnabled:v3];
  }

  return result;
}

void __91__AVPlayerViewController__controlsViewController_willBeginContentTabTransitionWithContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[155] setNeedsLayout];
    [v2[155] layoutIfNeeded];
    [v2 updateVideoBounds];
    WeakRetained = v2;
  }
}

void __91__AVPlayerViewController__controlsViewController_willBeginContentTabTransitionWithContext___block_invoke_2(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (a2)
    {
      [WeakRetained _updatePlayerLayerLegibleContentInsetsIfNeeded];
    }

    else
    {
      [WeakRetained[155] setNeedsLayout];
    }

    [(AVPlayerViewController *)v4 _updateGesturesEnablementStates];
    [v4 updateVideoBounds];
    WeakRetained = v4;
  }
}

void __91__AVPlayerViewController__controlsViewController_willBeginContentTabTransitionWithContext___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updatePlayerLayerLegibleContentInsetsIfNeeded];

  v3 = objc_loadWeakRetained((a1 + 32));
  [(AVPlayerViewController *)v3 _updateGesturesEnablementStates];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 updateVideoBounds];
}

- (uint64_t)_updateSecondGenerationControlsGestureEnablementStates
{
  [(AVPlayerViewController *)a1 _updateSecondGenerationContentTabsGestureEnablementState];
  [(AVPlayerViewController *)a1 _updateTapThroughGestureRecognizerEnablementState];
  [(AVPlayerViewController *)a1 _updateVideoGravityPinchGestureEnablementState];

  return [(AVPlayerViewController *)a1 _updateScrubbingGestureEnabledState];
}

- (void)_updateSecondGenerationContentTabsGestureEnablementState
{
  if (a1)
  {
    v4 = [a1 playerController];
    v2 = ([*(a1 + 1456) count] || *(a1 + 1816)) && objc_msgSend(v4, "status") == 2;
    v3 = [(AVPlayerViewController *)a1 _contentTabPanGestureRecognizer];
    [v3 setEnabled:v2];
  }
}

- (uint64_t)_updateTapThroughGestureRecognizerEnablementState
{
  v2 = *(a1 + 1256);
  v3 = [*(a1 + 1544) excludedControls];
  if (v2)
  {
    v4 = ((v3 & 1) == 0) & ~[(AVPlayerViewController *)a1 _contentTabsVisible];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 1832);

  return [v5 setEnabled:v4];
}

- (id)_contentTabPanGestureRecognizer
{
  v2 = [*(a1 + 1248) controlsViewControllerIfChromeless];
  v3 = [v2 contentTabPanGestureRecognizer];

  if (!v3)
  {
    v4 = [*(a1 + 1248) controlsViewControllerIfGlass];
    v3 = [v4 contentTabPanGestureRecognizer];
  }

  return v3;
}

- (id)_catalystGlassControlsViewController
{
  v2 = [(AVPlayerViewController *)self controlsViewController];
  v3 = [v2 controlsViewControllerIfCatalystGlass];

  return v3;
}

- (id)_chromeControlsViewController
{
  v2 = [(AVPlayerViewController *)self controlsViewController];
  v3 = [v2 controlsViewControllerIfChromed];

  return v3;
}

- (double)_availableSpaceForContentTabWithVideoDodgingForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(AVMobileControlsViewController *)self->_controlsViewController controlsViewControllerIfChromeless];
  v7 = [(AVMobileControlsViewController *)self->_controlsViewController controlsViewControllerIfGlass];
  v8 = v7;
  if (v6 | v7)
  {
    if (v6)
    {
      v7 = v6;
    }

    v10 = [v7 viewIfLoaded];
    v11 = [(AVPlayerViewController *)self playerController];
    v12 = self->_playerViewControllerContentView;
    v13 = [(AVPlayerViewController *)self playerLayerView];
    v14 = v13;
    v9 = NAN;
    if (!v11)
    {
      goto LABEL_34;
    }

    v15 = !v10 || v12 == 0;
    if (v15 || v13 == 0)
    {
      goto LABEL_34;
    }

    [v11 contentDimensions];
    v19 = v18;
    v9 = NAN;
    if (v18 <= 0.0)
    {
      goto LABEL_34;
    }

    v20 = v17;
    if (v17 <= 0.0)
    {
      goto LABEL_34;
    }

    if (width <= height)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    v22 = [(AVPlayerViewControllerContentView *)v12 targetVideoGravities];
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21];
    v24 = [v22 objectForKeyedSubscript:v23];

    if (v24 == *MEMORY[0x1E69874E0])
    {
      v25 = height;
    }

    else
    {
      v25 = height;
      if (v24 != *MEMORY[0x1E69874F0])
      {
        if (v24 != *MEMORY[0x1E69874E8])
        {
          v9 = NAN;
LABEL_33:

LABEL_34:
          goto LABEL_35;
        }

        v25 = width / (v20 / v19);
      }
    }

    if (v6)
    {
      v26 = v6;
    }

    else
    {
      v26 = v8;
    }

    [v26 unobscuredContentArea];
    v27 = height - (v25 + CGRectGetMinY(v32) + 40.0);
    v28 = v27;
    v29 = v25;
    if (vabds_f32(v28, v29) < 0.00000011921 || v28 < v29)
    {
      v9 = NAN;
    }

    else
    {
      v9 = v27;
    }

    goto LABEL_33;
  }

  v9 = NAN;
LABEL_35:

  return v9;
}

- (BOOL)analysisInteractionInProgress
{
  v2 = [(AVPlayerViewController *)self analysisView];
  v3 = [v2 isInteractionInProgress];

  return v3;
}

- (void)_resetVisualAnalysisViewSelectionIfNeeded
{
  allowsVideoFrameAnalysis = self->_allowsVideoFrameAnalysis;
  v4 = [(AVPlayerViewController *)self _currentAnalysis];
  analysisView = self->_analysisView;
  if (allowsVideoFrameAnalysis && v4 != 0 && analysisView != 0)
  {
    v8 = v4;
    analysisView = [(AVVisualAnalysisView *)analysisView resetSelection];
    v4 = v8;
  }

  MEMORY[0x1EEE66BB8](analysisView, v4);
}

- (void)_updateSelectedPlaybackSpeedIfPlayerControllerRateChanges
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(AVPlayerViewController *)self playerController];
  v4 = [(AVPlayerViewController *)self playbackSpeedCollection];
  [v3 rate];
  v6 = v5;
  if (v5 >= 0.1 && v5 < 4.0)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [v4 speeds];
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
LABEL_8:
      v12 = 0;
      while (1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        [v13 rate];
        if (v6 == v14)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v10)
          {
            goto LABEL_8;
          }

          goto LABEL_14;
        }
      }

      v15 = v13;

      if (v15)
      {
        goto LABEL_17;
      }
    }

    else
    {
LABEL_14:
    }

    v16 = AVLocalizedString(@"Active Speed");
    v17 = [AVPlaybackSpeed alloc];
    [v3 defaultPlaybackRate];
    *&v18 = v18;
    v15 = [(AVPlaybackSpeed *)v17 initWithRate:v16 localizedName:1 synthesized:v18];

LABEL_17:
    [v4 setActiveSpeed:v15];
  }
}

- (void)_updateNowPlayingInfoController
{
  v3 = self->_nowPlayingInfoController;
  v4 = [(AVPlayerViewController *)self _wantsNowPlayingInfoCenter:0];
  v5 = [(AVPlayerViewController *)self playerController];
  if (v4)
  {
    if (v3)
    {
      [(AVNowPlayingInfoController *)v3 startNowPlayingUpdatesForPlayerController:v5 afterDelay:1.0];
    }

    else
    {
      objc_initWeak(&location, self);
      objc_initWeak(&from, v5);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __57__AVPlayerViewController__updateNowPlayingInfoController__block_invoke;
      v7[3] = &unk_1E7207EC0;
      objc_copyWeak(&v8, &location);
      objc_copyWeak(&v9, &from);
      [AVNowPlayingInfoController sharedNowPlayingInfoControllerWithCompletion:v7];
      objc_destroyWeak(&v9);
      objc_destroyWeak(&v8);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    [(AVNowPlayingInfoController *)v3 stopNowPlayingUpdatesForPlayerController:v5];
    nowPlayingInfoController = self->_nowPlayingInfoController;
    self->_nowPlayingInfoController = 0;
  }
}

void __57__AVPlayerViewController__updateNowPlayingInfoController__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained playerController];
    if ([v5 _wantsNowPlayingInfoCenter:1])
    {
      v7 = objc_loadWeakRetained((a1 + 40));

      if (v6 == v7)
      {
        objc_storeStrong(v5 + 144, a2);
        [v8 startNowPlayingUpdatesForPlayerController:v6 afterDelay:1.0];
        [(AVPlayerViewController *)v5 _updateNowPlayingInfoControllerSuspendedState];
      }
    }
  }
}

- (void)_updateNowPlayingInfoControllerSuspendedState
{
  if (result)
  {
    v1 = result;
    v2 = [result playerController];
    v3 = [v2 isScrubbing];

    v4 = v1[144];

    return [v4 setSuspended:v3];
  }

  return result;
}

- (void)_updateDefaultLinearPlaybackRateIfNeeded
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [(AVPlayerViewController *)self playerController];
  [v3 defaultPlaybackRate];
  if (v4 != self->_defaultLinearPlaybackRate)
  {
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      [v3 defaultPlaybackRate];
      v8 = 134217984;
      v9 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "setDefaultPlaybackRate called during linear playback. Updating default linear playback rate to %f", &v8, 0xCu);
    }

    [v3 defaultPlaybackRate];
    *&v7 = v7;
    self->_defaultLinearPlaybackRate = *&v7;
  }
}

- (void)_updateDefaultPlaybackRateIfNeeded
{
  v3 = [(AVPlayerViewController *)self playbackSpeedCollection];
  v4 = [v3 selectedSpeed];
  [v4 rate];
  defaultLinearPlaybackRate = v5;

  if ([(AVPlayerViewController *)self requiresLinearPlayback]|| ([(AVPlayerViewController *)self playbackSpeedCollection], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    defaultLinearPlaybackRate = self->_defaultLinearPlaybackRate;
  }

  v8 = [(AVPlayerViewController *)self playerController];
  [v8 defaultPlaybackRate];
  v10 = v9;
  v11 = defaultLinearPlaybackRate;

  if (v10 != v11)
  {
    v12 = [(AVPlayerViewController *)self playerController];
    [v12 setDefaultPlaybackRate:v11];
  }
}

- (void)_updateContentViewEdgeInsetsForLetterboxedContent
{
  v3 = [(AVPlayerViewController *)self contentView];
  [(AVPlayerViewController *)self playerViewControllerContentViewEdgeInsetsForLetterboxedVideo:v3];
  [v3 setEdgeInsetsForLetterboxedContent:?];
  [v3 setNeedsLayout];
}

- (void)_setSecondScreenConnectionReadyToConnect:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  secondScreenConnection = self->_secondScreenConnection;
  if (secondScreenConnection)
  {
    v5 = a3;
    if ([(AVSecondScreenConnection *)secondScreenConnection isReadyToConnect]!= a3)
    {
      v6 = _AVLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = "NO";
        v8 = 136315650;
        v9 = "[AVPlayerViewController _setSecondScreenConnectionReadyToConnect:]";
        v11 = "readyToConnect";
        v10 = 2080;
        if (v5)
        {
          v7 = "YES";
        }

        v12 = 2080;
        v13 = v7;
        _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v8, 0x20u);
      }

      [(AVSecondScreenConnection *)self->_secondScreenConnection setReadyToConnect:v5];
    }
  }
}

- (void)_updateSecondScreenConnectionReadyToConnect
{
  if ([(AVPlayerViewController *)&self->super.super.super.isa _isReadyToConnectSynchronousChecks])
  {
    v3 = [(AVPlayerViewController *)self traitCollection];
    v4 = [v3 userInterfaceIdiom];

    if (v4 == 1)
    {
      if (!self->_isUpdatingSecondScreenConnectionReadyToConnect)
      {
        self->_isUpdatingSecondScreenConnectionReadyToConnect = 1;
        v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.avkit.SharedPreferences"];
        v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EFF88AB0];
        [v5 setRemoteObjectInterface:v6];

        [v5 resume];
        objc_initWeak(&location, self);
        v7 = [v5 remoteObjectProxy];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __69__AVPlayerViewController__updateSecondScreenConnectionReadyToConnect__block_invoke;
        v11[3] = &unk_1E7208CD0;
        objc_copyWeak(&v13, &location);
        v8 = v5;
        v12 = v8;
        [v7 extendedDisplayActive:v11];

        objc_destroyWeak(&v13);
        objc_destroyWeak(&location);
      }

      return;
    }

    v9 = self;
    v10 = 1;
  }

  else
  {
    v9 = self;
    v10 = 0;
  }

  [(AVPlayerViewController *)v9 _setSecondScreenConnectionReadyToConnect:v10];
}

- (uint64_t)_isReadyToConnectSynchronousChecks
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 playerController];
  v3 = [a1[155] window];
  v4 = [v2 allowsExternalPlayback];
  v5 = [v2 usesExternalPlaybackWhileExternalScreenIsActive];
  v6 = [v2 externalPlaybackType];
  v7 = [a1 isBeingDismissed];
  v8 = [a1[143] isReadyToConnect];
  v9 = v8;
  v15 = v7 ^ 1 | v8;
  v10 = _AVLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [a1[143] isActive];
    *buf = 136316930;
    v17 = "[AVPlayerViewController _isReadyToConnectSynchronousChecks]";
    v18 = 2112;
    v19 = v3;
    v20 = 1024;
    v21 = v4;
    v22 = 1024;
    v23 = v5;
    v24 = 1024;
    v25 = v6;
    v26 = 1024;
    v27 = v7;
    v28 = 1024;
    v29 = v9 & 1;
    v30 = 1024;
    v31 = v11;
    _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, "%s window=%@ allowsExternalPlayback=%i usesExternalPlaybackWhileExternalScreenIsActive=%i externalPlaybackType=%i isBeingDismissed=%i isReadyToConnect=%i isActive=%i", buf, 0x3Au);
  }

  v12 = (v3 != 0) & v4 & v5;
  if (v6 == 1)
  {
    v12 = 0;
  }

  v13 = v12 & v15;

  return v13;
}

void __69__AVPlayerViewController__updateSecondScreenConnectionReadyToConnect__block_invoke(uint64_t a1, char a2)
{
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __69__AVPlayerViewController__updateSecondScreenConnectionReadyToConnect__block_invoke_2;
  v7 = &unk_1E720A0B8;
  objc_copyWeak(&v8, (a1 + 40));
  v9 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], &v4);
  [*(a1 + 32) invalidate];
  objc_destroyWeak(&v8);
}

void __69__AVPlayerViewController__updateSecondScreenConnectionReadyToConnect__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (*(a1 + 40))
    {
      isReadyToConnectSynchronous = 0;
    }

    else
    {
      isReadyToConnectSynchronous = [(AVPlayerViewController *)WeakRetained _isReadyToConnectSynchronousChecks];
    }

    [v4 _setSecondScreenConnectionReadyToConnect:isReadyToConnectSynchronous];
    [v4 setIsUpdatingSecondScreenConnectionReadyToConnect:0];
    WeakRetained = v4;
  }
}

- (void)_updateSecondScreenConnectionPlayingState
{
  v3 = [(AVPlayerViewController *)self playerController];
  v4 = [v3 timeControlStatus] != 0;

  secondScreenConnection = self->_secondScreenConnection;

  [(AVSecondScreenConnection *)secondScreenConnection setPlaying:v4];
}

- (void)_setUpSecondScreenConnectionIfNeeded
{
  v3 = [(AVPlayerViewController *)self contentView];
  v11 = [v3 playbackContentContainerView];

  v5 = v11;
  if (v11)
  {
    if (!self->_secondScreenConnection)
    {
      v4 = [(AVPlayerViewController *)self hasPerformedInitialSetup];
      v5 = v11;
      if (v4)
      {
        v6 = [[AVSecondScreenContentViewConnection alloc] initWithContentView:v11];
        v7 = [(AVPlayerViewController *)self player];
        [(AVSecondScreenConnection *)v6 setDebugInfoPlayer:v7];

        v8 = [(AVPlayerViewController *)self player];
        [(AVSecondScreenConnection *)v6 setPlayer:v8];

        [(AVSecondScreenConnection *)v6 setRequiresTVOutScreen:1];
        [(AVSecondScreenContentViewConnection *)v6 startUpdates];
        v9 = +[AVSecondScreenController sharedInstance];
        [v9 addConnection:v6];

        secondScreenConnection = self->_secondScreenConnection;
        self->_secondScreenConnection = v6;

        [(AVPlayerViewController *)self _updateSecondScreenConnectionPlayingState];
        v4 = [(AVPlayerViewController *)self _updateSecondScreenConnectionReadyToConnect];
        v5 = v11;
      }
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)_addObserversOnControlsViewController
{
  v3 = [(AVObservationController *)self->_observationController startObserving:self keyPath:@"controlsViewController.temporarilyVisible" includeInitialValue:1 observationHandler:&__block_literal_global_583];
  controlsViewControllerTemporarilyVisibleObservationToken = self->_controlsViewControllerTemporarilyVisibleObservationToken;
  self->_controlsViewControllerTemporarilyVisibleObservationToken = v3;

  MEMORY[0x1EEE66BB8](v3, controlsViewControllerTemporarilyVisibleObservationToken);
}

void __63__AVPlayerViewController__addObserversOnControlsViewController__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 traitCollection];
  -[AVPlayerViewController _updatePreferredDynamicRangeForAutomaticModeWithHeadroomUsage:](v2, [v3 _headroomUsage]);
}

- (void)_addObservers
{
  v43 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v3 = _AVLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v42 = "[AVPlayerViewController _addObservers]";
      _os_log_error_impl(&dword_18B49C000, v3, OS_LOG_TYPE_ERROR, "*** %s must be called on main thread. ***", buf, 0xCu);
    }
  }

  v4 = [(AVPlayerViewController *)self playerController];
  if (![v4 status])
  {
    v5 = [(AVPlayerViewController *)self playerController];
    v6 = [v5 hasContent];

    if (v6)
    {
      goto LABEL_10;
    }

    v4 = _AVLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v38 = _AVMethodProem(self);
      *buf = 138412290;
      v42 = v38;
      _os_log_error_impl(&dword_18B49C000, v4, OS_LOG_TYPE_ERROR, "The player controller should have content before calling %@.", buf, 0xCu);
    }
  }

LABEL_10:
  if ([(AVPlayerViewController *)self _hasBegunObservation])
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "It's an error to repeatedly add observers.", buf, 2u);
    }
  }

  [(AVPlayerViewController *)self set_hasBegunObservation:1];
  v8 = [(AVPlayerViewController *)self _observationController];
  v9 = MEMORY[0x1E69AE9C0];
  v40 = *MEMORY[0x1E69AE9C0];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
  v11 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  [v11 setAttribute:v10 forKey:*MEMORY[0x1E69AECD8] error:0];

  [v8 startObservingNotificationForName:*v9 object:0 notificationCenter:0 observationHandler:&__block_literal_global_448];
  [v8 startObservingNotificationForName:*MEMORY[0x1E69587A0] object:0 notificationCenter:0 observationHandler:&__block_literal_global_450];
  v12 = [v8 startObserving:self keyPath:@"playerController.player.currentItem" includeInitialValue:1 observationHandler:&__block_literal_global_456];
  [(AVObservationController *)self->_observationController startObservingNotificationForName:@"AVVolumeControllerVolumeChangedNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_458];
  v13 = [v8 startObserving:self keyPath:@"playerController.player.muted" includeInitialValue:0 observationHandler:&__block_literal_global_463];
  [v8 startObservingNotificationForName:@"AVNowPlayingInfoControllerDidReceiveSkipCommandEventNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_465];
  [v8 startObservingNotificationForName:@"AVPictureInPictureControllerUserPlaybackStateDidChangeNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_467];
  [v8 startObservingNotificationForName:@"AVNowPlayingInfoControllerDidReceiveStopCommandEventNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_469];
  [v8 startObservingNotificationForName:@"AVPlayerControllerPlaybackDidEndNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_472];
  v14 = [v8 startObserving:self keyPath:@"playerController.contentDimensions" includeInitialValue:1 observationHandler:&__block_literal_global_475];
  v15 = [v8 startObserving:self keyPath:@"playerController.playingOnExternalScreen" includeInitialValue:0 observationHandler:&__block_literal_global_481];
  v16 = [v8 startObserving:self keyPath:@"playerController.externalPlaybackType" includeInitialValue:0 observationHandler:&__block_literal_global_484];
  v17 = [v8 startObserving:self keyPath:@"playerController.externalPlaybackAirPlayDeviceLocalizedName" includeInitialValue:0 observationHandler:&__block_literal_global_490];
  v39[0] = @"playerController.hasEnabledAudio";
  v39[1] = @"playerController.hasEnabledVideo";
  v39[2] = @"playerController.status";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:3];
  v19 = [v8 startObserving:self keyPaths:v18 observationHandler:&__block_literal_global_503];

  v20 = [v8 startObserving:self keyPath:@"playerController.status" includeInitialValue:1 observationHandler:&__block_literal_global_506];
  v21 = [v8 startObserving:self keyPath:@"playerController.defaultPlaybackRate" includeInitialValue:1 observationHandler:&__block_literal_global_512];
  v22 = [(AVPlayerViewController *)self playerController];
  LOBYTE(v18) = objc_opt_respondsToSelector();

  if (v18)
  {
    v23 = [v8 startObserving:self keyPath:@"playerController.timeControlStatus" includeInitialValue:0 observationHandler:&__block_literal_global_519];
  }

  v24 = [v8 startObserving:self keyPath:@"playerController.allowsExternalPlayback" includeInitialValue:0 observationHandler:&__block_literal_global_524];
  v25 = [v8 startObserving:self keyPath:@"playerController.scrubbing" includeInitialValue:0 observationHandler:&__block_literal_global_529_11353];
  v26 = [v8 startObserving:self keyPath:@"playerController.playingOnSecondScreen" includeInitialValue:0 observationHandler:&__block_literal_global_534];
  v27 = [v8 startObserving:self keyPath:@"contentView.playbackContentContainerView.bounds" includeInitialValue:1 observationHandler:&__block_literal_global_539];
  v28 = [v8 startObserving:self keyPath:@"contentView.bounds" includeInitialValue:1 observationHandler:&__block_literal_global_541];
  v29 = [(AVPlayerViewController *)self playerController];
  v30 = objc_opt_respondsToSelector();

  if (v30)
  {
    v31 = [(AVObservationController *)self->_observationController startObserving:self keyPath:@"playerController.usesExternalPlaybackWhileExternalScreenIsActive" includeInitialValue:0 observationHandler:&__block_literal_global_549];
  }

  v32 = [v8 startObserving:self keyPath:@"playerController.currentAssetIfReady" includeInitialValue:0 observationHandler:&__block_literal_global_554];
  if (self->_usesGlassCatalystControls)
  {
    v33 = [(AVObservationController *)self->_observationController startObserving:self keyPath:@"isVideoZoomableInViewBounds" observationHandler:&__block_literal_global_561];
    v34 = [(AVObservationController *)self->_observationController startObserving:self keyPath:@"analysisView.interactionInProgress" observationHandler:&__block_literal_global_566];
  }

  [(AVPlayerViewController *)self _updateUnsupportedContentIndicatorView];
  [(AVPlayerViewController *)self _updateAudioOnlyIndicatorView];
  [(AVPlayerViewController *)self _updateExternalPlaybackIndicatorView];
  [(AVPlayerViewController *)self _updateSecondScreenConnectionPlayingState];
  [(AVPlayerViewController *)self _updateSecondScreenConnectionReadyToConnect];
  [(AVPlayerViewController *)self _updateContentViewEdgeInsetsForLetterboxedContent];
  [(AVPlayerViewController *)self _updatePlayerLayerLegibleContentInsetsIfNeeded];
  [(AVPlayerViewController *)&self->super.super.super.isa _updateSmartSubtitlesEnablementIfNeeded];
  v35 = [v8 startObserving:self keyPath:@"playerController.rate" includeInitialValue:1 observationHandler:&__block_literal_global_571];
  if (![(AVPlayerViewController *)self _showsWolfControls])
  {
    [(AVPlayerViewController *)self _createPictureInPictureControllerIfNeeded];
  }

  if (!self->_controlsGeneration)
  {
    v36 = [v8 startObserving:self keyPath:@"playerLayerView.videoGravity" includeInitialValue:1 observationHandler:&__block_literal_global_573];
    v37 = [v8 startObserving:self keyPath:@"playerLayerView.frame" includeInitialValue:1 observationHandler:&__block_literal_global_578];
  }

  [(AVPlayerViewController *)self _showsWolfControls];
}

- (void)_updateSmartSubtitlesEnablementIfNeeded
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [a1 playerController];
    if ([v2 externalPlaybackType] == 1)
    {
      v3 = _AVLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = 136315138;
        v5 = "[AVPlayerViewController _updateSmartSubtitlesEnablementIfNeeded]";
        _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s Airplay is active disable automatic subtitles", &v4, 0xCu);
      }

      [a1[183] userRequestedSmartSubtitlesHiddenIfActive];
    }

    else
    {
      [(AVPlayerViewController *)a1 _updatePlayerControllerLegibleOptionsForSmartSubtitleDisplayType:?];
    }
  }
}

void __39__AVPlayerViewController__addObservers__block_invoke_21(uint64_t a1, void *a2)
{
  v2 = a2;
  [(AVPlayerViewController *)v2 _updateAnalysisButtonBottomInsetIfNeeded];
  [v2 updateVideoBounds];
}

void __39__AVPlayerViewController__addObservers__block_invoke_20(uint64_t a1, void *a2)
{
  v2 = a2;
  [(AVPlayerViewController *)v2 _updateAnalysisButtonBottomInsetIfNeeded];
  [v2 updateVideoBounds];
}

void __39__AVPlayerViewController__addObservers__block_invoke_19(uint64_t a1, void *a2)
{
  v9 = a2;
  v2 = +[AVKitGlobalSettings shared];
  if ([v2 isTVApp])
  {
  }

  else
  {
    v3 = +[AVKitGlobalSettings shared];
    v4 = [v3 isAVKitTester];

    if (!v4)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  v5 = [v9 playerController];
  v6 = [v5 coordinatedPlaybackActive];

LABEL_6:
  v7 = [v9 playerController];
  v8 = [v7 externalPlaybackType];

  if (v8 == 1 || v6)
  {
    [v9 _updateSelectedPlaybackSpeedIfPlayerControllerRateChanges];
  }

  [(AVPlayerViewController *)v9 _updatePlayerControllerLegibleOptionsForSmartSubtitleDisplayType:?];
}

void __39__AVPlayerViewController__addObservers__block_invoke_18(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 analysisView];
  v4 = [v3 isInteractionInProgress];

  v5 = [v2 catalystPlaybackControlsController];

  [v5 setAnalysisInteractionInProgress:v4];
}

void __39__AVPlayerViewController__addObservers__block_invoke_17(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = [v2 catalystPlaybackControlsController];
  v3 = [v2 isVideoZoomableInViewBounds];

  [v4 setShowsVideoZoomControl:v3];
}

void __39__AVPlayerViewController__addObservers__block_invoke_16(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v12 = a2;
  v5 = a4;
  v6 = [v5 oldValue];
  v7 = [v5 value];

  if (v6 != v7)
  {
    v8 = [v12 delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [v12 delegate];
      [v10 willLoadMediaPresentationSettingsForPlayerViewController:v12];
    }

    v11 = [v12 playerController];
    [v11 enableMediaPresentationSettingsDisplayStyleIfNecessary];
  }
}

void __39__AVPlayerViewController__addObservers__block_invoke_11(uint64_t a1, void *a2)
{
  v2 = a2;
  [(AVPlayerViewController *)v2 _updateNowPlayingInfoControllerSuspendedState];
  [v2 _updateViewControllerPreferencesIfNeeded];
}

void __39__AVPlayerViewController__addObservers__block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 _updateSecondScreenConnectionPlayingState];
  [v2 _updatePlaybackBeganAfterPlayerControllerBecameReadyToPlayIfNeeded];
}

void __39__AVPlayerViewController__addObservers__block_invoke_8_510(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 requiresLinearPlayback])
  {
    [v2 _updateDefaultLinearPlaybackRateIfNeeded];
  }

  else
  {
    [v2 _updateActivePlaybackSpeedIfNeeded];
  }
}

void __39__AVPlayerViewController__addObservers__block_invoke_7_504(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 _updateUnsupportedContentIndicatorView];
  [v2 _updateAudioOnlyIndicatorView];
  [v2 _updatePlaybackBeganAfterPlayerControllerBecameReadyToPlayIfNeeded];
  [(AVPlayerViewController *)v2 _updateSecondGenerationContentTabsGestureEnablementState];
}

void __39__AVPlayerViewController__addObservers__block_invoke_6_500(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 _updateAudioOnlyIndicatorView];
  [v5 _updateAudioOnlyContentStateIfNeeded];
  v2 = v5;
  if (v5)
  {
    v3 = [v5 controlsViewController];
    v4 = [v3 controlsViewControllerIfCatalystGlass];

    if (v4)
    {
      [v4 setPrefersFullWidthTransportControls:{objc_msgSend(v5, "isAudioOnlyContent")}];
    }

    v2 = v5;
  }
}

void __39__AVPlayerViewController__addObservers__block_invoke_4_482(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 _updateExternalPlaybackIndicatorView];
  [(AVPlayerViewController *)v2 _updateSmartSubtitlesEnablementIfNeeded];
  [(AVPlayerViewController *)v2 _updateVisualAnalyzerEnabledStateIfNeeded];
  [v2 _updateSecondScreenConnectionReadyToConnect];
}

void __39__AVPlayerViewController__addObservers__block_invoke_3_479(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 _updateExternalPlaybackIndicatorView];
  [(AVPlayerViewController *)v2 _updateVisualAnalyzerEnabledStateIfNeeded];
  [v2 _updateSecondScreenConnectionReadyToConnect];
  [v2 _updateContentViewEdgeInsetsForLetterboxedContent];
  [(AVPlayerViewController *)v2 _updateControlsVisibilityPolicyAnimated:?];
}

void __39__AVPlayerViewController__addObservers__block_invoke_2_473(uint64_t a1, void *a2)
{
  v7 = a2;
  v2 = [v7 contentView];
  v3 = [v2 playbackContentContainerView];
  v4 = [v3 activeContentView];

  v5 = [v4 visualAnalysisView];
  v6 = v5;
  if (v5 && ([v5 isHidden] & 1) == 0)
  {
    [v4 setNeedsLayout];
  }

  [v7 _updateContentViewEdgeInsetsForLetterboxedContent];
  [v2 setNeedsLayout];
}

void __39__AVPlayerViewController__addObservers__block_invoke_470(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a2;
  v5 = [a4 object];
  v6 = [v8 playerController];
  if (v5 == v6 && [v8 exitsFullScreenWhenPlaybackEnds])
  {
    v7 = [v8 _isTrackingUserInteraction];

    if ((v7 & 1) == 0)
    {
      [v8 _transitionFromFullScreenAnimated:1 completionHandler:0];
    }
  }

  else
  {
  }
}

void __39__AVPlayerViewController__addObservers__block_invoke_8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v6 = a4;
  v7 = _AVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "Did receive stop command notification.", v13, 2u);
  }

  if (v5[1480] == 1)
  {
    [v5 catalystPlaybackControlsController];
  }

  else
  {
    [v5 chromePlaybackControlsController];
  }
  v8 = ;
  v9 = [v8 nowPlayingInfoControllerIfLoaded];

  v10 = [v6 object];

  v11 = [v10 isEqual:v9];
  if (v11)
  {
    v12 = [v5 fullScreenViewController];

    if (v12)
    {
      [v5 _transitionFromFullScreenWithReason:3 animated:1 completionHandler:0];
    }

    else
    {
      [v5 _transitionFromFullScreenAnimated:1 completionHandler:0];
    }
  }
}

void __39__AVPlayerViewController__addObservers__block_invoke_6(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v13 = a2;
  v5 = a4;
  v6 = [v13 player];
  [v6 rate];
  v8 = v7;

  if (v8 != 0.0)
  {
    v9 = [v5 userInfo];
    v10 = [v9 objectForKeyedSubscript:@"AVNowPlayingInfoSkipCommandDirectionKey"];
    v11 = [v10 intValue];

    if (v11)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    [(AVPlayerViewController *)v13 _updatePlayerControllerLegibleOptionsForSmartSubtitleDisplayType:v12];
  }
}

void __39__AVPlayerViewController__addObservers__block_invoke_5(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v5 = a4;
  v6 = [v5 oldValue];
  v7 = [v6 BOOLValue];

  v8 = [v5 value];

  LODWORD(v5) = [v8 BOOLValue];
  if (v7 != v5)
  {
    [(AVPlayerViewController *)v9 _updatePlayerControllerLegibleOptionsForSmartSubtitleDisplayType:?];
  }
}

void __39__AVPlayerViewController__addObservers__block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a2;
  v5 = [a4 object];
  v6 = [v8 _volumeController];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    [(AVPlayerViewController *)v8 _updatePlayerControllerLegibleOptionsForSmartSubtitleDisplayType:?];
  }
}

void __39__AVPlayerViewController__addObservers__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [(AVPlayerViewController *)v2 _setupInfoTabViewController];
  [(AVPlayerViewController *)v2 _updateInfoTabViewControllerIfNeeded];
}

- (void)_setupInfoTabViewController
{
  if (a1)
  {
    v2 = +[AVKitGlobalSettings shared];
    v3 = [v2 supportsContentTabs];

    if (v3)
    {
      v4 = [a1 showsPlaybackControls];
      v5 = [a1 playerController];
      v6 = [v5 activePlayer];
      v18 = [v6 currentItem];

      v7 = a1[227];
      if (v18)
      {
        if (!v7 && v4 != 0)
        {
          v9 = [AVInfoTabCoordinator alloc];
          v10 = [a1 infoViewActions];
          v11 = [(AVInfoTabCoordinator *)v9 initWithPlayerItem:v18 actions:v10];
          v12 = a1[228];
          a1[228] = v11;

          v7 = [a1[228] infoTabViewController];
          [a1 setInfoTabViewController:v7];
          [(AVPlayerViewController *)a1 _updateInfoTabViewControllerIfNeeded];
          v13 = [a1 view];
          [v13 frame];
          v15 = v14;
          v17 = v16;

          [(AVPlayerViewController *)a1 _updateInfoTabViewControllerPreferredContentSizeIfNeededToFitSize:v15, v17];
        }
      }
    }
  }
}

- (void)_updateInfoTabViewControllerIfNeeded
{
  if (a1)
  {
    v2 = +[AVKitGlobalSettings shared];
    v3 = [v2 supportsContentTabs];

    if (v3)
    {
      v4 = [a1 playerController];
      v5 = [v4 activePlayer];
      v6 = [v5 currentItem];

      [a1[228] setPlayerItem:v6];
      [(AVPlayerViewController *)a1 _updateCustomInfoViewControllersIfNeeded];
    }
  }
}

- (void)_updateCustomInfoViewControllersIfNeeded
{
  if (a1)
  {
    v2 = objc_alloc(MEMORY[0x1E695DF70]);
    v11 = [v2 initWithArray:MEMORY[0x1E695E0F0]];
    v3 = *(a1 + 1816);
    v4 = [a1 allowInfoMetadataSubpanel];
    v5 = +[AVKitGlobalSettings shared];
    v6 = [v5 supportsContentTabs];

    if (v3)
    {
      v7 = v4 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7 && v6 != 0)
    {
      [v11 addObject:v3];
    }

    [v11 addObjectsFromArray:*(a1 + 1456)];
    v9 = [*(a1 + 1248) controlsViewControllerIfChromeless];
    [v9 setCustomInfoViewControllers:v11];

    v10 = [*(a1 + 1248) controlsViewControllerIfGlass];
    [v10 setCustomInfoViewControllers:v11];
  }
}

- (void)_updateInfoTabViewControllerPreferredContentSizeIfNeededToFitSize:(double)a3
{
  if (a1)
  {
    v6 = +[AVKitGlobalSettings shared];
    v7 = [v6 supportsContentTabs];

    if (v7)
    {
      v8 = *(a1 + 1816);
      if (v8)
      {
        v9 = dbl_18B6EC4C0[a2 > a3];

        [v8 setPreferredContentSize:{a2, v9}];
      }
    }
  }
}

- (BOOL)isVideoZoomableInViewBounds
{
  if ([(AVPlayerViewController *)self isPresentedFullScreen]|| [(AVPlayerViewController *)self isPresentingFullScreenFromInline])
  {
    v3 = 0;
  }

  else
  {
    v3 = ![(AVPlayerViewController *)self canToggleVideoGravityWhenEmbeddedInline];
  }

  v4 = [(AVPlayerViewController *)self playerController];
  [v4 contentDimensions];
  v6 = v5;
  v8 = v7;
  v9 = [v4 isExternalPlaybackActive];
  LOBYTE(v10) = 0;
  if ((v3 & 1) == 0 && (v9 & 1) == 0)
  {
    LOBYTE(v10) = 0;
    if (v8 > 0.0 && v6 > 0.0)
    {
      v11 = [(AVPlayerViewController *)self fullScreenViewController];
      v12 = [v11 view];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = [(AVPlayerViewController *)self view];
      }

      v15 = v14;

      [v15 bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v40.width = v6;
      v40.height = v8;
      v45.origin.x = v17;
      v45.origin.y = v19;
      v45.size.width = v21;
      v45.size.height = v23;
      v41 = AVMakeRectWithAspectRatioInsideRect(v40, v45);
      width = v41.size.width;
      height = v41.size.height;
      UIPointRoundToViewScale();
      x = v42.origin.x;
      y = v42.origin.y;
      v42.size.width = width;
      v42.size.height = height;
      CGRectGetWidth(v42);
      UIRoundToViewScale();
      v29 = v28;
      v43.origin.x = x;
      v43.origin.y = y;
      v43.size.width = v29;
      v43.size.height = height;
      CGRectGetHeight(v43);
      UIRoundToViewScale();
      v31 = v30;
      v32 = [(AVPlayerViewController *)self traitCollection];
      [v32 displayCornerRadius];
      v34 = v33;

      if (v34 > 0.0 && (-[AVPlayerViewController contentView](self, "contentView"), v13 = objc_claimAutoreleasedReturnValue(), ([v13 isCoveringWindow] & 1) != 0))
      {
        LOBYTE(v10) = 1;
      }

      else
      {
        [v15 bounds];
        v46.origin.x = v35;
        v46.origin.y = v36;
        v46.size.width = v37;
        v46.size.height = v38;
        v44.origin.x = x;
        v44.origin.y = y;
        v44.size.width = v29;
        v44.size.height = v31;
        v10 = !CGRectEqualToRect(v44, v46);
        if (v34 <= 0.0)
        {
LABEL_17:

          goto LABEL_18;
        }
      }

      goto LABEL_17;
    }
  }

LABEL_18:

  return v10;
}

- (void)setInfoTabViewController:(id)a3
{
  v9 = a3;
  v5 = +[AVKitGlobalSettings shared];
  v6 = [v5 supportsContentTabs];

  infoTabViewController = self->_infoTabViewController;
  if (v6)
  {
    v8 = v9;
    if (infoTabViewController == v9)
    {
      goto LABEL_6;
    }

    objc_storeStrong(&self->_infoTabViewController, a3);
    [(AVPlayerViewController *)self _updateCustomInfoViewControllersIfNeeded];
  }

  else
  {
    self->_infoTabViewController = 0;
  }

  v8 = v9;
LABEL_6:
}

- (void)setShowsVisualLookup:(BOOL)a3
{
  if (self->_showsVisualLookup != a3)
  {
    self->_showsVisualLookup = a3;
    [(AVPlayerViewController *)self _updateControlsVisibilityPolicyAnimated:?];
    [(AVPlayerViewController *)self _updateVisualAnalysisViewActiveInteractionTypes];
    showsVisualLookup = self->_showsVisualLookup;
    toggleLookupAction = self->_toggleLookupAction;

    [(UIAction *)toggleLookupAction setState:showsVisualLookup];
  }
}

- (void)_didEndPlayingOnSecondScreen
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __54__AVPlayerViewController__didEndPlayingOnSecondScreen__block_invoke;
  v2[3] = &unk_1E720A090;
  v2[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v2];
}

void __54__AVPlayerViewController__didEndPlayingOnSecondScreen__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) playerController];
  v2 = [*(a1 + 32) contentView];
  v3 = [v2 playbackContentContainerView];
  [v3 setPlayingOnSecondScreen:0];

  [v4 setPlayingOnSecondScreen:0];
  [v2 addPlaybackContentContainerViewIfNeeded];
}

- (void)_didBeginPlayingOnSecondScreen
{
  v5 = [(AVPlayerViewController *)self playerController];
  v3 = [(AVPlayerViewController *)self contentView];
  v4 = [v3 playbackContentContainerView];

  [v4 setPlayingOnSecondScreen:1];
  [v5 setPlayingOnSecondScreen:1];
}

- (void)_handleFastForwardKeyReleasedCommand:(id)a3
{
  v4 = a3;
  v5 = [(AVPlayerViewController *)self playerController];
  [v5 endScanningForward:v4];
}

- (void)_handleFastForwardKeyPressedCommand:(id)a3
{
  v5 = a3;
  if (![(AVPlayerViewController *)self requiresLinearPlayback])
  {
    v4 = [(AVPlayerViewController *)self playerController];
    [v4 beginScanningForward:v5];
  }
}

- (void)_handleRewindKeyReleasedCommand:(id)a3
{
  v4 = a3;
  v5 = [(AVPlayerViewController *)self playerController];
  [v5 endScanningBackward:v4];
}

- (void)_handleRewindKeyPressedCommand:(id)a3
{
  v5 = a3;
  if (![(AVPlayerViewController *)self requiresLinearPlayback])
  {
    v4 = [(AVPlayerViewController *)self playerController];
    [v4 beginScanningBackward:v5];
  }
}

- (void)_handleVolumeDownKeyReleasedCommand:(id)a3
{
  v3 = [(AVPlayerViewController *)self _volumeController];
  [v3 endChangingVolume];
}

- (void)_handleVolumeDownKeyPressedCommand:(id)a3
{
  v6 = [(AVPlayerViewController *)self _volumeController];
  [v6 beginChangingVolume];
  [v6 volume];
  v4 = v3 + -0.0625;
  v5 = 0.0;
  if (v4 >= 0.0)
  {
    [v6 volume];
    *&v5 = *&v5 + -0.0625;
  }

  [v6 setTargetVolume:v5];
}

- (void)_handleVolumeUpKeyReleasedCommand:(id)a3
{
  v3 = [(AVPlayerViewController *)self _volumeController];
  [v3 endChangingVolume];
}

- (void)_handleVolumeUpKeyPressedCommand:(id)a3
{
  v6 = [(AVPlayerViewController *)self _volumeController];
  [v6 beginChangingVolume];
  [v6 volume];
  v5 = v3;
  v4 = v5 + 0.0625;
  LODWORD(v5) = 1.0;
  if (v4 <= 1.0)
  {
    [v6 volume];
    *&v5 = *&v5 + 0.0625;
  }

  [v6 setTargetVolume:v5];
}

- (void)_handleShowPreviousFrameKeyCommand:(id)a3
{
  v5 = a3;
  if (![(AVPlayerViewController *)self requiresLinearPlayback])
  {
    v4 = [(AVPlayerViewController *)self playerController];
    [v4 seekFrameBackward:v5];
  }
}

- (void)_handleGoToBeginningKeyCommand:(id)a3
{
  v5 = a3;
  if (![(AVPlayerViewController *)self requiresLinearPlayback])
  {
    v4 = [(AVPlayerViewController *)self playerController];
    [v4 seekToBeginning:v5];
  }
}

- (void)_handleShowNextFrameKeyCommand:(id)a3
{
  v5 = a3;
  if (![(AVPlayerViewController *)self requiresLinearPlayback])
  {
    v4 = [(AVPlayerViewController *)self playerController];
    [v4 seekFrameForward:v5];
  }
}

- (void)_handleSkipAhead15SecondsKeyCommand:(id)a3
{
  if (![(AVPlayerViewController *)self requiresLinearPlayback])
  {
    v4 = [(AVPlayerViewController *)self playerController];
    v5 = objc_opt_respondsToSelector();

    v8 = [(AVPlayerViewController *)self playerController];
    if (v5)
    {
      [v8 seekByTimeInterval:15.0 toleranceBefore:0.5 toleranceAfter:0.5];
    }

    else
    {
      v6 = [(AVPlayerViewController *)self playerController];
      [v6 currentTime];
      [v8 seekToTime:v7 + 15.0];
    }
  }
}

- (void)_handleSkipBack15SecondsKeyCommand:(id)a3
{
  if (![(AVPlayerViewController *)self requiresLinearPlayback])
  {
    v4 = [(AVPlayerViewController *)self playerController];
    v5 = objc_opt_respondsToSelector();

    v8 = [(AVPlayerViewController *)self playerController];
    if (v5)
    {
      [v8 seekByTimeInterval:-15.0 toleranceBefore:0.5 toleranceAfter:0.5];
    }

    else
    {
      v6 = [(AVPlayerViewController *)self playerController];
      [v6 currentTime];
      [v8 seekToTime:v7 + -15.0];
    }
  }
}

- (void)_handleVideoGravityPinchGesture:(id)a3
{
  v11 = self->_videoGravityPinchGestureRecognizer;
  v4 = [(AVPlayerViewController *)self contentView];
  v5 = [v4 layoutClass];
  v6 = [v5 unsignedIntegerValue];

  if (v6)
  {
    [(UIPinchGestureRecognizer *)v11 scale];
    v8 = v7;
    if (fabs(v7 + -1.0) >= 0.1)
    {
      v9 = *MEMORY[0x1E69874E8];
      if (v8 > 1.0)
      {
        v10 = *MEMORY[0x1E69874F0];

        v9 = v10;
      }

      [(AVPlayerViewController *)self setVideoGravity:v9 forLayoutClass:v6];
    }
  }
}

- (void)_togglePlaybackForCenterTapGesture:(id)a3
{
  [(AVPlayerViewController *)self _handlePlaybackToggleNotificationForMetricsCollectionEvent];
  v4 = [(AVPlayerViewController *)self playerController];
  [v4 togglePlayback:self];
}

- (void)_handleUserInteractionObservationRecognizer:(id)a3
{
  v4 = a3;
  if ([v4 state] == 1)
  {
    [(AVPlayerViewController *)self _beginTrackingUserInteraction];
  }

  else if ([v4 state] == 3)
  {
    [(AVPlayerViewController *)self _endTrackingUserInteraction];
  }
}

- (void)_handleSingleTapGesture:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[AVPlayerViewController _handleSingleTapGesture:]";
    v10 = 1024;
    v11 = 3646;
    v12 = 2048;
    v13 = self;
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s %d %p", &v8, 0x1Cu);
  }

  if (self->_usesGlassCatalystControls)
  {
    [(AVPlayerViewController *)self catalystPlaybackControlsController];
  }

  else
  {
    [(AVPlayerViewController *)self chromePlaybackControlsController];
  }
  v5 = ;
  v6 = [v5 entersFullScreenWhenTapped];

  if ([(AVPlayerViewController *)self _canEnterFullScreen]&& v6)
  {
    [(AVPlayerViewController *)self _transitionToFullScreenAnimated:1 interactive:0 completionHandler:0];
  }

  else
  {
    if ([(AVPlayerViewController *)self showsVisualLookup])
    {
      [(AVPlayerViewController *)self setShowsVisualLookup:0];
    }

    v7 = [(AVPlayerViewController *)self controlsViewController];
    [v7 toggleVisibility:self];
  }
}

- (void)_handleDoubleTapGesture:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315650;
    v17 = "[AVPlayerViewController _handleDoubleTapGesture:]";
    v18 = 1024;
    v19 = 3613;
    v20 = 2048;
    v21 = self;
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s %d %p", &v16, 0x1Cu);
  }

  v5 = [(AVPlayerViewController *)self isPresentedFullScreen]|| [(AVPlayerViewController *)self isPresentingFullScreenFromInline]|| [(AVPlayerViewController *)self canToggleVideoGravityWhenEmbeddedInline];
  if (self->_usesGlassCatalystControls)
  {
    v6 = [(AVPlayerViewController *)self catalystPlaybackControlsController];
    v7 = [v6 showsVideoZoomControl];
  }

  else
  {
    v6 = [(AVPlayerViewController *)self chromePlaybackControlsController];
    v7 = [v6 showsVideoGravityButton];
  }

  v8 = v7;

  if ((v5 & v8) == 1)
  {
    v9 = [(AVPlayerViewController *)self isVideoZoomableInViewBounds];
    if (![(AVPictureInPictureController *)self->_pictureInPictureController isPictureInPictureActive]&& v9)
    {
      v10 = [(AVPlayerViewController *)self contentView];
      v11 = [v10 layoutClass];

      if (v11)
      {
        if ([(__AVPlayerLayerView *)self->_playerLayerView isVideoScaled])
        {
          v12 = 1;
        }

        else
        {
          v12 = 2;
        }

        v13 = NSStringFromVideoGravity(v12);
        v14 = [(AVPlayerViewController *)self contentView];
        v15 = [v14 layoutClass];
        -[AVPlayerViewController setVideoGravity:forLayoutClass:](self, "setVideoGravity:forLayoutClass:", v13, [v15 unsignedIntegerValue]);
      }
    }
  }

  else
  {
    [(AVPictureInPictureController *)self->_pictureInPictureController isPictureInPictureActive];
  }
}

- (id)keyCommands
{
  if ([(AVPlayerViewController *)self canControlPlayback])
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v4 = [(AVPlayerViewController *)self _localizedDiscoverabilityTitleForKeyCommandLocalizationKey];

    if (!v4)
    {
      v5 = [MEMORY[0x1E695DF90] dictionary];
      localizedDiscoverabilityTitleForKeyCommandLocalizationKey = self->__localizedDiscoverabilityTitleForKeyCommandLocalizationKey;
      self->__localizedDiscoverabilityTitleForKeyCommandLocalizationKey = v5;
    }

    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __37__AVPlayerViewController_keyCommands__block_invoke;
    v21 = &unk_1E7207E58;
    v22 = self;
    v7 = v3;
    v23 = v7;
    v8 = _Block_copy(&v18);
    (*(v8 + 2))(v8, @" ", 0, 0, sel__handlePlayPauseKeyCommand_, 0, @"KEYBOARD_DISCOVERABILITY_PLAY_PAUSE", @"Play/Pause keyboard command discoverability title", v18, v19, v20, v21, v22);
    v9 = [(AVPlayerViewController *)self _volumeController];
    v10 = [v9 currentRouteHasVolumeControl];

    if (v10)
    {
      (*(v8 + 2))(v8, *MEMORY[0x1E69DDF30], 0, 1, sel__handleVolumeUpKeyPressedCommand_, sel__handleVolumeUpKeyReleasedCommand_, @"KEYBOARD_DISCOVERABILITY_VOLUME_UP", @"Volume up keyboard command discoverability title");
      (*(v8 + 2))(v8, *MEMORY[0x1E69DDE90], 0, 1, sel__handleVolumeDownKeyPressedCommand_, sel__handleVolumeDownKeyReleasedCommand_, @"KEYBOARD_DISCOVERABILITY_VOLUME_DOWN", @"Volume down keyboard command discoverability title");
    }

    v11 = [(AVPlayerViewController *)self playerController];
    if (!-[AVPlayerViewController requiresLinearPlayback](self, "requiresLinearPlayback") && [v11 canSeek])
    {
      v12 = *MEMORY[0x1E69DDF10];
      (*(v8 + 2))(v8, *MEMORY[0x1E69DDF10], 0, 1, sel__handleSkipBack15SecondsKeyCommand_, 0, @"KEYBOARD_DISCOVERABILITY_SKIP_BACK_15", @"Skip back 15 seconds keyboard command discoverability title");
      v13 = *MEMORY[0x1E69DDF28];
      (*(v8 + 2))(v8, *MEMORY[0x1E69DDF28], 0, 1, sel__handleSkipAhead15SecondsKeyCommand_, 0, @"KEYBOARD_DISCOVERABILITY_SKIP_AHEAD_15", @"Skip ahead 15 seconds keyboard command discoverability title");
      if ([v11 canSeekToBeginning])
      {
        (*(v8 + 2))(v8, v12, 0x80000, 1, sel__handleGoToBeginningKeyCommand_, 0, @"KEYBOARD_DISCOVERABILITY_GO_TO_BEGINNING", @"Go to beginning keyboard command discoverability title");
      }

      if ([v11 canScanBackward])
      {
        (*(v8 + 2))(v8, v12, 0, 1, sel__handleRewindKeyPressedCommand_, sel__handleRewindKeyReleasedCommand_, @"KEYBOARD_DISCOVERABILITY_REWIND", @"Rewind keyboard command discoverability title");
      }

      if ([v11 canScanForward])
      {
        (*(v8 + 2))(v8, v13, 0, 1, sel__handleFastForwardKeyPressedCommand_, sel__handleFastForwardKeyReleasedCommand_, @"KEYBOARD_DISCOVERABILITY_FAST_FORWARD", @"Fast forward keyboard command discoverability title");
      }

      if ([v11 canSeekFrameBackward])
      {
        (*(v8 + 2))(v8, v12, 0x20000, 1, sel__handleShowPreviousFrameKeyCommand_, 0, @"KEYBOARD_DISCOVERABILITY_SHOW_PREVIOUS_FRAME", @"Show previous frame keyboard command discoverability title");
      }

      if ([v11 canSeekFrameForward])
      {
        (*(v8 + 2))(v8, v13, 0x20000, 1, sel__handleShowNextFrameKeyCommand_, 0, @"KEYBOARD_DISCOVERABILITY_SHOW_NEXT_FRAME", @"Show next frame keyboard command discoverability title");
      }
    }

    v14 = [(AVPlayerViewController *)self contentView];
    v15 = [v14 isCoveringWindow];

    if (v15)
    {
      (*(v8 + 2))(v8, *MEMORY[0x1E69DDEA0], 0, 0, sel__handleExitFullScreenKeyCommand_, 0, @"KEYBOARD_DISCOVERABILITY_EXIT_FULLSCREEN", @"Exit full screen keyboard command discoverability title");
    }

    v16 = [v7 copy];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __37__AVPlayerViewController_keyCommands__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v15 = a2;
  v16 = a7;
  v17 = a8;
  v18 = [*(a1 + 32) _localizedDiscoverabilityTitleForKeyCommandLocalizationKey];
  v19 = [v18 objectForKeyedSubscript:v16];

  if (v19)
  {
    if (a6)
    {
      v20 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:v15 modifierFlags:a3 action:a5 upAction:a6 discoverabilityTitle:v19];
    }

    else
    {
      v20 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:v15 modifierFlags:a3 action:a5];
      [v20 setDiscoverabilityTitle:v19];
    }

    [v20 setWantsPriorityOverSystemBehavior:a4];
    [*(a1 + 40) addObject:v20];
  }

  else
  {
    objc_initWeak(&location, *(a1 + 32));
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __37__AVPlayerViewController_keyCommands__block_invoke_2;
    v21[3] = &unk_1E7208BB0;
    objc_copyWeak(&v23, &location);
    v22 = v16;
    AVAsynchronousLocalizedString(v22, v17, v21);

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }
}

void __37__AVPlayerViewController_keyCommands__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained _localizedDiscoverabilityTitleForKeyCommandLocalizationKey];
  [v4 setObject:v3 forKeyedSubscript:*(a1 + 32)];
}

- (void)setTransportBarCustomMenuItems:(NSArray *)transportBarCustomMenuItems
{
  v22 = self;
  v33 = *MEMORY[0x1E69E9840];
  v3 = transportBarCustomMenuItems;
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = v3;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v16 = _AVLog();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_19;
            }

            v17 = [v9 description];
            *buf = 136315394;
            v29 = "[AVPlayerViewController setTransportBarCustomMenuItems:]";
            v30 = 2112;
            v31 = v17;
            v18 = v16;
            v19 = "%s Unsupported subclass of UIMenuElement. Only UIAction and UIMenu types are supported. Skipping: %@.";
            goto LABEL_18;
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 identifier];
          v11 = [v10 isEqualToString:@"com.apple.avkit.TransportMenuItem.MediaPresentationSettingsAudioGroup"];
        }

        else
        {
          v11 = 0;
        }

        v12 = [v9 title];
        if (v12)
        {
          v13 = v12;
          v14 = [v9 image];
          v15 = v14 == 0;

          if ((v15 & ~v11 & 1) == 0)
          {
            v16 = [v9 copy];
            [(NSArray *)v23 addObject:v16];
            goto LABEL_19;
          }
        }

        v16 = _AVLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v9 description];
          *buf = 136315394;
          v29 = "[AVPlayerViewController setTransportBarCustomMenuItems:]";
          v30 = 2112;
          v31 = v17;
          v18 = v16;
          v19 = "%s Unsupported custom menu item. Skipping %@. UIMenuElements must have both a title and an image.";
LABEL_18:
          _os_log_impl(&dword_18B49C000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0x16u);
        }

LABEL_19:
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v6);
  }

  controlsViewController = v22->_controlsViewController;
  if (controlsViewController)
  {
    [(AVMobileControlsViewController *)controlsViewController setTransportBarCustomMenuItems:v23];
  }

  v21 = v22->_transportBarCustomMenuItems;
  v22->_transportBarCustomMenuItems = v23;
}

- (int64_t)_preferredModalPresentationStyle
{
  if ([(AVPlayerViewController *)self _showsWolfControls])
  {
    return -2;
  }

  else
  {
    return 0;
  }
}

- (id)transitioningDelegate
{
  if ([(AVPlayerViewController *)self _showsWolfControls])
  {
    v9.receiver = self;
    v9.super_class = AVPlayerViewController;
    v3 = [(AVPlayerViewController *)&v9 transitioningDelegate];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AVPlayerViewController;
    v4 = [(AVPlayerViewController *)&v8 transitioningDelegate];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [(AVPlayerViewController *)self _avkitPreferredTransitioningDelegate];
    }

    v3 = v6;
  }

  return v3;
}

- (BOOL)avkit_isEffectivelyFullScreen
{
  v44 = *MEMORY[0x1E69E9840];
  if ([(AVPlayerViewController *)self _showsWolfControls])
  {
    v3 = ![(AVPlayerViewController *)self modalPresentationStyle]|| [(AVPlayerViewController *)self modalPresentationStyle]== 5 || [(AVPlayerViewController *)self modalPresentationStyle]== 8;
    v5 = [(AVPlayerViewController *)self view];
    v6 = [v5 window];

    if (v6)
    {
      v7 = [(AVPlayerViewController *)self view];
      v8 = [v7 window];
      v9 = [(AVPlayerViewController *)self view];
      [v9 bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v18 = [(AVPlayerViewController *)self view];
      [v8 convertRect:v18 fromView:{v11, v13, v15, v17}];

      UISizeRoundToScale();
      v20 = v19;
      v22 = v21;
      v23 = [(AVPlayerViewController *)self view];
      v24 = [v23 window];
      [v24 bounds];

      UISizeRoundToScale();
      v26 = v25;
      v28 = v27;
      v29 = v22 == v27 && v20 == v25;
      v30 = _AVLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 136316162;
        v35 = "[AVPlayerViewController avkit_isEffectivelyFullScreen]";
        v36 = 2048;
        v37 = v20;
        v38 = 2048;
        v39 = v22;
        v40 = 2048;
        v41 = v26;
        v42 = 2048;
        v43 = v28;
        _os_log_impl(&dword_18B49C000, v30, OS_LOG_TYPE_DEFAULT, "%s view size (%f x %f) vs window size (%f x %f)", &v34, 0x34u);
      }
    }

    else
    {
      v29 = 0;
    }

    v4 = v3 || v29;
    return v4 & 1;
  }

  if ([(AVPlayerViewController *)self isPresentedFullScreen]|| [(AVPlayerViewController *)self isPresentingFullScreenFromInline])
  {
    v4 = 1;
    return v4 & 1;
  }

  v32 = [(AVPlayerViewController *)self contentView];
  v33 = [v32 isCoveringWindow];

  return v33;
}

- (int64_t)preferredStatusBarStyle
{
  v3 = [(AVPlayerViewController *)self presentationContext];
  if ([v3 isDismissing])
  {
    v4 = [(AVPlayerViewController *)self presentationContext];
    v5 = [v4 rotatableWindowViewController];

    if (v5)
    {
      return 0;
    }
  }

  else
  {
  }

  v7 = [(AVPlayerViewController *)self fullScreenViewController];
  v8 = [v7 viewIfLoaded];
  v9 = [v8 window];
  v10 = [v9 windowScene];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = [(AVPlayerViewController *)self viewIfLoaded];
    v14 = [v13 window];
    v12 = [v14 windowScene];
  }

  if ([(AVPlayerViewController *)self prefersStatusBarHidden])
  {
    v15 = [v12 statusBarManager];
    v6 = [v15 statusBarStyle];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)prefersStatusBarHidden
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [(AVPlayerViewController *)self fullScreenViewController];
  v4 = [v3 viewIfLoaded];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(AVPlayerViewController *)self viewIfLoaded];
  }

  v7 = v6;

  if (-[AVPlayerViewController isPresentingFullScreenFromInline](self, "isPresentingFullScreenFromInline") || (-[AVPlayerViewController navigationController](self, "navigationController"), (v8 = objc_claimAutoreleasedReturnValue()) == 0) || (v9 = v8, -[AVPlayerViewController navigationController](self, "navigationController"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isNavigationBarHidden], v10, v9, (v11 & 1) != 0))
  {
    v12 = [(AVPlayerViewController *)self fullScreenViewController];
    if ([v12 isBeingDismissed])
    {
      v13 = [(AVPlayerViewController *)self presentationContext];
      v14 = [v13 rotatableWindowViewController];

      if (v14)
      {
        v15 = 0;
        goto LABEL_16;
      }
    }

    else
    {
    }

    if ([v7 isCounterRotatingContentView])
    {
      v15 = 1;
      goto LABEL_16;
    }

    v16 = [(AVPlayerViewController *)self _controlsViewControllerPrefersStatusBarHidden];
  }

  else
  {
    v22.receiver = self;
    v22.super_class = AVPlayerViewController;
    v16 = [(AVPlayerViewController *)&v22 prefersStatusBarHidden];
  }

  v15 = v16;
LABEL_16:
  v17 = _AVLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = "NO";
    *buf = 136315650;
    v24 = "[AVPlayerViewController prefersStatusBarHidden]";
    v26 = "prefersStatusBarHidden";
    v25 = 2080;
    if (v15)
    {
      v18 = "YES";
    }

    v27 = 2080;
    v28 = v18;
    _os_log_impl(&dword_18B49C000, v17, OS_LOG_TYPE_DEFAULT, "%s %s %s", buf, 0x20u);
  }

  if (self->_currentPrefersStatusBarHidden != v15)
  {
    self->_currentPrefersStatusBarHidden = v15;
    v19 = _AVLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = "NO";
      *buf = 136315650;
      v24 = "[AVPlayerViewController prefersStatusBarHidden]";
      v26 = "prefersStatusBarHidden";
      v25 = 2080;
      if (v15)
      {
        v20 = "YES";
      }

      v27 = 2080;
      v28 = v20;
      _os_log_impl(&dword_18B49C000, v19, OS_LOG_TYPE_DEFAULT, "%s %s %s", buf, 0x20u);
    }
  }

  return v15;
}

- (BOOL)modalPresentationCapturesStatusBarAppearance
{
  if ([(AVPlayerViewController *)self _showsWolfControls])
  {
    return 0;
  }

  if ([(AVPlayerViewController *)self _modalPresentationStyleIsFullScreen])
  {
    return 1;
  }

  v4 = [(AVPlayerViewController *)self contentView];
  v5 = [v4 isCoveringWindow];

  return v5;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  if ([(AVPlayerViewController *)self _showsWolfControls])
  {
    v12.receiver = self;
    v12.super_class = AVPlayerViewController;
    [(AVPlayerViewController *)&v12 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  }

  else
  {
    v8 = [(AVPlayerViewController *)self contentView];
    v9 = [(AVPlayerViewController *)self viewIfLoaded];
    v10 = [v8 isDescendantOfView:v9];

    if (v10)
    {
      [(AVPlayerViewController *)self _contentViewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
    }

    v11.receiver = self;
    v11.super_class = AVPlayerViewController;
    [(AVPlayerViewController *)&v11 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
    [(AVPlayerViewController *)self _updateInfoTabViewControllerPreferredContentSizeIfNeededToFitSize:height];
  }
}

- (void)didMoveToParentViewController:(id)a3
{
  v4.receiver = self;
  v4.super_class = AVPlayerViewController;
  [(AVPlayerViewController *)&v4 didMoveToParentViewController:a3];
  if (![(AVPlayerViewController *)self _showsWolfControls])
  {
    [(AVPlayerViewController *)self _updatePlaybackControlsState];
  }
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = AVPlayerViewController;
  [(AVPlayerViewController *)&v5 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  [(AVPlayerViewController *)self _updateVideoGravityPinchGestureEnablementState];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[AVPlayerViewController viewWillDisappear:]";
    v9 = 1024;
    v10 = 3142;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d", buf, 0x12u);
  }

  v6.receiver = self;
  v6.super_class = AVPlayerViewController;
  [(AVPlayerViewController *)&v6 viewWillDisappear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[AVPlayerViewController viewDidDisappear:]";
    v9 = 1024;
    v10 = 3128;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d", buf, 0x12u);
  }

  v6.receiver = self;
  v6.super_class = AVPlayerViewController;
  [(AVPlayerViewController *)&v6 viewDidDisappear:v3];
  self->_playerViewControllerAnimated = 0;
  [(AVPlayerViewController *)self setShouldUseNetworkingResourcesForLiveStreamingWhilePaused:0];
  [(AVPlayerViewController *)self _updateSecondScreenConnectionReadyToConnect];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[AVPlayerViewController viewDidAppear:]";
    v17 = 1024;
    v18 = 3076;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d", buf, 0x12u);
  }

  v14.receiver = self;
  v14.super_class = AVPlayerViewController;
  [(AVPlayerViewController *)&v14 viewDidAppear:v3];
  v6 = [(AVPlayerViewControllerContentView *)self->_playerViewControllerContentView scrollingObserver];
  v7 = [v6 isScrolling];

  if ((v7 & 1) == 0)
  {
    [(AVPlayerViewController *)self _updateViewControllerPreferencesIfNeeded];
    [(AVPlayerViewController *)self _updatePlaybackControlsState];
    if (self->_playerShouldAutoplay)
    {
      v8 = [(AVPlayerViewController *)self playerController];
      [v8 autoplay:0];
    }

    [(AVPlayerViewController *)self setShouldUseNetworkingResourcesForLiveStreamingWhilePaused:1];
    usesGlassCatalystControls = self->_usesGlassCatalystControls;
    v10 = [(AVPlayerViewController *)self contentView];
    v11 = v10;
    if (usesGlassCatalystControls)
    {
      [v10 glassPlaybackControlsView];
    }

    else
    {
      [v10 chromePlaybackControlsView];
    }
    v12 = ;

    if (!v12)
    {
      v13 = [(AVPlayerViewController *)self contentView];
      [v13 setNeedsLayout];
    }

    [(AVPlayerViewController *)self updateVideoBounds];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = AVPlayerViewController;
  [(AVPlayerViewController *)&v13 viewWillAppear:a3];
  v4 = [(AVPlayerViewController *)self transitionCoordinator];
  if ([v4 isAnimated])
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  self->_playerViewControllerAnimated = v5;

  if (!self->_controlsViewControllerHasBeenSetUp)
  {
    v6 = self->_playerViewControllerContentView;
    v7 = [(AVPlayerViewController *)self controlsViewController];
    [(AVPlayerViewController *)self addChildViewController:v7];
    [(AVPlayerViewControllerContentView *)v6 setControlsViewController:v7];

    [v7 didMoveToParentViewController:self];
    self->_controlsViewControllerHasBeenSetUp = 1;
  }

  v8 = [(AVPlayerViewControllerContentView *)self->_playerViewControllerContentView scrollingObserver];
  v9 = [v8 isScrolling];

  if ((v9 & 1) == 0)
  {
    v10 = [(AVPlayerViewController *)self transitionCoordinator];
    v11[4] = self;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __41__AVPlayerViewController_viewWillAppear___block_invoke;
    v12[3] = &unk_1E7208180;
    v12[4] = self;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __41__AVPlayerViewController_viewWillAppear___block_invoke_2;
    v11[3] = &unk_1E7208180;
    [v10 animateAlongsideTransition:v12 completion:v11];

    [(AVPlayerViewController *)self _updatePlaybackControlsState];
  }

  [(AVPlayerViewController *)self _updateWantsAnalysisButtonVisibleStateIfNeeded];
}

- (void)viewDidLoad
{
  kdebug_trace();
  v6.receiver = self;
  v6.super_class = AVPlayerViewController;
  [(AVPlayerViewController *)&v6 viewDidLoad];
  if (![(AVPlayerViewController *)self _showsWolfControls])
  {
    usesGlassCatalystControls = self->_usesGlassCatalystControls;
    v4 = [(AVPlayerViewController *)self contentView];
    if (usesGlassCatalystControls)
    {
      [(AVPlayerViewController *)self catalystPlaybackControlsController];
    }

    else
    {
      [(AVPlayerViewController *)self chromePlaybackControlsController];
    }
    v5 = ;
    [v4 setGen1Delegate:v5];
  }

  kdebug_trace();
}

- (void)loadView
{
  v49 = *MEMORY[0x1E69E9840];
  if ([(AVPlayerViewController *)self isViewLoaded])
  {
    v3 = _AVLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[AVPlayerViewController loadView]";
      _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s Attempt to load view when view was already loaded.", &buf, 0xCu);
    }
  }

  else
  {
    kdebug_trace();
    *&buf = 0;
    *(&buf + 1) = &buf;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__11392;
    v47 = __Block_byref_object_dispose__11393;
    v48 = self->_playerLayerView;
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__11392;
    v40 = __Block_byref_object_dispose__11393;
    v41 = 0;
    v4 = [AVPlaybackContentContainerView alloc];
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [(AVPlaybackContentContainerView *)v4 initWithFrame:*(*(&buf + 1) + 40) playerLayerView:0 contentOverlayView:*MEMORY[0x1E695F058], v6, v7, v8];
    v10 = [(AVPlayerViewController *)self _behaviorStorage];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __34__AVPlayerViewController_loadView__block_invoke;
    v32[3] = &unk_1E7207E10;
    v34 = &v36;
    v11 = v9;
    v33 = v11;
    p_buf = &buf;
    [v10 enumerateAllBehaviorContextsImplementingSelector:sel_makePlaybackContentContainerWithFrame_activeContentView_ forProtocol:&unk_1EFF32480 usingBlock:v32];

    if (v37[5])
    {
      v12 = v37[5];
    }

    else
    {
      v12 = v11;
    }

    objc_storeStrong(v37 + 5, v12);
    [*(*(&buf + 1) + 40) setPixelBufferAttributes:self->_pixelBufferAttributes];
    v13 = *(*(&buf + 1) + 40);
    v14 = [(AVPlayerViewController *)self playerController];
    [v13 setPlayerController:v14];

    [*(*(&buf + 1) + 40) setVideoGravity:self->_videoGravity];
    controlsGeneration = self->_controlsGeneration;
    v16 = [AVPlayerViewControllerContentView alloc];
    v17 = v37[5];
    v18 = [(AVPlayerViewController *)self _targetVideoGravitiesForLayoutClass];
    v19 = [(AVPlayerViewControllerContentView *)v16 initWithFrame:v17 playbackContentContainerView:v18 targetVideoGravities:v5, v6, v7, v8];

    [(AVPlayerViewControllerContentView *)v19 setDelegate:self];
    [(AVPlayerViewControllerContentView *)v19 setWantsBackdropView:controlsGeneration == 0];
    [(AVPlayerViewControllerContentView *)v19 setShowsPlaybackControls:[(AVPlayerViewController *)self showsPlaybackControls]];
    [(AVPlayerViewControllerContentView *)v19 setCanAutomaticallyZoomLetterboxVideos:!self->_hasClientSetVideoGravity];
    v20 = [(AVPlayerViewControllerContentView *)v19 scrollingObserver];
    [v20 addDelegate:self];

    [(AVPlayerViewControllerContentView *)v19 setOverrideUserInterfaceStyle:[(AVPlayerViewController *)self overrideUserInterfaceStyle]];
    objc_storeStrong(&self->_playerViewControllerContentView, v19);
    v43 = objc_opt_class();
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
    v22 = [(AVPlayerViewController *)self registerForTraitChanges:v21 withHandler:&__block_literal_global_275];

    v23 = [AVPlayerView alloc];
    v24 = [*MEMORY[0x1E69DDA98] avkit_possibleWindowForControllingOverallAppearance];
    [v24 bounds];
    v25 = [(AVPlayerView *)v23 initWithFrame:v19 contentView:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];

    objc_storeStrong(&self->_playerViewControllerView, v25);
    v26 = [(AVPresentationContainerView *)v25 appearanceProxy];
    [v26 setActualView:v37[5]];

    [(AVPlayerView *)v25 setAutoresizingMask:18];
    v27 = [MEMORY[0x1E69DC888] blackColor];
    [(AVPresentationContainerView *)v25 setBackgroundColor:v27];

    [(AVPlayerViewController *)self setView:v25];
    if (!self->_playerLayerView)
    {
      [(AVPlayerViewController *)self setPlayerLayerView:*(*(&buf + 1) + 40)];
    }

    [(AVPlayerViewController *)self _updatePreferredDisplayDynamicRange];
    v28 = +[AVKitGlobalSettings shared];
    v29 = [v28 constrainedHDREnabled];

    if (v29)
    {
      v42 = objc_opt_class();
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
      v31 = [(AVPlayerViewController *)self registerForTraitChanges:v30 withHandler:&__block_literal_global_280];
    }

    self->_controlsViewControllerHasBeenSetUp = 0;
    kdebug_trace();

    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(&buf, 8);
  }
}

void __34__AVPlayerViewController_loadView__block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[5] + 8) + 40))
  {
    v4 = _AVLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&dword_18B49C000, v4, OS_LOG_TYPE_ERROR, "Expected only one context for AVPlayerViewControllerBehaviorContext. This is fine, but probably means AVPlayerViewControllerBehaviorContext needs to be refactored", v15, 2u);
    }
  }

  v5 = [v3 makePlaybackContentContainerWithFrame:a1[4] activeContentView:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  if (v9)
  {
    v10 = v9;
    v11 = *(v8 + 40);
    *(v8 + 40) = v10;
  }

  else
  {
    v11 = [*(*(a1[5] + 8) + 40) activeContentView];
    v12 = [v11 playerLayerView];
    v13 = *(a1[6] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

- (void)_updatePreferredDisplayDynamicRange
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v2 = +[AVKitGlobalSettings shared];
  v3 = [v2 constrainedHDREnabled];

  if (!v3)
  {
    return;
  }

  v4 = *MEMORY[0x1E69792A8];
  v5 = *(a1 + 1656);
  switch(v5)
  {
    case 0:
      if ([a1 isPresentingFullScreenFromInline])
      {
        v8 = [a1 fullScreenViewController];
        if (v8)
        {
          v9 = [a1 fullScreenViewController];
        }

        else
        {
          v9 = a1;
        }

        v10 = v9;
      }

      else
      {
        v10 = a1;
      }

      v11 = [v10 traitCollection];
      v12 = [v11 _headroomUsage];

      v7 = [(AVPlayerViewController *)a1 _preferredDynamicRangeForAutomaticModeWithHeadroomUsage:v12];

      v4 = v10;
      goto LABEL_16;
    case 3:
      v6 = MEMORY[0x1E69792A0];
      goto LABEL_8;
    case 2:
      v6 = MEMORY[0x1E6979298];
LABEL_8:
      v7 = *v6;
LABEL_16:

      v4 = v7;
      break;
  }

  v13 = [*(a1 + 1784) playerLayer];
  v14 = _AVLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v13 description];
    v16 = 136315650;
    v17 = "[AVPlayerViewController _updatePreferredDisplayDynamicRange]";
    v18 = 2112;
    v19 = v4;
    v20 = 2112;
    v21 = v15;
    _os_log_impl(&dword_18B49C000, v14, OS_LOG_TYPE_DEFAULT, "%s Setting dynamic range: %@, on playerLayer: %@", &v16, 0x20u);
  }

  [v13 setPreferredDynamicRange:v4];
}

void __34__AVPlayerViewController_loadView__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isPresentingFullScreenFromInline] & 1) == 0)
  {
    v2 = [v3 traitCollection];
    -[AVPlayerViewController _updatePreferredDynamicRangeForAutomaticModeWithHeadroomUsage:](v3, [v2 _headroomUsage]);
  }
}

void __34__AVPlayerViewController_loadView__block_invoke_272(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = [v2 contentView];
  v3 = [v2 overrideUserInterfaceStyle];

  [v4 setOverrideUserInterfaceStyle:v3];
}

- (void)setView:(id)a3
{
  if (self->_playerViewControllerView == a3)
  {
    v3.receiver = self;
    v3.super_class = AVPlayerViewController;
    [(AVPlayerViewController *)&v3 setView:?];
  }

  else
  {
    NSLog(&cfstr_Avplayerviewco_26.isa, a2);
  }
}

- (void)performInitialSetupIfNeededAndPossible
{
  if ([(AVPlayerViewController *)self hasPerformedInitialSetup])
  {
    return;
  }

  v3 = [(AVPlayerViewController *)self pictureInPictureActivitySessionIdentifier];

  if ([(AVPlayerViewController *)self _showsWolfControls])
  {
    v4 = [(AVPlayerViewController *)self view];
    v5 = [v4 window];
    v6 = v3 | v5;

    if (!v6)
    {
      return;
    }

    goto LABEL_11;
  }

  v7 = [(AVPlayerViewControllerContentView *)self->_playerViewControllerContentView scrollingObserver];
  if ([v7 isScrolling])
  {
    v8 = 0;
  }

  else
  {
    v9 = [(AVPlayerViewControllerContentView *)self->_playerViewControllerContentView window];
    v8 = v9 != 0;
  }

  if (v3 || v8)
  {
LABEL_11:

    [(AVPlayerViewController *)self _performInitialSetup];
  }
}

- (uint64_t)_performInitialSetup
{
  if (result)
  {
    v1 = result;
    kdebug_trace();
    if ([v1 hasPerformedInitialSetup])
    {
      v2 = _AVLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_error_impl(&dword_18B49C000, v2, OS_LOG_TYPE_ERROR, "Already performed initial setup.", v11, 2u);
      }
    }

    [v1 setHasPerformedInitialSetup:1];
    v3 = [v1 _showsWolfControls];
    [v1 _startPlayerLayerViewObservationsIfNeeded];
    v4 = v1[199];
    if (v3)
    {
      v5 = [v4 startObserving:v1 keyPath:@"playerController.status" includeInitialValue:1 observationHandler:&__block_literal_global_602];
      v6 = [v1 _behaviorStorage];
      [v6 enumerateAllBehaviorContextsImplementingSelector:sel_viewDidLoad forProtocol:&unk_1EFF32480 usingBlock:&__block_literal_global_604];

      v7 = [v1 keyCommands];
    }

    else
    {
      v8 = [v4 startObserving:v1 keyPath:@"playerController.status" includeInitialValue:1 observationHandler:&__block_literal_global_606];
      [v1[199] startObservingNotificationForName:@"AVSecondScreenConnectionActiveDidChangeNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_608];
      [v1[199] startObservingNotificationForName:*MEMORY[0x1E69DE2D8] object:v1 notificationCenter:0 observationHandler:&__block_literal_global_610];
      [v1[199] startObservingNotificationForName:*MEMORY[0x1E69DE2C8] object:v1 notificationCenter:0 observationHandler:&__block_literal_global_612];
      v9 = [v1 _behaviorStorage];
      [v9 enumerateAllBehaviorContextsImplementingSelector:sel_viewDidLoad forProtocol:&unk_1EFF32480 usingBlock:&__block_literal_global_614];

      v10 = [v1 keyCommands];
      [(AVPlayerViewController *)v1 _setUpGestureRecognizersIfNeeded];
      [(AVPlayerViewController *)v1 _setUpVideoFrameVisualAnalyzerIfNeeded];
      [(AVPlayerViewController *)v1 _setUpVisualAnalysisViewIfNeeded];
      [v1 _setUpSecondScreenConnectionIfNeeded];
      [(AVPlayerViewController *)v1 _setUpEnhanceDialogueControllerIfNeeded];
      [(AVPlayerViewController *)v1 _updateStatusBarGradientViewVisibility];
      [(AVPlayerViewController *)v1 _updateControlsVisibilityPolicyAnimated:?];
    }

    return kdebug_trace();
  }

  return result;
}

- (void)_setUpGestureRecognizersIfNeeded
{
  v2 = [a1 contentView];
  if (!v2)
  {
    v3 = _AVLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v34 = 0;
      _os_log_error_impl(&dword_18B49C000, v3, OS_LOG_TYPE_ERROR, "Content view should be loaded before attempting to add gesture recognizers to it.", v34, 2u);
    }
  }

  v4 = [a1 _transitionController];
  v5 = *(a1 + 1256);
  v6 = *(a1 + 1480);
  v7 = [a1 contentView];
  if ((v6 & 1) != 0 || !v5)
  {
    v17 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:a1 action:sel__handleDoubleTapGesture_];
    v18 = *(a1 + 1368);
    *(a1 + 1368) = v17;

    [*(a1 + 1368) setDelegate:a1];
    [*(a1 + 1368) setNumberOfTapsRequired:2];
    [v7 addGestureRecognizer:*(a1 + 1368)];
  }

  else
  {
    [(AVPlayerViewController *)a1 _attachContentTabPanGestureRecognizerIfNeeded];
    v8 = [[AVCenterTapGestureRecognizer alloc] initWithTarget:a1 action:sel__togglePlaybackForCenterTapGesture_];
    v9 = *(a1 + 1832);
    *(a1 + 1832) = v8;

    [*(a1 + 1832) setDelegate:a1];
    [v7 addGestureRecognizer:*(a1 + 1832)];
    v10 = [[AVScrubbingGesturePlatformAdapter_iOS alloc] initWithView:v7];
    v11 = [[AVScrubbingGestureController alloc] initWithPlatformAdapter:v10];
    v12 = *(a1 + 1200);
    *(a1 + 1200) = v11;

    [*(a1 + 1200) setDelegate:a1];
    v13 = *(a1 + 1200);
    v14 = [a1 playerController];
    [v13 setPlayerController:v14];

    [*(a1 + 1200) setScrubsHaveMomentum:1];
    v15 = [objc_alloc(MEMORY[0x1E69DCD80]) initWithTarget:a1 action:sel__handleVideoGravityPinchGesture_];
    v16 = *(a1 + 1384);
    *(a1 + 1384) = v15;

    [v7 addGestureRecognizer:*(a1 + 1384)];
    [(AVPlayerViewController *)a1 _updateScrubbingGestureEnabledState];
  }

  if (!*(a1 + 1360))
  {
    v19 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:a1 action:sel__handleSingleTapGesture_];
    v20 = *(a1 + 1360);
    *(a1 + 1360) = v19;

    [*(a1 + 1360) setDelegate:a1];
    if (*(a1 + 1368))
    {
      [*(a1 + 1360) requireGestureRecognizerToFail:?];
    }

    [v2 addGestureRecognizer:*(a1 + 1360)];
  }

  if (!*(a1 + 1376))
  {
    v21 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:a1 action:sel__handleDoubleTapTwoFingersGesture_];
    v22 = *(a1 + 1376);
    *(a1 + 1376) = v21;

    [*(a1 + 1376) setNumberOfTapsRequired:2];
    [*(a1 + 1376) setNumberOfTouchesRequired:2];
    [v2 addGestureRecognizer:*(a1 + 1376)];
  }

  if (!*(a1 + 1392))
  {
    v23 = [[AVExternalGestureRecognizerPreventer alloc] initWithTarget:0 action:0];
    v24 = *(a1 + 1392);
    *(a1 + 1392) = v23;

    [v2 addGestureRecognizer:*(a1 + 1392)];
  }

  if (!*(a1 + 1400))
  {
    v25 = [[AVUserInteractionObserverGestureRecognizer alloc] initWithTarget:a1 action:sel__handleUserInteractionObservationRecognizer_];
    v26 = *(a1 + 1400);
    *(a1 + 1400) = v25;

    [v2 addGestureRecognizer:*(a1 + 1400)];
  }

  if (!*(a1 + 1752))
  {
    v27 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:a1 action:sel__handleHoverGestureRecognizer_];
    v28 = *(a1 + 1752);
    *(a1 + 1752) = v27;

    [*(a1 + 1752) setDelegate:a1];
    [a1 setHoverGestureRecognizer:*(a1 + 1752)];
    [v2 addGestureRecognizer:*(a1 + 1752)];
  }

  if (!*(a1 + 1760))
  {
    v29 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:a1 action:sel__handleScrubbingGestureRecognizer_];
    [v29 setAllowedScrollTypesMask:2];
    [v29 _setiOSMacIgnoreScrollDirectionUserPreference:1];
    [v29 setDelegate:a1];
    [v29 setAllowedTouchTypes:&unk_1EFF12E60];
    [a1 setScrubGestureRecognizer:v29];
    [v2 addGestureRecognizer:v29];
  }

  if (!*(a1 + 1408))
  {
    v30 = [objc_alloc(MEMORY[0x1E69DD588]) initWithTarget:a1 action:sel__handleScrubInteruptionGestureRecognizer_];
    v31 = *(a1 + 1408);
    *(a1 + 1408) = v30;

    [v2 addGestureRecognizer:*(a1 + 1408)];
  }

  [v4 setInteractionView:v2];
  if (!*(a1 + 1416))
  {
    v32 = objc_alloc_init(AVInteractiveTransitionGestureTracker);
    v33 = *(a1 + 1416);
    *(a1 + 1416) = v32;

    [v4 setInteractiveGestureTracker:*(a1 + 1416)];
  }

  [(AVPlayerViewController *)a1 _updateGesturesEnablementStates];
}

- (void)_setUpVideoFrameVisualAnalyzerIfNeeded
{
  if (a1 && [a1 allowsVideoFrameAnalysis] && objc_msgSend(a1, "hasPerformedInitialSetup"))
  {
    v2 = [a1 playerLayerView];
    v6 = [v2 playerLayer];

    v3 = [[AVVideoFrameVisualAnalyzer alloc] initWithPlayerController:*(a1 + 1568) playerLayer:v6];
    v4 = *(a1 + 1192);
    *(a1 + 1192) = v3;

    [*(a1 + 1192) setDelegate:a1];
    [(AVPlayerViewController *)a1 _updateVisualAnalysisViewActiveInteractionTypes];
    if (*(a1 + 1552) == 1)
    {
      v5 = 30;
    }

    else
    {
      v5 = *(a1 + 1552);
    }

    [*(a1 + 1192) setVideoFrameAnalysisTypes:v5];
    [(AVPlayerViewController *)a1 _updateVisualAnalyzerEnabledStateIfNeeded];
  }
}

- (void)_setUpEnhanceDialogueControllerIfNeeded
{
  if (!a1[151])
  {
    v2 = +[AVKitGlobalSettings shared];
    v3 = [v2 enhanceDialogueEnabled];

    if (v3)
    {
      v4 = objc_alloc_init(AVEnhanceDialogueController);
      v5 = a1[151];
      a1[151] = v4;

      v6 = a1[151];
      v7 = [a1 playerController];
      [v6 setPlayerController:v7];

      [(AVPlayerViewController *)a1 _updateEnhanceDialogueEnabled];
    }
  }
}

- (void)_updateEnhanceDialogueEnabled
{
  if (result)
  {
    v1 = result;
    if ([result showsPlaybackControls] && objc_msgSend(v1, "playbackControlsIncludeTransportControls"))
    {
      v2 = [v1 showsAudioLanguageMenu];
    }

    else
    {
      v2 = 0;
    }

    v3 = v1[151];

    return [v3 setEnabled:v2];
  }

  return result;
}

- (void)_attachContentTabPanGestureRecognizerIfNeeded
{
  if (a1)
  {
    v5 = [a1 contentView];
    v2 = [(AVPlayerViewController *)a1 _contentTabPanGestureRecognizer];
    if (v2)
    {
      v3 = [v5 gestureRecognizers];
      v4 = [v3 containsObject:v2];

      if ((v4 & 1) == 0)
      {
        [v5 addGestureRecognizer:v2];
      }
    }
  }
}

void __46__AVPlayerViewController__performInitialSetup__block_invoke_7(uint64_t a1, void *a2)
{
  objc_initWeak(&location, a2);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __46__AVPlayerViewController__performInitialSetup__block_invoke_8;
  v2[3] = &unk_1E7209EA8;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __46__AVPlayerViewController__performInitialSetup__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[1071] = 0;
    v2 = WeakRetained;
    [(AVPlayerViewController *)WeakRetained _updateStatusBarGradientViewVisibility];
    WeakRetained = v2;
  }
}

void __46__AVPlayerViewController__performInitialSetup__block_invoke_5(uint64_t a1, void *a2)
{
  objc_initWeak(&location, a2);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __46__AVPlayerViewController__performInitialSetup__block_invoke_6;
  v2[3] = &unk_1E7209EA8;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __46__AVPlayerViewController__performInitialSetup__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[1071] = 0;
    v2 = WeakRetained;
    [(AVPlayerViewController *)WeakRetained _updateStatusBarGradientViewVisibility];
    [v2 _createPictureInPictureControllerIfNeeded];
    WeakRetained = v2;
  }
}

void __46__AVPlayerViewController__performInitialSetup__block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a2;
  v5 = v8[143];
  v6 = [a4 object];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    if ([v5 isActive])
    {
      [v8 _didBeginPlayingOnSecondScreen];
    }

    else
    {
      [v8 _didEndPlayingOnSecondScreen];
    }
  }
}

void __46__AVPlayerViewController__performInitialSetup__block_invoke_3(uint64_t a1, void *a2)
{
  v9 = a2;
  v2 = [v9 _hasBegunObservation];
  v3 = v9;
  if ((v2 & 1) == 0)
  {
    v4 = [v9 playerController];
    if ([v4 hasContent])
    {
LABEL_5:

      v3 = v9;
LABEL_6:
      [v3 _addObservers];
      if (v9[1480] == 1)
      {
        [v9 catalystPlaybackControlsController];
      }

      else
      {
        [v9 chromePlaybackControlsController];
      }
      v6 = ;
      [v6 startUpdatesIfNeeded];

      v3 = v9;
      goto LABEL_10;
    }

    v5 = [v9 playerController];
    if ([v5 status] == 1)
    {

      goto LABEL_5;
    }

    v7 = [v9 playerController];
    v8 = [v7 status];

    v3 = v9;
    if (v8 == 2)
    {
      goto LABEL_6;
    }
  }

LABEL_10:
  [v3 _updateUnsupportedContentIndicatorView];
}

uint64_t __46__AVPlayerViewController__performInitialSetup__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v2 = [v9 _hasBegunObservation];
  v3 = v9;
  if ((v2 & 1) == 0)
  {
    v4 = [v9 playerController];
    if ([v4 hasContent])
    {
LABEL_5:

      v3 = v9;
LABEL_6:
      v2 = [v3 _addObservers];
      v3 = v9;
      goto LABEL_7;
    }

    v5 = [v9 playerController];
    if ([v5 status] == 1)
    {

      goto LABEL_5;
    }

    v6 = [v9 playerController];
    v7 = [v6 status];

    v3 = v9;
    if (v7 == 2)
    {
      goto LABEL_6;
    }
  }

LABEL_7:

  return MEMORY[0x1EEE66BB8](v2, v3);
}

- (void)setImageAnalysis:(id)a3
{
  v5 = a3;
  imageAnalysis = self->_imageAnalysis;
  v9 = v5;
  if (imageAnalysis != v5)
  {
    v7 = +[AVKitGlobalSettings shared];
    v8 = [v7 visualAnalysisSupported];

    if (v8)
    {
      objc_storeStrong(&self->_imageAnalysis, a3);
      [(AVPlayerViewController *)self _setUpVisualAnalysisViewIfNeeded];
      [(AVPlayerViewController *)&self->super.super.super.isa _updateAnalysisViewImageAnalysis];
      goto LABEL_6;
    }

    imageAnalysis = self->_imageAnalysis;
  }

  self->_imageAnalysis = 0;

LABEL_6:
}

- (void)setAllowInfoMetadataSubpanel:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[AVPlayerViewController setAllowInfoMetadataSubpanel:]";
    v11 = 1024;
    v12 = 2773;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d", &v9, 0x12u);
  }

  v6 = +[AVKitGlobalSettings shared];
  if ([v6 isTVApp])
  {
  }

  else
  {
    v7 = +[AVKitGlobalSettings shared];
    v8 = [v7 isArtemisApp];

    if ((v8 & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Error: setAllowInfoMetadataSubpanel is only available on the TV app and the Artemis app."];
    }
  }

  if (self->_allowInfoMetadataSubpanel != v3)
  {
    self->_allowInfoMetadataSubpanel = v3;
    if (![(AVPlayerViewController *)self _showsWolfControls])
    {
      [(AVPlayerViewController *)self _updateCustomInfoViewControllersIfNeeded];
    }
  }
}

- (void)setCustomInfoViewControllers:(NSArray *)customInfoViewControllers
{
  v5 = customInfoViewControllers;
  if (self->_customInfoViewControllers != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_customInfoViewControllers, customInfoViewControllers);
    [(AVPlayerViewController *)self _updateCustomInfoViewControllersIfNeeded];
    [(AVPlayerViewController *)self _attachContentTabPanGestureRecognizerIfNeeded];
    [(AVPlayerViewController *)self _updateSecondGenerationContentTabsGestureEnablementState];
    v5 = v6;
  }
}

- (void)setLegibleContentInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_legibleContentInsets.top, v3), vceqq_f64(*&self->_legibleContentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_legibleContentInsets = a3;
    [(AVPlayerViewController *)self _updatePlayerLayerLegibleContentInsetsIfNeeded];
  }
}

- (void)setCanPausePlaybackWhenClosingPictureInPicture:(BOOL)a3
{
  if (self->_canPausePlaybackWhenClosingPictureInPicture != a3)
  {
    v3 = a3;
    self->_canPausePlaybackWhenClosingPictureInPicture = a3;
    if (![(AVPlayerViewController *)self _showsWolfControls])
    {
      pictureInPictureController = self->_pictureInPictureController;

      [(AVPictureInPictureController *)pictureInPictureController setCanPausePlaybackWhenClosingPictureInPicture:v3];
    }
  }
}

- (void)setDefaultPlaybackRate:(double)a3
{
  v4 = [(AVPlayerViewController *)self playerController];
  [v4 setDefaultPlaybackRate:a3];
}

- (void)setHoveringOverPlaybackControl:(BOOL)a3
{
  if (self->_hoveringOverPlaybackControl != a3)
  {
    self->_hoveringOverPlaybackControl = a3;
    [(AVPlayerViewController *)self _updatePlaybackControlsCanHideStateIfNeeded];
  }
}

- (void)_ensureBehaviorStorage
{
  if (![(AVPlayerViewController *)self _showsWolfControls]&& !self->__behaviorStorage)
  {
    v3 = [[AVBehaviorStorage alloc] initWithAVKitOwner:self];
    behaviorStorage = self->__behaviorStorage;
    self->__behaviorStorage = v3;

    MEMORY[0x1EEE66BB8](v3, behaviorStorage);
  }
}

- (AVBehaviorStorage)_behaviorStorage
{
  [(AVPlayerViewController *)self _showsWolfControls];
  behaviorStorage = self->__behaviorStorage;

  return behaviorStorage;
}

- (UIViewController)viewControllerForFullScreenPresentation
{
  v2 = [(AVPlayerViewController *)self contentView];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DD258] _viewControllerForFullScreenPresentationFromView:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_activeViewControllerForContentView
{
  v3 = [(AVPlayerViewController *)self fullScreenViewController];
  v4 = [v3 associatedFullScreenViewController];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(AVPlayerViewController *)self fullScreenViewController];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = self;
    }

    v6 = v9;
  }

  return v6;
}

- (void)setPictureInPictureActivitySessionIdentifier:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  pictureInPictureActivitySessionIdentifier = self->_pictureInPictureActivitySessionIdentifier;
  self->_pictureInPictureActivitySessionIdentifier = v4;

  if (v6)
  {
    [(AVPlayerViewController *)self loadViewIfNeeded];
  }

  [(AVPictureInPictureController *)self->_pictureInPictureController setActivitySessionIdentifier:v6];
}

- (void)setOverrideLayoutMarginsWhenEmbeddedInline:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_overrideLayoutMarginsWhenEmbeddedInline, a3);
  if (self->_usesGlassCatalystControls)
  {
    [(AVPlayerViewController *)self _catalystGlassControlsViewController];
  }

  else
  {
    [(AVPlayerViewController *)self _chromeControlsViewController];
  }
  v5 = ;
  [v5 setEmbeddedInlineLayoutMargins:v6];
}

- (void)setPlayButtonHandlerForLazyPlayerLoading:(id)a3
{
  usesGlassCatalystControls = self->_usesGlassCatalystControls;
  v5 = a3;
  if (usesGlassCatalystControls)
  {
    [(AVPlayerViewController *)self catalystPlaybackControlsController];
  }

  else
  {
    [(AVPlayerViewController *)self chromePlaybackControlsController];
  }
  v6 = ;
  [v6 setPlayButtonHandlerForLazyPlayerLoading:v5];
}

- (id)playButtonHandlerForLazyPlayerLoading
{
  if (self->_usesGlassCatalystControls)
  {
    [(AVPlayerViewController *)self catalystPlaybackControlsController];
  }

  else
  {
    [(AVPlayerViewController *)self chromePlaybackControlsController];
  }
  v2 = ;
  v3 = [v2 playButtonHandlerForLazyPlayerLoading];

  return v3;
}

- (void)setInfoViewActions:(NSArray *)infoViewActions
{
  v29 = *MEMORY[0x1E69E9840];
  if (self->_infoViewActions != infoViewActions)
  {
    v4 = [(NSArray *)infoViewActions copy];
    if (!v4)
    {
      v4 = [(AVPlayerViewController *)self _defaultInfoViewActions];
    }

    v19 = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v5)
    {
      v18 = *v21;
      do
      {
        v6 = 0;
        do
        {
          if (*v21 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v20 + 1) + 8 * v6);
          if (self)
          {
            objc_initWeak(&location, self);
            v8 = MEMORY[0x1E69DC628];
            v9 = [v7 title];
            v10 = [v7 image];
            v11 = [v7 identifier];
            v24[0] = MEMORY[0x1E69E9820];
            v24[1] = 3221225472;
            v24[2] = __50__AVPlayerViewController__createConfiguredAction___block_invoke;
            v24[3] = &unk_1E7208C60;
            v25 = v7;
            objc_copyWeak(&v26, &location);
            v12 = [v8 actionWithTitle:v9 image:v10 identifier:v11 handler:v24];

            objc_destroyWeak(&v26);
            objc_destroyWeak(&location);
          }

          else
          {
            v12 = 0;
          }

          [v19 addObject:v12];
          ++v6;
        }

        while (v5 != v6);
        v13 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
        v5 = v13;
      }

      while (v13);
    }

    v14 = *(&self->super.super.super.isa + v16);
    *(&self->super.super.super.isa + v16) = v19;
    v15 = v19;

    [(AVInfoTabCoordinator *)self->_infoTabCoordinator setActions:*(&self->super.super.super.isa + v16)];
  }
}

void __50__AVPlayerViewController__createConfiguredAction___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 sender];
  [v2 performWithSender:v3 target:0];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v5 = [WeakRetained controlsViewController];
    v6 = [v5 controlsViewControllerIfChromeless];
    objc_initWeak(&location, v6);

    v7 = [v5 controlsViewControllerIfGlass];
    objc_initWeak(&from, v7);

    v8 = objc_loadWeakRetained(&location);
    if (v8)
    {
    }

    else
    {
      v9 = objc_loadWeakRetained(&from);

      if (!v9)
      {
LABEL_6:
        objc_destroyWeak(&from);
        objc_destroyWeak(&location);

        WeakRetained = v10;
        goto LABEL_7;
      }
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__AVPlayerViewController__dismissControlsViewController__block_invoke;
    block[3] = &unk_1E7209C40;
    objc_copyWeak(&v12, &location);
    objc_copyWeak(&v13, &from);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v12);
    goto LABEL_6;
  }

LABEL_7:
}

void __56__AVPlayerViewController__dismissControlsViewController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissCustomInfoViewControllerAnimated:1];

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 dismissCustomInfoViewControllerAnimated:1];
}

- (void)setCustomControlItems:(id)a3
{
  v7 = a3;
  if (![(NSArray *)self->_customControlItems isEqualToArray:?])
  {
    v4 = [v7 copy];
    customControlItems = self->_customControlItems;
    self->_customControlItems = v4;

    controlsViewController = self->_controlsViewController;
    if (controlsViewController)
    {
      [(AVMobileControlsViewController *)controlsViewController setControlItems:v7];
    }
  }
}

- (void)setShouldUseNetworkingResourcesForLiveStreamingWhilePaused:(BOOL)a3
{
  if (self->_shouldUseNetworkingResourcesForLiveStreamingWhilePaused != a3)
  {
    v4 = a3;
    self->_shouldUseNetworkingResourcesForLiveStreamingWhilePaused = a3;
    v5 = [(AVPlayerViewController *)self playerController];
    v6 = v5;
    if (v4)
    {
      [v5 startUsingNetworkResourcesForLiveStreamingWhilePaused];
    }

    else
    {
      [v5 stopUsingNetworkResourcesForLiveStreamingWhilePaused];
    }
  }
}

- (void)scheduleTips
{
  v3 = +[AVKitGlobalSettings shared];
  v4 = [v3 playerTipsEnabled];

  if (v4)
  {
    v7 = [(AVPlayerViewController *)self controlsViewController];
    v5 = [v7 controlsViewControllerIfChromeless];
    [v5 scheduleTips];

    v6 = [v7 controlsViewControllerIfGlass];
    [v6 scheduleTips];
  }
}

- (void)flashPlaybackControlsWithDuration:(double)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[AVPlayerViewController flashPlaybackControlsWithDuration:]";
    v12 = 2048;
    v13 = a3;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %f", buf, 0x16u);
  }

  v6 = 2.0;
  if (a3 <= 2.0)
  {
    v7 = _AVMethodProem(self);
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    NSLog(&cfstr_WarningCalledW.isa, v7, v8);
  }

  else
  {
    v6 = a3;
  }

  v9 = [(AVPlayerViewController *)self controlsViewController];
  [v9 flashControlsWithDuration:v6];
}

- (void)setEntersFullScreenWhenPlaybackBegins:(BOOL)entersFullScreenWhenPlaybackBegins
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_entersFullScreenWhenPlaybackBegins != entersFullScreenWhenPlaybackBegins)
  {
    v3 = entersFullScreenWhenPlaybackBegins;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      *v8 = 136315650;
      *&v8[4] = "[AVPlayerViewController setEntersFullScreenWhenPlaybackBegins:]";
      *&v8[14] = "entersFullScreenWhenPlaybackBegins";
      *&v8[12] = 2080;
      if (v3)
      {
        v6 = "YES";
      }

      *&v8[22] = 2080;
      v9 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", v8, 0x20u);
    }

    self->_entersFullScreenWhenPlaybackBegins = v3;
    if (self->_usesGlassCatalystControls)
    {
      [(AVPlayerViewController *)self catalystPlaybackControlsController];
    }

    else
    {
      [(AVPlayerViewController *)self chromePlaybackControlsController];
    }
    v7 = ;
    [v7 setEntersFullScreenWhenPlaybackBegins:{v3, *v8, *&v8[16]}];
  }
}

- (void)setVolumeControlsCanShowSlider:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    *v8 = 136315650;
    *&v8[4] = "[AVPlayerViewController setVolumeControlsCanShowSlider:]";
    *&v8[14] = "volumeControlsCanShowSlider";
    *&v8[12] = 2080;
    if (v3)
    {
      v6 = "YES";
    }

    *&v8[22] = 2080;
    v9 = v6;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", v8, 0x20u);
  }

  if (self->_usesGlassCatalystControls)
  {
    [(AVPlayerViewController *)self catalystPlaybackControlsController];
  }

  else
  {
    [(AVPlayerViewController *)self chromePlaybackControlsController];
  }
  v7 = ;
  [v7 setVolumeControlsCanShowSlider:{v3, *v8, *&v8[16]}];
}

- (BOOL)volumeControlsCanShowSlider
{
  if (self->_usesGlassCatalystControls)
  {
    [(AVPlayerViewController *)self catalystPlaybackControlsController];
  }

  else
  {
    [(AVPlayerViewController *)self chromePlaybackControlsController];
  }
  v2 = ;
  v3 = [v2 volumeControlsCanShowSlider];

  return v3;
}

- (void)_updateActuallyRequiresLinearPlayback
{
  v3 = [(AVPlayerViewController *)self requiresLinearPlayback];
  v4 = [(AVPlayerViewController *)self playerController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    if ([(AVPlayerViewController *)self requiresLinearPlayback])
    {
      v3 = 1;
    }

    else
    {
      v6 = [(AVPlayerViewController *)self playerController];
      v7 = [v6 interstitialController];
      v8 = [v7 requiresLinearPlayback];

      v3 |= v8;
    }
  }

  [(AVPlayerViewController *)self setActuallyRequiresLinearPlayback:v3 & 1];
}

- (void)setRequiresLinearPlayback:(BOOL)requiresLinearPlayback
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_requiresLinearPlayback != requiresLinearPlayback)
  {
    v3 = requiresLinearPlayback;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVPlayerViewController setRequiresLinearPlayback:]";
      v10 = "requiresLinearPlayback";
      v9 = 2080;
      if (v3)
      {
        v6 = "YES";
      }

      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
    }

    self->_requiresLinearPlayback = v3;
    [(AVPlayerViewController *)self _updateActuallyRequiresLinearPlayback];
  }
}

- (void)setActuallyRequiresLinearPlayback:(BOOL)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_actuallyRequiresLinearPlayback != a3)
  {
    v3 = a3;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      *v11 = 136315650;
      *&v11[4] = "[AVPlayerViewController setActuallyRequiresLinearPlayback:]";
      *&v11[14] = "actuallyRequiresLinearPlayback";
      *&v11[12] = 2080;
      if (v3)
      {
        v6 = "YES";
      }

      *&v11[22] = 2080;
      v12 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", v11, 0x20u);
    }

    self->_actuallyRequiresLinearPlayback = v3;
    if (![(AVPlayerViewController *)self _showsWolfControls])
    {
      [(AVMobileControlsViewController *)self->_controlsViewController setRequiresLinearPlayback:v3];
      if (self->_usesGlassCatalystControls)
      {
        [(AVPlayerViewController *)self catalystPlaybackControlsController];
      }

      else
      {
        [(AVPlayerViewController *)self chromePlaybackControlsController];
      }
      v7 = ;
      [v7 setRequiresLinearPlayback:{v3, *v11, *&v11[16]}];

      v8 = [(AVPlayerViewController *)self playerController];
      [v8 setTouchBarRequiresLinearPlayback:v3];

      [(AVPictureInPictureController *)self->_pictureInPictureController setRequiresLinearPlayback:v3];
    }

    if (v3)
    {
      v9 = [(AVPlayerViewController *)self playerController];
      [v9 endScanningForward:self];

      v10 = [(AVPlayerViewController *)self playerController];
      [v10 endScanningBackward:self];
    }

    self->_defaultLinearPlaybackRate = 1.0;
    [(AVPlayerViewController *)self _updateDefaultPlaybackRateIfNeeded:*v11];
    [(AVPlayerViewController *)self _updateScrubbingGestureEnabledState];
  }
}

- (void)setShowsMinimalPlaybackControlsWhenEmbeddedInline:(BOOL)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_showsMinimalPlaybackControlsWhenEmbeddedInline != a3)
  {
    v3 = a3;
    self->_showsMinimalPlaybackControlsWhenEmbeddedInline = a3;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      *v8 = 136315650;
      *&v8[4] = "[AVPlayerViewController setShowsMinimalPlaybackControlsWhenEmbeddedInline:]";
      *&v8[14] = "showsMinimalPlaybackControlsWhenEmbeddedInline";
      *&v8[12] = 2080;
      if (v3)
      {
        v6 = "YES";
      }

      *&v8[22] = 2080;
      v9 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", v8, 0x20u);
    }

    if (self->_usesGlassCatalystControls)
    {
      [(AVPlayerViewController *)self catalystPlaybackControlsController];
    }

    else
    {
      [(AVPlayerViewController *)self chromePlaybackControlsController];
    }
    v7 = ;
    [v7 setShowsMinimalPlaybackControlsWhenEmbeddedInline:{v3, *v8, *&v8[16]}];
  }
}

- (void)setAllowsEnteringFullScreen:(BOOL)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_allowsEnteringFullScreen != a3)
  {
    v3 = a3;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVPlayerViewController setAllowsEnteringFullScreen:]";
      v10 = "allowsEnteringFullScreen";
      v9 = 2080;
      if (v3)
      {
        v6 = "YES";
      }

      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
    }

    self->_allowsEnteringFullScreen = v3;
    if (![(AVPlayerViewController *)self _showsWolfControls])
    {
      [(AVMobileControlsViewController *)self->_controlsViewController setShowsFullScreenControl:v3];
      [(AVPlayerViewController *)self _updatePlaybackControlsState];
    }
  }
}

- (void)setCanHidePlaybackControls:(BOOL)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_canHidePlaybackControls != a3)
  {
    v3 = a3;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVPlayerViewController setCanHidePlaybackControls:]";
      v10 = "canHidePlaybackControls";
      v9 = 2080;
      if (v3)
      {
        v6 = "YES";
      }

      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
    }

    self->_canHidePlaybackControls = v3;
    [(AVPlayerViewController *)self _updatePlaybackControlsCanHideStateIfNeeded];
    [(AVPlayerViewController *)self _updateControlsVisibilityPolicyAnimated:?];
  }
}

- (BOOL)canControlPlayback
{
  if ([(AVPlayerViewController *)self showsPlaybackControls])
  {
    return 1;
  }

  return [(AVPlayerViewController *)self hasCustomPlaybackControls];
}

- (BOOL)hasCustomPlaybackControls
{
  if (!dyld_program_sdk_at_least() || [(AVPlayerViewController *)self showsPlaybackControls]|| ![(AVPlayerViewController *)self isPresentedFullScreen])
  {
    return 0;
  }

  v3 = [(AVPlayerViewController *)self contentTransitioningDelegate];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v6 = [(AVPlayerViewController *)self _actualContentOverlayView];
    v7 = [v6 subviews];
    v4 = [v7 count] != 0;
  }

  return v4;
}

- (void)_updateCustomControlsViewSuperViewIfNeeded
{
  if (self->_customControlsView)
  {
    [(AVPlayerViewController *)self loadViewIfNeeded];
    v3 = [(AVPlayerViewController *)self contentView];
    [v3 setCustomControlsView:self->_customControlsView];
  }
}

- (AVPlayerViewControllerCustomControlsView)customControlsView
{
  if (!self->_customControlsView)
  {
    v3 = objc_alloc_init(AVPlayerViewControllerCustomControlsView);
    customControlsView = self->_customControlsView;
    self->_customControlsView = v3;

    [(AVPlayerViewControllerCustomControlsView *)self->_customControlsView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(AVPlayerViewControllerCustomControlsView *)self->_customControlsView setEdgesInsettingLayoutMarginsFromSafeArea:0];
    [(AVPlayerViewController *)self _updateCustomControlsViewStateWithVisibleControlsSet:0];
  }

  [(AVPlayerViewController *)self _updateCustomControlsViewSuperViewIfNeeded];
  v5 = self->_customControlsView;

  return v5;
}

- (id)interactiveContentOverlayView
{
  [(AVPlayerViewController *)self loadViewIfNeeded];
  v3 = [(AVPlayerViewController *)self contentView];
  v4 = [v3 interactiveContentOverlayView];

  return v4;
}

- (void)setPixelBufferAttributes:(NSDictionary *)pixelBufferAttributes
{
  v5 = pixelBufferAttributes;
  if ([(AVPlayerViewController *)self isViewLoaded])
  {
    [(__AVPlayerLayerView *)self->_playerLayerView setPixelBufferAttributes:v5];
  }

  else
  {
    v4 = [(NSDictionary *)v5 copy];

    v5 = self->_pixelBufferAttributes;
    self->_pixelBufferAttributes = v4;
  }
}

- (NSDictionary)pixelBufferAttributes
{
  if ([(AVPlayerViewController *)self isViewLoaded])
  {
    v3 = [(__AVPlayerLayerView *)self->_playerLayerView pixelBufferAttributes];
  }

  else
  {
    v3 = self->_pixelBufferAttributes;
  }

  return v3;
}

- (void)setOverrideParentApplicationDisplayIdentifier:(id)a3
{
  v4 = a3;
  if (![(NSString *)self->_overrideParentApplicationDisplayIdentifier isEqualToString:v4])
  {
    v5 = [v4 copy];
    overrideParentApplicationDisplayIdentifier = self->_overrideParentApplicationDisplayIdentifier;
    self->_overrideParentApplicationDisplayIdentifier = v5;

    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72__AVPlayerViewController_setOverrideParentApplicationDisplayIdentifier___block_invoke;
    v7[3] = &unk_1E7207DE8;
    objc_copyWeak(&v9, &location);
    v8 = v4;
    [AVNowPlayingInfoController sharedNowPlayingInfoControllerWithCompletion:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __72__AVPlayerViewController_setOverrideParentApplicationDisplayIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [v4 setOverrideParentApplicationDisplayIdentifier:*(a1 + 32)];
  }
}

- (void)setUpdatesNowPlayingInfoCenter:(BOOL)updatesNowPlayingInfoCenter
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_updatesNowPlayingInfoCenter != updatesNowPlayingInfoCenter)
  {
    v3 = updatesNowPlayingInfoCenter;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVPlayerViewController setUpdatesNowPlayingInfoCenter:]";
      v10 = "updatesNowPlayingInfoCenter";
      v9 = 2080;
      if (v3)
      {
        v6 = "YES";
      }

      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
    }

    self->_updatesNowPlayingInfoCenter = v3;
    [(AVPlayerViewController *)self _updateNowPlayingInfoController];
  }
}

- (void)setShowsTimecodes:(BOOL)showsTimecodes
{
  v3 = showsTimecodes;
  v11 = *MEMORY[0x1E69E9840];
  self->_showsTimecodes = showsTimecodes;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    v7 = !self->_showsTimecodes;
    *v9 = 136315650;
    *&v9[4] = "[AVPlayerViewController setShowsTimecodes:]";
    *&v9[14] = "_showsTimecodes";
    *&v9[12] = 2080;
    if (!v7)
    {
      v6 = "YES";
    }

    *&v9[22] = 2080;
    v10 = v6;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", v9, 0x20u);
  }

  if (self->_usesGlassCatalystControls)
  {
    [(AVPlayerViewController *)self catalystPlaybackControlsController];
  }

  else
  {
    [(AVPlayerViewController *)self chromePlaybackControlsController];
  }
  v8 = ;
  [v8 setShowsTimecodes:{v3, *v9, *&v9[16]}];
}

- (void)setPlaybackSpeedCollection:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_playbackSpeedCollection != v5)
  {
    v6 = _AVLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(AVPlaybackSpeedCollection *)v5 internalDescription];
      v9 = 136315394;
      v10 = "[AVPlayerViewController setPlaybackSpeedCollection:]";
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s New playback speed collection set: %@", &v9, 0x16u);
    }

    [(AVPlaybackSpeedCollection *)self->_playbackSpeedCollection setDelegate:0];
    objc_storeStrong(&self->_playbackSpeedCollection, a3);
    [(AVPlaybackSpeedCollection *)self->_playbackSpeedCollection setDelegate:self];
    [(AVControlsViewController *)self->_controlsViewController setPlaybackSpeedCollection:v5];
    if (self->_usesGlassCatalystControls)
    {
      [(AVPlayerViewController *)self catalystPlaybackControlsController];
    }

    else
    {
      [(AVPlayerViewController *)self chromePlaybackControlsController];
    }
    v8 = ;
    [v8 setPlaybackSpeedCollection:v5];

    [(AVPlayerViewController *)self _updateDefaultPlaybackRateIfNeeded];
  }
}

- (void)setSpeeds:(NSArray *)speeds
{
  v5 = speeds;
  if ([(NSArray *)v5 count])
  {
    v4 = [AVPlaybackSpeedCollection collectionWithSpeeds:v5];
  }

  else
  {
    v4 = 0;
  }

  [(AVPlayerViewController *)self setPlaybackSpeedCollection:v4];
}

- (void)setPreferredDisplayDynamicRange:(int64_t)a3
{
  if (self->_preferredDisplayDynamicRange != a3)
  {
    self->_preferredDisplayDynamicRange = a3;
    [(AVPlayerViewController *)self _updatePreferredDisplayDynamicRange];
  }
}

- (void)setPlayerController:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = self->_playerController;
  if (v6 != v5)
  {
    [(AVNowPlayingInfoController *)self->_nowPlayingInfoController stopNowPlayingUpdatesForPlayerController:v6];
    v7 = [(AVPlayerViewController *)self volumeAnimator];
    [v7 restoreVolumeIfNeeded];

    [(AVPlayerViewController *)self setVolumeAnimator:0];
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v41 = 136315394;
      v42 = "[AVPlayerViewController setPlayerController:]";
      v43 = 2112;
      v44 = v5;
      _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s %@", &v41, 0x16u);
    }

    [(AVPlayerController *)v5 setPlayingOnSecondScreen:[(AVPlayerController *)v6 isPlayingOnSecondScreen]];
    secondScreenConnection = self->_secondScreenConnection;
    v10 = [(AVPlayerViewController *)self player];
    [(AVSecondScreenConnection *)secondScreenConnection setDebugInfoPlayer:v10];

    v11 = self->_secondScreenConnection;
    v12 = [(AVPlayerViewController *)self player];
    [(AVSecondScreenConnection *)v11 setPlayer:v12];

    objc_storeStrong(&self->_playerController, a3);
    smartSubtitlesController = self->_smartSubtitlesController;
    if (!smartSubtitlesController)
    {
      v14 = objc_alloc_init(AVSmartSubtitlesController);
      v15 = self->_smartSubtitlesController;
      self->_smartSubtitlesController = v14;

      [(AVSmartSubtitlesController *)self->_smartSubtitlesController setDelegate:self];
      smartSubtitlesController = self->_smartSubtitlesController;
    }

    v16 = [(AVPlayerViewController *)self playerController];
    [(AVSmartSubtitlesController *)smartSubtitlesController setPlayerController:v16];

    if (objc_opt_respondsToSelector())
    {
      [(AVPlayerController *)self->_playerController setInternalDelegate:self];
      [(AVPlayerController *)v6 setInternalDelegate:0];
    }

    v17 = [(AVPlayerViewController *)self player];
    v18 = [(AVPlayerController *)v5 player];

    if (v17 != v18)
    {
      v19 = [(AVPlayerController *)v5 player];
      [(AVPlayerViewController *)self setPlayer:v19];
    }

    [(AVPlayerViewController *)self _updateActivePlaybackSpeedIfNeeded];
    v20 = &OBJC_IVAR_____AVPlayerLayerView__pictureInPicturePlayerLayerView;
    v21 = &OBJC_IVAR_____AVPlayerLayerView__pictureInPicturePlayerLayerView;
    if (![(AVPlayerViewController *)self _showsWolfControls])
    {
      v22 = &OBJC_IVAR_____AVPlayerLayerView__pictureInPicturePlayerLayerView;
      if (v5 && !self->_playerLayerView)
      {
        v23 = [__AVPlayerLayerView alloc];
        v24 = [(AVPlayerViewController *)self contentView];
        [v24 bounds];
        v25 = [(__AVPlayerLayerView *)v23 initWithFrame:?];

        [(__AVPlayerLayerView *)v25 setPixelBufferAttributes:self->_pixelBufferAttributes];
        v26 = [(AVPlayerViewController *)self playerController];
        [(__AVPlayerLayerView *)v25 setPlayerController:v26];

        v27 = [(AVPlayerViewController *)self contentView];
        v28 = [v27 layoutClass];
        if (v28)
        {
          v29 = [(AVPlayerViewController *)self _targetVideoGravitiesForLayoutClass];
          v30 = [(AVPlayerViewController *)self contentView];
          v31 = [v30 layoutClass];
          v32 = [v29 objectForKeyedSubscript:v31];

          v22 = &OBJC_IVAR_____AVPlayerLayerView__pictureInPicturePlayerLayerView;
          v20 = &OBJC_IVAR_____AVPlayerLayerView__pictureInPicturePlayerLayerView;

          v21 = &OBJC_IVAR_____AVPlayerLayerView__pictureInPicturePlayerLayerView;
        }

        else
        {
          v32 = [(AVPlayerViewController *)self videoGravity];
        }

        [(__AVPlayerLayerView *)v25 setVideoGravity:AVVideoGravityFromString(v32)];
        [(AVPlayerViewController *)self setPlayerLayerView:v25];
      }

      if (self->_usesGlassCatalystControls)
      {
        [(AVPlayerViewController *)self catalystPlaybackControlsController];
      }

      else
      {
        [(AVPlayerViewController *)self chromePlaybackControlsController];
      }
      v33 = ;
      [v33 setPlayerController:v5];

      [*(&self->super.super.super.isa + v22[774]) setPlayerController:v5];
      [(AVPictureInPictureController *)self->_pictureInPictureController setPlayerController:v5];
      [*(&self->super.super.super.isa + v20[778]) setPlayerController:v5];
      [*(&self->super.super.super.isa + v21[786]) setPlayerController:v5];
      [(AVPlayerViewController *)self _updateVisualAnalyzerEnabledStateIfNeeded];
      [(AVPlayerViewController *)self _updatePlayerControllerInspectionState];
    }

    if ([(AVPlayerViewController *)self shouldUseNetworkingResourcesForLiveStreamingWhilePaused])
    {
      [(AVPlayerController *)v6 stopUsingNetworkResourcesForLiveStreamingWhilePaused];
      [(AVPlayerController *)v5 startUsingNetworkResourcesForLiveStreamingWhilePaused];
    }

    v34 = [(AVPlayerController *)v5 pipActivitySessionIdentifier];
    [(AVPlayerViewController *)self setPictureInPictureActivitySessionIdentifier:v34];

    v35 = [(AVPlayerViewController *)self _pipActivitySessionObservationController];
    [v35 stopAllObservation];

    if (v5)
    {
      v36 = [[AVObservationController alloc] initWithOwner:self];
      pipActivitySessionObservationController = self->__pipActivitySessionObservationController;
      self->__pipActivitySessionObservationController = v36;

      v38 = [(AVPlayerViewController *)self _pipActivitySessionObservationController];
      [v38 startObservingNotificationForName:@"AVPlayerControllerPIPActivitySessionIdentifierDidChangeNotification" object:v5 notificationCenter:0 observationHandler:&__block_literal_global_167];
    }

    [*(&self->super.super.super.isa + v20[778]) setPlayerController:v5];
    [*(&self->super.super.super.isa + v21[786]) setPlayerController:v5];
    [(AVScrubbingGestureController *)self->_scrubbingGestureController setPlayerController:v5];
    [(AVEnhanceDialogueController *)self->_enhanceDialogueController setPlayerController:v5];
    [(AVPlayerViewController *)self _setUpVideoFrameVisualAnalyzerIfNeeded];
    [(AVPlayerViewController *)self _updateVisualAnalyzerEnabledStateIfNeeded];
    [(AVPlayerViewController *)self _updateNowPlayingInfoController];
    v39 = [MEMORY[0x1E696AD88] defaultCenter];
    [v39 postNotificationName:@"AVPlayerViewControllerDidChangePlayerControllerNotification" object:self];

    v40 = [(AVPlayerController *)v6 interstitialController];
    [v40 setDelegateManager:0];

    [(AVPlayerViewController *)self _setupInterstitialControllerDelegateIfNeeded];
  }
}

void __46__AVPlayerViewController_setPlayerController___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = [v2 playerController];
  v3 = [v4 pipActivitySessionIdentifier];
  [v2 setPictureInPictureActivitySessionIdentifier:v3];
}

- (void)setAllowsPictureInPicturePlayback:(BOOL)allowsPictureInPicturePlayback
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_allowsPictureInPicturePlayback != allowsPictureInPicturePlayback)
  {
    v3 = allowsPictureInPicturePlayback;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      *v8 = 136315650;
      *&v8[4] = "[AVPlayerViewController setAllowsPictureInPicturePlayback:]";
      *&v8[14] = "allowsPictureInPicturePlayback";
      *&v8[12] = 2080;
      if (v3)
      {
        v6 = "YES";
      }

      *&v8[22] = 2080;
      v9 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", v8, 0x20u);
    }

    self->_allowsPictureInPicturePlayback = v3;
    if ([(AVPlayerViewController *)self isViewLoaded])
    {
      [(AVPlayerViewController *)self _updatePlaybackControlsState];
      [(AVPictureInPictureController *)self->_pictureInPictureController setAllowsPictureInPicturePlayback:v3];
    }

    if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewControllerShouldStartPictureInPictureFromInlineWhenEnteringBackground_, *v8, *&v8[16]])
    {
      v7 = [(AVPlayerViewController *)self delegate];
      -[AVPlayerViewController setCanStartPictureInPictureAutomaticallyFromInline:](self, "setCanStartPictureInPictureAutomaticallyFromInline:", [v7 playerViewControllerShouldStartPictureInPictureFromInlineWhenEnteringBackground:self]);
    }

    if ([(AVPlayerViewController *)self isPictureInPictureActive])
    {
      if (!v3)
      {
        [(AVPlayerViewController *)self stopPictureInPicture];
      }
    }
  }
}

- (void)setShowsAnalysisButtonIfAvailable:(BOOL)a3
{
  v3 = a3;
  v5 = +[AVKitGlobalSettings shared];
  v6 = [v5 visualAnalysisSupported];

  if (v6)
  {
    if (self->_showsAnalysisButtonIfAvailable != v3)
    {
      self->_showsAnalysisButtonIfAvailable = v3;

      [(AVPlayerViewController *)self _updateWantsAnalysisButtonVisibleStateIfNeeded];
    }
  }

  else
  {
    self->_showsAnalysisButtonIfAvailable = 0;
  }
}

- (void)setAllowsVideoFrameAnalysis:(BOOL)allowsVideoFrameAnalysis
{
  v3 = allowsVideoFrameAnalysis;
  v5 = +[AVKitGlobalSettings shared];
  v6 = [v5 visualAnalysisSupported];

  if (v6)
  {
    if (self->_allowsVideoFrameAnalysis != v3)
    {
      self->_allowsVideoFrameAnalysis = v3;
      [(AVPlayerViewController *)self _setUpVideoFrameVisualAnalyzerIfNeeded];
      [(AVPlayerViewController *)self _setUpVisualAnalysisViewIfNeeded];
      [(AVPlayerViewController *)self _updateWantsAnalysisButtonVisibleStateIfNeeded];
      [(AVPlayerViewController *)&self->super.super.super.isa _updateAnalysisViewImageAnalysis];
      [(AVPlayerViewController *)self _updateAnalysisButtonBottomInsetIfNeeded];
      [(AVPlayerViewController *)self _updateShowsAnalysisControl];
      [(AVPlayerViewController *)self _updateVisualAnalyzerEnabledStateIfNeeded];

      [(AVPlayerViewController *)self _updateVisualAnalysisViewHiddenState];
    }
  }

  else
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "Video frame analysis is not supported on this device or platform.", v8, 2u);
    }

    self->_allowsVideoFrameAnalysis = 0;
  }
}

- (UIView)contentOverlayView
{
  [(AVPlayerViewController *)self loadViewIfNeeded];
  if (!self->_contentOverlayView)
  {
    v3 = objc_alloc_init(AVTouchIgnoringView);
    [(AVTouchIgnoringView *)v3 setAutoresizingMask:0];
    contentOverlayView = self->_contentOverlayView;
    self->_contentOverlayView = &v3->super;
  }

  [(AVPlayerViewController *)self _updateContentOverlayViewSuperview];
  v5 = self->_contentOverlayView;

  return v5;
}

- (double)videoDisplayScale
{
  v3 = [(__AVPlayerLayerView *)self->_playerLayerView traitCollection];
  [v3 displayScale];
  v5 = v4;

  [(AVPlayerViewController *)self secondScreenConnectionDisplaySize];
  if (*MEMORY[0x1E695F060] != v7 || *(MEMORY[0x1E695F060] + 8) != v6)
  {
    [(AVSecondScreenConnection *)self->_secondScreenConnection videoDisplayScale];
    v5 = v9;
  }

  result = 1.0;
  if (v5 >= 1.0)
  {
    return v5;
  }

  return result;
}

- (id)_fullScreenController
{
  fullscreenController = self->_fullscreenController;
  if (!fullscreenController)
  {
    v4 = [[AVMobileFullscreenController alloc] initWithPlayerViewController:self];
    v5 = self->_fullscreenController;
    self->_fullscreenController = v4;

    fullscreenController = self->_fullscreenController;
  }

  return fullscreenController;
}

- (AVMobileControlsViewController)controlsViewController
{
  controlsViewController = self->_controlsViewController;
  if (!controlsViewController)
  {
    v4 = [(AVPlayerViewController *)self _createPreferredControlsViewController];
    v5 = self->_controlsViewController;
    self->_controlsViewController = v4;

    [(AVPlayerViewController *)self _updateControlsViewControllerInitialState];
    controlsViewController = self->_controlsViewController;
  }

  return controlsViewController;
}

- (AVMobileChromeControlsViewController)_createPreferredControlsViewController
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = 0;
    goto LABEL_13;
  }

  v2 = *(a1 + 1256);
  if (v2)
  {
    if (v2 == 1)
    {
      [(AVPlayerViewController *)a1 _setUpEnhanceDialogueControllerIfNeeded];
      v3 = AVMobileChromelessControlsViewController;
    }

    else
    {
      if (v2 != 2)
      {
        v4 = 0;
        goto LABEL_10;
      }

      [(AVPlayerViewController *)a1 _setUpEnhanceDialogueControllerIfNeeded];
      v3 = AVMobileGlassControlsViewController;
    }

    v4 = objc_alloc_init(v3);
    v5 = [a1 _fullScreenController];
    [(AVMobileControlsViewController *)v4 setFullscreenController:v5];

    [(AVMobileChromeControlsViewController *)v4 setEnhanceDialogueController:*(a1 + 1208)];
    [(AVMobileControlsViewController *)v4 setRequiresLinearPlayback:*(a1 + 995)];
    [(AVMobileControlsViewController *)v4 addAction:sel__volumeButtonWasPressedEvent_ withTarget:a1 forEvent:@"AVControlsVolumeButtonPressedEvent"];
    [(AVMobileControlsViewController *)v4 addAction:sel__playPauseButtonWasPressedEvent_ withTarget:a1 forEvent:@"AVControlsPlayPauseButtonPressedEvent"];
    [(AVMobileControlsViewController *)v4 addAction:sel__copySubjectMenuItemPressedEvent_ withTarget:a1 forEvent:@"AVControlsCopySubjectMenuItemPressedEvent"];
    [(AVMobileControlsViewController *)v4 addAction:sel__visualLookupMenuItemPressedEvent_ withTarget:a1 forEvent:@"AVControlsVisualLookupMenuItemPressedEvent"];
    [(AVMobileControlsViewController *)v4 addAction:sel_doneButtonTapped_ withTarget:a1 forEvent:@"AVControlsDoneButtonPressedEvent"];
  }

  else
  {
    v4 = [[AVMobileChromeControlsViewController alloc] initWithPlayerViewController:a1];
    [a1 overrideTransformForProminentPlayButton];
    [(AVMobileChromeControlsViewController *)v4 setTransformForProminentPlayButton:&v13];
    v6 = [a1 overrideLayoutMarginsWhenEmbeddedInline];
    [(AVMobileChromeControlsViewController *)v4 setEmbeddedInlineLayoutMargins:v6];

    v7 = [(AVMobileChromeControlsViewController *)v4 playbackControlsController];
    [v7 setPlaybackSpeedCollection:*(a1 + 1792)];

    v8 = [(AVMobileChromeControlsViewController *)v4 playbackControlsController];
    [v8 setPreferredUnobscuredArea:{objc_msgSend(a1, "preferredUnobscuredArea")}];

    v9 = [(AVMobileChromeControlsViewController *)v4 playbackControlsController];
    [v9 setShowsMinimalPlaybackControlsWhenEmbeddedInline:*(a1 + 1448)];
  }

LABEL_10:
  [(AVMobileChromeControlsViewController *)v4 setControlItems:*(a1 + 1840)];
  [(AVMobileControlsViewController *)v4 setDelegate:a1];
  [(AVMobileControlsViewController *)v4 setPipController:*(a1 + 1600)];
  [(AVMobileControlsViewController *)v4 setPlayerController:*(a1 + 1568)];
  [(AVControlsViewController *)v4 setPlaybackSpeedCollection:*(a1 + 1792)];
  [(AVMobileChromeControlsViewController *)v4 setRoutingConfiguration:*(a1 + 1096)];
  -[AVMobileChromeControlsViewController setShowsFullScreenControl:](v4, "setShowsFullScreenControl:", [a1 allowsEnteringFullScreen]);
  [(AVMobileChromeControlsViewController *)v4 setTransportBarCustomMenuItems:*(a1 + 1648)];
  v10 = [a1 _volumeController];
  [(AVMobileChromeControlsViewController *)v4 setVolumeController:v10];

  v11 = _AVLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[AVPlayerViewController _createPreferredControlsViewController]";
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_18B49C000, v11, OS_LOG_TYPE_DEFAULT, "%s Created AVMobileControlsViewController: %@", &v13, 0x16u);
  }

LABEL_13:

  return v4;
}

- (void)_updateControlsViewControllerInitialState
{
  if (a1)
  {
    [a1 _addObserversOnControlsViewController];
    [(AVPlayerViewController *)a1 _updateShowsAnalysisControl];
    [(AVPlayerViewController *)a1 _updateIncludedControls];
    [(AVPlayerViewController *)a1 _updateExcludedControls];
    [(AVPlayerViewController *)a1 _updatePrefersFullScreenStyleForEmbeddedMode];
    [(AVPlayerViewController *)a1 _updateTips];
    [(AVPlayerViewController *)a1 _updateMenuGroupAttributes];
    [a1 _updateCustomControlsViewStateWithVisibleControlsSet:0];
    [(AVPlayerViewController *)a1 _updateControlsViewControllerPerformanceState];

    [(AVPlayerViewController *)a1 _updateControlsViewControllerVideoScaledStateIfNeeded];
  }
}

- (uint64_t)_updateIncludedControls
{
  if (result)
  {
    v1 = 72;
    if (*(result + 1480) & 1 | (*(result + 1256) == 0))
    {
      v1 = 0;
    }

    v2 = 121;
    if (*(result + 1480) & 1 | (*(result + 1256) == 0))
    {
      v2 = 57;
    }

    if (*(result + 1072))
    {
      v1 = v2;
    }

    if (*(result + 1073))
    {
      v1 |= 4uLL;
    }

    if (*(result + 1074))
    {
      v3 = v1 | 2;
    }

    else
    {
      v3 = v1;
    }

    return [*(result + 1248) setIncludedControls:v3];
  }

  return result;
}

- (uint64_t)_updateExcludedControls
{
  if (result)
  {
    v1 = result;
    v2 = [*(result + 1248) controlsViewControllerIfChromeless];
    [v2 setExcludedControls:{objc_msgSend(*(v1 + 1544), "excludedControls")}];

    v3 = [*(v1 + 1248) controlsViewControllerIfGlass];
    [v3 setExcludedControls:{objc_msgSend(*(v1 + 1544), "excludedControls")}];

    return [(AVPlayerViewController *)v1 _updateTapThroughGestureRecognizerEnablementState];
  }

  return result;
}

- (void)_updatePrefersFullScreenStyleForEmbeddedMode
{
  if (a1)
  {
    v2 = [*(a1 + 1248) controlsViewControllerIfChromeless];
    [v2 setPrefersFullScreenStyleForEmbeddedMode:{objc_msgSend(*(a1 + 1544), "prefersFullScreenStyleForEmbeddedMode")}];

    v3 = [*(a1 + 1248) controlsViewControllerIfGlass];
    [v3 setPrefersFullScreenStyleForEmbeddedMode:{objc_msgSend(*(a1 + 1544), "prefersFullScreenStyleForEmbeddedMode")}];
  }
}

- (void)_updateTips
{
  if (a1)
  {
    v2 = +[AVKitGlobalSettings shared];
    v3 = [v2 playerTipsEnabled];

    if (v3)
    {
      v4 = [*(a1 + 1248) controlsViewControllerIfChromeless];
      v5 = [*(a1 + 1544) tips];
      [v4 setTips:v5];

      v7 = [*(a1 + 1248) controlsViewControllerIfGlass];
      v6 = [*(a1 + 1544) tips];
      [v7 setTips:v6];
    }
  }
}

- (void)_updateMenuGroupAttributes
{
  if (a1)
  {
    v3 = [*(a1 + 1248) controlsViewControllerIfChromeless];
    v2 = [*(a1 + 1544) mediaPresentationSettingsAudioGroupTitle];
    [v3 setPrefersMediaPresentationSettingsMenuGroupTitle:v2];
  }
}

- (void)_updateControlsViewControllerVideoScaledStateIfNeeded
{
  if (a1)
  {
    v2 = [a1 controlsViewController];
    v7 = [v2 controlsViewControllerIfGlass];

    if (v7)
    {
      v3 = [a1 videoGravity];
      v4 = v3;
      v6 = v3 == *MEMORY[0x1E69874F0] || v3 == *MEMORY[0x1E69874E0];
      [v7 setVideoScaled:v6];
    }
  }
}

- (CGSize)videoDisplaySize
{
  [(AVPlayerViewController *)self secondScreenConnectionDisplaySize];
  v4 = v3;
  v6 = v5;
  v7 = *(MEMORY[0x1E695F060] + 8);
  v8 = *MEMORY[0x1E695F060] == v3 && v7 == v6;
  if (v8 && (-[AVPlayerViewController playerController](self, "playerController", *MEMORY[0x1E695F060], v7), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 externalPlaybackType], v9, v10 != 1))
  {
    playerLayerView = self->_playerLayerView;

    [(__AVPlayerLayerView *)playerLayerView videoDisplaySize];
  }

  else
  {
    v11 = v4;
    v12 = v6;
  }

  result.height = v12;
  result.width = v11;
  return result;
}

- (void)updateVideoBounds
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  if ([(AVPlayerViewController *)self isViewLoaded])
  {
    [(__AVPlayerLayerView *)self->_playerLayerView videoBounds];
    if (v8 != *MEMORY[0x1E695F060] || v7 != *(MEMORY[0x1E695F060] + 8))
    {
      v10 = [(AVPlayerViewController *)self _contentTabsVisible];
      v11 = [(AVPlayerViewController *)self contentView];
      v12 = v11;
      if (!v10)
      {
        v13 = [v11 playbackContentContainerView];

        v12 = v13;
      }

      playerLayerView = self->_playerLayerView;
      [(__AVPlayerLayerView *)playerLayerView videoBounds];
      [(__AVPlayerLayerView *)playerLayerView convertRect:v12 toView:?];
      UIPointRoundToViewScale();
      v3 = v15;
      v4 = v16;
      UIRoundToViewScale();
      v5 = v17;
      UIRoundToViewScale();
      v6 = v18;
    }
  }

  [(AVPlayerViewController *)self setVideoBounds:v3, v4, v5, v6];

  [(AVPlayerViewController *)self _updatePlayerLayerLegibleContentInsetsIfNeeded];
}

- (UIAction)toggleLookupAction
{
  toggleLookupAction = self->_toggleLookupAction;
  if (!toggleLookupAction)
  {
    [(AVPlayerViewController *)self _setupToggleVisualLookupActionIfNeeded];
    toggleLookupAction = self->_toggleLookupAction;
  }

  return toggleLookupAction;
}

- (void)setVideoGravity:(id)a3 forLayoutClass:(unint64_t)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = _AVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315650;
    v17 = "[AVPlayerViewController setVideoGravity:forLayoutClass:]";
    v18 = 2112;
    v19 = v6;
    v20 = 2048;
    v21 = a4;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s %@ layoutClass: %ld", &v16, 0x20u);
  }

  v8 = [(AVPlayerViewController *)self _targetVideoGravitiesForLayoutClass];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [v8 setObject:v6 forKeyedSubscript:v9];

  v10 = [(AVPlayerViewController *)self contentView];
  [v10 setTargetVideoGravity:v6 forLayoutClass:a4];

  v11 = [(AVPlayerViewController *)self contentView];
  v12 = [v11 window];
  if (v12)
  {
    v13 = v12;
    playerLayerView = self->_playerLayerView;
    v15 = [(AVPlayerViewController *)self contentView];
    LOBYTE(playerLayerView) = [(__AVPlayerLayerView *)playerLayerView isDescendantOfView:v15];

    if ((playerLayerView & 1) == 0)
    {
      [(__AVPlayerLayerView *)self->_playerLayerView setVideoGravity:AVVideoGravityFromString(v6)];
    }
  }

  else
  {
  }

  [(AVPlayerViewController *)self _updateControlsViewControllerVideoScaledStateIfNeeded];
}

- (NSMutableDictionary)_targetVideoGravitiesForLayoutClass
{
  v13[3] = *MEMORY[0x1E69E9840];
  targetVideoGravitiesForLayoutClass = self->__targetVideoGravitiesForLayoutClass;
  if (!targetVideoGravitiesForLayoutClass)
  {
    v4 = [(AVPlayerViewController *)self videoGravity];
    v5 = v4;
    v6 = *MEMORY[0x1E69874E8];
    if (v4)
    {
      v6 = v4;
    }

    v7 = v6;

    v12[0] = &unk_1EFF12A28;
    v12[1] = &unk_1EFF12A40;
    v13[0] = v7;
    v13[1] = v7;
    v12[2] = &unk_1EFF12A58;
    v13[2] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
    v9 = [v8 mutableCopy];
    v10 = self->__targetVideoGravitiesForLayoutClass;
    self->__targetVideoGravitiesForLayoutClass = v9;

    targetVideoGravitiesForLayoutClass = self->__targetVideoGravitiesForLayoutClass;
  }

  return targetVideoGravitiesForLayoutClass;
}

- (void)setVideoFrameAnalysisTypes:(AVVideoFrameAnalysisType)videoFrameAnalysisTypes
{
  v5 = +[AVKitGlobalSettings shared];
  v6 = [v5 extendedVisualAnalysisEnabled];

  if (v6)
  {
    if (self->_videoFrameAnalysisTypes != videoFrameAnalysisTypes)
    {
      self->_videoFrameAnalysisTypes = videoFrameAnalysisTypes;
      [(AVPlayerViewController *)self _updateVisualAnalysisViewActiveInteractionTypes];
      if (self->_videoFrameAnalysisTypes == 1)
      {
        v7 = 30;
      }

      else
      {
        v7 = self->_videoFrameAnalysisTypes;
      }

      videoFrameVisualAnalyzer = self->_videoFrameVisualAnalyzer;

      [(AVVideoFrameVisualAnalyzer *)videoFrameVisualAnalyzer setVideoFrameAnalysisTypes:v7];
    }
  }

  else
  {
    self->_videoFrameAnalysisTypes = 2;
  }
}

- (void)setVideoGravity:(AVLayerVideoGravity)videoGravity
{
  v5 = videoGravity;
  if (![(AVPlayerViewController *)self _showsWolfControls])
  {
    self->_hasClientSetVideoGravity = 1;
    v4 = [(AVPlayerViewController *)self contentView];
    [v4 setCanAutomaticallyZoomLetterboxVideos:0];

    self->_videoGravity = AVVideoGravityFromString(v5);
    [(AVPlayerViewController *)self setVideoGravity:v5 forLayoutClass:0];
    [(AVPlayerViewController *)self setVideoGravity:v5 forLayoutClass:1];
    [(AVPlayerViewController *)self setVideoGravity:v5 forLayoutClass:2];
  }
}

- (AVLayerVideoGravity)videoGravity
{
  if (self->_playerLayerView)
  {
    videoGravity = [(__AVPlayerLayerView *)self->_playerLayerView videoGravity];
  }

  else
  {
    videoGravity = self->_videoGravity;
  }

  v3 = NSStringFromVideoGravity(videoGravity);

  return v3;
}

- (void)setShowsAudioLanguageMenu:(BOOL)a3
{
  if (self->_showsAudioLanguageMenu != a3)
  {
    v4 = a3;
    self->_showsAudioLanguageMenu = a3;
    v6 = [(AVMobileControlsViewController *)self->_controlsViewController controlsViewControllerIfChromeless];
    [v6 setShowsAudioTrackSelectionMenu:v4];

    v7 = [(AVMobileControlsViewController *)self->_controlsViewController controlsViewControllerIfGlass];
    [v7 setShowsAudioTrackSelectionMenu:v4];

    [(AVPlayerViewController *)self _updateEnhanceDialogueEnabled];
  }
}

- (void)setCanIncludePlaybackControlsWhenInline:(BOOL)a3
{
  if (self->_canIncludePlaybackControlsWhenInline != a3)
  {
    v12 = v5;
    v13 = v4;
    v14 = v3;
    v9 = a3;
    self->_canIncludePlaybackControlsWhenInline = a3;
    if (self->_usesGlassCatalystControls)
    {
      [(AVPlayerViewController *)self catalystPlaybackControlsController];
    }

    else
    {
      [(AVPlayerViewController *)self chromePlaybackControlsController];
    }
    v11 = ;
    [v11 setCanIncludePlaybackControlsWhenInline:{v9, v6, v12, v13, v14, v7}];

    [(AVPlayerViewController *)self _updateControlsVisibilityPolicyAnimated:?];
  }
}

- (void)setShowsPlaybackControls:(BOOL)showsPlaybackControls
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_showsPlaybackControls != showsPlaybackControls)
  {
    v3 = showsPlaybackControls;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      *v9 = 136315650;
      *&v9[4] = "[AVPlayerViewController setShowsPlaybackControls:]";
      *&v9[14] = "showsPlaybackControls";
      *&v9[12] = 2080;
      if (v3)
      {
        v6 = "YES";
      }

      *&v9[22] = 2080;
      v10 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", v9, 0x20u);
    }

    self->_showsPlaybackControls = v3;
    if (self->_usesGlassCatalystControls)
    {
      [(AVPlayerViewController *)self catalystPlaybackControlsController];
    }

    else
    {
      [(AVPlayerViewController *)self chromePlaybackControlsController];
    }
    v7 = ;
    [v7 setShowsPlaybackControls:{self->_showsPlaybackControls, *v9, *&v9[16]}];

    v8 = [(AVPlayerViewController *)self contentView];
    [v8 setShowsPlaybackControls:self->_showsPlaybackControls];

    [(AVPlayerViewController *)self _updateContentOverlayViewSuperview];
    [(AVPlayerViewController *)self _updateAnalysisViewSuperview];
    [(AVPlayerViewController *)self _updateWantsAnalysisButtonVisibleStateIfNeeded];
    [(AVPlayerViewController *)&self->super.super.super.isa _setupInfoTabViewController];
    [(AVPlayerViewController *)self _updateControlsVisibilityPolicyAnimated:?];
    [(AVPlayerViewController *)self _updateSecondScreenConnectionReadyToConnect];
    [(AVPlayerViewController *)self _updateEnhanceDialogueEnabled];
  }
}

- (void)setPrefersDeviceUserInterfaceStyle:(BOOL)a3
{
  if (self->_prefersDeviceUserInterfaceStyle != a3)
  {
    self->_prefersDeviceUserInterfaceStyle = a3;
    v5 = [(AVPlayerViewController *)self contentView];
    [v5 setOverrideUserInterfaceStyle:{-[AVPlayerViewController overrideUserInterfaceStyle](self, "overrideUserInterfaceStyle")}];
  }
}

- (AVPlayerViewControllerConfiguration)configuration
{
  v2 = [(AVPlayerViewControllerConfiguration *)self->_configuration copy];

  return v2;
}

- (void)setConfiguration:(id)a3
{
  if (self->_configuration != a3)
  {
    v4 = [a3 copy];
    configuration = self->_configuration;
    self->_configuration = v4;

    [(AVPlayerViewController *)self _updateExcludedControls];
    [(AVPlayerViewController *)self _updatePrefersFullScreenStyleForEmbeddedMode];
    [(AVPlayerViewController *)self _updateTips];
    [(AVPlayerViewController *)self _updatePlaybackControlsState];
    [(AVPlayerViewController *)self _updatePreferredDynamicRangeForAutomaticMode];

    [(AVPlayerViewController *)self _updateMenuGroupAttributes];
  }
}

- (void)setRequiresImmediateAssetInspection:(BOOL)a3
{
  if (self->_requiresImmediateAssetInspection != a3)
  {
    self->_requiresImmediateAssetInspection = a3;
    [(AVPlayerViewController *)self _updatePlayerControllerInspectionState];
  }
}

- (void)setPreferredPlaybackControlsSupplementalSubtitleDisplayOption:(int64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_preferredPlaybackControlsSupplementalSubtitleDisplayOption != a3)
  {
    self->_preferredPlaybackControlsSupplementalSubtitleDisplayOption = a3;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = "[AVPlayerViewController setPreferredPlaybackControlsSupplementalSubtitleDisplayOption:]";
      v8 = 2048;
      v9 = a3;
      v10 = 2112;
      v11 = self;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %ld for AVPVC: %@", &v6, 0x20u);
    }

    [(AVPlayerViewController *)self _updatePlayerControllerLegibleOptionsForSmartSubtitleDisplayType:?];
  }
}

- (void)setPlayer:(AVPlayer *)player
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = player;
  v6 = [(AVPlayerViewController *)self player];

  if (v6 != v5)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v25 = "[AVPlayerViewController setPlayer:]";
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
    }

    objc_storeStrong(&self->_player, player);
    if (v5)
    {
      v8 = [(AVPlayer *)v5 dispatchQueue];
      v9 = MEMORY[0x1E69E96A0];

      if (v8 != v9)
      {
        v10 = MEMORY[0x1E695DF30];
        v11 = *MEMORY[0x1E695D920];
        v12 = _AVMethodProem(self);
        [v10 raise:v11 format:{@"%@ only supports AVPlayer instances that have been initialized with the main queue as the dispatch queue for serializing key-value observations.", v12}];
      }
    }

    v13 = [(AVPlayerViewController *)self playerController];
    v14 = [v13 player];

    if (v14 != v5)
    {
      kdebug_trace();
      v15 = [[AVPlayerController alloc] initWithPlayer:v5];
      [(AVPlayerController *)v15 setHandlesAudioSessionInterruptions:1];
      if ([(AVPlayerViewController *)self _showsWolfControls])
      {
        [(AVPlayerController *)v15 setShouldLoadVisualMediaSelectionOptions:1];
      }

      else
      {
        [(AVPlayerController *)v15 setInspectionSuspended:[(AVPlayerViewController *)self requiresImmediateAssetInspection]^ 1];
      }

      v16 = [(AVPlayerViewController *)self playerController];
      if (objc_opt_respondsToSelector())
      {
        v17 = [(AVPlayerViewController *)self playerController];
        if (objc_opt_respondsToSelector())
        {
          v18 = [(AVPlayerViewController *)self playerController];
          v19 = objc_opt_respondsToSelector();

          if ((v19 & 1) == 0)
          {
LABEL_18:
            kdebug_trace();
            [(AVPlayerViewController *)self setPlayerController:v15];
            v23 = [MEMORY[0x1E696AD88] defaultCenter];
            [v23 postNotificationName:@"AVPlayerViewControllerDidChangePlayerControllerNotification" object:self];

            goto LABEL_19;
          }

          v20 = [(AVPictureInPictureController *)self->_pictureInPictureController pictureInPictureViewController];
          v21 = [v20 pictureInPicturePlayerLayerView];
          v16 = [v21 playerLayer];

          v22 = [(AVPlayerViewController *)self playerController];
          [v22 endReducingResourcesForPictureInPicturePlayerLayer:v16];

          if ([(AVPictureInPictureController *)self->_pictureInPictureController wantsResourceReduction])
          {
            [(AVPlayerController *)v15 beginReducingResourcesForPictureInPicturePlayerLayer:v16];
          }
        }

        else
        {
        }
      }

      goto LABEL_18;
    }
  }

LABEL_19:
}

- (int64_t)overrideUserInterfaceStyle
{
  if (![(AVPlayerViewController *)self prefersDeviceUserInterfaceStyle])
  {
    return 2;
  }

  v4.receiver = self;
  v4.super_class = AVPlayerViewController;
  return [(AVPlayerViewController *)&v4 overrideUserInterfaceStyle];
}

- (void)encodeWithCoder:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v9 = "[AVPlayerViewController encodeWithCoder:]";
    v10 = 1024;
    v11 = 827;
    v12 = 2048;
    v13 = self;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  v7.receiver = self;
  v7.super_class = AVPlayerViewController;
  [(AVPlayerViewController *)&v7 encodeWithCoder:v4];
  [v4 encodeBool:self->_showsPlaybackControls forKey:@"AVShowsPlaybackControls"];
  if ([(AVPlayerViewController *)self isViewLoaded])
  {
    videoGravity = [(__AVPlayerLayerView *)self->_playerLayerView videoGravity];
  }

  else
  {
    videoGravity = self->_videoGravity;
  }

  [v4 encodeInteger:videoGravity forKey:@"AVVideoLayerGravity"];
  [v4 encodeBool:self->_allowsPictureInPicturePlayback forKey:@"AVAllowsPictureInPicturePlayback"];
  [v4 encodeBool:self->_canStartPictureInPictureAutomaticallyWhenEnteringBackground forKey:@"AVCanStartPictureInPictureAutomaticallyWhenEnteringBackground"];
  [v4 encodeBool:self->_allowsVideoFrameAnalysis forKey:@"AVAllowsVideoFrameVisualAnalysis"];
  [v4 encodeBool:self->_showsAnalysisButtonIfAvailable forKey:@"AVShowsAnalysisButtonIfAvailable"];
  [v4 encodeBool:self->_allowsEnteringFullScreen forKey:@"AVAllowsEnteringFullScreen"];
  [v4 encodeInteger:self->_videoFrameAnalysisTypes forKey:@"AVVideoFrameAnalysisTypes"];
  [v4 encodeBool:self->_showsVisualLookup forKey:@"AVShowsVisualLookup"];
}

- (AVPlayerViewController)initWithCoder:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v49 = "[AVPlayerViewController initWithCoder:]";
    v50 = 1024;
    v51 = 682;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d", buf, 0x12u);
  }

  v47.receiver = self;
  v47.super_class = AVPlayerViewController;
  v6 = [(AVPlayerViewController *)&v47 initWithCoder:v4];
  if (v6)
  {
    if ([v4 containsValueForKey:@"AVPlayerAssetFilename"])
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AVPlayerAssetFilename"];
      v8 = [MEMORY[0x1E696AAE8] mainBundle];
      v9 = [v8 URLForMovieResource:v7];

      if (!v9)
      {
        v10 = 0;
LABEL_12:

        goto LABEL_13;
      }

      v10 = [MEMORY[0x1E6988098] playerWithURL:v9];

      if (v10)
      {
        v11 = [[AVPlayerController alloc] initWithPlayer:v10];
        v12 = *(v6 + 196);
        *(v6 + 196) = v11;

        if (objc_opt_respondsToSelector())
        {
          [*(v6 + 196) setInternalDelegate:v6];
        }

        v10 = v10;
        v7 = *(v6 + 192);
        *(v6 + 192) = v10;
        goto LABEL_12;
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_13:
    v13 = +[AVPlaybackSpeed systemDefaultSpeeds];
    v14 = [AVPlaybackSpeedCollection collectionWithSpeeds:v13];
    v15 = *(v6 + 224);
    *(v6 + 224) = v14;

    [*(v6 + 224) setDelegate:v6];
    v16 = [v4 containsValueForKey:@"AVPlayerShouldAutoplay"];
    if (v16)
    {
      LOBYTE(v16) = [v4 decodeBoolForKey:@"AVPlayerShouldAutoplay"];
    }

    v6[992] = v16;
    if ([v4 containsValueForKey:@"AVShowsPlaybackControls"])
    {
      v17 = [v4 decodeBoolForKey:@"AVShowsPlaybackControls"];
    }

    else
    {
      v17 = 1;
    }

    v6[993] = v17;
    if ([v4 containsValueForKey:@"AVVideoLayerGravity"])
    {
      v18 = [v4 decodeIntegerForKey:@"AVVideoLayerGravity"];
    }

    else
    {
      v18 = 1;
    }

    *(v6 + 125) = v18;
    if ([v4 containsValueForKey:@"AVAllowsPictureInPicturePlayback"])
    {
      v19 = [v4 decodeBoolForKey:@"AVAllowsPictureInPicturePlayback"];
    }

    else
    {
      v19 = dyld_program_sdk_at_least();
    }

    v6[1008] = v19;
    v20 = [v4 containsValueForKey:@"AVWantsDetachedFullscreenPresentation"];
    if (v20)
    {
      LOBYTE(v20) = [v4 decodeBoolForKey:@"AVWantsDetachedFullscreenPresentation"];
    }

    v6[1527] = v20;
    v21 = [v4 containsValueForKey:@"AVCanDisplayContentInDetachedWindow"];
    if (v21)
    {
      LOBYTE(v21) = [v4 decodeBoolForKey:@"AVCanDisplayContentInDetachedWindow"];
    }

    v6[1064] = v21;
    if ([v4 containsValueForKey:@"AVCanStartPictureInPictureAutomaticallyWhenEnteringBackground"])
    {
      v22 = [v4 decodeBoolForKey:@"AVCanStartPictureInPictureAutomaticallyWhenEnteringBackground"];
    }

    else
    {
      v22 = 1;
    }

    v6[1067] = v22;
    if ([v4 containsValueForKey:@"AVAllowsVideoFrameVisualAnalysis"])
    {
      v23 = [v4 decodeBoolForKey:@"AVAllowsVideoFrameVisualAnalysis"];
    }

    else
    {
      v24 = +[AVKitGlobalSettings shared];
      v23 = [v24 visualAnalysisEnabled];
    }

    v6[1503] = v23;
    if ([v4 containsValueForKey:@"AVShowsAnalysisButtonIfAvailable"])
    {
      v25 = [v4 decodeBoolForKey:@"AVShowsAnalysisButtonIfAvailable"];
    }

    else
    {
      v25 = 1;
    }

    v6[1525] = v25;
    if ([v4 containsValueForKey:@"AVAllowsEnteringFullScreen"])
    {
      v26 = [v4 decodeBoolForKey:@"AVAllowsEnteringFullScreen"];
    }

    else
    {
      v26 = 1;
    }

    v6[1524] = v26;
    v27 = [v4 containsValueForKey:@"AVShowsVisualLookup"];
    if (v27)
    {
      LOBYTE(v27) = [v4 decodeBoolForKey:@"AVShowsVisualLookup"];
    }

    v6[1520] = v27;
    *(v6 + 194) = 0;
    v28 = +[AVKitGlobalSettings shared];
    v29 = [v28 extendedVisualAnalysisEnabled];

    v30 = [v4 containsValueForKey:@"AVVideoFrameAnalysisTypes"];
    if (v29)
    {
      v31 = 1;
    }

    else
    {
      v31 = 2;
    }

    *(v6 + 194) = v31;
    if (v30)
    {
      *(v6 + 194) = [v4 decodeIntegerForKey:@"AVVideoFrameAnalysisTypes"];
    }

    v6[1499] = 1;
    v6[1526] = 1;
    v6[1065] = 1;
    *(v6 + 157) = [objc_opt_class() _determineControlsGeneration];
    v6[1337] = 1;
    v6[1498] = 1;
    v6[1010] = 1;
    v6[1497] = 1;
    v6[1024] = 1;
    v32 = MEMORY[0x1E695EFD0];
    v33 = *(MEMORY[0x1E695EFD0] + 16);
    *(v6 + 1288) = *MEMORY[0x1E695EFD0];
    *(v6 + 1304) = v33;
    *(v6 + 1320) = *(v32 + 32);
    v6[1336] = 1;
    *(v6 + 338) = 1065353216;
    v34 = +[AVRoutingConfiguration defaultConfiguration];
    v35 = *(v6 + 137);
    *(v6 + 137) = v34;

    v36 = +[AVPlayerViewControllerConfiguration defaultConfiguration];
    v37 = *(v6 + 193);
    *(v6 + 193) = v36;

    v38 = [v6 _defaultInfoViewActions];
    v39 = *(v6 + 197);
    *(v6 + 197) = v38;

    *(v6 + 207) = 0;
    v6[1500] = 1;
    v6[1072] = 1;
    v6[1073] = 1;
    v6[1074] = 1;
    *(v6 + 179) = 0;
    v6[1425] = 0;
    v40 = [[AVObservationController alloc] initWithOwner:v6];
    v41 = *(v6 + 199);
    *(v6 + 199) = v40;

    [*(v6 + 199) startObservingNotificationForName:*MEMORY[0x1E69DE2E0] object:v6 notificationCenter:0 observationHandler:&__block_literal_global_118];
    [*(v6 + 199) startObservingNotificationForName:*MEMORY[0x1E69DE2D0] object:v6 notificationCenter:0 observationHandler:&__block_literal_global_120];
    v42 = [v6 _avkitPreferredTransitioningDelegate];
    [v6 setTransitioningDelegate:v42];

    v43 = [MEMORY[0x1E696AAE8] mainBundle];
    v44 = [v43 bundleIdentifier];
    v45 = [v44 isEqualToString:@"com.apple.podcasts"];

    if (v45)
    {
      v6[1527] = 0;
    }

    v6[1521] = 0;
  }

  return v6;
}

void __40__AVPlayerViewController_initWithCoder___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    *(v2 + 1071) = 1;
    [(AVPlayerViewController *)v2 _updateStatusBarGradientViewVisibility];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__AVPlayerViewController_initWithCoder___block_invoke_4;
  block[3] = &unk_1E720A090;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __40__AVPlayerViewController_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [(AVPlayerViewController *)v2 _avkitWillBeginPresentationTransition];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__AVPlayerViewController_initWithCoder___block_invoke_2;
  block[3] = &unk_1E720A090;
  v5 = v2;
  v3 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_avkitWillBeginPresentationTransition
{
  if (a1)
  {
    v2 = [a1 controlsViewController];
    [objc_opt_class() autoHideInterval];
    [v2 flashControlsWithDuration:?];
    a1[1071] = 1;
    [(AVPlayerViewController *)a1 _updateStatusBarGradientViewVisibility];
  }
}

- (void)_avkitDidBeginPresentationTransition
{
  if (a1)
  {
    if (a1[179] == 2 || ([a1 transitioningDelegate], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(a1, "_transitionController"), v3 = objc_claimAutoreleasedReturnValue(), v3, v2, v2 != v3))
    {
      v5 = [a1 _transitionController];
      v4 = [a1 presentingViewController];
      [v5 ensurePresentationControllerWithPresentingViewController:v4 presentedViewController:a1];
    }
  }
}

- (void)dealloc
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[AVPlayerViewController dealloc]";
    *&buf[12] = 1024;
    *&buf[14] = 625;
    *&buf[18] = 2048;
    *&buf[20] = self;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  if ([(AVPlayerViewController *)self _showsWolfControls])
  {
    [(AVNowPlayingInfoController *)self->_nowPlayingInfoController stopNowPlayingUpdatesForPlayerController:self->_playerController];
  }

  else
  {
    v4 = [(AVPlayerViewController *)self fullScreenViewController];
    v5 = [v4 presentingViewController];
    if (v5)
    {
      v6 = [(AVPlayerViewController *)self fullScreenViewController];
      v7 = [v6 isBeingDismissed];

      if ((v7 & 1) == 0)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        *&buf[24] = __Block_byref_object_copy__11392;
        v19 = __Block_byref_object_dispose__11393;
        v20 = [(AVPlayerViewController *)self fullScreenViewController];
        v16[0] = 0;
        v16[1] = v16;
        v16[2] = 0x3032000000;
        v16[3] = __Block_byref_object_copy__11392;
        v16[4] = __Block_byref_object_dispose__11393;
        v17 = [(AVPlayerViewController *)self _transitionController];
        v8 = [(AVPlayerViewController *)self _transitionController];
        v9 = [(AVPlayerViewController *)self fullScreenViewController];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __33__AVPlayerViewController_dealloc__block_invoke;
        v15[3] = &unk_1E7207DC0;
        v15[4] = v16;
        v15[5] = buf;
        [v8 beginFullScreenDismissalOfViewController:v9 animated:0 isInteractive:0 completion:v15];

        NSLog(&cfstr_WarningWasDeal.isa, self);
        _Block_object_dispose(v16, 8);

        _Block_object_dispose(buf, 8);
      }
    }

    else
    {
    }

    [(AVPlayerViewController *)self setPlayerController:0];
  }

  [(AVEnhanceDialogueController *)self->_enhanceDialogueController setEnabled:0];
  [(AVPictureInPictureController *)self->_pictureInPictureController invalidate];
  v10 = [(AVPlayerViewController *)self _observationController];
  [v10 stopAllObservation];

  v11 = [(AVPlayerViewController *)self _pipActivitySessionObservationController];
  [v11 stopAllObservation];

  if (self->_secondScreenConnection)
  {
    v12 = +[AVSecondScreenController sharedInstance];
    [v12 removeConnection:self->_secondScreenConnection];

    secondScreenConnection = self->_secondScreenConnection;
    self->_secondScreenConnection = 0;
  }

  v14.receiver = self;
  v14.super_class = AVPlayerViewController;
  [(AVPlayerViewController *)&v14 dealloc];
}

void __33__AVPlayerViewController_dealloc__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

- (AVPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v36 = "[AVPlayerViewController initWithNibName:bundle:]";
    v37 = 1024;
    v38 = 511;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d", buf, 0x12u);
  }

  v34.receiver = self;
  v34.super_class = AVPlayerViewController;
  v6 = [(AVPlayerViewController *)&v34 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    v6->_playerShouldAutoplay = 0;
    v6->_showsPlaybackControls = 1;
    v6->_videoGravity = 1;
    v6->_allowsPictureInPicturePlayback = dyld_program_sdk_at_least();
    v7->_wantsDetachedFullscreenPresentation = 0;
    v7->_canDisplayContentInDetachedWindow = 0;
    v7->_showsAnalysisButtonIfAvailable = 1;
    v7->_allowsEnteringFullScreen = 1;
    v7->_updatesNowPlayingInfoCenter = 1;
    v7->_canHidePlaybackControls = 1;
    v7->_canPausePlaybackWhenExitingFullScreen = 1;
    v7->_canPausePlaybackWhenClosingPictureInPicture = 1;
    v7->_canShowPictureInPictureButton = 1;
    v7->_canIncludePlaybackControlsWhenInline = 1;
    v7->_controlsGeneration = [objc_opt_class() _determineControlsGeneration];
    v7->_playbackControlsShouldControlSystemVolume = 1;
    v7->_showsAudioLanguageMenu = 1;
    v8 = MEMORY[0x1E695EFD0];
    v9 = *(MEMORY[0x1E695EFD0] + 16);
    *&v7->_overrideTransformForProminentPlayButton.a = *MEMORY[0x1E695EFD0];
    *&v7->_overrideTransformForProminentPlayButton.c = v9;
    *&v7->_overrideTransformForProminentPlayButton.tx = *(v8 + 32);
    overrideLayoutMarginsWhenEmbeddedInline = v7->_overrideLayoutMarginsWhenEmbeddedInline;
    v7->_overrideLayoutMarginsWhenEmbeddedInline = 0;

    v7->_canToggleVideoGravityWhenEmbeddedInline = 1;
    v7->_defaultLinearPlaybackRate = 1.0;
    v7->_canStartPictureInPictureAutomaticallyWhenEnteringBackground = 1;
    v11 = +[AVRoutingConfiguration defaultConfiguration];
    routingConfiguration = v7->_routingConfiguration;
    v7->_routingConfiguration = v11;

    v13 = +[AVPlayerViewControllerConfiguration defaultConfiguration];
    configuration = v7->_configuration;
    v7->_configuration = v13;

    v15 = [(AVPlayerViewController *)v7 _defaultInfoViewActions];
    infoViewActions = v7->_infoViewActions;
    v7->_infoViewActions = v15;

    v17 = objc_opt_new();
    cacheLargestInscribedRect = v7->_cacheLargestInscribedRect;
    v7->_cacheLargestInscribedRect = v17;

    v7->_preferredDisplayDynamicRange = 0;
    v7->_playbackControlsIncludeTransportControls = 1;
    v7->_playbackControlsIncludeDisplayModeControls = 1;
    v7->_playbackControlsIncludeVolumeControls = 1;
    v7->_allowInfoMetadataSubpanel = 1;
    v19 = +[AVKitGlobalSettings shared];
    v7->_allowsVideoFrameAnalysis = [v19 visualAnalysisEnabled];

    v20 = [[AVObservationController alloc] initWithOwner:v7];
    observationController = v7->_observationController;
    v7->_observationController = v20;

    v7->_videoFrameAnalysisTypes = 0;
    v22 = +[AVPlaybackSpeed systemDefaultSpeeds];
    v23 = [AVPlaybackSpeedCollection collectionWithSpeeds:v22];
    playbackSpeedCollection = v7->_playbackSpeedCollection;
    v7->_playbackSpeedCollection = v23;

    [(AVPlaybackSpeedCollection *)v7->_playbackSpeedCollection setDelegate:v7];
    v25 = +[AVPlayerViewControllerConfiguration defaultConfiguration];
    v26 = v7->_configuration;
    v7->_configuration = v25;

    v27 = +[AVKitGlobalSettings shared];
    LODWORD(v22) = [v27 extendedVisualAnalysisEnabled];

    if (v22)
    {
      v28 = 1;
    }

    else
    {
      v28 = 2;
    }

    v7->_videoFrameAnalysisTypes = v28;
    v7->_isUpdatingSecondScreenConnectionReadyToConnect = 0;
    v7->_preferredPlaybackControlsSupplementalSubtitleDisplayOption = 2;
    v29 = [MEMORY[0x1E696AAE8] mainBundle];
    v30 = [v29 bundleIdentifier];
    v31 = [v30 isEqualToString:@"com.apple.podcasts"];

    if (v31)
    {
      v7->_wantsDetachedFullscreenPresentation = 0;
    }

    v7->_playerViewControllerAnimated = 0;
    v7->_playerLayerViewObservationsHasBeenSetup = 0;
    [(AVObservationController *)v7->_observationController startObservingNotificationForName:*MEMORY[0x1E69DE2E0] object:v7 notificationCenter:0 observationHandler:&__block_literal_global_11483];
    v32 = [(AVPlayerViewController *)v7 _avkitPreferredTransitioningDelegate];
    [(AVPlayerViewController *)v7 setTransitioningDelegate:v32];
  }

  return v7;
}

void __49__AVPlayerViewController_initWithNibName_bundle___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [(AVPlayerViewController *)v2 _avkitWillBeginPresentationTransition];
  objc_initWeak(&location, v2);

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__AVPlayerViewController_initWithNibName_bundle___block_invoke_2;
  v3[3] = &unk_1E7209EA8;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __49__AVPlayerViewController_initWithNibName_bundle___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(AVPlayerViewController *)WeakRetained _avkitDidBeginPresentationTransition];
    WeakRetained = v2;
  }
}

+ (NSArray)mediaCharacteristicsForSupportedCustomMediaSelectionSchemes
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = *MEMORY[0x1E69874F8];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)keyPathsForValuesAffectingTransportBarCustomMenuItems
{
  v2 = +[AVKitGlobalSettings shared];
  v3 = [v2 thirdGenerationControlsEnabled];

  if (v3)
  {
    v4 = @"catalystPlaybackControlsController.transportBarCustomMenuItems";
  }

  else
  {
    v4 = @"chromePlaybackControlsController.transportBarCustomMenuItems";
  }

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{v4, @"catalystPlaybackControlsController.transportBarCustomMenuItems", 0}];

  return v5;
}

+ (int64_t)_determineControlsGeneration
{
  objc_opt_self();
  v3 = objc_opt_class();
  ClassMethod = class_getClassMethod(v3, sel_usesSecondGenerationControls);
  v5 = objc_opt_class();
  v6 = class_getClassMethod(v5, sel_usesSecondGenerationControls);
  if (ClassMethod)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = v6;
    Implementation = method_getImplementation(ClassMethod);
    if (Implementation != method_getImplementation(v8) && ![a1 usesSecondGenerationControls])
    {
      return 0;
    }
  }

  return [a1 preferredControlsGeneration];
}

- (void)setPlaybackControlsIncludeVolumeControls:(BOOL)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_playbackControlsIncludeVolumeControls != a3)
  {
    v3 = a3;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVPlayerViewController(DeprecationsAndToBeRemoved) setPlaybackControlsIncludeVolumeControls:]";
      v10 = "playbackControlsIncludeVolumeControls";
      v9 = 2080;
      if (v3)
      {
        v6 = "YES";
      }

      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
    }

    self->_playbackControlsIncludeVolumeControls = v3;
    [(AVPlayerViewController *)self _updateIncludedControls];
  }
}

- (void)setPlaybackControlsIncludeDisplayModeControls:(BOOL)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_playbackControlsIncludeDisplayModeControls != a3)
  {
    v3 = a3;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVPlayerViewController(DeprecationsAndToBeRemoved) setPlaybackControlsIncludeDisplayModeControls:]";
      v10 = "playbackControlsIncludeDisplayModeControls";
      v9 = 2080;
      if (v3)
      {
        v6 = "YES";
      }

      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
    }

    self->_playbackControlsIncludeDisplayModeControls = v3;
    [(AVPlayerViewController *)self _updateIncludedControls];
  }
}

- (void)setPlaybackControlsIncludeTransportControls:(BOOL)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_playbackControlsIncludeTransportControls != a3)
  {
    v3 = a3;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVPlayerViewController(DeprecationsAndToBeRemoved) setPlaybackControlsIncludeTransportControls:]";
      v10 = "playbackControlsIncludeTransportControls";
      v9 = 2080;
      if (v3)
      {
        v6 = "YES";
      }

      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
    }

    self->_playbackControlsIncludeTransportControls = v3;
    [(AVPlayerViewController *)self _updateIncludedControls];
    [(AVPlayerViewController *)self _updateEnhanceDialogueEnabled];
  }
}

- (void)setEntersFullScreenWhenTapped:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    v7 = 136315650;
    v8 = "[AVPlayerViewController(DeprecationsAndToBeRemoved) setEntersFullScreenWhenTapped:]";
    v10 = "entersFullScreenWhenTapped";
    v9 = 2080;
    if (v3)
    {
      v6 = "YES";
    }

    v11 = 2080;
    v12 = v6;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
  }

  [(AVPlayerViewController *)self setShowsMinimalPlaybackControlsWhenEmbeddedInline:v3];
}

- (void)setPreferredUnobscuredArea:(int64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_preferredUnobscuredArea != a3)
  {
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[AVPlayerViewController(DeprecationsAndToBeRemoved) setPreferredUnobscuredArea:]";
      v9 = 2048;
      v10 = a3;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %ld", &v7, 0x16u);
    }

    self->_preferredUnobscuredArea = a3;
    if (self->_usesGlassCatalystControls)
    {
      [(AVPlayerViewController *)self catalystPlaybackControlsController];
    }

    else
    {
      [(AVPlayerViewController *)self chromePlaybackControlsController];
    }
    v6 = ;
    [v6 setPreferredUnobscuredArea:a3];
  }
}

- (double)defaultPlaybackRate
{
  v2 = [(AVPlayerViewController *)self playerController];
  [v2 defaultPlaybackRate];
  v4 = v3;

  return v4;
}

- (void)showTextButtonToggled:(id)a3
{
  if (self)
  {
    v4 = [(AVVisualAnalysisView *)self->_analysisView highlightsInteractableAreas]^ 1;
    analysisView = self->_analysisView;

    [(AVVisualAnalysisView *)analysisView setHighlightsInteractableAreas:v4];
  }
}

- (void)setWebKitOverrideRouteSharingPolicy:(unint64_t)a3 routingContextUID:(id)a4
{
  v5 = [AVRoutingConfiguration configurationWithOutputContextID:a4 sharingPolicy:a3];
  routingConfiguration = self->_routingConfiguration;
  self->_routingConfiguration = v5;

  controlsViewController = self->_controlsViewController;
  v8 = self->_routingConfiguration;

  [(AVMobileControlsViewController *)controlsViewController setRoutingConfiguration:v8];
}

- (void)exitFullScreenAnimated:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v40 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = _AVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v35 = "[AVPlayerViewController(AVPlayerViewController_WebKitOnly) exitFullScreenAnimated:completionHandler:]";
    v36 = 1024;
    v37 = 9993;
    v38 = 2048;
    v39 = self;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  v8 = [(AVPlayerViewController *)self finishPreparingForInteractiveDismissalHandler];
  v9 = [v8 copy];

  [(AVPlayerViewController *)self setFinishPreparingForInteractiveDismissalHandler:0];
  v10 = [(AVPlayerViewController *)self fullScreenViewController];
  v11 = [v10 isBeingDismissed];

  if (v11 && v9)
  {
    [(AVPlayerViewController *)self setInteractiveDismissalCompletionHandler:v6];
    v9[2](v9);
    goto LABEL_18;
  }

  if (![(AVPlayerViewController *)self isViewLoaded])
  {
    goto LABEL_15;
  }

  v12 = [(AVPlayerViewController *)self view];
  v13 = [v12 superview];
  if (!v13 && ![(AVPlayerViewController *)self isPresentingDetachedFullScreen])
  {

    goto LABEL_15;
  }

  v14 = [(AVPlayerViewController *)self isPresentingFullScreenFromInline];

  if (!v14)
  {
LABEL_15:
    if (!v6)
    {
      goto LABEL_18;
    }

    v18 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A578];
    v25 = MEMORY[0x1E696AEC0];
    v20 = _AVMethodProem(self);
    v21 = [v25 stringWithFormat:@"View needs to be loaded before you can call %@!", v20];
    v31 = v21;
    v22 = MEMORY[0x1E695DF20];
    v23 = &v31;
    v24 = &v30;
LABEL_17:
    v26 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:1];
    v27 = [v18 errorWithDomain:@"AVKitErrorDomain" code:0 userInfo:v26];
    v6[2](v6, 0, v27);

    goto LABEL_18;
  }

  v15 = [(AVPlayerViewController *)self view];
  v16 = [v15 layer];
  v17 = [v16 needsLayout];

  if (!v17)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __102__AVPlayerViewController_AVPlayerViewController_WebKitOnly__exitFullScreenAnimated_completionHandler___block_invoke;
    v28[3] = &unk_1E7207F60;
    v29 = v6;
    [(AVPlayerViewController *)self _transitionFromFullScreenAnimated:v4 completionHandler:v28];

    goto LABEL_18;
  }

  if (v6)
  {
    v18 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A578];
    v19 = MEMORY[0x1E696AEC0];
    v20 = _AVMethodProem(self);
    v21 = [v19 stringWithFormat:@"View may not need layout when you call %@!", v20];
    v33 = v21;
    v22 = MEMORY[0x1E695DF20];
    v23 = &v33;
    v24 = &v32;
    goto LABEL_17;
  }

LABEL_18:
}

uint64_t __102__AVPlayerViewController_AVPlayerViewController_WebKitOnly__exitFullScreenAnimated_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)enterFullScreenAnimated:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v35 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = _AVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v30 = "[AVPlayerViewController(AVPlayerViewController_WebKitOnly) enterFullScreenAnimated:completionHandler:]";
    v31 = 1024;
    v32 = 9966;
    v33 = 2048;
    v34 = self;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  if (-[AVPlayerViewController isViewLoaded](self, "isViewLoaded") && (-[AVPlayerViewController view](self, "view"), v8 = objc_claimAutoreleasedReturnValue(), [v8 superview], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    v10 = [(AVPlayerViewController *)self view];
    v11 = [v10 layer];
    v12 = [v11 needsLayout];

    if (!v12)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __103__AVPlayerViewController_AVPlayerViewController_WebKitOnly__enterFullScreenAnimated_completionHandler___block_invoke;
      v23[3] = &unk_1E7207F60;
      v24 = v6;
      [(AVPlayerViewController *)self _transitionToFullScreenAnimated:v4 interactive:0 completionHandler:v23];
      v15 = v24;
      goto LABEL_12;
    }

    if (v6)
    {
      v13 = MEMORY[0x1E696ABC0];
      v27 = *MEMORY[0x1E696A578];
      v14 = MEMORY[0x1E696AEC0];
      v15 = _AVMethodProem(self);
      v16 = [v14 stringWithFormat:@"View may not need layout when you call %@!", v15];
      v28 = v16;
      v17 = MEMORY[0x1E695DF20];
      v18 = &v28;
      v19 = &v27;
LABEL_10:
      v21 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:1];
      v22 = [v13 errorWithDomain:@"AVKitErrorDomain" code:0 userInfo:v21];
      (*(v6 + 2))(v6, 0, v22);

LABEL_12:
    }
  }

  else if (v6)
  {
    v13 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v20 = MEMORY[0x1E696AEC0];
    v15 = _AVMethodProem(self);
    v16 = [v20 stringWithFormat:@"View needs to be loaded before you can call %@!", v15];
    v26 = v16;
    v17 = MEMORY[0x1E695DF20];
    v18 = &v26;
    v19 = &v25;
    goto LABEL_10;
  }
}

uint64_t __103__AVPlayerViewController_AVPlayerViewController_WebKitOnly__enterFullScreenAnimated_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setPlaybackControlsShouldControlSystemVolume:(BOOL)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_playbackControlsShouldControlSystemVolume != a3)
  {
    v3 = a3;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVPlayerViewController(AVPlayerViewController_WebKitOnly) setPlaybackControlsShouldControlSystemVolume:]";
      v10 = "playbackControlsShouldControlSystemVolume";
      v9 = 2080;
      if (v3)
      {
        v6 = "YES";
      }

      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
    }

    self->_playbackControlsShouldControlSystemVolume = v3;
    [(AVPlayerViewController *)self _updateVolumeController];
    [(AVMobileControlsViewController *)self->_controlsViewController setVolumeController:self->_volumeController];
  }
}

- (AVPlayerViewController)initWithPlayerLayerView:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AVPlayerViewController *)self initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(AVPlayerViewController *)v5 setWasInitializedUsingWebKitSPI:1];
    [(AVPlayerViewController *)v6 setCanDisplayContentInDetachedWindow:0];
    [(AVPlayerViewController *)v6 setPlayerLayerView:v4];
    v7 = +[AVRoutingConfiguration defaultConfiguration];
    routingConfiguration = v6->_routingConfiguration;
    v6->_routingConfiguration = v7;

    v9 = +[AVPlayerViewControllerConfiguration defaultConfiguration];
    configuration = v6->_configuration;
    v6->_configuration = v9;

    v6->_canIncludePlaybackControlsWhenInline = 0;
    v6->_canStartPictureInPictureAutomaticallyWhenEnteringBackground = 1;
    v6->_showsAnalysisButtonIfAvailable = 1;
    v6->_allowInfoMetadataSubpanel = 1;
    v6->_playbackControlsIncludeTransportControls = 1;
    v6->_playbackControlsIncludeDisplayModeControls = 1;
    v6->_playbackControlsIncludeVolumeControls = 1;
    v6->_controlsGeneration = [objc_opt_class() _determineControlsGeneration];
    v6->_preferredDisplayDynamicRange = 0;
    v11 = +[AVKitGlobalSettings shared];
    v6->_allowsVideoFrameAnalysis = [v11 visualAnalysisEnabled];

    v6->_videoFrameAnalysisTypes = 0;
    v12 = [(AVPlayerViewController *)v6 _defaultInfoViewActions];
    infoViewActions = v6->_infoViewActions;
    v6->_infoViewActions = v12;

    v14 = +[AVKitGlobalSettings shared];
    v15 = [v14 extendedVisualAnalysisEnabled];

    if (v15)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    v6->_videoFrameAnalysisTypes = v16;
    v17 = _AVLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315394;
      v20 = "[AVPlayerViewController(AVPlayerViewController_WebKitOnly) initWithPlayerLayerView:]";
      v21 = 1024;
      v22 = 9935;
      _os_log_impl(&dword_18B49C000, v17, OS_LOG_TYPE_DEFAULT, "%s %d", &v19, 0x12u);
    }
  }

  return v6;
}

- (void)setOverrideTransformForProminentPlayButton:(CGAffineTransform *)a3
{
  p_overrideTransformForProminentPlayButton = &self->_overrideTransformForProminentPlayButton;
  v6 = *&a3->c;
  *&t1.a = *&a3->a;
  *&t1.c = v6;
  *&t1.tx = *&a3->tx;
  v7 = *&self->_overrideTransformForProminentPlayButton.c;
  *&v12.a = *&self->_overrideTransformForProminentPlayButton.a;
  *&v12.c = v7;
  *&v12.tx = *&self->_overrideTransformForProminentPlayButton.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v12))
  {
    v8 = *&a3->a;
    v9 = *&a3->tx;
    *&p_overrideTransformForProminentPlayButton->c = *&a3->c;
    *&p_overrideTransformForProminentPlayButton->tx = v9;
    *&p_overrideTransformForProminentPlayButton->a = v8;
    v10 = [(AVPlayerViewController *)self _chromeControlsViewController];
    v11 = *&p_overrideTransformForProminentPlayButton->c;
    *&t1.a = *&p_overrideTransformForProminentPlayButton->a;
    *&t1.c = v11;
    *&t1.tx = *&p_overrideTransformForProminentPlayButton->tx;
    [v10 setTransformForProminentPlayButton:&t1];
  }
}

- (CGAffineTransform)overrideTransformForProminentPlayButton
{
  v3 = *&self[27].b;
  *&retstr->a = *&self[26].ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[27].d;
  return self;
}

- (UIView)iAdPrerollView
{
  v2 = [(AVPlayerViewController *)self contentView];
  v3 = [v2 iAdPreRollView];

  return v3;
}

- (AVPresentationContext)presentationContext
{
  v2 = [(AVPlayerViewController *)self _transitionController];
  v3 = [v2 presentationContext];

  return v3;
}

- (BOOL)isPresentingFullWindow
{
  v3 = [(AVPlayerViewController *)self _showsWolfControls];
  if (v3)
  {
    v4 = [(AVPlayerViewController *)self view];
    v5 = [v4 window];

    if (v5)
    {
      v6 = [(AVPlayerViewController *)self view];
      v7 = [v6 window];
      v8 = [(AVPlayerViewController *)self view];
      [v8 bounds];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v17 = [(AVPlayerViewController *)self view];
      [v7 convertRect:v17 fromView:{v10, v12, v14, v16}];

      UIPointRoundToScale();
      UISizeRoundToScale();
      v19 = v18;
      v21 = v20;
      v22 = [(AVPlayerViewController *)self view];
      v23 = [v22 window];
      [v23 bounds];
      v25 = v24;
      v27 = v26;

      LOBYTE(v3) = v21 == v27 && v19 == v25;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (BOOL)isPresentedFullScreen
{
  v3 = [(AVPlayerViewController *)self parentViewController];
  v4 = !v3 && [(AVPlayerViewController *)self _isDescendantOfRootViewController]&& [(AVPlayerViewController *)self _modalPresentationStyleIsFullScreen];

  return v4;
}

- (BOOL)isPresentingFullScreenFromInline
{
  v2 = [(AVPlayerViewController *)self fullScreenViewController];
  v3 = [v2 presentingViewController];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)hasActiveTransition
{
  if (([(AVPlayerViewController *)self isBeingDismissed]& 1) != 0 || ([(AVPlayerViewController *)self isBeingPresented]& 1) != 0)
  {
    return 1;
  }

  v4 = [(AVPlayerViewController *)self _transitionControllerIfLoaded];
  v5 = [v4 presentationContext];
  v6 = [v5 hasActiveTransition];

  return v6;
}

- (void)setControlsGeneration:(int64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_controlsGeneration != a3)
  {
    self->_controlsGeneration = a3;
    if (self->_controlsViewController)
    {
      [(AVPlayerViewController *)self _stopObserversOnControlsViewController];
      v4 = _AVLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        controlsViewController = self->_controlsViewController;
        v11 = 136315394;
        v12 = "[AVPlayerViewController _updateControlsViewController]";
        v13 = 2112;
        v14 = controlsViewController;
        _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s Removing from AVPlayerViewController hierarchy, AVMobileControlsViewController: %@", &v11, 0x16u);
      }

      [(AVMobileControlsViewController *)self->_controlsViewController willMoveToParentViewController:0];
      v6 = [(AVMobileControlsViewController *)self->_controlsViewController view];
      [v6 removeFromSuperview];

      [(AVMobileControlsViewController *)self->_controlsViewController removeFromParentViewController];
      v7 = [(AVPlayerViewController *)self _createPreferredControlsViewController];
      v8 = self->_controlsViewController;
      self->_controlsViewController = v7;

      v9 = _AVLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = self->_controlsViewController;
        v11 = 136315394;
        v12 = "[AVPlayerViewController _updateControlsViewController]";
        v13 = 2112;
        v14 = v10;
        _os_log_impl(&dword_18B49C000, v9, OS_LOG_TYPE_DEFAULT, "%s Updated AVMobileControlsViewController to: %@", &v11, 0x16u);
      }

      [(AVPlayerViewControllerContentView *)self->_playerViewControllerContentView setControlsViewController:self->_controlsViewController];
      [(AVPlayerViewController *)self _setUpGestureRecognizersIfNeeded];
      [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizer setEnabled:self->_controlsGeneration == 0];
      [(AVPlayerViewController *)self _updateSecondGenerationControlsGestureEnablementStates];
      [(AVPlayerViewController *)self _updateStatusBarGradientViewVisibility];
      [(AVPlayerViewController *)self _updateControlsVisibilityPolicyAnimated:?];
      [(AVPlayerViewController *)self _updateControlsViewControllerInitialState];
    }
  }
}

- (void)setCanStartPictureInPictureAutomaticallyWhenEnteringBackground:(BOOL)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_canStartPictureInPictureAutomaticallyWhenEnteringBackground != a3)
  {
    v3 = a3;
    self->_canStartPictureInPictureAutomaticallyWhenEnteringBackground = a3;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVPlayerViewController(AVPlayerViewControllerInternal) setCanStartPictureInPictureAutomaticallyWhenEnteringBackground:]";
      v10 = "canStartPictureInPictureAutomaticallyWhenEnteringBackground";
      v9 = 2080;
      if (v3)
      {
        v6 = "YES";
      }

      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
    }

    [(AVPlayerViewController *)self _updatePiPControllerCanStartAutomaticallyWhenEnteringBackground];
  }
}

- (void)activeContentViewDidChange
{
  v3 = [(AVPlayerViewController *)self contentView];
  v4 = [v3 playbackContentContainerView];
  v5 = [v4 activeContentView];
  v6 = [v5 playerLayerView];
  v7 = [v6 playerLayer];
  v8 = [v7 videoGravity];
  [(AVPlayerViewController *)self setVideoGravity:v8];

  v9 = [(AVPlayerViewController *)self contentView];
  v10 = [v9 playbackContentContainerView];
  v11 = [v10 activeContentView];
  v12 = [v11 playerLayerView];
  [(AVPlayerViewController *)self setPlayerLayerView:v12];

  v14 = [(__AVPlayerLayerView *)self->_playerLayerView playerLayer];
  v13 = [v14 player];
  [(AVPlayerViewController *)self setPlayer:v13];
}

- (void)setCanShowPictureInPictureButton:(BOOL)a3
{
  if (self->_canShowPictureInPictureButton != a3)
  {
    self->_canShowPictureInPictureButton = a3;
    [(AVPlayerViewController *)self _updatePlaybackControlsState];
  }
}

- (AVPlaybackControlsController)chromePlaybackControlsController
{
  v2 = [(AVPlayerViewController *)self _chromeControlsViewController];
  v3 = [v2 playbackControlsController];

  return v3;
}

- (AVCatalystGlassPlaybackControlsController)catalystPlaybackControlsController
{
  v2 = [(AVPlayerViewController *)self _catalystGlassControlsViewController];
  v3 = [v2 playbackControlsController];

  return v3;
}

- (void)exitFullscreen:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v13 = "[AVPlayerViewController(AVPlaybackControlsViewControllerActions) exitFullscreen:]";
    v14 = 1024;
    v15 = 10371;
    v16 = 2048;
    v17 = self;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  objc_initWeak(buf, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__AVPlayerViewController_AVPlaybackControlsViewControllerActions__exitFullscreen___block_invoke;
  aBlock[3] = &unk_1E7209A88;
  objc_copyWeak(&v11, buf);
  v6 = _Block_copy(aBlock);
  v7 = [(AVPlayerViewController *)self fullScreenViewController];
  v8 = v7 == 0;

  if (v8)
  {
    v9 = [(AVPlayerViewController *)self player];
    [AVDismissalExpanseCoordinator coordinateDismissalWithExpanseSessionForPlayer:v9 cancellable:1 dismissalBlock:v6];
  }

  else
  {
    v6[2](v6, 0);
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __82__AVPlayerViewController_AVPlaybackControlsViewControllerActions__exitFullscreen___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && (a2 & 1) == 0)
  {
    WeakRetained[1066] = 1;
    [WeakRetained _updatePiPControllerCanStartAutomaticallyWhenEnteringBackground];
    v6 = [v5 _transitionController];
    v7 = [v6 presentationContext];
    v8 = [v7 presentedViewController];
    if (v8)
    {
    }

    else
    {
      v9 = [v5 isPresentingDetachedFullScreen];

      if ((v9 & 1) == 0)
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __82__AVPlayerViewController_AVPlaybackControlsViewControllerActions__exitFullscreen___block_invoke_3;
        v11[3] = &unk_1E7208110;
        v10 = &v12;
        objc_copyWeak(&v12, (a1 + 32));
        [v5 _transitionFromFullScreenAnimated:1 completionHandler:v11];
        goto LABEL_7;
      }
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __82__AVPlayerViewController_AVPlaybackControlsViewControllerActions__exitFullscreen___block_invoke_2;
    v13[3] = &unk_1E7208110;
    v10 = &v14;
    objc_copyWeak(&v14, (a1 + 32));
    [v5 _transitionFromFullScreenWithReason:0 animated:1 completionHandler:v13];
LABEL_7:
    objc_destroyWeak(v10);
  }
}

void __82__AVPlayerViewController_AVPlaybackControlsViewControllerActions__exitFullscreen___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[1066] = 0;
    v2 = WeakRetained;
    [WeakRetained _updatePiPControllerCanStartAutomaticallyWhenEnteringBackground];
    WeakRetained = v2;
  }
}

void __82__AVPlayerViewController_AVPlaybackControlsViewControllerActions__exitFullscreen___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[1066] = 0;
    v2 = WeakRetained;
    [WeakRetained _updatePiPControllerCanStartAutomaticallyWhenEnteringBackground];
    WeakRetained = v2;
  }
}

- (void)toggleMuted:(id)a3
{
  [(AVPlayerViewController *)self _volumeButtonWasPressedEvent:a3];
  if (self->_usesGlassCatalystControls)
  {
    [(AVPlayerViewController *)self catalystPlaybackControlsController];
  }

  else
  {
    [(AVPlayerViewController *)self chromePlaybackControlsController];
  }
  v4 = ;
  [v4 toggleMuted];
}

- (void)pictureInPictureButtonTapped:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315650;
    v6 = "[AVPlayerViewController(AVPlaybackControlsViewControllerActions) pictureInPictureButtonTapped:]";
    v7 = 1024;
    v8 = 10352;
    v9 = 2048;
    v10 = self;
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s %d %p", &v5, 0x1Cu);
  }

  [(AVPlayerViewController *)self _togglePictureInPicture];
}

- (void)enterFullScreen:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315650;
    v6 = "[AVPlayerViewController(AVPlaybackControlsViewControllerActions) enterFullScreen:]";
    v7 = 1024;
    v8 = 10336;
    v9 = 2048;
    v10 = self;
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s %d %p", &v5, 0x1Cu);
  }

  [(AVPlayerViewController *)self _transitionToFullScreenAnimated:1 interactive:0 completionHandler:0];
}

- (void)mediaSelectionButtonTapped:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315650;
    v22 = "[AVPlayerViewController(AVPlaybackControlsViewControllerActions) mediaSelectionButtonTapped:]";
    v23 = 1024;
    v24 = 10307;
    v25 = 2048;
    v26 = self;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d %p", &v21, 0x1Cu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [AVMediaSelectionViewController alloc];
    v7 = [(AVPlayerViewController *)self playerController];
    v8 = [(AVMediaSelectionViewController *)v6 initWithPlayerController:v7 doneButtonTarget:self doneButtonAction:sel__mediaSelectionDoneButtonTapped_];

    v9 = [(AVMediaSelectionViewController *)v8 popoverPresentationController];
    objc_storeWeak(&self->_mediaSelectionPopoverPresentationController, v9);

    WeakRetained = objc_loadWeakRetained(&self->_mediaSelectionPopoverPresentationController);
    v11 = [MEMORY[0x1E69DC888] clearColor];
    [WeakRetained setBackgroundColor:v11];

    v12 = objc_loadWeakRetained(&self->_mediaSelectionPopoverPresentationController);
    [v12 setDelegate:self];

    v13 = objc_loadWeakRetained(&self->_mediaSelectionPopoverPresentationController);
    [v13 setPermittedArrowDirections:15];

    v14 = objc_loadWeakRetained(&self->_mediaSelectionPopoverPresentationController);
    [v4 bounds];
    [v14 setSourceRect:?];

    v15 = objc_loadWeakRetained(&self->_mediaSelectionPopoverPresentationController);
    [v15 setSourceView:v4];

    v16 = [(AVPlayerViewController *)self parentViewController];
    if (v16)
    {
      [(AVMediaSelectionViewController *)v8 _setIgnoreAppSupportedOrientations:0];
    }

    else
    {
      v17 = [(AVPlayerViewController *)self fullScreenViewController];
      [(AVMediaSelectionViewController *)v8 _setIgnoreAppSupportedOrientations:v17 == 0];
    }

    v18 = [(AVMediaSelectionViewController *)v8 mediaSelectionTableViewController];
    [v18 _setIgnoreAppSupportedOrientations:{-[AVMediaSelectionViewController _ignoreAppSupportedOrientations](v8, "_ignoreAppSupportedOrientations")}];

    if (self->_usesGlassCatalystControls)
    {
      [(AVPlayerViewController *)self catalystPlaybackControlsController];
    }

    else
    {
      [(AVPlayerViewController *)self chromePlaybackControlsController];
    }
    v19 = ;
    [v19 setPopoverIsBeingPresented:1];

    v20 = [(AVPlayerViewController *)self _activeViewControllerForContentView];
    [v20 presentViewController:v8 animated:1 completion:0];
  }
}

- (void)togglePlayback:(id)a3
{
  v4 = a3;
  [(AVPlayerViewController *)self _playPauseButtonWasPressedEvent:v4];
  v5 = [(AVPlayerViewController *)self playerController];
  [v5 togglePlayback:v4];
}

- (void)videoGravityButtonTapped:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315650;
    v16 = "[AVPlayerViewController(AVPlaybackControlsViewControllerActions) videoGravityButtonTapped:]";
    v17 = 1024;
    v18 = 10288;
    v19 = 2048;
    v20 = self;
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s %d %p", &v15, 0x1Cu);
  }

  v5 = [(AVPlayerViewController *)self videoGravity];
  v6 = *MEMORY[0x1E69874E8];
  v7 = [v5 isEqualToString:*MEMORY[0x1E69874E8]];
  v8 = *MEMORY[0x1E69874F0];
  if (!v7)
  {
    v8 = v6;
  }

  v9 = v8;
  v10 = [(AVPlayerViewController *)self contentView];
  v11 = [v10 layoutClass];
  v12 = [v11 unsignedIntegerValue];

  if (v12)
  {
    v13 = [(AVPlayerViewController *)self contentView];
    v14 = [v13 layoutClass];
    -[AVPlayerViewController setVideoGravity:forLayoutClass:](self, "setVideoGravity:forLayoutClass:", v9, [v14 unsignedIntegerValue]);
  }
}

+ (int64_t)preferredControlsGeneration
{
  v2 = +[AVKitGlobalSettings shared];
  v3 = [v2 playerGeneration];

  v4 = 1;
  if (v3 == 2)
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

+ (void)setPreferredControlsGeneration:(int64_t)a3
{
  v3 = 1;
  if (a3 == 2)
  {
    v3 = 2;
  }

  if (a3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = +[AVKitGlobalSettings shared];
  [v5 setPlayerGeneration:v4];
}

+ (BOOL)usesSecondGenerationControls
{
  v2 = +[AVKitGlobalSettings shared];
  v3 = [v2 playerGeneration];

  return (v3 - 1) < 2;
}

+ (void)setUsesSecondGenerationControls:(BOOL)a3
{
  v3 = a3;
  if ([a1 usesSecondGenerationControls] != a3)
  {
    v4 = +[AVKitGlobalSettings shared];
    [v4 setPlayerGeneration:v3];
  }
}

- (id)_newsWidgetPlayerLegacyBehavior
{
  v2 = [(AVPlayerViewController *)self _behaviorStorage];
  v3 = [v2 behaviorOfClass:objc_opt_class()];

  return v3;
}

- (id)_newsWidgetPlayerBehaviorContext
{
  v2 = [(AVPlayerViewController *)self _behaviorStorage];
  v3 = [v2 behaviorContextOfClass:objc_opt_class()];

  return v3;
}

- (void)setVideoGravityForTransitioningContent:(id)a3
{
  v4 = a3;
  v5 = [(AVPlayerViewController *)self _newsWidgetPlayerBehaviorContext];
  [v5 setVideoGravityForTransitioningContent:v4];
}

- (void)startContentTransition:(int64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [(AVPlayerViewController *)self activeContentTransitionType];
  v6 = _AVLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = self;
      _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Warning: Attempted to start content transition on a %@, which was already transitioning. Ignoring.", &v8, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[AVPlayerViewController(AVPlayerViewController_NewsOnly) startContentTransition:]";
      v10 = 2048;
      v11 = a3;
      _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s %ld", &v8, 0x16u);
    }

    v7 = [(AVPlayerViewController *)self _newsWidgetPlayerBehaviorContext];
    [v7 startContentTransition:a3];
  }
}

- (void)setContentTransitioningDelegate:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AVPlayerViewController *)self contentTransitioningDelegate];

  if (v5 != v4)
  {
    v6 = _AVLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "[AVPlayerViewController(AVPlayerViewController_NewsOnly) setContentTransitioningDelegate:]";
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s %@", &v10, 0x16u);
    }

    v7 = [(AVPlayerViewController *)self _newsWidgetPlayerLegacyBehavior];
    if (v7)
    {
      [(AVPlayerViewController *)self removeBehavior:v7];
    }

    if (v4)
    {
      v8 = objc_alloc_init(AVNewsWidgetPlayerLegacyBehavior);
      [(AVPlayerViewController *)self addBehavior:v8];

      v9 = [(AVPlayerViewController *)self _newsWidgetPlayerLegacyBehavior];
      [v9 setLegacyDelegate:v4];
    }
  }
}

- (AVPlayerViewControllerContentTransitioning_NewsOnly)contentTransitioningDelegate
{
  v2 = [(AVPlayerViewController *)self _newsWidgetPlayerLegacyBehavior];
  v3 = [v2 legacyDelegate];

  return v3;
}

- (AVPlayer)contentTransitioningPlayer
{
  v2 = [(AVPlayerViewController *)self _newsWidgetPlayerBehaviorContext];
  v3 = [v2 contentTransitioningPlayer];

  return v3;
}

- (BOOL)isContentTransitionInteractive
{
  v2 = [(AVPlayerViewController *)self _newsWidgetPlayerBehaviorContext];
  v3 = [v2 isContentTransitionInteractive];

  return v3;
}

- (UIView)contentTransitioningOverlayView
{
  v2 = [(AVPlayerViewController *)self _newsWidgetPlayerBehaviorContext];
  v3 = [v2 contentTransitioningOverlayView];

  return v3;
}

- (void)setStartNextContentTransitionButtonEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(AVPlayerViewController *)self _newsWidgetPlayerBehaviorContext];
  [v4 setStartNextContentTransitionButtonEnabled:v3];
}

- (BOOL)isStartNextContentTransitionButtonEnabled
{
  v2 = [(AVPlayerViewController *)self _newsWidgetPlayerBehaviorContext];
  v3 = [v2 isStartNextContentTransitionButtonEnabled];

  return v3;
}

- (void)setStartPreviousContentTransitionButtonEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(AVPlayerViewController *)self _newsWidgetPlayerBehaviorContext];
  [v4 setStartPreviousContentTransitionButtonEnabled:v3];
}

- (BOOL)isStartPreviousContentTransitionButtonEnabled
{
  v2 = [(AVPlayerViewController *)self _newsWidgetPlayerBehaviorContext];
  v3 = [v2 isStartPreviousContentTransitionButtonEnabled];

  return v3;
}

- (void)setCustomContentTransitioningInfoPanel:(id)a3
{
  v4 = a3;
  v5 = [(AVPlayerViewController *)self _newsWidgetPlayerBehaviorContext];
  [v5 setCustomContentTransitioningInfoPanel:v4];
}

- (UIView)customContentTransitioningInfoPanel
{
  v2 = [(AVPlayerViewController *)self _newsWidgetPlayerBehaviorContext];
  v3 = [v2 customContentTransitioningInfoPanel];

  return v3;
}

- (int64_t)activeContentTransitionType
{
  v2 = [(AVPlayerViewController *)self _newsWidgetPlayerBehaviorContext];
  v3 = [v2 activeContentTransitionType];

  return v3;
}

- (NSArray)behaviors
{
  v2 = [(AVPlayerViewController *)self _behaviorStorage];
  v3 = [v2 behaviors];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (void)removeBehavior:(id)a3
{
  v4 = a3;
  v5 = [(AVPlayerViewController *)self _behaviorStorage];
  [v5 removeBehavior:v4];
}

- (void)addBehavior:(id)a3
{
  v4 = a3;
  [(AVPlayerViewController *)self _ensureBehaviorStorage];
  v5 = [(AVPlayerViewController *)self _behaviorStorage];
  [v5 addBehavior:v4];
}

@end