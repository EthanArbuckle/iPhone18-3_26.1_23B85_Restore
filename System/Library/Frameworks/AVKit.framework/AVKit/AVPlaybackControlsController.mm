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
- (AVPlaybackControlsController)initWithPlayerViewController:(id)a3;
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
- (void)_handlePhotosensitiveRegions;
- (void)_hideContextMenusIfPresented;
- (void)_observeBoolForKeyPath:(id)a3 usingKeyValueObservationController:(id)a4 observationHandler:(id)a5;
- (void)_seekByTimeInterval:(double)a3 toleranceBefore:(double)a4 toleranceAfter:(double)a5;
- (void)_showOrHideDisplayModeControls;
- (void)_startObservingForPlaybackViewUpdates;
- (void)_startObservingPlayerControllerProperties;
- (void)_startObservingPotentiallyUnimplementedPlayerControllerProperties;
- (void)_updateContainerInclusion;
- (void)_updateControlInclusion;
- (void)_updateHasPlaybackBegunSincePlayerControllerBecameReadyToPlay:(BOOL)a3 playing:(BOOL)a4 userDidEndTappingProminentPlayButton:(BOOL)a5;
- (void)_updateOrCreateTimeResolverIfNeeded;
- (void)_updatePhotosensitivityRegions;
- (void)_updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:(BOOL)a3;
- (void)_updatePlaybackControlsVisibleAndObservingUpdates;
- (void)_updatePlaybackSpeedControlInclusion;
- (void)_updateRouteDetectionEnabled;
- (void)_updateScrubberAndTimeLabels;
- (void)_updateSkipButtonsEnableLongPress;
- (void)_updateTransportBarCustomMenuItemsIfNeeded;
- (void)_updateVideoGravityButtonType;
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
- (void)playerViewControllerContentViewDidChangeVideoGravity:(id)a3;
- (void)playerViewControllerContentViewDidLayoutSubviews:(id)a3;
- (void)playerViewControllerContentViewDidMoveToSuperviewOrWindow:(id)a3;
- (void)playerViewControllerContentViewDidUpdateScrollingStatus:(id)a3;
- (void)playerViewControllerContentViewPlaybackContentContainerViewChanged:(id)a3;
- (void)prominentPlayButtonTouchUpInside:(id)a3;
- (void)scrubToTime:(double)a3 resolution:(double)a4;
- (void)setAllowsEnteringFullScreen:(BOOL)a3;
- (void)setCanIncludePlaybackControlsWhenInline:(BOOL)a3;
- (void)setCanIncludeVideoGravityButton:(BOOL)a3;
- (void)setCoveringWindow:(BOOL)a3;
- (void)setCustomControlItems:(id)a3;
- (void)setForcePlaybackControlsHidden:(BOOL)a3;
- (void)setHasCustomPlaybackControls:(BOOL)a3;
- (void)setPictureInPictureActive:(BOOL)a3;
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
- (void)setShowsTimecodes:(BOOL)a3;
- (void)setShowsVideoGravityButton:(BOOL)a3;
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
  v31 = self;
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
          v12 = v11;
          v13 = [v12 title];
          v14 = [p_info + 421 buttonWithAccessibilityIdentifier:v13 isFirstGeneration:1];

          v15 = [v12 image];

          if (v15)
          {
            v16 = [v12 image];
            [v14 setImage:v16 forState:0];
          }

          v17 = [v12 title];

          if (v17)
          {
            v18 = [v12 title];
            [v14 setTitle:v18 forState:0];
          }

          [v14 addAction:v12 forControlEvents:0x2000];
          v19 = [v12 identifier];
          [v14 setMenuElementIdentifier:v19];
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
          v28 = [v21 image];
          [v14 setImage:v28 forState:0];

          [v14 setMenu:v21];
          [v14 setShowsMenuAsPrimaryAction:1];
          v12 = [v21 identifier];

          [v14 setMenuElementIdentifier:v12];
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

  v29 = [(AVPlaybackControlsController *)v31 playbackControlsView];
  v30 = [v29 transportControlsView];
  [v30 setCustomMenuItemsViews:v33];
}

- (void)_updateRouteDetectionEnabled
{
  v3 = [(AVPlaybackControlsController *)self routeDetectorCoordinator];
  [v3 setRouteDetectionEnabled:{-[AVPlaybackControlsController _wantsRouteDetectionEnabled](self, "_wantsRouteDetectionEnabled")}];
}

- (void)_updateHasPlaybackBegunSincePlayerControllerBecameReadyToPlay:(BOOL)a3 playing:(BOOL)a4 userDidEndTappingProminentPlayButton:(BOOL)a5
{
  if (a4 || a5 || !a3)
  {
    [(AVPlaybackControlsController *)self setHasPlaybackBegunSincePlayerControllerBecameReadyToPlay:a3];
  }
}

- (void)_updateVideoGravityButtonType
{
  if (![(AVPlaybackControlsController *)self showsVideoGravityButton])
  {
    goto LABEL_9;
  }

  v3 = [(AVPlaybackControlsController *)self playerController];
  if (![v3 hasVideo] || !-[AVPlaybackControlsController isFullScreen](self, "isFullScreen"))
  {
    goto LABEL_6;
  }

  v4 = [(AVPlaybackControlsController *)self playerController];
  if ([v4 isPlayingOnExternalScreen])
  {

    goto LABEL_6;
  }

  v6 = [(AVPlaybackControlsController *)self playerViewController];
  v7 = [v6 contentTransitioningDelegate];

  if (!v7)
  {
    v10 = [(AVPlaybackControlsController *)self playerController];
    [v10 contentDimensions];
    v12 = v11;
    v14 = v13;

    if ([(AVPlaybackControlsController *)self hasBecomeReadyToPlay])
    {
      v17 = ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v14 >= 0.0 || (*&v14 - 1) < 0xFFFFFFFFFFFFFLL;
      v19 = (v12 < 0.0 || ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&v12 - 1) > 0xFFFFFFFFFFFFELL;
      v5 = 1;
      if (!v19 && v17)
      {
        v20 = [(AVPlaybackControlsController *)self playerViewController];
        v3 = [v20 contentView];

        [v3 bounds];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v29 = v12 / v14;
        [v3 frame];
        UIRectGetCenter();
        v31 = v30;
        v33 = v32;
        v34 = [v3 cacheLargestInscribedRect];
        [v34 getLargestInscribableRectForView:v3 withCenter:v31 aspectRatio:{v33, v29}];
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
    v5 = [(AVPlaybackControlsController *)self playerController];
    v9 = [v5 photosensitivityRegions];
  }

  else
  {
    v9 = 0;
  }

  v6 = [(AVPlaybackControlsController *)self playbackControlsView];
  v7 = [v6 transportControlsView];
  v8 = [v7 scrubber];
  [v8 setPhotosensitiveDisplayTimes:v9];
}

- (void)_handlePhotosensitiveRegions
{
  v3 = [(AVPlaybackControlsController *)self playerController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v6 = [(AVPlaybackControlsController *)self playerControllerObservationController];
    v5 = [v6 startObserving:self keyPath:@"playerController.photosensitivityRegions" includeInitialValue:1 observationHandler:&__block_literal_global_405];
  }
}

- (void)_updateScrubberAndTimeLabels
{
  v3 = [(AVPlaybackControlsController *)self playbackControlsView];
  v86 = [v3 transportControlsView];

  if (![(AVPlaybackControlsController *)self needsTimeResolver]|| ([(AVPlaybackControlsController *)self timeResolver], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v17 = [(AVPlaybackControlsController *)self timeResolver];

    v15 = 0;
    v16 = 0;
    if (v17)
    {
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  [(AVPlaybackControlsController *)self maximumTime];
  v6 = v5;
  [(AVPlaybackControlsController *)self minimumTime];
  v8 = v6 - v7;
  v9 = [(AVPlaybackControlsController *)self elapsedTimeFormatter];
  [v9 setFormatTemplate:v8];

  v10 = [(AVPlaybackControlsController *)self remainingTimeFormatter];
  [v10 setFormatTemplate:v8];

  if ([v86 liveStreamingControlsIncludeScrubber])
  {
    v11 = [(AVPlaybackControlsController *)self elapsedTimeFormatter];
    [(AVPlaybackControlsController *)self minimumTime];
    v13 = v12;
    [(AVPlaybackControlsController *)self maximumTime];
    v15 = [v11 stringFromSeconds:v13 - v14];
    v16 = &stru_1EFED57D8;
  }

  else
  {
    if (-[AVPlaybackControlsController showsTimecodes](self, "showsTimecodes") && (-[AVPlaybackControlsController playerController](self, "playerController"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 hasReadableTimecodes], v18, v19))
    {
      v20 = [(AVPlaybackControlsController *)self playerController];
      v15 = [v20 timecodeForCurrentTime];

      v11 = [(AVPlaybackControlsController *)self playerController];
      v21 = [v11 maxTimecode];
    }

    else
    {
      v22 = [(AVPlaybackControlsController *)self elapsedTimeFormatter];
      [(AVPlaybackControlsController *)self targetTime];
      v15 = [v22 stringFromSeconds:?];

      v11 = [(AVPlaybackControlsController *)self remainingTimeFormatter];
      [(AVPlaybackControlsController *)self maximumTime];
      v24 = v23;
      [(AVPlaybackControlsController *)self targetTime];
      v21 = [v11 stringFromSeconds:v24 - v25];
    }

    v16 = v21;
  }

  [(AVPlaybackControlsController *)self minimumTime];
  [(AVPlaybackControlsController *)self minimumTime];
  if (fabs(v26) == INFINITY || ([(AVPlaybackControlsController *)self maximumTime], [(AVPlaybackControlsController *)self maximumTime], fabs(v27) == INFINITY) || ([(AVPlaybackControlsController *)self currentTime], [(AVPlaybackControlsController *)self currentTime], fabs(v28) == INFINITY) || ([(AVPlaybackControlsController *)self maximumTime], v30 = v29, [(AVPlaybackControlsController *)self minimumTime], v30 <= v31) || ([(AVPlaybackControlsController *)self currentTime], v33 = v32, [(AVPlaybackControlsController *)self minimumTime], v33 < v34) && ([(AVPlaybackControlsController *)self currentTime], v36 = v35, [(AVPlaybackControlsController *)self maximumTime], v36 > v37))
  {
LABEL_18:
    v38 = [(AVPlaybackControlsController *)self elapsedTimeFormatter];
    v39 = [v38 stringFromSeconds:NAN];

    v40 = [(AVPlaybackControlsController *)self remainingTimeFormatter];
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
    goto LABEL_19;
  }

  [(AVPlaybackControlsController *)self minimumTime];
  v67 = v66;
  [(AVPlaybackControlsController *)self maximumTime];
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
    v74 = [(AVPlaybackControlsController *)self playerController];
    if ([v74 isPlayingOnExternalScreen])
    {
      v75 = [v86 scrubber];
      [v75 timeIntervalSinceTrackingEnded];
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
    v80 = [(AVPlaybackControlsController *)self playerController];
    if ([v80 hasSeekableLiveStreamingContent])
    {
      v81 = [(AVPlaybackControlsController *)self playerController];
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

LABEL_19:

LABEL_20:
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

LABEL_26:
  v54 = [(AVPlaybackControlsController *)self playerController];
  v55 = objc_opt_respondsToSelector();
  if (v55)
  {
    v56 = [(AVPlaybackControlsController *)self playerController];
    v57 = [v56 interstitialController];
    v58 = [v57 currentInterstitialTimeRange];

    if (v58)
    {
      v55 = 0;
      goto LABEL_35;
    }

    v54 = [(AVPlaybackControlsController *)self playerController];
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
        goto LABEL_35;
      }

      v54 = [v86 scrubber];
      v59 = [(AVPlaybackControlsController *)self playerController];
      v60 = [v59 player];
      v61 = [v60 currentItem];
      v64 = [v61 interstitialTimeRanges];
      [v54 setInterstitialDisplayTimes:v64];
    }
  }

LABEL_35:
  v65 = [v86 scrubber];
  [v65 setShowsTimelineMarkers:v55 & 1];
}

- (void)_updatePlaybackSpeedControlInclusion
{
  v7 = [(AVPlaybackControlsController *)self playerController];
  if ([v7 hasLiveStreamingContent])
  {
    v3 = [v7 hasSeekableLiveStreamingContent];
  }

  else
  {
    v3 = 1;
  }

  v4 = [(AVPlaybackControlsController *)self playbackSpeedCollection];
  if (v4)
  {
    v5 = +[AVKitGlobalSettings shared];
    if ([v5 playbackSpeedControlEnabled])
    {
      v6 = ([v7 isPlayingOnMatchPointDevice] ^ 1) & v3;
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
    v26 = [(AVPlaybackControlsController *)self timeResolver];
    [v26 setPlayerController:0];

    [(AVPlaybackControlsController *)self setTimeResolver:0];
    return;
  }

  v3 = [(AVPlaybackControlsController *)self playbackControlsView];
  v4 = [v3 transportControlsView];
  v5 = [v4 scrubber];
  v6 = 1.0;
  if (([v5 isTracking] & 1) == 0)
  {
    v7 = [(AVPlaybackControlsController *)self playbackControlsView];
    v8 = [v7 volumeSlider];
    v9 = [v8 isTracking];

    if (v9)
    {
      goto LABEL_6;
    }

    v3 = [(AVPlaybackControlsController *)self playbackControlsView];
    v4 = [v3 transportControlsView];
    v5 = [v4 scrubber];
    [v5 frame];
    Width = CGRectGetWidth(v37);
    v11 = [(AVPlaybackControlsController *)self playbackControlsView];
    v12 = [v11 traitCollection];
    [v12 displayScale];
    v6 = Width * v13;
  }

LABEL_6:
  v14 = 1.0;
  if ([(AVPlaybackControlsController *)self showsTimecodes])
  {
    v15 = [(AVPlaybackControlsController *)self playerController];
    v16 = [v15 hasReadableTimecodes];

    if (v16)
    {
      v17 = [(AVPlaybackControlsController *)self playerController];
      [v17 timecodeObservationInterval];
      v14 = v18;
    }
  }

  v19 = [(AVPlaybackControlsController *)self timeResolver];
  v20 = [v19 playerController];
  v21 = [(AVPlaybackControlsController *)self playerController];

  if (v20 != v21)
  {
    v22 = objc_alloc_init(AVPlayerControllerTimeResolver);
    v23 = [(AVPlaybackControlsController *)self playerController];
    [(AVPlayerControllerTimeResolver *)v22 setPlayerController:v23];

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

  v27 = [(AVPlaybackControlsController *)self timeResolver];
  [v27 resolution];
  if (v28 == v6)
  {
    v29 = [(AVPlaybackControlsController *)self timeResolver];
    [v29 interval];
    v31 = vabdd_f64(v30, v14);

    if (v31 < 2.22044605e-16)
    {
      return;
    }
  }

  else
  {
  }

  v32 = [(AVPlaybackControlsController *)self timeResolver];
  [v32 setResolution:v6];

  v33 = [(AVPlaybackControlsController *)self timeResolver];
  [v33 setInterval:v14];
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
  v3 = [(AVPlaybackControlsController *)self playbackControlsView];

  if (v3)
  {
    v4 = [(AVPlaybackControlsController *)self showsProminentPlayButton];
    v5 = [(AVPlaybackControlsController *)self playbackControlsIncludeTransportControls];
    v6 = [(AVPlaybackControlsController *)self playbackControlsIncludeDisplayModeControls];
    v7 = [(AVPlaybackControlsController *)self playbackControlsIncludeVolumeControls];
    if (![(AVPlaybackControlsController *)self isFullScreen]&& [(AVPlaybackControlsController *)self showsMinimalPlaybackControlsWhenEmbeddedInline])
    {
      if (v4)
      {
        v8 = 2;
        goto LABEL_25;
      }

      v8 = 0;
LABEL_20:
      if (![(AVPlaybackControlsController *)self shouldShowVolumeControlInTransportBar])
      {
        v9 = [(AVPlaybackControlsController *)self playerController];
        if ([v9 hasEnabledAudio])
        {
        }

        else
        {
          v10 = [(AVPlaybackControlsController *)self showsVolumeControlsForContentWithNoAudio];

          if (!v10)
          {
            goto LABEL_25;
          }
        }

        v8 |= 0x10uLL;
      }

LABEL_25:
      v11 = [(AVPlaybackControlsController *)self playbackControlsView];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __57__AVPlaybackControlsController__updateContainerInclusion__block_invoke;
      v12[3] = &unk_1E720A090;
      v12[4] = self;
      [v11 setIncludedContainers:v8 animations:v12];

      return;
    }

    if (v4)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    if (v5)
    {
      if (v6)
      {
        v8 |= 0xCuLL;
        if (!v7)
        {
          goto LABEL_25;
        }

        goto LABEL_20;
      }

      v8 |= 4uLL;
    }

    else if (v6)
    {
      v8 |= 8uLL;
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_20;
    }

    if (!v7)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }
}

- (void)_updateControlInclusion
{
  v3 = [(AVPlaybackControlsController *)self playbackControlsView];
  v4 = [v3 volumeSlider];
  -[AVPlaybackControlsController _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:](self, "_updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:", [v4 isIncluded]);

  [(AVPlaybackControlsController *)self _showOrHideDisplayModeControls];
}

- (void)_updateSkipButtonsEnableLongPress
{
  v3 = [(AVPlaybackControlsController *)self playerController];

  if (v3)
  {
    v4 = [(AVPlaybackControlsController *)self playbackControlsView];
    v5 = [v4 skipBackButton];
    v6 = [(AVPlaybackControlsController *)self playerController];
    [v5 setTreatsForcePressAsLongPress:(objc_opt_respondsToSelector() & 1) == 0];

    v9 = [(AVPlaybackControlsController *)self playbackControlsView];
    v7 = [v9 skipForwardButton];
    v8 = [(AVPlaybackControlsController *)self playerController];
    [v7 setTreatsForcePressAsLongPress:(objc_opt_respondsToSelector() & 1) == 0];
  }
}

- (BOOL)_wantsRouteDetectionEnabled
{
  v3 = [(AVPlaybackControlsController *)self playerViewController];
  if ([v3 isBeingPresented])
  {
  }

  else
  {
    v4 = [(AVPlaybackControlsController *)self playerViewController];
    v5 = [v4 fullScreenViewController];
    v6 = [v5 isBeingPresented];

    if ((v6 & 1) == 0)
    {
      v7 = [(AVPlaybackControlsController *)self playbackControlsView];
      v8 = [v7 avkit_isInAWindowAndVisible];

      if (!v8)
      {
        LOBYTE(v9) = 0;
        return v9;
      }
    }
  }

  v9 = [(AVPlaybackControlsController *)self showsPlaybackControls];
  if (v9)
  {
    if ([(AVPlaybackControlsController *)self isFullScreen])
    {
      LOBYTE(v9) = 1;
    }

    else
    {

      LOBYTE(v9) = [(AVPlaybackControlsController *)self canIncludePlaybackControlsWhenInline];
    }
  }

  return v9;
}

- (void)_startObservingPotentiallyUnimplementedPlayerControllerProperties
{
  if (![(AVPlaybackControlsController *)self hasBegunObservingPotentiallyUnimplementedPlayerControllerProperties])
  {
    [(AVPlaybackControlsController *)self setHasBegunObservingPotentiallyUnimplementedPlayerControllerProperties:1];
    objc_initWeak(&location, self);
    v3 = [(AVPlaybackControlsController *)self playerController];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [(AVPlaybackControlsController *)self playerControllerObservationController];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __97__AVPlaybackControlsController__startObservingPotentiallyUnimplementedPlayerControllerProperties__block_invoke;
      v24[3] = &unk_1E7209A88;
      objc_copyWeak(&v25, &location);
      [(AVPlaybackControlsController *)self _observeBoolForKeyPath:@"playerController.hasSeekableLiveStreamingContent" usingKeyValueObservationController:v5 observationHandler:v24];

      objc_destroyWeak(&v25);
    }

    v6 = [(AVPlaybackControlsController *)self playerController];
    if (objc_opt_respondsToSelector())
    {
      v7 = [(AVPlaybackControlsController *)self playerController];
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        v9 = [(AVPlaybackControlsController *)self playerControllerObservationController];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __97__AVPlaybackControlsController__startObservingPotentiallyUnimplementedPlayerControllerProperties__block_invoke_2;
        v22[3] = &unk_1E7209A88;
        objc_copyWeak(&v23, &location);
        [(AVPlaybackControlsController *)self _observeBoolForKeyPath:@"playerController.seeking" usingKeyValueObservationController:v9 observationHandler:v22];

        v10 = [(AVPlaybackControlsController *)self playerControllerObservationController];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __97__AVPlaybackControlsController__startObservingPotentiallyUnimplementedPlayerControllerProperties__block_invoke_3;
        v20[3] = &unk_1E7209A88;
        objc_copyWeak(&v21, &location);
        [(AVPlaybackControlsController *)self _observeBoolForKeyPath:@"playerController.scrubbing" usingKeyValueObservationController:v10 observationHandler:v20];

        objc_destroyWeak(&v21);
        objc_destroyWeak(&v23);
      }
    }

    else
    {
    }

    v11 = [(AVPlaybackControlsController *)self playerController];
    v12 = objc_opt_respondsToSelector();

    v13 = [(AVPlaybackControlsController *)self playerControllerObservationController];
    if (v12)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __97__AVPlaybackControlsController__startObservingPotentiallyUnimplementedPlayerControllerProperties__block_invoke_4;
      v18[3] = &unk_1E7208C38;
      v14 = &v19;
      objc_copyWeak(&v19, &location);
      v15 = [v13 startObserving:self keyPath:@"playerController.timeControlStatus" includeInitialValue:1 observationHandler:v18];
    }

    else
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __97__AVPlaybackControlsController__startObservingPotentiallyUnimplementedPlayerControllerProperties__block_invoke_5;
      v16[3] = &unk_1E7209A88;
      v14 = &v17;
      objc_copyWeak(&v17, &location);
      [(AVPlaybackControlsController *)self _observeBoolForKeyPath:@"playerController.playing" usingKeyValueObservationController:v13 observationHandler:v16];
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
  v3 = [(AVPlaybackControlsController *)self playbackControlsView];

  if (!v3)
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

  v5 = [(AVPlaybackControlsController *)self playbackControlsView];
  v6 = [(AVPlaybackControlsController *)self playbackControlsView];
  objc_initWeak(location, v6);

  objc_initWeak(&from, self);
  [(AVPlaybackControlsController *)self setResumingUpdates:1];
  v7 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke;
  v82[3] = &unk_1E7209A88;
  objc_copyWeak(&v83, location);
  [(AVPlaybackControlsController *)self _observeBoolForKeyPath:@"prominentPlayButtonCanShowPauseGlyph" usingKeyValueObservationController:v7 observationHandler:v82];

  v8 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_2;
  v80[3] = &unk_1E7209A88;
  objc_copyWeak(&v81, &from);
  [(AVPlaybackControlsController *)self _observeBoolForKeyPath:@"showsProminentPlayButton" usingKeyValueObservationController:v8 observationHandler:v80];

  v9 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_3;
  v77[3] = &unk_1E7208D40;
  objc_copyWeak(&v78, location);
  objc_copyWeak(&v79, &from);
  [(AVPlaybackControlsController *)self _observeBoolForKeyPath:@"playButtonsShowPauseGlyph" usingKeyValueObservationController:v9 observationHandler:v77];

  v10 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_4;
  v74[3] = &unk_1E7208D40;
  objc_copyWeak(&v75, &from);
  objc_copyWeak(&v76, location);
  [(AVPlaybackControlsController *)self _observeBoolForKeyPath:@"prefersMuted" usingKeyValueObservationController:v10 observationHandler:v74];

  v11 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_7;
  v71[3] = &unk_1E7208D40;
  objc_copyWeak(&v72, &from);
  objc_copyWeak(&v73, location);
  [(AVPlaybackControlsController *)self _observeBoolForKeyPath:@"fullScreen" usingKeyValueObservationController:v11 observationHandler:v71];

  v12 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_8;
  v68[3] = &unk_1E7208D40;
  objc_copyWeak(&v69, location);
  objc_copyWeak(&v70, &from);
  [(AVPlaybackControlsController *)self _observeBoolForKeyPath:@"hasSeekableLiveStreamingContent" usingKeyValueObservationController:v12 observationHandler:v68];

  v13 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_9;
  v65[3] = &unk_1E7208D40;
  objc_copyWeak(&v66, location);
  objc_copyWeak(&v67, &from);
  [(AVPlaybackControlsController *)self _observeBoolForKeyPath:@"showsLoadingIndicator" usingKeyValueObservationController:v13 observationHandler:v65];

  v97[0] = @"playerController.contentDimensions";
  v97[1] = @"fullScreen";
  v97[2] = @"playerController.playingOnExternalScreen";
  v97[3] = @"playbackViewFrame";
  v97[4] = @"playerController.hasVideo";
  v97[5] = @"hasBecomeReadyToPlay";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:6];
  v15 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  v16 = [v15 startObserving:self keyPaths:v14 includeInitialValue:0 observationHandler:&__block_literal_global_299];

  v17 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __69__AVPlaybackControlsController__startObservingForPlaybackViewUpdates__block_invoke_11;
  v63[3] = &unk_1E7209A88;
  objc_copyWeak(&v64, &from);
  [(AVPlaybackControlsController *)self _observeBoolForKeyPath:@"canShowLoadingIndicator" usingKeyValueObservationController:v17 observationHandler:v63];

  [(AVPlaybackControlsController *)self _updateVideoGravityButtonType];
  if (v5)
  {
    v18 = [v5 scrubber];
    v96[0] = v18;
    v19 = [v5 skipBackButton];
    v96[1] = v19;
    v20 = [v5 skipForwardButton];
    v96[2] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:3];
    v22 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
    [(AVPlaybackControlsController *)self _bindEnabledStateOfControls:v21 toKeyPath:@"seekingEnabled" usingObservationController:v22];

    v23 = [v5 startLeftwardContentTransitionButton];
    v95 = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v95 count:1];
    v25 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
    [(AVPlaybackControlsController *)self _bindEnabledStateOfControls:v24 toKeyPath:@"startLeftwardContentTransitionButtonEnabled" usingObservationController:v25];

    v26 = [v5 startRightwardContentTransitionButton];
    v94 = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v94 count:1];
    v28 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
    [(AVPlaybackControlsController *)self _bindEnabledStateOfControls:v27 toKeyPath:@"startRightwardContentTransitionButtonEnabled" usingObservationController:v28];

    v29 = [v5 scrubber];
    v93 = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v93 count:1];
    v31 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
    [(AVPlaybackControlsController *)self _bindEnabledStateOfControls:v30 toKeyPath:@"isSeekingEnabled" usingObservationController:v31];

    v32 = [v5 transportControlsView];
    v92 = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v92 count:1];
    [(AVPlaybackControlsController *)self _bindInclusionOfControlItems:v33 toKeyPath:@"showsTransportControls"];

    v34 = [v5 skipBackButton];
    v91[0] = v34;
    v35 = [v5 skipForwardButton];
    v91[1] = v35;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:2];
    [(AVPlaybackControlsController *)self _bindInclusionOfControlItems:v36 toKeyPath:@"showsSkipButtons"];

    v37 = [v5 startLeftwardContentTransitionButton];
    v90[0] = v37;
    v38 = [v5 startRightwardContentTransitionButton];
    v90[1] = v38;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:2];
    [(AVPlaybackControlsController *)self _bindInclusionOfControlItems:v39 toKeyPath:@"showsStartContentTransitionButtons"];

    v40 = [v5 routePickerView];
    v89 = v40;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v89 count:1];
    [(AVPlaybackControlsController *)self _bindInclusionOfControlItems:v41 toKeyPath:@"showsRoutePickerView"];

    v42 = [v5 mediaSelectionButton];
    v88 = v42;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
    [(AVPlaybackControlsController *)self _bindInclusionOfControlItems:v43 toKeyPath:@"showsMediaSelectionButton"];

    v44 = [v5 playbackSpeedButton];
    v87 = v44;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v87 count:1];
    [(AVPlaybackControlsController *)self _bindInclusionOfControlItems:v45 toKeyPath:@"showsPlaybackSpeedButton"];
  }

  v46 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  v86[0] = @"minimumTime";
  v86[1] = @"maximumTime";
  v86[2] = @"currentTime";
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:3];
  v48 = [v46 startObserving:self keyPaths:v47 includeInitialValue:1 observationHandler:&__block_literal_global_340];

  v49 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  [v49 startObservingNotificationForName:*MEMORY[0x1E69DE828] object:0 notificationCenter:0 observationHandler:&__block_literal_global_342];

  v50 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  [v50 startObservingNotificationForName:*MEMORY[0x1E69DE7D0] object:0 notificationCenter:0 observationHandler:&__block_literal_global_344_22048];

  v51 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  v52 = [(AVPlaybackControlsController *)self playbackRateMenuController];
  v53 = [v51 startObserving:v52 keyPath:@"menu" observationHandler:&__block_literal_global_350];

  v54 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  v55 = [v54 startObserving:self keyPath:@"showsMediaSelectionButton" observationHandler:&__block_literal_global_352];

  v56 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  v57 = [(AVPlaybackControlsController *)self playerController];
  v85[0] = @"audioMediaSelectionOptions";
  v85[1] = @"legibleMediaSelectionOptions";
  v85[2] = @"currentAudioMediaSelectionOption";
  v85[3] = @"currentLegibleMediaSelectionOption";
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:4];
  v59 = [v56 startObserving:v57 keyPaths:v58 observationHandler:&__block_literal_global_366];

  v60 = [(AVPlaybackControlsController *)self volumeController];
  [v60 volume];
  [(AVPlaybackControlsController *)self _updateVolumeSliderValueWithSystemVolume:0 animated:?];

  v61 = [(AVPlaybackControlsController *)self playbackControlsView];
  [v61 setHidden:0];

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
  v10 = [(AVPlaybackControlsController *)self playbackControlsView];
  if ([(AVPlaybackControlsController *)self showsPlaybackControls]&& ![(AVPlaybackControlsController *)self playerViewControllerIsBeingTransitionedWithResizing]&& ![(AVPlaybackControlsController *)self forcePlaybackControlsHidden]&& ([(AVPlaybackControlsController *)self isFullScreen]|| [(AVPlaybackControlsController *)self canIncludePlaybackControlsWhenInline]))
  {
    [(AVPlaybackControlsController *)self _startObservingPlayerControllerProperties];
    if (!v10)
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
    if (!v10)
    {
      goto LABEL_11;
    }

    v3 = 0;
  }

  v4 = [(AVPlaybackControlsController *)self playbackControlsObservationController];

  if (v4)
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
      [v10 setHidden:0];
      [(AVPlaybackControlsController *)self _updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:[(AVPlaybackControlsController *)self showsPlaybackControls]];
      if (![(AVPlaybackControlsController *)self isHidingItemsForTransition])
      {
        goto LABEL_28;
      }

      if (![(AVPlaybackControlsController *)self isFullScreen]|| [(AVPlaybackControlsController *)self timeControlStatus]!= 2)
      {
        goto LABEL_26;
      }

      v6 = [(AVPlaybackControlsController *)self playerController];
      if (([v6 isPlayingOnExternalScreen] & 1) == 0)
      {
        v7 = [(AVPlaybackControlsController *)self playerViewController];
        if (![v7 isAudioOnlyContent])
        {
          v9 = [(AVPlaybackControlsController *)self canHidePlaybackControls];

          if (v9)
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
  if (a1)
  {
    v2 = [a1 playerControllerObservationController];
    [v2 stopAllObservation];

    v3 = [[AVObservationController alloc] initWithOwner:a1];
    [a1 setPlayerControllerObservationController:v3];

    [a1 _handlePhotosensitiveRegions];
    objc_initWeak(&location, a1);
    v4 = [a1 playerControllerObservationController];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __73__AVPlaybackControlsController__startObservingPlayerControllerProperties__block_invoke;
    v42[3] = &unk_1E7208C38;
    objc_copyWeak(&v43, &location);
    v5 = [v4 startObserving:a1 keyPath:@"playerController.status" includeInitialValue:1 observationHandler:v42];

    v6 = [a1 playbackControlsView];
    objc_initWeak(&from, v6);

    v7 = [a1 playbackControlsView];
    if ([a1 showsPlaybackControls] && (objc_msgSend(a1, "playerViewControllerIsBeingTransitionedWithResizing") & 1) == 0 && (objc_msgSend(a1, "forcePlaybackControlsHidden") & 1) == 0 && ((objc_msgSend(a1, "isFullScreen") & 1) != 0 || (objc_msgSend(a1, "canIncludePlaybackControlsWhenInline") & 1) != 0))
    {
      if (!v7)
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
      v8 = [a1 hasCustomPlaybackControls];
      if (v7)
      {
        v9 = v8;
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

    v10 = [a1 playerControllerObservationController];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __73__AVPlaybackControlsController__startObservingPlayerControllerProperties__block_invoke_2;
    v39[3] = &unk_1E7209A88;
    objc_copyWeak(&v40, &location);
    [a1 _observeBoolForKeyPath:@"playerController.muted" usingKeyValueObservationController:v10 observationHandler:v39];

    v11 = [a1 playerControllerObservationController];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __73__AVPlaybackControlsController__startObservingPlayerControllerProperties__block_invoke_3;
    v37[3] = &unk_1E7209A88;
    objc_copyWeak(&v38, &location);
    [a1 _observeBoolForKeyPath:@"playerController.hasEnabledAudio" usingKeyValueObservationController:v11 observationHandler:v37];

    v12 = [a1 playerController];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [a1 playerControllerObservationController];
      v15 = [v14 startObserving:a1 keyPath:@"playerController.currentAssetIfReady" includeInitialValue:1 observationHandler:&__block_literal_global_252];
    }

    v16 = [a1 playerControllerObservationController];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __73__AVPlaybackControlsController__startObservingPlayerControllerProperties__block_invoke_5;
    v35[3] = &unk_1E7209A88;
    objc_copyWeak(&v36, &location);
    [a1 _observeBoolForKeyPath:@"playerController.playingOnExternalScreen" usingKeyValueObservationController:v16 observationHandler:v35];

    v17 = [a1 playerControllerObservationController];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __73__AVPlaybackControlsController__startObservingPlayerControllerProperties__block_invoke_6;
    v32[3] = &unk_1E7208D40;
    objc_copyWeak(&v33, &from);
    objc_copyWeak(&v34, &location);
    [a1 _observeBoolForKeyPath:@"playerController.hasLiveStreamingContent" usingKeyValueObservationController:v17 observationHandler:v32];

    v18 = [a1 playerControllerObservationController];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __73__AVPlaybackControlsController__startObservingPlayerControllerProperties__block_invoke_7;
    v30[3] = &unk_1E7209A88;
    objc_copyWeak(&v31, &location);
    [a1 _observeBoolForKeyPath:@"playerController.playingOnMatchPointDevice" usingKeyValueObservationController:v18 observationHandler:v30];

    v19 = [a1 playerControllerObservationController];
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __73__AVPlaybackControlsController__startObservingPlayerControllerProperties__block_invoke_8;
    v27 = &unk_1E7208D68;
    objc_copyWeak(&v28, &from);
    objc_copyWeak(&v29, &location);
    v20 = [v19 startObserving:a1 keyPath:@"playerController.loadedTimeRanges" includeInitialValue:1 observationHandler:&v24];

    v21 = [v7 standardPlayPauseButton];
    v45[0] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
    v23 = [a1 playerControllerObservationController];
    [a1 _bindEnabledStateOfControls:v22 toKeyPath:@"playerController.canTogglePlayback" usingObservationController:v23];

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

- (void)endHidingItemsForTransitionAndShowImmediately:(BOOL)a3
{
  v3 = a3;
  [(AVPlaybackControlsController *)self setHidingItemsForTransition:0];
  [(AVPlaybackControlsController *)self showPlaybackControls:v3 immediately:1];
  v5 = [(AVPlaybackControlsController *)self playerController];
  v6 = [v5 timeControlStatus];

  if (v6 == 2 && v3)
  {

    [(AVPlaybackControlsController *)self flashPlaybackControlsWithDuration:3.0];
  }
}

- (void)_hideContextMenusIfPresented
{
  v4 = [(AVPlaybackControlsController *)self playbackControlsView];
  v2 = [v4 controlOverflowButton];
  v3 = [v2 contextMenuInteraction];
  [v3 dismissMenu];
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
    v3 = [(AVPlaybackControlsController *)self playerController];
    v4 = [v3 isPlaying];

    if (v4)
    {

      [(AVPlaybackControlsController *)self _autoHideControlsAfterDelay:3.0];
    }
  }
}

- (void)beginUserInteraction
{
  [(AVPlaybackControlsController *)self setUserInteractingCount:[(AVPlaybackControlsController *)self userInteractingCount]+ 1];
  v3 = [(AVPlaybackControlsController *)self playbackControlsVisibilityTimer];
  [v3 invalidate];
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

- (void)setPopoverIsBeingPresented:(BOOL)a3
{
  if (self->_popoverIsBeingPresented != a3)
  {
    self->_popoverIsBeingPresented = a3;
    if (a3)
    {

      [(AVPlaybackControlsController *)self _updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:1];
    }

    else
    {
      v4 = [(AVPlaybackControlsController *)self playerController];
      v5 = [v4 isPlaying];

      if (v5)
      {

        [(AVPlaybackControlsController *)self flashPlaybackControlsWithDuration:3.0];
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
      v6 = [(AVPlaybackControlsController *)self playerController];
      v5 = [v6 isPlaying] ^ 1;
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

  v5 = [(AVPlaybackControlsController *)self playerController];
  if ([v5 isPlayingOnExternalScreen])
  {
    goto LABEL_7;
  }

  v3 = [(AVPlaybackControlsController *)self playerViewController];
  if ([v3 isAudioOnlyContent])
  {

LABEL_7:

    return;
  }

  v4 = [(AVPlaybackControlsController *)self canHidePlaybackControls];

  if (v4)
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

- (void)_autoHideControlsAfterDelay:(double)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[AVPlaybackControlsController _autoHideControlsAfterDelay:]";
    v13 = 2048;
    v14 = a3;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s delay: %f", buf, 0x16u);
  }

  v6 = [(AVPlaybackControlsController *)self playbackControlsVisibilityTimer];
  [v6 invalidate];

  objc_initWeak(buf, self);
  v7 = MEMORY[0x1E695DFF0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__AVPlaybackControlsController__autoHideControlsAfterDelay___block_invoke;
  v9[3] = &unk_1E7209DA8;
  objc_copyWeak(&v10, buf);
  v8 = [v7 scheduledTimerWithTimeInterval:0 repeats:v9 block:a3];
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

- (void)flashVolumeControlsWithDuration:(double)a3
{
  v4 = [(AVPlaybackControlsController *)self playbackControlsView];
  v5 = [v4 volumeControlsContainer];
  v6 = ([v5 isIncluded] & 1) != 0 || -[AVPlaybackControlsController _prefersVolumeSliderExpandedAutomatically](self, "_prefersVolumeSliderExpandedAutomatically");
  [(AVPlaybackControlsController *)self _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:v6];

  v7 = [(AVPlaybackControlsController *)self playbackControlsView];
  [v7 setShowsAudioControls:1];

  v8 = [(AVPlaybackControlsController *)self playerController];
  if ([v8 isPlaying])
  {
  }

  else
  {
    v9 = [(AVPlaybackControlsController *)self playbackControlsView];
    v10 = [v9 showsPlaybackControls];

    if (v10)
    {
      return;
    }
  }

  [(AVPlaybackControlsController *)self _autoHideControlsAfterDelay:2.0];
}

- (void)showPlaybackControls:(BOOL)a3 immediately:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v7 = [(AVPlaybackControlsController *)self playbackControlsVisibilityTimer];
  [v7 invalidate];

  v8 = _AVLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315906;
    v11 = "[AVPlaybackControlsController showPlaybackControls:immediately:]";
    v12 = 1024;
    v13 = v5;
    v14 = 1024;
    v15 = v4;
    v16 = 1024;
    v17 = [(AVPlaybackControlsController *)self isHidingItemsForTransition];
    _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s shouldShowPlaybackControls: %d {\n\tshowImmediately: %d\n\tisHidingItemsForTransition: %d}", &v10, 0x1Eu);
  }

  if (![(AVPlaybackControlsController *)self isHidingItemsForTransition])
  {
    [(AVPlaybackControlsController *)self setShowingPlaybackControls:v5];
    v9 = [(AVPlaybackControlsController *)self playbackControlsView];
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
    v9 = "[AVPlaybackControlsController flashPlaybackControlsWithDuration:]";
    v10 = 2048;
    v11 = a3;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s duration: %f", &v8, 0x16u);
  }

  if (![(AVPlaybackControlsController *)self isPictureInPictureActive])
  {
    v6 = [(AVPlaybackControlsController *)self playerController];
    if ([v6 isPlayingOnExternalScreen])
    {
    }

    else
    {
      v7 = [(AVPlaybackControlsController *)self showsPlaybackControls];

      if (v7)
      {
        [(AVPlaybackControlsController *)self showPlaybackControls:1 immediately:0];
        [(AVPlaybackControlsController *)self _autoHideControlsAfterDelay:a3];
      }
    }
  }
}

- (void)_updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:(BOOL)a3
{
  v3 = a3;
  v37 = *MEMORY[0x1E69E9840];
  v5 = [(AVPlaybackControlsController *)self playerController];
  v6 = [v5 isPlayingOnExternalScreen];

  v7 = [(AVPlaybackControlsController *)self playerViewController];
  v8 = [v7 isAudioOnlyContent];

  if (([(AVPlaybackControlsController *)self isUserInteracting]|| v3) && ![(AVPlaybackControlsController *)self isPictureInPictureActive])
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

  if (![(AVPlaybackControlsController *)self isUserInteracting]&& ![(AVPlaybackControlsController *)self isPopoverBeingPresented]&& ![(AVPlaybackControlsController *)self showsLoadingIndicator]&& ![(AVPlaybackControlsController *)self isPictureInPictureActive]&& !(v6 & 1 | ![(AVPlaybackControlsController *)self canHidePlaybackControls]| v8 & 1))
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
    v10 = [(AVPlaybackControlsController *)self playerController];
    if ([v10 isPlayingOnExternalScreen])
    {

      goto LABEL_21;
    }

    v11 = [(AVPlaybackControlsController *)self playerViewController];
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
  v13 = [(AVPlaybackControlsController *)self playbackControlsView];
  v14 = [v13 showsAudioControls];

  if ((v14 & 1) == 0)
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
    v22 = v3;
    v23 = 1024;
    v24 = [(AVPlaybackControlsController *)self isUserInteracting];
    v25 = 1024;
    v26 = [(AVPlaybackControlsController *)self isPictureInPictureActive];
    v27 = 1024;
    v28 = v6;
    v29 = 1024;
    v30 = v8;
    v31 = 1024;
    v32 = [(AVPlaybackControlsController *)self isPopoverBeingPresented];
    v33 = 1024;
    v34 = [(AVPlaybackControlsController *)self showsLoadingIndicator];
    v35 = 1024;
    v36 = [(AVPlaybackControlsController *)self canHidePlaybackControls];
    _os_log_impl(&dword_18B49C000, v16, OS_LOG_TYPE_DEFAULT, "%s shouldShowPlaybackControls: %d {\n\twantsPlaybackControlsVisible: %d\n\tisUserInteracting: %d\n\tisPictureInPictureActive: %d\n\tplayingOnExternalScreen: %d\n\taudioOnlyContent: %d\n\tisPopoverBeingPresented: %d\n\tshowsLoadingIndicator: %d\n\tcanHidePlaybackControls: %d\n}", &v17, 0x42u);
  }

  [(AVPlaybackControlsController *)self showPlaybackControls:v15 immediately:0];
}

- (void)togglePlaybackControlsVisibility
{
  v3 = [(AVPlaybackControlsController *)self playbackControlsView];
  [v3 setPrefersVolumeSliderExpandedAutomatically:{-[AVPlaybackControlsController _prefersVolumeSliderExpandedAutomatically](self, "_prefersVolumeSliderExpandedAutomatically")}];

  v4 = [(AVPlaybackControlsController *)self playerController];
  if ([v4 isPlaying])
  {
    v5 = [(AVPlaybackControlsController *)self isShowingPlaybackControls];

    if (!v5)
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

- (void)setForcePlaybackControlsHidden:(BOOL)a3
{
  if (self->_forcePlaybackControlsHidden != a3)
  {
    self->_forcePlaybackControlsHidden = a3;
    [(AVPlaybackControlsController *)self _updatePlaybackControlsVisibleAndObservingUpdates];
  }
}

- (void)_seekByTimeInterval:(double)a3 toleranceBefore:(double)a4 toleranceAfter:(double)a5
{
  v9 = [(AVPlaybackControlsController *)self playerController];
  v10 = objc_opt_respondsToSelector();

  v12 = [(AVPlaybackControlsController *)self playerController];
  if (v10)
  {
    [v12 seekByTimeInterval:a3 toleranceBefore:a4 toleranceAfter:a5];
  }

  else
  {
    [(AVPlaybackControlsController *)self currentTime];
    [v12 seekToTime:v11 + a3];
  }
}

- (void)_observeBoolForKeyPath:(id)a3 usingKeyValueObservationController:(id)a4 observationHandler:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(AVPlaybackControlsController *)self valueForKeyPath:v8];
  v12 = [v10 copy];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __109__AVPlaybackControlsController__observeBoolForKeyPath_usingKeyValueObservationController_observationHandler___block_invoke;
  v15[3] = &unk_1E7208CF8;
  v13 = v12;
  v16 = v13;
  v14 = [v9 startObserving:self keyPath:v8 includeInitialValue:1 observationHandler:v15];
}

void __109__AVPlaybackControlsController__observeBoolForKeyPath_usingKeyValueObservationController_observationHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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
  v8 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__AVPlaybackControlsController__bindInclusionOfControlItems_toKeyPath___block_invoke;
  v10[3] = &unk_1E7208CD0;
  v9 = v6;
  v11 = v9;
  objc_copyWeak(&v12, &location);
  [(AVPlaybackControlsController *)self _observeBoolForKeyPath:v7 usingKeyValueObservationController:v8 observationHandler:v10];

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

- (void)_bindEnabledStateOfControls:(id)a3 toKeyPath:(id)a4 usingObservationController:(id)a5
{
  v8 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __97__AVPlaybackControlsController__bindEnabledStateOfControls_toKeyPath_usingObservationController___block_invoke;
  v10[3] = &unk_1E7208E90;
  v11 = v8;
  v9 = v8;
  [(AVPlaybackControlsController *)self _observeBoolForKeyPath:a4 usingKeyValueObservationController:a5 observationHandler:v10];
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

- (void)startContentTransitionButtonTouchUpInside:(id)a3
{
  v14 = a3;
  v4 = [(AVPlaybackControlsController *)self playbackControlsView];
  v5 = [v4 effectiveUserInterfaceLayoutDirection];

  v6 = [(AVPlaybackControlsController *)self playbackControlsView];
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
    v8 = [(AVPlaybackControlsController *)self playbackControlsView];
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

  v12 = [(AVPlaybackControlsController *)self contentTransitionAction];

  if (v12)
  {
    v13 = [(AVPlaybackControlsController *)self contentTransitionAction];
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
    v7 = [(AVPlaybackControlsController *)self playbackControlsView];
    v8 = [v7 skipForwardButton];

    v9 = [(AVPlaybackControlsController *)self playerController];
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
  v4 = [(AVPlaybackControlsController *)self playbackControlsView];
  v5 = [v4 skipBackButton];

  if (v5 == v10)
  {
    v9 = [(AVPlaybackControlsController *)self playerController];
    [v9 endScanningBackward:v10];
  }

  else
  {
    v6 = [(AVPlaybackControlsController *)self playbackControlsView];
    v7 = [v6 skipForwardButton];

    v8 = v10;
    if (v7 != v10)
    {
      goto LABEL_6;
    }

    v9 = [(AVPlaybackControlsController *)self playerController];
    [v9 endScanningForward:v10];
  }

  v8 = v10;
LABEL_6:
}

- (void)skipButtonLongPressTriggered:(id)a3
{
  v10 = a3;
  v4 = [(AVPlaybackControlsController *)self playbackControlsView];
  v5 = [v4 skipBackButton];

  if (v5 == v10)
  {
    v9 = [(AVPlaybackControlsController *)self playerController];
    [v9 beginScanningBackward:v10];
  }

  else
  {
    v6 = [(AVPlaybackControlsController *)self playbackControlsView];
    v7 = [v6 skipForwardButton];

    v8 = v10;
    if (v7 != v10)
    {
      goto LABEL_6;
    }

    v9 = [(AVPlaybackControlsController *)self playerController];
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
      v7 = [(AVPlaybackControlsController *)self playbackControlsView];
      v8 = [v7 skipForwardButton];
      if (v8 == v16)
      {
        v9 = [(AVPlaybackControlsController *)self playbackControlsView];
        v10 = [v9 transportControlsView];
        v11 = [v10 liveStreamingControlsIncludeScrubber];

        if (v11)
        {
          v12 = [(AVPlaybackControlsController *)self playerController];
          [v12 gotoEndOfSeekableRanges:v16];

          goto LABEL_10;
        }
      }

      else
      {
      }

      v13 = [(AVPlaybackControlsController *)self playbackControlsView];
      v14 = [v13 skipForwardButton];

      v15 = -15.0;
      if (v14 == v16)
      {
        v15 = 15.0;
      }

      [(AVPlaybackControlsController *)self _seekByTimeInterval:v15 toleranceBefore:0.5 toleranceAfter:0.5];
    }
  }

LABEL_10:
}

- (void)prominentPlayButtonTouchUpInside:(id)a3
{
  v14 = a3;
  v4 = [(AVPlaybackControlsController *)self playerController];
  if ([v4 canTogglePlayback])
  {
    v5 = [(AVPlaybackControlsController *)self playerController];
    v6 = [v5 isPlaying];

    if ((v6 & 1) == 0)
    {
      v7 = [(AVPlaybackControlsController *)self playerViewController];
      [v7 togglePlayback:v14];

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

  v8 = [(AVPlaybackControlsController *)self playerController];
  if ([v8 status])
  {

LABEL_8:
    v9 = [(AVPlaybackControlsController *)self playerController];
    v10 = [v9 status] == 2;
    v11 = [(AVPlaybackControlsController *)self playerController];
    -[AVPlaybackControlsController _updateHasPlaybackBegunSincePlayerControllerBecameReadyToPlay:playing:userDidEndTappingProminentPlayButton:](self, "_updateHasPlaybackBegunSincePlayerControllerBecameReadyToPlay:playing:userDidEndTappingProminentPlayButton:", v10, [v11 isPlaying], 1);

    goto LABEL_9;
  }

  v12 = [(AVPlaybackControlsController *)self playButtonHandlerForLazyPlayerLoading];

  if (!v12)
  {
    goto LABEL_8;
  }

  [(AVPlaybackControlsController *)self startUpdatesIfNeeded];
  v13 = [(AVPlaybackControlsController *)self playButtonHandlerForLazyPlayerLoading];
  v13[2]();

LABEL_9:
}

- (void)playbackSpeedButtonTapped:(id)a3
{
  v4 = [(AVPlaybackControlsController *)self playbackSpeedCollection];
  [v4 selectNextPlaybackSpeed:self];
}

- (id)overflowMenuItemsForControlOverflowButton:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(AVPlaybackControlsController *)self playbackControlsView];
  v7 = [v6 mediaSelectionButton];
  if ([v7 isIncluded])
  {
    v8 = [(AVPlaybackControlsController *)self playbackControlsView];
    v9 = [v8 mediaSelectionButton];
    v10 = [v9 isCollapsed];

    if (!v10)
    {
      goto LABEL_11;
    }

    v11 = [(AVPlaybackControlsController *)self playerController];
    v6 = [v11 audioMediaSelectionOptions];

    v12 = [(AVPlaybackControlsController *)self playerController];
    v7 = [v12 legibleMediaSelectionOptions];

    mediaSelectionMenuController = self->_mediaSelectionMenuController;
    v61 = v4;
    if (mediaSelectionMenuController)
    {
      [(AVMediaSelectionMenuController *)mediaSelectionMenuController setAudibleOptions:v6];
      [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController setLegibleOptions:v7];
    }

    else
    {
      v14 = [[AVMediaSelectionMenuController alloc] initWithAudibleOptions:v6 legibleOptions:v7];
      v15 = self->_mediaSelectionMenuController;
      self->_mediaSelectionMenuController = v14;

      [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController setDelegate:self];
    }

    v16 = [(AVPlaybackControlsController *)self playerController];
    v17 = [v16 audioMediaSelectionOptions];
    v18 = [(AVPlaybackControlsController *)self playerController];
    v19 = [v18 currentAudioMediaSelectionOption];
    v20 = [v17 indexOfObject:v19];

    v21 = [(AVPlaybackControlsController *)self playerController];
    v22 = [v21 legibleMediaSelectionOptions];
    v23 = [(AVPlaybackControlsController *)self playerController];
    v24 = [v23 currentLegibleMediaSelectionOption];
    v25 = [v22 indexOfObject:v24];

    [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController setCurrentAudibleOptionIndex:v20];
    [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController setCurrentLegibleOptionIndex:v25];
    v26 = [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController audibleOptionsMenu];

    if (v26)
    {
      v27 = [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController audibleOptionsMenu];
      [v5 addObject:v27];
    }

    v28 = [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController legibleOptionsMenu];

    v4 = v61;
    if (v28)
    {
      v29 = [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController legibleOptionsMenu];
      [v5 addObject:v29];
    }
  }

LABEL_11:
  v30 = [(AVPlaybackControlsController *)self playbackControlsView];
  v31 = [v30 playbackSpeedButton];
  if ([v31 isIncluded])
  {
    v32 = [(AVPlaybackControlsController *)self playbackControlsView];
    v33 = [v32 playbackSpeedButton];
    v34 = [v33 isCollapsed];

    if (!v34)
    {
      goto LABEL_15;
    }

    v30 = [(AVPlaybackControlsController *)self playbackRateMenuController];
    v31 = [v30 menu];
    [v5 addObject:v31];
  }

LABEL_15:
  v35 = [(AVPlaybackControlsController *)self playbackControlsView];
  v36 = [v35 routePickerView];
  if ([v36 isIncluded])
  {
    v37 = [(AVPlaybackControlsController *)self playbackControlsView];
    v38 = [v37 routePickerView];
    v39 = [v38 isCollapsed];

    if (v39)
    {
      v40 = [(AVPlaybackControlsController *)self playbackControlsView];
      v41 = [v40 routePickerView];

      v42 = AVLocalizedString(@"EXTERNAL_PLAYBACK_OVERFLOW_MENU_ITEM_TITLE");
      v43 = [MEMORY[0x1E69DCAB8] avkit_imageWithSymbolNamed:@"airplayvideo" textStyle:*MEMORY[0x1E69DDCF8] scale:-1];
      if ([v41 isAirPlayActive])
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
      v47 = v41;
      v65 = v47;
      objc_copyWeak(&v66, &location);
      v48 = [v46 actionWithTitle:v42 image:v43 identifier:0 handler:v64];
      [v5 addObject:v48];

      objc_destroyWeak(&v66);
      objc_destroyWeak(&location);
    }
  }

  else
  {
  }

  if (self->_transportBarCustomMenuItems)
  {
    v49 = [(AVPlaybackControlsController *)self playbackControlsView];
    v50 = [v49 transportControlsView];
    v51 = [v50 customMenuItemsViews];

    v52 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_236_22121];
    v53 = [v51 filteredArrayUsingPredicate:v52];

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

    [v5 addObjectsFromArray:v59];
  }

  return v5;
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

- (BOOL)shouldApplyLegibleMediaSelectionCriteriaAutomaticallyForMediaSelectionMenuController:(id)a3
{
  v3 = [(AVPlaybackControlsController *)self playerController];
  v4 = [v3 closedCaptionsEnabled];

  return v4;
}

- (void)mediaSelectionMenuController:(id)a3 didSelectOption:(id)a4
{
  v10 = a4;
  v6 = [a3 audibleOptions];
  v7 = [v6 containsObject:v10];

  v8 = [(AVPlaybackControlsController *)self playerController];
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
  if (![(AVPlaybackControlsController *)self prefersMuted])
  {
    v8 = [(AVPlaybackControlsController *)self volumeController];
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

  v12 = [(AVPlaybackControlsController *)self playbackControlsView];
  v10 = [v12 volumeSlider];
  *&v11 = v7;
  [v10 setValue:v4 animated:v11];
}

- (id)_volumeButtonMicaPackageState
{
  if ([(AVPlaybackControlsController *)self prefersMuted])
  {
    goto LABEL_2;
  }

  v5 = [(AVPlaybackControlsController *)self volumeController];
  v6 = [v5 currentRouteHasVolumeControl];

  v4 = &AVVolumeGlyphStateNameMax;
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = [(AVPlaybackControlsController *)self playbackControlsView];
  if (!v7 || [(AVPlaybackControlsController *)self isResumingUpdates])
  {
    v8 = 0;
    goto LABEL_7;
  }

  v6 = [(AVPlaybackControlsController *)self playbackControlsView];
  v2 = [v6 volumeSlider];
  if ([v2 isHiddenOrHasHiddenAncestor])
  {
    v8 = 1;
LABEL_7:
    v9 = [(AVPlaybackControlsController *)self volumeController];
    [v9 volume];
    v11 = v10;

    if (!v8)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v12 = [(AVPlaybackControlsController *)self playbackControlsView];
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
  v6 = [(AVPlaybackControlsController *)self _volumeButtonMicaPackageState];
  v3 = [(AVPlaybackControlsController *)self playbackControlsView];
  v4 = [v3 volumeButton];
  [v4 setMicaPackageStateName:v6];

  v5 = [(AVPlaybackControlsController *)self turboModePlaybackControlsPlaceholderView];
  [v5 setVolumeButtonMicaPackageStateName:v6];
}

- (void)_showOrHideDisplayModeControls
{
  if (-[AVPlaybackControlsController playbackControlsIncludeDisplayModeControls](self, "playbackControlsIncludeDisplayModeControls") || (-[AVPlaybackControlsController playbackControlsView](self, "playbackControlsView"), v3 = objc_claimAutoreleasedReturnValue(), [v3 customDisplayModeItems], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v3, !v5))
  {
    v7 = ![(AVPlaybackControlsController *)self isFullScreen]&& [(AVPlaybackControlsController *)self allowsEnteringFullScreen];
    if ([(AVPlaybackControlsController *)self showsDoneButtonWhenFullScreen])
    {
      v8 = [(AVPlaybackControlsController *)self isFullScreen];
    }

    else
    {
      v8 = 0;
    }

    v6 = [(AVPlaybackControlsController *)self showsPictureInPictureButton];
    v9 = [(AVPlaybackControlsController *)self canIncludeVideoGravityButton];
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  v10 = [(AVPlaybackControlsController *)self playbackControlsView];
  v11 = [v10 fullScreenButton];
  if (v7 != [v11 isIncluded])
  {
    goto LABEL_16;
  }

  v12 = [(AVPlaybackControlsController *)self playbackControlsView];
  v13 = [v12 doneButton];
  if (v8 != [v13 isIncluded])
  {
LABEL_15:

LABEL_16:
    goto LABEL_17;
  }

  v32 = v8;
  [(AVPlaybackControlsController *)self playbackControlsView];
  v15 = v14 = v6;
  v16 = [v15 pictureInPictureButton];
  v33 = v14;
  if (v14 != [v16 isIncluded])
  {

    v8 = v32;
    v6 = v33;
    goto LABEL_15;
  }

  v28 = [(AVPlaybackControlsController *)self playbackControlsView];
  [v28 videoGravityButton];
  v29 = v31 = v9;
  v30 = [v29 isIncluded];

  v9 = v31;
  v8 = v32;
  v6 = v33;
  if (v31 == v30)
  {
    return;
  }

LABEL_17:
  v17 = [(AVPlaybackControlsController *)self playbackControlsView];

  if (!v17)
  {
    return;
  }

  v34 = [MEMORY[0x1E695DF70] array];
  if (v7)
  {
    v21 = [(AVPlaybackControlsController *)self playbackControlsView];
    [v21 fullScreenButton];
    v23 = v22 = v8;
    [v34 addObject:v23];

    if (!v22)
    {
LABEL_20:
      if (!v6)
      {
        goto LABEL_21;
      }

LABEL_28:
      v26 = [(AVPlaybackControlsController *)self playbackControlsView];
      v27 = [v26 pictureInPictureButton];
      [v34 addObject:v27];

      if (!v9)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else if (!v8)
  {
    goto LABEL_20;
  }

  v24 = [(AVPlaybackControlsController *)self playbackControlsView];
  v25 = [v24 doneButton];
  [v34 addObject:v25];

  if (v6)
  {
    goto LABEL_28;
  }

LABEL_21:
  if (v9)
  {
LABEL_22:
    v18 = [(AVPlaybackControlsController *)self playbackControlsView];
    v19 = [v18 videoGravityButton];
    [v34 addObject:v19];
  }

LABEL_23:
  v20 = [(AVPlaybackControlsController *)self playbackControlsView];
  [v20 updateDisplayControlsVisibilityIncludedButtons:v34];
}

- (BOOL)_prefersVolumeSliderExpandedAutomatically
{
  v3 = [(AVPlaybackControlsController *)self playbackControlsView];
  v4 = [v3 traitCollection];
  v5 = [v4 horizontalSizeClass];

  v6 = [(AVPlaybackControlsController *)self playerViewController];
  v7 = [v6 contentView];
  v8 = [v7 layoutClass];
  v9 = [v8 unsignedIntegerValue];

  if (v9 == 2)
  {
    v10 = [(AVPlaybackControlsController *)self pendingOrientationChange];
    v11 = ([v10 integerValue] - 3) < 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(AVPlaybackControlsController *)self playerViewController];
  v13 = [v12 contentView];
  v14 = [v13 layoutClass];
  v15 = [v14 unsignedIntegerValue];

  if (v15 == 1)
  {
    v16 = [(AVPlaybackControlsController *)self pendingOrientationChange];
    v17 = ([v16 integerValue] - 3) < 2;
  }

  else
  {
    v17 = 0;
  }

  v18 = [(AVPlaybackControlsController *)self playbackControlsView];
  v19 = [v18 customAudioItems];
  v20 = [v19 count];

  if (v20)
  {
    return 0;
  }

  if (![(AVPlaybackControlsController *)self volumeControlsCanShowSlider])
  {
    return 0;
  }

  v21 = [(AVPlaybackControlsController *)self playerController];
  v22 = [v21 isPlayingOnExternalScreen];

  if (v22)
  {
    return 0;
  }

  else
  {
    v25 = [(AVPlaybackControlsController *)self isFullScreen];
    v23 = v17 || v11;
    if (!v25 || v5 == 2)
    {
      return v25;
    }
  }

  return v23;
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
    v9 = [(AVPlaybackControlsController *)self volumeController];
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

      [(AVPlaybackControlsController *)self volumeSliderValueDidChange:v30];
    }
  }
}

- (void)volumeButtonPanChanged:(id)a3
{
  v4 = a3;
  [(AVPlaybackControlsController *)self _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:1];
  [(AVPlaybackControlsController *)self setPrefersMuted:0];
  v6 = [(AVPlaybackControlsController *)self playbackControlsView];
  v5 = [v6 volumeSlider];
  [(AVPlaybackControlsController *)self updateVolumeSliderValue:v5 volumeButtonControl:v4];
}

- (void)endChangingVolume
{
  v2 = [(AVPlaybackControlsController *)self volumeController];
  [v2 endChangingVolume];
}

- (void)beginChangingVolume
{
  v2 = [(AVPlaybackControlsController *)self volumeController];
  [v2 beginChangingVolume];
}

- (void)volumeButtonTapTriggered:(id)a3
{
  v4 = a3;
  v5 = [(AVPlaybackControlsController *)self playerViewController];
  [v5 toggleMuted:v4];

  v6 = [(AVPlaybackControlsController *)self turboModePlaybackControlsPlaceholderView];

  if (v6)
  {

    [(AVPlaybackControlsController *)self _updateVolumeButtonGlyph];
  }
}

- (void)volumeSliderValueDidChange:(id)a3
{
  v4 = a3;
  [(AVPlaybackControlsController *)self beginChangingVolume];
  v5 = [(AVPlaybackControlsController *)self volumeController];
  [v4 value];
  v7 = v6;

  LODWORD(v8) = v7;
  [v5 setTargetVolume:v8];

  [(AVPlaybackControlsController *)self _updateVolumeButtonGlyph];
}

- (void)handleCurrentRouteSupportsVolumeControlChanged:(id)a3
{
  v4 = [(AVPlaybackControlsController *)self playbackControlsView];
  v5 = [v4 volumeSlider];
  v6 = [(AVPlaybackControlsController *)self volumeController];
  [v5 setEnabled:{objc_msgSend(v6, "currentRouteHasVolumeControl")}];

  v7 = [(AVPlaybackControlsController *)self volumeController];
  LOBYTE(v5) = [v7 currentRouteHasVolumeControl];

  if ((v5 & 1) == 0)
  {
    v8 = [(AVPlaybackControlsController *)self volumeController];
    -[AVPlaybackControlsController _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:](self, "_updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:", [v8 currentRouteHasVolumeControl]);
  }

  v9 = [(AVPlaybackControlsController *)self volumeController];
  [v9 volume];
  [(AVPlaybackControlsController *)self _updateVolumeSliderValueWithSystemVolume:0 animated:?];
}

- (void)handleVolumeChange:(id)a3
{
  v4 = a3;
  v5 = [(AVPlaybackControlsController *)self playbackControlsView];
  v6 = [v5 volumeSlider];
  v7 = [(AVPlaybackControlsController *)self volumeController];
  [v6 setEnabled:{objc_msgSend(v7, "currentRouteHasVolumeControl")}];

  v8 = [(AVPlaybackControlsController *)self volumeController];
  [v8 volume];
  v10 = v9;

  v11 = [(AVPlaybackControlsController *)self playbackControlsView];
  v12 = [v11 volumeSlider];
  if ([v12 isTracking])
  {
  }

  else
  {
    v13 = [(AVPlaybackControlsController *)self playbackControlsView];
    v14 = [v13 volumeButton];
    v15 = [v14 isTracking];

    if ((v15 & 1) == 0)
    {
      LODWORD(v16) = v10;
      [(AVPlaybackControlsController *)self _updateVolumeSliderValueWithSystemVolume:0 animated:v16];
    }
  }

  [(AVPlaybackControlsController *)self _updateVolumeButtonGlyph];
  v17 = [v4 userInfo];

  v18 = [v17 objectForKeyedSubscript:@"AVVolumeControllerVolumeDidChangeNotificationIsInitialValueKey"];
  v19 = [v18 BOOLValue];

  if ((v19 & 1) == 0)
  {
    if (-[AVPlaybackControlsController isFullScreen](self, "isFullScreen") || (-[AVPlaybackControlsController volumeController](self, "volumeController"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 isChangingVolume], v20, v21))
    {
      [(AVPlaybackControlsController *)self setPrefersMuted:0];
      v22 = [(AVPlaybackControlsController *)self playerViewController];
      v23 = [v22 isBeingPresented];

      if ((v23 & 1) == 0)
      {

        [(AVPlaybackControlsController *)self flashVolumeControlsWithDuration:2.0];
      }
    }
  }
}

- (void)endScrubbing
{
  v3 = [(AVPlaybackControlsController *)self playerController];
  [v3 endScrubbing:self];

  [(AVPlaybackControlsController *)self setPlaybackSuspendedForScrubbing:0];
  [(AVPlaybackControlsController *)self _updateOrCreateTimeResolverIfNeeded];

  [(AVPlaybackControlsController *)self setShouldIgnoreTimeResolverUpdates:0];
}

- (void)scrubToTime:(double)a3 resolution:(double)a4
{
  v7 = [(AVPlaybackControlsController *)self playerController];
  if ([v7 hasSeekableLiveStreamingContent])
  {
    v8 = [(AVPlaybackControlsController *)self timeResolver];
    [v8 seekableTimeRangeDuration];
  }

  else
  {
    v8 = [(AVPlaybackControlsController *)self playerController];
    [v8 contentDuration];
  }

  v10 = v9;

  v11 = [(AVPlaybackControlsController *)self timeResolver];
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
    if (a4 > 0.0 && ([(AVPlaybackControlsController *)self playerController], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_opt_respondsToSelector(), v16, (v17 & 1) != 0))
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

      v25 = [(AVPlaybackControlsController *)self playerController];
      [v25 seekToTime:a3 toleranceBefore:v23 toleranceAfter:v24];
    }

    else
    {
      v25 = [(AVPlaybackControlsController *)self playerController];
      [v25 seekToTime:a3];
    }
  }

  [(AVPlaybackControlsController *)self _updateScrubberAndTimeLabels];
}

- (void)beginScrubbing
{
  [(AVPlaybackControlsController *)self setShouldIgnoreTimeResolverUpdates:1];
  [(AVPlaybackControlsController *)self setPlaybackSuspendedForScrubbing:[(AVPlaybackControlsController *)self playButtonsShowPauseGlyph]];
  v3 = [(AVPlaybackControlsController *)self playerController];
  [v3 beginScrubbing:self];

  [(AVPlaybackControlsController *)self _updateOrCreateTimeResolverIfNeeded];
}

- (void)transportControls:(id)a3 scrubberDidEndScrubbing:(id)a4
{
  v5 = a4;
  v6 = [(AVPlaybackControlsController *)self playerController];
  [v6 endScrubbing:v5];

  [(AVPlaybackControlsController *)self setPlaybackSuspendedForScrubbing:0];
  [(AVPlaybackControlsController *)self _updateOrCreateTimeResolverIfNeeded];

  [(AVPlaybackControlsController *)self setShouldIgnoreTimeResolverUpdates:0];
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
    v9 = [(AVPlaybackControlsController *)self playbackControlsView];
    v10 = [v9 traitCollection];
    [v10 displayScale];
    [(AVPlaybackControlsController *)self scrubToTime:v6 resolution:v8 * v11];
  }

  else
  {
    [(AVPlaybackControlsController *)self scrubToTime:v6 resolution:0.0];
  }
}

- (void)transportControls:(id)a3 scrubberDidBeginScrubbing:(id)a4
{
  v5 = a4;
  [(AVPlaybackControlsController *)self beginScrubbing];
  v6 = [(AVPlaybackControlsController *)self playerController];
  [v6 nominalFrameRate];
  [v5 setEstimatedFrameRate:?];
}

- (void)transportControlsNeedsLayoutIfNeeded:(id)a3
{
  v4 = [(AVPlaybackControlsController *)self playbackControlsView];
  [v4 setNeedsLayout];

  v5 = [(AVPlaybackControlsController *)self playbackControlsView];
  [v5 layoutIfNeeded];
}

- (CGSize)playerViewControllerContentViewContentDimensions:(id)a3
{
  v3 = [(AVPlaybackControlsController *)self playerController];
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
  v3 = [(AVPlaybackControlsController *)self playerViewController];
  [v3 performInitialSetupIfNeededAndPossible];
}

- (id)playerViewControllerContentViewOverrideLayoutClass:(id)a3
{
  v3 = [(AVPlaybackControlsController *)self playerViewController];
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
      v19 = &unk_1EFF12B78;
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

- (BOOL)playerViewControllerContentViewIsBeingTransitionedFromFullScreen:(id)a3
{
  v4 = [(AVPlaybackControlsController *)self playerViewController];
  v5 = [v4 fullScreenViewController];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(AVPlaybackControlsController *)self playerViewController];
  }

  v8 = v7;

  v9 = [v8 isBeingDismissed];
  return v9;
}

- (BOOL)playerViewControllerContentViewHasActiveTransition:(id)a3
{
  v3 = [(AVPlaybackControlsController *)self playerViewController];
  v4 = [v3 hasActiveTransition];

  return v4;
}

- (void)playerViewControllerContentViewDidChangeVideoGravity:(id)a3
{
  v4 = [(AVPlaybackControlsController *)self playerViewController];
  v5 = [v4 videoGravity];

  if (v5)
  {
    v6 = [(AVPlaybackControlsController *)self playerViewController];
    v7 = [v6 videoGravity];
    -[AVPlaybackControlsController setVideoScaled:](self, "setVideoScaled:", [v7 isEqualToString:*MEMORY[0x1E69874E8]] ^ 1);
  }

  [(AVPlaybackControlsController *)self _updateVideoGravityButtonType];
}

- (BOOL)playerViewControllerContentViewShouldApplyAutomaticVideoGravity:(id)a3
{
  v4 = a3;
  if (![v4 canAutomaticallyZoomLetterboxVideos] || !objc_msgSend(v4, "isCoveringWindow") || (objc_msgSend(v4, "traitCollection"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "displayCornerRadius"), v7 = v6, v5, v7 <= 0.0) || ((-[AVPlaybackControlsController playerController](self, "playerController"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "contentDimensions"), v10 = v9, v12 = v11, v8, v12 <= 0.0) ? (v13 = NAN) : (v13 = v10 / v12), (objc_msgSend(v4, "bounds"), v15 = v14, v17 = v16, v19 = v18, v21 = v20, objc_msgSend(v4, "edgeInsetsForLetterboxedContent"), v24 = v21 - (v22 + v23), v27 = v19 - (v25 + v26), v28 = v17 + v22, v29 = v15 + v25, v37.origin.x = v29, v37.origin.y = v28, v37.size.width = v27, v37.size.height = v24, CGRectIsEmpty(v37)) || (objc_msgSend(v4, "bounds"), CGRectIsEmpty(v38)) || (objc_msgSend(MEMORY[0x1E69DCEB0], "avkit_mainScreen"), v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "nativeBounds"), IsEmpty = CGRectIsEmpty(v39), v30, IsEmpty) || (objc_msgSend(v4, "bounds"), Width = CGRectGetWidth(v40), objc_msgSend(v4, "bounds"), Height = CGRectGetHeight(v41), v42.origin.x = v29, v42.origin.y = v28, v42.size.width = v27, v42.size.height = v24, CGRectGetMinY(v42) <= 0.0)))
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
  v15 = a3;
  v4 = [(AVPlaybackControlsController *)self playbackControlsView];
  v5 = [v4 showsPlaybackControls];
  v6 = [v4 volumeControlsContainer];
  v7 = [v6 isCollapsed];

  v8 = [v4 volumeButton];
  if ([v8 isTracking])
  {
    v9 = 1;
  }

  else
  {
    v10 = [v4 volumeSlider];
    v9 = [v10 isTracking];
  }

  if (v7 & 1 | ((v5 & 1) == 0))
  {
    v11 = [(AVPlaybackControlsController *)self _prefersVolumeSliderExpandedAutomatically]| v9;
  }

  else
  {
    v11 = 1;
  }

  if ([v15 avkit_isDescendantOfNonPagingScrollView])
  {
    v12 = 0;
  }

  else
  {
    v12 = [v15 isCoveringWindow];
  }

  [(AVPlaybackControlsController *)self setCoveringWindow:v12];
  [(AVPlaybackControlsController *)self _updateOrCreateTimeResolverIfNeeded];
  [(AVPlaybackControlsController *)self _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:v11 & 1];
  v13 = [v15 playbackContentContainerView];
  [v13 frame];
  [(AVPlaybackControlsController *)self setPlaybackViewFrame:?];

  v14 = [(AVPlaybackControlsController *)self pictureInPictureController];
  [v14 contentSourceVideoRectInWindowChanged];

  [(AVPlaybackControlsController *)self _updateRouteDetectionEnabled];
}

- (void)playerViewControllerContentViewDidMoveToSuperviewOrWindow:(id)a3
{
  v4 = a3;
  v5 = [(AVPlaybackControlsController *)self playerViewController];
  [v5 performInitialSetupIfNeededAndPossible];

  v6 = [(AVPlaybackControlsController *)self pictureInPictureController];
  [v6 contentSourceVideoRectInWindowChanged];

  v7 = [(AVPlaybackControlsController *)self windowSceneSessionIdentifier];
  v8 = [v4 window];
  v9 = [v8 windowScene];
  v10 = [v9 session];
  v11 = [v10 persistentIdentifier];
  [(AVPlaybackControlsController *)self setWindowSceneSessionIdentifier:v11];

  v12 = [(AVPlaybackControlsController *)self volumeController];
  v13 = [(AVPlaybackControlsController *)self uniqueIdentifer];
  [v12 setClientWithIdentifier:v13 forWindowSceneSessionWithIdentifier:v7];

  v14 = [(AVPlaybackControlsController *)self volumeController];
  [v14 setPrefersSystemVolumeHUDHidden:{-[AVPlaybackControlsController isFullScreen](self, "isFullScreen")}];

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

  [(AVPlaybackControlsController *)self _updateRouteDetectionEnabled];
}

- (void)playerViewControllerContentViewPlaybackContentContainerViewChanged:(id)a3
{
  v3 = [(AVPlaybackControlsController *)self playerViewController];
  [v3 activeContentViewDidChange];
}

- (void)turboModePlaybackControlsPlaceholderViewDidLoad:(id)a3
{
  v4 = a3;
  [(AVPlaybackControlsController *)self setTurboModePlaybackControlsPlaceholderView:v4];
  [v4 setPreferredUnobscuredArea:{-[AVPlaybackControlsController preferredUnobscuredArea](self, "preferredUnobscuredArea")}];
  v5 = [(AVPlaybackControlsController *)self playerViewController];
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

  v7 = [(AVPlaybackControlsController *)self playerViewController];
  v8 = [v7 overrideLayoutMarginsWhenEmbeddedInline];
  [v4 setOverrideLayoutMarginsWhenEmbeddedInline:v8];

  [v4 setHidden:{-[AVPlaybackControlsController showsPlaybackControls](self, "showsPlaybackControls") ^ 1}];
  v9 = [(AVPlaybackControlsController *)self playerController];
  [v4 setPlayerController:v9];
}

- (void)playbackControlsViewDidLoad:(id)a3
{
  v4 = a3;
  [(AVPlaybackControlsController *)self setResumingUpdates:1];
  [(AVPlaybackControlsController *)self setPlaybackControlsView:v4];
  if (!self->_showsPlaybackControls && ![(AVPlaybackControlsController *)self isHidingItemsForTransition])
  {
    [(AVPlaybackControlsController *)self beginHidingItemsForTransition];
  }

  v5 = [(AVPlaybackControlsController *)self turboModePlaybackControlsPlaceholderView];
  [v5 removeFromSuperview];

  v6 = [(AVPlaybackControlsController *)self playerController];
  -[AVPlaybackControlsController _updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:](self, "_updatePlaybackControlsVisibilityWantsPlaybackControlsVisible:", [v6 isPlaying]);

  v7 = objc_alloc_init(AVRouteDetectorCoordinator);
  routeDetectorCoordinator = self->_routeDetectorCoordinator;
  self->_routeDetectorCoordinator = v7;

  [(AVPlaybackControlsController *)self startUpdatesIfNeeded];
  [v4 setFullScreen:{-[AVPlaybackControlsController isFullScreen](self, "isFullScreen")}];
  v9 = [(AVPlaybackControlsController *)self playerViewController];
  v10 = [v9 contentView];
  v11 = [v10 playbackContentContainerView];
  [v11 frame];
  [(AVPlaybackControlsController *)self setPlaybackViewFrame:?];

  [v4 setPreferredUnobscuredArea:{-[AVPlaybackControlsController preferredUnobscuredArea](self, "preferredUnobscuredArea")}];
  v12 = [(AVPlaybackControlsController *)self playerViewController];
  [v4 setVisibilityDelegate:v12];

  v13 = [v4 standardPlayPauseButton];
  [v13 setImageName:@"play.fill"];

  v14 = [v4 standardPlayPauseButton];
  [v14 setAlternateImageName:@"pause.fill"];

  v15 = [v4 standardPlayPauseButton];
  v16 = *MEMORY[0x1E69DB970];
  v17 = [MEMORY[0x1E69DB878] avkit_nonScalingFontWithTextStyle:*MEMORY[0x1E69DDDB8] weight:*MEMORY[0x1E69DB970]];
  [v15 setAlternateFullScreenFont:v17];

  v18 = [v4 standardPlayPauseButton];
  [v18 setFullscreenAlternateImagePadding:1.0];

  v19 = [v4 standardPlayPauseButton];
  v20 = [(AVPlaybackControlsController *)self playerViewController];
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

  v30 = [v4 skipForwardButton];
  [v30 setAlternateImageName:@"forward.end.alt.fill"];

  v31 = [v4 skipForwardButton];
  v32 = [MEMORY[0x1E69DB878] avkit_nonScalingFontWithTextStyle:*MEMORY[0x1E69DDDC8] weight:v16];
  [v31 setAlternateFullScreenFont:v32];

  v33 = [v4 startLeftwardContentTransitionButton];
  [v33 setImageName:@"backward.end.fill"];

  v34 = [v4 startRightwardContentTransitionButton];
  [v34 setImageName:@"forward.end.fill"];

  v35 = [v4 mediaSelectionButton];
  [v35 setImageName:@"captions.bubble"];

  v36 = [v4 pictureInPictureButton];
  [v36 setImageName:@"pip.enter"];

  v37 = [v4 fullScreenButton];
  [v37 setImageName:@"arrow.up.left.and.arrow.down.right"];

  v38 = [v4 doneButton];
  [v38 setImageName:@"xmark"];

  v39 = [v4 volumeButton];
  v40 = [(AVPlaybackControlsController *)self _volumeButtonMicaPackageState];
  [v39 setMicaPackageStateName:v40];

  v41 = [v4 routePickerView];
  [v41 setDelegate:self];

  v42 = [v4 controlOverflowButton];
  [v42 setDelegate:self];

  v43 = [v4 doneButton];
  v44 = [(AVPlaybackControlsController *)self playerViewController];
  [v43 addTarget:v44 action:sel_doneButtonTapped_ forControlEvents:64];

  v45 = [v4 fullScreenButton];
  v46 = [(AVPlaybackControlsController *)self playerViewController];
  [v45 addTarget:v46 action:sel_enterFullScreen_ forControlEvents:64];

  v47 = [v4 videoGravityButton];
  v48 = [(AVPlaybackControlsController *)self playerViewController];
  [v47 addTarget:v48 action:sel_videoGravityButtonTapped_ forControlEvents:64];

  v49 = [v4 standardPlayPauseButton];
  v50 = [(AVPlaybackControlsController *)self playerViewController];
  [v49 addTarget:v50 action:sel_togglePlayback_ forControlEvents:64];

  v51 = [v4 pictureInPictureButton];
  v52 = [(AVPlaybackControlsController *)self playerViewController];
  [v51 addTarget:v52 action:sel_pictureInPictureButtonTapped_ forControlEvents:64];

  v53 = [v4 mediaSelectionButton];
  v54 = [(AVPlaybackControlsController *)self playerViewController];
  [v53 addTarget:v54 action:sel_mediaSelectionButtonTapped_ forControlEvents:64];

  objc_initWeak(&location, self);
  v55 = MEMORY[0x1E69DC628];
  v116[0] = MEMORY[0x1E69E9820];
  v116[1] = 3221225472;
  v116[2] = __60__AVPlaybackControlsController_playbackControlsViewDidLoad___block_invoke;
  v116[3] = &unk_1E7209230;
  objc_copyWeak(&v117, &location);
  v56 = [v55 actionWithHandler:v116];
  v57 = [(AVPlaybackControlsController *)self playbackControlsView];
  v58 = [v57 playbackSpeedButton];
  [v58 setImageName:@"speedometer"];

  v59 = [(AVPlaybackControlsController *)self playbackControlsView];
  v60 = [v59 playbackSpeedButton];
  v61 = objc_loadWeakRetained(&location);
  v62 = [v61 playbackRateMenuController];
  v63 = [v62 menu];
  [v60 setMenu:v63];

  v64 = [(AVPlaybackControlsController *)self playbackControlsView];
  v65 = [v64 playbackSpeedButton];
  [v65 addAction:v56 forControlEvents:0x4000];

  v66 = [(AVPlaybackControlsController *)self playbackControlsView];
  v67 = [v66 playbackSpeedButton];
  [v67 addTarget:self action:sel_playbackSpeedButtonTapped_ forControlEvents:64];

  v68 = [v4 skipBackButton];
  [v68 addTarget:self action:sel_skipButtonTouchUpInside_ forControlEvents:64];

  v69 = [v4 skipForwardButton];
  [v69 addTarget:self action:sel_skipButtonTouchUpInside_ forControlEvents:64];

  v70 = [v4 skipBackButton];
  [v70 addTarget:self action:sel_skipButtonLongPressTriggered_ forControlEvents:0x400000];

  v71 = [v4 skipForwardButton];
  [v71 addTarget:self action:sel_skipButtonLongPressTriggered_ forControlEvents:0x400000];

  v72 = [v4 skipBackButton];
  [v72 addTarget:self action:sel_skipButtonLongPressEnded_ forControlEvents:0x800000];

  v73 = [v4 skipForwardButton];
  [v73 addTarget:self action:sel_skipButtonLongPressEnded_ forControlEvents:0x800000];

  v74 = [v4 skipBackButton];
  [v74 addTarget:self action:sel_skipButtonForcePressChanged_ forControlEvents:0x2000000];

  v75 = [v4 skipForwardButton];
  [v75 addTarget:self action:sel_skipButtonForcePressChanged_ forControlEvents:0x2000000];

  [(AVPlaybackControlsController *)self _updateSkipButtonsEnableLongPress];
  v76 = [v4 startLeftwardContentTransitionButton];
  [v76 addTarget:self action:sel_startContentTransitionButtonTouchUpInside_ forControlEvents:64];

  v77 = [v4 startRightwardContentTransitionButton];
  [v77 addTarget:self action:sel_startContentTransitionButtonTouchUpInside_ forControlEvents:64];

  v78 = [v4 prominentPlayButton];
  [v78 addTarget:self action:sel_prominentPlayButtonTouchUpInside_ forControlEvents:64];

  v79 = [v4 volumeButton];
  [v79 addTarget:self action:sel_volumeButtonTapTriggered_ forControlEvents:0x400000];

  v80 = [v4 volumeButton];
  [v80 addTarget:self action:sel_beginChangingVolume forControlEvents:0x1000000];

  v81 = [v4 volumeButton];
  [v81 addTarget:self action:sel_volumeButtonLongPressTriggered_ forControlEvents:0x800000];

  v82 = [v4 volumeButton];
  [v82 addTarget:self action:sel_volumeButtonPanChanged_ forControlEvents:0x2000000];

  v83 = [v4 volumeButton];
  [v83 addTarget:self action:sel_endChangingVolume forControlEvents:0x4000000];

  v84 = [v4 volumeSlider];
  [v84 addTarget:self action:sel_beginChangingVolume forControlEvents:1];

  v85 = [v4 volumeSlider];
  [v85 addTarget:self action:sel_endChangingVolume forControlEvents:448];

  v86 = [v4 volumeSlider];
  [v86 addTarget:self action:sel_volumeSliderValueDidChange_ forControlEvents:4096];

  v87 = [v4 transportControlsView];
  [v87 setDelegate:self];

  v88 = [v4 standardPlayPauseButton];
  [v88 setTintEffectStyle:0];

  v89 = [v4 prominentPlayButton];
  [v89 setTintEffectStyle:0];

  v90 = [v4 skipBackButton];
  [v90 setTintEffectStyle:0];

  v91 = [v4 skipForwardButton];
  [v91 setTintEffectStyle:0];

  v92 = [v4 startLeftwardContentTransitionButton];
  [v92 setTintEffectStyle:0];

  v93 = [v4 startRightwardContentTransitionButton];
  [v93 setTintEffectStyle:0];

  v94 = [(AVPlaybackControlsController *)self customControlItems];
  [v4 setCustomControlItems:v94 animations:&__block_literal_global_212_22157];

  v95 = [(AVPlaybackControlsController *)self playerViewController];
  v96 = v95;
  if (v95)
  {
    [v95 overrideTransformForProminentPlayButton];
  }

  else
  {
    memset(v115, 0, sizeof(v115));
  }

  [v4 setOverrideTransformForProminentPlayButton:v115];

  v97 = [(AVPlaybackControlsController *)self playerViewController];
  v98 = [v97 overrideLayoutMarginsWhenEmbeddedInline];
  [v4 setOverrideLayoutMarginsWhenEmbeddedInline:v98];

  v99 = MEMORY[0x1E69DD250];
  v109 = MEMORY[0x1E69E9820];
  v110 = 3221225472;
  v111 = __60__AVPlaybackControlsController_playbackControlsViewDidLoad___block_invoke_3;
  v112 = &unk_1E7209FB0;
  v100 = v4;
  v113 = v100;
  v114 = self;
  [v99 performWithoutAnimation:&v109];
  v101 = [(AVPlaybackControlsController *)self volumeController:v109];
  v102 = [(AVPlaybackControlsController *)self uniqueIdentifer];
  v103 = [(AVPlaybackControlsController *)self windowSceneSessionIdentifier];
  [v101 setClientWithIdentifier:v102 forWindowSceneSessionWithIdentifier:v103];

  v104 = [(AVPlaybackControlsController *)self volumeController];
  [v104 setPrefersSystemVolumeHUDHidden:{-[AVPlaybackControlsController isFullScreen](self, "isFullScreen")}];

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

- (void)setTransportBarCustomMenuItems:(id)a3
{
  v4 = [a3 copy];
  transportBarCustomMenuItems = self->_transportBarCustomMenuItems;
  self->_transportBarCustomMenuItems = v4;

  v6 = [(AVPlaybackControlsController *)self playbackControlsView];
  v7 = [v6 transportControlsView];
  v8 = [v7 controlOverflowButton];
  [v8 updateContextMenu];

  [(AVPlaybackControlsController *)self _updateTransportBarCustomMenuItemsIfNeeded];
}

- (void)setCustomControlItems:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(NSArray *)self->_customControlItems isEqualToArray:v4])
  {
    v5 = [v4 copy];
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

    v12 = [(AVPlaybackControlsController *)self playbackControlsView];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__AVPlaybackControlsController_setCustomControlItems___block_invoke;
    v14[3] = &unk_1E720A090;
    v14[4] = self;
    [v12 setCustomControlItems:v4 animations:v14];

    v13 = [(AVPlaybackControlsController *)self playbackControlsView];
    [v13 setPrefersVolumeSliderExpandedAutomatically:{-[AVPlaybackControlsController _prefersVolumeSliderExpandedAutomatically](self, "_prefersVolumeSliderExpandedAutomatically")}];
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
  v3 = [(AVPlaybackControlsController *)self playbackControlsView];
  if (v3)
  {
    v4 = [(AVPlaybackControlsController *)self playbackControlsView];
    if ([v4 showsPlaybackControls])
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
  v3 = [(AVPlaybackControlsController *)self playerController];
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

  if ([(AVPlaybackControlsController *)self timeControlStatus])
  {
    v11 = 1;
  }

  else
  {
    v12 = [(AVPlaybackControlsController *)self isPlaybackSuspendedForScrubbing];
    v13 = v5 != 0.0 || v12;
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

  v4 = [(AVPlaybackControlsController *)self playbackControlsView];
  if (v4)
  {
    v5 = [(AVPlaybackControlsController *)self playerController];
    v3 = [v5 status] == 1 || -[AVPlaybackControlsController timeControlStatus](self, "timeControlStatus") == 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)showsStartContentTransitionButtons
{
  v3 = [(AVPlaybackControlsController *)self isFullScreen];
  if (v3)
  {

    LOBYTE(v3) = [(AVPlaybackControlsController *)self playbackControlsIncludeStartContentTransitionButtons];
  }

  return v3;
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
      v5 = [(AVPlaybackControlsController *)self playerController];
      v3 = [v5 status] != 2;

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

  v4 = [(AVPlaybackControlsController *)self playerController];
  v5 = [v4 canSeek];

  return v5;
}

- (double)maximumTime
{
  v3 = [(AVPlaybackControlsController *)self playerController];
  if ([v3 status] == 2)
  {
    v4 = [(AVPlaybackControlsController *)self timeResolver];
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
  v3 = [(AVPlaybackControlsController *)self playerController];
  if ([v3 status] == 2)
  {
    v4 = [(AVPlaybackControlsController *)self timeResolver];
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
  v3 = [(AVPlaybackControlsController *)self playerController];
  if ([v3 status] == 2)
  {
    v4 = [(AVPlaybackControlsController *)self timeResolver];
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
  v3 = [(AVPlaybackControlsController *)self playbackControlsView];
  v4 = [v3 scrubber];
  v5 = [v4 isTracking];

  if (v5)
  {
    v6 = [(AVPlaybackControlsController *)self playbackControlsView];
    v7 = [v6 scrubber];
    [v7 value];
    v9 = v8;

LABEL_5:
    return v9;
  }

  v10 = [(AVPlaybackControlsController *)self playerController];
  v11 = [v10 externalPlaybackType];

  if (v11 == 1)
  {
    v6 = [(AVPlaybackControlsController *)self timeResolver];
    [v6 currentTime];
    v9 = v12;
    goto LABEL_5;
  }

  [(AVPlaybackControlsController *)self currentTime];
  return result;
}

- (BOOL)showsMediaSelectionButton
{
  v2 = [(AVPlaybackControlsController *)self playerController];
  v3 = [v2 hasMediaSelectionOptions];

  return v3;
}

- (BOOL)shouldEnterFullScreenWhenPlaybackBegins
{
  v3 = [(AVPlaybackControlsController *)self entersFullScreenWhenPlaybackBegins];
  if (v3)
  {
    if ([(AVPlaybackControlsController *)self hasPlaybackBegunSincePlayerControllerBecameReadyToPlay])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(AVPlaybackControlsController *)self playerViewControllerHasInvalidViewControllerHierarchy];
    }
  }

  return v3;
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
  v3 = [(AVPlaybackControlsController *)self shouldEnterFullScreenWhenPlaybackBegins]|| [(AVPlaybackControlsController *)self showsMinimalPlaybackControlsWhenEmbeddedInline];
  if ([(AVPlaybackControlsController *)self isFullScreen]|| ![(AVPlaybackControlsController *)self playbackControlsIncludeTransportControls]|| !(v3 | ![(AVPlaybackControlsController *)self hasPlaybackBegunSincePlayerControllerBecameReadyToPlay]))
  {
    goto LABEL_27;
  }

  v4 = [(AVPlaybackControlsController *)self pictureInPictureController];
  if ([v4 isPictureInPictureActive])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(AVPlaybackControlsController *)self playerController];
    if ([v6 status] == 3)
    {
      v5 = 0;
    }

    else
    {
      v7 = [(AVPlaybackControlsController *)self playerController];
      if ([v7 isPlayingOnExternalScreen])
      {
        v5 = 0;
      }

      else
      {
        v8 = [(AVPlaybackControlsController *)self playerController];
        if ([v8 hasVideo])
        {
          v5 = 1;
        }

        else
        {
          v9 = [(AVPlaybackControlsController *)self playerController];
          v5 = [v9 hasEnabledAudio] ^ 1;
        }
      }
    }
  }

  if (-[AVPlaybackControlsController playButtonsShowPauseGlyph](self, "playButtonsShowPauseGlyph") || !v3 && ((-[AVPlaybackControlsController playButtonHandlerForLazyPlayerLoading](self, "playButtonHandlerForLazyPlayerLoading"), (v10 = objc_claimAutoreleasedReturnValue()) == 0) || (v11 = v10, -[AVPlaybackControlsController playerController](self, "playerController"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 status], v12, v11, v13)))
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

  v3 = [(AVPlaybackControlsController *)self playerController];
  if ([v3 allowsExternalPlayback])
  {
    v4 = [(AVPlaybackControlsController *)self wantsExternalPlaybackButtonShown];
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
  v3 = [(AVPlaybackControlsController *)self showsMinimalPlaybackControlsWhenEmbeddedInline];
  if (v3)
  {
    if ([(AVPlaybackControlsController *)self showsProminentPlayButton])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v3 = [(AVPlaybackControlsController *)self allowsEnteringFullScreen];
      if (v3)
      {
        LOBYTE(v3) = ![(AVPlaybackControlsController *)self isFullScreen];
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
      v9 = "[AVPlaybackControlsController setShowsTimecodes:]";
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
    v7 = [(AVPlaybackControlsController *)self playerController];
    [v7 hasReadableTimecodes];

    [(AVPlaybackControlsController *)self _updateOrCreateTimeResolverIfNeeded];
    [(AVPlaybackControlsController *)self _updateScrubberAndTimeLabels];
  }
}

- (void)setShowsPictureInPictureButton:(BOOL)a3
{
  if (self->_showsPictureInPictureButton != a3)
  {
    self->_showsPictureInPictureButton = a3;
    [(AVPlaybackControlsController *)self _updateControlInclusion];
  }
}

- (void)setCanIncludeVideoGravityButton:(BOOL)a3
{
  if (self->_canIncludeVideoGravityButton != a3)
  {
    self->_canIncludeVideoGravityButton = a3;
    [(AVPlaybackControlsController *)self _updateControlInclusion];
  }
}

- (void)setCoveringWindow:(BOOL)a3
{
  if (self->_coveringWindow != a3)
  {
    self->_coveringWindow = a3;
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

- (void)setVolumeController:(id)a3
{
  v7 = a3;
  v5 = self->_volumeController;
  if (v5 != v7)
  {
    objc_storeStrong(&self->_volumeController, a3);
    if ([(AVPlaybackControlsController *)self isFullScreen])
    {
      [(AVVolumeController *)v5 setPrefersSystemVolumeHUDHidden:0];
      v6 = [(AVPlaybackControlsController *)self volumeController];
      [v6 setPrefersSystemVolumeHUDHidden:1];
    }
  }
}

- (void)setShowsVideoGravityButton:(BOOL)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_showsVideoGravityButton != a3)
  {
    v3 = a3;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVPlaybackControlsController setShowsVideoGravityButton:]";
      v10 = "showsVideoGravityButton";
      v9 = 2080;
      if (v3)
      {
        v6 = "YES";
      }

      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
    }

    self->_showsVideoGravityButton = v3;
    [(AVPlaybackControlsController *)self _updateVideoGravityButtonType];
  }
}

- (void)setShowsDoneButtonWhenFullScreen:(BOOL)a3
{
  if (self->_showsDoneButtonWhenFullScreen != a3)
  {
    self->_showsDoneButtonWhenFullScreen = a3;
    [(AVPlaybackControlsController *)self _updateControlInclusion];
  }
}

- (void)setShowsVolumeControlsForContentWithNoAudio:(BOOL)a3
{
  if (self->_showsVolumeControlsForContentWithNoAudio != a3)
  {
    self->_showsVolumeControlsForContentWithNoAudio = a3;
    [(AVPlaybackControlsController *)self _updateContainerInclusion];
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
      v8 = "[AVPlaybackControlsController setVolumeControlsCanShowSlider:]";
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
    [(AVPlaybackControlsController *)self _updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:v3];
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
      v8 = "[AVPlaybackControlsController setCanIncludePlaybackControlsWhenInline:]";
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
      v8 = "[AVPlaybackControlsController setHasCustomPlaybackControls:]";
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
      v9 = "[AVPlaybackControlsController setShowsPlaybackControls:]";
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
    [(AVPlaybackControlsController *)self _updatePlaybackControlsVisibleAndObservingUpdates];
    v7 = [(AVPlaybackControlsController *)self turboModePlaybackControlsPlaceholderView];
    [v7 setHidden:!v3];
  }
}

- (void)setPlayerViewControllerIsBeingTransitionedWithResizing:(BOOL)a3
{
  if (self->_playerViewControllerIsBeingTransitionedWithResizing != a3)
  {
    self->_playerViewControllerIsBeingTransitionedWithResizing = a3;
    [(AVPlaybackControlsController *)self _updatePlaybackControlsVisibleAndObservingUpdates];
  }
}

- (void)setPlayerViewControllerIsPresentedFullScreen:(BOOL)a3
{
  if (self->_playerViewControllerIsPresentedFullScreen != a3)
  {
    self->_playerViewControllerIsPresentedFullScreen = a3;
    [(AVPlaybackControlsController *)self _updateControlInclusion];
  }
}

- (void)setPlayerViewControllerIsPresentingFullScreen:(BOOL)a3
{
  if (self->_playerViewControllerIsPresentingFullScreen != a3)
  {
    self->_playerViewControllerIsPresentingFullScreen = a3;
    [(AVPlaybackControlsController *)self _updateControlInclusion];
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
    v7 = [(AVPlaybackControlsController *)self playbackRateMenuController];
    [v7 setPlaybackSpeedCollection:v8];

    [(AVPlaybackControlsController *)self _updatePlaybackSpeedControlInclusion];
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
    v6 = [(AVPlaybackControlsController *)self volumeAnimator];
    [v6 restoreVolumeIfNeeded];

    [(AVPlaybackControlsController *)self setVolumeAnimator:0];
    if (self)
    {
      v7 = [(AVPlaybackControlsController *)self playerControllerObservationController];
      [v7 stopAllObservation];

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

    v9 = [(AVPlaybackControlsController *)self volumeController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = [(AVPlaybackControlsController *)self volumeController];
      v12 = objc_loadWeakRetained(&self->_playerController);
      [v11 setPlayerController:v12];
    }

    [(AVPlaybackControlsController *)self _updateOrCreateTimeResolverIfNeeded];
    [(AVPlaybackControlsController *)self _updateSkipButtonsEnableLongPress];
    v13 = [(AVPlaybackControlsController *)self turboModePlaybackControlsPlaceholderView];
    [v13 setPlayerController:obj];

    v5 = obj;
  }
}

- (void)_updateVolumeButtonInclusionAndPrefersVolumeSliderExpandedWithPreferredExpansion:(BOOL)a3
{
  v48 = a3;
  v4 = [(AVPlaybackControlsController *)self playerViewController];
  v5 = [v4 presentationContext];
  if ([v5 isPresenting])
  {
    v6 = [(AVPlaybackControlsController *)self playerViewController];
    v7 = [v6 presentationContext];
    v8 = [v7 presentingTransition];
    v47 = ([v8 finalInterfaceOrientation] - 1) < 2;
  }

  else
  {
    v47 = 0;
  }

  v9 = [(AVPlaybackControlsController *)self playerViewController];
  v10 = [v9 presentationContext];
  v11 = [v10 currentTransition];
  v12 = [v11 isRotated];
  v13 = [(AVPlaybackControlsController *)self playerViewController];
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

  v21 = [(AVPlaybackControlsController *)self shouldShowVolumeControlInTransportBar];
  if ([(AVPlaybackControlsController *)self playbackControlsIncludeVolumeControls])
  {
    v22 = v20 == 1 && v47;
    v23 = 0;
    if ([(AVPlaybackControlsController *)self volumeControlsCanShowSlider]&& !v22)
    {
      v24 = [(AVPlaybackControlsController *)self volumeController];
      if ([v24 currentRouteHasVolumeControl])
      {
        v25 = [(AVPlaybackControlsController *)self playerController];
        if ([v25 isPlayingOnExternalScreen])
        {
          v23 = 0;
        }

        else
        {
          v26 = [(AVPlaybackControlsController *)self playerController];
          v23 = ([v26 isPlayingOnSecondScreen] & 1) == 0 && -[AVPlaybackControlsController preferredUnobscuredArea](self, "preferredUnobscuredArea") != 1;
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
    v27 = v21 ^ 1;
  }

  else
  {
    v28 = [(AVPlaybackControlsController *)self playbackControlsView];
    v29 = [v28 customAudioItems];
    v27 = ([v29 count] == 0) & (v21 ^ 1);
  }

  v30 = [(AVPlaybackControlsController *)self playbackControlsView];
  v31 = [v30 transportControlsView];
  [v31 setTransportViewIncludesVolumeController:v21];

  if (v23)
  {
    v32 = v48 & (v21 ^ 1);
  }

  else
  {
    v32 = 0;
  }

  v33 = [(AVPlaybackControlsController *)self playbackControlsView];
  v34 = [v33 volumeSlider];
  if (v32 == [v34 isIncluded])
  {
    v35 = [(AVPlaybackControlsController *)self playbackControlsView];
    v36 = [v35 volumeButton];
    v37 = [v36 isIncluded];

    if (v27 == v37)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  if (v32)
  {
    v38 = [(AVPlaybackControlsController *)self volumeController];
    [v38 volume];
    [(AVPlaybackControlsController *)self _updateVolumeSliderValueWithSystemVolume:0 animated:?];
  }

  if ([MEMORY[0x1E69DD250] areAnimationsEnabled])
  {
    v39 = [(AVPlaybackControlsController *)self playbackControlsView];
    v40 = [v39 volumeControls];
    if ([v40 isHiddenOrHasHiddenAncestor])
    {
      v41 = 0;
    }

    else
    {
      v42 = [(AVPlaybackControlsController *)self playbackControlsView];
      v43 = [v42 volumeControls];
      if ([v43 _isInAWindow] && !-[AVPlaybackControlsController isResumingUpdates](self, "isResumingUpdates"))
      {
        v44 = [(AVPlaybackControlsController *)self playbackControlsView];
        if ([v44 avkit_wantsAnimatedViewTransitions])
        {
          v45 = [(AVPlaybackControlsController *)self playerViewController];
          v41 = [v45 hasActiveTransition] ^ 1;
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

  v46 = [(AVPlaybackControlsController *)self playbackControlsView];
  [v46 setPrefersVolumeSliderExpanded:v32 prefersVolumeButtonIncluded:v27 animated:v41];

LABEL_49:

  [(AVPlaybackControlsController *)self _updateVolumeButtonGlyph];
}

- (void)setAllowsEnteringFullScreen:(BOOL)a3
{
  if (self->_allowsEnteringFullScreen != a3)
  {
    self->_allowsEnteringFullScreen = a3;
    [(AVPlaybackControlsController *)self _updateControlInclusion];
  }
}

- (void)setPreferredUnobscuredArea:(int64_t)a3
{
  if (self->_preferredUnobscuredArea != a3)
  {
    self->_preferredUnobscuredArea = a3;
    v6 = [(AVPlaybackControlsController *)self playbackControlsView];
    [v6 setPreferredUnobscuredArea:a3];

    v7 = [(AVPlaybackControlsController *)self playbackControlsView];
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
      v8 = "[AVPlaybackControlsController setShowsMinimalPlaybackControlsWhenEmbeddedInline:]";
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
    v3 = [(AVPlaybackControlsController *)self playbackControlsView];

    if (v3)
    {
      [(AVPlaybackControlsController *)self setHasStartedUpdates:1];
      v4 = self->_observationController;
      objc_initWeak(&location, self);
      [(AVPlaybackControlsController *)self _updateRouteDetectionEnabled];
      v5 = [(AVPlaybackControlsController *)self routeDetectorCoordinator];
      -[AVPlaybackControlsController setMultipleRoutesDetected:](self, "setMultipleRoutesDetected:", [v5 multipleRoutesDetected]);

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __52__AVPlaybackControlsController_startUpdatesIfNeeded__block_invoke;
      v14[3] = &unk_1E7208BF0;
      objc_copyWeak(&v15, &location);
      [(AVObservationController *)v4 startObservingNotificationForName:@"AVRouteDetectorCoordinatorMultipleRoutesDetectedDidChangeNotification" object:0 notificationCenter:0 observationHandler:v14];
      [(AVObservationController *)v4 startObservingNotificationForName:@"AVVolumeControllerVolumeChangedNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_22185];
      [(AVObservationController *)v4 startObservingNotificationForName:@"AVVolumeControllerCurrentRouteHasVolumeControlChangedNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_28];
      v6 = [(AVPlaybackControlsController *)self playerController];

      if (v6)
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

  v4 = [(AVPlaybackControlsController *)self playerControllerObservationController];
  [v4 stopAllObservation];

  v5 = [(AVPlaybackControlsController *)self playbackControlsObservationController];
  [v5 stopAllObservation];

  v6 = [(AVPlaybackControlsController *)self observationController];
  [v6 stopAllObservation];

  [(AVPlaybackControlsController *)self setShowsTimecodes:0];
  v7 = [(AVPlaybackControlsController *)self volumeController];
  [v7 setPrefersSystemVolumeHUDHidden:0];

  v8 = [(AVPlaybackControlsController *)self timeResolver];
  [v8 setPlayerController:0];

  v9 = [(AVPlaybackControlsController *)self routeDetectorCoordinator];
  [v9 setRouteDetectionEnabled:0];

  [(AVPlaybackControlsController *)self setPlayerController:0];
  v10.receiver = self;
  v10.super_class = AVPlaybackControlsController;
  [(AVPlaybackControlsController *)&v10 dealloc];
}

- (AVPlaybackControlsController)initWithPlayerViewController:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = AVPlaybackControlsController;
  v5 = [(AVPlaybackControlsController *)&v20 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_playerViewController, v4);
    v7 = [v4 playerController];
    objc_storeWeak(&v6->_playerController, v7);

    v6->_showsVideoGravityButton = 1;
    v8 = [(AVPlaybackControlsController *)v6 playerViewController];
    v6->_showsPlaybackControls = [v8 showsPlaybackControls];

    *&v6->_playbackControlsIncludeTransportControls = 257;
    v6->_playbackControlsIncludeVolumeControls = 1;
    v6->_allowsEnteringFullScreen = 1;
    *&v6->_startRightwardContentTransitionButtonEnabled = 257;
    v6->_volumeControlsCanShowSlider = 1;
    *&v6->_forcePlaybackControlsHidden = 16842752;
    *&v6->_hasBegunObservingPotentiallyUnimplementedPlayerControllerProperties = 0;
    v6->_loadingIndicatorTimerDelay = 1.0;
    v6->_canIncludePlaybackControlsWhenInline = [v4 canIncludePlaybackControlsWhenInline];
    v9 = [MEMORY[0x1E696AE30] processInfo];
    v10 = [v9 globallyUniqueString];
    uniqueIdentifer = v6->_uniqueIdentifer;
    v6->_uniqueIdentifer = v10;

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