@interface TSDiOSModalPresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size;
- (TSDiOSModalPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)end;
- (void)presentationTransitionWillBegin;
@end

@implementation TSDiOSModalPresentationController

- (TSDiOSModalPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  v9.receiver = self;
  v9.super_class = TSDiOSModalPresentationController;
  v4 = [(TSDiOSModalPresentationController *)&v9 initWithPresentedViewController:controller presentingViewController:viewController];
  if (v4)
  {
    v5 = objc_opt_new();
    dimmingView = v4->_dimmingView;
    v4->_dimmingView = v5;

    v7 = [UIColor colorWithWhite:0.0 alpha:0.4];
    [(UIView *)v4->_dimmingView setBackgroundColor:v7];

    [(UIView *)v4->_dimmingView setAutoresizingMask:18];
  }

  return v4;
}

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  containerCopy = container;
  presentedViewController = [(TSDiOSModalPresentationController *)self presentedViewController];

  if (presentedViewController == containerCopy)
  {
    [containerCopy preferredContentSize];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = TSDiOSModalPresentationController;
    [(TSDiOSModalPresentationController *)&v15 sizeForChildContentContainer:containerCopy withParentContainerSize:width, height];
  }

  v11 = v9;
  v12 = v10;

  v13 = v11;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGRect)frameOfPresentedViewInContainerView
{
  containerView = [(TSDiOSModalPresentationController *)self containerView];
  [containerView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  presentedViewController = [(TSDiOSModalPresentationController *)self presentedViewController];
  [presentedViewController preferredContentSize];
  v13 = sub_10011ECB4();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = sub_1001206EC(v13, v15, v17, v19, v5, v7, v9, v11);
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)presentationTransitionWillBegin
{
  containerView = [(TSDiOSModalPresentationController *)self containerView];
  presentedView = [(TSDiOSModalPresentationController *)self presentedView];
  [containerView bounds];
  [(UIView *)self->_dimmingView setFrame:?];
  [containerView addSubview:self->_dimmingView];
  presentedViewController = [(TSDiOSModalPresentationController *)self presentedViewController];
  parentViewController = [presentedViewController parentViewController];

  if (parentViewController)
  {
    [presentedViewController willMoveToParentViewController:0];
    [presentedView removeFromSuperview];
    [presentedViewController removeFromParentViewController];
  }

  [presentedView setTranslatesAutoresizingMaskIntoConstraints:1];
  [presentedView setAutoresizingMask:45];
  [containerView addSubview:presentedView];
  transitionCoordinator = [presentedViewController transitionCoordinator];
  if (transitionCoordinator)
  {
    [(UIView *)self->_dimmingView setAlpha:0.0];
    transitionCoordinator2 = [presentedViewController transitionCoordinator];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1004A4CC4;
    v9[3] = &unk_101848DD8;
    v9[4] = self;
    [transitionCoordinator2 animateAlongsideTransition:v9 completion:0];
  }
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  if (!end)
  {
    [(UIView *)self->_dimmingView removeFromSuperview];
  }
}

- (void)dismissalTransitionWillBegin
{
  presentedViewController = [(TSDiOSModalPresentationController *)self presentedViewController];
  transitionCoordinator = [presentedViewController transitionCoordinator];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1004A4D9C;
  v5[3] = &unk_101848DD8;
  v5[4] = self;
  [transitionCoordinator animateAlongsideTransition:v5 completion:0];
}

@end