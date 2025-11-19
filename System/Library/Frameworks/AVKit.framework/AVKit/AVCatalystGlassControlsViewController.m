@interface AVCatalystGlassControlsViewController
- (AVCatalystGlassControlsViewController)initWithPlayerViewController:(id)a3;
- (AVCatalystGlassPlaybackControlsController)playbackControlsController;
- (BOOL)showsAnalysisControl;
- (BOOL)showsFullScreenControl;
- (CGAffineTransform)transformForProminentPlayButton;
- (UIEdgeInsets)legibleContentInsetsAvoidingControlsUI;
- (id)displayModeControlsLayoutItem;
- (id)transportControlsLayoutItem;
- (id)volumeControlsLayoutItem;
- (uint64_t)_loadPlaybackControlsViewIfNeeded;
- (void)_loadControlsViewIfNeeded;
- (void)_updateLegibleContentInsetsWithControlsVisibility:(BOOL)a3;
- (void)_updatePrefersFullWidthTransportBarStateIfNeeded;
- (void)_updateStyleSheet;
- (void)dealloc;
- (void)didBeginIndirectUserInteraction;
- (void)didEndIndirectUserInteraction;
- (void)flashControlsWithDuration:(double)a3;
- (void)glassPlaybackControlsView:(id)a3 animateAlongsideVisibilityAnimationsWithAnimationCoordinator:(id)a4 appearingViews:(id)a5 disappearingViews:(id)a6;
- (void)loadView;
- (void)setControlItems:(id)a3;
- (void)setEmbeddedInlineLayoutMargins:(id)a3;
- (void)setIncludedControls:(unint64_t)a3;
- (void)setOptimizeForPerformance:(BOOL)a3;
- (void)setPrefersCompactFullScreenControls:(BOOL)a3;
- (void)setPrefersFullWidthTransportControls:(BOOL)a3;
- (void)setRoutingConfiguration:(id)a3;
- (void)setShowsAnalysisControl:(BOOL)a3;
- (void)setShowsFullScreenControl:(BOOL)a3;
- (void)setTransformForProminentPlayButton:(CGAffineTransform *)a3;
- (void)setTransportBarCustomMenuItems:(id)a3;
- (void)setVolumeController:(id)a3;
- (void)toggleVisibility:(id)a3;
@end

@implementation AVCatalystGlassControlsViewController

- (void)setTransformForProminentPlayButton:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_transformForProminentPlayButton.a = *&a3->a;
  *&self->_transformForProminentPlayButton.c = v4;
  *&self->_transformForProminentPlayButton.tx = v3;
}

- (CGAffineTransform)transformForProminentPlayButton
{
  v3 = *&self[26].tx;
  *&retstr->a = *&self[26].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[27].a;
  return self;
}

- (void)_updateStyleSheet
{
  v3 = [AVCatalystGlassStyleSheet alloc];
  v4 = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
  v5 = [v4 traitCollection];
  v6 = [(AVCatalystGlassStyleSheet *)v3 initWithTraitCollection:v5 shouldUseCompactFullScreenSize:self->_prefersCompactFullScreenControls];
  styleSheet = self->_styleSheet;
  self->_styleSheet = v6;

  [(AVCatalystGlassPlaybackControlsView *)self->_playbackControlsView setStyleSheet:self->_styleSheet];
  turboModeControlsView = self->_turboModeControlsView;
  v9 = self->_styleSheet;

  [(AVCatalystTurboModePlaybackControlsPlaceholderView *)turboModeControlsView setStyleSheet:v9];
}

- (void)_updatePrefersFullWidthTransportBarStateIfNeeded
{
  v3 = [(AVCatalystGlassPlaybackControlsView *)self->_playbackControlsView transportControlsView];
  [v3 setPrefersFlexibleWidthScrubber:self->_prefersFullWidthTransportControls];
}

- (void)_updateLegibleContentInsetsWithControlsVisibility:(BOOL)a3
{
  v4 = *MEMORY[0x1E69DDCE0];
  v6 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  if (a3)
  {
    v32 = *MEMORY[0x1E69DDCE0];
    v33 = *(MEMORY[0x1E69DDCE0] + 16);
    v31 = *(MEMORY[0x1E69DDCE0] + 24);
    v7 = [(AVCatalystGlassPlaybackControlsView *)self->_playbackControlsView transportControlsView];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 superview];
      [v8 frame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v18 = [(AVCatalystGlassPlaybackControlsView *)self->_playbackControlsView superview];
      [v9 convertRect:v18 toView:{v11, v13, v15, v17}];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      [(AVCatalystGlassPlaybackControlsView *)self->_playbackControlsView bounds];
      Height = CGRectGetHeight(v36);
      v37.origin.x = v20;
      v37.origin.y = v22;
      v37.size.width = v24;
      v37.size.height = v26;
      v33 = Height - CGRectGetMinY(v37) + 16.0;
    }

    v5 = v31;
    v4 = v32;
    v6 = v33;
  }

  v28.f64[0] = v6;
  v28.f64[1] = v5;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_legibleContentInsetsAvoidingControlsUI.top, v4), vceqq_f64(*&self->_legibleContentInsetsAvoidingControlsUI.bottom, v28)))) & 1) == 0)
  {
    *&self->_legibleContentInsetsAvoidingControlsUI.top = v4;
    self->_legibleContentInsetsAvoidingControlsUI.bottom = v6;
    self->_legibleContentInsetsAvoidingControlsUI.right = v5;
    v29 = [(AVMobileControlsViewController *)self delegate];
    v30 = objc_opt_respondsToSelector();

    if (v30)
    {
      v34 = [(AVMobileControlsViewController *)self delegate];
      [v34 controlsViewControllerDidUpdateLegibleContentInsetsAvoidingUI:self];
    }
  }
}

- (void)_loadControlsViewIfNeeded
{
  if (!a1)
  {
    return;
  }

  v2 = [a1 viewIfLoaded];
  if (v2 && !*(a1 + 1248))
  {
    v14 = v2;
    if (!*(a1 + 1192))
    {
      v3 = [MEMORY[0x1E696AD88] defaultCenter];
      [v3 addObserver:a1 selector:sel__updateStyleSheet name:*MEMORY[0x1E69DDC48] object:0];

      v4 = [AVCatalystGlassStyleSheet alloc];
      v5 = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
      v6 = [v5 traitCollection];
      v7 = [(AVCatalystGlassStyleSheet *)v4 initWithTraitCollection:v6 shouldUseCompactFullScreenSize:*(a1 + 1232)];
      v8 = *(a1 + 1192);
      *(a1 + 1192) = v7;
    }

    if (([a1 optimizeForPerformance] & 1) == 0)
    {
      [(AVCatalystGlassControlsViewController *)a1 _loadPlaybackControlsViewIfNeeded];
LABEL_14:
      v2 = v14;
      goto LABEL_15;
    }

    v2 = v14;
    if (!*(a1 + 1256))
    {
      if (*(a1 + 1248))
      {
        v9 = _AVLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18B49C000, v9, OS_LOG_TYPE_ERROR, "Never load the turboModePlaybackControlsPlaceholderView when the playbackControlsView is already loaded!", buf, 2u);
        }
      }

      v10 = [AVCatalystTurboModePlaybackControlsPlaceholderView alloc];
      [*(a1 + 1176) bounds];
      v11 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)v10 initWithFrame:*(a1 + 1192) styleSheet:?];
      v12 = *(a1 + 1256);
      *(a1 + 1256) = v11;

      v13 = [a1 playbackControlsController];
      [v13 turboModePlaybackControlsPlaceholderViewDidLoad:*(a1 + 1256)];

      [*(a1 + 1176) setActivePlaybackControlsView:*(a1 + 1256)];
      goto LABEL_14;
    }
  }

LABEL_15:
}

- (uint64_t)_loadPlaybackControlsViewIfNeeded
{
  if (result)
  {
    v1 = result;
    if (!*(result + 1248))
    {
      v2 = [AVCatalystGlassPlaybackControlsView alloc];
      [*(v1 + 1176) bounds];
      v3 = [(AVCatalystGlassPlaybackControlsView *)v2 initWithFrame:*(v1 + 1192) styleSheet:?];
      v4 = *(v1 + 1248);
      *(v1 + 1248) = v3;

      [*(v1 + 1248) setOverrideLayoutMarginsWhenEmbeddedInline:*(v1 + 1240)];
      v5 = [*(v1 + 1248) routePickerView];
      v6 = [v1 routingConfiguration];
      [v5 setRoutingConfiguration:v6];

      v7 = [v1 playbackControlsController];
      [v7 playbackControlsViewDidLoad:*(v1 + 1248)];

      [*(v1 + 1176) setActivePlaybackControlsView:*(v1 + 1248)];
      v8 = *(v1 + 1256);
      *(v1 + 1256) = 0;

      return [v1 _updatePrefersFullWidthTransportBarStateIfNeeded];
    }
  }

  return result;
}

- (void)loadView
{
  v3 = objc_alloc_init(AVMobileChromeControlsView);
  controlsView = self->_controlsView;
  self->_controlsView = v3;

  v5 = self->_controlsView;
  v6 = [MEMORY[0x1E69DC888] clearColor];
  [(AVMobileChromeControlsView *)v5 setBackgroundColor:v6];

  v7 = self->_controlsView;

  [(AVCatalystGlassControlsViewController *)self setView:v7];
}

- (void)toggleVisibility:(id)a3
{
  v3 = [(AVCatalystGlassControlsViewController *)self playbackControlsController];
  [v3 togglePlaybackControlsVisibility];
}

- (void)flashControlsWithDuration:(double)a3
{
  v4 = [(AVCatalystGlassControlsViewController *)self playbackControlsController];
  [v4 flashPlaybackControlsWithDuration:a3];
}

- (void)glassPlaybackControlsView:(id)a3 animateAlongsideVisibilityAnimationsWithAnimationCoordinator:(id)a4 appearingViews:(id)a5 disappearingViews:(id)a6
{
  v8 = a6;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_playerViewController);
  v11 = [WeakRetained contentView];
  v12 = [v11 glassPlaybackControlsView];
  v14 = [v12 playbackControlsContainer];

  v13 = [v9 containsObject:v14];
  LODWORD(v9) = [v8 containsObject:v14];

  if (v13 != v9)
  {
    [(AVCatalystGlassControlsViewController *)self _updateLegibleContentInsetsWithControlsVisibility:v13];
  }
}

- (UIEdgeInsets)legibleContentInsetsAvoidingControlsUI
{
  top = self->_legibleContentInsetsAvoidingControlsUI.top;
  left = self->_legibleContentInsetsAvoidingControlsUI.left;
  bottom = self->_legibleContentInsetsAvoidingControlsUI.bottom;
  right = self->_legibleContentInsetsAvoidingControlsUI.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)didEndIndirectUserInteraction
{
  v2 = [(AVCatalystGlassControlsViewController *)self playbackControlsController];
  [v2 endShowingItemsDueToIndirectUserInteraction];
}

- (void)didBeginIndirectUserInteraction
{
  v2 = [(AVCatalystGlassControlsViewController *)self playbackControlsController];
  [v2 beginShowingItemsDueToIndirectUserInteraction];
}

- (BOOL)showsAnalysisControl
{
  v2 = [(AVCatalystGlassControlsViewController *)self playbackControlsController];
  v3 = [v2 showsShowTextControl];

  return v3;
}

- (void)setShowsAnalysisControl:(BOOL)a3
{
  v3 = a3;
  v4 = [(AVCatalystGlassControlsViewController *)self playbackControlsController];
  [v4 setShowsShowTextControl:v3];
}

- (BOOL)showsFullScreenControl
{
  v2 = [(AVCatalystGlassControlsViewController *)self playbackControlsController];
  v3 = [v2 allowsEnteringFullScreen];

  return v3;
}

- (void)setShowsFullScreenControl:(BOOL)a3
{
  v3 = a3;
  v4 = [(AVCatalystGlassControlsViewController *)self playbackControlsController];
  [v4 setAllowsEnteringFullScreen:v3];
}

- (id)volumeControlsLayoutItem
{
  [(AVCatalystGlassControlsViewController *)self _loadPlaybackControlsViewIfNeeded];
  playbackControlsView = self->_playbackControlsView;

  return [(AVCatalystGlassPlaybackControlsView *)playbackControlsView volumeControls];
}

- (void)setVolumeController:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVCatalystGlassControlsViewController;
  v4 = a3;
  [(AVMobileControlsViewController *)&v6 setVolumeController:v4];
  v5 = [(AVCatalystGlassControlsViewController *)self playbackControlsController:v6.receiver];
  [v5 setVolumeController:v4];
}

- (id)transportControlsLayoutItem
{
  [(AVCatalystGlassControlsViewController *)self _loadPlaybackControlsViewIfNeeded];
  playbackControlsView = self->_playbackControlsView;

  return [(AVCatalystGlassPlaybackControlsView *)playbackControlsView transportControlsView];
}

- (void)setTransportBarCustomMenuItems:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVCatalystGlassControlsViewController;
  v4 = a3;
  [(AVMobileControlsViewController *)&v6 setTransportBarCustomMenuItems:v4];
  v5 = [(AVCatalystGlassControlsViewController *)self playbackControlsController:v6.receiver];
  [v5 setTransportBarCustomMenuItems:v4];
}

- (void)setOptimizeForPerformance:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AVCatalystGlassControlsViewController;
  [(AVMobileControlsViewController *)&v4 setOptimizeForPerformance:a3];
  [(AVCatalystGlassControlsViewController *)self _loadControlsViewIfNeeded];
}

- (void)setIncludedControls:(unint64_t)a3
{
  if ([(AVMobileControlsViewController *)self includedControls]!= a3)
  {
    v8.receiver = self;
    v8.super_class = AVCatalystGlassControlsViewController;
    [(AVMobileControlsViewController *)&v8 setIncludedControls:a3];
    v5 = [(AVCatalystGlassControlsViewController *)self playbackControlsController];
    [v5 setPlaybackControlsIncludeTransportControls:(a3 & 0x19) != 0];

    v6 = [(AVCatalystGlassControlsViewController *)self playbackControlsController];
    [v6 setPlaybackControlsIncludeDisplayModeControls:(a3 >> 2) & 1];

    v7 = [(AVCatalystGlassControlsViewController *)self playbackControlsController];
    [v7 setPlaybackControlsIncludeVolumeControls:(a3 >> 1) & 1];
  }
}

- (id)displayModeControlsLayoutItem
{
  [(AVCatalystGlassControlsViewController *)self _loadPlaybackControlsViewIfNeeded];
  playbackControlsView = self->_playbackControlsView;

  return [(AVCatalystGlassPlaybackControlsView *)playbackControlsView screenModeControls];
}

- (void)setRoutingConfiguration:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVCatalystGlassControlsViewController;
  v4 = a3;
  [(AVMobileControlsViewController *)&v6 setRoutingConfiguration:v4];
  v5 = [(AVCatalystGlassPlaybackControlsView *)self->_playbackControlsView routePickerView:v6.receiver];
  [v5 setRoutingConfiguration:v4];
}

- (void)setPrefersFullWidthTransportControls:(BOOL)a3
{
  if (self->_prefersFullWidthTransportControls != a3)
  {
    self->_prefersFullWidthTransportControls = a3;
    [(AVCatalystGlassControlsViewController *)self _updatePrefersFullWidthTransportBarStateIfNeeded];
  }
}

- (void)setPrefersCompactFullScreenControls:(BOOL)a3
{
  if (self->_prefersCompactFullScreenControls != a3)
  {
    self->_prefersCompactFullScreenControls = a3;
    [(AVCatalystGlassControlsViewController *)self _updateStyleSheet];
  }
}

- (AVCatalystGlassPlaybackControlsController)playbackControlsController
{
  playbackControlsController = self->_playbackControlsController;
  if (!playbackControlsController)
  {
    v4 = [AVCatalystGlassPlaybackControlsController alloc];
    WeakRetained = objc_loadWeakRetained(&self->_playerViewController);
    v6 = [(AVCatalystGlassPlaybackControlsController *)v4 initWithPlayerViewController:WeakRetained visibilityDelegate:self];
    v7 = self->_playbackControlsController;
    self->_playbackControlsController = v6;

    playbackControlsController = self->_playbackControlsController;
  }

  return playbackControlsController;
}

- (void)setEmbeddedInlineLayoutMargins:(id)a3
{
  v5 = a3;
  if (self->_embeddedInlineLayoutMargins != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_embeddedInlineLayoutMargins, a3);
    [(AVCatalystGlassPlaybackControlsView *)self->_playbackControlsView setOverrideLayoutMarginsWhenEmbeddedInline:v6];
    v5 = v6;
  }
}

- (void)setControlItems:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVCatalystGlassControlsViewController;
  v4 = a3;
  [(AVMobileControlsViewController *)&v6 setControlItems:v4];
  v5 = [(AVCatalystGlassControlsViewController *)self playbackControlsController:v6.receiver];
  [v5 setCustomControlItems:v4];
}

- (void)dealloc
{
  if (self->_styleSheet)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];
  }

  v4.receiver = self;
  v4.super_class = AVCatalystGlassControlsViewController;
  [(AVCatalystGlassControlsViewController *)&v4 dealloc];
}

- (AVCatalystGlassControlsViewController)initWithPlayerViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AVCatalystGlassControlsViewController;
  v5 = [(AVCatalystGlassControlsViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_playerViewController, v4);
    v6->_prefersFullWidthTransportControls = 0;
  }

  return v6;
}

@end