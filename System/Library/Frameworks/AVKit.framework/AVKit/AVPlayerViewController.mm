@interface AVPlayerViewController
+ (BOOL)usesSecondGenerationControls;
+ (NSArray)mediaCharacteristicsForSupportedCustomMediaSelectionSchemes;
+ (id)keyPathsForValuesAffectingTransportBarCustomMenuItems;
+ (int64_t)_determineControlsGeneration;
+ (int64_t)preferredControlsGeneration;
+ (void)setPreferredControlsGeneration:(int64_t)generation;
+ (void)setUsesSecondGenerationControls:(BOOL)controls;
- ($175F2685EF764341F5DD80B75CC65478)controlsViewController:(id)controller contentTabPresentationInfoWithPreferredHeight:(double)height;
- (AVBehaviorStorage)_behaviorStorage;
- (AVCatalystGlassPlaybackControlsController)catalystPlaybackControlsController;
- (AVLayerVideoGravity)videoGravity;
- (AVMobileChromeControlsViewController)_createPreferredControlsViewController;
- (AVMobileControlsViewController)controlsViewController;
- (AVPlaybackControlsController)chromePlaybackControlsController;
- (AVPlayer)contentTransitioningPlayer;
- (AVPlayerViewController)initWithCoder:(id)coder;
- (AVPlayerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (AVPlayerViewController)initWithPlayerLayerView:(id)view;
- (AVPlayerViewControllerConfiguration)configuration;
- (AVPlayerViewControllerContentTransitioning_NewsOnly)contentTransitioningDelegate;
- (AVPlayerViewControllerCustomControlsView)customControlsView;
- (AVPresentationContext)presentationContext;
- (AVTransitionController)_transitionController;
- (BOOL)_canEnterFullScreen;
- (BOOL)_contentTabsVisible;
- (BOOL)_controlsViewControllerPrefersStatusBarHidden;
- (BOOL)_delegateRespondsTo:(SEL)to;
- (BOOL)_hoverGestureRecognizer:(id)recognizer hasCursorOverView:(id)view;
- (BOOL)_isDescendantOfRootViewController;
- (BOOL)_isTrackingUserInteractionWithInteractiveView;
- (BOOL)_isTransitioningToOrFromFullScreen;
- (BOOL)_isUnsupportedContent;
- (BOOL)_shouldPausePlaybackWhenExitingFullscreen;
- (BOOL)_shouldShowPictureInPictureButton;
- (BOOL)_wantsNowPlayingInfoCenter:(BOOL)center;
- (BOOL)analysisInteractionInProgress;
- (BOOL)avkit_isEffectivelyFullScreen;
- (BOOL)avkit_isVisible;
- (BOOL)canControlPlayback;
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
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
- (BOOL)observesMediaSelectionForSmartSubtitlesController:(id)controller;
- (BOOL)playerControllerCanRestorePlaybackRateAfterAudioSessionDeactivation:(id)deactivation;
- (BOOL)prefersStatusBarHidden;
- (BOOL)transitionController:(id)controller gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)transitionControllerCanBeginInteractiveDismissalTransition:(id)transition;
- (BOOL)transitionControllerCanBeginInteractivePresentationTransition:(id)transition;
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
- (UIEdgeInsets)playerViewControllerContentViewEdgeInsetsForLetterboxedVideo:(id)video;
- (UIView)contentOverlayView;
- (UIView)contentTransitioningOverlayView;
- (UIView)customContentTransitioningInfoPanel;
- (UIView)iAdPrerollView;
- (UIViewController)fullScreenViewController;
- (UIViewController)viewControllerForFullScreenPresentation;
- (double)_applyNonlinearScaleToScrubGestureVelocity:(double)velocity;
- (double)_availableSpaceForContentTabWithVideoDodgingForSize:(CGSize)size;
- (double)_seekDistanceForScrubGestureWithVelocity:(double)velocity;
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
- (id)_preferredDynamicRangeForAutomaticModeWithHeadroomUsage:(id *)usage;
- (id)_volumeController;
- (id)avkit_pictureInPictureViewController;
- (id)controlsViewController:(id)controller displayNameForMediaSelectionOption:(id)option;
- (id)delegate;
- (id)interactiveContentOverlayView;
- (id)keyCommands;
- (id)playButtonHandlerForLazyPlayerLoading;
- (id)playbackContainerViewForFullScreenViewController:(id)controller;
- (id)transitionController:(id)controller configurationForPresentedViewController:(id)viewController presentingViewController:(id)presentingViewController;
- (id)transitionController:(id)controller targetViewForDismissingViewController:(id)viewController;
- (id)transitionControllerBackgroundViewBackgroundColor:(id)color;
- (id)transitionControllerPresentedViewBackgroundColor:(id)color;
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
- (void)_contentViewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)_controlsViewController:(id)controller willBeginContentTabTransitionWithContext:(id)context;
- (void)_copySubjectMenuItemPressedEvent:(id)event;
- (void)_createPictureInPictureControllerIfNeeded;
- (void)_didBeginPlayingOnSecondScreen;
- (void)_didEndPlayingOnSecondScreen;
- (void)_endScrubGestureIfActive;
- (void)_endTrackingUserInteraction;
- (void)_ensureBehaviorStorage;
- (void)_enterFullScreenWhenPlayingIfNeeded;
- (void)_handleDoubleTapGesture:(id)gesture;
- (void)_handleFastForwardKeyPressedCommand:(id)command;
- (void)_handleFastForwardKeyReleasedCommand:(id)command;
- (void)_handleGoToBeginningKeyCommand:(id)command;
- (void)_handleHoverGestureRecognizer:(id)recognizer;
- (void)_handlePlaybackToggleNotificationForMetricsCollectionEvent;
- (void)_handleRewindKeyPressedCommand:(id)command;
- (void)_handleRewindKeyReleasedCommand:(id)command;
- (void)_handleScrubbingGestureRecognizer:(id)recognizer;
- (void)_handleShowNextFrameKeyCommand:(id)command;
- (void)_handleShowPreviousFrameKeyCommand:(id)command;
- (void)_handleSingleTapGesture:(id)gesture;
- (void)_handleSkipAhead15SecondsKeyCommand:(id)command;
- (void)_handleSkipBack15SecondsKeyCommand:(id)command;
- (void)_handleUserInteractionObservationRecognizer:(id)recognizer;
- (void)_handleVideoGravityPinchGesture:(id)gesture;
- (void)_handleVolumeDownKeyPressedCommand:(id)command;
- (void)_handleVolumeDownKeyReleasedCommand:(id)command;
- (void)_handleVolumeUpKeyPressedCommand:(id)command;
- (void)_handleVolumeUpKeyReleasedCommand:(id)command;
- (void)_mediaSelectionDoneButtonTapped:(id)tapped;
- (void)_notifyDelegateOfAnalysisCalloutAction;
- (void)_notifyOfMetricsCollectionEvent:(int64_t)event;
- (void)_playPauseButtonWasPressedEvent:(id)event;
- (void)_resetVisualAnalysisViewSelectionIfNeeded;
- (void)_seekForScrubGestureWithVelocity:(double)velocity;
- (void)_setContentViewOnSelf;
- (void)_setSecondScreenConnectionReadyToConnect:(BOOL)connect;
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
- (void)_togglePlaybackForCenterTapGesture:(id)gesture;
- (void)_transitionFromDetachedFullScreenPresentationToInlineAnimated:(BOOL)animated completionHandler:(id)handler;
- (void)_transitionFromFullScreenAnimated:(BOOL)animated interactive:(BOOL)interactive completionHandler:(id)handler;
- (void)_transitionFromFullScreenPresentationToInlineAnimated:(BOOL)animated interactive:(BOOL)interactive completionHandler:(id)handler;
- (void)_transitionFromFullScreenWithReason:(int64_t)reason animated:(BOOL)animated completionHandler:(id)handler;
- (void)_transitionToAttachedFullScreenAnimated:(BOOL)animated interactive:(BOOL)interactive completionHandler:(id)handler;
- (void)_transitionToDetachedFullScreenCompletionHandler:(id)handler;
- (void)_transitionToFullScreenAnimated:(BOOL)animated interactive:(BOOL)interactive completionHandler:(id)handler;
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
- (void)_updateCustomControlsViewStateWithVisibleControlsSet:(unint64_t)set;
- (void)_updateCustomControlsViewSuperViewIfNeeded;
- (void)_updateCustomInfoViewControllersIfNeeded;
- (void)_updateDefaultLinearPlaybackRateIfNeeded;
- (void)_updateDefaultPlaybackRateIfNeeded;
- (void)_updateEnhanceDialogueEnabled;
- (void)_updateExternalPlaybackIndicatorView;
- (void)_updateGesturesEnablementStates;
- (void)_updateInfoTabViewControllerIfNeeded;
- (void)_updateInfoTabViewControllerPreferredContentSizeIfNeededToFitSize:(double)size;
- (void)_updateMenuGroupAttributes;
- (void)_updateNowPlayingInfoController;
- (void)_updateNowPlayingInfoControllerSuspendedState;
- (void)_updatePiPControllerCanStartAutomaticallyWhenEnteringBackground;
- (void)_updatePlaybackBeganAfterPlayerControllerBecameReadyToPlayIfNeeded;
- (void)_updatePlaybackControlsCanHideStateIfNeeded;
- (void)_updatePlaybackControlsState;
- (void)_updatePlayerControllerInspectionState;
- (void)_updatePlayerControllerLegibleOptionsForSmartSubtitleDisplayType:(void *)type;
- (void)_updatePlayerLayerLegibleContentInsetsIfNeeded;
- (void)_updatePreferredDisplayDynamicRange;
- (void)_updatePreferredDynamicRangeForAutomaticMode;
- (void)_updatePreferredDynamicRangeForAutomaticModeWithHeadroomUsage:(void *)usage;
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
- (void)_visualLookupMenuItemPressedEvent:(id)event;
- (void)_volumeButtonWasPressedEvent:(id)event;
- (void)activeContentViewDidChange;
- (void)addBehavior:(id)behavior;
- (void)avkit_beginReducingResourcesForPictureInPictureViewController:(id)controller playerController:(id)playerController;
- (void)avkit_endReducingResourcesForPictureInPictureViewController:(id)controller playerController:(id)playerController;
- (void)avkit_startRoutingVideoToPictureInPictureViewController:(id)controller;
- (void)avkit_willBeginStoppingPictureInPictureForPictureInPictureViewController:(id)controller;
- (void)chromelessControlsViewController:(id)controller didSelectSetting:(id)setting forSelector:(id)selector;
- (void)controlsViewController:(id)controller willBeginUpdatingVisibleControlsTo:(unint64_t)to withAnimationCoordinator:(id)coordinator;
- (void)controlsViewControllerDidPressLiveTextButton:(id)button;
- (void)controlsViewControllerDidUpdateLayoutGuides:(id)guides;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)controller;
- (void)didPresentInterstitialGroup:(id)group;
- (void)encodeWithCoder:(id)coder;
- (void)enterFullScreen:(id)screen;
- (void)enterFullScreenAnimated:(BOOL)animated completionHandler:(id)handler;
- (void)enterFullScreenWithCompletion:(id)completion;
- (void)exitFullScreenAnimated:(BOOL)animated completionHandler:(id)handler;
- (void)exitFullScreenWithCompletion:(id)completion;
- (void)exitFullscreen:(id)fullscreen;
- (void)flashPlaybackControlsWithDuration:(double)duration;
- (void)fullScreenViewController:(id)controller viewWillTransitionToSize:(CGSize)size coordinator:(id)coordinator;
- (void)fullScreenViewControllerWillAttachContentView:(id)view;
- (void)fullScreenViewControllerWillBeginFullScreenPresentation:(id)presentation;
- (void)fullScreenViewControllerWillEndFullScreenPresentation:(id)presentation;
- (void)glassPlaybackControlsView:(id)view animateAlongsideVisibilityAnimationsWithAnimationCoordinator:(id)coordinator appearingViews:(id)views disappearingViews:(id)disappearingViews;
- (void)glassPlaybackControlsViewDidToggleControlsVisibility:(id)visibility;
- (void)glassPlaybackControlsViewNeedsUpdateStatusBarAppearance:(id)appearance;
- (void)loadView;
- (void)mediaSelectionButtonTapped:(id)tapped;
- (void)performInitialSetupIfNeededAndPossible;
- (void)pictureInPictureButtonTapped:(id)tapped;
- (void)pictureInPictureController:(id)controller failedToStartPictureInPictureWithError:(id)error;
- (void)pictureInPictureController:(id)controller restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)handler;
- (void)pictureInPictureControllerDidStartPictureInPicture:(id)picture;
- (void)pictureInPictureControllerDidStopPictureInPicture:(id)picture;
- (void)pictureInPictureControllerWillStartPictureInPicture:(id)picture;
- (void)pictureInPictureControllerWillStopPictureInPicture:(id)picture;
- (void)playbackControlsView:(id)view animateAlongsideVisibilityAnimationsWithAnimationCoordinator:(id)coordinator appearingViews:(id)views disappearingViews:(id)disappearingViews;
- (void)playbackControlsViewDidToggleControlsVisibility:(id)visibility;
- (void)playbackControlsViewNeedsUpdateStatusBarAppearance:(id)appearance;
- (void)playbackSpeedCollection:(id)collection selectedPlaybackSpeedDidChangeTo:(id)to;
- (void)playerControllerDidUpdateIsPlayingHDRContent:(id)content;
- (void)playerViewControllerContentView:(id)view didMoveToWindow:(id)window;
- (void)prepareForPopoverPresentation:(id)presentation;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)removeBehavior:(id)behavior;
- (void)scheduleTips;
- (void)scrollingObserverDidChangeScrollingState:(id)state;
- (void)scrubbingGestureControllerStateDidChange:(id)change;
- (void)setActuallyRequiresLinearPlayback:(BOOL)playback;
- (void)setAllowInfoMetadataSubpanel:(BOOL)subpanel;
- (void)setAllowsEnteringFullScreen:(BOOL)screen;
- (void)setAllowsPictureInPicturePlayback:(BOOL)allowsPictureInPicturePlayback;
- (void)setAllowsVideoFrameAnalysis:(BOOL)allowsVideoFrameAnalysis;
- (void)setCanHidePlaybackControls:(BOOL)controls;
- (void)setCanIncludePlaybackControlsWhenInline:(BOOL)inline;
- (void)setCanPausePlaybackWhenClosingPictureInPicture:(BOOL)picture;
- (void)setCanShowPictureInPictureButton:(BOOL)button;
- (void)setCanStartPictureInPictureAutomaticallyWhenEnteringBackground:(BOOL)background;
- (void)setConfiguration:(id)configuration;
- (void)setContentTransitioningDelegate:(id)delegate;
- (void)setControlsGeneration:(int64_t)generation;
- (void)setCustomContentTransitioningInfoPanel:(id)panel;
- (void)setCustomControlItems:(id)items;
- (void)setCustomInfoViewControllers:(NSArray *)customInfoViewControllers;
- (void)setDefaultPlaybackRate:(double)rate;
- (void)setEntersFullScreenWhenPlaybackBegins:(BOOL)entersFullScreenWhenPlaybackBegins;
- (void)setEntersFullScreenWhenTapped:(BOOL)tapped;
- (void)setHoveringOverPlaybackControl:(BOOL)control;
- (void)setImageAnalysis:(id)analysis;
- (void)setIncludeMultiviewButton:(BOOL)button;
- (void)setInfoTabViewController:(id)controller;
- (void)setInfoViewActions:(NSArray *)infoViewActions;
- (void)setLegibleContentInsets:(UIEdgeInsets)insets;
- (void)setOverrideLayoutMarginsWhenEmbeddedInline:(id)inline;
- (void)setOverrideParentApplicationDisplayIdentifier:(id)identifier;
- (void)setOverrideTransformForProminentPlayButton:(CGAffineTransform *)button;
- (void)setPictureInPictureActivitySessionIdentifier:(id)identifier;
- (void)setPixelBufferAttributes:(NSDictionary *)pixelBufferAttributes;
- (void)setPlayButtonHandlerForLazyPlayerLoading:(id)loading;
- (void)setPlaybackControlsIncludeDisplayModeControls:(BOOL)controls;
- (void)setPlaybackControlsIncludeTransportControls:(BOOL)controls;
- (void)setPlaybackControlsIncludeVolumeControls:(BOOL)controls;
- (void)setPlaybackControlsShouldControlSystemVolume:(BOOL)volume;
- (void)setPlaybackSpeedCollection:(id)collection;
- (void)setPlayer:(AVPlayer *)player;
- (void)setPlayerController:(id)controller;
- (void)setPlayerLayerView:(id)view;
- (void)setPreferredDisplayDynamicRange:(int64_t)range;
- (void)setPreferredPlaybackControlsSupplementalSubtitleDisplayOption:(int64_t)option;
- (void)setPreferredUnobscuredArea:(int64_t)area;
- (void)setPrefersDeviceUserInterfaceStyle:(BOOL)style;
- (void)setRequiresImmediateAssetInspection:(BOOL)inspection;
- (void)setRequiresLinearPlayback:(BOOL)requiresLinearPlayback;
- (void)setShouldUseNetworkingResourcesForLiveStreamingWhilePaused:(BOOL)paused;
- (void)setShowsAnalysisButtonIfAvailable:(BOOL)available;
- (void)setShowsAudioLanguageMenu:(BOOL)menu;
- (void)setShowsMinimalPlaybackControlsWhenEmbeddedInline:(BOOL)inline;
- (void)setShowsPlaybackControls:(BOOL)showsPlaybackControls;
- (void)setShowsTimecodes:(BOOL)showsTimecodes;
- (void)setShowsVisualLookup:(BOOL)lookup;
- (void)setSpeeds:(NSArray *)speeds;
- (void)setStartNextContentTransitionButtonEnabled:(BOOL)enabled;
- (void)setStartPreviousContentTransitionButtonEnabled:(BOOL)enabled;
- (void)setTransportBarCustomMenuItems:(NSArray *)transportBarCustomMenuItems;
- (void)setUpdatesNowPlayingInfoCenter:(BOOL)updatesNowPlayingInfoCenter;
- (void)setVideoFrameAnalysisTypes:(AVVideoFrameAnalysisType)videoFrameAnalysisTypes;
- (void)setVideoGravity:(AVLayerVideoGravity)videoGravity;
- (void)setVideoGravity:(id)gravity forLayoutClass:(unint64_t)class;
- (void)setVideoGravityForTransitioningContent:(id)content;
- (void)setView:(id)view;
- (void)setVolumeControlsCanShowSlider:(BOOL)slider;
- (void)setWebKitOverrideRouteSharingPolicy:(unint64_t)policy routingContextUID:(id)d;
- (void)showFullScreenPresentationFromView:(id)view completion:(id)completion;
- (void)showTextButtonToggled:(id)toggled;
- (void)startContentTransition:(int64_t)transition;
- (void)toggleMuted:(id)muted;
- (void)togglePlayback:(id)playback;
- (void)transitionController:(id)controller animationProgressDidChange:(float)change;
- (void)transitionController:(id)controller prepareForFinishingInteractiveTransition:(id)transition;
- (void)transitionController:(id)controller transitionWillComplete:(BOOL)complete continueBlock:(id)block;
- (void)transitionController:(id)controller willBeginDismissingViewController:(id)viewController;
- (void)transitionController:(id)controller willBeginPresentingViewController:(id)viewController;
- (void)transitionControllerBeginInteractivePresentationTransition:(id)transition;
- (void)updateVideoBounds;
- (void)videoFrameVisualAnalyzerDidFinishAnalyzingVideoFrame:(id)frame withAnalysis:(id)analysis;
- (void)videoFrameVisualAnalyzerFailedAnalyzingVideoFrame:(id)frame withError:(id)error;
- (void)videoGravityButtonTapped:(id)tapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)visualAnalysisView:(id)view prepareForCalloutAction:(SEL)action completion:(id)completion;
- (void)visualAnalysisViewDidPressAnalysisButton:(id)button;
- (void)visualAnalysisViewDidUpdateSubjectAvailability:(id)availability;
- (void)visualAnalysisViewDidUpdateVisualLookupAvailability:(id)availability;
- (void)willPresentInterstitialGroup:(id)group;
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

- (void)setIncludeMultiviewButton:(BOOL)button
{
  if (self->_includeMultiviewButton != button)
  {
    self->_includeMultiviewButton = button;
    [(AVPlayerViewController *)self _updatePlaybackControlsState];
  }
}

- (void)willPresentInterstitialGroup:(id)group
{
  groupCopy = group;
  [(AVPlayerViewController *)self _updateActuallyRequiresLinearPlayback];
  if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewController_willPresentInterstitialTimeRange_])
  {
    delegate = [(AVPlayerViewController *)self delegate];
    [delegate playerViewController:self willPresentInterstitialTimeRange:groupCopy];
  }
}

- (void)didPresentInterstitialGroup:(id)group
{
  groupCopy = group;
  [(AVPlayerViewController *)self _updateActuallyRequiresLinearPlayback];
  if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewController_didPresentInterstitialTimeRange_])
  {
    delegate = [(AVPlayerViewController *)self delegate];
    [delegate playerViewController:self didPresentInterstitialTimeRange:groupCopy];
  }
}

- (void)playbackSpeedCollection:(id)collection selectedPlaybackSpeedDidChangeTo:(id)to
{
  v12 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v6 = _AVLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    internalDescription = [toCopy internalDescription];
    v8 = 136315394;
    v9 = "[AVPlayerViewController playbackSpeedCollection:selectedPlaybackSpeedDidChangeTo:]";
    v10 = 2112;
    v11 = internalDescription;
    _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s New playback speed selected: %@", &v8, 0x16u);
  }

  [(AVPlayerViewController *)self _updateDefaultPlaybackRateIfNeeded];
}

- (void)playerControllerDidUpdateIsPlayingHDRContent:(id)content
{
  v4 = 0.0;
  if ([content isPlayingHDRContent])
  {
    v4 = 3.0;
    if (self->_controlsGeneration == 2)
    {
      v5 = +[AVKitGlobalSettings shared];
      [v5 extendedDynamicRangeGain];
      v4 = v6;
    }
  }

  controlsViewController = [(AVPlayerViewController *)self controlsViewController];
  controlsViewControllerIfChromeless = [controlsViewController controlsViewControllerIfChromeless];
  [controlsViewControllerIfChromeless setExtendedDynamicRangeGain:v4];

  controlsViewController2 = [(AVPlayerViewController *)self controlsViewController];
  controlsViewControllerIfGlass = [controlsViewController2 controlsViewControllerIfGlass];
  [controlsViewControllerIfGlass setExtendedDynamicRangeGain:v4];
}

- (void)_setupInterstitialControllerDelegateIfNeeded
{
  if (self && (objc_opt_respondsToSelector() & 1) != 0)
  {
    interstitialController = [*(self + 1568) interstitialController];
    [interstitialController setDelegateManager:self];
  }
}

- (BOOL)playerControllerCanRestorePlaybackRateAfterAudioSessionDeactivation:(id)deactivation
{
  view = [(AVPlayerViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  if ([windowScene activationState] == 1)
  {
    _FBSScene = [windowScene _FBSScene];
    uiSettings = [_FBSScene uiSettings];
    deactivationReasons = [uiSettings deactivationReasons];

    v9 = (deactivationReasons & 0xFFFFFFFFFFFFFFAFLL) == 0;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)fullScreenViewController:(id)controller viewWillTransitionToSize:(CGSize)size coordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  controllerCopy = controller;
  contentView = [(AVPlayerViewController *)self contentView];
  viewIfLoaded = [controllerCopy viewIfLoaded];

  LODWORD(controllerCopy) = [contentView isDescendantOfView:viewIfLoaded];
  if (controllerCopy)
  {
    [(AVPlayerViewController *)self _contentViewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  }
}

- (id)playbackContainerViewForFullScreenViewController:(id)controller
{
  contentView = [(AVPlayerViewController *)self contentView];
  playbackContentContainerView = [contentView playbackContentContainerView];

  return playbackContentContainerView;
}

- (void)fullScreenViewControllerWillAttachContentView:(id)view
{
  [(AVMobileControlsViewController *)self->_controlsViewController willMoveToParentViewController:0];
  controlsViewController = self->_controlsViewController;

  [(AVMobileControlsViewController *)controlsViewController removeFromParentViewController];
}

- (void)fullScreenViewControllerWillEndFullScreenPresentation:(id)presentation
{
  [(AVPlayerViewController *)self _setContentViewOnSelf];
  _behaviorStorage = [(AVPlayerViewController *)self _behaviorStorage];
  [_behaviorStorage enumerateAllBehaviorContextsImplementingSelector:sel_willExitFullScreen forProtocol:&unk_1EFF32480 usingBlock:&__block_literal_global_855];
}

- (void)fullScreenViewControllerWillBeginFullScreenPresentation:(id)presentation
{
  [(AVPlayerView *)self->_playerViewControllerView setContentView:0];
  [(AVPlayerViewController *)self setShouldUseNetworkingResourcesForLiveStreamingWhilePaused:1];
  _behaviorStorage = [(AVPlayerViewController *)self _behaviorStorage];
  [_behaviorStorage enumerateAllBehaviorContextsImplementingSelector:sel_willEnterFullScreen forProtocol:&unk_1EFF32480 usingBlock:&__block_literal_global_852];
}

- (void)scrubbingGestureControllerStateDidChange:(id)change
{
  changeCopy = change;
  if ([changeCopy state] == 2)
  {
    platformAdapter = [changeCopy platformAdapter];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      platformAdapter2 = [changeCopy platformAdapter];
      controlsViewControllerIfChromeless = [(AVMobileControlsViewController *)self->_controlsViewController controlsViewControllerIfChromeless];
      if (!controlsViewControllerIfChromeless)
      {
        controlsViewControllerIfChromeless = [(AVMobileControlsViewController *)self->_controlsViewController controlsViewControllerIfGlass];
      }

      view = [controlsViewControllerIfChromeless view];
      [view layoutMargins];
      v10 = v9;
      v12 = v11;

      view2 = [controlsViewControllerIfChromeless view];
      [view2 frame];
      v15 = v14 - v10 - v12;

      [platformAdapter2 setScrubbingWidth:v15];
    }
  }
}

- (void)scrollingObserverDidChangeScrollingState:(id)state
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
    window = [*(result + 1240) window];
    v3 = window == 0;

    scrollingObserver = [*(v1 + 1240) scrollingObserver];
    isScrolling = [scrollingObserver isScrolling];

    v6 = *(v1 + 1248);

    return [v6 setOptimizeForPerformance:(v3 | isScrolling) & 1];
  }

  return result;
}

- (void)_updatePlayerControllerInspectionState
{
  if (!self)
  {
    return;
  }

  playerController = [self playerController];
  v2 = *(self + 1240);
  if ((*(self + 1068) & 1) != 0 || ([self requiresImmediateAssetInspection] & 1) != 0 || (objc_msgSend(v2, "window"), (v3 = objc_claimAutoreleasedReturnValue()) != 0) && (v4 = v3, objc_msgSend(v2, "scrollingObserver"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isScrolling"), v5, v4, (v6 & 1) == 0))
  {
    if ([playerController isInspectionSuspended])
    {
      v7 = 0;
      goto LABEL_10;
    }
  }

  else if (([playerController isInspectionSuspended] & 1) == 0)
  {
    v7 = 1;
LABEL_10:
    [playerController setInspectionSuspended:v7];
    [self _updateNowPlayingInfoController];
  }
}

- (void)_updateVisualAnalyzerEnabledStateIfNeeded
{
  if (self)
  {
    v2 = *(self + 1192);
    if (v2)
    {
      v3 = v2;
      playerController = [self playerController];
      scrollingObserver = [*(self + 1240) scrollingObserver];
      isScrolling = [scrollingObserver isScrolling];

      isPictureInPictureActive = [self isPictureInPictureActive];
      isPlayingOnSecondScreen = [playerController isPlayingOnSecondScreen];
      isPlayingOnExternalScreen = [playerController isPlayingOnExternalScreen];
      if ((isPictureInPictureActive & 1) != 0 || (isPlayingOnSecondScreen & 1) != 0 || (isPlayingOnExternalScreen & 1) != 0 || isScrolling)
      {
        v9 = 0;
      }

      else
      {
        v9 = *(self + 1503);
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
    scrollingObserver = [*(result + 1240) scrollingObserver];
    isScrolling = [scrollingObserver isScrolling];

    v4 = isScrolling | ~[v1 allowsVideoFrameAnalysis];
    v5 = v1[225];

    return [v5 setHidden:v4 & 1];
  }

  return result;
}

- (void)glassPlaybackControlsViewDidToggleControlsVisibility:(id)visibility
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
          contentView = [v1 contentView];
          contentView2 = [v1 contentView];
          chromePlaybackControlsView = [contentView2 chromePlaybackControlsView];

          if ([chromePlaybackControlsView showsPlaybackControls])
          {
            v6 = v1[225];
            transportControlsContainerView = [chromePlaybackControlsView transportControlsContainerView];
            [contentView frame];
            v22 = v8;
            [v6 bounds];
            [contentView convertRect:v6 fromView:?];
            v10 = v9;
            v12 = v11;
            v14 = v13;
            v16 = v15;

            [transportControlsContainerView bounds];
            [contentView convertRect:transportControlsContainerView fromView:?];
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
        isPresentingDetachedFullScreen = [v1 isPresentingDetachedFullScreen];
        showsAnalysisButtonIfAvailable = [v1 showsAnalysisButtonIfAvailable];
        showsPlaybackControls = showsAnalysisButtonIfAvailable;
        if (isPresentingDetachedFullScreen & 1) == 0 && (*(v1 + 993) & showsAnalysisButtonIfAvailable)
        {
          if (v1[157])
          {
            showsPlaybackControls = 0;
          }

          else
          {
            contentView = [v1 contentView];
            chromePlaybackControlsView = [contentView chromePlaybackControlsView];
            showsPlaybackControls = [chromePlaybackControlsView showsPlaybackControls];
          }
        }

        v7 = v1[225];

        return [v7 setWantsAnalysisButtonVisible:showsPlaybackControls];
      }
    }
  }

  return result;
}

- (void)glassPlaybackControlsView:(id)view animateAlongsideVisibilityAnimationsWithAnimationCoordinator:(id)coordinator appearingViews:(id)views disappearingViews:(id)disappearingViews
{
  coordinatorCopy = coordinator;
  disappearingViewsCopy = disappearingViews;
  viewsCopy = views;
  contentView = [(AVPlayerViewController *)self contentView];
  glassPlaybackControlsView = [contentView glassPlaybackControlsView];
  [glassPlaybackControlsView animateAlongsideVisibilityAnimationsWithAnimationCoordinator:coordinatorCopy appearingViews:viewsCopy disappearingViews:disappearingViewsCopy];

  contentView2 = [(AVPlayerViewController *)self contentView];
  glassPlaybackControlsView2 = [contentView2 glassPlaybackControlsView];
  playbackControlsContainer = [glassPlaybackControlsView2 playbackControlsContainer];

  v17 = [viewsCopy containsObject:playbackControlsContainer];
  v18 = [disappearingViewsCopy containsObject:playbackControlsContainer];

  if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewController_willTransitionToVisibilityOfPlaybackControls_withAnimationCoordinator_]&& ((v17 | v18) & 1) != 0)
  {
    delegate = [(AVPlayerViewController *)self delegate];
    [delegate playerViewController:self willTransitionToVisibilityOfPlaybackControls:v17 withAnimationCoordinator:coordinatorCopy];
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
  [coordinatorCopy addCoordinatedAnimations:v21 completion:v20];
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

- (void)glassPlaybackControlsViewNeedsUpdateStatusBarAppearance:(id)appearance
{
  _activeViewControllerForContentView = [(AVPlayerViewController *)self _activeViewControllerForContentView];
  transitionCoordinator = [_activeViewControllerForContentView transitionCoordinator];

  if (transitionCoordinator)
  {
    transitionCoordinator2 = [_activeViewControllerForContentView transitionCoordinator];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __82__AVPlayerViewController_glassPlaybackControlsViewNeedsUpdateStatusBarAppearance___block_invoke;
    v7[3] = &unk_1E7208180;
    v7[4] = self;
    [transitionCoordinator2 animateAlongsideTransition:v7 completion:0];
  }

  else
  {
    [(AVPlayerViewController *)self _updateViewControllerPreferencesIfNeeded];
  }
}

- (void)playbackControlsView:(id)view animateAlongsideVisibilityAnimationsWithAnimationCoordinator:(id)coordinator appearingViews:(id)views disappearingViews:(id)disappearingViews
{
  coordinatorCopy = coordinator;
  disappearingViewsCopy = disappearingViews;
  viewsCopy = views;
  contentView = [(AVPlayerViewController *)self contentView];
  chromePlaybackControlsView = [contentView chromePlaybackControlsView];
  [chromePlaybackControlsView animateAlongsideVisibilityAnimationsWithAnimationCoordinator:coordinatorCopy appearingViews:viewsCopy disappearingViews:disappearingViewsCopy];

  contentView2 = [(AVPlayerViewController *)self contentView];
  chromePlaybackControlsView2 = [contentView2 chromePlaybackControlsView];
  playbackControlsContainer = [chromePlaybackControlsView2 playbackControlsContainer];

  v17 = [viewsCopy containsObject:playbackControlsContainer];
  v18 = [disappearingViewsCopy containsObject:playbackControlsContainer];

  if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewController_willTransitionToVisibilityOfPlaybackControls_withAnimationCoordinator_]&& ((v17 | v18) & 1) != 0)
  {
    delegate = [(AVPlayerViewController *)self delegate];
    [delegate playerViewController:self willTransitionToVisibilityOfPlaybackControls:v17 withAnimationCoordinator:coordinatorCopy];
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
  [coordinatorCopy addCoordinatedAnimations:v21 completion:v20];
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

- (void)playbackControlsViewDidToggleControlsVisibility:(id)visibility
{
  [(AVPlayerViewController *)self _updateAnalysisButtonBottomInsetIfNeeded];

  [(AVPlayerViewController *)self _updateWantsAnalysisButtonVisibleStateIfNeeded];
}

- (void)playbackControlsViewNeedsUpdateStatusBarAppearance:(id)appearance
{
  _activeViewControllerForContentView = [(AVPlayerViewController *)self _activeViewControllerForContentView];
  transitionCoordinator = [_activeViewControllerForContentView transitionCoordinator];

  if (transitionCoordinator)
  {
    transitionCoordinator2 = [_activeViewControllerForContentView transitionCoordinator];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __77__AVPlayerViewController_playbackControlsViewNeedsUpdateStatusBarAppearance___block_invoke;
    v7[3] = &unk_1E7208180;
    v7[4] = self;
    [transitionCoordinator2 animateAlongsideTransition:v7 completion:0];
  }

  else
  {
    [(AVPlayerViewController *)self _updateViewControllerPreferencesIfNeeded];
  }
}

- (void)presentationControllerDidDismiss:(id)dismiss
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

- (void)prepareForPopoverPresentation:(id)presentation
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

- (void)_updatePlayerControllerLegibleOptionsForSmartSubtitleDisplayType:(void *)type
{
  v32 = *MEMORY[0x1E69E9840];
  if (type)
  {
    [(AVPlayerViewController *)type _updateSupplementalSubtitlesIfNecessary];
    v4 = type[184];
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
          typeCopy4 = type;
          _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s DisplayTypeOnSkipForward AVPVC: %@", buf, 0x16u);
        }

        v6 = type[183];
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
          typeCopy4 = type;
          _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s DisplayTypeOnSkipBack AVPVC: %@", buf, 0x16u);
        }

        v6 = type[183];
        v7 = -10.0;
LABEL_13:
        [v6 userRequestedSeekWithTimeInterval:v7];
        return;
      }

      player = [type player];
      [player rate];
      if (v9 == 0.0)
      {
      }

      else
      {
        v10 = type[184];
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
          typeCopy4 = type;
          _os_log_impl(&dword_18B49C000, v11, OS_LOG_TYPE_DEFAULT, "%s DisplayTypeOnMute AVPVC: %@", buf, 0x16u);
        }

        v12 = type[183];
        _volumeController = [type _volumeController];
        v14 = _AVLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          player2 = [type player];
          if ([player2 isMuted])
          {
            v16 = "YES";
          }

          else
          {
            v16 = "NO";
          }

          [_volumeController volume];
          v25 = "[AVPlayerViewController _isVolumeMuted]";
          v26 = 2112;
          *buf = 136315906;
          typeCopy4 = type;
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

        player3 = [type player];
        if ([player3 isMuted])
        {
          v21 = 1;
        }

        else
        {
          [_volumeController volume];
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
  if (self)
  {
    if (!*(self + 1472))
    {
      if (([*(self + 1464) smartSubtitlesActive] & 1) != 0 || (objc_msgSend(self, "playerController"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "subtitlesActive"), v2, (v3 & 1) == 0))
      {
        v4 = _AVLog();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v6 = 136315394;
          v7 = "[AVPlayerViewController _updateSupplementalSubtitlesIfNecessary]";
          v8 = 2112;
          selfCopy = self;
          _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s AVSubtitleBehaviorUserSelectedAndPreferredLanguage subtitles active AVPVC %@", &v6, 0x16u);
        }

        playerController = [self playerController];
        [playerController setCurrentAssetMediaOption:0];
      }
    }
  }
}

- (void)pictureInPictureController:(id)controller restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  handlerCopy = handler;
  if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewController_restoreUserInterfaceForPictureInPictureStopWithCompletionHandler_])
  {
    _transitionController = [(AVPlayerViewController *)self _transitionController];
    presentationContext = [_transitionController presentationContext];
    isDismissing = [presentationContext isDismissing];

    v11 = _AVLog();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (isDismissing)
    {
      if (v12)
      {
        *buf = 136315138;
        v23 = "[AVPlayerViewController pictureInPictureController:restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:]";
        _os_log_impl(&dword_18B49C000, v11, OS_LOG_TYPE_DEFAULT, "%s PIP stopping, pending restore of user interface presentation will start after dismissal transition completes", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      objc_initWeak(&location, controllerCopy);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __118__AVPlayerViewController_pictureInPictureController_restoreUserInterfaceForPictureInPictureStopWithCompletionHandler___block_invoke;
      v17[3] = &unk_1E72080E8;
      objc_copyWeak(&v19, &location);
      objc_copyWeak(&v20, buf);
      v18 = handlerCopy;
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

      delegate = [(AVPlayerViewController *)self delegate];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __118__AVPlayerViewController_pictureInPictureController_restoreUserInterfaceForPictureInPictureStopWithCompletionHandler___block_invoke_843;
      v15[3] = &unk_1E7208560;
      v16 = handlerCopy;
      [delegate playerViewController:self restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:v15];
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

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 1);
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

- (void)pictureInPictureControllerDidStopPictureInPicture:(id)picture
{
  pictureCopy = picture;
  self->_pipStartingOrActive = 0;
  if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewControllerDidStopPictureInPicture_])
  {
    delegate = [(AVPlayerViewController *)self delegate];
    [delegate playerViewControllerDidStopPictureInPicture:self];
  }

  _behaviorStorage = [(AVPlayerViewController *)self _behaviorStorage];
  [_behaviorStorage enumerateAllBehaviorContextsImplementingSelector:sel_didStopPictureInPicture forProtocol:&unk_1EFF32480 usingBlock:&__block_literal_global_840];

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

    presentationState = [*(result + 1136) presentationState];
    playerController = [v3 playerController];
    isPlayingOnExternalScreen = [playerController isPlayingOnExternalScreen];

    showsVisualLookup = [v3 showsVisualLookup];
    canHidePlaybackControls = [v3 canHidePlaybackControls];
    if (showsVisualLookup)
    {
      v10 = 1;
    }

    else
    {
      v10 = [v3 showsPlaybackControls] ^ 1;
      if ((v10 & 1) == 0 && presentationState == 2)
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

    v12 = v4 & (canHidePlaybackControls & ~isPlayingOnExternalScreen | v11);
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

- (void)pictureInPictureControllerWillStopPictureInPicture:(id)picture
{
  if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewControllerWillStopPictureInPicture_])
  {
    delegate = [(AVPlayerViewController *)self delegate];
    [delegate playerViewControllerWillStopPictureInPicture:self];
  }
}

- (void)pictureInPictureController:(id)controller failedToStartPictureInPictureWithError:(id)error
{
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  errorCopy = error;
  self->_pipStartingOrActive = 0;
  v8 = _AVLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    localizedDescription = [errorCopy localizedDescription];
    *buf = 136315394;
    v16 = "[AVPlayerViewController pictureInPictureController:failedToStartPictureInPictureWithError:]";
    v17 = 2112;
    v18 = localizedDescription;
    _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s Failed to start PIP with error: '%@'", buf, 0x16u);
  }

  if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewController_failedToStartPictureInPictureWithError_])
  {
    delegate = [(AVPlayerViewController *)self delegate];
    [delegate playerViewController:self failedToStartPictureInPictureWithError:errorCopy];
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

- (void)pictureInPictureControllerDidStartPictureInPicture:(id)picture
{
  pictureCopy = picture;
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
    delegate = [(AVPlayerViewController *)self delegate];
    [delegate playerViewControllerDidStartPictureInPicture:self];
  }

  if (![(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewControllerShouldAutomaticallyDismissAtPictureInPictureStart_])
  {
    isPresentingFullScreenFromInline = [(AVPlayerViewController *)self isPresentingFullScreenFromInline];
    goto LABEL_9;
  }

  delegate2 = [(AVPlayerViewController *)self delegate];
  v11 = [delegate2 playerViewControllerShouldAutomaticallyDismissAtPictureInPictureStart:self];

  isPresentingFullScreenFromInline2 = [(AVPlayerViewController *)self isPresentingFullScreenFromInline];
  isPresentingFullScreenFromInline = isPresentingFullScreenFromInline2;
  if (v11)
  {
LABEL_9:
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __77__AVPlayerViewController_pictureInPictureControllerDidStartPictureInPicture___block_invoke_2;
    aBlock[3] = &unk_1E72080C0;
    objc_copyWeak(v20, &location);
    v21 = isPresentingFullScreenFromInline;
    v20[1] = v8;
    v14 = _Block_copy(aBlock);
    presentationContext = [(AVTransitionController *)self->_transitionController presentationContext];
    isPresenting = [presentationContext isPresenting];

    if (isPresenting)
    {
      [(AVPlayerViewController *)self setDismissForPIPStartAfterPresentationHandler:v14];
    }

    else
    {
      presentationContext2 = [(AVTransitionController *)self->_transitionController presentationContext];
      isDismissing = [presentationContext2 isDismissing];

      if (isDismissing)
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

  if (isPresentingFullScreenFromInline2)
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

- (void)pictureInPictureControllerWillStartPictureInPicture:(id)picture
{
  pictureCopy = picture;
  self->_pipStartingOrActive = 1;
  _behaviorStorage = [(AVPlayerViewController *)self _behaviorStorage];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __78__AVPlayerViewController_pictureInPictureControllerWillStartPictureInPicture___block_invoke;
  v19[3] = &unk_1E7208070;
  v19[4] = self;
  [_behaviorStorage enumerateAllBehaviorContextsImplementingSelector:sel_willStartPictureInPictureWithViewController_ forProtocol:&unk_1EFF32480 usingBlock:v19];

  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_mediaSelectionPopoverPresentationController);
  presentedViewController = [WeakRetained presentedViewController];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78__AVPlayerViewController_pictureInPictureControllerWillStartPictureInPicture___block_invoke_2;
  v16[3] = &unk_1E7209EA8;
  objc_copyWeak(&v17, &location);
  [presentedViewController dismissViewControllerAnimated:1 completion:v16];

  if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewControllerWillStartPictureInPicture_])
  {
    delegate = [(AVPlayerViewController *)self delegate];
    [delegate playerViewControllerWillStartPictureInPicture:self];
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

- (void)avkit_willBeginStoppingPictureInPictureForPictureInPictureViewController:(id)controller
{
  v11 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  pictureInPicturePlayerLayerView = [controllerCopy pictureInPicturePlayerLayerView];
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

    pictureInPicturePlayerLayerView2 = [controllerCopy pictureInPicturePlayerLayerView];
    playerLayer = [pictureInPicturePlayerLayerView2 playerLayer];
    [playerLayer setLegibleDisplayEnabled:0];
  }
}

- (void)avkit_endReducingResourcesForPictureInPictureViewController:(id)controller playerController:(id)playerController
{
  controllerCopy = controller;
  delegate = [(AVPlayerViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AVPlayerViewController *)self delegate];
    [delegate2 playerViewControllerEndReducingResourcesForPictureInPicture:self];
  }

  else
  {
    playerController = [(AVPlayerViewController *)self playerController];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      goto LABEL_6;
    }

    delegate2 = [(AVPlayerViewController *)self playerController];
    pictureInPicturePlayerLayerView = [controllerCopy pictureInPicturePlayerLayerView];
    playerLayer = [pictureInPicturePlayerLayerView playerLayer];
    [delegate2 endReducingResourcesForPictureInPicturePlayerLayer:playerLayer];
  }

LABEL_6:
}

- (void)avkit_beginReducingResourcesForPictureInPictureViewController:(id)controller playerController:(id)playerController
{
  controllerCopy = controller;
  delegate = [(AVPlayerViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AVPlayerViewController *)self delegate];
    [delegate2 playerViewControllerBeginReducingResourcesForPictureInPicture:self];
  }

  else
  {
    playerController = [(AVPlayerViewController *)self playerController];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      goto LABEL_6;
    }

    delegate2 = [(AVPlayerViewController *)self playerController];
    pictureInPicturePlayerLayerView = [controllerCopy pictureInPicturePlayerLayerView];
    playerLayer = [pictureInPicturePlayerLayerView playerLayer];
    [delegate2 beginReducingResourcesForPictureInPicturePlayerLayer:playerLayer];
  }

LABEL_6:
}

- (void)avkit_startRoutingVideoToPictureInPictureViewController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy loadViewIfNeeded];
  view = [controllerCopy view];

  [(AVPlayerViewController *)self videoBounds];
  [view setFrame:?];

  playerLayerView = self->_playerLayerView;

  [(__AVPlayerLayerView *)playerLayerView startRoutingVideoToPictureInPicturePlayerLayerView];
}

- (id)avkit_pictureInPictureViewController
{
  v3 = [AVPictureInPictureViewController alloc];
  pictureInPicturePlayerLayerView = [(__AVPlayerLayerView *)self->_playerLayerView pictureInPicturePlayerLayerView];
  v5 = [(AVPictureInPictureViewController *)v3 initWithPictureInPicturePlayerLayerView:pictureInPicturePlayerLayerView];

  return v5;
}

- (BOOL)avkit_isVisible
{
  contentView = [(AVPlayerViewController *)self contentView];
  [contentView bounds];
  IsEmpty = CGRectIsEmpty(v5);

  return !IsEmpty;
}

- (CGRect)avkit_videoRectInWindow
{
  contentView = [(AVPlayerViewController *)self contentView];
  window = [contentView window];
  contentView2 = [(AVPlayerViewController *)self contentView];
  [contentView2 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  contentView3 = [(AVPlayerViewController *)self contentView];
  [window convertRect:contentView3 fromView:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  playerController = [(AVPlayerViewController *)self playerController];
  LOBYTE(window) = [playerController isPlayingOnExternalScreen];

  if ((window & 1) == 0)
  {
    avkit_window = [(AVPlayerViewController *)self avkit_window];
    [(__AVPlayerLayerView *)self->_playerLayerView videoBounds];
    [avkit_window convertRect:self->_playerLayerView fromView:?];
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

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  v8 = gestureRecognizerCopy;
  if (self->_hoverGestureRecognizer == recognizerCopy)
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

  if (self->_scrubGestureRecognizer == recognizerCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    goto LABEL_10;
  }

  if (self->_tapThroughGestureRecognizer != recognizerCopy)
  {
    goto LABEL_8;
  }

  isKindOfClass = self->_singleTapGestureRecognizer == gestureRecognizerCopy;
LABEL_10:

  return isKindOfClass & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  if (self->_singleTapGestureRecognizer == recognizerCopy || self->_tapThroughGestureRecognizer == recognizerCopy)
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

  if (self->_videoGravityPinchGestureRecognizer != recognizerCopy)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
LABEL_10:

  return isKindOfClass & 1;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  scrubGestureRecognizer = [(AVPlayerViewController *)self scrubGestureRecognizer];

  if (scrubGestureRecognizer != beginCopy)
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
  showsProminentPlayButton = [v7 showsProminentPlayButton];

  showsPlaybackControls = [(AVPlayerViewController *)self showsPlaybackControls];
  result = 0;
  if (showsPlaybackControls && (showsProminentPlayButton & 1) == 0)
  {
    scrubGestureRecognizer2 = [(AVPlayerViewController *)self scrubGestureRecognizer];
    contentView = [(AVPlayerViewController *)self contentView];
    [scrubGestureRecognizer2 velocityInView:contentView];
    v13 = v12;
    v15 = v14;

    v16 = fabs(v15);
    return fabs(v13) > v16 + v16;
  }

  return result;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  if (!self)
  {
    goto LABEL_16;
  }

  if (self->_usesGlassCatalystControls)
  {
    catalystPlaybackControlsController = [(AVPlayerViewController *)self catalystPlaybackControlsController];
    if (catalystPlaybackControlsController)
    {
      v9 = catalystPlaybackControlsController;
      tapGestureRecognizersCanReceiveTouches = [catalystPlaybackControlsController tapGestureRecognizersCanReceiveTouches];

      if (!tapGestureRecognizersCanReceiveTouches)
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
    chromePlaybackControlsController = [(AVPlayerViewController *)self chromePlaybackControlsController];
    if (chromePlaybackControlsController)
    {
      v12 = chromePlaybackControlsController;
      tapGestureRecognizersCanReceiveTouches2 = [chromePlaybackControlsController tapGestureRecognizersCanReceiveTouches];

      if ((tapGestureRecognizersCanReceiveTouches2 & 1) == 0)
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
  view = [recognizerCopy view];
  view2 = [recognizerCopy view];
  [touchCopy locationInView:view2];
  v16 = [view hitTest:0 withEvent:?];

  viewIfLoaded = [(AVMobileControlsViewController *)self->_controlsViewController viewIfLoaded];
  v18 = self->_customControlsView;
  if ([v16 isDescendantOfView:viewIfLoaded] & 1) != 0 || (objc_msgSend(v16, "isDescendantOfView:", v18))
  {
    LOBYTE(self) = 0;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [recognizerCopy numberOfTapsRequired] >= 2)
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
      entersFullScreenWhenTapped = [(AVPlayerViewController *)self entersFullScreenWhenTapped];

      LOBYTE(self) = !entersFullScreenWhenTapped;
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
    isBeingPresented = 1;
  }

  else
  {
    isBeingPresented = [(AVPlayerViewController *)self isBeingPresented];
  }

  fullScreenViewController = [(AVPlayerViewController *)self fullScreenViewController];
  if ([fullScreenViewController isBeingPresented])
  {
    v5 = 1;
  }

  else
  {
    fullScreenViewController2 = [(AVPlayerViewController *)self fullScreenViewController];
    if ([fullScreenViewController2 isBeingDismissed])
    {
      v5 = 1;
    }

    else
    {
      fullScreenViewController3 = [(AVPlayerViewController *)self fullScreenViewController];
      if (fullScreenViewController3)
      {
        fullScreenViewController4 = [(AVPlayerViewController *)self fullScreenViewController];
        presentingViewController = [fullScreenViewController4 presentingViewController];
        v5 = presentingViewController == 0;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return (isBeingPresented | v5) & 1;
}

- (void)transitionController:(id)controller animationProgressDidChange:(float)change
{
  v4 = 1.0 - change;
  volumeAnimator = [(AVPlayerViewController *)self volumeAnimator];
  [volumeAnimator setProgressTowardsZero:1.0 - v4 * v4];
}

- (void)transitionController:(id)controller transitionWillComplete:(BOOL)complete continueBlock:(id)block
{
  completeCopy = complete;
  controllerCopy = controller;
  blockCopy = block;
  if (![(AVPlayerViewController *)self wantsDetachedFullscreenPresentation]|| ![(AVPlayerViewController *)self canDisplayContentInDetachedWindow])
  {
    fullScreenViewController = [(AVPlayerViewController *)self fullScreenViewController];
    if (!fullScreenViewController)
    {
LABEL_9:
      [(AVPlayerViewController *)self _setContentViewOnSelf];
      goto LABEL_10;
    }

    v11 = fullScreenViewController;
    fullScreenViewController2 = [(AVPlayerViewController *)self fullScreenViewController];
    if ([fullScreenViewController2 isBeingPresented] && !completeCopy)
    {

      goto LABEL_9;
    }

    fullScreenViewController3 = [(AVPlayerViewController *)self fullScreenViewController];
    isBeingDismissed = [fullScreenViewController3 isBeingDismissed];

    if (isBeingDismissed && completeCopy)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  if (!completeCopy)
  {
LABEL_18:
    blockCopy[2](blockCopy, 0);
    goto LABEL_19;
  }

  presentationContext = [controllerCopy presentationContext];
  if (![presentationContext isDismissing] || (-[AVPlayerViewController player](self, "player"), (v16 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_17:

    goto LABEL_18;
  }

  v17 = v16;
  presentationContext2 = [controllerCopy presentationContext];
  if (([presentationContext2 wasInitiallyInteractive] & 1) == 0)
  {

    goto LABEL_17;
  }

  presentationContext3 = [controllerCopy presentationContext];
  presentedViewController = [presentationContext3 presentedViewController];

  if (presentedViewController != self)
  {
    goto LABEL_18;
  }

  objc_initWeak(&location, self);
  player = [(AVPlayerViewController *)self player];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __84__AVPlayerViewController_transitionController_transitionWillComplete_continueBlock___block_invoke;
  v22[3] = &unk_1E7208048;
  objc_copyWeak(&v24, &location);
  v23 = blockCopy;
  [AVDismissalExpanseCoordinator coordinateDismissalWithExpanseSessionForPlayer:player cancellable:1 dismissalBlock:v22];

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
  if (!self || *(self + 1256))
  {
    return;
  }

  presentingViewController = [self presentingViewController];
  if (presentingViewController)
  {
  }

  else if (([self isPresentingFullScreenFromInline] & 1) == 0)
  {
    goto LABEL_8;
  }

  if ((*(self + 1070) & 1) == 0)
  {
    v3 = *(self + 1071) ^ 1;
    goto LABEL_10;
  }

LABEL_8:
  v3 = 0;
LABEL_10:
  playbackContentContainerView = [*(self + 1240) playbackContentContainerView];
  [playbackContentContainerView setCanShowStatusBarBackgroundGradientWhenStatusBarVisible:v3 & 1];
}

- (id)transitionControllerBackgroundViewBackgroundColor:(id)color
{
  colorCopy = color;
  presentationContext = [colorCopy presentationContext];
  wasInitiallyInteractive = [presentationContext wasInitiallyInteractive];
  if ((wasInitiallyInteractive & 1) == 0)
  {
    presentationContext2 = [colorCopy presentationContext];
    sourceView = [presentationContext2 sourceView];
    if (!sourceView)
    {
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      goto LABEL_6;
    }
  }

  clearColor = [MEMORY[0x1E69DC888] blackColor];
  if ((wasInitiallyInteractive & 1) == 0)
  {
LABEL_6:
  }

  return clearColor;
}

- (id)transitionControllerPresentedViewBackgroundColor:(id)color
{
  colorCopy = color;
  presentationContext = [colorCopy presentationContext];
  if (![presentationContext hasActiveTransition])
  {
    goto LABEL_29;
  }

  presentationContext2 = [colorCopy presentationContext];
  wasInitiallyInteractive = [presentationContext2 wasInitiallyInteractive];
  if (wasInitiallyInteractive)
  {
    if ([(AVPlayerViewController *)self _isUnsupportedContent])
    {
      goto LABEL_28;
    }
  }

  else
  {
    presentationContext3 = [colorCopy presentationContext];
    sourceView = [presentationContext3 sourceView];
    if (!sourceView || [(AVPlayerViewController *)self _isUnsupportedContent])
    {
      goto LABEL_27;
    }
  }

  playerController = [(AVPlayerViewController *)self playerController];
  [playerController contentDimensions];
  v15 = ((v12 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v12 >= 0 || (v12 - 1) < 0xFFFFFFFFFFFFFLL;
  v17 = (v11 < 0 || ((v11 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (v11 - 1) > 0xFFFFFFFFFFFFELL;
  if (v17 || !v15)
  {
LABEL_26:

    if (wasInitiallyInteractive)
    {
LABEL_28:

LABEL_29:
LABEL_30:
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      goto LABEL_31;
    }

LABEL_27:

    goto LABEL_28;
  }

  playerController2 = [(AVPlayerViewController *)self playerController];
  if ([playerController2 isPlayingOnExternalScreen])
  {

    goto LABEL_26;
  }

  isPictureInPictureActive = [(AVPlayerViewController *)self isPictureInPictureActive];

  if ((wasInitiallyInteractive & 1) == 0)
  {
  }

  if (isPictureInPictureActive)
  {
    goto LABEL_30;
  }

  blackColor = [MEMORY[0x1E69DC888] clearColor];
LABEL_31:
  v20 = blackColor;

  return v20;
}

- (BOOL)transitionControllerCanBeginInteractivePresentationTransition:(id)transition
{
  if (![(AVPlayerViewController *)self canControlPlayback]|| ![(AVPlayerViewController *)self _canEnterFullScreen])
  {
    return 0;
  }

  parentViewController = [(AVPlayerViewController *)self parentViewController];
  if (parentViewController)
  {
    _isDescendantOfRootViewController = [(AVPlayerViewController *)self _isDescendantOfRootViewController];
  }

  else
  {
    _isDescendantOfRootViewController = 0;
  }

  return _isDescendantOfRootViewController;
}

- (BOOL)transitionControllerCanBeginInteractiveDismissalTransition:(id)transition
{
  if ([(AVPlayerViewController *)self canControlPlayback])
  {
    if ([(AVPlayerViewController *)self isPresentingFullScreenFromInline])
    {
      contentView = [(AVPlayerViewController *)self contentView];
      window = [contentView window];
      windowScene = [window windowScene];
      interfaceOrientation = [windowScene interfaceOrientation];

      if (![(AVPlayerViewController *)self _isTransitioningToOrFromFullScreen])
      {
        presentationContext = [(AVPlayerViewController *)self presentationContext];
        presentingTransition = [presentationContext presentingTransition];
        if (([presentingTransition presenterSupportsOrientation:interfaceOrientation] & 1) == 0 && !+[AVPresentationContext supportsInteractiveCounterRotationDismissals](AVPresentationContext, "supportsInteractiveCounterRotationDismissals"))
        {
          _modalPresentationStyleIsFullScreen = 0;
          goto LABEL_15;
        }

        WeakRetained = objc_loadWeakRetained(&self->_mediaSelectionPopoverPresentationController);
        presentedViewController = [(AVPlayerViewController *)WeakRetained presentedViewController];
        _modalPresentationStyleIsFullScreen = presentedViewController == 0;

LABEL_7:
LABEL_15:

        goto LABEL_16;
      }
    }

    else if (![(AVPlayerViewController *)self _isTransitioningToOrFromFullScreen]&& [(AVPlayerViewController *)self _isDescendantOfRootViewController])
    {
      presentedViewController2 = [(AVPlayerViewController *)self presentedViewController];
      if (presentedViewController2)
      {
        presentationContext = presentedViewController2;
        _modalPresentationStyleIsFullScreen = 0;
LABEL_16:

        return _modalPresentationStyleIsFullScreen;
      }

      presentingTransition = [(AVPlayerViewController *)self presentingViewController];
      WeakRetained = [presentingTransition presentedViewController];
      if (WeakRetained == self)
      {
        _modalPresentationStyleIsFullScreen = [(AVPlayerViewController *)self _modalPresentationStyleIsFullScreen];
        presentationContext = 0;
      }

      else
      {
        presentationContext = 0;
        _modalPresentationStyleIsFullScreen = 0;
      }

      goto LABEL_7;
    }
  }

  return 0;
}

- (void)transitionControllerBeginInteractivePresentationTransition:(id)transition
{
  viewIfLoaded = [(AVPlayerViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  if (window)
  {

    [(AVPlayerViewController *)self _transitionToFullScreenAnimated:1 interactive:1 completionHandler:&__block_literal_global_810];
  }
}

- (void)transitionController:(id)controller prepareForFinishingInteractiveTransition:(id)transition
{
  transitionCopy = transition;
  if (![(AVPlayerViewController *)self isPresentingFullScreenFromInline])
  {
    goto LABEL_5;
  }

  fullScreenViewController = [(AVPlayerViewController *)self fullScreenViewController];
  if (([fullScreenViewController isBeingPresented] & 1) != 0 || -[AVPlayerViewController isPictureInPictureActive](self, "isPictureInPictureActive"))
  {

LABEL_5:
    [(AVPlayerViewController *)self setFinishPreparingForInteractiveDismissalHandler:0];
    transitionCopy[2]();
    goto LABEL_6;
  }

  v6 = [(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewController_shouldExitFullScreenWithReason_];

  if (!v6)
  {
    goto LABEL_5;
  }

  [(AVPlayerViewController *)self setFinishPreparingForInteractiveDismissalHandler:transitionCopy];
  delegate = [(AVPlayerViewController *)self delegate];
  v8 = [delegate playerViewController:self shouldExitFullScreenWithReason:2];

  if (v8)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (id)transitionController:(id)controller targetViewForDismissingViewController:(id)viewController
{
  viewControllerCopy = viewController;
  presentationContext = [controller presentationContext];
  sourceView = [presentationContext sourceView];

  if (viewControllerCopy == self)
  {
    if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewController_targetViewForDismissalAnimationWithProposedTargetView_])
    {
      delegate = [(AVPlayerViewController *)self delegate];
      v12 = [delegate playerViewController:self targetViewForDismissalAnimationWithProposedTargetView:sourceView];

      sourceView = v12;
    }
  }

  else
  {
    view = [(AVPlayerViewController *)self view];

    if (sourceView != view)
    {
      v10 = _AVLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_error_impl(&dword_18B49C000, v10, OS_LOG_TYPE_ERROR, "Target view should be our own view when the full screen view controller is being transitioned!", v14, 2u);
      }
    }
  }

  return sourceView;
}

- (void)transitionController:(id)controller willBeginDismissingViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  _shouldPausePlaybackWhenExitingFullscreen = [(AVPlayerViewController *)self _shouldPausePlaybackWhenExitingFullscreen];
  v9 = [AVPlayerControllerVolumeAnimator alloc];
  playerController = [(AVPlayerViewController *)self playerController];
  v11 = [(AVPlayerControllerVolumeAnimator *)v9 initWithPlayerController:playerController];

  if (!_shouldPausePlaybackWhenExitingFullscreen)
  {
    if (![(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewControllerShouldMuteVolumeForFullScreenDismissalTransition_])
    {
      goto LABEL_8;
    }

LABEL_6:
    delegate = [(AVPlayerViewController *)self delegate];
    v14 = [delegate playerViewControllerShouldMuteVolumeForFullScreenDismissalTransition:self];

    if ((v14 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  canAnimateVolumeTowardsZero = [(AVPlayerControllerVolumeAnimator *)v11 canAnimateVolumeTowardsZero];
  if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewControllerShouldMuteVolumeForFullScreenDismissalTransition_])
  {
    goto LABEL_6;
  }

  if (canAnimateVolumeTowardsZero)
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
  transitionCoordinator = [viewControllerCopy transitionCoordinator];
  if ([transitionCoordinator isInteractive])
  {
    [v15 setPlayerViewControllerIsBeingTransitionedWithResizing:1];
  }

  else
  {
    presentationContext = [controllerCopy presentationContext];
    sourceView = [presentationContext sourceView];
    [v15 setPlayerViewControllerIsBeingTransitionedWithResizing:sourceView != 0];
  }

  presentationContext2 = [controllerCopy presentationContext];
  sourceView2 = [presentationContext2 sourceView];

  if (sourceView2)
  {
    controlsViewController = [(AVPlayerViewController *)self controlsViewController];
    [sourceView2 bounds];
    v23 = v22;
    v25 = v24;
    transitionCoordinator2 = [(AVPlayerViewController *)self transitionCoordinator];
    [controlsViewController viewWillTransitionToSize:transitionCoordinator2 withTransitionCoordinator:{v23, v25}];
  }

  objc_initWeak(&location, self);
  transitionCoordinator3 = [viewControllerCopy transitionCoordinator];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __81__AVPlayerViewController_transitionController_willBeginDismissingViewController___block_invoke;
  v31[3] = &unk_1E7208000;
  objc_copyWeak(&v33, &location);
  v34 = _shouldPausePlaybackWhenExitingFullscreen;
  v31[4] = self;
  v28 = v11;
  v32 = v28;
  [transitionCoordinator3 animateAlongsideTransition:0 completion:v31];

  if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewController_willEndFullScreenPresentationWithAnimationCoordinator_])
  {
    delegate2 = [(AVPlayerViewController *)self delegate];
    transitionCoordinator4 = [viewControllerCopy transitionCoordinator];
    [delegate2 playerViewController:self willEndFullScreenPresentationWithAnimationCoordinator:transitionCoordinator4];
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

- (void)transitionController:(id)controller willBeginPresentingViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  fullScreenViewController = [(AVPlayerViewController *)self fullScreenViewController];

  if (fullScreenViewController == viewControllerCopy)
  {
    [(AVPresentationContainerView *)self->_playerViewControllerView setWantsAppearanceConfigValues:1];
    appearanceProxy = [(AVPresentationContainerView *)self->_playerViewControllerView appearanceProxy];
    [appearanceProxy setActualView:0];

    fullScreenViewController2 = [(AVPlayerViewController *)self fullScreenViewController];
    [fullScreenViewController2 setDelegate:self];

    presentationContext = [(AVPlayerViewController *)self presentationContext];
    [presentationContext setAllowsSecondWindowPresentations:{-[AVPlayerViewController wasInitializedUsingWebKitSPI](self, "wasInitializedUsingWebKitSPI") ^ 1}];
  }

  presentationContext2 = [controllerCopy presentationContext];
  sourceView = [presentationContext2 sourceView];

  if (sourceView)
  {
    controlsViewController = [(AVPlayerViewController *)self controlsViewController];
    [sourceView bounds];
    v16 = v15;
    v18 = v17;
    transitionCoordinator = [(AVPlayerViewController *)self transitionCoordinator];
    [controlsViewController viewWillTransitionToSize:transitionCoordinator withTransitionCoordinator:{v16, v18}];
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
  transitionCoordinator2 = [viewControllerCopy transitionCoordinator];
  if ([transitionCoordinator2 isInteractive])
  {
    [v20 setPlayerViewControllerIsBeingTransitionedWithResizing:1];
  }

  else
  {
    presentationContext3 = [controllerCopy presentationContext];
    sourceView2 = [presentationContext3 sourceView];
    [v20 setPlayerViewControllerIsBeingTransitionedWithResizing:sourceView2 != 0];
  }

  transitionCoordinator3 = [viewControllerCopy transitionCoordinator];
  v28 = MEMORY[0x1E69E9820];
  v29 = 3221225472;
  v30 = __81__AVPlayerViewController_transitionController_willBeginPresentingViewController___block_invoke;
  v31 = &unk_1E7207FD8;
  selfCopy = self;
  v25 = viewControllerCopy;
  v33 = v25;
  [transitionCoordinator3 animateAlongsideTransition:0 completion:&v28];

  if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewController_willBeginFullScreenPresentationWithAnimationCoordinator_, v28, v29, v30, v31, selfCopy])
  {
    delegate = [(AVPlayerViewController *)self delegate];
    transitionCoordinator4 = [v25 transitionCoordinator];
    [delegate playerViewController:self willBeginFullScreenPresentationWithAnimationCoordinator:transitionCoordinator4];
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

- (BOOL)transitionController:(id)controller gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  presentationContext = [(AVPlayerViewController *)self presentationContext];

  if (!presentationContext || (-[AVPlayerViewController presentationContext](self, "presentationContext"), v10 = objc_claimAutoreleasedReturnValue(), [v10 presentedViewController], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "transitioningDelegate"), v12 = objc_claimAutoreleasedReturnValue(), -[AVPlayerViewController _avkitPreferredTransitioningDelegate](self, "_avkitPreferredTransitioningDelegate"), v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v11, v10, v12 == v13))
  {
    if (![(AVPlayerViewController *)self _isTrackingUserInteractionWithInteractiveView])
    {
      view = [recognizerCopy view];
      contentView = [(AVPlayerViewController *)self contentView];

      if (view != contentView)
      {
        view2 = [touchCopy view];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          isKindOfClass = 0;
LABEL_24:

          goto LABEL_25;
        }

        view3 = [touchCopy view];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          view4 = [touchCopy view];
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
      view2 = [touchCopy view];
      view3 = [(AVPlayerViewController *)self _actualContentOverlayView];
      v20 = [view2 isDescendantOfView:view3];
      if (usesGlassCatalystControls)
      {
        if ((v20 & 1) == 0)
        {
          view4 = [(AVPlayerViewController *)self contentView];
          view5 = [touchCopy view];
          if ([view4 isViewDescendantOfPlaybackControlsSubview:view5])
          {
            view6 = [touchCopy view];
            contentView2 = [(AVPlayerViewController *)self contentView];
            glassPlaybackControlsView = [contentView2 glassPlaybackControlsView];
LABEL_19:
            v25 = glassPlaybackControlsView;
            prominentPlayButtonContainerView = [glassPlaybackControlsView prominentPlayButtonContainerView];
            isKindOfClass = [view6 isDescendantOfView:prominentPlayButtonContainerView];

LABEL_21:
            goto LABEL_22;
          }

          goto LABEL_20;
        }
      }

      else if ((v20 & 1) == 0)
      {
        view4 = [(AVPlayerViewController *)self contentView];
        view5 = [touchCopy view];
        if ([view4 isViewDescendantOfPlaybackControlsSubview:view5])
        {
          view6 = [touchCopy view];
          contentView2 = [(AVPlayerViewController *)self contentView];
          glassPlaybackControlsView = [contentView2 chromePlaybackControlsView];
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

- (id)transitionController:(id)controller configurationForPresentedViewController:(id)viewController presentingViewController:(id)presentingViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  presentingViewControllerCopy = presentingViewController;
  if (viewControllerCopy == self || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
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
  if (self)
  {
    delegate = [self delegate];
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      delegate2 = [self delegate];
      [delegate2 playerViewControllerWillPerformAnalysisCalloutAction:self];
    }
  }
}

- (void)visualAnalysisViewDidUpdateVisualLookupAvailability:(id)availability
{
  availabilityCopy = availability;
  v4 = +[AVKitGlobalSettings shared];
  extendedVisualAnalysisEnabled = [v4 extendedVisualAnalysisEnabled];

  if (extendedVisualAnalysisEnabled)
  {
    hasVisualLookupResults = [availabilityCopy hasVisualLookupResults];
    controlsViewControllerIfChromeless = [(AVMobileControlsViewController *)self->_controlsViewController controlsViewControllerIfChromeless];
    [controlsViewControllerIfChromeless setShowsVisualLookupControl:hasVisualLookupResults];

    controlsViewControllerIfGlass = [(AVMobileControlsViewController *)self->_controlsViewController controlsViewControllerIfGlass];
    [controlsViewControllerIfGlass setShowsVisualLookupControl:hasVisualLookupResults];

    [(AVPlayerViewController *)self _setupToggleVisualLookupActionIfNeeded];
    [(UIAction *)self->_toggleLookupAction setState:self->_showsVisualLookup];
    [(UIAction *)self->_toggleLookupAction setAttributes:[(UIAction *)self->_toggleLookupAction attributes]& 0xFFFFFFFFFFFFFFFELL | [(AVVisualAnalysisView *)self->_analysisView hasVisualLookupResults]^ 1];
  }
}

- (void)_setupToggleVisualLookupActionIfNeeded
{
  if (self)
  {
    v2 = +[AVKitGlobalSettings shared];
    extendedVisualAnalysisEnabled = [v2 extendedVisualAnalysisEnabled];

    if (extendedVisualAnalysisEnabled)
    {
      objc_initWeak(&location, self);
      v4 = MEMORY[0x1E69DC628];
      v5 = AVLocalizedString(@"OVERFLOW_MENU_VISUAL_LOOKUP");
      v6 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"info.circle.and.sparkles"];
      v9 = MEMORY[0x1E69E9820];
      v10 = 3221225472;
      v11 = __64__AVPlayerViewController__setupToggleVisualLookupActionIfNeeded__block_invoke;
      v12 = &unk_1E7209230;
      objc_copyWeak(&v13, &location);
      v7 = [v4 actionWithTitle:v5 image:v6 identifier:0 handler:&v9];
      v8 = *(self + 1120);
      *(self + 1120) = v7;

      [*(self + 1120) setAttributes:{objc_msgSend(*(self + 1120), "attributes") & 0xFFFFFFFFFFFFFFFELL | objc_msgSend(*(self + 1800), "hasVisualLookupResults", v9, v10, v11, v12) ^ 1}];
      [*(self + 1120) setState:*(self + 1520)];
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

- (void)visualAnalysisViewDidUpdateSubjectAvailability:(id)availability
{
  availabilityCopy = availability;
  v4 = +[AVKitGlobalSettings shared];
  subjectLiftGestureEnabled = [v4 subjectLiftGestureEnabled];

  if ((subjectLiftGestureEnabled & 1) == 0)
  {
    controlsViewControllerIfChromeless = [(AVMobileControlsViewController *)self->_controlsViewController controlsViewControllerIfChromeless];
    [controlsViewControllerIfChromeless setShowsCopySubjectControl:{objc_msgSend(availabilityCopy, "hasSubjectToCopy")}];

    controlsViewControllerIfGlass = [(AVMobileControlsViewController *)self->_controlsViewController controlsViewControllerIfGlass];
    [controlsViewControllerIfGlass setShowsCopySubjectControl:{objc_msgSend(availabilityCopy, "hasSubjectToCopy")}];
  }
}

- (void)_updateShowsAnalysisControl
{
  if (self)
  {
    controlsViewControllerIfChromeless = [*(self + 1248) controlsViewControllerIfChromeless];
    controlsViewControllerIfGlass = [*(self + 1248) controlsViewControllerIfGlass];
    controlsViewControllerIfCatalystGlass = [*(self + 1248) controlsViewControllerIfCatalystGlass];
    v4 = *(self + 1256);
    allowsVideoFrameAnalysis = [self allowsVideoFrameAnalysis];
    showsAnalysisButtonIfAvailable = [self showsAnalysisButtonIfAvailable];
    v7 = *(self + 1800);
    hasProminentText = [v7 hasProminentText];
    if (allowsVideoFrameAnalysis)
    {
      v9 = !v4 || v7 == 0;
      if (!v9 && controlsViewControllerIfChromeless | controlsViewControllerIfGlass | controlsViewControllerIfCatalystGlass)
      {
        [controlsViewControllerIfChromeless setShowsAnalysisControl:showsAnalysisButtonIfAvailable & hasProminentText];
        [controlsViewControllerIfGlass setShowsAnalysisControl:showsAnalysisButtonIfAvailable & hasProminentText];
        [controlsViewControllerIfCatalystGlass setShowsAnalysisControl:showsAnalysisButtonIfAvailable & hasProminentText];
      }
    }
  }
}

- (void)visualAnalysisView:(id)view prepareForCalloutAction:(SEL)action completion:(id)completion
{
  completionCopy = completion;
  [(AVPlayerViewController *)self _notifyDelegateOfAnalysisCalloutAction];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__AVPlayerViewController_visualAnalysisView_prepareForCalloutAction_completion___block_invoke;
  block[3] = &unk_1E72099C8;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)visualAnalysisViewDidPressAnalysisButton:(id)button
{
  buttonCopy = button;
  if (self && self->_controlsGeneration)
  {
    [(AVPlayerViewController *)self _updateControlsVisibilityPolicyAnimated:?];
  }

  [(AVControlsViewController *)self->_controlsViewController toggleVisibility:self];
  contentView = [(AVPlayerViewController *)self contentView];
  playbackContentContainerView = [contentView playbackContentContainerView];
  [playbackContentContainerView setClipsToBounds:{objc_msgSend(buttonCopy, "highlightsInteractableAreas")}];
}

- (void)videoFrameVisualAnalyzerFailedAnalyzingVideoFrame:(id)frame withError:(id)error
{
  currentInternalImageAnalysis = self->_currentInternalImageAnalysis;
  self->_currentInternalImageAnalysis = 0;

  [(AVPlayerViewController *)&self->super.super.super.isa _updateAnalysisViewImageAnalysis];
}

- (void)_updateAnalysisViewImageAnalysis
{
  if (self)
  {
    _currentAnalysis = [(AVPlayerViewController *)self _currentAnalysis];
    if ([self allowsVideoFrameAnalysis])
    {
      [self[225] setAnalysis:_currentAnalysis];
    }
  }
}

- (id)_currentAnalysis
{
  if (self)
  {
    v2 = *(self + 1104);
    v3 = *(self + 1584);
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

- (void)videoFrameVisualAnalyzerDidFinishAnalyzingVideoFrame:(id)frame withAnalysis:(id)analysis
{
  objc_storeStrong(&self->_currentInternalImageAnalysis, analysis);
  [(AVPlayerViewController *)self _setUpVisualAnalysisViewIfNeeded];

  [(AVPlayerViewController *)&self->super.super.super.isa _updateAnalysisViewImageAnalysis];
}

- (void)_setUpVisualAnalysisViewIfNeeded
{
  if (self)
  {
    if (!*(self + 1800))
    {
      _currentAnalysis = [(AVPlayerViewController *)self _currentAnalysis];
      if (_currentAnalysis)
      {
        v3 = _currentAnalysis;
        hasPerformedInitialSetup = [self hasPerformedInitialSetup];

        if (hasPerformedInitialSetup)
        {
          [self willChangeValueForKey:@"analysisView"];
          v5 = [AVVisualAnalysisView alloc];
          v6 = [(AVVisualAnalysisView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
          v7 = *(self + 1800);
          *(self + 1800) = v6;

          [self didChangeValueForKey:@"analysisView"];
          [*(self + 1800) setDelegate:self];
          [(AVPlayerViewController *)self _updateAnalysisViewSuperview];
          [(AVPlayerViewController *)self _updateAnalysisViewImageAnalysis];
          [(AVPlayerViewController *)self _updateWantsAnalysisButtonVisibleStateIfNeeded];
          [(AVPlayerViewController *)self _updateAnalysisButtonBottomInsetIfNeeded];
          [(AVPlayerViewController *)self _updateVisualAnalysisViewHiddenState];
          [(AVPlayerViewController *)self _updateShowsAnalysisControl];
          [(AVPlayerViewController *)self _updateVisualAnalysisViewActiveInteractionTypes];
          if (*(self + 1552) == 1)
          {
            v8 = 30;
          }

          else
          {
            v8 = *(self + 1552);
          }

          v9 = *(self + 1192);

          [v9 setVideoFrameAnalysisTypes:v8];
        }
      }
    }
  }
}

- (void)_updateAnalysisViewSuperview
{
  if (self)
  {
    contentView = [self contentView];
    playbackContentContainerView = [contentView playbackContentContainerView];
    activeContentView = [playbackContentContainerView activeContentView];
    [activeContentView setVisualAnalysisView:self[225]];
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

- (BOOL)observesMediaSelectionForSmartSubtitlesController:(id)controller
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

- (UIEdgeInsets)playerViewControllerContentViewEdgeInsetsForLetterboxedVideo:(id)video
{
  videoCopy = video;
  playerController = [(AVPlayerViewController *)self playerController];
  [playerController contentDimensions];
  v7 = v6;
  v9 = v8;

  if ([(AVPlayerViewController *)self isPresentedFullScreen]|| [(AVPlayerViewController *)self isPresentingFullScreenFromInline]|| [(AVPlayerViewController *)self _isTransitioningToOrFromFullScreen])
  {
    playerController2 = [(AVPlayerViewController *)self playerController];
    if ([playerController2 isPlayingOnExternalScreen])
    {
LABEL_41:

      goto LABEL_42;
    }

    traitCollection = [videoCopy traitCollection];
    [traitCollection displayCornerRadius];
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
      window = [videoCopy window];
      v19 = window;
      if (window)
      {
        playerController2 = window;
      }

      else
      {
        presentationContext = [(AVPlayerViewController *)self presentationContext];
        playerController2 = [presentationContext presentationWindow];
      }

      presentationContext2 = [(AVPlayerViewController *)self presentationContext];
      traitCollection = [presentationContext2 currentTransition];

      presentationContext3 = [(AVPlayerViewController *)self presentationContext];
      if ([presentationContext3 hasActiveTransition])
      {
        _windowInterfaceOrientation = [playerController2 _windowInterfaceOrientation];
        if (_windowInterfaceOrientation == [traitCollection finalInterfaceOrientation])
        {
          [videoCopy bounds];
          Width = CGRectGetWidth(v46);
          [playerController2 bounds];
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
        [playerController2 bounds];
        UIRectGetCenter();
        [AVCacheLargestInscribedRectInBoundingPath getLargestInscribableRectForView:"getLargestInscribableRectForView:withCenter:aspectRatio:" withCenter:playerController2 aspectRatio:?];
        x = v48.origin.x;
        y = v48.origin.y;
        v29 = v48.size.width;
        v30 = v48.size.height;
        if (CGRectIsNull(v48))
        {
          traitCollection2 = [playerController2 traitCollection];
          userInterfaceIdiom = [traitCollection2 userInterfaceIdiom];

          if (!userInterfaceIdiom)
          {
            layoutClass = [videoCopy layoutClass];
            [layoutClass unsignedIntegerValue];
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
    contentView = [result contentView];
    isInAScrollView = [contentView isInAScrollView];

    if (v2)
    {
      v5 = ([(AVPlayerViewController *)v1 _contentTabsVisible]| isInAScrollView) ^ 1;
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
  if (!self)
  {
    return 0;
  }

  _contentTabPresentationContext = [(AVPlayerViewController *)self _contentTabPresentationContext];
  v2 = _contentTabPresentationContext;
  if (_contentTabPresentationContext)
  {
    if ([_contentTabPresentationContext state])
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
  if (self)
  {
    controlsViewControllerIfChromeless = [*(self + 1248) controlsViewControllerIfChromeless];
    contentTabPresentationContext = [controlsViewControllerIfChromeless contentTabPresentationContext];

    if (!contentTabPresentationContext)
    {
      controlsViewControllerIfGlass = [*(self + 1248) controlsViewControllerIfGlass];
      contentTabPresentationContext = [controlsViewControllerIfGlass contentTabPresentationContext];
    }
  }

  else
  {
    contentTabPresentationContext = 0;
  }

  return contentTabPresentationContext;
}

- (void)playerViewControllerContentView:(id)view didMoveToWindow:(id)window
{
  v10 = *MEMORY[0x1E69E9840];
  if (self)
  {
    [(AVPlayerViewController *)self _updateControlsViewControllerPerformanceState];
    [(AVPlayerViewController *)self performInitialSetupIfNeededAndPossible];
    [(AVPlayerViewController *)self _updatePlayerControllerInspectionState];
    window = [(AVPlayerViewControllerContentView *)self->_playerViewControllerContentView window];
    isActive = [(AVSecondScreenConnection *)self->_secondScreenConnection isActive];
    if (window || !isActive)
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

- (void)chromelessControlsViewController:(id)controller didSelectSetting:(id)setting forSelector:(id)selector
{
  settingCopy = setting;
  selectorCopy = selector;
  delegate = [(AVPlayerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate playerViewController:self didSelectMediaPresentationSetting:settingCopy forMediaPresentationSelector:selectorCopy];
  }
}

- (void)controlsViewControllerDidPressLiveTextButton:(id)button
{
  if (self)
  {
    v4 = [(AVVisualAnalysisView *)self->_analysisView highlightsInteractableAreas]^ 1;
    analysisView = self->_analysisView;

    [(AVVisualAnalysisView *)analysisView setHighlightsInteractableAreas:v4];
  }
}

- ($175F2685EF764341F5DD80B75CC65478)controlsViewController:(id)controller contentTabPresentationInfoWithPreferredHeight:(double)height
{
  controllerCopy = controller;
  playerLayerView = [(AVPlayerViewController *)self playerLayerView];
  viewIfLoaded = [controllerCopy viewIfLoaded];

  v9 = 0;
  if (playerLayerView && viewIfLoaded)
  {
    v10 = 0.0;
    if (self->_playerViewControllerContentView)
    {
      [viewIfLoaded bounds];
      v12 = v11;
      [(AVPlayerViewController *)self _availableSpaceForContentTabWithVideoDodgingForSize:v13, v11];
      v15 = heightCopy;
      v16 = v12 * 0.5;
      if ((vabds_f32(v15, v16) < 0.00000011921 || v15 < v16) && heightCopy >= height)
      {
        heightCopy = height;
      }

      v9 = 1;
      if (heightCopy >= v12 * 0.75)
      {
        heightCopy = v12 * 0.75;
      }

      v10 = heightCopy;
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

- (id)controlsViewController:(id)controller displayNameForMediaSelectionOption:(id)option
{
  optionCopy = option;
  if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewController_displayNameForMediaSelectionOption_])
  {
    delegate = [(AVPlayerViewController *)self delegate];
    v7 = [delegate playerViewController:self displayNameForMediaSelectionOption:optionCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)controlsViewControllerDidUpdateLayoutGuides:(id)guides
{
  contentView = [(AVPlayerViewController *)self contentView];
  [contentView updateCustomControlsViewLayoutGuides];
}

- (void)controlsViewController:(id)controller willBeginUpdatingVisibleControlsTo:(unint64_t)to withAnimationCoordinator:(id)coordinator
{
  controllerCopy = controller;
  coordinatorCopy = coordinator;
  [(AVPlayerViewController *)self _updateCustomControlsViewStateWithVisibleControlsSet:to];
  if ([(AVPlayerViewControllerCustomControlsView *)self->_customControlsView needsUpdateConstraints])
  {
    [(AVPlayerViewControllerCustomControlsView *)self->_customControlsView updateConstraintsIfNeeded];
    objc_initWeak(&location, self);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __109__AVPlayerViewController_controlsViewController_willBeginUpdatingVisibleControlsTo_withAnimationCoordinator___block_invoke;
    v14 = &unk_1E7209EA8;
    objc_copyWeak(&v15, &location);
    [coordinatorCopy addCoordinatedAnimations:&v11 completion:0];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  if ((to != 0) == ([(AVControlsViewController *)self->_controlsViewController visibleControls:v11]== 0) && [(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewController_willTransitionToVisibilityOfPlaybackControls_withAnimationCoordinator_])
  {
    delegate = [(AVPlayerViewController *)self delegate];
    [delegate playerViewController:self willTransitionToVisibilityOfPlaybackControls:to != 0 withAnimationCoordinator:coordinatorCopy];
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

- (void)_transitionFromDetachedFullScreenPresentationToInlineAnimated:(BOOL)animated completionHandler:(id)handler
{
  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_18B49C000, v4, OS_LOG_TYPE_ERROR, "Detached fullscreen is only available on Mac Catalyst.", v5, 2u);
  }
}

- (void)_transitionFromFullScreenPresentationToInlineAnimated:(BOOL)animated interactive:(BOOL)interactive completionHandler:(id)handler
{
  interactiveCopy = interactive;
  animatedCopy = animated;
  handlerCopy = handler;
  fullScreenViewController = [(AVPlayerViewController *)self fullScreenViewController];
  presentingViewController = [fullScreenViewController presentingViewController];
  if (presentingViewController)
  {
    selfCopy = [(AVPlayerViewController *)self fullScreenViewController];
  }

  else
  {
    selfCopy = self;
  }

  v12 = selfCopy;

  self->_fullscreenTransitionInProgress = 1;
  _transitionController = [(AVPlayerViewController *)self _transitionController];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __110__AVPlayerViewController__transitionFromFullScreenPresentationToInlineAnimated_interactive_completionHandler___block_invoke;
  v15[3] = &unk_1E7207FB0;
  v15[4] = self;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [_transitionController beginFullScreenDismissalOfViewController:v12 animated:animatedCopy isInteractive:interactiveCopy completion:v15];

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

- (void)_transitionFromFullScreenAnimated:(BOOL)animated interactive:(BOOL)interactive completionHandler:(id)handler
{
  interactiveCopy = interactive;
  animatedCopy = animated;
  v24[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (![(AVPlayerViewController *)self _isDescendantOfRootViewController])
  {
    NSLog(&cfstr_WarningIsTryin_0.isa, self);
  }

  v9 = [handlerCopy copy];

  [(AVPlayerViewController *)self _resetVisualAnalysisViewSelectionIfNeeded];
  if (([(AVPlayerViewController *)self isPresentingFullScreenFromInline]|| [(AVPlayerViewController *)self isPresentedFullScreen]) && ![(AVPlayerViewController *)self _isTransitioningToOrFromFullScreen])
  {
    if ([(AVPlayerViewController *)self isPresentingDetachedFullScreen])
    {
      [(AVPlayerViewController *)self _transitionFromDetachedFullScreenPresentationToInlineAnimated:animatedCopy completionHandler:v9];
    }

    else
    {
      [(AVPlayerViewController *)self _transitionFromFullScreenPresentationToInlineAnimated:animatedCopy interactive:interactiveCopy completionHandler:v9];
    }
  }

  else
  {
    presentingViewController = [(AVPlayerViewController *)self presentingViewController];
    if (!presentingViewController || interactiveCopy || [(AVPlayerViewController *)self _isTransitioningToOrFromFullScreen])
    {
    }

    else
    {
      presentingViewController2 = [(AVPlayerViewController *)self presentingViewController];
      presentedViewController = [presentingViewController2 presentedViewController];
      isBeingDismissed = [presentedViewController isBeingDismissed];

      if ((isBeingDismissed & 1) == 0)
      {
        presentingViewController3 = [(AVPlayerViewController *)self presentingViewController];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __90__AVPlayerViewController__transitionFromFullScreenAnimated_interactive_completionHandler___block_invoke;
        v21[3] = &unk_1E72099C8;
        v22 = v9;
        [presentingViewController3 dismissViewControllerAnimated:animatedCopy completion:v21];

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

- (void)_transitionToDetachedFullScreenCompletionHandler:(id)handler
{
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_18B49C000, v3, OS_LOG_TYPE_ERROR, "Detached fullscreen is only available on Mac Catalyst.", v4, 2u);
  }
}

- (void)_transitionToAttachedFullScreenAnimated:(BOOL)animated interactive:(BOOL)interactive completionHandler:(id)handler
{
  interactiveCopy = interactive;
  v31[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  contentView = [(AVPlayerViewController *)self contentView];
  canAutomaticallyZoomLetterboxVideos = [contentView canAutomaticallyZoomLetterboxVideos];

  if ((canAutomaticallyZoomLetterboxVideos & 1) == 0)
  {
    contentView2 = [(AVPlayerViewController *)self contentView];
    [contentView2 setCanAutomaticallyZoomLetterboxVideos:1];

    v11 = *MEMORY[0x1E69874E8];
    [(AVPlayerViewController *)self setVideoGravity:*MEMORY[0x1E69874E8] forLayoutClass:1];
    [(AVPlayerViewController *)self setVideoGravity:v11 forLayoutClass:2];
  }

  v12 = objc_alloc_init(AVFullScreenViewController);
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  if ([bundleIdentifier isEqualToString:@"com.apple.SafariViewService"])
  {
    v15 = 5;
  }

  else
  {
    mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier2 = [mainBundle2 bundleIdentifier];
    if ([bundleIdentifier2 isEqualToString:@"com.apple.WebSheet"])
    {
      v15 = 5;
    }

    else
    {
      v15 = 0;
    }
  }

  [(AVFullScreenViewController *)v12 setModalPresentationStyle:v15];
  _transitionController = [(AVPlayerViewController *)self _transitionController];
  [(AVFullScreenViewController *)v12 setTransitioningDelegate:_transitionController];

  [(AVFullScreenViewController *)v12 setDelegate:self];
  v19 = +[AVKitGlobalSettings shared];
  constrainedHDREnabled = [v19 constrainedHDREnabled];

  if (constrainedHDREnabled)
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
  _transitionController2 = [(AVPlayerViewController *)self _transitionController];
  view = [(AVPlayerViewController *)self view];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __96__AVPlayerViewController__transitionToAttachedFullScreenAnimated_interactive_completionHandler___block_invoke_2;
  v26[3] = &unk_1E7207FB0;
  v26[4] = self;
  v27 = handlerCopy;
  v25 = handlerCopy;
  [_transitionController2 beginFullScreenPresentationOfViewController:v12 fromView:view isInteractive:interactiveCopy completion:v26];

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

- (void)_updatePreferredDynamicRangeForAutomaticModeWithHeadroomUsage:(void *)usage
{
  v17 = *MEMORY[0x1E69E9840];
  if (usage)
  {
    v10 = +[AVKitGlobalSettings shared];
    if ([v10 constrainedHDREnabled])
    {
      preferredDisplayDynamicRange = [usage preferredDisplayDynamicRange];

      if (!preferredDisplayDynamicRange)
      {
        v5 = [(AVPlayerViewController *)usage _preferredDynamicRangeForAutomaticModeWithHeadroomUsage:a2];
        playerLayerView = [usage playerLayerView];
        playerLayer = [playerLayerView playerLayer];

        v8 = _AVLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [playerLayer description];
          *buf = 136315650;
          v12 = "[AVPlayerViewController _updatePreferredDynamicRangeForAutomaticModeWithHeadroomUsage:]";
          v13 = 2112;
          v14 = v5;
          v15 = 2112;
          v16 = v9;
          _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s Setting dynamic range: %@, on playerLayer: %@", buf, 0x20u);
        }

        [playerLayer setPreferredDynamicRange:v5];
      }
    }

    else
    {
    }
  }
}

- (id)_preferredDynamicRangeForAutomaticModeWithHeadroomUsage:(id *)usage
{
  temporarilyVisible = [usage[156] temporarilyVisible];
  v5 = *MEMORY[0x1E69792A0];
  if ((a2 != 1) | temporarilyVisible & 1)
  {
    v6 = *MEMORY[0x1E6979298];
  }

  else
  {
    v6 = *MEMORY[0x1E69792A0];
  }

  v7 = v6;
  v8 = +[AVKitGlobalSettings shared];
  unconstrainedHDRForFullscreenEnabled = [v8 unconstrainedHDRForFullscreenEnabled];

  if (unconstrainedHDRForFullscreenEnabled)
  {
    if ((temporarilyVisible & 1) == 0)
    {
      _fullScreenController = [usage _fullScreenController];
      presentationState = [_fullScreenController presentationState];

      if (presentationState <= 1)
      {
        v12 = v5;

        v7 = v12;
      }
    }
  }

  return v7;
}

- (void)_transitionToFullScreenAnimated:(BOOL)animated interactive:(BOOL)interactive completionHandler:(id)handler
{
  interactiveCopy = interactive;
  animatedCopy = animated;
  v22[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (![(AVPlayerViewController *)self _isDescendantOfRootViewController])
  {
    NSLog(&cfstr_WarningIsTryin.isa, self);
  }

  if ([(AVPlayerViewController *)self isPresentingFullScreenFromInline]|| [(AVPlayerViewController *)self isPresentedFullScreen]|| [(AVPlayerViewController *)self _isTransitioningToOrFromFullScreen])
  {
    if (!handlerCopy)
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
    handlerCopy[2](handlerCopy, 0, v14);

    v15 = handlerCopy;
  }

  else
  {
    objc_initWeak(&location, self);
    WeakRetained = objc_loadWeakRetained(&self->_mediaSelectionPopoverPresentationController);
    presentedViewController = [WeakRetained presentedViewController];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __88__AVPlayerViewController__transitionToFullScreenAnimated_interactive_completionHandler___block_invoke;
    v18[3] = &unk_1E7209EA8;
    objc_copyWeak(&v19, &location);
    [presentedViewController dismissViewControllerAnimated:animatedCopy completion:v18];

    v15 = [handlerCopy copy];
    if ([(AVPlayerViewController *)self wantsDetachedFullscreenPresentation]&& [(AVPlayerViewController *)self canDisplayContentInDetachedWindow])
    {
      [(AVPlayerViewController *)self _transitionToDetachedFullScreenCompletionHandler:v15];
    }

    else
    {
      [(AVPlayerViewController *)self _transitionToAttachedFullScreenAnimated:animatedCopy interactive:interactiveCopy completionHandler:v15];
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
    contentView = [(AVPlayerViewController *)self contentView];
    if (([contentView isCoveringWindow] & 1) != 0 || -[AVPlayerViewController isPresentingFullScreenFromInline](self, "isPresentingFullScreenFromInline") || -[AVPlayerViewController _isTransitioningToOrFromFullScreen](self, "_isTransitioningToOrFromFullScreen"))
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

- (void)_transitionFromFullScreenWithReason:(int64_t)reason animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  handlerCopy = handler;
  if (!-[AVPlayerViewController _delegateRespondsTo:](self, "_delegateRespondsTo:", sel_playerViewController_shouldExitFullScreenWithReason_) || (-[AVPlayerViewController delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 playerViewController:self shouldExitFullScreenWithReason:reason], v8, v9))
  {
    [(AVPlayerViewController *)self _transitionFromFullScreenAnimated:animatedCopy completionHandler:handlerCopy];
LABEL_4:
    v10 = handlerCopy;
    goto LABEL_5;
  }

  v10 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 1, 0);
    goto LABEL_4;
  }

LABEL_5:
}

- (BOOL)_isDescendantOfRootViewController
{
  selfCopy = self;
  parentViewController = [(AVPlayerViewController *)selfCopy parentViewController];

  parentViewController2 = selfCopy;
  if (parentViewController)
  {
    v5 = selfCopy;
    do
    {
      parentViewController2 = [(AVPlayerViewController *)v5 parentViewController];

      v4ParentViewController = [(AVPlayerViewController *)parentViewController2 parentViewController];

      v5 = parentViewController2;
    }

    while (v4ParentViewController);
  }

  presentingViewController = [(AVPlayerViewController *)parentViewController2 presentingViewController];

  if (presentingViewController)
  {
    do
    {
      presentingViewController2 = [(AVPlayerViewController *)parentViewController2 presentingViewController];

      v8PresentingViewController = [(AVPlayerViewController *)presentingViewController2 presentingViewController];

      parentViewController2 = presentingViewController2;
    }

    while (v8PresentingViewController);
    if (presentingViewController2)
    {
      goto LABEL_7;
    }

LABEL_9:
    LOBYTE(v10) = 0;
    goto LABEL_10;
  }

  presentingViewController2 = parentViewController2;
  if (!parentViewController2)
  {
    goto LABEL_9;
  }

LABEL_7:
  v10 = [(AVPlayerViewController *)presentingViewController2 isEqual:selfCopy]^ 1;
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
  _transitionControllerIfLoaded = [(AVPlayerViewController *)self _transitionControllerIfLoaded];
  presentationContext = [_transitionControllerIfLoaded presentationContext];
  presentedViewController = [presentationContext presentedViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = presentedViewController;
  }

  else
  {
    v6 = 0;
    if (presentedViewController && presentedViewController != self)
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

- (void)exitFullScreenWithCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v10 = "[AVPlayerViewController exitFullScreenWithCompletion:]";
    v11 = 1024;
    v12 = 7458;
    v13 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__AVPlayerViewController_exitFullScreenWithCompletion___block_invoke;
  v7[3] = &unk_1E7207F60;
  v8 = completionCopy;
  v6 = completionCopy;
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

- (void)enterFullScreenWithCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v10 = "[AVPlayerViewController enterFullScreenWithCompletion:]";
    v11 = 1024;
    v12 = 7342;
    v13 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__AVPlayerViewController_enterFullScreenWithCompletion___block_invoke;
  v7[3] = &unk_1E7207F60;
  v8 = completionCopy;
  v6 = completionCopy;
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

- (void)showFullScreenPresentationFromView:(id)view completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  viewCopy = view;
  v8 = _AVLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "[AVPlayerViewController showFullScreenPresentationFromView:completion:]";
    v19 = 1024;
    v20 = 7286;
    _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s %d", buf, 0x12u);
  }

  v9 = [completionCopy copy];
  transitioningDelegate = [(AVPlayerViewController *)self transitioningDelegate];
  _avkitPreferredTransitioningDelegate = [(AVPlayerViewController *)self _avkitPreferredTransitioningDelegate];

  if (transitioningDelegate != _avkitPreferredTransitioningDelegate)
  {
    _avkitPreferredTransitioningDelegate2 = [(AVPlayerViewController *)self _avkitPreferredTransitioningDelegate];
    [(AVPlayerViewController *)self setTransitioningDelegate:_avkitPreferredTransitioningDelegate2];
  }

  _transitionController = [(AVPlayerViewController *)self _transitionController];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__AVPlayerViewController_showFullScreenPresentationFromView_completion___block_invoke;
  v15[3] = &unk_1E7207FB0;
  v15[4] = self;
  v16 = v9;
  v14 = v9;
  [_transitionController beginFullScreenPresentationOfViewController:self fromView:viewCopy isInteractive:0 completion:v15];
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
  _activeViewControllerForContentView = [(AVPlayerViewController *)self _activeViewControllerForContentView];
  [_activeViewControllerForContentView avkit_setNeedsUpdatePreferencesIfNeeded];
}

- (void)_updatePiPControllerCanStartAutomaticallyWhenEnteringBackground
{
  v3 = [(AVPlayerViewController *)self canStartPictureInPictureAutomaticallyWhenEnteringBackground]& ~self->_disallowsAutomaticPictureInPictureStart;
  pictureInPictureController = self->_pictureInPictureController;

  [(AVPictureInPictureController *)pictureInPictureController setCanStartAutomaticallyWhenEnteringBackground:v3 & 1];
}

- (void)_updatePlaybackControlsCanHideStateIfNeeded
{
  canHidePlaybackControls = [(AVPlayerViewController *)self canHidePlaybackControls];
  isHoveringOverPlaybackControl = [(AVPlayerViewController *)self isHoveringOverPlaybackControl];
  if (self->_usesGlassCatalystControls)
  {
    [(AVPlayerViewController *)self catalystPlaybackControlsController];
  }

  else
  {
    [(AVPlayerViewController *)self chromePlaybackControlsController];
  }
  v5 = ;
  [v5 setCanHidePlaybackControls:!isHoveringOverPlaybackControl & canHidePlaybackControls];
}

- (void)_updatePlaybackBeganAfterPlayerControllerBecameReadyToPlayIfNeeded
{
  playerController = [(AVPlayerViewController *)self playerController];
  status = [playerController status];

  if (status == 2)
  {
    playerController2 = [(AVPlayerViewController *)self playerController];
    isPlaying = [playerController2 isPlaying];

    if (!isPlaying)
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
  contentView = [(AVPlayerViewController *)self contentView];
  [contentView setContentOverlayView:self->_contentOverlayView];

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
    _observationController = [(AVPlayerViewController *)self _observationController];
    playerLayerView = [(AVPlayerViewController *)self playerLayerView];
    v6 = [_observationController startObserving:self keyPath:@"playerLayerView.readyForDisplay" includeInitialValue:objc_msgSend(playerLayerView observationHandler:{"isReadyForDisplay"), &__block_literal_global_756}];

    _observationController2 = [(AVPlayerViewController *)self _observationController];
    playerLayerView2 = [(AVPlayerViewController *)self playerLayerView];
    v8 = [_observationController2 startObserving:self keyPath:@"playerLayerView.videoBounds" includeInitialValue:objc_msgSend(playerLayerView2 observationHandler:{"isReadyForDisplay"), &__block_literal_global_761}];
  }
}

void __67__AVPlayerViewController__startPlayerLayerViewObservationsIfNeeded__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v6 = [a4 value];
  [v5 setReadyForDisplay:{objc_msgSend(v6, "BOOLValue")}];
}

- (BOOL)_hoverGestureRecognizer:(id)recognizer hasCursorOverView:(id)view
{
  viewCopy = view;
  [recognizer locationInView:viewCopy];
  v7 = v6;
  v9 = v8;
  [viewCopy bounds];
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
  playerController = [(AVPlayerViewController *)self playerController];
  isScrubbing = [playerController isScrubbing];

  if ((isScrubbing & 1) == 0)
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

    playerController2 = [(AVPlayerViewController *)self playerController];
    [playerController2 beginPlaybackSuspension];

    playerController3 = [(AVPlayerViewController *)self playerController];
    [playerController3 beginScrubbing:self];
  }
}

- (void)_endScrubGestureIfActive
{
  playerController = [(AVPlayerViewController *)self playerController];
  isScrubbing = [playerController isScrubbing];

  if (isScrubbing)
  {
    playerController2 = [(AVPlayerViewController *)self playerController];
    [playerController2 endScrubbing:self];

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

    playerController3 = [(AVPlayerViewController *)self playerController];
    [playerController3 endPlaybackSuspension];

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
    playerController = [(AVPlayerViewController *)self playerController];
    isExternalPlaybackActive = [playerController isExternalPlaybackActive];

    _transitionController = [(AVPlayerViewController *)self _transitionController];
    _transitionController2 = _transitionController;
    if ((isExternalPlaybackActive & 1) == 0)
    {
      presentationContext = [_transitionController presentationContext];
      allowsPausingWhenTransitionCompletes = [presentationContext allowsPausingWhenTransitionCompletes];

      goto LABEL_5;
    }
  }

  else
  {
    _transitionController2 = [(AVPlayerViewController *)self _transitionController];
  }

  allowsPausingWhenTransitionCompletes = 0;
LABEL_5:

  return allowsPausingWhenTransitionCompletes;
}

- (void)_seekForScrubGestureWithVelocity:(double)velocity
{
  playerController = [(AVPlayerViewController *)self playerController];
  v6 = playerController;
  v10 = playerController;
  if (velocity < 0.0 && (playerController = [playerController canSeekFrameBackward], v6 = v10, (playerController & 1) != 0) || velocity > 0.0 && (playerController = objc_msgSend(v6, "canSeekFrameForward"), v6 = v10, playerController))
  {
    [(AVPlayerViewController *)self _seekDistanceForScrubGestureWithVelocity:velocity];
    v8 = v7;
    [v10 seekToTime];
    playerController = [v10 seekToTime:v8 + v9 toleranceBefore:0.0 toleranceAfter:0.0];
    v6 = v10;
  }

  MEMORY[0x1EEE66BB8](playerController, v6);
}

- (double)_seekDistanceForScrubGestureWithVelocity:(double)velocity
{
  playerController = [(AVPlayerViewController *)self playerController];
  [playerController contentDurationWithinEndTimes];
  v6 = pow(v5 / 1000.0, 0.75) / 400.0 * velocity;

  return v6;
}

- (double)_applyNonlinearScaleToScrubGestureVelocity:(double)velocity
{
  if (velocity > 0.0)
  {
    v3 = pow(velocity, 1.3);
    v4 = 0.035;
    return v3 * v4;
  }

  v5 = 0.0;
  if (velocity < 0.0)
  {
    v3 = pow(-velocity, 1.3);
    v4 = -0.035;
    return v3 * v4;
  }

  return v5;
}

- (void)_handleScrubbingGestureRecognizer:(id)recognizer
{
  v27 = *MEMORY[0x1E69E9840];
  recognizerCopy = recognizer;
  if (![(AVPlayerViewController *)self requiresLinearPlayback])
  {
    if ([recognizerCopy state] == 1)
    {
      playerController = [(AVPlayerViewController *)self playerController];
      isScrubbing = [playerController isScrubbing];

      if (isScrubbing)
      {
        [(NSTimer *)self->_scrubGestureMomentumTimer invalidate];
        scrubGestureMomentumTimer = self->_scrubGestureMomentumTimer;
        self->_scrubGestureMomentumTimer = 0;
      }

      [(AVPlayerViewController *)self _beginScrubGestureIfNeeded];
    }

    else if ([recognizerCopy state] == 2 || objc_msgSend(recognizerCopy, "state") == 3)
    {
      contentView = [(AVPlayerViewController *)self contentView];
      [recognizerCopy velocityInView:contentView];
      v10 = v9;

      [(AVPlayerViewController *)self _applyNonlinearScaleToScrubGestureVelocity:v10];
      v12 = v11;
      [(AVPlayerViewController *)self _seekForScrubGestureWithVelocity:?];
      if ([recognizerCopy state] == 3)
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
  playerController = [(AVPlayerViewController *)self playerController];
  -[AVPlayerViewController _notifyOfMetricsCollectionEvent:](self, "_notifyOfMetricsCollectionEvent:", [playerController isPlaying]);
}

- (void)_handleHoverGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  state = [recognizerCopy state];
  if ((state - 3) >= 2)
  {
    if (state != 2)
    {
      if (state == 1 && self)
      {
        [(AVMobileControlsViewController *)self->_controlsViewController didBeginIndirectUserInteraction];
      }

      goto LABEL_15;
    }

    v5 = recognizerCopy;
    if (self)
    {
      controlsViewControllerIfChromeless = [(AVMobileControlsViewController *)self->_controlsViewController controlsViewControllerIfChromeless];
      if (controlsViewControllerIfChromeless)
      {
      }

      else
      {
        controlsViewControllerIfGlass = [(AVMobileControlsViewController *)self->_controlsViewController controlsViewControllerIfGlass];

        if (!controlsViewControllerIfGlass)
        {
          usesGlassCatalystControls = self->_usesGlassCatalystControls;
          contentView = [(AVPlayerViewController *)self contentView];
          v10 = contentView;
          if (usesGlassCatalystControls)
          {
            [contentView glassPlaybackControlsView];
          }

          else
          {
            [contentView chromePlaybackControlsView];
          }
          v11 = ;

          transportControlsContainerView = [v11 transportControlsContainerView];
          volumeControls = [v11 volumeControls];
          screenModeControls = [v11 screenModeControls];
          v15 = [(AVPlayerViewController *)self _hoverGestureRecognizer:v5 hasCursorOverView:transportControlsContainerView]|| [(AVPlayerViewController *)self _hoverGestureRecognizer:v5 hasCursorOverView:volumeControls]|| [(AVPlayerViewController *)self _hoverGestureRecognizer:v5 hasCursorOverView:screenModeControls];
          [(AVPlayerViewController *)self setHoveringOverPlaybackControl:v15];
          if (![(AVPlayerViewController *)self showsPlaybackControls])
          {

            goto LABEL_14;
          }

          showsPlaybackControls = [v11 showsPlaybackControls];

          if (showsPlaybackControls)
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
  playerController = [(AVPlayerViewController *)self playerController];
  isPlaying = [playerController isPlaying];

  if ((isPlaying & 1) != 0 || !self)
  {
    return;
  }

  _isDescendantOfRootViewController = [(AVPlayerViewController *)self _isDescendantOfRootViewController];
  if (self->_usesGlassCatalystControls && ([(AVPlayerViewController *)self _catalystGlassControlsViewController], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    catalystPlaybackControlsController = [(AVPlayerViewController *)self catalystPlaybackControlsController];
  }

  else
  {
    _chromeControlsViewController = [(AVPlayerViewController *)self _chromeControlsViewController];

    if (!_chromeControlsViewController)
    {
      if (![(AVPlayerViewController *)self entersFullScreenWhenPlaybackBegins]|| !_isDescendantOfRootViewController || self->_playbackBeganAfterPlayerControllerBecameReadyToPlay)
      {
        return;
      }

      goto LABEL_9;
    }

    catalystPlaybackControlsController = [(AVPlayerViewController *)self chromePlaybackControlsController];
  }

  v9 = catalystPlaybackControlsController;
  shouldEnterFullScreenWhenPlaybackBegins = [catalystPlaybackControlsController shouldEnterFullScreenWhenPlaybackBegins];

  if ((shouldEnterFullScreenWhenPlaybackBegins & 1) == 0)
  {
    return;
  }

LABEL_9:

  [(AVPlayerViewController *)self _transitionToFullScreenAnimated:1 interactive:0 completionHandler:0];
}

- (void)_contentViewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  _behaviorStorage = [(AVPlayerViewController *)self _behaviorStorage];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__AVPlayerViewController__contentViewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v13[3] = &unk_1E7207F10;
  v15 = width;
  v16 = height;
  v9 = coordinatorCopy;
  v14 = v9;
  [_behaviorStorage enumerateAllBehaviorContextsImplementingSelector:sel_contentViewWillTransitionToSize_withCoordinator_ forProtocol:&unk_1EFF32480 usingBlock:v13];

  delegate = [(AVPlayerViewController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(AVPlayerViewController *)self delegate];
    [delegate2 playerViewController:self contentViewWillTransitionToSize:v9 withTransitionCoordinator:{width, height}];
  }
}

- (void)setPlayerLayerView:(id)view
{
  viewCopy = view;
  playerLayerView = self->_playerLayerView;
  if (playerLayerView != viewCopy)
  {
    v17 = viewCopy;
    [(__AVPlayerLayerView *)playerLayerView removeFromSuperview];
    objc_storeStrong(&self->_playerLayerView, view);
    playerLayer = [(__AVPlayerLayerView *)self->_playerLayerView playerLayer];
    [playerLayer legibleContentInsets];
    self->_cachedLegibleContentInsets.top = v8;
    self->_cachedLegibleContentInsets.left = v9;
    self->_cachedLegibleContentInsets.bottom = v10;
    self->_cachedLegibleContentInsets.right = v11;

    [(AVPlayerViewController *)self _updatePlayerLayerLegibleContentInsetsIfNeeded];
    contentView = [(AVPlayerViewController *)self contentView];
    playbackContentContainerView = [contentView playbackContentContainerView];
    activeContentView = [playbackContentContainerView activeContentView];
    [activeContentView setPlayerLayerView:v17];

    videoFrameVisualAnalyzer = self->_videoFrameVisualAnalyzer;
    playerLayer2 = [(__AVPlayerLayerView *)v17 playerLayer];
    [(AVVideoFrameVisualAnalyzer *)videoFrameVisualAnalyzer setPlayerLayer:playerLayer2];

    playerLayerView = [(AVPlayerViewController *)self _startPlayerLayerViewObservationsIfNeeded];
    viewCopy = v17;
  }

  MEMORY[0x1EEE66BB8](playerLayerView, viewCopy);
}

- (BOOL)_delegateRespondsTo:(SEL)to
{
  v25 = *MEMORY[0x1E69E9840];
  delegate = [(AVPlayerViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  v7 = _AVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    delegate2 = [(AVPlayerViewController *)self delegate];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    delegate3 = [(AVPlayerViewController *)self delegate];
    if (v6)
    {
      v12 = @"does";
    }

    else
    {
      v12 = @"does NOT";
    }

    v13 = NSStringFromSelector(to);
    v15 = 136316162;
    v16 = "[AVPlayerViewController _delegateRespondsTo:]";
    v17 = 2114;
    v18 = v10;
    v19 = 2048;
    v20 = delegate3;
    v21 = 2112;
    v22 = v12;
    v23 = 2114;
    v24 = v13;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s <%{public}@ %p> %@ respond to %{public}@", &v15, 0x34u);
  }

  return v6 & 1;
}

- (void)_notifyOfMetricsCollectionEvent:(int64_t)event
{
  _behaviorStorage = [(AVPlayerViewController *)self _behaviorStorage];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__AVPlayerViewController__notifyOfMetricsCollectionEvent___block_invoke;
  v7[3] = &unk_1E7207EE8;
  v7[4] = self;
  v7[5] = event;
  [_behaviorStorage enumerateAllBehaviorContextsConformingToProtocol:&unk_1EFF3C670 usingBlock:v7];

  if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewController_metricsCollectionEventOccured_])
  {
    delegate = [(AVPlayerViewController *)self delegate];
    [delegate playerViewController:self metricsCollectionEventOccured:event];
  }
}

- (void)_mediaSelectionDoneButtonTapped:(id)tapped
{
  v16 = *MEMORY[0x1E69E9840];
  tappedCopy = tapped;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v11 = "[AVPlayerViewController _mediaSelectionDoneButtonTapped:]";
    v12 = 1024;
    v13 = 6649;
    v14 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  objc_initWeak(buf, self);
  WeakRetained = objc_loadWeakRetained(&self->_mediaSelectionPopoverPresentationController);
  presentedViewController = [WeakRetained presentedViewController];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__AVPlayerViewController__mediaSelectionDoneButtonTapped___block_invoke;
  v8[3] = &unk_1E7209EA8;
  objc_copyWeak(&v9, buf);
  [presentedViewController dismissViewControllerAnimated:1 completion:v8];

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
    isPictureInPictureActive = [(AVPictureInPictureController *)self->_pictureInPictureController isPictureInPictureActive];
    pictureInPictureController = self->_pictureInPictureController;
    if (isPictureInPictureActive)
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

  view = [(AVPlayerViewController *)self view];
  v5 = [view avkit_isAncestorOfViewPassingTest:&__block_literal_global_731];

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
  playerController = [(AVPlayerViewController *)self playerController];
  if ([playerController status] == 2 && (objc_msgSend(playerController, "hasEnabledVideo") & 1) == 0)
  {
    hasEnabledAudio = [playerController hasEnabledAudio];
  }

  else
  {
    hasEnabledAudio = 0;
  }

  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315906;
    v7 = "[AVPlayerViewController isAudioOnlyContent]";
    v8 = 2048;
    status = [playerController status];
    v10 = 1024;
    hasEnabledVideo = [playerController hasEnabledVideo];
    v12 = 1024;
    hasEnabledAudio2 = [playerController hasEnabledAudio];
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s .status: %ld .hasEnabledVideo: %d .hasEnabledAudio: %d", &v6, 0x22u);
  }

  return hasEnabledAudio;
}

- (BOOL)_wantsNowPlayingInfoCenter:(BOOL)center
{
  centerCopy = center;
  v18 = *MEMORY[0x1E69E9840];
  playerController = [(AVPlayerViewController *)self playerController];
  v6 = playerController;
  v7 = playerController && ([playerController isInspectionSuspended] & 1) == 0 && -[AVPlayerViewController updatesNowPlayingInfoCenter](self, "updatesNowPlayingInfoCenter");
  v8 = _AVLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315906;
    v11 = "[AVPlayerViewController _wantsNowPlayingInfoCenter:]";
    v12 = 1024;
    v13 = centerCopy;
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

- (void)_volumeButtonWasPressedEvent:(id)event
{
  playerController = [(AVPlayerViewController *)self playerController];
  if ([playerController isMuted])
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
  contentView = [(AVPlayerViewController *)self contentView];
  [contentView setShowsUnsupportedContentIndicator:{-[AVPlayerViewController _isUnsupportedContent](self, "_isUnsupportedContent")}];
}

- (void)_updatePlaybackControlsState
{
  isPresentedFullScreen = [(AVPlayerViewController *)self isPresentedFullScreen];
  isPresentingFullScreenFromInline = [(AVPlayerViewController *)self isPresentingFullScreenFromInline];
  if ([(AVPlayerViewController *)self avkit_isEffectivelyFullScreen])
  {
    presentingViewController = [(AVPlayerViewController *)self presentingViewController];
    v6 = (presentingViewController || [(AVPlayerViewControllerConfiguration *)self->_configuration prefersFullScreenStyleForEmbeddedMode]) && [(AVPlayerViewController *)self allowsEnteringFullScreen];
  }

  else
  {
    v6 = 0;
  }

  v7 = +[AVKitGlobalSettings shared];
  experienceControllerEnabled = [v7 experienceControllerEnabled];

  if (experienceControllerEnabled)
  {
    [(AVMobileControlsViewController *)self->_controlsViewController setShowsMultiviewControl:[(AVPlayerViewController *)self includeMultiviewButton]];
  }

  if (isPresentingFullScreenFromInline)
  {
    v9 = 1;
  }

  else
  {
    presentingViewController2 = [(AVPlayerViewController *)self presentingViewController];
    if (presentingViewController2)
    {
      v9 = 1;
    }

    else
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v9 = [bundleIdentifier isEqualToString:@"com.apple.iBooks"];
    }
  }

  if (self->_usesGlassCatalystControls)
  {
    catalystPlaybackControlsController = [(AVPlayerViewController *)self catalystPlaybackControlsController];
    [catalystPlaybackControlsController setShowsDoneButtonWhenFullScreen:v9];

    catalystPlaybackControlsController2 = [(AVPlayerViewController *)self catalystPlaybackControlsController];
    [catalystPlaybackControlsController2 setShowsPlaybackControls:{-[AVPlayerViewController showsPlaybackControls](self, "showsPlaybackControls")}];

    catalystPlaybackControlsController3 = [(AVPlayerViewController *)self catalystPlaybackControlsController];
    [catalystPlaybackControlsController3 setShowsPictureInPictureButton:{-[AVPlayerViewController _shouldShowPictureInPictureButton](self, "_shouldShowPictureInPictureButton")}];

    catalystPlaybackControlsController4 = [(AVPlayerViewController *)self catalystPlaybackControlsController];
    [catalystPlaybackControlsController4 setPlayerViewControllerHasInvalidViewControllerHierarchy:{-[AVPlayerViewController _isDescendantOfRootViewController](self, "_isDescendantOfRootViewController") ^ 1}];

    catalystPlaybackControlsController5 = [(AVPlayerViewController *)self catalystPlaybackControlsController];
    [catalystPlaybackControlsController5 setPlayerViewControllerIsPresentingFullScreen:isPresentingFullScreenFromInline];

    [(AVPlayerViewController *)self catalystPlaybackControlsController];
  }

  else
  {
    chromePlaybackControlsController = [(AVPlayerViewController *)self chromePlaybackControlsController];
    [chromePlaybackControlsController setShowsDoneButtonWhenFullScreen:v9];

    chromePlaybackControlsController2 = [(AVPlayerViewController *)self chromePlaybackControlsController];
    [chromePlaybackControlsController2 setShowsPlaybackControls:{-[AVPlayerViewController showsPlaybackControls](self, "showsPlaybackControls")}];

    chromePlaybackControlsController3 = [(AVPlayerViewController *)self chromePlaybackControlsController];
    [chromePlaybackControlsController3 setShowsPictureInPictureButton:{-[AVPlayerViewController _shouldShowPictureInPictureButton](self, "_shouldShowPictureInPictureButton")}];

    chromePlaybackControlsController4 = [(AVPlayerViewController *)self chromePlaybackControlsController];
    [chromePlaybackControlsController4 setPlayerViewControllerHasInvalidViewControllerHierarchy:{-[AVPlayerViewController _isDescendantOfRootViewController](self, "_isDescendantOfRootViewController") ^ 1}];

    chromePlaybackControlsController5 = [(AVPlayerViewController *)self chromePlaybackControlsController];
    [chromePlaybackControlsController5 setPlayerViewControllerIsPresentingFullScreen:isPresentingFullScreenFromInline];

    [(AVPlayerViewController *)self chromePlaybackControlsController];
  }
  v23 = ;
  [v23 setPlayerViewControllerIsPresentedFullScreen:isPresentedFullScreen];

  v24 = 2;
  if (isPresentingFullScreenFromInline || v6)
  {
    v24 = 0;
  }

  if (isPresentedFullScreen)
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
        fullscreenController = [*(v1 + 1248) fullscreenController];
        v4 = [fullscreenController presentationState] != 2 && (objc_msgSend(v1, "actuallyRequiresLinearPlayback") & 1) == 0 && !-[AVPlayerViewController _contentTabsVisible](v1);
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
  if (self)
  {
    v8 = +[AVKitGlobalSettings shared];
    if ([v8 constrainedHDREnabled])
    {
      preferredDisplayDynamicRange = [self preferredDisplayDynamicRange];

      if (preferredDisplayDynamicRange)
      {
        return;
      }

      if ([self isPresentingFullScreenFromInline])
      {
        fullScreenViewController = [self fullScreenViewController];
        if (fullScreenViewController)
        {
          selfCopy = [self fullScreenViewController];
        }

        else
        {
          selfCopy = self;
        }

        v9 = selfCopy;

        selfCopy2 = v9;
      }

      else
      {
        selfCopy2 = self;
      }

      v8 = selfCopy2;
      traitCollection = [selfCopy2 traitCollection];
      _headroomUsage = [traitCollection _headroomUsage];

      [(AVPlayerViewController *)self _updatePreferredDynamicRangeForAutomaticModeWithHeadroomUsage:_headroomUsage];
    }
  }
}

- (void)_updateExternalPlaybackIndicatorView
{
  playerController = [(AVPlayerViewController *)self playerController];
  externalPlaybackType = [playerController externalPlaybackType];

  if (externalPlaybackType == 1)
  {
    v18 = AVLocalizedString(@"EXTERNAL_PLAYBACK_INDICATOR_VIEW_AIRPLAY_TITLE");
    playerController2 = [(AVPlayerViewController *)self playerController];
    externalPlaybackAirPlayDeviceLocalizedName = [playerController2 externalPlaybackAirPlayDeviceLocalizedName];

    if (externalPlaybackAirPlayDeviceLocalizedName)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = AVLocalizedString(@"This video is playing on “%@”");
      playerController3 = [(AVPlayerViewController *)self playerController];
      externalPlaybackAirPlayDeviceLocalizedName2 = [playerController3 externalPlaybackAirPlayDeviceLocalizedName];
      v11 = [v7 stringWithFormat:v8, externalPlaybackAirPlayDeviceLocalizedName2];
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_9;
  }

  playerController4 = [(AVPlayerViewController *)self playerController];
  if ([playerController4 isPlayingOnExternalScreen])
  {

LABEL_7:
    v18 = AVLocalizedString(@"EXTERNAL_PLAYBACK_INDICATOR_VIEW_TV_OUT_TITLE");
    v11 = AVLocalizedString(@"EXTERNAL_PLAYBACK_INDICATOR_VIEW_TV_OUT_SUBTITLE");
LABEL_9:
    v15 = 1;
    goto LABEL_10;
  }

  playerController5 = [(AVPlayerViewController *)self playerController];
  isPlayingOnSecondScreen = [playerController5 isPlayingOnSecondScreen];

  if (isPlayingOnSecondScreen)
  {
    goto LABEL_7;
  }

  v18 = 0;
  v11 = 0;
  v15 = 0;
LABEL_10:
  contentView = [(AVPlayerViewController *)self contentView];
  [contentView setExternalPlaybackIndicatorTitle:v18 subtitle:v11];

  contentView2 = [(AVPlayerViewController *)self contentView];
  [contentView2 setShowsExternalPlaybackIndicator:v15];
}

- (void)_updateCustomControlsViewStateWithVisibleControlsSet:(unint64_t)set
{
  v4 = (set & 0x31) != 0;
  [(AVPlayerViewControllerCustomControlsView *)self->_customControlsView setAreVolumeControlsVisible:(set >> 1) & 1];
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
  controlsViewController = [(AVPlayerViewController *)self controlsViewController];
  controlsViewControllerIfCatalystGlass = [controlsViewController controlsViewControllerIfCatalystGlass];

  v4 = controlsViewControllerIfCatalystGlass;
  if (controlsViewControllerIfCatalystGlass)
  {
    playbackControlsController = [controlsViewControllerIfCatalystGlass playbackControlsController];
    [playbackControlsController setIsAudioOnlyContent:{-[AVPlayerViewController isAudioOnlyContent](self, "isAudioOnlyContent")}];

    v4 = controlsViewControllerIfCatalystGlass;
  }
}

- (void)_updateAudioOnlyIndicatorView
{
  contentView = [(AVPlayerViewController *)self contentView];
  [contentView setShowsAudioOnlyIndicator:{-[AVPlayerViewController isAudioOnlyContent](self, "isAudioOnlyContent")}];
}

- (void)_updateActivePlaybackSpeedIfNeeded
{
  v25 = *MEMORY[0x1E69E9840];
  playbackSpeedCollection = [(AVPlayerViewController *)self playbackSpeedCollection];
  if (playbackSpeedCollection)
  {
    playerController = [(AVPlayerViewController *)self playerController];
    [playerController defaultPlaybackRate];
    v6 = v5;

    activeSpeed = [playbackSpeedCollection activeSpeed];
    [activeSpeed rate];
    v9 = v8;

    if (v6 != v9)
    {
      if (v6 == 0.0)
      {
        speeds = [playbackSpeedCollection speeds];
        v11 = [AVPlaybackSpeedCollection defaultSpeedFromList:speeds];

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
        speeds2 = [playbackSpeedCollection speeds];
        v11 = [speeds2 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v11)
        {
          v12 = *v21;
          while (2)
          {
            for (i = 0; i != v11; i = (i + 1))
            {
              if (*v21 != v12)
              {
                objc_enumerationMutation(speeds2);
              }

              v14 = *(*(&v20 + 1) + 8 * i);
              [v14 rate];
              if (v6 == v15)
              {
                v11 = v14;
                goto LABEL_14;
              }
            }

            v11 = [speeds2 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
      [playbackSpeedCollection setActiveSpeed:v11];
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

- (void)_visualLookupMenuItemPressedEvent:(id)event
{
  [(AVPlayerViewController *)self setShowsVisualLookup:!self->_showsVisualLookup];
  showsVisualLookup = self->_showsVisualLookup;
  toggleLookupAction = self->_toggleLookupAction;

  [(UIAction *)toggleLookupAction setState:showsVisualLookup];
}

- (void)_updatePlayerLayerLegibleContentInsetsIfNeeded
{
  playerLayerView = [(AVPlayerViewController *)self playerLayerView];
  playerLayer = [playerLayerView playerLayer];

  v4 = objc_opt_respondsToSelector();
  v5 = playerLayer;
  if ((v4 & 1) == 0)
  {
    goto LABEL_21;
  }

  top = self->_legibleContentInsets.top;
  left = self->_legibleContentInsets.left;
  bottom = self->_legibleContentInsets.bottom;
  right = self->_legibleContentInsets.right;
  playerController = [(AVPlayerViewController *)self playerController];
  if ([playerController isPlayingOnSecondScreen])
  {
    goto LABEL_18;
  }

  pipStartingOrActive = self->_pipStartingOrActive;

  if (pipStartingOrActive)
  {
    goto LABEL_19;
  }

  contentView = [(AVPlayerViewController *)self contentView];
  [contentView bounds];
  v42 = v13;
  v15 = v14;

  [(AVPlayerViewController *)self videoBounds];
  v41 = v16;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  playerController = [(AVPlayerViewController *)self _contentTabPresentationContext];
  [playerController presentationHeight];
  v24 = v15 - v23;
  if (v24 >= v15 - bottom)
  {
    v24 = v15 - bottom;
  }

  bottom = v18 + v22 - v24;
  controlsViewController = [(AVPlayerViewController *)self controlsViewController];
  controlsViewControllerIfGlass = [controlsViewController controlsViewControllerIfGlass];
  if (controlsViewControllerIfGlass)
  {
    controlsViewControllerIfCatalystGlass = controlsViewControllerIfGlass;

LABEL_9:
    [controlsViewControllerIfCatalystGlass legibleContentInsetsAvoidingControlsUI];
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

  controlsViewController2 = [(AVPlayerViewController *)self controlsViewController];
  controlsViewControllerIfCatalystGlass = [controlsViewController2 controlsViewControllerIfCatalystGlass];

  if (controlsViewControllerIfCatalystGlass)
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
  v5 = playerLayer;
  if ((v4 & 1) == 0)
  {
    p_cachedLegibleContentInsets->top = top;
    p_cachedLegibleContentInsets->left = left;
    p_cachedLegibleContentInsets->bottom = bottom;
    p_cachedLegibleContentInsets->right = right;
    v4 = [playerLayer setLegibleContentInsets:{top, left, bottom, right}];
    v5 = playerLayer;
  }

LABEL_21:

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)_setContentViewOnSelf
{
  parentViewController = [(AVMobileControlsViewController *)self->_controlsViewController parentViewController];

  if (parentViewController == self)
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

- (void)_playPauseButtonWasPressedEvent:(id)event
{
  [(AVPlayerViewController *)self _enterFullScreenWhenPlayingIfNeeded];

  [(AVPlayerViewController *)self _handlePlaybackToggleNotificationForMetricsCollectionEvent];
}

- (BOOL)_isUnsupportedContent
{
  playerController = [(AVPlayerViewController *)self playerController];
  v3 = [playerController status] == 3;

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
  prefersStatusBarHidden = [v3 prefersStatusBarHidden];

  if (self->_controlsGeneration)
  {
    visibleControls = [(AVControlsViewController *)self->_controlsViewController visibleControls];
    if (visibleControls)
    {
      v6 = visibleControls == 2;
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
      return visibleControls == 1 && [(AVPlayerController *)self->_playerController isScrubbing];
    }
  }

  return prefersStatusBarHidden;
}

- (void)_createPictureInPictureControllerIfNeeded
{
  if (![(AVPlayerViewController *)self _showsWolfControls]&& !self->_pictureInPictureController)
  {
    if (+[AVPictureInPictureController isPictureInPictureSupported])
    {
      if ([(AVPlayerViewController *)self _hasBegunObservation])
      {
        presentationContext = [(AVTransitionController *)self->_transitionController presentationContext];
        isPresenting = [presentationContext isPresenting];

        if ((isPresenting & 1) == 0)
        {
          v5 = [[AVPictureInPictureController alloc] initWithSource:self];
          [(AVPictureInPictureController *)v5 setRequiresLinearPlayback:[(AVPlayerViewController *)self requiresLinearPlayback]];
          [(AVPictureInPictureController *)v5 setAllowsPictureInPicturePlayback:[(AVPlayerViewController *)self allowsPictureInPicturePlayback]];
          [(AVPictureInPictureController *)v5 setRetainsSourceDuringPictureInPicturePlayback:1];
          [(AVPictureInPictureController *)v5 setCanPausePlaybackWhenClosingPictureInPicture:[(AVPlayerViewController *)self canPausePlaybackWhenClosingPictureInPicture]];
          if ([(AVPlayerViewController *)self _delegateRespondsTo:sel_playerViewControllerShouldStartPictureInPictureFromInlineWhenEnteringBackground_])
          {
            delegate = [(AVPlayerViewController *)self delegate];
            -[AVPlayerViewController setCanStartPictureInPictureAutomaticallyFromInline:](self, "setCanStartPictureInPictureAutomaticallyFromInline:", [delegate playerViewControllerShouldStartPictureInPictureFromInlineWhenEnteringBackground:self]);
          }

          [(AVPictureInPictureController *)v5 setCanStartPictureInPictureAutomaticallyFromInline:[(AVPlayerViewController *)self canStartPictureInPictureAutomaticallyFromInline]];
          [(AVPictureInPictureController *)v5 setDelegate:self];
          playerController = [(AVPlayerViewController *)self playerController];
          [(AVPictureInPictureController *)v5 setPlayerController:playerController];

          pictureInPictureActivitySessionIdentifier = [(AVPlayerViewController *)self pictureInPictureActivitySessionIdentifier];
          [(AVPictureInPictureController *)v5 setActivitySessionIdentifier:pictureInPictureActivitySessionIdentifier];

          [(AVMobileControlsViewController *)self->_controlsViewController setPipController:v5];
          _observationController = [(AVPlayerViewController *)self _observationController];
          v10 = [_observationController startObserving:self keyPath:@"pictureInPictureController.pictureInPicturePossible" includeInitialValue:1 observationHandler:&__block_literal_global_663];

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

- (void)_copySubjectMenuItemPressedEvent:(id)event
{
  if ([(AVVisualAnalysisView *)self->_analysisView hasSubjectToCopy])
  {
    analysisView = self->_analysisView;

    [(AVVisualAnalysisView *)analysisView copySubject];
  }
}

- (void)_controlsViewController:(id)controller willBeginContentTabTransitionWithContext:(id)context
{
  controllerCopy = controller;
  contextCopy = context;
  if ([contextCopy state] == 2)
  {
    transitionContext = [contextCopy transitionContext];
    animationCoordinator = [transitionContext animationCoordinator];
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
    [animationCoordinator addCoordinatedAnimations:v14 completion:v12];
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
  [(AVPlayerViewController *)self _updateSecondGenerationContentTabsGestureEnablementState];
  [(AVPlayerViewController *)self _updateTapThroughGestureRecognizerEnablementState];
  [(AVPlayerViewController *)self _updateVideoGravityPinchGestureEnablementState];

  return [(AVPlayerViewController *)self _updateScrubbingGestureEnabledState];
}

- (void)_updateSecondGenerationContentTabsGestureEnablementState
{
  if (self)
  {
    playerController = [self playerController];
    v2 = ([*(self + 1456) count] || *(self + 1816)) && objc_msgSend(playerController, "status") == 2;
    _contentTabPanGestureRecognizer = [(AVPlayerViewController *)self _contentTabPanGestureRecognizer];
    [_contentTabPanGestureRecognizer setEnabled:v2];
  }
}

- (uint64_t)_updateTapThroughGestureRecognizerEnablementState
{
  v2 = *(self + 1256);
  excludedControls = [*(self + 1544) excludedControls];
  if (v2)
  {
    v4 = ((excludedControls & 1) == 0) & ~[(AVPlayerViewController *)self _contentTabsVisible];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(self + 1832);

  return [v5 setEnabled:v4];
}

- (id)_contentTabPanGestureRecognizer
{
  controlsViewControllerIfChromeless = [*(self + 1248) controlsViewControllerIfChromeless];
  contentTabPanGestureRecognizer = [controlsViewControllerIfChromeless contentTabPanGestureRecognizer];

  if (!contentTabPanGestureRecognizer)
  {
    controlsViewControllerIfGlass = [*(self + 1248) controlsViewControllerIfGlass];
    contentTabPanGestureRecognizer = [controlsViewControllerIfGlass contentTabPanGestureRecognizer];
  }

  return contentTabPanGestureRecognizer;
}

- (id)_catalystGlassControlsViewController
{
  controlsViewController = [(AVPlayerViewController *)self controlsViewController];
  controlsViewControllerIfCatalystGlass = [controlsViewController controlsViewControllerIfCatalystGlass];

  return controlsViewControllerIfCatalystGlass;
}

- (id)_chromeControlsViewController
{
  controlsViewController = [(AVPlayerViewController *)self controlsViewController];
  controlsViewControllerIfChromed = [controlsViewController controlsViewControllerIfChromed];

  return controlsViewControllerIfChromed;
}

- (double)_availableSpaceForContentTabWithVideoDodgingForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  controlsViewControllerIfChromeless = [(AVMobileControlsViewController *)self->_controlsViewController controlsViewControllerIfChromeless];
  controlsViewControllerIfGlass = [(AVMobileControlsViewController *)self->_controlsViewController controlsViewControllerIfGlass];
  v8 = controlsViewControllerIfGlass;
  if (controlsViewControllerIfChromeless | controlsViewControllerIfGlass)
  {
    if (controlsViewControllerIfChromeless)
    {
      controlsViewControllerIfGlass = controlsViewControllerIfChromeless;
    }

    viewIfLoaded = [controlsViewControllerIfGlass viewIfLoaded];
    playerController = [(AVPlayerViewController *)self playerController];
    v12 = self->_playerViewControllerContentView;
    playerLayerView = [(AVPlayerViewController *)self playerLayerView];
    v14 = playerLayerView;
    v9 = NAN;
    if (!playerController)
    {
      goto LABEL_34;
    }

    v15 = !viewIfLoaded || v12 == 0;
    if (v15 || playerLayerView == 0)
    {
      goto LABEL_34;
    }

    [playerController contentDimensions];
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

    targetVideoGravities = [(AVPlayerViewControllerContentView *)v12 targetVideoGravities];
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21];
    v24 = [targetVideoGravities objectForKeyedSubscript:v23];

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

    if (controlsViewControllerIfChromeless)
    {
      v26 = controlsViewControllerIfChromeless;
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
  analysisView = [(AVPlayerViewController *)self analysisView];
  isInteractionInProgress = [analysisView isInteractionInProgress];

  return isInteractionInProgress;
}

- (void)_resetVisualAnalysisViewSelectionIfNeeded
{
  allowsVideoFrameAnalysis = self->_allowsVideoFrameAnalysis;
  _currentAnalysis = [(AVPlayerViewController *)self _currentAnalysis];
  analysisView = self->_analysisView;
  if (allowsVideoFrameAnalysis && _currentAnalysis != 0 && analysisView != 0)
  {
    v8 = _currentAnalysis;
    analysisView = [(AVVisualAnalysisView *)analysisView resetSelection];
    _currentAnalysis = v8;
  }

  MEMORY[0x1EEE66BB8](analysisView, _currentAnalysis);
}

- (void)_updateSelectedPlaybackSpeedIfPlayerControllerRateChanges
{
  v24 = *MEMORY[0x1E69E9840];
  playerController = [(AVPlayerViewController *)self playerController];
  playbackSpeedCollection = [(AVPlayerViewController *)self playbackSpeedCollection];
  [playerController rate];
  v6 = v5;
  if (v5 >= 0.1 && v5 < 4.0)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    speeds = [playbackSpeedCollection speeds];
    v9 = [speeds countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(speeds);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        [v13 rate];
        if (v6 == v14)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [speeds countByEnumeratingWithState:&v19 objects:v23 count:16];
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
    [playerController defaultPlaybackRate];
    *&v18 = v18;
    v15 = [(AVPlaybackSpeed *)v17 initWithRate:v16 localizedName:1 synthesized:v18];

LABEL_17:
    [playbackSpeedCollection setActiveSpeed:v15];
  }
}

- (void)_updateNowPlayingInfoController
{
  v3 = self->_nowPlayingInfoController;
  v4 = [(AVPlayerViewController *)self _wantsNowPlayingInfoCenter:0];
  playerController = [(AVPlayerViewController *)self playerController];
  if (v4)
  {
    if (v3)
    {
      [(AVNowPlayingInfoController *)v3 startNowPlayingUpdatesForPlayerController:playerController afterDelay:1.0];
    }

    else
    {
      objc_initWeak(&location, self);
      objc_initWeak(&from, playerController);
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
    [(AVNowPlayingInfoController *)v3 stopNowPlayingUpdatesForPlayerController:playerController];
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
    playerController = [result playerController];
    isScrubbing = [playerController isScrubbing];

    v4 = v1[144];

    return [v4 setSuspended:isScrubbing];
  }

  return result;
}

- (void)_updateDefaultLinearPlaybackRateIfNeeded
{
  v10 = *MEMORY[0x1E69E9840];
  playerController = [(AVPlayerViewController *)self playerController];
  [playerController defaultPlaybackRate];
  if (v4 != self->_defaultLinearPlaybackRate)
  {
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      [playerController defaultPlaybackRate];
      v8 = 134217984;
      v9 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "setDefaultPlaybackRate called during linear playback. Updating default linear playback rate to %f", &v8, 0xCu);
    }

    [playerController defaultPlaybackRate];
    *&v7 = v7;
    self->_defaultLinearPlaybackRate = *&v7;
  }
}

- (void)_updateDefaultPlaybackRateIfNeeded
{
  playbackSpeedCollection = [(AVPlayerViewController *)self playbackSpeedCollection];
  selectedSpeed = [playbackSpeedCollection selectedSpeed];
  [selectedSpeed rate];
  defaultLinearPlaybackRate = v5;

  if ([(AVPlayerViewController *)self requiresLinearPlayback]|| ([(AVPlayerViewController *)self playbackSpeedCollection], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    defaultLinearPlaybackRate = self->_defaultLinearPlaybackRate;
  }

  playerController = [(AVPlayerViewController *)self playerController];
  [playerController defaultPlaybackRate];
  v10 = v9;
  v11 = defaultLinearPlaybackRate;

  if (v10 != v11)
  {
    playerController2 = [(AVPlayerViewController *)self playerController];
    [playerController2 setDefaultPlaybackRate:v11];
  }
}

- (void)_updateContentViewEdgeInsetsForLetterboxedContent
{
  contentView = [(AVPlayerViewController *)self contentView];
  [(AVPlayerViewController *)self playerViewControllerContentViewEdgeInsetsForLetterboxedVideo:contentView];
  [contentView setEdgeInsetsForLetterboxedContent:?];
  [contentView setNeedsLayout];
}

- (void)_setSecondScreenConnectionReadyToConnect:(BOOL)connect
{
  v14 = *MEMORY[0x1E69E9840];
  secondScreenConnection = self->_secondScreenConnection;
  if (secondScreenConnection)
  {
    connectCopy = connect;
    if ([(AVSecondScreenConnection *)secondScreenConnection isReadyToConnect]!= connect)
    {
      v6 = _AVLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = "NO";
        v8 = 136315650;
        v9 = "[AVPlayerViewController _setSecondScreenConnectionReadyToConnect:]";
        v11 = "readyToConnect";
        v10 = 2080;
        if (connectCopy)
        {
          v7 = "YES";
        }

        v12 = 2080;
        v13 = v7;
        _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v8, 0x20u);
      }

      [(AVSecondScreenConnection *)self->_secondScreenConnection setReadyToConnect:connectCopy];
    }
  }
}

- (void)_updateSecondScreenConnectionReadyToConnect
{
  if ([(AVPlayerViewController *)&self->super.super.super.isa _isReadyToConnectSynchronousChecks])
  {
    traitCollection = [(AVPlayerViewController *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      if (!self->_isUpdatingSecondScreenConnectionReadyToConnect)
      {
        self->_isUpdatingSecondScreenConnectionReadyToConnect = 1;
        v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.avkit.SharedPreferences"];
        v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EFF88AB0];
        [v5 setRemoteObjectInterface:v6];

        [v5 resume];
        objc_initWeak(&location, self);
        remoteObjectProxy = [v5 remoteObjectProxy];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __69__AVPlayerViewController__updateSecondScreenConnectionReadyToConnect__block_invoke;
        v11[3] = &unk_1E7208CD0;
        objc_copyWeak(&v13, &location);
        v8 = v5;
        v12 = v8;
        [remoteObjectProxy extendedDisplayActive:v11];

        objc_destroyWeak(&v13);
        objc_destroyWeak(&location);
      }

      return;
    }

    selfCopy2 = self;
    v10 = 1;
  }

  else
  {
    selfCopy2 = self;
    v10 = 0;
  }

  [(AVPlayerViewController *)selfCopy2 _setSecondScreenConnectionReadyToConnect:v10];
}

- (uint64_t)_isReadyToConnectSynchronousChecks
{
  v32 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  playerController = [self playerController];
  window = [self[155] window];
  allowsExternalPlayback = [playerController allowsExternalPlayback];
  usesExternalPlaybackWhileExternalScreenIsActive = [playerController usesExternalPlaybackWhileExternalScreenIsActive];
  externalPlaybackType = [playerController externalPlaybackType];
  isBeingDismissed = [self isBeingDismissed];
  isReadyToConnect = [self[143] isReadyToConnect];
  v9 = isReadyToConnect;
  v15 = isBeingDismissed ^ 1 | isReadyToConnect;
  v10 = _AVLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    isActive = [self[143] isActive];
    *buf = 136316930;
    v17 = "[AVPlayerViewController _isReadyToConnectSynchronousChecks]";
    v18 = 2112;
    v19 = window;
    v20 = 1024;
    v21 = allowsExternalPlayback;
    v22 = 1024;
    v23 = usesExternalPlaybackWhileExternalScreenIsActive;
    v24 = 1024;
    v25 = externalPlaybackType;
    v26 = 1024;
    v27 = isBeingDismissed;
    v28 = 1024;
    v29 = v9 & 1;
    v30 = 1024;
    v31 = isActive;
    _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, "%s window=%@ allowsExternalPlayback=%i usesExternalPlaybackWhileExternalScreenIsActive=%i externalPlaybackType=%i isBeingDismissed=%i isReadyToConnect=%i isActive=%i", buf, 0x3Au);
  }

  v12 = (window != 0) & allowsExternalPlayback & usesExternalPlaybackWhileExternalScreenIsActive;
  if (externalPlaybackType == 1)
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
  playerController = [(AVPlayerViewController *)self playerController];
  v4 = [playerController timeControlStatus] != 0;

  secondScreenConnection = self->_secondScreenConnection;

  [(AVSecondScreenConnection *)secondScreenConnection setPlaying:v4];
}

- (void)_setUpSecondScreenConnectionIfNeeded
{
  contentView = [(AVPlayerViewController *)self contentView];
  playbackContentContainerView = [contentView playbackContentContainerView];

  v5 = playbackContentContainerView;
  if (playbackContentContainerView)
  {
    if (!self->_secondScreenConnection)
    {
      hasPerformedInitialSetup = [(AVPlayerViewController *)self hasPerformedInitialSetup];
      v5 = playbackContentContainerView;
      if (hasPerformedInitialSetup)
      {
        v6 = [[AVSecondScreenContentViewConnection alloc] initWithContentView:playbackContentContainerView];
        player = [(AVPlayerViewController *)self player];
        [(AVSecondScreenConnection *)v6 setDebugInfoPlayer:player];

        player2 = [(AVPlayerViewController *)self player];
        [(AVSecondScreenConnection *)v6 setPlayer:player2];

        [(AVSecondScreenConnection *)v6 setRequiresTVOutScreen:1];
        [(AVSecondScreenContentViewConnection *)v6 startUpdates];
        v9 = +[AVSecondScreenController sharedInstance];
        [v9 addConnection:v6];

        secondScreenConnection = self->_secondScreenConnection;
        self->_secondScreenConnection = v6;

        [(AVPlayerViewController *)self _updateSecondScreenConnectionPlayingState];
        hasPerformedInitialSetup = [(AVPlayerViewController *)self _updateSecondScreenConnectionReadyToConnect];
        v5 = playbackContentContainerView;
      }
    }
  }

  MEMORY[0x1EEE66BB8](hasPerformedInitialSetup, v5);
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

  playerController = [(AVPlayerViewController *)self playerController];
  if (![playerController status])
  {
    playerController2 = [(AVPlayerViewController *)self playerController];
    hasContent = [playerController2 hasContent];

    if (hasContent)
    {
      goto LABEL_10;
    }

    playerController = _AVLog();
    if (os_log_type_enabled(playerController, OS_LOG_TYPE_ERROR))
    {
      v38 = _AVMethodProem(self);
      *buf = 138412290;
      v42 = v38;
      _os_log_error_impl(&dword_18B49C000, playerController, OS_LOG_TYPE_ERROR, "The player controller should have content before calling %@.", buf, 0xCu);
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
  _observationController = [(AVPlayerViewController *)self _observationController];
  v9 = MEMORY[0x1E69AE9C0];
  v40 = *MEMORY[0x1E69AE9C0];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
  mEMORY[0x1E69AED10] = [MEMORY[0x1E69AED10] sharedAVSystemController];
  [mEMORY[0x1E69AED10] setAttribute:v10 forKey:*MEMORY[0x1E69AECD8] error:0];

  [_observationController startObservingNotificationForName:*v9 object:0 notificationCenter:0 observationHandler:&__block_literal_global_448];
  [_observationController startObservingNotificationForName:*MEMORY[0x1E69587A0] object:0 notificationCenter:0 observationHandler:&__block_literal_global_450];
  v12 = [_observationController startObserving:self keyPath:@"playerController.player.currentItem" includeInitialValue:1 observationHandler:&__block_literal_global_456];
  [(AVObservationController *)self->_observationController startObservingNotificationForName:@"AVVolumeControllerVolumeChangedNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_458];
  v13 = [_observationController startObserving:self keyPath:@"playerController.player.muted" includeInitialValue:0 observationHandler:&__block_literal_global_463];
  [_observationController startObservingNotificationForName:@"AVNowPlayingInfoControllerDidReceiveSkipCommandEventNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_465];
  [_observationController startObservingNotificationForName:@"AVPictureInPictureControllerUserPlaybackStateDidChangeNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_467];
  [_observationController startObservingNotificationForName:@"AVNowPlayingInfoControllerDidReceiveStopCommandEventNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_469];
  [_observationController startObservingNotificationForName:@"AVPlayerControllerPlaybackDidEndNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_472];
  v14 = [_observationController startObserving:self keyPath:@"playerController.contentDimensions" includeInitialValue:1 observationHandler:&__block_literal_global_475];
  v15 = [_observationController startObserving:self keyPath:@"playerController.playingOnExternalScreen" includeInitialValue:0 observationHandler:&__block_literal_global_481];
  v16 = [_observationController startObserving:self keyPath:@"playerController.externalPlaybackType" includeInitialValue:0 observationHandler:&__block_literal_global_484];
  v17 = [_observationController startObserving:self keyPath:@"playerController.externalPlaybackAirPlayDeviceLocalizedName" includeInitialValue:0 observationHandler:&__block_literal_global_490];
  v39[0] = @"playerController.hasEnabledAudio";
  v39[1] = @"playerController.hasEnabledVideo";
  v39[2] = @"playerController.status";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:3];
  v19 = [_observationController startObserving:self keyPaths:v18 observationHandler:&__block_literal_global_503];

  v20 = [_observationController startObserving:self keyPath:@"playerController.status" includeInitialValue:1 observationHandler:&__block_literal_global_506];
  v21 = [_observationController startObserving:self keyPath:@"playerController.defaultPlaybackRate" includeInitialValue:1 observationHandler:&__block_literal_global_512];
  playerController3 = [(AVPlayerViewController *)self playerController];
  LOBYTE(v18) = objc_opt_respondsToSelector();

  if (v18)
  {
    v23 = [_observationController startObserving:self keyPath:@"playerController.timeControlStatus" includeInitialValue:0 observationHandler:&__block_literal_global_519];
  }

  v24 = [_observationController startObserving:self keyPath:@"playerController.allowsExternalPlayback" includeInitialValue:0 observationHandler:&__block_literal_global_524];
  v25 = [_observationController startObserving:self keyPath:@"playerController.scrubbing" includeInitialValue:0 observationHandler:&__block_literal_global_529_11353];
  v26 = [_observationController startObserving:self keyPath:@"playerController.playingOnSecondScreen" includeInitialValue:0 observationHandler:&__block_literal_global_534];
  v27 = [_observationController startObserving:self keyPath:@"contentView.playbackContentContainerView.bounds" includeInitialValue:1 observationHandler:&__block_literal_global_539];
  v28 = [_observationController startObserving:self keyPath:@"contentView.bounds" includeInitialValue:1 observationHandler:&__block_literal_global_541];
  playerController4 = [(AVPlayerViewController *)self playerController];
  v30 = objc_opt_respondsToSelector();

  if (v30)
  {
    v31 = [(AVObservationController *)self->_observationController startObserving:self keyPath:@"playerController.usesExternalPlaybackWhileExternalScreenIsActive" includeInitialValue:0 observationHandler:&__block_literal_global_549];
  }

  v32 = [_observationController startObserving:self keyPath:@"playerController.currentAssetIfReady" includeInitialValue:0 observationHandler:&__block_literal_global_554];
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
  v35 = [_observationController startObserving:self keyPath:@"playerController.rate" includeInitialValue:1 observationHandler:&__block_literal_global_571];
  if (![(AVPlayerViewController *)self _showsWolfControls])
  {
    [(AVPlayerViewController *)self _createPictureInPictureControllerIfNeeded];
  }

  if (!self->_controlsGeneration)
  {
    v36 = [_observationController startObserving:self keyPath:@"playerLayerView.videoGravity" includeInitialValue:1 observationHandler:&__block_literal_global_573];
    v37 = [_observationController startObserving:self keyPath:@"playerLayerView.frame" includeInitialValue:1 observationHandler:&__block_literal_global_578];
  }

  [(AVPlayerViewController *)self _showsWolfControls];
}

- (void)_updateSmartSubtitlesEnablementIfNeeded
{
  v6 = *MEMORY[0x1E69E9840];
  if (self)
  {
    playerController = [self playerController];
    if ([playerController externalPlaybackType] == 1)
    {
      v3 = _AVLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = 136315138;
        v5 = "[AVPlayerViewController _updateSmartSubtitlesEnablementIfNeeded]";
        _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s Airplay is active disable automatic subtitles", &v4, 0xCu);
      }

      [self[183] userRequestedSmartSubtitlesHiddenIfActive];
    }

    else
    {
      [(AVPlayerViewController *)self _updatePlayerControllerLegibleOptionsForSmartSubtitleDisplayType:?];
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
  if (self)
  {
    v2 = +[AVKitGlobalSettings shared];
    supportsContentTabs = [v2 supportsContentTabs];

    if (supportsContentTabs)
    {
      showsPlaybackControls = [self showsPlaybackControls];
      playerController = [self playerController];
      activePlayer = [playerController activePlayer];
      currentItem = [activePlayer currentItem];

      infoTabViewController = self[227];
      if (currentItem)
      {
        if (!infoTabViewController && showsPlaybackControls != 0)
        {
          v9 = [AVInfoTabCoordinator alloc];
          infoViewActions = [self infoViewActions];
          v11 = [(AVInfoTabCoordinator *)v9 initWithPlayerItem:currentItem actions:infoViewActions];
          v12 = self[228];
          self[228] = v11;

          infoTabViewController = [self[228] infoTabViewController];
          [self setInfoTabViewController:infoTabViewController];
          [(AVPlayerViewController *)self _updateInfoTabViewControllerIfNeeded];
          view = [self view];
          [view frame];
          v15 = v14;
          v17 = v16;

          [(AVPlayerViewController *)self _updateInfoTabViewControllerPreferredContentSizeIfNeededToFitSize:v15, v17];
        }
      }
    }
  }
}

- (void)_updateInfoTabViewControllerIfNeeded
{
  if (self)
  {
    v2 = +[AVKitGlobalSettings shared];
    supportsContentTabs = [v2 supportsContentTabs];

    if (supportsContentTabs)
    {
      playerController = [self playerController];
      activePlayer = [playerController activePlayer];
      currentItem = [activePlayer currentItem];

      [self[228] setPlayerItem:currentItem];
      [(AVPlayerViewController *)self _updateCustomInfoViewControllersIfNeeded];
    }
  }
}

- (void)_updateCustomInfoViewControllersIfNeeded
{
  if (self)
  {
    v2 = objc_alloc(MEMORY[0x1E695DF70]);
    v11 = [v2 initWithArray:MEMORY[0x1E695E0F0]];
    v3 = *(self + 1816);
    allowInfoMetadataSubpanel = [self allowInfoMetadataSubpanel];
    v5 = +[AVKitGlobalSettings shared];
    supportsContentTabs = [v5 supportsContentTabs];

    if (v3)
    {
      v7 = allowInfoMetadataSubpanel == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7 && supportsContentTabs != 0)
    {
      [v11 addObject:v3];
    }

    [v11 addObjectsFromArray:*(self + 1456)];
    controlsViewControllerIfChromeless = [*(self + 1248) controlsViewControllerIfChromeless];
    [controlsViewControllerIfChromeless setCustomInfoViewControllers:v11];

    controlsViewControllerIfGlass = [*(self + 1248) controlsViewControllerIfGlass];
    [controlsViewControllerIfGlass setCustomInfoViewControllers:v11];
  }
}

- (void)_updateInfoTabViewControllerPreferredContentSizeIfNeededToFitSize:(double)size
{
  if (self)
  {
    v6 = +[AVKitGlobalSettings shared];
    supportsContentTabs = [v6 supportsContentTabs];

    if (supportsContentTabs)
    {
      v8 = *(self + 1816);
      if (v8)
      {
        v9 = dbl_18B6EC4C0[a2 > size];

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

  playerController = [(AVPlayerViewController *)self playerController];
  [playerController contentDimensions];
  v6 = v5;
  v8 = v7;
  isExternalPlaybackActive = [playerController isExternalPlaybackActive];
  LOBYTE(v10) = 0;
  if ((v3 & 1) == 0 && (isExternalPlaybackActive & 1) == 0)
  {
    LOBYTE(v10) = 0;
    if (v8 > 0.0 && v6 > 0.0)
    {
      fullScreenViewController = [(AVPlayerViewController *)self fullScreenViewController];
      view = [fullScreenViewController view];
      v13 = view;
      if (view)
      {
        view2 = view;
      }

      else
      {
        view2 = [(AVPlayerViewController *)self view];
      }

      v15 = view2;

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
      traitCollection = [(AVPlayerViewController *)self traitCollection];
      [traitCollection displayCornerRadius];
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

- (void)setInfoTabViewController:(id)controller
{
  controllerCopy = controller;
  v5 = +[AVKitGlobalSettings shared];
  supportsContentTabs = [v5 supportsContentTabs];

  infoTabViewController = self->_infoTabViewController;
  if (supportsContentTabs)
  {
    v8 = controllerCopy;
    if (infoTabViewController == controllerCopy)
    {
      goto LABEL_6;
    }

    objc_storeStrong(&self->_infoTabViewController, controller);
    [(AVPlayerViewController *)self _updateCustomInfoViewControllersIfNeeded];
  }

  else
  {
    self->_infoTabViewController = 0;
  }

  v8 = controllerCopy;
LABEL_6:
}

- (void)setShowsVisualLookup:(BOOL)lookup
{
  if (self->_showsVisualLookup != lookup)
  {
    self->_showsVisualLookup = lookup;
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
  playerController = [(AVPlayerViewController *)self playerController];
  contentView = [(AVPlayerViewController *)self contentView];
  playbackContentContainerView = [contentView playbackContentContainerView];

  [playbackContentContainerView setPlayingOnSecondScreen:1];
  [playerController setPlayingOnSecondScreen:1];
}

- (void)_handleFastForwardKeyReleasedCommand:(id)command
{
  commandCopy = command;
  playerController = [(AVPlayerViewController *)self playerController];
  [playerController endScanningForward:commandCopy];
}

- (void)_handleFastForwardKeyPressedCommand:(id)command
{
  commandCopy = command;
  if (![(AVPlayerViewController *)self requiresLinearPlayback])
  {
    playerController = [(AVPlayerViewController *)self playerController];
    [playerController beginScanningForward:commandCopy];
  }
}

- (void)_handleRewindKeyReleasedCommand:(id)command
{
  commandCopy = command;
  playerController = [(AVPlayerViewController *)self playerController];
  [playerController endScanningBackward:commandCopy];
}

- (void)_handleRewindKeyPressedCommand:(id)command
{
  commandCopy = command;
  if (![(AVPlayerViewController *)self requiresLinearPlayback])
  {
    playerController = [(AVPlayerViewController *)self playerController];
    [playerController beginScanningBackward:commandCopy];
  }
}

- (void)_handleVolumeDownKeyReleasedCommand:(id)command
{
  _volumeController = [(AVPlayerViewController *)self _volumeController];
  [_volumeController endChangingVolume];
}

- (void)_handleVolumeDownKeyPressedCommand:(id)command
{
  _volumeController = [(AVPlayerViewController *)self _volumeController];
  [_volumeController beginChangingVolume];
  [_volumeController volume];
  v4 = v3 + -0.0625;
  v5 = 0.0;
  if (v4 >= 0.0)
  {
    [_volumeController volume];
    *&v5 = *&v5 + -0.0625;
  }

  [_volumeController setTargetVolume:v5];
}

- (void)_handleVolumeUpKeyReleasedCommand:(id)command
{
  _volumeController = [(AVPlayerViewController *)self _volumeController];
  [_volumeController endChangingVolume];
}

- (void)_handleVolumeUpKeyPressedCommand:(id)command
{
  _volumeController = [(AVPlayerViewController *)self _volumeController];
  [_volumeController beginChangingVolume];
  [_volumeController volume];
  v5 = v3;
  v4 = v5 + 0.0625;
  LODWORD(v5) = 1.0;
  if (v4 <= 1.0)
  {
    [_volumeController volume];
    *&v5 = *&v5 + 0.0625;
  }

  [_volumeController setTargetVolume:v5];
}

- (void)_handleShowPreviousFrameKeyCommand:(id)command
{
  commandCopy = command;
  if (![(AVPlayerViewController *)self requiresLinearPlayback])
  {
    playerController = [(AVPlayerViewController *)self playerController];
    [playerController seekFrameBackward:commandCopy];
  }
}

- (void)_handleGoToBeginningKeyCommand:(id)command
{
  commandCopy = command;
  if (![(AVPlayerViewController *)self requiresLinearPlayback])
  {
    playerController = [(AVPlayerViewController *)self playerController];
    [playerController seekToBeginning:commandCopy];
  }
}

- (void)_handleShowNextFrameKeyCommand:(id)command
{
  commandCopy = command;
  if (![(AVPlayerViewController *)self requiresLinearPlayback])
  {
    playerController = [(AVPlayerViewController *)self playerController];
    [playerController seekFrameForward:commandCopy];
  }
}

- (void)_handleSkipAhead15SecondsKeyCommand:(id)command
{
  if (![(AVPlayerViewController *)self requiresLinearPlayback])
  {
    playerController = [(AVPlayerViewController *)self playerController];
    v5 = objc_opt_respondsToSelector();

    playerController2 = [(AVPlayerViewController *)self playerController];
    if (v5)
    {
      [playerController2 seekByTimeInterval:15.0 toleranceBefore:0.5 toleranceAfter:0.5];
    }

    else
    {
      playerController3 = [(AVPlayerViewController *)self playerController];
      [playerController3 currentTime];
      [playerController2 seekToTime:v7 + 15.0];
    }
  }
}

- (void)_handleSkipBack15SecondsKeyCommand:(id)command
{
  if (![(AVPlayerViewController *)self requiresLinearPlayback])
  {
    playerController = [(AVPlayerViewController *)self playerController];
    v5 = objc_opt_respondsToSelector();

    playerController2 = [(AVPlayerViewController *)self playerController];
    if (v5)
    {
      [playerController2 seekByTimeInterval:-15.0 toleranceBefore:0.5 toleranceAfter:0.5];
    }

    else
    {
      playerController3 = [(AVPlayerViewController *)self playerController];
      [playerController3 currentTime];
      [playerController2 seekToTime:v7 + -15.0];
    }
  }
}

- (void)_handleVideoGravityPinchGesture:(id)gesture
{
  v11 = self->_videoGravityPinchGestureRecognizer;
  contentView = [(AVPlayerViewController *)self contentView];
  layoutClass = [contentView layoutClass];
  unsignedIntegerValue = [layoutClass unsignedIntegerValue];

  if (unsignedIntegerValue)
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

      [(AVPlayerViewController *)self setVideoGravity:v9 forLayoutClass:unsignedIntegerValue];
    }
  }
}

- (void)_togglePlaybackForCenterTapGesture:(id)gesture
{
  [(AVPlayerViewController *)self _handlePlaybackToggleNotificationForMetricsCollectionEvent];
  playerController = [(AVPlayerViewController *)self playerController];
  [playerController togglePlayback:self];
}

- (void)_handleUserInteractionObservationRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if ([recognizerCopy state] == 1)
  {
    [(AVPlayerViewController *)self _beginTrackingUserInteraction];
  }

  else if ([recognizerCopy state] == 3)
  {
    [(AVPlayerViewController *)self _endTrackingUserInteraction];
  }
}

- (void)_handleSingleTapGesture:(id)gesture
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
    selfCopy = self;
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
  entersFullScreenWhenTapped = [v5 entersFullScreenWhenTapped];

  if ([(AVPlayerViewController *)self _canEnterFullScreen]&& entersFullScreenWhenTapped)
  {
    [(AVPlayerViewController *)self _transitionToFullScreenAnimated:1 interactive:0 completionHandler:0];
  }

  else
  {
    if ([(AVPlayerViewController *)self showsVisualLookup])
    {
      [(AVPlayerViewController *)self setShowsVisualLookup:0];
    }

    controlsViewController = [(AVPlayerViewController *)self controlsViewController];
    [controlsViewController toggleVisibility:self];
  }
}

- (void)_handleDoubleTapGesture:(id)gesture
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
    selfCopy = self;
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s %d %p", &v16, 0x1Cu);
  }

  canToggleVideoGravityWhenEmbeddedInline = [(AVPlayerViewController *)self isPresentedFullScreen]|| [(AVPlayerViewController *)self isPresentingFullScreenFromInline]|| [(AVPlayerViewController *)self canToggleVideoGravityWhenEmbeddedInline];
  if (self->_usesGlassCatalystControls)
  {
    catalystPlaybackControlsController = [(AVPlayerViewController *)self catalystPlaybackControlsController];
    showsVideoZoomControl = [catalystPlaybackControlsController showsVideoZoomControl];
  }

  else
  {
    catalystPlaybackControlsController = [(AVPlayerViewController *)self chromePlaybackControlsController];
    showsVideoZoomControl = [catalystPlaybackControlsController showsVideoGravityButton];
  }

  v8 = showsVideoZoomControl;

  if ((canToggleVideoGravityWhenEmbeddedInline & v8) == 1)
  {
    isVideoZoomableInViewBounds = [(AVPlayerViewController *)self isVideoZoomableInViewBounds];
    if (![(AVPictureInPictureController *)self->_pictureInPictureController isPictureInPictureActive]&& isVideoZoomableInViewBounds)
    {
      contentView = [(AVPlayerViewController *)self contentView];
      layoutClass = [contentView layoutClass];

      if (layoutClass)
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
        contentView2 = [(AVPlayerViewController *)self contentView];
        layoutClass2 = [contentView2 layoutClass];
        -[AVPlayerViewController setVideoGravity:forLayoutClass:](self, "setVideoGravity:forLayoutClass:", v13, [layoutClass2 unsignedIntegerValue]);
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
    array = [MEMORY[0x1E695DF70] array];
    _localizedDiscoverabilityTitleForKeyCommandLocalizationKey = [(AVPlayerViewController *)self _localizedDiscoverabilityTitleForKeyCommandLocalizationKey];

    if (!_localizedDiscoverabilityTitleForKeyCommandLocalizationKey)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      localizedDiscoverabilityTitleForKeyCommandLocalizationKey = self->__localizedDiscoverabilityTitleForKeyCommandLocalizationKey;
      self->__localizedDiscoverabilityTitleForKeyCommandLocalizationKey = dictionary;
    }

    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __37__AVPlayerViewController_keyCommands__block_invoke;
    v21 = &unk_1E7207E58;
    selfCopy = self;
    v7 = array;
    v23 = v7;
    v8 = _Block_copy(&v18);
    (*(v8 + 2))(v8, @" ", 0, 0, sel__handlePlayPauseKeyCommand_, 0, @"KEYBOARD_DISCOVERABILITY_PLAY_PAUSE", @"Play/Pause keyboard command discoverability title", v18, v19, v20, v21, selfCopy);
    _volumeController = [(AVPlayerViewController *)self _volumeController];
    currentRouteHasVolumeControl = [_volumeController currentRouteHasVolumeControl];

    if (currentRouteHasVolumeControl)
    {
      (*(v8 + 2))(v8, *MEMORY[0x1E69DDF30], 0, 1, sel__handleVolumeUpKeyPressedCommand_, sel__handleVolumeUpKeyReleasedCommand_, @"KEYBOARD_DISCOVERABILITY_VOLUME_UP", @"Volume up keyboard command discoverability title");
      (*(v8 + 2))(v8, *MEMORY[0x1E69DDE90], 0, 1, sel__handleVolumeDownKeyPressedCommand_, sel__handleVolumeDownKeyReleasedCommand_, @"KEYBOARD_DISCOVERABILITY_VOLUME_DOWN", @"Volume down keyboard command discoverability title");
    }

    playerController = [(AVPlayerViewController *)self playerController];
    if (!-[AVPlayerViewController requiresLinearPlayback](self, "requiresLinearPlayback") && [playerController canSeek])
    {
      v12 = *MEMORY[0x1E69DDF10];
      (*(v8 + 2))(v8, *MEMORY[0x1E69DDF10], 0, 1, sel__handleSkipBack15SecondsKeyCommand_, 0, @"KEYBOARD_DISCOVERABILITY_SKIP_BACK_15", @"Skip back 15 seconds keyboard command discoverability title");
      v13 = *MEMORY[0x1E69DDF28];
      (*(v8 + 2))(v8, *MEMORY[0x1E69DDF28], 0, 1, sel__handleSkipAhead15SecondsKeyCommand_, 0, @"KEYBOARD_DISCOVERABILITY_SKIP_AHEAD_15", @"Skip ahead 15 seconds keyboard command discoverability title");
      if ([playerController canSeekToBeginning])
      {
        (*(v8 + 2))(v8, v12, 0x80000, 1, sel__handleGoToBeginningKeyCommand_, 0, @"KEYBOARD_DISCOVERABILITY_GO_TO_BEGINNING", @"Go to beginning keyboard command discoverability title");
      }

      if ([playerController canScanBackward])
      {
        (*(v8 + 2))(v8, v12, 0, 1, sel__handleRewindKeyPressedCommand_, sel__handleRewindKeyReleasedCommand_, @"KEYBOARD_DISCOVERABILITY_REWIND", @"Rewind keyboard command discoverability title");
      }

      if ([playerController canScanForward])
      {
        (*(v8 + 2))(v8, v13, 0, 1, sel__handleFastForwardKeyPressedCommand_, sel__handleFastForwardKeyReleasedCommand_, @"KEYBOARD_DISCOVERABILITY_FAST_FORWARD", @"Fast forward keyboard command discoverability title");
      }

      if ([playerController canSeekFrameBackward])
      {
        (*(v8 + 2))(v8, v12, 0x20000, 1, sel__handleShowPreviousFrameKeyCommand_, 0, @"KEYBOARD_DISCOVERABILITY_SHOW_PREVIOUS_FRAME", @"Show previous frame keyboard command discoverability title");
      }

      if ([playerController canSeekFrameForward])
      {
        (*(v8 + 2))(v8, v13, 0x20000, 1, sel__handleShowNextFrameKeyCommand_, 0, @"KEYBOARD_DISCOVERABILITY_SHOW_NEXT_FRAME", @"Show next frame keyboard command discoverability title");
      }
    }

    contentView = [(AVPlayerViewController *)self contentView];
    isCoveringWindow = [contentView isCoveringWindow];

    if (isCoveringWindow)
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
  selfCopy = self;
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
          identifier = [v9 identifier];
          v11 = [identifier isEqualToString:@"com.apple.avkit.TransportMenuItem.MediaPresentationSettingsAudioGroup"];
        }

        else
        {
          v11 = 0;
        }

        title = [v9 title];
        if (title)
        {
          v13 = title;
          image = [v9 image];
          v15 = image == 0;

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

  controlsViewController = selfCopy->_controlsViewController;
  if (controlsViewController)
  {
    [(AVMobileControlsViewController *)controlsViewController setTransportBarCustomMenuItems:v23];
  }

  v21 = selfCopy->_transportBarCustomMenuItems;
  selfCopy->_transportBarCustomMenuItems = v23;
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
    transitioningDelegate = [(AVPlayerViewController *)&v9 transitioningDelegate];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AVPlayerViewController;
    transitioningDelegate2 = [(AVPlayerViewController *)&v8 transitioningDelegate];
    v5 = transitioningDelegate2;
    if (transitioningDelegate2)
    {
      _avkitPreferredTransitioningDelegate = transitioningDelegate2;
    }

    else
    {
      _avkitPreferredTransitioningDelegate = [(AVPlayerViewController *)self _avkitPreferredTransitioningDelegate];
    }

    transitioningDelegate = _avkitPreferredTransitioningDelegate;
  }

  return transitioningDelegate;
}

- (BOOL)avkit_isEffectivelyFullScreen
{
  v44 = *MEMORY[0x1E69E9840];
  if ([(AVPlayerViewController *)self _showsWolfControls])
  {
    v3 = ![(AVPlayerViewController *)self modalPresentationStyle]|| [(AVPlayerViewController *)self modalPresentationStyle]== 5 || [(AVPlayerViewController *)self modalPresentationStyle]== 8;
    view = [(AVPlayerViewController *)self view];
    window = [view window];

    if (window)
    {
      view2 = [(AVPlayerViewController *)self view];
      window2 = [view2 window];
      view3 = [(AVPlayerViewController *)self view];
      [view3 bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      view4 = [(AVPlayerViewController *)self view];
      [window2 convertRect:view4 fromView:{v11, v13, v15, v17}];

      UISizeRoundToScale();
      v20 = v19;
      v22 = v21;
      view5 = [(AVPlayerViewController *)self view];
      window3 = [view5 window];
      [window3 bounds];

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

  contentView = [(AVPlayerViewController *)self contentView];
  isCoveringWindow = [contentView isCoveringWindow];

  return isCoveringWindow;
}

- (int64_t)preferredStatusBarStyle
{
  presentationContext = [(AVPlayerViewController *)self presentationContext];
  if ([presentationContext isDismissing])
  {
    presentationContext2 = [(AVPlayerViewController *)self presentationContext];
    rotatableWindowViewController = [presentationContext2 rotatableWindowViewController];

    if (rotatableWindowViewController)
    {
      return 0;
    }
  }

  else
  {
  }

  fullScreenViewController = [(AVPlayerViewController *)self fullScreenViewController];
  viewIfLoaded = [fullScreenViewController viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];
  v11 = windowScene;
  if (windowScene)
  {
    windowScene2 = windowScene;
  }

  else
  {
    viewIfLoaded2 = [(AVPlayerViewController *)self viewIfLoaded];
    window2 = [viewIfLoaded2 window];
    windowScene2 = [window2 windowScene];
  }

  if ([(AVPlayerViewController *)self prefersStatusBarHidden])
  {
    statusBarManager = [windowScene2 statusBarManager];
    statusBarStyle = [statusBarManager statusBarStyle];
  }

  else
  {
    statusBarStyle = 1;
  }

  return statusBarStyle;
}

- (BOOL)prefersStatusBarHidden
{
  v29 = *MEMORY[0x1E69E9840];
  fullScreenViewController = [(AVPlayerViewController *)self fullScreenViewController];
  viewIfLoaded = [fullScreenViewController viewIfLoaded];
  v5 = viewIfLoaded;
  if (viewIfLoaded)
  {
    viewIfLoaded2 = viewIfLoaded;
  }

  else
  {
    viewIfLoaded2 = [(AVPlayerViewController *)self viewIfLoaded];
  }

  v7 = viewIfLoaded2;

  if (-[AVPlayerViewController isPresentingFullScreenFromInline](self, "isPresentingFullScreenFromInline") || (-[AVPlayerViewController navigationController](self, "navigationController"), (v8 = objc_claimAutoreleasedReturnValue()) == 0) || (v9 = v8, -[AVPlayerViewController navigationController](self, "navigationController"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isNavigationBarHidden], v10, v9, (v11 & 1) != 0))
  {
    fullScreenViewController2 = [(AVPlayerViewController *)self fullScreenViewController];
    if ([fullScreenViewController2 isBeingDismissed])
    {
      presentationContext = [(AVPlayerViewController *)self presentationContext];
      rotatableWindowViewController = [presentationContext rotatableWindowViewController];

      if (rotatableWindowViewController)
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

    _controlsViewControllerPrefersStatusBarHidden = [(AVPlayerViewController *)self _controlsViewControllerPrefersStatusBarHidden];
  }

  else
  {
    v22.receiver = self;
    v22.super_class = AVPlayerViewController;
    _controlsViewControllerPrefersStatusBarHidden = [(AVPlayerViewController *)&v22 prefersStatusBarHidden];
  }

  v15 = _controlsViewControllerPrefersStatusBarHidden;
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

  contentView = [(AVPlayerViewController *)self contentView];
  isCoveringWindow = [contentView isCoveringWindow];

  return isCoveringWindow;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  if ([(AVPlayerViewController *)self _showsWolfControls])
  {
    v12.receiver = self;
    v12.super_class = AVPlayerViewController;
    [(AVPlayerViewController *)&v12 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  }

  else
  {
    contentView = [(AVPlayerViewController *)self contentView];
    viewIfLoaded = [(AVPlayerViewController *)self viewIfLoaded];
    v10 = [contentView isDescendantOfView:viewIfLoaded];

    if (v10)
    {
      [(AVPlayerViewController *)self _contentViewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
    }

    v11.receiver = self;
    v11.super_class = AVPlayerViewController;
    [(AVPlayerViewController *)&v11 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
    [(AVPlayerViewController *)self _updateInfoTabViewControllerPreferredContentSizeIfNeededToFitSize:height];
  }
}

- (void)didMoveToParentViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = AVPlayerViewController;
  [(AVPlayerViewController *)&v4 didMoveToParentViewController:controller];
  if (![(AVPlayerViewController *)self _showsWolfControls])
  {
    [(AVPlayerViewController *)self _updatePlaybackControlsState];
  }
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = AVPlayerViewController;
  [(AVPlayerViewController *)&v5 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  [(AVPlayerViewController *)self _updateVideoGravityPinchGestureEnablementState];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
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
  [(AVPlayerViewController *)&v6 viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
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
  [(AVPlayerViewController *)&v6 viewDidDisappear:disappearCopy];
  self->_playerViewControllerAnimated = 0;
  [(AVPlayerViewController *)self setShouldUseNetworkingResourcesForLiveStreamingWhilePaused:0];
  [(AVPlayerViewController *)self _updateSecondScreenConnectionReadyToConnect];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
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
  [(AVPlayerViewController *)&v14 viewDidAppear:appearCopy];
  scrollingObserver = [(AVPlayerViewControllerContentView *)self->_playerViewControllerContentView scrollingObserver];
  isScrolling = [scrollingObserver isScrolling];

  if ((isScrolling & 1) == 0)
  {
    [(AVPlayerViewController *)self _updateViewControllerPreferencesIfNeeded];
    [(AVPlayerViewController *)self _updatePlaybackControlsState];
    if (self->_playerShouldAutoplay)
    {
      playerController = [(AVPlayerViewController *)self playerController];
      [playerController autoplay:0];
    }

    [(AVPlayerViewController *)self setShouldUseNetworkingResourcesForLiveStreamingWhilePaused:1];
    usesGlassCatalystControls = self->_usesGlassCatalystControls;
    contentView = [(AVPlayerViewController *)self contentView];
    v11 = contentView;
    if (usesGlassCatalystControls)
    {
      [contentView glassPlaybackControlsView];
    }

    else
    {
      [contentView chromePlaybackControlsView];
    }
    v12 = ;

    if (!v12)
    {
      contentView2 = [(AVPlayerViewController *)self contentView];
      [contentView2 setNeedsLayout];
    }

    [(AVPlayerViewController *)self updateVideoBounds];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = AVPlayerViewController;
  [(AVPlayerViewController *)&v13 viewWillAppear:appear];
  transitionCoordinator = [(AVPlayerViewController *)self transitionCoordinator];
  if ([transitionCoordinator isAnimated])
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
    controlsViewController = [(AVPlayerViewController *)self controlsViewController];
    [(AVPlayerViewController *)self addChildViewController:controlsViewController];
    [(AVPlayerViewControllerContentView *)v6 setControlsViewController:controlsViewController];

    [controlsViewController didMoveToParentViewController:self];
    self->_controlsViewControllerHasBeenSetUp = 1;
  }

  scrollingObserver = [(AVPlayerViewControllerContentView *)self->_playerViewControllerContentView scrollingObserver];
  isScrolling = [scrollingObserver isScrolling];

  if ((isScrolling & 1) == 0)
  {
    transitionCoordinator2 = [(AVPlayerViewController *)self transitionCoordinator];
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
    [transitionCoordinator2 animateAlongsideTransition:v12 completion:v11];

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
    contentView = [(AVPlayerViewController *)self contentView];
    if (usesGlassCatalystControls)
    {
      [(AVPlayerViewController *)self catalystPlaybackControlsController];
    }

    else
    {
      [(AVPlayerViewController *)self chromePlaybackControlsController];
    }
    v5 = ;
    [contentView setGen1Delegate:v5];
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
    _behaviorStorage = [(AVPlayerViewController *)self _behaviorStorage];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __34__AVPlayerViewController_loadView__block_invoke;
    v32[3] = &unk_1E7207E10;
    v34 = &v36;
    v11 = v9;
    v33 = v11;
    p_buf = &buf;
    [_behaviorStorage enumerateAllBehaviorContextsImplementingSelector:sel_makePlaybackContentContainerWithFrame_activeContentView_ forProtocol:&unk_1EFF32480 usingBlock:v32];

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
    playerController = [(AVPlayerViewController *)self playerController];
    [v13 setPlayerController:playerController];

    [*(*(&buf + 1) + 40) setVideoGravity:self->_videoGravity];
    controlsGeneration = self->_controlsGeneration;
    v16 = [AVPlayerViewControllerContentView alloc];
    v17 = v37[5];
    _targetVideoGravitiesForLayoutClass = [(AVPlayerViewController *)self _targetVideoGravitiesForLayoutClass];
    v19 = [(AVPlayerViewControllerContentView *)v16 initWithFrame:v17 playbackContentContainerView:_targetVideoGravitiesForLayoutClass targetVideoGravities:v5, v6, v7, v8];

    [(AVPlayerViewControllerContentView *)v19 setDelegate:self];
    [(AVPlayerViewControllerContentView *)v19 setWantsBackdropView:controlsGeneration == 0];
    [(AVPlayerViewControllerContentView *)v19 setShowsPlaybackControls:[(AVPlayerViewController *)self showsPlaybackControls]];
    [(AVPlayerViewControllerContentView *)v19 setCanAutomaticallyZoomLetterboxVideos:!self->_hasClientSetVideoGravity];
    scrollingObserver = [(AVPlayerViewControllerContentView *)v19 scrollingObserver];
    [scrollingObserver addDelegate:self];

    [(AVPlayerViewControllerContentView *)v19 setOverrideUserInterfaceStyle:[(AVPlayerViewController *)self overrideUserInterfaceStyle]];
    objc_storeStrong(&self->_playerViewControllerContentView, v19);
    v43 = objc_opt_class();
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
    v22 = [(AVPlayerViewController *)self registerForTraitChanges:v21 withHandler:&__block_literal_global_275];

    v23 = [AVPlayerView alloc];
    avkit_possibleWindowForControllingOverallAppearance = [*MEMORY[0x1E69DDA98] avkit_possibleWindowForControllingOverallAppearance];
    [avkit_possibleWindowForControllingOverallAppearance bounds];
    v25 = [(AVPlayerView *)v23 initWithFrame:v19 contentView:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];

    objc_storeStrong(&self->_playerViewControllerView, v25);
    appearanceProxy = [(AVPresentationContainerView *)v25 appearanceProxy];
    [appearanceProxy setActualView:v37[5]];

    [(AVPlayerView *)v25 setAutoresizingMask:18];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(AVPresentationContainerView *)v25 setBackgroundColor:blackColor];

    [(AVPlayerViewController *)self setView:v25];
    if (!self->_playerLayerView)
    {
      [(AVPlayerViewController *)self setPlayerLayerView:*(*(&buf + 1) + 40)];
    }

    [(AVPlayerViewController *)self _updatePreferredDisplayDynamicRange];
    v28 = +[AVKitGlobalSettings shared];
    constrainedHDREnabled = [v28 constrainedHDREnabled];

    if (constrainedHDREnabled)
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
  if (!self)
  {
    return;
  }

  v2 = +[AVKitGlobalSettings shared];
  constrainedHDREnabled = [v2 constrainedHDREnabled];

  if (!constrainedHDREnabled)
  {
    return;
  }

  v4 = *MEMORY[0x1E69792A8];
  v5 = *(self + 1656);
  switch(v5)
  {
    case 0:
      if ([self isPresentingFullScreenFromInline])
      {
        fullScreenViewController = [self fullScreenViewController];
        if (fullScreenViewController)
        {
          selfCopy = [self fullScreenViewController];
        }

        else
        {
          selfCopy = self;
        }

        selfCopy2 = selfCopy;
      }

      else
      {
        selfCopy2 = self;
      }

      traitCollection = [selfCopy2 traitCollection];
      _headroomUsage = [traitCollection _headroomUsage];

      v7 = [(AVPlayerViewController *)self _preferredDynamicRangeForAutomaticModeWithHeadroomUsage:_headroomUsage];

      v4 = selfCopy2;
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

  playerLayer = [*(self + 1784) playerLayer];
  v14 = _AVLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [playerLayer description];
    v16 = 136315650;
    v17 = "[AVPlayerViewController _updatePreferredDisplayDynamicRange]";
    v18 = 2112;
    v19 = v4;
    v20 = 2112;
    v21 = v15;
    _os_log_impl(&dword_18B49C000, v14, OS_LOG_TYPE_DEFAULT, "%s Setting dynamic range: %@, on playerLayer: %@", &v16, 0x20u);
  }

  [playerLayer setPreferredDynamicRange:v4];
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

- (void)setView:(id)view
{
  if (self->_playerViewControllerView == view)
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

  pictureInPictureActivitySessionIdentifier = [(AVPlayerViewController *)self pictureInPictureActivitySessionIdentifier];

  if ([(AVPlayerViewController *)self _showsWolfControls])
  {
    view = [(AVPlayerViewController *)self view];
    window = [view window];
    v6 = pictureInPictureActivitySessionIdentifier | window;

    if (!v6)
    {
      return;
    }

    goto LABEL_11;
  }

  scrollingObserver = [(AVPlayerViewControllerContentView *)self->_playerViewControllerContentView scrollingObserver];
  if ([scrollingObserver isScrolling])
  {
    v8 = 0;
  }

  else
  {
    window2 = [(AVPlayerViewControllerContentView *)self->_playerViewControllerContentView window];
    v8 = window2 != 0;
  }

  if (pictureInPictureActivitySessionIdentifier || v8)
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
    _showsWolfControls = [v1 _showsWolfControls];
    [v1 _startPlayerLayerViewObservationsIfNeeded];
    v4 = v1[199];
    if (_showsWolfControls)
    {
      v5 = [v4 startObserving:v1 keyPath:@"playerController.status" includeInitialValue:1 observationHandler:&__block_literal_global_602];
      _behaviorStorage = [v1 _behaviorStorage];
      [_behaviorStorage enumerateAllBehaviorContextsImplementingSelector:sel_viewDidLoad forProtocol:&unk_1EFF32480 usingBlock:&__block_literal_global_604];

      keyCommands = [v1 keyCommands];
    }

    else
    {
      v8 = [v4 startObserving:v1 keyPath:@"playerController.status" includeInitialValue:1 observationHandler:&__block_literal_global_606];
      [v1[199] startObservingNotificationForName:@"AVSecondScreenConnectionActiveDidChangeNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_608];
      [v1[199] startObservingNotificationForName:*MEMORY[0x1E69DE2D8] object:v1 notificationCenter:0 observationHandler:&__block_literal_global_610];
      [v1[199] startObservingNotificationForName:*MEMORY[0x1E69DE2C8] object:v1 notificationCenter:0 observationHandler:&__block_literal_global_612];
      _behaviorStorage2 = [v1 _behaviorStorage];
      [_behaviorStorage2 enumerateAllBehaviorContextsImplementingSelector:sel_viewDidLoad forProtocol:&unk_1EFF32480 usingBlock:&__block_literal_global_614];

      keyCommands2 = [v1 keyCommands];
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
  contentView = [self contentView];
  if (!contentView)
  {
    v3 = _AVLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v34 = 0;
      _os_log_error_impl(&dword_18B49C000, v3, OS_LOG_TYPE_ERROR, "Content view should be loaded before attempting to add gesture recognizers to it.", v34, 2u);
    }
  }

  _transitionController = [self _transitionController];
  v5 = *(self + 1256);
  v6 = *(self + 1480);
  contentView2 = [self contentView];
  if ((v6 & 1) != 0 || !v5)
  {
    v17 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleDoubleTapGesture_];
    v18 = *(self + 1368);
    *(self + 1368) = v17;

    [*(self + 1368) setDelegate:self];
    [*(self + 1368) setNumberOfTapsRequired:2];
    [contentView2 addGestureRecognizer:*(self + 1368)];
  }

  else
  {
    [(AVPlayerViewController *)self _attachContentTabPanGestureRecognizerIfNeeded];
    v8 = [[AVCenterTapGestureRecognizer alloc] initWithTarget:self action:sel__togglePlaybackForCenterTapGesture_];
    v9 = *(self + 1832);
    *(self + 1832) = v8;

    [*(self + 1832) setDelegate:self];
    [contentView2 addGestureRecognizer:*(self + 1832)];
    v10 = [[AVScrubbingGesturePlatformAdapter_iOS alloc] initWithView:contentView2];
    v11 = [[AVScrubbingGestureController alloc] initWithPlatformAdapter:v10];
    v12 = *(self + 1200);
    *(self + 1200) = v11;

    [*(self + 1200) setDelegate:self];
    v13 = *(self + 1200);
    playerController = [self playerController];
    [v13 setPlayerController:playerController];

    [*(self + 1200) setScrubsHaveMomentum:1];
    v15 = [objc_alloc(MEMORY[0x1E69DCD80]) initWithTarget:self action:sel__handleVideoGravityPinchGesture_];
    v16 = *(self + 1384);
    *(self + 1384) = v15;

    [contentView2 addGestureRecognizer:*(self + 1384)];
    [(AVPlayerViewController *)self _updateScrubbingGestureEnabledState];
  }

  if (!*(self + 1360))
  {
    v19 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleSingleTapGesture_];
    v20 = *(self + 1360);
    *(self + 1360) = v19;

    [*(self + 1360) setDelegate:self];
    if (*(self + 1368))
    {
      [*(self + 1360) requireGestureRecognizerToFail:?];
    }

    [contentView addGestureRecognizer:*(self + 1360)];
  }

  if (!*(self + 1376))
  {
    v21 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleDoubleTapTwoFingersGesture_];
    v22 = *(self + 1376);
    *(self + 1376) = v21;

    [*(self + 1376) setNumberOfTapsRequired:2];
    [*(self + 1376) setNumberOfTouchesRequired:2];
    [contentView addGestureRecognizer:*(self + 1376)];
  }

  if (!*(self + 1392))
  {
    v23 = [[AVExternalGestureRecognizerPreventer alloc] initWithTarget:0 action:0];
    v24 = *(self + 1392);
    *(self + 1392) = v23;

    [contentView addGestureRecognizer:*(self + 1392)];
  }

  if (!*(self + 1400))
  {
    v25 = [[AVUserInteractionObserverGestureRecognizer alloc] initWithTarget:self action:sel__handleUserInteractionObservationRecognizer_];
    v26 = *(self + 1400);
    *(self + 1400) = v25;

    [contentView addGestureRecognizer:*(self + 1400)];
  }

  if (!*(self + 1752))
  {
    v27 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:self action:sel__handleHoverGestureRecognizer_];
    v28 = *(self + 1752);
    *(self + 1752) = v27;

    [*(self + 1752) setDelegate:self];
    [self setHoverGestureRecognizer:*(self + 1752)];
    [contentView addGestureRecognizer:*(self + 1752)];
  }

  if (!*(self + 1760))
  {
    v29 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel__handleScrubbingGestureRecognizer_];
    [v29 setAllowedScrollTypesMask:2];
    [v29 _setiOSMacIgnoreScrollDirectionUserPreference:1];
    [v29 setDelegate:self];
    [v29 setAllowedTouchTypes:&unk_1EFF12E60];
    [self setScrubGestureRecognizer:v29];
    [contentView addGestureRecognizer:v29];
  }

  if (!*(self + 1408))
  {
    v30 = [objc_alloc(MEMORY[0x1E69DD588]) initWithTarget:self action:sel__handleScrubInteruptionGestureRecognizer_];
    v31 = *(self + 1408);
    *(self + 1408) = v30;

    [contentView addGestureRecognizer:*(self + 1408)];
  }

  [_transitionController setInteractionView:contentView];
  if (!*(self + 1416))
  {
    v32 = objc_alloc_init(AVInteractiveTransitionGestureTracker);
    v33 = *(self + 1416);
    *(self + 1416) = v32;

    [_transitionController setInteractiveGestureTracker:*(self + 1416)];
  }

  [(AVPlayerViewController *)self _updateGesturesEnablementStates];
}

- (void)_setUpVideoFrameVisualAnalyzerIfNeeded
{
  if (self && [self allowsVideoFrameAnalysis] && objc_msgSend(self, "hasPerformedInitialSetup"))
  {
    playerLayerView = [self playerLayerView];
    playerLayer = [playerLayerView playerLayer];

    v3 = [[AVVideoFrameVisualAnalyzer alloc] initWithPlayerController:*(self + 1568) playerLayer:playerLayer];
    v4 = *(self + 1192);
    *(self + 1192) = v3;

    [*(self + 1192) setDelegate:self];
    [(AVPlayerViewController *)self _updateVisualAnalysisViewActiveInteractionTypes];
    if (*(self + 1552) == 1)
    {
      v5 = 30;
    }

    else
    {
      v5 = *(self + 1552);
    }

    [*(self + 1192) setVideoFrameAnalysisTypes:v5];
    [(AVPlayerViewController *)self _updateVisualAnalyzerEnabledStateIfNeeded];
  }
}

- (void)_setUpEnhanceDialogueControllerIfNeeded
{
  if (!self[151])
  {
    v2 = +[AVKitGlobalSettings shared];
    enhanceDialogueEnabled = [v2 enhanceDialogueEnabled];

    if (enhanceDialogueEnabled)
    {
      v4 = objc_alloc_init(AVEnhanceDialogueController);
      v5 = self[151];
      self[151] = v4;

      v6 = self[151];
      playerController = [self playerController];
      [v6 setPlayerController:playerController];

      [(AVPlayerViewController *)self _updateEnhanceDialogueEnabled];
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
      showsAudioLanguageMenu = [v1 showsAudioLanguageMenu];
    }

    else
    {
      showsAudioLanguageMenu = 0;
    }

    v3 = v1[151];

    return [v3 setEnabled:showsAudioLanguageMenu];
  }

  return result;
}

- (void)_attachContentTabPanGestureRecognizerIfNeeded
{
  if (self)
  {
    contentView = [self contentView];
    _contentTabPanGestureRecognizer = [(AVPlayerViewController *)self _contentTabPanGestureRecognizer];
    if (_contentTabPanGestureRecognizer)
    {
      gestureRecognizers = [contentView gestureRecognizers];
      v4 = [gestureRecognizers containsObject:_contentTabPanGestureRecognizer];

      if ((v4 & 1) == 0)
      {
        [contentView addGestureRecognizer:_contentTabPanGestureRecognizer];
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

- (void)setImageAnalysis:(id)analysis
{
  analysisCopy = analysis;
  imageAnalysis = self->_imageAnalysis;
  v9 = analysisCopy;
  if (imageAnalysis != analysisCopy)
  {
    v7 = +[AVKitGlobalSettings shared];
    visualAnalysisSupported = [v7 visualAnalysisSupported];

    if (visualAnalysisSupported)
    {
      objc_storeStrong(&self->_imageAnalysis, analysis);
      [(AVPlayerViewController *)self _setUpVisualAnalysisViewIfNeeded];
      [(AVPlayerViewController *)&self->super.super.super.isa _updateAnalysisViewImageAnalysis];
      goto LABEL_6;
    }

    imageAnalysis = self->_imageAnalysis;
  }

  self->_imageAnalysis = 0;

LABEL_6:
}

- (void)setAllowInfoMetadataSubpanel:(BOOL)subpanel
{
  subpanelCopy = subpanel;
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
    isArtemisApp = [v7 isArtemisApp];

    if ((isArtemisApp & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Error: setAllowInfoMetadataSubpanel is only available on the TV app and the Artemis app."];
    }
  }

  if (self->_allowInfoMetadataSubpanel != subpanelCopy)
  {
    self->_allowInfoMetadataSubpanel = subpanelCopy;
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

- (void)setLegibleContentInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_legibleContentInsets.top, v3), vceqq_f64(*&self->_legibleContentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_legibleContentInsets = insets;
    [(AVPlayerViewController *)self _updatePlayerLayerLegibleContentInsetsIfNeeded];
  }
}

- (void)setCanPausePlaybackWhenClosingPictureInPicture:(BOOL)picture
{
  if (self->_canPausePlaybackWhenClosingPictureInPicture != picture)
  {
    pictureCopy = picture;
    self->_canPausePlaybackWhenClosingPictureInPicture = picture;
    if (![(AVPlayerViewController *)self _showsWolfControls])
    {
      pictureInPictureController = self->_pictureInPictureController;

      [(AVPictureInPictureController *)pictureInPictureController setCanPausePlaybackWhenClosingPictureInPicture:pictureCopy];
    }
  }
}

- (void)setDefaultPlaybackRate:(double)rate
{
  playerController = [(AVPlayerViewController *)self playerController];
  [playerController setDefaultPlaybackRate:rate];
}

- (void)setHoveringOverPlaybackControl:(BOOL)control
{
  if (self->_hoveringOverPlaybackControl != control)
  {
    self->_hoveringOverPlaybackControl = control;
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
  contentView = [(AVPlayerViewController *)self contentView];
  if (contentView)
  {
    v3 = [MEMORY[0x1E69DD258] _viewControllerForFullScreenPresentationFromView:contentView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_activeViewControllerForContentView
{
  fullScreenViewController = [(AVPlayerViewController *)self fullScreenViewController];
  associatedFullScreenViewController = [fullScreenViewController associatedFullScreenViewController];
  v5 = associatedFullScreenViewController;
  if (associatedFullScreenViewController)
  {
    v6 = associatedFullScreenViewController;
  }

  else
  {
    fullScreenViewController2 = [(AVPlayerViewController *)self fullScreenViewController];
    v8 = fullScreenViewController2;
    if (fullScreenViewController2)
    {
      selfCopy = fullScreenViewController2;
    }

    else
    {
      selfCopy = self;
    }

    v6 = selfCopy;
  }

  return v6;
}

- (void)setPictureInPictureActivitySessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [identifierCopy copy];
  pictureInPictureActivitySessionIdentifier = self->_pictureInPictureActivitySessionIdentifier;
  self->_pictureInPictureActivitySessionIdentifier = v4;

  if (identifierCopy)
  {
    [(AVPlayerViewController *)self loadViewIfNeeded];
  }

  [(AVPictureInPictureController *)self->_pictureInPictureController setActivitySessionIdentifier:identifierCopy];
}

- (void)setOverrideLayoutMarginsWhenEmbeddedInline:(id)inline
{
  inlineCopy = inline;
  objc_storeStrong(&self->_overrideLayoutMarginsWhenEmbeddedInline, inline);
  if (self->_usesGlassCatalystControls)
  {
    [(AVPlayerViewController *)self _catalystGlassControlsViewController];
  }

  else
  {
    [(AVPlayerViewController *)self _chromeControlsViewController];
  }
  v5 = ;
  [v5 setEmbeddedInlineLayoutMargins:inlineCopy];
}

- (void)setPlayButtonHandlerForLazyPlayerLoading:(id)loading
{
  usesGlassCatalystControls = self->_usesGlassCatalystControls;
  loadingCopy = loading;
  if (usesGlassCatalystControls)
  {
    [(AVPlayerViewController *)self catalystPlaybackControlsController];
  }

  else
  {
    [(AVPlayerViewController *)self chromePlaybackControlsController];
  }
  v6 = ;
  [v6 setPlayButtonHandlerForLazyPlayerLoading:loadingCopy];
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
  playButtonHandlerForLazyPlayerLoading = [v2 playButtonHandlerForLazyPlayerLoading];

  return playButtonHandlerForLazyPlayerLoading;
}

- (void)setInfoViewActions:(NSArray *)infoViewActions
{
  v29 = *MEMORY[0x1E69E9840];
  if (self->_infoViewActions != infoViewActions)
  {
    _defaultInfoViewActions = [(NSArray *)infoViewActions copy];
    if (!_defaultInfoViewActions)
    {
      _defaultInfoViewActions = [(AVPlayerViewController *)self _defaultInfoViewActions];
    }

    array = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = _defaultInfoViewActions;
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
            title = [v7 title];
            image = [v7 image];
            identifier = [v7 identifier];
            v24[0] = MEMORY[0x1E69E9820];
            v24[1] = 3221225472;
            v24[2] = __50__AVPlayerViewController__createConfiguredAction___block_invoke;
            v24[3] = &unk_1E7208C60;
            v25 = v7;
            objc_copyWeak(&v26, &location);
            v12 = [v8 actionWithTitle:title image:image identifier:identifier handler:v24];

            objc_destroyWeak(&v26);
            objc_destroyWeak(&location);
          }

          else
          {
            v12 = 0;
          }

          [array addObject:v12];
          ++v6;
        }

        while (v5 != v6);
        v13 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
        v5 = v13;
      }

      while (v13);
    }

    v14 = *(&self->super.super.super.isa + v16);
    *(&self->super.super.super.isa + v16) = array;
    v15 = array;

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

- (void)setCustomControlItems:(id)items
{
  itemsCopy = items;
  if (![(NSArray *)self->_customControlItems isEqualToArray:?])
  {
    v4 = [itemsCopy copy];
    customControlItems = self->_customControlItems;
    self->_customControlItems = v4;

    controlsViewController = self->_controlsViewController;
    if (controlsViewController)
    {
      [(AVMobileControlsViewController *)controlsViewController setControlItems:itemsCopy];
    }
  }
}

- (void)setShouldUseNetworkingResourcesForLiveStreamingWhilePaused:(BOOL)paused
{
  if (self->_shouldUseNetworkingResourcesForLiveStreamingWhilePaused != paused)
  {
    pausedCopy = paused;
    self->_shouldUseNetworkingResourcesForLiveStreamingWhilePaused = paused;
    playerController = [(AVPlayerViewController *)self playerController];
    v6 = playerController;
    if (pausedCopy)
    {
      [playerController startUsingNetworkResourcesForLiveStreamingWhilePaused];
    }

    else
    {
      [playerController stopUsingNetworkResourcesForLiveStreamingWhilePaused];
    }
  }
}

- (void)scheduleTips
{
  v3 = +[AVKitGlobalSettings shared];
  playerTipsEnabled = [v3 playerTipsEnabled];

  if (playerTipsEnabled)
  {
    controlsViewController = [(AVPlayerViewController *)self controlsViewController];
    controlsViewControllerIfChromeless = [controlsViewController controlsViewControllerIfChromeless];
    [controlsViewControllerIfChromeless scheduleTips];

    controlsViewControllerIfGlass = [controlsViewController controlsViewControllerIfGlass];
    [controlsViewControllerIfGlass scheduleTips];
  }
}

- (void)flashPlaybackControlsWithDuration:(double)duration
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[AVPlayerViewController flashPlaybackControlsWithDuration:]";
    v12 = 2048;
    durationCopy = duration;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %f", buf, 0x16u);
  }

  durationCopy2 = 2.0;
  if (duration <= 2.0)
  {
    v7 = _AVMethodProem(self);
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
    NSLog(&cfstr_WarningCalledW.isa, v7, v8);
  }

  else
  {
    durationCopy2 = duration;
  }

  controlsViewController = [(AVPlayerViewController *)self controlsViewController];
  [controlsViewController flashControlsWithDuration:durationCopy2];
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

- (void)setVolumeControlsCanShowSlider:(BOOL)slider
{
  sliderCopy = slider;
  v10 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    *v8 = 136315650;
    *&v8[4] = "[AVPlayerViewController setVolumeControlsCanShowSlider:]";
    *&v8[14] = "volumeControlsCanShowSlider";
    *&v8[12] = 2080;
    if (sliderCopy)
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
  [v7 setVolumeControlsCanShowSlider:{sliderCopy, *v8, *&v8[16]}];
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
  volumeControlsCanShowSlider = [v2 volumeControlsCanShowSlider];

  return volumeControlsCanShowSlider;
}

- (void)_updateActuallyRequiresLinearPlayback
{
  requiresLinearPlayback = [(AVPlayerViewController *)self requiresLinearPlayback];
  playerController = [(AVPlayerViewController *)self playerController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    if ([(AVPlayerViewController *)self requiresLinearPlayback])
    {
      requiresLinearPlayback = 1;
    }

    else
    {
      playerController2 = [(AVPlayerViewController *)self playerController];
      interstitialController = [playerController2 interstitialController];
      requiresLinearPlayback2 = [interstitialController requiresLinearPlayback];

      requiresLinearPlayback |= requiresLinearPlayback2;
    }
  }

  [(AVPlayerViewController *)self setActuallyRequiresLinearPlayback:requiresLinearPlayback & 1];
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

- (void)setActuallyRequiresLinearPlayback:(BOOL)playback
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_actuallyRequiresLinearPlayback != playback)
  {
    playbackCopy = playback;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      *v11 = 136315650;
      *&v11[4] = "[AVPlayerViewController setActuallyRequiresLinearPlayback:]";
      *&v11[14] = "actuallyRequiresLinearPlayback";
      *&v11[12] = 2080;
      if (playbackCopy)
      {
        v6 = "YES";
      }

      *&v11[22] = 2080;
      v12 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", v11, 0x20u);
    }

    self->_actuallyRequiresLinearPlayback = playbackCopy;
    if (![(AVPlayerViewController *)self _showsWolfControls])
    {
      [(AVMobileControlsViewController *)self->_controlsViewController setRequiresLinearPlayback:playbackCopy];
      if (self->_usesGlassCatalystControls)
      {
        [(AVPlayerViewController *)self catalystPlaybackControlsController];
      }

      else
      {
        [(AVPlayerViewController *)self chromePlaybackControlsController];
      }
      v7 = ;
      [v7 setRequiresLinearPlayback:{playbackCopy, *v11, *&v11[16]}];

      playerController = [(AVPlayerViewController *)self playerController];
      [playerController setTouchBarRequiresLinearPlayback:playbackCopy];

      [(AVPictureInPictureController *)self->_pictureInPictureController setRequiresLinearPlayback:playbackCopy];
    }

    if (playbackCopy)
    {
      playerController2 = [(AVPlayerViewController *)self playerController];
      [playerController2 endScanningForward:self];

      playerController3 = [(AVPlayerViewController *)self playerController];
      [playerController3 endScanningBackward:self];
    }

    self->_defaultLinearPlaybackRate = 1.0;
    [(AVPlayerViewController *)self _updateDefaultPlaybackRateIfNeeded:*v11];
    [(AVPlayerViewController *)self _updateScrubbingGestureEnabledState];
  }
}

- (void)setShowsMinimalPlaybackControlsWhenEmbeddedInline:(BOOL)inline
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_showsMinimalPlaybackControlsWhenEmbeddedInline != inline)
  {
    inlineCopy = inline;
    self->_showsMinimalPlaybackControlsWhenEmbeddedInline = inline;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      *v8 = 136315650;
      *&v8[4] = "[AVPlayerViewController setShowsMinimalPlaybackControlsWhenEmbeddedInline:]";
      *&v8[14] = "showsMinimalPlaybackControlsWhenEmbeddedInline";
      *&v8[12] = 2080;
      if (inlineCopy)
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
    [v7 setShowsMinimalPlaybackControlsWhenEmbeddedInline:{inlineCopy, *v8, *&v8[16]}];
  }
}

- (void)setAllowsEnteringFullScreen:(BOOL)screen
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_allowsEnteringFullScreen != screen)
  {
    screenCopy = screen;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVPlayerViewController setAllowsEnteringFullScreen:]";
      v10 = "allowsEnteringFullScreen";
      v9 = 2080;
      if (screenCopy)
      {
        v6 = "YES";
      }

      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
    }

    self->_allowsEnteringFullScreen = screenCopy;
    if (![(AVPlayerViewController *)self _showsWolfControls])
    {
      [(AVMobileControlsViewController *)self->_controlsViewController setShowsFullScreenControl:screenCopy];
      [(AVPlayerViewController *)self _updatePlaybackControlsState];
    }
  }
}

- (void)setCanHidePlaybackControls:(BOOL)controls
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_canHidePlaybackControls != controls)
  {
    controlsCopy = controls;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVPlayerViewController setCanHidePlaybackControls:]";
      v10 = "canHidePlaybackControls";
      v9 = 2080;
      if (controlsCopy)
      {
        v6 = "YES";
      }

      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
    }

    self->_canHidePlaybackControls = controlsCopy;
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

  contentTransitioningDelegate = [(AVPlayerViewController *)self contentTransitioningDelegate];
  if (contentTransitioningDelegate)
  {
    v4 = 0;
  }

  else
  {
    _actualContentOverlayView = [(AVPlayerViewController *)self _actualContentOverlayView];
    subviews = [_actualContentOverlayView subviews];
    v4 = [subviews count] != 0;
  }

  return v4;
}

- (void)_updateCustomControlsViewSuperViewIfNeeded
{
  if (self->_customControlsView)
  {
    [(AVPlayerViewController *)self loadViewIfNeeded];
    contentView = [(AVPlayerViewController *)self contentView];
    [contentView setCustomControlsView:self->_customControlsView];
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
  contentView = [(AVPlayerViewController *)self contentView];
  interactiveContentOverlayView = [contentView interactiveContentOverlayView];

  return interactiveContentOverlayView;
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
    pixelBufferAttributes = [(__AVPlayerLayerView *)self->_playerLayerView pixelBufferAttributes];
  }

  else
  {
    pixelBufferAttributes = self->_pixelBufferAttributes;
  }

  return pixelBufferAttributes;
}

- (void)setOverrideParentApplicationDisplayIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![(NSString *)self->_overrideParentApplicationDisplayIdentifier isEqualToString:identifierCopy])
  {
    v5 = [identifierCopy copy];
    overrideParentApplicationDisplayIdentifier = self->_overrideParentApplicationDisplayIdentifier;
    self->_overrideParentApplicationDisplayIdentifier = v5;

    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72__AVPlayerViewController_setOverrideParentApplicationDisplayIdentifier___block_invoke;
    v7[3] = &unk_1E7207DE8;
    objc_copyWeak(&v9, &location);
    v8 = identifierCopy;
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

- (void)setPlaybackSpeedCollection:(id)collection
{
  v13 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  if (self->_playbackSpeedCollection != collectionCopy)
  {
    v6 = _AVLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      internalDescription = [(AVPlaybackSpeedCollection *)collectionCopy internalDescription];
      v9 = 136315394;
      v10 = "[AVPlayerViewController setPlaybackSpeedCollection:]";
      v11 = 2112;
      v12 = internalDescription;
      _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s New playback speed collection set: %@", &v9, 0x16u);
    }

    [(AVPlaybackSpeedCollection *)self->_playbackSpeedCollection setDelegate:0];
    objc_storeStrong(&self->_playbackSpeedCollection, collection);
    [(AVPlaybackSpeedCollection *)self->_playbackSpeedCollection setDelegate:self];
    [(AVControlsViewController *)self->_controlsViewController setPlaybackSpeedCollection:collectionCopy];
    if (self->_usesGlassCatalystControls)
    {
      [(AVPlayerViewController *)self catalystPlaybackControlsController];
    }

    else
    {
      [(AVPlayerViewController *)self chromePlaybackControlsController];
    }
    v8 = ;
    [v8 setPlaybackSpeedCollection:collectionCopy];

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

- (void)setPreferredDisplayDynamicRange:(int64_t)range
{
  if (self->_preferredDisplayDynamicRange != range)
  {
    self->_preferredDisplayDynamicRange = range;
    [(AVPlayerViewController *)self _updatePreferredDisplayDynamicRange];
  }
}

- (void)setPlayerController:(id)controller
{
  v45 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v6 = self->_playerController;
  if (v6 != controllerCopy)
  {
    [(AVNowPlayingInfoController *)self->_nowPlayingInfoController stopNowPlayingUpdatesForPlayerController:v6];
    volumeAnimator = [(AVPlayerViewController *)self volumeAnimator];
    [volumeAnimator restoreVolumeIfNeeded];

    [(AVPlayerViewController *)self setVolumeAnimator:0];
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v41 = 136315394;
      v42 = "[AVPlayerViewController setPlayerController:]";
      v43 = 2112;
      v44 = controllerCopy;
      _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s %@", &v41, 0x16u);
    }

    [(AVPlayerController *)controllerCopy setPlayingOnSecondScreen:[(AVPlayerController *)v6 isPlayingOnSecondScreen]];
    secondScreenConnection = self->_secondScreenConnection;
    player = [(AVPlayerViewController *)self player];
    [(AVSecondScreenConnection *)secondScreenConnection setDebugInfoPlayer:player];

    v11 = self->_secondScreenConnection;
    player2 = [(AVPlayerViewController *)self player];
    [(AVSecondScreenConnection *)v11 setPlayer:player2];

    objc_storeStrong(&self->_playerController, controller);
    smartSubtitlesController = self->_smartSubtitlesController;
    if (!smartSubtitlesController)
    {
      v14 = objc_alloc_init(AVSmartSubtitlesController);
      v15 = self->_smartSubtitlesController;
      self->_smartSubtitlesController = v14;

      [(AVSmartSubtitlesController *)self->_smartSubtitlesController setDelegate:self];
      smartSubtitlesController = self->_smartSubtitlesController;
    }

    playerController = [(AVPlayerViewController *)self playerController];
    [(AVSmartSubtitlesController *)smartSubtitlesController setPlayerController:playerController];

    if (objc_opt_respondsToSelector())
    {
      [(AVPlayerController *)self->_playerController setInternalDelegate:self];
      [(AVPlayerController *)v6 setInternalDelegate:0];
    }

    player3 = [(AVPlayerViewController *)self player];
    player4 = [(AVPlayerController *)controllerCopy player];

    if (player3 != player4)
    {
      player5 = [(AVPlayerController *)controllerCopy player];
      [(AVPlayerViewController *)self setPlayer:player5];
    }

    [(AVPlayerViewController *)self _updateActivePlaybackSpeedIfNeeded];
    v20 = &OBJC_IVAR_____AVPlayerLayerView__pictureInPicturePlayerLayerView;
    v21 = &OBJC_IVAR_____AVPlayerLayerView__pictureInPicturePlayerLayerView;
    if (![(AVPlayerViewController *)self _showsWolfControls])
    {
      v22 = &OBJC_IVAR_____AVPlayerLayerView__pictureInPicturePlayerLayerView;
      if (controllerCopy && !self->_playerLayerView)
      {
        v23 = [__AVPlayerLayerView alloc];
        contentView = [(AVPlayerViewController *)self contentView];
        [contentView bounds];
        v25 = [(__AVPlayerLayerView *)v23 initWithFrame:?];

        [(__AVPlayerLayerView *)v25 setPixelBufferAttributes:self->_pixelBufferAttributes];
        playerController2 = [(AVPlayerViewController *)self playerController];
        [(__AVPlayerLayerView *)v25 setPlayerController:playerController2];

        contentView2 = [(AVPlayerViewController *)self contentView];
        layoutClass = [contentView2 layoutClass];
        if (layoutClass)
        {
          _targetVideoGravitiesForLayoutClass = [(AVPlayerViewController *)self _targetVideoGravitiesForLayoutClass];
          contentView3 = [(AVPlayerViewController *)self contentView];
          layoutClass2 = [contentView3 layoutClass];
          videoGravity = [_targetVideoGravitiesForLayoutClass objectForKeyedSubscript:layoutClass2];

          v22 = &OBJC_IVAR_____AVPlayerLayerView__pictureInPicturePlayerLayerView;
          v20 = &OBJC_IVAR_____AVPlayerLayerView__pictureInPicturePlayerLayerView;

          v21 = &OBJC_IVAR_____AVPlayerLayerView__pictureInPicturePlayerLayerView;
        }

        else
        {
          videoGravity = [(AVPlayerViewController *)self videoGravity];
        }

        [(__AVPlayerLayerView *)v25 setVideoGravity:AVVideoGravityFromString(videoGravity)];
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
      [v33 setPlayerController:controllerCopy];

      [*(&self->super.super.super.isa + v22[774]) setPlayerController:controllerCopy];
      [(AVPictureInPictureController *)self->_pictureInPictureController setPlayerController:controllerCopy];
      [*(&self->super.super.super.isa + v20[778]) setPlayerController:controllerCopy];
      [*(&self->super.super.super.isa + v21[786]) setPlayerController:controllerCopy];
      [(AVPlayerViewController *)self _updateVisualAnalyzerEnabledStateIfNeeded];
      [(AVPlayerViewController *)self _updatePlayerControllerInspectionState];
    }

    if ([(AVPlayerViewController *)self shouldUseNetworkingResourcesForLiveStreamingWhilePaused])
    {
      [(AVPlayerController *)v6 stopUsingNetworkResourcesForLiveStreamingWhilePaused];
      [(AVPlayerController *)controllerCopy startUsingNetworkResourcesForLiveStreamingWhilePaused];
    }

    pipActivitySessionIdentifier = [(AVPlayerController *)controllerCopy pipActivitySessionIdentifier];
    [(AVPlayerViewController *)self setPictureInPictureActivitySessionIdentifier:pipActivitySessionIdentifier];

    _pipActivitySessionObservationController = [(AVPlayerViewController *)self _pipActivitySessionObservationController];
    [_pipActivitySessionObservationController stopAllObservation];

    if (controllerCopy)
    {
      v36 = [[AVObservationController alloc] initWithOwner:self];
      pipActivitySessionObservationController = self->__pipActivitySessionObservationController;
      self->__pipActivitySessionObservationController = v36;

      _pipActivitySessionObservationController2 = [(AVPlayerViewController *)self _pipActivitySessionObservationController];
      [_pipActivitySessionObservationController2 startObservingNotificationForName:@"AVPlayerControllerPIPActivitySessionIdentifierDidChangeNotification" object:controllerCopy notificationCenter:0 observationHandler:&__block_literal_global_167];
    }

    [*(&self->super.super.super.isa + v20[778]) setPlayerController:controllerCopy];
    [*(&self->super.super.super.isa + v21[786]) setPlayerController:controllerCopy];
    [(AVScrubbingGestureController *)self->_scrubbingGestureController setPlayerController:controllerCopy];
    [(AVEnhanceDialogueController *)self->_enhanceDialogueController setPlayerController:controllerCopy];
    [(AVPlayerViewController *)self _setUpVideoFrameVisualAnalyzerIfNeeded];
    [(AVPlayerViewController *)self _updateVisualAnalyzerEnabledStateIfNeeded];
    [(AVPlayerViewController *)self _updateNowPlayingInfoController];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"AVPlayerViewControllerDidChangePlayerControllerNotification" object:self];

    interstitialController = [(AVPlayerController *)v6 interstitialController];
    [interstitialController setDelegateManager:0];

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
      delegate = [(AVPlayerViewController *)self delegate];
      -[AVPlayerViewController setCanStartPictureInPictureAutomaticallyFromInline:](self, "setCanStartPictureInPictureAutomaticallyFromInline:", [delegate playerViewControllerShouldStartPictureInPictureFromInlineWhenEnteringBackground:self]);
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

- (void)setShowsAnalysisButtonIfAvailable:(BOOL)available
{
  availableCopy = available;
  v5 = +[AVKitGlobalSettings shared];
  visualAnalysisSupported = [v5 visualAnalysisSupported];

  if (visualAnalysisSupported)
  {
    if (self->_showsAnalysisButtonIfAvailable != availableCopy)
    {
      self->_showsAnalysisButtonIfAvailable = availableCopy;

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
  visualAnalysisSupported = [v5 visualAnalysisSupported];

  if (visualAnalysisSupported)
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
  traitCollection = [(__AVPlayerLayerView *)self->_playerLayerView traitCollection];
  [traitCollection displayScale];
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
    _createPreferredControlsViewController = [(AVPlayerViewController *)self _createPreferredControlsViewController];
    v5 = self->_controlsViewController;
    self->_controlsViewController = _createPreferredControlsViewController;

    [(AVPlayerViewController *)self _updateControlsViewControllerInitialState];
    controlsViewController = self->_controlsViewController;
  }

  return controlsViewController;
}

- (AVMobileChromeControlsViewController)_createPreferredControlsViewController
{
  v17 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    v4 = 0;
    goto LABEL_13;
  }

  v2 = *(self + 1256);
  if (v2)
  {
    if (v2 == 1)
    {
      [(AVPlayerViewController *)self _setUpEnhanceDialogueControllerIfNeeded];
      v3 = AVMobileChromelessControlsViewController;
    }

    else
    {
      if (v2 != 2)
      {
        v4 = 0;
        goto LABEL_10;
      }

      [(AVPlayerViewController *)self _setUpEnhanceDialogueControllerIfNeeded];
      v3 = AVMobileGlassControlsViewController;
    }

    v4 = objc_alloc_init(v3);
    _fullScreenController = [self _fullScreenController];
    [(AVMobileControlsViewController *)v4 setFullscreenController:_fullScreenController];

    [(AVMobileChromeControlsViewController *)v4 setEnhanceDialogueController:*(self + 1208)];
    [(AVMobileControlsViewController *)v4 setRequiresLinearPlayback:*(self + 995)];
    [(AVMobileControlsViewController *)v4 addAction:sel__volumeButtonWasPressedEvent_ withTarget:self forEvent:@"AVControlsVolumeButtonPressedEvent"];
    [(AVMobileControlsViewController *)v4 addAction:sel__playPauseButtonWasPressedEvent_ withTarget:self forEvent:@"AVControlsPlayPauseButtonPressedEvent"];
    [(AVMobileControlsViewController *)v4 addAction:sel__copySubjectMenuItemPressedEvent_ withTarget:self forEvent:@"AVControlsCopySubjectMenuItemPressedEvent"];
    [(AVMobileControlsViewController *)v4 addAction:sel__visualLookupMenuItemPressedEvent_ withTarget:self forEvent:@"AVControlsVisualLookupMenuItemPressedEvent"];
    [(AVMobileControlsViewController *)v4 addAction:sel_doneButtonTapped_ withTarget:self forEvent:@"AVControlsDoneButtonPressedEvent"];
  }

  else
  {
    v4 = [[AVMobileChromeControlsViewController alloc] initWithPlayerViewController:self];
    [self overrideTransformForProminentPlayButton];
    [(AVMobileChromeControlsViewController *)v4 setTransformForProminentPlayButton:&v13];
    overrideLayoutMarginsWhenEmbeddedInline = [self overrideLayoutMarginsWhenEmbeddedInline];
    [(AVMobileChromeControlsViewController *)v4 setEmbeddedInlineLayoutMargins:overrideLayoutMarginsWhenEmbeddedInline];

    playbackControlsController = [(AVMobileChromeControlsViewController *)v4 playbackControlsController];
    [playbackControlsController setPlaybackSpeedCollection:*(self + 1792)];

    playbackControlsController2 = [(AVMobileChromeControlsViewController *)v4 playbackControlsController];
    [playbackControlsController2 setPreferredUnobscuredArea:{objc_msgSend(self, "preferredUnobscuredArea")}];

    playbackControlsController3 = [(AVMobileChromeControlsViewController *)v4 playbackControlsController];
    [playbackControlsController3 setShowsMinimalPlaybackControlsWhenEmbeddedInline:*(self + 1448)];
  }

LABEL_10:
  [(AVMobileChromeControlsViewController *)v4 setControlItems:*(self + 1840)];
  [(AVMobileControlsViewController *)v4 setDelegate:self];
  [(AVMobileControlsViewController *)v4 setPipController:*(self + 1600)];
  [(AVMobileControlsViewController *)v4 setPlayerController:*(self + 1568)];
  [(AVControlsViewController *)v4 setPlaybackSpeedCollection:*(self + 1792)];
  [(AVMobileChromeControlsViewController *)v4 setRoutingConfiguration:*(self + 1096)];
  -[AVMobileChromeControlsViewController setShowsFullScreenControl:](v4, "setShowsFullScreenControl:", [self allowsEnteringFullScreen]);
  [(AVMobileChromeControlsViewController *)v4 setTransportBarCustomMenuItems:*(self + 1648)];
  _volumeController = [self _volumeController];
  [(AVMobileChromeControlsViewController *)v4 setVolumeController:_volumeController];

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
  if (self)
  {
    [self _addObserversOnControlsViewController];
    [(AVPlayerViewController *)self _updateShowsAnalysisControl];
    [(AVPlayerViewController *)self _updateIncludedControls];
    [(AVPlayerViewController *)self _updateExcludedControls];
    [(AVPlayerViewController *)self _updatePrefersFullScreenStyleForEmbeddedMode];
    [(AVPlayerViewController *)self _updateTips];
    [(AVPlayerViewController *)self _updateMenuGroupAttributes];
    [self _updateCustomControlsViewStateWithVisibleControlsSet:0];
    [(AVPlayerViewController *)self _updateControlsViewControllerPerformanceState];

    [(AVPlayerViewController *)self _updateControlsViewControllerVideoScaledStateIfNeeded];
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
    controlsViewControllerIfChromeless = [*(result + 1248) controlsViewControllerIfChromeless];
    [controlsViewControllerIfChromeless setExcludedControls:{objc_msgSend(*(v1 + 1544), "excludedControls")}];

    controlsViewControllerIfGlass = [*(v1 + 1248) controlsViewControllerIfGlass];
    [controlsViewControllerIfGlass setExcludedControls:{objc_msgSend(*(v1 + 1544), "excludedControls")}];

    return [(AVPlayerViewController *)v1 _updateTapThroughGestureRecognizerEnablementState];
  }

  return result;
}

- (void)_updatePrefersFullScreenStyleForEmbeddedMode
{
  if (self)
  {
    controlsViewControllerIfChromeless = [*(self + 1248) controlsViewControllerIfChromeless];
    [controlsViewControllerIfChromeless setPrefersFullScreenStyleForEmbeddedMode:{objc_msgSend(*(self + 1544), "prefersFullScreenStyleForEmbeddedMode")}];

    controlsViewControllerIfGlass = [*(self + 1248) controlsViewControllerIfGlass];
    [controlsViewControllerIfGlass setPrefersFullScreenStyleForEmbeddedMode:{objc_msgSend(*(self + 1544), "prefersFullScreenStyleForEmbeddedMode")}];
  }
}

- (void)_updateTips
{
  if (self)
  {
    v2 = +[AVKitGlobalSettings shared];
    playerTipsEnabled = [v2 playerTipsEnabled];

    if (playerTipsEnabled)
    {
      controlsViewControllerIfChromeless = [*(self + 1248) controlsViewControllerIfChromeless];
      tips = [*(self + 1544) tips];
      [controlsViewControllerIfChromeless setTips:tips];

      controlsViewControllerIfGlass = [*(self + 1248) controlsViewControllerIfGlass];
      tips2 = [*(self + 1544) tips];
      [controlsViewControllerIfGlass setTips:tips2];
    }
  }
}

- (void)_updateMenuGroupAttributes
{
  if (self)
  {
    controlsViewControllerIfChromeless = [*(self + 1248) controlsViewControllerIfChromeless];
    mediaPresentationSettingsAudioGroupTitle = [*(self + 1544) mediaPresentationSettingsAudioGroupTitle];
    [controlsViewControllerIfChromeless setPrefersMediaPresentationSettingsMenuGroupTitle:mediaPresentationSettingsAudioGroupTitle];
  }
}

- (void)_updateControlsViewControllerVideoScaledStateIfNeeded
{
  if (self)
  {
    controlsViewController = [self controlsViewController];
    controlsViewControllerIfGlass = [controlsViewController controlsViewControllerIfGlass];

    if (controlsViewControllerIfGlass)
    {
      videoGravity = [self videoGravity];
      v4 = videoGravity;
      v6 = videoGravity == *MEMORY[0x1E69874F0] || videoGravity == *MEMORY[0x1E69874E0];
      [controlsViewControllerIfGlass setVideoScaled:v6];
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
      _contentTabsVisible = [(AVPlayerViewController *)self _contentTabsVisible];
      contentView = [(AVPlayerViewController *)self contentView];
      v12 = contentView;
      if (!_contentTabsVisible)
      {
        playbackContentContainerView = [contentView playbackContentContainerView];

        v12 = playbackContentContainerView;
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

- (void)setVideoGravity:(id)gravity forLayoutClass:(unint64_t)class
{
  v22 = *MEMORY[0x1E69E9840];
  gravityCopy = gravity;
  v7 = _AVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315650;
    v17 = "[AVPlayerViewController setVideoGravity:forLayoutClass:]";
    v18 = 2112;
    v19 = gravityCopy;
    v20 = 2048;
    classCopy = class;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s %@ layoutClass: %ld", &v16, 0x20u);
  }

  _targetVideoGravitiesForLayoutClass = [(AVPlayerViewController *)self _targetVideoGravitiesForLayoutClass];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:class];
  [_targetVideoGravitiesForLayoutClass setObject:gravityCopy forKeyedSubscript:v9];

  contentView = [(AVPlayerViewController *)self contentView];
  [contentView setTargetVideoGravity:gravityCopy forLayoutClass:class];

  contentView2 = [(AVPlayerViewController *)self contentView];
  window = [contentView2 window];
  if (window)
  {
    v13 = window;
    playerLayerView = self->_playerLayerView;
    contentView3 = [(AVPlayerViewController *)self contentView];
    LOBYTE(playerLayerView) = [(__AVPlayerLayerView *)playerLayerView isDescendantOfView:contentView3];

    if ((playerLayerView & 1) == 0)
    {
      [(__AVPlayerLayerView *)self->_playerLayerView setVideoGravity:AVVideoGravityFromString(gravityCopy)];
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
    videoGravity = [(AVPlayerViewController *)self videoGravity];
    v5 = videoGravity;
    v6 = *MEMORY[0x1E69874E8];
    if (videoGravity)
    {
      v6 = videoGravity;
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
  extendedVisualAnalysisEnabled = [v5 extendedVisualAnalysisEnabled];

  if (extendedVisualAnalysisEnabled)
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
    contentView = [(AVPlayerViewController *)self contentView];
    [contentView setCanAutomaticallyZoomLetterboxVideos:0];

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

- (void)setShowsAudioLanguageMenu:(BOOL)menu
{
  if (self->_showsAudioLanguageMenu != menu)
  {
    menuCopy = menu;
    self->_showsAudioLanguageMenu = menu;
    controlsViewControllerIfChromeless = [(AVMobileControlsViewController *)self->_controlsViewController controlsViewControllerIfChromeless];
    [controlsViewControllerIfChromeless setShowsAudioTrackSelectionMenu:menuCopy];

    controlsViewControllerIfGlass = [(AVMobileControlsViewController *)self->_controlsViewController controlsViewControllerIfGlass];
    [controlsViewControllerIfGlass setShowsAudioTrackSelectionMenu:menuCopy];

    [(AVPlayerViewController *)self _updateEnhanceDialogueEnabled];
  }
}

- (void)setCanIncludePlaybackControlsWhenInline:(BOOL)inline
{
  if (self->_canIncludePlaybackControlsWhenInline != inline)
  {
    v12 = v5;
    v13 = v4;
    v14 = v3;
    inlineCopy = inline;
    self->_canIncludePlaybackControlsWhenInline = inline;
    if (self->_usesGlassCatalystControls)
    {
      [(AVPlayerViewController *)self catalystPlaybackControlsController];
    }

    else
    {
      [(AVPlayerViewController *)self chromePlaybackControlsController];
    }
    v11 = ;
    [v11 setCanIncludePlaybackControlsWhenInline:{inlineCopy, v6, v12, v13, v14, v7}];

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

    contentView = [(AVPlayerViewController *)self contentView];
    [contentView setShowsPlaybackControls:self->_showsPlaybackControls];

    [(AVPlayerViewController *)self _updateContentOverlayViewSuperview];
    [(AVPlayerViewController *)self _updateAnalysisViewSuperview];
    [(AVPlayerViewController *)self _updateWantsAnalysisButtonVisibleStateIfNeeded];
    [(AVPlayerViewController *)&self->super.super.super.isa _setupInfoTabViewController];
    [(AVPlayerViewController *)self _updateControlsVisibilityPolicyAnimated:?];
    [(AVPlayerViewController *)self _updateSecondScreenConnectionReadyToConnect];
    [(AVPlayerViewController *)self _updateEnhanceDialogueEnabled];
  }
}

- (void)setPrefersDeviceUserInterfaceStyle:(BOOL)style
{
  if (self->_prefersDeviceUserInterfaceStyle != style)
  {
    self->_prefersDeviceUserInterfaceStyle = style;
    contentView = [(AVPlayerViewController *)self contentView];
    [contentView setOverrideUserInterfaceStyle:{-[AVPlayerViewController overrideUserInterfaceStyle](self, "overrideUserInterfaceStyle")}];
  }
}

- (AVPlayerViewControllerConfiguration)configuration
{
  v2 = [(AVPlayerViewControllerConfiguration *)self->_configuration copy];

  return v2;
}

- (void)setConfiguration:(id)configuration
{
  if (self->_configuration != configuration)
  {
    v4 = [configuration copy];
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

- (void)setRequiresImmediateAssetInspection:(BOOL)inspection
{
  if (self->_requiresImmediateAssetInspection != inspection)
  {
    self->_requiresImmediateAssetInspection = inspection;
    [(AVPlayerViewController *)self _updatePlayerControllerInspectionState];
  }
}

- (void)setPreferredPlaybackControlsSupplementalSubtitleDisplayOption:(int64_t)option
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_preferredPlaybackControlsSupplementalSubtitleDisplayOption != option)
  {
    self->_preferredPlaybackControlsSupplementalSubtitleDisplayOption = option;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = "[AVPlayerViewController setPreferredPlaybackControlsSupplementalSubtitleDisplayOption:]";
      v8 = 2048;
      optionCopy = option;
      v10 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %ld for AVPVC: %@", &v6, 0x20u);
    }

    [(AVPlayerViewController *)self _updatePlayerControllerLegibleOptionsForSmartSubtitleDisplayType:?];
  }
}

- (void)setPlayer:(AVPlayer *)player
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = player;
  player = [(AVPlayerViewController *)self player];

  if (player != v5)
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
      dispatchQueue = [(AVPlayer *)v5 dispatchQueue];
      v9 = MEMORY[0x1E69E96A0];

      if (dispatchQueue != v9)
      {
        v10 = MEMORY[0x1E695DF30];
        v11 = *MEMORY[0x1E695D920];
        v12 = _AVMethodProem(self);
        [v10 raise:v11 format:{@"%@ only supports AVPlayer instances that have been initialized with the main queue as the dispatch queue for serializing key-value observations.", v12}];
      }
    }

    playerController = [(AVPlayerViewController *)self playerController];
    player2 = [playerController player];

    if (player2 != v5)
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

      playerController2 = [(AVPlayerViewController *)self playerController];
      if (objc_opt_respondsToSelector())
      {
        playerController3 = [(AVPlayerViewController *)self playerController];
        if (objc_opt_respondsToSelector())
        {
          playerController4 = [(AVPlayerViewController *)self playerController];
          v19 = objc_opt_respondsToSelector();

          if ((v19 & 1) == 0)
          {
LABEL_18:
            kdebug_trace();
            [(AVPlayerViewController *)self setPlayerController:v15];
            defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
            [defaultCenter postNotificationName:@"AVPlayerViewControllerDidChangePlayerControllerNotification" object:self];

            goto LABEL_19;
          }

          pictureInPictureViewController = [(AVPictureInPictureController *)self->_pictureInPictureController pictureInPictureViewController];
          pictureInPicturePlayerLayerView = [pictureInPictureViewController pictureInPicturePlayerLayerView];
          playerController2 = [pictureInPicturePlayerLayerView playerLayer];

          playerController5 = [(AVPlayerViewController *)self playerController];
          [playerController5 endReducingResourcesForPictureInPicturePlayerLayer:playerController2];

          if ([(AVPictureInPictureController *)self->_pictureInPictureController wantsResourceReduction])
          {
            [(AVPlayerController *)v15 beginReducingResourcesForPictureInPicturePlayerLayer:playerController2];
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

- (void)encodeWithCoder:(id)coder
{
  v14 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v9 = "[AVPlayerViewController encodeWithCoder:]";
    v10 = 1024;
    v11 = 827;
    v12 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  v7.receiver = self;
  v7.super_class = AVPlayerViewController;
  [(AVPlayerViewController *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_showsPlaybackControls forKey:@"AVShowsPlaybackControls"];
  if ([(AVPlayerViewController *)self isViewLoaded])
  {
    videoGravity = [(__AVPlayerLayerView *)self->_playerLayerView videoGravity];
  }

  else
  {
    videoGravity = self->_videoGravity;
  }

  [coderCopy encodeInteger:videoGravity forKey:@"AVVideoLayerGravity"];
  [coderCopy encodeBool:self->_allowsPictureInPicturePlayback forKey:@"AVAllowsPictureInPicturePlayback"];
  [coderCopy encodeBool:self->_canStartPictureInPictureAutomaticallyWhenEnteringBackground forKey:@"AVCanStartPictureInPictureAutomaticallyWhenEnteringBackground"];
  [coderCopy encodeBool:self->_allowsVideoFrameAnalysis forKey:@"AVAllowsVideoFrameVisualAnalysis"];
  [coderCopy encodeBool:self->_showsAnalysisButtonIfAvailable forKey:@"AVShowsAnalysisButtonIfAvailable"];
  [coderCopy encodeBool:self->_allowsEnteringFullScreen forKey:@"AVAllowsEnteringFullScreen"];
  [coderCopy encodeInteger:self->_videoFrameAnalysisTypes forKey:@"AVVideoFrameAnalysisTypes"];
  [coderCopy encodeBool:self->_showsVisualLookup forKey:@"AVShowsVisualLookup"];
}

- (AVPlayerViewController)initWithCoder:(id)coder
{
  v52 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
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
  v6 = [(AVPlayerViewController *)&v47 initWithCoder:coderCopy];
  if (v6)
  {
    if ([coderCopy containsValueForKey:@"AVPlayerAssetFilename"])
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AVPlayerAssetFilename"];
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      v9 = [mainBundle URLForMovieResource:v7];

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
    v16 = [coderCopy containsValueForKey:@"AVPlayerShouldAutoplay"];
    if (v16)
    {
      LOBYTE(v16) = [coderCopy decodeBoolForKey:@"AVPlayerShouldAutoplay"];
    }

    v6[992] = v16;
    if ([coderCopy containsValueForKey:@"AVShowsPlaybackControls"])
    {
      v17 = [coderCopy decodeBoolForKey:@"AVShowsPlaybackControls"];
    }

    else
    {
      v17 = 1;
    }

    v6[993] = v17;
    if ([coderCopy containsValueForKey:@"AVVideoLayerGravity"])
    {
      v18 = [coderCopy decodeIntegerForKey:@"AVVideoLayerGravity"];
    }

    else
    {
      v18 = 1;
    }

    *(v6 + 125) = v18;
    if ([coderCopy containsValueForKey:@"AVAllowsPictureInPicturePlayback"])
    {
      v19 = [coderCopy decodeBoolForKey:@"AVAllowsPictureInPicturePlayback"];
    }

    else
    {
      v19 = dyld_program_sdk_at_least();
    }

    v6[1008] = v19;
    v20 = [coderCopy containsValueForKey:@"AVWantsDetachedFullscreenPresentation"];
    if (v20)
    {
      LOBYTE(v20) = [coderCopy decodeBoolForKey:@"AVWantsDetachedFullscreenPresentation"];
    }

    v6[1527] = v20;
    v21 = [coderCopy containsValueForKey:@"AVCanDisplayContentInDetachedWindow"];
    if (v21)
    {
      LOBYTE(v21) = [coderCopy decodeBoolForKey:@"AVCanDisplayContentInDetachedWindow"];
    }

    v6[1064] = v21;
    if ([coderCopy containsValueForKey:@"AVCanStartPictureInPictureAutomaticallyWhenEnteringBackground"])
    {
      v22 = [coderCopy decodeBoolForKey:@"AVCanStartPictureInPictureAutomaticallyWhenEnteringBackground"];
    }

    else
    {
      v22 = 1;
    }

    v6[1067] = v22;
    if ([coderCopy containsValueForKey:@"AVAllowsVideoFrameVisualAnalysis"])
    {
      visualAnalysisEnabled = [coderCopy decodeBoolForKey:@"AVAllowsVideoFrameVisualAnalysis"];
    }

    else
    {
      v24 = +[AVKitGlobalSettings shared];
      visualAnalysisEnabled = [v24 visualAnalysisEnabled];
    }

    v6[1503] = visualAnalysisEnabled;
    if ([coderCopy containsValueForKey:@"AVShowsAnalysisButtonIfAvailable"])
    {
      v25 = [coderCopy decodeBoolForKey:@"AVShowsAnalysisButtonIfAvailable"];
    }

    else
    {
      v25 = 1;
    }

    v6[1525] = v25;
    if ([coderCopy containsValueForKey:@"AVAllowsEnteringFullScreen"])
    {
      v26 = [coderCopy decodeBoolForKey:@"AVAllowsEnteringFullScreen"];
    }

    else
    {
      v26 = 1;
    }

    v6[1524] = v26;
    v27 = [coderCopy containsValueForKey:@"AVShowsVisualLookup"];
    if (v27)
    {
      LOBYTE(v27) = [coderCopy decodeBoolForKey:@"AVShowsVisualLookup"];
    }

    v6[1520] = v27;
    *(v6 + 194) = 0;
    v28 = +[AVKitGlobalSettings shared];
    extendedVisualAnalysisEnabled = [v28 extendedVisualAnalysisEnabled];

    v30 = [coderCopy containsValueForKey:@"AVVideoFrameAnalysisTypes"];
    if (extendedVisualAnalysisEnabled)
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
      *(v6 + 194) = [coderCopy decodeIntegerForKey:@"AVVideoFrameAnalysisTypes"];
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

    _defaultInfoViewActions = [v6 _defaultInfoViewActions];
    v39 = *(v6 + 197);
    *(v6 + 197) = _defaultInfoViewActions;

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
    _avkitPreferredTransitioningDelegate = [v6 _avkitPreferredTransitioningDelegate];
    [v6 setTransitioningDelegate:_avkitPreferredTransitioningDelegate];

    mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle2 bundleIdentifier];
    v45 = [bundleIdentifier isEqualToString:@"com.apple.podcasts"];

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
  if (self)
  {
    controlsViewController = [self controlsViewController];
    [objc_opt_class() autoHideInterval];
    [controlsViewController flashControlsWithDuration:?];
    self[1071] = 1;
    [(AVPlayerViewController *)self _updateStatusBarGradientViewVisibility];
  }
}

- (void)_avkitDidBeginPresentationTransition
{
  if (self)
  {
    if (self[179] == 2 || ([self transitioningDelegate], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(self, "_transitionController"), v3 = objc_claimAutoreleasedReturnValue(), v3, v2, v2 != v3))
    {
      _transitionController = [self _transitionController];
      presentingViewController = [self presentingViewController];
      [_transitionController ensurePresentationControllerWithPresentingViewController:presentingViewController presentedViewController:self];
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
    fullScreenViewController = [(AVPlayerViewController *)self fullScreenViewController];
    presentingViewController = [fullScreenViewController presentingViewController];
    if (presentingViewController)
    {
      fullScreenViewController2 = [(AVPlayerViewController *)self fullScreenViewController];
      isBeingDismissed = [fullScreenViewController2 isBeingDismissed];

      if ((isBeingDismissed & 1) == 0)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        *&buf[24] = __Block_byref_object_copy__11392;
        v19 = __Block_byref_object_dispose__11393;
        fullScreenViewController3 = [(AVPlayerViewController *)self fullScreenViewController];
        v16[0] = 0;
        v16[1] = v16;
        v16[2] = 0x3032000000;
        v16[3] = __Block_byref_object_copy__11392;
        v16[4] = __Block_byref_object_dispose__11393;
        _transitionController = [(AVPlayerViewController *)self _transitionController];
        _transitionController2 = [(AVPlayerViewController *)self _transitionController];
        fullScreenViewController4 = [(AVPlayerViewController *)self fullScreenViewController];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __33__AVPlayerViewController_dealloc__block_invoke;
        v15[3] = &unk_1E7207DC0;
        v15[4] = v16;
        v15[5] = buf;
        [_transitionController2 beginFullScreenDismissalOfViewController:fullScreenViewController4 animated:0 isInteractive:0 completion:v15];

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
  _observationController = [(AVPlayerViewController *)self _observationController];
  [_observationController stopAllObservation];

  _pipActivitySessionObservationController = [(AVPlayerViewController *)self _pipActivitySessionObservationController];
  [_pipActivitySessionObservationController stopAllObservation];

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

- (AVPlayerViewController)initWithNibName:(id)name bundle:(id)bundle
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

    _defaultInfoViewActions = [(AVPlayerViewController *)v7 _defaultInfoViewActions];
    infoViewActions = v7->_infoViewActions;
    v7->_infoViewActions = _defaultInfoViewActions;

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
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v31 = [bundleIdentifier isEqualToString:@"com.apple.podcasts"];

    if (v31)
    {
      v7->_wantsDetachedFullscreenPresentation = 0;
    }

    v7->_playerViewControllerAnimated = 0;
    v7->_playerLayerViewObservationsHasBeenSetup = 0;
    [(AVObservationController *)v7->_observationController startObservingNotificationForName:*MEMORY[0x1E69DE2E0] object:v7 notificationCenter:0 observationHandler:&__block_literal_global_11483];
    _avkitPreferredTransitioningDelegate = [(AVPlayerViewController *)v7 _avkitPreferredTransitioningDelegate];
    [(AVPlayerViewController *)v7 setTransitioningDelegate:_avkitPreferredTransitioningDelegate];
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
  thirdGenerationControlsEnabled = [v2 thirdGenerationControlsEnabled];

  if (thirdGenerationControlsEnabled)
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
    if (Implementation != method_getImplementation(v8) && ![self usesSecondGenerationControls])
    {
      return 0;
    }
  }

  return [self preferredControlsGeneration];
}

- (void)setPlaybackControlsIncludeVolumeControls:(BOOL)controls
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_playbackControlsIncludeVolumeControls != controls)
  {
    controlsCopy = controls;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVPlayerViewController(DeprecationsAndToBeRemoved) setPlaybackControlsIncludeVolumeControls:]";
      v10 = "playbackControlsIncludeVolumeControls";
      v9 = 2080;
      if (controlsCopy)
      {
        v6 = "YES";
      }

      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
    }

    self->_playbackControlsIncludeVolumeControls = controlsCopy;
    [(AVPlayerViewController *)self _updateIncludedControls];
  }
}

- (void)setPlaybackControlsIncludeDisplayModeControls:(BOOL)controls
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_playbackControlsIncludeDisplayModeControls != controls)
  {
    controlsCopy = controls;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVPlayerViewController(DeprecationsAndToBeRemoved) setPlaybackControlsIncludeDisplayModeControls:]";
      v10 = "playbackControlsIncludeDisplayModeControls";
      v9 = 2080;
      if (controlsCopy)
      {
        v6 = "YES";
      }

      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
    }

    self->_playbackControlsIncludeDisplayModeControls = controlsCopy;
    [(AVPlayerViewController *)self _updateIncludedControls];
  }
}

- (void)setPlaybackControlsIncludeTransportControls:(BOOL)controls
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_playbackControlsIncludeTransportControls != controls)
  {
    controlsCopy = controls;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVPlayerViewController(DeprecationsAndToBeRemoved) setPlaybackControlsIncludeTransportControls:]";
      v10 = "playbackControlsIncludeTransportControls";
      v9 = 2080;
      if (controlsCopy)
      {
        v6 = "YES";
      }

      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
    }

    self->_playbackControlsIncludeTransportControls = controlsCopy;
    [(AVPlayerViewController *)self _updateIncludedControls];
    [(AVPlayerViewController *)self _updateEnhanceDialogueEnabled];
  }
}

- (void)setEntersFullScreenWhenTapped:(BOOL)tapped
{
  tappedCopy = tapped;
  v13 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    v7 = 136315650;
    v8 = "[AVPlayerViewController(DeprecationsAndToBeRemoved) setEntersFullScreenWhenTapped:]";
    v10 = "entersFullScreenWhenTapped";
    v9 = 2080;
    if (tappedCopy)
    {
      v6 = "YES";
    }

    v11 = 2080;
    v12 = v6;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
  }

  [(AVPlayerViewController *)self setShowsMinimalPlaybackControlsWhenEmbeddedInline:tappedCopy];
}

- (void)setPreferredUnobscuredArea:(int64_t)area
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_preferredUnobscuredArea != area)
  {
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[AVPlayerViewController(DeprecationsAndToBeRemoved) setPreferredUnobscuredArea:]";
      v9 = 2048;
      areaCopy = area;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %ld", &v7, 0x16u);
    }

    self->_preferredUnobscuredArea = area;
    if (self->_usesGlassCatalystControls)
    {
      [(AVPlayerViewController *)self catalystPlaybackControlsController];
    }

    else
    {
      [(AVPlayerViewController *)self chromePlaybackControlsController];
    }
    v6 = ;
    [v6 setPreferredUnobscuredArea:area];
  }
}

- (double)defaultPlaybackRate
{
  playerController = [(AVPlayerViewController *)self playerController];
  [playerController defaultPlaybackRate];
  v4 = v3;

  return v4;
}

- (void)showTextButtonToggled:(id)toggled
{
  if (self)
  {
    v4 = [(AVVisualAnalysisView *)self->_analysisView highlightsInteractableAreas]^ 1;
    analysisView = self->_analysisView;

    [(AVVisualAnalysisView *)analysisView setHighlightsInteractableAreas:v4];
  }
}

- (void)setWebKitOverrideRouteSharingPolicy:(unint64_t)policy routingContextUID:(id)d
{
  v5 = [AVRoutingConfiguration configurationWithOutputContextID:d sharingPolicy:policy];
  routingConfiguration = self->_routingConfiguration;
  self->_routingConfiguration = v5;

  controlsViewController = self->_controlsViewController;
  v8 = self->_routingConfiguration;

  [(AVMobileControlsViewController *)controlsViewController setRoutingConfiguration:v8];
}

- (void)exitFullScreenAnimated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  v40 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = _AVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v35 = "[AVPlayerViewController(AVPlayerViewController_WebKitOnly) exitFullScreenAnimated:completionHandler:]";
    v36 = 1024;
    v37 = 9993;
    v38 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  finishPreparingForInteractiveDismissalHandler = [(AVPlayerViewController *)self finishPreparingForInteractiveDismissalHandler];
  v9 = [finishPreparingForInteractiveDismissalHandler copy];

  [(AVPlayerViewController *)self setFinishPreparingForInteractiveDismissalHandler:0];
  fullScreenViewController = [(AVPlayerViewController *)self fullScreenViewController];
  isBeingDismissed = [fullScreenViewController isBeingDismissed];

  if (isBeingDismissed && v9)
  {
    [(AVPlayerViewController *)self setInteractiveDismissalCompletionHandler:handlerCopy];
    v9[2](v9);
    goto LABEL_18;
  }

  if (![(AVPlayerViewController *)self isViewLoaded])
  {
    goto LABEL_15;
  }

  view = [(AVPlayerViewController *)self view];
  superview = [view superview];
  if (!superview && ![(AVPlayerViewController *)self isPresentingDetachedFullScreen])
  {

    goto LABEL_15;
  }

  isPresentingFullScreenFromInline = [(AVPlayerViewController *)self isPresentingFullScreenFromInline];

  if (!isPresentingFullScreenFromInline)
  {
LABEL_15:
    if (!handlerCopy)
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
    handlerCopy[2](handlerCopy, 0, v27);

    goto LABEL_18;
  }

  view2 = [(AVPlayerViewController *)self view];
  layer = [view2 layer];
  needsLayout = [layer needsLayout];

  if (!needsLayout)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __102__AVPlayerViewController_AVPlayerViewController_WebKitOnly__exitFullScreenAnimated_completionHandler___block_invoke;
    v28[3] = &unk_1E7207F60;
    v29 = handlerCopy;
    [(AVPlayerViewController *)self _transitionFromFullScreenAnimated:animatedCopy completionHandler:v28];

    goto LABEL_18;
  }

  if (handlerCopy)
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

- (void)enterFullScreenAnimated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  v35 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = _AVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v30 = "[AVPlayerViewController(AVPlayerViewController_WebKitOnly) enterFullScreenAnimated:completionHandler:]";
    v31 = 1024;
    v32 = 9966;
    v33 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  if (-[AVPlayerViewController isViewLoaded](self, "isViewLoaded") && (-[AVPlayerViewController view](self, "view"), v8 = objc_claimAutoreleasedReturnValue(), [v8 superview], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    view = [(AVPlayerViewController *)self view];
    layer = [view layer];
    needsLayout = [layer needsLayout];

    if (!needsLayout)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __103__AVPlayerViewController_AVPlayerViewController_WebKitOnly__enterFullScreenAnimated_completionHandler___block_invoke;
      v23[3] = &unk_1E7207F60;
      v24 = handlerCopy;
      [(AVPlayerViewController *)self _transitionToFullScreenAnimated:animatedCopy interactive:0 completionHandler:v23];
      v15 = v24;
      goto LABEL_12;
    }

    if (handlerCopy)
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
      (*(handlerCopy + 2))(handlerCopy, 0, v22);

LABEL_12:
    }
  }

  else if (handlerCopy)
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

- (void)setPlaybackControlsShouldControlSystemVolume:(BOOL)volume
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_playbackControlsShouldControlSystemVolume != volume)
  {
    volumeCopy = volume;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVPlayerViewController(AVPlayerViewController_WebKitOnly) setPlaybackControlsShouldControlSystemVolume:]";
      v10 = "playbackControlsShouldControlSystemVolume";
      v9 = 2080;
      if (volumeCopy)
      {
        v6 = "YES";
      }

      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
    }

    self->_playbackControlsShouldControlSystemVolume = volumeCopy;
    [(AVPlayerViewController *)self _updateVolumeController];
    [(AVMobileControlsViewController *)self->_controlsViewController setVolumeController:self->_volumeController];
  }
}

- (AVPlayerViewController)initWithPlayerLayerView:(id)view
{
  v23 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v5 = [(AVPlayerViewController *)self initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(AVPlayerViewController *)v5 setWasInitializedUsingWebKitSPI:1];
    [(AVPlayerViewController *)v6 setCanDisplayContentInDetachedWindow:0];
    [(AVPlayerViewController *)v6 setPlayerLayerView:viewCopy];
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
    _defaultInfoViewActions = [(AVPlayerViewController *)v6 _defaultInfoViewActions];
    infoViewActions = v6->_infoViewActions;
    v6->_infoViewActions = _defaultInfoViewActions;

    v14 = +[AVKitGlobalSettings shared];
    extendedVisualAnalysisEnabled = [v14 extendedVisualAnalysisEnabled];

    if (extendedVisualAnalysisEnabled)
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

- (void)setOverrideTransformForProminentPlayButton:(CGAffineTransform *)button
{
  p_overrideTransformForProminentPlayButton = &self->_overrideTransformForProminentPlayButton;
  v6 = *&button->c;
  *&t1.a = *&button->a;
  *&t1.c = v6;
  *&t1.tx = *&button->tx;
  v7 = *&self->_overrideTransformForProminentPlayButton.c;
  *&v12.a = *&self->_overrideTransformForProminentPlayButton.a;
  *&v12.c = v7;
  *&v12.tx = *&self->_overrideTransformForProminentPlayButton.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v12))
  {
    v8 = *&button->a;
    v9 = *&button->tx;
    *&p_overrideTransformForProminentPlayButton->c = *&button->c;
    *&p_overrideTransformForProminentPlayButton->tx = v9;
    *&p_overrideTransformForProminentPlayButton->a = v8;
    _chromeControlsViewController = [(AVPlayerViewController *)self _chromeControlsViewController];
    v11 = *&p_overrideTransformForProminentPlayButton->c;
    *&t1.a = *&p_overrideTransformForProminentPlayButton->a;
    *&t1.c = v11;
    *&t1.tx = *&p_overrideTransformForProminentPlayButton->tx;
    [_chromeControlsViewController setTransformForProminentPlayButton:&t1];
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
  contentView = [(AVPlayerViewController *)self contentView];
  iAdPreRollView = [contentView iAdPreRollView];

  return iAdPreRollView;
}

- (AVPresentationContext)presentationContext
{
  _transitionController = [(AVPlayerViewController *)self _transitionController];
  presentationContext = [_transitionController presentationContext];

  return presentationContext;
}

- (BOOL)isPresentingFullWindow
{
  _showsWolfControls = [(AVPlayerViewController *)self _showsWolfControls];
  if (_showsWolfControls)
  {
    view = [(AVPlayerViewController *)self view];
    window = [view window];

    if (window)
    {
      view2 = [(AVPlayerViewController *)self view];
      window2 = [view2 window];
      view3 = [(AVPlayerViewController *)self view];
      [view3 bounds];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      view4 = [(AVPlayerViewController *)self view];
      [window2 convertRect:view4 fromView:{v10, v12, v14, v16}];

      UIPointRoundToScale();
      UISizeRoundToScale();
      v19 = v18;
      v21 = v20;
      view5 = [(AVPlayerViewController *)self view];
      window3 = [view5 window];
      [window3 bounds];
      v25 = v24;
      v27 = v26;

      LOBYTE(_showsWolfControls) = v21 == v27 && v19 == v25;
    }

    else
    {
      LOBYTE(_showsWolfControls) = 0;
    }
  }

  return _showsWolfControls;
}

- (BOOL)isPresentedFullScreen
{
  parentViewController = [(AVPlayerViewController *)self parentViewController];
  v4 = !parentViewController && [(AVPlayerViewController *)self _isDescendantOfRootViewController]&& [(AVPlayerViewController *)self _modalPresentationStyleIsFullScreen];

  return v4;
}

- (BOOL)isPresentingFullScreenFromInline
{
  fullScreenViewController = [(AVPlayerViewController *)self fullScreenViewController];
  presentingViewController = [fullScreenViewController presentingViewController];
  v4 = presentingViewController != 0;

  return v4;
}

- (BOOL)hasActiveTransition
{
  if (([(AVPlayerViewController *)self isBeingDismissed]& 1) != 0 || ([(AVPlayerViewController *)self isBeingPresented]& 1) != 0)
  {
    return 1;
  }

  _transitionControllerIfLoaded = [(AVPlayerViewController *)self _transitionControllerIfLoaded];
  presentationContext = [_transitionControllerIfLoaded presentationContext];
  hasActiveTransition = [presentationContext hasActiveTransition];

  return hasActiveTransition;
}

- (void)setControlsGeneration:(int64_t)generation
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_controlsGeneration != generation)
  {
    self->_controlsGeneration = generation;
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
      view = [(AVMobileControlsViewController *)self->_controlsViewController view];
      [view removeFromSuperview];

      [(AVMobileControlsViewController *)self->_controlsViewController removeFromParentViewController];
      _createPreferredControlsViewController = [(AVPlayerViewController *)self _createPreferredControlsViewController];
      v8 = self->_controlsViewController;
      self->_controlsViewController = _createPreferredControlsViewController;

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

- (void)setCanStartPictureInPictureAutomaticallyWhenEnteringBackground:(BOOL)background
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_canStartPictureInPictureAutomaticallyWhenEnteringBackground != background)
  {
    backgroundCopy = background;
    self->_canStartPictureInPictureAutomaticallyWhenEnteringBackground = background;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVPlayerViewController(AVPlayerViewControllerInternal) setCanStartPictureInPictureAutomaticallyWhenEnteringBackground:]";
      v10 = "canStartPictureInPictureAutomaticallyWhenEnteringBackground";
      v9 = 2080;
      if (backgroundCopy)
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
  contentView = [(AVPlayerViewController *)self contentView];
  playbackContentContainerView = [contentView playbackContentContainerView];
  activeContentView = [playbackContentContainerView activeContentView];
  playerLayerView = [activeContentView playerLayerView];
  playerLayer = [playerLayerView playerLayer];
  videoGravity = [playerLayer videoGravity];
  [(AVPlayerViewController *)self setVideoGravity:videoGravity];

  contentView2 = [(AVPlayerViewController *)self contentView];
  playbackContentContainerView2 = [contentView2 playbackContentContainerView];
  activeContentView2 = [playbackContentContainerView2 activeContentView];
  playerLayerView2 = [activeContentView2 playerLayerView];
  [(AVPlayerViewController *)self setPlayerLayerView:playerLayerView2];

  playerLayer2 = [(__AVPlayerLayerView *)self->_playerLayerView playerLayer];
  player = [playerLayer2 player];
  [(AVPlayerViewController *)self setPlayer:player];
}

- (void)setCanShowPictureInPictureButton:(BOOL)button
{
  if (self->_canShowPictureInPictureButton != button)
  {
    self->_canShowPictureInPictureButton = button;
    [(AVPlayerViewController *)self _updatePlaybackControlsState];
  }
}

- (AVPlaybackControlsController)chromePlaybackControlsController
{
  _chromeControlsViewController = [(AVPlayerViewController *)self _chromeControlsViewController];
  playbackControlsController = [_chromeControlsViewController playbackControlsController];

  return playbackControlsController;
}

- (AVCatalystGlassPlaybackControlsController)catalystPlaybackControlsController
{
  _catalystGlassControlsViewController = [(AVPlayerViewController *)self _catalystGlassControlsViewController];
  playbackControlsController = [_catalystGlassControlsViewController playbackControlsController];

  return playbackControlsController;
}

- (void)exitFullscreen:(id)fullscreen
{
  v18 = *MEMORY[0x1E69E9840];
  fullscreenCopy = fullscreen;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v13 = "[AVPlayerViewController(AVPlaybackControlsViewControllerActions) exitFullscreen:]";
    v14 = 1024;
    v15 = 10371;
    v16 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  objc_initWeak(buf, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__AVPlayerViewController_AVPlaybackControlsViewControllerActions__exitFullscreen___block_invoke;
  aBlock[3] = &unk_1E7209A88;
  objc_copyWeak(&v11, buf);
  v6 = _Block_copy(aBlock);
  fullScreenViewController = [(AVPlayerViewController *)self fullScreenViewController];
  v8 = fullScreenViewController == 0;

  if (v8)
  {
    player = [(AVPlayerViewController *)self player];
    [AVDismissalExpanseCoordinator coordinateDismissalWithExpanseSessionForPlayer:player cancellable:1 dismissalBlock:v6];
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

- (void)toggleMuted:(id)muted
{
  [(AVPlayerViewController *)self _volumeButtonWasPressedEvent:muted];
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

- (void)pictureInPictureButtonTapped:(id)tapped
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
    selfCopy = self;
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s %d %p", &v5, 0x1Cu);
  }

  [(AVPlayerViewController *)self _togglePictureInPicture];
}

- (void)enterFullScreen:(id)screen
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
    selfCopy = self;
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s %d %p", &v5, 0x1Cu);
  }

  [(AVPlayerViewController *)self _transitionToFullScreenAnimated:1 interactive:0 completionHandler:0];
}

- (void)mediaSelectionButtonTapped:(id)tapped
{
  v27 = *MEMORY[0x1E69E9840];
  tappedCopy = tapped;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315650;
    v22 = "[AVPlayerViewController(AVPlaybackControlsViewControllerActions) mediaSelectionButtonTapped:]";
    v23 = 1024;
    v24 = 10307;
    v25 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d %p", &v21, 0x1Cu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [AVMediaSelectionViewController alloc];
    playerController = [(AVPlayerViewController *)self playerController];
    v8 = [(AVMediaSelectionViewController *)v6 initWithPlayerController:playerController doneButtonTarget:self doneButtonAction:sel__mediaSelectionDoneButtonTapped_];

    popoverPresentationController = [(AVMediaSelectionViewController *)v8 popoverPresentationController];
    objc_storeWeak(&self->_mediaSelectionPopoverPresentationController, popoverPresentationController);

    WeakRetained = objc_loadWeakRetained(&self->_mediaSelectionPopoverPresentationController);
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [WeakRetained setBackgroundColor:clearColor];

    v12 = objc_loadWeakRetained(&self->_mediaSelectionPopoverPresentationController);
    [v12 setDelegate:self];

    v13 = objc_loadWeakRetained(&self->_mediaSelectionPopoverPresentationController);
    [v13 setPermittedArrowDirections:15];

    v14 = objc_loadWeakRetained(&self->_mediaSelectionPopoverPresentationController);
    [tappedCopy bounds];
    [v14 setSourceRect:?];

    v15 = objc_loadWeakRetained(&self->_mediaSelectionPopoverPresentationController);
    [v15 setSourceView:tappedCopy];

    parentViewController = [(AVPlayerViewController *)self parentViewController];
    if (parentViewController)
    {
      [(AVMediaSelectionViewController *)v8 _setIgnoreAppSupportedOrientations:0];
    }

    else
    {
      fullScreenViewController = [(AVPlayerViewController *)self fullScreenViewController];
      [(AVMediaSelectionViewController *)v8 _setIgnoreAppSupportedOrientations:fullScreenViewController == 0];
    }

    mediaSelectionTableViewController = [(AVMediaSelectionViewController *)v8 mediaSelectionTableViewController];
    [mediaSelectionTableViewController _setIgnoreAppSupportedOrientations:{-[AVMediaSelectionViewController _ignoreAppSupportedOrientations](v8, "_ignoreAppSupportedOrientations")}];

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

    _activeViewControllerForContentView = [(AVPlayerViewController *)self _activeViewControllerForContentView];
    [_activeViewControllerForContentView presentViewController:v8 animated:1 completion:0];
  }
}

- (void)togglePlayback:(id)playback
{
  playbackCopy = playback;
  [(AVPlayerViewController *)self _playPauseButtonWasPressedEvent:playbackCopy];
  playerController = [(AVPlayerViewController *)self playerController];
  [playerController togglePlayback:playbackCopy];
}

- (void)videoGravityButtonTapped:(id)tapped
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
    selfCopy = self;
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s %d %p", &v15, 0x1Cu);
  }

  videoGravity = [(AVPlayerViewController *)self videoGravity];
  v6 = *MEMORY[0x1E69874E8];
  v7 = [videoGravity isEqualToString:*MEMORY[0x1E69874E8]];
  v8 = *MEMORY[0x1E69874F0];
  if (!v7)
  {
    v8 = v6;
  }

  v9 = v8;
  contentView = [(AVPlayerViewController *)self contentView];
  layoutClass = [contentView layoutClass];
  unsignedIntegerValue = [layoutClass unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    contentView2 = [(AVPlayerViewController *)self contentView];
    layoutClass2 = [contentView2 layoutClass];
    -[AVPlayerViewController setVideoGravity:forLayoutClass:](self, "setVideoGravity:forLayoutClass:", v9, [layoutClass2 unsignedIntegerValue]);
  }
}

+ (int64_t)preferredControlsGeneration
{
  v2 = +[AVKitGlobalSettings shared];
  playerGeneration = [v2 playerGeneration];

  v4 = 1;
  if (playerGeneration == 2)
  {
    v4 = 2;
  }

  if (playerGeneration)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

+ (void)setPreferredControlsGeneration:(int64_t)generation
{
  v3 = 1;
  if (generation == 2)
  {
    v3 = 2;
  }

  if (generation)
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
  playerGeneration = [v2 playerGeneration];

  return (playerGeneration - 1) < 2;
}

+ (void)setUsesSecondGenerationControls:(BOOL)controls
{
  controlsCopy = controls;
  if ([self usesSecondGenerationControls] != controls)
  {
    v4 = +[AVKitGlobalSettings shared];
    [v4 setPlayerGeneration:controlsCopy];
  }
}

- (id)_newsWidgetPlayerLegacyBehavior
{
  _behaviorStorage = [(AVPlayerViewController *)self _behaviorStorage];
  v3 = [_behaviorStorage behaviorOfClass:objc_opt_class()];

  return v3;
}

- (id)_newsWidgetPlayerBehaviorContext
{
  _behaviorStorage = [(AVPlayerViewController *)self _behaviorStorage];
  v3 = [_behaviorStorage behaviorContextOfClass:objc_opt_class()];

  return v3;
}

- (void)setVideoGravityForTransitioningContent:(id)content
{
  contentCopy = content;
  _newsWidgetPlayerBehaviorContext = [(AVPlayerViewController *)self _newsWidgetPlayerBehaviorContext];
  [_newsWidgetPlayerBehaviorContext setVideoGravityForTransitioningContent:contentCopy];
}

- (void)startContentTransition:(int64_t)transition
{
  v12 = *MEMORY[0x1E69E9840];
  activeContentTransitionType = [(AVPlayerViewController *)self activeContentTransitionType];
  v6 = _AVLog();
  _newsWidgetPlayerBehaviorContext = v6;
  if (activeContentTransitionType)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      selfCopy = self;
      _os_log_error_impl(&dword_18B49C000, _newsWidgetPlayerBehaviorContext, OS_LOG_TYPE_ERROR, "Warning: Attempted to start content transition on a %@, which was already transitioning. Ignoring.", &v8, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      selfCopy = "[AVPlayerViewController(AVPlayerViewController_NewsOnly) startContentTransition:]";
      v10 = 2048;
      transitionCopy = transition;
      _os_log_impl(&dword_18B49C000, _newsWidgetPlayerBehaviorContext, OS_LOG_TYPE_DEFAULT, "%s %ld", &v8, 0x16u);
    }

    _newsWidgetPlayerBehaviorContext = [(AVPlayerViewController *)self _newsWidgetPlayerBehaviorContext];
    [_newsWidgetPlayerBehaviorContext startContentTransition:transition];
  }
}

- (void)setContentTransitioningDelegate:(id)delegate
{
  v14 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  contentTransitioningDelegate = [(AVPlayerViewController *)self contentTransitioningDelegate];

  if (contentTransitioningDelegate != delegateCopy)
  {
    v6 = _AVLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "[AVPlayerViewController(AVPlayerViewController_NewsOnly) setContentTransitioningDelegate:]";
      v12 = 2112;
      v13 = delegateCopy;
      _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s %@", &v10, 0x16u);
    }

    _newsWidgetPlayerLegacyBehavior = [(AVPlayerViewController *)self _newsWidgetPlayerLegacyBehavior];
    if (_newsWidgetPlayerLegacyBehavior)
    {
      [(AVPlayerViewController *)self removeBehavior:_newsWidgetPlayerLegacyBehavior];
    }

    if (delegateCopy)
    {
      v8 = objc_alloc_init(AVNewsWidgetPlayerLegacyBehavior);
      [(AVPlayerViewController *)self addBehavior:v8];

      _newsWidgetPlayerLegacyBehavior2 = [(AVPlayerViewController *)self _newsWidgetPlayerLegacyBehavior];
      [_newsWidgetPlayerLegacyBehavior2 setLegacyDelegate:delegateCopy];
    }
  }
}

- (AVPlayerViewControllerContentTransitioning_NewsOnly)contentTransitioningDelegate
{
  _newsWidgetPlayerLegacyBehavior = [(AVPlayerViewController *)self _newsWidgetPlayerLegacyBehavior];
  legacyDelegate = [_newsWidgetPlayerLegacyBehavior legacyDelegate];

  return legacyDelegate;
}

- (AVPlayer)contentTransitioningPlayer
{
  _newsWidgetPlayerBehaviorContext = [(AVPlayerViewController *)self _newsWidgetPlayerBehaviorContext];
  contentTransitioningPlayer = [_newsWidgetPlayerBehaviorContext contentTransitioningPlayer];

  return contentTransitioningPlayer;
}

- (BOOL)isContentTransitionInteractive
{
  _newsWidgetPlayerBehaviorContext = [(AVPlayerViewController *)self _newsWidgetPlayerBehaviorContext];
  isContentTransitionInteractive = [_newsWidgetPlayerBehaviorContext isContentTransitionInteractive];

  return isContentTransitionInteractive;
}

- (UIView)contentTransitioningOverlayView
{
  _newsWidgetPlayerBehaviorContext = [(AVPlayerViewController *)self _newsWidgetPlayerBehaviorContext];
  contentTransitioningOverlayView = [_newsWidgetPlayerBehaviorContext contentTransitioningOverlayView];

  return contentTransitioningOverlayView;
}

- (void)setStartNextContentTransitionButtonEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _newsWidgetPlayerBehaviorContext = [(AVPlayerViewController *)self _newsWidgetPlayerBehaviorContext];
  [_newsWidgetPlayerBehaviorContext setStartNextContentTransitionButtonEnabled:enabledCopy];
}

- (BOOL)isStartNextContentTransitionButtonEnabled
{
  _newsWidgetPlayerBehaviorContext = [(AVPlayerViewController *)self _newsWidgetPlayerBehaviorContext];
  isStartNextContentTransitionButtonEnabled = [_newsWidgetPlayerBehaviorContext isStartNextContentTransitionButtonEnabled];

  return isStartNextContentTransitionButtonEnabled;
}

- (void)setStartPreviousContentTransitionButtonEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _newsWidgetPlayerBehaviorContext = [(AVPlayerViewController *)self _newsWidgetPlayerBehaviorContext];
  [_newsWidgetPlayerBehaviorContext setStartPreviousContentTransitionButtonEnabled:enabledCopy];
}

- (BOOL)isStartPreviousContentTransitionButtonEnabled
{
  _newsWidgetPlayerBehaviorContext = [(AVPlayerViewController *)self _newsWidgetPlayerBehaviorContext];
  isStartPreviousContentTransitionButtonEnabled = [_newsWidgetPlayerBehaviorContext isStartPreviousContentTransitionButtonEnabled];

  return isStartPreviousContentTransitionButtonEnabled;
}

- (void)setCustomContentTransitioningInfoPanel:(id)panel
{
  panelCopy = panel;
  _newsWidgetPlayerBehaviorContext = [(AVPlayerViewController *)self _newsWidgetPlayerBehaviorContext];
  [_newsWidgetPlayerBehaviorContext setCustomContentTransitioningInfoPanel:panelCopy];
}

- (UIView)customContentTransitioningInfoPanel
{
  _newsWidgetPlayerBehaviorContext = [(AVPlayerViewController *)self _newsWidgetPlayerBehaviorContext];
  customContentTransitioningInfoPanel = [_newsWidgetPlayerBehaviorContext customContentTransitioningInfoPanel];

  return customContentTransitioningInfoPanel;
}

- (int64_t)activeContentTransitionType
{
  _newsWidgetPlayerBehaviorContext = [(AVPlayerViewController *)self _newsWidgetPlayerBehaviorContext];
  activeContentTransitionType = [_newsWidgetPlayerBehaviorContext activeContentTransitionType];

  return activeContentTransitionType;
}

- (NSArray)behaviors
{
  _behaviorStorage = [(AVPlayerViewController *)self _behaviorStorage];
  behaviors = [_behaviorStorage behaviors];
  v4 = behaviors;
  if (behaviors)
  {
    v5 = behaviors;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (void)removeBehavior:(id)behavior
{
  behaviorCopy = behavior;
  _behaviorStorage = [(AVPlayerViewController *)self _behaviorStorage];
  [_behaviorStorage removeBehavior:behaviorCopy];
}

- (void)addBehavior:(id)behavior
{
  behaviorCopy = behavior;
  [(AVPlayerViewController *)self _ensureBehaviorStorage];
  _behaviorStorage = [(AVPlayerViewController *)self _behaviorStorage];
  [_behaviorStorage addBehavior:behaviorCopy];
}

@end