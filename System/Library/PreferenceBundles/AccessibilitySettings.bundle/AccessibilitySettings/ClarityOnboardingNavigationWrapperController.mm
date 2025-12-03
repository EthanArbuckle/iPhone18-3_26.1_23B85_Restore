@interface ClarityOnboardingNavigationWrapperController
- (ClarityOnboardingNavigationWrapperController)initWithController:(id)controller shouldPresentWithAnimation:(BOOL)animation;
- (unint64_t)supportedInterfaceOrientations;
- (void)_updateForController;
- (void)setController:(id)controller;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ClarityOnboardingNavigationWrapperController

- (ClarityOnboardingNavigationWrapperController)initWithController:(id)controller shouldPresentWithAnimation:(BOOL)animation
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = ClarityOnboardingNavigationWrapperController;
  v8 = [(ClarityOnboardingNavigationWrapperController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_controller, controller);
    v9->_shouldPresentWithAnimation = animation;
    [(ClarityOnboardingNavigationWrapperController *)v9 _updateForController];
  }

  return v9;
}

- (void)setController:(id)controller
{
  controllerCopy = controller;
  if (self->_controller != controllerCopy)
  {
    v6 = controllerCopy;
    objc_storeStrong(&self->_controller, controller);
    [(ClarityOnboardingNavigationWrapperController *)self _updateForController];
    controllerCopy = v6;
  }
}

- (void)_updateForController
{
  if (self->_controller)
  {
    v3 = [[OBNavigationController alloc] initWithRootViewController:self->_controller];
    [v3 setModalInPresentation:1];
    [(ClarityOnboardingNavigationWrapperController *)self setSetUpNavigationController:v3];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = ClarityOnboardingNavigationWrapperController;
  [(ClarityOnboardingNavigationWrapperController *)&v5 viewWillAppear:appear];
  setUpNavigationController = self->_setUpNavigationController;
  if (setUpNavigationController)
  {
    [(ClarityOnboardingNavigationWrapperController *)self presentViewController:setUpNavigationController animated:[(ClarityOnboardingNavigationWrapperController *)self shouldPresentWithAnimation] completion:0];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

@end