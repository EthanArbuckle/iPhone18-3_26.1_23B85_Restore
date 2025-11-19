@interface FPUIActionViewController
+ (id)actionControllerForActionIdentifier:(id)a3 actionTitle:(id)a4 items:(id)a5 providerIdentifier:(id)a6 domainIdentifier:(id)a7;
+ (id)actionControllerForAuthenticationUsingURL:(id)a3 providerIdentifier:(id)a4;
+ (id)actionControllerForConnectingToServerURL:(id)a3 actionTitle:(id)a4 providerIdentifier:(id)a5;
+ (id)actionControllerForError:(id)a3 extensionIdentifier:(id)a4 providerDomainIdentifier:(id)a5;
+ (id)actionControllerForError:(id)a3 providerIdentifier:(id)a4;
+ (id)actionControllerForInlineError:(id)a3 providerIdentifier:(id)a4;
+ (id)actionControllerForInlineError:(id)a3 providerIdentifier:(id)a4 providerDomainIdentifier:(id)a5;
- (FPUIActionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (FPUIActionViewControllerDelegate)delegate;
- (id)_getExtensionWithError:(id *)a3;
- (void)_delegateDidFinishWithUserInfo:(id)a3 error:(id)a4;
- (void)_dismissViewController;
- (void)effectiveAppearanceDidChange:(id)a3;
- (void)embedViewController:(id)a3;
- (void)remoteActionContext:(id)a3 didEncounterError:(id)a4 completionHandler:(id)a5;
- (void)viewDidLoad;
@end

@implementation FPUIActionViewController

- (FPUIActionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = FPUIActionViewController;
  v4 = [(FPUIActionViewController *)&v8 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(FPUIActionViewController *)v4 setModalPresentationStyle:2];
    v6 = v5;
  }

  return v5;
}

+ (id)actionControllerForActionIdentifier:(id)a3 actionTitle:(id)a4 items:(id)a5 providerIdentifier:(id)a6 domainIdentifier:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[FPUIActionViewController alloc] initWithNibName:0 bundle:0];
  [(FPUIActionViewController *)v16 setProviderIdentifier:v12];

  [(FPUIActionViewController *)v16 setActionIdentifier:v15];
  [(FPUIActionViewController *)v16 setItems:v13];

  [(FPUIActionViewController *)v16 setActionTitle:v14];
  [(FPUIActionViewController *)v16 setDomainIdentifier:v11];

  [(FPUIActionViewController *)v16 setModalPresentationStyle:2];

  return v16;
}

+ (id)actionControllerForAuthenticationUsingURL:(id)a3 providerIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[FPUIActionViewController alloc] initWithNibName:0 bundle:0];
  [(FPUIActionViewController *)v7 setProviderIdentifier:v5];

  [(FPUIActionViewController *)v7 setActionIdentifier:@"com.apple.FileProviderUI.authenticate"];
  [(FPUIActionViewController *)v7 setItems:MEMORY[0x277CBEBF8]];
  [(FPUIActionViewController *)v7 setAuthenticationURL:v6];

  [(FPUIActionViewController *)v7 setActionTitle:@"Authenticate"];

  return v7;
}

+ (id)actionControllerForConnectingToServerURL:(id)a3 actionTitle:(id)a4 providerIdentifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[FPUIActionViewController alloc] initWithNibName:0 bundle:0];
  [(FPUIActionViewController *)v10 setProviderIdentifier:v7];

  [(FPUIActionViewController *)v10 setActionIdentifier:@"com.apple.FileProviderUI.authenticate"];
  [(FPUIActionViewController *)v10 setItems:MEMORY[0x277CBEBF8]];
  [(FPUIActionViewController *)v10 setActionTitle:v8];

  [(FPUIActionViewController *)v10 setDomainIdentifier:0];
  [(FPUIActionViewController *)v10 setServerConnectionURL:v9];

  [(FPUIActionViewController *)v10 setModalPresentationStyle:2];

  return v10;
}

+ (id)actionControllerForError:(id)a3 providerIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[FPUIActionViewController alloc] initWithNibName:0 bundle:0];
  [(FPUIActionViewController *)v7 setProviderIdentifier:v5];

  [(FPUIActionViewController *)v7 setActionIdentifier:@"com.apple.FileProviderUI.authenticate"];
  [(FPUIActionViewController *)v7 setItems:MEMORY[0x277CBEBF8]];
  [(FPUIActionViewController *)v7 setError:v6];

  [(FPUIActionViewController *)v7 setActionTitle:@"Authenticate"];

  return v7;
}

+ (id)actionControllerForError:(id)a3 extensionIdentifier:(id)a4 providerDomainIdentifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[FPUIActionViewController alloc] initWithNibName:0 bundle:0];
  [(FPUIActionViewController *)v10 setProviderIdentifier:v8];

  [(FPUIActionViewController *)v10 setDomainIdentifier:v7];
  [(FPUIActionViewController *)v10 setActionIdentifier:@"com.apple.FileProviderUI.authenticate"];
  [(FPUIActionViewController *)v10 setItems:MEMORY[0x277CBEBF8]];
  [(FPUIActionViewController *)v10 setError:v9];

  [(FPUIActionViewController *)v10 setActionTitle:@"Authenticate"];

  return v10;
}

+ (id)actionControllerForInlineError:(id)a3 providerIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[FPUIActionViewController alloc] initWithNibName:0 bundle:0];
  [(FPUIActionViewController *)v7 setProviderIdentifier:v5];

  [(FPUIActionViewController *)v7 setActionIdentifier:@"com.apple.FileProviderUI.authenticate"];
  [(FPUIActionViewController *)v7 setItems:MEMORY[0x277CBEBF8]];
  [(FPUIActionViewController *)v7 setError:v6];

  [(FPUIActionViewController *)v7 setDisplayInline:1];

  return v7;
}

+ (id)actionControllerForInlineError:(id)a3 providerIdentifier:(id)a4 providerDomainIdentifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[FPUIActionViewController alloc] initWithNibName:0 bundle:0];
  [(FPUIActionViewController *)v10 setProviderIdentifier:v8];

  [(FPUIActionViewController *)v10 setActionIdentifier:@"com.apple.FileProviderUI.authenticate"];
  [(FPUIActionViewController *)v10 setDomainIdentifier:v7];

  [(FPUIActionViewController *)v10 setItems:MEMORY[0x277CBEBF8]];
  [(FPUIActionViewController *)v10 setError:v9];

  [(FPUIActionViewController *)v10 setDisplayInline:1];

  return v10;
}

- (void)viewDidLoad
{
  v33 = *MEMORY[0x277D85DE8];
  v31.receiver = self;
  v31.super_class = FPUIActionViewController;
  [(FPUIActionViewController *)&v31 viewDidLoad];
  v30 = 0;
  v3 = [(FPUIActionViewController *)self _getExtensionWithError:&v30];
  v4 = v30;
  v5 = v4;
  if (v3)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __39__FPUIActionViewController_viewDidLoad__block_invoke;
    v28[3] = &unk_278A51320;
    v28[4] = self;
    v6 = v3;
    v29 = v6;
    v7 = MEMORY[0x2383F1490](v28);
    v8 = MEMORY[0x277D761B8];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __39__FPUIActionViewController_viewDidLoad__block_invoke_4;
    v26[3] = &unk_278A51348;
    v9 = v7;
    v26[4] = self;
    v27 = v9;
    v10 = [v8 instantiateWithExtension:v6 completion:v26];
    placeholderVC = self->_placeholderVC;
    self->_placeholderVC = v10;

    [(_UIResilientRemoteViewContainerViewController *)self->_placeholderVC delayDisplayOfRemoteController];
    [(FPUIActionViewController *)self embedViewController:self->_placeholderVC];
    v12 = [MEMORY[0x277D75348] systemBackgroundColor];
    v13 = [(FPUIActionViewController *)self view];
    [v13 setBackgroundColor:v12];

    if ([(FPUIActionViewController *)self displayInline])
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v14 = [(_UIResilientRemoteViewContainerViewController *)self->_placeholderVC view];
      v15 = [v14 subviews];

      v16 = [v15 countByEnumeratingWithState:&v22 objects:v32 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v23;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v23 != v18)
            {
              objc_enumerationMutation(v15);
            }

            [*(*(&v22 + 1) + 8 * i) setBackgroundColor:0];
          }

          v17 = [v15 countByEnumeratingWithState:&v22 objects:v32 count:16];
        }

        while (v17);
      }
    }
  }

  else if (v4)
  {
    [(FPUIActionViewController *)self _delegateError:v4];
  }

  else
  {
    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"FPUIActionViewControllerErrorDomain" code:1000 userInfo:0];
    [(FPUIActionViewController *)self _delegateError:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __39__FPUIActionViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (a4)
  {
    [*(a1 + 32) _delegateError:a4];
  }

  else
  {
    v8 = [*(a1 + 40) _extensionContextForUUID:a3];
    [v8 setDelegate:*(a1 + 32)];
    [v7 setDelegate:*(a1 + 32)];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __39__FPUIActionViewController_viewDidLoad__block_invoke_2;
    v28[3] = &unk_278A512F8;
    v28[4] = *(a1 + 32);
    v9 = [v7 serviceViewControllerProxyWithErrorHandler:v28];
    v10 = *(a1 + 32);
    v11 = *(v10 + 992);
    *(v10 + 992) = v9;

    if ([*(a1 + 32) displayInline])
    {
      [*(*(a1 + 32) + 992) _setBrowserUserInterfaceStyle:{objc_msgSend(*(a1 + 32), "browserUserInterfaceStyle")}];
    }

    v12 = [*(a1 + 32) domainIdentifier];

    if (v12)
    {
      v13 = dyld_program_sdk_at_least();
      v14 = *(a1 + 32);
      if (v13)
      {
        v15 = [v14 domainIdentifier];
        v16 = FPProviderDomainIDToDomainIdentifier(v15);

        v17 = *(*(a1 + 32) + 992);
      }

      else
      {
        v18 = v14[124];
        v16 = [v14 domainIdentifier];
        v17 = v18;
      }

      [v17 _configureWithDomainIdentifier:v16];
    }

    v19 = [*(a1 + 32) actionIdentifier];
    v20 = [v19 isEqualToString:@"com.apple.FileProviderUI.authenticate"];

    v21 = *(a1 + 32);
    if (v20)
    {
      v22 = [v21 authenticationURL];
      v23 = [*(a1 + 32) serverConnectionURL];
      if (v22)
      {
        [*(*(a1 + 32) + 992) _prepareAuthenticationUsingURL:v22];
      }

      else
      {
        v25 = *(a1 + 32);
        v26 = v25[124];
        if (v23)
        {
          [v25[124] _prepareAuthenticationUsingServerURL:v23];
        }

        else
        {
          v27 = [v25 error];
          [v26 _prepareForError:v27];
        }
      }
    }

    else
    {
      v24 = v21[124];
      v22 = [v21 actionIdentifier];
      v23 = [*(a1 + 32) items];
      [v24 _prepareForActionWithIdentifier:v22 items:v23];
    }
  }
}

void __39__FPUIActionViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__FPUIActionViewController_viewDidLoad__block_invoke_3;
  v5[3] = &unk_278A512D0;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __39__FPUIActionViewController_viewDidLoad__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  (*(*(a1 + 40) + 16))();
  v5 = [*(a1 + 32) view];
  [v5 setBackgroundColor:0];

  v6 = *(a1 + 32);
  if (v7)
  {
    [v6 _delegateError:?];
  }

  else
  {
    [v6[125] endDelayingDisplayOfRemoteController];
  }
}

- (void)embedViewController:(id)a3
{
  v18 = a3;
  v4 = [v18 view];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:1];

  v5 = [v18 view];
  [v5 setAutoresizingMask:18];

  v6 = [(FPUIActionViewController *)self view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v18 view];
  [v15 setFrame:{v8, v10, v12, v14}];

  [(FPUIActionViewController *)self addChildViewController:v18];
  v16 = [(FPUIActionViewController *)self view];
  v17 = [v18 view];
  [v16 addSubview:v17];

  [v18 didMoveToParentViewController:self];
}

- (void)effectiveAppearanceDidChange:(id)a3
{
  v6 = a3;
  if ([(FPUIActionViewController *)self displayInline])
  {
    browserUserInterfaceStyle = self->_browserUserInterfaceStyle;
    if (browserUserInterfaceStyle != [v6 browserUserInterfaceStyle])
    {
      v5 = [v6 browserUserInterfaceStyle];
      self->_browserUserInterfaceStyle = v5;
      [(FPUIActionExtensionViewControllerProtocol *)self->_extensionViewController _setBrowserUserInterfaceStyle:v5];
    }
  }
}

- (id)_getExtensionWithError:(id *)a3
{
  v5 = MEMORY[0x277CCA9C8];
  v6 = [(FPUIActionViewController *)self providerIdentifier];
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

- (void)_dismissViewController
{
  if ([(FPUIActionViewController *)self isBeingPresented])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__FPUIActionViewController__dismissViewController__block_invoke;
    block[3] = &unk_278A51370;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {

    [(FPUIActionViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
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
      v10 = [(FPUIActionViewController *)self actionIdentifier];
      v16 = 138412290;
      v17 = v10;
      _os_log_impl(&dword_238356000, v9, OS_LOG_TYPE_INFO, "Action with identifier (%@) did finish.", &v16, 0xCu);
    }
  }

  v11 = [(FPUIActionViewController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  v13 = [(FPUIActionViewController *)self delegate];
  v14 = v13;
  if (v12)
  {
    [v13 actionControllerDidFinishAction:self userInfo:v6 error:v7];
  }

  else
  {
    [v13 actionControllerDidFinishAction:self error:v7];
  }

  [(FPUIActionViewController *)self _dismissViewController];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)remoteActionContext:(id)a3 didEncounterError:(id)a4 completionHandler:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [(FPUIActionViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__FPUIActionViewController_remoteActionContext_didEncounterError_completionHandler___block_invoke;
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

void __84__FPUIActionViewController_remoteActionContext_didEncounterError_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 actionController:*(a1 + 32) presentError:*(a1 + 40) completion:*(a1 + 48)];
}

- (FPUIActionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_getExtensionWithError:(void *)a1 .cold.1(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 providerIdentifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_238356000, v5, v6, "nil extension for provider ID (%@), error: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_delegateDidFinishWithUserInfo:(void *)a1 error:(void *)a2 .cold.1(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 actionIdentifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_238356000, v5, v6, "Action with identifier (%@) did finish with error (%@).", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

@end