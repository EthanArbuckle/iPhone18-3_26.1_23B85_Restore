@interface GAXWorkspaceViewController
- (BOOL)eventStealerView:(id)view shouldStealEventAtPoint:(CGPoint)point;
- (BOOL)isInterestAreaViewAccessibilityElementWithController:(id)controller;
- (BOOL)isTouchEnabled;
- (BOOL)navigationBarNeedsMiniMetricsInitialized;
- (CGRect)_adjustedBottomChromeViewFrame:(CGRect)frame;
- (CGRect)_adjustedTopChromeViewFrame:(CGRect)frame;
- (CGRect)boundsForConstrainingFingerPathInInterestAreaViewController:(id)controller;
- (CGSize)_instructionsLabelMaximumSize;
- (GAXUIServer)userInterfaceServer;
- (GAXWorkspaceViewController)initWithCoder:(id)coder;
- (GAXWorkspaceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (GAXWorkspaceViewController)initWithOverlayUserInterfaceViewController:(id)controller;
- (UIEdgeInsets)_hostedApplicationViewEdgeInsetsForLayoutMode:(int)mode interfaceOrientation:(int64_t)orientation;
- (double)_transitionDuration;
- (double)scaleForSpecialControlsInInterestAreaViewController:(id)controller;
- (double)statusBarHeight;
- (id)_instructionsLabelTextWhenTouchEnabled:(BOOL)enabled;
- (id)_instructionsLabelWithText:(id)text;
- (id)referenceViewForConvertingFromAndToWindowCoordinateSystemForInterestAreaViewController:(id)controller;
- (id)viewForPresentingOverlayUserInterfaceForFeatureViewController:(id)controller;
- (id)viewToCoverWithOutOfBoundsDrawingForInterestAreaViewWithController:(id)controller edgeInsets:(UIEdgeInsets *)insets;
- (int64_t)applicationInterfaceOrientation;
- (void)_getHostedApplicationViewParametersForLayoutMode:(int)mode scaleFactor:(double *)factor frame:(CGRect *)frame targetSize:(CGSize)size;
- (void)_handleDismissButtonTapped:(id)tapped;
- (void)_handleStartButtonTapped:(id)tapped;
- (void)_loadHostedApplicationShadowViewWithContainerView:(id)view;
- (void)_loadInstructionsLabelWithContainerView:(id)view;
- (void)_loadInterestAreaViewWithContainerView:(id)view;
- (void)_loadNavigationBarWithContainerView:(id)view;
- (void)_loadStatusAndNavigationBarBackgroundViewWithContainerView:(id)view;
- (void)_loadStatusBarWithContainerView:(id)view;
- (void)_loadSystemFeatureViewWithContainerView:(id)view;
- (void)_performOrScheduleTransitionWithType:(int)type completion:(id)completion;
- (void)_performTransitionWithType:(int)type completion:(id)completion;
- (void)_updateEverythingForLayoutMode:(int)mode;
- (void)_updateHostedApplicationShadowView;
- (void)_updateHostedApplicationViewWithAnimationDuration:(double)duration targetSize:(CGSize)size;
- (void)_updateInstructionsLabel;
- (void)_updateInterestAreaView;
- (void)_updateNavigationBar;
- (void)_updateStatusAndNavigationBarBackgroundView;
- (void)_updateStatusBar;
- (void)_updateSystemFeatureView;
- (void)_willBeginTransitionWithType:(int)type;
- (void)archiveInterestAreaPathsForStorageInterestAreaViewController:(id)controller;
- (void)dealloc;
- (void)featureViewController:(id)controller touchSystemFeatureDidChange:(BOOL)change;
- (void)getInterestAreaPathForFingerPath:(id)path interestAreaViewController:(id)controller completion:(id)completion;
- (void)interestAreaViewController:(id)controller didRotateFromInterfaceOrientation:(int64_t)orientation;
- (void)interestAreaViewController:(id)controller willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)loadView;
- (void)releaseOutlets;
- (void)setStyleProvider:(id)provider;
- (void)setUserInterfaceServer:(id)server;
- (void)updateViewConstraints;
- (void)viewDidLayoutSubviews;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewDidUnload;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation GAXWorkspaceViewController

- (GAXWorkspaceViewController)initWithOverlayUserInterfaceViewController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = GAXWorkspaceViewController;
  v5 = [(GAXViewController *)&v10 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    if (controllerCopy)
    {
      v7 = GAXLocString(@"GUIDED_ACCESS_TITLE");
      [(GAXWorkspaceViewController *)v6 setTitle:v7];

      [(GAXWorkspaceViewController *)v6 setOverlayUserInterfaceViewController:controllerCopy];
      v8 = objc_opt_new();
      [v8 setAllowsDimmingInterestAreaPaths:0];
      [v8 setEditing:0];
      [v8 setDelegate:v6];
      [controllerCopy addChildViewController:v8];
      [v8 didMoveToParentViewController:controllerCopy];
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

- (GAXWorkspaceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v6.receiver = self;
  v6.super_class = GAXWorkspaceViewController;
  v4 = [(GAXViewController *)&v6 initWithNibName:name bundle:bundle];
  if (v4)
  {
  }

  return 0;
}

- (GAXWorkspaceViewController)initWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GAXWorkspaceViewController;
  v3 = [(GAXViewController *)&v5 initWithCoder:coder];
  if (v3)
  {
  }

  return 0;
}

- (void)dealloc
{
  interestAreaViewController = [(GAXWorkspaceViewController *)self interestAreaViewController];
  [interestAreaViewController setDelegate:0];

  interestAreaViewController2 = [(GAXWorkspaceViewController *)self interestAreaViewController];
  if ([interestAreaViewController2 isViewLoaded])
  {
    interestAreaView = [interestAreaViewController2 interestAreaView];
    [interestAreaView setEventStealerViewDelegate:0];

    view = [interestAreaViewController2 view];
    [view removeFromSuperview];
  }

  [interestAreaViewController2 willMoveToParentViewController:0];
  [interestAreaViewController2 removeFromParentViewController];

  v7.receiver = self;
  v7.super_class = GAXWorkspaceViewController;
  [(GAXViewController *)&v7 dealloc];
}

- (void)setUserInterfaceServer:(id)server
{
  obj = server;
  WeakRetained = objc_loadWeakRetained(&self->_userInterfaceServer);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_userInterfaceServer, obj);
    featureViewController = [(GAXWorkspaceViewController *)self featureViewController];
    [featureViewController setUserInterfaceServer:obj];

    LODWORD(featureViewController) = [(GAXWorkspaceViewController *)self isTouchEnabled];
    interestAreaViewController = [(GAXWorkspaceViewController *)self interestAreaViewController];
    [interestAreaViewController setBackgroundShouldCoverEverything:featureViewController ^ 1];
  }
}

- (void)setStyleProvider:(id)provider
{
  providerCopy = provider;
  if (self->_styleProvider != providerCopy)
  {
    v7 = providerCopy;
    objc_storeStrong(&self->_styleProvider, provider);
    interestAreaViewController = [(GAXWorkspaceViewController *)self interestAreaViewController];
    [interestAreaViewController setStyleProvider:v7];

    providerCopy = v7;
  }
}

- (double)statusBarHeight
{
  statusBar = [(GAXWorkspaceViewController *)self statusBar];
  [statusBar bounds];
  Height = CGRectGetHeight(v5);

  return Height;
}

- (int64_t)applicationInterfaceOrientation
{
  v2 = +[AXUIDisplayManager sharedDisplayManager];
  activeInterfaceOrientation = [v2 activeInterfaceOrientation];

  return activeInterfaceOrientation;
}

- (BOOL)navigationBarNeedsMiniMetricsInitialized
{
  styleProvider = [(GAXWorkspaceViewController *)self styleProvider];
  v4 = styleProvider;
  if (styleProvider)
  {
    if ([styleProvider workspaceNavigationBarNeedsMiniMetricsInitialized])
    {
      applicationInterfaceOrientation = [(GAXWorkspaceViewController *)self applicationInterfaceOrientation];
      v6 = (applicationInterfaceOrientation - 1) > 3 || (applicationInterfaceOrientation - 3) < 0xFFFFFFFFFFFFFFFELL;
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
  userInterfaceServer = [(GAXWorkspaceViewController *)self userInterfaceServer];
  allowsTouch = [userInterfaceServer allowsTouch];

  return allowsTouch;
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
  layer = [v18 layer];
  [layer setHitTestsAsOpaque:1];

  [(GAXWorkspaceViewController *)self _loadNavigationBarWithContainerView:v18];
  [(GAXWorkspaceViewController *)self _loadStatusAndNavigationBarBackgroundViewWithContainerView:v18];
  styleProvider = [(GAXWorkspaceViewController *)self styleProvider];
  workspaceInstructionsLabelShouldBeDisplayed = [styleProvider workspaceInstructionsLabelShouldBeDisplayed];

  if (workspaceInstructionsLabelShouldBeDisplayed)
  {
    [(GAXWorkspaceViewController *)self _loadInstructionsLabelWithContainerView:v18];
  }

  [(GAXWorkspaceViewController *)self _loadSystemFeatureViewWithContainerView:v18];
  [(GAXWorkspaceViewController *)self _loadStatusBarWithContainerView:v18];
  [(GAXWorkspaceViewController *)self _loadHostedApplicationShadowViewWithContainerView:v18];
  overlayUserInterfaceViewController = [(GAXWorkspaceViewController *)self overlayUserInterfaceViewController];
  view = [overlayUserInterfaceViewController view];
  [(GAXWorkspaceViewController *)self _loadInterestAreaViewWithContainerView:view];

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

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = GAXWorkspaceViewController;
  [(GAXWorkspaceViewController *)&v7 viewWillAppear:appear];
  applicationInterfaceOrientation = [(GAXWorkspaceViewController *)self applicationInterfaceOrientation];
  if ((applicationInterfaceOrientation - 1) <= 3)
  {
    v5 = applicationInterfaceOrientation;
    statusBar = [(GAXWorkspaceViewController *)self statusBar];
    [statusBar setOrientation:v5];
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v15.receiver = self;
  v15.super_class = GAXWorkspaceViewController;
  [(GAXWorkspaceViewController *)&v15 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  interestAreaViewController = [(GAXWorkspaceViewController *)self interestAreaViewController];
  view = [interestAreaViewController view];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1EC48;
  v11[3] = &unk_5D998;
  v11[4] = self;
  v12 = coordinatorCopy;
  v13 = width;
  v14 = height;
  v10 = coordinatorCopy;
  [v10 animateAlongsideTransitionInView:view animation:v11 completion:&stru_5D9D8];
}

- (void)releaseOutlets
{
  v4.receiver = self;
  v4.super_class = GAXWorkspaceViewController;
  [(GAXViewController *)&v4 releaseOutlets];
  featureViewController = [(GAXWorkspaceViewController *)self featureViewController];
  [featureViewController setDelegate:0];
  [(GAXWorkspaceViewController *)self setFeatureViewController:0];
  [(GAXWorkspaceViewController *)self setStatusBar:0];
  [(GAXWorkspaceViewController *)self setNavigationBar:0];
  [(GAXWorkspaceViewController *)self setStatusAndNavigationBarBackgroundView:0];
  [(GAXWorkspaceViewController *)self setInstructionsLabel:0];
  [(GAXWorkspaceViewController *)self setHostedApplicationShadowView:0];
}

- (void)_handleStartButtonTapped:(id)tapped
{
  userInterfaceServer = [(GAXWorkspaceViewController *)self userInterfaceServer];
  [userInterfaceServer transitionToMode:2];
}

- (void)_handleDismissButtonTapped:(id)tapped
{
  userInterfaceServer = [(GAXWorkspaceViewController *)self userInterfaceServer];
  [userInterfaceServer transitionToMode:0];
}

- (id)_instructionsLabelWithText:(id)text
{
  textCopy = text;
  styleProvider = [(GAXWorkspaceViewController *)self styleProvider];
  workspaceInstructionsLabelFont = [styleProvider workspaceInstructionsLabelFont];
  v7 = [GAXInterfaceUtilities labelWithText:textCopy font:workspaceInstructionsLabelFont allowMultipleLines:1 styleProvider:styleProvider];

  [v7 setAutoresizingMask:0];

  return v7;
}

- (id)_instructionsLabelTextWhenTouchEnabled:(BOOL)enabled
{
  if (enabled)
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
  instructionsLabel = [(GAXWorkspaceViewController *)self instructionsLabel];
  superview = [instructionsLabel superview];

  styleProvider = [(GAXWorkspaceViewController *)self styleProvider];
  [styleProvider hostedApplicationScaledFrameEdgeInsetsForInterfaceOrientation:{-[GAXWorkspaceViewController interfaceOrientation](self, "interfaceOrientation")}];
  v7 = v6;
  v9 = v8;
  [styleProvider workspaceInstructionsLabelEdgeInsets];
  v36 = v11;
  v37 = v10;
  v38 = v13;
  v39 = v12;
  [superview bounds];
  v15 = v14;
  v17 = v16;
  navigationBar = [(GAXWorkspaceViewController *)self navigationBar];
  [navigationBar frame];
  MaxY = CGRectGetMaxY(v43);

  featureViewController = [(GAXWorkspaceViewController *)self featureViewController];
  view = [featureViewController view];
  [view frame];
  Height = CGRectGetHeight(v44);

  workspaceInstructionsLabelFont = [styleProvider workspaceInstructionsLabelFont];
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
    [GAXInterfaceUtilities labelSizeThatFitsText:*v28 constrainedToSize:workspaceInstructionsLabelFont font:styleProvider styleProvider:v15 - v39 - v38, v27];
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

- (UIEdgeInsets)_hostedApplicationViewEdgeInsetsForLayoutMode:(int)mode interfaceOrientation:(int64_t)orientation
{
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  styleProvider = [(GAXWorkspaceViewController *)self styleProvider];
  v12 = styleProvider;
  if (mode == 2 && styleProvider)
  {
    [styleProvider hostedApplicationScaledFrameEdgeInsetsForInterfaceOrientation:orientation];
    v14 = v13;
    left = v15;
    v17 = v16;
    right = v18;
    navigationBar = [(GAXWorkspaceViewController *)self navigationBar];
    [navigationBar frame];
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
    featureViewController = [(GAXWorkspaceViewController *)self featureViewController];
    view = [featureViewController view];
    viewIfLoaded = [(GAXWorkspaceViewController *)self viewIfLoaded];
    [viewIfLoaded frame];
    [view systemLayoutSizeFittingSize:{v29, 0.0}];
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

- (void)_getHostedApplicationViewParametersForLayoutMode:(int)mode scaleFactor:(double *)factor frame:(CGRect *)frame targetSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v10 = *&mode;
  interestAreaViewController = [(GAXWorkspaceViewController *)self interestAreaViewController];
  view = [interestAreaViewController view];
  [view bounds];
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
  styleProvider = [(GAXWorkspaceViewController *)self styleProvider];
  if (styleProvider)
  {
    window = [view window];
    v23 = [window safeValueForKey:@"_toWindowOrientation"];
    intValue = [v23 intValue];

    [(GAXWorkspaceViewController *)self _hostedApplicationViewEdgeInsetsForLayoutMode:v10 interfaceOrientation:intValue];
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
    if (factor)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v32 = 1.0;
    if (factor)
    {
LABEL_11:
      *factor = v32;
    }
  }

  if (frame)
  {
    frame->origin.x = x;
    frame->origin.y = y;
    frame->size.width = v18;
    frame->size.height = v17;
  }
}

- (CGRect)_adjustedTopChromeViewFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (CGRect)_adjustedBottomChromeViewFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (void)_loadStatusBarWithContainerView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  v5 = [GAXInterfaceUtilities statusBarWithStyle:1 containerViewBounds:?];
  [viewCopy addSubview:v5];

  [(GAXWorkspaceViewController *)self setStatusBar:v5];
}

- (void)_loadNavigationBarWithContainerView:(id)view
{
  viewCopy = view;
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

  styleProvider = [(GAXWorkspaceViewController *)self styleProvider];
  v32[0] = NSFontAttributeName;
  workspaceNavigationBarTitleFont = [styleProvider workspaceNavigationBarTitleFont];
  v33[0] = workspaceNavigationBarTitleFont;
  v32[1] = NSForegroundColorAttributeName;
  v9 = styleProvider;
  defaultLabelTextColor = [styleProvider defaultLabelTextColor];
  v33[1] = defaultLabelTextColor;
  v11 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];
  [(GAXPassthroughNavigationBar *)v4 setTitleTextAttributes:v11];

  v12 = [UINavigationItem alloc];
  title = [(GAXWorkspaceViewController *)self title];
  v14 = [v12 initWithTitle:title];

  [v14 setHidesBackButton:1];
  usesResumeNavigationTitles = [(GAXWorkspaceViewController *)self usesResumeNavigationTitles];
  v16 = usesResumeNavigationTitles == 0;
  if (usesResumeNavigationTitles)
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

  workspaceNavigationBarButtonTextAttributes = [styleProvider workspaceNavigationBarButtonTextAttributes];
  [v21 setTitleTextAttributes:workspaceNavigationBarButtonTextAttributes forState:0];

  [styleProvider workspaceNavigationBarDismissButtonMinimumWidth];
  [v21 _setMinimumWidth:?];
  v24 = [[NSArray alloc] initWithObjects:{v21, 0}];
  [v14 setLeftBarButtonItems:v24 animated:0];
  v25 = GAXLocString(v18);
  v26 = [[UIBarButtonItem alloc] initWithTitle:v25 style:2 target:self action:"_handleStartButtonTapped:"];
  workspaceNavigationBarButtonTextAttributes2 = [styleProvider workspaceNavigationBarButtonTextAttributes];
  [v26 setTitleTextAttributes:workspaceNavigationBarButtonTextAttributes2 forState:0];

  v28 = [[NSArray alloc] initWithObjects:{v26, 0}];
  [v14 setRightBarButtonItems:v28 animated:0];
  v29 = [[NSArray alloc] initWithObjects:{v14, 0}];
  [(GAXPassthroughNavigationBar *)v4 setItems:v29 animated:0];
  [viewCopy addSubview:v4];

  [(GAXWorkspaceViewController *)self setNavigationBar:v4];
}

- (void)_loadStatusAndNavigationBarBackgroundViewWithContainerView:(id)view
{
  viewCopy = view;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v4 = [[_UIBackdropView alloc] initWithPrivateStyle:2030];
    [v4 setAutoresizingMask:34];
    navigationBar = [(GAXWorkspaceViewController *)self navigationBar];
    v6 = viewCopy;
    if (navigationBar && (v7 = [viewCopy containsView:navigationBar], v6 = viewCopy, v7))
    {
      [viewCopy insertSubview:v4 belowSubview:navigationBar];
    }

    else
    {
      [v6 addSubview:v4];
    }

    [(GAXWorkspaceViewController *)self setStatusAndNavigationBarBackgroundView:v4];
  }
}

- (void)_loadHostedApplicationShadowViewWithContainerView:(id)view
{
  viewCopy = view;
  v7 = objc_opt_new();
  [v7 setAutoresizingMask:0];
  styleProvider = [(GAXWorkspaceViewController *)self styleProvider];
  hostedApplicationShadowColor = [styleProvider hostedApplicationShadowColor];
  [v7 setBackgroundColor:hostedApplicationShadowColor];

  [v7 setAlpha:0.0];
  [viewCopy addSubview:v7];

  [(GAXWorkspaceViewController *)self setHostedApplicationShadowView:v7];
}

- (void)_loadInterestAreaViewWithContainerView:(id)view
{
  viewCopy = view;
  interestAreaViewController = [(GAXWorkspaceViewController *)self interestAreaViewController];
  interestAreaView = [interestAreaViewController interestAreaView];
  [viewCopy bounds];
  [interestAreaView setFrame:?];
  [interestAreaView setAutoresizingMask:0];
  [viewCopy bounds];
  [interestAreaView setContentsBounds:?];
  styleProvider = [(GAXWorkspaceViewController *)self styleProvider];
  [styleProvider applicationViewRoundedCornerRadius];
  [interestAreaView setContentsCornerRadius:?];

  [interestAreaView setShouldStealAllEvents:0];
  [interestAreaView setEventStealerViewDelegate:self];
  layer = [interestAreaView layer];
  [layer setHitTestsAsOpaque:1];

  [viewCopy addSubview:interestAreaView];
}

- (void)_loadInstructionsLabelWithContainerView:(id)view
{
  viewCopy = view;
  v5 = [(GAXWorkspaceViewController *)self _instructionsLabelTextWhenTouchEnabled:[(GAXWorkspaceViewController *)self isTouchEnabled]];
  v6 = [(GAXWorkspaceViewController *)self _instructionsLabelWithText:v5];

  [viewCopy addSubview:v6];
  [(GAXWorkspaceViewController *)self setInstructionsLabel:v6];
}

- (void)_loadSystemFeatureViewWithContainerView:(id)view
{
  viewCopy = view;
  v5 = objc_opt_new();
  styleProvider = [(GAXWorkspaceViewController *)self styleProvider];
  [v5 setStyleProvider:styleProvider];

  [v5 setDelegate:self];
  userInterfaceServer = [(GAXWorkspaceViewController *)self userInterfaceServer];
  [v5 setUserInterfaceServer:userInterfaceServer];

  view = [v5 view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  [(GAXWorkspaceViewController *)self addChildViewController:v5];
  [viewCopy addSubview:view];
  [v5 didMoveToParentViewController:self];
  [(GAXWorkspaceViewController *)self setFeatureViewController:v5];
  styleProvider2 = [(GAXWorkspaceViewController *)self styleProvider];
  [styleProvider2 featureViewControllerHeight];
  v11 = v10;

  heightAnchor = [view heightAnchor];
  v13 = [heightAnchor constraintLessThanOrEqualToConstant:v11];

  v30 = v13;
  LODWORD(v14) = 1132068864;
  [v13 setPriority:v14];
  bottomAnchor = [view bottomAnchor];
  bottomAnchor2 = [viewCopy bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [(GAXWorkspaceViewController *)self setFeatureVCOnscreenConstraint:v17];

  topAnchor = [view topAnchor];
  bottomAnchor3 = [viewCopy bottomAnchor];
  v20 = [topAnchor constraintEqualToAnchor:bottomAnchor3];

  LODWORD(v21) = 1132068864;
  [v20 setPriority:v21];
  v31[0] = v13;
  widthAnchor = [view widthAnchor];
  widthAnchor2 = [viewCopy widthAnchor];
  v23 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v31[1] = v23;
  leadingAnchor = [view leadingAnchor];
  leadingAnchor2 = [viewCopy leadingAnchor];

  v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v31[2] = v26;
  featureVCOnscreenConstraint = [(GAXWorkspaceViewController *)self featureVCOnscreenConstraint];
  v31[3] = featureVCOnscreenConstraint;
  v31[4] = v20;
  v28 = [NSArray arrayWithObjects:v31 count:5];

  [NSLayoutConstraint activateConstraints:v28];
}

- (void)_updateStatusBar
{
  statusBar = [(GAXWorkspaceViewController *)self statusBar];
  [statusBar frame];
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
    [statusBar setFrame:{x, y, width, height}];
  }
}

- (void)_updateNavigationBar
{
  navigationBar = [(GAXWorkspaceViewController *)self navigationBar];
  [navigationBar frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  viewIfLoaded = [(GAXWorkspaceViewController *)self viewIfLoaded];
  [viewIfLoaded safeAreaInsets];
  v13 = v12 + 0.0;

  [(GAXWorkspaceViewController *)self _adjustedTopChromeViewFrame:v4, v13, v8, v10];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  superview = [navigationBar superview];
  [superview bounds];
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
    [navigationBar setFrame:{v15, v17, Width, v19}];
  }
}

- (void)_updateStatusAndNavigationBarBackgroundView
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    navigationBar = [(GAXWorkspaceViewController *)self navigationBar];
    [navigationBar frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    statusBar = [(GAXWorkspaceViewController *)self statusBar];
    [statusBar frame];
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
    statusAndNavigationBarBackgroundView = [(GAXWorkspaceViewController *)self statusAndNavigationBarBackgroundView];
    [statusAndNavigationBarBackgroundView frame];
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    if (!CGRectEqualToRect(v29, v31))
    {
      [statusAndNavigationBarBackgroundView setFrame:{x, y, width, height}];
    }
  }
}

- (void)_updateHostedApplicationShadowView
{
  hostedApplicationShadowView = [(GAXWorkspaceViewController *)self hostedApplicationShadowView];
  [hostedApplicationShadowView bounds];
  v5 = v4;
  v7 = v6;
  superview = [hostedApplicationShadowView superview];
  [superview bounds];
  v10 = v9;
  v12 = v11;

  [hostedApplicationShadowView setBounds:{v5, v7, v10, v12}];
  layoutMode = [(GAXWorkspaceViewController *)self layoutMode];
  size = CGRectZero.size;
  v20.origin = CGRectZero.origin;
  v20.size = size;
  sx = 1.0;
  [(GAXWorkspaceViewController *)self _getHostedApplicationViewParametersForLayoutMode:layoutMode scaleFactor:&sx frame:&v20 targetSize:CGSizeZero.width, CGSizeZero.height];
  memset(&v18, 0, sizeof(v18));
  CGAffineTransformMakeScale(&v18, sx, sx);
  MidX = CGRectGetMidX(v20);
  [hostedApplicationShadowView setCenter:{MidX, CGRectGetMidY(v20)}];
  v17 = v18;
  [hostedApplicationShadowView setTransform:&v17];
  v16 = 0.0;
  if (layoutMode == 2)
  {
    v16 = 1.0;
  }

  [hostedApplicationShadowView setAlpha:v16];
}

- (void)_updateInterestAreaView
{
  interestAreaViewController = [(GAXWorkspaceViewController *)self interestAreaViewController];
  view = [interestAreaViewController view];
  [view bounds];
  v6 = v5;
  v8 = v7;
  superview = [view superview];
  [superview bounds];
  v11 = v10;
  v13 = v12;

  [view setBounds:{v6, v8, v11, v13}];
  layoutMode = [(GAXWorkspaceViewController *)self layoutMode];
  size = CGRectZero.size;
  v23.origin = CGRectZero.origin;
  v23.size = size;
  sx = 1.0;
  [(GAXWorkspaceViewController *)self _getHostedApplicationViewParametersForLayoutMode:layoutMode scaleFactor:&sx frame:&v23 targetSize:CGSizeZero.width, CGSizeZero.height];
  memset(&v21, 0, sizeof(v21));
  CGAffineTransformMakeScale(&v21, sx, sx);
  MidX = CGRectGetMidX(v23);
  [view setCenter:{MidX, CGRectGetMidY(v23)}];
  v20 = v21;
  [view setTransform:&v20];
  [(GAXWorkspaceViewController *)self scaleForSpecialControlsInInterestAreaViewController:interestAreaViewController];
  v18 = v17;
  interestAreaView = [interestAreaViewController interestAreaView];
  [interestAreaView setBackgroundPatternScaleFactor:v18];
}

- (void)_updateInstructionsLabel
{
  instructionsLabel = [(GAXWorkspaceViewController *)self instructionsLabel];
  styleProvider = [(GAXWorkspaceViewController *)self styleProvider];
  v5 = styleProvider;
  if (instructionsLabel && styleProvider)
  {
    size = CGRectZero.size;
    v40.origin = CGRectZero.origin;
    v40.size = size;
    [(GAXWorkspaceViewController *)self _getHostedApplicationViewParametersForLayoutMode:2 scaleFactor:0 frame:&v40 targetSize:CGSizeZero.width, CGSizeZero.height];
    superview = [instructionsLabel superview];
    [superview bounds];
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
    featureViewController = [(GAXWorkspaceViewController *)self featureViewController];
    view = [featureViewController view];
    [view frame];
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

    [instructionsLabel sizeThatFits:{v38, v30, *&v35}];
    [(GAXWorkspaceViewController *)self _adjustedBottomChromeViewFrame:MidX - v33 * 0.5, MidY - v34 * 0.5, v33];
    v49 = CGRectIntegral(v48);
    [instructionsLabel setFrame:{v49.origin.x, v49.origin.y, v49.size.width, v49.size.height}];
  }
}

- (void)updateViewConstraints
{
  v3.receiver = self;
  v3.super_class = GAXWorkspaceViewController;
  [(GAXWorkspaceViewController *)&v3 updateViewConstraints];
  [(GAXWorkspaceViewController *)self _updateSystemFeatureView];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v4 = [(GAXWorkspaceViewController *)self view:window];
  [v4 setNeedsUpdateConstraints];
}

- (void)_updateSystemFeatureView
{
  v3 = [(GAXWorkspaceViewController *)self layoutMode]!= 1;
  featureVCOnscreenConstraint = [(GAXWorkspaceViewController *)self featureVCOnscreenConstraint];
  [featureVCOnscreenConstraint setActive:v3];
}

- (void)_updateHostedApplicationViewWithAnimationDuration:(double)duration targetSize:(CGSize)size
{
  width = size.width;
  size = CGRectZero.size;
  v19.origin = CGRectZero.origin;
  v19.size = size;
  v18 = 1.0;
  [(GAXWorkspaceViewController *)self _getHostedApplicationViewParametersForLayoutMode:[(GAXWorkspaceViewController *)self layoutMode] scaleFactor:&v18 frame:&v19 targetSize:width, size.height];
  MidX = CGRectGetMidX(v19);
  MidY = CGRectGetMidY(v19);
  overlayUserInterfaceViewController = [(GAXWorkspaceViewController *)self overlayUserInterfaceViewController];
  view = [overlayUserInterfaceViewController view];

  window = [view window];
  [view convertPoint:window toView:{MidX, MidY}];
  [window convertPoint:0 toWindow:?];
  v14 = v13;
  v16 = v15;
  userInterfaceServer = [(GAXWorkspaceViewController *)self userInterfaceServer];
  [userInterfaceServer updateHostedApplicationStateWithScaleFactor:v18 center:v14 animationDuration:{v16, duration}];
}

- (void)_updateEverythingForLayoutMode:(int)mode
{
  [(GAXWorkspaceViewController *)self setLayoutMode:*&mode];
  [(GAXWorkspaceViewController *)self _updateStatusBar];
  [(GAXWorkspaceViewController *)self _updateNavigationBar];
  [(GAXWorkspaceViewController *)self _updateStatusAndNavigationBarBackgroundView];
  [(GAXWorkspaceViewController *)self _updateInterestAreaView];
  [(GAXWorkspaceViewController *)self _updateHostedApplicationShadowView];
  [(GAXWorkspaceViewController *)self _updateInstructionsLabel];

  [(GAXWorkspaceViewController *)self _updateSystemFeatureView];
}

- (void)_willBeginTransitionWithType:(int)type
{
  featureViewController = [(GAXWorkspaceViewController *)self featureViewController];
  interestAreaViewController = [(GAXWorkspaceViewController *)self interestAreaViewController];
  v6 = interestAreaViewController;
  if (type <= 2)
  {
    if (type != 1)
    {
      if (type != 2)
      {
        goto LABEL_10;
      }

      [featureViewController dismissOptionsAnimated:1];
      v7 = [(GAXWorkspaceViewController *)self isTouchEnabled]^ 1;
      v8 = v6;
      goto LABEL_9;
    }

LABEL_7:
    [interestAreaViewController transitionIn];
    goto LABEL_10;
  }

  if (type != 4)
  {
    if (type != 3)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  [featureViewController dismissOptionsAnimated:1];
  v8 = v6;
  v7 = 1;
LABEL_9:
  [v8 transitionOutIncludingBackground:v7];
LABEL_10:
}

- (double)_transitionDuration
{
  styleProvider = [(GAXWorkspaceViewController *)self styleProvider];
  [styleProvider defaultAnimationDuration];
  v4 = v3;

  return v4;
}

- (void)_performTransitionWithType:(int)type completion:(id)completion
{
  v4 = *&type;
  completionCopy = completion;
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
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  else
  {
    [(GAXWorkspaceViewController *)self _willBeginTransitionWithType:v4];
    [(GAXWorkspaceViewController *)self _transitionDuration];
    v9 = v8;
    if (GAXUserInterfaceIdiomIsPhone())
    {
      overlayUserInterfaceViewController = [(GAXWorkspaceViewController *)self overlayUserInterfaceViewController];
      parentViewController = [overlayUserInterfaceViewController parentViewController];

      if (parentViewController)
      {
        do
        {
          parentViewController2 = [overlayUserInterfaceViewController parentViewController];

          v12ParentViewController = [parentViewController2 parentViewController];

          overlayUserInterfaceViewController = parentViewController2;
        }

        while (v12ParentViewController);
      }

      else
      {
        parentViewController2 = overlayUserInterfaceViewController;
      }

      interfaceOrientation = [parentViewController2 interfaceOrientation];
      v15 = +[AXUIDisplayManager sharedDisplayManager];
      activeInterfaceOrientation = [v15 activeInterfaceOrientation];

      if (interfaceOrientation != activeInterfaceOrientation)
      {
        v17 = +[AXUIDisplayManager sharedDisplayManager];
        [parentViewController2 setInterfaceOrientation:{objc_msgSend(v17, "activeInterfaceOrientation")}];

        [parentViewController2 setNeedsUpdateOfSupportedInterfaceOrientations];
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
    v19 = completionCopy;
    [UIView animateWithDuration:v21 animations:v18 completion:v9];
    [(GAXWorkspaceViewController *)self _updateHostedApplicationViewWithAnimationDuration:v9 targetSize:CGSizeZero.width, CGSizeZero.height];
  }
}

- (void)_performOrScheduleTransitionWithType:(int)type completion:(id)completion
{
  v4 = *&type;
  completionCopy = completion;
  if ([(GAXWorkspaceViewController *)self isTransitionInProgress])
  {
    transitionContextQueue = [(GAXWorkspaceViewController *)self transitionContextQueue];
    if (!transitionContextQueue)
    {
      transitionContextQueue = objc_opt_new();
      [(GAXWorkspaceViewController *)self setTransitionContextQueue:transitionContextQueue];
    }

    v8 = objc_opt_new();
    [v8 setType:v4];
    [v8 setCompletion:completionCopy];
    [transitionContextQueue ax_enqueueObject:v8];
  }

  else
  {
    [(GAXWorkspaceViewController *)self setTransitionInProgress:1];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_20FD4;
    v9[3] = &unk_5DA50;
    v9[4] = self;
    v10 = completionCopy;
    [(GAXWorkspaceViewController *)self _performTransitionWithType:v4 completion:v9];
  }
}

- (void)featureViewController:(id)controller touchSystemFeatureDidChange:(BOOL)change
{
  changeCopy = change;
  interestAreaViewController = [(GAXWorkspaceViewController *)self interestAreaViewController];
  [interestAreaViewController setBackgroundShouldCoverEverything:changeCopy ^ 1 animated:1];

  instructionsLabel = [(GAXWorkspaceViewController *)self instructionsLabel];

  if (instructionsLabel)
  {
    v8 = [(GAXWorkspaceViewController *)self _instructionsLabelTextWhenTouchEnabled:changeCopy];
    instructionsLabel2 = [(GAXWorkspaceViewController *)self instructionsLabel];
    text = [instructionsLabel2 text];
    v11 = [text isEqualToString:v8];

    if ((v11 & 1) == 0)
    {
      v12 = [(GAXWorkspaceViewController *)self _instructionsLabelWithText:v8];
      superview = [instructionsLabel2 superview];
      [superview insertSubview:v12 belowSubview:instructionsLabel2];

      [(GAXWorkspaceViewController *)self setInstructionsLabel:v12];
      [(GAXWorkspaceViewController *)self _updateInstructionsLabel];
      [v12 setAlpha:0.0];
      styleProvider = [(GAXWorkspaceViewController *)self styleProvider];
      [styleProvider defaultAnimationDuration];
      v16 = v15;

      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_212F4;
      v22[3] = &unk_5CD48;
      v23 = instructionsLabel2;
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

- (id)viewForPresentingOverlayUserInterfaceForFeatureViewController:(id)controller
{
  overlayUserInterfaceViewController = [(GAXWorkspaceViewController *)self overlayUserInterfaceViewController];
  view = [overlayUserInterfaceViewController view];

  return view;
}

- (void)getInterestAreaPathForFingerPath:(id)path interestAreaViewController:(id)controller completion:(id)completion
{
  pathCopy = path;
  controllerCopy = controller;
  completionCopy = completion;
  view = [(GAXWorkspaceViewController *)self view];
  v12 = objc_opt_new();
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_215CC;
  v26[3] = &unk_5DAA0;
  v13 = view;
  v27 = v13;
  v28 = v12;
  v14 = v12;
  [pathCopy enumerateElementsUsingBlock:v26];
  userInterfaceServer = [(GAXWorkspaceViewController *)self userInterfaceServer];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_2166C;
  v20[3] = &unk_5DAC8;
  v21 = controllerCopy;
  v22 = pathCopy;
  v23 = v13;
  selfCopy = self;
  v25 = completionCopy;
  v16 = completionCopy;
  v17 = v13;
  v18 = pathCopy;
  v19 = controllerCopy;
  [userInterfaceServer getContainedViewsInFrontmostApplicationForFingerPath:v14 completion:v20];
}

- (double)scaleForSpecialControlsInInterestAreaViewController:(id)controller
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

- (CGRect)boundsForConstrainingFingerPathInInterestAreaViewController:(id)controller
{
  controllerCopy = controller;
  if ([(GAXWorkspaceViewController *)self isViewLoaded])
  {
    navigationBar = [(GAXWorkspaceViewController *)self navigationBar];
    [navigationBar frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    featureViewController = [(GAXWorkspaceViewController *)self featureViewController];
    view = [featureViewController view];
    [view frame];
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
    superview = [navigationBar superview];
    view2 = [controllerCopy view];
    [superview convertRect:view2 toView:{v7, MaxY, v11, v25}];
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

- (id)referenceViewForConvertingFromAndToWindowCoordinateSystemForInterestAreaViewController:(id)controller
{
  if ([(GAXWorkspaceViewController *)self isViewLoaded])
  {
    view = [(GAXWorkspaceViewController *)self view];
  }

  else
  {
    view = 0;
  }

  return view;
}

- (id)viewToCoverWithOutOfBoundsDrawingForInterestAreaViewWithController:(id)controller edgeInsets:(UIEdgeInsets *)insets
{
  top = UIEdgeInsetsZero.top;
  bottom = UIEdgeInsetsZero.bottom;
  if (![(GAXWorkspaceViewController *)self isViewLoaded])
  {
    view = 0;
    if (!insets)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  view = [(GAXWorkspaceViewController *)self view];
  navigationBar = [(GAXWorkspaceViewController *)self navigationBar];
  [navigationBar frame];
  top = UIEdgeInsetsZero.top + CGRectGetMaxY(v17);

  [view bounds];
  MaxY = CGRectGetMaxY(v18);
  featureViewController = [(GAXWorkspaceViewController *)self featureViewController];
  view2 = [featureViewController view];
  [view2 frame];
  bottom = bottom + MaxY - CGRectGetMinY(v19);

  if (insets)
  {
LABEL_5:
    left = UIEdgeInsetsZero.left;
    right = UIEdgeInsetsZero.right;
    insets->top = top;
    insets->left = left;
    insets->bottom = bottom;
    insets->right = right;
  }

LABEL_6:

  return view;
}

- (BOOL)isInterestAreaViewAccessibilityElementWithController:(id)controller
{
  userInterfaceServer = [(GAXWorkspaceViewController *)self userInterfaceServer];
  isInWorkspace = [userInterfaceServer isInWorkspace];

  return isInWorkspace;
}

- (void)interestAreaViewController:(id)controller willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  controllerCopy = controller;
  userInterfaceServer = [(GAXWorkspaceViewController *)self userInterfaceServer];
  [userInterfaceServer interestAreaViewController:controllerCopy willRotateToInterfaceOrientation:orientation duration:duration];
}

- (void)interestAreaViewController:(id)controller didRotateFromInterfaceOrientation:(int64_t)orientation
{
  controllerCopy = controller;
  userInterfaceServer = [(GAXWorkspaceViewController *)self userInterfaceServer];
  [userInterfaceServer interestAreaViewController:controllerCopy didRotateFromInterfaceOrientation:orientation];
}

- (void)archiveInterestAreaPathsForStorageInterestAreaViewController:(id)controller
{
  controllerCopy = controller;
  userInterfaceServer = [(GAXWorkspaceViewController *)self userInterfaceServer];
  [userInterfaceServer archiveInterestAreaPathsForStorageInterestAreaViewController:controllerCopy];
}

- (BOOL)eventStealerView:(id)view shouldStealEventAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  interestAreaViewController = [(GAXWorkspaceViewController *)self interestAreaViewController];
  if ([interestAreaViewController isViewLoaded])
  {
    [(GAXWorkspaceViewController *)self boundsForConstrainingFingerPathInInterestAreaViewController:interestAreaViewController];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    view = [interestAreaViewController view];
    [view convertPoint:viewCopy fromView:{x, y}];
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