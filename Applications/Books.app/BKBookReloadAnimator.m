@interface BKBookReloadAnimator
- (double)aspectRatio;
- (void)_loadStateFromContext:(id)a3;
- (void)_performCrossFade;
- (void)_setupSpinner;
- (void)_showSpinner:(BOOL)a3 completion:(id)a4;
- (void)animateTransition:(id)a3;
- (void)bookContentDidLoad;
@end

@implementation BKBookReloadAnimator

- (void)bookContentDidLoad
{
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001AD604;
  v6[3] = &unk_100A035D0;
  objc_copyWeak(&v7, &location);
  v2 = objc_retainBlock(v6);
  (v2[2])(v2, v3, v4, v5);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_loadStateFromContext:(id)a3
{
  v4 = a3;
  [(BKBookReloadAnimator *)self setTransitionContext:v4];
  v5 = [v4 viewControllerForKey:UITransitionContextFromViewControllerKey];
  [(BKBookReloadAnimator *)self setFromViewController:v5];

  v6 = [v4 viewControllerForKey:UITransitionContextToViewControllerKey];
  [(BKBookReloadAnimator *)self setToViewController:v6];

  v7 = [v4 containerView];

  [(BKBookReloadAnimator *)self setContainerView:v7];
}

- (void)animateTransition:(id)a3
{
  [(BKBookReloadAnimator *)self _loadStateFromContext:a3];
  v4 = [(BKBookReloadAnimator *)self containerView];
  v5 = [(BKBookReloadAnimator *)self toViewController];
  v6 = [v5 view];
  [v4 insertSubview:v6 atIndex:0];

  v7 = [(BKBookReloadAnimator *)self toViewController];
  v8 = [v7 view];
  [v8 layoutIfNeeded];

  [(BKBookReloadAnimator *)self _setupSpinner];

  [(BKBookReloadAnimator *)self _performCrossFade];
}

- (void)_performCrossFade
{
  if ([(BKBookReloadAnimator *)self contentLoaded])
  {
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_startSpinner" object:0];
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"bookContentDidLoad" object:0];
    v3 = [(BKBookReloadAnimator *)self fromViewController];
    v4 = [v3 view];
    [v4 setAlpha:1.0];

    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1001AD980;
    v5[3] = &unk_100A038D0;
    v5[4] = self;
    [(BKBookReloadAnimator *)self _showSpinner:0 completion:v5];
  }

  else
  {
    [(BKBookReloadAnimator *)self setWaitingForContentLoaded:1];
    [(BKBookReloadAnimator *)self performSelector:"_startSpinner" withObject:0 afterDelay:0.4];

    [(BKBookReloadAnimator *)self performSelector:"bookContentDidLoad" withObject:0 afterDelay:5.0];
  }
}

- (double)aspectRatio
{
  v2 = [(BKBookReloadAnimator *)self containerView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  if (v4 > 0.0 && v6 > 0.0)
  {
    return v4 / v6;
  }

  sub_100793454(v4, v6);
  return 1.0;
}

- (void)_setupSpinner
{
  v3 = [[UIView alloc] initWithFrame:{0.0, 0.0, 112.0, 112.0}];
  spinnerView = self->_spinnerView;
  self->_spinnerView = v3;

  v5 = [(BKBookReloadAnimator *)self containerView];
  [v5 bounds];
  CGRectGetCenterNoRounding();
  [(UIView *)self->_spinnerView setCenter:?];

  [(UIView *)self->_spinnerView frame];
  v13 = CGRectIntegral(v12);
  [(UIView *)self->_spinnerView setFrame:v13.origin.x, v13.origin.y, v13.size.width, v13.size.height];
  v6 = [(UIView *)self->_spinnerView layer];
  [v6 setCornerRadius:8.0];

  v7 = [UIColor colorWithWhite:0.0 alpha:0.8];
  [(UIView *)self->_spinnerView setBackgroundColor:v7];

  v10 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
  v8 = +[UIColor whiteColor];
  [v10 setColor:v8];

  [(UIView *)self->_spinnerView bounds];
  CGRectGetCenterNoRounding();
  [v10 setCenter:?];
  [v10 frame];
  v15 = CGRectIntegral(v14);
  [v10 setFrame:{v15.origin.x, v15.origin.y, v15.size.width, v15.size.height}];
  [v10 startAnimating];
  [(UIView *)self->_spinnerView addSubview:v10];
  [(UIView *)self->_spinnerView setAlpha:0.0];
  v9 = [(BKBookReloadAnimator *)self containerView];
  [v9 addSubview:self->_spinnerView];
}

- (void)_showSpinner:(BOOL)a3 completion:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001ADD80;
  v4[3] = &unk_100A044C8;
  v4[4] = self;
  v5 = a3;
  [UIView animateWithDuration:v4 animations:a4 completion:0.3];
}

@end