@interface AVCatalystGlassPlaybackControlsView
- (AVCatalystGlassPlaybackControlsView)initWithFrame:(CGRect)frame styleSheet:(id)sheet;
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
- (id)_playbackControlsViewsForControlItems:(id)items withType:(int64_t)type;
- (id)_preferredArrangedAudioModeViews;
- (id)_preferredArrangedDisplayModeViews;
- (id)_setUpDimmingViewIfNeeded;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_animateKeyboardAvoidance:(int64_t)avoidance duration:(double)duration;
- (void)_collapse:(BOOL)_collapse view:(id)view;
- (void)_collapse:(BOOL)_collapse views:(id)views;
- (void)_updateAreVolumeAndTransportControlsVisible;
- (void)_updateDoubleRowLayoutEnabled;
- (void)_updateLayoutMargins;
- (void)_updatePlaybackControlsContainerVisibilityAnimated:(BOOL)animated additionalActions:(id)actions;
- (void)animateAlongsideVisibilityAnimationsWithAnimationCoordinator:(id)coordinator appearingViews:(id)views disappearingViews:(id)disappearingViews;
- (void)avkit_reevaluateHiddenStateOfItem:(id)item;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)reevaluateHiddenStateForContainersAndSubviews;
- (void)safeAreaInsetsDidChange;
- (void)setCustomControlItems:(id)items animations:(id)animations;
- (void)setCustomControlsView:(id)view;
- (void)setFullScreen:(BOOL)screen;
- (void)setIncludedContainers:(int64_t)containers animations:(id)animations;
- (void)setOverrideLayoutMarginsWhenEmbeddedInline:(id)inline;
- (void)setOverrideTransformForProminentPlayButton:(CGAffineTransform *)button;
- (void)setPrefersVolumeSliderExpanded:(BOOL)expanded prefersVolumeButtonIncluded:(BOOL)included animated:(BOOL)animated;
- (void)setShowsAudioControls:(BOOL)controls;
- (void)setShowsDimmingView:(BOOL)view;
- (void)setShowsPlaybackControls:(BOOL)controls;
- (void)setStyleSheet:(id)sheet;
- (void)setupInitialLayout;
- (void)showPlaybackControls:(BOOL)controls immediately:(BOOL)immediately;
- (void)traitCollectionDidChange:(id)change;
- (void)updateDisplayControlsVisibilityIncludedButtons:(id)buttons;
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

- (void)setCustomControlsView:(id)view
{
  viewCopy = view;
  if (self->_customControlsView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_customControlsView, view);
    [(AVCatalystGlassPlaybackControlsView *)self _updateAreVolumeAndTransportControlsVisible];
    viewCopy = v6;
  }
}

- (void)_updateAreVolumeAndTransportControlsVisible
{
  if (self)
  {
    _customControlsViewIfLoaded = [self _customControlsViewIfLoaded];
    if ([self includesTransportControls])
    {
      playbackControlsContainer = [self playbackControlsContainer];
      [playbackControlsContainer alpha];
      [_customControlsViewIfLoaded setAreTransportControlsVisible:v4 > 0.0];
    }

    else
    {
      [_customControlsViewIfLoaded setAreTransportControlsVisible:0];
    }

    _customControlsViewIfLoaded2 = [self _customControlsViewIfLoaded];
    if ([self includesAudioControlsContainer] & 1) != 0 || (objc_msgSend(self, "includesCustomAudioControls"))
    {
      volumeControlsContainer = [self volumeControlsContainer];
      [volumeControlsContainer alpha];
      [_customControlsViewIfLoaded2 setAreVolumeControlsVisible:v7 > 0.0];
    }

    else
    {
      [_customControlsViewIfLoaded2 setAreVolumeControlsVisible:0];
    }

    _customControlsViewIfLoaded3 = [self _customControlsViewIfLoaded];
    [_customControlsViewIfLoaded3 updateConstraintsIfNeeded];

    _customControlsViewIfLoaded4 = [self _customControlsViewIfLoaded];
    [_customControlsViewIfLoaded4 layoutIfNeeded];
  }
}

- (id)_playbackControlsViewsForControlItems:(id)items withType:(int64_t)type
{
  v26 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  array = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = itemsCopy;
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
        if ([v11 type] == type)
        {
          view = [v11 view];
          if (![view conformsToProtocol:&unk_1EFF1F478])
          {
            goto LABEL_10;
          }

          view2 = [v11 view];
          v14 = [view2 conformsToProtocol:&unk_1EFF1F290];

          if (!v14)
          {
            goto LABEL_11;
          }

          view3 = [v11 view];
          [array addObject:view3];

          view = [v11 image];
          if (!view)
          {
            title = [v11 title];

            if (title)
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

  v18 = [array copy];

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
  customDisplayModeItems = [(AVCatalystGlassPlaybackControlsView *)self customDisplayModeItems];
  v13 = [v11 arrayByAddingObjectsFromArray:customDisplayModeItems];

  customAudioItems = [(AVCatalystGlassPlaybackControlsView *)self customAudioItems];
  v15 = [v13 arrayByAddingObjectsFromArray:customAudioItems];

  customMediaItems = [(AVCatalystGlassPlaybackControlsView *)self customMediaItems];
  v17 = [v15 arrayByAddingObjectsFromArray:customMediaItems];

  return v17;
}

- (void)_animateKeyboardAvoidance:(int64_t)avoidance duration:(double)duration
{
  keyboardUIAvoidanceAnimator = [(AVCatalystGlassPlaybackControlsView *)self keyboardUIAvoidanceAnimator];
  if ([keyboardUIAvoidanceAnimator isRunning] && objc_msgSend(keyboardUIAvoidanceAnimator, "isInterruptible"))
  {
    [keyboardUIAvoidanceAnimator stopAnimation:0];
    [keyboardUIAvoidanceAnimator finishAnimationAtPosition:2];
  }

  objc_initWeak(&location, self);
  v8 = objc_alloc(MEMORY[0x1E69DD278]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __74__AVCatalystGlassPlaybackControlsView__animateKeyboardAvoidance_duration___block_invoke;
  v14 = &unk_1E7209EA8;
  objc_copyWeak(&v15, &location);
  v9 = [v8 initWithDuration:avoidance curve:&v11 animations:duration];
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
  volumeControlsContainer = [(AVCatalystGlassPlaybackControlsView *)self volumeControlsContainer];
  [(AVCatalystGlassPlaybackControlsView *)self avkit_reevaluateHiddenStateOfItem:volumeControlsContainer];

  playbackControlsContainer = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
  [(AVCatalystGlassPlaybackControlsView *)self avkit_reevaluateHiddenStateOfItem:playbackControlsContainer];

  screenModeControls = [(AVCatalystGlassPlaybackControlsView *)self screenModeControls];
  [(AVCatalystGlassPlaybackControlsView *)self avkit_reevaluateHiddenStateOfItem:screenModeControls];

  prominentPlayButtonContainerView = [(AVCatalystGlassPlaybackControlsView *)self prominentPlayButtonContainerView];
  [(AVCatalystGlassPlaybackControlsView *)self avkit_reevaluateHiddenStateOfItem:prominentPlayButtonContainerView];

  prominentPlayButtonContainerView2 = [(AVCatalystGlassPlaybackControlsView *)self prominentPlayButtonContainerView];
  [prominentPlayButtonContainerView2 reevaluateHiddenStateOfAllItems];

  volumeControls = [(AVCatalystGlassPlaybackControlsView *)self volumeControls];
  [volumeControls reevaluateHiddenStateOfAllItems];

  screenModeControls2 = [(AVCatalystGlassPlaybackControlsView *)self screenModeControls];
  [screenModeControls2 reevaluateHiddenStateOfAllItems];

  transportControlsView = [(AVCatalystGlassPlaybackControlsView *)self transportControlsView];
  [transportControlsView reevaluateHiddenStateOfAllItems];
}

- (void)_updatePlaybackControlsContainerVisibilityAnimated:(BOOL)animated additionalActions:(id)actions
{
  animatedCopy = animated;
  actionsCopy = actions;
  playbackControlsVisibilityAnimator = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsVisibilityAnimator];
  if ([playbackControlsVisibilityAnimator isRunning])
  {
    playbackControlsVisibilityAnimator2 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsVisibilityAnimator];
    isInterruptible = [playbackControlsVisibilityAnimator2 isInterruptible];

    if (!isInterruptible)
    {
      goto LABEL_5;
    }

    playbackControlsVisibilityAnimator3 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsVisibilityAnimator];
    [playbackControlsVisibilityAnimator3 stopAnimation:0];

    playbackControlsVisibilityAnimator = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsVisibilityAnimator];
    [playbackControlsVisibilityAnimator finishAnimationAtPosition:2];
  }

LABEL_5:
  transportControlsView = [(AVCatalystGlassPlaybackControlsView *)self transportControlsView];
  customMediaItems = [(AVCatalystGlassPlaybackControlsView *)self customMediaItems];
  [transportControlsView setCustomItems:customMediaItems];

  showsPlaybackControls = [(AVCatalystGlassPlaybackControlsView *)self showsPlaybackControls];
  playbackControlsContainer = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
  isCollapsedOrExcluded = [playbackControlsContainer isCollapsedOrExcluded];
  v14 = isCollapsedOrExcluded ^ 1;

  showsProminentPlayButton = [(AVCatalystGlassPlaybackControlsView *)self showsProminentPlayButton];
  includesTransportControls = [(AVCatalystGlassPlaybackControlsView *)self includesTransportControls];
  screenModeControls = [(AVCatalystGlassPlaybackControlsView *)self screenModeControls];
  v54 = [screenModeControls hasVisibleArrangedSubview] ^ 1;

  if ([(AVCatalystGlassPlaybackControlsView *)self includesDisplayModeControlsContainer])
  {
    v53 = 0;
  }

  else
  {
    v53 = ![(AVCatalystGlassPlaybackControlsView *)self includesCustomDisplayModeControls];
  }

  v17 = isCollapsedOrExcluded & showsPlaybackControls;
  volumeControls = [(AVCatalystGlassPlaybackControlsView *)self volumeControls];
  v19 = [volumeControls hasVisibleArrangedSubview] ^ 1;

  volumeControlsContainer = [(AVCatalystGlassPlaybackControlsView *)self volumeControlsContainer];
  v21 = [volumeControlsContainer isCollapsedOrExcluded] ^ 1;

  v50 = showsProminentPlayButton;
  if (showsProminentPlayButton)
  {
    showsAudioControls = 0;
    goto LABEL_17;
  }

  if ([(AVCatalystGlassPlaybackControlsView *)self includesAudioControlsContainer])
  {
    if (showsPlaybackControls)
    {
      showsAudioControls = 1;
      goto LABEL_17;
    }
  }

  else
  {
    includesCustomAudioControls = [(AVCatalystGlassPlaybackControlsView *)self includesCustomAudioControls];
    showsAudioControls = includesCustomAudioControls;
    if (!includesCustomAudioControls || (isCollapsedOrExcluded & showsPlaybackControls & 1) != 0 || (v14 & showsPlaybackControls & 1) != 0)
    {
      goto LABEL_17;
    }
  }

  showsAudioControls = [(AVCatalystGlassPlaybackControlsView *)self showsAudioControls];
LABEL_17:
  if (showsPlaybackControls)
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
  v90 = isCollapsedOrExcluded & showsPlaybackControls;
  v91 = v14 & showsPlaybackControls;
  v92 = isCollapsedOrExcluded ^ 1;
  v87[4] = self;
  *&v87[5] = v24;
  v93 = v53;
  v94 = showsAudioControls;
  v95 = v21;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v87];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v57 = array2;
  if (showsAudioControls)
  {
    v27 = array;
  }

  else
  {
    v27 = array2;
  }

  volumeControlsContainer2 = [(AVCatalystGlassPlaybackControlsView *)self volumeControlsContainer];
  [v27 addObject:volumeControlsContainer2];

  v56 = array;
  if ((isCollapsedOrExcluded & showsPlaybackControls & 1) != 0 || (array = v57, ((isCollapsedOrExcluded | showsPlaybackControls) & 1) == 0))
  {
    playbackControlsContainer2 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
    [array addObject:playbackControlsContainer2];
  }

  if ((isCollapsedOrExcluded & 1) == 0 && !self->_controlsViewHasAppeared)
  {
    window = [(AVCatalystGlassPlaybackControlsView *)self window];

    if (window)
    {
      self->_controlsViewHasAppeared = 1;
      playbackControlsContainer3 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
      v32 = [v56 containsObject:playbackControlsContainer3];

      if ((v32 & 1) == 0)
      {
        playbackControlsContainer4 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
        [v56 addObject:playbackControlsContainer4];
      }
    }
  }

  v34 = objc_alloc_init(AVPlayerViewControllerAnimationCoordinator);
  visibilityDelegate = [(AVCatalystGlassPlaybackControlsView *)self visibilityDelegate];
  [visibilityDelegate glassPlaybackControlsView:self animateAlongsideVisibilityAnimationsWithAnimationCoordinator:v34 appearingViews:v56 disappearingViews:v57];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __108__AVCatalystGlassPlaybackControlsView__updatePlaybackControlsContainerVisibilityAnimated_additionalActions___block_invoke_2;
  aBlock[3] = &unk_1E72072F0;
  objc_copyWeak(v77, &location);
  v77[1] = *&v24;
  v78 = includesTransportControls;
  v79 = v53;
  v80 = v50;
  v81 = isCollapsedOrExcluded & showsPlaybackControls;
  v82 = v14 & showsPlaybackControls;
  v83 = showsPlaybackControls;
  v84 = v54;
  v85 = v19;
  v36 = v34;
  v75 = v36;
  v55 = actionsCopy;
  v76 = v55;
  v37 = _Block_copy(aBlock);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  [(AVCatalystGlassPlaybackControlsView *)self setMostRecentAnimationCompletionsID:uUID];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __108__AVCatalystGlassPlaybackControlsView__updatePlaybackControlsContainerVisibilityAnimated_additionalActions___block_invoke_3;
  v70[3] = &unk_1E72086A8;
  objc_copyWeak(&v71, &location);
  v72 = v14 & !showsPlaybackControls;
  v73 = isCollapsedOrExcluded & !showsPlaybackControls;
  v39 = _Block_copy(v70);
  if ((((isCollapsedOrExcluded ^ 1) & 1) != 0 || (v17 & 1) != 0 || [(AVCatalystGlassPlaybackControlsView *)self showsAudioControls]) && [(UIView *)self avkit_wantsAnimatedViewTransitions]&& animatedCopy)
  {
    if ([MEMORY[0x1E69DD250] _isInAnimationBlock])
    {
      playbackControlsVisibilityAnimator4 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsVisibilityAnimator];
      isRunning = [playbackControlsVisibilityAnimator4 isRunning];

      if ((isRunning & 1) == 0)
      {
        [MEMORY[0x1E6979518] begin];
        v48 = MEMORY[0x1E6979518];
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = __108__AVCatalystGlassPlaybackControlsView__updatePlaybackControlsContainerVisibilityAnimated_additionalActions___block_invoke_5;
        v64[3] = &unk_1E72086D0;
        objc_copyWeak(&v68, &location);
        v65 = uUID;
        v67 = v39;
        v69 = animatedCopy;
        v66 = v36;
        [v48 setCompletionBlock:v64];
        v37[2](v37);
        [MEMORY[0x1E6979518] commit];

        p_from = &v68;
        goto LABEL_44;
      }
    }

    objc_initWeak(&from, self);
    playbackControlsVisibilityAnimator5 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsVisibilityAnimator];
    if ([playbackControlsVisibilityAnimator5 isRunning])
    {
      playbackControlsVisibilityAnimator6 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsVisibilityAnimator];
      isInterruptible2 = [playbackControlsVisibilityAnimator6 isInterruptible];

      if (!isInterruptible2)
      {
LABEL_41:
        v46 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:0 curve:v37 animations:0.2];
        v58[0] = MEMORY[0x1E69E9820];
        v58[1] = 3221225472;
        v58[2] = __108__AVCatalystGlassPlaybackControlsView__updatePlaybackControlsContainerVisibilityAnimated_additionalActions___block_invoke_6;
        v58[3] = &unk_1E72086F8;
        objc_copyWeak(&v61, &from);
        v60 = v39;
        v62 = animatedCopy;
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

      playbackControlsVisibilityAnimator7 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsVisibilityAnimator];
      [playbackControlsVisibilityAnimator7 stopAnimation:0];

      playbackControlsVisibilityAnimator5 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsVisibilityAnimator];
      [playbackControlsVisibilityAnimator5 finishAnimationAtPosition:2];
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

- (void)updateDisplayControlsVisibilityIncludedButtons:(id)buttons
{
  v24 = *MEMORY[0x1E69E9840];
  buttonsCopy = buttons;
  fullScreenButton = [(AVCatalystGlassPlaybackControlsView *)self fullScreenButton];
  -[AVCatalystGlassPlaybackControlsView setPrefersFullScreenButtonIncluded:](self, "setPrefersFullScreenButtonIncluded:", [buttonsCopy containsObject:fullScreenButton]);

  doneButton = [(AVCatalystGlassPlaybackControlsView *)self doneButton];
  -[AVCatalystGlassPlaybackControlsView setPrefersDoneButtonIncluded:](self, "setPrefersDoneButtonIncluded:", [buttonsCopy containsObject:doneButton]);

  pictureInPictureButton = [(AVCatalystGlassPlaybackControlsView *)self pictureInPictureButton];
  -[AVCatalystGlassPlaybackControlsView setPrefersPiPButtonIncluded:](self, "setPrefersPiPButtonIncluded:", [buttonsCopy containsObject:pictureInPictureButton]);

  routePickerView = [(AVCatalystGlassPlaybackControlsView *)self routePickerView];
  v9 = [buttonsCopy containsObject:routePickerView];

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

- (void)_collapse:(BOOL)_collapse view:(id)view
{
  _collapseCopy = _collapse;
  viewCopy = view;
  if (objc_opt_respondsToSelector())
  {
    [viewCopy setCollapsed:_collapseCopy];
  }

  else
  {
    [viewCopy setHidden:_collapseCopy];
  }
}

- (void)_collapse:(BOOL)_collapse views:(id)views
{
  _collapseCopy = _collapse;
  v16 = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [viewsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(viewsCopy);
        }

        [(AVCatalystGlassPlaybackControlsView *)self _collapse:_collapseCopy view:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [viewsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)_displayModeViewsToRemoveDuringAnimation
{
  _currentArrangedDisplayModeViews = [(AVCatalystGlassPlaybackControlsView *)self _currentArrangedDisplayModeViews];
  v4 = [_currentArrangedDisplayModeViews mutableCopy];

  _preferredArrangedDisplayModeViews = [(AVCatalystGlassPlaybackControlsView *)self _preferredArrangedDisplayModeViews];
  [v4 minusOrderedSet:_preferredArrangedDisplayModeViews];

  array = [v4 array];

  return array;
}

- (id)_audioViewsToRemoveDuringAnimation
{
  _currentArrangedAudioModeViews = [(AVCatalystGlassPlaybackControlsView *)self _currentArrangedAudioModeViews];
  v4 = [_currentArrangedAudioModeViews mutableCopy];

  _preferredArrangedAudioModeViews = [(AVCatalystGlassPlaybackControlsView *)self _preferredArrangedAudioModeViews];
  [v4 minusOrderedSet:_preferredArrangedAudioModeViews];

  array = [v4 array];

  return array;
}

- (id)_currentArrangedDisplayModeViews
{
  v2 = MEMORY[0x1E695DFB8];
  screenModeControls = [(AVCatalystGlassPlaybackControlsView *)self screenModeControls];
  arrangedSubviews = [screenModeControls arrangedSubviews];
  firstObject = [arrangedSubviews firstObject];
  v6 = [v2 orderedSetWithArray:firstObject];

  return v6;
}

- (id)_currentArrangedAudioModeViews
{
  v2 = MEMORY[0x1E695DFB8];
  volumeControls = [(AVCatalystGlassPlaybackControlsView *)self volumeControls];
  arrangedSubviews = [volumeControls arrangedSubviews];
  firstObject = [arrangedSubviews firstObject];
  v6 = [v2 orderedSetWithArray:firstObject];

  return v6;
}

- (id)_preferredArrangedDisplayModeViews
{
  v3 = MEMORY[0x1E695DFB8];
  defaultDisplayModeControls = [(AVCatalystGlassPlaybackControlsView *)self defaultDisplayModeControls];
  customDisplayModeItems = [(AVCatalystGlassPlaybackControlsView *)self customDisplayModeItems];
  v6 = [defaultDisplayModeControls arrayByAddingObjectsFromArray:customDisplayModeItems];
  v7 = [v3 orderedSetWithArray:v6];

  return v7;
}

- (id)_preferredArrangedAudioModeViews
{
  v3 = MEMORY[0x1E695DFB8];
  customAudioItems = [(AVCatalystGlassPlaybackControlsView *)self customAudioItems];
  defaultAudioControls = [(AVCatalystGlassPlaybackControlsView *)self defaultAudioControls];
  v6 = [customAudioItems arrayByAddingObjectsFromArray:defaultAudioControls];
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

  styleSheet = [(AVCatalystGlassPlaybackControlsView *)self styleSheet];
  [(AVCatalystGlassPlaybackControlsView *)self _updateDoubleRowLayoutEnabled];
  isFullScreen = [(AVCatalystGlassPlaybackControlsView *)self isFullScreen];
  v276 = 0u;
  v277 = 0u;
  v278 = 0u;
  v279 = 0u;
  _playbackControlsViewItems = [(AVCatalystGlassPlaybackControlsView *)self _playbackControlsViewItems];
  v6 = [_playbackControlsViewItems countByEnumeratingWithState:&v276 objects:v289 count:16];
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
          objc_enumerationMutation(_playbackControlsViewItems);
        }

        [*(*(&v276 + 1) + 8 * i) setHasFullScreenAppearance:isFullScreen];
      }

      v7 = [_playbackControlsViewItems countByEnumeratingWithState:&v276 objects:v289 count:16];
    }

    while (v7);
  }

  [(AVGlassLayoutView *)self->_screenModeControls setHasFullScreenAppearance:isFullScreen];
  [(AVGlassLayoutView *)self->_volumeControls setHasFullScreenAppearance:isFullScreen];
  [(AVCatalystGlassTransportControlsView *)self->_transportControlsView setHasFullScreenAppearance:isFullScreen];
  layoutAttributes = [(AVButton *)self->_doneButton layoutAttributes];
  [styleSheet defaultInterItemSpacing];
  [layoutAttributes setTrailingInterItemSpace:?];

  layoutAttributes2 = [(AVButton *)self->_fullScreenButton layoutAttributes];
  [styleSheet defaultInterItemSpacing];
  [layoutAttributes2 setTrailingInterItemSpace:?];

  layoutAttributes3 = [(AVButton *)self->_pictureInPictureButton layoutAttributes];
  [styleSheet defaultInterItemSpacing];
  [layoutAttributes3 setTrailingInterItemSpace:?];

  layoutAttributes4 = [(AVPlaybackControlsRoutePickerView *)self->_routePickerView layoutAttributes];
  [styleSheet defaultInterItemSpacing];
  [layoutAttributes4 setTrailingInterItemSpace:?];

  [(AVCatalystGlassPlaybackControlsView *)self _updateLayoutMargins];
  playbackControlsContainer = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
  layoutMarginsGuide = [(AVCatalystGlassPlaybackControlsView *)self layoutMarginsGuide];
  [layoutMarginsGuide layoutFrame];
  [playbackControlsContainer setFrame:?];

  layoutMarginsGuide2 = [(AVCatalystGlassPlaybackControlsView *)self layoutMarginsGuide];
  [layoutMarginsGuide2 layoutFrame];
  Width = CGRectGetWidth(v292);

  layoutMarginsGuide3 = [(AVCatalystGlassPlaybackControlsView *)self layoutMarginsGuide];
  [layoutMarginsGuide3 layoutFrame];
  Height = CGRectGetHeight(v293);

  [styleSheet defaultItemInlineSize];
  if (v20 >= Width)
  {
    v21 = v20;
  }

  else
  {
    v21 = Width;
  }

  [styleSheet maximumProminentPlayButtonDimension];
  if (v21 >= v22)
  {
    v21 = v22;
  }

  [styleSheet minimumProminentPlayButtonDimension];
  if (v23 >= Height)
  {
    v24 = v23;
  }

  else
  {
    v24 = Height;
  }

  [styleSheet maximumProminentPlayButtonDimension];
  if (v24 < v25)
  {
    v25 = v24;
  }

  if (v21 >= v25)
  {
    v21 = v25;
  }

  prominentPlayButton = [(AVCatalystGlassPlaybackControlsView *)self prominentPlayButton];
  [prominentPlayButton setExtrinsicContentSize:{v21, v21}];

  prominentPlayButton2 = [(AVCatalystGlassPlaybackControlsView *)self prominentPlayButton];
  [styleSheet defaultItemInlineSize];
  [prominentPlayButton2 setHasAlternateAppearance:v21 < v28];

  prominentPlayButtonContainerView = [(AVCatalystGlassPlaybackControlsView *)self prominentPlayButtonContainerView];
  [prominentPlayButtonContainerView setFrame:{0.0, 0.0, v21, v21}];

  playbackControlsContainer2 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
  [playbackControlsContainer2 bounds];
  MidX = CGRectGetMidX(v294);
  playbackControlsContainer3 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
  [playbackControlsContainer3 bounds];
  MidY = CGRectGetMidY(v295);

  prominentPlayButtonContainerView2 = [(AVCatalystGlassPlaybackControlsView *)self prominentPlayButtonContainerView];
  [prominentPlayButtonContainerView2 setCenter:{MidX, MidY}];

  if (isFullScreen)
  {
    [styleSheet defaultItemFullScreenSize];
  }

  else
  {
    [styleSheet defaultItemInlineSize];
  }

  v37 = v35;
  v38 = v36;
  doneButton = [(AVCatalystGlassPlaybackControlsView *)self doneButton];
  [doneButton setExtrinsicContentSize:{v37, v38}];

  doneButton2 = [(AVCatalystGlassPlaybackControlsView *)self doneButton];
  layoutAttributes5 = [doneButton2 layoutAttributes];
  [layoutAttributes5 setPrefersSecondaryMaterialOverlay:0];

  fullScreenButton = [(AVCatalystGlassPlaybackControlsView *)self fullScreenButton];
  [fullScreenButton setExtrinsicContentSize:{v37, v38}];

  pictureInPictureButton = [(AVCatalystGlassPlaybackControlsView *)self pictureInPictureButton];
  [pictureInPictureButton setExtrinsicContentSize:{v37, v38}];

  if ([(AVCatalystGlassPlaybackControlsView *)self isFullScreen])
  {
    [styleSheet routePickerButtonFullScreenSize];
  }

  else
  {
    [styleSheet routePickerButtonInlineSize];
  }

  v46 = v44;
  v47 = v45;
  if ([(AVCatalystGlassPlaybackControlsView *)self isFullScreen])
  {
    [styleSheet audioRoutePickerFullScreenSize];
  }

  else
  {
    [styleSheet routePickerButtonInlineSize];
  }

  v50 = v48;
  v51 = v49;
  routePickerView = [(AVCatalystGlassPlaybackControlsView *)self routePickerView];
  prioritizesVideoDevices = [routePickerView prioritizesVideoDevices];

  if (!prioritizesVideoDevices)
  {
    v46 = v50;
    v47 = v51;
  }

  routePickerView2 = [(AVCatalystGlassPlaybackControlsView *)self routePickerView];
  [routePickerView2 setExtrinsicContentSize:{v46, v47}];

  routePickerView3 = [(AVCatalystGlassPlaybackControlsView *)self routePickerView];
  customButton = [routePickerView3 customButton];
  micaPackage = [customButton micaPackage];
  [micaPackage setTargetSize:{v46, v47}];

  routePickerView4 = [(AVCatalystGlassPlaybackControlsView *)self routePickerView];
  customButton2 = [routePickerView4 customButton];
  [customButton2 setHasFullScreenAppearance:{-[AVCatalystGlassPlaybackControlsView isFullScreen](self, "isFullScreen")}];

  v274 = 0u;
  v275 = 0u;
  v272 = 0u;
  v273 = 0u;
  customDisplayModeItems = [(AVCatalystGlassPlaybackControlsView *)self customDisplayModeItems];
  v61 = [customDisplayModeItems countByEnumeratingWithState:&v272 objects:v288 count:16];
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
          objc_enumerationMutation(customDisplayModeItems);
        }

        [*(*(&v272 + 1) + 8 * j) setExtrinsicContentSize:{v37, v38}];
      }

      v62 = [customDisplayModeItems countByEnumeratingWithState:&v272 objects:v288 count:16];
    }

    while (v62);
  }

  volumeButton = [(AVCatalystGlassPlaybackControlsView *)self volumeButton];
  layoutAttributes6 = [volumeButton layoutAttributes];
  [layoutAttributes6 setDisplayPriority:4];

  volumeSlider = [(AVCatalystGlassPlaybackControlsView *)self volumeSlider];
  layoutAttributes7 = [volumeSlider layoutAttributes];
  [layoutAttributes7 setDisplayPriority:3];

  if ([(AVCatalystGlassPlaybackControlsView *)self isFullScreen])
  {
    volumeButton2 = [(AVCatalystGlassPlaybackControlsView *)self volumeButton];
    volumeSlider2 = [(AVCatalystGlassPlaybackControlsView *)self volumeSlider];
    isIncluded = [volumeSlider2 isIncluded];
    [styleSheet defaultItemFullScreenSize];
    if (isIncluded)
    {
      v74 = v73 + 1.0;
      [styleSheet defaultItemFullScreenSize];
    }

    else
    {
      v74 = v72;
    }

    [volumeButton2 setExtrinsicContentSize:v74];

    v270 = 0u;
    v271 = 0u;
    v268 = 0u;
    v269 = 0u;
    customAudioItems = [(AVCatalystGlassPlaybackControlsView *)self customAudioItems];
    v90 = [customAudioItems countByEnumeratingWithState:&v268 objects:v287 count:16];
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
            objc_enumerationMutation(customAudioItems);
          }

          v94 = *(*(&v268 + 1) + 8 * k);
          [styleSheet defaultItemFullScreenSize];
          [v94 setExtrinsicContentSize:?];
          layoutAttributes8 = [v94 layoutAttributes];
          [layoutAttributes8 setPrefersSecondaryMaterialOverlay:0];

          volumeSlider3 = [(AVCatalystGlassPlaybackControlsView *)self volumeSlider];
          [v94 setIncluded:{objc_msgSend(volumeSlider3, "isIncluded") ^ 1}];
        }

        v91 = [customAudioItems countByEnumeratingWithState:&v268 objects:v287 count:16];
      }

      while (v91);
    }

    traitCollection = [(AVCatalystGlassPlaybackControlsView *)self traitCollection];
    if ([traitCollection horizontalSizeClass] == 1)
    {
      [(AVCatalystGlassPlaybackControlsView *)self bounds];
      v98 = CGRectGetHeight(v296);
      [(AVCatalystGlassPlaybackControlsView *)self bounds];
      v99 = CGRectGetWidth(v297);

      if (v98 > v99)
      {
        volumeSlider4 = [(AVCatalystGlassPlaybackControlsView *)self volumeSlider];
        [styleSheet volumeSliderCompactFullScreenWidth];
LABEL_63:
        v101 = v100;
        [styleSheet defaultItemFullScreenSize];
        [volumeSlider4 setExtrinsicContentSize:v101];
        goto LABEL_64;
      }
    }

    else
    {
    }

    volumeSlider4 = [(AVCatalystGlassPlaybackControlsView *)self volumeSlider];
    [styleSheet volumeSliderRegularFullScreenWidth];
    goto LABEL_63;
  }

  volumeSlider5 = [(AVCatalystGlassPlaybackControlsView *)self volumeSlider];
  [styleSheet volumeSliderInlineWidth];
  v77 = v76;
  [styleSheet defaultItemInlineSize];
  [volumeSlider5 setExtrinsicContentSize:v77];

  volumeButton3 = [(AVCatalystGlassPlaybackControlsView *)self volumeButton];
  [styleSheet defaultItemInlineSize];
  v80 = v79 * 0.77;
  [styleSheet defaultItemInlineSize];
  [volumeButton3 setExtrinsicContentSize:v80];

  v266 = 0u;
  v267 = 0u;
  v264 = 0u;
  v265 = 0u;
  volumeSlider4 = [(AVCatalystGlassPlaybackControlsView *)self customAudioItems];
  v82 = [volumeSlider4 countByEnumeratingWithState:&v264 objects:v286 count:16];
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
          objc_enumerationMutation(volumeSlider4);
        }

        v86 = *(*(&v264 + 1) + 8 * m);
        [styleSheet defaultItemInlineSize];
        v88 = v87;
        [styleSheet defaultItemInlineSize];
        [v86 setExtrinsicContentSize:v88];
      }

      v83 = [volumeSlider4 countByEnumeratingWithState:&v264 objects:v286 count:16];
    }

    while (v83);
  }

LABEL_64:

  [styleSheet defaultPlatterHeight];
  v103 = v102;
  transportControlsView = [(AVCatalystGlassPlaybackControlsView *)self transportControlsView];
  [transportControlsView setExtrinsicContentSize:{Width, v103}];

  transportControlsView2 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsView];
  [transportControlsView2 intrinsicContentSize];
  v107 = v106;

  if (v107 >= Width)
  {
    v107 = Width;
  }

  [styleSheet minimumSingleButtonTransportControlsWidth];
  if (v107 < v108)
  {
    v107 = v108;
  }

  transportControlsView3 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsView];
  [transportControlsView3 setExtrinsicContentSize:{v107, v103}];

  if ([(AVCatalystGlassPlaybackControlsView *)self isFullScreen])
  {
    [styleSheet defaultItemFullScreenSize];
  }

  else
  {
    [styleSheet defaultItemInlineSize];
  }

  v111 = v110;
  standardPlayPauseButton = [(AVCatalystGlassPlaybackControlsView *)self standardPlayPauseButton];
  [standardPlayPauseButton setExtrinsicContentSize:{0.0, v111}];

  skipBackButton = [(AVCatalystGlassPlaybackControlsView *)self skipBackButton];
  [skipBackButton setExtrinsicContentSize:{0.0, v111}];

  skipForwardButton = [(AVCatalystGlassPlaybackControlsView *)self skipForwardButton];
  [skipForwardButton setExtrinsicContentSize:{0.0, v111}];

  startLeftwardContentTransitionButton = [(AVCatalystGlassPlaybackControlsView *)self startLeftwardContentTransitionButton];
  [startLeftwardContentTransitionButton setExtrinsicContentSize:{0.0, v111}];

  startRightwardContentTransitionButton = [(AVCatalystGlassPlaybackControlsView *)self startRightwardContentTransitionButton];
  [startRightwardContentTransitionButton setExtrinsicContentSize:{0.0, v111}];

  mediaSelectionButton = [(AVCatalystGlassPlaybackControlsView *)self mediaSelectionButton];
  [mediaSelectionButton setExtrinsicContentSize:{0.0, v111}];

  controlOverflowButton = [(AVCatalystGlassPlaybackControlsView *)self controlOverflowButton];
  [controlOverflowButton setExtrinsicContentSize:{0.0, v111}];

  playbackSpeedButton = [(AVCatalystGlassPlaybackControlsView *)self playbackSpeedButton];
  [playbackSpeedButton setExtrinsicContentSize:{0.0, v111}];

  v262 = 0u;
  v263 = 0u;
  v260 = 0u;
  v261 = 0u;
  customMediaItems = [(AVCatalystGlassPlaybackControlsView *)self customMediaItems];
  v121 = [customMediaItems countByEnumeratingWithState:&v260 objects:v285 count:16];
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
          objc_enumerationMutation(customMediaItems);
        }

        [*(*(&v260 + 1) + 8 * n) setExtrinsicContentSize:{0.0, v111}];
      }

      v122 = [customMediaItems countByEnumeratingWithState:&v260 objects:v285 count:16];
    }

    while (v122);
  }

  isFullScreen2 = [(AVCatalystGlassPlaybackControlsView *)self isFullScreen];
  v126 = MEMORY[0x1E69DC5C0];
  if (!isFullScreen2)
  {
    transportControlsView4 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsView];
    if ([transportControlsView4 isIncluded])
    {
      transportControlsView5 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsView];
      [transportControlsView5 extrinsicContentSize];
      if (v129 <= Width)
      {
        transportControlsView6 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsView];
        [transportControlsView6 extrinsicContentSize];
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

    transportControlsView7 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsView];
    [transportControlsView7 setCollapsed:v130];

    prominentPlayButton3 = [(AVCatalystGlassPlaybackControlsView *)self prominentPlayButton];
    if ([prominentPlayButton3 isCollapsedOrExcluded])
    {
    }

    else
    {
      preferredUnobscuredArea = [(AVCatalystGlassPlaybackControlsView *)self preferredUnobscuredArea];

      if (preferredUnobscuredArea != 2)
      {
        prominentPlayButton4 = [(AVCatalystGlassPlaybackControlsView *)self prominentPlayButton];
        v137 = prominentPlayButton4;
        v138 = -Height;
        v139 = -Width;
        v140 = -Height;
        v141 = -Width;
        goto LABEL_90;
      }
    }

    prominentPlayButton4 = [(AVCatalystGlassPlaybackControlsView *)self prominentPlayButton];
    v137 = prominentPlayButton4;
    v138 = *v126;
    v139 = v126[1];
    v140 = v126[2];
    v141 = v126[3];
LABEL_90:
    [prominentPlayButton4 setHitRectInsets:{v138, v139, v140, v141}];

    prominentPlayButtonContainerView3 = [(AVCatalystGlassPlaybackControlsView *)self prominentPlayButtonContainerView];
    [prominentPlayButtonContainerView3 setNeedsLayout];
  }

  if (self)
  {
    transportControlsView8 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsView];
    [transportControlsView8 intrinsicContentSize];
    v145 = v144;
    v147 = v146;

    playbackControlsContainer4 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
    [playbackControlsContainer4 frame];
    v149 = CGRectGetHeight(v298) - v147;

    playbackControlsContainer5 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
    [playbackControlsContainer5 frame];
    v151 = CGRectGetWidth(v299);

    if (v151 >= v145)
    {
      v151 = v145;
    }

    transportControlsContainerView = [(AVCatalystGlassPlaybackControlsView *)self transportControlsContainerView];
    transportControlsContainerView2 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsContainerView];
    [transportControlsContainerView2 frame];
    [transportControlsContainerView setFrame:{CGRectGetMinX(v300), v149, v151, v147}];

    styleSheet2 = [(AVCatalystGlassPlaybackControlsView *)self styleSheet];
    [styleSheet2 minimumSingleButtonTransportControlsWidth];
    v156 = v155;

    playbackControlsContainer6 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
    v158 = playbackControlsContainer6;
    if (v151 == v156)
    {
      [playbackControlsContainer6 frame];
      v159 = CGRectGetHeight(v301) - v147;

      transportControlsContainerView3 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsContainerView];
      [transportControlsContainerView3 setFrame:{0.0, v159, v145, v147}];
    }

    else
    {
      [playbackControlsContainer6 center];
      v162 = v161;
      playbackControlsContainer7 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
      [playbackControlsContainer7 frame];
      v164 = v162 - CGRectGetMinX(v302);

      transportControlsContainerView4 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsContainerView];
      [transportControlsContainerView4 center];
      v167 = v166;

      if (v167 == v164)
      {
LABEL_99:
        transportControlsView9 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsView];
        [transportControlsView9 setFrame:{0.0, 0.0, v151, v147}];

        transportControlsView10 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsView];
        [transportControlsView10 setNeedsLayout];

        goto LABEL_100;
      }

      transportControlsContainerView3 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsContainerView];
      transportControlsContainerView5 = [(AVCatalystGlassPlaybackControlsView *)self transportControlsContainerView];
      [transportControlsContainerView5 center];
      [transportControlsContainerView3 setCenter:v164];
    }

    goto LABEL_99;
  }

LABEL_100:
  volumeSlider6 = [(AVCatalystGlassPlaybackControlsView *)self volumeSlider];
  v172 = Width;
  if ([volumeSlider6 isIncluded])
  {
    styleSheet3 = [(AVCatalystGlassPlaybackControlsView *)self styleSheet];
    [styleSheet3 volumeSliderPadding];
    v172 = Width - v174;
  }

  [styleSheet standardInteritemPadding];
  v176 = v175;
  if ([(AVCatalystGlassPlaybackControlsView *)self preferredUnobscuredArea]== 2)
  {
    if ([(AVCatalystGlassPlaybackControlsView *)self isFullScreen])
    {
      [styleSheet standardPaddingFullScreen];
    }

    else
    {
      [styleSheet standardPaddingInline];
    }

    v179 = v177;
    [styleSheet maximumProminentPlayButtonDimension];
    v178 = v180 + v179 * 2.0;
  }

  else
  {
    v178 = v103 + v176;
  }

  v181 = Height - v178;
  volumeControls = [(AVCatalystGlassPlaybackControlsView *)self volumeControls];
  v183 = [volumeControls prioritizedSizeThatFitsSize:{v172, v181}];

  screenModeControls = [(AVCatalystGlassPlaybackControlsView *)self screenModeControls];
  v185 = [screenModeControls prioritizedSizeThatFitsSize:{v172, v181}];

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

  screenModeControls2 = [(AVCatalystGlassPlaybackControlsView *)self screenModeControls];
  v259 = v181;
  [screenModeControls2 setCollapsed:v205 > v181];

  screenModeControls3 = [(AVCatalystGlassPlaybackControlsView *)self screenModeControls];
  [styleSheet defaultPlatterHeight];
  [screenModeControls3 setFrame:{v206, 0.0, v194, v209}];

  screenModeControls4 = [(AVCatalystGlassPlaybackControlsView *)self screenModeControls];
  [screenModeControls4 setNeedsLayout];

  screenModeControls5 = [(AVCatalystGlassPlaybackControlsView *)self screenModeControls];
  [screenModeControls5 layoutIfNeeded];

  volumeSlider7 = [(AVCatalystGlassPlaybackControlsView *)self volumeSlider];
  [volumeSlider7 extrinsicContentSize];
  v214 = v213;
  volumeButton4 = [(AVCatalystGlassPlaybackControlsView *)self volumeButton];
  [volumeButton4 extrinsicContentSize];
  v217 = v216;

  v218 = *v126;
  v219 = v126[1];
  v220 = v126[2];
  v221 = v126[3];
  volumeSlider8 = [(AVCatalystGlassPlaybackControlsView *)self volumeSlider];
  LODWORD(volumeButton4) = [volumeSlider8 isIncluded];

  if (volumeButton4 && v189 >= v214 + v217)
  {
    styleSheet4 = [(AVCatalystGlassPlaybackControlsView *)self styleSheet];
    [styleSheet4 volumeSliderPadding];
    v225 = v224;

    effectiveUserInterfaceLayoutDirection = [(AVCatalystGlassPlaybackControlsView *)self effectiveUserInterfaceLayoutDirection];
    styleSheet5 = [(AVCatalystGlassPlaybackControlsView *)self styleSheet];
    [styleSheet5 volumeSliderPadding];
    v229 = v228;

    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v221 = v229;
    }

    else
    {
      v219 = v229;
    }

    v189 = v189 + v225;
  }

  volumeControls2 = [(AVCatalystGlassPlaybackControlsView *)self volumeControls];
  [volumeControls2 setContentLayoutMargins:{v218, v219, v220, v221}];

  if (self)
  {
    v283 = 0u;
    v284 = 0u;
    v281 = 0u;
    v282 = 0u;
    customAudioItems2 = [(AVCatalystGlassPlaybackControlsView *)self customAudioItems];
    v232 = [customAudioItems2 countByEnumeratingWithState:&v281 objects:v290 count:16];
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
            objc_enumerationMutation(customAudioItems2);
          }

          if (![*(*(&v281 + 1) + 8 * ii) isCollapsed])
          {
            v236 = 1;
            goto LABEL_152;
          }
        }

        v233 = [customAudioItems2 countByEnumeratingWithState:&v281 objects:v290 count:16];
        if (v233)
        {
          continue;
        }

        break;
      }
    }

    v236 = 0;
LABEL_152:

    volumeSlider9 = [(AVCatalystGlassPlaybackControlsView *)self volumeSlider];
    isCollapsedOrExcluded = [volumeSlider9 isCollapsedOrExcluded];

    v239 = -44.0;
    if ((v236 & 1) == 0 && (isCollapsedOrExcluded & 1) == 0)
    {
      volumeSlider10 = [(AVCatalystGlassPlaybackControlsView *)self volumeSlider];
      [volumeSlider10 frame];
      v241 = CGRectGetWidth(v303);
      volumeSlider11 = [(AVCatalystGlassPlaybackControlsView *)self volumeSlider];
      [volumeSlider11 value];
      v244 = v241 * (v243 + -1.0);

      v239 = fmin(fmax(v244, -44.0) * 0.5, 0.0);
    }

    volumeButton5 = [(AVCatalystGlassPlaybackControlsView *)self volumeButton];
    [volumeButton5 setHitRectInsets:{-16.0, v239, -24.0, -16.0}];

    [(AVCatalystGlassPlaybackControlsView *)self layoutMargins];
    v247 = v246;
    if (![(AVCatalystGlassPlaybackControlsView *)self isFullScreen])
    {
      if ([(AVCatalystGlassPlaybackControlsView *)self preferredUnobscuredArea]== 1)
      {
        playbackControlsContainer8 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
        [playbackControlsContainer8 frame];
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
      layoutMarginsGuide4 = [(AVCatalystGlassPlaybackControlsView *)self layoutMarginsGuide];
      [layoutMarginsGuide4 layoutFrame];
      MinX = CGRectGetMinX(v305);
    }

    else
    {
      layoutMarginsGuide4 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
      [layoutMarginsGuide4 frame];
      MinX = CGRectGetMaxX(v306) - v189;
    }

    volumeControlsContainer = [(AVCatalystGlassPlaybackControlsView *)self volumeControlsContainer];
    [(AVCatalystGlassStyleSheet *)self->_styleSheet defaultPlatterHeight];
    [volumeControlsContainer setFrame:{MinX, v247, v189, v253}];

    volumeControls3 = [(AVCatalystGlassPlaybackControlsView *)self volumeControls];
    volumeControlsContainer2 = [(AVCatalystGlassPlaybackControlsView *)self volumeControlsContainer];
    [volumeControlsContainer2 bounds];
    [volumeControls3 setFrame:?];

    volumeControls4 = [(AVCatalystGlassPlaybackControlsView *)self volumeControls];
    [volumeControls4 setNeedsLayout];
  }

  volumeControlsContainer3 = [(AVCatalystGlassPlaybackControlsView *)self volumeControlsContainer];
  [volumeControlsContainer3 setCollapsed:v201 > v259];

  dimmingView = self->_dimmingView;
  [(AVCatalystGlassPlaybackControlsView *)self bounds];
  [(AVView *)dimmingView setFrame:?];
  kdebug_trace();
}

- (void)_updateDoubleRowLayoutEnabled
{
  v19 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  isDoubleRowLayoutEnabled = [self isDoubleRowLayoutEnabled];
  if (![self isFullScreen])
  {
    goto LABEL_8;
  }

  traitCollection = [self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    [self bounds];
    Width = CGRectGetWidth(v20);
    [self bounds];
    v9 = Width < CGRectGetHeight(v21);
    goto LABEL_12;
  }

  traitCollection2 = [self traitCollection];
  userInterfaceIdiom2 = [traitCollection2 userInterfaceIdiom];

  if (userInterfaceIdiom2 != 1)
  {
LABEL_8:
    if ((isDoubleRowLayoutEnabled & 1) == 0)
    {
      return;
    }

    v9 = 0;
    goto LABEL_13;
  }

  transportControlsView = [self transportControlsView];
  customContentTransitioningInfoPanel = [transportControlsView customContentTransitioningInfoPanel];

  if (!customContentTransitioningInfoPanel)
  {
    traitCollection3 = [self traitCollection];
    v9 = [traitCollection3 horizontalSizeClass] == 1;

LABEL_12:
    if (isDoubleRowLayoutEnabled == v9)
    {
      return;
    }

    goto LABEL_13;
  }

  if (isDoubleRowLayoutEnabled)
  {
    return;
  }

  v9 = 1;
LABEL_13:
  v12 = _AVLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = _AVMethodProem(self);
    v15 = 138412546;
    v16 = v13;
    v17 = 1024;
    v18 = v9;
    _os_log_impl(&dword_18B49C000, v12, OS_LOG_TYPE_DEFAULT, "%@ %d", &v15, 0x12u);
  }

  [self setDoubleRowLayoutEnabled:v9];
  transportControlsView2 = [self transportControlsView];
  [transportControlsView2 setDoubleRowLayoutEnabled:v9];
}

- (void)_updateLayoutMargins
{
  if (self)
  {
    if (([self isFullScreen] & 1) != 0 || (objc_msgSend(self, "overrideLayoutMarginsWhenEmbeddedInline"), v2 = objc_claimAutoreleasedReturnValue(), v2, !v2))
    {
      styleSheet = [self styleSheet];
      [self keyboardHeight];
      [styleSheet playbackControlsViewLayoutMarginsForView:self keyboardHeight:objc_msgSend(self isFullScreen:{"isFullScreen"), v18}];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      [self layoutMargins];
      if (v22 != v30 || v20 != v27 || v26 != v29 || v24 != v28)
      {

        [self setLayoutMargins:{v20, v22, v24, v26}];
      }
    }

    else
    {
      overrideLayoutMarginsWhenEmbeddedInline = [self overrideLayoutMarginsWhenEmbeddedInline];
      [overrideLayoutMarginsWhenEmbeddedInline UIEdgeInsetsValue];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
      [self layoutMargins];
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

      overrideLayoutMarginsWhenEmbeddedInline2 = [self overrideLayoutMarginsWhenEmbeddedInline];
      [overrideLayoutMarginsWhenEmbeddedInline2 UIEdgeInsetsValue];
      [self setLayoutMargins:?];
    }
  }
}

- (void)avkit_reevaluateHiddenStateOfItem:(id)item
{
  itemCopy = item;
  isCollapsedOrExcluded = [itemCopy isCollapsedOrExcluded];
  v5 = 1.0;
  if (isCollapsedOrExcluded)
  {
    v5 = 0.0;
  }

  [itemCopy setAlpha:v5];
  playbackControlsVisibilityAnimator = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsVisibilityAnimator];
  if (([playbackControlsVisibilityAnimator isRunning] & 1) != 0 || objc_msgSend(MEMORY[0x1E69DD250], "_isInAnimationBlock"))
  {

    if ((isCollapsedOrExcluded & 1) == 0)
    {
      v7 = itemCopy;
      v8 = 0;
LABEL_12:
      [v7 setHidden:v8];
      goto LABEL_13;
    }
  }

  else
  {
  }

  playbackControlsVisibilityAnimator2 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsVisibilityAnimator];
  if (([playbackControlsVisibilityAnimator2 isRunning] & 1) == 0)
  {
    _isInAnimationBlock = [MEMORY[0x1E69DD250] _isInAnimationBlock];

    v11 = itemCopy;
    if (_isInAnimationBlock)
    {
      goto LABEL_14;
    }

    v7 = itemCopy;
    v8 = isCollapsedOrExcluded;
    goto LABEL_12;
  }

LABEL_13:
  v11 = itemCopy;
LABEL_14:
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = AVCatalystGlassPlaybackControlsView;
  [(AVCatalystGlassPlaybackControlsView *)&v3 safeAreaInsetsDidChange];
  [(AVCatalystGlassPlaybackControlsView *)self _updateLayoutMargins];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = AVCatalystGlassPlaybackControlsView;
  [(AVCatalystGlassPlaybackControlsView *)&v4 traitCollectionDidChange:change];
  [(AVCatalystGlassPlaybackControlsView *)self _updateLayoutMargins];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v8 = [(UIView *)self avkit_hitTestControlForPoint:eventCopy withEvent:x, y];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = AVCatalystGlassPlaybackControlsView;
    v10 = [(AVView *)&v14 hitTest:eventCopy withEvent:x, y];
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
    showsPlaybackControls = [result showsPlaybackControls];
    result = [v1 showsDimmingView];
    if (v1[109])
    {
      v3 = 1;
    }

    else
    {
      v3 = result == 0;
    }

    if (!v3 && showsPlaybackControls != 0)
    {
      v5 = [AVView alloc];
      v6 = [(AVView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v7 = v1[109];
      v1[109] = v6;

      v8 = v1[109];
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      v10 = [blackColor colorWithAlphaComponent:0.4];
      [v8 setBackgroundColor:v10];

      [v1[109] setIgnoresTouches:1];
      [v1[109] setUserInteractionEnabled:0];
      [v1 insertSubview:v1[109] atIndex:0];

      return [v1 setNeedsLayout];
    }
  }

  return result;
}

- (void)setShowsDimmingView:(BOOL)view
{
  if (self->_showsDimmingView != view)
  {
    self->_showsDimmingView = view;
    [(AVCatalystGlassPlaybackControlsView *)&self->super.super.super.super.super.isa _setUpDimmingViewIfNeeded];
    dimmingView = self->_dimmingView;
    if (dimmingView)
    {
      v5 = [(AVCatalystGlassPlaybackControlsView *)self showsDimmingView]^ 1;

      [(AVView *)dimmingView setHidden:v5];
    }
  }
}

- (void)setPrefersVolumeSliderExpanded:(BOOL)expanded prefersVolumeButtonIncluded:(BOOL)included animated:(BOOL)animated
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __107__AVCatalystGlassPlaybackControlsView_setPrefersVolumeSliderExpanded_prefersVolumeButtonIncluded_animated___block_invoke;
  aBlock[3] = &unk_1E7208658;
  aBlock[4] = self;
  expandedCopy = expanded;
  includedCopy = included;
  v7 = _Block_copy(aBlock);
  volumeControls = [(AVCatalystGlassPlaybackControlsView *)self volumeControls];
  hasVisibleArrangedSubview = [volumeControls hasVisibleArrangedSubview];

  if (!hasVisibleArrangedSubview || !animated)
  {
LABEL_6:
    v7[2](v7);
    goto LABEL_7;
  }

  playbackControlsVisibilityAnimator = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsVisibilityAnimator];
  isRunning = [playbackControlsVisibilityAnimator isRunning];

  if (!isRunning)
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

  playbackControlsVisibilityAnimator2 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsVisibilityAnimator];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __107__AVCatalystGlassPlaybackControlsView_setPrefersVolumeSliderExpanded_prefersVolumeButtonIncluded_animated___block_invoke_2;
  v20[3] = &unk_1E7209280;
  v21 = v7;
  [playbackControlsVisibilityAnimator2 addCompletion:v20];

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

- (void)setShowsAudioControls:(BOOL)controls
{
  if (self->_showsAudioControls != controls)
  {
    self->_showsAudioControls = controls;
    playbackControlsContainer = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
    isCollapsedOrExcluded = [playbackControlsContainer isCollapsedOrExcluded];

    playbackControlsVisibilityAnimator = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsVisibilityAnimator];
    isRunning = [playbackControlsVisibilityAnimator isRunning];

    if (!isRunning)
    {
      if (isCollapsedOrExcluded)
      {

        [(AVCatalystGlassPlaybackControlsView *)self _updatePlaybackControlsContainerVisibilityAnimated:1 additionalActions:0];
      }
    }
  }
}

- (void)showPlaybackControls:(BOOL)controls immediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  showsPlaybackControls = self->_showsPlaybackControls;
  if (showsPlaybackControls != controls || self->_showsAudioControls != showsPlaybackControls)
  {
    [(AVCatalystGlassPlaybackControlsView *)self setShowsPlaybackControls:?];

    [(AVCatalystGlassPlaybackControlsView *)self _showPlaybackControlsAnimated:!immediatelyCopy];
  }
}

- (void)setShowsPlaybackControls:(BOOL)controls
{
  showsPlaybackControls = self->_showsPlaybackControls;
  if (showsPlaybackControls != controls)
  {
    self->_showsPlaybackControls = controls;
    showsPlaybackControls = controls;
  }

  if (showsPlaybackControls != self->_showsAudioControls)
  {
    self->_showsAudioControls = showsPlaybackControls;
  }

  [(AVCatalystGlassPlaybackControlsView *)&self->super.super.super.super.super.isa _setUpDimmingViewIfNeeded];
  visibilityDelegate = [(AVCatalystGlassPlaybackControlsView *)self visibilityDelegate];
  [visibilityDelegate glassPlaybackControlsViewDidToggleControlsVisibility:self];
}

- (BOOL)hasVisibleSubview
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  subviews = [(AVCatalystGlassPlaybackControlsView *)self subviews];
  v3 = [subviews countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(subviews);
        }

        if (![*(*(&v7 + 1) + 8 * i) isHiddenOrHasHiddenAncestor])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [subviews countByEnumeratingWithState:&v7 objects:v11 count:16];
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

- (void)animateAlongsideVisibilityAnimationsWithAnimationCoordinator:(id)coordinator appearingViews:(id)views disappearingViews:(id)disappearingViews
{
  coordinatorCopy = coordinator;
  viewsCopy = views;
  disappearingViewsCopy = disappearingViews;
  if ([(AVCatalystGlassPlaybackControlsView *)self _isInAWindow]&& ([(AVCatalystGlassPlaybackControlsView *)self isHiddenOrHasHiddenAncestor]& 1) == 0)
  {
    volumeControlsContainer = [(AVCatalystGlassPlaybackControlsView *)self volumeControlsContainer];
    v12 = [viewsCopy containsObject:volumeControlsContainer];

    playbackControlsContainer = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
    v14 = [viewsCopy containsObject:playbackControlsContainer];

    volumeControlsContainer2 = [(AVCatalystGlassPlaybackControlsView *)self volumeControlsContainer];
    LOBYTE(playbackControlsContainer) = [disappearingViewsCopy containsObject:volumeControlsContainer2];

    playbackControlsContainer2 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
    v17 = [disappearingViewsCopy containsObject:playbackControlsContainer2];

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
    v20 = playbackControlsContainer;
    v21 = v17;
    [coordinatorCopy addCoordinatedAnimations:v22 completion:v18];
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

- (void)setStyleSheet:(id)sheet
{
  sheetCopy = sheet;
  styleSheet = [(AVCatalystGlassPlaybackControlsView *)self styleSheet];
  v6 = [styleSheet isEqual:sheetCopy];

  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_styleSheet, sheet);
    transportControlsView = [(AVCatalystGlassPlaybackControlsView *)self transportControlsView];
    [transportControlsView setStyleSheet:sheetCopy];

    [(AVCatalystGlassPlaybackControlsView *)self setNeedsLayout];
  }
}

- (void)setCustomControlItems:(id)items animations:(id)animations
{
  itemsCopy = items;
  animationsCopy = animations;
  if (![(NSArray *)self->_customControlItems isEqualToArray:itemsCopy])
  {
    v7 = [itemsCopy copy];
    customControlItems = self->_customControlItems;
    self->_customControlItems = v7;

    customControlItems = [(AVCatalystGlassPlaybackControlsView *)self customControlItems];
    v10 = [(AVCatalystGlassPlaybackControlsView *)self _playbackControlsViewsForControlItems:customControlItems withType:2];
    customMediaItems = self->_customMediaItems;
    self->_customMediaItems = v10;

    customControlItems2 = [(AVCatalystGlassPlaybackControlsView *)self customControlItems];
    v13 = [(AVCatalystGlassPlaybackControlsView *)self _playbackControlsViewsForControlItems:customControlItems2 withType:0];
    customDisplayModeItems = self->_customDisplayModeItems;
    self->_customDisplayModeItems = v13;

    customControlItems3 = [(AVCatalystGlassPlaybackControlsView *)self customControlItems];
    v16 = [(AVCatalystGlassPlaybackControlsView *)self _playbackControlsViewsForControlItems:customControlItems3 withType:1];
    customAudioItems = self->_customAudioItems;
    self->_customAudioItems = v16;

    [(AVCatalystGlassPlaybackControlsView *)self _updatePlaybackControlsContainerVisibilityAnimated:1 additionalActions:animationsCopy];
  }
}

- (BOOL)includesCustomDisplayModeControls
{
  if ([(AVCatalystGlassPlaybackControlsView *)self showsProminentPlayButton])
  {
    return 0;
  }

  customDisplayModeItems = [(AVCatalystGlassPlaybackControlsView *)self customDisplayModeItems];
  v3 = [customDisplayModeItems count] != 0;

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

  customAudioItems = [(AVCatalystGlassPlaybackControlsView *)self customAudioItems];
  v3 = [customAudioItems count] != 0;

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

- (void)setOverrideLayoutMarginsWhenEmbeddedInline:(id)inline
{
  inlineCopy = inline;
  if (![(NSValue *)self->_overrideLayoutMarginsWhenEmbeddedInline isEqualToValue:?])
  {
    objc_storeStrong(&self->_overrideLayoutMarginsWhenEmbeddedInline, inline);
    if (![(AVCatalystGlassPlaybackControlsView *)self isFullScreen])
    {
      [(AVCatalystGlassPlaybackControlsView *)self setNeedsLayout];
    }
  }
}

- (void)setOverrideTransformForProminentPlayButton:(CGAffineTransform *)button
{
  p_overrideTransformForProminentPlayButton = &self->_overrideTransformForProminentPlayButton;
  v5 = *&button->c;
  v4 = *&button->tx;
  *&self->_overrideTransformForProminentPlayButton.a = *&button->a;
  *&self->_overrideTransformForProminentPlayButton.c = v5;
  *&self->_overrideTransformForProminentPlayButton.tx = v4;
  prominentPlayButtonContainerView = [(AVCatalystGlassPlaybackControlsView *)self prominentPlayButtonContainerView];
  v7 = *&p_overrideTransformForProminentPlayButton->c;
  v8[0] = *&p_overrideTransformForProminentPlayButton->a;
  v8[1] = v7;
  v8[2] = *&p_overrideTransformForProminentPlayButton->tx;
  [prominentPlayButtonContainerView setTransform:v8];
}

- (void)setIncludedContainers:(int64_t)containers animations:(id)animations
{
  if (self->_includedContainers != containers)
  {
    self->_includedContainers = containers;
    [(AVCatalystGlassPlaybackControlsView *)self _updatePlaybackControlsContainerVisibilityAnimated:1 additionalActions:animations];
  }
}

- (void)setFullScreen:(BOOL)screen
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_fullScreen != screen)
  {
    screenCopy = screen;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[AVCatalystGlassPlaybackControlsView setFullScreen:]";
      v8 = 1024;
      v9 = screenCopy;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d", &v6, 0x12u);
    }

    self->_fullScreen = screenCopy;
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

    playbackControlsContainer = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
    [(AVCatalystGlassPlaybackControlsView *)self addSubview:playbackControlsContainer];

    playbackControlsContainer2 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
    layoutMarginsGuide = [(AVCatalystGlassPlaybackControlsView *)self layoutMarginsGuide];
    [layoutMarginsGuide layoutFrame];
    [playbackControlsContainer2 setFrame:?];

    volumeControlsContainer = [(AVCatalystGlassPlaybackControlsView *)self volumeControlsContainer];
    [(AVCatalystGlassPlaybackControlsView *)self addSubview:volumeControlsContainer];

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
          playbackControlsContainer3 = [(AVCatalystGlassPlaybackControlsView *)self playbackControlsContainer];
          [playbackControlsContainer3 addSubview:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:buf count:16];
      }

      while (v12);
    }

    [(AVCatalystGlassPlaybackControlsView *)self avkit_reevaluateHiddenStateOfItem:self->_screenModeControls];
    [(AVCatalystGlassPlaybackControlsView *)self avkit_reevaluateHiddenStateOfItem:self->_prominentPlayButtonContainerView];
    [(AVCatalystGlassPlaybackControlsView *)self avkit_reevaluateHiddenStateOfItem:self->_volumeControlsContainer];
    volumeControlsContainer2 = [(AVCatalystGlassPlaybackControlsView *)self volumeControlsContainer];
    volumeControls = [(AVCatalystGlassPlaybackControlsView *)self volumeControls];
    [volumeControlsContainer2 addSubview:volumeControls];

    transportControlsContainerView = [(AVCatalystGlassPlaybackControlsView *)self transportControlsContainerView];
    transportControlsView = [(AVCatalystGlassPlaybackControlsView *)self transportControlsView];
    [transportControlsContainerView addSubview:transportControlsView];
  }
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  observationController = [(AVCatalystGlassPlaybackControlsView *)self observationController];
  [observationController stopAllObservation];

  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v7 = "[AVCatalystGlassPlaybackControlsView dealloc]";
    v8 = 1024;
    v9 = 280;
    v10 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  v5.receiver = self;
  v5.super_class = AVCatalystGlassPlaybackControlsView;
  [(AVCatalystGlassPlaybackControlsView *)&v5 dealloc];
}

- (AVCatalystGlassPlaybackControlsView)initWithFrame:(CGRect)frame styleSheet:(id)sheet
{
  height = frame.size.height;
  rect = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v161 = *MEMORY[0x1E69E9840];
  sheetCopy = sheet;
  v10 = _AVLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v156 = "[AVCatalystGlassPlaybackControlsView initWithFrame:styleSheet:]";
    v157 = 1024;
    v158 = 98;
    v159 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  v148.receiver = self;
  v148.super_class = AVCatalystGlassPlaybackControlsView;
  height = [(AVGlassBackedView *)&v148 initWithFrame:x, y, rect, height];
  v12 = height;
  if (height)
  {
    [(AVView *)height setHidden:1];
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
    objc_storeStrong(&v12->_styleSheet, sheet);
    v18 = [AVTouchIgnoringView alloc];
    v20 = *MEMORY[0x1E695F058];
    v19 = *(MEMORY[0x1E695F058] + 8);
    v21 = *(MEMORY[0x1E695F058] + 16);
    v22 = *(MEMORY[0x1E695F058] + 24);
    v23 = [(AVTouchIgnoringView *)v18 initWithFrame:*MEMORY[0x1E695F058], v19, v21];
    screenModeControlsLeadingFixedSpaceView = v12->_screenModeControlsLeadingFixedSpaceView;
    v12->_screenModeControlsLeadingFixedSpaceView = v23;

    layoutAttributes = [(AVTouchIgnoringView *)v12->_screenModeControlsLeadingFixedSpaceView layoutAttributes];
    [layoutAttributes setTrailingInterItemSpace:9.0];

    v26 = [AVButton buttonWithAccessibilityIdentifier:@"Done" isFirstGeneration:0];
    doneButton = v12->_doneButton;
    v12->_doneButton = v26;

    [(AVButton *)v12->_doneButton setIncluded:0];
    [(AVButton *)v12->_doneButton setCollapsed:1];
    layoutAttributes2 = [(AVButton *)v12->_doneButton layoutAttributes];
    [layoutAttributes2 setHasFlexibleContentSize:0];

    layoutAttributes3 = [(AVButton *)v12->_doneButton layoutAttributes];
    [sheetCopy defaultInterItemSpacing];
    [layoutAttributes3 setTrailingInterItemSpace:?];

    layoutAttributes4 = [(AVButton *)v12->_doneButton layoutAttributes];
    [layoutAttributes4 setDisplayPriority:2];

    v31 = [AVButton buttonWithAccessibilityIdentifier:@"Full Screen" isFirstGeneration:0];
    fullScreenButton = v12->_fullScreenButton;
    v12->_fullScreenButton = v31;

    [(AVButton *)v12->_fullScreenButton setIncluded:0];
    [(AVButton *)v12->_fullScreenButton setCollapsed:1];
    layoutAttributes5 = [(AVButton *)v12->_fullScreenButton layoutAttributes];
    [layoutAttributes5 setHasFlexibleContentSize:0];

    layoutAttributes6 = [(AVButton *)v12->_fullScreenButton layoutAttributes];
    [sheetCopy defaultInterItemSpacing];
    [layoutAttributes6 setTrailingInterItemSpace:?];

    layoutAttributes7 = [(AVButton *)v12->_fullScreenButton layoutAttributes];
    [layoutAttributes7 setDisplayPriority:2];

    v36 = [AVButton buttonWithAccessibilityIdentifier:@"Picture in Picture" isFirstGeneration:0];
    pictureInPictureButton = v12->_pictureInPictureButton;
    v12->_pictureInPictureButton = v36;

    [(AVButton *)v12->_pictureInPictureButton setIncluded:0];
    [(AVButton *)v12->_pictureInPictureButton setCollapsed:1];
    layoutAttributes8 = [(AVButton *)v12->_pictureInPictureButton layoutAttributes];
    [layoutAttributes8 setHasFlexibleContentSize:0];

    layoutAttributes9 = [(AVButton *)v12->_pictureInPictureButton layoutAttributes];
    [sheetCopy defaultInterItemSpacing];
    [layoutAttributes9 setTrailingInterItemSpace:?];

    layoutAttributes10 = [(AVButton *)v12->_pictureInPictureButton layoutAttributes];
    [layoutAttributes10 setDisplayPriority:2];

    v41 = [[AVPlaybackControlsRoutePickerView alloc] initWithSecondGenerationButton:0];
    routePickerView = v12->_routePickerView;
    v12->_routePickerView = v41;

    [(AVPlaybackControlsRoutePickerView *)v12->_routePickerView setPrioritizesVideoDevices:1];
    [(AVPlaybackControlsRoutePickerView *)v12->_routePickerView setIncluded:0];
    [(AVPlaybackControlsRoutePickerView *)v12->_routePickerView setCollapsed:1];
    layoutAttributes11 = [(AVPlaybackControlsRoutePickerView *)v12->_routePickerView layoutAttributes];
    [layoutAttributes11 setHasFlexibleContentSize:0];

    layoutAttributes12 = [(AVPlaybackControlsRoutePickerView *)v12->_routePickerView layoutAttributes];
    [sheetCopy defaultInterItemSpacing];
    [layoutAttributes12 setTrailingInterItemSpace:?];

    layoutAttributes13 = [(AVPlaybackControlsRoutePickerView *)v12->_routePickerView layoutAttributes];
    [layoutAttributes13 setDisplayPriority:2];

    v143 = v22;
    v46 = [[AVTouchIgnoringView alloc] initWithFrame:v20, v19, v21, v22];
    screenModeControlsTrailingFixedSpaceView = v12->_screenModeControlsTrailingFixedSpaceView;
    v12->_screenModeControlsTrailingFixedSpaceView = v46;

    layoutAttributes14 = [(AVTouchIgnoringView *)v12->_screenModeControlsTrailingFixedSpaceView layoutAttributes];
    [sheetCopy defaultInterItemSpacing];
    [layoutAttributes14 setMinimumSize:{v49 * 0.5, 0.0}];

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
    layoutAttributes15 = [(AVGlassLayoutView *)v12->_screenModeControls layoutAttributes];
    [layoutAttributes15 setTrailingInterItemSpace:9.0];

    v72 = [AVButton buttonWithAccessibilityIdentifier:@"Central Play" isFirstGeneration:0];
    prominentPlayButton = v12->_prominentPlayButton;
    v12->_prominentPlayButton = v72;

    [(AVButton *)v12->_prominentPlayButton setClampsHitRectInsetsWhenContainedInScrollableView:1];
    v143 = [[AVGlassLayoutView alloc] initWithFrame:v60, v61, v21, v143];
    prominentPlayButtonContainerView = v12->_prominentPlayButtonContainerView;
    v12->_prominentPlayButtonContainerView = v143;

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
    [sheetCopy defaultItemInlineSize];
    v80 = v79;
    [sheetCopy defaultItemInlineSize];
    v82 = v81;
    v162.origin.x = v68;
    v162.origin.y = v145;
    v162.size.height = v146;
    v162.size.width = rect;
    v163 = CGRectInset(v162, v80, v82);
    v83 = v163.origin.x;
    v84 = v163.origin.y;
    width = v163.size.width;
    [sheetCopy defaultItemFullScreenSize];
    v87 = v86 + v86;
    v88 = [[AVView alloc] initWithFrame:v83, v84, width, v86 + v86];
    transportControlsContainerView = v12->_transportControlsContainerView;
    v12->_transportControlsContainerView = v88;

    [(AVView *)v12->_transportControlsContainerView setHasBackdropView:0];
    kdebug_trace();
    v90 = [[AVCatalystGlassTransportControlsView alloc] initWithFrame:sheetCopy styleSheet:v83, v84, width, v87];
    transportControlsView = v12->_transportControlsView;
    v12->_transportControlsView = v90;

    kdebug_trace();
    [(AVView *)v12->_transportControlsView setHasBackdropView:0];
    v12->_includedContainers = 28;
    mediaSelectionButton = [(AVCatalystGlassTransportControlsView *)v12->_transportControlsView mediaSelectionButton];
    mediaSelectionButton = v12->_mediaSelectionButton;
    v12->_mediaSelectionButton = mediaSelectionButton;

    controlOverflowButton = [(AVCatalystGlassTransportControlsView *)v12->_transportControlsView controlOverflowButton];
    controlOverflowButton = v12->_controlOverflowButton;
    v12->_controlOverflowButton = controlOverflowButton;

    playbackSpeedButton = [(AVCatalystGlassTransportControlsView *)v12->_transportControlsView playbackSpeedButton];
    playbackSpeedButton = v12->_playbackSpeedButton;
    v12->_playbackSpeedButton = playbackSpeedButton;

    standardPlayPauseButton = [(AVCatalystGlassTransportControlsView *)v12->_transportControlsView standardPlayPauseButton];
    standardPlayPauseButton = v12->_standardPlayPauseButton;
    v12->_standardPlayPauseButton = standardPlayPauseButton;

    skipForwardButton = [(AVCatalystGlassTransportControlsView *)v12->_transportControlsView skipForwardButton];
    skipForwardButton = v12->_skipForwardButton;
    v12->_skipForwardButton = skipForwardButton;

    skipBackButton = [(AVCatalystGlassTransportControlsView *)v12->_transportControlsView skipBackButton];
    skipBackButton = v12->_skipBackButton;
    v12->_skipBackButton = skipBackButton;

    startLeftwardContentTransitionButton = [(AVCatalystGlassTransportControlsView *)v12->_transportControlsView startLeftwardContentTransitionButton];
    startLeftwardContentTransitionButton = v12->_startLeftwardContentTransitionButton;
    v12->_startLeftwardContentTransitionButton = startLeftwardContentTransitionButton;

    startRightwardContentTransitionButton = [(AVCatalystGlassTransportControlsView *)v12->_transportControlsView startRightwardContentTransitionButton];
    startRightwardContentTransitionButton = v12->_startRightwardContentTransitionButton;
    v12->_startRightwardContentTransitionButton = startRightwardContentTransitionButton;

    scrubber = [(AVCatalystGlassTransportControlsView *)v12->_transportControlsView scrubber];
    scrubber = v12->_scrubber;
    v12->_scrubber = scrubber;

    v1432 = [[AVTouchIgnoringView alloc] initWithFrame:v144, v61, v21, v143];
    volumeControlsTrailingFixedSpaceView = v12->_volumeControlsTrailingFixedSpaceView;
    v12->_volumeControlsTrailingFixedSpaceView = v1432;

    [(AVTouchIgnoringView *)v12->_volumeControlsTrailingFixedSpaceView setExtrinsicContentSize:9.0, 0.0];
    layoutAttributes16 = [(AVTouchIgnoringView *)v12->_volumeControlsTrailingFixedSpaceView layoutAttributes];
    [layoutAttributes16 setMinimumSize:{9.0, 0.0}];

    layoutAttributes17 = [(AVTouchIgnoringView *)v12->_volumeControlsTrailingFixedSpaceView layoutAttributes];
    [layoutAttributes17 setHasFlexibleContentSize:0];

    [(AVTouchIgnoringView *)v12->_volumeControlsTrailingFixedSpaceView setIncluded:1];
    v1433 = [[AVTouchIgnoringView alloc] initWithFrame:v144, v61, v21, v143];
    volumeControlsInterItemFixedSpaceView = v12->_volumeControlsInterItemFixedSpaceView;
    v12->_volumeControlsInterItemFixedSpaceView = v1433;

    [(AVTouchIgnoringView *)v12->_volumeControlsInterItemFixedSpaceView setExtrinsicContentSize:9.0, 0.0];
    layoutAttributes18 = [(AVTouchIgnoringView *)v12->_volumeControlsInterItemFixedSpaceView layoutAttributes];
    [layoutAttributes18 setMinimumSize:{9.0, 0.0}];

    layoutAttributes19 = [(AVTouchIgnoringView *)v12->_volumeControlsInterItemFixedSpaceView layoutAttributes];
    [layoutAttributes19 setHasFlexibleContentSize:0];

    [(AVTouchIgnoringView *)v12->_volumeControlsInterItemFixedSpaceView setIncluded:1];
    v118 = objc_alloc_init(AVVolumeButtonControl);
    volumeButton = v12->_volumeButton;
    v12->_volumeButton = v118;

    layoutAttributes20 = [(AVVolumeButtonControl *)v12->_volumeButton layoutAttributes];
    layoutAttributes21 = [(AVTouchIgnoringView *)v12->_volumeControlsTrailingFixedSpaceView layoutAttributes];
    [layoutAttributes20 setDisplayPartnerAttributes:layoutAttributes21];

    v122 = objc_alloc_init(AVGlassVolumeSlider);
    volumeSlider = v12->_volumeSlider;
    v12->_volumeSlider = v122;

    layoutAttributes22 = [(AVGlassVolumeSlider *)v12->_volumeSlider layoutAttributes];
    layoutAttributes23 = [(AVTouchIgnoringView *)v12->_volumeControlsInterItemFixedSpaceView layoutAttributes];
    [layoutAttributes22 setDisplayPartnerAttributes:layoutAttributes23];

    v126 = v12->_volumeSlider;
    sliderMinValueTrackColor = [(AVCatalystGlassStyleSheet *)v12->_styleSheet sliderMinValueTrackColor];
    [(AVGlassVolumeSlider *)v126 setTintColor:sliderMinValueTrackColor];

    v150[0] = v12->_volumeSlider;
    v150[1] = v12->_volumeControlsInterItemFixedSpaceView;
    v150[2] = v12->_volumeButton;
    v150[3] = v12->_volumeControlsTrailingFixedSpaceView;
    v128 = [MEMORY[0x1E695DEC8] arrayWithObjects:v150 count:4];
    defaultAudioControls = v12->_defaultAudioControls;
    v12->_defaultAudioControls = v128;

    v1434 = [[AVGlassLayoutView alloc] initWithFrame:v144, v61, v21, v143];
    volumeControls = v12->_volumeControls;
    v12->_volumeControls = v1434;

    v132 = v12->_volumeControls;
    v149 = v12->_defaultAudioControls;
    v133 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v149 count:1];
    [(AVGlassLayoutView *)v132 setArrangedSubviews:v133];

    [(AVGlassLayoutView *)v12->_volumeControls setDebugIdentifier:@"volumeControls"];
    [(AVGlassLayoutView *)v12->_volumeControls setShapeStyle:3];
    [(AVView *)v12->_volumeControls setHasBackdropView:0];
    v134 = v12->_volumeControls;
    [sheetCopy volumeControlsDirectionalInsets];
    [(AVGlassLayoutView *)v134 setDirectionalLayoutMargins:?];
    v12->_needsIntialLayout = 1;
    [(AVView *)v12->_screenModeControls setIgnoresTouches:1];
    [(AVView *)v12->_volumeControls setIgnoresTouches:1];
    [(AVView *)v12->_prominentPlayButtonContainerView setIgnoresTouches:1];
    [(AVView *)v12->_transportControlsContainerView setIgnoresTouches:1];
    v146 = [[AVGlassBackgroundTouchIgnoringView alloc] initWithFrame:v68, v145, rect, v146];
    playbackControlsContainer = v12->_playbackControlsContainer;
    v12->_playbackControlsContainer = v146;

    [(AVGlassBackedView *)v12->_playbackControlsContainer setBackgroundMaterialStyle:6];
    [(AVGlassBackedView *)v12->_playbackControlsContainer setBackgroundMaterialized:1];
    v1435 = [[AVGlassBackgroundTouchIgnoringView alloc] initWithFrame:v144, v61, v21, v143];
    volumeControlsContainer = v12->_volumeControlsContainer;
    v12->_volumeControlsContainer = v1435;

    [(AVGlassBackedView *)v12->_volumeControlsContainer setBackgroundMaterialStyle:6];
    [(AVGlassBackedView *)v12->_volumeControlsContainer setBackgroundMaterialized:1];
    [(AVGlassBackgroundTouchIgnoringView *)v12->_volumeControlsContainer setIncluded:1];
    v139 = [[AVObservationController alloc] initWithOwner:v12];
    observationController = v12->_observationController;
    v12->_observationController = v139;

    [(AVObservationController *)v12->_observationController startObservingNotificationForName:*MEMORY[0x1E69DE820] object:0 notificationCenter:0 observationHandler:&__block_literal_global_923];
    [(AVObservationController *)v12->_observationController startObservingNotificationForName:*MEMORY[0x1E69DE850] object:0 notificationCenter:0 observationHandler:&__block_literal_global_923];
    [(AVObservationController *)v12->_observationController startObservingNotificationForName:*MEMORY[0x1E69DE018] object:0 notificationCenter:0 observationHandler:&__block_literal_global_35];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(AVCatalystGlassPlaybackControlsView *)v12 setTintColor:labelColor];
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