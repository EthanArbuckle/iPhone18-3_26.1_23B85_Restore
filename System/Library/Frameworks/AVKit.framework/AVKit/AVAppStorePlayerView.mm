@interface AVAppStorePlayerView
- (AVAppStorePlayerView)initWithFrame:(CGRect)a3;
- (AVPlayerViewControllerDelegate)playerViewControllerDelegate;
- (void)_makeActualVideoViewWithPlayerIfNeeded:(id)a3;
- (void)_makePlayerLayerViewWithPlayer:(id)a3;
- (void)_makePlayerViewControllerWithPlayer:(id)a3;
- (void)_prominentPlayButtonTouchUpInside:(id)a3;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setAllowsEnteringFullScreen:(BOOL)a3;
- (void)setCanPausePlaybackWhenExitingFullScreen:(BOOL)a3;
- (void)setClipsToBounds:(BOOL)a3;
- (void)setPlayButtonHandlerForLazyPlayerLoading:(id)a3;
- (void)setPlayer:(id)a3;
- (void)setPlayerViewControllerDelegate:(id)a3;
- (void)setPreferredUnobscuredArea:(int64_t)a3;
- (void)setShowsMinimalPlaybackControlsWhenEmbeddedInline:(BOOL)a3;
- (void)setShowsPlaybackControls:(BOOL)a3;
- (void)setUpdatesNowPlayingInfoCenter:(BOOL)a3;
- (void)setVideoGravity:(id)a3;
- (void)setVideoGravity:(id)a3 forLayoutClass:(unint64_t)a4;
@end

@implementation AVAppStorePlayerView

- (AVPlayerViewControllerDelegate)playerViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_playerViewControllerDelegate);

  return WeakRetained;
}

- (void)_prominentPlayButtonTouchUpInside:(id)a3
{
  v4 = a3;
  v5 = [(AVAppStorePlayerView *)self player];
  [(AVAppStorePlayerView *)self _makeActualVideoViewWithPlayerIfNeeded:v5];

  v6 = [(AVAppStorePlayerView *)self playerViewController];
  v7 = [v6 playButtonHandlerForLazyPlayerLoading];

  if (v7)
  {
    v8 = [(AVAppStorePlayerView *)self playerViewController];
    v9 = [v8 playButtonHandlerForLazyPlayerLoading];
    v9[2]();
  }

  v10 = MEMORY[0x1E69DD250];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__AVAppStorePlayerView__prominentPlayButtonTouchUpInside___block_invoke;
  v13[3] = &unk_1E720A090;
  v14 = v4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__AVAppStorePlayerView__prominentPlayButtonTouchUpInside___block_invoke_2;
  v12[3] = &unk_1E7208E90;
  v12[4] = self;
  v11 = v4;
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

- (void)_makePlayerViewControllerWithPlayer:(id)a3
{
  v72 = *MEMORY[0x1E69E9840];
  v4 = [[AVPlayerViewController alloc] initWithNibName:0 bundle:0];
  [(AVAppStorePlayerView *)self setPlayerViewController:v4];

  v5 = [(AVAppStorePlayerView *)self showsPlaybackControls];
  v6 = [(AVAppStorePlayerView *)self playerViewController];
  [v6 setShowsPlaybackControls:v5];

  v7 = [(AVAppStorePlayerView *)self updatesNowPlayingInfoCenter];
  v8 = [(AVAppStorePlayerView *)self playerViewController];
  [v8 setUpdatesNowPlayingInfoCenter:v7];

  v9 = [(AVAppStorePlayerView *)self showsMinimalPlaybackControlsWhenEmbeddedInline];
  v10 = [(AVAppStorePlayerView *)self playerViewController];
  [v10 setShowsMinimalPlaybackControlsWhenEmbeddedInline:v9];

  v11 = [(AVAppStorePlayerView *)self canPausePlaybackWhenExitingFullScreen];
  v12 = [(AVAppStorePlayerView *)self playerViewController];
  [v12 setCanPausePlaybackWhenExitingFullScreen:v11];

  v13 = [(AVAppStorePlayerView *)self allowsEnteringFullScreen];
  v14 = [(AVAppStorePlayerView *)self playerViewController];
  [v14 setAllowsEnteringFullScreen:v13];

  v15 = [(AVAppStorePlayerView *)self videoGravity];
  v16 = [(AVAppStorePlayerView *)self playerViewController];
  [v16 setVideoGravity:v15];

  v17 = [(AVAppStorePlayerView *)self playerViewControllerDelegate];
  v18 = [(AVAppStorePlayerView *)self playerViewController];
  [v18 setDelegate:v17];

  v19 = [(AVAppStorePlayerView *)self playButtonHandlerForLazyPlayerLoading];
  v20 = [(AVAppStorePlayerView *)self playerViewController];
  [v20 setPlayButtonHandlerForLazyPlayerLoading:v19];

  v21 = [(AVAppStorePlayerView *)self clipsToBounds];
  v22 = [(AVAppStorePlayerView *)self playerViewController];
  v23 = [v22 view];
  [v23 setClipsToBounds:v21];

  [(AVAppStorePlayerView *)self _continuousCornerRadius];
  v25 = v24;
  v26 = [(AVAppStorePlayerView *)self playerViewController];
  v27 = [v26 view];
  [v27 _setContinuousCornerRadius:v25];

  v28 = [(AVAppStorePlayerView *)self layer];
  v29 = [v28 maskedCorners];
  v30 = [(AVAppStorePlayerView *)self playerViewController];
  v31 = [v30 view];
  v32 = [v31 layer];
  [v32 setMaskedCorners:v29];

  v33 = [(AVAppStorePlayerView *)self preferredUnobscuredArea];
  v34 = [(AVAppStorePlayerView *)self playerViewController];
  [v34 setPreferredUnobscuredArea:v33];

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v35 = [(AVAppStorePlayerView *)self videoGravityForLayoutClassDictionary];
  v36 = [v35 allKeys];

  v37 = [v36 countByEnumeratingWithState:&v67 objects:v71 count:16];
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
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v67 + 1) + 8 * i);
        v42 = [v41 unsignedIntegerValue];
        v43 = [(AVAppStorePlayerView *)self videoGravityForLayoutClassDictionary];
        v44 = [v43 objectForKeyedSubscript:v41];

        v45 = [(AVAppStorePlayerView *)self playerViewController];
        [v45 setVideoGravity:v44 forLayoutClass:v42];
      }

      v38 = [v36 countByEnumeratingWithState:&v67 objects:v71 count:16];
    }

    while (v38);
  }

  [(AVAppStorePlayerView *)self bounds];
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = [(AVAppStorePlayerView *)self playerViewController];
  v55 = [v54 view];
  [v55 setFrame:{v47, v49, v51, v53}];

  v56 = [(AVAppStorePlayerView *)self player];
  v57 = [(AVAppStorePlayerView *)self playerViewController];
  [v57 setPlayer:v56];

  v58 = [(AVAppStorePlayerView *)self playerViewController];
  v59 = [v58 contentOverlayView];
  v60 = [(AVAppStorePlayerView *)self contentOverlayView];
  [v59 addSubview:v60];

  v61 = [(AVAppStorePlayerView *)self contentOverlayView];
  [v61 setTranslatesAutoresizingMaskIntoConstraints:0];

  v62 = MEMORY[0x1E696ACD8];
  v63 = [(AVAppStorePlayerView *)self playerViewController];
  v64 = [v63 contentOverlayView];
  v65 = [(AVAppStorePlayerView *)self contentOverlayView];
  v66 = [v64 avkit_constraintsFromCenterAndDimensionAnchorsToCenterAndDimensionAnchorsOfItem:v65];
  [v62 activateConstraints:v66];
}

- (void)_makePlayerLayerViewWithPlayer:(id)a3
{
  v4 = a3;
  v5 = [AVAppStorePlayerLayerView alloc];
  [(AVAppStorePlayerView *)self bounds];
  v6 = [(AVAppStorePlayerLayerView *)v5 initWithFrame:?];
  [(AVAppStorePlayerView *)self setPlayerLayerView:v6];

  v8 = [(AVAppStorePlayerView *)self playerLayerView];
  v7 = [v8 layer];
  [v7 setPlayer:v4];
}

- (void)_makeActualVideoViewWithPlayerIfNeeded:(id)a3
{
  v9 = a3;
  v4 = [(AVAppStorePlayerView *)self playerViewController];
  if (v4 || ([(AVAppStorePlayerView *)self playerLayerView], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
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
      [(AVAppStorePlayerView *)self _makePlayerLayerViewWithPlayer:v9];
      v5 = [(AVAppStorePlayerView *)self playerLayerView];
      [(AVAppStorePlayerView *)self insertSubview:v5 atIndex:0];
    }

    else
    {
      [(AVAppStorePlayerView *)self _makePlayerViewControllerWithPlayer:v9];
      v5 = [(AVAppStorePlayerView *)self playerViewController];
      v8 = [v5 view];
      [(AVAppStorePlayerView *)self insertSubview:v8 atIndex:0];
    }

    goto LABEL_4;
  }

LABEL_5:
  v6 = [(AVAppStorePlayerView *)self observationController];
  [v6 stopAllObservation];

  observationController = self->_observationController;
  self->_observationController = 0;
}

- (void)layoutSubviews
{
  v57.receiver = self;
  v57.super_class = AVAppStorePlayerView;
  [(AVAppStorePlayerView *)&v57 layoutSubviews];
  v3 = [(AVAppStorePlayerView *)self contentOverlayView];
  v4 = [v3 superview];

  if (v4 == self)
  {
    [(AVAppStorePlayerView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(AVAppStorePlayerView *)self contentOverlayView];
    [v13 setFrame:{v6, v8, v10, v12}];

    v14 = [(AVAppStorePlayerView *)self layoutMarginsGuide];
    [v14 layoutFrame];
    Width = CGRectGetWidth(v58);

    v16 = [(AVAppStorePlayerView *)self layoutMarginsGuide];
    [v16 layoutFrame];
    Height = CGRectGetHeight(v59);

    v18 = [(AVAppStorePlayerView *)self styleSheet];
    [v18 defaultItemInlineSize];
    v20 = v19;

    if (v20 < Width)
    {
      v20 = Width;
    }

    v21 = [(AVAppStorePlayerView *)self styleSheet];
    [v21 maximumProminentPlayButtonDimension];
    v23 = v22;

    if (v20 >= v23)
    {
      v20 = v23;
    }

    v24 = [(AVAppStorePlayerView *)self styleSheet];
    [v24 minimumProminentPlayButtonDimension];
    v26 = v25;

    if (v26 >= Height)
    {
      Height = v26;
    }

    v27 = [(AVAppStorePlayerView *)self styleSheet];
    [v27 maximumProminentPlayButtonDimension];
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
    v36 = [(AVAppStorePlayerView *)self prominentPlayButtonLayoutView];
    [v36 setFrame:{v33, v35, v31, v31}];

    v37 = [(AVAppStorePlayerView *)self prominentPlayButton];
    [v37 setExtrinsicContentSize:{v31, v31}];
  }

  [(AVAppStorePlayerView *)self bounds];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = [(AVAppStorePlayerView *)self playerLayerView];
  [v46 setFrame:{v39, v41, v43, v45}];

  [(AVAppStorePlayerView *)self bounds];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = [(AVAppStorePlayerView *)self playerViewController];
  v56 = [v55 view];
  [v56 setFrame:{v48, v50, v52, v54}];
}

- (void)_setContinuousCornerRadius:(double)a3
{
  v7.receiver = self;
  v7.super_class = AVAppStorePlayerView;
  [(AVAppStorePlayerView *)&v7 _setContinuousCornerRadius:?];
  v5 = [(AVAppStorePlayerView *)self playerViewController];
  v6 = [v5 view];
  [v6 _setContinuousCornerRadius:a3];
}

- (void)setClipsToBounds:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = AVAppStorePlayerView;
  [(AVAppStorePlayerView *)&v7 setClipsToBounds:?];
  v5 = [(AVAppStorePlayerView *)self playerViewController];
  v6 = [v5 view];
  [v6 setClipsToBounds:v3];
}

- (void)setPlayButtonHandlerForLazyPlayerLoading:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  playButtonHandlerForLazyPlayerLoading = self->_playButtonHandlerForLazyPlayerLoading;
  self->_playButtonHandlerForLazyPlayerLoading = v5;

  v7 = [(AVAppStorePlayerView *)self playerViewController];
  [v7 setPlayButtonHandlerForLazyPlayerLoading:v4];
}

- (void)setVideoGravity:(id)a3 forLayoutClass:(unint64_t)a4
{
  if (a3)
  {
    v6 = a3;
    v7 = [(AVAppStorePlayerView *)self videoGravityForLayoutClassDictionary];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    [v7 setObject:v6 forKeyedSubscript:v8];

    v9 = [(AVAppStorePlayerView *)self playerViewController];
    [v9 setVideoGravity:v6 forLayoutClass:a4];
  }
}

- (void)setPlayer:(id)a3
{
  v5 = a3;
  if (self->_player != v5)
  {
    v18 = v5;
    objc_storeStrong(&self->_player, a3);
    v6 = [(AVAppStorePlayerView *)self playerViewController];
    [v6 setPlayer:v18];

    v7 = [(AVAppStorePlayerView *)self observationController];
    [v7 stopAllObservation];

    v8 = [(AVAppStorePlayerView *)self player];
    [v8 rate];
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
            v14 = [(AVAppStorePlayerView *)self player];
            if (!v14)
            {
              goto LABEL_9;
            }

            v15 = v14;
            v16 = [(AVAppStorePlayerView *)self observationController];

            if (v16)
            {
              goto LABEL_9;
            }

            v17 = [[AVObservationController alloc] initWithOwner:self];
            observationController = self->_observationController;
            self->_observationController = v17;
          }
        }

LABEL_9:
        v12 = [(AVAppStorePlayerView *)self observationController];
        v13 = [v12 startObserving:v18 keyPath:@"rate" observationHandler:&__block_literal_global_24];

        goto LABEL_12;
      }
    }

    else
    {
    }

    v5 = [(AVAppStorePlayerView *)self _makeActualVideoViewWithPlayerIfNeeded:v18];
  }

LABEL_12:

  MEMORY[0x1EEE66BE0](v5);
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

- (void)setPlayerViewControllerDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_playerViewControllerDelegate, v4);
  v5 = [(AVAppStorePlayerView *)self playerViewController];
  [v5 setDelegate:v4];
}

- (void)setPreferredUnobscuredArea:(int64_t)a3
{
  self->_preferredUnobscuredArea = a3;
  v4 = [(AVAppStorePlayerView *)self playerViewController];
  [v4 setPreferredUnobscuredArea:a3];
}

- (void)setVideoGravity:(id)a3
{
  objc_storeStrong(&self->_videoGravity, a3);
  v5 = a3;
  v6 = [(AVAppStorePlayerView *)self playerViewController];
  [v6 setVideoGravity:v5];
}

- (void)setAllowsEnteringFullScreen:(BOOL)a3
{
  v3 = a3;
  self->_allowsEnteringFullScreen = a3;
  v4 = [(AVAppStorePlayerView *)self playerViewController];
  [v4 setAllowsEnteringFullScreen:v3];
}

- (void)setCanPausePlaybackWhenExitingFullScreen:(BOOL)a3
{
  v3 = a3;
  self->_canPausePlaybackWhenExitingFullScreen = a3;
  v4 = [(AVAppStorePlayerView *)self playerViewController];
  [v4 setCanPausePlaybackWhenExitingFullScreen:v3];
}

- (void)setShowsMinimalPlaybackControlsWhenEmbeddedInline:(BOOL)a3
{
  v3 = a3;
  self->_showsMinimalPlaybackControlsWhenEmbeddedInline = a3;
  v4 = [(AVAppStorePlayerView *)self playerViewController];
  [v4 setShowsMinimalPlaybackControlsWhenEmbeddedInline:v3];
}

- (void)setUpdatesNowPlayingInfoCenter:(BOOL)a3
{
  v3 = a3;
  self->_updatesNowPlayingInfoCenter = a3;
  v4 = [(AVAppStorePlayerView *)self playerViewController];
  [v4 setUpdatesNowPlayingInfoCenter:v3];
}

- (void)setShowsPlaybackControls:(BOOL)a3
{
  v3 = a3;
  self->_showsPlaybackControls = a3;
  v4 = [(AVAppStorePlayerView *)self playerViewController];
  [v4 setShowsPlaybackControls:v3];
}

- (void)dealloc
{
  v3 = [(AVAppStorePlayerView *)self observationController];
  [v3 stopAllObservation];

  v4.receiver = self;
  v4.super_class = AVAppStorePlayerView;
  [(AVAppStorePlayerView *)&v4 dealloc];
}

- (AVAppStorePlayerView)initWithFrame:(CGRect)a3
{
  v29.receiver = self;
  v29.super_class = AVAppStorePlayerView;
  v3 = [(AVAppStorePlayerView *)&v29 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
      v13 = [(AVAppStorePlayerView *)v3 traitCollection];
      v14 = [v11 preferredFontForTextStyle:v12 compatibleWithTraitCollection:v13];
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
      v19 = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
      v20 = [v19 traitCollection];
      v21 = [(AVMobileChromeControlsStyleSheet *)v18 initWithTraitCollection:v20 shouldUseCompactFullScreenSize:0];
      styleSheet = v3->_styleSheet;
      v3->_styleSheet = v21;

      v23 = objc_alloc(MEMORY[0x1E69DD250]);
      [(AVAppStorePlayerView *)v3 bounds];
      v24 = [v23 initWithFrame:?];
      v25 = v3->_contentOverlayView;
      v3->_contentOverlayView = v24;

      v26 = [(AVAppStorePlayerView *)v3 contentOverlayView];
      [(AVAppStorePlayerView *)v3 addSubview:v26];

      [(AVAppStorePlayerView *)v3 prominentPlayButtonLayoutView];
    }
    v27 = ;
    [(AVAppStorePlayerView *)v3 addSubview:v27];
  }

  return v3;
}

@end