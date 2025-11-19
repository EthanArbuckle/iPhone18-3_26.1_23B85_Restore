@interface AFUIPanel
- (AFUIModalUIDelegate)delegate;
- (id)_presentingWindow;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4;
- (void)_applyPanelState;
- (void)_hide;
- (void)_monitorDocumentProcessVisibility:(int)a3;
- (void)authenticationDidEndForSessionUUID:(id)a3 completion:(id)a4;
- (void)authenticationWillBeginForSessionUUID:(id)a3 completion:(id)a4;
- (void)contactsUIDidEndForSessionUUID:(id)a3 completion:(id)a4;
- (void)contactsUIWillBeginForSessionUUID:(id)a3 completion:(id)a4;
- (void)creditCardsUIDidEndForSessionUUID:(id)a3 completion:(id)a4;
- (void)creditCardsUIWillBeginForSessionUUID:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)dismissMenu;
- (void)displayForDocumentTraits:(id)a3 documentState:(id)a4 textOperationsHandler:(id)a5;
- (void)documentStateChanged:(id)a3;
- (void)hide;
- (void)passwordsUIDidEndForSessionUUID:(id)a3 completion:(id)a4;
- (void)passwordsUIWillBeginForSessionUUID:(id)a3 completion:(id)a4;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)transientHide;
- (void)transientUnhide;
@end

@implementation AFUIPanel

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DE360] object:0];

  [(RBSProcessMonitor *)self->_processMonitor invalidate];
  v4.receiver = self;
  v4.super_class = AFUIPanel;
  [(AFUIPanel *)&v4 dealloc];
}

- (void)_monitorDocumentProcessVisibility:(int)a3
{
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69C75F8];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__AFUIPanel__monitorDocumentProcessVisibility___block_invoke;
  v8[3] = &unk_1E8424D98;
  v10 = a3;
  objc_copyWeak(&v9, &location);
  v6 = [v5 monitorWithConfiguration:v8];
  processMonitor = self->_processMonitor;
  self->_processMonitor = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __47__AFUIPanel__monitorDocumentProcessVisibility___block_invoke(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E69C7630] descriptor];
  [v4 setValues:5];
  v14[0] = *MEMORY[0x1E699F9D0];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v4 setEndowmentNamespaces:v5];

  [v3 setStateDescriptor:v4];
  [v3 setServiceClass:33];
  v6 = MEMORY[0x1E69C7610];
  v7 = [MEMORY[0x1E69C75E0] identifierWithPid:*(a1 + 40)];
  v8 = [v6 predicateMatchingIdentifier:v7];

  v13 = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  [v3 setPredicates:v9];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__AFUIPanel__monitorDocumentProcessVisibility___block_invoke_2;
  v11[3] = &unk_1E8424D70;
  objc_copyWeak(&v12, (a1 + 32));
  [v3 setUpdateHandler:v11];
  objc_destroyWeak(&v12);

  v10 = *MEMORY[0x1E69E9840];
}

void __47__AFUIPanel__monitorDocumentProcessVisibility___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [a4 state];
  v6 = [v5 endowmentNamespaces];
  v7 = [v6 containsObject:*MEMORY[0x1E699F9D0]];

  if ((v7 & 1) == 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__AFUIPanel__monitorDocumentProcessVisibility___block_invoke_3;
    block[3] = &unk_1E8424940;
    objc_copyWeak(&v9, (a1 + 32));
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v9);
  }
}

void __47__AFUIPanel__monitorDocumentProcessVisibility___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained hide];
}

- (void)_applyPanelState
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__AFUIPanel__applyPanelState__block_invoke;
  block[3] = &unk_1E84247B0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __29__AFUIPanel__applyPanelState__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) panelState];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isDisplayed];
    v5 = AFUIPanelOSLogFacility();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
    if (v4)
    {
      if (v6)
      {
        __29__AFUIPanel__applyPanelState__block_invoke_cold_2(v3);
      }

      v7 = *(a1 + 32);
      v8 = [v3 documentTraits];
      v9 = [v3 documentState];
      v10 = [v3 textOperationsHandler];
      [v7 displayForDocumentTraits:v8 documentState:v9 textOperationsHandler:v10];
    }

    else
    {
      if (v6)
      {
        __29__AFUIPanel__applyPanelState__block_invoke_cold_1(v3);
      }

      [*(a1 + 32) hide];
    }
  }
}

- (void)displayForDocumentTraits:(id)a3 documentState:(id)a4 textOperationsHandler:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFUIPanelOSLogFacility();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = [v8 appId];
    v14 = [v12 stringWithFormat:@"%s appId:%@", "-[AFUIPanel displayForDocumentTraits:documentState:textOperationsHandler:]", v13];
    *buf = 138412290;
    v31 = v14;
    _os_log_impl(&dword_1D2F0D000, v11, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v15 = [[AFUIPanelState alloc] initDisplayed:1 documentTraits:v8 documentState:v9 textOperationsHandler:v10];
  [(AFUIPanel *)self setPanelState:v15];

  if ([MEMORY[0x1E69DCBB8] usesInputSystemUIForAutoFillOnly])
  {
    v16 = [(AFUIPanel *)self clientSession];
    v17 = v16 == 0;

    if (v17)
    {
      v18 = objc_alloc_init(AFUIClientSession);
      [(AFUIPanel *)self setClientSession:v18];
    }

    v19 = [(AFUIPanel *)self clientSession];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __74__AFUIPanel_displayForDocumentTraits_documentState_textOperationsHandler___block_invoke;
    v28[3] = &unk_1E8424DE8;
    v29 = v10;
    [v19 displayForDocumentTraits:v8 documentState:v9 textOperationsHandler:v28];

    v20 = v29;
  }

  else
  {
    v20 = [(AFUIPanel *)self _presentingWindow];
    if (v20)
    {
      [(AFUIPanel *)self _hide];
      if ([v8 _isExplicitAutoFillInvocation])
      {
        v21 = [[AFUIExplicitAutoFillController alloc] initWithDocumentTraits:v8 documentState:v9 textOperationsHandler:v10];
        explicitAutoFillController = self->_explicitAutoFillController;
        self->_explicitAutoFillController = v21;

        [(AFUIExplicitAutoFillController *)self->_explicitAutoFillController setDelegate:self];
        v23 = self->_explicitAutoFillController;
        v24 = [v20 rootViewController];
        [(AFUIExplicitAutoFillController *)v23 presentFromViewController:v24];
      }

      else
      {
        objc_initWeak(buf, self);
        v25 = [AFUIAutoFillPopoverController presentAsPopoverFromWindow:v20 documentTraits:v8 documentState:v9 modalUIDelegate:self textOperationsHandler:v10];
        WeakRetained = objc_loadWeakRetained(buf);
        [WeakRetained setPopoverController:v25];

        objc_destroyWeak(buf);
      }
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __74__AFUIPanel_displayForDocumentTraits_documentState_textOperationsHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__AFUIPanel_displayForDocumentTraits_documentState_textOperationsHandler___block_invoke_2;
  v6[3] = &unk_1E8424DC0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)documentStateChanged:(id)a3
{
  v4 = a3;
  v5 = [(AFUIPanel *)self panelState];
  v6 = AFUIPanelOSLogFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [AFUIPanel documentStateChanged:v5];
  }

  if (v5)
  {
    v7 = [AFUIPanelState alloc];
    v8 = [v5 isDisplayed];
    v9 = [v5 documentTraits];
    v10 = [v5 documentState];
    v11 = [v5 textOperationsHandler];
    v12 = [(AFUIPanelState *)v7 initDisplayed:v8 documentTraits:v9 documentState:v10 textOperationsHandler:v11];
    [(AFUIPanel *)self setPanelState:v12];
  }

  if ([MEMORY[0x1E69DCBB8] usesInputSystemUIForAutoFillOnly])
  {
    [(AFUIPanel *)self clientSession];
  }

  else
  {
    [(AFUIPanel *)self popoverController];
  }
  v13 = ;
  [v13 documentStateChanged:v4];
}

- (void)transientHide
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = AFUIPanelOSLogFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [(AFUIPanel *)self panelState];
    v6 = [v5 documentTraits];
    v7 = [v6 appId];
    v8 = [v4 stringWithFormat:@"%s appId:%@", "-[AFUIPanel transientHide]", v7];
    *buf = 138412290;
    v15 = v8;
    _os_log_impl(&dword_1D2F0D000, v3, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  if (!self->_explicitAutoFillController)
  {
    goto LABEL_7;
  }

  v9 = [(AFUIPanel *)self _presentingWindow];
  v10 = [v9 rootViewController];
  v11 = [v10 presentedViewController];

  if (![AFUIPasswordsController isPasswordPickerViewControllerAuthenticating:v11])
  {
    v12 = +[AFUIExplicitAutoFillController isCreditCardViewControllerAuthenticating];

    if (v12)
    {
      goto LABEL_8;
    }

LABEL_7:
    [(AFUIPanel *)self hide];
    goto LABEL_8;
  }

LABEL_8:
  v13 = *MEMORY[0x1E69E9840];
}

- (void)transientUnhide
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = AFUIPanelOSLogFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [(AFUIPanel *)self panelState];
    v6 = [v5 documentTraits];
    v7 = [v6 appId];
    v8 = [v4 stringWithFormat:@"%s appId:%@", "-[AFUIPanel transientUnhide]", v7];
    *buf = 138412290;
    v11 = v8;
    _os_log_impl(&dword_1D2F0D000, v3, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)hide
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [[AFUIPanelState alloc] initNotDisplayed];
  [(AFUIPanel *)self setPanelState:v3];

  v4 = AFUIPanelOSLogFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [(AFUIPanel *)self panelState];
    v7 = [v6 documentTraits];
    v8 = [v7 appId];
    v9 = [v5 stringWithFormat:@"%s appId:%@", "-[AFUIPanel hide]", v8];
    *buf = 138412290;
    v13 = v9;
    _os_log_impl(&dword_1D2F0D000, v4, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  if ([MEMORY[0x1E69DCBB8] usesInputSystemUIForAutoFillOnly])
  {
    v10 = [(AFUIPanel *)self clientSession];
    [v10 hide];

    [(AFUIPanel *)self setClientSession:0];
  }

  else
  {
    [(AFUIPanel *)self _hide];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = [(AFUIPanel *)self popoverController];
  v6 = [v5 presentationController];

  if (v6 == v4)
  {

    [(AFUIPanel *)self setPopoverController:0];
  }
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4
{
  if ([a4 userInterfaceIdiom] == 1)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

- (id)_presentingWindow
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 connectedScenes];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__AFUIPanel__presentingWindow__block_invoke;
  v6[3] = &unk_1E8424E10;
  v6[4] = &v7;
  [v3 enumerateObjectsUsingBlock:v6];

  v4 = [MEMORY[0x1E69DD0A8] sharedTextEffectsWindowForWindowScene:v8[5]];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __30__AFUIPanel__presentingWindow__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![v6 activationState])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (void)_hide
{
  if (self->_explicitAutoFillController)
  {
    v3 = [(AFUIPanel *)self _presentingWindow];
    v4 = [v3 rootViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];

    explicitAutoFillController = self->_explicitAutoFillController;
    self->_explicitAutoFillController = 0;
  }

  else
  {
    v6 = [(AFUIPanel *)self popoverController];
    [v6 dismissMenu];

    v7 = [(AFUIPanel *)self popoverController];
    [v7 dismissViewControllerAnimated:1 completion:0];

    v8 = [(AFUIPanel *)self popoverController];
    v9 = [v8 view];
    [v9 removeFromSuperview];

    v10 = [(AFUIPanel *)self popoverController];
    [v10 removeFromParentViewController];

    [(AFUIPanel *)self setPopoverController:0];
  }
}

- (void)dismissMenu
{
  v2 = [(AFUIPanel *)self popoverController];
  [v2 dismissMenu];
}

- (void)authenticationWillBeginForSessionUUID:(id)a3 completion:(id)a4
{
  v5 = a4;
  v7 = [(AFUIPanel *)self delegate];
  v6 = [(AFUIPanel *)self sessionUUID];
  [v7 authenticationWillBeginForSessionUUID:v6 completion:v5];
}

- (void)authenticationDidEndForSessionUUID:(id)a3 completion:(id)a4
{
  v5 = a4;
  v7 = [(AFUIPanel *)self delegate];
  v6 = [(AFUIPanel *)self sessionUUID];
  [v7 authenticationDidEndForSessionUUID:v6 completion:v5];
}

- (void)contactsUIWillBeginForSessionUUID:(id)a3 completion:(id)a4
{
  v5 = a4;
  v7 = [(AFUIPanel *)self delegate];
  v6 = [(AFUIPanel *)self sessionUUID];
  [v7 contactsUIWillBeginForSessionUUID:v6 completion:v5];
}

- (void)contactsUIDidEndForSessionUUID:(id)a3 completion:(id)a4
{
  v5 = a4;
  [(AFUIPanel *)self hide];
  v7 = [(AFUIPanel *)self delegate];
  v6 = [(AFUIPanel *)self sessionUUID];
  [v7 contactsUIDidEndForSessionUUID:v6 completion:v5];
}

- (void)passwordsUIWillBeginForSessionUUID:(id)a3 completion:(id)a4
{
  v5 = a4;
  v7 = [(AFUIPanel *)self delegate];
  v6 = [(AFUIPanel *)self sessionUUID];
  [v7 passwordsUIWillBeginForSessionUUID:v6 completion:v5];
}

- (void)passwordsUIDidEndForSessionUUID:(id)a3 completion:(id)a4
{
  v5 = a4;
  [(AFUIPanel *)self hide];
  v7 = [(AFUIPanel *)self delegate];
  v6 = [(AFUIPanel *)self sessionUUID];
  [v7 passwordsUIDidEndForSessionUUID:v6 completion:v5];
}

- (void)creditCardsUIWillBeginForSessionUUID:(id)a3 completion:(id)a4
{
  v5 = a4;
  v7 = [(AFUIPanel *)self delegate];
  v6 = [(AFUIPanel *)self sessionUUID];
  [v7 creditCardsUIWillBeginForSessionUUID:v6 completion:v5];
}

- (void)creditCardsUIDidEndForSessionUUID:(id)a3 completion:(id)a4
{
  v5 = a4;
  [(AFUIPanel *)self hide];
  v7 = [(AFUIPanel *)self delegate];
  v6 = [(AFUIPanel *)self sessionUUID];
  [v7 creditCardsUIDidEndForSessionUUID:v6 completion:v5];
}

- (AFUIModalUIDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __29__AFUIPanel__applyPanelState__block_invoke_cold_1(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696AEC0];
  v2 = [a1 documentTraits];
  v3 = [v2 appId];
  v4 = [v1 stringWithFormat:@"%s action:HidePanel appId:%@"];
  OUTLINED_FUNCTION_0_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, "[AFUIPanel _applyPanelState]_block_invoke", v3, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

void __29__AFUIPanel__applyPanelState__block_invoke_cold_2(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696AEC0];
  v2 = [a1 documentTraits];
  v3 = [v2 appId];
  v4 = [v1 stringWithFormat:@"%s action:DisplayPanel appId:%@"];
  OUTLINED_FUNCTION_0_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, "[AFUIPanel _applyPanelState]_block_invoke", v3, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)documentStateChanged:(void *)a1 .cold.1(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696AEC0];
  v2 = [a1 documentTraits];
  v3 = [v2 appId];
  v4 = [v1 stringWithFormat:@"%s appId:%@"];
  OUTLINED_FUNCTION_0_0(&dword_1D2F0D000, v5, v6, "%@", v7, v8, v9, v10, "[AFUIPanel documentStateChanged:]", v3, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

@end