@interface AAUIMyPendingCustodianActionHandler
- (void)displayMessagesInvitationFlowWithViewController:(id)a3;
- (void)doPrimaryAction:(id)a3 specifier:(id)a4;
@end

@implementation AAUIMyPendingCustodianActionHandler

- (void)doPrimaryAction:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E698B850]);
  objc_initWeak(&location, self);
  v9 = [(AAUIMyCustodianActionHandler *)self contact];
  v10 = [v9 custodianID];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__AAUIMyPendingCustodianActionHandler_doPrimaryAction_specifier___block_invoke;
  v12[3] = &unk_1E820C3A0;
  objc_copyWeak(&v14, &location);
  v11 = v6;
  v13 = v11;
  [v8 reSendCustodianInvitationWithCustodianID:v10 completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __65__AAUIMyPendingCustodianActionHandler_doPrimaryAction_specifier___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = _AAUILogSystem();
  v6 = v5;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Resending custodian IDS invitation completed with error: %@", &v7, 0xCu);
    }

    [WeakRetained displayMessagesInvitationFlowWithViewController:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __65__AAUIMyPendingCustodianActionHandler_doPrimaryAction_specifier___block_invoke_cold_1(v6);
    }
  }
}

- (void)displayMessagesInvitationFlowWithViewController:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__AAUIMyPendingCustodianActionHandler_displayMessagesInvitationFlowWithViewController___block_invoke;
  block[3] = &unk_1E820BE68;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __87__AAUIMyPendingCustodianActionHandler_displayMessagesInvitationFlowWithViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained contact];
    if ([v4 isFamilyMember])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    v6 = objc_alloc(MEMORY[0x1E698B938]);
    v7 = [v3 contact];
    v8 = [v7 handle];
    v9 = [v6 initWithType:v5 recipientHandle:v8];

    v10 = [[AAUIOBTrustedContactInviteMessageModel alloc] initWithModel:v9];
    v11 = [v3 contact];
    v12 = [v11 isFamilyMember] ^ 1;

    v13 = [AAUIOBInvitationSentViewModel alloc];
    v14 = [v3 contact];
    v15 = [v14 handle];
    v16 = [(AAUIOBInvitationSentViewModel *)v13 initWithType:v12 recipientHandle:v15];

    v17 = objc_alloc(MEMORY[0x1E698B860]);
    v18 = [v3 contact];
    v19 = [v3 contact];
    v20 = [v19 custodianID];
    v21 = [v17 initWithLocalContact:v18 custodianID:v20];

    v22 = [AAUIInviteMessageFlowController alloc];
    v23 = objc_alloc_init(MEMORY[0x1E69DCCD8]);
    v24 = [(AAUIInviteMessageFlowController *)v22 initWithContext:v21 flow:0 navigationController:v23 defaultMessageViewModel:v10 messageSentViewModel:v16];
    v25 = v3[9];
    v3[9] = v24;

    [v3[9] start];
    v26 = [*(a1 + 32) navigationController];
    v27 = [v3[9] navigationController];
    [v26 presentViewController:v27 animated:1 completion:0];
  }

  else
  {
    v28 = _AAUILogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      __87__AAUIMyPendingCustodianActionHandler_displayMessagesInvitationFlowWithViewController___block_invoke_cold_1(v28);
    }
  }
}

@end