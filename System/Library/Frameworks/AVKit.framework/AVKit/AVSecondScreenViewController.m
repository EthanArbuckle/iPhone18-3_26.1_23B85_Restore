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
- (void)setContentView:(id)a3;
- (void)setDebugText:(id)a3;
- (void)setInitialScreenBoundsHint:(CGRect)a3;
- (void)setPlayingOnSecondScreen:(BOOL)a3;
- (void)setSourcePlayerLayer:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
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
  v3 = [(AVSecondScreenViewController *)self playerLayerView];
  v4 = [(AVSecondScreenViewController *)self view];
  [v4 bounds];
  [v3 setFrame:?];

  v5 = [(AVSecondScreenViewController *)self contentView];
  v6 = [(AVSecondScreenViewController *)self view];
  [v6 bounds];
  [v5 setFrame:?];

  debugLabel = self->_debugLabel;
  v8 = MEMORY[0x1E69DB878];
  v9 = [(AVSecondScreenViewController *)self view];
  [v9 frame];
  v11 = [v8 monospacedDigitSystemFontOfSize:v10 * 0.025 weight:*MEMORY[0x1E69DB960]];
  [(UILabel *)debugLabel setFont:v11];

  v12 = [(AVSecondScreenViewController *)self debugLabel];
  [v12 sizeToFit];

  v13 = [(AVSecondScreenViewController *)self debugLabel];
  [v13 frame];
  v15 = v14;

  v16 = [(AVSecondScreenViewController *)self view];
  [v16 frame];
  v18 = v17 + -40.0;

  v19 = [(AVSecondScreenViewController *)self view];
  [v19 frame];
  v21 = v20 + -20.0;
  v22 = [(AVSecondScreenViewController *)self debugLabel];
  [v22 frame];
  v24 = v21 - v23;
  v25 = 20.0;
  if (v24 >= 20.0)
  {
    v26 = [(AVSecondScreenViewController *)self view];
    [v26 frame];
    v28 = v27 + -20.0;
    v29 = [(AVSecondScreenViewController *)self debugLabel];
    [v29 frame];
    v25 = v28 - v30;
  }

  v31 = [(AVSecondScreenViewController *)self debugLabel];
  [v31 setFrame:{20.0, v25, v18, v15}];

  v32 = [(AVSecondScreenViewController *)self debugLabel];

  if (v32)
  {
    v34 = [(AVSecondScreenViewController *)self view];
    v33 = [(AVSecondScreenViewController *)self debugLabel];
    [v34 bringSubviewToFront:v33];
  }
}

- (void)_updateContentViewIfNeeded
{
  if ([(AVSecondScreenViewController *)self isPlayingOnSecondScreen])
  {
    [(AVSecondScreenViewController *)self loadViewIfNeeded];
    v3 = [(AVSecondScreenViewController *)self sourcePlayerLayer];

    if (!v3)
    {
      v4 = [(AVSecondScreenViewController *)self playerLayerView];
      [v4 stopShowingContentFromActiveSourcePlayerLayer];
    }

    v5 = [(AVSecondScreenViewController *)self contentView];
    if (v5 && (v6 = v5, [(AVSecondScreenViewController *)self sourcePlayerLayer], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
    {
      v21 = [(AVSecondScreenViewController *)self playerLayerView];
      v22 = [(AVSecondScreenViewController *)self view];
      v23 = [v21 isDescendantOfView:v22];

      if (v23)
      {
        v24 = [(AVSecondScreenViewController *)self playerLayerView];
        [v24 removeFromSuperview];
      }

      v11 = [(AVSecondScreenViewController *)self contentView];
      v12 = [(AVSecondScreenViewController *)self view];
      if (![v11 isDescendantOfView:v12])
      {
        v25 = [(AVSecondScreenViewController *)self view];
        v26 = [v25 window];
        v27 = [v26 windowScene];
        v28 = [v27 avkit_isForeground];

        if (v28)
        {
          v29 = [MEMORY[0x1E696AD88] defaultCenter];
          [v29 removeObserver:self name:*MEMORY[0x1E69DE338] object:0];

          [MEMORY[0x1E6979518] begin];
          [MEMORY[0x1E6979518] setDisableActions:1];
          v30 = [(AVSecondScreenViewController *)self view];
          v31 = [(AVSecondScreenViewController *)self contentView];
          [v30 insertSubview:v31 atIndex:0];

          v32 = [(AVSecondScreenViewController *)self contentView];
          v33 = [(AVSecondScreenViewController *)self view];
          [v33 bounds];
          [v32 setFrame:?];

          v34 = [(AVSecondScreenViewController *)self contentView];
          [v34 setNeedsLayout];

          v35 = [(AVSecondScreenViewController *)self contentView];
          [v35 layoutIfNeeded];

          [MEMORY[0x1E6979518] commit];
        }

        goto LABEL_22;
      }
    }

    else
    {
      v8 = [(AVSecondScreenViewController *)self sourcePlayerLayer];
      if (!v8 || (v9 = v8, [(AVSecondScreenViewController *)self contentView], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
      {
LABEL_22:

        [(AVSecondScreenViewController *)self _updateLayout];
        return;
      }

      [(AVSecondScreenViewController *)self loadPlayerLayerViewIfNeeded];
      v11 = [(AVSecondScreenViewController *)self playerLayerView];
      v12 = [(AVSecondScreenViewController *)self sourcePlayerLayer];
      [v11 startShowingContentFromSourcePlayerLayer:v12];
    }

    goto LABEL_22;
  }

  v13 = [(AVSecondScreenViewController *)self contentView];
  v14 = [(AVSecondScreenViewController *)self viewIfLoaded];
  v15 = [v13 isDescendantOfView:v14];

  if (v15)
  {
    v36 = [(AVSecondScreenViewController *)self contentView];
    [v36 removeFromSuperview];
  }

  else
  {
    v16 = [(AVSecondScreenViewController *)self sourcePlayerLayer];
    if (!v16)
    {
      return;
    }

    v17 = v16;
    v18 = [(AVSecondScreenViewController *)self playerLayerView];
    v19 = [(AVSecondScreenViewController *)self viewIfLoaded];
    v20 = [v18 isDescendantOfView:v19];

    if (!v20)
    {
      return;
    }

    v36 = [(AVSecondScreenViewController *)self playerLayerView];
    [v36 stopShowingContentFromActiveSourcePlayerLayer];
  }
}

- (void)setDebugText:(id)a3
{
  v7 = a3;
  v4 = [(AVSecondScreenViewController *)self debugText];
  v5 = [v7 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [(AVSecondScreenViewController *)self debugLabel];
    [v6 setText:v7];

    [(AVSecondScreenViewController *)self _updateLayout];
  }
}

- (id)debugText
{
  [(AVSecondScreenViewController *)self loadViewIfNeeded];
  v3 = [(AVSecondScreenViewController *)self debugLabel];
  v4 = [v3 text];

  return v4;
}

- (void)viewDidAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = AVSecondScreenViewController;
  [(AVSecondScreenViewController *)&v10 viewDidAppear:a3];
  [(AVSecondScreenViewController *)self _updateContentViewIfNeeded];
  [(AVSecondScreenViewController *)self _updateLayout];
  v4 = [(AVSecondScreenViewController *)self contentView];
  if (v4)
  {
    v5 = v4;
    v6 = [(AVSecondScreenViewController *)self contentView];
    v7 = [(AVSecondScreenViewController *)self view];
    v8 = [v6 isDescendantOfView:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      [v9 addObserver:self selector:sel__updateContentViewIfNeeded name:*MEMORY[0x1E69DE338] object:0];
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
    v6 = [MEMORY[0x1E69DC888] systemYellowColor];
    [(UILabel *)v5 setTextColor:v6];

    v7 = self->_debugLabel;
    v8 = MEMORY[0x1E69DB878];
    v9 = [(AVSecondScreenViewController *)self view];
    [v9 frame];
    v11 = [v8 monospacedDigitSystemFontOfSize:v10 * 0.025 weight:*MEMORY[0x1E69DB960]];
    [(UILabel *)v7 setFont:v11];

    v12 = [(AVSecondScreenViewController *)self view];
    [v12 addSubview:self->_debugLabel];
  }
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  [(AVSecondScreenViewController *)self initialScreenBoundsHint];
  v4 = [v3 initWithFrame:?];
  [(AVSecondScreenViewController *)self setView:v4];

  v5 = [(AVSecondScreenViewController *)self view];
  [v5 setAutoresizingMask:18];
}

- (void)setInitialScreenBoundsHint:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_initialScreenBoundsHint = &self->_initialScreenBoundsHint;
  if (CGRectIsInfinite(a3) || (v9.origin.x = x, v9.origin.y = y, v9.size.width = width, v9.size.height = height, CGRectIsNull(v9)))
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
  v2 = [(AVSecondScreenViewController *)self playerLayerView];
  v3 = [v2 layer];
  [v3 videoRect];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)setSourcePlayerLayer:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sourcePlayerLayer);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_sourcePlayerLayer, obj);
    [(AVSecondScreenViewController *)self _updateContentViewIfNeeded];
    v5 = obj;
  }
}

- (void)setPlayingOnSecondScreen:(BOOL)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_playingOnSecondScreen != a3)
  {
    v3 = a3;
    self->_playingOnSecondScreen = a3;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVSecondScreenViewController setPlayingOnSecondScreen:]";
      v10 = "playingOnSecondScreen";
      v9 = 2080;
      if (v3)
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

- (void)setContentView:(id)a3
{
  v10 = a3;
  v5 = [(AVSecondScreenViewController *)self contentView];

  if (v5 != v10)
  {
    v6 = [(AVSecondScreenViewController *)self contentView];
    v7 = [(AVSecondScreenViewController *)self viewIfLoaded];
    v8 = [v6 isDescendantOfView:v7];

    if (v8)
    {
      v9 = [(AVSecondScreenViewController *)self contentView];
      [v9 removeFromSuperview];
    }

    objc_storeStrong(&self->_contentView, a3);
    [(AVSecondScreenViewController *)self _updateContentViewIfNeeded];
  }
}

- (void)loadPlayerLayerViewIfNeeded
{
  if (!self->_playerLayerView)
  {
    v3 = [AVSecondScreenPlayerLayerView alloc];
    v4 = [(AVSecondScreenViewController *)self view];
    [v4 bounds];
    v5 = [(AVSecondScreenPlayerLayerView *)v3 initWithFrame:?];
    playerLayerView = self->_playerLayerView;
    self->_playerLayerView = v5;

    v7 = [(AVSecondScreenViewController *)self view];
    [v7 insertSubview:self->_playerLayerView atIndex:0];
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