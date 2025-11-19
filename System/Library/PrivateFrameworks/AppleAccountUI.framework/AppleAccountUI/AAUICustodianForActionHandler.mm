@interface AAUICustodianForActionHandler
- (AAUICustodianForActionHandler)initWithLocalContact:(id)a3;
- (void)_dismissRecoveryViewController;
- (void)_showHelpNowUnavailableAlertWithMessage:(id)a3 viewController:(id)a4;
- (void)_showHelpNowViewWithRecoveryCode:(id)a3 presentingViewController:(id)a4;
- (void)doDestructiveAction:(id)a3 specifier:(id)a4;
- (void)doPrimaryAction:(id)a3 specifier:(id)a4;
@end

@implementation AAUICustodianForActionHandler

- (AAUICustodianForActionHandler)initWithLocalContact:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AAUICustodianForActionHandler;
  v6 = [(AAUICustodianForActionHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contact, a3);
  }

  return v7;
}

- (void)doDestructiveAction:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = [(AALocalContactInfo *)self->_contact custodianID];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__AAUICustodianForActionHandler_doDestructiveAction_specifier___block_invoke;
  v9[3] = &unk_1E820BF30;
  v10 = v5;
  v8 = v5;
  [v6 stopBeingCustodian:v7 completion:v9];
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

- (void)doPrimaryAction:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = [(AALocalContactInfo *)self->_contact custodianID];
  [v7 setCustodianUUID:v8];

  v9 = [(AAUICustodianForActionHandler *)self telemetryFlowID];
  [v7 setTelemetryFlowID:v9];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__AAUICustodianForActionHandler_doPrimaryAction_specifier___block_invoke;
  v11[3] = &unk_1E820BF80;
  v11[4] = self;
  v12 = v5;
  v10 = v5;
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

- (void)_showHelpNowViewWithRecoveryCode:(id)a3 presentingViewController:(id)a4
{
  v6 = MEMORY[0x1E698B920];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = [(AALocalContactInfo *)self->_contact firstNameOrHandleForDisplay];
  v19 = [v9 initWithRecoveryCode:v8 ownerName:v10];

  v11 = [[AAUIOBCustodianHelpNowViewModel alloc] initWithModel:v19];
  v12 = [[AAUIOBWelcomeController alloc] initWithViewModel:v11];
  recoveryViewController = self->_recoveryViewController;
  self->_recoveryViewController = v12;

  v14 = [(AAUIOBWelcomeController *)self->_recoveryViewController primaryButton];
  [v14 addTarget:self action:sel__dismissRecoveryViewController forControlEvents:64];

  v15 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:self->_recoveryViewController];
  v16 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__dismissRecoveryViewController];
  v17 = [(OBBaseWelcomeController *)self->_recoveryViewController navigationItem];
  [v17 setLeftBarButtonItem:v16];

  v18 = [v7 navigationController];

  [v18 presentViewController:v15 animated:1 completion:0];
}

- (void)_dismissRecoveryViewController
{
  v2 = [(AAUIOBWelcomeController *)self->_recoveryViewController navigationController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)_showHelpNowUnavailableAlertWithMessage:(id)a3 viewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__AAUICustodianForActionHandler__showHelpNowUnavailableAlertWithMessage_viewController___block_invoke;
  block[3] = &unk_1E820BF58;
  v11 = v6;
  v12 = self;
  v13 = v7;
  v8 = v7;
  v9 = v6;
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