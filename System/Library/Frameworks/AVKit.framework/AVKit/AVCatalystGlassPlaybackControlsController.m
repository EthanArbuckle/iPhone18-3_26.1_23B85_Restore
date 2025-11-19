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
- (AVCatalystGlassPlaybackControlsController)initWithPlayerViewController:(id)a3 visibilityDelegate:(id)a4;
- (AVCatalystTurboModePlaybackControlsPlaceholderView)turboModePlaybackControlsPlaceholderView;
- (AVPlayerController)playerController;
- (AVPlayerViewController)playerViewController;
- (BOOL)canShowLoadingIndicator;
- (BOOL)entersFullScreenWhenTapped;
- (BOOL)isFullScreen;
- (BOOL)isSeekingEnabled;
- (BOOL)needsTimeResolver;
- (BOOL)playButtonsShowPauseGlyph;
- (BOOL)playerViewControllerContentViewHasActiveTransition:(id)a3;
- (BOOL)playerViewControllerContentViewIsBeingTransitionedFromFullScreen:(id)a3;
- (BOOL)playerViewControllerContentViewShouldApplyAutomaticVideoGravity:(id)a3;
- (BOOL)prefersStatusBarHidden;
- (BOOL)shouldApplyLegibleMediaSelectionCriteriaAutomaticallyForMediaSelectionMenuController:(id)a3;
- (BOOL)shouldEnterFullScreenWhenPlaybackBegins;
- (BOOL)showsMediaSelectionButton;
- (BOOL)showsProminentPlayButton;
- (BOOL)showsRoutePickerView;
- (BOOL)showsSkipButtons;
- (BOOL)showsStartContentTransitionButtons;
- (BOOL)showsTransportControls;
- (BOOL)tapGestureRecognizersCanReceiveTouches;
- (CGRect)playbackViewFrame;
- (CGSize)playerViewControllerContentViewContentDimensions:(id)a3;
- (NSTimer)loadingIndicatorTimer;
- (UIAlertController)routePickerAlertController;
- (UIViewPropertyAnimator)collapseExpandSliderAnimator;
- (double)currentTime;
- (double)maximumTime;
- (double)minimumTime;
- (double)targetTime;
- (id)_volumeButtonMicaPackageState;
- (id)overflowMenuItemsForControlOverflowButton:(id)a3;
- (id)playerViewControllerContentViewOverrideLayoutClass:(id)a3;
- (void)_autoHideControlsAfterDelay:(double)a3;
- (void)_bindEnabledStateOfControls:(id)a3 toKeyPath:(id)a4 usingObservationController:(id)a5;
- (void)_bindInclusionOfControlItems:(id)a3 toKeyPath:(id)a4;
- (void)_observeBoolForKeyPath:(id)a3 usingKeyValueObservationController:(id)a4 observationHandler:(id)a5;
- (void)_prefersVolumeSliderExpandedAutomatically;
- (void)_seekByTimeInterval:(double)a3 toleranceBefore:(double)a4 toleranceAfter:(double)a5;
- (void)_showOrHideDisplayModeControls;
- (void)_startObservingPotentiallyUnimplementedPlayerControllerProperties;
- (void)_updateContainerInclusion;
- (void)_updateDimmingViewVisibility;
- (void)_updateGlassVariantsIfNeeded;
- (void)_updateHasPlaybackBegunSincePlayerControllerBecameReadyToPlay:(BOOL)a3 playing:(BOOL)a4 userDidEndTappingProminentPlayButton:(BOOL)a5;
- (void)_updateOrCreateTimeResolverIfNeeded;
- (void)_updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:(BOOL)a3;
- (void)_updatePlaybackControlsVisibleAndObservingUpdates;
- (void)_updatePlaybackSpeedControlInclusion;
- (void)_updateRouteDetectionEnabled;
- (void)_updateScrubberAndTimeLabels;
- (void)_updateSkipButtonsEnableLongPress;
- (void)_updateTransportBarCustomMenuItemsIfNeeded;
- (void)_updateVideoGravityType;
- (void)_updateVolumeButtonGlyph;
- (void)_updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:(BOOL)a3;
- (void)_updateVolumeSliderValueWithSystemVolume:(float)a3 animated:(BOOL)a4;
- (void)beginChangingVolume;
- (void)beginHidingItemsForTransition;
- (void)beginScrubbing;
- (void)beginShowingItemsDueToIndirectUserInteraction;
- (void)beginUserInteraction;
- (void)dealloc;
- (void)endChangingVolume;
- (void)endHidingItemsForTransitionAndShowImmediately:(BOOL)a3;
- (void)endScrubbing;
- (void)endShowingItemsDueToIndirectUserInteraction;
- (void)endUserInteraction;
- (void)flashPlaybackControlsWithDuration:(double)a3;
- (void)flashVolumeControlsWithDuration:(double)a3;
- (void)handleCurrentRouteSupportsVolumeControlChanged:(id)a3;
- (void)handleVolumeChange:(id)a3;
- (void)mediaSelectionMenuController:(id)a3 didSelectOption:(id)a4;
- (void)playbackControlsViewDidLoad:(id)a3;
- (void)playbackSpeedButtonTapped:(id)a3;
- (void)playerViewControllerContentViewDidChangeSize:(id)a3;
- (void)playerViewControllerContentViewDidChangeVideoGravity:(id)a3;
- (void)playerViewControllerContentViewDidLayoutSubviews:(id)a3;
- (void)playerViewControllerContentViewDidMoveToSuperviewOrWindow:(id)a3;
- (void)playerViewControllerContentViewDidUpdateScrollingStatus:(id)a3;
- (void)playerViewControllerContentViewPlaybackContentContainerViewChanged:(id)a3;
- (void)prominentPlayButtonTouchUpInside:(id)a3;
- (void)scrubToTime:(double)a3 resolution:(double)a4;
- (void)setAllowsEnteringFullScreen:(BOOL)a3;
- (void)setAnalysisInteractionInProgress:(BOOL)a3;
- (void)setCanIncludePlaybackControlsWhenInline:(BOOL)a3;
- (void)setCoveringWindow:(BOOL)a3;
- (void)setCustomControlItems:(id)a3;
- (void)setForcePlaybackControlsHidden:(BOOL)a3;
- (void)setHasCustomPlaybackControls:(BOOL)a3;
- (void)setIsAudioOnlyContent:(BOOL)a3;
- (void)setPictureInPictureActive:(BOOL)a3;
- (void)setPlaybackControlsIncludeDisplayModeControls:(BOOL)a3;
- (void)setPlaybackControlsIncludeTransportControls:(BOOL)a3;
- (void)setPlaybackControlsIncludeVolumeControls:(BOOL)a3;
- (void)setPlaybackSpeedCollection:(id)a3;
- (void)setPlayerController:(id)a3;
- (void)setPlayerViewControllerIsBeingTransitionedWithResizing:(BOOL)a3;
- (void)setPlayerViewControllerIsPresentedFullScreen:(BOOL)a3;
- (void)setPlayerViewControllerIsPresentingFullScreen:(BOOL)a3;
- (void)setPopoverIsBeingPresented:(BOOL)a3;
- (void)setPreferredUnobscuredArea:(int64_t)a3;
- (void)setShowsDoneButtonWhenFullScreen:(BOOL)a3;
- (void)setShowsMinimalPlaybackControlsWhenEmbeddedInline:(BOOL)a3;
- (void)setShowsPictureInPictureButton:(BOOL)a3;
- (void)setShowsPlaybackControls:(BOOL)a3;
- (void)setShowsShowTextControl:(BOOL)a3;
- (void)setShowsTimecodes:(BOOL)a3;
- (void)setShowsVideoZoomControl:(BOOL)a3;
- (void)setShowsVolumeControlsForContentWithNoAudio:(BOOL)a3;
- (void)setTransportBarCustomMenuItems:(id)a3;
- (void)setVolumeController:(id)a3;
- (void)setVolumeControlsCanShowSlider:(BOOL)a3;
- (void)setWantsExternalPlaybackButtonShown:(BOOL)a3;
- (void)showPlaybackControls:(BOOL)a3 immediately:(BOOL)a4;
- (void)skipButtonForcePressChanged:(id)a3;
- (void)skipButtonLongPressEnded:(id)a3;
- (void)skipButtonLongPressTriggered:(id)a3;
- (void)skipButtonTouchUpInside:(id)a3;
- (void)startContentTransitionButtonTouchUpInside:(id)a3;
- (void)startUpdatesIfNeeded;
- (void)toggleMuted;
- (void)togglePlaybackControlsVisibility;
- (void)transportControls:(id)a3 scrubberDidBeginScrubbing:(id)a4;
- (void)transportControls:(id)a3 scrubberDidEndScrubbing:(id)a4;
- (void)transportControls:(id)a3 scrubberDidScrub:(id)a4;
- (void)transportControlsNeedsLayoutIfNeeded:(id)a3;
- (void)turboModePlaybackControlsPlaceholderViewDidLoad:(id)a3;
- (void)updateVolumeSliderValue:(id)a3 volumeButtonControl:(id)a4;
- (void)volumeButtonPanChanged:(id)a3;
- (void)volumeButtonTapTriggered:(id)a3;
- (void)volumeSliderValueDidChange:(id)a3;
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

- (void)_updateHasPlaybackBegunSincePlayerControllerBecameReadyToPlay:(BOOL)a3 playing:(BOOL)a4 userDidEndTappingProminentPlayButton:(BOOL)a5
{
  if (a4 || a5 || !a3)
  {
    [(AVCatalystGlassPlaybackControlsController *)self setHasPlaybackBegunSincePlayerControllerBecameReadyToPlay:a3];
  }
}

- (void)endHidingItemsForTransitionAndShowImmediately:(BOOL)a3
{
  v3 = a3;
  [(AVCatalystGlassPlaybackControlsController *)self setHidingItemsForTransition:0];
  [(AVCatalystGlassPlaybackControlsController *)self showPlaybackControls:v3 immediately:1];
  v5 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  v6 = [v5 timeControlStatus];

  if (v6 == 2 && v3)
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
    v3 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
    v4 = [v3 isPlaying];

    if (v4)
    {

      [(AVCatalystGlassPlaybackControlsController *)self _autoHideControlsAfterDelay:3.0];
    }
  }
}

- (void)beginUserInteraction
{
  [(AVCatalystGlassPlaybackControlsController *)self setUserInteractingCount:[(AVCatalystGlassPlaybackControlsController *)self userInteractingCount]+ 1];
  v3 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsVisibilityTimer];
  [v3 invalidate];
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

- (void)setPopoverIsBeingPresented:(BOOL)a3
{
  if (self->_popoverIsBeingPresented != a3)
  {
    self->_popoverIsBeingPresented = a3;
    if (a3)
    {

      [(AVCatalystGlassPlaybackControlsController *)self _updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:1];
    }

    else
    {
      v4 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
      v5 = [v4 isPlaying];

      if (v5)
      {

        [(AVCatalystGlassPlaybackControlsController *)self flashPlaybackControlsWithDuration:3.0];
      }
    }
  }
}

- (void)setPictureInPictureActive:(BOOL)a3
{
  if (self->_pictureInPictureActive != a3)
  {
    self->_pictureInPictureActive = a3;
    if (a3)
    {
      v5 = 0;
    }

    else
    {
      v6 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
      v5 = [v6 isPlaying] ^ 1;
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

  v5 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  if ([v5 isPlayingOnExternalScreen])
  {
    goto LABEL_7;
  }

  v3 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  if ([v3 isAudioOnlyContent])
  {

LABEL_7:

    return;
  }

  v4 = [(AVCatalystGlassPlaybackControlsController *)self canHidePlaybackControls];

  if (v4)
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

- (void)_autoHideControlsAfterDelay:(double)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[AVCatalystGlassPlaybackControlsController _autoHideControlsAfterDelay:]";
    v13 = 2048;
    v14 = a3;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s delay: %f", buf, 0x16u);
  }

  v6 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsVisibilityTimer];
  [v6 invalidate];

  objc_initWeak(buf, self);
  v7 = MEMORY[0x1E695DFF0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__AVCatalystGlassPlaybackControlsController__autoHideControlsAfterDelay___block_invoke;
  v9[3] = &unk_1E7209DA8;
  objc_copyWeak(&v10, buf);
  v8 = [v7 scheduledTimerWithTimeInterval:0 repeats:v9 block:a3];
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

- (void)flashVolumeControlsWithDuration:(double)a3
{
  [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:[(AVCatalystGlassPlaybackControlsController *)self _prefersVolumeSliderExpandedAutomatically]];
  v4 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  [v4 setShowsAudioControls:1];

  v5 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  if ([v5 isPlaying])
  {
  }

  else
  {
    v6 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    v7 = [v6 showsPlaybackControls];

    if (v7)
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
    v2 = [result playbackControlsView];
    v3 = [v2 includedContainers];

    v4 = [v1 playbackControlsView];
    v5 = [v4 customAudioItems];
    v6 = [v5 count];

    return ((v6 == 0) & (v3 >> 4));
  }

  return result;
}

- (void)showPlaybackControls:(BOOL)a3 immediately:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v7 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsVisibilityTimer];
  [v7 invalidate];

  v8 = _AVLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315906;
    v11 = "[AVCatalystGlassPlaybackControlsController showPlaybackControls:immediately:]";
    v12 = 1024;
    v13 = v5;
    v14 = 1024;
    v15 = v4;
    v16 = 1024;
    v17 = [(AVCatalystGlassPlaybackControlsController *)self isHidingItemsForTransition];
    _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s shouldShowPlaybackControls: %d {\n\tshowImmediately: %d\n\tisHidingItemsForTransition: %d}", &v10, 0x1Eu);
  }

  if (![(AVCatalystGlassPlaybackControlsController *)self isHidingItemsForTransition])
  {
    [(AVCatalystGlassPlaybackControlsController *)self setShowingPlaybackControls:v5];
    v9 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    [v9 showPlaybackControls:v5 immediately:v4];
  }
}

- (void)flashPlaybackControlsWithDuration:(double)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[AVCatalystGlassPlaybackControlsController flashPlaybackControlsWithDuration:]";
    v10 = 2048;
    v11 = a3;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s duration: %f", &v8, 0x16u);
  }

  if (![(AVCatalystGlassPlaybackControlsController *)self isPictureInPictureActive])
  {
    v6 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
    if ([v6 isPlayingOnExternalScreen])
    {
    }

    else
    {
      v7 = [(AVCatalystGlassPlaybackControlsController *)self showsPlaybackControls];

      if (v7)
      {
        [(AVCatalystGlassPlaybackControlsController *)self showPlaybackControls:1 immediately:0];
        [(AVCatalystGlassPlaybackControlsController *)self _autoHideControlsAfterDelay:a3];
      }
    }
  }
}

- (void)_updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:(BOOL)a3
{
  v3 = a3;
  v37 = *MEMORY[0x1E69E9840];
  v5 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  v6 = [v5 isPlayingOnExternalScreen];

  v7 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  v8 = [v7 isAudioOnlyContent];

  if (([(AVCatalystGlassPlaybackControlsController *)self isUserInteracting]|| v3) && ![(AVCatalystGlassPlaybackControlsController *)self isPictureInPictureActive])
  {
    v9 = 1;
    if (v3)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v9 = v6 | v8;
    if (v3)
    {
      goto LABEL_17;
    }
  }

  if (![(AVCatalystGlassPlaybackControlsController *)self isUserInteracting]&& ![(AVCatalystGlassPlaybackControlsController *)self isPopoverBeingPresented]&& ![(AVCatalystGlassPlaybackControlsController *)self showsLoadingIndicator]&& ![(AVCatalystGlassPlaybackControlsController *)self isPictureInPictureActive]&& !(v6 & 1 | ![(AVCatalystGlassPlaybackControlsController *)self canHidePlaybackControls]| v8 & 1))
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
    v10 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
    if ([v10 isPlayingOnExternalScreen])
    {

      goto LABEL_21;
    }

    v11 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
    v12 = [v11 isAudioOnlyContent];

    if (v12)
    {
      goto LABEL_21;
    }

LABEL_27:
    v15 = 0;
    goto LABEL_24;
  }

LABEL_21:
  v13 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  v14 = [v13 showsAudioControls];

  if ((v14 & 1) == 0)
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
    v22 = v3;
    v23 = 1024;
    v24 = [(AVCatalystGlassPlaybackControlsController *)self isUserInteracting];
    v25 = 1024;
    v26 = [(AVCatalystGlassPlaybackControlsController *)self isPictureInPictureActive];
    v27 = 1024;
    v28 = v6;
    v29 = 1024;
    v30 = v8;
    v31 = 1024;
    v32 = [(AVCatalystGlassPlaybackControlsController *)self isPopoverBeingPresented];
    v33 = 1024;
    v34 = [(AVCatalystGlassPlaybackControlsController *)self showsLoadingIndicator];
    v35 = 1024;
    v36 = [(AVCatalystGlassPlaybackControlsController *)self canHidePlaybackControls];
    _os_log_impl(&dword_18B49C000, v16, OS_LOG_TYPE_DEFAULT, "%s shouldShowPlaybackControls: %d {\n\twantsPlaybackControlsVisible: %d\n\tisUserInteracting: %d\n\tisPictureInPictureActive: %d\n\tplayingOnExternalScreen: %d\n\taudioOnlyContent: %d\n\tisPopoverBeingPresented: %d\n\tshowsLoadingIndicator: %d\n\tcanHidePlaybackControls: %d\n}", &v17, 0x42u);
  }

  [(AVCatalystGlassPlaybackControlsController *)self showPlaybackControls:v15 immediately:0];
}

- (void)togglePlaybackControlsVisibility
{
  v3 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  [v3 setPrefersVolumeSliderExpandedAutomatically:-[AVCatalystGlassPlaybackControlsController _prefersVolumeSliderExpandedAutomatically](self)];

  v4 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  if ([v4 isPlaying])
  {
    v5 = [(AVCatalystGlassPlaybackControlsController *)self isShowingPlaybackControls];

    if (!v5)
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

- (void)setForcePlaybackControlsHidden:(BOOL)a3
{
  if (self->_forcePlaybackControlsHidden != a3)
  {
    self->_forcePlaybackControlsHidden = a3;
    [(AVCatalystGlassPlaybackControlsController *)self _updatePlaybackControlsVisibleAndObservingUpdates];
  }
}

- (void)_updatePlaybackControlsVisibleAndObservingUpdates
{
  v132[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v80 = [a1 playbackControlsView];
  if (![a1 showsPlaybackControls] || (objc_msgSend(a1, "analysisInteractionInProgress") & 1) != 0 || (objc_msgSend(a1, "playerViewControllerIsBeingTransitionedWithResizing") & 1) != 0 || (objc_msgSend(a1, "forcePlaybackControlsHidden") & 1) != 0 || (objc_msgSend(a1, "isFullScreen") & 1) == 0 && (objc_msgSend(a1, "canIncludePlaybackControlsWhenInline") & 1) == 0)
  {
    if (![a1 hasCustomPlaybackControls] || !v80)
    {
LABEL_30:
      if (([a1 isHidingItemsForTransition] & 1) == 0)
      {
        [a1 beginHidingItemsForTransition];
      }

      goto LABEL_32;
    }

    v79 = 0;
  }

  else
  {
    if (!v80)
    {
      goto LABEL_21;
    }

    v79 = 1;
  }

  v2 = [a1 playbackControlsObservationController];

  if (v2)
  {
    if (!v79)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v3 = [[AVObservationController alloc] initWithOwner:a1];
    [a1 setPlaybackControlsObservationController:v3];

    v4 = [a1 playbackControlsView];

    if (!v4)
    {
      v5 = _AVLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v78 = _AVMethodProem(a1);
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v78;
        _os_log_error_impl(&dword_18B49C000, v5, OS_LOG_TYPE_ERROR, "Called %@ before creating playback controls view!", &buf, 0xCu);
      }
    }

    v6 = [a1 playbackControlsView];
    v7 = [a1 playbackControlsView];
    objc_initWeak(&location, v7);

    objc_initWeak(&from, a1);
    [a1 setResumingUpdates:1];
    v8 = [a1 playbackControlsObservationController];
    v111[0] = MEMORY[0x1E69E9820];
    v111[1] = 3221225472;
    v111[2] = __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke;
    v111[3] = &unk_1E7209A88;
    objc_copyWeak(&v112, &location);
    [a1 _observeBoolForKeyPath:@"prominentPlayButtonCanShowPauseGlyph" usingKeyValueObservationController:v8 observationHandler:v111];

    v9 = [a1 playbackControlsObservationController];
    v109[0] = MEMORY[0x1E69E9820];
    v109[1] = 3221225472;
    v109[2] = __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_2;
    v109[3] = &unk_1E7209A88;
    objc_copyWeak(&v110, &from);
    [a1 _observeBoolForKeyPath:@"showsProminentPlayButton" usingKeyValueObservationController:v9 observationHandler:v109];

    v10 = [a1 playbackControlsObservationController];
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v129 = __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_3;
    v130 = &unk_1E7208D40;
    objc_copyWeak(&v131, &location);
    objc_copyWeak(v132, &from);
    [a1 _observeBoolForKeyPath:@"playButtonsShowPauseGlyph" usingKeyValueObservationController:v10 observationHandler:&buf];

    v11 = [a1 playerControllerObservationController];
    v107[0] = MEMORY[0x1E69E9820];
    v107[1] = 3221225472;
    v107[2] = __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_4;
    v107[3] = &unk_1E7209A88;
    objc_copyWeak(&v108, &from);
    [a1 _observeBoolForKeyPath:@"playerController.muted" usingKeyValueObservationController:v11 observationHandler:v107];

    v12 = [a1 playerControllerObservationController];
    v105[0] = MEMORY[0x1E69E9820];
    v105[1] = 3221225472;
    v105[2] = __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_5;
    v105[3] = &unk_1E7209A88;
    objc_copyWeak(&v106, &from);
    [a1 _observeBoolForKeyPath:@"playerController.hasEnabledAudio" usingKeyValueObservationController:v12 observationHandler:v105];

    v13 = [a1 playerController];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [a1 playerControllerObservationController];
      v16 = [v15 startObserving:a1 keyPath:@"playerController.currentAssetIfReady" includeInitialValue:1 observationHandler:&__block_literal_global_268];
    }

    v17 = [a1 playbackControlsObservationController];
    v102[0] = MEMORY[0x1E69E9820];
    v102[1] = 3221225472;
    v102[2] = __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_7;
    v102[3] = &unk_1E7208D40;
    objc_copyWeak(&v103, &from);
    objc_copyWeak(&v104, &location);
    [a1 _observeBoolForKeyPath:@"prefersMuted" usingKeyValueObservationController:v17 observationHandler:v102];

    v18 = [a1 playbackControlsObservationController];
    v99[0] = MEMORY[0x1E69E9820];
    v99[1] = 3221225472;
    v99[2] = __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_8;
    v99[3] = &unk_1E7208D40;
    objc_copyWeak(&v100, &from);
    objc_copyWeak(&v101, &location);
    [a1 _observeBoolForKeyPath:@"fullScreen" usingKeyValueObservationController:v18 observationHandler:v99];

    v19 = [a1 playerControllerObservationController];
    v97[0] = MEMORY[0x1E69E9820];
    v97[1] = 3221225472;
    v97[2] = __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_9;
    v97[3] = &unk_1E7209A88;
    objc_copyWeak(&v98, &from);
    [a1 _observeBoolForKeyPath:@"playerController.playingOnExternalScreen" usingKeyValueObservationController:v19 observationHandler:v97];

    v20 = [a1 playerControllerObservationController];
    v94[0] = MEMORY[0x1E69E9820];
    v94[1] = 3221225472;
    v94[2] = __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_10;
    v94[3] = &unk_1E7208D40;
    objc_copyWeak(&v95, &location);
    objc_copyWeak(&v96, &from);
    [a1 _observeBoolForKeyPath:@"playerController.hasLiveStreamingContent" usingKeyValueObservationController:v20 observationHandler:v94];

    v21 = [a1 playbackControlsObservationController];
    v91[0] = MEMORY[0x1E69E9820];
    v91[1] = 3221225472;
    v91[2] = __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_11;
    v91[3] = &unk_1E7208D40;
    objc_copyWeak(&v92, &location);
    objc_copyWeak(&v93, &from);
    [a1 _observeBoolForKeyPath:@"hasSeekableLiveStreamingContent" usingKeyValueObservationController:v21 observationHandler:v91];

    v22 = [a1 playerControllerObservationController];
    v89[0] = MEMORY[0x1E69E9820];
    v89[1] = 3221225472;
    v89[2] = __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_12;
    v89[3] = &unk_1E7209A88;
    objc_copyWeak(&v90, &from);
    [a1 _observeBoolForKeyPath:@"playerController.playingOnMatchPointDevice" usingKeyValueObservationController:v22 observationHandler:v89];

    v23 = [a1 playerControllerObservationController];
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_13;
    v86[3] = &unk_1E7207D30;
    objc_copyWeak(&v87, &location);
    objc_copyWeak(&v88, &from);
    v24 = [v23 startObserving:a1 keyPath:@"playerController.loadedTimeRanges" includeInitialValue:1 observationHandler:v86];

    v25 = [a1 playbackControlsObservationController];
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_14;
    v83[3] = &unk_1E7208D40;
    objc_copyWeak(&v84, &location);
    objc_copyWeak(&v85, &from);
    [a1 _observeBoolForKeyPath:@"showsLoadingIndicator" usingKeyValueObservationController:v25 observationHandler:v83];

    v26 = [a1 playbackControlsObservationController];
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = __82__AVCatalystGlassPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_15;
    v81[3] = &unk_1E7209A88;
    objc_copyWeak(&v82, &from);
    [a1 _observeBoolForKeyPath:@"canShowLoadingIndicator" usingKeyValueObservationController:v26 observationHandler:v81];

    if (v6)
    {
      v27 = [v6 standardPlayPauseButton];
      v127 = v27;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v127 count:1];
      v29 = [a1 playerControllerObservationController];
      [a1 _bindEnabledStateOfControls:v28 toKeyPath:@"playerController.canTogglePlayback" usingObservationController:v29];

      v30 = [v6 scrubber];
      v126[0] = v30;
      v31 = [v6 skipBackButton];
      v126[1] = v31;
      v32 = [v6 skipForwardButton];
      v126[2] = v32;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:3];
      v34 = [a1 playbackControlsObservationController];
      [a1 _bindEnabledStateOfControls:v33 toKeyPath:@"seekingEnabled" usingObservationController:v34];

      v35 = [v6 startLeftwardContentTransitionButton];
      v125 = v35;
      v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v125 count:1];
      v37 = [a1 playbackControlsObservationController];
      [a1 _bindEnabledStateOfControls:v36 toKeyPath:@"startLeftwardContentTransitionButtonEnabled" usingObservationController:v37];

      v38 = [v6 startRightwardContentTransitionButton];
      v124 = v38;
      v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v124 count:1];
      v40 = [a1 playbackControlsObservationController];
      [a1 _bindEnabledStateOfControls:v39 toKeyPath:@"startRightwardContentTransitionButtonEnabled" usingObservationController:v40];

      v41 = [v6 scrubber];
      v123 = v41;
      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v123 count:1];
      v43 = [a1 playbackControlsObservationController];
      [a1 _bindEnabledStateOfControls:v42 toKeyPath:@"isSeekingEnabled" usingObservationController:v43];

      v44 = [v6 transportControlsView];
      v122 = v44;
      v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v122 count:1];
      [a1 _bindInclusionOfControlItems:v45 toKeyPath:@"showsTransportControls"];

      v46 = [v6 skipBackButton];
      v121[0] = v46;
      v47 = [v6 skipForwardButton];
      v121[1] = v47;
      v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v121 count:2];
      [a1 _bindInclusionOfControlItems:v48 toKeyPath:@"showsSkipButtons"];

      v49 = [v6 startLeftwardContentTransitionButton];
      v120[0] = v49;
      v50 = [v6 startRightwardContentTransitionButton];
      v120[1] = v50;
      v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:2];
      [a1 _bindInclusionOfControlItems:v51 toKeyPath:@"showsStartContentTransitionButtons"];

      v52 = [v6 routePickerView];
      v119 = v52;
      v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v119 count:1];
      [a1 _bindInclusionOfControlItems:v53 toKeyPath:@"showsRoutePickerView"];

      v54 = [v6 mediaSelectionButton];
      v118 = v54;
      v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v118 count:1];
      [a1 _bindInclusionOfControlItems:v55 toKeyPath:@"showsMediaSelectionButton"];

      v56 = [v6 playbackSpeedButton];
      v117 = v56;
      v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v117 count:1];
      [a1 _bindInclusionOfControlItems:v57 toKeyPath:@"showsPlaybackSpeedButton"];
    }

    v58 = [a1 playbackControlsObservationController];
    v116[0] = @"minimumTime";
    v116[1] = @"maximumTime";
    v116[2] = @"currentTime";
    v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:3];
    v60 = [v58 startObserving:a1 keyPaths:v59 includeInitialValue:1 observationHandler:&__block_literal_global_334];

    v61 = [a1 playbackControlsObservationController];
    [v61 startObservingNotificationForName:*MEMORY[0x1E69DE828] object:0 notificationCenter:0 observationHandler:&__block_literal_global_336];

    v62 = [a1 playbackControlsObservationController];
    [v62 startObservingNotificationForName:*MEMORY[0x1E69DE7D0] object:0 notificationCenter:0 observationHandler:&__block_literal_global_338];

    v63 = [a1 playbackControlsObservationController];
    v64 = [a1 playbackRateMenuController];
    v65 = [v63 startObserving:v64 keyPath:@"menu" observationHandler:&__block_literal_global_344];

    v66 = [a1 playbackControlsObservationController];
    v67 = [v66 startObserving:a1 keyPath:@"showsMediaSelectionButton" observationHandler:&__block_literal_global_346];

    v68 = [a1 playbackControlsObservationController];
    v69 = [a1 playerController];
    v115[0] = @"audioMediaSelectionOptions";
    v115[1] = @"legibleMediaSelectionOptions";
    v115[2] = @"currentAudioMediaSelectionOption";
    v115[3] = @"currentLegibleMediaSelectionOption";
    v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:4];
    v71 = [v68 startObserving:v69 keyPaths:v70 observationHandler:&__block_literal_global_360];

    v72 = [a1 volumeController];
    [v72 volume];
    [a1 _updateVolumeSliderValueWithSystemVolume:0 animated:?];

    v73 = [a1 playbackControlsView];
    [v73 setHidden:0];

    [a1 setResumingUpdates:0];
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
  [v80 setHidden:0];
  [a1 _updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:{objc_msgSend(a1, "showsPlaybackControls")}];
  if ([a1 isHidingItemsForTransition])
  {
    if (![a1 isFullScreen] || objc_msgSend(a1, "timeControlStatus") != 2)
    {
      goto LABEL_28;
    }

    v74 = [a1 playerController];
    if (([v74 isPlayingOnExternalScreen] & 1) == 0)
    {
      v75 = [a1 playerViewController];
      if (![v75 isAudioOnlyContent])
      {
        v77 = [a1 canHidePlaybackControls];

        if (v77)
        {
          v76 = 0;
          goto LABEL_29;
        }

LABEL_28:
        v76 = [a1 isPictureInPictureActive] ^ 1;
LABEL_29:
        [a1 endHidingItemsForTransitionAndShowImmediately:v76];
        goto LABEL_32;
      }
    }

    goto LABEL_28;
  }

LABEL_32:
  [(AVCatalystGlassPlaybackControlsController *)a1 _updateRouteDetectionEnabled];
}

- (void)_updateRouteDetectionEnabled
{
  if (!a1)
  {
    return;
  }

  v9 = [a1 routeDetectorCoordinator];
  v2 = [a1 playerViewController];
  if ([v2 isBeingPresented])
  {
  }

  else
  {
    v3 = [a1 playerViewController];
    v4 = [v3 fullScreenViewController];
    v5 = [v4 isBeingPresented];

    if ((v5 & 1) == 0)
    {
      v6 = [a1 playbackControlsView];
      v7 = [v6 avkit_isInAWindowAndVisible];

      if (!v7)
      {
        goto LABEL_9;
      }
    }
  }

  if (![a1 showsPlaybackControls])
  {
LABEL_9:
    v8 = 0;
    goto LABEL_11;
  }

  if ([a1 isFullScreen])
  {
    v8 = 1;
  }

  else
  {
    v8 = [a1 canIncludePlaybackControlsWhenInline];
  }

LABEL_11:
  [v9 setRouteDetectionEnabled:v8];
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
  if (!a1)
  {
    return;
  }

  v2 = [a1 playbackControlsView];
  v86 = [v2 transportControlsView];

  v3 = [MEMORY[0x1E69DC888] clearColor];
  [v86 setBackgroundColor:v3];

  if (![a1 needsTimeResolver] || (objc_msgSend(a1, "timeResolver"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v17 = [a1 timeResolver];

    v15 = 0;
    v16 = 0;
    if (v17)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  [a1 maximumTime];
  v6 = v5;
  [a1 minimumTime];
  v8 = v6 - v7;
  v9 = [a1 elapsedTimeFormatter];
  [v9 setFormatTemplate:v8];

  v10 = [a1 remainingTimeFormatter];
  [v10 setFormatTemplate:v8];

  if ([v86 liveStreamingControlsIncludeScrubber])
  {
    v11 = [a1 elapsedTimeFormatter];
    [a1 minimumTime];
    v13 = v12;
    [a1 maximumTime];
    v15 = [v11 stringFromSeconds:v13 - v14];
    v16 = &stru_1EFED57D8;
  }

  else
  {
    if ([a1 showsTimecodes] && (objc_msgSend(a1, "playerController"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "hasReadableTimecodes"), v18, v19))
    {
      v20 = [a1 playerController];
      v15 = [v20 timecodeForCurrentTime];

      v11 = [a1 playerController];
      v21 = [v11 maxTimecode];
    }

    else
    {
      v22 = [a1 elapsedTimeFormatter];
      [a1 targetTime];
      v15 = [v22 stringFromSeconds:?];

      v11 = [a1 remainingTimeFormatter];
      [a1 maximumTime];
      v24 = v23;
      [a1 targetTime];
      v21 = [v11 stringFromSeconds:v24 - v25];
    }

    v16 = v21;
  }

  [a1 minimumTime];
  [a1 minimumTime];
  if (fabs(v26) == INFINITY || ([a1 maximumTime], objc_msgSend(a1, "maximumTime"), fabs(v27) == INFINITY) || (objc_msgSend(a1, "currentTime"), objc_msgSend(a1, "currentTime"), fabs(v28) == INFINITY) || (objc_msgSend(a1, "maximumTime"), v30 = v29, objc_msgSend(a1, "minimumTime"), v30 <= v31) || (objc_msgSend(a1, "currentTime"), v33 = v32, objc_msgSend(a1, "minimumTime"), v33 < v34) && (objc_msgSend(a1, "currentTime"), v36 = v35, objc_msgSend(a1, "maximumTime"), v36 > v37))
  {
LABEL_19:
    v38 = [a1 elapsedTimeFormatter];
    v39 = [v38 stringFromSeconds:NAN];

    v40 = [a1 remainingTimeFormatter];
    v41 = [v40 stringFromSeconds:NAN];

    v42 = [v86 scrubber];
    [v42 setMinimumValue:0.0];

    v43 = [v86 scrubber];
    [v43 setValue:0 animated:0.0];

    v44 = [v86 scrubber];
    LODWORD(v45) = 1.0;
    [v44 setMaximumValue:v45];
    v16 = v41;
    v15 = v39;
    goto LABEL_20;
  }

  [a1 minimumTime];
  v67 = v66;
  [a1 maximumTime];
  v69 = v68;
  v70 = [v86 scrubber];
  *&v71 = v67;
  [v70 setMinimumValue:v71];

  v72 = [v86 scrubber];
  *&v73 = v69;
  [v72 setMaximumValue:v73];

  v44 = [v86 scrubber];
  if (([v44 isTracking] & 1) == 0)
  {
    v74 = [a1 playerController];
    if ([v74 isPlayingOnExternalScreen])
    {
      v75 = [v86 scrubber];
      [v75 timeIntervalSinceTrackingEnded];
      v77 = v76;

      if (v77 <= 0.5)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

    [a1 targetTime];
    v79 = v78;
    v80 = [a1 playerController];
    if ([v80 hasSeekableLiveStreamingContent])
    {
      v81 = [a1 playerController];
      v82 = [v81 isPlaying];

      v83 = v82 ^ 1;
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

    v44 = [v86 scrubber];
    *&v85 = v69;
    [v44 setValue:0 animated:v85];
  }

LABEL_20:

LABEL_21:
  if (v15 && v16)
  {
    v46 = [v86 elapsedTimeLabel];
    v47 = [v46 text];

    v48 = [v86 elapsedTimeLabel];
    v49 = [v48 text];

    v50 = [v86 elapsedTimeLabel];
    [v50 setText:v15];

    v51 = [v86 timeRemainingLabel];
    [v51 setText:v16];

    v52 = [v47 length];
    if (v52 != [v15 length] || (v53 = objc_msgSend(v49, "length"), v53 != -[__CFString length](v16, "length")))
    {
      [v86 setNeedsLayout];
    }
  }

LABEL_27:
  v54 = [a1 playerController];
  v55 = objc_opt_respondsToSelector();
  if ((v55 & 1) == 0)
  {
    goto LABEL_35;
  }

  v56 = [a1 playerController];
  v57 = [v56 interstitialController];
  v58 = [v57 currentInterstitialTimeRange];

  if (!v58)
  {
    v54 = [a1 playerController];
    v59 = [v54 player];
    v60 = [v59 currentItem];
    v61 = [v60 interstitialTimeRanges];
    if ([v61 count])
    {
      v62 = [v86 scrubber];
      v63 = [v62 interstitialDisplayTimes];

      if (v63)
      {
        v55 = 1;
        goto LABEL_36;
      }

      v54 = [v86 scrubber];
      v59 = [a1 playerController];
      v60 = [v59 player];
      v61 = [v60 currentItem];
      v64 = [v61 interstitialTimeRanges];
      [v54 setInterstitialDisplayTimes:v64];
    }

LABEL_35:
    goto LABEL_36;
  }

  v55 = 0;
LABEL_36:
  v65 = [v86 scrubber];
  [v65 setShowsTimelineMarkers:v55 & 1];
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
  if (a1)
  {
    v6 = [a1 playerController];
    if ([v6 hasLiveStreamingContent])
    {
      v2 = [v6 hasSeekableLiveStreamingContent];
    }

    else
    {
      v2 = 1;
    }

    v3 = [a1 playbackSpeedCollection];
    if (v3)
    {
      v4 = +[AVKitGlobalSettings shared];
      if ([v4 playbackSpeedControlEnabled])
      {
        v5 = ([v6 isPlayingOnMatchPointDevice] ^ 1) & v2;
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

    if (v5 != [a1 showsPlaybackSpeedButton])
    {
      [a1 setShowsPlaybackSpeedButton:v5];
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
  v2 = [result playerController];
  if (![v2 hasVideo] || !objc_msgSend(v1, "isFullScreen"))
  {
    goto LABEL_6;
  }

  v3 = [v1 playerController];
  if ([v3 isPlayingOnExternalScreen])
  {

    goto LABEL_6;
  }

  v5 = [v1 playerViewController];
  v6 = [v5 contentTransitioningDelegate];

  if (v6)
  {
    v4 = 0;
  }

  else
  {
    v7 = [v1 playerController];
    [v7 contentDimensions];
    v9 = v8;
    v11 = v10;

    if ([v1 hasBecomeReadyToPlay])
    {
      v14 = ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v11 >= 0.0 || (*&v11 - 1) < 0xFFFFFFFFFFFFFLL;
      v16 = (v9 < 0.0 || ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&v9 - 1) > 0xFFFFFFFFFFFFELL;
      v4 = 1;
      if (!v16 && v14)
      {
        v17 = [v1 playerViewController];
        v2 = [v17 contentView];

        [v2 bounds];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v26 = v9 / v11;
        [v2 frame];
        UIRectGetCenter();
        v28 = v27;
        v30 = v29;
        v31 = [v2 cacheLargestInscribedRect];
        [v31 getLargestInscribableRectForView:v2 withCenter:v28 aspectRatio:{v30, v26}];
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
  if (a1)
  {
    v2 = [a1 playbackControlsView];

    if (v2)
    {
      v3 = [a1 showsProminentPlayButton];
      v4 = [a1 playbackControlsIncludeTransportControls];
      v5 = [a1 playbackControlsIncludeDisplayModeControls];
      v6 = [a1 playbackControlsIncludeVolumeControls];
      if (([a1 isFullScreen] & 1) != 0 || !objc_msgSend(a1, "showsMinimalPlaybackControlsWhenEmbeddedInline"))
      {
        if (v3)
        {
          v7 = 2;
        }

        else
        {
          v7 = 0;
        }

        if (v4)
        {
          if (v5)
          {
            v7 |= 0xCuLL;
          }

          else
          {
            v7 |= 4uLL;
          }
        }

        else if (v5)
        {
          v7 |= 8uLL;
        }
      }

      else
      {
        v6 = v3 ^ 1u;
        if (v3)
        {
          v7 = 2;
        }

        else
        {
          v7 = 0;
        }
      }

      v8 = [a1 playbackControlsView];
      [v8 setPrefersVolumeSliderExpandedAutomatically:v6];

      if (!v6 || ([a1 shouldShowVolumeControlInTransportBar] & 1) != 0)
      {
        goto LABEL_23;
      }

      v9 = [a1 playerController];
      if ([v9 hasEnabledAudio])
      {
      }

      else
      {
        v10 = [a1 showsVolumeControlsForContentWithNoAudio];

        if (!v10)
        {
LABEL_23:
          v11 = [a1 playbackControlsView];
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __70__AVCatalystGlassPlaybackControlsController__updateContainerInclusion__block_invoke;
          v12[3] = &unk_1E720A090;
          v12[4] = a1;
          [v11 setIncludedContainers:v7 animations:v12];

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
  if (!a1)
  {
    return;
  }

  if (![a1 needsTimeResolver])
  {
    v25 = [a1 timeResolver];
    [v25 setPlayerController:0];

    [a1 setTimeResolver:0];
    return;
  }

  v2 = [a1 playbackControlsView];
  v3 = [v2 transportControlsView];
  v4 = [v3 scrubber];
  v5 = 1.0;
  if (([v4 isTracking] & 1) == 0)
  {
    v6 = [a1 playbackControlsView];
    v7 = [v6 volumeSlider];
    v8 = [v7 isTracking];

    if (v8)
    {
      goto LABEL_7;
    }

    v2 = [a1 playbackControlsView];
    v3 = [v2 transportControlsView];
    v4 = [v3 scrubber];
    [v4 frame];
    Width = CGRectGetWidth(v36);
    v10 = [a1 playbackControlsView];
    v11 = [v10 traitCollection];
    [v11 displayScale];
    v5 = Width * v12;
  }

LABEL_7:
  v13 = 1.0;
  if ([a1 showsTimecodes])
  {
    v14 = [a1 playerController];
    v15 = [v14 hasReadableTimecodes];

    if (v15)
    {
      v16 = [a1 playerController];
      [v16 timecodeObservationInterval];
      v13 = v17;
    }
  }

  v18 = [a1 timeResolver];
  v19 = [v18 playerController];
  v20 = [a1 playerController];

  if (v19 != v20)
  {
    v21 = objc_alloc_init(AVPlayerControllerTimeResolver);
    v22 = [a1 playerController];
    [(AVPlayerControllerTimeResolver *)v21 setPlayerController:v22];

    [(AVPlayerControllerTimeResolver *)v21 setResolution:v5];
    [(AVPlayerControllerTimeResolver *)v21 setInterval:v13];
    v23 = MEMORY[0x1E69DD250];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __80__AVCatalystGlassPlaybackControlsController__updateOrCreateTimeResolverIfNeeded__block_invoke;
    v33[3] = &unk_1E7209FB0;
    v33[4] = a1;
    v34 = v21;
    v24 = v21;
    [v23 performWithoutAnimation:v33];

    return;
  }

  v26 = [a1 timeResolver];
  [v26 resolution];
  if (v27 == v5)
  {
    v28 = [a1 timeResolver];
    [v28 interval];
    v30 = vabdd_f64(v29, v13);

    if (v30 < 2.22044605e-16)
    {
      return;
    }
  }

  else
  {
  }

  v31 = [a1 timeResolver];
  [v31 setResolution:v5];

  v32 = [a1 timeResolver];
  [v32 setInterval:v13];
}

void __80__AVCatalystGlassPlaybackControlsController__updateOrCreateTimeResolverIfNeeded__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setTimeResolver:*(a1 + 40)];
  v4 = [*(a1 + 32) playbackControlsView];
  v2 = [v4 transportControlsView];
  v3 = [v2 scrubber];
  [v3 layoutIfNeeded];
}

- (void)_seekByTimeInterval:(double)a3 toleranceBefore:(double)a4 toleranceAfter:(double)a5
{
  v9 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  v10 = objc_opt_respondsToSelector();

  v12 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  if (v10)
  {
    [v12 seekByTimeInterval:a3 toleranceBefore:a4 toleranceAfter:a5];
  }

  else
  {
    [(AVCatalystGlassPlaybackControlsController *)self currentTime];
    [v12 seekToTime:v11 + a3];
  }
}

- (void)_observeBoolForKeyPath:(id)a3 usingKeyValueObservationController:(id)a4 observationHandler:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(AVCatalystGlassPlaybackControlsController *)self valueForKeyPath:v8];
  v12 = [v10 copy];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __122__AVCatalystGlassPlaybackControlsController__observeBoolForKeyPath_usingKeyValueObservationController_observationHandler___block_invoke;
  v15[3] = &unk_1E7208CF8;
  v13 = v12;
  v16 = v13;
  v14 = [v9 startObserving:self keyPath:v8 includeInitialValue:1 observationHandler:v15];
}

void __122__AVCatalystGlassPlaybackControlsController__observeBoolForKeyPath_usingKeyValueObservationController_observationHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 32);
  v5 = [a4 value];
  (*(v4 + 16))(v4, [v5 BOOLValue]);
}

- (void)_bindInclusionOfControlItems:(id)a3 toKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsObservationController];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__AVCatalystGlassPlaybackControlsController__bindInclusionOfControlItems_toKeyPath___block_invoke;
  v10[3] = &unk_1E7208CD0;
  v9 = v6;
  v11 = v9;
  objc_copyWeak(&v12, &location);
  [(AVCatalystGlassPlaybackControlsController *)self _observeBoolForKeyPath:v7 usingKeyValueObservationController:v8 observationHandler:v10];

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

- (void)_bindEnabledStateOfControls:(id)a3 toKeyPath:(id)a4 usingObservationController:(id)a5
{
  v8 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __110__AVCatalystGlassPlaybackControlsController__bindEnabledStateOfControls_toKeyPath_usingObservationController___block_invoke;
  v10[3] = &unk_1E7208E90;
  v11 = v8;
  v9 = v8;
  [(AVCatalystGlassPlaybackControlsController *)self _observeBoolForKeyPath:a4 usingKeyValueObservationController:a5 observationHandler:v10];
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

- (void)startContentTransitionButtonTouchUpInside:(id)a3
{
  v14 = a3;
  v4 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  v5 = [v4 effectiveUserInterfaceLayoutDirection];

  v6 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  v7 = [v6 startLeftwardContentTransitionButton];

  if (v7 == v14)
  {
    if (v5)
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
    v8 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    v9 = [v8 startRightwardContentTransitionButton];

    v10 = 1;
    if (v5)
    {
      v10 = 2;
    }

    if (v9 == v14)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  v12 = [(AVCatalystGlassPlaybackControlsController *)self contentTransitionAction];

  if (v12)
  {
    v13 = [(AVCatalystGlassPlaybackControlsController *)self contentTransitionAction];
    v13[2](v13, v11);
  }
}

- (void)skipButtonForcePressChanged:(id)a3
{
  v11 = a3;
  [v11 maximumForceSinceTrackingBegan];
  v5 = v4;
  [v11 forceThreshold];
  if (v5 >= v6)
  {
    v7 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    v8 = [v7 skipForwardButton];

    v9 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
    [v11 force];
    if (v8 != v11)
    {
      v10 = -v10;
    }

    [v9 setRateWithForce:v10];
  }
}

- (void)skipButtonLongPressEnded:(id)a3
{
  v10 = a3;
  v4 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  v5 = [v4 skipBackButton];

  if (v5 == v10)
  {
    v9 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
    [v9 endScanningBackward:v10];
  }

  else
  {
    v6 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    v7 = [v6 skipForwardButton];

    v8 = v10;
    if (v7 != v10)
    {
      goto LABEL_6;
    }

    v9 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
    [v9 endScanningForward:v10];
  }

  v8 = v10;
LABEL_6:
}

- (void)skipButtonLongPressTriggered:(id)a3
{
  v10 = a3;
  v4 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  v5 = [v4 skipBackButton];

  if (v5 == v10)
  {
    v9 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
    [v9 beginScanningBackward:v10];
  }

  else
  {
    v6 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    v7 = [v6 skipForwardButton];

    v8 = v10;
    if (v7 != v10)
    {
      goto LABEL_6;
    }

    v9 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
    [v9 beginScanningForward:v10];
  }

  v8 = v10;
LABEL_6:
}

- (void)skipButtonTouchUpInside:(id)a3
{
  v16 = a3;
  if (([v16 wasLongPressed] & 1) == 0)
  {
    [v16 maximumForceSinceTrackingBegan];
    v5 = v4;
    [v16 forceThreshold];
    if (v5 < v6)
    {
      v7 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
      v8 = [v7 skipForwardButton];
      if (v8 == v16)
      {
        v9 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
        v10 = [v9 transportControlsView];
        v11 = [v10 liveStreamingControlsIncludeScrubber];

        if (v11)
        {
          v12 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
          [v12 gotoEndOfSeekableRanges:v16];

          goto LABEL_10;
        }
      }

      else
      {
      }

      v13 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
      v14 = [v13 skipForwardButton];

      v15 = -15.0;
      if (v14 == v16)
      {
        v15 = 15.0;
      }

      [(AVCatalystGlassPlaybackControlsController *)self _seekByTimeInterval:v15 toleranceBefore:0.5 toleranceAfter:0.5];
    }
  }

LABEL_10:
}

- (void)prominentPlayButtonTouchUpInside:(id)a3
{
  v14 = a3;
  v4 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  if ([v4 canTogglePlayback])
  {
    v5 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
    v6 = [v5 isPlaying];

    if ((v6 & 1) == 0)
    {
      v7 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
      [v7 togglePlayback:v14];

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

  v8 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  if ([v8 status])
  {

LABEL_8:
    v9 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
    v10 = [v9 status] == 2;
    v11 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
    -[AVCatalystGlassPlaybackControlsController _updateHasPlaybackBegunSincePlayerControllerBecameReadyToPlay:playing:userDidEndTappingProminentPlayButton:](self, "_updateHasPlaybackBegunSincePlayerControllerBecameReadyToPlay:playing:userDidEndTappingProminentPlayButton:", v10, [v11 isPlaying], 1);

    goto LABEL_9;
  }

  v12 = [(AVCatalystGlassPlaybackControlsController *)self playButtonHandlerForLazyPlayerLoading];

  if (!v12)
  {
    goto LABEL_8;
  }

  [(AVCatalystGlassPlaybackControlsController *)self startUpdatesIfNeeded];
  v13 = [(AVCatalystGlassPlaybackControlsController *)self playButtonHandlerForLazyPlayerLoading];
  v13[2]();

LABEL_9:
}

- (void)playbackSpeedButtonTapped:(id)a3
{
  v4 = [(AVCatalystGlassPlaybackControlsController *)self playbackSpeedCollection];
  [v4 selectNextPlaybackSpeed:self];
}

- (id)overflowMenuItemsForControlOverflowButton:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  v7 = [v6 mediaSelectionButton];
  if ([v7 isIncluded])
  {
    v8 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    v9 = [v8 mediaSelectionButton];
    v10 = [v9 isCollapsed];

    if (!v10)
    {
      goto LABEL_12;
    }

    v6 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
    v7 = [v6 audioMediaSelectionOptions];
    v11 = [v6 legibleMediaSelectionOptions];
    mediaSelectionMenuController = self->_mediaSelectionMenuController;
    if (mediaSelectionMenuController)
    {
      [(AVMediaSelectionMenuController *)mediaSelectionMenuController setAudibleOptions:v7];
      [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController setLegibleOptions:v11];
    }

    else
    {
      v13 = [[AVMediaSelectionMenuController alloc] initWithAudibleOptions:v7 legibleOptions:v11];
      v14 = self->_mediaSelectionMenuController;
      self->_mediaSelectionMenuController = v13;

      [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController setDelegate:self];
    }

    v15 = [v6 audioMediaSelectionOptions];
    v16 = [v6 currentAudioMediaSelectionOption];
    v17 = [v15 indexOfObject:v16];

    v18 = [v6 legibleMediaSelectionOptions];
    v19 = [v6 currentLegibleMediaSelectionOption];
    v20 = [v18 indexOfObject:v19];

    [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController setCurrentAudibleOptionIndex:v17];
    [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController setCurrentLegibleOptionIndex:v20];
    v21 = [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController audibleOptionsMenu];

    if (v21)
    {
      v22 = [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController audibleOptionsMenu];
      [v5 addObject:v22];
    }

    v23 = [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController legibleOptionsMenu];

    if (v23)
    {
      v24 = [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController legibleOptionsMenu];
      [v5 addObject:v24];
    }
  }

LABEL_12:
  v25 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  v26 = [v25 playbackSpeedButton];
  if (([v26 isIncluded] & 1) == 0)
  {

    goto LABEL_16;
  }

  v27 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  v28 = [v27 playbackSpeedButton];
  v29 = [v28 isCollapsed];

  if (v29)
  {
    v30 = [(AVCatalystGlassPlaybackControlsController *)self playbackRateMenuController];
    v25 = [v30 menu];

    [v5 addObject:v25];
LABEL_16:
  }

  if (self && [(AVCatalystGlassPlaybackControlsController *)self showsVideoZoomControl]&& [(AVCatalystGlassPlaybackControlsController *)self hasBecomeReadyToPlay]&& [(AVCatalystGlassPlaybackControlsController *)self isFullScreen])
  {
    v31 = MEMORY[0x1E69DCAB8];
    v32 = [(AVCatalystGlassPlaybackControlsController *)self videoGravityType];
    if (v32 > 4)
    {
      v33 = 0;
    }

    else
    {
      v33 = *off_1E7208E18[v32];
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

    [v5 addObject:v37];
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

    [v5 addObject:v41];
    objc_destroyWeak(&v60);
    objc_destroyWeak(&location);
  }

  if (self->_transportBarCustomMenuItems)
  {
    v42 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    v43 = [v42 transportControlsView];
    v44 = [v43 customMenuItemsViews];

    v45 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_244];
    v46 = [v44 filteredArrayUsingPredicate:v45];

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

    [v5 addObjectsFromArray:v52];
  }

  return v5;
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

- (BOOL)shouldApplyLegibleMediaSelectionCriteriaAutomaticallyForMediaSelectionMenuController:(id)a3
{
  v3 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  v4 = [v3 closedCaptionsEnabled];

  return v4;
}

- (void)mediaSelectionMenuController:(id)a3 didSelectOption:(id)a4
{
  v10 = a4;
  v6 = [a3 audibleOptions];
  v7 = [v6 containsObject:v10];

  v8 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  v9 = v8;
  if (v7)
  {
    [v8 setCurrentAudioMediaSelectionOption:v10];
  }

  else
  {
    [v8 setCurrentLegibleMediaSelectionOption:v10];
  }
}

- (void)_updateVolumeSliderValueWithSystemVolume:(float)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = 0.0;
  if (![(AVCatalystGlassPlaybackControlsController *)self prefersMuted])
  {
    v8 = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
    v9 = [v8 currentRouteHasVolumeControl];

    if (v9)
    {
      v7 = a3;
    }

    else
    {
      v7 = 1.0;
    }
  }

  v12 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  v10 = [v12 volumeSlider];
  *&v11 = v7;
  [v10 setValue:v4 animated:v11];
}

- (id)_volumeButtonMicaPackageState
{
  if ([(AVCatalystGlassPlaybackControlsController *)self prefersMuted])
  {
    goto LABEL_2;
  }

  v5 = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
  v6 = [v5 currentRouteHasVolumeControl];

  v4 = &AVVolumeGlyphStateNameMax;
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  if (!v7 || [(AVCatalystGlassPlaybackControlsController *)self isResumingUpdates])
  {
    v8 = 0;
    goto LABEL_7;
  }

  v6 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  v2 = [v6 volumeSlider];
  if ([v2 isHiddenOrHasHiddenAncestor])
  {
    v8 = 1;
LABEL_7:
    v9 = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
    [v9 volume];
    v11 = v10;

    if (!v8)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v12 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  v13 = [v12 volumeSlider];
  [v13 value];
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
  v6 = [(AVCatalystGlassPlaybackControlsController *)self _volumeButtonMicaPackageState];
  v3 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  v4 = [v3 volumeButton];
  [v4 setMicaPackageStateName:v6];

  v5 = [(AVCatalystGlassPlaybackControlsController *)self turboModePlaybackControlsPlaceholderView];
  [v5 setVolumeButtonMicaPackageStateName:v6];
}

- (void)_showOrHideDisplayModeControls
{
  if (-[AVCatalystGlassPlaybackControlsController playbackControlsIncludeDisplayModeControls](self, "playbackControlsIncludeDisplayModeControls") || (-[AVCatalystGlassPlaybackControlsController playbackControlsView](self, "playbackControlsView"), v3 = objc_claimAutoreleasedReturnValue(), [v3 customDisplayModeItems], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v3, !v5))
  {
    v7 = ![(AVCatalystGlassPlaybackControlsController *)self isFullScreen]&& [(AVCatalystGlassPlaybackControlsController *)self allowsEnteringFullScreen];
    if ([(AVCatalystGlassPlaybackControlsController *)self showsDoneButtonWhenFullScreen])
    {
      v6 = [(AVCatalystGlassPlaybackControlsController *)self isFullScreen];
    }

    else
    {
      v6 = 0;
    }

    v8 = [(AVCatalystGlassPlaybackControlsController *)self showsPictureInPictureButton];
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  v9 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  v10 = [v9 fullScreenButton];
  if (v7 != [v10 isIncluded])
  {
    goto LABEL_16;
  }

  v11 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  v12 = [v11 doneButton];
  if (v6 != [v12 isIncluded])
  {
LABEL_15:

LABEL_16:
    goto LABEL_17;
  }

  HIDWORD(v28) = v6;
  [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  v14 = v13 = v8;
  v15 = [v14 pictureInPictureButton];
  v29 = v13;
  if (v13 != [v15 isIncluded])
  {

    v6 = HIDWORD(v28);
    v8 = v13;
    goto LABEL_15;
  }

  v26 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  v27 = [v26 routePickerView];
  LODWORD(v28) = [v27 isIncluded];

  v6 = HIDWORD(v28);
  v8 = v29;
  if (v28)
  {
    return;
  }

LABEL_17:
  v16 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];

  if (!v16)
  {
    return;
  }

  v30 = [MEMORY[0x1E695DF70] array];
  if (!v7)
  {
    if (!v6)
    {
      goto LABEL_20;
    }

LABEL_26:
    v24 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    v25 = [v24 doneButton];
    [v30 addObject:v25];

    if (!v8)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v22 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  v23 = [v22 fullScreenButton];
  [v30 addObject:v23];

  if (v6)
  {
    goto LABEL_26;
  }

LABEL_20:
  if (v8)
  {
LABEL_21:
    v17 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    v18 = [v17 pictureInPictureButton];
    [v30 addObject:v18];
  }

LABEL_22:
  v19 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  v20 = [v19 routePickerView];
  [v30 addObject:v20];

  v21 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  [v21 updateDisplayControlsVisibilityIncludedButtons:v30];
}

- (void)updateVolumeSliderValue:(id)a3 volumeButtonControl:(id)a4
{
  v30 = a3;
  v6 = a4;
  [v30 frame];
  Width = CGRectGetWidth(v32);
  if (Width > 0.0)
  {
    v8 = Width;
    v9 = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
    v10 = [v9 currentRouteHasVolumeControl];

    if (v10)
    {
      [v30 value];
      v12 = v11;
      [v6 translationOfPanFromPreviousTouch];
      v14 = v13 / v8;
      v15 = [v6 window];
      [v15 bounds];
      MaxX = CGRectGetMaxX(v33);
      [v6 locationOfTouchInWindow];
      v18 = v17;

      if ([v6 effectiveUserInterfaceLayoutDirection] == 1)
      {
        [v6 locationOfTouchInWindow];
        v21 = v20;
        v22 = [v6 window];
        [v22 bounds];
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
      [v30 setValue:v19];
      if (v12 != v28 && (v28 == 0.0 || v28 == 1.0))
      {
        [v6 triggerSelectionChangedFeedback];
      }

      [(AVCatalystGlassPlaybackControlsController *)self volumeSliderValueDidChange:v30];
    }
  }
}

- (void)volumeButtonPanChanged:(id)a3
{
  v4 = a3;
  [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:1];
  [(AVCatalystGlassPlaybackControlsController *)self setPrefersMuted:0];
  v6 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  v5 = [v6 volumeSlider];
  [(AVCatalystGlassPlaybackControlsController *)self updateVolumeSliderValue:v5 volumeButtonControl:v4];
}

- (void)endChangingVolume
{
  v2 = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
  [v2 endChangingVolume];
}

- (void)beginChangingVolume
{
  v2 = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
  [v2 beginChangingVolume];
}

- (void)volumeButtonTapTriggered:(id)a3
{
  v4 = a3;
  v5 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  [v5 toggleMuted:v4];

  v6 = [(AVCatalystGlassPlaybackControlsController *)self turboModePlaybackControlsPlaceholderView];

  if (v6)
  {

    [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeButtonGlyph];
  }
}

- (void)volumeSliderValueDidChange:(id)a3
{
  v4 = a3;
  [(AVCatalystGlassPlaybackControlsController *)self beginChangingVolume];
  v5 = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
  [v4 value];
  v7 = v6;

  LODWORD(v8) = v7;
  [v5 setTargetVolume:v8];

  [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeButtonGlyph];
}

- (void)handleCurrentRouteSupportsVolumeControlChanged:(id)a3
{
  v4 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  v5 = [v4 volumeSlider];
  v6 = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
  [v5 setEnabled:{objc_msgSend(v6, "currentRouteHasVolumeControl")}];

  v7 = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
  LOBYTE(v5) = [v7 currentRouteHasVolumeControl];

  if ((v5 & 1) == 0)
  {
    v8 = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
    -[AVCatalystGlassPlaybackControlsController _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:](self, "_updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:", [v8 currentRouteHasVolumeControl]);
  }

  v9 = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
  [v9 volume];
  [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeSliderValueWithSystemVolume:0 animated:?];
}

- (void)handleVolumeChange:(id)a3
{
  v4 = a3;
  v5 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  v6 = [v5 volumeSlider];
  v7 = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
  [v6 setEnabled:{objc_msgSend(v7, "currentRouteHasVolumeControl")}];

  v8 = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
  [v8 volume];
  v10 = v9;

  v11 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  v12 = [v11 volumeSlider];
  if ([v12 isTracking])
  {
  }

  else
  {
    v13 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    v14 = [v13 volumeButton];
    v15 = [v14 isTracking];

    if ((v15 & 1) == 0)
    {
      LODWORD(v16) = v10;
      [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeSliderValueWithSystemVolume:0 animated:v16];
    }
  }

  [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeButtonGlyph];
  v17 = [v4 userInfo];

  v18 = [v17 objectForKeyedSubscript:@"AVVolumeControllerVolumeDidChangeNotificationIsInitialValueKey"];
  v19 = [v18 BOOLValue];

  if ((v19 & 1) == 0)
  {
    if (-[AVCatalystGlassPlaybackControlsController isFullScreen](self, "isFullScreen") || (-[AVCatalystGlassPlaybackControlsController volumeController](self, "volumeController"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 isChangingVolume], v20, v21))
    {
      [(AVCatalystGlassPlaybackControlsController *)self setPrefersMuted:0];
      v22 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
      v23 = [v22 isBeingPresented];

      if ((v23 & 1) == 0)
      {

        [(AVCatalystGlassPlaybackControlsController *)self flashVolumeControlsWithDuration:2.0];
      }
    }
  }
}

- (void)endScrubbing
{
  v3 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  [v3 endScrubbing:self];

  [(AVCatalystGlassPlaybackControlsController *)self setPlaybackSuspendedForScrubbing:0];
  [(AVCatalystGlassPlaybackControlsController *)self _updateOrCreateTimeResolverIfNeeded];

  [(AVCatalystGlassPlaybackControlsController *)self setShouldIgnoreTimeResolverUpdates:0];
}

- (void)scrubToTime:(double)a3 resolution:(double)a4
{
  v7 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  if ([v7 hasSeekableLiveStreamingContent])
  {
    v8 = [(AVCatalystGlassPlaybackControlsController *)self timeResolver];
    [v8 seekableTimeRangeDuration];
  }

  else
  {
    v8 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
    [v8 contentDuration];
  }

  v10 = v9;

  v11 = [(AVCatalystGlassPlaybackControlsController *)self timeResolver];
  [v11 targetTime];
  v13 = v12;

  v14 = v10 / a4;
  v15 = 0.0;
  if (a4 > 0.0)
  {
    v15 = v14;
  }

  if (vabdd_f64(a3, v13) > v15)
  {
    if (a4 > 0.0 && ([(AVCatalystGlassPlaybackControlsController *)self playerController], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_opt_respondsToSelector(), v16, (v17 & 1) != 0))
    {
      v18 = a3 - v13;
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

      v25 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
      [v25 seekToTime:a3 toleranceBefore:v23 toleranceAfter:v24];
    }

    else
    {
      v25 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
      [v25 seekToTime:a3];
    }
  }

  [(AVCatalystGlassPlaybackControlsController *)self _updateScrubberAndTimeLabels];
}

- (void)beginScrubbing
{
  [(AVCatalystGlassPlaybackControlsController *)self setShouldIgnoreTimeResolverUpdates:1];
  [(AVCatalystGlassPlaybackControlsController *)self setPlaybackSuspendedForScrubbing:[(AVCatalystGlassPlaybackControlsController *)self playButtonsShowPauseGlyph]];
  v3 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  [v3 beginScrubbing:self];

  [(AVCatalystGlassPlaybackControlsController *)self _updateOrCreateTimeResolverIfNeeded];
}

- (void)transportControls:(id)a3 scrubberDidEndScrubbing:(id)a4
{
  v5 = a4;
  v6 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  [v6 endScrubbing:v5];

  [(AVCatalystGlassPlaybackControlsController *)self setPlaybackSuspendedForScrubbing:0];
  [(AVCatalystGlassPlaybackControlsController *)self _updateOrCreateTimeResolverIfNeeded];

  [(AVCatalystGlassPlaybackControlsController *)self setShouldIgnoreTimeResolverUpdates:0];
}

- (void)transportControls:(id)a3 scrubberDidScrub:(id)a4
{
  v12 = a4;
  [v12 value];
  v6 = v5;
  if ([v12 isTracking])
  {
    [v12 resolution];
    v8 = v7;
    v9 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    v10 = [v9 traitCollection];
    [v10 displayScale];
    [(AVCatalystGlassPlaybackControlsController *)self scrubToTime:v6 resolution:v8 * v11];
  }

  else
  {
    [(AVCatalystGlassPlaybackControlsController *)self scrubToTime:v6 resolution:0.0];
  }
}

- (void)transportControls:(id)a3 scrubberDidBeginScrubbing:(id)a4
{
  v5 = a4;
  [(AVCatalystGlassPlaybackControlsController *)self beginScrubbing];
  v6 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  [v6 nominalFrameRate];
  [v5 setEstimatedFrameRate:?];
}

- (void)transportControlsNeedsLayoutIfNeeded:(id)a3
{
  v4 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  [v4 setNeedsLayout];

  v5 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  [v5 layoutIfNeeded];
}

- (void)playerViewControllerContentViewDidChangeSize:(id)a3
{
  if (self)
  {
    v5 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    v3 = [v5 controlOverflowButton];
    v4 = [v3 contextMenuInteraction];
    [v4 dismissMenu];
  }
}

- (CGSize)playerViewControllerContentViewContentDimensions:(id)a3
{
  v3 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  [v3 contentDimensions];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)playerViewControllerContentViewDidUpdateScrollingStatus:(id)a3
{
  v3 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  [v3 performInitialSetupIfNeededAndPossible];
}

- (id)playerViewControllerContentViewOverrideLayoutClass:(id)a3
{
  v3 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  v4 = [v3 presentationContext];

  if ([v4 hasActiveTransition])
  {
    v5 = [v4 sourceView];

    v6 = [v4 currentTransition];
    v7 = [v6 initialInterfaceOrientation];

    v8 = [v4 currentTransition];
    v9 = [v8 finalInterfaceOrientation];

    v10 = [v4 isPresenting];
    v11 = [v4 isDismissing];
    v12 = [v4 presentedViewController];
    v13 = [v12 transitionCoordinator];
    v14 = [v13 isCancelled];

    v15 = [v4 presentedViewController];
    v16 = [v15 transitionCoordinator];
    v17 = [v16 isInteractive];

    if ((v14 | v17))
    {
      v18 = v10;
    }

    else
    {
      v18 = v11;
    }

    if (!v5)
    {
      v18 = 0;
    }

    if (v18)
    {
      v19 = &unk_1EFF129E0;
    }

    else
    {
      if ((v14 | v17))
      {
        v20 = v7;
      }

      else
      {
        v20 = v9;
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

- (BOOL)playerViewControllerContentViewIsBeingTransitionedFromFullScreen:(id)a3
{
  v4 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  v5 = [v4 fullScreenViewController];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  }

  v8 = v7;

  v9 = [v8 isBeingDismissed];
  return v9;
}

- (BOOL)playerViewControllerContentViewHasActiveTransition:(id)a3
{
  v3 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  v4 = [v3 hasActiveTransition];

  return v4;
}

- (void)playerViewControllerContentViewDidChangeVideoGravity:(id)a3
{
  v4 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  v5 = [v4 videoGravity];

  if (v5)
  {
    v6 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
    v7 = [v6 videoGravity];
    -[AVCatalystGlassPlaybackControlsController setVideoScaled:](self, "setVideoScaled:", [v7 isEqualToString:*MEMORY[0x1E69874E8]] ^ 1);
  }

  [(AVCatalystGlassPlaybackControlsController *)self _updateVideoGravityType];
}

- (BOOL)playerViewControllerContentViewShouldApplyAutomaticVideoGravity:(id)a3
{
  v4 = a3;
  if (![v4 canAutomaticallyZoomLetterboxVideos] || !objc_msgSend(v4, "isCoveringWindow") || (objc_msgSend(v4, "traitCollection"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "displayCornerRadius"), v7 = v6, v5, v7 <= 0.0) || ((-[AVCatalystGlassPlaybackControlsController playerController](self, "playerController"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "contentDimensions"), v10 = v9, v12 = v11, v8, v12 <= 0.0) ? (v13 = NAN) : (v13 = v10 / v12), (objc_msgSend(v4, "bounds"), v15 = v14, v17 = v16, v19 = v18, v21 = v20, objc_msgSend(v4, "edgeInsetsForLetterboxedContent"), v24 = v21 - (v22 + v23), v27 = v19 - (v25 + v26), v28 = v17 + v22, v29 = v15 + v25, v37.origin.x = v29, v37.origin.y = v28, v37.size.width = v27, v37.size.height = v24, CGRectIsEmpty(v37)) || (objc_msgSend(v4, "bounds"), CGRectIsEmpty(v38)) || (objc_msgSend(MEMORY[0x1E69DCEB0], "avkit_mainScreen"), v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "nativeBounds"), IsEmpty = CGRectIsEmpty(v39), v30, IsEmpty) || (objc_msgSend(v4, "bounds"), Width = CGRectGetWidth(v40), objc_msgSend(v4, "bounds"), Height = CGRectGetHeight(v41), v42.origin.x = v29, v42.origin.y = v28, v42.size.width = v27, v42.size.height = v24, CGRectGetMinY(v42) <= 0.0)))
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

- (void)playerViewControllerContentViewDidLayoutSubviews:(id)a3
{
  v12 = a3;
  v4 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  v5 = [v4 volumeButton];
  if ([v5 isTracking])
  {
    v6 = 1;
  }

  else
  {
    v7 = [v4 volumeSlider];
    v6 = [v7 isTracking];
  }

  v8 = [(AVCatalystGlassPlaybackControlsController *)self _prefersVolumeSliderExpandedAutomatically];
  if ([v12 avkit_isDescendantOfNonPagingScrollView])
  {
    v9 = 0;
  }

  else
  {
    v9 = [v12 isCoveringWindow];
  }

  [(AVCatalystGlassPlaybackControlsController *)self setCoveringWindow:v9];
  [(AVCatalystGlassPlaybackControlsController *)self _updateOrCreateTimeResolverIfNeeded];
  [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:(v8 | v6) & 1];
  v10 = [v12 playbackContentContainerView];
  [v10 frame];
  [(AVCatalystGlassPlaybackControlsController *)self setPlaybackViewFrame:?];

  v11 = [(AVCatalystGlassPlaybackControlsController *)self pictureInPictureController];
  [v11 contentSourceVideoRectInWindowChanged];

  [(AVCatalystGlassPlaybackControlsController *)self _updateRouteDetectionEnabled];
  [(AVCatalystGlassPlaybackControlsController *)self _updateVideoGravityType];
}

- (void)playerViewControllerContentViewDidMoveToSuperviewOrWindow:(id)a3
{
  v4 = a3;
  v5 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  [v5 performInitialSetupIfNeededAndPossible];

  v6 = [(AVCatalystGlassPlaybackControlsController *)self pictureInPictureController];
  [v6 contentSourceVideoRectInWindowChanged];

  v7 = [(AVCatalystGlassPlaybackControlsController *)self windowSceneSessionIdentifier];
  v8 = [v4 window];
  v9 = [v8 windowScene];
  v10 = [v9 session];
  v11 = [v10 persistentIdentifier];
  [(AVCatalystGlassPlaybackControlsController *)self setWindowSceneSessionIdentifier:v11];

  v12 = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
  v13 = [(AVCatalystGlassPlaybackControlsController *)self uniqueIdentifer];
  [v12 setClientWithIdentifier:v13 forWindowSceneSessionWithIdentifier:v7];

  v14 = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
  [v14 setPrefersSystemVolumeHUDHidden:{-[AVCatalystGlassPlaybackControlsController isFullScreen](self, "isFullScreen")}];

  v15 = [v4 window];

  objc_opt_class();
  LOBYTE(v4) = objc_opt_isKindOfClass();

  if (v4)
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

- (void)playerViewControllerContentViewPlaybackContentContainerViewChanged:(id)a3
{
  v3 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  [v3 activeContentViewDidChange];
}

- (void)turboModePlaybackControlsPlaceholderViewDidLoad:(id)a3
{
  v4 = a3;
  [(AVCatalystGlassPlaybackControlsController *)self setTurboModePlaybackControlsPlaceholderView:v4];
  [v4 setPreferredUnobscuredArea:{-[AVCatalystGlassPlaybackControlsController preferredUnobscuredArea](self, "preferredUnobscuredArea")}];
  v5 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  v6 = v5;
  if (v5)
  {
    [v5 overrideTransformForProminentPlayButton];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  [v4 setOverrideTransformForProminentPlayButton:v10];

  v7 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  v8 = [v7 overrideLayoutMarginsWhenEmbeddedInline];
  [v4 setOverrideLayoutMarginsWhenEmbeddedInline:v8];

  [v4 setHidden:{-[AVCatalystGlassPlaybackControlsController showsPlaybackControls](self, "showsPlaybackControls") ^ 1}];
  v9 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  [v4 setPlayerController:v9];
}

- (void)playbackControlsViewDidLoad:(id)a3
{
  v137 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(AVCatalystGlassPlaybackControlsController *)self setResumingUpdates:1];
  [(AVCatalystGlassPlaybackControlsController *)self setPlaybackControlsView:v4];
  if (!self->_showsPlaybackControls && ![(AVCatalystGlassPlaybackControlsController *)self isHidingItemsForTransition])
  {
    [(AVCatalystGlassPlaybackControlsController *)self beginHidingItemsForTransition];
  }

  v5 = [(AVCatalystGlassPlaybackControlsController *)self turboModePlaybackControlsPlaceholderView];
  [v5 removeFromSuperview];

  v6 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  -[AVCatalystGlassPlaybackControlsController _updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:](self, "_updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:", [v6 isPlaying]);

  v7 = objc_alloc_init(AVRouteDetectorCoordinator);
  routeDetectorCoordinator = self->_routeDetectorCoordinator;
  self->_routeDetectorCoordinator = v7;

  [(AVCatalystGlassPlaybackControlsController *)self startUpdatesIfNeeded];
  [v4 setFullScreen:{-[AVCatalystGlassPlaybackControlsController isFullScreen](self, "isFullScreen")}];
  v9 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  v10 = [v9 contentView];
  v11 = [v10 playbackContentContainerView];
  [v11 frame];
  [(AVCatalystGlassPlaybackControlsController *)self setPlaybackViewFrame:?];

  [v4 setPreferredUnobscuredArea:{-[AVCatalystGlassPlaybackControlsController preferredUnobscuredArea](self, "preferredUnobscuredArea")}];
  v12 = [(AVCatalystGlassPlaybackControlsController *)self visibilityBroadcaster];
  [v4 setVisibilityDelegate:v12];

  v13 = [v4 standardPlayPauseButton];
  [v13 setImageName:@"play.fill"];

  v14 = [v4 standardPlayPauseButton];
  [v14 setAlternateImageName:@"pause.fill"];

  v15 = [v4 standardPlayPauseButton];
  v16 = *MEMORY[0x1E69DB970];
  v17 = [MEMORY[0x1E69DB878] avkit_nonScalingFontWithTextStyle:*MEMORY[0x1E69DDCF8] weight:*MEMORY[0x1E69DB970]];
  [v15 setAlternateFullScreenFont:v17];

  v18 = [v4 standardPlayPauseButton];
  [v18 setFullscreenAlternateImagePadding:0.0];

  v19 = [v4 standardPlayPauseButton];
  v20 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  v21 = [v20 traitCollection];
  v22 = [v21 userInterfaceIdiom];
  v23 = 0.5;
  if (v22 == 5)
  {
    v23 = 0.0;
  }

  [v19 setAlternateImagePadding:v23];

  v24 = [v4 prominentPlayButton];
  [v24 setImageName:@"play.fill"];

  v25 = [v4 prominentPlayButton];
  v26 = [MEMORY[0x1E69DB878] avkit_nonScalingFontWithTextStyle:*MEMORY[0x1E69DDD58] weight:v16];
  [v25 setInlineFont:v26];

  v27 = [v4 prominentPlayButton];
  [v27 setMultipleTouchesEndsTracking:1];

  v28 = [v4 skipBackButton];
  [v28 setImageName:@"gobackward.15"];

  v29 = [v4 skipForwardButton];
  [v29 setImageName:@"goforward.15"];

  v30 = [v4 startLeftwardContentTransitionButton];
  [v30 setImageName:@"backward.end.fill"];

  v31 = [v4 startRightwardContentTransitionButton];
  [v31 setImageName:@"forward.end.fill"];

  v32 = [v4 mediaSelectionButton];
  [v32 setImageName:@"captions.bubble"];

  v33 = [v4 pictureInPictureButton];
  [v33 setImageName:@"pip.enter"];

  v34 = [v4 fullScreenButton];
  [v34 setImageName:@"arrow.up.left.and.arrow.down.right"];

  v35 = [v4 doneButton];
  [v35 setImageName:@"xmark"];

  v36 = [v4 volumeButton];
  v37 = [(AVCatalystGlassPlaybackControlsController *)self _volumeButtonMicaPackageState];
  [v36 setMicaPackageStateName:v37];

  v38 = [v4 routePickerView];
  [v38 setDelegate:self];

  v39 = [v4 controlOverflowButton];
  [v39 setDelegate:self];

  v40 = [v4 doneButton];
  v41 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  [v40 addTarget:v41 action:sel_doneButtonTapped_ forControlEvents:64];

  v42 = [v4 fullScreenButton];
  v43 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  [v42 addTarget:v43 action:sel_enterFullScreen_ forControlEvents:64];

  v44 = [v4 standardPlayPauseButton];
  v45 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  [v44 addTarget:v45 action:sel_togglePlayback_ forControlEvents:64];

  v46 = [v4 pictureInPictureButton];
  v47 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  [v46 addTarget:v47 action:sel_pictureInPictureButtonTapped_ forControlEvents:64];

  v48 = [v4 mediaSelectionButton];
  v49 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  [v48 addTarget:v49 action:sel_mediaSelectionButtonTapped_ forControlEvents:64];

  objc_initWeak(&location, self);
  v50 = MEMORY[0x1E69DC628];
  v128[0] = MEMORY[0x1E69E9820];
  v128[1] = 3221225472;
  v128[2] = __73__AVCatalystGlassPlaybackControlsController_playbackControlsViewDidLoad___block_invoke;
  v128[3] = &unk_1E7209230;
  objc_copyWeak(&v129, &location);
  v123 = [v50 actionWithHandler:v128];
  v51 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  v52 = [v51 playbackSpeedButton];
  [v52 setImageName:@"speedometer"];

  v53 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  v54 = [v53 playbackSpeedButton];
  v55 = objc_loadWeakRetained(&location);
  v56 = [v55 playbackRateMenuController];
  v57 = [v56 menu];
  [v54 setMenu:v57];

  v58 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  v59 = [v58 playbackSpeedButton];
  [v59 addAction:v123 forControlEvents:0x4000];

  v60 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  v61 = [v60 playbackSpeedButton];
  [v61 addTarget:self action:sel_playbackSpeedButtonTapped_ forControlEvents:64];

  v62 = [v4 skipBackButton];
  [v62 addTarget:self action:sel_skipButtonTouchUpInside_ forControlEvents:64];

  v63 = [v4 skipForwardButton];
  [v63 addTarget:self action:sel_skipButtonTouchUpInside_ forControlEvents:64];

  v64 = [v4 skipBackButton];
  [v64 addTarget:self action:sel_skipButtonLongPressTriggered_ forControlEvents:0x400000];

  v65 = [v4 skipForwardButton];
  [v65 addTarget:self action:sel_skipButtonLongPressTriggered_ forControlEvents:0x400000];

  v66 = [v4 skipBackButton];
  [v66 addTarget:self action:sel_skipButtonLongPressEnded_ forControlEvents:0x800000];

  v67 = [v4 skipForwardButton];
  [v67 addTarget:self action:sel_skipButtonLongPressEnded_ forControlEvents:0x800000];

  v68 = [v4 skipBackButton];
  [v68 addTarget:self action:sel_skipButtonForcePressChanged_ forControlEvents:0x2000000];

  v69 = [v4 skipForwardButton];
  [v69 addTarget:self action:sel_skipButtonForcePressChanged_ forControlEvents:0x2000000];

  [(AVCatalystGlassPlaybackControlsController *)self _updateSkipButtonsEnableLongPress];
  v70 = [v4 startLeftwardContentTransitionButton];
  [v70 addTarget:self action:sel_startContentTransitionButtonTouchUpInside_ forControlEvents:64];

  v71 = [v4 startRightwardContentTransitionButton];
  [v71 addTarget:self action:sel_startContentTransitionButtonTouchUpInside_ forControlEvents:64];

  v72 = [v4 prominentPlayButton];
  [v72 addTarget:self action:sel_prominentPlayButtonTouchUpInside_ forControlEvents:64];

  v73 = [v4 volumeButton];
  [v73 addTarget:self action:sel_volumeButtonTapTriggered_ forControlEvents:0x400000];

  v74 = [v4 volumeButton];
  [v74 addTarget:self action:sel_beginChangingVolume forControlEvents:0x1000000];

  v75 = [v4 volumeButton];
  [v75 addTarget:self action:sel_volumeButtonLongPressTriggered_ forControlEvents:0x800000];

  v76 = [v4 volumeButton];
  [v76 addTarget:self action:sel_volumeButtonPanChanged_ forControlEvents:0x2000000];

  v77 = [v4 volumeButton];
  [v77 addTarget:self action:sel_endChangingVolume forControlEvents:0x4000000];

  v78 = [v4 volumeSlider];
  [v78 addTarget:self action:sel_beginChangingVolume forControlEvents:1];

  v79 = [v4 volumeSlider];
  [v79 addTarget:self action:sel_endChangingVolume forControlEvents:448];

  v80 = [v4 volumeSlider];
  [v80 addTarget:self action:sel_volumeSliderValueDidChange_ forControlEvents:4096];

  v81 = [v4 transportControlsView];
  [v81 setDelegate:self];

  v82 = [v4 standardPlayPauseButton];
  [v82 setTintEffectStyle:0];

  v83 = [v4 prominentPlayButton];
  [v83 setTintEffectStyle:0];

  v84 = [v4 skipBackButton];
  [v84 setTintEffectStyle:0];

  v85 = [v4 skipForwardButton];
  [v85 setTintEffectStyle:0];

  v86 = [v4 startLeftwardContentTransitionButton];
  [v86 setTintEffectStyle:0];

  v87 = [v4 startRightwardContentTransitionButton];
  [v87 setTintEffectStyle:0];

  v88 = [(AVCatalystGlassPlaybackControlsController *)self customControlItems];
  [v4 setCustomControlItems:v88 animations:&__block_literal_global_212];

  v89 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  v90 = v89;
  if (v89)
  {
    [v89 overrideTransformForProminentPlayButton];
  }

  else
  {
    memset(v136, 0, 48);
  }

  [v4 setOverrideTransformForProminentPlayButton:v136];

  v91 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  v92 = [v91 overrideLayoutMarginsWhenEmbeddedInline];
  [v4 setOverrideLayoutMarginsWhenEmbeddedInline:v92];

  v93 = MEMORY[0x1E69DD250];
  v125[0] = MEMORY[0x1E69E9820];
  v125[1] = 3221225472;
  v125[2] = __73__AVCatalystGlassPlaybackControlsController_playbackControlsViewDidLoad___block_invoke_3;
  v125[3] = &unk_1E7209FB0;
  v124 = v4;
  v126 = v124;
  v127 = self;
  [v93 performWithoutAnimation:v125];
  v94 = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
  v95 = [(AVCatalystGlassPlaybackControlsController *)self uniqueIdentifer];
  v96 = [(AVCatalystGlassPlaybackControlsController *)self windowSceneSessionIdentifier];
  [v94 setClientWithIdentifier:v95 forWindowSceneSessionWithIdentifier:v96];

  v97 = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
  [v97 setPrefersSystemVolumeHUDHidden:{-[AVCatalystGlassPlaybackControlsController isFullScreen](self, "isFullScreen")}];

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
  v122 = [v124 standardPlayPauseButton];
  v135[0] = v122;
  v121 = [v124 skipBackButton];
  v135[1] = v121;
  v120 = [v124 skipForwardButton];
  v135[2] = v120;
  v119 = [v124 controlOverflowButton];
  v135[3] = v119;
  v118 = [v124 pictureInPictureButton];
  v135[4] = v118;
  v117 = [v124 doneButton];
  v135[5] = v117;
  v116 = [v124 fullScreenButton];
  v135[6] = v116;
  v115 = [v124 playbackSpeedButton];
  v135[7] = v115;
  v114 = [v124 mediaSelectionButton];
  v135[8] = v114;
  v113 = [v124 startLeftwardContentTransitionButton];
  v135[9] = v113;
  v112 = [v124 startRightwardContentTransitionButton];
  v135[10] = v112;
  v102 = [MEMORY[0x1E695DEC8] arrayWithObjects:v135 count:11];
  v103 = [(AVCatalystGlassPlaybackControlsView *)self->_playbackControlsView styleSheet];
  v104 = [v103 buttonFont];

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
        v110 = [v109 titleLabel];
        v111 = [MEMORY[0x1E69DC888] labelColor];
        [v110 setTextColor:v111];

        [v109 setInlineFont:v104];
        [v109 setFullScreenFont:v104];
        [v109 setAlternateFullScreenFont:v104];
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
  if (a1)
  {
    v2 = [a1 playerController];

    if (v2)
    {
      v3 = [a1 playbackControlsView];
      v4 = [v3 skipBackButton];
      v5 = [a1 playerController];
      [v4 setTreatsForcePressAsLongPress:(objc_opt_respondsToSelector() & 1) == 0];

      v8 = [a1 playbackControlsView];
      v6 = [v8 skipForwardButton];
      v7 = [a1 playerController];
      [v6 setTreatsForcePressAsLongPress:(objc_opt_respondsToSelector() & 1) == 0];
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
  if (a1)
  {
    v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v30 = a1;
    v2 = a1[13];
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
          v11 = v10;
          v12 = [v11 title];
          v13 = [p_info + 421 buttonWithAccessibilityIdentifier:v12 isFirstGeneration:1];

          v14 = [v11 image];

          if (v14)
          {
            v15 = [v11 image];
            [v13 setImage:v15 forState:0];
          }

          v16 = [v11 title];

          if (v16)
          {
            v17 = [v11 title];
            [v13 setTitle:v17 forState:0];
          }

          [v13 addAction:v11 forControlEvents:0x2000];
          v18 = [v11 identifier];
          [v13 setMenuElementIdentifier:v18];
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
          v27 = [v20 image];
          [v13 setImage:v27 forState:0];

          [v13 setMenu:v20];
          [v13 setShowsMenuAsPrimaryAction:1];
          v11 = [v20 identifier];

          [v13 setMenuElementIdentifier:v11];
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

        v28 = [v30 playbackControlsView];
        v29 = [v28 transportControlsView];
        [v29 setCustomMenuItemsViews:v32];

        return;
      }
    }
  }
}

- (void)_updateDimmingViewVisibility
{
  if (a1)
  {
    v2 = [a1 isAudioOnlyContent];
    v3 = [a1 hasBecomeReadyToPlay];
    v4 = [a1 playbackControlsView];
    [v4 setShowsDimmingView:(v2 ^ 1) & v3];
  }
}

- (void)_updateGlassVariantsIfNeeded
{
  if (a1)
  {
    v2 = [a1 playbackControlsView];
    v11 = [v2 screenModeControls];

    v3 = [a1 playbackControlsView];
    v4 = [v3 volumeControls];

    v5 = [a1 playbackControlsView];
    v6 = [v5 transportControlsView];
    v7 = [v6 controlsLayoutView];

    v8 = [a1 playbackControlsView];
    v9 = [v8 prominentPlayButtonContainerView];

    LOBYTE(v8) = [a1 isAudioOnlyContent];
    if (v8 & 1 | (([a1 hasBecomeReadyToPlay] & 1) == 0))
    {
      v10 = 3;
    }

    else
    {
      v10 = 1;
    }

    [v11 setBackgroundMaterialStyle:v10];
    [v4 setBackgroundMaterialStyle:v10];
    [v7 setBackgroundMaterialStyle:v10];
    [v9 setBackgroundMaterialStyle:v10];
  }
}

- (void)setIsAudioOnlyContent:(BOOL)a3
{
  if (self->_isAudioOnlyContent != a3)
  {
    self->_isAudioOnlyContent = a3;
    [(AVCatalystGlassPlaybackControlsController *)self _updateDimmingViewVisibility];

    [(AVCatalystGlassPlaybackControlsController *)self _updateGlassVariantsIfNeeded];
  }
}

- (void)setTransportBarCustomMenuItems:(id)a3
{
  v4 = [a3 copy];
  transportBarCustomMenuItems = self->_transportBarCustomMenuItems;
  self->_transportBarCustomMenuItems = v4;

  v6 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  v7 = [v6 transportControlsView];
  v8 = [v7 controlOverflowButton];
  [v8 updateContextMenu];

  [(AVCatalystGlassPlaybackControlsController *)&self->super.isa _updateTransportBarCustomMenuItemsIfNeeded];
}

- (void)setCustomControlItems:(id)a3
{
  v4 = a3;
  if (![(NSArray *)self->_customControlItems isEqualToArray:v4])
  {
    v5 = [v4 copy];
    customControlItems = self->_customControlItems;
    self->_customControlItems = v5;

    v7 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67__AVCatalystGlassPlaybackControlsController_setCustomControlItems___block_invoke;
    v9[3] = &unk_1E720A090;
    v9[4] = self;
    [v7 setCustomControlItems:v4 animations:v9];

    v8 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    [v8 setPrefersVolumeSliderExpandedAutomatically:-[AVCatalystGlassPlaybackControlsController _prefersVolumeSliderExpandedAutomatically](self)];
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
  v3 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  if (v3)
  {
    v4 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    if ([v4 showsPlaybackControls])
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
  v3 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  [v3 activeRate];
  v5 = v4;
  if ([v3 avkit_isAVPlayerControllerOrSubclass])
  {
    [v3 suspendedRate];
    v7 = v6;
    v8 = [v3 isPlaybackSuspended];
    v9 = v7 > 0.0 || v7 < 0.0;
    v10 = v8 & v9;
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
    v12 = [(AVCatalystGlassPlaybackControlsController *)self isPlaybackSuspendedForScrubbing];
    v13 = v5 != 0.0 || v12;
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

  v4 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  if (v4)
  {
    v5 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
    v3 = [v5 status] == 1 || -[AVCatalystGlassPlaybackControlsController timeControlStatus](self, "timeControlStatus") == 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)showsStartContentTransitionButtons
{
  v3 = [(AVCatalystGlassPlaybackControlsController *)self isFullScreen];
  if (v3)
  {

    LOBYTE(v3) = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsIncludeStartContentTransitionButtons];
  }

  return v3;
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
      v5 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
      v3 = [v5 status] != 2;

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

  v4 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  v5 = [v4 canSeek];

  return v5;
}

- (double)maximumTime
{
  v3 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  if ([v3 status] == 2)
  {
    v4 = [(AVCatalystGlassPlaybackControlsController *)self timeResolver];
    [v4 maxTime];
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
  v3 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  if ([v3 status] == 2)
  {
    v4 = [(AVCatalystGlassPlaybackControlsController *)self timeResolver];
    [v4 minTime];
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
  v3 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  if ([v3 status] == 2)
  {
    v4 = [(AVCatalystGlassPlaybackControlsController *)self timeResolver];
    [v4 targetTime];
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
  v3 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  v4 = [v3 scrubber];
  v5 = [v4 isTracking];

  if (v5)
  {
    v6 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    v7 = [v6 scrubber];
    [v7 value];
    v9 = v8;

LABEL_5:
    return v9;
  }

  v10 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  v11 = [v10 externalPlaybackType];

  if (v11 == 1)
  {
    v6 = [(AVCatalystGlassPlaybackControlsController *)self timeResolver];
    [v6 currentTime];
    v9 = v12;
    goto LABEL_5;
  }

  [(AVCatalystGlassPlaybackControlsController *)self currentTime];
  return result;
}

- (BOOL)showsMediaSelectionButton
{
  v2 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  v3 = [v2 hasMediaSelectionOptions];

  return v3;
}

- (BOOL)shouldEnterFullScreenWhenPlaybackBegins
{
  v3 = [(AVCatalystGlassPlaybackControlsController *)self entersFullScreenWhenPlaybackBegins];
  if (v3)
  {
    if ([(AVCatalystGlassPlaybackControlsController *)self hasPlaybackBegunSincePlayerControllerBecameReadyToPlay])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(AVCatalystGlassPlaybackControlsController *)self playerViewControllerHasInvalidViewControllerHierarchy];
    }
  }

  return v3;
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
  v3 = [(AVCatalystGlassPlaybackControlsController *)self shouldEnterFullScreenWhenPlaybackBegins]|| [(AVCatalystGlassPlaybackControlsController *)self showsMinimalPlaybackControlsWhenEmbeddedInline];
  if ([(AVCatalystGlassPlaybackControlsController *)self isFullScreen]|| ![(AVCatalystGlassPlaybackControlsController *)self playbackControlsIncludeTransportControls]|| !(v3 | ![(AVCatalystGlassPlaybackControlsController *)self hasPlaybackBegunSincePlayerControllerBecameReadyToPlay]))
  {
    goto LABEL_27;
  }

  v4 = [(AVCatalystGlassPlaybackControlsController *)self pictureInPictureController];
  if ([v4 isPictureInPictureActive])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
    if ([v6 status] == 3)
    {
      v5 = 0;
    }

    else
    {
      v7 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
      if ([v7 isPlayingOnExternalScreen])
      {
        v5 = 0;
      }

      else
      {
        v8 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
        if ([v8 hasVideo])
        {
          v5 = 1;
        }

        else
        {
          v9 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
          v5 = [v9 hasEnabledAudio] ^ 1;
        }
      }
    }
  }

  if (-[AVCatalystGlassPlaybackControlsController playButtonsShowPauseGlyph](self, "playButtonsShowPauseGlyph") || !v3 && ((-[AVCatalystGlassPlaybackControlsController playButtonHandlerForLazyPlayerLoading](self, "playButtonHandlerForLazyPlayerLoading"), (v10 = objc_claimAutoreleasedReturnValue()) == 0) || (v11 = v10, -[AVCatalystGlassPlaybackControlsController playerController](self, "playerController"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 status], v12, v11, v13)))
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

  v3 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
  if ([v3 allowsExternalPlayback])
  {
    v4 = [(AVCatalystGlassPlaybackControlsController *)self wantsExternalPlaybackButtonShown];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setWantsExternalPlaybackButtonShown:(BOOL)a3
{
  if (self->_wantsExternalPlaybackButtonShown != a3)
  {
    self->_wantsExternalPlaybackButtonShown = a3;
  }
}

- (BOOL)entersFullScreenWhenTapped
{
  v3 = [(AVCatalystGlassPlaybackControlsController *)self showsMinimalPlaybackControlsWhenEmbeddedInline];
  if (v3)
  {
    if ([(AVCatalystGlassPlaybackControlsController *)self showsProminentPlayButton])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v3 = [(AVCatalystGlassPlaybackControlsController *)self allowsEnteringFullScreen];
      if (v3)
      {
        LOBYTE(v3) = ![(AVCatalystGlassPlaybackControlsController *)self isFullScreen];
      }
    }
  }

  return v3;
}

- (void)setShowsTimecodes:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_showsTimecodes != a3)
  {
    v3 = a3;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v8 = 136315650;
      v9 = "[AVCatalystGlassPlaybackControlsController setShowsTimecodes:]";
      v11 = "showsTimecodes";
      v10 = 2080;
      if (v3)
      {
        v6 = "YES";
      }

      v12 = 2080;
      v13 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v8, 0x20u);
    }

    self->_showsTimecodes = v3;
    v7 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
    [v7 hasReadableTimecodes];

    [(AVCatalystGlassPlaybackControlsController *)self _updateOrCreateTimeResolverIfNeeded];
    [(AVCatalystGlassPlaybackControlsController *)self _updateScrubberAndTimeLabels];
  }
}

- (void)setShowsPictureInPictureButton:(BOOL)a3
{
  if (self->_showsPictureInPictureButton != a3)
  {
    self->_showsPictureInPictureButton = a3;
    [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:[(AVCatalystGlassPlaybackControlsController *)self _prefersVolumeSliderExpandedAutomatically]];

    [(AVCatalystGlassPlaybackControlsController *)self _showOrHideDisplayModeControls];
  }
}

- (void)setCoveringWindow:(BOOL)a3
{
  if (self->_coveringWindow != a3)
  {
    self->_coveringWindow = a3;
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

- (void)setVolumeController:(id)a3
{
  v7 = a3;
  v5 = self->_volumeController;
  if (v5 != v7)
  {
    objc_storeStrong(&self->_volumeController, a3);
    if ([(AVCatalystGlassPlaybackControlsController *)self isFullScreen])
    {
      [(AVVolumeController *)v5 setPrefersSystemVolumeHUDHidden:0];
      v6 = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
      [v6 setPrefersSystemVolumeHUDHidden:1];
    }
  }
}

- (void)setShowsDoneButtonWhenFullScreen:(BOOL)a3
{
  if (self->_showsDoneButtonWhenFullScreen != a3)
  {
    self->_showsDoneButtonWhenFullScreen = a3;
    [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:[(AVCatalystGlassPlaybackControlsController *)self _prefersVolumeSliderExpandedAutomatically]];

    [(AVCatalystGlassPlaybackControlsController *)self _showOrHideDisplayModeControls];
  }
}

- (void)setShowsVolumeControlsForContentWithNoAudio:(BOOL)a3
{
  if (self->_showsVolumeControlsForContentWithNoAudio != a3)
  {
    self->_showsVolumeControlsForContentWithNoAudio = a3;
    [(AVCatalystGlassPlaybackControlsController *)self _updateContainerInclusion];
  }
}

- (void)setVolumeControlsCanShowSlider:(BOOL)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_volumeControlsCanShowSlider != a3)
  {
    v3 = a3;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVCatalystGlassPlaybackControlsController setVolumeControlsCanShowSlider:]";
      v10 = "volumeControlsCanShowSlider";
      v9 = 2080;
      if (v3)
      {
        v6 = "YES";
      }

      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
    }

    self->_volumeControlsCanShowSlider = v3;
    [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:v3];
  }
}

- (void)setCanIncludePlaybackControlsWhenInline:(BOOL)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_canIncludePlaybackControlsWhenInline != a3)
  {
    v3 = a3;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVCatalystGlassPlaybackControlsController setCanIncludePlaybackControlsWhenInline:]";
      v10 = "canIncludePlaybackControlsWhenInline";
      v9 = 2080;
      if (v3)
      {
        v6 = "YES";
      }

      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
    }

    self->_canIncludePlaybackControlsWhenInline = v3;
  }
}

- (void)setHasCustomPlaybackControls:(BOOL)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_hasCustomPlaybackControls != a3)
  {
    v3 = a3;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVCatalystGlassPlaybackControlsController setHasCustomPlaybackControls:]";
      v10 = "hasCustomPlaybackControls";
      v9 = 2080;
      if (v3)
      {
        v6 = "YES";
      }

      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
    }

    self->_hasCustomPlaybackControls = v3;
  }
}

- (void)setShowsShowTextControl:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_showsShowTextControl != a3)
  {
    v3 = a3;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v9 = 136315650;
      v10 = "[AVCatalystGlassPlaybackControlsController setShowsShowTextControl:]";
      v12 = "showsShowTextControl";
      v11 = 2080;
      if (v3)
      {
        v6 = "YES";
      }

      v13 = 2080;
      v14 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v9, 0x20u);
    }

    self->_showsShowTextControl = v3;
    v7 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    v8 = [v7 controlOverflowButton];
    [v8 updateContextMenu];
  }
}

- (void)setShowsVideoZoomControl:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_showsVideoZoomControl != a3)
  {
    v3 = a3;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v9 = 136315650;
      v10 = "[AVCatalystGlassPlaybackControlsController setShowsVideoZoomControl:]";
      v12 = "showsVideoZoomControl";
      v11 = 2080;
      if (v3)
      {
        v6 = "YES";
      }

      v13 = 2080;
      v14 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v9, 0x20u);
    }

    self->_showsVideoZoomControl = v3;
    [(AVCatalystGlassPlaybackControlsController *)self _updateVideoGravityType];
    v7 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    v8 = [v7 controlOverflowButton];
    [v8 updateContextMenu];
  }
}

- (void)setShowsPlaybackControls:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_showsPlaybackControls != a3)
  {
    v3 = a3;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v8 = 136315650;
      v9 = "[AVCatalystGlassPlaybackControlsController setShowsPlaybackControls:]";
      v11 = "showsPlaybackControls";
      v10 = 2080;
      if (v3)
      {
        v6 = "YES";
      }

      v12 = 2080;
      v13 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v8, 0x20u);
    }

    self->_showsPlaybackControls = v3;
    [(AVCatalystGlassPlaybackControlsController *)self _updatePlaybackControlsVisibleAndObservingUpdates];
    v7 = [(AVCatalystGlassPlaybackControlsController *)self turboModePlaybackControlsPlaceholderView];
    [v7 setHidden:!v3];
  }
}

- (void)setPlayerViewControllerIsBeingTransitionedWithResizing:(BOOL)a3
{
  if (self->_playerViewControllerIsBeingTransitionedWithResizing != a3)
  {
    self->_playerViewControllerIsBeingTransitionedWithResizing = a3;
    [(AVCatalystGlassPlaybackControlsController *)self _updatePlaybackControlsVisibleAndObservingUpdates];
  }
}

- (void)setPlayerViewControllerIsPresentedFullScreen:(BOOL)a3
{
  if (self->_playerViewControllerIsPresentedFullScreen != a3)
  {
    self->_playerViewControllerIsPresentedFullScreen = a3;
    [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:[(AVCatalystGlassPlaybackControlsController *)self _prefersVolumeSliderExpandedAutomatically]];
    [(AVCatalystGlassPlaybackControlsController *)self _showOrHideDisplayModeControls];

    [(AVCatalystGlassPlaybackControlsController *)self _updateVideoGravityType];
  }
}

- (void)setPlayerViewControllerIsPresentingFullScreen:(BOOL)a3
{
  if (self->_playerViewControllerIsPresentingFullScreen != a3)
  {
    self->_playerViewControllerIsPresentingFullScreen = a3;
    [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:[(AVCatalystGlassPlaybackControlsController *)self _prefersVolumeSliderExpandedAutomatically]];

    [(AVCatalystGlassPlaybackControlsController *)self _showOrHideDisplayModeControls];
  }
}

- (void)setPlaybackSpeedCollection:(id)a3
{
  v5 = a3;
  if (self->_playbackSpeedCollection != v5)
  {
    v8 = v5;
    if (self->_selectedPlaybackSpeedObservationToken)
    {
      [(AVObservationController *)self->_observationController stopObserving:?];
      selectedPlaybackSpeedObservationToken = self->_selectedPlaybackSpeedObservationToken;
      self->_selectedPlaybackSpeedObservationToken = 0;
    }

    objc_storeStrong(&self->_playbackSpeedCollection, a3);
    v7 = [(AVCatalystGlassPlaybackControlsController *)self playbackRateMenuController];
    [v7 setPlaybackSpeedCollection:v8];

    [(AVCatalystGlassPlaybackControlsController *)self _updatePlaybackSpeedControlInclusion];
    v5 = v8;
  }
}

- (void)setPlayerController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_playerController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = [(AVCatalystGlassPlaybackControlsController *)self volumeAnimator];
    [v6 restoreVolumeIfNeeded];

    [(AVCatalystGlassPlaybackControlsController *)self setVolumeAnimator:0];
    if (self)
    {
      v7 = [(AVCatalystGlassPlaybackControlsController *)self playerControllerObservationController];
      [v7 stopAllObservation];

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

    v9 = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
      v12 = objc_loadWeakRetained(&self->_playerController);
      [v11 setPlayerController:v12];
    }

    [(AVCatalystGlassPlaybackControlsController *)self _updateOrCreateTimeResolverIfNeeded];
    [(AVCatalystGlassPlaybackControlsController *)self _updateSkipButtonsEnableLongPress];
    [(AVCatalystGlassPlaybackControlsController *)self _updateVideoGravityType];
    v13 = [(AVCatalystGlassPlaybackControlsController *)self turboModePlaybackControlsPlaceholderView];
    [v13 setPlayerController:obj];

    v5 = obj;
  }
}

- (void)_startObservingPotentiallyUnimplementedPlayerControllerProperties
{
  if (a1 && ([a1 hasBegunObservingPotentiallyUnimplementedPlayerControllerProperties] & 1) == 0)
  {
    [a1 setHasBegunObservingPotentiallyUnimplementedPlayerControllerProperties:1];
    objc_initWeak(&location, a1);
    v2 = [a1 playerController];
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = [a1 playerControllerObservationController];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __110__AVCatalystGlassPlaybackControlsController__startObservingPotentiallyUnimplementedPlayerControllerProperties__block_invoke;
      v23[3] = &unk_1E7209A88;
      objc_copyWeak(&v24, &location);
      [a1 _observeBoolForKeyPath:@"playerController.hasSeekableLiveStreamingContent" usingKeyValueObservationController:v4 observationHandler:v23];

      objc_destroyWeak(&v24);
    }

    v5 = [a1 playerController];
    if (objc_opt_respondsToSelector())
    {
      v6 = [a1 playerController];
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = [a1 playerControllerObservationController];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __110__AVCatalystGlassPlaybackControlsController__startObservingPotentiallyUnimplementedPlayerControllerProperties__block_invoke_2;
        v21[3] = &unk_1E7209A88;
        objc_copyWeak(&v22, &location);
        [a1 _observeBoolForKeyPath:@"playerController.seeking" usingKeyValueObservationController:v8 observationHandler:v21];

        v9 = [a1 playerControllerObservationController];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __110__AVCatalystGlassPlaybackControlsController__startObservingPotentiallyUnimplementedPlayerControllerProperties__block_invoke_3;
        v19[3] = &unk_1E7209A88;
        objc_copyWeak(&v20, &location);
        [a1 _observeBoolForKeyPath:@"playerController.scrubbing" usingKeyValueObservationController:v9 observationHandler:v19];

        objc_destroyWeak(&v20);
        objc_destroyWeak(&v22);
      }
    }

    else
    {
    }

    v10 = [a1 playerController];
    v11 = objc_opt_respondsToSelector();

    v12 = [a1 playerControllerObservationController];
    if (v11)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __110__AVCatalystGlassPlaybackControlsController__startObservingPotentiallyUnimplementedPlayerControllerProperties__block_invoke_4;
      v17[3] = &unk_1E7208C38;
      v13 = &v18;
      objc_copyWeak(&v18, &location);
      v14 = [v12 startObserving:a1 keyPath:@"playerController.timeControlStatus" includeInitialValue:1 observationHandler:v17];
    }

    else
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __110__AVCatalystGlassPlaybackControlsController__startObservingPotentiallyUnimplementedPlayerControllerProperties__block_invoke_5;
      v15[3] = &unk_1E7209A88;
      v13 = &v16;
      objc_copyWeak(&v16, &location);
      [a1 _observeBoolForKeyPath:@"playerController.playing" usingKeyValueObservationController:v12 observationHandler:v15];
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

- (void)setAnalysisInteractionInProgress:(BOOL)a3
{
  if (self->_analysisInteractionInProgress != a3)
  {
    self->_analysisInteractionInProgress = a3;
    [(AVCatalystGlassPlaybackControlsController *)self _updatePlaybackControlsVisibleAndObservingUpdates];
  }
}

- (void)_updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:(BOOL)a3
{
  v46 = a3;
  v4 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  v5 = [v4 presentationContext];
  if ([v5 isPresenting])
  {
    v6 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
    v7 = [v6 presentationContext];
    v8 = [v7 presentingTransition];
    v45 = ([v8 finalInterfaceOrientation] - 1) < 2;
  }

  else
  {
    v45 = 0;
  }

  v9 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  v10 = [v9 presentationContext];
  v11 = [v10 currentTransition];
  v12 = [v11 isRotated];
  v13 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
  v14 = [v13 presentingViewController];
  v15 = [v14 view];
  v16 = [v15 window];
  v17 = [v16 traitCollection];
  v18 = v17;
  if (v12)
  {
    v19 = [v17 verticalSizeClass];
  }

  else
  {
    v19 = [v17 horizontalSizeClass];
  }

  v20 = v19;

  v21 = [(AVCatalystGlassPlaybackControlsController *)self shouldShowVolumeControlInTransportBar];
  if ([(AVCatalystGlassPlaybackControlsController *)self playbackControlsIncludeVolumeControls])
  {
    v22 = v20 == 1 && v45;
    v23 = 0;
    if ([(AVCatalystGlassPlaybackControlsController *)self volumeControlsCanShowSlider]&& !v22)
    {
      v24 = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
      if ([v24 currentRouteHasVolumeControl])
      {
        v25 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
        if ([v25 isPlayingOnExternalScreen])
        {
          v23 = 0;
        }

        else
        {
          v26 = [(AVCatalystGlassPlaybackControlsController *)self playerController];
          v23 = ([v26 isPlayingOnSecondScreen] & 1) == 0 && -[AVCatalystGlassPlaybackControlsController preferredUnobscuredArea](self, "preferredUnobscuredArea") != 1;
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
    v27 = !v21;
    if (!v23)
    {
LABEL_26:
      v28 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    v29 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    v30 = [v29 customAudioItems];
    v27 = [v30 count] == 0 && !v21;

    if (!v23)
    {
      goto LABEL_26;
    }
  }

  v28 = v46 && !v21;
LABEL_29:
  v31 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  v32 = [v31 volumeSlider];
  if (v28 == [v32 isIncluded])
  {
    v33 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    v34 = [v33 volumeButton];
    v35 = [v34 isIncluded];

    if (v27 == v35)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  if (v28)
  {
    v36 = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
    [v36 volume];
    [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeSliderValueWithSystemVolume:0 animated:?];
  }

  if ([MEMORY[0x1E69DD250] areAnimationsEnabled])
  {
    v37 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    v38 = [v37 volumeControls];
    if ([v38 isHiddenOrHasHiddenAncestor])
    {
      v39 = 0;
    }

    else
    {
      v40 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
      v41 = [v40 volumeControls];
      if ([v41 _isInAWindow] && !-[AVCatalystGlassPlaybackControlsController isResumingUpdates](self, "isResumingUpdates"))
      {
        v42 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
        if ([v42 avkit_wantsAnimatedViewTransitions])
        {
          v43 = [(AVCatalystGlassPlaybackControlsController *)self playerViewController];
          v39 = [v43 hasActiveTransition] ^ 1;
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

  v44 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
  [v44 setPrefersVolumeSliderExpanded:v28 prefersVolumeButtonIncluded:v27 animated:v39];

LABEL_48:

  [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeButtonGlyph];
}

- (void)setAllowsEnteringFullScreen:(BOOL)a3
{
  if (self->_allowsEnteringFullScreen != a3)
  {
    self->_allowsEnteringFullScreen = a3;
    [(AVCatalystGlassPlaybackControlsController *)self _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:[(AVCatalystGlassPlaybackControlsController *)self _prefersVolumeSliderExpandedAutomatically]];

    [(AVCatalystGlassPlaybackControlsController *)self _showOrHideDisplayModeControls];
  }
}

- (void)setPreferredUnobscuredArea:(int64_t)a3
{
  if (self->_preferredUnobscuredArea != a3)
  {
    self->_preferredUnobscuredArea = a3;
    v6 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    [v6 setPreferredUnobscuredArea:a3];

    v7 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];
    [v7 setNeedsLayout];
  }
}

- (void)setShowsMinimalPlaybackControlsWhenEmbeddedInline:(BOOL)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_showsMinimalPlaybackControlsWhenEmbeddedInline != a3)
  {
    v3 = a3;
    self->_showsMinimalPlaybackControlsWhenEmbeddedInline = a3;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVCatalystGlassPlaybackControlsController setShowsMinimalPlaybackControlsWhenEmbeddedInline:]";
      v10 = "showsMinimalPlaybackControlsWhenEmbeddedInline";
      v9 = 2080;
      if (v3)
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

- (void)setPlaybackControlsIncludeVolumeControls:(BOOL)a3
{
  if (self->_playbackControlsIncludeVolumeControls != a3)
  {
    self->_playbackControlsIncludeVolumeControls = a3;
    [(AVCatalystGlassPlaybackControlsController *)self _updateContainerInclusion];
  }
}

- (void)setPlaybackControlsIncludeDisplayModeControls:(BOOL)a3
{
  if (self->_playbackControlsIncludeDisplayModeControls != a3)
  {
    self->_playbackControlsIncludeDisplayModeControls = a3;
    [(AVCatalystGlassPlaybackControlsController *)self _updateContainerInclusion];
  }
}

- (void)setPlaybackControlsIncludeTransportControls:(BOOL)a3
{
  if (self->_playbackControlsIncludeTransportControls != a3)
  {
    self->_playbackControlsIncludeTransportControls = a3;
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
    v3 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsView];

    if (v3)
    {
      [(AVCatalystGlassPlaybackControlsController *)self setHasStartedUpdates:1];
      v4 = self->_observationController;
      objc_initWeak(&location, self);
      [(AVCatalystGlassPlaybackControlsController *)self _updateRouteDetectionEnabled];
      v5 = [(AVCatalystGlassPlaybackControlsController *)self routeDetectorCoordinator];
      -[AVCatalystGlassPlaybackControlsController setMultipleRoutesDetected:](self, "setMultipleRoutesDetected:", [v5 multipleRoutesDetected]);

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __65__AVCatalystGlassPlaybackControlsController_startUpdatesIfNeeded__block_invoke;
      v18[3] = &unk_1E7207CC8;
      objc_copyWeak(&v19, &location);
      v18[4] = self;
      [(AVObservationController *)v4 startObservingNotificationForName:@"AVRouteDetectorCoordinatorMultipleRoutesDetectedDidChangeNotification" object:0 notificationCenter:0 observationHandler:v18];
      [(AVObservationController *)v4 startObservingNotificationForName:@"AVVolumeControllerVolumeChangedNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_10990];
      [(AVObservationController *)v4 startObservingNotificationForName:@"AVVolumeControllerCurrentRouteHasVolumeControlChangedNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_29];
      v6 = [(AVCatalystGlassPlaybackControlsController *)self playerController];

      if (v6)
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
      v8 = [(AVCatalystGlassPlaybackControlsController *)self playerControllerObservationController];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __65__AVCatalystGlassPlaybackControlsController_startUpdatesIfNeeded__block_invoke_6;
      v12[3] = &unk_1E7208C38;
      objc_copyWeak(&v13, &location);
      v9 = [v8 startObserving:self keyPath:@"playerController.status" includeInitialValue:1 observationHandler:v12];

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

  v4 = [(AVCatalystGlassPlaybackControlsController *)self playerControllerObservationController];
  [v4 stopAllObservation];

  v5 = [(AVCatalystGlassPlaybackControlsController *)self playbackControlsObservationController];
  [v5 stopAllObservation];

  v6 = [(AVCatalystGlassPlaybackControlsController *)self observationController];
  [v6 stopAllObservation];

  [(AVCatalystGlassPlaybackControlsController *)self setShowsTimecodes:0];
  v7 = [(AVCatalystGlassPlaybackControlsController *)self volumeController];
  [v7 setPrefersSystemVolumeHUDHidden:0];

  v8 = [(AVCatalystGlassPlaybackControlsController *)self timeResolver];
  [v8 setPlayerController:0];

  v9 = [(AVCatalystGlassPlaybackControlsController *)self routeDetectorCoordinator];
  [v9 setRouteDetectionEnabled:0];

  [(AVCatalystGlassPlaybackControlsController *)self setPlayerController:0];
  v10.receiver = self;
  v10.super_class = AVCatalystGlassPlaybackControlsController;
  [(AVCatalystGlassPlaybackControlsController *)&v10 dealloc];
}

- (AVCatalystGlassPlaybackControlsController)initWithPlayerViewController:(id)a3 visibilityDelegate:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v29.receiver = self;
  v29.super_class = AVCatalystGlassPlaybackControlsController;
  v8 = [(AVCatalystGlassPlaybackControlsController *)&v29 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_playerViewController, v6);
    v10 = [v6 playerController];
    objc_storeWeak(&v9->_playerController, v10);

    v11 = [(AVCatalystGlassPlaybackControlsController *)v9 playerViewController];
    v9->_showsPlaybackControls = [v11 showsPlaybackControls];

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
    v9->_canIncludePlaybackControlsWhenInline = [v6 canIncludePlaybackControlsWhenInline];
    v12 = [MEMORY[0x1E696AE30] processInfo];
    v13 = [v12 globallyUniqueString];
    uniqueIdentifer = v9->_uniqueIdentifer;
    v9->_uniqueIdentifer = v13;

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

    [(AVCatalystGlassPlaybackControlsViewVisibilityBroadcaster *)v9->_visibilityBroadcaster addObserver:v6];
    [(AVCatalystGlassPlaybackControlsViewVisibilityBroadcaster *)v9->_visibilityBroadcaster addObserver:v7];
    v23 = [(AVCatalystGlassPlaybackControlsController *)v9 playerController];
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      v25 = [(AVCatalystGlassPlaybackControlsController *)v9 playerControllerObservationController];
      v26 = [v25 startObserving:v9 keyPath:@"playerController.photosensitivityRegions" includeInitialValue:1 observationHandler:&__block_literal_global_397];
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