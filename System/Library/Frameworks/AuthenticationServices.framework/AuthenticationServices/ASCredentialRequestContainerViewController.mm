@interface ASCredentialRequestContainerViewController
- (ASCredentialRequestContainerViewController)initWithRootViewController:(id)controller;
- (ASCredentialRequestPaneViewControllerDelegate)paneDelegate;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (unint64_t)supportedInterfaceOrientations;
- (void)_setPaneDelegate:(id)delegate forViewController:(id)controller;
- (void)_setPaneDelegateForTopViewController;
- (void)_setPaneDelegateForViewController:(id)controller;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)setPaneDelegate:(id)delegate;
- (void)viewDidLoad;
@end

@implementation ASCredentialRequestContainerViewController

- (ASCredentialRequestContainerViewController)initWithRootViewController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = ASCredentialRequestContainerViewController;
  v6 = [(ASCredentialRequestContainerViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootViewController, controller);
    if ([MEMORY[0x1E698E020] isPad])
    {
      [(ASCredentialRequestContainerViewController *)v7 setModalPresentationStyle:2];
      [(ASCredentialRequestContainerViewController *)v7 setModalInPresentation:1];
    }

    else
    {
      [(ASCredentialRequestContainerViewController *)v7 setModalPresentationStyle:4];
      [(ASCredentialRequestContainerViewController *)v7 setTransitioningDelegate:v7];
    }

    v8 = v7;
  }

  return v7;
}

- (void)viewDidLoad
{
  v53[4] = *MEMORY[0x1E69E9840];
  v52.receiver = self;
  v52.super_class = ASCredentialRequestContainerViewController;
  [(ASCredentialRequestContainerViewController *)&v52 viewDidLoad];
  [(ASCredentialRequestContainerViewController *)self addChildViewController:self->_rootViewController];
  v3 = objc_alloc_init(MEMORY[0x1E69DD818]);
  view = [(UIViewController *)self->_rootViewController view];
  [view _setBackground:v3];

  view2 = [(UIViewController *)self->_rootViewController view];
  [view2 _setContinuousCornerRadius:20.0];

  view3 = [(UIViewController *)self->_rootViewController view];
  layer = [view3 layer];
  [layer setMaskedCorners:3];

  view4 = [(UIViewController *)self->_rootViewController view];
  [view4 setClipsToBounds:1];

  if ([MEMORY[0x1E698E020] isPad])
  {
    view5 = [(ASCredentialRequestContainerViewController *)self view];
    [view5 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    view6 = [(UIViewController *)self->_rootViewController view];
    [view6 setFrame:{v11, v13, v15, v17}];

    view7 = [(UIViewController *)self->_rootViewController view];
    [view7 setAutoresizingMask:18];
  }

  else
  {
    view7 = [(UIViewController *)self->_rootViewController view];
    [view7 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  view8 = [(ASCredentialRequestContainerViewController *)self view];
  view9 = [(UIViewController *)self->_rootViewController view];
  [view8 addSubview:view9];

  [(UIViewController *)self->_rootViewController didMoveToParentViewController:self];
  if ([MEMORY[0x1E698E020] isPad])
  {
    [(UIViewController *)self->_rootViewController preferredContentSize];
    [(ASCredentialRequestContainerViewController *)self setPreferredContentSize:540.0];
  }

  if (([MEMORY[0x1E698E020] isPad] & 1) == 0)
  {
    view10 = [(UIViewController *)self->_rootViewController view];
    topAnchor = [view10 topAnchor];
    view11 = [(ASCredentialRequestContainerViewController *)self view];
    bottomAnchor = [view11 bottomAnchor];
    v51 = [topAnchor constraintEqualToAnchor:bottomAnchor];

    LODWORD(v26) = 1144750080;
    [v51 setPriority:v26];
    view12 = [(UIViewController *)self->_rootViewController view];
    heightAnchor = [view12 heightAnchor];
    [(UIViewController *)self->_rootViewController preferredContentSize];
    v30 = [heightAnchor constraintEqualToConstant:v29];
    sheetHeightConstraint = self->_sheetHeightConstraint;
    self->_sheetHeightConstraint = v30;

    view13 = [(UIViewController *)self->_rootViewController view];
    bottomAnchor2 = [view13 bottomAnchor];
    view14 = [(ASCredentialRequestContainerViewController *)self view];
    bottomAnchor3 = [view14 bottomAnchor];
    v36 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    sheetPresentedConstraint = self->_sheetPresentedConstraint;
    self->_sheetPresentedConstraint = v36;

    v48 = MEMORY[0x1E696ACD8];
    view15 = [(UIViewController *)self->_rootViewController view];
    leadingAnchor = [view15 leadingAnchor];
    view16 = [(ASCredentialRequestContainerViewController *)self view];
    leadingAnchor2 = [view16 leadingAnchor];
    v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v53[0] = v40;
    view17 = [(UIViewController *)self->_rootViewController view];
    trailingAnchor = [view17 trailingAnchor];
    view18 = [(ASCredentialRequestContainerViewController *)self view];
    trailingAnchor2 = [view18 trailingAnchor];
    v45 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v53[1] = v45;
    v53[2] = v51;
    v53[3] = self->_sheetHeightConstraint;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:4];
    [v48 activateConstraints:v46];
  }

  v47 = *MEMORY[0x1E69E9840];
}

void __61__ASCredentialRequestContainerViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1000) setActive:1];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];

  v4 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.600000024];
  v3 = [*(a1 + 32) view];
  [v3 setBackgroundColor:v4];
}

void __64__ASCredentialRequestContainerViewController_viewWillDisappear___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1000) setActive:0];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];

  v4 = [MEMORY[0x1E69DC888] clearColor];
  v3 = [*(a1 + 32) view];
  [v3 setBackgroundColor:v4];
}

- (unint64_t)supportedInterfaceOrientations
{
  if ([MEMORY[0x1E698E020] isPad])
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)setPaneDelegate:(id)delegate
{
  objc_storeWeak(&self->_paneDelegate, delegate);

  [(ASCredentialRequestContainerViewController *)self _setPaneDelegateForTopViewController];
}

- (void)_setPaneDelegateForTopViewController
{
  rootViewController = [(ASCredentialRequestContainerViewController *)self rootViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    rootViewController2 = [(ASCredentialRequestContainerViewController *)self rootViewController];
    topViewController = [rootViewController2 topViewController];
    [(ASCredentialRequestContainerViewController *)self _setPaneDelegateForViewController:topViewController];
  }
}

- (void)_setPaneDelegateForViewController:(id)controller
{
  controllerCopy = controller;
  paneDelegate = [(ASCredentialRequestContainerViewController *)self paneDelegate];
  [(ASCredentialRequestContainerViewController *)self _setPaneDelegate:paneDelegate forViewController:controllerCopy];
}

- (void)_setPaneDelegate:(id)delegate forViewController:(id)controller
{
  delegateCopy = delegate;
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [controllerCopy setDelegate:delegateCopy];
  }
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  viewControllerCopy = viewController;
  topViewController = [controller topViewController];
  [(ASCredentialRequestContainerViewController *)self _clearPaneDelegateForViewController:topViewController];

  [(ASCredentialRequestContainerViewController *)self _setPaneDelegateForViewController:viewControllerCopy];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  containerCopy = container;
  v11.receiver = self;
  v11.super_class = ASCredentialRequestContainerViewController;
  [(ASCredentialRequestContainerViewController *)&v11 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  if (self->_rootViewController == containerCopy)
  {
    isPad = [MEMORY[0x1E698E020] isPad];
    [(UIViewController *)containerCopy preferredContentSize];
    if (isPad)
    {
      [(ASCredentialRequestContainerViewController *)self setPreferredContentSize:540.0];
      if (([(ASCredentialRequestContainerViewController *)self isBeingPresented]& 1) == 0)
      {
        sheetPresentationController = [(ASCredentialRequestContainerViewController *)self sheetPresentationController];
        [sheetPresentationController animateChanges:&__block_literal_global_84];
LABEL_8:
      }
    }

    else
    {
      [(NSLayoutConstraint *)self->_sheetHeightConstraint setConstant:v6];
      if (([(ASCredentialRequestContainerViewController *)self isBeingPresented]& 1) == 0)
      {
        transitionCoordinator = [(UIViewController *)self->_rootViewController transitionCoordinator];
        sheetPresentationController = transitionCoordinator;
        if (transitionCoordinator)
        {
          v9[0] = MEMORY[0x1E69E9820];
          v9[1] = 3221225472;
          v9[2] = __100__ASCredentialRequestContainerViewController_preferredContentSizeDidChangeForChildContentContainer___block_invoke_3;
          v9[3] = &unk_1E7AF8CA0;
          v9[4] = self;
          v10 = &__block_literal_global_86;
          [transitionCoordinator animateAlongsideTransition:v9 completion:?];
        }

        goto LABEL_8;
      }
    }
  }
}

void __100__ASCredentialRequestContainerViewController_preferredContentSizeDidChangeForChildContentContainer___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v29 = [v2 containerView];
  v3 = [v2 viewForKey:*MEMORY[0x1E69DE770]];
  v4 = [v2 viewForKey:*MEMORY[0x1E69DE780]];

  [v3 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v29 bounds];
  v33.origin.x = v13;
  v33.origin.y = v14;
  v33.size.width = v15;
  v33.size.height = v16;
  v31.origin.x = v6;
  v31.origin.y = v8;
  v31.size.width = v10;
  v31.size.height = v12;
  if (!CGRectEqualToRect(v31, v33))
  {
    [v29 bounds];
    [v3 setFrame:?];
  }

  [v4 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [v29 bounds];
  v34.origin.x = v25;
  v34.origin.y = v26;
  v34.size.width = v27;
  v34.size.height = v28;
  v32.origin.x = v18;
  v32.origin.y = v20;
  v32.size.width = v22;
  v32.size.height = v24;
  if (!CGRectEqualToRect(v32, v34))
  {
    [v29 bounds];
    [v4 setFrame:?];
  }
}

void __100__ASCredentialRequestContainerViewController_preferredContentSizeDidChangeForChildContentContainer___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 view];
  [v4 layoutIfNeeded];

  (*(*(a1 + 40) + 16))();
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  if ([MEMORY[0x1E698E020] isPad])
  {
    v5 = 0;
  }

  else
  {
    v5 = [[ASCredentialRequestContainerViewControllerAnimator alloc] initWithPresenting:1];
  }

  return v5;
}

- (id)animationControllerForDismissedController:(id)controller
{
  if ([MEMORY[0x1E698E020] isPad])
  {
    v3 = 0;
  }

  else
  {
    v3 = [[ASCredentialRequestContainerViewControllerAnimator alloc] initWithPresenting:0];
  }

  return v3;
}

- (ASCredentialRequestPaneViewControllerDelegate)paneDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_paneDelegate);

  return WeakRetained;
}

@end