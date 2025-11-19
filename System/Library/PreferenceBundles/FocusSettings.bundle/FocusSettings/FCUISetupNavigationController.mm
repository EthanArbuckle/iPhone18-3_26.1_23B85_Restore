@interface FCUISetupNavigationController
+ (id)setupNavigationControllerForMode:(id)a3;
+ (id)setupNavigationControllerForUnknownModeWithPlaceholderModes:(id)a3 allReservedModes:(id)a4;
- (FCUISetupNavigationControllerDelegate)setupDelegate;
- (id)_listController;
- (void)createDefaultModeConfigurationForMode:(id)a3;
- (void)viewDidLoad;
@end

@implementation FCUISetupNavigationController

+ (id)setupNavigationControllerForMode:(id)a3
{
  v3 = a3;
  v4 = [FCUISetupNavigationController alloc];
  v5 = [_TtC13FocusSettings47FCUIFocusCustomizationInvitationSwiftController welcomeControllerWithMode:v3];

  v6 = [(FCUISetupNavigationController *)v4 initWithRootViewController:v5];

  return v6;
}

+ (id)setupNavigationControllerForUnknownModeWithPlaceholderModes:(id)a3 allReservedModes:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [FCUISetupNavigationController alloc];
  v8 = [FCUIFocusListWelcomeController welcomeControllerWithPlaceholderModes:v6 allReservedModes:v5];

  v9 = [(FCUISetupNavigationController *)v7 initWithRootViewController:v8];

  return v9;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = FCUISetupNavigationController;
  [(FCUISetupNavigationController *)&v3 viewDidLoad];
  [(FCUISetupNavigationController *)self setModalPresentationStyle:2];
}

- (void)createDefaultModeConfigurationForMode:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  [WeakRetained setupNavigationController:self createDefaultModeConfigurationForMode:v4];

  [(FCUISetupNavigationController *)self dismissViewControllerAnimated:1 completion:0];
}

- (id)_listController
{
  v2 = [(FCUISetupNavigationController *)self presentingViewController];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (FCUISetupNavigationControllerDelegate)setupDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);

  return WeakRetained;
}

@end