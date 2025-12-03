@interface FBAPartialPresentationController
- (BOOL)isPresentingFullScreen;
- (CGRect)frameOfPresentedViewInContainerView;
- (FBAPartialPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (UIView)dimmingView;
- (int64_t)adaptivePresentationStyle;
- (void)containerViewWillLayoutSubviews;
- (void)dismissPresentation:(id)presentation;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionWillBegin;
@end

@implementation FBAPartialPresentationController

- (FBAPartialPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  v5.receiver = self;
  v5.super_class = FBAPartialPresentationController;
  return [(FBAPartialPresentationController *)&v5 initWithPresentedViewController:controller presentingViewController:viewController];
}

- (void)containerViewWillLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = FBAPartialPresentationController;
  [(FBAPartialPresentationController *)&v17 containerViewWillLayoutSubviews];
  [(FBAPartialPresentationController *)self frameOfPresentedViewInContainerView];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  presentedViewController = [(FBAPartialPresentationController *)self presentedViewController];
  view = [presentedViewController view];
  [view setFrame:{v4, v6, v8, v10}];

  presentedView = [(FBAPartialPresentationController *)self presentedView];
  layer = [presentedView layer];
  [layer setCornerRadius:7.0];

  presentedView2 = [(FBAPartialPresentationController *)self presentedView];
  layer2 = [presentedView2 layer];
  [layer2 setMasksToBounds:1];
}

- (void)presentationTransitionWillBegin
{
  dimmingView = [(FBAPartialPresentationController *)self dimmingView];
  containerView = [(FBAPartialPresentationController *)self containerView];
  [containerView addSubview:dimmingView];
  v5 = [NSLayoutConstraint constraintWithItem:dimmingView attribute:8 relatedBy:0 toItem:containerView attribute:8 multiplier:1.0 constant:0.0];
  v6 = [NSLayoutConstraint constraintWithItem:dimmingView attribute:7 relatedBy:0 toItem:containerView attribute:7 multiplier:1.0 constant:0.0];
  v7 = [NSLayoutConstraint constraintWithItem:dimmingView attribute:9 relatedBy:0 toItem:containerView attribute:9 multiplier:1.0 constant:0.0];
  v8 = [NSLayoutConstraint constraintWithItem:dimmingView attribute:10 relatedBy:0 toItem:containerView attribute:10 multiplier:1.0 constant:0.0];
  v15[0] = v5;
  v15[1] = v6;
  v15[2] = v7;
  v15[3] = v8;
  v9 = [NSArray arrayWithObjects:v15 count:4];
  [containerView addConstraints:v9];

  presentingViewController = [(FBAPartialPresentationController *)self presentingViewController];
  transitionCoordinator = [presentingViewController transitionCoordinator];

  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001ADF0;
  v12[3] = &unk_1000DEF80;
  objc_copyWeak(&v13, &location);
  [transitionCoordinator animateAlongsideTransition:v12 completion:0];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)dismissalTransitionWillBegin
{
  presentingViewController = [(FBAPartialPresentationController *)self presentingViewController];
  transitionCoordinator = [presentingViewController transitionCoordinator];

  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001AF34;
  v5[3] = &unk_1000DEF80;
  objc_copyWeak(&v6, &location);
  [transitionCoordinator animateAlongsideTransition:v5 completion:0];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (CGRect)frameOfPresentedViewInContainerView
{
  [(FBAPartialPresentationController *)self height];
  v4 = v3;
  v5 = +[UIScreen mainScreen];
  [v5 bounds];
  v7 = v6;

  [(FBAPartialPresentationController *)self height];
  v8 = 150.0;
  if (v9 >= 150.0)
  {
    v8 = v4;
    if ([(FBAPartialPresentationController *)self isPresentingFullScreen])
    {
      v10 = +[UIApplication sharedApplication];
      windows = [v10 windows];
      firstObject = [windows firstObject];
      [firstObject safeAreaInsets];
      v8 = v7 - v13;
    }
  }

  containerView = [(FBAPartialPresentationController *)self containerView];
  [containerView bounds];
  v16 = v15 - v8;
  containerView2 = [(FBAPartialPresentationController *)self containerView];
  [containerView2 bounds];
  v19 = v18;

  v20 = 0.0;
  v21 = v16;
  v22 = v19;
  v23 = v8;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (UIView)dimmingView
{
  dimmingView = self->_dimmingView;
  if (!dimmingView)
  {
    v4 = [UIView alloc];
    containerView = [(FBAPartialPresentationController *)self containerView];
    [containerView bounds];
    v7 = v6;
    containerView2 = [(FBAPartialPresentationController *)self containerView];
    [containerView2 bounds];
    v9 = [v4 initWithFrame:{0.0, 0.0, v7}];
    v10 = self->_dimmingView;
    self->_dimmingView = v9;

    v11 = +[UIColor _dimmingViewColor];
    [(UIView *)self->_dimmingView setBackgroundColor:v11];

    [(UIView *)self->_dimmingView setAlpha:0.0];
    [(UIView *)self->_dimmingView setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"dismissPresentation:"];
    [v12 setNumberOfTouchesRequired:1];
    [(UIView *)self->_dimmingView addGestureRecognizer:v12];

    dimmingView = self->_dimmingView;
  }

  return dimmingView;
}

- (void)dismissPresentation:(id)presentation
{
  presentedViewController = [(FBAPartialPresentationController *)self presentedViewController];
  [presentedViewController dismissViewControllerAnimated:1 completion:0];
}

- (BOOL)isPresentingFullScreen
{
  v3 = +[UIScreen mainScreen];
  [v3 bounds];
  v5 = v4;

  [(FBAPartialPresentationController *)self height];
  return v6 > v5 * 0.9;
}

- (int64_t)adaptivePresentationStyle
{
  if ([(FBAPartialPresentationController *)self isPresentingFullScreen])
  {
    return 5;
  }

  else
  {
    return -2;
  }
}

@end