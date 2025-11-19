@interface SVSBaseViewController
- (SVSBaseViewController)initWithMainController:(id)a3;
- (void)cancelProxCardDraggingWithCompletion:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
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

- (void)viewDidAppear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = SVSBaseViewController;
  [(SVSBaseViewController *)&v12 viewDidAppear:a3];
  v4 = [(SVSBaseViewController *)self navigationController];
  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    objc_initWeak(&location, self);
    [(SVSCardContainerView *)self->_containerView setNeedsLayout];
    [(SVSCardContainerView *)self->_containerView layoutIfNeeded];
    containerView = self->_containerView;
    v7 = [v5 dimmingView];
    bottomMarginConstraint = self->_bottomMarginConstraint;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001258A4;
    v9[3] = &unk_100195730;
    objc_copyWeak(&v10, &location);
    [(SVSCardContainerView *)containerView activateWithDimmingView:v7 bottomMarginConstraint:bottomMarginConstraint dismissHandler:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SVSBaseViewController;
  [(SVSBaseViewController *)&v5 viewWillAppear:a3];
  v4 = [(SVSBaseViewController *)self navigationController];
  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [(SVSBaseViewController *)self setOverrideUserInterfaceStyle:1];
  }
}

- (void)cancelProxCardDraggingWithCompletion:(id)a3
{
  containerView = self->_containerView;
  if (containerView)
  {
    [(SVSCardContainerView *)containerView cancelProxCardDraggingWithCompletion:a3];
  }

  else
  {
    (*(a3 + 2))(a3);
  }
}

- (SVSBaseViewController)initWithMainController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SVSBaseViewController;
  v5 = [(SVSBaseViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(SVSBaseViewController *)v5 setMainController:v4];
  }

  return v6;
}

@end