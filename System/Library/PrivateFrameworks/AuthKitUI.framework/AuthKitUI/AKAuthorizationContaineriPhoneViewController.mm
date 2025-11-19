@interface AKAuthorizationContaineriPhoneViewController
- (AKAuthorizationContaineriPhoneViewController)init;
- (AKAuthorizationContaineriPhoneViewController)initWithRootViewController:(id)a3 authorizationContext:(id)a4;
- (BOOL)_delegate_authorizationContainerViewControllerShouldDismiss;
- (CGRect)_dismissalFrameForContentSize:(CGSize)a3;
- (CGRect)_layoutFrameForContentSize:(CGSize)a3;
- (CGSize)containerContentSize;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (void)_delegate_authorizationContainerViewControllerDidDismiss;
- (void)_handleTapGesture:(id)a3;
- (void)_layoutContainerView:(BOOL)a3;
- (void)orientationChanged;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)setContainerContentSize:(CGSize)a3 animated:(BOOL)a4;
- (void)updateConstraintsForRootView:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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

- (AKAuthorizationContaineriPhoneViewController)initWithRootViewController:(id)a3 authorizationContext:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v4 = v13;
  v13 = 0;
  v10.receiver = v4;
  v10.super_class = AKAuthorizationContaineriPhoneViewController;
  v13 = [(AKAuthorizationContainerViewController *)&v10 initWithRootViewController:location[0] authorizationContext:v11];
  objc_storeStrong(&v13, v13);
  if (v13)
  {
    _AKAuthorizationContainerViewControllerInitialize(v13);
    v5 = [MEMORY[0x277CBEB18] array];
    constraints = v13->_constraints;
    v13->_constraints = v5;
    MEMORY[0x277D82BD8](constraints);
  }

  v8 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  return v8;
}

- (void)orientationChanged
{
  v6 = self;
  v5[1] = a2;
  v2 = MEMORY[0x277CCAAD0];
  v3 = [(AKAuthorizationContaineriPhoneViewController *)self constraints];
  [v2 deactivateConstraints:?];
  MEMORY[0x277D82BD8](v3);
  v5[0] = [(AKAuthorizationContainerViewController *)v6 rootViewController];
  if (v5[0])
  {
    v4 = [v5[0] view];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(AKAuthorizationContaineriPhoneViewController *)v6 updateConstraintsForRootView:v4];
    objc_storeStrong(&v4, 0);
  }

  objc_storeStrong(v5, 0);
}

- (void)updateConstraintsForRootView:(id)a3
{
  v46[5] = *MEMORY[0x277D85DE8];
  v44 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v42 = [MEMORY[0x277CBEB18] array];
  v35 = [(AKAuthorizationContaineriPhoneViewController *)v44 view];
  v36 = [v35 window];
  v40 = 0;
  v38 = 0;
  v37 = 1;
  if ([v36 interfaceOrientation] != 4)
  {
    v41 = [(AKAuthorizationContaineriPhoneViewController *)v44 view];
    v40 = 1;
    v39 = [v41 window];
    v38 = 1;
    v37 = [v39 interfaceOrientation] == 3;
  }

  if (v38)
  {
    MEMORY[0x277D82BD8](v39);
  }

  if (v40)
  {
    MEMORY[0x277D82BD8](v41);
  }

  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v35);
  if (v37)
  {
    v34 = [location[0] leadingAnchor];
    v33 = [(AKAuthorizationContaineriPhoneViewController *)v44 view];
    v32 = [v33 leadingAnchor];
    v31 = [(AKAuthorizationContaineriPhoneViewController *)v44 view];
    [v31 frame];
    v30 = [v34 constraintEqualToAnchor:v32 constant:v3 / 4.0];
    v46[0] = v30;
    v29 = [location[0] trailingAnchor];
    v28 = [(AKAuthorizationContaineriPhoneViewController *)v44 view];
    v27 = [v28 trailingAnchor];
    v26 = [(AKAuthorizationContaineriPhoneViewController *)v44 view];
    [v26 frame];
    v25 = [v29 constraintEqualToAnchor:v27 constant:-v4 / 4.0];
    v46[1] = v25;
    v24 = [location[0] bottomAnchor];
    v23 = [(AKAuthorizationContaineriPhoneViewController *)v44 view];
    v22 = [v23 bottomAnchor];
    v21 = [v24 constraintEqualToAnchor:?];
    v46[2] = v21;
    v20 = [location[0] topAnchor];
    v19 = [(AKAuthorizationContaineriPhoneViewController *)v44 view];
    v18 = [v19 topAnchor];
    v17 = [(AKAuthorizationContaineriPhoneViewController *)v44 view];
    [v17 frame];
    v16 = [v20 constraintGreaterThanOrEqualToAnchor:v18 constant:v5 / 6.0];
    v46[3] = v16;
    v46[4] = v44->_rootViewHeightConstraint;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:5];
    [v42 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
  }

  else
  {
    v14 = [location[0] leadingAnchor];
    v13 = [(AKAuthorizationContaineriPhoneViewController *)v44 view];
    v12 = [v13 leadingAnchor];
    v11 = [v14 constraintEqualToAnchor:?];
    v45[0] = v11;
    v10 = [location[0] trailingAnchor];
    v9 = [(AKAuthorizationContaineriPhoneViewController *)v44 view];
    v8 = [v9 trailingAnchor];
    v7 = [v10 constraintEqualToAnchor:?];
    v45[1] = v7;
    v45[2] = v44->_rootViewTopConstraint;
    v45[3] = v44->_rootViewHeightConstraint;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];
    [v42 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
  }

  [MEMORY[0x277CCAAD0] activateConstraints:v42];
  [(AKAuthorizationContaineriPhoneViewController *)v44 setConstraints:v42];
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)viewDidLoad
{
  v31 = self;
  v30 = a2;
  v29.receiver = self;
  v29.super_class = AKAuthorizationContaineriPhoneViewController;
  [(AKAuthorizationContaineriPhoneViewController *)&v29 viewDidLoad];
  v20 = [(AKAuthorizationContaineriPhoneViewController *)v31 view];
  [v20 addGestureRecognizer:v31->_tapGestureRecognizer];
  MEMORY[0x277D82BD8](v20);
  v21 = [(AKAuthorizationContaineriPhoneViewController *)v31 view];
  [v21 setOpaque:0];
  MEMORY[0x277D82BD8](v21);
  v27 = 0;
  v25 = 0;
  v22 = 0;
  if (+[AKAuthorizationAppearance shouldShowBlurBackground])
  {
    v28 = [(AKAuthorizationContainerViewController *)v31 presentationContext];
    v27 = 1;
    v26 = [(AKAuthorizationPresentationContext *)v28 credentialRequestContext];
    v25 = 1;
    v22 = [v26 _isRapportLogin];
  }

  if (v25)
  {
    MEMORY[0x277D82BD8](v26);
  }

  if (v27)
  {
    MEMORY[0x277D82BD8](v28);
  }

  if (v22)
  {
    v2 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
    blurBackgroundView = v31->_blurBackgroundView;
    v31->_blurBackgroundView = v2;
    MEMORY[0x277D82BD8](blurBackgroundView);
    v17 = v31->_blurBackgroundView;
    v18 = [(AKAuthorizationContaineriPhoneViewController *)v31 view];
    [v18 frame];
    v24[1] = v4;
    v24[2] = v5;
    v24[3] = v6;
    v24[4] = v7;
    [(UIVisualEffectView *)v17 setFrame:*&v4, *&v5, *&v6, *&v7];
    MEMORY[0x277D82BD8](v18);
    [(UIVisualEffectView *)v31->_blurBackgroundView setAutoresizingMask:18];
    v19 = [(AKAuthorizationContaineriPhoneViewController *)v31 view];
    [v19 insertSubview:v31->_blurBackgroundView atIndex:0];
    MEMORY[0x277D82BD8](v19);
  }

  v24[0] = [(AKAuthorizationContainerViewController *)v31 rootViewController];
  if (v24[0])
  {
    [v24[0] willMoveToParentViewController:v31];
    [(AKAuthorizationContaineriPhoneViewController *)v31 addChildViewController:v24[0]];
    v23 = [v24[0] view];
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [(AKAuthorizationContaineriPhoneViewController *)v31 view];
    [v12 addSubview:v23];
    MEMORY[0x277D82BD8](v12);
    [v24[0] didMoveToParentViewController:v31];
    v15 = [v23 topAnchor];
    v14 = [(AKAuthorizationContaineriPhoneViewController *)v31 view];
    v13 = [v14 topAnchor];
    v8 = [v15 constraintEqualToAnchor:?];
    rootViewTopConstraint = v31->_rootViewTopConstraint;
    v31->_rootViewTopConstraint = v8;
    MEMORY[0x277D82BD8](rootViewTopConstraint);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    v16 = [v23 heightAnchor];
    v10 = [v16 constraintEqualToConstant:0.0];
    rootViewHeightConstraint = v31->_rootViewHeightConstraint;
    v31->_rootViewHeightConstraint = v10;
    MEMORY[0x277D82BD8](rootViewHeightConstraint);
    MEMORY[0x277D82BD8](v16);
    [(AKAuthorizationContaineriPhoneViewController *)v31 updateConstraintsForRootView:v23];
    objc_storeStrong(&v23, 0);
  }

  objc_storeStrong(v24, 0);
}

- (void)viewWillAppear:(BOOL)a3
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  v12.receiver = self;
  v12.super_class = AKAuthorizationContaineriPhoneViewController;
  [(AKAuthorizationContaineriPhoneViewController *)&v12 viewWillAppear:a3];
  if (([(AKAuthorizationContaineriPhoneViewController *)v15 isBeingPresented]& 1) != 0)
  {
    v5 = [(AKAuthorizationContaineriPhoneViewController *)v15 view];
    v4 = [MEMORY[0x277D75348] clearColor];
    [v5 setBackgroundColor:?];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    if (+[AKAuthorizationAppearance shouldShowBlurBackground])
    {
      v3 = [(AKAuthorizationContaineriPhoneViewController *)v15 transitionCoordinator];
      v6 = MEMORY[0x277D85DD0];
      v7 = -1073741824;
      v8 = 0;
      v9 = __63__AKAuthorizationContaineriPhoneViewController_viewWillAppear___block_invoke;
      v10 = &unk_2784A62E0;
      v11 = MEMORY[0x277D82BE0](v15);
      [v3 animateAlongsideTransition:&v6 completion:?];
      MEMORY[0x277D82BD8](v3);
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

- (void)viewDidAppear:(BOOL)a3
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13.receiver = self;
  v13.super_class = AKAuthorizationContaineriPhoneViewController;
  [(AKAuthorizationContaineriPhoneViewController *)&v13 viewDidAppear:a3];
  v8 = [(AKAuthorizationContainerViewController *)v16 rootViewController];
  [(UIViewController *)v8 preferredContentSize];
  v11 = v3;
  v12 = v4;
  MEMORY[0x277D82BD8](v8);
  [(AKAuthorizationContaineriPhoneViewController *)v16 _dismissalFrameForContentSize:v11, v12];
  v9 = v5;
  v10 = v6;
  if (([(AKAuthorizationContaineriPhoneViewController *)v16 isBeingPresented]& 1) != 0)
  {
    [(NSLayoutConstraint *)v16->_rootViewTopConstraint setConstant:v9];
    [(NSLayoutConstraint *)v16->_rootViewHeightConstraint setConstant:v10];
    v7 = [(AKAuthorizationContaineriPhoneViewController *)v16 view];
    [v7 layoutIfNeeded];
    MEMORY[0x277D82BD8](v7);
    [(AKAuthorizationContaineriPhoneViewController *)v16 setContainerContentSize:1 animated:v11, v12];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  v10.receiver = self;
  v10.super_class = AKAuthorizationContaineriPhoneViewController;
  [(AKAuthorizationContaineriPhoneViewController *)&v10 viewWillDisappear:a3];
  if (+[AKAuthorizationAppearance shouldShowBlurBackground]&& ([(AKAuthorizationContaineriPhoneViewController *)v13 isBeingDismissed]& 1) != 0)
  {
    v3 = [(AKAuthorizationContaineriPhoneViewController *)v13 transitionCoordinator];
    v4 = MEMORY[0x277D85DD0];
    v5 = -1073741824;
    v6 = 0;
    v7 = __66__AKAuthorizationContaineriPhoneViewController_viewWillDisappear___block_invoke;
    v8 = &unk_2784A62E0;
    v9 = MEMORY[0x277D82BE0](v13);
    [v3 animateAlongsideTransition:&v4 completion:?];
    MEMORY[0x277D82BD8](v3);
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
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = AKAuthorizationContaineriPhoneViewController;
  [(AKAuthorizationContaineriPhoneViewController *)&v2 viewWillLayoutSubviews];
  [(AKAuthorizationContaineriPhoneViewController *)v4 orientationChanged];
}

- (void)setContainerContentSize:(CGSize)a3 animated:(BOOL)a4
{
  if (!__CGSizeEqualToSize_0(self->_containerContentSize.width, self->_containerContentSize.height, a3.width, a3.height))
  {
    v10 = [(AKAuthorizationContaineriPhoneViewController *)self view];
    [v10 bounds];
    v14.origin.x = v4;
    v14.origin.y = v5;
    v14.size.width = v6;
    v14.size.height = v7;
    MEMORY[0x277D82BD8](v10);
    Width = CGRectGetWidth(v14);
    if (Width >= a3.width)
    {
      v9 = a3.width;
    }

    else
    {
      v9 = Width;
    }

    v13.width = v9;
    Height = CGRectGetHeight(v14);
    if (Height >= a3.height)
    {
      v8 = a3.height;
    }

    else
    {
      v8 = Height;
    }

    v13.height = v8;
    self->_containerContentSize = v13;
    [(AKAuthorizationContaineriPhoneViewController *)self _layoutContainerView:a4, *&v8];
  }
}

- (void)_layoutContainerView:(BOOL)a3
{
  v27 = self;
  v26 = a2;
  v25 = a3;
  v10 = [(AKAuthorizationContainerViewController *)self rootViewController];
  v24 = [(UIViewController *)v10 viewIfLoaded];
  MEMORY[0x277D82BD8](v10);
  if (v24)
  {
    [(AKAuthorizationContaineriPhoneViewController *)v27 containerContentSize];
    v21 = v3;
    v22 = v4;
    [(AKAuthorizationContaineriPhoneViewController *)v27 _layoutFrameForContentSize:v3, v4];
    v23.origin.x = v5;
    v23.origin.y = v6;
    v23.size.width = v7;
    v23.size.height = v8;
    [v24 frame];
    v20 = v28;
    if (!CGRectEqualToRect(v28, v23))
    {
      [(NSLayoutConstraint *)v27->_rootViewHeightConstraint setConstant:v23.size.height];
      [(NSLayoutConstraint *)v27->_rootViewTopConstraint setConstant:v23.origin.y];
      v13 = MEMORY[0x277D85DD0];
      v14 = -1073741824;
      v15 = 0;
      v16 = __69__AKAuthorizationContaineriPhoneViewController__layoutContainerView___block_invoke;
      v17 = &unk_2784A5C90;
      v18 = MEMORY[0x277D82BE0](v27);
      v19 = MEMORY[0x223DB6C90](&v13);
      if (v25)
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

  objc_storeStrong(&v24, 0);
}

double __69__AKAuthorizationContaineriPhoneViewController__layoutContainerView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

- (CGRect)_layoutFrameForContentSize:(CGSize)a3
{
  v9 = a3;
  location[2] = self;
  location[1] = a2;
  location[0] = [(AKAuthorizationContaineriPhoneViewController *)self viewIfLoaded];
  if (location[0])
  {
    [location[0] bounds];
    rect = v12;
    *&v10 = (CGRectGetWidth(v12) - v9.width) / 2.0;
    *(&v10 + 1) = CGRectGetHeight(rect) - v9.height;
    v11 = v9;
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

- (CGRect)_dismissalFrameForContentSize:(CGSize)a3
{
  v8 = a3;
  location[2] = self;
  location[1] = a2;
  location[0] = [(AKAuthorizationContaineriPhoneViewController *)self viewIfLoaded];
  if (location[0])
  {
    [location[0] bounds];
    *&v9 = 0;
    *(&v9 + 1) = CGRectGetHeight(v11);
    v10 = v8;
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

- (void)_handleTapGesture:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v14->_tapGestureRecognizer == location[0])
  {
    tapGestureRecognizer = v14->_tapGestureRecognizer;
    v8 = [(AKAuthorizationContaineriPhoneViewController *)v14 view];
    [(UITapGestureRecognizer *)tapGestureRecognizer locationInView:?];
    v12.x = v3;
    v12.y = v4;
    *&v5 = MEMORY[0x277D82BD8](v8).n128_u64[0];
    v10 = [(AKAuthorizationContainerViewController *)v14 rootViewController];
    v9 = [(UIViewController *)v10 view];
    [(UIView *)v9 frame];
    v11 = CGRectContainsPoint(v15, v12);
    MEMORY[0x277D82BD8](v9);
    *&v6 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    if (!v11 && [(AKAuthorizationContaineriPhoneViewController *)v14 _delegate_authorizationContainerViewControllerShouldDismiss])
    {
      [(AKAuthorizationContaineriPhoneViewController *)v14 _delegate_authorizationContainerViewControllerDidDismiss];
    }
  }

  objc_storeStrong(location, 0);
}

- (BOOL)_delegate_authorizationContainerViewControllerShouldDismiss
{
  v7 = self;
  location[1] = a2;
  v4 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  v5 = v4;
  dispatch_assert_queue_V2(v5);
  location[0] = [(AKAuthorizationContainerViewController *)v7 delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [location[0] authorizationContainerViewControllerShouldDismiss:v7] & 1;
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
  v6 = self;
  location[1] = a2;
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  v4 = v3;
  dispatch_assert_queue_V2(v4);
  location[0] = [(AKAuthorizationContainerViewController *)v6 delegate];
  if (objc_opt_respondsToSelector())
  {
    [location[0] authorizationContainerViewControllerDidDismiss:v6];
  }

  objc_storeStrong(location, 0);
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8.receiver = v10;
  v8.super_class = AKAuthorizationContaineriPhoneViewController;
  [(AKAuthorizationContaineriPhoneViewController *)&v8 preferredContentSizeDidChangeForChildContentContainer:location[0]];
  if (([(AKAuthorizationContaineriPhoneViewController *)v10 isBeingPresented]& 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v6 = [(AKAuthorizationContainerViewController *)v10 rootViewController];
    if (v6 == location[0])
    {
      v5 = v10;
      [location[0] preferredContentSize];
      [(AKAuthorizationContaineriPhoneViewController *)v5 setContainerContentSize:1 animated:v3, v4];
      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    objc_storeStrong(&v6, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v14 = a3;
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v11.receiver = v13;
  v11.super_class = AKAuthorizationContaineriPhoneViewController;
  [(AKAuthorizationContaineriPhoneViewController *)&v11 viewWillTransitionToSize:location[0] withTransitionCoordinator:v14.width, v14.height];
  v4 = location[0];
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __99__AKAuthorizationContaineriPhoneViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9 = &unk_2784A62E0;
  v10 = MEMORY[0x277D82BE0](v13);
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

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = 0;
  objc_storeStrong(&v9, a5);
  v8 = [[AKAuthorizationContainerViewControllerAnimator alloc] initWithPresenting:1];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)animationControllerForDismissedController:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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