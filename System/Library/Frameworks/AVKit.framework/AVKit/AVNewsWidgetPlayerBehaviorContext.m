@interface AVNewsWidgetPlayerBehaviorContext
- (AVNewsWidgetPlayerBehavior)behavior;
- (AVNewsWidgetPlayerBehaviorContext)initWithAVKitOwner:(id)a3;
- (AVPlayerViewController)playerViewController;
- (BOOL)contentTransitioningView:(id)a3 shouldBeginTransitionWithDirection:(int64_t)a4;
- (BOOL)contentTransitioningViewShouldBeginDragging:(id)a3 locationInView:(CGPoint)a4;
- (BOOL)isContentTransitionInteractive;
- (UIView)contentTransitioningOverlayView;
- (id)contentTransitioningPlayerContentViewForTransition:(id)a3;
- (id)makePlaybackContentContainerWithFrame:(CGRect)a3 activeContentView:(id)a4;
- (int64_t)_transitionDirectionForContentTransitionType:(int64_t)a3;
- (int64_t)activeContentTransitionType;
- (int64_t)contentTransitionTypeForTransitionDirection:(int64_t)a3;
- (void)contentTransitioningViewDidChangeTransitionStatus:(id)a3 oldState:(int64_t)a4 oldTransitionDirection:(int64_t)a5 oldProgress:(double)a6;
- (void)didAddBehavior:(id)a3;
- (void)setCustomContentTransitioningInfoPanel:(id)a3;
- (void)setStartNextContentTransitionButtonEnabled:(BOOL)a3;
- (void)setStartPreviousContentTransitionButtonEnabled:(BOOL)a3;
- (void)setVideoGravityForTransitioningContent:(id)a3;
- (void)startContentTransition:(int64_t)a3;
- (void)updateStartLeftRightContentTransitionButtonsEnabled;
- (void)viewDidLoad;
- (void)willRemoveBehavior:(id)a3;
@end

@implementation AVNewsWidgetPlayerBehaviorContext

- (AVNewsWidgetPlayerBehavior)behavior
{
  WeakRetained = objc_loadWeakRetained(&self->_behavior);

  return WeakRetained;
}

- (AVPlayerViewController)playerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_playerViewController);

  return WeakRetained;
}

- (int64_t)contentTransitionTypeForTransitionDirection:(int64_t)a3
{
  v4 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  v5 = [v4 view];
  v6 = [v5 effectiveUserInterfaceLayoutDirection];

  v7 = 1;
  if (v6 == 1)
  {
    v7 = 2;
  }

  v8 = 1;
  if (v6 != 1)
  {
    v8 = 2;
  }

  if (a3 != 2)
  {
    v8 = 0;
  }

  if (a3 == 3)
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

- (void)contentTransitioningViewDidChangeTransitionStatus:(id)a3 oldState:(int64_t)a4 oldTransitionDirection:(int64_t)a5 oldProgress:(double)a6
{
  v15 = a3;
  v9 = [v15 transitionState];
  [v15 transitionProgress];
  v11 = v10;
  v12 = [v15 transitionState];
  if (v12 <= 4)
  {
    if (v12 == 3)
    {
      if (v9 != a4)
      {
        v14 = [(AVNewsWidgetPlayerBehaviorContext *)self behavior];
        [v14 willBeginContentTransition];
        goto LABEL_19;
      }
    }

    else
    {
      if (v12 != 4)
      {
        goto LABEL_20;
      }

      if (v9 != a4)
      {
        v14 = [(AVNewsWidgetPlayerBehaviorContext *)self behavior];
        [v14 willCancelContentTransition];
        goto LABEL_19;
      }
    }

LABEL_16:
    if (v11 == a6)
    {
      goto LABEL_20;
    }

    v14 = [(AVNewsWidgetPlayerBehaviorContext *)self behavior];
    [v15 transitionProgress];
    [v14 didUpdateContentTransitionProgress:?];
    goto LABEL_19;
  }

  if (v12 == 5)
  {
    if (v9 == a4)
    {
      goto LABEL_20;
    }

    [(AVNewsWidgetPlayerBehaviorContext *)self setContentTransitioningPlayer:0];
    v14 = [(AVNewsWidgetPlayerBehaviorContext *)self behavior];
    [v14 didCancelContentTransition];
    goto LABEL_19;
  }

  if (v12 == 6)
  {
    if (v9 != a4)
    {
      v14 = [(AVNewsWidgetPlayerBehaviorContext *)self behavior];
      [v14 willCompleteContentTransition];
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (v12 == 7 && v9 != a4)
  {
    v13 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    [v13 activeContentViewDidChange];

    [(AVNewsWidgetPlayerBehaviorContext *)self setContentTransitioningPlayer:0];
    v14 = [(AVNewsWidgetPlayerBehaviorContext *)self behavior];
    [v14 didCompleteContentTransition];
LABEL_19:
  }

LABEL_20:
}

- (id)contentTransitioningPlayerContentViewForTransition:(id)a3
{
  v4 = a3;
  v5 = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitionView];
  v6 = [v5 incomingContentView];

  if (v6)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Content view unexpectedly had incomingContentView.", buf, 2u);
    }
  }

  v8 = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitioningPlayer];

  if (!v8)
  {
    v9 = _AVLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v26 = 0;
      _os_log_error_impl(&dword_18B49C000, v9, OS_LOG_TYPE_ERROR, "contentTransitioningPlayer should never be nil here.", v26, 2u);
    }
  }

  v10 = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitioningPlayer];

  if (v10)
  {
    v11 = [__AVPlayerLayerView alloc];
    v12 = [v4 activeContentView];
    [v12 videoContentFrame];
    v13 = [(__AVPlayerLayerView *)v11 initWithFrame:?];

    v14 = [(__AVPlayerLayerView *)v13 playerLayer];
    v15 = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitioningPlayer];
    [v14 setPlayer:v15];

    v16 = [v4 activeContentView];
    v17 = [v16 playerLayerView];
    v18 = [v17 pixelBufferAttributes];
    [(__AVPlayerLayerView *)v13 setPixelBufferAttributes:v18];

    v19 = [v4 activeContentView];
    v20 = [v19 playerLayerView];
    -[__AVPlayerLayerView setVideoGravity:](v13, "setVideoGravity:", [v20 videoGravity]);

    v21 = [AVPlaybackContentContainerView alloc];
    [v4 bounds];
    v22 = [(AVPlaybackContentContainerView *)v21 initWithFrame:v13 playerLayerView:0 contentOverlayView:?];
    v23 = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitionView];
    v24 = [v23 activeContentView];
    [v24 videoContentFrame];
    [(AVPlaybackContentContainerView *)v22 setVideoContentFrame:?];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)contentTransitioningView:(id)a3 shouldBeginTransitionWithDirection:(int64_t)a4
{
  [(AVNewsWidgetPlayerBehaviorContext *)self setContentTransitioningPlayer:0];
  v6 = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitionTypeForTransitionDirection:a4];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [(AVNewsWidgetPlayerBehaviorContext *)self behavior];
  v9 = [v8 playerForContentTransitionType:v7];

  [(AVNewsWidgetPlayerBehaviorContext *)self setContentTransitioningPlayer:v9];
  v10 = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitioningPlayer];
  v11 = v10 != 0;

  return v11;
}

- (BOOL)contentTransitioningViewShouldBeginDragging:(id)a3 locationInView:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  if ([v8 hasActiveTransition])
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v10 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    v11 = [v10 player];

    if (!v11)
    {
      LOBYTE(v9) = 0;
      goto LABEL_6;
    }

    v12 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    v13 = [v12 contentView];
    [v13 convertPoint:v7 fromView:{x, y}];
    v15 = v14;
    v17 = v16;

    v18 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    v19 = [v18 contentView];
    v8 = [v19 hitTest:0 withEvent:{v15, v17}];

    v20 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    v21 = [v20 contentView];
    v9 = [v21 isViewDescendantOfPlaybackControlsSubview:v8] ^ 1;
  }

LABEL_6:
  return v9;
}

- (id)makePlaybackContentContainerWithFrame:(CGRect)a3 activeContentView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitionView];

  if (v10)
  {
    v11 = _AVLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      _os_log_error_impl(&dword_18B49C000, v11, OS_LOG_TYPE_ERROR, "Already had a content transition view, which is unexpected.", v19, 2u);
    }
  }

  v12 = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitionView];
  [v12 removeFromSuperview];

  v13 = [[AVPlaybackContentTransitioningView alloc] initWithFrame:v9 activeContentView:x, y, width, height];
  [(AVPlaybackContentTransitioningView *)v13 setContentTransitioningDelegate:self];
  [(AVNewsWidgetPlayerBehaviorContext *)self setContentTransitionView:v13];
  v14 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  v15 = [v14 _transitionController];
  v16 = [v15 interactiveGestureTracker];
  v17 = [(AVPlaybackContentTransitioningView *)v13 panGestureRecognizer];
  [v16 setContentTransitioningViewGestureRecognizer:v17];

  return v13;
}

- (void)viewDidLoad
{
  v3 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  v4 = [v3 playbackControlsController];
  [v4 setShowsVideoGravityButton:0];

  v5 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  v6 = [v5 playbackControlsController];
  [v6 setPlaybackControlsIncludeStartContentTransitionButtons:1];

  [(AVNewsWidgetPlayerBehaviorContext *)self updateStartLeftRightContentTransitionButtonsEnabled];
  v7 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  v8 = [v7 _transitionController];
  v9 = [v8 interactiveGestureTracker];
  v10 = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitionView];
  v11 = [v10 panGestureRecognizer];
  [v9 setContentTransitioningViewGestureRecognizer:v11];

  v12 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  v13 = [v12 view];
  v24 = [v13 window];

  v14 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  v15 = [v14 contentView];
  [v15 setStyleSheetShouldUseCompactFullScreenItemSize:{objc_msgSend(v24, "avkit_isHostedInAnotherProcess")}];

  v16 = [(AVNewsWidgetPlayerBehaviorContext *)self customContentTransitioningInfoPanel];

  if (v16)
  {
    v17 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    v18 = [v17 contentView];
    [v18 loadPlaybackControlsViewIfNeeded];

    v19 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    v20 = [v19 contentView];
    v21 = [v20 chromePlaybackControlsView];
    v22 = [v21 transportControlsView];
    v23 = [(AVNewsWidgetPlayerBehaviorContext *)self customContentTransitioningInfoPanel];
    [v22 setCustomContentTransitioningInfoPanel:v23];
  }
}

- (void)willRemoveBehavior:(id)a3
{
  v4 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  v5 = [v4 isViewLoaded];

  if (v5)
  {
    v6 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    v7 = [v6 playbackControlsController];
    [v7 setPlaybackControlsIncludeStartContentTransitionButtons:0];

    v8 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    v9 = [v8 contentView];
    v10 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    v11 = [v10 contentView];
    v12 = [v11 playbackContentContainerView];
    [v9 setPlaybackContentContainerView:v12];

    v13 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    v14 = [v13 _transitionController];
    v15 = [v14 interactiveGestureTracker];
    [v15 setContentTransitioningViewGestureRecognizer:0];

    v16 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    v17 = [v16 contentView];
    [v17 setStyleSheetShouldUseCompactFullScreenItemSize:0];

    v19 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    v18 = [v19 playbackControlsController];
    [v18 setShowsVideoGravityButton:1];
  }
}

- (void)didAddBehavior:(id)a3
{
  v4 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  v5 = [v4 isViewLoaded];

  if (v5)
  {
    v6 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    v7 = [v6 playbackControlsController];
    [v7 setShowsVideoGravityButton:0];
  }

  v30 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  if ([v30 isViewLoaded])
  {
    v8 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    v9 = [v8 contentView];
    v10 = [v9 playbackContentContainerView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      return;
    }

    v12 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    v13 = [v12 contentView];
    v14 = [v13 playbackContentContainerView];
    v30 = [v14 activeContentView];

    v15 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    v16 = [v15 contentView];
    [v30 frame];
    v17 = [(AVNewsWidgetPlayerBehaviorContext *)self makePlaybackContentContainerWithFrame:v30 activeContentView:?];
    [v16 setPlaybackContentContainerView:v17];

    v18 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    v19 = [v18 playbackControlsController];
    [v19 setPlaybackControlsIncludeStartContentTransitionButtons:1];

    [(AVNewsWidgetPlayerBehaviorContext *)self updateStartLeftRightContentTransitionButtonsEnabled];
    v20 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    v21 = [v20 _transitionController];
    v22 = [v21 interactiveGestureTracker];
    v23 = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitionView];
    v24 = [v23 panGestureRecognizer];
    [v22 setContentTransitioningViewGestureRecognizer:v24];

    v25 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    v26 = [v25 view];
    v27 = [v26 window];

    v28 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    v29 = [v28 contentView];
    [v29 setStyleSheetShouldUseCompactFullScreenItemSize:{objc_msgSend(v27, "avkit_isHostedInAnotherProcess")}];
  }
}

- (void)setCustomContentTransitioningInfoPanel:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AVLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "[AVNewsWidgetPlayerBehaviorContext setCustomContentTransitioningInfoPanel:]";
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s %@", &v15, 0x16u);
  }

  objc_storeStrong(&self->_customContentTransitioningInfoPanel, a3);
  v7 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  v8 = [v7 isViewLoaded];

  if (v8)
  {
    v9 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    v10 = [v9 contentView];
    [v10 loadPlaybackControlsViewIfNeeded];

    v11 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    v12 = [v11 contentView];
    v13 = [v12 chromePlaybackControlsView];
    v14 = [v13 transportControlsView];
    [v14 setCustomContentTransitioningInfoPanel:v5];
  }
}

- (void)updateStartLeftRightContentTransitionButtonsEnabled
{
  v3 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  v4 = [v3 view];
  v5 = [v4 effectiveUserInterfaceLayoutDirection];

  v6 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  v7 = [v6 playbackControlsController];
  if (v5)
  {
    v8 = [(AVNewsWidgetPlayerBehaviorContext *)self isStartNextContentTransitionButtonEnabled];
  }

  else
  {
    v8 = [(AVNewsWidgetPlayerBehaviorContext *)self isStartPreviousContentTransitionButtonEnabled];
  }

  [v7 setStartLeftwardContentTransitionButtonEnabled:v8];

  v9 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  v10 = [v9 playbackControlsController];
  if (v5)
  {
    v11 = [(AVNewsWidgetPlayerBehaviorContext *)self isStartPreviousContentTransitionButtonEnabled];
  }

  else
  {
    v11 = [(AVNewsWidgetPlayerBehaviorContext *)self isStartNextContentTransitionButtonEnabled];
  }

  [v10 setStartRightwardContentTransitionButtonEnabled:v11];

  if ([(AVNewsWidgetPlayerBehaviorContext *)self isStartNextContentTransitionButtonEnabled]|| [(AVNewsWidgetPlayerBehaviorContext *)self isStartPreviousContentTransitionButtonEnabled])
  {
    objc_initWeak(&location, self);
    v12 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    v13 = [v12 playbackControlsController];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __88__AVNewsWidgetPlayerBehaviorContext_updateStartLeftRightContentTransitionButtonsEnabled__block_invoke;
    v16[3] = &unk_1E7209618;
    objc_copyWeak(&v17, &location);
    [v13 setContentTransitionAction:v16];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v15 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    v14 = [v15 playbackControlsController];
    [v14 setContentTransitionAction:0];
  }
}

void __88__AVNewsWidgetPlayerBehaviorContext_updateStartLeftRightContentTransitionButtonsEnabled__block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained activeContentTransitionType];
    v6 = _AVLog();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = 138412290;
        v9 = v4;
        _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Warning: Attempted to start content transition on a %@, which was already transitioning. Ignoring.", &v8, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = "[AVNewsWidgetPlayerBehaviorContext updateStartLeftRightContentTransitionButtonsEnabled]_block_invoke";
        v10 = 2048;
        v11 = a2;
        _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s %ld", &v8, 0x16u);
      }

      [v4 startContentTransition:a2];
    }
  }
}

- (void)setStartPreviousContentTransitionButtonEnabled:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    v7 = 136315650;
    v8 = "[AVNewsWidgetPlayerBehaviorContext setStartPreviousContentTransitionButtonEnabled:]";
    v10 = "startPreviousContentTransitionButtonEnabled";
    v9 = 2080;
    if (v3)
    {
      v6 = "YES";
    }

    v11 = 2080;
    v12 = v6;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
  }

  self->_startPreviousContentTransitionButtonEnabled = v3;
  [(AVNewsWidgetPlayerBehaviorContext *)self updateStartLeftRightContentTransitionButtonsEnabled];
}

- (void)setStartNextContentTransitionButtonEnabled:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    v7 = 136315650;
    v8 = "[AVNewsWidgetPlayerBehaviorContext setStartNextContentTransitionButtonEnabled:]";
    v10 = "startNextContentTransitionButtonEnabled";
    v9 = 2080;
    if (v3)
    {
      v6 = "YES";
    }

    v11 = 2080;
    v12 = v6;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
  }

  self->_startNextContentTransitionButtonEnabled = v3;
  [(AVNewsWidgetPlayerBehaviorContext *)self updateStartLeftRightContentTransitionButtonsEnabled];
}

- (BOOL)isContentTransitionInteractive
{
  v2 = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitionView];
  v3 = [v2 isTransitionInteractive];

  return v3;
}

- (int64_t)activeContentTransitionType
{
  v3 = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitionView];
  v4 = [v3 transitionState];

  if ((v4 - 3) > 4)
  {
    return 0;
  }

  v5 = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitionView];
  v6 = -[AVNewsWidgetPlayerBehaviorContext contentTransitionTypeForTransitionDirection:](self, "contentTransitionTypeForTransitionDirection:", [v5 transitionDirection]);

  return v6;
}

- (UIView)contentTransitioningOverlayView
{
  v2 = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitionView];
  v3 = [v2 incomingContentView];
  v4 = [v3 contentOverlayView];

  return v4;
}

- (int64_t)_transitionDirectionForContentTransitionType:(int64_t)a3
{
  v4 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  v5 = [v4 view];
  v6 = [v5 effectiveUserInterfaceLayoutDirection];

  v7 = 2;
  if (v6 != 1)
  {
    v7 = 3;
  }

  v8 = 2;
  if (v6 == 1)
  {
    v8 = 3;
  }

  if (a3 != 1)
  {
    v8 = 0;
  }

  if (a3 == 2)
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

- (void)startContentTransition:(int64_t)a3
{
  v5 = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitionView];
  [v5 performTransition:{-[AVNewsWidgetPlayerBehaviorContext _transitionDirectionForContentTransitionType:](self, "_transitionDirectionForContentTransitionType:", a3)}];
}

- (void)setVideoGravityForTransitioningContent:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[AVNewsWidgetPlayerBehaviorContext setVideoGravityForTransitioningContent:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v11, 0x16u);
  }

  v6 = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitionView];
  v7 = [v6 incomingContentView];
  v8 = [v7 playerLayerView];
  [v8 setVideoGravity:AVVideoGravityFromString(v4)];

  v9 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  v10 = [v9 contentView];
  [v10 setNeedsLayout];
}

- (AVNewsWidgetPlayerBehaviorContext)initWithAVKitOwner:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AVNewsWidgetPlayerBehaviorContext;
  v5 = [(AVNewsWidgetPlayerBehaviorContext *)&v8 init];
  if (v5)
  {
    v6 = _AVLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v10 = "[AVNewsWidgetPlayerBehaviorContext initWithAVKitOwner:]";
      v11 = 1024;
      v12 = 48;
      v13 = 2048;
      v14 = v5;
      _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
    }

    objc_storeWeak(&v5->_playerViewController, v4);
    *&v5->_startNextContentTransitionButtonEnabled = 257;
  }

  return v5;
}

@end