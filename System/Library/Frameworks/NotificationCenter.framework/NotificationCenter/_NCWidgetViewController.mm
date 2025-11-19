@interface _NCWidgetViewController
+ (void)_reduceTransparencyDidChange:(id)a3;
+ (void)initialize;
- (BOOL)_setVisibleFrame:(CGRect)a3;
- (UIEdgeInsets)_clientMarginInsets;
- (UIEdgeInsets)_initialLayoutMargins;
- (_NCWidgetViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)_clientPreferredContentHeightPermittingAutolayout:(BOOL)a3 didUseFittingSize:(BOOL *)a4;
- (int64_t)_clientLargestSupportedDisplayMode;
- (void)__performUpdateWithReplyHandler:(id)a3;
- (void)__requestEncodedLayerTreeToURL:(id)a3 withCodingImageFormat:(id)a4 withReplyHandler:(id)a5;
- (void)__setMaximumSize:(CGSize)a3 forDisplayMode:(int64_t)a4;
- (void)__updateLayoutMargins:(id)a3;
- (void)__updateVisibleFrame:(CGRect)a3 withReplyHandler:(id)a4;
- (void)_clientLargestSupportedDisplayModeDidChange;
- (void)_encodeLayerTreeToURL:(id)a3 withCodingImageFormat:(id)a4 withReplyHandler:(id)a5;
- (void)_enqueueProxyRequest:(id)a3;
- (void)_notifyContentProvidingViewControllerOfActiveDisplayModeChange;
- (void)_performUpdateWithCompletionHandler:(id)a3;
- (void)_processInputItems:(id)a3 initialActiveDisplayMode:(int64_t *)a4;
- (void)_requestMarginInsets;
- (void)_requestPreferredViewHeight:(double)a3;
- (void)_setActiveDisplayMode:(int64_t)a3 unconditionallyNotifyingContentProvidingViewController:(BOOL)a4;
- (void)_setContentProvidingViewController:(id)a3;
- (void)_setMaximumWidth:(double)a3 forDisplayMode:(int64_t)a4;
- (void)_setVisibilityState:(int64_t)a3 force:(BOOL)a4;
- (void)beginRequestWithExtensionContext:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)sizeObservingView:(id)a3 didChangeSize:(CGSize)a4;
- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(id)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation _NCWidgetViewController

+ (void)initialize
{
  v25[1] = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    v3 = objc_opt_class();
    NCSwizzleClassMethod(v3, sel_labelColor, sel_nc_labelColor);
    v4 = [MEMORY[0x277D75830] sharedInstance];
    [v4 setKeyboardFencingEnabled:0];

    v5 = MEMORY[0x277D75B40];
    v25[0] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    v7 = [v5 appearanceWhenContainedInInstancesOfClasses:v6];
    v8 = [MEMORY[0x277D75348] clearColor];
    [v7 setBackgroundColor:v8];

    v9 = MEMORY[0x277D75B40];
    v24 = objc_opt_class();
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    v11 = [v9 appearanceWhenContainedInInstancesOfClasses:v10];
    [v11 setSeparatorInset:{*MEMORY[0x277D76F30], 0.0, *MEMORY[0x277D76F30], *MEMORY[0x277D76F30]}];

    v12 = MEMORY[0x277D75B48];
    v23 = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
    v14 = [v12 appearanceWhenContainedInInstancesOfClasses:v13];
    v15 = [MEMORY[0x277D75348] clearColor];
    [v14 setBackgroundColor:v15];

    v16 = MEMORY[0x277D756B8];
    v22 = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    v18 = [v16 appearanceWhenContainedInInstancesOfClasses:v17];
    v19 = [MEMORY[0x277D75348] labelColor];
    [v18 setTextColor:v19];

    v20 = [MEMORY[0x277CCAB98] defaultCenter];
    [v20 addObserver:a1 selector:sel__reduceTransparencyDidChange_ name:*MEMORY[0x277D764C8] object:0];

    [a1 _reduceTransparencyDidChange:0];
  }

  v21 = *MEMORY[0x277D85DE8];
}

+ (void)_reduceTransparencyDidChange:(id)a3
{
  v60[1] = *MEMORY[0x277D85DE8];
  if (!UIAccessibilityIsReduceTransparencyEnabled())
  {
    if (dyld_program_sdk_at_least())
    {
      v13 = MEMORY[0x277D75B40];
      v57 = objc_opt_class();
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
      v15 = [v13 appearanceWhenContainedInInstancesOfClasses:v14];
      v16 = [MEMORY[0x277D75348] whiteColor];
      [v15 setSeparatorColor:v16];

      v17 = MEMORY[0x277D75B40];
      v56 = objc_opt_class();
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
      v19 = [v17 appearanceWhenContainedInInstancesOfClasses:v18];
      v20 = [MEMORY[0x277D75D00] widgetEffectForVibrancyStyle:120];
      [v19 setSeparatorEffect:v20];

      v21 = objc_alloc(MEMORY[0x277D75D68]);
      v22 = [MEMORY[0x277D75D00] widgetEffectForVibrancyStyle:112];
      v11 = [v21 initWithEffect:v22];

      v23 = [v11 contentView];
      v24 = [MEMORY[0x277D75348] whiteColor];
      [v23 setBackgroundColor:v24];

      v25 = MEMORY[0x277D75B48];
      v55 = objc_opt_class();
      v26 = MEMORY[0x277CBEA60];
      v27 = &v55;
    }

    else
    {
      v28 = dyld_program_sdk_at_least();
      v29 = MEMORY[0x277D75B40];
      v30 = objc_opt_class();
      if (!v28)
      {
        v51 = v30;
        v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
        v46 = [v29 appearanceWhenContainedInInstancesOfClasses:v45];
        v47 = [MEMORY[0x277D75348] colorWithWhite:0.52 alpha:1.0];
        [v46 setSeparatorColor:v47];

        v48 = MEMORY[0x277D75B40];
        v50 = objc_opt_class();
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
        v12 = [v48 appearanceWhenContainedInInstancesOfClasses:v11];
        v44 = [MEMORY[0x277D75D00] notificationCenterVibrancyEffect];
        [v12 setSeparatorEffect:v44];
        goto LABEL_9;
      }

      v54 = v30;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
      v32 = [v29 appearanceWhenContainedInInstancesOfClasses:v31];
      v33 = [MEMORY[0x277D26740] _visualStylingProviderForStyleSetNamed:@"platterClientStyle" inBundle:0];
      v34 = [v33 _visualStylingForStyle:2];
      v35 = [v34 color];
      [v32 setSeparatorColor:v35];

      v36 = MEMORY[0x277D75B40];
      v53 = objc_opt_class();
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
      v38 = [v36 appearanceWhenContainedInInstancesOfClasses:v37];
      v39 = [MEMORY[0x277D75D00] widgetTertiaryVibrancyEffect];
      [v38 setSeparatorEffect:v39];

      v40 = objc_alloc(MEMORY[0x277D75D68]);
      v41 = [MEMORY[0x277D75D00] widgetQuaternaryVibrancyEffect];
      v11 = [v40 initWithEffect:v41];

      v42 = [v11 contentView];
      v43 = [v42 tintColor];
      [v11 setBackgroundColor:v43];

      v25 = MEMORY[0x277D75B48];
      v52 = objc_opt_class();
      v26 = MEMORY[0x277CBEA60];
      v27 = &v52;
    }

    v12 = [v26 arrayWithObjects:v27 count:1];
    v44 = [v25 appearanceWhenContainedInInstancesOfClasses:v12];
    [v44 _forSpringBoardSetDefaultSelectedBackgroundView:v11];
LABEL_9:

    goto LABEL_10;
  }

  v3 = MEMORY[0x277D75B40];
  v60[0] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:1];
  v5 = [v3 appearanceWhenContainedInInstancesOfClasses:v4];
  v6 = [MEMORY[0x277D75348] tableSeparatorLightColor];
  [v5 setSeparatorColor:v6];

  v7 = MEMORY[0x277D75B40];
  v59 = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
  v9 = [v7 appearanceWhenContainedInInstancesOfClasses:v8];
  [v9 setSeparatorEffect:0];

  v10 = MEMORY[0x277D75B48];
  v58 = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
  v12 = [v10 appearanceWhenContainedInInstancesOfClasses:v11];
  [v12 _forSpringBoardSetDefaultSelectedBackgroundView:0];
LABEL_10:

  v49 = *MEMORY[0x277D85DE8];
}

- (_NCWidgetViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v12.receiver = self;
  v12.super_class = _NCWidgetViewController;
  v4 = [(_NCWidgetViewController *)&v12 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    NCRegisterWidgetsLogging();
    v5 = dispatch_queue_create("com.apple.NotificationCenter.RVCProxyQueue", 0);
    v6 = *(v4 + 124);
    *(v4 + 124) = v5;

    dispatch_suspend(*(v4 + 124));
    if (dyld_program_sdk_at_least())
    {
      v7 = *MEMORY[0x277D768C8];
      v8 = *(MEMORY[0x277D768C8] + 16);
    }

    else
    {
      v7 = xmmword_22D11FCB0;
      v8 = xmmword_22D11FCC0;
    }

    *(v4 + 1096) = v7;
    *(v4 + 1112) = v8;
    [MEMORY[0x277D757F8] _setPanGestureRecognizersEnabled:0];
    v9 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v10 = *(v4 + 125);
    *(v4 + 125) = v9;

    [v4 setViewRespectsSystemMinimumLayoutMargins:0];
  }

  return v4;
}

- (void)dealloc
{
  remoteViewControllerProxyQueue = self->_remoteViewControllerProxyQueue;
  if (!dispatch_queue_get_specific(remoteViewControllerProxyQueue, "_NCWidgetHostViewControllerQueueIsEnabledTag"))
  {
    dispatch_resume(remoteViewControllerProxyQueue);
  }

  v4.receiver = self;
  v4.super_class = _NCWidgetViewController;
  [(_NCWidgetViewController *)&v4 dealloc];
}

- (void)_enqueueProxyRequest:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    remoteViewControllerProxyQueue = self->_remoteViewControllerProxyQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48___NCWidgetViewController__enqueueProxyRequest___block_invoke;
    block[3] = &unk_278750A48;
    v7 = v4;
    objc_copyWeak(&v8, &location);
    dispatch_async(remoteViewControllerProxyQueue, block);
    objc_destroyWeak(&v8);

    objc_destroyWeak(&location);
  }
}

- (void)_setContentProvidingViewController:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (!self->_contentProvidingViewController)
  {
    v7 = 1;
    if (!v5)
    {
      goto LABEL_21;
    }

    goto LABEL_7;
  }

  if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_ERROR))
  {
    [(_NCWidgetViewController *)v6 _setContentProvidingViewController:?];
  }

  v7 = self->_contentProvidingViewController == 0;
  if (v6)
  {
LABEL_7:
    if (v7)
    {
      objc_storeStrong(&self->_contentProvidingViewController, a3);
      [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController setViewRespectsSystemMinimumLayoutMargins:0];
      [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController willMoveToParentViewController:self];
      [(_NCWidgetViewController *)self addChildViewController:self->_contentProvidingViewController];
      contentProvidingViewController = self->_contentProvidingViewController;
      *&self->_contentProvidingViewControllerFlags = *&self->_contentProvidingViewControllerFlags & 0xFE | objc_opt_respondsToSelector() & 1;
      v9 = self->_contentProvidingViewController;
      if (objc_opt_respondsToSelector())
      {
        v10 = 2;
      }

      else
      {
        v10 = 0;
      }

      *&self->_contentProvidingViewControllerFlags = *&self->_contentProvidingViewControllerFlags & 0xFD | v10;
      v11 = self->_contentProvidingViewController;
      if (objc_opt_respondsToSelector())
      {
        v12 = 4;
      }

      else
      {
        v12 = 0;
      }

      *&self->_contentProvidingViewControllerFlags = *&self->_contentProvidingViewControllerFlags & 0xFB | v12;
      v13 = self->_contentProvidingViewController;
      if (objc_opt_respondsToSelector())
      {
        v14 = 8;
      }

      else
      {
        v14 = 0;
      }

      *&self->_contentProvidingViewControllerFlags = *&self->_contentProvidingViewControllerFlags & 0xF7 | v14;
      v15 = self->_contentProvidingViewController;
      if (objc_opt_respondsToSelector())
      {
        v16 = 16;
      }

      else
      {
        v16 = 0;
      }

      *&self->_contentProvidingViewControllerFlags = *&self->_contentProvidingViewControllerFlags & 0xEF | v16;
    }
  }

LABEL_21:
}

- (void)_requestMarginInsets
{
  if ((dyld_program_sdk_at_least() & 1) == 0 && (*&self->_contentProvidingViewControllerFlags & 2) != 0)
  {
    [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController widgetMarginInsetsForProposedMarginInsets:self->_clientMarginInsets.top, self->_clientMarginInsets.left, self->_clientMarginInsets.bottom, self->_clientMarginInsets.right];
    self->_clientMarginInsets.top = v3;
    self->_clientMarginInsets.left = v4;
    self->_clientMarginInsets.bottom = v5;
    self->_clientMarginInsets.right = v6;
  }
}

- (void)_processInputItems:(id)a3 initialActiveDisplayMode:(int64_t *)a4
{
  v6 = a3;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = dyld_program_sdk_at_least();
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v9 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71___NCWidgetViewController__processInputItems_initialActiveDisplayMode___block_invoke;
  v7[3] = &unk_278750A70;
  v7[4] = self;
  v7[5] = v26;
  v7[6] = v24;
  v7[7] = v22;
  v7[8] = v20;
  v7[9] = v18;
  v7[10] = v16;
  v7[11] = v14;
  v7[12] = v12;
  v7[13] = v10;
  v7[14] = v8;
  v7[15] = a4;
  [v6 enumerateObjectsUsingBlock:v7];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v26, 8);
}

- (void)beginRequestWithExtensionContext:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22.receiver = self;
    v22.super_class = _NCWidgetViewController;
    [(_NCWidgetViewController *)&v22 beginRequestWithExtensionContext:v4];
    [v4 _setHostViewController:self];
    v5 = [(_NCWidgetViewController *)self childViewControllers];
    v6 = [v5 lastObject];
    [(_NCWidgetViewController *)self _setContentProvidingViewController:v6];

    if (!self->_contentProvidingViewController)
    {
      v7 = NCLogWidgets;
      if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22D116000, v7, OS_LOG_TYPE_DEFAULT, "No content providing view controller found", buf, 2u);
      }
    }

    v21 = 0;
    v8 = [v4 inputItems];
    [(_NCWidgetViewController *)self _processInputItems:v8 initialActiveDisplayMode:&v21];

    v9 = NCLogWidgets;
    if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [(_NCWidgetViewController *)self _widgetIdentifier];
      v12 = [(_NCWidgetViewController *)self _containerIdentifier];
      *buf = 138543874;
      v24 = v11;
      v25 = 2050;
      v26 = self;
      v27 = 2114;
      v28 = v12;
      _os_log_impl(&dword_22D116000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Beginning request", buf, 0x20u);
    }

    [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController beginRequestWithExtensionContext:v4];
    [(_NCWidgetViewController *)self _setVisibilityState:self->_visibilityState force:1];
    [(_NCWidgetViewController *)self loadViewIfNeeded];
    v13 = [(_NCWidgetViewController *)self _clientLargestSupportedDisplayMode];
    v14 = v21;
    if (v13 == -1)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __60___NCWidgetViewController_beginRequestWithExtensionContext___block_invoke;
      v20[3] = &__block_descriptor_40_e33_v16__0___NCWidgetViewController_8l;
      v20[4] = v21;
      [(_NCWidgetViewController *)self _enqueueProxyRequest:v20];
    }

    else if (v21 >= v13)
    {
      v14 = v13;
    }

    [(_NCWidgetViewController *)self _setActiveDisplayMode:v14 unconditionallyNotifyingContentProvidingViewController:1];
  }

  else
  {
    v15 = NCLogWidgets;
    if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138543362;
      v24 = v18;
      _os_log_impl(&dword_22D116000, v16, OS_LOG_TYPE_DEFAULT, "Extension context of unexpected class (%{public}@)", buf, 0xCu);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)loadView
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = NCLogWidgets;
  if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(_NCWidgetViewController *)self _widgetIdentifier];
    v6 = [(_NCWidgetViewController *)self _containerIdentifier];
    v11 = 138543874;
    v12 = v5;
    v13 = 2050;
    v14 = self;
    v15 = 2114;
    v16 = v6;
    _os_log_impl(&dword_22D116000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Loading view", &v11, 0x20u);
  }

  v7 = [_NCWidgetViewControllerView alloc];
  v8 = [MEMORY[0x277D759A0] mainScreen];
  [v8 bounds];
  v9 = [(_NCWidgetViewControllerView *)v7 initWithFrame:?];

  [(_NCWidgetViewControllerView *)v9 setAutoresizingMask:18];
  [(NCSizeObservingView *)v9 setDelegate:self];
  [(_NCWidgetViewController *)self setView:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = _NCWidgetViewController;
  [(_NCWidgetViewController *)&v25 viewDidLoad];
  v3 = [(_NCWidgetViewController *)self view];
  [v3 setAutoresizesSubviews:1];
  [v3 setInsetsLayoutMarginsFromSafeArea:0];
  v4 = [v3 layer];
  [v4 setHitTestsAsOpaque:1];

  v5 = [objc_alloc(MEMORY[0x277D759E0]) initWithTarget:self action:sel_delayed_];
  touchDelayGestureRecognizer = self->_touchDelayGestureRecognizer;
  self->_touchDelayGestureRecognizer = v5;

  [(UIScrollViewDelayedTouchesBeganGestureRecognizer *)self->_touchDelayGestureRecognizer setDelaysTouchesBegan:1];
  [v3 addGestureRecognizer:self->_touchDelayGestureRecognizer];
  [(_NCWidgetViewController *)self _requestMarginInsets];
  SanitizedClientFrameFromHostSize(self->_initialBounds.size.width, self->_initialBounds.size.height, self->_clientMarginInsets.top, self->_clientMarginInsets.left, self->_clientMarginInsets.bottom, self->_clientMarginInsets.right);
  v8 = v7;
  v12 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v9, v10, v11, v7}];
  contentView = self->_contentView;
  self->_contentView = v12;

  [(_NCWidgetViewController *)self _requestPreferredViewHeight:v8];
  [(UIView *)self->_contentView setClipsToBounds:1];
  [(UIView *)self->_contentView setAutoresizesSubviews:1];
  [(UIView *)self->_contentView setAutoresizingMask:0];
  [(UIView *)self->_contentView setInsetsLayoutMarginsFromSafeArea:0];
  v14 = *MEMORY[0x277D768C8];
  v15 = *(MEMORY[0x277D768C8] + 8);
  v16 = *(MEMORY[0x277D768C8] + 16);
  v17 = *(MEMORY[0x277D768C8] + 24);
  [(UIView *)self->_contentView setLayoutMargins:*MEMORY[0x277D768C8], v15, v16, v17];
  [(UIView *)self->_contentView setPreservesSuperviewLayoutMargins:1];
  [v3 addSubview:self->_contentView];
  v18 = [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController view];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:1];

  v19 = [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController view];
  [v19 setLayoutMargins:{v14, v15, v16, v17}];

  v20 = [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController view];
  [v20 setPreservesSuperviewLayoutMargins:1];

  v21 = [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController view];
  [(UIView *)self->_contentView bounds];
  [v21 setFrame:?];

  v22 = [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController view];
  [v22 setAutoresizingMask:18];

  v23 = self->_contentView;
  v24 = [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController view];
  [(UIView *)v23 addSubview:v24];

  [v3 setLayoutMargins:{self->_initialLayoutMargins.top, self->_initialLayoutMargins.left, self->_initialLayoutMargins.bottom, self->_initialLayoutMargins.right}];
}

- (void)_requestPreferredViewHeight:(double)a3
{
  [(_NCWidgetViewController *)self _effectiveHeightForRequestedHeight:a3];
  v5 = v4;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __55___NCWidgetViewController__requestPreferredViewHeight___block_invoke;
  v17[3] = &__block_descriptor_40_e33_v16__0___NCWidgetViewController_8l;
  *&v17[4] = v4;
  [(_NCWidgetViewController *)self _enqueueProxyRequest:v17];
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    if ([(_NCWidgetViewController *)self isViewLoaded])
    {
      [(UIView *)self->_contentView frame];
      SanitizedClientFrameFromHostSize(v6, v7, self->_clientMarginInsets.top, self->_clientMarginInsets.left, self->_clientMarginInsets.bottom, self->_clientMarginInsets.right);
      width = v18.size.width;
      height = v18.size.height;
      if (CGRectGetHeight(v18) == v5)
      {
        v10 = objc_alloc_init(MEMORY[0x277D763A0]);
        contentProvidingViewController = self->_contentProvidingViewController;
        v12 = [v10 _transitionCoordinator];
        [(NCWidgetProvidingPrivate *)contentProvidingViewController viewWillTransitionToSize:v12 withTransitionCoordinator:width, height];

        if (self->_clientUsesAutolayout)
        {
          objc_initWeak(&location, self);
          v13 = [v10 _transitionCoordinator];
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __55___NCWidgetViewController__requestPreferredViewHeight___block_invoke_2;
          v14[3] = &unk_278750B08;
          objc_copyWeak(&v15, &location);
          [v13 animateAlongsideTransition:v14 completion:0];

          objc_destroyWeak(&v15);
          objc_destroyWeak(&location);
        }

        [v10 __runAlongsideAnimations];
        [v10 completeTransition:1];
      }
    }
  }
}

- (double)_clientPreferredContentHeightPermittingAutolayout:(BOOL)a3 didUseFittingSize:(BOOL *)a4
{
  v5 = a3;
  [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController preferredContentSize];
  v8 = v7;
  if (v5 && fabs(v7) < 2.22044605e-16)
  {
    v9 = [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController view];
    v10 = [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController view];
    [v10 bounds];
    v12 = v11;
    v14 = v13;
    LODWORD(v11) = 1148846080;
    LODWORD(v13) = 1112014848;
    [v9 systemLayoutSizeFittingSize:v12 withHorizontalFittingPriority:v14 verticalFittingPriority:{v11, v13}];
    v8 = v15;

    if (a4)
    {
      *a4 = 1;
    }
  }

  v16.n128_u64[0] = NCMainScreenScale();
  v17.n128_f64[0] = v8;

  MEMORY[0x2821DE7E8](v17, v16);
  return result;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  if (self->_contentProvidingViewController == a3)
  {
    [(_NCWidgetViewController *)self _clientPreferredContentHeight];

    [(_NCWidgetViewController *)self _requestPreferredViewHeight:?];
  }
}

- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(id)a3
{
  contentProvidingViewController = self->_contentProvidingViewController;
  if (contentProvidingViewController == a3)
  {
    [(NCWidgetProvidingPrivate *)contentProvidingViewController preferredContentSize];
    if (fabs(v5) < 2.22044605e-16)
    {
      [(_NCWidgetViewController *)self _clientPreferredContentHeightPermittingAutolayout:1 didUseFittingSize:&self->_clientUsesAutolayout];

      [(_NCWidgetViewController *)self _requestPreferredViewHeight:?];
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v28 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = NCLogWidgets;
  if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(_NCWidgetViewController *)self _widgetIdentifier];
    v11 = [(_NCWidgetViewController *)self _containerIdentifier];
    v29.width = width;
    v29.height = height;
    v12 = NSStringFromCGSize(v29);
    *buf = 138544130;
    v21 = v10;
    v22 = 2050;
    v23 = self;
    v24 = 2114;
    v25 = v11;
    v26 = 2114;
    v27 = v12;
    _os_log_impl(&dword_22D116000, v9, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Transitioning to size: %{public}@", buf, 0x2Au);
  }

  SanitizedClientFrameFromHostSize(width, height, self->_clientMarginInsets.top, self->_clientMarginInsets.left, self->_clientMarginInsets.bottom, self->_clientMarginInsets.right);
  v13 = v30.size.width;
  v14 = v30.size.height;
  v15 = CGRectGetWidth(v30);
  [(_NCWidgetViewController *)self _setMaximumWidth:0 forDisplayMode:?];
  [(_NCWidgetViewController *)self _setMaximumWidth:1 forDisplayMode:v15];
  v19.receiver = self;
  v19.super_class = _NCWidgetViewController;
  [(_NCWidgetViewController *)&v19 viewWillTransitionToSize:v7 withTransitionCoordinator:v13, v14];
  if (self->_clientUsesAutolayout)
  {
    objc_initWeak(buf, self);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __78___NCWidgetViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v17[3] = &unk_278750B08;
    objc_copyWeak(&v18, buf);
    [v7 animateAlongsideTransition:v17 completion:0];
    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_performUpdateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*&self->_contentProvidingViewControllerFlags)
  {
    v6 = [(_NCWidgetViewController *)self _contentProvidingViewController];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __63___NCWidgetViewController__performUpdateWithCompletionHandler___block_invoke;
    v7[3] = &unk_278750B30;
    v8 = v5;
    [v6 widgetPerformUpdateWithCompletionHandler:v7];
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 1, 0);
  }
}

- (void)_clientLargestSupportedDisplayModeDidChange
{
  v3 = [(_NCWidgetViewController *)self _clientLargestSupportedDisplayMode];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __70___NCWidgetViewController__clientLargestSupportedDisplayModeDidChange__block_invoke;
  v4[3] = &__block_descriptor_40_e33_v16__0___NCWidgetViewController_8l;
  v4[4] = v3 & ~(v3 >> 63);
  [(_NCWidgetViewController *)self _enqueueProxyRequest:v4];
}

- (void)sizeObservingView:(id)a3 didChangeSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v34 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = NCLogWidgets;
  if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_DEBUG))
  {
    v14 = v8;
    v15 = [(_NCWidgetViewController *)self _widgetIdentifier];
    v16 = [(_NCWidgetViewController *)self _containerIdentifier];
    v35.width = width;
    v35.height = height;
    v17 = NSStringFromCGSize(v35);
    [v7 bounds];
    v36.width = v18;
    v36.height = v19;
    v20 = NSStringFromCGSize(v36);
    contentView = self->_contentView;
    v22 = 138544642;
    v23 = v15;
    v24 = 2050;
    v25 = self;
    v26 = 2114;
    v27 = v16;
    v28 = 2114;
    v29 = v17;
    v30 = 2114;
    v31 = v20;
    v32 = 2114;
    v33 = contentView;
    _os_log_debug_impl(&dword_22D116000, v14, OS_LOG_TYPE_DEBUG, "<%{public}@: %{public}p; container: %{public}@> View did change from size: %{public}@; to size: %{public}@; _contentView: %{public}@", &v22, 0x3Eu);
  }

  if (![(UIView *)self->_contentView autoresizingMask])
  {
    v9 = NCLogWidgets;
    if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_DEBUG))
    {
      [(_NCWidgetViewController *)v9 sizeObservingView:&self->_contentView didChangeSize:?];
    }

    v10 = self->_contentView;
    [v7 bounds];
    SanitizedClientFrameFromHostSize(v11, v12, self->_clientMarginInsets.top, self->_clientMarginInsets.left, self->_clientMarginInsets.bottom, self->_clientMarginInsets.right);
    [(UIView *)v10 setFrame:?];
    [(UIView *)self->_contentView setAutoresizingMask:18];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_encodeLayerTreeToURL:(id)a3 withCodingImageFormat:(id)a4 withReplyHandler:(id)a5
{
  v46[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = dispatch_get_global_queue(17, 0);
    v12 = [(_NCWidgetViewController *)self view];
    v13 = 0;
    if (self->_snapshotTimestampsEnabled)
    {
      v13 = objc_alloc_init(MEMORY[0x277D756B8]);
      v14 = MEMORY[0x277CCACA8];
      v15 = MEMORY[0x277CCA968];
      v16 = [MEMORY[0x277CBEAA8] date];
      v17 = [v15 localizedStringFromDate:v16 dateStyle:1 timeStyle:2];
      v18 = [v14 stringWithFormat:@"snapshot - %@", v17];
      [v13 setText:v18];

      v19 = [MEMORY[0x277D75348] redColor];
      [v13 setTextColor:v19];

      v20 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
      [v13 setFont:v20];

      [v13 sizeToFit];
      [v12 addSubview:v13];
      [v13 bounds];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      [v12 bounds];
      Width = CGRectGetWidth(v47);
      v48.origin.x = v22;
      v48.origin.y = v24;
      v48.size.width = v26;
      v48.size.height = v28;
      v30 = Width - CGRectGetWidth(v48);
      [v12 bounds];
      Height = CGRectGetHeight(v49);
      v50.origin.x = v22;
      v50.origin.y = v24;
      v50.size.width = v26;
      v50.size.height = v28;
      [v13 setFrame:{v30, Height - CGRectGetHeight(v50), v26, v28}];
    }

    v32 = [v12 layer];
    v33 = v32;
    if (v8 && v11 && v32)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __88___NCWidgetViewController__encodeLayerTreeToURL_withCodingImageFormat_withReplyHandler___block_invoke;
      block[3] = &unk_278750BA8;
      v40 = v32;
      v41 = v8;
      v42 = v9;
      v43 = v13;
      v44 = v10;
      dispatch_async(v11, block);

      v34 = v40;
    }

    else
    {
      v35 = MEMORY[0x277CCA9B8];
      v45 = *MEMORY[0x277CCA450];
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"There is no layer to encode (%@), we failed to obtain a queue (%@), or no URL was provided (%@)", v32, v11, v8];
      v46[0] = v34;
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
      v37 = [v35 errorWithDomain:@"NCWidgetErrorDomain" code:3 userInfo:v36];
      (*(v10 + 2))(v10, v37);
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (int64_t)_clientLargestSupportedDisplayMode
{
  if (!dyld_program_sdk_at_least())
  {
    return 1;
  }

  v3 = [(_NCWidgetViewController *)self _widgetExtensionContext];
  v4 = [v3 _largestAvailableDisplayMode];

  return v4;
}

- (void)_notifyContentProvidingViewControllerOfActiveDisplayModeChange
{
  v20 = *MEMORY[0x277D85DE8];
  if ((*&self->_contentProvidingViewControllerFlags & 4) != 0)
  {
    v3 = [(_NCWidgetViewController *)self _widgetExtensionContext];
    v4 = [v3 _activeDisplayMode];
    v5 = NCLogWidgets;
    if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [(_NCWidgetViewController *)self _widgetIdentifier];
      v8 = [(_NCWidgetViewController *)self _containerIdentifier];
      v9 = NCStringFromWidgetDisplayMode(v4);
      v12 = 138544130;
      v13 = v7;
      v14 = 2050;
      v15 = self;
      v16 = 2114;
      v17 = v8;
      v18 = 2114;
      v19 = v9;
      _os_log_impl(&dword_22D116000, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Notifying content providing view controller of active display mode change: %{public}@", &v12, 0x2Au);
    }

    v10 = [(_NCWidgetViewController *)self _contentProvidingViewController];
    [v3 _maximumSizeForDisplayMode:v4];
    [v10 widgetActiveDisplayModeDidChange:v4 withMaximumSize:?];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_setActiveDisplayMode:(int64_t)a3 unconditionallyNotifyingContentProvidingViewController:(BOOL)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = NCLogWidgets;
  if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(_NCWidgetViewController *)self _widgetIdentifier];
    v10 = [(_NCWidgetViewController *)self _containerIdentifier];
    v11 = NCStringFromWidgetDisplayMode(a3);
    v15 = 138544130;
    v16 = v9;
    v17 = 2050;
    v18 = self;
    v19 = 2114;
    v20 = v10;
    v21 = 2114;
    v22 = v11;
    _os_log_impl(&dword_22D116000, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Setting active display mode: %{public}@", &v15, 0x2Au);
  }

  v12 = [(_NCWidgetViewController *)self _widgetExtensionContext];
  v13 = [v12 _activeDisplayMode];
  [v12 _setActiveDisplayMode:a3];
  if (a4 || v13 != [v12 _activeDisplayMode])
  {
    [(_NCWidgetViewController *)self _notifyContentProvidingViewControllerOfActiveDisplayModeChange];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_setMaximumWidth:(double)a3 forDisplayMode:(int64_t)a4
{
  v7 = [(_NCWidgetViewController *)self _widgetExtensionContext];
  [v7 _maximumSizeForDisplayMode:a4];
  v9 = v8;

  v10 = [(_NCWidgetViewController *)self _widgetExtensionContext];
  [v10 _setMaximumSize:a4 forDisplayMode:{a3, v9}];
}

- (void)_setVisibilityState:(int64_t)a3 force:(BOOL)a4
{
  v19 = *MEMORY[0x277D85DE8];
  if (a4 || self->_visibilityState != a3)
  {
    self->_visibilityState = a3;
    if ((*&self->_contentProvidingViewControllerFlags & 8) != 0)
    {
      v5 = NCLogWidgets;
      if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
        v7 = [(_NCWidgetViewController *)self _widgetIdentifier];
        v8 = [(_NCWidgetViewController *)self _containerIdentifier];
        v9 = NCStringFromWidgetVisibilityState(self->_visibilityState);
        v11 = 138544130;
        v12 = v7;
        v13 = 2050;
        v14 = self;
        v15 = 2114;
        v16 = v8;
        v17 = 2114;
        v18 = v9;
        _os_log_impl(&dword_22D116000, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Updating visibility state: %{public}@", &v11, 0x2Au);
      }

      [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController widgetDidBecomeForeground:self->_visibilityState == 1];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_setVisibleFrame:(CGRect)a3
{
  v25 = *MEMORY[0x277D85DE8];
  contentProvidingViewControllerFlags = self->_contentProvidingViewControllerFlags;
  if ((*&contentProvidingViewControllerFlags & 0x10) != 0)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    v9 = NCLogWidgets;
    if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [(_NCWidgetViewController *)self _widgetIdentifier];
      v12 = [(_NCWidgetViewController *)self _containerIdentifier];
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      v13 = NSStringFromCGRect(v26);
      v17 = 138544130;
      v18 = v11;
      v19 = 2050;
      v20 = self;
      v21 = 2114;
      v22 = v12;
      v23 = 2114;
      v24 = v13;
      _os_log_impl(&dword_22D116000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Updating visibility frame: %{public}@", &v17, 0x2Au);
    }

    [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController widgetVisibleFrameDidChange:x, y, width, height];
  }

  v14 = *MEMORY[0x277D85DE8];
  return (*&contentProvidingViewControllerFlags >> 4) & 1;
}

- (void)__setMaximumSize:(CGSize)a3 forDisplayMode:(int64_t)a4
{
  height = a3.height;
  width = a3.width;
  v7 = [(_NCWidgetViewController *)self _widgetExtensionContext];
  [v7 _setMaximumSize:a4 forDisplayMode:{width, height}];
}

- (void)__requestEncodedLayerTreeToURL:(id)a3 withCodingImageFormat:(id)a4 withReplyHandler:(id)a5
{
  if (a5)
  {
    [(_NCWidgetViewController *)self _encodeLayerTreeToURL:a3 withCodingImageFormat:a4 withReplyHandler:?];
  }
}

- (void)__performUpdateWithReplyHandler:(id)a3
{
  if (a3)
  {
    [(_NCWidgetViewController *)self _performUpdateWithCompletionHandler:?];
  }
}

- (void)__updateVisibleFrame:(CGRect)a3 withReplyHandler:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v9 = [(_NCWidgetViewController *)self _setVisibleFrame:x, y, width, height];
  v10 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11, v9);
    v10 = v11;
  }
}

- (void)__updateLayoutMargins:(id)a3
{
  string = a3;
  if ([(NSString *)string length])
  {
    v4 = [(_NCWidgetViewController *)self viewIfLoaded];
    v7 = UIEdgeInsetsFromString(string);
    [v4 setLayoutMargins:{v7.top, v7.left, v7.bottom, v7.right}];
  }
}

- (UIEdgeInsets)_clientMarginInsets
{
  top = self->_clientMarginInsets.top;
  left = self->_clientMarginInsets.left;
  bottom = self->_clientMarginInsets.bottom;
  right = self->_clientMarginInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)_initialLayoutMargins
{
  top = self->_initialLayoutMargins.top;
  left = self->_initialLayoutMargins.left;
  bottom = self->_initialLayoutMargins.bottom;
  right = self->_initialLayoutMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_setContentProvidingViewController:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_22D116000, v3, OS_LOG_TYPE_ERROR, "Attempt to set content providing VC (%{public}@) when one already exists (%{public}@)", v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)sizeObservingView:(uint64_t *)a3 didChangeSize:.cold.1(void *a1, void *a2, uint64_t *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 _widgetIdentifier];
  v7 = [a2 _containerIdentifier];
  v8 = *a3;
  v10 = 138544130;
  v11 = v6;
  v12 = 2050;
  v13 = a2;
  v14 = 2114;
  v15 = v7;
  v16 = 2114;
  v17 = v8;
  _os_log_debug_impl(&dword_22D116000, v5, OS_LOG_TYPE_DEBUG, "<%{public}@: %{public}p; container: %{public}@> Updating content view autoresizing mask: %{public}@", &v10, 0x2Au);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)__openTransactionForAppearanceCallWithState:(void *)a1 withIdentifier:(void *)a2 .cold.1(void **a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = a2;
  [v3 count];
  v5 = *a1;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_22D116000, v4, OS_LOG_TYPE_ERROR, "have %{public}lu open appearance transactions (expected 0 or 1): %{public}@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end