@interface AVCatalystGlassControlsViewController
- (AVCatalystGlassControlsViewController)initWithPlayerViewController:(id)controller;
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
- (void)_updateLegibleContentInsetsWithControlsVisibility:(BOOL)visibility;
- (void)_updatePrefersFullWidthTransportBarStateIfNeeded;
- (void)_updateStyleSheet;
- (void)dealloc;
- (void)didBeginIndirectUserInteraction;
- (void)didEndIndirectUserInteraction;
- (void)flashControlsWithDuration:(double)duration;
- (void)glassPlaybackControlsView:(id)view animateAlongsideVisibilityAnimationsWithAnimationCoordinator:(id)coordinator appearingViews:(id)views disappearingViews:(id)disappearingViews;
- (void)loadView;
- (void)setControlItems:(id)items;
- (void)setEmbeddedInlineLayoutMargins:(id)margins;
- (void)setIncludedControls:(unint64_t)controls;
- (void)setOptimizeForPerformance:(BOOL)performance;
- (void)setPrefersCompactFullScreenControls:(BOOL)controls;
- (void)setPrefersFullWidthTransportControls:(BOOL)controls;
- (void)setRoutingConfiguration:(id)configuration;
- (void)setShowsAnalysisControl:(BOOL)control;
- (void)setShowsFullScreenControl:(BOOL)control;
- (void)setTransformForProminentPlayButton:(CGAffineTransform *)button;
- (void)setTransportBarCustomMenuItems:(id)items;
- (void)setVolumeController:(id)controller;
- (void)toggleVisibility:(id)visibility;
@end

@implementation AVCatalystGlassControlsViewController

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
  v3 = *&self[26].tx;
  *&retstr->a = *&self[26].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[27].a;
  return self;
}

- (void)_updateStyleSheet
{
  v3 = [AVCatalystGlassStyleSheet alloc];
  avkit_mainScreen = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
  traitCollection = [avkit_mainScreen traitCollection];
  v6 = [(AVCatalystGlassStyleSheet *)v3 initWithTraitCollection:traitCollection shouldUseCompactFullScreenSize:self->_prefersCompactFullScreenControls];
  styleSheet = self->_styleSheet;
  self->_styleSheet = v6;

  [(AVCatalystGlassPlaybackControlsView *)self->_playbackControlsView setStyleSheet:self->_styleSheet];
  turboModeControlsView = self->_turboModeControlsView;
  v9 = self->_styleSheet;

  [(AVCatalystTurboModePlaybackControlsPlaceholderView *)turboModeControlsView setStyleSheet:v9];
}

- (void)_updatePrefersFullWidthTransportBarStateIfNeeded
{
  transportControlsView = [(AVCatalystGlassPlaybackControlsView *)self->_playbackControlsView transportControlsView];
  [transportControlsView setPrefersFlexibleWidthScrubber:self->_prefersFullWidthTransportControls];
}

- (void)_updateLegibleContentInsetsWithControlsVisibility:(BOOL)visibility
{
  v4 = *MEMORY[0x1E69DDCE0];
  v6 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  if (visibility)
  {
    v32 = *MEMORY[0x1E69DDCE0];
    v33 = *(MEMORY[0x1E69DDCE0] + 16);
    v31 = *(MEMORY[0x1E69DDCE0] + 24);
    transportControlsView = [(AVCatalystGlassPlaybackControlsView *)self->_playbackControlsView transportControlsView];
    v8 = transportControlsView;
    if (transportControlsView)
    {
      superview = [transportControlsView superview];
      [v8 frame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      superview2 = [(AVCatalystGlassPlaybackControlsView *)self->_playbackControlsView superview];
      [superview convertRect:superview2 toView:{v11, v13, v15, v17}];
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
    delegate = [(AVMobileControlsViewController *)self delegate];
    v30 = objc_opt_respondsToSelector();

    if (v30)
    {
      delegate2 = [(AVMobileControlsViewController *)self delegate];
      [delegate2 controlsViewControllerDidUpdateLegibleContentInsetsAvoidingUI:self];
    }
  }
}

- (void)_loadControlsViewIfNeeded
{
  if (!self)
  {
    return;
  }

  viewIfLoaded = [self viewIfLoaded];
  if (viewIfLoaded && !*(self + 1248))
  {
    v14 = viewIfLoaded;
    if (!*(self + 1192))
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel__updateStyleSheet name:*MEMORY[0x1E69DDC48] object:0];

      v4 = [AVCatalystGlassStyleSheet alloc];
      avkit_mainScreen = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
      traitCollection = [avkit_mainScreen traitCollection];
      v7 = [(AVCatalystGlassStyleSheet *)v4 initWithTraitCollection:traitCollection shouldUseCompactFullScreenSize:*(self + 1232)];
      v8 = *(self + 1192);
      *(self + 1192) = v7;
    }

    if (([self optimizeForPerformance] & 1) == 0)
    {
      [(AVCatalystGlassControlsViewController *)self _loadPlaybackControlsViewIfNeeded];
LABEL_14:
      viewIfLoaded = v14;
      goto LABEL_15;
    }

    viewIfLoaded = v14;
    if (!*(self + 1256))
    {
      if (*(self + 1248))
      {
        v9 = _AVLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18B49C000, v9, OS_LOG_TYPE_ERROR, "Never load the turboModePlaybackControlsPlaceholderView when the playbackControlsView is already loaded!", buf, 2u);
        }
      }

      v10 = [AVCatalystTurboModePlaybackControlsPlaceholderView alloc];
      [*(self + 1176) bounds];
      v11 = [(AVCatalystTurboModePlaybackControlsPlaceholderView *)v10 initWithFrame:*(self + 1192) styleSheet:?];
      v12 = *(self + 1256);
      *(self + 1256) = v11;

      playbackControlsController = [self playbackControlsController];
      [playbackControlsController turboModePlaybackControlsPlaceholderViewDidLoad:*(self + 1256)];

      [*(self + 1176) setActivePlaybackControlsView:*(self + 1256)];
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
      routePickerView = [*(v1 + 1248) routePickerView];
      routingConfiguration = [v1 routingConfiguration];
      [routePickerView setRoutingConfiguration:routingConfiguration];

      playbackControlsController = [v1 playbackControlsController];
      [playbackControlsController playbackControlsViewDidLoad:*(v1 + 1248)];

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
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(AVMobileChromeControlsView *)v5 setBackgroundColor:clearColor];

  v7 = self->_controlsView;

  [(AVCatalystGlassControlsViewController *)self setView:v7];
}

- (void)toggleVisibility:(id)visibility
{
  playbackControlsController = [(AVCatalystGlassControlsViewController *)self playbackControlsController];
  [playbackControlsController togglePlaybackControlsVisibility];
}

- (void)flashControlsWithDuration:(double)duration
{
  playbackControlsController = [(AVCatalystGlassControlsViewController *)self playbackControlsController];
  [playbackControlsController flashPlaybackControlsWithDuration:duration];
}

- (void)glassPlaybackControlsView:(id)view animateAlongsideVisibilityAnimationsWithAnimationCoordinator:(id)coordinator appearingViews:(id)views disappearingViews:(id)disappearingViews
{
  disappearingViewsCopy = disappearingViews;
  viewsCopy = views;
  WeakRetained = objc_loadWeakRetained(&self->_playerViewController);
  contentView = [WeakRetained contentView];
  glassPlaybackControlsView = [contentView glassPlaybackControlsView];
  playbackControlsContainer = [glassPlaybackControlsView playbackControlsContainer];

  v13 = [viewsCopy containsObject:playbackControlsContainer];
  LODWORD(viewsCopy) = [disappearingViewsCopy containsObject:playbackControlsContainer];

  if (v13 != viewsCopy)
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
  playbackControlsController = [(AVCatalystGlassControlsViewController *)self playbackControlsController];
  [playbackControlsController endShowingItemsDueToIndirectUserInteraction];
}

- (void)didBeginIndirectUserInteraction
{
  playbackControlsController = [(AVCatalystGlassControlsViewController *)self playbackControlsController];
  [playbackControlsController beginShowingItemsDueToIndirectUserInteraction];
}

- (BOOL)showsAnalysisControl
{
  playbackControlsController = [(AVCatalystGlassControlsViewController *)self playbackControlsController];
  showsShowTextControl = [playbackControlsController showsShowTextControl];

  return showsShowTextControl;
}

- (void)setShowsAnalysisControl:(BOOL)control
{
  controlCopy = control;
  playbackControlsController = [(AVCatalystGlassControlsViewController *)self playbackControlsController];
  [playbackControlsController setShowsShowTextControl:controlCopy];
}

- (BOOL)showsFullScreenControl
{
  playbackControlsController = [(AVCatalystGlassControlsViewController *)self playbackControlsController];
  allowsEnteringFullScreen = [playbackControlsController allowsEnteringFullScreen];

  return allowsEnteringFullScreen;
}

- (void)setShowsFullScreenControl:(BOOL)control
{
  controlCopy = control;
  playbackControlsController = [(AVCatalystGlassControlsViewController *)self playbackControlsController];
  [playbackControlsController setAllowsEnteringFullScreen:controlCopy];
}

- (id)volumeControlsLayoutItem
{
  [(AVCatalystGlassControlsViewController *)self _loadPlaybackControlsViewIfNeeded];
  playbackControlsView = self->_playbackControlsView;

  return [(AVCatalystGlassPlaybackControlsView *)playbackControlsView volumeControls];
}

- (void)setVolumeController:(id)controller
{
  v6.receiver = self;
  v6.super_class = AVCatalystGlassControlsViewController;
  controllerCopy = controller;
  [(AVMobileControlsViewController *)&v6 setVolumeController:controllerCopy];
  v5 = [(AVCatalystGlassControlsViewController *)self playbackControlsController:v6.receiver];
  [v5 setVolumeController:controllerCopy];
}

- (id)transportControlsLayoutItem
{
  [(AVCatalystGlassControlsViewController *)self _loadPlaybackControlsViewIfNeeded];
  playbackControlsView = self->_playbackControlsView;

  return [(AVCatalystGlassPlaybackControlsView *)playbackControlsView transportControlsView];
}

- (void)setTransportBarCustomMenuItems:(id)items
{
  v6.receiver = self;
  v6.super_class = AVCatalystGlassControlsViewController;
  itemsCopy = items;
  [(AVMobileControlsViewController *)&v6 setTransportBarCustomMenuItems:itemsCopy];
  v5 = [(AVCatalystGlassControlsViewController *)self playbackControlsController:v6.receiver];
  [v5 setTransportBarCustomMenuItems:itemsCopy];
}

- (void)setOptimizeForPerformance:(BOOL)performance
{
  v4.receiver = self;
  v4.super_class = AVCatalystGlassControlsViewController;
  [(AVMobileControlsViewController *)&v4 setOptimizeForPerformance:performance];
  [(AVCatalystGlassControlsViewController *)self _loadControlsViewIfNeeded];
}

- (void)setIncludedControls:(unint64_t)controls
{
  if ([(AVMobileControlsViewController *)self includedControls]!= controls)
  {
    v8.receiver = self;
    v8.super_class = AVCatalystGlassControlsViewController;
    [(AVMobileControlsViewController *)&v8 setIncludedControls:controls];
    playbackControlsController = [(AVCatalystGlassControlsViewController *)self playbackControlsController];
    [playbackControlsController setPlaybackControlsIncludeTransportControls:(controls & 0x19) != 0];

    playbackControlsController2 = [(AVCatalystGlassControlsViewController *)self playbackControlsController];
    [playbackControlsController2 setPlaybackControlsIncludeDisplayModeControls:(controls >> 2) & 1];

    playbackControlsController3 = [(AVCatalystGlassControlsViewController *)self playbackControlsController];
    [playbackControlsController3 setPlaybackControlsIncludeVolumeControls:(controls >> 1) & 1];
  }
}

- (id)displayModeControlsLayoutItem
{
  [(AVCatalystGlassControlsViewController *)self _loadPlaybackControlsViewIfNeeded];
  playbackControlsView = self->_playbackControlsView;

  return [(AVCatalystGlassPlaybackControlsView *)playbackControlsView screenModeControls];
}

- (void)setRoutingConfiguration:(id)configuration
{
  v6.receiver = self;
  v6.super_class = AVCatalystGlassControlsViewController;
  configurationCopy = configuration;
  [(AVMobileControlsViewController *)&v6 setRoutingConfiguration:configurationCopy];
  v5 = [(AVCatalystGlassPlaybackControlsView *)self->_playbackControlsView routePickerView:v6.receiver];
  [v5 setRoutingConfiguration:configurationCopy];
}

- (void)setPrefersFullWidthTransportControls:(BOOL)controls
{
  if (self->_prefersFullWidthTransportControls != controls)
  {
    self->_prefersFullWidthTransportControls = controls;
    [(AVCatalystGlassControlsViewController *)self _updatePrefersFullWidthTransportBarStateIfNeeded];
  }
}

- (void)setPrefersCompactFullScreenControls:(BOOL)controls
{
  if (self->_prefersCompactFullScreenControls != controls)
  {
    self->_prefersCompactFullScreenControls = controls;
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

- (void)setEmbeddedInlineLayoutMargins:(id)margins
{
  marginsCopy = margins;
  if (self->_embeddedInlineLayoutMargins != marginsCopy)
  {
    v6 = marginsCopy;
    objc_storeStrong(&self->_embeddedInlineLayoutMargins, margins);
    [(AVCatalystGlassPlaybackControlsView *)self->_playbackControlsView setOverrideLayoutMarginsWhenEmbeddedInline:v6];
    marginsCopy = v6;
  }
}

- (void)setControlItems:(id)items
{
  v6.receiver = self;
  v6.super_class = AVCatalystGlassControlsViewController;
  itemsCopy = items;
  [(AVMobileControlsViewController *)&v6 setControlItems:itemsCopy];
  v5 = [(AVCatalystGlassControlsViewController *)self playbackControlsController:v6.receiver];
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
  v4.super_class = AVCatalystGlassControlsViewController;
  [(AVCatalystGlassControlsViewController *)&v4 dealloc];
}

- (AVCatalystGlassControlsViewController)initWithPlayerViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = AVCatalystGlassControlsViewController;
  v5 = [(AVCatalystGlassControlsViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_playerViewController, controllerCopy);
    v6->_prefersFullWidthTransportControls = 0;
  }

  return v6;
}

@end