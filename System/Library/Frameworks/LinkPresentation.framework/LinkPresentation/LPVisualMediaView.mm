@interface LPVisualMediaView
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)isParented;
- (BOOL)shouldAllowHighlightToRecognizeSimultaneouslyWithGesture:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (LPVisualMediaView)initWithHost:(id)a3 media:(id)a4 style:(id)a5 posterFrame:(id)a6 posterFrameStyle:(id)a7 configuration:(id)a8;
- (LPVisualMediaViewConfiguration)configuration;
- (double)unobscuredAreaFraction;
- (id)_createPosterFrameView;
- (id)_createPulsingLoadIndicator;
- (void)_buildVisualMediaPlaceholderView;
- (void)_muteButtonHighlightLongPressRecognized:(id)a3;
- (void)_muteButtonTapRecognized:(id)a3;
- (void)_startPlaybackWatchdogTimer;
- (void)_swapVideoPlaceholderForVideoForAutoPlay:(BOOL)a3;
- (void)applicationDidEnterBackground:(id)a3;
- (void)applicationWillEnterForeground:(id)a3;
- (void)buildSubviewsIfNeeded;
- (void)componentViewDidMoveToWindow;
- (void)dealloc;
- (void)destroyFullScreenViewController;
- (void)didChangeMutedState:(BOOL)a3;
- (void)didChangePlayingState:(BOOL)a3;
- (void)enterFullScreen;
- (void)fadeInMuteButton;
- (void)fullScreenVideoDidPresent;
- (void)fullScreenVideoWillDismiss;
- (void)hidePlayButtonAnimated:(BOOL)a3;
- (void)layoutComponentView;
- (void)recreateFullScreenViewControllerIfNeeded;
- (void)removePlaceholderViews;
- (void)resetToPlaceholderView;
- (void)setAllowsUserInteractionWithVideoPlayer:(BOOL)a3;
- (void)setWaitingForPlayback:(BOOL)a3;
- (void)showMuteButton;
- (void)showPlayButtonAnimated:(BOOL)a3;
- (void)swapVideoPlaceholderForPlaybackIfNeeded;
- (void)tapRecognized:(id)a3;
- (void)updateMuteButtonWithAnimation:(BOOL)a3;
- (void)updatePlayButtonVisibility;
@end

@implementation LPVisualMediaView

- (LPVisualMediaView)initWithHost:(id)a3 media:(id)a4 style:(id)a5 posterFrame:(id)a6 posterFrameStyle:(id)a7 configuration:(id)a8
{
  v14 = a3;
  v15 = a4;
  v31 = a5;
  v30 = a6;
  v16 = a7;
  v17 = a8;
  v32.receiver = self;
  v32.super_class = LPVisualMediaView;
  v18 = [(LPComponentView *)&v32 initWithHost:v14];
  p_isa = &v18->super.super.super.super.isa;
  v20 = v18;
  if (v18)
  {
    v18->_loggingID = ++initWithHost_media_style_posterFrame_posterFrameStyle_configuration__nextLoggingID;
    objc_storeStrong(&v18->_media, a4);
    objc_storeStrong(p_isa + 53, a5);
    objc_storeStrong(p_isa + 54, a6);
    objc_storeStrong(p_isa + 55, a7);
    v21 = [v17 copy];
    configuration = v20->_configuration;
    v20->_configuration = v21;

    if (!v20->_configuration)
    {
      v23 = objc_alloc_init(LPVisualMediaViewConfiguration);
      v24 = v20->_configuration;
      v20->_configuration = v23;
    }

    v20->_showingPlayButton = 1;
    v25 = [v15 properties];
    v26 = [v25 accessibilityText];
    [(LPVisualMediaView *)v20 setAccessibilityLabel:v26];

    v27 = +[LPMediaPlaybackManager shared];
    [v27 addMediaPlayer:v20];

    v28 = v20;
  }

  return v20;
}

- (void)dealloc
{
  v3 = +[LPMediaPlaybackManager shared];
  [v3 removeMediaPlayer:self];

  v4.receiver = self;
  v4.super_class = LPVisualMediaView;
  [(LPVisualMediaView *)&v4 dealloc];
}

- (LPVisualMediaViewConfiguration)configuration
{
  v2 = [(LPVisualMediaViewConfiguration *)self->_configuration copy];

  return v2;
}

- (BOOL)isParented
{
  if (self->_fullScreen)
  {
    return 1;
  }

  v3 = [(LPVisualMediaView *)self window];
  v2 = v3 != 0;

  return v2;
}

- (void)componentViewDidMoveToWindow
{
  if (self->_hasBuilt && !self->_fullScreen)
  {
    if ([(LPVisualMediaView *)self isParented])
    {
      wasPlayingOrWaitingToPlayWhenUnparented = self->_wasPlayingOrWaitingToPlayWhenUnparented;

      [(LPVisualMediaView *)self setPlaying:wasPlayingOrWaitingToPlayWhenUnparented];
    }

    else
    {
      if (self->_playing)
      {
        self->_wasPlayingOrWaitingToPlayWhenUnparented = 1;
      }

      else
      {
        v4 = [(LPVisualMediaView *)self isWaitingForPlayback];
        self->_wasPlayingOrWaitingToPlayWhenUnparented = v4;
        if (!v4)
        {
          return;
        }
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __49__LPVisualMediaView_componentViewDidMoveToWindow__block_invoke;
      block[3] = &unk_1E7A35450;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

uint64_t __49__LPVisualMediaView_componentViewDidMoveToWindow__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isParented];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) setPlaying:0];
    v3 = *(a1 + 32);

    return [v3 setMuted:1];
  }

  return result;
}

- (void)buildSubviewsIfNeeded
{
  if (!self->_hasBuilt)
  {
    [(LPVisualMediaView *)self setUserInteractionEnabled:1];
    v3 = [(LPVisualMediaView *)self layer];
    [v3 setMasksToBounds:1];

    v4 = [MEMORY[0x1E69DD250] _lp_createFlippedView];
    containerView = self->_containerView;
    self->_containerView = v4;

    [(LPVisualMediaView *)self addSubview:self->_containerView];
    if (+[LPSettings showDebugIndicators])
    {
      v6 = [MEMORY[0x1E69DC888] yellowColor];
      v7 = [v6 CGColor];
      v8 = [(UIView *)self->_containerView layer];
      [v8 setBorderColor:v7];

      v9 = [(UIView *)self->_containerView layer];
      [v9 setBorderWidth:3.0];

      v10 = objc_alloc_init(MEMORY[0x1E6979508]);
      debugIndicator = self->_debugIndicator;
      self->_debugIndicator = v10;

      v12 = +[LPActionDisablingCALayerDelegate shared];
      [(CATextLayer *)self->_debugIndicator setDelegate:v12];

      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_loggingID];
      v14 = [v13 stringValue];
      [(CATextLayer *)self->_debugIndicator setString:v14];

      -[CATextLayer setFont:](self->_debugIndicator, "setFont:", [MEMORY[0x1E69DB878] systemFontOfSize:16.0]);
      [(CATextLayer *)self->_debugIndicator setFontSize:16.0];
      v15 = [MEMORY[0x1E69DC888] blackColor];
      -[CATextLayer setForegroundColor:](self->_debugIndicator, "setForegroundColor:", [v15 CGColor]);

      v16 = [MEMORY[0x1E69DC888] whiteColor];
      -[CATextLayer setShadowColor:](self->_debugIndicator, "setShadowColor:", [v16 CGColor]);

      LODWORD(v17) = 1.0;
      [(CATextLayer *)self->_debugIndicator setShadowOpacity:v17];
      [(CATextLayer *)self->_debugIndicator setShadowRadius:1.0];
      [(CATextLayer *)self->_debugIndicator setShadowOffset:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
      [(UIView *)self _lp_backingScaleFactor];
      [(CATextLayer *)self->_debugIndicator setContentsScale:?];
      v18 = [(LPVisualMediaView *)self layer];
      [v18 addSublayer:self->_debugIndicator];
    }

    [(LPVisualMediaView *)self _buildVisualMediaPlaceholderView];
    if (![(LPVisualMediaViewConfiguration *)self->_configuration disablePlayback]&& ![(LPVisualMediaViewConfiguration *)self->_configuration disablePlaybackControls])
    {
      v19 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_tapRecognized_];
      tapRecognizer = self->_tapRecognizer;
      self->_tapRecognizer = v19;

      [(UIGestureRecognizer *)self->_tapRecognizer setEnabled:!self->_allowsUserInteractionWithVideoPlayer];
      [(UIView *)self->_containerView addGestureRecognizer:self->_tapRecognizer];
      v21 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_tapRecognized_];
      playButtonTapRecognizer = self->_playButtonTapRecognizer;
      self->_playButtonTapRecognizer = v21;

      [(UIView *)self->_playButtonContainerView addGestureRecognizer:self->_playButtonTapRecognizer];
    }

    if (![(LPVisualMediaViewConfiguration *)self->_configuration disablePlayback])
    {
      if ([(LPVisualMediaView *)self shouldAutoPlay])
      {
        [(LPVisualMediaView *)self _swapVideoPlaceholderForVideoForAutoPlay:1];
        [(LPVisualMediaView *)self setPlaying:1];
      }

      else if ([(LPVisualMediaViewConfiguration *)self->_configuration allowsLoadingMediaWithAutoPlayDisabled])
      {
        [(LPVisualMediaView *)self beginLoadingMediaForPreroll];
      }

      v23 = [MEMORY[0x1E696AD88] defaultCenter];
      [v23 addObserver:self selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];

      v24 = [MEMORY[0x1E696AD88] defaultCenter];
      [v24 addObserver:self selector:sel_applicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
    }

    self->_hasBuilt = 1;
  }
}

- (void)applicationDidEnterBackground:(id)a3
{
  v5 = a3;
  playing = self->_playing;
  self->_wasPlayingWhenSuspended = playing;
  if (playing)
  {
    [(LPVisualMediaView *)self setPlaying:0];
  }

  if (self->_fullScreen)
  {
    [(LPVisualMediaView *)self destroyFullScreenViewController];
  }

  else
  {
    [(LPVisualMediaView *)self setMuted:1];
  }
}

- (void)applicationWillEnterForeground:(id)a3
{
  if (self->_wasPlayingWhenSuspended && [(LPVisualMediaView *)self isParented])
  {

    [(LPVisualMediaView *)self setPlaying:1];
  }
}

- (void)layoutComponentView
{
  [(LPVisualMediaView *)self buildSubviewsIfNeeded];
  v3 = [(UIView *)self->_containerView superview];

  if (v3 == self)
  {
    [(LPVisualMediaView *)self bounds];
    [(UIView *)self->_containerView setFrame:?];
  }

  [(UIView *)self->_containerView bounds];
  [(UIView *)self->_playbackView setFrame:?];
  [(UIView *)self->_containerView bounds];
  [(UIView *)self->_videoPlaceholderView setFrame:?];
  [(LPVisualMediaView *)self bounds];
  v43 = CGRectInset(v42, 10.0, 10.0);
  [(CATextLayer *)self->_debugIndicator setFrame:v43.origin.x, v43.origin.y, v43.size.width, v43.size.height];
  v4 = [(LPVisualMediaViewStyle *)self->_style playButton];
  v5 = [v4 backgroundSize];
  [v5 asSize];
  v7 = v6;
  v9 = v8;

  [(UIView *)self->_playButtonContainerView setBounds:0.0, 0.0, v7, v9];
  [(UIView *)self->_containerView bounds];
  MidX = CGRectGetMidX(v44);
  [(UIView *)self->_containerView bounds];
  MidY = CGRectGetMidY(v45);
  v12 = [(UIView *)self->_playButtonContainerView layer];
  [v12 setPosition:{MidX, MidY}];

  [(UIView *)self->_playButtonView setBounds:0.0, 0.0, v7, v9];
  [(UIView *)self->_playButtonView frame];
  [(UIView *)self->_playButtonView setFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  muteButtonView = self->_muteButtonView;
  if (muteButtonView)
  {
    v14 = [(UIImageView *)muteButtonView image];
    v15 = +[LPResources muteButton];
    v16 = [v15 platformImage];
    [(UIImageView *)self->_muteButtonView setImage:v16];

    [(UIImageView *)self->_muteButtonView intrinsicContentSize];
    v18 = v17;
    v20 = v19;
    v21 = +[LPResources unmuteButton];
    v22 = [v21 platformImage];
    [(UIImageView *)self->_muteButtonView setImage:v22];

    [(UIImageView *)self->_muteButtonView intrinsicContentSize];
    v24 = v23;
    v26 = v25;
    [(UIImageView *)self->_muteButtonView setImage:v14];
    v27 = [(LPVisualMediaViewStyle *)self->_style muteButtonPadding];
    [v27 asInsetsForLTR:{-[UIView _lp_isLTR](self, "_lp_isLTR")}];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v36 = [(UIView *)self->_muteButtonContainerView _lp_isLTR];
    v37 = fmax(v18, v24);
    v38 = 0.0;
    if (v36)
    {
      [(UIView *)self->_containerView bounds];
      v38 = v39 - (v35 + v37 + v31);
    }

    v40 = fmax(v20, v26);
    [(UIView *)self->_muteButtonContainerView setFrame:v38, 0.0, v35 + v37 + v31, v33 + v40 + v29];
    [(UIImageView *)self->_muteButtonView setFrame:v31, v29, v37, v40];
  }

  [(UIView *)self->_containerView bounds];
  [(UIView *)self->_pulsingLoadView setFrame:?];

  [(LPVisualMediaView *)self updatePlayButtonVisibility];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  posterFrame = self->_posterFrame;
  if (posterFrame)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    posterFrame = self->_posterFrame;
LABEL_7:
    v12 = [(LPImage *)posterFrame platformImage];
    [v12 size];
    sizeFittingInsideSizeMaintainingAspectRatio(v13, v14, width, height);
    width = v15;
    v11 = v16;

    goto LABEL_8;
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x3010000000;
  v29 = &unk_1AE9D67E1;
  v7 = MEMORY[0x1E695F060];
  v30 = *MEMORY[0x1E695F060];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  video = self->_video;
  v25 = 1;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __34__LPVisualMediaView_sizeThatFits___block_invoke;
  v21[3] = &unk_1E7A359A0;
  v21[5] = &v26;
  v21[6] = &v22;
  v21[4] = self;
  [(LPVideo *)video _intrinsicSizeWithCompletionHandler:v21];
  *(v23 + 24) = 0;
  v9 = v27[4];
  v10 = v27[5];
  if (v9 == *v7 && v10 == v7[1])
  {
    v11 = width * 0.75;
  }

  else
  {
    sizeFittingInsideSizeMaintainingAspectRatio(v9, v10, width, height);
    width = v19;
    v11 = v20;
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
LABEL_8:
  v17 = width;
  v18 = v11;
  result.height = v18;
  result.width = v17;
  return result;
}

void __34__LPVisualMediaView_sizeThatFits___block_invoke(uint64_t a1, double a2, double a3)
{
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v5 = [*(a1 + 32) host];
    [v5 componentViewDidChangeIntrinsicContentSize:*(a1 + 32)];
  }
}

- (id)_createPulsingLoadIndicator
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v4 = [(LPVisualMediaViewStyle *)self->_style pulsingLoadIndicatorColor];
  [v3 _lp_setBackgroundColor:v4];

  v5 = objc_alloc_init(MEMORY[0x1E6979318]);
  [v5 setKeyPath:@"opacity"];
  [v5 setFromValue:&unk_1F2483440];
  v6 = MEMORY[0x1E696AD98];
  [(LPVisualMediaViewStyle *)self->_style pulsingLoadIndicatorMaximumOpacity];
  v7 = [v6 numberWithDouble:?];
  [v5 setToValue:v7];

  [(LPVisualMediaViewStyle *)self->_style pulsingLoadIndicatorDuration];
  [v5 setDuration:?];
  [v5 setFillMode:*MEMORY[0x1E69797E0]];
  v8 = [(LPVisualMediaViewStyle *)self->_style pulsingLoadIndicatorTimingFunction];
  [v5 setTimingFunction:v8];

  LODWORD(v9) = 2139095040;
  [v5 setRepeatCount:v9];
  [v5 setRemovedOnCompletion:0];
  [v5 setAutoreverses:1];
  v10 = [v3 layer];
  [v10 addAnimation:v5 forKey:@"fade"];

  return v3;
}

- (void)_startPlaybackWatchdogTimer
{
  v2 = (self->_playbackWatchdogTimerID + 1);
  self->_playbackWatchdogTimerID = v2;
  objc_initWeak(&location, self);
  v3 = dispatch_time(0, 60000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__LPVisualMediaView__startPlaybackWatchdogTimer__block_invoke;
  block[3] = &unk_1E7A359C8;
  objc_copyWeak(v5, &location);
  v5[1] = v2;
  dispatch_after(v3, MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(v5);
  objc_destroyWeak(&location);
}

void __48__LPVisualMediaView__startPlaybackWatchdogTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(WeakRetained + 72) == *(a1 + 40) && *(WeakRetained + 590) == 1)
  {
    [WeakRetained resetToPlaceholderView];
  }
}

- (void)_swapVideoPlaceholderForVideoForAutoPlay:(BOOL)a3
{
  v5 = [(LPVisualMediaView *)self createVideoPlayerView];
  playbackView = self->_playbackView;
  self->_playbackView = v5;

  self->_waitingForPlaybackDueToAutoPlay |= a3;
  [(UIView *)self->_containerView _lp_insertSubview:self->_playbackView belowSubview:self->_videoPlaceholderView];
  if (!a3)
  {
    v7 = [(LPVisualMediaView *)self _createPulsingLoadIndicator];
    pulsingLoadView = self->_pulsingLoadView;
    self->_pulsingLoadView = v7;

    [(UIView *)self->_containerView _lp_insertSubview:self->_pulsingLoadView aboveSubview:self->_videoPlaceholderView];
  }

  [(LPVisualMediaView *)self _startPlaybackWatchdogTimer];
  if ([(LPVisualMediaView *)self shouldShowMuteButton]&& ![(LPVisualMediaViewConfiguration *)self->_configuration disablePlaybackControls])
  {
    [(LPVisualMediaView *)self showMuteButton];
  }

  v9 = [(LPVisualMediaView *)self createFullScreenVideoViewController];
  fullScreenController = self->_fullScreenController;
  self->_fullScreenController = v9;

  [(UIView *)self _lp_setNeedsLayout];
}

- (void)setWaitingForPlayback:(BOOL)a3
{
  if (self->_waitingForPlayback != a3)
  {
    self->_waitingForPlayback = a3;
    if (!a3)
    {
      [(UIView *)self _lp_setNeedsLayout];
      self->_waitingForPlaybackDueToAutoPlay = 0;
    }
  }
}

- (double)unobscuredAreaFraction
{
  [(LPVisualMediaView *)self bounds];
  IsEmpty = CGRectIsEmpty(v18);
  result = 0.0;
  if (!IsEmpty)
  {
    v5 = [(LPVisualMediaView *)self window];
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [(LPVisualMediaView *)self bounds];
    [(LPVisualMediaView *)self convertRect:0 toView:?];
    v21.origin.x = v7;
    v21.origin.y = v9;
    v21.size.width = v11;
    v21.size.height = v13;
    v20 = CGRectIntersection(v19, v21);
    v14 = v20.size.width * v20.size.height;
    [(LPVisualMediaView *)self bounds:v20.origin.x];
    v16 = v15;
    [(LPVisualMediaView *)self bounds];
    return v14 / (v16 * v17);
  }

  return result;
}

- (void)resetToPlaceholderView
{
  [(LPVisualMediaView *)self didChangePlayingState:0];
  v3 = [(LPVisualMediaView *)self _createPosterFrameView];
  videoPlaceholderView = self->_videoPlaceholderView;
  self->_videoPlaceholderView = v3;

  [(UIView *)self->_containerView _lp_insertSubview:self->_videoPlaceholderView belowSubview:self->_playButtonContainerView];
  [(UIView *)self->_playbackView removeFromSuperview];
  playbackView = self->_playbackView;
  self->_playbackView = 0;

  [(UIView *)self->_pulsingLoadView removeFromSuperview];
  pulsingLoadView = self->_pulsingLoadView;
  self->_pulsingLoadView = 0;

  [(UIImageView *)self->_muteButtonView removeFromSuperview];
  muteButtonView = self->_muteButtonView;
  self->_muteButtonView = 0;

  [(UIView *)self->_muteButtonContainerView removeFromSuperview];
  muteButtonContainerView = self->_muteButtonContainerView;
  self->_muteButtonContainerView = 0;

  [(LPVisualMediaView *)self destroyFullScreenViewController];
  self->_wasPlayingWhenSuspended = 0;
  self->_wasPlayingOrWaitingToPlayWhenUnparented = 0;
  self->_waitingForPlayback = 0;
  self->_playing = 0;
  self->_fullScreen = 0;
  [(LPVisualMediaView *)self setHidden:0];
  [(UIView *)self _lp_setNeedsLayout];
  v9 = [(LPComponentView *)self host];
  [v9 componentViewDidChangeMediaState:self];
}

- (void)removePlaceholderViews
{
  [(UIView *)self->_videoPlaceholderView removeFromSuperview];
  videoPlaceholderView = self->_videoPlaceholderView;
  self->_videoPlaceholderView = 0;

  [(UIView *)self->_pulsingLoadView removeFromSuperview];
  pulsingLoadView = self->_pulsingLoadView;
  self->_pulsingLoadView = 0;
}

- (void)didChangePlayingState:(BOOL)a3
{
  if (self->_playing != a3)
  {
    v3 = a3;
    if (a3)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __43__LPVisualMediaView_didChangePlayingState___block_invoke;
      v7[3] = &unk_1E7A35450;
      v7[4] = self;
      [(LPVisualMediaView *)self prepareForDisplayWithCompletionHandler:v7];
    }

    self->_playing = v3;
    [(UIView *)self _lp_setNeedsLayout];
    v5 = +[LPMediaPlaybackManager shared];
    [v5 mediaPlayer:self didChangePlayingState:v3];

    v6 = [(LPComponentView *)self host];
    [v6 componentViewDidChangeMediaState:self];
  }
}

uint64_t __43__LPVisualMediaView_didChangePlayingState___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) removePlaceholderViews];
  v3 = *(a1 + 32);
  if ((*(v3 + 566) & 1) == 0)
  {
    *(v3 + 566) = 1;
  }

  return result;
}

- (void)updateMuteButtonWithAnimation:(BOOL)a3
{
  v3 = a3;
  if ([(LPVisualMediaView *)self isMuted])
  {
    +[LPResources muteButton];
  }

  else
  {
    +[LPResources unmuteButton];
  }
  v5 = ;
  v13 = [v5 platformImage];

  muteButtonView = self->_muteButtonView;
  if (v3)
  {
    v7 = [MEMORY[0x1E6982288] replaceDownUpTransition];
    [(UIImageView *)muteButtonView setSymbolImage:v13 withContentTransition:v7];
  }

  else
  {
    [(UIImageView *)self->_muteButtonView setImage:v13];
  }

  v8 = [(LPVisualMedia *)self->_video properties];
  v9 = [v8 _overlappingControlsColor];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [MEMORY[0x1E69DC888] whiteColor];
  }

  v12 = v11;

  [(UIImageView *)self->_muteButtonView _lp_setTintColor:v12];
}

- (void)didChangeMutedState:(BOOL)a3
{
  v3 = a3;
  [(LPVisualMediaView *)self updateMuteButtonWithAnimation:1];
  v5 = +[LPMediaPlaybackManager shared];
  [v5 mediaPlayer:self didChangeMutedState:v3];
}

- (void)updatePlayButtonVisibility
{
  v3 = !self->_playing;
  if ([(LPVisualMediaView *)self shouldAutoPlay])
  {
    v3 &= [(LPVisualMediaView *)self hasEverPlayed];
  }

  v4 = [(LPVisualMediaView *)self isWaitingForPlayback];
  if (self->_wasPlayingWhenSuspended)
  {
    v5 = [MEMORY[0x1E69DC668] sharedApplication];
    v6 = [v5 applicationState];

    if (v6 == 2)
    {
      if (!self->_showingPlayButton)
      {
        return;
      }

      goto LABEL_12;
    }
  }

  v7 = !v4 & v3;
  if (self->_showingPlayButton == v7)
  {
    return;
  }

  if (!v7)
  {
LABEL_12:
    v8 = !self->_waitingForPlaybackDueToAutoPlay;

    [(LPVisualMediaView *)self hidePlayButtonAnimated:v8];
    return;
  }

  [(LPVisualMediaView *)self showPlayButtonAnimated:1];
}

- (void)showPlayButtonAnimated:(BOOL)a3
{
  v3 = a3;
  self->_showingPlayButton = 1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__LPVisualMediaView_showPlayButtonAnimated___block_invoke;
  aBlock[3] = &unk_1E7A35450;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = v4;
  if (v3)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:0x20000 delay:v4 options:0 animations:0.2 completion:0.0];
  }

  else
  {
    (*(v4 + 2))(v4);
  }
}

uint64_t __44__LPVisualMediaView_showPlayButtonAnimated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 456) setHidden:0];
  v2 = [*(*(a1 + 32) + 456) layer];
  v3 = *(MEMORY[0x1E69792E8] + 80);
  v8[4] = *(MEMORY[0x1E69792E8] + 64);
  v8[5] = v3;
  v4 = *(MEMORY[0x1E69792E8] + 112);
  v8[6] = *(MEMORY[0x1E69792E8] + 96);
  v8[7] = v4;
  v5 = *(MEMORY[0x1E69792E8] + 16);
  v8[0] = *MEMORY[0x1E69792E8];
  v8[1] = v5;
  v6 = *(MEMORY[0x1E69792E8] + 48);
  v8[2] = *(MEMORY[0x1E69792E8] + 32);
  v8[3] = v6;
  [v2 setTransform:v8];

  [*(*(a1 + 32) + 464) _lp_setOpacity:1.0];
  return [*(*(a1 + 32) + 496) _lp_setOpacity:1.0];
}

- (void)hidePlayButtonAnimated:(BOOL)a3
{
  v3 = a3;
  self->_showingPlayButton = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__LPVisualMediaView_hidePlayButtonAnimated___block_invoke;
  aBlock[3] = &unk_1E7A35450;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__LPVisualMediaView_hidePlayButtonAnimated___block_invoke_2;
  v7[3] = &unk_1E7A359F0;
  v7[4] = self;
  v6 = _Block_copy(v7);
  if (v3)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:v5 animations:v6 completion:0.2];
  }

  else
  {
    v5[2](v5);
    v6[2](v6, 1);
  }
}

uint64_t __44__LPVisualMediaView_hidePlayButtonAnimated___block_invoke(uint64_t a1)
{
  CATransform3DMakeScale(&v5, 0.4, 0.4, 1.0);
  v2 = [*(*(a1 + 32) + 456) layer];
  v4 = v5;
  [v2 setTransform:&v4];

  [*(*(a1 + 32) + 464) _lp_setOpacity:0.0];
  return [*(*(a1 + 32) + 496) _lp_setOpacity:0.0];
}

- (void)showMuteButton
{
  if (!self->_muteButtonView)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
    muteButtonContainerView = self->_muteButtonContainerView;
    self->_muteButtonContainerView = v3;

    v5 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    muteButtonView = self->_muteButtonView;
    self->_muteButtonView = v5;

    v11 = +[LPResources muteButton];
    v7 = [v11 platformImage];
    [(UIImageView *)self->_muteButtonView setImage:v7];

    [(UIImageView *)self->_muteButtonView setContentMode:1];
    [(UIView *)self->_muteButtonContainerView addSubview:self->_muteButtonView];
    [(LPVisualMediaView *)self updateMuteButtonWithAnimation:0];
    v8 = self->_muteButtonContainerView;
    [(LPVisualMediaViewStyle *)self->_style muteButtonOpacity];
    [(UIView *)v8 _lp_setOpacity:?];
    v12 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel__muteButtonHighlightLongPressRecognized_];
    [v12 setMinimumPressDuration:0.001];
    [v12 setDelegate:self];
    [(UIView *)self->_muteButtonContainerView addGestureRecognizer:v12];
    v9 = self->_muteButtonContainerView;
    v10 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__muteButtonTapRecognized_];
    [(UIView *)v9 addGestureRecognizer:v10];

    [(UIView *)self->_containerView addSubview:self->_muteButtonContainerView];
    [(UIView *)self->_muteButtonContainerView setUserInteractionEnabled:!self->_allowsUserInteractionWithVideoPlayer];
    [(UIView *)self->_muteButtonContainerView setHidden:self->_allowsUserInteractionWithVideoPlayer];
    [(UIView *)self _lp_setNeedsLayout];
  }
}

- (void)fadeInMuteButton
{
  muteButtonContainerView = self->_muteButtonContainerView;
  [(LPVisualMediaViewStyle *)self->_style muteButtonOpacity];
  [(UIView *)muteButtonContainerView _lp_setOpacity:?];
  v7 = [MEMORY[0x1E69794A8] _lp_springWithMass:2.0 stiffness:100.0 damping:50.0];
  [v7 setKeyPath:@"opacity"];
  [v7 setFromValue:&unk_1F2483440];
  v4 = MEMORY[0x1E696AD98];
  [(LPVisualMediaViewStyle *)self->_style muteButtonOpacity];
  v5 = [v4 numberWithDouble:?];
  [v7 setToValue:v5];

  v6 = [(UIView *)self->_muteButtonContainerView layer];
  [v6 addAnimation:v7 forKey:@"fadeIn"];
}

- (id)_createPosterFrameView
{
  if (self->_posterFrame)
  {
    v3 = [LPImageView alloc];
    v4 = [(LPComponentView *)self host];
    v5 = [(LPImageView *)v3 initWithHost:v4 image:self->_posterFrame properties:0 style:self->_posterFrameStyle];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
  }

  v6 = [MEMORY[0x1E69DC888] blackColor];
  [(UIView *)v5 _lp_setBackgroundColor:v6];

  return v5;
}

- (void)setAllowsUserInteractionWithVideoPlayer:(BOOL)a3
{
  v3 = a3;
  self->_allowsUserInteractionWithVideoPlayer = a3;
  [(UIView *)self->_muteButtonContainerView setUserInteractionEnabled:!a3];
  [(UIView *)self->_muteButtonContainerView setHidden:v3];
  tapRecognizer = self->_tapRecognizer;

  [(UIGestureRecognizer *)tapRecognizer setEnabled:v3 ^ 1];
}

- (void)_buildVisualMediaPlaceholderView
{
  v3 = [(LPVisualMediaView *)self playButtonImage];
  v25 = [v3 platformImage];

  v4 = [MEMORY[0x1E69DC738] buttonWithType:1];
  [(UIView *)v4 addTarget:self action:sel_tapRecognized_ forControlEvents:0x2000];
  v5 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  v6 = [v25 imageWithRenderingMode:2];
  [v5 setImage:v6];

  [v5 setCornerStyle:4];
  v7 = [MEMORY[0x1E69DC730] effectWithStyle:1];
  v8 = [v5 background];
  [v8 setVisualEffect:v7];

  v9 = [(LPVisualMediaViewStyle *)self->_style playButton];
  v10 = [v9 color];
  [v5 setBaseForegroundColor:v10];

  v11 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.15];
  [v5 setBaseBackgroundColor:v11];

  v12 = MEMORY[0x1E69DCAD8];
  v13 = [(LPVisualMediaViewStyle *)self->_style playButton];
  v14 = [v13 size];
  v15 = [v14 width];
  [v15 value];
  v16 = [v12 configurationWithPointSize:?];

  [v5 setPreferredSymbolConfigurationForImage:v16];
  [(UIView *)v4 setPreferredBehavioralStyle:1];
  [(UIView *)v4 setConfiguration:v5];
  [(UIView *)v4 setContentMode:4];
  v17 = [MEMORY[0x1E69DC888] blackColor];
  [(UIView *)v4 setTintColor:v17];

  v18 = objc_alloc_init(MEMORY[0x1E69DD250]);
  if ([(LPVisualMediaViewConfiguration *)self->_configuration disablePlayback]|| [(LPVisualMediaViewConfiguration *)self->_configuration disablePlaybackControls])
  {
    v19 = [(LPVisualMediaViewStyle *)self->_style playButton];
    [v19 disabledOpacity];
    [(UIView *)v4 setAlpha:?];
  }

  [(UIView *)v18 addSubview:v4];
  v20 = [(LPVisualMediaView *)self _createPosterFrameView];
  videoPlaceholderView = self->_videoPlaceholderView;
  self->_videoPlaceholderView = v20;

  [(UIView *)self->_containerView addSubview:self->_videoPlaceholderView];
  [(UIView *)self->_containerView addSubview:v18];
  playButtonContainerView = self->_playButtonContainerView;
  self->_playButtonContainerView = v18;
  v23 = v18;

  playButtonView = self->_playButtonView;
  self->_playButtonView = v4;
}

- (BOOL)shouldAllowHighlightToRecognizeSimultaneouslyWithGesture:(id)a3
{
  v4 = [a3 view];
  LOBYTE(self) = v4 != self->_muteButtonContainerView;

  return self;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v4 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)swapVideoPlaceholderForPlaybackIfNeeded
{
  if (!self->_playbackView)
  {
    [(LPVisualMediaView *)self _swapVideoPlaceholderForVideoForAutoPlay:0];
  }
}

- (void)tapRecognized:(id)a3
{
  [(LPVisualMediaView *)self userInteractedWithVideoView];
  if (self->_playbackView)
  {
    if (!self->_fullScreen && (self->_playing || self->_waitingForPlayback))
    {

      [(LPVisualMediaView *)self enterFullScreen];
      return;
    }
  }

  else
  {
    [(LPVisualMediaView *)self swapVideoPlaceholderForPlaybackIfNeeded];
  }

  v4 = !self->_playing;

  [(LPVisualMediaView *)self setPlaying:v4];
}

- (void)destroyFullScreenViewController
{
  [(LPFullScreenVideoController *)self->_fullScreenController dismiss];
  fullScreenController = self->_fullScreenController;
  self->_fullScreenController = 0;
}

- (void)recreateFullScreenViewControllerIfNeeded
{
  if (!self->_fullScreenController)
  {
    v3 = [(LPVisualMediaView *)self createFullScreenVideoViewController];
    fullScreenController = self->_fullScreenController;
    self->_fullScreenController = v3;
  }
}

- (void)enterFullScreen
{
  if ([(LPVisualMediaView *)self usesCustomFullScreenImplementation])
  {

    [(LPVisualMediaView *)self enterCustomFullScreen];
  }

  else
  {
    self->_fullScreen = 1;
    [(LPVisualMediaView *)self recreateFullScreenViewControllerIfNeeded];
    fullScreenController = self->_fullScreenController;

    [(LPFullScreenVideoController *)fullScreenController present];
  }
}

- (void)fullScreenVideoDidPresent
{
  [(LPVisualMediaView *)self setMuted:0];
  [(LPVisualMediaView *)self setPlaying:1];

  [(LPVisualMediaView *)self setHidden:1];
}

- (void)fullScreenVideoWillDismiss
{
  [(LPVisualMediaView *)self setMuted:1];
  [(LPVisualMediaView *)self setHidden:0];

  [(LPVisualMediaView *)self hideMuteButton];
}

- (void)_muteButtonHighlightLongPressRecognized:(id)a3
{
  v6 = a3;
  v4 = [v6 state];
  if ((v4 - 3) >= 2)
  {
    if (v4 != 1)
    {
      goto LABEL_6;
    }

    muteButtonContainerView = self->_muteButtonContainerView;
    [(LPVisualMediaViewStyle *)self->_style muteButtonHighlightedOpacity];
  }

  else
  {
    muteButtonContainerView = self->_muteButtonContainerView;
    [(LPVisualMediaViewStyle *)self->_style muteButtonOpacity];
  }

  [(UIView *)muteButtonContainerView _lp_setOpacity:?];
LABEL_6:
}

- (void)_muteButtonTapRecognized:(id)a3
{
  [(LPVisualMediaView *)self userInteractedWithVideoView];
  v4 = [(LPVisualMediaView *)self isMuted]^ 1;

  [(LPVisualMediaView *)self setMuted:v4];
}

@end