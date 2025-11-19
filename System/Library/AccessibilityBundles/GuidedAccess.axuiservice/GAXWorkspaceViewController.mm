@interface GAXWorkspaceViewController
- (BOOL)eventStealerView:(id)a3 shouldStealEventAtPoint:(CGPoint)a4;
- (BOOL)isInterestAreaViewAccessibilityElementWithController:(id)a3;
- (BOOL)isTouchEnabled;
- (BOOL)navigationBarNeedsMiniMetricsInitialized;
- (CGRect)_adjustedBottomChromeViewFrame:(CGRect)a3;
- (CGRect)_adjustedTopChromeViewFrame:(CGRect)a3;
- (CGRect)boundsForConstrainingFingerPathInInterestAreaViewController:(id)a3;
- (CGSize)_instructionsLabelMaximumSize;
- (GAXUIServer)userInterfaceServer;
- (GAXWorkspaceViewController)initWithCoder:(id)a3;
- (GAXWorkspaceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (GAXWorkspaceViewController)initWithOverlayUserInterfaceViewController:(id)a3;
- (UIEdgeInsets)_hostedApplicationViewEdgeInsetsForLayoutMode:(int)a3 interfaceOrientation:(int64_t)a4;
- (double)_transitionDuration;
- (double)scaleForSpecialControlsInInterestAreaViewController:(id)a3;
- (double)statusBarHeight;
- (id)_instructionsLabelTextWhenTouchEnabled:(BOOL)a3;
- (id)_instructionsLabelWithText:(id)a3;
- (id)referenceViewForConvertingFromAndToWindowCoordinateSystemForInterestAreaViewController:(id)a3;
- (id)viewForPresentingOverlayUserInterfaceForFeatureViewController:(id)a3;
- (id)viewToCoverWithOutOfBoundsDrawingForInterestAreaViewWithController:(id)a3 edgeInsets:(UIEdgeInsets *)a4;
- (int64_t)applicationInterfaceOrientation;
- (void)_getHostedApplicationViewParametersForLayoutMode:(int)a3 scaleFactor:(double *)a4 frame:(CGRect *)a5 targetSize:(CGSize)a6;
- (void)_handleDismissButtonTapped:(id)a3;
- (void)_handleStartButtonTapped:(id)a3;
- (void)_loadHostedApplicationShadowViewWithContainerView:(id)a3;
- (void)_loadInstructionsLabelWithContainerView:(id)a3;
- (void)_loadInterestAreaViewWithContainerView:(id)a3;
- (void)_loadNavigationBarWithContainerView:(id)a3;
- (void)_loadStatusAndNavigationBarBackgroundViewWithContainerView:(id)a3;
- (void)_loadStatusBarWithContainerView:(id)a3;
- (void)_loadSystemFeatureViewWithContainerView:(id)a3;
- (void)_performOrScheduleTransitionWithType:(int)a3 completion:(id)a4;
- (void)_performTransitionWithType:(int)a3 completion:(id)a4;
- (void)_updateEverythingForLayoutMode:(int)a3;
- (void)_updateHostedApplicationShadowView;
- (void)_updateHostedApplicationViewWithAnimationDuration:(double)a3 targetSize:(CGSize)a4;
- (void)_updateInstructionsLabel;
- (void)_updateInterestAreaView;
- (void)_updateNavigationBar;
- (void)_updateStatusAndNavigationBarBackgroundView;
- (void)_updateStatusBar;
- (void)_updateSystemFeatureView;
- (void)_willBeginTransitionWithType:(int)a3;
- (void)archiveInterestAreaPathsForStorageInterestAreaViewController:(id)a3;
- (void)dealloc;
- (void)featureViewController:(id)a3 touchSystemFeatureDidChange:(BOOL)a4;
- (void)getInterestAreaPathForFingerPath:(id)a3 interestAreaViewController:(id)a4 completion:(id)a5;
- (void)interestAreaViewController:(id)a3 didRotateFromInterfaceOrientation:(int64_t)a4;
- (void)interestAreaViewController:(id)a3 willRotateToInterfaceOrientation:(int64_t)a4 duration:(double)a5;
- (void)loadView;
- (void)releaseOutlets;
- (void)setStyleProvider:(id)a3;
- (void)setUserInterfaceServer:(id)a3;
- (void)updateViewConstraints;
- (void)viewDidLayoutSubviews;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewDidUnload;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation GAXWorkspaceViewController

- (GAXWorkspaceViewController)initWithOverlayUserInterfaceViewController:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = GAXWorkspaceViewController;
  v5 = [(GAXViewController *)&v10 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      v7 = GAXLocString(@"GUIDED_ACCESS_TITLE");
      [(GAXWorkspaceViewController *)v6 setTitle:v7];

      [(GAXWorkspaceViewController *)v6 setOverlayUserInterfaceViewController:v4];
      v8 = objc_opt_new();
      [v8 setAllowsDimmingInterestAreaPaths:0];
      [v8 setEditing:0];
      [v8 setDelegate:v6];
      [v4 addChildViewController:v8];
      [v8 didMoveToParentViewController:v4];
      [(GAXWorkspaceViewController *)v6 setInterestAreaViewController:v8];
    }

    else
    {
      v8 = v5;
      v6 = 0;
    }
  }

  return v6;
}

- (GAXWorkspaceViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6.receiver = self;
  v6.super_class = GAXWorkspaceViewController;
  v4 = [(GAXViewController *)&v6 initWithNibName:a3 bundle:a4];
  if (v4)
  {
  }

  return 0;
}

- (GAXWorkspaceViewController)initWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GAXWorkspaceViewController;
  v3 = [(GAXViewController *)&v5 initWithCoder:a3];
  if (v3)
  {
  }

  return 0;
}

- (void)dealloc
{
  v3 = [(GAXWorkspaceViewController *)self interestAreaViewController];
  [v3 setDelegate:0];

  v4 = [(GAXWorkspaceViewController *)self interestAreaViewController];
  if ([v4 isViewLoaded])
  {
    v5 = [v4 interestAreaView];
    [v5 setEventStealerViewDelegate:0];

    v6 = [v4 view];
    [v6 removeFromSuperview];
  }

  [v4 willMoveToParentViewController:0];
  [v4 removeFromParentViewController];

  v7.receiver = self;
  v7.super_class = GAXWorkspaceViewController;
  [(GAXViewController *)&v7 dealloc];
}

- (void)setUserInterfaceServer:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_userInterfaceServer);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_userInterfaceServer, obj);
    v5 = [(GAXWorkspaceViewController *)self featureViewController];
    [v5 setUserInterfaceServer:obj];

    LODWORD(v5) = [(GAXWorkspaceViewController *)self isTouchEnabled];
    v6 = [(GAXWorkspaceViewController *)self interestAreaViewController];
    [v6 setBackgroundShouldCoverEverything:v5 ^ 1];
  }
}

- (void)setStyleProvider:(id)a3
{
  v5 = a3;
  if (self->_styleProvider != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_styleProvider, a3);
    v6 = [(GAXWorkspaceViewController *)self interestAreaViewController];
    [v6 setStyleProvider:v7];

    v5 = v7;
  }
}

- (double)statusBarHeight
{
  v2 = [(GAXWorkspaceViewController *)self statusBar];
  [v2 bounds];
  Height = CGRectGetHeight(v5);

  return Height;
}

- (int64_t)applicationInterfaceOrientation
{
  v2 = +[AXUIDisplayManager sharedDisplayManager];
  v3 = [v2 activeInterfaceOrientation];

  return v3;
}

- (BOOL)navigationBarNeedsMiniMetricsInitialized
{
  v3 = [(GAXWorkspaceViewController *)self styleProvider];
  v4 = v3;
  if (v3)
  {
    if ([v3 workspaceNavigationBarNeedsMiniMetricsInitialized])
    {
      v5 = [(GAXWorkspaceViewController *)self applicationInterfaceOrientation];
      v6 = (v5 - 1) > 3 || (v5 - 3) < 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)isTouchEnabled
{
  v2 = [(GAXWorkspaceViewController *)self userInterfaceServer];
  v3 = [v2 allowsTouch];

  return v3;
}

- (void)loadView
{
  v3 = +[UIScreen mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  Width = v10;

  if ([(GAXWorkspaceViewController *)self interfaceOrientation]- 3 <= &dword_0 + 1)
  {
    v20.origin.x = v5;
    v20.origin.y = v7;
    v20.size.width = v9;
    v20.size.height = Width;
    Height = CGRectGetHeight(v20);
    v21.origin.x = v5;
    v21.origin.y = v7;
    v21.size.width = v9;
    v21.size.height = Width;
    Width = CGRectGetWidth(v21);
    v9 = Height;
  }

  v18 = [[UIView alloc] initWithFrame:{v5, v7, v9, Width}];
  [v18 setAutoresizingMask:18];
  [v18 setUserInteractionEnabled:1];
  v13 = [v18 layer];
  [v13 setHitTestsAsOpaque:1];

  [(GAXWorkspaceViewController *)self _loadNavigationBarWithContainerView:v18];
  [(GAXWorkspaceViewController *)self _loadStatusAndNavigationBarBackgroundViewWithContainerView:v18];
  v14 = [(GAXWorkspaceViewController *)self styleProvider];
  v15 = [v14 workspaceInstructionsLabelShouldBeDisplayed];

  if (v15)
  {
    [(GAXWorkspaceViewController *)self _loadInstructionsLabelWithContainerView:v18];
  }

  [(GAXWorkspaceViewController *)self _loadSystemFeatureViewWithContainerView:v18];
  [(GAXWorkspaceViewController *)self _loadStatusBarWithContainerView:v18];
  [(GAXWorkspaceViewController *)self _loadHostedApplicationShadowViewWithContainerView:v18];
  v16 = [(GAXWorkspaceViewController *)self overlayUserInterfaceViewController];
  v17 = [v16 view];
  [(GAXWorkspaceViewController *)self _loadInterestAreaViewWithContainerView:v17];

  [(GAXWorkspaceViewController *)self _updateEverythingForLayoutMode:1];
  [(GAXViewController *)self setView:v18];
}

- (void)viewDidUnload
{
  v3.receiver = self;
  v3.super_class = GAXWorkspaceViewController;
  [(GAXViewController *)&v3 viewDidUnload];
  [(GAXWorkspaceViewController *)self setLayoutMode:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = GAXWorkspaceViewController;
  [(GAXWorkspaceViewController *)&v7 viewWillAppear:a3];
  v4 = [(GAXWorkspaceViewController *)self applicationInterfaceOrientation];
  if ((v4 - 1) <= 3)
  {
    v5 = v4;
    v6 = [(GAXWorkspaceViewController *)self statusBar];
    [v6 setOrientation:v5];
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = GAXWorkspaceViewController;
  [(GAXWorkspaceViewController *)&v3 viewDidLayoutSubviews];
  [(GAXWorkspaceViewController *)self _updateInterestAreaView];
  [(GAXWorkspaceViewController *)self _updateHostedApplicationShadowView];
  [(GAXWorkspaceViewController *)self _updateInstructionsLabel];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = GAXWorkspaceViewController;
  [(GAXWorkspaceViewController *)&v15 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(GAXWorkspaceViewController *)self interestAreaViewController];
  v9 = [v8 view];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1EC48;
  v11[3] = &unk_5D998;
  v11[4] = self;
  v12 = v7;
  v13 = width;
  v14 = height;
  v10 = v7;
  [v10 animateAlongsideTransitionInView:v9 animation:v11 completion:&stru_5D9D8];
}

- (void)releaseOutlets
{
  v4.receiver = self;
  v4.super_class = GAXWorkspaceViewController;
  [(GAXViewController *)&v4 releaseOutlets];
  v3 = [(GAXWorkspaceViewController *)self featureViewController];
  [v3 setDelegate:0];
  [(GAXWorkspaceViewController *)self setFeatureViewController:0];
  [(GAXWorkspaceViewController *)self setStatusBar:0];
  [(GAXWorkspaceViewController *)self setNavigationBar:0];
  [(GAXWorkspaceViewController *)self setStatusAndNavigationBarBackgroundView:0];
  [(GAXWorkspaceViewController *)self setInstructionsLabel:0];
  [(GAXWorkspaceViewController *)self setHostedApplicationShadowView:0];
}

- (void)_handleStartButtonTapped:(id)a3
{
  v3 = [(GAXWorkspaceViewController *)self userInterfaceServer];
  [v3 transitionToMode:2];
}

- (void)_handleDismissButtonTapped:(id)a3
{
  v3 = [(GAXWorkspaceViewController *)self userInterfaceServer];
  [v3 transitionToMode:0];
}

- (id)_instructionsLabelWithText:(id)a3
{
  v4 = a3;
  v5 = [(GAXWorkspaceViewController *)self styleProvider];
  v6 = [v5 workspaceInstructionsLabelFont];
  v7 = [GAXInterfaceUtilities labelWithText:v4 font:v6 allowMultipleLines:1 styleProvider:v5];

  [v7 setAutoresizingMask:0];

  return v7;
}

- (id)_instructionsLabelTextWhenTouchEnabled:(BOOL)a3
{
  if (a3)
  {
    v4 = GAXLocString(@"HELP_INTEREST_AREA");
  }

  else
  {
    v4 = &stru_5E950;
  }

  return v4;
}

- (CGSize)_instructionsLabelMaximumSize
{
  v3 = [(GAXWorkspaceViewController *)self instructionsLabel];
  v4 = [v3 superview];

  v5 = [(GAXWorkspaceViewController *)self styleProvider];
  [v5 hostedApplicationScaledFrameEdgeInsetsForInterfaceOrientation:{-[GAXWorkspaceViewController interfaceOrientation](self, "interfaceOrientation")}];
  v7 = v6;
  v9 = v8;
  [v5 workspaceInstructionsLabelEdgeInsets];
  v36 = v11;
  v37 = v10;
  v38 = v13;
  v39 = v12;
  [v4 bounds];
  v15 = v14;
  v17 = v16;
  v18 = [(GAXWorkspaceViewController *)self navigationBar];
  [v18 frame];
  MaxY = CGRectGetMaxY(v43);

  v20 = [(GAXWorkspaceViewController *)self featureViewController];
  v21 = [v20 view];
  [v21 frame];
  Height = CGRectGetHeight(v44);

  v23 = [v5 workspaceInstructionsLabelFont];
  v40 = [(GAXWorkspaceViewController *)self _instructionsLabelTextWhenTouchEnabled:0];
  v24 = [(GAXWorkspaceViewController *)self _instructionsLabelTextWhenTouchEnabled:1];
  width = CGSizeZero.width;
  v26 = CGSizeZero.height;
  v27 = v17 - MaxY - v7 - v9 - v37 - v36 - Height;
  v41 = v24;
  v28 = &v40;
  v29 = 1;
  do
  {
    v30 = v29;
    [GAXInterfaceUtilities labelSizeThatFitsText:*v28 constrainedToSize:v23 font:v5 styleProvider:v15 - v39 - v38, v27];
    v29 = 0;
    if (width < v31)
    {
      width = v31;
    }

    if (v26 < v32)
    {
      v26 = v32;
    }

    v28 = &v41;
  }

  while ((v30 & 1) != 0);
  for (i = 8; i != -8; i -= 8)
  {
  }

  v34 = width;
  v35 = v26;
  result.height = v35;
  result.width = v34;
  return result;
}

- (UIEdgeInsets)_hostedApplicationViewEdgeInsetsForLayoutMode:(int)a3 interfaceOrientation:(int64_t)a4
{
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v11 = [(GAXWorkspaceViewController *)self styleProvider];
  v12 = v11;
  if (a3 == 2 && v11)
  {
    [v11 hostedApplicationScaledFrameEdgeInsetsForInterfaceOrientation:a4];
    v14 = v13;
    left = v15;
    v17 = v16;
    right = v18;
    v19 = [(GAXWorkspaceViewController *)self navigationBar];
    [v19 frame];
    MaxY = CGRectGetMaxY(v36);

    if ([v12 workspaceInstructionsLabelShouldBeDisplayed])
    {
      [v12 workspaceInstructionsLabelEdgeInsets];
      v22 = v17 + v21;
      [v12 workspaceInstructionsLabelEdgeInsets];
      v24 = v22 + v23;
      [(GAXWorkspaceViewController *)self _instructionsLabelMaximumSize];
      v17 = v24 + v25;
    }

    top = v14 + MaxY;
    v26 = [(GAXWorkspaceViewController *)self featureViewController];
    v27 = [v26 view];
    v28 = [(GAXWorkspaceViewController *)self viewIfLoaded];
    [v28 frame];
    [v27 systemLayoutSizeFittingSize:{v29, 0.0}];
    v31 = v30;

    bottom = v17 + v31;
  }

  v32 = top;
  v33 = left;
  v34 = bottom;
  v35 = right;
  result.right = v35;
  result.bottom = v34;
  result.left = v33;
  result.top = v32;
  return result;
}

- (void)_getHostedApplicationViewParametersForLayoutMode:(int)a3 scaleFactor:(double *)a4 frame:(CGRect *)a5 targetSize:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v10 = *&a3;
  v33 = [(GAXWorkspaceViewController *)self interestAreaViewController];
  v12 = [v33 view];
  [v12 bounds];
  v15 = CGSizeZero.width == width;
  v16 = CGSizeZero.height == height;
  if (v15 && v16)
  {
    v17 = v14;
  }

  else
  {
    v17 = height;
  }

  if (v15 && v16)
  {
    v18 = v13;
  }

  else
  {
    v18 = width;
  }

  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  v21 = [(GAXWorkspaceViewController *)self styleProvider];
  if (v21)
  {
    v22 = [v12 window];
    v23 = [v22 safeValueForKey:@"_toWindowOrientation"];
    v24 = [v23 intValue];

    [(GAXWorkspaceViewController *)self _hostedApplicationViewEdgeInsetsForLayoutMode:v10 interfaceOrientation:v24];
    x = CGRectZero.origin.x + v25;
    y = y + v26;
    v28 = v18 - (v25 + v27);
    v30 = v17 - (v26 + v29);
    v35.origin.x = CGRectZero.origin.x + v25;
    v35.origin.y = y;
    v35.size.width = v28;
    v35.size.height = v30;
    v31 = CGRectGetWidth(v35) / v18;
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = v28;
    v36.size.height = v30;
    v32 = CGRectGetHeight(v36) / v17;
    if (v31 < v32)
    {
      v32 = v31;
    }

    v17 = v30;
    v18 = v28;
    if (a4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v32 = 1.0;
    if (a4)
    {
LABEL_11:
      *a4 = v32;
    }
  }

  if (a5)
  {
    a5->origin.x = x;
    a5->origin.y = y;
    a5->size.width = v18;
    a5->size.height = v17;
  }
}

- (CGRect)_adjustedTopChromeViewFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(GAXWorkspaceViewController *)self layoutMode]== 1)
  {
    [(GAXWorkspaceViewController *)self _hostedApplicationViewEdgeInsetsForLayoutMode:2 interfaceOrientation:[(GAXWorkspaceViewController *)self interfaceOrientation]];
    y = y - v8;
  }

  v9 = x;
  v10 = y;
  v11 = width;
  v12 = height;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)_adjustedBottomChromeViewFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(GAXWorkspaceViewController *)self layoutMode]== 1)
  {
    [(GAXWorkspaceViewController *)self _hostedApplicationViewEdgeInsetsForLayoutMode:2 interfaceOrientation:[(GAXWorkspaceViewController *)self interfaceOrientation]];
    y = y + v8;
  }

  v9 = x;
  v10 = y;
  v11 = width;
  v12 = height;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (void)_loadStatusBarWithContainerView:(id)a3
{
  v4 = a3;
  [v4 bounds];
  v5 = [GAXInterfaceUtilities statusBarWithStyle:1 containerViewBounds:?];
  [v4 addSubview:v5];

  [(GAXWorkspaceViewController *)self setStatusBar:v5];
}

- (void)_loadNavigationBarWithContainerView:(id)a3
{
  v31 = a3;
  v4 = [[GAXPassthroughNavigationBar alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(GAXPassthroughNavigationBar *)v4 sizeToFit];
  [(GAXPassthroughNavigationBar *)v4 setAutoresizingMask:34];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v34.width = 1.0;
    v34.height = 1.0;
    UIGraphicsBeginImageContextWithOptions(v34, 0, 0.0);
    v5 = UIGraphicsGetImageFromCurrentImageContext();
    v6 = [v5 resizableImageWithCapInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

    UIGraphicsEndImageContext();
    [(GAXPassthroughNavigationBar *)v4 setBackgroundImage:v6 forBarMetrics:0];
    [(GAXPassthroughNavigationBar *)v4 setBackgroundImage:v6 forBarMetrics:1];
  }

  v7 = [(GAXWorkspaceViewController *)self styleProvider];
  v32[0] = NSFontAttributeName;
  v8 = [v7 workspaceNavigationBarTitleFont];
  v33[0] = v8;
  v32[1] = NSForegroundColorAttributeName;
  v9 = v7;
  v10 = [v7 defaultLabelTextColor];
  v33[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];
  [(GAXPassthroughNavigationBar *)v4 setTitleTextAttributes:v11];

  v12 = [UINavigationItem alloc];
  v13 = [(GAXWorkspaceViewController *)self title];
  v14 = [v12 initWithTitle:v13];

  [v14 setHidesBackButton:1];
  v15 = [(GAXWorkspaceViewController *)self usesResumeNavigationTitles];
  v16 = v15 == 0;
  if (v15)
  {
    v17 = @"END";
  }

  else
  {
    v17 = @"CANCEL";
  }

  if (v16)
  {
    v18 = @"START";
  }

  else
  {
    v18 = @"RESUME";
  }

  v19 = GAXLocString(v17);
  v30 = v19;
  if (_UISolariumEnabled())
  {
    v20 = 2;
  }

  else
  {
    v20 = 0;
  }

  v21 = [[UIBarButtonItem alloc] initWithTitle:v19 style:v20 target:self action:"_handleDismissButtonTapped:"];
  v22 = +[UIColor darkGrayColor];
  [v21 setTintColor:v22];

  v23 = [v7 workspaceNavigationBarButtonTextAttributes];
  [v21 setTitleTextAttributes:v23 forState:0];

  [v7 workspaceNavigationBarDismissButtonMinimumWidth];
  [v21 _setMinimumWidth:?];
  v24 = [[NSArray alloc] initWithObjects:{v21, 0}];
  [v14 setLeftBarButtonItems:v24 animated:0];
  v25 = GAXLocString(v18);
  v26 = [[UIBarButtonItem alloc] initWithTitle:v25 style:2 target:self action:"_handleStartButtonTapped:"];
  v27 = [v7 workspaceNavigationBarButtonTextAttributes];
  [v26 setTitleTextAttributes:v27 forState:0];

  v28 = [[NSArray alloc] initWithObjects:{v26, 0}];
  [v14 setRightBarButtonItems:v28 animated:0];
  v29 = [[NSArray alloc] initWithObjects:{v14, 0}];
  [(GAXPassthroughNavigationBar *)v4 setItems:v29 animated:0];
  [v31 addSubview:v4];

  [(GAXWorkspaceViewController *)self setNavigationBar:v4];
}

- (void)_loadStatusAndNavigationBarBackgroundViewWithContainerView:(id)a3
{
  v8 = a3;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v4 = [[_UIBackdropView alloc] initWithPrivateStyle:2030];
    [v4 setAutoresizingMask:34];
    v5 = [(GAXWorkspaceViewController *)self navigationBar];
    v6 = v8;
    if (v5 && (v7 = [v8 containsView:v5], v6 = v8, v7))
    {
      [v8 insertSubview:v4 belowSubview:v5];
    }

    else
    {
      [v6 addSubview:v4];
    }

    [(GAXWorkspaceViewController *)self setStatusAndNavigationBarBackgroundView:v4];
  }
}

- (void)_loadHostedApplicationShadowViewWithContainerView:(id)a3
{
  v4 = a3;
  v7 = objc_opt_new();
  [v7 setAutoresizingMask:0];
  v5 = [(GAXWorkspaceViewController *)self styleProvider];
  v6 = [v5 hostedApplicationShadowColor];
  [v7 setBackgroundColor:v6];

  [v7 setAlpha:0.0];
  [v4 addSubview:v7];

  [(GAXWorkspaceViewController *)self setHostedApplicationShadowView:v7];
}

- (void)_loadInterestAreaViewWithContainerView:(id)a3
{
  v4 = a3;
  v8 = [(GAXWorkspaceViewController *)self interestAreaViewController];
  v5 = [v8 interestAreaView];
  [v4 bounds];
  [v5 setFrame:?];
  [v5 setAutoresizingMask:0];
  [v4 bounds];
  [v5 setContentsBounds:?];
  v6 = [(GAXWorkspaceViewController *)self styleProvider];
  [v6 applicationViewRoundedCornerRadius];
  [v5 setContentsCornerRadius:?];

  [v5 setShouldStealAllEvents:0];
  [v5 setEventStealerViewDelegate:self];
  v7 = [v5 layer];
  [v7 setHitTestsAsOpaque:1];

  [v4 addSubview:v5];
}

- (void)_loadInstructionsLabelWithContainerView:(id)a3
{
  v4 = a3;
  v5 = [(GAXWorkspaceViewController *)self _instructionsLabelTextWhenTouchEnabled:[(GAXWorkspaceViewController *)self isTouchEnabled]];
  v6 = [(GAXWorkspaceViewController *)self _instructionsLabelWithText:v5];

  [v4 addSubview:v6];
  [(GAXWorkspaceViewController *)self setInstructionsLabel:v6];
}

- (void)_loadSystemFeatureViewWithContainerView:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(GAXWorkspaceViewController *)self styleProvider];
  [v5 setStyleProvider:v6];

  [v5 setDelegate:self];
  v7 = [(GAXWorkspaceViewController *)self userInterfaceServer];
  [v5 setUserInterfaceServer:v7];

  v8 = [v5 view];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(GAXWorkspaceViewController *)self addChildViewController:v5];
  [v4 addSubview:v8];
  [v5 didMoveToParentViewController:self];
  [(GAXWorkspaceViewController *)self setFeatureViewController:v5];
  v9 = [(GAXWorkspaceViewController *)self styleProvider];
  [v9 featureViewControllerHeight];
  v11 = v10;

  v12 = [v8 heightAnchor];
  v13 = [v12 constraintLessThanOrEqualToConstant:v11];

  v30 = v13;
  LODWORD(v14) = 1132068864;
  [v13 setPriority:v14];
  v15 = [v8 bottomAnchor];
  v16 = [v4 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  [(GAXWorkspaceViewController *)self setFeatureVCOnscreenConstraint:v17];

  v18 = [v8 topAnchor];
  v19 = [v4 bottomAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  LODWORD(v21) = 1132068864;
  [v20 setPriority:v21];
  v31[0] = v13;
  v29 = [v8 widthAnchor];
  v22 = [v4 widthAnchor];
  v23 = [v29 constraintEqualToAnchor:v22];
  v31[1] = v23;
  v24 = [v8 leadingAnchor];
  v25 = [v4 leadingAnchor];

  v26 = [v24 constraintEqualToAnchor:v25];
  v31[2] = v26;
  v27 = [(GAXWorkspaceViewController *)self featureVCOnscreenConstraint];
  v31[3] = v27;
  v31[4] = v20;
  v28 = [NSArray arrayWithObjects:v31 count:5];

  [NSLayoutConstraint activateConstraints:v28];
}

- (void)_updateStatusBar
{
  v15 = [(GAXWorkspaceViewController *)self statusBar];
  [v15 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(GAXWorkspaceViewController *)self _adjustedTopChromeViewFrame:CGPointZero.x, CGPointZero.y];
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  if (!CGRectEqualToRect(v17, v18))
  {
    [v15 setFrame:{x, y, width, height}];
  }
}

- (void)_updateNavigationBar
{
  v22 = [(GAXWorkspaceViewController *)self navigationBar];
  [v22 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(GAXWorkspaceViewController *)self viewIfLoaded];
  [v11 safeAreaInsets];
  v13 = v12 + 0.0;

  [(GAXWorkspaceViewController *)self _adjustedTopChromeViewFrame:v4, v13, v8, v10];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [v22 superview];
  [v20 bounds];
  Width = CGRectGetWidth(v24);

  v25.origin.x = v15;
  v25.origin.y = v17;
  v25.size.width = Width;
  v25.size.height = v19;
  v26.origin.x = v4;
  v26.origin.y = v6;
  v26.size.width = v8;
  v26.size.height = v10;
  if (!CGRectEqualToRect(v25, v26))
  {
    [v22 setFrame:{v15, v17, Width, v19}];
  }
}

- (void)_updateStatusAndNavigationBarBackgroundView
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v25 = [(GAXWorkspaceViewController *)self navigationBar];
    [v25 frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [(GAXWorkspaceViewController *)self statusBar];
    [v11 frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v27.origin.x = v4;
    v27.origin.y = v6;
    v27.size.width = v8;
    v27.size.height = v10;
    v30.origin.x = v13;
    v30.origin.y = v15;
    v30.size.width = v17;
    v30.size.height = v19;
    v28 = CGRectUnion(v27, v30);
    x = v28.origin.x;
    y = v28.origin.y;
    width = v28.size.width;
    height = v28.size.height;
    v24 = [(GAXWorkspaceViewController *)self statusAndNavigationBarBackgroundView];
    [v24 frame];
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    if (!CGRectEqualToRect(v29, v31))
    {
      [v24 setFrame:{x, y, width, height}];
    }
  }
}

- (void)_updateHostedApplicationShadowView
{
  v3 = [(GAXWorkspaceViewController *)self hostedApplicationShadowView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v8 = [v3 superview];
  [v8 bounds];
  v10 = v9;
  v12 = v11;

  [v3 setBounds:{v5, v7, v10, v12}];
  v13 = [(GAXWorkspaceViewController *)self layoutMode];
  size = CGRectZero.size;
  v20.origin = CGRectZero.origin;
  v20.size = size;
  sx = 1.0;
  [(GAXWorkspaceViewController *)self _getHostedApplicationViewParametersForLayoutMode:v13 scaleFactor:&sx frame:&v20 targetSize:CGSizeZero.width, CGSizeZero.height];
  memset(&v18, 0, sizeof(v18));
  CGAffineTransformMakeScale(&v18, sx, sx);
  MidX = CGRectGetMidX(v20);
  [v3 setCenter:{MidX, CGRectGetMidY(v20)}];
  v17 = v18;
  [v3 setTransform:&v17];
  v16 = 0.0;
  if (v13 == 2)
  {
    v16 = 1.0;
  }

  [v3 setAlpha:v16];
}

- (void)_updateInterestAreaView
{
  v3 = [(GAXWorkspaceViewController *)self interestAreaViewController];
  v4 = [v3 view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v9 = [v4 superview];
  [v9 bounds];
  v11 = v10;
  v13 = v12;

  [v4 setBounds:{v6, v8, v11, v13}];
  v14 = [(GAXWorkspaceViewController *)self layoutMode];
  size = CGRectZero.size;
  v23.origin = CGRectZero.origin;
  v23.size = size;
  sx = 1.0;
  [(GAXWorkspaceViewController *)self _getHostedApplicationViewParametersForLayoutMode:v14 scaleFactor:&sx frame:&v23 targetSize:CGSizeZero.width, CGSizeZero.height];
  memset(&v21, 0, sizeof(v21));
  CGAffineTransformMakeScale(&v21, sx, sx);
  MidX = CGRectGetMidX(v23);
  [v4 setCenter:{MidX, CGRectGetMidY(v23)}];
  v20 = v21;
  [v4 setTransform:&v20];
  [(GAXWorkspaceViewController *)self scaleForSpecialControlsInInterestAreaViewController:v3];
  v18 = v17;
  v19 = [v3 interestAreaView];
  [v19 setBackgroundPatternScaleFactor:v18];
}

- (void)_updateInstructionsLabel
{
  v3 = [(GAXWorkspaceViewController *)self instructionsLabel];
  v4 = [(GAXWorkspaceViewController *)self styleProvider];
  v5 = v4;
  if (v3 && v4)
  {
    size = CGRectZero.size;
    v40.origin = CGRectZero.origin;
    v40.size = size;
    [(GAXWorkspaceViewController *)self _getHostedApplicationViewParametersForLayoutMode:2 scaleFactor:0 frame:&v40 targetSize:CGSizeZero.width, CGSizeZero.height];
    v7 = [v3 superview];
    [v7 bounds];
    v9 = v8;
    v36 = v10;
    v12 = v11;
    v14 = v13;

    [v5 workspaceInstructionsLabelEdgeInsets];
    v16 = v15;
    v18 = v17;
    v37 = v20;
    v39 = v19;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    MaxY = CGRectGetMaxY(v40);
    [v5 hostedApplicationScaledFrameEdgeInsetsForInterfaceOrientation:{-[GAXWorkspaceViewController interfaceOrientation](self, "interfaceOrientation")}];
    v25 = v16 + MaxY + v24;
    v41.origin.x = v9;
    v41.origin.y = v36;
    v41.size.width = v12;
    v41.size.height = v14;
    v35 = CGRectGetWidth(v41);
    v42.origin.x = v18;
    v42.origin.y = v25;
    v42.size.width = width;
    v42.size.height = height;
    v38 = v35 - CGRectGetMinX(v42) - v37;
    v43.origin.x = v9;
    v43.origin.y = v36;
    v43.size.width = v12;
    v43.size.height = v14;
    v26 = CGRectGetHeight(v43);
    v44.origin.x = v18;
    v44.origin.y = v25;
    v44.size.width = width;
    v44.size.height = height;
    v27 = v26 - CGRectGetMinY(v44) - v39;
    v28 = [(GAXWorkspaceViewController *)self featureViewController];
    v29 = [v28 view];
    [v29 frame];
    v30 = v27 - CGRectGetHeight(v45);

    v46.origin.x = v18;
    v46.origin.y = v25;
    v46.size.width = v38;
    v46.size.height = v30;
    MidX = CGRectGetMidX(v46);
    v47.origin.x = v18;
    v47.origin.y = v25;
    v47.size.width = v38;
    v47.size.height = v30;
    MidY = CGRectGetMidY(v47);
    if ([(GAXWorkspaceViewController *)self applicationInterfaceOrientation]- 3 < &dword_0 + 2)
    {
      MidY = MidY + 7.0;
    }

    [v3 sizeThatFits:{v38, v30, *&v35}];
    [(GAXWorkspaceViewController *)self _adjustedBottomChromeViewFrame:MidX - v33 * 0.5, MidY - v34 * 0.5, v33];
    v49 = CGRectIntegral(v48);
    [v3 setFrame:{v49.origin.x, v49.origin.y, v49.size.width, v49.size.height}];
  }
}

- (void)updateViewConstraints
{
  v3.receiver = self;
  v3.super_class = GAXWorkspaceViewController;
  [(GAXWorkspaceViewController *)&v3 updateViewConstraints];
  [(GAXWorkspaceViewController *)self _updateSystemFeatureView];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = [(GAXWorkspaceViewController *)self view:a3];
  [v4 setNeedsUpdateConstraints];
}

- (void)_updateSystemFeatureView
{
  v3 = [(GAXWorkspaceViewController *)self layoutMode]!= 1;
  v4 = [(GAXWorkspaceViewController *)self featureVCOnscreenConstraint];
  [v4 setActive:v3];
}

- (void)_updateHostedApplicationViewWithAnimationDuration:(double)a3 targetSize:(CGSize)a4
{
  width = a4.width;
  size = CGRectZero.size;
  v19.origin = CGRectZero.origin;
  v19.size = size;
  v18 = 1.0;
  [(GAXWorkspaceViewController *)self _getHostedApplicationViewParametersForLayoutMode:[(GAXWorkspaceViewController *)self layoutMode] scaleFactor:&v18 frame:&v19 targetSize:width, a4.height];
  MidX = CGRectGetMidX(v19);
  MidY = CGRectGetMidY(v19);
  v10 = [(GAXWorkspaceViewController *)self overlayUserInterfaceViewController];
  v11 = [v10 view];

  v12 = [v11 window];
  [v11 convertPoint:v12 toView:{MidX, MidY}];
  [v12 convertPoint:0 toWindow:?];
  v14 = v13;
  v16 = v15;
  v17 = [(GAXWorkspaceViewController *)self userInterfaceServer];
  [v17 updateHostedApplicationStateWithScaleFactor:v18 center:v14 animationDuration:{v16, a3}];
}

- (void)_updateEverythingForLayoutMode:(int)a3
{
  [(GAXWorkspaceViewController *)self setLayoutMode:*&a3];
  [(GAXWorkspaceViewController *)self _updateStatusBar];
  [(GAXWorkspaceViewController *)self _updateNavigationBar];
  [(GAXWorkspaceViewController *)self _updateStatusAndNavigationBarBackgroundView];
  [(GAXWorkspaceViewController *)self _updateInterestAreaView];
  [(GAXWorkspaceViewController *)self _updateHostedApplicationShadowView];
  [(GAXWorkspaceViewController *)self _updateInstructionsLabel];

  [(GAXWorkspaceViewController *)self _updateSystemFeatureView];
}

- (void)_willBeginTransitionWithType:(int)a3
{
  v9 = [(GAXWorkspaceViewController *)self featureViewController];
  v5 = [(GAXWorkspaceViewController *)self interestAreaViewController];
  v6 = v5;
  if (a3 <= 2)
  {
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        goto LABEL_10;
      }

      [v9 dismissOptionsAnimated:1];
      v7 = [(GAXWorkspaceViewController *)self isTouchEnabled]^ 1;
      v8 = v6;
      goto LABEL_9;
    }

LABEL_7:
    [v5 transitionIn];
    goto LABEL_10;
  }

  if (a3 != 4)
  {
    if (a3 != 3)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  [v9 dismissOptionsAnimated:1];
  v8 = v6;
  v7 = 1;
LABEL_9:
  [v8 transitionOutIncludingBackground:v7];
LABEL_10:
}

- (double)_transitionDuration
{
  v2 = [(GAXWorkspaceViewController *)self styleProvider];
  [v2 defaultAnimationDuration];
  v4 = v3;

  return v4;
}

- (void)_performTransitionWithType:(int)a3 completion:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  if ((v4 - 1) > 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = dword_42020[(v4 - 1)];
  }

  if (v7 == [(GAXWorkspaceViewController *)self layoutMode])
  {
    if (v6)
    {
      v6[2](v6, 1);
    }
  }

  else
  {
    [(GAXWorkspaceViewController *)self _willBeginTransitionWithType:v4];
    [(GAXWorkspaceViewController *)self _transitionDuration];
    v9 = v8;
    if (GAXUserInterfaceIdiomIsPhone())
    {
      v10 = [(GAXWorkspaceViewController *)self overlayUserInterfaceViewController];
      v11 = [v10 parentViewController];

      if (v11)
      {
        do
        {
          v12 = [v10 parentViewController];

          v13 = [v12 parentViewController];

          v10 = v12;
        }

        while (v13);
      }

      else
      {
        v12 = v10;
      }

      v14 = [v12 interfaceOrientation];
      v15 = +[AXUIDisplayManager sharedDisplayManager];
      v16 = [v15 activeInterfaceOrientation];

      if (v14 != v16)
      {
        v17 = +[AXUIDisplayManager sharedDisplayManager];
        [v12 setInterfaceOrientation:{objc_msgSend(v17, "activeInterfaceOrientation")}];

        [v12 setNeedsUpdateOfSupportedInterfaceOrientations];
      }
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_20DF0;
    v21[3] = &unk_5DA00;
    v21[4] = self;
    v22 = v7;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_20E4C;
    v18[3] = &unk_5DA28;
    v18[4] = self;
    v20 = v4;
    v19 = v6;
    [UIView animateWithDuration:v21 animations:v18 completion:v9];
    [(GAXWorkspaceViewController *)self _updateHostedApplicationViewWithAnimationDuration:v9 targetSize:CGSizeZero.width, CGSizeZero.height];
  }
}

- (void)_performOrScheduleTransitionWithType:(int)a3 completion:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  if ([(GAXWorkspaceViewController *)self isTransitionInProgress])
  {
    v7 = [(GAXWorkspaceViewController *)self transitionContextQueue];
    if (!v7)
    {
      v7 = objc_opt_new();
      [(GAXWorkspaceViewController *)self setTransitionContextQueue:v7];
    }

    v8 = objc_opt_new();
    [v8 setType:v4];
    [v8 setCompletion:v6];
    [v7 ax_enqueueObject:v8];
  }

  else
  {
    [(GAXWorkspaceViewController *)self setTransitionInProgress:1];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_20FD4;
    v9[3] = &unk_5DA50;
    v9[4] = self;
    v10 = v6;
    [(GAXWorkspaceViewController *)self _performTransitionWithType:v4 completion:v9];
  }
}

- (void)featureViewController:(id)a3 touchSystemFeatureDidChange:(BOOL)a4
{
  v4 = a4;
  v6 = [(GAXWorkspaceViewController *)self interestAreaViewController];
  [v6 setBackgroundShouldCoverEverything:v4 ^ 1 animated:1];

  v7 = [(GAXWorkspaceViewController *)self instructionsLabel];

  if (v7)
  {
    v8 = [(GAXWorkspaceViewController *)self _instructionsLabelTextWhenTouchEnabled:v4];
    v9 = [(GAXWorkspaceViewController *)self instructionsLabel];
    v10 = [v9 text];
    v11 = [v10 isEqualToString:v8];

    if ((v11 & 1) == 0)
    {
      v12 = [(GAXWorkspaceViewController *)self _instructionsLabelWithText:v8];
      v13 = [v9 superview];
      [v13 insertSubview:v12 belowSubview:v9];

      [(GAXWorkspaceViewController *)self setInstructionsLabel:v12];
      [(GAXWorkspaceViewController *)self _updateInstructionsLabel];
      [v12 setAlpha:0.0];
      v14 = [(GAXWorkspaceViewController *)self styleProvider];
      [v14 defaultAnimationDuration];
      v16 = v15;

      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_212F4;
      v22[3] = &unk_5CD48;
      v23 = v9;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_21300;
      v18[3] = &unk_5DA78;
      v21 = v16;
      v19 = v12;
      v20 = v23;
      v17 = v12;
      [UIView animateWithDuration:v22 animations:v18 completion:v16 * 0.5];
    }
  }
}

- (id)viewForPresentingOverlayUserInterfaceForFeatureViewController:(id)a3
{
  v3 = [(GAXWorkspaceViewController *)self overlayUserInterfaceViewController];
  v4 = [v3 view];

  return v4;
}

- (void)getInterestAreaPathForFingerPath:(id)a3 interestAreaViewController:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(GAXWorkspaceViewController *)self view];
  v12 = objc_opt_new();
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_215CC;
  v26[3] = &unk_5DAA0;
  v13 = v11;
  v27 = v13;
  v28 = v12;
  v14 = v12;
  [v8 enumerateElementsUsingBlock:v26];
  v15 = [(GAXWorkspaceViewController *)self userInterfaceServer];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_2166C;
  v20[3] = &unk_5DAC8;
  v21 = v9;
  v22 = v8;
  v23 = v13;
  v24 = self;
  v25 = v10;
  v16 = v10;
  v17 = v13;
  v18 = v8;
  v19 = v9;
  [v15 getContainedViewsInFrontmostApplicationForFingerPath:v14 completion:v20];
}

- (double)scaleForSpecialControlsInInterestAreaViewController:(id)a3
{
  v4 = 1.0;
  [(GAXWorkspaceViewController *)self _getHostedApplicationViewParametersForLayoutMode:[(GAXWorkspaceViewController *)self layoutMode] scaleFactor:&v4 frame:0 targetSize:CGSizeZero.width, CGSizeZero.height];
  if (v4 <= 0.0)
  {
    return 1.0;
  }

  else
  {
    return 1.0 / v4;
  }
}

- (CGRect)boundsForConstrainingFingerPathInInterestAreaViewController:(id)a3
{
  v4 = a3;
  if ([(GAXWorkspaceViewController *)self isViewLoaded])
  {
    v5 = [(GAXWorkspaceViewController *)self navigationBar];
    [v5 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(GAXWorkspaceViewController *)self featureViewController];
    v15 = [v14 view];
    [v15 frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v40.origin.x = v7;
    v40.origin.y = v9;
    v40.size.width = v11;
    v40.size.height = v13;
    MaxY = CGRectGetMaxY(v40);
    v41.origin.x = v17;
    v41.origin.y = v19;
    v41.size.width = v21;
    v41.size.height = v23;
    v25 = CGRectGetMinY(v41) - MaxY;
    v26 = [v5 superview];
    v27 = [v4 view];
    [v26 convertRect:v27 toView:{v7, MaxY, v11, v25}];
    x = v28;
    y = v30;
    width = v32;
    height = v34;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v36 = x;
  v37 = y;
  v38 = width;
  v39 = height;
  result.size.height = v39;
  result.size.width = v38;
  result.origin.y = v37;
  result.origin.x = v36;
  return result;
}

- (id)referenceViewForConvertingFromAndToWindowCoordinateSystemForInterestAreaViewController:(id)a3
{
  if ([(GAXWorkspaceViewController *)self isViewLoaded])
  {
    v4 = [(GAXWorkspaceViewController *)self view];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)viewToCoverWithOutOfBoundsDrawingForInterestAreaViewWithController:(id)a3 edgeInsets:(UIEdgeInsets *)a4
{
  top = UIEdgeInsetsZero.top;
  bottom = UIEdgeInsetsZero.bottom;
  if (![(GAXWorkspaceViewController *)self isViewLoaded])
  {
    v8 = 0;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = [(GAXWorkspaceViewController *)self view];
  v9 = [(GAXWorkspaceViewController *)self navigationBar];
  [v9 frame];
  top = UIEdgeInsetsZero.top + CGRectGetMaxY(v17);

  [v8 bounds];
  MaxY = CGRectGetMaxY(v18);
  v11 = [(GAXWorkspaceViewController *)self featureViewController];
  v12 = [v11 view];
  [v12 frame];
  bottom = bottom + MaxY - CGRectGetMinY(v19);

  if (a4)
  {
LABEL_5:
    left = UIEdgeInsetsZero.left;
    right = UIEdgeInsetsZero.right;
    a4->top = top;
    a4->left = left;
    a4->bottom = bottom;
    a4->right = right;
  }

LABEL_6:

  return v8;
}

- (BOOL)isInterestAreaViewAccessibilityElementWithController:(id)a3
{
  v3 = [(GAXWorkspaceViewController *)self userInterfaceServer];
  v4 = [v3 isInWorkspace];

  return v4;
}

- (void)interestAreaViewController:(id)a3 willRotateToInterfaceOrientation:(int64_t)a4 duration:(double)a5
{
  v8 = a3;
  v9 = [(GAXWorkspaceViewController *)self userInterfaceServer];
  [v9 interestAreaViewController:v8 willRotateToInterfaceOrientation:a4 duration:a5];
}

- (void)interestAreaViewController:(id)a3 didRotateFromInterfaceOrientation:(int64_t)a4
{
  v6 = a3;
  v7 = [(GAXWorkspaceViewController *)self userInterfaceServer];
  [v7 interestAreaViewController:v6 didRotateFromInterfaceOrientation:a4];
}

- (void)archiveInterestAreaPathsForStorageInterestAreaViewController:(id)a3
{
  v4 = a3;
  v5 = [(GAXWorkspaceViewController *)self userInterfaceServer];
  [v5 archiveInterestAreaPathsForStorageInterestAreaViewController:v4];
}

- (BOOL)eventStealerView:(id)a3 shouldStealEventAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(GAXWorkspaceViewController *)self interestAreaViewController];
  if ([v8 isViewLoaded])
  {
    [(GAXWorkspaceViewController *)self boundsForConstrainingFingerPathInInterestAreaViewController:v8];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [v8 view];
    [v17 convertPoint:v7 fromView:{x, y}];
    v22.x = v18;
    v22.y = v19;
    v23.origin.x = v10;
    v23.origin.y = v12;
    v23.size.width = v14;
    v23.size.height = v16;
    v20 = CGRectContainsPoint(v23, v22);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (GAXUIServer)userInterfaceServer
{
  WeakRetained = objc_loadWeakRetained(&self->_userInterfaceServer);

  return WeakRetained;
}

@end