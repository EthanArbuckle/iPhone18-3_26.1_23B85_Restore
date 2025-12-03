@interface AVSeymourBehaviorContext
- (AVPlayerViewController)playerViewController;
- (AVSeymourBehaviorContext)initWithAVKitOwner:(id)owner;
- (NSEdgeInsets)legibleContentInsets;
- (id)behavior;
- (void)_updateLegibleContentInsets;
- (void)didRemoveBehavior:(id)behavior;
- (void)hidePlaybackControlsImmediately;
- (void)seymourBehaviorContextDidReceiveButtonTap:(id)tap;
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

- (void)seymourBehaviorContextDidReceiveButtonTap:(id)tap
{
  tapCopy = tap;
  objc_initWeak(&location, self);
  behavior = [(AVSeymourBehaviorContext *)self behavior];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__AVSeymourBehaviorContext_seymourBehaviorContextDidReceiveButtonTap___block_invoke;
  v6[3] = &unk_1E7209EA8;
  objc_copyWeak(&v7, &location);
  [behavior seymourBehaviorContext:self didRecieveDoneButtonTapWithDismissalBlock:v6];

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

  playerViewController = [(AVSeymourBehaviorContext *)self playerViewController];
  catalystPlaybackControlsController = [playerViewController catalystPlaybackControlsController];

  playerViewController2 = [(AVSeymourBehaviorContext *)self playerViewController];
  v7 = playerViewController2;
  if (catalystPlaybackControlsController)
  {
    [playerViewController2 catalystPlaybackControlsController];
  }

  else
  {
    [playerViewController2 chromePlaybackControlsController];
  }
  v8 = ;
  [v8 flashPlaybackControlsWithDuration:0.0];
}

- (void)_updateLegibleContentInsets
{
  playerViewController = [(AVSeymourBehaviorContext *)self playerViewController];
  contentView = [playerViewController contentView];
  playbackContentContainerView = [contentView playbackContentContainerView];
  activeContentView = [playbackContentContainerView activeContentView];
  playerLayerView = [activeContentView playerLayerView];
  playerLayer = [playerLayerView playerLayer];

  [(AVSeymourBehaviorContext *)self legibleContentInsets];
  [playerLayer setLegibleContentInsets:?];
}

- (void)viewDidLoad
{
  playerViewController = [(AVSeymourBehaviorContext *)self playerViewController];
  contentView = [playerViewController contentView];
  catalystPlaybackControlsController = [playerViewController catalystPlaybackControlsController];

  if (catalystPlaybackControlsController)
  {
    catalystPlaybackControlsController2 = [playerViewController catalystPlaybackControlsController];
    [catalystPlaybackControlsController2 setShowsVideoZoomControl:0];

    catalystPlaybackControlsController3 = [playerViewController catalystPlaybackControlsController];
    [catalystPlaybackControlsController3 setWantsExternalPlaybackButtonShown:0];

    controlsViewController = [playerViewController controlsViewController];
    controlsViewControllerIfCatalystGlass = [controlsViewController controlsViewControllerIfCatalystGlass];
    playbackControlsView = [controlsViewControllerIfCatalystGlass playbackControlsView];

    doneButton = [playbackControlsView doneButton];
    [doneButton removeTarget:0 action:sel_doneButtonTapped_ forControlEvents:64];
  }

  else
  {
    chromePlaybackControlsController = [playerViewController chromePlaybackControlsController];
    [chromePlaybackControlsController setShowsVideoGravityButton:0];

    chromePlaybackControlsController2 = [playerViewController chromePlaybackControlsController];
    [chromePlaybackControlsController2 setWantsExternalPlaybackButtonShown:0];

    chromePlaybackControlsView = [contentView chromePlaybackControlsView];
    doneButton2 = [chromePlaybackControlsView doneButton];
    [doneButton2 removeTarget:0 action:sel_doneButtonTapped_ forControlEvents:64];

    playbackControlsView = [contentView chromePlaybackControlsView];
  }

  doneButton3 = [playbackControlsView doneButton];
  [doneButton3 addTarget:self action:sel_seymourBehaviorContextDidReceiveButtonTap_ forControlEvents:64];

  controlsViewController2 = [playerViewController controlsViewController];
  playerViewController2 = [(AVSeymourBehaviorContext *)self playerViewController];
  [controlsViewController2 removeAction:sel_doneButtonTapped_ withTarget:playerViewController2 forEvent:@"AVControlsDoneButtonPressedEvent"];

  controlsViewController3 = [playerViewController controlsViewController];
  [controlsViewController3 addAction:sel_seymourBehaviorContextDidReceiveButtonTap_ withTarget:self forEvent:@"AVControlsDoneButtonPressedEvent"];

  [(AVSeymourBehaviorContext *)self _updateLegibleContentInsets];
}

- (AVSeymourBehaviorContext)initWithAVKitOwner:(id)owner
{
  ownerCopy = owner;
  v9.receiver = self;
  v9.super_class = AVSeymourBehaviorContext;
  v5 = [(AVSeymourBehaviorContext *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_playerViewController, ownerCopy);
    [ownerCopy setSpeeds:MEMORY[0x1E695E0F0]];
  }

  return v6;
}

- (void)didRemoveBehavior:(id)behavior
{
  playerViewController = [(AVSeymourBehaviorContext *)self playerViewController];
  contentView = [playerViewController contentView];
  catalystPlaybackControlsController = [playerViewController catalystPlaybackControlsController];

  if (catalystPlaybackControlsController)
  {
    controlsViewController = [playerViewController controlsViewController];
    controlsViewControllerIfCatalystGlass = [controlsViewController controlsViewControllerIfCatalystGlass];
    playbackControlsView = [controlsViewControllerIfCatalystGlass playbackControlsView];

    doneButton = [playbackControlsView doneButton];
    [doneButton removeTarget:self action:sel_seymourBehaviorContextDidReceiveButtonTap_ forControlEvents:64];
  }

  else
  {
    chromePlaybackControlsView = [contentView chromePlaybackControlsView];
    doneButton2 = [chromePlaybackControlsView doneButton];
    [doneButton2 removeTarget:self action:sel_seymourBehaviorContextDidReceiveButtonTap_ forControlEvents:64];

    playbackControlsView = [contentView chromePlaybackControlsView];
  }

  doneButton3 = [playbackControlsView doneButton];
  playerViewController2 = [(AVSeymourBehaviorContext *)self playerViewController];
  [doneButton3 addTarget:playerViewController2 action:sel_doneButtonTapped_ forControlEvents:64];

  playerViewController3 = [(AVSeymourBehaviorContext *)self playerViewController];
  controlsViewController2 = [playerViewController3 controlsViewController];
  [controlsViewController2 removeAction:sel_seymourBehaviorContextDidReceiveButtonTap_ withTarget:self forEvent:@"AVControlsDoneButtonPressedEvent"];

  playerViewController4 = [(AVSeymourBehaviorContext *)self playerViewController];
  controlsViewController3 = [playerViewController4 controlsViewController];
  playerViewController5 = [(AVSeymourBehaviorContext *)self playerViewController];
  [controlsViewController3 addAction:sel_doneButtonTapped_ withTarget:playerViewController5 forEvent:@"AVControlsDoneButtonPressedEvent"];
}

@end