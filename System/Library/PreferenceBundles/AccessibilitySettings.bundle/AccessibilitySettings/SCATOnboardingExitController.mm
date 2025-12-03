@interface SCATOnboardingExitController
- (SCATOnboardingExitController)initWithCompletion:(id)completion;
- (void)_didTapExitOnboarding;
- (void)_didTapTurnOnSwitchControl;
- (void)viewDidLoad;
@end

@implementation SCATOnboardingExitController

- (SCATOnboardingExitController)initWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = AXParameterizedLocalizedString();
  v6 = AXParameterizedLocalizedString();
  v10.receiver = self;
  v10.super_class = SCATOnboardingExitController;
  v7 = [(SCATOnboardingExitController *)&v10 initWithTitle:v5 detailText:v6 icon:0];
  v8 = v7;
  if (v7)
  {
    [(SCATOnboardingExitController *)v7 setCompletionHandler:completionCopy];
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
  buttonTray = [(SCATOnboardingExitController *)self buttonTray];
  [buttonTray addButton:v3];

  v6 = +[OBLinkTrayButton linkButton];
  v7 = AXParameterizedLocalizedString();
  [v6 setTitle:v7 forState:0];

  [v6 addTarget:self action:"_didTapCancelButton" forControlEvents:0x2000];
  buttonTray2 = [(SCATOnboardingExitController *)self buttonTray];
  [buttonTray2 addButton:v6];
}

- (void)_didTapTurnOnSwitchControl
{
  buttonTray = [(SCATOnboardingExitController *)self buttonTray];
  [buttonTray removeAllButtons];

  v8 = +[OBBoldTrayButton boldButton];
  v4 = AXParameterizedLocalizedString();
  [v8 setTitle:v4 forState:0];

  [v8 addTarget:self action:"_didTapExitOnboarding" forControlEvents:0x2000];
  buttonTray2 = [(SCATOnboardingExitController *)self buttonTray];
  [buttonTray2 addButton:v8];

  navigationItem = [(SCATOnboardingExitController *)self navigationItem];
  [navigationItem setHidesBackButton:1];

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