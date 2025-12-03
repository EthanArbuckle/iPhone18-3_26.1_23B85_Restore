@interface SVSCommonNavController
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (void)cancelProxCardDraggingWithCompletion:(id)completion;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)pushViewController:(id)controller transition:(int)transition;
@end

@implementation SVSCommonNavController

- (void)pushViewController:(id)controller transition:(int)transition
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100125A28;
  v6[3] = &unk_1001956E0;
  transitionCopy = transition;
  controllerCopy = controller;
  selfCopy = self;
  v5 = controllerCopy;
  [(SVSCommonNavController *)self cancelProxCardDraggingWithCompletion:v6];
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100125B04;
  v6[3] = &unk_100195780;
  animatedCopy = animated;
  controllerCopy = controller;
  selfCopy = self;
  v5 = controllerCopy;
  [(SVSCommonNavController *)self cancelProxCardDraggingWithCompletion:v6];
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  controllerCopy = controller;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100125C0C;
  v11[3] = &unk_100195758;
  animatedCopy = animated;
  selfCopy = self;
  completionCopy = completion;
  v12 = controllerCopy;
  v9 = completionCopy;
  v10 = controllerCopy;
  [(SVSCommonNavController *)self cancelProxCardDraggingWithCompletion:v11];
}

- (void)cancelProxCardDraggingWithCompletion:(id)completion
{
  completionCopy = completion;
  topViewController = [(SVSCommonNavController *)self topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    topViewController2 = [(SVSCommonNavController *)self topViewController];
    v7 = topViewController2;
    if (topViewController2)
    {
      [topViewController2 cancelProxCardDraggingWithCompletion:completionCopy];
    }

    else
    {
      completionCopy[2]();
    }
  }

  else
  {
    completionCopy[2]();
  }
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v9 = [[PopUpPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];

  dimmingView = [(PopUpPresentationController *)v9 dimmingView];
  dimmingView = self->_dimmingView;
  self->_dimmingView = dimmingView;

  return v9;
}

@end