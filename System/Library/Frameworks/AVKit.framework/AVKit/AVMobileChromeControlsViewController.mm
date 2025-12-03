@interface AVMobileChromeControlsViewController
- (AVMobileChromeControlsViewController)initWithPlayerViewController:(id)controller;
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
- (void)flashControlsWithDuration:(double)duration;
- (void)loadView;
- (void)setControlItems:(id)items;
- (void)setEmbeddedInlineLayoutMargins:(id)margins;
- (void)setIncludedControls:(unint64_t)controls;
- (void)setOptimizeForPerformance:(BOOL)performance;
- (void)setPrefersCompactFullScreenControls:(BOOL)controls;
- (void)setRoutingConfiguration:(id)configuration;
- (void)setShowsFullScreenControl:(BOOL)control;
- (void)setTransformForProminentPlayButton:(CGAffineTransform *)button;
- (void)setTransportBarCustomMenuItems:(id)items;
- (void)setVolumeController:(id)controller;
- (void)toggleVisibility:(id)visibility;
@end

@implementation AVMobileChromeControlsViewController

- (void)setTransformForProminentPlayButton:(CGAffineTransform *)button
{
  v4 = *&button->c;
  v3 = *&button->tx;
  *&self->_transformForProminentPlayButton.a = *&button->a;
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
  avkit_mainScreen = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
  traitCollection = [avkit_mainScreen traitCollection];
  v6 = [(AVMobileChromeControlsStyleSheet *)v3 initWithTraitCollection:traitCollection shouldUseCompactFullScreenSize:self->_prefersCompactFullScreenControls];
  styleSheet = self->_styleSheet;
  self->_styleSheet = v6;

  [(AVPlaybackControlsView *)self->_playbackControlsView setStyleSheet:self->_styleSheet];
  turboModeControlsView = self->_turboModeControlsView;
  v9 = self->_styleSheet;

  [(AVTurboModePlaybackControlsPlaceholderView *)turboModeControlsView setStyleSheet:v9];
}

- (void)_loadControlsViewIfNeeded
{
  if (!self)
  {
    return;
  }

  viewIfLoaded = [self viewIfLoaded];
  if (viewIfLoaded && !*(self + 1216))
  {
    v14 = viewIfLoaded;
    if (!*(self + 1192))
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel__updateStyleSheet name:*MEMORY[0x1E69DDC48] object:0];

      v4 = [AVMobileChromeControlsStyleSheet alloc];
      avkit_mainScreen = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
      traitCollection = [avkit_mainScreen traitCollection];
      v7 = [(AVMobileChromeControlsStyleSheet *)v4 initWithTraitCollection:traitCollection shouldUseCompactFullScreenSize:*(self + 1200)];
      v8 = *(self + 1192);
      *(self + 1192) = v7;
    }

    if (([self optimizeForPerformance] & 1) == 0)
    {
      [(AVMobileChromeControlsViewController *)self _loadPlaybackControlsViewIfNeeded];
LABEL_14:
      viewIfLoaded = v14;
      goto LABEL_15;
    }

    viewIfLoaded = v14;
    if (!*(self + 1224))
    {
      if (*(self + 1216))
      {
        v9 = _AVLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18B49C000, v9, OS_LOG_TYPE_ERROR, "Never load the turboModePlaybackControlsPlaceholderView when the playbackControlsView is already loaded!", buf, 2u);
        }
      }

      v10 = [AVTurboModePlaybackControlsPlaceholderView alloc];
      [*(self + 1176) bounds];
      v11 = [(AVTurboModePlaybackControlsPlaceholderView *)v10 initWithFrame:*(self + 1192) styleSheet:?];
      v12 = *(self + 1224);
      *(self + 1224) = v11;

      playbackControlsController = [self playbackControlsController];
      [playbackControlsController turboModePlaybackControlsPlaceholderViewDidLoad:*(self + 1224)];

      [*(self + 1176) setActivePlaybackControlsView:*(self + 1224)];
      goto LABEL_14;
    }
  }

LABEL_15:
}

- (void)_loadPlaybackControlsViewIfNeeded
{
  if (self && !*(self + 1216))
  {
    v2 = [AVPlaybackControlsView alloc];
    [*(self + 1176) bounds];
    v3 = [(AVPlaybackControlsView *)v2 initWithFrame:*(self + 1192) styleSheet:?];
    v4 = *(self + 1216);
    *(self + 1216) = v3;

    [*(self + 1216) setOverrideLayoutMarginsWhenEmbeddedInline:*(self + 1208)];
    routePickerView = [*(self + 1216) routePickerView];
    routingConfiguration = [self routingConfiguration];
    [routePickerView setRoutingConfiguration:routingConfiguration];

    playbackControlsController = [self playbackControlsController];
    [playbackControlsController playbackControlsViewDidLoad:*(self + 1216)];

    [*(self + 1176) setActivePlaybackControlsView:*(self + 1216)];
    v8 = *(self + 1224);
    *(self + 1224) = 0;
  }
}

- (void)loadView
{
  v3 = objc_alloc_init(AVMobileChromeControlsView);
  controlsView = self->_controlsView;
  self->_controlsView = v3;

  v5 = self->_controlsView;
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(AVMobileChromeControlsView *)v5 setBackgroundColor:clearColor];

  v7 = self->_controlsView;

  [(AVMobileChromeControlsViewController *)self setView:v7];
}

- (void)toggleVisibility:(id)visibility
{
  playbackControlsController = [(AVMobileChromeControlsViewController *)self playbackControlsController];
  [playbackControlsController togglePlaybackControlsVisibility];
}

- (void)flashControlsWithDuration:(double)duration
{
  playbackControlsController = [(AVMobileChromeControlsViewController *)self playbackControlsController];
  [playbackControlsController flashPlaybackControlsWithDuration:duration];
}

- (void)didEndIndirectUserInteraction
{
  playbackControlsController = [(AVMobileChromeControlsViewController *)self playbackControlsController];
  [playbackControlsController endShowingItemsDueToIndirectUserInteraction];
}

- (void)didBeginIndirectUserInteraction
{
  playbackControlsController = [(AVMobileChromeControlsViewController *)self playbackControlsController];
  [playbackControlsController beginShowingItemsDueToIndirectUserInteraction];
}

- (BOOL)showsFullScreenControl
{
  playbackControlsController = [(AVMobileChromeControlsViewController *)self playbackControlsController];
  allowsEnteringFullScreen = [playbackControlsController allowsEnteringFullScreen];

  return allowsEnteringFullScreen;
}

- (void)setShowsFullScreenControl:(BOOL)control
{
  controlCopy = control;
  playbackControlsController = [(AVMobileChromeControlsViewController *)self playbackControlsController];
  [playbackControlsController setAllowsEnteringFullScreen:controlCopy];
}

- (id)volumeControlsLayoutItem
{
  [(AVMobileChromeControlsViewController *)self _loadPlaybackControlsViewIfNeeded];
  playbackControlsView = self->_playbackControlsView;

  return [(AVPlaybackControlsView *)playbackControlsView volumeControls];
}

- (void)setVolumeController:(id)controller
{
  v6.receiver = self;
  v6.super_class = AVMobileChromeControlsViewController;
  controllerCopy = controller;
  [(AVMobileControlsViewController *)&v6 setVolumeController:controllerCopy];
  v5 = [(AVMobileChromeControlsViewController *)self playbackControlsController:v6.receiver];
  [v5 setVolumeController:controllerCopy];
}

- (id)transportControlsLayoutItem
{
  [(AVMobileChromeControlsViewController *)self _loadPlaybackControlsViewIfNeeded];
  playbackControlsView = self->_playbackControlsView;

  return [(AVPlaybackControlsView *)playbackControlsView transportControlsView];
}

- (void)setTransportBarCustomMenuItems:(id)items
{
  v6.receiver = self;
  v6.super_class = AVMobileChromeControlsViewController;
  itemsCopy = items;
  [(AVMobileControlsViewController *)&v6 setTransportBarCustomMenuItems:itemsCopy];
  v5 = [(AVMobileChromeControlsViewController *)self playbackControlsController:v6.receiver];
  [v5 setTransportBarCustomMenuItems:itemsCopy];
}

- (void)setOptimizeForPerformance:(BOOL)performance
{
  v4.receiver = self;
  v4.super_class = AVMobileChromeControlsViewController;
  [(AVMobileControlsViewController *)&v4 setOptimizeForPerformance:performance];
  [(AVMobileChromeControlsViewController *)self _loadControlsViewIfNeeded];
}

- (void)setIncludedControls:(unint64_t)controls
{
  if ([(AVMobileControlsViewController *)self includedControls]!= controls)
  {
    v8.receiver = self;
    v8.super_class = AVMobileChromeControlsViewController;
    [(AVMobileControlsViewController *)&v8 setIncludedControls:controls];
    playbackControlsController = [(AVMobileChromeControlsViewController *)self playbackControlsController];
    [playbackControlsController setPlaybackControlsIncludeTransportControls:(controls & 0x19) != 0];

    playbackControlsController2 = [(AVMobileChromeControlsViewController *)self playbackControlsController];
    [playbackControlsController2 setPlaybackControlsIncludeDisplayModeControls:(controls >> 2) & 1];

    playbackControlsController3 = [(AVMobileChromeControlsViewController *)self playbackControlsController];
    [playbackControlsController3 setPlaybackControlsIncludeVolumeControls:(controls >> 1) & 1];
  }
}

- (id)displayModeControlsLayoutItem
{
  [(AVMobileChromeControlsViewController *)self _loadPlaybackControlsViewIfNeeded];
  playbackControlsView = self->_playbackControlsView;

  return [(AVPlaybackControlsView *)playbackControlsView screenModeControls];
}

- (void)setRoutingConfiguration:(id)configuration
{
  v6.receiver = self;
  v6.super_class = AVMobileChromeControlsViewController;
  configurationCopy = configuration;
  [(AVMobileControlsViewController *)&v6 setRoutingConfiguration:configurationCopy];
  v5 = [(AVPlaybackControlsView *)self->_playbackControlsView routePickerView:v6.receiver];
  [v5 setRoutingConfiguration:configurationCopy];
}

- (void)setPrefersCompactFullScreenControls:(BOOL)controls
{
  if (self->_prefersCompactFullScreenControls != controls)
  {
    self->_prefersCompactFullScreenControls = controls;
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

- (void)setEmbeddedInlineLayoutMargins:(id)margins
{
  marginsCopy = margins;
  if (self->_embeddedInlineLayoutMargins != marginsCopy)
  {
    v6 = marginsCopy;
    objc_storeStrong(&self->_embeddedInlineLayoutMargins, margins);
    [(AVPlaybackControlsView *)self->_playbackControlsView setOverrideLayoutMarginsWhenEmbeddedInline:v6];
    marginsCopy = v6;
  }
}

- (void)setControlItems:(id)items
{
  v6.receiver = self;
  v6.super_class = AVMobileChromeControlsViewController;
  itemsCopy = items;
  [(AVMobileControlsViewController *)&v6 setControlItems:itemsCopy];
  v5 = [(AVMobileChromeControlsViewController *)self playbackControlsController:v6.receiver];
  [v5 setCustomControlItems:itemsCopy];
}

- (void)dealloc
{
  if (self->_styleSheet)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];
  }

  v4.receiver = self;
  v4.super_class = AVMobileChromeControlsViewController;
  [(AVMobileChromeControlsViewController *)&v4 dealloc];
}

- (AVMobileChromeControlsViewController)initWithPlayerViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = AVMobileChromeControlsViewController;
  v5 = [(AVMobileChromeControlsViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_playerViewController, controllerCopy);
  }

  return v6;
}

@end