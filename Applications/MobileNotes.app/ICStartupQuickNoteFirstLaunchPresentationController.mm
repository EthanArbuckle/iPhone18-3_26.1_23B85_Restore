@interface ICStartupQuickNoteFirstLaunchPresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (ICStartupQuickNoteFirstLaunchPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (void)animateTransition:(id)transition;
- (void)containerViewWillLayoutSubviews;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionWillBegin;
@end

@implementation ICStartupQuickNoteFirstLaunchPresentationController

- (ICStartupQuickNoteFirstLaunchPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  v10.receiver = self;
  v10.super_class = ICStartupQuickNoteFirstLaunchPresentationController;
  v4 = [(ICStartupQuickNoteFirstLaunchPresentationController *)&v10 initWithPresentedViewController:controller presentingViewController:viewController];
  if (v4)
  {
    v5 = objc_alloc_init(UIView);
    [(ICStartupQuickNoteFirstLaunchPresentationController *)v4 setDimmingView:v5];

    v6 = +[UIColor blackColor];
    v7 = [v6 colorWithAlphaComponent:0.4];
    dimmingView = [(ICStartupQuickNoteFirstLaunchPresentationController *)v4 dimmingView];
    [dimmingView setBackgroundColor:v7];
  }

  return v4;
}

- (CGRect)frameOfPresentedViewInContainerView
{
  containerView = [(ICStartupQuickNoteFirstLaunchPresentationController *)self containerView];
  [containerView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  presentedView = [(ICStartupQuickNoteFirstLaunchPresentationController *)self presentedView];
  LODWORD(v13) = 1148846080;
  LODWORD(v14) = 1112014848;
  [presentedView systemLayoutSizeFittingSize:270.0 withHorizontalFittingPriority:UILayoutFittingCompressedSize.height verticalFittingPriority:{v13, v14}];
  v16 = v15;
  v18 = v17;

  v24.origin.x = v5;
  v24.origin.y = v7;
  v24.size.width = v9;
  v24.size.height = v11;
  v19 = CGRectGetMidX(v24) - v16 * 0.5;
  v25.origin.x = v5;
  v25.origin.y = v7;
  v25.size.width = v9;
  v25.size.height = v11;
  v20 = CGRectGetMidY(v25) - v18 * 0.5;
  v21 = v19;
  v22 = v16;
  v23 = v18;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v20;
  result.origin.x = v21;
  return result;
}

- (void)presentationTransitionWillBegin
{
  v9.receiver = self;
  v9.super_class = ICStartupQuickNoteFirstLaunchPresentationController;
  [(ICStartupQuickNoteFirstLaunchPresentationController *)&v9 presentationTransitionWillBegin];
  containerView = [(ICStartupQuickNoteFirstLaunchPresentationController *)self containerView];
  dimmingView = [(ICStartupQuickNoteFirstLaunchPresentationController *)self dimmingView];
  [containerView addSubview:dimmingView];

  dimmingView2 = [(ICStartupQuickNoteFirstLaunchPresentationController *)self dimmingView];
  [dimmingView2 setAlpha:0.0];

  presentedViewController = [(ICStartupQuickNoteFirstLaunchPresentationController *)self presentedViewController];
  transitionCoordinator = [presentedViewController transitionCoordinator];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010B0F0;
  v8[3] = &unk_100645E08;
  v8[4] = self;
  [transitionCoordinator animateAlongsideTransition:v8 completion:0];
}

- (void)containerViewWillLayoutSubviews
{
  containerView = [(ICStartupQuickNoteFirstLaunchPresentationController *)self containerView];
  [containerView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  dimmingView = [(ICStartupQuickNoteFirstLaunchPresentationController *)self dimmingView];
  [dimmingView setFrame:{v5, v7, v9, v11}];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10010B220;
  v13[3] = &unk_100645E30;
  v13[4] = self;
  [UIView animateWithDuration:v13 animations:0.0];
}

- (void)dismissalTransitionWillBegin
{
  v6.receiver = self;
  v6.super_class = ICStartupQuickNoteFirstLaunchPresentationController;
  [(ICStartupQuickNoteFirstLaunchPresentationController *)&v6 dismissalTransitionWillBegin];
  presentedViewController = [(ICStartupQuickNoteFirstLaunchPresentationController *)self presentedViewController];
  transitionCoordinator = [presentedViewController transitionCoordinator];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10010B36C;
  v5[3] = &unk_100645E08;
  v5[4] = self;
  [transitionCoordinator animateAlongsideTransition:v5 completion:0];
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v5 = [transitionCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
  v6 = [transitionCopy viewControllerForKey:UITransitionContextToViewControllerKey];
  view = [v6 view];
  containerView = [transitionCopy containerView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v10 = v5;
  if (isKindOfClass)
  {
    [containerView addSubview:view];
    v10 = v6;
  }

  v11 = v10;
  view2 = [v11 view];
  [transitionCopy finalFrameForViewController:v11];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [view2 setFrame:{v14, v16, v18, v20}];
  if (isKindOfClass)
  {
    [view2 setAlpha:0.0];
    [(ICStartupQuickNoteFirstLaunchPresentationController *)self transitionDuration:transitionCopy];
    v22 = v21;
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_10010B6C0;
    v44[3] = &unk_100645E30;
    v23 = &v45;
    v45 = view2;
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_10010B6CC;
    v42[3] = &unk_1006469F0;
    v24 = &v43;
    v43 = transitionCopy;
    v25 = transitionCopy;
    v26 = view2;
    v27 = v44;
    v28 = v42;
    v29 = v22;
    v30 = 4;
  }

  else
  {
    [(ICStartupQuickNoteFirstLaunchPresentationController *)self transitionDuration:transitionCopy];
    v32 = v31;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10010B6D8;
    v40[3] = &unk_100645E30;
    v23 = &v41;
    v41 = view2;
    v35 = _NSConcreteStackBlock;
    v36 = 3221225472;
    v37 = sub_10010B718;
    v38 = &unk_1006469F0;
    v24 = &v39;
    v39 = transitionCopy;
    v33 = transitionCopy;
    v34 = view2;
    v27 = v40;
    v28 = &v35;
    v29 = v32;
    v30 = 65540;
  }

  [UIView animateWithDuration:v30 delay:v27 options:v28 animations:v29 completion:0.0, v35, v36, v37, v38];
}

@end