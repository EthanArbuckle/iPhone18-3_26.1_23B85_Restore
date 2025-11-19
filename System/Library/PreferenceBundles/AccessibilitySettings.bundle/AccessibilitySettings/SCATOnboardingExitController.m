@interface SCATOnboardingExitController
- (SCATOnboardingExitController)initWithCompletion:(id)a3;
- (void)_didTapExitOnboarding;
- (void)_didTapTurnOnSwitchControl;
- (void)viewDidLoad;
@end

@implementation SCATOnboardingExitController

- (SCATOnboardingExitController)initWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AXParameterizedLocalizedString();
  v6 = AXParameterizedLocalizedString();
  v10.receiver = self;
  v10.super_class = SCATOnboardingExitController;
  v7 = [(SCATOnboardingExitController *)&v10 initWithTitle:v5 detailText:v6 icon:0];
  v8 = v7;
  if (v7)
  {
    [(SCATOnboardingExitController *)v7 setCompletionHandler:v4];
  }

  return v8;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = SCATOnboardingExitController;
  [(SCATOnboardingExitController *)&v9 viewDidLoad];
  v3 = +[OBBoldTrayButton boldButton];
  v4 = AXParameterizedLocalizedString();
  [v3 setTitle:v4 forState:0];

  [v3 addTarget:self action:"_didTapTurnOnSwitchControl" forControlEvents:0x2000];
  v5 = [(SCATOnboardingExitController *)self buttonTray];
  [v5 addButton:v3];

  v6 = +[OBLinkTrayButton linkButton];
  v7 = AXParameterizedLocalizedString();
  [v6 setTitle:v7 forState:0];

  [v6 addTarget:self action:"_didTapCancelButton" forControlEvents:0x2000];
  v8 = [(SCATOnboardingExitController *)self buttonTray];
  [v8 addButton:v6];
}

- (void)_didTapTurnOnSwitchControl
{
  v3 = [(SCATOnboardingExitController *)self buttonTray];
  [v3 removeAllButtons];

  v8 = +[OBBoldTrayButton boldButton];
  v4 = AXParameterizedLocalizedString();
  [v8 setTitle:v4 forState:0];

  [v8 addTarget:self action:"_didTapExitOnboarding" forControlEvents:0x2000];
  v5 = [(SCATOnboardingExitController *)self buttonTray];
  [v5 addButton:v8];

  v6 = [(SCATOnboardingExitController *)self navigationItem];
  [v6 setHidesBackButton:1];

  v7 = +[SCATOnboardingManager sharedInstance];
  [v7 setSwitchControlEnabled:1];
}

- (void)_didTapExitOnboarding
{
  v3 = +[SCATOnboardingManager sharedInstance];
  [v3 setSwitchControlEnabled:0];

  [(SCATOnboardingExitController *)self dismissViewControllerAnimated:1 completion:0];
}

@end