@interface AMSUIPrivacyPresentationController
- (AMSUIPrivacyPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (CGRect)_frameForTransitionViewInPresentationSuperview:(id)superview;
- (void)_prepareDimmingViewIfNecessary;
- (void)containerViewDidLayoutSubviews;
- (void)containerViewWillLayoutSubviews;
- (void)presentationTransitionWillBegin;
@end

@implementation AMSUIPrivacyPresentationController

- (AMSUIPrivacyPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  v7.receiver = self;
  v7.super_class = AMSUIPrivacyPresentationController;
  v4 = [(AMSUIPrivacyPresentationController *)&v7 initWithPresentedViewController:controller presentingViewController:viewController];
  v5 = v4;
  if (v4)
  {
    [(AMSUIPrivacyPresentationController *)v4 setDelegate:v4];
  }

  return v5;
}

- (void)containerViewWillLayoutSubviews
{
  [(AMSUIPrivacyPresentationController *)self _prepareDimmingViewIfNecessary];
  presentedViewController = [(AMSUIPrivacyPresentationController *)self presentedViewController];
  view = [presentedViewController view];

  [view _setContinuousCornerRadius:16.0];
  containerView = [(AMSUIPrivacyPresentationController *)self containerView];
  [containerView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  presentedViewController2 = [(AMSUIPrivacyPresentationController *)self presentedViewController];
  [presentedViewController2 preferredContentSize];
  v15 = v14;
  v17 = v16;

  v23.origin.x = v6;
  v23.origin.y = v8;
  v23.size.width = v10;
  v23.size.height = v12;
  v18 = CGRectGetWidth(v23) + -40.0;
  if (v18 < v15)
  {
    v15 = v18;
  }

  v24.origin.x = v6;
  v24.origin.y = v8;
  v24.size.width = v10;
  v24.size.height = v12;
  v19 = CGRectGetHeight(v24) + -40.0;
  if (v19 < v17)
  {
    v17 = v19;
  }

  v25.origin.x = v6;
  v25.origin.y = v8;
  v25.size.width = v10;
  v25.size.height = v12;
  v20 = CGRectGetMidX(v25) - v15 * 0.5;
  v26.origin.x = v6;
  v26.origin.y = v8;
  v26.size.width = v10;
  v26.size.height = v12;
  [view setFrame:{v20, CGRectGetMidY(v26) - v17 * 0.5, v15, v17}];
}

- (void)containerViewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = AMSUIPrivacyPresentationController;
  [(AMSUIPrivacyPresentationController *)&v14 containerViewDidLayoutSubviews];
  dimmingView = [(AMSUIPrivacyPresentationController *)self dimmingView];

  if (dimmingView)
  {
    containerView = [(AMSUIPrivacyPresentationController *)self containerView];
    [containerView bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    dimmingView2 = [(AMSUIPrivacyPresentationController *)self dimmingView];
    [dimmingView2 setFrame:{v6, v8, v10, v12}];
  }
}

- (CGRect)_frameForTransitionViewInPresentationSuperview:(id)superview
{
  [superview bounds];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_prepareDimmingViewIfNecessary
{
  presentedViewController = [(AMSUIPrivacyPresentationController *)self presentedViewController];
  dimmingView = [(AMSUIPrivacyPresentationController *)self dimmingView];

  v4 = presentedViewController;
  if (!dimmingView && presentedViewController)
  {
    containerView = [(AMSUIPrivacyPresentationController *)self containerView];
    dimmingView2 = [(AMSUIPrivacyPresentationController *)self dimmingView];
    [dimmingView2 removeFromSuperview];

    v7 = objc_alloc(MEMORY[0x1E69DD250]);
    v8 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v9 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.4];
    [v8 setBackgroundColor:v9];

    [(AMSUIPrivacyPresentationController *)self setDimmingView:v8];
    [containerView insertSubview:v8 atIndex:0];
    [containerView sendSubviewToBack:v8];

    v4 = presentedViewController;
  }
}

- (void)presentationTransitionWillBegin
{
  containerView = [(AMSUIPrivacyPresentationController *)self containerView];
  presentedView = [(AMSUIPrivacyPresentationController *)self presentedView];
  [containerView addSubview:presentedView];

  [(AMSUIPrivacyPresentationController *)self _prepareDimmingViewIfNecessary];
}

@end