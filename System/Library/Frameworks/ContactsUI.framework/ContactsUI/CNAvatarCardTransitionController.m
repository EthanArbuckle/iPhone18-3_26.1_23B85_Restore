@interface CNAvatarCardTransitionController
+ (id)sharedController;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
@end

@implementation CNAvatarCardTransitionController

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[CNAvatarCardPresentationController alloc] initWithPresentedViewController:v9 presentingViewController:v8];

  [(CNAvatarCardPresentationController *)v10 setSourceViewController:v7];

  return v10;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v3 = [a3 presentationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 transition];
    [v4 setReversed:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v6 = a5;
  v7 = [a3 presentationController];
  [v7 setSourceViewController:v6];

  v8 = [v7 transition];
  [v8 setReversed:0];

  return v8;
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