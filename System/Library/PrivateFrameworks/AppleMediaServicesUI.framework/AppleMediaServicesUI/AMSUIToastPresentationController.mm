@interface AMSUIToastPresentationController
- (AMSUIToastPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (CGRect)frameOfPresentedViewInContainerView;
- (CGRect)lastFrameOfPresentedViewInContainerView;
- (NSArray)passthroughViews;
- (double)_bottomMargin;
- (double)_yOffset;
- (void)_didPanPresentedView:(id)a3;
- (void)_dismissToast;
- (void)_hyperInteractorApplyPresentationPoint:(id)a3;
- (void)_setupPanGestureRecognizer;
- (void)_setupPassthroughView;
- (void)_startDismissTimer;
- (void)containerViewWillLayoutSubviews;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)a3;
- (void)presentationTransitionWillBegin;
- (void)setPassthroughViews:(id)a3;
- (void)setShowing:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation AMSUIToastPresentationController

- (AMSUIToastPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v15.receiver = self;
  v15.super_class = AMSUIToastPresentationController;
  v4 = [(AMSUIToastPresentationController *)&v15 initWithPresentedViewController:a3 presentingViewController:a4];
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
  v11 = [(AMSUIToastPresentationController *)self presentedView];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (void)dismissalTransitionWillBegin
{
  v4.receiver = self;
  v4.super_class = AMSUIToastPresentationController;
  [(AMSUIToastPresentationController *)&v4 dismissalTransitionWillBegin];
  v3 = [(AMSUIToastPresentationController *)self dismissalTimer];
  [v3 invalidate];

  [(AMSUIToastPresentationController *)self setDismissalTimer:0];
}

- (CGRect)frameOfPresentedViewInContainerView
{
  v3 = [(AMSUIToastPresentationController *)self presentedView];
  v4 = [(AMSUIToastPresentationController *)self containerView];
  v5 = v4;
  if (!v4 || !v3)
  {

    goto LABEL_8;
  }

  v6 = [(AMSUIToastPresentationController *)self presentingViewController];

  if (!v6)
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

  v7 = [(AMSUIToastPresentationController *)self presentedViewController];
  [v7 preferredContentSize];
  v9 = v8;

  if (v9 == 0.0)
  {
    v10 = [(AMSUIToastPresentationController *)self containerView];
    [v10 frame];
    v12 = v25 + -24.0;
  }

  else
  {
    v10 = [(AMSUIToastPresentationController *)self presentedViewController];
    [v10 preferredContentSize];
    v12 = v11;
  }

  v15 = fmin(v12, 556.0);
  v26 = [(AMSUIToastPresentationController *)self containerView];
  [v26 frame];
  v16 = v27;

  if ([v3 _wantsAutolayout])
  {
    [v3 systemLayoutSizeFittingSize:{v15, v16}];
  }

  else
  {
    [v3 sizeThatFits:{v15, v16}];
  }

  if (v28 < v16)
  {
    v16 = v28;
  }

  v29 = [(AMSUIToastPresentationController *)self containerView];
  [v29 frame];
  v13 = (v30 - v15) * 0.5;

  v31 = [(AMSUIToastPresentationController *)self containerView];
  [v31 frame];
  v33 = v32 - v16;
  [(AMSUIToastPresentationController *)self _bottomMargin];
  v35 = v33 - v34;

  [(AMSUIToastPresentationController *)self _yOffset];
  v37 = v35 - v36;
  v38 = [(AMSUIToastPresentationController *)self containerView];
  [v38 frame];
  v40 = v39;
  [(AMSUIToastPresentationController *)self _bottomMargin];
  v42 = v16 * 0.5 + v41 + v40;

  v43 = [(AMSUIToastPresentationController *)self interactiveRegion];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __71__AMSUIToastPresentationController_frameOfPresentedViewInContainerView__block_invoke;
  v49[3] = &__block_descriptor_40_e9_v16__0_d8l;
  *&v49[4] = v37;
  [v43 _mutateMinimumPoint:v49];

  v44 = [(AMSUIToastPresentationController *)self interactiveRegion];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __71__AMSUIToastPresentationController_frameOfPresentedViewInContainerView__block_invoke_2;
  v48[3] = &__block_descriptor_40_e9_v16__0_d8l;
  *&v48[4] = v42;
  [v44 _mutateMaximumPoint:v48];

  v45 = [(AMSUIToastPresentationController *)self interactor];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __71__AMSUIToastPresentationController_frameOfPresentedViewInContainerView__block_invoke_3;
  v47[3] = &unk_1E7F259C0;
  v47[4] = self;
  *&v47[5] = v37;
  *&v47[6] = v42;
  [v45 _mutateUnconstrainedPoint:v47];

  v46 = [(AMSUIToastPresentationController *)self interactor];
  v14 = *[v46 _presentationPoint];

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

- (void)presentationTransitionDidEnd:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = AMSUIToastPresentationController;
  [(AMSUIToastPresentationController *)&v5 presentationTransitionDidEnd:?];
  if (v3)
  {
    [(AMSUIToastPresentationController *)self _startDismissTimer];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v15.receiver = self;
  v15.super_class = AMSUIToastPresentationController;
  v4 = a3;
  [(AMSUIToastPresentationController *)&v15 traitCollectionDidChange:v4];
  v5 = [(AMSUIToastPresentationController *)self traitCollection:v15.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  v8 = [(AMSUIToastPresentationController *)self traitCollection];
  v9 = [v8 horizontalSizeClass];
  v10 = [v4 horizontalSizeClass];

  v11 = [(AMSUIToastPresentationController *)self traitCollection];
  v12 = [v11 verticalSizeClass];
  v13 = [v4 verticalSizeClass];

  if (v12 != v13 || v9 != v10 || v6 != v7)
  {
    v14 = [(AMSUIToastPresentationController *)self containerView];
    [v14 setNeedsLayout];
  }
}

- (void)_hyperInteractorApplyPresentationPoint:(id)a3
{
  v4 = [(AMSUIToastPresentationController *)self containerView];
  [v4 setNeedsLayout];

  v5 = [(AMSUIToastPresentationController *)self containerView];
  [v5 layoutIfNeeded];
}

- (void)_setupPassthroughView
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = [(AMSUIToastPresentationController *)self containerView];

  if (v3)
  {
    v4 = [(AMSUIToastPresentationController *)self containerView];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(AMSUIToastPresentationController *)self touchForwardingView];
    [v13 setFrame:{v6, v8, v10, v12}];

    v14 = [(AMSUIToastPresentationController *)self containerView];
    v15 = [(AMSUIToastPresentationController *)self touchForwardingView];
    [v14 insertSubview:v15 atIndex:0];

    v16 = [(AMSUIToastPresentationController *)self passthroughViews];

    if (!v16)
    {
      v17 = [(AMSUIToastPresentationController *)self presentingViewController];
      v18 = [v17 view];
      v21[0] = v18;
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
    v4 = [(AMSUIToastPresentationController *)self dismissalTimer];
    [v4 invalidate];

    v5 = MEMORY[0x1E695DFF0];
    [(AMSUIToastPresentationController *)self dismissDelayTimeInterval];
    v6 = [v5 scheduledTimerWithTimeInterval:self target:sel__dismissTimerFired_ selector:0 userInfo:0 repeats:?];
    [(AMSUIToastPresentationController *)self setDismissalTimer:v6];
  }
}

- (void)_setupPanGestureRecognizer
{
  v3 = [(AMSUIToastPresentationController *)self presentedView];

  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel__didPanPresentedView_];
    [(AMSUIToastPresentationController *)self setPanRecognizer:v4];

    v6 = [(AMSUIToastPresentationController *)self presentedView];
    v5 = [(AMSUIToastPresentationController *)self panRecognizer];
    [v6 addGestureRecognizer:v5];
  }
}

- (void)_didPanPresentedView:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIToastPresentationController *)self presentedView];
  if (v5)
  {
    v6 = v5;
    v7 = [(AMSUIToastPresentationController *)self containerView];

    if (v7)
    {
      v8 = [(AMSUIToastPresentationController *)self dismissalTimer];
      [v8 invalidate];

      v9 = [v4 state];
      if ((v9 - 3) < 2)
      {
        v20 = [(AMSUIToastPresentationController *)self containerView];
        [v4 translationInView:v20];
        v22 = v21;

        v23 = [(AMSUIToastPresentationController *)self containerView];
        [v4 velocityInView:v23];
        v25 = v24;

        if (v25 < 400.0 && v22 <= 20.0 && [(AMSUIToastPresentationController *)self isShowing])
        {
          v26 = [(AMSUIToastPresentationController *)self interactor];
          v27 = *[v26 _projectedPoint];
          v28 = [(AMSUIToastPresentationController *)self containerView];
          [v28 bounds];
          [(AMSUIToastPresentationController *)self setShowing:v27 < CGRectGetMaxX(v33)];

          v29 = [(AMSUIToastPresentationController *)self interactor];
          [v29 _interactionEnded];

          v30 = [(AMSUIToastPresentationController *)self containerView];
          [v4 setTranslation:v30 inView:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];

          [(AMSUIToastPresentationController *)self _startDismissTimer];
        }

        else
        {
          [(AMSUIToastPresentationController *)self _dismissToast];
        }
      }

      else
      {
        if (v9 == 2)
        {
LABEL_7:
          v12 = [(AMSUIToastPresentationController *)self containerView];
          [v4 translationInView:v12];
          v14 = v13;

          v32 = v14;
          v15 = [(AMSUIToastPresentationController *)self containerView];
          [v4 velocityInView:v15];
          v17 = v16;

          v18 = [(AMSUIToastPresentationController *)self containerView];
          [v18 setNeedsLayout];

          v19 = [(AMSUIToastPresentationController *)self interactor];
          [v19 _interactionChangedCopyingTranslation:&v32 velocity:&v31];

          goto LABEL_13;
        }

        if (v9 == 1)
        {
          v10 = [(AMSUIToastPresentationController *)self containerView];
          [v10 setNeedsLayout];

          v11 = [(AMSUIToastPresentationController *)self interactor];
          [v11 _interactionBegan];

          goto LABEL_7;
        }
      }
    }
  }

LABEL_13:
}

- (NSArray)passthroughViews
{
  v2 = [(AMSUIToastPresentationController *)self touchForwardingView];
  v3 = [v2 passthroughViews];

  return v3;
}

- (void)setPassthroughViews:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIToastPresentationController *)self touchForwardingView];
  [v5 setPassthroughViews:v4];
}

- (void)setShowing:(BOOL)a3
{
  if (self->_showing != a3)
  {
    v4 = [(AMSUIToastPresentationController *)self containerView];
    [v4 setNeedsLayout];
  }
}

- (double)_yOffset
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [(AMSUIToastPresentationController *)self relativeTabBarController];
  if (!v3)
  {
    v4 = [(AMSUIToastPresentationController *)self presentingViewController];
    objc_opt_class();
    v3 = (objc_opt_isKindOfClass() & 1) != 0 ? v4 : 0;

    if (!v3)
    {
      v5 = [(AMSUIToastPresentationController *)self presentingViewController];
      v3 = [v5 tabBarController];
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [(AMSUIToastPresentationController *)self presentingViewController];
  v7 = [v6 childViewControllers];

  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v7);
        }

        if (v3)
        {

          goto LABEL_23;
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = v12;
        }

        else
        {
          v3 = 0;
        }

        if (!v3)
        {
          v3 = [v12 tabBarController];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  if (v3)
  {
LABEL_23:
    v15 = [v3 contentLayoutGuide];
    v16 = [v15 owningView];
    [v16 frame];
    v18 = v17;
    [v15 layoutFrame];
    v20 = v19;
    [v15 layoutFrame];
    v14 = v18 - (v20 + v21);
  }

  else
  {
    v3 = [(AMSUIToastPresentationController *)self containerView];
    [v3 safeAreaInsets];
    v14 = v13;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)_dismissToast
{
  v3 = [(AMSUIToastPresentationController *)self presentedViewController];
  v4 = [v3 presentingViewController];

  if (v4)
  {
    v5 = [(AMSUIToastPresentationController *)self presentedViewController];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__AMSUIToastPresentationController__dismissToast__block_invoke;
    v6[3] = &unk_1E7F242D0;
    v6[4] = self;
    [v5 dismissViewControllerAnimated:1 completion:v6];
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
  v2 = [(AMSUIToastPresentationController *)self traitCollection];
  v3 = [v2 userInterfaceIdiom];

  result = 16.0;
  if (v3 == 1)
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