@interface ABActionSelectorViewController
+ (id)assistantSelectorWithActionItems:(id)items selectedIndex:(int64_t)index welcomeView:(id)view detailsView:(id)detailsView;
+ (id)settingsSelectorWithActionItems:(id)items selectedIndex:(int64_t)index detailsView:(id)view;
- (ABActionSelectorViewController)initWithActionItems:(id)items selectedIndex:(int64_t)index welcomeView:(id)view detailsView:(id)detailsView;
- (ABActionSelectorViewControllerDelegate)delegate;
- (void)_clipDuringNavigationTransiton;
- (void)_doRevealScene;
- (void)_renderWithTargetTimestamp:(double)timestamp duration:(double)duration;
- (void)_revealSceneIfNeeded;
- (void)_updateSubviews;
- (void)carouselView:(id)view didDragToOffset:(double)offset initialOffset:(double)initialOffset;
- (void)carouselView:(id)view didSelectItemAtIndex:(int64_t)index;
- (void)dealloc;
- (void)deviceSceneViewControllerWillRenderScene:(id)scene;
- (void)selectActionItemWithIndex:(int64_t)index animated:(BOOL)animated;
- (void)updateActionItems:(id)items animated:(BOOL)animated;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation ABActionSelectorViewController

+ (id)assistantSelectorWithActionItems:(id)items selectedIndex:(int64_t)index welcomeView:(id)view detailsView:(id)detailsView
{
  detailsViewCopy = detailsView;
  viewCopy = view;
  itemsCopy = items;
  v13 = [[self alloc] initWithActionItems:itemsCopy selectedIndex:index welcomeView:viewCopy detailsView:detailsViewCopy];

  return v13;
}

+ (id)settingsSelectorWithActionItems:(id)items selectedIndex:(int64_t)index detailsView:(id)view
{
  viewCopy = view;
  itemsCopy = items;
  v10 = [[self alloc] initWithActionItems:itemsCopy selectedIndex:index welcomeView:0 detailsView:viewCopy];

  return v10;
}

- (ABActionSelectorViewController)initWithActionItems:(id)items selectedIndex:(int64_t)index welcomeView:(id)view detailsView:(id)detailsView
{
  itemsCopy = items;
  viewCopy = view;
  detailsViewCopy = detailsView;
  v22.receiver = self;
  v22.super_class = ABActionSelectorViewController;
  v13 = [(ABActionSelectorViewController *)&v22 initWithNibName:0 bundle:0];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_welcomeView, view);
    objc_storeStrong(&v14->_detailsView, detailsView);
    objc_initWeak(&location, v14);
    v15 = [ABActionSelectorDriver alloc];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __92__ABActionSelectorViewController_initWithActionItems_selectedIndex_welcomeView_detailsView___block_invoke;
    v19[3] = &unk_278BFFC10;
    objc_copyWeak(&v20, &location);
    v16 = [(ABActionSelectorDriver *)&v15->super.isa initWithItems:itemsCopy selectedIndex:index isInWelcomeMode:viewCopy != 0 renderBlock:v19];
    driver = v14->_driver;
    v14->_driver = v16;

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v14;
}

void __92__ABActionSelectorViewController_initWithActionItems_selectedIndex_welcomeView_detailsView___block_invoke(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _renderWithTargetTimestamp:a2 duration:a3];
}

- (void)dealloc
{
  [(ABActionSelectorDriver *)self->_driver pause];
  v3.receiver = self;
  v3.super_class = ABActionSelectorViewController;
  [(ABActionSelectorViewController *)&v3 dealloc];
}

- (void)selectActionItemWithIndex:(int64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(ABCarouselView *)self->_carouselView isDragging])
  {
    selectedIndex = [(ABActionSelectorDriver *)self->_driver selectedIndex];
    if ((index & 0x8000000000000000) == 0 && selectedIndex != index)
    {
      items = [(ABActionSelectorDriver *)self->_driver items];
      v9 = [items count];

      if (v9 > index)
      {
        [(ABActionSelectorDriver *)self->_driver updateSelectedIndex:index animateButtonColor:animatedCopy];
        carouselView = self->_carouselView;

        [(ABCarouselView *)&carouselView->super.super.super.super.super.isa scrollToItemAtIndex:index animated:animatedCopy];
      }
    }
  }
}

- (void)updateActionItems:(id)items animated:(BOOL)animated
{
  animatedCopy = animated;
  driver = self->_driver;
  itemsCopy = items;
  [(ABActionSelectorDriver *)driver updateItems:itemsCopy animateButtonColor:animatedCopy];
  carouselView = self->_carouselView;
  v9 = carouselItems(itemsCopy);

  [(ABCarouselView *)carouselView reloadWithItems:v9 animated:animatedCopy];
}

- (void)viewDidLoad
{
  v95[5] = *MEMORY[0x277D85DE8];
  v93.receiver = self;
  v93.super_class = ABActionSelectorViewController;
  [(ABActionSelectorViewController *)&v93 viewDidLoad];
  v3 = objc_opt_new();
  sceneViewController = self->_sceneViewController;
  self->_sceneViewController = v3;

  [(ABActionSelectorViewController *)self addChildViewController:self->_sceneViewController];
  view = [(ABActionSelectorViewController *)self view];
  view2 = [(ABDeviceSceneViewController *)self->_sceneViewController view];
  [view addSubview:view2];

  view3 = [(ABActionSelectorViewController *)self view];
  [view3 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  view4 = [(ABDeviceSceneViewController *)self->_sceneViewController view];
  [view4 setFrame:{v9, v11, v13, v15}];

  view5 = [(ABDeviceSceneViewController *)self->_sceneViewController view];
  [view5 setAutoresizingMask:18];

  view6 = [(ABDeviceSceneViewController *)self->_sceneViewController view];
  [view6 setUserInteractionEnabled:0];

  view7 = [(ABDeviceSceneViewController *)self->_sceneViewController view];
  [view7 setOpaque:1];

  [(ABDeviceSceneViewController *)&self->_sceneViewController->super.super.super.isa setDelegate:?];
  [(ABDeviceSceneViewController *)self->_sceneViewController didMoveToParentViewController:self];
  if ([(ABActionSelectorDriver *)self->_driver isInWelcomeMode])
  {
    +[ABLoadingSplashView assistantSplashView];
  }

  else
  {
    +[ABLoadingSplashView settingsSplashView];
  }
  v20 = ;
  objc_storeStrong(&self->_splashView, v20);

  view8 = [(ABActionSelectorViewController *)self view];
  [view8 addSubview:self->_splashView];

  view9 = [(ABActionSelectorViewController *)self view];
  [view9 bounds];
  [(UIView *)self->_splashView setFrame:?];

  [(UIView *)self->_splashView setAutoresizingMask:18];
  v23 = [ABShadowView alloc];
  view10 = [(ABActionSelectorViewController *)self view];
  [view10 bounds];
  v25 = [(ABShadowView *)v23 initWithFrame:?];
  shadowView = self->_shadowView;
  self->_shadowView = v25;

  view11 = [(ABActionSelectorViewController *)self view];
  [view11 addSubview:self->_shadowView];

  [(ABShadowView *)self->_shadowView setUserInteractionEnabled:0];
  [(ABShadowView *)self->_shadowView setAutoresizingMask:18];
  v28 = objc_opt_new();
  overlayContainerView = self->_overlayContainerView;
  self->_overlayContainerView = v28;

  view12 = [(ABActionSelectorViewController *)self view];
  [view12 addSubview:self->_overlayContainerView];

  layer = [(ABHitTestPassthroughView *)self->_overlayContainerView layer];
  [layer setAllowsGroupOpacity:0];

  layer2 = [(ABHitTestPassthroughView *)self->_overlayContainerView layer];
  [layer2 setAllowsGroupBlending:0];

  [(ABHitTestPassthroughView *)self->_overlayContainerView setAlpha:0.0];
  v33 = objc_opt_new();
  overlayView = self->_overlayView;
  self->_overlayView = v33;

  layer3 = [(ABTransformView *)self->_overlayView layer];
  [layer3 setGeometryFlipped:1];

  [(ABHitTestPassthroughView *)self->_overlayContainerView addSubview:self->_overlayView];
  v36 = [ABCarouselView alloc];
  items = [(ABActionSelectorDriver *)self->_driver items];
  v38 = carouselItems(items);
  selectedIndex = [(ABActionSelectorDriver *)self->_driver selectedIndex];
  v40 = [(ABCarouselView *)&v36->super.super.super.super.super.isa initWithItems:v38 selectedIndex:selectedIndex];
  carouselView = self->_carouselView;
  self->_carouselView = v40;

  [(ABTransformView *)self->_overlayView addSubview:self->_carouselView];
  view13 = [(ABActionSelectorViewController *)self view];
  scrollGestureRecognizer = [(ABCarouselView *)self->_carouselView scrollGestureRecognizer];
  [view13 addGestureRecognizer:scrollGestureRecognizer];

  [(ABCarouselView *)&self->_carouselView->super.super.super.super.super.isa setDelegate:?];
  v44 = objc_opt_new();
  buttonHighlightView = self->_buttonHighlightView;
  self->_buttonHighlightView = v44;

  [(ABTransformView *)self->_overlayView addSubview:self->_buttonHighlightView];
  view14 = [(ABActionSelectorViewController *)self view];
  [view14 addSubview:self->_detailsView];

  [(UIView *)self->_detailsView setTranslatesAutoresizingMaskIntoConstraints:0];
  v75 = MEMORY[0x277CCAAD0];
  centerXAnchor = [(UIView *)self->_detailsView centerXAnchor];
  view15 = [(ABActionSelectorViewController *)self view];
  centerXAnchor2 = [view15 centerXAnchor];
  v84 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v95[0] = v84;
  leadingAnchor = [(UIView *)self->_detailsView leadingAnchor];
  view16 = [(ABActionSelectorViewController *)self view];
  leadingAnchor2 = [view16 leadingAnchor];
  v76 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v95[1] = v76;
  trailingAnchor = [(UIView *)self->_detailsView trailingAnchor];
  view17 = [(ABActionSelectorViewController *)self view];
  trailingAnchor2 = [view17 trailingAnchor];
  v71 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v95[2] = v71;
  bottomAnchor = [(UIView *)self->_detailsView bottomAnchor];
  view18 = [(ABActionSelectorViewController *)self view];
  safeAreaLayoutGuide = [view18 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  v49 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v95[3] = v49;
  heightAnchor = [(UIView *)self->_detailsView heightAnchor];
  view19 = [(ABActionSelectorViewController *)self view];
  heightAnchor2 = [view19 heightAnchor];
  v53 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.375];
  v95[4] = v53;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:5];
  [v75 activateConstraints:v54];

  [(UIView *)self->_detailsView setAlpha:([(ABActionSelectorDriver *)self->_driver isInWelcomeMode]^ 1)];
  if (self->_welcomeView)
  {
    view20 = [(ABActionSelectorViewController *)self view];
    [view20 addSubview:self->_welcomeView];

    [(UIView *)self->_welcomeView setTranslatesAutoresizingMaskIntoConstraints:0];
    v79 = MEMORY[0x277CCAAD0];
    leadingAnchor3 = [(UIView *)self->_welcomeView leadingAnchor];
    view21 = [(ABActionSelectorViewController *)self view];
    leadingAnchor4 = [view21 leadingAnchor];
    v87 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v94[0] = v87;
    trailingAnchor3 = [(UIView *)self->_welcomeView trailingAnchor];
    view22 = [(ABActionSelectorViewController *)self view];
    trailingAnchor4 = [view22 trailingAnchor];
    v77 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v94[1] = v77;
    bottomAnchor3 = [(UIView *)self->_welcomeView bottomAnchor];
    view23 = [(ABActionSelectorViewController *)self view];
    bottomAnchor4 = [view23 bottomAnchor];
    v59 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v94[2] = v59;
    heightAnchor3 = [(UIView *)self->_welcomeView heightAnchor];
    view24 = [(ABActionSelectorViewController *)self view];
    heightAnchor4 = [view24 heightAnchor];
    v63 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4 multiplier:0.45];
    v94[3] = v63;
    v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:4];
    [v79 activateConstraints:v64];
  }

  v65 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__didTapToZoomIn];
  tapToZoomInRecognizer = self->_tapToZoomInRecognizer;
  self->_tapToZoomInRecognizer = v65;

  view25 = [(ABActionSelectorViewController *)self view];
  [view25 addGestureRecognizer:self->_tapToZoomInRecognizer];

  v68 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = ABActionSelectorViewController;
  [(ABActionSelectorViewController *)&v8 viewDidLayoutSubviews];
  view = [(ABActionSelectorViewController *)self view];
  [view bounds];
  v5 = v4 * 0.5;
  view2 = [(ABActionSelectorViewController *)self view];
  [view2 bounds];
  [(ABHitTestPassthroughView *)self->_overlayContainerView setCenter:v5, v7 * 0.5];
}

- (void)carouselView:(id)view didDragToOffset:(double)offset initialOffset:(double)initialOffset
{
  driver = self->_driver;
  v6 = offset - initialOffset;
  view = [(ABActionSelectorViewController *)self view];
  [view bounds];
  [(ABActionSelectorDriver *)driver updateDragProgress:?];
}

- (void)carouselView:(id)view didSelectItemAtIndex:(int64_t)index
{
  if ((index & 0x8000000000000000) == 0)
  {
    items = [(ABActionSelectorDriver *)self->_driver items];
    v7 = [items count];

    if (v7 > index)
    {
      [(ABActionSelectorDriver *)self->_driver updateSelectedIndex:index animateButtonColor:1];
      delegate = [(ABActionSelectorViewController *)self delegate];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        delegate2 = [(ABActionSelectorViewController *)self delegate];
        [delegate2 actionSelectorViewController:self didSelectItemAtIndex:index];
      }
    }
  }
}

- (void)deviceSceneViewControllerWillRenderScene:(id)scene
{
  memset(&v11, 0, sizeof(v11));
  [(ABDeviceSceneViewController *)self->_sceneViewController actionButtonPerspectiveTransform];
  actionButtonScreenScale = [(ABDeviceSceneViewController *)self->_sceneViewController actionButtonScreenScale];
  CATransform3DMakeScale(&a, actionButtonScreenScale, actionButtonScreenScale, 1.0);
  b = v11;
  CATransform3DConcat(&v10, &a, &b);
  layer = [(ABCarouselView *)self->_carouselView layer];
  a = v10;
  [layer setTransform:&a];

  v7 = v11;
  layer2 = [(ABDeviceButtonHighlightView *)self->_buttonHighlightView layer];
  a = v7;
  [layer2 setTransform:&a];
}

- (void)_renderWithTargetTimestamp:(double)timestamp duration:(double)duration
{
  if ([(ABDeviceSceneViewController *)self->_sceneViewController isScenePresented])
  {
    [(ABActionSelectorViewController *)self _revealSceneIfNeeded];
  }

  sceneViewController = self->_sceneViewController;
  [(ABActionSelectorDriver *)self->_driver sceneRenderInputs];
  if (sceneViewController)
  {
    [(ABDeviceSceneViewController *)sceneViewController renderWithTargetTimestamp:v18 duration:timestamp renderInputs:duration];
  }

  else
  {
  }

  disableActions = [MEMORY[0x277CD9FF0] disableActions];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [(ABActionSelectorViewController *)self _updateSubviews];
  [(ABActionSelectorDriver *)self->_driver overlayRenderInputs];
  [(ABShadowView *)self->_shadowView setTopShadowRatio:v9, v17];

  [MEMORY[0x277CD9FF0] setDisableActions:disableActions];
  [(ABActionSelectorDriver *)self->_driver overlayRenderInputs];
  [(ABDeviceButtonHighlightView *)self->_buttonHighlightView setHighlightRingVisible:v14];

  presentedViewController = [(ABActionSelectorViewController *)self presentedViewController];
  v11 = presentedViewController != 0;

  if (self->_hasPresentedViewController != v11)
  {
    self->_hasPresentedViewController = v11;
    [(ABActionSelectorDriver *)self->_driver occlusionDidChange:?];
  }
}

- (void)_updateSubviews
{
  [(ABDeviceSceneViewController *)&self->_sceneViewController->super.super.super.isa devicePerspectiveTransform];
  transformLayer = [(ABTransformView *)self->_overlayView transformLayer];
  v16 = v20[4];
  v17 = v20[5];
  v18 = v20[6];
  v19 = v20[7];
  v12 = v20[0];
  v13 = v20[1];
  v14 = v20[2];
  v15 = v20[3];
  [transformLayer setSublayerTransform:&v12];

  *&v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  [(ABActionSelectorDriver *)self->_driver overlayRenderInputs];
  [(UIView *)self->_detailsView setAlpha:*(&v14 + 1)];
  [(UIView *)self->_welcomeView setAlpha:*&v15];
  [(UITapGestureRecognizer *)self->_tapToZoomInRecognizer setEnabled:v16];
  v4 = [(ABDeviceSceneViewController *)self->_sceneViewController actionButtonTranslationWithPressProgress:?];
  carouselView = self->_carouselView;
  selectedIndex = [(ABActionSelectorDriver *)self->_driver selectedIndex];
  [(ABCarouselView *)carouselView setZPosition:selectedIndex forItemAtIndex:v4];
  [(ABDeviceButtonHighlightView *)self->_buttonHighlightView setColor:?];
  v7 = MEMORY[0x277CCAB58];
  items = [(ABCarouselView *)&self->_carouselView->super.super.super.super.super.isa items];
  v9 = [v7 indexSetWithIndexesInRange:{0, objc_msgSend(items, "count")}];

  if (v13 == 1)
  {
    [v9 removeIndex:-[ABActionSelectorDriver selectedIndex](self->_driver)];
  }

  [(ABCarouselView *)&self->_carouselView->super.super.super.super.super.isa applyAlphaBlend:v9 toItemsAtIndexes:*(&v12 + 1)];
  v10 = BYTE1(v13);
  scrollGestureRecognizer = [(ABCarouselView *)self->_carouselView scrollGestureRecognizer];
  [scrollGestureRecognizer setEnabled:v10];
}

- (void)_revealSceneIfNeeded
{
  v9 = *MEMORY[0x277D85DE8];
  if (!self->_didRevealScene)
  {
    v3 = ABLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_23DE18000, v3, OS_LOG_TYPE_DEFAULT, "(%{public}@) reveal the scene", buf, 0xCu);
    }

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __54__ABActionSelectorViewController__revealSceneIfNeeded__block_invoke;
    v6[3] = &unk_278BFFC38;
    v6[4] = self;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __54__ABActionSelectorViewController__revealSceneIfNeeded__block_invoke_2;
    v5[3] = &unk_278BFFC60;
    v5[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v6 animations:v5 completion:0.25];
    self->_didRevealScene = 1;
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __54__ABActionSelectorViewController__revealSceneIfNeeded__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1032) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 1016);

  return [v2 setAlpha:0.0];
}

- (void)_doRevealScene
{
  [(ABHitTestPassthroughView *)self->_overlayContainerView setAlpha:1.0];
  [(UIView *)self->_splashView setHidden:1];
  driver = self->_driver;

  [(ABActionSelectorDriver *)driver didRevealScene];
}

- (void)_clipDuringNavigationTransiton
{
  view = [(ABActionSelectorViewController *)self view];
  clipsToBounds = [view clipsToBounds];

  view2 = [(ABActionSelectorViewController *)self view];
  [view2 setClipsToBounds:1];

  transitionCoordinator = [(ABActionSelectorViewController *)self transitionCoordinator];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__ABActionSelectorViewController__clipDuringNavigationTransiton__block_invoke;
  v7[3] = &unk_278BFFC88;
  v7[4] = self;
  v8 = clipsToBounds;
  [transitionCoordinator animateAlongsideTransition:0 completion:v7];
}

void __64__ABActionSelectorViewController__clipDuringNavigationTransiton__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) view];
  [v2 setClipsToBounds:v1];
}

- (ABActionSelectorViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end