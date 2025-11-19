@interface TSDiOSModalPresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4;
- (TSDiOSModalPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)a3;
- (void)presentationTransitionWillBegin;
@end

@implementation TSDiOSModalPresentationController

- (TSDiOSModalPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v9.receiver = self;
  v9.super_class = TSDiOSModalPresentationController;
  v4 = [(TSDiOSModalPresentationController *)&v9 initWithPresentedViewController:a3 presentingViewController:a4];
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

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = [(TSDiOSModalPresentationController *)self presentedViewController];

  if (v8 == v7)
  {
    [v7 preferredContentSize];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = TSDiOSModalPresentationController;
    [(TSDiOSModalPresentationController *)&v15 sizeForChildContentContainer:v7 withParentContainerSize:width, height];
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
  v3 = [(TSDiOSModalPresentationController *)self containerView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(TSDiOSModalPresentationController *)self presentedViewController];
  [v12 preferredContentSize];
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
  v3 = [(TSDiOSModalPresentationController *)self containerView];
  v4 = [(TSDiOSModalPresentationController *)self presentedView];
  [v3 bounds];
  [(UIView *)self->_dimmingView setFrame:?];
  [v3 addSubview:self->_dimmingView];
  v5 = [(TSDiOSModalPresentationController *)self presentedViewController];
  v6 = [v5 parentViewController];

  if (v6)
  {
    [v5 willMoveToParentViewController:0];
    [v4 removeFromSuperview];
    [v5 removeFromParentViewController];
  }

  [v4 setTranslatesAutoresizingMaskIntoConstraints:1];
  [v4 setAutoresizingMask:45];
  [v3 addSubview:v4];
  v7 = [v5 transitionCoordinator];
  if (v7)
  {
    [(UIView *)self->_dimmingView setAlpha:0.0];
    v8 = [v5 transitionCoordinator];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1004A4CC4;
    v9[3] = &unk_101848DD8;
    v9[4] = self;
    [v8 animateAlongsideTransition:v9 completion:0];
  }
}

- (void)presentationTransitionDidEnd:(BOOL)a3
{
  if (!a3)
  {
    [(UIView *)self->_dimmingView removeFromSuperview];
  }
}

- (void)dismissalTransitionWillBegin
{
  v3 = [(TSDiOSModalPresentationController *)self presentedViewController];
  v4 = [v3 transitionCoordinator];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1004A4D9C;
  v5[3] = &unk_101848DD8;
  v5[4] = self;
  [v4 animateAlongsideTransition:v5 completion:0];
}

@end