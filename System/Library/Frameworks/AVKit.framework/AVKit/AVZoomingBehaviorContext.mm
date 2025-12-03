@interface AVZoomingBehaviorContext
- (AVPlaybackContentContainerView)activeContentView;
- (AVPlayerViewController)playerViewController;
- (AVZoomingBehavior)behavior;
- (AVZoomingBehaviorContext)initWithAVKitOwner:(id)owner;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (CGSize)contentAspectRatio;
- (id)makePlaybackContentContainerWithFrame:(CGRect)frame activeContentView:(id)view;
- (void)_handleDoubleTapGestureRecognizer:(id)recognizer;
- (void)_updateZoomingView;
- (void)dealloc;
- (void)didAddBehavior:(id)behavior;
- (void)didRemoveBehavior:(id)behavior;
- (void)setContentAspectRatio:(CGSize)ratio;
- (void)viewDidLoad;
@end

@implementation AVZoomingBehaviorContext

- (CGSize)contentAspectRatio
{
  width = self->_contentAspectRatio.width;
  height = self->_contentAspectRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

- (AVZoomingBehavior)behavior
{
  WeakRetained = objc_loadWeakRetained(&self->_behavior);

  return WeakRetained;
}

- (AVPlayerViewController)playerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_playerViewController);

  return WeakRetained;
}

- (void)_updateZoomingView
{
  [(AVZoomingBehaviorContext *)self contentAspectRatio];
  if (v4 == *MEMORY[0x1E695F060] && v3 == *(MEMORY[0x1E695F060] + 8))
  {
    playerViewController = [(AVZoomingBehaviorContext *)self playerViewController];
    playerController = [playerViewController playerController];
    [playerController contentDimensions];
    v7 = v12;
    v9 = v13;
  }

  else
  {
    [(AVZoomingBehaviorContext *)self contentAspectRatio];
    v7 = v6;
    v9 = v8;
  }

  if (v7 > 0.0 && v9 > 0.0)
  {
    contentZoomingView = [(AVZoomingBehaviorContext *)self contentZoomingView];
    [contentZoomingView setContentAspectRatio:{v7, v9}];
  }

  contentZoomingView2 = [(AVZoomingBehaviorContext *)self contentZoomingView];
  [contentZoomingView2 setZoomingEnabled:{-[AVZoomingBehaviorContext isZoomingEnabled](self, "isZoomingEnabled")}];

  doubleTapGestureRecognizer = [(AVZoomingBehaviorContext *)self doubleTapGestureRecognizer];
  [doubleTapGestureRecognizer setEnabled:1];

  contentZoomingView3 = [(AVZoomingBehaviorContext *)self contentZoomingView];
  playerViewController2 = [(AVZoomingBehaviorContext *)self playerViewController];
  [contentZoomingView3 setFullScreen:{objc_msgSend(playerViewController2, "isPresentedFullScreen")}];

  if ([(AVZoomingBehaviorContext *)self isZoomingEnabled])
  {
    playerViewController3 = [(AVZoomingBehaviorContext *)self playerViewController];
    isViewLoaded = [playerViewController3 isViewLoaded];

    if (isViewLoaded)
    {
      contentZoomingView4 = [(AVZoomingBehaviorContext *)self contentZoomingView];
      pinchGestureRecognizer = [contentZoomingView4 pinchGestureRecognizer];

      if (pinchGestureRecognizer)
      {
        contentZoomingView5 = [(AVZoomingBehaviorContext *)self contentZoomingView];
        pinchGestureRecognizer2 = [contentZoomingView5 pinchGestureRecognizer];
        view = [pinchGestureRecognizer2 view];
        playerViewController4 = [(AVZoomingBehaviorContext *)self playerViewController];
        contentView = [playerViewController4 contentView];

        if (view != contentView)
        {
          playerViewController5 = [(AVZoomingBehaviorContext *)self playerViewController];
          contentView2 = [playerViewController5 contentView];
          contentZoomingView6 = [(AVZoomingBehaviorContext *)self contentZoomingView];
          pinchGestureRecognizer3 = [contentZoomingView6 pinchGestureRecognizer];
          [contentView2 addGestureRecognizer:pinchGestureRecognizer3];

          playerViewController6 = [(AVZoomingBehaviorContext *)self playerViewController];
          contentView3 = [playerViewController6 contentView];
          contentZoomingView7 = [(AVZoomingBehaviorContext *)self contentZoomingView];
          panGestureRecognizer = [contentZoomingView7 panGestureRecognizer];
          [contentView3 addGestureRecognizer:panGestureRecognizer];
        }
      }

      v39 = +[AVKitGlobalSettings shared];
      if (![v39 playerGeneration])
      {
        doubleTapGestureRecognizer2 = [(AVZoomingBehaviorContext *)self doubleTapGestureRecognizer];

        if (doubleTapGestureRecognizer2)
        {
          return;
        }

        v39 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleDoubleTapGestureRecognizer_];
        playerViewController7 = [(AVZoomingBehaviorContext *)self playerViewController];
        contentView4 = [playerViewController7 contentView];
        [contentView4 addGestureRecognizer:v39];

        [v39 setNumberOfTapsRequired:2];
        [v39 setDelegate:self];
        [(AVZoomingBehaviorContext *)self setDoubleTapGestureRecognizer:v39];
      }
    }
  }
}

- (void)_handleDoubleTapGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  contentZoomingView = [(AVZoomingBehaviorContext *)self contentZoomingView];
  [recognizerCopy locationInView:contentZoomingView];
  v7 = v6;
  v9 = v8;

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__AVZoomingBehaviorContext__handleDoubleTapGestureRecognizer___block_invoke;
  v10[3] = &unk_1E7208ED8;
  v10[4] = self;
  v10[5] = v7;
  v10[6] = v9;
  [MEMORY[0x1E69DD250] animateWithDuration:327680 delay:v10 options:0 animations:0.3 completion:0.0];
}

void __62__AVZoomingBehaviorContext__handleDoubleTapGestureRecognizer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contentZoomingView];
  [v2 zoomToPoint:{*(a1 + 40), *(a1 + 48)}];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  doubleTapGestureRecognizer = [(AVZoomingBehaviorContext *)self doubleTapGestureRecognizer];

  return doubleTapGestureRecognizer == recognizerCopy;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  recognizerCopy = recognizer;
  view = [recognizerCopy view];
  view2 = [recognizerCopy view];

  [touchCopy locationInView:view2];
  v11 = v10;
  v13 = v12;

  v14 = [view hitTest:0 withEvent:{v11, v13}];

  playerViewController = [(AVZoomingBehaviorContext *)self playerViewController];
  contentView = [playerViewController contentView];
  LOBYTE(view) = [contentView isViewDescendantOfPlaybackControlsSubview:v14];

  return view ^ 1;
}

- (void)didRemoveBehavior:(id)behavior
{
  contentZoomingView = [(AVZoomingBehaviorContext *)self contentZoomingView];
  playerViewController = [(AVZoomingBehaviorContext *)self playerViewController];
  contentView = [playerViewController contentView];
  playbackContentContainerView = [contentView playbackContentContainerView];

  if (contentZoomingView == playbackContentContainerView)
  {
    playerViewController2 = [(AVZoomingBehaviorContext *)self playerViewController];
    contentView2 = [playerViewController2 contentView];
    contentZoomingView2 = [(AVZoomingBehaviorContext *)self contentZoomingView];
    activeContentView = [contentZoomingView2 activeContentView];
    [contentView2 setPlaybackContentContainerView:activeContentView];
  }

  doubleTapGestureRecognizer = [(AVZoomingBehaviorContext *)self doubleTapGestureRecognizer];
  view = [doubleTapGestureRecognizer view];
  doubleTapGestureRecognizer2 = [(AVZoomingBehaviorContext *)self doubleTapGestureRecognizer];
  [view removeGestureRecognizer:doubleTapGestureRecognizer2];

  playerViewController3 = [(AVZoomingBehaviorContext *)self playerViewController];
  LODWORD(view) = [playerViewController3 isViewLoaded];

  if (view)
  {
    usesGlassCatalystControls = self->_usesGlassCatalystControls;
    playerViewController4 = [(AVZoomingBehaviorContext *)self playerViewController];
    v19 = playerViewController4;
    if (usesGlassCatalystControls)
    {
      catalystPlaybackControlsController = [playerViewController4 catalystPlaybackControlsController];
      [catalystPlaybackControlsController setShowsVideoZoomControl:1];
    }

    else
    {
      catalystPlaybackControlsController = [playerViewController4 chromePlaybackControlsController];
      [catalystPlaybackControlsController setShowsVideoGravityButton:1];
    }
  }
}

- (void)didAddBehavior:(id)behavior
{
  playerViewController = [(AVZoomingBehaviorContext *)self playerViewController];
  if ([playerViewController isViewLoaded])
  {
    playerViewController2 = [(AVZoomingBehaviorContext *)self playerViewController];
    contentView = [playerViewController2 contentView];
    playbackContentContainerView = [contentView playbackContentContainerView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_8;
    }

    playerViewController3 = [(AVZoomingBehaviorContext *)self playerViewController];
    contentView2 = [playerViewController3 contentView];
    playbackContentContainerView2 = [contentView2 playbackContentContainerView];
    playerViewController = [playbackContentContainerView2 activeContentView];

    playerViewController4 = [(AVZoomingBehaviorContext *)self playerViewController];
    contentView3 = [playerViewController4 contentView];
    [playerViewController frame];
    v14 = [(AVZoomingBehaviorContext *)self makePlaybackContentContainerWithFrame:playerViewController activeContentView:?];
    [contentView3 setPlaybackContentContainerView:v14];

    LODWORD(contentView3) = self->_usesGlassCatalystControls;
    playerViewController5 = [(AVZoomingBehaviorContext *)self playerViewController];
    v16 = playerViewController5;
    if (contentView3 == 1)
    {
      [playerViewController5 catalystPlaybackControlsController];
    }

    else
    {
      [playerViewController5 chromePlaybackControlsController];
    }
    v17 = ;
    [v17 setPlaybackControlsIncludeStartContentTransitionButtons:1];
  }

LABEL_8:
  usesGlassCatalystControls = self->_usesGlassCatalystControls;
  playerViewController6 = [(AVZoomingBehaviorContext *)self playerViewController];
  v20 = playerViewController6;
  if (usesGlassCatalystControls)
  {
    catalystPlaybackControlsController = [playerViewController6 catalystPlaybackControlsController];
    [catalystPlaybackControlsController setShowsVideoZoomControl:0];
  }

  else
  {
    catalystPlaybackControlsController = [playerViewController6 chromePlaybackControlsController];
    [catalystPlaybackControlsController setShowsVideoGravityButton:0];
  }

  [(AVZoomingBehaviorContext *)self _updateZoomingView];
  observationController = [(AVZoomingBehaviorContext *)self observationController];
  [observationController startObservingNotificationForName:@"AVPlayerControllerContentDimensionsChangedNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_23706];
}

void __43__AVZoomingBehaviorContext_didAddBehavior___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a2;
  v5 = [a4 object];
  v6 = [v8 playerViewController];
  v7 = [v6 playerController];

  if (v5 == v7)
  {
    [v8 _updateZoomingView];
  }
}

- (void)viewDidLoad
{
  [(AVZoomingBehaviorContext *)self _updateZoomingView];
  usesGlassCatalystControls = self->_usesGlassCatalystControls;
  playerViewController = [(AVZoomingBehaviorContext *)self playerViewController];
  v6 = playerViewController;
  if (usesGlassCatalystControls)
  {
    catalystPlaybackControlsController = [playerViewController catalystPlaybackControlsController];
    [catalystPlaybackControlsController setShowsVideoZoomControl:0];
  }

  else
  {
    catalystPlaybackControlsController = [playerViewController chromePlaybackControlsController];
    [catalystPlaybackControlsController setShowsVideoGravityButton:0];
  }
}

- (id)makePlaybackContentContainerWithFrame:(CGRect)frame activeContentView:(id)view
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  contentZoomingView = [(AVZoomingBehaviorContext *)self contentZoomingView];

  if (contentZoomingView)
  {
    v11 = _AVLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&dword_18B49C000, v11, OS_LOG_TYPE_ERROR, "Shouldn't already have a contentZooming view.", v17, 2u);
    }
  }

  height = [[AVPlaybackContentZoomingView alloc] initWithFrame:viewCopy activeContentView:x, y, width, height];
  playerLayerView = [viewCopy playerLayerView];

  if (!playerLayerView)
  {
    v14 = [__AVPlayerLayerView alloc];
    [viewCopy bounds];
    v15 = [(__AVPlayerLayerView *)v14 initWithFrame:?];
    [viewCopy setPlayerLayerView:v15];

    [viewCopy layoutIfNeeded];
  }

  [(AVZoomingBehaviorContext *)self setContentZoomingView:height];

  return height;
}

- (AVPlaybackContentContainerView)activeContentView
{
  contentZoomingView = [(AVZoomingBehaviorContext *)self contentZoomingView];
  activeContentView = [contentZoomingView activeContentView];

  return activeContentView;
}

- (void)setContentAspectRatio:(CGSize)ratio
{
  if (ratio.width != self->_contentAspectRatio.width || ratio.height != self->_contentAspectRatio.height)
  {
    self->_contentAspectRatio = ratio;
    [(AVZoomingBehaviorContext *)self _updateZoomingView];
  }
}

- (void)dealloc
{
  observationController = [(AVZoomingBehaviorContext *)self observationController];
  [observationController stopAllObservation];

  v4.receiver = self;
  v4.super_class = AVZoomingBehaviorContext;
  [(AVZoomingBehaviorContext *)&v4 dealloc];
}

- (AVZoomingBehaviorContext)initWithAVKitOwner:(id)owner
{
  ownerCopy = owner;
  if (self)
  {
    v5 = objc_storeWeak(&self->_playerViewController, ownerCopy);
    [ownerCopy setRequiresImmediateAssetInspection:1];

    v6 = [[AVObservationController alloc] initWithOwner:self];
    observationController = self->_observationController;
    self->_observationController = v6;

    self->_contentAspectRatio = *MEMORY[0x1E695F060];
    self->_zoomingEnabled = 1;
  }

  return self;
}

@end