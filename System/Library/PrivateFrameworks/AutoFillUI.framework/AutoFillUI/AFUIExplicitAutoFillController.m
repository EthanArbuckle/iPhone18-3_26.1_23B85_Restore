@interface AFUIExplicitAutoFillController
- (AFUIExplicitAutoFillController)initWithDocumentTraits:(id)a3 documentState:(id)a4 keyboardOutputHandler:(id)a5;
- (AFUIExplicitAutoFillController)initWithDocumentTraits:(id)a3 documentState:(id)a4 textOperationsHandler:(id)a5;
- (AFUIModalUIDelegate)delegate;
- (void)_finishWithSelectedCredential:(id)a3;
- (void)_finishWithStringValue:(id)a3;
- (void)_generateSuggestions:(id)a3;
- (void)_showContactsPanelFromViewController:(id)a3;
- (void)_showCreditCardsPanelFromViewController:(id)a3;
- (void)_showPasswordsPanelFromViewController:(id)a3;
- (void)authenticationDidEndForSessionUUID:(id)a3 completion:(id)a4;
- (void)authenticationWillBeginForSessionUUID:(id)a3 completion:(id)a4;
- (void)contactPickerDidCancel;
- (void)contactsUIDidEndForSessionUUID:(id)a3 completion:(id)a4;
- (void)contactsUIWillBeginForSessionUUID:(id)a3 completion:(id)a4;
- (void)creditCardsUIDidEndForSessionUUID:(id)a3 completion:(id)a4;
- (void)creditCardsUIWillBeginForSessionUUID:(id)a3 completion:(id)a4;
- (void)passwordsControllerDidFinish:(id)a3;
- (void)passwordsUIDidEndForSessionUUID:(id)a3 completion:(id)a4;
- (void)passwordsUIWillBeginForSessionUUID:(id)a3 completion:(id)a4;
- (void)presentFromViewController:(id)a3;
- (void)userSelectedContactProperties:(id)a3;
@end

@implementation AFUIExplicitAutoFillController

- (AFUIExplicitAutoFillController)initWithDocumentTraits:(id)a3 documentState:(id)a4 textOperationsHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = AFUIExplicitAutoFillController;
  v11 = [(AFUIExplicitAutoFillController *)&v22 init];
  if (v11)
  {
    v12 = [v8 copy];
    documentTraits = v11->_documentTraits;
    v11->_documentTraits = v12;

    v14 = [v9 copy];
    documentState = v11->_documentState;
    v11->_documentState = v14;

    v16 = MEMORY[0x1D38AFC90](v10);
    textOperationsHandler = v11->_textOperationsHandler;
    v11->_textOperationsHandler = v16;

    v18 = objc_alloc_init(MEMORY[0x1E696AD10]);
    authLock = v11->_authLock;
    v11->_authLock = v18;

    v20 = v11;
  }

  return v11;
}

- (AFUIExplicitAutoFillController)initWithDocumentTraits:(id)a3 documentState:(id)a4 keyboardOutputHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = AFUIExplicitAutoFillController;
  v11 = [(AFUIExplicitAutoFillController *)&v22 init];
  if (v11)
  {
    v12 = [v8 copy];
    documentTraits = v11->_documentTraits;
    v11->_documentTraits = v12;

    v14 = [v9 copy];
    documentState = v11->_documentState;
    v11->_documentState = v14;

    v16 = MEMORY[0x1D38AFC90](v10);
    keyboardOutputHandler = v11->_keyboardOutputHandler;
    v11->_keyboardOutputHandler = v16;

    v18 = objc_alloc_init(MEMORY[0x1E696AD10]);
    authLock = v11->_authLock;
    v11->_authLock = v18;

    v20 = v11;
  }

  return v11;
}

- (void)presentFromViewController:(id)a3
{
  v7 = a3;
  v4 = [(RTIDocumentTraits *)self->_documentTraits autofillMode];
  if (v4 == 1)
  {
    [(AFUIExplicitAutoFillController *)self _showPasswordsPanelFromViewController:v7];
    goto LABEL_8;
  }

  if (v4 == 9)
  {
    [(AFUIExplicitAutoFillController *)self _showCreditCardsPanelFromViewController:v7];
    goto LABEL_8;
  }

  v5 = v4 == 7;
  v6 = v7;
  if (v5)
  {
    [(AFUIExplicitAutoFillController *)self _showContactsPanelFromViewController:v7];
LABEL_8:
    v6 = v7;
  }
}

- (void)authenticationWillBeginForSessionUUID:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)authenticationDidEndForSessionUUID:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)contactsUIWillBeginForSessionUUID:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)contactsUIDidEndForSessionUUID:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)passwordsUIWillBeginForSessionUUID:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)passwordsUIDidEndForSessionUUID:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)creditCardsUIWillBeginForSessionUUID:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)creditCardsUIDidEndForSessionUUID:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)_showPasswordsPanelFromViewController:(id)a3
{
  v4 = a3;
  if (!self->_passwordsController)
  {
    v5 = [[AFUIPasswordsController alloc] initWithDocumentTraits:self->_documentTraits];
    passwordsController = self->_passwordsController;
    self->_passwordsController = v5;

    [(AFUIPasswordsController *)self->_passwordsController setPasswordPickerDelegate:self];
  }

  v7 = [(AFUIExplicitAutoFillController *)self delegate];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = self;
  }

  v10 = v9;

  [(AFUIExplicitAutoFillController *)v10 passwordsUIWillBeginForSessionUUID:0 completion:0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__AFUIExplicitAutoFillController__showPasswordsPanelFromViewController___block_invoke;
  v13[3] = &unk_1E8424668;
  v13[4] = self;
  v14 = v4;
  v15 = v10;
  v11 = v10;
  v12 = v4;
  [(AFUIExplicitAutoFillController *)v11 authenticationWillBeginForSessionUUID:0 completion:v13];
}

void __72__AFUIExplicitAutoFillController__showPasswordsPanelFromViewController___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 48);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72__AFUIExplicitAutoFillController__showPasswordsPanelFromViewController___block_invoke_2;
  v3[3] = &unk_1E84247B0;
  v4 = *(a1 + 48);
  [v2 presentPasswordPickerFromViewController:v1 didFinishAuthenticationBlock:v3];
}

- (void)_showContactsPanelFromViewController:(id)a3
{
  v4 = a3;
  if (!self->_contactsController)
  {
    v5 = objc_alloc_init(AFUIContactsController);
    contactsController = self->_contactsController;
    self->_contactsController = v5;

    [(AFUIContactsController *)self->_contactsController setContactPropertyPickerDelegate:self];
    [(AFUIContactsController *)self->_contactsController setAlwaysAllowsNamePicking:1];
  }

  v7 = [(AFUIExplicitAutoFillController *)self delegate];

  if (v7)
  {
    v8 = [(AFUIExplicitAutoFillController *)self delegate];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __71__AFUIExplicitAutoFillController__showContactsPanelFromViewController___block_invoke;
    v10[3] = &unk_1E8424990;
    v11 = v4;
    v12 = self;
    [v8 contactsUIWillBeginForSessionUUID:0 completion:v10];
  }

  else
  {
    v9 = [(AFUIContactsController *)self->_contactsController allContactsViewControllerForTextContentType:0];
    [v4 presentViewController:v9 animated:1 completion:&__block_literal_global_6];
  }
}

void __71__AFUIExplicitAutoFillController__showContactsPanelFromViewController___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__AFUIExplicitAutoFillController__showContactsPanelFromViewController___block_invoke_2;
  v4[3] = &unk_1E8424990;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

void __71__AFUIExplicitAutoFillController__showContactsPanelFromViewController___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(a1 + 40) + 40) allContactsViewControllerForTextContentType:0];
  [v1 presentViewController:v2 animated:1 completion:&__block_literal_global_4_0];
}

- (void)_showCreditCardsPanelFromViewController:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_creditCardViewController)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __74__AFUIExplicitAutoFillController__showCreditCardsPanelFromViewController___block_invoke;
    v6[3] = &unk_1E8424AD8;
    v6[4] = self;
    v7 = v4;
    [(AFUIExplicitAutoFillController *)self _generateSuggestions:v6];
  }
}

void __74__AFUIExplicitAutoFillController__showCreditCardsPanelFromViewController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [AFUICreditCardViewController alloc];
  v5 = *(a1 + 32);
  v6 = v5[1];
  v7 = v5[2];
  v8 = v5[3];
  v9 = [v5 delegate];
  v10 = [(AFUICreditCardViewController *)v4 initWithDocumentTraits:v6 documentState:v7 textOperationsHandler:v8 modalUIDelegate:v9 suggestions:v3];

  v11 = *(a1 + 32);
  v12 = *(v11 + 56);
  *(v11 + 56) = v10;

  v13 = [*(a1 + 32) delegate];

  if (v13)
  {
    v14 = [*(a1 + 32) delegate];
    [v14 creditCardsUIWillBeginForSessionUUID:0 completion:0];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __74__AFUIExplicitAutoFillController__showCreditCardsPanelFromViewController___block_invoke_2;
    v16[3] = &unk_1E8424990;
    v15 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v17 = v15;
    dispatch_async(MEMORY[0x1E69E96A0], v16);
  }
}

void __74__AFUIExplicitAutoFillController__showCreditCardsPanelFromViewController___block_invoke_2(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:*(*(a1 + 32) + 56)];
  [*(a1 + 40) presentViewController:v2 animated:1 completion:0];
}

- (void)_finishWithStringValue:(id)a3
{
  v13 = a3;
  [(AFUIExplicitAutoFillController *)self _yieldToClientApplicationIfNeeded];
  p_textOperationsHandler = &self->_textOperationsHandler;
  if (self->_textOperationsHandler)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69C6FA8]);
    [v5 _assertOrInsertText:v13 documentTraits:self->_documentTraits];
    [v5 setIsExplicitAutoFillInvocation:1];
  }

  else
  {
    p_textOperationsHandler = &self->_keyboardOutputHandler;
    if (!self->_keyboardOutputHandler)
    {
      goto LABEL_6;
    }

    v5 = objc_alloc_init(MEMORY[0x1E69D9638]);
    [v5 setInsertionText:v13];
    v6 = [(RTIDocumentState *)self->_documentState documentState];
    v7 = [v6 contextBeforeInput];
    v8 = [v7 length];
    v9 = [(RTIDocumentState *)self->_documentState documentState];
    v10 = [v9 contextAfterInput];
    [v5 setDeletionCount:{objc_msgSend(v10, "length") + v8}];
  }

  (*(*p_textOperationsHandler + 2))();

LABEL_6:
  textOperationsHandler = self->_textOperationsHandler;
  self->_textOperationsHandler = 0;

  keyboardOutputHandler = self->_keyboardOutputHandler;
  self->_keyboardOutputHandler = 0;
}

- (void)_finishWithSelectedCredential:(id)a3
{
  v4 = a3;
  [(AFUIExplicitAutoFillController *)self _yieldToClientApplicationIfNeeded];
  v14 = [MEMORY[0x1E695DF90] dictionary];
  v5 = [v4 user];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_1F4E9A028;
  }

  [v14 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69D98A0]];

  v8 = [v4 password];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = &stru_1F4E9A028;
  }

  [v14 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69D9888]];

  p_textOperationsHandler = &self->_textOperationsHandler;
  if (self->_textOperationsHandler)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69C6FA8]);
    [v11 setIsExplicitAutoFillInvocation:1];
  }

  else
  {
    p_textOperationsHandler = &self->_keyboardOutputHandler;
    if (!self->_keyboardOutputHandler)
    {
      goto LABEL_12;
    }

    v11 = objc_alloc_init(MEMORY[0x1E69D9638]);
  }

  [v11 setCustomInfo:v14];
  (*(*p_textOperationsHandler + 2))();

LABEL_12:
  textOperationsHandler = self->_textOperationsHandler;
  self->_textOperationsHandler = 0;

  keyboardOutputHandler = self->_keyboardOutputHandler;
  self->_keyboardOutputHandler = 0;
}

- (void)userSelectedContactProperties:(id)a3
{
  v25 = a3;
  [(AFUIExplicitAutoFillController *)self _yieldToClientApplicationIfNeeded];
  v4 = [(RTIDocumentTraits *)self->_documentTraits textInputTraits];
  v5 = [v4 textContentType];
  v6 = [v25 objectForKeyedSubscript:v5];

  v7 = [(RTIDocumentTraits *)self->_documentTraits textInputTraits];
  v8 = [v7 textContentType];
  v9 = *MEMORY[0x1E698E130];
  if (([v8 isEqualToString:*MEMORY[0x1E698E130]] & 1) == 0)
  {

    goto LABEL_6;
  }

  v10 = [v25 objectForKeyedSubscript:@"didPickContactNamePropertyKey"];
  v11 = [v10 BOOLValue];

  if (v11)
  {
    v12 = *MEMORY[0x1E698E108];
    v13 = [v25 objectForKeyedSubscript:*MEMORY[0x1E698E108]];
    v14 = [v13 length];

    if (v14)
    {
      [v25 objectForKeyedSubscript:v12];
      v6 = v7 = v6;
LABEL_6:
    }
  }

  if (!v6)
  {
    v6 = [v25 objectForKeyedSubscript:v9];
    if (!v6)
    {
      v6 = [v25 objectForKeyedSubscript:*MEMORY[0x1E698E108]];
    }
  }

  p_textOperationsHandler = &self->_textOperationsHandler;
  if (self->_textOperationsHandler)
  {
    v16 = objc_alloc_init(MEMORY[0x1E69C6FA8]);
    [v16 _assertOrInsertText:v6 documentTraits:self->_documentTraits];
    [v16 setIsExplicitAutoFillInvocation:1];
  }

  else
  {
    p_textOperationsHandler = &self->_keyboardOutputHandler;
    if (!self->_keyboardOutputHandler)
    {
      goto LABEL_15;
    }

    v16 = objc_alloc_init(MEMORY[0x1E69D9638]);
    [v16 setInsertionText:v6];
    v17 = [(RTIDocumentState *)self->_documentState documentState];
    v18 = [v17 contextBeforeInput];
    v19 = [v18 length];
    v20 = [(RTIDocumentState *)self->_documentState documentState];
    v21 = [v20 contextAfterInput];
    [v16 setDeletionCount:{objc_msgSend(v21, "length") + v19}];
  }

  (*(*p_textOperationsHandler + 2))();

LABEL_15:
  textOperationsHandler = self->_textOperationsHandler;
  self->_textOperationsHandler = 0;

  keyboardOutputHandler = self->_keyboardOutputHandler;
  self->_keyboardOutputHandler = 0;

  v24 = [(AFUIExplicitAutoFillController *)self delegate];
  [v24 contactsUIDidEndForSessionUUID:0 completion:0];
}

- (void)contactPickerDidCancel
{
  v2 = [(AFUIExplicitAutoFillController *)self delegate];
  [v2 contactsUIDidEndForSessionUUID:0 completion:0];
}

- (void)passwordsControllerDidFinish:(id)a3
{
  v3 = [(AFUIExplicitAutoFillController *)self delegate];
  [v3 passwordsUIDidEndForSessionUUID:0 completion:0];
}

- (void)_generateSuggestions:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E1C0] sharedInstance];
  v6 = [(RTIDocumentState *)self->_documentState documentState];
  v7 = [v6 contextBeforeInput];

  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [(AFUIExplicitAutoFillController *)self delegate];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = self;
  }

  v12 = v11;

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __55__AFUIExplicitAutoFillController__generateSuggestions___block_invoke;
  v17[3] = &unk_1E8424CF8;
  v17[4] = self;
  v18 = v5;
  v19 = v7;
  v20 = v8;
  v21 = v4;
  v22 = 9;
  v13 = v4;
  v14 = v8;
  v15 = v7;
  v16 = v5;
  [(AFUIExplicitAutoFillController *)v12 authenticationWillBeginForSessionUUID:0 completion:v17];
}

void __55__AFUIExplicitAutoFillController__generateSuggestions___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) authLock];
  [v2 lock];

  if (+[AFUIExplicitAutoFillController isCreditCardAuthenticationOngoing])
  {
    v14 = [*(a1 + 32) authLock];
    [v14 unlock];
  }

  else
  {
    [AFUIExplicitAutoFillController setIsCreditCardAuthenticationOngoing:1];
    v3 = *(a1 + 40);
    if (objc_opt_respondsToSelector())
    {
      v4 = *(a1 + 40);
      v5 = objc_alloc(MEMORY[0x1E698E1B8]);
      v6 = objc_alloc(MEMORY[0x1E698E1B8]);
      v7 = [v6 creditCardPayload];
      v8 = *(*(a1 + 32) + 8);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __55__AFUIExplicitAutoFillController__generateSuggestions___block_invoke_2;
      v16[3] = &unk_1E8424CD0;
      v9 = *(a1 + 40);
      v20 = *(a1 + 72);
      v10 = *(a1 + 48);
      v15 = *(a1 + 32);
      v11 = *(a1 + 56);
      *&v12 = v15;
      *(&v12 + 1) = v11;
      *&v13 = v9;
      *(&v13 + 1) = v10;
      v17 = v13;
      v18 = v12;
      v19 = *(a1 + 64);
      [v4 authenticateIfNecessaryForCreditCardSuggestion:v5 withPayload:v7 documentTraits:v8 completionHandler:v16];
    }
  }
}

void __55__AFUIExplicitAutoFillController__generateSuggestions___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [MEMORY[0x1E698E1C0] sharedInstance];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = *(a1 + 72);
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = *(*(a1 + 48) + 8);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __55__AFUIExplicitAutoFillController__generateSuggestions___block_invoke_3;
      v14[3] = &unk_1E8424CA8;
      v12 = *(a1 + 56);
      v13 = *(a1 + 48);
      v15 = v12;
      v16 = v13;
      v17 = *(a1 + 64);
      [v9 generateAutoFillSuggestionsWithAutoFillMode:v8 textPrefix:v10 documentTraits:v11 externalizedContext:v5 completionHandler:v14];
    }
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

void __55__AFUIExplicitAutoFillController__generateSuggestions___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addObjectsFromArray:a2];
  v3 = [*(a1 + 40) delegate];
  [v3 authenticationDidEndForSessionUUID:0 completion:&__block_literal_global_23];

  [AFUIExplicitAutoFillController setIsCreditCardAuthenticationOngoing:0];
  v4 = [*(a1 + 40) authLock];
  [v4 unlock];

  v5 = *(a1 + 48);
  v6 = [*(a1 + 32) copy];
  (*(v5 + 16))(v5, v6);
}

- (AFUIModalUIDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end