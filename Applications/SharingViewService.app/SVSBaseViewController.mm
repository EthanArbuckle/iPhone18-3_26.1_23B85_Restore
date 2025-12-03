@interface SVSBaseViewController
- (SVSBaseViewController)initWithMainController:(id)controller;
- (void)cancelProxCardDraggingWithCompletion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SVSBaseViewController

- (void)viewDidLayoutSubviews
{
  if (!self->_didReactivateContainerViewAfterLayingOut)
  {
    self->_didReactivateContainerViewAfterLayingOut = 1;
    [(SVSCardContainerView *)self->_containerView reactivate];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = SVSBaseViewController;
  [(SVSBaseViewController *)&v12 viewDidAppear:appear];
  navigationController = [(SVSBaseViewController *)self navigationController];
  if (!navigationController || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = navigationController;
    objc_initWeak(&location, self);
    [(SVSCardContainerView *)self->_containerView setNeedsLayout];
    [(SVSCardContainerView *)self->_containerView layoutIfNeeded];
    containerView = self->_containerView;
    dimmingView = [v5 dimmingView];
    bottomMarginConstraint = self->_bottomMarginConstraint;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001258A4;
    v9[3] = &unk_100195730;
    objc_copyWeak(&v10, &location);
    [(SVSCardContainerView *)containerView activateWithDimmingView:dimmingView bottomMarginConstraint:bottomMarginConstraint dismissHandler:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SVSBaseViewController;
  [(SVSBaseViewController *)&v5 viewWillAppear:appear];
  navigationController = [(SVSBaseViewController *)self navigationController];
  if (!navigationController || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [(SVSBaseViewController *)self setOverrideUserInterfaceStyle:1];
  }
}

- (void)cancelProxCardDraggingWithCompletion:(id)completion
{
  containerView = self->_containerView;
  if (containerView)
  {
    [(SVSCardContainerView *)containerView cancelProxCardDraggingWithCompletion:completion];
  }

  else
  {
    (*(completion + 2))(completion);
  }
}

- (SVSBaseViewController)initWithMainController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = SVSBaseViewController;
  v5 = [(SVSBaseViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(SVSBaseViewController *)v5 setMainController:controllerCopy];
  }

  return v6;
}

@end