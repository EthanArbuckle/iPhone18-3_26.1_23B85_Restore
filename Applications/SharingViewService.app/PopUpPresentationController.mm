@interface PopUpPresentationController
- (UIView)dimmingView;
- (void)containerViewWillLayoutSubviews;
- (void)dismissalTransitionDidEnd:(BOOL)end;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)end;
- (void)presentationTransitionWillBegin;
@end

@implementation PopUpPresentationController

- (void)containerViewWillLayoutSubviews
{
  containerView = [(PopUpPresentationController *)self containerView];
  [containerView bounds];
  [(UIView *)self->_dimmingView setFrame:?];
}

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  if (end)
  {
    [(UIView *)self->_dimmingView removeFromSuperview];
    dimmingView = self->_dimmingView;
    self->_dimmingView = 0;
  }
}

- (void)dismissalTransitionWillBegin
{
  presentedViewController = [(PopUpPresentationController *)self presentedViewController];
  transitionCoordinator = [presentedViewController transitionCoordinator];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100109E48;
  v5[3] = &unk_100194FA0;
  v5[4] = self;
  [transitionCoordinator animateAlongsideTransition:v5 completion:0];
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  if (!end)
  {
    [(UIView *)self->_dimmingView removeFromSuperview];
    dimmingView = self->_dimmingView;
    self->_dimmingView = 0;
  }
}

- (void)presentationTransitionWillBegin
{
  dimmingView = [(PopUpPresentationController *)self dimmingView];
  [dimmingView setAlpha:0.0];

  if (self->_blurBackground)
  {
    +[UIColor clearColor];
  }

  else
  {
    [UIColor colorWithWhite:0.0 alpha:0.600000024];
  }
  v4 = ;
  [(UIView *)self->_dimmingView setBackgroundColor:v4];

  containerView = [(PopUpPresentationController *)self containerView];
  [containerView addSubview:self->_dimmingView];

  presentedViewController = [(PopUpPresentationController *)self presentedViewController];
  transitionCoordinator = [presentedViewController transitionCoordinator];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100109FE0;
  v8[3] = &unk_100194FA0;
  v8[4] = self;
  [transitionCoordinator animateAlongsideTransition:v8 completion:0];
}

- (UIView)dimmingView
{
  dimmingView = self->_dimmingView;
  if (!dimmingView)
  {
    if (self->_blurBackground)
    {
      v4 = [UIVisualEffectView alloc];
      containerView = [UIBlurEffect effectWithStyle:2];
      v6 = [v4 initWithEffect:containerView];
    }

    else
    {
      v7 = [UIView alloc];
      containerView = [(PopUpPresentationController *)self containerView];
      [containerView bounds];
      v6 = [v7 initWithFrame:?];
    }

    v8 = self->_dimmingView;
    self->_dimmingView = v6;

    dimmingView = self->_dimmingView;
  }

  return dimmingView;
}

@end