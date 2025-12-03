@interface AMSUIToastPresentationController
- (AMSUIToastPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (CGRect)frameOfPresentedViewInContainerView;
- (CGRect)lastFrameOfPresentedViewInContainerView;
- (NSArray)passthroughViews;
- (double)_bottomMargin;
- (double)_yOffset;
- (void)_didPanPresentedView:(id)view;
- (void)_dismissToast;
- (void)_hyperInteractorApplyPresentationPoint:(id)point;
- (void)_setupPanGestureRecognizer;
- (void)_setupPassthroughView;
- (void)_startDismissTimer;
- (void)containerViewWillLayoutSubviews;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)end;
- (void)presentationTransitionWillBegin;
- (void)setPassthroughViews:(id)views;
- (void)setShowing:(BOOL)showing;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation AMSUIToastPresentationController

- (AMSUIToastPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  v15.receiver = self;
  v15.super_class = AMSUIToastPresentationController;
  v4 = [(AMSUIToastPresentationController *)&v15 initWithPresentedViewController:controller presentingViewController:viewController];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DD540]) initWithDimensions:1];
    v6 = *(v4 + 53);
    *(v4 + 53) = v5;

    v7 = [objc_alloc(MEMORY[0x1E69DD530]) initWithDimensions:1];
    v8 = *(v4 + 52);
    *(v4 + 52) = v7;

    [*(v4 + 52) _setRegion:*(v4 + 53)];
    [*(v4 + 52) _setDelegate:v4];
    v4[384] = 1;
    v9 = [AMSUITouchForwardingView alloc];
    v10 = MEMORY[0x1E695F058];
    v11 = [(AMSUITouchForwardingView *)v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v12 = *(v4 + 56);
    *(v4 + 56) = v11;

    v13 = v10[1];
    *(v4 + 456) = *v10;
    *(v4 + 472) = v13;
    *(v4 + 50) = 0x4014000000000000;
  }

  return v4;
}

- (void)containerViewWillLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = AMSUIToastPresentationController;
  [(AMSUIToastPresentationController *)&v12 containerViewWillLayoutSubviews];
  [(AMSUIToastPresentationController *)self setLastFrameOfPresentedViewInContainerView:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(AMSUIToastPresentationController *)self frameOfPresentedViewInContainerView];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  presentedView = [(AMSUIToastPresentationController *)self presentedView];
  [presentedView setFrame:{v4, v6, v8, v10}];
}

- (void)dismissalTransitionWillBegin
{
  v4.receiver = self;
  v4.super_class = AMSUIToastPresentationController;
  [(AMSUIToastPresentationController *)&v4 dismissalTransitionWillBegin];
  dismissalTimer = [(AMSUIToastPresentationController *)self dismissalTimer];
  [dismissalTimer invalidate];

  [(AMSUIToastPresentationController *)self setDismissalTimer:0];
}

- (CGRect)frameOfPresentedViewInContainerView
{
  presentedView = [(AMSUIToastPresentationController *)self presentedView];
  containerView = [(AMSUIToastPresentationController *)self containerView];
  v5 = containerView;
  if (!containerView || !presentedView)
  {

    goto LABEL_8;
  }

  presentingViewController = [(AMSUIToastPresentationController *)self presentingViewController];

  if (!presentingViewController)
  {
LABEL_8:
    v13 = *MEMORY[0x1E695F058];
    v14 = *(MEMORY[0x1E695F058] + 8);
    v15 = *(MEMORY[0x1E695F058] + 16);
    v16 = *(MEMORY[0x1E695F058] + 24);
    goto LABEL_9;
  }

  [(AMSUIToastPresentationController *)self lastFrameOfPresentedViewInContainerView];
  if (!CGRectEqualToRect(v50, *MEMORY[0x1E695F058]))
  {
    [(AMSUIToastPresentationController *)self lastFrameOfPresentedViewInContainerView];
    v13 = v21;
    v14 = v22;
    v15 = v23;
    v16 = v24;
    goto LABEL_10;
  }

  presentedViewController = [(AMSUIToastPresentationController *)self presentedViewController];
  [presentedViewController preferredContentSize];
  v9 = v8;

  if (v9 == 0.0)
  {
    containerView2 = [(AMSUIToastPresentationController *)self containerView];
    [containerView2 frame];
    v12 = v25 + -24.0;
  }

  else
  {
    containerView2 = [(AMSUIToastPresentationController *)self presentedViewController];
    [containerView2 preferredContentSize];
    v12 = v11;
  }

  v15 = fmin(v12, 556.0);
  containerView3 = [(AMSUIToastPresentationController *)self containerView];
  [containerView3 frame];
  v16 = v27;

  if ([presentedView _wantsAutolayout])
  {
    [presentedView systemLayoutSizeFittingSize:{v15, v16}];
  }

  else
  {
    [presentedView sizeThatFits:{v15, v16}];
  }

  if (v28 < v16)
  {
    v16 = v28;
  }

  containerView4 = [(AMSUIToastPresentationController *)self containerView];
  [containerView4 frame];
  v13 = (v30 - v15) * 0.5;

  containerView5 = [(AMSUIToastPresentationController *)self containerView];
  [containerView5 frame];
  v33 = v32 - v16;
  [(AMSUIToastPresentationController *)self _bottomMargin];
  v35 = v33 - v34;

  [(AMSUIToastPresentationController *)self _yOffset];
  v37 = v35 - v36;
  containerView6 = [(AMSUIToastPresentationController *)self containerView];
  [containerView6 frame];
  v40 = v39;
  [(AMSUIToastPresentationController *)self _bottomMargin];
  v42 = v16 * 0.5 + v41 + v40;

  interactiveRegion = [(AMSUIToastPresentationController *)self interactiveRegion];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __71__AMSUIToastPresentationController_frameOfPresentedViewInContainerView__block_invoke;
  v49[3] = &__block_descriptor_40_e9_v16__0_d8l;
  *&v49[4] = v37;
  [interactiveRegion _mutateMinimumPoint:v49];

  interactiveRegion2 = [(AMSUIToastPresentationController *)self interactiveRegion];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __71__AMSUIToastPresentationController_frameOfPresentedViewInContainerView__block_invoke_2;
  v48[3] = &__block_descriptor_40_e9_v16__0_d8l;
  *&v48[4] = v42;
  [interactiveRegion2 _mutateMaximumPoint:v48];

  interactor = [(AMSUIToastPresentationController *)self interactor];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __71__AMSUIToastPresentationController_frameOfPresentedViewInContainerView__block_invoke_3;
  v47[3] = &unk_1E7F259C0;
  v47[4] = self;
  *&v47[5] = v37;
  *&v47[6] = v42;
  [interactor _mutateUnconstrainedPoint:v47];

  interactor2 = [(AMSUIToastPresentationController *)self interactor];
  v14 = *[interactor2 _presentationPoint];

LABEL_9:
  [(AMSUIToastPresentationController *)self setLastFrameOfPresentedViewInContainerView:v13, v14, v15, v16];
LABEL_10:

  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

double __71__AMSUIToastPresentationController_frameOfPresentedViewInContainerView__block_invoke(uint64_t a1, double *a2)
{
  result = *(a1 + 32);
  *a2 = result;
  return result;
}

double __71__AMSUIToastPresentationController_frameOfPresentedViewInContainerView__block_invoke_2(uint64_t a1, double *a2)
{
  result = *(a1 + 32);
  *a2 = result;
  return result;
}

double __71__AMSUIToastPresentationController_frameOfPresentedViewInContainerView__block_invoke_3(uint64_t a1, double *a2)
{
  v4 = [*(a1 + 32) isShowing];
  v5 = 48;
  if (v4)
  {
    v5 = 40;
  }

  result = *(a1 + v5);
  *a2 = result;
  return result;
}

- (void)presentationTransitionWillBegin
{
  v3.receiver = self;
  v3.super_class = AMSUIToastPresentationController;
  [(AMSUIToastPresentationController *)&v3 presentationTransitionWillBegin];
  [(AMSUIToastPresentationController *)self _setupPassthroughView];
  [(AMSUIToastPresentationController *)self _setupPanGestureRecognizer];
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  endCopy = end;
  v5.receiver = self;
  v5.super_class = AMSUIToastPresentationController;
  [(AMSUIToastPresentationController *)&v5 presentationTransitionDidEnd:?];
  if (endCopy)
  {
    [(AMSUIToastPresentationController *)self _startDismissTimer];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v15.receiver = self;
  v15.super_class = AMSUIToastPresentationController;
  changeCopy = change;
  [(AMSUIToastPresentationController *)&v15 traitCollectionDidChange:changeCopy];
  v5 = [(AMSUIToastPresentationController *)self traitCollection:v15.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  traitCollection = [(AMSUIToastPresentationController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];
  horizontalSizeClass2 = [changeCopy horizontalSizeClass];

  traitCollection2 = [(AMSUIToastPresentationController *)self traitCollection];
  verticalSizeClass = [traitCollection2 verticalSizeClass];
  verticalSizeClass2 = [changeCopy verticalSizeClass];

  if (verticalSizeClass != verticalSizeClass2 || horizontalSizeClass != horizontalSizeClass2 || preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    containerView = [(AMSUIToastPresentationController *)self containerView];
    [containerView setNeedsLayout];
  }
}

- (void)_hyperInteractorApplyPresentationPoint:(id)point
{
  containerView = [(AMSUIToastPresentationController *)self containerView];
  [containerView setNeedsLayout];

  containerView2 = [(AMSUIToastPresentationController *)self containerView];
  [containerView2 layoutIfNeeded];
}

- (void)_setupPassthroughView
{
  v21[1] = *MEMORY[0x1E69E9840];
  containerView = [(AMSUIToastPresentationController *)self containerView];

  if (containerView)
  {
    containerView2 = [(AMSUIToastPresentationController *)self containerView];
    [containerView2 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    touchForwardingView = [(AMSUIToastPresentationController *)self touchForwardingView];
    [touchForwardingView setFrame:{v6, v8, v10, v12}];

    containerView3 = [(AMSUIToastPresentationController *)self containerView];
    touchForwardingView2 = [(AMSUIToastPresentationController *)self touchForwardingView];
    [containerView3 insertSubview:touchForwardingView2 atIndex:0];

    passthroughViews = [(AMSUIToastPresentationController *)self passthroughViews];

    if (!passthroughViews)
    {
      presentingViewController = [(AMSUIToastPresentationController *)self presentingViewController];
      view = [presentingViewController view];
      v21[0] = view;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      [(AMSUIToastPresentationController *)self setPassthroughViews:v19];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_startDismissTimer
{
  [(AMSUIToastPresentationController *)self dismissDelayTimeInterval];
  if (v3 > 0.0)
  {
    dismissalTimer = [(AMSUIToastPresentationController *)self dismissalTimer];
    [dismissalTimer invalidate];

    v5 = MEMORY[0x1E695DFF0];
    [(AMSUIToastPresentationController *)self dismissDelayTimeInterval];
    v6 = [v5 scheduledTimerWithTimeInterval:self target:sel__dismissTimerFired_ selector:0 userInfo:0 repeats:?];
    [(AMSUIToastPresentationController *)self setDismissalTimer:v6];
  }
}

- (void)_setupPanGestureRecognizer
{
  presentedView = [(AMSUIToastPresentationController *)self presentedView];

  if (presentedView)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel__didPanPresentedView_];
    [(AMSUIToastPresentationController *)self setPanRecognizer:v4];

    presentedView2 = [(AMSUIToastPresentationController *)self presentedView];
    panRecognizer = [(AMSUIToastPresentationController *)self panRecognizer];
    [presentedView2 addGestureRecognizer:panRecognizer];
  }
}

- (void)_didPanPresentedView:(id)view
{
  viewCopy = view;
  presentedView = [(AMSUIToastPresentationController *)self presentedView];
  if (presentedView)
  {
    v6 = presentedView;
    containerView = [(AMSUIToastPresentationController *)self containerView];

    if (containerView)
    {
      dismissalTimer = [(AMSUIToastPresentationController *)self dismissalTimer];
      [dismissalTimer invalidate];

      state = [viewCopy state];
      if ((state - 3) < 2)
      {
        containerView2 = [(AMSUIToastPresentationController *)self containerView];
        [viewCopy translationInView:containerView2];
        v22 = v21;

        containerView3 = [(AMSUIToastPresentationController *)self containerView];
        [viewCopy velocityInView:containerView3];
        v25 = v24;

        if (v25 < 400.0 && v22 <= 20.0 && [(AMSUIToastPresentationController *)self isShowing])
        {
          interactor = [(AMSUIToastPresentationController *)self interactor];
          v27 = *[interactor _projectedPoint];
          containerView4 = [(AMSUIToastPresentationController *)self containerView];
          [containerView4 bounds];
          [(AMSUIToastPresentationController *)self setShowing:v27 < CGRectGetMaxX(v33)];

          interactor2 = [(AMSUIToastPresentationController *)self interactor];
          [interactor2 _interactionEnded];

          containerView5 = [(AMSUIToastPresentationController *)self containerView];
          [viewCopy setTranslation:containerView5 inView:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];

          [(AMSUIToastPresentationController *)self _startDismissTimer];
        }

        else
        {
          [(AMSUIToastPresentationController *)self _dismissToast];
        }
      }

      else
      {
        if (state == 2)
        {
LABEL_7:
          containerView6 = [(AMSUIToastPresentationController *)self containerView];
          [viewCopy translationInView:containerView6];
          v14 = v13;

          v32 = v14;
          containerView7 = [(AMSUIToastPresentationController *)self containerView];
          [viewCopy velocityInView:containerView7];
          v17 = v16;

          containerView8 = [(AMSUIToastPresentationController *)self containerView];
          [containerView8 setNeedsLayout];

          interactor3 = [(AMSUIToastPresentationController *)self interactor];
          [interactor3 _interactionChangedCopyingTranslation:&v32 velocity:&v31];

          goto LABEL_13;
        }

        if (state == 1)
        {
          containerView9 = [(AMSUIToastPresentationController *)self containerView];
          [containerView9 setNeedsLayout];

          interactor4 = [(AMSUIToastPresentationController *)self interactor];
          [interactor4 _interactionBegan];

          goto LABEL_7;
        }
      }
    }
  }

LABEL_13:
}

- (NSArray)passthroughViews
{
  touchForwardingView = [(AMSUIToastPresentationController *)self touchForwardingView];
  passthroughViews = [touchForwardingView passthroughViews];

  return passthroughViews;
}

- (void)setPassthroughViews:(id)views
{
  viewsCopy = views;
  touchForwardingView = [(AMSUIToastPresentationController *)self touchForwardingView];
  [touchForwardingView setPassthroughViews:viewsCopy];
}

- (void)setShowing:(BOOL)showing
{
  if (self->_showing != showing)
  {
    containerView = [(AMSUIToastPresentationController *)self containerView];
    [containerView setNeedsLayout];
  }
}

- (double)_yOffset
{
  v29 = *MEMORY[0x1E69E9840];
  relativeTabBarController = [(AMSUIToastPresentationController *)self relativeTabBarController];
  if (!relativeTabBarController)
  {
    presentingViewController = [(AMSUIToastPresentationController *)self presentingViewController];
    objc_opt_class();
    relativeTabBarController = (objc_opt_isKindOfClass() & 1) != 0 ? presentingViewController : 0;

    if (!relativeTabBarController)
    {
      presentingViewController2 = [(AMSUIToastPresentationController *)self presentingViewController];
      relativeTabBarController = [presentingViewController2 tabBarController];
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  presentingViewController3 = [(AMSUIToastPresentationController *)self presentingViewController];
  childViewControllers = [presentingViewController3 childViewControllers];

  v8 = [childViewControllers countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(childViewControllers);
        }

        if (relativeTabBarController)
        {

          goto LABEL_23;
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          relativeTabBarController = v12;
        }

        else
        {
          relativeTabBarController = 0;
        }

        if (!relativeTabBarController)
        {
          relativeTabBarController = [v12 tabBarController];
        }
      }

      v9 = [childViewControllers countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  if (relativeTabBarController)
  {
LABEL_23:
    contentLayoutGuide = [relativeTabBarController contentLayoutGuide];
    owningView = [contentLayoutGuide owningView];
    [owningView frame];
    v18 = v17;
    [contentLayoutGuide layoutFrame];
    v20 = v19;
    [contentLayoutGuide layoutFrame];
    v14 = v18 - (v20 + v21);
  }

  else
  {
    relativeTabBarController = [(AMSUIToastPresentationController *)self containerView];
    [relativeTabBarController safeAreaInsets];
    v14 = v13;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)_dismissToast
{
  presentedViewController = [(AMSUIToastPresentationController *)self presentedViewController];
  presentingViewController = [presentedViewController presentingViewController];

  if (presentingViewController)
  {
    presentedViewController2 = [(AMSUIToastPresentationController *)self presentedViewController];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__AMSUIToastPresentationController__dismissToast__block_invoke;
    v6[3] = &unk_1E7F242D0;
    v6[4] = self;
    [presentedViewController2 dismissViewControllerAnimated:1 completion:v6];
  }
}

void __49__AMSUIToastPresentationController__dismissToast__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v2 = [v5 delegate];
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = [v5 delegate];
      [v4 messageViewControllerDidDismiss:v5];
    }
  }
}

- (double)_bottomMargin
{
  traitCollection = [(AMSUIToastPresentationController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  result = 16.0;
  if (userInterfaceIdiom == 1)
  {
    return 20.0;
  }

  return result;
}

- (CGRect)lastFrameOfPresentedViewInContainerView
{
  x = self->_lastFrameOfPresentedViewInContainerView.origin.x;
  y = self->_lastFrameOfPresentedViewInContainerView.origin.y;
  width = self->_lastFrameOfPresentedViewInContainerView.size.width;
  height = self->_lastFrameOfPresentedViewInContainerView.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end