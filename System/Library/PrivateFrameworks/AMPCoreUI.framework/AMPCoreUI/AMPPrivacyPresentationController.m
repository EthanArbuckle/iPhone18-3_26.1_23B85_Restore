@interface AMPPrivacyPresentationController
- (AMPPrivacyPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (CGRect)_frameForTransitionViewInPresentationSuperview:(id)a3;
- (void)_prepareDimmingViewIfNecessary;
- (void)containerViewDidLayoutSubviews;
- (void)containerViewWillLayoutSubviews;
- (void)presentationTransitionWillBegin;
@end

@implementation AMPPrivacyPresentationController

- (AMPPrivacyPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v7.receiver = self;
  v7.super_class = AMPPrivacyPresentationController;
  v4 = [(AMPPrivacyPresentationController *)&v7 initWithPresentedViewController:a3 presentingViewController:a4];
  v5 = v4;
  if (v4)
  {
    [(AMPPrivacyPresentationController *)v4 setDelegate:v4];
  }

  return v5;
}

- (void)containerViewWillLayoutSubviews
{
  [(AMPPrivacyPresentationController *)self _prepareDimmingViewIfNecessary];
  v3 = [(AMPPrivacyPresentationController *)self presentedViewController];
  v21 = [v3 view];

  [v21 _setContinuousCornerRadius:16.0];
  v4 = [(AMPPrivacyPresentationController *)self containerView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(AMPPrivacyPresentationController *)self presentedViewController];
  [v13 preferredContentSize];
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
  [v21 setFrame:{v20, CGRectGetMidY(v26) - v17 * 0.5, v15, v17}];
}

- (void)containerViewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = AMPPrivacyPresentationController;
  [(AMPPrivacyPresentationController *)&v14 containerViewDidLayoutSubviews];
  v3 = [(AMPPrivacyPresentationController *)self dimmingView];

  if (v3)
  {
    v4 = [(AMPPrivacyPresentationController *)self containerView];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(AMPPrivacyPresentationController *)self dimmingView];
    [v13 setFrame:{v6, v8, v10, v12}];
  }
}

- (CGRect)_frameForTransitionViewInPresentationSuperview:(id)a3
{
  [a3 bounds];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_prepareDimmingViewIfNecessary
{
  v10 = [(AMPPrivacyPresentationController *)self presentedViewController];
  v3 = [(AMPPrivacyPresentationController *)self dimmingView];

  v4 = v10;
  if (!v3 && v10)
  {
    v5 = [(AMPPrivacyPresentationController *)self containerView];
    v6 = [(AMPPrivacyPresentationController *)self dimmingView];
    [v6 removeFromSuperview];

    v7 = objc_alloc(MEMORY[0x277D75D18]);
    v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.4];
    [v8 setBackgroundColor:v9];

    [(AMPPrivacyPresentationController *)self setDimmingView:v8];
    [v5 insertSubview:v8 atIndex:0];
    [v5 sendSubviewToBack:v8];

    v4 = v10;
  }
}

- (void)presentationTransitionWillBegin
{
  v4 = [(AMPPrivacyPresentationController *)self containerView];
  v3 = [(AMPPrivacyPresentationController *)self presentedView];
  [v4 addSubview:v3];

  [(AMPPrivacyPresentationController *)self _prepareDimmingViewIfNecessary];
}

@end