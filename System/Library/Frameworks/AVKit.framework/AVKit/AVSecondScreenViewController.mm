@interface AVSecondScreenViewController
- (AVPlayerLayer)sourcePlayerLayer;
- (CGRect)initialScreenBoundsHint;
- (CGSize)videoDisplaySize;
- (id)debugText;
- (void)_updateContentViewIfNeeded;
- (void)_updateLayout;
- (void)dealloc;
- (void)loadPlayerLayerViewIfNeeded;
- (void)loadView;
- (void)setContentView:(id)view;
- (void)setDebugText:(id)text;
- (void)setInitialScreenBoundsHint:(CGRect)hint;
- (void)setPlayingOnSecondScreen:(BOOL)screen;
- (void)setSourcePlayerLayer:(id)layer;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation AVSecondScreenViewController

- (AVPlayerLayer)sourcePlayerLayer
{
  WeakRetained = objc_loadWeakRetained(&self->_sourcePlayerLayer);

  return WeakRetained;
}

- (CGRect)initialScreenBoundsHint
{
  x = self->_initialScreenBoundsHint.origin.x;
  y = self->_initialScreenBoundsHint.origin.y;
  width = self->_initialScreenBoundsHint.size.width;
  height = self->_initialScreenBoundsHint.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_updateLayout
{
  playerLayerView = [(AVSecondScreenViewController *)self playerLayerView];
  view = [(AVSecondScreenViewController *)self view];
  [view bounds];
  [playerLayerView setFrame:?];

  contentView = [(AVSecondScreenViewController *)self contentView];
  view2 = [(AVSecondScreenViewController *)self view];
  [view2 bounds];
  [contentView setFrame:?];

  debugLabel = self->_debugLabel;
  v8 = MEMORY[0x1E69DB878];
  view3 = [(AVSecondScreenViewController *)self view];
  [view3 frame];
  v11 = [v8 monospacedDigitSystemFontOfSize:v10 * 0.025 weight:*MEMORY[0x1E69DB960]];
  [(UILabel *)debugLabel setFont:v11];

  debugLabel = [(AVSecondScreenViewController *)self debugLabel];
  [debugLabel sizeToFit];

  debugLabel2 = [(AVSecondScreenViewController *)self debugLabel];
  [debugLabel2 frame];
  v15 = v14;

  view4 = [(AVSecondScreenViewController *)self view];
  [view4 frame];
  v18 = v17 + -40.0;

  view5 = [(AVSecondScreenViewController *)self view];
  [view5 frame];
  v21 = v20 + -20.0;
  debugLabel3 = [(AVSecondScreenViewController *)self debugLabel];
  [debugLabel3 frame];
  v24 = v21 - v23;
  v25 = 20.0;
  if (v24 >= 20.0)
  {
    view6 = [(AVSecondScreenViewController *)self view];
    [view6 frame];
    v28 = v27 + -20.0;
    debugLabel4 = [(AVSecondScreenViewController *)self debugLabel];
    [debugLabel4 frame];
    v25 = v28 - v30;
  }

  debugLabel5 = [(AVSecondScreenViewController *)self debugLabel];
  [debugLabel5 setFrame:{20.0, v25, v18, v15}];

  debugLabel6 = [(AVSecondScreenViewController *)self debugLabel];

  if (debugLabel6)
  {
    view7 = [(AVSecondScreenViewController *)self view];
    debugLabel7 = [(AVSecondScreenViewController *)self debugLabel];
    [view7 bringSubviewToFront:debugLabel7];
  }
}

- (void)_updateContentViewIfNeeded
{
  if ([(AVSecondScreenViewController *)self isPlayingOnSecondScreen])
  {
    [(AVSecondScreenViewController *)self loadViewIfNeeded];
    sourcePlayerLayer = [(AVSecondScreenViewController *)self sourcePlayerLayer];

    if (!sourcePlayerLayer)
    {
      playerLayerView = [(AVSecondScreenViewController *)self playerLayerView];
      [playerLayerView stopShowingContentFromActiveSourcePlayerLayer];
    }

    contentView = [(AVSecondScreenViewController *)self contentView];
    if (contentView && (v6 = contentView, [(AVSecondScreenViewController *)self sourcePlayerLayer], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
    {
      playerLayerView2 = [(AVSecondScreenViewController *)self playerLayerView];
      view = [(AVSecondScreenViewController *)self view];
      v23 = [playerLayerView2 isDescendantOfView:view];

      if (v23)
      {
        playerLayerView3 = [(AVSecondScreenViewController *)self playerLayerView];
        [playerLayerView3 removeFromSuperview];
      }

      contentView2 = [(AVSecondScreenViewController *)self contentView];
      view2 = [(AVSecondScreenViewController *)self view];
      if (![contentView2 isDescendantOfView:view2])
      {
        view3 = [(AVSecondScreenViewController *)self view];
        window = [view3 window];
        windowScene = [window windowScene];
        avkit_isForeground = [windowScene avkit_isForeground];

        if (avkit_isForeground)
        {
          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE338] object:0];

          [MEMORY[0x1E6979518] begin];
          [MEMORY[0x1E6979518] setDisableActions:1];
          view4 = [(AVSecondScreenViewController *)self view];
          contentView3 = [(AVSecondScreenViewController *)self contentView];
          [view4 insertSubview:contentView3 atIndex:0];

          contentView4 = [(AVSecondScreenViewController *)self contentView];
          view5 = [(AVSecondScreenViewController *)self view];
          [view5 bounds];
          [contentView4 setFrame:?];

          contentView5 = [(AVSecondScreenViewController *)self contentView];
          [contentView5 setNeedsLayout];

          contentView6 = [(AVSecondScreenViewController *)self contentView];
          [contentView6 layoutIfNeeded];

          [MEMORY[0x1E6979518] commit];
        }

        goto LABEL_22;
      }
    }

    else
    {
      sourcePlayerLayer2 = [(AVSecondScreenViewController *)self sourcePlayerLayer];
      if (!sourcePlayerLayer2 || (v9 = sourcePlayerLayer2, [(AVSecondScreenViewController *)self contentView], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
      {
LABEL_22:

        [(AVSecondScreenViewController *)self _updateLayout];
        return;
      }

      [(AVSecondScreenViewController *)self loadPlayerLayerViewIfNeeded];
      contentView2 = [(AVSecondScreenViewController *)self playerLayerView];
      view2 = [(AVSecondScreenViewController *)self sourcePlayerLayer];
      [contentView2 startShowingContentFromSourcePlayerLayer:view2];
    }

    goto LABEL_22;
  }

  contentView7 = [(AVSecondScreenViewController *)self contentView];
  viewIfLoaded = [(AVSecondScreenViewController *)self viewIfLoaded];
  v15 = [contentView7 isDescendantOfView:viewIfLoaded];

  if (v15)
  {
    contentView8 = [(AVSecondScreenViewController *)self contentView];
    [contentView8 removeFromSuperview];
  }

  else
  {
    sourcePlayerLayer3 = [(AVSecondScreenViewController *)self sourcePlayerLayer];
    if (!sourcePlayerLayer3)
    {
      return;
    }

    v17 = sourcePlayerLayer3;
    playerLayerView4 = [(AVSecondScreenViewController *)self playerLayerView];
    viewIfLoaded2 = [(AVSecondScreenViewController *)self viewIfLoaded];
    v20 = [playerLayerView4 isDescendantOfView:viewIfLoaded2];

    if (!v20)
    {
      return;
    }

    contentView8 = [(AVSecondScreenViewController *)self playerLayerView];
    [contentView8 stopShowingContentFromActiveSourcePlayerLayer];
  }
}

- (void)setDebugText:(id)text
{
  textCopy = text;
  debugText = [(AVSecondScreenViewController *)self debugText];
  v5 = [textCopy isEqualToString:debugText];

  if ((v5 & 1) == 0)
  {
    debugLabel = [(AVSecondScreenViewController *)self debugLabel];
    [debugLabel setText:textCopy];

    [(AVSecondScreenViewController *)self _updateLayout];
  }
}

- (id)debugText
{
  [(AVSecondScreenViewController *)self loadViewIfNeeded];
  debugLabel = [(AVSecondScreenViewController *)self debugLabel];
  text = [debugLabel text];

  return text;
}

- (void)viewDidAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = AVSecondScreenViewController;
  [(AVSecondScreenViewController *)&v10 viewDidAppear:appear];
  [(AVSecondScreenViewController *)self _updateContentViewIfNeeded];
  [(AVSecondScreenViewController *)self _updateLayout];
  contentView = [(AVSecondScreenViewController *)self contentView];
  if (contentView)
  {
    v5 = contentView;
    contentView2 = [(AVSecondScreenViewController *)self contentView];
    view = [(AVSecondScreenViewController *)self view];
    v8 = [contentView2 isDescendantOfView:view];

    if ((v8 & 1) == 0)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel__updateContentViewIfNeeded name:*MEMORY[0x1E69DE338] object:0];
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = AVSecondScreenViewController;
  [(AVSecondScreenViewController *)&v3 viewDidLayoutSubviews];
  [(AVSecondScreenViewController *)self _updateLayout];
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = AVSecondScreenViewController;
  [(AVSecondScreenViewController *)&v13 viewDidLoad];
  [(AVSecondScreenViewController *)self _updateContentViewIfNeeded];
  if (AVSecondScreenDebugHUDEnabled_onceToken != -1)
  {
    dispatch_once(&AVSecondScreenDebugHUDEnabled_onceToken, &__block_literal_global_131);
  }

  if (AVSecondScreenDebugHUDEnabled__Enabled == 1)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    debugLabel = self->_debugLabel;
    self->_debugLabel = v3;

    [(UILabel *)self->_debugLabel setTextAlignment:2];
    [(UILabel *)self->_debugLabel setNumberOfLines:0];
    v5 = self->_debugLabel;
    systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
    [(UILabel *)v5 setTextColor:systemYellowColor];

    v7 = self->_debugLabel;
    v8 = MEMORY[0x1E69DB878];
    view = [(AVSecondScreenViewController *)self view];
    [view frame];
    v11 = [v8 monospacedDigitSystemFontOfSize:v10 * 0.025 weight:*MEMORY[0x1E69DB960]];
    [(UILabel *)v7 setFont:v11];

    view2 = [(AVSecondScreenViewController *)self view];
    [view2 addSubview:self->_debugLabel];
  }
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  [(AVSecondScreenViewController *)self initialScreenBoundsHint];
  v4 = [v3 initWithFrame:?];
  [(AVSecondScreenViewController *)self setView:v4];

  view = [(AVSecondScreenViewController *)self view];
  [view setAutoresizingMask:18];
}

- (void)setInitialScreenBoundsHint:(CGRect)hint
{
  height = hint.size.height;
  width = hint.size.width;
  y = hint.origin.y;
  x = hint.origin.x;
  p_initialScreenBoundsHint = &self->_initialScreenBoundsHint;
  if (CGRectIsInfinite(hint) || (v9.origin.x = x, v9.origin.y = y, v9.size.width = width, v9.size.height = height, CGRectIsNull(v9)))
  {
    v8 = *(MEMORY[0x1E695F058] + 16);
    p_initialScreenBoundsHint->origin = *MEMORY[0x1E695F058];
    p_initialScreenBoundsHint->size = v8;
  }

  else
  {
    p_initialScreenBoundsHint->origin.x = x;
    p_initialScreenBoundsHint->origin.y = y;
    p_initialScreenBoundsHint->size.width = width;
    p_initialScreenBoundsHint->size.height = height;
  }
}

- (CGSize)videoDisplaySize
{
  playerLayerView = [(AVSecondScreenViewController *)self playerLayerView];
  layer = [playerLayerView layer];
  [layer videoRect];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)setSourcePlayerLayer:(id)layer
{
  obj = layer;
  WeakRetained = objc_loadWeakRetained(&self->_sourcePlayerLayer);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_sourcePlayerLayer, obj);
    [(AVSecondScreenViewController *)self _updateContentViewIfNeeded];
    v5 = obj;
  }
}

- (void)setPlayingOnSecondScreen:(BOOL)screen
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_playingOnSecondScreen != screen)
  {
    screenCopy = screen;
    self->_playingOnSecondScreen = screen;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVSecondScreenViewController setPlayingOnSecondScreen:]";
      v10 = "playingOnSecondScreen";
      v9 = 2080;
      if (screenCopy)
      {
        v6 = "YES";
      }

      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
    }

    [(AVSecondScreenViewController *)self _updateContentViewIfNeeded];
  }
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  contentView = [(AVSecondScreenViewController *)self contentView];

  if (contentView != viewCopy)
  {
    contentView2 = [(AVSecondScreenViewController *)self contentView];
    viewIfLoaded = [(AVSecondScreenViewController *)self viewIfLoaded];
    v8 = [contentView2 isDescendantOfView:viewIfLoaded];

    if (v8)
    {
      contentView3 = [(AVSecondScreenViewController *)self contentView];
      [contentView3 removeFromSuperview];
    }

    objc_storeStrong(&self->_contentView, view);
    [(AVSecondScreenViewController *)self _updateContentViewIfNeeded];
  }
}

- (void)loadPlayerLayerViewIfNeeded
{
  if (!self->_playerLayerView)
  {
    v3 = [AVSecondScreenPlayerLayerView alloc];
    view = [(AVSecondScreenViewController *)self view];
    [view bounds];
    v5 = [(AVSecondScreenPlayerLayerView *)v3 initWithFrame:?];
    playerLayerView = self->_playerLayerView;
    self->_playerLayerView = v5;

    view2 = [(AVSecondScreenViewController *)self view];
    [view2 insertSubview:self->_playerLayerView atIndex:0];
  }
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  [(AVSecondScreenViewController *)self setPlayingOnSecondScreen:0];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v6 = "[AVSecondScreenViewController dealloc]";
    v7 = 1024;
    v8 = 50;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %d", buf, 0x12u);
  }

  v4.receiver = self;
  v4.super_class = AVSecondScreenViewController;
  [(AVSecondScreenViewController *)&v4 dealloc];
}

@end