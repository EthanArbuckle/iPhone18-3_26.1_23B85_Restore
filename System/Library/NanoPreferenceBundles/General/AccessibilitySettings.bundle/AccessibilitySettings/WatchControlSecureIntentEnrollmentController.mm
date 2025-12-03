@interface WatchControlSecureIntentEnrollmentController
- (void)_continueEnrollment;
- (void)connectedDevicesDidChange:(id)change;
- (void)didReceiveIncomingData:(id)data;
- (void)viewDidLoad;
@end

@implementation WatchControlSecureIntentEnrollmentController

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = WatchControlSecureIntentEnrollmentController;
  [(OBNavigationController *)&v21 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D37698]);
  v4 = settingsLocString(@"SIDE_BUTTON_ALERT_TITLE", @"AccessibilitySettings-watchcontrol");
  v5 = settingsLocString(@"SIDE_BUTTON_ALERT_MESSAGE", @"AccessibilitySettings-watchcontrol");
  v6 = [v3 initWithTitle:v4 detailText:v5 icon:0];
  welcomeController = self->_welcomeController;
  self->_welcomeController = v6;

  boldButton = [MEMORY[0x277D37618] boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = boldButton;

  v10 = self->_continueButton;
  v11 = settingsLocString(@"SIDE_BUTTON_ALERT_BUTTON_CONTINUE", @"AccessibilitySettings-watchcontrol");
  [(OBTrayButton *)v10 setTitle:v11 forState:0];

  [(OBTrayButton *)self->_continueButton addTarget:self action:sel__continueEnrollment forEvents:64];
  buttonTray = [(OBWelcomeController *)self->_welcomeController buttonTray];
  [buttonTray addButton:self->_continueButton];

  v13 = [MEMORY[0x277D37690] buttonWithType:1];
  notNowButton = self->_notNowButton;
  self->_notNowButton = v13;

  v15 = self->_notNowButton;
  v16 = settingsLocString(@"SIDE_BUTTON_ALERT_BUTTON_CANCEL", @"AccessibilitySettings-watchcontrol");
  [(OBTrayButton *)v15 setTitle:v16 forState:0];

  [(OBTrayButton *)self->_notNowButton addTarget:self action:sel__cancelEnrollment forEvents:64];
  buttonTray2 = [(OBWelcomeController *)self->_welcomeController buttonTray];
  [buttonTray2 addButton:self->_notNowButton];

  v18 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelEnrollment];
  navigationItem = [(OBWelcomeController *)self->_welcomeController navigationItem];
  [navigationItem setLeftBarButtonItem:v18];

  [(OBNavigationController *)self pushViewController:self->_welcomeController animated:1];
  mEMORY[0x277CE6A88] = [MEMORY[0x277CE6A88] sharedInstance];
  [mEMORY[0x277CE6A88] registerForIncomingData:self];
}

- (void)_continueEnrollment
{
  [AccessibilityBridgeBaseController setGizmoAccessibilityPref:MEMORY[0x277CBEC38] forKey:@"WatchControlRequestEnrollmentAlert"];
  v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v5];
  navigationItem = [(OBWelcomeController *)self->_welcomeController navigationItem];
  [navigationItem setRightBarButtonItem:v3];

  [v5 startAnimating];
  [(OBTrayButton *)self->_continueButton setEnabled:0];
  [(OBTrayButton *)self->_notNowButton setEnabled:0];
  self->_didStartEnrollment = 1;
}

uint64_t __65__WatchControlSecureIntentEnrollmentController__cancelEnrollment__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1504] == 1)
  {
    v3 = [MEMORY[0x277CE6A88] sharedInstance];
    v4 = [v3 publishMessage:&unk_284E7E7B0 priority:2 requestingResponse:0];

    v2 = *(a1 + 32);
  }

  return [v2 _dismissEnrollment];
}

uint64_t __66__WatchControlSecureIntentEnrollmentController__dismissEnrollment__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CE6A88] sharedInstance];
  [v2 deregisterForIncomingData:*(a1 + 32)];

  v3 = *(a1 + 32);

  return [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)didReceiveIncomingData:(id)data
{
  v6 = [data objectForKeyedSubscript:*MEMORY[0x277CE6A78]];
  v4 = [v6 objectForKeyedSubscript:@"ASTDoubleClickAlertDismissed"];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    [(WatchControlSecureIntentEnrollmentController *)self _dismissEnrollment];
  }
}

- (void)connectedDevicesDidChange:(id)change
{
  if (![change count])
  {

    [(WatchControlSecureIntentEnrollmentController *)self _cancelEnrollment];
  }
}

@end