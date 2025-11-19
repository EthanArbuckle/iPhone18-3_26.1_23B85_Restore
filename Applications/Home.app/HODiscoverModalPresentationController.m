@interface HODiscoverModalPresentationController
- (BOOL)shouldAllowViewTranslation;
- (CGRect)frameOfPresentedViewInContainerView;
- (void)_setPresenteViewControllerBackToOriginalPosition;
- (void)containerViewWillLayoutSubviews;
- (void)dismissalPanTranslationChanged:(double)a3;
- (void)dismissalPanTranslationEnded;
- (void)dismissalTransitionDidEnd:(BOOL)a3;
- (void)dismissalTransitionWillBegin;
- (void)handleTap:(id)a3;
- (void)presentationTransitionWillBegin;
@end

@implementation HODiscoverModalPresentationController

- (BOOL)shouldAllowViewTranslation
{
  v2 = [(HODiscoverModalPresentationController *)self presentedViewController];
  v3 = [v2 view];
  [v3 frame];
  v5 = v4 > 40.0;

  return v5;
}

- (void)dismissalPanTranslationChanged:(double)a3
{
  v4 = a3 + 40.0;
  v5 = [(HODiscoverModalPresentationController *)self presentedViewController];
  v6 = [v5 view];
  [v6 frame];
  v8 = v7;
  v10 = v9;

  v11 = [(HODiscoverModalPresentationController *)self presentedViewController];
  v12 = [v11 view];
  [v12 frame];
  v14 = v13;

  v16 = [(HODiscoverModalPresentationController *)self presentedViewController];
  v15 = [v16 view];
  [v15 setFrame:{v14, fmax(v4, 40.0), v8, v10}];
}

- (void)dismissalPanTranslationEnded
{
  v3 = [(HODiscoverModalPresentationController *)self presentedViewController];
  v4 = [v3 view];
  [v4 bounds];
  v6 = v5 * 0.75;

  v7 = [(HODiscoverModalPresentationController *)self presentedViewController];
  v8 = [v7 view];
  [v8 frame];
  v10 = v9;

  v11 = [(HODiscoverModalPresentationController *)self presentedViewController];
  v12 = [v11 view];
  [v12 bounds];
  v14 = v13 - v10;

  if (v14 >= v6)
  {

    [(HODiscoverModalPresentationController *)self _setPresenteViewControllerBackToOriginalPosition];
  }

  else
  {
    v15 = [(HODiscoverModalPresentationController *)self presentedViewController];
    [v15 dismissViewControllerAnimated:1 completion:0];
  }
}

- (CGRect)frameOfPresentedViewInContainerView
{
  v3 = [(HODiscoverModalPresentationController *)self containerView];

  if (v3)
  {
    v4 = [(HODiscoverModalPresentationController *)self containerView];
    [v4 bounds];
    v6 = v5;
    v7 = [(HODiscoverModalPresentationController *)self containerView];
    [v7 bounds];
    v9 = v8;
    v10 = fminf(v6, v9);

    width = v10 + -120.0;
    v12 = [(HODiscoverModalPresentationController *)self containerView];
    [v12 bounds];
    x = (v13 - width) * 0.5;

    v15 = [(HODiscoverModalPresentationController *)self containerView];
    [v15 bounds];
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
  v3 = [(HODiscoverModalPresentationController *)self presentedView];

  if (v3)
  {
    [(HODiscoverModalPresentationController *)self frameOfPresentedViewInContainerView];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [(HODiscoverModalPresentationController *)self presentedView];
    [v12 setFrame:{v5, v7, v9, v11}];
  }
}

- (void)presentationTransitionWillBegin
{
  v3 = [(HODiscoverModalPresentationController *)self containerView];
  if (v3)
  {
    v4 = v3;
    v5 = [(HODiscoverModalPresentationController *)self presentedViewController];
    v6 = [v5 transitionCoordinator];

    if (v6)
    {
      v7 = [(HODiscoverModalPresentationController *)self blurView];

      if (!v7)
      {
        v8 = [[UIVisualEffectView alloc] initWithEffect:0];
        [(HODiscoverModalPresentationController *)self setBlurView:v8];

        v9 = [(HODiscoverModalPresentationController *)self blurView];
        [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

        v10 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTap:"];
        v11 = [(HODiscoverModalPresentationController *)self blurView];
        [v11 addGestureRecognizer:v10];
      }

      v12 = [(HODiscoverModalPresentationController *)self blurView];
      [v12 setEffect:0];

      v13 = [(HODiscoverModalPresentationController *)self containerView];
      v14 = [(HODiscoverModalPresentationController *)self blurView];
      [v13 addSubview:v14];

      v41 = [(HODiscoverModalPresentationController *)self blurView];
      v39 = [v41 leadingAnchor];
      v40 = [(HODiscoverModalPresentationController *)self containerView];
      v38 = [v40 leadingAnchor];
      v37 = [v39 constraintEqualToAnchor:v38];
      v43[0] = v37;
      v36 = [(HODiscoverModalPresentationController *)self blurView];
      v34 = [v36 trailingAnchor];
      v35 = [(HODiscoverModalPresentationController *)self containerView];
      v33 = [v35 trailingAnchor];
      v32 = [v34 constraintEqualToAnchor:v33];
      v43[1] = v32;
      v31 = [(HODiscoverModalPresentationController *)self blurView];
      v30 = [v31 topAnchor];
      v15 = [(HODiscoverModalPresentationController *)self containerView];
      v16 = [v15 topAnchor];
      v17 = [v30 constraintEqualToAnchor:v16];
      v43[2] = v17;
      v18 = [(HODiscoverModalPresentationController *)self blurView];
      v19 = [v18 bottomAnchor];
      v20 = [(HODiscoverModalPresentationController *)self containerView];
      v21 = [v20 bottomAnchor];
      v22 = [v19 constraintEqualToAnchor:v21];
      v43[3] = v22;
      v23 = [NSArray arrayWithObjects:v43 count:4];
      [NSLayoutConstraint activateConstraints:v23];

      v24 = [(HODiscoverModalPresentationController *)self blurView];
      v25 = [v24 contentView];
      v26 = [(HODiscoverModalPresentationController *)self presentedViewController];
      v27 = [v26 view];
      [v25 addSubview:v27];

      v28 = [(HODiscoverModalPresentationController *)self presentedViewController];
      v29 = [v28 transitionCoordinator];
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_100038458;
      v42[3] = &unk_1000C3D40;
      v42[4] = self;
      [v29 animateAlongsideTransition:v42 completion:0];
    }
  }
}

- (void)dismissalTransitionWillBegin
{
  v3 = [(HODiscoverModalPresentationController *)self presentedViewController];
  v4 = [v3 transitionCoordinator];

  if (v4)
  {
    v5 = [(HODiscoverModalPresentationController *)self presentedViewController];
    v6 = [v5 transitionCoordinator];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100038594;
    v7[3] = &unk_1000C3D40;
    v7[4] = self;
    [v6 animateAlongsideTransition:v7 completion:0];
  }
}

- (void)dismissalTransitionDidEnd:(BOOL)a3
{
  if (a3)
  {
    v3 = [(HODiscoverModalPresentationController *)self blurView];
    [v3 removeFromSuperview];
  }
}

- (void)handleTap:(id)a3
{
  v3 = [(HODiscoverModalPresentationController *)self presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)_setPresenteViewControllerBackToOriginalPosition
{
  v3 = [(HODiscoverModalPresentationController *)self presentedViewController];
  v4 = [v3 view];
  [v4 frame];
  v6 = v5;

  if (v6 != 40.0)
  {
    v7 = [(HODiscoverModalPresentationController *)self presentedViewController];
    v8 = [v7 view];
    [v8 layoutIfNeeded];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100038770;
    v9[3] = &unk_1000C1CF0;
    v9[4] = self;
    [UIView animateWithDuration:0x10000 delay:v9 options:0 animations:0.300000012 completion:0.0];
  }
}

@end