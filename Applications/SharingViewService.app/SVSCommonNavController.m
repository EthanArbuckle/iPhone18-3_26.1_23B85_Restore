@interface SVSCommonNavController
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (void)cancelProxCardDraggingWithCompletion:(id)a3;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)pushViewController:(id)a3 transition:(int)a4;
@end

@implementation SVSCommonNavController

- (void)pushViewController:(id)a3 transition:(int)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100125A28;
  v6[3] = &unk_1001956E0;
  v9 = a4;
  v7 = a3;
  v8 = self;
  v5 = v7;
  [(SVSCommonNavController *)self cancelProxCardDraggingWithCompletion:v6];
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100125B04;
  v6[3] = &unk_100195780;
  v9 = a4;
  v7 = a3;
  v8 = self;
  v5 = v7;
  [(SVSCommonNavController *)self cancelProxCardDraggingWithCompletion:v6];
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100125C0C;
  v11[3] = &unk_100195758;
  v15 = a4;
  v13 = self;
  v14 = a5;
  v12 = v8;
  v9 = v14;
  v10 = v8;
  [(SVSCommonNavController *)self cancelProxCardDraggingWithCompletion:v11];
}

- (void)cancelProxCardDraggingWithCompletion:(id)a3
{
  v8 = a3;
  v4 = [(SVSCommonNavController *)self topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(SVSCommonNavController *)self topViewController];
    v7 = v6;
    if (v6)
    {
      [v6 cancelProxCardDraggingWithCompletion:v8];
    }

    else
    {
      v8[2]();
    }
  }

  else
  {
    v8[2]();
  }
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[PopUpPresentationController alloc] initWithPresentedViewController:v8 presentingViewController:v7];

  v10 = [(PopUpPresentationController *)v9 dimmingView];
  dimmingView = self->_dimmingView;
  self->_dimmingView = v10;

  return v9;
}

@end