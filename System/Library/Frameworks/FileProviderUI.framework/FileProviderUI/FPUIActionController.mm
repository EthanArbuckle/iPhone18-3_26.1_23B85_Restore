@interface FPUIActionController
+ (id)actionControllerForActionIdentifier:(id)a3 actionTitle:(id)a4 items:(id)a5 providerIdentifier:(id)a6 domainIdentifier:(id)a7;
- (FPUIActionControllerDelegate)delegate;
- (id)_getExtensionWithError:(id *)a3;
- (id)performActionWithCompletionHandler:(id)a3;
- (void)_delegateDidFinishWithUserInfo:(id)a3 error:(id)a4;
- (void)remoteActionContext:(id)a3 didEncounterError:(id)a4 completionHandler:(id)a5;
@end

@implementation FPUIActionController

+ (id)actionControllerForActionIdentifier:(id)a3 actionTitle:(id)a4 items:(id)a5 providerIdentifier:(id)a6 domainIdentifier:(id)a7
{
  v10 = a7;
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = objc_alloc_init(FPUIActionController);
  v15 = [v11 copy];

  providerIdentifier = v14->_providerIdentifier;
  v14->_providerIdentifier = v15;

  v17 = [v13 copy];
  actionIdentifier = v14->_actionIdentifier;
  v14->_actionIdentifier = v17;

  v19 = [v12 copy];
  items = v14->_items;
  v14->_items = v19;

  v21 = [v10 copy];
  domainIdentifier = v14->_domainIdentifier;
  v14->_domainIdentifier = v21;

  return v14;
}

- (id)performActionWithCompletionHandler:(id)a3
{
  v4 = MEMORY[0x277CC6480];
  v5 = a3;
  v6 = [[v4 alloc] initWithActionIdentifier:self->_actionIdentifier providerDomainID:self->_domainIdentifier itemIdentifiers:self->_items];
  [v6 setActionCompletionBlock:v5];

  v7 = [MEMORY[0x277CC6408] defaultManager];
  [v7 scheduleAction:v6];

  v8 = [v6 progress];

  return v8;
}

- (id)_getExtensionWithError:(id *)a3
{
  v5 = MEMORY[0x277CCA9C8];
  v6 = [(FPUIActionController *)self providerIdentifier];
  v12 = 0;
  v7 = [v5 extensionWithIdentifier:v6 error:&v12];
  v8 = v12;

  if (!v7)
  {
    v9 = fpuiLogHandle;
    if (!fpuiLogHandle)
    {
      FPUIInitLogging();
      v9 = fpuiLogHandle;
    }

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      if (!a3)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    [(FPUIActionViewController *)v9 _getExtensionWithError:?];
    if (a3)
    {
LABEL_6:
      v10 = v8;
      *a3 = v8;
    }
  }

LABEL_7:

  return v7;
}

- (void)_delegateDidFinishWithUserInfo:(id)a3 error:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = fpuiLogHandle;
  if (v7)
  {
    if (!fpuiLogHandle)
    {
      FPUIInitLogging();
      v8 = fpuiLogHandle;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [FPUIActionViewController _delegateDidFinishWithUserInfo:v8 error:self];
    }
  }

  else
  {
    if (!fpuiLogHandle)
    {
      FPUIInitLogging();
      v8 = fpuiLogHandle;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v10 = [(FPUIActionController *)self actionIdentifier];
      v16 = 138412290;
      v17 = v10;
      _os_log_impl(&dword_238356000, v9, OS_LOG_TYPE_INFO, "Action with identifier (%@) did finish.", &v16, 0xCu);
    }
  }

  v11 = [(FPUIActionController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  v13 = [(FPUIActionController *)self delegate];
  v14 = v13;
  if (v12)
  {
    [v13 actionControllerDidFinishAction:self userInfo:v6 error:v7];
  }

  else
  {
    [v13 actionControllerDidFinishAction:self error:v7];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)remoteActionContext:(id)a3 didEncounterError:(id)a4 completionHandler:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [(FPUIActionController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__FPUIActionController_remoteActionContext_didEncounterError_completionHandler___block_invoke;
    block[3] = &unk_278A51398;
    block[4] = self;
    v14 = v7;
    v15 = v8;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v11 = fpuiLogHandle;
    if (!fpuiLogHandle)
    {
      FPUIInitLogging();
      v11 = fpuiLogHandle;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&dword_238356000, v11, OS_LOG_TYPE_INFO, "An error occurred on the service side, but the client won't present it: %@", buf, 0xCu);
    }

    v8[2](v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __80__FPUIActionController_remoteActionContext_didEncounterError_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 actionController:*(a1 + 32) presentError:*(a1 + 40) completion:*(a1 + 48)];
}

- (FPUIActionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end