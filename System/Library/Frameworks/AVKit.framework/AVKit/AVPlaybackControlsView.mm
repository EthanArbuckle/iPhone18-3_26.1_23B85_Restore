@interface AVPlaybackControlsView
- (AVPlaybackControlsView)initWithFrame:(CGRect)frame styleSheet:(id)sheet;
- (AVPlaybackControlsViewVisibilityDelegate)visibilityDelegate;
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
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_animateKeyboardAvoidance:(int64_t)avoidance duration:(double)duration;
- (void)_collapse:(BOOL)_collapse view:(id)view;
- (void)_collapse:(BOOL)_collapse views:(id)views;
- (void)_setupInitialLayout;
- (void)_updateAreVolumeAndTransportControlsVisible;
- (void)_updateDoubleRowLayoutEnabled;
- (void)_updateLayoutMargins;
- (void)_updatePlaybackControlsContainerVisibilityAnimated:(BOOL)animated additionalActions:(id)actions;
- (void)_updateTransportControlsFrame;
- (void)_updateVolumeControlsWithSize:(CGSize)size;
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
- (void)setShowsPlaybackControls:(BOOL)controls;
- (void)setStyleSheet:(id)sheet;
- (void)setupInitialLayout;
- (void)showPlaybackControls:(BOOL)controls immediately:(BOOL)immediately;
- (void)traitCollectionDidChange:(id)change;
- (void)updateDisplayControlsVisibilityIncludedButtons:(id)buttons;
@end

@implementation AVPlaybackControlsView

- (CGAffineTransform)overrideTransformForProminentPlayButton
{
  v3 = *&self[16].a;
  *&retstr->a = *&self[15].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[16].c;
  return self;
}

- (AVPlaybackControlsViewVisibilityDelegate)visibilityDelegate
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
    [(AVPlaybackControlsView *)self _updateAreVolumeAndTransportControlsVisible];
    viewCopy = v6;
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
  v25[17] = *MEMORY[0x1E69E9840];
  pictureInPictureButton = self->_pictureInPictureButton;
  transportControlsView = self->_transportControlsView;
  routePickerView = self->_routePickerView;
  mediaSelectionButton = self->_mediaSelectionButton;
  controlOverflowButton = self->_controlOverflowButton;
  playbackSpeedButton = self->_playbackSpeedButton;
  standardPlayPauseButton = self->_standardPlayPauseButton;
  v25[0] = self->_doneButton;
  v25[1] = pictureInPictureButton;
  fullScreenButton = self->_fullScreenButton;
  v25[2] = transportControlsView;
  v25[3] = routePickerView;
  videoGravityButton = self->_videoGravityButton;
  v25[4] = mediaSelectionButton;
  v25[5] = controlOverflowButton;
  prominentPlayButton = self->_prominentPlayButton;
  v25[6] = playbackSpeedButton;
  v25[7] = standardPlayPauseButton;
  skipForwardButton = self->_skipForwardButton;
  v25[8] = fullScreenButton;
  v25[9] = videoGravityButton;
  skipBackButton = self->_skipBackButton;
  v25[10] = prominentPlayButton;
  v25[11] = skipForwardButton;
  startLeftwardContentTransitionButton = self->_startLeftwardContentTransitionButton;
  v25[12] = skipBackButton;
  v25[13] = startLeftwardContentTransitionButton;
  volumeButton = self->_volumeButton;
  v25[14] = self->_startRightwardContentTransitionButton;
  v25[15] = volumeButton;
  v25[16] = self->_volumeSlider;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:17];
  customDisplayModeItems = [(AVPlaybackControlsView *)self customDisplayModeItems];
  v19 = [v17 arrayByAddingObjectsFromArray:customDisplayModeItems];

  customAudioItems = [(AVPlaybackControlsView *)self customAudioItems];
  v21 = [v19 arrayByAddingObjectsFromArray:customAudioItems];

  customMediaItems = [(AVPlaybackControlsView *)self customMediaItems];
  v23 = [v21 arrayByAddingObjectsFromArray:customMediaItems];

  return v23;
}

- (void)_animateKeyboardAvoidance:(int64_t)avoidance duration:(double)duration
{
  keyboardUIAvoidanceAnimator = [(AVPlaybackControlsView *)self keyboardUIAvoidanceAnimator];
  if ([keyboardUIAvoidanceAnimator isRunning] && objc_msgSend(keyboardUIAvoidanceAnimator, "isInterruptible"))
  {
    [keyboardUIAvoidanceAnimator stopAnimation:0];
    [keyboardUIAvoidanceAnimator finishAnimationAtPosition:2];
  }

  objc_initWeak(&location, self);
  v8 = objc_alloc(MEMORY[0x1E69DD278]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __61__AVPlaybackControlsView__animateKeyboardAvoidance_duration___block_invoke;
  v14 = &unk_1E7209EA8;
  objc_copyWeak(&v15, &location);
  v9 = [v8 initWithDuration:avoidance curve:&v11 animations:duration];
  objc_storeStrong(&self->_keyboardUIAvoidanceAnimator, v9);
  v10 = [(AVPlaybackControlsView *)self keyboardUIAvoidanceAnimator:v11];
  [v10 startAnimation];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __61__AVPlaybackControlsView__animateKeyboardAvoidance_duration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsLayout];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 layoutIfNeeded];
}

- (void)_updateLayoutMargins
{
  if ([(AVPlaybackControlsView *)self isFullScreen]|| ([(AVPlaybackControlsView *)self overrideLayoutMarginsWhenEmbeddedInline], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    styleSheet = [(AVPlaybackControlsView *)self styleSheet];
    [(AVPlaybackControlsView *)self keyboardHeight];
    [styleSheet playbackControlsViewLayoutMarginsForView:self keyboardHeight:-[AVPlaybackControlsView isFullScreen](self isFullScreen:{"isFullScreen"), v19}];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    [(AVPlaybackControlsView *)self layoutMargins];
    if (v23 != v31 || v21 != v28 || v27 != v30 || v25 != v29)
    {

      [(AVPlaybackControlsView *)self setLayoutMargins:v21, v23, v25, v27];
    }
  }

  else
  {
    overrideLayoutMarginsWhenEmbeddedInline = [(AVPlaybackControlsView *)self overrideLayoutMarginsWhenEmbeddedInline];
    [overrideLayoutMarginsWhenEmbeddedInline UIEdgeInsetsValue];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(AVPlaybackControlsView *)self layoutMargins];
    if (v8 == v16 && v6 == v13 && v12 == v15)
    {
      v17 = v14;

      if (v10 == v17)
      {
        return;
      }
    }

    else
    {
    }

    overrideLayoutMarginsWhenEmbeddedInline2 = [(AVPlaybackControlsView *)self overrideLayoutMarginsWhenEmbeddedInline];
    [overrideLayoutMarginsWhenEmbeddedInline2 UIEdgeInsetsValue];
    [(AVPlaybackControlsView *)self setLayoutMargins:?];
  }
}

- (void)_setupInitialLayout
{
  v29 = *MEMORY[0x1E69E9840];
  if (![(AVPlaybackControlsView *)self needsIntialLayout])
  {
    v3 = _AVLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v20 = _AVMethodProem(self);
      *buf = 138412290;
      v28 = v20;
      _os_log_error_impl(&dword_18B49C000, v3, OS_LOG_TYPE_ERROR, "%@ called when initial layout not needed already set.", buf, 0xCu);
    }
  }

  [(AVPlaybackControlsView *)self setNeedsIntialLayout:0];
  [(AVPlaybackControlsView *)self setEdgesInsettingLayoutMarginsFromSafeArea:0];
  [(AVPlaybackControlsView *)self _updateLayoutMargins];
  playbackControlsContainer = [(AVPlaybackControlsView *)self playbackControlsContainer];
  [(AVPlaybackControlsView *)self addSubview:playbackControlsContainer];

  playbackControlsContainer2 = [(AVPlaybackControlsView *)self playbackControlsContainer];
  layoutMarginsGuide = [(AVPlaybackControlsView *)self layoutMarginsGuide];
  [layoutMarginsGuide layoutFrame];
  [playbackControlsContainer2 setFrame:?];

  volumeControlsContainer = [(AVPlaybackControlsView *)self volumeControlsContainer];
  [(AVPlaybackControlsView *)self addSubview:volumeControlsContainer];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  transportControlsContainerView = self->_transportControlsContainerView;
  v25[0] = self->_screenModeControls;
  v25[1] = transportControlsContainerView;
  v25[2] = self->_prominentPlayButtonContainerView;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:{3, 0}];
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * v13);
        playbackControlsContainer3 = [(AVPlaybackControlsView *)self playbackControlsContainer];
        [playbackControlsContainer3 addSubview:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v11);
  }

  [(AVPlaybackControlsView *)self avkit_reevaluateHiddenStateOfItem:self->_screenModeControls];
  [(AVPlaybackControlsView *)self avkit_reevaluateHiddenStateOfItem:self->_prominentPlayButtonContainerView];
  [(AVPlaybackControlsView *)self avkit_reevaluateHiddenStateOfItem:self->_volumeControlsContainer];
  volumeControlsContainer2 = [(AVPlaybackControlsView *)self volumeControlsContainer];
  volumeControls = [(AVPlaybackControlsView *)self volumeControls];
  [volumeControlsContainer2 addSubview:volumeControls];

  transportControlsContainerView = [(AVPlaybackControlsView *)self transportControlsContainerView];
  transportControlsView = [(AVPlaybackControlsView *)self transportControlsView];
  [transportControlsContainerView addSubview:transportControlsView];
}

- (void)_updateDoubleRowLayoutEnabled
{
  v20 = *MEMORY[0x1E69E9840];
  isDoubleRowLayoutEnabled = [(AVPlaybackControlsView *)self isDoubleRowLayoutEnabled];
  if (![(AVPlaybackControlsView *)self isFullScreen])
  {
    goto LABEL_7;
  }

  traitCollection = [(AVPlaybackControlsView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    [(AVPlaybackControlsView *)self bounds];
    Width = CGRectGetWidth(v21);
    [(AVPlaybackControlsView *)self bounds];
    v10 = Width < CGRectGetHeight(v22);
    goto LABEL_11;
  }

  traitCollection2 = [(AVPlaybackControlsView *)self traitCollection];
  userInterfaceIdiom2 = [traitCollection2 userInterfaceIdiom];

  if (userInterfaceIdiom2 != 1)
  {
LABEL_7:
    if (!isDoubleRowLayoutEnabled)
    {
      return;
    }

    v10 = 0;
    goto LABEL_12;
  }

  transportControlsView = [(AVPlaybackControlsView *)self transportControlsView];
  customContentTransitioningInfoPanel = [transportControlsView customContentTransitioningInfoPanel];

  if (!customContentTransitioningInfoPanel)
  {
    traitCollection3 = [(AVPlaybackControlsView *)self traitCollection];
    v10 = [traitCollection3 horizontalSizeClass] == 1;

LABEL_11:
    if (isDoubleRowLayoutEnabled == v10)
    {
      return;
    }

    goto LABEL_12;
  }

  if (isDoubleRowLayoutEnabled)
  {
    return;
  }

  v10 = 1;
LABEL_12:
  v13 = _AVLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = _AVMethodProem(self);
    v16 = 138412546;
    v17 = v14;
    v18 = 1024;
    v19 = v10;
    _os_log_impl(&dword_18B49C000, v13, OS_LOG_TYPE_DEFAULT, "%@ %d", &v16, 0x12u);
  }

  [(AVPlaybackControlsView *)self setDoubleRowLayoutEnabled:v10];
  transportControlsView2 = [(AVPlaybackControlsView *)self transportControlsView];
  [transportControlsView2 setDoubleRowLayoutEnabled:v10];
}

- (void)_updateAreVolumeAndTransportControlsVisible
{
  _customControlsViewIfLoaded = [(AVPlaybackControlsView *)self _customControlsViewIfLoaded];
  if ([(AVPlaybackControlsView *)self includesTransportControls])
  {
    playbackControlsContainer = [(AVPlaybackControlsView *)self playbackControlsContainer];
    [playbackControlsContainer alpha];
    [_customControlsViewIfLoaded setAreTransportControlsVisible:v5 > 0.0];
  }

  else
  {
    [_customControlsViewIfLoaded setAreTransportControlsVisible:0];
  }

  _customControlsViewIfLoaded2 = [(AVPlaybackControlsView *)self _customControlsViewIfLoaded];
  if ([(AVPlaybackControlsView *)self includesAudioControlsContainer]|| [(AVPlaybackControlsView *)self includesCustomAudioControls])
  {
    volumeControlsContainer = [(AVPlaybackControlsView *)self volumeControlsContainer];
    [volumeControlsContainer alpha];
    [_customControlsViewIfLoaded2 setAreVolumeControlsVisible:v8 > 0.0];
  }

  else
  {
    [_customControlsViewIfLoaded2 setAreVolumeControlsVisible:0];
  }

  _customControlsViewIfLoaded3 = [(AVPlaybackControlsView *)self _customControlsViewIfLoaded];
  [_customControlsViewIfLoaded3 updateConstraintsIfNeeded];

  _customControlsViewIfLoaded4 = [(AVPlaybackControlsView *)self _customControlsViewIfLoaded];
  [_customControlsViewIfLoaded4 layoutIfNeeded];
}

- (void)reevaluateHiddenStateForContainersAndSubviews
{
  volumeControlsContainer = [(AVPlaybackControlsView *)self volumeControlsContainer];
  [(AVPlaybackControlsView *)self avkit_reevaluateHiddenStateOfItem:volumeControlsContainer];

  playbackControlsContainer = [(AVPlaybackControlsView *)self playbackControlsContainer];
  [(AVPlaybackControlsView *)self avkit_reevaluateHiddenStateOfItem:playbackControlsContainer];

  screenModeControls = [(AVPlaybackControlsView *)self screenModeControls];
  [(AVPlaybackControlsView *)self avkit_reevaluateHiddenStateOfItem:screenModeControls];

  prominentPlayButtonContainerView = [(AVPlaybackControlsView *)self prominentPlayButtonContainerView];
  [(AVPlaybackControlsView *)self avkit_reevaluateHiddenStateOfItem:prominentPlayButtonContainerView];

  prominentPlayButtonContainerView2 = [(AVPlaybackControlsView *)self prominentPlayButtonContainerView];
  [prominentPlayButtonContainerView2 reevaluateHiddenStateOfAllItems];

  volumeControls = [(AVPlaybackControlsView *)self volumeControls];
  [volumeControls reevaluateHiddenStateOfAllItems];

  screenModeControls2 = [(AVPlaybackControlsView *)self screenModeControls];
  [screenModeControls2 reevaluateHiddenStateOfAllItems];

  transportControlsView = [(AVPlaybackControlsView *)self transportControlsView];
  [transportControlsView reevaluateHiddenStateOfAllItems];
}

- (void)_updatePlaybackControlsContainerVisibilityAnimated:(BOOL)animated additionalActions:(id)actions
{
  animatedCopy = animated;
  actionsCopy = actions;
  playbackControlsVisibilityAnimator = [(AVPlaybackControlsView *)self playbackControlsVisibilityAnimator];
  if ([playbackControlsVisibilityAnimator isRunning])
  {
    playbackControlsVisibilityAnimator2 = [(AVPlaybackControlsView *)self playbackControlsVisibilityAnimator];
    isInterruptible = [playbackControlsVisibilityAnimator2 isInterruptible];

    if (!isInterruptible)
    {
      goto LABEL_5;
    }

    playbackControlsVisibilityAnimator3 = [(AVPlaybackControlsView *)self playbackControlsVisibilityAnimator];
    [playbackControlsVisibilityAnimator3 stopAnimation:0];

    playbackControlsVisibilityAnimator = [(AVPlaybackControlsView *)self playbackControlsVisibilityAnimator];
    [playbackControlsVisibilityAnimator finishAnimationAtPosition:2];
  }

LABEL_5:
  transportControlsView = [(AVPlaybackControlsView *)self transportControlsView];
  customMediaItems = [(AVPlaybackControlsView *)self customMediaItems];
  [transportControlsView setCustomItems:customMediaItems];

  showsPlaybackControls = [(AVPlaybackControlsView *)self showsPlaybackControls];
  playbackControlsContainer = [(AVPlaybackControlsView *)self playbackControlsContainer];
  isCollapsedOrExcluded = [playbackControlsContainer isCollapsedOrExcluded];
  v14 = isCollapsedOrExcluded ^ 1;

  showsProminentPlayButton = [(AVPlaybackControlsView *)self showsProminentPlayButton];
  includesTransportControls = [(AVPlaybackControlsView *)self includesTransportControls];
  screenModeControls = [(AVPlaybackControlsView *)self screenModeControls];
  v53 = [screenModeControls hasVisibleArrangedSubview] ^ 1;

  if ([(AVPlaybackControlsView *)self includesDisplayModeControlsContainer])
  {
    v52 = 0;
  }

  else
  {
    v52 = ![(AVPlaybackControlsView *)self includesCustomDisplayModeControls];
  }

  v17 = isCollapsedOrExcluded & showsPlaybackControls;
  volumeControls = [(AVPlaybackControlsView *)self volumeControls];
  v19 = [volumeControls hasVisibleArrangedSubview] ^ 1;

  volumeControlsContainer = [(AVPlaybackControlsView *)self volumeControlsContainer];
  v21 = [volumeControlsContainer isCollapsedOrExcluded] ^ 1;

  v49 = showsProminentPlayButton;
  if (showsProminentPlayButton)
  {
    showsAudioControls = 0;
    goto LABEL_17;
  }

  if ([(AVPlaybackControlsView *)self includesAudioControlsContainer])
  {
    if (showsPlaybackControls)
    {
      showsAudioControls = 1;
      goto LABEL_17;
    }
  }

  else
  {
    includesCustomAudioControls = [(AVPlaybackControlsView *)self includesCustomAudioControls];
    showsAudioControls = includesCustomAudioControls;
    if (!includesCustomAudioControls || (isCollapsedOrExcluded & showsPlaybackControls & 1) != 0 || (v14 & showsPlaybackControls & 1) != 0)
    {
      goto LABEL_17;
    }
  }

  showsAudioControls = [(AVPlaybackControlsView *)self showsAudioControls];
LABEL_17:
  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = __95__AVPlaybackControlsView__updatePlaybackControlsContainerVisibilityAnimated_additionalActions___block_invoke;
  v86[3] = &unk_1E7209A60;
  v87 = v53;
  v88 = v19;
  v89 = isCollapsedOrExcluded & showsPlaybackControls;
  v90 = v14 & showsPlaybackControls;
  v91 = isCollapsedOrExcluded ^ 1;
  v86[4] = self;
  v92 = v52;
  v93 = showsAudioControls;
  v94 = v21;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v86];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v56 = array2;
  if (showsAudioControls)
  {
    v26 = array;
  }

  else
  {
    v26 = array2;
  }

  volumeControlsContainer2 = [(AVPlaybackControlsView *)self volumeControlsContainer];
  [v26 addObject:volumeControlsContainer2];

  v55 = array;
  if ((isCollapsedOrExcluded & showsPlaybackControls & 1) != 0 || (array = v56, ((isCollapsedOrExcluded | showsPlaybackControls) & 1) == 0))
  {
    playbackControlsContainer2 = [(AVPlaybackControlsView *)self playbackControlsContainer];
    [array addObject:playbackControlsContainer2];
  }

  if ((isCollapsedOrExcluded & 1) == 0 && !self->_controlsViewHasAppeared)
  {
    window = [(AVPlaybackControlsView *)self window];

    if (window)
    {
      self->_controlsViewHasAppeared = 1;
      playbackControlsContainer3 = [(AVPlaybackControlsView *)self playbackControlsContainer];
      v31 = [v55 containsObject:playbackControlsContainer3];

      if ((v31 & 1) == 0)
      {
        playbackControlsContainer4 = [(AVPlaybackControlsView *)self playbackControlsContainer];
        [v55 addObject:playbackControlsContainer4];
      }
    }
  }

  v33 = objc_alloc_init(AVPlayerViewControllerAnimationCoordinator);
  visibilityDelegate = [(AVPlaybackControlsView *)self visibilityDelegate];
  [visibilityDelegate playbackControlsView:self animateAlongsideVisibilityAnimationsWithAnimationCoordinator:v33 appearingViews:v55 disappearingViews:v56];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__AVPlaybackControlsView__updatePlaybackControlsContainerVisibilityAnimated_additionalActions___block_invoke_2;
  aBlock[3] = &unk_1E7208680;
  objc_copyWeak(&v76, &location);
  v77 = includesTransportControls;
  v78 = v52;
  v79 = v49;
  v80 = isCollapsedOrExcluded & showsPlaybackControls;
  v81 = v14 & showsPlaybackControls;
  v82 = showsPlaybackControls;
  v83 = v53;
  v84 = v19;
  v35 = v33;
  v74 = v35;
  v54 = actionsCopy;
  v75 = v54;
  v36 = _Block_copy(aBlock);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  [(AVPlaybackControlsView *)self setMostRecentAnimationCompletionsID:uUID];
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __95__AVPlaybackControlsView__updatePlaybackControlsContainerVisibilityAnimated_additionalActions___block_invoke_3;
  v69[3] = &unk_1E72086A8;
  objc_copyWeak(&v70, &location);
  v71 = v14 & !showsPlaybackControls;
  v72 = isCollapsedOrExcluded & !showsPlaybackControls;
  v38 = _Block_copy(v69);
  if ((((isCollapsedOrExcluded ^ 1) & 1) != 0 || (v17 & 1) != 0 || [(AVPlaybackControlsView *)self showsAudioControls]) && [(UIView *)self avkit_wantsAnimatedViewTransitions]&& animatedCopy)
  {
    if ([MEMORY[0x1E69DD250] _isInAnimationBlock])
    {
      playbackControlsVisibilityAnimator4 = [(AVPlaybackControlsView *)self playbackControlsVisibilityAnimator];
      isRunning = [playbackControlsVisibilityAnimator4 isRunning];

      if ((isRunning & 1) == 0)
      {
        [MEMORY[0x1E6979518] begin];
        v47 = MEMORY[0x1E6979518];
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v63[2] = __95__AVPlaybackControlsView__updatePlaybackControlsContainerVisibilityAnimated_additionalActions___block_invoke_5;
        v63[3] = &unk_1E72086D0;
        objc_copyWeak(&v67, &location);
        v64 = uUID;
        v66 = v38;
        v68 = animatedCopy;
        v65 = v35;
        [v47 setCompletionBlock:v63];
        v36[2](v36);
        [MEMORY[0x1E6979518] commit];

        p_from = &v67;
        goto LABEL_41;
      }
    }

    objc_initWeak(&from, self);
    playbackControlsVisibilityAnimator5 = [(AVPlaybackControlsView *)self playbackControlsVisibilityAnimator];
    if ([playbackControlsVisibilityAnimator5 isRunning])
    {
      playbackControlsVisibilityAnimator6 = [(AVPlaybackControlsView *)self playbackControlsVisibilityAnimator];
      isInterruptible2 = [playbackControlsVisibilityAnimator6 isInterruptible];

      if (!isInterruptible2)
      {
LABEL_38:
        v45 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:0 curve:v36 animations:0.2];
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __95__AVPlaybackControlsView__updatePlaybackControlsContainerVisibilityAnimated_additionalActions___block_invoke_6;
        v57[3] = &unk_1E72086F8;
        objc_copyWeak(&v60, &from);
        v59 = v38;
        v61 = animatedCopy;
        v58 = v35;
        [v45 addCompletion:v57];
        [(AVPlaybackControlsView *)self setPlaybackControlsVisibilityAnimator:v45];
        [v45 startAnimation];

        objc_destroyWeak(&v60);
        p_from = &from;
LABEL_41:
        objc_destroyWeak(p_from);
        goto LABEL_42;
      }

      playbackControlsVisibilityAnimator7 = [(AVPlaybackControlsView *)self playbackControlsVisibilityAnimator];
      [playbackControlsVisibilityAnimator7 stopAnimation:0];

      playbackControlsVisibilityAnimator5 = [(AVPlaybackControlsView *)self playbackControlsVisibilityAnimator];
      [playbackControlsVisibilityAnimator5 finishAnimationAtPosition:2];
    }

    goto LABEL_38;
  }

  v36[2](v36);
  v38[2](v38);
LABEL_42:

  objc_destroyWeak(&v70);
  objc_destroyWeak(&v76);
  objc_destroyWeak(&location);
}

void __95__AVPlaybackControlsView__updatePlaybackControlsContainerVisibilityAnimated_additionalActions___block_invoke(uint64_t a1)
{
  v27[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) & 1) != 0 || (*(a1 + 41) & 1) != 0 || (*(a1 + 42))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 43);
  }

  if (*(a1 + 44) == 1 && ([*(a1 + 32) avkit_isBeingPresented] & 1) == 0 && *(a1 + 40) != 1)
  {
LABEL_10:
    if (*(a1 + 42) != 1)
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

  v6 = [*(a1 + 32) videoGravityButton];
  [v6 setIncluded:{objc_msgSend(*(a1 + 32), "prefersVideoGravityButtonIncluded")}];

  [*(a1 + 32) setNeedsLayout];
  if ((*(a1 + 40) & 1) == 0)
  {
    v2 = 1;
    goto LABEL_10;
  }

LABEL_11:
  v7 = [*(a1 + 32) _preferredArrangedDisplayModeViews];
  v8 = [v7 array];

  v9 = [*(a1 + 32) screenModeControls];
  v27[0] = v8;
  v2 = 1;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  [v9 setArrangedSubviews:v10];

  v11 = *(a1 + 32);
  v12 = *(a1 + 45);
  v13 = [v11 defaultDisplayModeControls];
  [v11 _collapse:v12 views:v13];

  v14 = *(a1 + 32);
  v15 = [v14 customDisplayModeItems];
  [v14 _collapse:0 views:v15];

LABEL_12:
  if ((*(a1 + 41) & 1) != 0 || *(a1 + 46) == 1 && *(a1 + 47) != 1 || *(a1 + 42) == 1 && (*(a1 + 47) & 1) == 0)
  {
    v16 = [*(a1 + 32) _preferredArrangedAudioModeViews];
    v17 = [v16 array];

    v18 = [*(a1 + 32) volumeControls];
    v26 = v17;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    [v18 setArrangedSubviews:v19];

    v20 = *(a1 + 32);
    LODWORD(v19) = [v20 includesAudioControlsContainer];
    v21 = [*(a1 + 32) defaultAudioControls];
    [v20 _collapse:v19 ^ 1 views:v21];

    v22 = *(a1 + 32);
    v23 = [v22 customAudioItems];
    [v22 _collapse:0 views:v23];

    v24 = [*(a1 + 32) volumeSlider];
    [v24 setIncluded:{objc_msgSend(*(a1 + 32), "prefersVolumeSliderExpandedAutomatically")}];

    v25 = [*(a1 + 32) volumeButton];
    [v25 setLongPressEnabled:{objc_msgSend(*(a1 + 32), "prefersVolumeSliderExpandedAutomatically") ^ 1}];

LABEL_14:
    [*(a1 + 32) layoutIfNeeded];
    return;
  }

  if (v2)
  {
    goto LABEL_14;
  }
}

uint64_t __95__AVPlaybackControlsView__updatePlaybackControlsContainerVisibilityAnimated_additionalActions___block_invoke_2(uint64_t a1)
{
  v66[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained transportControlsContainerView];
  [v4 setHidden:0];

  v5 = objc_loadWeakRetained((a1 + 48));
  v6 = [v5 transportControlsContainerView];
  v7 = v6;
  v8 = 0.0;
  if (*(a1 + 56))
  {
    v8 = 1.0;
  }

  [v6 setAlpha:v8];

  v9 = objc_loadWeakRetained((a1 + 48));
  v10 = [v9 screenModeControls];
  [v10 setIncluded:(*(a1 + 57) & 1) == 0];

  v11 = objc_loadWeakRetained((a1 + 48));
  v12 = [v11 prominentPlayButtonContainerView];
  [v12 setIncluded:*(a1 + 58)];

  v13 = 0;
  if ((*(a1 + 58) & 1) == 0)
  {
    v14 = objc_loadWeakRetained((a1 + 48));
    v15 = [v14 includesAudioControlsContainer];
    if ((v15 & 1) != 0 || (v1 = objc_loadWeakRetained((a1 + 48)), [v1 includesCustomAudioControls]))
    {
      if ((*(a1 + 59) & 1) != 0 || *(a1 + 60) == 1)
      {
        v13 = 1;
        if (v15)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v16 = objc_loadWeakRetained((a1 + 48));
        v13 = [v16 showsAudioControls];

        if (v15)
        {
LABEL_13:

          goto LABEL_14;
        }
      }
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_13;
  }

LABEL_14:
  v17 = objc_loadWeakRetained((a1 + 48));
  v18 = [v17 volumeControlsContainer];
  [v18 setIncluded:v13];

  v19 = objc_loadWeakRetained((a1 + 48));
  v20 = [v19 playbackControlsContainer];
  [v20 setIncluded:*(a1 + 61)];

  v21 = objc_loadWeakRetained((a1 + 48));
  v22 = [v21 visibilityDelegate];
  v23 = objc_loadWeakRetained((a1 + 48));
  [v22 playbackControlsViewNeedsUpdateStatusBarAppearance:v23];

  if (*(a1 + 60) == 1)
  {
    v24 = objc_loadWeakRetained((a1 + 48));
    v25 = [v24 fullScreenButton];
    v26 = objc_loadWeakRetained((a1 + 48));
    [v25 setIncluded:{objc_msgSend(v26, "prefersFullScreenButtonIncluded")}];

    v27 = objc_loadWeakRetained((a1 + 48));
    v28 = [v27 doneButton];
    v29 = objc_loadWeakRetained((a1 + 48));
    [v28 setIncluded:{objc_msgSend(v29, "prefersDoneButtonIncluded")}];

    v30 = objc_loadWeakRetained((a1 + 48));
    v31 = [v30 pictureInPictureButton];
    v32 = objc_loadWeakRetained((a1 + 48));
    [v31 setIncluded:{objc_msgSend(v32, "prefersPiPButtonIncluded")}];

    v33 = objc_loadWeakRetained((a1 + 48));
    v34 = [v33 videoGravityButton];
    v35 = objc_loadWeakRetained((a1 + 48));
    [v34 setIncluded:{objc_msgSend(v35, "prefersVideoGravityButtonIncluded")}];

    if ((*(a1 + 57) & 1) == 0)
    {
      v36 = objc_loadWeakRetained((a1 + 48));
      v37 = [v36 screenModeControls];
      v38 = objc_loadWeakRetained((a1 + 48));
      v39 = [v38 _preferredArrangedDisplayModeViews];
      v40 = [v39 array];
      v66[0] = v40;
      v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:1];
      [v37 setArrangedSubviews:v41];

      if ((*(a1 + 62) & 1) == 0 && (*(a1 + 57) & 1) == 0)
      {
        v42 = objc_loadWeakRetained((a1 + 48));
        v43 = [v42 includesDisplayModeControlsContainer];
        v44 = objc_loadWeakRetained((a1 + 48));
        v45 = [v44 defaultDisplayModeControls];
        [v42 _collapse:v43 ^ 1u views:v45];

        v46 = objc_loadWeakRetained((a1 + 48));
        v47 = [v46 _displayModeViewsToRemoveDuringAnimation];
        [v46 _collapse:1 views:v47];
      }
    }

    if (v13)
    {
      v48 = objc_loadWeakRetained((a1 + 48));
      v49 = [v48 volumeControls];
      v50 = objc_loadWeakRetained((a1 + 48));
      v51 = [v50 _preferredArrangedAudioModeViews];
      v52 = [v51 array];
      v65 = v52;
      v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
      [v49 setArrangedSubviews:v53];

      if ((*(a1 + 63) & 1) == 0)
      {
        v54 = objc_loadWeakRetained((a1 + 48));
        v55 = [v54 includesAudioControlsContainer];
        v56 = objc_loadWeakRetained((a1 + 48));
        v57 = [v56 defaultAudioControls];
        [v54 _collapse:v55 ^ 1u views:v57];

        v58 = objc_loadWeakRetained((a1 + 48));
        v59 = [v58 _audioViewsToRemoveDuringAnimation];
        [v58 _collapse:1 views:v59];
      }
    }

    v60 = objc_loadWeakRetained((a1 + 48));
    v61 = [v60 customAudioItems];
    [v60 _collapse:0 views:v61];

    v62 = objc_loadWeakRetained((a1 + 48));
    v63 = [v62 customDisplayModeItems];
    [v62 _collapse:0 views:v63];
  }

  [*(a1 + 32) performCoordinatedAnimations];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __95__AVPlaybackControlsView__updatePlaybackControlsContainerVisibilityAnimated_additionalActions___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setMostRecentAnimationCompletionsID:0];

  if ((*(a1 + 40) & 1) != 0 || *(a1 + 41) == 1)
  {
    v3 = MEMORY[0x1E69DD250];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __95__AVPlaybackControlsView__updatePlaybackControlsContainerVisibilityAnimated_additionalActions___block_invoke_4;
    v5[3] = &unk_1E7209EA8;
    objc_copyWeak(&v6, (a1 + 32));
    [v3 performWithoutAnimation:v5];
    objc_destroyWeak(&v6);
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 reevaluateHiddenStateForContainersAndSubviews];
}

void __95__AVPlaybackControlsView__updatePlaybackControlsContainerVisibilityAnimated_additionalActions___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained setMostRecentAnimationCompletionsID:0];

  v3 = objc_loadWeakRetained((a1 + 56));
  v4 = [v3 mostRecentAnimationCompletionsID];
  v5 = [v4 isEqual:*(a1 + 32)];

  if (v5)
  {
    (*(*(a1 + 48) + 16))();
    if (*(a1 + 64) == 1)
    {
      v6 = *(a1 + 40);

      [v6 didFinishAnimations:1];
    }
  }
}

void __95__AVPlaybackControlsView__updatePlaybackControlsContainerVisibilityAnimated_additionalActions___block_invoke_6(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setPlaybackControlsVisibilityAnimator:0];

  if (!a2)
  {
    (*(*(a1 + 40) + 16))();
  }

  if (*(a1 + 56) == 1)
  {
    v5 = *(a1 + 32);

    [v5 didFinishAnimations:a2 == 0];
  }
}

void __95__AVPlaybackControlsView__updatePlaybackControlsContainerVisibilityAnimated_additionalActions___block_invoke_4(uint64_t a1)
{
  v21[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained volumeSlider];
  v4 = objc_loadWeakRetained((a1 + 32));
  [v3 setIncluded:{objc_msgSend(v4, "prefersVolumeSliderExpandedAutomatically")}];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 volumeButton];
  v7 = objc_loadWeakRetained((a1 + 32));
  [v6 setLongPressEnabled:{objc_msgSend(v7, "prefersVolumeSliderExpandedAutomatically") ^ 1}];

  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 screenModeControls];
  v10 = objc_loadWeakRetained((a1 + 32));
  v11 = [v10 _preferredArrangedDisplayModeViews];
  v12 = [v11 array];
  v21[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  [v9 setArrangedSubviews:v13];

  v14 = objc_loadWeakRetained((a1 + 32));
  v15 = [v14 volumeControls];
  v16 = objc_loadWeakRetained((a1 + 32));
  v17 = [v16 _preferredArrangedAudioModeViews];
  v18 = [v17 array];
  v20 = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  [v15 setArrangedSubviews:v19];
}

- (void)updateDisplayControlsVisibilityIncludedButtons:(id)buttons
{
  v24 = *MEMORY[0x1E69E9840];
  buttonsCopy = buttons;
  fullScreenButton = [(AVPlaybackControlsView *)self fullScreenButton];
  -[AVPlaybackControlsView setPrefersFullScreenButtonIncluded:](self, "setPrefersFullScreenButtonIncluded:", [buttonsCopy containsObject:fullScreenButton]);

  doneButton = [(AVPlaybackControlsView *)self doneButton];
  -[AVPlaybackControlsView setPrefersDoneButtonIncluded:](self, "setPrefersDoneButtonIncluded:", [buttonsCopy containsObject:doneButton]);

  pictureInPictureButton = [(AVPlaybackControlsView *)self pictureInPictureButton];
  -[AVPlaybackControlsView setPrefersPiPButtonIncluded:](self, "setPrefersPiPButtonIncluded:", [buttonsCopy containsObject:pictureInPictureButton]);

  videoGravityButton = [(AVPlaybackControlsView *)self videoGravityButton];
  v9 = [buttonsCopy containsObject:videoGravityButton];

  [(AVPlaybackControlsView *)self setPrefersVideoGravityButtonIncluded:v9];
  v10 = _AVLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if ([(AVPlaybackControlsView *)self prefersFullScreenButtonIncluded])
    {
      v11 = "YES";
    }

    else
    {
      v11 = "NO";
    }

    v18 = 136315650;
    v19 = "[AVPlaybackControlsView updateDisplayControlsVisibilityIncludedButtons:]";
    v20 = 2080;
    v21 = "self.prefersFullScreenButtonIncluded";
    v22 = 2080;
    v23 = v11;
    _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v18, 0x20u);
  }

  v12 = _AVLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if ([(AVPlaybackControlsView *)self prefersDoneButtonIncluded])
    {
      v13 = "YES";
    }

    else
    {
      v13 = "NO";
    }

    v18 = 136315650;
    v19 = "[AVPlaybackControlsView updateDisplayControlsVisibilityIncludedButtons:]";
    v20 = 2080;
    v21 = "self.prefersDoneButtonIncluded";
    v22 = 2080;
    v23 = v13;
    _os_log_impl(&dword_18B49C000, v12, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v18, 0x20u);
  }

  v14 = _AVLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if ([(AVPlaybackControlsView *)self prefersVideoGravityButtonIncluded])
    {
      v15 = "YES";
    }

    else
    {
      v15 = "NO";
    }

    v18 = 136315650;
    v19 = "[AVPlaybackControlsView updateDisplayControlsVisibilityIncludedButtons:]";
    v20 = 2080;
    v21 = "self.prefersVideoGravityButtonIncluded";
    v22 = 2080;
    v23 = v15;
    _os_log_impl(&dword_18B49C000, v14, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v18, 0x20u);
  }

  v16 = _AVLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if ([(AVPlaybackControlsView *)self prefersPiPButtonIncluded])
    {
      v17 = "YES";
    }

    else
    {
      v17 = "NO";
    }

    v18 = 136315650;
    v19 = "[AVPlaybackControlsView updateDisplayControlsVisibilityIncludedButtons:]";
    v20 = 2080;
    v21 = "self.prefersPiPButtonIncluded";
    v22 = 2080;
    v23 = v17;
    _os_log_impl(&dword_18B49C000, v16, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v18, 0x20u);
  }

  [(AVPlaybackControlsView *)self _updatePlaybackControlsContainerVisibilityAnimated:1 additionalActions:0];
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

        [(AVPlaybackControlsView *)self _collapse:_collapseCopy view:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [viewsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)_displayModeViewsToRemoveDuringAnimation
{
  _currentArrangedDisplayModeViews = [(AVPlaybackControlsView *)self _currentArrangedDisplayModeViews];
  v4 = [_currentArrangedDisplayModeViews mutableCopy];

  _preferredArrangedDisplayModeViews = [(AVPlaybackControlsView *)self _preferredArrangedDisplayModeViews];
  [v4 minusOrderedSet:_preferredArrangedDisplayModeViews];

  array = [v4 array];

  return array;
}

- (id)_audioViewsToRemoveDuringAnimation
{
  _currentArrangedAudioModeViews = [(AVPlaybackControlsView *)self _currentArrangedAudioModeViews];
  v4 = [_currentArrangedAudioModeViews mutableCopy];

  _preferredArrangedAudioModeViews = [(AVPlaybackControlsView *)self _preferredArrangedAudioModeViews];
  [v4 minusOrderedSet:_preferredArrangedAudioModeViews];

  array = [v4 array];

  return array;
}

- (id)_currentArrangedDisplayModeViews
{
  v2 = MEMORY[0x1E695DFB8];
  screenModeControls = [(AVPlaybackControlsView *)self screenModeControls];
  arrangedSubviews = [screenModeControls arrangedSubviews];
  firstObject = [arrangedSubviews firstObject];
  v6 = [v2 orderedSetWithArray:firstObject];

  return v6;
}

- (id)_currentArrangedAudioModeViews
{
  v2 = MEMORY[0x1E695DFB8];
  volumeControls = [(AVPlaybackControlsView *)self volumeControls];
  arrangedSubviews = [volumeControls arrangedSubviews];
  firstObject = [arrangedSubviews firstObject];
  v6 = [v2 orderedSetWithArray:firstObject];

  return v6;
}

- (id)_preferredArrangedDisplayModeViews
{
  v3 = MEMORY[0x1E695DFB8];
  defaultDisplayModeControls = [(AVPlaybackControlsView *)self defaultDisplayModeControls];
  customDisplayModeItems = [(AVPlaybackControlsView *)self customDisplayModeItems];
  v6 = [defaultDisplayModeControls arrayByAddingObjectsFromArray:customDisplayModeItems];
  v7 = [v3 orderedSetWithArray:v6];

  return v7;
}

- (id)_preferredArrangedAudioModeViews
{
  v3 = MEMORY[0x1E695DFB8];
  customAudioItems = [(AVPlaybackControlsView *)self customAudioItems];
  defaultAudioControls = [(AVPlaybackControlsView *)self defaultAudioControls];
  v6 = [customAudioItems arrayByAddingObjectsFromArray:defaultAudioControls];
  v7 = [v3 orderedSetWithArray:v6];

  return v7;
}

- (void)_updateVolumeControlsWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v44 = *MEMORY[0x1E69E9840];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  customAudioItems = [(AVPlaybackControlsView *)self customAudioItems];
  v7 = [customAudioItems countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v40;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(customAudioItems);
        }

        if (![*(*(&v39 + 1) + 8 * i) isCollapsed])
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v8 = [customAudioItems countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  volumeSlider = [(AVPlaybackControlsView *)self volumeSlider];
  isCollapsedOrExcluded = [volumeSlider isCollapsedOrExcluded];

  v14 = -44.0;
  if ((v11 & 1) == 0 && (isCollapsedOrExcluded & 1) == 0)
  {
    volumeSlider2 = [(AVPlaybackControlsView *)self volumeSlider];
    [volumeSlider2 frame];
    v16 = CGRectGetWidth(v45);
    volumeSlider3 = [(AVPlaybackControlsView *)self volumeSlider];
    [volumeSlider3 value];
    v19 = v16 * (v18 + -1.0);

    v14 = fmin(fmax(v19, -44.0) * 0.5, 0.0);
  }

  volumeButton = [(AVPlaybackControlsView *)self volumeButton];
  [volumeButton setHitRectInsets:{-16.0, v14, -24.0, -16.0}];

  if ([(AVPlaybackControlsView *)self isFullScreen])
  {
    screenModeControls = [(AVPlaybackControlsView *)self screenModeControls];
    if ([screenModeControls isHiddenOrHasHiddenAncestor])
    {
      window = [(AVPlaybackControlsView *)self window];
      windowScene = [window windowScene];
      statusBarManager = [windowScene statusBarManager];
      if ([statusBarManager isStatusBarHidden])
      {
        traitCollection = [(AVPlaybackControlsView *)self traitCollection];
        [traitCollection displayCornerRadius];
        v27 = v26;

        if (v27 == 0.0)
        {
          [(AVPlaybackControlsView *)self frame];
          MinY = CGRectGetMinY(v46);
          styleSheet = [(AVPlaybackControlsView *)self styleSheet];
          [styleSheet standardPaddingFullScreen];
          v31 = MinY + v30;
LABEL_21:

          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    goto LABEL_24;
  }

  if ([(AVPlaybackControlsView *)self preferredUnobscuredArea]== 1)
  {
    styleSheet = [(AVPlaybackControlsView *)self playbackControlsContainer];
    [styleSheet frame];
    v31 = CGRectGetMaxY(v47) - height;
    goto LABEL_21;
  }

LABEL_24:
  [(AVPlaybackControlsView *)self layoutMargins];
  v31 = v32;
LABEL_25:
  if ([(AVPlaybackControlsView *)self effectiveUserInterfaceLayoutDirection]== 1)
  {
    layoutMarginsGuide = [(AVPlaybackControlsView *)self layoutMarginsGuide];
    [layoutMarginsGuide layoutFrame];
    MinX = CGRectGetMinX(v48);
  }

  else
  {
    layoutMarginsGuide = [(AVPlaybackControlsView *)self playbackControlsContainer];
    [layoutMarginsGuide frame];
    MinX = CGRectGetMaxX(v49) - width;
  }

  volumeControlsContainer = [(AVPlaybackControlsView *)self volumeControlsContainer];
  [volumeControlsContainer setFrame:{MinX, v31, width, height}];

  volumeControls = [(AVPlaybackControlsView *)self volumeControls];
  volumeControlsContainer2 = [(AVPlaybackControlsView *)self volumeControlsContainer];
  [volumeControlsContainer2 bounds];
  [volumeControls setFrame:?];

  volumeControls2 = [(AVPlaybackControlsView *)self volumeControls];
  [volumeControls2 setNeedsLayout];
}

- (void)_updateTransportControlsFrame
{
  transportControlsView = [(AVPlaybackControlsView *)self transportControlsView];
  [transportControlsView intrinsicContentSize];
  v5 = v4;
  v7 = v6;

  playbackControlsContainer = [(AVPlaybackControlsView *)self playbackControlsContainer];
  [playbackControlsContainer frame];
  v9 = CGRectGetHeight(v32) - v7;

  playbackControlsContainer2 = [(AVPlaybackControlsView *)self playbackControlsContainer];
  [playbackControlsContainer2 frame];
  Width = CGRectGetWidth(v33);

  if (Width >= v5)
  {
    Width = v5;
  }

  transportControlsContainerView = [(AVPlaybackControlsView *)self transportControlsContainerView];
  transportControlsContainerView2 = [(AVPlaybackControlsView *)self transportControlsContainerView];
  [transportControlsContainerView2 frame];
  [transportControlsContainerView setFrame:{CGRectGetMinX(v34), v9, Width, v7}];

  styleSheet = [(AVPlaybackControlsView *)self styleSheet];
  [styleSheet minimumSingleButtonTransportControlsWidth];
  v16 = v15;

  playbackControlsContainer3 = [(AVPlaybackControlsView *)self playbackControlsContainer];
  v18 = playbackControlsContainer3;
  if (Width == v16)
  {
    [playbackControlsContainer3 frame];
    v19 = CGRectGetHeight(v35) - v7;

    transportControlsContainerView3 = [(AVPlaybackControlsView *)self transportControlsContainerView];
    [transportControlsContainerView3 setFrame:{0.0, v19, v5, v7}];
  }

  else
  {
    [playbackControlsContainer3 center];
    v22 = v21;
    playbackControlsContainer4 = [(AVPlaybackControlsView *)self playbackControlsContainer];
    [playbackControlsContainer4 frame];
    v24 = v22 - CGRectGetMinX(v36);

    transportControlsContainerView4 = [(AVPlaybackControlsView *)self transportControlsContainerView];
    [transportControlsContainerView4 center];
    v27 = v26;

    if (v27 == v24)
    {
      goto LABEL_8;
    }

    transportControlsContainerView3 = [(AVPlaybackControlsView *)self transportControlsContainerView];
    transportControlsContainerView5 = [(AVPlaybackControlsView *)self transportControlsContainerView];
    [transportControlsContainerView5 center];
    [transportControlsContainerView3 setCenter:v24];
  }

LABEL_8:
  transportControlsView2 = [(AVPlaybackControlsView *)self transportControlsView];
  [transportControlsView2 setFrame:{0.0, 0.0, v5, v7}];

  transportControlsView3 = [(AVPlaybackControlsView *)self transportControlsView];
  [transportControlsView3 setNeedsLayout];
}

- (void)layoutSubviews
{
  v241 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v235.receiver = self;
  v235.super_class = AVPlaybackControlsView;
  [(AVPlaybackControlsView *)&v235 layoutSubviews];
  if ([(AVPlaybackControlsView *)self needsIntialLayout])
  {
    return;
  }

  styleSheet = [(AVPlaybackControlsView *)self styleSheet];
  [(AVPlaybackControlsView *)self _updateDoubleRowLayoutEnabled];
  v233 = 0u;
  v234 = 0u;
  v231 = 0u;
  v232 = 0u;
  _playbackControlsViewItems = [(AVPlaybackControlsView *)self _playbackControlsViewItems];
  v5 = [_playbackControlsViewItems countByEnumeratingWithState:&v231 objects:v240 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v232;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v232 != v7)
        {
          objc_enumerationMutation(_playbackControlsViewItems);
        }

        [*(*(&v231 + 1) + 8 * i) setHasFullScreenAppearance:{-[AVPlaybackControlsView isFullScreen](self, "isFullScreen")}];
      }

      v6 = [_playbackControlsViewItems countByEnumeratingWithState:&v231 objects:v240 count:16];
    }

    while (v6);
  }

  transportControlsView = [(AVPlaybackControlsView *)self transportControlsView];
  [transportControlsView setHasAlternateAppearance:{-[AVPlaybackControlsView isFullScreen](self, "isFullScreen")}];

  [(AVPlaybackControlsView *)self _updateLayoutMargins];
  playbackControlsContainer = [(AVPlaybackControlsView *)self playbackControlsContainer];
  layoutMarginsGuide = [(AVPlaybackControlsView *)self layoutMarginsGuide];
  [layoutMarginsGuide layoutFrame];
  [playbackControlsContainer setFrame:?];

  layoutMarginsGuide2 = [(AVPlaybackControlsView *)self layoutMarginsGuide];
  [layoutMarginsGuide2 layoutFrame];
  Width = CGRectGetWidth(v242);

  layoutMarginsGuide3 = [(AVPlaybackControlsView *)self layoutMarginsGuide];
  [layoutMarginsGuide3 layoutFrame];
  Height = CGRectGetHeight(v243);

  [styleSheet defaultItemInlineSize];
  if (v16 >= Width)
  {
    v17 = v16;
  }

  else
  {
    v17 = Width;
  }

  [styleSheet maximumProminentPlayButtonDimension];
  if (v17 >= v18)
  {
    v17 = v18;
  }

  [styleSheet minimumProminentPlayButtonDimension];
  if (v19 >= Height)
  {
    v20 = v19;
  }

  else
  {
    v20 = Height;
  }

  [styleSheet maximumProminentPlayButtonDimension];
  if (v20 < v21)
  {
    v21 = v20;
  }

  if (v17 >= v21)
  {
    v17 = v21;
  }

  prominentPlayButton = [(AVPlaybackControlsView *)self prominentPlayButton];
  [prominentPlayButton setExtrinsicContentSize:{v17, v17}];

  prominentPlayButton2 = [(AVPlaybackControlsView *)self prominentPlayButton];
  [styleSheet defaultItemInlineSize];
  [prominentPlayButton2 setHasAlternateAppearance:v17 < v24];

  prominentPlayButtonContainerView = [(AVPlaybackControlsView *)self prominentPlayButtonContainerView];
  [prominentPlayButtonContainerView setFrame:{0.0, 0.0, v17, v17}];

  playbackControlsContainer2 = [(AVPlaybackControlsView *)self playbackControlsContainer];
  [playbackControlsContainer2 bounds];
  MidX = CGRectGetMidX(v244);
  playbackControlsContainer3 = [(AVPlaybackControlsView *)self playbackControlsContainer];
  [playbackControlsContainer3 bounds];
  MidY = CGRectGetMidY(v245);

  prominentPlayButtonContainerView2 = [(AVPlaybackControlsView *)self prominentPlayButtonContainerView];
  [prominentPlayButtonContainerView2 setCenter:{MidX, MidY}];

  if ([(AVPlaybackControlsView *)self isFullScreen])
  {
    [styleSheet defaultItemFullScreenSize];
  }

  else
  {
    [styleSheet defaultItemInlineSize];
  }

  v33 = v31;
  v34 = v32;
  doneButton = [(AVPlaybackControlsView *)self doneButton];
  [doneButton setExtrinsicContentSize:{v33, v34}];

  doneButton2 = [(AVPlaybackControlsView *)self doneButton];
  layoutAttributes = [doneButton2 layoutAttributes];
  [layoutAttributes setPrefersSecondaryMaterialOverlay:1];

  fullScreenButton = [(AVPlaybackControlsView *)self fullScreenButton];
  [fullScreenButton setExtrinsicContentSize:{v33, v34}];

  pictureInPictureButton = [(AVPlaybackControlsView *)self pictureInPictureButton];
  [pictureInPictureButton setExtrinsicContentSize:{v33, v34}];

  v229 = 0u;
  v230 = 0u;
  v227 = 0u;
  v228 = 0u;
  customDisplayModeItems = [(AVPlaybackControlsView *)self customDisplayModeItems];
  v41 = [customDisplayModeItems countByEnumeratingWithState:&v227 objects:v239 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v228;
    do
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v228 != v43)
        {
          objc_enumerationMutation(customDisplayModeItems);
        }

        [*(*(&v227 + 1) + 8 * j) setExtrinsicContentSize:{v33, v34}];
      }

      v42 = [customDisplayModeItems countByEnumeratingWithState:&v227 objects:v239 count:16];
    }

    while (v42);
  }

  volumeButton = [(AVPlaybackControlsView *)self volumeButton];
  layoutAttributes2 = [volumeButton layoutAttributes];
  [layoutAttributes2 setDisplayPriority:4];

  volumeSlider = [(AVPlaybackControlsView *)self volumeSlider];
  layoutAttributes3 = [volumeSlider layoutAttributes];
  [layoutAttributes3 setDisplayPriority:3];

  if ([(AVPlaybackControlsView *)self isFullScreen])
  {
    videoGravityButton = [(AVPlaybackControlsView *)self videoGravityButton];
    [videoGravityButton setExtrinsicContentSize:{v33, v34}];

    volumeButton2 = [(AVPlaybackControlsView *)self volumeButton];
    volumeSlider2 = [(AVPlaybackControlsView *)self volumeSlider];
    isIncluded = [volumeSlider2 isIncluded];
    [styleSheet defaultItemFullScreenSize];
    if (isIncluded)
    {
      v55 = v54 + 1.0;
      [styleSheet defaultItemFullScreenSize];
    }

    else
    {
      v55 = v53;
    }

    [volumeButton2 setExtrinsicContentSize:v55];

    customAudioItems = [(AVPlaybackControlsView *)self customAudioItems];
    if ([customAudioItems count] > 1)
    {
      v72 = 1;
    }

    else
    {
      volumeButton3 = [(AVPlaybackControlsView *)self volumeButton];
      v72 = [volumeButton3 isCollapsedOrExcluded] ^ 1;
    }

    v225 = 0u;
    v226 = 0u;
    v223 = 0u;
    v224 = 0u;
    customAudioItems2 = [(AVPlaybackControlsView *)self customAudioItems];
    v74 = [customAudioItems2 countByEnumeratingWithState:&v223 objects:v238 count:16];
    if (v74)
    {
      v75 = v74;
      v76 = *v224;
      do
      {
        for (k = 0; k != v75; ++k)
        {
          if (*v224 != v76)
          {
            objc_enumerationMutation(customAudioItems2);
          }

          v78 = *(*(&v223 + 1) + 8 * k);
          [styleSheet defaultItemFullScreenSize];
          [v78 setExtrinsicContentSize:?];
          layoutAttributes4 = [v78 layoutAttributes];
          [layoutAttributes4 setPrefersSecondaryMaterialOverlay:v72];

          volumeSlider3 = [(AVPlaybackControlsView *)self volumeSlider];
          [v78 setIncluded:{objc_msgSend(volumeSlider3, "isIncluded") ^ 1}];
        }

        v75 = [customAudioItems2 countByEnumeratingWithState:&v223 objects:v238 count:16];
      }

      while (v75);
    }

    traitCollection = [(AVPlaybackControlsView *)self traitCollection];
    if ([traitCollection horizontalSizeClass] == 1)
    {
      [(AVPlaybackControlsView *)self bounds];
      v82 = CGRectGetHeight(v246);
      [(AVPlaybackControlsView *)self bounds];
      v83 = CGRectGetWidth(v247);

      if (v82 > v83)
      {
        volumeSlider4 = [(AVPlaybackControlsView *)self volumeSlider];
        [styleSheet volumeSliderCompactFullScreenWidth];
LABEL_58:
        v85 = v84;
        [styleSheet defaultItemFullScreenSize];
        [volumeSlider4 setExtrinsicContentSize:v85];
        goto LABEL_59;
      }
    }

    else
    {
    }

    volumeSlider4 = [(AVPlaybackControlsView *)self volumeSlider];
    [styleSheet volumeSliderRegularFullScreenWidth];
    goto LABEL_58;
  }

  volumeSlider5 = [(AVPlaybackControlsView *)self volumeSlider];
  [styleSheet volumeSliderInlineWidth];
  v58 = v57;
  [styleSheet defaultItemInlineSize];
  [volumeSlider5 setExtrinsicContentSize:v58];

  volumeButton4 = [(AVPlaybackControlsView *)self volumeButton];
  [styleSheet defaultItemInlineSize];
  v61 = v60;
  [styleSheet defaultItemInlineSize];
  [volumeButton4 setExtrinsicContentSize:v61];

  v221 = 0u;
  v222 = 0u;
  v219 = 0u;
  v220 = 0u;
  volumeSlider4 = [(AVPlaybackControlsView *)self customAudioItems];
  v63 = [volumeSlider4 countByEnumeratingWithState:&v219 objects:v237 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v220;
    do
    {
      for (m = 0; m != v64; ++m)
      {
        if (*v220 != v65)
        {
          objc_enumerationMutation(volumeSlider4);
        }

        v67 = *(*(&v219 + 1) + 8 * m);
        [styleSheet defaultItemInlineSize];
        v69 = v68;
        [styleSheet defaultItemInlineSize];
        [v67 setExtrinsicContentSize:v69];
      }

      v64 = [volumeSlider4 countByEnumeratingWithState:&v219 objects:v237 count:16];
    }

    while (v64);
  }

LABEL_59:

  if ([(AVPlaybackControlsView *)self isDoubleRowLayoutEnabled])
  {
    [styleSheet maximumMultiRowTransportControlsWidth];
    if (v86 >= Width)
    {
      v86 = Width;
    }

    goto LABEL_74;
  }

  traitCollection2 = [(AVPlaybackControlsView *)self traitCollection];
  if ([traitCollection2 horizontalSizeClass] != 2)
  {
    goto LABEL_70;
  }

  traitCollection3 = [(AVPlaybackControlsView *)self traitCollection];
  if ([traitCollection3 verticalSizeClass] != 2)
  {

LABEL_70:
    goto LABEL_71;
  }

  isFullScreen = [(AVPlaybackControlsView *)self isFullScreen];

  if (isFullScreen)
  {
    [styleSheet maximumTransportControlsWidth];
    if (Width < v86)
    {
      v86 = Width;
    }

    goto LABEL_74;
  }

LABEL_71:
  preferredUnobscuredArea = [(AVPlaybackControlsView *)self preferredUnobscuredArea];
  v86 = Width;
  if (preferredUnobscuredArea == 1)
  {
    isFullScreen2 = [(AVPlaybackControlsView *)self isFullScreen];
    v86 = Width;
    if (!isFullScreen2)
    {
      [styleSheet minimumSingleButtonTransportControlsWidth];
    }
  }

LABEL_74:
  if (v86 >= Width)
  {
    v92 = Width;
  }

  else
  {
    v92 = v86;
  }

  [styleSheet minimumTransportControlsWidth];
  if (v92 <= v93)
  {
    [styleSheet minimumSingleButtonTransportControlsWidth];
    v92 = v94;
  }

  if ([(AVPlaybackControlsView *)self isFullScreen])
  {
    [styleSheet defaultItemFullScreenSize];
  }

  else
  {
    [styleSheet defaultItemInlineSize];
  }

  v96 = v95;
  isDoubleRowLayoutEnabled = [(AVPlaybackControlsView *)self isDoubleRowLayoutEnabled];
  v98 = 1.0;
  if (isDoubleRowLayoutEnabled)
  {
    v98 = 2.0;
  }

  v99 = v96 * v98;
  if ([(AVPlaybackControlsView *)self isDoubleRowLayoutEnabled])
  {
    transportControlsView2 = [(AVPlaybackControlsView *)self transportControlsView];
    [transportControlsView2 layoutHeightThatFitsRowsStartingWithRow:0];
    v102 = v101;

    if (v102 >= v99)
    {
      v99 = v102;
    }
  }

  transportControlsView3 = [(AVPlaybackControlsView *)self transportControlsView];
  [transportControlsView3 setExtrinsicContentSize:{v92, v99}];

  if ([(AVPlaybackControlsView *)self isFullScreen])
  {
    [styleSheet defaultItemFullScreenSize];
  }

  else
  {
    [styleSheet defaultItemInlineSize];
  }

  v105 = v104;
  standardPlayPauseButton = [(AVPlaybackControlsView *)self standardPlayPauseButton];
  [standardPlayPauseButton setExtrinsicContentSize:{0.0, v105}];

  skipBackButton = [(AVPlaybackControlsView *)self skipBackButton];
  [skipBackButton setExtrinsicContentSize:{0.0, v105}];

  skipForwardButton = [(AVPlaybackControlsView *)self skipForwardButton];
  [skipForwardButton setExtrinsicContentSize:{0.0, v105}];

  startLeftwardContentTransitionButton = [(AVPlaybackControlsView *)self startLeftwardContentTransitionButton];
  [startLeftwardContentTransitionButton setExtrinsicContentSize:{0.0, v105}];

  startRightwardContentTransitionButton = [(AVPlaybackControlsView *)self startRightwardContentTransitionButton];
  [startRightwardContentTransitionButton setExtrinsicContentSize:{0.0, v105}];

  mediaSelectionButton = [(AVPlaybackControlsView *)self mediaSelectionButton];
  [mediaSelectionButton setExtrinsicContentSize:{0.0, v105}];

  controlOverflowButton = [(AVPlaybackControlsView *)self controlOverflowButton];
  [controlOverflowButton setExtrinsicContentSize:{0.0, v105}];

  playbackSpeedButton = [(AVPlaybackControlsView *)self playbackSpeedButton];
  [playbackSpeedButton setExtrinsicContentSize:{0.0, v105}];

  if ([(AVPlaybackControlsView *)self isFullScreen])
  {
    [styleSheet routePickerButtonFullScreenSize];
  }

  else
  {
    [styleSheet routePickerButtonInlineSize];
  }

  v116 = v114;
  v117 = v115;
  if ([(AVPlaybackControlsView *)self isFullScreen])
  {
    [styleSheet audioRoutePickerFullScreenSize];
  }

  else
  {
    [styleSheet routePickerButtonInlineSize];
  }

  v120 = v118;
  v121 = v119;
  routePickerView = [(AVPlaybackControlsView *)self routePickerView];
  prioritizesVideoDevices = [routePickerView prioritizesVideoDevices];

  if (!prioritizesVideoDevices)
  {
    v116 = v120;
    v117 = v121;
  }

  routePickerView2 = [(AVPlaybackControlsView *)self routePickerView];
  [routePickerView2 setExtrinsicContentSize:{v116, v117}];

  routePickerView3 = [(AVPlaybackControlsView *)self routePickerView];
  customButton = [routePickerView3 customButton];
  micaPackage = [customButton micaPackage];
  [micaPackage setTargetSize:{v116, v117}];

  routePickerView4 = [(AVPlaybackControlsView *)self routePickerView];
  customButton2 = [routePickerView4 customButton];
  [customButton2 setHasFullScreenAppearance:{-[AVPlaybackControlsView isFullScreen](self, "isFullScreen")}];

  v217 = 0u;
  v218 = 0u;
  v215 = 0u;
  v216 = 0u;
  customMediaItems = [(AVPlaybackControlsView *)self customMediaItems];
  v131 = [customMediaItems countByEnumeratingWithState:&v215 objects:v236 count:16];
  if (v131)
  {
    v132 = v131;
    v133 = *v216;
    do
    {
      for (n = 0; n != v132; ++n)
      {
        if (*v216 != v133)
        {
          objc_enumerationMutation(customMediaItems);
        }

        [*(*(&v215 + 1) + 8 * n) setExtrinsicContentSize:{0.0, v105}];
      }

      v132 = [customMediaItems countByEnumeratingWithState:&v215 objects:v236 count:16];
    }

    while (v132);
  }

  isFullScreen3 = [(AVPlaybackControlsView *)self isFullScreen];
  v136 = MEMORY[0x1E69DC5C0];
  if (isFullScreen3)
  {
    goto LABEL_118;
  }

  transportControlsView4 = [(AVPlaybackControlsView *)self transportControlsView];
  if ([transportControlsView4 isIncluded])
  {
    transportControlsView5 = [(AVPlaybackControlsView *)self transportControlsView];
    [transportControlsView5 extrinsicContentSize];
    if (v139 <= Width)
    {
      transportControlsView6 = [(AVPlaybackControlsView *)self transportControlsView];
      [transportControlsView6 extrinsicContentSize];
      v140 = v142 > Height;
    }

    else
    {
      v140 = 1;
    }
  }

  else
  {
    v140 = 1;
  }

  transportControlsView7 = [(AVPlaybackControlsView *)self transportControlsView];
  [transportControlsView7 setCollapsed:v140];

  prominentPlayButton3 = [(AVPlaybackControlsView *)self prominentPlayButton];
  if ([prominentPlayButton3 isCollapsedOrExcluded])
  {
  }

  else
  {
    preferredUnobscuredArea2 = [(AVPlaybackControlsView *)self preferredUnobscuredArea];

    if (preferredUnobscuredArea2 != 2)
    {
      prominentPlayButton4 = [(AVPlaybackControlsView *)self prominentPlayButton];
      v147 = prominentPlayButton4;
      v148 = -Height;
      v149 = -Width;
      v150 = -Height;
      v151 = -Width;
      goto LABEL_117;
    }
  }

  prominentPlayButton4 = [(AVPlaybackControlsView *)self prominentPlayButton];
  v147 = prominentPlayButton4;
  v148 = *v136;
  v149 = v136[1];
  v150 = v136[2];
  v151 = v136[3];
LABEL_117:
  [prominentPlayButton4 setHitRectInsets:{v148, v149, v150, v151}];

  prominentPlayButtonContainerView3 = [(AVPlaybackControlsView *)self prominentPlayButtonContainerView];
  [prominentPlayButtonContainerView3 setNeedsLayout];

LABEL_118:
  [(AVPlaybackControlsView *)self _updateTransportControlsFrame];
  volumeSlider6 = [(AVPlaybackControlsView *)self volumeSlider];
  v154 = Width;
  if ([volumeSlider6 isIncluded])
  {
    styleSheet2 = [(AVPlaybackControlsView *)self styleSheet];
    [styleSheet2 volumeSliderPadding];
    v154 = Width - v156;
  }

  [styleSheet standardInteritemPadding];
  v158 = v157;
  if ([(AVPlaybackControlsView *)self preferredUnobscuredArea]== 2)
  {
    if ([(AVPlaybackControlsView *)self isFullScreen])
    {
      [styleSheet standardPaddingFullScreen];
    }

    else
    {
      [styleSheet standardPaddingInline];
    }

    v161 = v159;
    [styleSheet maximumProminentPlayButtonDimension];
    v160 = v162 + v161 * 2.0;
  }

  else
  {
    v160 = v99 + v158;
  }

  v163 = Height - v160;
  volumeControls = [(AVPlaybackControlsView *)self volumeControls];
  v165 = [volumeControls prioritizedSizeThatFitsSize:{v154, v163}];

  screenModeControls = [(AVPlaybackControlsView *)self screenModeControls];
  v167 = [screenModeControls prioritizedSizeThatFitsSize:{v154, v163}];

  v168 = [AVPrioritizedSize sizesResolvingFirstPrioritizedSize:v165 secondPrioritizedSize:v167 inAvailableWidth:v154];
  v169 = [v168 objectAtIndexedSubscript:0];
  [v169 CGSizeValue];
  v214 = v170;
  v172 = v171;

  v173 = [v168 objectAtIndexedSubscript:1];
  [v173 CGSizeValue];
  v175 = v174;
  v177 = v176;
  v178 = *&v176;

  if (v172 >= v177)
  {
    v179 = v177;
  }

  else
  {
    v179 = v172;
  }

  if ((v178 <= -1 || ((v178 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v178 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v182 = v172;
  }

  else
  {
    v182 = v179;
  }

  if ((*&v182 > -1 && ((*&v182 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v182 - 1) < 0xFFFFFFFFFFFFFLL) && v182 < v177)
  {
    v186 = v182;
  }

  else
  {
    v186 = v177;
  }

  if ([(AVPlaybackControlsView *)self effectiveUserInterfaceLayoutDirection])
  {
    v187 = Width - v175;
  }

  else
  {
    v187 = 0.0;
  }

  screenModeControls2 = [(AVPlaybackControlsView *)self screenModeControls];
  [screenModeControls2 setCollapsed:v186 > v163];

  screenModeControls3 = [(AVPlaybackControlsView *)self screenModeControls];
  [screenModeControls3 setFrame:{v187, 0.0, v175, v186}];

  screenModeControls4 = [(AVPlaybackControlsView *)self screenModeControls];
  [screenModeControls4 setNeedsLayout];

  volumeSlider7 = [(AVPlaybackControlsView *)self volumeSlider];
  [volumeSlider7 extrinsicContentSize];
  v193 = v192;
  volumeButton5 = [(AVPlaybackControlsView *)self volumeButton];
  [volumeButton5 extrinsicContentSize];
  v196 = v195;

  v197 = *v136;
  v198 = v136[1];
  v199 = v136[2];
  v200 = v136[3];
  volumeSlider8 = [(AVPlaybackControlsView *)self volumeSlider];
  LODWORD(volumeButton5) = [volumeSlider8 isIncluded];

  if (volumeButton5)
  {
    v202 = v193 + v196;
    v203 = v214;
    if (v214 >= v202)
    {
      styleSheet3 = [(AVPlaybackControlsView *)self styleSheet];
      [styleSheet3 volumeSliderPadding];
      v213 = v163;
      v206 = v205;

      effectiveUserInterfaceLayoutDirection = [(AVPlaybackControlsView *)self effectiveUserInterfaceLayoutDirection];
      styleSheet4 = [(AVPlaybackControlsView *)self styleSheet];
      [styleSheet4 volumeSliderPadding];
      v210 = v209;

      if (effectiveUserInterfaceLayoutDirection == 1)
      {
        v200 = v210;
      }

      else
      {
        v198 = v210;
      }

      v203 = v214 + v206;
      v163 = v213;
    }
  }

  else
  {
    v203 = v214;
  }

  volumeControls2 = [(AVPlaybackControlsView *)self volumeControls];
  [volumeControls2 setContentLayoutMargins:{v197, v198, v199, v200}];

  [(AVPlaybackControlsView *)self _updateVolumeControlsWithSize:v203, v182];
  volumeControlsContainer = [(AVPlaybackControlsView *)self volumeControlsContainer];
  [volumeControlsContainer setCollapsed:v182 > v163];

  kdebug_trace();
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
  playbackControlsVisibilityAnimator = [(AVPlaybackControlsView *)self playbackControlsVisibilityAnimator];
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

  playbackControlsVisibilityAnimator2 = [(AVPlaybackControlsView *)self playbackControlsVisibilityAnimator];
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
  v3.super_class = AVPlaybackControlsView;
  [(AVPlaybackControlsView *)&v3 safeAreaInsetsDidChange];
  [(AVPlaybackControlsView *)self _updateLayoutMargins];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = AVPlaybackControlsView;
  [(AVPlaybackControlsView *)&v4 traitCollectionDidChange:change];
  [(AVPlaybackControlsView *)self _updateLayoutMargins];
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
    v14.super_class = AVPlaybackControlsView;
    v10 = [(AVPlaybackControlsView *)&v14 hitTest:eventCopy withEvent:x, y];
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
  v3.receiver = self;
  v3.super_class = AVPlaybackControlsView;
  [(AVPlaybackControlsView *)&v3 didMoveToWindow];
  [(AVPlaybackControlsView *)self _updatePlaybackControlsContainerVisibilityAnimated:0 additionalActions:0];
}

- (void)setPrefersVolumeSliderExpanded:(BOOL)expanded prefersVolumeButtonIncluded:(BOOL)included animated:(BOOL)animated
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__AVPlaybackControlsView_setPrefersVolumeSliderExpanded_prefersVolumeButtonIncluded_animated___block_invoke;
  aBlock[3] = &unk_1E7208658;
  aBlock[4] = self;
  expandedCopy = expanded;
  includedCopy = included;
  v7 = _Block_copy(aBlock);
  volumeControls = [(AVPlaybackControlsView *)self volumeControls];
  hasVisibleArrangedSubview = [volumeControls hasVisibleArrangedSubview];

  if (!hasVisibleArrangedSubview || !animated)
  {
LABEL_6:
    v7[2](v7);
    goto LABEL_7;
  }

  playbackControlsVisibilityAnimator = [(AVPlaybackControlsView *)self playbackControlsVisibilityAnimator];
  isRunning = [playbackControlsVisibilityAnimator isRunning];

  if (!isRunning)
  {
    if (![MEMORY[0x1E69DD250] _isInAnimationBlock])
    {
      v13 = [objc_alloc(MEMORY[0x1E69DCF88]) initWithDampingRatio:0.75];
      v14 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:v13 timingParameters:0.5];
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __94__AVPlaybackControlsView_setPrefersVolumeSliderExpanded_prefersVolumeButtonIncluded_animated___block_invoke_3;
      v18 = &unk_1E72099C8;
      v19 = v7;
      [v14 addAnimations:&v15];
      [(AVPlaybackControlsView *)self setPlaybackControlsVisibilityAnimator:v14, v15, v16, v17, v18];
      [v14 startAnimation];

      goto LABEL_7;
    }

    goto LABEL_6;
  }

  playbackControlsVisibilityAnimator2 = [(AVPlaybackControlsView *)self playbackControlsVisibilityAnimator];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __94__AVPlaybackControlsView_setPrefersVolumeSliderExpanded_prefersVolumeButtonIncluded_animated___block_invoke_2;
  v20[3] = &unk_1E7209280;
  v21 = v7;
  [playbackControlsVisibilityAnimator2 addCompletion:v20];

LABEL_7:
}

uint64_t __94__AVPlaybackControlsView_setPrefersVolumeSliderExpanded_prefersVolumeButtonIncluded_animated___block_invoke(uint64_t a1)
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

uint64_t __94__AVPlaybackControlsView_setPrefersVolumeSliderExpanded_prefersVolumeButtonIncluded_animated___block_invoke_2(uint64_t result, uint64_t a2)
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
    playbackControlsContainer = [(AVPlaybackControlsView *)self playbackControlsContainer];
    isCollapsedOrExcluded = [playbackControlsContainer isCollapsedOrExcluded];

    playbackControlsVisibilityAnimator = [(AVPlaybackControlsView *)self playbackControlsVisibilityAnimator];
    isRunning = [playbackControlsVisibilityAnimator isRunning];

    if (!isRunning)
    {
      if (isCollapsedOrExcluded)
      {

        [(AVPlaybackControlsView *)self _updatePlaybackControlsContainerVisibilityAnimated:1 additionalActions:0];
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
    [(AVPlaybackControlsView *)self setShowsPlaybackControls:?];

    [(AVPlaybackControlsView *)self _showPlaybackControlsAnimated:!immediatelyCopy];
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

  visibilityDelegate = [(AVPlaybackControlsView *)self visibilityDelegate];
  [visibilityDelegate playbackControlsViewDidToggleControlsVisibility:self];
}

- (BOOL)hasVisibleSubview
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  subviews = [(AVPlaybackControlsView *)self subviews];
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
  if ([(AVPlaybackControlsView *)self _isInAWindow]&& ([(AVPlaybackControlsView *)self isHiddenOrHasHiddenAncestor]& 1) == 0)
  {
    volumeControlsContainer = [(AVPlaybackControlsView *)self volumeControlsContainer];
    v12 = [viewsCopy containsObject:volumeControlsContainer];

    playbackControlsContainer = [(AVPlaybackControlsView *)self playbackControlsContainer];
    v14 = [viewsCopy containsObject:playbackControlsContainer];

    volumeControlsContainer2 = [(AVPlaybackControlsView *)self volumeControlsContainer];
    LOBYTE(playbackControlsContainer) = [disappearingViewsCopy containsObject:volumeControlsContainer2];

    playbackControlsContainer2 = [(AVPlaybackControlsView *)self playbackControlsContainer];
    v17 = [disappearingViewsCopy containsObject:playbackControlsContainer2];

    objc_initWeak(&location, self);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __120__AVPlaybackControlsView_animateAlongsideVisibilityAnimationsWithAnimationCoordinator_appearingViews_disappearingViews___block_invoke;
    v22[3] = &unk_1E7208608;
    objc_copyWeak(&v23, &location);
    v24 = v14;
    v25 = v12;
    v22[4] = self;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __120__AVPlaybackControlsView_animateAlongsideVisibilityAnimationsWithAnimationCoordinator_appearingViews_disappearingViews___block_invoke_4;
    v18[3] = &unk_1E7208630;
    v20 = playbackControlsContainer;
    v21 = v17;
    objc_copyWeak(&v19, &location);
    [coordinatorCopy addCoordinatedAnimations:v22 completion:v18];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }
}

void __120__AVPlaybackControlsView_animateAlongsideVisibilityAnimationsWithAnimationCoordinator_appearingViews_disappearingViews___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateAreVolumeAndTransportControlsVisible];

  if (*(a1 + 48) == 1 && (*(a1 + 49) & 1) == 0)
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    v4 = [v3 traitCollection];
    [v4 displayCornerRadius];
    v6 = v5;

    if (v6 == 0.0)
    {
      v7 = MEMORY[0x1E69DD250];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __120__AVPlaybackControlsView_animateAlongsideVisibilityAnimationsWithAnimationCoordinator_appearingViews_disappearingViews___block_invoke_2;
      v17[3] = &unk_1E7209A10;
      objc_copyWeak(&v18, (a1 + 40));
      v17[4] = *(a1 + 32);
      [v7 performWithoutAnimation:v17];
      objc_destroyWeak(&v18);
    }
  }

  v8 = objc_loadWeakRetained((a1 + 40));
  v9 = [v8 screenModeControls];
  v10 = *(MEMORY[0x1E695EFD0] + 16);
  v16[0] = *MEMORY[0x1E695EFD0];
  v16[1] = v10;
  v16[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v9 setTransform:v16];

  v11 = objc_loadWeakRetained((a1 + 40));
  [v11 setNeedsLayout];

  if (*(a1 + 48) == 1 && *(a1 + 49) == 1)
  {
    v12 = MEMORY[0x1E69DD250];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __120__AVPlaybackControlsView_animateAlongsideVisibilityAnimationsWithAnimationCoordinator_appearingViews_disappearingViews___block_invoke_3;
    v14[3] = &unk_1E7209EA8;
    objc_copyWeak(&v15, (a1 + 40));
    [v12 performWithoutAnimation:v14];
    objc_destroyWeak(&v15);
  }

  else
  {
    v13 = objc_loadWeakRetained((a1 + 40));
    [v13 layoutIfNeeded];
  }
}

void __120__AVPlaybackControlsView_animateAlongsideVisibilityAnimationsWithAnimationCoordinator_appearingViews_disappearingViews___block_invoke_4(uint64_t a1)
{
  if ((*(a1 + 40) & 1) != 0 || *(a1 + 41) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setNeedsLayout];

    v3 = objc_loadWeakRetained((a1 + 32));
    [v3 layoutIfNeeded];
  }
}

void __120__AVPlaybackControlsView_animateAlongsideVisibilityAnimationsWithAnimationCoordinator_appearingViews_disappearingViews___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained window];
  v4 = [v3 windowScene];
  v5 = [v4 statusBarManager];
  [v5 statusBarFrame];
  v7 = v6;

  LOBYTE(v3) = [*(a1 + 32) isFullScreen];
  v8 = [*(a1 + 32) styleSheet];
  v9 = v8;
  if (v3)
  {
    [v8 standardPaddingFullScreen];
  }

  else
  {
    [v8 standardPaddingInline];
  }

  v11 = v10;

  v12 = objc_loadWeakRetained((a1 + 40));
  v13 = [v12 screenModeControls];
  CGAffineTransformMakeTranslation(&v14, 0.0, fmax(v7 + v11 * 0.5 - v11, 0.0));
  [v13 setTransform:&v14];
}

void __120__AVPlaybackControlsView_animateAlongsideVisibilityAnimationsWithAnimationCoordinator_appearingViews_disappearingViews___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained layoutIfNeeded];
}

- (void)setStyleSheet:(id)sheet
{
  sheetCopy = sheet;
  styleSheet = [(AVPlaybackControlsView *)self styleSheet];
  v6 = [styleSheet isEqual:sheetCopy];

  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_styleSheet, sheet);
    transportControlsView = [(AVPlaybackControlsView *)self transportControlsView];
    [transportControlsView setStyleSheet:sheetCopy];

    [(AVPlaybackControlsView *)self setNeedsLayout];
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

    customControlItems = [(AVPlaybackControlsView *)self customControlItems];
    v10 = [(AVPlaybackControlsView *)self _playbackControlsViewsForControlItems:customControlItems withType:2];
    customMediaItems = self->_customMediaItems;
    self->_customMediaItems = v10;

    customControlItems2 = [(AVPlaybackControlsView *)self customControlItems];
    v13 = [(AVPlaybackControlsView *)self _playbackControlsViewsForControlItems:customControlItems2 withType:0];
    customDisplayModeItems = self->_customDisplayModeItems;
    self->_customDisplayModeItems = v13;

    customControlItems3 = [(AVPlaybackControlsView *)self customControlItems];
    v16 = [(AVPlaybackControlsView *)self _playbackControlsViewsForControlItems:customControlItems3 withType:1];
    customAudioItems = self->_customAudioItems;
    self->_customAudioItems = v16;

    [(AVPlaybackControlsView *)self _updatePlaybackControlsContainerVisibilityAnimated:1 additionalActions:animationsCopy];
  }
}

- (BOOL)includesCustomDisplayModeControls
{
  if ([(AVPlaybackControlsView *)self showsProminentPlayButton])
  {
    return 0;
  }

  customDisplayModeItems = [(AVPlaybackControlsView *)self customDisplayModeItems];
  v3 = [customDisplayModeItems count] != 0;

  return v3;
}

- (BOOL)includesDisplayModeControlsContainer
{
  if ([(AVPlaybackControlsView *)self showsProminentPlayButton])
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
  if ([(AVPlaybackControlsView *)self showsProminentPlayButton])
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
  if ([(AVPlaybackControlsView *)self showsProminentPlayButton])
  {
    return 0;
  }

  customAudioItems = [(AVPlaybackControlsView *)self customAudioItems];
  v3 = [customAudioItems count] != 0;

  return v3;
}

- (BOOL)includesAudioControlsContainer
{
  if ([(AVPlaybackControlsView *)self showsProminentPlayButton])
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
    if (![(AVPlaybackControlsView *)self isFullScreen])
    {
      [(AVPlaybackControlsView *)self setNeedsLayout];
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
  prominentPlayButtonContainerView = [(AVPlaybackControlsView *)self prominentPlayButtonContainerView];
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
    [(AVPlaybackControlsView *)self _updatePlaybackControlsContainerVisibilityAnimated:1 additionalActions:animations];
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
      v7 = "[AVPlaybackControlsView setFullScreen:]";
      v8 = 1024;
      v9 = screenCopy;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d", &v6, 0x12u);
    }

    self->_fullScreen = screenCopy;
    [(AVPlaybackControlsView *)self _updateLayoutMargins];
    [(AVPlaybackControlsView *)self _updateDoubleRowLayoutEnabled];
    [(AVPlaybackControlsView *)self setNeedsLayout];
  }
}

- (void)setupInitialLayout
{
  if ([(AVPlaybackControlsView *)self needsIntialLayout])
  {

    [(AVPlaybackControlsView *)self _setupInitialLayout];
  }
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  observationController = [(AVPlaybackControlsView *)self observationController];
  [observationController stopAllObservation];

  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v7 = "[AVPlaybackControlsView dealloc]";
    v8 = 1024;
    v9 = 222;
    v10 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  v5.receiver = self;
  v5.super_class = AVPlaybackControlsView;
  [(AVPlaybackControlsView *)&v5 dealloc];
}

- (AVPlaybackControlsView)initWithFrame:(CGRect)frame styleSheet:(id)sheet
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v127 = *MEMORY[0x1E69E9840];
  sheetCopy = sheet;
  v11 = _AVLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v122 = "[AVPlaybackControlsView initWithFrame:styleSheet:]";
    v123 = 1024;
    v124 = 83;
    v125 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_18B49C000, v11, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  v114.receiver = self;
  v114.super_class = AVPlaybackControlsView;
  height = [(AVPlaybackControlsView *)&v114 initWithFrame:x, y, width, height];
  v13 = height;
  if (height)
  {
    [(AVPlaybackControlsView *)height setHidden:1];
    customControlItems = v13->_customControlItems;
    v15 = MEMORY[0x1E695E0F0];
    v13->_customControlItems = MEMORY[0x1E695E0F0];

    customDisplayModeItems = v13->_customDisplayModeItems;
    v13->_customDisplayModeItems = v15;

    customAudioItems = v13->_customAudioItems;
    v13->_customAudioItems = v15;

    customMediaItems = v13->_customMediaItems;
    v13->_customMediaItems = v15;

    v13->_showsPlaybackControls = 1;
    objc_storeStrong(&v13->_styleSheet, sheet);
    v19 = [AVButton buttonWithAccessibilityIdentifier:@"Done" isFirstGeneration:1];
    doneButton = v13->_doneButton;
    v13->_doneButton = v19;

    [(AVButton *)v13->_doneButton setIncluded:0];
    [(AVButton *)v13->_doneButton setCollapsed:1];
    layoutAttributes = [(AVButton *)v13->_doneButton layoutAttributes];
    [layoutAttributes setDisplayPriority:2];

    v22 = [AVButton buttonWithAccessibilityIdentifier:@"Full Screen" isFirstGeneration:1];
    fullScreenButton = v13->_fullScreenButton;
    v13->_fullScreenButton = v22;

    [(AVButton *)v13->_fullScreenButton setIncluded:0];
    [(AVButton *)v13->_fullScreenButton setCollapsed:1];
    layoutAttributes2 = [(AVButton *)v13->_fullScreenButton layoutAttributes];
    [layoutAttributes2 setDisplayPriority:2];

    v25 = AVLocalizedString(@"Zoom");
    v26 = [AVButton buttonWithAccessibilityIdentifier:@"Zoom" accessibilityLabel:v25 isFirstGeneration:1];
    videoGravityButton = v13->_videoGravityButton;
    v13->_videoGravityButton = v26;

    [(AVButton *)v13->_videoGravityButton setIncluded:0];
    [(AVButton *)v13->_videoGravityButton setCollapsed:1];
    layoutAttributes3 = [(AVButton *)v13->_videoGravityButton layoutAttributes];
    [layoutAttributes3 setDisplayPriority:2];

    v29 = [AVButton buttonWithAccessibilityIdentifier:@"Picture in Picture" isFirstGeneration:1];
    pictureInPictureButton = v13->_pictureInPictureButton;
    v13->_pictureInPictureButton = v29;

    [(AVButton *)v13->_pictureInPictureButton setIncluded:0];
    [(AVButton *)v13->_pictureInPictureButton setCollapsed:1];
    layoutAttributes4 = [(AVButton *)v13->_pictureInPictureButton layoutAttributes];
    [layoutAttributes4 setDisplayPriority:2];

    v32 = v13->_doneButton;
    v33 = *MEMORY[0x1E69DDDC0];
    v113.size.height = height;
    v34 = *MEMORY[0x1E69DB968];
    v35 = [MEMORY[0x1E69DB878] avkit_nonScalingFontWithTextStyle:*MEMORY[0x1E69DDDC0] weight:*MEMORY[0x1E69DB968]];
    [(AVButton *)v32 setFullScreenFont:v35];

    v36 = v13->_videoGravityButton;
    v37 = [MEMORY[0x1E69DB878] avkit_nonScalingFontWithTextStyle:v33 weight:v34];
    [(AVButton *)v36 setFullScreenFont:v37];

    v38 = v13->_pictureInPictureButton;
    v39 = [MEMORY[0x1E69DB878] avkit_nonScalingFontWithTextStyle:v33 weight:v34];
    [(AVButton *)v38 setFullScreenFont:v39];

    v120[0] = v13->_doneButton;
    v120[1] = v13->_fullScreenButton;
    v120[2] = v13->_pictureInPictureButton;
    v120[3] = v13->_videoGravityButton;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:4];
    defaultDisplayModeControls = v13->_defaultDisplayModeControls;
    v13->_defaultDisplayModeControls = v40;

    v42 = [AVLayoutView alloc];
    v43 = *MEMORY[0x1E695F058];
    v44 = *(MEMORY[0x1E695F058] + 8);
    v45 = *(MEMORY[0x1E695F058] + 16);
    v46 = *(MEMORY[0x1E695F058] + 24);
    v112 = *MEMORY[0x1E695F058];
    v47 = [(AVLayoutView *)v42 initWithFrame:*MEMORY[0x1E695F058], v44, v45, v46];
    screenModeControls = v13->_screenModeControls;
    v13->_screenModeControls = v47;

    v49 = v13->_screenModeControls;
    v119 = v13->_defaultDisplayModeControls;
    v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v119 count:1];
    [(AVLayoutView *)v49 setArrangedSubviews:v50];

    v113.origin.y = y;
    v113.size.width = width;
    v51 = *MEMORY[0x1E69DC5C0];
    v52 = *(MEMORY[0x1E69DC5C0] + 8);
    v113.origin.x = x;
    v53 = *(MEMORY[0x1E69DC5C0] + 16);
    v54 = *(MEMORY[0x1E69DC5C0] + 24);
    [(AVLayoutView *)v13->_screenModeControls setContentLayoutMargins:*MEMORY[0x1E69DC5C0], v52, v53, v54];
    [(AVLayoutView *)v13->_screenModeControls setDebugIdentifier:@"ScreenModeControls"];
    v55 = [AVButton buttonWithAccessibilityIdentifier:@"Central Play" isFirstGeneration:1];
    prominentPlayButton = v13->_prominentPlayButton;
    v13->_prominentPlayButton = v55;

    [(AVButton *)v13->_prominentPlayButton setClampsHitRectInsetsWhenContainedInScrollableView:1];
    v57 = [[AVLayoutView alloc] initWithFrame:v43, v44, v45, v46];
    prominentPlayButtonContainerView = v13->_prominentPlayButtonContainerView;
    v13->_prominentPlayButtonContainerView = v57;

    v59 = v13->_prominentPlayButtonContainerView;
    v117 = v13->_prominentPlayButton;
    v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v117 count:1];
    v118 = v60;
    v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v118 count:1];
    [(AVLayoutView *)v59 setArrangedSubviews:v61];

    [(AVLayoutView *)v13->_prominentPlayButtonContainerView setShapeStyle:1];
    [(AVLayoutView *)v13->_prominentPlayButtonContainerView setIncluded:1];
    [(AVLayoutView *)v13->_prominentPlayButtonContainerView setContentLayoutMargins:v51, v52, v53, v54];
    [(AVLayoutView *)v13->_prominentPlayButtonContainerView setDebugIdentifier:@"prominentPlayButton"];
    [sheetCopy defaultItemInlineSize];
    v63 = v62;
    [sheetCopy defaultItemInlineSize];
    v128 = CGRectInset(v113, v63, v64);
    v65 = v128.origin.x;
    v66 = v128.origin.y;
    v67 = v128.size.width;
    [sheetCopy defaultItemFullScreenSize];
    v69 = v68 + v68;
    v70 = [[AVView alloc] initWithFrame:v65, v66, v67, v68 + v68];
    transportControlsContainerView = v13->_transportControlsContainerView;
    v13->_transportControlsContainerView = v70;

    [(AVView *)v13->_transportControlsContainerView setHasBackdropView:1];
    kdebug_trace();
    v72 = [[AVTransportControlsView alloc] initWithFrame:sheetCopy styleSheet:v65, v66, v67, v69];
    transportControlsView = v13->_transportControlsView;
    v13->_transportControlsView = v72;

    kdebug_trace();
    [(AVView *)v13->_transportControlsView setHasBackdropView:1];
    v13->_includedContainers = 28;
    routePickerView = [(AVTransportControlsView *)v13->_transportControlsView routePickerView];
    routePickerView = v13->_routePickerView;
    v13->_routePickerView = routePickerView;

    mediaSelectionButton = [(AVTransportControlsView *)v13->_transportControlsView mediaSelectionButton];
    mediaSelectionButton = v13->_mediaSelectionButton;
    v13->_mediaSelectionButton = mediaSelectionButton;

    controlOverflowButton = [(AVTransportControlsView *)v13->_transportControlsView controlOverflowButton];
    controlOverflowButton = v13->_controlOverflowButton;
    v13->_controlOverflowButton = controlOverflowButton;

    playbackSpeedButton = [(AVTransportControlsView *)v13->_transportControlsView playbackSpeedButton];
    playbackSpeedButton = v13->_playbackSpeedButton;
    v13->_playbackSpeedButton = playbackSpeedButton;

    standardPlayPauseButton = [(AVTransportControlsView *)v13->_transportControlsView standardPlayPauseButton];
    standardPlayPauseButton = v13->_standardPlayPauseButton;
    v13->_standardPlayPauseButton = standardPlayPauseButton;

    skipForwardButton = [(AVTransportControlsView *)v13->_transportControlsView skipForwardButton];
    skipForwardButton = v13->_skipForwardButton;
    v13->_skipForwardButton = skipForwardButton;

    skipBackButton = [(AVTransportControlsView *)v13->_transportControlsView skipBackButton];
    skipBackButton = v13->_skipBackButton;
    v13->_skipBackButton = skipBackButton;

    startLeftwardContentTransitionButton = [(AVTransportControlsView *)v13->_transportControlsView startLeftwardContentTransitionButton];
    startLeftwardContentTransitionButton = v13->_startLeftwardContentTransitionButton;
    v13->_startLeftwardContentTransitionButton = startLeftwardContentTransitionButton;

    startRightwardContentTransitionButton = [(AVTransportControlsView *)v13->_transportControlsView startRightwardContentTransitionButton];
    startRightwardContentTransitionButton = v13->_startRightwardContentTransitionButton;
    v13->_startRightwardContentTransitionButton = startRightwardContentTransitionButton;

    scrubber = [(AVTransportControlsView *)v13->_transportControlsView scrubber];
    scrubber = v13->_scrubber;
    v13->_scrubber = scrubber;

    v94 = objc_alloc_init(AVVolumeButtonControl);
    volumeButton = v13->_volumeButton;
    v13->_volumeButton = v94;

    v96 = objc_alloc_init(AVVolumeSlider);
    volumeSlider = v13->_volumeSlider;
    v13->_volumeSlider = v96;

    v116[0] = v13->_volumeSlider;
    v116[1] = v13->_volumeButton;
    v98 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:2];
    defaultAudioControls = v13->_defaultAudioControls;
    v13->_defaultAudioControls = v98;

    v100 = [[AVLayoutView alloc] initWithFrame:v112, v44, v45, v46];
    volumeControls = v13->_volumeControls;
    v13->_volumeControls = v100;

    v102 = v13->_volumeControls;
    v115 = v13->_defaultAudioControls;
    v103 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v115 count:1];
    [(AVLayoutView *)v102 setArrangedSubviews:v103];

    [(AVLayoutView *)v13->_volumeControls setDebugIdentifier:@"volumeControls"];
    v13->_needsIntialLayout = 1;
    [(AVView *)v13->_screenModeControls setIgnoresTouches:1];
    [(AVView *)v13->_volumeControls setIgnoresTouches:1];
    [(AVView *)v13->_prominentPlayButtonContainerView setIgnoresTouches:1];
    [(AVView *)v13->_transportControlsContainerView setIgnoresTouches:1];
    v104 = [[AVTouchIgnoringView alloc] initWithFrame:v113.origin.x, v113.origin.y, v113.size.width, v113.size.height];
    playbackControlsContainer = v13->_playbackControlsContainer;
    v13->_playbackControlsContainer = v104;

    v106 = [[AVTouchIgnoringView alloc] initWithFrame:v112, v44, v45, v46];
    volumeControlsContainer = v13->_volumeControlsContainer;
    v13->_volumeControlsContainer = v106;

    [(AVTouchIgnoringView *)v13->_volumeControlsContainer setIncluded:1];
    v108 = [[AVObservationController alloc] initWithOwner:v13];
    observationController = v13->_observationController;
    v13->_observationController = v108;

    [(AVObservationController *)v13->_observationController startObservingNotificationForName:*MEMORY[0x1E69DE820] object:0 notificationCenter:0 observationHandler:&__block_literal_global_16773];
    [(AVObservationController *)v13->_observationController startObservingNotificationForName:*MEMORY[0x1E69DE850] object:0 notificationCenter:0 observationHandler:&__block_literal_global_16773];
    [(AVObservationController *)v13->_observationController startObservingNotificationForName:*MEMORY[0x1E69DE018] object:0 notificationCenter:0 observationHandler:&__block_literal_global_39_16774];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(AVPlaybackControlsView *)v13 setTintColor:whiteColor];
  }

  return v13;
}

void __51__AVPlaybackControlsView_initWithFrame_styleSheet___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
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