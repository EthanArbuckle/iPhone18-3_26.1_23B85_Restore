@interface ClarityOnboardingNavigationWrapperController
- (ClarityOnboardingNavigationWrapperController)initWithController:(id)a3 shouldPresentWithAnimation:(BOOL)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)_updateForController;
- (void)setController:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ClarityOnboardingNavigationWrapperController

- (ClarityOnboardingNavigationWrapperController)initWithController:(id)a3 shouldPresentWithAnimation:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = ClarityOnboardingNavigationWrapperController;
  v8 = [(ClarityOnboardingNavigationWrapperController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_controller, a3);
    v9->_shouldPresentWithAnimation = a4;
    [(ClarityOnboardingNavigationWrapperController *)v9 _updateForController];
  }

  return v9;
}

- (void)setController:(id)a3
{
  v5 = a3;
  if (self->_controller != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_controller, a3);
    [(ClarityOnboardingNavigationWrapperController *)self _updateForController];
    v5 = v6;
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

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ClarityOnboardingNavigationWrapperController;
  [(ClarityOnboardingNavigationWrapperController *)&v5 viewWillAppear:a3];
  setUpNavigationController = self->_setUpNavigationController;
  if (setUpNavigationController)
  {
    [(ClarityOnboardingNavigationWrapperController *)self presentViewController:setUpNavigationController animated:[(ClarityOnboardingNavigationWrapperController *)self shouldPresentWithAnimation] completion:0];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

@end