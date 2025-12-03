@interface AVNewsWidgetPlayerBehaviorContext
- (AVNewsWidgetPlayerBehavior)behavior;
- (AVNewsWidgetPlayerBehaviorContext)initWithAVKitOwner:(id)owner;
- (AVPlayerViewController)playerViewController;
- (BOOL)contentTransitioningView:(id)view shouldBeginTransitionWithDirection:(int64_t)direction;
- (BOOL)contentTransitioningViewShouldBeginDragging:(id)dragging locationInView:(CGPoint)view;
- (BOOL)isContentTransitionInteractive;
- (UIView)contentTransitioningOverlayView;
- (id)contentTransitioningPlayerContentViewForTransition:(id)transition;
- (id)makePlaybackContentContainerWithFrame:(CGRect)frame activeContentView:(id)view;
- (int64_t)_transitionDirectionForContentTransitionType:(int64_t)type;
- (int64_t)activeContentTransitionType;
- (int64_t)contentTransitionTypeForTransitionDirection:(int64_t)direction;
- (void)contentTransitioningViewDidChangeTransitionStatus:(id)status oldState:(int64_t)state oldTransitionDirection:(int64_t)direction oldProgress:(double)progress;
- (void)didAddBehavior:(id)behavior;
- (void)setCustomContentTransitioningInfoPanel:(id)panel;
- (void)setStartNextContentTransitionButtonEnabled:(BOOL)enabled;
- (void)setStartPreviousContentTransitionButtonEnabled:(BOOL)enabled;
- (void)setVideoGravityForTransitioningContent:(id)content;
- (void)startContentTransition:(int64_t)transition;
- (void)updateStartLeftRightContentTransitionButtonsEnabled;
- (void)viewDidLoad;
- (void)willRemoveBehavior:(id)behavior;
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

- (int64_t)contentTransitionTypeForTransitionDirection:(int64_t)direction
{
  playerViewController = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  view = [playerViewController view];
  effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];

  v7 = 1;
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v7 = 2;
  }

  v8 = 1;
  if (effectiveUserInterfaceLayoutDirection != 1)
  {
    v8 = 2;
  }

  if (direction != 2)
  {
    v8 = 0;
  }

  if (direction == 3)
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

- (void)contentTransitioningViewDidChangeTransitionStatus:(id)status oldState:(int64_t)state oldTransitionDirection:(int64_t)direction oldProgress:(double)progress
{
  statusCopy = status;
  transitionState = [statusCopy transitionState];
  [statusCopy transitionProgress];
  v11 = v10;
  transitionState2 = [statusCopy transitionState];
  if (transitionState2 <= 4)
  {
    if (transitionState2 == 3)
    {
      if (transitionState != state)
      {
        behavior = [(AVNewsWidgetPlayerBehaviorContext *)self behavior];
        [behavior willBeginContentTransition];
        goto LABEL_19;
      }
    }

    else
    {
      if (transitionState2 != 4)
      {
        goto LABEL_20;
      }

      if (transitionState != state)
      {
        behavior = [(AVNewsWidgetPlayerBehaviorContext *)self behavior];
        [behavior willCancelContentTransition];
        goto LABEL_19;
      }
    }

LABEL_16:
    if (v11 == progress)
    {
      goto LABEL_20;
    }

    behavior = [(AVNewsWidgetPlayerBehaviorContext *)self behavior];
    [statusCopy transitionProgress];
    [behavior didUpdateContentTransitionProgress:?];
    goto LABEL_19;
  }

  if (transitionState2 == 5)
  {
    if (transitionState == state)
    {
      goto LABEL_20;
    }

    [(AVNewsWidgetPlayerBehaviorContext *)self setContentTransitioningPlayer:0];
    behavior = [(AVNewsWidgetPlayerBehaviorContext *)self behavior];
    [behavior didCancelContentTransition];
    goto LABEL_19;
  }

  if (transitionState2 == 6)
  {
    if (transitionState != state)
    {
      behavior = [(AVNewsWidgetPlayerBehaviorContext *)self behavior];
      [behavior willCompleteContentTransition];
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (transitionState2 == 7 && transitionState != state)
  {
    playerViewController = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    [playerViewController activeContentViewDidChange];

    [(AVNewsWidgetPlayerBehaviorContext *)self setContentTransitioningPlayer:0];
    behavior = [(AVNewsWidgetPlayerBehaviorContext *)self behavior];
    [behavior didCompleteContentTransition];
LABEL_19:
  }

LABEL_20:
}

- (id)contentTransitioningPlayerContentViewForTransition:(id)transition
{
  transitionCopy = transition;
  contentTransitionView = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitionView];
  incomingContentView = [contentTransitionView incomingContentView];

  if (incomingContentView)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Content view unexpectedly had incomingContentView.", buf, 2u);
    }
  }

  contentTransitioningPlayer = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitioningPlayer];

  if (!contentTransitioningPlayer)
  {
    v9 = _AVLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v26 = 0;
      _os_log_error_impl(&dword_18B49C000, v9, OS_LOG_TYPE_ERROR, "contentTransitioningPlayer should never be nil here.", v26, 2u);
    }
  }

  contentTransitioningPlayer2 = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitioningPlayer];

  if (contentTransitioningPlayer2)
  {
    v11 = [__AVPlayerLayerView alloc];
    activeContentView = [transitionCopy activeContentView];
    [activeContentView videoContentFrame];
    v13 = [(__AVPlayerLayerView *)v11 initWithFrame:?];

    playerLayer = [(__AVPlayerLayerView *)v13 playerLayer];
    contentTransitioningPlayer3 = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitioningPlayer];
    [playerLayer setPlayer:contentTransitioningPlayer3];

    activeContentView2 = [transitionCopy activeContentView];
    playerLayerView = [activeContentView2 playerLayerView];
    pixelBufferAttributes = [playerLayerView pixelBufferAttributes];
    [(__AVPlayerLayerView *)v13 setPixelBufferAttributes:pixelBufferAttributes];

    activeContentView3 = [transitionCopy activeContentView];
    playerLayerView2 = [activeContentView3 playerLayerView];
    -[__AVPlayerLayerView setVideoGravity:](v13, "setVideoGravity:", [playerLayerView2 videoGravity]);

    v21 = [AVPlaybackContentContainerView alloc];
    [transitionCopy bounds];
    v22 = [(AVPlaybackContentContainerView *)v21 initWithFrame:v13 playerLayerView:0 contentOverlayView:?];
    contentTransitionView2 = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitionView];
    activeContentView4 = [contentTransitionView2 activeContentView];
    [activeContentView4 videoContentFrame];
    [(AVPlaybackContentContainerView *)v22 setVideoContentFrame:?];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)contentTransitioningView:(id)view shouldBeginTransitionWithDirection:(int64_t)direction
{
  [(AVNewsWidgetPlayerBehaviorContext *)self setContentTransitioningPlayer:0];
  v6 = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitionTypeForTransitionDirection:direction];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  behavior = [(AVNewsWidgetPlayerBehaviorContext *)self behavior];
  v9 = [behavior playerForContentTransitionType:v7];

  [(AVNewsWidgetPlayerBehaviorContext *)self setContentTransitioningPlayer:v9];
  contentTransitioningPlayer = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitioningPlayer];
  v11 = contentTransitioningPlayer != 0;

  return v11;
}

- (BOOL)contentTransitioningViewShouldBeginDragging:(id)dragging locationInView:(CGPoint)view
{
  y = view.y;
  x = view.x;
  draggingCopy = dragging;
  playerViewController = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  if ([playerViewController hasActiveTransition])
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    playerViewController2 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    player = [playerViewController2 player];

    if (!player)
    {
      LOBYTE(v9) = 0;
      goto LABEL_6;
    }

    playerViewController3 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    contentView = [playerViewController3 contentView];
    [contentView convertPoint:draggingCopy fromView:{x, y}];
    v15 = v14;
    v17 = v16;

    playerViewController4 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    contentView2 = [playerViewController4 contentView];
    playerViewController = [contentView2 hitTest:0 withEvent:{v15, v17}];

    playerViewController5 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    contentView3 = [playerViewController5 contentView];
    v9 = [contentView3 isViewDescendantOfPlaybackControlsSubview:playerViewController] ^ 1;
  }

LABEL_6:
  return v9;
}

- (id)makePlaybackContentContainerWithFrame:(CGRect)frame activeContentView:(id)view
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  contentTransitionView = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitionView];

  if (contentTransitionView)
  {
    v11 = _AVLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      _os_log_error_impl(&dword_18B49C000, v11, OS_LOG_TYPE_ERROR, "Already had a content transition view, which is unexpected.", v19, 2u);
    }
  }

  contentTransitionView2 = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitionView];
  [contentTransitionView2 removeFromSuperview];

  height = [[AVPlaybackContentTransitioningView alloc] initWithFrame:viewCopy activeContentView:x, y, width, height];
  [(AVPlaybackContentTransitioningView *)height setContentTransitioningDelegate:self];
  [(AVNewsWidgetPlayerBehaviorContext *)self setContentTransitionView:height];
  playerViewController = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  _transitionController = [playerViewController _transitionController];
  interactiveGestureTracker = [_transitionController interactiveGestureTracker];
  panGestureRecognizer = [(AVPlaybackContentTransitioningView *)height panGestureRecognizer];
  [interactiveGestureTracker setContentTransitioningViewGestureRecognizer:panGestureRecognizer];

  return height;
}

- (void)viewDidLoad
{
  playerViewController = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  playbackControlsController = [playerViewController playbackControlsController];
  [playbackControlsController setShowsVideoGravityButton:0];

  playerViewController2 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  playbackControlsController2 = [playerViewController2 playbackControlsController];
  [playbackControlsController2 setPlaybackControlsIncludeStartContentTransitionButtons:1];

  [(AVNewsWidgetPlayerBehaviorContext *)self updateStartLeftRightContentTransitionButtonsEnabled];
  playerViewController3 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  _transitionController = [playerViewController3 _transitionController];
  interactiveGestureTracker = [_transitionController interactiveGestureTracker];
  contentTransitionView = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitionView];
  panGestureRecognizer = [contentTransitionView panGestureRecognizer];
  [interactiveGestureTracker setContentTransitioningViewGestureRecognizer:panGestureRecognizer];

  playerViewController4 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  view = [playerViewController4 view];
  window = [view window];

  playerViewController5 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  contentView = [playerViewController5 contentView];
  [contentView setStyleSheetShouldUseCompactFullScreenItemSize:{objc_msgSend(window, "avkit_isHostedInAnotherProcess")}];

  customContentTransitioningInfoPanel = [(AVNewsWidgetPlayerBehaviorContext *)self customContentTransitioningInfoPanel];

  if (customContentTransitioningInfoPanel)
  {
    playerViewController6 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    contentView2 = [playerViewController6 contentView];
    [contentView2 loadPlaybackControlsViewIfNeeded];

    playerViewController7 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    contentView3 = [playerViewController7 contentView];
    chromePlaybackControlsView = [contentView3 chromePlaybackControlsView];
    transportControlsView = [chromePlaybackControlsView transportControlsView];
    customContentTransitioningInfoPanel2 = [(AVNewsWidgetPlayerBehaviorContext *)self customContentTransitioningInfoPanel];
    [transportControlsView setCustomContentTransitioningInfoPanel:customContentTransitioningInfoPanel2];
  }
}

- (void)willRemoveBehavior:(id)behavior
{
  playerViewController = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  isViewLoaded = [playerViewController isViewLoaded];

  if (isViewLoaded)
  {
    playerViewController2 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    playbackControlsController = [playerViewController2 playbackControlsController];
    [playbackControlsController setPlaybackControlsIncludeStartContentTransitionButtons:0];

    playerViewController3 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    contentView = [playerViewController3 contentView];
    playerViewController4 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    contentView2 = [playerViewController4 contentView];
    playbackContentContainerView = [contentView2 playbackContentContainerView];
    [contentView setPlaybackContentContainerView:playbackContentContainerView];

    playerViewController5 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    _transitionController = [playerViewController5 _transitionController];
    interactiveGestureTracker = [_transitionController interactiveGestureTracker];
    [interactiveGestureTracker setContentTransitioningViewGestureRecognizer:0];

    playerViewController6 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    contentView3 = [playerViewController6 contentView];
    [contentView3 setStyleSheetShouldUseCompactFullScreenItemSize:0];

    playerViewController7 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    playbackControlsController2 = [playerViewController7 playbackControlsController];
    [playbackControlsController2 setShowsVideoGravityButton:1];
  }
}

- (void)didAddBehavior:(id)behavior
{
  playerViewController = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  isViewLoaded = [playerViewController isViewLoaded];

  if (isViewLoaded)
  {
    playerViewController2 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    playbackControlsController = [playerViewController2 playbackControlsController];
    [playbackControlsController setShowsVideoGravityButton:0];
  }

  playerViewController3 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  if ([playerViewController3 isViewLoaded])
  {
    playerViewController4 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    contentView = [playerViewController4 contentView];
    playbackContentContainerView = [contentView playbackContentContainerView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      return;
    }

    playerViewController5 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    contentView2 = [playerViewController5 contentView];
    playbackContentContainerView2 = [contentView2 playbackContentContainerView];
    playerViewController3 = [playbackContentContainerView2 activeContentView];

    playerViewController6 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    contentView3 = [playerViewController6 contentView];
    [playerViewController3 frame];
    v17 = [(AVNewsWidgetPlayerBehaviorContext *)self makePlaybackContentContainerWithFrame:playerViewController3 activeContentView:?];
    [contentView3 setPlaybackContentContainerView:v17];

    playerViewController7 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    playbackControlsController2 = [playerViewController7 playbackControlsController];
    [playbackControlsController2 setPlaybackControlsIncludeStartContentTransitionButtons:1];

    [(AVNewsWidgetPlayerBehaviorContext *)self updateStartLeftRightContentTransitionButtonsEnabled];
    playerViewController8 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    _transitionController = [playerViewController8 _transitionController];
    interactiveGestureTracker = [_transitionController interactiveGestureTracker];
    contentTransitionView = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitionView];
    panGestureRecognizer = [contentTransitionView panGestureRecognizer];
    [interactiveGestureTracker setContentTransitioningViewGestureRecognizer:panGestureRecognizer];

    playerViewController9 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    view = [playerViewController9 view];
    window = [view window];

    playerViewController10 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    contentView4 = [playerViewController10 contentView];
    [contentView4 setStyleSheetShouldUseCompactFullScreenItemSize:{objc_msgSend(window, "avkit_isHostedInAnotherProcess")}];
  }
}

- (void)setCustomContentTransitioningInfoPanel:(id)panel
{
  v19 = *MEMORY[0x1E69E9840];
  panelCopy = panel;
  v6 = _AVLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "[AVNewsWidgetPlayerBehaviorContext setCustomContentTransitioningInfoPanel:]";
    v17 = 2112;
    v18 = panelCopy;
    _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s %@", &v15, 0x16u);
  }

  objc_storeStrong(&self->_customContentTransitioningInfoPanel, panel);
  playerViewController = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  isViewLoaded = [playerViewController isViewLoaded];

  if (isViewLoaded)
  {
    playerViewController2 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    contentView = [playerViewController2 contentView];
    [contentView loadPlaybackControlsViewIfNeeded];

    playerViewController3 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    contentView2 = [playerViewController3 contentView];
    chromePlaybackControlsView = [contentView2 chromePlaybackControlsView];
    transportControlsView = [chromePlaybackControlsView transportControlsView];
    [transportControlsView setCustomContentTransitioningInfoPanel:panelCopy];
  }
}

- (void)updateStartLeftRightContentTransitionButtonsEnabled
{
  playerViewController = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  view = [playerViewController view];
  effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];

  playerViewController2 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  playbackControlsController = [playerViewController2 playbackControlsController];
  if (effectiveUserInterfaceLayoutDirection)
  {
    isStartNextContentTransitionButtonEnabled = [(AVNewsWidgetPlayerBehaviorContext *)self isStartNextContentTransitionButtonEnabled];
  }

  else
  {
    isStartNextContentTransitionButtonEnabled = [(AVNewsWidgetPlayerBehaviorContext *)self isStartPreviousContentTransitionButtonEnabled];
  }

  [playbackControlsController setStartLeftwardContentTransitionButtonEnabled:isStartNextContentTransitionButtonEnabled];

  playerViewController3 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  playbackControlsController2 = [playerViewController3 playbackControlsController];
  if (effectiveUserInterfaceLayoutDirection)
  {
    isStartPreviousContentTransitionButtonEnabled = [(AVNewsWidgetPlayerBehaviorContext *)self isStartPreviousContentTransitionButtonEnabled];
  }

  else
  {
    isStartPreviousContentTransitionButtonEnabled = [(AVNewsWidgetPlayerBehaviorContext *)self isStartNextContentTransitionButtonEnabled];
  }

  [playbackControlsController2 setStartRightwardContentTransitionButtonEnabled:isStartPreviousContentTransitionButtonEnabled];

  if ([(AVNewsWidgetPlayerBehaviorContext *)self isStartNextContentTransitionButtonEnabled]|| [(AVNewsWidgetPlayerBehaviorContext *)self isStartPreviousContentTransitionButtonEnabled])
  {
    objc_initWeak(&location, self);
    playerViewController4 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    playbackControlsController3 = [playerViewController4 playbackControlsController];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __88__AVNewsWidgetPlayerBehaviorContext_updateStartLeftRightContentTransitionButtonsEnabled__block_invoke;
    v16[3] = &unk_1E7209618;
    objc_copyWeak(&v17, &location);
    [playbackControlsController3 setContentTransitionAction:v16];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    playerViewController5 = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
    playbackControlsController4 = [playerViewController5 playbackControlsController];
    [playbackControlsController4 setContentTransitionAction:0];
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

- (void)setStartPreviousContentTransitionButtonEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v13 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    v7 = 136315650;
    v8 = "[AVNewsWidgetPlayerBehaviorContext setStartPreviousContentTransitionButtonEnabled:]";
    v10 = "startPreviousContentTransitionButtonEnabled";
    v9 = 2080;
    if (enabledCopy)
    {
      v6 = "YES";
    }

    v11 = 2080;
    v12 = v6;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
  }

  self->_startPreviousContentTransitionButtonEnabled = enabledCopy;
  [(AVNewsWidgetPlayerBehaviorContext *)self updateStartLeftRightContentTransitionButtonsEnabled];
}

- (void)setStartNextContentTransitionButtonEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v13 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    v7 = 136315650;
    v8 = "[AVNewsWidgetPlayerBehaviorContext setStartNextContentTransitionButtonEnabled:]";
    v10 = "startNextContentTransitionButtonEnabled";
    v9 = 2080;
    if (enabledCopy)
    {
      v6 = "YES";
    }

    v11 = 2080;
    v12 = v6;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
  }

  self->_startNextContentTransitionButtonEnabled = enabledCopy;
  [(AVNewsWidgetPlayerBehaviorContext *)self updateStartLeftRightContentTransitionButtonsEnabled];
}

- (BOOL)isContentTransitionInteractive
{
  contentTransitionView = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitionView];
  isTransitionInteractive = [contentTransitionView isTransitionInteractive];

  return isTransitionInteractive;
}

- (int64_t)activeContentTransitionType
{
  contentTransitionView = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitionView];
  transitionState = [contentTransitionView transitionState];

  if ((transitionState - 3) > 4)
  {
    return 0;
  }

  contentTransitionView2 = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitionView];
  v6 = -[AVNewsWidgetPlayerBehaviorContext contentTransitionTypeForTransitionDirection:](self, "contentTransitionTypeForTransitionDirection:", [contentTransitionView2 transitionDirection]);

  return v6;
}

- (UIView)contentTransitioningOverlayView
{
  contentTransitionView = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitionView];
  incomingContentView = [contentTransitionView incomingContentView];
  contentOverlayView = [incomingContentView contentOverlayView];

  return contentOverlayView;
}

- (int64_t)_transitionDirectionForContentTransitionType:(int64_t)type
{
  playerViewController = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  view = [playerViewController view];
  effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];

  v7 = 2;
  if (effectiveUserInterfaceLayoutDirection != 1)
  {
    v7 = 3;
  }

  v8 = 2;
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v8 = 3;
  }

  if (type != 1)
  {
    v8 = 0;
  }

  if (type == 2)
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

- (void)startContentTransition:(int64_t)transition
{
  contentTransitionView = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitionView];
  [contentTransitionView performTransition:{-[AVNewsWidgetPlayerBehaviorContext _transitionDirectionForContentTransitionType:](self, "_transitionDirectionForContentTransitionType:", transition)}];
}

- (void)setVideoGravityForTransitioningContent:(id)content
{
  v15 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[AVNewsWidgetPlayerBehaviorContext setVideoGravityForTransitioningContent:]";
    v13 = 2112;
    v14 = contentCopy;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v11, 0x16u);
  }

  contentTransitionView = [(AVNewsWidgetPlayerBehaviorContext *)self contentTransitionView];
  incomingContentView = [contentTransitionView incomingContentView];
  playerLayerView = [incomingContentView playerLayerView];
  [playerLayerView setVideoGravity:AVVideoGravityFromString(contentCopy)];

  playerViewController = [(AVNewsWidgetPlayerBehaviorContext *)self playerViewController];
  contentView = [playerViewController contentView];
  [contentView setNeedsLayout];
}

- (AVNewsWidgetPlayerBehaviorContext)initWithAVKitOwner:(id)owner
{
  v15 = *MEMORY[0x1E69E9840];
  ownerCopy = owner;
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

    objc_storeWeak(&v5->_playerViewController, ownerCopy);
    *&v5->_startNextContentTransitionButtonEnabled = 257;
  }

  return v5;
}

@end