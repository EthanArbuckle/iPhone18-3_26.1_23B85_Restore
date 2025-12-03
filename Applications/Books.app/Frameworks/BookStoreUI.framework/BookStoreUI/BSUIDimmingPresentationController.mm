@interface BSUIDimmingPresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (UIView)dimmingView;
- (void)containerViewWillLayoutSubviews;
- (void)dismissalTransitionDidEnd:(BOOL)end;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)end;
- (void)presentationTransitionWillBegin;
- (void)setDimmingViewBackgroundColor:(id)color;
@end

@implementation BSUIDimmingPresentationController

- (UIView)dimmingView
{
  v3 = qword_3CA6A0;
  if (!qword_3CA6A0)
  {
    v4 = [UIView alloc];
    containerView = [(BSUIDimmingPresentationController *)self containerView];
    [containerView bounds];
    v6 = [v4 initWithFrame:?];
    v7 = qword_3CA6A0;
    qword_3CA6A0 = v6;

    [qword_3CA6A0 setBackgroundColor:self->_dimmingViewBackgroundColor];
    v3 = qword_3CA6A0;
  }

  return v3;
}

- (void)setDimmingViewBackgroundColor:(id)color
{
  colorCopy = color;
  if (self->_dimmingViewBackgroundColor != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(&self->_dimmingViewBackgroundColor, color);
    dimmingView = [(BSUIDimmingPresentationController *)self dimmingView];
    [dimmingView setBackgroundColor:v7];

    colorCopy = v7;
  }
}

- (void)presentationTransitionWillBegin
{
  presentedViewController = [(BSUIDimmingPresentationController *)self presentedViewController];
  view = [presentedViewController view];

  layer = [view layer];
  [layer setCornerRadius:20.0];

  containerView = [(BSUIDimmingPresentationController *)self containerView];
  [containerView bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  dimmingView = [(BSUIDimmingPresentationController *)self dimmingView];
  [dimmingView setFrame:{v8, v10, v12, v14}];

  dimmingView2 = [(BSUIDimmingPresentationController *)self dimmingView];
  [dimmingView2 setAlpha:0.0];

  containerView2 = [(BSUIDimmingPresentationController *)self containerView];
  dimmingView3 = [(BSUIDimmingPresentationController *)self dimmingView];
  [containerView2 addSubview:dimmingView3];

  presentedViewController2 = [(BSUIDimmingPresentationController *)self presentedViewController];
  transitionCoordinator = [presentedViewController2 transitionCoordinator];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_6B28;
  v21[3] = &unk_386C80;
  v21[4] = self;
  [transitionCoordinator animateAlongsideTransition:v21 completion:0];
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  if (!end)
  {
    dimmingView = [(BSUIDimmingPresentationController *)self dimmingView];
    [dimmingView removeFromSuperview];
  }
}

- (void)dismissalTransitionWillBegin
{
  presentedViewController = [(BSUIDimmingPresentationController *)self presentedViewController];
  transitionCoordinator = [presentedViewController transitionCoordinator];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_6C5C;
  v5[3] = &unk_386C80;
  v5[4] = self;
  [transitionCoordinator animateAlongsideTransition:v5 completion:0];
}

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  if (end)
  {
    dimmingView = [(BSUIDimmingPresentationController *)self dimmingView];
    [dimmingView removeFromSuperview];
  }
}

- (CGRect)frameOfPresentedViewInContainerView
{
  containerView = [(BSUIDimmingPresentationController *)self containerView];
  [containerView frame];
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
  containerView = [(BSUIDimmingPresentationController *)self containerView];
  [containerView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  dimmingView = [(BSUIDimmingPresentationController *)self dimmingView];
  [dimmingView setFrame:{v5, v7, v9, v11}];

  [(BSUIDimmingPresentationController *)self frameOfPresentedViewInContainerView];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  presentedView = [(BSUIDimmingPresentationController *)self presentedView];
  [presentedView setFrame:{v14, v16, v18, v20}];
}

@end