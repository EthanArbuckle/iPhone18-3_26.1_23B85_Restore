@interface AVPlaybackControlsController
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
- (AVPlaybackControlsController)initWithPlayerViewController:(id)controller;
- (AVPlayerController)playerController;
- (AVPlayerViewController)playerViewController;
- (AVTurboModePlaybackControlsPlaceholderView)turboModePlaybackControlsPlaceholderView;
- (BOOL)_prefersVolumeSliderExpandedAutomatically;
- (BOOL)_wantsRouteDetectionEnabled;
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
- (void)_handlePhotosensitiveRegions;
- (void)_hideContextMenusIfPresented;
- (void)_observeBoolForKeyPath:(id)path usingKeyValueObservationController:(id)controller observationHandler:(id)handler;
- (void)_seekByTimeInterval:(double)interval toleranceBefore:(double)before toleranceAfter:(double)after;
- (void)_showOrHideDisplayModeControls;
- (void)_startObservingForPlaybackViewUpdates;
- (void)_startObservingPlayerControllerProperties;
- (void)_startObservingPotentiallyUnimplementedPlayerControllerProperties;
- (void)_updateContainerInclusion;
- (void)_updateControlInclusion;
- (void)_updateHasPlaybackBegunSincePlayerControllerBecameReadyToPlay:(BOOL)play playing:(BOOL)playing userDidEndTappingProminentPlayButton:(BOOL)button;
- (void)_updateOrCreateTimeResolverIfNeeded;
- (void)_updatePhotosensitivityRegions;
- (void)_updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:(BOOL)visible;
- (void)_updatePlaybackControlsVisibleAndObservingUpdates;
- (void)_updatePlaybackSpeedControlInclusion;
- (void)_updateRouteDetectionEnabled;
- (void)_updateScrubberAndTimeLabels;
- (void)_updateSkipButtonsEnableLongPress;
- (void)_updateTransportBarCustomMenuItemsIfNeeded;
- (void)_updateVideoGravityButtonType;
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
- (void)playerViewControllerContentViewDidChangeVideoGravity:(id)gravity;
- (void)playerViewControllerContentViewDidLayoutSubviews:(id)subviews;
- (void)playerViewControllerContentViewDidMoveToSuperviewOrWindow:(id)window;
- (void)playerViewControllerContentViewDidUpdateScrollingStatus:(id)status;
- (void)playerViewControllerContentViewPlaybackContentContainerViewChanged:(id)changed;
- (void)prominentPlayButtonTouchUpInside:(id)inside;
- (void)scrubToTime:(double)time resolution:(double)resolution;
- (void)setAllowsEnteringFullScreen:(BOOL)screen;
- (void)setCanIncludePlaybackControlsWhenInline:(BOOL)inline;
- (void)setCanIncludeVideoGravityButton:(BOOL)button;
- (void)setCoveringWindow:(BOOL)window;
- (void)setCustomControlItems:(id)items;
- (void)setForcePlaybackControlsHidden:(BOOL)hidden;
- (void)setHasCustomPlaybackControls:(BOOL)controls;
- (void)setPictureInPictureActive:(BOOL)active;
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
- (void)setShowsTimecodes:(BOOL)timecodes;
- (void)setShowsVideoGravityButton:(BOOL)button;
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

@implementation AVPlaybackControlsController

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

- (AVTurboModePlaybackControlsPlaceholderView)turboModePlaybackControlsPlaceholderView
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

- (void)_updateTransportBarCustomMenuItemsIfNeeded
{
  v39 = *MEMORY[0x1E69E9840];
  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  selfCopy = self;
  v3 = self->_transportBarCustomMenuItems;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v35;
    v7 = 0x1E69DC000uLL;
    p_info = AVCaptureEvent.info;
    v9 = 0x1E69DC000uLL;
    do
    {
      v10 = 0;
      v32 = v5;
      do
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v34 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          identifier2 = v11;
          title = [identifier2 title];
          v14 = [p_info + 421 buttonWithAccessibilityIdentifier:title isFirstGeneration:1];

          image = [identifier2 image];

          if (image)
          {
            image2 = [identifier2 image];
            [v14 setImage:image2 forState:0];
          }

          title2 = [identifier2 title];

          if (title2)
          {
            title3 = [identifier2 title];
            [v14 setTitle:title3 forState:0];
          }

          [v14 addAction:identifier2 forControlEvents:0x2000];
          identifier = [identifier2 identifier];
          [v14 setMenuElementIdentifier:identifier];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_16;
          }

          v20 = p_info + 421;
          v21 = v11;
          [v21 title];
          v22 = v6;
          v23 = v3;
          v24 = v7;
          v25 = v9;
          v27 = v26 = p_info;
          v14 = [v20 buttonWithAccessibilityIdentifier:v27 isFirstGeneration:1];

          p_info = v26;
          v9 = v25;
          v7 = v24;
          v3 = v23;
          v6 = v22;
          v5 = v32;
          image3 = [v21 image];
          [v14 setImage:image3 forState:0];

          [v14 setMenu:v21];
          [v14 setShowsMenuAsPrimaryAction:1];
          identifier2 = [v21 identifier];

          [v14 setMenuElementIdentifier:identifier2];
        }

        if (v14)
        {
          [v33 addObject:v14];
        }

LABEL_16:
        ++v10;
      }

      while (v5 != v10);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v5);
  }

  playbackControlsView = [(AVPlaybackControlsController *)selfCopy playbackControlsView];
  transportControlsView = [playbackControlsView transportControlsView];
  [transportControlsView setCustomMenuItemsViews:v33];
}

- (void)_updateRouteDetectionEnabled
{
  routeDetectorCoordinator = [(AVPlaybackControlsController *)self routeDetectorCoordinator];
  [routeDetectorCoordinator setRouteDetectionEnabled:{-[AVPlaybackControlsController _wantsRouteDetectionEnabled](self, "_wantsRouteDetectionEnabled")}];
}

- (void)_updateHasPlaybackBegunSincePlayerControllerBecameReadyToPlay:(BOOL)play playing:(BOOL)playing userDidEndTappingProminentPlayButton:(BOOL)button
{
  if (playing || button || !play)
  {
    [(AVPlaybackControlsController *)self setHasPlaybackBegunSincePlayerControllerBecameReadyToPlay:play];
  }
}

- (void)_updateVideoGravityButtonType
{
  if (![(AVPlaybackControlsController *)self showsVideoGravityButton])
  {
    goto LABEL_9;
  }

  playerController = [(AVPlaybackControlsController *)self playerController];
  if (![playerController hasVideo] || !-[AVPlaybackControlsController isFullScreen](self, "isFullScreen"))
  {
    goto LABEL_6;
  }

  playerController2 = [(AVPlaybackControlsController *)self playerController];
  if ([playerController2 isPlayingOnExternalScreen])
  {

    goto LABEL_6;
  }

  playerViewController = [(AVPlaybackControlsController *)self playerViewController];
  contentTransitioningDelegate = [playerViewController contentTransitioningDelegate];

  if (!contentTransitioningDelegate)
  {
    playerController3 = [(AVPlaybackControlsController *)self playerController];
    [playerController3 contentDimensions];
    v12 = v11;
    v14 = v13;

    if ([(AVPlaybackControlsController *)self hasBecomeReadyToPlay])
    {
      v17 = ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v14 >= 0.0 || (*&v14 - 1) < 0xFFFFFFFFFFFFFLL;
      v19 = (v12 < 0.0 || ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&v12 - 1) > 0xFFFFFFFFFFFFELL;
      v5 = 1;
      if (!v19 && v17)
      {
        playerViewController2 = [(AVPlaybackControlsController *)self playerViewController];
        playerController = [playerViewController2 contentView];

        [playerController bounds];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v29 = v12 / v14;
        [playerController frame];
        UIRectGetCenter();
        v31 = v30;
        v33 = v32;
        cacheLargestInscribedRect = [playerController cacheLargestInscribedRect];
        [cacheLargestInscribedRect getLargestInscribableRectForView:playerController withCenter:v31 aspectRatio:{v33, v29}];
        v36 = v35;
        v38 = v37;
        v40 = v39;
        v42 = v41;

        v48.origin.x = v36;
        v48.origin.y = v38;
        v48.size.width = v40;
        v48.size.height = v42;
        MinX = CGRectGetMinX(v48);
        v49.origin.x = v36;
        v49.origin.y = v38;
        v49.size.width = v40;
        v49.size.height = v42;
        MinY = CGRectGetMinY(v49);
        v50.origin.x = v36;
        v50.origin.y = v38;
        v50.size.width = v40;
        v50.size.height = v42;
        v52.origin.x = v22;
        v52.origin.y = v24;
        v52.size.width = v26;
        v52.size.height = v28;
        if (!CGRectEqualToRect(v50, v52))
        {
          v51.origin.x = v36;
          v51.origin.y = v38;
          v51.size.width = v40;
          v51.size.height = v42;
          if (CGRectGetMinX(v51) <= 0.0)
          {
            v5 = 1;
            if (MinX != 0.0 || MinY <= 0.0)
            {
              goto LABEL_7;
            }

            v43 = ![(AVPlaybackControlsController *)self isVideoScaled];
            v44 = 1;
          }

          else
          {
            v43 = ![(AVPlaybackControlsController *)self isVideoScaled];
            v44 = 3;
          }

          if (v43)
          {
            v5 = v44;
          }

          else
          {
            v5 = v44 + 1;
          }

LABEL_7:

          goto LABEL_10;
        }

LABEL_6:
        v5 = 0;
        goto LABEL_7;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
LABEL_9:
    v5 = 0;
  }

LABEL_10:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__AVPlaybackControlsController__updateVideoGravityButtonType__block_invoke;
  aBlock[3] = &unk_1E7209A60;
  aBlock[4] = self;
  aBlock[5] = v5;
  v8 = _Block_copy(aBlock);
  v9 = v8;
  if (v5)
  {
    v8[2](v8);
    [(AVPlaybackControlsController *)self setCanIncludeVideoGravityButton:1];
  }

  else
  {
    [(AVPlaybackControlsController *)self setCanIncludeVideoGravityButton:0];
    v9[2](v9);
  }
}

void __61__AVPlaybackControlsController__updateVideoGravityButtonType__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) videoGravityButtonType] != *(a1 + 40))
  {
    [*(a1 + 32) setVideoGravityButtonType:?];
  }

  v2 = [*(a1 + 32) videoGravityButtonType];
  if (v2 > 4)
  {
    v8 = 0;
  }

  else
  {
    v8 = *off_1E7208E18[v2];
  }

  v3 = [*(a1 + 32) playbackControlsView];
  v4 = [v3 videoGravityButton];
  v5 = [v4 imageName];

  if (v8 != v5)
  {
    v6 = [*(a1 + 32) playbackControlsView];
    v7 = [v6 videoGravityButton];
    [v7 setImageName:v8];
  }
}

- (void)_updatePhotosensitivityRegions
{
  if (_AXSPhotosensitiveMitigationEnabled() && ([(AVPlaybackControlsController *)self playerController], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_opt_respondsToSelector(), v3, (v4 & 1) != 0))
  {
    playerController = [(AVPlaybackControlsController *)self playerController];
    photosensitivityRegions = [playerController photosensitivityRegions];
  }

  else
  {
    photosensitivityRegions = 0;
  }

  playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
  transportControlsView = [playbackControlsView transportControlsView];
  scrubber = [transportControlsView scrubber];
  [scrubber setPhotosensitiveDisplayTimes:photosensitivityRegions];
}

- (void)_handlePhotosensitiveRegions
{
  playerController = [(AVPlaybackControlsController *)self playerController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    playerControllerObservationController = [(AVPlaybackControlsController *)self playerControllerObservationController];
    v5 = [playerControllerObservationController startObserving:self keyPath:@"playerController.photosensitivityRegions" includeInitialValue:1 observationHandler:&__block_literal_global_405];
  }
}

- (void)_updateScrubberAndTimeLabels
{
  playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
  transportControlsView = [playbackControlsView transportControlsView];

  if (![(AVPlaybackControlsController *)self needsTimeResolver]|| ([(AVPlaybackControlsController *)self timeResolver], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    timeResolver = [(AVPlaybackControlsController *)self timeResolver];

    timecodeForCurrentTime = 0;
    v16 = 0;
    if (timeResolver)
    {
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  [(AVPlaybackControlsController *)self maximumTime];
  v6 = v5;
  [(AVPlaybackControlsController *)self minimumTime];
  v8 = v6 - v7;
  elapsedTimeFormatter = [(AVPlaybackControlsController *)self elapsedTimeFormatter];
  [elapsedTimeFormatter setFormatTemplate:v8];

  remainingTimeFormatter = [(AVPlaybackControlsController *)self remainingTimeFormatter];
  [remainingTimeFormatter setFormatTemplate:v8];

  if ([transportControlsView liveStreamingControlsIncludeScrubber])
  {
    elapsedTimeFormatter2 = [(AVPlaybackControlsController *)self elapsedTimeFormatter];
    [(AVPlaybackControlsController *)self minimumTime];
    v13 = v12;
    [(AVPlaybackControlsController *)self maximumTime];
    timecodeForCurrentTime = [elapsedTimeFormatter2 stringFromSeconds:v13 - v14];
    v16 = &stru_1EFED57D8;
  }

  else
  {
    if (-[AVPlaybackControlsController showsTimecodes](self, "showsTimecodes") && (-[AVPlaybackControlsController playerController](self, "playerController"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 hasReadableTimecodes], v18, v19))
    {
      playerController = [(AVPlaybackControlsController *)self playerController];
      timecodeForCurrentTime = [playerController timecodeForCurrentTime];

      elapsedTimeFormatter2 = [(AVPlaybackControlsController *)self playerController];
      maxTimecode = [elapsedTimeFormatter2 maxTimecode];
    }

    else
    {
      elapsedTimeFormatter3 = [(AVPlaybackControlsController *)self elapsedTimeFormatter];
      [(AVPlaybackControlsController *)self targetTime];
      timecodeForCurrentTime = [elapsedTimeFormatter3 stringFromSeconds:?];

      elapsedTimeFormatter2 = [(AVPlaybackControlsController *)self remainingTimeFormatter];
      [(AVPlaybackControlsController *)self maximumTime];
      v24 = v23;
      [(AVPlaybackControlsController *)self targetTime];
      maxTimecode = [elapsedTimeFormatter2 stringFromSeconds:v24 - v25];
    }

    v16 = maxTimecode;
  }

  [(AVPlaybackControlsController *)self minimumTime];
  [(AVPlaybackControlsController *)self minimumTime];
  if (fabs(v26) == INFINITY || ([(AVPlaybackControlsController *)self maximumTime], [(AVPlaybackControlsController *)self maximumTime], fabs(v27) == INFINITY) || ([(AVPlaybackControlsController *)self currentTime], [(AVPlaybackControlsController *)self currentTime], fabs(v28) == INFINITY) || ([(AVPlaybackControlsController *)self maximumTime], v30 = v29, [(AVPlaybackControlsController *)self minimumTime], v30 <= v31) || ([(AVPlaybackControlsController *)self currentTime], v33 = v32, [(AVPlaybackControlsController *)self minimumTime], v33 < v34) && ([(AVPlaybackControlsController *)self currentTime], v36 = v35, [(AVPlaybackControlsController *)self maximumTime], v36 > v37))
  {
LABEL_18:
    elapsedTimeFormatter4 = [(AVPlaybackControlsController *)self elapsedTimeFormatter];
    v39 = [elapsedTimeFormatter4 stringFromSeconds:NAN];

    remainingTimeFormatter2 = [(AVPlaybackControlsController *)self remainingTimeFormatter];
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
    goto LABEL_19;
  }

  [(AVPlaybackControlsController *)self minimumTime];
  v67 = v66;
  [(AVPlaybackControlsController *)self maximumTime];
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
    playerController2 = [(AVPlaybackControlsController *)self playerController];
    if ([playerController2 isPlayingOnExternalScreen])
    {
      scrubber6 = [transportControlsView scrubber];
      [scrubber6 timeIntervalSinceTrackingEnded];
      v77 = v76;

      if (v77 <= 0.5)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

    [(AVPlaybackControlsController *)self targetTime];
    v79 = v78;
    playerController3 = [(AVPlaybackControlsController *)self playerController];
    if ([playerController3 hasSeekableLiveStreamingContent])
    {
      playerController4 = [(AVPlaybackControlsController *)self playerController];
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

LABEL_19:

LABEL_20:
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

LABEL_26:
  playerController5 = [(AVPlaybackControlsController *)self playerController];
  v55 = objc_opt_respondsToSelector();
  if (v55)
  {
    playerController6 = [(AVPlaybackControlsController *)self playerController];
    interstitialController = [playerController6 interstitialController];
    currentInterstitialTimeRange = [interstitialController currentInterstitialTimeRange];

    if (currentInterstitialTimeRange)
    {
      v55 = 0;
      goto LABEL_35;
    }

    playerController5 = [(AVPlaybackControlsController *)self playerController];
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
        goto LABEL_35;
      }

      playerController5 = [transportControlsView scrubber];
      player = [(AVPlaybackControlsController *)self playerController];
      currentItem = [player player];
      interstitialTimeRanges = [currentItem currentItem];
      v61InterstitialTimeRanges = [interstitialTimeRanges interstitialTimeRanges];
      [playerController5 setInterstitialDisplayTimes:v61InterstitialTimeRanges];
    }
  }

LABEL_35:
  scrubber8 = [transportControlsView scrubber];
  [scrubber8 setShowsTimelineMarkers:v55 & 1];
}

- (void)_updatePlaybackSpeedControlInclusion
{
  playerController = [(AVPlaybackControlsController *)self playerController];
  if ([playerController hasLiveStreamingContent])
  {
    hasSeekableLiveStreamingContent = [playerController hasSeekableLiveStreamingContent];
  }

  else
  {
    hasSeekableLiveStreamingContent = 1;
  }

  playbackSpeedCollection = [(AVPlaybackControlsController *)self playbackSpeedCollection];
  if (playbackSpeedCollection)
  {
    v5 = +[AVKitGlobalSettings shared];
    if ([v5 playbackSpeedControlEnabled])
    {
      v6 = ([playerController isPlayingOnMatchPointDevice] ^ 1) & hasSeekableLiveStreamingContent;
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

  if (v6 != [(AVPlaybackControlsController *)self showsPlaybackSpeedButton])
  {
    [(AVPlaybackControlsController *)self setShowsPlaybackSpeedButton:v6];
  }
}

- (void)_updateOrCreateTimeResolverIfNeeded
{
  if (![(AVPlaybackControlsController *)self needsTimeResolver])
  {
    timeResolver = [(AVPlaybackControlsController *)self timeResolver];
    [timeResolver setPlayerController:0];

    [(AVPlaybackControlsController *)self setTimeResolver:0];
    return;
  }

  playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
  transportControlsView = [playbackControlsView transportControlsView];
  scrubber = [transportControlsView scrubber];
  v6 = 1.0;
  if (([scrubber isTracking] & 1) == 0)
  {
    playbackControlsView2 = [(AVPlaybackControlsController *)self playbackControlsView];
    volumeSlider = [playbackControlsView2 volumeSlider];
    isTracking = [volumeSlider isTracking];

    if (isTracking)
    {
      goto LABEL_6;
    }

    playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
    transportControlsView = [playbackControlsView transportControlsView];
    scrubber = [transportControlsView scrubber];
    [scrubber frame];
    Width = CGRectGetWidth(v37);
    playbackControlsView3 = [(AVPlaybackControlsController *)self playbackControlsView];
    traitCollection = [playbackControlsView3 traitCollection];
    [traitCollection displayScale];
    v6 = Width * v13;
  }

LABEL_6:
  v14 = 1.0;
  if ([(AVPlaybackControlsController *)self showsTimecodes])
  {
    playerController = [(AVPlaybackControlsController *)self playerController];
    hasReadableTimecodes = [playerController hasReadableTimecodes];

    if (hasReadableTimecodes)
    {
      playerController2 = [(AVPlaybackControlsController *)self playerController];
      [playerController2 timecodeObservationInterval];
      v14 = v18;
    }
  }

  timeResolver2 = [(AVPlaybackControlsController *)self timeResolver];
  playerController3 = [timeResolver2 playerController];
  playerController4 = [(AVPlaybackControlsController *)self playerController];

  if (playerController3 != playerController4)
  {
    v22 = objc_alloc_init(AVPlayerControllerTimeResolver);
    playerController5 = [(AVPlaybackControlsController *)self playerController];
    [(AVPlayerControllerTimeResolver *)v22 setPlayerController:playerController5];

    [(AVPlayerControllerTimeResolver *)v22 setResolution:v6];
    [(AVPlayerControllerTimeResolver *)v22 setInterval:v14];
    v24 = MEMORY[0x1E69DD250];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __67__AVPlaybackControlsController__updateOrCreateTimeResolverIfNeeded__block_invoke;
    v34[3] = &unk_1E7209FB0;
    v34[4] = self;
    v35 = v22;
    v25 = v22;
    [v24 performWithoutAnimation:v34];

    return;
  }

  timeResolver3 = [(AVPlaybackControlsController *)self timeResolver];
  [timeResolver3 resolution];
  if (v28 == v6)
  {
    timeResolver4 = [(AVPlaybackControlsController *)self timeResolver];
    [timeResolver4 interval];
    v31 = vabdd_f64(v30, v14);

    if (v31 < 2.22044605e-16)
    {
      return;
    }
  }

  else
  {
  }

  timeResolver5 = [(AVPlaybackControlsController *)self timeResolver];
  [timeResolver5 setResolution:v6];

  timeResolver6 = [(AVPlaybackControlsController *)self timeResolver];
  [timeResolver6 setInterval:v14];
}

void __67__AVPlaybackControlsController__updateOrCreateTimeResolverIfNeeded__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setTimeResolver:*(a1 + 40)];
  v4 = [*(a1 + 32) playbackControlsView];
  v2 = [v4 transportControlsView];
  v3 = [v2 scrubber];
  [v3 layoutIfNeeded];
}

- (void)_updateContainerInclusion
{
  playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];

  if (playbackControlsView)
  {
    showsProminentPlayButton = [(AVPlaybackControlsController *)self showsProminentPlayButton];
    playbackControlsIncludeTransportControls = [(AVPlaybackControlsController *)self playbackControlsIncludeTransportControls];
    playbackControlsIncludeDisplayModeControls = [(AVPlaybackControlsController *)self playbackControlsIncludeDisplayModeControls];
    playbackControlsIncludeVolumeControls = [(AVPlaybackControlsController *)self playbackControlsIncludeVolumeControls];
    if (![(AVPlaybackControlsController *)self isFullScreen]&& [(AVPlaybackControlsController *)self showsMinimalPlaybackControlsWhenEmbeddedInline])
    {
      if (showsProminentPlayButton)
      {
        v8 = 2;
        goto LABEL_25;
      }

      v8 = 0;
LABEL_20:
      if (![(AVPlaybackControlsController *)self shouldShowVolumeControlInTransportBar])
      {
        playerController = [(AVPlaybackControlsController *)self playerController];
        if ([playerController hasEnabledAudio])
        {
        }

        else
        {
          showsVolumeControlsForContentWithNoAudio = [(AVPlaybackControlsController *)self showsVolumeControlsForContentWithNoAudio];

          if (!showsVolumeControlsForContentWithNoAudio)
          {
            goto LABEL_25;
          }
        }

        v8 |= 0x10uLL;
      }

LABEL_25:
      playbackControlsView2 = [(AVPlaybackControlsController *)self playbackControlsView];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __57__AVPlaybackControlsController__updateContainerInclusion__block_invoke;
      v12[3] = &unk_1E720A090;
      v12[4] = self;
      [playbackControlsView2 setIncludedContainers:v8 animations:v12];

      return;
    }

    if (showsProminentPlayButton)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    if (playbackControlsIncludeTransportControls)
    {
      if (playbackControlsIncludeDisplayModeControls)
      {
        v8 |= 0xCuLL;
        if (!playbackControlsIncludeVolumeControls)
        {
          goto LABEL_25;
        }

        goto LABEL_20;
      }

      v8 |= 4uLL;
    }

    else if (playbackControlsIncludeDisplayModeControls)
    {
      v8 |= 8uLL;
      if (!playbackControlsIncludeVolumeControls)
      {
        goto LABEL_25;
      }

      goto LABEL_20;
    }

    if (!playbackControlsIncludeVolumeControls)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }
}

- (void)_updateControlInclusion
{
  playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
  volumeSlider = [playbackControlsView volumeSlider];
  -[AVPlaybackControlsController _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:](self, "_updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:", [volumeSlider isIncluded]);

  [(AVPlaybackControlsController *)self _showOrHideDisplayModeControls];
}

- (void)_updateSkipButtonsEnableLongPress
{
  playerController = [(AVPlaybackControlsController *)self playerController];

  if (playerController)
  {
    playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
    skipBackButton = [playbackControlsView skipBackButton];
    playerController2 = [(AVPlaybackControlsController *)self playerController];
    [skipBackButton setTreatsForcePressAsLongPress:(objc_opt_respondsToSelector() & 1) == 0];

    playbackControlsView2 = [(AVPlaybackControlsController *)self playbackControlsView];
    skipForwardButton = [playbackControlsView2 skipForwardButton];
    playerController3 = [(AVPlaybackControlsController *)self playerController];
    [skipForwardButton setTreatsForcePressAsLongPress:(objc_opt_respondsToSelector() & 1) == 0];
  }
}

- (BOOL)_wantsRouteDetectionEnabled
{
  playerViewController = [(AVPlaybackControlsController *)self playerViewController];
  if ([playerViewController isBeingPresented])
  {
  }

  else
  {
    playerViewController2 = [(AVPlaybackControlsController *)self playerViewController];
    fullScreenViewController = [playerViewController2 fullScreenViewController];
    isBeingPresented = [fullScreenViewController isBeingPresented];

    if ((isBeingPresented & 1) == 0)
    {
      playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
      avkit_isInAWindowAndVisible = [playbackControlsView avkit_isInAWindowAndVisible];

      if (!avkit_isInAWindowAndVisible)
      {
        LOBYTE(showsPlaybackControls) = 0;
        return showsPlaybackControls;
      }
    }
  }

  showsPlaybackControls = [(AVPlaybackControlsController *)self showsPlaybackControls];
  if (showsPlaybackControls)
  {
    if ([(AVPlaybackControlsController *)self isFullScreen])
    {
      LOBYTE(showsPlaybackControls) = 1;
    }

    else
    {

      LOBYTE(showsPlaybackControls) = [(AVPlaybackControlsController *)self canIncludePlaybackControlsWhenInline];
    }
  }

  return showsPlaybackControls;
}

- (void)_startObservingPotentiallyUnimplementedPlayerControllerProperties
{
  if (![(AVPlaybackControlsController *)self hasBegunObservingPotentiallyUnimplementedPlayerControllerProperties])
  {
    [(AVPlaybackControlsController *)self setHasBegunObservingPotentiallyUnimplementedPlayerControllerProperties:1];
    objc_initWeak(&location, self);
    playerController = [(AVPlaybackControlsController *)self playerController];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      playerControllerObservationController = [(AVPlaybackControlsController *)self playerControllerObservationController];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __97__AVPlaybackControlsController__startObservingPotentiallyUnimplementedPlayerControllerProperties__block_invoke;
      v24[3] = &unk_1E7209A88;
      objc_copyWeak(&v25, &location);
      [(AVPlaybackControlsController *)self _observeBoolForKeyPath:@"playerController.hasSeekableLiveStreamingContent" usingKeyValueObservationController:playerControllerObservationController observationHandler:v24];

      objc_destroyWeak(&v25);
    }

    playerController2 = [(AVPlaybackControlsController *)self playerController];
    if (objc_opt_respondsToSelector())
    {
      playerController3 = [(AVPlaybackControlsController *)self playerController];
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        playerControllerObservationController2 = [(AVPlaybackControlsController *)self playerControllerObservationController];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __97__AVPlaybackControlsController__startObservingPotentiallyUnimplementedPlayerControllerProperties__block_invoke_2;
        v22[3] = &unk_1E7209A88;
        objc_copyWeak(&v23, &location);
        [(AVPlaybackControlsController *)self _observeBoolForKeyPath:@"playerController.seeking" usingKeyValueObservationController:playerControllerObservationController2 observationHandler:v22];

        playerControllerObservationController3 = [(AVPlaybackControlsController *)self playerControllerObservationController];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __97__AVPlaybackControlsController__startObservingPotentiallyUnimplementedPlayerControllerProperties__block_invoke_3;
        v20[3] = &unk_1E7209A88;
        objc_copyWeak(&v21, &location);
        [(AVPlaybackControlsController *)self _observeBoolForKeyPath:@"playerController.scrubbing" usingKeyValueObservationController:playerControllerObservationController3 observationHandler:v20];

        objc_destroyWeak(&v21);
        objc_destroyWeak(&v23);
      }
    }

    else
    {
    }

    playerController4 = [(AVPlaybackControlsController *)self playerController];
    v12 = objc_opt_respondsToSelector();

    playerControllerObservationController4 = [(AVPlaybackControlsController *)self playerControllerObservationController];
    if (v12)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __97__AVPlaybackControlsController__startObservingPotentiallyUnimplementedPlayerControllerProperties__block_invoke_4;
      v18[3] = &unk_1E7208C38;
      v14 = &v19;
      objc_copyWeak(&v19, &location);
      v15 = [playerControllerObservationController4 startObserving:self keyPath:@"playerController.timeControlStatus" includeInitialValue:1 observationHandler:v18];
    }

    else
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __97__AVPlaybackControlsController__startObservingPotentiallyUnimplementedPlayerControllerProperties__block_invoke_5;
      v16[3] = &unk_1E7209A88;
      v14 = &v17;
      objc_copyWeak(&v17, &location);
      [(AVPlaybackControlsController *)self _observeBoolForKeyPath:@"playerController.playing" usingKeyValueObservationController:playerControllerObservationController4 observationHandler:v16];
    }

    objc_destroyWeak(v14);
    objc_destroyWeak(&location);
  }
}

void __97__AVPlaybackControlsController__startObservingPotentiallyUnimplementedPlayerControllerProperties__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHasSeekableLiveStreamingContent:a2];
}

void __97__AVPlaybackControlsController__startObservingPotentiallyUnimplementedPlayerControllerProperties__block_invoke_2(uint64_t a1, int a2)
{
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 playerController];
  [v4 setScrubbingOrSeeking:{objc_msgSend(v3, "isScrubbing") | a2}];
}

void __97__AVPlaybackControlsController__startObservingPotentiallyUnimplementedPlayerControllerProperties__block_invoke_3(uint64_t a1, int a2)
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

void __97__AVPlaybackControlsController__startObservingPotentiallyUnimplementedPlayerControllerProperties__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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

void __97__AVPlaybackControlsController__startObservingPotentiallyUnimplementedPlayerControllerProperties__block_invoke_5(uint64_t a1, int a2)
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

- (void)_startObservingForPlaybackViewUpdates
{
  location[2] = *MEMORY[0x1E69E9840];
  playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];

  if (!playbackControlsView)
  {
    v4 = _AVLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v62 = _AVMethodProem(self);
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v62;
      _os_log_error_impl(&dword_18B49C000, v4, OS_LOG_TYPE_ERROR, "Called %@ before creating playback controls view!", location, 0xCu);
    }
  }

  playbackControlsView2 = [(AVPlaybackControlsController *)self playbackControlsView];
  playbackControlsView3 = [(AVPlaybackControlsController *)self playbackControlsView];
  objc_initWeak(location, playbackControlsView3);

  objc_initWeak(&from, self);
  [(AVPlaybackControlsController *)self setResumingUpdates:1];
  playbackControlsObservationController = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke;
  v82[3] = &unk_1E7209A88;
  objc_copyWeak(&v83, location);
  [(AVPlaybackControlsController *)self _observeBoolForKeyPath:@"prominentPlayButtonCanShowPauseGlyph" usingKeyValueObservationController:playbackControlsObservationController observationHandler:v82];

  playbackControlsObservationController2 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_2;
  v80[3] = &unk_1E7209A88;
  objc_copyWeak(&v81, &from);
  [(AVPlaybackControlsController *)self _observeBoolForKeyPath:@"showsProminentPlayButton" usingKeyValueObservationController:playbackControlsObservationController2 observationHandler:v80];

  playbackControlsObservationController3 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_3;
  v77[3] = &unk_1E7208D40;
  objc_copyWeak(&v78, location);
  objc_copyWeak(&v79, &from);
  [(AVPlaybackControlsController *)self _observeBoolForKeyPath:@"playButtonsShowPauseGlyph" usingKeyValueObservationController:playbackControlsObservationController3 observationHandler:v77];

  playbackControlsObservationController4 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_4;
  v74[3] = &unk_1E7208D40;
  objc_copyWeak(&v75, &from);
  objc_copyWeak(&v76, location);
  [(AVPlaybackControlsController *)self _observeBoolForKeyPath:@"prefersMuted" usingKeyValueObservationController:playbackControlsObservationController4 observationHandler:v74];

  playbackControlsObservationController5 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_7;
  v71[3] = &unk_1E7208D40;
  objc_copyWeak(&v72, &from);
  objc_copyWeak(&v73, location);
  [(AVPlaybackControlsController *)self _observeBoolForKeyPath:@"fullScreen" usingKeyValueObservationController:playbackControlsObservationController5 observationHandler:v71];

  playbackControlsObservationController6 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_8;
  v68[3] = &unk_1E7208D40;
  objc_copyWeak(&v69, location);
  objc_copyWeak(&v70, &from);
  [(AVPlaybackControlsController *)self _observeBoolForKeyPath:@"hasSeekableLiveStreamingContent" usingKeyValueObservationController:playbackControlsObservationController6 observationHandler:v68];

  playbackControlsObservationController7 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_9;
  v65[3] = &unk_1E7208D40;
  objc_copyWeak(&v66, location);
  objc_copyWeak(&v67, &from);
  [(AVPlaybackControlsController *)self _observeBoolForKeyPath:@"showsLoadingIndicator" usingKeyValueObservationController:playbackControlsObservationController7 observationHandler:v65];

  v97[0] = @"playerController.contentDimensions";
  v97[1] = @"fullScreen";
  v97[2] = @"playerController.playingOnExternalScreen";
  v97[3] = @"playbackViewFrame";
  v97[4] = @"playerController.hasVideo";
  v97[5] = @"hasBecomeReadyToPlay";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:6];
  playbackControlsObservationController8 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  v16 = [playbackControlsObservationController8 startObserving:self keyPaths:v14 includeInitialValue:0 observationHandler:&__block_literal_global_299];

  playbackControlsObservationController9 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_11;
  v63[3] = &unk_1E7209A88;
  objc_copyWeak(&v64, &from);
  [(AVPlaybackControlsController *)self _observeBoolForKeyPath:@"canShowLoadingIndicator" usingKeyValueObservationController:playbackControlsObservationController9 observationHandler:v63];

  [(AVPlaybackControlsController *)self _updateVideoGravityButtonType];
  if (playbackControlsView2)
  {
    scrubber = [playbackControlsView2 scrubber];
    v96[0] = scrubber;
    skipBackButton = [playbackControlsView2 skipBackButton];
    v96[1] = skipBackButton;
    skipForwardButton = [playbackControlsView2 skipForwardButton];
    v96[2] = skipForwardButton;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:3];
    playbackControlsObservationController10 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
    [(AVPlaybackControlsController *)self _bindEnabledStateOfControls:v21 toKeyPath:@"seekingEnabled" usingObservationController:playbackControlsObservationController10];

    startLeftwardContentTransitionButton = [playbackControlsView2 startLeftwardContentTransitionButton];
    v95 = startLeftwardContentTransitionButton;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v95 count:1];
    playbackControlsObservationController11 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
    [(AVPlaybackControlsController *)self _bindEnabledStateOfControls:v24 toKeyPath:@"startLeftwardContentTransitionButtonEnabled" usingObservationController:playbackControlsObservationController11];

    startRightwardContentTransitionButton = [playbackControlsView2 startRightwardContentTransitionButton];
    v94 = startRightwardContentTransitionButton;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v94 count:1];
    playbackControlsObservationController12 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
    [(AVPlaybackControlsController *)self _bindEnabledStateOfControls:v27 toKeyPath:@"startRightwardContentTransitionButtonEnabled" usingObservationController:playbackControlsObservationController12];

    scrubber2 = [playbackControlsView2 scrubber];
    v93 = scrubber2;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v93 count:1];
    playbackControlsObservationController13 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
    [(AVPlaybackControlsController *)self _bindEnabledStateOfControls:v30 toKeyPath:@"isSeekingEnabled" usingObservationController:playbackControlsObservationController13];

    transportControlsView = [playbackControlsView2 transportControlsView];
    v92 = transportControlsView;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v92 count:1];
    [(AVPlaybackControlsController *)self _bindInclusionOfControlItems:v33 toKeyPath:@"showsTransportControls"];

    skipBackButton2 = [playbackControlsView2 skipBackButton];
    v91[0] = skipBackButton2;
    skipForwardButton2 = [playbackControlsView2 skipForwardButton];
    v91[1] = skipForwardButton2;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:2];
    [(AVPlaybackControlsController *)self _bindInclusionOfControlItems:v36 toKeyPath:@"showsSkipButtons"];

    startLeftwardContentTransitionButton2 = [playbackControlsView2 startLeftwardContentTransitionButton];
    v90[0] = startLeftwardContentTransitionButton2;
    startRightwardContentTransitionButton2 = [playbackControlsView2 startRightwardContentTransitionButton];
    v90[1] = startRightwardContentTransitionButton2;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:2];
    [(AVPlaybackControlsController *)self _bindInclusionOfControlItems:v39 toKeyPath:@"showsStartContentTransitionButtons"];

    routePickerView = [playbackControlsView2 routePickerView];
    v89 = routePickerView;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v89 count:1];
    [(AVPlaybackControlsController *)self _bindInclusionOfControlItems:v41 toKeyPath:@"showsRoutePickerView"];

    mediaSelectionButton = [playbackControlsView2 mediaSelectionButton];
    v88 = mediaSelectionButton;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
    [(AVPlaybackControlsController *)self _bindInclusionOfControlItems:v43 toKeyPath:@"showsMediaSelectionButton"];

    playbackSpeedButton = [playbackControlsView2 playbackSpeedButton];
    v87 = playbackSpeedButton;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v87 count:1];
    [(AVPlaybackControlsController *)self _bindInclusionOfControlItems:v45 toKeyPath:@"showsPlaybackSpeedButton"];
  }

  playbackControlsObservationController14 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  v86[0] = @"minimumTime";
  v86[1] = @"maximumTime";
  v86[2] = @"currentTime";
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:3];
  v48 = [playbackControlsObservationController14 startObserving:self keyPaths:v47 includeInitialValue:1 observationHandler:&__block_literal_global_340];

  playbackControlsObservationController15 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  [playbackControlsObservationController15 startObservingNotificationForName:*MEMORY[0x1E69DE828] object:0 notificationCenter:0 observationHandler:&__block_literal_global_342];

  playbackControlsObservationController16 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  [playbackControlsObservationController16 startObservingNotificationForName:*MEMORY[0x1E69DE7D0] object:0 notificationCenter:0 observationHandler:&__block_literal_global_344_22048];

  playbackControlsObservationController17 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  playbackRateMenuController = [(AVPlaybackControlsController *)self playbackRateMenuController];
  v53 = [playbackControlsObservationController17 startObserving:playbackRateMenuController keyPath:@"menu" observationHandler:&__block_literal_global_350];

  playbackControlsObservationController18 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  v55 = [playbackControlsObservationController18 startObserving:self keyPath:@"showsMediaSelectionButton" observationHandler:&__block_literal_global_352];

  playbackControlsObservationController19 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  playerController = [(AVPlaybackControlsController *)self playerController];
  v85[0] = @"audioMediaSelectionOptions";
  v85[1] = @"legibleMediaSelectionOptions";
  v85[2] = @"currentAudioMediaSelectionOption";
  v85[3] = @"currentLegibleMediaSelectionOption";
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:4];
  v59 = [playbackControlsObservationController19 startObserving:playerController keyPaths:v58 observationHandler:&__block_literal_global_366];

  volumeController = [(AVPlaybackControlsController *)self volumeController];
  [volumeController volume];
  [(AVPlaybackControlsController *)self _updateVolumeSliderValueWithSystemVolume:0 animated:?];

  playbackControlsView4 = [(AVPlaybackControlsController *)self playbackControlsView];
  [playbackControlsView4 setHidden:0];

  [(AVPlaybackControlsController *)self setResumingUpdates:0];
  objc_destroyWeak(&v64);

  objc_destroyWeak(&v67);
  objc_destroyWeak(&v66);
  objc_destroyWeak(&v70);
  objc_destroyWeak(&v69);
  objc_destroyWeak(&v73);
  objc_destroyWeak(&v72);
  objc_destroyWeak(&v76);
  objc_destroyWeak(&v75);
  objc_destroyWeak(&v79);
  objc_destroyWeak(&v78);
  objc_destroyWeak(&v81);
  objc_destroyWeak(&v83);
  objc_destroyWeak(&from);
  objc_destroyWeak(location);
}

void __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke(uint64_t a1, int a2)
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

void __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateContainerInclusion];
}

void __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_3(uint64_t a1, uint64_t a2)
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

void __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_4(uint64_t a1, uint64_t a2)
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

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained volumeController];
    [v5 volume];
    [WeakRetained _updateVolumeSliderValueWithSystemVolume:v10 ^ 1u animated:?];
  }

LABEL_5:
  v11 = objc_loadWeakRetained((a1 + 32));
  [v11 _updateVolumeButtonGlyph];

  v12 = objc_loadWeakRetained((a1 + 32));
  v13 = [v12 volumeAnimator];
  [v13 restoreVolumeIfNeeded];

  v14 = objc_loadWeakRetained((a1 + 32));
  [v14 setVolumeAnimator:0];

  v15 = [AVPlayerControllerVolumeAnimator alloc];
  v16 = objc_loadWeakRetained((a1 + 32));
  v17 = [v16 playerController];
  v18 = [(AVPlayerControllerVolumeAnimator *)v15 initWithPlayerController:v17];

  v19 = objc_loadWeakRetained((a1 + 32));
  v20 = [v19 playerController];
  v21 = [v20 isMuted] & a2;

  if (a2)
  {
    v22 = [(AVPlayerControllerVolumeAnimator *)v18 canAnimateVolumeTowardsZero];
    LOBYTE(v23) = 0;
  }

  else
  {
    v24 = objc_loadWeakRetained((a1 + 32));
    v25 = [v24 playerController];
    v23 = [v25 isMuted] ^ 1;

    v22 = [(AVPlayerControllerVolumeAnimator *)v18 canAnimateVolumeAwayFromZero];
  }

  v26 = objc_loadWeakRetained((a1 + 32));
  v27 = v26;
  if (((v21 | v23) & 1) != 0 || !v22)
  {
    v33 = [v26 playerController];
    [v33 setMuted:a2];
  }

  else
  {
    [v26 setVolumeAnimator:v18];

    v28 = [MEMORY[0x1E696AFB0] UUID];
    v29 = objc_loadWeakRetained((a1 + 32));
    [v29 setPlayerMuteFadeAnimationID:v28];

    v30 = objc_loadWeakRetained((a1 + 32));
    v31 = [v30 volumeAnimator];
    v32 = v31;
    if (a2)
    {
      [v31 setProgressTowardsZero:0.0];
    }

    else
    {
      [v31 setProgressAwayFromZero:0.0];
    }

    v34 = objc_alloc_init(AVDisplayLink);
    v35 = objc_loadWeakRetained((a1 + 32));
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_5;
    v36[3] = &unk_1E7208DB8;
    v27 = v28;
    v37 = v27;
    objc_copyWeak(&v38, (a1 + 32));
    v39 = a2;
    [(AVDisplayLink *)v34 startDisplayLinkUpdatesForObserver:v35 framesPerSecond:36 usingBlock:v36];

    objc_destroyWeak(&v38);
  }
}

void __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_7(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateContainerInclusion];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 volumeController];
  [v6 setPrefersSystemVolumeHUDHidden:a2];

  v7 = objc_loadWeakRetained((a1 + 40));
  [v7 setFullScreen:a2];

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:{objc_msgSend(v8, "_prefersVolumeSliderExpandedAutomatically")}];

  v11 = objc_loadWeakRetained((a1 + 32));
  v9 = [v11 playbackControlsView];
  v10 = objc_loadWeakRetained((a1 + 32));
  [v9 setPrefersVolumeSliderExpandedAutomatically:{objc_msgSend(v10, "_prefersVolumeSliderExpandedAutomatically")}];
}

void __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_8(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained transportControlsView];
  [v5 setLiveStreamingControlsIncludeScrubber:a2];

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 skipForwardButton];
  [v7 setHasAlternateAppearance:a2];

  v8 = objc_loadWeakRetained((a1 + 40));
  [v8 _updatePlaybackSpeedControlInclusion];
}

void __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_9(uint64_t a1, uint64_t a2)
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
  v17 = @"AVPlaybackControlsControllerShowsLoadingIndicatorValueKey";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v18[0] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  [v13 postNotificationName:@"AVPlaybackControlsControllsShowsLoadingIndicatorNotification" object:v14 userInfo:v16];
}

void __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_11(uint64_t a1, uint64_t a2)
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
    v16[2] = __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_12;
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

void __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_18(uint64_t a1, void *a2)
{
  v3 = [a2 playbackControlsView];
  v2 = [v3 controlOverflowButton];
  [v2 updateContextMenu];
}

void __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_17(uint64_t a1, void *a2)
{
  v3 = [a2 playbackControlsView];
  v2 = [v3 controlOverflowButton];
  [v2 updateContextMenu];
}

void __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_16(uint64_t a1, void *a2)
{
  v3 = [a2 playbackControlsView];
  v2 = [v3 controlOverflowButton];
  [v2 updateContextMenu];
}

void __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_14(uint64_t a1, void *a2, uint64_t a3, void *a4)
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
    [v13 _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:{objc_msgSend(v13, "_prefersVolumeSliderExpandedAutomatically")}];
    v12 = [v13 playbackControlsView];
    [v12 setPrefersVolumeSliderExpandedAutomatically:{objc_msgSend(v13, "_prefersVolumeSliderExpandedAutomatically")}];
  }
}

void __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_13(uint64_t a1, void *a2)
{
  v2 = a2;
  if (([v2 shouldIgnoreTimeResolverUpdates] & 1) == 0)
  {
    [v2 _updateScrubberAndTimeLabels];
  }
}

void __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_12(uint64_t a1, void *a2)
{
  if ([a2 isValid])
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    [v3 setShowsLoadingIndicator:{objc_msgSend(v3, "canShowLoadingIndicator")}];
  }
}

void __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [v6 runningTime];
  v8 = v7 / 0.3;
  v9 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
  *&v10 = v8;
  [v9 _solveForInput:v10];
  v12 = v11;
  v13 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v15 = [WeakRetained playerMuteFadeAnimationID];

  if (v13 != v15)
  {
    [v6 invalidate];
    v16 = objc_loadWeakRetained((a1 + 40));
    v17 = [v16 volumeAnimator];
    [v17 restoreVolumeIfNeeded];

    v18 = objc_loadWeakRetained((a1 + 40));
    [v18 setVolumeAnimator:0];
LABEL_10:

    goto LABEL_11;
  }

  [v6 runningTime];
  if (v19 < 0.3)
  {
    v20 = *(a1 + 48);
    v18 = objc_loadWeakRetained((a1 + 40));
    v21 = [v18 volumeAnimator];
    v22 = v21;
    v23 = v12;
    if (v20 == 1)
    {
      [v21 setProgressTowardsZero:v23];
    }

    else
    {
      [v21 setProgressAwayFromZero:v23];
    }

    goto LABEL_10;
  }

  [v6 invalidate];
  v24 = [v5 playerController];
  v25 = v24;
  if (*(a1 + 48))
  {
    v26 = objc_loadWeakRetained((a1 + 40));
    [v25 setMuted:{objc_msgSend(v26, "prefersMuted")}];
  }

  else
  {
    [v24 setMuted:0];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_6;
  block[3] = &unk_1E7208D90;
  v28 = *(a1 + 32);
  objc_copyWeak(&v29, (a1 + 40));
  v30 = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v29);

LABEL_11:
}

void __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained playerMuteFadeAnimationID];

  if (v2 == v4)
  {
    if (*(a1 + 48) == 1)
    {
      v5 = objc_loadWeakRetained((a1 + 40));
      v6 = [v5 prefersMuted];

      if (v6)
      {
        v7 = objc_loadWeakRetained((a1 + 40));
        v8 = [v7 playerController];
        [v8 setMuted:1];
      }
    }

    v9 = objc_loadWeakRetained((a1 + 40));
    v10 = [v9 volumeAnimator];
    [v10 restoreVolumeIfNeeded];

    v11 = objc_loadWeakRetained((a1 + 40));
    [v11 setPlayerMuteFadeAnimationID:0];

    v12 = objc_loadWeakRetained((a1 + 40));
    [v12 setVolumeAnimator:0];
  }
}

- (void)_updatePlaybackControlsVisibleAndObservingUpdates
{
  playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
  if ([(AVPlaybackControlsController *)self showsPlaybackControls]&& ![(AVPlaybackControlsController *)self playerViewControllerIsBeingTransitionedWithResizing]&& ![(AVPlaybackControlsController *)self forcePlaybackControlsHidden]&& ([(AVPlaybackControlsController *)self isFullScreen]|| [(AVPlaybackControlsController *)self canIncludePlaybackControlsWhenInline]))
  {
    [(AVPlaybackControlsController *)self _startObservingPlayerControllerProperties];
    if (!playbackControlsView)
    {
      goto LABEL_19;
    }

    v3 = 1;
  }

  else
  {
    if (![(AVPlaybackControlsController *)self hasCustomPlaybackControls])
    {
      [(AVPlaybackControlsController *)self _startObservingPlayerControllerProperties];
      goto LABEL_11;
    }

    [(AVPlaybackControlsController *)self _startObservingPlayerControllerProperties];
    if (!playbackControlsView)
    {
      goto LABEL_11;
    }

    v3 = 0;
  }

  playbackControlsObservationController = [(AVPlaybackControlsController *)self playbackControlsObservationController];

  if (playbackControlsObservationController)
  {
    if (v3)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v5 = [[AVObservationController alloc] initWithOwner:self];
    [(AVPlaybackControlsController *)self setPlaybackControlsObservationController:v5];

    [(AVPlaybackControlsController *)self _startObservingForPlaybackViewUpdates];
    if (v3)
    {
LABEL_19:
      [playbackControlsView setHidden:0];
      [(AVPlaybackControlsController *)self _updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:[(AVPlaybackControlsController *)self showsPlaybackControls]];
      if (![(AVPlaybackControlsController *)self isHidingItemsForTransition])
      {
        goto LABEL_28;
      }

      if (![(AVPlaybackControlsController *)self isFullScreen]|| [(AVPlaybackControlsController *)self timeControlStatus]!= 2)
      {
        goto LABEL_26;
      }

      playerController = [(AVPlaybackControlsController *)self playerController];
      if (([playerController isPlayingOnExternalScreen] & 1) == 0)
      {
        playerViewController = [(AVPlaybackControlsController *)self playerViewController];
        if (![playerViewController isAudioOnlyContent])
        {
          canHidePlaybackControls = [(AVPlaybackControlsController *)self canHidePlaybackControls];

          if (canHidePlaybackControls)
          {
            v8 = 0;
            goto LABEL_27;
          }

LABEL_26:
          v8 = [(AVPlaybackControlsController *)self isPictureInPictureActive]^ 1;
LABEL_27:
          [(AVPlaybackControlsController *)self endHidingItemsForTransitionAndShowImmediately:v8];
          goto LABEL_28;
        }
      }

      goto LABEL_26;
    }
  }

LABEL_11:
  if (![(AVPlaybackControlsController *)self isHidingItemsForTransition])
  {
    [(AVPlaybackControlsController *)self beginHidingItemsForTransition];
  }

LABEL_28:
  [(AVPlaybackControlsController *)self _updateRouteDetectionEnabled];
}

- (void)_startObservingPlayerControllerProperties
{
  v45[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    playerControllerObservationController = [self playerControllerObservationController];
    [playerControllerObservationController stopAllObservation];

    v3 = [[AVObservationController alloc] initWithOwner:self];
    [self setPlayerControllerObservationController:v3];

    [self _handlePhotosensitiveRegions];
    objc_initWeak(&location, self);
    playerControllerObservationController2 = [self playerControllerObservationController];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __73__AVPlaybackControlsController__startObservingPlayerControllerProperties__block_invoke;
    v42[3] = &unk_1E7208C38;
    objc_copyWeak(&v43, &location);
    v5 = [playerControllerObservationController2 startObserving:self keyPath:@"playerController.status" includeInitialValue:1 observationHandler:v42];

    playbackControlsView = [self playbackControlsView];
    objc_initWeak(&from, playbackControlsView);

    playbackControlsView2 = [self playbackControlsView];
    if ([self showsPlaybackControls] && (objc_msgSend(self, "playerViewControllerIsBeingTransitionedWithResizing") & 1) == 0 && (objc_msgSend(self, "forcePlaybackControlsHidden") & 1) == 0 && ((objc_msgSend(self, "isFullScreen") & 1) != 0 || (objc_msgSend(self, "canIncludePlaybackControlsWhenInline") & 1) != 0))
    {
      if (!playbackControlsView2)
      {
LABEL_12:

        objc_destroyWeak(&from);
        objc_destroyWeak(&v43);
        objc_destroyWeak(&location);
        return;
      }
    }

    else
    {
      hasCustomPlaybackControls = [self hasCustomPlaybackControls];
      if (playbackControlsView2)
      {
        v9 = hasCustomPlaybackControls;
      }

      else
      {
        v9 = 0;
      }

      if ((v9 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    playerControllerObservationController3 = [self playerControllerObservationController];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __73__AVPlaybackControlsController__startObservingPlayerControllerProperties__block_invoke_2;
    v39[3] = &unk_1E7209A88;
    objc_copyWeak(&v40, &location);
    [self _observeBoolForKeyPath:@"playerController.muted" usingKeyValueObservationController:playerControllerObservationController3 observationHandler:v39];

    playerControllerObservationController4 = [self playerControllerObservationController];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __73__AVPlaybackControlsController__startObservingPlayerControllerProperties__block_invoke_3;
    v37[3] = &unk_1E7209A88;
    objc_copyWeak(&v38, &location);
    [self _observeBoolForKeyPath:@"playerController.hasEnabledAudio" usingKeyValueObservationController:playerControllerObservationController4 observationHandler:v37];

    playerController = [self playerController];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      playerControllerObservationController5 = [self playerControllerObservationController];
      v15 = [playerControllerObservationController5 startObserving:self keyPath:@"playerController.currentAssetIfReady" includeInitialValue:1 observationHandler:&__block_literal_global_252];
    }

    playerControllerObservationController6 = [self playerControllerObservationController];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __73__AVPlaybackControlsController__startObservingPlayerControllerProperties__block_invoke_5;
    v35[3] = &unk_1E7209A88;
    objc_copyWeak(&v36, &location);
    [self _observeBoolForKeyPath:@"playerController.playingOnExternalScreen" usingKeyValueObservationController:playerControllerObservationController6 observationHandler:v35];

    playerControllerObservationController7 = [self playerControllerObservationController];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __73__AVPlaybackControlsController__startObservingPlayerControllerProperties__block_invoke_6;
    v32[3] = &unk_1E7208D40;
    objc_copyWeak(&v33, &from);
    objc_copyWeak(&v34, &location);
    [self _observeBoolForKeyPath:@"playerController.hasLiveStreamingContent" usingKeyValueObservationController:playerControllerObservationController7 observationHandler:v32];

    playerControllerObservationController8 = [self playerControllerObservationController];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __73__AVPlaybackControlsController__startObservingPlayerControllerProperties__block_invoke_7;
    v30[3] = &unk_1E7209A88;
    objc_copyWeak(&v31, &location);
    [self _observeBoolForKeyPath:@"playerController.playingOnMatchPointDevice" usingKeyValueObservationController:playerControllerObservationController8 observationHandler:v30];

    playerControllerObservationController9 = [self playerControllerObservationController];
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __73__AVPlaybackControlsController__startObservingPlayerControllerProperties__block_invoke_8;
    v27 = &unk_1E7208D68;
    objc_copyWeak(&v28, &from);
    objc_copyWeak(&v29, &location);
    v20 = [playerControllerObservationController9 startObserving:self keyPath:@"playerController.loadedTimeRanges" includeInitialValue:1 observationHandler:&v24];

    standardPlayPauseButton = [playbackControlsView2 standardPlayPauseButton];
    v45[0] = standardPlayPauseButton;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
    playerControllerObservationController10 = [self playerControllerObservationController];
    [self _bindEnabledStateOfControls:v22 toKeyPath:@"playerController.canTogglePlayback" usingObservationController:playerControllerObservationController10];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v36);
    objc_destroyWeak(&v38);
    objc_destroyWeak(&v40);
    goto LABEL_12;
  }
}

void __73__AVPlaybackControlsController__startObservingPlayerControllerProperties__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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
}

void __73__AVPlaybackControlsController__startObservingPlayerControllerProperties__block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPrefersMuted:a2];
}

void __73__AVPlaybackControlsController__startObservingPlayerControllerProperties__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateControlInclusion];
}

void __73__AVPlaybackControlsController__startObservingPlayerControllerProperties__block_invoke_5(uint64_t a1, uint64_t a2)
{
  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:{objc_msgSend(v4, "_prefersVolumeSliderExpandedAutomatically")}];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:a2];
}

void __73__AVPlaybackControlsController__startObservingPlayerControllerProperties__block_invoke_6(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained transportControlsView];
  [v5 setShowsLiveStreamingControls:a2];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 _updatePlaybackSpeedControlInclusion];
}

void __73__AVPlaybackControlsController__startObservingPlayerControllerProperties__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updatePlaybackSpeedControlInclusion];
}

void __73__AVPlaybackControlsController__startObservingPlayerControllerProperties__block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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

- (void)endHidingItemsForTransitionAndShowImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  [(AVPlaybackControlsController *)self setHidingItemsForTransition:0];
  [(AVPlaybackControlsController *)self showPlaybackControls:immediatelyCopy immediately:1];
  playerController = [(AVPlaybackControlsController *)self playerController];
  timeControlStatus = [playerController timeControlStatus];

  if (timeControlStatus == 2 && immediatelyCopy)
  {

    [(AVPlaybackControlsController *)self flashPlaybackControlsWithDuration:3.0];
  }
}

- (void)_hideContextMenusIfPresented
{
  playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
  controlOverflowButton = [playbackControlsView controlOverflowButton];
  contextMenuInteraction = [controlOverflowButton contextMenuInteraction];
  [contextMenuInteraction dismissMenu];
}

- (void)beginHidingItemsForTransition
{
  [(AVPlaybackControlsController *)self showPlaybackControls:0 immediately:1];

  [(AVPlaybackControlsController *)self setHidingItemsForTransition:1];
}

- (void)endUserInteraction
{
  [(AVPlaybackControlsController *)self setUserInteractingCount:[(AVPlaybackControlsController *)self userInteractingCount]- 1];
  if (![(AVPlaybackControlsController *)self userInteractingCount])
  {
    playerController = [(AVPlaybackControlsController *)self playerController];
    isPlaying = [playerController isPlaying];

    if (isPlaying)
    {

      [(AVPlaybackControlsController *)self _autoHideControlsAfterDelay:3.0];
    }
  }
}

- (void)beginUserInteraction
{
  [(AVPlaybackControlsController *)self setUserInteractingCount:[(AVPlaybackControlsController *)self userInteractingCount]+ 1];
  playbackControlsVisibilityTimer = [(AVPlaybackControlsController *)self playbackControlsVisibilityTimer];
  [playbackControlsVisibilityTimer invalidate];
}

- (BOOL)prefersStatusBarHidden
{
  if ([(AVPlaybackControlsController *)self isHidingItemsForTransition])
  {
    return 1;
  }

  else
  {
    return ![(AVPlaybackControlsController *)self isShowingPlaybackControls];
  }
}

- (void)setPopoverIsBeingPresented:(BOOL)presented
{
  if (self->_popoverIsBeingPresented != presented)
  {
    self->_popoverIsBeingPresented = presented;
    if (presented)
    {

      [(AVPlaybackControlsController *)self _updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:1];
    }

    else
    {
      playerController = [(AVPlaybackControlsController *)self playerController];
      isPlaying = [playerController isPlaying];

      if (isPlaying)
      {

        [(AVPlaybackControlsController *)self flashPlaybackControlsWithDuration:3.0];
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
      playerController = [(AVPlaybackControlsController *)self playerController];
      v5 = [playerController isPlaying] ^ 1;
    }

    [(AVPlaybackControlsController *)self _updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:v5];
  }
}

- (void)endShowingItemsDueToIndirectUserInteraction
{
  if ([(AVPlaybackControlsController *)self isPopoverBeingPresented]|| [(AVPlaybackControlsController *)self isPictureInPictureActive])
  {
    return;
  }

  playerController = [(AVPlaybackControlsController *)self playerController];
  if ([playerController isPlayingOnExternalScreen])
  {
    goto LABEL_7;
  }

  playerViewController = [(AVPlaybackControlsController *)self playerViewController];
  if ([playerViewController isAudioOnlyContent])
  {

LABEL_7:

    return;
  }

  canHidePlaybackControls = [(AVPlaybackControlsController *)self canHidePlaybackControls];

  if (canHidePlaybackControls)
  {

    [(AVPlaybackControlsController *)self showPlaybackControls:0 immediately:0];
  }
}

- (void)beginShowingItemsDueToIndirectUserInteraction
{
  if (![(AVPlaybackControlsController *)self isPopoverBeingPresented]&& ![(AVPlaybackControlsController *)self isPictureInPictureActive])
  {

    [(AVPlaybackControlsController *)self flashPlaybackControlsWithDuration:3.0];
  }
}

- (void)_autoHideControlsAfterDelay:(double)delay
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[AVPlaybackControlsController _autoHideControlsAfterDelay:]";
    v13 = 2048;
    delayCopy = delay;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s delay: %f", buf, 0x16u);
  }

  playbackControlsVisibilityTimer = [(AVPlaybackControlsController *)self playbackControlsVisibilityTimer];
  [playbackControlsVisibilityTimer invalidate];

  objc_initWeak(buf, self);
  v7 = MEMORY[0x1E695DFF0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__AVPlaybackControlsController__autoHideControlsAfterDelay___block_invoke;
  v9[3] = &unk_1E7209DA8;
  objc_copyWeak(&v10, buf);
  v8 = [v7 scheduledTimerWithTimeInterval:0 repeats:v9 block:delay];
  [(AVPlaybackControlsController *)self setPlaybackControlsVisibilityTimer:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __60__AVPlaybackControlsController__autoHideControlsAfterDelay___block_invoke(uint64_t a1)
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
  playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
  volumeControlsContainer = [playbackControlsView volumeControlsContainer];
  v6 = ([volumeControlsContainer isIncluded] & 1) != 0 || -[AVPlaybackControlsController _prefersVolumeSliderExpandedAutomatically](self, "_prefersVolumeSliderExpandedAutomatically");
  [(AVPlaybackControlsController *)self _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:v6];

  playbackControlsView2 = [(AVPlaybackControlsController *)self playbackControlsView];
  [playbackControlsView2 setShowsAudioControls:1];

  playerController = [(AVPlaybackControlsController *)self playerController];
  if ([playerController isPlaying])
  {
  }

  else
  {
    playbackControlsView3 = [(AVPlaybackControlsController *)self playbackControlsView];
    showsPlaybackControls = [playbackControlsView3 showsPlaybackControls];

    if (showsPlaybackControls)
    {
      return;
    }
  }

  [(AVPlaybackControlsController *)self _autoHideControlsAfterDelay:2.0];
}

- (void)showPlaybackControls:(BOOL)controls immediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  controlsCopy = controls;
  v18 = *MEMORY[0x1E69E9840];
  playbackControlsVisibilityTimer = [(AVPlaybackControlsController *)self playbackControlsVisibilityTimer];
  [playbackControlsVisibilityTimer invalidate];

  v8 = _AVLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315906;
    v11 = "[AVPlaybackControlsController showPlaybackControls:immediately:]";
    v12 = 1024;
    v13 = controlsCopy;
    v14 = 1024;
    v15 = immediatelyCopy;
    v16 = 1024;
    isHidingItemsForTransition = [(AVPlaybackControlsController *)self isHidingItemsForTransition];
    _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s shouldShowPlaybackControls: %d {\n\tshowImmediately: %d\n\tisHidingItemsForTransition: %d}", &v10, 0x1Eu);
  }

  if (![(AVPlaybackControlsController *)self isHidingItemsForTransition])
  {
    [(AVPlaybackControlsController *)self setShowingPlaybackControls:controlsCopy];
    playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
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
    v9 = "[AVPlaybackControlsController flashPlaybackControlsWithDuration:]";
    v10 = 2048;
    durationCopy = duration;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s duration: %f", &v8, 0x16u);
  }

  if (![(AVPlaybackControlsController *)self isPictureInPictureActive])
  {
    playerController = [(AVPlaybackControlsController *)self playerController];
    if ([playerController isPlayingOnExternalScreen])
    {
    }

    else
    {
      showsPlaybackControls = [(AVPlaybackControlsController *)self showsPlaybackControls];

      if (showsPlaybackControls)
      {
        [(AVPlaybackControlsController *)self showPlaybackControls:1 immediately:0];
        [(AVPlaybackControlsController *)self _autoHideControlsAfterDelay:duration];
      }
    }
  }
}

- (void)_updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:(BOOL)visible
{
  visibleCopy = visible;
  v37 = *MEMORY[0x1E69E9840];
  playerController = [(AVPlaybackControlsController *)self playerController];
  isPlayingOnExternalScreen = [playerController isPlayingOnExternalScreen];

  playerViewController = [(AVPlaybackControlsController *)self playerViewController];
  isAudioOnlyContent = [playerViewController isAudioOnlyContent];

  if (([(AVPlaybackControlsController *)self isUserInteracting]|| visibleCopy) && ![(AVPlaybackControlsController *)self isPictureInPictureActive])
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

  if (![(AVPlaybackControlsController *)self isUserInteracting]&& ![(AVPlaybackControlsController *)self isPopoverBeingPresented]&& ![(AVPlaybackControlsController *)self showsLoadingIndicator]&& ![(AVPlaybackControlsController *)self isPictureInPictureActive]&& !(isPlayingOnExternalScreen & 1 | ![(AVPlaybackControlsController *)self canHidePlaybackControls]| isAudioOnlyContent & 1))
  {
    goto LABEL_27;
  }

  if (![(AVPlaybackControlsController *)self isPopoverBeingPresented]&& ![(AVPlaybackControlsController *)self showsLoadingIndicator]&& [(AVPlaybackControlsController *)self canHidePlaybackControls])
  {
    if ((v9 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

LABEL_17:
  if ([(AVPlaybackControlsController *)self isPictureInPictureActive])
  {
    playerController2 = [(AVPlaybackControlsController *)self playerController];
    if ([playerController2 isPlayingOnExternalScreen])
    {

      goto LABEL_21;
    }

    playerViewController2 = [(AVPlaybackControlsController *)self playerViewController];
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
  playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
  showsAudioControls = [playbackControlsView showsAudioControls];

  if ((showsAudioControls & 1) == 0)
  {
    [(AVPlaybackControlsController *)self _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:[(AVPlaybackControlsController *)self _prefersVolumeSliderExpandedAutomatically]];
  }

  v15 = 1;
LABEL_24:
  v16 = _AVLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136317442;
    v18 = "[AVPlaybackControlsController _updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:]";
    v19 = 1024;
    v20 = v15;
    v21 = 1024;
    v22 = visibleCopy;
    v23 = 1024;
    isUserInteracting = [(AVPlaybackControlsController *)self isUserInteracting];
    v25 = 1024;
    isPictureInPictureActive = [(AVPlaybackControlsController *)self isPictureInPictureActive];
    v27 = 1024;
    v28 = isPlayingOnExternalScreen;
    v29 = 1024;
    v30 = isAudioOnlyContent;
    v31 = 1024;
    isPopoverBeingPresented = [(AVPlaybackControlsController *)self isPopoverBeingPresented];
    v33 = 1024;
    showsLoadingIndicator = [(AVPlaybackControlsController *)self showsLoadingIndicator];
    v35 = 1024;
    canHidePlaybackControls = [(AVPlaybackControlsController *)self canHidePlaybackControls];
    _os_log_impl(&dword_18B49C000, v16, OS_LOG_TYPE_DEFAULT, "%s shouldShowPlaybackControls: %d {\n\twantsPlaybackControlsVisible: %d\n\tisUserInteracting: %d\n\tisPictureInPictureActive: %d\n\tplayingOnExternalScreen: %d\n\taudioOnlyContent: %d\n\tisPopoverBeingPresented: %d\n\tshowsLoadingIndicator: %d\n\tcanHidePlaybackControls: %d\n}", &v17, 0x42u);
  }

  [(AVPlaybackControlsController *)self showPlaybackControls:v15 immediately:0];
}

- (void)togglePlaybackControlsVisibility
{
  playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
  [playbackControlsView setPrefersVolumeSliderExpandedAutomatically:{-[AVPlaybackControlsController _prefersVolumeSliderExpandedAutomatically](self, "_prefersVolumeSliderExpandedAutomatically")}];

  playerController = [(AVPlaybackControlsController *)self playerController];
  if ([playerController isPlaying])
  {
    isShowingPlaybackControls = [(AVPlaybackControlsController *)self isShowingPlaybackControls];

    if (!isShowingPlaybackControls)
    {

      [(AVPlaybackControlsController *)self flashPlaybackControlsWithDuration:3.0];
      return;
    }
  }

  else
  {
  }

  v6 = [(AVPlaybackControlsController *)self isShowingPlaybackControls]^ 1;

  [(AVPlaybackControlsController *)self _updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:v6];
}

- (void)setForcePlaybackControlsHidden:(BOOL)hidden
{
  if (self->_forcePlaybackControlsHidden != hidden)
  {
    self->_forcePlaybackControlsHidden = hidden;
    [(AVPlaybackControlsController *)self _updatePlaybackControlsVisibleAndObservingUpdates];
  }
}

- (void)_seekByTimeInterval:(double)interval toleranceBefore:(double)before toleranceAfter:(double)after
{
  playerController = [(AVPlaybackControlsController *)self playerController];
  v10 = objc_opt_respondsToSelector();

  playerController2 = [(AVPlaybackControlsController *)self playerController];
  if (v10)
  {
    [playerController2 seekByTimeInterval:interval toleranceBefore:before toleranceAfter:after];
  }

  else
  {
    [(AVPlaybackControlsController *)self currentTime];
    [playerController2 seekToTime:v11 + interval];
  }
}

- (void)_observeBoolForKeyPath:(id)path usingKeyValueObservationController:(id)controller observationHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  controllerCopy = controller;
  handlerCopy = handler;
  v11 = [(AVPlaybackControlsController *)self valueForKeyPath:pathCopy];
  v12 = [handlerCopy copy];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __109__AVPlaybackControlsController__observeBoolForKeyPath_usingKeyValueObservationController_observationHandler___block_invoke;
  v15[3] = &unk_1E7208CF8;
  v13 = v12;
  v16 = v13;
  v14 = [controllerCopy startObserving:self keyPath:pathCopy includeInitialValue:1 observationHandler:v15];
}

void __109__AVPlaybackControlsController__observeBoolForKeyPath_usingKeyValueObservationController_observationHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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
  playbackControlsObservationController = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__AVPlaybackControlsController__bindInclusionOfControlItems_toKeyPath___block_invoke;
  v10[3] = &unk_1E7208CD0;
  v9 = itemsCopy;
  v11 = v9;
  objc_copyWeak(&v12, &location);
  [(AVPlaybackControlsController *)self _observeBoolForKeyPath:pathCopy usingKeyValueObservationController:playbackControlsObservationController observationHandler:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __71__AVPlaybackControlsController__bindInclusionOfControlItems_toKeyPath___block_invoke(uint64_t a1, uint64_t a2)
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
  v10[2] = __97__AVPlaybackControlsController__bindEnabledStateOfControls_toKeyPath_usingObservationController___block_invoke;
  v10[3] = &unk_1E7208E90;
  v11 = controlsCopy;
  v9 = controlsCopy;
  [(AVPlaybackControlsController *)self _observeBoolForKeyPath:path usingKeyValueObservationController:controller observationHandler:v10];
}

void __97__AVPlaybackControlsController__bindEnabledStateOfControls_toKeyPath_usingObservationController___block_invoke(uint64_t a1, uint64_t a2)
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
  playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
  effectiveUserInterfaceLayoutDirection = [playbackControlsView effectiveUserInterfaceLayoutDirection];

  playbackControlsView2 = [(AVPlaybackControlsController *)self playbackControlsView];
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
    playbackControlsView3 = [(AVPlaybackControlsController *)self playbackControlsView];
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

  contentTransitionAction = [(AVPlaybackControlsController *)self contentTransitionAction];

  if (contentTransitionAction)
  {
    contentTransitionAction2 = [(AVPlaybackControlsController *)self contentTransitionAction];
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
    playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
    skipForwardButton = [playbackControlsView skipForwardButton];

    playerController = [(AVPlaybackControlsController *)self playerController];
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
  playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
  skipBackButton = [playbackControlsView skipBackButton];

  if (skipBackButton == endedCopy)
  {
    playerController = [(AVPlaybackControlsController *)self playerController];
    [playerController endScanningBackward:endedCopy];
  }

  else
  {
    playbackControlsView2 = [(AVPlaybackControlsController *)self playbackControlsView];
    skipForwardButton = [playbackControlsView2 skipForwardButton];

    v8 = endedCopy;
    if (skipForwardButton != endedCopy)
    {
      goto LABEL_6;
    }

    playerController = [(AVPlaybackControlsController *)self playerController];
    [playerController endScanningForward:endedCopy];
  }

  v8 = endedCopy;
LABEL_6:
}

- (void)skipButtonLongPressTriggered:(id)triggered
{
  triggeredCopy = triggered;
  playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
  skipBackButton = [playbackControlsView skipBackButton];

  if (skipBackButton == triggeredCopy)
  {
    playerController = [(AVPlaybackControlsController *)self playerController];
    [playerController beginScanningBackward:triggeredCopy];
  }

  else
  {
    playbackControlsView2 = [(AVPlaybackControlsController *)self playbackControlsView];
    skipForwardButton = [playbackControlsView2 skipForwardButton];

    v8 = triggeredCopy;
    if (skipForwardButton != triggeredCopy)
    {
      goto LABEL_6;
    }

    playerController = [(AVPlaybackControlsController *)self playerController];
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
      playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
      skipForwardButton = [playbackControlsView skipForwardButton];
      if (skipForwardButton == insideCopy)
      {
        playbackControlsView2 = [(AVPlaybackControlsController *)self playbackControlsView];
        transportControlsView = [playbackControlsView2 transportControlsView];
        liveStreamingControlsIncludeScrubber = [transportControlsView liveStreamingControlsIncludeScrubber];

        if (liveStreamingControlsIncludeScrubber)
        {
          playerController = [(AVPlaybackControlsController *)self playerController];
          [playerController gotoEndOfSeekableRanges:insideCopy];

          goto LABEL_10;
        }
      }

      else
      {
      }

      playbackControlsView3 = [(AVPlaybackControlsController *)self playbackControlsView];
      skipForwardButton2 = [playbackControlsView3 skipForwardButton];

      v15 = -15.0;
      if (skipForwardButton2 == insideCopy)
      {
        v15 = 15.0;
      }

      [(AVPlaybackControlsController *)self _seekByTimeInterval:v15 toleranceBefore:0.5 toleranceAfter:0.5];
    }
  }

LABEL_10:
}

- (void)prominentPlayButtonTouchUpInside:(id)inside
{
  insideCopy = inside;
  playerController = [(AVPlaybackControlsController *)self playerController];
  if ([playerController canTogglePlayback])
  {
    playerController2 = [(AVPlaybackControlsController *)self playerController];
    isPlaying = [playerController2 isPlaying];

    if ((isPlaying & 1) == 0)
    {
      playerViewController = [(AVPlaybackControlsController *)self playerViewController];
      [playerViewController togglePlayback:insideCopy];

      [(AVPlaybackControlsController *)self _updateHasPlaybackBegunSincePlayerControllerBecameReadyToPlay:1 playing:1 userDidEndTappingProminentPlayButton:1];
      goto LABEL_9;
    }
  }

  else
  {
  }

  if ([(AVPlaybackControlsController *)self isFullScreen])
  {
    goto LABEL_8;
  }

  playerController3 = [(AVPlaybackControlsController *)self playerController];
  if ([playerController3 status])
  {

LABEL_8:
    playerController4 = [(AVPlaybackControlsController *)self playerController];
    v10 = [playerController4 status] == 2;
    playerController5 = [(AVPlaybackControlsController *)self playerController];
    -[AVPlaybackControlsController _updateHasPlaybackBegunSincePlayerControllerBecameReadyToPlay:playing:userDidEndTappingProminentPlayButton:](self, "_updateHasPlaybackBegunSincePlayerControllerBecameReadyToPlay:playing:userDidEndTappingProminentPlayButton:", v10, [playerController5 isPlaying], 1);

    goto LABEL_9;
  }

  playButtonHandlerForLazyPlayerLoading = [(AVPlaybackControlsController *)self playButtonHandlerForLazyPlayerLoading];

  if (!playButtonHandlerForLazyPlayerLoading)
  {
    goto LABEL_8;
  }

  [(AVPlaybackControlsController *)self startUpdatesIfNeeded];
  playButtonHandlerForLazyPlayerLoading2 = [(AVPlaybackControlsController *)self playButtonHandlerForLazyPlayerLoading];
  playButtonHandlerForLazyPlayerLoading2[2]();

LABEL_9:
}

- (void)playbackSpeedButtonTapped:(id)tapped
{
  playbackSpeedCollection = [(AVPlaybackControlsController *)self playbackSpeedCollection];
  [playbackSpeedCollection selectNextPlaybackSpeed:self];
}

- (id)overflowMenuItemsForControlOverflowButton:(id)button
{
  buttonCopy = button;
  array = [MEMORY[0x1E695DF70] array];
  playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
  mediaSelectionButton = [playbackControlsView mediaSelectionButton];
  if ([mediaSelectionButton isIncluded])
  {
    playbackControlsView2 = [(AVPlaybackControlsController *)self playbackControlsView];
    mediaSelectionButton2 = [playbackControlsView2 mediaSelectionButton];
    isCollapsed = [mediaSelectionButton2 isCollapsed];

    if (!isCollapsed)
    {
      goto LABEL_11;
    }

    playerController = [(AVPlaybackControlsController *)self playerController];
    playbackControlsView = [playerController audioMediaSelectionOptions];

    playerController2 = [(AVPlaybackControlsController *)self playerController];
    mediaSelectionButton = [playerController2 legibleMediaSelectionOptions];

    mediaSelectionMenuController = self->_mediaSelectionMenuController;
    v61 = buttonCopy;
    if (mediaSelectionMenuController)
    {
      [(AVMediaSelectionMenuController *)mediaSelectionMenuController setAudibleOptions:playbackControlsView];
      [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController setLegibleOptions:mediaSelectionButton];
    }

    else
    {
      v14 = [[AVMediaSelectionMenuController alloc] initWithAudibleOptions:playbackControlsView legibleOptions:mediaSelectionButton];
      v15 = self->_mediaSelectionMenuController;
      self->_mediaSelectionMenuController = v14;

      [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController setDelegate:self];
    }

    playerController3 = [(AVPlaybackControlsController *)self playerController];
    audioMediaSelectionOptions = [playerController3 audioMediaSelectionOptions];
    playerController4 = [(AVPlaybackControlsController *)self playerController];
    currentAudioMediaSelectionOption = [playerController4 currentAudioMediaSelectionOption];
    v20 = [audioMediaSelectionOptions indexOfObject:currentAudioMediaSelectionOption];

    playerController5 = [(AVPlaybackControlsController *)self playerController];
    legibleMediaSelectionOptions = [playerController5 legibleMediaSelectionOptions];
    playerController6 = [(AVPlaybackControlsController *)self playerController];
    currentLegibleMediaSelectionOption = [playerController6 currentLegibleMediaSelectionOption];
    v25 = [legibleMediaSelectionOptions indexOfObject:currentLegibleMediaSelectionOption];

    [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController setCurrentAudibleOptionIndex:v20];
    [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController setCurrentLegibleOptionIndex:v25];
    audibleOptionsMenu = [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController audibleOptionsMenu];

    if (audibleOptionsMenu)
    {
      audibleOptionsMenu2 = [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController audibleOptionsMenu];
      [array addObject:audibleOptionsMenu2];
    }

    legibleOptionsMenu = [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController legibleOptionsMenu];

    buttonCopy = v61;
    if (legibleOptionsMenu)
    {
      legibleOptionsMenu2 = [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController legibleOptionsMenu];
      [array addObject:legibleOptionsMenu2];
    }
  }

LABEL_11:
  playbackControlsView3 = [(AVPlaybackControlsController *)self playbackControlsView];
  playbackSpeedButton = [playbackControlsView3 playbackSpeedButton];
  if ([playbackSpeedButton isIncluded])
  {
    playbackControlsView4 = [(AVPlaybackControlsController *)self playbackControlsView];
    playbackSpeedButton2 = [playbackControlsView4 playbackSpeedButton];
    isCollapsed2 = [playbackSpeedButton2 isCollapsed];

    if (!isCollapsed2)
    {
      goto LABEL_15;
    }

    playbackControlsView3 = [(AVPlaybackControlsController *)self playbackRateMenuController];
    playbackSpeedButton = [playbackControlsView3 menu];
    [array addObject:playbackSpeedButton];
  }

LABEL_15:
  playbackControlsView5 = [(AVPlaybackControlsController *)self playbackControlsView];
  routePickerView = [playbackControlsView5 routePickerView];
  if ([routePickerView isIncluded])
  {
    playbackControlsView6 = [(AVPlaybackControlsController *)self playbackControlsView];
    routePickerView2 = [playbackControlsView6 routePickerView];
    isCollapsed3 = [routePickerView2 isCollapsed];

    if (isCollapsed3)
    {
      playbackControlsView7 = [(AVPlaybackControlsController *)self playbackControlsView];
      routePickerView3 = [playbackControlsView7 routePickerView];

      v42 = AVLocalizedString(@"EXTERNAL_PLAYBACK_OVERFLOW_MENU_ITEM_TITLE");
      v43 = [MEMORY[0x1E69DCAB8] avkit_imageWithSymbolNamed:@"airplayvideo" textStyle:*MEMORY[0x1E69DDCF8] scale:-1];
      if ([routePickerView3 isAirPlayActive])
      {
        v44 = [MEMORY[0x1E69DC888] colorWithRed:0.5 green:0.86 blue:1.0 alpha:1.0];
        v45 = [v43 imageWithTintColor:v44 renderingMode:1];

        v43 = v45;
      }

      objc_initWeak(&location, self);
      v46 = MEMORY[0x1E69DC628];
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __74__AVPlaybackControlsController_overflowMenuItemsForControlOverflowButton___block_invoke;
      v64[3] = &unk_1E7208C60;
      v47 = routePickerView3;
      v65 = v47;
      objc_copyWeak(&v66, &location);
      v48 = [v46 actionWithTitle:v42 image:v43 identifier:0 handler:v64];
      [array addObject:v48];

      objc_destroyWeak(&v66);
      objc_destroyWeak(&location);
    }
  }

  else
  {
  }

  if (self->_transportBarCustomMenuItems)
  {
    playbackControlsView8 = [(AVPlaybackControlsController *)self playbackControlsView];
    transportControlsView = [playbackControlsView8 transportControlsView];
    customMenuItemsViews = [transportControlsView customMenuItemsViews];

    v52 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_236_22121];
    v53 = [customMenuItemsViews filteredArrayUsingPredicate:v52];

    v54 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    transportBarCustomMenuItems = self->_transportBarCustomMenuItems;
    v56 = MEMORY[0x1E696AE18];
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __74__AVPlaybackControlsController_overflowMenuItemsForControlOverflowButton___block_invoke_3;
    v62[3] = &unk_1E7208CA8;
    v63 = v53;
    v57 = v53;
    v58 = [v56 predicateWithBlock:v62];
    v59 = [(NSArray *)transportBarCustomMenuItems filteredArrayUsingPredicate:v58];

    [array addObjectsFromArray:v59];
  }

  return array;
}

void __74__AVPlaybackControlsController_overflowMenuItemsForControlOverflowButton___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 presentRoutePicker:WeakRetained];
}

BOOL __74__AVPlaybackControlsController_overflowMenuItemsForControlOverflowButton___block_invoke_3(uint64_t a1, void *a2, void *a3)
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

uint64_t __74__AVPlaybackControlsController_overflowMenuItemsForControlOverflowButton___block_invoke_2(uint64_t a1, void *a2, void *a3)
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
  playerController = [(AVPlaybackControlsController *)self playerController];
  closedCaptionsEnabled = [playerController closedCaptionsEnabled];

  return closedCaptionsEnabled;
}

- (void)mediaSelectionMenuController:(id)controller didSelectOption:(id)option
{
  optionCopy = option;
  audibleOptions = [controller audibleOptions];
  v7 = [audibleOptions containsObject:optionCopy];

  playerController = [(AVPlaybackControlsController *)self playerController];
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
  if (![(AVPlaybackControlsController *)self prefersMuted])
  {
    volumeController = [(AVPlaybackControlsController *)self volumeController];
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

  playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
  volumeSlider = [playbackControlsView volumeSlider];
  *&v11 = volumeCopy;
  [volumeSlider setValue:animatedCopy animated:v11];
}

- (id)_volumeButtonMicaPackageState
{
  if ([(AVPlaybackControlsController *)self prefersMuted])
  {
    goto LABEL_2;
  }

  volumeController = [(AVPlaybackControlsController *)self volumeController];
  currentRouteHasVolumeControl = [volumeController currentRouteHasVolumeControl];

  v4 = &AVVolumeGlyphStateNameMax;
  if (!currentRouteHasVolumeControl)
  {
    goto LABEL_20;
  }

  playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
  if (!playbackControlsView || [(AVPlaybackControlsController *)self isResumingUpdates])
  {
    v8 = 0;
    goto LABEL_7;
  }

  currentRouteHasVolumeControl = [(AVPlaybackControlsController *)self playbackControlsView];
  volumeSlider = [currentRouteHasVolumeControl volumeSlider];
  if ([volumeSlider isHiddenOrHasHiddenAncestor])
  {
    v8 = 1;
LABEL_7:
    volumeController2 = [(AVPlaybackControlsController *)self volumeController];
    [volumeController2 volume];
    v11 = v10;

    if (!v8)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  playbackControlsView2 = [(AVPlaybackControlsController *)self playbackControlsView];
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
  _volumeButtonMicaPackageState = [(AVPlaybackControlsController *)self _volumeButtonMicaPackageState];
  playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
  volumeButton = [playbackControlsView volumeButton];
  [volumeButton setMicaPackageStateName:_volumeButtonMicaPackageState];

  turboModePlaybackControlsPlaceholderView = [(AVPlaybackControlsController *)self turboModePlaybackControlsPlaceholderView];
  [turboModePlaybackControlsPlaceholderView setVolumeButtonMicaPackageStateName:_volumeButtonMicaPackageState];
}

- (void)_showOrHideDisplayModeControls
{
  if (-[AVPlaybackControlsController playbackControlsIncludeDisplayModeControls](self, "playbackControlsIncludeDisplayModeControls") || (-[AVPlaybackControlsController playbackControlsView](self, "playbackControlsView"), v3 = objc_claimAutoreleasedReturnValue(), [v3 customDisplayModeItems], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v3, !v5))
  {
    v7 = ![(AVPlaybackControlsController *)self isFullScreen]&& [(AVPlaybackControlsController *)self allowsEnteringFullScreen];
    if ([(AVPlaybackControlsController *)self showsDoneButtonWhenFullScreen])
    {
      isFullScreen = [(AVPlaybackControlsController *)self isFullScreen];
    }

    else
    {
      isFullScreen = 0;
    }

    showsPictureInPictureButton = [(AVPlaybackControlsController *)self showsPictureInPictureButton];
    canIncludeVideoGravityButton = [(AVPlaybackControlsController *)self canIncludeVideoGravityButton];
  }

  else
  {
    showsPictureInPictureButton = 0;
    v7 = 0;
    isFullScreen = 0;
    canIncludeVideoGravityButton = 0;
  }

  playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
  fullScreenButton = [playbackControlsView fullScreenButton];
  if (v7 != [fullScreenButton isIncluded])
  {
    goto LABEL_16;
  }

  playbackControlsView2 = [(AVPlaybackControlsController *)self playbackControlsView];
  doneButton = [playbackControlsView2 doneButton];
  if (isFullScreen != [doneButton isIncluded])
  {
LABEL_15:

LABEL_16:
    goto LABEL_17;
  }

  v32 = isFullScreen;
  [(AVPlaybackControlsController *)self playbackControlsView];
  v15 = v14 = showsPictureInPictureButton;
  pictureInPictureButton = [v15 pictureInPictureButton];
  v33 = v14;
  if (v14 != [pictureInPictureButton isIncluded])
  {

    isFullScreen = v32;
    showsPictureInPictureButton = v33;
    goto LABEL_15;
  }

  playbackControlsView3 = [(AVPlaybackControlsController *)self playbackControlsView];
  [playbackControlsView3 videoGravityButton];
  v29 = v31 = canIncludeVideoGravityButton;
  isIncluded = [v29 isIncluded];

  canIncludeVideoGravityButton = v31;
  isFullScreen = v32;
  showsPictureInPictureButton = v33;
  if (v31 == isIncluded)
  {
    return;
  }

LABEL_17:
  playbackControlsView4 = [(AVPlaybackControlsController *)self playbackControlsView];

  if (!playbackControlsView4)
  {
    return;
  }

  array = [MEMORY[0x1E695DF70] array];
  if (v7)
  {
    playbackControlsView5 = [(AVPlaybackControlsController *)self playbackControlsView];
    [playbackControlsView5 fullScreenButton];
    v23 = v22 = isFullScreen;
    [array addObject:v23];

    if (!v22)
    {
LABEL_20:
      if (!showsPictureInPictureButton)
      {
        goto LABEL_21;
      }

LABEL_28:
      playbackControlsView6 = [(AVPlaybackControlsController *)self playbackControlsView];
      pictureInPictureButton2 = [playbackControlsView6 pictureInPictureButton];
      [array addObject:pictureInPictureButton2];

      if (!canIncludeVideoGravityButton)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else if (!isFullScreen)
  {
    goto LABEL_20;
  }

  playbackControlsView7 = [(AVPlaybackControlsController *)self playbackControlsView];
  doneButton2 = [playbackControlsView7 doneButton];
  [array addObject:doneButton2];

  if (showsPictureInPictureButton)
  {
    goto LABEL_28;
  }

LABEL_21:
  if (canIncludeVideoGravityButton)
  {
LABEL_22:
    playbackControlsView8 = [(AVPlaybackControlsController *)self playbackControlsView];
    videoGravityButton = [playbackControlsView8 videoGravityButton];
    [array addObject:videoGravityButton];
  }

LABEL_23:
  playbackControlsView9 = [(AVPlaybackControlsController *)self playbackControlsView];
  [playbackControlsView9 updateDisplayControlsVisibilityIncludedButtons:array];
}

- (BOOL)_prefersVolumeSliderExpandedAutomatically
{
  playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
  traitCollection = [playbackControlsView traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  playerViewController = [(AVPlaybackControlsController *)self playerViewController];
  contentView = [playerViewController contentView];
  layoutClass = [contentView layoutClass];
  unsignedIntegerValue = [layoutClass unsignedIntegerValue];

  if (unsignedIntegerValue == 2)
  {
    pendingOrientationChange = [(AVPlaybackControlsController *)self pendingOrientationChange];
    v11 = ([pendingOrientationChange integerValue] - 3) < 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v11 = 0;
  }

  playerViewController2 = [(AVPlaybackControlsController *)self playerViewController];
  contentView2 = [playerViewController2 contentView];
  layoutClass2 = [contentView2 layoutClass];
  unsignedIntegerValue2 = [layoutClass2 unsignedIntegerValue];

  if (unsignedIntegerValue2 == 1)
  {
    pendingOrientationChange2 = [(AVPlaybackControlsController *)self pendingOrientationChange];
    v17 = ([pendingOrientationChange2 integerValue] - 3) < 2;
  }

  else
  {
    v17 = 0;
  }

  playbackControlsView2 = [(AVPlaybackControlsController *)self playbackControlsView];
  customAudioItems = [playbackControlsView2 customAudioItems];
  v20 = [customAudioItems count];

  if (v20)
  {
    return 0;
  }

  if (![(AVPlaybackControlsController *)self volumeControlsCanShowSlider])
  {
    return 0;
  }

  playerController = [(AVPlaybackControlsController *)self playerController];
  isPlayingOnExternalScreen = [playerController isPlayingOnExternalScreen];

  if (isPlayingOnExternalScreen)
  {
    return 0;
  }

  else
  {
    isFullScreen = [(AVPlaybackControlsController *)self isFullScreen];
    v23 = v17 || v11;
    if (!isFullScreen || horizontalSizeClass == 2)
    {
      return isFullScreen;
    }
  }

  return v23;
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
    volumeController = [(AVPlaybackControlsController *)self volumeController];
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

      [(AVPlaybackControlsController *)self volumeSliderValueDidChange:valueCopy];
    }
  }
}

- (void)volumeButtonPanChanged:(id)changed
{
  changedCopy = changed;
  [(AVPlaybackControlsController *)self _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:1];
  [(AVPlaybackControlsController *)self setPrefersMuted:0];
  playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
  volumeSlider = [playbackControlsView volumeSlider];
  [(AVPlaybackControlsController *)self updateVolumeSliderValue:volumeSlider volumeButtonControl:changedCopy];
}

- (void)endChangingVolume
{
  volumeController = [(AVPlaybackControlsController *)self volumeController];
  [volumeController endChangingVolume];
}

- (void)beginChangingVolume
{
  volumeController = [(AVPlaybackControlsController *)self volumeController];
  [volumeController beginChangingVolume];
}

- (void)volumeButtonTapTriggered:(id)triggered
{
  triggeredCopy = triggered;
  playerViewController = [(AVPlaybackControlsController *)self playerViewController];
  [playerViewController toggleMuted:triggeredCopy];

  turboModePlaybackControlsPlaceholderView = [(AVPlaybackControlsController *)self turboModePlaybackControlsPlaceholderView];

  if (turboModePlaybackControlsPlaceholderView)
  {

    [(AVPlaybackControlsController *)self _updateVolumeButtonGlyph];
  }
}

- (void)volumeSliderValueDidChange:(id)change
{
  changeCopy = change;
  [(AVPlaybackControlsController *)self beginChangingVolume];
  volumeController = [(AVPlaybackControlsController *)self volumeController];
  [changeCopy value];
  v7 = v6;

  LODWORD(v8) = v7;
  [volumeController setTargetVolume:v8];

  [(AVPlaybackControlsController *)self _updateVolumeButtonGlyph];
}

- (void)handleCurrentRouteSupportsVolumeControlChanged:(id)changed
{
  playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
  volumeSlider = [playbackControlsView volumeSlider];
  volumeController = [(AVPlaybackControlsController *)self volumeController];
  [volumeSlider setEnabled:{objc_msgSend(volumeController, "currentRouteHasVolumeControl")}];

  volumeController2 = [(AVPlaybackControlsController *)self volumeController];
  LOBYTE(volumeSlider) = [volumeController2 currentRouteHasVolumeControl];

  if ((volumeSlider & 1) == 0)
  {
    volumeController3 = [(AVPlaybackControlsController *)self volumeController];
    -[AVPlaybackControlsController _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:](self, "_updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:", [volumeController3 currentRouteHasVolumeControl]);
  }

  volumeController4 = [(AVPlaybackControlsController *)self volumeController];
  [volumeController4 volume];
  [(AVPlaybackControlsController *)self _updateVolumeSliderValueWithSystemVolume:0 animated:?];
}

- (void)handleVolumeChange:(id)change
{
  changeCopy = change;
  playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
  volumeSlider = [playbackControlsView volumeSlider];
  volumeController = [(AVPlaybackControlsController *)self volumeController];
  [volumeSlider setEnabled:{objc_msgSend(volumeController, "currentRouteHasVolumeControl")}];

  volumeController2 = [(AVPlaybackControlsController *)self volumeController];
  [volumeController2 volume];
  v10 = v9;

  playbackControlsView2 = [(AVPlaybackControlsController *)self playbackControlsView];
  volumeSlider2 = [playbackControlsView2 volumeSlider];
  if ([volumeSlider2 isTracking])
  {
  }

  else
  {
    playbackControlsView3 = [(AVPlaybackControlsController *)self playbackControlsView];
    volumeButton = [playbackControlsView3 volumeButton];
    isTracking = [volumeButton isTracking];

    if ((isTracking & 1) == 0)
    {
      LODWORD(v16) = v10;
      [(AVPlaybackControlsController *)self _updateVolumeSliderValueWithSystemVolume:0 animated:v16];
    }
  }

  [(AVPlaybackControlsController *)self _updateVolumeButtonGlyph];
  userInfo = [changeCopy userInfo];

  v18 = [userInfo objectForKeyedSubscript:@"AVVolumeControllerVolumeDidChangeNotificationIsInitialValueKey"];
  bOOLValue = [v18 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    if (-[AVPlaybackControlsController isFullScreen](self, "isFullScreen") || (-[AVPlaybackControlsController volumeController](self, "volumeController"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 isChangingVolume], v20, v21))
    {
      [(AVPlaybackControlsController *)self setPrefersMuted:0];
      playerViewController = [(AVPlaybackControlsController *)self playerViewController];
      isBeingPresented = [playerViewController isBeingPresented];

      if ((isBeingPresented & 1) == 0)
      {

        [(AVPlaybackControlsController *)self flashVolumeControlsWithDuration:2.0];
      }
    }
  }
}

- (void)endScrubbing
{
  playerController = [(AVPlaybackControlsController *)self playerController];
  [playerController endScrubbing:self];

  [(AVPlaybackControlsController *)self setPlaybackSuspendedForScrubbing:0];
  [(AVPlaybackControlsController *)self _updateOrCreateTimeResolverIfNeeded];

  [(AVPlaybackControlsController *)self setShouldIgnoreTimeResolverUpdates:0];
}

- (void)scrubToTime:(double)time resolution:(double)resolution
{
  playerController = [(AVPlaybackControlsController *)self playerController];
  if ([playerController hasSeekableLiveStreamingContent])
  {
    timeResolver = [(AVPlaybackControlsController *)self timeResolver];
    [timeResolver seekableTimeRangeDuration];
  }

  else
  {
    timeResolver = [(AVPlaybackControlsController *)self playerController];
    [timeResolver contentDuration];
  }

  v10 = v9;

  timeResolver2 = [(AVPlaybackControlsController *)self timeResolver];
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
    if (resolution > 0.0 && ([(AVPlaybackControlsController *)self playerController], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_opt_respondsToSelector(), v16, (v17 & 1) != 0))
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

      playerController2 = [(AVPlaybackControlsController *)self playerController];
      [playerController2 seekToTime:time toleranceBefore:v23 toleranceAfter:v24];
    }

    else
    {
      playerController2 = [(AVPlaybackControlsController *)self playerController];
      [playerController2 seekToTime:time];
    }
  }

  [(AVPlaybackControlsController *)self _updateScrubberAndTimeLabels];
}

- (void)beginScrubbing
{
  [(AVPlaybackControlsController *)self setShouldIgnoreTimeResolverUpdates:1];
  [(AVPlaybackControlsController *)self setPlaybackSuspendedForScrubbing:[(AVPlaybackControlsController *)self playButtonsShowPauseGlyph]];
  playerController = [(AVPlaybackControlsController *)self playerController];
  [playerController beginScrubbing:self];

  [(AVPlaybackControlsController *)self _updateOrCreateTimeResolverIfNeeded];
}

- (void)transportControls:(id)controls scrubberDidEndScrubbing:(id)scrubbing
{
  scrubbingCopy = scrubbing;
  playerController = [(AVPlaybackControlsController *)self playerController];
  [playerController endScrubbing:scrubbingCopy];

  [(AVPlaybackControlsController *)self setPlaybackSuspendedForScrubbing:0];
  [(AVPlaybackControlsController *)self _updateOrCreateTimeResolverIfNeeded];

  [(AVPlaybackControlsController *)self setShouldIgnoreTimeResolverUpdates:0];
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
    playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
    traitCollection = [playbackControlsView traitCollection];
    [traitCollection displayScale];
    [(AVPlaybackControlsController *)self scrubToTime:v6 resolution:v8 * v11];
  }

  else
  {
    [(AVPlaybackControlsController *)self scrubToTime:v6 resolution:0.0];
  }
}

- (void)transportControls:(id)controls scrubberDidBeginScrubbing:(id)scrubbing
{
  scrubbingCopy = scrubbing;
  [(AVPlaybackControlsController *)self beginScrubbing];
  playerController = [(AVPlaybackControlsController *)self playerController];
  [playerController nominalFrameRate];
  [scrubbingCopy setEstimatedFrameRate:?];
}

- (void)transportControlsNeedsLayoutIfNeeded:(id)needed
{
  playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
  [playbackControlsView setNeedsLayout];

  playbackControlsView2 = [(AVPlaybackControlsController *)self playbackControlsView];
  [playbackControlsView2 layoutIfNeeded];
}

- (CGSize)playerViewControllerContentViewContentDimensions:(id)dimensions
{
  playerController = [(AVPlaybackControlsController *)self playerController];
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
  playerViewController = [(AVPlaybackControlsController *)self playerViewController];
  [playerViewController performInitialSetupIfNeededAndPossible];
}

- (id)playerViewControllerContentViewOverrideLayoutClass:(id)class
{
  playerViewController = [(AVPlaybackControlsController *)self playerViewController];
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
      v19 = &unk_1EFF12B78;
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
        v21 = &unk_1EFF12BA8;
      }

      else
      {
        v21 = &unk_1EFF12B90;
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
  playerViewController = [(AVPlaybackControlsController *)self playerViewController];
  fullScreenViewController = [playerViewController fullScreenViewController];
  v6 = fullScreenViewController;
  if (fullScreenViewController)
  {
    playerViewController2 = fullScreenViewController;
  }

  else
  {
    playerViewController2 = [(AVPlaybackControlsController *)self playerViewController];
  }

  v8 = playerViewController2;

  isBeingDismissed = [v8 isBeingDismissed];
  return isBeingDismissed;
}

- (BOOL)playerViewControllerContentViewHasActiveTransition:(id)transition
{
  playerViewController = [(AVPlaybackControlsController *)self playerViewController];
  hasActiveTransition = [playerViewController hasActiveTransition];

  return hasActiveTransition;
}

- (void)playerViewControllerContentViewDidChangeVideoGravity:(id)gravity
{
  playerViewController = [(AVPlaybackControlsController *)self playerViewController];
  videoGravity = [playerViewController videoGravity];

  if (videoGravity)
  {
    playerViewController2 = [(AVPlaybackControlsController *)self playerViewController];
    videoGravity2 = [playerViewController2 videoGravity];
    -[AVPlaybackControlsController setVideoScaled:](self, "setVideoScaled:", [videoGravity2 isEqualToString:*MEMORY[0x1E69874E8]] ^ 1);
  }

  [(AVPlaybackControlsController *)self _updateVideoGravityButtonType];
}

- (BOOL)playerViewControllerContentViewShouldApplyAutomaticVideoGravity:(id)gravity
{
  gravityCopy = gravity;
  if (![gravityCopy canAutomaticallyZoomLetterboxVideos] || !objc_msgSend(gravityCopy, "isCoveringWindow") || (objc_msgSend(gravityCopy, "traitCollection"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "displayCornerRadius"), v7 = v6, v5, v7 <= 0.0) || ((-[AVPlaybackControlsController playerController](self, "playerController"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "contentDimensions"), v10 = v9, v12 = v11, v8, v12 <= 0.0) ? (v13 = NAN) : (v13 = v10 / v12), (objc_msgSend(gravityCopy, "bounds"), v15 = v14, v17 = v16, v19 = v18, v21 = v20, objc_msgSend(gravityCopy, "edgeInsetsForLetterboxedContent"), v24 = v21 - (v22 + v23), v27 = v19 - (v25 + v26), v28 = v17 + v22, v29 = v15 + v25, v37.origin.x = v29, v37.origin.y = v28, v37.size.width = v27, v37.size.height = v24, CGRectIsEmpty(v37)) || (objc_msgSend(gravityCopy, "bounds"), CGRectIsEmpty(v38)) || (objc_msgSend(MEMORY[0x1E69DCEB0], "avkit_mainScreen"), v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "nativeBounds"), IsEmpty = CGRectIsEmpty(v39), v30, IsEmpty) || (objc_msgSend(gravityCopy, "bounds"), Width = CGRectGetWidth(v40), objc_msgSend(gravityCopy, "bounds"), Height = CGRectGetHeight(v41), v42.origin.x = v29, v42.origin.y = v28, v42.size.width = v27, v42.size.height = v24, CGRectGetMinY(v42) <= 0.0)))
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
  playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
  showsPlaybackControls = [playbackControlsView showsPlaybackControls];
  volumeControlsContainer = [playbackControlsView volumeControlsContainer];
  isCollapsed = [volumeControlsContainer isCollapsed];

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

  if (isCollapsed & 1 | ((showsPlaybackControls & 1) == 0))
  {
    v11 = [(AVPlaybackControlsController *)self _prefersVolumeSliderExpandedAutomatically]| isTracking;
  }

  else
  {
    v11 = 1;
  }

  if ([subviewsCopy avkit_isDescendantOfNonPagingScrollView])
  {
    isCoveringWindow = 0;
  }

  else
  {
    isCoveringWindow = [subviewsCopy isCoveringWindow];
  }

  [(AVPlaybackControlsController *)self setCoveringWindow:isCoveringWindow];
  [(AVPlaybackControlsController *)self _updateOrCreateTimeResolverIfNeeded];
  [(AVPlaybackControlsController *)self _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:v11 & 1];
  playbackContentContainerView = [subviewsCopy playbackContentContainerView];
  [playbackContentContainerView frame];
  [(AVPlaybackControlsController *)self setPlaybackViewFrame:?];

  pictureInPictureController = [(AVPlaybackControlsController *)self pictureInPictureController];
  [pictureInPictureController contentSourceVideoRectInWindowChanged];

  [(AVPlaybackControlsController *)self _updateRouteDetectionEnabled];
}

- (void)playerViewControllerContentViewDidMoveToSuperviewOrWindow:(id)window
{
  windowCopy = window;
  playerViewController = [(AVPlaybackControlsController *)self playerViewController];
  [playerViewController performInitialSetupIfNeededAndPossible];

  pictureInPictureController = [(AVPlaybackControlsController *)self pictureInPictureController];
  [pictureInPictureController contentSourceVideoRectInWindowChanged];

  windowSceneSessionIdentifier = [(AVPlaybackControlsController *)self windowSceneSessionIdentifier];
  window = [windowCopy window];
  windowScene = [window windowScene];
  session = [windowScene session];
  persistentIdentifier = [session persistentIdentifier];
  [(AVPlaybackControlsController *)self setWindowSceneSessionIdentifier:persistentIdentifier];

  volumeController = [(AVPlaybackControlsController *)self volumeController];
  uniqueIdentifer = [(AVPlaybackControlsController *)self uniqueIdentifer];
  [volumeController setClientWithIdentifier:uniqueIdentifer forWindowSceneSessionWithIdentifier:windowSceneSessionIdentifier];

  volumeController2 = [(AVPlaybackControlsController *)self volumeController];
  [volumeController2 setPrefersSystemVolumeHUDHidden:{-[AVPlaybackControlsController isFullScreen](self, "isFullScreen")}];

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

  [(AVPlaybackControlsController *)self _updateRouteDetectionEnabled];
}

- (void)playerViewControllerContentViewPlaybackContentContainerViewChanged:(id)changed
{
  playerViewController = [(AVPlaybackControlsController *)self playerViewController];
  [playerViewController activeContentViewDidChange];
}

- (void)turboModePlaybackControlsPlaceholderViewDidLoad:(id)load
{
  loadCopy = load;
  [(AVPlaybackControlsController *)self setTurboModePlaybackControlsPlaceholderView:loadCopy];
  [loadCopy setPreferredUnobscuredArea:{-[AVPlaybackControlsController preferredUnobscuredArea](self, "preferredUnobscuredArea")}];
  playerViewController = [(AVPlaybackControlsController *)self playerViewController];
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

  playerViewController2 = [(AVPlaybackControlsController *)self playerViewController];
  overrideLayoutMarginsWhenEmbeddedInline = [playerViewController2 overrideLayoutMarginsWhenEmbeddedInline];
  [loadCopy setOverrideLayoutMarginsWhenEmbeddedInline:overrideLayoutMarginsWhenEmbeddedInline];

  [loadCopy setHidden:{-[AVPlaybackControlsController showsPlaybackControls](self, "showsPlaybackControls") ^ 1}];
  playerController = [(AVPlaybackControlsController *)self playerController];
  [loadCopy setPlayerController:playerController];
}

- (void)playbackControlsViewDidLoad:(id)load
{
  loadCopy = load;
  [(AVPlaybackControlsController *)self setResumingUpdates:1];
  [(AVPlaybackControlsController *)self setPlaybackControlsView:loadCopy];
  if (!self->_showsPlaybackControls && ![(AVPlaybackControlsController *)self isHidingItemsForTransition])
  {
    [(AVPlaybackControlsController *)self beginHidingItemsForTransition];
  }

  turboModePlaybackControlsPlaceholderView = [(AVPlaybackControlsController *)self turboModePlaybackControlsPlaceholderView];
  [turboModePlaybackControlsPlaceholderView removeFromSuperview];

  playerController = [(AVPlaybackControlsController *)self playerController];
  -[AVPlaybackControlsController _updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:](self, "_updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:", [playerController isPlaying]);

  v7 = objc_alloc_init(AVRouteDetectorCoordinator);
  routeDetectorCoordinator = self->_routeDetectorCoordinator;
  self->_routeDetectorCoordinator = v7;

  [(AVPlaybackControlsController *)self startUpdatesIfNeeded];
  [loadCopy setFullScreen:{-[AVPlaybackControlsController isFullScreen](self, "isFullScreen")}];
  playerViewController = [(AVPlaybackControlsController *)self playerViewController];
  contentView = [playerViewController contentView];
  playbackContentContainerView = [contentView playbackContentContainerView];
  [playbackContentContainerView frame];
  [(AVPlaybackControlsController *)self setPlaybackViewFrame:?];

  [loadCopy setPreferredUnobscuredArea:{-[AVPlaybackControlsController preferredUnobscuredArea](self, "preferredUnobscuredArea")}];
  playerViewController2 = [(AVPlaybackControlsController *)self playerViewController];
  [loadCopy setVisibilityDelegate:playerViewController2];

  standardPlayPauseButton = [loadCopy standardPlayPauseButton];
  [standardPlayPauseButton setImageName:@"play.fill"];

  standardPlayPauseButton2 = [loadCopy standardPlayPauseButton];
  [standardPlayPauseButton2 setAlternateImageName:@"pause.fill"];

  standardPlayPauseButton3 = [loadCopy standardPlayPauseButton];
  v16 = *MEMORY[0x1E69DB970];
  v17 = [MEMORY[0x1E69DB878] avkit_nonScalingFontWithTextStyle:*MEMORY[0x1E69DDDB8] weight:*MEMORY[0x1E69DB970]];
  [standardPlayPauseButton3 setAlternateFullScreenFont:v17];

  standardPlayPauseButton4 = [loadCopy standardPlayPauseButton];
  [standardPlayPauseButton4 setFullscreenAlternateImagePadding:1.0];

  standardPlayPauseButton5 = [loadCopy standardPlayPauseButton];
  playerViewController3 = [(AVPlaybackControlsController *)self playerViewController];
  traitCollection = [playerViewController3 traitCollection];
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

  skipForwardButton2 = [loadCopy skipForwardButton];
  [skipForwardButton2 setAlternateImageName:@"forward.end.alt.fill"];

  skipForwardButton3 = [loadCopy skipForwardButton];
  v32 = [MEMORY[0x1E69DB878] avkit_nonScalingFontWithTextStyle:*MEMORY[0x1E69DDDC8] weight:v16];
  [skipForwardButton3 setAlternateFullScreenFont:v32];

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
  _volumeButtonMicaPackageState = [(AVPlaybackControlsController *)self _volumeButtonMicaPackageState];
  [volumeButton setMicaPackageStateName:_volumeButtonMicaPackageState];

  routePickerView = [loadCopy routePickerView];
  [routePickerView setDelegate:self];

  controlOverflowButton = [loadCopy controlOverflowButton];
  [controlOverflowButton setDelegate:self];

  doneButton2 = [loadCopy doneButton];
  playerViewController4 = [(AVPlaybackControlsController *)self playerViewController];
  [doneButton2 addTarget:playerViewController4 action:sel_doneButtonTapped_ forControlEvents:64];

  fullScreenButton2 = [loadCopy fullScreenButton];
  playerViewController5 = [(AVPlaybackControlsController *)self playerViewController];
  [fullScreenButton2 addTarget:playerViewController5 action:sel_enterFullScreen_ forControlEvents:64];

  videoGravityButton = [loadCopy videoGravityButton];
  playerViewController6 = [(AVPlaybackControlsController *)self playerViewController];
  [videoGravityButton addTarget:playerViewController6 action:sel_videoGravityButtonTapped_ forControlEvents:64];

  standardPlayPauseButton6 = [loadCopy standardPlayPauseButton];
  playerViewController7 = [(AVPlaybackControlsController *)self playerViewController];
  [standardPlayPauseButton6 addTarget:playerViewController7 action:sel_togglePlayback_ forControlEvents:64];

  pictureInPictureButton2 = [loadCopy pictureInPictureButton];
  playerViewController8 = [(AVPlaybackControlsController *)self playerViewController];
  [pictureInPictureButton2 addTarget:playerViewController8 action:sel_pictureInPictureButtonTapped_ forControlEvents:64];

  mediaSelectionButton2 = [loadCopy mediaSelectionButton];
  playerViewController9 = [(AVPlaybackControlsController *)self playerViewController];
  [mediaSelectionButton2 addTarget:playerViewController9 action:sel_mediaSelectionButtonTapped_ forControlEvents:64];

  objc_initWeak(&location, self);
  v55 = MEMORY[0x1E69DC628];
  v116[0] = MEMORY[0x1E69E9820];
  v116[1] = 3221225472;
  v116[2] = __60__AVPlaybackControlsController_playbackControlsViewDidLoad___block_invoke;
  v116[3] = &unk_1E7209230;
  objc_copyWeak(&v117, &location);
  v56 = [v55 actionWithHandler:v116];
  playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
  playbackSpeedButton = [playbackControlsView playbackSpeedButton];
  [playbackSpeedButton setImageName:@"speedometer"];

  playbackControlsView2 = [(AVPlaybackControlsController *)self playbackControlsView];
  playbackSpeedButton2 = [playbackControlsView2 playbackSpeedButton];
  v61 = objc_loadWeakRetained(&location);
  playbackRateMenuController = [v61 playbackRateMenuController];
  menu = [playbackRateMenuController menu];
  [playbackSpeedButton2 setMenu:menu];

  playbackControlsView3 = [(AVPlaybackControlsController *)self playbackControlsView];
  playbackSpeedButton3 = [playbackControlsView3 playbackSpeedButton];
  [playbackSpeedButton3 addAction:v56 forControlEvents:0x4000];

  playbackControlsView4 = [(AVPlaybackControlsController *)self playbackControlsView];
  playbackSpeedButton4 = [playbackControlsView4 playbackSpeedButton];
  [playbackSpeedButton4 addTarget:self action:sel_playbackSpeedButtonTapped_ forControlEvents:64];

  skipBackButton2 = [loadCopy skipBackButton];
  [skipBackButton2 addTarget:self action:sel_skipButtonTouchUpInside_ forControlEvents:64];

  skipForwardButton4 = [loadCopy skipForwardButton];
  [skipForwardButton4 addTarget:self action:sel_skipButtonTouchUpInside_ forControlEvents:64];

  skipBackButton3 = [loadCopy skipBackButton];
  [skipBackButton3 addTarget:self action:sel_skipButtonLongPressTriggered_ forControlEvents:0x400000];

  skipForwardButton5 = [loadCopy skipForwardButton];
  [skipForwardButton5 addTarget:self action:sel_skipButtonLongPressTriggered_ forControlEvents:0x400000];

  skipBackButton4 = [loadCopy skipBackButton];
  [skipBackButton4 addTarget:self action:sel_skipButtonLongPressEnded_ forControlEvents:0x800000];

  skipForwardButton6 = [loadCopy skipForwardButton];
  [skipForwardButton6 addTarget:self action:sel_skipButtonLongPressEnded_ forControlEvents:0x800000];

  skipBackButton5 = [loadCopy skipBackButton];
  [skipBackButton5 addTarget:self action:sel_skipButtonForcePressChanged_ forControlEvents:0x2000000];

  skipForwardButton7 = [loadCopy skipForwardButton];
  [skipForwardButton7 addTarget:self action:sel_skipButtonForcePressChanged_ forControlEvents:0x2000000];

  [(AVPlaybackControlsController *)self _updateSkipButtonsEnableLongPress];
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

  skipForwardButton8 = [loadCopy skipForwardButton];
  [skipForwardButton8 setTintEffectStyle:0];

  startLeftwardContentTransitionButton3 = [loadCopy startLeftwardContentTransitionButton];
  [startLeftwardContentTransitionButton3 setTintEffectStyle:0];

  startRightwardContentTransitionButton3 = [loadCopy startRightwardContentTransitionButton];
  [startRightwardContentTransitionButton3 setTintEffectStyle:0];

  customControlItems = [(AVPlaybackControlsController *)self customControlItems];
  [loadCopy setCustomControlItems:customControlItems animations:&__block_literal_global_212_22157];

  playerViewController10 = [(AVPlaybackControlsController *)self playerViewController];
  v96 = playerViewController10;
  if (playerViewController10)
  {
    [playerViewController10 overrideTransformForProminentPlayButton];
  }

  else
  {
    memset(v115, 0, sizeof(v115));
  }

  [loadCopy setOverrideTransformForProminentPlayButton:v115];

  playerViewController11 = [(AVPlaybackControlsController *)self playerViewController];
  overrideLayoutMarginsWhenEmbeddedInline = [playerViewController11 overrideLayoutMarginsWhenEmbeddedInline];
  [loadCopy setOverrideLayoutMarginsWhenEmbeddedInline:overrideLayoutMarginsWhenEmbeddedInline];

  v99 = MEMORY[0x1E69DD250];
  v109 = MEMORY[0x1E69E9820];
  v110 = 3221225472;
  v111 = __60__AVPlaybackControlsController_playbackControlsViewDidLoad___block_invoke_3;
  v112 = &unk_1E7209FB0;
  v100 = loadCopy;
  v113 = v100;
  selfCopy = self;
  [v99 performWithoutAnimation:&v109];
  v101 = [(AVPlaybackControlsController *)self volumeController:v109];
  uniqueIdentifer = [(AVPlaybackControlsController *)self uniqueIdentifer];
  windowSceneSessionIdentifier = [(AVPlaybackControlsController *)self windowSceneSessionIdentifier];
  [v101 setClientWithIdentifier:uniqueIdentifer forWindowSceneSessionWithIdentifier:windowSceneSessionIdentifier];

  volumeController = [(AVPlaybackControlsController *)self volumeController];
  [volumeController setPrefersSystemVolumeHUDHidden:{-[AVPlaybackControlsController isFullScreen](self, "isFullScreen")}];

  if (!self->_remainingTimeFormatter || !self->_elapsedTimeFormatter)
  {
    v105 = objc_alloc_init(MEMORY[0x1E6988158]);
    elapsedTimeFormatter = self->_elapsedTimeFormatter;
    self->_elapsedTimeFormatter = v105;

    [(AVTimeFormatter *)self->_elapsedTimeFormatter setStyle:1];
    v107 = objc_alloc_init(MEMORY[0x1E6988158]);
    remainingTimeFormatter = self->_remainingTimeFormatter;
    self->_remainingTimeFormatter = v107;

    [(AVTimeFormatter *)self->_remainingTimeFormatter setStyle:2];
  }

  [v100 setupInitialLayout];
  [v100 setPrefersVolumeSliderExpandedAutomatically:{-[AVPlaybackControlsController _prefersVolumeSliderExpandedAutomatically](self, "_prefersVolumeSliderExpandedAutomatically")}];
  [(AVPlaybackControlsController *)self _updatePlaybackControlsVisibleAndObservingUpdates];
  [(AVPlaybackControlsController *)self _updateContainerInclusion];
  [(AVPlaybackControlsController *)self _updateControlInclusion];
  [(AVPlaybackControlsController *)self _updateScrubberAndTimeLabels];
  [(AVPlaybackControlsController *)self _updateVolumeControllerView];
  [(AVPlaybackControlsController *)self _updateTransportBarCustomMenuItemsIfNeeded];

  objc_destroyWeak(&v117);
  objc_destroyWeak(&location);
}

void __60__AVPlaybackControlsController_playbackControlsViewDidLoad___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained playbackRateMenuController];
  v7 = [v3 menu];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 playbackControlsView];
  v6 = [v5 playbackSpeedButton];
  [v6 setMenu:v7];
}

uint64_t __60__AVPlaybackControlsController_playbackControlsViewDidLoad___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) transportControlsView];
  v3 = [*(a1 + 40) playerViewController];
  v4 = [v3 customContentTransitioningInfoPanel];
  [v2 setCustomContentTransitioningInfoPanel:v4];

  v5 = *(a1 + 40);
  v6 = [v5 _prefersVolumeSliderExpandedAutomatically];

  return [v5 _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:v6];
}

- (void)setTransportBarCustomMenuItems:(id)items
{
  v4 = [items copy];
  transportBarCustomMenuItems = self->_transportBarCustomMenuItems;
  self->_transportBarCustomMenuItems = v4;

  playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
  transportControlsView = [playbackControlsView transportControlsView];
  controlOverflowButton = [transportControlsView controlOverflowButton];
  [controlOverflowButton updateContextMenu];

  [(AVPlaybackControlsController *)self _updateTransportBarCustomMenuItemsIfNeeded];
}

- (void)setCustomControlItems:(id)items
{
  v20 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if (![(NSArray *)self->_customControlItems isEqualToArray:itemsCopy])
  {
    v5 = [itemsCopy copy];
    customControlItems = self->_customControlItems;
    self->_customControlItems = v5;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = self->_customControlItems;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v15 + 1) + 8 * v11++) setFirstGenerationControl:1];
        }

        while (v9 != v11);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__AVPlaybackControlsController_setCustomControlItems___block_invoke;
    v14[3] = &unk_1E720A090;
    v14[4] = self;
    [playbackControlsView setCustomControlItems:itemsCopy animations:v14];

    playbackControlsView2 = [(AVPlaybackControlsController *)self playbackControlsView];
    [playbackControlsView2 setPrefersVolumeSliderExpandedAutomatically:{-[AVPlaybackControlsController _prefersVolumeSliderExpandedAutomatically](self, "_prefersVolumeSliderExpandedAutomatically")}];
  }
}

- (BOOL)tapGestureRecognizersCanReceiveTouches
{
  if ([(AVPlaybackControlsController *)self showsPlaybackControls]|| (v3 = [(AVPlaybackControlsController *)self hasCustomPlaybackControls]))
  {
    LOBYTE(v3) = ![(AVPlaybackControlsController *)self showsProminentPlayButton];
  }

  return v3;
}

- (BOOL)needsTimeResolver
{
  playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
  if (playbackControlsView)
  {
    playbackControlsView2 = [(AVPlaybackControlsController *)self playbackControlsView];
    if ([playbackControlsView2 showsPlaybackControls])
    {
      v5 = ![(AVPlaybackControlsController *)self isResumingUpdates];
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
  playerController = [(AVPlaybackControlsController *)self playerController];
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

  if ([(AVPlaybackControlsController *)self timeControlStatus])
  {
    v11 = 1;
  }

  else
  {
    isPlaybackSuspendedForScrubbing = [(AVPlaybackControlsController *)self isPlaybackSuspendedForScrubbing];
    v13 = v5 != 0.0 || isPlaybackSuspendedForScrubbing;
    v11 = v13 | v10;
  }

  return v11 & 1;
}

- (BOOL)canShowLoadingIndicator
{
  if ([(AVPlaybackControlsController *)self isResumingUpdates]|| [(AVPlaybackControlsController *)self playerViewControllerIsBeingTransitionedWithResizing])
  {
    return 0;
  }

  playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
  if (playbackControlsView)
  {
    playerController = [(AVPlaybackControlsController *)self playerController];
    v3 = [playerController status] == 1 || -[AVPlaybackControlsController timeControlStatus](self, "timeControlStatus") == 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)showsStartContentTransitionButtons
{
  isFullScreen = [(AVPlaybackControlsController *)self isFullScreen];
  if (isFullScreen)
  {

    LOBYTE(isFullScreen) = [(AVPlaybackControlsController *)self playbackControlsIncludeStartContentTransitionButtons];
  }

  return isFullScreen;
}

- (BOOL)showsSkipButtons
{
  if ([(AVPlaybackControlsController *)self isFullScreen]&& ![(AVPlaybackControlsController *)self playbackControlsIncludeStartContentTransitionButtons]&& ![(AVPlaybackControlsController *)self playerViewControllerIsBeingTransitionedWithResizing])
  {
    if ([(AVPlaybackControlsController *)self isSeekingEnabled])
    {
      return 1;
    }

    if (![(AVPlaybackControlsController *)self requiresLinearPlayback])
    {
      playerController = [(AVPlaybackControlsController *)self playerController];
      v3 = [playerController status] != 2;

      return v3;
    }
  }

  return 0;
}

- (BOOL)isSeekingEnabled
{
  if ([(AVPlaybackControlsController *)self requiresLinearPlayback])
  {
    return 0;
  }

  playerController = [(AVPlaybackControlsController *)self playerController];
  canSeek = [playerController canSeek];

  return canSeek;
}

- (double)maximumTime
{
  playerController = [(AVPlaybackControlsController *)self playerController];
  if ([playerController status] == 2)
  {
    timeResolver = [(AVPlaybackControlsController *)self timeResolver];
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
  playerController = [(AVPlaybackControlsController *)self playerController];
  if ([playerController status] == 2)
  {
    timeResolver = [(AVPlaybackControlsController *)self timeResolver];
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
  playerController = [(AVPlaybackControlsController *)self playerController];
  if ([playerController status] == 2)
  {
    timeResolver = [(AVPlaybackControlsController *)self timeResolver];
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
  playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
  scrubber = [playbackControlsView scrubber];
  isTracking = [scrubber isTracking];

  if (isTracking)
  {
    playbackControlsView2 = [(AVPlaybackControlsController *)self playbackControlsView];
    scrubber2 = [playbackControlsView2 scrubber];
    [scrubber2 value];
    v9 = v8;

LABEL_5:
    return v9;
  }

  playerController = [(AVPlaybackControlsController *)self playerController];
  externalPlaybackType = [playerController externalPlaybackType];

  if (externalPlaybackType == 1)
  {
    playbackControlsView2 = [(AVPlaybackControlsController *)self timeResolver];
    [playbackControlsView2 currentTime];
    v9 = v12;
    goto LABEL_5;
  }

  [(AVPlaybackControlsController *)self currentTime];
  return result;
}

- (BOOL)showsMediaSelectionButton
{
  playerController = [(AVPlaybackControlsController *)self playerController];
  hasMediaSelectionOptions = [playerController hasMediaSelectionOptions];

  return hasMediaSelectionOptions;
}

- (BOOL)shouldEnterFullScreenWhenPlaybackBegins
{
  entersFullScreenWhenPlaybackBegins = [(AVPlaybackControlsController *)self entersFullScreenWhenPlaybackBegins];
  if (entersFullScreenWhenPlaybackBegins)
  {
    if ([(AVPlaybackControlsController *)self hasPlaybackBegunSincePlayerControllerBecameReadyToPlay])
    {
      LOBYTE(entersFullScreenWhenPlaybackBegins) = 0;
    }

    else
    {
      LOBYTE(entersFullScreenWhenPlaybackBegins) = ![(AVPlaybackControlsController *)self playerViewControllerHasInvalidViewControllerHierarchy];
    }
  }

  return entersFullScreenWhenPlaybackBegins;
}

- (BOOL)showsTransportControls
{
  if ([(AVPlaybackControlsController *)self isFullScreen])
  {
    return 1;
  }

  if ([(AVPlaybackControlsController *)self preferredUnobscuredArea]== 2)
  {
    return 0;
  }

  return ![(AVPlaybackControlsController *)self shouldEnterFullScreenWhenPlaybackBegins];
}

- (BOOL)showsProminentPlayButton
{
  showsMinimalPlaybackControlsWhenEmbeddedInline = [(AVPlaybackControlsController *)self shouldEnterFullScreenWhenPlaybackBegins]|| [(AVPlaybackControlsController *)self showsMinimalPlaybackControlsWhenEmbeddedInline];
  if ([(AVPlaybackControlsController *)self isFullScreen]|| ![(AVPlaybackControlsController *)self playbackControlsIncludeTransportControls]|| !(showsMinimalPlaybackControlsWhenEmbeddedInline | ![(AVPlaybackControlsController *)self hasPlaybackBegunSincePlayerControllerBecameReadyToPlay]))
  {
    goto LABEL_27;
  }

  pictureInPictureController = [(AVPlaybackControlsController *)self pictureInPictureController];
  if ([pictureInPictureController isPictureInPictureActive])
  {
    v5 = 0;
  }

  else
  {
    playerController = [(AVPlaybackControlsController *)self playerController];
    if ([playerController status] == 3)
    {
      v5 = 0;
    }

    else
    {
      playerController2 = [(AVPlaybackControlsController *)self playerController];
      if ([playerController2 isPlayingOnExternalScreen])
      {
        v5 = 0;
      }

      else
      {
        playerController3 = [(AVPlaybackControlsController *)self playerController];
        if ([playerController3 hasVideo])
        {
          v5 = 1;
        }

        else
        {
          playerController4 = [(AVPlaybackControlsController *)self playerController];
          v5 = [playerController4 hasEnabledAudio] ^ 1;
        }
      }
    }
  }

  if (-[AVPlaybackControlsController playButtonsShowPauseGlyph](self, "playButtonsShowPauseGlyph") || !showsMinimalPlaybackControlsWhenEmbeddedInline && ((-[AVPlaybackControlsController playButtonHandlerForLazyPlayerLoading](self, "playButtonHandlerForLazyPlayerLoading"), (v10 = objc_claimAutoreleasedReturnValue()) == 0) || (v11 = v10, -[AVPlaybackControlsController playerController](self, "playerController"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 status], v12, v11, v13)))
  {
    if ([(AVPlaybackControlsController *)self preferredUnobscuredArea]== 2)
    {
      LOBYTE(v5) = 1;
      return v5;
    }

    if (![(AVPlaybackControlsController *)self hasPlaybackBegunSincePlayerControllerBecameReadyToPlay])
    {
      return ![(AVPlaybackControlsController *)self playButtonsShowPauseGlyph]& v5;
    }

LABEL_27:
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)showsRoutePickerView
{
  if (![(AVPlaybackControlsController *)self multipleRoutesDetected])
  {
    return 0;
  }

  playerController = [(AVPlaybackControlsController *)self playerController];
  if ([playerController allowsExternalPlayback])
  {
    wantsExternalPlaybackButtonShown = [(AVPlaybackControlsController *)self wantsExternalPlaybackButtonShown];
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
  showsMinimalPlaybackControlsWhenEmbeddedInline = [(AVPlaybackControlsController *)self showsMinimalPlaybackControlsWhenEmbeddedInline];
  if (showsMinimalPlaybackControlsWhenEmbeddedInline)
  {
    if ([(AVPlaybackControlsController *)self showsProminentPlayButton])
    {
      LOBYTE(showsMinimalPlaybackControlsWhenEmbeddedInline) = 0;
    }

    else
    {
      showsMinimalPlaybackControlsWhenEmbeddedInline = [(AVPlaybackControlsController *)self allowsEnteringFullScreen];
      if (showsMinimalPlaybackControlsWhenEmbeddedInline)
      {
        LOBYTE(showsMinimalPlaybackControlsWhenEmbeddedInline) = ![(AVPlaybackControlsController *)self isFullScreen];
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
      v9 = "[AVPlaybackControlsController setShowsTimecodes:]";
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
    playerController = [(AVPlaybackControlsController *)self playerController];
    [playerController hasReadableTimecodes];

    [(AVPlaybackControlsController *)self _updateOrCreateTimeResolverIfNeeded];
    [(AVPlaybackControlsController *)self _updateScrubberAndTimeLabels];
  }
}

- (void)setShowsPictureInPictureButton:(BOOL)button
{
  if (self->_showsPictureInPictureButton != button)
  {
    self->_showsPictureInPictureButton = button;
    [(AVPlaybackControlsController *)self _updateControlInclusion];
  }
}

- (void)setCanIncludeVideoGravityButton:(BOOL)button
{
  if (self->_canIncludeVideoGravityButton != button)
  {
    self->_canIncludeVideoGravityButton = button;
    [(AVPlaybackControlsController *)self _updateControlInclusion];
  }
}

- (void)setCoveringWindow:(BOOL)window
{
  if (self->_coveringWindow != window)
  {
    self->_coveringWindow = window;
    [(AVPlaybackControlsController *)self _updateControlInclusion];
  }
}

- (BOOL)isFullScreen
{
  if ([(AVPlaybackControlsController *)self playerViewControllerIsPresentingFullScreen]|| [(AVPlaybackControlsController *)self playerViewControllerIsPresentedFullScreen])
  {
    return 1;
  }

  return [(AVPlaybackControlsController *)self isCoveringWindow];
}

- (void)setVolumeController:(id)controller
{
  controllerCopy = controller;
  v5 = self->_volumeController;
  if (v5 != controllerCopy)
  {
    objc_storeStrong(&self->_volumeController, controller);
    if ([(AVPlaybackControlsController *)self isFullScreen])
    {
      [(AVVolumeController *)v5 setPrefersSystemVolumeHUDHidden:0];
      volumeController = [(AVPlaybackControlsController *)self volumeController];
      [volumeController setPrefersSystemVolumeHUDHidden:1];
    }
  }
}

- (void)setShowsVideoGravityButton:(BOOL)button
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_showsVideoGravityButton != button)
  {
    buttonCopy = button;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVPlaybackControlsController setShowsVideoGravityButton:]";
      v10 = "showsVideoGravityButton";
      v9 = 2080;
      if (buttonCopy)
      {
        v6 = "YES";
      }

      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
    }

    self->_showsVideoGravityButton = buttonCopy;
    [(AVPlaybackControlsController *)self _updateVideoGravityButtonType];
  }
}

- (void)setShowsDoneButtonWhenFullScreen:(BOOL)screen
{
  if (self->_showsDoneButtonWhenFullScreen != screen)
  {
    self->_showsDoneButtonWhenFullScreen = screen;
    [(AVPlaybackControlsController *)self _updateControlInclusion];
  }
}

- (void)setShowsVolumeControlsForContentWithNoAudio:(BOOL)audio
{
  if (self->_showsVolumeControlsForContentWithNoAudio != audio)
  {
    self->_showsVolumeControlsForContentWithNoAudio = audio;
    [(AVPlaybackControlsController *)self _updateContainerInclusion];
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
      v8 = "[AVPlaybackControlsController setVolumeControlsCanShowSlider:]";
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
    [(AVPlaybackControlsController *)self _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:sliderCopy];
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
      v8 = "[AVPlaybackControlsController setCanIncludePlaybackControlsWhenInline:]";
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
      v8 = "[AVPlaybackControlsController setHasCustomPlaybackControls:]";
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
      v9 = "[AVPlaybackControlsController setShowsPlaybackControls:]";
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
    [(AVPlaybackControlsController *)self _updatePlaybackControlsVisibleAndObservingUpdates];
    turboModePlaybackControlsPlaceholderView = [(AVPlaybackControlsController *)self turboModePlaybackControlsPlaceholderView];
    [turboModePlaybackControlsPlaceholderView setHidden:!controlsCopy];
  }
}

- (void)setPlayerViewControllerIsBeingTransitionedWithResizing:(BOOL)resizing
{
  if (self->_playerViewControllerIsBeingTransitionedWithResizing != resizing)
  {
    self->_playerViewControllerIsBeingTransitionedWithResizing = resizing;
    [(AVPlaybackControlsController *)self _updatePlaybackControlsVisibleAndObservingUpdates];
  }
}

- (void)setPlayerViewControllerIsPresentedFullScreen:(BOOL)screen
{
  if (self->_playerViewControllerIsPresentedFullScreen != screen)
  {
    self->_playerViewControllerIsPresentedFullScreen = screen;
    [(AVPlaybackControlsController *)self _updateControlInclusion];
  }
}

- (void)setPlayerViewControllerIsPresentingFullScreen:(BOOL)screen
{
  if (self->_playerViewControllerIsPresentingFullScreen != screen)
  {
    self->_playerViewControllerIsPresentingFullScreen = screen;
    [(AVPlaybackControlsController *)self _updateControlInclusion];
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
    playbackRateMenuController = [(AVPlaybackControlsController *)self playbackRateMenuController];
    [playbackRateMenuController setPlaybackSpeedCollection:v8];

    [(AVPlaybackControlsController *)self _updatePlaybackSpeedControlInclusion];
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
    volumeAnimator = [(AVPlaybackControlsController *)self volumeAnimator];
    [volumeAnimator restoreVolumeIfNeeded];

    [(AVPlaybackControlsController *)self setVolumeAnimator:0];
    if (self)
    {
      playerControllerObservationController = [(AVPlaybackControlsController *)self playerControllerObservationController];
      [playerControllerObservationController stopAllObservation];

      if ([(AVPlaybackControlsController *)self hasBegunObservingPotentiallyUnimplementedPlayerControllerProperties])
      {
        [(AVPlaybackControlsController *)self setHasBegunObservingPotentiallyUnimplementedPlayerControllerProperties:0];
      }
    }

    v8 = objc_storeWeak(&self->_playerController, obj);

    if (obj)
    {
      [(AVPlaybackControlsController *)self _startObservingPlayerControllerProperties];
      [(AVPlaybackControlsController *)self _startObservingPotentiallyUnimplementedPlayerControllerProperties];
    }

    volumeController = [(AVPlaybackControlsController *)self volumeController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      volumeController2 = [(AVPlaybackControlsController *)self volumeController];
      v12 = objc_loadWeakRetained(&self->_playerController);
      [volumeController2 setPlayerController:v12];
    }

    [(AVPlaybackControlsController *)self _updateOrCreateTimeResolverIfNeeded];
    [(AVPlaybackControlsController *)self _updateSkipButtonsEnableLongPress];
    turboModePlaybackControlsPlaceholderView = [(AVPlaybackControlsController *)self turboModePlaybackControlsPlaceholderView];
    [turboModePlaybackControlsPlaceholderView setPlayerController:obj];

    v5 = obj;
  }
}

- (void)_updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:(BOOL)expansion
{
  expansionCopy = expansion;
  playerViewController = [(AVPlaybackControlsController *)self playerViewController];
  presentationContext = [playerViewController presentationContext];
  if ([presentationContext isPresenting])
  {
    playerViewController2 = [(AVPlaybackControlsController *)self playerViewController];
    presentationContext2 = [playerViewController2 presentationContext];
    presentingTransition = [presentationContext2 presentingTransition];
    v47 = ([presentingTransition finalInterfaceOrientation] - 1) < 2;
  }

  else
  {
    v47 = 0;
  }

  playerViewController3 = [(AVPlaybackControlsController *)self playerViewController];
  presentationContext3 = [playerViewController3 presentationContext];
  currentTransition = [presentationContext3 currentTransition];
  isRotated = [currentTransition isRotated];
  playerViewController4 = [(AVPlaybackControlsController *)self playerViewController];
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

  shouldShowVolumeControlInTransportBar = [(AVPlaybackControlsController *)self shouldShowVolumeControlInTransportBar];
  if ([(AVPlaybackControlsController *)self playbackControlsIncludeVolumeControls])
  {
    v22 = v20 == 1 && v47;
    v23 = 0;
    if ([(AVPlaybackControlsController *)self volumeControlsCanShowSlider]&& !v22)
    {
      volumeController = [(AVPlaybackControlsController *)self volumeController];
      if ([volumeController currentRouteHasVolumeControl])
      {
        playerController = [(AVPlaybackControlsController *)self playerController];
        if ([playerController isPlayingOnExternalScreen])
        {
          v23 = 0;
        }

        else
        {
          playerController2 = [(AVPlaybackControlsController *)self playerController];
          v23 = ([playerController2 isPlayingOnSecondScreen] & 1) == 0 && -[AVPlaybackControlsController preferredUnobscuredArea](self, "preferredUnobscuredArea") != 1;
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

  if ([(AVPlaybackControlsController *)self playbackControlsIncludeVolumeControls])
  {
    v27 = shouldShowVolumeControlInTransportBar ^ 1;
  }

  else
  {
    playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
    customAudioItems = [playbackControlsView customAudioItems];
    v27 = ([customAudioItems count] == 0) & (shouldShowVolumeControlInTransportBar ^ 1);
  }

  playbackControlsView2 = [(AVPlaybackControlsController *)self playbackControlsView];
  transportControlsView = [playbackControlsView2 transportControlsView];
  [transportControlsView setTransportViewIncludesVolumeController:shouldShowVolumeControlInTransportBar];

  if (v23)
  {
    v32 = expansionCopy & (shouldShowVolumeControlInTransportBar ^ 1);
  }

  else
  {
    v32 = 0;
  }

  playbackControlsView3 = [(AVPlaybackControlsController *)self playbackControlsView];
  volumeSlider = [playbackControlsView3 volumeSlider];
  if (v32 == [volumeSlider isIncluded])
  {
    playbackControlsView4 = [(AVPlaybackControlsController *)self playbackControlsView];
    volumeButton = [playbackControlsView4 volumeButton];
    isIncluded = [volumeButton isIncluded];

    if (v27 == isIncluded)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  if (v32)
  {
    volumeController2 = [(AVPlaybackControlsController *)self volumeController];
    [volumeController2 volume];
    [(AVPlaybackControlsController *)self _updateVolumeSliderValueWithSystemVolume:0 animated:?];
  }

  if ([MEMORY[0x1E69DD250] areAnimationsEnabled])
  {
    playbackControlsView5 = [(AVPlaybackControlsController *)self playbackControlsView];
    volumeControls = [playbackControlsView5 volumeControls];
    if ([volumeControls isHiddenOrHasHiddenAncestor])
    {
      v41 = 0;
    }

    else
    {
      playbackControlsView6 = [(AVPlaybackControlsController *)self playbackControlsView];
      volumeControls2 = [playbackControlsView6 volumeControls];
      if ([volumeControls2 _isInAWindow] && !-[AVPlaybackControlsController isResumingUpdates](self, "isResumingUpdates"))
      {
        playbackControlsView7 = [(AVPlaybackControlsController *)self playbackControlsView];
        if ([playbackControlsView7 avkit_wantsAnimatedViewTransitions])
        {
          playerViewController5 = [(AVPlaybackControlsController *)self playerViewController];
          v41 = [playerViewController5 hasActiveTransition] ^ 1;
        }

        else
        {
          v41 = 0;
        }
      }

      else
      {
        v41 = 0;
      }
    }
  }

  else
  {
    v41 = 0;
  }

  playbackControlsView8 = [(AVPlaybackControlsController *)self playbackControlsView];
  [playbackControlsView8 setPrefersVolumeSliderExpanded:v32 prefersVolumeButtonIncluded:v27 animated:v41];

LABEL_49:

  [(AVPlaybackControlsController *)self _updateVolumeButtonGlyph];
}

- (void)setAllowsEnteringFullScreen:(BOOL)screen
{
  if (self->_allowsEnteringFullScreen != screen)
  {
    self->_allowsEnteringFullScreen = screen;
    [(AVPlaybackControlsController *)self _updateControlInclusion];
  }
}

- (void)setPreferredUnobscuredArea:(int64_t)area
{
  if (self->_preferredUnobscuredArea != area)
  {
    self->_preferredUnobscuredArea = area;
    playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];
    [playbackControlsView setPreferredUnobscuredArea:area];

    playbackControlsView2 = [(AVPlaybackControlsController *)self playbackControlsView];
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
      v8 = "[AVPlaybackControlsController setShowsMinimalPlaybackControlsWhenEmbeddedInline:]";
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

    [(AVPlaybackControlsController *)self _updateContainerInclusion];
  }
}

- (void)toggleMuted
{
  v3 = [(AVPlaybackControlsController *)self prefersMuted]^ 1;

  [(AVPlaybackControlsController *)self setPrefersMuted:v3];
}

- (void)startUpdatesIfNeeded
{
  if (![(AVPlaybackControlsController *)self hasStartedUpdates])
  {
    playbackControlsView = [(AVPlaybackControlsController *)self playbackControlsView];

    if (playbackControlsView)
    {
      [(AVPlaybackControlsController *)self setHasStartedUpdates:1];
      v4 = self->_observationController;
      objc_initWeak(&location, self);
      [(AVPlaybackControlsController *)self _updateRouteDetectionEnabled];
      routeDetectorCoordinator = [(AVPlaybackControlsController *)self routeDetectorCoordinator];
      -[AVPlaybackControlsController setMultipleRoutesDetected:](self, "setMultipleRoutesDetected:", [routeDetectorCoordinator multipleRoutesDetected]);

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __52__AVPlaybackControlsController_startUpdatesIfNeeded__block_invoke;
      v14[3] = &unk_1E7208BF0;
      objc_copyWeak(&v15, &location);
      [(AVObservationController *)v4 startObservingNotificationForName:@"AVRouteDetectorCoordinatorMultipleRoutesDetectedDidChangeNotification" object:0 notificationCenter:0 observationHandler:v14];
      [(AVObservationController *)v4 startObservingNotificationForName:@"AVVolumeControllerVolumeChangedNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_22185];
      [(AVObservationController *)v4 startObservingNotificationForName:@"AVVolumeControllerCurrentRouteHasVolumeControlChangedNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_28];
      playerController = [(AVPlaybackControlsController *)self playerController];

      if (playerController)
      {
        [(AVPlaybackControlsController *)self _startObservingPotentiallyUnimplementedPlayerControllerProperties];
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __52__AVPlaybackControlsController_startUpdatesIfNeeded__block_invoke_4;
      v12[3] = &unk_1E7209A88;
      objc_copyWeak(&v13, &location);
      [(AVPlaybackControlsController *)self _observeBoolForKeyPath:@"scrubbingOrSeeking" usingKeyValueObservationController:v4 observationHandler:v12];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __52__AVPlaybackControlsController_startUpdatesIfNeeded__block_invoke_5;
      v10[3] = &unk_1E7208C38;
      objc_copyWeak(&v11, &location);
      v7 = [(AVObservationController *)v4 startObserving:self keyPath:@"timeControlStatus" includeInitialValue:1 observationHandler:v10];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __52__AVPlaybackControlsController_startUpdatesIfNeeded__block_invoke_6;
      v8[3] = &unk_1E7209A88;
      objc_copyWeak(&v9, &location);
      [(AVPlaybackControlsController *)self _observeBoolForKeyPath:@"needsTimeResolver" usingKeyValueObservationController:v4 observationHandler:v8];
      [(AVPlaybackControlsController *)self _updatePlaybackControlsVisibleAndObservingUpdates];
      objc_destroyWeak(&v9);
      objc_destroyWeak(&v11);
      objc_destroyWeak(&v13);
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }
}

void __52__AVPlaybackControlsController_startUpdatesIfNeeded__block_invoke(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 routeDetectorCoordinator];
  [v2 setMultipleRoutesDetected:{objc_msgSend(v1, "multipleRoutesDetected")}];
}

void __52__AVPlaybackControlsController_startUpdatesIfNeeded__block_invoke_4(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setLoadingIndicatorTimerDelay:0.75];
  }
}

void __52__AVPlaybackControlsController_startUpdatesIfNeeded__block_invoke_5(uint64_t a1, void *a2, uint64_t a3, void *a4)
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

void __52__AVPlaybackControlsController_startUpdatesIfNeeded__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateOrCreateTimeResolverIfNeeded];
}

void __52__AVPlaybackControlsController_startUpdatesIfNeeded__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
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

void __52__AVPlaybackControlsController_startUpdatesIfNeeded__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
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
    v12 = "[AVPlaybackControlsController dealloc]";
    v13 = 1024;
    v14 = 230;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %d", buf, 0x12u);
  }

  playerControllerObservationController = [(AVPlaybackControlsController *)self playerControllerObservationController];
  [playerControllerObservationController stopAllObservation];

  playbackControlsObservationController = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  [playbackControlsObservationController stopAllObservation];

  observationController = [(AVPlaybackControlsController *)self observationController];
  [observationController stopAllObservation];

  [(AVPlaybackControlsController *)self setShowsTimecodes:0];
  volumeController = [(AVPlaybackControlsController *)self volumeController];
  [volumeController setPrefersSystemVolumeHUDHidden:0];

  timeResolver = [(AVPlaybackControlsController *)self timeResolver];
  [timeResolver setPlayerController:0];

  routeDetectorCoordinator = [(AVPlaybackControlsController *)self routeDetectorCoordinator];
  [routeDetectorCoordinator setRouteDetectionEnabled:0];

  [(AVPlaybackControlsController *)self setPlayerController:0];
  v10.receiver = self;
  v10.super_class = AVPlaybackControlsController;
  [(AVPlaybackControlsController *)&v10 dealloc];
}

- (AVPlaybackControlsController)initWithPlayerViewController:(id)controller
{
  v25 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v20.receiver = self;
  v20.super_class = AVPlaybackControlsController;
  v5 = [(AVPlaybackControlsController *)&v20 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_playerViewController, controllerCopy);
    playerController = [controllerCopy playerController];
    objc_storeWeak(&v6->_playerController, playerController);

    v6->_showsVideoGravityButton = 1;
    playerViewController = [(AVPlaybackControlsController *)v6 playerViewController];
    v6->_showsPlaybackControls = [playerViewController showsPlaybackControls];

    *&v6->_playbackControlsIncludeTransportControls = 257;
    v6->_playbackControlsIncludeVolumeControls = 1;
    v6->_allowsEnteringFullScreen = 1;
    *&v6->_startRightwardContentTransitionButtonEnabled = 257;
    v6->_volumeControlsCanShowSlider = 1;
    *&v6->_forcePlaybackControlsHidden = 16842752;
    *&v6->_hasBegunObservingPotentiallyUnimplementedPlayerControllerProperties = 0;
    v6->_loadingIndicatorTimerDelay = 1.0;
    v6->_canIncludePlaybackControlsWhenInline = [controllerCopy canIncludePlaybackControlsWhenInline];
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    globallyUniqueString = [processInfo globallyUniqueString];
    uniqueIdentifer = v6->_uniqueIdentifer;
    v6->_uniqueIdentifer = globallyUniqueString;

    v12 = [[AVObservationController alloc] initWithOwner:v6];
    observationController = v6->_observationController;
    v6->_observationController = v12;

    v14 = [[AVObservationController alloc] initWithOwner:v6];
    playerControllerObservationController = v6->_playerControllerObservationController;
    v6->_playerControllerObservationController = v14;

    v16 = objc_alloc_init(AVMobilePlaybackRateMenuController);
    playbackRateMenuController = v6->_playbackRateMenuController;
    v6->_playbackRateMenuController = v16;

    [(AVPlaybackControlsController *)v6 _handlePhotosensitiveRegions];
    v18 = _AVLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v22 = "[AVPlaybackControlsController initWithPlayerViewController:]";
      v23 = 1024;
      v24 = 222;
      _os_log_impl(&dword_18B49C000, v18, OS_LOG_TYPE_DEFAULT, "%s %d", buf, 0x12u);
    }
  }

  return v6;
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