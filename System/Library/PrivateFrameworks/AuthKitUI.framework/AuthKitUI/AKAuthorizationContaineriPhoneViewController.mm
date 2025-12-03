@interface AKAuthorizationContaineriPhoneViewController
- (AKAuthorizationContaineriPhoneViewController)init;
- (AKAuthorizationContaineriPhoneViewController)initWithRootViewController:(id)controller authorizationContext:(id)context;
- (BOOL)_delegate_authorizationContainerViewControllerShouldDismiss;
- (CGRect)_dismissalFrameForContentSize:(CGSize)size;
- (CGRect)_layoutFrameForContentSize:(CGSize)size;
- (CGSize)containerContentSize;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (void)_delegate_authorizationContainerViewControllerDidDismiss;
- (void)_handleTapGesture:(id)gesture;
- (void)_layoutContainerView:(BOOL)view;
- (void)orientationChanged;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)setContainerContentSize:(CGSize)size animated:(BOOL)animated;
- (void)updateConstraintsForRootView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation AKAuthorizationContaineriPhoneViewController

- (AKAuthorizationContaineriPhoneViewController)init
{
  v4 = 0;
  v4 = [(AKAuthorizationContaineriPhoneViewController *)self initWithRootViewController:0 authorizationContext:?];
  v3 = MEMORY[0x277D82BE0](v4);
  objc_storeStrong(&v4, 0);
  return v3;
}

- (AKAuthorizationContaineriPhoneViewController)initWithRootViewController:(id)controller authorizationContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v11 = 0;
  objc_storeStrong(&v11, context);
  v4 = selfCopy;
  selfCopy = 0;
  v10.receiver = v4;
  v10.super_class = AKAuthorizationContaineriPhoneViewController;
  selfCopy = [(AKAuthorizationContainerViewController *)&v10 initWithRootViewController:location[0] authorizationContext:v11];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    _AKAuthorizationContainerViewControllerInitialize(selfCopy);
    array = [MEMORY[0x277CBEB18] array];
    constraints = selfCopy->_constraints;
    selfCopy->_constraints = array;
    MEMORY[0x277D82BD8](constraints);
  }

  v8 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (void)orientationChanged
{
  selfCopy = self;
  v5[1] = a2;
  v2 = MEMORY[0x277CCAAD0];
  constraints = [(AKAuthorizationContaineriPhoneViewController *)self constraints];
  [v2 deactivateConstraints:?];
  MEMORY[0x277D82BD8](constraints);
  v5[0] = [(AKAuthorizationContainerViewController *)selfCopy rootViewController];
  if (v5[0])
  {
    view = [v5[0] view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    [(AKAuthorizationContaineriPhoneViewController *)selfCopy updateConstraintsForRootView:view];
    objc_storeStrong(&view, 0);
  }

  objc_storeStrong(v5, 0);
}

- (void)updateConstraintsForRootView:(id)view
{
  v46[5] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  array = [MEMORY[0x277CBEB18] array];
  view = [(AKAuthorizationContaineriPhoneViewController *)selfCopy view];
  window = [view window];
  v40 = 0;
  v38 = 0;
  v37 = 1;
  if ([window interfaceOrientation] != 4)
  {
    view2 = [(AKAuthorizationContaineriPhoneViewController *)selfCopy view];
    v40 = 1;
    window2 = [view2 window];
    v38 = 1;
    v37 = [window2 interfaceOrientation] == 3;
  }

  if (v38)
  {
    MEMORY[0x277D82BD8](window2);
  }

  if (v40)
  {
    MEMORY[0x277D82BD8](view2);
  }

  MEMORY[0x277D82BD8](window);
  MEMORY[0x277D82BD8](view);
  if (v37)
  {
    leadingAnchor = [location[0] leadingAnchor];
    view3 = [(AKAuthorizationContaineriPhoneViewController *)selfCopy view];
    leadingAnchor2 = [view3 leadingAnchor];
    view4 = [(AKAuthorizationContaineriPhoneViewController *)selfCopy view];
    [view4 frame];
    v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v3 / 4.0];
    v46[0] = v30;
    trailingAnchor = [location[0] trailingAnchor];
    view5 = [(AKAuthorizationContaineriPhoneViewController *)selfCopy view];
    trailingAnchor2 = [view5 trailingAnchor];
    view6 = [(AKAuthorizationContaineriPhoneViewController *)selfCopy view];
    [view6 frame];
    v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v4 / 4.0];
    v46[1] = v25;
    bottomAnchor = [location[0] bottomAnchor];
    view7 = [(AKAuthorizationContaineriPhoneViewController *)selfCopy view];
    bottomAnchor2 = [view7 bottomAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:?];
    v46[2] = v21;
    topAnchor = [location[0] topAnchor];
    view8 = [(AKAuthorizationContaineriPhoneViewController *)selfCopy view];
    topAnchor2 = [view8 topAnchor];
    view9 = [(AKAuthorizationContaineriPhoneViewController *)selfCopy view];
    [view9 frame];
    v16 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:v5 / 6.0];
    v46[3] = v16;
    v46[4] = selfCopy->_rootViewHeightConstraint;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:5];
    [array addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](view9);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](view8);
    MEMORY[0x277D82BD8](topAnchor);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](view7);
    MEMORY[0x277D82BD8](bottomAnchor);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](view6);
    MEMORY[0x277D82BD8](trailingAnchor2);
    MEMORY[0x277D82BD8](view5);
    MEMORY[0x277D82BD8](trailingAnchor);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](view4);
    MEMORY[0x277D82BD8](leadingAnchor2);
    MEMORY[0x277D82BD8](view3);
    MEMORY[0x277D82BD8](leadingAnchor);
  }

  else
  {
    leadingAnchor3 = [location[0] leadingAnchor];
    view10 = [(AKAuthorizationContaineriPhoneViewController *)selfCopy view];
    leadingAnchor4 = [view10 leadingAnchor];
    v11 = [leadingAnchor3 constraintEqualToAnchor:?];
    v45[0] = v11;
    trailingAnchor3 = [location[0] trailingAnchor];
    view11 = [(AKAuthorizationContaineriPhoneViewController *)selfCopy view];
    trailingAnchor4 = [view11 trailingAnchor];
    v7 = [trailingAnchor3 constraintEqualToAnchor:?];
    v45[1] = v7;
    v45[2] = selfCopy->_rootViewTopConstraint;
    v45[3] = selfCopy->_rootViewHeightConstraint;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];
    [array addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](trailingAnchor4);
    MEMORY[0x277D82BD8](view11);
    MEMORY[0x277D82BD8](trailingAnchor3);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](leadingAnchor4);
    MEMORY[0x277D82BD8](view10);
    MEMORY[0x277D82BD8](leadingAnchor3);
  }

  [MEMORY[0x277CCAAD0] activateConstraints:array];
  [(AKAuthorizationContaineriPhoneViewController *)selfCopy setConstraints:array];
  objc_storeStrong(&array, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)viewDidLoad
{
  selfCopy = self;
  v30 = a2;
  v29.receiver = self;
  v29.super_class = AKAuthorizationContaineriPhoneViewController;
  [(AKAuthorizationContaineriPhoneViewController *)&v29 viewDidLoad];
  view = [(AKAuthorizationContaineriPhoneViewController *)selfCopy view];
  [view addGestureRecognizer:selfCopy->_tapGestureRecognizer];
  MEMORY[0x277D82BD8](view);
  view2 = [(AKAuthorizationContaineriPhoneViewController *)selfCopy view];
  [view2 setOpaque:0];
  MEMORY[0x277D82BD8](view2);
  v27 = 0;
  v25 = 0;
  _isRapportLogin = 0;
  if (+[AKAuthorizationAppearance shouldShowBlurBackground])
  {
    presentationContext = [(AKAuthorizationContainerViewController *)selfCopy presentationContext];
    v27 = 1;
    credentialRequestContext = [(AKAuthorizationPresentationContext *)presentationContext credentialRequestContext];
    v25 = 1;
    _isRapportLogin = [credentialRequestContext _isRapportLogin];
  }

  if (v25)
  {
    MEMORY[0x277D82BD8](credentialRequestContext);
  }

  if (v27)
  {
    MEMORY[0x277D82BD8](presentationContext);
  }

  if (_isRapportLogin)
  {
    v2 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
    blurBackgroundView = selfCopy->_blurBackgroundView;
    selfCopy->_blurBackgroundView = v2;
    MEMORY[0x277D82BD8](blurBackgroundView);
    v17 = selfCopy->_blurBackgroundView;
    view3 = [(AKAuthorizationContaineriPhoneViewController *)selfCopy view];
    [view3 frame];
    v24[1] = v4;
    v24[2] = v5;
    v24[3] = v6;
    v24[4] = v7;
    [(UIVisualEffectView *)v17 setFrame:*&v4, *&v5, *&v6, *&v7];
    MEMORY[0x277D82BD8](view3);
    [(UIVisualEffectView *)selfCopy->_blurBackgroundView setAutoresizingMask:18];
    view4 = [(AKAuthorizationContaineriPhoneViewController *)selfCopy view];
    [view4 insertSubview:selfCopy->_blurBackgroundView atIndex:0];
    MEMORY[0x277D82BD8](view4);
  }

  v24[0] = [(AKAuthorizationContainerViewController *)selfCopy rootViewController];
  if (v24[0])
  {
    [v24[0] willMoveToParentViewController:selfCopy];
    [(AKAuthorizationContaineriPhoneViewController *)selfCopy addChildViewController:v24[0]];
    view5 = [v24[0] view];
    [view5 setTranslatesAutoresizingMaskIntoConstraints:0];
    view6 = [(AKAuthorizationContaineriPhoneViewController *)selfCopy view];
    [view6 addSubview:view5];
    MEMORY[0x277D82BD8](view6);
    [v24[0] didMoveToParentViewController:selfCopy];
    topAnchor = [view5 topAnchor];
    view7 = [(AKAuthorizationContaineriPhoneViewController *)selfCopy view];
    topAnchor2 = [view7 topAnchor];
    v8 = [topAnchor constraintEqualToAnchor:?];
    rootViewTopConstraint = selfCopy->_rootViewTopConstraint;
    selfCopy->_rootViewTopConstraint = v8;
    MEMORY[0x277D82BD8](rootViewTopConstraint);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](view7);
    MEMORY[0x277D82BD8](topAnchor);
    heightAnchor = [view5 heightAnchor];
    v10 = [heightAnchor constraintEqualToConstant:0.0];
    rootViewHeightConstraint = selfCopy->_rootViewHeightConstraint;
    selfCopy->_rootViewHeightConstraint = v10;
    MEMORY[0x277D82BD8](rootViewHeightConstraint);
    MEMORY[0x277D82BD8](heightAnchor);
    [(AKAuthorizationContaineriPhoneViewController *)selfCopy updateConstraintsForRootView:view5];
    objc_storeStrong(&view5, 0);
  }

  objc_storeStrong(v24, 0);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v14 = a2;
  appearCopy = appear;
  v12.receiver = self;
  v12.super_class = AKAuthorizationContaineriPhoneViewController;
  [(AKAuthorizationContaineriPhoneViewController *)&v12 viewWillAppear:appear];
  if (([(AKAuthorizationContaineriPhoneViewController *)selfCopy isBeingPresented]& 1) != 0)
  {
    view = [(AKAuthorizationContaineriPhoneViewController *)selfCopy view];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [view setBackgroundColor:?];
    MEMORY[0x277D82BD8](clearColor);
    MEMORY[0x277D82BD8](view);
    if (+[AKAuthorizationAppearance shouldShowBlurBackground])
    {
      transitionCoordinator = [(AKAuthorizationContaineriPhoneViewController *)selfCopy transitionCoordinator];
      v6 = MEMORY[0x277D85DD0];
      v7 = -1073741824;
      v8 = 0;
      v9 = __63__AKAuthorizationContaineriPhoneViewController_viewWillAppear___block_invoke;
      v10 = &unk_2784A62E0;
      v11 = MEMORY[0x277D82BE0](selfCopy);
      [transitionCoordinator animateAlongsideTransition:&v6 completion:?];
      MEMORY[0x277D82BD8](transitionCoordinator);
      objc_storeStrong(&v11, 0);
    }
  }
}

void __63__AKAuthorizationContaineriPhoneViewController_viewWillAppear___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8[3] = a1;
  v6 = a1[4];
  [v6 preferredContentSize];
  v8[1] = v2;
  v8[2] = v3;
  [v6 setContainerContentSize:objc_msgSend(location[0] animated:{"isAnimated"), *&v2, *&v3}];
  if (*(a1[4] + 131))
  {
    v8[0] = [MEMORY[0x277D75210] effectWithStyle:{+[AKAuthorizationAppearance paneBlurEffectStyle](AKAuthorizationAppearance, "paneBlurEffectStyle")}];
    [*(a1[4] + 131) setEffect:v8[0]];
    objc_storeStrong(v8, 0);
  }

  else
  {
    v5 = +[AKAuthorizationAppearance translucentBackdropColor];
    v4 = [a1[4] view];
    [v4 setBackgroundColor:v5];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(location, 0);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v15 = a2;
  appearCopy = appear;
  v13.receiver = self;
  v13.super_class = AKAuthorizationContaineriPhoneViewController;
  [(AKAuthorizationContaineriPhoneViewController *)&v13 viewDidAppear:appear];
  rootViewController = [(AKAuthorizationContainerViewController *)selfCopy rootViewController];
  [(UIViewController *)rootViewController preferredContentSize];
  v11 = v3;
  v12 = v4;
  MEMORY[0x277D82BD8](rootViewController);
  [(AKAuthorizationContaineriPhoneViewController *)selfCopy _dismissalFrameForContentSize:v11, v12];
  v9 = v5;
  v10 = v6;
  if (([(AKAuthorizationContaineriPhoneViewController *)selfCopy isBeingPresented]& 1) != 0)
  {
    [(NSLayoutConstraint *)selfCopy->_rootViewTopConstraint setConstant:v9];
    [(NSLayoutConstraint *)selfCopy->_rootViewHeightConstraint setConstant:v10];
    view = [(AKAuthorizationContaineriPhoneViewController *)selfCopy view];
    [view layoutIfNeeded];
    MEMORY[0x277D82BD8](view);
    [(AKAuthorizationContaineriPhoneViewController *)selfCopy setContainerContentSize:1 animated:v11, v12];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v12 = a2;
  disappearCopy = disappear;
  v10.receiver = self;
  v10.super_class = AKAuthorizationContaineriPhoneViewController;
  [(AKAuthorizationContaineriPhoneViewController *)&v10 viewWillDisappear:disappear];
  if (+[AKAuthorizationAppearance shouldShowBlurBackground]&& ([(AKAuthorizationContaineriPhoneViewController *)selfCopy isBeingDismissed]& 1) != 0)
  {
    transitionCoordinator = [(AKAuthorizationContaineriPhoneViewController *)selfCopy transitionCoordinator];
    v4 = MEMORY[0x277D85DD0];
    v5 = -1073741824;
    v6 = 0;
    v7 = __66__AKAuthorizationContaineriPhoneViewController_viewWillDisappear___block_invoke;
    v8 = &unk_2784A62E0;
    v9 = MEMORY[0x277D82BE0](selfCopy);
    [transitionCoordinator animateAlongsideTransition:&v4 completion:?];
    MEMORY[0x277D82BD8](transitionCoordinator);
    objc_storeStrong(&v9, 0);
  }
}

void __66__AKAuthorizationContaineriPhoneViewController_viewWillDisappear___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (*(a1[4] + 131))
  {
    [*(a1[4] + 131) setEffect:0];
  }

  else
  {
    v3 = [a1[4] view];
    v2 = [MEMORY[0x277D75348] clearColor];
    [v3 setBackgroundColor:?];
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(location, 0);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = AKAuthorizationContaineriPhoneViewController;
  [(AKAuthorizationContaineriPhoneViewController *)&v2 viewWillLayoutSubviews];
  [(AKAuthorizationContaineriPhoneViewController *)selfCopy orientationChanged];
}

- (void)setContainerContentSize:(CGSize)size animated:(BOOL)animated
{
  if (!__CGSizeEqualToSize_0(self->_containerContentSize.width, self->_containerContentSize.height, size.width, size.height))
  {
    view = [(AKAuthorizationContaineriPhoneViewController *)self view];
    [view bounds];
    v14.origin.x = v4;
    v14.origin.y = v5;
    v14.size.width = v6;
    v14.size.height = v7;
    MEMORY[0x277D82BD8](view);
    Width = CGRectGetWidth(v14);
    if (Width >= size.width)
    {
      v9 = size.width;
    }

    else
    {
      v9 = Width;
    }

    v13.width = v9;
    Height = CGRectGetHeight(v14);
    if (Height >= size.height)
    {
      v8 = size.height;
    }

    else
    {
      v8 = Height;
    }

    v13.height = v8;
    self->_containerContentSize = v13;
    [(AKAuthorizationContaineriPhoneViewController *)self _layoutContainerView:animated, *&v8];
  }
}

- (void)_layoutContainerView:(BOOL)view
{
  selfCopy = self;
  v26 = a2;
  viewCopy = view;
  rootViewController = [(AKAuthorizationContainerViewController *)self rootViewController];
  viewIfLoaded = [(UIViewController *)rootViewController viewIfLoaded];
  MEMORY[0x277D82BD8](rootViewController);
  if (viewIfLoaded)
  {
    [(AKAuthorizationContaineriPhoneViewController *)selfCopy containerContentSize];
    v21 = v3;
    v22 = v4;
    [(AKAuthorizationContaineriPhoneViewController *)selfCopy _layoutFrameForContentSize:v3, v4];
    v23.origin.x = v5;
    v23.origin.y = v6;
    v23.size.width = v7;
    v23.size.height = v8;
    [viewIfLoaded frame];
    v20 = v28;
    if (!CGRectEqualToRect(v28, v23))
    {
      [(NSLayoutConstraint *)selfCopy->_rootViewHeightConstraint setConstant:v23.size.height];
      [(NSLayoutConstraint *)selfCopy->_rootViewTopConstraint setConstant:v23.origin.y];
      v13 = MEMORY[0x277D85DD0];
      v14 = -1073741824;
      v15 = 0;
      v16 = __69__AKAuthorizationContaineriPhoneViewController__layoutContainerView___block_invoke;
      v17 = &unk_2784A5C90;
      v18 = MEMORY[0x277D82BE0](selfCopy);
      v19 = MEMORY[0x223DB6C90](&v13);
      if (viewCopy)
      {
        v12 = objc_alloc_init(MEMORY[0x277D75A60]);
        v9 = objc_alloc(MEMORY[0x277D75D40]);
        v11 = [v9 initWithDuration:v12 timingParameters:0.35];
        [v11 addAnimations:v19];
        [v11 startAnimation];
        objc_storeStrong(&v11, 0);
        objc_storeStrong(&v12, 0);
      }

      else
      {
        (*(v19 + 2))();
      }

      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v18, 0);
    }
  }

  objc_storeStrong(&viewIfLoaded, 0);
}

double __69__AKAuthorizationContaineriPhoneViewController__layoutContainerView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

- (CGRect)_layoutFrameForContentSize:(CGSize)size
{
  sizeCopy = size;
  location[2] = self;
  location[1] = a2;
  location[0] = [(AKAuthorizationContaineriPhoneViewController *)self viewIfLoaded];
  if (location[0])
  {
    [location[0] bounds];
    rect = v12;
    *&v10 = (CGRectGetWidth(v12) - sizeCopy.width) / 2.0;
    *(&v10 + 1) = CGRectGetHeight(rect) - sizeCopy.height;
    v11 = sizeCopy;
  }

  else
  {
    v10 = *MEMORY[0x277CBF3A0];
    v11 = *(MEMORY[0x277CBF3A0] + 16);
  }

  objc_storeStrong(location, 0);
  v4 = *(&v10 + 1);
  v3 = *&v10;
  height = v11.height;
  width = v11.width;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_dismissalFrameForContentSize:(CGSize)size
{
  sizeCopy = size;
  location[2] = self;
  location[1] = a2;
  location[0] = [(AKAuthorizationContaineriPhoneViewController *)self viewIfLoaded];
  if (location[0])
  {
    [location[0] bounds];
    *&v9 = 0;
    *(&v9 + 1) = CGRectGetHeight(v11);
    v10 = sizeCopy;
  }

  else
  {
    v9 = *MEMORY[0x277CBF3A0];
    v10 = *(MEMORY[0x277CBF3A0] + 16);
  }

  objc_storeStrong(location, 0);
  v4 = *(&v9 + 1);
  v3 = *&v9;
  height = v10.height;
  width = v10.width;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_handleTapGesture:(id)gesture
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, gesture);
  if (selfCopy->_tapGestureRecognizer == location[0])
  {
    tapGestureRecognizer = selfCopy->_tapGestureRecognizer;
    view = [(AKAuthorizationContaineriPhoneViewController *)selfCopy view];
    [(UITapGestureRecognizer *)tapGestureRecognizer locationInView:?];
    v12.x = v3;
    v12.y = v4;
    *&v5 = MEMORY[0x277D82BD8](view).n128_u64[0];
    rootViewController = [(AKAuthorizationContainerViewController *)selfCopy rootViewController];
    view2 = [(UIViewController *)rootViewController view];
    [(UIView *)view2 frame];
    v11 = CGRectContainsPoint(v15, v12);
    MEMORY[0x277D82BD8](view2);
    *&v6 = MEMORY[0x277D82BD8](rootViewController).n128_u64[0];
    if (!v11 && [(AKAuthorizationContaineriPhoneViewController *)selfCopy _delegate_authorizationContainerViewControllerShouldDismiss])
    {
      [(AKAuthorizationContaineriPhoneViewController *)selfCopy _delegate_authorizationContainerViewControllerDidDismiss];
    }
  }

  objc_storeStrong(location, 0);
}

- (BOOL)_delegate_authorizationContainerViewControllerShouldDismiss
{
  selfCopy = self;
  location[1] = a2;
  v4 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  v5 = v4;
  dispatch_assert_queue_V2(v5);
  location[0] = [(AKAuthorizationContainerViewController *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [location[0] authorizationContainerViewControllerShouldDismiss:selfCopy] & 1;
  }

  else
  {
    v8 = 1;
  }

  objc_storeStrong(location, 0);
  return v8 & 1;
}

- (void)_delegate_authorizationContainerViewControllerDidDismiss
{
  selfCopy = self;
  location[1] = a2;
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  v4 = v3;
  dispatch_assert_queue_V2(v4);
  location[0] = [(AKAuthorizationContainerViewController *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [location[0] authorizationContainerViewControllerDidDismiss:selfCopy];
  }

  objc_storeStrong(location, 0);
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, container);
  v8.receiver = selfCopy;
  v8.super_class = AKAuthorizationContaineriPhoneViewController;
  [(AKAuthorizationContaineriPhoneViewController *)&v8 preferredContentSizeDidChangeForChildContentContainer:location[0]];
  if (([(AKAuthorizationContaineriPhoneViewController *)selfCopy isBeingPresented]& 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    rootViewController = [(AKAuthorizationContainerViewController *)selfCopy rootViewController];
    if (rootViewController == location[0])
    {
      v5 = selfCopy;
      [location[0] preferredContentSize];
      [(AKAuthorizationContaineriPhoneViewController *)v5 setContainerContentSize:1 animated:v3, v4];
      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    objc_storeStrong(&rootViewController, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  sizeCopy = size;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coordinator);
  v11.receiver = selfCopy;
  v11.super_class = AKAuthorizationContaineriPhoneViewController;
  [(AKAuthorizationContaineriPhoneViewController *)&v11 viewWillTransitionToSize:location[0] withTransitionCoordinator:sizeCopy.width, sizeCopy.height];
  v4 = location[0];
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __99__AKAuthorizationContaineriPhoneViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9 = &unk_2784A62E0;
  v10 = MEMORY[0x277D82BE0](selfCopy);
  [v4 animateAlongsideTransition:? completion:?];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

void __99__AKAuthorizationContaineriPhoneViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] _layoutContainerView:{objc_msgSend(location[0], "isAnimated")}];
  objc_storeStrong(location, 0);
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v10 = 0;
  objc_storeStrong(&v10, presentingController);
  v9 = 0;
  objc_storeStrong(&v9, sourceController);
  v8 = [[AKAuthorizationContainerViewControllerAnimator alloc] initWithPresenting:1];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)animationControllerForDismissedController:(id)controller
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v4 = [[AKAuthorizationContainerViewControllerAnimator alloc] initWithPresenting:0];
  objc_storeStrong(location, 0);

  return v4;
}

- (CGSize)containerContentSize
{
  height = self->_containerContentSize.height;
  width = self->_containerContentSize.width;
  result.height = height;
  result.width = width;
  return result;
}

@end