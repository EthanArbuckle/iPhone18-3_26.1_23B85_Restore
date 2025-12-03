@interface AVAppStorePlayerView
- (AVAppStorePlayerView)initWithFrame:(CGRect)frame;
- (AVPlayerViewControllerDelegate)playerViewControllerDelegate;
- (void)_makeActualVideoViewWithPlayerIfNeeded:(id)needed;
- (void)_makePlayerLayerViewWithPlayer:(id)player;
- (void)_makePlayerViewControllerWithPlayer:(id)player;
- (void)_prominentPlayButtonTouchUpInside:(id)inside;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setAllowsEnteringFullScreen:(BOOL)screen;
- (void)setCanPausePlaybackWhenExitingFullScreen:(BOOL)screen;
- (void)setClipsToBounds:(BOOL)bounds;
- (void)setPlayButtonHandlerForLazyPlayerLoading:(id)loading;
- (void)setPlayer:(id)player;
- (void)setPlayerViewControllerDelegate:(id)delegate;
- (void)setPreferredUnobscuredArea:(int64_t)area;
- (void)setShowsMinimalPlaybackControlsWhenEmbeddedInline:(BOOL)inline;
- (void)setShowsPlaybackControls:(BOOL)controls;
- (void)setUpdatesNowPlayingInfoCenter:(BOOL)center;
- (void)setVideoGravity:(id)gravity;
- (void)setVideoGravity:(id)gravity forLayoutClass:(unint64_t)class;
@end

@implementation AVAppStorePlayerView

- (AVPlayerViewControllerDelegate)playerViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_playerViewControllerDelegate);

  return WeakRetained;
}

- (void)_prominentPlayButtonTouchUpInside:(id)inside
{
  insideCopy = inside;
  player = [(AVAppStorePlayerView *)self player];
  [(AVAppStorePlayerView *)self _makeActualVideoViewWithPlayerIfNeeded:player];

  playerViewController = [(AVAppStorePlayerView *)self playerViewController];
  playButtonHandlerForLazyPlayerLoading = [playerViewController playButtonHandlerForLazyPlayerLoading];

  if (playButtonHandlerForLazyPlayerLoading)
  {
    playerViewController2 = [(AVAppStorePlayerView *)self playerViewController];
    playButtonHandlerForLazyPlayerLoading2 = [playerViewController2 playButtonHandlerForLazyPlayerLoading];
    playButtonHandlerForLazyPlayerLoading2[2]();
  }

  v10 = MEMORY[0x1E69DD250];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__AVAppStorePlayerView__prominentPlayButtonTouchUpInside___block_invoke;
  v13[3] = &unk_1E720A090;
  v14 = insideCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__AVAppStorePlayerView__prominentPlayButtonTouchUpInside___block_invoke_2;
  v12[3] = &unk_1E7208E90;
  v12[4] = self;
  v11 = insideCopy;
  [v10 animateWithDuration:196608 delay:v13 options:v12 animations:0.2 completion:0.0];
}

uint64_t __58__AVAppStorePlayerView__prominentPlayButtonTouchUpInside___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) prominentPlayButtonLayoutView];
  [v2 removeFromSuperview];

  [*(a1 + 32) setProminentPlayButtonLayoutView:0];
  v3 = [*(a1 + 32) prominentPlayButton];
  [v3 removeFromSuperview];

  v4 = *(a1 + 32);

  return [v4 setProminentPlayButton:0];
}

- (void)_makePlayerViewControllerWithPlayer:(id)player
{
  v72 = *MEMORY[0x1E69E9840];
  v4 = [[AVPlayerViewController alloc] initWithNibName:0 bundle:0];
  [(AVAppStorePlayerView *)self setPlayerViewController:v4];

  showsPlaybackControls = [(AVAppStorePlayerView *)self showsPlaybackControls];
  playerViewController = [(AVAppStorePlayerView *)self playerViewController];
  [playerViewController setShowsPlaybackControls:showsPlaybackControls];

  updatesNowPlayingInfoCenter = [(AVAppStorePlayerView *)self updatesNowPlayingInfoCenter];
  playerViewController2 = [(AVAppStorePlayerView *)self playerViewController];
  [playerViewController2 setUpdatesNowPlayingInfoCenter:updatesNowPlayingInfoCenter];

  showsMinimalPlaybackControlsWhenEmbeddedInline = [(AVAppStorePlayerView *)self showsMinimalPlaybackControlsWhenEmbeddedInline];
  playerViewController3 = [(AVAppStorePlayerView *)self playerViewController];
  [playerViewController3 setShowsMinimalPlaybackControlsWhenEmbeddedInline:showsMinimalPlaybackControlsWhenEmbeddedInline];

  canPausePlaybackWhenExitingFullScreen = [(AVAppStorePlayerView *)self canPausePlaybackWhenExitingFullScreen];
  playerViewController4 = [(AVAppStorePlayerView *)self playerViewController];
  [playerViewController4 setCanPausePlaybackWhenExitingFullScreen:canPausePlaybackWhenExitingFullScreen];

  allowsEnteringFullScreen = [(AVAppStorePlayerView *)self allowsEnteringFullScreen];
  playerViewController5 = [(AVAppStorePlayerView *)self playerViewController];
  [playerViewController5 setAllowsEnteringFullScreen:allowsEnteringFullScreen];

  videoGravity = [(AVAppStorePlayerView *)self videoGravity];
  playerViewController6 = [(AVAppStorePlayerView *)self playerViewController];
  [playerViewController6 setVideoGravity:videoGravity];

  playerViewControllerDelegate = [(AVAppStorePlayerView *)self playerViewControllerDelegate];
  playerViewController7 = [(AVAppStorePlayerView *)self playerViewController];
  [playerViewController7 setDelegate:playerViewControllerDelegate];

  playButtonHandlerForLazyPlayerLoading = [(AVAppStorePlayerView *)self playButtonHandlerForLazyPlayerLoading];
  playerViewController8 = [(AVAppStorePlayerView *)self playerViewController];
  [playerViewController8 setPlayButtonHandlerForLazyPlayerLoading:playButtonHandlerForLazyPlayerLoading];

  clipsToBounds = [(AVAppStorePlayerView *)self clipsToBounds];
  playerViewController9 = [(AVAppStorePlayerView *)self playerViewController];
  view = [playerViewController9 view];
  [view setClipsToBounds:clipsToBounds];

  [(AVAppStorePlayerView *)self _continuousCornerRadius];
  v25 = v24;
  playerViewController10 = [(AVAppStorePlayerView *)self playerViewController];
  view2 = [playerViewController10 view];
  [view2 _setContinuousCornerRadius:v25];

  layer = [(AVAppStorePlayerView *)self layer];
  maskedCorners = [layer maskedCorners];
  playerViewController11 = [(AVAppStorePlayerView *)self playerViewController];
  view3 = [playerViewController11 view];
  layer2 = [view3 layer];
  [layer2 setMaskedCorners:maskedCorners];

  preferredUnobscuredArea = [(AVAppStorePlayerView *)self preferredUnobscuredArea];
  playerViewController12 = [(AVAppStorePlayerView *)self playerViewController];
  [playerViewController12 setPreferredUnobscuredArea:preferredUnobscuredArea];

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  videoGravityForLayoutClassDictionary = [(AVAppStorePlayerView *)self videoGravityForLayoutClassDictionary];
  allKeys = [videoGravityForLayoutClassDictionary allKeys];

  v37 = [allKeys countByEnumeratingWithState:&v67 objects:v71 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v68;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v68 != v39)
        {
          objc_enumerationMutation(allKeys);
        }

        v41 = *(*(&v67 + 1) + 8 * i);
        unsignedIntegerValue = [v41 unsignedIntegerValue];
        videoGravityForLayoutClassDictionary2 = [(AVAppStorePlayerView *)self videoGravityForLayoutClassDictionary];
        v44 = [videoGravityForLayoutClassDictionary2 objectForKeyedSubscript:v41];

        playerViewController13 = [(AVAppStorePlayerView *)self playerViewController];
        [playerViewController13 setVideoGravity:v44 forLayoutClass:unsignedIntegerValue];
      }

      v38 = [allKeys countByEnumeratingWithState:&v67 objects:v71 count:16];
    }

    while (v38);
  }

  [(AVAppStorePlayerView *)self bounds];
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  playerViewController14 = [(AVAppStorePlayerView *)self playerViewController];
  view4 = [playerViewController14 view];
  [view4 setFrame:{v47, v49, v51, v53}];

  player = [(AVAppStorePlayerView *)self player];
  playerViewController15 = [(AVAppStorePlayerView *)self playerViewController];
  [playerViewController15 setPlayer:player];

  playerViewController16 = [(AVAppStorePlayerView *)self playerViewController];
  contentOverlayView = [playerViewController16 contentOverlayView];
  contentOverlayView2 = [(AVAppStorePlayerView *)self contentOverlayView];
  [contentOverlayView addSubview:contentOverlayView2];

  contentOverlayView3 = [(AVAppStorePlayerView *)self contentOverlayView];
  [contentOverlayView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v62 = MEMORY[0x1E696ACD8];
  playerViewController17 = [(AVAppStorePlayerView *)self playerViewController];
  contentOverlayView4 = [playerViewController17 contentOverlayView];
  contentOverlayView5 = [(AVAppStorePlayerView *)self contentOverlayView];
  v66 = [contentOverlayView4 avkit_constraintsFromCenterAndDimensionAnchorsToCenterAndDimensionAnchorsOfItem:contentOverlayView5];
  [v62 activateConstraints:v66];
}

- (void)_makePlayerLayerViewWithPlayer:(id)player
{
  playerCopy = player;
  v5 = [AVAppStorePlayerLayerView alloc];
  [(AVAppStorePlayerView *)self bounds];
  v6 = [(AVAppStorePlayerLayerView *)v5 initWithFrame:?];
  [(AVAppStorePlayerView *)self setPlayerLayerView:v6];

  playerLayerView = [(AVAppStorePlayerView *)self playerLayerView];
  layer = [playerLayerView layer];
  [layer setPlayer:playerCopy];
}

- (void)_makeActualVideoViewWithPlayerIfNeeded:(id)needed
{
  neededCopy = needed;
  playerViewController = [(AVAppStorePlayerView *)self playerViewController];
  if (playerViewController || ([(AVAppStorePlayerView *)self playerLayerView], (playerViewController = objc_claimAutoreleasedReturnValue()) != 0))
  {
    playerLayerView = playerViewController;
LABEL_4:

    goto LABEL_5;
  }

  if (AVAppStorePlayerViewDisableVideo_onceToken != -1)
  {
    dispatch_once(&AVAppStorePlayerViewDisableVideo_onceToken, &__block_literal_global_49);
  }

  if ((AVAppStorePlayerViewDisableVideo_AVAppStorePlayerViewDisableVideo & 1) == 0)
  {
    if (AVAppStorePlayerViewUsePlayerLayerOnly_onceToken != -1)
    {
      dispatch_once(&AVAppStorePlayerViewUsePlayerLayerOnly_onceToken, &__block_literal_global_3);
    }

    if (AVAppStorePlayerViewUsePlayerLayerOnly_AVAppStorePlayerViewUsePlayerLayerOnly == 1)
    {
      [(AVAppStorePlayerView *)self _makePlayerLayerViewWithPlayer:neededCopy];
      playerLayerView = [(AVAppStorePlayerView *)self playerLayerView];
      [(AVAppStorePlayerView *)self insertSubview:playerLayerView atIndex:0];
    }

    else
    {
      [(AVAppStorePlayerView *)self _makePlayerViewControllerWithPlayer:neededCopy];
      playerLayerView = [(AVAppStorePlayerView *)self playerViewController];
      view = [playerLayerView view];
      [(AVAppStorePlayerView *)self insertSubview:view atIndex:0];
    }

    goto LABEL_4;
  }

LABEL_5:
  observationController = [(AVAppStorePlayerView *)self observationController];
  [observationController stopAllObservation];

  observationController = self->_observationController;
  self->_observationController = 0;
}

- (void)layoutSubviews
{
  v57.receiver = self;
  v57.super_class = AVAppStorePlayerView;
  [(AVAppStorePlayerView *)&v57 layoutSubviews];
  contentOverlayView = [(AVAppStorePlayerView *)self contentOverlayView];
  superview = [contentOverlayView superview];

  if (superview == self)
  {
    [(AVAppStorePlayerView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    contentOverlayView2 = [(AVAppStorePlayerView *)self contentOverlayView];
    [contentOverlayView2 setFrame:{v6, v8, v10, v12}];

    layoutMarginsGuide = [(AVAppStorePlayerView *)self layoutMarginsGuide];
    [layoutMarginsGuide layoutFrame];
    Width = CGRectGetWidth(v58);

    layoutMarginsGuide2 = [(AVAppStorePlayerView *)self layoutMarginsGuide];
    [layoutMarginsGuide2 layoutFrame];
    Height = CGRectGetHeight(v59);

    styleSheet = [(AVAppStorePlayerView *)self styleSheet];
    [styleSheet defaultItemInlineSize];
    v20 = v19;

    if (v20 < Width)
    {
      v20 = Width;
    }

    styleSheet2 = [(AVAppStorePlayerView *)self styleSheet];
    [styleSheet2 maximumProminentPlayButtonDimension];
    v23 = v22;

    if (v20 >= v23)
    {
      v20 = v23;
    }

    styleSheet3 = [(AVAppStorePlayerView *)self styleSheet];
    [styleSheet3 minimumProminentPlayButtonDimension];
    v26 = v25;

    if (v26 >= Height)
    {
      Height = v26;
    }

    styleSheet4 = [(AVAppStorePlayerView *)self styleSheet];
    [styleSheet4 maximumProminentPlayButtonDimension];
    v29 = v28;

    if (Height >= v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = Height;
    }

    if (v20 >= v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = v20;
    }

    [(AVAppStorePlayerView *)self bounds];
    v32 = (CGRectGetWidth(v60) - v31) * 0.5;
    [(AVAppStorePlayerView *)self bounds];
    v33 = CGRectGetMinX(v61) + v32;
    [(AVAppStorePlayerView *)self bounds];
    v34 = (CGRectGetHeight(v62) - v31) * 0.5;
    [(AVAppStorePlayerView *)self bounds];
    v35 = v34 + CGRectGetMinY(v63);
    prominentPlayButtonLayoutView = [(AVAppStorePlayerView *)self prominentPlayButtonLayoutView];
    [prominentPlayButtonLayoutView setFrame:{v33, v35, v31, v31}];

    prominentPlayButton = [(AVAppStorePlayerView *)self prominentPlayButton];
    [prominentPlayButton setExtrinsicContentSize:{v31, v31}];
  }

  [(AVAppStorePlayerView *)self bounds];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  playerLayerView = [(AVAppStorePlayerView *)self playerLayerView];
  [playerLayerView setFrame:{v39, v41, v43, v45}];

  [(AVAppStorePlayerView *)self bounds];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  playerViewController = [(AVAppStorePlayerView *)self playerViewController];
  view = [playerViewController view];
  [view setFrame:{v48, v50, v52, v54}];
}

- (void)_setContinuousCornerRadius:(double)radius
{
  v7.receiver = self;
  v7.super_class = AVAppStorePlayerView;
  [(AVAppStorePlayerView *)&v7 _setContinuousCornerRadius:?];
  playerViewController = [(AVAppStorePlayerView *)self playerViewController];
  view = [playerViewController view];
  [view _setContinuousCornerRadius:radius];
}

- (void)setClipsToBounds:(BOOL)bounds
{
  boundsCopy = bounds;
  v7.receiver = self;
  v7.super_class = AVAppStorePlayerView;
  [(AVAppStorePlayerView *)&v7 setClipsToBounds:?];
  playerViewController = [(AVAppStorePlayerView *)self playerViewController];
  view = [playerViewController view];
  [view setClipsToBounds:boundsCopy];
}

- (void)setPlayButtonHandlerForLazyPlayerLoading:(id)loading
{
  loadingCopy = loading;
  v5 = [loadingCopy copy];
  playButtonHandlerForLazyPlayerLoading = self->_playButtonHandlerForLazyPlayerLoading;
  self->_playButtonHandlerForLazyPlayerLoading = v5;

  playerViewController = [(AVAppStorePlayerView *)self playerViewController];
  [playerViewController setPlayButtonHandlerForLazyPlayerLoading:loadingCopy];
}

- (void)setVideoGravity:(id)gravity forLayoutClass:(unint64_t)class
{
  if (gravity)
  {
    gravityCopy = gravity;
    videoGravityForLayoutClassDictionary = [(AVAppStorePlayerView *)self videoGravityForLayoutClassDictionary];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:class];
    [videoGravityForLayoutClassDictionary setObject:gravityCopy forKeyedSubscript:v8];

    playerViewController = [(AVAppStorePlayerView *)self playerViewController];
    [playerViewController setVideoGravity:gravityCopy forLayoutClass:class];
  }
}

- (void)setPlayer:(id)player
{
  playerCopy = player;
  if (self->_player != playerCopy)
  {
    v18 = playerCopy;
    objc_storeStrong(&self->_player, player);
    playerViewController = [(AVAppStorePlayerView *)self playerViewController];
    [playerViewController setPlayer:v18];

    observationController = [(AVAppStorePlayerView *)self observationController];
    [observationController stopAllObservation];

    player = [(AVAppStorePlayerView *)self player];
    [player rate];
    if (v9 == 0.0)
    {
      if (AVAppStorePlayerViewDisableVideo_onceToken != -1)
      {
        dispatch_once(&AVAppStorePlayerViewDisableVideo_onceToken, &__block_literal_global_49);
      }

      v10 = AVAppStorePlayerViewDisableVideo_AVAppStorePlayerViewDisableVideo;

      if ((v10 & 1) == 0)
      {
        observationController = [(AVAppStorePlayerView *)self playerViewController];
        if (!observationController)
        {
          observationController = [(AVAppStorePlayerView *)self playerLayerView];
          if (!observationController)
          {
            player2 = [(AVAppStorePlayerView *)self player];
            if (!player2)
            {
              goto LABEL_9;
            }

            v15 = player2;
            observationController2 = [(AVAppStorePlayerView *)self observationController];

            if (observationController2)
            {
              goto LABEL_9;
            }

            v17 = [[AVObservationController alloc] initWithOwner:self];
            observationController = self->_observationController;
            self->_observationController = v17;
          }
        }

LABEL_9:
        observationController3 = [(AVAppStorePlayerView *)self observationController];
        v13 = [observationController3 startObserving:v18 keyPath:@"rate" observationHandler:&__block_literal_global_24];

        goto LABEL_12;
      }
    }

    else
    {
    }

    playerCopy = [(AVAppStorePlayerView *)self _makeActualVideoViewWithPlayerIfNeeded:v18];
  }

LABEL_12:

  MEMORY[0x1EEE66BE0](playerCopy);
}

void __34__AVAppStorePlayerView_setPlayer___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v2 = [v6 player];
  [v2 rate];
  v4 = v3;

  if (v4 != 0.0)
  {
    v5 = [v6 player];
    [v6 _makeActualVideoViewWithPlayerIfNeeded:v5];
  }
}

- (void)setPlayerViewControllerDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_playerViewControllerDelegate, delegateCopy);
  playerViewController = [(AVAppStorePlayerView *)self playerViewController];
  [playerViewController setDelegate:delegateCopy];
}

- (void)setPreferredUnobscuredArea:(int64_t)area
{
  self->_preferredUnobscuredArea = area;
  playerViewController = [(AVAppStorePlayerView *)self playerViewController];
  [playerViewController setPreferredUnobscuredArea:area];
}

- (void)setVideoGravity:(id)gravity
{
  objc_storeStrong(&self->_videoGravity, gravity);
  gravityCopy = gravity;
  playerViewController = [(AVAppStorePlayerView *)self playerViewController];
  [playerViewController setVideoGravity:gravityCopy];
}

- (void)setAllowsEnteringFullScreen:(BOOL)screen
{
  screenCopy = screen;
  self->_allowsEnteringFullScreen = screen;
  playerViewController = [(AVAppStorePlayerView *)self playerViewController];
  [playerViewController setAllowsEnteringFullScreen:screenCopy];
}

- (void)setCanPausePlaybackWhenExitingFullScreen:(BOOL)screen
{
  screenCopy = screen;
  self->_canPausePlaybackWhenExitingFullScreen = screen;
  playerViewController = [(AVAppStorePlayerView *)self playerViewController];
  [playerViewController setCanPausePlaybackWhenExitingFullScreen:screenCopy];
}

- (void)setShowsMinimalPlaybackControlsWhenEmbeddedInline:(BOOL)inline
{
  inlineCopy = inline;
  self->_showsMinimalPlaybackControlsWhenEmbeddedInline = inline;
  playerViewController = [(AVAppStorePlayerView *)self playerViewController];
  [playerViewController setShowsMinimalPlaybackControlsWhenEmbeddedInline:inlineCopy];
}

- (void)setUpdatesNowPlayingInfoCenter:(BOOL)center
{
  centerCopy = center;
  self->_updatesNowPlayingInfoCenter = center;
  playerViewController = [(AVAppStorePlayerView *)self playerViewController];
  [playerViewController setUpdatesNowPlayingInfoCenter:centerCopy];
}

- (void)setShowsPlaybackControls:(BOOL)controls
{
  controlsCopy = controls;
  self->_showsPlaybackControls = controls;
  playerViewController = [(AVAppStorePlayerView *)self playerViewController];
  [playerViewController setShowsPlaybackControls:controlsCopy];
}

- (void)dealloc
{
  observationController = [(AVAppStorePlayerView *)self observationController];
  [observationController stopAllObservation];

  v4.receiver = self;
  v4.super_class = AVAppStorePlayerView;
  [(AVAppStorePlayerView *)&v4 dealloc];
}

- (AVAppStorePlayerView)initWithFrame:(CGRect)frame
{
  v29.receiver = self;
  v29.super_class = AVAppStorePlayerView;
  v3 = [(AVAppStorePlayerView *)&v29 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    if (AVAppStorePlayerViewDisableVideo_onceToken != -1)
    {
      dispatch_once(&AVAppStorePlayerViewDisableVideo_onceToken, &__block_literal_global_49);
    }

    if (AVAppStorePlayerViewDisableVideo_AVAppStorePlayerViewDisableVideo)
    {
      v4 = objc_alloc(MEMORY[0x1E69DD250]);
      [(AVAppStorePlayerView *)v3 bounds];
      v5 = [v4 initWithFrame:?];
      contentOverlayView = v3->_contentOverlayView;
      v3->_contentOverlayView = v5;

      [(AVAppStorePlayerView *)v3 contentOverlayView];
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      videoGravityForLayoutClassDictionary = v3->_videoGravityForLayoutClassDictionary;
      v3->_videoGravityForLayoutClassDictionary = v7;

      v9 = [AVButton buttonWithAccessibilityIdentifier:@"Central Play" isFirstGeneration:1];
      prominentPlayButton = v3->_prominentPlayButton;
      v3->_prominentPlayButton = v9;

      [(AVButton *)v3->_prominentPlayButton setClampsHitRectInsetsWhenContainedInScrollableView:1];
      [(AVButton *)v3->_prominentPlayButton setImageName:@"play.fill"];
      v11 = MEMORY[0x1E69DB878];
      v12 = *MEMORY[0x1E69DDD58];
      traitCollection = [(AVAppStorePlayerView *)v3 traitCollection];
      v14 = [v11 preferredFontForTextStyle:v12 compatibleWithTraitCollection:traitCollection];
      [(AVButton *)v3->_prominentPlayButton setFullScreenFont:v14];

      [(AVButton *)v3->_prominentPlayButton addTarget:v3 action:sel__prominentPlayButtonTouchUpInside_ forControlEvents:64];
      v15 = [AVLayoutView alloc];
      [(AVAppStorePlayerView *)v3 bounds];
      v16 = [(AVLayoutView *)v15 initWithFrame:?];
      prominentPlayButtonLayoutView = v3->_prominentPlayButtonLayoutView;
      v3->_prominentPlayButtonLayoutView = v16;

      [(AVLayoutView *)v3->_prominentPlayButtonLayoutView setShapeStyle:1];
      [(AVView *)v3->_prominentPlayButtonLayoutView setIgnoresTouches:1];
      v18 = [AVMobileChromeControlsStyleSheet alloc];
      avkit_mainScreen = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
      traitCollection2 = [avkit_mainScreen traitCollection];
      v21 = [(AVMobileChromeControlsStyleSheet *)v18 initWithTraitCollection:traitCollection2 shouldUseCompactFullScreenSize:0];
      styleSheet = v3->_styleSheet;
      v3->_styleSheet = v21;

      v23 = objc_alloc(MEMORY[0x1E69DD250]);
      [(AVAppStorePlayerView *)v3 bounds];
      v24 = [v23 initWithFrame:?];
      v25 = v3->_contentOverlayView;
      v3->_contentOverlayView = v24;

      contentOverlayView = [(AVAppStorePlayerView *)v3 contentOverlayView];
      [(AVAppStorePlayerView *)v3 addSubview:contentOverlayView];

      [(AVAppStorePlayerView *)v3 prominentPlayButtonLayoutView];
    }
    v27 = ;
    [(AVAppStorePlayerView *)v3 addSubview:v27];
  }

  return v3;
}

@end