@interface AFUIPanel
- (AFUIModalUIDelegate)delegate;
- (id)_presentingWindow;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (void)_applyPanelState;
- (void)_hide;
- (void)_monitorDocumentProcessVisibility:(int)visibility;
- (void)authenticationDidEndForSessionUUID:(id)d completion:(id)completion;
- (void)authenticationWillBeginForSessionUUID:(id)d completion:(id)completion;
- (void)contactsUIDidEndForSessionUUID:(id)d completion:(id)completion;
- (void)contactsUIWillBeginForSessionUUID:(id)d completion:(id)completion;
- (void)creditCardsUIDidEndForSessionUUID:(id)d completion:(id)completion;
- (void)creditCardsUIWillBeginForSessionUUID:(id)d completion:(id)completion;
- (void)dealloc;
- (void)dismissMenu;
- (void)displayForDocumentTraits:(id)traits documentState:(id)state textOperationsHandler:(id)handler;
- (void)documentStateChanged:(id)changed;
- (void)hide;
- (void)passwordsUIDidEndForSessionUUID:(id)d completion:(id)completion;
- (void)passwordsUIWillBeginForSessionUUID:(id)d completion:(id)completion;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)transientHide;
- (void)transientUnhide;
@end

@implementation AFUIPanel

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE360] object:0];

  [(RBSProcessMonitor *)self->_processMonitor invalidate];
  v4.receiver = self;
  v4.super_class = AFUIPanel;
  [(AFUIPanel *)&v4 dealloc];
}

- (void)_monitorDocumentProcessVisibility:(int)visibility
{
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69C75F8];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__AFUIPanel__monitorDocumentProcessVisibility___block_invoke;
  v8[3] = &unk_1E8424D98;
  visibilityCopy = visibility;
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

- (void)displayForDocumentTraits:(id)traits documentState:(id)state textOperationsHandler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  traitsCopy = traits;
  stateCopy = state;
  handlerCopy = handler;
  v11 = AFUIPanelOSLogFacility();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = MEMORY[0x1E696AEC0];
    appId = [traitsCopy appId];
    v14 = [v12 stringWithFormat:@"%s appId:%@", "-[AFUIPanel displayForDocumentTraits:documentState:textOperationsHandler:]", appId];
    *buf = 138412290;
    v31 = v14;
    _os_log_impl(&dword_1D2F0D000, v11, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v15 = [[AFUIPanelState alloc] initDisplayed:1 documentTraits:traitsCopy documentState:stateCopy textOperationsHandler:handlerCopy];
  [(AFUIPanel *)self setPanelState:v15];

  if ([MEMORY[0x1E69DCBB8] usesInputSystemUIForAutoFillOnly])
  {
    clientSession = [(AFUIPanel *)self clientSession];
    v17 = clientSession == 0;

    if (v17)
    {
      v18 = objc_alloc_init(AFUIClientSession);
      [(AFUIPanel *)self setClientSession:v18];
    }

    clientSession2 = [(AFUIPanel *)self clientSession];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __74__AFUIPanel_displayForDocumentTraits_documentState_textOperationsHandler___block_invoke;
    v28[3] = &unk_1E8424DE8;
    v29 = handlerCopy;
    [clientSession2 displayForDocumentTraits:traitsCopy documentState:stateCopy textOperationsHandler:v28];

    _presentingWindow = v29;
  }

  else
  {
    _presentingWindow = [(AFUIPanel *)self _presentingWindow];
    if (_presentingWindow)
    {
      [(AFUIPanel *)self _hide];
      if ([traitsCopy _isExplicitAutoFillInvocation])
      {
        v21 = [[AFUIExplicitAutoFillController alloc] initWithDocumentTraits:traitsCopy documentState:stateCopy textOperationsHandler:handlerCopy];
        explicitAutoFillController = self->_explicitAutoFillController;
        self->_explicitAutoFillController = v21;

        [(AFUIExplicitAutoFillController *)self->_explicitAutoFillController setDelegate:self];
        v23 = self->_explicitAutoFillController;
        rootViewController = [_presentingWindow rootViewController];
        [(AFUIExplicitAutoFillController *)v23 presentFromViewController:rootViewController];
      }

      else
      {
        objc_initWeak(buf, self);
        v25 = [AFUIAutoFillPopoverController presentAsPopoverFromWindow:_presentingWindow documentTraits:traitsCopy documentState:stateCopy modalUIDelegate:self textOperationsHandler:handlerCopy];
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

- (void)documentStateChanged:(id)changed
{
  changedCopy = changed;
  panelState = [(AFUIPanel *)self panelState];
  v6 = AFUIPanelOSLogFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [AFUIPanel documentStateChanged:panelState];
  }

  if (panelState)
  {
    v7 = [AFUIPanelState alloc];
    isDisplayed = [panelState isDisplayed];
    documentTraits = [panelState documentTraits];
    documentState = [panelState documentState];
    textOperationsHandler = [panelState textOperationsHandler];
    v12 = [(AFUIPanelState *)v7 initDisplayed:isDisplayed documentTraits:documentTraits documentState:documentState textOperationsHandler:textOperationsHandler];
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
  [v13 documentStateChanged:changedCopy];
}

- (void)transientHide
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = AFUIPanelOSLogFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x1E696AEC0];
    panelState = [(AFUIPanel *)self panelState];
    documentTraits = [panelState documentTraits];
    appId = [documentTraits appId];
    v8 = [v4 stringWithFormat:@"%s appId:%@", "-[AFUIPanel transientHide]", appId];
    *buf = 138412290;
    v15 = v8;
    _os_log_impl(&dword_1D2F0D000, v3, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  if (!self->_explicitAutoFillController)
  {
    goto LABEL_7;
  }

  _presentingWindow = [(AFUIPanel *)self _presentingWindow];
  rootViewController = [_presentingWindow rootViewController];
  presentedViewController = [rootViewController presentedViewController];

  if (![AFUIPasswordsController isPasswordPickerViewControllerAuthenticating:presentedViewController])
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
    panelState = [(AFUIPanel *)self panelState];
    documentTraits = [panelState documentTraits];
    appId = [documentTraits appId];
    v8 = [v4 stringWithFormat:@"%s appId:%@", "-[AFUIPanel transientUnhide]", appId];
    *buf = 138412290;
    v11 = v8;
    _os_log_impl(&dword_1D2F0D000, v3, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)hide
{
  v14 = *MEMORY[0x1E69E9840];
  initNotDisplayed = [[AFUIPanelState alloc] initNotDisplayed];
  [(AFUIPanel *)self setPanelState:initNotDisplayed];

  v4 = AFUIPanelOSLogFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x1E696AEC0];
    panelState = [(AFUIPanel *)self panelState];
    documentTraits = [panelState documentTraits];
    appId = [documentTraits appId];
    v9 = [v5 stringWithFormat:@"%s appId:%@", "-[AFUIPanel hide]", appId];
    *buf = 138412290;
    v13 = v9;
    _os_log_impl(&dword_1D2F0D000, v4, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  if ([MEMORY[0x1E69DCBB8] usesInputSystemUIForAutoFillOnly])
  {
    clientSession = [(AFUIPanel *)self clientSession];
    [clientSession hide];

    [(AFUIPanel *)self setClientSession:0];
  }

  else
  {
    [(AFUIPanel *)self _hide];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  popoverController = [(AFUIPanel *)self popoverController];
  presentationController = [popoverController presentationController];

  if (presentationController == dismissCopy)
  {

    [(AFUIPanel *)self setPopoverController:0];
  }
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection
{
  if ([collection userInterfaceIdiom] == 1)
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
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  connectedScenes = [mEMORY[0x1E69DC668] connectedScenes];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__AFUIPanel__presentingWindow__block_invoke;
  v6[3] = &unk_1E8424E10;
  v6[4] = &v7;
  [connectedScenes enumerateObjectsUsingBlock:v6];

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
    _presentingWindow = [(AFUIPanel *)self _presentingWindow];
    rootViewController = [_presentingWindow rootViewController];
    [rootViewController dismissViewControllerAnimated:1 completion:0];

    explicitAutoFillController = self->_explicitAutoFillController;
    self->_explicitAutoFillController = 0;
  }

  else
  {
    popoverController = [(AFUIPanel *)self popoverController];
    [popoverController dismissMenu];

    popoverController2 = [(AFUIPanel *)self popoverController];
    [popoverController2 dismissViewControllerAnimated:1 completion:0];

    popoverController3 = [(AFUIPanel *)self popoverController];
    view = [popoverController3 view];
    [view removeFromSuperview];

    popoverController4 = [(AFUIPanel *)self popoverController];
    [popoverController4 removeFromParentViewController];

    [(AFUIPanel *)self setPopoverController:0];
  }
}

- (void)dismissMenu
{
  popoverController = [(AFUIPanel *)self popoverController];
  [popoverController dismissMenu];
}

- (void)authenticationWillBeginForSessionUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  delegate = [(AFUIPanel *)self delegate];
  sessionUUID = [(AFUIPanel *)self sessionUUID];
  [delegate authenticationWillBeginForSessionUUID:sessionUUID completion:completionCopy];
}

- (void)authenticationDidEndForSessionUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  delegate = [(AFUIPanel *)self delegate];
  sessionUUID = [(AFUIPanel *)self sessionUUID];
  [delegate authenticationDidEndForSessionUUID:sessionUUID completion:completionCopy];
}

- (void)contactsUIWillBeginForSessionUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  delegate = [(AFUIPanel *)self delegate];
  sessionUUID = [(AFUIPanel *)self sessionUUID];
  [delegate contactsUIWillBeginForSessionUUID:sessionUUID completion:completionCopy];
}

- (void)contactsUIDidEndForSessionUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  [(AFUIPanel *)self hide];
  delegate = [(AFUIPanel *)self delegate];
  sessionUUID = [(AFUIPanel *)self sessionUUID];
  [delegate contactsUIDidEndForSessionUUID:sessionUUID completion:completionCopy];
}

- (void)passwordsUIWillBeginForSessionUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  delegate = [(AFUIPanel *)self delegate];
  sessionUUID = [(AFUIPanel *)self sessionUUID];
  [delegate passwordsUIWillBeginForSessionUUID:sessionUUID completion:completionCopy];
}

- (void)passwordsUIDidEndForSessionUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  [(AFUIPanel *)self hide];
  delegate = [(AFUIPanel *)self delegate];
  sessionUUID = [(AFUIPanel *)self sessionUUID];
  [delegate passwordsUIDidEndForSessionUUID:sessionUUID completion:completionCopy];
}

- (void)creditCardsUIWillBeginForSessionUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  delegate = [(AFUIPanel *)self delegate];
  sessionUUID = [(AFUIPanel *)self sessionUUID];
  [delegate creditCardsUIWillBeginForSessionUUID:sessionUUID completion:completionCopy];
}

- (void)creditCardsUIDidEndForSessionUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  [(AFUIPanel *)self hide];
  delegate = [(AFUIPanel *)self delegate];
  sessionUUID = [(AFUIPanel *)self sessionUUID];
  [delegate creditCardsUIDidEndForSessionUUID:sessionUUID completion:completionCopy];
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