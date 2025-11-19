@interface ASCredentialRequestContainerViewController
- (ASCredentialRequestContainerViewController)initWithRootViewController:(id)a3;
- (ASCredentialRequestPaneViewControllerDelegate)paneDelegate;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (unint64_t)supportedInterfaceOrientations;
- (void)_setPaneDelegate:(id)a3 forViewController:(id)a4;
- (void)_setPaneDelegateForTopViewController;
- (void)_setPaneDelegateForViewController:(id)a3;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)setPaneDelegate:(id)a3;
- (void)viewDidLoad;
@end

@implementation ASCredentialRequestContainerViewController

- (ASCredentialRequestContainerViewController)initWithRootViewController:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = ASCredentialRequestContainerViewController;
  v6 = [(ASCredentialRequestContainerViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootViewController, a3);
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
  v4 = [(UIViewController *)self->_rootViewController view];
  [v4 _setBackground:v3];

  v5 = [(UIViewController *)self->_rootViewController view];
  [v5 _setContinuousCornerRadius:20.0];

  v6 = [(UIViewController *)self->_rootViewController view];
  v7 = [v6 layer];
  [v7 setMaskedCorners:3];

  v8 = [(UIViewController *)self->_rootViewController view];
  [v8 setClipsToBounds:1];

  if ([MEMORY[0x1E698E020] isPad])
  {
    v9 = [(ASCredentialRequestContainerViewController *)self view];
    [v9 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [(UIViewController *)self->_rootViewController view];
    [v18 setFrame:{v11, v13, v15, v17}];

    v19 = [(UIViewController *)self->_rootViewController view];
    [v19 setAutoresizingMask:18];
  }

  else
  {
    v19 = [(UIViewController *)self->_rootViewController view];
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v20 = [(ASCredentialRequestContainerViewController *)self view];
  v21 = [(UIViewController *)self->_rootViewController view];
  [v20 addSubview:v21];

  [(UIViewController *)self->_rootViewController didMoveToParentViewController:self];
  if ([MEMORY[0x1E698E020] isPad])
  {
    [(UIViewController *)self->_rootViewController preferredContentSize];
    [(ASCredentialRequestContainerViewController *)self setPreferredContentSize:540.0];
  }

  if (([MEMORY[0x1E698E020] isPad] & 1) == 0)
  {
    v22 = [(UIViewController *)self->_rootViewController view];
    v23 = [v22 topAnchor];
    v24 = [(ASCredentialRequestContainerViewController *)self view];
    v25 = [v24 bottomAnchor];
    v51 = [v23 constraintEqualToAnchor:v25];

    LODWORD(v26) = 1144750080;
    [v51 setPriority:v26];
    v27 = [(UIViewController *)self->_rootViewController view];
    v28 = [v27 heightAnchor];
    [(UIViewController *)self->_rootViewController preferredContentSize];
    v30 = [v28 constraintEqualToConstant:v29];
    sheetHeightConstraint = self->_sheetHeightConstraint;
    self->_sheetHeightConstraint = v30;

    v32 = [(UIViewController *)self->_rootViewController view];
    v33 = [v32 bottomAnchor];
    v34 = [(ASCredentialRequestContainerViewController *)self view];
    v35 = [v34 bottomAnchor];
    v36 = [v33 constraintEqualToAnchor:v35];
    sheetPresentedConstraint = self->_sheetPresentedConstraint;
    self->_sheetPresentedConstraint = v36;

    v48 = MEMORY[0x1E696ACD8];
    v50 = [(UIViewController *)self->_rootViewController view];
    v49 = [v50 leadingAnchor];
    v38 = [(ASCredentialRequestContainerViewController *)self view];
    v39 = [v38 leadingAnchor];
    v40 = [v49 constraintEqualToAnchor:v39];
    v53[0] = v40;
    v41 = [(UIViewController *)self->_rootViewController view];
    v42 = [v41 trailingAnchor];
    v43 = [(ASCredentialRequestContainerViewController *)self view];
    v44 = [v43 trailingAnchor];
    v45 = [v42 constraintEqualToAnchor:v44];
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

- (void)setPaneDelegate:(id)a3
{
  objc_storeWeak(&self->_paneDelegate, a3);

  [(ASCredentialRequestContainerViewController *)self _setPaneDelegateForTopViewController];
}

- (void)_setPaneDelegateForTopViewController
{
  v3 = [(ASCredentialRequestContainerViewController *)self rootViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(ASCredentialRequestContainerViewController *)self rootViewController];
    v5 = [v6 topViewController];
    [(ASCredentialRequestContainerViewController *)self _setPaneDelegateForViewController:v5];
  }
}

- (void)_setPaneDelegateForViewController:(id)a3
{
  v4 = a3;
  v5 = [(ASCredentialRequestContainerViewController *)self paneDelegate];
  [(ASCredentialRequestContainerViewController *)self _setPaneDelegate:v5 forViewController:v4];
}

- (void)_setPaneDelegate:(id)a3 forViewController:(id)a4
{
  v6 = a3;
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setDelegate:v6];
  }
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v8 = a4;
  v7 = [a3 topViewController];
  [(ASCredentialRequestContainerViewController *)self _clearPaneDelegateForViewController:v7];

  [(ASCredentialRequestContainerViewController *)self _setPaneDelegateForViewController:v8];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ASCredentialRequestContainerViewController;
  [(ASCredentialRequestContainerViewController *)&v11 preferredContentSizeDidChangeForChildContentContainer:v4];
  if (self->_rootViewController == v4)
  {
    v5 = [MEMORY[0x1E698E020] isPad];
    [(UIViewController *)v4 preferredContentSize];
    if (v5)
    {
      [(ASCredentialRequestContainerViewController *)self setPreferredContentSize:540.0];
      if (([(ASCredentialRequestContainerViewController *)self isBeingPresented]& 1) == 0)
      {
        v7 = [(ASCredentialRequestContainerViewController *)self sheetPresentationController];
        [v7 animateChanges:&__block_literal_global_84];
LABEL_8:
      }
    }

    else
    {
      [(NSLayoutConstraint *)self->_sheetHeightConstraint setConstant:v6];
      if (([(ASCredentialRequestContainerViewController *)self isBeingPresented]& 1) == 0)
      {
        v8 = [(UIViewController *)self->_rootViewController transitionCoordinator];
        v7 = v8;
        if (v8)
        {
          v9[0] = MEMORY[0x1E69E9820];
          v9[1] = 3221225472;
          v9[2] = __100__ASCredentialRequestContainerViewController_preferredContentSizeDidChangeForChildContentContainer___block_invoke_3;
          v9[3] = &unk_1E7AF8CA0;
          v9[4] = self;
          v10 = &__block_literal_global_86;
          [v8 animateAlongsideTransition:v9 completion:?];
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

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
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

- (id)animationControllerForDismissedController:(id)a3
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