@interface WatchControlSecureIntentEnrollmentController
- (void)_continueEnrollment;
- (void)connectedDevicesDidChange:(id)a3;
- (void)didReceiveIncomingData:(id)a3;
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

  v8 = [MEMORY[0x277D37618] boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = v8;

  v10 = self->_continueButton;
  v11 = settingsLocString(@"SIDE_BUTTON_ALERT_BUTTON_CONTINUE", @"AccessibilitySettings-watchcontrol");
  [(OBTrayButton *)v10 setTitle:v11 forState:0];

  [(OBTrayButton *)self->_continueButton addTarget:self action:sel__continueEnrollment forEvents:64];
  v12 = [(OBWelcomeController *)self->_welcomeController buttonTray];
  [v12 addButton:self->_continueButton];

  v13 = [MEMORY[0x277D37690] buttonWithType:1];
  notNowButton = self->_notNowButton;
  self->_notNowButton = v13;

  v15 = self->_notNowButton;
  v16 = settingsLocString(@"SIDE_BUTTON_ALERT_BUTTON_CANCEL", @"AccessibilitySettings-watchcontrol");
  [(OBTrayButton *)v15 setTitle:v16 forState:0];

  [(OBTrayButton *)self->_notNowButton addTarget:self action:sel__cancelEnrollment forEvents:64];
  v17 = [(OBWelcomeController *)self->_welcomeController buttonTray];
  [v17 addButton:self->_notNowButton];

  v18 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelEnrollment];
  v19 = [(OBWelcomeController *)self->_welcomeController navigationItem];
  [v19 setLeftBarButtonItem:v18];

  [(OBNavigationController *)self pushViewController:self->_welcomeController animated:1];
  v20 = [MEMORY[0x277CE6A88] sharedInstance];
  [v20 registerForIncomingData:self];
}

- (void)_continueEnrollment
{
  [AccessibilityBridgeBaseController setGizmoAccessibilityPref:MEMORY[0x277CBEC38] forKey:@"WatchControlRequestEnrollmentAlert"];
  v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v5];
  v4 = [(OBWelcomeController *)self->_welcomeController navigationItem];
  [v4 setRightBarButtonItem:v3];

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

- (void)didReceiveIncomingData:(id)a3
{
  v6 = [a3 objectForKeyedSubscript:*MEMORY[0x277CE6A78]];
  v4 = [v6 objectForKeyedSubscript:@"ASTDoubleClickAlertDismissed"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    [(WatchControlSecureIntentEnrollmentController *)self _dismissEnrollment];
  }
}

- (void)connectedDevicesDidChange:(id)a3
{
  if (![a3 count])
  {

    [(WatchControlSecureIntentEnrollmentController *)self _cancelEnrollment];
  }
}

@end