@interface AVCatalystGlassPlaybackControlsController
+ (id)keyPathsForValuesAffectingCanShowLoadingIndicator;
+ (id)keyPathsForValuesAffectingCurrentTime;
+ (id)keyPathsForValuesAffectingFullScreen;
+ (id)keyPathsForValuesAffectingMaximumTime;
+ (id)keyPathsForValuesAffectingMinimumTime;
+ (id)keyPathsForValuesAffectingNeedsTimeResolver;
+ (id)keyPathsForValuesAffectingPlayButtonsShowPauseGlyph;
+ (id)keyPathsForValuesAffectingProminentPlayButtonCanShowPauseGlyph;
+ (id)keyPathsForValuesAffectingSeekingEnabled;
+ (id)keyPathsForValuesAffectingShouldEnterFullScreenWhenPlaybackBegins;
+ (id)keyPathsForValuesAffectingShowsProminentPlayButton;
+ (id)keyPathsForValuesAffectingShowsRoutePickerView;
+ (id)keyPathsForValuesAffectingShowsSkipButtons;
+ (id)keyPathsForValuesAffectingShowsStartContentTransitionButtons;
+ (id)keyPathsForValuesAffectingShowsTransportControls;
- (AVCatalystGlassPlaybackControlsController)initWithPlayerViewController:(id)controller visibilityDelegate:(id)delegate;
- (AVCatalystTurboModePlaybackControlsPlaceholderView)turboModePlaybackControlsPlaceholderView;
- (AVPlayerController)playerController;
- (AVPlayerViewController)playerViewController;
- (BOOL)canShowLoadingIndicator;
- (BOOL)entersFullScreenWhenTapped;
- (BOOL)isFullScreen;
- (BOOL)isSeekingEnabled;
- (BOOL)needsTimeResolver;
- (BOOL)playButtonsShowPauseGlyph;
- (BOOL)playerViewControllerContentViewHasActiveTransition:(id)transition;
- (BOOL)playerViewControllerContentViewIsBeingTransitionedFromFullScreen:(id)screen;
- (BOOL)playerViewControllerContentViewShouldApplyAutomaticVideoGravity:(id)gravity;
- (BOOL)prefersStatusBarHidden;
- (BOOL)shouldApplyLegibleMediaSelectionCriteriaAutomaticallyForMediaSelectionMenuController:(id)controller;
- (BOOL)shouldEnterFullScreenWhenPlaybackBegins;
- (BOOL)showsMediaSelectionButton;
- (BOOL)showsProminentPlayButton;
- (BOOL)showsRoutePickerView;
- (BOOL)showsSkipButtons;
- (BOOL)showsStartContentTransitionButtons;
- (BOOL)showsTransportControls;
- (BOOL)tapGestureRecognizersCanReceiveTouches;
- (CGRect)playbackViewFrame;
- (CGSize)playerViewControllerContentViewContentDimensions:(id)dimensions;
- (NSTimer)loadingIndicatorTimer;
- (UIAlertController)routePickerAlertController;
- (UIViewPropertyAnimator)collapseExpandSliderAnimator;
- (double)currentTime;
- (double)maximumTime;
- (double)minimumTime;
- (double)targetTime;
- (id)_volumeButtonMicaPackageState;
- (id)overflowMenuItemsForControlOverflowButton:(id)button;
- (id)playerViewControllerContentViewOverrideLayoutClass:(id)class;
- (void)_autoHideControlsAfterDelay:(double)delay;
- (void)_bindEnabledStateOfControls:(id)controls toKeyPath:(id)path usingObservationController:(id)controller;
- (void)_bindInclusionOfControlItems:(id)items toKeyPath:(id)path;
- (void)_observeBoolForKeyPath:(id)path usingKeyValueObservationController:(id)controller observationHandler:(id)handler;
- (void)_prefersVolumeSliderExpandedAutomatically;
- (void)_seekByTimeInterval:(double)interval toleranceBefore:(double)before toleranceAfter:(double)after;
- (void)_showOrHideDisplayModeControls;
- (void)_startObservingPotentiallyUnimplementedPlayerControllerProperties;
- (void)_updateContainerInclusion;
- (void)_updateDimmingViewVisibility;
- (void)_updateGlassVariantsIfNeeded;
- (void)_updateHasPlaybackBegunSincePlayerControllerBecameReadyToPlay:(BOOL)play playing:(BOOL)playing userDidEndTappingProminentPlayButton:(BOOL)button;
- (void)_updateOrCreateTimeResolverIfNeeded;
- (void)_updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:(BOOL)visible;
- (void)_updatePlaybackControlsVisibleAndObservingUpdates;
- (void)_updatePlaybackSpeedControlInclusion;
- (void)_updateRouteDetectionEnabled;
- (void)_updateScrubberAndTimeLabels;
- (void)_updateSkipButtonsEnableLongPress;
- (void)_updateTransportBarCustomMenuItemsIfNeeded;
- (void)_updateVideoGravityType;
- (void)_updateVolumeButtonGlyph;
- (void)_updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:(BOOL)expansion;
- (void)_updateVolumeSliderValueWithSystemVolume:(float)volume animated:(BOOL)animated;
- (void)beginChangingVolume;
- (void)beginHidingItemsForTransition;
- (void)beginScrubbing;
- (void)beginShowingItemsDueToIndirectUserInteraction;
- (void)beginUserInteraction;
- (void)dealloc;
- (void)endChangingVolume;
- (void)endHidingItemsForTransitionAndShowImmediately:(BOOL)immediately;
- (void)endScrubbing;
- (void)endShowingItemsDueToIndirectUserInteraction;
- (void)endUserInteraction;
- (void)flashPlaybackControlsWithDuration:(double)duration;
- (void)flashVolumeControlsWithDuration:(double)duration;
- (void)handleCurrentRouteSupportsVolumeControlChanged:(id)changed;
- (void)handleVolumeChange:(id)change;
- (void)mediaSelectionMenuController:(id)controller didSelectOption:(id)option;
- (void)playbackControlsViewDidLoad:(id)load;
- (void)playbackSpeedButtonTapped:(id)tapped;
- (void)playerViewControllerContentViewDidChangeSize:(id)size;
- (void)playerViewControllerContentViewDidChangeVideoGravity:(id)gravity;
- (void)playerViewControllerContentViewDidLayoutSubviews:(id)subviews;
- (void)playerViewControllerContentViewDidMoveToSuperviewOrWindow:(id)window;
- (void)playerViewControllerContentViewDidUpdateScrollingStatus:(id)status;
- (void)playerViewControllerContentViewPlaybackContentContainerViewChanged:(id)changed;
- (void)prominentPlayButtonTouchUpInside:(id)inside;
- (void)scrubToTime:(double)time resolution:(double)resolution;
- (void)setAllowsEnteringFullScreen:(BOOL)screen;
- (void)setAnalysisInteractionInProgress:(BOOL)progress;
- (void)setCanIncludePlaybackControlsWhenInline:(BOOL)inline;
- (void)setCoveringWindow:(BOOL)window;
- (void)setCustomControlItems:(id)items;
- (void)setForcePlaybackControlsHidden:(BOOL)hidden;
- (void)setHasCustomPlaybackControls:(BOOL)controls;
- (void)setIsAudioOnlyContent:(BOOL)content;
- (void)setPictureInPictureActive:(BOOL)active;
- (void)setPlaybackControlsIncludeDisplayModeControls:(BOOL)controls;
- (void)setPlaybackControlsIncludeTransportControls:(BOOL)controls;
- (void)setPlaybackControlsIncludeVolumeControls:(BOOL)controls;
- (void)setPlaybackSpeedCollection:(id)collection;
- (void)setPlayerController:(id)controller;
- (void)setPlayerViewControllerIsBeingTransitionedWithResizing:(BOOL)resizing;
- (void)setPlayerViewControllerIsPresentedFullScreen:(BOOL)screen;
- (void)setPlayerViewControllerIsPresentingFullScreen:(BOOL)screen;
- (void)setPopoverIsBeingPresented:(BOOL)presented;
- (void)setPreferredUnobscuredArea:(int64_t)area;
- (void)setShowsDoneButtonWhenFullScreen:(BOOL)screen;
- (void)setShowsMinimalPlaybackControlsWhenEmbeddedInline:(BOOL)inline;
- (void)setShowsPictureInPictureButton:(BOOL)button;
- (void)setShowsPlaybackControls:(BOOL)controls;
- (void)setShowsShowTextControl:(BOOL)control;
- (void)setShowsTimecodes:(BOOL)timecodes;
- (void)setShowsVideoZoomControl:(BOOL)control;
- (void)setShowsVolumeControlsForContentWithNoAudio:(BOOL)audio;
- (void)setTransportBarCustomMenuItems:(id)items;
- (void)setVolumeController:(id)controller;
- (void)setVolumeControlsCanShowSlider:(BOOL)slider;
- (void)setWantsExternalPlaybackButtonShown:(BOOL)shown;
- (void)showPlaybackControls:(BOOL)controls immediately:(BOOL)immediately;
- (void)skipButtonForcePressChanged:(id)changed;
- (void)skipButtonLongPressEnded:(id)ended;
- (void)skipButtonLongPressTriggered:(id)triggered;
- (void)skipButtonTouchUpInside:(id)inside;
- (void)startContentTransitionButtonTouchUpInside:(id)inside;
- (void)startUpdatesIfNeeded;
- (void)toggleMuted;
- (void)togglePlaybackControlsVisibility;
- (void)transportControls:(id)controls scrubberDidBeginScrubbing:(id)scrubbing;
- (void)transportControls:(id)controls scrubberDidEndScrubbing:(id)scrubbing;
- (void)transportControls:(id)controls scrubberDidScrub:(id)scrub;
- (void)transportControlsNeedsLayoutIfNeeded:(id)needed;
- (void)turboModePlaybackControlsPlaceholderViewDidLoad:(id)load;
- (void)updateVolumeSliderValue:(id)value volumeButtonControl:(id)control;
- (void)volumeButtonPanChanged:(id)changed;
- (void)volumeButtonTapTriggered:(id)triggered;
- (void)volumeSliderValueDidChange:(id)change;
@end

@implementation AVCatalystGlassPlaybackControlsController

- (CGRect)playbackViewFrame
{
  x = self->_playbackViewFrame.origin.x;
  y = self->_playbackViewFrame.origin.y;
  width = self->_playbackViewFrame.size.width;
  height = self->_playbackViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIViewPropertyAnimator)collapseExpandSliderAnimator
{
  WeakRetained = objc_loadWeakRetained(&self->_collapseExpandSliderAnimator);

  return WeakRetained;
}

- (NSTimer)loadingIndicatorTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_loadingIndicatorTimer);

  return WeakRetained;
}

- (UIAlertController)routePickerAlertController
{
  WeakRetained = objc_loadWeakRetained(&self->_routePickerAlertController);

  return WeakRetained;
}

- (AVCatalystTurboModePlaybackControlsPlaceholderView)turboModePlaybackControlsPlaceholderView
{
  WeakRetained = objc_loadWeakRetained(&self->_turboModePlaybackControlsPlaceholderView);

  return WeakRetained;
}

- (AVPlayerViewController)playerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_playerViewController);

  return WeakRetained;
}

- (AVPlayerController)playerController
{
  WeakRetained = objc_loadWeakRetained(&self->_playerController);

  return WeakRetained;
}

- (void)_updateHasPlaybackBegunSincePlayerControllerBecameReadyToPlay:(BOOL)play playing:(BOOL)playing userDidEndTappingProminentPlayButton:(BOOL)button
{
  if (playing || button || !play)
  {
    [(AVCatalystGlassPlaybackControlsController *)self setHasPlaybackBegunSincePlayerControllerBecameReadyToPlay:play];
  }
}

- (void)endHidingItemsForTransitionAndShowImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  [(AVCatalystGlassPlaybackControlsController *)self setHidingItemsForTransition:0];
  [(AVCatalystGlassPlaybackControlsController *)self showPlaybackControls:immediatelyCopy immediately:1];
  playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  timeControlStatus = [playerController timeControlStatus];

  if (timeControlStatus == 2 && immediatelyCopy)
  {

    [(AVCatalystGlassPlaybackControlsController *)self flashPlaybackControlsWithDuration:3.0];
  }
}

- (void)beginHidingItemsForTransition
{
  [(AVCatalystGlassPlaybackControlsController *)self showPlaybackControls:0 immediately:1];

  [(AVCatalystGlassPlaybackControlsController *)self setHidingItemsForTransition:1];
}

- (void)endUserInteraction
{
  [(AVCatalystGlassPlaybackControlsController *)self setUserInteractingCount:[(AVCatalystGlassPlaybackControlsController *)self userInteractingCount]- 1];
  if (![(AVCatalystGlassPlaybackControlsController *)self userInteractingCount])
  {
    playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
    isPlaying = [playerController isPlaying];

    if (isPlaying)
    {

      [(AVCatalystGlassPlaybackControlsController *)self _autoHideControlsAfterDelay:3.0];
    }
  }
}

- (void)beginUserInteraction
{
  [(AVCatalystGlassPlaybackControlsController *)self setUserInteractingCount:[(AVCatalystGlassPlaybackControlsController *)self userInteractingCount]+ 1];
  playbackControlsVisibilityTimer = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsVisibilityTimer];
  [playbackControlsVisibilityTimer invalidate];
}

- (BOOL)prefersStatusBarHidden
{
  if ([(AVCatalystGlassPlaybackControlsController *)self isHidingItemsForTransition])
  {
    return 1;
  }

  else
  {
    return ![(AVCatalystGlassPlaybackControlsController *)self isShowingPlaybackControls];
  }
}

- (void)setPopoverIsBeingPresented:(BOOL)presented
{
  if (self->_popoverIsBeingPresented != presented)
  {
    self->_popoverIsBeingPresented = presented;
    if (presented)
    {

      [(AVCatalystGlassPlaybackControlsController *)self _updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:1];
    }

    else
    {
      playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
      isPlaying = [playerController isPlaying];

      if (isPlaying)
      {

        [(AVCatalystGlassPlaybackControlsController *)self flashPlaybackControlsWithDuration:3.0];
      }
    }
  }
}

- (void)setPictureInPictureActive:(BOOL)active
{
  if (self->_pictureInPictureActive != active)
  {
    self->_pictureInPictureActive = active;
    if (active)
    {
      v5 = 0;
    }

    else
    {
      playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
      v5 = [playerController isPlaying] ^ 1;
    }

    [(AVCatalystGlassPlaybackControlsController *)self _updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:v5];
  }
}

- (void)endShowingItemsDueToIndirectUserInteraction
{
  if ([(AVCatalystGlassPlaybackControlsController *)self isPopoverBeingPresented]|| [(AVCatalystGlassPlaybackControlsController *)self isPictureInPictureActive])
  {
    return;
  }

  playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  if ([playerController isPlayingOnExternalScreen])
  {
    goto LABEL_7;
  }

  playerViewController = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  if ([playerViewController isAudioOnlyContent])
  {

LABEL_7:

    return;
  }

  canHidePlaybackControls = [(AVCatalystGlassPlaybackControlsController *)self canHidePlaybackControls];

  if (canHidePlaybackControls)
  {

    [(AVCatalystGlassPlaybackControlsController *)self showPlaybackControls:0 immediately:0];
  }
}

- (void)beginShowingItemsDueToIndirectUserInteraction
{
  if (![(AVCatalystGlassPlaybackControlsController *)self isPopoverBeingPresented]&& ![(AVCatalystGlassPlaybackControlsController *)self isPictureInPictureActive])
  {

    [(AVCatalystGlassPlaybackControlsController *)self flashPlaybackControlsWithDuration:3.0];
  }
}

- (void)_autoHideControlsAfterDelay:(double)delay
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[AVCatalystGlassPlaybackControlsController _autoHideControlsAfterDelay:]";
    v13 = 2048;
    delayCopy = delay;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s delay: %f", buf, 0x16u);
  }

  playbackControlsVisibilityTimer = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsVisibilityTimer];
  [playbackControlsVisibilityTimer invalidate];

  objc_initWeak(buf, self);
  v7 = MEMORY[0x1E695DFF0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__AVCatalystGlassPlaybackControlsController__autoHideControlsAfterDelay___block_invoke;
  v9[3] = &unk_1E7209DA8;
  objc_copyWeak(&v10, buf);
  v8 = [v7 scheduledTimerWithTimeInterval:0 repeats:v9 block:delay];
  [(AVCatalystGlassPlaybackControlsController *)self setPlaybackControlsVisibilityTimer:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __73__AVCatalystGlassPlaybackControlsController__autoHideControlsAfterDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:0];
    WeakRetained = v2;
  }
}

- (void)flashVolumeControlsWithDuration:(double)duration
{
  [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:[(AVCatalystGlassPlaybackControlsController *)self _prefersVolumeSliderExpandedAutomatically]];
  playbackControlsView = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  [playbackControlsView setShowsAudioControls:1];

  playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  if ([playerController isPlaying])
  {
  }

  else
  {
    playbackControlsView2 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    showsPlaybackControls = [playbackControlsView2 showsPlaybackControls];

    if (showsPlaybackControls)
    {
      return;
    }
  }

  [(AVCatalystGlassPlaybackControlsController *)self _autoHideControlsAfterDelay:2.0];
}

- (void)_prefersVolumeSliderExpandedAutomatically
{
  if (result)
  {
    v1 = result;
    playbackControlsView = [result playbackControlsView];
    includedContainers = [playbackControlsView includedContainers];

    playbackControlsView2 = [v1 playbackControlsView];
    customAudioItems = [playbackControlsView2 customAudioItems];
    v6 = [customAudioItems count];

    return ((v6 == 0) & (includedContainers >> 4));
  }

  return result;
}

- (void)showPlaybackControls:(BOOL)controls immediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  controlsCopy = controls;
  v18 = *MEMORY[0x1E69E9840];
  playbackControlsVisibilityTimer = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsVisibilityTimer];
  [playbackControlsVisibilityTimer invalidate];

  v8 = _AVLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315906;
    v11 = "[AVCatalystGlassPlaybackControlsController showPlaybackControls:immediately:]";
    v12 = 1024;
    v13 = controlsCopy;
    v14 = 1024;
    v15 = immediatelyCopy;
    v16 = 1024;
    isHidingItemsForTransition = [(AVCatalystGlassPlaybackControlsController *)self isHidingItemsForTransition];
    _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s shouldShowPlaybackControls: %d {\n\tshowImmediately: %d\n\tisHidingItemsForTransition: %d}", &v10, 0x1Eu);
  }

  if (![(AVCatalystGlassPlaybackControlsController *)self isHidingItemsForTransition])
  {
    [(AVCatalystGlassPlaybackControlsController *)self setShowingPlaybackControls:controlsCopy];
    playbackControlsView = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    [playbackControlsView showPlaybackControls:controlsCopy immediately:immediatelyCopy];
  }
}

- (void)flashPlaybackControlsWithDuration:(double)duration
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[AVCatalystGlassPlaybackControlsController flashPlaybackControlsWithDuration:]";
    v10 = 2048;
    durationCopy = duration;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s duration: %f", &v8, 0x16u);
  }

  if (![(AVCatalystGlassPlaybackControlsController *)self isPictureInPictureActive])
  {
    playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
    if ([playerController isPlayingOnExternalScreen])
    {
    }

    else
    {
      showsPlaybackControls = [(AVCatalystGlassPlaybackControlsController *)self showsPlaybackControls];

      if (showsPlaybackControls)
      {
        [(AVCatalystGlassPlaybackControlsController *)self showPlaybackControls:1 immediately:0];
        [(AVCatalystGlassPlaybackControlsController *)self _autoHideControlsAfterDelay:duration];
      }
    }
  }
}

- (void)_updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:(BOOL)visible
{
  visibleCopy = visible;
  v37 = *MEMORY[0x1E69E9840];
  playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  isPlayingOnExternalScreen = [playerController isPlayingOnExternalScreen];

  playerViewController = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  isAudioOnlyContent = [playerViewController isAudioOnlyContent];

  if (([(AVCatalystGlassPlaybackControlsController *)self isUserInteracting]|| visibleCopy) && ![(AVCatalystGlassPlaybackControlsController *)self isPictureInPictureActive])
  {
    v9 = 1;
    if (visibleCopy)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v9 = isPlayingOnExternalScreen | isAudioOnlyContent;
    if (visibleCopy)
    {
      goto LABEL_17;
    }
  }

  if (![(AVCatalystGlassPlaybackControlsController *)self isUserInteracting]&& ![(AVCatalystGlassPlaybackControlsController *)self isPopoverBeingPresented]&& ![(AVCatalystGlassPlaybackControlsController *)self showsLoadingIndicator]&& ![(AVCatalystGlassPlaybackControlsController *)self isPictureInPictureActive]&& !(isPlayingOnExternalScreen & 1 | ![(AVCatalystGlassPlaybackControlsController *)self canHidePlaybackControls]| isAudioOnlyContent & 1))
  {
    goto LABEL_27;
  }

  if (![(AVCatalystGlassPlaybackControlsController *)self isPopoverBeingPresented]&& ![(AVCatalystGlassPlaybackControlsController *)self showsLoadingIndicator]&& [(AVCatalystGlassPlaybackControlsController *)self canHidePlaybackControls])
  {
    if ((v9 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

LABEL_17:
  if ([(AVCatalystGlassPlaybackControlsController *)self isPictureInPictureActive])
  {
    playerController2 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
    if ([playerController2 isPlayingOnExternalScreen])
    {

      goto LABEL_21;
    }

    playerViewController2 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
    isAudioOnlyContent2 = [playerViewController2 isAudioOnlyContent];

    if (isAudioOnlyContent2)
    {
      goto LABEL_21;
    }

LABEL_27:
    v15 = 0;
    goto LABEL_24;
  }

LABEL_21:
  playbackControlsView = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  showsAudioControls = [playbackControlsView showsAudioControls];

  if ((showsAudioControls & 1) == 0)
  {
    [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:[(AVCatalystGlassPlaybackControlsController *)self _prefersVolumeSliderExpandedAutomatically]];
  }

  v15 = 1;
LABEL_24:
  v16 = _AVLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136317442;
    v18 = "[AVCatalystGlassPlaybackControlsController _updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:]";
    v19 = 1024;
    v20 = v15;
    v21 = 1024;
    v22 = visibleCopy;
    v23 = 1024;
    isUserInteracting = [(AVCatalystGlassPlaybackControlsController *)self isUserInteracting];
    v25 = 1024;
    isPictureInPictureActive = [(AVCatalystGlassPlaybackControlsController *)self isPictureInPictureActive];
    v27 = 1024;
    v28 = isPlayingOnExternalScreen;
    v29 = 1024;
    v30 = isAudioOnlyContent;
    v31 = 1024;
    isPopoverBeingPresented = [(AVCatalystGlassPlaybackControlsController *)self isPopoverBeingPresented];
    v33 = 1024;
    showsLoadingIndicator = [(AVCatalystGlassPlaybackControlsController *)self showsLoadingIndicator];
    v35 = 1024;
    canHidePlaybackControls = [(AVCatalystGlassPlaybackControlsController *)self canHidePlaybackControls];
    _os_log_impl(&dword_18B49C000, v16, OS_LOG_TYPE_DEFAULT, "%s shouldShowPlaybackControls: %d {\n\twantsPlaybackControlsVisible: %d\n\tisUserInteracting: %d\n\tisPictureInPictureActive: %d\n\tplayingOnExternalScreen: %d\n\taudioOnlyContent: %d\n\tisPopoverBeingPresented: %d\n\tshowsLoadingIndicator: %d\n\tcanHidePlaybackControls: %d\n}", &v17, 0x42u);
  }

  [(AVCatalystGlassPlaybackControlsController *)self showPlaybackControls:v15 immediately:0];
}

- (void)togglePlaybackControlsVisibility
{
  playbackControlsView = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  [playbackControlsView setPrefersVolumeSliderExpandedAutomatically:-[AVCatalystGlassPlaybackControlsController _prefersVolumeSliderExpandedAutomatically](self)];

  playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  if ([playerController isPlaying])
  {
    isShowingPlaybackControls = [(AVCatalystGlassPlaybackControlsController *)self isShowingPlaybackControls];

    if (!isShowingPlaybackControls)
    {

      [(AVCatalystGlassPlaybackControlsController *)self flashPlaybackControlsWithDuration:3.0];
      return;
    }
  }

  else
  {
  }

  v6 = [(AVCatalystGlassPlaybackControlsController *)self isShowingPlaybackControls]^ 1;

  [(AVCatalystGlassPlaybackControlsController *)self _updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:v6];
}

- (void)setForcePlaybackControlsHidden:(BOOL)hidden
{
  if (self->_forcePlaybackControlsHidden != hidden)
  {
    self->_forcePlaybackControlsHidden = hidden;
    [(AVCatalystGlassPlaybackControlsController *)self _updatePlaybackControlsVisibleAndObservingUpdates];
  }
}

- (void)_updatePlaybackControlsVisibleAndObservingUpdates
{
  v132[1] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  playbackControlsView = [self playbackControlsView];
  if (![self showsPlaybackControls] || (objc_msgSend(self, "analysisInteractionInProgress") & 1) != 0 || (objc_msgSend(self, "playerViewControllerIsBeingTransitionedWithResizing") & 1) != 0 || (objc_msgSend(self, "forcePlaybackControlsHidden") & 1) != 0 || (objc_msgSend(self, "isFullScreen") & 1) == 0 && (objc_msgSend(self, "canIncludePlaybackControlsWhenInline") & 1) == 0)
  {
    if (![self hasCustomPlaybackControls] || !playbackControlsView)
    {
LABEL_30:
      if (([self isHidingItemsForTransition] & 1) == 0)
      {
        [self beginHidingItemsForTransition];
      }

      goto LABEL_32;
    }

    v79 = 0;
  }

  else
  {
    if (!playbackControlsView)
    {
      goto LABEL_21;
    }

    v79 = 1;
  }

  playbackControlsObservationController = [self playbackControlsObservationController];

  if (playbackControlsObservationController)
  {
    if (!v79)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v3 = [[AVObservationController alloc] initWithOwner:self];
    [self setPlaybackControlsObservationController:v3];

    playbackControlsView2 = [self playbackControlsView];

    if (!playbackControlsView2)
    {
      v5 = _AVLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v78 = _AVMethodProem(self);
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v78;
        _os_log_error_impl(&dword_18B49C000, v5, OS_LOG_TYPE_ERROR, "Called %@ before creating playback controls view!", &buf, 0xCu);
      }
    }

    playbackControlsView3 = [self playbackControlsView];
    playbackControlsView4 = [self playbackControlsView];
    objc_initWeak(&location, playbackControlsView4);

    objc_initWeak(&from, self);
    [self setResumingUpdates:1];
    playbackControlsObservationController2 = [self playbackControlsObservationController];
    v111[0] = MEMORY[0x1E69E9820];
    v111[1] = 3221225472;
    v111[2] = __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke;
    v111[3] = &unk_1E7209A88;
    objc_copyWeak(&v112, &location);
    [self _observeBoolForKeyPath:@"prominentPlayButtonCanShowPauseGlyph" usingKeyValueObservationController:playbackControlsObservationController2 observationHandler:v111];

    playbackControlsObservationController3 = [self playbackControlsObservationController];
    v109[0] = MEMORY[0x1E69E9820];
    v109[1] = 3221225472;
    v109[2] = __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_2;
    v109[3] = &unk_1E7209A88;
    objc_copyWeak(&v110, &from);
    [self _observeBoolForKeyPath:@"showsProminentPlayButton" usingKeyValueObservationController:playbackControlsObservationController3 observationHandler:v109];

    playbackControlsObservationController4 = [self playbackControlsObservationController];
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v129 = __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_3;
    v130 = &unk_1E7208D40;
    objc_copyWeak(&v131, &location);
    objc_copyWeak(v132, &from);
    [self _observeBoolForKeyPath:@"playButtonsShowPauseGlyph" usingKeyValueObservationController:playbackControlsObservationController4 observationHandler:&buf];

    playerControllerObservationController = [self playerControllerObservationController];
    v107[0] = MEMORY[0x1E69E9820];
    v107[1] = 3221225472;
    v107[2] = __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_4;
    v107[3] = &unk_1E7209A88;
    objc_copyWeak(&v108, &from);
    [self _observeBoolForKeyPath:@"playerController.muted" usingKeyValueObservationController:playerControllerObservationController observationHandler:v107];

    playerControllerObservationController2 = [self playerControllerObservationController];
    v105[0] = MEMORY[0x1E69E9820];
    v105[1] = 3221225472;
    v105[2] = __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_5;
    v105[3] = &unk_1E7209A88;
    objc_copyWeak(&v106, &from);
    [self _observeBoolForKeyPath:@"playerController.hasEnabledAudio" usingKeyValueObservationController:playerControllerObservationController2 observationHandler:v105];

    playerController = [self playerController];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      playerControllerObservationController3 = [self playerControllerObservationController];
      v16 = [playerControllerObservationController3 startObserving:self keyPath:@"playerController.currentAssetIfReady" includeInitialValue:1 observationHandler:&__block_literal_global_268];
    }

    playbackControlsObservationController5 = [self playbackControlsObservationController];
    v102[0] = MEMORY[0x1E69E9820];
    v102[1] = 3221225472;
    v102[2] = __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_7;
    v102[3] = &unk_1E7208D40;
    objc_copyWeak(&v103, &from);
    objc_copyWeak(&v104, &location);
    [self _observeBoolForKeyPath:@"prefersMuted" usingKeyValueObservationController:playbackControlsObservationController5 observationHandler:v102];

    playbackControlsObservationController6 = [self playbackControlsObservationController];
    v99[0] = MEMORY[0x1E69E9820];
    v99[1] = 3221225472;
    v99[2] = __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_8;
    v99[3] = &unk_1E7208D40;
    objc_copyWeak(&v100, &from);
    objc_copyWeak(&v101, &location);
    [self _observeBoolForKeyPath:@"fullScreen" usingKeyValueObservationController:playbackControlsObservationController6 observationHandler:v99];

    playerControllerObservationController4 = [self playerControllerObservationController];
    v97[0] = MEMORY[0x1E69E9820];
    v97[1] = 3221225472;
    v97[2] = __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_9;
    v97[3] = &unk_1E7209A88;
    objc_copyWeak(&v98, &from);
    [self _observeBoolForKeyPath:@"playerController.playingOnExternalScreen" usingKeyValueObservationController:playerControllerObservationController4 observationHandler:v97];

    playerControllerObservationController5 = [self playerControllerObservationController];
    v94[0] = MEMORY[0x1E69E9820];
    v94[1] = 3221225472;
    v94[2] = __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_10;
    v94[3] = &unk_1E7208D40;
    objc_copyWeak(&v95, &location);
    objc_copyWeak(&v96, &from);
    [self _observeBoolForKeyPath:@"playerController.hasLiveStreamingContent" usingKeyValueObservationController:playerControllerObservationController5 observationHandler:v94];

    playbackControlsObservationController7 = [self playbackControlsObservationController];
    v91[0] = MEMORY[0x1E69E9820];
    v91[1] = 3221225472;
    v91[2] = __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_11;
    v91[3] = &unk_1E7208D40;
    objc_copyWeak(&v92, &location);
    objc_copyWeak(&v93, &from);
    [self _observeBoolForKeyPath:@"hasSeekableLiveStreamingContent" usingKeyValueObservationController:playbackControlsObservationController7 observationHandler:v91];

    playerControllerObservationController6 = [self playerControllerObservationController];
    v89[0] = MEMORY[0x1E69E9820];
    v89[1] = 3221225472;
    v89[2] = __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_12;
    v89[3] = &unk_1E7209A88;
    objc_copyWeak(&v90, &from);
    [self _observeBoolForKeyPath:@"playerController.playingOnMatchPointDevice" usingKeyValueObservationController:playerControllerObservationController6 observationHandler:v89];

    playerControllerObservationController7 = [self playerControllerObservationController];
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_13;
    v86[3] = &unk_1E7207D30;
    objc_copyWeak(&v87, &location);
    objc_copyWeak(&v88, &from);
    v24 = [playerControllerObservationController7 startObserving:self keyPath:@"playerController.loadedTimeRanges" includeInitialValue:1 observationHandler:v86];

    playbackControlsObservationController8 = [self playbackControlsObservationController];
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_14;
    v83[3] = &unk_1E7208D40;
    objc_copyWeak(&v84, &location);
    objc_copyWeak(&v85, &from);
    [self _observeBoolForKeyPath:@"showsLoadingIndicator" usingKeyValueObservationController:playbackControlsObservationController8 observationHandler:v83];

    playbackControlsObservationController9 = [self playbackControlsObservationController];
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_15;
    v81[3] = &unk_1E7209A88;
    objc_copyWeak(&v82, &from);
    [self _observeBoolForKeyPath:@"canShowLoadingIndicator" usingKeyValueObservationController:playbackControlsObservationController9 observationHandler:v81];

    if (playbackControlsView3)
    {
      standardPlayPauseButton = [playbackControlsView3 standardPlayPauseButton];
      v127 = standardPlayPauseButton;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v127 count:1];
      playerControllerObservationController8 = [self playerControllerObservationController];
      [self _bindEnabledStateOfControls:v28 toKeyPath:@"playerController.canTogglePlayback" usingObservationController:playerControllerObservationController8];

      scrubber = [playbackControlsView3 scrubber];
      v126[0] = scrubber;
      skipBackButton = [playbackControlsView3 skipBackButton];
      v126[1] = skipBackButton;
      skipForwardButton = [playbackControlsView3 skipForwardButton];
      v126[2] = skipForwardButton;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:3];
      playbackControlsObservationController10 = [self playbackControlsObservationController];
      [self _bindEnabledStateOfControls:v33 toKeyPath:@"seekingEnabled" usingObservationController:playbackControlsObservationController10];

      startLeftwardContentTransitionButton = [playbackControlsView3 startLeftwardContentTransitionButton];
      v125 = startLeftwardContentTransitionButton;
      v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v125 count:1];
      playbackControlsObservationController11 = [self playbackControlsObservationController];
      [self _bindEnabledStateOfControls:v36 toKeyPath:@"startLeftwardContentTransitionButtonEnabled" usingObservationController:playbackControlsObservationController11];

      startRightwardContentTransitionButton = [playbackControlsView3 startRightwardContentTransitionButton];
      v124 = startRightwardContentTransitionButton;
      v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v124 count:1];
      playbackControlsObservationController12 = [self playbackControlsObservationController];
      [self _bindEnabledStateOfControls:v39 toKeyPath:@"startRightwardContentTransitionButtonEnabled" usingObservationController:playbackControlsObservationController12];

      scrubber2 = [playbackControlsView3 scrubber];
      v123 = scrubber2;
      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v123 count:1];
      playbackControlsObservationController13 = [self playbackControlsObservationController];
      [self _bindEnabledStateOfControls:v42 toKeyPath:@"isSeekingEnabled" usingObservationController:playbackControlsObservationController13];

      transportControlsView = [playbackControlsView3 transportControlsView];
      v122 = transportControlsView;
      v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v122 count:1];
      [self _bindInclusionOfControlItems:v45 toKeyPath:@"showsTransportControls"];

      skipBackButton2 = [playbackControlsView3 skipBackButton];
      v121[0] = skipBackButton2;
      skipForwardButton2 = [playbackControlsView3 skipForwardButton];
      v121[1] = skipForwardButton2;
      v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v121 count:2];
      [self _bindInclusionOfControlItems:v48 toKeyPath:@"showsSkipButtons"];

      startLeftwardContentTransitionButton2 = [playbackControlsView3 startLeftwardContentTransitionButton];
      v120[0] = startLeftwardContentTransitionButton2;
      startRightwardContentTransitionButton2 = [playbackControlsView3 startRightwardContentTransitionButton];
      v120[1] = startRightwardContentTransitionButton2;
      v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:2];
      [self _bindInclusionOfControlItems:v51 toKeyPath:@"showsStartContentTransitionButtons"];

      routePickerView = [playbackControlsView3 routePickerView];
      v119 = routePickerView;
      v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v119 count:1];
      [self _bindInclusionOfControlItems:v53 toKeyPath:@"showsRoutePickerView"];

      mediaSelectionButton = [playbackControlsView3 mediaSelectionButton];
      v118 = mediaSelectionButton;
      v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v118 count:1];
      [self _bindInclusionOfControlItems:v55 toKeyPath:@"showsMediaSelectionButton"];

      playbackSpeedButton = [playbackControlsView3 playbackSpeedButton];
      v117 = playbackSpeedButton;
      v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v117 count:1];
      [self _bindInclusionOfControlItems:v57 toKeyPath:@"showsPlaybackSpeedButton"];
    }

    playbackControlsObservationController14 = [self playbackControlsObservationController];
    v116[0] = @"minimumTime";
    v116[1] = @"maximumTime";
    v116[2] = @"currentTime";
    v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:3];
    v60 = [playbackControlsObservationController14 startObserving:self keyPaths:v59 includeInitialValue:1 observationHandler:&__block_literal_global_334];

    playbackControlsObservationController15 = [self playbackControlsObservationController];
    [playbackControlsObservationController15 startObservingNotificationForName:*MEMORY[0x1E69DE828] object:0 notificationCenter:0 observationHandler:&__block_literal_global_336];

    playbackControlsObservationController16 = [self playbackControlsObservationController];
    [playbackControlsObservationController16 startObservingNotificationForName:*MEMORY[0x1E69DE7D0] object:0 notificationCenter:0 observationHandler:&__block_literal_global_338];

    playbackControlsObservationController17 = [self playbackControlsObservationController];
    playbackRateMenuController = [self playbackRateMenuController];
    v65 = [playbackControlsObservationController17 startObserving:playbackRateMenuController keyPath:@"menu" observationHandler:&__block_literal_global_344];

    playbackControlsObservationController18 = [self playbackControlsObservationController];
    v67 = [playbackControlsObservationController18 startObserving:self keyPath:@"showsMediaSelectionButton" observationHandler:&__block_literal_global_346];

    playbackControlsObservationController19 = [self playbackControlsObservationController];
    playerController2 = [self playerController];
    v115[0] = @"audioMediaSelectionOptions";
    v115[1] = @"legibleMediaSelectionOptions";
    v115[2] = @"currentAudioMediaSelectionOption";
    v115[3] = @"currentLegibleMediaSelectionOption";
    v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:4];
    v71 = [playbackControlsObservationController19 startObserving:playerController2 keyPaths:v70 observationHandler:&__block_literal_global_360];

    volumeController = [self volumeController];
    [volumeController volume];
    [self _updateVolumeSliderValueWithSystemVolume:0 animated:?];

    playbackControlsView5 = [self playbackControlsView];
    [playbackControlsView5 setHidden:0];

    [self setResumingUpdates:0];
    objc_destroyWeak(&v82);
    objc_destroyWeak(&v85);
    objc_destroyWeak(&v84);
    objc_destroyWeak(&v88);
    objc_destroyWeak(&v87);
    objc_destroyWeak(&v90);
    objc_destroyWeak(&v93);
    objc_destroyWeak(&v92);
    objc_destroyWeak(&v96);
    objc_destroyWeak(&v95);
    objc_destroyWeak(&v98);
    objc_destroyWeak(&v101);
    objc_destroyWeak(&v100);
    objc_destroyWeak(&v104);
    objc_destroyWeak(&v103);
    objc_destroyWeak(&v106);
    objc_destroyWeak(&v108);
    objc_destroyWeak(v132);
    objc_destroyWeak(&v131);
    objc_destroyWeak(&v110);
    objc_destroyWeak(&v112);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);

    if ((v79 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

LABEL_21:
  [playbackControlsView setHidden:0];
  [self _updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:{objc_msgSend(self, "showsPlaybackControls")}];
  if ([self isHidingItemsForTransition])
  {
    if (![self isFullScreen] || objc_msgSend(self, "timeControlStatus") != 2)
    {
      goto LABEL_28;
    }

    playerController3 = [self playerController];
    if (([playerController3 isPlayingOnExternalScreen] & 1) == 0)
    {
      playerViewController = [self playerViewController];
      if (![playerViewController isAudioOnlyContent])
      {
        canHidePlaybackControls = [self canHidePlaybackControls];

        if (canHidePlaybackControls)
        {
          v76 = 0;
          goto LABEL_29;
        }

LABEL_28:
        v76 = [self isPictureInPictureActive] ^ 1;
LABEL_29:
        [self endHidingItemsForTransitionAndShowImmediately:v76];
        goto LABEL_32;
      }
    }

    goto LABEL_28;
  }

LABEL_32:
  [(AVCatalystGlassPlaybackControlsController *)self _updateRouteDetectionEnabled];
}

- (void)_updateRouteDetectionEnabled
{
  if (!self)
  {
    return;
  }

  routeDetectorCoordinator = [self routeDetectorCoordinator];
  playerViewController = [self playerViewController];
  if ([playerViewController isBeingPresented])
  {
  }

  else
  {
    playerViewController2 = [self playerViewController];
    fullScreenViewController = [playerViewController2 fullScreenViewController];
    isBeingPresented = [fullScreenViewController isBeingPresented];

    if ((isBeingPresented & 1) == 0)
    {
      playbackControlsView = [self playbackControlsView];
      avkit_isInAWindowAndVisible = [playbackControlsView avkit_isInAWindowAndVisible];

      if (!avkit_isInAWindowAndVisible)
      {
        goto LABEL_9;
      }
    }
  }

  if (![self showsPlaybackControls])
  {
LABEL_9:
    canIncludePlaybackControlsWhenInline = 0;
    goto LABEL_11;
  }

  if ([self isFullScreen])
  {
    canIncludePlaybackControlsWhenInline = 1;
  }

  else
  {
    canIncludePlaybackControlsWhenInline = [self canIncludePlaybackControlsWhenInline];
  }

LABEL_11:
  [routeDetectorCoordinator setRouteDetectionEnabled:canIncludePlaybackControlsWhenInline];
}

void __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained prominentPlayButton];
  v4 = v3;
  if (a2)
  {
    v5 = @"pause.fill";
  }

  else
  {
    v5 = @"play.fill";
  }

  [v3 setAlternateImageName:v5];
}

void __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(AVCatalystGlassPlaybackControlsController *)WeakRetained _updateContainerInclusion];
}

void __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_3(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained prominentPlayButton];
  [v5 setNeedsLayout];

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 standardPlayPauseButton];
  [v7 setHasAlternateAppearance:a2];

  v12 = objc_loadWeakRetained((a1 + 32));
  v8 = [v12 prominentPlayButton];
  v9 = v8;
  if (a2)
  {
    v10 = objc_loadWeakRetained((a1 + 40));
    if ([v10 prominentPlayButtonCanShowPauseGlyph])
    {
      v11 = @"pause.fill";
    }

    else
    {
      v11 = @"play.fill";
    }

    [v9 setImageName:v11];
  }

  else
  {
    [v8 setImageName:@"play.fill"];
  }
}

void __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPrefersMuted:a2];
}

void __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:-[AVCatalystGlassPlaybackControlsController _prefersVolumeSliderExpandedAutomatically](WeakRetained)];
    [v2 _showOrHideDisplayModeControls];
    WeakRetained = v2;
  }
}

void __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_7(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained volumeController];
  if (([v5 isChangingVolume] & 1) == 0)
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = [v6 window];

    if (!v7)
    {
      goto LABEL_5;
    }

    v8 = objc_loadWeakRetained((a1 + 40));
    v9 = [v8 volumeSlider];
    v10 = [v9 isHiddenOrHasHiddenAncestor];

    v5 = objc_loadWeakRetained((a1 + 32));
    v11 = [v5 volumeController];
    [v11 volume];
    [v5 _updateVolumeSliderValueWithSystemVolume:v10 ^ 1u animated:?];

    WeakRetained = v5;
  }

LABEL_5:
  v12 = objc_loadWeakRetained((a1 + 32));
  [v12 _updateVolumeButtonGlyph];

  v13 = objc_loadWeakRetained((a1 + 32));
  v14 = [v13 volumeAnimator];
  [v14 restoreVolumeIfNeeded];

  v15 = objc_loadWeakRetained((a1 + 32));
  [v15 setVolumeAnimator:0];

  v17 = objc_loadWeakRetained((a1 + 32));
  v16 = [v17 playerController];
  [v16 setMuted:a2];
}

void __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_8(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(AVCatalystGlassPlaybackControlsController *)WeakRetained _updateContainerInclusion];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 volumeController];
  [v6 setPrefersSystemVolumeHUDHidden:a2];

  v7 = objc_loadWeakRetained((a1 + 40));
  [v7 setFullScreen:a2];

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:-[AVCatalystGlassPlaybackControlsController _prefersVolumeSliderExpandedAutomatically](v8)];

  v11 = objc_loadWeakRetained((a1 + 32));
  v9 = [v11 playbackControlsView];
  v10 = objc_loadWeakRetained((a1 + 32));
  [v9 setPrefersVolumeSliderExpandedAutomatically:-[AVCatalystGlassPlaybackControlsController _prefersVolumeSliderExpandedAutomatically](v10)];
}

void __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_9(uint64_t a1, uint64_t a2)
{
  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:-[AVCatalystGlassPlaybackControlsController _prefersVolumeSliderExpandedAutomatically](v4)];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:a2];

  v6 = objc_loadWeakRetained((a1 + 32));
  [(AVCatalystGlassPlaybackControlsController *)v6 _updateVideoGravityType];
}

void __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_10(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained transportControlsView];
  [v5 setShowsLiveStreamingControls:a2];

  v6 = objc_loadWeakRetained((a1 + 40));
  [(AVCatalystGlassPlaybackControlsController *)v6 _updatePlaybackSpeedControlInclusion];
}

void __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_11(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained transportControlsView];
  [v5 setLiveStreamingControlsIncludeScrubber:a2];

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 skipForwardButton];
  [v7 setHasAlternateAppearance:a2];

  v8 = objc_loadWeakRetained((a1 + 40));
  [(AVCatalystGlassPlaybackControlsController *)v8 _updatePlaybackSpeedControlInclusion];
}

void __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(AVCatalystGlassPlaybackControlsController *)WeakRetained _updatePlaybackSpeedControlInclusion];
}

void __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_13(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained transportControlsView];
  v7 = [v6 scrubber];
  v8 = objc_loadWeakRetained((a1 + 40));
  if ([v8 hasSeekableLiveStreamingContent])
  {
    [v7 setLoadedTimeRanges:0];
  }

  else
  {
    v9 = [v10 value];
    [v7 setLoadedTimeRanges:v9];
  }
}

void __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_14(uint64_t a1, uint64_t a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained transportControlsView];
  [v5 setShowsLoadingIndicator:a2];

  v6 = objc_loadWeakRetained((a1 + 40));
  LODWORD(v5) = [v6 showsLoadingIndicator];

  v7 = objc_loadWeakRetained((a1 + 40));
  v8 = v7;
  if (v5)
  {
    [v7 _updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:1];
  }

  else
  {
    v9 = [v7 playerController];
    v10 = 3.0;
    if (([v9 isPlaying] & 1) == 0)
    {
      v11 = [MEMORY[0x1E695DF00] date];
      [v11 timeIntervalSince1970];
      v10 = v12;
    }

    v8 = objc_loadWeakRetained((a1 + 40));
    [v8 _autoHideControlsAfterDelay:v10];
  }

  v13 = [MEMORY[0x1E696AD88] defaultCenter];
  v14 = objc_loadWeakRetained((a1 + 40));
  v17 = @"AVGlassPlaybackControlsControllerShowsLoadingIndicatorValueKey";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v18[0] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  [v13 postNotificationName:@"AVGlassPlaybackControlsShowsLoadingIndicatorNotification" object:v14 userInfo:v16];
}

void __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_15(uint64_t a1, uint64_t a2)
{
  if (a2 && (v4 = objc_loadWeakRetained((a1 + 32)), [v4 loadingIndicatorTimerDelay], v6 = v5, v4, v6 > 0.0))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = MEMORY[0x1E695DFF0];
    v9 = WeakRetained;
    [v9 loadingIndicatorTimerDelay];
    v11 = v10;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_16;
    v16[3] = &unk_1E7209DA8;
    objc_copyWeak(&v17, (a1 + 32));
    v12 = [v8 scheduledTimerWithTimeInterval:0 repeats:v16 block:v11];
    [v9 setLoadingIndicatorTimer:v12];

    objc_destroyWeak(&v17);
  }

  else
  {
    v13 = objc_loadWeakRetained((a1 + 32));
    v14 = [v13 loadingIndicatorTimer];
    [v14 invalidate];

    v15 = objc_loadWeakRetained((a1 + 32));
    [v15 setShowsLoadingIndicator:a2];
  }
}

void __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_22(uint64_t a1, void *a2)
{
  v3 = [a2 playbackControlsView];
  v2 = [v3 controlOverflowButton];
  [v2 updateContextMenu];
}

void __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_21(uint64_t a1, void *a2)
{
  v3 = [a2 playbackControlsView];
  v2 = [v3 controlOverflowButton];
  [v2 updateContextMenu];
}

void __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_20(uint64_t a1, void *a2)
{
  v3 = [a2 playbackControlsView];
  v2 = [v3 controlOverflowButton];
  [v2 updateContextMenu];
}

void __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_18(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v13 = a2;
  v5 = a4;
  v6 = [v5 userInfo];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69DE7F8]];
  [v13 setPendingOrientationChange:v7];

  v8 = [v5 object];

  v9 = [v13 playerViewController];
  v10 = [v9 contentView];
  v11 = [v10 window];

  if (v8 == v11)
  {
    [v13 _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:-[AVCatalystGlassPlaybackControlsController _prefersVolumeSliderExpandedAutomatically](v13)];
    v12 = [v13 playbackControlsView];
    [v12 setPrefersVolumeSliderExpandedAutomatically:-[AVCatalystGlassPlaybackControlsController _prefersVolumeSliderExpandedAutomatically](v13)];
  }
}

void __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_17(uint64_t a1, void *a2)
{
  v2 = a2;
  if (([v2 shouldIgnoreTimeResolverUpdates] & 1) == 0)
  {
    [(AVCatalystGlassPlaybackControlsController *)v2 _updateScrubberAndTimeLabels];
  }
}

- (void)_updateScrubberAndTimeLabels
{
  if (!self)
  {
    return;
  }

  playbackControlsView = [self playbackControlsView];
  transportControlsView = [playbackControlsView transportControlsView];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [transportControlsView setBackgroundColor:clearColor];

  if (![self needsTimeResolver] || (objc_msgSend(self, "timeResolver"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    timeResolver = [self timeResolver];

    timecodeForCurrentTime = 0;
    v16 = 0;
    if (timeResolver)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  [self maximumTime];
  v6 = v5;
  [self minimumTime];
  v8 = v6 - v7;
  elapsedTimeFormatter = [self elapsedTimeFormatter];
  [elapsedTimeFormatter setFormatTemplate:v8];

  remainingTimeFormatter = [self remainingTimeFormatter];
  [remainingTimeFormatter setFormatTemplate:v8];

  if ([transportControlsView liveStreamingControlsIncludeScrubber])
  {
    elapsedTimeFormatter2 = [self elapsedTimeFormatter];
    [self minimumTime];
    v13 = v12;
    [self maximumTime];
    timecodeForCurrentTime = [elapsedTimeFormatter2 stringFromSeconds:v13 - v14];
    v16 = &stru_1EFED57D8;
  }

  else
  {
    if ([self showsTimecodes] && (objc_msgSend(self, "playerController"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "hasReadableTimecodes"), v18, v19))
    {
      playerController = [self playerController];
      timecodeForCurrentTime = [playerController timecodeForCurrentTime];

      elapsedTimeFormatter2 = [self playerController];
      maxTimecode = [elapsedTimeFormatter2 maxTimecode];
    }

    else
    {
      elapsedTimeFormatter3 = [self elapsedTimeFormatter];
      [self targetTime];
      timecodeForCurrentTime = [elapsedTimeFormatter3 stringFromSeconds:?];

      elapsedTimeFormatter2 = [self remainingTimeFormatter];
      [self maximumTime];
      v24 = v23;
      [self targetTime];
      maxTimecode = [elapsedTimeFormatter2 stringFromSeconds:v24 - v25];
    }

    v16 = maxTimecode;
  }

  [self minimumTime];
  [self minimumTime];
  if (fabs(v26) == INFINITY || ([self maximumTime], objc_msgSend(self, "maximumTime"), fabs(v27) == INFINITY) || (objc_msgSend(self, "currentTime"), objc_msgSend(self, "currentTime"), fabs(v28) == INFINITY) || (objc_msgSend(self, "maximumTime"), v30 = v29, objc_msgSend(self, "minimumTime"), v30 <= v31) || (objc_msgSend(self, "currentTime"), v33 = v32, objc_msgSend(self, "minimumTime"), v33 < v34) && (objc_msgSend(self, "currentTime"), v36 = v35, objc_msgSend(self, "maximumTime"), v36 > v37))
  {
LABEL_19:
    elapsedTimeFormatter4 = [self elapsedTimeFormatter];
    v39 = [elapsedTimeFormatter4 stringFromSeconds:NAN];

    remainingTimeFormatter2 = [self remainingTimeFormatter];
    v41 = [remainingTimeFormatter2 stringFromSeconds:NAN];

    scrubber = [transportControlsView scrubber];
    [scrubber setMinimumValue:0.0];

    scrubber2 = [transportControlsView scrubber];
    [scrubber2 setValue:0 animated:0.0];

    scrubber3 = [transportControlsView scrubber];
    LODWORD(v45) = 1.0;
    [scrubber3 setMaximumValue:v45];
    v16 = v41;
    timecodeForCurrentTime = v39;
    goto LABEL_20;
  }

  [self minimumTime];
  v67 = v66;
  [self maximumTime];
  v69 = v68;
  scrubber4 = [transportControlsView scrubber];
  *&v71 = v67;
  [scrubber4 setMinimumValue:v71];

  scrubber5 = [transportControlsView scrubber];
  *&v73 = v69;
  [scrubber5 setMaximumValue:v73];

  scrubber3 = [transportControlsView scrubber];
  if (([scrubber3 isTracking] & 1) == 0)
  {
    playerController2 = [self playerController];
    if ([playerController2 isPlayingOnExternalScreen])
    {
      scrubber6 = [transportControlsView scrubber];
      [scrubber6 timeIntervalSinceTrackingEnded];
      v77 = v76;

      if (v77 <= 0.5)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

    [self targetTime];
    v79 = v78;
    playerController3 = [self playerController];
    if ([playerController3 hasSeekableLiveStreamingContent])
    {
      playerController4 = [self playerController];
      isPlaying = [playerController4 isPlaying];

      v83 = isPlaying ^ 1;
    }

    else
    {
      v83 = 1;
    }

    if (v79 < v69 + -5.0)
    {
      v84 = 1;
    }

    else
    {
      v84 = v83;
    }

    if (v84)
    {
      v69 = v79;
    }

    scrubber3 = [transportControlsView scrubber];
    *&v85 = v69;
    [scrubber3 setValue:0 animated:v85];
  }

LABEL_20:

LABEL_21:
  if (timecodeForCurrentTime && v16)
  {
    elapsedTimeLabel = [transportControlsView elapsedTimeLabel];
    text = [elapsedTimeLabel text];

    elapsedTimeLabel2 = [transportControlsView elapsedTimeLabel];
    text2 = [elapsedTimeLabel2 text];

    elapsedTimeLabel3 = [transportControlsView elapsedTimeLabel];
    [elapsedTimeLabel3 setText:timecodeForCurrentTime];

    timeRemainingLabel = [transportControlsView timeRemainingLabel];
    [timeRemainingLabel setText:v16];

    v52 = [text length];
    if (v52 != [timecodeForCurrentTime length] || (v53 = objc_msgSend(text2, "length"), v53 != -[__CFString length](v16, "length")))
    {
      [transportControlsView setNeedsLayout];
    }
  }

LABEL_27:
  playerController5 = [self playerController];
  v55 = objc_opt_respondsToSelector();
  if ((v55 & 1) == 0)
  {
    goto LABEL_35;
  }

  playerController6 = [self playerController];
  interstitialController = [playerController6 interstitialController];
  currentInterstitialTimeRange = [interstitialController currentInterstitialTimeRange];

  if (!currentInterstitialTimeRange)
  {
    playerController5 = [self playerController];
    player = [playerController5 player];
    currentItem = [player currentItem];
    interstitialTimeRanges = [currentItem interstitialTimeRanges];
    if ([interstitialTimeRanges count])
    {
      scrubber7 = [transportControlsView scrubber];
      interstitialDisplayTimes = [scrubber7 interstitialDisplayTimes];

      if (interstitialDisplayTimes)
      {
        v55 = 1;
        goto LABEL_36;
      }

      playerController5 = [transportControlsView scrubber];
      player = [self playerController];
      currentItem = [player player];
      interstitialTimeRanges = [currentItem currentItem];
      v61InterstitialTimeRanges = [interstitialTimeRanges interstitialTimeRanges];
      [playerController5 setInterstitialDisplayTimes:v61InterstitialTimeRanges];
    }

LABEL_35:
    goto LABEL_36;
  }

  v55 = 0;
LABEL_36:
  scrubber8 = [transportControlsView scrubber];
  [scrubber8 setShowsTimelineMarkers:v55 & 1];
}

void __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_16(uint64_t a1, void *a2)
{
  if ([a2 isValid])
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    [v3 setShowsLoadingIndicator:{objc_msgSend(v3, "canShowLoadingIndicator")}];
  }
}

- (void)_updatePlaybackSpeedControlInclusion
{
  if (self)
  {
    playerController = [self playerController];
    if ([playerController hasLiveStreamingContent])
    {
      hasSeekableLiveStreamingContent = [playerController hasSeekableLiveStreamingContent];
    }

    else
    {
      hasSeekableLiveStreamingContent = 1;
    }

    playbackSpeedCollection = [self playbackSpeedCollection];
    if (playbackSpeedCollection)
    {
      v4 = +[AVKitGlobalSettings shared];
      if ([v4 playbackSpeedControlEnabled])
      {
        v5 = ([playerController isPlayingOnMatchPointDevice] ^ 1) & hasSeekableLiveStreamingContent;
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

    if (v5 != [self showsPlaybackSpeedButton])
    {
      [self setShowsPlaybackSpeedButton:v5];
    }
  }
}

- (void)_updateVideoGravityType
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  playerController = [result playerController];
  if (![playerController hasVideo] || !objc_msgSend(v1, "isFullScreen"))
  {
    goto LABEL_6;
  }

  playerController2 = [v1 playerController];
  if ([playerController2 isPlayingOnExternalScreen])
  {

    goto LABEL_6;
  }

  playerViewController = [v1 playerViewController];
  contentTransitioningDelegate = [playerViewController contentTransitioningDelegate];

  if (contentTransitioningDelegate)
  {
    v4 = 0;
  }

  else
  {
    playerController3 = [v1 playerController];
    [playerController3 contentDimensions];
    v9 = v8;
    v11 = v10;

    if ([v1 hasBecomeReadyToPlay])
    {
      v14 = ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v11 >= 0.0 || (*&v11 - 1) < 0xFFFFFFFFFFFFFLL;
      v16 = (v9 < 0.0 || ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&v9 - 1) > 0xFFFFFFFFFFFFELL;
      v4 = 1;
      if (!v16 && v14)
      {
        playerViewController2 = [v1 playerViewController];
        playerController = [playerViewController2 contentView];

        [playerController bounds];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v26 = v9 / v11;
        [playerController frame];
        UIRectGetCenter();
        v28 = v27;
        v30 = v29;
        cacheLargestInscribedRect = [playerController cacheLargestInscribedRect];
        [cacheLargestInscribedRect getLargestInscribableRectForView:playerController withCenter:v28 aspectRatio:{v30, v26}];
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v39 = v38;

        v45.origin.x = v33;
        v45.origin.y = v35;
        v45.size.width = v37;
        v45.size.height = v39;
        MinX = CGRectGetMinX(v45);
        v46.origin.x = v33;
        v46.origin.y = v35;
        v46.size.width = v37;
        v46.size.height = v39;
        MinY = CGRectGetMinY(v46);
        v47.origin.x = v33;
        v47.origin.y = v35;
        v47.size.width = v37;
        v47.size.height = v39;
        v49.origin.x = v19;
        v49.origin.y = v21;
        v49.size.width = v23;
        v49.size.height = v25;
        if (!CGRectEqualToRect(v47, v49))
        {
          v48.origin.x = v33;
          v48.origin.y = v35;
          v48.size.width = v37;
          v48.size.height = v39;
          if (CGRectGetMinX(v48) <= 0.0)
          {
            v4 = 1;
            if (MinX != 0.0 || MinY <= 0.0)
            {
              goto LABEL_7;
            }

            v40 = [v1 isVideoScaled] == 0;
            v41 = 1;
          }

          else
          {
            v40 = [v1 isVideoScaled] == 0;
            v41 = 3;
          }

          if (v40)
          {
            v4 = v41;
          }

          else
          {
            v4 = v41 + 1;
          }

LABEL_7:

          goto LABEL_8;
        }

LABEL_6:
        v4 = 0;
        goto LABEL_7;
      }
    }

    else
    {
      v4 = 1;
    }
  }

LABEL_8:
  result = [v1 videoGravityType];
  if (result != v4)
  {

    return [v1 setVideoGravityType:v4];
  }

  return result;
}

- (void)_updateContainerInclusion
{
  if (self)
  {
    playbackControlsView = [self playbackControlsView];

    if (playbackControlsView)
    {
      showsProminentPlayButton = [self showsProminentPlayButton];
      playbackControlsIncludeTransportControls = [self playbackControlsIncludeTransportControls];
      playbackControlsIncludeDisplayModeControls = [self playbackControlsIncludeDisplayModeControls];
      playbackControlsIncludeVolumeControls = [self playbackControlsIncludeVolumeControls];
      if (([self isFullScreen] & 1) != 0 || !objc_msgSend(self, "showsMinimalPlaybackControlsWhenEmbeddedInline"))
      {
        if (showsProminentPlayButton)
        {
          v7 = 2;
        }

        else
        {
          v7 = 0;
        }

        if (playbackControlsIncludeTransportControls)
        {
          if (playbackControlsIncludeDisplayModeControls)
          {
            v7 |= 0xCuLL;
          }

          else
          {
            v7 |= 4uLL;
          }
        }

        else if (playbackControlsIncludeDisplayModeControls)
        {
          v7 |= 8uLL;
        }
      }

      else
      {
        playbackControlsIncludeVolumeControls = showsProminentPlayButton ^ 1u;
        if (showsProminentPlayButton)
        {
          v7 = 2;
        }

        else
        {
          v7 = 0;
        }
      }

      playbackControlsView2 = [self playbackControlsView];
      [playbackControlsView2 setPrefersVolumeSliderExpandedAutomatically:playbackControlsIncludeVolumeControls];

      if (!playbackControlsIncludeVolumeControls || ([self shouldShowVolumeControlInTransportBar] & 1) != 0)
      {
        goto LABEL_23;
      }

      playerController = [self playerController];
      if ([playerController hasEnabledAudio])
      {
      }

      else
      {
        showsVolumeControlsForContentWithNoAudio = [self showsVolumeControlsForContentWithNoAudio];

        if (!showsVolumeControlsForContentWithNoAudio)
        {
LABEL_23:
          playbackControlsView3 = [self playbackControlsView];
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __70__AVCatalystGlassPlaybackControlsController__updateContainerInclusion__block_invoke;
          v12[3] = &unk_1E720A090;
          v12[4] = self;
          [playbackControlsView3 setIncludedContainers:v7 animations:v12];

          return;
        }
      }

      v7 |= 0x10uLL;
      goto LABEL_23;
    }
  }
}

uint64_t __70__AVCatalystGlassPlaybackControlsController__updateContainerInclusion__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    [v1 _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:-[AVCatalystGlassPlaybackControlsController _prefersVolumeSliderExpandedAutomatically](*(result + 32))];

    return [v1 _showOrHideDisplayModeControls];
  }

  return result;
}

- (void)_updateOrCreateTimeResolverIfNeeded
{
  if (!self)
  {
    return;
  }

  if (![self needsTimeResolver])
  {
    timeResolver = [self timeResolver];
    [timeResolver setPlayerController:0];

    [self setTimeResolver:0];
    return;
  }

  playbackControlsView = [self playbackControlsView];
  transportControlsView = [playbackControlsView transportControlsView];
  scrubber = [transportControlsView scrubber];
  v5 = 1.0;
  if (([scrubber isTracking] & 1) == 0)
  {
    playbackControlsView2 = [self playbackControlsView];
    volumeSlider = [playbackControlsView2 volumeSlider];
    isTracking = [volumeSlider isTracking];

    if (isTracking)
    {
      goto LABEL_7;
    }

    playbackControlsView = [self playbackControlsView];
    transportControlsView = [playbackControlsView transportControlsView];
    scrubber = [transportControlsView scrubber];
    [scrubber frame];
    Width = CGRectGetWidth(v36);
    playbackControlsView3 = [self playbackControlsView];
    traitCollection = [playbackControlsView3 traitCollection];
    [traitCollection displayScale];
    v5 = Width * v12;
  }

LABEL_7:
  v13 = 1.0;
  if ([self showsTimecodes])
  {
    playerController = [self playerController];
    hasReadableTimecodes = [playerController hasReadableTimecodes];

    if (hasReadableTimecodes)
    {
      playerController2 = [self playerController];
      [playerController2 timecodeObservationInterval];
      v13 = v17;
    }
  }

  timeResolver2 = [self timeResolver];
  playerController3 = [timeResolver2 playerController];
  playerController4 = [self playerController];

  if (playerController3 != playerController4)
  {
    v21 = objc_alloc_init(AVPlayerControllerTimeResolver);
    playerController5 = [self playerController];
    [(AVPlayerControllerTimeResolver *)v21 setPlayerController:playerController5];

    [(AVPlayerControllerTimeResolver *)v21 setResolution:v5];
    [(AVPlayerControllerTimeResolver *)v21 setInterval:v13];
    v23 = MEMORY[0x1E69DD250];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __80__AVCatalystGlassPlaybackControlsController__updateOrCreateTimeResolverIfNeeded__block_invoke;
    v33[3] = &unk_1E7209FB0;
    v33[4] = self;
    v34 = v21;
    v24 = v21;
    [v23 performWithoutAnimation:v33];

    return;
  }

  timeResolver3 = [self timeResolver];
  [timeResolver3 resolution];
  if (v27 == v5)
  {
    timeResolver4 = [self timeResolver];
    [timeResolver4 interval];
    v30 = vabdd_f64(v29, v13);

    if (v30 < 2.22044605e-16)
    {
      return;
    }
  }

  else
  {
  }

  timeResolver5 = [self timeResolver];
  [timeResolver5 setResolution:v5];

  timeResolver6 = [self timeResolver];
  [timeResolver6 setInterval:v13];
}

void __80__AVCatalystGlassPlaybackControlsController__updateOrCreateTimeResolverIfNeeded__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setTimeResolver:*(a1 + 40)];
  v4 = [*(a1 + 32) playbackControlsView];
  v2 = [v4 transportControlsView];
  v3 = [v2 scrubber];
  [v3 layoutIfNeeded];
}

- (void)_seekByTimeInterval:(double)interval toleranceBefore:(double)before toleranceAfter:(double)after
{
  playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  v10 = objc_opt_respondsToSelector();

  playerController2 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  if (v10)
  {
    [playerController2 seekByTimeInterval:interval toleranceBefore:before toleranceAfter:after];
  }

  else
  {
    [(AVCatalystGlassPlaybackControlsController *)self currentTime];
    [playerController2 seekToTime:v11 + interval];
  }
}

- (void)_observeBoolForKeyPath:(id)path usingKeyValueObservationController:(id)controller observationHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  controllerCopy = controller;
  handlerCopy = handler;
  v11 = [(AVCatalystGlassPlaybackControlsController *)self valueForKeyPath:pathCopy];
  v12 = [handlerCopy copy];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __122__AVCatalystGlassPlaybackControlsController__observeBoolForKeyPath_usingKeyValueObservationController_observationHandler___block_invoke;
  v15[3] = &unk_1E7208CF8;
  v13 = v12;
  v16 = v13;
  v14 = [controllerCopy startObserving:self keyPath:pathCopy includeInitialValue:1 observationHandler:v15];
}

void __122__AVCatalystGlassPlaybackControlsController__observeBoolForKeyPath_usingKeyValueObservationController_observationHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 32);
  v5 = [a4 value];
  (*(v4 + 16))(v4, [v5 BOOLValue]);
}

- (void)_bindInclusionOfControlItems:(id)items toKeyPath:(id)path
{
  itemsCopy = items;
  pathCopy = path;
  objc_initWeak(&location, self);
  playbackControlsObservationController = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsObservationController];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__AVCatalystGlassPlaybackControlsController__bindInclusionOfControlItems_toKeyPath___block_invoke;
  v10[3] = &unk_1E7208CD0;
  v9 = itemsCopy;
  v11 = v9;
  objc_copyWeak(&v12, &location);
  [(AVCatalystGlassPlaybackControlsController *)self _observeBoolForKeyPath:pathCopy usingKeyValueObservationController:playbackControlsObservationController observationHandler:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __84__AVCatalystGlassPlaybackControlsController__bindInclusionOfControlItems_toKeyPath___block_invoke(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        [v9 setIncluded:a2];
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        v11 = [WeakRetained playbackControlsView];
        v12 = [v11 transportControlsView];
        LOBYTE(v9) = [v9 isDescendantOfView:v12];

        v6 |= v9;
      }

      v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v13 = objc_loadWeakRetained((a1 + 40));
  v14 = [v13 playbackControlsView];
  [v14 setNeedsLayout];

  if (v6)
  {
    v15 = objc_loadWeakRetained((a1 + 40));
    v16 = [v15 playbackControlsView];
    v17 = [v16 transportControlsView];
    [v17 setNeedsLayout];
  }
}

- (void)_bindEnabledStateOfControls:(id)controls toKeyPath:(id)path usingObservationController:(id)controller
{
  controlsCopy = controls;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __110__AVCatalystGlassPlaybackControlsController__bindEnabledStateOfControls_toKeyPath_usingObservationController___block_invoke;
  v10[3] = &unk_1E7208E90;
  v11 = controlsCopy;
  v9 = controlsCopy;
  [(AVCatalystGlassPlaybackControlsController *)self _observeBoolForKeyPath:path usingKeyValueObservationController:controller observationHandler:v10];
}

void __110__AVCatalystGlassPlaybackControlsController__bindEnabledStateOfControls_toKeyPath_usingObservationController___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) setEnabled:{a2, v8}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)startContentTransitionButtonTouchUpInside:(id)inside
{
  insideCopy = inside;
  playbackControlsView = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  effectiveUserInterfaceLayoutDirection = [playbackControlsView effectiveUserInterfaceLayoutDirection];

  playbackControlsView2 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  startLeftwardContentTransitionButton = [playbackControlsView2 startLeftwardContentTransitionButton];

  if (startLeftwardContentTransitionButton == insideCopy)
  {
    if (effectiveUserInterfaceLayoutDirection)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }
  }

  else
  {
    playbackControlsView3 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    startRightwardContentTransitionButton = [playbackControlsView3 startRightwardContentTransitionButton];

    v10 = 1;
    if (effectiveUserInterfaceLayoutDirection)
    {
      v10 = 2;
    }

    if (startRightwardContentTransitionButton == insideCopy)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  contentTransitionAction = [(AVCatalystGlassPlaybackControlsController *)self contentTransitionAction];

  if (contentTransitionAction)
  {
    contentTransitionAction2 = [(AVCatalystGlassPlaybackControlsController *)self contentTransitionAction];
    contentTransitionAction2[2](contentTransitionAction2, v11);
  }
}

- (void)skipButtonForcePressChanged:(id)changed
{
  changedCopy = changed;
  [changedCopy maximumForceSinceTrackingBegan];
  v5 = v4;
  [changedCopy forceThreshold];
  if (v5 >= v6)
  {
    playbackControlsView = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    skipForwardButton = [playbackControlsView skipForwardButton];

    playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
    [changedCopy force];
    if (skipForwardButton != changedCopy)
    {
      v10 = -v10;
    }

    [playerController setRateWithForce:v10];
  }
}

- (void)skipButtonLongPressEnded:(id)ended
{
  endedCopy = ended;
  playbackControlsView = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  skipBackButton = [playbackControlsView skipBackButton];

  if (skipBackButton == endedCopy)
  {
    playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
    [playerController endScanningBackward:endedCopy];
  }

  else
  {
    playbackControlsView2 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    skipForwardButton = [playbackControlsView2 skipForwardButton];

    v8 = endedCopy;
    if (skipForwardButton != endedCopy)
    {
      goto LABEL_6;
    }

    playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
    [playerController endScanningForward:endedCopy];
  }

  v8 = endedCopy;
LABEL_6:
}

- (void)skipButtonLongPressTriggered:(id)triggered
{
  triggeredCopy = triggered;
  playbackControlsView = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  skipBackButton = [playbackControlsView skipBackButton];

  if (skipBackButton == triggeredCopy)
  {
    playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
    [playerController beginScanningBackward:triggeredCopy];
  }

  else
  {
    playbackControlsView2 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    skipForwardButton = [playbackControlsView2 skipForwardButton];

    v8 = triggeredCopy;
    if (skipForwardButton != triggeredCopy)
    {
      goto LABEL_6;
    }

    playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
    [playerController beginScanningForward:triggeredCopy];
  }

  v8 = triggeredCopy;
LABEL_6:
}

- (void)skipButtonTouchUpInside:(id)inside
{
  insideCopy = inside;
  if (([insideCopy wasLongPressed] & 1) == 0)
  {
    [insideCopy maximumForceSinceTrackingBegan];
    v5 = v4;
    [insideCopy forceThreshold];
    if (v5 < v6)
    {
      playbackControlsView = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
      skipForwardButton = [playbackControlsView skipForwardButton];
      if (skipForwardButton == insideCopy)
      {
        playbackControlsView2 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
        transportControlsView = [playbackControlsView2 transportControlsView];
        liveStreamingControlsIncludeScrubber = [transportControlsView liveStreamingControlsIncludeScrubber];

        if (liveStreamingControlsIncludeScrubber)
        {
          playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
          [playerController gotoEndOfSeekableRanges:insideCopy];

          goto LABEL_10;
        }
      }

      else
      {
      }

      playbackControlsView3 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
      skipForwardButton2 = [playbackControlsView3 skipForwardButton];

      v15 = -15.0;
      if (skipForwardButton2 == insideCopy)
      {
        v15 = 15.0;
      }

      [(AVCatalystGlassPlaybackControlsController *)self _seekByTimeInterval:v15 toleranceBefore:0.5 toleranceAfter:0.5];
    }
  }

LABEL_10:
}

- (void)prominentPlayButtonTouchUpInside:(id)inside
{
  insideCopy = inside;
  playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  if ([playerController canTogglePlayback])
  {
    playerController2 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
    isPlaying = [playerController2 isPlaying];

    if ((isPlaying & 1) == 0)
    {
      playerViewController = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
      [playerViewController togglePlayback:insideCopy];

      [(AVCatalystGlassPlaybackControlsController *)self _updateHasPlaybackBegunSincePlayerControllerBecameReadyToPlay:1 playing:1 userDidEndTappingProminentPlayButton:1];
      goto LABEL_9;
    }
  }

  else
  {
  }

  if ([(AVCatalystGlassPlaybackControlsController *)self isFullScreen])
  {
    goto LABEL_8;
  }

  playerController3 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  if ([playerController3 status])
  {

LABEL_8:
    playerController4 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
    v10 = [playerController4 status] == 2;
    playerController5 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
    -[AVCatalystGlassPlaybackControlsController _updateHasPlaybackBegunSincePlayerControllerBecameReadyToPlay:playing:userDidEndTappingProminentPlayButton:](self, "_updateHasPlaybackBegunSincePlayerControllerBecameReadyToPlay:playing:userDidEndTappingProminentPlayButton:", v10, [playerController5 isPlaying], 1);

    goto LABEL_9;
  }

  playButtonHandlerForLazyPlayerLoading = [(AVCatalystGlassPlaybackControlsController *)self playButtonHandlerForLazyPlayerLoading];

  if (!playButtonHandlerForLazyPlayerLoading)
  {
    goto LABEL_8;
  }

  [(AVCatalystGlassPlaybackControlsController *)self startUpdatesIfNeeded];
  playButtonHandlerForLazyPlayerLoading2 = [(AVCatalystGlassPlaybackControlsController *)self playButtonHandlerForLazyPlayerLoading];
  playButtonHandlerForLazyPlayerLoading2[2]();

LABEL_9:
}

- (void)playbackSpeedButtonTapped:(id)tapped
{
  playbackSpeedCollection = [(AVCatalystGlassPlaybackControlsController *)self playbackSpeedCollection];
  [playbackSpeedCollection selectNextPlaybackSpeed:self];
}

- (id)overflowMenuItemsForControlOverflowButton:(id)button
{
  buttonCopy = button;
  array = [MEMORY[0x1E695DF70] array];
  playbackControlsView = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  mediaSelectionButton = [playbackControlsView mediaSelectionButton];
  if ([mediaSelectionButton isIncluded])
  {
    playbackControlsView2 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    mediaSelectionButton2 = [playbackControlsView2 mediaSelectionButton];
    isCollapsed = [mediaSelectionButton2 isCollapsed];

    if (!isCollapsed)
    {
      goto LABEL_12;
    }

    playbackControlsView = [(AVCatalystGlassPlaybackControlsController *)self playerController];
    mediaSelectionButton = [playbackControlsView audioMediaSelectionOptions];
    legibleMediaSelectionOptions = [playbackControlsView legibleMediaSelectionOptions];
    mediaSelectionMenuController = self->_mediaSelectionMenuController;
    if (mediaSelectionMenuController)
    {
      [(AVMediaSelectionMenuController *)mediaSelectionMenuController setAudibleOptions:mediaSelectionButton];
      [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController setLegibleOptions:legibleMediaSelectionOptions];
    }

    else
    {
      v13 = [[AVMediaSelectionMenuController alloc] initWithAudibleOptions:mediaSelectionButton legibleOptions:legibleMediaSelectionOptions];
      v14 = self->_mediaSelectionMenuController;
      self->_mediaSelectionMenuController = v13;

      [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController setDelegate:self];
    }

    audioMediaSelectionOptions = [playbackControlsView audioMediaSelectionOptions];
    currentAudioMediaSelectionOption = [playbackControlsView currentAudioMediaSelectionOption];
    v17 = [audioMediaSelectionOptions indexOfObject:currentAudioMediaSelectionOption];

    legibleMediaSelectionOptions2 = [playbackControlsView legibleMediaSelectionOptions];
    currentLegibleMediaSelectionOption = [playbackControlsView currentLegibleMediaSelectionOption];
    v20 = [legibleMediaSelectionOptions2 indexOfObject:currentLegibleMediaSelectionOption];

    [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController setCurrentAudibleOptionIndex:v17];
    [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController setCurrentLegibleOptionIndex:v20];
    audibleOptionsMenu = [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController audibleOptionsMenu];

    if (audibleOptionsMenu)
    {
      audibleOptionsMenu2 = [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController audibleOptionsMenu];
      [array addObject:audibleOptionsMenu2];
    }

    legibleOptionsMenu = [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController legibleOptionsMenu];

    if (legibleOptionsMenu)
    {
      legibleOptionsMenu2 = [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController legibleOptionsMenu];
      [array addObject:legibleOptionsMenu2];
    }
  }

LABEL_12:
  playbackControlsView3 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  playbackSpeedButton = [playbackControlsView3 playbackSpeedButton];
  if (([playbackSpeedButton isIncluded] & 1) == 0)
  {

    goto LABEL_16;
  }

  playbackControlsView4 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  playbackSpeedButton2 = [playbackControlsView4 playbackSpeedButton];
  isCollapsed2 = [playbackSpeedButton2 isCollapsed];

  if (isCollapsed2)
  {
    playbackRateMenuController = [(AVCatalystGlassPlaybackControlsController *)self playbackRateMenuController];
    playbackControlsView3 = [playbackRateMenuController menu];

    [array addObject:playbackControlsView3];
LABEL_16:
  }

  if (self && [(AVCatalystGlassPlaybackControlsController *)self showsVideoZoomControl]&& [(AVCatalystGlassPlaybackControlsController *)self hasBecomeReadyToPlay]&& [(AVCatalystGlassPlaybackControlsController *)self isFullScreen])
  {
    v31 = MEMORY[0x1E69DCAB8];
    videoGravityType = [(AVCatalystGlassPlaybackControlsController *)self videoGravityType];
    if (videoGravityType > 4)
    {
      v33 = 0;
    }

    else
    {
      v33 = *off_1E7208E18[videoGravityType];
    }

    v34 = [v31 systemImageNamed:v33];

    objc_initWeak(&location, self);
    v35 = MEMORY[0x1E69DC628];
    v36 = AVLocalizedString(@"OVERFLOW_MENU_CATALYST_ZOOM_MENU_ITEM");
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __87__AVCatalystGlassPlaybackControlsController_overflowMenuItemsForControlOverflowButton___block_invoke;
    v61[3] = &unk_1E7209230;
    objc_copyWeak(&v62, &location);
    v37 = [v35 actionWithTitle:v36 image:v34 identifier:&stru_1EFED57D8 handler:v61];

    [array addObject:v37];
    objc_destroyWeak(&v62);
    objc_destroyWeak(&location);
  }

  if ([(AVCatalystGlassPlaybackControlsController *)self showsShowTextControl])
  {
    objc_initWeak(&location, self);
    v38 = MEMORY[0x1E69DC628];
    v39 = AVLocalizedString(@"OVERFLOW_MENU_LIVE_TEXT_TITLE");
    v40 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"text.viewfinder"];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __87__AVCatalystGlassPlaybackControlsController_overflowMenuItemsForControlOverflowButton___block_invoke_2;
    v59[3] = &unk_1E7209230;
    objc_copyWeak(&v60, &location);
    v41 = [v38 actionWithTitle:v39 image:v40 identifier:0 handler:v59];

    [array addObject:v41];
    objc_destroyWeak(&v60);
    objc_destroyWeak(&location);
  }

  if (self->_transportBarCustomMenuItems)
  {
    playbackControlsView5 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    transportControlsView = [playbackControlsView5 transportControlsView];
    customMenuItemsViews = [transportControlsView customMenuItemsViews];

    v45 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_244];
    v46 = [customMenuItemsViews filteredArrayUsingPredicate:v45];

    v47 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    transportBarCustomMenuItems = self->_transportBarCustomMenuItems;
    v49 = MEMORY[0x1E696AE18];
    v54 = MEMORY[0x1E69E9820];
    v55 = 3221225472;
    v56 = __87__AVCatalystGlassPlaybackControlsController_overflowMenuItemsForControlOverflowButton___block_invoke_4;
    v57 = &unk_1E7208CA8;
    v58 = v46;
    v50 = v46;
    v51 = [v49 predicateWithBlock:&v54];
    v52 = [(NSArray *)transportBarCustomMenuItems filteredArrayUsingPredicate:v51, v54, v55, v56, v57];

    [array addObjectsFromArray:v52];
  }

  return array;
}

void __87__AVCatalystGlassPlaybackControlsController_overflowMenuItemsForControlOverflowButton___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained playerViewController];
    [v2 videoGravityButtonTapped:0];

    WeakRetained = v3;
  }
}

void __87__AVCatalystGlassPlaybackControlsController_overflowMenuItemsForControlOverflowButton___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained playerViewController];
    [v2 showTextButtonToggled:0];

    WeakRetained = v3;
  }
}

BOOL __87__AVCatalystGlassPlaybackControlsController_overflowMenuItemsForControlOverflowButton___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v17 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }
        }

        v13 = [v5 identifier];
        v14 = [v12 menuElementIdentifier];

        if (v13 == v14)
        {
          v15 = v5;

          v9 = v15;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9 != 0;
}

uint64_t __87__AVCatalystGlassPlaybackControlsController_overflowMenuItemsForControlOverflowButton___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v6;
  if (v6 && [v6 isIncluded])
  {
    v8 = [v7 isCollapsed];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)shouldApplyLegibleMediaSelectionCriteriaAutomaticallyForMediaSelectionMenuController:(id)controller
{
  playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  closedCaptionsEnabled = [playerController closedCaptionsEnabled];

  return closedCaptionsEnabled;
}

- (void)mediaSelectionMenuController:(id)controller didSelectOption:(id)option
{
  optionCopy = option;
  audibleOptions = [controller audibleOptions];
  v7 = [audibleOptions containsObject:optionCopy];

  playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  v9 = playerController;
  if (v7)
  {
    [playerController setCurrentAudioMediaSelectionOption:optionCopy];
  }

  else
  {
    [playerController setCurrentLegibleMediaSelectionOption:optionCopy];
  }
}

- (void)_updateVolumeSliderValueWithSystemVolume:(float)volume animated:(BOOL)animated
{
  animatedCopy = animated;
  volumeCopy = 0.0;
  if (![(AVCatalystGlassPlaybackControlsController *)self prefersMuted])
  {
    volumeController = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
    currentRouteHasVolumeControl = [volumeController currentRouteHasVolumeControl];

    if (currentRouteHasVolumeControl)
    {
      volumeCopy = volume;
    }

    else
    {
      volumeCopy = 1.0;
    }
  }

  playbackControlsView = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  volumeSlider = [playbackControlsView volumeSlider];
  *&v11 = volumeCopy;
  [volumeSlider setValue:animatedCopy animated:v11];
}

- (id)_volumeButtonMicaPackageState
{
  if ([(AVCatalystGlassPlaybackControlsController *)self prefersMuted])
  {
    goto LABEL_2;
  }

  volumeController = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
  currentRouteHasVolumeControl = [volumeController currentRouteHasVolumeControl];

  v4 = &AVVolumeGlyphStateNameMax;
  if (!currentRouteHasVolumeControl)
  {
    goto LABEL_20;
  }

  playbackControlsView = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  if (!playbackControlsView || [(AVCatalystGlassPlaybackControlsController *)self isResumingUpdates])
  {
    v8 = 0;
    goto LABEL_7;
  }

  currentRouteHasVolumeControl = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  volumeSlider = [currentRouteHasVolumeControl volumeSlider];
  if ([volumeSlider isHiddenOrHasHiddenAncestor])
  {
    v8 = 1;
LABEL_7:
    volumeController2 = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
    [volumeController2 volume];
    v11 = v10;

    if (!v8)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  playbackControlsView2 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  volumeSlider2 = [playbackControlsView2 volumeSlider];
  [volumeSlider2 value];
  v11 = v14;

LABEL_12:
LABEL_13:

  if (v11 <= 0.0)
  {
LABEL_2:
    v4 = AVVolumeGlyphStateNameMuted;
    goto LABEL_20;
  }

  v15 = v11;
  if (v11 >= 0.33)
  {
    if (v15 >= 0.66)
    {
      if (v15 < 0.95)
      {
        v4 = AVVolumeGlyphStateNameHigh;
      }
    }

    else
    {
      v4 = AVVolumeGlyphStateNameMedium;
    }
  }

  else
  {
    v4 = AVVolumeGlyphStateNameLow;
  }

LABEL_20:
  v16 = *v4;

  return v16;
}

- (void)_updateVolumeButtonGlyph
{
  _volumeButtonMicaPackageState = [(AVCatalystGlassPlaybackControlsController *)self _volumeButtonMicaPackageState];
  playbackControlsView = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  volumeButton = [playbackControlsView volumeButton];
  [volumeButton setMicaPackageStateName:_volumeButtonMicaPackageState];

  turboModePlaybackControlsPlaceholderView = [(AVCatalystGlassPlaybackControlsController *)self turboModePlaybackControlsPlaceholderView];
  [turboModePlaybackControlsPlaceholderView setVolumeButtonMicaPackageStateName:_volumeButtonMicaPackageState];
}

- (void)_showOrHideDisplayModeControls
{
  if (-[AVCatalystGlassPlaybackControlsController playbackControlsIncludeDisplayModeControls](self, "playbackControlsIncludeDisplayModeControls") || (-[AVCatalystGlassPlaybackControlsController playbackControlsView](self, "playbackControlsView"), v3 = objc_claimAutoreleasedReturnValue(), [v3 customDisplayModeItems], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v3, !v5))
  {
    v7 = ![(AVCatalystGlassPlaybackControlsController *)self isFullScreen]&& [(AVCatalystGlassPlaybackControlsController *)self allowsEnteringFullScreen];
    if ([(AVCatalystGlassPlaybackControlsController *)self showsDoneButtonWhenFullScreen])
    {
      isFullScreen = [(AVCatalystGlassPlaybackControlsController *)self isFullScreen];
    }

    else
    {
      isFullScreen = 0;
    }

    showsPictureInPictureButton = [(AVCatalystGlassPlaybackControlsController *)self showsPictureInPictureButton];
  }

  else
  {
    isFullScreen = 0;
    v7 = 0;
    showsPictureInPictureButton = 0;
  }

  playbackControlsView = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  fullScreenButton = [playbackControlsView fullScreenButton];
  if (v7 != [fullScreenButton isIncluded])
  {
    goto LABEL_16;
  }

  playbackControlsView2 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  doneButton = [playbackControlsView2 doneButton];
  if (isFullScreen != [doneButton isIncluded])
  {
LABEL_15:

LABEL_16:
    goto LABEL_17;
  }

  HIDWORD(v28) = isFullScreen;
  [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  v14 = v13 = showsPictureInPictureButton;
  pictureInPictureButton = [v14 pictureInPictureButton];
  v29 = v13;
  if (v13 != [pictureInPictureButton isIncluded])
  {

    isFullScreen = HIDWORD(v28);
    showsPictureInPictureButton = v13;
    goto LABEL_15;
  }

  playbackControlsView3 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  routePickerView = [playbackControlsView3 routePickerView];
  LODWORD(v28) = [routePickerView isIncluded];

  isFullScreen = HIDWORD(v28);
  showsPictureInPictureButton = v29;
  if (v28)
  {
    return;
  }

LABEL_17:
  playbackControlsView4 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];

  if (!playbackControlsView4)
  {
    return;
  }

  array = [MEMORY[0x1E695DF70] array];
  if (!v7)
  {
    if (!isFullScreen)
    {
      goto LABEL_20;
    }

LABEL_26:
    playbackControlsView5 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    doneButton2 = [playbackControlsView5 doneButton];
    [array addObject:doneButton2];

    if (!showsPictureInPictureButton)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  playbackControlsView6 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  fullScreenButton2 = [playbackControlsView6 fullScreenButton];
  [array addObject:fullScreenButton2];

  if (isFullScreen)
  {
    goto LABEL_26;
  }

LABEL_20:
  if (showsPictureInPictureButton)
  {
LABEL_21:
    playbackControlsView7 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    pictureInPictureButton2 = [playbackControlsView7 pictureInPictureButton];
    [array addObject:pictureInPictureButton2];
  }

LABEL_22:
  playbackControlsView8 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  routePickerView2 = [playbackControlsView8 routePickerView];
  [array addObject:routePickerView2];

  playbackControlsView9 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  [playbackControlsView9 updateDisplayControlsVisibilityIncludedButtons:array];
}

- (void)updateVolumeSliderValue:(id)value volumeButtonControl:(id)control
{
  valueCopy = value;
  controlCopy = control;
  [valueCopy frame];
  Width = CGRectGetWidth(v32);
  if (Width > 0.0)
  {
    v8 = Width;
    volumeController = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
    currentRouteHasVolumeControl = [volumeController currentRouteHasVolumeControl];

    if (currentRouteHasVolumeControl)
    {
      [valueCopy value];
      v12 = v11;
      [controlCopy translationOfPanFromPreviousTouch];
      v14 = v13 / v8;
      window = [controlCopy window];
      [window bounds];
      MaxX = CGRectGetMaxX(v33);
      [controlCopy locationOfTouchInWindow];
      v18 = v17;

      if ([controlCopy effectiveUserInterfaceLayoutDirection] == 1)
      {
        [controlCopy locationOfTouchInWindow];
        v21 = v20;
        window2 = [controlCopy window];
        [window2 bounds];
        v23 = v21 - CGRectGetMinX(v34);

        v14 = -v14;
      }

      else
      {
        v23 = MaxX - v18;
      }

      if (v14 > 0.0 && v23 > 0.0)
      {
        v24 = v8 * (1.0 - v12) / v23;
        v25 = 1.0;
        v26 = v24 < 1.0;
        v27 = v24 < 3.0 || v24 < 1.0;
        if (v24 >= 3.0)
        {
          v26 = 1;
        }

        if (!v27)
        {
          v25 = 3.0;
        }

        if (v26)
        {
          v24 = v25;
        }

        v19 = v24 * v14;
        v14 = v19;
      }

      *&v19 = v12 + v14;
      if ((v12 + v14) < 0.0)
      {
        *&v19 = 0.0;
      }

      v28 = fminf(*&v19, 1.0);
      *&v19 = v28;
      [valueCopy setValue:v19];
      if (v12 != v28 && (v28 == 0.0 || v28 == 1.0))
      {
        [controlCopy triggerSelectionChangedFeedback];
      }

      [(AVCatalystGlassPlaybackControlsController *)self volumeSliderValueDidChange:valueCopy];
    }
  }
}

- (void)volumeButtonPanChanged:(id)changed
{
  changedCopy = changed;
  [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:1];
  [(AVCatalystGlassPlaybackControlsController *)self setPrefersMuted:0];
  playbackControlsView = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  volumeSlider = [playbackControlsView volumeSlider];
  [(AVCatalystGlassPlaybackControlsController *)self updateVolumeSliderValue:volumeSlider volumeButtonControl:changedCopy];
}

- (void)endChangingVolume
{
  volumeController = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
  [volumeController endChangingVolume];
}

- (void)beginChangingVolume
{
  volumeController = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
  [volumeController beginChangingVolume];
}

- (void)volumeButtonTapTriggered:(id)triggered
{
  triggeredCopy = triggered;
  playerViewController = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  [playerViewController toggleMuted:triggeredCopy];

  turboModePlaybackControlsPlaceholderView = [(AVCatalystGlassPlaybackControlsController *)self turboModePlaybackControlsPlaceholderView];

  if (turboModePlaybackControlsPlaceholderView)
  {

    [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeButtonGlyph];
  }
}

- (void)volumeSliderValueDidChange:(id)change
{
  changeCopy = change;
  [(AVCatalystGlassPlaybackControlsController *)self beginChangingVolume];
  volumeController = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
  [changeCopy value];
  v7 = v6;

  LODWORD(v8) = v7;
  [volumeController setTargetVolume:v8];

  [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeButtonGlyph];
}

- (void)handleCurrentRouteSupportsVolumeControlChanged:(id)changed
{
  playbackControlsView = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  volumeSlider = [playbackControlsView volumeSlider];
  volumeController = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
  [volumeSlider setEnabled:{objc_msgSend(volumeController, "currentRouteHasVolumeControl")}];

  volumeController2 = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
  LOBYTE(volumeSlider) = [volumeController2 currentRouteHasVolumeControl];

  if ((volumeSlider & 1) == 0)
  {
    volumeController3 = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
    -[AVCatalystGlassPlaybackControlsController _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:](self, "_updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:", [volumeController3 currentRouteHasVolumeControl]);
  }

  volumeController4 = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
  [volumeController4 volume];
  [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeSliderValueWithSystemVolume:0 animated:?];
}

- (void)handleVolumeChange:(id)change
{
  changeCopy = change;
  playbackControlsView = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  volumeSlider = [playbackControlsView volumeSlider];
  volumeController = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
  [volumeSlider setEnabled:{objc_msgSend(volumeController, "currentRouteHasVolumeControl")}];

  volumeController2 = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
  [volumeController2 volume];
  v10 = v9;

  playbackControlsView2 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  volumeSlider2 = [playbackControlsView2 volumeSlider];
  if ([volumeSlider2 isTracking])
  {
  }

  else
  {
    playbackControlsView3 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    volumeButton = [playbackControlsView3 volumeButton];
    isTracking = [volumeButton isTracking];

    if ((isTracking & 1) == 0)
    {
      LODWORD(v16) = v10;
      [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeSliderValueWithSystemVolume:0 animated:v16];
    }
  }

  [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeButtonGlyph];
  userInfo = [changeCopy userInfo];

  v18 = [userInfo objectForKeyedSubscript:@"AVVolumeControllerVolumeDidChangeNotificationIsInitialValueKey"];
  bOOLValue = [v18 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    if (-[AVCatalystGlassPlaybackControlsController isFullScreen](self, "isFullScreen") || (-[AVCatalystGlassPlaybackControlsController volumeController](self, "volumeController"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 isChangingVolume], v20, v21))
    {
      [(AVCatalystGlassPlaybackControlsController *)self setPrefersMuted:0];
      playerViewController = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
      isBeingPresented = [playerViewController isBeingPresented];

      if ((isBeingPresented & 1) == 0)
      {

        [(AVCatalystGlassPlaybackControlsController *)self flashVolumeControlsWithDuration:2.0];
      }
    }
  }
}

- (void)endScrubbing
{
  playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  [playerController endScrubbing:self];

  [(AVCatalystGlassPlaybackControlsController *)self setPlaybackSuspendedForScrubbing:0];
  [(AVCatalystGlassPlaybackControlsController *)self _updateOrCreateTimeResolverIfNeeded];

  [(AVCatalystGlassPlaybackControlsController *)self setShouldIgnoreTimeResolverUpdates:0];
}

- (void)scrubToTime:(double)time resolution:(double)resolution
{
  playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  if ([playerController hasSeekableLiveStreamingContent])
  {
    timeResolver = [(AVCatalystGlassPlaybackControlsController *)self timeResolver];
    [timeResolver seekableTimeRangeDuration];
  }

  else
  {
    timeResolver = [(AVCatalystGlassPlaybackControlsController *)self playerController];
    [timeResolver contentDuration];
  }

  v10 = v9;

  timeResolver2 = [(AVCatalystGlassPlaybackControlsController *)self timeResolver];
  [timeResolver2 targetTime];
  v13 = v12;

  v14 = v10 / resolution;
  v15 = 0.0;
  if (resolution > 0.0)
  {
    v15 = v14;
  }

  if (vabdd_f64(time, v13) > v15)
  {
    if (resolution > 0.0 && ([(AVCatalystGlassPlaybackControlsController *)self playerController], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_opt_respondsToSelector(), v16, (v17 & 1) != 0))
    {
      v18 = time - v13;
      v19 = v14 * 10.0;
      if (v14 * 10.0 > 15.0)
      {
        v19 = 15.0;
      }

      v20 = v18 * 0.5;
      v21 = v18 * 0.5 <= 0.0;
      if (v18 * 0.5 < 0.0)
      {
        v20 = 0.0;
      }

      v22 = -(v18 * 0.5);
      if (!v21)
      {
        v22 = -0.0;
      }

      if (v20 >= v19)
      {
        v23 = v19;
      }

      else
      {
        v23 = v20;
      }

      if (v19 <= v22)
      {
        v24 = v19;
      }

      else
      {
        v24 = v22;
      }

      playerController2 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
      [playerController2 seekToTime:time toleranceBefore:v23 toleranceAfter:v24];
    }

    else
    {
      playerController2 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
      [playerController2 seekToTime:time];
    }
  }

  [(AVCatalystGlassPlaybackControlsController *)self _updateScrubberAndTimeLabels];
}

- (void)beginScrubbing
{
  [(AVCatalystGlassPlaybackControlsController *)self setShouldIgnoreTimeResolverUpdates:1];
  [(AVCatalystGlassPlaybackControlsController *)self setPlaybackSuspendedForScrubbing:[(AVCatalystGlassPlaybackControlsController *)self playButtonsShowPauseGlyph]];
  playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  [playerController beginScrubbing:self];

  [(AVCatalystGlassPlaybackControlsController *)self _updateOrCreateTimeResolverIfNeeded];
}

- (void)transportControls:(id)controls scrubberDidEndScrubbing:(id)scrubbing
{
  scrubbingCopy = scrubbing;
  playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  [playerController endScrubbing:scrubbingCopy];

  [(AVCatalystGlassPlaybackControlsController *)self setPlaybackSuspendedForScrubbing:0];
  [(AVCatalystGlassPlaybackControlsController *)self _updateOrCreateTimeResolverIfNeeded];

  [(AVCatalystGlassPlaybackControlsController *)self setShouldIgnoreTimeResolverUpdates:0];
}

- (void)transportControls:(id)controls scrubberDidScrub:(id)scrub
{
  scrubCopy = scrub;
  [scrubCopy value];
  v6 = v5;
  if ([scrubCopy isTracking])
  {
    [scrubCopy resolution];
    v8 = v7;
    playbackControlsView = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    traitCollection = [playbackControlsView traitCollection];
    [traitCollection displayScale];
    [(AVCatalystGlassPlaybackControlsController *)self scrubToTime:v6 resolution:v8 * v11];
  }

  else
  {
    [(AVCatalystGlassPlaybackControlsController *)self scrubToTime:v6 resolution:0.0];
  }
}

- (void)transportControls:(id)controls scrubberDidBeginScrubbing:(id)scrubbing
{
  scrubbingCopy = scrubbing;
  [(AVCatalystGlassPlaybackControlsController *)self beginScrubbing];
  playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  [playerController nominalFrameRate];
  [scrubbingCopy setEstimatedFrameRate:?];
}

- (void)transportControlsNeedsLayoutIfNeeded:(id)needed
{
  playbackControlsView = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  [playbackControlsView setNeedsLayout];

  playbackControlsView2 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  [playbackControlsView2 layoutIfNeeded];
}

- (void)playerViewControllerContentViewDidChangeSize:(id)size
{
  if (self)
  {
    playbackControlsView = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    controlOverflowButton = [playbackControlsView controlOverflowButton];
    contextMenuInteraction = [controlOverflowButton contextMenuInteraction];
    [contextMenuInteraction dismissMenu];
  }
}

- (CGSize)playerViewControllerContentViewContentDimensions:(id)dimensions
{
  playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  [playerController contentDimensions];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)playerViewControllerContentViewDidUpdateScrollingStatus:(id)status
{
  playerViewController = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  [playerViewController performInitialSetupIfNeededAndPossible];
}

- (id)playerViewControllerContentViewOverrideLayoutClass:(id)class
{
  playerViewController = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  presentationContext = [playerViewController presentationContext];

  if ([presentationContext hasActiveTransition])
  {
    sourceView = [presentationContext sourceView];

    currentTransition = [presentationContext currentTransition];
    initialInterfaceOrientation = [currentTransition initialInterfaceOrientation];

    currentTransition2 = [presentationContext currentTransition];
    finalInterfaceOrientation = [currentTransition2 finalInterfaceOrientation];

    isPresenting = [presentationContext isPresenting];
    isDismissing = [presentationContext isDismissing];
    presentedViewController = [presentationContext presentedViewController];
    transitionCoordinator = [presentedViewController transitionCoordinator];
    isCancelled = [transitionCoordinator isCancelled];

    presentedViewController2 = [presentationContext presentedViewController];
    transitionCoordinator2 = [presentedViewController2 transitionCoordinator];
    isInteractive = [transitionCoordinator2 isInteractive];

    if ((isCancelled | isInteractive))
    {
      v18 = isPresenting;
    }

    else
    {
      v18 = isDismissing;
    }

    if (!sourceView)
    {
      v18 = 0;
    }

    if (v18)
    {
      v19 = &unk_1EFF129E0;
    }

    else
    {
      if ((isCancelled | isInteractive))
      {
        v20 = initialInterfaceOrientation;
      }

      else
      {
        v20 = finalInterfaceOrientation;
      }

      if ((v20 - 1) >= 2)
      {
        v21 = &unk_1EFF12A10;
      }

      else
      {
        v21 = &unk_1EFF129F8;
      }

      v19 = v21;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)playerViewControllerContentViewIsBeingTransitionedFromFullScreen:(id)screen
{
  playerViewController = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  fullScreenViewController = [playerViewController fullScreenViewController];
  v6 = fullScreenViewController;
  if (fullScreenViewController)
  {
    playerViewController2 = fullScreenViewController;
  }

  else
  {
    playerViewController2 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  }

  v8 = playerViewController2;

  isBeingDismissed = [v8 isBeingDismissed];
  return isBeingDismissed;
}

- (BOOL)playerViewControllerContentViewHasActiveTransition:(id)transition
{
  playerViewController = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  hasActiveTransition = [playerViewController hasActiveTransition];

  return hasActiveTransition;
}

- (void)playerViewControllerContentViewDidChangeVideoGravity:(id)gravity
{
  playerViewController = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  videoGravity = [playerViewController videoGravity];

  if (videoGravity)
  {
    playerViewController2 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
    videoGravity2 = [playerViewController2 videoGravity];
    -[AVCatalystGlassPlaybackControlsController setVideoScaled:](self, "setVideoScaled:", [videoGravity2 isEqualToString:*MEMORY[0x1E69874E8]] ^ 1);
  }

  [(AVCatalystGlassPlaybackControlsController *)self _updateVideoGravityType];
}

- (BOOL)playerViewControllerContentViewShouldApplyAutomaticVideoGravity:(id)gravity
{
  gravityCopy = gravity;
  if (![gravityCopy canAutomaticallyZoomLetterboxVideos] || !objc_msgSend(gravityCopy, "isCoveringWindow") || (objc_msgSend(gravityCopy, "traitCollection"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "displayCornerRadius"), v7 = v6, v5, v7 <= 0.0) || ((-[AVCatalystGlassPlaybackControlsController playerController](self, "playerController"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "contentDimensions"), v10 = v9, v12 = v11, v8, v12 <= 0.0) ? (v13 = NAN) : (v13 = v10 / v12), (objc_msgSend(gravityCopy, "bounds"), v15 = v14, v17 = v16, v19 = v18, v21 = v20, objc_msgSend(gravityCopy, "edgeInsetsForLetterboxedContent"), v24 = v21 - (v22 + v23), v27 = v19 - (v25 + v26), v28 = v17 + v22, v29 = v15 + v25, v37.origin.x = v29, v37.origin.y = v28, v37.size.width = v27, v37.size.height = v24, CGRectIsEmpty(v37)) || (objc_msgSend(gravityCopy, "bounds"), CGRectIsEmpty(v38)) || (objc_msgSend(MEMORY[0x1E69DCEB0], "avkit_mainScreen"), v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "nativeBounds"), IsEmpty = CGRectIsEmpty(v39), v30, IsEmpty) || (objc_msgSend(gravityCopy, "bounds"), Width = CGRectGetWidth(v40), objc_msgSend(gravityCopy, "bounds"), Height = CGRectGetHeight(v41), v42.origin.x = v29, v42.origin.y = v28, v42.size.width = v27, v42.size.height = v24, CGRectGetMinY(v42) <= 0.0)))
  {
    v35 = 0;
  }

  else
  {
    v34 = v13 > 1.0;
    if (v13 < Width / Height)
    {
      v34 = 0;
    }

    v35 = v13 / (Width / Height) < 1.15 && v34;
  }

  return v35;
}

- (void)playerViewControllerContentViewDidLayoutSubviews:(id)subviews
{
  subviewsCopy = subviews;
  playbackControlsView = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  volumeButton = [playbackControlsView volumeButton];
  if ([volumeButton isTracking])
  {
    isTracking = 1;
  }

  else
  {
    volumeSlider = [playbackControlsView volumeSlider];
    isTracking = [volumeSlider isTracking];
  }

  _prefersVolumeSliderExpandedAutomatically = [(AVCatalystGlassPlaybackControlsController *)self _prefersVolumeSliderExpandedAutomatically];
  if ([subviewsCopy avkit_isDescendantOfNonPagingScrollView])
  {
    isCoveringWindow = 0;
  }

  else
  {
    isCoveringWindow = [subviewsCopy isCoveringWindow];
  }

  [(AVCatalystGlassPlaybackControlsController *)self setCoveringWindow:isCoveringWindow];
  [(AVCatalystGlassPlaybackControlsController *)self _updateOrCreateTimeResolverIfNeeded];
  [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:(_prefersVolumeSliderExpandedAutomatically | isTracking) & 1];
  playbackContentContainerView = [subviewsCopy playbackContentContainerView];
  [playbackContentContainerView frame];
  [(AVCatalystGlassPlaybackControlsController *)self setPlaybackViewFrame:?];

  pictureInPictureController = [(AVCatalystGlassPlaybackControlsController *)self pictureInPictureController];
  [pictureInPictureController contentSourceVideoRectInWindowChanged];

  [(AVCatalystGlassPlaybackControlsController *)self _updateRouteDetectionEnabled];
  [(AVCatalystGlassPlaybackControlsController *)self _updateVideoGravityType];
}

- (void)playerViewControllerContentViewDidMoveToSuperviewOrWindow:(id)window
{
  windowCopy = window;
  playerViewController = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  [playerViewController performInitialSetupIfNeededAndPossible];

  pictureInPictureController = [(AVCatalystGlassPlaybackControlsController *)self pictureInPictureController];
  [pictureInPictureController contentSourceVideoRectInWindowChanged];

  windowSceneSessionIdentifier = [(AVCatalystGlassPlaybackControlsController *)self windowSceneSessionIdentifier];
  window = [windowCopy window];
  windowScene = [window windowScene];
  session = [windowScene session];
  persistentIdentifier = [session persistentIdentifier];
  [(AVCatalystGlassPlaybackControlsController *)self setWindowSceneSessionIdentifier:persistentIdentifier];

  volumeController = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
  uniqueIdentifer = [(AVCatalystGlassPlaybackControlsController *)self uniqueIdentifer];
  [volumeController setClientWithIdentifier:uniqueIdentifer forWindowSceneSessionWithIdentifier:windowSceneSessionIdentifier];

  volumeController2 = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
  [volumeController2 setPrefersSystemVolumeHUDHidden:{-[AVCatalystGlassPlaybackControlsController isFullScreen](self, "isFullScreen")}];

  window2 = [windowCopy window];

  objc_opt_class();
  LOBYTE(windowCopy) = objc_opt_isKindOfClass();

  if (windowCopy)
  {
    v16 = _AVLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_18B49C000, v16, OS_LOG_TYPE_DEFAULT, "*** AVPlayerViewController cannot update status bar visibility while hosted in view service. ***", v17, 2u);
    }
  }

  [(AVCatalystGlassPlaybackControlsController *)self _updateRouteDetectionEnabled];
}

- (void)playerViewControllerContentViewPlaybackContentContainerViewChanged:(id)changed
{
  playerViewController = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  [playerViewController activeContentViewDidChange];
}

- (void)turboModePlaybackControlsPlaceholderViewDidLoad:(id)load
{
  loadCopy = load;
  [(AVCatalystGlassPlaybackControlsController *)self setTurboModePlaybackControlsPlaceholderView:loadCopy];
  [loadCopy setPreferredUnobscuredArea:{-[AVCatalystGlassPlaybackControlsController preferredUnobscuredArea](self, "preferredUnobscuredArea")}];
  playerViewController = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  v6 = playerViewController;
  if (playerViewController)
  {
    [playerViewController overrideTransformForProminentPlayButton];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  [loadCopy setOverrideTransformForProminentPlayButton:v10];

  playerViewController2 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  overrideLayoutMarginsWhenEmbeddedInline = [playerViewController2 overrideLayoutMarginsWhenEmbeddedInline];
  [loadCopy setOverrideLayoutMarginsWhenEmbeddedInline:overrideLayoutMarginsWhenEmbeddedInline];

  [loadCopy setHidden:{-[AVCatalystGlassPlaybackControlsController showsPlaybackControls](self, "showsPlaybackControls") ^ 1}];
  playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  [loadCopy setPlayerController:playerController];
}

- (void)playbackControlsViewDidLoad:(id)load
{
  v137 = *MEMORY[0x1E69E9840];
  loadCopy = load;
  [(AVCatalystGlassPlaybackControlsController *)self setResumingUpdates:1];
  [(AVCatalystGlassPlaybackControlsController *)self setPlaybackControlsView:loadCopy];
  if (!self->_showsPlaybackControls && ![(AVCatalystGlassPlaybackControlsController *)self isHidingItemsForTransition])
  {
    [(AVCatalystGlassPlaybackControlsController *)self beginHidingItemsForTransition];
  }

  turboModePlaybackControlsPlaceholderView = [(AVCatalystGlassPlaybackControlsController *)self turboModePlaybackControlsPlaceholderView];
  [turboModePlaybackControlsPlaceholderView removeFromSuperview];

  playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  -[AVCatalystGlassPlaybackControlsController _updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:](self, "_updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:", [playerController isPlaying]);

  v7 = objc_alloc_init(AVRouteDetectorCoordinator);
  routeDetectorCoordinator = self->_routeDetectorCoordinator;
  self->_routeDetectorCoordinator = v7;

  [(AVCatalystGlassPlaybackControlsController *)self startUpdatesIfNeeded];
  [loadCopy setFullScreen:{-[AVCatalystGlassPlaybackControlsController isFullScreen](self, "isFullScreen")}];
  playerViewController = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  contentView = [playerViewController contentView];
  playbackContentContainerView = [contentView playbackContentContainerView];
  [playbackContentContainerView frame];
  [(AVCatalystGlassPlaybackControlsController *)self setPlaybackViewFrame:?];

  [loadCopy setPreferredUnobscuredArea:{-[AVCatalystGlassPlaybackControlsController preferredUnobscuredArea](self, "preferredUnobscuredArea")}];
  visibilityBroadcaster = [(AVCatalystGlassPlaybackControlsController *)self visibilityBroadcaster];
  [loadCopy setVisibilityDelegate:visibilityBroadcaster];

  standardPlayPauseButton = [loadCopy standardPlayPauseButton];
  [standardPlayPauseButton setImageName:@"play.fill"];

  standardPlayPauseButton2 = [loadCopy standardPlayPauseButton];
  [standardPlayPauseButton2 setAlternateImageName:@"pause.fill"];

  standardPlayPauseButton3 = [loadCopy standardPlayPauseButton];
  v16 = *MEMORY[0x1E69DB970];
  v17 = [MEMORY[0x1E69DB878] avkit_nonScalingFontWithTextStyle:*MEMORY[0x1E69DDCF8] weight:*MEMORY[0x1E69DB970]];
  [standardPlayPauseButton3 setAlternateFullScreenFont:v17];

  standardPlayPauseButton4 = [loadCopy standardPlayPauseButton];
  [standardPlayPauseButton4 setFullscreenAlternateImagePadding:0.0];

  standardPlayPauseButton5 = [loadCopy standardPlayPauseButton];
  playerViewController2 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  traitCollection = [playerViewController2 traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  v23 = 0.5;
  if (userInterfaceIdiom == 5)
  {
    v23 = 0.0;
  }

  [standardPlayPauseButton5 setAlternateImagePadding:v23];

  prominentPlayButton = [loadCopy prominentPlayButton];
  [prominentPlayButton setImageName:@"play.fill"];

  prominentPlayButton2 = [loadCopy prominentPlayButton];
  v26 = [MEMORY[0x1E69DB878] avkit_nonScalingFontWithTextStyle:*MEMORY[0x1E69DDD58] weight:v16];
  [prominentPlayButton2 setInlineFont:v26];

  prominentPlayButton3 = [loadCopy prominentPlayButton];
  [prominentPlayButton3 setMultipleTouchesEndsTracking:1];

  skipBackButton = [loadCopy skipBackButton];
  [skipBackButton setImageName:@"gobackward.15"];

  skipForwardButton = [loadCopy skipForwardButton];
  [skipForwardButton setImageName:@"goforward.15"];

  startLeftwardContentTransitionButton = [loadCopy startLeftwardContentTransitionButton];
  [startLeftwardContentTransitionButton setImageName:@"backward.end.fill"];

  startRightwardContentTransitionButton = [loadCopy startRightwardContentTransitionButton];
  [startRightwardContentTransitionButton setImageName:@"forward.end.fill"];

  mediaSelectionButton = [loadCopy mediaSelectionButton];
  [mediaSelectionButton setImageName:@"captions.bubble"];

  pictureInPictureButton = [loadCopy pictureInPictureButton];
  [pictureInPictureButton setImageName:@"pip.enter"];

  fullScreenButton = [loadCopy fullScreenButton];
  [fullScreenButton setImageName:@"arrow.up.left.and.arrow.down.right"];

  doneButton = [loadCopy doneButton];
  [doneButton setImageName:@"xmark"];

  volumeButton = [loadCopy volumeButton];
  _volumeButtonMicaPackageState = [(AVCatalystGlassPlaybackControlsController *)self _volumeButtonMicaPackageState];
  [volumeButton setMicaPackageStateName:_volumeButtonMicaPackageState];

  routePickerView = [loadCopy routePickerView];
  [routePickerView setDelegate:self];

  controlOverflowButton = [loadCopy controlOverflowButton];
  [controlOverflowButton setDelegate:self];

  doneButton2 = [loadCopy doneButton];
  playerViewController3 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  [doneButton2 addTarget:playerViewController3 action:sel_doneButtonTapped_ forControlEvents:64];

  fullScreenButton2 = [loadCopy fullScreenButton];
  playerViewController4 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  [fullScreenButton2 addTarget:playerViewController4 action:sel_enterFullScreen_ forControlEvents:64];

  standardPlayPauseButton6 = [loadCopy standardPlayPauseButton];
  playerViewController5 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  [standardPlayPauseButton6 addTarget:playerViewController5 action:sel_togglePlayback_ forControlEvents:64];

  pictureInPictureButton2 = [loadCopy pictureInPictureButton];
  playerViewController6 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  [pictureInPictureButton2 addTarget:playerViewController6 action:sel_pictureInPictureButtonTapped_ forControlEvents:64];

  mediaSelectionButton2 = [loadCopy mediaSelectionButton];
  playerViewController7 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  [mediaSelectionButton2 addTarget:playerViewController7 action:sel_mediaSelectionButtonTapped_ forControlEvents:64];

  objc_initWeak(&location, self);
  v50 = MEMORY[0x1E69DC628];
  v128[0] = MEMORY[0x1E69E9820];
  v128[1] = 3221225472;
  v128[2] = __73__AVCatalystGlassPlaybackControlsController_playbackControlsViewDidLoad___block_invoke;
  v128[3] = &unk_1E7209230;
  objc_copyWeak(&v129, &location);
  v123 = [v50 actionWithHandler:v128];
  playbackControlsView = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  playbackSpeedButton = [playbackControlsView playbackSpeedButton];
  [playbackSpeedButton setImageName:@"speedometer"];

  playbackControlsView2 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  playbackSpeedButton2 = [playbackControlsView2 playbackSpeedButton];
  v55 = objc_loadWeakRetained(&location);
  playbackRateMenuController = [v55 playbackRateMenuController];
  menu = [playbackRateMenuController menu];
  [playbackSpeedButton2 setMenu:menu];

  playbackControlsView3 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  playbackSpeedButton3 = [playbackControlsView3 playbackSpeedButton];
  [playbackSpeedButton3 addAction:v123 forControlEvents:0x4000];

  playbackControlsView4 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  playbackSpeedButton4 = [playbackControlsView4 playbackSpeedButton];
  [playbackSpeedButton4 addTarget:self action:sel_playbackSpeedButtonTapped_ forControlEvents:64];

  skipBackButton2 = [loadCopy skipBackButton];
  [skipBackButton2 addTarget:self action:sel_skipButtonTouchUpInside_ forControlEvents:64];

  skipForwardButton2 = [loadCopy skipForwardButton];
  [skipForwardButton2 addTarget:self action:sel_skipButtonTouchUpInside_ forControlEvents:64];

  skipBackButton3 = [loadCopy skipBackButton];
  [skipBackButton3 addTarget:self action:sel_skipButtonLongPressTriggered_ forControlEvents:0x400000];

  skipForwardButton3 = [loadCopy skipForwardButton];
  [skipForwardButton3 addTarget:self action:sel_skipButtonLongPressTriggered_ forControlEvents:0x400000];

  skipBackButton4 = [loadCopy skipBackButton];
  [skipBackButton4 addTarget:self action:sel_skipButtonLongPressEnded_ forControlEvents:0x800000];

  skipForwardButton4 = [loadCopy skipForwardButton];
  [skipForwardButton4 addTarget:self action:sel_skipButtonLongPressEnded_ forControlEvents:0x800000];

  skipBackButton5 = [loadCopy skipBackButton];
  [skipBackButton5 addTarget:self action:sel_skipButtonForcePressChanged_ forControlEvents:0x2000000];

  skipForwardButton5 = [loadCopy skipForwardButton];
  [skipForwardButton5 addTarget:self action:sel_skipButtonForcePressChanged_ forControlEvents:0x2000000];

  [(AVCatalystGlassPlaybackControlsController *)self _updateSkipButtonsEnableLongPress];
  startLeftwardContentTransitionButton2 = [loadCopy startLeftwardContentTransitionButton];
  [startLeftwardContentTransitionButton2 addTarget:self action:sel_startContentTransitionButtonTouchUpInside_ forControlEvents:64];

  startRightwardContentTransitionButton2 = [loadCopy startRightwardContentTransitionButton];
  [startRightwardContentTransitionButton2 addTarget:self action:sel_startContentTransitionButtonTouchUpInside_ forControlEvents:64];

  prominentPlayButton4 = [loadCopy prominentPlayButton];
  [prominentPlayButton4 addTarget:self action:sel_prominentPlayButtonTouchUpInside_ forControlEvents:64];

  volumeButton2 = [loadCopy volumeButton];
  [volumeButton2 addTarget:self action:sel_volumeButtonTapTriggered_ forControlEvents:0x400000];

  volumeButton3 = [loadCopy volumeButton];
  [volumeButton3 addTarget:self action:sel_beginChangingVolume forControlEvents:0x1000000];

  volumeButton4 = [loadCopy volumeButton];
  [volumeButton4 addTarget:self action:sel_volumeButtonLongPressTriggered_ forControlEvents:0x800000];

  volumeButton5 = [loadCopy volumeButton];
  [volumeButton5 addTarget:self action:sel_volumeButtonPanChanged_ forControlEvents:0x2000000];

  volumeButton6 = [loadCopy volumeButton];
  [volumeButton6 addTarget:self action:sel_endChangingVolume forControlEvents:0x4000000];

  volumeSlider = [loadCopy volumeSlider];
  [volumeSlider addTarget:self action:sel_beginChangingVolume forControlEvents:1];

  volumeSlider2 = [loadCopy volumeSlider];
  [volumeSlider2 addTarget:self action:sel_endChangingVolume forControlEvents:448];

  volumeSlider3 = [loadCopy volumeSlider];
  [volumeSlider3 addTarget:self action:sel_volumeSliderValueDidChange_ forControlEvents:4096];

  transportControlsView = [loadCopy transportControlsView];
  [transportControlsView setDelegate:self];

  standardPlayPauseButton7 = [loadCopy standardPlayPauseButton];
  [standardPlayPauseButton7 setTintEffectStyle:0];

  prominentPlayButton5 = [loadCopy prominentPlayButton];
  [prominentPlayButton5 setTintEffectStyle:0];

  skipBackButton6 = [loadCopy skipBackButton];
  [skipBackButton6 setTintEffectStyle:0];

  skipForwardButton6 = [loadCopy skipForwardButton];
  [skipForwardButton6 setTintEffectStyle:0];

  startLeftwardContentTransitionButton3 = [loadCopy startLeftwardContentTransitionButton];
  [startLeftwardContentTransitionButton3 setTintEffectStyle:0];

  startRightwardContentTransitionButton3 = [loadCopy startRightwardContentTransitionButton];
  [startRightwardContentTransitionButton3 setTintEffectStyle:0];

  customControlItems = [(AVCatalystGlassPlaybackControlsController *)self customControlItems];
  [loadCopy setCustomControlItems:customControlItems animations:&__block_literal_global_212];

  playerViewController8 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  v90 = playerViewController8;
  if (playerViewController8)
  {
    [playerViewController8 overrideTransformForProminentPlayButton];
  }

  else
  {
    memset(v136, 0, 48);
  }

  [loadCopy setOverrideTransformForProminentPlayButton:v136];

  playerViewController9 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  overrideLayoutMarginsWhenEmbeddedInline = [playerViewController9 overrideLayoutMarginsWhenEmbeddedInline];
  [loadCopy setOverrideLayoutMarginsWhenEmbeddedInline:overrideLayoutMarginsWhenEmbeddedInline];

  v93 = MEMORY[0x1E69DD250];
  v125[0] = MEMORY[0x1E69E9820];
  v125[1] = 3221225472;
  v125[2] = __73__AVCatalystGlassPlaybackControlsController_playbackControlsViewDidLoad___block_invoke_3;
  v125[3] = &unk_1E7209FB0;
  v124 = loadCopy;
  v126 = v124;
  selfCopy = self;
  [v93 performWithoutAnimation:v125];
  volumeController = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
  uniqueIdentifer = [(AVCatalystGlassPlaybackControlsController *)self uniqueIdentifer];
  windowSceneSessionIdentifier = [(AVCatalystGlassPlaybackControlsController *)self windowSceneSessionIdentifier];
  [volumeController setClientWithIdentifier:uniqueIdentifer forWindowSceneSessionWithIdentifier:windowSceneSessionIdentifier];

  volumeController2 = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
  [volumeController2 setPrefersSystemVolumeHUDHidden:{-[AVCatalystGlassPlaybackControlsController isFullScreen](self, "isFullScreen")}];

  if (!self->_remainingTimeFormatter || !self->_elapsedTimeFormatter)
  {
    v98 = objc_alloc_init(MEMORY[0x1E6988158]);
    elapsedTimeFormatter = self->_elapsedTimeFormatter;
    self->_elapsedTimeFormatter = v98;

    [(AVTimeFormatter *)self->_elapsedTimeFormatter setStyle:1];
    v100 = objc_alloc_init(MEMORY[0x1E6988158]);
    remainingTimeFormatter = self->_remainingTimeFormatter;
    self->_remainingTimeFormatter = v100;

    [(AVTimeFormatter *)self->_remainingTimeFormatter setStyle:2];
  }

  [v124 setupInitialLayout];
  [v124 setPrefersVolumeSliderExpandedAutomatically:-[AVCatalystGlassPlaybackControlsController _prefersVolumeSliderExpandedAutomatically](self)];
  standardPlayPauseButton8 = [v124 standardPlayPauseButton];
  v135[0] = standardPlayPauseButton8;
  skipBackButton7 = [v124 skipBackButton];
  v135[1] = skipBackButton7;
  skipForwardButton7 = [v124 skipForwardButton];
  v135[2] = skipForwardButton7;
  controlOverflowButton2 = [v124 controlOverflowButton];
  v135[3] = controlOverflowButton2;
  pictureInPictureButton3 = [v124 pictureInPictureButton];
  v135[4] = pictureInPictureButton3;
  doneButton3 = [v124 doneButton];
  v135[5] = doneButton3;
  fullScreenButton3 = [v124 fullScreenButton];
  v135[6] = fullScreenButton3;
  playbackSpeedButton5 = [v124 playbackSpeedButton];
  v135[7] = playbackSpeedButton5;
  mediaSelectionButton3 = [v124 mediaSelectionButton];
  v135[8] = mediaSelectionButton3;
  startLeftwardContentTransitionButton4 = [v124 startLeftwardContentTransitionButton];
  v135[9] = startLeftwardContentTransitionButton4;
  startRightwardContentTransitionButton4 = [v124 startRightwardContentTransitionButton];
  v135[10] = startRightwardContentTransitionButton4;
  v102 = [MEMORY[0x1E695DEC8] arrayWithObjects:v135 count:11];
  styleSheet = [(AVCatalystGlassPlaybackControlsView *)self->_playbackControlsView styleSheet];
  buttonFont = [styleSheet buttonFont];

  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v105 = v102;
  v106 = [v105 countByEnumeratingWithState:&v131 objects:v136 count:16];
  if (v106)
  {
    v107 = *v132;
    do
    {
      for (i = 0; i != v106; ++i)
      {
        if (*v132 != v107)
        {
          objc_enumerationMutation(v105);
        }

        v109 = *(*(&v131 + 1) + 8 * i);
        titleLabel = [v109 titleLabel];
        labelColor = [MEMORY[0x1E69DC888] labelColor];
        [titleLabel setTextColor:labelColor];

        [v109 setInlineFont:buttonFont];
        [v109 setFullScreenFont:buttonFont];
        [v109 setAlternateFullScreenFont:buttonFont];
      }

      v106 = [v105 countByEnumeratingWithState:&v131 objects:v136 count:16];
    }

    while (v106);
  }

  [(AVCatalystGlassPlaybackControlsController *)self _updatePlaybackControlsVisibleAndObservingUpdates];
  [(AVCatalystGlassPlaybackControlsController *)self _updateContainerInclusion];
  [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:[(AVCatalystGlassPlaybackControlsController *)self _prefersVolumeSliderExpandedAutomatically]];
  [(AVCatalystGlassPlaybackControlsController *)self _showOrHideDisplayModeControls];
  [(AVCatalystGlassPlaybackControlsController *)self _updateScrubberAndTimeLabels];
  [(AVCatalystGlassPlaybackControlsController *)&self->super.isa _updateTransportBarCustomMenuItemsIfNeeded];
  [(AVCatalystGlassPlaybackControlsController *)self _updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:0];
  [(AVCatalystGlassPlaybackControlsController *)self _updateDimmingViewVisibility];
  [(AVCatalystGlassPlaybackControlsController *)self _updateGlassVariantsIfNeeded];

  objc_destroyWeak(&v129);
  objc_destroyWeak(&location);
}

void __73__AVCatalystGlassPlaybackControlsController_playbackControlsViewDidLoad___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained playbackRateMenuController];
  v7 = [v3 menu];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 playbackControlsView];
  v6 = [v5 playbackSpeedButton];
  [v6 setMenu:v7];
}

- (void)_updateSkipButtonsEnableLongPress
{
  if (self)
  {
    playerController = [self playerController];

    if (playerController)
    {
      playbackControlsView = [self playbackControlsView];
      skipBackButton = [playbackControlsView skipBackButton];
      playerController2 = [self playerController];
      [skipBackButton setTreatsForcePressAsLongPress:(objc_opt_respondsToSelector() & 1) == 0];

      playbackControlsView2 = [self playbackControlsView];
      skipForwardButton = [playbackControlsView2 skipForwardButton];
      playerController3 = [self playerController];
      [skipForwardButton setTreatsForcePressAsLongPress:(objc_opt_respondsToSelector() & 1) == 0];
    }
  }
}

uint64_t __73__AVCatalystGlassPlaybackControlsController_playbackControlsViewDidLoad___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) transportControlsView];
  v3 = [*(a1 + 40) playerViewController];
  v4 = [v3 customContentTransitioningInfoPanel];
  [v2 setCustomContentTransitioningInfoPanel:v4];

  v5 = *(a1 + 40);
  v6 = [(AVCatalystGlassPlaybackControlsController *)v5 _prefersVolumeSliderExpandedAutomatically];

  return [v5 _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:v6];
}

- (void)_updateTransportBarCustomMenuItemsIfNeeded
{
  v38 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    selfCopy = self;
    v2 = self[13];
    v3 = [v2 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (!v3)
    {
      goto LABEL_19;
    }

    v4 = v3;
    v5 = *v34;
    v6 = 0x1E69DC000uLL;
    p_info = AVCaptureEvent.info;
    v8 = 0x1E69DC000uLL;
    while (1)
    {
      v9 = 0;
      v31 = v4;
      do
      {
        if (*v34 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v33 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          identifier2 = v10;
          title = [identifier2 title];
          v13 = [p_info + 421 buttonWithAccessibilityIdentifier:title isFirstGeneration:1];

          image = [identifier2 image];

          if (image)
          {
            image2 = [identifier2 image];
            [v13 setImage:image2 forState:0];
          }

          title2 = [identifier2 title];

          if (title2)
          {
            title3 = [identifier2 title];
            [v13 setTitle:title3 forState:0];
          }

          [v13 addAction:identifier2 forControlEvents:0x2000];
          identifier = [identifier2 identifier];
          [v13 setMenuElementIdentifier:identifier];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_17;
          }

          v19 = p_info + 421;
          v20 = v10;
          [v20 title];
          v21 = v5;
          v22 = v2;
          v23 = v6;
          v24 = v8;
          v26 = v25 = p_info;
          v13 = [v19 buttonWithAccessibilityIdentifier:v26 isFirstGeneration:1];

          p_info = v25;
          v8 = v24;
          v6 = v23;
          v2 = v22;
          v5 = v21;
          v4 = v31;
          image3 = [v20 image];
          [v13 setImage:image3 forState:0];

          [v13 setMenu:v20];
          [v13 setShowsMenuAsPrimaryAction:1];
          identifier2 = [v20 identifier];

          [v13 setMenuElementIdentifier:identifier2];
        }

        if (v13)
        {
          [v32 addObject:v13];
        }

LABEL_17:
        ++v9;
      }

      while (v4 != v9);
      v4 = [v2 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (!v4)
      {
LABEL_19:

        playbackControlsView = [selfCopy playbackControlsView];
        transportControlsView = [playbackControlsView transportControlsView];
        [transportControlsView setCustomMenuItemsViews:v32];

        return;
      }
    }
  }
}

- (void)_updateDimmingViewVisibility
{
  if (self)
  {
    isAudioOnlyContent = [self isAudioOnlyContent];
    hasBecomeReadyToPlay = [self hasBecomeReadyToPlay];
    playbackControlsView = [self playbackControlsView];
    [playbackControlsView setShowsDimmingView:(isAudioOnlyContent ^ 1) & hasBecomeReadyToPlay];
  }
}

- (void)_updateGlassVariantsIfNeeded
{
  if (self)
  {
    playbackControlsView = [self playbackControlsView];
    screenModeControls = [playbackControlsView screenModeControls];

    playbackControlsView2 = [self playbackControlsView];
    volumeControls = [playbackControlsView2 volumeControls];

    playbackControlsView3 = [self playbackControlsView];
    transportControlsView = [playbackControlsView3 transportControlsView];
    controlsLayoutView = [transportControlsView controlsLayoutView];

    playbackControlsView4 = [self playbackControlsView];
    prominentPlayButtonContainerView = [playbackControlsView4 prominentPlayButtonContainerView];

    LOBYTE(playbackControlsView4) = [self isAudioOnlyContent];
    if (playbackControlsView4 & 1 | (([self hasBecomeReadyToPlay] & 1) == 0))
    {
      v10 = 3;
    }

    else
    {
      v10 = 1;
    }

    [screenModeControls setBackgroundMaterialStyle:v10];
    [volumeControls setBackgroundMaterialStyle:v10];
    [controlsLayoutView setBackgroundMaterialStyle:v10];
    [prominentPlayButtonContainerView setBackgroundMaterialStyle:v10];
  }
}

- (void)setIsAudioOnlyContent:(BOOL)content
{
  if (self->_isAudioOnlyContent != content)
  {
    self->_isAudioOnlyContent = content;
    [(AVCatalystGlassPlaybackControlsController *)self _updateDimmingViewVisibility];

    [(AVCatalystGlassPlaybackControlsController *)self _updateGlassVariantsIfNeeded];
  }
}

- (void)setTransportBarCustomMenuItems:(id)items
{
  v4 = [items copy];
  transportBarCustomMenuItems = self->_transportBarCustomMenuItems;
  self->_transportBarCustomMenuItems = v4;

  playbackControlsView = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  transportControlsView = [playbackControlsView transportControlsView];
  controlOverflowButton = [transportControlsView controlOverflowButton];
  [controlOverflowButton updateContextMenu];

  [(AVCatalystGlassPlaybackControlsController *)&self->super.isa _updateTransportBarCustomMenuItemsIfNeeded];
}

- (void)setCustomControlItems:(id)items
{
  itemsCopy = items;
  if (![(NSArray *)self->_customControlItems isEqualToArray:itemsCopy])
  {
    v5 = [itemsCopy copy];
    customControlItems = self->_customControlItems;
    self->_customControlItems = v5;

    playbackControlsView = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67__AVCatalystGlassPlaybackControlsController_setCustomControlItems___block_invoke;
    v9[3] = &unk_1E720A090;
    v9[4] = self;
    [playbackControlsView setCustomControlItems:itemsCopy animations:v9];

    playbackControlsView2 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    [playbackControlsView2 setPrefersVolumeSliderExpandedAutomatically:-[AVCatalystGlassPlaybackControlsController _prefersVolumeSliderExpandedAutomatically](self)];
  }
}

uint64_t __67__AVCatalystGlassPlaybackControlsController_setCustomControlItems___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    [v1 _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:-[AVCatalystGlassPlaybackControlsController _prefersVolumeSliderExpandedAutomatically](*(result + 32))];

    return [v1 _showOrHideDisplayModeControls];
  }

  return result;
}

- (BOOL)tapGestureRecognizersCanReceiveTouches
{
  if ([(AVCatalystGlassPlaybackControlsController *)self showsPlaybackControls]|| (v3 = [(AVCatalystGlassPlaybackControlsController *)self hasCustomPlaybackControls]))
  {
    LOBYTE(v3) = ![(AVCatalystGlassPlaybackControlsController *)self showsProminentPlayButton];
  }

  return v3;
}

- (BOOL)needsTimeResolver
{
  playbackControlsView = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  if (playbackControlsView)
  {
    playbackControlsView2 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    if ([playbackControlsView2 showsPlaybackControls])
    {
      v5 = ![(AVCatalystGlassPlaybackControlsController *)self isResumingUpdates];
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

- (BOOL)playButtonsShowPauseGlyph
{
  playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  [playerController activeRate];
  v5 = v4;
  if ([playerController avkit_isAVPlayerControllerOrSubclass])
  {
    [playerController suspendedRate];
    v7 = v6;
    isPlaybackSuspended = [playerController isPlaybackSuspended];
    v9 = v7 > 0.0 || v7 < 0.0;
    v10 = isPlaybackSuspended & v9;
  }

  else
  {
    v10 = 0;
  }

  if ([(AVCatalystGlassPlaybackControlsController *)self timeControlStatus])
  {
    v11 = 1;
  }

  else
  {
    isPlaybackSuspendedForScrubbing = [(AVCatalystGlassPlaybackControlsController *)self isPlaybackSuspendedForScrubbing];
    v13 = v5 != 0.0 || isPlaybackSuspendedForScrubbing;
    v11 = v13 | v10;
  }

  return v11 & 1;
}

- (BOOL)canShowLoadingIndicator
{
  if ([(AVCatalystGlassPlaybackControlsController *)self isResumingUpdates]|| [(AVCatalystGlassPlaybackControlsController *)self playerViewControllerIsBeingTransitionedWithResizing])
  {
    return 0;
  }

  playbackControlsView = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  if (playbackControlsView)
  {
    playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
    v3 = [playerController status] == 1 || -[AVCatalystGlassPlaybackControlsController timeControlStatus](self, "timeControlStatus") == 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)showsStartContentTransitionButtons
{
  isFullScreen = [(AVCatalystGlassPlaybackControlsController *)self isFullScreen];
  if (isFullScreen)
  {

    LOBYTE(isFullScreen) = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsIncludeStartContentTransitionButtons];
  }

  return isFullScreen;
}

- (BOOL)showsSkipButtons
{
  if ([(AVCatalystGlassPlaybackControlsController *)self isFullScreen]&& ![(AVCatalystGlassPlaybackControlsController *)self playbackControlsIncludeStartContentTransitionButtons]&& ![(AVCatalystGlassPlaybackControlsController *)self playerViewControllerIsBeingTransitionedWithResizing])
  {
    if ([(AVCatalystGlassPlaybackControlsController *)self isSeekingEnabled])
    {
      return 1;
    }

    if (![(AVCatalystGlassPlaybackControlsController *)self requiresLinearPlayback])
    {
      playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
      v3 = [playerController status] != 2;

      return v3;
    }
  }

  return 0;
}

- (BOOL)isSeekingEnabled
{
  if ([(AVCatalystGlassPlaybackControlsController *)self requiresLinearPlayback])
  {
    return 0;
  }

  playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  canSeek = [playerController canSeek];

  return canSeek;
}

- (double)maximumTime
{
  playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  if ([playerController status] == 2)
  {
    timeResolver = [(AVCatalystGlassPlaybackControlsController *)self timeResolver];
    [timeResolver maxTime];
    v6 = v5;
  }

  else
  {
    v6 = NAN;
  }

  return v6;
}

- (double)minimumTime
{
  playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  if ([playerController status] == 2)
  {
    timeResolver = [(AVCatalystGlassPlaybackControlsController *)self timeResolver];
    [timeResolver minTime];
    v6 = v5;
  }

  else
  {
    v6 = NAN;
  }

  return v6;
}

- (double)currentTime
{
  playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  if ([playerController status] == 2)
  {
    timeResolver = [(AVCatalystGlassPlaybackControlsController *)self timeResolver];
    [timeResolver targetTime];
    v6 = v5;
  }

  else
  {
    v6 = NAN;
  }

  return v6;
}

- (double)targetTime
{
  playbackControlsView = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  scrubber = [playbackControlsView scrubber];
  isTracking = [scrubber isTracking];

  if (isTracking)
  {
    playbackControlsView2 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    scrubber2 = [playbackControlsView2 scrubber];
    [scrubber2 value];
    v9 = v8;

LABEL_5:
    return v9;
  }

  playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  externalPlaybackType = [playerController externalPlaybackType];

  if (externalPlaybackType == 1)
  {
    playbackControlsView2 = [(AVCatalystGlassPlaybackControlsController *)self timeResolver];
    [playbackControlsView2 currentTime];
    v9 = v12;
    goto LABEL_5;
  }

  [(AVCatalystGlassPlaybackControlsController *)self currentTime];
  return result;
}

- (BOOL)showsMediaSelectionButton
{
  playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  hasMediaSelectionOptions = [playerController hasMediaSelectionOptions];

  return hasMediaSelectionOptions;
}

- (BOOL)shouldEnterFullScreenWhenPlaybackBegins
{
  entersFullScreenWhenPlaybackBegins = [(AVCatalystGlassPlaybackControlsController *)self entersFullScreenWhenPlaybackBegins];
  if (entersFullScreenWhenPlaybackBegins)
  {
    if ([(AVCatalystGlassPlaybackControlsController *)self hasPlaybackBegunSincePlayerControllerBecameReadyToPlay])
    {
      LOBYTE(entersFullScreenWhenPlaybackBegins) = 0;
    }

    else
    {
      LOBYTE(entersFullScreenWhenPlaybackBegins) = ![(AVCatalystGlassPlaybackControlsController *)self playerViewControllerHasInvalidViewControllerHierarchy];
    }
  }

  return entersFullScreenWhenPlaybackBegins;
}

- (BOOL)showsTransportControls
{
  if ([(AVCatalystGlassPlaybackControlsController *)self isFullScreen])
  {
    return 1;
  }

  if ([(AVCatalystGlassPlaybackControlsController *)self preferredUnobscuredArea]== 2)
  {
    return 0;
  }

  return ![(AVCatalystGlassPlaybackControlsController *)self shouldEnterFullScreenWhenPlaybackBegins];
}

- (BOOL)showsProminentPlayButton
{
  showsMinimalPlaybackControlsWhenEmbeddedInline = [(AVCatalystGlassPlaybackControlsController *)self shouldEnterFullScreenWhenPlaybackBegins]|| [(AVCatalystGlassPlaybackControlsController *)self showsMinimalPlaybackControlsWhenEmbeddedInline];
  if ([(AVCatalystGlassPlaybackControlsController *)self isFullScreen]|| ![(AVCatalystGlassPlaybackControlsController *)self playbackControlsIncludeTransportControls]|| !(showsMinimalPlaybackControlsWhenEmbeddedInline | ![(AVCatalystGlassPlaybackControlsController *)self hasPlaybackBegunSincePlayerControllerBecameReadyToPlay]))
  {
    goto LABEL_27;
  }

  pictureInPictureController = [(AVCatalystGlassPlaybackControlsController *)self pictureInPictureController];
  if ([pictureInPictureController isPictureInPictureActive])
  {
    v5 = 0;
  }

  else
  {
    playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
    if ([playerController status] == 3)
    {
      v5 = 0;
    }

    else
    {
      playerController2 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
      if ([playerController2 isPlayingOnExternalScreen])
      {
        v5 = 0;
      }

      else
      {
        playerController3 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
        if ([playerController3 hasVideo])
        {
          v5 = 1;
        }

        else
        {
          playerController4 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
          v5 = [playerController4 hasEnabledAudio] ^ 1;
        }
      }
    }
  }

  if (-[AVCatalystGlassPlaybackControlsController playButtonsShowPauseGlyph](self, "playButtonsShowPauseGlyph") || !showsMinimalPlaybackControlsWhenEmbeddedInline && ((-[AVCatalystGlassPlaybackControlsController playButtonHandlerForLazyPlayerLoading](self, "playButtonHandlerForLazyPlayerLoading"), (v10 = objc_claimAutoreleasedReturnValue()) == 0) || (v11 = v10, -[AVCatalystGlassPlaybackControlsController playerController](self, "playerController"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 status], v12, v11, v13)))
  {
    if ([(AVCatalystGlassPlaybackControlsController *)self preferredUnobscuredArea]== 2)
    {
      LOBYTE(v5) = 1;
      return v5;
    }

    if (![(AVCatalystGlassPlaybackControlsController *)self hasPlaybackBegunSincePlayerControllerBecameReadyToPlay])
    {
      return ![(AVCatalystGlassPlaybackControlsController *)self playButtonsShowPauseGlyph]& v5;
    }

LABEL_27:
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)showsRoutePickerView
{
  if (![(AVCatalystGlassPlaybackControlsController *)self multipleRoutesDetected])
  {
    return 0;
  }

  playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  if ([playerController allowsExternalPlayback])
  {
    wantsExternalPlaybackButtonShown = [(AVCatalystGlassPlaybackControlsController *)self wantsExternalPlaybackButtonShown];
  }

  else
  {
    wantsExternalPlaybackButtonShown = 0;
  }

  return wantsExternalPlaybackButtonShown;
}

- (void)setWantsExternalPlaybackButtonShown:(BOOL)shown
{
  if (self->_wantsExternalPlaybackButtonShown != shown)
  {
    self->_wantsExternalPlaybackButtonShown = shown;
  }
}

- (BOOL)entersFullScreenWhenTapped
{
  showsMinimalPlaybackControlsWhenEmbeddedInline = [(AVCatalystGlassPlaybackControlsController *)self showsMinimalPlaybackControlsWhenEmbeddedInline];
  if (showsMinimalPlaybackControlsWhenEmbeddedInline)
  {
    if ([(AVCatalystGlassPlaybackControlsController *)self showsProminentPlayButton])
    {
      LOBYTE(showsMinimalPlaybackControlsWhenEmbeddedInline) = 0;
    }

    else
    {
      showsMinimalPlaybackControlsWhenEmbeddedInline = [(AVCatalystGlassPlaybackControlsController *)self allowsEnteringFullScreen];
      if (showsMinimalPlaybackControlsWhenEmbeddedInline)
      {
        LOBYTE(showsMinimalPlaybackControlsWhenEmbeddedInline) = ![(AVCatalystGlassPlaybackControlsController *)self isFullScreen];
      }
    }
  }

  return showsMinimalPlaybackControlsWhenEmbeddedInline;
}

- (void)setShowsTimecodes:(BOOL)timecodes
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_showsTimecodes != timecodes)
  {
    timecodesCopy = timecodes;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v8 = 136315650;
      v9 = "[AVCatalystGlassPlaybackControlsController setShowsTimecodes:]";
      v11 = "showsTimecodes";
      v10 = 2080;
      if (timecodesCopy)
      {
        v6 = "YES";
      }

      v12 = 2080;
      v13 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v8, 0x20u);
    }

    self->_showsTimecodes = timecodesCopy;
    playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
    [playerController hasReadableTimecodes];

    [(AVCatalystGlassPlaybackControlsController *)self _updateOrCreateTimeResolverIfNeeded];
    [(AVCatalystGlassPlaybackControlsController *)self _updateScrubberAndTimeLabels];
  }
}

- (void)setShowsPictureInPictureButton:(BOOL)button
{
  if (self->_showsPictureInPictureButton != button)
  {
    self->_showsPictureInPictureButton = button;
    [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:[(AVCatalystGlassPlaybackControlsController *)self _prefersVolumeSliderExpandedAutomatically]];

    [(AVCatalystGlassPlaybackControlsController *)self _showOrHideDisplayModeControls];
  }
}

- (void)setCoveringWindow:(BOOL)window
{
  if (self->_coveringWindow != window)
  {
    self->_coveringWindow = window;
    [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:[(AVCatalystGlassPlaybackControlsController *)self _prefersVolumeSliderExpandedAutomatically]];

    [(AVCatalystGlassPlaybackControlsController *)self _showOrHideDisplayModeControls];
  }
}

- (BOOL)isFullScreen
{
  if ([(AVCatalystGlassPlaybackControlsController *)self playerViewControllerIsPresentingFullScreen]|| [(AVCatalystGlassPlaybackControlsController *)self playerViewControllerIsPresentedFullScreen])
  {
    return 1;
  }

  return [(AVCatalystGlassPlaybackControlsController *)self isCoveringWindow];
}

- (void)setVolumeController:(id)controller
{
  controllerCopy = controller;
  v5 = self->_volumeController;
  if (v5 != controllerCopy)
  {
    objc_storeStrong(&self->_volumeController, controller);
    if ([(AVCatalystGlassPlaybackControlsController *)self isFullScreen])
    {
      [(AVVolumeController *)v5 setPrefersSystemVolumeHUDHidden:0];
      volumeController = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
      [volumeController setPrefersSystemVolumeHUDHidden:1];
    }
  }
}

- (void)setShowsDoneButtonWhenFullScreen:(BOOL)screen
{
  if (self->_showsDoneButtonWhenFullScreen != screen)
  {
    self->_showsDoneButtonWhenFullScreen = screen;
    [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:[(AVCatalystGlassPlaybackControlsController *)self _prefersVolumeSliderExpandedAutomatically]];

    [(AVCatalystGlassPlaybackControlsController *)self _showOrHideDisplayModeControls];
  }
}

- (void)setShowsVolumeControlsForContentWithNoAudio:(BOOL)audio
{
  if (self->_showsVolumeControlsForContentWithNoAudio != audio)
  {
    self->_showsVolumeControlsForContentWithNoAudio = audio;
    [(AVCatalystGlassPlaybackControlsController *)self _updateContainerInclusion];
  }
}

- (void)setVolumeControlsCanShowSlider:(BOOL)slider
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_volumeControlsCanShowSlider != slider)
  {
    sliderCopy = slider;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVCatalystGlassPlaybackControlsController setVolumeControlsCanShowSlider:]";
      v10 = "volumeControlsCanShowSlider";
      v9 = 2080;
      if (sliderCopy)
      {
        v6 = "YES";
      }

      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
    }

    self->_volumeControlsCanShowSlider = sliderCopy;
    [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:sliderCopy];
  }
}

- (void)setCanIncludePlaybackControlsWhenInline:(BOOL)inline
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_canIncludePlaybackControlsWhenInline != inline)
  {
    inlineCopy = inline;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVCatalystGlassPlaybackControlsController setCanIncludePlaybackControlsWhenInline:]";
      v10 = "canIncludePlaybackControlsWhenInline";
      v9 = 2080;
      if (inlineCopy)
      {
        v6 = "YES";
      }

      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
    }

    self->_canIncludePlaybackControlsWhenInline = inlineCopy;
  }
}

- (void)setHasCustomPlaybackControls:(BOOL)controls
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_hasCustomPlaybackControls != controls)
  {
    controlsCopy = controls;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVCatalystGlassPlaybackControlsController setHasCustomPlaybackControls:]";
      v10 = "hasCustomPlaybackControls";
      v9 = 2080;
      if (controlsCopy)
      {
        v6 = "YES";
      }

      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
    }

    self->_hasCustomPlaybackControls = controlsCopy;
  }
}

- (void)setShowsShowTextControl:(BOOL)control
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_showsShowTextControl != control)
  {
    controlCopy = control;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v9 = 136315650;
      v10 = "[AVCatalystGlassPlaybackControlsController setShowsShowTextControl:]";
      v12 = "showsShowTextControl";
      v11 = 2080;
      if (controlCopy)
      {
        v6 = "YES";
      }

      v13 = 2080;
      v14 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v9, 0x20u);
    }

    self->_showsShowTextControl = controlCopy;
    playbackControlsView = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    controlOverflowButton = [playbackControlsView controlOverflowButton];
    [controlOverflowButton updateContextMenu];
  }
}

- (void)setShowsVideoZoomControl:(BOOL)control
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_showsVideoZoomControl != control)
  {
    controlCopy = control;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v9 = 136315650;
      v10 = "[AVCatalystGlassPlaybackControlsController setShowsVideoZoomControl:]";
      v12 = "showsVideoZoomControl";
      v11 = 2080;
      if (controlCopy)
      {
        v6 = "YES";
      }

      v13 = 2080;
      v14 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v9, 0x20u);
    }

    self->_showsVideoZoomControl = controlCopy;
    [(AVCatalystGlassPlaybackControlsController *)self _updateVideoGravityType];
    playbackControlsView = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    controlOverflowButton = [playbackControlsView controlOverflowButton];
    [controlOverflowButton updateContextMenu];
  }
}

- (void)setShowsPlaybackControls:(BOOL)controls
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_showsPlaybackControls != controls)
  {
    controlsCopy = controls;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v8 = 136315650;
      v9 = "[AVCatalystGlassPlaybackControlsController setShowsPlaybackControls:]";
      v11 = "showsPlaybackControls";
      v10 = 2080;
      if (controlsCopy)
      {
        v6 = "YES";
      }

      v12 = 2080;
      v13 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v8, 0x20u);
    }

    self->_showsPlaybackControls = controlsCopy;
    [(AVCatalystGlassPlaybackControlsController *)self _updatePlaybackControlsVisibleAndObservingUpdates];
    turboModePlaybackControlsPlaceholderView = [(AVCatalystGlassPlaybackControlsController *)self turboModePlaybackControlsPlaceholderView];
    [turboModePlaybackControlsPlaceholderView setHidden:!controlsCopy];
  }
}

- (void)setPlayerViewControllerIsBeingTransitionedWithResizing:(BOOL)resizing
{
  if (self->_playerViewControllerIsBeingTransitionedWithResizing != resizing)
  {
    self->_playerViewControllerIsBeingTransitionedWithResizing = resizing;
    [(AVCatalystGlassPlaybackControlsController *)self _updatePlaybackControlsVisibleAndObservingUpdates];
  }
}

- (void)setPlayerViewControllerIsPresentedFullScreen:(BOOL)screen
{
  if (self->_playerViewControllerIsPresentedFullScreen != screen)
  {
    self->_playerViewControllerIsPresentedFullScreen = screen;
    [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:[(AVCatalystGlassPlaybackControlsController *)self _prefersVolumeSliderExpandedAutomatically]];
    [(AVCatalystGlassPlaybackControlsController *)self _showOrHideDisplayModeControls];

    [(AVCatalystGlassPlaybackControlsController *)self _updateVideoGravityType];
  }
}

- (void)setPlayerViewControllerIsPresentingFullScreen:(BOOL)screen
{
  if (self->_playerViewControllerIsPresentingFullScreen != screen)
  {
    self->_playerViewControllerIsPresentingFullScreen = screen;
    [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:[(AVCatalystGlassPlaybackControlsController *)self _prefersVolumeSliderExpandedAutomatically]];

    [(AVCatalystGlassPlaybackControlsController *)self _showOrHideDisplayModeControls];
  }
}

- (void)setPlaybackSpeedCollection:(id)collection
{
  collectionCopy = collection;
  if (self->_playbackSpeedCollection != collectionCopy)
  {
    v8 = collectionCopy;
    if (self->_selectedPlaybackSpeedObservationToken)
    {
      [(AVObservationController *)self->_observationController stopObserving:?];
      selectedPlaybackSpeedObservationToken = self->_selectedPlaybackSpeedObservationToken;
      self->_selectedPlaybackSpeedObservationToken = 0;
    }

    objc_storeStrong(&self->_playbackSpeedCollection, collection);
    playbackRateMenuController = [(AVCatalystGlassPlaybackControlsController *)self playbackRateMenuController];
    [playbackRateMenuController setPlaybackSpeedCollection:v8];

    [(AVCatalystGlassPlaybackControlsController *)self _updatePlaybackSpeedControlInclusion];
    collectionCopy = v8;
  }
}

- (void)setPlayerController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_playerController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    volumeAnimator = [(AVCatalystGlassPlaybackControlsController *)self volumeAnimator];
    [volumeAnimator restoreVolumeIfNeeded];

    [(AVCatalystGlassPlaybackControlsController *)self setVolumeAnimator:0];
    if (self)
    {
      playerControllerObservationController = [(AVCatalystGlassPlaybackControlsController *)self playerControllerObservationController];
      [playerControllerObservationController stopAllObservation];

      if ([(AVCatalystGlassPlaybackControlsController *)self hasBegunObservingPotentiallyUnimplementedPlayerControllerProperties])
      {
        [(AVCatalystGlassPlaybackControlsController *)self setHasBegunObservingPotentiallyUnimplementedPlayerControllerProperties:0];
      }
    }

    v8 = objc_storeWeak(&self->_playerController, obj);

    if (obj)
    {
      [(AVCatalystGlassPlaybackControlsController *)self _startObservingPotentiallyUnimplementedPlayerControllerProperties];
    }

    volumeController = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      volumeController2 = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
      v12 = objc_loadWeakRetained(&self->_playerController);
      [volumeController2 setPlayerController:v12];
    }

    [(AVCatalystGlassPlaybackControlsController *)self _updateOrCreateTimeResolverIfNeeded];
    [(AVCatalystGlassPlaybackControlsController *)self _updateSkipButtonsEnableLongPress];
    [(AVCatalystGlassPlaybackControlsController *)self _updateVideoGravityType];
    turboModePlaybackControlsPlaceholderView = [(AVCatalystGlassPlaybackControlsController *)self turboModePlaybackControlsPlaceholderView];
    [turboModePlaybackControlsPlaceholderView setPlayerController:obj];

    v5 = obj;
  }
}

- (void)_startObservingPotentiallyUnimplementedPlayerControllerProperties
{
  if (self && ([self hasBegunObservingPotentiallyUnimplementedPlayerControllerProperties] & 1) == 0)
  {
    [self setHasBegunObservingPotentiallyUnimplementedPlayerControllerProperties:1];
    objc_initWeak(&location, self);
    playerController = [self playerController];
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      playerControllerObservationController = [self playerControllerObservationController];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __110__AVCatalystGlassPlaybackControlsController__startObservingPotentiallyUnimplementedPlayerControllerProperties__block_invoke;
      v23[3] = &unk_1E7209A88;
      objc_copyWeak(&v24, &location);
      [self _observeBoolForKeyPath:@"playerController.hasSeekableLiveStreamingContent" usingKeyValueObservationController:playerControllerObservationController observationHandler:v23];

      objc_destroyWeak(&v24);
    }

    playerController2 = [self playerController];
    if (objc_opt_respondsToSelector())
    {
      playerController3 = [self playerController];
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        playerControllerObservationController2 = [self playerControllerObservationController];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __110__AVCatalystGlassPlaybackControlsController__startObservingPotentiallyUnimplementedPlayerControllerProperties__block_invoke_2;
        v21[3] = &unk_1E7209A88;
        objc_copyWeak(&v22, &location);
        [self _observeBoolForKeyPath:@"playerController.seeking" usingKeyValueObservationController:playerControllerObservationController2 observationHandler:v21];

        playerControllerObservationController3 = [self playerControllerObservationController];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __110__AVCatalystGlassPlaybackControlsController__startObservingPotentiallyUnimplementedPlayerControllerProperties__block_invoke_3;
        v19[3] = &unk_1E7209A88;
        objc_copyWeak(&v20, &location);
        [self _observeBoolForKeyPath:@"playerController.scrubbing" usingKeyValueObservationController:playerControllerObservationController3 observationHandler:v19];

        objc_destroyWeak(&v20);
        objc_destroyWeak(&v22);
      }
    }

    else
    {
    }

    playerController4 = [self playerController];
    v11 = objc_opt_respondsToSelector();

    playerControllerObservationController4 = [self playerControllerObservationController];
    if (v11)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __110__AVCatalystGlassPlaybackControlsController__startObservingPotentiallyUnimplementedPlayerControllerProperties__block_invoke_4;
      v17[3] = &unk_1E7208C38;
      v13 = &v18;
      objc_copyWeak(&v18, &location);
      v14 = [playerControllerObservationController4 startObserving:self keyPath:@"playerController.timeControlStatus" includeInitialValue:1 observationHandler:v17];
    }

    else
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __110__AVCatalystGlassPlaybackControlsController__startObservingPotentiallyUnimplementedPlayerControllerProperties__block_invoke_5;
      v15[3] = &unk_1E7209A88;
      v13 = &v16;
      objc_copyWeak(&v16, &location);
      [self _observeBoolForKeyPath:@"playerController.playing" usingKeyValueObservationController:playerControllerObservationController4 observationHandler:v15];
    }

    objc_destroyWeak(v13);
    objc_destroyWeak(&location);
  }
}

void __110__AVCatalystGlassPlaybackControlsController__startObservingPotentiallyUnimplementedPlayerControllerProperties__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHasSeekableLiveStreamingContent:a2];
}

void __110__AVCatalystGlassPlaybackControlsController__startObservingPotentiallyUnimplementedPlayerControllerProperties__block_invoke_2(uint64_t a1, int a2)
{
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 playerController];
  [v4 setScrubbingOrSeeking:{objc_msgSend(v3, "isScrubbing") | a2}];
}

void __110__AVCatalystGlassPlaybackControlsController__startObservingPotentiallyUnimplementedPlayerControllerProperties__block_invoke_3(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2)
  {
    [WeakRetained setScrubbingOrSeeking:1];
  }

  else
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 playerController];
    [WeakRetained setScrubbingOrSeeking:{objc_msgSend(v5, "isSeeking")}];
  }
}

void __110__AVCatalystGlassPlaybackControlsController__startObservingPotentiallyUnimplementedPlayerControllerProperties__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [v5 value];
  v7 = [v6 integerValue];

  v8 = [v5 oldValue];

  v9 = [v8 integerValue];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setTimeControlStatus:v7];

  v11 = objc_loadWeakRetained((a1 + 32));
  if (![v11 hasPlaybackBegunSincePlayerControllerBecameReadyToPlay])
  {
LABEL_4:

    v13 = 3.0;
    if (v7 == 2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v12 = objc_loadWeakRetained((a1 + 32));
  if ([v12 isShowingPlaybackControls])
  {

    goto LABEL_4;
  }

  v14 = objc_loadWeakRetained((a1 + 32));
  if (![v14 isShowingPlaybackControls] && v9 == 2 && v7 == 1)
  {
  }

  else
  {
    v15 = objc_loadWeakRetained((a1 + 32));
    v16 = [v15 isShowingPlaybackControls];

    if ((v16 & 1) != 0 || v7)
    {
      return;
    }
  }

LABEL_12:
  v17 = [MEMORY[0x1E695DF00] date];
  [v17 timeIntervalSince1970];
  v13 = v18;

LABEL_13:
  v19 = objc_loadWeakRetained((a1 + 32));
  [v19 flashPlaybackControlsWithDuration:v13];
}

void __110__AVCatalystGlassPlaybackControlsController__startObservingPotentiallyUnimplementedPlayerControllerProperties__block_invoke_5(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (a2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  [WeakRetained setTimeControlStatus:v6];

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 playerController];
  v9 = 3.0;
  if (([v8 isPlaying] & 1) == 0)
  {
    v10 = [MEMORY[0x1E695DF00] date];
    [v10 timeIntervalSince1970];
    v9 = v11;
  }

  v12 = objc_loadWeakRetained((a1 + 32));
  [v12 flashPlaybackControlsWithDuration:v9];
}

- (void)setAnalysisInteractionInProgress:(BOOL)progress
{
  if (self->_analysisInteractionInProgress != progress)
  {
    self->_analysisInteractionInProgress = progress;
    [(AVCatalystGlassPlaybackControlsController *)self _updatePlaybackControlsVisibleAndObservingUpdates];
  }
}

- (void)_updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:(BOOL)expansion
{
  expansionCopy = expansion;
  playerViewController = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  presentationContext = [playerViewController presentationContext];
  if ([presentationContext isPresenting])
  {
    playerViewController2 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
    presentationContext2 = [playerViewController2 presentationContext];
    presentingTransition = [presentationContext2 presentingTransition];
    v45 = ([presentingTransition finalInterfaceOrientation] - 1) < 2;
  }

  else
  {
    v45 = 0;
  }

  playerViewController3 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  presentationContext3 = [playerViewController3 presentationContext];
  currentTransition = [presentationContext3 currentTransition];
  isRotated = [currentTransition isRotated];
  playerViewController4 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  presentingViewController = [playerViewController4 presentingViewController];
  view = [presentingViewController view];
  window = [view window];
  traitCollection = [window traitCollection];
  v18 = traitCollection;
  if (isRotated)
  {
    verticalSizeClass = [traitCollection verticalSizeClass];
  }

  else
  {
    verticalSizeClass = [traitCollection horizontalSizeClass];
  }

  v20 = verticalSizeClass;

  shouldShowVolumeControlInTransportBar = [(AVCatalystGlassPlaybackControlsController *)self shouldShowVolumeControlInTransportBar];
  if ([(AVCatalystGlassPlaybackControlsController *)self playbackControlsIncludeVolumeControls])
  {
    v22 = v20 == 1 && v45;
    v23 = 0;
    if ([(AVCatalystGlassPlaybackControlsController *)self volumeControlsCanShowSlider]&& !v22)
    {
      volumeController = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
      if ([volumeController currentRouteHasVolumeControl])
      {
        playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];
        if ([playerController isPlayingOnExternalScreen])
        {
          v23 = 0;
        }

        else
        {
          playerController2 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
          v23 = ([playerController2 isPlayingOnSecondScreen] & 1) == 0 && -[AVCatalystGlassPlaybackControlsController preferredUnobscuredArea](self, "preferredUnobscuredArea") != 1;
        }
      }

      else
      {
        v23 = 0;
      }
    }
  }

  else
  {
    v23 = 0;
  }

  if ([(AVCatalystGlassPlaybackControlsController *)self playbackControlsIncludeVolumeControls])
  {
    v27 = !shouldShowVolumeControlInTransportBar;
    if (!v23)
    {
LABEL_26:
      v28 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    playbackControlsView = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    customAudioItems = [playbackControlsView customAudioItems];
    v27 = [customAudioItems count] == 0 && !shouldShowVolumeControlInTransportBar;

    if (!v23)
    {
      goto LABEL_26;
    }
  }

  v28 = expansionCopy && !shouldShowVolumeControlInTransportBar;
LABEL_29:
  playbackControlsView2 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  volumeSlider = [playbackControlsView2 volumeSlider];
  if (v28 == [volumeSlider isIncluded])
  {
    playbackControlsView3 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    volumeButton = [playbackControlsView3 volumeButton];
    isIncluded = [volumeButton isIncluded];

    if (v27 == isIncluded)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  if (v28)
  {
    volumeController2 = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
    [volumeController2 volume];
    [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeSliderValueWithSystemVolume:0 animated:?];
  }

  if ([MEMORY[0x1E69DD250] areAnimationsEnabled])
  {
    playbackControlsView4 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    volumeControls = [playbackControlsView4 volumeControls];
    if ([volumeControls isHiddenOrHasHiddenAncestor])
    {
      v39 = 0;
    }

    else
    {
      playbackControlsView5 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
      volumeControls2 = [playbackControlsView5 volumeControls];
      if ([volumeControls2 _isInAWindow] && !-[AVCatalystGlassPlaybackControlsController isResumingUpdates](self, "isResumingUpdates"))
      {
        playbackControlsView6 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
        if ([playbackControlsView6 avkit_wantsAnimatedViewTransitions])
        {
          playerViewController5 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
          v39 = [playerViewController5 hasActiveTransition] ^ 1;
        }

        else
        {
          v39 = 0;
        }
      }

      else
      {
        v39 = 0;
      }
    }
  }

  else
  {
    v39 = 0;
  }

  playbackControlsView7 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  [playbackControlsView7 setPrefersVolumeSliderExpanded:v28 prefersVolumeButtonIncluded:v27 animated:v39];

LABEL_48:

  [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeButtonGlyph];
}

- (void)setAllowsEnteringFullScreen:(BOOL)screen
{
  if (self->_allowsEnteringFullScreen != screen)
  {
    self->_allowsEnteringFullScreen = screen;
    [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:[(AVCatalystGlassPlaybackControlsController *)self _prefersVolumeSliderExpandedAutomatically]];

    [(AVCatalystGlassPlaybackControlsController *)self _showOrHideDisplayModeControls];
  }
}

- (void)setPreferredUnobscuredArea:(int64_t)area
{
  if (self->_preferredUnobscuredArea != area)
  {
    self->_preferredUnobscuredArea = area;
    playbackControlsView = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    [playbackControlsView setPreferredUnobscuredArea:area];

    playbackControlsView2 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    [playbackControlsView2 setNeedsLayout];
  }
}

- (void)setShowsMinimalPlaybackControlsWhenEmbeddedInline:(BOOL)inline
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_showsMinimalPlaybackControlsWhenEmbeddedInline != inline)
  {
    inlineCopy = inline;
    self->_showsMinimalPlaybackControlsWhenEmbeddedInline = inline;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVCatalystGlassPlaybackControlsController setShowsMinimalPlaybackControlsWhenEmbeddedInline:]";
      v10 = "showsMinimalPlaybackControlsWhenEmbeddedInline";
      v9 = 2080;
      if (inlineCopy)
      {
        v6 = "YES";
      }

      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
    }

    [(AVCatalystGlassPlaybackControlsController *)self _updateContainerInclusion];
  }
}

- (void)setPlaybackControlsIncludeVolumeControls:(BOOL)controls
{
  if (self->_playbackControlsIncludeVolumeControls != controls)
  {
    self->_playbackControlsIncludeVolumeControls = controls;
    [(AVCatalystGlassPlaybackControlsController *)self _updateContainerInclusion];
  }
}

- (void)setPlaybackControlsIncludeDisplayModeControls:(BOOL)controls
{
  if (self->_playbackControlsIncludeDisplayModeControls != controls)
  {
    self->_playbackControlsIncludeDisplayModeControls = controls;
    [(AVCatalystGlassPlaybackControlsController *)self _updateContainerInclusion];
  }
}

- (void)setPlaybackControlsIncludeTransportControls:(BOOL)controls
{
  if (self->_playbackControlsIncludeTransportControls != controls)
  {
    self->_playbackControlsIncludeTransportControls = controls;
    [(AVCatalystGlassPlaybackControlsController *)self _updateContainerInclusion];
  }
}

- (void)toggleMuted
{
  v3 = [(AVCatalystGlassPlaybackControlsController *)self prefersMuted]^ 1;

  [(AVCatalystGlassPlaybackControlsController *)self setPrefersMuted:v3];
}

- (void)startUpdatesIfNeeded
{
  if (![(AVCatalystGlassPlaybackControlsController *)self hasStartedUpdates])
  {
    playbackControlsView = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];

    if (playbackControlsView)
    {
      [(AVCatalystGlassPlaybackControlsController *)self setHasStartedUpdates:1];
      v4 = self->_observationController;
      objc_initWeak(&location, self);
      [(AVCatalystGlassPlaybackControlsController *)self _updateRouteDetectionEnabled];
      routeDetectorCoordinator = [(AVCatalystGlassPlaybackControlsController *)self routeDetectorCoordinator];
      -[AVCatalystGlassPlaybackControlsController setMultipleRoutesDetected:](self, "setMultipleRoutesDetected:", [routeDetectorCoordinator multipleRoutesDetected]);

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __65__AVCatalystGlassPlaybackControlsController_startUpdatesIfNeeded__block_invoke;
      v18[3] = &unk_1E7207CC8;
      objc_copyWeak(&v19, &location);
      v18[4] = self;
      [(AVObservationController *)v4 startObservingNotificationForName:@"AVRouteDetectorCoordinatorMultipleRoutesDetectedDidChangeNotification" object:0 notificationCenter:0 observationHandler:v18];
      [(AVObservationController *)v4 startObservingNotificationForName:@"AVVolumeControllerVolumeChangedNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_10990];
      [(AVObservationController *)v4 startObservingNotificationForName:@"AVVolumeControllerCurrentRouteHasVolumeControlChangedNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_29];
      playerController = [(AVCatalystGlassPlaybackControlsController *)self playerController];

      if (playerController)
      {
        [(AVCatalystGlassPlaybackControlsController *)self _startObservingPotentiallyUnimplementedPlayerControllerProperties];
      }

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __65__AVCatalystGlassPlaybackControlsController_startUpdatesIfNeeded__block_invoke_4;
      v16[3] = &unk_1E7209A88;
      objc_copyWeak(&v17, &location);
      [(AVCatalystGlassPlaybackControlsController *)self _observeBoolForKeyPath:@"scrubbingOrSeeking" usingKeyValueObservationController:v4 observationHandler:v16];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __65__AVCatalystGlassPlaybackControlsController_startUpdatesIfNeeded__block_invoke_5;
      v14[3] = &unk_1E7208C38;
      objc_copyWeak(&v15, &location);
      v7 = [(AVObservationController *)v4 startObserving:self keyPath:@"timeControlStatus" includeInitialValue:1 observationHandler:v14];
      playerControllerObservationController = [(AVCatalystGlassPlaybackControlsController *)self playerControllerObservationController];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __65__AVCatalystGlassPlaybackControlsController_startUpdatesIfNeeded__block_invoke_6;
      v12[3] = &unk_1E7208C38;
      objc_copyWeak(&v13, &location);
      v9 = [playerControllerObservationController startObserving:self keyPath:@"playerController.status" includeInitialValue:1 observationHandler:v12];

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __65__AVCatalystGlassPlaybackControlsController_startUpdatesIfNeeded__block_invoke_7;
      v10[3] = &unk_1E7209A88;
      objc_copyWeak(&v11, &location);
      [(AVCatalystGlassPlaybackControlsController *)self _observeBoolForKeyPath:@"needsTimeResolver" usingKeyValueObservationController:v4 observationHandler:v10];
      [(AVCatalystGlassPlaybackControlsController *)self _updatePlaybackControlsVisibleAndObservingUpdates];
      objc_destroyWeak(&v11);
      objc_destroyWeak(&v13);
      objc_destroyWeak(&v15);
      objc_destroyWeak(&v17);
      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }
}

void __65__AVCatalystGlassPlaybackControlsController_startUpdatesIfNeeded__block_invoke(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 40));
  v3 = [v2 routeDetectorCoordinator];
  [v2 setMultipleRoutesDetected:{objc_msgSend(v3, "multipleRoutesDetected")}];

  v4 = *(a1 + 32);
  if (v4)
  {
    [v4 _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:-[AVCatalystGlassPlaybackControlsController _prefersVolumeSliderExpandedAutomatically](v4)];

    [v4 _showOrHideDisplayModeControls];
  }
}

void __65__AVCatalystGlassPlaybackControlsController_startUpdatesIfNeeded__block_invoke_4(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setLoadingIndicatorTimerDelay:0.75];
  }
}

void __65__AVCatalystGlassPlaybackControlsController_startUpdatesIfNeeded__block_invoke_5(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v6 = [a4 value];
  v7 = [v6 integerValue];

  if (v7 != 1)
  {
    if (v7 == 2)
    {
      [v10 setLoadingIndicatorTimerDelay:0.0666666667];
      v7 = 1;
    }

    else
    {
      v7 = 0;
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained playerController];
  [v10 _updateHasPlaybackBegunSincePlayerControllerBecameReadyToPlay:objc_msgSend(v9 playing:"status") == 2 userDidEndTappingProminentPlayButton:{v7, 0}];
}

void __65__AVCatalystGlassPlaybackControlsController_startUpdatesIfNeeded__block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [v5 value];

  v8 = [v7 integerValue] == 2;
  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 playerController];
  [WeakRetained _updateHasPlaybackBegunSincePlayerControllerBecameReadyToPlay:v8 playing:objc_msgSend(v10 userDidEndTappingProminentPlayButton:{"isPlaying"), 0}];

  v11 = objc_loadWeakRetained((a1 + 32));
  v12 = [v11 playerController];
  v13 = [v12 status];

  if (v13 == 2)
  {
    v14 = objc_loadWeakRetained((a1 + 32));
    [v14 setHasBecomeReadyToPlay:1];
  }

  v15 = objc_loadWeakRetained((a1 + 32));
  [(AVCatalystGlassPlaybackControlsController *)v15 _updateGlassVariantsIfNeeded];

  v16 = objc_loadWeakRetained((a1 + 32));
  [(AVCatalystGlassPlaybackControlsController *)v16 _updateDimmingViewVisibility];
}

void __65__AVCatalystGlassPlaybackControlsController_startUpdatesIfNeeded__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(AVCatalystGlassPlaybackControlsController *)WeakRetained _updateOrCreateTimeResolverIfNeeded];
}

void __65__AVCatalystGlassPlaybackControlsController_startUpdatesIfNeeded__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a2;
  v5 = a4;
  v6 = [v5 object];
  v7 = [v8 volumeController];

  if (v6 == v7)
  {
    [v8 handleCurrentRouteSupportsVolumeControlChanged:v5];
  }
}

void __65__AVCatalystGlassPlaybackControlsController_startUpdatesIfNeeded__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a2;
  v5 = a4;
  v6 = [v5 object];
  v7 = [v8 volumeController];

  if (v6 == v7)
  {
    [v8 handleVolumeChange:v5];
  }
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[AVCatalystGlassPlaybackControlsController dealloc]";
    v13 = 1024;
    v14 = 234;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %d", buf, 0x12u);
  }

  playerControllerObservationController = [(AVCatalystGlassPlaybackControlsController *)self playerControllerObservationController];
  [playerControllerObservationController stopAllObservation];

  playbackControlsObservationController = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsObservationController];
  [playbackControlsObservationController stopAllObservation];

  observationController = [(AVCatalystGlassPlaybackControlsController *)self observationController];
  [observationController stopAllObservation];

  [(AVCatalystGlassPlaybackControlsController *)self setShowsTimecodes:0];
  volumeController = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
  [volumeController setPrefersSystemVolumeHUDHidden:0];

  timeResolver = [(AVCatalystGlassPlaybackControlsController *)self timeResolver];
  [timeResolver setPlayerController:0];

  routeDetectorCoordinator = [(AVCatalystGlassPlaybackControlsController *)self routeDetectorCoordinator];
  [routeDetectorCoordinator setRouteDetectionEnabled:0];

  [(AVCatalystGlassPlaybackControlsController *)self setPlayerController:0];
  v10.receiver = self;
  v10.super_class = AVCatalystGlassPlaybackControlsController;
  [(AVCatalystGlassPlaybackControlsController *)&v10 dealloc];
}

- (AVCatalystGlassPlaybackControlsController)initWithPlayerViewController:(id)controller visibilityDelegate:(id)delegate
{
  v34 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  delegateCopy = delegate;
  v29.receiver = self;
  v29.super_class = AVCatalystGlassPlaybackControlsController;
  v8 = [(AVCatalystGlassPlaybackControlsController *)&v29 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_playerViewController, controllerCopy);
    playerController = [controllerCopy playerController];
    objc_storeWeak(&v9->_playerController, playerController);

    playerViewController = [(AVCatalystGlassPlaybackControlsController *)v9 playerViewController];
    v9->_showsPlaybackControls = [playerViewController showsPlaybackControls];

    v9->_showsVideoZoomControl = 1;
    *&v9->_playbackControlsIncludeTransportControls = 257;
    v9->_playbackControlsIncludeVolumeControls = 1;
    v9->_allowsEnteringFullScreen = 1;
    *&v9->_startLeftwardContentTransitionButtonEnabled = 257;
    v9->_volumeControlsCanShowSlider = 1;
    *&v9->_forcePlaybackControlsHidden = 0;
    v9->_canHidePlaybackControls = 1;
    v9->_wantsExternalPlaybackButtonShown = 1;
    *&v9->_hasBegunObservingPotentiallyUnimplementedPlayerControllerProperties = 0;
    v9->_videoGravityType = 0;
    v9->_loadingIndicatorTimerDelay = 1.0;
    v9->_canIncludePlaybackControlsWhenInline = [controllerCopy canIncludePlaybackControlsWhenInline];
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    globallyUniqueString = [processInfo globallyUniqueString];
    uniqueIdentifer = v9->_uniqueIdentifer;
    v9->_uniqueIdentifer = globallyUniqueString;

    v15 = [[AVObservationController alloc] initWithOwner:v9];
    observationController = v9->_observationController;
    v9->_observationController = v15;

    v17 = [[AVObservationController alloc] initWithOwner:v9];
    playerControllerObservationController = v9->_playerControllerObservationController;
    v9->_playerControllerObservationController = v17;

    v19 = objc_alloc_init(AVMobilePlaybackRateMenuController);
    playbackRateMenuController = v9->_playbackRateMenuController;
    v9->_playbackRateMenuController = v19;

    v21 = objc_alloc_init(AVCatalystGlassPlaybackControlsViewVisibilityBroadcaster);
    visibilityBroadcaster = v9->_visibilityBroadcaster;
    v9->_visibilityBroadcaster = v21;

    [(AVCatalystGlassPlaybackControlsViewVisibilityBroadcaster *)v9->_visibilityBroadcaster addObserver:controllerCopy];
    [(AVCatalystGlassPlaybackControlsViewVisibilityBroadcaster *)v9->_visibilityBroadcaster addObserver:delegateCopy];
    playerController2 = [(AVCatalystGlassPlaybackControlsController *)v9 playerController];
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      playerControllerObservationController = [(AVCatalystGlassPlaybackControlsController *)v9 playerControllerObservationController];
      v26 = [playerControllerObservationController startObserving:v9 keyPath:@"playerController.photosensitivityRegions" includeInitialValue:1 observationHandler:&__block_literal_global_397];
    }

    v27 = _AVLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v31 = "[AVCatalystGlassPlaybackControlsController initWithPlayerViewController:visibilityDelegate:]";
      v32 = 1024;
      v33 = 226;
      _os_log_impl(&dword_18B49C000, v27, OS_LOG_TYPE_DEFAULT, "%s %d", buf, 0x12u);
    }
  }

  return v9;
}

void __73__AVCatalystGlassPlaybackControlsController__handlePhotosensitiveRegions__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (_AXSPhotosensitiveMitigationEnabled() && ([a2 playerController], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_opt_respondsToSelector(), v3, (v4 & 1) != 0))
    {
      v5 = [a2 playerController];
      v9 = [v5 photosensitivityRegions];
    }

    else
    {
      v9 = 0;
    }

    v6 = [a2 playbackControlsView];
    v7 = [v6 transportControlsView];
    v8 = [v7 scrubber];
    [v8 setPhotosensitiveDisplayTimes:v9];
  }
}

+ (id)keyPathsForValuesAffectingNeedsTimeResolver
{
  v6[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = @"playbackControlsView";
  v6[1] = @"resumingUpdates";
  v6[2] = @"playbackControlsView.showsPlaybackControls";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)keyPathsForValuesAffectingPlayButtonsShowPauseGlyph
{
  v6[5] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = @"timeControlStatus";
  v6[1] = @"playerController.activeRate";
  v6[2] = @"playerController.suspendedRate";
  v6[3] = @"playerController.playbackSuspended";
  v6[4] = @"playbackSuspendedForScrubbing";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:5];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)keyPathsForValuesAffectingCanShowLoadingIndicator
{
  v6[5] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = @"playerController.status";
  v6[1] = @"playbackControlsView";
  v6[2] = @"playerViewControllerIsBeingTransitionedWithResizing";
  v6[3] = @"resumingUpdates";
  v6[4] = @"timeControlStatus";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:5];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)keyPathsForValuesAffectingShowsStartContentTransitionButtons
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = @"playbackControlsIncludeStartContentTransitionButtons";
  v6[1] = @"fullScreen";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)keyPathsForValuesAffectingShowsSkipButtons
{
  v6[6] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = @"seekingEnabled";
  v6[1] = @"playerController.status";
  v6[2] = @"playerViewControllerIsBeingTransitionedWithResizing";
  v6[3] = @"requiresLinearPlayback";
  v6[4] = @"playbackControlsIncludeStartContentTransitionButtons";
  v6[5] = @"fullScreen";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:6];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)keyPathsForValuesAffectingSeekingEnabled
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = @"playerController.canSeek";
  v6[1] = @"requiresLinearPlayback";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)keyPathsForValuesAffectingMaximumTime
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = @"playerController.status";
  v6[1] = @"timeResolver.maxTime";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)keyPathsForValuesAffectingMinimumTime
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = @"playerController.status";
  v6[1] = @"timeResolver.minTime";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)keyPathsForValuesAffectingCurrentTime
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = @"playerController.status";
  v6[1] = @"timeResolver.targetTime";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)keyPathsForValuesAffectingShouldEnterFullScreenWhenPlaybackBegins
{
  v6[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = @"entersFullScreenWhenPlaybackBegins";
  v6[1] = @"hasPlaybackBegunSincePlayerControllerBecameReadyToPlay";
  v6[2] = @"playerViewControllerHasInvalidViewControllerHierarchy";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)keyPathsForValuesAffectingShowsTransportControls
{
  v6[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = @"preferredUnobscuredArea";
  v6[1] = @"shouldEnterFullScreenWhenPlaybackBegins";
  v6[2] = @"fullScreen";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)keyPathsForValuesAffectingProminentPlayButtonCanShowPauseGlyph
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = @"preferredUnobscuredArea";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)keyPathsForValuesAffectingShowsProminentPlayButton
{
  v6[14] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = @"playbackControlsIncludeTransportControls";
  v6[1] = @"hasPlaybackBegunSincePlayerControllerBecameReadyToPlay";
  v6[2] = @"fullScreen";
  v6[3] = @"shouldEnterFullScreenWhenPlaybackBegins";
  v6[4] = @"pictureInPictureController.pictureInPictureActive";
  v6[5] = @"preferredUnobscuredArea";
  v6[6] = @"playerController.playingOnExternalScreen";
  v6[7] = @"playerController.hasVideo";
  v6[8] = @"playerController.hasEnabledAudio";
  v6[9] = @"playButtonsShowPauseGlyph";
  v6[10] = @"playerController";
  v6[11] = @"playButtonHandlerForLazyPlayerLoading";
  v6[12] = @"showsMinimalPlaybackControlsWhenEmbeddedInline";
  v6[13] = @"playerController.status";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:14];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)keyPathsForValuesAffectingShowsRoutePickerView
{
  v6[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = @"multipleRoutesDetected";
  v6[1] = @"playerController.allowsExternalPlayback";
  v6[2] = @"wantsExternalPlaybackButtonShown";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)keyPathsForValuesAffectingFullScreen
{
  v6[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = @"playerViewControllerIsPresentingFullScreen";
  v6[1] = @"playerViewControllerIsPresentedFullScreen";
  v6[2] = @"coveringWindow";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  v4 = [v2 setWithArray:v3];

  return v4;
}

@end