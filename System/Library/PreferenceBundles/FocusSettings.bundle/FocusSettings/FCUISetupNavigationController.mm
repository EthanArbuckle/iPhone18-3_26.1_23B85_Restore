@interface FCUISetupNavigationController
+ (id)setupNavigationControllerForMode:(id)mode;
+ (id)setupNavigationControllerForUnknownModeWithPlaceholderModes:(id)modes allReservedModes:(id)reservedModes;
- (FCUISetupNavigationControllerDelegate)setupDelegate;
- (id)_listController;
- (void)createDefaultModeConfigurationForMode:(id)mode;
- (void)viewDidLoad;
@end

@implementation FCUISetupNavigationController

+ (id)setupNavigationControllerForMode:(id)mode
{
  modeCopy = mode;
  v4 = [FCUISetupNavigationController alloc];
  v5 = [_TtC13FocusSettings47FCUIFocusCustomizationInvitationSwiftController welcomeControllerWithMode:modeCopy];

  v6 = [(FCUISetupNavigationController *)v4 initWithRootViewController:v5];

  return v6;
}

+ (id)setupNavigationControllerForUnknownModeWithPlaceholderModes:(id)modes allReservedModes:(id)reservedModes
{
  reservedModesCopy = reservedModes;
  modesCopy = modes;
  v7 = [FCUISetupNavigationController alloc];
  v8 = [FCUIFocusListWelcomeController welcomeControllerWithPlaceholderModes:modesCopy allReservedModes:reservedModesCopy];

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

- (void)createDefaultModeConfigurationForMode:(id)mode
{
  modeCopy = mode;
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  [WeakRetained setupNavigationController:self createDefaultModeConfigurationForMode:modeCopy];

  [(FCUISetupNavigationController *)self dismissViewControllerAnimated:1 completion:0];
}

- (id)_listController
{
  presentingViewController = [(FCUISetupNavigationController *)self presentingViewController];
  v3 = objc_opt_class();
  v4 = presentingViewController;
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