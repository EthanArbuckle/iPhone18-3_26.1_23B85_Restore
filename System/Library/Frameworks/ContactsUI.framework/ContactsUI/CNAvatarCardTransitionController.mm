@interface CNAvatarCardTransitionController
+ (id)sharedController;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
@end

@implementation CNAvatarCardTransitionController

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  sourceViewControllerCopy = sourceViewController;
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v10 = [[CNAvatarCardPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];

  [(CNAvatarCardPresentationController *)v10 setSourceViewController:sourceViewControllerCopy];

  return v10;
}

- (id)animationControllerForDismissedController:(id)controller
{
  presentationController = [controller presentationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    transition = [presentationController transition];
    [transition setReversed:1];
  }

  else
  {
    transition = 0;
  }

  return transition;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  sourceControllerCopy = sourceController;
  presentationController = [controller presentationController];
  [presentationController setSourceViewController:sourceControllerCopy];

  transition = [presentationController transition];
  [transition setReversed:0];

  return transition;
}

+ (id)sharedController
{
  if (sharedController_onceToken != -1)
  {
    dispatch_once(&sharedController_onceToken, &__block_literal_global_66386);
  }

  v3 = sharedController_sharedController;

  return v3;
}

uint64_t __52__CNAvatarCardTransitionController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(CNAvatarCardTransitionController);
  v1 = sharedController_sharedController;
  sharedController_sharedController = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end