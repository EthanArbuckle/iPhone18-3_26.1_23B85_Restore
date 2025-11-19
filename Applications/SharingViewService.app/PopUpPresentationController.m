@interface PopUpPresentationController
- (UIView)dimmingView;
- (void)containerViewWillLayoutSubviews;
- (void)dismissalTransitionDidEnd:(BOOL)a3;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)a3;
- (void)presentationTransitionWillBegin;
@end

@implementation PopUpPresentationController

- (void)containerViewWillLayoutSubviews
{
  v3 = [(PopUpPresentationController *)self containerView];
  [v3 bounds];
  [(UIView *)self->_dimmingView setFrame:?];
}

- (void)dismissalTransitionDidEnd:(BOOL)a3
{
  if (a3)
  {
    [(UIView *)self->_dimmingView removeFromSuperview];
    dimmingView = self->_dimmingView;
    self->_dimmingView = 0;
  }
}

- (void)dismissalTransitionWillBegin
{
  v3 = [(PopUpPresentationController *)self presentedViewController];
  v4 = [v3 transitionCoordinator];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100109E48;
  v5[3] = &unk_100194FA0;
  v5[4] = self;
  [v4 animateAlongsideTransition:v5 completion:0];
}

- (void)presentationTransitionDidEnd:(BOOL)a3
{
  if (!a3)
  {
    [(UIView *)self->_dimmingView removeFromSuperview];
    dimmingView = self->_dimmingView;
    self->_dimmingView = 0;
  }
}

- (void)presentationTransitionWillBegin
{
  v3 = [(PopUpPresentationController *)self dimmingView];
  [v3 setAlpha:0.0];

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

  v5 = [(PopUpPresentationController *)self containerView];
  [v5 addSubview:self->_dimmingView];

  v6 = [(PopUpPresentationController *)self presentedViewController];
  v7 = [v6 transitionCoordinator];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100109FE0;
  v8[3] = &unk_100194FA0;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (UIView)dimmingView
{
  dimmingView = self->_dimmingView;
  if (!dimmingView)
  {
    if (self->_blurBackground)
    {
      v4 = [UIVisualEffectView alloc];
      v5 = [UIBlurEffect effectWithStyle:2];
      v6 = [v4 initWithEffect:v5];
    }

    else
    {
      v7 = [UIView alloc];
      v5 = [(PopUpPresentationController *)self containerView];
      [v5 bounds];
      v6 = [v7 initWithFrame:?];
    }

    v8 = self->_dimmingView;
    self->_dimmingView = v6;

    dimmingView = self->_dimmingView;
  }

  return dimmingView;
}

@end