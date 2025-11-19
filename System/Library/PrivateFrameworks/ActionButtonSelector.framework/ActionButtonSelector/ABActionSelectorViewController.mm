@interface ABActionSelectorViewController
+ (id)assistantSelectorWithActionItems:(id)a3 selectedIndex:(int64_t)a4 welcomeView:(id)a5 detailsView:(id)a6;
+ (id)settingsSelectorWithActionItems:(id)a3 selectedIndex:(int64_t)a4 detailsView:(id)a5;
- (ABActionSelectorViewController)initWithActionItems:(id)a3 selectedIndex:(int64_t)a4 welcomeView:(id)a5 detailsView:(id)a6;
- (ABActionSelectorViewControllerDelegate)delegate;
- (void)_clipDuringNavigationTransiton;
- (void)_doRevealScene;
- (void)_renderWithTargetTimestamp:(double)a3 duration:(double)a4;
- (void)_revealSceneIfNeeded;
- (void)_updateSubviews;
- (void)carouselView:(id)a3 didDragToOffset:(double)a4 initialOffset:(double)a5;
- (void)carouselView:(id)a3 didSelectItemAtIndex:(int64_t)a4;
- (void)dealloc;
- (void)deviceSceneViewControllerWillRenderScene:(id)a3;
- (void)selectActionItemWithIndex:(int64_t)a3 animated:(BOOL)a4;
- (void)updateActionItems:(id)a3 animated:(BOOL)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation ABActionSelectorViewController

+ (id)assistantSelectorWithActionItems:(id)a3 selectedIndex:(int64_t)a4 welcomeView:(id)a5 detailsView:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [[a1 alloc] initWithActionItems:v12 selectedIndex:a4 welcomeView:v11 detailsView:v10];

  return v13;
}

+ (id)settingsSelectorWithActionItems:(id)a3 selectedIndex:(int64_t)a4 detailsView:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithActionItems:v9 selectedIndex:a4 welcomeView:0 detailsView:v8];

  return v10;
}

- (ABActionSelectorViewController)initWithActionItems:(id)a3 selectedIndex:(int64_t)a4 welcomeView:(id)a5 detailsView:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = ABActionSelectorViewController;
  v13 = [(ABActionSelectorViewController *)&v22 initWithNibName:0 bundle:0];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_welcomeView, a5);
    objc_storeStrong(&v14->_detailsView, a6);
    objc_initWeak(&location, v14);
    v15 = [ABActionSelectorDriver alloc];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __92__ABActionSelectorViewController_initWithActionItems_selectedIndex_welcomeView_detailsView___block_invoke;
    v19[3] = &unk_278BFFC10;
    objc_copyWeak(&v20, &location);
    v16 = [(ABActionSelectorDriver *)&v15->super.isa initWithItems:v10 selectedIndex:a4 isInWelcomeMode:v11 != 0 renderBlock:v19];
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

- (void)selectActionItemWithIndex:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (![(ABCarouselView *)self->_carouselView isDragging])
  {
    v7 = [(ABActionSelectorDriver *)self->_driver selectedIndex];
    if ((a3 & 0x8000000000000000) == 0 && v7 != a3)
    {
      v8 = [(ABActionSelectorDriver *)self->_driver items];
      v9 = [v8 count];

      if (v9 > a3)
      {
        [(ABActionSelectorDriver *)self->_driver updateSelectedIndex:a3 animateButtonColor:v4];
        carouselView = self->_carouselView;

        [(ABCarouselView *)&carouselView->super.super.super.super.super.isa scrollToItemAtIndex:a3 animated:v4];
      }
    }
  }
}

- (void)updateActionItems:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  driver = self->_driver;
  v7 = a3;
  [(ABActionSelectorDriver *)driver updateItems:v7 animateButtonColor:v4];
  carouselView = self->_carouselView;
  v9 = carouselItems(v7);

  [(ABCarouselView *)carouselView reloadWithItems:v9 animated:v4];
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
  v5 = [(ABActionSelectorViewController *)self view];
  v6 = [(ABDeviceSceneViewController *)self->_sceneViewController view];
  [v5 addSubview:v6];

  v7 = [(ABActionSelectorViewController *)self view];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(ABDeviceSceneViewController *)self->_sceneViewController view];
  [v16 setFrame:{v9, v11, v13, v15}];

  v17 = [(ABDeviceSceneViewController *)self->_sceneViewController view];
  [v17 setAutoresizingMask:18];

  v18 = [(ABDeviceSceneViewController *)self->_sceneViewController view];
  [v18 setUserInteractionEnabled:0];

  v19 = [(ABDeviceSceneViewController *)self->_sceneViewController view];
  [v19 setOpaque:1];

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

  v21 = [(ABActionSelectorViewController *)self view];
  [v21 addSubview:self->_splashView];

  v22 = [(ABActionSelectorViewController *)self view];
  [v22 bounds];
  [(UIView *)self->_splashView setFrame:?];

  [(UIView *)self->_splashView setAutoresizingMask:18];
  v23 = [ABShadowView alloc];
  v24 = [(ABActionSelectorViewController *)self view];
  [v24 bounds];
  v25 = [(ABShadowView *)v23 initWithFrame:?];
  shadowView = self->_shadowView;
  self->_shadowView = v25;

  v27 = [(ABActionSelectorViewController *)self view];
  [v27 addSubview:self->_shadowView];

  [(ABShadowView *)self->_shadowView setUserInteractionEnabled:0];
  [(ABShadowView *)self->_shadowView setAutoresizingMask:18];
  v28 = objc_opt_new();
  overlayContainerView = self->_overlayContainerView;
  self->_overlayContainerView = v28;

  v30 = [(ABActionSelectorViewController *)self view];
  [v30 addSubview:self->_overlayContainerView];

  v31 = [(ABHitTestPassthroughView *)self->_overlayContainerView layer];
  [v31 setAllowsGroupOpacity:0];

  v32 = [(ABHitTestPassthroughView *)self->_overlayContainerView layer];
  [v32 setAllowsGroupBlending:0];

  [(ABHitTestPassthroughView *)self->_overlayContainerView setAlpha:0.0];
  v33 = objc_opt_new();
  overlayView = self->_overlayView;
  self->_overlayView = v33;

  v35 = [(ABTransformView *)self->_overlayView layer];
  [v35 setGeometryFlipped:1];

  [(ABHitTestPassthroughView *)self->_overlayContainerView addSubview:self->_overlayView];
  v36 = [ABCarouselView alloc];
  v37 = [(ABActionSelectorDriver *)self->_driver items];
  v38 = carouselItems(v37);
  v39 = [(ABActionSelectorDriver *)self->_driver selectedIndex];
  v40 = [(ABCarouselView *)&v36->super.super.super.super.super.isa initWithItems:v38 selectedIndex:v39];
  carouselView = self->_carouselView;
  self->_carouselView = v40;

  [(ABTransformView *)self->_overlayView addSubview:self->_carouselView];
  v42 = [(ABActionSelectorViewController *)self view];
  v43 = [(ABCarouselView *)self->_carouselView scrollGestureRecognizer];
  [v42 addGestureRecognizer:v43];

  [(ABCarouselView *)&self->_carouselView->super.super.super.super.super.isa setDelegate:?];
  v44 = objc_opt_new();
  buttonHighlightView = self->_buttonHighlightView;
  self->_buttonHighlightView = v44;

  [(ABTransformView *)self->_overlayView addSubview:self->_buttonHighlightView];
  v46 = [(ABActionSelectorViewController *)self view];
  [v46 addSubview:self->_detailsView];

  [(UIView *)self->_detailsView setTranslatesAutoresizingMaskIntoConstraints:0];
  v75 = MEMORY[0x277CCAAD0];
  v88 = [(UIView *)self->_detailsView centerXAnchor];
  v90 = [(ABActionSelectorViewController *)self view];
  v86 = [v90 centerXAnchor];
  v84 = [v88 constraintEqualToAnchor:v86];
  v95[0] = v84;
  v80 = [(UIView *)self->_detailsView leadingAnchor];
  v82 = [(ABActionSelectorViewController *)self view];
  v78 = [v82 leadingAnchor];
  v76 = [v80 constraintEqualToAnchor:v78];
  v95[1] = v76;
  v73 = [(UIView *)self->_detailsView trailingAnchor];
  v74 = [(ABActionSelectorViewController *)self view];
  v72 = [v74 trailingAnchor];
  v71 = [v73 constraintEqualToAnchor:v72];
  v95[2] = v71;
  v69 = [(UIView *)self->_detailsView bottomAnchor];
  v70 = [(ABActionSelectorViewController *)self view];
  v47 = [v70 safeAreaLayoutGuide];
  v48 = [v47 bottomAnchor];
  v49 = [v69 constraintEqualToAnchor:v48];
  v95[3] = v49;
  v50 = [(UIView *)self->_detailsView heightAnchor];
  v51 = [(ABActionSelectorViewController *)self view];
  v52 = [v51 heightAnchor];
  v53 = [v50 constraintEqualToAnchor:v52 multiplier:0.375];
  v95[4] = v53;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:5];
  [v75 activateConstraints:v54];

  [(UIView *)self->_detailsView setAlpha:([(ABActionSelectorDriver *)self->_driver isInWelcomeMode]^ 1)];
  if (self->_welcomeView)
  {
    v55 = [(ABActionSelectorViewController *)self view];
    [v55 addSubview:self->_welcomeView];

    [(UIView *)self->_welcomeView setTranslatesAutoresizingMaskIntoConstraints:0];
    v79 = MEMORY[0x277CCAAD0];
    v91 = [(UIView *)self->_welcomeView leadingAnchor];
    v92 = [(ABActionSelectorViewController *)self view];
    v89 = [v92 leadingAnchor];
    v87 = [v91 constraintEqualToAnchor:v89];
    v94[0] = v87;
    v83 = [(UIView *)self->_welcomeView trailingAnchor];
    v85 = [(ABActionSelectorViewController *)self view];
    v81 = [v85 trailingAnchor];
    v77 = [v83 constraintEqualToAnchor:v81];
    v94[1] = v77;
    v56 = [(UIView *)self->_welcomeView bottomAnchor];
    v57 = [(ABActionSelectorViewController *)self view];
    v58 = [v57 bottomAnchor];
    v59 = [v56 constraintEqualToAnchor:v58];
    v94[2] = v59;
    v60 = [(UIView *)self->_welcomeView heightAnchor];
    v61 = [(ABActionSelectorViewController *)self view];
    v62 = [v61 heightAnchor];
    v63 = [v60 constraintEqualToAnchor:v62 multiplier:0.45];
    v94[3] = v63;
    v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:4];
    [v79 activateConstraints:v64];
  }

  v65 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__didTapToZoomIn];
  tapToZoomInRecognizer = self->_tapToZoomInRecognizer;
  self->_tapToZoomInRecognizer = v65;

  v67 = [(ABActionSelectorViewController *)self view];
  [v67 addGestureRecognizer:self->_tapToZoomInRecognizer];

  v68 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = ABActionSelectorViewController;
  [(ABActionSelectorViewController *)&v8 viewDidLayoutSubviews];
  v3 = [(ABActionSelectorViewController *)self view];
  [v3 bounds];
  v5 = v4 * 0.5;
  v6 = [(ABActionSelectorViewController *)self view];
  [v6 bounds];
  [(ABHitTestPassthroughView *)self->_overlayContainerView setCenter:v5, v7 * 0.5];
}

- (void)carouselView:(id)a3 didDragToOffset:(double)a4 initialOffset:(double)a5
{
  driver = self->_driver;
  v6 = a4 - a5;
  v8 = [(ABActionSelectorViewController *)self view];
  [v8 bounds];
  [(ABActionSelectorDriver *)driver updateDragProgress:?];
}

- (void)carouselView:(id)a3 didSelectItemAtIndex:(int64_t)a4
{
  if ((a4 & 0x8000000000000000) == 0)
  {
    v6 = [(ABActionSelectorDriver *)self->_driver items];
    v7 = [v6 count];

    if (v7 > a4)
    {
      [(ABActionSelectorDriver *)self->_driver updateSelectedIndex:a4 animateButtonColor:1];
      v8 = [(ABActionSelectorViewController *)self delegate];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        v10 = [(ABActionSelectorViewController *)self delegate];
        [v10 actionSelectorViewController:self didSelectItemAtIndex:a4];
      }
    }
  }
}

- (void)deviceSceneViewControllerWillRenderScene:(id)a3
{
  memset(&v11, 0, sizeof(v11));
  [(ABDeviceSceneViewController *)self->_sceneViewController actionButtonPerspectiveTransform];
  v4 = [(ABDeviceSceneViewController *)self->_sceneViewController actionButtonScreenScale];
  CATransform3DMakeScale(&a, v4, v4, 1.0);
  b = v11;
  CATransform3DConcat(&v10, &a, &b);
  v5 = [(ABCarouselView *)self->_carouselView layer];
  a = v10;
  [v5 setTransform:&a];

  v7 = v11;
  v6 = [(ABDeviceButtonHighlightView *)self->_buttonHighlightView layer];
  a = v7;
  [v6 setTransform:&a];
}

- (void)_renderWithTargetTimestamp:(double)a3 duration:(double)a4
{
  if ([(ABDeviceSceneViewController *)self->_sceneViewController isScenePresented])
  {
    [(ABActionSelectorViewController *)self _revealSceneIfNeeded];
  }

  sceneViewController = self->_sceneViewController;
  [(ABActionSelectorDriver *)self->_driver sceneRenderInputs];
  if (sceneViewController)
  {
    [(ABDeviceSceneViewController *)sceneViewController renderWithTargetTimestamp:v18 duration:a3 renderInputs:a4];
  }

  else
  {
  }

  v8 = [MEMORY[0x277CD9FF0] disableActions];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [(ABActionSelectorViewController *)self _updateSubviews];
  [(ABActionSelectorDriver *)self->_driver overlayRenderInputs];
  [(ABShadowView *)self->_shadowView setTopShadowRatio:v9, v17];

  [MEMORY[0x277CD9FF0] setDisableActions:v8];
  [(ABActionSelectorDriver *)self->_driver overlayRenderInputs];
  [(ABDeviceButtonHighlightView *)self->_buttonHighlightView setHighlightRingVisible:v14];

  v10 = [(ABActionSelectorViewController *)self presentedViewController];
  v11 = v10 != 0;

  if (self->_hasPresentedViewController != v11)
  {
    self->_hasPresentedViewController = v11;
    [(ABActionSelectorDriver *)self->_driver occlusionDidChange:?];
  }
}

- (void)_updateSubviews
{
  [(ABDeviceSceneViewController *)&self->_sceneViewController->super.super.super.isa devicePerspectiveTransform];
  v3 = [(ABTransformView *)self->_overlayView transformLayer];
  v16 = v20[4];
  v17 = v20[5];
  v18 = v20[6];
  v19 = v20[7];
  v12 = v20[0];
  v13 = v20[1];
  v14 = v20[2];
  v15 = v20[3];
  [v3 setSublayerTransform:&v12];

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
  v6 = [(ABActionSelectorDriver *)self->_driver selectedIndex];
  [(ABCarouselView *)carouselView setZPosition:v6 forItemAtIndex:v4];
  [(ABDeviceButtonHighlightView *)self->_buttonHighlightView setColor:?];
  v7 = MEMORY[0x277CCAB58];
  v8 = [(ABCarouselView *)&self->_carouselView->super.super.super.super.super.isa items];
  v9 = [v7 indexSetWithIndexesInRange:{0, objc_msgSend(v8, "count")}];

  if (v13 == 1)
  {
    [v9 removeIndex:-[ABActionSelectorDriver selectedIndex](self->_driver)];
  }

  [(ABCarouselView *)&self->_carouselView->super.super.super.super.super.isa applyAlphaBlend:v9 toItemsAtIndexes:*(&v12 + 1)];
  v10 = BYTE1(v13);
  v11 = [(ABCarouselView *)self->_carouselView scrollGestureRecognizer];
  [v11 setEnabled:v10];
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
      v8 = self;
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
  v3 = [(ABActionSelectorViewController *)self view];
  v4 = [v3 clipsToBounds];

  v5 = [(ABActionSelectorViewController *)self view];
  [v5 setClipsToBounds:1];

  v6 = [(ABActionSelectorViewController *)self transitionCoordinator];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__ABActionSelectorViewController__clipDuringNavigationTransiton__block_invoke;
  v7[3] = &unk_278BFFC88;
  v7[4] = self;
  v8 = v4;
  [v6 animateAlongsideTransition:0 completion:v7];
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