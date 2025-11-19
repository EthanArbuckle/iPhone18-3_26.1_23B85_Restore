@interface BSUIDimmingPresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (UIView)dimmingView;
- (void)containerViewWillLayoutSubviews;
- (void)dismissalTransitionDidEnd:(BOOL)a3;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)a3;
- (void)presentationTransitionWillBegin;
- (void)setDimmingViewBackgroundColor:(id)a3;
@end

@implementation BSUIDimmingPresentationController

- (UIView)dimmingView
{
  v3 = qword_3CA6A0;
  if (!qword_3CA6A0)
  {
    v4 = [UIView alloc];
    v5 = [(BSUIDimmingPresentationController *)self containerView];
    [v5 bounds];
    v6 = [v4 initWithFrame:?];
    v7 = qword_3CA6A0;
    qword_3CA6A0 = v6;

    [qword_3CA6A0 setBackgroundColor:self->_dimmingViewBackgroundColor];
    v3 = qword_3CA6A0;
  }

  return v3;
}

- (void)setDimmingViewBackgroundColor:(id)a3
{
  v5 = a3;
  if (self->_dimmingViewBackgroundColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_dimmingViewBackgroundColor, a3);
    v6 = [(BSUIDimmingPresentationController *)self dimmingView];
    [v6 setBackgroundColor:v7];

    v5 = v7;
  }
}

- (void)presentationTransitionWillBegin
{
  v3 = [(BSUIDimmingPresentationController *)self presentedViewController];
  v4 = [v3 view];

  v5 = [v4 layer];
  [v5 setCornerRadius:20.0];

  v6 = [(BSUIDimmingPresentationController *)self containerView];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(BSUIDimmingPresentationController *)self dimmingView];
  [v15 setFrame:{v8, v10, v12, v14}];

  v16 = [(BSUIDimmingPresentationController *)self dimmingView];
  [v16 setAlpha:0.0];

  v17 = [(BSUIDimmingPresentationController *)self containerView];
  v18 = [(BSUIDimmingPresentationController *)self dimmingView];
  [v17 addSubview:v18];

  v19 = [(BSUIDimmingPresentationController *)self presentedViewController];
  v20 = [v19 transitionCoordinator];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_6B28;
  v21[3] = &unk_386C80;
  v21[4] = self;
  [v20 animateAlongsideTransition:v21 completion:0];
}

- (void)presentationTransitionDidEnd:(BOOL)a3
{
  if (!a3)
  {
    v4 = [(BSUIDimmingPresentationController *)self dimmingView];
    [v4 removeFromSuperview];
  }
}

- (void)dismissalTransitionWillBegin
{
  v3 = [(BSUIDimmingPresentationController *)self presentedViewController];
  v4 = [v3 transitionCoordinator];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_6C5C;
  v5[3] = &unk_386C80;
  v5[4] = self;
  [v4 animateAlongsideTransition:v5 completion:0];
}

- (void)dismissalTransitionDidEnd:(BOOL)a3
{
  if (a3)
  {
    v3 = [(BSUIDimmingPresentationController *)self dimmingView];
    [v3 removeFromSuperview];
  }
}

- (CGRect)frameOfPresentedViewInContainerView
{
  v2 = [(BSUIDimmingPresentationController *)self containerView];
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)containerViewWillLayoutSubviews
{
  v3 = [(BSUIDimmingPresentationController *)self containerView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(BSUIDimmingPresentationController *)self dimmingView];
  [v12 setFrame:{v5, v7, v9, v11}];

  [(BSUIDimmingPresentationController *)self frameOfPresentedViewInContainerView];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(BSUIDimmingPresentationController *)self presentedView];
  [v21 setFrame:{v14, v16, v18, v20}];
}

@end