@interface AVMobileChromeControlsViewController
- (AVMobileChromeControlsViewController)initWithPlayerViewController:(id)a3;
- (AVPlaybackControlsController)playbackControlsController;
- (BOOL)showsFullScreenControl;
- (CGAffineTransform)transformForProminentPlayButton;
- (id)displayModeControlsLayoutItem;
- (id)transportControlsLayoutItem;
- (id)volumeControlsLayoutItem;
- (void)_loadControlsViewIfNeeded;
- (void)_loadPlaybackControlsViewIfNeeded;
- (void)_updateStyleSheet;
- (void)dealloc;
- (void)didBeginIndirectUserInteraction;
- (void)didEndIndirectUserInteraction;
- (void)flashControlsWithDuration:(double)a3;
- (void)loadView;
- (void)setControlItems:(id)a3;
- (void)setEmbeddedInlineLayoutMargins:(id)a3;
- (void)setIncludedControls:(unint64_t)a3;
- (void)setOptimizeForPerformance:(BOOL)a3;
- (void)setPrefersCompactFullScreenControls:(BOOL)a3;
- (void)setRoutingConfiguration:(id)a3;
- (void)setShowsFullScreenControl:(BOOL)a3;
- (void)setTransformForProminentPlayButton:(CGAffineTransform *)a3;
- (void)setTransportBarCustomMenuItems:(id)a3;
- (void)setVolumeController:(id)a3;
- (void)toggleVisibility:(id)a3;
@end

@implementation AVMobileChromeControlsViewController

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
  v3 = *&self[26].a;
  *&retstr->a = *&self[25].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[26].c;
  return self;
}

- (void)_updateStyleSheet
{
  v3 = [AVMobileChromeControlsStyleSheet alloc];
  v4 = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
  v5 = [v4 traitCollection];
  v6 = [(AVMobileChromeControlsStyleSheet *)v3 initWithTraitCollection:v5 shouldUseCompactFullScreenSize:self->_prefersCompactFullScreenControls];
  styleSheet = self->_styleSheet;
  self->_styleSheet = v6;

  [(AVPlaybackControlsView *)self->_playbackControlsView setStyleSheet:self->_styleSheet];
  turboModeControlsView = self->_turboModeControlsView;
  v9 = self->_styleSheet;

  [(AVTurboModePlaybackControlsPlaceholderView *)turboModeControlsView setStyleSheet:v9];
}

- (void)_loadControlsViewIfNeeded
{
  if (!a1)
  {
    return;
  }

  v2 = [a1 viewIfLoaded];
  if (v2 && !*(a1 + 1216))
  {
    v14 = v2;
    if (!*(a1 + 1192))
    {
      v3 = [MEMORY[0x1E696AD88] defaultCenter];
      [v3 addObserver:a1 selector:sel__updateStyleSheet name:*MEMORY[0x1E69DDC48] object:0];

      v4 = [AVMobileChromeControlsStyleSheet alloc];
      v5 = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
      v6 = [v5 traitCollection];
      v7 = [(AVMobileChromeControlsStyleSheet *)v4 initWithTraitCollection:v6 shouldUseCompactFullScreenSize:*(a1 + 1200)];
      v8 = *(a1 + 1192);
      *(a1 + 1192) = v7;
    }

    if (([a1 optimizeForPerformance] & 1) == 0)
    {
      [(AVMobileChromeControlsViewController *)a1 _loadPlaybackControlsViewIfNeeded];
LABEL_14:
      v2 = v14;
      goto LABEL_15;
    }

    v2 = v14;
    if (!*(a1 + 1224))
    {
      if (*(a1 + 1216))
      {
        v9 = _AVLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18B49C000, v9, OS_LOG_TYPE_ERROR, "Never load the turboModePlaybackControlsPlaceholderView when the playbackControlsView is already loaded!", buf, 2u);
        }
      }

      v10 = [AVTurboModePlaybackControlsPlaceholderView alloc];
      [*(a1 + 1176) bounds];
      v11 = [(AVTurboModePlaybackControlsPlaceholderView *)v10 initWithFrame:*(a1 + 1192) styleSheet:?];
      v12 = *(a1 + 1224);
      *(a1 + 1224) = v11;

      v13 = [a1 playbackControlsController];
      [v13 turboModePlaybackControlsPlaceholderViewDidLoad:*(a1 + 1224)];

      [*(a1 + 1176) setActivePlaybackControlsView:*(a1 + 1224)];
      goto LABEL_14;
    }
  }

LABEL_15:
}

- (void)_loadPlaybackControlsViewIfNeeded
{
  if (a1 && !*(a1 + 1216))
  {
    v2 = [AVPlaybackControlsView alloc];
    [*(a1 + 1176) bounds];
    v3 = [(AVPlaybackControlsView *)v2 initWithFrame:*(a1 + 1192) styleSheet:?];
    v4 = *(a1 + 1216);
    *(a1 + 1216) = v3;

    [*(a1 + 1216) setOverrideLayoutMarginsWhenEmbeddedInline:*(a1 + 1208)];
    v5 = [*(a1 + 1216) routePickerView];
    v6 = [a1 routingConfiguration];
    [v5 setRoutingConfiguration:v6];

    v7 = [a1 playbackControlsController];
    [v7 playbackControlsViewDidLoad:*(a1 + 1216)];

    [*(a1 + 1176) setActivePlaybackControlsView:*(a1 + 1216)];
    v8 = *(a1 + 1224);
    *(a1 + 1224) = 0;
  }
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

  [(AVMobileChromeControlsViewController *)self setView:v7];
}

- (void)toggleVisibility:(id)a3
{
  v3 = [(AVMobileChromeControlsViewController *)self playbackControlsController];
  [v3 togglePlaybackControlsVisibility];
}

- (void)flashControlsWithDuration:(double)a3
{
  v4 = [(AVMobileChromeControlsViewController *)self playbackControlsController];
  [v4 flashPlaybackControlsWithDuration:a3];
}

- (void)didEndIndirectUserInteraction
{
  v2 = [(AVMobileChromeControlsViewController *)self playbackControlsController];
  [v2 endShowingItemsDueToIndirectUserInteraction];
}

- (void)didBeginIndirectUserInteraction
{
  v2 = [(AVMobileChromeControlsViewController *)self playbackControlsController];
  [v2 beginShowingItemsDueToIndirectUserInteraction];
}

- (BOOL)showsFullScreenControl
{
  v2 = [(AVMobileChromeControlsViewController *)self playbackControlsController];
  v3 = [v2 allowsEnteringFullScreen];

  return v3;
}

- (void)setShowsFullScreenControl:(BOOL)a3
{
  v3 = a3;
  v4 = [(AVMobileChromeControlsViewController *)self playbackControlsController];
  [v4 setAllowsEnteringFullScreen:v3];
}

- (id)volumeControlsLayoutItem
{
  [(AVMobileChromeControlsViewController *)self _loadPlaybackControlsViewIfNeeded];
  playbackControlsView = self->_playbackControlsView;

  return [(AVPlaybackControlsView *)playbackControlsView volumeControls];
}

- (void)setVolumeController:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVMobileChromeControlsViewController;
  v4 = a3;
  [(AVMobileControlsViewController *)&v6 setVolumeController:v4];
  v5 = [(AVMobileChromeControlsViewController *)self playbackControlsController:v6.receiver];
  [v5 setVolumeController:v4];
}

- (id)transportControlsLayoutItem
{
  [(AVMobileChromeControlsViewController *)self _loadPlaybackControlsViewIfNeeded];
  playbackControlsView = self->_playbackControlsView;

  return [(AVPlaybackControlsView *)playbackControlsView transportControlsView];
}

- (void)setTransportBarCustomMenuItems:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVMobileChromeControlsViewController;
  v4 = a3;
  [(AVMobileControlsViewController *)&v6 setTransportBarCustomMenuItems:v4];
  v5 = [(AVMobileChromeControlsViewController *)self playbackControlsController:v6.receiver];
  [v5 setTransportBarCustomMenuItems:v4];
}

- (void)setOptimizeForPerformance:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AVMobileChromeControlsViewController;
  [(AVMobileControlsViewController *)&v4 setOptimizeForPerformance:a3];
  [(AVMobileChromeControlsViewController *)self _loadControlsViewIfNeeded];
}

- (void)setIncludedControls:(unint64_t)a3
{
  if ([(AVMobileControlsViewController *)self includedControls]!= a3)
  {
    v8.receiver = self;
    v8.super_class = AVMobileChromeControlsViewController;
    [(AVMobileControlsViewController *)&v8 setIncludedControls:a3];
    v5 = [(AVMobileChromeControlsViewController *)self playbackControlsController];
    [v5 setPlaybackControlsIncludeTransportControls:(a3 & 0x19) != 0];

    v6 = [(AVMobileChromeControlsViewController *)self playbackControlsController];
    [v6 setPlaybackControlsIncludeDisplayModeControls:(a3 >> 2) & 1];

    v7 = [(AVMobileChromeControlsViewController *)self playbackControlsController];
    [v7 setPlaybackControlsIncludeVolumeControls:(a3 >> 1) & 1];
  }
}

- (id)displayModeControlsLayoutItem
{
  [(AVMobileChromeControlsViewController *)self _loadPlaybackControlsViewIfNeeded];
  playbackControlsView = self->_playbackControlsView;

  return [(AVPlaybackControlsView *)playbackControlsView screenModeControls];
}

- (void)setRoutingConfiguration:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVMobileChromeControlsViewController;
  v4 = a3;
  [(AVMobileControlsViewController *)&v6 setRoutingConfiguration:v4];
  v5 = [(AVPlaybackControlsView *)self->_playbackControlsView routePickerView:v6.receiver];
  [v5 setRoutingConfiguration:v4];
}

- (void)setPrefersCompactFullScreenControls:(BOOL)a3
{
  if (self->_prefersCompactFullScreenControls != a3)
  {
    self->_prefersCompactFullScreenControls = a3;
    [(AVMobileChromeControlsViewController *)self _updateStyleSheet];
  }
}

- (AVPlaybackControlsController)playbackControlsController
{
  playbackControlsController = self->_playbackControlsController;
  if (!playbackControlsController)
  {
    v4 = [AVPlaybackControlsController alloc];
    WeakRetained = objc_loadWeakRetained(&self->_playerViewController);
    v6 = [(AVPlaybackControlsController *)v4 initWithPlayerViewController:WeakRetained];
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
    [(AVPlaybackControlsView *)self->_playbackControlsView setOverrideLayoutMarginsWhenEmbeddedInline:v6];
    v5 = v6;
  }
}

- (void)setControlItems:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVMobileChromeControlsViewController;
  v4 = a3;
  [(AVMobileControlsViewController *)&v6 setControlItems:v4];
  v5 = [(AVMobileChromeControlsViewController *)self playbackControlsController:v6.receiver];
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
  v4.super_class = AVMobileChromeControlsViewController;
  [(AVMobileChromeControlsViewController *)&v4 dealloc];
}

- (AVMobileChromeControlsViewController)initWithPlayerViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AVMobileChromeControlsViewController;
  v5 = [(AVMobileChromeControlsViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_playerViewController, v4);
  }

  return v6;
}

@end