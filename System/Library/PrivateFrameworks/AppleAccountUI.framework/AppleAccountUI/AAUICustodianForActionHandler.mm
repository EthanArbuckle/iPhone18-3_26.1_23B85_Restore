@interface AAUICustodianForActionHandler
- (AAUICustodianForActionHandler)initWithLocalContact:(id)contact;
- (void)_dismissRecoveryViewController;
- (void)_showHelpNowUnavailableAlertWithMessage:(id)message viewController:(id)controller;
- (void)_showHelpNowViewWithRecoveryCode:(id)code presentingViewController:(id)controller;
- (void)doDestructiveAction:(id)action specifier:(id)specifier;
- (void)doPrimaryAction:(id)action specifier:(id)specifier;
@end

@implementation AAUICustodianForActionHandler

- (AAUICustodianForActionHandler)initWithLocalContact:(id)contact
{
  contactCopy = contact;
  v9.receiver = self;
  v9.super_class = AAUICustodianForActionHandler;
  v6 = [(AAUICustodianForActionHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contact, contact);
  }

  return v7;
}

- (void)doDestructiveAction:(id)action specifier:(id)specifier
{
  actionCopy = action;
  v6 = objc_opt_new();
  custodianID = [(AALocalContactInfo *)self->_contact custodianID];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__AAUICustodianForActionHandler_doDestructiveAction_specifier___block_invoke;
  v9[3] = &unk_1E820BF30;
  v10 = actionCopy;
  v8 = actionCopy;
  [v6 stopBeingCustodian:custodianID completion:v9];
}

void __63__AAUICustodianForActionHandler_doDestructiveAction_specifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _AAUILogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __63__AAUICustodianForActionHandler_doDestructiveAction_specifier___block_invoke_cold_1(v3, v4);
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__AAUICustodianForActionHandler_doDestructiveAction_specifier___block_invoke_34;
    block[3] = &unk_1E820B8F0;
    v6 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v4 = v6;
  }
}

void __63__AAUICustodianForActionHandler_doDestructiveAction_specifier___block_invoke_34(uint64_t a1)
{
  v1 = [*(a1 + 32) navigationController];
  [v1 aaui_removeLastViewControllerAnimated:1];
}

- (void)doPrimaryAction:(id)action specifier:(id)specifier
{
  actionCopy = action;
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  custodianID = [(AALocalContactInfo *)self->_contact custodianID];
  [v7 setCustodianUUID:custodianID];

  telemetryFlowID = [(AAUICustodianForActionHandler *)self telemetryFlowID];
  [v7 setTelemetryFlowID:telemetryFlowID];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__AAUICustodianForActionHandler_doPrimaryAction_specifier___block_invoke;
  v11[3] = &unk_1E820BF80;
  v11[4] = self;
  v12 = actionCopy;
  v10 = actionCopy;
  [v6 generateCustodianRecoveryCodeWithContext:v7 completion:v11];
}

void __59__AAUICustodianForActionHandler_doPrimaryAction_specifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ![v5 length])
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __59__AAUICustodianForActionHandler_doPrimaryAction_specifier___block_invoke_cold_1(v6, v7);
    }

    v8 = [v6 userInfo];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696A578]];

    if ([v9 length])
    {
      [*(a1 + 32) _showHelpNowUnavailableAlertWithMessage:v9 viewController:*(a1 + 40)];
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__AAUICustodianForActionHandler_doPrimaryAction_specifier___block_invoke_38;
    block[3] = &unk_1E820BF58;
    block[4] = *(a1 + 32);
    v11 = v5;
    v12 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_showHelpNowViewWithRecoveryCode:(id)code presentingViewController:(id)controller
{
  v6 = MEMORY[0x1E698B920];
  controllerCopy = controller;
  codeCopy = code;
  v9 = [v6 alloc];
  firstNameOrHandleForDisplay = [(AALocalContactInfo *)self->_contact firstNameOrHandleForDisplay];
  v19 = [v9 initWithRecoveryCode:codeCopy ownerName:firstNameOrHandleForDisplay];

  v11 = [[AAUIOBCustodianHelpNowViewModel alloc] initWithModel:v19];
  v12 = [[AAUIOBWelcomeController alloc] initWithViewModel:v11];
  recoveryViewController = self->_recoveryViewController;
  self->_recoveryViewController = v12;

  primaryButton = [(AAUIOBWelcomeController *)self->_recoveryViewController primaryButton];
  [primaryButton addTarget:self action:sel__dismissRecoveryViewController forControlEvents:64];

  v15 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:self->_recoveryViewController];
  v16 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__dismissRecoveryViewController];
  navigationItem = [(OBBaseWelcomeController *)self->_recoveryViewController navigationItem];
  [navigationItem setLeftBarButtonItem:v16];

  navigationController = [controllerCopy navigationController];

  [navigationController presentViewController:v15 animated:1 completion:0];
}

- (void)_dismissRecoveryViewController
{
  navigationController = [(AAUIOBWelcomeController *)self->_recoveryViewController navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)_showHelpNowUnavailableAlertWithMessage:(id)message viewController:(id)controller
{
  messageCopy = message;
  controllerCopy = controller;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__AAUICustodianForActionHandler__showHelpNowUnavailableAlertWithMessage_viewController___block_invoke;
  block[3] = &unk_1E820BF58;
  v11 = messageCopy;
  selfCopy = self;
  v13 = controllerCopy;
  v8 = controllerCopy;
  v9 = messageCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __88__AAUICustodianForActionHandler__showHelpNowUnavailableAlertWithMessage_viewController___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69DC650];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ACCOUNT_RECOVERY_CONTACT_STATUS_NOT_REACHABLE" value:&stru_1F447F790 table:@"Localizable"];
  v5 = [v2 alertWithTitle:v4 message:*(a1 + 32)];

  v6 = MEMORY[0x1E69DC648];
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_1F447F790 table:@"Localizable"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__AAUICustodianForActionHandler__showHelpNowUnavailableAlertWithMessage_viewController___block_invoke_2;
  v10[3] = &unk_1E820BFA8;
  v11 = *(a1 + 32);
  v9 = [v6 actionWithTitle:v8 style:0 handler:v10];
  [v5 addAction:v9];

  [*(a1 + 48) presentViewController:v5 animated:1 completion:0];
}

void __88__AAUICustodianForActionHandler__showHelpNowUnavailableAlertWithMessage_viewController___block_invoke_2(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __88__AAUICustodianForActionHandler__showHelpNowUnavailableAlertWithMessage_viewController___block_invoke_2_cold_1(a1, v2);
  }
}

void __63__AAUICustodianForActionHandler_doDestructiveAction_specifier___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C5355000, a2, OS_LOG_TYPE_ERROR, "Error ending Custodianship - %@", &v2, 0xCu);
}

void __59__AAUICustodianForActionHandler_doPrimaryAction_specifier___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1C5355000, a2, OS_LOG_TYPE_FAULT, "Failed to generate custodian recovery code with error: %@", &v2, 0xCu);
}

void __88__AAUICustodianForActionHandler__showHelpNowUnavailableAlertWithMessage_viewController___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1C5355000, a2, OS_LOG_TYPE_DEBUG, "User dismissed generate code alert for message: %@", &v3, 0xCu);
}

@end