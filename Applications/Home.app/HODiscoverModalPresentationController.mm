@interface HODiscoverModalPresentationController
- (BOOL)shouldAllowViewTranslation;
- (CGRect)frameOfPresentedViewInContainerView;
- (void)_setPresenteViewControllerBackToOriginalPosition;
- (void)containerViewWillLayoutSubviews;
- (void)dismissalPanTranslationChanged:(double)changed;
- (void)dismissalPanTranslationEnded;
- (void)dismissalTransitionDidEnd:(BOOL)end;
- (void)dismissalTransitionWillBegin;
- (void)handleTap:(id)tap;
- (void)presentationTransitionWillBegin;
@end

@implementation HODiscoverModalPresentationController

- (BOOL)shouldAllowViewTranslation
{
  presentedViewController = [(HODiscoverModalPresentationController *)self presentedViewController];
  view = [presentedViewController view];
  [view frame];
  v5 = v4 > 40.0;

  return v5;
}

- (void)dismissalPanTranslationChanged:(double)changed
{
  v4 = changed + 40.0;
  presentedViewController = [(HODiscoverModalPresentationController *)self presentedViewController];
  view = [presentedViewController view];
  [view frame];
  v8 = v7;
  v10 = v9;

  presentedViewController2 = [(HODiscoverModalPresentationController *)self presentedViewController];
  view2 = [presentedViewController2 view];
  [view2 frame];
  v14 = v13;

  presentedViewController3 = [(HODiscoverModalPresentationController *)self presentedViewController];
  view3 = [presentedViewController3 view];
  [view3 setFrame:{v14, fmax(v4, 40.0), v8, v10}];
}

- (void)dismissalPanTranslationEnded
{
  presentedViewController = [(HODiscoverModalPresentationController *)self presentedViewController];
  view = [presentedViewController view];
  [view bounds];
  v6 = v5 * 0.75;

  presentedViewController2 = [(HODiscoverModalPresentationController *)self presentedViewController];
  view2 = [presentedViewController2 view];
  [view2 frame];
  v10 = v9;

  presentedViewController3 = [(HODiscoverModalPresentationController *)self presentedViewController];
  view3 = [presentedViewController3 view];
  [view3 bounds];
  v14 = v13 - v10;

  if (v14 >= v6)
  {

    [(HODiscoverModalPresentationController *)self _setPresenteViewControllerBackToOriginalPosition];
  }

  else
  {
    presentedViewController4 = [(HODiscoverModalPresentationController *)self presentedViewController];
    [presentedViewController4 dismissViewControllerAnimated:1 completion:0];
  }
}

- (CGRect)frameOfPresentedViewInContainerView
{
  containerView = [(HODiscoverModalPresentationController *)self containerView];

  if (containerView)
  {
    containerView2 = [(HODiscoverModalPresentationController *)self containerView];
    [containerView2 bounds];
    v6 = v5;
    containerView3 = [(HODiscoverModalPresentationController *)self containerView];
    [containerView3 bounds];
    v9 = v8;
    v10 = fminf(v6, v9);

    width = v10 + -120.0;
    containerView4 = [(HODiscoverModalPresentationController *)self containerView];
    [containerView4 bounds];
    x = (v13 - width) * 0.5;

    containerView5 = [(HODiscoverModalPresentationController *)self containerView];
    [containerView5 bounds];
    height = v16 + -40.0;

    y = 40.0;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v19 = x;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = y;
  result.origin.x = v19;
  return result;
}

- (void)containerViewWillLayoutSubviews
{
  presentedView = [(HODiscoverModalPresentationController *)self presentedView];

  if (presentedView)
  {
    [(HODiscoverModalPresentationController *)self frameOfPresentedViewInContainerView];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    presentedView2 = [(HODiscoverModalPresentationController *)self presentedView];
    [presentedView2 setFrame:{v5, v7, v9, v11}];
  }
}

- (void)presentationTransitionWillBegin
{
  containerView = [(HODiscoverModalPresentationController *)self containerView];
  if (containerView)
  {
    v4 = containerView;
    presentedViewController = [(HODiscoverModalPresentationController *)self presentedViewController];
    transitionCoordinator = [presentedViewController transitionCoordinator];

    if (transitionCoordinator)
    {
      blurView = [(HODiscoverModalPresentationController *)self blurView];

      if (!blurView)
      {
        v8 = [[UIVisualEffectView alloc] initWithEffect:0];
        [(HODiscoverModalPresentationController *)self setBlurView:v8];

        blurView2 = [(HODiscoverModalPresentationController *)self blurView];
        [blurView2 setTranslatesAutoresizingMaskIntoConstraints:0];

        v10 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTap:"];
        blurView3 = [(HODiscoverModalPresentationController *)self blurView];
        [blurView3 addGestureRecognizer:v10];
      }

      blurView4 = [(HODiscoverModalPresentationController *)self blurView];
      [blurView4 setEffect:0];

      containerView2 = [(HODiscoverModalPresentationController *)self containerView];
      blurView5 = [(HODiscoverModalPresentationController *)self blurView];
      [containerView2 addSubview:blurView5];

      blurView6 = [(HODiscoverModalPresentationController *)self blurView];
      leadingAnchor = [blurView6 leadingAnchor];
      containerView3 = [(HODiscoverModalPresentationController *)self containerView];
      leadingAnchor2 = [containerView3 leadingAnchor];
      v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v43[0] = v37;
      blurView7 = [(HODiscoverModalPresentationController *)self blurView];
      trailingAnchor = [blurView7 trailingAnchor];
      containerView4 = [(HODiscoverModalPresentationController *)self containerView];
      trailingAnchor2 = [containerView4 trailingAnchor];
      v32 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v43[1] = v32;
      blurView8 = [(HODiscoverModalPresentationController *)self blurView];
      topAnchor = [blurView8 topAnchor];
      containerView5 = [(HODiscoverModalPresentationController *)self containerView];
      topAnchor2 = [containerView5 topAnchor];
      v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v43[2] = v17;
      blurView9 = [(HODiscoverModalPresentationController *)self blurView];
      bottomAnchor = [blurView9 bottomAnchor];
      containerView6 = [(HODiscoverModalPresentationController *)self containerView];
      bottomAnchor2 = [containerView6 bottomAnchor];
      v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v43[3] = v22;
      v23 = [NSArray arrayWithObjects:v43 count:4];
      [NSLayoutConstraint activateConstraints:v23];

      blurView10 = [(HODiscoverModalPresentationController *)self blurView];
      contentView = [blurView10 contentView];
      presentedViewController2 = [(HODiscoverModalPresentationController *)self presentedViewController];
      view = [presentedViewController2 view];
      [contentView addSubview:view];

      presentedViewController3 = [(HODiscoverModalPresentationController *)self presentedViewController];
      transitionCoordinator2 = [presentedViewController3 transitionCoordinator];
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_100038458;
      v42[3] = &unk_1000C3D40;
      v42[4] = self;
      [transitionCoordinator2 animateAlongsideTransition:v42 completion:0];
    }
  }
}

- (void)dismissalTransitionWillBegin
{
  presentedViewController = [(HODiscoverModalPresentationController *)self presentedViewController];
  transitionCoordinator = [presentedViewController transitionCoordinator];

  if (transitionCoordinator)
  {
    presentedViewController2 = [(HODiscoverModalPresentationController *)self presentedViewController];
    transitionCoordinator2 = [presentedViewController2 transitionCoordinator];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100038594;
    v7[3] = &unk_1000C3D40;
    v7[4] = self;
    [transitionCoordinator2 animateAlongsideTransition:v7 completion:0];
  }
}

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  if (end)
  {
    blurView = [(HODiscoverModalPresentationController *)self blurView];
    [blurView removeFromSuperview];
  }
}

- (void)handleTap:(id)tap
{
  presentingViewController = [(HODiscoverModalPresentationController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)_setPresenteViewControllerBackToOriginalPosition
{
  presentedViewController = [(HODiscoverModalPresentationController *)self presentedViewController];
  view = [presentedViewController view];
  [view frame];
  v6 = v5;

  if (v6 != 40.0)
  {
    presentedViewController2 = [(HODiscoverModalPresentationController *)self presentedViewController];
    view2 = [presentedViewController2 view];
    [view2 layoutIfNeeded];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100038770;
    v9[3] = &unk_1000C1CF0;
    v9[4] = self;
    [UIView animateWithDuration:0x10000 delay:v9 options:0 animations:0.300000012 completion:0.0];
  }
}

@end