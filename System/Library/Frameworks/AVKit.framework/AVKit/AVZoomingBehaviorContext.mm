@interface AVZoomingBehaviorContext
- (AVPlaybackContentContainerView)activeContentView;
- (AVPlayerViewController)playerViewController;
- (AVZoomingBehavior)behavior;
- (AVZoomingBehaviorContext)initWithAVKitOwner:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (CGSize)contentAspectRatio;
- (id)makePlaybackContentContainerWithFrame:(CGRect)a3 activeContentView:(id)a4;
- (void)_handleDoubleTapGestureRecognizer:(id)a3;
- (void)_updateZoomingView;
- (void)dealloc;
- (void)didAddBehavior:(id)a3;
- (void)didRemoveBehavior:(id)a3;
- (void)setContentAspectRatio:(CGSize)a3;
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
    v10 = [(AVZoomingBehaviorContext *)self playerViewController];
    v11 = [v10 playerController];
    [v11 contentDimensions];
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
    v14 = [(AVZoomingBehaviorContext *)self contentZoomingView];
    [v14 setContentAspectRatio:{v7, v9}];
  }

  v15 = [(AVZoomingBehaviorContext *)self contentZoomingView];
  [v15 setZoomingEnabled:{-[AVZoomingBehaviorContext isZoomingEnabled](self, "isZoomingEnabled")}];

  v16 = [(AVZoomingBehaviorContext *)self doubleTapGestureRecognizer];
  [v16 setEnabled:1];

  v17 = [(AVZoomingBehaviorContext *)self contentZoomingView];
  v18 = [(AVZoomingBehaviorContext *)self playerViewController];
  [v17 setFullScreen:{objc_msgSend(v18, "isPresentedFullScreen")}];

  if ([(AVZoomingBehaviorContext *)self isZoomingEnabled])
  {
    v19 = [(AVZoomingBehaviorContext *)self playerViewController];
    v20 = [v19 isViewLoaded];

    if (v20)
    {
      v21 = [(AVZoomingBehaviorContext *)self contentZoomingView];
      v22 = [v21 pinchGestureRecognizer];

      if (v22)
      {
        v23 = [(AVZoomingBehaviorContext *)self contentZoomingView];
        v24 = [v23 pinchGestureRecognizer];
        v25 = [v24 view];
        v26 = [(AVZoomingBehaviorContext *)self playerViewController];
        v27 = [v26 contentView];

        if (v25 != v27)
        {
          v28 = [(AVZoomingBehaviorContext *)self playerViewController];
          v29 = [v28 contentView];
          v30 = [(AVZoomingBehaviorContext *)self contentZoomingView];
          v31 = [v30 pinchGestureRecognizer];
          [v29 addGestureRecognizer:v31];

          v32 = [(AVZoomingBehaviorContext *)self playerViewController];
          v33 = [v32 contentView];
          v34 = [(AVZoomingBehaviorContext *)self contentZoomingView];
          v35 = [v34 panGestureRecognizer];
          [v33 addGestureRecognizer:v35];
        }
      }

      v39 = +[AVKitGlobalSettings shared];
      if (![v39 playerGeneration])
      {
        v36 = [(AVZoomingBehaviorContext *)self doubleTapGestureRecognizer];

        if (v36)
        {
          return;
        }

        v39 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleDoubleTapGestureRecognizer_];
        v37 = [(AVZoomingBehaviorContext *)self playerViewController];
        v38 = [v37 contentView];
        [v38 addGestureRecognizer:v39];

        [v39 setNumberOfTapsRequired:2];
        [v39 setDelegate:self];
        [(AVZoomingBehaviorContext *)self setDoubleTapGestureRecognizer:v39];
      }
    }
  }
}

- (void)_handleDoubleTapGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(AVZoomingBehaviorContext *)self contentZoomingView];
  [v4 locationInView:v5];
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

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v4 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v5 = a3;
  v6 = [(AVZoomingBehaviorContext *)self doubleTapGestureRecognizer];

  return v6 == v5;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 view];
  v9 = [v7 view];

  [v6 locationInView:v9];
  v11 = v10;
  v13 = v12;

  v14 = [v8 hitTest:0 withEvent:{v11, v13}];

  v15 = [(AVZoomingBehaviorContext *)self playerViewController];
  v16 = [v15 contentView];
  LOBYTE(v8) = [v16 isViewDescendantOfPlaybackControlsSubview:v14];

  return v8 ^ 1;
}

- (void)didRemoveBehavior:(id)a3
{
  v4 = [(AVZoomingBehaviorContext *)self contentZoomingView];
  v5 = [(AVZoomingBehaviorContext *)self playerViewController];
  v6 = [v5 contentView];
  v7 = [v6 playbackContentContainerView];

  if (v4 == v7)
  {
    v8 = [(AVZoomingBehaviorContext *)self playerViewController];
    v9 = [v8 contentView];
    v10 = [(AVZoomingBehaviorContext *)self contentZoomingView];
    v11 = [v10 activeContentView];
    [v9 setPlaybackContentContainerView:v11];
  }

  v12 = [(AVZoomingBehaviorContext *)self doubleTapGestureRecognizer];
  v13 = [v12 view];
  v14 = [(AVZoomingBehaviorContext *)self doubleTapGestureRecognizer];
  [v13 removeGestureRecognizer:v14];

  v15 = [(AVZoomingBehaviorContext *)self playerViewController];
  LODWORD(v13) = [v15 isViewLoaded];

  if (v13)
  {
    usesGlassCatalystControls = self->_usesGlassCatalystControls;
    v17 = [(AVZoomingBehaviorContext *)self playerViewController];
    v19 = v17;
    if (usesGlassCatalystControls)
    {
      v18 = [v17 catalystPlaybackControlsController];
      [v18 setShowsVideoZoomControl:1];
    }

    else
    {
      v18 = [v17 chromePlaybackControlsController];
      [v18 setShowsVideoGravityButton:1];
    }
  }
}

- (void)didAddBehavior:(id)a3
{
  v4 = [(AVZoomingBehaviorContext *)self playerViewController];
  if ([v4 isViewLoaded])
  {
    v5 = [(AVZoomingBehaviorContext *)self playerViewController];
    v6 = [v5 contentView];
    v7 = [v6 playbackContentContainerView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_8;
    }

    v9 = [(AVZoomingBehaviorContext *)self playerViewController];
    v10 = [v9 contentView];
    v11 = [v10 playbackContentContainerView];
    v4 = [v11 activeContentView];

    v12 = [(AVZoomingBehaviorContext *)self playerViewController];
    v13 = [v12 contentView];
    [v4 frame];
    v14 = [(AVZoomingBehaviorContext *)self makePlaybackContentContainerWithFrame:v4 activeContentView:?];
    [v13 setPlaybackContentContainerView:v14];

    LODWORD(v13) = self->_usesGlassCatalystControls;
    v15 = [(AVZoomingBehaviorContext *)self playerViewController];
    v16 = v15;
    if (v13 == 1)
    {
      [v15 catalystPlaybackControlsController];
    }

    else
    {
      [v15 chromePlaybackControlsController];
    }
    v17 = ;
    [v17 setPlaybackControlsIncludeStartContentTransitionButtons:1];
  }

LABEL_8:
  usesGlassCatalystControls = self->_usesGlassCatalystControls;
  v19 = [(AVZoomingBehaviorContext *)self playerViewController];
  v20 = v19;
  if (usesGlassCatalystControls)
  {
    v21 = [v19 catalystPlaybackControlsController];
    [v21 setShowsVideoZoomControl:0];
  }

  else
  {
    v21 = [v19 chromePlaybackControlsController];
    [v21 setShowsVideoGravityButton:0];
  }

  [(AVZoomingBehaviorContext *)self _updateZoomingView];
  v22 = [(AVZoomingBehaviorContext *)self observationController];
  [v22 startObservingNotificationForName:@"AVPlayerControllerContentDimensionsChangedNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_23706];
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
  v4 = [(AVZoomingBehaviorContext *)self playerViewController];
  v6 = v4;
  if (usesGlassCatalystControls)
  {
    v5 = [v4 catalystPlaybackControlsController];
    [v5 setShowsVideoZoomControl:0];
  }

  else
  {
    v5 = [v4 chromePlaybackControlsController];
    [v5 setShowsVideoGravityButton:0];
  }
}

- (id)makePlaybackContentContainerWithFrame:(CGRect)a3 activeContentView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(AVZoomingBehaviorContext *)self contentZoomingView];

  if (v10)
  {
    v11 = _AVLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&dword_18B49C000, v11, OS_LOG_TYPE_ERROR, "Shouldn't already have a contentZooming view.", v17, 2u);
    }
  }

  v12 = [[AVPlaybackContentZoomingView alloc] initWithFrame:v9 activeContentView:x, y, width, height];
  v13 = [v9 playerLayerView];

  if (!v13)
  {
    v14 = [__AVPlayerLayerView alloc];
    [v9 bounds];
    v15 = [(__AVPlayerLayerView *)v14 initWithFrame:?];
    [v9 setPlayerLayerView:v15];

    [v9 layoutIfNeeded];
  }

  [(AVZoomingBehaviorContext *)self setContentZoomingView:v12];

  return v12;
}

- (AVPlaybackContentContainerView)activeContentView
{
  v2 = [(AVZoomingBehaviorContext *)self contentZoomingView];
  v3 = [v2 activeContentView];

  return v3;
}

- (void)setContentAspectRatio:(CGSize)a3
{
  if (a3.width != self->_contentAspectRatio.width || a3.height != self->_contentAspectRatio.height)
  {
    self->_contentAspectRatio = a3;
    [(AVZoomingBehaviorContext *)self _updateZoomingView];
  }
}

- (void)dealloc
{
  v3 = [(AVZoomingBehaviorContext *)self observationController];
  [v3 stopAllObservation];

  v4.receiver = self;
  v4.super_class = AVZoomingBehaviorContext;
  [(AVZoomingBehaviorContext *)&v4 dealloc];
}

- (AVZoomingBehaviorContext)initWithAVKitOwner:(id)a3
{
  v4 = a3;
  if (self)
  {
    v5 = objc_storeWeak(&self->_playerViewController, v4);
    [v4 setRequiresImmediateAssetInspection:1];

    v6 = [[AVObservationController alloc] initWithOwner:self];
    observationController = self->_observationController;
    self->_observationController = v6;

    self->_contentAspectRatio = *MEMORY[0x1E695F060];
    self->_zoomingEnabled = 1;
  }

  return self;
}

@end