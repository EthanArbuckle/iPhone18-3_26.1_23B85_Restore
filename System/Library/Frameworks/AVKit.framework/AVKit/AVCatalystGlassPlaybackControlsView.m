@interface AVCatalystGlassPlaybackControlsView
- (AVCatalystGlassPlaybackControlsView)initWithFrame:(CGRect)a3 styleSheet:(id)a4;
- (AVGlassPlaybackControlsViewVisibilityDelegate)visibilityDelegate;
- (BOOL)hasVisibleSubview;
- (BOOL)includesAudioControlsContainer;
- (BOOL)includesCustomAudioControls;
- (BOOL)includesCustomDisplayModeControls;
- (BOOL)includesDisplayModeControlsContainer;
- (BOOL)includesTransportControls;
- (CGAffineTransform)overrideTransformForProminentPlayButton;
- (id)_audioViewsToRemoveDuringAnimation;
- (id)_currentArrangedAudioModeViews;
- (id)_currentArrangedDisplayModeViews;
- (id)_displayModeViewsToRemoveDuringAnimation;
- (id)_playbackControlsViewItems;
- (id)_playbackControlsViewsForControlItems:(id)a3 withType:(int64_t)a4;
- (id)_preferredArrangedAudioModeViews;
- (id)_preferredArrangedDisplayModeViews;
- (id)_setUpDimmingViewIfNeeded;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_animateKeyboardAvoidance:(int64_t)a3 duration:(double)a4;
- (void)_collapse:(BOOL)a3 view:(id)a4;
- (void)_collapse:(BOOL)a3 views:(id)a4;
- (void)_updateAreVolumeAndTransportControlsVisible;
- (void)_updateDoubleRowLayoutEnabled;
- (void)_updateLayoutMargins;
- (void)_updatePlaybackControlsContainerVisibilityAnimated:(BOOL)a3 additionalActions:(id)a4;
- (void)animateAlongsideVisibilityAnimationsWithAnimationCoordinator:(id)a3 appearingViews:(id)a4 disappearingViews:(id)a5;
- (void)avkit_reevaluateHiddenStateOfItem:(id)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)reevaluateHiddenStateForContainersAndSubviews;
- (void)safeAreaInsetsDidChange;
- (void)setCustomControlItems:(id)a3 animations:(id)a4;
- (void)setCustomControlsView:(id)a3;
- (void)setFullScreen:(BOOL)a3;
- (void)setIncludedContainers:(int64_t)a3 animations:(id)a4;
- (void)setOverrideLayoutMarginsWhenEmbeddedInline:(id)a3;
- (void)setOverrideTransformForProminentPlayButton:(CGAffineTransform *)a3;
- (void)setPrefersVolumeSliderExpanded:(BOOL)a3 prefersVolumeButtonIncluded:(BOOL)a4 animated:(BOOL)a5;
- (void)setShowsAudioControls:(BOOL)a3;
- (void)setShowsDimmingView:(BOOL)a3;
- (void)setShowsPlaybackControls:(BOOL)a3;
- (void)setStyleSheet:(id)a3;
- (void)setupInitialLayout;
- (void)showPlaybackControls:(BOOL)a3 immediately:(BOOL)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateDisplayControlsVisibilityIncludedButtons:(id)a3;
@end

@implementation AVCatalystGlassPlaybackControlsView

- (CGAffineTransform)overrideTransformForProminentPlayButton
{
  v3 = *&self[18].tx;
  *&retstr->a = *&self[18].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[19].a;
  return self;
}

- (AVGlassPlaybackControlsViewVisibilityDelegate)visibilityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_visibilityDelegate);

  return WeakRetained;
}

- (void)setCustomControlsView:(id)a3
{
  v5 = a3;
  if (self->_customControlsView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_customControlsView, a3);
    [(AVCatalystGlassPlaybackControlsView *)self _updateAreVolumeAndTransportControlsVisible];
    v5 = v6;
  }
}

- (void)_updateAreVolumeAndTransportControlsVisible
{
  if (a1)
  {
    v2 = [a1 _customControlsViewIfLoaded];
    if ([a1 includesTransportControls])
    {
      v3 = [a1 playbackControlsContainer];
      [v3 alpha];
      [v2 setAreTransportControlsVisible:v4 > 0.0];
    }

    else
    {
      [v2 setAreTransportControlsVisible:0];
    }

    v5 = [a1 _customControlsViewIfLoaded];
    if ([a1 includesAudioControlsContainer] & 1) != 0 || (objc_msgSend(a1, "includesCustomAudioControls"))
    {
      v6 = [a1 volumeControlsContainer];
      [v6 alpha];
      [v5 setAreVolumeControlsVisible:v7 > 0.0];
    }

    else
    {
      [v5 setAreVolumeControlsVisible:0];
    }

    v8 = [a1 _customControlsViewIfLoaded];
    [v8 updateConstraintsIfNeeded];

    v9 = [a1 _customControlsViewIfLoaded];
    [v9 layoutIfNeeded];
  }
}

- (id)_playbackControlsViewsForControlItems:(id)a3 withType:(int64_t)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v20 = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        if ([v11 type] == a4)
        {
          v12 = [v11 view];
          if (![v12 conformsToProtocol:&unk_1EFF1F478])
          {
            goto LABEL_10;
          }

          v13 = [v11 view];
          v14 = [v13 conformsToProtocol:&unk_1EFF1F290];

          if (!v14)
          {
            goto LABEL_11;
          }

          v15 = [v11 view];
          [v20 addObject:v15];

          v12 = [v11 image];
          if (!v12)
          {
            v16 = [v11 title];

            if (v16)
            {
              goto LABEL_16;
            }
          }

          else
          {
LABEL_10:
          }
        }

LABEL_11:
        ++v10;
      }

      while (v8 != v10);
      v17 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      v8 = v17;
    }

    while (v17);
  }

LABEL_16:

  v18 = [v20 copy];

  return v18;
}

- (id)_playbackControlsViewItems
{
  v19[16] = *MEMORY[0x1E69E9840];
  pictureInPictureButton = self->_pictureInPictureButton;
  v19[0] = self->_doneButton;
  v19[1] = pictureInPictureButton;
  transportControlsView = self->_transportControlsView;
  v19[2] = self->_routePickerView;
  v19[3] = transportControlsView;
  controlOverflowButton = self->_controlOverflowButton;
  v19[4] = self->_mediaSelectionButton;
  v19[5] = controlOverflowButton;
  standardPlayPauseButton = self->_standardPlayPauseButton;
  v19[6] = self->_playbackSpeedButton;
  v19[7] = standardPlayPauseButton;
  prominentPlayButton = self->_prominentPlayButton;
  v19[8] = self->_fullScreenButton;
  v19[9] = prominentPlayButton;
  skipBackButton = self->_skipBackButton;
  v19[10] = self->_skipForwardButton;
  v19[11] = skipBackButton;
  startRightwardContentTransitionButton = self->_startRightwardContentTransitionButton;
  v19[12] = self->_startLeftwardContentTransitionButton;
  v19[13] = startRightwardContentTransitionButton;
  volumeSlider = self->_volumeSlider;
  v19[14] = self->_volumeButton;
  v19[15] = volumeSlider;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:16];
  v12 = [(AVCatalystGlassPlaybackControlsView *)self customDisplayModeItems];
  v13 = [v11 arrayByAddingObjectsFromArray:v12];

  v14 = [(AVCatalystGlassPlaybackControlsView *)self customAudioItems];
  v15 = [v13 arrayByAddingObjectsFromArray:v14];

  v16 = [(AVCatalystGlassPlaybackControlsView *)self customMediaItems];
  v17 = [v15 arrayByAddingObjectsFromArray:v16];

  return v17;
}

- (void)_animateKeyboardAvoidance:(int64_t)a3 duration:(double)a4
{
  v7 = [(AVCatalystGlassPlaybackControlsView *)self keyboardUIAvoidanceAnimator];
  if ([v7 isRunning] && objc_msgSend(v7, "isInterruptible"))
  {
    [v7 stopAnimation:0];
    [v7 finishAnimationAtPosition:2];
  }

  objc_initWeak(&location, self);
  v8 = objc_alloc(MEMORY[0x1E69DD278]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __74__AVCatalystGlassPlaybackControlsView__animateKeyboardAvoidance_duration___block_invoke;
  v14 = &unk_1E7209EA8;
  objc_copyWeak(&v15, &location);
  v9 = [v8 initWithDuration:a3 curve:&v11 animations:a4];
  objc_storeStrong(&self->_keyboardUIAvoidanceAnimator, v9);
  v10 = [(AVCatalystGlassPlaybackControlsView *)self keyboardUIAvoidanceAnimator:v11];
  [v10 startAnimation];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __74__AVCatalystGlassPlaybackControlsView__animateKeyboardAvoidance_duration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsLayout];
  [WeakRetained layoutIfNeeded];
}

- (void)reevaluateHiddenStateForContainersAndSubviews
{
  v3 = [(AVCatalystGlassPlaybackControlsView *)self volumeControlsContainer];
  [(AVCatalystGlassPlaybackControlsView *)self avkit_reevaluateHiddenStateOfItem:v3];

  v4 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
  [(AVCatalystGlassPlaybackControlsView *)self avkit_reevaluateHiddenStateOfItem:v4];

  v5 = [(AVCatalystGlassPlaybackControlsView *)self screenModeControls];
  [(AVCatalystGlassPlaybackControlsView *)self avkit_reevaluateHiddenStateOfItem:v5];

  v6 = [(AVCatalystGlassPlaybackControlsView *)self prominentPlayButtonContainerView];
  [(AVCatalystGlassPlaybackControlsView *)self avkit_reevaluateHiddenStateOfItem:v6];

  v7 = [(AVCatalystGlassPlaybackControlsView *)self prominentPlayButtonContainerView];
  [v7 reevaluateHiddenStateOfAllItems];

  v8 = [(AVCatalystGlassPlaybackControlsView *)self volumeControls];
  [v8 reevaluateHiddenStateOfAllItems];

  v9 = [(AVCatalystGlassPlaybackControlsView *)self screenModeControls];
  [v9 reevaluateHiddenStateOfAllItems];

  v10 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsView];
  [v10 reevaluateHiddenStateOfAllItems];
}

- (void)_updatePlaybackControlsContainerVisibilityAnimated:(BOOL)a3 additionalActions:(id)a4
{
  v52 = a3;
  v51 = a4;
  v5 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsVisibilityAnimator];
  if ([v5 isRunning])
  {
    v6 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsVisibilityAnimator];
    v7 = [v6 isInterruptible];

    if (!v7)
    {
      goto LABEL_5;
    }

    v8 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsVisibilityAnimator];
    [v8 stopAnimation:0];

    v5 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsVisibilityAnimator];
    [v5 finishAnimationAtPosition:2];
  }

LABEL_5:
  v9 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsView];
  v10 = [(AVCatalystGlassPlaybackControlsView *)self customMediaItems];
  [v9 setCustomItems:v10];

  v11 = [(AVCatalystGlassPlaybackControlsView *)self showsPlaybackControls];
  v12 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
  v13 = [v12 isCollapsedOrExcluded];
  v14 = v13 ^ 1;

  v15 = [(AVCatalystGlassPlaybackControlsView *)self showsProminentPlayButton];
  v49 = [(AVCatalystGlassPlaybackControlsView *)self includesTransportControls];
  v16 = [(AVCatalystGlassPlaybackControlsView *)self screenModeControls];
  v54 = [v16 hasVisibleArrangedSubview] ^ 1;

  if ([(AVCatalystGlassPlaybackControlsView *)self includesDisplayModeControlsContainer])
  {
    v53 = 0;
  }

  else
  {
    v53 = ![(AVCatalystGlassPlaybackControlsView *)self includesCustomDisplayModeControls];
  }

  v17 = v13 & v11;
  v18 = [(AVCatalystGlassPlaybackControlsView *)self volumeControls];
  v19 = [v18 hasVisibleArrangedSubview] ^ 1;

  v20 = [(AVCatalystGlassPlaybackControlsView *)self volumeControlsContainer];
  v21 = [v20 isCollapsedOrExcluded] ^ 1;

  v50 = v15;
  if (v15)
  {
    v22 = 0;
    goto LABEL_17;
  }

  if ([(AVCatalystGlassPlaybackControlsView *)self includesAudioControlsContainer])
  {
    if (v11)
    {
      v22 = 1;
      goto LABEL_17;
    }
  }

  else
  {
    v23 = [(AVCatalystGlassPlaybackControlsView *)self includesCustomAudioControls];
    v22 = v23;
    if (!v23 || (v13 & v11 & 1) != 0 || (v14 & v11 & 1) != 0)
    {
      goto LABEL_17;
    }
  }

  v22 = [(AVCatalystGlassPlaybackControlsView *)self showsAudioControls];
LABEL_17:
  if (v11)
  {
    v24 = 1.0;
  }

  else
  {
    v24 = 0.0;
  }

  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = __108__AVCatalystGlassPlaybackControlsView__updatePlaybackControlsContainerVisibilityAnimated_additionalActions___block_invoke;
  v87[3] = &unk_1E7208ED8;
  v88 = v54;
  v89 = v19;
  v90 = v13 & v11;
  v91 = v14 & v11;
  v92 = v13 ^ 1;
  v87[4] = self;
  *&v87[5] = v24;
  v93 = v53;
  v94 = v22;
  v95 = v21;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v87];
  v25 = [MEMORY[0x1E695DF70] array];
  v26 = [MEMORY[0x1E695DF70] array];
  v57 = v26;
  if (v22)
  {
    v27 = v25;
  }

  else
  {
    v27 = v26;
  }

  v28 = [(AVCatalystGlassPlaybackControlsView *)self volumeControlsContainer];
  [v27 addObject:v28];

  v56 = v25;
  if ((v13 & v11 & 1) != 0 || (v25 = v57, ((v13 | v11) & 1) == 0))
  {
    v29 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
    [v25 addObject:v29];
  }

  if ((v13 & 1) == 0 && !self->_controlsViewHasAppeared)
  {
    v30 = [(AVCatalystGlassPlaybackControlsView *)self window];

    if (v30)
    {
      self->_controlsViewHasAppeared = 1;
      v31 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
      v32 = [v56 containsObject:v31];

      if ((v32 & 1) == 0)
      {
        v33 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
        [v56 addObject:v33];
      }
    }
  }

  v34 = objc_alloc_init(AVPlayerViewControllerAnimationCoordinator);
  v35 = [(AVCatalystGlassPlaybackControlsView *)self visibilityDelegate];
  [v35 glassPlaybackControlsView:self animateAlongsideVisibilityAnimationsWithAnimationCoordinator:v34 appearingViews:v56 disappearingViews:v57];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __108__AVCatalystGlassPlaybackControlsView__updatePlaybackControlsContainerVisibilityAnimated_additionalActions___block_invoke_2;
  aBlock[3] = &unk_1E72072F0;
  objc_copyWeak(v77, &location);
  v77[1] = *&v24;
  v78 = v49;
  v79 = v53;
  v80 = v50;
  v81 = v13 & v11;
  v82 = v14 & v11;
  v83 = v11;
  v84 = v54;
  v85 = v19;
  v36 = v34;
  v75 = v36;
  v55 = v51;
  v76 = v55;
  v37 = _Block_copy(aBlock);
  v38 = [MEMORY[0x1E696AFB0] UUID];
  [(AVCatalystGlassPlaybackControlsView *)self setMostRecentAnimationCompletionsID:v38];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __108__AVCatalystGlassPlaybackControlsView__updatePlaybackControlsContainerVisibilityAnimated_additionalActions___block_invoke_3;
  v70[3] = &unk_1E72086A8;
  objc_copyWeak(&v71, &location);
  v72 = v14 & !v11;
  v73 = v13 & !v11;
  v39 = _Block_copy(v70);
  if ((((v13 ^ 1) & 1) != 0 || (v17 & 1) != 0 || [(AVCatalystGlassPlaybackControlsView *)self showsAudioControls]) && [(UIView *)self avkit_wantsAnimatedViewTransitions]&& v52)
  {
    if ([MEMORY[0x1E69DD250] _isInAnimationBlock])
    {
      v40 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsVisibilityAnimator];
      v41 = [v40 isRunning];

      if ((v41 & 1) == 0)
      {
        [MEMORY[0x1E6979518] begin];
        v48 = MEMORY[0x1E6979518];
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = __108__AVCatalystGlassPlaybackControlsView__updatePlaybackControlsContainerVisibilityAnimated_additionalActions___block_invoke_5;
        v64[3] = &unk_1E72086D0;
        objc_copyWeak(&v68, &location);
        v65 = v38;
        v67 = v39;
        v69 = v52;
        v66 = v36;
        [v48 setCompletionBlock:v64];
        v37[2](v37);
        [MEMORY[0x1E6979518] commit];

        p_from = &v68;
        goto LABEL_44;
      }
    }

    objc_initWeak(&from, self);
    v42 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsVisibilityAnimator];
    if ([v42 isRunning])
    {
      v43 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsVisibilityAnimator];
      v44 = [v43 isInterruptible];

      if (!v44)
      {
LABEL_41:
        v46 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:0 curve:v37 animations:0.2];
        v58[0] = MEMORY[0x1E69E9820];
        v58[1] = 3221225472;
        v58[2] = __108__AVCatalystGlassPlaybackControlsView__updatePlaybackControlsContainerVisibilityAnimated_additionalActions___block_invoke_6;
        v58[3] = &unk_1E72086F8;
        objc_copyWeak(&v61, &from);
        v60 = v39;
        v62 = v52;
        v59 = v36;
        [v46 addCompletion:v58];
        [(AVCatalystGlassPlaybackControlsView *)self setPlaybackControlsVisibilityAnimator:v46];
        [v46 startAnimation];

        objc_destroyWeak(&v61);
        p_from = &from;
LABEL_44:
        objc_destroyWeak(p_from);
        goto LABEL_45;
      }

      v45 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsVisibilityAnimator];
      [v45 stopAnimation:0];

      v42 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsVisibilityAnimator];
      [v42 finishAnimationAtPosition:2];
    }

    goto LABEL_41;
  }

  v37[2](v37);
  v39[2](v39);
LABEL_45:

  objc_destroyWeak(&v71);
  objc_destroyWeak(v77);
  objc_destroyWeak(&location);
}

void __108__AVCatalystGlassPlaybackControlsView__updatePlaybackControlsContainerVisibilityAnimated_additionalActions___block_invoke(uint64_t a1)
{
  v29[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) & 1) != 0 || (*(a1 + 49) & 1) != 0 || (*(a1 + 50))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 51);
  }

  if (*(a1 + 52) == 1 && ([*(a1 + 32) avkit_isBeingPresented] & 1) == 0 && *(a1 + 48) != 1)
  {
LABEL_10:
    if (*(a1 + 50) != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v3 = [*(a1 + 32) fullScreenButton];
  [v3 setIncluded:{objc_msgSend(*(a1 + 32), "prefersFullScreenButtonIncluded")}];

  v4 = [*(a1 + 32) doneButton];
  [v4 setIncluded:{objc_msgSend(*(a1 + 32), "prefersDoneButtonIncluded")}];

  v5 = [*(a1 + 32) pictureInPictureButton];
  [v5 setIncluded:{objc_msgSend(*(a1 + 32), "prefersPiPButtonIncluded")}];

  v6 = [*(a1 + 32) routePickerView];
  [v6 setIncluded:{objc_msgSend(*(a1 + 32), "prefersRoutePickerButtonIncluded")}];

  v7 = [*(a1 + 32) dimmingView];
  [v7 setAlpha:*(a1 + 40)];

  [*(a1 + 32) setNeedsLayout];
  if ((*(a1 + 48) & 1) == 0)
  {
    v2 = 1;
    goto LABEL_10;
  }

LABEL_11:
  v8 = [*(a1 + 32) _preferredArrangedDisplayModeViews];
  v9 = [v8 array];

  v10 = [v9 arrayByAddingObject:*(*(a1 + 32) + 848)];

  v11 = [*(a1 + 32) screenModeControls];
  v29[0] = v10;
  v2 = 1;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  [v11 setArrangedSubviews:v12];

  v13 = *(a1 + 32);
  v14 = *(a1 + 53);
  v15 = [v13 defaultDisplayModeControls];
  [v13 _collapse:v14 views:v15];

  v16 = *(a1 + 32);
  v17 = [v16 customDisplayModeItems];
  [v16 _collapse:0 views:v17];

LABEL_12:
  if ((*(a1 + 49) & 1) != 0 || *(a1 + 54) == 1 && *(a1 + 55) != 1 || *(a1 + 50) == 1 && (*(a1 + 55) & 1) == 0)
  {
    v18 = [*(a1 + 32) _preferredArrangedAudioModeViews];
    v19 = [v18 array];

    v20 = [*(a1 + 32) volumeControls];
    v28 = v19;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
    [v20 setArrangedSubviews:v21];

    v22 = *(a1 + 32);
    LODWORD(v21) = [v22 includesAudioControlsContainer];
    v23 = [*(a1 + 32) defaultAudioControls];
    [v22 _collapse:v21 ^ 1 views:v23];

    v24 = *(a1 + 32);
    v25 = [v24 customAudioItems];
    [v24 _collapse:0 views:v25];

    v26 = [*(a1 + 32) volumeSlider];
    [v26 setIncluded:{objc_msgSend(*(a1 + 32), "prefersVolumeSliderExpandedAutomatically")}];

    v27 = [*(a1 + 32) volumeButton];
    [v27 setLongPressEnabled:{objc_msgSend(*(a1 + 32), "prefersVolumeSliderExpandedAutomatically") ^ 1}];

LABEL_14:
    [*(a1 + 32) layoutIfNeeded];
    return;
  }

  if (v2)
  {
    goto LABEL_14;
  }
}

void __108__AVCatalystGlassPlaybackControlsView__updatePlaybackControlsContainerVisibilityAnimated_additionalActions___block_invoke_2(uint64_t a1)
{
  v36[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained dimmingView];
  [v3 setAlpha:*(a1 + 56)];

  v4 = [WeakRetained transportControlsContainerView];
  [v4 setHidden:0];

  v5 = [WeakRetained transportControlsContainerView];
  v6 = v5;
  v7 = 0.0;
  if (*(a1 + 64))
  {
    v7 = 1.0;
  }

  [v5 setAlpha:v7];

  v8 = [WeakRetained screenModeControls];
  [v8 setIncluded:(*(a1 + 65) & 1) == 0];

  v9 = [WeakRetained prominentPlayButtonContainerView];
  [v9 setIncluded:*(a1 + 66)];

  if ((*(a1 + 66) & 1) == 0 && (([WeakRetained includesAudioControlsContainer] & 1) != 0 || objc_msgSend(WeakRetained, "includesCustomAudioControls")))
  {
    if (*(a1 + 67) & 1) != 0 || (*(a1 + 68))
    {
      v10 = 1;
    }

    else
    {
      v10 = [WeakRetained showsAudioControls];
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [WeakRetained volumeControlsContainer];
  [v11 setIncluded:v10];

  v12 = [WeakRetained playbackControlsContainer];
  [v12 setIncluded:*(a1 + 69)];

  v13 = [WeakRetained visibilityDelegate];
  [v13 glassPlaybackControlsViewNeedsUpdateStatusBarAppearance:WeakRetained];

  if (*(a1 + 68) == 1)
  {
    v14 = [WeakRetained fullScreenButton];
    [v14 setIncluded:{objc_msgSend(WeakRetained, "prefersFullScreenButtonIncluded")}];

    v15 = [WeakRetained doneButton];
    [v15 setIncluded:{objc_msgSend(WeakRetained, "prefersDoneButtonIncluded")}];

    v16 = [WeakRetained pictureInPictureButton];
    [v16 setIncluded:{objc_msgSend(WeakRetained, "prefersPiPButtonIncluded")}];

    v17 = [WeakRetained routePickerView];
    [v17 setIncluded:{objc_msgSend(WeakRetained, "prefersRoutePickerButtonIncluded")}];

    if ((*(a1 + 65) & 1) == 0)
    {
      v18 = [WeakRetained screenModeControls];
      v19 = [WeakRetained _preferredArrangedDisplayModeViews];
      v20 = [v19 array];
      v36[0] = v20;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
      [v18 setArrangedSubviews:v21];

      if ((*(a1 + 70) & 1) == 0 && (*(a1 + 65) & 1) == 0)
      {
        v22 = [WeakRetained includesDisplayModeControlsContainer];
        v23 = [WeakRetained defaultDisplayModeControls];
        [WeakRetained _collapse:v22 ^ 1u views:v23];

        v24 = [WeakRetained _displayModeViewsToRemoveDuringAnimation];
        [WeakRetained _collapse:1 views:v24];
      }
    }

    if (v10)
    {
      v25 = [WeakRetained volumeControls];
      v26 = [WeakRetained _preferredArrangedAudioModeViews];
      v27 = [v26 array];
      v35 = v27;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
      [v25 setArrangedSubviews:v28];

      if ((*(a1 + 71) & 1) == 0)
      {
        v29 = [WeakRetained includesAudioControlsContainer];
        v30 = [WeakRetained defaultAudioControls];
        [WeakRetained _collapse:v29 ^ 1u views:v30];

        v31 = [WeakRetained _audioViewsToRemoveDuringAnimation];
        [WeakRetained _collapse:1 views:v31];
      }
    }

    v32 = [WeakRetained customAudioItems];
    [WeakRetained _collapse:0 views:v32];

    v33 = [WeakRetained customDisplayModeItems];
    [WeakRetained _collapse:0 views:v33];
  }

  [*(a1 + 32) performCoordinatedAnimations];
  v34 = *(a1 + 40);
  if (v34)
  {
    (*(v34 + 16))();
  }
}

void __108__AVCatalystGlassPlaybackControlsView__updatePlaybackControlsContainerVisibilityAnimated_additionalActions___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setMostRecentAnimationCompletionsID:0];
  if ((*(a1 + 40) & 1) != 0 || *(a1 + 41) == 1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __108__AVCatalystGlassPlaybackControlsView__updatePlaybackControlsContainerVisibilityAnimated_additionalActions___block_invoke_4;
    v3[3] = &unk_1E720A090;
    v3[4] = WeakRetained;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v3];
  }

  [WeakRetained reevaluateHiddenStateForContainersAndSubviews];
}

void __108__AVCatalystGlassPlaybackControlsView__updatePlaybackControlsContainerVisibilityAnimated_additionalActions___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained setMostRecentAnimationCompletionsID:0];
  v2 = [WeakRetained mostRecentAnimationCompletionsID];
  v3 = [v2 isEqual:*(a1 + 32)];

  if (v3)
  {
    (*(*(a1 + 48) + 16))();
    if (*(a1 + 64) == 1)
    {
      [*(a1 + 40) didFinishAnimations:1];
    }
  }
}

void __108__AVCatalystGlassPlaybackControlsView__updatePlaybackControlsContainerVisibilityAnimated_additionalActions___block_invoke_6(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setPlaybackControlsVisibilityAnimator:0];
  if (!a2)
  {
    (*(*(a1 + 40) + 16))();
  }

  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) didFinishAnimations:a2 == 0];
  }
}

void __108__AVCatalystGlassPlaybackControlsView__updatePlaybackControlsContainerVisibilityAnimated_additionalActions___block_invoke_4(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) volumeSlider];
  [v2 setIncluded:{objc_msgSend(*(a1 + 32), "prefersVolumeSliderExpandedAutomatically")}];

  v3 = [*(a1 + 32) volumeButton];
  [v3 setLongPressEnabled:{objc_msgSend(*(a1 + 32), "prefersVolumeSliderExpandedAutomatically") ^ 1}];

  v4 = [*(a1 + 32) screenModeControls];
  v5 = [*(a1 + 32) _preferredArrangedDisplayModeViews];
  v6 = [v5 array];
  v13[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v4 setArrangedSubviews:v7];

  v8 = [*(a1 + 32) volumeControls];
  v9 = [*(a1 + 32) _preferredArrangedAudioModeViews];
  v10 = [v9 array];
  v12 = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  [v8 setArrangedSubviews:v11];
}

- (void)updateDisplayControlsVisibilityIncludedButtons:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AVCatalystGlassPlaybackControlsView *)self fullScreenButton];
  -[AVCatalystGlassPlaybackControlsView setPrefersFullScreenButtonIncluded:](self, "setPrefersFullScreenButtonIncluded:", [v4 containsObject:v5]);

  v6 = [(AVCatalystGlassPlaybackControlsView *)self doneButton];
  -[AVCatalystGlassPlaybackControlsView setPrefersDoneButtonIncluded:](self, "setPrefersDoneButtonIncluded:", [v4 containsObject:v6]);

  v7 = [(AVCatalystGlassPlaybackControlsView *)self pictureInPictureButton];
  -[AVCatalystGlassPlaybackControlsView setPrefersPiPButtonIncluded:](self, "setPrefersPiPButtonIncluded:", [v4 containsObject:v7]);

  v8 = [(AVCatalystGlassPlaybackControlsView *)self routePickerView];
  v9 = [v4 containsObject:v8];

  [(AVCatalystGlassPlaybackControlsView *)self setPrefersRoutePickerButtonIncluded:v9];
  v10 = _AVLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if ([(AVCatalystGlassPlaybackControlsView *)self prefersFullScreenButtonIncluded])
    {
      v11 = "YES";
    }

    else
    {
      v11 = "NO";
    }

    v18 = 136315650;
    v19 = "[AVCatalystGlassPlaybackControlsView updateDisplayControlsVisibilityIncludedButtons:]";
    v20 = 2080;
    v21 = "[self prefersFullScreenButtonIncluded]";
    v22 = 2080;
    v23 = v11;
    _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v18, 0x20u);
  }

  v12 = _AVLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if ([(AVCatalystGlassPlaybackControlsView *)self prefersDoneButtonIncluded])
    {
      v13 = "YES";
    }

    else
    {
      v13 = "NO";
    }

    v18 = 136315650;
    v19 = "[AVCatalystGlassPlaybackControlsView updateDisplayControlsVisibilityIncludedButtons:]";
    v20 = 2080;
    v21 = "[self prefersDoneButtonIncluded]";
    v22 = 2080;
    v23 = v13;
    _os_log_impl(&dword_18B49C000, v12, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v18, 0x20u);
  }

  v14 = _AVLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if ([(AVCatalystGlassPlaybackControlsView *)self prefersPiPButtonIncluded])
    {
      v15 = "YES";
    }

    else
    {
      v15 = "NO";
    }

    v18 = 136315650;
    v19 = "[AVCatalystGlassPlaybackControlsView updateDisplayControlsVisibilityIncludedButtons:]";
    v20 = 2080;
    v21 = "[self prefersPiPButtonIncluded]";
    v22 = 2080;
    v23 = v15;
    _os_log_impl(&dword_18B49C000, v14, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v18, 0x20u);
  }

  v16 = _AVLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if ([(AVCatalystGlassPlaybackControlsView *)self prefersRoutePickerButtonIncluded])
    {
      v17 = "YES";
    }

    else
    {
      v17 = "NO";
    }

    v18 = 136315650;
    v19 = "[AVCatalystGlassPlaybackControlsView updateDisplayControlsVisibilityIncludedButtons:]";
    v20 = 2080;
    v21 = "[self prefersRoutePickerButtonIncluded]";
    v22 = 2080;
    v23 = v17;
    _os_log_impl(&dword_18B49C000, v16, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v18, 0x20u);
  }

  [(AVCatalystGlassPlaybackControlsView *)self _updatePlaybackControlsContainerVisibilityAnimated:1 additionalActions:0];
}

- (void)_collapse:(BOOL)a3 view:(id)a4
{
  v4 = a3;
  v5 = a4;
  if (objc_opt_respondsToSelector())
  {
    [v5 setCollapsed:v4];
  }

  else
  {
    [v5 setHidden:v4];
  }
}

- (void)_collapse:(BOOL)a3 views:(id)a4
{
  v4 = a3;
  v16 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(AVCatalystGlassPlaybackControlsView *)self _collapse:v4 view:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)_displayModeViewsToRemoveDuringAnimation
{
  v3 = [(AVCatalystGlassPlaybackControlsView *)self _currentArrangedDisplayModeViews];
  v4 = [v3 mutableCopy];

  v5 = [(AVCatalystGlassPlaybackControlsView *)self _preferredArrangedDisplayModeViews];
  [v4 minusOrderedSet:v5];

  v6 = [v4 array];

  return v6;
}

- (id)_audioViewsToRemoveDuringAnimation
{
  v3 = [(AVCatalystGlassPlaybackControlsView *)self _currentArrangedAudioModeViews];
  v4 = [v3 mutableCopy];

  v5 = [(AVCatalystGlassPlaybackControlsView *)self _preferredArrangedAudioModeViews];
  [v4 minusOrderedSet:v5];

  v6 = [v4 array];

  return v6;
}

- (id)_currentArrangedDisplayModeViews
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = [(AVCatalystGlassPlaybackControlsView *)self screenModeControls];
  v4 = [v3 arrangedSubviews];
  v5 = [v4 firstObject];
  v6 = [v2 orderedSetWithArray:v5];

  return v6;
}

- (id)_currentArrangedAudioModeViews
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = [(AVCatalystGlassPlaybackControlsView *)self volumeControls];
  v4 = [v3 arrangedSubviews];
  v5 = [v4 firstObject];
  v6 = [v2 orderedSetWithArray:v5];

  return v6;
}

- (id)_preferredArrangedDisplayModeViews
{
  v3 = MEMORY[0x1E695DFB8];
  v4 = [(AVCatalystGlassPlaybackControlsView *)self defaultDisplayModeControls];
  v5 = [(AVCatalystGlassPlaybackControlsView *)self customDisplayModeItems];
  v6 = [v4 arrayByAddingObjectsFromArray:v5];
  v7 = [v3 orderedSetWithArray:v6];

  return v7;
}

- (id)_preferredArrangedAudioModeViews
{
  v3 = MEMORY[0x1E695DFB8];
  v4 = [(AVCatalystGlassPlaybackControlsView *)self customAudioItems];
  v5 = [(AVCatalystGlassPlaybackControlsView *)self defaultAudioControls];
  v6 = [v4 arrayByAddingObjectsFromArray:v5];
  v7 = [v3 orderedSetWithArray:v6];

  return v7;
}

- (void)layoutSubviews
{
  v291 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v280.receiver = self;
  v280.super_class = AVCatalystGlassPlaybackControlsView;
  [(AVView *)&v280 layoutSubviews];
  if ([(AVCatalystGlassPlaybackControlsView *)self needsIntialLayout])
  {
    return;
  }

  v3 = [(AVCatalystGlassPlaybackControlsView *)self styleSheet];
  [(AVCatalystGlassPlaybackControlsView *)self _updateDoubleRowLayoutEnabled];
  v4 = [(AVCatalystGlassPlaybackControlsView *)self isFullScreen];
  v276 = 0u;
  v277 = 0u;
  v278 = 0u;
  v279 = 0u;
  v5 = [(AVCatalystGlassPlaybackControlsView *)self _playbackControlsViewItems];
  v6 = [v5 countByEnumeratingWithState:&v276 objects:v289 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v277;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v277 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v276 + 1) + 8 * i) setHasFullScreenAppearance:v4];
      }

      v7 = [v5 countByEnumeratingWithState:&v276 objects:v289 count:16];
    }

    while (v7);
  }

  [(AVGlassLayoutView *)self->_screenModeControls setHasFullScreenAppearance:v4];
  [(AVGlassLayoutView *)self->_volumeControls setHasFullScreenAppearance:v4];
  [(AVCatalystGlassTransportControlsView *)self->_transportControlsView setHasFullScreenAppearance:v4];
  v10 = [(AVButton *)self->_doneButton layoutAttributes];
  [v3 defaultInterItemSpacing];
  [v10 setTrailingInterItemSpace:?];

  v11 = [(AVButton *)self->_fullScreenButton layoutAttributes];
  [v3 defaultInterItemSpacing];
  [v11 setTrailingInterItemSpace:?];

  v12 = [(AVButton *)self->_pictureInPictureButton layoutAttributes];
  [v3 defaultInterItemSpacing];
  [v12 setTrailingInterItemSpace:?];

  v13 = [(AVPlaybackControlsRoutePickerView *)self->_routePickerView layoutAttributes];
  [v3 defaultInterItemSpacing];
  [v13 setTrailingInterItemSpace:?];

  [(AVCatalystGlassPlaybackControlsView *)self _updateLayoutMargins];
  v14 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
  v15 = [(AVCatalystGlassPlaybackControlsView *)self layoutMarginsGuide];
  [v15 layoutFrame];
  [v14 setFrame:?];

  v16 = [(AVCatalystGlassPlaybackControlsView *)self layoutMarginsGuide];
  [v16 layoutFrame];
  Width = CGRectGetWidth(v292);

  v18 = [(AVCatalystGlassPlaybackControlsView *)self layoutMarginsGuide];
  [v18 layoutFrame];
  Height = CGRectGetHeight(v293);

  [v3 defaultItemInlineSize];
  if (v20 >= Width)
  {
    v21 = v20;
  }

  else
  {
    v21 = Width;
  }

  [v3 maximumProminentPlayButtonDimension];
  if (v21 >= v22)
  {
    v21 = v22;
  }

  [v3 minimumProminentPlayButtonDimension];
  if (v23 >= Height)
  {
    v24 = v23;
  }

  else
  {
    v24 = Height;
  }

  [v3 maximumProminentPlayButtonDimension];
  if (v24 < v25)
  {
    v25 = v24;
  }

  if (v21 >= v25)
  {
    v21 = v25;
  }

  v26 = [(AVCatalystGlassPlaybackControlsView *)self prominentPlayButton];
  [v26 setExtrinsicContentSize:{v21, v21}];

  v27 = [(AVCatalystGlassPlaybackControlsView *)self prominentPlayButton];
  [v3 defaultItemInlineSize];
  [v27 setHasAlternateAppearance:v21 < v28];

  v29 = [(AVCatalystGlassPlaybackControlsView *)self prominentPlayButtonContainerView];
  [v29 setFrame:{0.0, 0.0, v21, v21}];

  v30 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
  [v30 bounds];
  MidX = CGRectGetMidX(v294);
  v32 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
  [v32 bounds];
  MidY = CGRectGetMidY(v295);

  v34 = [(AVCatalystGlassPlaybackControlsView *)self prominentPlayButtonContainerView];
  [v34 setCenter:{MidX, MidY}];

  if (v4)
  {
    [v3 defaultItemFullScreenSize];
  }

  else
  {
    [v3 defaultItemInlineSize];
  }

  v37 = v35;
  v38 = v36;
  v39 = [(AVCatalystGlassPlaybackControlsView *)self doneButton];
  [v39 setExtrinsicContentSize:{v37, v38}];

  v40 = [(AVCatalystGlassPlaybackControlsView *)self doneButton];
  v41 = [v40 layoutAttributes];
  [v41 setPrefersSecondaryMaterialOverlay:0];

  v42 = [(AVCatalystGlassPlaybackControlsView *)self fullScreenButton];
  [v42 setExtrinsicContentSize:{v37, v38}];

  v43 = [(AVCatalystGlassPlaybackControlsView *)self pictureInPictureButton];
  [v43 setExtrinsicContentSize:{v37, v38}];

  if ([(AVCatalystGlassPlaybackControlsView *)self isFullScreen])
  {
    [v3 routePickerButtonFullScreenSize];
  }

  else
  {
    [v3 routePickerButtonInlineSize];
  }

  v46 = v44;
  v47 = v45;
  if ([(AVCatalystGlassPlaybackControlsView *)self isFullScreen])
  {
    [v3 audioRoutePickerFullScreenSize];
  }

  else
  {
    [v3 routePickerButtonInlineSize];
  }

  v50 = v48;
  v51 = v49;
  v52 = [(AVCatalystGlassPlaybackControlsView *)self routePickerView];
  v53 = [v52 prioritizesVideoDevices];

  if (!v53)
  {
    v46 = v50;
    v47 = v51;
  }

  v54 = [(AVCatalystGlassPlaybackControlsView *)self routePickerView];
  [v54 setExtrinsicContentSize:{v46, v47}];

  v55 = [(AVCatalystGlassPlaybackControlsView *)self routePickerView];
  v56 = [v55 customButton];
  v57 = [v56 micaPackage];
  [v57 setTargetSize:{v46, v47}];

  v58 = [(AVCatalystGlassPlaybackControlsView *)self routePickerView];
  v59 = [v58 customButton];
  [v59 setHasFullScreenAppearance:{-[AVCatalystGlassPlaybackControlsView isFullScreen](self, "isFullScreen")}];

  v274 = 0u;
  v275 = 0u;
  v272 = 0u;
  v273 = 0u;
  v60 = [(AVCatalystGlassPlaybackControlsView *)self customDisplayModeItems];
  v61 = [v60 countByEnumeratingWithState:&v272 objects:v288 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v273;
    do
    {
      for (j = 0; j != v62; ++j)
      {
        if (*v273 != v63)
        {
          objc_enumerationMutation(v60);
        }

        [*(*(&v272 + 1) + 8 * j) setExtrinsicContentSize:{v37, v38}];
      }

      v62 = [v60 countByEnumeratingWithState:&v272 objects:v288 count:16];
    }

    while (v62);
  }

  v65 = [(AVCatalystGlassPlaybackControlsView *)self volumeButton];
  v66 = [v65 layoutAttributes];
  [v66 setDisplayPriority:4];

  v67 = [(AVCatalystGlassPlaybackControlsView *)self volumeSlider];
  v68 = [v67 layoutAttributes];
  [v68 setDisplayPriority:3];

  if ([(AVCatalystGlassPlaybackControlsView *)self isFullScreen])
  {
    v69 = [(AVCatalystGlassPlaybackControlsView *)self volumeButton];
    v70 = [(AVCatalystGlassPlaybackControlsView *)self volumeSlider];
    v71 = [v70 isIncluded];
    [v3 defaultItemFullScreenSize];
    if (v71)
    {
      v74 = v73 + 1.0;
      [v3 defaultItemFullScreenSize];
    }

    else
    {
      v74 = v72;
    }

    [v69 setExtrinsicContentSize:v74];

    v270 = 0u;
    v271 = 0u;
    v268 = 0u;
    v269 = 0u;
    v89 = [(AVCatalystGlassPlaybackControlsView *)self customAudioItems];
    v90 = [v89 countByEnumeratingWithState:&v268 objects:v287 count:16];
    if (v90)
    {
      v91 = v90;
      v92 = *v269;
      do
      {
        for (k = 0; k != v91; ++k)
        {
          if (*v269 != v92)
          {
            objc_enumerationMutation(v89);
          }

          v94 = *(*(&v268 + 1) + 8 * k);
          [v3 defaultItemFullScreenSize];
          [v94 setExtrinsicContentSize:?];
          v95 = [v94 layoutAttributes];
          [v95 setPrefersSecondaryMaterialOverlay:0];

          v96 = [(AVCatalystGlassPlaybackControlsView *)self volumeSlider];
          [v94 setIncluded:{objc_msgSend(v96, "isIncluded") ^ 1}];
        }

        v91 = [v89 countByEnumeratingWithState:&v268 objects:v287 count:16];
      }

      while (v91);
    }

    v97 = [(AVCatalystGlassPlaybackControlsView *)self traitCollection];
    if ([v97 horizontalSizeClass] == 1)
    {
      [(AVCatalystGlassPlaybackControlsView *)self bounds];
      v98 = CGRectGetHeight(v296);
      [(AVCatalystGlassPlaybackControlsView *)self bounds];
      v99 = CGRectGetWidth(v297);

      if (v98 > v99)
      {
        v81 = [(AVCatalystGlassPlaybackControlsView *)self volumeSlider];
        [v3 volumeSliderCompactFullScreenWidth];
LABEL_63:
        v101 = v100;
        [v3 defaultItemFullScreenSize];
        [v81 setExtrinsicContentSize:v101];
        goto LABEL_64;
      }
    }

    else
    {
    }

    v81 = [(AVCatalystGlassPlaybackControlsView *)self volumeSlider];
    [v3 volumeSliderRegularFullScreenWidth];
    goto LABEL_63;
  }

  v75 = [(AVCatalystGlassPlaybackControlsView *)self volumeSlider];
  [v3 volumeSliderInlineWidth];
  v77 = v76;
  [v3 defaultItemInlineSize];
  [v75 setExtrinsicContentSize:v77];

  v78 = [(AVCatalystGlassPlaybackControlsView *)self volumeButton];
  [v3 defaultItemInlineSize];
  v80 = v79 * 0.77;
  [v3 defaultItemInlineSize];
  [v78 setExtrinsicContentSize:v80];

  v266 = 0u;
  v267 = 0u;
  v264 = 0u;
  v265 = 0u;
  v81 = [(AVCatalystGlassPlaybackControlsView *)self customAudioItems];
  v82 = [v81 countByEnumeratingWithState:&v264 objects:v286 count:16];
  if (v82)
  {
    v83 = v82;
    v84 = *v265;
    do
    {
      for (m = 0; m != v83; ++m)
      {
        if (*v265 != v84)
        {
          objc_enumerationMutation(v81);
        }

        v86 = *(*(&v264 + 1) + 8 * m);
        [v3 defaultItemInlineSize];
        v88 = v87;
        [v3 defaultItemInlineSize];
        [v86 setExtrinsicContentSize:v88];
      }

      v83 = [v81 countByEnumeratingWithState:&v264 objects:v286 count:16];
    }

    while (v83);
  }

LABEL_64:

  [v3 defaultPlatterHeight];
  v103 = v102;
  v104 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsView];
  [v104 setExtrinsicContentSize:{Width, v103}];

  v105 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsView];
  [v105 intrinsicContentSize];
  v107 = v106;

  if (v107 >= Width)
  {
    v107 = Width;
  }

  [v3 minimumSingleButtonTransportControlsWidth];
  if (v107 < v108)
  {
    v107 = v108;
  }

  v109 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsView];
  [v109 setExtrinsicContentSize:{v107, v103}];

  if ([(AVCatalystGlassPlaybackControlsView *)self isFullScreen])
  {
    [v3 defaultItemFullScreenSize];
  }

  else
  {
    [v3 defaultItemInlineSize];
  }

  v111 = v110;
  v112 = [(AVCatalystGlassPlaybackControlsView *)self standardPlayPauseButton];
  [v112 setExtrinsicContentSize:{0.0, v111}];

  v113 = [(AVCatalystGlassPlaybackControlsView *)self skipBackButton];
  [v113 setExtrinsicContentSize:{0.0, v111}];

  v114 = [(AVCatalystGlassPlaybackControlsView *)self skipForwardButton];
  [v114 setExtrinsicContentSize:{0.0, v111}];

  v115 = [(AVCatalystGlassPlaybackControlsView *)self startLeftwardContentTransitionButton];
  [v115 setExtrinsicContentSize:{0.0, v111}];

  v116 = [(AVCatalystGlassPlaybackControlsView *)self startRightwardContentTransitionButton];
  [v116 setExtrinsicContentSize:{0.0, v111}];

  v117 = [(AVCatalystGlassPlaybackControlsView *)self mediaSelectionButton];
  [v117 setExtrinsicContentSize:{0.0, v111}];

  v118 = [(AVCatalystGlassPlaybackControlsView *)self controlOverflowButton];
  [v118 setExtrinsicContentSize:{0.0, v111}];

  v119 = [(AVCatalystGlassPlaybackControlsView *)self playbackSpeedButton];
  [v119 setExtrinsicContentSize:{0.0, v111}];

  v262 = 0u;
  v263 = 0u;
  v260 = 0u;
  v261 = 0u;
  v120 = [(AVCatalystGlassPlaybackControlsView *)self customMediaItems];
  v121 = [v120 countByEnumeratingWithState:&v260 objects:v285 count:16];
  if (v121)
  {
    v122 = v121;
    v123 = *v261;
    do
    {
      for (n = 0; n != v122; ++n)
      {
        if (*v261 != v123)
        {
          objc_enumerationMutation(v120);
        }

        [*(*(&v260 + 1) + 8 * n) setExtrinsicContentSize:{0.0, v111}];
      }

      v122 = [v120 countByEnumeratingWithState:&v260 objects:v285 count:16];
    }

    while (v122);
  }

  v125 = [(AVCatalystGlassPlaybackControlsView *)self isFullScreen];
  v126 = MEMORY[0x1E69DC5C0];
  if (!v125)
  {
    v127 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsView];
    if ([v127 isIncluded])
    {
      v128 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsView];
      [v128 extrinsicContentSize];
      if (v129 <= Width)
      {
        v131 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsView];
        [v131 extrinsicContentSize];
        v130 = v132 > Height;
      }

      else
      {
        v130 = 1;
      }
    }

    else
    {
      v130 = 1;
    }

    v133 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsView];
    [v133 setCollapsed:v130];

    v134 = [(AVCatalystGlassPlaybackControlsView *)self prominentPlayButton];
    if ([v134 isCollapsedOrExcluded])
    {
    }

    else
    {
      v135 = [(AVCatalystGlassPlaybackControlsView *)self preferredUnobscuredArea];

      if (v135 != 2)
      {
        v136 = [(AVCatalystGlassPlaybackControlsView *)self prominentPlayButton];
        v137 = v136;
        v138 = -Height;
        v139 = -Width;
        v140 = -Height;
        v141 = -Width;
        goto LABEL_90;
      }
    }

    v136 = [(AVCatalystGlassPlaybackControlsView *)self prominentPlayButton];
    v137 = v136;
    v138 = *v126;
    v139 = v126[1];
    v140 = v126[2];
    v141 = v126[3];
LABEL_90:
    [v136 setHitRectInsets:{v138, v139, v140, v141}];

    v142 = [(AVCatalystGlassPlaybackControlsView *)self prominentPlayButtonContainerView];
    [v142 setNeedsLayout];
  }

  if (self)
  {
    v143 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsView];
    [v143 intrinsicContentSize];
    v145 = v144;
    v147 = v146;

    v148 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
    [v148 frame];
    v149 = CGRectGetHeight(v298) - v147;

    v150 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
    [v150 frame];
    v151 = CGRectGetWidth(v299);

    if (v151 >= v145)
    {
      v151 = v145;
    }

    v152 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsContainerView];
    v153 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsContainerView];
    [v153 frame];
    [v152 setFrame:{CGRectGetMinX(v300), v149, v151, v147}];

    v154 = [(AVCatalystGlassPlaybackControlsView *)self styleSheet];
    [v154 minimumSingleButtonTransportControlsWidth];
    v156 = v155;

    v157 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
    v158 = v157;
    if (v151 == v156)
    {
      [v157 frame];
      v159 = CGRectGetHeight(v301) - v147;

      v160 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsContainerView];
      [v160 setFrame:{0.0, v159, v145, v147}];
    }

    else
    {
      [v157 center];
      v162 = v161;
      v163 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
      [v163 frame];
      v164 = v162 - CGRectGetMinX(v302);

      v165 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsContainerView];
      [v165 center];
      v167 = v166;

      if (v167 == v164)
      {
LABEL_99:
        v169 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsView];
        [v169 setFrame:{0.0, 0.0, v151, v147}];

        v170 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsView];
        [v170 setNeedsLayout];

        goto LABEL_100;
      }

      v160 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsContainerView];
      v168 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsContainerView];
      [v168 center];
      [v160 setCenter:v164];
    }

    goto LABEL_99;
  }

LABEL_100:
  v171 = [(AVCatalystGlassPlaybackControlsView *)self volumeSlider];
  v172 = Width;
  if ([v171 isIncluded])
  {
    v173 = [(AVCatalystGlassPlaybackControlsView *)self styleSheet];
    [v173 volumeSliderPadding];
    v172 = Width - v174;
  }

  [v3 standardInteritemPadding];
  v176 = v175;
  if ([(AVCatalystGlassPlaybackControlsView *)self preferredUnobscuredArea]== 2)
  {
    if ([(AVCatalystGlassPlaybackControlsView *)self isFullScreen])
    {
      [v3 standardPaddingFullScreen];
    }

    else
    {
      [v3 standardPaddingInline];
    }

    v179 = v177;
    [v3 maximumProminentPlayButtonDimension];
    v178 = v180 + v179 * 2.0;
  }

  else
  {
    v178 = v103 + v176;
  }

  v181 = Height - v178;
  v182 = [(AVCatalystGlassPlaybackControlsView *)self volumeControls];
  v183 = [v182 prioritizedSizeThatFitsSize:{v172, v181}];

  v184 = [(AVCatalystGlassPlaybackControlsView *)self screenModeControls];
  v185 = [v184 prioritizedSizeThatFitsSize:{v172, v181}];

  v186 = [AVPrioritizedSize sizesResolvingFirstPrioritizedSize:v183 secondPrioritizedSize:v185 inAvailableWidth:v172];
  v187 = [v186 objectAtIndexedSubscript:0];
  [v187 CGSizeValue];
  v189 = v188;
  v191 = v190;

  v192 = [v186 objectAtIndexedSubscript:1];
  [v192 CGSizeValue];
  v194 = v193;
  v196 = v195;
  v197 = *&v195;

  if (v191 >= v196)
  {
    v198 = v196;
  }

  else
  {
    v198 = v191;
  }

  if ((v197 <= -1 || ((v197 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v197 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v201 = v191;
  }

  else
  {
    v201 = v198;
  }

  if ((*&v201 > -1 && ((*&v201 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v201 - 1) < 0xFFFFFFFFFFFFFLL) && v201 < v196)
  {
    v205 = v201;
  }

  else
  {
    v205 = v196;
  }

  if ([(AVCatalystGlassPlaybackControlsView *)self effectiveUserInterfaceLayoutDirection])
  {
    v206 = Width - v194;
  }

  else
  {
    v206 = 0.0;
  }

  v207 = [(AVCatalystGlassPlaybackControlsView *)self screenModeControls];
  v259 = v181;
  [v207 setCollapsed:v205 > v181];

  v208 = [(AVCatalystGlassPlaybackControlsView *)self screenModeControls];
  [v3 defaultPlatterHeight];
  [v208 setFrame:{v206, 0.0, v194, v209}];

  v210 = [(AVCatalystGlassPlaybackControlsView *)self screenModeControls];
  [v210 setNeedsLayout];

  v211 = [(AVCatalystGlassPlaybackControlsView *)self screenModeControls];
  [v211 layoutIfNeeded];

  v212 = [(AVCatalystGlassPlaybackControlsView *)self volumeSlider];
  [v212 extrinsicContentSize];
  v214 = v213;
  v215 = [(AVCatalystGlassPlaybackControlsView *)self volumeButton];
  [v215 extrinsicContentSize];
  v217 = v216;

  v218 = *v126;
  v219 = v126[1];
  v220 = v126[2];
  v221 = v126[3];
  v222 = [(AVCatalystGlassPlaybackControlsView *)self volumeSlider];
  LODWORD(v215) = [v222 isIncluded];

  if (v215 && v189 >= v214 + v217)
  {
    v223 = [(AVCatalystGlassPlaybackControlsView *)self styleSheet];
    [v223 volumeSliderPadding];
    v225 = v224;

    v226 = [(AVCatalystGlassPlaybackControlsView *)self effectiveUserInterfaceLayoutDirection];
    v227 = [(AVCatalystGlassPlaybackControlsView *)self styleSheet];
    [v227 volumeSliderPadding];
    v229 = v228;

    if (v226 == 1)
    {
      v221 = v229;
    }

    else
    {
      v219 = v229;
    }

    v189 = v189 + v225;
  }

  v230 = [(AVCatalystGlassPlaybackControlsView *)self volumeControls];
  [v230 setContentLayoutMargins:{v218, v219, v220, v221}];

  if (self)
  {
    v283 = 0u;
    v284 = 0u;
    v281 = 0u;
    v282 = 0u;
    v231 = [(AVCatalystGlassPlaybackControlsView *)self customAudioItems];
    v232 = [v231 countByEnumeratingWithState:&v281 objects:v290 count:16];
    if (v232)
    {
      v233 = v232;
      v234 = *v282;
      while (2)
      {
        for (ii = 0; ii != v233; ++ii)
        {
          if (*v282 != v234)
          {
            objc_enumerationMutation(v231);
          }

          if (![*(*(&v281 + 1) + 8 * ii) isCollapsed])
          {
            v236 = 1;
            goto LABEL_152;
          }
        }

        v233 = [v231 countByEnumeratingWithState:&v281 objects:v290 count:16];
        if (v233)
        {
          continue;
        }

        break;
      }
    }

    v236 = 0;
LABEL_152:

    v237 = [(AVCatalystGlassPlaybackControlsView *)self volumeSlider];
    v238 = [v237 isCollapsedOrExcluded];

    v239 = -44.0;
    if ((v236 & 1) == 0 && (v238 & 1) == 0)
    {
      v240 = [(AVCatalystGlassPlaybackControlsView *)self volumeSlider];
      [v240 frame];
      v241 = CGRectGetWidth(v303);
      v242 = [(AVCatalystGlassPlaybackControlsView *)self volumeSlider];
      [v242 value];
      v244 = v241 * (v243 + -1.0);

      v239 = fmin(fmax(v244, -44.0) * 0.5, 0.0);
    }

    v245 = [(AVCatalystGlassPlaybackControlsView *)self volumeButton];
    [v245 setHitRectInsets:{-16.0, v239, -24.0, -16.0}];

    [(AVCatalystGlassPlaybackControlsView *)self layoutMargins];
    v247 = v246;
    if (![(AVCatalystGlassPlaybackControlsView *)self isFullScreen])
    {
      if ([(AVCatalystGlassPlaybackControlsView *)self preferredUnobscuredArea]== 1)
      {
        v248 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
        [v248 frame];
        v247 = CGRectGetMaxY(v304) - v201;
      }

      else
      {
        [(AVCatalystGlassPlaybackControlsView *)self layoutMargins];
        v247 = v249;
      }
    }

    if ([(AVCatalystGlassPlaybackControlsView *)self effectiveUserInterfaceLayoutDirection]== 1)
    {
      v250 = [(AVCatalystGlassPlaybackControlsView *)self layoutMarginsGuide];
      [v250 layoutFrame];
      MinX = CGRectGetMinX(v305);
    }

    else
    {
      v250 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
      [v250 frame];
      MinX = CGRectGetMaxX(v306) - v189;
    }

    v252 = [(AVCatalystGlassPlaybackControlsView *)self volumeControlsContainer];
    [(AVCatalystGlassStyleSheet *)self->_styleSheet defaultPlatterHeight];
    [v252 setFrame:{MinX, v247, v189, v253}];

    v254 = [(AVCatalystGlassPlaybackControlsView *)self volumeControls];
    v255 = [(AVCatalystGlassPlaybackControlsView *)self volumeControlsContainer];
    [v255 bounds];
    [v254 setFrame:?];

    v256 = [(AVCatalystGlassPlaybackControlsView *)self volumeControls];
    [v256 setNeedsLayout];
  }

  v257 = [(AVCatalystGlassPlaybackControlsView *)self volumeControlsContainer];
  [v257 setCollapsed:v201 > v259];

  dimmingView = self->_dimmingView;
  [(AVCatalystGlassPlaybackControlsView *)self bounds];
  [(AVView *)dimmingView setFrame:?];
  kdebug_trace();
}

- (void)_updateDoubleRowLayoutEnabled
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v2 = [a1 isDoubleRowLayoutEnabled];
  if (![a1 isFullScreen])
  {
    goto LABEL_8;
  }

  v3 = [a1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (!v4)
  {
    [a1 bounds];
    Width = CGRectGetWidth(v20);
    [a1 bounds];
    v9 = Width < CGRectGetHeight(v21);
    goto LABEL_12;
  }

  v5 = [a1 traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 != 1)
  {
LABEL_8:
    if ((v2 & 1) == 0)
    {
      return;
    }

    v9 = 0;
    goto LABEL_13;
  }

  v7 = [a1 transportControlsView];
  v8 = [v7 customContentTransitioningInfoPanel];

  if (!v8)
  {
    v11 = [a1 traitCollection];
    v9 = [v11 horizontalSizeClass] == 1;

LABEL_12:
    if (v2 == v9)
    {
      return;
    }

    goto LABEL_13;
  }

  if (v2)
  {
    return;
  }

  v9 = 1;
LABEL_13:
  v12 = _AVLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = _AVMethodProem(a1);
    v15 = 138412546;
    v16 = v13;
    v17 = 1024;
    v18 = v9;
    _os_log_impl(&dword_18B49C000, v12, OS_LOG_TYPE_DEFAULT, "%@ %d", &v15, 0x12u);
  }

  [a1 setDoubleRowLayoutEnabled:v9];
  v14 = [a1 transportControlsView];
  [v14 setDoubleRowLayoutEnabled:v9];
}

- (void)_updateLayoutMargins
{
  if (a1)
  {
    if (([a1 isFullScreen] & 1) != 0 || (objc_msgSend(a1, "overrideLayoutMarginsWhenEmbeddedInline"), v2 = objc_claimAutoreleasedReturnValue(), v2, !v2))
    {
      v17 = [a1 styleSheet];
      [a1 keyboardHeight];
      [v17 playbackControlsViewLayoutMarginsForView:a1 keyboardHeight:objc_msgSend(a1 isFullScreen:{"isFullScreen"), v18}];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      [a1 layoutMargins];
      if (v22 != v30 || v20 != v27 || v26 != v29 || v24 != v28)
      {

        [a1 setLayoutMargins:{v20, v22, v24, v26}];
      }
    }

    else
    {
      v3 = [a1 overrideLayoutMarginsWhenEmbeddedInline];
      [v3 UIEdgeInsetsValue];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
      [a1 layoutMargins];
      if (v7 == v15 && v5 == v12 && v11 == v14)
      {
        v16 = v13;

        if (v9 == v16)
        {
          return;
        }
      }

      else
      {
      }

      v31 = [a1 overrideLayoutMarginsWhenEmbeddedInline];
      [v31 UIEdgeInsetsValue];
      [a1 setLayoutMargins:?];
    }
  }
}

- (void)avkit_reevaluateHiddenStateOfItem:(id)a3
{
  v12 = a3;
  v4 = [v12 isCollapsedOrExcluded];
  v5 = 1.0;
  if (v4)
  {
    v5 = 0.0;
  }

  [v12 setAlpha:v5];
  v6 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsVisibilityAnimator];
  if (([v6 isRunning] & 1) != 0 || objc_msgSend(MEMORY[0x1E69DD250], "_isInAnimationBlock"))
  {

    if ((v4 & 1) == 0)
    {
      v7 = v12;
      v8 = 0;
LABEL_12:
      [v7 setHidden:v8];
      goto LABEL_13;
    }
  }

  else
  {
  }

  v9 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsVisibilityAnimator];
  if (([v9 isRunning] & 1) == 0)
  {
    v10 = [MEMORY[0x1E69DD250] _isInAnimationBlock];

    v11 = v12;
    if (v10)
    {
      goto LABEL_14;
    }

    v7 = v12;
    v8 = v4;
    goto LABEL_12;
  }

LABEL_13:
  v11 = v12;
LABEL_14:
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = AVCatalystGlassPlaybackControlsView;
  [(AVCatalystGlassPlaybackControlsView *)&v3 safeAreaInsetsDidChange];
  [(AVCatalystGlassPlaybackControlsView *)self _updateLayoutMargins];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = AVCatalystGlassPlaybackControlsView;
  [(AVCatalystGlassPlaybackControlsView *)&v4 traitCollectionDidChange:a3];
  [(AVCatalystGlassPlaybackControlsView *)self _updateLayoutMargins];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(UIView *)self avkit_hitTestControlForPoint:v7 withEvent:x, y];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = AVCatalystGlassPlaybackControlsView;
    v10 = [(AVView *)&v14 hitTest:v7 withEvent:x, y];
  }

  v11 = v10;

  if (v11 == self)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  return v12;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = AVCatalystGlassPlaybackControlsView;
  [(AVGlassBackedView *)&v4 didMoveToWindow];
  [(AVGlassBackedView *)self setBackgroundMaterialStyle:6];
  [(AVGlassBackedView *)self setBackgroundMaterialized:1];
  [(AVCatalystGlassPlaybackControlsView *)&self->super.super.super.super.super.isa _setUpDimmingViewIfNeeded];
  if (self)
  {
    dimmingView = self->_dimmingView;
    if (dimmingView)
    {
      [(AVView *)dimmingView setHidden:[(AVCatalystGlassPlaybackControlsView *)self showsDimmingView]^ 1];
    }
  }

  [(AVCatalystGlassPlaybackControlsView *)self _updatePlaybackControlsContainerVisibilityAnimated:0 additionalActions:0];
}

- (id)_setUpDimmingViewIfNeeded
{
  if (result)
  {
    v1 = result;
    v2 = [result showsPlaybackControls];
    result = [v1 showsDimmingView];
    if (v1[109])
    {
      v3 = 1;
    }

    else
    {
      v3 = result == 0;
    }

    if (!v3 && v2 != 0)
    {
      v5 = [AVView alloc];
      v6 = [(AVView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v7 = v1[109];
      v1[109] = v6;

      v8 = v1[109];
      v9 = [MEMORY[0x1E69DC888] blackColor];
      v10 = [v9 colorWithAlphaComponent:0.4];
      [v8 setBackgroundColor:v10];

      [v1[109] setIgnoresTouches:1];
      [v1[109] setUserInteractionEnabled:0];
      [v1 insertSubview:v1[109] atIndex:0];

      return [v1 setNeedsLayout];
    }
  }

  return result;
}

- (void)setShowsDimmingView:(BOOL)a3
{
  if (self->_showsDimmingView != a3)
  {
    self->_showsDimmingView = a3;
    [(AVCatalystGlassPlaybackControlsView *)&self->super.super.super.super.super.isa _setUpDimmingViewIfNeeded];
    dimmingView = self->_dimmingView;
    if (dimmingView)
    {
      v5 = [(AVCatalystGlassPlaybackControlsView *)self showsDimmingView]^ 1;

      [(AVView *)dimmingView setHidden:v5];
    }
  }
}

- (void)setPrefersVolumeSliderExpanded:(BOOL)a3 prefersVolumeButtonIncluded:(BOOL)a4 animated:(BOOL)a5
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __107__AVCatalystGlassPlaybackControlsView_setPrefersVolumeSliderExpanded_prefersVolumeButtonIncluded_animated___block_invoke;
  aBlock[3] = &unk_1E7208658;
  aBlock[4] = self;
  v23 = a3;
  v24 = a4;
  v7 = _Block_copy(aBlock);
  v8 = [(AVCatalystGlassPlaybackControlsView *)self volumeControls];
  v9 = [v8 hasVisibleArrangedSubview];

  if (!v9 || !a5)
  {
LABEL_6:
    v7[2](v7);
    goto LABEL_7;
  }

  v10 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsVisibilityAnimator];
  v11 = [v10 isRunning];

  if (!v11)
  {
    if (![MEMORY[0x1E69DD250] _isInAnimationBlock])
    {
      v13 = [objc_alloc(MEMORY[0x1E69DCF88]) initWithDampingRatio:0.75];
      v14 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:v13 timingParameters:0.5];
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __107__AVCatalystGlassPlaybackControlsView_setPrefersVolumeSliderExpanded_prefersVolumeButtonIncluded_animated___block_invoke_3;
      v18 = &unk_1E72099C8;
      v19 = v7;
      [v14 addAnimations:&v15];
      [(AVCatalystGlassPlaybackControlsView *)self setPlaybackControlsVisibilityAnimator:v14, v15, v16, v17, v18];
      [v14 startAnimation];

      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v12 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsVisibilityAnimator];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __107__AVCatalystGlassPlaybackControlsView_setPrefersVolumeSliderExpanded_prefersVolumeButtonIncluded_animated___block_invoke_2;
  v20[3] = &unk_1E7209280;
  v21 = v7;
  [v12 addCompletion:v20];

LABEL_7:
}

uint64_t __107__AVCatalystGlassPlaybackControlsView_setPrefersVolumeSliderExpanded_prefersVolumeButtonIncluded_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) volumeSlider];
  [v2 setIncluded:*(a1 + 40)];

  v3 = [*(a1 + 32) volumeButton];
  [v3 setIncluded:*(a1 + 41)];

  v4 = [*(a1 + 32) volumeButton];
  [v4 setLongPressEnabled:(*(a1 + 40) & 1) == 0];

  [*(a1 + 32) setNeedsLayout];
  v5 = *(a1 + 32);

  return [v5 layoutIfNeeded];
}

uint64_t __107__AVCatalystGlassPlaybackControlsView_setPrefersVolumeSliderExpanded_prefersVolumeButtonIncluded_animated___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)setShowsAudioControls:(BOOL)a3
{
  if (self->_showsAudioControls != a3)
  {
    self->_showsAudioControls = a3;
    v4 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
    v5 = [v4 isCollapsedOrExcluded];

    v6 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsVisibilityAnimator];
    v7 = [v6 isRunning];

    if (!v7)
    {
      if (v5)
      {

        [(AVCatalystGlassPlaybackControlsView *)self _updatePlaybackControlsContainerVisibilityAnimated:1 additionalActions:0];
      }
    }
  }
}

- (void)showPlaybackControls:(BOOL)a3 immediately:(BOOL)a4
{
  v4 = a4;
  showsPlaybackControls = self->_showsPlaybackControls;
  if (showsPlaybackControls != a3 || self->_showsAudioControls != showsPlaybackControls)
  {
    [(AVCatalystGlassPlaybackControlsView *)self setShowsPlaybackControls:?];

    [(AVCatalystGlassPlaybackControlsView *)self _showPlaybackControlsAnimated:!v4];
  }
}

- (void)setShowsPlaybackControls:(BOOL)a3
{
  showsPlaybackControls = self->_showsPlaybackControls;
  if (showsPlaybackControls != a3)
  {
    self->_showsPlaybackControls = a3;
    showsPlaybackControls = a3;
  }

  if (showsPlaybackControls != self->_showsAudioControls)
  {
    self->_showsAudioControls = showsPlaybackControls;
  }

  [(AVCatalystGlassPlaybackControlsView *)&self->super.super.super.super.super.isa _setUpDimmingViewIfNeeded];
  v5 = [(AVCatalystGlassPlaybackControlsView *)self visibilityDelegate];
  [v5 glassPlaybackControlsViewDidToggleControlsVisibility:self];
}

- (BOOL)hasVisibleSubview
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(AVCatalystGlassPlaybackControlsView *)self subviews];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v7 + 1) + 8 * i) isHiddenOrHasHiddenAncestor])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)animateAlongsideVisibilityAnimationsWithAnimationCoordinator:(id)a3 appearingViews:(id)a4 disappearingViews:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(AVCatalystGlassPlaybackControlsView *)self _isInAWindow]&& ([(AVCatalystGlassPlaybackControlsView *)self isHiddenOrHasHiddenAncestor]& 1) == 0)
  {
    v11 = [(AVCatalystGlassPlaybackControlsView *)self volumeControlsContainer];
    v12 = [v9 containsObject:v11];

    v13 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
    v14 = [v9 containsObject:v13];

    v15 = [(AVCatalystGlassPlaybackControlsView *)self volumeControlsContainer];
    LOBYTE(v13) = [v10 containsObject:v15];

    v16 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
    v17 = [v10 containsObject:v16];

    objc_initWeak(&location, self);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __133__AVCatalystGlassPlaybackControlsView_animateAlongsideVisibilityAnimationsWithAnimationCoordinator_appearingViews_disappearingViews___block_invoke;
    v22[3] = &unk_1E7208608;
    objc_copyWeak(&v23, &location);
    v24 = v14;
    v25 = v12;
    v22[4] = self;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __133__AVCatalystGlassPlaybackControlsView_animateAlongsideVisibilityAnimationsWithAnimationCoordinator_appearingViews_disappearingViews___block_invoke_4;
    v18[3] = &unk_1E7208630;
    objc_copyWeak(&v19, &location);
    v20 = v13;
    v21 = v17;
    [v8 addCoordinatedAnimations:v22 completion:v18];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }
}

void __133__AVCatalystGlassPlaybackControlsView_animateAlongsideVisibilityAnimationsWithAnimationCoordinator_appearingViews_disappearingViews___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(AVCatalystGlassPlaybackControlsView *)WeakRetained _updateAreVolumeAndTransportControlsVisible];
  if (*(a1 + 48) == 1 && (*(a1 + 49) & 1) == 0)
  {
    v3 = [WeakRetained traitCollection];
    [v3 displayCornerRadius];
    v5 = v4;

    if (v5 == 0.0)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __133__AVCatalystGlassPlaybackControlsView_animateAlongsideVisibilityAnimationsWithAnimationCoordinator_appearingViews_disappearingViews___block_invoke_2;
      v11[3] = &unk_1E7209FB0;
      v6 = *(a1 + 32);
      v11[4] = WeakRetained;
      v11[5] = v6;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v11];
    }
  }

  v7 = [WeakRetained screenModeControls];
  v8 = *(MEMORY[0x1E695EFD0] + 16);
  v10[0] = *MEMORY[0x1E695EFD0];
  v10[1] = v8;
  v10[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v7 setTransform:v10];

  [WeakRetained setNeedsLayout];
  if (*(a1 + 48) == 1 && *(a1 + 49) == 1)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __133__AVCatalystGlassPlaybackControlsView_animateAlongsideVisibilityAnimationsWithAnimationCoordinator_appearingViews_disappearingViews___block_invoke_3;
    v9[3] = &unk_1E720A090;
    v9[4] = WeakRetained;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v9];
  }

  else
  {
    [WeakRetained layoutIfNeeded];
  }
}

void __133__AVCatalystGlassPlaybackControlsView_animateAlongsideVisibilityAnimationsWithAnimationCoordinator_appearingViews_disappearingViews___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ((*(a1 + 40) & 1) != 0 || *(a1 + 41) == 1)
  {
    v3 = WeakRetained;
    [WeakRetained setNeedsLayout];
    [v3 layoutIfNeeded];
    WeakRetained = v3;
  }
}

void __133__AVCatalystGlassPlaybackControlsView_animateAlongsideVisibilityAnimationsWithAnimationCoordinator_appearingViews_disappearingViews___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) window];
  v3 = [v2 windowScene];
  v4 = [v3 statusBarManager];
  [v4 statusBarFrame];
  v6 = v5;

  LOBYTE(v3) = [*(a1 + 40) isFullScreen];
  v7 = [*(a1 + 40) styleSheet];
  v8 = v7;
  if (v3)
  {
    [v7 standardPaddingFullScreen];
  }

  else
  {
    [v7 standardPaddingInline];
  }

  v10 = v9;

  v11 = [*(a1 + 32) screenModeControls];
  CGAffineTransformMakeTranslation(&v12, 0.0, fmax(v6 + v10 * 0.5 - v10, 0.0));
  [v11 setTransform:&v12];
}

- (void)setStyleSheet:(id)a3
{
  v8 = a3;
  v5 = [(AVCatalystGlassPlaybackControlsView *)self styleSheet];
  v6 = [v5 isEqual:v8];

  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_styleSheet, a3);
    v7 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsView];
    [v7 setStyleSheet:v8];

    [(AVCatalystGlassPlaybackControlsView *)self setNeedsLayout];
  }
}

- (void)setCustomControlItems:(id)a3 animations:(id)a4
{
  v18 = a3;
  v6 = a4;
  if (![(NSArray *)self->_customControlItems isEqualToArray:v18])
  {
    v7 = [v18 copy];
    customControlItems = self->_customControlItems;
    self->_customControlItems = v7;

    v9 = [(AVCatalystGlassPlaybackControlsView *)self customControlItems];
    v10 = [(AVCatalystGlassPlaybackControlsView *)self _playbackControlsViewsForControlItems:v9 withType:2];
    customMediaItems = self->_customMediaItems;
    self->_customMediaItems = v10;

    v12 = [(AVCatalystGlassPlaybackControlsView *)self customControlItems];
    v13 = [(AVCatalystGlassPlaybackControlsView *)self _playbackControlsViewsForControlItems:v12 withType:0];
    customDisplayModeItems = self->_customDisplayModeItems;
    self->_customDisplayModeItems = v13;

    v15 = [(AVCatalystGlassPlaybackControlsView *)self customControlItems];
    v16 = [(AVCatalystGlassPlaybackControlsView *)self _playbackControlsViewsForControlItems:v15 withType:1];
    customAudioItems = self->_customAudioItems;
    self->_customAudioItems = v16;

    [(AVCatalystGlassPlaybackControlsView *)self _updatePlaybackControlsContainerVisibilityAnimated:1 additionalActions:v6];
  }
}

- (BOOL)includesCustomDisplayModeControls
{
  if ([(AVCatalystGlassPlaybackControlsView *)self showsProminentPlayButton])
  {
    return 0;
  }

  v4 = [(AVCatalystGlassPlaybackControlsView *)self customDisplayModeItems];
  v3 = [v4 count] != 0;

  return v3;
}

- (BOOL)includesDisplayModeControlsContainer
{
  if ([(AVCatalystGlassPlaybackControlsView *)self showsProminentPlayButton])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    return (LOBYTE(self->_includedContainers) >> 3) & 1;
  }

  return v3;
}

- (BOOL)includesTransportControls
{
  if ([(AVCatalystGlassPlaybackControlsView *)self showsProminentPlayButton])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    return (LOBYTE(self->_includedContainers) >> 2) & 1;
  }

  return v3;
}

- (BOOL)includesCustomAudioControls
{
  if ([(AVCatalystGlassPlaybackControlsView *)self showsProminentPlayButton])
  {
    return 0;
  }

  v4 = [(AVCatalystGlassPlaybackControlsView *)self customAudioItems];
  v3 = [v4 count] != 0;

  return v3;
}

- (BOOL)includesAudioControlsContainer
{
  if ([(AVCatalystGlassPlaybackControlsView *)self showsProminentPlayButton])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    return (LOBYTE(self->_includedContainers) >> 4) & 1;
  }

  return v3;
}

- (void)setOverrideLayoutMarginsWhenEmbeddedInline:(id)a3
{
  v5 = a3;
  if (![(NSValue *)self->_overrideLayoutMarginsWhenEmbeddedInline isEqualToValue:?])
  {
    objc_storeStrong(&self->_overrideLayoutMarginsWhenEmbeddedInline, a3);
    if (![(AVCatalystGlassPlaybackControlsView *)self isFullScreen])
    {
      [(AVCatalystGlassPlaybackControlsView *)self setNeedsLayout];
    }
  }
}

- (void)setOverrideTransformForProminentPlayButton:(CGAffineTransform *)a3
{
  p_overrideTransformForProminentPlayButton = &self->_overrideTransformForProminentPlayButton;
  v5 = *&a3->c;
  v4 = *&a3->tx;
  *&self->_overrideTransformForProminentPlayButton.a = *&a3->a;
  *&self->_overrideTransformForProminentPlayButton.c = v5;
  *&self->_overrideTransformForProminentPlayButton.tx = v4;
  v6 = [(AVCatalystGlassPlaybackControlsView *)self prominentPlayButtonContainerView];
  v7 = *&p_overrideTransformForProminentPlayButton->c;
  v8[0] = *&p_overrideTransformForProminentPlayButton->a;
  v8[1] = v7;
  v8[2] = *&p_overrideTransformForProminentPlayButton->tx;
  [v6 setTransform:v8];
}

- (void)setIncludedContainers:(int64_t)a3 animations:(id)a4
{
  if (self->_includedContainers != a3)
  {
    self->_includedContainers = a3;
    [(AVCatalystGlassPlaybackControlsView *)self _updatePlaybackControlsContainerVisibilityAnimated:1 additionalActions:a4];
  }
}

- (void)setFullScreen:(BOOL)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_fullScreen != a3)
  {
    v3 = a3;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[AVCatalystGlassPlaybackControlsView setFullScreen:]";
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d", &v6, 0x12u);
    }

    self->_fullScreen = v3;
    [(AVCatalystGlassPlaybackControlsView *)self _updateLayoutMargins];
    [(AVCatalystGlassPlaybackControlsView *)self _updateDoubleRowLayoutEnabled];
    [(AVCatalystGlassPlaybackControlsView *)self setNeedsLayout];
  }
}

- (void)setupInitialLayout
{
  v29 = *MEMORY[0x1E69E9840];
  if ([(AVCatalystGlassPlaybackControlsView *)self needsIntialLayout]&& self)
  {
    if (![(AVCatalystGlassPlaybackControlsView *)self needsIntialLayout])
    {
      v3 = _AVLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v21 = _AVMethodProem(self);
        *buf = 138412290;
        v28 = v21;
        _os_log_error_impl(&dword_18B49C000, v3, OS_LOG_TYPE_ERROR, "%@ called when initial layout not needed already set.", buf, 0xCu);
      }
    }

    [(AVCatalystGlassPlaybackControlsView *)self setNeedsIntialLayout:0];
    [(AVCatalystGlassPlaybackControlsView *)self setEdgesInsettingLayoutMarginsFromSafeArea:0];
    [(AVCatalystGlassPlaybackControlsView *)self _updateLayoutMargins];
    [(AVCatalystGlassPlaybackControlsView *)&self->super.super.super.super.super.isa _setUpDimmingViewIfNeeded];
    dimmingView = self->_dimmingView;
    if (dimmingView)
    {
      [(AVView *)dimmingView setHidden:[(AVCatalystGlassPlaybackControlsView *)self showsDimmingView]^ 1];
    }

    v5 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
    [(AVCatalystGlassPlaybackControlsView *)self addSubview:v5];

    v6 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
    v7 = [(AVCatalystGlassPlaybackControlsView *)self layoutMarginsGuide];
    [v7 layoutFrame];
    [v6 setFrame:?];

    v8 = [(AVCatalystGlassPlaybackControlsView *)self volumeControlsContainer];
    [(AVCatalystGlassPlaybackControlsView *)self addSubview:v8];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    transportControlsContainerView = self->_transportControlsContainerView;
    v26[0] = self->_screenModeControls;
    v26[1] = transportControlsContainerView;
    v26[2] = self->_prominentPlayButtonContainerView;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:{3, 0}];
    v11 = [v10 countByEnumeratingWithState:&v22 objects:buf count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
          [v16 addSubview:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:buf count:16];
      }

      while (v12);
    }

    [(AVCatalystGlassPlaybackControlsView *)self avkit_reevaluateHiddenStateOfItem:self->_screenModeControls];
    [(AVCatalystGlassPlaybackControlsView *)self avkit_reevaluateHiddenStateOfItem:self->_prominentPlayButtonContainerView];
    [(AVCatalystGlassPlaybackControlsView *)self avkit_reevaluateHiddenStateOfItem:self->_volumeControlsContainer];
    v17 = [(AVCatalystGlassPlaybackControlsView *)self volumeControlsContainer];
    v18 = [(AVCatalystGlassPlaybackControlsView *)self volumeControls];
    [v17 addSubview:v18];

    v19 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsContainerView];
    v20 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsView];
    [v19 addSubview:v20];
  }
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(AVCatalystGlassPlaybackControlsView *)self observationController];
  [v3 stopAllObservation];

  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v7 = "[AVCatalystGlassPlaybackControlsView dealloc]";
    v8 = 1024;
    v9 = 280;
    v10 = 2048;
    v11 = self;
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  v5.receiver = self;
  v5.super_class = AVCatalystGlassPlaybackControlsView;
  [(AVCatalystGlassPlaybackControlsView *)&v5 dealloc];
}

- (AVCatalystGlassPlaybackControlsView)initWithFrame:(CGRect)a3 styleSheet:(id)a4
{
  height = a3.size.height;
  rect = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v161 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = _AVLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v156 = "[AVCatalystGlassPlaybackControlsView initWithFrame:styleSheet:]";
    v157 = 1024;
    v158 = 98;
    v159 = 2048;
    v160 = self;
    _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  v148.receiver = self;
  v148.super_class = AVCatalystGlassPlaybackControlsView;
  v11 = [(AVGlassBackedView *)&v148 initWithFrame:x, y, rect, height];
  v12 = v11;
  if (v11)
  {
    [(AVView *)v11 setHidden:1];
    customControlItems = v12->_customControlItems;
    v14 = MEMORY[0x1E695E0F0];
    v12->_customControlItems = MEMORY[0x1E695E0F0];

    customDisplayModeItems = v12->_customDisplayModeItems;
    v12->_customDisplayModeItems = v14;

    customAudioItems = v12->_customAudioItems;
    v12->_customAudioItems = v14;

    customMediaItems = v12->_customMediaItems;
    v12->_customMediaItems = v14;

    v12->_showsPlaybackControls = 1;
    v12->_showsDimmingView = 0;
    objc_storeStrong(&v12->_styleSheet, a4);
    v18 = [AVTouchIgnoringView alloc];
    v20 = *MEMORY[0x1E695F058];
    v19 = *(MEMORY[0x1E695F058] + 8);
    v21 = *(MEMORY[0x1E695F058] + 16);
    v22 = *(MEMORY[0x1E695F058] + 24);
    v23 = [(AVTouchIgnoringView *)v18 initWithFrame:*MEMORY[0x1E695F058], v19, v21];
    screenModeControlsLeadingFixedSpaceView = v12->_screenModeControlsLeadingFixedSpaceView;
    v12->_screenModeControlsLeadingFixedSpaceView = v23;

    v25 = [(AVTouchIgnoringView *)v12->_screenModeControlsLeadingFixedSpaceView layoutAttributes];
    [v25 setTrailingInterItemSpace:9.0];

    v26 = [AVButton buttonWithAccessibilityIdentifier:@"Done" isFirstGeneration:0];
    doneButton = v12->_doneButton;
    v12->_doneButton = v26;

    [(AVButton *)v12->_doneButton setIncluded:0];
    [(AVButton *)v12->_doneButton setCollapsed:1];
    v28 = [(AVButton *)v12->_doneButton layoutAttributes];
    [v28 setHasFlexibleContentSize:0];

    v29 = [(AVButton *)v12->_doneButton layoutAttributes];
    [v9 defaultInterItemSpacing];
    [v29 setTrailingInterItemSpace:?];

    v30 = [(AVButton *)v12->_doneButton layoutAttributes];
    [v30 setDisplayPriority:2];

    v31 = [AVButton buttonWithAccessibilityIdentifier:@"Full Screen" isFirstGeneration:0];
    fullScreenButton = v12->_fullScreenButton;
    v12->_fullScreenButton = v31;

    [(AVButton *)v12->_fullScreenButton setIncluded:0];
    [(AVButton *)v12->_fullScreenButton setCollapsed:1];
    v33 = [(AVButton *)v12->_fullScreenButton layoutAttributes];
    [v33 setHasFlexibleContentSize:0];

    v34 = [(AVButton *)v12->_fullScreenButton layoutAttributes];
    [v9 defaultInterItemSpacing];
    [v34 setTrailingInterItemSpace:?];

    v35 = [(AVButton *)v12->_fullScreenButton layoutAttributes];
    [v35 setDisplayPriority:2];

    v36 = [AVButton buttonWithAccessibilityIdentifier:@"Picture in Picture" isFirstGeneration:0];
    pictureInPictureButton = v12->_pictureInPictureButton;
    v12->_pictureInPictureButton = v36;

    [(AVButton *)v12->_pictureInPictureButton setIncluded:0];
    [(AVButton *)v12->_pictureInPictureButton setCollapsed:1];
    v38 = [(AVButton *)v12->_pictureInPictureButton layoutAttributes];
    [v38 setHasFlexibleContentSize:0];

    v39 = [(AVButton *)v12->_pictureInPictureButton layoutAttributes];
    [v9 defaultInterItemSpacing];
    [v39 setTrailingInterItemSpace:?];

    v40 = [(AVButton *)v12->_pictureInPictureButton layoutAttributes];
    [v40 setDisplayPriority:2];

    v41 = [[AVPlaybackControlsRoutePickerView alloc] initWithSecondGenerationButton:0];
    routePickerView = v12->_routePickerView;
    v12->_routePickerView = v41;

    [(AVPlaybackControlsRoutePickerView *)v12->_routePickerView setPrioritizesVideoDevices:1];
    [(AVPlaybackControlsRoutePickerView *)v12->_routePickerView setIncluded:0];
    [(AVPlaybackControlsRoutePickerView *)v12->_routePickerView setCollapsed:1];
    v43 = [(AVPlaybackControlsRoutePickerView *)v12->_routePickerView layoutAttributes];
    [v43 setHasFlexibleContentSize:0];

    v44 = [(AVPlaybackControlsRoutePickerView *)v12->_routePickerView layoutAttributes];
    [v9 defaultInterItemSpacing];
    [v44 setTrailingInterItemSpace:?];

    v45 = [(AVPlaybackControlsRoutePickerView *)v12->_routePickerView layoutAttributes];
    [v45 setDisplayPriority:2];

    v143 = v22;
    v46 = [[AVTouchIgnoringView alloc] initWithFrame:v20, v19, v21, v22];
    screenModeControlsTrailingFixedSpaceView = v12->_screenModeControlsTrailingFixedSpaceView;
    v12->_screenModeControlsTrailingFixedSpaceView = v46;

    v48 = [(AVTouchIgnoringView *)v12->_screenModeControlsTrailingFixedSpaceView layoutAttributes];
    [v9 defaultInterItemSpacing];
    [v48 setMinimumSize:{v49 * 0.5, 0.0}];

    v50 = v12->_doneButton;
    v51 = *MEMORY[0x1E69DDDC0];
    v146 = height;
    v52 = *MEMORY[0x1E69DB968];
    v53 = [MEMORY[0x1E69DB878] avkit_nonScalingFontWithTextStyle:*MEMORY[0x1E69DDDC0] weight:*MEMORY[0x1E69DB968]];
    [(AVButton *)v50 setFullScreenFont:v53];

    v54 = v12->_pictureInPictureButton;
    v55 = [MEMORY[0x1E69DB878] avkit_nonScalingFontWithTextStyle:v51 weight:v52];
    [(AVButton *)v54 setFullScreenFont:v55];

    v154[0] = v12->_screenModeControlsLeadingFixedSpaceView;
    v154[1] = v12->_doneButton;
    v154[2] = v12->_fullScreenButton;
    v154[3] = v12->_pictureInPictureButton;
    v154[4] = v12->_routePickerView;
    v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v154 count:5];
    defaultDisplayModeControls = v12->_defaultDisplayModeControls;
    v12->_defaultDisplayModeControls = v56;

    v58 = [AVGlassLayoutView alloc];
    v59 = v20;
    v60 = v20;
    v144 = v20;
    v61 = v19;
    v62 = [(AVGlassLayoutView *)v58 initWithFrame:v59, v19, v21, v22];
    screenModeControls = v12->_screenModeControls;
    v12->_screenModeControls = v62;

    v64 = v12->_screenModeControls;
    v153 = v12->_defaultDisplayModeControls;
    v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v153 count:1];
    [(AVGlassLayoutView *)v64 setArrangedSubviews:v65];

    v66 = *MEMORY[0x1E69DC5C0];
    v67 = *(MEMORY[0x1E69DC5C0] + 8);
    v145 = y;
    v68 = x;
    v69 = *(MEMORY[0x1E69DC5C0] + 16);
    v70 = *(MEMORY[0x1E69DC5C0] + 24);
    [(AVGlassLayoutView *)v12->_screenModeControls setContentLayoutMargins:*MEMORY[0x1E69DC5C0], v67, v69, v70];
    [(AVGlassLayoutView *)v12->_screenModeControls setShapeStyle:3];
    [(AVGlassLayoutView *)v12->_screenModeControls setDebugIdentifier:@"ScreenModeControls"];
    v71 = [(AVGlassLayoutView *)v12->_screenModeControls layoutAttributes];
    [v71 setTrailingInterItemSpace:9.0];

    v72 = [AVButton buttonWithAccessibilityIdentifier:@"Central Play" isFirstGeneration:0];
    prominentPlayButton = v12->_prominentPlayButton;
    v12->_prominentPlayButton = v72;

    [(AVButton *)v12->_prominentPlayButton setClampsHitRectInsetsWhenContainedInScrollableView:1];
    v74 = [[AVGlassLayoutView alloc] initWithFrame:v60, v61, v21, v143];
    prominentPlayButtonContainerView = v12->_prominentPlayButtonContainerView;
    v12->_prominentPlayButtonContainerView = v74;

    v76 = v12->_prominentPlayButtonContainerView;
    v151 = v12->_prominentPlayButton;
    v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v151 count:1];
    v152 = v77;
    v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v152 count:1];
    [(AVGlassLayoutView *)v76 setArrangedSubviews:v78];

    [(AVGlassLayoutView *)v12->_prominentPlayButtonContainerView setShapeStyle:1];
    [(AVGlassLayoutView *)v12->_prominentPlayButtonContainerView setIncluded:1];
    [(AVGlassLayoutView *)v12->_prominentPlayButtonContainerView setContentLayoutMargins:v66, v67, v69, v70];
    [(AVGlassLayoutView *)v12->_prominentPlayButtonContainerView setDebugIdentifier:@"prominentPlayButton"];
    [v9 defaultItemInlineSize];
    v80 = v79;
    [v9 defaultItemInlineSize];
    v82 = v81;
    v162.origin.x = v68;
    v162.origin.y = v145;
    v162.size.height = v146;
    v162.size.width = rect;
    v163 = CGRectInset(v162, v80, v82);
    v83 = v163.origin.x;
    v84 = v163.origin.y;
    width = v163.size.width;
    [v9 defaultItemFullScreenSize];
    v87 = v86 + v86;
    v88 = [[AVView alloc] initWithFrame:v83, v84, width, v86 + v86];
    transportControlsContainerView = v12->_transportControlsContainerView;
    v12->_transportControlsContainerView = v88;

    [(AVView *)v12->_transportControlsContainerView setHasBackdropView:0];
    kdebug_trace();
    v90 = [[AVCatalystGlassTransportControlsView alloc] initWithFrame:v9 styleSheet:v83, v84, width, v87];
    transportControlsView = v12->_transportControlsView;
    v12->_transportControlsView = v90;

    kdebug_trace();
    [(AVView *)v12->_transportControlsView setHasBackdropView:0];
    v12->_includedContainers = 28;
    v92 = [(AVCatalystGlassTransportControlsView *)v12->_transportControlsView mediaSelectionButton];
    mediaSelectionButton = v12->_mediaSelectionButton;
    v12->_mediaSelectionButton = v92;

    v94 = [(AVCatalystGlassTransportControlsView *)v12->_transportControlsView controlOverflowButton];
    controlOverflowButton = v12->_controlOverflowButton;
    v12->_controlOverflowButton = v94;

    v96 = [(AVCatalystGlassTransportControlsView *)v12->_transportControlsView playbackSpeedButton];
    playbackSpeedButton = v12->_playbackSpeedButton;
    v12->_playbackSpeedButton = v96;

    v98 = [(AVCatalystGlassTransportControlsView *)v12->_transportControlsView standardPlayPauseButton];
    standardPlayPauseButton = v12->_standardPlayPauseButton;
    v12->_standardPlayPauseButton = v98;

    v100 = [(AVCatalystGlassTransportControlsView *)v12->_transportControlsView skipForwardButton];
    skipForwardButton = v12->_skipForwardButton;
    v12->_skipForwardButton = v100;

    v102 = [(AVCatalystGlassTransportControlsView *)v12->_transportControlsView skipBackButton];
    skipBackButton = v12->_skipBackButton;
    v12->_skipBackButton = v102;

    v104 = [(AVCatalystGlassTransportControlsView *)v12->_transportControlsView startLeftwardContentTransitionButton];
    startLeftwardContentTransitionButton = v12->_startLeftwardContentTransitionButton;
    v12->_startLeftwardContentTransitionButton = v104;

    v106 = [(AVCatalystGlassTransportControlsView *)v12->_transportControlsView startRightwardContentTransitionButton];
    startRightwardContentTransitionButton = v12->_startRightwardContentTransitionButton;
    v12->_startRightwardContentTransitionButton = v106;

    v108 = [(AVCatalystGlassTransportControlsView *)v12->_transportControlsView scrubber];
    scrubber = v12->_scrubber;
    v12->_scrubber = v108;

    v110 = [[AVTouchIgnoringView alloc] initWithFrame:v144, v61, v21, v143];
    volumeControlsTrailingFixedSpaceView = v12->_volumeControlsTrailingFixedSpaceView;
    v12->_volumeControlsTrailingFixedSpaceView = v110;

    [(AVTouchIgnoringView *)v12->_volumeControlsTrailingFixedSpaceView setExtrinsicContentSize:9.0, 0.0];
    v112 = [(AVTouchIgnoringView *)v12->_volumeControlsTrailingFixedSpaceView layoutAttributes];
    [v112 setMinimumSize:{9.0, 0.0}];

    v113 = [(AVTouchIgnoringView *)v12->_volumeControlsTrailingFixedSpaceView layoutAttributes];
    [v113 setHasFlexibleContentSize:0];

    [(AVTouchIgnoringView *)v12->_volumeControlsTrailingFixedSpaceView setIncluded:1];
    v114 = [[AVTouchIgnoringView alloc] initWithFrame:v144, v61, v21, v143];
    volumeControlsInterItemFixedSpaceView = v12->_volumeControlsInterItemFixedSpaceView;
    v12->_volumeControlsInterItemFixedSpaceView = v114;

    [(AVTouchIgnoringView *)v12->_volumeControlsInterItemFixedSpaceView setExtrinsicContentSize:9.0, 0.0];
    v116 = [(AVTouchIgnoringView *)v12->_volumeControlsInterItemFixedSpaceView layoutAttributes];
    [v116 setMinimumSize:{9.0, 0.0}];

    v117 = [(AVTouchIgnoringView *)v12->_volumeControlsInterItemFixedSpaceView layoutAttributes];
    [v117 setHasFlexibleContentSize:0];

    [(AVTouchIgnoringView *)v12->_volumeControlsInterItemFixedSpaceView setIncluded:1];
    v118 = objc_alloc_init(AVVolumeButtonControl);
    volumeButton = v12->_volumeButton;
    v12->_volumeButton = v118;

    v120 = [(AVVolumeButtonControl *)v12->_volumeButton layoutAttributes];
    v121 = [(AVTouchIgnoringView *)v12->_volumeControlsTrailingFixedSpaceView layoutAttributes];
    [v120 setDisplayPartnerAttributes:v121];

    v122 = objc_alloc_init(AVGlassVolumeSlider);
    volumeSlider = v12->_volumeSlider;
    v12->_volumeSlider = v122;

    v124 = [(AVGlassVolumeSlider *)v12->_volumeSlider layoutAttributes];
    v125 = [(AVTouchIgnoringView *)v12->_volumeControlsInterItemFixedSpaceView layoutAttributes];
    [v124 setDisplayPartnerAttributes:v125];

    v126 = v12->_volumeSlider;
    v127 = [(AVCatalystGlassStyleSheet *)v12->_styleSheet sliderMinValueTrackColor];
    [(AVGlassVolumeSlider *)v126 setTintColor:v127];

    v150[0] = v12->_volumeSlider;
    v150[1] = v12->_volumeControlsInterItemFixedSpaceView;
    v150[2] = v12->_volumeButton;
    v150[3] = v12->_volumeControlsTrailingFixedSpaceView;
    v128 = [MEMORY[0x1E695DEC8] arrayWithObjects:v150 count:4];
    defaultAudioControls = v12->_defaultAudioControls;
    v12->_defaultAudioControls = v128;

    v130 = [[AVGlassLayoutView alloc] initWithFrame:v144, v61, v21, v143];
    volumeControls = v12->_volumeControls;
    v12->_volumeControls = v130;

    v132 = v12->_volumeControls;
    v149 = v12->_defaultAudioControls;
    v133 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v149 count:1];
    [(AVGlassLayoutView *)v132 setArrangedSubviews:v133];

    [(AVGlassLayoutView *)v12->_volumeControls setDebugIdentifier:@"volumeControls"];
    [(AVGlassLayoutView *)v12->_volumeControls setShapeStyle:3];
    [(AVView *)v12->_volumeControls setHasBackdropView:0];
    v134 = v12->_volumeControls;
    [v9 volumeControlsDirectionalInsets];
    [(AVGlassLayoutView *)v134 setDirectionalLayoutMargins:?];
    v12->_needsIntialLayout = 1;
    [(AVView *)v12->_screenModeControls setIgnoresTouches:1];
    [(AVView *)v12->_volumeControls setIgnoresTouches:1];
    [(AVView *)v12->_prominentPlayButtonContainerView setIgnoresTouches:1];
    [(AVView *)v12->_transportControlsContainerView setIgnoresTouches:1];
    v135 = [[AVGlassBackgroundTouchIgnoringView alloc] initWithFrame:v68, v145, rect, v146];
    playbackControlsContainer = v12->_playbackControlsContainer;
    v12->_playbackControlsContainer = v135;

    [(AVGlassBackedView *)v12->_playbackControlsContainer setBackgroundMaterialStyle:6];
    [(AVGlassBackedView *)v12->_playbackControlsContainer setBackgroundMaterialized:1];
    v137 = [[AVGlassBackgroundTouchIgnoringView alloc] initWithFrame:v144, v61, v21, v143];
    volumeControlsContainer = v12->_volumeControlsContainer;
    v12->_volumeControlsContainer = v137;

    [(AVGlassBackedView *)v12->_volumeControlsContainer setBackgroundMaterialStyle:6];
    [(AVGlassBackedView *)v12->_volumeControlsContainer setBackgroundMaterialized:1];
    [(AVGlassBackgroundTouchIgnoringView *)v12->_volumeControlsContainer setIncluded:1];
    v139 = [[AVObservationController alloc] initWithOwner:v12];
    observationController = v12->_observationController;
    v12->_observationController = v139;

    [(AVObservationController *)v12->_observationController startObservingNotificationForName:*MEMORY[0x1E69DE820] object:0 notificationCenter:0 observationHandler:&__block_literal_global_923];
    [(AVObservationController *)v12->_observationController startObservingNotificationForName:*MEMORY[0x1E69DE850] object:0 notificationCenter:0 observationHandler:&__block_literal_global_923];
    [(AVObservationController *)v12->_observationController startObservingNotificationForName:*MEMORY[0x1E69DE018] object:0 notificationCenter:0 observationHandler:&__block_literal_global_35];
    v141 = [MEMORY[0x1E69DC888] labelColor];
    [(AVCatalystGlassPlaybackControlsView *)v12 setTintColor:v141];
  }

  return v12;
}

void __64__AVCatalystGlassPlaybackControlsView_initWithFrame_styleSheet___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v29 = a2;
  v5 = a4;
  v6 = [v5 userInfo];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];
  [v7 CGRectValue];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [v5 userInfo];
  v17 = [v16 objectForKeyedSubscript:*MEMORY[0x1E69DDFE0]];
  v18 = [v17 BOOLValue];

  v19 = [v5 userInfo];
  v20 = [v19 objectForKeyedSubscript:*MEMORY[0x1E69DDF38]];
  v21 = [v20 longValue];

  v22 = [v5 userInfo];

  v23 = [v22 objectForKeyedSubscript:*MEMORY[0x1E69DDF40]];
  [v23 doubleValue];
  v25 = v24;

  v31.origin.x = v9;
  v31.origin.y = v11;
  v31.size.width = v13;
  v31.size.height = v15;
  Height = CGRectGetHeight(v31);
  [v29 keyboardHeight];
  if (Height != v27)
  {
    v32.origin.x = v9;
    v32.origin.y = v11;
    v32.size.width = v13;
    v32.size.height = v15;
    [v29 setKeyboardHeight:CGRectGetHeight(v32)];
    if ((v18 & 1) == 0)
    {
      v28 = [v29 window];

      if (v28)
      {
        [v29 _animateKeyboardAvoidance:v21 duration:v25];
      }
    }
  }
}

@end