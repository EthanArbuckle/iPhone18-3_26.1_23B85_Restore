@interface AVSeymourBehaviorContext
- (AVPlayerViewController)playerViewController;
- (AVSeymourBehaviorContext)initWithAVKitOwner:(id)a3;
- (NSEdgeInsets)legibleContentInsets;
- (id)behavior;
- (void)_updateLegibleContentInsets;
- (void)didRemoveBehavior:(id)a3;
- (void)hidePlaybackControlsImmediately;
- (void)seymourBehaviorContextDidReceiveButtonTap:(id)a3;
- (void)viewDidLoad;
@end

@implementation AVSeymourBehaviorContext

- (NSEdgeInsets)legibleContentInsets
{
  top = self->_legibleContentInsets.top;
  left = self->_legibleContentInsets.left;
  bottom = self->_legibleContentInsets.bottom;
  right = self->_legibleContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)behavior
{
  WeakRetained = objc_loadWeakRetained(&self->_behavior);

  return WeakRetained;
}

- (AVPlayerViewController)playerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_playerViewController);

  return WeakRetained;
}

- (void)seymourBehaviorContextDidReceiveButtonTap:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(AVSeymourBehaviorContext *)self behavior];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__AVSeymourBehaviorContext_seymourBehaviorContextDidReceiveButtonTap___block_invoke;
  v6[3] = &unk_1E7209EA8;
  objc_copyWeak(&v7, &location);
  [v5 seymourBehaviorContext:self didRecieveDoneButtonTapWithDismissalBlock:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __70__AVSeymourBehaviorContext_seymourBehaviorContextDidReceiveButtonTap___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained playerViewController];
    [v3 doneButtonTapped:0];
  }

  else
  {
    v3 = _AVLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "AVSeymourBehaviorContext is no longer around, playerViewController will not be dismissed.", v4, 2u);
    }
  }
}

- (void)hidePlaybackControlsImmediately
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[AVSeymourBehaviorContext hidePlaybackControlsImmediately]";
    v11 = 1024;
    v12 = 165;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %d", &v9, 0x12u);
  }

  v4 = [(AVSeymourBehaviorContext *)self playerViewController];
  v5 = [v4 catalystPlaybackControlsController];

  v6 = [(AVSeymourBehaviorContext *)self playerViewController];
  v7 = v6;
  if (v5)
  {
    [v6 catalystPlaybackControlsController];
  }

  else
  {
    [v6 chromePlaybackControlsController];
  }
  v8 = ;
  [v8 flashPlaybackControlsWithDuration:0.0];
}

- (void)_updateLegibleContentInsets
{
  v3 = [(AVSeymourBehaviorContext *)self playerViewController];
  v4 = [v3 contentView];
  v5 = [v4 playbackContentContainerView];
  v6 = [v5 activeContentView];
  v7 = [v6 playerLayerView];
  v8 = [v7 playerLayer];

  [(AVSeymourBehaviorContext *)self legibleContentInsets];
  [v8 setLegibleContentInsets:?];
}

- (void)viewDidLoad
{
  v19 = [(AVSeymourBehaviorContext *)self playerViewController];
  v3 = [v19 contentView];
  v4 = [v19 catalystPlaybackControlsController];

  if (v4)
  {
    v5 = [v19 catalystPlaybackControlsController];
    [v5 setShowsVideoZoomControl:0];

    v6 = [v19 catalystPlaybackControlsController];
    [v6 setWantsExternalPlaybackButtonShown:0];

    v7 = [v19 controlsViewController];
    v8 = [v7 controlsViewControllerIfCatalystGlass];
    v9 = [v8 playbackControlsView];

    v10 = [v9 doneButton];
    [v10 removeTarget:0 action:sel_doneButtonTapped_ forControlEvents:64];
  }

  else
  {
    v11 = [v19 chromePlaybackControlsController];
    [v11 setShowsVideoGravityButton:0];

    v12 = [v19 chromePlaybackControlsController];
    [v12 setWantsExternalPlaybackButtonShown:0];

    v13 = [v3 chromePlaybackControlsView];
    v14 = [v13 doneButton];
    [v14 removeTarget:0 action:sel_doneButtonTapped_ forControlEvents:64];

    v9 = [v3 chromePlaybackControlsView];
  }

  v15 = [v9 doneButton];
  [v15 addTarget:self action:sel_seymourBehaviorContextDidReceiveButtonTap_ forControlEvents:64];

  v16 = [v19 controlsViewController];
  v17 = [(AVSeymourBehaviorContext *)self playerViewController];
  [v16 removeAction:sel_doneButtonTapped_ withTarget:v17 forEvent:@"AVControlsDoneButtonPressedEvent"];

  v18 = [v19 controlsViewController];
  [v18 addAction:sel_seymourBehaviorContextDidReceiveButtonTap_ withTarget:self forEvent:@"AVControlsDoneButtonPressedEvent"];

  [(AVSeymourBehaviorContext *)self _updateLegibleContentInsets];
}

- (AVSeymourBehaviorContext)initWithAVKitOwner:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AVSeymourBehaviorContext;
  v5 = [(AVSeymourBehaviorContext *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_playerViewController, v4);
    [v4 setSpeeds:MEMORY[0x1E695E0F0]];
  }

  return v6;
}

- (void)didRemoveBehavior:(id)a3
{
  v19 = [(AVSeymourBehaviorContext *)self playerViewController];
  v4 = [v19 contentView];
  v5 = [v19 catalystPlaybackControlsController];

  if (v5)
  {
    v6 = [v19 controlsViewController];
    v7 = [v6 controlsViewControllerIfCatalystGlass];
    v8 = [v7 playbackControlsView];

    v9 = [v8 doneButton];
    [v9 removeTarget:self action:sel_seymourBehaviorContextDidReceiveButtonTap_ forControlEvents:64];
  }

  else
  {
    v10 = [v4 chromePlaybackControlsView];
    v11 = [v10 doneButton];
    [v11 removeTarget:self action:sel_seymourBehaviorContextDidReceiveButtonTap_ forControlEvents:64];

    v8 = [v4 chromePlaybackControlsView];
  }

  v12 = [v8 doneButton];
  v13 = [(AVSeymourBehaviorContext *)self playerViewController];
  [v12 addTarget:v13 action:sel_doneButtonTapped_ forControlEvents:64];

  v14 = [(AVSeymourBehaviorContext *)self playerViewController];
  v15 = [v14 controlsViewController];
  [v15 removeAction:sel_seymourBehaviorContextDidReceiveButtonTap_ withTarget:self forEvent:@"AVControlsDoneButtonPressedEvent"];

  v16 = [(AVSeymourBehaviorContext *)self playerViewController];
  v17 = [v16 controlsViewController];
  v18 = [(AVSeymourBehaviorContext *)self playerViewController];
  [v17 addAction:sel_doneButtonTapped_ withTarget:v18 forEvent:@"AVControlsDoneButtonPressedEvent"];
}

@end